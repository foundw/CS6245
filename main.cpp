#include <iostream>
#include <unordered_set>
#include <deque>
#include <hash_map>
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_os_ostream.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Analysis/LoopAccessAnalysis.h"
#include "llvm/Analysis/MemoryDependenceAnalysis.h"


#include "polly/ScopPass.h"


using namespace std;
using namespace llvm;
using namespace polly;


class PtrInfo {
public:
    PtrInfo() {}

    PtrInfo(Value *src) {

        this->source = src;
    }

    Value *storeInst;
    Value *source = nullptr;
    vector<Value *> index;
    vector<bool> origin;
    bool hasRace = true;

    void addIndex(Value *idx, bool omp) {
        index.push_back(idx);
        origin.push_back(omp);
        for (auto it = origin.begin(); hasRace && it != origin.end(); it++) {
            hasRace = !(*it) && hasRace;
        }
    }
};

class FunctionPassVisitor : public FunctionPass {

    raw_os_ostream rawOstream;
    deque<Loop *> LQ;
    unordered_map<Value *, vector<pair<Value *, Instruction *>>> Writes;
    unordered_map<Value *, Value *> ReadsWrites;
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

    void printResult() {
        cout << "Data Races Report:" << endl;
        int cnt = 0;
        // Print Write-Write Races
        for (auto opr : Writes) {
            for (int i = 0; i < opr.second.size(); i++) {
                for (int j = i; j < opr.second.size(); j++) {
                    if(opr.second[i].first && opr.second[i].first == opr.second[j].first){
                        continue;
                    }
                    (opr.second[i].second)->print(rawOstream);
                    cout << endl;
                    (opr.second[j].second)->print(rawOstream);
                    cout << endl;
                    cout << "data races: write-write" << endl;
                    cout << endl;
                    cnt++;
                }
            }
        }
        // Print Read-Write Races
        for (auto opr : ReadsWrites) {
            (opr.first)->print(rawOstream);
            cout << endl;
            (opr.second)->print(rawOstream);
            cout << endl;
            cout << "data races: read-write" << endl;
            cout << endl;
            cnt++;
        }
        cout << cnt << " races detected." << endl;
    }

    void retrieveInfulence(set<Value *> &omp_protected, Value *val) {
        for (auto user = val->user_begin(); user != val->user_end(); user++) {
            if (auto loadInst = dyn_cast<LoadInst>((*user))) {
                Value *prev = loadInst;
                Value *value = loadInst->getNextNode();
                while (value) {
                    if (auto temp = dyn_cast<BinaryOperator>(value)) {
                        if (temp->getOperand(0) == prev || temp->getOperand(1) == prev) {
                            prev = value;
                            value = temp->getNextNode();
                        } else
                            value = nullptr;
                    } else if (auto temp = dyn_cast<StoreInst>(value)) {
                        omp_protected.insert(temp->getPointerOperand());
                        break;
                    } else
                        value = nullptr;
                }
            }
        }
    }


    bool runOnFunction(Function &F) override {

        cout << "------------------------\n";
        cout << F.getName().str() << endl;

        vector<Instruction *> start;
        vector<Instruction *> end;

        for (auto bb = F.begin(); bb != F.end(); bb++) {
            for (auto I = bb->begin(); I != bb->end(); I++) {
                if (auto inst = dyn_cast<CallInst>(I)) {
                    if (inst->getCalledFunction()->getName().contains_lower("__kmpc_for_static_init")) {
                        start.push_back(inst);
                    } else if (inst->getCalledFunction()->getName().contains_lower("__kmpc_for_static_fini"))
                        end.push_back(inst);
                }
            }
        }
        if (start.size() == 0)
            return true;


        assert(start.size() == end.size());

        /**
         * update 2018-11-30
         * we want to regard all the allocations inside omp method to be local
         * so we need to retrieve the pass in parameters & influences
         *
         * the the operations will happen in the first block of method
         */
        set<Value *> globalScalar;
        for (auto arg = F.arg_begin(); arg != F.arg_end(); arg++) {
            if ((*arg).getType()->isPointerTy()) {
                globalScalar.insert(arg);
            }
        }
        for (auto inst = F.getEntryBlock().begin(); inst != F.getEntryBlock().end(); inst++) {
            if (auto storeInst = dyn_cast<StoreInst>(inst)) {
                if (globalScalar.count(storeInst->getValueOperand()))
                    globalScalar.insert(storeInst->getPointerOperand());
            } else if (auto loadInst = dyn_cast<LoadInst>(inst)) {
                if (globalScalar.count(loadInst->getPointerOperand()))
                    globalScalar.insert(loadInst);
            }
        }


        const LoopInfo &loopInfo = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
        for (int i = 0; i < (int) start.size(); i++) {
            set<Value *> omp_upper;
            set<Value *> omp_protected;
            set<Value *> loopUppers;
            vector<Value *> v;

            Value *ops = start[i]->getOperand(5);
            omp_upper.insert(ops);
            auto current = start[i]->getParent(), terminate = end[i]->getParent();
            while (current != terminate && loopInfo.getLoopDepth(current) == 0) {
                current = current->getNextNode();
            }
            ReadsWrites.clear();
            Writes.clear(); // Init for each region (there is a barrior at the end of each region)
            analysisLoop(omp_upper, omp_protected, v, loopInfo.getLoopFor(current), loopInfo, nullptr, loopUppers,
                         globalScalar);
            printResult();

        }
        return true;
    }

