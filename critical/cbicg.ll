; ModuleID = 'cbicg.c'
source_filename = "cbicg.c"
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
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
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
  %8 = alloca [4000 x [4000 x double]]*, align 8
  %9 = alloca [4000 x double]*, align 8
  %10 = alloca [4000 x double]*, align 8
  %11 = alloca [4000 x double]*, align 8
  %12 = alloca [4000 x double]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 4000, i32* %6, align 4
  store i32 4000, i32* %7, align 4
  %13 = call i8* @polybench_alloc_data(i64 16000000, i32 8)
  %14 = bitcast i8* %13 to [4000 x [4000 x double]]*
  store [4000 x [4000 x double]]* %14, [4000 x [4000 x double]]** %8, align 8
  %15 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %16 = bitcast i8* %15 to [4000 x double]*
  store [4000 x double]* %16, [4000 x double]** %9, align 8
  %17 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %18 = bitcast i8* %17 to [4000 x double]*
  store [4000 x double]* %18, [4000 x double]** %10, align 8
  %19 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %20 = bitcast i8* %19 to [4000 x double]*
  store [4000 x double]* %20, [4000 x double]** %11, align 8
  %21 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %22 = bitcast i8* %21 to [4000 x double]*
  store [4000 x double]* %22, [4000 x double]** %12, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %8, align 8
  %26 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %25, i32 0, i32 0
  %27 = load [4000 x double]*, [4000 x double]** %12, align 8
  %28 = getelementptr inbounds [4000 x double], [4000 x double]* %27, i32 0, i32 0
  %29 = load [4000 x double]*, [4000 x double]** %11, align 8
  %30 = getelementptr inbounds [4000 x double], [4000 x double]* %29, i32 0, i32 0
  call void @init_array(i32 %23, i32 %24, [4000 x double]* %26, double* %28, double* %30)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %8, align 8
  %34 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %33, i32 0, i32 0
  %35 = load [4000 x double]*, [4000 x double]** %9, align 8
  %36 = getelementptr inbounds [4000 x double], [4000 x double]* %35, i32 0, i32 0
  %37 = load [4000 x double]*, [4000 x double]** %10, align 8
  %38 = getelementptr inbounds [4000 x double], [4000 x double]* %37, i32 0, i32 0
  %39 = load [4000 x double]*, [4000 x double]** %11, align 8
  %40 = getelementptr inbounds [4000 x double], [4000 x double]* %39, i32 0, i32 0
  %41 = load [4000 x double]*, [4000 x double]** %12, align 8
  %42 = getelementptr inbounds [4000 x double], [4000 x double]* %41, i32 0, i32 0
  call void @kernel_bicg(i32 %31, i32 %32, [4000 x double]* %34, double* %36, double* %38, double* %40, double* %42)
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %43, 42
  br i1 %44, label %45, label %58

; <label>:45:                                     ; preds = %2
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

; <label>:51:                                     ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load [4000 x double]*, [4000 x double]** %9, align 8
  %55 = getelementptr inbounds [4000 x double], [4000 x double]* %54, i32 0, i32 0
  %56 = load [4000 x double]*, [4000 x double]** %10, align 8
  %57 = getelementptr inbounds [4000 x double], [4000 x double]* %56, i32 0, i32 0
  call void @print_array(i32 %52, i32 %53, double* %55, double* %57)
  br label %58

; <label>:58:                                     ; preds = %51, %45, %2
  %59 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %8, align 8
  %60 = bitcast [4000 x [4000 x double]]* %59 to i8*
  call void @free(i8* %60) #5
  %61 = load [4000 x double]*, [4000 x double]** %9, align 8
  %62 = bitcast [4000 x double]* %61 to i8*
  call void @free(i8* %62) #5
  %63 = load [4000 x double]*, [4000 x double]** %10, align 8
  %64 = bitcast [4000 x double]* %63 to i8*
  call void @free(i8* %64) #5
  %65 = load [4000 x double]*, [4000 x double]** %11, align 8
  %66 = bitcast [4000 x double]* %65 to i8*
  call void @free(i8* %66) #5
  %67 = load [4000 x double]*, [4000 x double]** %12, align 8
  %68 = bitcast [4000 x double]* %67 to i8*
  call void @free(i8* %68) #5
  ret i32 0
}

