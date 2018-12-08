; ModuleID = 'cgramschmidt.c'
source_filename = "cgramschmidt.c"
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
  %8 = alloca [512 x [512 x double]]*, align 8
  %9 = alloca [512 x [512 x double]]*, align 8
  %10 = alloca [512 x [512 x double]]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 512, i32* %6, align 4
  store i32 512, i32* %7, align 4
  %11 = call i8* @polybench_alloc_data(i64 262144, i32 8)
  %12 = bitcast i8* %11 to [512 x [512 x double]]*
  store [512 x [512 x double]]* %12, [512 x [512 x double]]** %8, align 8
  %13 = call i8* @polybench_alloc_data(i64 262144, i32 8)
  %14 = bitcast i8* %13 to [512 x [512 x double]]*
  store [512 x [512 x double]]* %14, [512 x [512 x double]]** %9, align 8
  %15 = call i8* @polybench_alloc_data(i64 262144, i32 8)
  %16 = bitcast i8* %15 to [512 x [512 x double]]*
  store [512 x [512 x double]]* %16, [512 x [512 x double]]** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load [512 x [512 x double]]*, [512 x [512 x double]]** %8, align 8
  %20 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %19, i32 0, i32 0
  %21 = load [512 x [512 x double]]*, [512 x [512 x double]]** %9, align 8
  %22 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %21, i32 0, i32 0
  %23 = load [512 x [512 x double]]*, [512 x [512 x double]]** %10, align 8
  %24 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %23, i32 0, i32 0
  call void @init_array(i32 %17, i32 %18, [512 x double]* %20, [512 x double]* %22, [512 x double]* %24)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load [512 x [512 x double]]*, [512 x [512 x double]]** %8, align 8
  %28 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %27, i32 0, i32 0
  %29 = load [512 x [512 x double]]*, [512 x [512 x double]]** %9, align 8
  %30 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %29, i32 0, i32 0
  %31 = load [512 x [512 x double]]*, [512 x [512 x double]]** %10, align 8
  %32 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %31, i32 0, i32 0
  call void @kernel_gramschmidt(i32 %25, i32 %26, [512 x double]* %28, [512 x double]* %30, [512 x double]* %32)
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 42
  br i1 %34, label %35, label %50

; <label>:35:                                     ; preds = %2
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

; <label>:41:                                     ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load [512 x [512 x double]]*, [512 x [512 x double]]** %8, align 8
  %45 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %44, i32 0, i32 0
  %46 = load [512 x [512 x double]]*, [512 x [512 x double]]** %9, align 8
  %47 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %46, i32 0, i32 0
  %48 = load [512 x [512 x double]]*, [512 x [512 x double]]** %10, align 8
  %49 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %48, i32 0, i32 0
  call void @print_array(i32 %42, i32 %43, [512 x double]* %45, [512 x double]* %47, [512 x double]* %49)
  br label %50

; <label>:50:                                     ; preds = %41, %35, %2
  %51 = load [512 x [512 x double]]*, [512 x [512 x double]]** %8, align 8
  %52 = bitcast [512 x [512 x double]]* %51 to i8*
  call void @free(i8* %52) #5
  %53 = load [512 x [512 x double]]*, [512 x [512 x double]]** %9, align 8
  %54 = bitcast [512 x [512 x double]]* %53 to i8*
  call void @free(i8* %54) #5
  %55 = load [512 x [512 x double]]*, [512 x [512 x double]]** %10, align 8
  %56 = bitcast [512 x [512 x double]]* %55 to i8*
  call void @free(i8* %56) #5
  ret i32 0
}

