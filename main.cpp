#include <iostream>
#include <set>
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_os_ostream.h"
#include "llvm/IR/Instructions.h"


using namespace std;
using namespace llvm;


class FunctionPassVisitor : public FunctionPass {

    raw_os_ostream rawOstream;
public:
    static char ID;

    FunctionPassVisitor() : rawOstream(cout), FunctionPass(ID) {

    }

    bool doInitialization(Module &M) {
        return true;
    }

    bool runOnFunction(Function &F) override {
        cout << F.getName().str() << endl;
        cout << "------------------------\n";
        if (F.getName().contains_lower("omp")) {
            int operands = F.arg_size();
            set<User *> readInstructions;
            for (auto *params = F.arg_begin(); params != F.arg_end(); params++) {
                for (llvm::MetadataAsValue::use_iterator usePointer = params->use_begin();
                     usePointer != params->use_end(); usePointer++) {
                    User *user = usePointer->getUser();
                    for (llvm::MetadataAsValue::user_iterator useP = user->user_begin();
                         useP != user->user_end(); useP++) {
                        useP->print(rawOstream);
                        cout << endl;
                    }
                }
            }

        }
        return true;
    }

    bool doFinalization(Module &M) {
        return true;
    }
};

char FunctionPassVisitor::ID = 0;
static RegisterPass<FunctionPassVisitor> X("hello", "Hello World Pass",
                                           false /* Only looks at CFG */,
                                           false /* Analysis Pass */);