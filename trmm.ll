; ModuleID = 'trmm.c'
source_filename = "trmm.c"
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
  %7 = alloca double, align 8
  %8 = alloca [1024 x [1024 x double]]*, align 8
  %9 = alloca [1024 x [1024 x double]]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1024, i32* %6, align 4
  %10 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %11 = bitcast i8* %10 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %11, [1024 x [1024 x double]]** %8, align 8
  %12 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %13 = bitcast i8* %12 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %13, [1024 x [1024 x double]]** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %8, align 8
  %16 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %15, i32 0, i32 0
  %17 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %9, align 8
  %18 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %17, i32 0, i32 0
  call void @init_array(i32 %14, double* %7, [1024 x double]* %16, [1024 x double]* %18)
  %19 = load i32, i32* %6, align 4
  %20 = load double, double* %7, align 8
  %21 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %8, align 8
  %22 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %21, i32 0, i32 0
  %23 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %9, align 8
  %24 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %23, i32 0, i32 0
  call void @kernel_trmm(i32 %19, double %20, [1024 x double]* %22, [1024 x double]* %24)
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 42
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %9, align 8
  %36 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %35, i32 0, i32 0
  call void @print_array(i32 %34, [1024 x double]* %36)
  br label %37

; <label>:37:                                     ; preds = %33, %27, %2
  %38 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %8, align 8
  %39 = bitcast [1024 x [1024 x double]]* %38 to i8*
  call void @free(i8* %39) #5
  %40 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %9, align 8
  %41 = bitcast [1024 x [1024 x double]]* %40 to i8*
  call void @free(i8* %41) #5
  ret i32 0
}

declare i8* @polybench_alloc_data(i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32, double*, [1024 x double]*, [1024 x double]*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca [1024 x double]*, align 8
  %8 = alloca [1024 x double]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store [1024 x double]* %2, [1024 x double]** %7, align 8
  store [1024 x double]* %3, [1024 x double]** %8, align 8
  %11 = load double*, double** %6, align 8
  store double 3.241200e+04, double* %11, align 8
  store i32 0, i32* %9, align 4
  br label %12

; <label>:12:                                     ; preds = %56, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %59

; <label>:16:                                     ; preds = %12
  store i32 0, i32* %10, align 4
  br label %17

; <label>:17:                                     ; preds = %52, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %55

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = sitofp i32 %22 to double
  %24 = load i32, i32* %10, align 4
  %25 = sitofp i32 %24 to double
  %26 = fmul double %23, %25
  %27 = load i32, i32* %5, align 4
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %26, %28
  %30 = load [1024 x double]*, [1024 x double]** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [1024 x double], [1024 x double]* %30, i64 %32
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1024 x double], [1024 x double]* %33, i64 0, i64 %35
  store double %29, double* %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sitofp i32 %37 to double
  %39 = load i32, i32* %10, align 4
  %40 = sitofp i32 %39 to double
  %41 = fmul double %38, %40
  %42 = load i32, i32* %5, align 4
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %41, %43
  %45 = load [1024 x double]*, [1024 x double]** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [1024 x double], [1024 x double]* %45, i64 %47
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1024 x double], [1024 x double]* %48, i64 0, i64 %50
  store double %44, double* %51, align 8
  br label %52

; <label>:52:                                     ; preds = %21
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %17

; <label>:55:                                     ; preds = %17
  br label %56

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %12

; <label>:59:                                     ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_trmm(i32, double, [1024 x double]*, [1024 x double]*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca [1024 x double]*, align 8
  %8 = alloca [1024 x double]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store double %1, double* %6, align 8
  store [1024 x double]* %2, [1024 x double]** %7, align 8
  store [1024 x double]* %3, [1024 x double]** %8, align 8
  call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [1024 x double]**, double*, [1024 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %9, i32* %5, [1024 x double]** %8, double* %6, [1024 x double]** %7)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_array(i32, [1024 x double]*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [1024 x double]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store [1024 x double]* %1, [1024 x double]** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %42, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %45

; <label>:11:                                     ; preds = %7
  store i32 0, i32* %6, align 4
  br label %12

; <label>:12:                                     ; preds = %38, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %41

; <label>:16:                                     ; preds = %12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load [1024 x double]*, [1024 x double]** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1024 x double], [1024 x double]* %18, i64 %20
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1024 x double], [1024 x double]* %21, i64 0, i64 %23
  %25 = load double, double* %24, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), double %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  %32 = srem i32 %31, 20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %16
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %37