declare i8* @polybench_alloc_data(i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32, i32, [4000 x double]*, double*, double*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4000 x double]*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store [4000 x double]* %2, [4000 x double]** %8, align 8
  store double* %3, double** %9, align 8
  store double* %4, double** %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

; <label>:13:                                     ; preds = %25, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %28

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %11, align 4
  %19 = sitofp i32 %18 to double
  %20 = fmul double %19, 0x400921FB54442D18
  %21 = load double*, double** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  store double %20, double* %24, align 8
  br label %25

; <label>:25:                                     ; preds = %17
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  br label %13

; <label>:28:                                     ; preds = %13
  store i32 0, i32* %11, align 4
  br label %29

; <label>:29:                                     ; preds = %66, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %69

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = sitofp i32 %34 to double
  %36 = fmul double %35, 0x400921FB54442D18
  %37 = load double*, double** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %37, i64 %39
  store double %36, double* %40, align 8
  store i32 0, i32* %12, align 4
  br label %41

; <label>:41:                                     ; preds = %62, %33
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %65

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = sitofp i32 %46 to double
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  %50 = sitofp i32 %49 to double
  %51 = fmul double %47, %50
  %52 = load i32, i32* %6, align 4
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %51, %53
  %55 = load [4000 x double]*, [4000 x double]** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4000 x double], [4000 x double]* %55, i64 %57
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4000 x double], [4000 x double]* %58, i64 0, i64 %60
  store double %54, double* %61, align 8
  br label %62

; <label>:62:                                     ; preds = %45
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %41

; <label>:65:                                     ; preds = %41
  br label %66

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %29

; <label>:69:                                     ; preds = %29
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_bicg(i32, i32, [4000 x double]*, double*, double*, double*, double*) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4000 x double]*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store [4000 x double]* %2, [4000 x double]** %10, align 8
  store double* %3, double** %11, align 8
  store double* %4, double** %12, align 8
  store double* %5, double** %13, align 8
  store double* %6, double** %14, align 8
  call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* @2, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, double**, i32*, double**, double**, [4000 x double]**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %15, i32* %9, double** %11, i32* %8, double** %12, double** %14, [4000 x double]** %10, double** %13)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_array(i32, i32, double*, double*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %29, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %32

; <label>:14:                                     ; preds = %10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load double*, double** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, double* %16, i64 %18
  %20 = load double, double* %19, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %20)
  %22 = load i32, i32* %9, align 4
  %23 = srem i32 %22, 20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %14
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %28

; <label>:28:                                     ; preds = %25, %14
  br label %29

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %10

; <label>:32:                                     ; preds = %10
  store i32 0, i32* %9, align 4
  br label %33

; <label>:33:                                     ; preds = %52, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %55

; <label>:37:                                     ; preds = %33
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = load double*, double** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  %43 = load double, double* %42, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %43)
  %45 = load i32, i32* %9, align 4
  %46 = srem i32 %45, 20
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %37
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %51

; <label>:51:                                     ; preds = %48, %37
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %33

