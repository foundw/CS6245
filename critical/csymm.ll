; ModuleID = 'csymm.c'
source_filename = "csymm.c"
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
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca [1024 x [1024 x double]]*, align 8
  %11 = alloca [1024 x [1024 x double]]*, align 8
  %12 = alloca [1024 x [1024 x double]]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1024, i32* %6, align 4
  store i32 1024, i32* %7, align 4
  %13 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %14 = bitcast i8* %13 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %14, [1024 x [1024 x double]]** %10, align 8
  %15 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %16 = bitcast i8* %15 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %16, [1024 x [1024 x double]]** %11, align 8
  %17 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %18 = bitcast i8* %17 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %18, [1024 x [1024 x double]]** %12, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %10, align 8
  %22 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %21, i32 0, i32 0
  %23 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %11, align 8
  %24 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %23, i32 0, i32 0
  %25 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %12, align 8
  %26 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %25, i32 0, i32 0
  call void @init_array(i32 %19, i32 %20, double* %8, double* %9, [1024 x double]* %22, [1024 x double]* %24, [1024 x double]* %26)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load double, double* %8, align 8
  %30 = load double, double* %9, align 8
  %31 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %10, align 8
  %32 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %31, i32 0, i32 0
  %33 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %11, align 8
  %34 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %33, i32 0, i32 0
  %35 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %12, align 8
  %36 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %35, i32 0, i32 0
  call void @kernel_symm(i32 %27, i32 %28, double %29, double %30, [1024 x double]* %32, [1024 x double]* %34, [1024 x double]* %36)
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 42
  br i1 %38, label %39, label %50

; <label>:39:                                     ; preds = %2
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

; <label>:45:                                     ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %10, align 8
  %49 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %48, i32 0, i32 0
  call void @print_array(i32 %46, i32 %47, [1024 x double]* %49)
  br label %50

; <label>:50:                                     ; preds = %45, %39, %2
  %51 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %10, align 8
  %52 = bitcast [1024 x [1024 x double]]* %51 to i8*
  call void @free(i8* %52) #5
  %53 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %11, align 8
  %54 = bitcast [1024 x [1024 x double]]* %53 to i8*
  call void @free(i8* %54) #5
  %55 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %12, align 8
  %56 = bitcast [1024 x [1024 x double]]* %55 to i8*
  call void @free(i8* %56) #5
  ret i32 0
}

declare i8* @polybench_alloc_data(i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32, i32, double*, double*, [1024 x double]*, [1024 x double]*, [1024 x double]*) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca [1024 x double]*, align 8
  %13 = alloca [1024 x double]*, align 8
  %14 = alloca [1024 x double]*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store double* %2, double** %10, align 8
  store double* %3, double** %11, align 8
  store [1024 x double]* %4, [1024 x double]** %12, align 8
  store [1024 x double]* %5, [1024 x double]** %13, align 8
  store [1024 x double]* %6, [1024 x double]** %14, align 8
  %17 = load double*, double** %10, align 8
  store double 3.241200e+04, double* %17, align 8
  %18 = load double*, double** %11, align 8
  store double 2.123000e+03, double* %18, align 8
  store i32 0, i32* %15, align 4
  br label %19

; <label>:19:                                     ; preds = %63, %7
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %66

; <label>:23:                                     ; preds = %19
  store i32 0, i32* %16, align 4
  br label %24

; <label>:24:                                     ; preds = %59, %23
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %62

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %15, align 4
  %30 = sitofp i32 %29 to double
  %31 = load i32, i32* %16, align 4
  %32 = sitofp i32 %31 to double
  %33 = fmul double %30, %32
  %34 = load i32, i32* %8, align 4
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %33, %35
  %37 = load [1024 x double]*, [1024 x double]** %12, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1024 x double], [1024 x double]* %37, i64 %39
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1024 x double], [1024 x double]* %40, i64 0, i64 %42
  store double %36, double* %43, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sitofp i32 %44 to double
  %46 = load i32, i32* %16, align 4
  %47 = sitofp i32 %46 to double
  %48 = fmul double %45, %47
  %49 = load i32, i32* %8, align 4
  %50 = sitofp i32 %49 to double
  %51 = fdiv double %48, %50
  %52 = load [1024 x double]*, [1024 x double]** %14, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [1024 x double], [1024 x double]* %52, i64 %54
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [1024 x double], [1024 x double]* %55, i64 0, i64 %57
  store double %51, double* %58, align 8
  br label %59

