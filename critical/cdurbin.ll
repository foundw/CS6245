; ModuleID = 'cdurbin.c'
source_filename = "cdurbin.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant %ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant %ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4000 x [4000 x double]]*, align 8
  %8 = alloca [4000 x [4000 x double]]*, align 8
  %9 = alloca [4000 x double]*, align 8
  %10 = alloca [4000 x double]*, align 8
  %11 = alloca [4000 x double]*, align 8
  %12 = alloca [4000 x double]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 4000, i32* %6, align 4
  %13 = call i8* @polybench_alloc_data(i64 16000000, i32 8)
  %14 = bitcast i8* %13 to [4000 x [4000 x double]]*
  store [4000 x [4000 x double]]* %14, [4000 x [4000 x double]]** %7, align 8
  %15 = call i8* @polybench_alloc_data(i64 16000000, i32 8)
  %16 = bitcast i8* %15 to [4000 x [4000 x double]]*
  store [4000 x [4000 x double]]* %16, [4000 x [4000 x double]]** %8, align 8
  %17 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %18 = bitcast i8* %17 to [4000 x double]*
  store [4000 x double]* %18, [4000 x double]** %9, align 8
  %19 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %20 = bitcast i8* %19 to [4000 x double]*
  store [4000 x double]* %20, [4000 x double]** %10, align 8
  %21 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %22 = bitcast i8* %21 to [4000 x double]*
  store [4000 x double]* %22, [4000 x double]** %11, align 8
  %23 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %24 = bitcast i8* %23 to [4000 x double]*
  store [4000 x double]* %24, [4000 x double]** %12, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %7, align 8
  %27 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %26, i32 0, i32 0
  %28 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %8, align 8
  %29 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %28, i32 0, i32 0
  %30 = load [4000 x double]*, [4000 x double]** %9, align 8
  %31 = getelementptr inbounds [4000 x double], [4000 x double]* %30, i32 0, i32 0
  %32 = load [4000 x double]*, [4000 x double]** %10, align 8
  %33 = getelementptr inbounds [4000 x double], [4000 x double]* %32, i32 0, i32 0
  %34 = load [4000 x double]*, [4000 x double]** %11, align 8
  %35 = getelementptr inbounds [4000 x double], [4000 x double]* %34, i32 0, i32 0
  call void @init_array(i32 %25, [4000 x double]* %27, [4000 x double]* %29, double* %31, double* %33, double* %35)
  %36 = load i32, i32* %6, align 4
  %37 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %7, align 8
  %38 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %37, i32 0, i32 0
  %39 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %8, align 8
  %40 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %39, i32 0, i32 0
  %41 = load [4000 x double]*, [4000 x double]** %9, align 8
  %42 = getelementptr inbounds [4000 x double], [4000 x double]* %41, i32 0, i32 0
  %43 = load [4000 x double]*, [4000 x double]** %10, align 8
  %44 = getelementptr inbounds [4000 x double], [4000 x double]* %43, i32 0, i32 0
  %45 = load [4000 x double]*, [4000 x double]** %11, align 8
  %46 = getelementptr inbounds [4000 x double], [4000 x double]* %45, i32 0, i32 0
  %47 = load [4000 x double]*, [4000 x double]** %12, align 8
  %48 = getelementptr inbounds [4000 x double], [4000 x double]* %47, i32 0, i32 0
  call void @kernel_durbin(i32 %36, [4000 x double]* %38, [4000 x double]* %40, double* %42, double* %44, double* %46, double* %48)
  %49 = load i32, i32* %4, align 4
  %50 = icmp sgt i32 %49, 42
  br i1 %50, label %51, label %61

; <label>:51:                                     ; preds = %2
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

; <label>:57:                                     ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = load [4000 x double]*, [4000 x double]** %12, align 8
  %60 = getelementptr inbounds [4000 x double], [4000 x double]* %59, i32 0, i32 0
  call void @print_array(i32 %58, double* %60)
  br label %61