declare i8* @polybench_alloc_data(i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32, i32, [512 x double]*, [512 x double]*, [512 x double]*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [512 x double]*, align 8
  %9 = alloca [512 x double]*, align 8
  %10 = alloca [512 x double]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store [512 x double]* %2, [512 x double]** %8, align 8
  store [512 x double]* %3, [512 x double]** %9, align 8
  store [512 x double]* %4, [512 x double]** %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

; <label>:13:                                     ; preds = %58, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %61

; <label>:17:                                     ; preds = %13
  store i32 0, i32* %12, align 4
  br label %18

; <label>:18:                                     ; preds = %54, %17
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %57

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %11, align 4
  %24 = sitofp i32 %23 to double
  %25 = load i32, i32* %12, align 4
  %26 = sitofp i32 %25 to double
  %27 = fmul double %24, %26
  %28 = load i32, i32* %6, align 4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %27, %29
  %31 = load [512 x double]*, [512 x double]** %8, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [512 x double], [512 x double]* %31, i64 %33
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [512 x double], [512 x double]* %34, i64 0, i64 %36
  store double %30, double* %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sitofp i32 %38 to double
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  %42 = sitofp i32 %41 to double
  %43 = fmul double %39, %42
  %44 = load i32, i32* %7, align 4
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %43, %45
  %47 = load [512 x double]*, [512 x double]** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [512 x double], [512 x double]* %47, i64 %49
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [512 x double], [512 x double]* %50, i64 0, i64 %52
  store double %46, double* %53, align 8
  br label %54

; <label>:54:                                     ; preds = %22
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %18

; <label>:57:                                     ; preds = %18
  br label %58

; <label>:58:                                     ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %13

; <label>:61:                                     ; preds = %13
  store i32 0, i32* %11, align 4
  br label %62

; <label>:62:                                     ; preds = %92, %61
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %95

; <label>:66:                                     ; preds = %62
  store i32 0, i32* %12, align 4
  br label %67

; <label>:67:                                     ; preds = %88, %66
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %91

; <label>:71:                                     ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = sitofp i32 %72 to double
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 2
  %76 = sitofp i32 %75 to double
  %77 = fmul double %73, %76
  %78 = load i32, i32* %7, align 4
  %79 = sitofp i32 %78 to double
  %80 = fdiv double %77, %79
  %81 = load [512 x double]*, [512 x double]** %9, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [512 x double], [512 x double]* %81, i64 %83
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [512 x double], [512 x double]* %84, i64 0, i64 %86
  store double %80, double* %87, align 8
  br label %88

; <label>:88:                                     ; preds = %71
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %67

; <label>:91:                                     ; preds = %67
  br label %92

; <label>:92:                                     ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %62

; <label>:95:                                     ; preds = %62
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_gramschmidt(i32, i32, [512 x double]*, [512 x double]*, [512 x double]*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [512 x double]*, align 8
  %9 = alloca [512 x double]*, align 8
  %10 = alloca [512 x double]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store [512 x double]* %2, [512 x double]** %8, align 8
  store [512 x double]* %3, [512 x double]** %9, align 8
  store [512 x double]* %4, [512 x double]** %10, align 8
  call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* @1, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, double*, i32*, [512 x double]**, [512 x double]**, [512 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %13, i32* %7, double* %14, i32* %6, [512 x double]** %8, [512 x double]** %9, [512 x double]** %10)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_array(i32, i32, [512 x double]*, [512 x double]*, [512 x double]*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [512 x double]*, align 8
  %9 = alloca [512 x double]*, align 8
  %10 = alloca [512 x double]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store [512 x double]* %2, [512 x double]** %8, align 8
  store [512 x double]* %3, [512 x double]** %9, align 8
  store [512 x double]* %4, [512 x double]** %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

; <label>:13:                                     ; preds = %44, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %47

; <label>:17:                                     ; preds = %13
  store i32 0, i32* %12, align 4
  br label %18

; <label>:18:                                     ; preds = %40, %17
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %43

; <label>:22:                                     ; preds = %18
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load [512 x double]*, [512 x double]** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [512 x double], [512 x double]* %24, i64 %26
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [512 x double], [512 x double]* %27, i64 0, i64 %29
  %31 = load double, double* %30, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %31)
  %33 = load i32, i32* %11, align 4
  %34 = srem i32 %33, 20
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %22
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %39

; <label>:39:                                     ; preds = %36, %22
  br label %40

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %18

; <label>:43:                                     ; preds = %18
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %13

; <label>:47:                                     ; preds = %13
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %11, align 4
  br label %50

; <label>:50:                                     ; preds = %81, %47
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %84

; <label>:54:                                     ; preds = %50
  store i32 0, i32* %12, align 4
  br label %55

; <label>:55:                                     ; preds = %77, %54
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %80

; <label>:59:                                     ; preds = %55
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = load [512 x double]*, [512 x double]** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [512 x double], [512 x double]* %61, i64 %63
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [512 x double], [512 x double]* %64, i64 0, i64 %66
  %68 = load double, double* %67, align 8
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %68)
  %70 = load i32, i32* %11, align 4
  %71 = srem i32 %70, 20
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

; <label>:73:                                     ; preds = %59
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %76

; <label>:76:                                     ; preds = %73, %59
  br label %77

; <label>:77:                                     ; preds = %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %55

; <label>:80:                                     ; preds = %55
  br label %81

; <label>:81:                                     ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %50

; <label>:84:                                     ; preds = %50
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %11, align 4
  br label %87

; <label>:87:                                     ; preds = %118, %84
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %121

; <label>:91:                                     ; preds = %87
  store i32 0, i32* %12, align 4
  br label %92

; <label>:92:                                     ; preds = %114, %91
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %117

; <label>:96:                                     ; preds = %92
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %98 = load [512 x double]*, [512 x double]** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [512 x double], [512 x double]* %98, i64 %100
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [512 x double], [512 x double]* %101, i64 0, i64 %103
  %105 = load double, double* %104, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %105)
  %107 = load i32, i32* %11, align 4
  %108 = srem i32 %107, 20
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