; <label>:59:                                     ; preds = %28
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %16, align 4
  br label %24

; <label>:62:                                     ; preds = %24
  br label %63

; <label>:63:                                     ; preds = %62
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %19

; <label>:66:                                     ; preds = %19
  store i32 0, i32* %15, align 4
  br label %67

; <label>:67:                                     ; preds = %96, %66
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %99

; <label>:71:                                     ; preds = %67
  store i32 0, i32* %16, align 4
  br label %72

; <label>:72:                                     ; preds = %92, %71
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %95

; <label>:76:                                     ; preds = %72
  %77 = load i32, i32* %15, align 4
  %78 = sitofp i32 %77 to double
  %79 = load i32, i32* %16, align 4
  %80 = sitofp i32 %79 to double
  %81 = fmul double %78, %80
  %82 = load i32, i32* %8, align 4
  %83 = sitofp i32 %82 to double
  %84 = fdiv double %81, %83
  %85 = load [1024 x double]*, [1024 x double]** %13, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [1024 x double], [1024 x double]* %85, i64 %87
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [1024 x double], [1024 x double]* %88, i64 0, i64 %90
  store double %84, double* %91, align 8
  br label %92

; <label>:92:                                     ; preds = %76
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  br label %72

; <label>:95:                                     ; preds = %72
  br label %96

; <label>:96:                                     ; preds = %95
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  br label %67

; <label>:99:                                     ; preds = %67
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_symm(i32, i32, double, double, [1024 x double]*, [1024 x double]*, [1024 x double]*) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca [1024 x double]*, align 8
  %13 = alloca [1024 x double]*, align 8
  %14 = alloca [1024 x double]*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store [1024 x double]* %4, [1024 x double]** %12, align 8
  store [1024 x double]* %5, [1024 x double]** %13, align 8
  store [1024 x double]* %6, [1024 x double]** %14, align 8
  call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* @1, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, [1024 x double]**, double*, [1024 x double]**, [1024 x double]**, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %15, i32* %8, i32* %9, [1024 x double]** %12, double* %10, [1024 x double]** %13, [1024 x double]** %14, double* %11)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_array(i32, i32, [1024 x double]*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1024 x double]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store [1024 x double]* %2, [1024 x double]** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

; <label>:9:                                      ; preds = %44, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %47

; <label>:13:                                     ; preds = %9
  store i32 0, i32* %8, align 4
  br label %14

; <label>:14:                                     ; preds = %40, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %43

; <label>:18:                                     ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load [1024 x double]*, [1024 x double]** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1024 x double], [1024 x double]* %20, i64 %22
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [1024 x double], [1024 x double]* %23, i64 0, i64 %25
  %27 = load double, double* %26, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = srem i32 %33, 20
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %18
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %39

; <label>:39:                                     ; preds = %36, %18
  br label %40

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %14

; <label>:43:                                     ; preds = %14
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %9

