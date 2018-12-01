; ModuleID = 'ccholesky.c'
source_filename = "ccholesky.c"
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
  %7 = alloca [1024 x [1024 x double]]*, align 8
  %8 = alloca [1024 x double]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1024, i32* %6, align 4
  %9 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %10 = bitcast i8* %9 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %10, [1024 x [1024 x double]]** %7, align 8
  %11 = call i8* @polybench_alloc_data(i64 1024, i32 8)
  %12 = bitcast i8* %11 to [1024 x double]*
  store [1024 x double]* %12, [1024 x double]** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load [1024 x double]*, [1024 x double]** %8, align 8
  %15 = getelementptr inbounds [1024 x double], [1024 x double]* %14, i32 0, i32 0
  %16 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %7, align 8
  %17 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %16, i32 0, i32 0
  call void @init_array(i32 %13, double* %15, [1024 x double]* %17)
  %18 = load i32, i32* %6, align 4
  %19 = load [1024 x double]*, [1024 x double]** %8, align 8
  %20 = getelementptr inbounds [1024 x double], [1024 x double]* %19, i32 0, i32 0
  %21 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %7, align 8
  %22 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %21, i32 0, i32 0
  call void @kernel_cholesky(i32 %18, double* %20, [1024 x double]* %22)
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 42
  br i1 %24, label %25, label %35

; <label>:25:                                     ; preds = %2
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

; <label>:31:                                     ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %7, align 8
  %34 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %33, i32 0, i32 0
  call void @print_array(i32 %32, [1024 x double]* %34)
  br label %35

; <label>:35:                                     ; preds = %31, %25, %2
  %36 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %7, align 8
  %37 = bitcast [1024 x [1024 x double]]* %36 to i8*
  call void @free(i8* %37) #5
  %38 = load [1024 x double]*, [1024 x double]** %8, align 8
  %39 = bitcast [1024 x double]* %38 to i8*
  call void @free(i8* %39) #5
  ret i32 0
}

declare i8* @polybench_alloc_data(i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32, double*, [1024 x double]*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca [1024 x double]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store [1024 x double]* %2, [1024 x double]** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

; <label>:9:                                      ; preds = %40, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %43

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = sitofp i32 %14 to double
  %16 = fdiv double 1.000000e+00, %15
  %17 = load double*, double** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %17, i64 %19
  store double %16, double* %20, align 8
  store i32 0, i32* %8, align 4
  br label %21

; <label>:21:                                     ; preds = %36, %13
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = sitofp i32 %26 to double
  %28 = fdiv double 1.000000e+00, %27
  %29 = load [1024 x double]*, [1024 x double]** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [1024 x double], [1024 x double]* %29, i64 %31
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1024 x double], [1024 x double]* %32, i64 0, i64 %34
  store double %28, double* %35, align 8
  br label %36

; <label>:36:                                     ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %21

; <label>:39:                                     ; preds = %21
  br label %40

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %9

; <label>:43:                                     ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_cholesky(i32, double*, [1024 x double]*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca [1024 x double]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store [1024 x double]* %2, [1024 x double]** %6, align 8
  call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* @1, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, double*, [1024 x double]**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %7, i32* %4, double* %10, [1024 x double]** %6, double** %5)
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

; <label>:7:                                      ; preds = %41, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %44

; <label>:11:                                     ; preds = %7
  store i32 0, i32* %6, align 4
  br label %12

; <label>:12:                                     ; preds = %37, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %40

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
  %28 = mul nsw i32 %27, 1024
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  %31 = srem i32 %30, 20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %16
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %36

; <label>:36:                                     ; preds = %33, %16
  br label %37

; <label>:37:                                     ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %12

; <label>:40:                                     ; preds = %12
  br label %41

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %7

; <label>:44:                                     ; preds = %7
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias, i32* noalias, i32* dereferenceable(4), i32* dereferenceable(4), double* dereferenceable(8), [1024 x double]** dereferenceable(8), double** dereferenceable(8)) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca [1024 x double]**, align 8
  %14 = alloca double**, align 8
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
  store double* %4, double** %12, align 8
  store [1024 x double]** %5, [1024 x double]*** %13, align 8
  store double** %6, double*** %14, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load double*, double** %12, align 8
  %29 = load [1024 x double]**, [1024 x double]*** %13, align 8
  %30 = load double**, double*** %14, align 8
  %31 = load i32, i32* %27, align 4
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = sub nsw i32 %32, 0
  %34 = sub nsw i32 %33, 1
  %35 = add nsw i32 %34, 1
  %36 = sdiv i32 %35, 1
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp slt i32 0, %38
  br i1 %39, label %40, label %178

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

; <label>:54:                                     ; preds = %171, %51
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %174

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %15, align 4
  %60 = mul nsw i32 %59, 1
  %61 = add nsw i32 0, %60
  store i32 %61, i32* %19, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  call void @__kmpc_critical(%ident_t* @1, i32 %63, [8 x i32]* @.gomp_critical_user_.var)
  %64 = load [1024 x double]*, [1024 x double]** %29, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [1024 x double], [1024 x double]* %64, i64 %66
  %68 = load i32, i32* %19, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [1024 x double], [1024 x double]* %67, i64 0, i64 %69
  %71 = load double, double* %70, align 8
  store double %71, double* %28, align 8
  store i32 0, i32* %24, align 4
  br label %72