; <label>:61:                                     ; preds = %57, %51, %2
  %62 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %7, align 8
  %63 = bitcast [4000 x [4000 x double]]* %62 to i8*
  call void @free(i8* %63) #5
  %64 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %8, align 8
  %65 = bitcast [4000 x [4000 x double]]* %64 to i8*
  call void @free(i8* %65) #5
  %66 = load [4000 x double]*, [4000 x double]** %9, align 8
  %67 = bitcast [4000 x double]* %66 to i8*
  call void @free(i8* %67) #5
  %68 = load [4000 x double]*, [4000 x double]** %10, align 8
  %69 = bitcast [4000 x double]* %68 to i8*
  call void @free(i8* %69) #5
  %70 = load [4000 x double]*, [4000 x double]** %11, align 8
  %71 = bitcast [4000 x double]* %70 to i8*
  call void @free(i8* %71) #5
  %72 = load [4000 x double]*, [4000 x double]** %12, align 8
  %73 = bitcast [4000 x double]* %72 to i8*
  call void @free(i8* %73) #5
  ret i32 0
}

declare i8* @polybench_alloc_data(i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32, [4000 x double]*, [4000 x double]*, double*, double*, double*) #0 {
  %7 = alloca i32, align 4
  %8 = alloca [4000 x double]*, align 8
  %9 = alloca [4000 x double]*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store [4000 x double]* %1, [4000 x double]** %8, align 8
  store [4000 x double]* %2, [4000 x double]** %9, align 8
  store double* %3, double** %10, align 8
  store double* %4, double** %11, align 8
  store double* %5, double** %12, align 8
  store i32 0, i32* %13, align 4
  br label %15

; <label>:15:                                     ; preds = %85, %6
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %88

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %13, align 4
  %21 = sitofp i32 %20 to double
  %22 = load double*, double** %10, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  store double %21, double* %25, align 8
  %26 = load i32, i32* %13, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* %7, align 4
  %29 = sdiv i32 %27, %28
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %30, 2.000000e+00
  %32 = load double*, double** %11, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %32, i64 %34
  store double %31, double* %35, align 8
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %7, align 4
  %39 = sdiv i32 %37, %38
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 4.000000e+00
  %42 = load double*, double** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %42, i64 %44
  store double %41, double* %45, align 8
  store i32 0, i32* %14, align 4
  br label %46

; <label>:46:                                     ; preds = %81, %19
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %84

; <label>:50:                                     ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = sitofp i32 %51 to double
  %53 = load i32, i32* %14, align 4
  %54 = sitofp i32 %53 to double
  %55 = fmul double %52, %54
  %56 = load i32, i32* %7, align 4
  %57 = sitofp i32 %56 to double
  %58 = fdiv double %55, %57
  %59 = load [4000 x double]*, [4000 x double]** %8, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4000 x double], [4000 x double]* %59, i64 %61
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4000 x double], [4000 x double]* %62, i64 0, i64 %64
  store double %58, double* %65, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sitofp i32 %66 to double
  %68 = load i32, i32* %14, align 4
  %69 = sitofp i32 %68 to double
  %70 = fmul double %67, %69
  %71 = load i32, i32* %7, align 4
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %70, %72
  %74 = load [4000 x double]*, [4000 x double]** %9, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4000 x double], [4000 x double]* %74, i64 %76
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4000 x double], [4000 x double]* %77, i64 0, i64 %79
  store double %73, double* %80, align 8
  br label %81

; <label>:81:                                     ; preds = %50
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %46

; <label>:84:                                     ; preds = %46
  br label %85

; <label>:85:                                     ; preds = %84
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %15