; <label>:47:                                     ; preds = %9
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias, i32* noalias, i32* dereferenceable(4), i32* dereferenceable(4), i32* dereferenceable(4), [1024 x double]** dereferenceable(8), double* dereferenceable(8), [1024 x double]** dereferenceable(8), [1024 x double]** dereferenceable(8), double* dereferenceable(8)) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [1024 x double]**, align 8
  %17 = alloca double*, align 8
  %18 = alloca [1024 x double]**, align 8
  %19 = alloca [1024 x double]**, align 8
  %20 = alloca double*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca double, align 8
  %32 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store [1024 x double]** %5, [1024 x double]*** %16, align 8
  store double* %6, double** %17, align 8
  store [1024 x double]** %7, [1024 x double]*** %18, align 8
  store [1024 x double]** %8, [1024 x double]*** %19, align 8
  store double* %9, double** %20, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = load [1024 x double]**, [1024 x double]*** %16, align 8
  %37 = load double*, double** %17, align 8
  %38 = load [1024 x double]**, [1024 x double]*** %18, align 8
  %39 = load [1024 x double]**, [1024 x double]*** %19, align 8
  %40 = load double*, double** %20, align 8
  %41 = load i32, i32* %34, align 4
  store i32 %41, i32* %23, align 4
  %42 = load i32, i32* %23, align 4
  %43 = sub nsw i32 %42, 0
  %44 = sub nsw i32 %43, 1
  %45 = add nsw i32 %44, 1
  %46 = sdiv i32 %45, 1
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %48 = load i32, i32* %23, align 4
  %49 = icmp slt i32 0, %48
  br i1 %49, label %50, label %189

; <label>:50:                                     ; preds = %10
  store i32 0, i32* %26, align 4
  %51 = load i32, i32* %24, align 4
  store i32 %51, i32* %27, align 4
  store i32 1, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  call void @__kmpc_for_static_init_4(%ident_t* @0, i32 %53, i32 34, i32* %29, i32* %26, i32* %27, i32* %28, i32 1, i32 1)
  %54 = load i32, i32* %27, align 4
  %55 = load i32, i32* %24, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %50
  %58 = load i32, i32* %24, align 4
  br label %61

; <label>:59:                                     ; preds = %50
  %60 = load i32, i32* %27, align 4
  br label %61

; <label>:61:                                     ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %27, align 4
  %63 = load i32, i32* %26, align 4
  store i32 %63, i32* %21, align 4
  br label %64

; <label>:64:                                     ; preds = %182, %61
  %65 = load i32, i32* %21, align 4
  %66 = load i32, i32* %27, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %185

; <label>:68:                                     ; preds = %64
  %69 = load i32, i32* %21, align 4
  %70 = mul nsw i32 %69, 1
  %71 = add nsw i32 0, %70
  store i32 %71, i32* %25, align 4
  store i32 0, i32* %30, align 4
  br label %72

; <label>:72:                                     ; preds = %177, %68
  %73 = load i32, i32* %30, align 4
  %74 = load i32, i32* %35, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %180

; <label>:76:                                     ; preds = %72
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %77, align 4
  call void @__kmpc_critical(%ident_t* @1, i32 %78, [8 x i32]* @.gomp_critical_user_.var)
  store double 0.000000e+00, double* %31, align 8
  store i32 0, i32* %32, align 4
  br label %79

; <label>:79:                                     ; preds = %132, %76
  %80 = load i32, i32* %32, align 4
  %81 = load i32, i32* %30, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %135

