; ModuleID = './lzma/C/7zCrc.c'
source_filename = "./lzma/C/7zCrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_CrcTable = dso_local local_unnamed_addr global [256 x i32] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @CrcGenerateTable() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %40, %1 ]
  %3 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %0 ], [ %41, %1 ]
  %4 = lshr <4 x i32> %3, <i32 1, i32 1, i32 1, i32 1>
  %5 = and <4 x i32> %3, <i32 1, i32 1, i32 1, i32 1>
  %6 = icmp eq <4 x i32> %5, zeroinitializer
  %7 = select <4 x i1> %6, <4 x i32> zeroinitializer, <4 x i32> <i32 -306674912, i32 -306674912, i32 -306674912, i32 -306674912>
  %8 = xor <4 x i32> %7, %4
  %9 = lshr <4 x i32> %8, <i32 1, i32 1, i32 1, i32 1>
  %10 = and <4 x i32> %3, <i32 2, i32 2, i32 2, i32 2>
  %11 = icmp eq <4 x i32> %10, zeroinitializer
  %12 = select <4 x i1> %11, <4 x i32> zeroinitializer, <4 x i32> <i32 -306674912, i32 -306674912, i32 -306674912, i32 -306674912>
  %13 = xor <4 x i32> %12, %9
  %14 = lshr <4 x i32> %13, <i32 6, i32 6, i32 6, i32 6>
  %15 = and <4 x i32> %3, <i32 4, i32 4, i32 4, i32 4>
  %16 = icmp eq <4 x i32> %15, zeroinitializer
  %17 = select <4 x i1> %16, <4 x i32> zeroinitializer, <4 x i32> <i32 124634137, i32 124634137, i32 124634137, i32 124634137>
  %18 = xor <4 x i32> %17, %14
  %19 = and <4 x i32> %3, <i32 8, i32 8, i32 8, i32 8>
  %20 = icmp eq <4 x i32> %19, zeroinitializer
  %21 = select <4 x i1> %20, <4 x i32> zeroinitializer, <4 x i32> <i32 249268274, i32 249268274, i32 249268274, i32 249268274>
  %22 = xor <4 x i32> %21, %18
  %23 = and <4 x i32> %3, <i32 16, i32 16, i32 16, i32 16>
  %24 = icmp eq <4 x i32> %23, zeroinitializer
  %25 = select <4 x i1> %24, <4 x i32> zeroinitializer, <4 x i32> <i32 498536548, i32 498536548, i32 498536548, i32 498536548>
  %26 = xor <4 x i32> %25, %22
  %27 = and <4 x i32> %3, <i32 32, i32 32, i32 32, i32 32>
  %28 = icmp eq <4 x i32> %27, zeroinitializer
  %29 = select <4 x i1> %28, <4 x i32> zeroinitializer, <4 x i32> <i32 997073096, i32 997073096, i32 997073096, i32 997073096>
  %30 = xor <4 x i32> %29, %26
  %31 = and <4 x i32> %8, <i32 32, i32 32, i32 32, i32 32>
  %32 = icmp eq <4 x i32> %31, zeroinitializer
  %33 = select <4 x i1> %32, <4 x i32> zeroinitializer, <4 x i32> <i32 1994146192, i32 1994146192, i32 1994146192, i32 1994146192>
  %34 = xor <4 x i32> %33, %30
  %35 = and <4 x i32> %13, <i32 32, i32 32, i32 32, i32 32>
  %36 = icmp eq <4 x i32> %35, zeroinitializer
  %37 = select <4 x i1> %36, <4 x i32> zeroinitializer, <4 x i32> <i32 -306674912, i32 -306674912, i32 -306674912, i32 -306674912>
  %38 = xor <4 x i32> %37, %34
  %39 = getelementptr inbounds [256 x i32], ptr @g_CrcTable, i64 0, i64 %2
  store <4 x i32> %38, ptr %39, align 16, !tbaa !5
  %40 = add nuw i64 %2, 4
  %41 = add <4 x i32> %3, <i32 4, i32 4, i32 4, i32 4>
  %42 = icmp eq i64 %40, 256
  br i1 %42, label %43, label %1, !llvm.loop !9

43:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CrcUpdate(i32 noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %49, label %5

5:                                                ; preds = %3
  %6 = and i64 %2, 1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %5
  %9 = load i8, ptr %1, align 1, !tbaa !13
  %10 = trunc i32 %0 to i8
  %11 = xor i8 %9, %10
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [256 x i32], ptr @g_CrcTable, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !5
  %15 = lshr i32 %0, 8
  %16 = xor i32 %14, %15
  %17 = add i64 %2, -1
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  br label %19

19:                                               ; preds = %8, %5
  %20 = phi i32 [ undef, %5 ], [ %16, %8 ]
  %21 = phi ptr [ %1, %5 ], [ %18, %8 ]
  %22 = phi i64 [ %2, %5 ], [ %17, %8 ]
  %23 = phi i32 [ %0, %5 ], [ %16, %8 ]
  %24 = icmp eq i64 %2, 1
  br i1 %24, label %49, label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %47, %25 ], [ %21, %19 ]
  %27 = phi i64 [ %46, %25 ], [ %22, %19 ]
  %28 = phi i32 [ %45, %25 ], [ %23, %19 ]
  %29 = load i8, ptr %26, align 1, !tbaa !13
  %30 = trunc i32 %28 to i8
  %31 = xor i8 %29, %30
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [256 x i32], ptr @g_CrcTable, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !5
  %35 = lshr i32 %28, 8
  %36 = xor i32 %34, %35
  %37 = getelementptr inbounds i8, ptr %26, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !13
  %39 = trunc i32 %36 to i8
  %40 = xor i8 %38, %39
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [256 x i32], ptr @g_CrcTable, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !5
  %44 = lshr i32 %36, 8
  %45 = xor i32 %43, %44
  %46 = add i64 %27, -2
  %47 = getelementptr inbounds i8, ptr %26, i64 2
  %48 = icmp eq i64 %46, 0
  br i1 %48, label %49, label %25, !llvm.loop !14

49:                                               ; preds = %19, %25, %3
  %50 = phi i32 [ %0, %3 ], [ %20, %19 ], [ %45, %25 ]
  ret i32 %50
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CrcCalc(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %50, label %4

4:                                                ; preds = %2
  %5 = and i64 %1, 1
  %6 = icmp eq i64 %1, 1
  br i1 %6, label %33, label %7

7:                                                ; preds = %4
  %8 = and i64 %1, -2
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %0, %7 ], [ %30, %9 ]
  %11 = phi i32 [ -1, %7 ], [ %29, %9 ]
  %12 = phi i64 [ 0, %7 ], [ %31, %9 ]
  %13 = load i8, ptr %10, align 1, !tbaa !13
  %14 = trunc i32 %11 to i8
  %15 = xor i8 %13, %14
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [256 x i32], ptr @g_CrcTable, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !5
  %19 = lshr i32 %11, 8
  %20 = xor i32 %18, %19
  %21 = getelementptr inbounds i8, ptr %10, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !13
  %23 = trunc i32 %20 to i8
  %24 = xor i8 %22, %23
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds [256 x i32], ptr @g_CrcTable, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !5
  %28 = lshr i32 %20, 8
  %29 = xor i32 %27, %28
  %30 = getelementptr inbounds i8, ptr %10, i64 2
  %31 = add i64 %12, 2
  %32 = icmp eq i64 %31, %8
  br i1 %32, label %33, label %9, !llvm.loop !14

33:                                               ; preds = %9, %4
  %34 = phi i32 [ undef, %4 ], [ %29, %9 ]
  %35 = phi ptr [ %0, %4 ], [ %30, %9 ]
  %36 = phi i32 [ -1, %4 ], [ %29, %9 ]
  %37 = icmp eq i64 %5, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = load i8, ptr %35, align 1, !tbaa !13
  %40 = trunc i32 %36 to i8
  %41 = xor i8 %39, %40
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds [256 x i32], ptr @g_CrcTable, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !5
  %45 = lshr i32 %36, 8
  %46 = xor i32 %44, %45
  br label %47

47:                                               ; preds = %33, %38
  %48 = phi i32 [ %34, %33 ], [ %46, %38 ]
  %49 = xor i32 %48, -1
  br label %50

50:                                               ; preds = %47, %2
  %51 = phi i32 [ 0, %2 ], [ %49, %47 ]
  ret i32 %51
}

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 16.0.0"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !10}