; <label>:88:                                     ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_durbin(i32, [4000 x double]*, [4000 x double]*, double*, double*, double*, double*) #0 {
  %8 = alloca i32, align 4
  %9 = alloca [4000 x double]*, align 8
  %10 = alloca [4000 x double]*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store [4000 x double]* %1, [4000 x double]** %9, align 8
  store [4000 x double]* %2, [4000 x double]** %10, align 8
  store double* %3, double** %11, align 8
  store double* %4, double** %12, align 8
  store double* %5, double** %13, align 8
  store double* %6, double** %14, align 8
  %17 = load double*, double** %13, align 8
  %18 = getelementptr inbounds double, double* %17, i64 0
  %19 = load double, double* %18, align 8
  %20 = load [4000 x double]*, [4000 x double]** %9, align 8
  %21 = getelementptr inbounds [4000 x double], [4000 x double]* %20, i64 0
  %22 = getelementptr inbounds [4000 x double], [4000 x double]* %21, i64 0, i64 0
  store double %19, double* %22, align 8
  %23 = load double*, double** %12, align 8
  %24 = getelementptr inbounds double, double* %23, i64 0
  store double 1.000000e+00, double* %24, align 8
  %25 = load double*, double** %13, align 8
  %26 = getelementptr inbounds double, double* %25, i64 0
  %27 = load double, double* %26, align 8
  %28 = load double*, double** %11, align 8
  %29 = getelementptr inbounds double, double* %28, i64 0
  store double %27, double* %29, align 8
  call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* @1, i32 9, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, double**, double**, [4000 x double]**, double**, [4000 x double]**, i32*, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %16, i32* %8, double** %12, double** %11, [4000 x double]** %10, double** %13, [4000 x double]** %9, i32* %15, double** %14)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_array(i32, double*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %25, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %28

; <label>:10:                                     ; preds = %6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load double*, double** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, double* %12, i64 %14
  %16 = load double, double* %15, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %16)
  %18 = load i32, i32* %5, align 4
  %19 = srem i32 %18, 20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %24

; <label>:24:                                     ; preds = %21, %10
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

; <label>:28:                                     ; preds = %6
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias, i32* noalias, i32* dereferenceable(4), i32* dereferenceable(4), double** dereferenceable(8), double** dereferenceable(8), [4000 x double]** dereferenceable(8), double** dereferenceable(8), [4000 x double]** dereferenceable(8), i32* dereferenceable(4), double** dereferenceable(8)) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca double**, align 8
  %17 = alloca double**, align 8
  %18 = alloca [4000 x double]**, align 8
  %19 = alloca double**, align 8
  %20 = alloca [4000 x double]**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca double**, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store double** %4, double*** %16, align 8
  store double** %5, double*** %17, align 8
  store [4000 x double]** %6, [4000 x double]*** %18, align 8
  store double** %7, double*** %19, align 8
  store [4000 x double]** %8, [4000 x double]*** %20, align 8
  store i32* %9, i32** %21, align 8
  store double** %10, double*** %22, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = load double**, double*** %16, align 8
  %45 = load double**, double*** %17, align 8
  %46 = load [4000 x double]**, [4000 x double]*** %18, align 8
  %47 = load double**, double*** %19, align 8
  %48 = load [4000 x double]**, [4000 x double]*** %20, align 8
  %49 = load i32*, i32** %21, align 8
  %50 = load double**, double*** %22, align 8
  %51 = load i32, i32* %43, align 4
  store i32 %51, i32* %25, align 4
  %52 = load i32, i32* %25, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sub nsw i32 %53, 1
  %55 = add nsw i32 %54, 1
  %56 = sdiv i32 %55, 1
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %26, align 4
  store i32 1, i32* %27, align 4
  %58 = load i32, i32* %25, align 4
  %59 = icmp slt i32 1, %58
  br i1 %59, label %60, label %254

; <label>:60:                                     ; preds = %11
  store i32 0, i32* %28, align 4
  %61 = load i32, i32* %26, align 4
  store i32 %61, i32* %29, align 4
  store i32 1, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %62, align 4
  call void @__kmpc_for_static_init_4(%ident_t* @0, i32 %63, i32 34, i32* %31, i32* %28, i32* %29, i32* %30, i32 1, i32 1)
  %64 = load i32, i32* %29, align 4
  %65 = load i32, i32* %26, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %60
  %68 = load i32, i32* %26, align 4
  br label %71