; <label>:72:                                     ; preds = %97, %58
  %73 = load i32, i32* %24, align 4
  %74 = load i32, i32* %19, align 4
  %75 = sub nsw i32 %74, 1
  %76 = icmp sle i32 %73, %75
  br i1 %76, label %77, label %100

; <label>:77:                                     ; preds = %72
  %78 = load double, double* %28, align 8
  %79 = load [1024 x double]*, [1024 x double]** %29, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [1024 x double], [1024 x double]* %79, i64 %81
  %83 = load i32, i32* %24, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [1024 x double], [1024 x double]* %82, i64 0, i64 %84
  %86 = load double, double* %85, align 8
  %87 = load [1024 x double]*, [1024 x double]** %29, align 8
  %88 = load i32, i32* %19, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [1024 x double], [1024 x double]* %87, i64 %89
  %91 = load i32, i32* %24, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [1024 x double], [1024 x double]* %90, i64 0, i64 %92
  %94 = load double, double* %93, align 8
  %95 = fmul double %86, %94
  %96 = fsub double %78, %95
  store double %96, double* %28, align 8
  br label %97

; <label>:97:                                     ; preds = %77
  %98 = load i32, i32* %24, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %24, align 4
  br label %72

; <label>:100:                                    ; preds = %72
  %101 = load double, double* %28, align 8
  %102 = call double @sqrt(double %101) #5
  %103 = fdiv double 1.000000e+00, %102
  %104 = load double*, double** %30, align 8
  %105 = load i32, i32* %19, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %104, i64 %106
  store double %103, double* %107, align 8
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %24, align 4
  br label %110

; <label>:110:                                    ; preds = %166, %100
  %111 = load i32, i32* %24, align 4
  %112 = load i32, i32* %27, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %169

; <label>:114:                                    ; preds = %110
  %115 = load [1024 x double]*, [1024 x double]** %29, align 8
  %116 = load i32, i32* %19, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [1024 x double], [1024 x double]* %115, i64 %117
  %119 = load i32, i32* %24, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [1024 x double], [1024 x double]* %118, i64 0, i64 %120
  %122 = load double, double* %121, align 8
  store double %122, double* %28, align 8
  store i32 0, i32* %25, align 4
  br label %123

; <label>:123:                                    ; preds = %148, %114
  %124 = load i32, i32* %25, align 4
  %125 = load i32, i32* %19, align 4
  %126 = sub nsw i32 %125, 1
  %127 = icmp sle i32 %124, %126
  br i1 %127, label %128, label %151

; <label>:128:                                    ; preds = %123
  %129 = load double, double* %28, align 8
  %130 = load [1024 x double]*, [1024 x double]** %29, align 8
  %131 = load i32, i32* %24, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [1024 x double], [1024 x double]* %130, i64 %132
  %134 = load i32, i32* %25, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [1024 x double], [1024 x double]* %133, i64 0, i64 %135
  %137 = load double, double* %136, align 8
  %138 = load [1024 x double]*, [1024 x double]** %29, align 8
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [1024 x double], [1024 x double]* %138, i64 %140
  %142 = load i32, i32* %25, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [1024 x double], [1024 x double]* %141, i64 0, i64 %143
  %145 = load double, double* %144, align 8
  %146 = fmul double %137, %145
  %147 = fsub double %129, %146
  store double %147, double* %28, align 8
  br label %148

; <label>:148:                                    ; preds = %128
  %149 = load i32, i32* %25, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %25, align 4
  br label %123

; <label>:151:                                    ; preds = %123
  %152 = load double, double* %28, align 8
  %153 = load double*, double** %30, align 8
  %154 = load i32, i32* %19, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds double, double* %153, i64 %155
  %157 = load double, double* %156, align 8
  %158 = fmul double %152, %157
  %159 = load [1024 x double]*, [1024 x double]** %29, align 8
  %160 = load i32, i32* %24, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [1024 x double], [1024 x double]* %159, i64 %161
  %163 = load i32, i32* %19, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [1024 x double], [1024 x double]* %162, i64 0, i64 %164
  store double %158, double* %165, align 8
  br label %166

; <label>:166:                                    ; preds = %151
  %167 = load i32, i32* %24, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %24, align 4
  br label %110

; <label>:169:                                    ; preds = %110
  call void @__kmpc_end_critical(%ident_t* @1, i32 %63, [8 x i32]* @.gomp_critical_user_.var)
  br label %170

; <label>:170:                                    ; preds = %169
  br label %171

; <label>:171:                                    ; preds = %170
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %15, align 4
  br label %54

; <label>:174:                                    ; preds = %54
  br label %175

; <label>:175:                                    ; preds = %174
  %176 = load i32*, i32** %8, align 8
  %177 = load i32, i32* %176, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %177)
  br label %178

; <label>:178:                                    ; preds = %175, %7
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* %179, align 4
  call void @__kmpc_barrier(%ident_t* @2, i32 %180)
  ret void
}

declare void @__kmpc_for_static_init_4(%ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare void @__kmpc_end_critical(%ident_t*, i32, [8 x i32]*)

declare void @__kmpc_critical(%ident_t*, i32, [8 x i32]*)

; Function Attrs: nounwind
declare double @sqrt(double) #3

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
