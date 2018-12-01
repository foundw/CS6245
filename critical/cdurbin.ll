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
  br i1 %59, label %60, label %262

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

; <label>:74:                                     ; preds = %255, %71
  %75 = load i32, i32* %23, align 4
  %76 = load i32, i32* %29, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %258

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
  call void @__kmpc_end_critical(%ident_t* @1, i32 %83, [8 x i32]* @.gomp_critical_user_.var)
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

; <label>:125:                                    ; preds = %168, %78
  %126 = load i32, i32* %32, align 4
  %127 = load i32, i32* %27, align 4
  %128 = sub nsw i32 %127, 1
  %129 = icmp sle i32 %126, %128
  br i1 %129, label %130, label %171

; <label>:130:                                    ; preds = %125
  %131 = load i32*, i32** %12, align 8
  %132 = load i32, i32* %131, align 4
  call void @__kmpc_critical(%ident_t* @1, i32 %132, [8 x i32]* @.gomp_critical_user_.var)
  %133 = load [4000 x double]*, [4000 x double]** %46, align 8
  %134 = load i32, i32* %32, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4000 x double], [4000 x double]* %133, i64 %135
  %137 = load i32, i32* %27, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4000 x double], [4000 x double]* %136, i64 0, i64 %138
  %140 = load double, double* %139, align 8
  %141 = load double*, double** %47, align 8
  %142 = load i32, i32* %27, align 4
  %143 = load i32, i32* %32, align 4
  %144 = sub nsw i32 %142, %143
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double, double* %141, i64 %146
  %148 = load double, double* %147, align 8
  %149 = load [4000 x double]*, [4000 x double]** %48, align 8
  %150 = load i32, i32* %32, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [4000 x double], [4000 x double]* %149, i64 %151
  %153 = load i32, i32* %27, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [4000 x double], [4000 x double]* %152, i64 0, i64 %155
  %157 = load double, double* %156, align 8
  %158 = fmul double %148, %157
  %159 = fadd double %140, %158
  %160 = load [4000 x double]*, [4000 x double]** %46, align 8
  %161 = load i32, i32* %32, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [4000 x double], [4000 x double]* %160, i64 %163
  %165 = load i32, i32* %27, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [4000 x double], [4000 x double]* %164, i64 0, i64 %166
  store double %159, double* %167, align 8
  call void @__kmpc_end_critical(%ident_t* @1, i32 %132, [8 x i32]* @.gomp_critical_user_.var)
  br label %168

; <label>:168:                                    ; preds = %130
  %169 = load i32, i32* %32, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %32, align 4
  br label %125

; <label>:171:                                    ; preds = %125
  %172 = load i32*, i32** %12, align 8
  %173 = load i32, i32* %172, align 4
  call void @__kmpc_critical(%ident_t* @1, i32 %173, [8 x i32]* @.gomp_critical_user_.var)
  %174 = load [4000 x double]*, [4000 x double]** %46, align 8
  %175 = load i32, i32* %27, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4000 x double], [4000 x double]* %174, i64 %176
  %178 = load i32, i32* %27, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [4000 x double], [4000 x double]* %177, i64 0, i64 %179
  %181 = load double, double* %180, align 8
  %182 = fsub double -0.000000e+00, %181
  %183 = load double*, double** %44, align 8
  %184 = load i32, i32* %27, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double, double* %183, i64 %185
  %187 = load double, double* %186, align 8
  %188 = fmul double %182, %187
  %189 = load double*, double** %45, align 8
  %190 = load i32, i32* %27, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds double, double* %189, i64 %191
  store double %188, double* %192, align 8
  call void @__kmpc_end_critical(%ident_t* @1, i32 %173, [8 x i32]* @.gomp_critical_user_.var)
  store i32 0, i32* %32, align 4
  br label %193

; <label>:193:                                    ; preds = %236, %171
  %194 = load i32, i32* %32, align 4
  %195 = load i32, i32* %27, align 4
  %196 = sub nsw i32 %195, 1
  %197 = icmp sle i32 %194, %196
  br i1 %197, label %198, label %239

; <label>:198:                                    ; preds = %193
  %199 = load i32*, i32** %12, align 8
  %200 = load i32, i32* %199, align 4
  call void @__kmpc_critical(%ident_t* @1, i32 %200, [8 x i32]* @.gomp_critical_user_.var)
  %201 = load [4000 x double]*, [4000 x double]** %48, align 8
  %202 = load i32, i32* %32, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [4000 x double], [4000 x double]* %201, i64 %203
  %205 = load i32, i32* %27, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [4000 x double], [4000 x double]* %204, i64 0, i64 %207
  %209 = load double, double* %208, align 8
  %210 = load double*, double** %45, align 8
  %211 = load i32, i32* %27, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds double, double* %210, i64 %212
  %214 = load double, double* %213, align 8
  %215 = load [4000 x double]*, [4000 x double]** %48, align 8
  %216 = load i32, i32* %27, align 4
  %217 = load i32, i32* %32, align 4
  %218 = sub nsw i32 %216, %217
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [4000 x double], [4000 x double]* %215, i64 %220
  %222 = load i32, i32* %27, align 4
  %223 = sub nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [4000 x double], [4000 x double]* %221, i64 0, i64 %224
  %226 = load double, double* %225, align 8
  %227 = fmul double %214, %226
  %228 = fadd double %209, %227
  %229 = load [4000 x double]*, [4000 x double]** %48, align 8
  %230 = load i32, i32* %32, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [4000 x double], [4000 x double]* %229, i64 %231
  %233 = load i32, i32* %27, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [4000 x double], [4000 x double]* %232, i64 0, i64 %234
  store double %228, double* %235, align 8
  call void @__kmpc_end_critical(%ident_t* @1, i32 %200, [8 x i32]* @.gomp_critical_user_.var)
  br label %236

