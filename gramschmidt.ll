; ModuleID = 'gramschmidt.c'
source_filename = "gramschmidt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant %ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0) }, align 8
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
  br i1 %45, label %46, label %241

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

; <label>:60:                                     ; preds = %234, %57
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %25, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %237

; <label>:64:                                     ; preds = %60
  %65 = load i32, i32* %19, align 4
  %66 = mul nsw i32 %65, 1
  %67 = add nsw i32 0, %66
  store i32 %67, i32* %23, align 4
  store double 0.000000e+00, double* %32, align 8
  store i32 0, i32* %28, align 4
  br label %68

; <label>:68:                                     ; preds = %92, %64
  %69 = load i32, i32* %28, align 4
  %70 = load i32, i32* %33, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %95

; <label>:72:                                     ; preds = %68
  %73 = load [512 x double]*, [512 x double]** %34, align 8
  %74 = load i32, i32* %28, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [512 x double], [512 x double]* %73, i64 %75
  %77 = load i32, i32* %23, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [512 x double], [512 x double]* %76, i64 0, i64 %78
  %80 = load double, double* %79, align 8
  %81 = load [512 x double]*, [512 x double]** %34, align 8
  %82 = load i32, i32* %28, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [512 x double], [512 x double]* %81, i64 %83
  %85 = load i32, i32* %23, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [512 x double], [512 x double]* %84, i64 0, i64 %86
  %88 = load double, double* %87, align 8
  %89 = fmul double %80, %88
  %90 = load double, double* %32, align 8
  %91 = fadd double %90, %89
  store double %91, double* %32, align 8
  br label %92

; <label>:92:                                     ; preds = %72
  %93 = load i32, i32* %28, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %28, align 4
  br label %68

; <label>:95:                                     ; preds = %68
  %96 = load double, double* %32, align 8
  %97 = call double @sqrt(double %96) #5
  %98 = load [512 x double]*, [512 x double]** %35, align 8
  %99 = load i32, i32* %23, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [512 x double], [512 x double]* %98, i64 %100
  %102 = load i32, i32* %23, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [512 x double], [512 x double]* %101, i64 0, i64 %103
  store double %97, double* %104, align 8
  store i32 0, i32* %28, align 4
  br label %105

; <label>:105:                                    ; preds = %134, %95
  %106 = load i32, i32* %28, align 4
  %107 = load i32, i32* %33, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %137

; <label>:109:                                    ; preds = %105
  %110 = load [512 x double]*, [512 x double]** %34, align 8
  %111 = load i32, i32* %28, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [512 x double], [512 x double]* %110, i64 %112
  %114 = load i32, i32* %23, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [512 x double], [512 x double]* %113, i64 0, i64 %115
  %117 = load double, double* %116, align 8
  %118 = load [512 x double]*, [512 x double]** %35, align 8
  %119 = load i32, i32* %23, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [512 x double], [512 x double]* %118, i64 %120
  %122 = load i32, i32* %23, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [512 x double], [512 x double]* %121, i64 0, i64 %123
  %125 = load double, double* %124, align 8
  %126 = fdiv double %117, %125
  %127 = load [512 x double]*, [512 x double]** %36, align 8
  %128 = load i32, i32* %28, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [512 x double], [512 x double]* %127, i64 %129
  %131 = load i32, i32* %23, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [512 x double], [512 x double]* %130, i64 0, i64 %132
  store double %126, double* %133, align 8
  br label %134

; <label>:134:                                    ; preds = %109
  %135 = load i32, i32* %28, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %28, align 4
  br label %105

; <label>:137:                                    ; preds = %105
  %138 = load i32, i32* %23, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %29, align 4
  br label %140

; <label>:140:                                    ; preds = %229, %137
  %141 = load i32, i32* %29, align 4
  %142 = load i32, i32* %31, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %232

; <label>:144:                                    ; preds = %140
  %145 = load [512 x double]*, [512 x double]** %35, align 8
  %146 = load i32, i32* %23, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [512 x double], [512 x double]* %145, i64 %147
  %149 = load i32, i32* %29, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [512 x double], [512 x double]* %148, i64 0, i64 %150
  store double 0.000000e+00, double* %151, align 8
  store i32 0, i32* %28, align 4
  br label %152

