# CS6245 Mid Report

## Overview

Team member:
 + Xiang Cheng cxworks@gatech.edu
 + Fang Wang fangwang@gatech.edu

Project Target:

Our project is *Find data races in OpenMP programs having atomic and critical constructs*. We are using LLVM framework
to do static analysis on IR and try to figure out the possible data races in the given c program.

## What we have done

### 1. Set up & learn LLVM

We have set up our project on [GitHub](https://github.com/foundw/CS6245) and set up the LLVM development environment on
our computers. We are now using LLVM 6.0+ and we have writen our simple test code and compile it into IR form.

### 2. Analyze OMP

After observing IR, I found the clang will compile the OMP into separate functions like this:

        %8 = alloca i32, i64 %6, align 16
        call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* @1, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %2, i32* %3, i64 %6, i32* %8)
        store i32 0, i32* %1, align 4

Based on this, we set up our LLVM function pass and filter the function by name to get the LLVM parallel functions.
Besides, the critical will also be compiled into separate function calls, so we could filter them out.

        %64 = load i32, i32* %63, align 4
        call void @__kmpc_critical(%ident_t* @1, i32 %64, [8 x i32]* @.gomp_critical_user_.var)
        %65 = load i32, i32* %22, align 4

Now we are trying to figure out the memory access of the loop.

According to the data race definition and Prasanth's paper, we know the data race under OMP have the following 3 condtions

1. 2 statements have May-Happen-Parallel relation
2. 2 statements access the same memory location
3. They are not protected by atomic instruction or critical section

So when under the OMP function, the statements have MHP relation and we also could detect the statement inside the critical
section or not.

## Problems and Issues

The second point is also the most difficult point. I try to use the LLVM built-in Loop analysis to analyze the loop inside
OMP function. But their built-in tool couldn't handle this situation since the division of the task was happend in running
time. My code is this:

        auto &LIWP = getAnalysis<LoopInfoWrapperPass>();
        LoopInfo *LI = &LIWP.getLoopInfo();
        auto &LALA = getAnalysis<LoopAccessLegacyAnalysis>();

So next step we might have to do this analysis by ourselves and it's hard for us to fully analyze the OMP code without
runtime information.

If you have any suggestions or advice, please tell us, thank you.
