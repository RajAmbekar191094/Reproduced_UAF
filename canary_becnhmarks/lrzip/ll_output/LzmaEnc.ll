; ModuleID = './lzma/C/LzmaEnc.c'
source_filename = "./lzma/C/LzmaEnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CLzmaEncProps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.CLzmaEnc = type { %struct._IMatchFinder, ptr, i32, %struct._CMatchFinderMt, %struct._CMatchFinder, [128 x i8], i32, i32, i32, i32, i32, [4096 x %struct.COptimal], [8192 x i8], [128 x i32], [549 x i32], i32, i32, [4 x i32], i32, [4 x [64 x i32]], [4 x [128 x i32]], [16 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.CLenPriceEnc, %struct.CLenPriceEnc, i32, i32, %struct.CRangeEnc, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.CSaveState }
%struct._IMatchFinder = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct._CMatchFinderMt = type { ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct._CMtSync, [128 x i8], ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, %struct._CMtSync, ptr, ptr }
%struct._CMtSync = type { i32, i32, i32, i32, %struct._CThread, %struct._CEvent, %struct._CEvent, %struct._CEvent, %struct._CSemaphore, %struct._CSemaphore, i32, i32, %struct.CCriticalSection, i32 }
%struct._CThread = type { i64, i32 }
%struct._CEvent = type { i32, i32, i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct._CSemaphore = type { i32, i32, i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%struct.CCriticalSection = type { %union.pthread_mutex_t }
%struct._CMatchFinder = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [256 x i32] }
%struct.COptimal = type { i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.CLenPriceEnc = type { %struct.CLenEnc, [16 x [272 x i32]], i32, [16 x i32] }
%struct.CLenEnc = type { i16, i16, [128 x i16], [128 x i16], [256 x i16] }
%struct.CRangeEnc = type { i32, i8, i64, i64, ptr, ptr, ptr, ptr, i64, i32 }
%struct.CSaveState = type { ptr, [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.CLenPriceEnc, %struct.CLenPriceEnc, [4 x i32], i32 }
%struct.ISzAlloc = type { ptr, ptr }
%struct.CSeqOutStreamBuf = type { %struct.ISeqOutStream, ptr, i64, i32 }
%struct.ISeqOutStream = type { ptr }
%struct.ICompressProgress = type { ptr }

@kLiteralNextStates = internal constant [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 4, i32 5], align 16
@kShortRepNextStates = internal constant [12 x i32] [i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 11, i32 11, i32 11, i32 11, i32 11], align 16
@kRepNextStates = internal constant [12 x i32] [i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 11, i32 11, i32 11, i32 11, i32 11], align 16
@kMatchNextStates = internal constant [12 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 10, i32 10, i32 10, i32 10, i32 10], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEncProps_Init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CLzmaEncProps, ptr %3, i32 0, i32 0
  store i32 5, ptr %4, align 4
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct._CLzmaEncProps, ptr %5, i32 0, i32 9
  store i32 0, ptr %6, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct._CLzmaEncProps, ptr %9, i32 0, i32 11
  store i32 -1, ptr %10, align 4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct._CLzmaEncProps, ptr %11, i32 0, i32 8
  store i32 -1, ptr %12, align 4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct._CLzmaEncProps, ptr %13, i32 0, i32 7
  store i32 -1, ptr %14, align 4
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct._CLzmaEncProps, ptr %15, i32 0, i32 6
  store i32 -1, ptr %16, align 4
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct._CLzmaEncProps, ptr %17, i32 0, i32 5
  store i32 -1, ptr %18, align 4
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct._CLzmaEncProps, ptr %19, i32 0, i32 4
  store i32 -1, ptr %20, align 4
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct._CLzmaEncProps, ptr %21, i32 0, i32 3
  store i32 -1, ptr %22, align 4
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct._CLzmaEncProps, ptr %23, i32 0, i32 2
  store i32 -1, ptr %24, align 4
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct._CLzmaEncProps, ptr %25, i32 0, i32 10
  store i32 0, ptr %26, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEncProps_Normalize(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct._CLzmaEncProps, ptr %4, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %3, align 4
  %7 = load i32, ptr %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 5, ptr %3, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i32, ptr %3, align 4
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct._CLzmaEncProps, ptr %12, i32 0, i32 0
  store i32 %11, ptr %13, align 4
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct._CLzmaEncProps, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %10
  %19 = load i32, ptr %3, align 4
  %20 = icmp sle i32 %19, 5
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, ptr %3, align 4
  %23 = mul nsw i32 %22, 2
  %24 = add nsw i32 %23, 14
  %25 = shl i32 1, %24
  br label %31

26:                                               ; preds = %18
  %27 = load i32, ptr %3, align 4
  %28 = icmp eq i32 %27, 6
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 33554432, i32 67108864
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i32 [ %25, %21 ], [ %30, %26 ]
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct._CLzmaEncProps, ptr %33, i32 0, i32 1
  store i32 %32, ptr %34, align 4
  br label %35

35:                                               ; preds = %31, %10
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct._CLzmaEncProps, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr inbounds %struct._CLzmaEncProps, ptr %41, i32 0, i32 2
  store i32 3, ptr %42, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds %struct._CLzmaEncProps, ptr %44, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct._CLzmaEncProps, ptr %49, i32 0, i32 3
  store i32 0, ptr %50, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds %struct._CLzmaEncProps, ptr %52, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr inbounds %struct._CLzmaEncProps, ptr %57, i32 0, i32 4
  store i32 2, ptr %58, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load ptr, ptr %2, align 8
  %61 = getelementptr inbounds %struct._CLzmaEncProps, ptr %60, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, ptr %3, align 4
  %66 = icmp slt i32 %65, 5
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 0, i32 1
  %69 = load ptr, ptr %2, align 8
  %70 = getelementptr inbounds %struct._CLzmaEncProps, ptr %69, i32 0, i32 5
  store i32 %68, ptr %70, align 4
  br label %71

71:                                               ; preds = %64, %59
  %72 = load ptr, ptr %2, align 8
  %73 = getelementptr inbounds %struct._CLzmaEncProps, ptr %72, i32 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32, ptr %3, align 4
  %78 = icmp slt i32 %77, 7
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 32, i32 64
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr inbounds %struct._CLzmaEncProps, ptr %81, i32 0, i32 6
  store i32 %80, ptr %82, align 4
  br label %83

83:                                               ; preds = %76, %71
  %84 = load ptr, ptr %2, align 8
  %85 = getelementptr inbounds %struct._CLzmaEncProps, ptr %84, i32 0, i32 7
  %86 = load i32, ptr %85, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load ptr, ptr %2, align 8
  %90 = getelementptr inbounds %struct._CLzmaEncProps, ptr %89, i32 0, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 0, i32 1
  %95 = load ptr, ptr %2, align 8
  %96 = getelementptr inbounds %struct._CLzmaEncProps, ptr %95, i32 0, i32 7
  store i32 %94, ptr %96, align 4
  br label %97

97:                                               ; preds = %88, %83
  %98 = load ptr, ptr %2, align 8
  %99 = getelementptr inbounds %struct._CLzmaEncProps, ptr %98, i32 0, i32 8
  %100 = load i32, ptr %99, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load ptr, ptr %2, align 8
  %104 = getelementptr inbounds %struct._CLzmaEncProps, ptr %103, i32 0, i32 8
  store i32 4, ptr %104, align 4
  br label %105

105:                                              ; preds = %102, %97
  %106 = load ptr, ptr %2, align 8
  %107 = getelementptr inbounds %struct._CLzmaEncProps, ptr %106, i32 0, i32 9
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %105
  %111 = load ptr, ptr %2, align 8
  %112 = getelementptr inbounds %struct._CLzmaEncProps, ptr %111, i32 0, i32 6
  %113 = load i32, ptr %112, align 4
  %114 = ashr i32 %113, 1
  %115 = add nsw i32 16, %114
  %116 = load ptr, ptr %2, align 8
  %117 = getelementptr inbounds %struct._CLzmaEncProps, ptr %116, i32 0, i32 7
  %118 = load i32, ptr %117, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 0, i32 1
  %122 = ashr i32 %115, %121
  %123 = load ptr, ptr %2, align 8
  %124 = getelementptr inbounds %struct._CLzmaEncProps, ptr %123, i32 0, i32 9
  store i32 %122, ptr %124, align 4
  br label %125

125:                                              ; preds = %110, %105
  %126 = load ptr, ptr %2, align 8
  %127 = getelementptr inbounds %struct._CLzmaEncProps, ptr %126, i32 0, i32 11
  %128 = load i32, ptr %127, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %125
  %131 = load ptr, ptr %2, align 8
  %132 = getelementptr inbounds %struct._CLzmaEncProps, ptr %131, i32 0, i32 7
  %133 = load i32, ptr %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load ptr, ptr %2, align 8
  %137 = getelementptr inbounds %struct._CLzmaEncProps, ptr %136, i32 0, i32 5
  %138 = load i32, ptr %137, align 4
  %139 = icmp ne i32 %138, 0
  br label %140

140:                                              ; preds = %135, %130
  %141 = phi i1 [ false, %130 ], [ %139, %135 ]
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 2, i32 1
  %144 = load ptr, ptr %2, align 8
  %145 = getelementptr inbounds %struct._CLzmaEncProps, ptr %144, i32 0, i32 11
  store i32 %143, ptr %145, align 4
  br label %146

146:                                              ; preds = %140, %125
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaEncProps_GetDictSize(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._CLzmaEncProps, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %4, i64 48, i1 false)
  call void @LzmaEncProps_Normalize(ptr noundef %3)
  %5 = getelementptr inbounds %struct._CLzmaEncProps, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_FastPosInit(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 2, ptr %3, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds i8, ptr %7, i64 0
  store i8 0, ptr %8, align 1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 1, ptr %10, align 1
  store i32 2, ptr %4, align 4
  br label %11

11:                                               ; preds = %36, %1
  %12 = load i32, ptr %4, align 4
  %13 = icmp slt i32 %12, 26
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = load i32, ptr %4, align 4
  %16 = ashr i32 %15, 1
  %17 = sub nsw i32 %16, 1
  %18 = shl i32 1, %17
  store i32 %18, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %19

19:                                               ; preds = %30, %14
  %20 = load i32, ptr %6, align 4
  %21 = load i32, ptr %5, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, ptr %4, align 4
  %25 = trunc i32 %24 to i8
  %26 = load ptr, ptr %2, align 8
  %27 = load i32, ptr %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  store i8 %25, ptr %29, align 1
  br label %30

30:                                               ; preds = %23
  %31 = load i32, ptr %6, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %6, align 4
  %33 = load i32, ptr %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %3, align 4
  br label %19, !llvm.loop !6

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, ptr %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %4, align 4
  br label %11, !llvm.loop !8

39:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_SaveState(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %7, i32 0, i32 53
  store ptr %8, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.CSaveState, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.CLzmaEnc, ptr %11, i32 0, i32 39
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %12, i64 18504, i1 false)
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.CSaveState, ptr %13, i32 0, i32 11
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.CLzmaEnc, ptr %15, i32 0, i32 40
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %16, i64 18504, i1 false)
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.CLzmaEnc, ptr %17, i32 0, i32 18
  %19 = load i32, ptr %18, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.CSaveState, ptr %20, i32 0, i32 13
  store i32 %19, ptr %21, align 4
  store i32 0, ptr %5, align 4
  br label %22

22:                                               ; preds = %50, %1
  %23 = load i32, ptr %5, align 4
  %24 = icmp slt i32 %23, 12
  br i1 %24, label %25, label %53

25:                                               ; preds = %22
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.CSaveState, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [12 x [16 x i16]], ptr %27, i64 0, i64 %29
  %31 = getelementptr inbounds [16 x i16], ptr %30, i64 0, i64 0
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.CLzmaEnc, ptr %32, i32 0, i32 30
  %34 = load i32, ptr %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [12 x [16 x i16]], ptr %33, i64 0, i64 %35
  %37 = getelementptr inbounds [16 x i16], ptr %36, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %37, i64 32, i1 false)
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.CSaveState, ptr %38, i32 0, i32 6
  %40 = load i32, ptr %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [12 x [16 x i16]], ptr %39, i64 0, i64 %41
  %43 = getelementptr inbounds [16 x i16], ptr %42, i64 0, i64 0
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.CLzmaEnc, ptr %44, i32 0, i32 35
  %46 = load i32, ptr %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [12 x [16 x i16]], ptr %45, i64 0, i64 %47
  %49 = getelementptr inbounds [16 x i16], ptr %48, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %43, ptr align 8 %49, i64 32, i1 false)
  br label %50

50:                                               ; preds = %25
  %51 = load i32, ptr %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %5, align 4
  br label %22, !llvm.loop !9

53:                                               ; preds = %22
  store i32 0, ptr %5, align 4
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i32, ptr %5, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.CSaveState, ptr %58, i32 0, i32 7
  %60 = load i32, ptr %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x [64 x i16]], ptr %59, i64 0, i64 %61
  %63 = getelementptr inbounds [64 x i16], ptr %62, i64 0, i64 0
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %struct.CLzmaEnc, ptr %64, i32 0, i32 36
  %66 = load i32, ptr %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x [64 x i16]], ptr %65, i64 0, i64 %67
  %69 = getelementptr inbounds [64 x i16], ptr %68, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %63, ptr align 8 %69, i64 128, i1 false)
  br label %70

70:                                               ; preds = %57
  %71 = load i32, ptr %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %5, align 4
  br label %54, !llvm.loop !10

73:                                               ; preds = %54
  %74 = load ptr, ptr %4, align 8
  %75 = getelementptr inbounds %struct.CSaveState, ptr %74, i32 0, i32 2
  %76 = getelementptr inbounds [12 x i16], ptr %75, i64 0, i64 0
  %77 = load ptr, ptr %3, align 8
  %78 = getelementptr inbounds %struct.CLzmaEnc, ptr %77, i32 0, i32 31
  %79 = getelementptr inbounds [12 x i16], ptr %78, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %76, ptr align 8 %79, i64 24, i1 false)
  %80 = load ptr, ptr %4, align 8
  %81 = getelementptr inbounds %struct.CSaveState, ptr %80, i32 0, i32 3
  %82 = getelementptr inbounds [12 x i16], ptr %81, i64 0, i64 0
  %83 = load ptr, ptr %3, align 8
  %84 = getelementptr inbounds %struct.CLzmaEnc, ptr %83, i32 0, i32 32
  %85 = getelementptr inbounds [12 x i16], ptr %84, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %82, ptr align 8 %85, i64 24, i1 false)
  %86 = load ptr, ptr %4, align 8
  %87 = getelementptr inbounds %struct.CSaveState, ptr %86, i32 0, i32 4
  %88 = getelementptr inbounds [12 x i16], ptr %87, i64 0, i64 0
  %89 = load ptr, ptr %3, align 8
  %90 = getelementptr inbounds %struct.CLzmaEnc, ptr %89, i32 0, i32 33
  %91 = getelementptr inbounds [12 x i16], ptr %90, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %88, ptr align 8 %91, i64 24, i1 false)
  %92 = load ptr, ptr %4, align 8
  %93 = getelementptr inbounds %struct.CSaveState, ptr %92, i32 0, i32 5
  %94 = getelementptr inbounds [12 x i16], ptr %93, i64 0, i64 0
  %95 = load ptr, ptr %3, align 8
  %96 = getelementptr inbounds %struct.CLzmaEnc, ptr %95, i32 0, i32 34
  %97 = getelementptr inbounds [12 x i16], ptr %96, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %94, ptr align 8 %97, i64 24, i1 false)
  %98 = load ptr, ptr %4, align 8
  %99 = getelementptr inbounds %struct.CSaveState, ptr %98, i32 0, i32 8
  %100 = getelementptr inbounds [114 x i16], ptr %99, i64 0, i64 0
  %101 = load ptr, ptr %3, align 8
  %102 = getelementptr inbounds %struct.CLzmaEnc, ptr %101, i32 0, i32 37
  %103 = getelementptr inbounds [114 x i16], ptr %102, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %100, ptr align 8 %103, i64 228, i1 false)
  %104 = load ptr, ptr %4, align 8
  %105 = getelementptr inbounds %struct.CSaveState, ptr %104, i32 0, i32 9
  %106 = getelementptr inbounds [16 x i16], ptr %105, i64 0, i64 0
  %107 = load ptr, ptr %3, align 8
  %108 = getelementptr inbounds %struct.CLzmaEnc, ptr %107, i32 0, i32 38
  %109 = getelementptr inbounds [16 x i16], ptr %108, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %106, ptr align 4 %109, i64 32, i1 false)
  %110 = load ptr, ptr %4, align 8
  %111 = getelementptr inbounds %struct.CSaveState, ptr %110, i32 0, i32 12
  %112 = getelementptr inbounds [4 x i32], ptr %111, i64 0, i64 0
  %113 = load ptr, ptr %3, align 8
  %114 = getelementptr inbounds %struct.CLzmaEnc, ptr %113, i32 0, i32 17
  %115 = getelementptr inbounds [4 x i32], ptr %114, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %112, ptr align 8 %115, i64 16, i1 false)
  %116 = load ptr, ptr %4, align 8
  %117 = getelementptr inbounds %struct.CSaveState, ptr %116, i32 0, i32 0
  %118 = load ptr, ptr %117, align 8
  %119 = load ptr, ptr %3, align 8
  %120 = getelementptr inbounds %struct.CLzmaEnc, ptr %119, i32 0, i32 29
  %121 = load ptr, ptr %120, align 8
  %122 = load ptr, ptr %3, align 8
  %123 = getelementptr inbounds %struct.CLzmaEnc, ptr %122, i32 0, i32 41
  %124 = load i32, ptr %123, align 4
  %125 = shl i32 768, %124
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %118, ptr align 2 %121, i64 %127, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_RestoreState(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %7, i32 0, i32 53
  store ptr %8, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.CLzmaEnc, ptr %9, i32 0, i32 39
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.CSaveState, ptr %11, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %12, i64 18504, i1 false)
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.CLzmaEnc, ptr %13, i32 0, i32 40
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.CSaveState, ptr %15, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %16, i64 18504, i1 false)
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.CSaveState, ptr %17, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct.CLzmaEnc, ptr %20, i32 0, i32 18
  store i32 %19, ptr %21, align 8
  store i32 0, ptr %5, align 4
  br label %22

22:                                               ; preds = %50, %1
  %23 = load i32, ptr %5, align 4
  %24 = icmp slt i32 %23, 12
  br i1 %24, label %25, label %53

25:                                               ; preds = %22
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.CLzmaEnc, ptr %26, i32 0, i32 30
  %28 = load i32, ptr %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [12 x [16 x i16]], ptr %27, i64 0, i64 %29
  %31 = getelementptr inbounds [16 x i16], ptr %30, i64 0, i64 0
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.CSaveState, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [12 x [16 x i16]], ptr %33, i64 0, i64 %35
  %37 = getelementptr inbounds [16 x i16], ptr %36, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %37, i64 32, i1 false)
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.CLzmaEnc, ptr %38, i32 0, i32 35
  %40 = load i32, ptr %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [12 x [16 x i16]], ptr %39, i64 0, i64 %41
  %43 = getelementptr inbounds [16 x i16], ptr %42, i64 0, i64 0
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds %struct.CSaveState, ptr %44, i32 0, i32 6
  %46 = load i32, ptr %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [12 x [16 x i16]], ptr %45, i64 0, i64 %47
  %49 = getelementptr inbounds [16 x i16], ptr %48, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %43, ptr align 8 %49, i64 32, i1 false)
  br label %50

50:                                               ; preds = %25
  %51 = load i32, ptr %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %5, align 4
  br label %22, !llvm.loop !11

53:                                               ; preds = %22
  store i32 0, ptr %5, align 4
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i32, ptr %5, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.CLzmaEnc, ptr %58, i32 0, i32 36
  %60 = load i32, ptr %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x [64 x i16]], ptr %59, i64 0, i64 %61
  %63 = getelementptr inbounds [64 x i16], ptr %62, i64 0, i64 0
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds %struct.CSaveState, ptr %64, i32 0, i32 7
  %66 = load i32, ptr %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x [64 x i16]], ptr %65, i64 0, i64 %67
  %69 = getelementptr inbounds [64 x i16], ptr %68, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %63, ptr align 8 %69, i64 128, i1 false)
  br label %70

70:                                               ; preds = %57
  %71 = load i32, ptr %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %5, align 4
  br label %54, !llvm.loop !12

73:                                               ; preds = %54
  %74 = load ptr, ptr %3, align 8
  %75 = getelementptr inbounds %struct.CLzmaEnc, ptr %74, i32 0, i32 31
  %76 = getelementptr inbounds [12 x i16], ptr %75, i64 0, i64 0
  %77 = load ptr, ptr %4, align 8
  %78 = getelementptr inbounds %struct.CSaveState, ptr %77, i32 0, i32 2
  %79 = getelementptr inbounds [12 x i16], ptr %78, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %76, ptr align 8 %79, i64 24, i1 false)
  %80 = load ptr, ptr %3, align 8
  %81 = getelementptr inbounds %struct.CLzmaEnc, ptr %80, i32 0, i32 32
  %82 = getelementptr inbounds [12 x i16], ptr %81, i64 0, i64 0
  %83 = load ptr, ptr %4, align 8
  %84 = getelementptr inbounds %struct.CSaveState, ptr %83, i32 0, i32 3
  %85 = getelementptr inbounds [12 x i16], ptr %84, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %82, ptr align 8 %85, i64 24, i1 false)
  %86 = load ptr, ptr %3, align 8
  %87 = getelementptr inbounds %struct.CLzmaEnc, ptr %86, i32 0, i32 33
  %88 = getelementptr inbounds [12 x i16], ptr %87, i64 0, i64 0
  %89 = load ptr, ptr %4, align 8
  %90 = getelementptr inbounds %struct.CSaveState, ptr %89, i32 0, i32 4
  %91 = getelementptr inbounds [12 x i16], ptr %90, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %88, ptr align 8 %91, i64 24, i1 false)
  %92 = load ptr, ptr %3, align 8
  %93 = getelementptr inbounds %struct.CLzmaEnc, ptr %92, i32 0, i32 34
  %94 = getelementptr inbounds [12 x i16], ptr %93, i64 0, i64 0
  %95 = load ptr, ptr %4, align 8
  %96 = getelementptr inbounds %struct.CSaveState, ptr %95, i32 0, i32 5
  %97 = getelementptr inbounds [12 x i16], ptr %96, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %94, ptr align 8 %97, i64 24, i1 false)
  %98 = load ptr, ptr %3, align 8
  %99 = getelementptr inbounds %struct.CLzmaEnc, ptr %98, i32 0, i32 37
  %100 = getelementptr inbounds [114 x i16], ptr %99, i64 0, i64 0
  %101 = load ptr, ptr %4, align 8
  %102 = getelementptr inbounds %struct.CSaveState, ptr %101, i32 0, i32 8
  %103 = getelementptr inbounds [114 x i16], ptr %102, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %100, ptr align 8 %103, i64 228, i1 false)
  %104 = load ptr, ptr %3, align 8
  %105 = getelementptr inbounds %struct.CLzmaEnc, ptr %104, i32 0, i32 38
  %106 = getelementptr inbounds [16 x i16], ptr %105, i64 0, i64 0
  %107 = load ptr, ptr %4, align 8
  %108 = getelementptr inbounds %struct.CSaveState, ptr %107, i32 0, i32 9
  %109 = getelementptr inbounds [16 x i16], ptr %108, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %106, ptr align 4 %109, i64 32, i1 false)
  %110 = load ptr, ptr %3, align 8
  %111 = getelementptr inbounds %struct.CLzmaEnc, ptr %110, i32 0, i32 17
  %112 = getelementptr inbounds [4 x i32], ptr %111, i64 0, i64 0
  %113 = load ptr, ptr %4, align 8
  %114 = getelementptr inbounds %struct.CSaveState, ptr %113, i32 0, i32 12
  %115 = getelementptr inbounds [4 x i32], ptr %114, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %112, ptr align 4 %115, i64 16, i1 false)
  %116 = load ptr, ptr %3, align 8
  %117 = getelementptr inbounds %struct.CLzmaEnc, ptr %116, i32 0, i32 29
  %118 = load ptr, ptr %117, align 8
  %119 = load ptr, ptr %4, align 8
  %120 = getelementptr inbounds %struct.CSaveState, ptr %119, i32 0, i32 0
  %121 = load ptr, ptr %120, align 8
  %122 = load ptr, ptr %3, align 8
  %123 = getelementptr inbounds %struct.CLzmaEnc, ptr %122, i32 0, i32 41
  %124 = load i32, ptr %123, align 4
  %125 = shl i32 768, %124
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %118, ptr align 2 %121, i64 %127, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaEnc_SetProps(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct._CLzmaEncProps, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  store ptr %10, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %11, i64 48, i1 false)
  call void @LzmaEncProps_Normalize(ptr noundef %7)
  %12 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 8
  br i1 %14, label %31, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 4
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, -2147483648
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, 1073741824
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23, %19, %15, %2
  store i32 5, ptr %3, align 4
  br label %114

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %6, align 8
  %36 = getelementptr inbounds %struct.CLzmaEnc, ptr %35, i32 0, i32 50
  store i32 %34, ptr %36, align 8
  %37 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 9
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds %struct.CLzmaEnc, ptr %39, i32 0, i32 51
  store i32 %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %8, align 4
  %43 = load i32, ptr %8, align 4
  %44 = icmp ult i32 %43, 5
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  store i32 5, ptr %8, align 4
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i32, ptr %8, align 4
  %48 = icmp ugt i32 %47, 273
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 273, ptr %8, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, ptr %8, align 4
  %52 = load ptr, ptr %6, align 8
  %53 = getelementptr inbounds %struct.CLzmaEnc, ptr %52, i32 0, i32 15
  store i32 %51, ptr %53, align 8
  %54 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %6, align 8
  %57 = getelementptr inbounds %struct.CLzmaEnc, ptr %56, i32 0, i32 24
  store i32 %55, ptr %57, align 4
  %58 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = load ptr, ptr %6, align 8
  %61 = getelementptr inbounds %struct.CLzmaEnc, ptr %60, i32 0, i32 25
  store i32 %59, ptr %61, align 8
  %62 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds %struct.CLzmaEnc, ptr %64, i32 0, i32 26
  store i32 %63, ptr %65, align 4
  %66 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = load ptr, ptr %6, align 8
  %71 = getelementptr inbounds %struct.CLzmaEnc, ptr %70, i32 0, i32 42
  store i32 %69, ptr %71, align 8
  %72 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 7
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr %6, align 8
  %75 = getelementptr inbounds %struct.CLzmaEnc, ptr %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct._CMatchFinder, ptr %75, i32 0, i32 21
  store i32 %73, ptr %76, align 8
  store i32 4, ptr %9, align 4
  %77 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 7
  %78 = load i32, ptr %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %50
  %81 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 8
  %82 = load i32, ptr %81, align 4
  %83 = icmp slt i32 %82, 2
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 2, ptr %9, align 4
  br label %93

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 8
  %87 = load i32, ptr %86, align 4
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 8
  %91 = load i32, ptr %90, align 4
  store i32 %91, ptr %9, align 4
  br label %92

92:                                               ; preds = %89, %85
  br label %93

93:                                               ; preds = %92, %84
  br label %94

94:                                               ; preds = %93, %50
  %95 = load i32, ptr %9, align 4
  %96 = load ptr, ptr %6, align 8
  %97 = getelementptr inbounds %struct.CLzmaEnc, ptr %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct._CMatchFinder, ptr %97, i32 0, i32 18
  store i32 %95, ptr %98, align 8
  %99 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 9
  %100 = load i32, ptr %99, align 4
  %101 = load ptr, ptr %6, align 8
  %102 = getelementptr inbounds %struct.CLzmaEnc, ptr %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct._CMatchFinder, ptr %102, i32 0, i32 11
  store i32 %100, ptr %103, align 4
  %104 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 10
  %105 = load i32, ptr %104, align 4
  %106 = load ptr, ptr %6, align 8
  %107 = getelementptr inbounds %struct.CLzmaEnc, ptr %106, i32 0, i32 44
  store i32 %105, ptr %107, align 8
  %108 = getelementptr inbounds %struct._CLzmaEncProps, ptr %7, i32 0, i32 11
  %109 = load i32, ptr %108, align 4
  %110 = icmp sgt i32 %109, 1
  %111 = zext i1 %110 to i32
  %112 = load ptr, ptr %6, align 8
  %113 = getelementptr inbounds %struct.CLzmaEnc, ptr %112, i32 0, i32 48
  store i32 %111, ptr %113, align 8
  store i32 0, ptr %3, align 4
  br label %114

114:                                              ; preds = %94, %31
  %115 = load i32, ptr %3, align 4
  ret i32 %115
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_InitPriceTables(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 8, ptr %3, align 4
  br label %8

8:                                                ; preds = %42, %1
  %9 = load i32, ptr %3, align 4
  %10 = icmp ult i32 %9, 2048
  br i1 %10, label %11, label %45

11:                                               ; preds = %8
  store i32 4, ptr %4, align 4
  %12 = load i32, ptr %3, align 4
  store i32 %12, ptr %5, align 4
  store i32 0, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %13

13:                                               ; preds = %31, %11
  %14 = load i32, ptr %7, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i32, ptr %5, align 4
  %18 = load i32, ptr %5, align 4
  %19 = mul i32 %17, %18
  store i32 %19, ptr %5, align 4
  %20 = load i32, ptr %6, align 4
  %21 = shl i32 %20, 1
  store i32 %21, ptr %6, align 4
  br label %22

22:                                               ; preds = %25, %16
  %23 = load i32, ptr %5, align 4
  %24 = icmp uge i32 %23, 65536
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, ptr %5, align 4
  %27 = lshr i32 %26, 1
  store i32 %27, ptr %5, align 4
  %28 = load i32, ptr %6, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %6, align 4
  br label %22, !llvm.loop !13

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i32, ptr %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %7, align 4
  br label %13, !llvm.loop !14

34:                                               ; preds = %13
  %35 = load i32, ptr %6, align 4
  %36 = sub i32 161, %35
  %37 = load ptr, ptr %2, align 8
  %38 = load i32, ptr %3, align 4
  %39 = lshr i32 %38, 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %37, i64 %40
  store i32 %36, ptr %41, align 4
  br label %42

42:                                               ; preds = %34
  %43 = load i32, ptr %3, align 4
  %44 = add i32 %43, 16
  store i32 %44, ptr %3, align 4
  br label %8, !llvm.loop !15

45:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_Construct(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._CLzmaEncProps, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.CLzmaEnc, ptr %4, i32 0, i32 43
  call void @RangeEnc_Construct(ptr noundef %5)
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.CLzmaEnc, ptr %6, i32 0, i32 4
  call void @MatchFinder_Construct(ptr noundef %7)
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.CLzmaEnc, ptr %8, i32 0, i32 3
  call void @MatchFinderMt_Construct(ptr noundef %9)
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.CLzmaEnc, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.CLzmaEnc, ptr %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct._CMatchFinderMt, ptr %13, i32 0, i32 27
  store ptr %11, ptr %14, align 8
  call void @LzmaEncProps_Init(ptr noundef %3)
  %15 = load ptr, ptr %2, align 8
  %16 = call i32 @LzmaEnc_SetProps(ptr noundef %15, ptr noundef %3)
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.CLzmaEnc, ptr %17, i32 0, i32 12
  %19 = getelementptr inbounds [8192 x i8], ptr %18, i64 0, i64 0
  call void @LzmaEnc_FastPosInit(ptr noundef %19)
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.CLzmaEnc, ptr %20, i32 0, i32 13
  %22 = getelementptr inbounds [128 x i32], ptr %21, i64 0, i64 0
  call void @LzmaEnc_InitPriceTables(ptr noundef %22)
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.CLzmaEnc, ptr %23, i32 0, i32 29
  store ptr null, ptr %24, align 8
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.CLzmaEnc, ptr %25, i32 0, i32 53
  %27 = getelementptr inbounds %struct.CSaveState, ptr %26, i32 0, i32 0
  store ptr null, ptr %27, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RangeEnc_Construct(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.CRangeEnc, ptr %3, i32 0, i32 7
  store ptr null, ptr %4, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.CRangeEnc, ptr %5, i32 0, i32 6
  store ptr null, ptr %6, align 8
  ret void
}

declare void @MatchFinder_Construct(ptr noundef) #2

declare void @MatchFinderMt_Construct(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @LzmaEnc_Create(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.ISzAlloc, ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = call ptr %6(ptr noundef %7, i64 noundef 291032)
  store ptr %8, ptr %3, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8
  call void @LzmaEnc_Construct(ptr noundef %12)
  br label %13

13:                                               ; preds = %11, %1
  %14 = load ptr, ptr %3, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_FreeLits(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ISzAlloc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.CLzmaEnc, ptr %9, i32 0, i32 29
  %11 = load ptr, ptr %10, align 8
  call void %7(ptr noundef %8, ptr noundef %11)
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.ISzAlloc, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.CLzmaEnc, ptr %16, i32 0, i32 53
  %18 = getelementptr inbounds %struct.CSaveState, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  call void %14(ptr noundef %15, ptr noundef %19)
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct.CLzmaEnc, ptr %20, i32 0, i32 29
  store ptr null, ptr %21, align 8
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.CLzmaEnc, ptr %22, i32 0, i32 53
  %24 = getelementptr inbounds %struct.CSaveState, ptr %23, i32 0, i32 0
  store ptr null, ptr %24, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_Destruct(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %6, align 8
  call void @MatchFinderMt_Destruct(ptr noundef %8, ptr noundef %9)
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.CLzmaEnc, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %6, align 8
  call void @MatchFinder_Free(ptr noundef %11, ptr noundef %12)
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %5, align 8
  call void @LzmaEnc_FreeLits(ptr noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.CLzmaEnc, ptr %15, i32 0, i32 43
  %17 = load ptr, ptr %5, align 8
  call void @RangeEnc_Free(ptr noundef %16, ptr noundef %17)
  ret void
}

declare void @MatchFinderMt_Destruct(ptr noundef, ptr noundef) #2

declare void @MatchFinder_Free(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RangeEnc_Free(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ISzAlloc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.CRangeEnc, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  call void %7(ptr noundef %8, ptr noundef %11)
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.CRangeEnc, ptr %12, i32 0, i32 6
  store ptr null, ptr %13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_Destroy(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  call void @LzmaEnc_Destruct(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.ISzAlloc, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  call void %12(ptr noundef %13, ptr noundef %14)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_Init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.CLzmaEnc, ptr %8, i32 0, i32 18
  store i32 0, ptr %9, align 8
  store i32 0, ptr %3, align 4
  br label %10

10:                                               ; preds = %19, %1
  %11 = load i32, ptr %3, align 4
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i32 0, i32 17
  %16 = load i32, ptr %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i32], ptr %15, i64 0, i64 %17
  store i32 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load i32, ptr %3, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %3, align 4
  br label %10, !llvm.loop !16

22:                                               ; preds = %10
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.CLzmaEnc, ptr %23, i32 0, i32 43
  call void @RangeEnc_Init(ptr noundef %24)
  store i32 0, ptr %3, align 4
  br label %25

25:                                               ; preds = %73, %22
  %26 = load i32, ptr %3, align 4
  %27 = icmp ult i32 %26, 12
  br i1 %27, label %28, label %76

28:                                               ; preds = %25
  store i32 0, ptr %4, align 4
  br label %29

29:                                               ; preds = %49, %28
  %30 = load i32, ptr %4, align 4
  %31 = icmp ult i32 %30, 16
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.CLzmaEnc, ptr %33, i32 0, i32 30
  %35 = load i32, ptr %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [12 x [16 x i16]], ptr %34, i64 0, i64 %36
  %38 = load i32, ptr %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [16 x i16], ptr %37, i64 0, i64 %39
  store i16 1024, ptr %40, align 2
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr inbounds %struct.CLzmaEnc, ptr %41, i32 0, i32 35
  %43 = load i32, ptr %3, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [12 x [16 x i16]], ptr %42, i64 0, i64 %44
  %46 = load i32, ptr %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [16 x i16], ptr %45, i64 0, i64 %47
  store i16 1024, ptr %48, align 2
  br label %49

49:                                               ; preds = %32
  %50 = load i32, ptr %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %4, align 4
  br label %29, !llvm.loop !17

52:                                               ; preds = %29
  %53 = load ptr, ptr %2, align 8
  %54 = getelementptr inbounds %struct.CLzmaEnc, ptr %53, i32 0, i32 31
  %55 = load i32, ptr %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [12 x i16], ptr %54, i64 0, i64 %56
  store i16 1024, ptr %57, align 2
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr inbounds %struct.CLzmaEnc, ptr %58, i32 0, i32 32
  %60 = load i32, ptr %3, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [12 x i16], ptr %59, i64 0, i64 %61
  store i16 1024, ptr %62, align 2
  %63 = load ptr, ptr %2, align 8
  %64 = getelementptr inbounds %struct.CLzmaEnc, ptr %63, i32 0, i32 33
  %65 = load i32, ptr %3, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [12 x i16], ptr %64, i64 0, i64 %66
  store i16 1024, ptr %67, align 2
  %68 = load ptr, ptr %2, align 8
  %69 = getelementptr inbounds %struct.CLzmaEnc, ptr %68, i32 0, i32 34
  %70 = load i32, ptr %3, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [12 x i16], ptr %69, i64 0, i64 %71
  store i16 1024, ptr %72, align 2
  br label %73

73:                                               ; preds = %52
  %74 = load i32, ptr %3, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %3, align 4
  br label %25, !llvm.loop !18

76:                                               ; preds = %25
  %77 = load ptr, ptr %2, align 8
  %78 = getelementptr inbounds %struct.CLzmaEnc, ptr %77, i32 0, i32 25
  %79 = load i32, ptr %78, align 8
  %80 = load ptr, ptr %2, align 8
  %81 = getelementptr inbounds %struct.CLzmaEnc, ptr %80, i32 0, i32 24
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %79, %82
  %84 = shl i32 768, %83
  store i32 %84, ptr %5, align 4
  store i32 0, ptr %3, align 4
  br label %85

85:                                               ; preds = %96, %76
  %86 = load i32, ptr %3, align 4
  %87 = load i32, ptr %5, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load ptr, ptr %2, align 8
  %91 = getelementptr inbounds %struct.CLzmaEnc, ptr %90, i32 0, i32 29
  %92 = load ptr, ptr %91, align 8
  %93 = load i32, ptr %3, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i16, ptr %92, i64 %94
  store i16 1024, ptr %95, align 2
  br label %96

96:                                               ; preds = %89
  %97 = load i32, ptr %3, align 4
  %98 = add i32 %97, 1
  store i32 %98, ptr %3, align 4
  br label %85, !llvm.loop !19

99:                                               ; preds = %85
  store i32 0, ptr %3, align 4
  br label %100

100:                                              ; preds = %122, %99
  %101 = load i32, ptr %3, align 4
  %102 = icmp ult i32 %101, 4
  br i1 %102, label %103, label %125

103:                                              ; preds = %100
  %104 = load ptr, ptr %2, align 8
  %105 = getelementptr inbounds %struct.CLzmaEnc, ptr %104, i32 0, i32 36
  %106 = load i32, ptr %3, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [4 x [64 x i16]], ptr %105, i64 0, i64 %107
  %109 = getelementptr inbounds [64 x i16], ptr %108, i64 0, i64 0
  store ptr %109, ptr %6, align 8
  store i32 0, ptr %7, align 4
  br label %110

110:                                              ; preds = %118, %103
  %111 = load i32, ptr %7, align 4
  %112 = icmp ult i32 %111, 64
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load ptr, ptr %6, align 8
  %115 = load i32, ptr %7, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i16, ptr %114, i64 %116
  store i16 1024, ptr %117, align 2
  br label %118

118:                                              ; preds = %113
  %119 = load i32, ptr %7, align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr %7, align 4
  br label %110, !llvm.loop !20

121:                                              ; preds = %110
  br label %122

122:                                              ; preds = %121
  %123 = load i32, ptr %3, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %3, align 4
  br label %100, !llvm.loop !21

125:                                              ; preds = %100
  store i32 0, ptr %3, align 4
  br label %126

126:                                              ; preds = %135, %125
  %127 = load i32, ptr %3, align 4
  %128 = icmp ult i32 %127, 114
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load ptr, ptr %2, align 8
  %131 = getelementptr inbounds %struct.CLzmaEnc, ptr %130, i32 0, i32 37
  %132 = load i32, ptr %3, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [114 x i16], ptr %131, i64 0, i64 %133
  store i16 1024, ptr %134, align 2
  br label %135

135:                                              ; preds = %129
  %136 = load i32, ptr %3, align 4
  %137 = add i32 %136, 1
  store i32 %137, ptr %3, align 4
  br label %126, !llvm.loop !22

138:                                              ; preds = %126
  %139 = load ptr, ptr %2, align 8
  %140 = getelementptr inbounds %struct.CLzmaEnc, ptr %139, i32 0, i32 39
  %141 = getelementptr inbounds %struct.CLenPriceEnc, ptr %140, i32 0, i32 0
  call void @LenEnc_Init(ptr noundef %141)
  %142 = load ptr, ptr %2, align 8
  %143 = getelementptr inbounds %struct.CLzmaEnc, ptr %142, i32 0, i32 40
  %144 = getelementptr inbounds %struct.CLenPriceEnc, ptr %143, i32 0, i32 0
  call void @LenEnc_Init(ptr noundef %144)
  store i32 0, ptr %3, align 4
  br label %145

145:                                              ; preds = %154, %138
  %146 = load i32, ptr %3, align 4
  %147 = icmp ult i32 %146, 16
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load ptr, ptr %2, align 8
  %150 = getelementptr inbounds %struct.CLzmaEnc, ptr %149, i32 0, i32 38
  %151 = load i32, ptr %3, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds [16 x i16], ptr %150, i64 0, i64 %152
  store i16 1024, ptr %153, align 2
  br label %154

154:                                              ; preds = %148
  %155 = load i32, ptr %3, align 4
  %156 = add i32 %155, 1
  store i32 %156, ptr %3, align 4
  br label %145, !llvm.loop !23

157:                                              ; preds = %145
  %158 = load ptr, ptr %2, align 8
  %159 = getelementptr inbounds %struct.CLzmaEnc, ptr %158, i32 0, i32 6
  store i32 0, ptr %159, align 8
  %160 = load ptr, ptr %2, align 8
  %161 = getelementptr inbounds %struct.CLzmaEnc, ptr %160, i32 0, i32 7
  store i32 0, ptr %161, align 4
  %162 = load ptr, ptr %2, align 8
  %163 = getelementptr inbounds %struct.CLzmaEnc, ptr %162, i32 0, i32 16
  store i32 0, ptr %163, align 4
  %164 = load ptr, ptr %2, align 8
  %165 = getelementptr inbounds %struct.CLzmaEnc, ptr %164, i32 0, i32 26
  %166 = load i32, ptr %165, align 4
  %167 = shl i32 1, %166
  %168 = sub nsw i32 %167, 1
  %169 = load ptr, ptr %2, align 8
  %170 = getelementptr inbounds %struct.CLzmaEnc, ptr %169, i32 0, i32 28
  store i32 %168, ptr %170, align 4
  %171 = load ptr, ptr %2, align 8
  %172 = getelementptr inbounds %struct.CLzmaEnc, ptr %171, i32 0, i32 25
  %173 = load i32, ptr %172, align 8
  %174 = shl i32 1, %173
  %175 = sub nsw i32 %174, 1
  %176 = load ptr, ptr %2, align 8
  %177 = getelementptr inbounds %struct.CLzmaEnc, ptr %176, i32 0, i32 27
  store i32 %175, ptr %177, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RangeEnc_Init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.CRangeEnc, ptr %3, i32 0, i32 2
  store i64 0, ptr %4, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.CRangeEnc, ptr %5, i32 0, i32 0
  store i32 -1, ptr %6, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.CRangeEnc, ptr %7, i32 0, i32 3
  store i64 1, ptr %8, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.CRangeEnc, ptr %9, i32 0, i32 1
  store i8 0, ptr %10, align 4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.CRangeEnc, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.CRangeEnc, ptr %14, i32 0, i32 4
  store ptr %13, ptr %15, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.CRangeEnc, ptr %16, i32 0, i32 8
  store i64 0, ptr %17, align 8
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.CRangeEnc, ptr %18, i32 0, i32 9
  store i32 0, ptr %19, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LenEnc_Init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.CLenEnc, ptr %4, i32 0, i32 1
  store i16 1024, ptr %5, align 2
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.CLenEnc, ptr %6, i32 0, i32 0
  store i16 1024, ptr %7, align 2
  store i32 0, ptr %3, align 4
  br label %8

8:                                                ; preds = %17, %1
  %9 = load i32, ptr %3, align 4
  %10 = icmp ult i32 %9, 128
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.CLenEnc, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [128 x i16], ptr %13, i64 0, i64 %15
  store i16 1024, ptr %16, align 2
  br label %17

17:                                               ; preds = %11
  %18 = load i32, ptr %3, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %3, align 4
  br label %8, !llvm.loop !24

20:                                               ; preds = %8
  store i32 0, ptr %3, align 4
  br label %21

21:                                               ; preds = %30, %20
  %22 = load i32, ptr %3, align 4
  %23 = icmp ult i32 %22, 128
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.CLenEnc, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [128 x i16], ptr %26, i64 0, i64 %28
  store i16 1024, ptr %29, align 2
  br label %30

30:                                               ; preds = %24
  %31 = load i32, ptr %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %3, align 4
  br label %21, !llvm.loop !25

33:                                               ; preds = %21
  store i32 0, ptr %3, align 4
  br label %34

34:                                               ; preds = %43, %33
  %35 = load i32, ptr %3, align 4
  %36 = icmp ult i32 %35, 256
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.CLenEnc, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [256 x i16], ptr %39, i64 0, i64 %41
  store i16 1024, ptr %42, align 2
  br label %43

43:                                               ; preds = %37
  %44 = load i32, ptr %3, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %3, align 4
  br label %34, !llvm.loop !26

46:                                               ; preds = %34
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_InitPrices(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.CLzmaEnc, ptr %3, i32 0, i32 42
  %5 = load i32, ptr %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  call void @FillDistancesPrices(ptr noundef %8)
  %9 = load ptr, ptr %2, align 8
  call void @FillAlignPrices(ptr noundef %9)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.CLzmaEnc, ptr %11, i32 0, i32 15
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, 1
  %15 = sub i32 %14, 2
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.CLzmaEnc, ptr %16, i32 0, i32 40
  %18 = getelementptr inbounds %struct.CLenPriceEnc, ptr %17, i32 0, i32 2
  store i32 %15, ptr %18, align 4
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.CLzmaEnc, ptr %19, i32 0, i32 39
  %21 = getelementptr inbounds %struct.CLenPriceEnc, ptr %20, i32 0, i32 2
  store i32 %15, ptr %21, align 4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.CLzmaEnc, ptr %22, i32 0, i32 39
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.CLzmaEnc, ptr %24, i32 0, i32 26
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 1, %26
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.CLzmaEnc, ptr %28, i32 0, i32 13
  %30 = getelementptr inbounds [128 x i32], ptr %29, i64 0, i64 0
  call void @LenPriceEnc_UpdateTables(ptr noundef %23, i32 noundef %27, ptr noundef %30)
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct.CLzmaEnc, ptr %31, i32 0, i32 40
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.CLzmaEnc, ptr %33, i32 0, i32 26
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 1, %35
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.CLzmaEnc, ptr %37, i32 0, i32 13
  %39 = getelementptr inbounds [128 x i32], ptr %38, i64 0, i64 0
  call void @LenPriceEnc_UpdateTables(ptr noundef %32, i32 noundef %36, ptr noundef %39)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillDistancesPrices(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [128 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 4, ptr %4, align 4
  br label %14

14:                                               ; preds = %55, %1
  %15 = load i32, ptr %4, align 4
  %16 = icmp ult i32 %15, 128
  br i1 %16, label %17, label %58

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.CLzmaEnc, ptr %18, i32 0, i32 12
  %20 = load i32, ptr %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [8192 x i8], ptr %19, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  store i32 %24, ptr %6, align 4
  %25 = load i32, ptr %6, align 4
  %26 = lshr i32 %25, 1
  %27 = sub i32 %26, 1
  store i32 %27, ptr %7, align 4
  %28 = load i32, ptr %6, align 4
  %29 = and i32 %28, 1
  %30 = or i32 2, %29
  %31 = load i32, ptr %7, align 4
  %32 = shl i32 %30, %31
  store i32 %32, ptr %8, align 4
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.CLzmaEnc, ptr %33, i32 0, i32 37
  %35 = getelementptr inbounds [114 x i16], ptr %34, i64 0, i64 0
  %36 = load i32, ptr %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i16, ptr %35, i64 %37
  %39 = load i32, ptr %6, align 4
  %40 = zext i32 %39 to i64
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i16, ptr %38, i64 %41
  %43 = getelementptr inbounds i16, ptr %42, i64 -1
  %44 = load i32, ptr %7, align 4
  %45 = load i32, ptr %4, align 4
  %46 = load i32, ptr %8, align 4
  %47 = sub i32 %45, %46
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds %struct.CLzmaEnc, ptr %48, i32 0, i32 13
  %50 = getelementptr inbounds [128 x i32], ptr %49, i64 0, i64 0
  %51 = call i32 @RcTree_ReverseGetPrice(ptr noundef %43, i32 noundef %44, i32 noundef %47, ptr noundef %50)
  %52 = load i32, ptr %4, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [128 x i32], ptr %3, i64 0, i64 %53
  store i32 %51, ptr %54, align 4
  br label %55

55:                                               ; preds = %17
  %56 = load i32, ptr %4, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %4, align 4
  br label %14, !llvm.loop !27

58:                                               ; preds = %14
  store i32 0, ptr %5, align 4
  br label %59

59:                                               ; preds = %168, %58
  %60 = load i32, ptr %5, align 4
  %61 = icmp ult i32 %60, 4
  br i1 %61, label %62, label %171

62:                                               ; preds = %59
  %63 = load ptr, ptr %2, align 8
  %64 = getelementptr inbounds %struct.CLzmaEnc, ptr %63, i32 0, i32 36
  %65 = load i32, ptr %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [4 x [64 x i16]], ptr %64, i64 0, i64 %66
  %68 = getelementptr inbounds [64 x i16], ptr %67, i64 0, i64 0
  store ptr %68, ptr %10, align 8
  %69 = load ptr, ptr %2, align 8
  %70 = getelementptr inbounds %struct.CLzmaEnc, ptr %69, i32 0, i32 19
  %71 = load i32, ptr %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [4 x [64 x i32]], ptr %70, i64 0, i64 %72
  %74 = getelementptr inbounds [64 x i32], ptr %73, i64 0, i64 0
  store ptr %74, ptr %11, align 8
  store i32 0, ptr %9, align 4
  br label %75

75:                                               ; preds = %92, %62
  %76 = load i32, ptr %9, align 4
  %77 = load ptr, ptr %2, align 8
  %78 = getelementptr inbounds %struct.CLzmaEnc, ptr %77, i32 0, i32 23
  %79 = load i32, ptr %78, align 8
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = load ptr, ptr %10, align 8
  %83 = load i32, ptr %9, align 4
  %84 = load ptr, ptr %2, align 8
  %85 = getelementptr inbounds %struct.CLzmaEnc, ptr %84, i32 0, i32 13
  %86 = getelementptr inbounds [128 x i32], ptr %85, i64 0, i64 0
  %87 = call i32 @RcTree_GetPrice(ptr noundef %82, i32 noundef 6, i32 noundef %83, ptr noundef %86)
  %88 = load ptr, ptr %11, align 8
  %89 = load i32, ptr %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %88, i64 %90
  store i32 %87, ptr %91, align 4
  br label %92

92:                                               ; preds = %81
  %93 = load i32, ptr %9, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %9, align 4
  br label %75, !llvm.loop !28

95:                                               ; preds = %75
  store i32 14, ptr %9, align 4
  br label %96

96:                                               ; preds = %114, %95
  %97 = load i32, ptr %9, align 4
  %98 = load ptr, ptr %2, align 8
  %99 = getelementptr inbounds %struct.CLzmaEnc, ptr %98, i32 0, i32 23
  %100 = load i32, ptr %99, align 8
  %101 = icmp ult i32 %97, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %96
  %103 = load i32, ptr %9, align 4
  %104 = lshr i32 %103, 1
  %105 = sub i32 %104, 1
  %106 = sub i32 %105, 4
  %107 = shl i32 %106, 4
  %108 = load ptr, ptr %11, align 8
  %109 = load i32, ptr %9, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, ptr %108, i64 %110
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, %107
  store i32 %113, ptr %111, align 4
  br label %114

114:                                              ; preds = %102
  %115 = load i32, ptr %9, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %9, align 4
  br label %96, !llvm.loop !29

117:                                              ; preds = %96
  %118 = load ptr, ptr %2, align 8
  %119 = getelementptr inbounds %struct.CLzmaEnc, ptr %118, i32 0, i32 20
  %120 = load i32, ptr %5, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [4 x [128 x i32]], ptr %119, i64 0, i64 %121
  %123 = getelementptr inbounds [128 x i32], ptr %122, i64 0, i64 0
  store ptr %123, ptr %12, align 8
  store i32 0, ptr %13, align 4
  br label %124

124:                                              ; preds = %137, %117
  %125 = load i32, ptr %13, align 4
  %126 = icmp ult i32 %125, 4
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load ptr, ptr %11, align 8
  %129 = load i32, ptr %13, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, ptr %128, i64 %130
  %132 = load i32, ptr %131, align 4
  %133 = load ptr, ptr %12, align 8
  %134 = load i32, ptr %13, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, ptr %133, i64 %135
  store i32 %132, ptr %136, align 4
  br label %137

137:                                              ; preds = %127
  %138 = load i32, ptr %13, align 4
  %139 = add i32 %138, 1
  store i32 %139, ptr %13, align 4
  br label %124, !llvm.loop !30

140:                                              ; preds = %124
  br label %141

141:                                              ; preds = %164, %140
  %142 = load i32, ptr %13, align 4
  %143 = icmp ult i32 %142, 128
  br i1 %143, label %144, label %167

144:                                              ; preds = %141
  %145 = load ptr, ptr %11, align 8
  %146 = load ptr, ptr %2, align 8
  %147 = getelementptr inbounds %struct.CLzmaEnc, ptr %146, i32 0, i32 12
  %148 = load i32, ptr %13, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [8192 x i8], ptr %147, i64 0, i64 %149
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds i32, ptr %145, i64 %152
  %154 = load i32, ptr %153, align 4
  %155 = load i32, ptr %13, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds [128 x i32], ptr %3, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %154, %158
  %160 = load ptr, ptr %12, align 8
  %161 = load i32, ptr %13, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, ptr %160, i64 %162
  store i32 %159, ptr %163, align 4
  br label %164

164:                                              ; preds = %144
  %165 = load i32, ptr %13, align 4
  %166 = add i32 %165, 1
  store i32 %166, ptr %13, align 4
  br label %141, !llvm.loop !31

167:                                              ; preds = %141
  br label %168

168:                                              ; preds = %167
  %169 = load i32, ptr %5, align 4
  %170 = add i32 %169, 1
  store i32 %170, ptr %5, align 4
  br label %59, !llvm.loop !32

171:                                              ; preds = %59
  %172 = load ptr, ptr %2, align 8
  %173 = getelementptr inbounds %struct.CLzmaEnc, ptr %172, i32 0, i32 46
  store i32 0, ptr %173, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillAlignPrices(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, ptr %3, align 4
  %6 = icmp ult i32 %5, 16
  br i1 %6, label %7, label %24

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.CLzmaEnc, ptr %8, i32 0, i32 38
  %10 = getelementptr inbounds [16 x i16], ptr %9, i64 0, i64 0
  %11 = load i32, ptr %3, align 4
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.CLzmaEnc, ptr %12, i32 0, i32 13
  %14 = getelementptr inbounds [128 x i32], ptr %13, i64 0, i64 0
  %15 = call i32 @RcTree_ReverseGetPrice(ptr noundef %10, i32 noundef 4, i32 noundef %11, ptr noundef %14)
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.CLzmaEnc, ptr %16, i32 0, i32 21
  %18 = load i32, ptr %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [16 x i32], ptr %17, i64 0, i64 %19
  store i32 %15, ptr %20, align 4
  br label %21

21:                                               ; preds = %7
  %22 = load i32, ptr %3, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %3, align 4
  br label %4, !llvm.loop !33

24:                                               ; preds = %4
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.CLzmaEnc, ptr %25, i32 0, i32 22
  store i32 0, ptr %26, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LenPriceEnc_UpdateTables(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  store i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %16, %3
  %9 = load i32, ptr %7, align 4
  %10 = load i32, ptr %5, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8
  %14 = load i32, ptr %7, align 4
  %15 = load ptr, ptr %6, align 8
  call void @LenPriceEnc_UpdateTable(ptr noundef %13, i32 noundef %14, ptr noundef %15)
  br label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %7, align 4
  br label %8, !llvm.loop !34

19:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaEnc_PrepareForLzma2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %12 = load ptr, ptr %6, align 8
  store ptr %12, ptr %11, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = load ptr, ptr %11, align 8
  %15 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct._CMatchFinder, ptr %15, i32 0, i32 13
  store ptr %13, ptr %16, align 8
  %17 = load ptr, ptr %11, align 8
  %18 = getelementptr inbounds %struct.CLzmaEnc, ptr %17, i32 0, i32 52
  store i32 1, ptr %18, align 8
  %19 = load ptr, ptr %11, align 8
  %20 = load i32, ptr %8, align 4
  %21 = load ptr, ptr %9, align 8
  %22 = load ptr, ptr %10, align 8
  %23 = call i32 @LzmaEnc_AllocAndInit(ptr noundef %19, i32 noundef %20, ptr noundef %21, ptr noundef %22)
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LzmaEnc_AllocAndInit(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store i32 0, ptr %10, align 4
  br label %12

12:                                               ; preds = %24, %4
  %13 = load i32, ptr %10, align 4
  %14 = icmp ult i32 %13, 31
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds %struct.CLzmaEnc, ptr %16, i32 0, i32 50
  %18 = load i32, ptr %17, align 8
  %19 = load i32, ptr %10, align 4
  %20 = shl i32 1, %19
  %21 = icmp ule i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %27

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %10, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %10, align 4
  br label %12, !llvm.loop !35

27:                                               ; preds = %22, %12
  %28 = load i32, ptr %10, align 4
  %29 = mul i32 %28, 2
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds %struct.CLzmaEnc, ptr %30, i32 0, i32 23
  store i32 %29, ptr %31, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds %struct.CLzmaEnc, ptr %32, i32 0, i32 47
  store i32 0, ptr %33, align 4
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds %struct.CLzmaEnc, ptr %34, i32 0, i32 49
  store i32 0, ptr %35, align 4
  %36 = load ptr, ptr %6, align 8
  %37 = load i32, ptr %7, align 4
  %38 = load ptr, ptr %8, align 8
  %39 = load ptr, ptr %9, align 8
  %40 = call i32 @LzmaEnc_Alloc(ptr noundef %36, i32 noundef %37, ptr noundef %38, ptr noundef %39)
  store i32 %40, ptr %11, align 4
  %41 = load i32, ptr %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = load i32, ptr %11, align 4
  store i32 %44, ptr %5, align 4
  br label %50

45:                                               ; preds = %27
  %46 = load ptr, ptr %6, align 8
  call void @LzmaEnc_Init(ptr noundef %46)
  %47 = load ptr, ptr %6, align 8
  call void @LzmaEnc_InitPrices(ptr noundef %47)
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr inbounds %struct.CLzmaEnc, ptr %48, i32 0, i32 45
  store i64 0, ptr %49, align 8
  store i32 0, ptr %5, align 4
  br label %50

50:                                               ; preds = %45, %43
  %51 = load i32, ptr %5, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaEnc_MemPrepare(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store i32 %3, ptr %10, align 4
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  %14 = load ptr, ptr %7, align 8
  store ptr %14, ptr %13, align 8
  %15 = load ptr, ptr %13, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = load i64, ptr %9, align 8
  call void @LzmaEnc_SetInputBuf(ptr noundef %15, ptr noundef %16, i64 noundef %17)
  %18 = load ptr, ptr %13, align 8
  %19 = getelementptr inbounds %struct.CLzmaEnc, ptr %18, i32 0, i32 52
  store i32 1, ptr %19, align 8
  %20 = load ptr, ptr %13, align 8
  %21 = load i32, ptr %10, align 4
  %22 = load ptr, ptr %11, align 8
  %23 = load ptr, ptr %12, align 8
  %24 = call i32 @LzmaEnc_AllocAndInit(ptr noundef %20, i32 noundef %21, ptr noundef %22, ptr noundef %23)
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LzmaEnc_SetInputBuf(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct._CMatchFinder, ptr %8, i32 0, i32 19
  store i32 1, ptr %9, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.CLzmaEnc, ptr %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct._CMatchFinder, ptr %12, i32 0, i32 12
  store ptr %10, ptr %13, align 8
  %14 = load i64, ptr %6, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.CLzmaEnc, ptr %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct._CMatchFinder, ptr %16, i32 0, i32 20
  store i64 %14, ptr %17, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_Finish(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  store ptr %4, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.CLzmaEnc, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.CLzmaEnc, ptr %10, i32 0, i32 3
  call void @MatchFinderMt_ReleaseStream(ptr noundef %11)
  br label %12

12:                                               ; preds = %9, %1
  ret void
}

declare void @MatchFinderMt_ReleaseStream(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaEnc_GetNumAvailableBytes(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  store ptr %4, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.CLzmaEnc, ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct._IMatchFinder, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.CLzmaEnc, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 %8(ptr noundef %11)
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @LzmaEnc_GetCurBuf(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  store ptr %4, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.CLzmaEnc, ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct._IMatchFinder, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.CLzmaEnc, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = call ptr %8(ptr noundef %11)
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.CLzmaEnc, ptr %13, i32 0, i32 16
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = sub i64 0, %16
  %18 = getelementptr inbounds i8, ptr %12, i64 %17
  ret ptr %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaEnc_CodeOneMemBlock(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.CSeqOutStreamBuf, align 8
  store ptr %0, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store ptr %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store i32 %4, ptr %12, align 4
  store ptr %5, ptr %13, align 8
  %18 = load ptr, ptr %8, align 8
  store ptr %18, ptr %14, align 8
  %19 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %17, i32 0, i32 0
  %20 = getelementptr inbounds %struct.ISeqOutStream, ptr %19, i32 0, i32 0
  store ptr @MyWrite, ptr %20, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %17, i32 0, i32 1
  store ptr %21, ptr %22, align 8
  %23 = load ptr, ptr %11, align 8
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %17, i32 0, i32 2
  store i64 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %17, i32 0, i32 3
  store i32 0, ptr %26, align 8
  %27 = load ptr, ptr %14, align 8
  %28 = getelementptr inbounds %struct.CLzmaEnc, ptr %27, i32 0, i32 44
  store i32 0, ptr %28, align 8
  %29 = load ptr, ptr %14, align 8
  %30 = getelementptr inbounds %struct.CLzmaEnc, ptr %29, i32 0, i32 47
  store i32 0, ptr %30, align 4
  %31 = load ptr, ptr %14, align 8
  %32 = getelementptr inbounds %struct.CLzmaEnc, ptr %31, i32 0, i32 49
  store i32 0, ptr %32, align 4
  %33 = load i32, ptr %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load ptr, ptr %14, align 8
  call void @LzmaEnc_Init(ptr noundef %36)
  br label %37

37:                                               ; preds = %35, %6
  %38 = load ptr, ptr %14, align 8
  call void @LzmaEnc_InitPrices(ptr noundef %38)
  %39 = load ptr, ptr %14, align 8
  %40 = getelementptr inbounds %struct.CLzmaEnc, ptr %39, i32 0, i32 45
  %41 = load i64, ptr %40, align 8
  store i64 %41, ptr %15, align 8
  %42 = load ptr, ptr %14, align 8
  %43 = getelementptr inbounds %struct.CLzmaEnc, ptr %42, i32 0, i32 43
  call void @RangeEnc_Init(ptr noundef %43)
  %44 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %17, i32 0, i32 0
  %45 = load ptr, ptr %14, align 8
  %46 = getelementptr inbounds %struct.CLzmaEnc, ptr %45, i32 0, i32 43
  %47 = getelementptr inbounds %struct.CRangeEnc, ptr %46, i32 0, i32 7
  store ptr %44, ptr %47, align 8
  %48 = load ptr, ptr %14, align 8
  %49 = load i32, ptr %12, align 4
  %50 = load ptr, ptr %13, align 8
  %51 = load i32, ptr %50, align 4
  %52 = call i32 @LzmaEnc_CodeOneBlock(ptr noundef %48, i32 noundef 1, i32 noundef %49, i32 noundef %51)
  store i32 %52, ptr %16, align 4
  %53 = load ptr, ptr %14, align 8
  %54 = getelementptr inbounds %struct.CLzmaEnc, ptr %53, i32 0, i32 45
  %55 = load i64, ptr %54, align 8
  %56 = load i64, ptr %15, align 8
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = load ptr, ptr %13, align 8
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %17, i32 0, i32 2
  %61 = load i64, ptr %60, align 8
  %62 = load ptr, ptr %11, align 8
  %63 = load i64, ptr %62, align 8
  %64 = sub i64 %63, %61
  store i64 %64, ptr %62, align 8
  %65 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %17, i32 0, i32 3
  %66 = load i32, ptr %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %37
  store i32 7, ptr %7, align 4
  br label %71

69:                                               ; preds = %37
  %70 = load i32, ptr %16, align 4
  store i32 %70, ptr %7, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = load i32, ptr %7, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MyWrite(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  store ptr %8, ptr %7, align 8
  %9 = load ptr, ptr %7, align 8
  %10 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %9, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = load i64, ptr %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load ptr, ptr %7, align 8
  %16 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %15, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %6, align 8
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %18, i32 0, i32 3
  store i32 1, ptr %19, align 8
  br label %20

20:                                               ; preds = %14, %3
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = load i64, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %24, i64 %25, i1 false)
  %26 = load i64, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %27, i32 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = sub i64 %29, %26
  store i64 %30, ptr %28, align 8
  %31 = load i64, ptr %6, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds i8, ptr %34, i64 %31
  store ptr %35, ptr %33, align 8
  %36 = load i64, ptr %6, align 8
  ret i64 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LzmaEnc_CodeOneBlock(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds %struct.CLzmaEnc, ptr %28, i32 0, i32 52
  %30 = load i32, ptr %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %4
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds %struct.CLzmaEnc, ptr %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct._IMatchFinder, ptr %34, i32 0, i32 0
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %6, align 8
  %38 = getelementptr inbounds %struct.CLzmaEnc, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  call void %36(ptr noundef %39)
  %40 = load ptr, ptr %6, align 8
  %41 = getelementptr inbounds %struct.CLzmaEnc, ptr %40, i32 0, i32 52
  store i32 0, ptr %41, align 8
  br label %42

42:                                               ; preds = %32, %4
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds %struct.CLzmaEnc, ptr %43, i32 0, i32 47
  %45 = load i32, ptr %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr inbounds %struct.CLzmaEnc, ptr %48, i32 0, i32 49
  %50 = load i32, ptr %49, align 4
  store i32 %50, ptr %5, align 4
  br label %700

51:                                               ; preds = %42
  %52 = load ptr, ptr %6, align 8
  %53 = call i32 @CheckErrors(ptr noundef %52)
  store i32 %53, ptr %12, align 4
  %54 = load i32, ptr %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, ptr %12, align 4
  store i32 %57, ptr %5, align 4
  br label %700

58:                                               ; preds = %51
  %59 = load ptr, ptr %6, align 8
  %60 = getelementptr inbounds %struct.CLzmaEnc, ptr %59, i32 0, i32 45
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, ptr %10, align 4
  %63 = load i32, ptr %10, align 4
  store i32 %63, ptr %11, align 4
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds %struct.CLzmaEnc, ptr %64, i32 0, i32 45
  %66 = load i64, ptr %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %128

68:                                               ; preds = %58
  %69 = load ptr, ptr %6, align 8
  %70 = getelementptr inbounds %struct.CLzmaEnc, ptr %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct._IMatchFinder, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = load ptr, ptr %6, align 8
  %74 = getelementptr inbounds %struct.CLzmaEnc, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8
  %76 = call i32 %72(ptr noundef %75)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load ptr, ptr %6, align 8
  %80 = load i32, ptr %10, align 4
  %81 = call i32 @Flush(ptr noundef %79, i32 noundef %80)
  store i32 %81, ptr %5, align 4
  br label %700

82:                                               ; preds = %68
  %83 = load ptr, ptr %6, align 8
  %84 = call i32 @ReadMatchDistances(ptr noundef %83, ptr noundef %13)
  %85 = load ptr, ptr %6, align 8
  %86 = getelementptr inbounds %struct.CLzmaEnc, ptr %85, i32 0, i32 43
  %87 = load ptr, ptr %6, align 8
  %88 = getelementptr inbounds %struct.CLzmaEnc, ptr %87, i32 0, i32 30
  %89 = load ptr, ptr %6, align 8
  %90 = getelementptr inbounds %struct.CLzmaEnc, ptr %89, i32 0, i32 18
  %91 = load i32, ptr %90, align 8
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [12 x [16 x i16]], ptr %88, i64 0, i64 %92
  %94 = getelementptr inbounds [16 x i16], ptr %93, i64 0, i64 0
  call void @RangeEnc_EncodeBit(ptr noundef %86, ptr noundef %94, i32 noundef 0)
  %95 = load ptr, ptr %6, align 8
  %96 = getelementptr inbounds %struct.CLzmaEnc, ptr %95, i32 0, i32 18
  %97 = load i32, ptr %96, align 8
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [12 x i32], ptr @kLiteralNextStates, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4
  %101 = load ptr, ptr %6, align 8
  %102 = getelementptr inbounds %struct.CLzmaEnc, ptr %101, i32 0, i32 18
  store i32 %100, ptr %102, align 8
  %103 = load ptr, ptr %6, align 8
  %104 = getelementptr inbounds %struct.CLzmaEnc, ptr %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct._IMatchFinder, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 8
  %107 = load ptr, ptr %6, align 8
  %108 = getelementptr inbounds %struct.CLzmaEnc, ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 8
  %110 = load ptr, ptr %6, align 8
  %111 = getelementptr inbounds %struct.CLzmaEnc, ptr %110, i32 0, i32 16
  %112 = load i32, ptr %111, align 4
  %113 = sub i32 0, %112
  %114 = call zeroext i8 %106(ptr noundef %109, i32 noundef %113)
  store i8 %114, ptr %14, align 1
  %115 = load ptr, ptr %6, align 8
  %116 = getelementptr inbounds %struct.CLzmaEnc, ptr %115, i32 0, i32 43
  %117 = load ptr, ptr %6, align 8
  %118 = getelementptr inbounds %struct.CLzmaEnc, ptr %117, i32 0, i32 29
  %119 = load ptr, ptr %118, align 8
  %120 = load i8, ptr %14, align 1
  %121 = zext i8 %120 to i32
  call void @LitEnc_Encode(ptr noundef %116, ptr noundef %119, i32 noundef %121)
  %122 = load ptr, ptr %6, align 8
  %123 = getelementptr inbounds %struct.CLzmaEnc, ptr %122, i32 0, i32 16
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, -1
  store i32 %125, ptr %123, align 4
  %126 = load i32, ptr %10, align 4
  %127 = add i32 %126, 1
  store i32 %127, ptr %10, align 4
  br label %128

128:                                              ; preds = %82, %58
  %129 = load ptr, ptr %6, align 8
  %130 = getelementptr inbounds %struct.CLzmaEnc, ptr %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct._IMatchFinder, ptr %130, i32 0, i32 2
  %132 = load ptr, ptr %131, align 8
  %133 = load ptr, ptr %6, align 8
  %134 = getelementptr inbounds %struct.CLzmaEnc, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 8
  %136 = call i32 %132(ptr noundef %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %688

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %686, %138
  %140 = load ptr, ptr %6, align 8
  %141 = getelementptr inbounds %struct.CLzmaEnc, ptr %140, i32 0, i32 42
  %142 = load i32, ptr %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load ptr, ptr %6, align 8
  %146 = call i32 @GetOptimumFast(ptr noundef %145, ptr noundef %15)
  store i32 %146, ptr %16, align 4
  br label %151

147:                                              ; preds = %139
  %148 = load ptr, ptr %6, align 8
  %149 = load i32, ptr %10, align 4
  %150 = call i32 @GetOptimum(ptr noundef %148, i32 noundef %149, ptr noundef %15)
  store i32 %150, ptr %16, align 4
  br label %151

151:                                              ; preds = %147, %144
  %152 = load i32, ptr %10, align 4
  %153 = load ptr, ptr %6, align 8
  %154 = getelementptr inbounds %struct.CLzmaEnc, ptr %153, i32 0, i32 28
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %152, %155
  store i32 %156, ptr %17, align 4
  %157 = load i32, ptr %16, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %252

159:                                              ; preds = %151
  %160 = load i32, ptr %15, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %252

162:                                              ; preds = %159
  %163 = load ptr, ptr %6, align 8
  %164 = getelementptr inbounds %struct.CLzmaEnc, ptr %163, i32 0, i32 43
  %165 = load ptr, ptr %6, align 8
  %166 = getelementptr inbounds %struct.CLzmaEnc, ptr %165, i32 0, i32 30
  %167 = load ptr, ptr %6, align 8
  %168 = getelementptr inbounds %struct.CLzmaEnc, ptr %167, i32 0, i32 18
  %169 = load i32, ptr %168, align 8
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds [12 x [16 x i16]], ptr %166, i64 0, i64 %170
  %172 = load i32, ptr %17, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds [16 x i16], ptr %171, i64 0, i64 %173
  call void @RangeEnc_EncodeBit(ptr noundef %164, ptr noundef %174, i32 noundef 0)
  %175 = load ptr, ptr %6, align 8
  %176 = getelementptr inbounds %struct.CLzmaEnc, ptr %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct._IMatchFinder, ptr %176, i32 0, i32 3
  %178 = load ptr, ptr %177, align 8
  %179 = load ptr, ptr %6, align 8
  %180 = getelementptr inbounds %struct.CLzmaEnc, ptr %179, i32 0, i32 1
  %181 = load ptr, ptr %180, align 8
  %182 = call ptr %178(ptr noundef %181)
  %183 = load ptr, ptr %6, align 8
  %184 = getelementptr inbounds %struct.CLzmaEnc, ptr %183, i32 0, i32 16
  %185 = load i32, ptr %184, align 4
  %186 = zext i32 %185 to i64
  %187 = sub i64 0, %186
  %188 = getelementptr inbounds i8, ptr %182, i64 %187
  store ptr %188, ptr %20, align 8
  %189 = load ptr, ptr %20, align 8
  %190 = load i8, ptr %189, align 1
  store i8 %190, ptr %18, align 1
  %191 = load ptr, ptr %6, align 8
  %192 = getelementptr inbounds %struct.CLzmaEnc, ptr %191, i32 0, i32 29
  %193 = load ptr, ptr %192, align 8
  %194 = load i32, ptr %10, align 4
  %195 = load ptr, ptr %6, align 8
  %196 = getelementptr inbounds %struct.CLzmaEnc, ptr %195, i32 0, i32 27
  %197 = load i32, ptr %196, align 8
  %198 = and i32 %194, %197
  %199 = load ptr, ptr %6, align 8
  %200 = getelementptr inbounds %struct.CLzmaEnc, ptr %199, i32 0, i32 24
  %201 = load i32, ptr %200, align 4
  %202 = shl i32 %198, %201
  %203 = load ptr, ptr %20, align 8
  %204 = getelementptr inbounds i8, ptr %203, i64 -1
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = load ptr, ptr %6, align 8
  %208 = getelementptr inbounds %struct.CLzmaEnc, ptr %207, i32 0, i32 24
  %209 = load i32, ptr %208, align 4
  %210 = sub i32 8, %209
  %211 = ashr i32 %206, %210
  %212 = add i32 %202, %211
  %213 = mul i32 %212, 768
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i16, ptr %193, i64 %214
  store ptr %215, ptr %19, align 8
  %216 = load ptr, ptr %6, align 8
  %217 = getelementptr inbounds %struct.CLzmaEnc, ptr %216, i32 0, i32 18
  %218 = load i32, ptr %217, align 8
  %219 = icmp ult i32 %218, 7
  br i1 %219, label %220, label %226

220:                                              ; preds = %162
  %221 = load ptr, ptr %6, align 8
  %222 = getelementptr inbounds %struct.CLzmaEnc, ptr %221, i32 0, i32 43
  %223 = load ptr, ptr %19, align 8
  %224 = load i8, ptr %18, align 1
  %225 = zext i8 %224 to i32
  call void @LitEnc_Encode(ptr noundef %222, ptr noundef %223, i32 noundef %225)
  br label %243

226:                                              ; preds = %162
  %227 = load ptr, ptr %6, align 8
  %228 = getelementptr inbounds %struct.CLzmaEnc, ptr %227, i32 0, i32 43
  %229 = load ptr, ptr %19, align 8
  %230 = load i8, ptr %18, align 1
  %231 = zext i8 %230 to i32
  %232 = load ptr, ptr %20, align 8
  %233 = load ptr, ptr %6, align 8
  %234 = getelementptr inbounds %struct.CLzmaEnc, ptr %233, i32 0, i32 17
  %235 = getelementptr inbounds [4 x i32], ptr %234, i64 0, i64 0
  %236 = load i32, ptr %235, align 8
  %237 = zext i32 %236 to i64
  %238 = sub i64 0, %237
  %239 = getelementptr inbounds i8, ptr %232, i64 %238
  %240 = getelementptr inbounds i8, ptr %239, i64 -1
  %241 = load i8, ptr %240, align 1
  %242 = zext i8 %241 to i32
  call void @LitEnc_EncodeMatched(ptr noundef %228, ptr noundef %229, i32 noundef %231, i32 noundef %242)
  br label %243

243:                                              ; preds = %226, %220
  %244 = load ptr, ptr %6, align 8
  %245 = getelementptr inbounds %struct.CLzmaEnc, ptr %244, i32 0, i32 18
  %246 = load i32, ptr %245, align 8
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds [12 x i32], ptr @kLiteralNextStates, i64 0, i64 %247
  %249 = load i32, ptr %248, align 4
  %250 = load ptr, ptr %6, align 8
  %251 = getelementptr inbounds %struct.CLzmaEnc, ptr %250, i32 0, i32 18
  store i32 %249, ptr %251, align 8
  br label %586

252:                                              ; preds = %159, %151
  %253 = load ptr, ptr %6, align 8
  %254 = getelementptr inbounds %struct.CLzmaEnc, ptr %253, i32 0, i32 43
  %255 = load ptr, ptr %6, align 8
  %256 = getelementptr inbounds %struct.CLzmaEnc, ptr %255, i32 0, i32 30
  %257 = load ptr, ptr %6, align 8
  %258 = getelementptr inbounds %struct.CLzmaEnc, ptr %257, i32 0, i32 18
  %259 = load i32, ptr %258, align 8
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds [12 x [16 x i16]], ptr %256, i64 0, i64 %260
  %262 = load i32, ptr %17, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds [16 x i16], ptr %261, i64 0, i64 %263
  call void @RangeEnc_EncodeBit(ptr noundef %254, ptr noundef %264, i32 noundef 1)
  %265 = load i32, ptr %15, align 4
  %266 = icmp ult i32 %265, 4
  br i1 %266, label %267, label %422

267:                                              ; preds = %252
  %268 = load ptr, ptr %6, align 8
  %269 = getelementptr inbounds %struct.CLzmaEnc, ptr %268, i32 0, i32 43
  %270 = load ptr, ptr %6, align 8
  %271 = getelementptr inbounds %struct.CLzmaEnc, ptr %270, i32 0, i32 31
  %272 = load ptr, ptr %6, align 8
  %273 = getelementptr inbounds %struct.CLzmaEnc, ptr %272, i32 0, i32 18
  %274 = load i32, ptr %273, align 8
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds [12 x i16], ptr %271, i64 0, i64 %275
  call void @RangeEnc_EncodeBit(ptr noundef %269, ptr noundef %276, i32 noundef 1)
  %277 = load i32, ptr %15, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %305

279:                                              ; preds = %267
  %280 = load ptr, ptr %6, align 8
  %281 = getelementptr inbounds %struct.CLzmaEnc, ptr %280, i32 0, i32 43
  %282 = load ptr, ptr %6, align 8
  %283 = getelementptr inbounds %struct.CLzmaEnc, ptr %282, i32 0, i32 32
  %284 = load ptr, ptr %6, align 8
  %285 = getelementptr inbounds %struct.CLzmaEnc, ptr %284, i32 0, i32 18
  %286 = load i32, ptr %285, align 8
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds [12 x i16], ptr %283, i64 0, i64 %287
  call void @RangeEnc_EncodeBit(ptr noundef %281, ptr noundef %288, i32 noundef 0)
  %289 = load ptr, ptr %6, align 8
  %290 = getelementptr inbounds %struct.CLzmaEnc, ptr %289, i32 0, i32 43
  %291 = load ptr, ptr %6, align 8
  %292 = getelementptr inbounds %struct.CLzmaEnc, ptr %291, i32 0, i32 35
  %293 = load ptr, ptr %6, align 8
  %294 = getelementptr inbounds %struct.CLzmaEnc, ptr %293, i32 0, i32 18
  %295 = load i32, ptr %294, align 8
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds [12 x [16 x i16]], ptr %292, i64 0, i64 %296
  %298 = load i32, ptr %17, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds [16 x i16], ptr %297, i64 0, i64 %299
  %301 = load i32, ptr %16, align 4
  %302 = icmp eq i32 %301, 1
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i32 0, i32 1
  call void @RangeEnc_EncodeBit(ptr noundef %290, ptr noundef %300, i32 noundef %304)
  br label %384

305:                                              ; preds = %267
  %306 = load ptr, ptr %6, align 8
  %307 = getelementptr inbounds %struct.CLzmaEnc, ptr %306, i32 0, i32 17
  %308 = load i32, ptr %15, align 4
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds [4 x i32], ptr %307, i64 0, i64 %309
  %311 = load i32, ptr %310, align 4
  store i32 %311, ptr %21, align 4
  %312 = load ptr, ptr %6, align 8
  %313 = getelementptr inbounds %struct.CLzmaEnc, ptr %312, i32 0, i32 43
  %314 = load ptr, ptr %6, align 8
  %315 = getelementptr inbounds %struct.CLzmaEnc, ptr %314, i32 0, i32 32
  %316 = load ptr, ptr %6, align 8
  %317 = getelementptr inbounds %struct.CLzmaEnc, ptr %316, i32 0, i32 18
  %318 = load i32, ptr %317, align 8
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds [12 x i16], ptr %315, i64 0, i64 %319
  call void @RangeEnc_EncodeBit(ptr noundef %313, ptr noundef %320, i32 noundef 1)
  %321 = load i32, ptr %15, align 4
  %322 = icmp eq i32 %321, 1
  br i1 %322, label %323, label %333

323:                                              ; preds = %305
  %324 = load ptr, ptr %6, align 8
  %325 = getelementptr inbounds %struct.CLzmaEnc, ptr %324, i32 0, i32 43
  %326 = load ptr, ptr %6, align 8
  %327 = getelementptr inbounds %struct.CLzmaEnc, ptr %326, i32 0, i32 33
  %328 = load ptr, ptr %6, align 8
  %329 = getelementptr inbounds %struct.CLzmaEnc, ptr %328, i32 0, i32 18
  %330 = load i32, ptr %329, align 8
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds [12 x i16], ptr %327, i64 0, i64 %331
  call void @RangeEnc_EncodeBit(ptr noundef %325, ptr noundef %332, i32 noundef 0)
  br label %372

333:                                              ; preds = %305
  %334 = load ptr, ptr %6, align 8
  %335 = getelementptr inbounds %struct.CLzmaEnc, ptr %334, i32 0, i32 43
  %336 = load ptr, ptr %6, align 8
  %337 = getelementptr inbounds %struct.CLzmaEnc, ptr %336, i32 0, i32 33
  %338 = load ptr, ptr %6, align 8
  %339 = getelementptr inbounds %struct.CLzmaEnc, ptr %338, i32 0, i32 18
  %340 = load i32, ptr %339, align 8
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds [12 x i16], ptr %337, i64 0, i64 %341
  call void @RangeEnc_EncodeBit(ptr noundef %335, ptr noundef %342, i32 noundef 1)
  %343 = load ptr, ptr %6, align 8
  %344 = getelementptr inbounds %struct.CLzmaEnc, ptr %343, i32 0, i32 43
  %345 = load ptr, ptr %6, align 8
  %346 = getelementptr inbounds %struct.CLzmaEnc, ptr %345, i32 0, i32 34
  %347 = load ptr, ptr %6, align 8
  %348 = getelementptr inbounds %struct.CLzmaEnc, ptr %347, i32 0, i32 18
  %349 = load i32, ptr %348, align 8
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds [12 x i16], ptr %346, i64 0, i64 %350
  %352 = load i32, ptr %15, align 4
  %353 = sub i32 %352, 2
  call void @RangeEnc_EncodeBit(ptr noundef %344, ptr noundef %351, i32 noundef %353)
  %354 = load i32, ptr %15, align 4
  %355 = icmp eq i32 %354, 3
  br i1 %355, label %356, label %364

356:                                              ; preds = %333
  %357 = load ptr, ptr %6, align 8
  %358 = getelementptr inbounds %struct.CLzmaEnc, ptr %357, i32 0, i32 17
  %359 = getelementptr inbounds [4 x i32], ptr %358, i64 0, i64 2
  %360 = load i32, ptr %359, align 8
  %361 = load ptr, ptr %6, align 8
  %362 = getelementptr inbounds %struct.CLzmaEnc, ptr %361, i32 0, i32 17
  %363 = getelementptr inbounds [4 x i32], ptr %362, i64 0, i64 3
  store i32 %360, ptr %363, align 4
  br label %364

364:                                              ; preds = %356, %333
  %365 = load ptr, ptr %6, align 8
  %366 = getelementptr inbounds %struct.CLzmaEnc, ptr %365, i32 0, i32 17
  %367 = getelementptr inbounds [4 x i32], ptr %366, i64 0, i64 1
  %368 = load i32, ptr %367, align 4
  %369 = load ptr, ptr %6, align 8
  %370 = getelementptr inbounds %struct.CLzmaEnc, ptr %369, i32 0, i32 17
  %371 = getelementptr inbounds [4 x i32], ptr %370, i64 0, i64 2
  store i32 %368, ptr %371, align 8
  br label %372

372:                                              ; preds = %364, %323
  %373 = load ptr, ptr %6, align 8
  %374 = getelementptr inbounds %struct.CLzmaEnc, ptr %373, i32 0, i32 17
  %375 = getelementptr inbounds [4 x i32], ptr %374, i64 0, i64 0
  %376 = load i32, ptr %375, align 8
  %377 = load ptr, ptr %6, align 8
  %378 = getelementptr inbounds %struct.CLzmaEnc, ptr %377, i32 0, i32 17
  %379 = getelementptr inbounds [4 x i32], ptr %378, i64 0, i64 1
  store i32 %376, ptr %379, align 4
  %380 = load i32, ptr %21, align 4
  %381 = load ptr, ptr %6, align 8
  %382 = getelementptr inbounds %struct.CLzmaEnc, ptr %381, i32 0, i32 17
  %383 = getelementptr inbounds [4 x i32], ptr %382, i64 0, i64 0
  store i32 %380, ptr %383, align 8
  br label %384

384:                                              ; preds = %372, %279
  %385 = load i32, ptr %16, align 4
  %386 = icmp eq i32 %385, 1
  br i1 %386, label %387, label %396

387:                                              ; preds = %384
  %388 = load ptr, ptr %6, align 8
  %389 = getelementptr inbounds %struct.CLzmaEnc, ptr %388, i32 0, i32 18
  %390 = load i32, ptr %389, align 8
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds [12 x i32], ptr @kShortRepNextStates, i64 0, i64 %391
  %393 = load i32, ptr %392, align 4
  %394 = load ptr, ptr %6, align 8
  %395 = getelementptr inbounds %struct.CLzmaEnc, ptr %394, i32 0, i32 18
  store i32 %393, ptr %395, align 8
  br label %421

396:                                              ; preds = %384
  %397 = load ptr, ptr %6, align 8
  %398 = getelementptr inbounds %struct.CLzmaEnc, ptr %397, i32 0, i32 40
  %399 = load ptr, ptr %6, align 8
  %400 = getelementptr inbounds %struct.CLzmaEnc, ptr %399, i32 0, i32 43
  %401 = load i32, ptr %16, align 4
  %402 = sub i32 %401, 2
  %403 = load i32, ptr %17, align 4
  %404 = load ptr, ptr %6, align 8
  %405 = getelementptr inbounds %struct.CLzmaEnc, ptr %404, i32 0, i32 42
  %406 = load i32, ptr %405, align 8
  %407 = icmp ne i32 %406, 0
  %408 = xor i1 %407, true
  %409 = zext i1 %408 to i32
  %410 = load ptr, ptr %6, align 8
  %411 = getelementptr inbounds %struct.CLzmaEnc, ptr %410, i32 0, i32 13
  %412 = getelementptr inbounds [128 x i32], ptr %411, i64 0, i64 0
  call void @LenEnc_Encode2(ptr noundef %398, ptr noundef %400, i32 noundef %402, i32 noundef %403, i32 noundef %409, ptr noundef %412)
  %413 = load ptr, ptr %6, align 8
  %414 = getelementptr inbounds %struct.CLzmaEnc, ptr %413, i32 0, i32 18
  %415 = load i32, ptr %414, align 8
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds [12 x i32], ptr @kRepNextStates, i64 0, i64 %416
  %418 = load i32, ptr %417, align 4
  %419 = load ptr, ptr %6, align 8
  %420 = getelementptr inbounds %struct.CLzmaEnc, ptr %419, i32 0, i32 18
  store i32 %418, ptr %420, align 8
  br label %421

421:                                              ; preds = %396, %387
  br label %585

422:                                              ; preds = %252
  %423 = load ptr, ptr %6, align 8
  %424 = getelementptr inbounds %struct.CLzmaEnc, ptr %423, i32 0, i32 43
  %425 = load ptr, ptr %6, align 8
  %426 = getelementptr inbounds %struct.CLzmaEnc, ptr %425, i32 0, i32 31
  %427 = load ptr, ptr %6, align 8
  %428 = getelementptr inbounds %struct.CLzmaEnc, ptr %427, i32 0, i32 18
  %429 = load i32, ptr %428, align 8
  %430 = zext i32 %429 to i64
  %431 = getelementptr inbounds [12 x i16], ptr %426, i64 0, i64 %430
  call void @RangeEnc_EncodeBit(ptr noundef %424, ptr noundef %431, i32 noundef 0)
  %432 = load ptr, ptr %6, align 8
  %433 = getelementptr inbounds %struct.CLzmaEnc, ptr %432, i32 0, i32 18
  %434 = load i32, ptr %433, align 8
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds [12 x i32], ptr @kMatchNextStates, i64 0, i64 %435
  %437 = load i32, ptr %436, align 4
  %438 = load ptr, ptr %6, align 8
  %439 = getelementptr inbounds %struct.CLzmaEnc, ptr %438, i32 0, i32 18
  store i32 %437, ptr %439, align 8
  %440 = load ptr, ptr %6, align 8
  %441 = getelementptr inbounds %struct.CLzmaEnc, ptr %440, i32 0, i32 39
  %442 = load ptr, ptr %6, align 8
  %443 = getelementptr inbounds %struct.CLzmaEnc, ptr %442, i32 0, i32 43
  %444 = load i32, ptr %16, align 4
  %445 = sub i32 %444, 2
  %446 = load i32, ptr %17, align 4
  %447 = load ptr, ptr %6, align 8
  %448 = getelementptr inbounds %struct.CLzmaEnc, ptr %447, i32 0, i32 42
  %449 = load i32, ptr %448, align 8
  %450 = icmp ne i32 %449, 0
  %451 = xor i1 %450, true
  %452 = zext i1 %451 to i32
  %453 = load ptr, ptr %6, align 8
  %454 = getelementptr inbounds %struct.CLzmaEnc, ptr %453, i32 0, i32 13
  %455 = getelementptr inbounds [128 x i32], ptr %454, i64 0, i64 0
  call void @LenEnc_Encode2(ptr noundef %441, ptr noundef %443, i32 noundef %445, i32 noundef %446, i32 noundef %452, ptr noundef %455)
  %456 = load i32, ptr %15, align 4
  %457 = sub i32 %456, 4
  store i32 %457, ptr %15, align 4
  %458 = load i32, ptr %15, align 4
  %459 = icmp ult i32 %458, 128
  br i1 %459, label %460, label %468

460:                                              ; preds = %422
  %461 = load ptr, ptr %6, align 8
  %462 = getelementptr inbounds %struct.CLzmaEnc, ptr %461, i32 0, i32 12
  %463 = load i32, ptr %15, align 4
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds [8192 x i8], ptr %462, i64 0, i64 %464
  %466 = load i8, ptr %465, align 1
  %467 = zext i8 %466 to i32
  store i32 %467, ptr %22, align 4
  br label %487

468:                                              ; preds = %422
  %469 = load i32, ptr %15, align 4
  %470 = sub i32 524287, %469
  %471 = lshr i32 %470, 31
  %472 = sub i32 0, %471
  %473 = and i32 12, %472
  %474 = add i32 6, %473
  store i32 %474, ptr %23, align 4
  %475 = load ptr, ptr %6, align 8
  %476 = getelementptr inbounds %struct.CLzmaEnc, ptr %475, i32 0, i32 12
  %477 = load i32, ptr %15, align 4
  %478 = load i32, ptr %23, align 4
  %479 = lshr i32 %477, %478
  %480 = zext i32 %479 to i64
  %481 = getelementptr inbounds [8192 x i8], ptr %476, i64 0, i64 %480
  %482 = load i8, ptr %481, align 1
  %483 = zext i8 %482 to i32
  %484 = load i32, ptr %23, align 4
  %485 = mul i32 %484, 2
  %486 = add i32 %483, %485
  store i32 %486, ptr %22, align 4
  br label %487

487:                                              ; preds = %468, %460
  %488 = load ptr, ptr %6, align 8
  %489 = getelementptr inbounds %struct.CLzmaEnc, ptr %488, i32 0, i32 43
  %490 = load ptr, ptr %6, align 8
  %491 = getelementptr inbounds %struct.CLzmaEnc, ptr %490, i32 0, i32 36
  %492 = load i32, ptr %16, align 4
  %493 = icmp ult i32 %492, 5
  br i1 %493, label %494, label %497

494:                                              ; preds = %487
  %495 = load i32, ptr %16, align 4
  %496 = sub i32 %495, 2
  br label %498

497:                                              ; preds = %487
  br label %498

498:                                              ; preds = %497, %494
  %499 = phi i32 [ %496, %494 ], [ 3, %497 ]
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds [4 x [64 x i16]], ptr %491, i64 0, i64 %500
  %502 = getelementptr inbounds [64 x i16], ptr %501, i64 0, i64 0
  %503 = load i32, ptr %22, align 4
  call void @RcTree_Encode(ptr noundef %489, ptr noundef %502, i32 noundef 6, i32 noundef %503)
  %504 = load i32, ptr %22, align 4
  %505 = icmp uge i32 %504, 4
  br i1 %505, label %506, label %555

506:                                              ; preds = %498
  %507 = load i32, ptr %22, align 4
  %508 = lshr i32 %507, 1
  %509 = sub i32 %508, 1
  store i32 %509, ptr %24, align 4
  %510 = load i32, ptr %22, align 4
  %511 = and i32 %510, 1
  %512 = or i32 2, %511
  %513 = load i32, ptr %24, align 4
  %514 = shl i32 %512, %513
  store i32 %514, ptr %25, align 4
  %515 = load i32, ptr %15, align 4
  %516 = load i32, ptr %25, align 4
  %517 = sub i32 %515, %516
  store i32 %517, ptr %26, align 4
  %518 = load i32, ptr %22, align 4
  %519 = icmp ult i32 %518, 14
  br i1 %519, label %520, label %536

520:                                              ; preds = %506
  %521 = load ptr, ptr %6, align 8
  %522 = getelementptr inbounds %struct.CLzmaEnc, ptr %521, i32 0, i32 43
  %523 = load ptr, ptr %6, align 8
  %524 = getelementptr inbounds %struct.CLzmaEnc, ptr %523, i32 0, i32 37
  %525 = getelementptr inbounds [114 x i16], ptr %524, i64 0, i64 0
  %526 = load i32, ptr %25, align 4
  %527 = zext i32 %526 to i64
  %528 = getelementptr inbounds i16, ptr %525, i64 %527
  %529 = load i32, ptr %22, align 4
  %530 = zext i32 %529 to i64
  %531 = sub i64 0, %530
  %532 = getelementptr inbounds i16, ptr %528, i64 %531
  %533 = getelementptr inbounds i16, ptr %532, i64 -1
  %534 = load i32, ptr %24, align 4
  %535 = load i32, ptr %26, align 4
  call void @RcTree_ReverseEncode(ptr noundef %522, ptr noundef %533, i32 noundef %534, i32 noundef %535)
  br label %554

536:                                              ; preds = %506
  %537 = load ptr, ptr %6, align 8
  %538 = getelementptr inbounds %struct.CLzmaEnc, ptr %537, i32 0, i32 43
  %539 = load i32, ptr %26, align 4
  %540 = lshr i32 %539, 4
  %541 = load i32, ptr %24, align 4
  %542 = sub i32 %541, 4
  call void @RangeEnc_EncodeDirectBits(ptr noundef %538, i32 noundef %540, i32 noundef %542)
  %543 = load ptr, ptr %6, align 8
  %544 = getelementptr inbounds %struct.CLzmaEnc, ptr %543, i32 0, i32 43
  %545 = load ptr, ptr %6, align 8
  %546 = getelementptr inbounds %struct.CLzmaEnc, ptr %545, i32 0, i32 38
  %547 = getelementptr inbounds [16 x i16], ptr %546, i64 0, i64 0
  %548 = load i32, ptr %26, align 4
  %549 = and i32 %548, 15
  call void @RcTree_ReverseEncode(ptr noundef %544, ptr noundef %547, i32 noundef 4, i32 noundef %549)
  %550 = load ptr, ptr %6, align 8
  %551 = getelementptr inbounds %struct.CLzmaEnc, ptr %550, i32 0, i32 22
  %552 = load i32, ptr %551, align 4
  %553 = add i32 %552, 1
  store i32 %553, ptr %551, align 4
  br label %554

554:                                              ; preds = %536, %520
  br label %555

555:                                              ; preds = %554, %498
  %556 = load ptr, ptr %6, align 8
  %557 = getelementptr inbounds %struct.CLzmaEnc, ptr %556, i32 0, i32 17
  %558 = getelementptr inbounds [4 x i32], ptr %557, i64 0, i64 2
  %559 = load i32, ptr %558, align 8
  %560 = load ptr, ptr %6, align 8
  %561 = getelementptr inbounds %struct.CLzmaEnc, ptr %560, i32 0, i32 17
  %562 = getelementptr inbounds [4 x i32], ptr %561, i64 0, i64 3
  store i32 %559, ptr %562, align 4
  %563 = load ptr, ptr %6, align 8
  %564 = getelementptr inbounds %struct.CLzmaEnc, ptr %563, i32 0, i32 17
  %565 = getelementptr inbounds [4 x i32], ptr %564, i64 0, i64 1
  %566 = load i32, ptr %565, align 4
  %567 = load ptr, ptr %6, align 8
  %568 = getelementptr inbounds %struct.CLzmaEnc, ptr %567, i32 0, i32 17
  %569 = getelementptr inbounds [4 x i32], ptr %568, i64 0, i64 2
  store i32 %566, ptr %569, align 8
  %570 = load ptr, ptr %6, align 8
  %571 = getelementptr inbounds %struct.CLzmaEnc, ptr %570, i32 0, i32 17
  %572 = getelementptr inbounds [4 x i32], ptr %571, i64 0, i64 0
  %573 = load i32, ptr %572, align 8
  %574 = load ptr, ptr %6, align 8
  %575 = getelementptr inbounds %struct.CLzmaEnc, ptr %574, i32 0, i32 17
  %576 = getelementptr inbounds [4 x i32], ptr %575, i64 0, i64 1
  store i32 %573, ptr %576, align 4
  %577 = load i32, ptr %15, align 4
  %578 = load ptr, ptr %6, align 8
  %579 = getelementptr inbounds %struct.CLzmaEnc, ptr %578, i32 0, i32 17
  %580 = getelementptr inbounds [4 x i32], ptr %579, i64 0, i64 0
  store i32 %577, ptr %580, align 8
  %581 = load ptr, ptr %6, align 8
  %582 = getelementptr inbounds %struct.CLzmaEnc, ptr %581, i32 0, i32 46
  %583 = load i32, ptr %582, align 8
  %584 = add i32 %583, 1
  store i32 %584, ptr %582, align 8
  br label %585

585:                                              ; preds = %555, %421
  br label %586

586:                                              ; preds = %585, %243
  %587 = load i32, ptr %16, align 4
  %588 = load ptr, ptr %6, align 8
  %589 = getelementptr inbounds %struct.CLzmaEnc, ptr %588, i32 0, i32 16
  %590 = load i32, ptr %589, align 4
  %591 = sub i32 %590, %587
  store i32 %591, ptr %589, align 4
  %592 = load i32, ptr %16, align 4
  %593 = load i32, ptr %10, align 4
  %594 = add i32 %593, %592
  store i32 %594, ptr %10, align 4
  %595 = load ptr, ptr %6, align 8
  %596 = getelementptr inbounds %struct.CLzmaEnc, ptr %595, i32 0, i32 16
  %597 = load i32, ptr %596, align 4
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %686

599:                                              ; preds = %586
  %600 = load ptr, ptr %6, align 8
  %601 = getelementptr inbounds %struct.CLzmaEnc, ptr %600, i32 0, i32 42
  %602 = load i32, ptr %601, align 8
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %619, label %604

604:                                              ; preds = %599
  %605 = load ptr, ptr %6, align 8
  %606 = getelementptr inbounds %struct.CLzmaEnc, ptr %605, i32 0, i32 46
  %607 = load i32, ptr %606, align 8
  %608 = icmp uge i32 %607, 128
  br i1 %608, label %609, label %611

609:                                              ; preds = %604
  %610 = load ptr, ptr %6, align 8
  call void @FillDistancesPrices(ptr noundef %610)
  br label %611

611:                                              ; preds = %609, %604
  %612 = load ptr, ptr %6, align 8
  %613 = getelementptr inbounds %struct.CLzmaEnc, ptr %612, i32 0, i32 22
  %614 = load i32, ptr %613, align 4
  %615 = icmp uge i32 %614, 16
  br i1 %615, label %616, label %618

616:                                              ; preds = %611
  %617 = load ptr, ptr %6, align 8
  call void @FillAlignPrices(ptr noundef %617)
  br label %618

618:                                              ; preds = %616, %611
  br label %619

619:                                              ; preds = %618, %599
  %620 = load ptr, ptr %6, align 8
  %621 = getelementptr inbounds %struct.CLzmaEnc, ptr %620, i32 0, i32 0
  %622 = getelementptr inbounds %struct._IMatchFinder, ptr %621, i32 0, i32 2
  %623 = load ptr, ptr %622, align 8
  %624 = load ptr, ptr %6, align 8
  %625 = getelementptr inbounds %struct.CLzmaEnc, ptr %624, i32 0, i32 1
  %626 = load ptr, ptr %625, align 8
  %627 = call i32 %623(ptr noundef %626)
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %630

629:                                              ; preds = %619
  br label %687

630:                                              ; preds = %619
  %631 = load i32, ptr %10, align 4
  %632 = load i32, ptr %11, align 4
  %633 = sub i32 %631, %632
  store i32 %633, ptr %27, align 4
  %634 = load i32, ptr %7, align 4
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %636, label %670

636:                                              ; preds = %630
  %637 = load i32, ptr %27, align 4
  %638 = add i32 %637, 4096
  %639 = add i32 %638, 300
  %640 = load i32, ptr %9, align 4
  %641 = icmp uge i32 %639, %640
  br i1 %641, label %668, label %642

642:                                              ; preds = %636
  %643 = load ptr, ptr %6, align 8
  %644 = getelementptr inbounds %struct.CLzmaEnc, ptr %643, i32 0, i32 43
  %645 = getelementptr inbounds %struct.CRangeEnc, ptr %644, i32 0, i32 8
  %646 = load i64, ptr %645, align 8
  %647 = load ptr, ptr %6, align 8
  %648 = getelementptr inbounds %struct.CLzmaEnc, ptr %647, i32 0, i32 43
  %649 = getelementptr inbounds %struct.CRangeEnc, ptr %648, i32 0, i32 4
  %650 = load ptr, ptr %649, align 8
  %651 = load ptr, ptr %6, align 8
  %652 = getelementptr inbounds %struct.CLzmaEnc, ptr %651, i32 0, i32 43
  %653 = getelementptr inbounds %struct.CRangeEnc, ptr %652, i32 0, i32 6
  %654 = load ptr, ptr %653, align 8
  %655 = ptrtoint ptr %650 to i64
  %656 = ptrtoint ptr %654 to i64
  %657 = sub i64 %655, %656
  %658 = add i64 %646, %657
  %659 = load ptr, ptr %6, align 8
  %660 = getelementptr inbounds %struct.CLzmaEnc, ptr %659, i32 0, i32 43
  %661 = getelementptr inbounds %struct.CRangeEnc, ptr %660, i32 0, i32 3
  %662 = load i64, ptr %661, align 8
  %663 = add i64 %658, %662
  %664 = add i64 %663, 8192
  %665 = load i32, ptr %8, align 4
  %666 = zext i32 %665 to i64
  %667 = icmp uge i64 %664, %666
  br i1 %667, label %668, label %669

668:                                              ; preds = %642, %636
  br label %687

669:                                              ; preds = %642
  br label %685

670:                                              ; preds = %630
  %671 = load i32, ptr %27, align 4
  %672 = icmp uge i32 %671, 32768
  br i1 %672, label %673, label %684

673:                                              ; preds = %670
  %674 = load i32, ptr %10, align 4
  %675 = load i32, ptr %11, align 4
  %676 = sub i32 %674, %675
  %677 = zext i32 %676 to i64
  %678 = load ptr, ptr %6, align 8
  %679 = getelementptr inbounds %struct.CLzmaEnc, ptr %678, i32 0, i32 45
  %680 = load i64, ptr %679, align 8
  %681 = add i64 %680, %677
  store i64 %681, ptr %679, align 8
  %682 = load ptr, ptr %6, align 8
  %683 = call i32 @CheckErrors(ptr noundef %682)
  store i32 %683, ptr %5, align 4
  br label %700

684:                                              ; preds = %670
  br label %685

685:                                              ; preds = %684, %669
  br label %686

686:                                              ; preds = %685, %586
  br label %139

687:                                              ; preds = %668, %629
  br label %688

688:                                              ; preds = %687, %128
  %689 = load i32, ptr %10, align 4
  %690 = load i32, ptr %11, align 4
  %691 = sub i32 %689, %690
  %692 = zext i32 %691 to i64
  %693 = load ptr, ptr %6, align 8
  %694 = getelementptr inbounds %struct.CLzmaEnc, ptr %693, i32 0, i32 45
  %695 = load i64, ptr %694, align 8
  %696 = add i64 %695, %692
  store i64 %696, ptr %694, align 8
  %697 = load ptr, ptr %6, align 8
  %698 = load i32, ptr %10, align 4
  %699 = call i32 @Flush(ptr noundef %697, i32 noundef %698)
  store i32 %699, ptr %5, align 4
  br label %700

700:                                              ; preds = %688, %673, %78, %56, %47
  %701 = load i32, ptr %5, align 4
  ret i32 %701
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaEnc_Encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  %15 = load ptr, ptr %8, align 8
  %16 = load ptr, ptr %9, align 8
  %17 = load ptr, ptr %10, align 8
  %18 = load ptr, ptr %12, align 8
  %19 = load ptr, ptr %13, align 8
  %20 = call i32 @LzmaEnc_Prepare(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19)
  store i32 %20, ptr %14, align 4
  %21 = load i32, ptr %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, ptr %14, align 4
  store i32 %24, ptr %7, align 4
  br label %29

25:                                               ; preds = %6
  %26 = load ptr, ptr %8, align 8
  %27 = load ptr, ptr %11, align 8
  %28 = call i32 @LzmaEnc_Encode2(ptr noundef %26, ptr noundef %27)
  store i32 %28, ptr %7, align 4
  br label %29

29:                                               ; preds = %25, %23
  %30 = load i32, ptr %7, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LzmaEnc_Prepare(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %12 = load ptr, ptr %6, align 8
  store ptr %12, ptr %11, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = load ptr, ptr %11, align 8
  %15 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct._CMatchFinder, ptr %15, i32 0, i32 13
  store ptr %13, ptr %16, align 8
  %17 = load ptr, ptr %11, align 8
  %18 = getelementptr inbounds %struct.CLzmaEnc, ptr %17, i32 0, i32 52
  store i32 1, ptr %18, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %11, align 8
  %21 = getelementptr inbounds %struct.CLzmaEnc, ptr %20, i32 0, i32 43
  %22 = getelementptr inbounds %struct.CRangeEnc, ptr %21, i32 0, i32 7
  store ptr %19, ptr %22, align 8
  %23 = load ptr, ptr %11, align 8
  %24 = load ptr, ptr %9, align 8
  %25 = load ptr, ptr %10, align 8
  %26 = call i32 @LzmaEnc_AllocAndInit(ptr noundef %23, i32 noundef 0, ptr noundef %24, ptr noundef %25)
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LzmaEnc_Encode2(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [768 x i8], align 16
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %5, align 4
  store i32 0, ptr %7, align 4
  store i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %17, %2
  %9 = load i32, ptr %7, align 4
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, ptr %7, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i32, ptr %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [768 x i8], ptr %6, i64 0, i64 %15
  store i8 %13, ptr %16, align 1
  br label %17

17:                                               ; preds = %11
  %18 = load i32, ptr %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %7, align 4
  br label %8, !llvm.loop !36

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %69, %20
  %22 = load ptr, ptr %3, align 8
  %23 = call i32 @LzmaEnc_CodeOneBlock(ptr noundef %22, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  store i32 %23, ptr %5, align 4
  %24 = load i32, ptr %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.CLzmaEnc, ptr %27, i32 0, i32 47
  %29 = load i32, ptr %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %21
  br label %70

32:                                               ; preds = %26
  %33 = load ptr, ptr %4, align 8
  %34 = icmp ne ptr %33, null
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.ICompressProgress, ptr %36, i32 0, i32 0
  %38 = load ptr, ptr %37, align 8
  %39 = load ptr, ptr %4, align 8
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds %struct.CLzmaEnc, ptr %40, i32 0, i32 45
  %42 = load i64, ptr %41, align 8
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.CLzmaEnc, ptr %43, i32 0, i32 43
  %45 = getelementptr inbounds %struct.CRangeEnc, ptr %44, i32 0, i32 8
  %46 = load i64, ptr %45, align 8
  %47 = load ptr, ptr %3, align 8
  %48 = getelementptr inbounds %struct.CLzmaEnc, ptr %47, i32 0, i32 43
  %49 = getelementptr inbounds %struct.CRangeEnc, ptr %48, i32 0, i32 4
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.CLzmaEnc, ptr %51, i32 0, i32 43
  %53 = getelementptr inbounds %struct.CRangeEnc, ptr %52, i32 0, i32 6
  %54 = load ptr, ptr %53, align 8
  %55 = ptrtoint ptr %50 to i64
  %56 = ptrtoint ptr %54 to i64
  %57 = sub i64 %55, %56
  %58 = add i64 %46, %57
  %59 = load ptr, ptr %3, align 8
  %60 = getelementptr inbounds %struct.CLzmaEnc, ptr %59, i32 0, i32 43
  %61 = getelementptr inbounds %struct.CRangeEnc, ptr %60, i32 0, i32 3
  %62 = load i64, ptr %61, align 8
  %63 = add i64 %58, %62
  %64 = call i32 %38(ptr noundef %39, i64 noundef %42, i64 noundef %63)
  store i32 %64, ptr %5, align 4
  %65 = load i32, ptr %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %35
  store i32 10, ptr %5, align 4
  br label %70

68:                                               ; preds = %35
  br label %69

69:                                               ; preds = %68, %32
  br label %21

70:                                               ; preds = %67, %31
  %71 = load ptr, ptr %3, align 8
  call void @LzmaEnc_Finish(ptr noundef %71)
  %72 = load i32, ptr %5, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaEnc_WriteProperties(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %11 = load ptr, ptr %5, align 8
  store ptr %11, ptr %8, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = getelementptr inbounds %struct.CLzmaEnc, ptr %12, i32 0, i32 50
  %14 = load i32, ptr %13, align 8
  store i32 %14, ptr %10, align 4
  %15 = load ptr, ptr %7, align 8
  %16 = load i64, ptr %15, align 8
  %17 = icmp ult i64 %16, 5
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 5, ptr %4, align 4
  br label %79

19:                                               ; preds = %3
  %20 = load ptr, ptr %7, align 8
  store i64 5, ptr %20, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = getelementptr inbounds %struct.CLzmaEnc, ptr %21, i32 0, i32 26
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, 5
  %25 = load ptr, ptr %8, align 8
  %26 = getelementptr inbounds %struct.CLzmaEnc, ptr %25, i32 0, i32 25
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %24, %27
  %29 = mul i32 %28, 9
  %30 = load ptr, ptr %8, align 8
  %31 = getelementptr inbounds %struct.CLzmaEnc, ptr %30, i32 0, i32 24
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %29, %32
  %34 = trunc i32 %33 to i8
  %35 = load ptr, ptr %6, align 8
  %36 = getelementptr inbounds i8, ptr %35, i64 0
  store i8 %34, ptr %36, align 1
  store i32 11, ptr %9, align 4
  br label %37

37:                                               ; preds = %57, %19
  %38 = load i32, ptr %9, align 4
  %39 = icmp sle i32 %38, 30
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load i32, ptr %10, align 4
  %42 = load i32, ptr %9, align 4
  %43 = shl i32 2, %42
  %44 = icmp ule i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, ptr %9, align 4
  %47 = shl i32 2, %46
  store i32 %47, ptr %10, align 4
  br label %60

48:                                               ; preds = %40
  %49 = load i32, ptr %10, align 4
  %50 = load i32, ptr %9, align 4
  %51 = shl i32 3, %50
  %52 = icmp ule i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, ptr %9, align 4
  %55 = shl i32 3, %54
  store i32 %55, ptr %10, align 4
  br label %60

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %9, align 4
  br label %37, !llvm.loop !37

60:                                               ; preds = %53, %45, %37
  store i32 0, ptr %9, align 4
  br label %61

61:                                               ; preds = %75, %60
  %62 = load i32, ptr %9, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i32, ptr %10, align 4
  %66 = load i32, ptr %9, align 4
  %67 = mul nsw i32 8, %66
  %68 = lshr i32 %65, %67
  %69 = trunc i32 %68 to i8
  %70 = load ptr, ptr %6, align 8
  %71 = load i32, ptr %9, align 4
  %72 = add nsw i32 1, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %70, i64 %73
  store i8 %69, ptr %74, align 1
  br label %75

75:                                               ; preds = %64
  %76 = load i32, ptr %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %9, align 4
  br label %61, !llvm.loop !38

78:                                               ; preds = %61
  store i32 0, ptr %4, align 4
  br label %79

79:                                               ; preds = %78, %18
  %80 = load i32, ptr %4, align 4
  ret i32 %80
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaEnc_MemEncode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca %struct.CSeqOutStreamBuf, align 8
  store ptr %0, ptr %11, align 8
  store ptr %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store i64 %4, ptr %15, align 8
  store i32 %5, ptr %16, align 4
  store ptr %6, ptr %17, align 8
  store ptr %7, ptr %18, align 8
  store ptr %8, ptr %19, align 8
  %23 = load ptr, ptr %11, align 8
  store ptr %23, ptr %21, align 8
  %24 = load ptr, ptr %21, align 8
  %25 = load ptr, ptr %14, align 8
  %26 = load i64, ptr %15, align 8
  call void @LzmaEnc_SetInputBuf(ptr noundef %24, ptr noundef %25, i64 noundef %26)
  %27 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %22, i32 0, i32 0
  %28 = getelementptr inbounds %struct.ISeqOutStream, ptr %27, i32 0, i32 0
  store ptr @MyWrite, ptr %28, align 8
  %29 = load ptr, ptr %12, align 8
  %30 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %22, i32 0, i32 1
  store ptr %29, ptr %30, align 8
  %31 = load ptr, ptr %13, align 8
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %22, i32 0, i32 2
  store i64 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %22, i32 0, i32 3
  store i32 0, ptr %34, align 8
  %35 = load i32, ptr %16, align 4
  %36 = load ptr, ptr %21, align 8
  %37 = getelementptr inbounds %struct.CLzmaEnc, ptr %36, i32 0, i32 44
  store i32 %35, ptr %37, align 8
  %38 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %22, i32 0, i32 0
  %39 = load ptr, ptr %21, align 8
  %40 = getelementptr inbounds %struct.CLzmaEnc, ptr %39, i32 0, i32 43
  %41 = getelementptr inbounds %struct.CRangeEnc, ptr %40, i32 0, i32 7
  store ptr %38, ptr %41, align 8
  %42 = load ptr, ptr %11, align 8
  %43 = load ptr, ptr %14, align 8
  %44 = load i64, ptr %15, align 8
  %45 = load ptr, ptr %18, align 8
  %46 = load ptr, ptr %19, align 8
  %47 = call i32 @LzmaEnc_MemPrepare(ptr noundef %42, ptr noundef %43, i64 noundef %44, i32 noundef 0, ptr noundef %45, ptr noundef %46)
  store i32 %47, ptr %20, align 4
  %48 = load i32, ptr %20, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %9
  %51 = load ptr, ptr %21, align 8
  %52 = load ptr, ptr %17, align 8
  %53 = call i32 @LzmaEnc_Encode2(ptr noundef %51, ptr noundef %52)
  store i32 %53, ptr %20, align 4
  br label %54

54:                                               ; preds = %50, %9
  %55 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %22, i32 0, i32 2
  %56 = load i64, ptr %55, align 8
  %57 = load ptr, ptr %13, align 8
  %58 = load i64, ptr %57, align 8
  %59 = sub i64 %58, %56
  store i64 %59, ptr %57, align 8
  %60 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %22, i32 0, i32 3
  %61 = load i32, ptr %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 7, ptr %10, align 4
  br label %66

64:                                               ; preds = %54
  %65 = load i32, ptr %20, align 4
  store i32 %65, ptr %10, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = load i32, ptr %10, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaEncode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  store ptr %0, ptr %13, align 8
  store ptr %1, ptr %14, align 8
  store ptr %2, ptr %15, align 8
  store i64 %3, ptr %16, align 8
  store ptr %4, ptr %17, align 8
  store ptr %5, ptr %18, align 8
  store ptr %6, ptr %19, align 8
  store i32 %7, ptr %20, align 4
  store ptr %8, ptr %21, align 8
  store ptr %9, ptr %22, align 8
  store ptr %10, ptr %23, align 8
  %26 = load ptr, ptr %22, align 8
  %27 = call ptr @LzmaEnc_Create(ptr noundef %26)
  store ptr %27, ptr %24, align 8
  %28 = load ptr, ptr %24, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %11
  store i32 2, ptr %12, align 4
  br label %61

31:                                               ; preds = %11
  %32 = load ptr, ptr %24, align 8
  %33 = load ptr, ptr %17, align 8
  %34 = call i32 @LzmaEnc_SetProps(ptr noundef %32, ptr noundef %33)
  store i32 %34, ptr %25, align 4
  %35 = load i32, ptr %25, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load ptr, ptr %24, align 8
  %39 = load ptr, ptr %18, align 8
  %40 = load ptr, ptr %19, align 8
  %41 = call i32 @LzmaEnc_WriteProperties(ptr noundef %38, ptr noundef %39, ptr noundef %40)
  store i32 %41, ptr %25, align 4
  %42 = load i32, ptr %25, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load ptr, ptr %24, align 8
  %46 = load ptr, ptr %13, align 8
  %47 = load ptr, ptr %14, align 8
  %48 = load ptr, ptr %15, align 8
  %49 = load i64, ptr %16, align 8
  %50 = load i32, ptr %20, align 4
  %51 = load ptr, ptr %21, align 8
  %52 = load ptr, ptr %22, align 8
  %53 = load ptr, ptr %23, align 8
  %54 = call i32 @LzmaEnc_MemEncode(ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48, i64 noundef %49, i32 noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53)
  store i32 %54, ptr %25, align 4
  br label %55

55:                                               ; preds = %44, %37
  br label %56

56:                                               ; preds = %55, %31
  %57 = load ptr, ptr %24, align 8
  %58 = load ptr, ptr %22, align 8
  %59 = load ptr, ptr %23, align 8
  call void @LzmaEnc_Destroy(ptr noundef %57, ptr noundef %58, ptr noundef %59)
  %60 = load i32, ptr %25, align 4
  store i32 %60, ptr %12, align 4
  br label %61

61:                                               ; preds = %56, %30
  %62 = load i32, ptr %12, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RcTree_ReverseGetPrice(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  store i32 0, ptr %9, align 4
  store i32 1, ptr %10, align 4
  %13 = load i32, ptr %6, align 4
  store i32 %13, ptr %11, align 4
  br label %14

14:                                               ; preds = %43, %4
  %15 = load i32, ptr %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = and i32 %18, 1
  store i32 %19, ptr %12, align 4
  %20 = load i32, ptr %7, align 4
  %21 = lshr i32 %20, 1
  store i32 %21, ptr %7, align 4
  %22 = load ptr, ptr %8, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = load i32, ptr %10, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = load i32, ptr %12, align 4
  %30 = sub nsw i32 0, %29
  %31 = and i32 %30, 2047
  %32 = xor i32 %28, %31
  %33 = ashr i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %22, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %9, align 4
  %38 = add i32 %37, %36
  store i32 %38, ptr %9, align 4
  %39 = load i32, ptr %10, align 4
  %40 = shl i32 %39, 1
  %41 = load i32, ptr %12, align 4
  %42 = or i32 %40, %41
  store i32 %42, ptr %10, align 4
  br label %43

43:                                               ; preds = %17
  %44 = load i32, ptr %11, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, ptr %11, align 4
  br label %14, !llvm.loop !39

46:                                               ; preds = %14
  %47 = load i32, ptr %9, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RcTree_GetPrice(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  store i32 0, ptr %9, align 4
  %10 = load i32, ptr %6, align 4
  %11 = shl i32 1, %10
  %12 = load i32, ptr %7, align 4
  %13 = or i32 %12, %11
  store i32 %13, ptr %7, align 4
  br label %14

14:                                               ; preds = %17, %4
  %15 = load i32, ptr %7, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load ptr, ptr %8, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = load i32, ptr %7, align 4
  %21 = lshr i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i16, ptr %19, i64 %22
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = load i32, ptr %7, align 4
  %27 = and i32 %26, 1
  %28 = sub nsw i32 0, %27
  %29 = and i32 %28, 2047
  %30 = xor i32 %25, %29
  %31 = ashr i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %18, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %9, align 4
  %36 = add i32 %35, %34
  store i32 %36, ptr %9, align 4
  %37 = load i32, ptr %7, align 4
  %38 = lshr i32 %37, 1
  store i32 %38, ptr %7, align 4
  br label %14, !llvm.loop !40

39:                                               ; preds = %14
  %40 = load i32, ptr %9, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LenPriceEnc_UpdateTable(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.CLenPriceEnc, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %5, align 4
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.CLenPriceEnc, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.CLenPriceEnc, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [16 x [272 x i32]], ptr %14, i64 0, i64 %16
  %18 = getelementptr inbounds [272 x i32], ptr %17, i64 0, i64 0
  %19 = load ptr, ptr %6, align 8
  call void @LenEnc_SetPrices(ptr noundef %8, i32 noundef %9, i32 noundef %12, ptr noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.CLenPriceEnc, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.CLenPriceEnc, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i32], ptr %24, i64 0, i64 %26
  store i32 %22, ptr %27, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LenEnc_SetPrices(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %struct.CLenEnc, ptr %17, i32 0, i32 0
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = ashr i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %16, i64 %22
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %11, align 4
  %25 = load ptr, ptr %10, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds %struct.CLenEnc, ptr %26, i32 0, i32 0
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = xor i32 %29, 2047
  %31 = ashr i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %25, i64 %32
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %12, align 4
  %35 = load i32, ptr %12, align 4
  %36 = load ptr, ptr %10, align 8
  %37 = load ptr, ptr %6, align 8
  %38 = getelementptr inbounds %struct.CLenEnc, ptr %37, i32 0, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = ashr i32 %40, 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %36, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %35, %44
  store i32 %45, ptr %13, align 4
  %46 = load i32, ptr %12, align 4
  %47 = load ptr, ptr %10, align 8
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr inbounds %struct.CLenEnc, ptr %48, i32 0, i32 1
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = xor i32 %51, 2047
  %53 = ashr i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %47, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %46, %56
  store i32 %57, ptr %14, align 4
  store i32 0, ptr %15, align 4
  store i32 0, ptr %15, align 4
  br label %58

58:                                               ; preds = %83, %5
  %59 = load i32, ptr %15, align 4
  %60 = icmp ult i32 %59, 8
  br i1 %60, label %61, label %86

61:                                               ; preds = %58
  %62 = load i32, ptr %15, align 4
  %63 = load i32, ptr %8, align 4
  %64 = icmp uge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %139

66:                                               ; preds = %61
  %67 = load i32, ptr %11, align 4
  %68 = load ptr, ptr %6, align 8
  %69 = getelementptr inbounds %struct.CLenEnc, ptr %68, i32 0, i32 2
  %70 = getelementptr inbounds [128 x i16], ptr %69, i64 0, i64 0
  %71 = load i32, ptr %7, align 4
  %72 = shl i32 %71, 3
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i16, ptr %70, i64 %73
  %75 = load i32, ptr %15, align 4
  %76 = load ptr, ptr %10, align 8
  %77 = call i32 @RcTree_GetPrice(ptr noundef %74, i32 noundef 3, i32 noundef %75, ptr noundef %76)
  %78 = add i32 %67, %77
  %79 = load ptr, ptr %9, align 8
  %80 = load i32, ptr %15, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, ptr %79, i64 %81
  store i32 %78, ptr %82, align 4
  br label %83

83:                                               ; preds = %66
  %84 = load i32, ptr %15, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %15, align 4
  br label %58, !llvm.loop !41

86:                                               ; preds = %58
  br label %87

87:                                               ; preds = %113, %86
  %88 = load i32, ptr %15, align 4
  %89 = icmp ult i32 %88, 16
  br i1 %89, label %90, label %116

90:                                               ; preds = %87
  %91 = load i32, ptr %15, align 4
  %92 = load i32, ptr %8, align 4
  %93 = icmp uge i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %139

95:                                               ; preds = %90
  %96 = load i32, ptr %13, align 4
  %97 = load ptr, ptr %6, align 8
  %98 = getelementptr inbounds %struct.CLenEnc, ptr %97, i32 0, i32 3
  %99 = getelementptr inbounds [128 x i16], ptr %98, i64 0, i64 0
  %100 = load i32, ptr %7, align 4
  %101 = shl i32 %100, 3
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i16, ptr %99, i64 %102
  %104 = load i32, ptr %15, align 4
  %105 = sub i32 %104, 8
  %106 = load ptr, ptr %10, align 8
  %107 = call i32 @RcTree_GetPrice(ptr noundef %103, i32 noundef 3, i32 noundef %105, ptr noundef %106)
  %108 = add i32 %96, %107
  %109 = load ptr, ptr %9, align 8
  %110 = load i32, ptr %15, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %109, i64 %111
  store i32 %108, ptr %112, align 4
  br label %113

113:                                              ; preds = %95
  %114 = load i32, ptr %15, align 4
  %115 = add i32 %114, 1
  store i32 %115, ptr %15, align 4
  br label %87, !llvm.loop !42

116:                                              ; preds = %87
  br label %117

117:                                              ; preds = %136, %116
  %118 = load i32, ptr %15, align 4
  %119 = load i32, ptr %8, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %139

121:                                              ; preds = %117
  %122 = load i32, ptr %14, align 4
  %123 = load ptr, ptr %6, align 8
  %124 = getelementptr inbounds %struct.CLenEnc, ptr %123, i32 0, i32 4
  %125 = getelementptr inbounds [256 x i16], ptr %124, i64 0, i64 0
  %126 = load i32, ptr %15, align 4
  %127 = sub i32 %126, 8
  %128 = sub i32 %127, 8
  %129 = load ptr, ptr %10, align 8
  %130 = call i32 @RcTree_GetPrice(ptr noundef %125, i32 noundef 8, i32 noundef %128, ptr noundef %129)
  %131 = add i32 %122, %130
  %132 = load ptr, ptr %9, align 8
  %133 = load i32, ptr %15, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, ptr %132, i64 %134
  store i32 %131, ptr %135, align 4
  br label %136

136:                                              ; preds = %121
  %137 = load i32, ptr %15, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr %15, align 4
  br label %117, !llvm.loop !43

139:                                              ; preds = %65, %94, %117
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LzmaEnc_Alloc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store i32 4096, ptr %10, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i32 0, i32 43
  %16 = load ptr, ptr %8, align 8
  %17 = call i32 @RangeEnc_Alloc(ptr noundef %15, ptr noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 2, ptr %5, align 4
  br label %186

20:                                               ; preds = %4
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds %struct.CLzmaEnc, ptr %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct._CMatchFinder, ptr %22, i32 0, i32 21
  %24 = load i32, ptr %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, ptr %11, align 4
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds %struct.CLzmaEnc, ptr %27, i32 0, i32 48
  %29 = load i32, ptr %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %20
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds %struct.CLzmaEnc, ptr %32, i32 0, i32 42
  %34 = load i32, ptr %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, ptr %11, align 4
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %36, %31, %20
  %40 = phi i1 [ false, %31 ], [ false, %20 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr inbounds %struct.CLzmaEnc, ptr %42, i32 0, i32 2
  store i32 %41, ptr %43, align 8
  %44 = load ptr, ptr %6, align 8
  %45 = getelementptr inbounds %struct.CLzmaEnc, ptr %44, i32 0, i32 24
  %46 = load i32, ptr %45, align 4
  %47 = load ptr, ptr %6, align 8
  %48 = getelementptr inbounds %struct.CLzmaEnc, ptr %47, i32 0, i32 25
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %46, %49
  store i32 %50, ptr %12, align 4
  %51 = load ptr, ptr %6, align 8
  %52 = getelementptr inbounds %struct.CLzmaEnc, ptr %51, i32 0, i32 29
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %39
  %56 = load ptr, ptr %6, align 8
  %57 = getelementptr inbounds %struct.CLzmaEnc, ptr %56, i32 0, i32 53
  %58 = getelementptr inbounds %struct.CSaveState, ptr %57, i32 0, i32 0
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %6, align 8
  %63 = getelementptr inbounds %struct.CLzmaEnc, ptr %62, i32 0, i32 41
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %12, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %110

67:                                               ; preds = %61, %55, %39
  %68 = load ptr, ptr %6, align 8
  %69 = load ptr, ptr %8, align 8
  call void @LzmaEnc_FreeLits(ptr noundef %68, ptr noundef %69)
  %70 = load ptr, ptr %8, align 8
  %71 = getelementptr inbounds %struct.ISzAlloc, ptr %70, i32 0, i32 0
  %72 = load ptr, ptr %71, align 8
  %73 = load ptr, ptr %8, align 8
  %74 = load i32, ptr %12, align 4
  %75 = shl i32 768, %74
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 2
  %78 = call ptr %72(ptr noundef %73, i64 noundef %77)
  %79 = load ptr, ptr %6, align 8
  %80 = getelementptr inbounds %struct.CLzmaEnc, ptr %79, i32 0, i32 29
  store ptr %78, ptr %80, align 8
  %81 = load ptr, ptr %8, align 8
  %82 = getelementptr inbounds %struct.ISzAlloc, ptr %81, i32 0, i32 0
  %83 = load ptr, ptr %82, align 8
  %84 = load ptr, ptr %8, align 8
  %85 = load i32, ptr %12, align 4
  %86 = shl i32 768, %85
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 2
  %89 = call ptr %83(ptr noundef %84, i64 noundef %88)
  %90 = load ptr, ptr %6, align 8
  %91 = getelementptr inbounds %struct.CLzmaEnc, ptr %90, i32 0, i32 53
  %92 = getelementptr inbounds %struct.CSaveState, ptr %91, i32 0, i32 0
  store ptr %89, ptr %92, align 8
  %93 = load ptr, ptr %6, align 8
  %94 = getelementptr inbounds %struct.CLzmaEnc, ptr %93, i32 0, i32 29
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %67
  %98 = load ptr, ptr %6, align 8
  %99 = getelementptr inbounds %struct.CLzmaEnc, ptr %98, i32 0, i32 53
  %100 = getelementptr inbounds %struct.CSaveState, ptr %99, i32 0, i32 0
  %101 = load ptr, ptr %100, align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %97, %67
  %104 = load ptr, ptr %6, align 8
  %105 = load ptr, ptr %8, align 8
  call void @LzmaEnc_FreeLits(ptr noundef %104, ptr noundef %105)
  store i32 2, ptr %5, align 4
  br label %186

106:                                              ; preds = %97
  %107 = load i32, ptr %12, align 4
  %108 = load ptr, ptr %6, align 8
  %109 = getelementptr inbounds %struct.CLzmaEnc, ptr %108, i32 0, i32 41
  store i32 %107, ptr %109, align 4
  br label %110

110:                                              ; preds = %106, %61
  %111 = load ptr, ptr %6, align 8
  %112 = getelementptr inbounds %struct.CLzmaEnc, ptr %111, i32 0, i32 50
  %113 = load i32, ptr %112, align 8
  %114 = icmp ugt i32 %113, 16777216
  %115 = zext i1 %114 to i32
  %116 = load ptr, ptr %6, align 8
  %117 = getelementptr inbounds %struct.CLzmaEnc, ptr %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct._CMatchFinder, ptr %117, i32 0, i32 22
  store i32 %115, ptr %118, align 4
  %119 = load i32, ptr %10, align 4
  %120 = load ptr, ptr %6, align 8
  %121 = getelementptr inbounds %struct.CLzmaEnc, ptr %120, i32 0, i32 50
  %122 = load i32, ptr %121, align 8
  %123 = add i32 %119, %122
  %124 = load i32, ptr %7, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %110
  %127 = load i32, ptr %7, align 4
  %128 = load ptr, ptr %6, align 8
  %129 = getelementptr inbounds %struct.CLzmaEnc, ptr %128, i32 0, i32 50
  %130 = load i32, ptr %129, align 8
  %131 = sub i32 %127, %130
  store i32 %131, ptr %10, align 4
  br label %132

132:                                              ; preds = %126, %110
  %133 = load ptr, ptr %6, align 8
  %134 = getelementptr inbounds %struct.CLzmaEnc, ptr %133, i32 0, i32 2
  %135 = load i32, ptr %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %162

137:                                              ; preds = %132
  %138 = load ptr, ptr %6, align 8
  %139 = getelementptr inbounds %struct.CLzmaEnc, ptr %138, i32 0, i32 3
  %140 = load ptr, ptr %6, align 8
  %141 = getelementptr inbounds %struct.CLzmaEnc, ptr %140, i32 0, i32 50
  %142 = load i32, ptr %141, align 8
  %143 = load i32, ptr %10, align 4
  %144 = load ptr, ptr %6, align 8
  %145 = getelementptr inbounds %struct.CLzmaEnc, ptr %144, i32 0, i32 15
  %146 = load i32, ptr %145, align 8
  %147 = load ptr, ptr %9, align 8
  %148 = call i32 @MatchFinderMt_Create(ptr noundef %139, i32 noundef %142, i32 noundef %143, i32 noundef %146, i32 noundef 273, ptr noundef %147)
  store i32 %148, ptr %13, align 4
  %149 = load i32, ptr %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %137
  %152 = load i32, ptr %13, align 4
  store i32 %152, ptr %5, align 4
  br label %186

153:                                              ; preds = %137
  %154 = load ptr, ptr %6, align 8
  %155 = getelementptr inbounds %struct.CLzmaEnc, ptr %154, i32 0, i32 3
  %156 = load ptr, ptr %6, align 8
  %157 = getelementptr inbounds %struct.CLzmaEnc, ptr %156, i32 0, i32 1
  store ptr %155, ptr %157, align 8
  %158 = load ptr, ptr %6, align 8
  %159 = getelementptr inbounds %struct.CLzmaEnc, ptr %158, i32 0, i32 3
  %160 = load ptr, ptr %6, align 8
  %161 = getelementptr inbounds %struct.CLzmaEnc, ptr %160, i32 0, i32 0
  call void @MatchFinderMt_CreateVTable(ptr noundef %159, ptr noundef %161)
  br label %185

162:                                              ; preds = %132
  %163 = load ptr, ptr %6, align 8
  %164 = getelementptr inbounds %struct.CLzmaEnc, ptr %163, i32 0, i32 4
  %165 = load ptr, ptr %6, align 8
  %166 = getelementptr inbounds %struct.CLzmaEnc, ptr %165, i32 0, i32 50
  %167 = load i32, ptr %166, align 8
  %168 = load i32, ptr %10, align 4
  %169 = load ptr, ptr %6, align 8
  %170 = getelementptr inbounds %struct.CLzmaEnc, ptr %169, i32 0, i32 15
  %171 = load i32, ptr %170, align 8
  %172 = load ptr, ptr %9, align 8
  %173 = call i32 @MatchFinder_Create(ptr noundef %164, i32 noundef %167, i32 noundef %168, i32 noundef %171, i32 noundef 273, ptr noundef %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %162
  store i32 2, ptr %5, align 4
  br label %186

176:                                              ; preds = %162
  %177 = load ptr, ptr %6, align 8
  %178 = getelementptr inbounds %struct.CLzmaEnc, ptr %177, i32 0, i32 4
  %179 = load ptr, ptr %6, align 8
  %180 = getelementptr inbounds %struct.CLzmaEnc, ptr %179, i32 0, i32 1
  store ptr %178, ptr %180, align 8
  %181 = load ptr, ptr %6, align 8
  %182 = getelementptr inbounds %struct.CLzmaEnc, ptr %181, i32 0, i32 4
  %183 = load ptr, ptr %6, align 8
  %184 = getelementptr inbounds %struct.CLzmaEnc, ptr %183, i32 0, i32 0
  call void @MatchFinder_CreateVTable(ptr noundef %182, ptr noundef %184)
  br label %185

185:                                              ; preds = %176, %153
  store i32 0, ptr %5, align 4
  br label %186

186:                                              ; preds = %185, %175, %151, %103, %19
  %187 = load i32, ptr %5, align 4
  ret i32 %187
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RangeEnc_Alloc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.CRangeEnc, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %struct.ISzAlloc, ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = call ptr %13(ptr noundef %14, i64 noundef 65536)
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.CRangeEnc, ptr %16, i32 0, i32 6
  store ptr %15, ptr %17, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.CRangeEnc, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  store i32 0, ptr %3, align 4
  br label %31

23:                                               ; preds = %10
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.CRangeEnc, ptr %24, i32 0, i32 6
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 65536
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.CRangeEnc, ptr %28, i32 0, i32 5
  store ptr %27, ptr %29, align 8
  br label %30

30:                                               ; preds = %23, %2
  store i32 1, ptr %3, align 4
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i32, ptr %3, align 4
  ret i32 %32
}

declare i32 @MatchFinderMt_Create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare void @MatchFinderMt_CreateVTable(ptr noundef, ptr noundef) #2

declare i32 @MatchFinder_Create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare void @MatchFinder_CreateVTable(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckErrors(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.CLzmaEnc, ptr %4, i32 0, i32 49
  %6 = load i32, ptr %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.CLzmaEnc, ptr %9, i32 0, i32 49
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.CLzmaEnc, ptr %13, i32 0, i32 43
  %15 = getelementptr inbounds %struct.CRangeEnc, ptr %14, i32 0, i32 9
  %16 = load i32, ptr %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.CLzmaEnc, ptr %19, i32 0, i32 49
  store i32 9, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.CLzmaEnc, ptr %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct._CMatchFinder, ptr %23, i32 0, i32 27
  %25 = load i32, ptr %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.CLzmaEnc, ptr %28, i32 0, i32 49
  store i32 8, ptr %29, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.CLzmaEnc, ptr %31, i32 0, i32 49
  %33 = load i32, ptr %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr inbounds %struct.CLzmaEnc, ptr %36, i32 0, i32 47
  store i32 1, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds %struct.CLzmaEnc, ptr %39, i32 0, i32 49
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %2, align 4
  br label %42

42:                                               ; preds = %38, %8
  %43 = load i32, ptr %2, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Flush(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.CLzmaEnc, ptr %5, i32 0, i32 47
  store i32 1, ptr %6, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %7, i32 0, i32 44
  %9 = load i32, ptr %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8
  %13 = load i32, ptr %4, align 4
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i32 0, i32 28
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %13, %16
  call void @WriteEndMarker(ptr noundef %12, i32 noundef %17)
  br label %18

18:                                               ; preds = %11, %2
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.CLzmaEnc, ptr %19, i32 0, i32 43
  call void @RangeEnc_FlushData(ptr noundef %20)
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.CLzmaEnc, ptr %21, i32 0, i32 43
  call void @RangeEnc_FlushStream(ptr noundef %22)
  %23 = load ptr, ptr %3, align 8
  %24 = call i32 @CheckErrors(ptr noundef %23)
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadMatchDistances(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %5, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.CLzmaEnc, ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct._IMatchFinder, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.CLzmaEnc, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 %14(ptr noundef %17)
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.CLzmaEnc, ptr %19, i32 0, i32 10
  store i32 %18, ptr %20, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.CLzmaEnc, ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct._IMatchFinder, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.CLzmaEnc, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.CLzmaEnc, ptr %28, i32 0, i32 14
  %30 = getelementptr inbounds [549 x i32], ptr %29, i64 0, i64 0
  %31 = call i32 %24(ptr noundef %27, ptr noundef %30)
  store i32 %31, ptr %6, align 4
  %32 = load i32, ptr %6, align 4
  %33 = icmp ugt i32 %32, 0
  br i1 %33, label %34, label %103

34:                                               ; preds = %2
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.CLzmaEnc, ptr %35, i32 0, i32 14
  %37 = load i32, ptr %6, align 4
  %38 = sub i32 %37, 2
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [549 x i32], ptr %36, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %5, align 4
  %42 = load i32, ptr %5, align 4
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.CLzmaEnc, ptr %43, i32 0, i32 15
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %102

47:                                               ; preds = %34
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.CLzmaEnc, ptr %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct._IMatchFinder, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.CLzmaEnc, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = call ptr %51(ptr noundef %54)
  %56 = getelementptr inbounds i8, ptr %55, i64 -1
  store ptr %56, ptr %7, align 8
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds %struct.CLzmaEnc, ptr %57, i32 0, i32 14
  %59 = load i32, ptr %6, align 4
  %60 = sub i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [549 x i32], ptr %58, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %8, align 4
  %65 = load ptr, ptr %3, align 8
  %66 = getelementptr inbounds %struct.CLzmaEnc, ptr %65, i32 0, i32 10
  %67 = load i32, ptr %66, align 8
  store i32 %67, ptr %9, align 4
  %68 = load i32, ptr %9, align 4
  %69 = icmp ugt i32 %68, 273
  br i1 %69, label %70, label %71

70:                                               ; preds = %47
  store i32 273, ptr %9, align 4
  br label %71

71:                                               ; preds = %70, %47
  %72 = load ptr, ptr %7, align 8
  %73 = load i32, ptr %8, align 4
  %74 = zext i32 %73 to i64
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds i8, ptr %72, i64 %75
  store ptr %76, ptr %10, align 8
  br label %77

77:                                               ; preds = %98, %71
  %78 = load i32, ptr %5, align 4
  %79 = load i32, ptr %9, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load ptr, ptr %7, align 8
  %83 = load i32, ptr %5, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %82, i64 %84
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = load ptr, ptr %10, align 8
  %89 = load i32, ptr %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %88, i64 %90
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %87, %93
  br label %95

95:                                               ; preds = %81, %77
  %96 = phi i1 [ false, %77 ], [ %94, %81 ]
  br i1 %96, label %97, label %101

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97
  %99 = load i32, ptr %5, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %5, align 4
  br label %77, !llvm.loop !44

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %34
  br label %103

103:                                              ; preds = %102, %2
  %104 = load ptr, ptr %3, align 8
  %105 = getelementptr inbounds %struct.CLzmaEnc, ptr %104, i32 0, i32 16
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 4
  %108 = load i32, ptr %6, align 4
  %109 = load ptr, ptr %4, align 8
  store i32 %108, ptr %109, align 4
  %110 = load i32, ptr %5, align 4
  ret i32 %110
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RangeEnc_EncodeBit(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  store i32 %11, ptr %7, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.CRangeEnc, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 11
  %16 = load i32, ptr %7, align 4
  %17 = mul i32 %15, %16
  store i32 %17, ptr %8, align 4
  %18 = load i32, ptr %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load i32, ptr %8, align 4
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.CRangeEnc, ptr %22, i32 0, i32 0
  store i32 %21, ptr %23, align 8
  %24 = load i32, ptr %7, align 4
  %25 = sub i32 2048, %24
  %26 = lshr i32 %25, 5
  %27 = load i32, ptr %7, align 4
  %28 = add i32 %27, %26
  store i32 %28, ptr %7, align 4
  br label %45

29:                                               ; preds = %3
  %30 = load i32, ptr %8, align 4
  %31 = zext i32 %30 to i64
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.CRangeEnc, ptr %32, i32 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %34, %31
  store i64 %35, ptr %33, align 8
  %36 = load i32, ptr %8, align 4
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %struct.CRangeEnc, ptr %37, i32 0, i32 0
  %39 = load i32, ptr %38, align 8
  %40 = sub i32 %39, %36
  store i32 %40, ptr %38, align 8
  %41 = load i32, ptr %7, align 4
  %42 = lshr i32 %41, 5
  %43 = load i32, ptr %7, align 4
  %44 = sub i32 %43, %42
  store i32 %44, ptr %7, align 4
  br label %45

45:                                               ; preds = %29, %20
  %46 = load i32, ptr %7, align 4
  %47 = trunc i32 %46 to i16
  %48 = load ptr, ptr %5, align 8
  store i16 %47, ptr %48, align 2
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds %struct.CRangeEnc, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 8
  %52 = icmp ult i32 %51, 16777216
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.CRangeEnc, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 8
  %57 = shl i32 %56, 8
  store i32 %57, ptr %55, align 8
  %58 = load ptr, ptr %4, align 8
  call void @RangeEnc_ShiftLow(ptr noundef %58)
  br label %59

59:                                               ; preds = %53, %45
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LitEnc_Encode(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 256
  store i32 %8, ptr %6, align 4
  br label %9

9:                                                ; preds = %21, %3
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load i32, ptr %6, align 4
  %13 = lshr i32 %12, 8
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i16, ptr %11, i64 %14
  %16 = load i32, ptr %6, align 4
  %17 = lshr i32 %16, 7
  %18 = and i32 %17, 1
  call void @RangeEnc_EncodeBit(ptr noundef %10, ptr noundef %15, i32 noundef %18)
  %19 = load i32, ptr %6, align 4
  %20 = shl i32 %19, 1
  store i32 %20, ptr %6, align 4
  br label %21

21:                                               ; preds = %9
  %22 = load i32, ptr %6, align 4
  %23 = icmp ult i32 %22, 65536
  br i1 %23, label %9, label %24, !llvm.loop !45

24:                                               ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetOptimumFast(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %struct.CLzmaEnc, ptr %21, i32 0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load ptr, ptr %4, align 8
  %27 = call i32 @ReadMatchDistances(ptr noundef %26, ptr noundef %9)
  store i32 %27, ptr %7, align 4
  br label %35

28:                                               ; preds = %2
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.CLzmaEnc, ptr %29, i32 0, i32 8
  %31 = load i32, ptr %30, align 8
  store i32 %31, ptr %7, align 4
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.CLzmaEnc, ptr %32, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %9, align 4
  br label %35

35:                                               ; preds = %28, %25
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.CLzmaEnc, ptr %36, i32 0, i32 10
  %38 = load i32, ptr %37, align 8
  store i32 %38, ptr %6, align 4
  %39 = load ptr, ptr %5, align 8
  store i32 -1, ptr %39, align 4
  %40 = load i32, ptr %6, align 4
  %41 = icmp ult i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, ptr %3, align 4
  br label %414

43:                                               ; preds = %35
  %44 = load i32, ptr %6, align 4
  %45 = icmp ugt i32 %44, 273
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 273, ptr %6, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.CLzmaEnc, ptr %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct._IMatchFinder, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds %struct.CLzmaEnc, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = call ptr %51(ptr noundef %54)
  %56 = getelementptr inbounds i8, ptr %55, i64 -1
  store ptr %56, ptr %13, align 8
  store i32 0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  store i32 0, ptr %12, align 4
  br label %57

57:                                               ; preds = %138, %47
  %58 = load i32, ptr %12, align 4
  %59 = icmp ult i32 %58, 4
  br i1 %59, label %60, label %141

60:                                               ; preds = %57
  %61 = load ptr, ptr %13, align 8
  %62 = load ptr, ptr %4, align 8
  %63 = getelementptr inbounds %struct.CLzmaEnc, ptr %62, i32 0, i32 17
  %64 = load i32, ptr %12, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i32], ptr %63, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, 1
  %69 = zext i32 %68 to i64
  %70 = sub i64 0, %69
  %71 = getelementptr inbounds i8, ptr %61, i64 %70
  store ptr %71, ptr %16, align 8
  %72 = load ptr, ptr %13, align 8
  %73 = getelementptr inbounds i8, ptr %72, i64 0
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load ptr, ptr %16, align 8
  %77 = getelementptr inbounds i8, ptr %76, i64 0
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp ne i32 %75, %79
  br i1 %80, label %91, label %81

81:                                               ; preds = %60
  %82 = load ptr, ptr %13, align 8
  %83 = getelementptr inbounds i8, ptr %82, i64 1
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load ptr, ptr %16, align 8
  %87 = getelementptr inbounds i8, ptr %86, i64 1
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %85, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81, %60
  br label %138

92:                                               ; preds = %81
  store i32 2, ptr %15, align 4
  br label %93

93:                                               ; preds = %114, %92
  %94 = load i32, ptr %15, align 4
  %95 = load i32, ptr %6, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load ptr, ptr %13, align 8
  %99 = load i32, ptr %15, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %98, i64 %100
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = load ptr, ptr %16, align 8
  %105 = load i32, ptr %15, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %104, i64 %106
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %103, %109
  br label %111

111:                                              ; preds = %97, %93
  %112 = phi i1 [ false, %93 ], [ %110, %97 ]
  br i1 %112, label %113, label %117

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %113
  %115 = load i32, ptr %15, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %15, align 4
  br label %93, !llvm.loop !46

117:                                              ; preds = %111
  %118 = load i32, ptr %15, align 4
  %119 = load ptr, ptr %4, align 8
  %120 = getelementptr inbounds %struct.CLzmaEnc, ptr %119, i32 0, i32 15
  %121 = load i32, ptr %120, align 8
  %122 = icmp uge i32 %118, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load i32, ptr %12, align 4
  %125 = load ptr, ptr %5, align 8
  store i32 %124, ptr %125, align 4
  %126 = load ptr, ptr %4, align 8
  %127 = load i32, ptr %15, align 4
  %128 = sub i32 %127, 1
  call void @MovePos(ptr noundef %126, i32 noundef %128)
  %129 = load i32, ptr %15, align 4
  store i32 %129, ptr %3, align 4
  br label %414

130:                                              ; preds = %117
  %131 = load i32, ptr %15, align 4
  %132 = load i32, ptr %11, align 4
  %133 = icmp ugt i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, ptr %12, align 4
  store i32 %135, ptr %10, align 4
  %136 = load i32, ptr %15, align 4
  store i32 %136, ptr %11, align 4
  br label %137

137:                                              ; preds = %134, %130
  br label %138

138:                                              ; preds = %137, %91
  %139 = load i32, ptr %12, align 4
  %140 = add i32 %139, 1
  store i32 %140, ptr %12, align 4
  br label %57, !llvm.loop !47

141:                                              ; preds = %57
  %142 = load ptr, ptr %4, align 8
  %143 = getelementptr inbounds %struct.CLzmaEnc, ptr %142, i32 0, i32 14
  %144 = getelementptr inbounds [549 x i32], ptr %143, i64 0, i64 0
  store ptr %144, ptr %14, align 8
  %145 = load i32, ptr %7, align 4
  %146 = load ptr, ptr %4, align 8
  %147 = getelementptr inbounds %struct.CLzmaEnc, ptr %146, i32 0, i32 15
  %148 = load i32, ptr %147, align 8
  %149 = icmp uge i32 %145, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %141
  %151 = load ptr, ptr %14, align 8
  %152 = load i32, ptr %9, align 4
  %153 = sub i32 %152, 1
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, ptr %151, i64 %154
  %156 = load i32, ptr %155, align 4
  %157 = add i32 %156, 4
  %158 = load ptr, ptr %5, align 8
  store i32 %157, ptr %158, align 4
  %159 = load ptr, ptr %4, align 8
  %160 = load i32, ptr %7, align 4
  %161 = sub i32 %160, 1
  call void @MovePos(ptr noundef %159, i32 noundef %161)
  %162 = load i32, ptr %7, align 4
  store i32 %162, ptr %3, align 4
  br label %414

163:                                              ; preds = %141
  store i32 0, ptr %8, align 4
  %164 = load i32, ptr %7, align 4
  %165 = icmp uge i32 %164, 2
  br i1 %165, label %166, label %222

166:                                              ; preds = %163
  %167 = load ptr, ptr %14, align 8
  %168 = load i32, ptr %9, align 4
  %169 = sub i32 %168, 1
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i32, ptr %167, i64 %170
  %172 = load i32, ptr %171, align 4
  store i32 %172, ptr %8, align 4
  br label %173

173:                                              ; preds = %199, %166
  %174 = load i32, ptr %9, align 4
  %175 = icmp ugt i32 %174, 2
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = load i32, ptr %7, align 4
  %178 = load ptr, ptr %14, align 8
  %179 = load i32, ptr %9, align 4
  %180 = sub i32 %179, 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, ptr %178, i64 %181
  %183 = load i32, ptr %182, align 4
  %184 = add i32 %183, 1
  %185 = icmp eq i32 %177, %184
  br label %186

186:                                              ; preds = %176, %173
  %187 = phi i1 [ false, %173 ], [ %185, %176 ]
  br i1 %187, label %188, label %214

188:                                              ; preds = %186
  %189 = load i32, ptr %8, align 4
  %190 = lshr i32 %189, 7
  %191 = load ptr, ptr %14, align 8
  %192 = load i32, ptr %9, align 4
  %193 = sub i32 %192, 3
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i32, ptr %191, i64 %194
  %196 = load i32, ptr %195, align 4
  %197 = icmp ugt i32 %190, %196
  br i1 %197, label %199, label %198

198:                                              ; preds = %188
  br label %214

199:                                              ; preds = %188
  %200 = load i32, ptr %9, align 4
  %201 = sub i32 %200, 2
  store i32 %201, ptr %9, align 4
  %202 = load ptr, ptr %14, align 8
  %203 = load i32, ptr %9, align 4
  %204 = sub i32 %203, 2
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, ptr %202, i64 %205
  %207 = load i32, ptr %206, align 4
  store i32 %207, ptr %7, align 4
  %208 = load ptr, ptr %14, align 8
  %209 = load i32, ptr %9, align 4
  %210 = sub i32 %209, 1
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32, ptr %208, i64 %211
  %213 = load i32, ptr %212, align 4
  store i32 %213, ptr %8, align 4
  br label %173, !llvm.loop !48

214:                                              ; preds = %198, %186
  %215 = load i32, ptr %7, align 4
  %216 = icmp eq i32 %215, 2
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load i32, ptr %8, align 4
  %219 = icmp uge i32 %218, 128
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  store i32 1, ptr %7, align 4
  br label %221

221:                                              ; preds = %220, %217, %214
  br label %222

222:                                              ; preds = %221, %163
  %223 = load i32, ptr %11, align 4
  %224 = icmp uge i32 %223, 2
  br i1 %224, label %225, label %253

225:                                              ; preds = %222
  %226 = load i32, ptr %11, align 4
  %227 = add i32 %226, 1
  %228 = load i32, ptr %7, align 4
  %229 = icmp uge i32 %227, %228
  br i1 %229, label %246, label %230

230:                                              ; preds = %225
  %231 = load i32, ptr %11, align 4
  %232 = add i32 %231, 2
  %233 = load i32, ptr %7, align 4
  %234 = icmp uge i32 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load i32, ptr %8, align 4
  %237 = icmp uge i32 %236, 512
  br i1 %237, label %246, label %238

238:                                              ; preds = %235, %230
  %239 = load i32, ptr %11, align 4
  %240 = add i32 %239, 3
  %241 = load i32, ptr %7, align 4
  %242 = icmp uge i32 %240, %241
  br i1 %242, label %243, label %253

243:                                              ; preds = %238
  %244 = load i32, ptr %8, align 4
  %245 = icmp uge i32 %244, 32768
  br i1 %245, label %246, label %253

246:                                              ; preds = %243, %235, %225
  %247 = load i32, ptr %10, align 4
  %248 = load ptr, ptr %5, align 8
  store i32 %247, ptr %248, align 4
  %249 = load ptr, ptr %4, align 8
  %250 = load i32, ptr %11, align 4
  %251 = sub i32 %250, 1
  call void @MovePos(ptr noundef %249, i32 noundef %251)
  %252 = load i32, ptr %11, align 4
  store i32 %252, ptr %3, align 4
  br label %414

253:                                              ; preds = %243, %238, %222
  %254 = load i32, ptr %7, align 4
  %255 = icmp ult i32 %254, 2
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = load i32, ptr %6, align 4
  %258 = icmp ule i32 %257, 2
  br i1 %258, label %259, label %260

259:                                              ; preds = %256, %253
  store i32 1, ptr %3, align 4
  br label %414

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8
  %262 = load ptr, ptr %4, align 8
  %263 = getelementptr inbounds %struct.CLzmaEnc, ptr %262, i32 0, i32 9
  %264 = call i32 @ReadMatchDistances(ptr noundef %261, ptr noundef %263)
  %265 = load ptr, ptr %4, align 8
  %266 = getelementptr inbounds %struct.CLzmaEnc, ptr %265, i32 0, i32 8
  store i32 %264, ptr %266, align 8
  %267 = load ptr, ptr %4, align 8
  %268 = getelementptr inbounds %struct.CLzmaEnc, ptr %267, i32 0, i32 8
  %269 = load i32, ptr %268, align 8
  %270 = icmp uge i32 %269, 2
  br i1 %270, label %271, label %325

271:                                              ; preds = %260
  %272 = load ptr, ptr %14, align 8
  %273 = load ptr, ptr %4, align 8
  %274 = getelementptr inbounds %struct.CLzmaEnc, ptr %273, i32 0, i32 9
  %275 = load i32, ptr %274, align 4
  %276 = sub i32 %275, 1
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds i32, ptr %272, i64 %277
  %279 = load i32, ptr %278, align 4
  store i32 %279, ptr %17, align 4
  %280 = load ptr, ptr %4, align 8
  %281 = getelementptr inbounds %struct.CLzmaEnc, ptr %280, i32 0, i32 8
  %282 = load i32, ptr %281, align 8
  %283 = load i32, ptr %7, align 4
  %284 = icmp uge i32 %282, %283
  br i1 %284, label %285, label %289

285:                                              ; preds = %271
  %286 = load i32, ptr %17, align 4
  %287 = load i32, ptr %8, align 4
  %288 = icmp ult i32 %286, %287
  br i1 %288, label %323, label %289

289:                                              ; preds = %285, %271
  %290 = load ptr, ptr %4, align 8
  %291 = getelementptr inbounds %struct.CLzmaEnc, ptr %290, i32 0, i32 8
  %292 = load i32, ptr %291, align 8
  %293 = load i32, ptr %7, align 4
  %294 = add i32 %293, 1
  %295 = icmp eq i32 %292, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %289
  %297 = load i32, ptr %17, align 4
  %298 = lshr i32 %297, 7
  %299 = load i32, ptr %8, align 4
  %300 = icmp ugt i32 %298, %299
  br i1 %300, label %301, label %323

301:                                              ; preds = %296, %289
  %302 = load ptr, ptr %4, align 8
  %303 = getelementptr inbounds %struct.CLzmaEnc, ptr %302, i32 0, i32 8
  %304 = load i32, ptr %303, align 8
  %305 = load i32, ptr %7, align 4
  %306 = add i32 %305, 1
  %307 = icmp ugt i32 %304, %306
  br i1 %307, label %323, label %308

308:                                              ; preds = %301
  %309 = load ptr, ptr %4, align 8
  %310 = getelementptr inbounds %struct.CLzmaEnc, ptr %309, i32 0, i32 8
  %311 = load i32, ptr %310, align 8
  %312 = add i32 %311, 1
  %313 = load i32, ptr %7, align 4
  %314 = icmp uge i32 %312, %313
  br i1 %314, label %315, label %324

315:                                              ; preds = %308
  %316 = load i32, ptr %7, align 4
  %317 = icmp uge i32 %316, 3
  br i1 %317, label %318, label %324

318:                                              ; preds = %315
  %319 = load i32, ptr %8, align 4
  %320 = lshr i32 %319, 7
  %321 = load i32, ptr %17, align 4
  %322 = icmp ugt i32 %320, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %318, %301, %296, %285
  store i32 1, ptr %3, align 4
  br label %414

324:                                              ; preds = %318, %315, %308
  br label %325

325:                                              ; preds = %324, %260
  %326 = load ptr, ptr %4, align 8
  %327 = getelementptr inbounds %struct.CLzmaEnc, ptr %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct._IMatchFinder, ptr %327, i32 0, i32 3
  %329 = load ptr, ptr %328, align 8
  %330 = load ptr, ptr %4, align 8
  %331 = getelementptr inbounds %struct.CLzmaEnc, ptr %330, i32 0, i32 1
  %332 = load ptr, ptr %331, align 8
  %333 = call ptr %329(ptr noundef %332)
  %334 = getelementptr inbounds i8, ptr %333, i64 -1
  store ptr %334, ptr %13, align 8
  store i32 0, ptr %12, align 4
  br label %335

335:                                              ; preds = %403, %325
  %336 = load i32, ptr %12, align 4
  %337 = icmp ult i32 %336, 4
  br i1 %337, label %338, label %406

338:                                              ; preds = %335
  %339 = load ptr, ptr %13, align 8
  %340 = load ptr, ptr %4, align 8
  %341 = getelementptr inbounds %struct.CLzmaEnc, ptr %340, i32 0, i32 17
  %342 = load i32, ptr %12, align 4
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds [4 x i32], ptr %341, i64 0, i64 %343
  %345 = load i32, ptr %344, align 4
  %346 = add i32 %345, 1
  %347 = zext i32 %346 to i64
  %348 = sub i64 0, %347
  %349 = getelementptr inbounds i8, ptr %339, i64 %348
  store ptr %349, ptr %20, align 8
  %350 = load ptr, ptr %13, align 8
  %351 = getelementptr inbounds i8, ptr %350, i64 0
  %352 = load i8, ptr %351, align 1
  %353 = zext i8 %352 to i32
  %354 = load ptr, ptr %20, align 8
  %355 = getelementptr inbounds i8, ptr %354, i64 0
  %356 = load i8, ptr %355, align 1
  %357 = zext i8 %356 to i32
  %358 = icmp ne i32 %353, %357
  br i1 %358, label %369, label %359

359:                                              ; preds = %338
  %360 = load ptr, ptr %13, align 8
  %361 = getelementptr inbounds i8, ptr %360, i64 1
  %362 = load i8, ptr %361, align 1
  %363 = zext i8 %362 to i32
  %364 = load ptr, ptr %20, align 8
  %365 = getelementptr inbounds i8, ptr %364, i64 1
  %366 = load i8, ptr %365, align 1
  %367 = zext i8 %366 to i32
  %368 = icmp ne i32 %363, %367
  br i1 %368, label %369, label %370

369:                                              ; preds = %359, %338
  br label %403

370:                                              ; preds = %359
  %371 = load i32, ptr %7, align 4
  %372 = sub i32 %371, 1
  store i32 %372, ptr %19, align 4
  store i32 2, ptr %18, align 4
  br label %373

373:                                              ; preds = %394, %370
  %374 = load i32, ptr %18, align 4
  %375 = load i32, ptr %19, align 4
  %376 = icmp ult i32 %374, %375
  br i1 %376, label %377, label %391

377:                                              ; preds = %373
  %378 = load ptr, ptr %13, align 8
  %379 = load i32, ptr %18, align 4
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds i8, ptr %378, i64 %380
  %382 = load i8, ptr %381, align 1
  %383 = zext i8 %382 to i32
  %384 = load ptr, ptr %20, align 8
  %385 = load i32, ptr %18, align 4
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds i8, ptr %384, i64 %386
  %388 = load i8, ptr %387, align 1
  %389 = zext i8 %388 to i32
  %390 = icmp eq i32 %383, %389
  br label %391

391:                                              ; preds = %377, %373
  %392 = phi i1 [ false, %373 ], [ %390, %377 ]
  br i1 %392, label %393, label %397

393:                                              ; preds = %391
  br label %394

394:                                              ; preds = %393
  %395 = load i32, ptr %18, align 4
  %396 = add i32 %395, 1
  store i32 %396, ptr %18, align 4
  br label %373, !llvm.loop !49

397:                                              ; preds = %391
  %398 = load i32, ptr %18, align 4
  %399 = load i32, ptr %19, align 4
  %400 = icmp uge i32 %398, %399
  br i1 %400, label %401, label %402

401:                                              ; preds = %397
  store i32 1, ptr %3, align 4
  br label %414

402:                                              ; preds = %397
  br label %403

403:                                              ; preds = %402, %369
  %404 = load i32, ptr %12, align 4
  %405 = add i32 %404, 1
  store i32 %405, ptr %12, align 4
  br label %335, !llvm.loop !50

406:                                              ; preds = %335
  %407 = load i32, ptr %8, align 4
  %408 = add i32 %407, 4
  %409 = load ptr, ptr %5, align 8
  store i32 %408, ptr %409, align 4
  %410 = load ptr, ptr %4, align 8
  %411 = load i32, ptr %7, align 4
  %412 = sub i32 %411, 2
  call void @MovePos(ptr noundef %410, i32 noundef %412)
  %413 = load i32, ptr %7, align 4
  store i32 %413, ptr %3, align 4
  br label %414

414:                                              ; preds = %406, %401, %323, %259, %246, %150, %123, %42
  %415 = load i32, ptr %3, align 4
  ret i32 %415
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetOptimum(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  %21 = alloca [4 x i32], align 16
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca ptr, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca ptr, align 8
  %30 = alloca i32, align 4
  %31 = alloca ptr, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca ptr, align 8
  %37 = alloca i32, align 4
  %38 = alloca ptr, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i8, align 1
  %57 = alloca i8, align 1
  %58 = alloca ptr, align 8
  %59 = alloca ptr, align 8
  %60 = alloca ptr, align 8
  %61 = alloca i32, align 4
  %62 = alloca ptr, align 8
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca ptr, align 8
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca ptr, align 8
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca ptr, align 8
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
  %81 = alloca i32, align 4
  %82 = alloca ptr, align 8
  %83 = alloca i32, align 4
  %84 = alloca ptr, align 8
  %85 = alloca i32, align 4
  %86 = alloca i32, align 4
  %87 = alloca i32, align 4
  %88 = alloca i32, align 4
  %89 = alloca i32, align 4
  %90 = alloca i32, align 4
  %91 = alloca i32, align 4
  %92 = alloca ptr, align 8
  %93 = alloca i32, align 4
  %94 = alloca i32, align 4
  %95 = alloca i32, align 4
  %96 = alloca i32, align 4
  %97 = alloca i32, align 4
  %98 = alloca i32, align 4
  %99 = alloca i32, align 4
  %100 = alloca i32, align 4
  %101 = alloca i32, align 4
  %102 = alloca ptr, align 8
  %103 = alloca ptr, align 8
  %104 = alloca i32, align 4
  %105 = alloca i32, align 4
  %106 = alloca i32, align 4
  %107 = alloca i32, align 4
  %108 = alloca i32, align 4
  %109 = alloca i32, align 4
  %110 = alloca i32, align 4
  %111 = alloca i32, align 4
  %112 = alloca ptr, align 8
  %113 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  %114 = load ptr, ptr %5, align 8
  %115 = getelementptr inbounds %struct.CLzmaEnc, ptr %114, i32 0, i32 6
  %116 = load i32, ptr %115, align 8
  %117 = load ptr, ptr %5, align 8
  %118 = getelementptr inbounds %struct.CLzmaEnc, ptr %117, i32 0, i32 7
  %119 = load i32, ptr %118, align 4
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %146

121:                                              ; preds = %3
  %122 = load ptr, ptr %5, align 8
  %123 = getelementptr inbounds %struct.CLzmaEnc, ptr %122, i32 0, i32 11
  %124 = load ptr, ptr %5, align 8
  %125 = getelementptr inbounds %struct.CLzmaEnc, ptr %124, i32 0, i32 7
  %126 = load i32, ptr %125, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [4096 x %struct.COptimal], ptr %123, i64 0, i64 %127
  store ptr %128, ptr %26, align 8
  %129 = load ptr, ptr %26, align 8
  %130 = getelementptr inbounds %struct.COptimal, ptr %129, i32 0, i32 6
  %131 = load i32, ptr %130, align 4
  %132 = load ptr, ptr %5, align 8
  %133 = getelementptr inbounds %struct.CLzmaEnc, ptr %132, i32 0, i32 7
  %134 = load i32, ptr %133, align 4
  %135 = sub i32 %131, %134
  store i32 %135, ptr %27, align 4
  %136 = load ptr, ptr %26, align 8
  %137 = getelementptr inbounds %struct.COptimal, ptr %136, i32 0, i32 7
  %138 = load i32, ptr %137, align 4
  %139 = load ptr, ptr %7, align 8
  store i32 %138, ptr %139, align 4
  %140 = load ptr, ptr %26, align 8
  %141 = getelementptr inbounds %struct.COptimal, ptr %140, i32 0, i32 6
  %142 = load i32, ptr %141, align 4
  %143 = load ptr, ptr %5, align 8
  %144 = getelementptr inbounds %struct.CLzmaEnc, ptr %143, i32 0, i32 7
  store i32 %142, ptr %144, align 4
  %145 = load i32, ptr %27, align 4
  store i32 %145, ptr %4, align 4
  br label %2270

146:                                              ; preds = %3
  %147 = load ptr, ptr %5, align 8
  %148 = getelementptr inbounds %struct.CLzmaEnc, ptr %147, i32 0, i32 6
  store i32 0, ptr %148, align 8
  %149 = load ptr, ptr %5, align 8
  %150 = getelementptr inbounds %struct.CLzmaEnc, ptr %149, i32 0, i32 7
  store i32 0, ptr %150, align 4
  %151 = load ptr, ptr %5, align 8
  %152 = getelementptr inbounds %struct.CLzmaEnc, ptr %151, i32 0, i32 16
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %146
  %156 = load ptr, ptr %5, align 8
  %157 = call i32 @ReadMatchDistances(ptr noundef %156, ptr noundef %10)
  store i32 %157, ptr %9, align 4
  br label %165

158:                                              ; preds = %146
  %159 = load ptr, ptr %5, align 8
  %160 = getelementptr inbounds %struct.CLzmaEnc, ptr %159, i32 0, i32 8
  %161 = load i32, ptr %160, align 8
  store i32 %161, ptr %9, align 4
  %162 = load ptr, ptr %5, align 8
  %163 = getelementptr inbounds %struct.CLzmaEnc, ptr %162, i32 0, i32 9
  %164 = load i32, ptr %163, align 4
  store i32 %164, ptr %10, align 4
  br label %165

165:                                              ; preds = %158, %155
  %166 = load ptr, ptr %5, align 8
  %167 = getelementptr inbounds %struct.CLzmaEnc, ptr %166, i32 0, i32 10
  %168 = load i32, ptr %167, align 8
  store i32 %168, ptr %8, align 4
  %169 = load i32, ptr %8, align 4
  %170 = icmp ult i32 %169, 2
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load ptr, ptr %7, align 8
  store i32 -1, ptr %172, align 4
  store i32 1, ptr %4, align 4
  br label %2270

173:                                              ; preds = %165
  %174 = load i32, ptr %8, align 4
  %175 = icmp ugt i32 %174, 273
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  store i32 273, ptr %8, align 4
  br label %177

177:                                              ; preds = %176, %173
  %178 = load ptr, ptr %5, align 8
  %179 = getelementptr inbounds %struct.CLzmaEnc, ptr %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct._IMatchFinder, ptr %179, i32 0, i32 3
  %181 = load ptr, ptr %180, align 8
  %182 = load ptr, ptr %5, align 8
  %183 = getelementptr inbounds %struct.CLzmaEnc, ptr %182, i32 0, i32 1
  %184 = load ptr, ptr %183, align 8
  %185 = call ptr %181(ptr noundef %184)
  %186 = getelementptr inbounds i8, ptr %185, i64 -1
  store ptr %186, ptr %23, align 8
  store i32 0, ptr %11, align 4
  store i32 0, ptr %12, align 4
  br label %187

187:                                              ; preds = %271, %177
  %188 = load i32, ptr %12, align 4
  %189 = icmp ult i32 %188, 4
  br i1 %189, label %190, label %274

190:                                              ; preds = %187
  %191 = load ptr, ptr %5, align 8
  %192 = getelementptr inbounds %struct.CLzmaEnc, ptr %191, i32 0, i32 17
  %193 = load i32, ptr %12, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [4 x i32], ptr %192, i64 0, i64 %194
  %196 = load i32, ptr %195, align 4
  %197 = load i32, ptr %12, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %198
  store i32 %196, ptr %199, align 4
  %200 = load ptr, ptr %23, align 8
  %201 = load i32, ptr %12, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %202
  %204 = load i32, ptr %203, align 4
  %205 = add i32 %204, 1
  %206 = zext i32 %205 to i64
  %207 = sub i64 0, %206
  %208 = getelementptr inbounds i8, ptr %200, i64 %207
  store ptr %208, ptr %29, align 8
  %209 = load ptr, ptr %23, align 8
  %210 = getelementptr inbounds i8, ptr %209, i64 0
  %211 = load i8, ptr %210, align 1
  %212 = zext i8 %211 to i32
  %213 = load ptr, ptr %29, align 8
  %214 = getelementptr inbounds i8, ptr %213, i64 0
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i32
  %217 = icmp ne i32 %212, %216
  br i1 %217, label %228, label %218

218:                                              ; preds = %190
  %219 = load ptr, ptr %23, align 8
  %220 = getelementptr inbounds i8, ptr %219, i64 1
  %221 = load i8, ptr %220, align 1
  %222 = zext i8 %221 to i32
  %223 = load ptr, ptr %29, align 8
  %224 = getelementptr inbounds i8, ptr %223, i64 1
  %225 = load i8, ptr %224, align 1
  %226 = zext i8 %225 to i32
  %227 = icmp ne i32 %222, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %218, %190
  %229 = load i32, ptr %12, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds [4 x i32], ptr %21, i64 0, i64 %230
  store i32 0, ptr %231, align 4
  br label %271

232:                                              ; preds = %218
  store i32 2, ptr %28, align 4
  br label %233

233:                                              ; preds = %254, %232
  %234 = load i32, ptr %28, align 4
  %235 = load i32, ptr %8, align 4
  %236 = icmp ult i32 %234, %235
  br i1 %236, label %237, label %251

237:                                              ; preds = %233
  %238 = load ptr, ptr %23, align 8
  %239 = load i32, ptr %28, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i8, ptr %238, i64 %240
  %242 = load i8, ptr %241, align 1
  %243 = zext i8 %242 to i32
  %244 = load ptr, ptr %29, align 8
  %245 = load i32, ptr %28, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds i8, ptr %244, i64 %246
  %248 = load i8, ptr %247, align 1
  %249 = zext i8 %248 to i32
  %250 = icmp eq i32 %243, %249
  br label %251

251:                                              ; preds = %237, %233
  %252 = phi i1 [ false, %233 ], [ %250, %237 ]
  br i1 %252, label %253, label %257

253:                                              ; preds = %251
  br label %254

254:                                              ; preds = %253
  %255 = load i32, ptr %28, align 4
  %256 = add i32 %255, 1
  store i32 %256, ptr %28, align 4
  br label %233, !llvm.loop !51

257:                                              ; preds = %251
  %258 = load i32, ptr %28, align 4
  %259 = load i32, ptr %12, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds [4 x i32], ptr %21, i64 0, i64 %260
  store i32 %258, ptr %261, align 4
  %262 = load i32, ptr %28, align 4
  %263 = load i32, ptr %11, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds [4 x i32], ptr %21, i64 0, i64 %264
  %266 = load i32, ptr %265, align 4
  %267 = icmp ugt i32 %262, %266
  br i1 %267, label %268, label %270

268:                                              ; preds = %257
  %269 = load i32, ptr %12, align 4
  store i32 %269, ptr %11, align 4
  br label %270

270:                                              ; preds = %268, %257
  br label %271

271:                                              ; preds = %270, %228
  %272 = load i32, ptr %12, align 4
  %273 = add i32 %272, 1
  store i32 %273, ptr %12, align 4
  br label %187, !llvm.loop !52

274:                                              ; preds = %187
  %275 = load i32, ptr %11, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds [4 x i32], ptr %21, i64 0, i64 %276
  %278 = load i32, ptr %277, align 4
  %279 = load ptr, ptr %5, align 8
  %280 = getelementptr inbounds %struct.CLzmaEnc, ptr %279, i32 0, i32 15
  %281 = load i32, ptr %280, align 8
  %282 = icmp uge i32 %278, %281
  br i1 %282, label %283, label %294

283:                                              ; preds = %274
  %284 = load i32, ptr %11, align 4
  %285 = load ptr, ptr %7, align 8
  store i32 %284, ptr %285, align 4
  %286 = load i32, ptr %11, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds [4 x i32], ptr %21, i64 0, i64 %287
  %289 = load i32, ptr %288, align 4
  store i32 %289, ptr %30, align 4
  %290 = load ptr, ptr %5, align 8
  %291 = load i32, ptr %30, align 4
  %292 = sub i32 %291, 1
  call void @MovePos(ptr noundef %290, i32 noundef %292)
  %293 = load i32, ptr %30, align 4
  store i32 %293, ptr %4, align 4
  br label %2270

294:                                              ; preds = %274
  %295 = load ptr, ptr %5, align 8
  %296 = getelementptr inbounds %struct.CLzmaEnc, ptr %295, i32 0, i32 14
  %297 = getelementptr inbounds [549 x i32], ptr %296, i64 0, i64 0
  store ptr %297, ptr %22, align 8
  %298 = load i32, ptr %9, align 4
  %299 = load ptr, ptr %5, align 8
  %300 = getelementptr inbounds %struct.CLzmaEnc, ptr %299, i32 0, i32 15
  %301 = load i32, ptr %300, align 8
  %302 = icmp uge i32 %298, %301
  br i1 %302, label %303, label %316

303:                                              ; preds = %294
  %304 = load ptr, ptr %22, align 8
  %305 = load i32, ptr %10, align 4
  %306 = sub i32 %305, 1
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i32, ptr %304, i64 %307
  %309 = load i32, ptr %308, align 4
  %310 = add i32 %309, 4
  %311 = load ptr, ptr %7, align 8
  store i32 %310, ptr %311, align 4
  %312 = load ptr, ptr %5, align 8
  %313 = load i32, ptr %9, align 4
  %314 = sub i32 %313, 1
  call void @MovePos(ptr noundef %312, i32 noundef %314)
  %315 = load i32, ptr %9, align 4
  store i32 %315, ptr %4, align 4
  br label %2270

316:                                              ; preds = %294
  %317 = load ptr, ptr %23, align 8
  %318 = load i8, ptr %317, align 1
  store i8 %318, ptr %24, align 1
  %319 = load ptr, ptr %23, align 8
  %320 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 0
  %321 = load i32, ptr %320, align 16
  %322 = add i32 %321, 1
  %323 = zext i32 %322 to i64
  %324 = sub i64 0, %323
  %325 = getelementptr inbounds i8, ptr %319, i64 %324
  %326 = load i8, ptr %325, align 1
  store i8 %326, ptr %25, align 1
  %327 = load i32, ptr %9, align 4
  %328 = icmp ult i32 %327, 2
  br i1 %328, label %329, label %343

329:                                              ; preds = %316
  %330 = load i8, ptr %24, align 1
  %331 = zext i8 %330 to i32
  %332 = load i8, ptr %25, align 1
  %333 = zext i8 %332 to i32
  %334 = icmp ne i32 %331, %333
  br i1 %334, label %335, label %343

335:                                              ; preds = %329
  %336 = load i32, ptr %11, align 4
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds [4 x i32], ptr %21, i64 0, i64 %337
  %339 = load i32, ptr %338, align 4
  %340 = icmp ult i32 %339, 2
  br i1 %340, label %341, label %343

341:                                              ; preds = %335
  %342 = load ptr, ptr %7, align 8
  store i32 -1, ptr %342, align 4
  store i32 1, ptr %4, align 4
  br label %2270

343:                                              ; preds = %335, %329, %316
  %344 = load ptr, ptr %5, align 8
  %345 = getelementptr inbounds %struct.CLzmaEnc, ptr %344, i32 0, i32 18
  %346 = load i32, ptr %345, align 8
  %347 = load ptr, ptr %5, align 8
  %348 = getelementptr inbounds %struct.CLzmaEnc, ptr %347, i32 0, i32 11
  %349 = getelementptr inbounds [4096 x %struct.COptimal], ptr %348, i64 0, i64 0
  %350 = getelementptr inbounds %struct.COptimal, ptr %349, i32 0, i32 1
  store i32 %346, ptr %350, align 4
  %351 = load i32, ptr %6, align 4
  %352 = load ptr, ptr %5, align 8
  %353 = getelementptr inbounds %struct.CLzmaEnc, ptr %352, i32 0, i32 28
  %354 = load i32, ptr %353, align 4
  %355 = and i32 %351, %354
  store i32 %355, ptr %13, align 4
  %356 = load ptr, ptr %5, align 8
  %357 = getelementptr inbounds %struct.CLzmaEnc, ptr %356, i32 0, i32 29
  %358 = load ptr, ptr %357, align 8
  %359 = load i32, ptr %6, align 4
  %360 = load ptr, ptr %5, align 8
  %361 = getelementptr inbounds %struct.CLzmaEnc, ptr %360, i32 0, i32 27
  %362 = load i32, ptr %361, align 8
  %363 = and i32 %359, %362
  %364 = load ptr, ptr %5, align 8
  %365 = getelementptr inbounds %struct.CLzmaEnc, ptr %364, i32 0, i32 24
  %366 = load i32, ptr %365, align 4
  %367 = shl i32 %363, %366
  %368 = load ptr, ptr %23, align 8
  %369 = getelementptr inbounds i8, ptr %368, i64 -1
  %370 = load i8, ptr %369, align 1
  %371 = zext i8 %370 to i32
  %372 = load ptr, ptr %5, align 8
  %373 = getelementptr inbounds %struct.CLzmaEnc, ptr %372, i32 0, i32 24
  %374 = load i32, ptr %373, align 4
  %375 = sub i32 8, %374
  %376 = ashr i32 %371, %375
  %377 = add i32 %367, %376
  %378 = mul i32 %377, 768
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds i16, ptr %358, i64 %379
  store ptr %380, ptr %31, align 8
  %381 = load ptr, ptr %5, align 8
  %382 = getelementptr inbounds %struct.CLzmaEnc, ptr %381, i32 0, i32 13
  %383 = load ptr, ptr %5, align 8
  %384 = getelementptr inbounds %struct.CLzmaEnc, ptr %383, i32 0, i32 30
  %385 = load ptr, ptr %5, align 8
  %386 = getelementptr inbounds %struct.CLzmaEnc, ptr %385, i32 0, i32 18
  %387 = load i32, ptr %386, align 8
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds [12 x [16 x i16]], ptr %384, i64 0, i64 %388
  %390 = load i32, ptr %13, align 4
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds [16 x i16], ptr %389, i64 0, i64 %391
  %393 = load i16, ptr %392, align 2
  %394 = zext i16 %393 to i32
  %395 = ashr i32 %394, 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [128 x i32], ptr %382, i64 0, i64 %396
  %398 = load i32, ptr %397, align 4
  %399 = load ptr, ptr %5, align 8
  %400 = getelementptr inbounds %struct.CLzmaEnc, ptr %399, i32 0, i32 18
  %401 = load i32, ptr %400, align 8
  %402 = icmp ult i32 %401, 7
  br i1 %402, label %413, label %403

403:                                              ; preds = %343
  %404 = load ptr, ptr %31, align 8
  %405 = load i8, ptr %24, align 1
  %406 = zext i8 %405 to i32
  %407 = load i8, ptr %25, align 1
  %408 = zext i8 %407 to i32
  %409 = load ptr, ptr %5, align 8
  %410 = getelementptr inbounds %struct.CLzmaEnc, ptr %409, i32 0, i32 13
  %411 = getelementptr inbounds [128 x i32], ptr %410, i64 0, i64 0
  %412 = call i32 @LitEnc_GetPriceMatched(ptr noundef %404, i32 noundef %406, i32 noundef %408, ptr noundef %411)
  br label %421

413:                                              ; preds = %343
  %414 = load ptr, ptr %31, align 8
  %415 = load i8, ptr %24, align 1
  %416 = zext i8 %415 to i32
  %417 = load ptr, ptr %5, align 8
  %418 = getelementptr inbounds %struct.CLzmaEnc, ptr %417, i32 0, i32 13
  %419 = getelementptr inbounds [128 x i32], ptr %418, i64 0, i64 0
  %420 = call i32 @LitEnc_GetPrice(ptr noundef %414, i32 noundef %416, ptr noundef %419)
  br label %421

421:                                              ; preds = %413, %403
  %422 = phi i32 [ %412, %403 ], [ %420, %413 ]
  %423 = add i32 %398, %422
  %424 = load ptr, ptr %5, align 8
  %425 = getelementptr inbounds %struct.CLzmaEnc, ptr %424, i32 0, i32 11
  %426 = getelementptr inbounds [4096 x %struct.COptimal], ptr %425, i64 0, i64 1
  %427 = getelementptr inbounds %struct.COptimal, ptr %426, i32 0, i32 0
  store i32 %423, ptr %427, align 4
  %428 = load ptr, ptr %5, align 8
  %429 = getelementptr inbounds %struct.CLzmaEnc, ptr %428, i32 0, i32 11
  %430 = getelementptr inbounds [4096 x %struct.COptimal], ptr %429, i64 0, i64 1
  %431 = getelementptr inbounds %struct.COptimal, ptr %430, i32 0, i32 7
  store i32 -1, ptr %431, align 4
  %432 = load ptr, ptr %5, align 8
  %433 = getelementptr inbounds %struct.CLzmaEnc, ptr %432, i32 0, i32 11
  %434 = getelementptr inbounds [4096 x %struct.COptimal], ptr %433, i64 0, i64 1
  %435 = getelementptr inbounds %struct.COptimal, ptr %434, i32 0, i32 2
  store i32 0, ptr %435, align 4
  %436 = load ptr, ptr %5, align 8
  %437 = getelementptr inbounds %struct.CLzmaEnc, ptr %436, i32 0, i32 13
  %438 = load ptr, ptr %5, align 8
  %439 = getelementptr inbounds %struct.CLzmaEnc, ptr %438, i32 0, i32 30
  %440 = load ptr, ptr %5, align 8
  %441 = getelementptr inbounds %struct.CLzmaEnc, ptr %440, i32 0, i32 18
  %442 = load i32, ptr %441, align 8
  %443 = zext i32 %442 to i64
  %444 = getelementptr inbounds [12 x [16 x i16]], ptr %439, i64 0, i64 %443
  %445 = load i32, ptr %13, align 4
  %446 = zext i32 %445 to i64
  %447 = getelementptr inbounds [16 x i16], ptr %444, i64 0, i64 %446
  %448 = load i16, ptr %447, align 2
  %449 = zext i16 %448 to i32
  %450 = xor i32 %449, 2047
  %451 = ashr i32 %450, 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [128 x i32], ptr %437, i64 0, i64 %452
  %454 = load i32, ptr %453, align 4
  store i32 %454, ptr %17, align 4
  %455 = load i32, ptr %17, align 4
  %456 = load ptr, ptr %5, align 8
  %457 = getelementptr inbounds %struct.CLzmaEnc, ptr %456, i32 0, i32 13
  %458 = load ptr, ptr %5, align 8
  %459 = getelementptr inbounds %struct.CLzmaEnc, ptr %458, i32 0, i32 31
  %460 = load ptr, ptr %5, align 8
  %461 = getelementptr inbounds %struct.CLzmaEnc, ptr %460, i32 0, i32 18
  %462 = load i32, ptr %461, align 8
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds [12 x i16], ptr %459, i64 0, i64 %463
  %465 = load i16, ptr %464, align 2
  %466 = zext i16 %465 to i32
  %467 = xor i32 %466, 2047
  %468 = ashr i32 %467, 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [128 x i32], ptr %457, i64 0, i64 %469
  %471 = load i32, ptr %470, align 4
  %472 = add i32 %455, %471
  store i32 %472, ptr %18, align 4
  %473 = load i8, ptr %25, align 1
  %474 = zext i8 %473 to i32
  %475 = load i8, ptr %24, align 1
  %476 = zext i8 %475 to i32
  %477 = icmp eq i32 %474, %476
  br i1 %477, label %478, label %509

478:                                              ; preds = %421
  %479 = load i32, ptr %18, align 4
  %480 = load ptr, ptr %5, align 8
  %481 = load ptr, ptr %5, align 8
  %482 = getelementptr inbounds %struct.CLzmaEnc, ptr %481, i32 0, i32 18
  %483 = load i32, ptr %482, align 8
  %484 = load i32, ptr %13, align 4
  %485 = call i32 @GetRepLen1Price(ptr noundef %480, i32 noundef %483, i32 noundef %484)
  %486 = add i32 %479, %485
  store i32 %486, ptr %32, align 4
  %487 = load i32, ptr %32, align 4
  %488 = load ptr, ptr %5, align 8
  %489 = getelementptr inbounds %struct.CLzmaEnc, ptr %488, i32 0, i32 11
  %490 = getelementptr inbounds [4096 x %struct.COptimal], ptr %489, i64 0, i64 1
  %491 = getelementptr inbounds %struct.COptimal, ptr %490, i32 0, i32 0
  %492 = load i32, ptr %491, align 4
  %493 = icmp ult i32 %487, %492
  br i1 %493, label %494, label %508

494:                                              ; preds = %478
  %495 = load i32, ptr %32, align 4
  %496 = load ptr, ptr %5, align 8
  %497 = getelementptr inbounds %struct.CLzmaEnc, ptr %496, i32 0, i32 11
  %498 = getelementptr inbounds [4096 x %struct.COptimal], ptr %497, i64 0, i64 1
  %499 = getelementptr inbounds %struct.COptimal, ptr %498, i32 0, i32 0
  store i32 %495, ptr %499, align 4
  %500 = load ptr, ptr %5, align 8
  %501 = getelementptr inbounds %struct.CLzmaEnc, ptr %500, i32 0, i32 11
  %502 = getelementptr inbounds [4096 x %struct.COptimal], ptr %501, i64 0, i64 1
  %503 = getelementptr inbounds %struct.COptimal, ptr %502, i32 0, i32 7
  store i32 0, ptr %503, align 4
  %504 = load ptr, ptr %5, align 8
  %505 = getelementptr inbounds %struct.CLzmaEnc, ptr %504, i32 0, i32 11
  %506 = getelementptr inbounds [4096 x %struct.COptimal], ptr %505, i64 0, i64 1
  %507 = getelementptr inbounds %struct.COptimal, ptr %506, i32 0, i32 2
  store i32 0, ptr %507, align 4
  br label %508

508:                                              ; preds = %494, %478
  br label %509

509:                                              ; preds = %508, %421
  %510 = load i32, ptr %9, align 4
  %511 = load i32, ptr %11, align 4
  %512 = zext i32 %511 to i64
  %513 = getelementptr inbounds [4 x i32], ptr %21, i64 0, i64 %512
  %514 = load i32, ptr %513, align 4
  %515 = icmp uge i32 %510, %514
  br i1 %515, label %516, label %518

516:                                              ; preds = %509
  %517 = load i32, ptr %9, align 4
  br label %523

518:                                              ; preds = %509
  %519 = load i32, ptr %11, align 4
  %520 = zext i32 %519 to i64
  %521 = getelementptr inbounds [4 x i32], ptr %21, i64 0, i64 %520
  %522 = load i32, ptr %521, align 4
  br label %523

523:                                              ; preds = %518, %516
  %524 = phi i32 [ %517, %516 ], [ %522, %518 ]
  store i32 %524, ptr %14, align 4
  %525 = load i32, ptr %14, align 4
  %526 = icmp ult i32 %525, 2
  br i1 %526, label %527, label %534

527:                                              ; preds = %523
  %528 = load ptr, ptr %5, align 8
  %529 = getelementptr inbounds %struct.CLzmaEnc, ptr %528, i32 0, i32 11
  %530 = getelementptr inbounds [4096 x %struct.COptimal], ptr %529, i64 0, i64 1
  %531 = getelementptr inbounds %struct.COptimal, ptr %530, i32 0, i32 7
  %532 = load i32, ptr %531, align 4
  %533 = load ptr, ptr %7, align 8
  store i32 %532, ptr %533, align 4
  store i32 1, ptr %4, align 4
  br label %2270

534:                                              ; preds = %523
  %535 = load ptr, ptr %5, align 8
  %536 = getelementptr inbounds %struct.CLzmaEnc, ptr %535, i32 0, i32 11
  %537 = getelementptr inbounds [4096 x %struct.COptimal], ptr %536, i64 0, i64 1
  %538 = getelementptr inbounds %struct.COptimal, ptr %537, i32 0, i32 6
  store i32 0, ptr %538, align 4
  store i32 0, ptr %12, align 4
  br label %539

539:                                              ; preds = %554, %534
  %540 = load i32, ptr %12, align 4
  %541 = icmp ult i32 %540, 4
  br i1 %541, label %542, label %557

542:                                              ; preds = %539
  %543 = load i32, ptr %12, align 4
  %544 = zext i32 %543 to i64
  %545 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %544
  %546 = load i32, ptr %545, align 4
  %547 = load ptr, ptr %5, align 8
  %548 = getelementptr inbounds %struct.CLzmaEnc, ptr %547, i32 0, i32 11
  %549 = getelementptr inbounds [4096 x %struct.COptimal], ptr %548, i64 0, i64 0
  %550 = getelementptr inbounds %struct.COptimal, ptr %549, i32 0, i32 8
  %551 = load i32, ptr %12, align 4
  %552 = zext i32 %551 to i64
  %553 = getelementptr inbounds [4 x i32], ptr %550, i64 0, i64 %552
  store i32 %546, ptr %553, align 4
  br label %554

554:                                              ; preds = %542
  %555 = load i32, ptr %12, align 4
  %556 = add i32 %555, 1
  store i32 %556, ptr %12, align 4
  br label %539, !llvm.loop !53

557:                                              ; preds = %539
  %558 = load i32, ptr %14, align 4
  store i32 %558, ptr %15, align 4
  br label %559

559:                                              ; preds = %567, %557
  %560 = load ptr, ptr %5, align 8
  %561 = getelementptr inbounds %struct.CLzmaEnc, ptr %560, i32 0, i32 11
  %562 = load i32, ptr %15, align 4
  %563 = add i32 %562, -1
  store i32 %563, ptr %15, align 4
  %564 = zext i32 %562 to i64
  %565 = getelementptr inbounds [4096 x %struct.COptimal], ptr %561, i64 0, i64 %564
  %566 = getelementptr inbounds %struct.COptimal, ptr %565, i32 0, i32 0
  store i32 1073741824, ptr %566, align 4
  br label %567

567:                                              ; preds = %559
  %568 = load i32, ptr %15, align 4
  %569 = icmp uge i32 %568, 2
  br i1 %569, label %559, label %570, !llvm.loop !54

570:                                              ; preds = %567
  store i32 0, ptr %12, align 4
  br label %571

571:                                              ; preds = %633, %570
  %572 = load i32, ptr %12, align 4
  %573 = icmp ult i32 %572, 4
  br i1 %573, label %574, label %636

574:                                              ; preds = %571
  %575 = load i32, ptr %12, align 4
  %576 = zext i32 %575 to i64
  %577 = getelementptr inbounds [4 x i32], ptr %21, i64 0, i64 %576
  %578 = load i32, ptr %577, align 4
  store i32 %578, ptr %33, align 4
  %579 = load i32, ptr %33, align 4
  %580 = icmp ult i32 %579, 2
  br i1 %580, label %581, label %582

581:                                              ; preds = %574
  br label %633

582:                                              ; preds = %574
  %583 = load i32, ptr %18, align 4
  %584 = load ptr, ptr %5, align 8
  %585 = load i32, ptr %12, align 4
  %586 = load ptr, ptr %5, align 8
  %587 = getelementptr inbounds %struct.CLzmaEnc, ptr %586, i32 0, i32 18
  %588 = load i32, ptr %587, align 8
  %589 = load i32, ptr %13, align 4
  %590 = call i32 @GetPureRepPrice(ptr noundef %584, i32 noundef %585, i32 noundef %588, i32 noundef %589)
  %591 = add i32 %583, %590
  store i32 %591, ptr %34, align 4
  br label %592

592:                                              ; preds = %628, %582
  %593 = load i32, ptr %34, align 4
  %594 = load ptr, ptr %5, align 8
  %595 = getelementptr inbounds %struct.CLzmaEnc, ptr %594, i32 0, i32 40
  %596 = getelementptr inbounds %struct.CLenPriceEnc, ptr %595, i32 0, i32 1
  %597 = load i32, ptr %13, align 4
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds [16 x [272 x i32]], ptr %596, i64 0, i64 %598
  %600 = load i32, ptr %33, align 4
  %601 = sub i32 %600, 2
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds [272 x i32], ptr %599, i64 0, i64 %602
  %604 = load i32, ptr %603, align 4
  %605 = add i32 %593, %604
  store i32 %605, ptr %35, align 4
  %606 = load ptr, ptr %5, align 8
  %607 = getelementptr inbounds %struct.CLzmaEnc, ptr %606, i32 0, i32 11
  %608 = load i32, ptr %33, align 4
  %609 = zext i32 %608 to i64
  %610 = getelementptr inbounds [4096 x %struct.COptimal], ptr %607, i64 0, i64 %609
  store ptr %610, ptr %36, align 8
  %611 = load i32, ptr %35, align 4
  %612 = load ptr, ptr %36, align 8
  %613 = getelementptr inbounds %struct.COptimal, ptr %612, i32 0, i32 0
  %614 = load i32, ptr %613, align 4
  %615 = icmp ult i32 %611, %614
  br i1 %615, label %616, label %627

616:                                              ; preds = %592
  %617 = load i32, ptr %35, align 4
  %618 = load ptr, ptr %36, align 8
  %619 = getelementptr inbounds %struct.COptimal, ptr %618, i32 0, i32 0
  store i32 %617, ptr %619, align 4
  %620 = load ptr, ptr %36, align 8
  %621 = getelementptr inbounds %struct.COptimal, ptr %620, i32 0, i32 6
  store i32 0, ptr %621, align 4
  %622 = load i32, ptr %12, align 4
  %623 = load ptr, ptr %36, align 8
  %624 = getelementptr inbounds %struct.COptimal, ptr %623, i32 0, i32 7
  store i32 %622, ptr %624, align 4
  %625 = load ptr, ptr %36, align 8
  %626 = getelementptr inbounds %struct.COptimal, ptr %625, i32 0, i32 2
  store i32 0, ptr %626, align 4
  br label %627

627:                                              ; preds = %616, %592
  br label %628

628:                                              ; preds = %627
  %629 = load i32, ptr %33, align 4
  %630 = add i32 %629, -1
  store i32 %630, ptr %33, align 4
  %631 = icmp uge i32 %630, 2
  br i1 %631, label %592, label %632, !llvm.loop !55

632:                                              ; preds = %628
  br label %633

633:                                              ; preds = %632, %581
  %634 = load i32, ptr %12, align 4
  %635 = add i32 %634, 1
  store i32 %635, ptr %12, align 4
  br label %571, !llvm.loop !56

636:                                              ; preds = %571
  %637 = load i32, ptr %17, align 4
  %638 = load ptr, ptr %5, align 8
  %639 = getelementptr inbounds %struct.CLzmaEnc, ptr %638, i32 0, i32 13
  %640 = load ptr, ptr %5, align 8
  %641 = getelementptr inbounds %struct.CLzmaEnc, ptr %640, i32 0, i32 31
  %642 = load ptr, ptr %5, align 8
  %643 = getelementptr inbounds %struct.CLzmaEnc, ptr %642, i32 0, i32 18
  %644 = load i32, ptr %643, align 8
  %645 = zext i32 %644 to i64
  %646 = getelementptr inbounds [12 x i16], ptr %641, i64 0, i64 %645
  %647 = load i16, ptr %646, align 2
  %648 = zext i16 %647 to i32
  %649 = ashr i32 %648, 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds [128 x i32], ptr %639, i64 0, i64 %650
  %652 = load i32, ptr %651, align 4
  %653 = add i32 %637, %652
  store i32 %653, ptr %19, align 4
  %654 = getelementptr inbounds [4 x i32], ptr %21, i64 0, i64 0
  %655 = load i32, ptr %654, align 16
  %656 = icmp uge i32 %655, 2
  br i1 %656, label %657, label %661

657:                                              ; preds = %636
  %658 = getelementptr inbounds [4 x i32], ptr %21, i64 0, i64 0
  %659 = load i32, ptr %658, align 16
  %660 = add i32 %659, 1
  br label %662

661:                                              ; preds = %636
  br label %662

662:                                              ; preds = %661, %657
  %663 = phi i32 [ %660, %657 ], [ 2, %661 ]
  store i32 %663, ptr %15, align 4
  %664 = load i32, ptr %15, align 4
  %665 = load i32, ptr %9, align 4
  %666 = icmp ule i32 %664, %665
  br i1 %666, label %667, label %804

667:                                              ; preds = %662
  store i32 0, ptr %37, align 4
  br label %668

668:                                              ; preds = %676, %667
  %669 = load i32, ptr %15, align 4
  %670 = load ptr, ptr %22, align 8
  %671 = load i32, ptr %37, align 4
  %672 = zext i32 %671 to i64
  %673 = getelementptr inbounds i32, ptr %670, i64 %672
  %674 = load i32, ptr %673, align 4
  %675 = icmp ugt i32 %669, %674
  br i1 %675, label %676, label %679

676:                                              ; preds = %668
  %677 = load i32, ptr %37, align 4
  %678 = add i32 %677, 2
  store i32 %678, ptr %37, align 4
  br label %668, !llvm.loop !57

679:                                              ; preds = %668
  br label %680

680:                                              ; preds = %800, %679
  %681 = load ptr, ptr %22, align 8
  %682 = load i32, ptr %37, align 4
  %683 = add i32 %682, 1
  %684 = zext i32 %683 to i64
  %685 = getelementptr inbounds i32, ptr %681, i64 %684
  %686 = load i32, ptr %685, align 4
  store i32 %686, ptr %39, align 4
  %687 = load i32, ptr %19, align 4
  %688 = load ptr, ptr %5, align 8
  %689 = getelementptr inbounds %struct.CLzmaEnc, ptr %688, i32 0, i32 39
  %690 = getelementptr inbounds %struct.CLenPriceEnc, ptr %689, i32 0, i32 1
  %691 = load i32, ptr %13, align 4
  %692 = zext i32 %691 to i64
  %693 = getelementptr inbounds [16 x [272 x i32]], ptr %690, i64 0, i64 %692
  %694 = load i32, ptr %15, align 4
  %695 = sub i32 %694, 2
  %696 = zext i32 %695 to i64
  %697 = getelementptr inbounds [272 x i32], ptr %693, i64 0, i64 %696
  %698 = load i32, ptr %697, align 4
  %699 = add i32 %687, %698
  store i32 %699, ptr %40, align 4
  %700 = load i32, ptr %15, align 4
  %701 = icmp ult i32 %700, 5
  br i1 %701, label %702, label %705

702:                                              ; preds = %680
  %703 = load i32, ptr %15, align 4
  %704 = sub i32 %703, 2
  br label %706

705:                                              ; preds = %680
  br label %706

706:                                              ; preds = %705, %702
  %707 = phi i32 [ %704, %702 ], [ 3, %705 ]
  store i32 %707, ptr %41, align 4
  %708 = load i32, ptr %39, align 4
  %709 = icmp ult i32 %708, 128
  br i1 %709, label %710, label %722

710:                                              ; preds = %706
  %711 = load ptr, ptr %5, align 8
  %712 = getelementptr inbounds %struct.CLzmaEnc, ptr %711, i32 0, i32 20
  %713 = load i32, ptr %41, align 4
  %714 = zext i32 %713 to i64
  %715 = getelementptr inbounds [4 x [128 x i32]], ptr %712, i64 0, i64 %714
  %716 = load i32, ptr %39, align 4
  %717 = zext i32 %716 to i64
  %718 = getelementptr inbounds [128 x i32], ptr %715, i64 0, i64 %717
  %719 = load i32, ptr %718, align 4
  %720 = load i32, ptr %40, align 4
  %721 = add i32 %720, %719
  store i32 %721, ptr %40, align 4
  br label %760

722:                                              ; preds = %706
  %723 = load i32, ptr %39, align 4
  %724 = sub i32 524287, %723
  %725 = lshr i32 %724, 31
  %726 = sub i32 0, %725
  %727 = and i32 12, %726
  %728 = add i32 6, %727
  store i32 %728, ptr %43, align 4
  %729 = load ptr, ptr %5, align 8
  %730 = getelementptr inbounds %struct.CLzmaEnc, ptr %729, i32 0, i32 12
  %731 = load i32, ptr %39, align 4
  %732 = load i32, ptr %43, align 4
  %733 = lshr i32 %731, %732
  %734 = zext i32 %733 to i64
  %735 = getelementptr inbounds [8192 x i8], ptr %730, i64 0, i64 %734
  %736 = load i8, ptr %735, align 1
  %737 = zext i8 %736 to i32
  %738 = load i32, ptr %43, align 4
  %739 = mul i32 %738, 2
  %740 = add i32 %737, %739
  store i32 %740, ptr %42, align 4
  %741 = load ptr, ptr %5, align 8
  %742 = getelementptr inbounds %struct.CLzmaEnc, ptr %741, i32 0, i32 21
  %743 = load i32, ptr %39, align 4
  %744 = and i32 %743, 15
  %745 = zext i32 %744 to i64
  %746 = getelementptr inbounds [16 x i32], ptr %742, i64 0, i64 %745
  %747 = load i32, ptr %746, align 4
  %748 = load ptr, ptr %5, align 8
  %749 = getelementptr inbounds %struct.CLzmaEnc, ptr %748, i32 0, i32 19
  %750 = load i32, ptr %41, align 4
  %751 = zext i32 %750 to i64
  %752 = getelementptr inbounds [4 x [64 x i32]], ptr %749, i64 0, i64 %751
  %753 = load i32, ptr %42, align 4
  %754 = zext i32 %753 to i64
  %755 = getelementptr inbounds [64 x i32], ptr %752, i64 0, i64 %754
  %756 = load i32, ptr %755, align 4
  %757 = add i32 %747, %756
  %758 = load i32, ptr %40, align 4
  %759 = add i32 %758, %757
  store i32 %759, ptr %40, align 4
  br label %760

760:                                              ; preds = %722, %710
  %761 = load ptr, ptr %5, align 8
  %762 = getelementptr inbounds %struct.CLzmaEnc, ptr %761, i32 0, i32 11
  %763 = load i32, ptr %15, align 4
  %764 = zext i32 %763 to i64
  %765 = getelementptr inbounds [4096 x %struct.COptimal], ptr %762, i64 0, i64 %764
  store ptr %765, ptr %38, align 8
  %766 = load i32, ptr %40, align 4
  %767 = load ptr, ptr %38, align 8
  %768 = getelementptr inbounds %struct.COptimal, ptr %767, i32 0, i32 0
  %769 = load i32, ptr %768, align 4
  %770 = icmp ult i32 %766, %769
  br i1 %770, label %771, label %783

771:                                              ; preds = %760
  %772 = load i32, ptr %40, align 4
  %773 = load ptr, ptr %38, align 8
  %774 = getelementptr inbounds %struct.COptimal, ptr %773, i32 0, i32 0
  store i32 %772, ptr %774, align 4
  %775 = load ptr, ptr %38, align 8
  %776 = getelementptr inbounds %struct.COptimal, ptr %775, i32 0, i32 6
  store i32 0, ptr %776, align 4
  %777 = load i32, ptr %39, align 4
  %778 = add i32 %777, 4
  %779 = load ptr, ptr %38, align 8
  %780 = getelementptr inbounds %struct.COptimal, ptr %779, i32 0, i32 7
  store i32 %778, ptr %780, align 4
  %781 = load ptr, ptr %38, align 8
  %782 = getelementptr inbounds %struct.COptimal, ptr %781, i32 0, i32 2
  store i32 0, ptr %782, align 4
  br label %783

783:                                              ; preds = %771, %760
  %784 = load i32, ptr %15, align 4
  %785 = load ptr, ptr %22, align 8
  %786 = load i32, ptr %37, align 4
  %787 = zext i32 %786 to i64
  %788 = getelementptr inbounds i32, ptr %785, i64 %787
  %789 = load i32, ptr %788, align 4
  %790 = icmp eq i32 %784, %789
  br i1 %790, label %791, label %799

791:                                              ; preds = %783
  %792 = load i32, ptr %37, align 4
  %793 = add i32 %792, 2
  store i32 %793, ptr %37, align 4
  %794 = load i32, ptr %37, align 4
  %795 = load i32, ptr %10, align 4
  %796 = icmp eq i32 %794, %795
  br i1 %796, label %797, label %798

797:                                              ; preds = %791
  br label %803

798:                                              ; preds = %791
  br label %799

799:                                              ; preds = %798, %783
  br label %800

800:                                              ; preds = %799
  %801 = load i32, ptr %15, align 4
  %802 = add i32 %801, 1
  store i32 %802, ptr %15, align 4
  br label %680

803:                                              ; preds = %797
  br label %804

804:                                              ; preds = %803, %662
  store i32 0, ptr %16, align 4
  br label %805

805:                                              ; preds = %2269, %1267, %804
  %806 = load i32, ptr %16, align 4
  %807 = add i32 %806, 1
  store i32 %807, ptr %16, align 4
  %808 = load i32, ptr %16, align 4
  %809 = load i32, ptr %14, align 4
  %810 = icmp eq i32 %808, %809
  br i1 %810, label %811, label %816

811:                                              ; preds = %805
  %812 = load ptr, ptr %5, align 8
  %813 = load ptr, ptr %7, align 8
  %814 = load i32, ptr %16, align 4
  %815 = call i32 @Backward(ptr noundef %812, ptr noundef %813, i32 noundef %814)
  store i32 %815, ptr %4, align 4
  br label %2270

816:                                              ; preds = %805
  %817 = load ptr, ptr %5, align 8
  %818 = call i32 @ReadMatchDistances(ptr noundef %817, ptr noundef %46)
  store i32 %818, ptr %45, align 4
  %819 = load i32, ptr %45, align 4
  %820 = load ptr, ptr %5, align 8
  %821 = getelementptr inbounds %struct.CLzmaEnc, ptr %820, i32 0, i32 15
  %822 = load i32, ptr %821, align 8
  %823 = icmp uge i32 %819, %822
  br i1 %823, label %824, label %835

824:                                              ; preds = %816
  %825 = load i32, ptr %46, align 4
  %826 = load ptr, ptr %5, align 8
  %827 = getelementptr inbounds %struct.CLzmaEnc, ptr %826, i32 0, i32 9
  store i32 %825, ptr %827, align 4
  %828 = load i32, ptr %45, align 4
  %829 = load ptr, ptr %5, align 8
  %830 = getelementptr inbounds %struct.CLzmaEnc, ptr %829, i32 0, i32 8
  store i32 %828, ptr %830, align 8
  %831 = load ptr, ptr %5, align 8
  %832 = load ptr, ptr %7, align 8
  %833 = load i32, ptr %16, align 4
  %834 = call i32 @Backward(ptr noundef %831, ptr noundef %832, i32 noundef %833)
  store i32 %834, ptr %4, align 4
  br label %2270

835:                                              ; preds = %816
  %836 = load i32, ptr %6, align 4
  %837 = add i32 %836, 1
  store i32 %837, ptr %6, align 4
  %838 = load ptr, ptr %5, align 8
  %839 = getelementptr inbounds %struct.CLzmaEnc, ptr %838, i32 0, i32 11
  %840 = load i32, ptr %16, align 4
  %841 = zext i32 %840 to i64
  %842 = getelementptr inbounds [4096 x %struct.COptimal], ptr %839, i64 0, i64 %841
  store ptr %842, ptr %59, align 8
  %843 = load ptr, ptr %59, align 8
  %844 = getelementptr inbounds %struct.COptimal, ptr %843, i32 0, i32 6
  %845 = load i32, ptr %844, align 4
  store i32 %845, ptr %47, align 4
  %846 = load ptr, ptr %59, align 8
  %847 = getelementptr inbounds %struct.COptimal, ptr %846, i32 0, i32 2
  %848 = load i32, ptr %847, align 4
  %849 = icmp ne i32 %848, 0
  br i1 %849, label %850, label %895

850:                                              ; preds = %835
  %851 = load i32, ptr %47, align 4
  %852 = add i32 %851, -1
  store i32 %852, ptr %47, align 4
  %853 = load ptr, ptr %59, align 8
  %854 = getelementptr inbounds %struct.COptimal, ptr %853, i32 0, i32 3
  %855 = load i32, ptr %854, align 4
  %856 = icmp ne i32 %855, 0
  br i1 %856, label %857, label %882

857:                                              ; preds = %850
  %858 = load ptr, ptr %5, align 8
  %859 = getelementptr inbounds %struct.CLzmaEnc, ptr %858, i32 0, i32 11
  %860 = load ptr, ptr %59, align 8
  %861 = getelementptr inbounds %struct.COptimal, ptr %860, i32 0, i32 4
  %862 = load i32, ptr %861, align 4
  %863 = zext i32 %862 to i64
  %864 = getelementptr inbounds [4096 x %struct.COptimal], ptr %859, i64 0, i64 %863
  %865 = getelementptr inbounds %struct.COptimal, ptr %864, i32 0, i32 1
  %866 = load i32, ptr %865, align 4
  store i32 %866, ptr %48, align 4
  %867 = load ptr, ptr %59, align 8
  %868 = getelementptr inbounds %struct.COptimal, ptr %867, i32 0, i32 5
  %869 = load i32, ptr %868, align 4
  %870 = icmp ult i32 %869, 4
  br i1 %870, label %871, label %876

871:                                              ; preds = %857
  %872 = load i32, ptr %48, align 4
  %873 = zext i32 %872 to i64
  %874 = getelementptr inbounds [12 x i32], ptr @kRepNextStates, i64 0, i64 %873
  %875 = load i32, ptr %874, align 4
  store i32 %875, ptr %48, align 4
  br label %881

876:                                              ; preds = %857
  %877 = load i32, ptr %48, align 4
  %878 = zext i32 %877 to i64
  %879 = getelementptr inbounds [12 x i32], ptr @kMatchNextStates, i64 0, i64 %878
  %880 = load i32, ptr %879, align 4
  store i32 %880, ptr %48, align 4
  br label %881

881:                                              ; preds = %876, %871
  br label %890

882:                                              ; preds = %850
  %883 = load ptr, ptr %5, align 8
  %884 = getelementptr inbounds %struct.CLzmaEnc, ptr %883, i32 0, i32 11
  %885 = load i32, ptr %47, align 4
  %886 = zext i32 %885 to i64
  %887 = getelementptr inbounds [4096 x %struct.COptimal], ptr %884, i64 0, i64 %886
  %888 = getelementptr inbounds %struct.COptimal, ptr %887, i32 0, i32 1
  %889 = load i32, ptr %888, align 4
  store i32 %889, ptr %48, align 4
  br label %890

890:                                              ; preds = %882, %881
  %891 = load i32, ptr %48, align 4
  %892 = zext i32 %891 to i64
  %893 = getelementptr inbounds [12 x i32], ptr @kLiteralNextStates, i64 0, i64 %892
  %894 = load i32, ptr %893, align 4
  store i32 %894, ptr %48, align 4
  br label %903

895:                                              ; preds = %835
  %896 = load ptr, ptr %5, align 8
  %897 = getelementptr inbounds %struct.CLzmaEnc, ptr %896, i32 0, i32 11
  %898 = load i32, ptr %47, align 4
  %899 = zext i32 %898 to i64
  %900 = getelementptr inbounds [4096 x %struct.COptimal], ptr %897, i64 0, i64 %899
  %901 = getelementptr inbounds %struct.COptimal, ptr %900, i32 0, i32 1
  %902 = load i32, ptr %901, align 4
  store i32 %902, ptr %48, align 4
  br label %903

903:                                              ; preds = %895, %890
  %904 = load i32, ptr %47, align 4
  %905 = load i32, ptr %16, align 4
  %906 = sub i32 %905, 1
  %907 = icmp eq i32 %904, %906
  br i1 %907, label %908, label %924

908:                                              ; preds = %903
  %909 = load ptr, ptr %59, align 8
  %910 = getelementptr inbounds %struct.COptimal, ptr %909, i32 0, i32 7
  %911 = load i32, ptr %910, align 4
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %913, label %918

913:                                              ; preds = %908
  %914 = load i32, ptr %48, align 4
  %915 = zext i32 %914 to i64
  %916 = getelementptr inbounds [12 x i32], ptr @kShortRepNextStates, i64 0, i64 %915
  %917 = load i32, ptr %916, align 4
  store i32 %917, ptr %48, align 4
  br label %923

918:                                              ; preds = %908
  %919 = load i32, ptr %48, align 4
  %920 = zext i32 %919 to i64
  %921 = getelementptr inbounds [12 x i32], ptr @kLiteralNextStates, i64 0, i64 %920
  %922 = load i32, ptr %921, align 4
  store i32 %922, ptr %48, align 4
  br label %923

923:                                              ; preds = %918, %913
  br label %1037

924:                                              ; preds = %903
  %925 = load ptr, ptr %59, align 8
  %926 = getelementptr inbounds %struct.COptimal, ptr %925, i32 0, i32 2
  %927 = load i32, ptr %926, align 4
  %928 = icmp ne i32 %927, 0
  br i1 %928, label %929, label %945

929:                                              ; preds = %924
  %930 = load ptr, ptr %59, align 8
  %931 = getelementptr inbounds %struct.COptimal, ptr %930, i32 0, i32 3
  %932 = load i32, ptr %931, align 4
  %933 = icmp ne i32 %932, 0
  br i1 %933, label %934, label %945

934:                                              ; preds = %929
  %935 = load ptr, ptr %59, align 8
  %936 = getelementptr inbounds %struct.COptimal, ptr %935, i32 0, i32 4
  %937 = load i32, ptr %936, align 4
  store i32 %937, ptr %47, align 4
  %938 = load ptr, ptr %59, align 8
  %939 = getelementptr inbounds %struct.COptimal, ptr %938, i32 0, i32 5
  %940 = load i32, ptr %939, align 4
  store i32 %940, ptr %61, align 4
  %941 = load i32, ptr %48, align 4
  %942 = zext i32 %941 to i64
  %943 = getelementptr inbounds [12 x i32], ptr @kRepNextStates, i64 0, i64 %942
  %944 = load i32, ptr %943, align 4
  store i32 %944, ptr %48, align 4
  br label %962

945:                                              ; preds = %929, %924
  %946 = load ptr, ptr %59, align 8
  %947 = getelementptr inbounds %struct.COptimal, ptr %946, i32 0, i32 7
  %948 = load i32, ptr %947, align 4
  store i32 %948, ptr %61, align 4
  %949 = load i32, ptr %61, align 4
  %950 = icmp ult i32 %949, 4
  br i1 %950, label %951, label %956

951:                                              ; preds = %945
  %952 = load i32, ptr %48, align 4
  %953 = zext i32 %952 to i64
  %954 = getelementptr inbounds [12 x i32], ptr @kRepNextStates, i64 0, i64 %953
  %955 = load i32, ptr %954, align 4
  store i32 %955, ptr %48, align 4
  br label %961

956:                                              ; preds = %945
  %957 = load i32, ptr %48, align 4
  %958 = zext i32 %957 to i64
  %959 = getelementptr inbounds [12 x i32], ptr @kMatchNextStates, i64 0, i64 %958
  %960 = load i32, ptr %959, align 4
  store i32 %960, ptr %48, align 4
  br label %961

961:                                              ; preds = %956, %951
  br label %962

962:                                              ; preds = %961, %934
  %963 = load ptr, ptr %5, align 8
  %964 = getelementptr inbounds %struct.CLzmaEnc, ptr %963, i32 0, i32 11
  %965 = load i32, ptr %47, align 4
  %966 = zext i32 %965 to i64
  %967 = getelementptr inbounds [4096 x %struct.COptimal], ptr %964, i64 0, i64 %966
  store ptr %967, ptr %62, align 8
  %968 = load i32, ptr %61, align 4
  %969 = icmp ult i32 %968, 4
  br i1 %969, label %970, label %1014

970:                                              ; preds = %962
  %971 = load ptr, ptr %62, align 8
  %972 = getelementptr inbounds %struct.COptimal, ptr %971, i32 0, i32 8
  %973 = load i32, ptr %61, align 4
  %974 = zext i32 %973 to i64
  %975 = getelementptr inbounds [4 x i32], ptr %972, i64 0, i64 %974
  %976 = load i32, ptr %975, align 4
  %977 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 0
  store i32 %976, ptr %977, align 16
  store i32 1, ptr %63, align 4
  br label %978

978:                                              ; preds = %993, %970
  %979 = load i32, ptr %63, align 4
  %980 = load i32, ptr %61, align 4
  %981 = icmp ule i32 %979, %980
  br i1 %981, label %982, label %996

982:                                              ; preds = %978
  %983 = load ptr, ptr %62, align 8
  %984 = getelementptr inbounds %struct.COptimal, ptr %983, i32 0, i32 8
  %985 = load i32, ptr %63, align 4
  %986 = sub i32 %985, 1
  %987 = zext i32 %986 to i64
  %988 = getelementptr inbounds [4 x i32], ptr %984, i64 0, i64 %987
  %989 = load i32, ptr %988, align 4
  %990 = load i32, ptr %63, align 4
  %991 = zext i32 %990 to i64
  %992 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %991
  store i32 %989, ptr %992, align 4
  br label %993

993:                                              ; preds = %982
  %994 = load i32, ptr %63, align 4
  %995 = add i32 %994, 1
  store i32 %995, ptr %63, align 4
  br label %978, !llvm.loop !58

996:                                              ; preds = %978
  br label %997

997:                                              ; preds = %1010, %996
  %998 = load i32, ptr %63, align 4
  %999 = icmp ult i32 %998, 4
  br i1 %999, label %1000, label %1013

1000:                                             ; preds = %997
  %1001 = load ptr, ptr %62, align 8
  %1002 = getelementptr inbounds %struct.COptimal, ptr %1001, i32 0, i32 8
  %1003 = load i32, ptr %63, align 4
  %1004 = zext i32 %1003 to i64
  %1005 = getelementptr inbounds [4 x i32], ptr %1002, i64 0, i64 %1004
  %1006 = load i32, ptr %1005, align 4
  %1007 = load i32, ptr %63, align 4
  %1008 = zext i32 %1007 to i64
  %1009 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %1008
  store i32 %1006, ptr %1009, align 4
  br label %1010

1010:                                             ; preds = %1000
  %1011 = load i32, ptr %63, align 4
  %1012 = add i32 %1011, 1
  store i32 %1012, ptr %63, align 4
  br label %997, !llvm.loop !59

1013:                                             ; preds = %997
  br label %1036

1014:                                             ; preds = %962
  %1015 = load i32, ptr %61, align 4
  %1016 = sub i32 %1015, 4
  %1017 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 0
  store i32 %1016, ptr %1017, align 16
  store i32 1, ptr %64, align 4
  br label %1018

1018:                                             ; preds = %1032, %1014
  %1019 = load i32, ptr %64, align 4
  %1020 = icmp ult i32 %1019, 4
  br i1 %1020, label %1021, label %1035

1021:                                             ; preds = %1018
  %1022 = load ptr, ptr %62, align 8
  %1023 = getelementptr inbounds %struct.COptimal, ptr %1022, i32 0, i32 8
  %1024 = load i32, ptr %64, align 4
  %1025 = sub i32 %1024, 1
  %1026 = zext i32 %1025 to i64
  %1027 = getelementptr inbounds [4 x i32], ptr %1023, i64 0, i64 %1026
  %1028 = load i32, ptr %1027, align 4
  %1029 = load i32, ptr %64, align 4
  %1030 = zext i32 %1029 to i64
  %1031 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %1030
  store i32 %1028, ptr %1031, align 4
  br label %1032

1032:                                             ; preds = %1021
  %1033 = load i32, ptr %64, align 4
  %1034 = add i32 %1033, 1
  store i32 %1034, ptr %64, align 4
  br label %1018, !llvm.loop !60

1035:                                             ; preds = %1018
  br label %1036

1036:                                             ; preds = %1035, %1013
  br label %1037

1037:                                             ; preds = %1036, %923
  %1038 = load i32, ptr %48, align 4
  %1039 = load ptr, ptr %59, align 8
  %1040 = getelementptr inbounds %struct.COptimal, ptr %1039, i32 0, i32 1
  store i32 %1038, ptr %1040, align 4
  %1041 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 0
  %1042 = load i32, ptr %1041, align 16
  %1043 = load ptr, ptr %59, align 8
  %1044 = getelementptr inbounds %struct.COptimal, ptr %1043, i32 0, i32 8
  %1045 = getelementptr inbounds [4 x i32], ptr %1044, i64 0, i64 0
  store i32 %1042, ptr %1045, align 4
  %1046 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 1
  %1047 = load i32, ptr %1046, align 4
  %1048 = load ptr, ptr %59, align 8
  %1049 = getelementptr inbounds %struct.COptimal, ptr %1048, i32 0, i32 8
  %1050 = getelementptr inbounds [4 x i32], ptr %1049, i64 0, i64 1
  store i32 %1047, ptr %1050, align 4
  %1051 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 2
  %1052 = load i32, ptr %1051, align 8
  %1053 = load ptr, ptr %59, align 8
  %1054 = getelementptr inbounds %struct.COptimal, ptr %1053, i32 0, i32 8
  %1055 = getelementptr inbounds [4 x i32], ptr %1054, i64 0, i64 2
  store i32 %1052, ptr %1055, align 4
  %1056 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 3
  %1057 = load i32, ptr %1056, align 4
  %1058 = load ptr, ptr %59, align 8
  %1059 = getelementptr inbounds %struct.COptimal, ptr %1058, i32 0, i32 8
  %1060 = getelementptr inbounds [4 x i32], ptr %1059, i64 0, i64 3
  store i32 %1057, ptr %1060, align 4
  %1061 = load ptr, ptr %59, align 8
  %1062 = getelementptr inbounds %struct.COptimal, ptr %1061, i32 0, i32 0
  %1063 = load i32, ptr %1062, align 4
  store i32 %1063, ptr %51, align 4
  store i32 0, ptr %55, align 4
  %1064 = load ptr, ptr %5, align 8
  %1065 = getelementptr inbounds %struct.CLzmaEnc, ptr %1064, i32 0, i32 0
  %1066 = getelementptr inbounds %struct._IMatchFinder, ptr %1065, i32 0, i32 3
  %1067 = load ptr, ptr %1066, align 8
  %1068 = load ptr, ptr %5, align 8
  %1069 = getelementptr inbounds %struct.CLzmaEnc, ptr %1068, i32 0, i32 1
  %1070 = load ptr, ptr %1069, align 8
  %1071 = call ptr %1067(ptr noundef %1070)
  %1072 = getelementptr inbounds i8, ptr %1071, i64 -1
  store ptr %1072, ptr %58, align 8
  %1073 = load ptr, ptr %58, align 8
  %1074 = load i8, ptr %1073, align 1
  store i8 %1074, ptr %56, align 1
  %1075 = load ptr, ptr %58, align 8
  %1076 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 0
  %1077 = load i32, ptr %1076, align 16
  %1078 = add i32 %1077, 1
  %1079 = zext i32 %1078 to i64
  %1080 = sub i64 0, %1079
  %1081 = getelementptr inbounds i8, ptr %1075, i64 %1080
  %1082 = load i8, ptr %1081, align 1
  store i8 %1082, ptr %57, align 1
  %1083 = load i32, ptr %6, align 4
  %1084 = load ptr, ptr %5, align 8
  %1085 = getelementptr inbounds %struct.CLzmaEnc, ptr %1084, i32 0, i32 28
  %1086 = load i32, ptr %1085, align 4
  %1087 = and i32 %1083, %1086
  store i32 %1087, ptr %49, align 4
  %1088 = load i32, ptr %51, align 4
  %1089 = load ptr, ptr %5, align 8
  %1090 = getelementptr inbounds %struct.CLzmaEnc, ptr %1089, i32 0, i32 13
  %1091 = load ptr, ptr %5, align 8
  %1092 = getelementptr inbounds %struct.CLzmaEnc, ptr %1091, i32 0, i32 30
  %1093 = load i32, ptr %48, align 4
  %1094 = zext i32 %1093 to i64
  %1095 = getelementptr inbounds [12 x [16 x i16]], ptr %1092, i64 0, i64 %1094
  %1096 = load i32, ptr %49, align 4
  %1097 = zext i32 %1096 to i64
  %1098 = getelementptr inbounds [16 x i16], ptr %1095, i64 0, i64 %1097
  %1099 = load i16, ptr %1098, align 2
  %1100 = zext i16 %1099 to i32
  %1101 = ashr i32 %1100, 4
  %1102 = sext i32 %1101 to i64
  %1103 = getelementptr inbounds [128 x i32], ptr %1090, i64 0, i64 %1102
  %1104 = load i32, ptr %1103, align 4
  %1105 = add i32 %1088, %1104
  store i32 %1105, ptr %52, align 4
  %1106 = load ptr, ptr %5, align 8
  %1107 = getelementptr inbounds %struct.CLzmaEnc, ptr %1106, i32 0, i32 29
  %1108 = load ptr, ptr %1107, align 8
  %1109 = load i32, ptr %6, align 4
  %1110 = load ptr, ptr %5, align 8
  %1111 = getelementptr inbounds %struct.CLzmaEnc, ptr %1110, i32 0, i32 27
  %1112 = load i32, ptr %1111, align 8
  %1113 = and i32 %1109, %1112
  %1114 = load ptr, ptr %5, align 8
  %1115 = getelementptr inbounds %struct.CLzmaEnc, ptr %1114, i32 0, i32 24
  %1116 = load i32, ptr %1115, align 4
  %1117 = shl i32 %1113, %1116
  %1118 = load ptr, ptr %58, align 8
  %1119 = getelementptr inbounds i8, ptr %1118, i64 -1
  %1120 = load i8, ptr %1119, align 1
  %1121 = zext i8 %1120 to i32
  %1122 = load ptr, ptr %5, align 8
  %1123 = getelementptr inbounds %struct.CLzmaEnc, ptr %1122, i32 0, i32 24
  %1124 = load i32, ptr %1123, align 4
  %1125 = sub i32 8, %1124
  %1126 = ashr i32 %1121, %1125
  %1127 = add i32 %1117, %1126
  %1128 = mul i32 %1127, 768
  %1129 = zext i32 %1128 to i64
  %1130 = getelementptr inbounds i16, ptr %1108, i64 %1129
  store ptr %1130, ptr %65, align 8
  %1131 = load i32, ptr %48, align 4
  %1132 = icmp ult i32 %1131, 7
  br i1 %1132, label %1143, label %1133

1133:                                             ; preds = %1037
  %1134 = load ptr, ptr %65, align 8
  %1135 = load i8, ptr %56, align 1
  %1136 = zext i8 %1135 to i32
  %1137 = load i8, ptr %57, align 1
  %1138 = zext i8 %1137 to i32
  %1139 = load ptr, ptr %5, align 8
  %1140 = getelementptr inbounds %struct.CLzmaEnc, ptr %1139, i32 0, i32 13
  %1141 = getelementptr inbounds [128 x i32], ptr %1140, i64 0, i64 0
  %1142 = call i32 @LitEnc_GetPriceMatched(ptr noundef %1134, i32 noundef %1136, i32 noundef %1138, ptr noundef %1141)
  br label %1151

1143:                                             ; preds = %1037
  %1144 = load ptr, ptr %65, align 8
  %1145 = load i8, ptr %56, align 1
  %1146 = zext i8 %1145 to i32
  %1147 = load ptr, ptr %5, align 8
  %1148 = getelementptr inbounds %struct.CLzmaEnc, ptr %1147, i32 0, i32 13
  %1149 = getelementptr inbounds [128 x i32], ptr %1148, i64 0, i64 0
  %1150 = call i32 @LitEnc_GetPrice(ptr noundef %1144, i32 noundef %1146, ptr noundef %1149)
  br label %1151

1151:                                             ; preds = %1143, %1133
  %1152 = phi i32 [ %1142, %1133 ], [ %1150, %1143 ]
  %1153 = load i32, ptr %52, align 4
  %1154 = add i32 %1153, %1152
  store i32 %1154, ptr %52, align 4
  %1155 = load ptr, ptr %5, align 8
  %1156 = getelementptr inbounds %struct.CLzmaEnc, ptr %1155, i32 0, i32 11
  %1157 = load i32, ptr %16, align 4
  %1158 = add i32 %1157, 1
  %1159 = zext i32 %1158 to i64
  %1160 = getelementptr inbounds [4096 x %struct.COptimal], ptr %1156, i64 0, i64 %1159
  store ptr %1160, ptr %60, align 8
  %1161 = load i32, ptr %52, align 4
  %1162 = load ptr, ptr %60, align 8
  %1163 = getelementptr inbounds %struct.COptimal, ptr %1162, i32 0, i32 0
  %1164 = load i32, ptr %1163, align 4
  %1165 = icmp ult i32 %1161, %1164
  br i1 %1165, label %1166, label %1177

1166:                                             ; preds = %1151
  %1167 = load i32, ptr %52, align 4
  %1168 = load ptr, ptr %60, align 8
  %1169 = getelementptr inbounds %struct.COptimal, ptr %1168, i32 0, i32 0
  store i32 %1167, ptr %1169, align 4
  %1170 = load i32, ptr %16, align 4
  %1171 = load ptr, ptr %60, align 8
  %1172 = getelementptr inbounds %struct.COptimal, ptr %1171, i32 0, i32 6
  store i32 %1170, ptr %1172, align 4
  %1173 = load ptr, ptr %60, align 8
  %1174 = getelementptr inbounds %struct.COptimal, ptr %1173, i32 0, i32 7
  store i32 -1, ptr %1174, align 4
  %1175 = load ptr, ptr %60, align 8
  %1176 = getelementptr inbounds %struct.COptimal, ptr %1175, i32 0, i32 2
  store i32 0, ptr %1176, align 4
  store i32 1, ptr %55, align 4
  br label %1177

1177:                                             ; preds = %1166, %1151
  %1178 = load i32, ptr %51, align 4
  %1179 = load ptr, ptr %5, align 8
  %1180 = getelementptr inbounds %struct.CLzmaEnc, ptr %1179, i32 0, i32 13
  %1181 = load ptr, ptr %5, align 8
  %1182 = getelementptr inbounds %struct.CLzmaEnc, ptr %1181, i32 0, i32 30
  %1183 = load i32, ptr %48, align 4
  %1184 = zext i32 %1183 to i64
  %1185 = getelementptr inbounds [12 x [16 x i16]], ptr %1182, i64 0, i64 %1184
  %1186 = load i32, ptr %49, align 4
  %1187 = zext i32 %1186 to i64
  %1188 = getelementptr inbounds [16 x i16], ptr %1185, i64 0, i64 %1187
  %1189 = load i16, ptr %1188, align 2
  %1190 = zext i16 %1189 to i32
  %1191 = xor i32 %1190, 2047
  %1192 = ashr i32 %1191, 4
  %1193 = sext i32 %1192 to i64
  %1194 = getelementptr inbounds [128 x i32], ptr %1180, i64 0, i64 %1193
  %1195 = load i32, ptr %1194, align 4
  %1196 = add i32 %1178, %1195
  store i32 %1196, ptr %53, align 4
  %1197 = load i32, ptr %53, align 4
  %1198 = load ptr, ptr %5, align 8
  %1199 = getelementptr inbounds %struct.CLzmaEnc, ptr %1198, i32 0, i32 13
  %1200 = load ptr, ptr %5, align 8
  %1201 = getelementptr inbounds %struct.CLzmaEnc, ptr %1200, i32 0, i32 31
  %1202 = load i32, ptr %48, align 4
  %1203 = zext i32 %1202 to i64
  %1204 = getelementptr inbounds [12 x i16], ptr %1201, i64 0, i64 %1203
  %1205 = load i16, ptr %1204, align 2
  %1206 = zext i16 %1205 to i32
  %1207 = xor i32 %1206, 2047
  %1208 = ashr i32 %1207, 4
  %1209 = sext i32 %1208 to i64
  %1210 = getelementptr inbounds [128 x i32], ptr %1199, i64 0, i64 %1209
  %1211 = load i32, ptr %1210, align 4
  %1212 = add i32 %1197, %1211
  store i32 %1212, ptr %54, align 4
  %1213 = load i8, ptr %57, align 1
  %1214 = zext i8 %1213 to i32
  %1215 = load i8, ptr %56, align 1
  %1216 = zext i8 %1215 to i32
  %1217 = icmp eq i32 %1214, %1216
  br i1 %1217, label %1218, label %1253

1218:                                             ; preds = %1177
  %1219 = load ptr, ptr %60, align 8
  %1220 = getelementptr inbounds %struct.COptimal, ptr %1219, i32 0, i32 6
  %1221 = load i32, ptr %1220, align 4
  %1222 = load i32, ptr %16, align 4
  %1223 = icmp ult i32 %1221, %1222
  br i1 %1223, label %1224, label %1229

1224:                                             ; preds = %1218
  %1225 = load ptr, ptr %60, align 8
  %1226 = getelementptr inbounds %struct.COptimal, ptr %1225, i32 0, i32 7
  %1227 = load i32, ptr %1226, align 4
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1253, label %1229

1229:                                             ; preds = %1224, %1218
  %1230 = load i32, ptr %54, align 4
  %1231 = load ptr, ptr %5, align 8
  %1232 = load i32, ptr %48, align 4
  %1233 = load i32, ptr %49, align 4
  %1234 = call i32 @GetRepLen1Price(ptr noundef %1231, i32 noundef %1232, i32 noundef %1233)
  %1235 = add i32 %1230, %1234
  store i32 %1235, ptr %66, align 4
  %1236 = load i32, ptr %66, align 4
  %1237 = load ptr, ptr %60, align 8
  %1238 = getelementptr inbounds %struct.COptimal, ptr %1237, i32 0, i32 0
  %1239 = load i32, ptr %1238, align 4
  %1240 = icmp ule i32 %1236, %1239
  br i1 %1240, label %1241, label %1252

1241:                                             ; preds = %1229
  %1242 = load i32, ptr %66, align 4
  %1243 = load ptr, ptr %60, align 8
  %1244 = getelementptr inbounds %struct.COptimal, ptr %1243, i32 0, i32 0
  store i32 %1242, ptr %1244, align 4
  %1245 = load i32, ptr %16, align 4
  %1246 = load ptr, ptr %60, align 8
  %1247 = getelementptr inbounds %struct.COptimal, ptr %1246, i32 0, i32 6
  store i32 %1245, ptr %1247, align 4
  %1248 = load ptr, ptr %60, align 8
  %1249 = getelementptr inbounds %struct.COptimal, ptr %1248, i32 0, i32 7
  store i32 0, ptr %1249, align 4
  %1250 = load ptr, ptr %60, align 8
  %1251 = getelementptr inbounds %struct.COptimal, ptr %1250, i32 0, i32 2
  store i32 0, ptr %1251, align 4
  store i32 1, ptr %55, align 4
  br label %1252

1252:                                             ; preds = %1241, %1229
  br label %1253

1253:                                             ; preds = %1252, %1224, %1177
  %1254 = load ptr, ptr %5, align 8
  %1255 = getelementptr inbounds %struct.CLzmaEnc, ptr %1254, i32 0, i32 10
  %1256 = load i32, ptr %1255, align 8
  store i32 %1256, ptr %44, align 4
  %1257 = load i32, ptr %16, align 4
  %1258 = sub i32 4095, %1257
  store i32 %1258, ptr %67, align 4
  %1259 = load i32, ptr %67, align 4
  %1260 = load i32, ptr %44, align 4
  %1261 = icmp ult i32 %1259, %1260
  br i1 %1261, label %1262, label %1264

1262:                                             ; preds = %1253
  %1263 = load i32, ptr %67, align 4
  store i32 %1263, ptr %44, align 4
  br label %1264

1264:                                             ; preds = %1262, %1253
  %1265 = load i32, ptr %44, align 4
  %1266 = icmp ult i32 %1265, 2
  br i1 %1266, label %1267, label %1268

1267:                                             ; preds = %1264
  br label %805

1268:                                             ; preds = %1264
  %1269 = load i32, ptr %44, align 4
  %1270 = load ptr, ptr %5, align 8
  %1271 = getelementptr inbounds %struct.CLzmaEnc, ptr %1270, i32 0, i32 15
  %1272 = load i32, ptr %1271, align 8
  %1273 = icmp ule i32 %1269, %1272
  br i1 %1273, label %1274, label %1276

1274:                                             ; preds = %1268
  %1275 = load i32, ptr %44, align 4
  br label %1280

1276:                                             ; preds = %1268
  %1277 = load ptr, ptr %5, align 8
  %1278 = getelementptr inbounds %struct.CLzmaEnc, ptr %1277, i32 0, i32 15
  %1279 = load i32, ptr %1278, align 8
  br label %1280

1280:                                             ; preds = %1276, %1274
  %1281 = phi i32 [ %1275, %1274 ], [ %1279, %1276 ]
  store i32 %1281, ptr %8, align 4
  %1282 = load i32, ptr %55, align 4
  %1283 = icmp ne i32 %1282, 0
  br i1 %1283, label %1432, label %1284

1284:                                             ; preds = %1280
  %1285 = load i8, ptr %57, align 1
  %1286 = zext i8 %1285 to i32
  %1287 = load i8, ptr %56, align 1
  %1288 = zext i8 %1287 to i32
  %1289 = icmp ne i32 %1286, %1288
  br i1 %1289, label %1290, label %1432

1290:                                             ; preds = %1284
  %1291 = load ptr, ptr %58, align 8
  %1292 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 0
  %1293 = load i32, ptr %1292, align 16
  %1294 = add i32 %1293, 1
  %1295 = zext i32 %1294 to i64
  %1296 = sub i64 0, %1295
  %1297 = getelementptr inbounds i8, ptr %1291, i64 %1296
  store ptr %1297, ptr %70, align 8
  %1298 = load ptr, ptr %5, align 8
  %1299 = getelementptr inbounds %struct.CLzmaEnc, ptr %1298, i32 0, i32 15
  %1300 = load i32, ptr %1299, align 8
  %1301 = add i32 %1300, 1
  store i32 %1301, ptr %71, align 4
  %1302 = load i32, ptr %71, align 4
  %1303 = load i32, ptr %44, align 4
  %1304 = icmp ugt i32 %1302, %1303
  br i1 %1304, label %1305, label %1307

1305:                                             ; preds = %1290
  %1306 = load i32, ptr %44, align 4
  store i32 %1306, ptr %71, align 4
  br label %1307

1307:                                             ; preds = %1305, %1290
  store i32 1, ptr %68, align 4
  br label %1308

1308:                                             ; preds = %1329, %1307
  %1309 = load i32, ptr %68, align 4
  %1310 = load i32, ptr %71, align 4
  %1311 = icmp ult i32 %1309, %1310
  br i1 %1311, label %1312, label %1326

1312:                                             ; preds = %1308
  %1313 = load ptr, ptr %58, align 8
  %1314 = load i32, ptr %68, align 4
  %1315 = zext i32 %1314 to i64
  %1316 = getelementptr inbounds i8, ptr %1313, i64 %1315
  %1317 = load i8, ptr %1316, align 1
  %1318 = zext i8 %1317 to i32
  %1319 = load ptr, ptr %70, align 8
  %1320 = load i32, ptr %68, align 4
  %1321 = zext i32 %1320 to i64
  %1322 = getelementptr inbounds i8, ptr %1319, i64 %1321
  %1323 = load i8, ptr %1322, align 1
  %1324 = zext i8 %1323 to i32
  %1325 = icmp eq i32 %1318, %1324
  br label %1326

1326:                                             ; preds = %1312, %1308
  %1327 = phi i1 [ false, %1308 ], [ %1325, %1312 ]
  br i1 %1327, label %1328, label %1332

1328:                                             ; preds = %1326
  br label %1329

1329:                                             ; preds = %1328
  %1330 = load i32, ptr %68, align 4
  %1331 = add i32 %1330, 1
  store i32 %1331, ptr %68, align 4
  br label %1308, !llvm.loop !61

1332:                                             ; preds = %1326
  %1333 = load i32, ptr %68, align 4
  %1334 = sub i32 %1333, 1
  store i32 %1334, ptr %69, align 4
  %1335 = load i32, ptr %69, align 4
  %1336 = icmp uge i32 %1335, 2
  br i1 %1336, label %1337, label %1431

1337:                                             ; preds = %1332
  %1338 = load i32, ptr %48, align 4
  %1339 = zext i32 %1338 to i64
  %1340 = getelementptr inbounds [12 x i32], ptr @kLiteralNextStates, i64 0, i64 %1339
  %1341 = load i32, ptr %1340, align 4
  store i32 %1341, ptr %72, align 4
  %1342 = load i32, ptr %6, align 4
  %1343 = add i32 %1342, 1
  %1344 = load ptr, ptr %5, align 8
  %1345 = getelementptr inbounds %struct.CLzmaEnc, ptr %1344, i32 0, i32 28
  %1346 = load i32, ptr %1345, align 4
  %1347 = and i32 %1343, %1346
  store i32 %1347, ptr %73, align 4
  %1348 = load i32, ptr %52, align 4
  %1349 = load ptr, ptr %5, align 8
  %1350 = getelementptr inbounds %struct.CLzmaEnc, ptr %1349, i32 0, i32 13
  %1351 = load ptr, ptr %5, align 8
  %1352 = getelementptr inbounds %struct.CLzmaEnc, ptr %1351, i32 0, i32 30
  %1353 = load i32, ptr %72, align 4
  %1354 = zext i32 %1353 to i64
  %1355 = getelementptr inbounds [12 x [16 x i16]], ptr %1352, i64 0, i64 %1354
  %1356 = load i32, ptr %73, align 4
  %1357 = zext i32 %1356 to i64
  %1358 = getelementptr inbounds [16 x i16], ptr %1355, i64 0, i64 %1357
  %1359 = load i16, ptr %1358, align 2
  %1360 = zext i16 %1359 to i32
  %1361 = xor i32 %1360, 2047
  %1362 = ashr i32 %1361, 4
  %1363 = sext i32 %1362 to i64
  %1364 = getelementptr inbounds [128 x i32], ptr %1350, i64 0, i64 %1363
  %1365 = load i32, ptr %1364, align 4
  %1366 = add i32 %1348, %1365
  %1367 = load ptr, ptr %5, align 8
  %1368 = getelementptr inbounds %struct.CLzmaEnc, ptr %1367, i32 0, i32 13
  %1369 = load ptr, ptr %5, align 8
  %1370 = getelementptr inbounds %struct.CLzmaEnc, ptr %1369, i32 0, i32 31
  %1371 = load i32, ptr %72, align 4
  %1372 = zext i32 %1371 to i64
  %1373 = getelementptr inbounds [12 x i16], ptr %1370, i64 0, i64 %1372
  %1374 = load i16, ptr %1373, align 2
  %1375 = zext i16 %1374 to i32
  %1376 = xor i32 %1375, 2047
  %1377 = ashr i32 %1376, 4
  %1378 = sext i32 %1377 to i64
  %1379 = getelementptr inbounds [128 x i32], ptr %1368, i64 0, i64 %1378
  %1380 = load i32, ptr %1379, align 4
  %1381 = add i32 %1366, %1380
  store i32 %1381, ptr %74, align 4
  %1382 = load i32, ptr %16, align 4
  %1383 = add i32 %1382, 1
  %1384 = load i32, ptr %69, align 4
  %1385 = add i32 %1383, %1384
  store i32 %1385, ptr %77, align 4
  br label %1386

1386:                                             ; preds = %1390, %1337
  %1387 = load i32, ptr %14, align 4
  %1388 = load i32, ptr %77, align 4
  %1389 = icmp ult i32 %1387, %1388
  br i1 %1389, label %1390, label %1398

1390:                                             ; preds = %1386
  %1391 = load ptr, ptr %5, align 8
  %1392 = getelementptr inbounds %struct.CLzmaEnc, ptr %1391, i32 0, i32 11
  %1393 = load i32, ptr %14, align 4
  %1394 = add i32 %1393, 1
  store i32 %1394, ptr %14, align 4
  %1395 = zext i32 %1394 to i64
  %1396 = getelementptr inbounds [4096 x %struct.COptimal], ptr %1392, i64 0, i64 %1395
  %1397 = getelementptr inbounds %struct.COptimal, ptr %1396, i32 0, i32 0
  store i32 1073741824, ptr %1397, align 4
  br label %1386, !llvm.loop !62

1398:                                             ; preds = %1386
  %1399 = load i32, ptr %74, align 4
  %1400 = load ptr, ptr %5, align 8
  %1401 = load i32, ptr %69, align 4
  %1402 = load i32, ptr %72, align 4
  %1403 = load i32, ptr %73, align 4
  %1404 = call i32 @GetRepPrice(ptr noundef %1400, i32 noundef 0, i32 noundef %1401, i32 noundef %1402, i32 noundef %1403)
  %1405 = add i32 %1399, %1404
  store i32 %1405, ptr %75, align 4
  %1406 = load ptr, ptr %5, align 8
  %1407 = getelementptr inbounds %struct.CLzmaEnc, ptr %1406, i32 0, i32 11
  %1408 = load i32, ptr %77, align 4
  %1409 = zext i32 %1408 to i64
  %1410 = getelementptr inbounds [4096 x %struct.COptimal], ptr %1407, i64 0, i64 %1409
  store ptr %1410, ptr %76, align 8
  %1411 = load i32, ptr %75, align 4
  %1412 = load ptr, ptr %76, align 8
  %1413 = getelementptr inbounds %struct.COptimal, ptr %1412, i32 0, i32 0
  %1414 = load i32, ptr %1413, align 4
  %1415 = icmp ult i32 %1411, %1414
  br i1 %1415, label %1416, label %1430

1416:                                             ; preds = %1398
  %1417 = load i32, ptr %75, align 4
  %1418 = load ptr, ptr %76, align 8
  %1419 = getelementptr inbounds %struct.COptimal, ptr %1418, i32 0, i32 0
  store i32 %1417, ptr %1419, align 4
  %1420 = load i32, ptr %16, align 4
  %1421 = add i32 %1420, 1
  %1422 = load ptr, ptr %76, align 8
  %1423 = getelementptr inbounds %struct.COptimal, ptr %1422, i32 0, i32 6
  store i32 %1421, ptr %1423, align 4
  %1424 = load ptr, ptr %76, align 8
  %1425 = getelementptr inbounds %struct.COptimal, ptr %1424, i32 0, i32 7
  store i32 0, ptr %1425, align 4
  %1426 = load ptr, ptr %76, align 8
  %1427 = getelementptr inbounds %struct.COptimal, ptr %1426, i32 0, i32 2
  store i32 1, ptr %1427, align 4
  %1428 = load ptr, ptr %76, align 8
  %1429 = getelementptr inbounds %struct.COptimal, ptr %1428, i32 0, i32 3
  store i32 0, ptr %1429, align 4
  br label %1430

1430:                                             ; preds = %1416, %1398
  br label %1431

1431:                                             ; preds = %1430, %1332
  br label %1432

1432:                                             ; preds = %1431, %1284, %1280
  store i32 2, ptr %50, align 4
  store i32 0, ptr %78, align 4
  br label %1433

1433:                                             ; preds = %1805, %1432
  %1434 = load i32, ptr %78, align 4
  %1435 = icmp ult i32 %1434, 4
  br i1 %1435, label %1436, label %1808

1436:                                             ; preds = %1433
  %1437 = load ptr, ptr %58, align 8
  %1438 = load i32, ptr %78, align 4
  %1439 = zext i32 %1438 to i64
  %1440 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %1439
  %1441 = load i32, ptr %1440, align 4
  %1442 = add i32 %1441, 1
  %1443 = zext i32 %1442 to i64
  %1444 = sub i64 0, %1443
  %1445 = getelementptr inbounds i8, ptr %1437, i64 %1444
  store ptr %1445, ptr %82, align 8
  %1446 = load ptr, ptr %58, align 8
  %1447 = getelementptr inbounds i8, ptr %1446, i64 0
  %1448 = load i8, ptr %1447, align 1
  %1449 = zext i8 %1448 to i32
  %1450 = load ptr, ptr %82, align 8
  %1451 = getelementptr inbounds i8, ptr %1450, i64 0
  %1452 = load i8, ptr %1451, align 1
  %1453 = zext i8 %1452 to i32
  %1454 = icmp ne i32 %1449, %1453
  br i1 %1454, label %1465, label %1455

1455:                                             ; preds = %1436
  %1456 = load ptr, ptr %58, align 8
  %1457 = getelementptr inbounds i8, ptr %1456, i64 1
  %1458 = load i8, ptr %1457, align 1
  %1459 = zext i8 %1458 to i32
  %1460 = load ptr, ptr %82, align 8
  %1461 = getelementptr inbounds i8, ptr %1460, i64 1
  %1462 = load i8, ptr %1461, align 1
  %1463 = zext i8 %1462 to i32
  %1464 = icmp ne i32 %1459, %1463
  br i1 %1464, label %1465, label %1466

1465:                                             ; preds = %1455, %1436
  br label %1805

1466:                                             ; preds = %1455
  store i32 2, ptr %79, align 4
  br label %1467

1467:                                             ; preds = %1488, %1466
  %1468 = load i32, ptr %79, align 4
  %1469 = load i32, ptr %8, align 4
  %1470 = icmp ult i32 %1468, %1469
  br i1 %1470, label %1471, label %1485

1471:                                             ; preds = %1467
  %1472 = load ptr, ptr %58, align 8
  %1473 = load i32, ptr %79, align 4
  %1474 = zext i32 %1473 to i64
  %1475 = getelementptr inbounds i8, ptr %1472, i64 %1474
  %1476 = load i8, ptr %1475, align 1
  %1477 = zext i8 %1476 to i32
  %1478 = load ptr, ptr %82, align 8
  %1479 = load i32, ptr %79, align 4
  %1480 = zext i32 %1479 to i64
  %1481 = getelementptr inbounds i8, ptr %1478, i64 %1480
  %1482 = load i8, ptr %1481, align 1
  %1483 = zext i8 %1482 to i32
  %1484 = icmp eq i32 %1477, %1483
  br label %1485

1485:                                             ; preds = %1471, %1467
  %1486 = phi i1 [ false, %1467 ], [ %1484, %1471 ]
  br i1 %1486, label %1487, label %1491

1487:                                             ; preds = %1485
  br label %1488

1488:                                             ; preds = %1487
  %1489 = load i32, ptr %79, align 4
  %1490 = add i32 %1489, 1
  store i32 %1490, ptr %79, align 4
  br label %1467, !llvm.loop !63

1491:                                             ; preds = %1485
  br label %1492

1492:                                             ; preds = %1498, %1491
  %1493 = load i32, ptr %14, align 4
  %1494 = load i32, ptr %16, align 4
  %1495 = load i32, ptr %79, align 4
  %1496 = add i32 %1494, %1495
  %1497 = icmp ult i32 %1493, %1496
  br i1 %1497, label %1498, label %1506

1498:                                             ; preds = %1492
  %1499 = load ptr, ptr %5, align 8
  %1500 = getelementptr inbounds %struct.CLzmaEnc, ptr %1499, i32 0, i32 11
  %1501 = load i32, ptr %14, align 4
  %1502 = add i32 %1501, 1
  store i32 %1502, ptr %14, align 4
  %1503 = zext i32 %1502 to i64
  %1504 = getelementptr inbounds [4096 x %struct.COptimal], ptr %1500, i64 0, i64 %1503
  %1505 = getelementptr inbounds %struct.COptimal, ptr %1504, i32 0, i32 0
  store i32 1073741824, ptr %1505, align 4
  br label %1492, !llvm.loop !64

1506:                                             ; preds = %1492
  %1507 = load i32, ptr %79, align 4
  store i32 %1507, ptr %80, align 4
  %1508 = load i32, ptr %54, align 4
  %1509 = load ptr, ptr %5, align 8
  %1510 = load i32, ptr %78, align 4
  %1511 = load i32, ptr %48, align 4
  %1512 = load i32, ptr %49, align 4
  %1513 = call i32 @GetPureRepPrice(ptr noundef %1509, i32 noundef %1510, i32 noundef %1511, i32 noundef %1512)
  %1514 = add i32 %1508, %1513
  store i32 %1514, ptr %81, align 4
  br label %1515

1515:                                             ; preds = %1554, %1506
  %1516 = load i32, ptr %81, align 4
  %1517 = load ptr, ptr %5, align 8
  %1518 = getelementptr inbounds %struct.CLzmaEnc, ptr %1517, i32 0, i32 40
  %1519 = getelementptr inbounds %struct.CLenPriceEnc, ptr %1518, i32 0, i32 1
  %1520 = load i32, ptr %49, align 4
  %1521 = zext i32 %1520 to i64
  %1522 = getelementptr inbounds [16 x [272 x i32]], ptr %1519, i64 0, i64 %1521
  %1523 = load i32, ptr %79, align 4
  %1524 = sub i32 %1523, 2
  %1525 = zext i32 %1524 to i64
  %1526 = getelementptr inbounds [272 x i32], ptr %1522, i64 0, i64 %1525
  %1527 = load i32, ptr %1526, align 4
  %1528 = add i32 %1516, %1527
  store i32 %1528, ptr %83, align 4
  %1529 = load ptr, ptr %5, align 8
  %1530 = getelementptr inbounds %struct.CLzmaEnc, ptr %1529, i32 0, i32 11
  %1531 = load i32, ptr %16, align 4
  %1532 = load i32, ptr %79, align 4
  %1533 = add i32 %1531, %1532
  %1534 = zext i32 %1533 to i64
  %1535 = getelementptr inbounds [4096 x %struct.COptimal], ptr %1530, i64 0, i64 %1534
  store ptr %1535, ptr %84, align 8
  %1536 = load i32, ptr %83, align 4
  %1537 = load ptr, ptr %84, align 8
  %1538 = getelementptr inbounds %struct.COptimal, ptr %1537, i32 0, i32 0
  %1539 = load i32, ptr %1538, align 4
  %1540 = icmp ult i32 %1536, %1539
  br i1 %1540, label %1541, label %1553

1541:                                             ; preds = %1515
  %1542 = load i32, ptr %83, align 4
  %1543 = load ptr, ptr %84, align 8
  %1544 = getelementptr inbounds %struct.COptimal, ptr %1543, i32 0, i32 0
  store i32 %1542, ptr %1544, align 4
  %1545 = load i32, ptr %16, align 4
  %1546 = load ptr, ptr %84, align 8
  %1547 = getelementptr inbounds %struct.COptimal, ptr %1546, i32 0, i32 6
  store i32 %1545, ptr %1547, align 4
  %1548 = load i32, ptr %78, align 4
  %1549 = load ptr, ptr %84, align 8
  %1550 = getelementptr inbounds %struct.COptimal, ptr %1549, i32 0, i32 7
  store i32 %1548, ptr %1550, align 4
  %1551 = load ptr, ptr %84, align 8
  %1552 = getelementptr inbounds %struct.COptimal, ptr %1551, i32 0, i32 2
  store i32 0, ptr %1552, align 4
  br label %1553

1553:                                             ; preds = %1541, %1515
  br label %1554

1554:                                             ; preds = %1553
  %1555 = load i32, ptr %79, align 4
  %1556 = add i32 %1555, -1
  store i32 %1556, ptr %79, align 4
  %1557 = icmp uge i32 %1556, 2
  br i1 %1557, label %1515, label %1558, !llvm.loop !65

1558:                                             ; preds = %1554
  %1559 = load i32, ptr %80, align 4
  store i32 %1559, ptr %79, align 4
  %1560 = load i32, ptr %78, align 4
  %1561 = icmp eq i32 %1560, 0
  br i1 %1561, label %1562, label %1565

1562:                                             ; preds = %1558
  %1563 = load i32, ptr %79, align 4
  %1564 = add i32 %1563, 1
  store i32 %1564, ptr %50, align 4
  br label %1565

1565:                                             ; preds = %1562, %1558
  %1566 = load i32, ptr %79, align 4
  %1567 = add i32 %1566, 1
  store i32 %1567, ptr %85, align 4
  %1568 = load i32, ptr %85, align 4
  %1569 = load ptr, ptr %5, align 8
  %1570 = getelementptr inbounds %struct.CLzmaEnc, ptr %1569, i32 0, i32 15
  %1571 = load i32, ptr %1570, align 8
  %1572 = add i32 %1568, %1571
  store i32 %1572, ptr %86, align 4
  %1573 = load i32, ptr %86, align 4
  %1574 = load i32, ptr %44, align 4
  %1575 = icmp ugt i32 %1573, %1574
  br i1 %1575, label %1576, label %1578

1576:                                             ; preds = %1565
  %1577 = load i32, ptr %44, align 4
  store i32 %1577, ptr %86, align 4
  br label %1578

1578:                                             ; preds = %1576, %1565
  br label %1579

1579:                                             ; preds = %1600, %1578
  %1580 = load i32, ptr %85, align 4
  %1581 = load i32, ptr %86, align 4
  %1582 = icmp ult i32 %1580, %1581
  br i1 %1582, label %1583, label %1597

1583:                                             ; preds = %1579
  %1584 = load ptr, ptr %58, align 8
  %1585 = load i32, ptr %85, align 4
  %1586 = zext i32 %1585 to i64
  %1587 = getelementptr inbounds i8, ptr %1584, i64 %1586
  %1588 = load i8, ptr %1587, align 1
  %1589 = zext i8 %1588 to i32
  %1590 = load ptr, ptr %82, align 8
  %1591 = load i32, ptr %85, align 4
  %1592 = zext i32 %1591 to i64
  %1593 = getelementptr inbounds i8, ptr %1590, i64 %1592
  %1594 = load i8, ptr %1593, align 1
  %1595 = zext i8 %1594 to i32
  %1596 = icmp eq i32 %1589, %1595
  br label %1597

1597:                                             ; preds = %1583, %1579
  %1598 = phi i1 [ false, %1579 ], [ %1596, %1583 ]
  br i1 %1598, label %1599, label %1603

1599:                                             ; preds = %1597
  br label %1600

1600:                                             ; preds = %1599
  %1601 = load i32, ptr %85, align 4
  %1602 = add i32 %1601, 1
  store i32 %1602, ptr %85, align 4
  br label %1579, !llvm.loop !66

1603:                                             ; preds = %1597
  %1604 = load i32, ptr %79, align 4
  %1605 = add i32 %1604, 1
  %1606 = load i32, ptr %85, align 4
  %1607 = sub i32 %1606, %1605
  store i32 %1607, ptr %85, align 4
  %1608 = load i32, ptr %85, align 4
  %1609 = icmp uge i32 %1608, 2
  br i1 %1609, label %1610, label %1804

1610:                                             ; preds = %1603
  %1611 = load i32, ptr %48, align 4
  %1612 = zext i32 %1611 to i64
  %1613 = getelementptr inbounds [12 x i32], ptr @kRepNextStates, i64 0, i64 %1612
  %1614 = load i32, ptr %1613, align 4
  store i32 %1614, ptr %88, align 4
  %1615 = load i32, ptr %6, align 4
  %1616 = load i32, ptr %79, align 4
  %1617 = add i32 %1615, %1616
  %1618 = load ptr, ptr %5, align 8
  %1619 = getelementptr inbounds %struct.CLzmaEnc, ptr %1618, i32 0, i32 28
  %1620 = load i32, ptr %1619, align 4
  %1621 = and i32 %1617, %1620
  store i32 %1621, ptr %89, align 4
  %1622 = load i32, ptr %81, align 4
  %1623 = load ptr, ptr %5, align 8
  %1624 = getelementptr inbounds %struct.CLzmaEnc, ptr %1623, i32 0, i32 40
  %1625 = getelementptr inbounds %struct.CLenPriceEnc, ptr %1624, i32 0, i32 1
  %1626 = load i32, ptr %49, align 4
  %1627 = zext i32 %1626 to i64
  %1628 = getelementptr inbounds [16 x [272 x i32]], ptr %1625, i64 0, i64 %1627
  %1629 = load i32, ptr %79, align 4
  %1630 = sub i32 %1629, 2
  %1631 = zext i32 %1630 to i64
  %1632 = getelementptr inbounds [272 x i32], ptr %1628, i64 0, i64 %1631
  %1633 = load i32, ptr %1632, align 4
  %1634 = add i32 %1622, %1633
  %1635 = load ptr, ptr %5, align 8
  %1636 = getelementptr inbounds %struct.CLzmaEnc, ptr %1635, i32 0, i32 13
  %1637 = load ptr, ptr %5, align 8
  %1638 = getelementptr inbounds %struct.CLzmaEnc, ptr %1637, i32 0, i32 30
  %1639 = load i32, ptr %88, align 4
  %1640 = zext i32 %1639 to i64
  %1641 = getelementptr inbounds [12 x [16 x i16]], ptr %1638, i64 0, i64 %1640
  %1642 = load i32, ptr %89, align 4
  %1643 = zext i32 %1642 to i64
  %1644 = getelementptr inbounds [16 x i16], ptr %1641, i64 0, i64 %1643
  %1645 = load i16, ptr %1644, align 2
  %1646 = zext i16 %1645 to i32
  %1647 = ashr i32 %1646, 4
  %1648 = sext i32 %1647 to i64
  %1649 = getelementptr inbounds [128 x i32], ptr %1636, i64 0, i64 %1648
  %1650 = load i32, ptr %1649, align 4
  %1651 = add i32 %1634, %1650
  %1652 = load ptr, ptr %5, align 8
  %1653 = getelementptr inbounds %struct.CLzmaEnc, ptr %1652, i32 0, i32 29
  %1654 = load ptr, ptr %1653, align 8
  %1655 = load i32, ptr %6, align 4
  %1656 = load i32, ptr %79, align 4
  %1657 = add i32 %1655, %1656
  %1658 = load ptr, ptr %5, align 8
  %1659 = getelementptr inbounds %struct.CLzmaEnc, ptr %1658, i32 0, i32 27
  %1660 = load i32, ptr %1659, align 8
  %1661 = and i32 %1657, %1660
  %1662 = load ptr, ptr %5, align 8
  %1663 = getelementptr inbounds %struct.CLzmaEnc, ptr %1662, i32 0, i32 24
  %1664 = load i32, ptr %1663, align 4
  %1665 = shl i32 %1661, %1664
  %1666 = load ptr, ptr %58, align 8
  %1667 = load i32, ptr %79, align 4
  %1668 = sub i32 %1667, 1
  %1669 = zext i32 %1668 to i64
  %1670 = getelementptr inbounds i8, ptr %1666, i64 %1669
  %1671 = load i8, ptr %1670, align 1
  %1672 = zext i8 %1671 to i32
  %1673 = load ptr, ptr %5, align 8
  %1674 = getelementptr inbounds %struct.CLzmaEnc, ptr %1673, i32 0, i32 24
  %1675 = load i32, ptr %1674, align 4
  %1676 = sub i32 8, %1675
  %1677 = ashr i32 %1672, %1676
  %1678 = add i32 %1665, %1677
  %1679 = mul i32 %1678, 768
  %1680 = zext i32 %1679 to i64
  %1681 = getelementptr inbounds i16, ptr %1654, i64 %1680
  %1682 = load ptr, ptr %58, align 8
  %1683 = load i32, ptr %79, align 4
  %1684 = zext i32 %1683 to i64
  %1685 = getelementptr inbounds i8, ptr %1682, i64 %1684
  %1686 = load i8, ptr %1685, align 1
  %1687 = zext i8 %1686 to i32
  %1688 = load ptr, ptr %82, align 8
  %1689 = load i32, ptr %79, align 4
  %1690 = zext i32 %1689 to i64
  %1691 = getelementptr inbounds i8, ptr %1688, i64 %1690
  %1692 = load i8, ptr %1691, align 1
  %1693 = zext i8 %1692 to i32
  %1694 = load ptr, ptr %5, align 8
  %1695 = getelementptr inbounds %struct.CLzmaEnc, ptr %1694, i32 0, i32 13
  %1696 = getelementptr inbounds [128 x i32], ptr %1695, i64 0, i64 0
  %1697 = call i32 @LitEnc_GetPriceMatched(ptr noundef %1681, i32 noundef %1687, i32 noundef %1693, ptr noundef %1696)
  %1698 = add i32 %1651, %1697
  store i32 %1698, ptr %90, align 4
  %1699 = load i32, ptr %88, align 4
  %1700 = zext i32 %1699 to i64
  %1701 = getelementptr inbounds [12 x i32], ptr @kLiteralNextStates, i64 0, i64 %1700
  %1702 = load i32, ptr %1701, align 4
  store i32 %1702, ptr %88, align 4
  %1703 = load i32, ptr %6, align 4
  %1704 = load i32, ptr %79, align 4
  %1705 = add i32 %1703, %1704
  %1706 = add i32 %1705, 1
  %1707 = load ptr, ptr %5, align 8
  %1708 = getelementptr inbounds %struct.CLzmaEnc, ptr %1707, i32 0, i32 28
  %1709 = load i32, ptr %1708, align 4
  %1710 = and i32 %1706, %1709
  store i32 %1710, ptr %89, align 4
  %1711 = load i32, ptr %90, align 4
  %1712 = load ptr, ptr %5, align 8
  %1713 = getelementptr inbounds %struct.CLzmaEnc, ptr %1712, i32 0, i32 13
  %1714 = load ptr, ptr %5, align 8
  %1715 = getelementptr inbounds %struct.CLzmaEnc, ptr %1714, i32 0, i32 30
  %1716 = load i32, ptr %88, align 4
  %1717 = zext i32 %1716 to i64
  %1718 = getelementptr inbounds [12 x [16 x i16]], ptr %1715, i64 0, i64 %1717
  %1719 = load i32, ptr %89, align 4
  %1720 = zext i32 %1719 to i64
  %1721 = getelementptr inbounds [16 x i16], ptr %1718, i64 0, i64 %1720
  %1722 = load i16, ptr %1721, align 2
  %1723 = zext i16 %1722 to i32
  %1724 = xor i32 %1723, 2047
  %1725 = ashr i32 %1724, 4
  %1726 = sext i32 %1725 to i64
  %1727 = getelementptr inbounds [128 x i32], ptr %1713, i64 0, i64 %1726
  %1728 = load i32, ptr %1727, align 4
  %1729 = add i32 %1711, %1728
  %1730 = load ptr, ptr %5, align 8
  %1731 = getelementptr inbounds %struct.CLzmaEnc, ptr %1730, i32 0, i32 13
  %1732 = load ptr, ptr %5, align 8
  %1733 = getelementptr inbounds %struct.CLzmaEnc, ptr %1732, i32 0, i32 31
  %1734 = load i32, ptr %88, align 4
  %1735 = zext i32 %1734 to i64
  %1736 = getelementptr inbounds [12 x i16], ptr %1733, i64 0, i64 %1735
  %1737 = load i16, ptr %1736, align 2
  %1738 = zext i16 %1737 to i32
  %1739 = xor i32 %1738, 2047
  %1740 = ashr i32 %1739, 4
  %1741 = sext i32 %1740 to i64
  %1742 = getelementptr inbounds [128 x i32], ptr %1731, i64 0, i64 %1741
  %1743 = load i32, ptr %1742, align 4
  %1744 = add i32 %1729, %1743
  store i32 %1744, ptr %87, align 4
  %1745 = load i32, ptr %16, align 4
  %1746 = load i32, ptr %79, align 4
  %1747 = add i32 %1745, %1746
  %1748 = add i32 %1747, 1
  %1749 = load i32, ptr %85, align 4
  %1750 = add i32 %1748, %1749
  store i32 %1750, ptr %93, align 4
  br label %1751

1751:                                             ; preds = %1755, %1610
  %1752 = load i32, ptr %14, align 4
  %1753 = load i32, ptr %93, align 4
  %1754 = icmp ult i32 %1752, %1753
  br i1 %1754, label %1755, label %1763

1755:                                             ; preds = %1751
  %1756 = load ptr, ptr %5, align 8
  %1757 = getelementptr inbounds %struct.CLzmaEnc, ptr %1756, i32 0, i32 11
  %1758 = load i32, ptr %14, align 4
  %1759 = add i32 %1758, 1
  store i32 %1759, ptr %14, align 4
  %1760 = zext i32 %1759 to i64
  %1761 = getelementptr inbounds [4096 x %struct.COptimal], ptr %1757, i64 0, i64 %1760
  %1762 = getelementptr inbounds %struct.COptimal, ptr %1761, i32 0, i32 0
  store i32 1073741824, ptr %1762, align 4
  br label %1751, !llvm.loop !67

1763:                                             ; preds = %1751
  %1764 = load i32, ptr %87, align 4
  %1765 = load ptr, ptr %5, align 8
  %1766 = load i32, ptr %85, align 4
  %1767 = load i32, ptr %88, align 4
  %1768 = load i32, ptr %89, align 4
  %1769 = call i32 @GetRepPrice(ptr noundef %1765, i32 noundef 0, i32 noundef %1766, i32 noundef %1767, i32 noundef %1768)
  %1770 = add i32 %1764, %1769
  store i32 %1770, ptr %91, align 4
  %1771 = load ptr, ptr %5, align 8
  %1772 = getelementptr inbounds %struct.CLzmaEnc, ptr %1771, i32 0, i32 11
  %1773 = load i32, ptr %93, align 4
  %1774 = zext i32 %1773 to i64
  %1775 = getelementptr inbounds [4096 x %struct.COptimal], ptr %1772, i64 0, i64 %1774
  store ptr %1775, ptr %92, align 8
  %1776 = load i32, ptr %91, align 4
  %1777 = load ptr, ptr %92, align 8
  %1778 = getelementptr inbounds %struct.COptimal, ptr %1777, i32 0, i32 0
  %1779 = load i32, ptr %1778, align 4
  %1780 = icmp ult i32 %1776, %1779
  br i1 %1780, label %1781, label %1803

1781:                                             ; preds = %1763
  %1782 = load i32, ptr %91, align 4
  %1783 = load ptr, ptr %92, align 8
  %1784 = getelementptr inbounds %struct.COptimal, ptr %1783, i32 0, i32 0
  store i32 %1782, ptr %1784, align 4
  %1785 = load i32, ptr %16, align 4
  %1786 = load i32, ptr %79, align 4
  %1787 = add i32 %1785, %1786
  %1788 = add i32 %1787, 1
  %1789 = load ptr, ptr %92, align 8
  %1790 = getelementptr inbounds %struct.COptimal, ptr %1789, i32 0, i32 6
  store i32 %1788, ptr %1790, align 4
  %1791 = load ptr, ptr %92, align 8
  %1792 = getelementptr inbounds %struct.COptimal, ptr %1791, i32 0, i32 7
  store i32 0, ptr %1792, align 4
  %1793 = load ptr, ptr %92, align 8
  %1794 = getelementptr inbounds %struct.COptimal, ptr %1793, i32 0, i32 2
  store i32 1, ptr %1794, align 4
  %1795 = load ptr, ptr %92, align 8
  %1796 = getelementptr inbounds %struct.COptimal, ptr %1795, i32 0, i32 3
  store i32 1, ptr %1796, align 4
  %1797 = load i32, ptr %16, align 4
  %1798 = load ptr, ptr %92, align 8
  %1799 = getelementptr inbounds %struct.COptimal, ptr %1798, i32 0, i32 4
  store i32 %1797, ptr %1799, align 4
  %1800 = load i32, ptr %78, align 4
  %1801 = load ptr, ptr %92, align 8
  %1802 = getelementptr inbounds %struct.COptimal, ptr %1801, i32 0, i32 5
  store i32 %1800, ptr %1802, align 4
  br label %1803

1803:                                             ; preds = %1781, %1763
  br label %1804

1804:                                             ; preds = %1803, %1603
  br label %1805

1805:                                             ; preds = %1804, %1465
  %1806 = load i32, ptr %78, align 4
  %1807 = add i32 %1806, 1
  store i32 %1807, ptr %78, align 4
  br label %1433, !llvm.loop !68

1808:                                             ; preds = %1433
  %1809 = load i32, ptr %45, align 4
  %1810 = load i32, ptr %8, align 4
  %1811 = icmp ugt i32 %1809, %1810
  br i1 %1811, label %1812, label %1834

1812:                                             ; preds = %1808
  %1813 = load i32, ptr %8, align 4
  store i32 %1813, ptr %45, align 4
  store i32 0, ptr %46, align 4
  br label %1814

1814:                                             ; preds = %1823, %1812
  %1815 = load i32, ptr %45, align 4
  %1816 = load ptr, ptr %22, align 8
  %1817 = load i32, ptr %46, align 4
  %1818 = zext i32 %1817 to i64
  %1819 = getelementptr inbounds i32, ptr %1816, i64 %1818
  %1820 = load i32, ptr %1819, align 4
  %1821 = icmp ugt i32 %1815, %1820
  br i1 %1821, label %1822, label %1826

1822:                                             ; preds = %1814
  br label %1823

1823:                                             ; preds = %1822
  %1824 = load i32, ptr %46, align 4
  %1825 = add i32 %1824, 2
  store i32 %1825, ptr %46, align 4
  br label %1814, !llvm.loop !69

1826:                                             ; preds = %1814
  %1827 = load i32, ptr %45, align 4
  %1828 = load ptr, ptr %22, align 8
  %1829 = load i32, ptr %46, align 4
  %1830 = zext i32 %1829 to i64
  %1831 = getelementptr inbounds i32, ptr %1828, i64 %1830
  store i32 %1827, ptr %1831, align 4
  %1832 = load i32, ptr %46, align 4
  %1833 = add i32 %1832, 2
  store i32 %1833, ptr %46, align 4
  br label %1834

1834:                                             ; preds = %1826, %1808
  %1835 = load i32, ptr %45, align 4
  %1836 = load i32, ptr %50, align 4
  %1837 = icmp uge i32 %1835, %1836
  br i1 %1837, label %1838, label %2269

1838:                                             ; preds = %1834
  %1839 = load i32, ptr %53, align 4
  %1840 = load ptr, ptr %5, align 8
  %1841 = getelementptr inbounds %struct.CLzmaEnc, ptr %1840, i32 0, i32 13
  %1842 = load ptr, ptr %5, align 8
  %1843 = getelementptr inbounds %struct.CLzmaEnc, ptr %1842, i32 0, i32 31
  %1844 = load i32, ptr %48, align 4
  %1845 = zext i32 %1844 to i64
  %1846 = getelementptr inbounds [12 x i16], ptr %1843, i64 0, i64 %1845
  %1847 = load i16, ptr %1846, align 2
  %1848 = zext i16 %1847 to i32
  %1849 = ashr i32 %1848, 4
  %1850 = sext i32 %1849 to i64
  %1851 = getelementptr inbounds [128 x i32], ptr %1841, i64 0, i64 %1850
  %1852 = load i32, ptr %1851, align 4
  %1853 = add i32 %1839, %1852
  store i32 %1853, ptr %94, align 4
  br label %1854

1854:                                             ; preds = %1860, %1838
  %1855 = load i32, ptr %14, align 4
  %1856 = load i32, ptr %16, align 4
  %1857 = load i32, ptr %45, align 4
  %1858 = add i32 %1856, %1857
  %1859 = icmp ult i32 %1855, %1858
  br i1 %1859, label %1860, label %1868

1860:                                             ; preds = %1854
  %1861 = load ptr, ptr %5, align 8
  %1862 = getelementptr inbounds %struct.CLzmaEnc, ptr %1861, i32 0, i32 11
  %1863 = load i32, ptr %14, align 4
  %1864 = add i32 %1863, 1
  store i32 %1864, ptr %14, align 4
  %1865 = zext i32 %1864 to i64
  %1866 = getelementptr inbounds [4096 x %struct.COptimal], ptr %1862, i64 0, i64 %1865
  %1867 = getelementptr inbounds %struct.COptimal, ptr %1866, i32 0, i32 0
  store i32 1073741824, ptr %1867, align 4
  br label %1854, !llvm.loop !70

1868:                                             ; preds = %1854
  store i32 0, ptr %95, align 4
  br label %1869

1869:                                             ; preds = %1877, %1868
  %1870 = load i32, ptr %50, align 4
  %1871 = load ptr, ptr %22, align 8
  %1872 = load i32, ptr %95, align 4
  %1873 = zext i32 %1872 to i64
  %1874 = getelementptr inbounds i32, ptr %1871, i64 %1873
  %1875 = load i32, ptr %1874, align 4
  %1876 = icmp ugt i32 %1870, %1875
  br i1 %1876, label %1877, label %1880

1877:                                             ; preds = %1869
  %1878 = load i32, ptr %95, align 4
  %1879 = add i32 %1878, 2
  store i32 %1879, ptr %95, align 4
  br label %1869, !llvm.loop !71

1880:                                             ; preds = %1869
  %1881 = load ptr, ptr %22, align 8
  %1882 = load i32, ptr %95, align 4
  %1883 = add i32 %1882, 1
  %1884 = zext i32 %1883 to i64
  %1885 = getelementptr inbounds i32, ptr %1881, i64 %1884
  %1886 = load i32, ptr %1885, align 4
  store i32 %1886, ptr %96, align 4
  %1887 = load i32, ptr %96, align 4
  %1888 = sub i32 524287, %1887
  %1889 = lshr i32 %1888, 31
  %1890 = sub i32 0, %1889
  %1891 = and i32 12, %1890
  %1892 = add i32 6, %1891
  store i32 %1892, ptr %99, align 4
  %1893 = load ptr, ptr %5, align 8
  %1894 = getelementptr inbounds %struct.CLzmaEnc, ptr %1893, i32 0, i32 12
  %1895 = load i32, ptr %96, align 4
  %1896 = load i32, ptr %99, align 4
  %1897 = lshr i32 %1895, %1896
  %1898 = zext i32 %1897 to i64
  %1899 = getelementptr inbounds [8192 x i8], ptr %1894, i64 0, i64 %1898
  %1900 = load i8, ptr %1899, align 1
  %1901 = zext i8 %1900 to i32
  %1902 = load i32, ptr %99, align 4
  %1903 = mul i32 %1902, 2
  %1904 = add i32 %1901, %1903
  store i32 %1904, ptr %97, align 4
  %1905 = load i32, ptr %50, align 4
  store i32 %1905, ptr %98, align 4
  br label %1906

1906:                                             ; preds = %2265, %1880
  %1907 = load i32, ptr %94, align 4
  %1908 = load ptr, ptr %5, align 8
  %1909 = getelementptr inbounds %struct.CLzmaEnc, ptr %1908, i32 0, i32 39
  %1910 = getelementptr inbounds %struct.CLenPriceEnc, ptr %1909, i32 0, i32 1
  %1911 = load i32, ptr %49, align 4
  %1912 = zext i32 %1911 to i64
  %1913 = getelementptr inbounds [16 x [272 x i32]], ptr %1910, i64 0, i64 %1912
  %1914 = load i32, ptr %98, align 4
  %1915 = sub i32 %1914, 2
  %1916 = zext i32 %1915 to i64
  %1917 = getelementptr inbounds [272 x i32], ptr %1913, i64 0, i64 %1916
  %1918 = load i32, ptr %1917, align 4
  %1919 = add i32 %1907, %1918
  store i32 %1919, ptr %100, align 4
  %1920 = load i32, ptr %98, align 4
  %1921 = icmp ult i32 %1920, 5
  br i1 %1921, label %1922, label %1925

1922:                                             ; preds = %1906
  %1923 = load i32, ptr %98, align 4
  %1924 = sub i32 %1923, 2
  br label %1926

1925:                                             ; preds = %1906
  br label %1926

1926:                                             ; preds = %1925, %1922
  %1927 = phi i32 [ %1924, %1922 ], [ 3, %1925 ]
  store i32 %1927, ptr %101, align 4
  %1928 = load i32, ptr %96, align 4
  %1929 = icmp ult i32 %1928, 128
  br i1 %1929, label %1930, label %1942

1930:                                             ; preds = %1926
  %1931 = load ptr, ptr %5, align 8
  %1932 = getelementptr inbounds %struct.CLzmaEnc, ptr %1931, i32 0, i32 20
  %1933 = load i32, ptr %101, align 4
  %1934 = zext i32 %1933 to i64
  %1935 = getelementptr inbounds [4 x [128 x i32]], ptr %1932, i64 0, i64 %1934
  %1936 = load i32, ptr %96, align 4
  %1937 = zext i32 %1936 to i64
  %1938 = getelementptr inbounds [128 x i32], ptr %1935, i64 0, i64 %1937
  %1939 = load i32, ptr %1938, align 4
  %1940 = load i32, ptr %100, align 4
  %1941 = add i32 %1940, %1939
  store i32 %1941, ptr %100, align 4
  br label %1962

1942:                                             ; preds = %1926
  %1943 = load ptr, ptr %5, align 8
  %1944 = getelementptr inbounds %struct.CLzmaEnc, ptr %1943, i32 0, i32 19
  %1945 = load i32, ptr %101, align 4
  %1946 = zext i32 %1945 to i64
  %1947 = getelementptr inbounds [4 x [64 x i32]], ptr %1944, i64 0, i64 %1946
  %1948 = load i32, ptr %97, align 4
  %1949 = zext i32 %1948 to i64
  %1950 = getelementptr inbounds [64 x i32], ptr %1947, i64 0, i64 %1949
  %1951 = load i32, ptr %1950, align 4
  %1952 = load ptr, ptr %5, align 8
  %1953 = getelementptr inbounds %struct.CLzmaEnc, ptr %1952, i32 0, i32 21
  %1954 = load i32, ptr %96, align 4
  %1955 = and i32 %1954, 15
  %1956 = zext i32 %1955 to i64
  %1957 = getelementptr inbounds [16 x i32], ptr %1953, i64 0, i64 %1956
  %1958 = load i32, ptr %1957, align 4
  %1959 = add i32 %1951, %1958
  %1960 = load i32, ptr %100, align 4
  %1961 = add i32 %1960, %1959
  store i32 %1961, ptr %100, align 4
  br label %1962

1962:                                             ; preds = %1942, %1930
  %1963 = load ptr, ptr %5, align 8
  %1964 = getelementptr inbounds %struct.CLzmaEnc, ptr %1963, i32 0, i32 11
  %1965 = load i32, ptr %16, align 4
  %1966 = load i32, ptr %98, align 4
  %1967 = add i32 %1965, %1966
  %1968 = zext i32 %1967 to i64
  %1969 = getelementptr inbounds [4096 x %struct.COptimal], ptr %1964, i64 0, i64 %1968
  store ptr %1969, ptr %102, align 8
  %1970 = load i32, ptr %100, align 4
  %1971 = load ptr, ptr %102, align 8
  %1972 = getelementptr inbounds %struct.COptimal, ptr %1971, i32 0, i32 0
  %1973 = load i32, ptr %1972, align 4
  %1974 = icmp ult i32 %1970, %1973
  br i1 %1974, label %1975, label %1988

1975:                                             ; preds = %1962
  %1976 = load i32, ptr %100, align 4
  %1977 = load ptr, ptr %102, align 8
  %1978 = getelementptr inbounds %struct.COptimal, ptr %1977, i32 0, i32 0
  store i32 %1976, ptr %1978, align 4
  %1979 = load i32, ptr %16, align 4
  %1980 = load ptr, ptr %102, align 8
  %1981 = getelementptr inbounds %struct.COptimal, ptr %1980, i32 0, i32 6
  store i32 %1979, ptr %1981, align 4
  %1982 = load i32, ptr %96, align 4
  %1983 = add i32 %1982, 4
  %1984 = load ptr, ptr %102, align 8
  %1985 = getelementptr inbounds %struct.COptimal, ptr %1984, i32 0, i32 7
  store i32 %1983, ptr %1985, align 4
  %1986 = load ptr, ptr %102, align 8
  %1987 = getelementptr inbounds %struct.COptimal, ptr %1986, i32 0, i32 2
  store i32 0, ptr %1987, align 4
  br label %1988

1988:                                             ; preds = %1975, %1962
  %1989 = load i32, ptr %98, align 4
  %1990 = load ptr, ptr %22, align 8
  %1991 = load i32, ptr %95, align 4
  %1992 = zext i32 %1991 to i64
  %1993 = getelementptr inbounds i32, ptr %1990, i64 %1992
  %1994 = load i32, ptr %1993, align 4
  %1995 = icmp eq i32 %1989, %1994
  br i1 %1995, label %1996, label %2264

1996:                                             ; preds = %1988
  %1997 = load ptr, ptr %58, align 8
  %1998 = load i32, ptr %96, align 4
  %1999 = add i32 %1998, 1
  %2000 = zext i32 %1999 to i64
  %2001 = sub i64 0, %2000
  %2002 = getelementptr inbounds i8, ptr %1997, i64 %2001
  store ptr %2002, ptr %103, align 8
  %2003 = load i32, ptr %98, align 4
  %2004 = add i32 %2003, 1
  store i32 %2004, ptr %104, align 4
  %2005 = load i32, ptr %104, align 4
  %2006 = load ptr, ptr %5, align 8
  %2007 = getelementptr inbounds %struct.CLzmaEnc, ptr %2006, i32 0, i32 15
  %2008 = load i32, ptr %2007, align 8
  %2009 = add i32 %2005, %2008
  store i32 %2009, ptr %105, align 4
  %2010 = load i32, ptr %105, align 4
  %2011 = load i32, ptr %44, align 4
  %2012 = icmp ugt i32 %2010, %2011
  br i1 %2012, label %2013, label %2015

2013:                                             ; preds = %1996
  %2014 = load i32, ptr %44, align 4
  store i32 %2014, ptr %105, align 4
  br label %2015

2015:                                             ; preds = %2013, %1996
  br label %2016

2016:                                             ; preds = %2037, %2015
  %2017 = load i32, ptr %104, align 4
  %2018 = load i32, ptr %105, align 4
  %2019 = icmp ult i32 %2017, %2018
  br i1 %2019, label %2020, label %2034

2020:                                             ; preds = %2016
  %2021 = load ptr, ptr %58, align 8
  %2022 = load i32, ptr %104, align 4
  %2023 = zext i32 %2022 to i64
  %2024 = getelementptr inbounds i8, ptr %2021, i64 %2023
  %2025 = load i8, ptr %2024, align 1
  %2026 = zext i8 %2025 to i32
  %2027 = load ptr, ptr %103, align 8
  %2028 = load i32, ptr %104, align 4
  %2029 = zext i32 %2028 to i64
  %2030 = getelementptr inbounds i8, ptr %2027, i64 %2029
  %2031 = load i8, ptr %2030, align 1
  %2032 = zext i8 %2031 to i32
  %2033 = icmp eq i32 %2026, %2032
  br label %2034

2034:                                             ; preds = %2020, %2016
  %2035 = phi i1 [ false, %2016 ], [ %2033, %2020 ]
  br i1 %2035, label %2036, label %2040

2036:                                             ; preds = %2034
  br label %2037

2037:                                             ; preds = %2036
  %2038 = load i32, ptr %104, align 4
  %2039 = add i32 %2038, 1
  store i32 %2039, ptr %104, align 4
  br label %2016, !llvm.loop !72

2040:                                             ; preds = %2034
  %2041 = load i32, ptr %98, align 4
  %2042 = add i32 %2041, 1
  %2043 = load i32, ptr %104, align 4
  %2044 = sub i32 %2043, %2042
  store i32 %2044, ptr %104, align 4
  %2045 = load i32, ptr %104, align 4
  %2046 = icmp uge i32 %2045, 2
  br i1 %2046, label %2047, label %2228

2047:                                             ; preds = %2040
  %2048 = load i32, ptr %48, align 4
  %2049 = zext i32 %2048 to i64
  %2050 = getelementptr inbounds [12 x i32], ptr @kMatchNextStates, i64 0, i64 %2049
  %2051 = load i32, ptr %2050, align 4
  store i32 %2051, ptr %107, align 4
  %2052 = load i32, ptr %6, align 4
  %2053 = load i32, ptr %98, align 4
  %2054 = add i32 %2052, %2053
  %2055 = load ptr, ptr %5, align 8
  %2056 = getelementptr inbounds %struct.CLzmaEnc, ptr %2055, i32 0, i32 28
  %2057 = load i32, ptr %2056, align 4
  %2058 = and i32 %2054, %2057
  store i32 %2058, ptr %108, align 4
  %2059 = load i32, ptr %100, align 4
  %2060 = load ptr, ptr %5, align 8
  %2061 = getelementptr inbounds %struct.CLzmaEnc, ptr %2060, i32 0, i32 13
  %2062 = load ptr, ptr %5, align 8
  %2063 = getelementptr inbounds %struct.CLzmaEnc, ptr %2062, i32 0, i32 30
  %2064 = load i32, ptr %107, align 4
  %2065 = zext i32 %2064 to i64
  %2066 = getelementptr inbounds [12 x [16 x i16]], ptr %2063, i64 0, i64 %2065
  %2067 = load i32, ptr %108, align 4
  %2068 = zext i32 %2067 to i64
  %2069 = getelementptr inbounds [16 x i16], ptr %2066, i64 0, i64 %2068
  %2070 = load i16, ptr %2069, align 2
  %2071 = zext i16 %2070 to i32
  %2072 = ashr i32 %2071, 4
  %2073 = sext i32 %2072 to i64
  %2074 = getelementptr inbounds [128 x i32], ptr %2061, i64 0, i64 %2073
  %2075 = load i32, ptr %2074, align 4
  %2076 = add i32 %2059, %2075
  %2077 = load ptr, ptr %5, align 8
  %2078 = getelementptr inbounds %struct.CLzmaEnc, ptr %2077, i32 0, i32 29
  %2079 = load ptr, ptr %2078, align 8
  %2080 = load i32, ptr %6, align 4
  %2081 = load i32, ptr %98, align 4
  %2082 = add i32 %2080, %2081
  %2083 = load ptr, ptr %5, align 8
  %2084 = getelementptr inbounds %struct.CLzmaEnc, ptr %2083, i32 0, i32 27
  %2085 = load i32, ptr %2084, align 8
  %2086 = and i32 %2082, %2085
  %2087 = load ptr, ptr %5, align 8
  %2088 = getelementptr inbounds %struct.CLzmaEnc, ptr %2087, i32 0, i32 24
  %2089 = load i32, ptr %2088, align 4
  %2090 = shl i32 %2086, %2089
  %2091 = load ptr, ptr %58, align 8
  %2092 = load i32, ptr %98, align 4
  %2093 = sub i32 %2092, 1
  %2094 = zext i32 %2093 to i64
  %2095 = getelementptr inbounds i8, ptr %2091, i64 %2094
  %2096 = load i8, ptr %2095, align 1
  %2097 = zext i8 %2096 to i32
  %2098 = load ptr, ptr %5, align 8
  %2099 = getelementptr inbounds %struct.CLzmaEnc, ptr %2098, i32 0, i32 24
  %2100 = load i32, ptr %2099, align 4
  %2101 = sub i32 8, %2100
  %2102 = ashr i32 %2097, %2101
  %2103 = add i32 %2090, %2102
  %2104 = mul i32 %2103, 768
  %2105 = zext i32 %2104 to i64
  %2106 = getelementptr inbounds i16, ptr %2079, i64 %2105
  %2107 = load ptr, ptr %58, align 8
  %2108 = load i32, ptr %98, align 4
  %2109 = zext i32 %2108 to i64
  %2110 = getelementptr inbounds i8, ptr %2107, i64 %2109
  %2111 = load i8, ptr %2110, align 1
  %2112 = zext i8 %2111 to i32
  %2113 = load ptr, ptr %103, align 8
  %2114 = load i32, ptr %98, align 4
  %2115 = zext i32 %2114 to i64
  %2116 = getelementptr inbounds i8, ptr %2113, i64 %2115
  %2117 = load i8, ptr %2116, align 1
  %2118 = zext i8 %2117 to i32
  %2119 = load ptr, ptr %5, align 8
  %2120 = getelementptr inbounds %struct.CLzmaEnc, ptr %2119, i32 0, i32 13
  %2121 = getelementptr inbounds [128 x i32], ptr %2120, i64 0, i64 0
  %2122 = call i32 @LitEnc_GetPriceMatched(ptr noundef %2106, i32 noundef %2112, i32 noundef %2118, ptr noundef %2121)
  %2123 = add i32 %2076, %2122
  store i32 %2123, ptr %109, align 4
  %2124 = load i32, ptr %107, align 4
  %2125 = zext i32 %2124 to i64
  %2126 = getelementptr inbounds [12 x i32], ptr @kLiteralNextStates, i64 0, i64 %2125
  %2127 = load i32, ptr %2126, align 4
  store i32 %2127, ptr %107, align 4
  %2128 = load i32, ptr %108, align 4
  %2129 = add i32 %2128, 1
  %2130 = load ptr, ptr %5, align 8
  %2131 = getelementptr inbounds %struct.CLzmaEnc, ptr %2130, i32 0, i32 28
  %2132 = load i32, ptr %2131, align 4
  %2133 = and i32 %2129, %2132
  store i32 %2133, ptr %108, align 4
  %2134 = load i32, ptr %109, align 4
  %2135 = load ptr, ptr %5, align 8
  %2136 = getelementptr inbounds %struct.CLzmaEnc, ptr %2135, i32 0, i32 13
  %2137 = load ptr, ptr %5, align 8
  %2138 = getelementptr inbounds %struct.CLzmaEnc, ptr %2137, i32 0, i32 30
  %2139 = load i32, ptr %107, align 4
  %2140 = zext i32 %2139 to i64
  %2141 = getelementptr inbounds [12 x [16 x i16]], ptr %2138, i64 0, i64 %2140
  %2142 = load i32, ptr %108, align 4
  %2143 = zext i32 %2142 to i64
  %2144 = getelementptr inbounds [16 x i16], ptr %2141, i64 0, i64 %2143
  %2145 = load i16, ptr %2144, align 2
  %2146 = zext i16 %2145 to i32
  %2147 = xor i32 %2146, 2047
  %2148 = ashr i32 %2147, 4
  %2149 = sext i32 %2148 to i64
  %2150 = getelementptr inbounds [128 x i32], ptr %2136, i64 0, i64 %2149
  %2151 = load i32, ptr %2150, align 4
  %2152 = add i32 %2134, %2151
  %2153 = load ptr, ptr %5, align 8
  %2154 = getelementptr inbounds %struct.CLzmaEnc, ptr %2153, i32 0, i32 13
  %2155 = load ptr, ptr %5, align 8
  %2156 = getelementptr inbounds %struct.CLzmaEnc, ptr %2155, i32 0, i32 31
  %2157 = load i32, ptr %107, align 4
  %2158 = zext i32 %2157 to i64
  %2159 = getelementptr inbounds [12 x i16], ptr %2156, i64 0, i64 %2158
  %2160 = load i16, ptr %2159, align 2
  %2161 = zext i16 %2160 to i32
  %2162 = xor i32 %2161, 2047
  %2163 = ashr i32 %2162, 4
  %2164 = sext i32 %2163 to i64
  %2165 = getelementptr inbounds [128 x i32], ptr %2154, i64 0, i64 %2164
  %2166 = load i32, ptr %2165, align 4
  %2167 = add i32 %2152, %2166
  store i32 %2167, ptr %106, align 4
  %2168 = load i32, ptr %16, align 4
  %2169 = load i32, ptr %98, align 4
  %2170 = add i32 %2168, %2169
  %2171 = add i32 %2170, 1
  %2172 = load i32, ptr %104, align 4
  %2173 = add i32 %2171, %2172
  store i32 %2173, ptr %110, align 4
  br label %2174

2174:                                             ; preds = %2178, %2047
  %2175 = load i32, ptr %14, align 4
  %2176 = load i32, ptr %110, align 4
  %2177 = icmp ult i32 %2175, %2176
  br i1 %2177, label %2178, label %2186

2178:                                             ; preds = %2174
  %2179 = load ptr, ptr %5, align 8
  %2180 = getelementptr inbounds %struct.CLzmaEnc, ptr %2179, i32 0, i32 11
  %2181 = load i32, ptr %14, align 4
  %2182 = add i32 %2181, 1
  store i32 %2182, ptr %14, align 4
  %2183 = zext i32 %2182 to i64
  %2184 = getelementptr inbounds [4096 x %struct.COptimal], ptr %2180, i64 0, i64 %2183
  %2185 = getelementptr inbounds %struct.COptimal, ptr %2184, i32 0, i32 0
  store i32 1073741824, ptr %2185, align 4
  br label %2174, !llvm.loop !73

2186:                                             ; preds = %2174
  %2187 = load i32, ptr %106, align 4
  %2188 = load ptr, ptr %5, align 8
  %2189 = load i32, ptr %104, align 4
  %2190 = load i32, ptr %107, align 4
  %2191 = load i32, ptr %108, align 4
  %2192 = call i32 @GetRepPrice(ptr noundef %2188, i32 noundef 0, i32 noundef %2189, i32 noundef %2190, i32 noundef %2191)
  %2193 = add i32 %2187, %2192
  store i32 %2193, ptr %111, align 4
  %2194 = load ptr, ptr %5, align 8
  %2195 = getelementptr inbounds %struct.CLzmaEnc, ptr %2194, i32 0, i32 11
  %2196 = load i32, ptr %110, align 4
  %2197 = zext i32 %2196 to i64
  %2198 = getelementptr inbounds [4096 x %struct.COptimal], ptr %2195, i64 0, i64 %2197
  store ptr %2198, ptr %112, align 8
  %2199 = load i32, ptr %111, align 4
  %2200 = load ptr, ptr %112, align 8
  %2201 = getelementptr inbounds %struct.COptimal, ptr %2200, i32 0, i32 0
  %2202 = load i32, ptr %2201, align 4
  %2203 = icmp ult i32 %2199, %2202
  br i1 %2203, label %2204, label %2227

2204:                                             ; preds = %2186
  %2205 = load i32, ptr %111, align 4
  %2206 = load ptr, ptr %112, align 8
  %2207 = getelementptr inbounds %struct.COptimal, ptr %2206, i32 0, i32 0
  store i32 %2205, ptr %2207, align 4
  %2208 = load i32, ptr %16, align 4
  %2209 = load i32, ptr %98, align 4
  %2210 = add i32 %2208, %2209
  %2211 = add i32 %2210, 1
  %2212 = load ptr, ptr %112, align 8
  %2213 = getelementptr inbounds %struct.COptimal, ptr %2212, i32 0, i32 6
  store i32 %2211, ptr %2213, align 4
  %2214 = load ptr, ptr %112, align 8
  %2215 = getelementptr inbounds %struct.COptimal, ptr %2214, i32 0, i32 7
  store i32 0, ptr %2215, align 4
  %2216 = load ptr, ptr %112, align 8
  %2217 = getelementptr inbounds %struct.COptimal, ptr %2216, i32 0, i32 2
  store i32 1, ptr %2217, align 4
  %2218 = load ptr, ptr %112, align 8
  %2219 = getelementptr inbounds %struct.COptimal, ptr %2218, i32 0, i32 3
  store i32 1, ptr %2219, align 4
  %2220 = load i32, ptr %16, align 4
  %2221 = load ptr, ptr %112, align 8
  %2222 = getelementptr inbounds %struct.COptimal, ptr %2221, i32 0, i32 4
  store i32 %2220, ptr %2222, align 4
  %2223 = load i32, ptr %96, align 4
  %2224 = add i32 %2223, 4
  %2225 = load ptr, ptr %112, align 8
  %2226 = getelementptr inbounds %struct.COptimal, ptr %2225, i32 0, i32 5
  store i32 %2224, ptr %2226, align 4
  br label %2227

2227:                                             ; preds = %2204, %2186
  br label %2228

2228:                                             ; preds = %2227, %2040
  %2229 = load i32, ptr %95, align 4
  %2230 = add i32 %2229, 2
  store i32 %2230, ptr %95, align 4
  %2231 = load i32, ptr %95, align 4
  %2232 = load i32, ptr %46, align 4
  %2233 = icmp eq i32 %2231, %2232
  br i1 %2233, label %2234, label %2235

2234:                                             ; preds = %2228
  br label %2268

2235:                                             ; preds = %2228
  %2236 = load ptr, ptr %22, align 8
  %2237 = load i32, ptr %95, align 4
  %2238 = add i32 %2237, 1
  %2239 = zext i32 %2238 to i64
  %2240 = getelementptr inbounds i32, ptr %2236, i64 %2239
  %2241 = load i32, ptr %2240, align 4
  store i32 %2241, ptr %96, align 4
  %2242 = load i32, ptr %96, align 4
  %2243 = icmp uge i32 %2242, 128
  br i1 %2243, label %2244, label %2263

2244:                                             ; preds = %2235
  %2245 = load i32, ptr %96, align 4
  %2246 = sub i32 524287, %2245
  %2247 = lshr i32 %2246, 31
  %2248 = sub i32 0, %2247
  %2249 = and i32 12, %2248
  %2250 = add i32 6, %2249
  store i32 %2250, ptr %113, align 4
  %2251 = load ptr, ptr %5, align 8
  %2252 = getelementptr inbounds %struct.CLzmaEnc, ptr %2251, i32 0, i32 12
  %2253 = load i32, ptr %96, align 4
  %2254 = load i32, ptr %113, align 4
  %2255 = lshr i32 %2253, %2254
  %2256 = zext i32 %2255 to i64
  %2257 = getelementptr inbounds [8192 x i8], ptr %2252, i64 0, i64 %2256
  %2258 = load i8, ptr %2257, align 1
  %2259 = zext i8 %2258 to i32
  %2260 = load i32, ptr %113, align 4
  %2261 = mul i32 %2260, 2
  %2262 = add i32 %2259, %2261
  store i32 %2262, ptr %97, align 4
  br label %2263

2263:                                             ; preds = %2244, %2235
  br label %2264

2264:                                             ; preds = %2263, %1988
  br label %2265

2265:                                             ; preds = %2264
  %2266 = load i32, ptr %98, align 4
  %2267 = add i32 %2266, 1
  store i32 %2267, ptr %98, align 4
  br label %1906

2268:                                             ; preds = %2234
  br label %2269

2269:                                             ; preds = %2268, %1834
  br label %805

2270:                                             ; preds = %824, %811, %527, %341, %303, %283, %171, %121
  %2271 = load i32, ptr %4, align 4
  ret i32 %2271
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LitEnc_EncodeMatched(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  store i32 256, ptr %9, align 4
  %10 = load i32, ptr %7, align 4
  %11 = or i32 %10, 256
  store i32 %11, ptr %7, align 4
  br label %12

12:                                               ; preds = %38, %4
  %13 = load i32, ptr %8, align 4
  %14 = shl i32 %13, 1
  store i32 %14, ptr %8, align 4
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load i32, ptr %9, align 4
  %18 = load i32, ptr %8, align 4
  %19 = load i32, ptr %9, align 4
  %20 = and i32 %18, %19
  %21 = add i32 %17, %20
  %22 = load i32, ptr %7, align 4
  %23 = lshr i32 %22, 8
  %24 = add i32 %21, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %16, i64 %25
  %27 = load i32, ptr %7, align 4
  %28 = lshr i32 %27, 7
  %29 = and i32 %28, 1
  call void @RangeEnc_EncodeBit(ptr noundef %15, ptr noundef %26, i32 noundef %29)
  %30 = load i32, ptr %7, align 4
  %31 = shl i32 %30, 1
  store i32 %31, ptr %7, align 4
  %32 = load i32, ptr %8, align 4
  %33 = load i32, ptr %7, align 4
  %34 = xor i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, ptr %9, align 4
  %37 = and i32 %36, %35
  store i32 %37, ptr %9, align 4
  br label %38

38:                                               ; preds = %12
  %39 = load i32, ptr %7, align 4
  %40 = icmp ult i32 %39, 65536
  br i1 %40, label %12, label %41, !llvm.loop !74

41:                                               ; preds = %38
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LenEnc_Encode2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store i32 %2, ptr %9, align 4
  store i32 %3, ptr %10, align 4
  store i32 %4, ptr %11, align 4
  store ptr %5, ptr %12, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = getelementptr inbounds %struct.CLenPriceEnc, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %8, align 8
  %16 = load i32, ptr %9, align 4
  %17 = load i32, ptr %10, align 4
  call void @LenEnc_Encode(ptr noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef %17)
  %18 = load i32, ptr %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %6
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds %struct.CLenPriceEnc, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [16 x i32], ptr %22, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  store i32 %27, ptr %25, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load ptr, ptr %7, align 8
  %31 = load i32, ptr %10, align 4
  %32 = load ptr, ptr %12, align 8
  call void @LenPriceEnc_UpdateTable(ptr noundef %30, i32 noundef %31, ptr noundef %32)
  br label %33

33:                                               ; preds = %29, %20
  br label %34

34:                                               ; preds = %33, %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RcTree_Encode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  store i32 1, ptr %9, align 4
  %12 = load i32, ptr %7, align 4
  store i32 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %16, %4
  %14 = load i32, ptr %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i32, ptr %10, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, ptr %10, align 4
  %19 = load i32, ptr %8, align 4
  %20 = load i32, ptr %10, align 4
  %21 = lshr i32 %19, %20
  %22 = and i32 %21, 1
  store i32 %22, ptr %11, align 4
  %23 = load ptr, ptr %5, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = load i32, ptr %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i16, ptr %24, i64 %26
  %28 = load i32, ptr %11, align 4
  call void @RangeEnc_EncodeBit(ptr noundef %23, ptr noundef %27, i32 noundef %28)
  %29 = load i32, ptr %9, align 4
  %30 = shl i32 %29, 1
  %31 = load i32, ptr %11, align 4
  %32 = or i32 %30, %31
  store i32 %32, ptr %9, align 4
  br label %13, !llvm.loop !75

33:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RcTree_ReverseEncode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  store i32 1, ptr %9, align 4
  store i32 0, ptr %10, align 4
  br label %12

12:                                               ; preds = %31, %4
  %13 = load i32, ptr %10, align 4
  %14 = load i32, ptr %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i32, ptr %8, align 4
  %18 = and i32 %17, 1
  store i32 %18, ptr %11, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = load i32, ptr %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i16, ptr %20, i64 %22
  %24 = load i32, ptr %11, align 4
  call void @RangeEnc_EncodeBit(ptr noundef %19, ptr noundef %23, i32 noundef %24)
  %25 = load i32, ptr %9, align 4
  %26 = shl i32 %25, 1
  %27 = load i32, ptr %11, align 4
  %28 = or i32 %26, %27
  store i32 %28, ptr %9, align 4
  %29 = load i32, ptr %8, align 4
  %30 = lshr i32 %29, 1
  store i32 %30, ptr %8, align 4
  br label %31

31:                                               ; preds = %16
  %32 = load i32, ptr %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %10, align 4
  br label %12, !llvm.loop !76

34:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RangeEnc_EncodeDirectBits(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  br label %7

7:                                                ; preds = %38, %3
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.CRangeEnc, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 1
  store i32 %11, ptr %9, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.CRangeEnc, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8
  %15 = load i32, ptr %5, align 4
  %16 = load i32, ptr %6, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %6, align 4
  %18 = lshr i32 %15, %17
  %19 = and i32 %18, 1
  %20 = sub i32 0, %19
  %21 = and i32 %14, %20
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.CRangeEnc, ptr %23, i32 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = add i64 %25, %22
  store i64 %26, ptr %24, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds %struct.CRangeEnc, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8
  %30 = icmp ult i32 %29, 16777216
  br i1 %30, label %31, label %37

31:                                               ; preds = %7
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.CRangeEnc, ptr %32, i32 0, i32 0
  %34 = load i32, ptr %33, align 8
  %35 = shl i32 %34, 8
  store i32 %35, ptr %33, align 8
  %36 = load ptr, ptr %4, align 8
  call void @RangeEnc_ShiftLow(ptr noundef %36)
  br label %37

37:                                               ; preds = %31, %7
  br label %38

38:                                               ; preds = %37
  %39 = load i32, ptr %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %7, label %41, !llvm.loop !77

41:                                               ; preds = %38
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WriteEndMarker(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.CLzmaEnc, ptr %6, i32 0, i32 43
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.CLzmaEnc, ptr %8, i32 0, i32 30
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.CLzmaEnc, ptr %10, i32 0, i32 18
  %12 = load i32, ptr %11, align 8
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [12 x [16 x i16]], ptr %9, i64 0, i64 %13
  %15 = load i32, ptr %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [16 x i16], ptr %14, i64 0, i64 %16
  call void @RangeEnc_EncodeBit(ptr noundef %7, ptr noundef %17, i32 noundef 1)
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.CLzmaEnc, ptr %18, i32 0, i32 43
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct.CLzmaEnc, ptr %20, i32 0, i32 31
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.CLzmaEnc, ptr %22, i32 0, i32 18
  %24 = load i32, ptr %23, align 8
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [12 x i16], ptr %21, i64 0, i64 %25
  call void @RangeEnc_EncodeBit(ptr noundef %19, ptr noundef %26, i32 noundef 0)
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.CLzmaEnc, ptr %27, i32 0, i32 18
  %29 = load i32, ptr %28, align 8
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [12 x i32], ptr @kMatchNextStates, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.CLzmaEnc, ptr %33, i32 0, i32 18
  store i32 %32, ptr %34, align 8
  store i32 2, ptr %5, align 4
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.CLzmaEnc, ptr %35, i32 0, i32 39
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.CLzmaEnc, ptr %37, i32 0, i32 43
  %39 = load i32, ptr %5, align 4
  %40 = sub i32 %39, 2
  %41 = load i32, ptr %4, align 4
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr inbounds %struct.CLzmaEnc, ptr %42, i32 0, i32 42
  %44 = load i32, ptr %43, align 8
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.CLzmaEnc, ptr %48, i32 0, i32 13
  %50 = getelementptr inbounds [128 x i32], ptr %49, i64 0, i64 0
  call void @LenEnc_Encode2(ptr noundef %36, ptr noundef %38, i32 noundef %40, i32 noundef %41, i32 noundef %47, ptr noundef %50)
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.CLzmaEnc, ptr %51, i32 0, i32 43
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.CLzmaEnc, ptr %53, i32 0, i32 36
  %55 = load i32, ptr %5, align 4
  %56 = icmp ult i32 %55, 5
  br i1 %56, label %57, label %60

57:                                               ; preds = %2
  %58 = load i32, ptr %5, align 4
  %59 = sub i32 %58, 2
  br label %61

60:                                               ; preds = %2
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %59, %57 ], [ 3, %60 ]
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [4 x [64 x i16]], ptr %54, i64 0, i64 %63
  %65 = getelementptr inbounds [64 x i16], ptr %64, i64 0, i64 0
  call void @RcTree_Encode(ptr noundef %52, ptr noundef %65, i32 noundef 6, i32 noundef 63)
  %66 = load ptr, ptr %3, align 8
  %67 = getelementptr inbounds %struct.CLzmaEnc, ptr %66, i32 0, i32 43
  call void @RangeEnc_EncodeDirectBits(ptr noundef %67, i32 noundef 67108863, i32 noundef 26)
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds %struct.CLzmaEnc, ptr %68, i32 0, i32 43
  %70 = load ptr, ptr %3, align 8
  %71 = getelementptr inbounds %struct.CLzmaEnc, ptr %70, i32 0, i32 38
  %72 = getelementptr inbounds [16 x i16], ptr %71, i64 0, i64 0
  call void @RcTree_ReverseEncode(ptr noundef %69, ptr noundef %72, i32 noundef 4, i32 noundef 15)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RangeEnc_FlushData(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %9, %1
  %5 = load i32, ptr %3, align 4
  %6 = icmp slt i32 %5, 5
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8
  call void @RangeEnc_ShiftLow(ptr noundef %8)
  br label %9

9:                                                ; preds = %7
  %10 = load i32, ptr %3, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %3, align 4
  br label %4, !llvm.loop !78

12:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RangeEnc_FlushStream(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.CRangeEnc, ptr %4, i32 0, i32 9
  %6 = load i32, ptr %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %48

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.CRangeEnc, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.CRangeEnc, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %12 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  store i64 %18, ptr %3, align 8
  %19 = load i64, ptr %3, align 8
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.CRangeEnc, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.ISeqOutStream, ptr %22, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.CRangeEnc, ptr %25, i32 0, i32 7
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.CRangeEnc, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 8
  %31 = load i64, ptr %3, align 8
  %32 = call i64 %24(ptr noundef %27, ptr noundef %30, i64 noundef %31)
  %33 = icmp ne i64 %19, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %9
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct.CRangeEnc, ptr %35, i32 0, i32 9
  store i32 9, ptr %36, align 8
  br label %37

37:                                               ; preds = %34, %9
  %38 = load i64, ptr %3, align 8
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.CRangeEnc, ptr %39, i32 0, i32 8
  %41 = load i64, ptr %40, align 8
  %42 = add i64 %41, %38
  store i64 %42, ptr %40, align 8
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.CRangeEnc, ptr %43, i32 0, i32 6
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.CRangeEnc, ptr %46, i32 0, i32 4
  store ptr %45, ptr %47, align 8
  br label %48

48:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RangeEnc_ShiftLow(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.CRangeEnc, ptr %5, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp ult i32 %8, -16777216
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.CRangeEnc, ptr %11, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = lshr i64 %13, 32
  %15 = trunc i64 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %10, %1
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.CRangeEnc, ptr %18, i32 0, i32 1
  %20 = load i8, ptr %19, align 4
  store i8 %20, ptr %3, align 1
  br label %21

21:                                               ; preds = %48, %17
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.CRangeEnc, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr %4, align 8
  %25 = load i8, ptr %3, align 1
  %26 = zext i8 %25 to i32
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.CRangeEnc, ptr %27, i32 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = lshr i64 %29, 32
  %31 = trunc i64 %30 to i8
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %26, %32
  %34 = trunc i32 %33 to i8
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %36, ptr %4, align 8
  store i8 %34, ptr %35, align 1
  %37 = load ptr, ptr %4, align 8
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.CRangeEnc, ptr %38, i32 0, i32 4
  store ptr %37, ptr %39, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr inbounds %struct.CRangeEnc, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %21
  %46 = load ptr, ptr %2, align 8
  call void @RangeEnc_FlushStream(ptr noundef %46)
  br label %47

47:                                               ; preds = %45, %21
  store i8 -1, ptr %3, align 1
  br label %48

48:                                               ; preds = %47
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.CRangeEnc, ptr %49, i32 0, i32 3
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %51, -1
  store i64 %52, ptr %50, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %21, label %54, !llvm.loop !79

54:                                               ; preds = %48
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr inbounds %struct.CRangeEnc, ptr %55, i32 0, i32 2
  %57 = load i64, ptr %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = lshr i32 %58, 24
  %60 = trunc i32 %59 to i8
  %61 = load ptr, ptr %2, align 8
  %62 = getelementptr inbounds %struct.CRangeEnc, ptr %61, i32 0, i32 1
  store i8 %60, ptr %62, align 4
  br label %63

63:                                               ; preds = %54, %10
  %64 = load ptr, ptr %2, align 8
  %65 = getelementptr inbounds %struct.CRangeEnc, ptr %64, i32 0, i32 3
  %66 = load i64, ptr %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, ptr %65, align 8
  %68 = load ptr, ptr %2, align 8
  %69 = getelementptr inbounds %struct.CRangeEnc, ptr %68, i32 0, i32 2
  %70 = load i64, ptr %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = shl i32 %71, 8
  %73 = zext i32 %72 to i64
  %74 = load ptr, ptr %2, align 8
  %75 = getelementptr inbounds %struct.CRangeEnc, ptr %74, i32 0, i32 2
  store i64 %73, ptr %75, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MovePos(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.CLzmaEnc, ptr %9, i32 0, i32 16
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %8
  store i32 %12, ptr %10, align 4
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.CLzmaEnc, ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct._IMatchFinder, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.CLzmaEnc, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = load i32, ptr %4, align 4
  call void %16(ptr noundef %19, i32 noundef %20)
  br label %21

21:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LitEnc_GetPriceMatched(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  store i32 0, ptr %9, align 4
  store i32 256, ptr %10, align 4
  %11 = load i32, ptr %6, align 4
  %12 = or i32 %11, 256
  store i32 %12, ptr %6, align 4
  br label %13

13:                                               ; preds = %50, %4
  %14 = load i32, ptr %7, align 4
  %15 = shl i32 %14, 1
  store i32 %15, ptr %7, align 4
  %16 = load ptr, ptr %8, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = load i32, ptr %10, align 4
  %19 = load i32, ptr %7, align 4
  %20 = load i32, ptr %10, align 4
  %21 = and i32 %19, %20
  %22 = add i32 %18, %21
  %23 = load i32, ptr %6, align 4
  %24 = lshr i32 %23, 8
  %25 = add i32 %22, %24
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i16, ptr %17, i64 %26
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = load i32, ptr %6, align 4
  %31 = lshr i32 %30, 7
  %32 = and i32 %31, 1
  %33 = sub nsw i32 0, %32
  %34 = and i32 %33, 2047
  %35 = xor i32 %29, %34
  %36 = ashr i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %16, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %9, align 4
  %41 = add i32 %40, %39
  store i32 %41, ptr %9, align 4
  %42 = load i32, ptr %6, align 4
  %43 = shl i32 %42, 1
  store i32 %43, ptr %6, align 4
  %44 = load i32, ptr %7, align 4
  %45 = load i32, ptr %6, align 4
  %46 = xor i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, ptr %10, align 4
  %49 = and i32 %48, %47
  store i32 %49, ptr %10, align 4
  br label %50

50:                                               ; preds = %13
  %51 = load i32, ptr %6, align 4
  %52 = icmp ult i32 %51, 65536
  br i1 %52, label %13, label %53, !llvm.loop !80

53:                                               ; preds = %50
  %54 = load i32, ptr %9, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LitEnc_GetPrice(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  store i32 0, ptr %7, align 4
  %8 = load i32, ptr %5, align 4
  %9 = or i32 %8, 256
  store i32 %9, ptr %5, align 4
  br label %10

10:                                               ; preds = %33, %3
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %5, align 4
  %14 = lshr i32 %13, 8
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr %12, i64 %15
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = load i32, ptr %5, align 4
  %20 = lshr i32 %19, 7
  %21 = and i32 %20, 1
  %22 = sub nsw i32 0, %21
  %23 = and i32 %22, 2047
  %24 = xor i32 %18, %23
  %25 = ashr i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %11, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %7, align 4
  %30 = add i32 %29, %28
  store i32 %30, ptr %7, align 4
  %31 = load i32, ptr %5, align 4
  %32 = shl i32 %31, 1
  store i32 %32, ptr %5, align 4
  br label %33

33:                                               ; preds = %10
  %34 = load i32, ptr %5, align 4
  %35 = icmp ult i32 %34, 65536
  br i1 %35, label %10, label %36, !llvm.loop !81

36:                                               ; preds = %33
  %37 = load i32, ptr %7, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetRepLen1Price(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.CLzmaEnc, ptr %9, i32 0, i32 32
  %11 = load i32, ptr %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [12 x i16], ptr %10, i64 0, i64 %12
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = ashr i32 %15, 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [128 x i32], ptr %8, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.CLzmaEnc, ptr %20, i32 0, i32 13
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.CLzmaEnc, ptr %22, i32 0, i32 35
  %24 = load i32, ptr %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [12 x [16 x i16]], ptr %23, i64 0, i64 %25
  %27 = load i32, ptr %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [16 x i16], ptr %26, i64 0, i64 %28
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = ashr i32 %31, 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [128 x i32], ptr %21, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %19, %35
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetPureRepPrice(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %10 = load i32, ptr %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.CLzmaEnc, ptr %13, i32 0, i32 13
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.CLzmaEnc, ptr %15, i32 0, i32 32
  %17 = load i32, ptr %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [12 x i16], ptr %16, i64 0, i64 %18
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = ashr i32 %21, 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [128 x i32], ptr %14, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %9, align 4
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.CLzmaEnc, ptr %26, i32 0, i32 13
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds %struct.CLzmaEnc, ptr %28, i32 0, i32 35
  %30 = load i32, ptr %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [12 x [16 x i16]], ptr %29, i64 0, i64 %31
  %33 = load i32, ptr %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [16 x i16], ptr %32, i64 0, i64 %34
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = xor i32 %37, 2047
  %39 = ashr i32 %38, 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [128 x i32], ptr %27, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %9, align 4
  %44 = add i32 %43, %42
  store i32 %44, ptr %9, align 4
  br label %116

45:                                               ; preds = %4
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds %struct.CLzmaEnc, ptr %46, i32 0, i32 13
  %48 = load ptr, ptr %5, align 8
  %49 = getelementptr inbounds %struct.CLzmaEnc, ptr %48, i32 0, i32 32
  %50 = load i32, ptr %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [12 x i16], ptr %49, i64 0, i64 %51
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  %55 = xor i32 %54, 2047
  %56 = ashr i32 %55, 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [128 x i32], ptr %47, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4
  store i32 %59, ptr %9, align 4
  %60 = load i32, ptr %6, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %78

62:                                               ; preds = %45
  %63 = load ptr, ptr %5, align 8
  %64 = getelementptr inbounds %struct.CLzmaEnc, ptr %63, i32 0, i32 13
  %65 = load ptr, ptr %5, align 8
  %66 = getelementptr inbounds %struct.CLzmaEnc, ptr %65, i32 0, i32 33
  %67 = load i32, ptr %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [12 x i16], ptr %66, i64 0, i64 %68
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = ashr i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [128 x i32], ptr %64, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %9, align 4
  %77 = add i32 %76, %75
  store i32 %77, ptr %9, align 4
  br label %115

78:                                               ; preds = %45
  %79 = load ptr, ptr %5, align 8
  %80 = getelementptr inbounds %struct.CLzmaEnc, ptr %79, i32 0, i32 13
  %81 = load ptr, ptr %5, align 8
  %82 = getelementptr inbounds %struct.CLzmaEnc, ptr %81, i32 0, i32 33
  %83 = load i32, ptr %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [12 x i16], ptr %82, i64 0, i64 %84
  %86 = load i16, ptr %85, align 2
  %87 = zext i16 %86 to i32
  %88 = xor i32 %87, 2047
  %89 = ashr i32 %88, 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [128 x i32], ptr %80, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4
  %93 = load i32, ptr %9, align 4
  %94 = add i32 %93, %92
  store i32 %94, ptr %9, align 4
  %95 = load ptr, ptr %5, align 8
  %96 = getelementptr inbounds %struct.CLzmaEnc, ptr %95, i32 0, i32 13
  %97 = load ptr, ptr %5, align 8
  %98 = getelementptr inbounds %struct.CLzmaEnc, ptr %97, i32 0, i32 34
  %99 = load i32, ptr %7, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [12 x i16], ptr %98, i64 0, i64 %100
  %102 = load i16, ptr %101, align 2
  %103 = zext i16 %102 to i32
  %104 = load i32, ptr %6, align 4
  %105 = sub i32 %104, 2
  %106 = sub nsw i32 0, %105
  %107 = and i32 %106, 2047
  %108 = xor i32 %103, %107
  %109 = ashr i32 %108, 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [128 x i32], ptr %96, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4
  %113 = load i32, ptr %9, align 4
  %114 = add i32 %113, %112
  store i32 %114, ptr %9, align 4
  br label %115

115:                                              ; preds = %78, %62
  br label %116

116:                                              ; preds = %115, %12
  %117 = load i32, ptr %9, align 4
  ret i32 %117
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Backward(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.CLzmaEnc, ptr %11, i32 0, i32 11
  %13 = load i32, ptr %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [4096 x %struct.COptimal], ptr %12, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.COptimal, ptr %15, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %7, align 4
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.CLzmaEnc, ptr %18, i32 0, i32 11
  %20 = load i32, ptr %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [4096 x %struct.COptimal], ptr %19, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.COptimal, ptr %22, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %8, align 4
  %25 = load i32, ptr %6, align 4
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.CLzmaEnc, ptr %26, i32 0, i32 6
  store i32 %25, ptr %27, align 8
  br label %28

28:                                               ; preds = %135, %3
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.CLzmaEnc, ptr %29, i32 0, i32 11
  %31 = load i32, ptr %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [4096 x %struct.COptimal], ptr %30, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.COptimal, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %103

37:                                               ; preds = %28
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.CLzmaEnc, ptr %38, i32 0, i32 11
  %40 = load i32, ptr %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [4096 x %struct.COptimal], ptr %39, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.COptimal, ptr %42, i32 0, i32 7
  store i32 -1, ptr %43, align 4
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds %struct.CLzmaEnc, ptr %44, i32 0, i32 11
  %46 = load i32, ptr %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [4096 x %struct.COptimal], ptr %45, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.COptimal, ptr %48, i32 0, i32 2
  store i32 0, ptr %49, align 4
  %50 = load i32, ptr %7, align 4
  %51 = sub i32 %50, 1
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds %struct.CLzmaEnc, ptr %52, i32 0, i32 11
  %54 = load i32, ptr %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [4096 x %struct.COptimal], ptr %53, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.COptimal, ptr %56, i32 0, i32 6
  store i32 %51, ptr %57, align 4
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.CLzmaEnc, ptr %58, i32 0, i32 11
  %60 = load i32, ptr %6, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [4096 x %struct.COptimal], ptr %59, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.COptimal, ptr %62, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %102

66:                                               ; preds = %37
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr inbounds %struct.CLzmaEnc, ptr %67, i32 0, i32 11
  %69 = load i32, ptr %7, align 4
  %70 = sub i32 %69, 1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [4096 x %struct.COptimal], ptr %68, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.COptimal, ptr %72, i32 0, i32 2
  store i32 0, ptr %73, align 4
  %74 = load ptr, ptr %4, align 8
  %75 = getelementptr inbounds %struct.CLzmaEnc, ptr %74, i32 0, i32 11
  %76 = load i32, ptr %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [4096 x %struct.COptimal], ptr %75, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.COptimal, ptr %78, i32 0, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %4, align 8
  %82 = getelementptr inbounds %struct.CLzmaEnc, ptr %81, i32 0, i32 11
  %83 = load i32, ptr %7, align 4
  %84 = sub i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [4096 x %struct.COptimal], ptr %82, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.COptimal, ptr %86, i32 0, i32 6
  store i32 %80, ptr %87, align 4
  %88 = load ptr, ptr %4, align 8
  %89 = getelementptr inbounds %struct.CLzmaEnc, ptr %88, i32 0, i32 11
  %90 = load i32, ptr %6, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [4096 x %struct.COptimal], ptr %89, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.COptimal, ptr %92, i32 0, i32 5
  %94 = load i32, ptr %93, align 4
  %95 = load ptr, ptr %4, align 8
  %96 = getelementptr inbounds %struct.CLzmaEnc, ptr %95, i32 0, i32 11
  %97 = load i32, ptr %7, align 4
  %98 = sub i32 %97, 1
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [4096 x %struct.COptimal], ptr %96, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.COptimal, ptr %100, i32 0, i32 7
  store i32 %94, ptr %101, align 4
  br label %102

102:                                              ; preds = %66, %37
  br label %103

103:                                              ; preds = %102, %28
  %104 = load i32, ptr %7, align 4
  store i32 %104, ptr %9, align 4
  %105 = load i32, ptr %8, align 4
  store i32 %105, ptr %10, align 4
  %106 = load ptr, ptr %4, align 8
  %107 = getelementptr inbounds %struct.CLzmaEnc, ptr %106, i32 0, i32 11
  %108 = load i32, ptr %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [4096 x %struct.COptimal], ptr %107, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.COptimal, ptr %110, i32 0, i32 7
  %112 = load i32, ptr %111, align 4
  store i32 %112, ptr %8, align 4
  %113 = load ptr, ptr %4, align 8
  %114 = getelementptr inbounds %struct.CLzmaEnc, ptr %113, i32 0, i32 11
  %115 = load i32, ptr %9, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [4096 x %struct.COptimal], ptr %114, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.COptimal, ptr %117, i32 0, i32 6
  %119 = load i32, ptr %118, align 4
  store i32 %119, ptr %7, align 4
  %120 = load i32, ptr %10, align 4
  %121 = load ptr, ptr %4, align 8
  %122 = getelementptr inbounds %struct.CLzmaEnc, ptr %121, i32 0, i32 11
  %123 = load i32, ptr %9, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [4096 x %struct.COptimal], ptr %122, i64 0, i64 %124
  %126 = getelementptr inbounds %struct.COptimal, ptr %125, i32 0, i32 7
  store i32 %120, ptr %126, align 4
  %127 = load i32, ptr %6, align 4
  %128 = load ptr, ptr %4, align 8
  %129 = getelementptr inbounds %struct.CLzmaEnc, ptr %128, i32 0, i32 11
  %130 = load i32, ptr %9, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds [4096 x %struct.COptimal], ptr %129, i64 0, i64 %131
  %133 = getelementptr inbounds %struct.COptimal, ptr %132, i32 0, i32 6
  store i32 %127, ptr %133, align 4
  %134 = load i32, ptr %9, align 4
  store i32 %134, ptr %6, align 4
  br label %135

135:                                              ; preds = %103
  %136 = load i32, ptr %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %28, label %138, !llvm.loop !82

138:                                              ; preds = %135
  %139 = load ptr, ptr %4, align 8
  %140 = getelementptr inbounds %struct.CLzmaEnc, ptr %139, i32 0, i32 11
  %141 = getelementptr inbounds [4096 x %struct.COptimal], ptr %140, i64 0, i64 0
  %142 = getelementptr inbounds %struct.COptimal, ptr %141, i32 0, i32 7
  %143 = load i32, ptr %142, align 4
  %144 = load ptr, ptr %5, align 8
  store i32 %143, ptr %144, align 4
  %145 = load ptr, ptr %4, align 8
  %146 = getelementptr inbounds %struct.CLzmaEnc, ptr %145, i32 0, i32 11
  %147 = getelementptr inbounds [4096 x %struct.COptimal], ptr %146, i64 0, i64 0
  %148 = getelementptr inbounds %struct.COptimal, ptr %147, i32 0, i32 6
  %149 = load i32, ptr %148, align 4
  %150 = load ptr, ptr %4, align 8
  %151 = getelementptr inbounds %struct.CLzmaEnc, ptr %150, i32 0, i32 7
  store i32 %149, ptr %151, align 4
  %152 = load ptr, ptr %4, align 8
  %153 = getelementptr inbounds %struct.CLzmaEnc, ptr %152, i32 0, i32 7
  %154 = load i32, ptr %153, align 4
  ret i32 %154
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetRepPrice(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds %struct.CLzmaEnc, ptr %11, i32 0, i32 40
  %13 = getelementptr inbounds %struct.CLenPriceEnc, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %10, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [16 x [272 x i32]], ptr %13, i64 0, i64 %15
  %17 = load i32, ptr %8, align 4
  %18 = sub i32 %17, 2
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [272 x i32], ptr %16, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %6, align 8
  %23 = load i32, ptr %7, align 4
  %24 = load i32, ptr %9, align 4
  %25 = load i32, ptr %10, align 4
  %26 = call i32 @GetPureRepPrice(ptr noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25)
  %27 = add i32 %21, %26
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LenEnc_Encode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %9 = load i32, ptr %7, align 4
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.CLenEnc, ptr %13, i32 0, i32 0
  call void @RangeEnc_EncodeBit(ptr noundef %12, ptr noundef %14, i32 noundef 0)
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.CLenEnc, ptr %16, i32 0, i32 2
  %18 = getelementptr inbounds [128 x i16], ptr %17, i64 0, i64 0
  %19 = load i32, ptr %8, align 4
  %20 = shl i32 %19, 3
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i16, ptr %18, i64 %21
  %23 = load i32, ptr %7, align 4
  call void @RcTree_Encode(ptr noundef %15, ptr noundef %22, i32 noundef 3, i32 noundef %23)
  br label %56

24:                                               ; preds = %4
  %25 = load ptr, ptr %6, align 8
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.CLenEnc, ptr %26, i32 0, i32 0
  call void @RangeEnc_EncodeBit(ptr noundef %25, ptr noundef %27, i32 noundef 1)
  %28 = load i32, ptr %7, align 4
  %29 = icmp ult i32 %28, 16
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load ptr, ptr %6, align 8
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds %struct.CLenEnc, ptr %32, i32 0, i32 1
  call void @RangeEnc_EncodeBit(ptr noundef %31, ptr noundef %33, i32 noundef 0)
  %34 = load ptr, ptr %6, align 8
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds %struct.CLenEnc, ptr %35, i32 0, i32 3
  %37 = getelementptr inbounds [128 x i16], ptr %36, i64 0, i64 0
  %38 = load i32, ptr %8, align 4
  %39 = shl i32 %38, 3
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i16, ptr %37, i64 %40
  %42 = load i32, ptr %7, align 4
  %43 = sub i32 %42, 8
  call void @RcTree_Encode(ptr noundef %34, ptr noundef %41, i32 noundef 3, i32 noundef %43)
  br label %55

44:                                               ; preds = %24
  %45 = load ptr, ptr %6, align 8
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds %struct.CLenEnc, ptr %46, i32 0, i32 1
  call void @RangeEnc_EncodeBit(ptr noundef %45, ptr noundef %47, i32 noundef 1)
  %48 = load ptr, ptr %6, align 8
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds %struct.CLenEnc, ptr %49, i32 0, i32 4
  %51 = getelementptr inbounds [256 x i16], ptr %50, i64 0, i64 0
  %52 = load i32, ptr %7, align 4
  %53 = sub i32 %52, 8
  %54 = sub i32 %53, 8
  call void @RcTree_Encode(ptr noundef %48, ptr noundef %51, i32 noundef 8, i32 noundef %54)
  br label %55

55:                                               ; preds = %44, %30
  br label %56

56:                                               ; preds = %55, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 16.0.0"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7}
!63 = distinct !{!63, !7}
!64 = distinct !{!64, !7}
!65 = distinct !{!65, !7}
!66 = distinct !{!66, !7}
!67 = distinct !{!67, !7}
!68 = distinct !{!68, !7}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, !7}
!72 = distinct !{!72, !7}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7}
!75 = distinct !{!75, !7}
!76 = distinct !{!76, !7}
!77 = distinct !{!77, !7}
!78 = distinct !{!78, !7}
!79 = distinct !{!79, !7}
!80 = distinct !{!80, !7}
!81 = distinct !{!81, !7}
!82 = distinct !{!82, !7}
