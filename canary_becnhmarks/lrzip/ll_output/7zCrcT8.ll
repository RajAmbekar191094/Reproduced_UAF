; ModuleID = './lzma/C/7zCrcT8.c'
source_filename = "./lzma/C/7zCrcT8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_CrcTable = dso_local global [2048 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CrcGenerateTable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %5

5:                                                ; preds = %30, %0
  %6 = load i32, ptr %1, align 4
  %7 = icmp ult i32 %6, 256
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  %9 = load i32, ptr %1, align 4
  store i32 %9, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %10

10:                                               ; preds = %22, %8
  %11 = load i32, ptr %3, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 4
  %15 = lshr i32 %14, 1
  %16 = load i32, ptr %2, align 4
  %17 = and i32 %16, 1
  %18 = sub i32 %17, 1
  %19 = xor i32 %18, -1
  %20 = and i32 -306674912, %19
  %21 = xor i32 %15, %20
  store i32 %21, ptr %2, align 4
  br label %22

22:                                               ; preds = %13
  %23 = load i32, ptr %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %3, align 4
  br label %10, !llvm.loop !6

25:                                               ; preds = %10
  %26 = load i32, ptr %2, align 4
  %27 = load i32, ptr %1, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [2048 x i32], ptr @g_CrcTable, i64 0, i64 %28
  store i32 %26, ptr %29, align 4
  br label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %1, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %1, align 4
  br label %5, !llvm.loop !8

33:                                               ; preds = %5
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, ptr %1, align 4
  %36 = icmp ult i32 %35, 2048
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load i32, ptr %1, align 4
  %39 = sub i32 %38, 256
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [2048 x i32], ptr @g_CrcTable, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %4, align 4
  %43 = load i32, ptr %4, align 4
  %44 = and i32 %43, 255
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [2048 x i32], ptr @g_CrcTable, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %4, align 4
  %49 = lshr i32 %48, 8
  %50 = xor i32 %47, %49
  %51 = load i32, ptr %1, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [2048 x i32], ptr @g_CrcTable, i64 0, i64 %52
  store i32 %50, ptr %53, align 4
  br label %54

54:                                               ; preds = %37
  %55 = load i32, ptr %1, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %1, align 4
  br label %34, !llvm.loop !9

57:                                               ; preds = %34
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CrcUpdate(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load i32, ptr %4, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = call i32 @CrcUpdateT8(i32 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef @g_CrcTable)
  ret i32 %10
}

declare i32 @CrcUpdateT8(i32 noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CrcCalc(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call i32 @CrcUpdateT8(i32 noundef -1, ptr noundef %5, i64 noundef %6, ptr noundef @g_CrcTable)
  %8 = xor i32 %7, -1
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