    bool doFinalization(Module &M) {
        return true;
    }

    void analysisLoop(set<Value *> &omp_upper, set<Value *> &omp_protected, vector<Value *> parentLoop, Loop *loop,
                      const LoopInfo &loopInfo,
                      Value * critical, set<Value *> &loopUppers, set<Value *> globalScalar) {
        const ArrayRef<BasicBlock *> &blocks = loop->getBlocks();
        Value *loopVar = NULL;

        if (auto inst = dyn_cast<LoadInst>(&blocks.front()->front())) {
            loopVar = inst->getPointerOperand();
            if (auto upperLoad = dyn_cast<LoadInst>(inst->getNextNode())) {
                Value *upper = upperLoad->getPointerOperand();
                if (omp_upper.count(upper)) {
                    omp_protected.insert(loopVar);
                    retrieveInfulence(omp_protected, loopVar);
                }
                loopUppers.insert(upper);
            }
        }
        if (loopVar == NULL)
            return;
        parentLoop.push_back(loopVar);

        const vector<Loop *> &subLoops = loop->getSubLoops();


        vector<BasicBlock *> currentBB;
        for (auto bb = blocks.begin(); bb != blocks.end(); bb++) {
            if (loopInfo.getLoopFor((*bb)) == loop) {
                currentBB.push_back((*bb));
            }
        }

        vector<pair<Value *, PtrInfo *>> WInst;
        for (auto bb = currentBB.begin(); bb != currentBB.end(); bb++) {
            for (auto I = (*bb)->begin(); I != (*bb)->end(); I++) {
                if (auto inst = dyn_cast<StoreInst>(I)) {
                    /*
                     * here we filter by the following rules:
                     * 1. not loop var
                     * 2. not loop var reachable
                     * 3. not other loop var
                     */

                    Value *ptr = inst->getPointerOperand();
                    if (ptr != loopVar &&
                        std::find(parentLoop.begin(), parentLoop.end(), ptr) == parentLoop.end() &&
                        !omp_protected.count(ptr)) {
                        PtrInfo &storeInfo = resolvePointer(ptr, omp_protected, loop->getLoopDepth(), parentLoop,
                                                            loopInfo);
                        if (storeInfo.hasRace && globalScalar.count(storeInfo.source)) {
                            Writes[inst->getPointerOperand()].push_back(make_pair(critical, inst));
                        }
                        storeInfo.storeInst = inst;
                        WInst.push_back(make_pair(critical, &storeInfo));

                    }
                } else if (auto callInst = dyn_cast<CallInst>(I)) {
                    if (callInst->getCalledFunction()->getName().contains_lower("__kmpc_critical")) {
                        assert(!critical);
                        critical = callInst;
                    } else if (callInst->getCalledFunction()->getName().contains_lower("__kmpc_end_critical")) {
                        assert(critical);
                        critical = nullptr;
                    }
                }
            }
        }
        //first search write, then search read
        for (auto bb = currentBB.begin(); bb != currentBB.end(); bb++) {
            unordered_map<Value *, unsigned long> used;
            vector<Value *> ldRace;
            vector<Value *> ldInsts;
            vector<PtrInfo *> ldShow;
            for (auto I = (*bb)->begin(); I != (*bb)->end(); I++) {
                if (auto callInst = dyn_cast<CallInst>(I)) {
                    if (callInst->getCalledFunction()->getName().contains_lower("__kmpc_critical")) {
                        assert(!critical);
                        critical = callInst;
                    } else if (callInst->getCalledFunction()->getName().contains_lower("__kmpc_end_critical")) {
                        assert(critical);
                        critical = nullptr;
                    }
                } else if (auto inst = dyn_cast<LoadInst>(I)) {
                    Value *ptr = inst->getPointerOperand();
                    if (ptr != loopVar && !loopUppers.count(ptr) &&
                        std::find(parentLoop.begin(), parentLoop.end(), ptr) == parentLoop.end() &&
                        !omp_protected.count(ptr) && !inst->getType()->isPointerTy()) {

                        PtrInfo &loadInfo = resolvePointer(ptr, omp_protected, loop->getLoopDepth(), parentLoop,
                                                           loopInfo);
                        for (auto iterator = WInst.begin(); iterator != WInst.end(); iterator++) {
                            if(critical && critical == iterator->first){
                                continue;
                            }
                            PtrInfo *storeInfo = (iterator->second);
                            if (storeInfo->source == loadInfo.source) {
                                bool hasRace = true;
                                if (!storeInfo->hasRace && !loadInfo.hasRace) {
                                    for (int i = 0; hasRace && i < storeInfo->index.size(); i++) {
                                        if (*(storeInfo->origin.begin() + i)) {
                                            if (*(storeInfo->index.begin() + i) == *(loadInfo.index.begin() + i))
                                                hasRace = false;
                                            break;
                                        }
                                    }
                                }
                                if (hasRace) {
                                    if (!used.count(storeInfo->source)) {
                                        used[storeInfo->source] = storeInfo->index.size();
                                    } else {
                                        if (storeInfo->index.size() > used[storeInfo->source]) {
                                            used[storeInfo->source] = storeInfo->index.size();
                                            for (int i = 0; i < ldRace.size(); ++i) {
                                                if ((*(ldRace.begin() + i)) == storeInfo->source) {
                                                    ldRace.erase(ldRace.begin() + i);
                                                    ldShow.erase(ldShow.begin() + i);
                                                    ldInsts.erase(ldInsts.begin() + i);
                                                    i--;
                                                }
                                            }
                                        }
                                    }
                                    if (storeInfo->index.size() == used[storeInfo->source] &&
                                        storeInfo->source != nullptr) {
                                        ldRace.push_back(storeInfo->source);
                                        ldShow.push_back(storeInfo);
                                        ldInsts.push_back(inst);
                                    }

                                }
                            }

                        }
                    }
                }
            }
            auto show = ldShow.begin();
            auto ldInst = ldInsts.begin();
            for (auto it = ldRace.begin(); it != ldRace.end(); it++, show++, ldInst++) {
                ReadsWrites[(*ldInst)] = (*show)->storeInst;
            }
        }

        for (auto subloop = subLoops.begin(); subloop != subLoops.end(); subloop++) {
            Value * scritical = critical;
            for (auto bb = blocks.begin(); bb != blocks.end(); bb++) {
                if (loopInfo.getLoopFor((*bb)) == (*subloop))
                    break;
                for (auto I = (*bb)->begin(); I != (*bb)->end(); I++) {
                    if (auto callInst = dyn_cast<CallInst>(I)) {
                        if (callInst->getCalledFunction()->getName().contains_lower("__kmpc_critical")) {
                            assert(!critical);
                            scritical = callInst;
                        } else if (callInst->getCalledFunction()->getName().contains_lower("__kmpc_end_critical")) {
                            assert(critical);
                            scritical = nullptr;
                        }
                    }
                }
            }
            analysisLoop(omp_upper, omp_protected, parentLoop, (*subloop), loopInfo, scritical, loopUppers,
                         globalScalar);
        }

        parentLoop.pop_back();
    }