; <label>:55:                                     ; preds = %33
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias, i32* noalias, i32* dereferenceable(4), i32* dereferenceable(4), double** dereferenceable(8), i32* dereferenceable(4), double** dereferenceable(8), double** dereferenceable(8), [4000 x double]** dereferenceable(8), double** dereferenceable(8)) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca double**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca double**, align 8
  %18 = alloca double**, align 8
  %19 = alloca [4000 x double]**, align 8
  %20 = alloca double**, align 8
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
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store double** %4, double*** %15, align 8
  store i32* %5, i32** %16, align 8
  store double** %6, double*** %17, align 8
  store double** %7, double*** %18, align 8
  store [4000 x double]** %8, [4000 x double]*** %19, align 8
  store double** %9, double*** %20, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load double**, double*** %15, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = load double**, double*** %17, align 8
  %45 = load double**, double*** %18, align 8
  %46 = load [4000 x double]**, [4000 x double]*** %19, align 8
  %47 = load double**, double*** %20, align 8
  %48 = load i32, i32* %41, align 4
  store i32 %48, i32* %23, align 4
  %49 = load i32, i32* %23, align 4
  %50 = sub nsw i32 %49, 0
  %51 = sub nsw i32 %50, 1
  %52 = add nsw i32 %51, 1
  %53 = sdiv i32 %52, 1
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %55 = load i32, i32* %23, align 4
  %56 = icmp slt i32 0, %55
  br i1 %56, label %57, label %91

; <label>:57:                                     ; preds = %10
  store i32 0, i32* %26, align 4
  %58 = load i32, i32* %24, align 4
  store i32 %58, i32* %27, align 4
  store i32 1, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  call void @__kmpc_for_static_init_4(%ident_t* @0, i32 %60, i32 34, i32* %29, i32* %26, i32* %27, i32* %28, i32 1, i32 1)
  %61 = load i32, i32* %27, align 4
  %62 = load i32, i32* %24, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %57
  %65 = load i32, i32* %24, align 4
  br label %68

; <label>:66:                                     ; preds = %57
  %67 = load i32, i32* %27, align 4
  br label %68

; <label>:68:                                     ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %27, align 4
  %70 = load i32, i32* %26, align 4
  store i32 %70, i32* %21, align 4
  br label %71

; <label>:71:                                     ; preds = %84, %68
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %27, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %87

; <label>:75:                                     ; preds = %71
  %76 = load i32, i32* %21, align 4
  %77 = mul nsw i32 %76, 1
  %78 = add nsw i32 0, %77
  store i32 %78, i32* %25, align 4
  %79 = load double*, double** %42, align 8
  %80 = load i32, i32* %25, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %79, i64 %81
  store double 0.000000e+00, double* %82, align 8
  br label %83

; <label>:83:                                     ; preds = %75
  br label %84

; <label>:84:                                     ; preds = %83
  %85 = load i32, i32* %21, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %21, align 4
  br label %71

; <label>:87:                                     ; preds = %71
  br label %88

; <label>:88:                                     ; preds = %87
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %89, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %90)
  br label %91

; <label>:91:                                     ; preds = %88, %10
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %92, align 4
  call void @__kmpc_barrier(%ident_t* @1, i32 %93)
  %94 = load i32, i32* %43, align 4
  store i32 %94, i32* %32, align 4
  %95 = load i32, i32* %32, align 4
  %96 = sub nsw i32 %95, 0
  %97 = sub nsw i32 %96, 1
  %98 = add nsw i32 %97, 1
  %99 = sdiv i32 %98, 1
  %100 = sub nsw i32 %99, 1
  store i32 %100, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %101 = load i32, i32* %32, align 4
  %102 = icmp slt i32 0, %101
  br i1 %102, label %103, label %196

; <label>:103:                                    ; preds = %91
  store i32 0, i32* %35, align 4
  %104 = load i32, i32* %33, align 4
  store i32 %104, i32* %36, align 4
  store i32 1, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %105, align 4
  call void @__kmpc_for_static_init_4(%ident_t* @0, i32 %106, i32 34, i32* %38, i32* %35, i32* %36, i32* %37, i32 1, i32 1)
  %107 = load i32, i32* %36, align 4
  %108 = load i32, i32* %33, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %112

; <label>:110:                                    ; preds = %103
  %111 = load i32, i32* %33, align 4
  br label %114

; <label>:112:                                    ; preds = %103
  %113 = load i32, i32* %36, align 4
  br label %114

; <label>:114:                                    ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  store i32 %115, i32* %36, align 4
  %116 = load i32, i32* %35, align 4
  store i32 %116, i32* %30, align 4
  br label %117

