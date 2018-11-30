; ModuleID = 'atax.c'
source_filename = "atax.c"
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
  %7 = alloca i32, align 4
  %8 = alloca [4000 x [4000 x double]]*, align 8
  %9 = alloca [4000 x double]*, align 8
  %10 = alloca [4000 x double]*, align 8
  %11 = alloca [4000 x double]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 4000, i32* %6, align 4
  store i32 4000, i32* %7, align 4
  %12 = call i8* @polybench_alloc_data(i64 16000000, i32 8)
  %13 = bitcast i8* %12 to [4000 x [4000 x double]]*
  store [4000 x [4000 x double]]* %13, [4000 x [4000 x double]]** %8, align 8
  %14 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %15 = bitcast i8* %14 to [4000 x double]*
  store [4000 x double]* %15, [4000 x double]** %9, align 8
  %16 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %17 = bitcast i8* %16 to [4000 x double]*
  store [4000 x double]* %17, [4000 x double]** %10, align 8
  %18 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %19 = bitcast i8* %18 to [4000 x double]*
  store [4000 x double]* %19, [4000 x double]** %11, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %8, align 8
  %23 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %22, i32 0, i32 0
  %24 = load [4000 x double]*, [4000 x double]** %9, align 8
  %25 = getelementptr inbounds [4000 x double], [4000 x double]* %24, i32 0, i32 0
  call void @init_array(i32 %20, i32 %21, [4000 x double]* %23, double* %25)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %8, align 8
  %29 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %28, i32 0, i32 0
  %30 = load [4000 x double]*, [4000 x double]** %9, align 8
  %31 = getelementptr inbounds [4000 x double], [4000 x double]* %30, i32 0, i32 0
  %32 = load [4000 x double]*, [4000 x double]** %10, align 8
  %33 = getelementptr inbounds [4000 x double], [4000 x double]* %32, i32 0, i32 0
  %34 = load [4000 x double]*, [4000 x double]** %11, align 8
  %35 = getelementptr inbounds [4000 x double], [4000 x double]* %34, i32 0, i32 0
  call void @kernel_atax(i32 %26, i32 %27, [4000 x double]* %29, double* %31, double* %33, double* %35)
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %36, 42
  br i1 %37, label %38, label %48

; <label>:38:                                     ; preds = %2
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

; <label>:44:                                     ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = load [4000 x double]*, [4000 x double]** %10, align 8
  %47 = getelementptr inbounds [4000 x double], [4000 x double]* %46, i32 0, i32 0
  call void @print_array(i32 %45, double* %47)
  br label %48

; <label>:48:                                     ; preds = %44, %38, %2
  %49 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %8, align 8
  %50 = bitcast [4000 x [4000 x double]]* %49 to i8*
  call void @free(i8* %50) #5
  %51 = load [4000 x double]*, [4000 x double]** %9, align 8
  %52 = bitcast [4000 x double]* %51 to i8*
  call void @free(i8* %52) #5
  %53 = load [4000 x double]*, [4000 x double]** %10, align 8
  %54 = bitcast [4000 x double]* %53 to i8*
  call void @free(i8* %54) #5
  %55 = load [4000 x double]*, [4000 x double]** %11, align 8
  %56 = bitcast [4000 x double]* %55 to i8*
  call void @free(i8* %56) #5
  ret i32 0
}

declare i8* @polybench_alloc_data(i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32, i32, [4000 x double]*, double*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4000 x double]*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store [4000 x double]* %2, [4000 x double]** %7, align 8
  store double* %3, double** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

; <label>:11:                                     ; preds = %23, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %26

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %9, align 4
  %17 = sitofp i32 %16 to double
  %18 = fmul double %17, 0x400921FB54442D18
  %19 = load double*, double** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %19, i64 %21
  store double %18, double* %22, align 8
  br label %23

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  br label %11

; <label>:26:                                     ; preds = %11
  store i32 0, i32* %9, align 4
  br label %27

; <label>:27:                                     ; preds = %57, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %60

; <label>:31:                                     ; preds = %27
  store i32 0, i32* %10, align 4
  br label %32

; <label>:32:                                     ; preds = %53, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %56

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = sitofp i32 %37 to double
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  %41 = sitofp i32 %40 to double
  %42 = fmul double %38, %41
  %43 = load i32, i32* %5, align 4
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %42, %44
  %46 = load [4000 x double]*, [4000 x double]** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4000 x double], [4000 x double]* %46, i64 %48
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4000 x double], [4000 x double]* %49, i64 0, i64 %51
  store double %45, double* %52, align 8
  br label %53