; <label>:69:                                     ; preds = %60
  %70 = load i32, i32* %29, align 4
  br label %71

; <label>:71:                                     ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %29, align 4
  %73 = load i32, i32* %28, align 4
  store i32 %73, i32* %23, align 4
  br label %74

; <label>:74:                                     ; preds = %247, %71
  %75 = load i32, i32* %23, align 4
  %76 = load i32, i32* %29, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %250

; <label>:78:                                     ; preds = %74
  %79 = load i32, i32* %23, align 4
  %80 = mul nsw i32 %79, 1
  %81 = add nsw i32 1, %80
  store i32 %81, i32* %27, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %82, align 4
  call void @__kmpc_critical(%ident_t* @1, i32 %83, [8 x i32]* @.gomp_critical_user_.var)
  %84 = load double*, double** %44, align 8
  %85 = load i32, i32* %27, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %84, i64 %87
  %89 = load double, double* %88, align 8
  %90 = load double*, double** %45, align 8
  %91 = load i32, i32* %27, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %90, i64 %93
  %95 = load double, double* %94, align 8
  %96 = load double*, double** %45, align 8
  %97 = load i32, i32* %27, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %96, i64 %99
  %101 = load double, double* %100, align 8
  %102 = fmul double %95, %101
  %103 = load double*, double** %44, align 8
  %104 = load i32, i32* %27, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %103, i64 %106
  %108 = load double, double* %107, align 8
  %109 = fmul double %102, %108
  %110 = fsub double %89, %109
  %111 = load double*, double** %44, align 8
  %112 = load i32, i32* %27, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, double* %111, i64 %113
  store double %110, double* %114, align 8
  %115 = load double*, double** %47, align 8
  %116 = load i32, i32* %27, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds double, double* %115, i64 %117
  %119 = load double, double* %118, align 8
  %120 = load [4000 x double]*, [4000 x double]** %46, align 8
  %121 = getelementptr inbounds [4000 x double], [4000 x double]* %120, i64 0
  %122 = load i32, i32* %27, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4000 x double], [4000 x double]* %121, i64 0, i64 %123
  store double %119, double* %124, align 8
  store i32 0, i32* %32, align 4
  br label %125

; <label>:125:                                    ; preds = %166, %78
  %126 = load i32, i32* %32, align 4
  %127 = load i32, i32* %27, align 4
  %128 = sub nsw i32 %127, 1
  %129 = icmp sle i32 %126, %128
  br i1 %129, label %130, label %169

; <label>:130:                                    ; preds = %125
  %131 = load [4000 x double]*, [4000 x double]** %46, align 8
  %132 = load i32, i32* %32, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4000 x double], [4000 x double]* %131, i64 %133
  %135 = load i32, i32* %27, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4000 x double], [4000 x double]* %134, i64 0, i64 %136
  %138 = load double, double* %137, align 8
  %139 = load double*, double** %47, align 8
  %140 = load i32, i32* %27, align 4
  %141 = load i32, i32* %32, align 4
  %142 = sub nsw i32 %140, %141
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds double, double* %139, i64 %144
  %146 = load double, double* %145, align 8
  %147 = load [4000 x double]*, [4000 x double]** %48, align 8
  %148 = load i32, i32* %32, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4000 x double], [4000 x double]* %147, i64 %149
  %151 = load i32, i32* %27, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4000 x double], [4000 x double]* %150, i64 0, i64 %153
  %155 = load double, double* %154, align 8
  %156 = fmul double %146, %155
  %157 = fadd double %138, %156
  %158 = load [4000 x double]*, [4000 x double]** %46, align 8
  %159 = load i32, i32* %32, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4000 x double], [4000 x double]* %158, i64 %161
  %163 = load i32, i32* %27, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [4000 x double], [4000 x double]* %162, i64 0, i64 %164
  store double %157, double* %165, align 8
  br label %166