; <label>:110:                                    ; preds = %96
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %113

; <label>:113:                                    ; preds = %110, %96
  br label %114

; <label>:114:                                    ; preds = %113
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %92

; <label>:117:                                    ; preds = %92
  br label %118

; <label>:118:                                    ; preds = %117
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %87

; <label>:121:                                    ; preds = %87
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias, i32* noalias, i32* dereferenceable(4), i32* dereferenceable(4), double* dereferenceable(8), i32* dereferenceable(4), [512 x double]** dereferenceable(8), [512 x double]** dereferenceable(8), [512 x double]** dereferenceable(8)) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [512 x double]**, align 8
  %17 = alloca [512 x double]**, align 8
  %18 = alloca [512 x double]**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store double* %4, double** %14, align 8
  store i32* %5, i32** %15, align 8
  store [512 x double]** %6, [512 x double]*** %16, align 8
  store [512 x double]** %7, [512 x double]*** %17, align 8
  store [512 x double]** %8, [512 x double]*** %18, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load double*, double** %14, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load [512 x double]**, [512 x double]*** %16, align 8
  %35 = load [512 x double]**, [512 x double]*** %17, align 8
  %36 = load [512 x double]**, [512 x double]*** %18, align 8
  %37 = load i32, i32* %31, align 4
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %21, align 4
  %39 = sub nsw i32 %38, 0
  %40 = sub nsw i32 %39, 1
  %41 = add nsw i32 %40, 1
  %42 = sdiv i32 %41, 1
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %44 = load i32, i32* %21, align 4
  %45 = icmp slt i32 0, %44
  br i1 %45, label %46, label %243

; <label>:46:                                     ; preds = %9
  store i32 0, i32* %24, align 4
  %47 = load i32, i32* %22, align 4
  store i32 %47, i32* %25, align 4
  store i32 1, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  call void @__kmpc_for_static_init_4(%ident_t* @0, i32 %49, i32 34, i32* %27, i32* %24, i32* %25, i32* %26, i32 1, i32 1)
  %50 = load i32, i32* %25, align 4
  %51 = load i32, i32* %22, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %46
  %54 = load i32, i32* %22, align 4
  br label %57

; <label>:55:                                     ; preds = %46
  %56 = load i32, i32* %25, align 4
  br label %57

; <label>:57:                                     ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %25, align 4
  %59 = load i32, i32* %24, align 4
  store i32 %59, i32* %19, align 4
  br label %60

; <label>:60:                                     ; preds = %236, %57
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %25, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %239

