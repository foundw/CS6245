; ModuleID = 'durbin.c'
source_filename = "durbin.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant %ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
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
  call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* @2, i32 9, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, double**, double**, [4000 x double]**, double**, [4000 x double]**, i32*, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %16, i32* %8, double** %12, double** %11, [4000 x double]** %10, double** %13, [4000 x double]** %9, i32* %15, double** %14)
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
  br i1 %59, label %60, label %252

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

; <label>:74:                                     ; preds = %245, %71
  %75 = load i32, i32* %23, align 4
  %76 = load i32, i32* %29, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %248

; <label>:78:                                     ; preds = %74
  %79 = load i32, i32* %23, align 4
  %80 = mul nsw i32 %79, 1
  %81 = add nsw i32 1, %80
  store i32 %81, i32* %27, align 4
  %82 = load double*, double** %44, align 8
  %83 = load i32, i32* %27, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %82, i64 %85
  %87 = load double, double* %86, align 8
  %88 = load double*, double** %45, align 8
  %89 = load i32, i32* %27, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %88, i64 %91
  %93 = load double, double* %92, align 8
  %94 = load double*, double** %45, align 8
  %95 = load i32, i32* %27, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %94, i64 %97
  %99 = load double, double* %98, align 8
  %100 = fmul double %93, %99
  %101 = load double*, double** %44, align 8
  %102 = load i32, i32* %27, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, double* %101, i64 %104
  %106 = load double, double* %105, align 8
  %107 = fmul double %100, %106
  %108 = fsub double %87, %107
  %109 = load double*, double** %44, align 8
  %110 = load i32, i32* %27, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, double* %109, i64 %111
  store double %108, double* %112, align 8
  %113 = load double*, double** %47, align 8
  %114 = load i32, i32* %27, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %113, i64 %115
  %117 = load double, double* %116, align 8
  %118 = load [4000 x double]*, [4000 x double]** %46, align 8
  %119 = getelementptr inbounds [4000 x double], [4000 x double]* %118, i64 0
  %120 = load i32, i32* %27, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4000 x double], [4000 x double]* %119, i64 0, i64 %121
  store double %117, double* %122, align 8
  store i32 0, i32* %32, align 4
  br label %123

; <label>:123:                                    ; preds = %164, %78
  %124 = load i32, i32* %32, align 4
  %125 = load i32, i32* %27, align 4
  %126 = sub nsw i32 %125, 1
  %127 = icmp sle i32 %124, %126
  br i1 %127, label %128, label %167

; <label>:128:                                    ; preds = %123
  %129 = load [4000 x double]*, [4000 x double]** %46, align 8
  %130 = load i32, i32* %32, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [4000 x double], [4000 x double]* %129, i64 %131
  %133 = load i32, i32* %27, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [4000 x double], [4000 x double]* %132, i64 0, i64 %134
  %136 = load double, double* %135, align 8
  %137 = load double*, double** %47, align 8
  %138 = load i32, i32* %27, align 4
  %139 = load i32, i32* %32, align 4
  %140 = sub nsw i32 %138, %139
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, double* %137, i64 %142
  %144 = load double, double* %143, align 8
  %145 = load [4000 x double]*, [4000 x double]** %48, align 8
  %146 = load i32, i32* %32, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4000 x double], [4000 x double]* %145, i64 %147
  %149 = load i32, i32* %27, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [4000 x double], [4000 x double]* %148, i64 0, i64 %151
  %153 = load double, double* %152, align 8
  %154 = fmul double %144, %153
  %155 = fadd double %136, %154
  %156 = load [4000 x double]*, [4000 x double]** %46, align 8
  %157 = load i32, i32* %32, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [4000 x double], [4000 x double]* %156, i64 %159
  %161 = load i32, i32* %27, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [4000 x double], [4000 x double]* %160, i64 0, i64 %162
  store double %155, double* %163, align 8
  br label %164

; <label>:164:                                    ; preds = %128
  %165 = load i32, i32* %32, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %32, align 4
  br label %123

; <label>:167:                                    ; preds = %123
  %168 = load [4000 x double]*, [4000 x double]** %46, align 8
  %169 = load i32, i32* %27, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [4000 x double], [4000 x double]* %168, i64 %170
  %172 = load i32, i32* %27, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [4000 x double], [4000 x double]* %171, i64 0, i64 %173
  %175 = load double, double* %174, align 8
  %176 = fsub double -0.000000e+00, %175
  %177 = load double*, double** %44, align 8
  %178 = load i32, i32* %27, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds double, double* %177, i64 %179
  %181 = load double, double* %180, align 8
  %182 = fmul double %176, %181
  %183 = load double*, double** %45, align 8
  %184 = load i32, i32* %27, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double, double* %183, i64 %185
  store double %182, double* %186, align 8
  store i32 0, i32* %32, align 4
  br label %187

; <label>:187:                                    ; preds = %228, %167
  %188 = load i32, i32* %32, align 4
  %189 = load i32, i32* %27, align 4
  %190 = sub nsw i32 %189, 1
  %191 = icmp sle i32 %188, %190
  br i1 %191, label %192, label %231

