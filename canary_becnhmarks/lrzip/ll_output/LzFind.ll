; ModuleID = './lzma/C/LzFind.c'
source_filename = "./lzma/C/LzFind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CMatchFinder = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [256 x i32] }
%struct.ISeqInStream = type { ptr }
%struct.ISzAlloc = type { ptr, ptr }
%struct._IMatchFinder = type { ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @MatchFinder_GetPointerToCurrentPos(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMatchFinder, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @MatchFinder_GetIndexByte(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct._CMatchFinder, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %7, i64 %9
  %11 = load i8, ptr %10, align 1
  ret i8 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MatchFinder_GetNumAvailableBytes(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMatchFinder, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct._CMatchFinder, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = sub i32 %5, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinder_ReduceOffsets(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct._CMatchFinder, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %8, %5
  store i32 %9, ptr %7, align 4
  %10 = load i32, ptr %4, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct._CMatchFinder, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = sub i32 %13, %10
  store i32 %14, ptr %12, align 8
  %15 = load i32, ptr %4, align 4
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct._CMatchFinder, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = sub i32 %18, %15
  store i32 %19, ptr %17, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinder_MoveBlock(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMatchFinder, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct._CMatchFinder, ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct._CMatchFinder, ptr %9, i32 0, i32 16
  %11 = load i32, ptr %10, align 8
  %12 = zext i32 %11 to i64
  %13 = sub i64 0, %12
  %14 = getelementptr inbounds i8, ptr %8, i64 %13
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct._CMatchFinder, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct._CMatchFinder, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = sub i32 %17, %20
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct._CMatchFinder, ptr %22, i32 0, i32 16
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %21, %24
  %26 = zext i32 %25 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %5, ptr align 1 %14, i64 %26, i1 false)
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct._CMatchFinder, ptr %27, i32 0, i32 12
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct._CMatchFinder, ptr %30, i32 0, i32 16
  %32 = load i32, ptr %31, align 8
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %29, i64 %33
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct._CMatchFinder, ptr %35, i32 0, i32 0
  store ptr %34, ptr %36, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MatchFinder_NeedMove(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct._CMatchFinder, ptr %4, i32 0, i32 19
  %6 = load i32, ptr %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %30

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct._CMatchFinder, ptr %10, i32 0, i32 12
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct._CMatchFinder, ptr %13, i32 0, i32 15
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %12, i64 %16
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct._CMatchFinder, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %17 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct._CMatchFinder, ptr %24, i32 0, i32 17
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  %28 = icmp ule i64 %23, %27
  %29 = zext i1 %28 to i32
  store i32 %29, ptr %2, align 4
  br label %30

30:                                               ; preds = %9, %8
  %31 = load i32, ptr %2, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinder_ReadIfRequired(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMatchFinder, ptr %3, i32 0, i32 14
  %5 = load i32, ptr %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %22

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct._CMatchFinder, ptr %9, i32 0, i32 17
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct._CMatchFinder, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct._CMatchFinder, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = sub i32 %14, %17
  %19 = icmp uge i32 %11, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %8
  %21 = load ptr, ptr %2, align 8
  call void @MatchFinder_ReadBlock(ptr noundef %21)
  br label %22

22:                                               ; preds = %7, %20, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MatchFinder_ReadBlock(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct._CMatchFinder, ptr %6, i32 0, i32 14
  %8 = load i32, ptr %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct._CMatchFinder, ptr %11, i32 0, i32 27
  %13 = load i32, ptr %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  br label %130

16:                                               ; preds = %10
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct._CMatchFinder, ptr %17, i32 0, i32 19
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %16
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct._CMatchFinder, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 8
  %25 = sub i32 -1, %24
  store i32 %25, ptr %3, align 4
  %26 = load i32, ptr %3, align 4
  %27 = zext i32 %26 to i64
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct._CMatchFinder, ptr %28, i32 0, i32 20
  %30 = load i64, ptr %29, align 8
  %31 = icmp ugt i64 %27, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct._CMatchFinder, ptr %33, i32 0, i32 20
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, ptr %3, align 4
  br label %37

37:                                               ; preds = %32, %21
  %38 = load i32, ptr %3, align 4
  %39 = zext i32 %38 to i64
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct._CMatchFinder, ptr %40, i32 0, i32 20
  %42 = load i64, ptr %41, align 8
  %43 = sub i64 %42, %39
  store i64 %43, ptr %41, align 8
  %44 = load i32, ptr %3, align 4
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds %struct._CMatchFinder, ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %47, %44
  store i32 %48, ptr %46, align 8
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct._CMatchFinder, ptr %49, i32 0, i32 20
  %51 = load i64, ptr %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr inbounds %struct._CMatchFinder, ptr %54, i32 0, i32 14
  store i32 1, ptr %55, align 8
  br label %56

56:                                               ; preds = %53, %37
  br label %130

57:                                               ; preds = %16
  br label %58

58:                                               ; preds = %129, %57
  %59 = load ptr, ptr %2, align 8
  %60 = getelementptr inbounds %struct._CMatchFinder, ptr %59, i32 0, i32 0
  %61 = load ptr, ptr %60, align 8
  %62 = load ptr, ptr %2, align 8
  %63 = getelementptr inbounds %struct._CMatchFinder, ptr %62, i32 0, i32 3
  %64 = load i32, ptr %63, align 8
  %65 = load ptr, ptr %2, align 8
  %66 = getelementptr inbounds %struct._CMatchFinder, ptr %65, i32 0, i32 1
  %67 = load i32, ptr %66, align 8
  %68 = sub i32 %64, %67
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %61, i64 %69
  store ptr %70, ptr %4, align 8
  %71 = load ptr, ptr %2, align 8
  %72 = getelementptr inbounds %struct._CMatchFinder, ptr %71, i32 0, i32 12
  %73 = load ptr, ptr %72, align 8
  %74 = load ptr, ptr %2, align 8
  %75 = getelementptr inbounds %struct._CMatchFinder, ptr %74, i32 0, i32 15
  %76 = load i32, ptr %75, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %73, i64 %77
  %79 = load ptr, ptr %4, align 8
  %80 = ptrtoint ptr %78 to i64
  %81 = ptrtoint ptr %79 to i64
  %82 = sub i64 %80, %81
  store i64 %82, ptr %5, align 8
  %83 = load i64, ptr %5, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %58
  br label %130

86:                                               ; preds = %58
  %87 = load ptr, ptr %2, align 8
  %88 = getelementptr inbounds %struct._CMatchFinder, ptr %87, i32 0, i32 13
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.ISeqInStream, ptr %89, i32 0, i32 0
  %91 = load ptr, ptr %90, align 8
  %92 = load ptr, ptr %2, align 8
  %93 = getelementptr inbounds %struct._CMatchFinder, ptr %92, i32 0, i32 13
  %94 = load ptr, ptr %93, align 8
  %95 = load ptr, ptr %4, align 8
  %96 = call i32 %91(ptr noundef %94, ptr noundef %95, ptr noundef %5)
  %97 = load ptr, ptr %2, align 8
  %98 = getelementptr inbounds %struct._CMatchFinder, ptr %97, i32 0, i32 27
  store i32 %96, ptr %98, align 8
  %99 = load ptr, ptr %2, align 8
  %100 = getelementptr inbounds %struct._CMatchFinder, ptr %99, i32 0, i32 27
  %101 = load i32, ptr %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %86
  br label %130

104:                                              ; preds = %86
  %105 = load i64, ptr %5, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load ptr, ptr %2, align 8
  %109 = getelementptr inbounds %struct._CMatchFinder, ptr %108, i32 0, i32 14
  store i32 1, ptr %109, align 8
  br label %130

110:                                              ; preds = %104
  %111 = load i64, ptr %5, align 8
  %112 = trunc i64 %111 to i32
  %113 = load ptr, ptr %2, align 8
  %114 = getelementptr inbounds %struct._CMatchFinder, ptr %113, i32 0, i32 3
  %115 = load i32, ptr %114, align 8
  %116 = add i32 %115, %112
  store i32 %116, ptr %114, align 8
  %117 = load ptr, ptr %2, align 8
  %118 = getelementptr inbounds %struct._CMatchFinder, ptr %117, i32 0, i32 3
  %119 = load i32, ptr %118, align 8
  %120 = load ptr, ptr %2, align 8
  %121 = getelementptr inbounds %struct._CMatchFinder, ptr %120, i32 0, i32 1
  %122 = load i32, ptr %121, align 8
  %123 = sub i32 %119, %122
  %124 = load ptr, ptr %2, align 8
  %125 = getelementptr inbounds %struct._CMatchFinder, ptr %124, i32 0, i32 17
  %126 = load i32, ptr %125, align 4
  %127 = icmp ugt i32 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %110
  br label %130

129:                                              ; preds = %110
  br label %58

130:                                              ; preds = %128, %107, %103, %85, %56, %15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinder_Construct(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct._CMatchFinder, ptr %6, i32 0, i32 12
  store ptr null, ptr %7, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct._CMatchFinder, ptr %8, i32 0, i32 19
  store i32 0, ptr %9, align 4
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct._CMatchFinder, ptr %10, i32 0, i32 8
  store ptr null, ptr %11, align 8
  %12 = load ptr, ptr %2, align 8
  call void @MatchFinder_SetDefaultSettings(ptr noundef %12)
  store i32 0, ptr %3, align 4
  br label %13

13:                                               ; preds = %40, %1
  %14 = load i32, ptr %3, align 4
  %15 = icmp ult i32 %14, 256
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load i32, ptr %3, align 4
  store i32 %17, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %18

18:                                               ; preds = %30, %16
  %19 = load i32, ptr %5, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i32, ptr %4, align 4
  %23 = lshr i32 %22, 1
  %24 = load i32, ptr %4, align 4
  %25 = and i32 %24, 1
  %26 = sub i32 %25, 1
  %27 = xor i32 %26, -1
  %28 = and i32 -306674912, %27
  %29 = xor i32 %23, %28
  store i32 %29, ptr %4, align 4
  br label %30

30:                                               ; preds = %21
  %31 = load i32, ptr %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %5, align 4
  br label %18, !llvm.loop !6

33:                                               ; preds = %18
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct._CMatchFinder, ptr %35, i32 0, i32 28
  %37 = load i32, ptr %3, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [256 x i32], ptr %36, i64 0, i64 %38
  store i32 %34, ptr %39, align 4
  br label %40

40:                                               ; preds = %33
  %41 = load i32, ptr %3, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %3, align 4
  br label %13, !llvm.loop !8

43:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MatchFinder_SetDefaultSettings(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMatchFinder, ptr %3, i32 0, i32 11
  store i32 32, ptr %4, align 4
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct._CMatchFinder, ptr %5, i32 0, i32 21
  store i32 1, ptr %6, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct._CMatchFinder, ptr %7, i32 0, i32 18
  store i32 4, ptr %8, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct._CMatchFinder, ptr %9, i32 0, i32 22
  store i32 0, ptr %10, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinder_Free(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  call void @MatchFinder_FreeThisClassMemory(ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %4, align 8
  call void @LzInWindow_Free(ptr noundef %7, ptr noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MatchFinder_FreeThisClassMemory(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ISzAlloc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct._CMatchFinder, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  call void %7(ptr noundef %8, ptr noundef %11)
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct._CMatchFinder, ptr %12, i32 0, i32 8
  store ptr null, ptr %13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LzInWindow_Free(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct._CMatchFinder, ptr %5, i32 0, i32 19
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.ISzAlloc, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct._CMatchFinder, ptr %14, i32 0, i32 12
  %16 = load ptr, ptr %15, align 8
  call void %12(ptr noundef %13, ptr noundef %16)
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct._CMatchFinder, ptr %17, i32 0, i32 12
  store ptr null, ptr %18, align 8
  br label %19

19:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MatchFinder_Create(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store i32 %2, ptr %10, align 4
  store i32 %3, ptr %11, align 4
  store i32 %4, ptr %12, align 4
  store ptr %5, ptr %13, align 8
  %19 = load i32, ptr %9, align 4
  %20 = icmp ugt i32 %19, -1073741824
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load ptr, ptr %8, align 8
  %23 = load ptr, ptr %13, align 8
  call void @MatchFinder_Free(ptr noundef %22, ptr noundef %23)
  store i32 0, ptr %7, align 4
  br label %220

24:                                               ; preds = %6
  %25 = load i32, ptr %9, align 4
  %26 = lshr i32 %25, 1
  store i32 %26, ptr %14, align 4
  %27 = load i32, ptr %9, align 4
  %28 = icmp ugt i32 %27, -2147483648
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, ptr %9, align 4
  %31 = lshr i32 %30, 2
  store i32 %31, ptr %14, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, ptr %10, align 4
  %34 = load i32, ptr %11, align 4
  %35 = add i32 %33, %34
  %36 = load i32, ptr %12, align 4
  %37 = add i32 %35, %36
  %38 = udiv i32 %37, 2
  %39 = add i32 %38, 524288
  %40 = load i32, ptr %14, align 4
  %41 = add i32 %40, %39
  store i32 %41, ptr %14, align 4
  %42 = load i32, ptr %9, align 4
  %43 = load i32, ptr %10, align 4
  %44 = add i32 %42, %43
  %45 = add i32 %44, 1
  %46 = load ptr, ptr %8, align 8
  %47 = getelementptr inbounds %struct._CMatchFinder, ptr %46, i32 0, i32 16
  store i32 %45, ptr %47, align 8
  %48 = load i32, ptr %11, align 4
  %49 = load i32, ptr %12, align 4
  %50 = add i32 %48, %49
  %51 = load ptr, ptr %8, align 8
  %52 = getelementptr inbounds %struct._CMatchFinder, ptr %51, i32 0, i32 17
  store i32 %50, ptr %52, align 4
  %53 = load ptr, ptr %8, align 8
  %54 = load i32, ptr %14, align 4
  %55 = load ptr, ptr %13, align 8
  %56 = call i32 @LzInWindow_Create(ptr noundef %53, i32 noundef %54, ptr noundef %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %217

58:                                               ; preds = %32
  %59 = load i32, ptr %9, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %15, align 4
  %61 = load i32, ptr %11, align 4
  %62 = load ptr, ptr %8, align 8
  %63 = getelementptr inbounds %struct._CMatchFinder, ptr %62, i32 0, i32 7
  store i32 %61, ptr %63, align 8
  %64 = load ptr, ptr %8, align 8
  %65 = getelementptr inbounds %struct._CMatchFinder, ptr %64, i32 0, i32 24
  store i32 0, ptr %65, align 4
  %66 = load ptr, ptr %8, align 8
  %67 = getelementptr inbounds %struct._CMatchFinder, ptr %66, i32 0, i32 18
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  store i32 65535, ptr %16, align 4
  br label %107

71:                                               ; preds = %58
  %72 = load i32, ptr %9, align 4
  %73 = sub i32 %72, 1
  store i32 %73, ptr %16, align 4
  %74 = load i32, ptr %16, align 4
  %75 = lshr i32 %74, 1
  %76 = load i32, ptr %16, align 4
  %77 = or i32 %76, %75
  store i32 %77, ptr %16, align 4
  %78 = load i32, ptr %16, align 4
  %79 = lshr i32 %78, 2
  %80 = load i32, ptr %16, align 4
  %81 = or i32 %80, %79
  store i32 %81, ptr %16, align 4
  %82 = load i32, ptr %16, align 4
  %83 = lshr i32 %82, 4
  %84 = load i32, ptr %16, align 4
  %85 = or i32 %84, %83
  store i32 %85, ptr %16, align 4
  %86 = load i32, ptr %16, align 4
  %87 = lshr i32 %86, 8
  %88 = load i32, ptr %16, align 4
  %89 = or i32 %88, %87
  store i32 %89, ptr %16, align 4
  %90 = load i32, ptr %16, align 4
  %91 = lshr i32 %90, 1
  store i32 %91, ptr %16, align 4
  %92 = load i32, ptr %16, align 4
  %93 = or i32 %92, 65535
  store i32 %93, ptr %16, align 4
  %94 = load i32, ptr %16, align 4
  %95 = icmp ugt i32 %94, 16777216
  br i1 %95, label %96, label %106

96:                                               ; preds = %71
  %97 = load ptr, ptr %8, align 8
  %98 = getelementptr inbounds %struct._CMatchFinder, ptr %97, i32 0, i32 18
  %99 = load i32, ptr %98, align 8
  %100 = icmp eq i32 %99, 3
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 16777215, ptr %16, align 4
  br label %105

102:                                              ; preds = %96
  %103 = load i32, ptr %16, align 4
  %104 = lshr i32 %103, 1
  store i32 %104, ptr %16, align 4
  br label %105

105:                                              ; preds = %102, %101
  br label %106

106:                                              ; preds = %105, %71
  br label %107

107:                                              ; preds = %106, %70
  %108 = load i32, ptr %16, align 4
  %109 = load ptr, ptr %8, align 8
  %110 = getelementptr inbounds %struct._CMatchFinder, ptr %109, i32 0, i32 10
  store i32 %108, ptr %110, align 8
  %111 = load i32, ptr %16, align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr %16, align 4
  %113 = load ptr, ptr %8, align 8
  %114 = getelementptr inbounds %struct._CMatchFinder, ptr %113, i32 0, i32 18
  %115 = load i32, ptr %114, align 8
  %116 = icmp ugt i32 %115, 2
  br i1 %116, label %117, label %122

117:                                              ; preds = %107
  %118 = load ptr, ptr %8, align 8
  %119 = getelementptr inbounds %struct._CMatchFinder, ptr %118, i32 0, i32 24
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, 1024
  store i32 %121, ptr %119, align 4
  br label %122

122:                                              ; preds = %117, %107
  %123 = load ptr, ptr %8, align 8
  %124 = getelementptr inbounds %struct._CMatchFinder, ptr %123, i32 0, i32 18
  %125 = load i32, ptr %124, align 8
  %126 = icmp ugt i32 %125, 3
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load ptr, ptr %8, align 8
  %129 = getelementptr inbounds %struct._CMatchFinder, ptr %128, i32 0, i32 24
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, 65536
  store i32 %131, ptr %129, align 4
  br label %132

132:                                              ; preds = %127, %122
  %133 = load ptr, ptr %8, align 8
  %134 = getelementptr inbounds %struct._CMatchFinder, ptr %133, i32 0, i32 18
  %135 = load i32, ptr %134, align 8
  %136 = icmp ugt i32 %135, 4
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load ptr, ptr %8, align 8
  %139 = getelementptr inbounds %struct._CMatchFinder, ptr %138, i32 0, i32 24
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, 1048576
  store i32 %141, ptr %139, align 4
  br label %142

142:                                              ; preds = %137, %132
  %143 = load ptr, ptr %8, align 8
  %144 = getelementptr inbounds %struct._CMatchFinder, ptr %143, i32 0, i32 24
  %145 = load i32, ptr %144, align 4
  %146 = load i32, ptr %16, align 4
  %147 = add i32 %146, %145
  store i32 %147, ptr %16, align 4
  %148 = load ptr, ptr %8, align 8
  %149 = getelementptr inbounds %struct._CMatchFinder, ptr %148, i32 0, i32 25
  %150 = load i32, ptr %149, align 8
  %151 = load ptr, ptr %8, align 8
  %152 = getelementptr inbounds %struct._CMatchFinder, ptr %151, i32 0, i32 26
  %153 = load i32, ptr %152, align 4
  %154 = add i32 %150, %153
  store i32 %154, ptr %17, align 4
  %155 = load i32, ptr %9, align 4
  %156 = load ptr, ptr %8, align 8
  %157 = getelementptr inbounds %struct._CMatchFinder, ptr %156, i32 0, i32 23
  store i32 %155, ptr %157, align 8
  %158 = load i32, ptr %16, align 4
  %159 = load ptr, ptr %8, align 8
  %160 = getelementptr inbounds %struct._CMatchFinder, ptr %159, i32 0, i32 25
  store i32 %158, ptr %160, align 8
  %161 = load i32, ptr %15, align 4
  %162 = load ptr, ptr %8, align 8
  %163 = getelementptr inbounds %struct._CMatchFinder, ptr %162, i32 0, i32 6
  store i32 %161, ptr %163, align 4
  %164 = load ptr, ptr %8, align 8
  %165 = getelementptr inbounds %struct._CMatchFinder, ptr %164, i32 0, i32 21
  %166 = load i32, ptr %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %142
  %169 = load i32, ptr %15, align 4
  %170 = mul i32 %169, 2
  br label %173

171:                                              ; preds = %142
  %172 = load i32, ptr %15, align 4
  br label %173

173:                                              ; preds = %171, %168
  %174 = phi i32 [ %170, %168 ], [ %172, %171 ]
  %175 = load ptr, ptr %8, align 8
  %176 = getelementptr inbounds %struct._CMatchFinder, ptr %175, i32 0, i32 26
  store i32 %174, ptr %176, align 4
  %177 = load ptr, ptr %8, align 8
  %178 = getelementptr inbounds %struct._CMatchFinder, ptr %177, i32 0, i32 25
  %179 = load i32, ptr %178, align 8
  %180 = load ptr, ptr %8, align 8
  %181 = getelementptr inbounds %struct._CMatchFinder, ptr %180, i32 0, i32 26
  %182 = load i32, ptr %181, align 4
  %183 = add i32 %179, %182
  store i32 %183, ptr %18, align 4
  %184 = load ptr, ptr %8, align 8
  %185 = getelementptr inbounds %struct._CMatchFinder, ptr %184, i32 0, i32 8
  %186 = load ptr, ptr %185, align 8
  %187 = icmp ne ptr %186, null
  br i1 %187, label %188, label %193

188:                                              ; preds = %173
  %189 = load i32, ptr %17, align 4
  %190 = load i32, ptr %18, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  store i32 1, ptr %7, align 4
  br label %220

193:                                              ; preds = %188, %173
  %194 = load ptr, ptr %8, align 8
  %195 = load ptr, ptr %13, align 8
  call void @MatchFinder_FreeThisClassMemory(ptr noundef %194, ptr noundef %195)
  %196 = load i32, ptr %18, align 4
  %197 = load ptr, ptr %13, align 8
  %198 = call ptr @AllocRefs(i32 noundef %196, ptr noundef %197)
  %199 = load ptr, ptr %8, align 8
  %200 = getelementptr inbounds %struct._CMatchFinder, ptr %199, i32 0, i32 8
  store ptr %198, ptr %200, align 8
  %201 = load ptr, ptr %8, align 8
  %202 = getelementptr inbounds %struct._CMatchFinder, ptr %201, i32 0, i32 8
  %203 = load ptr, ptr %202, align 8
  %204 = icmp ne ptr %203, null
  br i1 %204, label %205, label %216

205:                                              ; preds = %193
  %206 = load ptr, ptr %8, align 8
  %207 = getelementptr inbounds %struct._CMatchFinder, ptr %206, i32 0, i32 8
  %208 = load ptr, ptr %207, align 8
  %209 = load ptr, ptr %8, align 8
  %210 = getelementptr inbounds %struct._CMatchFinder, ptr %209, i32 0, i32 25
  %211 = load i32, ptr %210, align 8
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i32, ptr %208, i64 %212
  %214 = load ptr, ptr %8, align 8
  %215 = getelementptr inbounds %struct._CMatchFinder, ptr %214, i32 0, i32 9
  store ptr %213, ptr %215, align 8
  store i32 1, ptr %7, align 4
  br label %220

216:                                              ; preds = %193
  br label %217

217:                                              ; preds = %216, %32
  %218 = load ptr, ptr %8, align 8
  %219 = load ptr, ptr %13, align 8
  call void @MatchFinder_Free(ptr noundef %218, ptr noundef %219)
  store i32 0, ptr %7, align 4
  br label %220

220:                                              ; preds = %217, %205, %192, %21
  %221 = load i32, ptr %7, align 4
  ret i32 %221
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LzInWindow_Create(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct._CMatchFinder, ptr %9, i32 0, i32 16
  %11 = load i32, ptr %10, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct._CMatchFinder, ptr %12, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %11, %14
  %16 = load i32, ptr %6, align 4
  %17 = add i32 %15, %16
  store i32 %17, ptr %8, align 4
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %struct._CMatchFinder, ptr %18, i32 0, i32 19
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, ptr %8, align 4
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct._CMatchFinder, ptr %24, i32 0, i32 15
  store i32 %23, ptr %25, align 4
  store i32 1, ptr %4, align 4
  br label %58

26:                                               ; preds = %3
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds %struct._CMatchFinder, ptr %27, i32 0, i32 12
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds %struct._CMatchFinder, ptr %32, i32 0, i32 15
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %8, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31, %26
  %38 = load ptr, ptr %5, align 8
  %39 = load ptr, ptr %7, align 8
  call void @LzInWindow_Free(ptr noundef %38, ptr noundef %39)
  %40 = load i32, ptr %8, align 4
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds %struct._CMatchFinder, ptr %41, i32 0, i32 15
  store i32 %40, ptr %42, align 4
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds %struct.ISzAlloc, ptr %43, i32 0, i32 0
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %7, align 8
  %47 = load i32, ptr %8, align 4
  %48 = zext i32 %47 to i64
  %49 = call ptr %45(ptr noundef %46, i64 noundef %48)
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds %struct._CMatchFinder, ptr %50, i32 0, i32 12
  store ptr %49, ptr %51, align 8
  br label %52

52:                                               ; preds = %37, %31
  %53 = load ptr, ptr %5, align 8
  %54 = getelementptr inbounds %struct._CMatchFinder, ptr %53, i32 0, i32 12
  %55 = load ptr, ptr %54, align 8
  %56 = icmp ne ptr %55, null
  %57 = zext i1 %56 to i32
  store i32 %57, ptr %4, align 4
  br label %58

58:                                               ; preds = %52, %22
  %59 = load i32, ptr %4, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @AllocRefs(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %7 = load i32, ptr %4, align 4
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, 4
  store i64 %9, ptr %6, align 8
  %10 = load i64, ptr %6, align 8
  %11 = udiv i64 %10, 4
  %12 = load i32, ptr %4, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store ptr null, ptr %3, align 8
  br label %23

16:                                               ; preds = %2
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %struct.ISzAlloc, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = load i64, ptr %6, align 8
  %22 = call ptr %19(ptr noundef %20, i64 noundef %21)
  store ptr %22, ptr %3, align 8
  br label %23

23:                                               ; preds = %16, %15
  %24 = load ptr, ptr %3, align 8
  ret ptr %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinder_Init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, ptr %3, align 4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct._CMatchFinder, ptr %6, i32 0, i32 25
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct._CMatchFinder, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = load i32, ptr %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %13, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %3, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %3, align 4
  br label %4, !llvm.loop !9

20:                                               ; preds = %4
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct._CMatchFinder, ptr %21, i32 0, i32 5
  store i32 0, ptr %22, align 8
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct._CMatchFinder, ptr %23, i32 0, i32 12
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct._CMatchFinder, ptr %26, i32 0, i32 0
  store ptr %25, ptr %27, align 8
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct._CMatchFinder, ptr %28, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct._CMatchFinder, ptr %31, i32 0, i32 3
  store i32 %30, ptr %32, align 8
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct._CMatchFinder, ptr %33, i32 0, i32 1
  store i32 %30, ptr %34, align 8
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct._CMatchFinder, ptr %35, i32 0, i32 27
  store i32 0, ptr %36, align 8
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct._CMatchFinder, ptr %37, i32 0, i32 14
  store i32 0, ptr %38, align 8
  %39 = load ptr, ptr %2, align 8
  call void @MatchFinder_ReadBlock(ptr noundef %39)
  %40 = load ptr, ptr %2, align 8
  call void @MatchFinder_SetLimits(ptr noundef %40)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MatchFinder_SetLimits(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct._CMatchFinder, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = sub i32 -1, %8
  store i32 %9, ptr %3, align 4
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct._CMatchFinder, ptr %10, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct._CMatchFinder, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = sub i32 %12, %15
  store i32 %16, ptr %4, align 4
  %17 = load i32, ptr %4, align 4
  %18 = load i32, ptr %3, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, ptr %4, align 4
  store i32 %21, ptr %3, align 4
  br label %22

22:                                               ; preds = %20, %1
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct._CMatchFinder, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 8
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct._CMatchFinder, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 8
  %29 = sub i32 %25, %28
  store i32 %29, ptr %4, align 4
  %30 = load i32, ptr %4, align 4
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct._CMatchFinder, ptr %31, i32 0, i32 17
  %33 = load i32, ptr %32, align 4
  %34 = icmp ule i32 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load i32, ptr %4, align 4
  %37 = icmp ugt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, ptr %4, align 4
  br label %39

39:                                               ; preds = %38, %35
  br label %46

40:                                               ; preds = %22
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr inbounds %struct._CMatchFinder, ptr %41, i32 0, i32 17
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr %4, align 4
  %45 = sub i32 %44, %43
  store i32 %45, ptr %4, align 4
  br label %46

46:                                               ; preds = %40, %39
  %47 = load i32, ptr %4, align 4
  %48 = load i32, ptr %3, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, ptr %4, align 4
  store i32 %51, ptr %3, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = load ptr, ptr %2, align 8
  %54 = getelementptr inbounds %struct._CMatchFinder, ptr %53, i32 0, i32 3
  %55 = load i32, ptr %54, align 8
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds %struct._CMatchFinder, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 8
  %59 = sub i32 %55, %58
  store i32 %59, ptr %5, align 4
  %60 = load i32, ptr %5, align 4
  %61 = load ptr, ptr %2, align 8
  %62 = getelementptr inbounds %struct._CMatchFinder, ptr %61, i32 0, i32 7
  %63 = load i32, ptr %62, align 8
  %64 = icmp ugt i32 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %52
  %66 = load ptr, ptr %2, align 8
  %67 = getelementptr inbounds %struct._CMatchFinder, ptr %66, i32 0, i32 7
  %68 = load i32, ptr %67, align 8
  store i32 %68, ptr %5, align 4
  br label %69

69:                                               ; preds = %65, %52
  %70 = load i32, ptr %5, align 4
  %71 = load ptr, ptr %2, align 8
  %72 = getelementptr inbounds %struct._CMatchFinder, ptr %71, i32 0, i32 4
  store i32 %70, ptr %72, align 4
  %73 = load ptr, ptr %2, align 8
  %74 = getelementptr inbounds %struct._CMatchFinder, ptr %73, i32 0, i32 1
  %75 = load i32, ptr %74, align 8
  %76 = load i32, ptr %3, align 4
  %77 = add i32 %75, %76
  %78 = load ptr, ptr %2, align 8
  %79 = getelementptr inbounds %struct._CMatchFinder, ptr %78, i32 0, i32 2
  store i32 %77, ptr %79, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinder_Normalize3(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %9

9:                                                ; preds = %33, %3
  %10 = load i32, ptr %7, align 4
  %11 = load i32, ptr %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8
  %15 = load i32, ptr %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %8, align 4
  %19 = load i32, ptr %8, align 4
  %20 = load i32, ptr %4, align 4
  %21 = icmp ule i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 0, ptr %8, align 4
  br label %27

23:                                               ; preds = %13
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %8, align 4
  %26 = sub i32 %25, %24
  store i32 %26, ptr %8, align 4
  br label %27

27:                                               ; preds = %23, %22
  %28 = load i32, ptr %8, align 4
  %29 = load ptr, ptr %5, align 8
  %30 = load i32, ptr %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %29, i64 %31
  store i32 %28, ptr %32, align 4
  br label %33

33:                                               ; preds = %27
  %34 = load i32, ptr %7, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %7, align 4
  br label %9, !llvm.loop !10

36:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @GetMatchesSpec1(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) #0 {
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca i32, align 4
  store i32 %0, ptr %12, align 4
  store i32 %1, ptr %13, align 4
  store i32 %2, ptr %14, align 4
  store ptr %3, ptr %15, align 8
  store ptr %4, ptr %16, align 8
  store i32 %5, ptr %17, align 4
  store i32 %6, ptr %18, align 4
  store i32 %7, ptr %19, align 4
  store ptr %8, ptr %20, align 8
  store i32 %9, ptr %21, align 4
  %30 = load ptr, ptr %16, align 8
  %31 = load i32, ptr %17, align 4
  %32 = shl i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %30, i64 %33
  %35 = getelementptr inbounds i32, ptr %34, i64 1
  store ptr %35, ptr %22, align 8
  %36 = load ptr, ptr %16, align 8
  %37 = load i32, ptr %17, align 4
  %38 = shl i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %36, i64 %39
  store ptr %40, ptr %23, align 8
  store i32 0, ptr %24, align 4
  store i32 0, ptr %25, align 4
  br label %41

41:                                               ; preds = %198, %10
  %42 = load i32, ptr %14, align 4
  %43 = load i32, ptr %13, align 4
  %44 = sub i32 %42, %43
  store i32 %44, ptr %26, align 4
  %45 = load i32, ptr %19, align 4
  %46 = add i32 %45, -1
  store i32 %46, ptr %19, align 4
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, ptr %26, align 4
  %50 = load i32, ptr %18, align 4
  %51 = icmp uge i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %41
  %53 = load ptr, ptr %23, align 8
  store i32 0, ptr %53, align 4
  %54 = load ptr, ptr %22, align 8
  store i32 0, ptr %54, align 4
  %55 = load ptr, ptr %20, align 8
  store ptr %55, ptr %11, align 8
  br label %199

56:                                               ; preds = %48
  %57 = load ptr, ptr %16, align 8
  %58 = load i32, ptr %17, align 4
  %59 = load i32, ptr %26, align 4
  %60 = sub i32 %58, %59
  %61 = load i32, ptr %26, align 4
  %62 = load i32, ptr %17, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, ptr %18, align 4
  br label %67

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ 0, %66 ]
  %69 = add i32 %60, %68
  %70 = shl i32 %69, 1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %57, i64 %71
  store ptr %72, ptr %27, align 8
  %73 = load ptr, ptr %15, align 8
  %74 = load i32, ptr %26, align 4
  %75 = zext i32 %74 to i64
  %76 = sub i64 0, %75
  %77 = getelementptr inbounds i8, ptr %73, i64 %76
  store ptr %77, ptr %28, align 8
  %78 = load i32, ptr %24, align 4
  %79 = load i32, ptr %25, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = load i32, ptr %24, align 4
  br label %85

83:                                               ; preds = %67
  %84 = load i32, ptr %25, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, ptr %29, align 4
  %87 = load ptr, ptr %28, align 8
  %88 = load i32, ptr %29, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %87, i64 %89
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = load ptr, ptr %15, align 8
  %94 = load i32, ptr %29, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %93, i64 %95
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %92, %98
  br i1 %99, label %100, label %169

100:                                              ; preds = %85
  %101 = load i32, ptr %29, align 4
  %102 = add i32 %101, 1
  store i32 %102, ptr %29, align 4
  %103 = load i32, ptr %12, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %142

105:                                              ; preds = %100
  %106 = load ptr, ptr %28, align 8
  %107 = load i32, ptr %29, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %106, i64 %108
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load ptr, ptr %15, align 8
  %113 = load i32, ptr %29, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %112, i64 %114
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %111, %117
  br i1 %118, label %119, label %142

119:                                              ; preds = %105
  br label %120

120:                                              ; preds = %140, %119
  %121 = load i32, ptr %29, align 4
  %122 = add i32 %121, 1
  store i32 %122, ptr %29, align 4
  %123 = load i32, ptr %12, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load ptr, ptr %28, align 8
  %127 = load i32, ptr %29, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %126, i64 %128
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load ptr, ptr %15, align 8
  %133 = load i32, ptr %29, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %132, i64 %134
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp ne i32 %131, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %125
  br label %141

140:                                              ; preds = %125
  br label %120, !llvm.loop !11

141:                                              ; preds = %139, %120
  br label %142

142:                                              ; preds = %141, %105, %100
  %143 = load i32, ptr %21, align 4
  %144 = load i32, ptr %29, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %168

146:                                              ; preds = %142
  %147 = load i32, ptr %29, align 4
  store i32 %147, ptr %21, align 4
  %148 = load ptr, ptr %20, align 8
  %149 = getelementptr inbounds i32, ptr %148, i32 1
  store ptr %149, ptr %20, align 8
  store i32 %147, ptr %148, align 4
  %150 = load i32, ptr %26, align 4
  %151 = sub i32 %150, 1
  %152 = load ptr, ptr %20, align 8
  %153 = getelementptr inbounds i32, ptr %152, i32 1
  store ptr %153, ptr %20, align 8
  store i32 %151, ptr %152, align 4
  %154 = load i32, ptr %29, align 4
  %155 = load i32, ptr %12, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %146
  %158 = load ptr, ptr %27, align 8
  %159 = getelementptr inbounds i32, ptr %158, i64 0
  %160 = load i32, ptr %159, align 4
  %161 = load ptr, ptr %23, align 8
  store i32 %160, ptr %161, align 4
  %162 = load ptr, ptr %27, align 8
  %163 = getelementptr inbounds i32, ptr %162, i64 1
  %164 = load i32, ptr %163, align 4
  %165 = load ptr, ptr %22, align 8
  store i32 %164, ptr %165, align 4
  %166 = load ptr, ptr %20, align 8
  store ptr %166, ptr %11, align 8
  br label %199

167:                                              ; preds = %146
  br label %168

168:                                              ; preds = %167, %142
  br label %169

169:                                              ; preds = %168, %85
  %170 = load ptr, ptr %28, align 8
  %171 = load i32, ptr %29, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i8, ptr %170, i64 %172
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = load ptr, ptr %15, align 8
  %177 = load i32, ptr %29, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i8, ptr %176, i64 %178
  %180 = load i8, ptr %179, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp slt i32 %175, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %169
  %184 = load i32, ptr %13, align 4
  %185 = load ptr, ptr %23, align 8
  store i32 %184, ptr %185, align 4
  %186 = load ptr, ptr %27, align 8
  %187 = getelementptr inbounds i32, ptr %186, i64 1
  store ptr %187, ptr %23, align 8
  %188 = load ptr, ptr %23, align 8
  %189 = load i32, ptr %188, align 4
  store i32 %189, ptr %13, align 4
  %190 = load i32, ptr %29, align 4
  store i32 %190, ptr %25, align 4
  br label %198

191:                                              ; preds = %169
  %192 = load i32, ptr %13, align 4
  %193 = load ptr, ptr %22, align 8
  store i32 %192, ptr %193, align 4
  %194 = load ptr, ptr %27, align 8
  store ptr %194, ptr %22, align 8
  %195 = load ptr, ptr %22, align 8
  %196 = load i32, ptr %195, align 4
  store i32 %196, ptr %13, align 4
  %197 = load i32, ptr %29, align 4
  store i32 %197, ptr %24, align 4
  br label %198

198:                                              ; preds = %191, %183
  br label %41

199:                                              ; preds = %157, %52
  %200 = load ptr, ptr %11, align 8
  ret ptr %200
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Bt3Zip_MatchFinder_GetMatches(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct._CMatchFinder, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %7, align 4
  %14 = load i32, ptr %7, align 4
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8
  call void @MatchFinder_MovePos(ptr noundef %17)
  store i32 0, ptr %3, align 4
  br label %109

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct._CMatchFinder, ptr %19, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %9, align 8
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 2
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 0
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 8
  %31 = or i32 %25, %30
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct._CMatchFinder, ptr %32, i32 0, i32 28
  %34 = load ptr, ptr %9, align 8
  %35 = getelementptr inbounds i8, ptr %34, i64 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [256 x i32], ptr %33, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %31, %39
  %41 = and i32 %40, 65535
  store i32 %41, ptr %8, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct._CMatchFinder, ptr %42, i32 0, i32 8
  %44 = load ptr, ptr %43, align 8
  %45 = load i32, ptr %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %44, i64 %46
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %10, align 4
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds %struct._CMatchFinder, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 8
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds %struct._CMatchFinder, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 8
  %55 = load i32, ptr %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %54, i64 %56
  store i32 %51, ptr %57, align 4
  store i32 0, ptr %6, align 4
  %58 = load i32, ptr %7, align 4
  %59 = load i32, ptr %10, align 4
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr inbounds %struct._CMatchFinder, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %61, align 8
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds %struct._CMatchFinder, ptr %63, i32 0, i32 0
  %65 = load ptr, ptr %64, align 8
  %66 = load ptr, ptr %4, align 8
  %67 = getelementptr inbounds %struct._CMatchFinder, ptr %66, i32 0, i32 9
  %68 = load ptr, ptr %67, align 8
  %69 = load ptr, ptr %4, align 8
  %70 = getelementptr inbounds %struct._CMatchFinder, ptr %69, i32 0, i32 5
  %71 = load i32, ptr %70, align 8
  %72 = load ptr, ptr %4, align 8
  %73 = getelementptr inbounds %struct._CMatchFinder, ptr %72, i32 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %4, align 8
  %76 = getelementptr inbounds %struct._CMatchFinder, ptr %75, i32 0, i32 11
  %77 = load i32, ptr %76, align 4
  %78 = load ptr, ptr %5, align 8
  %79 = load i32, ptr %6, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %78, i64 %80
  %82 = call ptr @GetMatchesSpec1(i32 noundef %58, i32 noundef %59, i32 noundef %62, ptr noundef %65, ptr noundef %68, i32 noundef %71, i32 noundef %74, i32 noundef %77, ptr noundef %81, i32 noundef 2)
  %83 = load ptr, ptr %5, align 8
  %84 = ptrtoint ptr %82 to i64
  %85 = ptrtoint ptr %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 4
  %88 = trunc i64 %87 to i32
  store i32 %88, ptr %6, align 4
  %89 = load ptr, ptr %4, align 8
  %90 = getelementptr inbounds %struct._CMatchFinder, ptr %89, i32 0, i32 5
  %91 = load i32, ptr %90, align 8
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 8
  %93 = load ptr, ptr %4, align 8
  %94 = getelementptr inbounds %struct._CMatchFinder, ptr %93, i32 0, i32 0
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds i8, ptr %95, i32 1
  store ptr %96, ptr %94, align 8
  %97 = load ptr, ptr %4, align 8
  %98 = getelementptr inbounds %struct._CMatchFinder, ptr %97, i32 0, i32 1
  %99 = load i32, ptr %98, align 8
  %100 = add i32 %99, 1
  store i32 %100, ptr %98, align 8
  %101 = load ptr, ptr %4, align 8
  %102 = getelementptr inbounds %struct._CMatchFinder, ptr %101, i32 0, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %18
  %106 = load ptr, ptr %4, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %106)
  br label %107

107:                                              ; preds = %105, %18
  %108 = load i32, ptr %6, align 4
  store i32 %108, ptr %3, align 4
  br label %109

109:                                              ; preds = %107, %16
  %110 = load i32, ptr %3, align 4
  ret i32 %110
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MatchFinder_MovePos(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMatchFinder, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct._CMatchFinder, ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %10, ptr %8, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct._CMatchFinder, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct._CMatchFinder, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr %2, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %20)
  br label %21

21:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MatchFinder_CheckLimits(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMatchFinder, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  call void @MatchFinder_Normalize(ptr noundef %8)
  br label %9

9:                                                ; preds = %7, %1
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct._CMatchFinder, ptr %10, i32 0, i32 14
  %12 = load i32, ptr %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct._CMatchFinder, ptr %15, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct._CMatchFinder, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct._CMatchFinder, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = sub i32 %20, %23
  %25 = icmp eq i32 %17, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load ptr, ptr %2, align 8
  call void @MatchFinder_CheckAndMoveAndRead(ptr noundef %27)
  br label %28

28:                                               ; preds = %26, %14, %9
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct._CMatchFinder, ptr %29, i32 0, i32 5
  %31 = load i32, ptr %30, align 8
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr inbounds %struct._CMatchFinder, ptr %32, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct._CMatchFinder, ptr %37, i32 0, i32 5
  store i32 0, ptr %38, align 8
  br label %39

39:                                               ; preds = %36, %28
  %40 = load ptr, ptr %2, align 8
  call void @MatchFinder_SetLimits(ptr noundef %40)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Hc3Zip_MatchFinder_GetMatches(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct._CMatchFinder, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %7, align 4
  %14 = load i32, ptr %7, align 4
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8
  call void @MatchFinder_MovePos(ptr noundef %17)
  store i32 0, ptr %3, align 4
  br label %106

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct._CMatchFinder, ptr %19, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %9, align 8
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 2
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 0
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 8
  %31 = or i32 %25, %30
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct._CMatchFinder, ptr %32, i32 0, i32 28
  %34 = load ptr, ptr %9, align 8
  %35 = getelementptr inbounds i8, ptr %34, i64 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [256 x i32], ptr %33, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %31, %39
  %41 = and i32 %40, 65535
  store i32 %41, ptr %8, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct._CMatchFinder, ptr %42, i32 0, i32 8
  %44 = load ptr, ptr %43, align 8
  %45 = load i32, ptr %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %44, i64 %46
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %10, align 4
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds %struct._CMatchFinder, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 8
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds %struct._CMatchFinder, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 8
  %55 = load i32, ptr %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %54, i64 %56
  store i32 %51, ptr %57, align 4
  %58 = load i32, ptr %7, align 4
  %59 = load i32, ptr %10, align 4
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr inbounds %struct._CMatchFinder, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %61, align 8
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds %struct._CMatchFinder, ptr %63, i32 0, i32 0
  %65 = load ptr, ptr %64, align 8
  %66 = load ptr, ptr %4, align 8
  %67 = getelementptr inbounds %struct._CMatchFinder, ptr %66, i32 0, i32 9
  %68 = load ptr, ptr %67, align 8
  %69 = load ptr, ptr %4, align 8
  %70 = getelementptr inbounds %struct._CMatchFinder, ptr %69, i32 0, i32 5
  %71 = load i32, ptr %70, align 8
  %72 = load ptr, ptr %4, align 8
  %73 = getelementptr inbounds %struct._CMatchFinder, ptr %72, i32 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %4, align 8
  %76 = getelementptr inbounds %struct._CMatchFinder, ptr %75, i32 0, i32 11
  %77 = load i32, ptr %76, align 4
  %78 = load ptr, ptr %5, align 8
  %79 = call ptr @Hc_GetMatchesSpec(i32 noundef %58, i32 noundef %59, i32 noundef %62, ptr noundef %65, ptr noundef %68, i32 noundef %71, i32 noundef %74, i32 noundef %77, ptr noundef %78, i32 noundef 2)
  %80 = load ptr, ptr %5, align 8
  %81 = ptrtoint ptr %79 to i64
  %82 = ptrtoint ptr %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = trunc i64 %84 to i32
  store i32 %85, ptr %6, align 4
  %86 = load ptr, ptr %4, align 8
  %87 = getelementptr inbounds %struct._CMatchFinder, ptr %86, i32 0, i32 5
  %88 = load i32, ptr %87, align 8
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 8
  %90 = load ptr, ptr %4, align 8
  %91 = getelementptr inbounds %struct._CMatchFinder, ptr %90, i32 0, i32 0
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds i8, ptr %92, i32 1
  store ptr %93, ptr %91, align 8
  %94 = load ptr, ptr %4, align 8
  %95 = getelementptr inbounds %struct._CMatchFinder, ptr %94, i32 0, i32 1
  %96 = load i32, ptr %95, align 8
  %97 = add i32 %96, 1
  store i32 %97, ptr %95, align 8
  %98 = load ptr, ptr %4, align 8
  %99 = getelementptr inbounds %struct._CMatchFinder, ptr %98, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %18
  %103 = load ptr, ptr %4, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %103)
  br label %104

104:                                              ; preds = %102, %18
  %105 = load i32, ptr %6, align 4
  store i32 %105, ptr %3, align 4
  br label %106

106:                                              ; preds = %104, %16
  %107 = load i32, ptr %3, align 4
  ret i32 %107
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @Hc_GetMatchesSpec(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) #0 {
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  store i32 %0, ptr %12, align 4
  store i32 %1, ptr %13, align 4
  store i32 %2, ptr %14, align 4
  store ptr %3, ptr %15, align 8
  store ptr %4, ptr %16, align 8
  store i32 %5, ptr %17, align 4
  store i32 %6, ptr %18, align 4
  store i32 %7, ptr %19, align 4
  store ptr %8, ptr %20, align 8
  store i32 %9, ptr %21, align 4
  %25 = load i32, ptr %13, align 4
  %26 = load ptr, ptr %16, align 8
  %27 = load i32, ptr %17, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %26, i64 %28
  store i32 %25, ptr %29, align 4
  br label %30

30:                                               ; preds = %127, %10
  %31 = load i32, ptr %14, align 4
  %32 = load i32, ptr %13, align 4
  %33 = sub i32 %31, %32
  store i32 %33, ptr %22, align 4
  %34 = load i32, ptr %19, align 4
  %35 = add i32 %34, -1
  store i32 %35, ptr %19, align 4
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load i32, ptr %22, align 4
  %39 = load i32, ptr %18, align 4
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %30
  %42 = load ptr, ptr %20, align 8
  store ptr %42, ptr %11, align 8
  br label %128

43:                                               ; preds = %37
  %44 = load ptr, ptr %15, align 8
  %45 = load i32, ptr %22, align 4
  %46 = zext i32 %45 to i64
  %47 = sub i64 0, %46
  %48 = getelementptr inbounds i8, ptr %44, i64 %47
  store ptr %48, ptr %23, align 8
  %49 = load ptr, ptr %16, align 8
  %50 = load i32, ptr %17, align 4
  %51 = load i32, ptr %22, align 4
  %52 = sub i32 %50, %51
  %53 = load i32, ptr %22, align 4
  %54 = load i32, ptr %17, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, ptr %18, align 4
  br label %59

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = add i32 %52, %60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %49, i64 %62
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %13, align 4
  %65 = load ptr, ptr %23, align 8
  %66 = load i32, ptr %21, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %65, i64 %67
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = load ptr, ptr %15, align 8
  %72 = load i32, ptr %21, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %71, i64 %73
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %70, %76
  br i1 %77, label %78, label %127

78:                                               ; preds = %59
  %79 = load ptr, ptr %23, align 8
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load ptr, ptr %15, align 8
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %127

86:                                               ; preds = %78
  store i32 0, ptr %24, align 4
  br label %87

87:                                               ; preds = %107, %86
  %88 = load i32, ptr %24, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %24, align 4
  %90 = load i32, ptr %12, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %87
  %93 = load ptr, ptr %23, align 8
  %94 = load i32, ptr %24, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %93, i64 %95
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = load ptr, ptr %15, align 8
  %100 = load i32, ptr %24, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %99, i64 %101
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %98, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  br label %108

107:                                              ; preds = %92
  br label %87, !llvm.loop !12

108:                                              ; preds = %106, %87
  %109 = load i32, ptr %21, align 4
  %110 = load i32, ptr %24, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %108
  %113 = load i32, ptr %24, align 4
  store i32 %113, ptr %21, align 4
  %114 = load ptr, ptr %20, align 8
  %115 = getelementptr inbounds i32, ptr %114, i32 1
  store ptr %115, ptr %20, align 8
  store i32 %113, ptr %114, align 4
  %116 = load i32, ptr %22, align 4
  %117 = sub i32 %116, 1
  %118 = load ptr, ptr %20, align 8
  %119 = getelementptr inbounds i32, ptr %118, i32 1
  store ptr %119, ptr %20, align 8
  store i32 %117, ptr %118, align 4
  %120 = load i32, ptr %24, align 4
  %121 = load i32, ptr %12, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %112
  %124 = load ptr, ptr %20, align 8
  store ptr %124, ptr %11, align 8
  br label %128

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125, %108
  br label %127

127:                                              ; preds = %126, %78, %59
  br label %30

128:                                              ; preds = %123, %41
  %129 = load ptr, ptr %11, align 8
  ret ptr %129
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Bt3Zip_MatchFinder_Skip(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %9

9:                                                ; preds = %96, %2
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct._CMatchFinder, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %5, align 4
  %13 = load i32, ptr %5, align 4
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load ptr, ptr %3, align 8
  call void @MatchFinder_MovePos(ptr noundef %16)
  br label %96

17:                                               ; preds = %9
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct._CMatchFinder, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  store ptr %20, ptr %7, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds i8, ptr %21, i64 2
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load ptr, ptr %7, align 8
  %26 = getelementptr inbounds i8, ptr %25, i64 0
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 8
  %30 = or i32 %24, %29
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct._CMatchFinder, ptr %31, i32 0, i32 28
  %33 = load ptr, ptr %7, align 8
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i32], ptr %32, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = xor i32 %30, %38
  %40 = and i32 %39, 65535
  store i32 %40, ptr %6, align 4
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds %struct._CMatchFinder, ptr %41, i32 0, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = load i32, ptr %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %43, i64 %45
  %47 = load i32, ptr %46, align 4
  store i32 %47, ptr %8, align 4
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct._CMatchFinder, ptr %48, i32 0, i32 1
  %50 = load i32, ptr %49, align 8
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct._CMatchFinder, ptr %51, i32 0, i32 8
  %53 = load ptr, ptr %52, align 8
  %54 = load i32, ptr %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %53, i64 %55
  store i32 %50, ptr %56, align 4
  %57 = load i32, ptr %5, align 4
  %58 = load i32, ptr %8, align 4
  %59 = load ptr, ptr %3, align 8
  %60 = getelementptr inbounds %struct._CMatchFinder, ptr %59, i32 0, i32 1
  %61 = load i32, ptr %60, align 8
  %62 = load ptr, ptr %3, align 8
  %63 = getelementptr inbounds %struct._CMatchFinder, ptr %62, i32 0, i32 0
  %64 = load ptr, ptr %63, align 8
  %65 = load ptr, ptr %3, align 8
  %66 = getelementptr inbounds %struct._CMatchFinder, ptr %65, i32 0, i32 9
  %67 = load ptr, ptr %66, align 8
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds %struct._CMatchFinder, ptr %68, i32 0, i32 5
  %70 = load i32, ptr %69, align 8
  %71 = load ptr, ptr %3, align 8
  %72 = getelementptr inbounds %struct._CMatchFinder, ptr %71, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr %3, align 8
  %75 = getelementptr inbounds %struct._CMatchFinder, ptr %74, i32 0, i32 11
  %76 = load i32, ptr %75, align 4
  call void @SkipMatchesSpec(i32 noundef %57, i32 noundef %58, i32 noundef %61, ptr noundef %64, ptr noundef %67, i32 noundef %70, i32 noundef %73, i32 noundef %76)
  %77 = load ptr, ptr %3, align 8
  %78 = getelementptr inbounds %struct._CMatchFinder, ptr %77, i32 0, i32 5
  %79 = load i32, ptr %78, align 8
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 8
  %81 = load ptr, ptr %3, align 8
  %82 = getelementptr inbounds %struct._CMatchFinder, ptr %81, i32 0, i32 0
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds i8, ptr %83, i32 1
  store ptr %84, ptr %82, align 8
  %85 = load ptr, ptr %3, align 8
  %86 = getelementptr inbounds %struct._CMatchFinder, ptr %85, i32 0, i32 1
  %87 = load i32, ptr %86, align 8
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 8
  %89 = load ptr, ptr %3, align 8
  %90 = getelementptr inbounds %struct._CMatchFinder, ptr %89, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %17
  %94 = load ptr, ptr %3, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %94)
  br label %95

95:                                               ; preds = %93, %17
  br label %96

96:                                               ; preds = %95, %15
  %97 = load i32, ptr %4, align 4
  %98 = add i32 %97, -1
  store i32 %98, ptr %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %9, label %100, !llvm.loop !13

100:                                              ; preds = %96
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SkipMatchesSpec(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  store i32 %0, ptr %9, align 4
  store i32 %1, ptr %10, align 4
  store i32 %2, ptr %11, align 4
  store ptr %3, ptr %12, align 8
  store ptr %4, ptr %13, align 8
  store i32 %5, ptr %14, align 4
  store i32 %6, ptr %15, align 4
  store i32 %7, ptr %16, align 4
  %25 = load ptr, ptr %13, align 8
  %26 = load i32, ptr %14, align 4
  %27 = shl i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %25, i64 %28
  %30 = getelementptr inbounds i32, ptr %29, i64 1
  store ptr %30, ptr %17, align 8
  %31 = load ptr, ptr %13, align 8
  %32 = load i32, ptr %14, align 4
  %33 = shl i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %31, i64 %34
  store ptr %35, ptr %18, align 8
  store i32 0, ptr %19, align 4
  store i32 0, ptr %20, align 4
  br label %36

36:                                               ; preds = %159, %8
  %37 = load i32, ptr %11, align 4
  %38 = load i32, ptr %10, align 4
  %39 = sub i32 %37, %38
  store i32 %39, ptr %21, align 4
  %40 = load i32, ptr %16, align 4
  %41 = add i32 %40, -1
  store i32 %41, ptr %16, align 4
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i32, ptr %21, align 4
  %45 = load i32, ptr %15, align 4
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %36
  %48 = load ptr, ptr %18, align 8
  store i32 0, ptr %48, align 4
  %49 = load ptr, ptr %17, align 8
  store i32 0, ptr %49, align 4
  br label %160

50:                                               ; preds = %43
  %51 = load ptr, ptr %13, align 8
  %52 = load i32, ptr %14, align 4
  %53 = load i32, ptr %21, align 4
  %54 = sub i32 %52, %53
  %55 = load i32, ptr %21, align 4
  %56 = load i32, ptr %14, align 4
  %57 = icmp ugt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, ptr %15, align 4
  br label %61

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = add i32 %54, %62
  %64 = shl i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %51, i64 %65
  store ptr %66, ptr %22, align 8
  %67 = load ptr, ptr %12, align 8
  %68 = load i32, ptr %21, align 4
  %69 = zext i32 %68 to i64
  %70 = sub i64 0, %69
  %71 = getelementptr inbounds i8, ptr %67, i64 %70
  store ptr %71, ptr %23, align 8
  %72 = load i32, ptr %19, align 4
  %73 = load i32, ptr %20, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i32, ptr %19, align 4
  br label %79

77:                                               ; preds = %61
  %78 = load i32, ptr %20, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, ptr %24, align 4
  %81 = load ptr, ptr %23, align 8
  %82 = load i32, ptr %24, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %81, i64 %83
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load ptr, ptr %12, align 8
  %88 = load i32, ptr %24, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %87, i64 %89
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %86, %92
  br i1 %93, label %94, label %130

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %115, %94
  %96 = load i32, ptr %24, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr %24, align 4
  %98 = load i32, ptr %9, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load ptr, ptr %23, align 8
  %102 = load i32, ptr %24, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i8, ptr %101, i64 %103
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = load ptr, ptr %12, align 8
  %108 = load i32, ptr %24, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i8, ptr %107, i64 %109
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp ne i32 %106, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  br label %116

115:                                              ; preds = %100
  br label %95, !llvm.loop !14

116:                                              ; preds = %114, %95
  %117 = load i32, ptr %24, align 4
  %118 = load i32, ptr %9, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load ptr, ptr %22, align 8
  %122 = getelementptr inbounds i32, ptr %121, i64 0
  %123 = load i32, ptr %122, align 4
  %124 = load ptr, ptr %18, align 8
  store i32 %123, ptr %124, align 4
  %125 = load ptr, ptr %22, align 8
  %126 = getelementptr inbounds i32, ptr %125, i64 1
  %127 = load i32, ptr %126, align 4
  %128 = load ptr, ptr %17, align 8
  store i32 %127, ptr %128, align 4
  br label %160

129:                                              ; preds = %116
  br label %130

130:                                              ; preds = %129, %79
  %131 = load ptr, ptr %23, align 8
  %132 = load i32, ptr %24, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %131, i64 %133
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = load ptr, ptr %12, align 8
  %138 = load i32, ptr %24, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8, ptr %137, i64 %139
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp slt i32 %136, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %130
  %145 = load i32, ptr %10, align 4
  %146 = load ptr, ptr %18, align 8
  store i32 %145, ptr %146, align 4
  %147 = load ptr, ptr %22, align 8
  %148 = getelementptr inbounds i32, ptr %147, i64 1
  store ptr %148, ptr %18, align 8
  %149 = load ptr, ptr %18, align 8
  %150 = load i32, ptr %149, align 4
  store i32 %150, ptr %10, align 4
  %151 = load i32, ptr %24, align 4
  store i32 %151, ptr %20, align 4
  br label %159

152:                                              ; preds = %130
  %153 = load i32, ptr %10, align 4
  %154 = load ptr, ptr %17, align 8
  store i32 %153, ptr %154, align 4
  %155 = load ptr, ptr %22, align 8
  store ptr %155, ptr %17, align 8
  %156 = load ptr, ptr %17, align 8
  %157 = load i32, ptr %156, align 4
  store i32 %157, ptr %10, align 4
  %158 = load i32, ptr %24, align 4
  store i32 %158, ptr %19, align 4
  br label %159

159:                                              ; preds = %152, %144
  br label %36

160:                                              ; preds = %120, %47
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hc3Zip_MatchFinder_Skip(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %9

9:                                                ; preds = %85, %2
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct._CMatchFinder, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %5, align 4
  %13 = load i32, ptr %5, align 4
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load ptr, ptr %3, align 8
  call void @MatchFinder_MovePos(ptr noundef %16)
  br label %85

17:                                               ; preds = %9
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct._CMatchFinder, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  store ptr %20, ptr %7, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds i8, ptr %21, i64 2
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load ptr, ptr %7, align 8
  %26 = getelementptr inbounds i8, ptr %25, i64 0
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 8
  %30 = or i32 %24, %29
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct._CMatchFinder, ptr %31, i32 0, i32 28
  %33 = load ptr, ptr %7, align 8
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i32], ptr %32, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = xor i32 %30, %38
  %40 = and i32 %39, 65535
  store i32 %40, ptr %6, align 4
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds %struct._CMatchFinder, ptr %41, i32 0, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = load i32, ptr %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %43, i64 %45
  %47 = load i32, ptr %46, align 4
  store i32 %47, ptr %8, align 4
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct._CMatchFinder, ptr %48, i32 0, i32 1
  %50 = load i32, ptr %49, align 8
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct._CMatchFinder, ptr %51, i32 0, i32 8
  %53 = load ptr, ptr %52, align 8
  %54 = load i32, ptr %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %53, i64 %55
  store i32 %50, ptr %56, align 4
  %57 = load i32, ptr %8, align 4
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct._CMatchFinder, ptr %58, i32 0, i32 9
  %60 = load ptr, ptr %59, align 8
  %61 = load ptr, ptr %3, align 8
  %62 = getelementptr inbounds %struct._CMatchFinder, ptr %61, i32 0, i32 5
  %63 = load i32, ptr %62, align 8
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %60, i64 %64
  store i32 %57, ptr %65, align 4
  %66 = load ptr, ptr %3, align 8
  %67 = getelementptr inbounds %struct._CMatchFinder, ptr %66, i32 0, i32 5
  %68 = load i32, ptr %67, align 8
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 8
  %70 = load ptr, ptr %3, align 8
  %71 = getelementptr inbounds %struct._CMatchFinder, ptr %70, i32 0, i32 0
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds i8, ptr %72, i32 1
  store ptr %73, ptr %71, align 8
  %74 = load ptr, ptr %3, align 8
  %75 = getelementptr inbounds %struct._CMatchFinder, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 8
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 8
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct._CMatchFinder, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %17
  %83 = load ptr, ptr %3, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %83)
  br label %84

84:                                               ; preds = %82, %17
  br label %85

85:                                               ; preds = %84, %15
  %86 = load i32, ptr %4, align 4
  %87 = add i32 %86, -1
  store i32 %87, ptr %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %9, label %89, !llvm.loop !15

89:                                               ; preds = %85
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinder_CreateVTable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct._IMatchFinder, ptr %5, i32 0, i32 0
  store ptr @MatchFinder_Init, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct._IMatchFinder, ptr %7, i32 0, i32 1
  store ptr @MatchFinder_GetIndexByte, ptr %8, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct._IMatchFinder, ptr %9, i32 0, i32 2
  store ptr @MatchFinder_GetNumAvailableBytes, ptr %10, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct._IMatchFinder, ptr %11, i32 0, i32 3
  store ptr @MatchFinder_GetPointerToCurrentPos, ptr %12, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct._CMatchFinder, ptr %13, i32 0, i32 21
  %15 = load i32, ptr %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct._IMatchFinder, ptr %18, i32 0, i32 4
  store ptr @Hc4_MatchFinder_GetMatches, ptr %19, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct._IMatchFinder, ptr %20, i32 0, i32 5
  store ptr @Hc4_MatchFinder_Skip, ptr %21, align 8
  br label %49

22:                                               ; preds = %2
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct._CMatchFinder, ptr %23, i32 0, i32 18
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct._IMatchFinder, ptr %28, i32 0, i32 4
  store ptr @Bt2_MatchFinder_GetMatches, ptr %29, align 8
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct._IMatchFinder, ptr %30, i32 0, i32 5
  store ptr @Bt2_MatchFinder_Skip, ptr %31, align 8
  br label %48

32:                                               ; preds = %22
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct._CMatchFinder, ptr %33, i32 0, i32 18
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct._IMatchFinder, ptr %38, i32 0, i32 4
  store ptr @Bt3_MatchFinder_GetMatches, ptr %39, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds %struct._IMatchFinder, ptr %40, i32 0, i32 5
  store ptr @Bt3_MatchFinder_Skip, ptr %41, align 8
  br label %47

42:                                               ; preds = %32
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct._IMatchFinder, ptr %43, i32 0, i32 4
  store ptr @Bt4_MatchFinder_GetMatches, ptr %44, align 8
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds %struct._IMatchFinder, ptr %45, i32 0, i32 5
  store ptr @Bt4_MatchFinder_Skip, ptr %46, align 8
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %47, %27
  br label %49

49:                                               ; preds = %48, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Hc4_MatchFinder_GetMatches(ptr noundef %0, ptr noundef %1) #0 {
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
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct._CMatchFinder, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %12, align 4
  %20 = load i32, ptr %12, align 4
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load ptr, ptr %4, align 8
  call void @MatchFinder_MovePos(ptr noundef %23)
  store i32 0, ptr %3, align 4
  br label %311

24:                                               ; preds = %2
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct._CMatchFinder, ptr %25, i32 0, i32 0
  %27 = load ptr, ptr %26, align 8
  store ptr %27, ptr %14, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct._CMatchFinder, ptr %28, i32 0, i32 28
  %30 = load ptr, ptr %14, align 8
  %31 = getelementptr inbounds i8, ptr %30, i64 0
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds [256 x i32], ptr %29, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %14, align 8
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = xor i32 %35, %39
  store i32 %40, ptr %16, align 4
  %41 = load i32, ptr %16, align 4
  %42 = and i32 %41, 1023
  store i32 %42, ptr %6, align 4
  %43 = load i32, ptr %16, align 4
  %44 = load ptr, ptr %14, align 8
  %45 = getelementptr inbounds i8, ptr %44, i64 2
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 8
  %49 = xor i32 %43, %48
  %50 = and i32 %49, 65535
  store i32 %50, ptr %7, align 4
  %51 = load i32, ptr %16, align 4
  %52 = load ptr, ptr %14, align 8
  %53 = getelementptr inbounds i8, ptr %52, i64 2
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 8
  %57 = xor i32 %51, %56
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct._CMatchFinder, ptr %58, i32 0, i32 28
  %60 = load ptr, ptr %14, align 8
  %61 = getelementptr inbounds i8, ptr %60, i64 3
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds [256 x i32], ptr %59, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %65, 5
  %67 = xor i32 %57, %66
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds %struct._CMatchFinder, ptr %68, i32 0, i32 10
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %67, %70
  store i32 %71, ptr %13, align 4
  %72 = load ptr, ptr %4, align 8
  %73 = getelementptr inbounds %struct._CMatchFinder, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 8
  %75 = load ptr, ptr %4, align 8
  %76 = getelementptr inbounds %struct._CMatchFinder, ptr %75, i32 0, i32 8
  %77 = load ptr, ptr %76, align 8
  %78 = load i32, ptr %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %77, i64 %79
  %81 = load i32, ptr %80, align 4
  %82 = sub i32 %74, %81
  store i32 %82, ptr %8, align 4
  %83 = load ptr, ptr %4, align 8
  %84 = getelementptr inbounds %struct._CMatchFinder, ptr %83, i32 0, i32 1
  %85 = load i32, ptr %84, align 8
  %86 = load ptr, ptr %4, align 8
  %87 = getelementptr inbounds %struct._CMatchFinder, ptr %86, i32 0, i32 8
  %88 = load ptr, ptr %87, align 8
  %89 = load i32, ptr %7, align 4
  %90 = add i32 1024, %89
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, ptr %88, i64 %91
  %93 = load i32, ptr %92, align 4
  %94 = sub i32 %85, %93
  store i32 %94, ptr %9, align 4
  %95 = load ptr, ptr %4, align 8
  %96 = getelementptr inbounds %struct._CMatchFinder, ptr %95, i32 0, i32 8
  %97 = load ptr, ptr %96, align 8
  %98 = load i32, ptr %13, align 4
  %99 = add i32 66560, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %97, i64 %100
  %102 = load i32, ptr %101, align 4
  store i32 %102, ptr %15, align 4
  %103 = load ptr, ptr %4, align 8
  %104 = getelementptr inbounds %struct._CMatchFinder, ptr %103, i32 0, i32 1
  %105 = load i32, ptr %104, align 8
  %106 = load ptr, ptr %4, align 8
  %107 = getelementptr inbounds %struct._CMatchFinder, ptr %106, i32 0, i32 8
  %108 = load ptr, ptr %107, align 8
  %109 = load i32, ptr %13, align 4
  %110 = add i32 66560, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %108, i64 %111
  store i32 %105, ptr %112, align 4
  %113 = load ptr, ptr %4, align 8
  %114 = getelementptr inbounds %struct._CMatchFinder, ptr %113, i32 0, i32 8
  %115 = load ptr, ptr %114, align 8
  %116 = load i32, ptr %7, align 4
  %117 = add i32 1024, %116
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %115, i64 %118
  store i32 %105, ptr %119, align 4
  %120 = load ptr, ptr %4, align 8
  %121 = getelementptr inbounds %struct._CMatchFinder, ptr %120, i32 0, i32 8
  %122 = load ptr, ptr %121, align 8
  %123 = load i32, ptr %6, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %122, i64 %124
  store i32 %105, ptr %125, align 4
  store i32 1, ptr %10, align 4
  store i32 0, ptr %11, align 4
  %126 = load i32, ptr %8, align 4
  %127 = load ptr, ptr %4, align 8
  %128 = getelementptr inbounds %struct._CMatchFinder, ptr %127, i32 0, i32 6
  %129 = load i32, ptr %128, align 4
  %130 = icmp ult i32 %126, %129
  br i1 %130, label %131, label %150

131:                                              ; preds = %24
  %132 = load ptr, ptr %14, align 8
  %133 = load i32, ptr %8, align 4
  %134 = zext i32 %133 to i64
  %135 = sub i64 0, %134
  %136 = getelementptr inbounds i8, ptr %132, i64 %135
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = load ptr, ptr %14, align 8
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %138, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %131
  store i32 2, ptr %10, align 4
  %144 = load ptr, ptr %5, align 8
  %145 = getelementptr inbounds i32, ptr %144, i64 0
  store i32 2, ptr %145, align 4
  %146 = load i32, ptr %8, align 4
  %147 = sub i32 %146, 1
  %148 = load ptr, ptr %5, align 8
  %149 = getelementptr inbounds i32, ptr %148, i64 1
  store i32 %147, ptr %149, align 4
  store i32 2, ptr %11, align 4
  br label %150

150:                                              ; preds = %143, %131, %24
  %151 = load i32, ptr %8, align 4
  %152 = load i32, ptr %9, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %183

154:                                              ; preds = %150
  %155 = load i32, ptr %9, align 4
  %156 = load ptr, ptr %4, align 8
  %157 = getelementptr inbounds %struct._CMatchFinder, ptr %156, i32 0, i32 6
  %158 = load i32, ptr %157, align 4
  %159 = icmp ult i32 %155, %158
  br i1 %159, label %160, label %183

160:                                              ; preds = %154
  %161 = load ptr, ptr %14, align 8
  %162 = load i32, ptr %9, align 4
  %163 = zext i32 %162 to i64
  %164 = sub i64 0, %163
  %165 = getelementptr inbounds i8, ptr %161, i64 %164
  %166 = load i8, ptr %165, align 1
  %167 = zext i8 %166 to i32
  %168 = load ptr, ptr %14, align 8
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp eq i32 %167, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %160
  store i32 3, ptr %10, align 4
  %173 = load i32, ptr %9, align 4
  %174 = sub i32 %173, 1
  %175 = load ptr, ptr %5, align 8
  %176 = load i32, ptr %11, align 4
  %177 = add i32 %176, 1
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, ptr %175, i64 %178
  store i32 %174, ptr %179, align 4
  %180 = load i32, ptr %11, align 4
  %181 = add i32 %180, 2
  store i32 %181, ptr %11, align 4
  %182 = load i32, ptr %9, align 4
  store i32 %182, ptr %8, align 4
  br label %183

183:                                              ; preds = %172, %160, %154, %150
  %184 = load i32, ptr %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %254

186:                                              ; preds = %183
  br label %187

187:                                              ; preds = %210, %186
  %188 = load i32, ptr %10, align 4
  %189 = load i32, ptr %12, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %213

191:                                              ; preds = %187
  %192 = load ptr, ptr %14, align 8
  %193 = load i32, ptr %10, align 4
  %194 = zext i32 %193 to i64
  %195 = load i32, ptr %8, align 4
  %196 = zext i32 %195 to i64
  %197 = sub nsw i64 %194, %196
  %198 = getelementptr inbounds i8, ptr %192, i64 %197
  %199 = load i8, ptr %198, align 1
  %200 = zext i8 %199 to i32
  %201 = load ptr, ptr %14, align 8
  %202 = load i32, ptr %10, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i8, ptr %201, i64 %203
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp ne i32 %200, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %191
  br label %213

209:                                              ; preds = %191
  br label %210

210:                                              ; preds = %209
  %211 = load i32, ptr %10, align 4
  %212 = add i32 %211, 1
  store i32 %212, ptr %10, align 4
  br label %187, !llvm.loop !16

213:                                              ; preds = %208, %187
  %214 = load i32, ptr %10, align 4
  %215 = load ptr, ptr %5, align 8
  %216 = load i32, ptr %11, align 4
  %217 = sub i32 %216, 2
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, ptr %215, i64 %218
  store i32 %214, ptr %219, align 4
  %220 = load i32, ptr %10, align 4
  %221 = load i32, ptr %12, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %253

223:                                              ; preds = %213
  %224 = load i32, ptr %15, align 4
  %225 = load ptr, ptr %4, align 8
  %226 = getelementptr inbounds %struct._CMatchFinder, ptr %225, i32 0, i32 9
  %227 = load ptr, ptr %226, align 8
  %228 = load ptr, ptr %4, align 8
  %229 = getelementptr inbounds %struct._CMatchFinder, ptr %228, i32 0, i32 5
  %230 = load i32, ptr %229, align 8
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i32, ptr %227, i64 %231
  store i32 %224, ptr %232, align 4
  %233 = load ptr, ptr %4, align 8
  %234 = getelementptr inbounds %struct._CMatchFinder, ptr %233, i32 0, i32 5
  %235 = load i32, ptr %234, align 8
  %236 = add i32 %235, 1
  store i32 %236, ptr %234, align 8
  %237 = load ptr, ptr %4, align 8
  %238 = getelementptr inbounds %struct._CMatchFinder, ptr %237, i32 0, i32 0
  %239 = load ptr, ptr %238, align 8
  %240 = getelementptr inbounds i8, ptr %239, i32 1
  store ptr %240, ptr %238, align 8
  %241 = load ptr, ptr %4, align 8
  %242 = getelementptr inbounds %struct._CMatchFinder, ptr %241, i32 0, i32 1
  %243 = load i32, ptr %242, align 8
  %244 = add i32 %243, 1
  store i32 %244, ptr %242, align 8
  %245 = load ptr, ptr %4, align 8
  %246 = getelementptr inbounds %struct._CMatchFinder, ptr %245, i32 0, i32 2
  %247 = load i32, ptr %246, align 4
  %248 = icmp eq i32 %244, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %223
  %250 = load ptr, ptr %4, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %250)
  br label %251

251:                                              ; preds = %249, %223
  %252 = load i32, ptr %11, align 4
  store i32 %252, ptr %3, align 4
  br label %311

253:                                              ; preds = %213
  br label %254

254:                                              ; preds = %253, %183
  %255 = load i32, ptr %10, align 4
  %256 = icmp ult i32 %255, 3
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store i32 3, ptr %10, align 4
  br label %258

258:                                              ; preds = %257, %254
  %259 = load i32, ptr %12, align 4
  %260 = load i32, ptr %15, align 4
  %261 = load ptr, ptr %4, align 8
  %262 = getelementptr inbounds %struct._CMatchFinder, ptr %261, i32 0, i32 1
  %263 = load i32, ptr %262, align 8
  %264 = load ptr, ptr %4, align 8
  %265 = getelementptr inbounds %struct._CMatchFinder, ptr %264, i32 0, i32 0
  %266 = load ptr, ptr %265, align 8
  %267 = load ptr, ptr %4, align 8
  %268 = getelementptr inbounds %struct._CMatchFinder, ptr %267, i32 0, i32 9
  %269 = load ptr, ptr %268, align 8
  %270 = load ptr, ptr %4, align 8
  %271 = getelementptr inbounds %struct._CMatchFinder, ptr %270, i32 0, i32 5
  %272 = load i32, ptr %271, align 8
  %273 = load ptr, ptr %4, align 8
  %274 = getelementptr inbounds %struct._CMatchFinder, ptr %273, i32 0, i32 6
  %275 = load i32, ptr %274, align 4
  %276 = load ptr, ptr %4, align 8
  %277 = getelementptr inbounds %struct._CMatchFinder, ptr %276, i32 0, i32 11
  %278 = load i32, ptr %277, align 4
  %279 = load ptr, ptr %5, align 8
  %280 = load i32, ptr %11, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i32, ptr %279, i64 %281
  %283 = load i32, ptr %10, align 4
  %284 = call ptr @Hc_GetMatchesSpec(i32 noundef %259, i32 noundef %260, i32 noundef %263, ptr noundef %266, ptr noundef %269, i32 noundef %272, i32 noundef %275, i32 noundef %278, ptr noundef %282, i32 noundef %283)
  %285 = load ptr, ptr %5, align 8
  %286 = ptrtoint ptr %284 to i64
  %287 = ptrtoint ptr %285 to i64
  %288 = sub i64 %286, %287
  %289 = sdiv exact i64 %288, 4
  %290 = trunc i64 %289 to i32
  store i32 %290, ptr %11, align 4
  %291 = load ptr, ptr %4, align 8
  %292 = getelementptr inbounds %struct._CMatchFinder, ptr %291, i32 0, i32 5
  %293 = load i32, ptr %292, align 8
  %294 = add i32 %293, 1
  store i32 %294, ptr %292, align 8
  %295 = load ptr, ptr %4, align 8
  %296 = getelementptr inbounds %struct._CMatchFinder, ptr %295, i32 0, i32 0
  %297 = load ptr, ptr %296, align 8
  %298 = getelementptr inbounds i8, ptr %297, i32 1
  store ptr %298, ptr %296, align 8
  %299 = load ptr, ptr %4, align 8
  %300 = getelementptr inbounds %struct._CMatchFinder, ptr %299, i32 0, i32 1
  %301 = load i32, ptr %300, align 8
  %302 = add i32 %301, 1
  store i32 %302, ptr %300, align 8
  %303 = load ptr, ptr %4, align 8
  %304 = getelementptr inbounds %struct._CMatchFinder, ptr %303, i32 0, i32 2
  %305 = load i32, ptr %304, align 4
  %306 = icmp eq i32 %302, %305
  br i1 %306, label %307, label %309

307:                                              ; preds = %258
  %308 = load ptr, ptr %4, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %308)
  br label %309

309:                                              ; preds = %307, %258
  %310 = load i32, ptr %11, align 4
  store i32 %310, ptr %3, align 4
  br label %311

311:                                              ; preds = %309, %251, %22
  %312 = load i32, ptr %3, align 4
  ret i32 %312
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Hc4_MatchFinder_Skip(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %12

12:                                               ; preds = %127, %2
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct._CMatchFinder, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %7, align 4
  %16 = load i32, ptr %7, align 4
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load ptr, ptr %3, align 8
  call void @MatchFinder_MovePos(ptr noundef %19)
  br label %127

20:                                               ; preds = %12
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct._CMatchFinder, ptr %21, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  store ptr %23, ptr %9, align 8
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct._CMatchFinder, ptr %24, i32 0, i32 28
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 0
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [256 x i32], ptr %25, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %9, align 8
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = xor i32 %31, %35
  store i32 %36, ptr %11, align 4
  %37 = load i32, ptr %11, align 4
  %38 = and i32 %37, 1023
  store i32 %38, ptr %5, align 4
  %39 = load i32, ptr %11, align 4
  %40 = load ptr, ptr %9, align 8
  %41 = getelementptr inbounds i8, ptr %40, i64 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 8
  %45 = xor i32 %39, %44
  %46 = and i32 %45, 65535
  store i32 %46, ptr %6, align 4
  %47 = load i32, ptr %11, align 4
  %48 = load ptr, ptr %9, align 8
  %49 = getelementptr inbounds i8, ptr %48, i64 2
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 8
  %53 = xor i32 %47, %52
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr inbounds %struct._CMatchFinder, ptr %54, i32 0, i32 28
  %56 = load ptr, ptr %9, align 8
  %57 = getelementptr inbounds i8, ptr %56, i64 3
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds [256 x i32], ptr %55, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4
  %62 = shl i32 %61, 5
  %63 = xor i32 %53, %62
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %struct._CMatchFinder, ptr %64, i32 0, i32 10
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %63, %66
  store i32 %67, ptr %8, align 4
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds %struct._CMatchFinder, ptr %68, i32 0, i32 8
  %70 = load ptr, ptr %69, align 8
  %71 = load i32, ptr %8, align 4
  %72 = add i32 66560, %71
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, ptr %70, i64 %73
  %75 = load i32, ptr %74, align 4
  store i32 %75, ptr %10, align 4
  %76 = load ptr, ptr %3, align 8
  %77 = getelementptr inbounds %struct._CMatchFinder, ptr %76, i32 0, i32 1
  %78 = load i32, ptr %77, align 8
  %79 = load ptr, ptr %3, align 8
  %80 = getelementptr inbounds %struct._CMatchFinder, ptr %79, i32 0, i32 8
  %81 = load ptr, ptr %80, align 8
  %82 = load i32, ptr %8, align 4
  %83 = add i32 66560, %82
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %81, i64 %84
  store i32 %78, ptr %85, align 4
  %86 = load ptr, ptr %3, align 8
  %87 = getelementptr inbounds %struct._CMatchFinder, ptr %86, i32 0, i32 8
  %88 = load ptr, ptr %87, align 8
  %89 = load i32, ptr %6, align 4
  %90 = add i32 1024, %89
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, ptr %88, i64 %91
  store i32 %78, ptr %92, align 4
  %93 = load ptr, ptr %3, align 8
  %94 = getelementptr inbounds %struct._CMatchFinder, ptr %93, i32 0, i32 8
  %95 = load ptr, ptr %94, align 8
  %96 = load i32, ptr %5, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, ptr %95, i64 %97
  store i32 %78, ptr %98, align 4
  %99 = load i32, ptr %10, align 4
  %100 = load ptr, ptr %3, align 8
  %101 = getelementptr inbounds %struct._CMatchFinder, ptr %100, i32 0, i32 9
  %102 = load ptr, ptr %101, align 8
  %103 = load ptr, ptr %3, align 8
  %104 = getelementptr inbounds %struct._CMatchFinder, ptr %103, i32 0, i32 5
  %105 = load i32, ptr %104, align 8
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, ptr %102, i64 %106
  store i32 %99, ptr %107, align 4
  %108 = load ptr, ptr %3, align 8
  %109 = getelementptr inbounds %struct._CMatchFinder, ptr %108, i32 0, i32 5
  %110 = load i32, ptr %109, align 8
  %111 = add i32 %110, 1
  store i32 %111, ptr %109, align 8
  %112 = load ptr, ptr %3, align 8
  %113 = getelementptr inbounds %struct._CMatchFinder, ptr %112, i32 0, i32 0
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds i8, ptr %114, i32 1
  store ptr %115, ptr %113, align 8
  %116 = load ptr, ptr %3, align 8
  %117 = getelementptr inbounds %struct._CMatchFinder, ptr %116, i32 0, i32 1
  %118 = load i32, ptr %117, align 8
  %119 = add i32 %118, 1
  store i32 %119, ptr %117, align 8
  %120 = load ptr, ptr %3, align 8
  %121 = getelementptr inbounds %struct._CMatchFinder, ptr %120, i32 0, i32 2
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %119, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %20
  %125 = load ptr, ptr %3, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %125)
  br label %126

126:                                              ; preds = %124, %20
  br label %127

127:                                              ; preds = %126, %18
  %128 = load i32, ptr %4, align 4
  %129 = add i32 %128, -1
  store i32 %129, ptr %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %12, label %131, !llvm.loop !17

131:                                              ; preds = %127
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Bt2_MatchFinder_GetMatches(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct._CMatchFinder, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %7, align 4
  %14 = load i32, ptr %7, align 4
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8
  call void @MatchFinder_MovePos(ptr noundef %17)
  store i32 0, ptr %3, align 4
  br label %99

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct._CMatchFinder, ptr %19, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %9, align 8
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 0
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 8
  %31 = or i32 %25, %30
  store i32 %31, ptr %8, align 4
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct._CMatchFinder, ptr %32, i32 0, i32 8
  %34 = load ptr, ptr %33, align 8
  %35 = load i32, ptr %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %34, i64 %36
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %10, align 4
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct._CMatchFinder, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 8
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct._CMatchFinder, ptr %42, i32 0, i32 8
  %44 = load ptr, ptr %43, align 8
  %45 = load i32, ptr %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %44, i64 %46
  store i32 %41, ptr %47, align 4
  store i32 0, ptr %6, align 4
  %48 = load i32, ptr %7, align 4
  %49 = load i32, ptr %10, align 4
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds %struct._CMatchFinder, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 8
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds %struct._CMatchFinder, ptr %53, i32 0, i32 0
  %55 = load ptr, ptr %54, align 8
  %56 = load ptr, ptr %4, align 8
  %57 = getelementptr inbounds %struct._CMatchFinder, ptr %56, i32 0, i32 9
  %58 = load ptr, ptr %57, align 8
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds %struct._CMatchFinder, ptr %59, i32 0, i32 5
  %61 = load i32, ptr %60, align 8
  %62 = load ptr, ptr %4, align 8
  %63 = getelementptr inbounds %struct._CMatchFinder, ptr %62, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %4, align 8
  %66 = getelementptr inbounds %struct._CMatchFinder, ptr %65, i32 0, i32 11
  %67 = load i32, ptr %66, align 4
  %68 = load ptr, ptr %5, align 8
  %69 = load i32, ptr %6, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %68, i64 %70
  %72 = call ptr @GetMatchesSpec1(i32 noundef %48, i32 noundef %49, i32 noundef %52, ptr noundef %55, ptr noundef %58, i32 noundef %61, i32 noundef %64, i32 noundef %67, ptr noundef %71, i32 noundef 1)
  %73 = load ptr, ptr %5, align 8
  %74 = ptrtoint ptr %72 to i64
  %75 = ptrtoint ptr %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  %78 = trunc i64 %77 to i32
  store i32 %78, ptr %6, align 4
  %79 = load ptr, ptr %4, align 8
  %80 = getelementptr inbounds %struct._CMatchFinder, ptr %79, i32 0, i32 5
  %81 = load i32, ptr %80, align 8
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 8
  %83 = load ptr, ptr %4, align 8
  %84 = getelementptr inbounds %struct._CMatchFinder, ptr %83, i32 0, i32 0
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds i8, ptr %85, i32 1
  store ptr %86, ptr %84, align 8
  %87 = load ptr, ptr %4, align 8
  %88 = getelementptr inbounds %struct._CMatchFinder, ptr %87, i32 0, i32 1
  %89 = load i32, ptr %88, align 8
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 8
  %91 = load ptr, ptr %4, align 8
  %92 = getelementptr inbounds %struct._CMatchFinder, ptr %91, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %18
  %96 = load ptr, ptr %4, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %96)
  br label %97

97:                                               ; preds = %95, %18
  %98 = load i32, ptr %6, align 4
  store i32 %98, ptr %3, align 4
  br label %99

99:                                               ; preds = %97, %16
  %100 = load i32, ptr %3, align 4
  ret i32 %100
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Bt2_MatchFinder_Skip(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %9

9:                                                ; preds = %86, %2
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct._CMatchFinder, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %5, align 4
  %13 = load i32, ptr %5, align 4
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load ptr, ptr %3, align 8
  call void @MatchFinder_MovePos(ptr noundef %16)
  br label %86

17:                                               ; preds = %9
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct._CMatchFinder, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  store ptr %20, ptr %7, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds i8, ptr %21, i64 0
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load ptr, ptr %7, align 8
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 8
  %30 = or i32 %24, %29
  store i32 %30, ptr %6, align 4
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct._CMatchFinder, ptr %31, i32 0, i32 8
  %33 = load ptr, ptr %32, align 8
  %34 = load i32, ptr %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %33, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %8, align 4
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct._CMatchFinder, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 8
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds %struct._CMatchFinder, ptr %41, i32 0, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = load i32, ptr %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %43, i64 %45
  store i32 %40, ptr %46, align 4
  %47 = load i32, ptr %5, align 4
  %48 = load i32, ptr %8, align 4
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct._CMatchFinder, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 8
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct._CMatchFinder, ptr %52, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %3, align 8
  %56 = getelementptr inbounds %struct._CMatchFinder, ptr %55, i32 0, i32 9
  %57 = load ptr, ptr %56, align 8
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct._CMatchFinder, ptr %58, i32 0, i32 5
  %60 = load i32, ptr %59, align 8
  %61 = load ptr, ptr %3, align 8
  %62 = getelementptr inbounds %struct._CMatchFinder, ptr %61, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %struct._CMatchFinder, ptr %64, i32 0, i32 11
  %66 = load i32, ptr %65, align 4
  call void @SkipMatchesSpec(i32 noundef %47, i32 noundef %48, i32 noundef %51, ptr noundef %54, ptr noundef %57, i32 noundef %60, i32 noundef %63, i32 noundef %66)
  %67 = load ptr, ptr %3, align 8
  %68 = getelementptr inbounds %struct._CMatchFinder, ptr %67, i32 0, i32 5
  %69 = load i32, ptr %68, align 8
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 8
  %71 = load ptr, ptr %3, align 8
  %72 = getelementptr inbounds %struct._CMatchFinder, ptr %71, i32 0, i32 0
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds i8, ptr %73, i32 1
  store ptr %74, ptr %72, align 8
  %75 = load ptr, ptr %3, align 8
  %76 = getelementptr inbounds %struct._CMatchFinder, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 8
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 8
  %79 = load ptr, ptr %3, align 8
  %80 = getelementptr inbounds %struct._CMatchFinder, ptr %79, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %17
  %84 = load ptr, ptr %3, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %84)
  br label %85

85:                                               ; preds = %83, %17
  br label %86

86:                                               ; preds = %85, %15
  %87 = load i32, ptr %4, align 4
  %88 = add i32 %87, -1
  store i32 %88, ptr %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %9, label %90, !llvm.loop !18

90:                                               ; preds = %86
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Bt3_MatchFinder_GetMatches(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct._CMatchFinder, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %10, align 4
  %18 = load i32, ptr %10, align 4
  %19 = icmp ult i32 %18, 3
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load ptr, ptr %4, align 8
  call void @MatchFinder_MovePos(ptr noundef %21)
  store i32 0, ptr %3, align 4
  br label %237

22:                                               ; preds = %2
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct._CMatchFinder, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %12, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct._CMatchFinder, ptr %26, i32 0, i32 28
  %28 = load ptr, ptr %12, align 8
  %29 = getelementptr inbounds i8, ptr %28, i64 0
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i32], ptr %27, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %12, align 8
  %35 = getelementptr inbounds i8, ptr %34, i64 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = xor i32 %33, %37
  store i32 %38, ptr %14, align 4
  %39 = load i32, ptr %14, align 4
  %40 = and i32 %39, 1023
  store i32 %40, ptr %6, align 4
  %41 = load i32, ptr %14, align 4
  %42 = load ptr, ptr %12, align 8
  %43 = getelementptr inbounds i8, ptr %42, i64 2
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 %45, 8
  %47 = xor i32 %41, %46
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct._CMatchFinder, ptr %48, i32 0, i32 10
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %47, %50
  store i32 %51, ptr %11, align 4
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds %struct._CMatchFinder, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 8
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds %struct._CMatchFinder, ptr %55, i32 0, i32 8
  %57 = load ptr, ptr %56, align 8
  %58 = load i32, ptr %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %57, i64 %59
  %61 = load i32, ptr %60, align 4
  %62 = sub i32 %54, %61
  store i32 %62, ptr %7, align 4
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds %struct._CMatchFinder, ptr %63, i32 0, i32 8
  %65 = load ptr, ptr %64, align 8
  %66 = load i32, ptr %11, align 4
  %67 = add i32 1024, %66
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %65, i64 %68
  %70 = load i32, ptr %69, align 4
  store i32 %70, ptr %13, align 4
  %71 = load ptr, ptr %4, align 8
  %72 = getelementptr inbounds %struct._CMatchFinder, ptr %71, i32 0, i32 1
  %73 = load i32, ptr %72, align 8
  %74 = load ptr, ptr %4, align 8
  %75 = getelementptr inbounds %struct._CMatchFinder, ptr %74, i32 0, i32 8
  %76 = load ptr, ptr %75, align 8
  %77 = load i32, ptr %11, align 4
  %78 = add i32 1024, %77
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %76, i64 %79
  store i32 %73, ptr %80, align 4
  %81 = load ptr, ptr %4, align 8
  %82 = getelementptr inbounds %struct._CMatchFinder, ptr %81, i32 0, i32 8
  %83 = load ptr, ptr %82, align 8
  %84 = load i32, ptr %6, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, ptr %83, i64 %85
  store i32 %73, ptr %86, align 4
  store i32 2, ptr %8, align 4
  store i32 0, ptr %9, align 4
  %87 = load i32, ptr %7, align 4
  %88 = load ptr, ptr %4, align 8
  %89 = getelementptr inbounds %struct._CMatchFinder, ptr %88, i32 0, i32 6
  %90 = load i32, ptr %89, align 4
  %91 = icmp ult i32 %87, %90
  br i1 %91, label %92, label %184

92:                                               ; preds = %22
  %93 = load ptr, ptr %12, align 8
  %94 = load i32, ptr %7, align 4
  %95 = zext i32 %94 to i64
  %96 = sub i64 0, %95
  %97 = getelementptr inbounds i8, ptr %93, i64 %96
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load ptr, ptr %12, align 8
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %184

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %128, %104
  %106 = load i32, ptr %8, align 4
  %107 = load i32, ptr %10, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %105
  %110 = load ptr, ptr %12, align 8
  %111 = load i32, ptr %8, align 4
  %112 = zext i32 %111 to i64
  %113 = load i32, ptr %7, align 4
  %114 = zext i32 %113 to i64
  %115 = sub nsw i64 %112, %114
  %116 = getelementptr inbounds i8, ptr %110, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = load ptr, ptr %12, align 8
  %120 = load i32, ptr %8, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8, ptr %119, i64 %121
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp ne i32 %118, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %109
  br label %131

127:                                              ; preds = %109
  br label %128

128:                                              ; preds = %127
  %129 = load i32, ptr %8, align 4
  %130 = add i32 %129, 1
  store i32 %130, ptr %8, align 4
  br label %105, !llvm.loop !19

131:                                              ; preds = %126, %105
  %132 = load i32, ptr %8, align 4
  %133 = load ptr, ptr %5, align 8
  %134 = getelementptr inbounds i32, ptr %133, i64 0
  store i32 %132, ptr %134, align 4
  %135 = load i32, ptr %7, align 4
  %136 = sub i32 %135, 1
  %137 = load ptr, ptr %5, align 8
  %138 = getelementptr inbounds i32, ptr %137, i64 1
  store i32 %136, ptr %138, align 4
  store i32 2, ptr %9, align 4
  %139 = load i32, ptr %8, align 4
  %140 = load i32, ptr %10, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %183

142:                                              ; preds = %131
  %143 = load i32, ptr %10, align 4
  %144 = load i32, ptr %13, align 4
  %145 = load ptr, ptr %4, align 8
  %146 = getelementptr inbounds %struct._CMatchFinder, ptr %145, i32 0, i32 1
  %147 = load i32, ptr %146, align 8
  %148 = load ptr, ptr %4, align 8
  %149 = getelementptr inbounds %struct._CMatchFinder, ptr %148, i32 0, i32 0
  %150 = load ptr, ptr %149, align 8
  %151 = load ptr, ptr %4, align 8
  %152 = getelementptr inbounds %struct._CMatchFinder, ptr %151, i32 0, i32 9
  %153 = load ptr, ptr %152, align 8
  %154 = load ptr, ptr %4, align 8
  %155 = getelementptr inbounds %struct._CMatchFinder, ptr %154, i32 0, i32 5
  %156 = load i32, ptr %155, align 8
  %157 = load ptr, ptr %4, align 8
  %158 = getelementptr inbounds %struct._CMatchFinder, ptr %157, i32 0, i32 6
  %159 = load i32, ptr %158, align 4
  %160 = load ptr, ptr %4, align 8
  %161 = getelementptr inbounds %struct._CMatchFinder, ptr %160, i32 0, i32 11
  %162 = load i32, ptr %161, align 4
  call void @SkipMatchesSpec(i32 noundef %143, i32 noundef %144, i32 noundef %147, ptr noundef %150, ptr noundef %153, i32 noundef %156, i32 noundef %159, i32 noundef %162)
  %163 = load ptr, ptr %4, align 8
  %164 = getelementptr inbounds %struct._CMatchFinder, ptr %163, i32 0, i32 5
  %165 = load i32, ptr %164, align 8
  %166 = add i32 %165, 1
  store i32 %166, ptr %164, align 8
  %167 = load ptr, ptr %4, align 8
  %168 = getelementptr inbounds %struct._CMatchFinder, ptr %167, i32 0, i32 0
  %169 = load ptr, ptr %168, align 8
  %170 = getelementptr inbounds i8, ptr %169, i32 1
  store ptr %170, ptr %168, align 8
  %171 = load ptr, ptr %4, align 8
  %172 = getelementptr inbounds %struct._CMatchFinder, ptr %171, i32 0, i32 1
  %173 = load i32, ptr %172, align 8
  %174 = add i32 %173, 1
  store i32 %174, ptr %172, align 8
  %175 = load ptr, ptr %4, align 8
  %176 = getelementptr inbounds %struct._CMatchFinder, ptr %175, i32 0, i32 2
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %174, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %142
  %180 = load ptr, ptr %4, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %180)
  br label %181

181:                                              ; preds = %179, %142
  %182 = load i32, ptr %9, align 4
  store i32 %182, ptr %3, align 4
  br label %237

183:                                              ; preds = %131
  br label %184

184:                                              ; preds = %183, %92, %22
  %185 = load i32, ptr %10, align 4
  %186 = load i32, ptr %13, align 4
  %187 = load ptr, ptr %4, align 8
  %188 = getelementptr inbounds %struct._CMatchFinder, ptr %187, i32 0, i32 1
  %189 = load i32, ptr %188, align 8
  %190 = load ptr, ptr %4, align 8
  %191 = getelementptr inbounds %struct._CMatchFinder, ptr %190, i32 0, i32 0
  %192 = load ptr, ptr %191, align 8
  %193 = load ptr, ptr %4, align 8
  %194 = getelementptr inbounds %struct._CMatchFinder, ptr %193, i32 0, i32 9
  %195 = load ptr, ptr %194, align 8
  %196 = load ptr, ptr %4, align 8
  %197 = getelementptr inbounds %struct._CMatchFinder, ptr %196, i32 0, i32 5
  %198 = load i32, ptr %197, align 8
  %199 = load ptr, ptr %4, align 8
  %200 = getelementptr inbounds %struct._CMatchFinder, ptr %199, i32 0, i32 6
  %201 = load i32, ptr %200, align 4
  %202 = load ptr, ptr %4, align 8
  %203 = getelementptr inbounds %struct._CMatchFinder, ptr %202, i32 0, i32 11
  %204 = load i32, ptr %203, align 4
  %205 = load ptr, ptr %5, align 8
  %206 = load i32, ptr %9, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, ptr %205, i64 %207
  %209 = load i32, ptr %8, align 4
  %210 = call ptr @GetMatchesSpec1(i32 noundef %185, i32 noundef %186, i32 noundef %189, ptr noundef %192, ptr noundef %195, i32 noundef %198, i32 noundef %201, i32 noundef %204, ptr noundef %208, i32 noundef %209)
  %211 = load ptr, ptr %5, align 8
  %212 = ptrtoint ptr %210 to i64
  %213 = ptrtoint ptr %211 to i64
  %214 = sub i64 %212, %213
  %215 = sdiv exact i64 %214, 4
  %216 = trunc i64 %215 to i32
  store i32 %216, ptr %9, align 4
  %217 = load ptr, ptr %4, align 8
  %218 = getelementptr inbounds %struct._CMatchFinder, ptr %217, i32 0, i32 5
  %219 = load i32, ptr %218, align 8
  %220 = add i32 %219, 1
  store i32 %220, ptr %218, align 8
  %221 = load ptr, ptr %4, align 8
  %222 = getelementptr inbounds %struct._CMatchFinder, ptr %221, i32 0, i32 0
  %223 = load ptr, ptr %222, align 8
  %224 = getelementptr inbounds i8, ptr %223, i32 1
  store ptr %224, ptr %222, align 8
  %225 = load ptr, ptr %4, align 8
  %226 = getelementptr inbounds %struct._CMatchFinder, ptr %225, i32 0, i32 1
  %227 = load i32, ptr %226, align 8
  %228 = add i32 %227, 1
  store i32 %228, ptr %226, align 8
  %229 = load ptr, ptr %4, align 8
  %230 = getelementptr inbounds %struct._CMatchFinder, ptr %229, i32 0, i32 2
  %231 = load i32, ptr %230, align 4
  %232 = icmp eq i32 %228, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %184
  %234 = load ptr, ptr %4, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %234)
  br label %235

235:                                              ; preds = %233, %184
  %236 = load i32, ptr %9, align 4
  store i32 %236, ptr %3, align 4
  br label %237

237:                                              ; preds = %235, %181, %20
  %238 = load i32, ptr %3, align 4
  ret i32 %238
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Bt3_MatchFinder_Skip(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %11

11:                                               ; preds = %112, %2
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct._CMatchFinder, ptr %12, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %6, align 4
  %15 = load i32, ptr %6, align 4
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load ptr, ptr %3, align 8
  call void @MatchFinder_MovePos(ptr noundef %18)
  br label %112

19:                                               ; preds = %11
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct._CMatchFinder, ptr %20, i32 0, i32 0
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %8, align 8
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct._CMatchFinder, ptr %23, i32 0, i32 28
  %25 = load ptr, ptr %8, align 8
  %26 = getelementptr inbounds i8, ptr %25, i64 0
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i32], ptr %24, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %8, align 8
  %32 = getelementptr inbounds i8, ptr %31, i64 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = xor i32 %30, %34
  store i32 %35, ptr %10, align 4
  %36 = load i32, ptr %10, align 4
  %37 = and i32 %36, 1023
  store i32 %37, ptr %5, align 4
  %38 = load i32, ptr %10, align 4
  %39 = load ptr, ptr %8, align 8
  %40 = getelementptr inbounds i8, ptr %39, i64 2
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 8
  %44 = xor i32 %38, %43
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds %struct._CMatchFinder, ptr %45, i32 0, i32 10
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %44, %47
  store i32 %48, ptr %7, align 4
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct._CMatchFinder, ptr %49, i32 0, i32 8
  %51 = load ptr, ptr %50, align 8
  %52 = load i32, ptr %7, align 4
  %53 = add i32 1024, %52
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %51, i64 %54
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr %9, align 4
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds %struct._CMatchFinder, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 8
  %60 = load ptr, ptr %3, align 8
  %61 = getelementptr inbounds %struct._CMatchFinder, ptr %60, i32 0, i32 8
  %62 = load ptr, ptr %61, align 8
  %63 = load i32, ptr %7, align 4
  %64 = add i32 1024, %63
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %62, i64 %65
  store i32 %59, ptr %66, align 4
  %67 = load ptr, ptr %3, align 8
  %68 = getelementptr inbounds %struct._CMatchFinder, ptr %67, i32 0, i32 8
  %69 = load ptr, ptr %68, align 8
  %70 = load i32, ptr %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %69, i64 %71
  store i32 %59, ptr %72, align 4
  %73 = load i32, ptr %6, align 4
  %74 = load i32, ptr %9, align 4
  %75 = load ptr, ptr %3, align 8
  %76 = getelementptr inbounds %struct._CMatchFinder, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 8
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct._CMatchFinder, ptr %78, i32 0, i32 0
  %80 = load ptr, ptr %79, align 8
  %81 = load ptr, ptr %3, align 8
  %82 = getelementptr inbounds %struct._CMatchFinder, ptr %81, i32 0, i32 9
  %83 = load ptr, ptr %82, align 8
  %84 = load ptr, ptr %3, align 8
  %85 = getelementptr inbounds %struct._CMatchFinder, ptr %84, i32 0, i32 5
  %86 = load i32, ptr %85, align 8
  %87 = load ptr, ptr %3, align 8
  %88 = getelementptr inbounds %struct._CMatchFinder, ptr %87, i32 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %3, align 8
  %91 = getelementptr inbounds %struct._CMatchFinder, ptr %90, i32 0, i32 11
  %92 = load i32, ptr %91, align 4
  call void @SkipMatchesSpec(i32 noundef %73, i32 noundef %74, i32 noundef %77, ptr noundef %80, ptr noundef %83, i32 noundef %86, i32 noundef %89, i32 noundef %92)
  %93 = load ptr, ptr %3, align 8
  %94 = getelementptr inbounds %struct._CMatchFinder, ptr %93, i32 0, i32 5
  %95 = load i32, ptr %94, align 8
  %96 = add i32 %95, 1
  store i32 %96, ptr %94, align 8
  %97 = load ptr, ptr %3, align 8
  %98 = getelementptr inbounds %struct._CMatchFinder, ptr %97, i32 0, i32 0
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds i8, ptr %99, i32 1
  store ptr %100, ptr %98, align 8
  %101 = load ptr, ptr %3, align 8
  %102 = getelementptr inbounds %struct._CMatchFinder, ptr %101, i32 0, i32 1
  %103 = load i32, ptr %102, align 8
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 8
  %105 = load ptr, ptr %3, align 8
  %106 = getelementptr inbounds %struct._CMatchFinder, ptr %105, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %19
  %110 = load ptr, ptr %3, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %110)
  br label %111

111:                                              ; preds = %109, %19
  br label %112

112:                                              ; preds = %111, %17
  %113 = load i32, ptr %4, align 4
  %114 = add i32 %113, -1
  store i32 %114, ptr %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %11, label %116, !llvm.loop !20

116:                                              ; preds = %112
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Bt4_MatchFinder_GetMatches(ptr noundef %0, ptr noundef %1) #0 {
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
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct._CMatchFinder, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %12, align 4
  %20 = load i32, ptr %12, align 4
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load ptr, ptr %4, align 8
  call void @MatchFinder_MovePos(ptr noundef %23)
  store i32 0, ptr %3, align 4
  br label %322

24:                                               ; preds = %2
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct._CMatchFinder, ptr %25, i32 0, i32 0
  %27 = load ptr, ptr %26, align 8
  store ptr %27, ptr %14, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct._CMatchFinder, ptr %28, i32 0, i32 28
  %30 = load ptr, ptr %14, align 8
  %31 = getelementptr inbounds i8, ptr %30, i64 0
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds [256 x i32], ptr %29, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %14, align 8
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = xor i32 %35, %39
  store i32 %40, ptr %16, align 4
  %41 = load i32, ptr %16, align 4
  %42 = and i32 %41, 1023
  store i32 %42, ptr %6, align 4
  %43 = load i32, ptr %16, align 4
  %44 = load ptr, ptr %14, align 8
  %45 = getelementptr inbounds i8, ptr %44, i64 2
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 8
  %49 = xor i32 %43, %48
  %50 = and i32 %49, 65535
  store i32 %50, ptr %7, align 4
  %51 = load i32, ptr %16, align 4
  %52 = load ptr, ptr %14, align 8
  %53 = getelementptr inbounds i8, ptr %52, i64 2
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 8
  %57 = xor i32 %51, %56
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct._CMatchFinder, ptr %58, i32 0, i32 28
  %60 = load ptr, ptr %14, align 8
  %61 = getelementptr inbounds i8, ptr %60, i64 3
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds [256 x i32], ptr %59, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %65, 5
  %67 = xor i32 %57, %66
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds %struct._CMatchFinder, ptr %68, i32 0, i32 10
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %67, %70
  store i32 %71, ptr %13, align 4
  %72 = load ptr, ptr %4, align 8
  %73 = getelementptr inbounds %struct._CMatchFinder, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 8
  %75 = load ptr, ptr %4, align 8
  %76 = getelementptr inbounds %struct._CMatchFinder, ptr %75, i32 0, i32 8
  %77 = load ptr, ptr %76, align 8
  %78 = load i32, ptr %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %77, i64 %79
  %81 = load i32, ptr %80, align 4
  %82 = sub i32 %74, %81
  store i32 %82, ptr %8, align 4
  %83 = load ptr, ptr %4, align 8
  %84 = getelementptr inbounds %struct._CMatchFinder, ptr %83, i32 0, i32 1
  %85 = load i32, ptr %84, align 8
  %86 = load ptr, ptr %4, align 8
  %87 = getelementptr inbounds %struct._CMatchFinder, ptr %86, i32 0, i32 8
  %88 = load ptr, ptr %87, align 8
  %89 = load i32, ptr %7, align 4
  %90 = add i32 1024, %89
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, ptr %88, i64 %91
  %93 = load i32, ptr %92, align 4
  %94 = sub i32 %85, %93
  store i32 %94, ptr %9, align 4
  %95 = load ptr, ptr %4, align 8
  %96 = getelementptr inbounds %struct._CMatchFinder, ptr %95, i32 0, i32 8
  %97 = load ptr, ptr %96, align 8
  %98 = load i32, ptr %13, align 4
  %99 = add i32 66560, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %97, i64 %100
  %102 = load i32, ptr %101, align 4
  store i32 %102, ptr %15, align 4
  %103 = load ptr, ptr %4, align 8
  %104 = getelementptr inbounds %struct._CMatchFinder, ptr %103, i32 0, i32 1
  %105 = load i32, ptr %104, align 8
  %106 = load ptr, ptr %4, align 8
  %107 = getelementptr inbounds %struct._CMatchFinder, ptr %106, i32 0, i32 8
  %108 = load ptr, ptr %107, align 8
  %109 = load i32, ptr %13, align 4
  %110 = add i32 66560, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %108, i64 %111
  store i32 %105, ptr %112, align 4
  %113 = load ptr, ptr %4, align 8
  %114 = getelementptr inbounds %struct._CMatchFinder, ptr %113, i32 0, i32 8
  %115 = load ptr, ptr %114, align 8
  %116 = load i32, ptr %7, align 4
  %117 = add i32 1024, %116
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %115, i64 %118
  store i32 %105, ptr %119, align 4
  %120 = load ptr, ptr %4, align 8
  %121 = getelementptr inbounds %struct._CMatchFinder, ptr %120, i32 0, i32 8
  %122 = load ptr, ptr %121, align 8
  %123 = load i32, ptr %6, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %122, i64 %124
  store i32 %105, ptr %125, align 4
  store i32 1, ptr %10, align 4
  store i32 0, ptr %11, align 4
  %126 = load i32, ptr %8, align 4
  %127 = load ptr, ptr %4, align 8
  %128 = getelementptr inbounds %struct._CMatchFinder, ptr %127, i32 0, i32 6
  %129 = load i32, ptr %128, align 4
  %130 = icmp ult i32 %126, %129
  br i1 %130, label %131, label %150

131:                                              ; preds = %24
  %132 = load ptr, ptr %14, align 8
  %133 = load i32, ptr %8, align 4
  %134 = zext i32 %133 to i64
  %135 = sub i64 0, %134
  %136 = getelementptr inbounds i8, ptr %132, i64 %135
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = load ptr, ptr %14, align 8
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %138, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %131
  store i32 2, ptr %10, align 4
  %144 = load ptr, ptr %5, align 8
  %145 = getelementptr inbounds i32, ptr %144, i64 0
  store i32 2, ptr %145, align 4
  %146 = load i32, ptr %8, align 4
  %147 = sub i32 %146, 1
  %148 = load ptr, ptr %5, align 8
  %149 = getelementptr inbounds i32, ptr %148, i64 1
  store i32 %147, ptr %149, align 4
  store i32 2, ptr %11, align 4
  br label %150

150:                                              ; preds = %143, %131, %24
  %151 = load i32, ptr %8, align 4
  %152 = load i32, ptr %9, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %183

154:                                              ; preds = %150
  %155 = load i32, ptr %9, align 4
  %156 = load ptr, ptr %4, align 8
  %157 = getelementptr inbounds %struct._CMatchFinder, ptr %156, i32 0, i32 6
  %158 = load i32, ptr %157, align 4
  %159 = icmp ult i32 %155, %158
  br i1 %159, label %160, label %183

160:                                              ; preds = %154
  %161 = load ptr, ptr %14, align 8
  %162 = load i32, ptr %9, align 4
  %163 = zext i32 %162 to i64
  %164 = sub i64 0, %163
  %165 = getelementptr inbounds i8, ptr %161, i64 %164
  %166 = load i8, ptr %165, align 1
  %167 = zext i8 %166 to i32
  %168 = load ptr, ptr %14, align 8
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp eq i32 %167, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %160
  store i32 3, ptr %10, align 4
  %173 = load i32, ptr %9, align 4
  %174 = sub i32 %173, 1
  %175 = load ptr, ptr %5, align 8
  %176 = load i32, ptr %11, align 4
  %177 = add i32 %176, 1
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, ptr %175, i64 %178
  store i32 %174, ptr %179, align 4
  %180 = load i32, ptr %11, align 4
  %181 = add i32 %180, 2
  store i32 %181, ptr %11, align 4
  %182 = load i32, ptr %9, align 4
  store i32 %182, ptr %8, align 4
  br label %183

183:                                              ; preds = %172, %160, %154, %150
  %184 = load i32, ptr %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %265

186:                                              ; preds = %183
  br label %187

187:                                              ; preds = %210, %186
  %188 = load i32, ptr %10, align 4
  %189 = load i32, ptr %12, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %213

191:                                              ; preds = %187
  %192 = load ptr, ptr %14, align 8
  %193 = load i32, ptr %10, align 4
  %194 = zext i32 %193 to i64
  %195 = load i32, ptr %8, align 4
  %196 = zext i32 %195 to i64
  %197 = sub nsw i64 %194, %196
  %198 = getelementptr inbounds i8, ptr %192, i64 %197
  %199 = load i8, ptr %198, align 1
  %200 = zext i8 %199 to i32
  %201 = load ptr, ptr %14, align 8
  %202 = load i32, ptr %10, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i8, ptr %201, i64 %203
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp ne i32 %200, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %191
  br label %213

209:                                              ; preds = %191
  br label %210

210:                                              ; preds = %209
  %211 = load i32, ptr %10, align 4
  %212 = add i32 %211, 1
  store i32 %212, ptr %10, align 4
  br label %187, !llvm.loop !21

213:                                              ; preds = %208, %187
  %214 = load i32, ptr %10, align 4
  %215 = load ptr, ptr %5, align 8
  %216 = load i32, ptr %11, align 4
  %217 = sub i32 %216, 2
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, ptr %215, i64 %218
  store i32 %214, ptr %219, align 4
  %220 = load i32, ptr %10, align 4
  %221 = load i32, ptr %12, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %264

223:                                              ; preds = %213
  %224 = load i32, ptr %12, align 4
  %225 = load i32, ptr %15, align 4
  %226 = load ptr, ptr %4, align 8
  %227 = getelementptr inbounds %struct._CMatchFinder, ptr %226, i32 0, i32 1
  %228 = load i32, ptr %227, align 8
  %229 = load ptr, ptr %4, align 8
  %230 = getelementptr inbounds %struct._CMatchFinder, ptr %229, i32 0, i32 0
  %231 = load ptr, ptr %230, align 8
  %232 = load ptr, ptr %4, align 8
  %233 = getelementptr inbounds %struct._CMatchFinder, ptr %232, i32 0, i32 9
  %234 = load ptr, ptr %233, align 8
  %235 = load ptr, ptr %4, align 8
  %236 = getelementptr inbounds %struct._CMatchFinder, ptr %235, i32 0, i32 5
  %237 = load i32, ptr %236, align 8
  %238 = load ptr, ptr %4, align 8
  %239 = getelementptr inbounds %struct._CMatchFinder, ptr %238, i32 0, i32 6
  %240 = load i32, ptr %239, align 4
  %241 = load ptr, ptr %4, align 8
  %242 = getelementptr inbounds %struct._CMatchFinder, ptr %241, i32 0, i32 11
  %243 = load i32, ptr %242, align 4
  call void @SkipMatchesSpec(i32 noundef %224, i32 noundef %225, i32 noundef %228, ptr noundef %231, ptr noundef %234, i32 noundef %237, i32 noundef %240, i32 noundef %243)
  %244 = load ptr, ptr %4, align 8
  %245 = getelementptr inbounds %struct._CMatchFinder, ptr %244, i32 0, i32 5
  %246 = load i32, ptr %245, align 8
  %247 = add i32 %246, 1
  store i32 %247, ptr %245, align 8
  %248 = load ptr, ptr %4, align 8
  %249 = getelementptr inbounds %struct._CMatchFinder, ptr %248, i32 0, i32 0
  %250 = load ptr, ptr %249, align 8
  %251 = getelementptr inbounds i8, ptr %250, i32 1
  store ptr %251, ptr %249, align 8
  %252 = load ptr, ptr %4, align 8
  %253 = getelementptr inbounds %struct._CMatchFinder, ptr %252, i32 0, i32 1
  %254 = load i32, ptr %253, align 8
  %255 = add i32 %254, 1
  store i32 %255, ptr %253, align 8
  %256 = load ptr, ptr %4, align 8
  %257 = getelementptr inbounds %struct._CMatchFinder, ptr %256, i32 0, i32 2
  %258 = load i32, ptr %257, align 4
  %259 = icmp eq i32 %255, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %223
  %261 = load ptr, ptr %4, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %261)
  br label %262

262:                                              ; preds = %260, %223
  %263 = load i32, ptr %11, align 4
  store i32 %263, ptr %3, align 4
  br label %322

264:                                              ; preds = %213
  br label %265

265:                                              ; preds = %264, %183
  %266 = load i32, ptr %10, align 4
  %267 = icmp ult i32 %266, 3
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  store i32 3, ptr %10, align 4
  br label %269

269:                                              ; preds = %268, %265
  %270 = load i32, ptr %12, align 4
  %271 = load i32, ptr %15, align 4
  %272 = load ptr, ptr %4, align 8
  %273 = getelementptr inbounds %struct._CMatchFinder, ptr %272, i32 0, i32 1
  %274 = load i32, ptr %273, align 8
  %275 = load ptr, ptr %4, align 8
  %276 = getelementptr inbounds %struct._CMatchFinder, ptr %275, i32 0, i32 0
  %277 = load ptr, ptr %276, align 8
  %278 = load ptr, ptr %4, align 8
  %279 = getelementptr inbounds %struct._CMatchFinder, ptr %278, i32 0, i32 9
  %280 = load ptr, ptr %279, align 8
  %281 = load ptr, ptr %4, align 8
  %282 = getelementptr inbounds %struct._CMatchFinder, ptr %281, i32 0, i32 5
  %283 = load i32, ptr %282, align 8
  %284 = load ptr, ptr %4, align 8
  %285 = getelementptr inbounds %struct._CMatchFinder, ptr %284, i32 0, i32 6
  %286 = load i32, ptr %285, align 4
  %287 = load ptr, ptr %4, align 8
  %288 = getelementptr inbounds %struct._CMatchFinder, ptr %287, i32 0, i32 11
  %289 = load i32, ptr %288, align 4
  %290 = load ptr, ptr %5, align 8
  %291 = load i32, ptr %11, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds i32, ptr %290, i64 %292
  %294 = load i32, ptr %10, align 4
  %295 = call ptr @GetMatchesSpec1(i32 noundef %270, i32 noundef %271, i32 noundef %274, ptr noundef %277, ptr noundef %280, i32 noundef %283, i32 noundef %286, i32 noundef %289, ptr noundef %293, i32 noundef %294)
  %296 = load ptr, ptr %5, align 8
  %297 = ptrtoint ptr %295 to i64
  %298 = ptrtoint ptr %296 to i64
  %299 = sub i64 %297, %298
  %300 = sdiv exact i64 %299, 4
  %301 = trunc i64 %300 to i32
  store i32 %301, ptr %11, align 4
  %302 = load ptr, ptr %4, align 8
  %303 = getelementptr inbounds %struct._CMatchFinder, ptr %302, i32 0, i32 5
  %304 = load i32, ptr %303, align 8
  %305 = add i32 %304, 1
  store i32 %305, ptr %303, align 8
  %306 = load ptr, ptr %4, align 8
  %307 = getelementptr inbounds %struct._CMatchFinder, ptr %306, i32 0, i32 0
  %308 = load ptr, ptr %307, align 8
  %309 = getelementptr inbounds i8, ptr %308, i32 1
  store ptr %309, ptr %307, align 8
  %310 = load ptr, ptr %4, align 8
  %311 = getelementptr inbounds %struct._CMatchFinder, ptr %310, i32 0, i32 1
  %312 = load i32, ptr %311, align 8
  %313 = add i32 %312, 1
  store i32 %313, ptr %311, align 8
  %314 = load ptr, ptr %4, align 8
  %315 = getelementptr inbounds %struct._CMatchFinder, ptr %314, i32 0, i32 2
  %316 = load i32, ptr %315, align 4
  %317 = icmp eq i32 %313, %316
  br i1 %317, label %318, label %320

318:                                              ; preds = %269
  %319 = load ptr, ptr %4, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %319)
  br label %320

320:                                              ; preds = %318, %269
  %321 = load i32, ptr %11, align 4
  store i32 %321, ptr %3, align 4
  br label %322

322:                                              ; preds = %320, %262, %22
  %323 = load i32, ptr %3, align 4
  ret i32 %323
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Bt4_MatchFinder_Skip(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %12

12:                                               ; preds = %141, %2
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct._CMatchFinder, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %7, align 4
  %16 = load i32, ptr %7, align 4
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load ptr, ptr %3, align 8
  call void @MatchFinder_MovePos(ptr noundef %19)
  br label %141

20:                                               ; preds = %12
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct._CMatchFinder, ptr %21, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  store ptr %23, ptr %9, align 8
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct._CMatchFinder, ptr %24, i32 0, i32 28
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 0
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [256 x i32], ptr %25, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %9, align 8
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = xor i32 %31, %35
  store i32 %36, ptr %11, align 4
  %37 = load i32, ptr %11, align 4
  %38 = and i32 %37, 1023
  store i32 %38, ptr %5, align 4
  %39 = load i32, ptr %11, align 4
  %40 = load ptr, ptr %9, align 8
  %41 = getelementptr inbounds i8, ptr %40, i64 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 8
  %45 = xor i32 %39, %44
  %46 = and i32 %45, 65535
  store i32 %46, ptr %6, align 4
  %47 = load i32, ptr %11, align 4
  %48 = load ptr, ptr %9, align 8
  %49 = getelementptr inbounds i8, ptr %48, i64 2
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 8
  %53 = xor i32 %47, %52
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr inbounds %struct._CMatchFinder, ptr %54, i32 0, i32 28
  %56 = load ptr, ptr %9, align 8
  %57 = getelementptr inbounds i8, ptr %56, i64 3
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds [256 x i32], ptr %55, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4
  %62 = shl i32 %61, 5
  %63 = xor i32 %53, %62
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %struct._CMatchFinder, ptr %64, i32 0, i32 10
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %63, %66
  store i32 %67, ptr %8, align 4
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds %struct._CMatchFinder, ptr %68, i32 0, i32 8
  %70 = load ptr, ptr %69, align 8
  %71 = load i32, ptr %8, align 4
  %72 = add i32 66560, %71
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, ptr %70, i64 %73
  %75 = load i32, ptr %74, align 4
  store i32 %75, ptr %10, align 4
  %76 = load ptr, ptr %3, align 8
  %77 = getelementptr inbounds %struct._CMatchFinder, ptr %76, i32 0, i32 1
  %78 = load i32, ptr %77, align 8
  %79 = load ptr, ptr %3, align 8
  %80 = getelementptr inbounds %struct._CMatchFinder, ptr %79, i32 0, i32 8
  %81 = load ptr, ptr %80, align 8
  %82 = load i32, ptr %6, align 4
  %83 = add i32 1024, %82
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %81, i64 %84
  store i32 %78, ptr %85, align 4
  %86 = load ptr, ptr %3, align 8
  %87 = getelementptr inbounds %struct._CMatchFinder, ptr %86, i32 0, i32 8
  %88 = load ptr, ptr %87, align 8
  %89 = load i32, ptr %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %88, i64 %90
  store i32 %78, ptr %91, align 4
  %92 = load ptr, ptr %3, align 8
  %93 = getelementptr inbounds %struct._CMatchFinder, ptr %92, i32 0, i32 1
  %94 = load i32, ptr %93, align 8
  %95 = load ptr, ptr %3, align 8
  %96 = getelementptr inbounds %struct._CMatchFinder, ptr %95, i32 0, i32 8
  %97 = load ptr, ptr %96, align 8
  %98 = load i32, ptr %8, align 4
  %99 = add i32 66560, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %97, i64 %100
  store i32 %94, ptr %101, align 4
  %102 = load i32, ptr %7, align 4
  %103 = load i32, ptr %10, align 4
  %104 = load ptr, ptr %3, align 8
  %105 = getelementptr inbounds %struct._CMatchFinder, ptr %104, i32 0, i32 1
  %106 = load i32, ptr %105, align 8
  %107 = load ptr, ptr %3, align 8
  %108 = getelementptr inbounds %struct._CMatchFinder, ptr %107, i32 0, i32 0
  %109 = load ptr, ptr %108, align 8
  %110 = load ptr, ptr %3, align 8
  %111 = getelementptr inbounds %struct._CMatchFinder, ptr %110, i32 0, i32 9
  %112 = load ptr, ptr %111, align 8
  %113 = load ptr, ptr %3, align 8
  %114 = getelementptr inbounds %struct._CMatchFinder, ptr %113, i32 0, i32 5
  %115 = load i32, ptr %114, align 8
  %116 = load ptr, ptr %3, align 8
  %117 = getelementptr inbounds %struct._CMatchFinder, ptr %116, i32 0, i32 6
  %118 = load i32, ptr %117, align 4
  %119 = load ptr, ptr %3, align 8
  %120 = getelementptr inbounds %struct._CMatchFinder, ptr %119, i32 0, i32 11
  %121 = load i32, ptr %120, align 4
  call void @SkipMatchesSpec(i32 noundef %102, i32 noundef %103, i32 noundef %106, ptr noundef %109, ptr noundef %112, i32 noundef %115, i32 noundef %118, i32 noundef %121)
  %122 = load ptr, ptr %3, align 8
  %123 = getelementptr inbounds %struct._CMatchFinder, ptr %122, i32 0, i32 5
  %124 = load i32, ptr %123, align 8
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 8
  %126 = load ptr, ptr %3, align 8
  %127 = getelementptr inbounds %struct._CMatchFinder, ptr %126, i32 0, i32 0
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr inbounds i8, ptr %128, i32 1
  store ptr %129, ptr %127, align 8
  %130 = load ptr, ptr %3, align 8
  %131 = getelementptr inbounds %struct._CMatchFinder, ptr %130, i32 0, i32 1
  %132 = load i32, ptr %131, align 8
  %133 = add i32 %132, 1
  store i32 %133, ptr %131, align 8
  %134 = load ptr, ptr %3, align 8
  %135 = getelementptr inbounds %struct._CMatchFinder, ptr %134, i32 0, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %133, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %20
  %139 = load ptr, ptr %3, align 8
  call void @MatchFinder_CheckLimits(ptr noundef %139)
  br label %140

140:                                              ; preds = %138, %20
  br label %141

141:                                              ; preds = %140, %18
  %142 = load i32, ptr %4, align 4
  %143 = add i32 %142, -1
  store i32 %143, ptr %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %12, label %145, !llvm.loop !22

145:                                              ; preds = %141
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MatchFinder_Normalize(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call i32 @MatchFinder_GetSubValue(ptr noundef %4)
  store i32 %5, ptr %3, align 4
  %6 = load i32, ptr %3, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct._CMatchFinder, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct._CMatchFinder, ptr %10, i32 0, i32 25
  %12 = load i32, ptr %11, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct._CMatchFinder, ptr %13, i32 0, i32 26
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %12, %15
  call void @MatchFinder_Normalize3(i32 noundef %6, ptr noundef %9, i32 noundef %16)
  %17 = load ptr, ptr %2, align 8
  %18 = load i32, ptr %3, align 4
  call void @MatchFinder_ReduceOffsets(ptr noundef %17, i32 noundef %18)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MatchFinder_CheckAndMoveAndRead(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 @MatchFinder_NeedMove(ptr noundef %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  call void @MatchFinder_MoveBlock(ptr noundef %7)
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr %2, align 8
  call void @MatchFinder_ReadBlock(ptr noundef %9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MatchFinder_GetSubValue(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMatchFinder, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct._CMatchFinder, ptr %6, i32 0, i32 23
  %8 = load i32, ptr %7, align 8
  %9 = sub i32 %5, %8
  %10 = sub i32 %9, 1
  %11 = and i32 %10, -1024
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