; <label>:236:                                    ; preds = %198
  %237 = load i32, i32* %32, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %32, align 4
  br label %193

; <label>:239:                                    ; preds = %193
  %240 = load i32*, i32** %12, align 8
  %241 = load i32, i32* %240, align 4
  call void @__kmpc_critical(%ident_t* @1, i32 %241, [8 x i32]* @.gomp_critical_user_.var)
  %242 = load double*, double** %45, align 8
  %243 = load i32, i32* %27, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds double, double* %242, i64 %244
  %246 = load double, double* %245, align 8
  %247 = load [4000 x double]*, [4000 x double]** %48, align 8
  %248 = load i32, i32* %27, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [4000 x double], [4000 x double]* %247, i64 %249
  %251 = load i32, i32* %27, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [4000 x double], [4000 x double]* %250, i64 0, i64 %252
  store double %246, double* %253, align 8
  call void @__kmpc_end_critical(%ident_t* @1, i32 %241, [8 x i32]* @.gomp_critical_user_.var)
  br label %254

; <label>:254:                                    ; preds = %239
  br label %255

; <label>:255:                                    ; preds = %254
  %256 = load i32, i32* %23, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %23, align 4
  br label %74

; <label>:258:                                    ; preds = %74
  br label %259

; <label>:259:                                    ; preds = %258
  %260 = load i32*, i32** %12, align 8
  %261 = load i32, i32* %260, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %261)
  br label %262

; <label>:262:                                    ; preds = %259, %11
  %263 = load i32*, i32** %12, align 8
  %264 = load i32, i32* %263, align 4
  call void @__kmpc_barrier(%ident_t* @2, i32 %264)
  %265 = load i32, i32* %43, align 4
  store i32 %265, i32* %35, align 4
  %266 = load i32, i32* %35, align 4
  %267 = sub nsw i32 %266, 0
  %268 = sub nsw i32 %267, 1
  %269 = add nsw i32 %268, 1
  %270 = sdiv i32 %269, 1
  %271 = sub nsw i32 %270, 1
  store i32 %271, i32* %36, align 4
  store i32 0, i32* %37, align 4
  %272 = load i32, i32* %35, align 4
  %273 = icmp slt i32 0, %272
  br i1 %273, label %274, label %317

; <label>:274:                                    ; preds = %262
  store i32 0, i32* %38, align 4
  %275 = load i32, i32* %36, align 4
  store i32 %275, i32* %39, align 4
  store i32 1, i32* %40, align 4
  store i32 0, i32* %41, align 4
  %276 = load i32*, i32** %12, align 8
  %277 = load i32, i32* %276, align 4
  call void @__kmpc_for_static_init_4(%ident_t* @0, i32 %277, i32 34, i32* %41, i32* %38, i32* %39, i32* %40, i32 1, i32 1)
  %278 = load i32, i32* %39, align 4
  %279 = load i32, i32* %36, align 4
  %280 = icmp sgt i32 %278, %279
  br i1 %280, label %281, label %283

; <label>:281:                                    ; preds = %274
  %282 = load i32, i32* %36, align 4
  br label %285

; <label>:283:                                    ; preds = %274
  %284 = load i32, i32* %39, align 4
  br label %285

; <label>:285:                                    ; preds = %283, %281
  %286 = phi i32 [ %282, %281 ], [ %284, %283 ]
  store i32 %286, i32* %39, align 4
  %287 = load i32, i32* %38, align 4
  store i32 %287, i32* %33, align 4
  br label %288

; <label>:288:                                    ; preds = %310, %285
  %289 = load i32, i32* %33, align 4
  %290 = load i32, i32* %39, align 4
  %291 = icmp sle i32 %289, %290
  br i1 %291, label %292, label %313

; <label>:292:                                    ; preds = %288
  %293 = load i32, i32* %33, align 4
  %294 = mul nsw i32 %293, 1
  %295 = add nsw i32 0, %294
  store i32 %295, i32* %37, align 4
  %296 = load [4000 x double]*, [4000 x double]** %48, align 8
  %297 = load i32, i32* %37, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [4000 x double], [4000 x double]* %296, i64 %298
  %300 = load i32, i32* %43, align 4
  %301 = sub nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [4000 x double], [4000 x double]* %299, i64 0, i64 %302
  %304 = load double, double* %303, align 8
  %305 = load double*, double** %50, align 8
  %306 = load i32, i32* %37, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds double, double* %305, i64 %307
  store double %304, double* %308, align 8
  br label %309

; <label>:309:                                    ; preds = %292
  br label %310

; <label>:310:                                    ; preds = %309
  %311 = load i32, i32* %33, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %33, align 4
  br label %288

; <label>:313:                                    ; preds = %288
  br label %314

; <label>:314:                                    ; preds = %313
  %315 = load i32*, i32** %12, align 8
  %316 = load i32, i32* %315, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %316)
  br label %317

; <label>:317:                                    ; preds = %314, %262
  %318 = load i32*, i32** %12, align 8
  %319 = load i32, i32* %318, align 4
  call void @__kmpc_barrier(%ident_t* @2, i32 %319)
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