; <label>:166:                                    ; preds = %130
  %167 = load i32, i32* %32, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %32, align 4
  br label %125

; <label>:169:                                    ; preds = %125
  %170 = load [4000 x double]*, [4000 x double]** %46, align 8
  %171 = load i32, i32* %27, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [4000 x double], [4000 x double]* %170, i64 %172
  %174 = load i32, i32* %27, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [4000 x double], [4000 x double]* %173, i64 0, i64 %175
  %177 = load double, double* %176, align 8
  %178 = fsub double -0.000000e+00, %177
  %179 = load double*, double** %44, align 8
  %180 = load i32, i32* %27, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds double, double* %179, i64 %181
  %183 = load double, double* %182, align 8
  %184 = fmul double %178, %183
  %185 = load double*, double** %45, align 8
  %186 = load i32, i32* %27, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double, double* %185, i64 %187
  store double %184, double* %188, align 8
  store i32 0, i32* %32, align 4
  br label %189

; <label>:189:                                    ; preds = %230, %169
  %190 = load i32, i32* %32, align 4
  %191 = load i32, i32* %27, align 4
  %192 = sub nsw i32 %191, 1
  %193 = icmp sle i32 %190, %192
  br i1 %193, label %194, label %233

; <label>:194:                                    ; preds = %189
  %195 = load [4000 x double]*, [4000 x double]** %48, align 8
  %196 = load i32, i32* %32, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [4000 x double], [4000 x double]* %195, i64 %197
  %199 = load i32, i32* %27, align 4
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [4000 x double], [4000 x double]* %198, i64 0, i64 %201
  %203 = load double, double* %202, align 8
  %204 = load double*, double** %45, align 8
  %205 = load i32, i32* %27, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, double* %204, i64 %206
  %208 = load double, double* %207, align 8
  %209 = load [4000 x double]*, [4000 x double]** %48, align 8
  %210 = load i32, i32* %27, align 4
  %211 = load i32, i32* %32, align 4
  %212 = sub nsw i32 %210, %211
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [4000 x double], [4000 x double]* %209, i64 %214
  %216 = load i32, i32* %27, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [4000 x double], [4000 x double]* %215, i64 0, i64 %218
  %220 = load double, double* %219, align 8
  %221 = fmul double %208, %220
  %222 = fadd double %203, %221
  %223 = load [4000 x double]*, [4000 x double]** %48, align 8
  %224 = load i32, i32* %32, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [4000 x double], [4000 x double]* %223, i64 %225
  %227 = load i32, i32* %27, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [4000 x double], [4000 x double]* %226, i64 0, i64 %228
  store double %222, double* %229, align 8
  br label %230

; <label>:230:                                    ; preds = %194
  %231 = load i32, i32* %32, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %32, align 4
  br label %189

; <label>:233:                                    ; preds = %189
  %234 = load double*, double** %45, align 8
  %235 = load i32, i32* %27, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds double, double* %234, i64 %236
  %238 = load double, double* %237, align 8
  %239 = load [4000 x double]*, [4000 x double]** %48, align 8
  %240 = load i32, i32* %27, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [4000 x double], [4000 x double]* %239, i64 %241
  %243 = load i32, i32* %27, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [4000 x double], [4000 x double]* %242, i64 0, i64 %244
  store double %238, double* %245, align 8
  call void @__kmpc_end_critical(%ident_t* @1, i32 %83, [8 x i32]* @.gomp_critical_user_.var)
  br label %246

; <label>:246:                                    ; preds = %233
  br label %247

; <label>:247:                                    ; preds = %246
  %248 = load i32, i32* %23, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %23, align 4
  br label %74

; <label>:250:                                    ; preds = %74
  br label %251

; <label>:251:                                    ; preds = %250
  %252 = load i32*, i32** %12, align 8
  %253 = load i32, i32* %252, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %253)
  br label %254

