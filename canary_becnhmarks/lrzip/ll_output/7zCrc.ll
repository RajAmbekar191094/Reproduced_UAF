; ModuleID = './lzma/C/7zCrc.c'
source_filename = "./lzma/C/7zCrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_CrcTable = dso_local global [256 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CrcGenerateTable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %4

4:                                                ; preds = %29, %0
  %5 = load i32, ptr %1, align 4
  %6 = icmp ult i32 %5, 256
  br i1 %6, label %7, label %32

7:                                                ; preds = %4
  %8 = load i32, ptr %1, align 4
  store i32 %8, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %9

9:                                                ; preds = %21, %7
  %10 = load i32, ptr %3, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i32, ptr %2, align 4
  %14 = lshr i32 %13, 1
  %15 = load i32, ptr %2, align 4
  %16 = and i32 %15, 1
  %17 = sub i32 %16, 1
  %18 = xor i32 %17, -1
  %19 = and i32 -306674912, %18
  %20 = xor i32 %14, %19
  store i32 %20, ptr %2, align 4
  br label %21

21:                                               ; preds = %12
  %22 = load i32, ptr %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %3, align 4
  br label %9, !llvm.loop !6

24:                                               ; preds = %9
  %25 = load i32, ptr %2, align 4
  %26 = load i32, ptr %1, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [256 x i32], ptr @g_CrcTable, i64 0, i64 %27
  store i32 %25, ptr %28, align 4
  br label %29

29:                                               ; preds = %24
  %30 = load i32, ptr %1, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %1, align 4
  br label %4, !llvm.loop !8

32:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CrcUpdate(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  store ptr %8, ptr %7, align 8
  br label %9

9:                                                ; preds = %25, %3
  %10 = load i64, ptr %6, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = load ptr, ptr %7, align 8
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = xor i32 %13, %16
  %18 = and i32 %17, 255
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [256 x i32], ptr @g_CrcTable, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %4, align 4
  %23 = lshr i32 %22, 8
  %24 = xor i32 %21, %23
  store i32 %24, ptr %4, align 4
  br label %25

25:                                               ; preds = %12
  %26 = load i64, ptr %6, align 8
  %27 = add i64 %26, -1
  store i64 %27, ptr %6, align 8
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %29, ptr %7, align 8
  br label %9, !llvm.loop !9

30:                                               ; preds = %9
  %31 = load i32, ptr %4, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CrcCalc(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call i32 @CrcUpdate(i32 noundef -1, ptr noundef %5, i64 noundef %6)
  %8 = xor i32 %7, -1
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