; <label>:37:                                     ; preds = %34, %16
  br label %38

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %12

; <label>:41:                                     ; preds = %12
  br label %42

; <label>:42:                                     ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %7

; <label>:45:                                     ; preds = %7
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias, i32* noalias, i32* dereferenceable(4), i32* dereferenceable(4), [1024 x double]** dereferenceable(8), double* dereferenceable(8), [1024 x double]** dereferenceable(8)) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [1024 x double]**, align 8
  %13 = alloca double*, align 8
  %14 = alloca [1024 x double]**, align 8
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
  %25 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store [1024 x double]** %4, [1024 x double]*** %12, align 8
  store double* %5, double** %13, align 8
  store [1024 x double]** %6, [1024 x double]*** %14, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load [1024 x double]**, [1024 x double]*** %12, align 8
  %29 = load double*, double** %13, align 8
  %30 = load [1024 x double]**, [1024 x double]*** %14, align 8
  %31 = load i32, i32* %27, align 4
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sub nsw i32 %33, 1
  %35 = add nsw i32 %34, 1
  %36 = sdiv i32 %35, 1
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp slt i32 1, %38
  br i1 %39, label %40, label %116

; <label>:40:                                     ; preds = %7
  store i32 0, i32* %20, align 4
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  call void @__kmpc_for_static_init_4(%ident_t* @0, i32 %43, i32 34, i32* %23, i32* %20, i32* %21, i32* %22, i32 1, i32 1)
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %18, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %40
  %48 = load i32, i32* %18, align 4
  br label %51

; <label>:49:                                     ; preds = %40
  %50 = load i32, i32* %21, align 4
  br label %51

; <label>:51:                                     ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %20, align 4
  store i32 %53, i32* %15, align 4
  br label %54

; <label>:54:                                     ; preds = %109, %51
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %112

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %15, align 4
  %60 = mul nsw i32 %59, 1
  %61 = add nsw i32 1, %60
  store i32 %61, i32* %19, align 4
  store i32 0, i32* %24, align 4
  br label %62

; <label>:62:                                     ; preds = %104, %58
  %63 = load i32, i32* %24, align 4
  %64 = load i32, i32* %27, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %107

; <label>:66:                                     ; preds = %62
  store i32 0, i32* %25, align 4
  br label %67

; <label>:67:                                     ; preds = %100, %66
  %68 = load i32, i32* %25, align 4
  %69 = load i32, i32* %19, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %103

; <label>:71:                                     ; preds = %67
  %72 = load double, double* %29, align 8
  %73 = load [1024 x double]*, [1024 x double]** %30, align 8
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [1024 x double], [1024 x double]* %73, i64 %75
  %77 = load i32, i32* %25, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [1024 x double], [1024 x double]* %76, i64 0, i64 %78
  %80 = load double, double* %79, align 8
  %81 = fmul double %72, %80
  %82 = load [1024 x double]*, [1024 x double]** %28, align 8
  %83 = load i32, i32* %24, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [1024 x double], [1024 x double]* %82, i64 %84
  %86 = load i32, i32* %25, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [1024 x double], [1024 x double]* %85, i64 0, i64 %87
  %89 = load double, double* %88, align 8
  %90 = fmul double %81, %89
  %91 = load [1024 x double]*, [1024 x double]** %28, align 8
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [1024 x double], [1024 x double]* %91, i64 %93
  %95 = load i32, i32* %24, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1024 x double], [1024 x double]* %94, i64 0, i64 %96
  %98 = load double, double* %97, align 8
  %99 = fadd double %98, %90
  store double %99, double* %97, align 8
  br label %100

; <label>:100:                                    ; preds = %71
  %101 = load i32, i32* %25, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %25, align 4
  br label %67

; <label>:103:                                    ; preds = %67
  br label %104

; <label>:104:                                    ; preds = %103
  %105 = load i32, i32* %24, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %24, align 4
  br label %62

; <label>:107:                                    ; preds = %62
  br label %108

; <label>:108:                                    ; preds = %107
  br label %109

; <label>:109:                                    ; preds = %108
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %54

; <label>:112:                                    ; preds = %54
  br label %113

; <label>:113:                                    ; preds = %112
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %114, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %115)
  br label %116

; <label>:116:                                    ; preds = %113, %7
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %117, align 4
  call void @__kmpc_barrier(%ident_t* @1, i32 %118)
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