; <label>:254:                                    ; preds = %251, %11
  %255 = load i32*, i32** %12, align 8
  %256 = load i32, i32* %255, align 4
  call void @__kmpc_barrier(%ident_t* @2, i32 %256)
  %257 = load i32, i32* %43, align 4
  store i32 %257, i32* %35, align 4
  %258 = load i32, i32* %35, align 4
  %259 = sub nsw i32 %258, 0
  %260 = sub nsw i32 %259, 1
  %261 = add nsw i32 %260, 1
  %262 = sdiv i32 %261, 1
  %263 = sub nsw i32 %262, 1
  store i32 %263, i32* %36, align 4
  store i32 0, i32* %37, align 4
  %264 = load i32, i32* %35, align 4
  %265 = icmp slt i32 0, %264
  br i1 %265, label %266, label %309

; <label>:266:                                    ; preds = %254
  store i32 0, i32* %38, align 4
  %267 = load i32, i32* %36, align 4
  store i32 %267, i32* %39, align 4
  store i32 1, i32* %40, align 4
  store i32 0, i32* %41, align 4
  %268 = load i32*, i32** %12, align 8
  %269 = load i32, i32* %268, align 4
  call void @__kmpc_for_static_init_4(%ident_t* @0, i32 %269, i32 34, i32* %41, i32* %38, i32* %39, i32* %40, i32 1, i32 1)
  %270 = load i32, i32* %39, align 4
  %271 = load i32, i32* %36, align 4
  %272 = icmp sgt i32 %270, %271
  br i1 %272, label %273, label %275

; <label>:273:                                    ; preds = %266
  %274 = load i32, i32* %36, align 4
  br label %277

; <label>:275:                                    ; preds = %266
  %276 = load i32, i32* %39, align 4
  br label %277

; <label>:277:                                    ; preds = %275, %273
  %278 = phi i32 [ %274, %273 ], [ %276, %275 ]
  store i32 %278, i32* %39, align 4
  %279 = load i32, i32* %38, align 4
  store i32 %279, i32* %33, align 4
  br label %280

; <label>:280:                                    ; preds = %302, %277
  %281 = load i32, i32* %33, align 4
  %282 = load i32, i32* %39, align 4
  %283 = icmp sle i32 %281, %282
  br i1 %283, label %284, label %305

; <label>:284:                                    ; preds = %280
  %285 = load i32, i32* %33, align 4
  %286 = mul nsw i32 %285, 1
  %287 = add nsw i32 0, %286
  store i32 %287, i32* %37, align 4
  %288 = load [4000 x double]*, [4000 x double]** %48, align 8
  %289 = load i32, i32* %37, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [4000 x double], [4000 x double]* %288, i64 %290
  %292 = load i32, i32* %43, align 4
  %293 = sub nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [4000 x double], [4000 x double]* %291, i64 0, i64 %294
  %296 = load double, double* %295, align 8
  %297 = load double*, double** %50, align 8
  %298 = load i32, i32* %37, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds double, double* %297, i64 %299
  store double %296, double* %300, align 8
  br label %301

; <label>:301:                                    ; preds = %284
  br label %302

; <label>:302:                                    ; preds = %301
  %303 = load i32, i32* %33, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %33, align 4
  br label %280

; <label>:305:                                    ; preds = %280
  br label %306

; <label>:306:                                    ; preds = %305
  %307 = load i32*, i32** %12, align 8
  %308 = load i32, i32* %307, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %308)
  br label %309

; <label>:309:                                    ; preds = %306, %254
  %310 = load i32*, i32** %12, align 8
  %311 = load i32, i32* %310, align 4
  call void @__kmpc_barrier(%ident_t* @2, i32 %311)
  ret void
}

declare void @__kmpc_for_static_init_4(%ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare void @__kmpc_end_critical(%ident_t*, i32, [8 x i32]*)

declare void @__kmpc_critical(%ident_t*, i32, [8 x i32]*)

declare void @__kmpc_for_static_fini(%ident_t*, i32)

declare void @__kmpc_barrier(%ident_t*, i32)

declare void @__kmpc_fork_call(%ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
