; ModuleID = 'omp.c'
source_filename = "omp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant %ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 1000, i32* %2, align 4
  store i32 3000, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = zext i32 %5 to i64
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = mul nuw i64 %6, %8
  %11 = alloca i32, i64 %10, align 16
  call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* @1, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %2, i32* %3, i64 %6, i64 %8, i32* %11)
  store i32 0, i32* %1, align 4
  %12 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %12)
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias, i32* noalias, i32* dereferenceable(4), i32* dereferenceable(4), i64, i64, i32* dereferenceable(4)) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = load i32, i32* %25, align 4
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = sub nsw i32 %31, 0
  %33 = sub nsw i32 %32, 1
  %34 = add nsw i32 %33, 1
  %35 = sdiv i32 %34, 1
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp slt i32 0, %37
  br i1 %38, label %39, label %99

; <label>:39:                                     ; preds = %7
  store i32 0, i32* %20, align 4
  %40 = load i32, i32* %18, align 4
  store i32 %40, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  call void @__kmpc_for_static_init_4(%ident_t* @0, i32 %42, i32 34, i32* %23, i32* %20, i32* %21, i32* %22, i32 1, i32 1)
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %39
  %47 = load i32, i32* %18, align 4
  br label %50

; <label>:48:                                     ; preds = %39
  %49 = load i32, i32* %21, align 4
  br label %50

; <label>:50:                                     ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %20, align 4
  store i32 %52, i32* %15, align 4
  br label %53

; <label>:53:                                     ; preds = %92, %50
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %21, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %95

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %15, align 4
  %59 = mul nsw i32 %58, 1
  %60 = add nsw i32 0, %59
  store i32 %60, i32* %19, align 4
  store i32 0, i32* %24, align 4
  br label %61

; <label>:61:                                     ; preds = %87, %57
  %62 = load i32, i32* %24, align 4
  %63 = load i32, i32* %26, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %90

; <label>:65:                                     ; preds = %61
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  call void @__kmpc_critical(%ident_t* @1, i32 %67, [8 x i32]* @.gomp_critical_user_.var)
  %68 = load i32, i32* %19, align 4
  %69 = sext i32 %68 to i64
  %70 = mul nsw i64 %69, %28
  %71 = getelementptr inbounds i32, i32* %29, i64 %70
  %72 = load i32, i32* %24, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 0, i32* %74, align 4
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %24, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %79, %28
  %81 = getelementptr inbounds i32, i32* %29, i64 %80
  %82 = load i32, i32* %24, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %77
  store i32 %86, i32* %84, align 4
  call void @__kmpc_end_critical(%ident_t* @1, i32 %67, [8 x i32]* @.gomp_critical_user_.var)
  br label %87

; <label>:87:                                     ; preds = %65
  %88 = load i32, i32* %24, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %24, align 4
  br label %61

; <label>:90:                                     ; preds = %61
  br label %91

; <label>:91:                                     ; preds = %90
  br label %92

; <label>:92:                                     ; preds = %91
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %53

; <label>:95:                                     ; preds = %53
  br label %96

; <label>:96:                                     ; preds = %95
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %97, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %98)
  br label %99

; <label>:99:                                     ; preds = %96, %7
  ret void
}

declare void @__kmpc_for_static_init_4(%ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare void @__kmpc_end_critical(%ident_t*, i32, [8 x i32]*)

declare void @__kmpc_critical(%ident_t*, i32, [8 x i32]*)

declare void @__kmpc_for_static_fini(%ident_t*, i32)

declare void @__kmpc_fork_call(%ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