    /**
     * try to figure out whether pointer has potential dependencies
     * @return true => no dependence
     */
    PtrInfo &resolvePointer(const Value *ptr, set<Value *> &omp_protected, int loopDepth, vector<Value *> &vars,
                            const LoopInfo &loopInfo) {
        bool ans = false;
        if (auto alloInst = dyn_cast<AllocaInst>(ptr)) {
            const BasicBlock *basicBlock = alloInst->getParent();
            Loop *loop = loopInfo.getLoopFor(basicBlock);
            PtrInfo *storeInfo = new PtrInfo();
            storeInfo->source = (Value *) alloInst;
            if (loop != nullptr && loop->getLoopDepth() >= loopDepth)
                storeInfo->hasRace = false;
            return (*storeInfo);
        } else if (auto arrayAccessInst = dyn_cast<GetElementPtrInst>(ptr)) {
            const Value *pointer = arrayAccessInst->getPointerOperand();
            const Value *index = arrayAccessInst->getOperand(arrayAccessInst->getNumIndices());
            const Value *resolvedIdx = resolveNumber(index, vars);
            PtrInfo &ptrRes = resolvePointer(pointer, omp_protected, loopDepth, vars, loopInfo);
            if (auto constant = dyn_cast<Constant>(resolvedIdx)) {
                ptrRes.addIndex((Value *) constant, false);
                ptrRes.hasRace = true;
            } else if (resolvedIdx == ptr) {
                ptrRes.addIndex((Value *) resolvedIdx,
                                std::find(omp_protected.begin(), omp_protected.end(), resolvedIdx) !=
                                omp_protected.end());
            } else if (auto loadInst = dyn_cast<LoadInst>(resolvedIdx)) {
                const Value *loc = loadInst->getPointerOperand();
                ptrRes.addIndex((Value *) loc,
                                std::find(omp_protected.begin(), omp_protected.end(), loc) != omp_protected.end());
            } else {
                ptrRes.addIndex((Value *) resolvedIdx, false);
            }
            return ptrRes;
        } else if (auto loadInst = dyn_cast<LoadInst>(ptr)) {
            return resolvePointer(loadInst->getPointerOperand(), omp_protected, loopDepth, vars, loopInfo);
        } else
            return *(new PtrInfo((Value *) ptr));

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
static RegisterPass<FunctionPassVisitor> X("cs6245", "Gatech CS6245 Project Pass",
                                           false /* Only looks at CFG */,
                                           false /* Analysis Pass */);