; <label>:192:                                    ; preds = %187
  %193 = load [4000 x double]*, [4000 x double]** %48, align 8
  %194 = load i32, i32* %32, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [4000 x double], [4000 x double]* %193, i64 %195
  %197 = load i32, i32* %27, align 4
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [4000 x double], [4000 x double]* %196, i64 0, i64 %199
  %201 = load double, double* %200, align 8
  %202 = load double*, double** %45, align 8
  %203 = load i32, i32* %27, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds double, double* %202, i64 %204
  %206 = load double, double* %205, align 8
  %207 = load [4000 x double]*, [4000 x double]** %48, align 8
  %208 = load i32, i32* %27, align 4
  %209 = load i32, i32* %32, align 4
  %210 = sub nsw i32 %208, %209
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [4000 x double], [4000 x double]* %207, i64 %212
  %214 = load i32, i32* %27, align 4
  %215 = sub nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [4000 x double], [4000 x double]* %213, i64 0, i64 %216
  %218 = load double, double* %217, align 8
  %219 = fmul double %206, %218
  %220 = fadd double %201, %219
  %221 = load [4000 x double]*, [4000 x double]** %48, align 8
  %222 = load i32, i32* %32, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [4000 x double], [4000 x double]* %221, i64 %223
  %225 = load i32, i32* %27, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [4000 x double], [4000 x double]* %224, i64 0, i64 %226
  store double %220, double* %227, align 8
  br label %228

; <label>:228:                                    ; preds = %192
  %229 = load i32, i32* %32, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %32, align 4
  br label %187

; <label>:231:                                    ; preds = %187
  %232 = load double*, double** %45, align 8
  %233 = load i32, i32* %27, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds double, double* %232, i64 %234
  %236 = load double, double* %235, align 8
  %237 = load [4000 x double]*, [4000 x double]** %48, align 8
  %238 = load i32, i32* %27, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [4000 x double], [4000 x double]* %237, i64 %239
  %241 = load i32, i32* %27, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [4000 x double], [4000 x double]* %240, i64 0, i64 %242
  store double %236, double* %243, align 8
  br label %244

; <label>:244:                                    ; preds = %231
  br label %245

; <label>:245:                                    ; preds = %244
  %246 = load i32, i32* %23, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %23, align 4
  br label %74

; <label>:248:                                    ; preds = %74
  br label %249

; <label>:249:                                    ; preds = %248
  %250 = load i32*, i32** %12, align 8
  %251 = load i32, i32* %250, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %251)
  br label %252

; <label>:252:                                    ; preds = %249, %11
  %253 = load i32*, i32** %12, align 8
  %254 = load i32, i32* %253, align 4
  call void @__kmpc_barrier(%ident_t* @1, i32 %254)
  %255 = load i32, i32* %43, align 4
  store i32 %255, i32* %35, align 4
  %256 = load i32, i32* %35, align 4
  %257 = sub nsw i32 %256, 0
  %258 = sub nsw i32 %257, 1
  %259 = add nsw i32 %258, 1
  %260 = sdiv i32 %259, 1
  %261 = sub nsw i32 %260, 1
  store i32 %261, i32* %36, align 4
  store i32 0, i32* %37, align 4
  %262 = load i32, i32* %35, align 4
  %263 = icmp slt i32 0, %262
  br i1 %263, label %264, label %307

; <label>:264:                                    ; preds = %252
  store i32 0, i32* %38, align 4
  %265 = load i32, i32* %36, align 4
  store i32 %265, i32* %39, align 4
  store i32 1, i32* %40, align 4
  store i32 0, i32* %41, align 4
  %266 = load i32*, i32** %12, align 8
  %267 = load i32, i32* %266, align 4
  call void @__kmpc_for_static_init_4(%ident_t* @0, i32 %267, i32 34, i32* %41, i32* %38, i32* %39, i32* %40, i32 1, i32 1)
  %268 = load i32, i32* %39, align 4
  %269 = load i32, i32* %36, align 4
  %270 = icmp sgt i32 %268, %269
  br i1 %270, label %271, label %273

; <label>:271:                                    ; preds = %264
  %272 = load i32, i32* %36, align 4
  br label %275

; <label>:273:                                    ; preds = %264
  %274 = load i32, i32* %39, align 4
  br label %275

; <label>:275:                                    ; preds = %273, %271
  %276 = phi i32 [ %272, %271 ], [ %274, %273 ]
  store i32 %276, i32* %39, align 4
  %277 = load i32, i32* %38, align 4
  store i32 %277, i32* %33, align 4
  br label %278

; <label>:278:                                    ; preds = %300, %275
  %279 = load i32, i32* %33, align 4
  %280 = load i32, i32* %39, align 4
  %281 = icmp sle i32 %279, %280
  br i1 %281, label %282, label %303

; <label>:282:                                    ; preds = %278
  %283 = load i32, i32* %33, align 4
  %284 = mul nsw i32 %283, 1
  %285 = add nsw i32 0, %284
  store i32 %285, i32* %37, align 4
  %286 = load [4000 x double]*, [4000 x double]** %48, align 8
  %287 = load i32, i32* %37, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [4000 x double], [4000 x double]* %286, i64 %288
  %290 = load i32, i32* %43, align 4
  %291 = sub nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [4000 x double], [4000 x double]* %289, i64 0, i64 %292
  %294 = load double, double* %293, align 8
  %295 = load double*, double** %50, align 8
  %296 = load i32, i32* %37, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds double, double* %295, i64 %297
  store double %294, double* %298, align 8
  br label %299

; <label>:299:                                    ; preds = %282
  br label %300

; <label>:300:                                    ; preds = %299
  %301 = load i32, i32* %33, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %33, align 4
  br label %278

; <label>:303:                                    ; preds = %278
  br label %304

; <label>:304:                                    ; preds = %303
  %305 = load i32*, i32** %12, align 8
  %306 = load i32, i32* %305, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %306)
  br label %307

; <label>:307:                                    ; preds = %304, %252
  %308 = load i32*, i32** %12, align 8
  %309 = load i32, i32* %308, align 4
  call void @__kmpc_barrier(%ident_t* @1, i32 %309)
  ret void
}

declare void @__kmpc_for_static_init_4(%ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

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