; <label>:64:                                     ; preds = %60
  %65 = load i32, i32* %19, align 4
  %66 = mul nsw i32 %65, 1
  %67 = add nsw i32 0, %66
  store i32 %67, i32* %23, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  call void @__kmpc_critical(%ident_t* @1, i32 %69, [8 x i32]* @.gomp_critical_user_.var)
  store double 0.000000e+00, double* %32, align 8
  store i32 0, i32* %28, align 4
  br label %70

; <label>:70:                                     ; preds = %94, %64
  %71 = load i32, i32* %28, align 4
  %72 = load i32, i32* %33, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %97

; <label>:74:                                     ; preds = %70
  %75 = load [512 x double]*, [512 x double]** %34, align 8
  %76 = load i32, i32* %28, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [512 x double], [512 x double]* %75, i64 %77
  %79 = load i32, i32* %23, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [512 x double], [512 x double]* %78, i64 0, i64 %80
  %82 = load double, double* %81, align 8
  %83 = load [512 x double]*, [512 x double]** %34, align 8
  %84 = load i32, i32* %28, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [512 x double], [512 x double]* %83, i64 %85
  %87 = load i32, i32* %23, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [512 x double], [512 x double]* %86, i64 0, i64 %88
  %90 = load double, double* %89, align 8
  %91 = fmul double %82, %90
  %92 = load double, double* %32, align 8
  %93 = fadd double %92, %91
  store double %93, double* %32, align 8
  br label %94

; <label>:94:                                     ; preds = %74
  %95 = load i32, i32* %28, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %28, align 4
  br label %70

; <label>:97:                                     ; preds = %70
  %98 = load double, double* %32, align 8
  %99 = call double @sqrt(double %98) #5
  %100 = load [512 x double]*, [512 x double]** %35, align 8
  %101 = load i32, i32* %23, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [512 x double], [512 x double]* %100, i64 %102
  %104 = load i32, i32* %23, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [512 x double], [512 x double]* %103, i64 0, i64 %105
  store double %99, double* %106, align 8
  store i32 0, i32* %28, align 4
  br label %107

; <label>:107:                                    ; preds = %136, %97
  %108 = load i32, i32* %28, align 4
  %109 = load i32, i32* %33, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %139

; <label>:111:                                    ; preds = %107
  %112 = load [512 x double]*, [512 x double]** %34, align 8
  %113 = load i32, i32* %28, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [512 x double], [512 x double]* %112, i64 %114
  %116 = load i32, i32* %23, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [512 x double], [512 x double]* %115, i64 0, i64 %117
  %119 = load double, double* %118, align 8
  %120 = load [512 x double]*, [512 x double]** %35, align 8
  %121 = load i32, i32* %23, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [512 x double], [512 x double]* %120, i64 %122
  %124 = load i32, i32* %23, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [512 x double], [512 x double]* %123, i64 0, i64 %125
  %127 = load double, double* %126, align 8
  %128 = fdiv double %119, %127
  %129 = load [512 x double]*, [512 x double]** %36, align 8
  %130 = load i32, i32* %28, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [512 x double], [512 x double]* %129, i64 %131
  %133 = load i32, i32* %23, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [512 x double], [512 x double]* %132, i64 0, i64 %134
  store double %128, double* %135, align 8
  br label %136

; <label>:136:                                    ; preds = %111
  %137 = load i32, i32* %28, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %28, align 4
  br label %107

; <label>:139:                                    ; preds = %107
  %140 = load i32, i32* %23, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %29, align 4
  br label %142

; <label>:142:                                    ; preds = %231, %139
  %143 = load i32, i32* %29, align 4
  %144 = load i32, i32* %31, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %234

; <label>:146:                                    ; preds = %142
  %147 = load [512 x double]*, [512 x double]** %35, align 8
  %148 = load i32, i32* %23, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [512 x double], [512 x double]* %147, i64 %149
  %151 = load i32, i32* %29, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [512 x double], [512 x double]* %150, i64 0, i64 %152
  store double 0.000000e+00, double* %153, align 8
  store i32 0, i32* %28, align 4
  br label %154

; <label>:154:                                    ; preds = %185, %146
  %155 = load i32, i32* %28, align 4
  %156 = load i32, i32* %33, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %188

