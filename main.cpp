#include <iostream>
#include <unordered_set>
#include <deque>
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_os_ostream.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Analysis/LoopAccessAnalysis.h"
#include "llvm/Analysis/MemoryDependenceAnalysis.h"


#include "polly/ScopPass.h"
#include "polly/DependenceInfo.h"


using namespace std;
using namespace llvm;
using namespace polly;


class FunctionPassVisitor : public FunctionPass {

    raw_os_ostream rawOstream;
    deque<Loop *> LQ;
public:
    static char ID;

    void getAnalysisUsage(AnalysisUsage &Info) const {
        Info.addRequired<LoopInfoWrapperPass>();
        Info.addRequired<AAResultsWrapperPass>();
        Info.addRequired<MemoryDependenceWrapperPass>();

    }

    FunctionPassVisitor() : rawOstream(cout), FunctionPass(ID) {

    }

    bool doInitialization(Module &M) {
        return true;
    }


    bool runOnFunction(Function &F) override {

        cout << "------------------------\n";
        cout << F.getName().str() << endl;

        Instruction *start = NULL;
        Instruction *end = NULL;
        set<Value *> omp_protect;
        for (auto bb = F.begin(); bb != F.end(); bb++) {
            for (auto I = bb->begin(); I != bb->end(); I++) {
                if (auto inst = dyn_cast<CallInst>(I)) {
                    if (inst->getCalledFunction()->getName().contains_lower("__kmpc_for_static_init")) {
                        if (start == NULL)
                            start = inst;
                        Value *ops = inst->getOperand(5);
                        omp_protect.insert(ops);
                    } else if (inst->getCalledFunction()->getName().contains_lower("__kmpc_for_static_fini"))
                        end = inst;
                }
            }
        }
        if (start == NULL || end == NULL)
            return true;
        const LoopInfo &loopInfo = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();

        for (auto LI = loopInfo.begin(); LI != loopInfo.end(); LI++) {
            vector<Value *> v;

            analysisLoop(omp_protect, v, (*LI), loopInfo, 0);


        }

        return true;
    }

    bool doFinalization(Module &M) {
        return true;
    }

    void analysisLoop(set<Value *> &omp_protected, vector<Value *> parentLoop, Loop *loop, const LoopInfo &loopInfo,
                      int insideCritical) {
        const ArrayRef<BasicBlock *> &blocks = loop->getBlocks();
        Value *loopVar = NULL;
        if (auto inst = dyn_cast<LoadInst>(&blocks.front()->front())) {
            loopVar = inst->getPointerOperand();
        }
        if (loopVar == NULL)
            return;
        parentLoop.push_back(loopVar);
        MemoryDependenceResults &memDepResult = getAnalysis<MemoryDependenceWrapperPass>().getMemDep();
        const AAResults &aaResults = getAnalysis<AAResultsWrapperPass>().getAAResults();
        set<BasicBlock *> preheaders;
        const vector<Loop *> &subLoops = loop->getSubLoops();
        for (auto subloop = subLoops.begin(); subloop != subLoops.end(); subloop++) {
            preheaders.insert((*subloop)->getLoopPreheader());
        }


        vector<BasicBlock *> currentBB;
        for (auto bb = blocks.begin(); bb != blocks.end(); bb++) {
            if (loopInfo.getLoopFor((*bb)) == loop && !preheaders.count((*bb))) {
                currentBB.push_back((*bb));
            }
        }

        for (auto bb = currentBB.begin(); bb != currentBB.end(); bb++) {
            for (auto I = (*bb)->begin(); I != (*bb)->end(); I++) {
                if (auto inst = dyn_cast<StoreInst>(I)) {
                    /*
                     * here we filter by the following rules:
                     * 1. not loop var
                     * 2. not loop var reachable
                     * 3. not other loop var
                     *
                     */

                    Value *ptr = inst->getPointerOperand();
                    if (insideCritical == 0 && ptr != loopVar &&
                        std::find(parentLoop.begin(), parentLoop.end(), ptr) == parentLoop.end()) {
                        if (!resolvePointer(ptr, omp_protected, loop->getLoopDepth(), parentLoop, loopInfo)) {
                            (*bb)->print(rawOstream);
                            cout << endl;
                            cout << "data races: output dependency" << endl;
                        }

                    }
                } else if (auto callInst = dyn_cast<CallInst>(I)) {
                    if (callInst->getCalledFunction()->getName().contains_lower("__kmpc_critical")) {
                        insideCritical++;
                    } else if (callInst->getCalledFunction()->getName().contains_lower("__kmpc_end_critical"))
                        insideCritical--;
                }
            }
        }

        for (auto subloop = subLoops.begin(); subloop != subLoops.end(); subloop++) {
            analysisLoop(omp_protected, parentLoop, (*subloop), loopInfo, insideCritical);
        }

        parentLoop.pop_back();
    }

    /**
     * try to figure out whether pointer has potential dependencies
     * @return true => no dependence
     */
    bool resolvePointer(const Value *ptr, set<Value *> &omp_protected, int loopDepth, vector<Value *> vars,
                        const LoopInfo &loopInfo) {
        if (auto alloInst = dyn_cast<AllocaInst>(ptr)) {
            const BasicBlock *basicBlock = alloInst->getParent();
            Loop *loop = loopInfo.getLoopFor(basicBlock);
            return loop != nullptr && loop->getLoopDepth() >= loopDepth;
        } else if (auto arrayAccessInst = dyn_cast<GetElementPtrInst>(ptr)) {
            const Value *pointer = arrayAccessInst->getPointerOperand();
            const Value *index = arrayAccessInst->getOperand(arrayAccessInst->getNumIndices());
            const Value *resolvedIdx = resolveNumber(index, vars);
            bool ptrRes = resolvePointer(pointer, omp_protected, loopDepth, vars, loopInfo);
            if (auto constant = dyn_cast<Constant>(resolvedIdx)) {
                return ptrRes;
            } else if (resolvedIdx == ptr) {
                return ptrRes;
            } else if (auto loadInst = dyn_cast<LoadInst>(resolvedIdx)) {
                const Value *loc = loadInst->getPointerOperand();
                if (std::find(vars.begin(), vars.end(), loc) != vars.end()) {
                    return std::find(omp_protected.begin(), omp_protected.end(), loc) != omp_protected.end();
                } else
                    return ptrRes;
            } else {
                return false;
            }
        }
        return false;
    }


    const Value *resolveNumber(const Value *index, vector<Value *> vars) {
        while (std::find(vars.begin(), vars.end(), index) == vars.end()) {
            if (auto sextInst = dyn_cast<CastInst>(index)) {
                index = sextInst->getOperand(0);
            } else if (auto calculationInst = dyn_cast<BinaryOperator>(index)) {
                Value *op1 = calculationInst->getOperand(0);
                if (auto constantInst = dyn_cast<Constant>(op1)) {
                    index = calculationInst->getOperand(1);
                } else
                    index = op1;
            } else if (auto loadInst = dyn_cast<LoadInst>(index)) {
                break;
            } else if (auto constant = dyn_cast<Constant>(index))
                break;
        }
        return index;
    }
};

char FunctionPassVisitor::ID = 0;
static RegisterPass<FunctionPassVisitor> X("hello", "Hello World Pass",
                                           false /* Only looks at CFG */,
                                           false /* Analysis Pass */);