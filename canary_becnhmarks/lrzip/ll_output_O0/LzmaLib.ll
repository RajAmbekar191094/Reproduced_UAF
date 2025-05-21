; ModuleID = './lzma/C/LzmaLib.c'
source_filename = "./lzma/C/LzmaLib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISzAlloc = type { ptr, ptr }
%struct._CLzmaEncProps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@g_Alloc = internal global %struct.ISzAlloc { ptr @SzAlloc, ptr @SzFree }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaCompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) #0 {
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct._CLzmaEncProps, align 4
  store ptr %0, ptr %14, align 8
  store ptr %1, ptr %15, align 8
  store ptr %2, ptr %16, align 8
  store i64 %3, ptr %17, align 8
  store ptr %4, ptr %18, align 8
  store ptr %5, ptr %19, align 8
  store i32 %6, ptr %20, align 4
  store i32 %7, ptr %21, align 4
  store i32 %8, ptr %22, align 4
  store i32 %9, ptr %23, align 4
  store i32 %10, ptr %24, align 4
  store i32 %11, ptr %25, align 4
  store i32 %12, ptr %26, align 4
  call void @LzmaEncProps_Init(ptr noundef %27)
  %28 = load i32, ptr %20, align 4
  %29 = getelementptr inbounds %struct._CLzmaEncProps, ptr %27, i32 0, i32 0
  store i32 %28, ptr %29, align 4
  %30 = load i32, ptr %21, align 4
  %31 = getelementptr inbounds %struct._CLzmaEncProps, ptr %27, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = load i32, ptr %22, align 4
  %33 = getelementptr inbounds %struct._CLzmaEncProps, ptr %27, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr %23, align 4
  %35 = getelementptr inbounds %struct._CLzmaEncProps, ptr %27, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %24, align 4
  %37 = getelementptr inbounds %struct._CLzmaEncProps, ptr %27, i32 0, i32 4
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %25, align 4
  %39 = getelementptr inbounds %struct._CLzmaEncProps, ptr %27, i32 0, i32 6
  store i32 %38, ptr %39, align 4
  %40 = load i32, ptr %26, align 4
  %41 = getelementptr inbounds %struct._CLzmaEncProps, ptr %27, i32 0, i32 11
  store i32 %40, ptr %41, align 4
  %42 = load ptr, ptr %14, align 8
  %43 = load ptr, ptr %15, align 8
  %44 = load ptr, ptr %16, align 8
  %45 = load i64, ptr %17, align 8
  %46 = load ptr, ptr %18, align 8
  %47 = load ptr, ptr %19, align 8
  %48 = call i32 @LzmaEncode(ptr noundef %42, ptr noundef %43, ptr noundef %44, i64 noundef %45, ptr noundef %27, ptr noundef %46, ptr noundef %47, i32 noundef 0, ptr noundef null, ptr noundef @g_Alloc, ptr noundef @g_Alloc)
  ret i32 %48
}

declare void @LzmaEncProps_Init(ptr noundef) #1

declare i32 @LzmaEncode(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaUncompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store i64 %5, ptr %12, align 8
  %14 = load ptr, ptr %7, align 8
  %15 = load ptr, ptr %8, align 8
  %16 = load ptr, ptr %9, align 8
  %17 = load ptr, ptr %10, align 8
  %18 = load ptr, ptr %11, align 8
  %19 = load i64, ptr %12, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @LzmaDecode(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef %20, i32 noundef 0, ptr noundef %13, ptr noundef @g_Alloc)
  ret i32 %21
}

declare i32 @LzmaDecode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @SzAlloc(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = call ptr @MyAlloc(i64 noundef %5)
  ret ptr %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SzFree(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  call void @MyFree(ptr noundef %5)
  ret void
}

declare ptr @MyAlloc(i64 noundef) #1

declare void @MyFree(ptr noundef) #1

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