; <label>:53:                                     ; preds = %36
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %32

; <label>:56:                                     ; preds = %32
  br label %57

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %27

; <label>:60:                                     ; preds = %27
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_atax(i32, i32, [4000 x double]*, double*, double*, double*) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4000 x double]*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store [4000 x double]* %2, [4000 x double]** %9, align 8
  store double* %3, double** %10, align 8
  store double* %4, double** %11, align 8
  store double* %5, double** %12, align 8
  call void (%ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%ident_t* @2, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, double**, i32*, double**, [4000 x double]**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %13, i32* %8, double** %11, i32* %7, double** %12, [4000 x double]** %9, double** %10)
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
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias, i32* noalias, i32* dereferenceable(4), i32* dereferenceable(4), double** dereferenceable(8), i32* dereferenceable(4), double** dereferenceable(8), [4000 x double]** dereferenceable(8), double** dereferenceable(8)) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca double**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca double**, align 8
  %17 = alloca [4000 x double]**, align 8
  %18 = alloca double**, align 8
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
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store double** %4, double*** %14, align 8
  store i32* %5, i32** %15, align 8
  store double** %6, double*** %16, align 8
  store [4000 x double]** %7, [4000 x double]*** %17, align 8
  store double** %8, double*** %18, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load double**, double*** %14, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = load double**, double*** %16, align 8
  %43 = load [4000 x double]**, [4000 x double]*** %17, align 8
  %44 = load double**, double*** %18, align 8
  %45 = load i32, i32* %39, align 4
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* %21, align 4
  %47 = sub nsw i32 %46, 0
  %48 = sub nsw i32 %47, 1
  %49 = add nsw i32 %48, 1
  %50 = sdiv i32 %49, 1
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %52 = load i32, i32* %21, align 4
  %53 = icmp slt i32 0, %52
  br i1 %53, label %54, label %88

; <label>:54:                                     ; preds = %9
  store i32 0, i32* %24, align 4
  %55 = load i32, i32* %22, align 4
  store i32 %55, i32* %25, align 4
  store i32 1, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  call void @__kmpc_for_static_init_4(%ident_t* @0, i32 %57, i32 34, i32* %27, i32* %24, i32* %25, i32* %26, i32 1, i32 1)
  %58 = load i32, i32* %25, align 4
  %59 = load i32, i32* %22, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

; <label>:61:                                     ; preds = %54
  %62 = load i32, i32* %22, align 4
  br label %65

; <label>:63:                                     ; preds = %54
  %64 = load i32, i32* %25, align 4
  br label %65

; <label>:65:                                     ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %25, align 4
  %67 = load i32, i32* %24, align 4
  store i32 %67, i32* %19, align 4
  br label %68

; <label>:68:                                     ; preds = %81, %65
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %25, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %84

; <label>:72:                                     ; preds = %68
  %73 = load i32, i32* %19, align 4
  %74 = mul nsw i32 %73, 1
  %75 = add nsw i32 0, %74
  store i32 %75, i32* %23, align 4
  %76 = load double*, double** %40, align 8
  %77 = load i32, i32* %23, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %76, i64 %78
  store double 0.000000e+00, double* %79, align 8
  br label %80

; <label>:80:                                     ; preds = %72
  br label %81

; <label>:81:                                     ; preds = %80
  %82 = load i32, i32* %19, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %19, align 4
  br label %68

; <label>:84:                                     ; preds = %68
  br label %85

; <label>:85:                                     ; preds = %84
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %87)
  br label %88

; <label>:88:                                     ; preds = %85, %9
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  call void @__kmpc_barrier(%ident_t* @1, i32 %90)
  %91 = load i32, i32* %41, align 4
  store i32 %91, i32* %30, align 4
  %92 = load i32, i32* %30, align 4
  %93 = sub nsw i32 %92, 0
  %94 = sub nsw i32 %93, 1
  %95 = add nsw i32 %94, 1
  %96 = sdiv i32 %95, 1
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %31, align 4
  store i32 0, i32* %32, align 4
  %98 = load i32, i32* %30, align 4
  %99 = icmp slt i32 0, %98
  br i1 %99, label %100, label %200

; <label>:100:                                    ; preds = %88
  store i32 0, i32* %33, align 4
  %101 = load i32, i32* %31, align 4
  store i32 %101, i32* %34, align 4
  store i32 1, i32* %35, align 4
  store i32 0, i32* %36, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %102, align 4
  call void @__kmpc_for_static_init_4(%ident_t* @0, i32 %103, i32 34, i32* %36, i32* %33, i32* %34, i32* %35, i32 1, i32 1)
  %104 = load i32, i32* %34, align 4
  %105 = load i32, i32* %31, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %109

