; ModuleID = 'cholesky.c'
source_filename = "cholesky.c"
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
  call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, double*, [1024 x double]**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %7, i32* %4, double* %10, [1024 x double]** %6, double** %5)
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
  br i1 %39, label %40, label %176

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

; <label>:54:                                     ; preds = %169, %51
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %172

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %15, align 4
  %60 = mul nsw i32 %59, 1
  %61 = add nsw i32 0, %60
  store i32 %61, i32* %19, align 4
  %62 = load [1024 x double]*, [1024 x double]** %29, align 8
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [1024 x double], [1024 x double]* %62, i64 %64
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [1024 x double], [1024 x double]* %65, i64 0, i64 %67
  %69 = load double, double* %68, align 8
  store double %69, double* %28, align 8
  store i32 0, i32* %24, align 4
  br label %70

; <label>:70:                                     ; preds = %95, %58
  %71 = load i32, i32* %24, align 4
  %72 = load i32, i32* %19, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp sle i32 %71, %73
  br i1 %74, label %75, label %98

; <label>:75:                                     ; preds = %70
  %76 = load double, double* %28, align 8
  %77 = load [1024 x double]*, [1024 x double]** %29, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [1024 x double], [1024 x double]* %77, i64 %79
  %81 = load i32, i32* %24, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [1024 x double], [1024 x double]* %80, i64 0, i64 %82
  %84 = load double, double* %83, align 8
  %85 = load [1024 x double]*, [1024 x double]** %29, align 8
  %86 = load i32, i32* %19, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [1024 x double], [1024 x double]* %85, i64 %87
  %89 = load i32, i32* %24, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [1024 x double], [1024 x double]* %88, i64 0, i64 %90
  %92 = load double, double* %91, align 8
  %93 = fmul double %84, %92
  %94 = fsub double %76, %93
  store double %94, double* %28, align 8
  br label %95

; <label>:95:                                     ; preds = %75
  %96 = load i32, i32* %24, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %24, align 4
  br label %70

; <label>:98:                                     ; preds = %70
  %99 = load double, double* %28, align 8
  %100 = call double @sqrt(double %99) #5
  %101 = fdiv double 1.000000e+00, %100
  %102 = load double*, double** %30, align 8
  %103 = load i32, i32* %19, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, double* %102, i64 %104
  store double %101, double* %105, align 8
  %106 = load i32, i32* %19, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %24, align 4
  br label %108

; <label>:108:                                    ; preds = %164, %98
  %109 = load i32, i32* %24, align 4
  %110 = load i32, i32* %27, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %167

; <label>:112:                                    ; preds = %108
  %113 = load [1024 x double]*, [1024 x double]** %29, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [1024 x double], [1024 x double]* %113, i64 %115
  %117 = load i32, i32* %24, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [1024 x double], [1024 x double]* %116, i64 0, i64 %118
  %120 = load double, double* %119, align 8
  store double %120, double* %28, align 8
  store i32 0, i32* %25, align 4
  br label %121

; <label>:121:                                    ; preds = %146, %112
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* %19, align 4
  %124 = sub nsw i32 %123, 1
  %125 = icmp sle i32 %122, %124
  br i1 %125, label %126, label %149

; <label>:126:                                    ; preds = %121
  %127 = load double, double* %28, align 8
  %128 = load [1024 x double]*, [1024 x double]** %29, align 8
  %129 = load i32, i32* %24, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [1024 x double], [1024 x double]* %128, i64 %130
  %132 = load i32, i32* %25, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [1024 x double], [1024 x double]* %131, i64 0, i64 %133
  %135 = load double, double* %134, align 8
  %136 = load [1024 x double]*, [1024 x double]** %29, align 8
  %137 = load i32, i32* %19, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [1024 x double], [1024 x double]* %136, i64 %138
  %140 = load i32, i32* %25, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [1024 x double], [1024 x double]* %139, i64 0, i64 %141
  %143 = load double, double* %142, align 8
  %144 = fmul double %135, %143
  %145 = fsub double %127, %144
  store double %145, double* %28, align 8
  br label %146

; <label>:146:                                    ; preds = %126
  %147 = load i32, i32* %25, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %25, align 4
  br label %121

; <label>:149:                                    ; preds = %121
  %150 = load double, double* %28, align 8
  %151 = load double*, double** %30, align 8
  %152 = load i32, i32* %19, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds double, double* %151, i64 %153
  %155 = load double, double* %154, align 8
  %156 = fmul double %150, %155
  %157 = load [1024 x double]*, [1024 x double]** %29, align 8
  %158 = load i32, i32* %24, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [1024 x double], [1024 x double]* %157, i64 %159
  %161 = load i32, i32* %19, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [1024 x double], [1024 x double]* %160, i64 0, i64 %162
  store double %156, double* %163, align 8
  br label %164

; <label>:164:                                    ; preds = %149
  %165 = load i32, i32* %24, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %24, align 4
  br label %108

; <label>:167:                                    ; preds = %108
  br label %168

; <label>:168:                                    ; preds = %167
  br label %169

; <label>:169:                                    ; preds = %168
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %15, align 4
  br label %54

; <label>:172:                                    ; preds = %54
  br label %173

; <label>:173:                                    ; preds = %172
  %174 = load i32*, i32** %8, align 8
  %175 = load i32, i32* %174, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %175)
  br label %176

; <label>:176:                                    ; preds = %173, %7
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %177, align 4
  call void @__kmpc_barrier(%ident_t* @1, i32 %178)
  ret void
}

declare void @__kmpc_for_static_init_4(%ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

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