; <label>:84:                                     ; preds = %79
  %85 = load double, double* %37, align 8
  %86 = load [1024 x double]*, [1024 x double]** %38, align 8
  %87 = load i32, i32* %32, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [1024 x double], [1024 x double]* %86, i64 %88
  %90 = load i32, i32* %25, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [1024 x double], [1024 x double]* %89, i64 0, i64 %91
  %93 = load double, double* %92, align 8
  %94 = fmul double %85, %93
  %95 = load [1024 x double]*, [1024 x double]** %39, align 8
  %96 = load i32, i32* %25, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [1024 x double], [1024 x double]* %95, i64 %97
  %99 = load i32, i32* %30, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [1024 x double], [1024 x double]* %98, i64 0, i64 %100
  %102 = load double, double* %101, align 8
  %103 = fmul double %94, %102
  %104 = load [1024 x double]*, [1024 x double]** %36, align 8
  %105 = load i32, i32* %32, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [1024 x double], [1024 x double]* %104, i64 %106
  %108 = load i32, i32* %30, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [1024 x double], [1024 x double]* %107, i64 0, i64 %109
  %111 = load double, double* %110, align 8
  %112 = fadd double %111, %103
  store double %112, double* %110, align 8
  %113 = load [1024 x double]*, [1024 x double]** %39, align 8
  %114 = load i32, i32* %32, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [1024 x double], [1024 x double]* %113, i64 %115
  %117 = load i32, i32* %30, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [1024 x double], [1024 x double]* %116, i64 0, i64 %118
  %120 = load double, double* %119, align 8
  %121 = load [1024 x double]*, [1024 x double]** %38, align 8
  %122 = load i32, i32* %32, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [1024 x double], [1024 x double]* %121, i64 %123
  %125 = load i32, i32* %25, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [1024 x double], [1024 x double]* %124, i64 0, i64 %126
  %128 = load double, double* %127, align 8
  %129 = fmul double %120, %128
  %130 = load double, double* %31, align 8
  %131 = fadd double %130, %129
  store double %131, double* %31, align 8
  br label %132

; <label>:132:                                    ; preds = %84
  %133 = load i32, i32* %32, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %32, align 4
  br label %79

; <label>:135:                                    ; preds = %79
  %136 = load double, double* %40, align 8
  %137 = load [1024 x double]*, [1024 x double]** %36, align 8
  %138 = load i32, i32* %25, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [1024 x double], [1024 x double]* %137, i64 %139
  %141 = load i32, i32* %30, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [1024 x double], [1024 x double]* %140, i64 0, i64 %142
  %144 = load double, double* %143, align 8
  %145 = fmul double %136, %144
  %146 = load double, double* %37, align 8
  %147 = load [1024 x double]*, [1024 x double]** %38, align 8
  %148 = load i32, i32* %25, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [1024 x double], [1024 x double]* %147, i64 %149
  %151 = load i32, i32* %25, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [1024 x double], [1024 x double]* %150, i64 0, i64 %152
  %154 = load double, double* %153, align 8
  %155 = fmul double %146, %154
  %156 = load [1024 x double]*, [1024 x double]** %39, align 8
  %157 = load i32, i32* %25, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [1024 x double], [1024 x double]* %156, i64 %158
  %160 = load i32, i32* %30, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [1024 x double], [1024 x double]* %159, i64 0, i64 %161
  %163 = load double, double* %162, align 8
  %164 = fmul double %155, %163
  %165 = fadd double %145, %164
  %166 = load double, double* %37, align 8
  %167 = load double, double* %31, align 8
  %168 = fmul double %166, %167
  %169 = fadd double %165, %168
  %170 = load [1024 x double]*, [1024 x double]** %36, align 8
  %171 = load i32, i32* %25, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [1024 x double], [1024 x double]* %170, i64 %172
  %174 = load i32, i32* %30, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [1024 x double], [1024 x double]* %173, i64 0, i64 %175
  store double %169, double* %176, align 8
  call void @__kmpc_end_critical(%ident_t* @1, i32 %78, [8 x i32]* @.gomp_critical_user_.var)
  br label %177

; <label>:177:                                    ; preds = %135
  %178 = load i32, i32* %30, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %30, align 4
  br label %72

; <label>:180:                                    ; preds = %72
  br label %181

; <label>:181:                                    ; preds = %180
  br label %182

; <label>:182:                                    ; preds = %181
  %183 = load i32, i32* %21, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %21, align 4
  br label %64

; <label>:185:                                    ; preds = %64
  br label %186

; <label>:186:                                    ; preds = %185
  %187 = load i32*, i32** %11, align 8
  %188 = load i32, i32* %187, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %188)
  br label %189

; <label>:189:                                    ; preds = %186, %10
  %190 = load i32*, i32** %11, align 8
  %191 = load i32, i32* %190, align 4
  call void @__kmpc_barrier(%ident_t* @2, i32 %191)
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