; <label>:117:                                    ; preds = %189, %114
  %118 = load i32, i32* %30, align 4
  %119 = load i32, i32* %36, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %192

; <label>:121:                                    ; preds = %117
  %122 = load i32, i32* %30, align 4
  %123 = mul nsw i32 %122, 1
  %124 = add nsw i32 0, %123
  store i32 %124, i32* %34, align 4
  %125 = load double*, double** %44, align 8
  %126 = load i32, i32* %34, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds double, double* %125, i64 %127
  store double 0.000000e+00, double* %128, align 8
  store i32 0, i32* %39, align 4
  br label %129

; <label>:129:                                    ; preds = %184, %121
  %130 = load i32, i32* %39, align 4
  %131 = load i32, i32* %41, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %187

; <label>:133:                                    ; preds = %129
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %134, align 4
  call void @__kmpc_critical(%ident_t* @2, i32 %135, [8 x i32]* @.gomp_critical_user_.var)
  %136 = load double*, double** %42, align 8
  %137 = load i32, i32* %39, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, double* %136, i64 %138
  %140 = load double, double* %139, align 8
  %141 = load double*, double** %45, align 8
  %142 = load i32, i32* %34, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %141, i64 %143
  %145 = load double, double* %144, align 8
  %146 = load [4000 x double]*, [4000 x double]** %46, align 8
  %147 = load i32, i32* %34, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [4000 x double], [4000 x double]* %146, i64 %148
  %150 = load i32, i32* %39, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [4000 x double], [4000 x double]* %149, i64 0, i64 %151
  %153 = load double, double* %152, align 8
  %154 = fmul double %145, %153
  %155 = fadd double %140, %154
  %156 = load double*, double** %42, align 8
  %157 = load i32, i32* %39, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, double* %156, i64 %158
  store double %155, double* %159, align 8
  call void @__kmpc_end_critical(%ident_t* @2, i32 %135, [8 x i32]* @.gomp_critical_user_.var)
  %160 = load double*, double** %44, align 8
  %161 = load i32, i32* %34, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds double, double* %160, i64 %162
  %164 = load double, double* %163, align 8
  %165 = load [4000 x double]*, [4000 x double]** %46, align 8
  %166 = load i32, i32* %34, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4000 x double], [4000 x double]* %165, i64 %167
  %169 = load i32, i32* %39, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [4000 x double], [4000 x double]* %168, i64 0, i64 %170
  %172 = load double, double* %171, align 8
  %173 = load double*, double** %47, align 8
  %174 = load i32, i32* %39, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double, double* %173, i64 %175
  %177 = load double, double* %176, align 8
  %178 = fmul double %172, %177
  %179 = fadd double %164, %178
  %180 = load double*, double** %44, align 8
  %181 = load i32, i32* %34, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds double, double* %180, i64 %182
  store double %179, double* %183, align 8
  br label %184

; <label>:184:                                    ; preds = %133
  %185 = load i32, i32* %39, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %39, align 4
  br label %129

; <label>:187:                                    ; preds = %129
  br label %188

; <label>:188:                                    ; preds = %187
  br label %189

; <label>:189:                                    ; preds = %188
  %190 = load i32, i32* %30, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %30, align 4
  br label %117

; <label>:192:                                    ; preds = %117
  br label %193

; <label>:193:                                    ; preds = %192
  %194 = load i32*, i32** %11, align 8
  %195 = load i32, i32* %194, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %195)
  br label %196

; <label>:196:                                    ; preds = %193, %91
  %197 = load i32*, i32** %11, align 8
  %198 = load i32, i32* %197, align 4
  call void @__kmpc_barrier(%ident_t* @1, i32 %198)
  ret void
}

declare void @__kmpc_for_static_init_4(%ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare void @__kmpc_for_static_fini(%ident_t*, i32)

declare void @__kmpc_barrier(%ident_t*, i32)

declare void @__kmpc_end_critical(%ident_t*, i32, [8 x i32]*)

declare void @__kmpc_critical(%ident_t*, i32, [8 x i32]*)

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