; <label>:158:                                    ; preds = %154
  %159 = load [512 x double]*, [512 x double]** %36, align 8
  %160 = load i32, i32* %28, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [512 x double], [512 x double]* %159, i64 %161
  %163 = load i32, i32* %23, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [512 x double], [512 x double]* %162, i64 0, i64 %164
  %166 = load double, double* %165, align 8
  %167 = load [512 x double]*, [512 x double]** %34, align 8
  %168 = load i32, i32* %28, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [512 x double], [512 x double]* %167, i64 %169
  %171 = load i32, i32* %29, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [512 x double], [512 x double]* %170, i64 0, i64 %172
  %174 = load double, double* %173, align 8
  %175 = fmul double %166, %174
  %176 = load [512 x double]*, [512 x double]** %35, align 8
  %177 = load i32, i32* %23, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [512 x double], [512 x double]* %176, i64 %178
  %180 = load i32, i32* %29, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [512 x double], [512 x double]* %179, i64 0, i64 %181
  %183 = load double, double* %182, align 8
  %184 = fadd double %183, %175
  store double %184, double* %182, align 8
  br label %185

; <label>:185:                                    ; preds = %158
  %186 = load i32, i32* %28, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %28, align 4
  br label %154

; <label>:188:                                    ; preds = %154
  store i32 0, i32* %28, align 4
  br label %189

; <label>:189:                                    ; preds = %227, %188
  %190 = load i32, i32* %28, align 4
  %191 = load i32, i32* %33, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %230

; <label>:193:                                    ; preds = %189
  %194 = load [512 x double]*, [512 x double]** %34, align 8
  %195 = load i32, i32* %28, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [512 x double], [512 x double]* %194, i64 %196
  %198 = load i32, i32* %29, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [512 x double], [512 x double]* %197, i64 0, i64 %199
  %201 = load double, double* %200, align 8
  %202 = load [512 x double]*, [512 x double]** %36, align 8
  %203 = load i32, i32* %28, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [512 x double], [512 x double]* %202, i64 %204
  %206 = load i32, i32* %23, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [512 x double], [512 x double]* %205, i64 0, i64 %207
  %209 = load double, double* %208, align 8
  %210 = load [512 x double]*, [512 x double]** %35, align 8
  %211 = load i32, i32* %23, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [512 x double], [512 x double]* %210, i64 %212
  %214 = load i32, i32* %29, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [512 x double], [512 x double]* %213, i64 0, i64 %215
  %217 = load double, double* %216, align 8
  %218 = fmul double %209, %217
  %219 = fsub double %201, %218
  %220 = load [512 x double]*, [512 x double]** %34, align 8
  %221 = load i32, i32* %28, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [512 x double], [512 x double]* %220, i64 %222
  %224 = load i32, i32* %29, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [512 x double], [512 x double]* %223, i64 0, i64 %225
  store double %219, double* %226, align 8
  br label %227

; <label>:227:                                    ; preds = %193
  %228 = load i32, i32* %28, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %28, align 4
  br label %189

; <label>:230:                                    ; preds = %189
  br label %231

; <label>:231:                                    ; preds = %230
  %232 = load i32, i32* %29, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %29, align 4
  br label %142

; <label>:234:                                    ; preds = %142
  call void @__kmpc_end_critical(%ident_t* @1, i32 %69, [8 x i32]* @.gomp_critical_user_.var)
  br label %235

; <label>:235:                                    ; preds = %234
  br label %236

; <label>:236:                                    ; preds = %235
  %237 = load i32, i32* %19, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %19, align 4
  br label %60

; <label>:239:                                    ; preds = %60
  br label %240

; <label>:240:                                    ; preds = %239
  %241 = load i32*, i32** %10, align 8
  %242 = load i32, i32* %241, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %242)
  br label %243

; <label>:243:                                    ; preds = %240, %9
  ret void
}

declare void @__kmpc_for_static_init_4(%ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare void @__kmpc_end_critical(%ident_t*, i32, [8 x i32]*)

declare void @__kmpc_critical(%ident_t*, i32, [8 x i32]*)

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare void @__kmpc_for_static_fini(%ident_t*, i32)

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