; <label>:152:                                    ; preds = %183, %144
  %153 = load i32, i32* %28, align 4
  %154 = load i32, i32* %33, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %186

; <label>:156:                                    ; preds = %152
  %157 = load [512 x double]*, [512 x double]** %36, align 8
  %158 = load i32, i32* %28, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [512 x double], [512 x double]* %157, i64 %159
  %161 = load i32, i32* %23, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [512 x double], [512 x double]* %160, i64 0, i64 %162
  %164 = load double, double* %163, align 8
  %165 = load [512 x double]*, [512 x double]** %34, align 8
  %166 = load i32, i32* %28, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [512 x double], [512 x double]* %165, i64 %167
  %169 = load i32, i32* %29, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [512 x double], [512 x double]* %168, i64 0, i64 %170
  %172 = load double, double* %171, align 8
  %173 = fmul double %164, %172
  %174 = load [512 x double]*, [512 x double]** %35, align 8
  %175 = load i32, i32* %23, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [512 x double], [512 x double]* %174, i64 %176
  %178 = load i32, i32* %29, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [512 x double], [512 x double]* %177, i64 0, i64 %179
  %181 = load double, double* %180, align 8
  %182 = fadd double %181, %173
  store double %182, double* %180, align 8
  br label %183

; <label>:183:                                    ; preds = %156
  %184 = load i32, i32* %28, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %28, align 4
  br label %152

; <label>:186:                                    ; preds = %152
  store i32 0, i32* %28, align 4
  br label %187

; <label>:187:                                    ; preds = %225, %186
  %188 = load i32, i32* %28, align 4
  %189 = load i32, i32* %33, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %228

; <label>:191:                                    ; preds = %187
  %192 = load [512 x double]*, [512 x double]** %34, align 8
  %193 = load i32, i32* %28, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [512 x double], [512 x double]* %192, i64 %194
  %196 = load i32, i32* %29, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [512 x double], [512 x double]* %195, i64 0, i64 %197
  %199 = load double, double* %198, align 8
  %200 = load [512 x double]*, [512 x double]** %36, align 8
  %201 = load i32, i32* %28, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [512 x double], [512 x double]* %200, i64 %202
  %204 = load i32, i32* %23, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [512 x double], [512 x double]* %203, i64 0, i64 %205
  %207 = load double, double* %206, align 8
  %208 = load [512 x double]*, [512 x double]** %35, align 8
  %209 = load i32, i32* %23, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [512 x double], [512 x double]* %208, i64 %210
  %212 = load i32, i32* %29, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [512 x double], [512 x double]* %211, i64 0, i64 %213
  %215 = load double, double* %214, align 8
  %216 = fmul double %207, %215
  %217 = fsub double %199, %216
  %218 = load [512 x double]*, [512 x double]** %34, align 8
  %219 = load i32, i32* %28, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [512 x double], [512 x double]* %218, i64 %220
  %222 = load i32, i32* %29, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [512 x double], [512 x double]* %221, i64 0, i64 %223
  store double %217, double* %224, align 8
  br label %225

; <label>:225:                                    ; preds = %191
  %226 = load i32, i32* %28, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %28, align 4
  br label %187

; <label>:228:                                    ; preds = %187
  br label %229

; <label>:229:                                    ; preds = %228
  %230 = load i32, i32* %29, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %29, align 4
  br label %140

; <label>:232:                                    ; preds = %140
  br label %233

; <label>:233:                                    ; preds = %232
  br label %234

; <label>:234:                                    ; preds = %233
  %235 = load i32, i32* %19, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %19, align 4
  br label %60

; <label>:237:                                    ; preds = %60
  br label %238

; <label>:238:                                    ; preds = %237
  %239 = load i32*, i32** %10, align 8
  %240 = load i32, i32* %239, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %240)
  br label %241

; <label>:241:                                    ; preds = %238, %9
  ret void
}

declare void @__kmpc_for_static_init_4(%ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

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
