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

@kLiteralNextStates = internal unnamed_addr constant [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 4, i32 5], align 16
@kShortRepNextStates = internal unnamed_addr constant [12 x i32] [i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 11, i32 11, i32 11, i32 11, i32 11], align 16
@kRepNextStates = internal unnamed_addr constant [12 x i32] [i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 11, i32 11, i32 11, i32 11, i32 11], align 16
@kMatchNextStates = internal unnamed_addr constant [12 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 10, i32 10, i32 10, i32 10, i32 10], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @LzmaEncProps_Init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store i32 5, ptr %0, align 4, !tbaa !5
  %2 = getelementptr inbounds %struct._CLzmaEncProps, ptr %0, i64 0, i32 9
  store i32 0, ptr %2, align 4, !tbaa !10
  %3 = getelementptr inbounds %struct._CLzmaEncProps, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !11
  %4 = getelementptr inbounds %struct._CLzmaEncProps, ptr %0, i64 0, i32 11
  store i32 -1, ptr %4, align 4, !tbaa !12
  %5 = getelementptr inbounds %struct._CLzmaEncProps, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct._CLzmaEncProps, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 -1, i64 28, i1 false)
  store i32 0, ptr %6, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @LzmaEncProps_Normalize(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 4, !tbaa !5
  %3 = icmp slt i32 %2, 0
  %4 = select i1 %3, i32 5, i32 %2
  store i32 %4, ptr %0, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct._CLzmaEncProps, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = icmp ult i32 %4, 6
  %10 = shl nuw nsw i32 %4, 1
  %11 = shl i32 16384, %10
  %12 = icmp eq i32 %4, 6
  %13 = select i1 %12, i32 33554432, i32 67108864
  %14 = select i1 %9, i32 %11, i32 %13
  store i32 %14, ptr %5, align 4, !tbaa !11
  br label %15

15:                                               ; preds = %8, %1
  %16 = getelementptr inbounds %struct._CLzmaEncProps, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !14
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 3, ptr %16, align 4, !tbaa !14
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct._CLzmaEncProps, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !15
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, ptr %21, align 4, !tbaa !15
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct._CLzmaEncProps, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !16
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 2, ptr %26, align 4, !tbaa !16
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct._CLzmaEncProps, ptr %0, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !17
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = icmp ugt i32 %4, 4
  %36 = zext i1 %35 to i32
  store i32 %36, ptr %31, align 4, !tbaa !17
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i32 [ %36, %34 ], [ %32, %30 ]
  %39 = getelementptr inbounds %struct._CLzmaEncProps, ptr %0, i64 0, i32 6
  %40 = load i32, ptr %39, align 4, !tbaa !18
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = icmp ult i32 %4, 7
  %44 = select i1 %43, i32 32, i32 64
  store i32 %44, ptr %39, align 4, !tbaa !18
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi i32 [ %44, %42 ], [ %40, %37 ]
  %47 = getelementptr inbounds %struct._CLzmaEncProps, ptr %0, i64 0, i32 7
  %48 = load i32, ptr %47, align 4, !tbaa !19
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = icmp ne i32 %38, 0
  %52 = zext i1 %51 to i32
  store i32 %52, ptr %47, align 4, !tbaa !19
  br label %53

53:                                               ; preds = %50, %45
  %54 = phi i32 [ %52, %50 ], [ %48, %45 ]
  %55 = getelementptr inbounds %struct._CLzmaEncProps, ptr %0, i64 0, i32 8
  %56 = load i32, ptr %55, align 4, !tbaa !20
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 4, ptr %55, align 4, !tbaa !20
  br label %59

59:                                               ; preds = %58, %53
  %60 = getelementptr inbounds %struct._CLzmaEncProps, ptr %0, i64 0, i32 9
  %61 = load i32, ptr %60, align 4, !tbaa !10
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = lshr i32 %46, 1
  %65 = add nuw nsw i32 %64, 16
  %66 = icmp eq i32 %54, 0
  %67 = zext i1 %66 to i32
  %68 = lshr i32 %65, %67
  store i32 %68, ptr %60, align 4, !tbaa !10
  br label %69

69:                                               ; preds = %63, %59
  %70 = getelementptr inbounds %struct._CLzmaEncProps, ptr %0, i64 0, i32 11
  %71 = load i32, ptr %70, align 4, !tbaa !12
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = icmp eq i32 %54, 0
  %75 = icmp eq i32 %38, 0
  %76 = select i1 %74, i1 true, i1 %75
  %77 = select i1 %76, i32 1, i32 2
  store i32 %77, ptr %70, align 4, !tbaa !12
  br label %78

78:                                               ; preds = %73, %69
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @LzmaEncProps_GetDictSize(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds i8, ptr %0, i64 4
  %3 = load i32, ptr %2, align 4, !tbaa.struct !21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 4, !tbaa.struct !23
  %7 = icmp slt i32 %6, 0
  %8 = select i1 %7, i32 5, i32 %6
  %9 = icmp ult i32 %8, 6
  %10 = shl nuw nsw i32 %8, 1
  %11 = shl i32 16384, %10
  %12 = icmp eq i32 %8, 6
  %13 = select i1 %12, i32 33554432, i32 67108864
  %14 = select i1 %9, i32 %11, i32 %13
  br label %15

15:                                               ; preds = %1, %5
  %16 = phi i32 [ %14, %5 ], [ %3, %1 ]
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @LzmaEnc_FastPosInit(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store i8 0, ptr %0, align 1, !tbaa !24
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 1, ptr %2, align 1, !tbaa !24
  br label %3

3:                                                ; preds = %34, %1
  %4 = phi i64 [ 2, %1 ], [ %31, %34 ]
  %5 = phi i32 [ 2, %1 ], [ %35, %34 ]
  %6 = lshr exact i32 %5, 1
  %7 = add nsw i32 %6, -1
  %8 = trunc i32 %5 to i8
  %9 = shl i64 %4, 32
  %10 = ashr exact i64 %9, 32
  br label %11

11:                                               ; preds = %3, %11
  %12 = phi i64 [ %10, %3 ], [ %16, %11 ]
  %13 = phi i32 [ 0, %3 ], [ %15, %11 ]
  %14 = getelementptr inbounds i8, ptr %0, i64 %12
  store i8 %8, ptr %14, align 1, !tbaa !24
  %15 = add i32 %13, 1
  %16 = add i64 %12, 1
  %17 = lshr i32 %15, %7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %11, label %19, !llvm.loop !25

19:                                               ; preds = %11
  %20 = lshr exact i32 %5, 1
  %21 = add nsw i32 %20, -1
  %22 = trunc i32 %5 to i8
  %23 = or i8 %22, 1
  %24 = shl i64 %16, 32
  %25 = ashr exact i64 %24, 32
  br label %26

26:                                               ; preds = %26, %19
  %27 = phi i64 [ %25, %19 ], [ %31, %26 ]
  %28 = phi i32 [ 0, %19 ], [ %30, %26 ]
  %29 = getelementptr inbounds i8, ptr %0, i64 %27
  store i8 %23, ptr %29, align 1, !tbaa !24
  %30 = add i32 %28, 1
  %31 = add i64 %27, 1
  %32 = lshr i32 %30, %21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %26, label %34, !llvm.loop !25

34:                                               ; preds = %26
  %35 = add nuw nsw i32 %5, 2
  %36 = icmp eq i32 %35, 26
  br i1 %36, label %37, label %3, !llvm.loop !27

37:                                               ; preds = %34
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LzmaEnc_SaveState(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 10
  %3 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(18504) %2, ptr noundef nonnull align 4 dereferenceable(18504) %3, i64 18504, i1 false), !tbaa.struct !28
  %4 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 11
  %5 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(18504) %4, ptr noundef nonnull align 4 dereferenceable(18504) %5, i64 18504, i1 false), !tbaa.struct !28
  %6 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 8, !tbaa !31
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 13
  store i32 %7, ptr %8, align 4, !tbaa !48
  br label %9

9:                                                ; preds = %9, %1
  %10 = phi i64 [ 0, %1 ], [ %20, %9 ]
  %11 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 1, i64 %10
  %12 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %13 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 6, i64 %10
  %14 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 35, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  %15 = or i64 %10, 1
  %16 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 1, i64 %15
  %17 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false)
  %18 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 6, i64 %15
  %19 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 35, i64 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 32, i1 false)
  %20 = add nuw nsw i64 %10, 2
  %21 = icmp eq i64 %20, 12
  br i1 %21, label %22, label %9, !llvm.loop !49

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 7, i64 0
  %24 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %23, ptr noundef nonnull align 8 dereferenceable(128) %24, i64 128, i1 false)
  %25 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 7, i64 1
  %26 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %25, ptr noundef nonnull align 8 dereferenceable(128) %26, i64 128, i1 false)
  %27 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 7, i64 2
  %28 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %27, ptr noundef nonnull align 8 dereferenceable(128) %28, i64 128, i1 false)
  %29 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 7, i64 3
  %30 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %29, ptr noundef nonnull align 8 dereferenceable(128) %30, i64 128, i1 false)
  %31 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53
  %32 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 2
  %33 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, i64 24, i1 false)
  %34 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 3
  %35 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %35, i64 24, i1 false)
  %36 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 4
  %37 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %37, i64 24, i1 false)
  %38 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 5
  %39 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %39, i64 24, i1 false)
  %40 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 8
  %41 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(228) %40, ptr noundef nonnull align 8 dereferenceable(228) %41, i64 228, i1 false)
  %42 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 9
  %43 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %42, ptr noundef nonnull align 4 dereferenceable(32) %43, i64 32, i1 false)
  %44 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 12
  %45 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(16) %45, i64 16, i1 false)
  %46 = load ptr, ptr %31, align 8, !tbaa !50
  %47 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 29
  %48 = load ptr, ptr %47, align 8, !tbaa !51
  %49 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 41
  %50 = load i32, ptr %49, align 4, !tbaa !52
  %51 = shl i32 768, %50
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %46, ptr align 2 %48, i64 %53, i1 false)
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LzmaEnc_RestoreState(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39
  %3 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(18504) %2, ptr noundef nonnull align 4 dereferenceable(18504) %3, i64 18504, i1 false), !tbaa.struct !28
  %4 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40
  %5 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(18504) %4, ptr noundef nonnull align 4 dereferenceable(18504) %5, i64 18504, i1 false), !tbaa.struct !28
  %6 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 13
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 18
  store i32 %7, ptr %8, align 8, !tbaa !31
  br label %9

9:                                                ; preds = %9, %1
  %10 = phi i64 [ 0, %1 ], [ %20, %9 ]
  %11 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %10
  %12 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 1, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %13 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 35, i64 %10
  %14 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 6, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  %15 = or i64 %10, 1
  %16 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %15
  %17 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 1, i64 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false)
  %18 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 35, i64 %15
  %19 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 6, i64 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 32, i1 false)
  %20 = add nuw nsw i64 %10, 2
  %21 = icmp eq i64 %20, 12
  br i1 %21, label %22, label %9, !llvm.loop !53

22:                                               ; preds = %9
  %23 = getelementptr i8, ptr %0, i64 214448
  %24 = getelementptr i8, ptr %0, i64 253232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %23, ptr noundef nonnull align 8 dereferenceable(512) %24, i64 512, i1 false)
  %25 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53
  %26 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 31
  %27 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %27, i64 24, i1 false)
  %28 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 32
  %29 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %29, i64 24, i1 false)
  %30 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 33
  %31 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %31, i64 24, i1 false)
  %32 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 34
  %33 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, i64 24, i1 false)
  %34 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37
  %35 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(228) %34, ptr noundef nonnull align 8 dereferenceable(228) %35, i64 228, i1 false)
  %36 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 38
  %37 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %36, ptr noundef nonnull align 4 dereferenceable(32) %37, i64 32, i1 false)
  %38 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 17
  %39 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53, i32 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 4 dereferenceable(16) %39, i64 16, i1 false)
  %40 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 29
  %41 = load ptr, ptr %40, align 8, !tbaa !51
  %42 = load ptr, ptr %25, align 8, !tbaa !50
  %43 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 41
  %44 = load i32, ptr %43, align 4, !tbaa !52
  %45 = shl i32 768, %44
  %46 = sext i32 %45 to i64
  %47 = shl nsw i64 %46, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %41, ptr align 2 %42, i64 %47, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @LzmaEnc_SetProps(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load i32, ptr %1, align 4, !tbaa.struct !23
  %4 = getelementptr inbounds i8, ptr %1, i64 4
  %5 = load i32, ptr %4, align 4, !tbaa.struct !21
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  %7 = load i32, ptr %6, align 4, !tbaa.struct !54
  %8 = getelementptr inbounds i8, ptr %1, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa.struct !55
  %10 = getelementptr inbounds i8, ptr %1, i64 16
  %11 = load i32, ptr %10, align 4, !tbaa.struct !56
  %12 = getelementptr inbounds i8, ptr %1, i64 20
  %13 = load i32, ptr %12, align 4, !tbaa.struct !57
  %14 = getelementptr inbounds i8, ptr %1, i64 24
  %15 = load i32, ptr %14, align 4, !tbaa.struct !58
  %16 = getelementptr inbounds i8, ptr %1, i64 28
  %17 = load i32, ptr %16, align 4, !tbaa.struct !59
  %18 = getelementptr inbounds i8, ptr %1, i64 32
  %19 = load i32, ptr %18, align 4, !tbaa.struct !60
  %20 = getelementptr inbounds i8, ptr %1, i64 36
  %21 = load i32, ptr %20, align 4, !tbaa.struct !61
  %22 = getelementptr inbounds i8, ptr %1, i64 40
  %23 = load i32, ptr %22, align 4, !tbaa.struct !62
  %24 = getelementptr inbounds i8, ptr %1, i64 44
  %25 = load i32, ptr %24, align 4, !tbaa.struct !63
  %26 = icmp slt i32 %3, 0
  %27 = select i1 %26, i32 5, i32 %3
  %28 = icmp eq i32 %5, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = icmp ult i32 %27, 6
  %31 = shl nuw nsw i32 %27, 1
  %32 = shl i32 16384, %31
  %33 = icmp eq i32 %27, 6
  %34 = select i1 %33, i32 33554432, i32 67108864
  %35 = select i1 %30, i32 %32, i32 %34
  br label %36

36:                                               ; preds = %29, %2
  %37 = phi i32 [ %35, %29 ], [ %5, %2 ]
  %38 = icmp slt i32 %7, 0
  %39 = select i1 %38, i32 3, i32 %7
  %40 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %41 = icmp slt i32 %11, 0
  %42 = select i1 %41, i32 2, i32 %11
  %43 = icmp slt i32 %13, 0
  %44 = icmp ugt i32 %27, 4
  %45 = zext i1 %44 to i32
  %46 = select i1 %43, i32 %45, i32 %13
  %47 = icmp slt i32 %15, 0
  %48 = icmp ult i32 %27, 7
  %49 = select i1 %48, i32 32, i32 64
  %50 = select i1 %47, i32 %49, i32 %15
  %51 = icmp slt i32 %17, 0
  %52 = icmp ne i32 %46, 0
  %53 = zext i1 %52 to i32
  %54 = select i1 %51, i32 %53, i32 %17
  %55 = icmp slt i32 %19, 0
  %56 = select i1 %55, i32 4, i32 %19
  %57 = icmp eq i32 %21, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %36
  %59 = lshr i32 %50, 1
  %60 = add nuw nsw i32 %59, 16
  %61 = icmp eq i32 %54, 0
  %62 = zext i1 %61 to i32
  %63 = lshr i32 %60, %62
  br label %64

64:                                               ; preds = %58, %36
  %65 = phi i32 [ %63, %58 ], [ %21, %36 ]
  %66 = icmp slt i32 %25, 0
  %67 = icmp eq i32 %54, 0
  %68 = icmp eq i32 %46, 0
  %69 = select i1 %67, i1 true, i1 %68
  %70 = select i1 %69, i32 0, i32 2
  %71 = select i1 %66, i32 %70, i32 %25
  %72 = icmp ugt i32 %39, 8
  %73 = icmp ugt i32 %40, 4
  %74 = select i1 %72, i1 true, i1 %73
  %75 = icmp ugt i32 %42, 4
  %76 = select i1 %74, i1 true, i1 %75
  %77 = icmp ugt i32 %37, -2147483648
  %78 = select i1 %76, i1 true, i1 %77
  %79 = icmp ugt i32 %37, 1073741824
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %105, label %81

81:                                               ; preds = %64
  %82 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 50
  store i32 %37, ptr %82, align 8, !tbaa !64
  %83 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 51
  store i32 %65, ptr %83, align 4, !tbaa !65
  %84 = tail call i32 @llvm.umax.i32(i32 %50, i32 5)
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 273)
  %86 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 15
  store i32 %85, ptr %86, align 8, !tbaa !66
  %87 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 24
  store i32 %39, ptr %87, align 4, !tbaa !67
  %88 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 25
  store i32 %40, ptr %88, align 8, !tbaa !68
  %89 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 26
  store i32 %42, ptr %89, align 4, !tbaa !69
  %90 = zext i1 %68 to i32
  %91 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 42
  store i32 %90, ptr %91, align 8, !tbaa !70
  %92 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 21
  store i32 %54, ptr %92, align 8, !tbaa !71
  br i1 %67, label %97, label %93

93:                                               ; preds = %81
  %94 = icmp ult i32 %56, 2
  br i1 %94, label %97, label %95

95:                                               ; preds = %93
  %96 = tail call i32 @llvm.umin.i32(i32 %56, i32 4)
  br label %97

97:                                               ; preds = %95, %93, %81
  %98 = phi i32 [ 4, %81 ], [ 2, %93 ], [ %96, %95 ]
  %99 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 18
  store i32 %98, ptr %99, align 8, !tbaa !72
  %100 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 11
  store i32 %65, ptr %100, align 4, !tbaa !73
  %101 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 44
  store i32 %23, ptr %101, align 8, !tbaa !74
  %102 = icmp ugt i32 %71, 1
  %103 = zext i1 %102 to i32
  %104 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 48
  store i32 %103, ptr %104, align 8, !tbaa !75
  br label %105

105:                                              ; preds = %64, %97
  %106 = phi i32 [ 0, %97 ], [ 5, %64 ]
  ret i32 %106
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @LzmaEnc_InitPriceTables(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  br label %2

2:                                                ; preds = %1, %49
  %3 = phi i64 [ 8, %1 ], [ %54, %49 ]
  %4 = mul nuw nsw i64 %3, %3
  %5 = icmp ugt i64 %4, 65535
  %6 = trunc i64 %4 to i32
  br i1 %5, label %7, label %13

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %11, %7 ], [ 0, %2 ]
  %9 = phi i32 [ %10, %7 ], [ %6, %2 ]
  %10 = lshr i32 %9, 1
  %11 = add nuw nsw i32 %8, 1
  %12 = icmp ugt i32 %9, 131071
  br i1 %12, label %7, label %13, !llvm.loop !76

13:                                               ; preds = %7, %2
  %14 = phi i32 [ %6, %2 ], [ %10, %7 ]
  %15 = phi i32 [ 0, %2 ], [ %11, %7 ]
  %16 = mul nuw i32 %14, %14
  %17 = shl i32 %15, 1
  %18 = icmp ugt i32 %16, 65535
  br i1 %18, label %19, label %25

19:                                               ; preds = %13, %19
  %20 = phi i32 [ %23, %19 ], [ %17, %13 ]
  %21 = phi i32 [ %22, %19 ], [ %16, %13 ]
  %22 = lshr i32 %21, 1
  %23 = add nuw nsw i32 %20, 1
  %24 = icmp ugt i32 %21, 131071
  br i1 %24, label %19, label %25, !llvm.loop !76

25:                                               ; preds = %19, %13
  %26 = phi i32 [ %16, %13 ], [ %22, %19 ]
  %27 = phi i32 [ %17, %13 ], [ %23, %19 ]
  %28 = mul nuw i32 %26, %26
  %29 = shl i32 %27, 1
  %30 = icmp ugt i32 %28, 65535
  br i1 %30, label %31, label %37

31:                                               ; preds = %25, %31
  %32 = phi i32 [ %35, %31 ], [ %29, %25 ]
  %33 = phi i32 [ %34, %31 ], [ %28, %25 ]
  %34 = lshr i32 %33, 1
  %35 = add nuw nsw i32 %32, 1
  %36 = icmp ugt i32 %33, 131071
  br i1 %36, label %31, label %37, !llvm.loop !76

37:                                               ; preds = %31, %25
  %38 = phi i32 [ %28, %25 ], [ %34, %31 ]
  %39 = phi i32 [ %29, %25 ], [ %35, %31 ]
  %40 = mul nuw i32 %38, %38
  %41 = shl i32 %39, 1
  %42 = icmp ugt i32 %40, 65535
  br i1 %42, label %43, label %49

43:                                               ; preds = %37, %43
  %44 = phi i32 [ %47, %43 ], [ %41, %37 ]
  %45 = phi i32 [ %46, %43 ], [ %40, %37 ]
  %46 = lshr i32 %45, 1
  %47 = add nuw nsw i32 %44, 1
  %48 = icmp ugt i32 %45, 131071
  br i1 %48, label %43, label %49, !llvm.loop !76

49:                                               ; preds = %43, %37
  %50 = phi i32 [ %41, %37 ], [ %47, %43 ]
  %51 = sub i32 161, %50
  %52 = lshr i64 %3, 4
  %53 = getelementptr inbounds i32, ptr %0, i64 %52
  store i32 %51, ptr %53, align 4, !tbaa !22
  %54 = add nuw nsw i64 %3, 16
  %55 = icmp ult i64 %3, 2032
  br i1 %55, label %2, label %56, !llvm.loop !77

56:                                               ; preds = %49
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LzmaEnc_Construct(ptr noundef %0) local_unnamed_addr #7 {
  %2 = alloca %struct._CLzmaEncProps, align 4
  %3 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4
  tail call void @MatchFinder_Construct(ptr noundef nonnull %4) #16
  %5 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 3
  tail call void @MatchFinderMt_Construct(ptr noundef nonnull %5) #16
  %6 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 3, i32 27
  store ptr %4, ptr %6, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #16
  store i32 5, ptr %2, align 4, !tbaa !5
  %7 = getelementptr inbounds %struct._CLzmaEncProps, ptr %2, i64 0, i32 9
  store i32 0, ptr %7, align 4, !tbaa !10
  %8 = getelementptr inbounds %struct._CLzmaEncProps, ptr %2, i64 0, i32 1
  store i32 0, ptr %8, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct._CLzmaEncProps, ptr %2, i64 0, i32 11
  store i32 -1, ptr %9, align 4, !tbaa !12
  %10 = getelementptr inbounds %struct._CLzmaEncProps, ptr %2, i64 0, i32 2
  %11 = getelementptr inbounds %struct._CLzmaEncProps, ptr %2, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 -1, i64 28, i1 false)
  store i32 0, ptr %11, align 4, !tbaa !13
  %12 = call i32 @LzmaEnc_SetProps(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #16
  %13 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 12
  store i8 0, ptr %13, align 1, !tbaa !24
  %14 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 12, i64 1
  store i8 1, ptr %14, align 1, !tbaa !24
  br label %15

15:                                               ; preds = %46, %1
  %16 = phi i64 [ 2, %1 ], [ %43, %46 ]
  %17 = phi i32 [ 2, %1 ], [ %47, %46 ]
  %18 = lshr exact i32 %17, 1
  %19 = add nsw i32 %18, -1
  %20 = trunc i32 %17 to i8
  %21 = shl i64 %16, 32
  %22 = ashr exact i64 %21, 32
  br label %23

23:                                               ; preds = %23, %15
  %24 = phi i64 [ %22, %15 ], [ %28, %23 ]
  %25 = phi i32 [ 0, %15 ], [ %27, %23 ]
  %26 = getelementptr inbounds i8, ptr %13, i64 %24
  store i8 %20, ptr %26, align 1, !tbaa !24
  %27 = add i32 %25, 1
  %28 = add i64 %24, 1
  %29 = lshr i32 %27, %19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %23, label %31, !llvm.loop !25

31:                                               ; preds = %23
  %32 = lshr exact i32 %17, 1
  %33 = add nsw i32 %32, -1
  %34 = trunc i32 %17 to i8
  %35 = or i8 %34, 1
  %36 = shl i64 %28, 32
  %37 = ashr exact i64 %36, 32
  br label %38

38:                                               ; preds = %38, %31
  %39 = phi i64 [ %37, %31 ], [ %43, %38 ]
  %40 = phi i32 [ 0, %31 ], [ %42, %38 ]
  %41 = getelementptr inbounds i8, ptr %13, i64 %39
  store i8 %35, ptr %41, align 1, !tbaa !24
  %42 = add i32 %40, 1
  %43 = add i64 %39, 1
  %44 = lshr i32 %42, %33
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %38, label %46, !llvm.loop !25

46:                                               ; preds = %38
  %47 = add nuw nsw i32 %17, 2
  %48 = icmp eq i32 %47, 26
  br i1 %48, label %49, label %15, !llvm.loop !27

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13
  br label %51

51:                                               ; preds = %98, %49
  %52 = phi i64 [ 8, %49 ], [ %103, %98 ]
  %53 = mul nuw nsw i64 %52, %52
  %54 = icmp ugt i64 %53, 65535
  %55 = trunc i64 %53 to i32
  br i1 %54, label %56, label %62

56:                                               ; preds = %51, %56
  %57 = phi i32 [ %60, %56 ], [ 0, %51 ]
  %58 = phi i32 [ %59, %56 ], [ %55, %51 ]
  %59 = lshr i32 %58, 1
  %60 = add nuw nsw i32 %57, 1
  %61 = icmp ugt i32 %58, 131071
  br i1 %61, label %56, label %62, !llvm.loop !76

62:                                               ; preds = %56, %51
  %63 = phi i32 [ %55, %51 ], [ %59, %56 ]
  %64 = phi i32 [ 0, %51 ], [ %60, %56 ]
  %65 = mul nuw i32 %63, %63
  %66 = shl i32 %64, 1
  %67 = icmp ugt i32 %65, 65535
  br i1 %67, label %68, label %74

68:                                               ; preds = %62, %68
  %69 = phi i32 [ %72, %68 ], [ %66, %62 ]
  %70 = phi i32 [ %71, %68 ], [ %65, %62 ]
  %71 = lshr i32 %70, 1
  %72 = add nuw nsw i32 %69, 1
  %73 = icmp ugt i32 %70, 131071
  br i1 %73, label %68, label %74, !llvm.loop !76

74:                                               ; preds = %68, %62
  %75 = phi i32 [ %65, %62 ], [ %71, %68 ]
  %76 = phi i32 [ %66, %62 ], [ %72, %68 ]
  %77 = mul nuw i32 %75, %75
  %78 = shl i32 %76, 1
  %79 = icmp ugt i32 %77, 65535
  br i1 %79, label %80, label %86

80:                                               ; preds = %74, %80
  %81 = phi i32 [ %84, %80 ], [ %78, %74 ]
  %82 = phi i32 [ %83, %80 ], [ %77, %74 ]
  %83 = lshr i32 %82, 1
  %84 = add nuw nsw i32 %81, 1
  %85 = icmp ugt i32 %82, 131071
  br i1 %85, label %80, label %86, !llvm.loop !76

86:                                               ; preds = %80, %74
  %87 = phi i32 [ %77, %74 ], [ %83, %80 ]
  %88 = phi i32 [ %78, %74 ], [ %84, %80 ]
  %89 = mul nuw i32 %87, %87
  %90 = shl i32 %88, 1
  %91 = icmp ugt i32 %89, 65535
  br i1 %91, label %92, label %98

92:                                               ; preds = %86, %92
  %93 = phi i32 [ %96, %92 ], [ %90, %86 ]
  %94 = phi i32 [ %95, %92 ], [ %89, %86 ]
  %95 = lshr i32 %94, 1
  %96 = add nuw nsw i32 %93, 1
  %97 = icmp ugt i32 %94, 131071
  br i1 %97, label %92, label %98, !llvm.loop !76

98:                                               ; preds = %92, %86
  %99 = phi i32 [ %90, %86 ], [ %96, %92 ]
  %100 = sub i32 161, %99
  %101 = lshr i64 %52, 4
  %102 = getelementptr inbounds i32, ptr %50, i64 %101
  store i32 %100, ptr %102, align 4, !tbaa !22
  %103 = add nuw nsw i64 %52, 16
  %104 = icmp ult i64 %52, 2032
  br i1 %104, label %51, label %105, !llvm.loop !77

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 29
  store ptr null, ptr %106, align 8, !tbaa !51
  %107 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53
  store ptr null, ptr %107, align 8, !tbaa !79
  ret void
}

declare void @MatchFinder_Construct(ptr noundef) local_unnamed_addr #8

declare void @MatchFinderMt_Construct(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local ptr @LzmaEnc_Create(ptr noundef %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = tail call ptr %2(ptr noundef nonnull %0, i64 noundef 291032) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @LzmaEnc_Construct(ptr noundef nonnull %3)
  br label %6

6:                                                ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @LzmaEnc_FreeLits(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.ISzAlloc, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 29
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  tail call void %4(ptr noundef %1, ptr noundef %6) #16
  %7 = load ptr, ptr %3, align 8, !tbaa !82
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  tail call void %7(ptr noundef %1, ptr noundef %9) #16
  store ptr null, ptr %5, align 8, !tbaa !51
  store ptr null, ptr %8, align 8, !tbaa !79
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LzmaEnc_Destruct(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 3
  tail call void @MatchFinderMt_Destruct(ptr noundef nonnull %4, ptr noundef %2) #16
  %5 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4
  tail call void @MatchFinder_Free(ptr noundef nonnull %5, ptr noundef %2) #16
  %6 = getelementptr inbounds %struct.ISzAlloc, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 29
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  tail call void %7(ptr noundef %1, ptr noundef %9) #16
  %10 = load ptr, ptr %6, align 8, !tbaa !82
  %11 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  tail call void %10(ptr noundef %1, ptr noundef %12) #16
  store ptr null, ptr %8, align 8, !tbaa !51
  store ptr null, ptr %11, align 8, !tbaa !79
  %13 = load ptr, ptr %6, align 8, !tbaa !82
  %14 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  tail call void %13(ptr noundef %1, ptr noundef %15) #16
  store ptr null, ptr %14, align 8, !tbaa !83
  ret void
}

declare void @MatchFinderMt_Destruct(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @MatchFinder_Free(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @LzmaEnc_Destroy(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 3
  tail call void @MatchFinderMt_Destruct(ptr noundef nonnull %4, ptr noundef %2) #16
  %5 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4
  tail call void @MatchFinder_Free(ptr noundef nonnull %5, ptr noundef %2) #16
  %6 = getelementptr inbounds %struct.ISzAlloc, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 29
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  tail call void %7(ptr noundef %1, ptr noundef %9) #16
  %10 = load ptr, ptr %6, align 8, !tbaa !82
  %11 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  tail call void %10(ptr noundef %1, ptr noundef %12) #16
  store ptr null, ptr %8, align 8, !tbaa !51
  store ptr null, ptr %11, align 8, !tbaa !79
  %13 = load ptr, ptr %6, align 8, !tbaa !82
  %14 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  tail call void %13(ptr noundef %1, ptr noundef %15) #16
  store ptr null, ptr %14, align 8, !tbaa !83
  %16 = load ptr, ptr %6, align 8, !tbaa !82
  tail call void %16(ptr noundef %1, ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LzmaEnc_Init(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr i8, ptr %0, i64 210392
  %3 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43
  %4 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 2
  store i64 0, ptr %4, align 8, !tbaa !84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  store i32 -1, ptr %3, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 3
  store i64 1, ptr %5, align 8, !tbaa !86
  %6 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 1
  store i8 0, ptr %6, align 4, !tbaa !87
  %7 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !83
  %9 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 4
  store ptr %8, ptr %9, align 8, !tbaa !88
  %10 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 8
  store i64 0, ptr %10, align 8, !tbaa !89
  %11 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 9
  store i32 0, ptr %11, align 8, !tbaa !90
  br label %12

12:                                               ; preds = %1, %12
  %13 = phi i64 [ 0, %1 ], [ %22, %12 ]
  %14 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %13, i64 0
  %15 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 35, i64 %13, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %14, align 2, !tbaa !29
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %15, align 2, !tbaa !29
  %16 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %13, i64 8
  %17 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 35, i64 %13, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %16, align 2, !tbaa !29
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %17, align 2, !tbaa !29
  %18 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 31, i64 %13
  store i16 1024, ptr %18, align 2, !tbaa !29
  %19 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 32, i64 %13
  store i16 1024, ptr %19, align 2, !tbaa !29
  %20 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 33, i64 %13
  store i16 1024, ptr %20, align 2, !tbaa !29
  %21 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 34, i64 %13
  store i16 1024, ptr %21, align 2, !tbaa !29
  %22 = add nuw nsw i64 %13, 1
  %23 = icmp eq i64 %22, 12
  br i1 %23, label %24, label %12, !llvm.loop !91

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 25
  %26 = load i32, ptr %25, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 24
  %28 = load i32, ptr %27, align 4, !tbaa !67
  %29 = add i32 %28, %26
  %30 = icmp ugt i32 %29, 23
  br i1 %30, label %50, label %31

31:                                               ; preds = %24
  %32 = shl i32 768, %29
  %33 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 29
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  %35 = tail call i32 @llvm.umax.i32(i32 %32, i32 1)
  %36 = zext i32 %35 to i64
  %37 = icmp ult i32 %35, 16
  br i1 %37, label %48, label %38

38:                                               ; preds = %31
  %39 = and i64 %36, 4294967040
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i64 [ 0, %38 ], [ %44, %40 ]
  %42 = getelementptr inbounds i16, ptr %34, i64 %41
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %42, align 2, !tbaa !29
  %43 = getelementptr inbounds i16, ptr %42, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %43, align 2, !tbaa !29
  %44 = add nuw i64 %41, 16
  %45 = icmp eq i64 %44, %39
  br i1 %45, label %46, label %40, !llvm.loop !92

46:                                               ; preds = %40
  %47 = icmp eq i64 %39, %36
  br i1 %47, label %50, label %48

48:                                               ; preds = %31, %46
  %49 = phi i64 [ 0, %31 ], [ %39, %46 ]
  br label %244

50:                                               ; preds = %24, %46, %244
  %51 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %51, align 2, !tbaa !29
  %52 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 0, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %52, align 2, !tbaa !29
  %53 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 0, i64 16
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %53, align 2, !tbaa !29
  %54 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 0, i64 24
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %54, align 2, !tbaa !29
  %55 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 0, i64 32
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %55, align 2, !tbaa !29
  %56 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 0, i64 40
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %56, align 2, !tbaa !29
  %57 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 0, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %57, align 2, !tbaa !29
  %58 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 0, i64 56
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %58, align 2, !tbaa !29
  %59 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 1
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %59, align 2, !tbaa !29
  %60 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 1, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %60, align 2, !tbaa !29
  %61 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 1, i64 16
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %61, align 2, !tbaa !29
  %62 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 1, i64 24
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %62, align 2, !tbaa !29
  %63 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 1, i64 32
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %63, align 2, !tbaa !29
  %64 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 1, i64 40
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %64, align 2, !tbaa !29
  %65 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 1, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %65, align 2, !tbaa !29
  %66 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 1, i64 56
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %66, align 2, !tbaa !29
  %67 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %67, align 2, !tbaa !29
  %68 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 2, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %68, align 2, !tbaa !29
  %69 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 2, i64 16
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %69, align 2, !tbaa !29
  %70 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 2, i64 24
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %70, align 2, !tbaa !29
  %71 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 2, i64 32
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %71, align 2, !tbaa !29
  %72 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 2, i64 40
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %72, align 2, !tbaa !29
  %73 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 2, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %73, align 2, !tbaa !29
  %74 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 2, i64 56
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %74, align 2, !tbaa !29
  %75 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 3
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %75, align 2, !tbaa !29
  %76 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 3, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %76, align 2, !tbaa !29
  %77 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 3, i64 16
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %77, align 2, !tbaa !29
  %78 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 3, i64 24
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %78, align 2, !tbaa !29
  %79 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 3, i64 32
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %79, align 2, !tbaa !29
  %80 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 3, i64 40
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %80, align 2, !tbaa !29
  %81 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 3, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %81, align 2, !tbaa !29
  %82 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 3, i64 56
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %82, align 2, !tbaa !29
  %83 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %83, align 2, !tbaa !29
  %84 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %84, align 2, !tbaa !29
  %85 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 16
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %85, align 2, !tbaa !29
  %86 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 24
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %86, align 2, !tbaa !29
  %87 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 32
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %87, align 2, !tbaa !29
  %88 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 40
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %88, align 2, !tbaa !29
  %89 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %89, align 2, !tbaa !29
  %90 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 56
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %90, align 2, !tbaa !29
  %91 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 64
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %91, align 2, !tbaa !29
  %92 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 72
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %92, align 2, !tbaa !29
  %93 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 80
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %93, align 2, !tbaa !29
  %94 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 88
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %94, align 2, !tbaa !29
  %95 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 96
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %95, align 2, !tbaa !29
  %96 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 104
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %96, align 2, !tbaa !29
  %97 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 112
  store i16 1024, ptr %97, align 2, !tbaa !29
  %98 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 37, i64 113
  store i16 1024, ptr %98, align 2, !tbaa !29
  %99 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39
  %100 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 1
  store i16 1024, ptr %100, align 2, !tbaa !95
  store i16 1024, ptr %99, align 2, !tbaa !96
  %101 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %101, align 2, !tbaa !29
  %102 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %102, align 2, !tbaa !29
  %103 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2, i64 16
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %103, align 2, !tbaa !29
  %104 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2, i64 24
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %104, align 2, !tbaa !29
  %105 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2, i64 32
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %105, align 2, !tbaa !29
  %106 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2, i64 40
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %106, align 2, !tbaa !29
  %107 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %107, align 2, !tbaa !29
  %108 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2, i64 56
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %108, align 2, !tbaa !29
  %109 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2, i64 64
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %109, align 2, !tbaa !29
  %110 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2, i64 72
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %110, align 2, !tbaa !29
  %111 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2, i64 80
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %111, align 2, !tbaa !29
  %112 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2, i64 88
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %112, align 2, !tbaa !29
  %113 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2, i64 96
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %113, align 2, !tbaa !29
  %114 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2, i64 104
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %114, align 2, !tbaa !29
  %115 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2, i64 112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %115, align 2, !tbaa !29
  %116 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 2, i64 120
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %116, align 2, !tbaa !29
  %117 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %117, align 2, !tbaa !29
  %118 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %118, align 2, !tbaa !29
  %119 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3, i64 16
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %119, align 2, !tbaa !29
  %120 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3, i64 24
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %120, align 2, !tbaa !29
  %121 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3, i64 32
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %121, align 2, !tbaa !29
  %122 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3, i64 40
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %122, align 2, !tbaa !29
  %123 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %123, align 2, !tbaa !29
  %124 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3, i64 56
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %124, align 2, !tbaa !29
  %125 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3, i64 64
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %125, align 2, !tbaa !29
  %126 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3, i64 72
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %126, align 2, !tbaa !29
  %127 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3, i64 80
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %127, align 2, !tbaa !29
  %128 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3, i64 88
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %128, align 2, !tbaa !29
  %129 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3, i64 96
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %129, align 2, !tbaa !29
  %130 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3, i64 104
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %130, align 2, !tbaa !29
  %131 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3, i64 112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %131, align 2, !tbaa !29
  %132 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 3, i64 120
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %132, align 2, !tbaa !29
  %133 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %133, align 2, !tbaa !29
  %134 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %134, align 2, !tbaa !29
  %135 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 16
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %135, align 2, !tbaa !29
  %136 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 24
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %136, align 2, !tbaa !29
  %137 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 32
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %137, align 2, !tbaa !29
  %138 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 40
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %138, align 2, !tbaa !29
  %139 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %139, align 2, !tbaa !29
  %140 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 56
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %140, align 2, !tbaa !29
  %141 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 64
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %141, align 2, !tbaa !29
  %142 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 72
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %142, align 2, !tbaa !29
  %143 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 80
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %143, align 2, !tbaa !29
  %144 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 88
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %144, align 2, !tbaa !29
  %145 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 96
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %145, align 2, !tbaa !29
  %146 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 104
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %146, align 2, !tbaa !29
  %147 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %147, align 2, !tbaa !29
  %148 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 120
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %148, align 2, !tbaa !29
  %149 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 128
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %149, align 2, !tbaa !29
  %150 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 136
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %150, align 2, !tbaa !29
  %151 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 144
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %151, align 2, !tbaa !29
  %152 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 152
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %152, align 2, !tbaa !29
  %153 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 160
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %153, align 2, !tbaa !29
  %154 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 168
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %154, align 2, !tbaa !29
  %155 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 176
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %155, align 2, !tbaa !29
  %156 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 184
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %156, align 2, !tbaa !29
  %157 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %157, align 2, !tbaa !29
  %158 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 200
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %158, align 2, !tbaa !29
  %159 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 208
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %159, align 2, !tbaa !29
  %160 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 216
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %160, align 2, !tbaa !29
  %161 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 224
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %161, align 2, !tbaa !29
  %162 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 232
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %162, align 2, !tbaa !29
  %163 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 240
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %163, align 2, !tbaa !29
  %164 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 0, i32 4, i64 248
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %164, align 2, !tbaa !29
  %165 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40
  %166 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 1
  store i16 1024, ptr %166, align 2, !tbaa !95
  store i16 1024, ptr %165, align 2, !tbaa !96
  %167 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %167, align 2, !tbaa !29
  %168 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %168, align 2, !tbaa !29
  %169 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2, i64 16
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %169, align 2, !tbaa !29
  %170 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2, i64 24
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %170, align 2, !tbaa !29
  %171 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2, i64 32
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %171, align 2, !tbaa !29
  %172 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2, i64 40
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %172, align 2, !tbaa !29
  %173 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %173, align 2, !tbaa !29
  %174 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2, i64 56
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %174, align 2, !tbaa !29
  %175 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2, i64 64
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %175, align 2, !tbaa !29
  %176 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2, i64 72
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %176, align 2, !tbaa !29
  %177 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2, i64 80
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %177, align 2, !tbaa !29
  %178 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2, i64 88
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %178, align 2, !tbaa !29
  %179 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2, i64 96
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %179, align 2, !tbaa !29
  %180 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2, i64 104
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %180, align 2, !tbaa !29
  %181 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2, i64 112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %181, align 2, !tbaa !29
  %182 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 2, i64 120
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %182, align 2, !tbaa !29
  %183 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %183, align 2, !tbaa !29
  %184 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %184, align 2, !tbaa !29
  %185 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3, i64 16
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %185, align 2, !tbaa !29
  %186 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3, i64 24
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %186, align 2, !tbaa !29
  %187 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3, i64 32
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %187, align 2, !tbaa !29
  %188 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3, i64 40
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %188, align 2, !tbaa !29
  %189 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %189, align 2, !tbaa !29
  %190 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3, i64 56
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %190, align 2, !tbaa !29
  %191 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3, i64 64
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %191, align 2, !tbaa !29
  %192 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3, i64 72
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %192, align 2, !tbaa !29
  %193 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3, i64 80
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %193, align 2, !tbaa !29
  %194 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3, i64 88
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %194, align 2, !tbaa !29
  %195 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3, i64 96
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %195, align 2, !tbaa !29
  %196 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3, i64 104
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %196, align 2, !tbaa !29
  %197 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3, i64 112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %197, align 2, !tbaa !29
  %198 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 3, i64 120
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %198, align 2, !tbaa !29
  %199 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %199, align 2, !tbaa !29
  %200 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %200, align 2, !tbaa !29
  %201 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 16
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %201, align 2, !tbaa !29
  %202 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 24
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %202, align 2, !tbaa !29
  %203 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 32
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %203, align 2, !tbaa !29
  %204 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 40
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %204, align 2, !tbaa !29
  %205 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 48
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %205, align 2, !tbaa !29
  %206 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 56
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %206, align 2, !tbaa !29
  %207 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 64
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %207, align 2, !tbaa !29
  %208 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 72
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %208, align 2, !tbaa !29
  %209 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 80
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %209, align 2, !tbaa !29
  %210 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 88
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %210, align 2, !tbaa !29
  %211 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 96
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %211, align 2, !tbaa !29
  %212 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 104
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %212, align 2, !tbaa !29
  %213 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 112
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %213, align 2, !tbaa !29
  %214 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 120
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %214, align 2, !tbaa !29
  %215 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 128
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %215, align 2, !tbaa !29
  %216 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 136
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %216, align 2, !tbaa !29
  %217 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 144
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %217, align 2, !tbaa !29
  %218 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 152
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %218, align 2, !tbaa !29
  %219 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 160
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %219, align 2, !tbaa !29
  %220 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 168
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %220, align 2, !tbaa !29
  %221 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 176
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %221, align 2, !tbaa !29
  %222 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 184
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %222, align 2, !tbaa !29
  %223 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 192
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %223, align 2, !tbaa !29
  %224 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 200
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %224, align 2, !tbaa !29
  %225 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 208
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %225, align 2, !tbaa !29
  %226 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 216
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %226, align 2, !tbaa !29
  %227 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 224
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %227, align 2, !tbaa !29
  %228 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 232
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %228, align 2, !tbaa !29
  %229 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 240
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %229, align 2, !tbaa !29
  %230 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 0, i32 4, i64 248
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %230, align 2, !tbaa !29
  %231 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 38, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %231, align 2, !tbaa !29
  %232 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 38, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %232, align 2, !tbaa !29
  %233 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 6
  store i32 0, ptr %233, align 8, !tbaa !97
  %234 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 7
  store i32 0, ptr %234, align 4, !tbaa !98
  %235 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 16
  store i32 0, ptr %235, align 4, !tbaa !99
  %236 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 26
  %237 = load i32, ptr %236, align 4, !tbaa !69
  %238 = shl nsw i32 -1, %237
  %239 = xor i32 %238, -1
  %240 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 28
  store i32 %239, ptr %240, align 4, !tbaa !100
  %241 = shl nsw i32 -1, %26
  %242 = xor i32 %241, -1
  %243 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 27
  store i32 %242, ptr %243, align 8, !tbaa !101
  ret void

244:                                              ; preds = %48, %244
  %245 = phi i64 [ %247, %244 ], [ %49, %48 ]
  %246 = getelementptr inbounds i16, ptr %34, i64 %245
  store i16 1024, ptr %246, align 2, !tbaa !29
  %247 = add nuw nsw i64 %245, 1
  %248 = icmp eq i64 %247, %36
  br i1 %248, label %50, label %244, !llvm.loop !102
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @LzmaEnc_InitPrices(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 42
  %3 = load i32, ptr %2, align 8, !tbaa !70
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %69

5:                                                ; preds = %1
  tail call fastcc void @FillDistancesPrices(ptr noundef nonnull %0)
  %6 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 38
  %7 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 38, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !29
  %10 = zext i16 %9 to i64
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i64 [ 0, %5 ], [ %65, %11 ]
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 1
  %15 = lshr i32 %13, 1
  %16 = icmp eq i32 %14, 0
  %17 = select i1 %16, i64 0, i64 2032
  %18 = xor i64 %17, %10
  %19 = lshr i64 %18, 4
  %20 = getelementptr inbounds i32, ptr %7, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !22
  %22 = or i32 %14, 2
  %23 = and i32 %15, 1
  %24 = lshr i32 %13, 2
  %25 = zext i32 %22 to i64
  %26 = getelementptr inbounds i16, ptr %6, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !29
  %28 = zext i16 %27 to i64
  %29 = icmp eq i32 %23, 0
  %30 = select i1 %29, i64 0, i64 2032
  %31 = xor i64 %30, %28
  %32 = lshr i64 %31, 4
  %33 = getelementptr inbounds i32, ptr %7, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !22
  %35 = add i32 %34, %21
  %36 = shl nuw nsw i32 %22, 1
  %37 = or i32 %36, %23
  %38 = and i32 %24, 1
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds i16, ptr %6, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !29
  %42 = zext i16 %41 to i64
  %43 = icmp eq i32 %38, 0
  %44 = select i1 %43, i64 0, i64 2032
  %45 = xor i64 %44, %42
  %46 = lshr i64 %45, 4
  %47 = getelementptr inbounds i32, ptr %7, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !22
  %49 = add i32 %35, %48
  %50 = shl nuw nsw i32 %37, 1
  %51 = or i32 %50, %38
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i16, ptr %6, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !29
  %55 = zext i16 %54 to i64
  %56 = and i32 %13, 8
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i64 0, i64 2032
  %59 = xor i64 %58, %55
  %60 = lshr i64 %59, 4
  %61 = getelementptr inbounds i32, ptr %7, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !22
  %63 = add i32 %49, %62
  %64 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 21, i64 %12
  store i32 %63, ptr %64, align 4, !tbaa !22
  %65 = add nuw nsw i64 %12, 1
  %66 = icmp eq i64 %65, 16
  br i1 %66, label %67, label %11, !llvm.loop !103

67:                                               ; preds = %11
  %68 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 22
  store i32 0, ptr %68, align 4, !tbaa !104
  br label %69

69:                                               ; preds = %67, %1
  %70 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 15
  %71 = load i32, ptr %70, align 8, !tbaa !66
  %72 = add i32 %71, -1
  %73 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 2
  store i32 %72, ptr %73, align 4, !tbaa !105
  %74 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39
  %75 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 2
  store i32 %72, ptr %75, align 4, !tbaa !106
  %76 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 26
  %77 = load i32, ptr %76, align 4, !tbaa !69
  %78 = shl nuw i32 1, %77
  %79 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13
  br label %80

80:                                               ; preds = %80, %69
  %81 = phi i32 [ %82, %80 ], [ 0, %69 ]
  tail call fastcc void @LenPriceEnc_UpdateTable(ptr noundef nonnull %74, i32 noundef %81, ptr noundef nonnull %79)
  %82 = add nuw i32 %81, 1
  %83 = icmp eq i32 %82, %78
  br i1 %83, label %84, label %80, !llvm.loop !107

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40
  %86 = load i32, ptr %76, align 4, !tbaa !69
  %87 = shl nuw i32 1, %86
  br label %88

88:                                               ; preds = %88, %84
  %89 = phi i32 [ %90, %88 ], [ 0, %84 ]
  tail call fastcc void @LenPriceEnc_UpdateTable(ptr noundef nonnull %85, i32 noundef %89, ptr noundef nonnull %79)
  %90 = add nuw i32 %89, 1
  %91 = icmp eq i32 %90, %87
  br i1 %91, label %92, label %88, !llvm.loop !107

92:                                               ; preds = %88
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @FillDistancesPrices(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = alloca [128 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #16
  %3 = getelementptr %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 3, i64 63
  %4 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13
  br label %7

5:                                                ; preds = %86
  %6 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 23
  br label %91

7:                                                ; preds = %1, %86
  %8 = phi i64 [ 4, %1 ], [ %89, %86 ]
  %9 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 12, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !24
  %11 = zext i8 %10 to i32
  %12 = lshr i32 %11, 1
  %13 = add nsw i32 %12, -1
  %14 = and i32 %11, 1
  %15 = or i32 %14, 2
  %16 = shl i32 %15, %13
  %17 = zext i32 %16 to i64
  %18 = zext i8 %10 to i64
  %19 = sub nsw i64 0, %18
  %20 = getelementptr i16, ptr %3, i64 %17
  %21 = getelementptr i16, ptr %20, i64 %19
  %22 = icmp eq i32 %13, 0
  br i1 %22, label %86, label %23

23:                                               ; preds = %7
  %24 = trunc i64 %8 to i32
  %25 = sub i32 %24, %16
  %26 = and i32 %13, 1
  %27 = icmp eq i32 %12, 2
  br i1 %27, label %67, label %28

28:                                               ; preds = %23
  %29 = and i32 %13, -2
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i32 [ %25, %28 ], [ %51, %30 ]
  %32 = phi i32 [ 1, %28 ], [ %64, %30 ]
  %33 = phi i32 [ 0, %28 ], [ %62, %30 ]
  %34 = phi i32 [ 0, %28 ], [ %65, %30 ]
  %35 = and i32 %31, 1
  %36 = lshr i32 %31, 1
  %37 = zext i32 %32 to i64
  %38 = getelementptr inbounds i16, ptr %21, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !29
  %40 = zext i16 %39 to i64
  %41 = icmp eq i32 %35, 0
  %42 = select i1 %41, i64 0, i64 2032
  %43 = xor i64 %42, %40
  %44 = lshr i64 %43, 4
  %45 = getelementptr inbounds i32, ptr %4, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !22
  %47 = add i32 %46, %33
  %48 = shl i32 %32, 1
  %49 = or i32 %48, %35
  %50 = and i32 %36, 1
  %51 = lshr i32 %31, 2
  %52 = zext i32 %49 to i64
  %53 = getelementptr inbounds i16, ptr %21, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !29
  %55 = zext i16 %54 to i64
  %56 = icmp eq i32 %50, 0
  %57 = select i1 %56, i64 0, i64 2032
  %58 = xor i64 %57, %55
  %59 = lshr i64 %58, 4
  %60 = getelementptr inbounds i32, ptr %4, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !22
  %62 = add i32 %61, %47
  %63 = shl i32 %49, 1
  %64 = or i32 %63, %50
  %65 = add i32 %34, 2
  %66 = icmp eq i32 %65, %29
  br i1 %66, label %67, label %30, !llvm.loop !108

67:                                               ; preds = %30, %23
  %68 = phi i32 [ undef, %23 ], [ %62, %30 ]
  %69 = phi i32 [ %25, %23 ], [ %51, %30 ]
  %70 = phi i32 [ 1, %23 ], [ %64, %30 ]
  %71 = phi i32 [ 0, %23 ], [ %62, %30 ]
  %72 = icmp eq i32 %26, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %67
  %74 = and i32 %69, 1
  %75 = zext i32 %70 to i64
  %76 = getelementptr inbounds i16, ptr %21, i64 %75
  %77 = load i16, ptr %76, align 2, !tbaa !29
  %78 = zext i16 %77 to i64
  %79 = icmp eq i32 %74, 0
  %80 = select i1 %79, i64 0, i64 2032
  %81 = xor i64 %80, %78
  %82 = lshr i64 %81, 4
  %83 = getelementptr inbounds i32, ptr %4, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !22
  %85 = add i32 %84, %71
  br label %86

86:                                               ; preds = %73, %67, %7
  %87 = phi i32 [ 0, %7 ], [ %68, %67 ], [ %85, %73 ]
  %88 = getelementptr inbounds [128 x i32], ptr %2, i64 0, i64 %8
  store i32 %87, ptr %88, align 4, !tbaa !22
  %89 = add nuw nsw i64 %8, 1
  %90 = icmp eq i64 %89, 128
  br i1 %90, label %5, label %7, !llvm.loop !109

91:                                               ; preds = %5, %165
  %92 = phi i64 [ 0, %5 ], [ %166, %165 ]
  %93 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 %92
  %94 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 19, i64 %92
  %95 = load i32, ptr %6, align 8, !tbaa !110
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %139, label %99

97:                                               ; preds = %120
  %98 = icmp ugt i32 %123, 14
  br i1 %98, label %126, label %139

99:                                               ; preds = %91, %120
  %100 = phi i64 [ %122, %120 ], [ 0, %91 ]
  %101 = trunc i64 %100 to i32
  %102 = or i32 %101, 64
  br label %103

103:                                              ; preds = %103, %99
  %104 = phi i32 [ %118, %103 ], [ 0, %99 ]
  %105 = phi i32 [ %106, %103 ], [ %102, %99 ]
  %106 = lshr i32 %105, 1
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i16, ptr %93, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !29
  %110 = zext i16 %109 to i64
  %111 = and i32 %105, 1
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i64 0, i64 2032
  %114 = xor i64 %113, %110
  %115 = lshr i64 %114, 4
  %116 = getelementptr inbounds i32, ptr %4, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !22
  %118 = add i32 %117, %104
  %119 = icmp eq i32 %106, 1
  br i1 %119, label %120, label %103, !llvm.loop !111

120:                                              ; preds = %103
  %121 = getelementptr inbounds i32, ptr %94, i64 %100
  store i32 %118, ptr %121, align 4, !tbaa !22
  %122 = add nuw nsw i64 %100, 1
  %123 = load i32, ptr %6, align 8, !tbaa !110
  %124 = zext i32 %123 to i64
  %125 = icmp ult i64 %122, %124
  br i1 %125, label %99, label %97, !llvm.loop !112

126:                                              ; preds = %97, %126
  %127 = phi i64 [ %135, %126 ], [ 14, %97 ]
  %128 = trunc i64 %127 to i32
  %129 = shl i32 %128, 3
  %130 = and i32 %129, -16
  %131 = add i32 %130, -80
  %132 = getelementptr inbounds i32, ptr %94, i64 %127
  %133 = load i32, ptr %132, align 4, !tbaa !22
  %134 = add i32 %131, %133
  store i32 %134, ptr %132, align 4, !tbaa !22
  %135 = add nuw nsw i64 %127, 1
  %136 = load i32, ptr %6, align 8, !tbaa !110
  %137 = zext i32 %136 to i64
  %138 = icmp ult i64 %135, %137
  br i1 %138, label %126, label %139, !llvm.loop !113

139:                                              ; preds = %126, %91, %97
  %140 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 20, i64 %92
  %141 = load <4 x i32>, ptr %94, align 4, !tbaa !22
  store <4 x i32> %141, ptr %140, align 4, !tbaa !22
  br label %142

142:                                              ; preds = %142, %139
  %143 = phi i64 [ 4, %139 ], [ %163, %142 ]
  %144 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 12, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !24
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds i32, ptr %94, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !22
  %149 = getelementptr inbounds [128 x i32], ptr %2, i64 0, i64 %143
  %150 = load i32, ptr %149, align 8, !tbaa !22
  %151 = add i32 %150, %148
  %152 = getelementptr inbounds i32, ptr %140, i64 %143
  store i32 %151, ptr %152, align 4, !tbaa !22
  %153 = or i64 %143, 1
  %154 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 12, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !24
  %156 = zext i8 %155 to i64
  %157 = getelementptr inbounds i32, ptr %94, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !22
  %159 = getelementptr inbounds [128 x i32], ptr %2, i64 0, i64 %153
  %160 = load i32, ptr %159, align 4, !tbaa !22
  %161 = add i32 %160, %158
  %162 = getelementptr inbounds i32, ptr %140, i64 %153
  store i32 %161, ptr %162, align 4, !tbaa !22
  %163 = add nuw nsw i64 %143, 2
  %164 = icmp eq i64 %163, 128
  br i1 %164, label %165, label %142, !llvm.loop !114

165:                                              ; preds = %142
  %166 = add nuw nsw i64 %92, 1
  %167 = icmp eq i64 %166, 4
  br i1 %167, label %168, label %91, !llvm.loop !115

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 46
  store i32 0, ptr %169, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LzmaEnc_PrepareForLzma2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 13
  store ptr %1, ptr %6, align 8, !tbaa !117
  %7 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 52
  store i32 1, ptr %7, align 8, !tbaa !118
  %8 = tail call fastcc i32 @LzmaEnc_AllocAndInit(ptr noundef %0, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LzmaEnc_AllocAndInit(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 50
  %6 = load i32, ptr %5, align 8, !tbaa !64
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %8, label %69

8:                                                ; preds = %4
  %9 = icmp eq i32 %6, 2
  br i1 %9, label %69, label %10

10:                                               ; preds = %8
  %11 = icmp ugt i32 %6, 4
  br i1 %11, label %12, label %69

12:                                               ; preds = %10
  %13 = icmp ugt i32 %6, 8
  br i1 %13, label %14, label %69

14:                                               ; preds = %12
  %15 = icmp ugt i32 %6, 16
  br i1 %15, label %16, label %69

16:                                               ; preds = %14
  %17 = icmp ugt i32 %6, 32
  br i1 %17, label %18, label %69

18:                                               ; preds = %16
  %19 = icmp ugt i32 %6, 64
  br i1 %19, label %20, label %69

20:                                               ; preds = %18
  %21 = icmp ugt i32 %6, 128
  br i1 %21, label %22, label %69

22:                                               ; preds = %20
  %23 = icmp ugt i32 %6, 256
  br i1 %23, label %24, label %69

24:                                               ; preds = %22
  %25 = icmp ugt i32 %6, 512
  br i1 %25, label %26, label %69

26:                                               ; preds = %24
  %27 = icmp ugt i32 %6, 1024
  br i1 %27, label %28, label %69

28:                                               ; preds = %26
  %29 = icmp ugt i32 %6, 2048
  br i1 %29, label %30, label %69

30:                                               ; preds = %28
  %31 = icmp ugt i32 %6, 4096
  br i1 %31, label %32, label %69

32:                                               ; preds = %30
  %33 = icmp ugt i32 %6, 8192
  br i1 %33, label %34, label %69

34:                                               ; preds = %32
  %35 = icmp ugt i32 %6, 16384
  br i1 %35, label %36, label %69

36:                                               ; preds = %34
  %37 = icmp ugt i32 %6, 32768
  br i1 %37, label %38, label %69

38:                                               ; preds = %36
  %39 = icmp ugt i32 %6, 65536
  br i1 %39, label %40, label %69

40:                                               ; preds = %38
  %41 = icmp ugt i32 %6, 131072
  br i1 %41, label %42, label %69

42:                                               ; preds = %40
  %43 = icmp ugt i32 %6, 262144
  br i1 %43, label %44, label %69

44:                                               ; preds = %42
  %45 = icmp ugt i32 %6, 524288
  br i1 %45, label %46, label %69

46:                                               ; preds = %44
  %47 = icmp ugt i32 %6, 1048576
  br i1 %47, label %48, label %69

48:                                               ; preds = %46
  %49 = icmp ugt i32 %6, 2097152
  br i1 %49, label %50, label %69

50:                                               ; preds = %48
  %51 = icmp ugt i32 %6, 4194304
  br i1 %51, label %52, label %69

52:                                               ; preds = %50
  %53 = icmp ugt i32 %6, 8388608
  br i1 %53, label %54, label %69

54:                                               ; preds = %52
  %55 = icmp ugt i32 %6, 16777216
  br i1 %55, label %56, label %69

56:                                               ; preds = %54
  %57 = icmp ugt i32 %6, 33554432
  br i1 %57, label %58, label %69

58:                                               ; preds = %56
  %59 = icmp ugt i32 %6, 67108864
  br i1 %59, label %60, label %69

60:                                               ; preds = %58
  %61 = icmp ugt i32 %6, 134217728
  br i1 %61, label %62, label %69

62:                                               ; preds = %60
  %63 = icmp ugt i32 %6, 268435456
  br i1 %63, label %64, label %69

64:                                               ; preds = %62
  %65 = icmp ugt i32 %6, 536870912
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = icmp ugt i32 %6, 1073741824
  %68 = select i1 %67, i32 62, i32 60
  br label %69

69:                                               ; preds = %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %4
  %70 = phi i32 [ 0, %4 ], [ 2, %8 ], [ 4, %10 ], [ 6, %12 ], [ 8, %14 ], [ 10, %16 ], [ 12, %18 ], [ 14, %20 ], [ 16, %22 ], [ 18, %24 ], [ 20, %26 ], [ 22, %28 ], [ 24, %30 ], [ 26, %32 ], [ 28, %34 ], [ 30, %36 ], [ 32, %38 ], [ 34, %40 ], [ 36, %42 ], [ 38, %44 ], [ 40, %46 ], [ 42, %48 ], [ 44, %50 ], [ 46, %52 ], [ 48, %54 ], [ 50, %56 ], [ 52, %58 ], [ 54, %60 ], [ 56, %62 ], [ 58, %64 ], [ %68, %66 ]
  %71 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 23
  store i32 %70, ptr %71, align 8, !tbaa !110
  %72 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 47
  store i32 0, ptr %72, align 4, !tbaa !119
  %73 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 49
  store i32 0, ptr %73, align 4, !tbaa !120
  %74 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !83
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load ptr, ptr %2, align 8, !tbaa !80
  %79 = tail call ptr %78(ptr noundef nonnull %2, i64 noundef 65536) #16
  store ptr %79, ptr %74, align 8, !tbaa !83
  %80 = icmp eq ptr %79, null
  br i1 %80, label %169, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds i8, ptr %79, i64 65536
  %83 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 5
  store ptr %82, ptr %83, align 8, !tbaa !121
  br label %84

84:                                               ; preds = %81, %69
  %85 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4
  %86 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 48
  %87 = load i32, ptr %86, align 8, !tbaa !75
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 21
  %91 = load i32, ptr %90, align 8, !tbaa !71
  %92 = icmp ne i32 %91, 0
  %93 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 42
  %94 = load i32, ptr %93, align 8, !tbaa !70
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i1 %92, i1 false
  %97 = zext i1 %96 to i32
  br label %98

98:                                               ; preds = %89, %84
  %99 = phi i32 [ 0, %84 ], [ %97, %89 ]
  %100 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 2
  store i32 %99, ptr %100, align 8, !tbaa !122
  %101 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 24
  %102 = load i32, ptr %101, align 4, !tbaa !67
  %103 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 25
  %104 = load i32, ptr %103, align 8, !tbaa !68
  %105 = add i32 %104, %102
  %106 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 29
  %107 = load ptr, ptr %106, align 8, !tbaa !51
  %108 = icmp eq ptr %107, null
  br i1 %108, label %117, label %109

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53
  %111 = load ptr, ptr %110, align 8, !tbaa !79
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 41
  %115 = load i32, ptr %114, align 4, !tbaa !52
  %116 = icmp eq i32 %115, %105
  br i1 %116, label %141, label %117

117:                                              ; preds = %113, %109, %98
  %118 = getelementptr inbounds %struct.ISzAlloc, ptr %2, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !82
  tail call void %119(ptr noundef %2, ptr noundef %107) #16
  %120 = load ptr, ptr %118, align 8, !tbaa !82
  %121 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 53
  %122 = load ptr, ptr %121, align 8, !tbaa !79
  tail call void %120(ptr noundef %2, ptr noundef %122) #16
  store ptr null, ptr %106, align 8, !tbaa !51
  store ptr null, ptr %121, align 8, !tbaa !79
  %123 = load ptr, ptr %2, align 8, !tbaa !80
  %124 = shl i32 768, %105
  %125 = sext i32 %124 to i64
  %126 = shl nsw i64 %125, 1
  %127 = tail call ptr %123(ptr noundef nonnull %2, i64 noundef %126) #16
  store ptr %127, ptr %106, align 8, !tbaa !51
  %128 = load ptr, ptr %2, align 8, !tbaa !80
  %129 = tail call ptr %128(ptr noundef nonnull %2, i64 noundef %126) #16
  store ptr %129, ptr %121, align 8, !tbaa !79
  %130 = load ptr, ptr %106, align 8, !tbaa !51
  %131 = icmp eq ptr %130, null
  %132 = icmp eq ptr %129, null
  %133 = select i1 %131, i1 true, i1 %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %117
  %135 = load ptr, ptr %118, align 8, !tbaa !82
  tail call void %135(ptr noundef nonnull %2, ptr noundef %130) #16
  %136 = load ptr, ptr %118, align 8, !tbaa !82
  %137 = load ptr, ptr %121, align 8, !tbaa !79
  tail call void %136(ptr noundef nonnull %2, ptr noundef %137) #16
  store ptr null, ptr %106, align 8, !tbaa !51
  store ptr null, ptr %121, align 8, !tbaa !79
  br label %169

138:                                              ; preds = %117
  %139 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 41
  store i32 %105, ptr %139, align 4, !tbaa !52
  %140 = load i32, ptr %100, align 8, !tbaa !122
  br label %141

141:                                              ; preds = %138, %113
  %142 = phi i32 [ %140, %138 ], [ %99, %113 ]
  %143 = load i32, ptr %5, align 8, !tbaa !64
  %144 = icmp ugt i32 %143, 16777216
  %145 = zext i1 %144 to i32
  %146 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 22
  store i32 %145, ptr %146, align 4, !tbaa !123
  %147 = add i32 %143, 4096
  %148 = icmp ult i32 %147, %1
  %149 = sub i32 %1, %143
  %150 = select i1 %148, i32 %149, i32 4096
  %151 = icmp eq i32 %142, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %141
  %153 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 3
  %154 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 15
  %155 = load i32, ptr %154, align 8, !tbaa !66
  %156 = tail call i32 @MatchFinderMt_Create(ptr noundef nonnull %153, i32 noundef %143, i32 noundef %150, i32 noundef %155, i32 noundef 273, ptr noundef %3) #16
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 1
  store ptr %153, ptr %159, align 8, !tbaa !124
  tail call void @MatchFinderMt_CreateVTable(ptr noundef nonnull %153, ptr noundef nonnull %0) #16
  br label %167

160:                                              ; preds = %141
  %161 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 15
  %162 = load i32, ptr %161, align 8, !tbaa !66
  %163 = tail call i32 @MatchFinder_Create(ptr noundef nonnull %85, i32 noundef %143, i32 noundef %150, i32 noundef %162, i32 noundef 273, ptr noundef %3) #16
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 1
  store ptr %85, ptr %166, align 8, !tbaa !124
  tail call void @MatchFinder_CreateVTable(ptr noundef nonnull %85, ptr noundef nonnull %0) #16
  br label %167

167:                                              ; preds = %165, %158
  tail call void @LzmaEnc_Init(ptr noundef nonnull %0)
  tail call void @LzmaEnc_InitPrices(ptr noundef nonnull %0)
  %168 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 45
  store i64 0, ptr %168, align 8, !tbaa !125
  br label %169

169:                                              ; preds = %77, %160, %134, %152, %167
  %170 = phi i32 [ 0, %167 ], [ 2, %77 ], [ 2, %160 ], [ 2, %134 ], [ %156, %152 ]
  ret i32 %170
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LzmaEnc_MemPrepare(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 {
  %7 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 19
  store i32 1, ptr %7, align 4, !tbaa !126
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 12
  store ptr %1, ptr %8, align 8, !tbaa !127
  %9 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 20
  store i64 %2, ptr %9, align 8, !tbaa !128
  %10 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 52
  store i32 1, ptr %10, align 8, !tbaa !118
  %11 = tail call fastcc i32 @LzmaEnc_AllocAndInit(ptr noundef %0, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @LzmaEnc_Finish(ptr noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !122
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 3
  tail call void @MatchFinderMt_ReleaseStream(ptr noundef nonnull %6) #16
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

declare void @MatchFinderMt_ReleaseStream(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @LzmaEnc_GetNumAvailableBytes(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct._IMatchFinder, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = tail call i32 %3(ptr noundef %5) #16
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @LzmaEnc_GetCurBuf(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct._IMatchFinder, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = tail call ptr %3(ptr noundef %5) #16
  %7 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 16
  %8 = load i32, ptr %7, align 4, !tbaa !99
  %9 = zext i32 %8 to i64
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LzmaEnc_CodeOneMemBlock(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4, ptr nocapture noundef %5) local_unnamed_addr #7 {
  %7 = alloca %struct.CSeqOutStreamBuf, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  store ptr @MyWrite, ptr %7, align 8, !tbaa !131
  %8 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %7, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !134
  %9 = load i64, ptr %3, align 8, !tbaa !135
  %10 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %7, i64 0, i32 2
  store i64 %9, ptr %10, align 8, !tbaa !136
  %11 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %7, i64 0, i32 3
  store i32 0, ptr %11, align 8, !tbaa !137
  %12 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 44
  store i32 0, ptr %12, align 8, !tbaa !74
  %13 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 47
  store i32 0, ptr %13, align 4, !tbaa !119
  %14 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 49
  store i32 0, ptr %14, align 4, !tbaa !120
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  tail call void @LzmaEnc_Init(ptr noundef nonnull %0)
  br label %17

17:                                               ; preds = %16, %6
  tail call void @LzmaEnc_InitPrices(ptr noundef nonnull %0)
  %18 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 45
  %19 = load i64, ptr %18, align 8, !tbaa !125
  %20 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43
  %21 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 2
  store i64 0, ptr %21, align 8, !tbaa !84
  store i32 -1, ptr %20, align 8, !tbaa !85
  %22 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 3
  store i64 1, ptr %22, align 8, !tbaa !86
  %23 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 1
  store i8 0, ptr %23, align 4, !tbaa !87
  %24 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  %26 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !88
  %27 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 8
  store i64 0, ptr %27, align 8, !tbaa !89
  %28 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 9
  store i32 0, ptr %28, align 8, !tbaa !90
  %29 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 7
  store ptr %7, ptr %29, align 8, !tbaa !138
  %30 = load i32, ptr %5, align 4, !tbaa !22
  %31 = call fastcc i32 @LzmaEnc_CodeOneBlock(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %4, i32 noundef %30)
  %32 = load i64, ptr %18, align 8, !tbaa !125
  %33 = sub i64 %32, %19
  %34 = trunc i64 %33 to i32
  store i32 %34, ptr %5, align 4, !tbaa !22
  %35 = load i64, ptr %10, align 8, !tbaa !136
  %36 = load i64, ptr %3, align 8, !tbaa !135
  %37 = sub i64 %36, %35
  store i64 %37, ptr %3, align 8, !tbaa !135
  %38 = load i32, ptr %11, align 8, !tbaa !137
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %31, i32 7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  ret i32 %40
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal i64 @MyWrite(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #11 {
  %4 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !136
  %6 = icmp ult i64 %5, %2
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %0, i64 0, i32 3
  store i32 1, ptr %8, align 8, !tbaa !137
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i64 [ %5, %7 ], [ %2, %3 ]
  %11 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !134
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %1, i64 %10, i1 false)
  %13 = load i64, ptr %4, align 8, !tbaa !136
  %14 = sub i64 %13, %10
  store i64 %14, ptr %4, align 8, !tbaa !136
  %15 = load ptr, ptr %11, align 8, !tbaa !134
  %16 = getelementptr inbounds i8, ptr %15, i64 %10
  store ptr %16, ptr %11, align 8, !tbaa !134
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LzmaEnc_CodeOneBlock(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 {
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  %7 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 52
  %8 = load i32, ptr %7, align 8, !tbaa !118
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !139
  %12 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !124
  tail call void %11(ptr noundef %13) #16
  store i32 0, ptr %7, align 8, !tbaa !118
  br label %14

14:                                               ; preds = %10, %4
  %15 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 47
  %16 = load i32, ptr %15, align 4, !tbaa !119
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 49
  %19 = load i32, ptr %18, align 4, !tbaa !120
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %17, i1 %20, i1 false
  br i1 %21, label %22, label %3168

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !140
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 27
  %28 = load i32, ptr %27, align 8, !tbaa !141
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %34

30:                                               ; preds = %22
  store i32 9, ptr %18, align 4, !tbaa !120
  %31 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 27
  %32 = load i32, ptr %31, align 8, !tbaa !141
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30, %26
  store i32 8, ptr %18, align 4, !tbaa !120
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ 8, %34 ], [ 9, %30 ]
  store i32 1, ptr %15, align 4, !tbaa !119
  br label %3168

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 45
  %39 = load i64, ptr %38, align 8, !tbaa !125
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i64 %39, 0
  br i1 %41, label %42, label %151

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct._IMatchFinder, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !129
  %45 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !124
  %47 = tail call i32 %44(ptr noundef %46) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = tail call fastcc i32 @Flush(ptr noundef nonnull %0, i32 noundef %40)
  br label %3168

51:                                               ; preds = %42
  %52 = load ptr, ptr %43, align 8, !tbaa !129
  %53 = load ptr, ptr %45, align 8, !tbaa !124
  %54 = tail call i32 %52(ptr noundef %53) #16
  %55 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 10
  store i32 %54, ptr %55, align 8, !tbaa !142
  %56 = getelementptr inbounds %struct._IMatchFinder, ptr %0, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !143
  %58 = load ptr, ptr %45, align 8, !tbaa !124
  %59 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 14
  %60 = tail call i32 %57(ptr noundef %58, ptr noundef nonnull %59) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %51
  %63 = add i32 %60, -2
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 14, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !22
  %67 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 15
  %68 = load i32, ptr %67, align 8, !tbaa !66
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct._IMatchFinder, ptr %0, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !130
  %73 = load ptr, ptr %45, align 8, !tbaa !124
  %74 = tail call ptr %72(ptr noundef %73) #16
  br label %75

75:                                               ; preds = %70, %51, %62
  %76 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 16
  %77 = load i32, ptr %76, align 4, !tbaa !99
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 4, !tbaa !99
  %79 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43
  %80 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 18
  %81 = load i32, ptr %80, align 8, !tbaa !31
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !29
  %85 = zext i16 %84 to i32
  %86 = load i32, ptr %79, align 8, !tbaa !85
  %87 = lshr i32 %86, 11
  %88 = mul i32 %87, %85
  %89 = sub nsw i32 2048, %85
  %90 = lshr i32 %89, 5
  store i32 %88, ptr %79, align 8
  %91 = trunc i32 %90 to i16
  %92 = add i16 %84, %91
  store i16 %92, ptr %83, align 2, !tbaa !29
  %93 = icmp ult i32 %88, 16777216
  br i1 %93, label %94, label %99

94:                                               ; preds = %75
  %95 = shl nuw i32 %88, 8
  store i32 %95, ptr %79, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %79)
  %96 = load i32, ptr %80, align 8, !tbaa !31
  %97 = load i32, ptr %76, align 4, !tbaa !99
  %98 = zext i32 %96 to i64
  br label %99

99:                                               ; preds = %75, %94
  %100 = phi i64 [ %82, %75 ], [ %98, %94 ]
  %101 = phi i32 [ %78, %75 ], [ %97, %94 ]
  %102 = getelementptr inbounds [12 x i32], ptr @kLiteralNextStates, i64 0, i64 %100
  %103 = load i32, ptr %102, align 4, !tbaa !22
  store i32 %103, ptr %80, align 8, !tbaa !31
  %104 = getelementptr inbounds %struct._IMatchFinder, ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !144
  %106 = load ptr, ptr %45, align 8, !tbaa !124
  %107 = sub i32 0, %101
  %108 = tail call zeroext i8 %105(ptr noundef %106, i32 noundef %107) #16
  %109 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 29
  %110 = load ptr, ptr %109, align 8, !tbaa !51
  %111 = zext i8 %108 to i32
  %112 = or i32 %111, 256
  %113 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 2
  br label %114

114:                                              ; preds = %144, %99
  %115 = phi i32 [ %112, %99 ], [ %145, %144 ]
  %116 = lshr i32 %115, 8
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i16, ptr %110, i64 %117
  %119 = load i16, ptr %118, align 2, !tbaa !29
  %120 = zext i16 %119 to i32
  %121 = load i32, ptr %79, align 8, !tbaa !85
  %122 = lshr i32 %121, 11
  %123 = mul i32 %122, %120
  %124 = and i32 %115, 128
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %114
  %127 = sub nsw i32 2048, %120
  %128 = lshr i32 %127, 5
  %129 = add nuw nsw i32 %128, %120
  br label %137

130:                                              ; preds = %114
  %131 = zext i32 %123 to i64
  %132 = load i64, ptr %113, align 8, !tbaa !84
  %133 = add i64 %132, %131
  store i64 %133, ptr %113, align 8, !tbaa !84
  %134 = sub i32 %121, %123
  %135 = lshr i32 %120, 5
  %136 = sub nsw i32 %120, %135
  br label %137

137:                                              ; preds = %130, %126
  %138 = phi i32 [ %123, %126 ], [ %134, %130 ]
  %139 = phi i32 [ %129, %126 ], [ %136, %130 ]
  store i32 %138, ptr %79, align 8
  %140 = trunc i32 %139 to i16
  store i16 %140, ptr %118, align 2, !tbaa !29
  %141 = icmp ult i32 %138, 16777216
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = shl nuw i32 %138, 8
  store i32 %143, ptr %79, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %79)
  br label %144

144:                                              ; preds = %142, %137
  %145 = shl i32 %115, 1
  %146 = icmp ult i32 %145, 65536
  br i1 %146, label %114, label %147, !llvm.loop !145

147:                                              ; preds = %144
  %148 = load i32, ptr %76, align 4, !tbaa !99
  %149 = add i32 %148, -1
  store i32 %149, ptr %76, align 4, !tbaa !99
  %150 = add i32 %40, 1
  br label %151

151:                                              ; preds = %147, %37
  %152 = phi i32 [ %150, %147 ], [ %40, %37 ]
  %153 = getelementptr inbounds %struct._IMatchFinder, ptr %0, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !129
  %155 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !124
  %157 = tail call i32 %154(ptr noundef %156) #16
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %3161, label %159

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 42
  %161 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 16
  %162 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 8
  %163 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 9
  %164 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 10
  %165 = getelementptr inbounds %struct._IMatchFinder, ptr %0, i64 0, i32 4
  %166 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 14
  %167 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 15
  %168 = getelementptr inbounds %struct._IMatchFinder, ptr %0, i64 0, i32 3
  %169 = getelementptr %struct.CLzmaEnc, ptr %0, i64 0, i32 17, i64 0
  %170 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 17, i64 1
  %171 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 17, i64 2
  %172 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 17, i64 3
  %173 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 28
  %174 = getelementptr inbounds %struct._IMatchFinder, ptr %0, i64 0, i32 5
  %175 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 6
  %176 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 7
  %177 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 1
  %178 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 2
  %179 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 3
  %180 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 18
  %181 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 0, i32 1
  %182 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 29
  %183 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 27
  %184 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 24
  %185 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13
  %186 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 1
  %187 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 1, i32 7
  %188 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 1, i32 2
  %189 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 1, i32 6
  %190 = getelementptr i8, ptr %0, i64 2908
  %191 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  %192 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %193 = getelementptr i8, ptr %0, i64 2912
  %194 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 0, i32 7
  %195 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 0, i32 6
  %196 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43
  %197 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 2
  %198 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39
  %199 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 38
  %200 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 22
  %201 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 46
  %202 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40
  %203 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 38, i64 1
  %204 = icmp eq i32 %1, 0
  %205 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 8
  %206 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 4
  %207 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 6
  %208 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 3
  %209 = zext i32 %2 to i64
  %210 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 38, i64 1
  %211 = getelementptr %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 3, i64 63
  br label %212

212:                                              ; preds = %159, %3158
  %213 = phi i32 [ %3041, %3158 ], [ %152, %159 ]
  %214 = phi i32 [ %3160, %3158 ], [ 0, %159 ]
  %215 = load i32, ptr %160, align 8, !tbaa !70
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %709, label %217

217:                                              ; preds = %212
  %218 = load i32, ptr %161, align 4, !tbaa !99
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %270

220:                                              ; preds = %217
  %221 = load ptr, ptr %153, align 8, !tbaa !129
  %222 = load ptr, ptr %155, align 8, !tbaa !124
  %223 = tail call i32 %221(ptr noundef %222) #16
  store i32 %223, ptr %164, align 8, !tbaa !142
  %224 = load ptr, ptr %165, align 8, !tbaa !143
  %225 = load ptr, ptr %155, align 8, !tbaa !124
  %226 = tail call i32 %224(ptr noundef %225, ptr noundef nonnull %166) #16
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %266, label %228

228:                                              ; preds = %220
  %229 = add i32 %226, -2
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 14, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !22
  %233 = load i32, ptr %167, align 8, !tbaa !66
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %266

235:                                              ; preds = %228
  %236 = load ptr, ptr %168, align 8, !tbaa !130
  %237 = load ptr, ptr %155, align 8, !tbaa !124
  %238 = tail call ptr %236(ptr noundef %237) #16
  %239 = getelementptr inbounds i8, ptr %238, i64 -1
  %240 = add i32 %226, -1
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 14, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !22
  %244 = add i32 %243, 1
  %245 = load i32, ptr %164, align 8, !tbaa !142
  %246 = tail call i32 @llvm.umin.i32(i32 %245, i32 273)
  %247 = zext i32 %244 to i64
  %248 = sub nsw i64 0, %247
  %249 = getelementptr inbounds i8, ptr %239, i64 %248
  %250 = icmp ult i32 %232, %246
  br i1 %250, label %251, label %266

251:                                              ; preds = %235
  %252 = zext i32 %232 to i64
  br label %253

253:                                              ; preds = %260, %251
  %254 = phi i64 [ %252, %251 ], [ %261, %260 ]
  %255 = getelementptr inbounds i8, ptr %239, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !24
  %257 = getelementptr inbounds i8, ptr %249, i64 %254
  %258 = load i8, ptr %257, align 1, !tbaa !24
  %259 = icmp eq i8 %256, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %253
  %261 = add nuw nsw i64 %254, 1
  %262 = trunc i64 %261 to i32
  %263 = icmp eq i32 %246, %262
  br i1 %263, label %266, label %253, !llvm.loop !146

264:                                              ; preds = %253
  %265 = trunc i64 %254 to i32
  br label %266

266:                                              ; preds = %260, %264, %235, %228, %220
  %267 = phi i32 [ %232, %228 ], [ 0, %220 ], [ %232, %235 ], [ %265, %264 ], [ %246, %260 ]
  %268 = load i32, ptr %161, align 4, !tbaa !99
  %269 = add i32 %268, 1
  store i32 %269, ptr %161, align 4, !tbaa !99
  br label %273

270:                                              ; preds = %217
  %271 = load i32, ptr %162, align 8, !tbaa !147
  %272 = load i32, ptr %163, align 4, !tbaa !148
  br label %273

273:                                              ; preds = %270, %266
  %274 = phi i32 [ %226, %266 ], [ %272, %270 ]
  %275 = phi i32 [ %267, %266 ], [ %271, %270 ]
  %276 = load i32, ptr %164, align 8, !tbaa !142
  %277 = icmp ult i32 %276, 2
  br i1 %277, label %2424, label %278

278:                                              ; preds = %273
  %279 = tail call i32 @llvm.umin.i32(i32 %276, i32 273)
  %280 = load ptr, ptr %168, align 8, !tbaa !130
  %281 = load ptr, ptr %155, align 8, !tbaa !124
  %282 = tail call ptr %280(ptr noundef %281) #16
  %283 = getelementptr inbounds i8, ptr %282, i64 -1
  %284 = load i8, ptr %283, align 1, !tbaa !24
  %285 = icmp ugt i32 %279, 2
  %286 = load i32, ptr %169, align 4, !tbaa !22
  %287 = add i32 %286, 1
  %288 = zext i32 %287 to i64
  %289 = sub nsw i64 0, %288
  %290 = getelementptr inbounds i8, ptr %283, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !24
  %292 = icmp eq i8 %284, %291
  br i1 %292, label %293, label %322

293:                                              ; preds = %278
  %294 = load i8, ptr %282, align 1, !tbaa !24
  %295 = getelementptr inbounds i8, ptr %290, i64 1
  %296 = load i8, ptr %295, align 1, !tbaa !24
  %297 = icmp eq i8 %294, %296
  br i1 %297, label %298, label %322

298:                                              ; preds = %293
  br i1 %285, label %299, label %313

299:                                              ; preds = %298
  %300 = zext i32 %279 to i64
  br label %301

301:                                              ; preds = %308, %299
  %302 = phi i64 [ 2, %299 ], [ %309, %308 ]
  %303 = getelementptr inbounds i8, ptr %283, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !24
  %305 = getelementptr inbounds i8, ptr %290, i64 %302
  %306 = load i8, ptr %305, align 1, !tbaa !24
  %307 = icmp eq i8 %304, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %301
  %309 = add nuw nsw i64 %302, 1
  %310 = icmp eq i64 %309, %300
  br i1 %310, label %313, label %301, !llvm.loop !149

311:                                              ; preds = %301
  %312 = trunc i64 %302 to i32
  br label %313

313:                                              ; preds = %308, %311, %298
  %314 = phi i32 [ 2, %298 ], [ %312, %311 ], [ %279, %308 ]
  %315 = load i32, ptr %167, align 8, !tbaa !66
  %316 = icmp ult i32 %314, %315
  br i1 %316, label %322, label %317

317:                                              ; preds = %427, %389, %351, %313
  %318 = phi i32 [ 0, %313 ], [ 1, %351 ], [ 2, %389 ], [ 3, %427 ]
  %319 = phi i32 [ %314, %313 ], [ %352, %351 ], [ %390, %389 ], [ %428, %427 ]
  %320 = add i32 %319, -1
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %2418, label %701

322:                                              ; preds = %313, %293, %278
  %323 = phi i32 [ 0, %278 ], [ 0, %293 ], [ %314, %313 ]
  %324 = load i32, ptr %170, align 4, !tbaa !22
  %325 = add i32 %324, 1
  %326 = zext i32 %325 to i64
  %327 = sub nsw i64 0, %326
  %328 = getelementptr inbounds i8, ptr %283, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !24
  %330 = icmp eq i8 %284, %329
  br i1 %330, label %331, label %359

331:                                              ; preds = %322
  %332 = load i8, ptr %282, align 1, !tbaa !24
  %333 = getelementptr inbounds i8, ptr %328, i64 1
  %334 = load i8, ptr %333, align 1, !tbaa !24
  %335 = icmp eq i8 %332, %334
  br i1 %335, label %336, label %359

336:                                              ; preds = %331
  br i1 %285, label %337, label %351

337:                                              ; preds = %336
  %338 = zext i32 %279 to i64
  br label %339

339:                                              ; preds = %346, %337
  %340 = phi i64 [ 2, %337 ], [ %347, %346 ]
  %341 = getelementptr inbounds i8, ptr %283, i64 %340
  %342 = load i8, ptr %341, align 1, !tbaa !24
  %343 = getelementptr inbounds i8, ptr %328, i64 %340
  %344 = load i8, ptr %343, align 1, !tbaa !24
  %345 = icmp eq i8 %342, %344
  br i1 %345, label %346, label %349

346:                                              ; preds = %339
  %347 = add nuw nsw i64 %340, 1
  %348 = icmp eq i64 %347, %338
  br i1 %348, label %351, label %339, !llvm.loop !149

349:                                              ; preds = %339
  %350 = trunc i64 %340 to i32
  br label %351

351:                                              ; preds = %346, %349, %336
  %352 = phi i32 [ 2, %336 ], [ %350, %349 ], [ %279, %346 ]
  %353 = load i32, ptr %167, align 8, !tbaa !66
  %354 = icmp ult i32 %352, %353
  br i1 %354, label %355, label %317

355:                                              ; preds = %351
  %356 = icmp ugt i32 %352, %323
  %357 = tail call i32 @llvm.umax.i32(i32 %352, i32 %323)
  %358 = zext i1 %356 to i32
  br label %359

359:                                              ; preds = %355, %331, %322
  %360 = phi i32 [ %323, %322 ], [ %323, %331 ], [ %357, %355 ]
  %361 = phi i32 [ 0, %322 ], [ 0, %331 ], [ %358, %355 ]
  %362 = load i32, ptr %171, align 4, !tbaa !22
  %363 = add i32 %362, 1
  %364 = zext i32 %363 to i64
  %365 = sub nsw i64 0, %364
  %366 = getelementptr inbounds i8, ptr %283, i64 %365
  %367 = load i8, ptr %366, align 1, !tbaa !24
  %368 = icmp eq i8 %284, %367
  br i1 %368, label %369, label %397

369:                                              ; preds = %359
  %370 = load i8, ptr %282, align 1, !tbaa !24
  %371 = getelementptr inbounds i8, ptr %366, i64 1
  %372 = load i8, ptr %371, align 1, !tbaa !24
  %373 = icmp eq i8 %370, %372
  br i1 %373, label %374, label %397

374:                                              ; preds = %369
  br i1 %285, label %375, label %389

375:                                              ; preds = %374
  %376 = zext i32 %279 to i64
  br label %377

377:                                              ; preds = %384, %375
  %378 = phi i64 [ 2, %375 ], [ %385, %384 ]
  %379 = getelementptr inbounds i8, ptr %283, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !24
  %381 = getelementptr inbounds i8, ptr %366, i64 %378
  %382 = load i8, ptr %381, align 1, !tbaa !24
  %383 = icmp eq i8 %380, %382
  br i1 %383, label %384, label %387

384:                                              ; preds = %377
  %385 = add nuw nsw i64 %378, 1
  %386 = icmp eq i64 %385, %376
  br i1 %386, label %389, label %377, !llvm.loop !149

387:                                              ; preds = %377
  %388 = trunc i64 %378 to i32
  br label %389

389:                                              ; preds = %384, %387, %374
  %390 = phi i32 [ 2, %374 ], [ %388, %387 ], [ %279, %384 ]
  %391 = load i32, ptr %167, align 8, !tbaa !66
  %392 = icmp ult i32 %390, %391
  br i1 %392, label %393, label %317

393:                                              ; preds = %389
  %394 = icmp ugt i32 %390, %360
  %395 = tail call i32 @llvm.umax.i32(i32 %390, i32 %360)
  %396 = select i1 %394, i32 2, i32 %361
  br label %397

397:                                              ; preds = %393, %369, %359
  %398 = phi i32 [ %360, %359 ], [ %360, %369 ], [ %395, %393 ]
  %399 = phi i32 [ %361, %359 ], [ %361, %369 ], [ %396, %393 ]
  %400 = load i32, ptr %172, align 4, !tbaa !22
  %401 = add i32 %400, 1
  %402 = zext i32 %401 to i64
  %403 = sub nsw i64 0, %402
  %404 = getelementptr inbounds i8, ptr %283, i64 %403
  %405 = load i8, ptr %404, align 1, !tbaa !24
  %406 = icmp eq i8 %284, %405
  br i1 %406, label %407, label %435

407:                                              ; preds = %397
  %408 = load i8, ptr %282, align 1, !tbaa !24
  %409 = getelementptr inbounds i8, ptr %404, i64 1
  %410 = load i8, ptr %409, align 1, !tbaa !24
  %411 = icmp eq i8 %408, %410
  br i1 %411, label %412, label %435

412:                                              ; preds = %407
  br i1 %285, label %413, label %427

413:                                              ; preds = %412
  %414 = zext i32 %279 to i64
  br label %415

415:                                              ; preds = %422, %413
  %416 = phi i64 [ 2, %413 ], [ %423, %422 ]
  %417 = getelementptr inbounds i8, ptr %283, i64 %416
  %418 = load i8, ptr %417, align 1, !tbaa !24
  %419 = getelementptr inbounds i8, ptr %404, i64 %416
  %420 = load i8, ptr %419, align 1, !tbaa !24
  %421 = icmp eq i8 %418, %420
  br i1 %421, label %422, label %425

422:                                              ; preds = %415
  %423 = add nuw nsw i64 %416, 1
  %424 = icmp eq i64 %423, %414
  br i1 %424, label %427, label %415, !llvm.loop !149

425:                                              ; preds = %415
  %426 = trunc i64 %416 to i32
  br label %427

427:                                              ; preds = %422, %425, %412
  %428 = phi i32 [ 2, %412 ], [ %426, %425 ], [ %279, %422 ]
  %429 = load i32, ptr %167, align 8, !tbaa !66
  %430 = icmp ult i32 %428, %429
  br i1 %430, label %431, label %317

431:                                              ; preds = %427
  %432 = icmp ugt i32 %428, %398
  %433 = tail call i32 @llvm.umax.i32(i32 %428, i32 %398)
  %434 = select i1 %432, i32 3, i32 %399
  br label %435

435:                                              ; preds = %431, %407, %397
  %436 = phi i32 [ %398, %397 ], [ %398, %407 ], [ %433, %431 ]
  %437 = phi i32 [ %399, %397 ], [ %399, %407 ], [ %434, %431 ]
  %438 = load i32, ptr %167, align 8, !tbaa !66
  %439 = icmp ult i32 %275, %438
  br i1 %439, label %448, label %440

440:                                              ; preds = %435
  %441 = add i32 %274, -1
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds i32, ptr %166, i64 %442
  %444 = load i32, ptr %443, align 4, !tbaa !22
  %445 = add i32 %444, 4
  %446 = add i32 %275, -1
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %2424, label %701

448:                                              ; preds = %435
  %449 = icmp ugt i32 %275, 1
  br i1 %449, label %450, label %485

450:                                              ; preds = %448
  %451 = add i32 %274, -1
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds i32, ptr %166, i64 %452
  %454 = load i32, ptr %453, align 4, !tbaa !22
  %455 = icmp ugt i32 %274, 2
  br i1 %455, label %456, label %478

456:                                              ; preds = %450
  %457 = zext i32 %274 to i64
  br label %462

458:                                              ; preds = %472
  %459 = add nsw i64 %463, -2
  %460 = trunc i64 %459 to i32
  %461 = icmp ugt i32 %460, 2
  br i1 %461, label %462, label %478, !llvm.loop !150

462:                                              ; preds = %458, %456
  %463 = phi i64 [ %457, %456 ], [ %459, %458 ]
  %464 = phi i32 [ %454, %456 ], [ %476, %458 ]
  %465 = phi i32 [ %275, %456 ], [ %469, %458 ]
  %466 = add nsw i64 %463, 4294967292
  %467 = and i64 %466, 4294967295
  %468 = getelementptr inbounds i32, ptr %166, i64 %467
  %469 = load i32, ptr %468, align 4, !tbaa !22
  %470 = add i32 %469, 1
  %471 = icmp eq i32 %465, %470
  br i1 %471, label %472, label %478

472:                                              ; preds = %462
  %473 = lshr i32 %464, 7
  %474 = add nsw i64 %463, -3
  %475 = getelementptr inbounds i32, ptr %166, i64 %474
  %476 = load i32, ptr %475, align 4, !tbaa !22
  %477 = icmp ugt i32 %473, %476
  br i1 %477, label %458, label %478

478:                                              ; preds = %472, %462, %458, %450
  %479 = phi i32 [ %275, %450 ], [ %465, %462 ], [ %465, %472 ], [ %469, %458 ]
  %480 = phi i32 [ %454, %450 ], [ %464, %462 ], [ %464, %472 ], [ %476, %458 ]
  %481 = icmp eq i32 %479, 2
  %482 = icmp ugt i32 %480, 127
  %483 = select i1 %481, i1 %482, i1 false
  %484 = select i1 %483, i32 1, i32 %479
  br label %485

485:                                              ; preds = %478, %448
  %486 = phi i32 [ %480, %478 ], [ 0, %448 ]
  %487 = phi i32 [ %484, %478 ], [ %275, %448 ]
  %488 = icmp ugt i32 %436, 1
  br i1 %488, label %489, label %504

489:                                              ; preds = %485
  %490 = add i32 %436, 1
  %491 = icmp ult i32 %490, %487
  br i1 %491, label %492, label %502

492:                                              ; preds = %489
  %493 = add i32 %436, 2
  %494 = icmp uge i32 %493, %487
  %495 = icmp ugt i32 %486, 511
  %496 = select i1 %494, i1 %495, i1 false
  br i1 %496, label %502, label %497

497:                                              ; preds = %492
  %498 = add i32 %436, 3
  %499 = icmp uge i32 %498, %487
  %500 = icmp ugt i32 %486, 32767
  %501 = select i1 %499, i1 %500, i1 false
  br i1 %501, label %502, label %504

502:                                              ; preds = %497, %492, %489
  %503 = add i32 %436, -1
  br label %701

504:                                              ; preds = %497, %485
  %505 = icmp ult i32 %487, 2
  %506 = icmp ult i32 %279, 3
  %507 = select i1 %505, i1 true, i1 %506
  br i1 %507, label %2424, label %508

508:                                              ; preds = %504
  %509 = load ptr, ptr %153, align 8, !tbaa !129
  %510 = load ptr, ptr %155, align 8, !tbaa !124
  %511 = tail call i32 %509(ptr noundef %510) #16
  store i32 %511, ptr %164, align 8, !tbaa !142
  %512 = load ptr, ptr %165, align 8, !tbaa !143
  %513 = load ptr, ptr %155, align 8, !tbaa !124
  %514 = tail call i32 %512(ptr noundef %513, ptr noundef nonnull %166) #16
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %519

516:                                              ; preds = %508
  %517 = load i32, ptr %161, align 4, !tbaa !99
  %518 = add i32 %517, 1
  store i32 %518, ptr %161, align 4, !tbaa !99
  store i32 0, ptr %163, align 4, !tbaa !22
  store i32 0, ptr %162, align 8, !tbaa !147
  br label %586

519:                                              ; preds = %508
  %520 = add i32 %514, -2
  %521 = zext i32 %520 to i64
  %522 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 14, i64 %521
  %523 = load i32, ptr %522, align 4, !tbaa !22
  %524 = load i32, ptr %167, align 8, !tbaa !66
  %525 = icmp eq i32 %523, %524
  br i1 %525, label %526, label %557

526:                                              ; preds = %519
  %527 = load ptr, ptr %168, align 8, !tbaa !130
  %528 = load ptr, ptr %155, align 8, !tbaa !124
  %529 = tail call ptr %527(ptr noundef %528) #16
  %530 = getelementptr inbounds i8, ptr %529, i64 -1
  %531 = add i32 %514, -1
  %532 = zext i32 %531 to i64
  %533 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 14, i64 %532
  %534 = load i32, ptr %533, align 4, !tbaa !22
  %535 = add i32 %534, 1
  %536 = load i32, ptr %164, align 8, !tbaa !142
  %537 = tail call i32 @llvm.umin.i32(i32 %536, i32 273)
  %538 = zext i32 %535 to i64
  %539 = sub nsw i64 0, %538
  %540 = getelementptr inbounds i8, ptr %530, i64 %539
  %541 = icmp ult i32 %523, %537
  br i1 %541, label %542, label %557

542:                                              ; preds = %526
  %543 = zext i32 %523 to i64
  br label %544

544:                                              ; preds = %551, %542
  %545 = phi i64 [ %543, %542 ], [ %552, %551 ]
  %546 = getelementptr inbounds i8, ptr %530, i64 %545
  %547 = load i8, ptr %546, align 1, !tbaa !24
  %548 = getelementptr inbounds i8, ptr %540, i64 %545
  %549 = load i8, ptr %548, align 1, !tbaa !24
  %550 = icmp eq i8 %547, %549
  br i1 %550, label %551, label %555

551:                                              ; preds = %544
  %552 = add nuw nsw i64 %545, 1
  %553 = trunc i64 %552 to i32
  %554 = icmp eq i32 %537, %553
  br i1 %554, label %557, label %544, !llvm.loop !146

555:                                              ; preds = %544
  %556 = trunc i64 %545 to i32
  br label %557

557:                                              ; preds = %551, %555, %526, %519
  %558 = phi i32 [ %523, %519 ], [ %523, %526 ], [ %556, %555 ], [ %537, %551 ]
  %559 = load i32, ptr %161, align 4, !tbaa !99
  %560 = add i32 %559, 1
  store i32 %560, ptr %161, align 4, !tbaa !99
  store i32 %514, ptr %163, align 4, !tbaa !22
  store i32 %558, ptr %162, align 8, !tbaa !147
  %561 = icmp ugt i32 %558, 1
  br i1 %561, label %562, label %586

562:                                              ; preds = %557
  %563 = add i32 %514, -1
  %564 = zext i32 %563 to i64
  %565 = getelementptr inbounds i32, ptr %166, i64 %564
  %566 = load i32, ptr %565, align 4, !tbaa !22
  %567 = icmp uge i32 %558, %487
  %568 = icmp ult i32 %566, %486
  %569 = select i1 %567, i1 %568, i1 false
  br i1 %569, label %2424, label %570

570:                                              ; preds = %562
  %571 = add i32 %487, 1
  %572 = icmp eq i32 %558, %571
  %573 = lshr i32 %566, 7
  %574 = icmp ule i32 %573, %486
  %575 = select i1 %572, i1 %574, i1 false
  %576 = icmp ugt i32 %558, %571
  %577 = or i1 %576, %575
  br i1 %577, label %2424, label %578

578:                                              ; preds = %570
  %579 = add i32 %558, 1
  %580 = icmp uge i32 %579, %487
  %581 = icmp ugt i32 %487, 2
  %582 = and i1 %581, %580
  %583 = lshr i32 %486, 7
  %584 = icmp ugt i32 %583, %566
  %585 = select i1 %582, i1 %584, i1 false
  br i1 %585, label %2424, label %586

586:                                              ; preds = %578, %557, %516
  %587 = load ptr, ptr %168, align 8, !tbaa !130
  %588 = load ptr, ptr %155, align 8, !tbaa !124
  %589 = tail call ptr %587(ptr noundef %588) #16
  %590 = getelementptr inbounds i8, ptr %589, i64 -1
  %591 = load i8, ptr %590, align 1, !tbaa !24
  %592 = add i32 %487, -1
  %593 = icmp ugt i32 %592, 2
  %594 = load i32, ptr %169, align 4, !tbaa !22
  %595 = add i32 %594, 1
  %596 = zext i32 %595 to i64
  %597 = sub nsw i64 0, %596
  %598 = getelementptr inbounds i8, ptr %590, i64 %597
  %599 = load i8, ptr %598, align 1, !tbaa !24
  %600 = icmp eq i8 %591, %599
  br i1 %600, label %601, label %619

601:                                              ; preds = %586
  %602 = load i8, ptr %589, align 1, !tbaa !24
  %603 = getelementptr inbounds i8, ptr %598, i64 1
  %604 = load i8, ptr %603, align 1, !tbaa !24
  %605 = icmp eq i8 %602, %604
  br i1 %605, label %606, label %619

606:                                              ; preds = %601
  br i1 %593, label %607, label %2424

607:                                              ; preds = %606
  %608 = zext i32 %592 to i64
  br label %612

609:                                              ; preds = %612
  %610 = add nuw nsw i64 %613, 1
  %611 = icmp eq i64 %610, %608
  br i1 %611, label %2424, label %612, !llvm.loop !151

612:                                              ; preds = %609, %607
  %613 = phi i64 [ 2, %607 ], [ %610, %609 ]
  %614 = getelementptr inbounds i8, ptr %590, i64 %613
  %615 = load i8, ptr %614, align 1, !tbaa !24
  %616 = getelementptr inbounds i8, ptr %598, i64 %613
  %617 = load i8, ptr %616, align 1, !tbaa !24
  %618 = icmp eq i8 %615, %617
  br i1 %618, label %609, label %619

619:                                              ; preds = %612, %601, %586
  %620 = load i32, ptr %170, align 4, !tbaa !22
  %621 = add i32 %620, 1
  %622 = zext i32 %621 to i64
  %623 = sub nsw i64 0, %622
  %624 = getelementptr inbounds i8, ptr %590, i64 %623
  %625 = load i8, ptr %624, align 1, !tbaa !24
  %626 = icmp eq i8 %591, %625
  br i1 %626, label %627, label %642

627:                                              ; preds = %619
  %628 = load i8, ptr %589, align 1, !tbaa !24
  %629 = getelementptr inbounds i8, ptr %624, i64 1
  %630 = load i8, ptr %629, align 1, !tbaa !24
  %631 = icmp eq i8 %628, %630
  br i1 %631, label %632, label %642

632:                                              ; preds = %627
  br i1 %593, label %633, label %2424

633:                                              ; preds = %632
  %634 = zext i32 %592 to i64
  br label %635

635:                                              ; preds = %650, %633
  %636 = phi i64 [ 2, %633 ], [ %651, %650 ]
  %637 = getelementptr inbounds i8, ptr %590, i64 %636
  %638 = load i8, ptr %637, align 1, !tbaa !24
  %639 = getelementptr inbounds i8, ptr %624, i64 %636
  %640 = load i8, ptr %639, align 1, !tbaa !24
  %641 = icmp eq i8 %638, %640
  br i1 %641, label %650, label %642

642:                                              ; preds = %635, %627, %619
  %643 = load i32, ptr %171, align 4, !tbaa !22
  %644 = add i32 %643, 1
  %645 = zext i32 %644 to i64
  %646 = sub nsw i64 0, %645
  %647 = getelementptr inbounds i8, ptr %590, i64 %646
  %648 = load i8, ptr %647, align 1, !tbaa !24
  %649 = icmp eq i8 %591, %648
  br i1 %649, label %653, label %668

650:                                              ; preds = %635
  %651 = add nuw nsw i64 %636, 1
  %652 = icmp eq i64 %651, %634
  br i1 %652, label %2424, label %635, !llvm.loop !151

653:                                              ; preds = %642
  %654 = load i8, ptr %589, align 1, !tbaa !24
  %655 = getelementptr inbounds i8, ptr %647, i64 1
  %656 = load i8, ptr %655, align 1, !tbaa !24
  %657 = icmp eq i8 %654, %656
  br i1 %657, label %658, label %668

658:                                              ; preds = %653
  br i1 %593, label %659, label %2424

659:                                              ; preds = %658
  %660 = zext i32 %592 to i64
  br label %661

661:                                              ; preds = %676, %659
  %662 = phi i64 [ 2, %659 ], [ %677, %676 ]
  %663 = getelementptr inbounds i8, ptr %590, i64 %662
  %664 = load i8, ptr %663, align 1, !tbaa !24
  %665 = getelementptr inbounds i8, ptr %647, i64 %662
  %666 = load i8, ptr %665, align 1, !tbaa !24
  %667 = icmp eq i8 %664, %666
  br i1 %667, label %676, label %668

668:                                              ; preds = %661, %653, %642
  %669 = load i32, ptr %172, align 4, !tbaa !22
  %670 = add i32 %669, 1
  %671 = zext i32 %670 to i64
  %672 = sub nsw i64 0, %671
  %673 = getelementptr inbounds i8, ptr %590, i64 %672
  %674 = load i8, ptr %673, align 1, !tbaa !24
  %675 = icmp eq i8 %591, %674
  br i1 %675, label %679, label %694

676:                                              ; preds = %661
  %677 = add nuw nsw i64 %662, 1
  %678 = icmp eq i64 %677, %660
  br i1 %678, label %2424, label %661, !llvm.loop !151

679:                                              ; preds = %668
  %680 = load i8, ptr %589, align 1, !tbaa !24
  %681 = getelementptr inbounds i8, ptr %673, i64 1
  %682 = load i8, ptr %681, align 1, !tbaa !24
  %683 = icmp eq i8 %680, %682
  br i1 %683, label %684, label %694

684:                                              ; preds = %679
  br i1 %593, label %685, label %2424

685:                                              ; preds = %684
  %686 = zext i32 %592 to i64
  br label %687

687:                                              ; preds = %698, %685
  %688 = phi i64 [ 2, %685 ], [ %699, %698 ]
  %689 = getelementptr inbounds i8, ptr %590, i64 %688
  %690 = load i8, ptr %689, align 1, !tbaa !24
  %691 = getelementptr inbounds i8, ptr %673, i64 %688
  %692 = load i8, ptr %691, align 1, !tbaa !24
  %693 = icmp eq i8 %690, %692
  br i1 %693, label %698, label %694

694:                                              ; preds = %687, %679, %668
  %695 = add i32 %486, 4
  %696 = add i32 %487, -2
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %2418, label %701

698:                                              ; preds = %687
  %699 = add nuw nsw i64 %688, 1
  %700 = icmp eq i64 %699, %686
  br i1 %700, label %2424, label %687, !llvm.loop !151

701:                                              ; preds = %694, %502, %440, %317
  %702 = phi i32 [ %437, %502 ], [ %695, %694 ], [ %445, %440 ], [ %318, %317 ]
  %703 = phi i32 [ %503, %502 ], [ %696, %694 ], [ %446, %440 ], [ %320, %317 ]
  %704 = phi i32 [ %436, %502 ], [ %487, %694 ], [ %275, %440 ], [ %319, %317 ]
  %705 = load i32, ptr %161, align 4, !tbaa !99
  %706 = add i32 %705, %703
  store i32 %706, ptr %161, align 4, !tbaa !99
  %707 = load ptr, ptr %174, align 8, !tbaa !152
  %708 = load ptr, ptr %155, align 8, !tbaa !124
  tail call void %707(ptr noundef %708, i32 noundef %703) #16
  br label %2424

709:                                              ; preds = %212
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %710 = load i32, ptr %175, align 8, !tbaa !97
  %711 = load i32, ptr %176, align 4, !tbaa !98
  %712 = icmp eq i32 %710, %711
  br i1 %712, label %720, label %713

713:                                              ; preds = %709
  %714 = zext i32 %711 to i64
  %715 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %714, i32 6
  %716 = load i32, ptr %715, align 4, !tbaa !153
  %717 = sub i32 %716, %711
  %718 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %714, i32 7
  %719 = load i32, ptr %718, align 4, !tbaa !155
  store i32 %716, ptr %176, align 4, !tbaa !98
  br label %2415

720:                                              ; preds = %709
  store i32 0, ptr %175, align 8, !tbaa !97
  store i32 0, ptr %176, align 4, !tbaa !98
  %721 = load i32, ptr %161, align 4, !tbaa !99
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %773

723:                                              ; preds = %720
  %724 = load ptr, ptr %153, align 8, !tbaa !129
  %725 = load ptr, ptr %155, align 8, !tbaa !124
  %726 = tail call i32 %724(ptr noundef %725) #16
  store i32 %726, ptr %164, align 8, !tbaa !142
  %727 = load ptr, ptr %165, align 8, !tbaa !143
  %728 = load ptr, ptr %155, align 8, !tbaa !124
  %729 = tail call i32 %727(ptr noundef %728, ptr noundef nonnull %166) #16
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %769, label %731

731:                                              ; preds = %723
  %732 = add i32 %729, -2
  %733 = zext i32 %732 to i64
  %734 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 14, i64 %733
  %735 = load i32, ptr %734, align 4, !tbaa !22
  %736 = load i32, ptr %167, align 8, !tbaa !66
  %737 = icmp eq i32 %735, %736
  br i1 %737, label %738, label %769

738:                                              ; preds = %731
  %739 = load ptr, ptr %168, align 8, !tbaa !130
  %740 = load ptr, ptr %155, align 8, !tbaa !124
  %741 = tail call ptr %739(ptr noundef %740) #16
  %742 = getelementptr inbounds i8, ptr %741, i64 -1
  %743 = add i32 %729, -1
  %744 = zext i32 %743 to i64
  %745 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 14, i64 %744
  %746 = load i32, ptr %745, align 4, !tbaa !22
  %747 = add i32 %746, 1
  %748 = load i32, ptr %164, align 8, !tbaa !142
  %749 = tail call i32 @llvm.umin.i32(i32 %748, i32 273)
  %750 = zext i32 %747 to i64
  %751 = sub nsw i64 0, %750
  %752 = getelementptr inbounds i8, ptr %742, i64 %751
  %753 = icmp ult i32 %735, %749
  br i1 %753, label %754, label %769

754:                                              ; preds = %738
  %755 = zext i32 %735 to i64
  br label %756

756:                                              ; preds = %763, %754
  %757 = phi i64 [ %755, %754 ], [ %764, %763 ]
  %758 = getelementptr inbounds i8, ptr %742, i64 %757
  %759 = load i8, ptr %758, align 1, !tbaa !24
  %760 = getelementptr inbounds i8, ptr %752, i64 %757
  %761 = load i8, ptr %760, align 1, !tbaa !24
  %762 = icmp eq i8 %759, %761
  br i1 %762, label %763, label %767

763:                                              ; preds = %756
  %764 = add nuw nsw i64 %757, 1
  %765 = trunc i64 %764 to i32
  %766 = icmp eq i32 %749, %765
  br i1 %766, label %769, label %756, !llvm.loop !146

767:                                              ; preds = %756
  %768 = trunc i64 %757 to i32
  br label %769

769:                                              ; preds = %763, %767, %738, %731, %723
  %770 = phi i32 [ %735, %731 ], [ 0, %723 ], [ %735, %738 ], [ %768, %767 ], [ %749, %763 ]
  %771 = load i32, ptr %161, align 4, !tbaa !99
  %772 = add i32 %771, 1
  store i32 %772, ptr %161, align 4, !tbaa !99
  br label %776

773:                                              ; preds = %720
  %774 = load i32, ptr %162, align 8, !tbaa !147
  %775 = load i32, ptr %163, align 4, !tbaa !148
  br label %776

776:                                              ; preds = %773, %769
  %777 = phi i32 [ %729, %769 ], [ %775, %773 ]
  %778 = phi i32 [ %770, %769 ], [ %774, %773 ]
  %779 = load i32, ptr %164, align 8, !tbaa !142
  %780 = icmp ult i32 %779, 2
  br i1 %780, label %2415, label %781

781:                                              ; preds = %776
  %782 = tail call i32 @llvm.umin.i32(i32 %779, i32 273)
  %783 = load ptr, ptr %168, align 8, !tbaa !130
  %784 = load ptr, ptr %155, align 8, !tbaa !124
  %785 = tail call ptr %783(ptr noundef %784) #16
  %786 = getelementptr inbounds i8, ptr %785, i64 -1
  %787 = load i8, ptr %786, align 1, !tbaa !24
  %788 = icmp ult i32 %782, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %169, i64 16, i1 false), !tbaa !22
  %789 = load i32, ptr %169, align 4, !tbaa !22
  %790 = add i32 %789, 1
  %791 = zext i32 %790 to i64
  %792 = sub nsw i64 0, %791
  %793 = getelementptr inbounds i8, ptr %786, i64 %792
  %794 = load i8, ptr %793, align 1, !tbaa !24
  %795 = icmp eq i8 %787, %794
  br i1 %795, label %796, label %817

796:                                              ; preds = %781
  %797 = load i8, ptr %785, align 1, !tbaa !24
  %798 = getelementptr inbounds i8, ptr %793, i64 1
  %799 = load i8, ptr %798, align 1, !tbaa !24
  %800 = icmp ne i8 %797, %799
  %801 = select i1 %800, i1 true, i1 %788
  %802 = select i1 %800, i32 0, i32 2
  br i1 %801, label %817, label %803

803:                                              ; preds = %796
  %804 = zext i32 %782 to i64
  br label %805

805:                                              ; preds = %812, %803
  %806 = phi i64 [ 2, %803 ], [ %813, %812 ]
  %807 = getelementptr inbounds i8, ptr %786, i64 %806
  %808 = load i8, ptr %807, align 1, !tbaa !24
  %809 = getelementptr inbounds i8, ptr %793, i64 %806
  %810 = load i8, ptr %809, align 1, !tbaa !24
  %811 = icmp eq i8 %808, %810
  br i1 %811, label %812, label %815

812:                                              ; preds = %805
  %813 = add nuw nsw i64 %806, 1
  %814 = icmp eq i64 %813, %804
  br i1 %814, label %817, label %805, !llvm.loop !156

815:                                              ; preds = %805
  %816 = trunc i64 %806 to i32
  br label %817

817:                                              ; preds = %812, %815, %796, %781
  %818 = phi i32 [ %802, %796 ], [ 0, %781 ], [ %816, %815 ], [ %782, %812 ]
  store i32 %818, ptr %6, align 16, !tbaa !22
  %819 = load i32, ptr %170, align 4, !tbaa !22
  %820 = add i32 %819, 1
  %821 = zext i32 %820 to i64
  %822 = sub nsw i64 0, %821
  %823 = getelementptr inbounds i8, ptr %786, i64 %822
  %824 = load i8, ptr %823, align 1, !tbaa !24
  %825 = icmp eq i8 %787, %824
  br i1 %825, label %826, label %831

826:                                              ; preds = %817
  %827 = load i8, ptr %785, align 1, !tbaa !24
  %828 = getelementptr inbounds i8, ptr %823, i64 1
  %829 = load i8, ptr %828, align 1, !tbaa !24
  %830 = icmp eq i8 %827, %829
  br i1 %830, label %832, label %831

831:                                              ; preds = %826, %817
  store i32 0, ptr %177, align 4, !tbaa !22
  br label %851

832:                                              ; preds = %826
  br i1 %788, label %847, label %833

833:                                              ; preds = %832
  %834 = zext i32 %782 to i64
  br label %835

835:                                              ; preds = %842, %833
  %836 = phi i64 [ 2, %833 ], [ %843, %842 ]
  %837 = getelementptr inbounds i8, ptr %786, i64 %836
  %838 = load i8, ptr %837, align 1, !tbaa !24
  %839 = getelementptr inbounds i8, ptr %823, i64 %836
  %840 = load i8, ptr %839, align 1, !tbaa !24
  %841 = icmp eq i8 %838, %840
  br i1 %841, label %842, label %845

842:                                              ; preds = %835
  %843 = add nuw nsw i64 %836, 1
  %844 = icmp eq i64 %843, %834
  br i1 %844, label %847, label %835, !llvm.loop !156

845:                                              ; preds = %835
  %846 = trunc i64 %836 to i32
  br label %847

847:                                              ; preds = %842, %845, %832
  %848 = phi i32 [ 2, %832 ], [ %846, %845 ], [ %782, %842 ]
  store i32 %848, ptr %177, align 4, !tbaa !22
  %849 = icmp ugt i32 %848, %818
  %850 = zext i1 %849 to i32
  br label %851

851:                                              ; preds = %847, %831
  %852 = phi i32 [ 0, %831 ], [ %850, %847 ]
  %853 = load i32, ptr %171, align 4, !tbaa !22
  %854 = add i32 %853, 1
  %855 = zext i32 %854 to i64
  %856 = sub nsw i64 0, %855
  %857 = getelementptr inbounds i8, ptr %786, i64 %856
  %858 = load i8, ptr %857, align 1, !tbaa !24
  %859 = icmp eq i8 %787, %858
  br i1 %859, label %860, label %865

860:                                              ; preds = %851
  %861 = load i8, ptr %785, align 1, !tbaa !24
  %862 = getelementptr inbounds i8, ptr %857, i64 1
  %863 = load i8, ptr %862, align 1, !tbaa !24
  %864 = icmp eq i8 %861, %863
  br i1 %864, label %866, label %865

865:                                              ; preds = %860, %851
  store i32 0, ptr %178, align 8, !tbaa !22
  br label %888

866:                                              ; preds = %860
  br i1 %788, label %881, label %867

867:                                              ; preds = %866
  %868 = zext i32 %782 to i64
  br label %869

869:                                              ; preds = %876, %867
  %870 = phi i64 [ 2, %867 ], [ %877, %876 ]
  %871 = getelementptr inbounds i8, ptr %786, i64 %870
  %872 = load i8, ptr %871, align 1, !tbaa !24
  %873 = getelementptr inbounds i8, ptr %857, i64 %870
  %874 = load i8, ptr %873, align 1, !tbaa !24
  %875 = icmp eq i8 %872, %874
  br i1 %875, label %876, label %879

876:                                              ; preds = %869
  %877 = add nuw nsw i64 %870, 1
  %878 = icmp eq i64 %877, %868
  br i1 %878, label %881, label %869, !llvm.loop !156

879:                                              ; preds = %869
  %880 = trunc i64 %870 to i32
  br label %881

881:                                              ; preds = %876, %879, %866
  %882 = phi i32 [ 2, %866 ], [ %880, %879 ], [ %782, %876 ]
  store i32 %882, ptr %178, align 8, !tbaa !22
  %883 = zext i32 %852 to i64
  %884 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %883
  %885 = load i32, ptr %884, align 4, !tbaa !22
  %886 = icmp ugt i32 %882, %885
  %887 = select i1 %886, i32 2, i32 %852
  br label %888

888:                                              ; preds = %881, %865
  %889 = phi i32 [ %852, %865 ], [ %887, %881 ]
  %890 = load i32, ptr %172, align 4, !tbaa !22
  %891 = add i32 %890, 1
  %892 = zext i32 %891 to i64
  %893 = sub nsw i64 0, %892
  %894 = getelementptr inbounds i8, ptr %786, i64 %893
  %895 = load i8, ptr %894, align 1, !tbaa !24
  %896 = icmp eq i8 %787, %895
  br i1 %896, label %897, label %902

897:                                              ; preds = %888
  %898 = load i8, ptr %785, align 1, !tbaa !24
  %899 = getelementptr inbounds i8, ptr %894, i64 1
  %900 = load i8, ptr %899, align 1, !tbaa !24
  %901 = icmp eq i8 %898, %900
  br i1 %901, label %903, label %902

902:                                              ; preds = %897, %888
  store i32 0, ptr %179, align 4, !tbaa !22
  br label %925

903:                                              ; preds = %897
  br i1 %788, label %918, label %904

904:                                              ; preds = %903
  %905 = zext i32 %782 to i64
  br label %906

906:                                              ; preds = %913, %904
  %907 = phi i64 [ 2, %904 ], [ %914, %913 ]
  %908 = getelementptr inbounds i8, ptr %786, i64 %907
  %909 = load i8, ptr %908, align 1, !tbaa !24
  %910 = getelementptr inbounds i8, ptr %894, i64 %907
  %911 = load i8, ptr %910, align 1, !tbaa !24
  %912 = icmp eq i8 %909, %911
  br i1 %912, label %913, label %916

913:                                              ; preds = %906
  %914 = add nuw nsw i64 %907, 1
  %915 = icmp eq i64 %914, %905
  br i1 %915, label %918, label %906, !llvm.loop !156

916:                                              ; preds = %906
  %917 = trunc i64 %907 to i32
  br label %918

918:                                              ; preds = %913, %916, %903
  %919 = phi i32 [ 2, %903 ], [ %917, %916 ], [ %782, %913 ]
  store i32 %919, ptr %179, align 4, !tbaa !22
  %920 = zext i32 %889 to i64
  %921 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %920
  %922 = load i32, ptr %921, align 4, !tbaa !22
  %923 = icmp ugt i32 %919, %922
  %924 = select i1 %923, i32 3, i32 %889
  br label %925

925:                                              ; preds = %918, %902
  %926 = phi i32 [ %889, %902 ], [ %924, %918 ]
  %927 = zext i32 %926 to i64
  %928 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %927
  %929 = load i32, ptr %928, align 4, !tbaa !22
  %930 = load i32, ptr %167, align 8, !tbaa !66
  %931 = icmp ult i32 %929, %930
  br i1 %931, label %940, label %932

932:                                              ; preds = %925
  %933 = add i32 %929, -1
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %2415, label %935

935:                                              ; preds = %932
  %936 = load i32, ptr %161, align 4, !tbaa !99
  %937 = add i32 %936, %933
  store i32 %937, ptr %161, align 4, !tbaa !99
  %938 = load ptr, ptr %174, align 8, !tbaa !152
  %939 = load ptr, ptr %155, align 8, !tbaa !124
  tail call void %938(ptr noundef %939, i32 noundef %933) #16
  br label %2415

940:                                              ; preds = %925
  %941 = icmp ult i32 %778, %930
  br i1 %941, label %955, label %942

942:                                              ; preds = %940
  %943 = add i32 %777, -1
  %944 = zext i32 %943 to i64
  %945 = getelementptr inbounds i32, ptr %166, i64 %944
  %946 = load i32, ptr %945, align 4, !tbaa !22
  %947 = add i32 %946, 4
  %948 = add i32 %778, -1
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %2415, label %950

950:                                              ; preds = %942
  %951 = load i32, ptr %161, align 4, !tbaa !99
  %952 = add i32 %951, %948
  store i32 %952, ptr %161, align 4, !tbaa !99
  %953 = load ptr, ptr %174, align 8, !tbaa !152
  %954 = load ptr, ptr %155, align 8, !tbaa !124
  tail call void %953(ptr noundef %954, i32 noundef %948) #16
  br label %2415

955:                                              ; preds = %940
  %956 = load i32, ptr %5, align 16, !tbaa !22
  %957 = add i32 %956, 1
  %958 = zext i32 %957 to i64
  %959 = sub nsw i64 0, %958
  %960 = getelementptr inbounds i8, ptr %786, i64 %959
  %961 = load i8, ptr %960, align 1, !tbaa !24
  %962 = icmp ult i32 %778, 2
  %963 = icmp ne i8 %787, %961
  %964 = select i1 %962, i1 %963, i1 false
  %965 = icmp ult i32 %929, 2
  %966 = select i1 %964, i1 %965, i1 false
  br i1 %966, label %2415, label %967

967:                                              ; preds = %955
  %968 = load i32, ptr %180, align 8, !tbaa !31
  store i32 %968, ptr %181, align 4, !tbaa !157
  %969 = load i32, ptr %173, align 4, !tbaa !100
  %970 = and i32 %969, %213
  %971 = load ptr, ptr %182, align 8, !tbaa !51
  %972 = load i32, ptr %183, align 8, !tbaa !101
  %973 = and i32 %972, %213
  %974 = load i32, ptr %184, align 4, !tbaa !67
  %975 = shl i32 %973, %974
  %976 = getelementptr inbounds i8, ptr %785, i64 -2
  %977 = load i8, ptr %976, align 1, !tbaa !24
  %978 = zext i8 %977 to i32
  %979 = sub i32 8, %974
  %980 = lshr i32 %978, %979
  %981 = add i32 %980, %975
  %982 = mul i32 %981, 768
  %983 = zext i32 %982 to i64
  %984 = getelementptr inbounds i16, ptr %971, i64 %983
  %985 = zext i32 %968 to i64
  %986 = zext i32 %970 to i64
  %987 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %985, i64 %986
  %988 = load i16, ptr %987, align 2, !tbaa !29
  %989 = lshr i16 %988, 4
  %990 = zext i16 %989 to i64
  %991 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %990
  %992 = load i32, ptr %991, align 4, !tbaa !22
  %993 = icmp ult i32 %968, 7
  %994 = zext i8 %787 to i32
  br i1 %993, label %998, label %995

995:                                              ; preds = %967
  %996 = zext i8 %961 to i32
  %997 = tail call fastcc i32 @LitEnc_GetPriceMatched(ptr noundef %984, i32 noundef %994, i32 noundef %996, ptr noundef nonnull %185)
  br label %1018

998:                                              ; preds = %967
  %999 = or i32 %994, 256
  br label %1000

1000:                                             ; preds = %1000, %998
  %1001 = phi i32 [ %999, %998 ], [ %1016, %1000 ]
  %1002 = phi i32 [ 0, %998 ], [ %1015, %1000 ]
  %1003 = lshr i32 %1001, 8
  %1004 = zext i32 %1003 to i64
  %1005 = getelementptr inbounds i16, ptr %984, i64 %1004
  %1006 = load i16, ptr %1005, align 2, !tbaa !29
  %1007 = zext i16 %1006 to i64
  %1008 = and i32 %1001, 128
  %1009 = icmp eq i32 %1008, 0
  %1010 = select i1 %1009, i64 0, i64 2032
  %1011 = xor i64 %1010, %1007
  %1012 = lshr i64 %1011, 4
  %1013 = getelementptr inbounds i32, ptr %185, i64 %1012
  %1014 = load i32, ptr %1013, align 4, !tbaa !22
  %1015 = add i32 %1014, %1002
  %1016 = shl nuw nsw i32 %1001, 1
  %1017 = icmp ult i32 %1001, 32768
  br i1 %1017, label %1000, label %1018, !llvm.loop !158

1018:                                             ; preds = %1000, %995
  %1019 = phi i32 [ %997, %995 ], [ %1015, %1000 ]
  %1020 = add i32 %1019, %992
  store i32 %1020, ptr %186, align 4, !tbaa !159
  store i32 -1, ptr %187, align 4, !tbaa !155
  store i32 0, ptr %188, align 4, !tbaa !160
  %1021 = xor i16 %989, 127
  %1022 = zext i16 %1021 to i64
  %1023 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1022
  %1024 = load i32, ptr %1023, align 4, !tbaa !22
  %1025 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 31, i64 %985
  %1026 = load i16, ptr %1025, align 2, !tbaa !29
  %1027 = lshr i16 %1026, 4
  %1028 = xor i16 %1027, 127
  %1029 = zext i16 %1028 to i64
  %1030 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1029
  %1031 = load i32, ptr %1030, align 4, !tbaa !22
  %1032 = add i32 %1031, %1024
  br i1 %963, label %1050, label %1033

1033:                                             ; preds = %1018
  %1034 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 32, i64 %985
  %1035 = load i16, ptr %1034, align 2, !tbaa !29
  %1036 = lshr i16 %1035, 4
  %1037 = zext i16 %1036 to i64
  %1038 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1037
  %1039 = load i32, ptr %1038, align 4, !tbaa !22
  %1040 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 35, i64 %985, i64 %986
  %1041 = load i16, ptr %1040, align 2, !tbaa !29
  %1042 = lshr i16 %1041, 4
  %1043 = zext i16 %1042 to i64
  %1044 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1043
  %1045 = load i32, ptr %1044, align 4, !tbaa !22
  %1046 = add i32 %1039, %1032
  %1047 = add i32 %1046, %1045
  %1048 = icmp ult i32 %1047, %1020
  br i1 %1048, label %1049, label %1050

1049:                                             ; preds = %1033
  store i32 %1047, ptr %186, align 4, !tbaa !159
  store i32 0, ptr %187, align 4, !tbaa !155
  br label %1050

1050:                                             ; preds = %1049, %1033, %1018
  %1051 = phi i32 [ -1, %1033 ], [ 0, %1049 ], [ -1, %1018 ]
  %1052 = tail call i32 @llvm.umax.i32(i32 %778, i32 %929)
  %1053 = icmp ult i32 %1052, 2
  br i1 %1053, label %2415, label %1054

1054:                                             ; preds = %1050
  store i32 0, ptr %189, align 4, !tbaa !153
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %190, ptr noundef nonnull align 4 dereferenceable(16) %169, i64 16, i1 false)
  %1055 = zext i32 %1052 to i64
  br label %1056

1056:                                             ; preds = %1056, %1054
  %1057 = phi i64 [ %1055, %1054 ], [ %1058, %1056 ]
  %1058 = add nsw i64 %1057, -1
  %1059 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1057
  store i32 1073741824, ptr %1059, align 4, !tbaa !159
  %1060 = and i64 %1058, 4294967294
  %1061 = icmp eq i64 %1060, 0
  br i1 %1061, label %1062, label %1056, !llvm.loop !161

1062:                                             ; preds = %1056
  %1063 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 32, i64 %985
  %1064 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 33, i64 %985
  %1065 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 34, i64 %985
  %1066 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 35, i64 %985, i64 %986
  br label %1067

1067:                                             ; preds = %1136, %1062
  %1068 = phi i64 [ 0, %1062 ], [ %1137, %1136 ]
  %1069 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %1068
  %1070 = load i32, ptr %1069, align 4, !tbaa !22
  %1071 = icmp ult i32 %1070, 2
  br i1 %1071, label %1136, label %1072

1072:                                             ; preds = %1067
  %1073 = icmp eq i64 %1068, 0
  %1074 = load i16, ptr %1063, align 2, !tbaa !29
  %1075 = lshr i16 %1074, 4
  br i1 %1073, label %1076, label %1086

1076:                                             ; preds = %1072
  %1077 = zext i16 %1075 to i64
  %1078 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1077
  %1079 = load i32, ptr %1078, align 4, !tbaa !22
  %1080 = load i16, ptr %1066, align 2, !tbaa !29
  %1081 = lshr i16 %1080, 4
  %1082 = xor i16 %1081, 127
  %1083 = zext i16 %1082 to i64
  %1084 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1083
  %1085 = load i32, ptr %1084, align 4, !tbaa !22
  br label %1112

1086:                                             ; preds = %1072
  %1087 = xor i16 %1075, 127
  %1088 = zext i16 %1087 to i64
  %1089 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1088
  %1090 = load i32, ptr %1089, align 4, !tbaa !22
  %1091 = icmp eq i64 %1068, 1
  %1092 = load i16, ptr %1064, align 2, !tbaa !29
  %1093 = lshr i16 %1092, 4
  br i1 %1091, label %1094, label %1098

1094:                                             ; preds = %1086
  %1095 = zext i16 %1093 to i64
  %1096 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1095
  %1097 = load i32, ptr %1096, align 4, !tbaa !22
  br label %1112

1098:                                             ; preds = %1086
  %1099 = xor i16 %1093, 127
  %1100 = zext i16 %1099 to i64
  %1101 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1100
  %1102 = load i32, ptr %1101, align 4, !tbaa !22
  %1103 = add i32 %1102, %1090
  %1104 = load i16, ptr %1065, align 2, !tbaa !29
  %1105 = zext i16 %1104 to i64
  %1106 = sub nsw i64 2, %1068
  %1107 = and i64 %1106, 2032
  %1108 = xor i64 %1107, %1105
  %1109 = lshr i64 %1108, 4
  %1110 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1109
  %1111 = load i32, ptr %1110, align 4, !tbaa !22
  br label %1112

1112:                                             ; preds = %1098, %1094, %1076
  %1113 = phi i32 [ %1090, %1094 ], [ %1111, %1098 ], [ %1079, %1076 ]
  %1114 = phi i32 [ %1097, %1094 ], [ %1103, %1098 ], [ %1085, %1076 ]
  %1115 = add i32 %1113, %1032
  %1116 = add i32 %1115, %1114
  %1117 = trunc i64 %1068 to i32
  br label %1118

1118:                                             ; preds = %1133, %1112
  %1119 = phi i32 [ %1070, %1112 ], [ %1134, %1133 ]
  %1120 = add i32 %1119, -2
  %1121 = zext i32 %1120 to i64
  %1122 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 1, i64 %986, i64 %1121
  %1123 = load i32, ptr %1122, align 4, !tbaa !22
  %1124 = add i32 %1116, %1123
  %1125 = zext i32 %1119 to i64
  %1126 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1125
  %1127 = load i32, ptr %1126, align 4, !tbaa !159
  %1128 = icmp ult i32 %1124, %1127
  br i1 %1128, label %1129, label %1133

1129:                                             ; preds = %1118
  store i32 %1124, ptr %1126, align 4, !tbaa !159
  %1130 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1125, i32 6
  store i32 0, ptr %1130, align 4, !tbaa !153
  %1131 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1125, i32 7
  store i32 %1117, ptr %1131, align 4, !tbaa !155
  %1132 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1125, i32 2
  store i32 0, ptr %1132, align 4, !tbaa !160
  br label %1133

1133:                                             ; preds = %1129, %1118
  %1134 = add i32 %1119, -1
  %1135 = icmp ugt i32 %1134, 1
  br i1 %1135, label %1118, label %1136, !llvm.loop !162

1136:                                             ; preds = %1133, %1067
  %1137 = add nuw nsw i64 %1068, 1
  %1138 = icmp eq i64 %1137, 4
  br i1 %1138, label %1139, label %1067, !llvm.loop !163

1139:                                             ; preds = %1136
  %1140 = zext i16 %1027 to i64
  %1141 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1140
  %1142 = load i32, ptr %1141, align 4, !tbaa !22
  %1143 = add i32 %1142, %1024
  %1144 = add i32 %818, 1
  %1145 = icmp ult i32 %818, 2
  %1146 = select i1 %1145, i32 2, i32 %1144
  %1147 = icmp ugt i32 %1146, %778
  br i1 %1147, label %1218, label %1148

1148:                                             ; preds = %1139, %1148
  %1149 = phi i32 [ %1154, %1148 ], [ 0, %1139 ]
  %1150 = zext i32 %1149 to i64
  %1151 = getelementptr inbounds i32, ptr %166, i64 %1150
  %1152 = load i32, ptr %1151, align 4, !tbaa !22
  %1153 = icmp ugt i32 %1146, %1152
  %1154 = add i32 %1149, 2
  br i1 %1153, label %1148, label %1155, !llvm.loop !164

1155:                                             ; preds = %1148, %1215
  %1156 = phi i32 [ %1216, %1215 ], [ %1149, %1148 ]
  %1157 = phi i32 [ %1217, %1215 ], [ %1146, %1148 ]
  %1158 = add i32 %1156, 1
  %1159 = zext i32 %1158 to i64
  %1160 = getelementptr inbounds i32, ptr %166, i64 %1159
  %1161 = load i32, ptr %1160, align 4, !tbaa !22
  %1162 = add i32 %1157, -2
  %1163 = zext i32 %1162 to i64
  %1164 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 1, i64 %986, i64 %1163
  %1165 = load i32, ptr %1164, align 4, !tbaa !22
  %1166 = add i32 %1143, %1165
  %1167 = icmp ult i32 %1157, 5
  %1168 = select i1 %1167, i32 %1162, i32 3
  %1169 = icmp ult i32 %1161, 128
  br i1 %1169, label %1170, label %1175

1170:                                             ; preds = %1155
  %1171 = zext i32 %1168 to i64
  %1172 = zext i32 %1161 to i64
  %1173 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 20, i64 %1171, i64 %1172
  %1174 = load i32, ptr %1173, align 4, !tbaa !22
  br label %1195

1175:                                             ; preds = %1155
  %1176 = add i32 %1161, -524288
  %1177 = icmp slt i32 %1176, 0
  %1178 = select i1 %1177, i32 6, i32 18
  %1179 = lshr i32 %1161, %1178
  %1180 = zext i32 %1179 to i64
  %1181 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 12, i64 %1180
  %1182 = load i8, ptr %1181, align 1, !tbaa !24
  %1183 = zext i8 %1182 to i32
  %1184 = shl nuw nsw i32 %1178, 1
  %1185 = add nuw nsw i32 %1184, %1183
  %1186 = and i32 %1161, 15
  %1187 = zext i32 %1186 to i64
  %1188 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 21, i64 %1187
  %1189 = load i32, ptr %1188, align 4, !tbaa !22
  %1190 = zext i32 %1168 to i64
  %1191 = zext i32 %1185 to i64
  %1192 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 19, i64 %1190, i64 %1191
  %1193 = load i32, ptr %1192, align 4, !tbaa !22
  %1194 = add i32 %1193, %1189
  br label %1195

1195:                                             ; preds = %1175, %1170
  %1196 = phi i32 [ %1174, %1170 ], [ %1194, %1175 ]
  %1197 = add i32 %1166, %1196
  %1198 = zext i32 %1157 to i64
  %1199 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1198
  %1200 = load i32, ptr %1199, align 4, !tbaa !159
  %1201 = icmp ult i32 %1197, %1200
  br i1 %1201, label %1202, label %1207

1202:                                             ; preds = %1195
  store i32 %1197, ptr %1199, align 4, !tbaa !159
  %1203 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1198, i32 6
  store i32 0, ptr %1203, align 4, !tbaa !153
  %1204 = add i32 %1161, 4
  %1205 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1198, i32 7
  store i32 %1204, ptr %1205, align 4, !tbaa !155
  %1206 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1198, i32 2
  store i32 0, ptr %1206, align 4, !tbaa !160
  br label %1207

1207:                                             ; preds = %1202, %1195
  %1208 = zext i32 %1156 to i64
  %1209 = getelementptr inbounds i32, ptr %166, i64 %1208
  %1210 = load i32, ptr %1209, align 4, !tbaa !22
  %1211 = icmp eq i32 %1157, %1210
  br i1 %1211, label %1212, label %1215

1212:                                             ; preds = %1207
  %1213 = add i32 %1156, 2
  %1214 = icmp eq i32 %1213, %777
  br i1 %1214, label %1218, label %1215

1215:                                             ; preds = %1212, %1207
  %1216 = phi i32 [ %1213, %1212 ], [ %1156, %1207 ]
  %1217 = add i32 %1157, 1
  br label %1155

1218:                                             ; preds = %1212, %1139
  %1219 = icmp eq i32 %1052, 1
  br i1 %1219, label %1220, label %1261

1220:                                             ; preds = %2410, %1218
  %1221 = phi i32 [ 1, %1218 ], [ %2411, %2410 ]
  %1222 = zext i32 %1221 to i64
  %1223 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1222, i32 6
  %1224 = load i32, ptr %1223, align 4, !tbaa !153
  %1225 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1222, i32 7
  %1226 = load i32, ptr %1225, align 4, !tbaa !155
  store i32 %1221, ptr %175, align 8, !tbaa !97
  br label %1227

1227:                                             ; preds = %1253, %1220
  %1228 = phi i32 [ %1226, %1220 ], [ %1255, %1253 ]
  %1229 = phi i32 [ %1224, %1220 ], [ %1254, %1253 ]
  %1230 = phi i32 [ %1221, %1220 ], [ %1229, %1253 ]
  %1231 = zext i32 %1230 to i64
  %1232 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1231, i32 2
  %1233 = load i32, ptr %1232, align 4, !tbaa !160
  %1234 = icmp eq i32 %1233, 0
  %1235 = zext i32 %1229 to i64
  %1236 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1235, i32 7
  br i1 %1234, label %1237, label %1241

1237:                                             ; preds = %1227
  %1238 = load i32, ptr %1236, align 4, !tbaa !155
  %1239 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1235, i32 6
  %1240 = load i32, ptr %1239, align 4, !tbaa !153
  br label %1253

1241:                                             ; preds = %1227
  %1242 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1235, i32 2
  store i32 0, ptr %1242, align 4, !tbaa !160
  %1243 = add i32 %1229, -1
  %1244 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1231, i32 3
  %1245 = load i32, ptr %1244, align 4, !tbaa !165
  %1246 = icmp eq i32 %1245, 0
  br i1 %1246, label %1253, label %1247

1247:                                             ; preds = %1241
  %1248 = zext i32 %1243 to i64
  %1249 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1248, i32 2
  store i32 0, ptr %1249, align 4, !tbaa !160
  %1250 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1231, i32 4
  %1251 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1248, i32 6
  %1252 = load <2 x i32>, ptr %1250, align 4, !tbaa !22
  store <2 x i32> %1252, ptr %1251, align 4, !tbaa !22
  br label %1253

1253:                                             ; preds = %1247, %1241, %1237
  %1254 = phi i32 [ %1240, %1237 ], [ %1243, %1241 ], [ %1243, %1247 ]
  %1255 = phi i32 [ %1238, %1237 ], [ -1, %1241 ], [ -1, %1247 ]
  %1256 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1235, i32 6
  store i32 %1228, ptr %1236, align 4, !tbaa !155
  store i32 %1230, ptr %1256, align 4, !tbaa !153
  %1257 = icmp eq i32 %1229, 0
  br i1 %1257, label %1258, label %1227, !llvm.loop !166

1258:                                             ; preds = %1253
  %1259 = load i32, ptr %194, align 4, !tbaa !155
  %1260 = load i32, ptr %195, align 4, !tbaa !153
  store i32 %1260, ptr %176, align 4, !tbaa !98
  br label %2415

1261:                                             ; preds = %1218, %2410
  %1262 = phi i32 [ %2414, %2410 ], [ 4094, %1218 ]
  %1263 = phi i32 [ %1463, %2410 ], [ %956, %1218 ]
  %1264 = phi i32 [ %2412, %2410 ], [ 1, %1218 ]
  %1265 = phi i32 [ %1360, %2410 ], [ %213, %1218 ]
  %1266 = phi i32 [ %2411, %2410 ], [ %1052, %1218 ]
  %1267 = phi i32 [ %1264, %2410 ], [ 0, %1218 ]
  %1268 = load ptr, ptr %153, align 8, !tbaa !129
  %1269 = load ptr, ptr %155, align 8, !tbaa !124
  %1270 = tail call i32 %1268(ptr noundef %1269) #16
  store i32 %1270, ptr %164, align 8, !tbaa !142
  %1271 = load ptr, ptr %165, align 8, !tbaa !143
  %1272 = load ptr, ptr %155, align 8, !tbaa !124
  %1273 = tail call i32 %1271(ptr noundef %1272, ptr noundef nonnull %166) #16
  %1274 = icmp eq i32 %1273, 0
  br i1 %1274, label %1313, label %1275

1275:                                             ; preds = %1261
  %1276 = add i32 %1273, -2
  %1277 = zext i32 %1276 to i64
  %1278 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 14, i64 %1277
  %1279 = load i32, ptr %1278, align 4, !tbaa !22
  %1280 = load i32, ptr %167, align 8, !tbaa !66
  %1281 = icmp eq i32 %1279, %1280
  br i1 %1281, label %1282, label %1313

1282:                                             ; preds = %1275
  %1283 = load ptr, ptr %168, align 8, !tbaa !130
  %1284 = load ptr, ptr %155, align 8, !tbaa !124
  %1285 = tail call ptr %1283(ptr noundef %1284) #16
  %1286 = getelementptr inbounds i8, ptr %1285, i64 -1
  %1287 = add i32 %1273, -1
  %1288 = zext i32 %1287 to i64
  %1289 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 14, i64 %1288
  %1290 = load i32, ptr %1289, align 4, !tbaa !22
  %1291 = add i32 %1290, 1
  %1292 = load i32, ptr %164, align 8, !tbaa !142
  %1293 = tail call i32 @llvm.umin.i32(i32 %1292, i32 273)
  %1294 = zext i32 %1291 to i64
  %1295 = sub nsw i64 0, %1294
  %1296 = getelementptr inbounds i8, ptr %1286, i64 %1295
  %1297 = icmp ult i32 %1279, %1293
  br i1 %1297, label %1298, label %1313

1298:                                             ; preds = %1282
  %1299 = zext i32 %1279 to i64
  br label %1300

1300:                                             ; preds = %1307, %1298
  %1301 = phi i64 [ %1299, %1298 ], [ %1308, %1307 ]
  %1302 = getelementptr inbounds i8, ptr %1286, i64 %1301
  %1303 = load i8, ptr %1302, align 1, !tbaa !24
  %1304 = getelementptr inbounds i8, ptr %1296, i64 %1301
  %1305 = load i8, ptr %1304, align 1, !tbaa !24
  %1306 = icmp eq i8 %1303, %1305
  br i1 %1306, label %1307, label %1311

1307:                                             ; preds = %1300
  %1308 = add nuw nsw i64 %1301, 1
  %1309 = trunc i64 %1308 to i32
  %1310 = icmp eq i32 %1293, %1309
  br i1 %1310, label %1313, label %1300, !llvm.loop !146

1311:                                             ; preds = %1300
  %1312 = trunc i64 %1301 to i32
  br label %1313

1313:                                             ; preds = %1307, %1311, %1282, %1275, %1261
  %1314 = phi i32 [ %1279, %1275 ], [ 0, %1261 ], [ %1279, %1282 ], [ %1312, %1311 ], [ %1293, %1307 ]
  %1315 = load i32, ptr %161, align 4, !tbaa !99
  %1316 = add i32 %1315, 1
  store i32 %1316, ptr %161, align 4, !tbaa !99
  %1317 = load i32, ptr %167, align 8, !tbaa !66
  %1318 = icmp ult i32 %1314, %1317
  br i1 %1318, label %1359, label %1319

1319:                                             ; preds = %1313
  store i32 %1273, ptr %163, align 4, !tbaa !148
  store i32 %1314, ptr %162, align 8, !tbaa !147
  %1320 = zext i32 %1264 to i64
  %1321 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1320, i32 6
  %1322 = load i32, ptr %1321, align 4, !tbaa !153
  %1323 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1320, i32 7
  %1324 = load i32, ptr %1323, align 4, !tbaa !155
  store i32 %1264, ptr %175, align 8, !tbaa !97
  br label %1325

1325:                                             ; preds = %1351, %1319
  %1326 = phi i32 [ %1324, %1319 ], [ %1353, %1351 ]
  %1327 = phi i32 [ %1322, %1319 ], [ %1352, %1351 ]
  %1328 = phi i32 [ %1264, %1319 ], [ %1327, %1351 ]
  %1329 = zext i32 %1328 to i64
  %1330 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1329, i32 2
  %1331 = load i32, ptr %1330, align 4, !tbaa !160
  %1332 = icmp eq i32 %1331, 0
  %1333 = zext i32 %1327 to i64
  %1334 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1333, i32 7
  br i1 %1332, label %1335, label %1339

1335:                                             ; preds = %1325
  %1336 = load i32, ptr %1334, align 4, !tbaa !155
  %1337 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1333, i32 6
  %1338 = load i32, ptr %1337, align 4, !tbaa !153
  br label %1351

1339:                                             ; preds = %1325
  %1340 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1333, i32 2
  store i32 0, ptr %1340, align 4, !tbaa !160
  %1341 = add i32 %1327, -1
  %1342 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1329, i32 3
  %1343 = load i32, ptr %1342, align 4, !tbaa !165
  %1344 = icmp eq i32 %1343, 0
  br i1 %1344, label %1351, label %1345

1345:                                             ; preds = %1339
  %1346 = zext i32 %1341 to i64
  %1347 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1346, i32 2
  store i32 0, ptr %1347, align 4, !tbaa !160
  %1348 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1329, i32 4
  %1349 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1346, i32 6
  %1350 = load <2 x i32>, ptr %1348, align 4, !tbaa !22
  store <2 x i32> %1350, ptr %1349, align 4, !tbaa !22
  br label %1351

1351:                                             ; preds = %1345, %1339, %1335
  %1352 = phi i32 [ %1338, %1335 ], [ %1341, %1339 ], [ %1341, %1345 ]
  %1353 = phi i32 [ %1336, %1335 ], [ -1, %1339 ], [ -1, %1345 ]
  %1354 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1333, i32 6
  store i32 %1326, ptr %1334, align 4, !tbaa !155
  store i32 %1328, ptr %1354, align 4, !tbaa !153
  %1355 = icmp eq i32 %1327, 0
  br i1 %1355, label %1356, label %1325, !llvm.loop !166

1356:                                             ; preds = %1351
  %1357 = load i32, ptr %194, align 4, !tbaa !155
  %1358 = load i32, ptr %195, align 4, !tbaa !153
  store i32 %1358, ptr %176, align 4, !tbaa !98
  br label %2415

1359:                                             ; preds = %1313
  %1360 = add i32 %1265, 1
  %1361 = zext i32 %1264 to i64
  %1362 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1361
  %1363 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1361, i32 6
  %1364 = load i32, ptr %1363, align 4, !tbaa !153
  %1365 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1361, i32 2
  %1366 = load i32, ptr %1365, align 4, !tbaa !160
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1390, label %1368

1368:                                             ; preds = %1359
  %1369 = add i32 %1364, -1
  %1370 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1361, i32 3
  %1371 = load i32, ptr %1370, align 4, !tbaa !165
  %1372 = icmp eq i32 %1371, 0
  br i1 %1372, label %1395, label %1373

1373:                                             ; preds = %1368
  %1374 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1361, i32 4
  %1375 = load i32, ptr %1374, align 4, !tbaa !167
  %1376 = zext i32 %1375 to i64
  %1377 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1376, i32 1
  %1378 = load i32, ptr %1377, align 4, !tbaa !157
  %1379 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1361, i32 5
  %1380 = load i32, ptr %1379, align 4, !tbaa !168
  %1381 = icmp ult i32 %1380, 4
  %1382 = zext i32 %1378 to i64
  %1383 = select i1 %1381, ptr @kRepNextStates, ptr @kMatchNextStates
  %1384 = getelementptr inbounds [12 x i32], ptr %1383, i64 0, i64 %1382
  %1385 = load i32, ptr %1384, align 4, !tbaa !22
  %1386 = zext i32 %1385 to i64
  %1387 = getelementptr inbounds [12 x i32], ptr @kLiteralNextStates, i64 0, i64 %1386
  %1388 = load i32, ptr %1387, align 4, !tbaa !22
  %1389 = icmp eq i32 %1369, %1267
  br i1 %1389, label %1403, label %1428

1390:                                             ; preds = %1359
  %1391 = zext i32 %1364 to i64
  %1392 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1391, i32 1
  %1393 = load i32, ptr %1392, align 4, !tbaa !22
  %1394 = icmp eq i32 %1364, %1267
  br i1 %1394, label %1403, label %1415

1395:                                             ; preds = %1368
  %1396 = zext i32 %1369 to i64
  %1397 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1396, i32 1
  %1398 = load i32, ptr %1397, align 4, !tbaa !22
  %1399 = zext i32 %1398 to i64
  %1400 = getelementptr inbounds [12 x i32], ptr @kLiteralNextStates, i64 0, i64 %1399
  %1401 = load i32, ptr %1400, align 4, !tbaa !22
  %1402 = icmp eq i32 %1369, %1267
  br i1 %1402, label %1403, label %1415

1403:                                             ; preds = %1395, %1390, %1373
  %1404 = phi i32 [ %1388, %1373 ], [ %1393, %1390 ], [ %1401, %1395 ]
  %1405 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1361, i32 7
  %1406 = load i32, ptr %1405, align 4, !tbaa !155
  %1407 = icmp eq i32 %1406, 0
  %1408 = zext i32 %1404 to i64
  br i1 %1407, label %1409, label %1412

1409:                                             ; preds = %1403
  %1410 = getelementptr inbounds [12 x i32], ptr @kShortRepNextStates, i64 0, i64 %1408
  %1411 = load i32, ptr %1410, align 4, !tbaa !22
  br label %1462

1412:                                             ; preds = %1403
  %1413 = getelementptr inbounds [12 x i32], ptr @kLiteralNextStates, i64 0, i64 %1408
  %1414 = load i32, ptr %1413, align 4, !tbaa !22
  br label %1462

1415:                                             ; preds = %1395, %1390
  %1416 = phi i64 [ %1396, %1395 ], [ %1391, %1390 ]
  %1417 = phi i32 [ %1401, %1395 ], [ %1393, %1390 ]
  %1418 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1361, i32 7
  %1419 = load i32, ptr %1418, align 4, !tbaa !155
  %1420 = icmp ult i32 %1419, 4
  %1421 = zext i32 %1417 to i64
  br i1 %1420, label %1422, label %1425

1422:                                             ; preds = %1415
  %1423 = getelementptr inbounds [12 x i32], ptr @kRepNextStates, i64 0, i64 %1421
  %1424 = load i32, ptr %1423, align 4, !tbaa !22
  br label %1432

1425:                                             ; preds = %1415
  %1426 = getelementptr inbounds [12 x i32], ptr @kMatchNextStates, i64 0, i64 %1421
  %1427 = load i32, ptr %1426, align 4, !tbaa !22
  br label %1455

1428:                                             ; preds = %1373
  %1429 = zext i32 %1388 to i64
  %1430 = getelementptr inbounds [12 x i32], ptr @kRepNextStates, i64 0, i64 %1429
  %1431 = load i32, ptr %1430, align 4, !tbaa !22
  br i1 %1381, label %1432, label %1455

1432:                                             ; preds = %1428, %1422
  %1433 = phi i64 [ %1416, %1422 ], [ %1376, %1428 ]
  %1434 = phi i32 [ %1424, %1422 ], [ %1431, %1428 ]
  %1435 = phi i32 [ %1419, %1422 ], [ %1380, %1428 ]
  %1436 = zext i32 %1435 to i64
  %1437 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1433, i32 8, i64 %1436
  %1438 = load i32, ptr %1437, align 4, !tbaa !22
  store i32 %1438, ptr %5, align 16, !tbaa !22
  %1439 = icmp eq i32 %1435, 0
  %1440 = mul nuw nsw i64 %1433, 48
  br i1 %1439, label %1445, label %1441

1441:                                             ; preds = %1432
  %1442 = getelementptr i8, ptr %190, i64 %1440
  %1443 = shl nuw nsw i64 %1436, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %191, ptr align 4 %1442, i64 %1443, i1 false), !tbaa !22
  %1444 = icmp ult i32 %1435, 3
  br i1 %1444, label %1445, label %1462

1445:                                             ; preds = %1432, %1441
  %1446 = phi i64 [ %1443, %1441 ], [ 0, %1432 ]
  %1447 = getelementptr i8, ptr %191, i64 %1446
  %1448 = add nuw nsw i64 %1446, %1440
  %1449 = getelementptr i8, ptr %193, i64 %1448
  %1450 = sub nuw nsw i32 2, %1435
  %1451 = zext i32 %1450 to i64
  %1452 = shl nuw nsw i64 %1451, 2
  %1453 = add nuw nsw i64 %1452, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1447, ptr noundef nonnull align 4 dereferenceable(1) %1449, i64 %1453, i1 false), !tbaa !22
  %1454 = load i32, ptr %5, align 16, !tbaa !22
  br label %1462

1455:                                             ; preds = %1428, %1425
  %1456 = phi i64 [ %1416, %1425 ], [ %1376, %1428 ]
  %1457 = phi i32 [ %1427, %1425 ], [ %1431, %1428 ]
  %1458 = phi i32 [ %1419, %1425 ], [ %1380, %1428 ]
  %1459 = add i32 %1458, -4
  store i32 %1459, ptr %5, align 16, !tbaa !22
  %1460 = mul nuw nsw i64 %1456, 48
  %1461 = getelementptr i8, ptr %190, i64 %1460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %191, ptr noundef nonnull align 4 dereferenceable(12) %1461, i64 12, i1 false), !tbaa !22
  br label %1462

1462:                                             ; preds = %1455, %1445, %1441, %1412, %1409
  %1463 = phi i32 [ %1263, %1409 ], [ %1263, %1412 ], [ %1438, %1441 ], [ %1454, %1445 ], [ %1459, %1455 ]
  %1464 = phi i32 [ %1411, %1409 ], [ %1414, %1412 ], [ %1434, %1441 ], [ %1434, %1445 ], [ %1457, %1455 ]
  %1465 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1361, i32 1
  store i32 %1464, ptr %1465, align 4, !tbaa !157
  %1466 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1361, i32 8
  store i32 %1463, ptr %1466, align 4, !tbaa !22
  %1467 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1361, i32 8, i64 1
  %1468 = load <2 x i32>, ptr %191, align 4, !tbaa !22
  store <2 x i32> %1468, ptr %1467, align 4, !tbaa !22
  %1469 = load i32, ptr %192, align 4, !tbaa !22
  %1470 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1361, i32 8, i64 3
  store i32 %1469, ptr %1470, align 4, !tbaa !22
  %1471 = load i32, ptr %1362, align 4, !tbaa !159
  %1472 = load ptr, ptr %168, align 8, !tbaa !130
  %1473 = load ptr, ptr %155, align 8, !tbaa !124
  %1474 = tail call ptr %1472(ptr noundef %1473) #16
  %1475 = getelementptr inbounds i8, ptr %1474, i64 -1
  %1476 = load i8, ptr %1475, align 1, !tbaa !24
  %1477 = add i32 %1463, 1
  %1478 = zext i32 %1477 to i64
  %1479 = sub nsw i64 0, %1478
  %1480 = getelementptr inbounds i8, ptr %1475, i64 %1479
  %1481 = load i8, ptr %1480, align 1, !tbaa !24
  %1482 = load i32, ptr %173, align 4, !tbaa !100
  %1483 = and i32 %1482, %1360
  %1484 = zext i32 %1464 to i64
  %1485 = zext i32 %1483 to i64
  %1486 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %1484, i64 %1485
  %1487 = load i16, ptr %1486, align 2, !tbaa !29
  %1488 = lshr i16 %1487, 4
  %1489 = zext i16 %1488 to i64
  %1490 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1489
  %1491 = load i32, ptr %1490, align 4, !tbaa !22
  %1492 = add i32 %1491, %1471
  %1493 = load ptr, ptr %182, align 8, !tbaa !51
  %1494 = load i32, ptr %183, align 8, !tbaa !101
  %1495 = and i32 %1494, %1360
  %1496 = load i32, ptr %184, align 4, !tbaa !67
  %1497 = shl i32 %1495, %1496
  %1498 = getelementptr inbounds i8, ptr %1474, i64 -2
  %1499 = load i8, ptr %1498, align 1, !tbaa !24
  %1500 = zext i8 %1499 to i32
  %1501 = sub i32 8, %1496
  %1502 = lshr i32 %1500, %1501
  %1503 = add i32 %1502, %1497
  %1504 = mul i32 %1503, 768
  %1505 = zext i32 %1504 to i64
  %1506 = getelementptr inbounds i16, ptr %1493, i64 %1505
  %1507 = icmp ult i32 %1464, 7
  %1508 = zext i8 %1476 to i32
  br i1 %1507, label %1539, label %1509

1509:                                             ; preds = %1462
  %1510 = zext i8 %1481 to i32
  %1511 = or i32 %1508, 256
  br label %1512

1512:                                             ; preds = %1512, %1509
  %1513 = phi i32 [ %1510, %1509 ], [ %1517, %1512 ]
  %1514 = phi i32 [ %1511, %1509 ], [ %1534, %1512 ]
  %1515 = phi i32 [ 0, %1509 ], [ %1533, %1512 ]
  %1516 = phi i32 [ 256, %1509 ], [ %1537, %1512 ]
  %1517 = shl i32 %1513, 1
  %1518 = and i32 %1516, %1517
  %1519 = lshr i32 %1514, 8
  %1520 = add i32 %1516, %1519
  %1521 = add i32 %1520, %1518
  %1522 = zext i32 %1521 to i64
  %1523 = getelementptr inbounds i16, ptr %1506, i64 %1522
  %1524 = load i16, ptr %1523, align 2, !tbaa !29
  %1525 = zext i16 %1524 to i64
  %1526 = and i32 %1514, 128
  %1527 = icmp eq i32 %1526, 0
  %1528 = select i1 %1527, i64 0, i64 2032
  %1529 = xor i64 %1528, %1525
  %1530 = lshr i64 %1529, 4
  %1531 = getelementptr inbounds i32, ptr %185, i64 %1530
  %1532 = load i32, ptr %1531, align 4, !tbaa !22
  %1533 = add i32 %1532, %1515
  %1534 = shl nuw nsw i32 %1514, 1
  %1535 = xor i32 %1517, %1534
  %1536 = xor i32 %1535, -1
  %1537 = and i32 %1516, %1536
  %1538 = icmp ult i32 %1514, 32768
  br i1 %1538, label %1512, label %1559, !llvm.loop !169

1539:                                             ; preds = %1462
  %1540 = or i32 %1508, 256
  br label %1541

1541:                                             ; preds = %1541, %1539
  %1542 = phi i32 [ %1540, %1539 ], [ %1557, %1541 ]
  %1543 = phi i32 [ 0, %1539 ], [ %1556, %1541 ]
  %1544 = lshr i32 %1542, 8
  %1545 = zext i32 %1544 to i64
  %1546 = getelementptr inbounds i16, ptr %1506, i64 %1545
  %1547 = load i16, ptr %1546, align 2, !tbaa !29
  %1548 = zext i16 %1547 to i64
  %1549 = and i32 %1542, 128
  %1550 = icmp eq i32 %1549, 0
  %1551 = select i1 %1550, i64 0, i64 2032
  %1552 = xor i64 %1551, %1548
  %1553 = lshr i64 %1552, 4
  %1554 = getelementptr inbounds i32, ptr %185, i64 %1553
  %1555 = load i32, ptr %1554, align 4, !tbaa !22
  %1556 = add i32 %1555, %1543
  %1557 = shl nuw nsw i32 %1542, 1
  %1558 = icmp ult i32 %1542, 32768
  br i1 %1558, label %1541, label %1559, !llvm.loop !158

1559:                                             ; preds = %1512, %1541
  %1560 = phi i32 [ %1556, %1541 ], [ %1533, %1512 ]
  %1561 = add i32 %1492, %1560
  %1562 = add i32 %1267, 2
  %1563 = zext i32 %1562 to i64
  %1564 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1563
  %1565 = load i32, ptr %1564, align 4, !tbaa !159
  %1566 = icmp ult i32 %1561, %1565
  br i1 %1566, label %1567, label %1571

1567:                                             ; preds = %1559
  store i32 %1561, ptr %1564, align 4, !tbaa !159
  %1568 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1563, i32 6
  store i32 %1264, ptr %1568, align 4, !tbaa !153
  %1569 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1563, i32 7
  store i32 -1, ptr %1569, align 4, !tbaa !155
  %1570 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1563, i32 2
  store i32 0, ptr %1570, align 4, !tbaa !160
  br label %1571

1571:                                             ; preds = %1567, %1559
  %1572 = phi i32 [ %1561, %1567 ], [ %1565, %1559 ]
  %1573 = phi i32 [ 1, %1567 ], [ 0, %1559 ]
  %1574 = xor i16 %1488, 127
  %1575 = zext i16 %1574 to i64
  %1576 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1575
  %1577 = load i32, ptr %1576, align 4, !tbaa !22
  %1578 = add i32 %1577, %1471
  %1579 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 31, i64 %1484
  %1580 = load i16, ptr %1579, align 2, !tbaa !29
  %1581 = lshr i16 %1580, 4
  %1582 = xor i16 %1581, 127
  %1583 = zext i16 %1582 to i64
  %1584 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1583
  %1585 = load i32, ptr %1584, align 4, !tbaa !22
  %1586 = add i32 %1585, %1578
  %1587 = icmp eq i8 %1481, %1476
  br i1 %1587, label %1588, label %1615

1588:                                             ; preds = %1571
  %1589 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1563, i32 6
  %1590 = load i32, ptr %1589, align 4, !tbaa !153
  %1591 = icmp ult i32 %1590, %1264
  br i1 %1591, label %1592, label %1596

1592:                                             ; preds = %1588
  %1593 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1563, i32 7
  %1594 = load i32, ptr %1593, align 4, !tbaa !155
  %1595 = icmp eq i32 %1594, 0
  br i1 %1595, label %1615, label %1596

1596:                                             ; preds = %1592, %1588
  %1597 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 32, i64 %1484
  %1598 = load i16, ptr %1597, align 2, !tbaa !29
  %1599 = lshr i16 %1598, 4
  %1600 = zext i16 %1599 to i64
  %1601 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1600
  %1602 = load i32, ptr %1601, align 4, !tbaa !22
  %1603 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 35, i64 %1484, i64 %1485
  %1604 = load i16, ptr %1603, align 2, !tbaa !29
  %1605 = lshr i16 %1604, 4
  %1606 = zext i16 %1605 to i64
  %1607 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1606
  %1608 = load i32, ptr %1607, align 4, !tbaa !22
  %1609 = add i32 %1602, %1586
  %1610 = add i32 %1609, %1608
  %1611 = icmp ugt i32 %1610, %1572
  br i1 %1611, label %1615, label %1612

1612:                                             ; preds = %1596
  store i32 %1610, ptr %1564, align 4, !tbaa !159
  store i32 %1264, ptr %1589, align 4, !tbaa !153
  %1613 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1563, i32 7
  store i32 0, ptr %1613, align 4, !tbaa !155
  %1614 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1563, i32 2
  store i32 0, ptr %1614, align 4, !tbaa !160
  br label %1615

1615:                                             ; preds = %1612, %1596, %1592, %1571
  %1616 = phi i32 [ %1573, %1592 ], [ %1573, %1571 ], [ 1, %1612 ], [ %1573, %1596 ]
  %1617 = load i32, ptr %164, align 8, !tbaa !142
  %1618 = sub i32 4094, %1267
  %1619 = tail call i32 @llvm.umin.i32(i32 %1618, i32 %1617)
  %1620 = icmp ult i32 %1619, 2
  br i1 %1620, label %2410, label %1621

1621:                                             ; preds = %1615
  %1622 = load i32, ptr %167, align 8, !tbaa !66
  %1623 = tail call i32 @llvm.umin.i32(i32 %1619, i32 %1622)
  %1624 = icmp ne i32 %1616, 0
  %1625 = or i1 %1587, %1624
  br i1 %1625, label %1734, label %1626

1626:                                             ; preds = %1621
  %1627 = add i32 %1622, 1
  %1628 = tail call i32 @llvm.umin.i32(i32 %1627, i32 %1619)
  %1629 = icmp ugt i32 %1628, 1
  br i1 %1629, label %1630, label %1734

1630:                                             ; preds = %1626
  %1631 = tail call i32 @llvm.umin.i32(i32 %1617, i32 %1262)
  %1632 = tail call i32 @llvm.umin.i32(i32 %1631, i32 %1627)
  %1633 = zext i32 %1632 to i64
  br label %1634

1634:                                             ; preds = %1641, %1630
  %1635 = phi i64 [ 1, %1630 ], [ %1642, %1641 ]
  %1636 = getelementptr inbounds i8, ptr %1475, i64 %1635
  %1637 = load i8, ptr %1636, align 1, !tbaa !24
  %1638 = getelementptr inbounds i8, ptr %1480, i64 %1635
  %1639 = load i8, ptr %1638, align 1, !tbaa !24
  %1640 = icmp eq i8 %1637, %1639
  br i1 %1640, label %1641, label %1644

1641:                                             ; preds = %1634
  %1642 = add nuw nsw i64 %1635, 1
  %1643 = icmp eq i64 %1642, %1633
  br i1 %1643, label %1644, label %1634, !llvm.loop !170

1644:                                             ; preds = %1641, %1634
  %1645 = phi i64 [ %1635, %1634 ], [ %1633, %1641 ]
  %1646 = trunc i64 %1645 to i32
  %1647 = add i32 %1646, -1
  %1648 = icmp ugt i32 %1647, 1
  br i1 %1648, label %1649, label %1734

1649:                                             ; preds = %1644
  %1650 = getelementptr inbounds [12 x i32], ptr @kLiteralNextStates, i64 0, i64 %1484
  %1651 = load i32, ptr %1650, align 4, !tbaa !22
  %1652 = add i32 %1265, 2
  %1653 = and i32 %1482, %1652
  %1654 = zext i32 %1651 to i64
  %1655 = zext i32 %1653 to i64
  %1656 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %1654, i64 %1655
  %1657 = load i16, ptr %1656, align 2, !tbaa !29
  %1658 = lshr i16 %1657, 4
  %1659 = xor i16 %1658, 127
  %1660 = zext i16 %1659 to i64
  %1661 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1660
  %1662 = load i32, ptr %1661, align 4, !tbaa !22
  %1663 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 31, i64 %1654
  %1664 = load i16, ptr %1663, align 2, !tbaa !29
  %1665 = lshr i16 %1664, 4
  %1666 = xor i16 %1665, 127
  %1667 = zext i16 %1666 to i64
  %1668 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1667
  %1669 = load i32, ptr %1668, align 4, !tbaa !22
  %1670 = add i32 %1647, %1562
  %1671 = icmp ult i32 %1266, %1670
  br i1 %1671, label %1672, label %1702

1672:                                             ; preds = %1649
  %1673 = zext i32 %1266 to i64
  %1674 = add i32 %1264, %1646
  %1675 = zext i32 %1674 to i64
  %1676 = sub nsw i64 %1675, %1673
  %1677 = xor i64 %1673, -1
  %1678 = add nsw i64 %1677, %1675
  %1679 = and i64 %1676, 3
  %1680 = icmp eq i64 %1679, 0
  br i1 %1680, label %1688, label %1681

1681:                                             ; preds = %1672, %1681
  %1682 = phi i64 [ %1684, %1681 ], [ %1673, %1672 ]
  %1683 = phi i64 [ %1686, %1681 ], [ 0, %1672 ]
  %1684 = add nuw nsw i64 %1682, 1
  %1685 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1684
  store i32 1073741824, ptr %1685, align 4, !tbaa !159
  %1686 = add i64 %1683, 1
  %1687 = icmp eq i64 %1686, %1679
  br i1 %1687, label %1688, label %1681, !llvm.loop !171

1688:                                             ; preds = %1681, %1672
  %1689 = phi i64 [ %1673, %1672 ], [ %1684, %1681 ]
  %1690 = icmp ult i64 %1678, 3
  br i1 %1690, label %1702, label %1691

1691:                                             ; preds = %1688, %1691
  %1692 = phi i64 [ %1699, %1691 ], [ %1689, %1688 ]
  %1693 = add nuw nsw i64 %1692, 1
  %1694 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1693
  store i32 1073741824, ptr %1694, align 4, !tbaa !159
  %1695 = add nuw nsw i64 %1692, 2
  %1696 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1695
  store i32 1073741824, ptr %1696, align 4, !tbaa !159
  %1697 = add nuw nsw i64 %1692, 3
  %1698 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1697
  store i32 1073741824, ptr %1698, align 4, !tbaa !159
  %1699 = add nuw nsw i64 %1692, 4
  %1700 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1699
  store i32 1073741824, ptr %1700, align 4, !tbaa !159
  %1701 = icmp eq i64 %1699, %1675
  br i1 %1701, label %1702, label %1691, !llvm.loop !173

1702:                                             ; preds = %1688, %1691, %1649
  %1703 = phi i32 [ %1266, %1649 ], [ %1674, %1691 ], [ %1674, %1688 ]
  %1704 = add nuw i64 %1645, 4294967293
  %1705 = and i64 %1704, 4294967295
  %1706 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 1, i64 %1655, i64 %1705
  %1707 = load i32, ptr %1706, align 4, !tbaa !22
  %1708 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 32, i64 %1654
  %1709 = load i16, ptr %1708, align 2, !tbaa !29
  %1710 = lshr i16 %1709, 4
  %1711 = zext i16 %1710 to i64
  %1712 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1711
  %1713 = load i32, ptr %1712, align 4, !tbaa !22
  %1714 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 35, i64 %1654, i64 %1655
  %1715 = load i16, ptr %1714, align 2, !tbaa !29
  %1716 = lshr i16 %1715, 4
  %1717 = xor i16 %1716, 127
  %1718 = zext i16 %1717 to i64
  %1719 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1718
  %1720 = load i32, ptr %1719, align 4, !tbaa !22
  %1721 = add i32 %1662, %1561
  %1722 = add i32 %1721, %1669
  %1723 = add i32 %1722, %1707
  %1724 = add i32 %1723, %1713
  %1725 = add i32 %1724, %1720
  %1726 = zext i32 %1670 to i64
  %1727 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1726
  %1728 = load i32, ptr %1727, align 4, !tbaa !159
  %1729 = icmp ult i32 %1725, %1728
  br i1 %1729, label %1730, label %1734

1730:                                             ; preds = %1702
  store i32 %1725, ptr %1727, align 4, !tbaa !159
  %1731 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1726, i32 6
  store i32 %1562, ptr %1731, align 4, !tbaa !153
  %1732 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1726, i32 7
  store i32 0, ptr %1732, align 4, !tbaa !155
  %1733 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1726, i32 2
  store <2 x i32> <i32 1, i32 0>, ptr %1733, align 4, !tbaa !22
  br label %1734

1734:                                             ; preds = %1730, %1702, %1644, %1626, %1621
  %1735 = phi i32 [ %1266, %1621 ], [ %1266, %1644 ], [ %1703, %1730 ], [ %1703, %1702 ], [ %1266, %1626 ]
  %1736 = icmp ugt i32 %1623, 2
  %1737 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 32, i64 %1484
  %1738 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 33, i64 %1484
  %1739 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 34, i64 %1484
  %1740 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 35, i64 %1484, i64 %1485
  %1741 = getelementptr inbounds [12 x i32], ptr @kRepNextStates, i64 0, i64 %1484
  %1742 = tail call i32 @llvm.umin.i32(i32 %1617, i32 %1622)
  %1743 = tail call i32 @llvm.umin.i32(i32 %1742, i32 %1262)
  %1744 = zext i32 %1743 to i64
  %1745 = tail call i32 @llvm.umin.i32(i32 %1617, i32 %1262)
  br label %1746

1746:                                             ; preds = %2060, %1734
  %1747 = phi i64 [ 0, %1734 ], [ %2063, %2060 ]
  %1748 = phi i32 [ %1735, %1734 ], [ %2062, %2060 ]
  %1749 = phi i32 [ 2, %1734 ], [ %2061, %2060 ]
  %1750 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %1747
  %1751 = load i32, ptr %1750, align 4, !tbaa !22
  %1752 = add i32 %1751, 1
  %1753 = zext i32 %1752 to i64
  %1754 = sub nsw i64 0, %1753
  %1755 = getelementptr inbounds i8, ptr %1475, i64 %1754
  %1756 = load i8, ptr %1475, align 1, !tbaa !24
  %1757 = load i8, ptr %1755, align 1, !tbaa !24
  %1758 = icmp eq i8 %1756, %1757
  br i1 %1758, label %1759, label %2060

1759:                                             ; preds = %1746
  %1760 = load i8, ptr %1474, align 1, !tbaa !24
  %1761 = getelementptr inbounds i8, ptr %1755, i64 1
  %1762 = load i8, ptr %1761, align 1, !tbaa !24
  %1763 = icmp eq i8 %1760, %1762
  br i1 %1763, label %1764, label %2060

1764:                                             ; preds = %1759
  br i1 %1736, label %1765, label %1778

1765:                                             ; preds = %1764, %1772
  %1766 = phi i64 [ %1773, %1772 ], [ 2, %1764 ]
  %1767 = getelementptr inbounds i8, ptr %1475, i64 %1766
  %1768 = load i8, ptr %1767, align 1, !tbaa !24
  %1769 = getelementptr inbounds i8, ptr %1755, i64 %1766
  %1770 = load i8, ptr %1769, align 1, !tbaa !24
  %1771 = icmp eq i8 %1768, %1770
  br i1 %1771, label %1772, label %1775

1772:                                             ; preds = %1765
  %1773 = add nuw nsw i64 %1766, 1
  %1774 = icmp eq i64 %1773, %1744
  br i1 %1774, label %1775, label %1765, !llvm.loop !174

1775:                                             ; preds = %1772, %1765
  %1776 = phi i64 [ %1766, %1765 ], [ %1744, %1772 ]
  %1777 = trunc i64 %1776 to i32
  br label %1778

1778:                                             ; preds = %1775, %1764
  %1779 = phi i32 [ 2, %1764 ], [ %1777, %1775 ]
  %1780 = add i32 %1779, %1264
  %1781 = icmp ult i32 %1748, %1780
  br i1 %1781, label %1782, label %1811

1782:                                             ; preds = %1778
  %1783 = zext i32 %1748 to i64
  %1784 = zext i32 %1780 to i64
  %1785 = sub nsw i64 %1784, %1783
  %1786 = xor i64 %1783, -1
  %1787 = add nsw i64 %1786, %1784
  %1788 = and i64 %1785, 3
  %1789 = icmp eq i64 %1788, 0
  br i1 %1789, label %1797, label %1790

1790:                                             ; preds = %1782, %1790
  %1791 = phi i64 [ %1793, %1790 ], [ %1783, %1782 ]
  %1792 = phi i64 [ %1795, %1790 ], [ 0, %1782 ]
  %1793 = add nuw nsw i64 %1791, 1
  %1794 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1793
  store i32 1073741824, ptr %1794, align 4, !tbaa !159
  %1795 = add i64 %1792, 1
  %1796 = icmp eq i64 %1795, %1788
  br i1 %1796, label %1797, label %1790, !llvm.loop !175

1797:                                             ; preds = %1790, %1782
  %1798 = phi i64 [ %1783, %1782 ], [ %1793, %1790 ]
  %1799 = icmp ult i64 %1787, 3
  br i1 %1799, label %1811, label %1800

1800:                                             ; preds = %1797, %1800
  %1801 = phi i64 [ %1808, %1800 ], [ %1798, %1797 ]
  %1802 = add nuw nsw i64 %1801, 1
  %1803 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1802
  store i32 1073741824, ptr %1803, align 4, !tbaa !159
  %1804 = add nuw nsw i64 %1801, 2
  %1805 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1804
  store i32 1073741824, ptr %1805, align 4, !tbaa !159
  %1806 = add nuw nsw i64 %1801, 3
  %1807 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1806
  store i32 1073741824, ptr %1807, align 4, !tbaa !159
  %1808 = add nuw nsw i64 %1801, 4
  %1809 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1808
  store i32 1073741824, ptr %1809, align 4, !tbaa !159
  %1810 = icmp eq i64 %1808, %1784
  br i1 %1810, label %1811, label %1800, !llvm.loop !176

1811:                                             ; preds = %1797, %1800, %1778
  %1812 = phi i32 [ %1748, %1778 ], [ %1780, %1800 ], [ %1780, %1797 ]
  %1813 = icmp eq i64 %1747, 0
  %1814 = load i16, ptr %1737, align 2, !tbaa !29
  %1815 = lshr i16 %1814, 4
  br i1 %1813, label %1816, label %1826

1816:                                             ; preds = %1811
  %1817 = zext i16 %1815 to i64
  %1818 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1817
  %1819 = load i32, ptr %1818, align 4, !tbaa !22
  %1820 = load i16, ptr %1740, align 2, !tbaa !29
  %1821 = lshr i16 %1820, 4
  %1822 = xor i16 %1821, 127
  %1823 = zext i16 %1822 to i64
  %1824 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1823
  %1825 = load i32, ptr %1824, align 4, !tbaa !22
  br label %1852

1826:                                             ; preds = %1811
  %1827 = xor i16 %1815, 127
  %1828 = zext i16 %1827 to i64
  %1829 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1828
  %1830 = load i32, ptr %1829, align 4, !tbaa !22
  %1831 = icmp eq i64 %1747, 1
  %1832 = load i16, ptr %1738, align 2, !tbaa !29
  %1833 = lshr i16 %1832, 4
  br i1 %1831, label %1834, label %1838

1834:                                             ; preds = %1826
  %1835 = zext i16 %1833 to i64
  %1836 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1835
  %1837 = load i32, ptr %1836, align 4, !tbaa !22
  br label %1852

1838:                                             ; preds = %1826
  %1839 = xor i16 %1833, 127
  %1840 = zext i16 %1839 to i64
  %1841 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1840
  %1842 = load i32, ptr %1841, align 4, !tbaa !22
  %1843 = add i32 %1842, %1830
  %1844 = load i16, ptr %1739, align 2, !tbaa !29
  %1845 = zext i16 %1844 to i64
  %1846 = sub nsw i64 2, %1747
  %1847 = and i64 %1846, 2032
  %1848 = xor i64 %1847, %1845
  %1849 = lshr i64 %1848, 4
  %1850 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1849
  %1851 = load i32, ptr %1850, align 4, !tbaa !22
  br label %1852

1852:                                             ; preds = %1838, %1834, %1816
  %1853 = phi i32 [ %1830, %1834 ], [ %1851, %1838 ], [ %1819, %1816 ]
  %1854 = phi i32 [ %1837, %1834 ], [ %1843, %1838 ], [ %1825, %1816 ]
  %1855 = add i32 %1853, %1586
  %1856 = add i32 %1855, %1854
  %1857 = zext i32 %1779 to i64
  %1858 = trunc i64 %1747 to i32
  br label %1859

1859:                                             ; preds = %1876, %1852
  %1860 = phi i64 [ %1877, %1876 ], [ %1857, %1852 ]
  %1861 = trunc i64 %1860 to i32
  %1862 = add nsw i64 %1860, 4294967294
  %1863 = and i64 %1862, 4294967295
  %1864 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 1, i64 %1485, i64 %1863
  %1865 = load i32, ptr %1864, align 4, !tbaa !22
  %1866 = add i32 %1865, %1856
  %1867 = add i32 %1264, %1861
  %1868 = zext i32 %1867 to i64
  %1869 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1868
  %1870 = load i32, ptr %1869, align 4, !tbaa !159
  %1871 = icmp ult i32 %1866, %1870
  br i1 %1871, label %1872, label %1876

1872:                                             ; preds = %1859
  store i32 %1866, ptr %1869, align 4, !tbaa !159
  %1873 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1868, i32 6
  store i32 %1264, ptr %1873, align 4, !tbaa !153
  %1874 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1868, i32 7
  store i32 %1858, ptr %1874, align 4, !tbaa !155
  %1875 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %1868, i32 2
  store i32 0, ptr %1875, align 4, !tbaa !160
  br label %1876

1876:                                             ; preds = %1872, %1859
  %1877 = add nsw i64 %1860, -1
  %1878 = and i64 %1877, 4294967294
  %1879 = icmp eq i64 %1878, 0
  br i1 %1879, label %1880, label %1859, !llvm.loop !177

1880:                                             ; preds = %1876
  %1881 = add i32 %1779, 1
  %1882 = select i1 %1813, i32 %1881, i32 %1749
  %1883 = add i32 %1881, %1622
  %1884 = tail call i32 @llvm.umin.i32(i32 %1883, i32 %1619)
  %1885 = icmp ult i32 %1881, %1884
  br i1 %1885, label %1886, label %1903

1886:                                             ; preds = %1880
  %1887 = zext i32 %1881 to i64
  %1888 = tail call i32 @llvm.umin.i32(i32 %1745, i32 %1883)
  %1889 = zext i32 %1888 to i64
  br label %1890

1890:                                             ; preds = %1897, %1886
  %1891 = phi i64 [ %1887, %1886 ], [ %1898, %1897 ]
  %1892 = getelementptr inbounds i8, ptr %1475, i64 %1891
  %1893 = load i8, ptr %1892, align 1, !tbaa !24
  %1894 = getelementptr inbounds i8, ptr %1755, i64 %1891
  %1895 = load i8, ptr %1894, align 1, !tbaa !24
  %1896 = icmp eq i8 %1893, %1895
  br i1 %1896, label %1897, label %1900

1897:                                             ; preds = %1890
  %1898 = add nuw nsw i64 %1891, 1
  %1899 = icmp eq i64 %1898, %1889
  br i1 %1899, label %1900, label %1890, !llvm.loop !178

1900:                                             ; preds = %1897, %1890
  %1901 = phi i64 [ %1891, %1890 ], [ %1889, %1897 ]
  %1902 = trunc i64 %1901 to i32
  br label %1903

1903:                                             ; preds = %1900, %1880
  %1904 = phi i32 [ %1881, %1880 ], [ %1902, %1900 ]
  %1905 = sub i32 %1904, %1881
  %1906 = icmp ugt i32 %1905, 1
  br i1 %1906, label %1907, label %2060

1907:                                             ; preds = %1903
  %1908 = load i32, ptr %1741, align 4, !tbaa !22
  %1909 = add i32 %1779, %1360
  %1910 = and i32 %1909, %1482
  %1911 = add i32 %1779, -2
  %1912 = zext i32 %1911 to i64
  %1913 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 1, i64 %1485, i64 %1912
  %1914 = load i32, ptr %1913, align 4, !tbaa !22
  %1915 = zext i32 %1908 to i64
  %1916 = zext i32 %1910 to i64
  %1917 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %1915, i64 %1916
  %1918 = load i16, ptr %1917, align 2, !tbaa !29
  %1919 = lshr i16 %1918, 4
  %1920 = zext i16 %1919 to i64
  %1921 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1920
  %1922 = load i32, ptr %1921, align 4, !tbaa !22
  %1923 = and i32 %1909, %1494
  %1924 = shl i32 %1923, %1496
  %1925 = add i32 %1779, -1
  %1926 = zext i32 %1925 to i64
  %1927 = getelementptr inbounds i8, ptr %1475, i64 %1926
  %1928 = load i8, ptr %1927, align 1, !tbaa !24
  %1929 = zext i8 %1928 to i32
  %1930 = lshr i32 %1929, %1501
  %1931 = add i32 %1930, %1924
  %1932 = mul i32 %1931, 768
  %1933 = zext i32 %1932 to i64
  %1934 = getelementptr inbounds i16, ptr %1493, i64 %1933
  %1935 = getelementptr inbounds i8, ptr %1475, i64 %1857
  %1936 = load i8, ptr %1935, align 1, !tbaa !24
  %1937 = zext i8 %1936 to i32
  %1938 = getelementptr inbounds i8, ptr %1755, i64 %1857
  %1939 = load i8, ptr %1938, align 1, !tbaa !24
  %1940 = zext i8 %1939 to i32
  %1941 = or i32 %1937, 256
  br label %1942

1942:                                             ; preds = %1942, %1907
  %1943 = phi i32 [ %1940, %1907 ], [ %1947, %1942 ]
  %1944 = phi i32 [ %1941, %1907 ], [ %1964, %1942 ]
  %1945 = phi i32 [ 0, %1907 ], [ %1963, %1942 ]
  %1946 = phi i32 [ 256, %1907 ], [ %1967, %1942 ]
  %1947 = shl i32 %1943, 1
  %1948 = and i32 %1946, %1947
  %1949 = lshr i32 %1944, 8
  %1950 = add i32 %1946, %1949
  %1951 = add i32 %1950, %1948
  %1952 = zext i32 %1951 to i64
  %1953 = getelementptr inbounds i16, ptr %1934, i64 %1952
  %1954 = load i16, ptr %1953, align 2, !tbaa !29
  %1955 = zext i16 %1954 to i64
  %1956 = and i32 %1944, 128
  %1957 = icmp eq i32 %1956, 0
  %1958 = select i1 %1957, i64 0, i64 2032
  %1959 = xor i64 %1958, %1955
  %1960 = lshr i64 %1959, 4
  %1961 = getelementptr inbounds i32, ptr %185, i64 %1960
  %1962 = load i32, ptr %1961, align 4, !tbaa !22
  %1963 = add i32 %1962, %1945
  %1964 = shl nuw nsw i32 %1944, 1
  %1965 = xor i32 %1947, %1964
  %1966 = xor i32 %1965, -1
  %1967 = and i32 %1946, %1966
  %1968 = icmp ult i32 %1944, 32768
  br i1 %1968, label %1942, label %1969, !llvm.loop !169

1969:                                             ; preds = %1942
  %1970 = getelementptr inbounds [12 x i32], ptr @kLiteralNextStates, i64 0, i64 %1915
  %1971 = load i32, ptr %1970, align 4, !tbaa !22
  %1972 = add i32 %1909, 1
  %1973 = and i32 %1972, %1482
  %1974 = zext i32 %1971 to i64
  %1975 = zext i32 %1973 to i64
  %1976 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %1974, i64 %1975
  %1977 = load i16, ptr %1976, align 2, !tbaa !29
  %1978 = lshr i16 %1977, 4
  %1979 = xor i16 %1978, 127
  %1980 = zext i16 %1979 to i64
  %1981 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1980
  %1982 = load i32, ptr %1981, align 4, !tbaa !22
  %1983 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 31, i64 %1974
  %1984 = load i16, ptr %1983, align 2, !tbaa !29
  %1985 = lshr i16 %1984, 4
  %1986 = xor i16 %1985, 127
  %1987 = zext i16 %1986 to i64
  %1988 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %1987
  %1989 = load i32, ptr %1988, align 4, !tbaa !22
  %1990 = add i32 %1780, 1
  %1991 = add i32 %1905, %1990
  %1992 = icmp ult i32 %1812, %1991
  br i1 %1992, label %1993, label %2023

1993:                                             ; preds = %1969
  %1994 = zext i32 %1812 to i64
  %1995 = add i32 %1904, %1264
  %1996 = zext i32 %1995 to i64
  %1997 = sub nsw i64 %1996, %1994
  %1998 = xor i64 %1994, -1
  %1999 = add nsw i64 %1998, %1996
  %2000 = and i64 %1997, 3
  %2001 = icmp eq i64 %2000, 0
  br i1 %2001, label %2009, label %2002

2002:                                             ; preds = %1993, %2002
  %2003 = phi i64 [ %2005, %2002 ], [ %1994, %1993 ]
  %2004 = phi i64 [ %2007, %2002 ], [ 0, %1993 ]
  %2005 = add nuw nsw i64 %2003, 1
  %2006 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2005
  store i32 1073741824, ptr %2006, align 4, !tbaa !159
  %2007 = add i64 %2004, 1
  %2008 = icmp eq i64 %2007, %2000
  br i1 %2008, label %2009, label %2002, !llvm.loop !179

2009:                                             ; preds = %2002, %1993
  %2010 = phi i64 [ %1994, %1993 ], [ %2005, %2002 ]
  %2011 = icmp ult i64 %1999, 3
  br i1 %2011, label %2023, label %2012

2012:                                             ; preds = %2009, %2012
  %2013 = phi i64 [ %2020, %2012 ], [ %2010, %2009 ]
  %2014 = add nuw nsw i64 %2013, 1
  %2015 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2014
  store i32 1073741824, ptr %2015, align 4, !tbaa !159
  %2016 = add nuw nsw i64 %2013, 2
  %2017 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2016
  store i32 1073741824, ptr %2017, align 4, !tbaa !159
  %2018 = add nuw nsw i64 %2013, 3
  %2019 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2018
  store i32 1073741824, ptr %2019, align 4, !tbaa !159
  %2020 = add nuw nsw i64 %2013, 4
  %2021 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2020
  store i32 1073741824, ptr %2021, align 4, !tbaa !159
  %2022 = icmp eq i64 %2020, %1996
  br i1 %2022, label %2023, label %2012, !llvm.loop !180

2023:                                             ; preds = %2009, %2012, %1969
  %2024 = phi i32 [ %1812, %1969 ], [ %1995, %2012 ], [ %1995, %2009 ]
  %2025 = add i32 %1905, -2
  %2026 = zext i32 %2025 to i64
  %2027 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 1, i64 %1975, i64 %2026
  %2028 = load i32, ptr %2027, align 4, !tbaa !22
  %2029 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 32, i64 %1974
  %2030 = load i16, ptr %2029, align 2, !tbaa !29
  %2031 = lshr i16 %2030, 4
  %2032 = zext i16 %2031 to i64
  %2033 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %2032
  %2034 = load i32, ptr %2033, align 4, !tbaa !22
  %2035 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 35, i64 %1974, i64 %1975
  %2036 = load i16, ptr %2035, align 2, !tbaa !29
  %2037 = lshr i16 %2036, 4
  %2038 = xor i16 %2037, 127
  %2039 = zext i16 %2038 to i64
  %2040 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %2039
  %2041 = load i32, ptr %2040, align 4, !tbaa !22
  %2042 = add i32 %1914, %1856
  %2043 = add i32 %2042, %1922
  %2044 = add i32 %2043, %1963
  %2045 = add i32 %2044, %1982
  %2046 = add i32 %2045, %1989
  %2047 = add i32 %2046, %2028
  %2048 = add i32 %2047, %2034
  %2049 = add i32 %2048, %2041
  %2050 = zext i32 %1991 to i64
  %2051 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2050
  %2052 = load i32, ptr %2051, align 4, !tbaa !159
  %2053 = icmp ult i32 %2049, %2052
  br i1 %2053, label %2054, label %2060

2054:                                             ; preds = %2023
  store i32 %2049, ptr %2051, align 4, !tbaa !159
  %2055 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2050, i32 6
  store i32 %1990, ptr %2055, align 4, !tbaa !153
  %2056 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2050, i32 7
  store i32 0, ptr %2056, align 4, !tbaa !155
  %2057 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2050, i32 2
  store <2 x i32> <i32 1, i32 1>, ptr %2057, align 4, !tbaa !22
  %2058 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2050, i32 4
  store i32 %1264, ptr %2058, align 4, !tbaa !167
  %2059 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2050, i32 5
  store i32 %1858, ptr %2059, align 4, !tbaa !168
  br label %2060

2060:                                             ; preds = %2054, %2023, %1903, %1759, %1746
  %2061 = phi i32 [ %1749, %1759 ], [ %1749, %1746 ], [ %1882, %2023 ], [ %1882, %2054 ], [ %1882, %1903 ]
  %2062 = phi i32 [ %1748, %1759 ], [ %1748, %1746 ], [ %2024, %2023 ], [ %2024, %2054 ], [ %1812, %1903 ]
  %2063 = add nuw nsw i64 %1747, 1
  %2064 = icmp eq i64 %2063, 4
  br i1 %2064, label %2065, label %1746, !llvm.loop !181

2065:                                             ; preds = %2060
  %2066 = icmp ugt i32 %1314, %1623
  br i1 %2066, label %2067, label %2077

2067:                                             ; preds = %2065, %2067
  %2068 = phi i32 [ %2073, %2067 ], [ 0, %2065 ]
  %2069 = zext i32 %2068 to i64
  %2070 = getelementptr inbounds i32, ptr %166, i64 %2069
  %2071 = load i32, ptr %2070, align 4, !tbaa !22
  %2072 = icmp ugt i32 %1623, %2071
  %2073 = add i32 %2068, 2
  br i1 %2072, label %2067, label %2074, !llvm.loop !182

2074:                                             ; preds = %2067
  %2075 = zext i32 %2068 to i64
  %2076 = getelementptr inbounds i32, ptr %166, i64 %2075
  store i32 %1623, ptr %2076, align 4, !tbaa !22
  br label %2077

2077:                                             ; preds = %2074, %2065
  %2078 = phi i32 [ %2073, %2074 ], [ %1273, %2065 ]
  %2079 = phi i32 [ %1623, %2074 ], [ %1314, %2065 ]
  %2080 = icmp ult i32 %2079, %2061
  br i1 %2080, label %2410, label %2081

2081:                                             ; preds = %2077
  %2082 = zext i16 %1581 to i64
  %2083 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %2082
  %2084 = load i32, ptr %2083, align 4, !tbaa !22
  %2085 = add i32 %2084, %1578
  %2086 = add i32 %2079, %1264
  %2087 = icmp ult i32 %2062, %2086
  br i1 %2087, label %2088, label %2110

2088:                                             ; preds = %2081
  %2089 = zext i32 %2062 to i64
  %2090 = tail call i32 @llvm.umin.i32(i32 %1314, i32 %1617)
  %2091 = tail call i32 @llvm.umin.i32(i32 %2090, i32 %1622)
  %2092 = tail call i32 @llvm.umin.i32(i32 %2091, i32 %1262)
  %2093 = add i32 %2092, %1264
  %2094 = zext i32 %2093 to i64
  %2095 = sub nsw i64 %2094, %2089
  %2096 = xor i64 %2089, -1
  %2097 = add nsw i64 %2096, %2094
  %2098 = and i64 %2095, 3
  %2099 = icmp eq i64 %2098, 0
  br i1 %2099, label %2107, label %2100

2100:                                             ; preds = %2088, %2100
  %2101 = phi i64 [ %2103, %2100 ], [ %2089, %2088 ]
  %2102 = phi i64 [ %2105, %2100 ], [ 0, %2088 ]
  %2103 = add nuw nsw i64 %2101, 1
  %2104 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2103
  store i32 1073741824, ptr %2104, align 4, !tbaa !159
  %2105 = add i64 %2102, 1
  %2106 = icmp eq i64 %2105, %2098
  br i1 %2106, label %2107, label %2100, !llvm.loop !183

2107:                                             ; preds = %2100, %2088
  %2108 = phi i64 [ %2089, %2088 ], [ %2103, %2100 ]
  %2109 = icmp ult i64 %2097, 3
  br i1 %2109, label %2110, label %2112

2110:                                             ; preds = %2107, %2112, %2081
  %2111 = phi i32 [ %2062, %2081 ], [ %2093, %2112 ], [ %2093, %2107 ]
  br label %2123

2112:                                             ; preds = %2107, %2112
  %2113 = phi i64 [ %2120, %2112 ], [ %2108, %2107 ]
  %2114 = add nuw nsw i64 %2113, 1
  %2115 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2114
  store i32 1073741824, ptr %2115, align 4, !tbaa !159
  %2116 = add nuw nsw i64 %2113, 2
  %2117 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2116
  store i32 1073741824, ptr %2117, align 4, !tbaa !159
  %2118 = add nuw nsw i64 %2113, 3
  %2119 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2118
  store i32 1073741824, ptr %2119, align 4, !tbaa !159
  %2120 = add nuw nsw i64 %2113, 4
  %2121 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2120
  store i32 1073741824, ptr %2121, align 4, !tbaa !159
  %2122 = icmp eq i64 %2120, %2094
  br i1 %2122, label %2110, label %2112, !llvm.loop !184

2123:                                             ; preds = %2123, %2110
  %2124 = phi i32 [ %2129, %2123 ], [ 0, %2110 ]
  %2125 = zext i32 %2124 to i64
  %2126 = getelementptr inbounds i32, ptr %166, i64 %2125
  %2127 = load i32, ptr %2126, align 4, !tbaa !22
  %2128 = icmp ugt i32 %2061, %2127
  %2129 = add i32 %2124, 2
  br i1 %2128, label %2123, label %2130, !llvm.loop !185

2130:                                             ; preds = %2123
  %2131 = or i32 %2124, 1
  %2132 = zext i32 %2131 to i64
  %2133 = getelementptr inbounds i32, ptr %166, i64 %2132
  %2134 = load i32, ptr %2133, align 4, !tbaa !22
  %2135 = add i32 %2134, -524288
  %2136 = icmp slt i32 %2135, 0
  %2137 = select i1 %2136, i32 6, i32 18
  %2138 = lshr i32 %2134, %2137
  %2139 = zext i32 %2138 to i64
  %2140 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 12, i64 %2139
  %2141 = load i8, ptr %2140, align 1, !tbaa !24
  %2142 = zext i8 %2141 to i32
  %2143 = shl nuw nsw i32 %2137, 1
  %2144 = add nuw nsw i32 %2143, %2142
  %2145 = getelementptr inbounds [12 x i32], ptr @kMatchNextStates, i64 0, i64 %1484
  %2146 = load i32, ptr %167, align 8, !tbaa !66
  br label %2147

2147:                                             ; preds = %2130, %2399
  %2148 = phi i32 [ %2061, %2130 ], [ %2172, %2399 ]
  %2149 = phi i32 [ %2124, %2130 ], [ %2391, %2399 ]
  %2150 = phi i32 [ %2134, %2130 ], [ %2397, %2399 ]
  %2151 = phi i32 [ %2144, %2130 ], [ %2409, %2399 ]
  %2152 = phi i32 [ %2061, %2130 ], [ %2212, %2399 ]
  %2153 = phi i32 [ %2111, %2130 ], [ %2390, %2399 ]
  %2154 = zext i32 %2151 to i64
  br label %2155

2155:                                             ; preds = %2147, %2393
  %2156 = phi i32 [ %2172, %2393 ], [ %2148, %2147 ]
  %2157 = phi i32 [ %2391, %2393 ], [ %2149, %2147 ]
  %2158 = phi i32 [ %2397, %2393 ], [ %2150, %2147 ]
  %2159 = phi i32 [ %2212, %2393 ], [ %2152, %2147 ]
  %2160 = phi i32 [ %2390, %2393 ], [ %2153, %2147 ]
  %2161 = icmp ult i32 %2158, 128
  %2162 = and i32 %2158, 15
  %2163 = zext i32 %2162 to i64
  %2164 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 21, i64 %2163
  %2165 = zext i32 %2158 to i64
  %2166 = add i32 %2158, 4
  %2167 = zext i32 %2157 to i64
  %2168 = getelementptr inbounds i32, ptr %166, i64 %2167
  br label %2169

2169:                                             ; preds = %2155, %2204
  %2170 = phi i32 [ %2172, %2204 ], [ %2156, %2155 ]
  %2171 = phi i32 [ %2205, %2204 ], [ %2159, %2155 ]
  %2172 = add i32 %2170, 1
  %2173 = add i32 %2171, -2
  %2174 = zext i32 %2173 to i64
  %2175 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39, i32 1, i64 %1485, i64 %2174
  %2176 = load i32, ptr %2175, align 4, !tbaa !22
  %2177 = add i32 %2085, %2176
  %2178 = icmp ult i32 %2171, 5
  %2179 = select i1 %2178, i32 %2173, i32 3
  %2180 = zext i32 %2179 to i64
  br i1 %2161, label %2181, label %2184

2181:                                             ; preds = %2169
  %2182 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 20, i64 %2180, i64 %2165
  %2183 = load i32, ptr %2182, align 4, !tbaa !22
  br label %2189

2184:                                             ; preds = %2169
  %2185 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 19, i64 %2180, i64 %2154
  %2186 = load i32, ptr %2185, align 4, !tbaa !22
  %2187 = load i32, ptr %2164, align 4, !tbaa !22
  %2188 = add i32 %2187, %2186
  br label %2189

2189:                                             ; preds = %2184, %2181
  %2190 = phi i32 [ %2183, %2181 ], [ %2188, %2184 ]
  %2191 = add i32 %2177, %2190
  %2192 = add i32 %2171, %1264
  %2193 = zext i32 %2192 to i64
  %2194 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2193
  %2195 = load i32, ptr %2194, align 4, !tbaa !159
  %2196 = icmp ult i32 %2191, %2195
  br i1 %2196, label %2197, label %2201

2197:                                             ; preds = %2189
  store i32 %2191, ptr %2194, align 4, !tbaa !159
  %2198 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2193, i32 6
  store i32 %1264, ptr %2198, align 4, !tbaa !153
  %2199 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2193, i32 7
  store i32 %2166, ptr %2199, align 4, !tbaa !155
  %2200 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2193, i32 2
  store i32 0, ptr %2200, align 4, !tbaa !160
  br label %2201

2201:                                             ; preds = %2197, %2189
  %2202 = load i32, ptr %2168, align 4, !tbaa !22
  %2203 = icmp eq i32 %2171, %2202
  br i1 %2203, label %2206, label %2204

2204:                                             ; preds = %2201
  %2205 = add i32 %2171, 1
  br label %2169

2206:                                             ; preds = %2201
  %2207 = zext i32 %2172 to i64
  %2208 = add i32 %2158, 1
  %2209 = zext i32 %2208 to i64
  %2210 = sub nsw i64 0, %2209
  %2211 = getelementptr inbounds i8, ptr %1475, i64 %2210
  %2212 = add i32 %2171, 1
  %2213 = add i32 %2146, %2212
  %2214 = tail call i32 @llvm.umin.i32(i32 %2213, i32 %1619)
  %2215 = icmp ult i32 %2212, %2214
  br i1 %2215, label %2216, label %2231

2216:                                             ; preds = %2206
  %2217 = zext i32 %2214 to i64
  br label %2218

2218:                                             ; preds = %2225, %2216
  %2219 = phi i64 [ %2207, %2216 ], [ %2226, %2225 ]
  %2220 = getelementptr inbounds i8, ptr %1475, i64 %2219
  %2221 = load i8, ptr %2220, align 1, !tbaa !24
  %2222 = getelementptr inbounds i8, ptr %2211, i64 %2219
  %2223 = load i8, ptr %2222, align 1, !tbaa !24
  %2224 = icmp eq i8 %2221, %2223
  br i1 %2224, label %2225, label %2228

2225:                                             ; preds = %2218
  %2226 = add nuw nsw i64 %2219, 1
  %2227 = icmp ult i64 %2226, %2217
  br i1 %2227, label %2218, label %2228, !llvm.loop !186

2228:                                             ; preds = %2225, %2218
  %2229 = phi i64 [ %2219, %2218 ], [ %2226, %2225 ]
  %2230 = trunc i64 %2229 to i32
  br label %2231

2231:                                             ; preds = %2228, %2206
  %2232 = phi i32 [ %2212, %2206 ], [ %2230, %2228 ]
  %2233 = sub i32 %2232, %2212
  %2234 = icmp ugt i32 %2233, 1
  br i1 %2234, label %2235, label %2389

2235:                                             ; preds = %2231
  %2236 = load i32, ptr %2145, align 4, !tbaa !22
  %2237 = add i32 %2171, %1360
  %2238 = load i32, ptr %173, align 4, !tbaa !100
  %2239 = and i32 %2238, %2237
  %2240 = zext i32 %2236 to i64
  %2241 = zext i32 %2239 to i64
  %2242 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %2240, i64 %2241
  %2243 = load i16, ptr %2242, align 2, !tbaa !29
  %2244 = lshr i16 %2243, 4
  %2245 = zext i16 %2244 to i64
  %2246 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %2245
  %2247 = load i32, ptr %2246, align 4, !tbaa !22
  %2248 = load i32, ptr %183, align 8, !tbaa !101
  %2249 = and i32 %2248, %2237
  %2250 = load i32, ptr %184, align 4, !tbaa !67
  %2251 = shl i32 %2249, %2250
  %2252 = add i32 %2171, -1
  %2253 = zext i32 %2252 to i64
  %2254 = getelementptr inbounds i8, ptr %1475, i64 %2253
  %2255 = load i8, ptr %2254, align 1, !tbaa !24
  %2256 = zext i8 %2255 to i32
  %2257 = sub i32 8, %2250
  %2258 = lshr i32 %2256, %2257
  %2259 = add i32 %2258, %2251
  %2260 = mul i32 %2259, 768
  %2261 = zext i32 %2260 to i64
  %2262 = getelementptr inbounds i16, ptr %1493, i64 %2261
  %2263 = zext i32 %2171 to i64
  %2264 = getelementptr inbounds i8, ptr %1475, i64 %2263
  %2265 = load i8, ptr %2264, align 1, !tbaa !24
  %2266 = zext i8 %2265 to i32
  %2267 = getelementptr inbounds i8, ptr %2211, i64 %2263
  %2268 = load i8, ptr %2267, align 1, !tbaa !24
  %2269 = zext i8 %2268 to i32
  %2270 = or i32 %2266, 256
  br label %2271

2271:                                             ; preds = %2271, %2235
  %2272 = phi i32 [ %2269, %2235 ], [ %2276, %2271 ]
  %2273 = phi i32 [ %2270, %2235 ], [ %2293, %2271 ]
  %2274 = phi i32 [ 0, %2235 ], [ %2292, %2271 ]
  %2275 = phi i32 [ 256, %2235 ], [ %2296, %2271 ]
  %2276 = shl i32 %2272, 1
  %2277 = and i32 %2275, %2276
  %2278 = lshr i32 %2273, 8
  %2279 = add i32 %2275, %2278
  %2280 = add i32 %2279, %2277
  %2281 = zext i32 %2280 to i64
  %2282 = getelementptr inbounds i16, ptr %2262, i64 %2281
  %2283 = load i16, ptr %2282, align 2, !tbaa !29
  %2284 = zext i16 %2283 to i64
  %2285 = and i32 %2273, 128
  %2286 = icmp eq i32 %2285, 0
  %2287 = select i1 %2286, i64 0, i64 2032
  %2288 = xor i64 %2287, %2284
  %2289 = lshr i64 %2288, 4
  %2290 = getelementptr inbounds i32, ptr %185, i64 %2289
  %2291 = load i32, ptr %2290, align 4, !tbaa !22
  %2292 = add i32 %2291, %2274
  %2293 = shl nuw nsw i32 %2273, 1
  %2294 = xor i32 %2276, %2293
  %2295 = xor i32 %2294, -1
  %2296 = and i32 %2275, %2295
  %2297 = icmp ult i32 %2273, 32768
  br i1 %2297, label %2271, label %2298, !llvm.loop !169

2298:                                             ; preds = %2271
  %2299 = getelementptr inbounds [12 x i32], ptr @kLiteralNextStates, i64 0, i64 %2240
  %2300 = load i32, ptr %2299, align 4, !tbaa !22
  %2301 = add i32 %2239, 1
  %2302 = and i32 %2301, %2238
  %2303 = zext i32 %2300 to i64
  %2304 = zext i32 %2302 to i64
  %2305 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %2303, i64 %2304
  %2306 = load i16, ptr %2305, align 2, !tbaa !29
  %2307 = lshr i16 %2306, 4
  %2308 = xor i16 %2307, 127
  %2309 = zext i16 %2308 to i64
  %2310 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %2309
  %2311 = load i32, ptr %2310, align 4, !tbaa !22
  %2312 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 31, i64 %2303
  %2313 = load i16, ptr %2312, align 2, !tbaa !29
  %2314 = lshr i16 %2313, 4
  %2315 = xor i16 %2314, 127
  %2316 = zext i16 %2315 to i64
  %2317 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %2316
  %2318 = load i32, ptr %2317, align 4, !tbaa !22
  %2319 = add i32 %2192, 1
  %2320 = add i32 %2233, %2319
  %2321 = icmp ult i32 %2160, %2320
  br i1 %2321, label %2322, label %2352

2322:                                             ; preds = %2298
  %2323 = zext i32 %2160 to i64
  %2324 = add i32 %2232, %1264
  %2325 = zext i32 %2324 to i64
  %2326 = sub nsw i64 %2325, %2323
  %2327 = xor i64 %2323, -1
  %2328 = add nsw i64 %2327, %2325
  %2329 = and i64 %2326, 3
  %2330 = icmp eq i64 %2329, 0
  br i1 %2330, label %2338, label %2331

2331:                                             ; preds = %2322, %2331
  %2332 = phi i64 [ %2334, %2331 ], [ %2323, %2322 ]
  %2333 = phi i64 [ %2336, %2331 ], [ 0, %2322 ]
  %2334 = add nuw nsw i64 %2332, 1
  %2335 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2334
  store i32 1073741824, ptr %2335, align 4, !tbaa !159
  %2336 = add i64 %2333, 1
  %2337 = icmp eq i64 %2336, %2329
  br i1 %2337, label %2338, label %2331, !llvm.loop !187

2338:                                             ; preds = %2331, %2322
  %2339 = phi i64 [ %2323, %2322 ], [ %2334, %2331 ]
  %2340 = icmp ult i64 %2328, 3
  br i1 %2340, label %2352, label %2341

2341:                                             ; preds = %2338, %2341
  %2342 = phi i64 [ %2349, %2341 ], [ %2339, %2338 ]
  %2343 = add nuw nsw i64 %2342, 1
  %2344 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2343
  store i32 1073741824, ptr %2344, align 4, !tbaa !159
  %2345 = add nuw nsw i64 %2342, 2
  %2346 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2345
  store i32 1073741824, ptr %2346, align 4, !tbaa !159
  %2347 = add nuw nsw i64 %2342, 3
  %2348 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2347
  store i32 1073741824, ptr %2348, align 4, !tbaa !159
  %2349 = add nuw nsw i64 %2342, 4
  %2350 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2349
  store i32 1073741824, ptr %2350, align 4, !tbaa !159
  %2351 = icmp eq i64 %2349, %2325
  br i1 %2351, label %2352, label %2341, !llvm.loop !188

2352:                                             ; preds = %2338, %2341, %2298
  %2353 = phi i32 [ %2160, %2298 ], [ %2324, %2341 ], [ %2324, %2338 ]
  %2354 = add i32 %2233, -2
  %2355 = zext i32 %2354 to i64
  %2356 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 40, i32 1, i64 %2304, i64 %2355
  %2357 = load i32, ptr %2356, align 4, !tbaa !22
  %2358 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 32, i64 %2303
  %2359 = load i16, ptr %2358, align 2, !tbaa !29
  %2360 = lshr i16 %2359, 4
  %2361 = zext i16 %2360 to i64
  %2362 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %2361
  %2363 = load i32, ptr %2362, align 4, !tbaa !22
  %2364 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 35, i64 %2303, i64 %2304
  %2365 = load i16, ptr %2364, align 2, !tbaa !29
  %2366 = lshr i16 %2365, 4
  %2367 = xor i16 %2366, 127
  %2368 = zext i16 %2367 to i64
  %2369 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13, i64 %2368
  %2370 = load i32, ptr %2369, align 4, !tbaa !22
  %2371 = add i32 %2247, %2191
  %2372 = add i32 %2371, %2292
  %2373 = add i32 %2372, %2311
  %2374 = add i32 %2373, %2318
  %2375 = add i32 %2374, %2357
  %2376 = add i32 %2375, %2363
  %2377 = add i32 %2376, %2370
  %2378 = zext i32 %2320 to i64
  %2379 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2378
  %2380 = load i32, ptr %2379, align 4, !tbaa !159
  %2381 = icmp ult i32 %2377, %2380
  br i1 %2381, label %2382, label %2389

2382:                                             ; preds = %2352
  store i32 %2377, ptr %2379, align 4, !tbaa !159
  %2383 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2378, i32 6
  store i32 %2319, ptr %2383, align 4, !tbaa !153
  %2384 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2378, i32 7
  store i32 0, ptr %2384, align 4, !tbaa !155
  %2385 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2378, i32 2
  store <2 x i32> <i32 1, i32 1>, ptr %2385, align 4, !tbaa !22
  %2386 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2378, i32 4
  store i32 %1264, ptr %2386, align 4, !tbaa !167
  %2387 = add i32 %2158, 4
  %2388 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 11, i64 %2378, i32 5
  store i32 %2387, ptr %2388, align 4, !tbaa !168
  br label %2389

2389:                                             ; preds = %2382, %2352, %2231
  %2390 = phi i32 [ %2160, %2231 ], [ %2353, %2382 ], [ %2353, %2352 ]
  %2391 = add i32 %2157, 2
  %2392 = icmp eq i32 %2391, %2078
  br i1 %2392, label %2410, label %2393

2393:                                             ; preds = %2389
  %2394 = add i32 %2157, 3
  %2395 = zext i32 %2394 to i64
  %2396 = getelementptr inbounds i32, ptr %166, i64 %2395
  %2397 = load i32, ptr %2396, align 4, !tbaa !22
  %2398 = icmp ugt i32 %2397, 127
  br i1 %2398, label %2399, label %2155

2399:                                             ; preds = %2393
  %2400 = add i32 %2397, -524288
  %2401 = icmp slt i32 %2400, 0
  %2402 = select i1 %2401, i32 6, i32 18
  %2403 = lshr i32 %2397, %2402
  %2404 = zext i32 %2403 to i64
  %2405 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 12, i64 %2404
  %2406 = load i8, ptr %2405, align 1, !tbaa !24
  %2407 = zext i8 %2406 to i32
  %2408 = shl nuw nsw i32 %2402, 1
  %2409 = add nuw nsw i32 %2408, %2407
  br label %2147

2410:                                             ; preds = %2389, %2077, %1615
  %2411 = phi i32 [ %1266, %1615 ], [ %2062, %2077 ], [ %2390, %2389 ]
  %2412 = add i32 %1264, 1
  %2413 = icmp eq i32 %2412, %2411
  %2414 = add i32 %1262, -1
  br i1 %2413, label %1220, label %1261

2415:                                             ; preds = %1050, %955, %776, %713, %932, %935, %942, %950, %1258, %1356
  %2416 = phi i32 [ %1259, %1258 ], [ %1357, %1356 ], [ %947, %942 ], [ %947, %950 ], [ %926, %932 ], [ %926, %935 ], [ %719, %713 ], [ -1, %776 ], [ -1, %955 ], [ %1051, %1050 ]
  %2417 = phi i32 [ %1260, %1258 ], [ %1358, %1356 ], [ 1, %942 ], [ %778, %950 ], [ 1, %932 ], [ %929, %935 ], [ %717, %713 ], [ 1, %776 ], [ 1, %955 ], [ 1, %1050 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %2424

2418:                                             ; preds = %694, %317
  %2419 = phi i32 [ %318, %317 ], [ %695, %694 ]
  %2420 = phi i1 [ true, %317 ], [ false, %694 ]
  %2421 = phi i32 [ 1, %317 ], [ 2, %694 ]
  %2422 = load i32, ptr %173, align 4, !tbaa !100
  %2423 = and i32 %2422, %213
  br label %2566

2424:                                             ; preds = %609, %650, %676, %698, %701, %684, %658, %632, %606, %578, %570, %562, %504, %440, %273, %2415
  %2425 = phi i32 [ %2416, %2415 ], [ -1, %273 ], [ %702, %701 ], [ -1, %504 ], [ -1, %684 ], [ -1, %658 ], [ -1, %632 ], [ -1, %606 ], [ -1, %562 ], [ -1, %570 ], [ -1, %578 ], [ %445, %440 ], [ -1, %698 ], [ -1, %676 ], [ -1, %650 ], [ -1, %609 ]
  %2426 = phi i32 [ %2417, %2415 ], [ 1, %273 ], [ %704, %701 ], [ 1, %504 ], [ 1, %684 ], [ 1, %658 ], [ 1, %632 ], [ 1, %606 ], [ 1, %562 ], [ 1, %570 ], [ 1, %578 ], [ 1, %440 ], [ 1, %698 ], [ 1, %676 ], [ 1, %650 ], [ 1, %609 ]
  %2427 = load i32, ptr %173, align 4, !tbaa !100
  %2428 = and i32 %2427, %213
  %2429 = icmp eq i32 %2426, 1
  %2430 = icmp eq i32 %2425, -1
  %2431 = select i1 %2429, i1 %2430, i1 false
  br i1 %2431, label %2432, label %2566

2432:                                             ; preds = %2424
  %2433 = load i32, ptr %180, align 8, !tbaa !31
  %2434 = zext i32 %2433 to i64
  %2435 = zext i32 %2428 to i64
  %2436 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %2434, i64 %2435
  %2437 = load i16, ptr %2436, align 2, !tbaa !29
  %2438 = zext i16 %2437 to i32
  %2439 = load i32, ptr %196, align 8, !tbaa !85
  %2440 = lshr i32 %2439, 11
  %2441 = mul i32 %2440, %2438
  %2442 = sub nsw i32 2048, %2438
  %2443 = lshr i32 %2442, 5
  store i32 %2441, ptr %196, align 8
  %2444 = trunc i32 %2443 to i16
  %2445 = add i16 %2437, %2444
  store i16 %2445, ptr %2436, align 2, !tbaa !29
  %2446 = icmp ult i32 %2441, 16777216
  br i1 %2446, label %2447, label %2449

2447:                                             ; preds = %2432
  %2448 = shl nuw i32 %2441, 8
  store i32 %2448, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  br label %2449

2449:                                             ; preds = %2432, %2447
  %2450 = load ptr, ptr %168, align 8, !tbaa !130
  %2451 = load ptr, ptr %155, align 8, !tbaa !124
  %2452 = tail call ptr %2450(ptr noundef %2451) #16
  %2453 = load i32, ptr %161, align 4, !tbaa !99
  %2454 = zext i32 %2453 to i64
  %2455 = sub nsw i64 0, %2454
  %2456 = getelementptr inbounds i8, ptr %2452, i64 %2455
  %2457 = load i8, ptr %2456, align 1, !tbaa !24
  %2458 = load ptr, ptr %182, align 8, !tbaa !51
  %2459 = load i32, ptr %183, align 8, !tbaa !101
  %2460 = and i32 %2459, %213
  %2461 = load i32, ptr %184, align 4, !tbaa !67
  %2462 = shl i32 %2460, %2461
  %2463 = getelementptr inbounds i8, ptr %2456, i64 -1
  %2464 = load i8, ptr %2463, align 1, !tbaa !24
  %2465 = zext i8 %2464 to i32
  %2466 = sub i32 8, %2461
  %2467 = lshr i32 %2465, %2466
  %2468 = add i32 %2467, %2462
  %2469 = mul i32 %2468, 768
  %2470 = zext i32 %2469 to i64
  %2471 = getelementptr inbounds i16, ptr %2458, i64 %2470
  %2472 = load i32, ptr %180, align 8, !tbaa !31
  %2473 = icmp ult i32 %2472, 7
  %2474 = zext i8 %2457 to i32
  br i1 %2473, label %2475, label %2510

2475:                                             ; preds = %2449
  %2476 = or i32 %2474, 256
  br label %2477

2477:                                             ; preds = %2507, %2475
  %2478 = phi i32 [ %2476, %2475 ], [ %2508, %2507 ]
  %2479 = lshr i32 %2478, 8
  %2480 = zext i32 %2479 to i64
  %2481 = getelementptr inbounds i16, ptr %2471, i64 %2480
  %2482 = load i16, ptr %2481, align 2, !tbaa !29
  %2483 = zext i16 %2482 to i32
  %2484 = load i32, ptr %196, align 8, !tbaa !85
  %2485 = lshr i32 %2484, 11
  %2486 = mul i32 %2485, %2483
  %2487 = and i32 %2478, 128
  %2488 = icmp eq i32 %2487, 0
  br i1 %2488, label %2489, label %2493

2489:                                             ; preds = %2477
  %2490 = sub nsw i32 2048, %2483
  %2491 = lshr i32 %2490, 5
  %2492 = add nuw nsw i32 %2491, %2483
  br label %2500

2493:                                             ; preds = %2477
  %2494 = zext i32 %2486 to i64
  %2495 = load i64, ptr %197, align 8, !tbaa !84
  %2496 = add i64 %2495, %2494
  store i64 %2496, ptr %197, align 8, !tbaa !84
  %2497 = sub i32 %2484, %2486
  %2498 = lshr i32 %2483, 5
  %2499 = sub nsw i32 %2483, %2498
  br label %2500

2500:                                             ; preds = %2493, %2489
  %2501 = phi i32 [ %2486, %2489 ], [ %2497, %2493 ]
  %2502 = phi i32 [ %2492, %2489 ], [ %2499, %2493 ]
  store i32 %2501, ptr %196, align 8
  %2503 = trunc i32 %2502 to i16
  store i16 %2503, ptr %2481, align 2, !tbaa !29
  %2504 = icmp ult i32 %2501, 16777216
  br i1 %2504, label %2505, label %2507

2505:                                             ; preds = %2500
  %2506 = shl nuw i32 %2501, 8
  store i32 %2506, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  br label %2507

2507:                                             ; preds = %2505, %2500
  %2508 = shl i32 %2478, 1
  %2509 = icmp ult i32 %2508, 65536
  br i1 %2509, label %2477, label %2561, !llvm.loop !145

2510:                                             ; preds = %2449
  %2511 = load i32, ptr %169, align 8, !tbaa !22
  %2512 = zext i32 %2511 to i64
  %2513 = sub nsw i64 0, %2512
  %2514 = getelementptr i8, ptr %2456, i64 -1
  %2515 = getelementptr i8, ptr %2514, i64 %2513
  %2516 = load i8, ptr %2515, align 1, !tbaa !24
  %2517 = zext i8 %2516 to i32
  %2518 = or i32 %2474, 256
  br label %2519

2519:                                             ; preds = %2555, %2510
  %2520 = phi i32 [ %2518, %2510 ], [ %2556, %2555 ]
  %2521 = phi i32 [ %2517, %2510 ], [ %2523, %2555 ]
  %2522 = phi i32 [ 256, %2510 ], [ %2559, %2555 ]
  %2523 = shl i32 %2521, 1
  %2524 = and i32 %2523, %2522
  %2525 = lshr i32 %2520, 8
  %2526 = add i32 %2522, %2525
  %2527 = add i32 %2526, %2524
  %2528 = zext i32 %2527 to i64
  %2529 = getelementptr inbounds i16, ptr %2471, i64 %2528
  %2530 = load i16, ptr %2529, align 2, !tbaa !29
  %2531 = zext i16 %2530 to i32
  %2532 = load i32, ptr %196, align 8, !tbaa !85
  %2533 = lshr i32 %2532, 11
  %2534 = mul i32 %2533, %2531
  %2535 = and i32 %2520, 128
  %2536 = icmp eq i32 %2535, 0
  br i1 %2536, label %2537, label %2541

2537:                                             ; preds = %2519
  %2538 = sub nsw i32 2048, %2531
  %2539 = lshr i32 %2538, 5
  %2540 = add nuw nsw i32 %2539, %2531
  br label %2548

2541:                                             ; preds = %2519
  %2542 = zext i32 %2534 to i64
  %2543 = load i64, ptr %197, align 8, !tbaa !84
  %2544 = add i64 %2543, %2542
  store i64 %2544, ptr %197, align 8, !tbaa !84
  %2545 = sub i32 %2532, %2534
  %2546 = lshr i32 %2531, 5
  %2547 = sub nsw i32 %2531, %2546
  br label %2548

2548:                                             ; preds = %2541, %2537
  %2549 = phi i32 [ %2534, %2537 ], [ %2545, %2541 ]
  %2550 = phi i32 [ %2540, %2537 ], [ %2547, %2541 ]
  store i32 %2549, ptr %196, align 8
  %2551 = trunc i32 %2550 to i16
  store i16 %2551, ptr %2529, align 2, !tbaa !29
  %2552 = icmp ult i32 %2549, 16777216
  br i1 %2552, label %2553, label %2555

2553:                                             ; preds = %2548
  %2554 = shl nuw i32 %2549, 8
  store i32 %2554, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  br label %2555

2555:                                             ; preds = %2553, %2548
  %2556 = shl i32 %2520, 1
  %2557 = xor i32 %2556, %2523
  %2558 = xor i32 %2557, -1
  %2559 = and i32 %2522, %2558
  %2560 = icmp ult i32 %2556, 65536
  br i1 %2560, label %2519, label %2561, !llvm.loop !189

2561:                                             ; preds = %2555, %2507
  %2562 = load i32, ptr %180, align 8, !tbaa !31
  %2563 = zext i32 %2562 to i64
  %2564 = getelementptr inbounds [12 x i32], ptr @kLiteralNextStates, i64 0, i64 %2563
  %2565 = load i32, ptr %2564, align 4, !tbaa !22
  store i32 %2565, ptr %180, align 8, !tbaa !31
  br label %3037

2566:                                             ; preds = %2418, %2424
  %2567 = phi i1 [ %2420, %2418 ], [ %2429, %2424 ]
  %2568 = phi i32 [ %2423, %2418 ], [ %2428, %2424 ]
  %2569 = phi i32 [ %2421, %2418 ], [ %2426, %2424 ]
  %2570 = phi i32 [ %2419, %2418 ], [ %2425, %2424 ]
  %2571 = load i32, ptr %180, align 8, !tbaa !31
  %2572 = zext i32 %2571 to i64
  %2573 = zext i32 %2568 to i64
  %2574 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %2572, i64 %2573
  %2575 = load i16, ptr %2574, align 2, !tbaa !29
  %2576 = zext i16 %2575 to i32
  %2577 = load i32, ptr %196, align 8, !tbaa !85
  %2578 = lshr i32 %2577, 11
  %2579 = mul i32 %2578, %2576
  %2580 = zext i32 %2579 to i64
  %2581 = load i64, ptr %197, align 8, !tbaa !84
  %2582 = add i64 %2581, %2580
  store i64 %2582, ptr %197, align 8, !tbaa !84
  %2583 = sub i32 %2577, %2579
  %2584 = lshr i16 %2575, 5
  %2585 = sub i16 %2575, %2584
  store i32 %2583, ptr %196, align 8
  store i16 %2585, ptr %2574, align 2, !tbaa !29
  %2586 = icmp ult i32 %2583, 16777216
  br i1 %2586, label %2587, label %2589

2587:                                             ; preds = %2566
  %2588 = shl nuw i32 %2583, 8
  store i32 %2588, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  br label %2589

2589:                                             ; preds = %2566, %2587
  %2590 = icmp ult i32 %2570, 4
  %2591 = load i32, ptr %180, align 8, !tbaa !31
  %2592 = zext i32 %2591 to i64
  %2593 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 31, i64 %2592
  %2594 = load i16, ptr %2593, align 2, !tbaa !29
  %2595 = zext i16 %2594 to i32
  %2596 = load i32, ptr %196, align 8, !tbaa !85
  %2597 = lshr i32 %2596, 11
  %2598 = mul i32 %2597, %2595
  br i1 %2590, label %2599, label %2758

2599:                                             ; preds = %2589
  %2600 = zext i32 %2598 to i64
  %2601 = load i64, ptr %197, align 8, !tbaa !84
  %2602 = add i64 %2601, %2600
  store i64 %2602, ptr %197, align 8, !tbaa !84
  %2603 = sub i32 %2596, %2598
  %2604 = lshr i16 %2594, 5
  %2605 = sub i16 %2594, %2604
  store i32 %2603, ptr %196, align 8
  store i16 %2605, ptr %2593, align 2, !tbaa !29
  %2606 = icmp ult i32 %2603, 16777216
  br i1 %2606, label %2607, label %2609

2607:                                             ; preds = %2599
  %2608 = shl nuw i32 %2603, 8
  store i32 %2608, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  br label %2609

2609:                                             ; preds = %2599, %2607
  %2610 = icmp eq i32 %2570, 0
  br i1 %2610, label %2611, label %2656

2611:                                             ; preds = %2609
  %2612 = load i32, ptr %180, align 8, !tbaa !31
  %2613 = zext i32 %2612 to i64
  %2614 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 32, i64 %2613
  %2615 = load i16, ptr %2614, align 2, !tbaa !29
  %2616 = zext i16 %2615 to i32
  %2617 = load i32, ptr %196, align 8, !tbaa !85
  %2618 = lshr i32 %2617, 11
  %2619 = mul i32 %2618, %2616
  %2620 = sub nsw i32 2048, %2616
  %2621 = lshr i32 %2620, 5
  store i32 %2619, ptr %196, align 8
  %2622 = trunc i32 %2621 to i16
  %2623 = add i16 %2615, %2622
  store i16 %2623, ptr %2614, align 2, !tbaa !29
  %2624 = icmp ult i32 %2619, 16777216
  br i1 %2624, label %2625, label %2630

2625:                                             ; preds = %2611
  %2626 = shl nuw i32 %2619, 8
  store i32 %2626, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  %2627 = load i32, ptr %180, align 8, !tbaa !31
  %2628 = load i32, ptr %196, align 8, !tbaa !85
  %2629 = zext i32 %2627 to i64
  br label %2630

2630:                                             ; preds = %2611, %2625
  %2631 = phi i64 [ %2613, %2611 ], [ %2629, %2625 ]
  %2632 = phi i32 [ %2619, %2611 ], [ %2628, %2625 ]
  %2633 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 35, i64 %2631, i64 %2573
  %2634 = load i16, ptr %2633, align 2, !tbaa !29
  %2635 = zext i16 %2634 to i32
  %2636 = lshr i32 %2632, 11
  %2637 = mul i32 %2636, %2635
  br i1 %2567, label %2638, label %2642

2638:                                             ; preds = %2630
  %2639 = sub nsw i32 2048, %2635
  %2640 = lshr i32 %2639, 5
  %2641 = add nuw nsw i32 %2640, %2635
  br label %2649

2642:                                             ; preds = %2630
  %2643 = zext i32 %2637 to i64
  %2644 = load i64, ptr %197, align 8, !tbaa !84
  %2645 = add i64 %2644, %2643
  store i64 %2645, ptr %197, align 8, !tbaa !84
  %2646 = sub i32 %2632, %2637
  %2647 = lshr i32 %2635, 5
  %2648 = sub nsw i32 %2635, %2647
  br label %2649

2649:                                             ; preds = %2642, %2638
  %2650 = phi i32 [ %2637, %2638 ], [ %2646, %2642 ]
  %2651 = phi i32 [ %2641, %2638 ], [ %2648, %2642 ]
  store i32 %2650, ptr %196, align 8
  %2652 = trunc i32 %2651 to i16
  store i16 %2652, ptr %2633, align 2, !tbaa !29
  %2653 = icmp ult i32 %2650, 16777216
  br i1 %2653, label %2654, label %2743

2654:                                             ; preds = %2649
  %2655 = shl nuw i32 %2650, 8
  store i32 %2655, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  br label %2743

2656:                                             ; preds = %2609
  %2657 = zext i32 %2570 to i64
  %2658 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 17, i64 %2657
  %2659 = load i32, ptr %2658, align 4, !tbaa !22
  %2660 = load i32, ptr %180, align 8, !tbaa !31
  %2661 = zext i32 %2660 to i64
  %2662 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 32, i64 %2661
  %2663 = load i16, ptr %2662, align 2, !tbaa !29
  %2664 = zext i16 %2663 to i32
  %2665 = load i32, ptr %196, align 8, !tbaa !85
  %2666 = lshr i32 %2665, 11
  %2667 = mul i32 %2666, %2664
  %2668 = zext i32 %2667 to i64
  %2669 = load i64, ptr %197, align 8, !tbaa !84
  %2670 = add i64 %2669, %2668
  store i64 %2670, ptr %197, align 8, !tbaa !84
  %2671 = sub i32 %2665, %2667
  %2672 = lshr i16 %2663, 5
  %2673 = sub i16 %2663, %2672
  store i32 %2671, ptr %196, align 8
  store i16 %2673, ptr %2662, align 2, !tbaa !29
  %2674 = icmp ult i32 %2671, 16777216
  br i1 %2674, label %2675, label %2677

2675:                                             ; preds = %2656
  %2676 = shl nuw i32 %2671, 8
  store i32 %2676, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  br label %2677

2677:                                             ; preds = %2656, %2675
  %2678 = icmp eq i32 %2570, 1
  %2679 = load i32, ptr %180, align 8, !tbaa !31
  %2680 = zext i32 %2679 to i64
  %2681 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 33, i64 %2680
  %2682 = load i16, ptr %2681, align 2, !tbaa !29
  %2683 = zext i16 %2682 to i32
  %2684 = load i32, ptr %196, align 8, !tbaa !85
  %2685 = lshr i32 %2684, 11
  %2686 = mul i32 %2685, %2683
  br i1 %2678, label %2687, label %2695

2687:                                             ; preds = %2677
  %2688 = sub nsw i32 2048, %2683
  %2689 = lshr i32 %2688, 5
  store i32 %2686, ptr %196, align 8
  %2690 = trunc i32 %2689 to i16
  %2691 = add i16 %2682, %2690
  store i16 %2691, ptr %2681, align 2, !tbaa !29
  %2692 = icmp ult i32 %2686, 16777216
  br i1 %2692, label %2693, label %2741

2693:                                             ; preds = %2687
  %2694 = shl nuw i32 %2686, 8
  store i32 %2694, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  br label %2741

2695:                                             ; preds = %2677
  %2696 = zext i32 %2686 to i64
  %2697 = load i64, ptr %197, align 8, !tbaa !84
  %2698 = add i64 %2697, %2696
  store i64 %2698, ptr %197, align 8, !tbaa !84
  %2699 = sub i32 %2684, %2686
  %2700 = lshr i16 %2682, 5
  %2701 = sub i16 %2682, %2700
  store i32 %2699, ptr %196, align 8
  store i16 %2701, ptr %2681, align 2, !tbaa !29
  %2702 = icmp ult i32 %2699, 16777216
  br i1 %2702, label %2703, label %2708

2703:                                             ; preds = %2695
  %2704 = shl nuw i32 %2699, 8
  store i32 %2704, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  %2705 = load i32, ptr %180, align 8, !tbaa !31
  %2706 = load i32, ptr %196, align 8, !tbaa !85
  %2707 = zext i32 %2705 to i64
  br label %2708

2708:                                             ; preds = %2695, %2703
  %2709 = phi i64 [ %2680, %2695 ], [ %2707, %2703 ]
  %2710 = phi i32 [ %2699, %2695 ], [ %2706, %2703 ]
  %2711 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 34, i64 %2709
  %2712 = load i16, ptr %2711, align 2, !tbaa !29
  %2713 = zext i16 %2712 to i32
  %2714 = lshr i32 %2710, 11
  %2715 = mul i32 %2714, %2713
  %2716 = icmp eq i32 %2570, 2
  br i1 %2716, label %2717, label %2721

2717:                                             ; preds = %2708
  %2718 = sub nsw i32 2048, %2713
  %2719 = lshr i32 %2718, 5
  %2720 = add nuw nsw i32 %2719, %2713
  br label %2728

2721:                                             ; preds = %2708
  %2722 = zext i32 %2715 to i64
  %2723 = load i64, ptr %197, align 8, !tbaa !84
  %2724 = add i64 %2723, %2722
  store i64 %2724, ptr %197, align 8, !tbaa !84
  %2725 = sub i32 %2710, %2715
  %2726 = lshr i32 %2713, 5
  %2727 = sub nsw i32 %2713, %2726
  br label %2728

2728:                                             ; preds = %2721, %2717
  %2729 = phi i32 [ %2715, %2717 ], [ %2725, %2721 ]
  %2730 = phi i32 [ %2720, %2717 ], [ %2727, %2721 ]
  store i32 %2729, ptr %196, align 8
  %2731 = trunc i32 %2730 to i16
  store i16 %2731, ptr %2711, align 2, !tbaa !29
  %2732 = icmp ult i32 %2729, 16777216
  br i1 %2732, label %2733, label %2735

2733:                                             ; preds = %2728
  %2734 = shl nuw i32 %2729, 8
  store i32 %2734, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  br label %2735

2735:                                             ; preds = %2728, %2733
  %2736 = icmp eq i32 %2570, 3
  br i1 %2736, label %2737, label %2739

2737:                                             ; preds = %2735
  %2738 = load i32, ptr %171, align 8, !tbaa !22
  store i32 %2738, ptr %172, align 4, !tbaa !22
  br label %2739

2739:                                             ; preds = %2737, %2735
  %2740 = load i32, ptr %170, align 4, !tbaa !22
  store i32 %2740, ptr %171, align 8, !tbaa !22
  br label %2741

2741:                                             ; preds = %2693, %2687, %2739
  %2742 = load i32, ptr %169, align 8, !tbaa !22
  store i32 %2742, ptr %170, align 4, !tbaa !22
  store i32 %2659, ptr %169, align 8, !tbaa !22
  br label %2743

2743:                                             ; preds = %2654, %2649, %2741
  br i1 %2567, label %2744, label %2749

2744:                                             ; preds = %2743
  %2745 = load i32, ptr %180, align 8, !tbaa !31
  %2746 = zext i32 %2745 to i64
  %2747 = getelementptr inbounds [12 x i32], ptr @kShortRepNextStates, i64 0, i64 %2746
  %2748 = load i32, ptr %2747, align 4, !tbaa !22
  store i32 %2748, ptr %180, align 8, !tbaa !31
  br label %3037

2749:                                             ; preds = %2743
  %2750 = add i32 %2569, -2
  %2751 = load i32, ptr %160, align 8, !tbaa !70
  %2752 = icmp eq i32 %2751, 0
  %2753 = zext i1 %2752 to i32
  tail call fastcc void @LenEnc_Encode2(ptr noundef nonnull %202, ptr noundef nonnull %196, i32 noundef %2750, i32 noundef %2568, i32 noundef %2753, ptr noundef nonnull %185)
  %2754 = load i32, ptr %180, align 8, !tbaa !31
  %2755 = zext i32 %2754 to i64
  %2756 = getelementptr inbounds [12 x i32], ptr @kRepNextStates, i64 0, i64 %2755
  %2757 = load i32, ptr %2756, align 4, !tbaa !22
  store i32 %2757, ptr %180, align 8, !tbaa !31
  br label %3037

2758:                                             ; preds = %2589
  %2759 = sub nsw i32 2048, %2595
  %2760 = lshr i32 %2759, 5
  store i32 %2598, ptr %196, align 8
  %2761 = trunc i32 %2760 to i16
  %2762 = add i16 %2594, %2761
  store i16 %2762, ptr %2593, align 2, !tbaa !29
  %2763 = icmp ult i32 %2598, 16777216
  br i1 %2763, label %2764, label %2768

2764:                                             ; preds = %2758
  %2765 = shl nuw i32 %2598, 8
  store i32 %2765, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  %2766 = load i32, ptr %180, align 8, !tbaa !31
  %2767 = zext i32 %2766 to i64
  br label %2768

2768:                                             ; preds = %2758, %2764
  %2769 = phi i64 [ %2592, %2758 ], [ %2767, %2764 ]
  %2770 = getelementptr inbounds [12 x i32], ptr @kMatchNextStates, i64 0, i64 %2769
  %2771 = load i32, ptr %2770, align 4, !tbaa !22
  store i32 %2771, ptr %180, align 8, !tbaa !31
  %2772 = add i32 %2569, -2
  %2773 = load i32, ptr %160, align 8, !tbaa !70
  %2774 = icmp eq i32 %2773, 0
  %2775 = zext i1 %2774 to i32
  tail call fastcc void @LenEnc_Encode2(ptr noundef nonnull %198, ptr noundef nonnull %196, i32 noundef %2772, i32 noundef %2568, i32 noundef %2775, ptr noundef nonnull %185)
  %2776 = add i32 %2570, -4
  %2777 = icmp ult i32 %2776, 128
  br i1 %2777, label %2778, label %2783

2778:                                             ; preds = %2768
  %2779 = zext i32 %2776 to i64
  %2780 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 12, i64 %2779
  %2781 = load i8, ptr %2780, align 1, !tbaa !24
  %2782 = zext i8 %2781 to i32
  br label %2794

2783:                                             ; preds = %2768
  %2784 = add i32 %2570, -524292
  %2785 = icmp slt i32 %2784, 0
  %2786 = select i1 %2785, i32 6, i32 18
  %2787 = lshr i32 %2776, %2786
  %2788 = zext i32 %2787 to i64
  %2789 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 12, i64 %2788
  %2790 = load i8, ptr %2789, align 1, !tbaa !24
  %2791 = zext i8 %2790 to i32
  %2792 = shl nuw nsw i32 %2786, 1
  %2793 = add nuw nsw i32 %2792, %2791
  br label %2794

2794:                                             ; preds = %2783, %2778
  %2795 = phi i32 [ %2782, %2778 ], [ %2793, %2783 ]
  %2796 = icmp ult i32 %2569, 5
  %2797 = select i1 %2796, i32 %2772, i32 3
  %2798 = zext i32 %2797 to i64
  %2799 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36, i64 %2798
  br label %2800

2800:                                             ; preds = %2832, %2794
  %2801 = phi i32 [ 1, %2794 ], [ %2834, %2832 ]
  %2802 = phi i32 [ 6, %2794 ], [ %2803, %2832 ]
  %2803 = add nsw i32 %2802, -1
  %2804 = lshr i32 %2795, %2803
  %2805 = and i32 %2804, 1
  %2806 = zext i32 %2801 to i64
  %2807 = getelementptr inbounds i16, ptr %2799, i64 %2806
  %2808 = load i16, ptr %2807, align 2, !tbaa !29
  %2809 = zext i16 %2808 to i32
  %2810 = load i32, ptr %196, align 8, !tbaa !85
  %2811 = lshr i32 %2810, 11
  %2812 = mul i32 %2811, %2809
  %2813 = icmp eq i32 %2805, 0
  br i1 %2813, label %2814, label %2818

2814:                                             ; preds = %2800
  %2815 = sub nsw i32 2048, %2809
  %2816 = lshr i32 %2815, 5
  %2817 = add nuw nsw i32 %2816, %2809
  br label %2825

2818:                                             ; preds = %2800
  %2819 = zext i32 %2812 to i64
  %2820 = load i64, ptr %197, align 8, !tbaa !84
  %2821 = add i64 %2820, %2819
  store i64 %2821, ptr %197, align 8, !tbaa !84
  %2822 = sub i32 %2810, %2812
  %2823 = lshr i32 %2809, 5
  %2824 = sub nsw i32 %2809, %2823
  br label %2825

2825:                                             ; preds = %2818, %2814
  %2826 = phi i32 [ %2812, %2814 ], [ %2822, %2818 ]
  %2827 = phi i32 [ %2817, %2814 ], [ %2824, %2818 ]
  store i32 %2826, ptr %196, align 8
  %2828 = trunc i32 %2827 to i16
  store i16 %2828, ptr %2807, align 2, !tbaa !29
  %2829 = icmp ult i32 %2826, 16777216
  br i1 %2829, label %2830, label %2832

2830:                                             ; preds = %2825
  %2831 = shl nuw i32 %2826, 8
  store i32 %2831, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  br label %2832

2832:                                             ; preds = %2830, %2825
  %2833 = shl i32 %2801, 1
  %2834 = or i32 %2805, %2833
  %2835 = icmp eq i32 %2803, 0
  br i1 %2835, label %2836, label %2800, !llvm.loop !190

2836:                                             ; preds = %2832
  %2837 = icmp ugt i32 %2795, 3
  br i1 %2837, label %2838, label %3032

2838:                                             ; preds = %2836
  %2839 = lshr i32 %2795, 1
  %2840 = add nsw i32 %2839, -1
  %2841 = and i32 %2795, 1
  %2842 = or i32 %2841, 2
  %2843 = shl i32 %2842, %2840
  %2844 = sub i32 %2776, %2843
  %2845 = icmp ult i32 %2795, 14
  br i1 %2845, label %2846, label %2889

2846:                                             ; preds = %2838
  %2847 = zext i32 %2843 to i64
  %2848 = zext i32 %2795 to i64
  %2849 = sub nsw i64 0, %2848
  %2850 = getelementptr i16, ptr %211, i64 %2847
  %2851 = getelementptr i16, ptr %2850, i64 %2849
  br label %2852

2852:                                             ; preds = %2883, %2846
  %2853 = phi i32 [ %2844, %2846 ], [ %2886, %2883 ]
  %2854 = phi i32 [ 0, %2846 ], [ %2887, %2883 ]
  %2855 = phi i32 [ 1, %2846 ], [ %2885, %2883 ]
  %2856 = and i32 %2853, 1
  %2857 = zext i32 %2855 to i64
  %2858 = getelementptr inbounds i16, ptr %2851, i64 %2857
  %2859 = load i16, ptr %2858, align 2, !tbaa !29
  %2860 = zext i16 %2859 to i32
  %2861 = load i32, ptr %196, align 8, !tbaa !85
  %2862 = lshr i32 %2861, 11
  %2863 = mul i32 %2862, %2860
  %2864 = icmp eq i32 %2856, 0
  br i1 %2864, label %2865, label %2869

2865:                                             ; preds = %2852
  %2866 = sub nsw i32 2048, %2860
  %2867 = lshr i32 %2866, 5
  %2868 = add nuw nsw i32 %2867, %2860
  br label %2876

2869:                                             ; preds = %2852
  %2870 = zext i32 %2863 to i64
  %2871 = load i64, ptr %197, align 8, !tbaa !84
  %2872 = add i64 %2871, %2870
  store i64 %2872, ptr %197, align 8, !tbaa !84
  %2873 = sub i32 %2861, %2863
  %2874 = lshr i32 %2860, 5
  %2875 = sub nsw i32 %2860, %2874
  br label %2876

2876:                                             ; preds = %2869, %2865
  %2877 = phi i32 [ %2863, %2865 ], [ %2873, %2869 ]
  %2878 = phi i32 [ %2868, %2865 ], [ %2875, %2869 ]
  store i32 %2877, ptr %196, align 8
  %2879 = trunc i32 %2878 to i16
  store i16 %2879, ptr %2858, align 2, !tbaa !29
  %2880 = icmp ult i32 %2877, 16777216
  br i1 %2880, label %2881, label %2883

2881:                                             ; preds = %2876
  %2882 = shl nuw i32 %2877, 8
  store i32 %2882, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  br label %2883

2883:                                             ; preds = %2881, %2876
  %2884 = shl i32 %2855, 1
  %2885 = or i32 %2884, %2856
  %2886 = lshr i32 %2853, 1
  %2887 = add nuw nsw i32 %2854, 1
  %2888 = icmp eq i32 %2887, %2840
  br i1 %2888, label %3032, label %2852, !llvm.loop !191

2889:                                             ; preds = %2838
  %2890 = lshr i32 %2844, 4
  %2891 = add nsw i32 %2839, -5
  br label %2892

2892:                                             ; preds = %2907, %2889
  %2893 = phi i32 [ %2891, %2889 ], [ %2896, %2907 ]
  %2894 = load i32, ptr %196, align 8, !tbaa !85
  %2895 = lshr i32 %2894, 1
  store i32 %2895, ptr %196, align 8, !tbaa !85
  %2896 = add nsw i32 %2893, -1
  %2897 = shl nuw i32 1, %2896
  %2898 = and i32 %2897, %2890
  %2899 = icmp eq i32 %2898, 0
  %2900 = select i1 %2899, i32 0, i32 %2895
  %2901 = zext i32 %2900 to i64
  %2902 = load i64, ptr %197, align 8, !tbaa !84
  %2903 = add i64 %2902, %2901
  store i64 %2903, ptr %197, align 8, !tbaa !84
  %2904 = icmp ult i32 %2894, 33554432
  br i1 %2904, label %2905, label %2907

2905:                                             ; preds = %2892
  %2906 = shl nuw i32 %2895, 8
  store i32 %2906, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  br label %2907

2907:                                             ; preds = %2905, %2892
  %2908 = icmp eq i32 %2896, 0
  br i1 %2908, label %2909, label %2892, !llvm.loop !192

2909:                                             ; preds = %2907
  %2910 = and i32 %2844, 1
  %2911 = load i16, ptr %210, align 2, !tbaa !29
  %2912 = zext i16 %2911 to i32
  %2913 = load i32, ptr %196, align 8, !tbaa !85
  %2914 = lshr i32 %2913, 11
  %2915 = mul i32 %2914, %2912
  %2916 = icmp eq i32 %2910, 0
  br i1 %2916, label %2917, label %2921

2917:                                             ; preds = %2909
  %2918 = sub nsw i32 2048, %2912
  %2919 = lshr i32 %2918, 5
  %2920 = add nuw nsw i32 %2919, %2912
  br label %2928

2921:                                             ; preds = %2909
  %2922 = zext i32 %2915 to i64
  %2923 = load i64, ptr %197, align 8, !tbaa !84
  %2924 = add i64 %2923, %2922
  store i64 %2924, ptr %197, align 8, !tbaa !84
  %2925 = sub i32 %2913, %2915
  %2926 = lshr i32 %2912, 5
  %2927 = sub nsw i32 %2912, %2926
  br label %2928

2928:                                             ; preds = %2921, %2917
  %2929 = phi i32 [ %2915, %2917 ], [ %2925, %2921 ]
  %2930 = phi i32 [ %2920, %2917 ], [ %2927, %2921 ]
  %2931 = trunc i32 %2930 to i16
  store i16 %2931, ptr %210, align 2, !tbaa !29
  %2932 = icmp ult i32 %2929, 16777216
  br i1 %2932, label %2933, label %2936

2933:                                             ; preds = %2928
  %2934 = shl nuw i32 %2929, 8
  store i32 %2934, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  %2935 = load i32, ptr %196, align 8, !tbaa !85
  br label %2936

2936:                                             ; preds = %2933, %2928
  %2937 = phi i32 [ %2935, %2933 ], [ %2929, %2928 ]
  %2938 = or i32 %2910, 2
  %2939 = lshr i32 %2844, 1
  %2940 = and i32 %2939, 1
  %2941 = zext i32 %2938 to i64
  %2942 = getelementptr inbounds i16, ptr %199, i64 %2941
  %2943 = load i16, ptr %2942, align 2, !tbaa !29
  %2944 = zext i16 %2943 to i32
  %2945 = lshr i32 %2937, 11
  %2946 = mul i32 %2945, %2944
  %2947 = icmp eq i32 %2940, 0
  br i1 %2947, label %2955, label %2948

2948:                                             ; preds = %2936
  %2949 = zext i32 %2946 to i64
  %2950 = load i64, ptr %197, align 8, !tbaa !84
  %2951 = add i64 %2950, %2949
  store i64 %2951, ptr %197, align 8, !tbaa !84
  %2952 = sub i32 %2937, %2946
  %2953 = lshr i32 %2944, 5
  %2954 = sub nsw i32 %2944, %2953
  br label %2959

2955:                                             ; preds = %2936
  %2956 = sub nsw i32 2048, %2944
  %2957 = lshr i32 %2956, 5
  %2958 = add nuw nsw i32 %2957, %2944
  br label %2959

2959:                                             ; preds = %2955, %2948
  %2960 = phi i32 [ %2946, %2955 ], [ %2952, %2948 ]
  %2961 = phi i32 [ %2958, %2955 ], [ %2954, %2948 ]
  %2962 = trunc i32 %2961 to i16
  store i16 %2962, ptr %2942, align 2, !tbaa !29
  %2963 = icmp ult i32 %2960, 16777216
  br i1 %2963, label %2964, label %2967

2964:                                             ; preds = %2959
  %2965 = shl nuw i32 %2960, 8
  store i32 %2965, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  %2966 = load i32, ptr %196, align 8, !tbaa !85
  br label %2967

2967:                                             ; preds = %2964, %2959
  %2968 = phi i32 [ %2966, %2964 ], [ %2960, %2959 ]
  %2969 = shl nuw nsw i32 %2938, 1
  %2970 = or i32 %2969, %2940
  %2971 = lshr i32 %2844, 2
  %2972 = and i32 %2971, 1
  %2973 = zext i32 %2970 to i64
  %2974 = getelementptr inbounds i16, ptr %199, i64 %2973
  %2975 = load i16, ptr %2974, align 2, !tbaa !29
  %2976 = zext i16 %2975 to i32
  %2977 = lshr i32 %2968, 11
  %2978 = mul i32 %2977, %2976
  %2979 = icmp eq i32 %2972, 0
  br i1 %2979, label %2987, label %2980

2980:                                             ; preds = %2967
  %2981 = zext i32 %2978 to i64
  %2982 = load i64, ptr %197, align 8, !tbaa !84
  %2983 = add i64 %2982, %2981
  store i64 %2983, ptr %197, align 8, !tbaa !84
  %2984 = sub i32 %2968, %2978
  %2985 = lshr i32 %2976, 5
  %2986 = sub nsw i32 %2976, %2985
  br label %2991

2987:                                             ; preds = %2967
  %2988 = sub nsw i32 2048, %2976
  %2989 = lshr i32 %2988, 5
  %2990 = add nuw nsw i32 %2989, %2976
  br label %2991

2991:                                             ; preds = %2987, %2980
  %2992 = phi i32 [ %2978, %2987 ], [ %2984, %2980 ]
  %2993 = phi i32 [ %2990, %2987 ], [ %2986, %2980 ]
  %2994 = trunc i32 %2993 to i16
  store i16 %2994, ptr %2974, align 2, !tbaa !29
  %2995 = icmp ult i32 %2992, 16777216
  br i1 %2995, label %2996, label %2999

2996:                                             ; preds = %2991
  %2997 = shl nuw i32 %2992, 8
  store i32 %2997, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  %2998 = load i32, ptr %196, align 8, !tbaa !85
  br label %2999

2999:                                             ; preds = %2996, %2991
  %3000 = phi i32 [ %2998, %2996 ], [ %2992, %2991 ]
  %3001 = shl nuw nsw i32 %2970, 1
  %3002 = or i32 %3001, %2972
  %3003 = zext i32 %3002 to i64
  %3004 = getelementptr inbounds i16, ptr %199, i64 %3003
  %3005 = load i16, ptr %3004, align 2, !tbaa !29
  %3006 = zext i16 %3005 to i32
  %3007 = lshr i32 %3000, 11
  %3008 = mul i32 %3007, %3006
  %3009 = and i32 %2844, 8
  %3010 = icmp eq i32 %3009, 0
  br i1 %3010, label %3018, label %3011

3011:                                             ; preds = %2999
  %3012 = zext i32 %3008 to i64
  %3013 = load i64, ptr %197, align 8, !tbaa !84
  %3014 = add i64 %3013, %3012
  store i64 %3014, ptr %197, align 8, !tbaa !84
  %3015 = sub i32 %3000, %3008
  %3016 = lshr i32 %3006, 5
  %3017 = sub nsw i32 %3006, %3016
  br label %3022

3018:                                             ; preds = %2999
  %3019 = sub nsw i32 2048, %3006
  %3020 = lshr i32 %3019, 5
  %3021 = add nuw nsw i32 %3020, %3006
  br label %3022

3022:                                             ; preds = %3018, %3011
  %3023 = phi i32 [ %3008, %3018 ], [ %3015, %3011 ]
  %3024 = phi i32 [ %3021, %3018 ], [ %3017, %3011 ]
  store i32 %3023, ptr %196, align 8
  %3025 = trunc i32 %3024 to i16
  store i16 %3025, ptr %3004, align 2, !tbaa !29
  %3026 = icmp ult i32 %3023, 16777216
  br i1 %3026, label %3027, label %3029

3027:                                             ; preds = %3022
  %3028 = shl nuw i32 %3023, 8
  store i32 %3028, ptr %196, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %196)
  br label %3029

3029:                                             ; preds = %3027, %3022
  %3030 = load i32, ptr %200, align 4, !tbaa !104
  %3031 = add i32 %3030, 1
  store i32 %3031, ptr %200, align 4, !tbaa !104
  br label %3032

3032:                                             ; preds = %2883, %3029, %2836
  %3033 = load i32, ptr %171, align 8, !tbaa !22
  store i32 %3033, ptr %172, align 4, !tbaa !22
  %3034 = load <2 x i32>, ptr %169, align 8, !tbaa !22
  store <2 x i32> %3034, ptr %170, align 4, !tbaa !22
  store i32 %2776, ptr %169, align 8, !tbaa !22
  %3035 = load i32, ptr %201, align 8, !tbaa !116
  %3036 = add i32 %3035, 1
  store i32 %3036, ptr %201, align 8, !tbaa !116
  br label %3037

3037:                                             ; preds = %3032, %2749, %2744, %2561
  %3038 = phi i32 [ %2569, %3032 ], [ %2569, %2749 ], [ %2569, %2744 ], [ 1, %2561 ]
  %3039 = load i32, ptr %161, align 4, !tbaa !99
  %3040 = sub i32 %3039, %3038
  store i32 %3040, ptr %161, align 4, !tbaa !99
  %3041 = add i32 %3038, %213
  %3042 = icmp eq i32 %3039, %3038
  br i1 %3042, label %3043, label %3158

3043:                                             ; preds = %3037
  %3044 = load i32, ptr %160, align 8, !tbaa !70
  %3045 = icmp eq i32 %3044, 0
  br i1 %3045, label %3046, label %3113

3046:                                             ; preds = %3043
  %3047 = load i32, ptr %201, align 8, !tbaa !116
  %3048 = icmp ugt i32 %3047, 127
  br i1 %3048, label %3049, label %3050

3049:                                             ; preds = %3046
  tail call fastcc void @FillDistancesPrices(ptr noundef nonnull %0)
  br label %3050

3050:                                             ; preds = %3049, %3046
  %3051 = load i32, ptr %200, align 4, !tbaa !104
  %3052 = icmp ugt i32 %3051, 15
  br i1 %3052, label %3053, label %3113

3053:                                             ; preds = %3050
  %3054 = load i16, ptr %203, align 2, !tbaa !29
  %3055 = zext i16 %3054 to i64
  br label %3056

3056:                                             ; preds = %3056, %3053
  %3057 = phi i64 [ 0, %3053 ], [ %3110, %3056 ]
  %3058 = trunc i64 %3057 to i32
  %3059 = and i32 %3058, 1
  %3060 = lshr i32 %3058, 1
  %3061 = icmp eq i32 %3059, 0
  %3062 = select i1 %3061, i64 0, i64 2032
  %3063 = xor i64 %3062, %3055
  %3064 = lshr i64 %3063, 4
  %3065 = getelementptr inbounds i32, ptr %185, i64 %3064
  %3066 = load i32, ptr %3065, align 4, !tbaa !22
  %3067 = or i32 %3059, 2
  %3068 = and i32 %3060, 1
  %3069 = lshr i32 %3058, 2
  %3070 = zext i32 %3067 to i64
  %3071 = getelementptr inbounds i16, ptr %199, i64 %3070
  %3072 = load i16, ptr %3071, align 2, !tbaa !29
  %3073 = zext i16 %3072 to i64
  %3074 = icmp eq i32 %3068, 0
  %3075 = select i1 %3074, i64 0, i64 2032
  %3076 = xor i64 %3075, %3073
  %3077 = lshr i64 %3076, 4
  %3078 = getelementptr inbounds i32, ptr %185, i64 %3077
  %3079 = load i32, ptr %3078, align 4, !tbaa !22
  %3080 = add i32 %3079, %3066
  %3081 = shl nuw nsw i32 %3067, 1
  %3082 = or i32 %3081, %3068
  %3083 = and i32 %3069, 1
  %3084 = zext i32 %3082 to i64
  %3085 = getelementptr inbounds i16, ptr %199, i64 %3084
  %3086 = load i16, ptr %3085, align 2, !tbaa !29
  %3087 = zext i16 %3086 to i64
  %3088 = icmp eq i32 %3083, 0
  %3089 = select i1 %3088, i64 0, i64 2032
  %3090 = xor i64 %3089, %3087
  %3091 = lshr i64 %3090, 4
  %3092 = getelementptr inbounds i32, ptr %185, i64 %3091
  %3093 = load i32, ptr %3092, align 4, !tbaa !22
  %3094 = add i32 %3080, %3093
  %3095 = shl nuw nsw i32 %3082, 1
  %3096 = or i32 %3095, %3083
  %3097 = zext i32 %3096 to i64
  %3098 = getelementptr inbounds i16, ptr %199, i64 %3097
  %3099 = load i16, ptr %3098, align 2, !tbaa !29
  %3100 = zext i16 %3099 to i64
  %3101 = and i32 %3058, 8
  %3102 = icmp eq i32 %3101, 0
  %3103 = select i1 %3102, i64 0, i64 2032
  %3104 = xor i64 %3103, %3100
  %3105 = lshr i64 %3104, 4
  %3106 = getelementptr inbounds i32, ptr %185, i64 %3105
  %3107 = load i32, ptr %3106, align 4, !tbaa !22
  %3108 = add i32 %3094, %3107
  %3109 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 21, i64 %3057
  store i32 %3108, ptr %3109, align 4, !tbaa !22
  %3110 = add nuw nsw i64 %3057, 1
  %3111 = icmp eq i64 %3110, 16
  br i1 %3111, label %3112, label %3056, !llvm.loop !103

3112:                                             ; preds = %3056
  store i32 0, ptr %200, align 4, !tbaa !104
  br label %3113

3113:                                             ; preds = %3050, %3112, %3043
  %3114 = load ptr, ptr %153, align 8, !tbaa !129
  %3115 = load ptr, ptr %155, align 8, !tbaa !124
  %3116 = tail call i32 %3114(ptr noundef %3115) #16
  %3117 = icmp eq i32 %3116, 0
  br i1 %3117, label %3155, label %3118

3118:                                             ; preds = %3113
  %3119 = sub i32 %3041, %40
  br i1 %204, label %3135, label %3120

3120:                                             ; preds = %3118
  %3121 = add i32 %3119, 4396
  %3122 = icmp ult i32 %3121, %3
  br i1 %3122, label %3123, label %3155

3123:                                             ; preds = %3120
  %3124 = load i64, ptr %205, align 8, !tbaa !193
  %3125 = load ptr, ptr %206, align 8, !tbaa !194
  %3126 = load ptr, ptr %207, align 8, !tbaa !195
  %3127 = ptrtoint ptr %3125 to i64
  %3128 = ptrtoint ptr %3126 to i64
  %3129 = load i64, ptr %208, align 8, !tbaa !196
  %3130 = add i64 %3124, 8192
  %3131 = add i64 %3130, %3127
  %3132 = sub i64 %3131, %3128
  %3133 = add i64 %3132, %3129
  %3134 = icmp ult i64 %3133, %209
  br i1 %3134, label %3158, label %3155

3135:                                             ; preds = %3118
  %3136 = icmp ugt i32 %3119, 32767
  br i1 %3136, label %3137, label %3158

3137:                                             ; preds = %3135
  %3138 = zext i32 %3119 to i64
  %3139 = load i64, ptr %38, align 8, !tbaa !125
  %3140 = add i64 %3139, %3138
  store i64 %3140, ptr %38, align 8, !tbaa !125
  %3141 = load i32, ptr %18, align 4, !tbaa !120
  %3142 = icmp eq i32 %3141, 0
  br i1 %3142, label %3143, label %3155

3143:                                             ; preds = %3137
  %3144 = load i32, ptr %23, align 8, !tbaa !140
  %3145 = icmp eq i32 %3144, 0
  br i1 %3145, label %3146, label %3149

3146:                                             ; preds = %3143
  %3147 = load i32, ptr %27, align 8, !tbaa !141
  %3148 = icmp eq i32 %3147, 0
  br i1 %3148, label %3155, label %3152

3149:                                             ; preds = %3143
  store i32 9, ptr %18, align 4, !tbaa !120
  %3150 = load i32, ptr %27, align 8, !tbaa !141
  %3151 = icmp eq i32 %3150, 0
  br i1 %3151, label %3153, label %3152

3152:                                             ; preds = %3149, %3146
  store i32 8, ptr %18, align 4, !tbaa !120
  br label %3153

3153:                                             ; preds = %3152, %3149
  %3154 = phi i32 [ 8, %3152 ], [ 9, %3149 ]
  store i32 1, ptr %15, align 4, !tbaa !119
  br label %3155

3155:                                             ; preds = %3113, %3123, %3120, %3137, %3146, %3153
  %3156 = phi i32 [ 1, %3153 ], [ 1, %3146 ], [ 1, %3137 ], [ 2, %3120 ], [ 2, %3123 ], [ 2, %3113 ]
  %3157 = phi i32 [ %3154, %3153 ], [ 0, %3146 ], [ %3141, %3137 ], [ %214, %3120 ], [ %214, %3123 ], [ %214, %3113 ]
  br label %3158

3158:                                             ; preds = %3037, %3123, %3135, %3155
  %3159 = phi i32 [ %3156, %3155 ], [ 0, %3135 ], [ 0, %3123 ], [ 0, %3037 ]
  %3160 = phi i32 [ %3157, %3155 ], [ %214, %3135 ], [ %214, %3123 ], [ %214, %3037 ]
  switch i32 %3159, label %3168 [
    i32 0, label %212
    i32 2, label %3161
  ]

3161:                                             ; preds = %3158, %151
  %3162 = phi i32 [ %152, %151 ], [ %3041, %3158 ]
  %3163 = sub i32 %3162, %40
  %3164 = zext i32 %3163 to i64
  %3165 = load i64, ptr %38, align 8, !tbaa !125
  %3166 = add i64 %3165, %3164
  store i64 %3166, ptr %38, align 8, !tbaa !125
  %3167 = tail call fastcc i32 @Flush(ptr noundef nonnull %0, i32 noundef %3162)
  br label %3168

3168:                                             ; preds = %3158, %14, %35, %49, %3161
  %3169 = phi i32 [ %3167, %3161 ], [ %50, %49 ], [ %36, %35 ], [ %19, %14 ], [ %3160, %3158 ]
  ret i32 %3169
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LzmaEnc_Encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 {
  %7 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 13
  store ptr %2, ptr %7, align 8, !tbaa !117
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 52
  store i32 1, ptr %8, align 8, !tbaa !118
  %9 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 7
  store ptr %1, ptr %9, align 8, !tbaa !138
  %10 = tail call fastcc i32 @LzmaEnc_AllocAndInit(ptr noundef %0, i32 noundef 0, ptr noundef %4, ptr noundef %5)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = tail call fastcc i32 @LzmaEnc_Encode2(ptr noundef nonnull %0, ptr noundef %3)
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi i32 [ %10, %6 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LzmaEnc_Encode2(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 47
  %4 = tail call fastcc i32 @LzmaEnc_CodeOneBlock(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 45
  %9 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 8
  %10 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 4
  %11 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 6
  %12 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 3
  br label %13

13:                                               ; preds = %6, %31
  %14 = load i32, ptr %3, align 4, !tbaa !119
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  br i1 %7, label %31, label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr %1, align 8, !tbaa !197
  %19 = load i64, ptr %8, align 8, !tbaa !125
  %20 = load i64, ptr %9, align 8, !tbaa !193
  %21 = load ptr, ptr %10, align 8, !tbaa !194
  %22 = load ptr, ptr %11, align 8, !tbaa !195
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = load i64, ptr %12, align 8, !tbaa !196
  %26 = add i64 %20, %23
  %27 = sub i64 %26, %24
  %28 = add i64 %27, %25
  %29 = tail call i32 %18(ptr noundef nonnull %1, i64 noundef %19, i64 noundef %28) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %17, %16
  %32 = tail call fastcc i32 @LzmaEnc_CodeOneBlock(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %13, label %34

34:                                               ; preds = %13, %31, %17, %2
  %35 = phi i32 [ %4, %2 ], [ 10, %17 ], [ %32, %31 ], [ 0, %13 ]
  %36 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !122
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 3
  tail call void @MatchFinderMt_ReleaseStream(ptr noundef nonnull %40) #16
  br label %41

41:                                               ; preds = %34, %39
  ret i32 %35
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @LzmaEnc_WriteProperties(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 50
  %5 = load i32, ptr %4, align 8, !tbaa !64
  %6 = load i64, ptr %2, align 8, !tbaa !135
  %7 = icmp ult i64 %6, 5
  br i1 %7, label %112, label %8

8:                                                ; preds = %3
  store i64 5, ptr %2, align 8, !tbaa !135
  %9 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 26
  %10 = load i32, ptr %9, align 4, !tbaa !69
  %11 = mul i32 %10, 5
  %12 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 25
  %13 = load i32, ptr %12, align 8, !tbaa !68
  %14 = add i32 %11, %13
  %15 = mul i32 %14, 9
  %16 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 24
  %17 = load i32, ptr %16, align 4, !tbaa !67
  %18 = add i32 %15, %17
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %1, align 1, !tbaa !24
  %20 = icmp ugt i32 %5, 4096
  br i1 %20, label %97, label %99

21:                                               ; preds = %97
  %22 = icmp ugt i32 %5, 8192
  br i1 %22, label %23, label %99

23:                                               ; preds = %21
  %24 = icmp ugt i32 %5, 12288
  br i1 %24, label %25, label %99

25:                                               ; preds = %23
  %26 = icmp ugt i32 %5, 16384
  br i1 %26, label %27, label %99

27:                                               ; preds = %25
  %28 = icmp ugt i32 %5, 24576
  br i1 %28, label %29, label %99

29:                                               ; preds = %27
  %30 = icmp ugt i32 %5, 32768
  br i1 %30, label %31, label %99

31:                                               ; preds = %29
  %32 = icmp ugt i32 %5, 49152
  br i1 %32, label %33, label %99

33:                                               ; preds = %31
  %34 = icmp ugt i32 %5, 65536
  br i1 %34, label %35, label %99

35:                                               ; preds = %33
  %36 = icmp ugt i32 %5, 98304
  br i1 %36, label %37, label %99

37:                                               ; preds = %35
  %38 = icmp ugt i32 %5, 131072
  br i1 %38, label %39, label %99

39:                                               ; preds = %37
  %40 = icmp ugt i32 %5, 196608
  br i1 %40, label %41, label %99

41:                                               ; preds = %39
  %42 = icmp ugt i32 %5, 262144
  br i1 %42, label %43, label %99

43:                                               ; preds = %41
  %44 = icmp ugt i32 %5, 393216
  br i1 %44, label %45, label %99

45:                                               ; preds = %43
  %46 = icmp ugt i32 %5, 524288
  br i1 %46, label %47, label %99

47:                                               ; preds = %45
  %48 = icmp ugt i32 %5, 786432
  br i1 %48, label %49, label %99

49:                                               ; preds = %47
  %50 = icmp ugt i32 %5, 1048576
  br i1 %50, label %51, label %99

51:                                               ; preds = %49
  %52 = icmp ugt i32 %5, 1572864
  br i1 %52, label %53, label %99

53:                                               ; preds = %51
  %54 = icmp ugt i32 %5, 2097152
  br i1 %54, label %55, label %99

55:                                               ; preds = %53
  %56 = icmp ugt i32 %5, 3145728
  br i1 %56, label %57, label %99

57:                                               ; preds = %55
  %58 = icmp ugt i32 %5, 4194304
  br i1 %58, label %59, label %99

59:                                               ; preds = %57
  %60 = icmp ugt i32 %5, 6291456
  br i1 %60, label %61, label %99

61:                                               ; preds = %59
  %62 = icmp ugt i32 %5, 8388608
  br i1 %62, label %63, label %99

63:                                               ; preds = %61
  %64 = icmp ugt i32 %5, 12582912
  br i1 %64, label %65, label %99

65:                                               ; preds = %63
  %66 = icmp ugt i32 %5, 16777216
  br i1 %66, label %67, label %99

67:                                               ; preds = %65
  %68 = icmp ugt i32 %5, 25165824
  br i1 %68, label %69, label %99

69:                                               ; preds = %67
  %70 = icmp ugt i32 %5, 33554432
  br i1 %70, label %71, label %99

71:                                               ; preds = %69
  %72 = icmp ugt i32 %5, 50331648
  br i1 %72, label %73, label %99

73:                                               ; preds = %71
  %74 = icmp ugt i32 %5, 67108864
  br i1 %74, label %75, label %99

75:                                               ; preds = %73
  %76 = icmp ugt i32 %5, 100663296
  br i1 %76, label %77, label %99

77:                                               ; preds = %75
  %78 = icmp ugt i32 %5, 134217728
  br i1 %78, label %79, label %99

79:                                               ; preds = %77
  %80 = icmp ugt i32 %5, 201326592
  br i1 %80, label %81, label %99

81:                                               ; preds = %79
  %82 = icmp ugt i32 %5, 268435456
  br i1 %82, label %83, label %99

83:                                               ; preds = %81
  %84 = icmp ugt i32 %5, 402653184
  br i1 %84, label %85, label %99

85:                                               ; preds = %83
  %86 = icmp ugt i32 %5, 536870912
  br i1 %86, label %87, label %99

87:                                               ; preds = %85
  %88 = icmp ugt i32 %5, 805306368
  br i1 %88, label %89, label %99

89:                                               ; preds = %87
  %90 = icmp ugt i32 %5, 1073741824
  br i1 %90, label %91, label %99

91:                                               ; preds = %89
  %92 = icmp ugt i32 %5, 1610612736
  br i1 %92, label %93, label %99

93:                                               ; preds = %91
  %94 = icmp ugt i32 %5, -2147483648
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  %96 = tail call i32 @llvm.umax.i32(i32 %5, i32 -1073741824)
  br label %99

97:                                               ; preds = %8
  %98 = icmp ugt i32 %5, 6144
  br i1 %98, label %21, label %99

99:                                               ; preds = %95, %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %97, %8
  %100 = phi i32 [ 4096, %8 ], [ 6144, %97 ], [ 8192, %21 ], [ 12288, %23 ], [ 16384, %25 ], [ 24576, %27 ], [ 32768, %29 ], [ 49152, %31 ], [ 65536, %33 ], [ 98304, %35 ], [ 131072, %37 ], [ 196608, %39 ], [ 262144, %41 ], [ 393216, %43 ], [ 524288, %45 ], [ 786432, %47 ], [ 1048576, %49 ], [ 1572864, %51 ], [ 2097152, %53 ], [ 3145728, %55 ], [ 4194304, %57 ], [ 6291456, %59 ], [ 8388608, %61 ], [ 12582912, %63 ], [ 16777216, %65 ], [ 25165824, %67 ], [ 33554432, %69 ], [ 50331648, %71 ], [ 67108864, %73 ], [ 100663296, %75 ], [ 134217728, %77 ], [ 201326592, %79 ], [ 268435456, %81 ], [ 402653184, %83 ], [ 536870912, %85 ], [ 805306368, %87 ], [ 1073741824, %89 ], [ 1610612736, %91 ], [ -2147483648, %93 ], [ %96, %95 ]
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %101, ptr %102, align 1, !tbaa !24
  %103 = lshr i32 %100, 8
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %104, ptr %105, align 1, !tbaa !24
  %106 = lshr i32 %100, 16
  %107 = trunc i32 %106 to i8
  %108 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %107, ptr %108, align 1, !tbaa !24
  %109 = lshr i32 %100, 24
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds i8, ptr %1, i64 4
  store i8 %110, ptr %111, align 1, !tbaa !24
  br label %112

112:                                              ; preds = %99, %3
  %113 = phi i32 [ 5, %3 ], [ 0, %99 ]
  ret i32 %113
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LzmaEnc_MemEncode(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #7 {
  %10 = alloca %struct.CSeqOutStreamBuf, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #16
  %11 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 19
  %12 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 12
  %13 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 20
  store i64 %4, ptr %13, align 8, !tbaa !128
  store ptr @MyWrite, ptr %10, align 8, !tbaa !131
  %14 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %10, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !134
  %15 = load i64, ptr %2, align 8, !tbaa !135
  %16 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %10, i64 0, i32 2
  store i64 %15, ptr %16, align 8, !tbaa !136
  %17 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %10, i64 0, i32 3
  store i32 0, ptr %17, align 8, !tbaa !137
  %18 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 44
  store i32 %5, ptr %18, align 8, !tbaa !74
  %19 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 7
  store ptr %10, ptr %19, align 8, !tbaa !138
  store i32 1, ptr %11, align 4, !tbaa !126
  store ptr %3, ptr %12, align 8, !tbaa !127
  store i64 %4, ptr %13, align 8, !tbaa !128
  %20 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 52
  store i32 1, ptr %20, align 8, !tbaa !118
  %21 = call fastcc i32 @LzmaEnc_AllocAndInit(ptr noundef %0, i32 noundef 0, ptr noundef %7, ptr noundef %8)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %9
  %24 = call fastcc i32 @LzmaEnc_Encode2(ptr noundef nonnull %0, ptr noundef %6)
  br label %25

25:                                               ; preds = %23, %9
  %26 = phi i32 [ %24, %23 ], [ %21, %9 ]
  %27 = load i64, ptr %16, align 8, !tbaa !136
  %28 = load i64, ptr %2, align 8, !tbaa !135
  %29 = sub i64 %28, %27
  store i64 %29, ptr %2, align 8, !tbaa !135
  %30 = load i32, ptr %17, align 8, !tbaa !137
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 %26, i32 7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LzmaEncode(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #7 {
  %12 = alloca %struct.CSeqOutStreamBuf, align 8
  %13 = load ptr, ptr %9, align 8, !tbaa !80
  %14 = tail call ptr %13(ptr noundef nonnull %9, i64 noundef 291032) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %60, label %16

16:                                               ; preds = %11
  tail call void @LzmaEnc_Construct(ptr noundef nonnull %14)
  %17 = tail call i32 @LzmaEnc_SetProps(ptr noundef nonnull %14, ptr noundef %4)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = tail call i32 @LzmaEnc_WriteProperties(ptr noundef nonnull %14, ptr noundef %5, ptr noundef %6)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #16
  %23 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i64 0, i32 4, i32 19
  %24 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i64 0, i32 4, i32 12
  %25 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i64 0, i32 4, i32 20
  store i64 %3, ptr %25, align 8, !tbaa !128
  store ptr @MyWrite, ptr %12, align 8, !tbaa !131
  %26 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %12, i64 0, i32 1
  store ptr %0, ptr %26, align 8, !tbaa !134
  %27 = load i64, ptr %1, align 8, !tbaa !135
  %28 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %12, i64 0, i32 2
  store i64 %27, ptr %28, align 8, !tbaa !136
  %29 = getelementptr inbounds %struct.CSeqOutStreamBuf, ptr %12, i64 0, i32 3
  store i32 0, ptr %29, align 8, !tbaa !137
  %30 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i64 0, i32 44
  store i32 %7, ptr %30, align 8, !tbaa !74
  %31 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i64 0, i32 43, i32 7
  store ptr %12, ptr %31, align 8, !tbaa !138
  store i32 1, ptr %23, align 4, !tbaa !126
  store ptr %2, ptr %24, align 8, !tbaa !127
  store i64 %3, ptr %25, align 8, !tbaa !128
  %32 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i64 0, i32 52
  store i32 1, ptr %32, align 8, !tbaa !118
  %33 = call fastcc i32 @LzmaEnc_AllocAndInit(ptr noundef nonnull %14, i32 noundef 0, ptr noundef nonnull %9, ptr noundef %10)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = call fastcc i32 @LzmaEnc_Encode2(ptr noundef nonnull %14, ptr noundef %8)
  br label %37

37:                                               ; preds = %22, %35
  %38 = phi i32 [ %36, %35 ], [ %33, %22 ]
  %39 = load i64, ptr %28, align 8, !tbaa !136
  %40 = load i64, ptr %1, align 8, !tbaa !135
  %41 = sub i64 %40, %39
  store i64 %41, ptr %1, align 8, !tbaa !135
  %42 = load i32, ptr %29, align 8, !tbaa !137
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 %38, i32 7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #16
  br label %45

45:                                               ; preds = %19, %37, %16
  %46 = phi i32 [ %44, %37 ], [ %20, %19 ], [ %17, %16 ]
  %47 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i64 0, i32 3
  call void @MatchFinderMt_Destruct(ptr noundef nonnull %47, ptr noundef %10) #16
  %48 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i64 0, i32 4
  call void @MatchFinder_Free(ptr noundef nonnull %48, ptr noundef %10) #16
  %49 = getelementptr inbounds %struct.ISzAlloc, ptr %9, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !82
  %51 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i64 0, i32 29
  %52 = load ptr, ptr %51, align 8, !tbaa !51
  call void %50(ptr noundef nonnull %9, ptr noundef %52) #16
  %53 = load ptr, ptr %49, align 8, !tbaa !82
  %54 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i64 0, i32 53
  %55 = load ptr, ptr %54, align 8, !tbaa !79
  call void %53(ptr noundef nonnull %9, ptr noundef %55) #16
  store ptr null, ptr %51, align 8, !tbaa !51
  store ptr null, ptr %54, align 8, !tbaa !79
  %56 = load ptr, ptr %49, align 8, !tbaa !82
  %57 = getelementptr inbounds %struct.CLzmaEnc, ptr %14, i64 0, i32 43, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !83
  call void %56(ptr noundef nonnull %9, ptr noundef %58) #16
  store ptr null, ptr %57, align 8, !tbaa !83
  %59 = load ptr, ptr %49, align 8, !tbaa !82
  call void %59(ptr noundef nonnull %9, ptr noundef nonnull %14) #16
  br label %60

60:                                               ; preds = %11, %45
  %61 = phi i32 [ %46, %45 ], [ 2, %11 ]
  ret i32 %61
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @LenPriceEnc_UpdateTable(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.CLenPriceEnc, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !198
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.CLenPriceEnc, ptr %0, i64 0, i32 1, i64 %6
  %8 = load i16, ptr %0, align 2, !tbaa !96
  %9 = lshr i16 %8, 4
  %10 = zext i16 %9 to i64
  %11 = getelementptr inbounds i32, ptr %2, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !22
  %13 = xor i16 %9, 127
  %14 = zext i16 %13 to i64
  %15 = getelementptr inbounds i32, ptr %2, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !22
  %17 = getelementptr inbounds %struct.CLenEnc, ptr %0, i64 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !95
  %19 = lshr i16 %18, 4
  %20 = zext i16 %19 to i64
  %21 = getelementptr inbounds i32, ptr %2, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !22
  %23 = add i32 %22, %16
  %24 = xor i16 %19, 127
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds i32, ptr %2, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !22
  %28 = add i32 %27, %16
  %29 = getelementptr inbounds %struct.CLenEnc, ptr %0, i64 0, i32 2
  %30 = shl i32 %1, 3
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i16, ptr %29, i64 %31
  %33 = zext i32 %5 to i64
  %34 = tail call i32 @llvm.umin.i32(i32 %5, i32 7)
  %35 = sub nuw nsw i32 16, %34
  %36 = tail call i64 @llvm.umin.i64(i64 %33, i64 7)
  %37 = add nuw nsw i64 %36, 1
  br label %42

38:                                               ; preds = %66
  %39 = getelementptr inbounds %struct.CLenEnc, ptr %0, i64 0, i32 3
  %40 = getelementptr inbounds i16, ptr %39, i64 %31
  %41 = zext i32 %43 to i64
  br label %76

42:                                               ; preds = %66, %3
  %43 = phi i32 [ %35, %3 ], [ %71, %66 ]
  %44 = phi i64 [ 0, %3 ], [ %69, %66 ]
  %45 = icmp eq i64 %44, %33
  br i1 %45, label %132, label %46

46:                                               ; preds = %42
  %47 = trunc i64 %44 to i32
  %48 = or i32 %47, 8
  br label %49

49:                                               ; preds = %49, %46
  %50 = phi i32 [ %64, %49 ], [ 0, %46 ]
  %51 = phi i32 [ %52, %49 ], [ %48, %46 ]
  %52 = lshr i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i16, ptr %32, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !29
  %56 = zext i16 %55 to i64
  %57 = and i32 %51, 1
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i64 0, i64 2032
  %60 = xor i64 %59, %56
  %61 = lshr i64 %60, 4
  %62 = getelementptr inbounds i32, ptr %2, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !22
  %64 = add i32 %63, %50
  %65 = icmp eq i32 %52, 1
  br i1 %65, label %66, label %49, !llvm.loop !111

66:                                               ; preds = %49
  %67 = add i32 %64, %12
  %68 = getelementptr inbounds i32, ptr %7, i64 %44
  store i32 %67, ptr %68, align 4, !tbaa !22
  %69 = add nuw nsw i64 %44, 1
  %70 = icmp eq i64 %69, 8
  %71 = add nuw nsw i32 %43, 1
  br i1 %70, label %38, label %42, !llvm.loop !199

72:                                               ; preds = %100
  %73 = icmp ult i32 %43, %5
  br i1 %73, label %74, label %132

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.CLenEnc, ptr %0, i64 0, i32 4
  br label %105

76:                                               ; preds = %100, %38
  %77 = phi i64 [ %37, %38 ], [ %103, %100 ]
  %78 = icmp ult i64 %77, %33
  br i1 %78, label %79, label %132

79:                                               ; preds = %76
  %80 = trunc i64 %77 to i32
  %81 = add i32 %80, -8
  %82 = or i32 %81, 8
  br label %83

83:                                               ; preds = %83, %79
  %84 = phi i32 [ %98, %83 ], [ 0, %79 ]
  %85 = phi i32 [ %86, %83 ], [ %82, %79 ]
  %86 = lshr i32 %85, 1
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i16, ptr %40, i64 %87
  %89 = load i16, ptr %88, align 2, !tbaa !29
  %90 = zext i16 %89 to i64
  %91 = and i32 %85, 1
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i64 0, i64 2032
  %94 = xor i64 %93, %90
  %95 = lshr i64 %94, 4
  %96 = getelementptr inbounds i32, ptr %2, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !22
  %98 = add i32 %97, %84
  %99 = icmp eq i32 %86, 1
  br i1 %99, label %100, label %83, !llvm.loop !111

100:                                              ; preds = %83
  %101 = add i32 %23, %98
  %102 = getelementptr inbounds i32, ptr %7, i64 %77
  store i32 %101, ptr %102, align 4, !tbaa !22
  %103 = add nuw nsw i64 %77, 1
  %104 = icmp eq i64 %103, %41
  br i1 %104, label %72, label %76, !llvm.loop !200

105:                                              ; preds = %127, %74
  %106 = phi i64 [ %41, %74 ], [ %130, %127 ]
  %107 = trunc i64 %106 to i32
  %108 = add i32 %107, -16
  %109 = or i32 %108, 256
  br label %110

110:                                              ; preds = %110, %105
  %111 = phi i32 [ %125, %110 ], [ 0, %105 ]
  %112 = phi i32 [ %113, %110 ], [ %109, %105 ]
  %113 = lshr i32 %112, 1
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i16, ptr %75, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !29
  %117 = zext i16 %116 to i64
  %118 = and i32 %112, 1
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, i64 0, i64 2032
  %121 = xor i64 %120, %117
  %122 = lshr i64 %121, 4
  %123 = getelementptr inbounds i32, ptr %2, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !22
  %125 = add i32 %124, %111
  %126 = icmp eq i32 %113, 1
  br i1 %126, label %127, label %110, !llvm.loop !111

127:                                              ; preds = %110
  %128 = add i32 %28, %125
  %129 = getelementptr inbounds i32, ptr %7, i64 %106
  store i32 %128, ptr %129, align 4, !tbaa !22
  %130 = add nuw nsw i64 %106, 1
  %131 = icmp eq i64 %130, %33
  br i1 %131, label %132, label %105, !llvm.loop !201

132:                                              ; preds = %42, %76, %127, %72
  %133 = load i32, ptr %4, align 4, !tbaa !198
  %134 = getelementptr inbounds %struct.CLenPriceEnc, ptr %0, i64 0, i32 3, i64 %6
  store i32 %133, ptr %134, align 4, !tbaa !22
  ret void
}

declare i32 @MatchFinderMt_Create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @MatchFinderMt_CreateVTable(ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @MatchFinder_Create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @MatchFinder_CreateVTable(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Flush(ptr noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 47
  store i32 1, ptr %3, align 4, !tbaa !119
  %4 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 44
  %5 = load i32, ptr %4, align 8, !tbaa !74
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %182, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 28
  %9 = load i32, ptr %8, align 4, !tbaa !100
  %10 = and i32 %9, %1
  %11 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43
  %12 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 18
  %13 = load i32, ptr %12, align 8, !tbaa !31
  %14 = zext i32 %13 to i64
  %15 = zext i32 %10 to i64
  %16 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 30, i64 %14, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !29
  %18 = zext i16 %17 to i32
  %19 = load i32, ptr %11, align 8, !tbaa !85
  %20 = lshr i32 %19, 11
  %21 = mul i32 %20, %18
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !84
  %25 = add i64 %24, %22
  store i64 %25, ptr %23, align 8, !tbaa !84
  %26 = sub i32 %19, %21
  %27 = lshr i16 %17, 5
  %28 = sub i16 %17, %27
  store i32 %26, ptr %11, align 8
  store i16 %28, ptr %16, align 2, !tbaa !29
  %29 = icmp ult i32 %26, 16777216
  br i1 %29, label %30, label %35

30:                                               ; preds = %7
  %31 = shl nuw i32 %26, 8
  store i32 %31, ptr %11, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %11)
  %32 = load i32, ptr %12, align 8, !tbaa !31
  %33 = load i32, ptr %11, align 8, !tbaa !85
  %34 = zext i32 %32 to i64
  br label %35

35:                                               ; preds = %30, %7
  %36 = phi i64 [ %14, %7 ], [ %34, %30 ]
  %37 = phi i32 [ %26, %7 ], [ %33, %30 ]
  %38 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 31, i64 %36
  %39 = load i16, ptr %38, align 2, !tbaa !29
  %40 = zext i16 %39 to i32
  %41 = lshr i32 %37, 11
  %42 = mul i32 %41, %40
  %43 = sub nsw i32 2048, %40
  %44 = lshr i32 %43, 5
  store i32 %42, ptr %11, align 8
  %45 = trunc i32 %44 to i16
  %46 = add i16 %39, %45
  store i16 %46, ptr %38, align 2, !tbaa !29
  %47 = icmp ult i32 %42, 16777216
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = shl nuw i32 %42, 8
  store i32 %49, ptr %11, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %11)
  %50 = load i32, ptr %12, align 8, !tbaa !31
  %51 = zext i32 %50 to i64
  br label %52

52:                                               ; preds = %48, %35
  %53 = phi i64 [ %36, %35 ], [ %51, %48 ]
  %54 = getelementptr inbounds [12 x i32], ptr @kMatchNextStates, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !22
  store i32 %55, ptr %12, align 8, !tbaa !31
  %56 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 39
  %57 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 42
  %58 = load i32, ptr %57, align 8, !tbaa !70
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 13
  tail call fastcc void @LenEnc_Encode2(ptr noundef nonnull %56, ptr noundef nonnull %11, i32 noundef 0, i32 noundef %10, i32 noundef %60, ptr noundef nonnull %61)
  %62 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 36
  br label %63

63:                                               ; preds = %95, %52
  %64 = phi i32 [ 1, %52 ], [ %97, %95 ]
  %65 = phi i32 [ 6, %52 ], [ %66, %95 ]
  %66 = add nsw i32 %65, -1
  %67 = lshr i32 63, %66
  %68 = and i32 %67, 1
  %69 = zext i32 %64 to i64
  %70 = getelementptr inbounds i16, ptr %62, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !29
  %72 = zext i16 %71 to i32
  %73 = load i32, ptr %11, align 8, !tbaa !85
  %74 = lshr i32 %73, 11
  %75 = mul i32 %74, %72
  %76 = icmp eq i32 %68, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %63
  %78 = sub nsw i32 2048, %72
  %79 = lshr i32 %78, 5
  %80 = add nuw nsw i32 %79, %72
  br label %88

81:                                               ; preds = %63
  %82 = zext i32 %75 to i64
  %83 = load i64, ptr %23, align 8, !tbaa !84
  %84 = add i64 %83, %82
  store i64 %84, ptr %23, align 8, !tbaa !84
  %85 = sub i32 %73, %75
  %86 = lshr i32 %72, 5
  %87 = sub nsw i32 %72, %86
  br label %88

88:                                               ; preds = %81, %77
  %89 = phi i32 [ %75, %77 ], [ %85, %81 ]
  %90 = phi i32 [ %80, %77 ], [ %87, %81 ]
  store i32 %89, ptr %11, align 8
  %91 = trunc i32 %90 to i16
  store i16 %91, ptr %70, align 2, !tbaa !29
  %92 = icmp ult i32 %89, 16777216
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = shl nuw i32 %89, 8
  store i32 %94, ptr %11, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %11)
  br label %95

95:                                               ; preds = %93, %88
  %96 = shl i32 %64, 1
  %97 = or i32 %68, %96
  %98 = icmp eq i32 %66, 0
  br i1 %98, label %99, label %63, !llvm.loop !190

99:                                               ; preds = %95, %110
  %100 = phi i32 [ %103, %110 ], [ 26, %95 ]
  %101 = load i32, ptr %11, align 8, !tbaa !85
  %102 = lshr i32 %101, 1
  store i32 %102, ptr %11, align 8, !tbaa !85
  %103 = add nsw i32 %100, -1
  %104 = zext i32 %102 to i64
  %105 = load i64, ptr %23, align 8, !tbaa !84
  %106 = add i64 %105, %104
  store i64 %106, ptr %23, align 8, !tbaa !84
  %107 = icmp ult i32 %101, 33554432
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = shl nuw i32 %102, 8
  store i32 %109, ptr %11, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %11)
  br label %110

110:                                              ; preds = %108, %99
  %111 = icmp eq i32 %103, 0
  br i1 %111, label %112, label %99, !llvm.loop !192

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 38, i64 1
  %114 = load i32, ptr %11, align 8, !tbaa !85
  %115 = lshr i32 %114, 11
  %116 = load i16, ptr %113, align 2, !tbaa !29
  %117 = zext i16 %116 to i32
  %118 = mul i32 %115, %117
  %119 = zext i32 %118 to i64
  %120 = load i64, ptr %23, align 8, !tbaa !84
  %121 = add i64 %120, %119
  store i64 %121, ptr %23, align 8, !tbaa !84
  %122 = sub i32 %114, %118
  %123 = lshr i16 %116, 5
  %124 = sub i16 %116, %123
  store i16 %124, ptr %113, align 2, !tbaa !29
  %125 = icmp ult i32 %122, 16777216
  br i1 %125, label %126, label %130

126:                                              ; preds = %112
  %127 = shl nuw i32 %122, 8
  store i32 %127, ptr %11, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %11)
  %128 = load i32, ptr %11, align 8, !tbaa !85
  %129 = load i64, ptr %23, align 8, !tbaa !84
  br label %130

130:                                              ; preds = %126, %112
  %131 = phi i64 [ %129, %126 ], [ %121, %112 ]
  %132 = phi i32 [ %128, %126 ], [ %122, %112 ]
  %133 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 38, i64 3
  %134 = lshr i32 %132, 11
  %135 = load i16, ptr %133, align 2, !tbaa !29
  %136 = zext i16 %135 to i32
  %137 = mul i32 %134, %136
  %138 = zext i32 %137 to i64
  %139 = add i64 %131, %138
  store i64 %139, ptr %23, align 8, !tbaa !84
  %140 = sub i32 %132, %137
  %141 = lshr i16 %135, 5
  %142 = sub i16 %135, %141
  store i16 %142, ptr %133, align 2, !tbaa !29
  %143 = icmp ult i32 %140, 16777216
  br i1 %143, label %144, label %148

144:                                              ; preds = %130
  %145 = shl nuw i32 %140, 8
  store i32 %145, ptr %11, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %11)
  %146 = load i32, ptr %11, align 8, !tbaa !85
  %147 = load i64, ptr %23, align 8, !tbaa !84
  br label %148

148:                                              ; preds = %144, %130
  %149 = phi i64 [ %147, %144 ], [ %139, %130 ]
  %150 = phi i32 [ %146, %144 ], [ %140, %130 ]
  %151 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 38, i64 7
  %152 = lshr i32 %150, 11
  %153 = load i16, ptr %151, align 2, !tbaa !29
  %154 = zext i16 %153 to i32
  %155 = mul i32 %152, %154
  %156 = zext i32 %155 to i64
  %157 = add i64 %149, %156
  store i64 %157, ptr %23, align 8, !tbaa !84
  %158 = sub i32 %150, %155
  %159 = lshr i16 %153, 5
  %160 = sub i16 %153, %159
  store i16 %160, ptr %151, align 2, !tbaa !29
  %161 = icmp ult i32 %158, 16777216
  br i1 %161, label %162, label %166

162:                                              ; preds = %148
  %163 = shl nuw i32 %158, 8
  store i32 %163, ptr %11, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %11)
  %164 = load i32, ptr %11, align 8, !tbaa !85
  %165 = load i64, ptr %23, align 8, !tbaa !84
  br label %166

166:                                              ; preds = %162, %148
  %167 = phi i64 [ %165, %162 ], [ %157, %148 ]
  %168 = phi i32 [ %164, %162 ], [ %158, %148 ]
  %169 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 38, i64 15
  %170 = lshr i32 %168, 11
  %171 = load i16, ptr %169, align 2, !tbaa !29
  %172 = zext i16 %171 to i32
  %173 = mul i32 %170, %172
  %174 = zext i32 %173 to i64
  %175 = add i64 %167, %174
  store i64 %175, ptr %23, align 8, !tbaa !84
  %176 = sub i32 %168, %173
  %177 = lshr i16 %171, 5
  %178 = sub i16 %171, %177
  store i32 %176, ptr %11, align 8
  store i16 %178, ptr %169, align 2, !tbaa !29
  %179 = icmp ult i32 %176, 16777216
  br i1 %179, label %180, label %182

180:                                              ; preds = %166
  %181 = shl nuw i32 %176, 8
  store i32 %181, ptr %11, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %11)
  br label %182

182:                                              ; preds = %180, %166, %2
  %183 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %183)
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %183)
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %183)
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %183)
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %183)
  %184 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 9
  %185 = load i32, ptr %184, align 8, !tbaa !90
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %206

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 4
  %189 = load ptr, ptr %188, align 8, !tbaa !88
  %190 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 6
  %191 = load ptr, ptr %190, align 8, !tbaa !83
  %192 = ptrtoint ptr %189 to i64
  %193 = ptrtoint ptr %191 to i64
  %194 = sub i64 %192, %193
  %195 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 7
  %196 = load ptr, ptr %195, align 8, !tbaa !202
  %197 = load ptr, ptr %196, align 8, !tbaa !197
  %198 = tail call i64 %197(ptr noundef nonnull %196, ptr noundef %191, i64 noundef %194) #16
  %199 = icmp eq i64 %194, %198
  br i1 %199, label %201, label %200

200:                                              ; preds = %187
  store i32 9, ptr %184, align 8, !tbaa !90
  br label %201

201:                                              ; preds = %200, %187
  %202 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 43, i32 8
  %203 = load i64, ptr %202, align 8, !tbaa !89
  %204 = add i64 %203, %194
  store i64 %204, ptr %202, align 8, !tbaa !89
  %205 = load ptr, ptr %190, align 8, !tbaa !83
  store ptr %205, ptr %188, align 8, !tbaa !88
  br label %206

206:                                              ; preds = %182, %201
  %207 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 49
  %208 = load i32, ptr %207, align 4, !tbaa !120
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %206
  %211 = load i32, ptr %184, align 8, !tbaa !140
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 27
  %215 = load i32, ptr %214, align 8, !tbaa !141
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %224, label %221

217:                                              ; preds = %210
  store i32 9, ptr %207, align 4, !tbaa !120
  %218 = getelementptr inbounds %struct.CLzmaEnc, ptr %0, i64 0, i32 4, i32 27
  %219 = load i32, ptr %218, align 8, !tbaa !141
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %217, %213
  store i32 8, ptr %207, align 4, !tbaa !120
  br label %222

222:                                              ; preds = %221, %217
  %223 = phi i32 [ 8, %221 ], [ 9, %217 ]
  store i32 1, ptr %3, align 4, !tbaa !119
  br label %224

224:                                              ; preds = %206, %213, %222
  %225 = phi i32 [ %208, %206 ], [ %223, %222 ], [ 0, %213 ]
  ret i32 %225
}

; Function Attrs: nounwind uwtable
define internal fastcc void @LenEnc_Encode2(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #7 {
  %7 = icmp ult i32 %2, 8
  %8 = load i16, ptr %0, align 2, !tbaa !29
  %9 = zext i16 %8 to i32
  %10 = load i32, ptr %1, align 8, !tbaa !85
  %11 = lshr i32 %10, 11
  %12 = mul i32 %11, %9
  br i1 %7, label %13, label %114

13:                                               ; preds = %6
  %14 = sub nsw i32 2048, %9
  %15 = lshr i32 %14, 5
  store i32 %12, ptr %1, align 8
  %16 = trunc i32 %15 to i16
  %17 = add i16 %8, %16
  store i16 %17, ptr %0, align 2, !tbaa !29
  %18 = icmp ult i32 %12, 16777216
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = shl nuw i32 %12, 8
  store i32 %20, ptr %1, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %1)
  %21 = load i32, ptr %1, align 8, !tbaa !85
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i32 [ %12, %13 ], [ %21, %19 ]
  %24 = getelementptr inbounds %struct.CLenEnc, ptr %0, i64 0, i32 2
  %25 = shl i32 %3, 3
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i16, ptr %24, i64 %26
  %28 = getelementptr inbounds %struct.CRangeEnc, ptr %1, i64 0, i32 2
  %29 = lshr i32 %2, 2
  %30 = getelementptr inbounds i16, ptr %27, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !29
  %32 = zext i16 %31 to i32
  %33 = lshr i32 %23, 11
  %34 = mul i32 %33, %32
  %35 = icmp ult i32 %2, 4
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = sub nsw i32 2048, %32
  %38 = lshr i32 %37, 5
  %39 = add nuw nsw i32 %38, %32
  br label %47

40:                                               ; preds = %22
  %41 = zext i32 %34 to i64
  %42 = load i64, ptr %28, align 8, !tbaa !84
  %43 = add i64 %42, %41
  store i64 %43, ptr %28, align 8, !tbaa !84
  %44 = sub i32 %23, %34
  %45 = lshr i32 %32, 5
  %46 = sub nsw i32 %32, %45
  br label %47

47:                                               ; preds = %40, %36
  %48 = phi i32 [ %34, %36 ], [ %44, %40 ]
  %49 = phi i32 [ %39, %36 ], [ %46, %40 ]
  store i32 %48, ptr %1, align 8
  %50 = trunc i32 %49 to i16
  store i16 %50, ptr %30, align 2, !tbaa !29
  %51 = icmp ult i32 %48, 16777216
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = shl nuw i32 %48, 8
  store i32 %53, ptr %1, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %1)
  %54 = load i32, ptr %1, align 8, !tbaa !85
  br label %55

55:                                               ; preds = %52, %47
  %56 = phi i32 [ %54, %52 ], [ %48, %47 ]
  %57 = or i32 %29, 2
  %58 = lshr i32 %2, 1
  %59 = and i32 %58, 1
  %60 = zext i32 %57 to i64
  %61 = getelementptr inbounds i16, ptr %27, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !29
  %63 = zext i16 %62 to i32
  %64 = lshr i32 %56, 11
  %65 = mul i32 %64, %63
  %66 = icmp eq i32 %59, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %55
  %68 = zext i32 %65 to i64
  %69 = load i64, ptr %28, align 8, !tbaa !84
  %70 = add i64 %69, %68
  store i64 %70, ptr %28, align 8, !tbaa !84
  %71 = sub i32 %56, %65
  %72 = lshr i32 %63, 5
  %73 = sub nsw i32 %63, %72
  br label %78

74:                                               ; preds = %55
  %75 = sub nsw i32 2048, %63
  %76 = lshr i32 %75, 5
  %77 = add nuw nsw i32 %76, %63
  br label %78

78:                                               ; preds = %74, %67
  %79 = phi i32 [ %65, %74 ], [ %71, %67 ]
  %80 = phi i32 [ %77, %74 ], [ %73, %67 ]
  store i32 %79, ptr %1, align 8
  %81 = trunc i32 %80 to i16
  store i16 %81, ptr %61, align 2, !tbaa !29
  %82 = icmp ult i32 %79, 16777216
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = shl nuw i32 %79, 8
  store i32 %84, ptr %1, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %1)
  %85 = load i32, ptr %1, align 8, !tbaa !85
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi i32 [ %85, %83 ], [ %79, %78 ]
  %88 = shl nuw nsw i32 %57, 1
  %89 = or i32 %88, %59
  %90 = and i32 %2, 1
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds i16, ptr %27, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !29
  %94 = zext i16 %93 to i32
  %95 = lshr i32 %87, 11
  %96 = mul i32 %95, %94
  %97 = icmp eq i32 %90, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %86
  %99 = zext i32 %96 to i64
  %100 = load i64, ptr %28, align 8, !tbaa !84
  %101 = add i64 %100, %99
  store i64 %101, ptr %28, align 8, !tbaa !84
  %102 = sub i32 %87, %96
  %103 = lshr i32 %94, 5
  %104 = sub nsw i32 %94, %103
  br label %109

105:                                              ; preds = %86
  %106 = sub nsw i32 2048, %94
  %107 = lshr i32 %106, 5
  %108 = add nuw nsw i32 %107, %94
  br label %109

109:                                              ; preds = %105, %98
  %110 = phi i32 [ %96, %105 ], [ %102, %98 ]
  %111 = phi i32 [ %108, %105 ], [ %104, %98 ]
  store i32 %110, ptr %1, align 8
  %112 = trunc i32 %111 to i16
  store i16 %112, ptr %92, align 2, !tbaa !29
  %113 = icmp ult i32 %110, 16777216
  br i1 %113, label %284, label %287

114:                                              ; preds = %6
  %115 = zext i32 %12 to i64
  %116 = getelementptr inbounds %struct.CRangeEnc, ptr %1, i64 0, i32 2
  %117 = load i64, ptr %116, align 8, !tbaa !84
  %118 = add i64 %117, %115
  store i64 %118, ptr %116, align 8, !tbaa !84
  %119 = sub i32 %10, %12
  %120 = lshr i16 %8, 5
  %121 = sub i16 %8, %120
  store i32 %119, ptr %1, align 8
  store i16 %121, ptr %0, align 2, !tbaa !29
  %122 = icmp ult i32 %119, 16777216
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = shl nuw i32 %119, 8
  store i32 %124, ptr %1, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %1)
  %125 = load i32, ptr %1, align 8, !tbaa !85
  br label %126

126:                                              ; preds = %123, %114
  %127 = phi i32 [ %125, %123 ], [ %119, %114 ]
  %128 = icmp ult i32 %2, 16
  %129 = getelementptr inbounds %struct.CLenEnc, ptr %0, i64 0, i32 1
  %130 = load i16, ptr %129, align 2, !tbaa !29
  %131 = zext i16 %130 to i32
  %132 = lshr i32 %127, 11
  %133 = mul i32 %132, %131
  br i1 %128, label %134, label %235

134:                                              ; preds = %126
  %135 = sub nsw i32 2048, %131
  %136 = lshr i32 %135, 5
  store i32 %133, ptr %1, align 8
  %137 = trunc i32 %136 to i16
  %138 = add i16 %130, %137
  store i16 %138, ptr %129, align 2, !tbaa !29
  %139 = icmp ult i32 %133, 16777216
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = shl nuw i32 %133, 8
  store i32 %141, ptr %1, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %1)
  %142 = load i32, ptr %1, align 8, !tbaa !85
  br label %143

143:                                              ; preds = %140, %134
  %144 = phi i32 [ %133, %134 ], [ %142, %140 ]
  %145 = getelementptr inbounds %struct.CLenEnc, ptr %0, i64 0, i32 3
  %146 = shl i32 %3, 3
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i16, ptr %145, i64 %147
  %149 = lshr i32 %2, 2
  %150 = and i32 %149, 1
  %151 = getelementptr inbounds i16, ptr %148, i64 1
  %152 = load i16, ptr %151, align 2, !tbaa !29
  %153 = zext i16 %152 to i32
  %154 = lshr i32 %144, 11
  %155 = mul i32 %154, %153
  %156 = icmp eq i32 %150, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %143
  %158 = sub nsw i32 2048, %153
  %159 = lshr i32 %158, 5
  %160 = add nuw nsw i32 %159, %153
  br label %168

161:                                              ; preds = %143
  %162 = zext i32 %155 to i64
  %163 = load i64, ptr %116, align 8, !tbaa !84
  %164 = add i64 %163, %162
  store i64 %164, ptr %116, align 8, !tbaa !84
  %165 = sub i32 %144, %155
  %166 = lshr i32 %153, 5
  %167 = sub nsw i32 %153, %166
  br label %168

168:                                              ; preds = %161, %157
  %169 = phi i32 [ %155, %157 ], [ %165, %161 ]
  %170 = phi i32 [ %160, %157 ], [ %167, %161 ]
  store i32 %169, ptr %1, align 8
  %171 = trunc i32 %170 to i16
  store i16 %171, ptr %151, align 2, !tbaa !29
  %172 = icmp ult i32 %169, 16777216
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = shl nuw i32 %169, 8
  store i32 %174, ptr %1, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %1)
  %175 = load i32, ptr %1, align 8, !tbaa !85
  br label %176

176:                                              ; preds = %173, %168
  %177 = phi i32 [ %175, %173 ], [ %169, %168 ]
  %178 = or i32 %150, 2
  %179 = lshr i32 %2, 1
  %180 = and i32 %179, 1
  %181 = zext i32 %178 to i64
  %182 = getelementptr inbounds i16, ptr %148, i64 %181
  %183 = load i16, ptr %182, align 2, !tbaa !29
  %184 = zext i16 %183 to i32
  %185 = lshr i32 %177, 11
  %186 = mul i32 %185, %184
  %187 = icmp eq i32 %180, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %176
  %189 = zext i32 %186 to i64
  %190 = load i64, ptr %116, align 8, !tbaa !84
  %191 = add i64 %190, %189
  store i64 %191, ptr %116, align 8, !tbaa !84
  %192 = sub i32 %177, %186
  %193 = lshr i32 %184, 5
  %194 = sub nsw i32 %184, %193
  br label %199

195:                                              ; preds = %176
  %196 = sub nsw i32 2048, %184
  %197 = lshr i32 %196, 5
  %198 = add nuw nsw i32 %197, %184
  br label %199

199:                                              ; preds = %195, %188
  %200 = phi i32 [ %186, %195 ], [ %192, %188 ]
  %201 = phi i32 [ %198, %195 ], [ %194, %188 ]
  store i32 %200, ptr %1, align 8
  %202 = trunc i32 %201 to i16
  store i16 %202, ptr %182, align 2, !tbaa !29
  %203 = icmp ult i32 %200, 16777216
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = shl nuw i32 %200, 8
  store i32 %205, ptr %1, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %1)
  %206 = load i32, ptr %1, align 8, !tbaa !85
  br label %207

207:                                              ; preds = %204, %199
  %208 = phi i32 [ %206, %204 ], [ %200, %199 ]
  %209 = shl nuw nsw i32 %178, 1
  %210 = or i32 %209, %180
  %211 = and i32 %2, 1
  %212 = zext i32 %210 to i64
  %213 = getelementptr inbounds i16, ptr %148, i64 %212
  %214 = load i16, ptr %213, align 2, !tbaa !29
  %215 = zext i16 %214 to i32
  %216 = lshr i32 %208, 11
  %217 = mul i32 %216, %215
  %218 = icmp eq i32 %211, 0
  br i1 %218, label %226, label %219

219:                                              ; preds = %207
  %220 = zext i32 %217 to i64
  %221 = load i64, ptr %116, align 8, !tbaa !84
  %222 = add i64 %221, %220
  store i64 %222, ptr %116, align 8, !tbaa !84
  %223 = sub i32 %208, %217
  %224 = lshr i32 %215, 5
  %225 = sub nsw i32 %215, %224
  br label %230

226:                                              ; preds = %207
  %227 = sub nsw i32 2048, %215
  %228 = lshr i32 %227, 5
  %229 = add nuw nsw i32 %228, %215
  br label %230

230:                                              ; preds = %226, %219
  %231 = phi i32 [ %217, %226 ], [ %223, %219 ]
  %232 = phi i32 [ %229, %226 ], [ %225, %219 ]
  store i32 %231, ptr %1, align 8
  %233 = trunc i32 %232 to i16
  store i16 %233, ptr %213, align 2, !tbaa !29
  %234 = icmp ult i32 %231, 16777216
  br i1 %234, label %284, label %287

235:                                              ; preds = %126
  %236 = zext i32 %133 to i64
  %237 = load i64, ptr %116, align 8, !tbaa !84
  %238 = add i64 %237, %236
  store i64 %238, ptr %116, align 8, !tbaa !84
  %239 = sub i32 %127, %133
  %240 = lshr i16 %130, 5
  %241 = sub i16 %130, %240
  store i32 %239, ptr %1, align 8
  store i16 %241, ptr %129, align 2, !tbaa !29
  %242 = icmp ult i32 %239, 16777216
  br i1 %242, label %243, label %245

243:                                              ; preds = %235
  %244 = shl nuw i32 %239, 8
  store i32 %244, ptr %1, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %1)
  br label %245

245:                                              ; preds = %243, %235
  %246 = getelementptr inbounds %struct.CLenEnc, ptr %0, i64 0, i32 4
  %247 = add i32 %2, -16
  br label %248

248:                                              ; preds = %280, %245
  %249 = phi i32 [ 1, %245 ], [ %282, %280 ]
  %250 = phi i32 [ 8, %245 ], [ %251, %280 ]
  %251 = add nsw i32 %250, -1
  %252 = lshr i32 %247, %251
  %253 = and i32 %252, 1
  %254 = zext i32 %249 to i64
  %255 = getelementptr inbounds i16, ptr %246, i64 %254
  %256 = load i16, ptr %255, align 2, !tbaa !29
  %257 = zext i16 %256 to i32
  %258 = load i32, ptr %1, align 8, !tbaa !85
  %259 = lshr i32 %258, 11
  %260 = mul i32 %259, %257
  %261 = icmp eq i32 %253, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %248
  %263 = sub nsw i32 2048, %257
  %264 = lshr i32 %263, 5
  %265 = add nuw nsw i32 %264, %257
  br label %273

266:                                              ; preds = %248
  %267 = zext i32 %260 to i64
  %268 = load i64, ptr %116, align 8, !tbaa !84
  %269 = add i64 %268, %267
  store i64 %269, ptr %116, align 8, !tbaa !84
  %270 = sub i32 %258, %260
  %271 = lshr i32 %257, 5
  %272 = sub nsw i32 %257, %271
  br label %273

273:                                              ; preds = %266, %262
  %274 = phi i32 [ %260, %262 ], [ %270, %266 ]
  %275 = phi i32 [ %265, %262 ], [ %272, %266 ]
  store i32 %274, ptr %1, align 8
  %276 = trunc i32 %275 to i16
  store i16 %276, ptr %255, align 2, !tbaa !29
  %277 = icmp ult i32 %274, 16777216
  br i1 %277, label %278, label %280

278:                                              ; preds = %273
  %279 = shl nuw i32 %274, 8
  store i32 %279, ptr %1, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %1)
  br label %280

280:                                              ; preds = %278, %273
  %281 = shl i32 %249, 1
  %282 = or i32 %253, %281
  %283 = icmp eq i32 %251, 0
  br i1 %283, label %287, label %248, !llvm.loop !190

284:                                              ; preds = %230, %109
  %285 = phi i32 [ %110, %109 ], [ %231, %230 ]
  %286 = shl nuw i32 %285, 8
  store i32 %286, ptr %1, align 8, !tbaa !85
  tail call fastcc void @RangeEnc_ShiftLow(ptr noundef nonnull %1)
  br label %287

287:                                              ; preds = %280, %109, %230, %284
  %288 = icmp eq i32 %4, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %287
  %290 = zext i32 %3 to i64
  %291 = getelementptr inbounds %struct.CLenPriceEnc, ptr %0, i64 0, i32 3, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !22
  %293 = add i32 %292, -1
  store i32 %293, ptr %291, align 4, !tbaa !22
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %289
  tail call fastcc void @LenPriceEnc_UpdateTable(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %5)
  br label %296

296:                                              ; preds = %289, %295, %287
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @RangeEnc_ShiftLow(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.CRangeEnc, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !84
  %4 = and i64 %3, -16777216
  %5 = icmp eq i64 %4, 4278190080
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CRangeEnc, ptr %0, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !86
  %9 = add i64 %8, 1
  br label %84

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.CRangeEnc, ptr %0, i64 0, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !87
  %13 = getelementptr inbounds %struct.CRangeEnc, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %struct.CRangeEnc, ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %struct.CRangeEnc, ptr %0, i64 0, i32 9
  %16 = getelementptr inbounds %struct.CRangeEnc, ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %struct.CRangeEnc, ptr %0, i64 0, i32 7
  %18 = getelementptr inbounds %struct.CRangeEnc, ptr %0, i64 0, i32 8
  %19 = getelementptr inbounds %struct.CRangeEnc, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %13, align 8, !tbaa !88
  %21 = lshr i64 %3, 32
  %22 = trunc i64 %21 to i8
  %23 = add i8 %12, %22
  %24 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 %23, ptr %20, align 1, !tbaa !24
  store ptr %24, ptr %13, align 8, !tbaa !88
  %25 = load ptr, ptr %14, align 8, !tbaa !121
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %10
  %28 = load i32, ptr %15, align 8, !tbaa !90
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load ptr, ptr %16, align 8, !tbaa !83
  %32 = ptrtoint ptr %24 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = load ptr, ptr %17, align 8, !tbaa !202
  %36 = load ptr, ptr %35, align 8, !tbaa !197
  %37 = tail call i64 %36(ptr noundef nonnull %35, ptr noundef %31, i64 noundef %34) #16
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store i32 9, ptr %15, align 8, !tbaa !90
  br label %40

40:                                               ; preds = %39, %30
  %41 = load i64, ptr %18, align 8, !tbaa !89
  %42 = add i64 %41, %34
  store i64 %42, ptr %18, align 8, !tbaa !89
  %43 = load ptr, ptr %16, align 8, !tbaa !83
  store ptr %43, ptr %13, align 8, !tbaa !88
  br label %44

44:                                               ; preds = %40, %27, %10
  %45 = phi ptr [ %43, %40 ], [ %24, %27 ], [ %24, %10 ]
  %46 = load i64, ptr %19, align 8, !tbaa !86
  %47 = add i64 %46, -1
  store i64 %47, ptr %19, align 8, !tbaa !86
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %80, label %49

49:                                               ; preds = %44, %75
  %50 = phi ptr [ %76, %75 ], [ %45, %44 ]
  %51 = load i64, ptr %2, align 8, !tbaa !84
  %52 = lshr i64 %51, 32
  %53 = trunc i64 %52 to i8
  %54 = add i8 %53, -1
  %55 = getelementptr inbounds i8, ptr %50, i64 1
  store i8 %54, ptr %50, align 1, !tbaa !24
  store ptr %55, ptr %13, align 8, !tbaa !88
  %56 = load ptr, ptr %14, align 8, !tbaa !121
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %49
  %59 = load i32, ptr %15, align 8, !tbaa !90
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load ptr, ptr %16, align 8, !tbaa !83
  %63 = ptrtoint ptr %55 to i64
  %64 = ptrtoint ptr %62 to i64
  %65 = sub i64 %63, %64
  %66 = load ptr, ptr %17, align 8, !tbaa !202
  %67 = load ptr, ptr %66, align 8, !tbaa !197
  %68 = tail call i64 %67(ptr noundef nonnull %66, ptr noundef %62, i64 noundef %65) #16
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  store i32 9, ptr %15, align 8, !tbaa !90
  br label %71

71:                                               ; preds = %70, %61
  %72 = load i64, ptr %18, align 8, !tbaa !89
  %73 = add i64 %72, %65
  store i64 %73, ptr %18, align 8, !tbaa !89
  %74 = load ptr, ptr %16, align 8, !tbaa !83
  store ptr %74, ptr %13, align 8, !tbaa !88
  br label %75

75:                                               ; preds = %71, %58, %49
  %76 = phi ptr [ %74, %71 ], [ %55, %58 ], [ %55, %49 ]
  %77 = load i64, ptr %19, align 8, !tbaa !86
  %78 = add i64 %77, -1
  store i64 %78, ptr %19, align 8, !tbaa !86
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %49, !llvm.loop !203

80:                                               ; preds = %75, %44
  %81 = load i64, ptr %2, align 8, !tbaa !84
  %82 = lshr i64 %81, 24
  %83 = trunc i64 %82 to i8
  store i8 %83, ptr %11, align 4, !tbaa !87
  br label %84

84:                                               ; preds = %6, %80
  %85 = phi i64 [ %3, %6 ], [ %81, %80 ]
  %86 = phi i64 [ %9, %6 ], [ 1, %80 ]
  %87 = getelementptr inbounds %struct.CRangeEnc, ptr %0, i64 0, i32 3
  store i64 %86, ptr %87, align 8, !tbaa !86
  %88 = shl i64 %85, 8
  %89 = and i64 %88, 4294967040
  store i64 %89, ptr %2, align 8, !tbaa !84
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i32 @LitEnc_GetPriceMatched(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #13 {
  %5 = or i32 %1, 256
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %2, %4 ], [ %11, %6 ]
  %8 = phi i32 [ %5, %4 ], [ %28, %6 ]
  %9 = phi i32 [ 0, %4 ], [ %27, %6 ]
  %10 = phi i32 [ 256, %4 ], [ %31, %6 ]
  %11 = shl i32 %7, 1
  %12 = and i32 %10, %11
  %13 = lshr i32 %8, 8
  %14 = add i32 %10, %13
  %15 = add i32 %14, %12
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %0, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !29
  %19 = zext i16 %18 to i64
  %20 = and i32 %8, 128
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i64 0, i64 2032
  %23 = xor i64 %22, %19
  %24 = lshr i64 %23, 4
  %25 = getelementptr inbounds i32, ptr %3, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !22
  %27 = add i32 %26, %9
  %28 = shl i32 %8, 1
  %29 = xor i32 %11, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %10, %30
  %32 = icmp ult i32 %28, 65536
  br i1 %32, label %6, label %33, !llvm.loop !169

33:                                               ; preds = %6
  ret i32 %27
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 16.0.0"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_CLzmaEncProps", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 36}
!11 = !{!6, !7, i64 4}
!12 = !{!6, !7, i64 44}
!13 = !{!6, !7, i64 40}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 12}
!16 = !{!6, !7, i64 16}
!17 = !{!6, !7, i64 20}
!18 = !{!6, !7, i64 24}
!19 = !{!6, !7, i64 28}
!20 = !{!6, !7, i64 32}
!21 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22, i64 16, i64 4, !22, i64 20, i64 4, !22, i64 24, i64 4, !22, i64 28, i64 4, !22, i64 32, i64 4, !22, i64 36, i64 4, !22, i64 40, i64 4, !22}
!22 = !{!7, !7, i64 0}
!23 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22, i64 16, i64 4, !22, i64 20, i64 4, !22, i64 24, i64 4, !22, i64 28, i64 4, !22, i64 32, i64 4, !22, i64 36, i64 4, !22, i64 40, i64 4, !22, i64 44, i64 4, !22}
!24 = !{!8, !8, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = !{i64 0, i64 2, !29, i64 2, i64 2, !29, i64 4, i64 256, !24, i64 260, i64 256, !24, i64 516, i64 512, !24, i64 1028, i64 17408, !24, i64 18436, i64 4, !22, i64 18440, i64 64, !24}
!29 = !{!30, !30, i64 0}
!30 = !{!"short", !8, i64 0}
!31 = !{!32, !7, i64 210408}
!32 = !{!"", !33, i64 0, !34, i64 48, !7, i64 56, !35, i64 64, !42, i64 1560, !8, i64 2728, !7, i64 2856, !7, i64 2860, !7, i64 2864, !7, i64 2868, !7, i64 2872, !8, i64 2876, !8, i64 199484, !8, i64 207676, !8, i64 208188, !7, i64 210384, !7, i64 210388, !8, i64 210392, !7, i64 210408, !8, i64 210412, !8, i64 211436, !8, i64 213484, !7, i64 213548, !7, i64 213552, !7, i64 213556, !7, i64 213560, !7, i64 213564, !7, i64 213568, !7, i64 213572, !34, i64 213576, !8, i64 213584, !8, i64 213968, !8, i64 213992, !8, i64 214016, !8, i64 214040, !8, i64 214064, !8, i64 214448, !8, i64 214960, !8, i64 215188, !43, i64 215220, !43, i64 233724, !7, i64 252228, !7, i64 252232, !45, i64 252240, !7, i64 252312, !46, i64 252320, !7, i64 252328, !7, i64 252332, !7, i64 252336, !7, i64 252340, !7, i64 252344, !7, i64 252348, !7, i64 252352, !47, i64 252360}
!33 = !{!"_IMatchFinder", !34, i64 0, !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40}
!34 = !{!"any pointer", !8, i64 0}
!35 = !{!"_CMatchFinderMt", !34, i64 0, !34, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !34, i64 32, !7, i64 40, !7, i64 44, !34, i64 48, !34, i64 56, !36, i64 64, !8, i64 672, !34, i64 800, !7, i64 808, !7, i64 812, !7, i64 816, !34, i64 824, !7, i64 832, !7, i64 836, !7, i64 840, !34, i64 848, !7, i64 856, !7, i64 860, !7, i64 864, !36, i64 872, !34, i64 1480, !34, i64 1488}
!36 = !{!"_CMtSync", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !37, i64 16, !39, i64 32, !39, i64 136, !39, i64 240, !40, i64 344, !40, i64 448, !7, i64 552, !7, i64 556, !41, i64 560, !7, i64 600}
!37 = !{!"_CThread", !38, i64 0, !7, i64 8}
!38 = !{!"long", !8, i64 0}
!39 = !{!"_CEvent", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 16, !8, i64 56}
!40 = !{!"_CSemaphore", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 16, !8, i64 56}
!41 = !{!"", !8, i64 0}
!42 = !{!"_CMatchFinder", !34, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !34, i64 40, !34, i64 48, !7, i64 56, !7, i64 60, !34, i64 64, !34, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !38, i64 104, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !8, i64 140}
!43 = !{!"", !44, i64 0, !8, i64 1028, !7, i64 18436, !8, i64 18440}
!44 = !{!"", !30, i64 0, !30, i64 2, !8, i64 4, !8, i64 260, !8, i64 516}
!45 = !{!"", !7, i64 0, !8, i64 4, !46, i64 8, !46, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !46, i64 56, !7, i64 64}
!46 = !{!"long long", !8, i64 0}
!47 = !{!"", !34, i64 0, !8, i64 8, !8, i64 392, !8, i64 416, !8, i64 440, !8, i64 464, !8, i64 488, !8, i64 872, !8, i64 1384, !8, i64 1612, !43, i64 1644, !43, i64 20148, !8, i64 38652, !7, i64 38668}
!48 = !{!47, !7, i64 38668}
!49 = distinct !{!49, !26}
!50 = !{!47, !34, i64 0}
!51 = !{!32, !34, i64 213576}
!52 = !{!32, !7, i64 252228}
!53 = distinct !{!53, !26}
!54 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22, i64 16, i64 4, !22, i64 20, i64 4, !22, i64 24, i64 4, !22, i64 28, i64 4, !22, i64 32, i64 4, !22, i64 36, i64 4, !22}
!55 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22, i64 16, i64 4, !22, i64 20, i64 4, !22, i64 24, i64 4, !22, i64 28, i64 4, !22, i64 32, i64 4, !22}
!56 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22, i64 16, i64 4, !22, i64 20, i64 4, !22, i64 24, i64 4, !22, i64 28, i64 4, !22}
!57 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22, i64 16, i64 4, !22, i64 20, i64 4, !22, i64 24, i64 4, !22}
!58 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22, i64 16, i64 4, !22, i64 20, i64 4, !22}
!59 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22, i64 16, i64 4, !22}
!60 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22}
!61 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22}
!62 = !{i64 0, i64 4, !22, i64 4, i64 4, !22}
!63 = !{i64 0, i64 4, !22}
!64 = !{!32, !7, i64 252344}
!65 = !{!32, !7, i64 252348}
!66 = !{!32, !7, i64 210384}
!67 = !{!32, !7, i64 213556}
!68 = !{!32, !7, i64 213560}
!69 = !{!32, !7, i64 213564}
!70 = !{!32, !7, i64 252232}
!71 = !{!32, !7, i64 1672}
!72 = !{!32, !7, i64 1656}
!73 = !{!32, !7, i64 1620}
!74 = !{!32, !7, i64 252312}
!75 = !{!32, !7, i64 252336}
!76 = distinct !{!76, !26}
!77 = distinct !{!77, !26}
!78 = !{!32, !34, i64 1552}
!79 = !{!32, !34, i64 252360}
!80 = !{!81, !34, i64 0}
!81 = !{!"", !34, i64 0, !34, i64 8}
!82 = !{!81, !34, i64 8}
!83 = !{!45, !34, i64 40}
!84 = !{!45, !46, i64 8}
!85 = !{!45, !7, i64 0}
!86 = !{!45, !46, i64 16}
!87 = !{!45, !8, i64 4}
!88 = !{!45, !34, i64 24}
!89 = !{!45, !46, i64 56}
!90 = !{!45, !7, i64 64}
!91 = distinct !{!91, !26}
!92 = distinct !{!92, !26, !93, !94}
!93 = !{!"llvm.loop.isvectorized", i32 1}
!94 = !{!"llvm.loop.unroll.runtime.disable"}
!95 = !{!44, !30, i64 2}
!96 = !{!44, !30, i64 0}
!97 = !{!32, !7, i64 2856}
!98 = !{!32, !7, i64 2860}
!99 = !{!32, !7, i64 210388}
!100 = !{!32, !7, i64 213572}
!101 = !{!32, !7, i64 213568}
!102 = distinct !{!102, !26, !94, !93}
!103 = distinct !{!103, !26}
!104 = !{!32, !7, i64 213548}
!105 = !{!32, !7, i64 252160}
!106 = !{!32, !7, i64 233656}
!107 = distinct !{!107, !26}
!108 = distinct !{!108, !26}
!109 = distinct !{!109, !26}
!110 = !{!32, !7, i64 213552}
!111 = distinct !{!111, !26}
!112 = distinct !{!112, !26}
!113 = distinct !{!113, !26}
!114 = distinct !{!114, !26}
!115 = distinct !{!115, !26}
!116 = !{!32, !7, i64 252328}
!117 = !{!32, !34, i64 1632}
!118 = !{!32, !7, i64 252352}
!119 = !{!32, !7, i64 252332}
!120 = !{!32, !7, i64 252340}
!121 = !{!45, !34, i64 32}
!122 = !{!32, !7, i64 56}
!123 = !{!32, !7, i64 1676}
!124 = !{!32, !34, i64 48}
!125 = !{!32, !46, i64 252320}
!126 = !{!32, !7, i64 1660}
!127 = !{!32, !34, i64 1624}
!128 = !{!32, !38, i64 1664}
!129 = !{!32, !34, i64 16}
!130 = !{!32, !34, i64 24}
!131 = !{!132, !34, i64 0}
!132 = !{!"", !133, i64 0, !34, i64 8, !38, i64 16, !7, i64 24}
!133 = !{!"", !34, i64 0}
!134 = !{!132, !34, i64 8}
!135 = !{!38, !38, i64 0}
!136 = !{!132, !38, i64 16}
!137 = !{!132, !7, i64 24}
!138 = !{!32, !34, i64 252288}
!139 = !{!32, !34, i64 0}
!140 = !{!32, !7, i64 252304}
!141 = !{!32, !7, i64 1696}
!142 = !{!32, !7, i64 2872}
!143 = !{!32, !34, i64 32}
!144 = !{!32, !34, i64 8}
!145 = distinct !{!145, !26}
!146 = distinct !{!146, !26}
!147 = !{!32, !7, i64 2864}
!148 = !{!32, !7, i64 2868}
!149 = distinct !{!149, !26}
!150 = distinct !{!150, !26}
!151 = distinct !{!151, !26}
!152 = !{!32, !34, i64 40}
!153 = !{!154, !7, i64 24}
!154 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !8, i64 32}
!155 = !{!154, !7, i64 28}
!156 = distinct !{!156, !26}
!157 = !{!154, !7, i64 4}
!158 = distinct !{!158, !26}
!159 = !{!154, !7, i64 0}
!160 = !{!154, !7, i64 8}
!161 = distinct !{!161, !26}
!162 = distinct !{!162, !26}
!163 = distinct !{!163, !26}
!164 = distinct !{!164, !26}
!165 = !{!154, !7, i64 12}
!166 = distinct !{!166, !26}
!167 = !{!154, !7, i64 16}
!168 = !{!154, !7, i64 20}
!169 = distinct !{!169, !26}
!170 = distinct !{!170, !26}
!171 = distinct !{!171, !172}
!172 = !{!"llvm.loop.unroll.disable"}
!173 = distinct !{!173, !26}
!174 = distinct !{!174, !26}
!175 = distinct !{!175, !172}
!176 = distinct !{!176, !26}
!177 = distinct !{!177, !26}
!178 = distinct !{!178, !26}
!179 = distinct !{!179, !172}
!180 = distinct !{!180, !26}
!181 = distinct !{!181, !26}
!182 = distinct !{!182, !26}
!183 = distinct !{!183, !172}
!184 = distinct !{!184, !26}
!185 = distinct !{!185, !26}
!186 = distinct !{!186, !26}
!187 = distinct !{!187, !172}
!188 = distinct !{!188, !26}
!189 = distinct !{!189, !26}
!190 = distinct !{!190, !26}
!191 = distinct !{!191, !26}
!192 = distinct !{!192, !26}
!193 = !{!32, !46, i64 252296}
!194 = !{!32, !34, i64 252264}
!195 = !{!32, !34, i64 252280}
!196 = !{!32, !46, i64 252256}
!197 = !{!133, !34, i64 0}
!198 = !{!43, !7, i64 18436}
!199 = distinct !{!199, !26}
!200 = distinct !{!200, !26}
!201 = distinct !{!201, !26}
!202 = !{!45, !34, i64 48}
!203 = distinct !{!203, !26, !204}
!204 = !{!"llvm.loop.peeled.count", i32 1}