; <label>:107:                                    ; preds = %100
  %108 = load i32, i32* %31, align 4
  br label %111

; <label>:109:                                    ; preds = %100
  %110 = load i32, i32* %34, align 4
  br label %111

; <label>:111:                                    ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  store i32 %112, i32* %34, align 4
  %113 = load i32, i32* %33, align 4
  store i32 %113, i32* %28, align 4
  br label %114

; <label>:114:                                    ; preds = %193, %111
  %115 = load i32, i32* %28, align 4
  %116 = load i32, i32* %34, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %196

; <label>:118:                                    ; preds = %114
  %119 = load i32, i32* %28, align 4
  %120 = mul nsw i32 %119, 1
  %121 = add nsw i32 0, %120
  store i32 %121, i32* %32, align 4
  %122 = load double*, double** %42, align 8
  %123 = load i32, i32* %32, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double, double* %122, i64 %124
  store double 0.000000e+00, double* %125, align 8
  store i32 0, i32* %37, align 4
  br label %126

; <label>:126:                                    ; preds = %155, %118
  %127 = load i32, i32* %37, align 4
  %128 = load i32, i32* %39, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %158

; <label>:130:                                    ; preds = %126
  %131 = load double*, double** %42, align 8
  %132 = load i32, i32* %32, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double, double* %131, i64 %133
  %135 = load double, double* %134, align 8
  %136 = load [4000 x double]*, [4000 x double]** %43, align 8
  %137 = load i32, i32* %32, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4000 x double], [4000 x double]* %136, i64 %138
  %140 = load i32, i32* %37, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [4000 x double], [4000 x double]* %139, i64 0, i64 %141
  %143 = load double, double* %142, align 8
  %144 = load double*, double** %44, align 8
  %145 = load i32, i32* %37, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double, double* %144, i64 %146
  %148 = load double, double* %147, align 8
  %149 = fmul double %143, %148
  %150 = fadd double %135, %149
  %151 = load double*, double** %42, align 8
  %152 = load i32, i32* %32, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds double, double* %151, i64 %153
  store double %150, double* %154, align 8
  br label %155

; <label>:155:                                    ; preds = %130
  %156 = load i32, i32* %37, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %37, align 4
  br label %126

; <label>:158:                                    ; preds = %126
  store i32 0, i32* %37, align 4
  br label %159

; <label>:159:                                    ; preds = %188, %158
  %160 = load i32, i32* %37, align 4
  %161 = load i32, i32* %39, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %191

; <label>:163:                                    ; preds = %159
  %164 = load double*, double** %40, align 8
  %165 = load i32, i32* %37, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double, double* %164, i64 %166
  %168 = load double, double* %167, align 8
  %169 = load [4000 x double]*, [4000 x double]** %43, align 8
  %170 = load i32, i32* %32, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4000 x double], [4000 x double]* %169, i64 %171
  %173 = load i32, i32* %37, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [4000 x double], [4000 x double]* %172, i64 0, i64 %174
  %176 = load double, double* %175, align 8
  %177 = load double*, double** %42, align 8
  %178 = load i32, i32* %32, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds double, double* %177, i64 %179
  %181 = load double, double* %180, align 8
  %182 = fmul double %176, %181
  %183 = fadd double %168, %182
  %184 = load double*, double** %40, align 8
  %185 = load i32, i32* %37, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, double* %184, i64 %186
  store double %183, double* %187, align 8
  br label %188

; <label>:188:                                    ; preds = %163
  %189 = load i32, i32* %37, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %37, align 4
  br label %159

; <label>:191:                                    ; preds = %159
  br label %192

; <label>:192:                                    ; preds = %191
  br label %193

; <label>:193:                                    ; preds = %192
  %194 = load i32, i32* %28, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %28, align 4
  br label %114

; <label>:196:                                    ; preds = %114
  br label %197

; <label>:197:                                    ; preds = %196
  %198 = load i32*, i32** %10, align 8
  %199 = load i32, i32* %198, align 4
  call void @__kmpc_for_static_fini(%ident_t* @0, i32 %199)
  br label %200

; <label>:200:                                    ; preds = %197, %88
  %201 = load i32*, i32** %10, align 8
  %202 = load i32, i32* %201, align 4
  call void @__kmpc_barrier(%ident_t* @1, i32 %202)
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
