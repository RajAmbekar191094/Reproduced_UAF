; ModuleID = './lzma/C/LzFindMt.c'
source_filename = "./lzma/C/LzFindMt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._CMatchFinderMt = type { ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct._CMtSync, [128 x i8], ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, %struct._CMtSync, ptr, ptr }
%struct._CMatchFinder = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [256 x i32] }
%struct.ISzAlloc = type { ptr, ptr }
%struct._IMatchFinder = type { ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MtSync_Construct(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMtSync, ptr %3, i32 0, i32 0
  store i32 0, ptr %4, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct._CMtSync, ptr %5, i32 0, i32 10
  store i32 0, ptr %6, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct._CMtSync, ptr %7, i32 0, i32 11
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct._CMtSync, ptr %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct._CThread, ptr %10, i32 0, i32 1
  store i32 0, ptr %11, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct._CMtSync, ptr %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct._CEvent, ptr %13, i32 0, i32 0
  store i32 0, ptr %14, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct._CMtSync, ptr %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct._CEvent, ptr %16, i32 0, i32 0
  store i32 0, ptr %17, align 8
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct._CMtSync, ptr %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct._CEvent, ptr %19, i32 0, i32 0
  store i32 0, ptr %20, align 8
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct._CMtSync, ptr %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct._CSemaphore, ptr %22, i32 0, i32 0
  store i32 0, ptr %23, align 8
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct._CMtSync, ptr %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct._CSemaphore, ptr %25, i32 0, i32 0
  store i32 0, ptr %26, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MtSync_GetNextBlock(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMtSync, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct._CMtSync, ptr %8, i32 0, i32 13
  store i32 1, ptr %9, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct._CMtSync, ptr %10, i32 0, i32 1
  store i32 0, ptr %11, align 4
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct._CMtSync, ptr %12, i32 0, i32 3
  store i32 0, ptr %13, align 4
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct._CMtSync, ptr %14, i32 0, i32 2
  store i32 0, ptr %15, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct._CMtSync, ptr %16, i32 0, i32 6
  %18 = call i32 @Event_Reset(ptr noundef %17)
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct._CMtSync, ptr %19, i32 0, i32 7
  %21 = call i32 @Event_Reset(ptr noundef %20)
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct._CMtSync, ptr %22, i32 0, i32 5
  %24 = call i32 @Event_Set(ptr noundef %23)
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct._CMtSync, ptr %25, i32 0, i32 6
  %27 = call i32 @Event_Wait(ptr noundef %26)
  br label %42

28:                                               ; preds = %1
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct._CMtSync, ptr %29, i32 0, i32 12
  %31 = getelementptr inbounds %struct.CCriticalSection, ptr %30, i32 0, i32 0
  %32 = call i32 @pthread_mutex_unlock(ptr noundef %31) #3
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct._CMtSync, ptr %33, i32 0, i32 11
  store i32 0, ptr %34, align 4
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct._CMtSync, ptr %35, i32 0, i32 13
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 8
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct._CMtSync, ptr %39, i32 0, i32 8
  %41 = call i32 @Semaphore_ReleaseN(ptr noundef %40, i32 noundef 1)
  br label %42

42:                                               ; preds = %28, %7
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct._CMtSync, ptr %43, i32 0, i32 9
  %45 = call i32 @Semaphore_Wait(ptr noundef %44)
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct._CMtSync, ptr %46, i32 0, i32 12
  %48 = getelementptr inbounds %struct.CCriticalSection, ptr %47, i32 0, i32 0
  %49 = call i32 @pthread_mutex_lock(ptr noundef %48) #3
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct._CMtSync, ptr %50, i32 0, i32 11
  store i32 1, ptr %51, align 4
  ret void
}

declare i32 @Event_Reset(ptr noundef) #1

declare i32 @Event_Set(ptr noundef) #1

declare i32 @Event_Wait(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #2

declare i32 @Semaphore_ReleaseN(ptr noundef, i32 noundef) #1

declare i32 @Semaphore_Wait(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MtSync_StopWriting(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct._CMtSync, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  store i32 %6, ptr %3, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct._CMtSync, ptr %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct._CThread, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct._CMtSync, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %1
  br label %56

18:                                               ; preds = %12
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct._CMtSync, ptr %19, i32 0, i32 3
  store i32 1, ptr %20, align 4
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct._CMtSync, ptr %21, i32 0, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct._CMtSync, ptr %26, i32 0, i32 12
  %28 = getelementptr inbounds %struct.CCriticalSection, ptr %27, i32 0, i32 0
  %29 = call i32 @pthread_mutex_unlock(ptr noundef %28) #3
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct._CMtSync, ptr %30, i32 0, i32 11
  store i32 0, ptr %31, align 4
  br label %32

32:                                               ; preds = %25, %18
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct._CMtSync, ptr %33, i32 0, i32 8
  %35 = call i32 @Semaphore_ReleaseN(ptr noundef %34, i32 noundef 1)
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct._CMtSync, ptr %36, i32 0, i32 7
  %38 = call i32 @Event_Wait(ptr noundef %37)
  br label %39

39:                                               ; preds = %46, %32
  %40 = load i32, ptr %3, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %3, align 4
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds %struct._CMtSync, ptr %42, i32 0, i32 13
  %44 = load i32, ptr %43, align 8
  %45 = icmp ne i32 %40, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr inbounds %struct._CMtSync, ptr %47, i32 0, i32 9
  %49 = call i32 @Semaphore_Wait(ptr noundef %48)
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct._CMtSync, ptr %50, i32 0, i32 8
  %52 = call i32 @Semaphore_ReleaseN(ptr noundef %51, i32 noundef 1)
  br label %39, !llvm.loop !6

53:                                               ; preds = %39
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr inbounds %struct._CMtSync, ptr %54, i32 0, i32 1
  store i32 1, ptr %55, align 4
  br label %56

56:                                               ; preds = %53, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MtSync_Destruct(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMtSync, ptr %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct._CThread, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  call void @MtSync_StopWriting(ptr noundef %9)
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct._CMtSync, ptr %10, i32 0, i32 2
  store i32 1, ptr %11, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct._CMtSync, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct._CMtSync, ptr %17, i32 0, i32 5
  %19 = call i32 @Event_Set(ptr noundef %18)
  br label %20

20:                                               ; preds = %16, %8
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct._CMtSync, ptr %21, i32 0, i32 4
  %23 = call i32 @Thread_Wait(ptr noundef %22)
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct._CMtSync, ptr %24, i32 0, i32 4
  %26 = call i32 @Thread_Close(ptr noundef %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct._CMtSync, ptr %28, i32 0, i32 10
  %30 = load i32, ptr %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct._CMtSync, ptr %33, i32 0, i32 12
  %35 = getelementptr inbounds %struct.CCriticalSection, ptr %34, i32 0, i32 0
  %36 = call i32 @pthread_mutex_destroy(ptr noundef %35) #3
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct._CMtSync, ptr %37, i32 0, i32 10
  store i32 0, ptr %38, align 8
  br label %39

39:                                               ; preds = %32, %27
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct._CMtSync, ptr %40, i32 0, i32 5
  %42 = call i32 @Event_Close(ptr noundef %41)
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct._CMtSync, ptr %43, i32 0, i32 6
  %45 = call i32 @Event_Close(ptr noundef %44)
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct._CMtSync, ptr %46, i32 0, i32 7
  %48 = call i32 @Event_Close(ptr noundef %47)
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct._CMtSync, ptr %49, i32 0, i32 8
  %51 = call i32 @Semaphore_Close(ptr noundef %50)
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds %struct._CMtSync, ptr %52, i32 0, i32 9
  %54 = call i32 @Semaphore_Close(ptr noundef %53)
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr inbounds %struct._CMtSync, ptr %55, i32 0, i32 0
  store i32 0, ptr %56, align 8
  ret void
}

declare i32 @Thread_Wait(ptr noundef) #1

declare i32 @Thread_Close(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) #2

declare i32 @Event_Close(ptr noundef) #1

declare i32 @Semaphore_Close(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MtSync_Init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMtSync, ptr %3, i32 0, i32 1
  store i32 1, ptr %4, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HashThreadFunc(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct._CMatchFinderMt, ptr %11, i32 0, i32 25
  store ptr %12, ptr %3, align 8
  br label %13

13:                                               ; preds = %208, %1
  store i32 0, ptr %4, align 4
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct._CMtSync, ptr %14, i32 0, i32 5
  %16 = call i32 @Event_Wait(ptr noundef %15)
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct._CMtSync, ptr %17, i32 0, i32 6
  %19 = call i32 @Event_Set(ptr noundef %18)
  br label %20

20:                                               ; preds = %193, %45, %13
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct._CMtSync, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  ret void

26:                                               ; preds = %20
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct._CMtSync, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, ptr %4, align 4
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct._CMtSync, ptr %33, i32 0, i32 13
  store i32 %32, ptr %34, align 8
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct._CMtSync, ptr %35, i32 0, i32 7
  %37 = call i32 @Event_Set(ptr noundef %36)
  br label %208

38:                                               ; preds = %26
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct._CMatchFinderMt, ptr %39, i32 0, i32 27
  %41 = load ptr, ptr %40, align 8
  store ptr %41, ptr %5, align 8
  %42 = load ptr, ptr %5, align 8
  %43 = call i32 @MatchFinder_NeedMove(ptr noundef %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %91

45:                                               ; preds = %38
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct._CMatchFinderMt, ptr %46, i32 0, i32 11
  %48 = getelementptr inbounds %struct._CMtSync, ptr %47, i32 0, i32 12
  %49 = getelementptr inbounds %struct.CCriticalSection, ptr %48, i32 0, i32 0
  %50 = call i32 @pthread_mutex_lock(ptr noundef %49) #3
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds %struct._CMatchFinderMt, ptr %51, i32 0, i32 25
  %53 = getelementptr inbounds %struct._CMtSync, ptr %52, i32 0, i32 12
  %54 = getelementptr inbounds %struct.CCriticalSection, ptr %53, i32 0, i32 0
  %55 = call i32 @pthread_mutex_lock(ptr noundef %54) #3
  %56 = load ptr, ptr %5, align 8
  %57 = call ptr @MatchFinder_GetPointerToCurrentPos(ptr noundef %56)
  store ptr %57, ptr %6, align 8
  %58 = load ptr, ptr %5, align 8
  call void @MatchFinder_MoveBlock(ptr noundef %58)
  %59 = load ptr, ptr %5, align 8
  %60 = call ptr @MatchFinder_GetPointerToCurrentPos(ptr noundef %59)
  store ptr %60, ptr %7, align 8
  %61 = load ptr, ptr %6, align 8
  %62 = load ptr, ptr %7, align 8
  %63 = ptrtoint ptr %61 to i64
  %64 = ptrtoint ptr %62 to i64
  %65 = sub i64 %63, %64
  %66 = load ptr, ptr %2, align 8
  %67 = getelementptr inbounds %struct._CMatchFinderMt, ptr %66, i32 0, i32 0
  %68 = load ptr, ptr %67, align 8
  %69 = sub i64 0, %65
  %70 = getelementptr inbounds i8, ptr %68, i64 %69
  store ptr %70, ptr %67, align 8
  %71 = load ptr, ptr %6, align 8
  %72 = load ptr, ptr %7, align 8
  %73 = ptrtoint ptr %71 to i64
  %74 = ptrtoint ptr %72 to i64
  %75 = sub i64 %73, %74
  %76 = load ptr, ptr %2, align 8
  %77 = getelementptr inbounds %struct._CMatchFinderMt, ptr %76, i32 0, i32 21
  %78 = load ptr, ptr %77, align 8
  %79 = sub i64 0, %75
  %80 = getelementptr inbounds i8, ptr %78, i64 %79
  store ptr %80, ptr %77, align 8
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr inbounds %struct._CMatchFinderMt, ptr %81, i32 0, i32 11
  %83 = getelementptr inbounds %struct._CMtSync, ptr %82, i32 0, i32 12
  %84 = getelementptr inbounds %struct.CCriticalSection, ptr %83, i32 0, i32 0
  %85 = call i32 @pthread_mutex_unlock(ptr noundef %84) #3
  %86 = load ptr, ptr %2, align 8
  %87 = getelementptr inbounds %struct._CMatchFinderMt, ptr %86, i32 0, i32 25
  %88 = getelementptr inbounds %struct._CMtSync, ptr %87, i32 0, i32 12
  %89 = getelementptr inbounds %struct.CCriticalSection, ptr %88, i32 0, i32 0
  %90 = call i32 @pthread_mutex_unlock(ptr noundef %89) #3
  br label %20

91:                                               ; preds = %38
  %92 = load ptr, ptr %3, align 8
  %93 = getelementptr inbounds %struct._CMtSync, ptr %92, i32 0, i32 8
  %94 = call i32 @Semaphore_Wait(ptr noundef %93)
  %95 = load ptr, ptr %5, align 8
  call void @MatchFinder_ReadIfRequired(ptr noundef %95)
  %96 = load ptr, ptr %5, align 8
  %97 = getelementptr inbounds %struct._CMatchFinder, ptr %96, i32 0, i32 1
  %98 = load i32, ptr %97, align 8
  %99 = icmp ugt i32 %98, -8193
  br i1 %99, label %100, label %124

100:                                              ; preds = %91
  %101 = load ptr, ptr %5, align 8
  %102 = getelementptr inbounds %struct._CMatchFinder, ptr %101, i32 0, i32 1
  %103 = load i32, ptr %102, align 8
  %104 = load ptr, ptr %5, align 8
  %105 = getelementptr inbounds %struct._CMatchFinder, ptr %104, i32 0, i32 23
  %106 = load i32, ptr %105, align 8
  %107 = sub i32 %103, %106
  %108 = sub i32 %107, 1
  store i32 %108, ptr %8, align 4
  %109 = load ptr, ptr %5, align 8
  %110 = load i32, ptr %8, align 4
  call void @MatchFinder_ReduceOffsets(ptr noundef %109, i32 noundef %110)
  %111 = load i32, ptr %8, align 4
  %112 = load ptr, ptr %5, align 8
  %113 = getelementptr inbounds %struct._CMatchFinder, ptr %112, i32 0, i32 8
  %114 = load ptr, ptr %113, align 8
  %115 = load ptr, ptr %5, align 8
  %116 = getelementptr inbounds %struct._CMatchFinder, ptr %115, i32 0, i32 24
  %117 = load i32, ptr %116, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %114, i64 %118
  %120 = load ptr, ptr %5, align 8
  %121 = getelementptr inbounds %struct._CMatchFinder, ptr %120, i32 0, i32 10
  %122 = load i32, ptr %121, align 8
  %123 = add i32 %122, 1
  call void @MatchFinder_Normalize3(i32 noundef %111, ptr noundef %119, i32 noundef %123)
  br label %124

124:                                              ; preds = %100, %91
  %125 = load ptr, ptr %2, align 8
  %126 = getelementptr inbounds %struct._CMatchFinderMt, ptr %125, i32 0, i32 13
  %127 = load ptr, ptr %126, align 8
  %128 = load i32, ptr %4, align 4
  %129 = add i32 %128, 1
  store i32 %129, ptr %4, align 4
  %130 = and i32 %128, 7
  %131 = mul i32 %130, 8192
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %127, i64 %132
  store ptr %133, ptr %9, align 8
  %134 = load ptr, ptr %5, align 8
  %135 = getelementptr inbounds %struct._CMatchFinder, ptr %134, i32 0, i32 3
  %136 = load i32, ptr %135, align 8
  %137 = load ptr, ptr %5, align 8
  %138 = getelementptr inbounds %struct._CMatchFinder, ptr %137, i32 0, i32 1
  %139 = load i32, ptr %138, align 8
  %140 = sub i32 %136, %139
  store i32 %140, ptr %10, align 4
  %141 = load ptr, ptr %9, align 8
  %142 = getelementptr inbounds i32, ptr %141, i64 0
  store i32 2, ptr %142, align 4
  %143 = load i32, ptr %10, align 4
  %144 = load ptr, ptr %9, align 8
  %145 = getelementptr inbounds i32, ptr %144, i64 1
  store i32 %143, ptr %145, align 4
  %146 = load i32, ptr %10, align 4
  %147 = load ptr, ptr %5, align 8
  %148 = getelementptr inbounds %struct._CMatchFinder, ptr %147, i32 0, i32 18
  %149 = load i32, ptr %148, align 8
  %150 = icmp uge i32 %146, %149
  br i1 %150, label %151, label %193

151:                                              ; preds = %124
  %152 = load i32, ptr %10, align 4
  %153 = load ptr, ptr %5, align 8
  %154 = getelementptr inbounds %struct._CMatchFinder, ptr %153, i32 0, i32 18
  %155 = load i32, ptr %154, align 8
  %156 = sub i32 %152, %155
  %157 = add i32 %156, 1
  store i32 %157, ptr %10, align 4
  %158 = load i32, ptr %10, align 4
  %159 = icmp ugt i32 %158, 8190
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  store i32 8190, ptr %10, align 4
  br label %161

161:                                              ; preds = %160, %151
  %162 = load ptr, ptr %2, align 8
  %163 = getelementptr inbounds %struct._CMatchFinderMt, ptr %162, i32 0, i32 26
  %164 = load ptr, ptr %163, align 8
  %165 = load ptr, ptr %5, align 8
  %166 = getelementptr inbounds %struct._CMatchFinder, ptr %165, i32 0, i32 0
  %167 = load ptr, ptr %166, align 8
  %168 = load ptr, ptr %5, align 8
  %169 = getelementptr inbounds %struct._CMatchFinder, ptr %168, i32 0, i32 1
  %170 = load i32, ptr %169, align 8
  %171 = load ptr, ptr %5, align 8
  %172 = getelementptr inbounds %struct._CMatchFinder, ptr %171, i32 0, i32 8
  %173 = load ptr, ptr %172, align 8
  %174 = load ptr, ptr %5, align 8
  %175 = getelementptr inbounds %struct._CMatchFinder, ptr %174, i32 0, i32 24
  %176 = load i32, ptr %175, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, ptr %173, i64 %177
  %179 = load ptr, ptr %5, align 8
  %180 = getelementptr inbounds %struct._CMatchFinder, ptr %179, i32 0, i32 10
  %181 = load i32, ptr %180, align 8
  %182 = load ptr, ptr %9, align 8
  %183 = getelementptr inbounds i32, ptr %182, i64 2
  %184 = load i32, ptr %10, align 4
  %185 = load ptr, ptr %5, align 8
  %186 = getelementptr inbounds %struct._CMatchFinder, ptr %185, i32 0, i32 28
  %187 = getelementptr inbounds [256 x i32], ptr %186, i64 0, i64 0
  call void %164(ptr noundef %167, i32 noundef %170, ptr noundef %178, i32 noundef %181, ptr noundef %183, i32 noundef %184, ptr noundef %187)
  %188 = load i32, ptr %10, align 4
  %189 = load ptr, ptr %9, align 8
  %190 = getelementptr inbounds i32, ptr %189, i64 0
  %191 = load i32, ptr %190, align 4
  %192 = add i32 %191, %188
  store i32 %192, ptr %190, align 4
  br label %193

193:                                              ; preds = %161, %124
  %194 = load i32, ptr %10, align 4
  %195 = load ptr, ptr %5, align 8
  %196 = getelementptr inbounds %struct._CMatchFinder, ptr %195, i32 0, i32 1
  %197 = load i32, ptr %196, align 8
  %198 = add i32 %197, %194
  store i32 %198, ptr %196, align 8
  %199 = load i32, ptr %10, align 4
  %200 = load ptr, ptr %5, align 8
  %201 = getelementptr inbounds %struct._CMatchFinder, ptr %200, i32 0, i32 0
  %202 = load ptr, ptr %201, align 8
  %203 = zext i32 %199 to i64
  %204 = getelementptr inbounds i8, ptr %202, i64 %203
  store ptr %204, ptr %201, align 8
  %205 = load ptr, ptr %3, align 8
  %206 = getelementptr inbounds %struct._CMtSync, ptr %205, i32 0, i32 9
  %207 = call i32 @Semaphore_ReleaseN(ptr noundef %206, i32 noundef 1)
  br label %20

208:                                              ; preds = %31
  br label %13
}

declare i32 @MatchFinder_NeedMove(ptr noundef) #1

declare ptr @MatchFinder_GetPointerToCurrentPos(ptr noundef) #1

declare void @MatchFinder_MoveBlock(ptr noundef) #1

declare void @MatchFinder_ReadIfRequired(ptr noundef) #1

declare void @MatchFinder_ReduceOffsets(ptr noundef, i32 noundef) #1

declare void @MatchFinder_Normalize3(i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinderMt_GetNextBlock_Hash(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMatchFinderMt, ptr %3, i32 0, i32 25
  call void @MtSync_GetNextBlock(ptr noundef %4)
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct._CMatchFinderMt, ptr %5, i32 0, i32 25
  %7 = getelementptr inbounds %struct._CMtSync, ptr %6, i32 0, i32 13
  %8 = load i32, ptr %7, align 8
  %9 = sub i32 %8, 1
  %10 = and i32 %9, 7
  %11 = mul i32 %10, 8192
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct._CMatchFinderMt, ptr %12, i32 0, i32 14
  store i32 %11, ptr %13, align 8
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct._CMatchFinderMt, ptr %14, i32 0, i32 15
  store i32 %11, ptr %15, align 4
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct._CMatchFinderMt, ptr %16, i32 0, i32 13
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct._CMatchFinderMt, ptr %19, i32 0, i32 14
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds i32, ptr %18, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct._CMatchFinderMt, ptr %26, i32 0, i32 15
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %25
  store i32 %29, ptr %27, align 4
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct._CMatchFinderMt, ptr %30, i32 0, i32 13
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct._CMatchFinderMt, ptr %33, i32 0, i32 14
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 8
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds i32, ptr %32, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct._CMatchFinderMt, ptr %40, i32 0, i32 16
  store i32 %39, ptr %41, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BtGetMatches(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %5, align 4
  store i32 2, ptr %6, align 4
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct._CMatchFinderMt, ptr %15, i32 0, i32 18
  %17 = load i32, ptr %16, align 8
  %18 = mul i32 %17, 2
  %19 = sub i32 16384, %18
  store i32 %19, ptr %7, align 4
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct._CMatchFinderMt, ptr %20, i32 0, i32 16
  %22 = load i32, ptr %21, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds i32, ptr %23, i64 1
  store i32 %22, ptr %24, align 4
  br label %25

25:                                               ; preds = %217, %53, %2
  %26 = load i32, ptr %6, align 4
  %27 = load i32, ptr %7, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %221

29:                                               ; preds = %25
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct._CMatchFinderMt, ptr %30, i32 0, i32 14
  %32 = load i32, ptr %31, align 8
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct._CMatchFinderMt, ptr %33, i32 0, i32 15
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %29
  %38 = load ptr, ptr %3, align 8
  call void @MatchFinderMt_GetNextBlock_Hash(ptr noundef %38)
  %39 = load i32, ptr %5, align 4
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds %struct._CMatchFinderMt, ptr %40, i32 0, i32 16
  %42 = load i32, ptr %41, align 8
  %43 = add i32 %39, %42
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds i32, ptr %44, i64 1
  store i32 %43, ptr %45, align 4
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct._CMatchFinderMt, ptr %46, i32 0, i32 16
  %48 = load i32, ptr %47, align 8
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct._CMatchFinderMt, ptr %49, i32 0, i32 19
  %51 = load i32, ptr %50, align 4
  %52 = icmp uge i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %25, !llvm.loop !8

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %66, %54
  %56 = load ptr, ptr %3, align 8
  %57 = getelementptr inbounds %struct._CMatchFinderMt, ptr %56, i32 0, i32 16
  %58 = load i32, ptr %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load ptr, ptr %4, align 8
  %62 = load i32, ptr %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %6, align 4
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i32, ptr %61, i64 %64
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %60
  %67 = load ptr, ptr %3, align 8
  %68 = getelementptr inbounds %struct._CMatchFinderMt, ptr %67, i32 0, i32 16
  %69 = load i32, ptr %68, align 8
  %70 = add i32 %69, -1
  store i32 %70, ptr %68, align 8
  br label %55, !llvm.loop !9

71:                                               ; preds = %55
  br label %221

72:                                               ; preds = %29
  %73 = load ptr, ptr %3, align 8
  %74 = getelementptr inbounds %struct._CMatchFinderMt, ptr %73, i32 0, i32 15
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %3, align 8
  %77 = getelementptr inbounds %struct._CMatchFinderMt, ptr %76, i32 0, i32 14
  %78 = load i32, ptr %77, align 8
  %79 = sub i32 %75, %78
  store i32 %79, ptr %8, align 4
  %80 = load ptr, ptr %3, align 8
  %81 = getelementptr inbounds %struct._CMatchFinderMt, ptr %80, i32 0, i32 18
  %82 = load i32, ptr %81, align 8
  store i32 %82, ptr %9, align 4
  %83 = load ptr, ptr %3, align 8
  %84 = getelementptr inbounds %struct._CMatchFinderMt, ptr %83, i32 0, i32 20
  %85 = load i32, ptr %84, align 8
  store i32 %85, ptr %10, align 4
  %86 = load ptr, ptr %3, align 8
  %87 = getelementptr inbounds %struct._CMatchFinderMt, ptr %86, i32 0, i32 22
  %88 = load i32, ptr %87, align 8
  store i32 %88, ptr %11, align 4
  %89 = load i32, ptr %9, align 4
  %90 = load ptr, ptr %3, align 8
  %91 = getelementptr inbounds %struct._CMatchFinderMt, ptr %90, i32 0, i32 16
  %92 = load i32, ptr %91, align 8
  %93 = icmp uge i32 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %72
  %95 = load ptr, ptr %3, align 8
  %96 = getelementptr inbounds %struct._CMatchFinderMt, ptr %95, i32 0, i32 16
  %97 = load i32, ptr %96, align 8
  store i32 %97, ptr %9, align 4
  br label %98

98:                                               ; preds = %94, %72
  %99 = load ptr, ptr %3, align 8
  %100 = getelementptr inbounds %struct._CMatchFinderMt, ptr %99, i32 0, i32 16
  %101 = load i32, ptr %100, align 8
  %102 = load i32, ptr %9, align 4
  %103 = sub i32 %101, %102
  %104 = add i32 %103, 1
  store i32 %104, ptr %12, align 4
  %105 = load i32, ptr %12, align 4
  %106 = load i32, ptr %8, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i32, ptr %12, align 4
  store i32 %109, ptr %8, align 4
  br label %110

110:                                              ; preds = %108, %98
  %111 = load ptr, ptr %3, align 8
  %112 = getelementptr inbounds %struct._CMatchFinderMt, ptr %111, i32 0, i32 23
  %113 = load i32, ptr %112, align 4
  %114 = load i32, ptr %11, align 4
  %115 = sub i32 %113, %114
  store i32 %115, ptr %12, align 4
  %116 = load i32, ptr %12, align 4
  %117 = load i32, ptr %8, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = load i32, ptr %12, align 4
  store i32 %120, ptr %8, align 4
  br label %121

121:                                              ; preds = %119, %110
  br label %122

122:                                              ; preds = %132, %121
  %123 = load i32, ptr %6, align 4
  %124 = load i32, ptr %7, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, ptr %8, align 4
  %128 = add i32 %127, -1
  store i32 %128, ptr %8, align 4
  %129 = icmp ne i32 %127, 0
  br label %130

130:                                              ; preds = %126, %122
  %131 = phi i1 [ false, %122 ], [ %129, %126 ]
  br i1 %131, label %132, label %191

132:                                              ; preds = %130
  %133 = load ptr, ptr %4, align 8
  %134 = load i32, ptr %6, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, ptr %133, i64 %135
  store ptr %136, ptr %13, align 8
  %137 = load i32, ptr %9, align 4
  %138 = load i32, ptr %10, align 4
  %139 = load ptr, ptr %3, align 8
  %140 = getelementptr inbounds %struct._CMatchFinderMt, ptr %139, i32 0, i32 13
  %141 = load ptr, ptr %140, align 8
  %142 = load ptr, ptr %3, align 8
  %143 = getelementptr inbounds %struct._CMatchFinderMt, ptr %142, i32 0, i32 14
  %144 = load i32, ptr %143, align 8
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 8
  %146 = zext i32 %144 to i64
  %147 = getelementptr inbounds i32, ptr %141, i64 %146
  %148 = load i32, ptr %147, align 4
  %149 = sub i32 %138, %148
  %150 = load i32, ptr %10, align 4
  %151 = load ptr, ptr %3, align 8
  %152 = getelementptr inbounds %struct._CMatchFinderMt, ptr %151, i32 0, i32 21
  %153 = load ptr, ptr %152, align 8
  %154 = load ptr, ptr %3, align 8
  %155 = getelementptr inbounds %struct._CMatchFinderMt, ptr %154, i32 0, i32 17
  %156 = load ptr, ptr %155, align 8
  %157 = load i32, ptr %11, align 4
  %158 = load ptr, ptr %3, align 8
  %159 = getelementptr inbounds %struct._CMatchFinderMt, ptr %158, i32 0, i32 23
  %160 = load i32, ptr %159, align 4
  %161 = load ptr, ptr %3, align 8
  %162 = getelementptr inbounds %struct._CMatchFinderMt, ptr %161, i32 0, i32 24
  %163 = load i32, ptr %162, align 8
  %164 = load ptr, ptr %13, align 8
  %165 = getelementptr inbounds i32, ptr %164, i64 1
  %166 = load ptr, ptr %3, align 8
  %167 = getelementptr inbounds %struct._CMatchFinderMt, ptr %166, i32 0, i32 19
  %168 = load i32, ptr %167, align 4
  %169 = sub i32 %168, 1
  %170 = call ptr @GetMatchesSpec1(i32 noundef %137, i32 noundef %149, i32 noundef %150, ptr noundef %153, ptr noundef %156, i32 noundef %157, i32 noundef %160, i32 noundef %163, ptr noundef %165, i32 noundef %169)
  %171 = load ptr, ptr %13, align 8
  %172 = ptrtoint ptr %170 to i64
  %173 = ptrtoint ptr %171 to i64
  %174 = sub i64 %172, %173
  %175 = sdiv exact i64 %174, 4
  %176 = trunc i64 %175 to i32
  store i32 %176, ptr %14, align 4
  %177 = load i32, ptr %14, align 4
  %178 = sub i32 %177, 1
  %179 = load ptr, ptr %13, align 8
  store i32 %178, ptr %179, align 4
  %180 = load i32, ptr %14, align 4
  %181 = load i32, ptr %6, align 4
  %182 = add i32 %181, %180
  store i32 %182, ptr %6, align 4
  %183 = load i32, ptr %11, align 4
  %184 = add i32 %183, 1
  store i32 %184, ptr %11, align 4
  %185 = load i32, ptr %10, align 4
  %186 = add i32 %185, 1
  store i32 %186, ptr %10, align 4
  %187 = load ptr, ptr %3, align 8
  %188 = getelementptr inbounds %struct._CMatchFinderMt, ptr %187, i32 0, i32 21
  %189 = load ptr, ptr %188, align 8
  %190 = getelementptr inbounds i8, ptr %189, i32 1
  store ptr %190, ptr %188, align 8
  br label %122, !llvm.loop !10

191:                                              ; preds = %130
  %192 = load i32, ptr %10, align 4
  %193 = load ptr, ptr %3, align 8
  %194 = getelementptr inbounds %struct._CMatchFinderMt, ptr %193, i32 0, i32 20
  %195 = load i32, ptr %194, align 8
  %196 = sub i32 %192, %195
  %197 = load i32, ptr %5, align 4
  %198 = add i32 %197, %196
  store i32 %198, ptr %5, align 4
  %199 = load i32, ptr %10, align 4
  %200 = load ptr, ptr %3, align 8
  %201 = getelementptr inbounds %struct._CMatchFinderMt, ptr %200, i32 0, i32 20
  %202 = load i32, ptr %201, align 8
  %203 = sub i32 %199, %202
  %204 = load ptr, ptr %3, align 8
  %205 = getelementptr inbounds %struct._CMatchFinderMt, ptr %204, i32 0, i32 16
  %206 = load i32, ptr %205, align 8
  %207 = sub i32 %206, %203
  store i32 %207, ptr %205, align 8
  %208 = load i32, ptr %10, align 4
  %209 = load ptr, ptr %3, align 8
  %210 = getelementptr inbounds %struct._CMatchFinderMt, ptr %209, i32 0, i32 20
  store i32 %208, ptr %210, align 8
  %211 = load i32, ptr %11, align 4
  %212 = load ptr, ptr %3, align 8
  %213 = getelementptr inbounds %struct._CMatchFinderMt, ptr %212, i32 0, i32 23
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %211, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %191
  store i32 0, ptr %11, align 4
  br label %217

217:                                              ; preds = %216, %191
  %218 = load i32, ptr %11, align 4
  %219 = load ptr, ptr %3, align 8
  %220 = getelementptr inbounds %struct._CMatchFinderMt, ptr %219, i32 0, i32 22
  store i32 %218, ptr %220, align 8
  br label %25, !llvm.loop !8

221:                                              ; preds = %71, %25
  %222 = load i32, ptr %6, align 4
  %223 = load ptr, ptr %4, align 8
  %224 = getelementptr inbounds i32, ptr %223, i64 0
  store i32 %222, ptr %224, align 4
  ret void
}

declare ptr @GetMatchesSpec1(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BtFillBlock(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct._CMatchFinderMt, ptr %7, i32 0, i32 25
  store ptr %8, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct._CMtSync, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct._CMtSync, ptr %14, i32 0, i32 12
  %16 = getelementptr inbounds %struct.CCriticalSection, ptr %15, i32 0, i32 0
  %17 = call i32 @pthread_mutex_lock(ptr noundef %16) #3
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %struct._CMtSync, ptr %18, i32 0, i32 11
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %13, %2
  %21 = load ptr, ptr %3, align 8
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct._CMatchFinderMt, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = load i32, ptr %4, align 4
  %26 = and i32 %25, 63
  %27 = mul i32 %26, 16384
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %24, i64 %28
  call void @BtGetMatches(ptr noundef %21, ptr noundef %29)
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct._CMatchFinderMt, ptr %30, i32 0, i32 20
  %32 = load i32, ptr %31, align 8
  %33 = icmp ugt i32 %32, -16385
  br i1 %33, label %34, label %55

34:                                               ; preds = %20
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct._CMatchFinderMt, ptr %35, i32 0, i32 20
  %37 = load i32, ptr %36, align 8
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct._CMatchFinderMt, ptr %38, i32 0, i32 23
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %37, %40
  store i32 %41, ptr %6, align 4
  %42 = load i32, ptr %6, align 4
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct._CMatchFinderMt, ptr %43, i32 0, i32 17
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct._CMatchFinderMt, ptr %46, i32 0, i32 23
  %48 = load i32, ptr %47, align 4
  %49 = mul i32 %48, 2
  call void @MatchFinder_Normalize3(i32 noundef %42, ptr noundef %45, i32 noundef %49)
  %50 = load i32, ptr %6, align 4
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct._CMatchFinderMt, ptr %51, i32 0, i32 20
  %53 = load i32, ptr %52, align 8
  %54 = sub i32 %53, %50
  store i32 %54, ptr %52, align 8
  br label %55

55:                                               ; preds = %34, %20
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds %struct._CMtSync, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %5, align 8
  %62 = getelementptr inbounds %struct._CMtSync, ptr %61, i32 0, i32 12
  %63 = getelementptr inbounds %struct.CCriticalSection, ptr %62, i32 0, i32 0
  %64 = call i32 @pthread_mutex_unlock(ptr noundef %63) #3
  %65 = load ptr, ptr %5, align 8
  %66 = getelementptr inbounds %struct._CMtSync, ptr %65, i32 0, i32 11
  store i32 0, ptr %66, align 4
  br label %67

67:                                               ; preds = %60, %55
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BtThreadFunc(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct._CMatchFinderMt, ptr %5, i32 0, i32 11
  store ptr %6, ptr %3, align 8
  br label %7

7:                                                ; preds = %44, %1
  store i32 0, ptr %4, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct._CMtSync, ptr %8, i32 0, i32 5
  %10 = call i32 @Event_Wait(ptr noundef %9)
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct._CMtSync, ptr %11, i32 0, i32 6
  %13 = call i32 @Event_Set(ptr noundef %12)
  br label %14

14:                                               ; preds = %34, %7
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct._CMtSync, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  ret void

20:                                               ; preds = %14
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct._CMtSync, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32, ptr %4, align 4
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct._CMtSync, ptr %27, i32 0, i32 13
  store i32 %26, ptr %28, align 8
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct._CMatchFinderMt, ptr %29, i32 0, i32 25
  call void @MtSync_StopWriting(ptr noundef %30)
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct._CMtSync, ptr %31, i32 0, i32 7
  %33 = call i32 @Event_Set(ptr noundef %32)
  br label %44

34:                                               ; preds = %20
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct._CMtSync, ptr %35, i32 0, i32 8
  %37 = call i32 @Semaphore_Wait(ptr noundef %36)
  %38 = load ptr, ptr %2, align 8
  %39 = load i32, ptr %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %4, align 4
  call void @BtFillBlock(ptr noundef %38, i32 noundef %39)
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds %struct._CMtSync, ptr %41, i32 0, i32 9
  %43 = call i32 @Semaphore_ReleaseN(ptr noundef %42, i32 noundef 1)
  br label %14

44:                                               ; preds = %25
  br label %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinderMt_Construct(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMatchFinderMt, ptr %3, i32 0, i32 13
  store ptr null, ptr %4, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct._CMatchFinderMt, ptr %5, i32 0, i32 25
  call void @MtSync_Construct(ptr noundef %6)
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct._CMatchFinderMt, ptr %7, i32 0, i32 11
  call void @MtSync_Construct(ptr noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinderMt_FreeMem(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ISzAlloc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct._CMatchFinderMt, ptr %9, i32 0, i32 13
  %11 = load ptr, ptr %10, align 8
  call void %7(ptr noundef %8, ptr noundef %11)
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct._CMatchFinderMt, ptr %12, i32 0, i32 13
  store ptr null, ptr %13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinderMt_Destruct(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct._CMatchFinderMt, ptr %5, i32 0, i32 25
  call void @MtSync_Destruct(ptr noundef %6)
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct._CMatchFinderMt, ptr %7, i32 0, i32 11
  call void @MtSync_Destruct(ptr noundef %8)
  %9 = load ptr, ptr %3, align 8
  %10 = load ptr, ptr %4, align 8
  call void @MatchFinderMt_FreeMem(ptr noundef %9, ptr noundef %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MatchFinderMt_Create(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store i32 %2, ptr %10, align 4
  store i32 %3, ptr %11, align 4
  store i32 %4, ptr %12, align 4
  store ptr %5, ptr %13, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = getelementptr inbounds %struct._CMatchFinderMt, ptr %17, i32 0, i32 27
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %14, align 8
  %20 = load i32, ptr %9, align 4
  %21 = load ptr, ptr %8, align 8
  %22 = getelementptr inbounds %struct._CMatchFinderMt, ptr %21, i32 0, i32 8
  store i32 %20, ptr %22, align 4
  %23 = load i32, ptr %11, align 4
  %24 = mul i32 %23, 4
  %25 = icmp ule i32 16384, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i32 5, ptr %7, align 4
  br label %85

27:                                               ; preds = %6
  %28 = load ptr, ptr %8, align 8
  %29 = getelementptr inbounds %struct._CMatchFinderMt, ptr %28, i32 0, i32 13
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = load ptr, ptr %13, align 8
  %34 = getelementptr inbounds %struct.ISzAlloc, ptr %33, i32 0, i32 0
  %35 = load ptr, ptr %34, align 8
  %36 = load ptr, ptr %13, align 8
  %37 = call ptr %35(ptr noundef %36, i64 noundef 4456448)
  %38 = load ptr, ptr %8, align 8
  %39 = getelementptr inbounds %struct._CMatchFinderMt, ptr %38, i32 0, i32 13
  store ptr %37, ptr %39, align 8
  %40 = load ptr, ptr %8, align 8
  %41 = getelementptr inbounds %struct._CMatchFinderMt, ptr %40, i32 0, i32 13
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 2, ptr %7, align 4
  br label %85

45:                                               ; preds = %32
  %46 = load ptr, ptr %8, align 8
  %47 = getelementptr inbounds %struct._CMatchFinderMt, ptr %46, i32 0, i32 13
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds i32, ptr %48, i64 65536
  %50 = load ptr, ptr %8, align 8
  %51 = getelementptr inbounds %struct._CMatchFinderMt, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 8
  br label %52

52:                                               ; preds = %45, %27
  %53 = load i32, ptr %10, align 4
  %54 = add i32 %53, 1114112
  store i32 %54, ptr %10, align 4
  %55 = load i32, ptr %12, align 4
  %56 = add i32 %55, 8192
  store i32 %56, ptr %12, align 4
  %57 = load ptr, ptr %14, align 8
  %58 = load i32, ptr %9, align 4
  %59 = load i32, ptr %10, align 4
  %60 = load i32, ptr %11, align 4
  %61 = load i32, ptr %12, align 4
  %62 = load ptr, ptr %13, align 8
  %63 = call i32 @MatchFinder_Create(ptr noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60, i32 noundef %61, ptr noundef %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %52
  store i32 2, ptr %7, align 4
  br label %85

66:                                               ; preds = %52
  %67 = load ptr, ptr %8, align 8
  %68 = getelementptr inbounds %struct._CMatchFinderMt, ptr %67, i32 0, i32 25
  %69 = load ptr, ptr %8, align 8
  %70 = call i32 @MtSync_Create(ptr noundef %68, ptr noundef @HashThreadFunc2, ptr noundef %69, i32 noundef 8)
  store i32 %70, ptr %15, align 4
  %71 = load i32, ptr %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, ptr %15, align 4
  store i32 %74, ptr %7, align 4
  br label %85

75:                                               ; preds = %66
  %76 = load ptr, ptr %8, align 8
  %77 = getelementptr inbounds %struct._CMatchFinderMt, ptr %76, i32 0, i32 11
  %78 = load ptr, ptr %8, align 8
  %79 = call i32 @MtSync_Create(ptr noundef %77, ptr noundef @BtThreadFunc2, ptr noundef %78, i32 noundef 64)
  store i32 %79, ptr %16, align 4
  %80 = load i32, ptr %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, ptr %16, align 4
  store i32 %83, ptr %7, align 4
  br label %85

84:                                               ; preds = %75
  store i32 0, ptr %7, align 4
  br label %85

85:                                               ; preds = %84, %82, %73, %65, %44, %26
  %86 = load i32, ptr %7, align 4
  ret i32 %86
}

declare i32 @MatchFinder_Create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MtSync_Create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = load i32, ptr %8, align 4
  %14 = call i32 @MtSync_Create2(ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13)
  store i32 %14, ptr %9, align 4
  %15 = load i32, ptr %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load ptr, ptr %5, align 8
  call void @MtSync_Destruct(ptr noundef %18)
  br label %19

19:                                               ; preds = %17, %4
  %20 = load i32, ptr %9, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HashThreadFunc2(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @HashThreadFunc(ptr noundef %3)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BtThreadFunc2(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [384 x i8], align 16
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %4, align 4
  store i32 0, ptr %4, align 4
  br label %5

5:                                                ; preds = %14, %1
  %6 = load i32, ptr %4, align 4
  %7 = icmp slt i32 %6, 16
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load i32, ptr %4, align 4
  %10 = trunc i32 %9 to i8
  %11 = load i32, ptr %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [384 x i8], ptr %3, i64 0, i64 %12
  store i8 %10, ptr %13, align 1
  br label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %4, align 4
  br label %5, !llvm.loop !11

17:                                               ; preds = %5
  %18 = load ptr, ptr %2, align 8
  call void @BtThreadFunc(ptr noundef %18)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinderMt_Init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct._CMatchFinderMt, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct._CMatchFinderMt, ptr %7, i32 0, i32 3
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct._CMatchFinderMt, ptr %9, i32 0, i32 2
  store i32 0, ptr %10, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct._CMatchFinderMt, ptr %11, i32 0, i32 15
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct._CMatchFinderMt, ptr %13, i32 0, i32 14
  store i32 0, ptr %14, align 8
  %15 = load ptr, ptr %3, align 8
  call void @MatchFinder_Init(ptr noundef %15)
  %16 = load ptr, ptr %3, align 8
  %17 = call ptr @MatchFinder_GetPointerToCurrentPos(ptr noundef %16)
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct._CMatchFinderMt, ptr %18, i32 0, i32 0
  store ptr %17, ptr %19, align 8
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct._CMatchFinderMt, ptr %20, i32 0, i32 5
  store i32 0, ptr %21, align 4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct._CMatchFinderMt, ptr %22, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct._CMatchFinderMt, ptr %26, i32 0, i32 4
  store i32 %25, ptr %27, align 8
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct._CMatchFinder, ptr %28, i32 0, i32 8
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct._CMatchFinderMt, ptr %31, i32 0, i32 6
  store ptr %30, ptr %32, align 8
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct._CMatchFinder, ptr %33, i32 0, i32 24
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct._CMatchFinderMt, ptr %36, i32 0, i32 7
  store i32 %35, ptr %37, align 8
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct._CMatchFinder, ptr %38, i32 0, i32 28
  %40 = getelementptr inbounds [256 x i32], ptr %39, i64 0, i64 0
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr inbounds %struct._CMatchFinderMt, ptr %41, i32 0, i32 9
  store ptr %40, ptr %42, align 8
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct._CMatchFinder, ptr %43, i32 0, i32 9
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct._CMatchFinderMt, ptr %46, i32 0, i32 17
  store ptr %45, ptr %47, align 8
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct._CMatchFinder, ptr %48, i32 0, i32 7
  %50 = load i32, ptr %49, align 8
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds %struct._CMatchFinderMt, ptr %51, i32 0, i32 18
  store i32 %50, ptr %52, align 8
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct._CMatchFinder, ptr %53, i32 0, i32 18
  %55 = load i32, ptr %54, align 8
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds %struct._CMatchFinderMt, ptr %56, i32 0, i32 19
  store i32 %55, ptr %57, align 4
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct._CMatchFinder, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 8
  %61 = load ptr, ptr %2, align 8
  %62 = getelementptr inbounds %struct._CMatchFinderMt, ptr %61, i32 0, i32 20
  store i32 %60, ptr %62, align 8
  %63 = load ptr, ptr %3, align 8
  %64 = getelementptr inbounds %struct._CMatchFinder, ptr %63, i32 0, i32 0
  %65 = load ptr, ptr %64, align 8
  %66 = load ptr, ptr %2, align 8
  %67 = getelementptr inbounds %struct._CMatchFinderMt, ptr %66, i32 0, i32 21
  store ptr %65, ptr %67, align 8
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds %struct._CMatchFinder, ptr %68, i32 0, i32 5
  %70 = load i32, ptr %69, align 8
  %71 = load ptr, ptr %2, align 8
  %72 = getelementptr inbounds %struct._CMatchFinderMt, ptr %71, i32 0, i32 22
  store i32 %70, ptr %72, align 8
  %73 = load ptr, ptr %3, align 8
  %74 = getelementptr inbounds %struct._CMatchFinder, ptr %73, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %2, align 8
  %77 = getelementptr inbounds %struct._CMatchFinderMt, ptr %76, i32 0, i32 23
  store i32 %75, ptr %77, align 4
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct._CMatchFinder, ptr %78, i32 0, i32 11
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr inbounds %struct._CMatchFinderMt, ptr %81, i32 0, i32 24
  store i32 %80, ptr %82, align 8
  ret void
}

declare void @MatchFinder_Init(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinderMt_ReleaseStream(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMatchFinderMt, ptr %3, i32 0, i32 11
  call void @MtSync_StopWriting(ptr noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinderMt_Normalize(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMatchFinderMt, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct._CMatchFinderMt, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %5, %8
  %10 = sub i32 %9, 1
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct._CMatchFinderMt, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct._CMatchFinderMt, ptr %14, i32 0, i32 7
  %16 = load i32, ptr %15, align 8
  call void @MatchFinder_Normalize3(i32 noundef %10, ptr noundef %13, i32 noundef %16)
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct._CMatchFinderMt, ptr %17, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct._CMatchFinderMt, ptr %21, i32 0, i32 4
  store i32 %20, ptr %22, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinderMt_GetNextBlock_Bt(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct._CMatchFinderMt, ptr %4, i32 0, i32 11
  call void @MtSync_GetNextBlock(ptr noundef %5)
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct._CMatchFinderMt, ptr %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct._CMtSync, ptr %7, i32 0, i32 13
  %9 = load i32, ptr %8, align 8
  %10 = sub i32 %9, 1
  %11 = and i32 %10, 63
  store i32 %11, ptr %3, align 4
  %12 = load i32, ptr %3, align 4
  %13 = mul i32 %12, 16384
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct._CMatchFinderMt, ptr %14, i32 0, i32 2
  store i32 %13, ptr %15, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct._CMatchFinderMt, ptr %16, i32 0, i32 3
  store i32 %13, ptr %17, align 4
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct._CMatchFinderMt, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct._CMatchFinderMt, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 8
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds i32, ptr %20, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct._CMatchFinderMt, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %27
  store i32 %31, ptr %29, align 4
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr inbounds %struct._CMatchFinderMt, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct._CMatchFinderMt, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 8
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds i32, ptr %34, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds %struct._CMatchFinderMt, ptr %42, i32 0, i32 5
  store i32 %41, ptr %43, align 4
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds %struct._CMatchFinderMt, ptr %44, i32 0, i32 4
  %46 = load i32, ptr %45, align 8
  %47 = icmp uge i32 %46, -16385
  br i1 %47, label %48, label %50

48:                                               ; preds = %1
  %49 = load ptr, ptr %2, align 8
  call void @MatchFinderMt_Normalize(ptr noundef %49)
  br label %50

50:                                               ; preds = %48, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @MatchFinderMt_GetPointerToCurrentPos(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMatchFinderMt, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MatchFinderMt_GetNumAvailableBytes(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CMatchFinderMt, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct._CMatchFinderMt, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8
  call void @MatchFinderMt_GetNextBlock_Bt(ptr noundef %11)
  br label %12

12:                                               ; preds = %10, %1
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct._CMatchFinderMt, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @MatchFinderMt_GetIndexByte(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct._CMatchFinderMt, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %7, i64 %9
  %11 = load i8, ptr %10, align 1
  ret i8 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @MixMatches2(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct._CMatchFinderMt, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %9, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct._CMatchFinderMt, ptr %15, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %10, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct._CMatchFinderMt, ptr %18, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  store i32 %20, ptr %11, align 4
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %struct._CMatchFinderMt, ptr %21, i32 0, i32 9
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %10, align 8
  %25 = getelementptr inbounds i8, ptr %24, i64 0
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds i32, ptr %23, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %10, align 8
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = xor i32 %29, %33
  %35 = and i32 %34, 1023
  store i32 %35, ptr %7, align 4
  %36 = load ptr, ptr %9, align 8
  %37 = load i32, ptr %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %36, i64 %38
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %8, align 4
  %41 = load i32, ptr %11, align 4
  %42 = load ptr, ptr %9, align 8
  %43 = load i32, ptr %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %42, i64 %44
  store i32 %41, ptr %45, align 4
  %46 = load i32, ptr %8, align 4
  %47 = load i32, ptr %5, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %3
  %50 = load ptr, ptr %10, align 8
  %51 = load i32, ptr %8, align 4
  %52 = zext i32 %51 to i64
  %53 = load i32, ptr %11, align 4
  %54 = zext i32 %53 to i64
  %55 = sub nsw i64 %52, %54
  %56 = getelementptr inbounds i8, ptr %50, i64 %55
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load ptr, ptr %10, align 8
  %60 = getelementptr inbounds i8, ptr %59, i64 0
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %58, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %49
  %65 = load ptr, ptr %6, align 8
  %66 = getelementptr inbounds i32, ptr %65, i32 1
  store ptr %66, ptr %6, align 8
  store i32 2, ptr %65, align 4
  %67 = load i32, ptr %11, align 4
  %68 = load i32, ptr %8, align 4
  %69 = sub i32 %67, %68
  %70 = sub i32 %69, 1
  %71 = load ptr, ptr %6, align 8
  %72 = getelementptr inbounds i32, ptr %71, i32 1
  store ptr %72, ptr %6, align 8
  store i32 %70, ptr %71, align 4
  br label %73

73:                                               ; preds = %64, %49
  br label %74

74:                                               ; preds = %73, %3
  %75 = load ptr, ptr %6, align 8
  ret ptr %75
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @MixMatches3(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct._CMatchFinderMt, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %12, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct._CMatchFinderMt, ptr %19, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %13, align 8
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct._CMatchFinderMt, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  store i32 %24, ptr %14, align 4
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds %struct._CMatchFinderMt, ptr %25, i32 0, i32 9
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %13, align 8
  %29 = getelementptr inbounds i8, ptr %28, i64 0
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds i32, ptr %27, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %13, align 8
  %35 = getelementptr inbounds i8, ptr %34, i64 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = xor i32 %33, %37
  store i32 %38, ptr %15, align 4
  %39 = load i32, ptr %15, align 4
  %40 = and i32 %39, 1023
  store i32 %40, ptr %8, align 4
  %41 = load i32, ptr %15, align 4
  %42 = load ptr, ptr %13, align 8
  %43 = getelementptr inbounds i8, ptr %42, i64 2
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 %45, 8
  %47 = xor i32 %41, %46
  %48 = and i32 %47, 65535
  store i32 %48, ptr %9, align 4
  %49 = load ptr, ptr %12, align 8
  %50 = load i32, ptr %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %49, i64 %51
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %10, align 4
  %54 = load ptr, ptr %12, align 8
  %55 = load i32, ptr %9, align 4
  %56 = add i32 1024, %55
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, ptr %54, i64 %57
  %59 = load i32, ptr %58, align 4
  store i32 %59, ptr %11, align 4
  %60 = load i32, ptr %14, align 4
  %61 = load ptr, ptr %12, align 8
  %62 = load i32, ptr %9, align 4
  %63 = add i32 1024, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %61, i64 %64
  store i32 %60, ptr %65, align 4
  %66 = load ptr, ptr %12, align 8
  %67 = load i32, ptr %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %66, i64 %68
  store i32 %60, ptr %69, align 4
  %70 = load i32, ptr %10, align 4
  %71 = load i32, ptr %6, align 4
  %72 = icmp uge i32 %70, %71
  br i1 %72, label %73, label %120

73:                                               ; preds = %3
  %74 = load ptr, ptr %13, align 8
  %75 = load i32, ptr %10, align 4
  %76 = zext i32 %75 to i64
  %77 = load i32, ptr %14, align 4
  %78 = zext i32 %77 to i64
  %79 = sub nsw i64 %76, %78
  %80 = getelementptr inbounds i8, ptr %74, i64 %79
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load ptr, ptr %13, align 8
  %84 = getelementptr inbounds i8, ptr %83, i64 0
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %82, %86
  br i1 %87, label %88, label %120

88:                                               ; preds = %73
  %89 = load i32, ptr %14, align 4
  %90 = load i32, ptr %10, align 4
  %91 = sub i32 %89, %90
  %92 = sub i32 %91, 1
  %93 = load ptr, ptr %7, align 8
  %94 = getelementptr inbounds i32, ptr %93, i64 1
  store i32 %92, ptr %94, align 4
  %95 = load ptr, ptr %13, align 8
  %96 = load i32, ptr %10, align 4
  %97 = zext i32 %96 to i64
  %98 = load i32, ptr %14, align 4
  %99 = zext i32 %98 to i64
  %100 = sub nsw i64 %97, %99
  %101 = add nsw i64 %100, 2
  %102 = getelementptr inbounds i8, ptr %95, i64 %101
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = load ptr, ptr %13, align 8
  %106 = getelementptr inbounds i8, ptr %105, i64 2
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %104, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %88
  %111 = load ptr, ptr %7, align 8
  %112 = getelementptr inbounds i32, ptr %111, i64 0
  store i32 3, ptr %112, align 4
  %113 = load ptr, ptr %7, align 8
  %114 = getelementptr inbounds i32, ptr %113, i64 2
  store ptr %114, ptr %4, align 8
  br label %150

115:                                              ; preds = %88
  %116 = load ptr, ptr %7, align 8
  %117 = getelementptr inbounds i32, ptr %116, i64 0
  store i32 2, ptr %117, align 4
  %118 = load ptr, ptr %7, align 8
  %119 = getelementptr inbounds i32, ptr %118, i64 2
  store ptr %119, ptr %7, align 8
  br label %120

120:                                              ; preds = %115, %73, %3
  %121 = load i32, ptr %11, align 4
  %122 = load i32, ptr %6, align 4
  %123 = icmp uge i32 %121, %122
  br i1 %123, label %124, label %148

124:                                              ; preds = %120
  %125 = load ptr, ptr %13, align 8
  %126 = load i32, ptr %11, align 4
  %127 = zext i32 %126 to i64
  %128 = load i32, ptr %14, align 4
  %129 = zext i32 %128 to i64
  %130 = sub nsw i64 %127, %129
  %131 = getelementptr inbounds i8, ptr %125, i64 %130
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load ptr, ptr %13, align 8
  %135 = getelementptr inbounds i8, ptr %134, i64 0
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %133, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %124
  %140 = load ptr, ptr %7, align 8
  %141 = getelementptr inbounds i32, ptr %140, i32 1
  store ptr %141, ptr %7, align 8
  store i32 3, ptr %140, align 4
  %142 = load i32, ptr %14, align 4
  %143 = load i32, ptr %11, align 4
  %144 = sub i32 %142, %143
  %145 = sub i32 %144, 1
  %146 = load ptr, ptr %7, align 8
  %147 = getelementptr inbounds i32, ptr %146, i32 1
  store ptr %147, ptr %7, align 8
  store i32 %145, ptr %146, align 4
  br label %148

148:                                              ; preds = %139, %124, %120
  %149 = load ptr, ptr %7, align 8
  store ptr %149, ptr %4, align 8
  br label %150

150:                                              ; preds = %148, %110
  %151 = load ptr, ptr %4, align 8
  ret ptr %151
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MatchFinderMt2_GetMatches(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct._CMatchFinderMt, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct._CMatchFinderMt, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %10, i64 %14
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds i32, ptr %16, i32 1
  store ptr %17, ptr %5, align 8
  %18 = load i32, ptr %16, align 4
  store i32 %18, ptr %6, align 4
  %19 = load i32, ptr %6, align 4
  %20 = add i32 1, %19
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct._CMatchFinderMt, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, %20
  store i32 %24, ptr %22, align 8
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct._CMatchFinderMt, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -1
  store i32 %28, ptr %26, align 4
  store i32 0, ptr %7, align 4
  br label %29

29:                                               ; preds = %44, %2
  %30 = load i32, ptr %7, align 4
  %31 = load i32, ptr %6, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr inbounds i32, ptr %34, i32 1
  store ptr %35, ptr %5, align 8
  %36 = load i32, ptr %34, align 4
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds i32, ptr %37, i32 1
  store ptr %38, ptr %4, align 8
  store i32 %36, ptr %37, align 4
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr inbounds i32, ptr %39, i32 1
  store ptr %40, ptr %5, align 8
  %41 = load i32, ptr %39, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds i32, ptr %42, i32 1
  store ptr %43, ptr %4, align 8
  store i32 %41, ptr %42, align 4
  br label %44

44:                                               ; preds = %33
  %45 = load i32, ptr %7, align 4
  %46 = add i32 %45, 2
  store i32 %46, ptr %7, align 4
  br label %29, !llvm.loop !12

47:                                               ; preds = %29
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct._CMatchFinderMt, ptr %48, i32 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 8
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct._CMatchFinderMt, ptr %52, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds i8, ptr %54, i32 1
  store ptr %55, ptr %53, align 8
  %56 = load i32, ptr %6, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MatchFinderMt_GetMatches(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct._CMatchFinderMt, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct._CMatchFinderMt, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %10, i64 %14
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds i32, ptr %16, i32 1
  store ptr %17, ptr %5, align 8
  %18 = load i32, ptr %16, align 4
  store i32 %18, ptr %6, align 4
  %19 = load i32, ptr %6, align 4
  %20 = add i32 1, %19
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct._CMatchFinderMt, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, %20
  store i32 %24, ptr %22, align 8
  %25 = load i32, ptr %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %2
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct._CMatchFinderMt, ptr %28, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -1
  store i32 %31, ptr %29, align 4
  %32 = icmp uge i32 %30, 4
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct._CMatchFinderMt, ptr %34, i32 0, i32 10
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %3, align 8
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct._CMatchFinderMt, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %39, align 8
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds %struct._CMatchFinderMt, ptr %41, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 %40, %43
  %45 = load ptr, ptr %4, align 8
  %46 = call ptr %36(ptr noundef %37, i32 noundef %44, ptr noundef %45)
  %47 = load ptr, ptr %4, align 8
  %48 = ptrtoint ptr %46 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, ptr %6, align 4
  br label %53

53:                                               ; preds = %33, %27
  br label %95

54:                                               ; preds = %2
  %55 = load ptr, ptr %3, align 8
  %56 = getelementptr inbounds %struct._CMatchFinderMt, ptr %55, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, -1
  store i32 %58, ptr %56, align 4
  %59 = load ptr, ptr %3, align 8
  %60 = getelementptr inbounds %struct._CMatchFinderMt, ptr %59, i32 0, i32 10
  %61 = load ptr, ptr %60, align 8
  %62 = load ptr, ptr %3, align 8
  %63 = load ptr, ptr %3, align 8
  %64 = getelementptr inbounds %struct._CMatchFinderMt, ptr %63, i32 0, i32 4
  %65 = load i32, ptr %64, align 8
  %66 = load ptr, ptr %5, align 8
  %67 = getelementptr inbounds i32, ptr %66, i64 1
  %68 = load i32, ptr %67, align 4
  %69 = sub i32 %65, %68
  %70 = load ptr, ptr %4, align 8
  %71 = call ptr %61(ptr noundef %62, i32 noundef %69, ptr noundef %70)
  store ptr %71, ptr %7, align 8
  br label %72

72:                                               ; preds = %83, %54
  %73 = load ptr, ptr %5, align 8
  %74 = getelementptr inbounds i32, ptr %73, i32 1
  store ptr %74, ptr %5, align 8
  %75 = load i32, ptr %73, align 4
  %76 = load ptr, ptr %7, align 8
  %77 = getelementptr inbounds i32, ptr %76, i32 1
  store ptr %77, ptr %7, align 8
  store i32 %75, ptr %76, align 4
  %78 = load ptr, ptr %5, align 8
  %79 = getelementptr inbounds i32, ptr %78, i32 1
  store ptr %79, ptr %5, align 8
  %80 = load i32, ptr %78, align 4
  %81 = load ptr, ptr %7, align 8
  %82 = getelementptr inbounds i32, ptr %81, i32 1
  store ptr %82, ptr %7, align 8
  store i32 %80, ptr %81, align 4
  br label %83

83:                                               ; preds = %72
  %84 = load i32, ptr %6, align 4
  %85 = sub i32 %84, 2
  store i32 %85, ptr %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %72, label %87, !llvm.loop !13

87:                                               ; preds = %83
  %88 = load ptr, ptr %7, align 8
  %89 = load ptr, ptr %4, align 8
  %90 = ptrtoint ptr %88 to i64
  %91 = ptrtoint ptr %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  %94 = trunc i64 %93 to i32
  store i32 %94, ptr %6, align 4
  br label %95

95:                                               ; preds = %87, %53
  %96 = load ptr, ptr %3, align 8
  %97 = getelementptr inbounds %struct._CMatchFinderMt, ptr %96, i32 0, i32 4
  %98 = load i32, ptr %97, align 8
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 8
  %100 = load ptr, ptr %3, align 8
  %101 = getelementptr inbounds %struct._CMatchFinderMt, ptr %100, i32 0, i32 0
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds i8, ptr %102, i32 1
  store ptr %103, ptr %101, align 8
  %104 = load i32, ptr %6, align 4
  ret i32 %104
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinderMt0_Skip(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %5

5:                                                ; preds = %42, %2
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct._CMatchFinderMt, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct._CMatchFinderMt, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = load ptr, ptr %3, align 8
  call void @MatchFinderMt_GetNextBlock_Bt(ptr noundef %14)
  br label %15

15:                                               ; preds = %13, %5
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct._CMatchFinderMt, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  store i32 %19, ptr %17, align 4
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct._CMatchFinderMt, ptr %20, i32 0, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 8
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct._CMatchFinderMt, ptr %24, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %27, ptr %25, align 8
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct._CMatchFinderMt, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct._CMatchFinderMt, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %30, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct._CMatchFinderMt, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = add i32 %40, %37
  store i32 %41, ptr %39, align 8
  br label %42

42:                                               ; preds = %15
  %43 = load i32, ptr %4, align 4
  %44 = add i32 %43, -1
  store i32 %44, ptr %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %5, label %46, !llvm.loop !14

46:                                               ; preds = %42
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinderMt2_Skip(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %8

8:                                                ; preds = %76, %2
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct._CMatchFinderMt, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct._CMatchFinderMt, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load ptr, ptr %3, align 8
  call void @MatchFinderMt_GetNextBlock_Bt(ptr noundef %17)
  br label %18

18:                                               ; preds = %16, %8
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct._CMatchFinderMt, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4
  %23 = icmp uge i32 %21, 2
  br i1 %23, label %24, label %53

24:                                               ; preds = %18
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct._CMatchFinderMt, ptr %25, i32 0, i32 0
  %27 = load ptr, ptr %26, align 8
  store ptr %27, ptr %5, align 8
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct._CMatchFinderMt, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 8
  store ptr %30, ptr %6, align 8
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct._CMatchFinderMt, ptr %31, i32 0, i32 9
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr inbounds i8, ptr %34, i64 0
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i32, ptr %33, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = xor i32 %39, %43
  %45 = and i32 %44, 1023
  store i32 %45, ptr %7, align 4
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct._CMatchFinderMt, ptr %46, i32 0, i32 4
  %48 = load i32, ptr %47, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = load i32, ptr %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %49, i64 %51
  store i32 %48, ptr %52, align 4
  br label %53

53:                                               ; preds = %24, %18
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr inbounds %struct._CMatchFinderMt, ptr %54, i32 0, i32 4
  %56 = load i32, ptr %55, align 8
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 8
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct._CMatchFinderMt, ptr %58, i32 0, i32 0
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %61, ptr %59, align 8
  %62 = load ptr, ptr %3, align 8
  %63 = getelementptr inbounds %struct._CMatchFinderMt, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8
  %65 = load ptr, ptr %3, align 8
  %66 = getelementptr inbounds %struct._CMatchFinderMt, ptr %65, i32 0, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %64, i64 %68
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  %72 = load ptr, ptr %3, align 8
  %73 = getelementptr inbounds %struct._CMatchFinderMt, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = add i32 %74, %71
  store i32 %75, ptr %73, align 8
  br label %76

76:                                               ; preds = %53
  %77 = load i32, ptr %4, align 4
  %78 = add i32 %77, -1
  store i32 %78, ptr %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %8, label %80, !llvm.loop !15

80:                                               ; preds = %76
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinderMt3_Skip(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %10

10:                                               ; preds = %92, %2
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct._CMatchFinderMt, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct._CMatchFinderMt, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load ptr, ptr %3, align 8
  call void @MatchFinderMt_GetNextBlock_Bt(ptr noundef %19)
  br label %20

20:                                               ; preds = %18, %10
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct._CMatchFinderMt, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  store i32 %24, ptr %22, align 4
  %25 = icmp uge i32 %23, 3
  br i1 %25, label %26, label %69

26:                                               ; preds = %20
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct._CMatchFinderMt, ptr %27, i32 0, i32 0
  %29 = load ptr, ptr %28, align 8
  store ptr %29, ptr %5, align 8
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct._CMatchFinderMt, ptr %30, i32 0, i32 6
  %32 = load ptr, ptr %31, align 8
  store ptr %32, ptr %6, align 8
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct._CMatchFinderMt, ptr %33, i32 0, i32 9
  %35 = load ptr, ptr %34, align 8
  %36 = load ptr, ptr %5, align 8
  %37 = getelementptr inbounds i8, ptr %36, i64 0
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i32, ptr %35, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds i8, ptr %42, i64 1
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = xor i32 %41, %45
  store i32 %46, ptr %9, align 4
  %47 = load i32, ptr %9, align 4
  %48 = and i32 %47, 1023
  store i32 %48, ptr %7, align 4
  %49 = load i32, ptr %9, align 4
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds i8, ptr %50, i64 2
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, 8
  %55 = xor i32 %49, %54
  %56 = and i32 %55, 65535
  store i32 %56, ptr %8, align 4
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds %struct._CMatchFinderMt, ptr %57, i32 0, i32 4
  %59 = load i32, ptr %58, align 8
  %60 = load ptr, ptr %6, align 8
  %61 = load i32, ptr %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %60, i64 %62
  store i32 %59, ptr %63, align 4
  %64 = load ptr, ptr %6, align 8
  %65 = load i32, ptr %8, align 4
  %66 = add i32 1024, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %64, i64 %67
  store i32 %59, ptr %68, align 4
  br label %69

69:                                               ; preds = %26, %20
  %70 = load ptr, ptr %3, align 8
  %71 = getelementptr inbounds %struct._CMatchFinderMt, ptr %70, i32 0, i32 4
  %72 = load i32, ptr %71, align 8
  %73 = add i32 %72, 1
  store i32 %73, ptr %71, align 8
  %74 = load ptr, ptr %3, align 8
  %75 = getelementptr inbounds %struct._CMatchFinderMt, ptr %74, i32 0, i32 0
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds i8, ptr %76, i32 1
  store ptr %77, ptr %75, align 8
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct._CMatchFinderMt, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8
  %81 = load ptr, ptr %3, align 8
  %82 = getelementptr inbounds %struct._CMatchFinderMt, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 8
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %80, i64 %84
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 1
  %88 = load ptr, ptr %3, align 8
  %89 = getelementptr inbounds %struct._CMatchFinderMt, ptr %88, i32 0, i32 2
  %90 = load i32, ptr %89, align 8
  %91 = add i32 %90, %87
  store i32 %91, ptr %89, align 8
  br label %92

92:                                               ; preds = %69
  %93 = load i32, ptr %4, align 4
  %94 = add i32 %93, -1
  store i32 %94, ptr %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %10, label %96, !llvm.loop !16

96:                                               ; preds = %92
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinderMt_CreateVTable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct._IMatchFinder, ptr %5, i32 0, i32 0
  store ptr @MatchFinderMt_Init, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct._IMatchFinder, ptr %7, i32 0, i32 1
  store ptr @MatchFinderMt_GetIndexByte, ptr %8, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct._IMatchFinder, ptr %9, i32 0, i32 2
  store ptr @MatchFinderMt_GetNumAvailableBytes, ptr %10, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct._IMatchFinder, ptr %11, i32 0, i32 3
  store ptr @MatchFinderMt_GetPointerToCurrentPos, ptr %12, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct._IMatchFinder, ptr %13, i32 0, i32 4
  store ptr @MatchFinderMt_GetMatches, ptr %14, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct._CMatchFinderMt, ptr %15, i32 0, i32 27
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct._CMatchFinder, ptr %17, i32 0, i32 18
  %19 = load i32, ptr %18, align 8
  switch i32 %19, label %36 [
    i32 2, label %20
    i32 3, label %29
  ]

20:                                               ; preds = %2
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct._CMatchFinderMt, ptr %21, i32 0, i32 26
  store ptr @GetHeads2, ptr %22, align 8
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct._CMatchFinderMt, ptr %23, i32 0, i32 10
  store ptr null, ptr %24, align 8
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct._IMatchFinder, ptr %25, i32 0, i32 5
  store ptr @MatchFinderMt0_Skip, ptr %26, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds %struct._IMatchFinder, ptr %27, i32 0, i32 4
  store ptr @MatchFinderMt2_GetMatches, ptr %28, align 8
  br label %51

29:                                               ; preds = %2
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct._CMatchFinderMt, ptr %30, i32 0, i32 26
  store ptr @GetHeads3, ptr %31, align 8
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct._CMatchFinderMt, ptr %32, i32 0, i32 10
  store ptr @MixMatches2, ptr %33, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct._IMatchFinder, ptr %34, i32 0, i32 5
  store ptr @MatchFinderMt2_Skip, ptr %35, align 8
  br label %51

36:                                               ; preds = %2
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct._CMatchFinderMt, ptr %37, i32 0, i32 27
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct._CMatchFinder, ptr %39, i32 0, i32 22
  %41 = load i32, ptr %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, ptr @GetHeads4b, ptr @GetHeads4
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds %struct._CMatchFinderMt, ptr %45, i32 0, i32 26
  store ptr %44, ptr %46, align 8
  %47 = load ptr, ptr %3, align 8
  %48 = getelementptr inbounds %struct._CMatchFinderMt, ptr %47, i32 0, i32 10
  store ptr @MixMatches3, ptr %48, align 8
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds %struct._IMatchFinder, ptr %49, i32 0, i32 5
  store ptr @MatchFinderMt3_Skip, ptr %50, align 8
  br label %51

51:                                               ; preds = %36, %29, %20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetHeads2(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store ptr %2, ptr %10, align 8
  store i32 %3, ptr %11, align 4
  store ptr %4, ptr %12, align 8
  store i32 %5, ptr %13, align 4
  store ptr %6, ptr %14, align 8
  %16 = load i32, ptr %11, align 4
  store i32 %16, ptr %11, align 4
  %17 = load ptr, ptr %14, align 8
  store ptr %17, ptr %14, align 8
  br label %18

18:                                               ; preds = %49, %7
  %19 = load i32, ptr %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  %22 = load ptr, ptr %8, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 0
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 8
  %31 = or i32 %25, %30
  store i32 %31, ptr %15, align 4
  %32 = load ptr, ptr %8, align 8
  %33 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %33, ptr %8, align 8
  %34 = load i32, ptr %9, align 4
  %35 = load ptr, ptr %10, align 8
  %36 = load i32, ptr %15, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %35, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 %34, %39
  %41 = load ptr, ptr %12, align 8
  %42 = getelementptr inbounds i32, ptr %41, i32 1
  store ptr %42, ptr %12, align 8
  store i32 %40, ptr %41, align 4
  %43 = load i32, ptr %9, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %9, align 4
  %45 = load ptr, ptr %10, align 8
  %46 = load i32, ptr %15, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %45, i64 %47
  store i32 %43, ptr %48, align 4
  br label %49

49:                                               ; preds = %21
  %50 = load i32, ptr %13, align 4
  %51 = add i32 %50, -1
  store i32 %51, ptr %13, align 4
  br label %18, !llvm.loop !17

52:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetHeads3(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store ptr %2, ptr %10, align 8
  store i32 %3, ptr %11, align 4
  store ptr %4, ptr %12, align 8
  store i32 %5, ptr %13, align 4
  store ptr %6, ptr %14, align 8
  br label %16

16:                                               ; preds = %57, %7
  %17 = load i32, ptr %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %16
  %20 = load ptr, ptr %14, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = getelementptr inbounds i8, ptr %21, i64 0
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds i32, ptr %20, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %8, align 8
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = xor i32 %26, %30
  %32 = load ptr, ptr %8, align 8
  %33 = getelementptr inbounds i8, ptr %32, i64 2
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 8
  %37 = xor i32 %31, %36
  %38 = load i32, ptr %11, align 4
  %39 = and i32 %37, %38
  store i32 %39, ptr %15, align 4
  %40 = load ptr, ptr %8, align 8
  %41 = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %41, ptr %8, align 8
  %42 = load i32, ptr %9, align 4
  %43 = load ptr, ptr %10, align 8
  %44 = load i32, ptr %15, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %43, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = sub i32 %42, %47
  %49 = load ptr, ptr %12, align 8
  %50 = getelementptr inbounds i32, ptr %49, i32 1
  store ptr %50, ptr %12, align 8
  store i32 %48, ptr %49, align 4
  %51 = load i32, ptr %9, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %9, align 4
  %53 = load ptr, ptr %10, align 8
  %54 = load i32, ptr %15, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %53, i64 %55
  store i32 %51, ptr %56, align 4
  br label %57

57:                                               ; preds = %19
  %58 = load i32, ptr %13, align 4
  %59 = add i32 %58, -1
  store i32 %59, ptr %13, align 4
  br label %16, !llvm.loop !18

60:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetHeads4b(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store ptr %2, ptr %10, align 8
  store i32 %3, ptr %11, align 4
  store ptr %4, ptr %12, align 8
  store i32 %5, ptr %13, align 4
  store ptr %6, ptr %14, align 8
  br label %16

16:                                               ; preds = %63, %7
  %17 = load i32, ptr %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %16
  %20 = load ptr, ptr %14, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = getelementptr inbounds i8, ptr %21, i64 0
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds i32, ptr %20, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %8, align 8
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = xor i32 %26, %30
  %32 = load ptr, ptr %8, align 8
  %33 = getelementptr inbounds i8, ptr %32, i64 2
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 8
  %37 = xor i32 %31, %36
  %38 = load ptr, ptr %8, align 8
  %39 = getelementptr inbounds i8, ptr %38, i64 3
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 16
  %43 = xor i32 %37, %42
  %44 = load i32, ptr %11, align 4
  %45 = and i32 %43, %44
  store i32 %45, ptr %15, align 4
  %46 = load ptr, ptr %8, align 8
  %47 = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %47, ptr %8, align 8
  %48 = load i32, ptr %9, align 4
  %49 = load ptr, ptr %10, align 8
  %50 = load i32, ptr %15, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %49, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = sub i32 %48, %53
  %55 = load ptr, ptr %12, align 8
  %56 = getelementptr inbounds i32, ptr %55, i32 1
  store ptr %56, ptr %12, align 8
  store i32 %54, ptr %55, align 4
  %57 = load i32, ptr %9, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %9, align 4
  %59 = load ptr, ptr %10, align 8
  %60 = load i32, ptr %15, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %59, i64 %61
  store i32 %57, ptr %62, align 4
  br label %63

63:                                               ; preds = %19
  %64 = load i32, ptr %13, align 4
  %65 = add i32 %64, -1
  store i32 %65, ptr %13, align 4
  br label %16, !llvm.loop !19

66:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetHeads4(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store ptr %2, ptr %10, align 8
  store i32 %3, ptr %11, align 4
  store ptr %4, ptr %12, align 8
  store i32 %5, ptr %13, align 4
  store ptr %6, ptr %14, align 8
  br label %16

16:                                               ; preds = %66, %7
  %17 = load i32, ptr %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %69

19:                                               ; preds = %16
  %20 = load ptr, ptr %14, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = getelementptr inbounds i8, ptr %21, i64 0
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds i32, ptr %20, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %8, align 8
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = xor i32 %26, %30
  %32 = load ptr, ptr %8, align 8
  %33 = getelementptr inbounds i8, ptr %32, i64 2
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 8
  %37 = xor i32 %31, %36
  %38 = load ptr, ptr %14, align 8
  %39 = load ptr, ptr %8, align 8
  %40 = getelementptr inbounds i8, ptr %39, i64 3
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i32, ptr %38, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = shl i32 %44, 5
  %46 = xor i32 %37, %45
  %47 = load i32, ptr %11, align 4
  %48 = and i32 %46, %47
  store i32 %48, ptr %15, align 4
  %49 = load ptr, ptr %8, align 8
  %50 = getelementptr inbounds i8, ptr %49, i32 1
  store ptr %50, ptr %8, align 8
  %51 = load i32, ptr %9, align 4
  %52 = load ptr, ptr %10, align 8
  %53 = load i32, ptr %15, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %52, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = sub i32 %51, %56
  %58 = load ptr, ptr %12, align 8
  %59 = getelementptr inbounds i32, ptr %58, i32 1
  store ptr %59, ptr %12, align 8
  store i32 %57, ptr %58, align 4
  %60 = load i32, ptr %9, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %9, align 4
  %62 = load ptr, ptr %10, align 8
  %63 = load i32, ptr %15, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %62, i64 %64
  store i32 %60, ptr %65, align 4
  br label %66

66:                                               ; preds = %19
  %67 = load i32, ptr %13, align 4
  %68 = add i32 %67, -1
  store i32 %68, ptr %13, align 4
  br label %16, !llvm.loop !20

69:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MtSync_Create2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct._CMtSync, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, ptr %5, align 4
  br label %69

15:                                               ; preds = %4
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds %struct._CMtSync, ptr %16, i32 0, i32 12
  %18 = call i32 @CriticalSection_Init(ptr noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 12, ptr %5, align 4
  br label %69

21:                                               ; preds = %15
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct._CMtSync, ptr %22, i32 0, i32 10
  store i32 1, ptr %23, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds %struct._CMtSync, ptr %24, i32 0, i32 5
  %26 = call i32 @AutoResetEvent_CreateNotSignaled(ptr noundef %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 12, ptr %5, align 4
  br label %69

29:                                               ; preds = %21
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds %struct._CMtSync, ptr %30, i32 0, i32 6
  %32 = call i32 @AutoResetEvent_CreateNotSignaled(ptr noundef %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 12, ptr %5, align 4
  br label %69

35:                                               ; preds = %29
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct._CMtSync, ptr %36, i32 0, i32 7
  %38 = call i32 @AutoResetEvent_CreateNotSignaled(ptr noundef %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 12, ptr %5, align 4
  br label %69

41:                                               ; preds = %35
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr inbounds %struct._CMtSync, ptr %42, i32 0, i32 8
  %44 = load i32, ptr %9, align 4
  %45 = load i32, ptr %9, align 4
  %46 = call i32 @Semaphore_Create(ptr noundef %43, i32 noundef %44, i32 noundef %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 12, ptr %5, align 4
  br label %69

49:                                               ; preds = %41
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds %struct._CMtSync, ptr %50, i32 0, i32 9
  %52 = load i32, ptr %9, align 4
  %53 = call i32 @Semaphore_Create(ptr noundef %51, i32 noundef 0, i32 noundef %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 12, ptr %5, align 4
  br label %69

56:                                               ; preds = %49
  %57 = load ptr, ptr %6, align 8
  %58 = getelementptr inbounds %struct._CMtSync, ptr %57, i32 0, i32 1
  store i32 1, ptr %58, align 4
  %59 = load ptr, ptr %6, align 8
  %60 = getelementptr inbounds %struct._CMtSync, ptr %59, i32 0, i32 4
  %61 = load ptr, ptr %7, align 8
  %62 = load ptr, ptr %8, align 8
  %63 = call i32 @Thread_Create(ptr noundef %60, ptr noundef %61, ptr noundef %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i32 12, ptr %5, align 4
  br label %69

66:                                               ; preds = %56
  %67 = load ptr, ptr %6, align 8
  %68 = getelementptr inbounds %struct._CMtSync, ptr %67, i32 0, i32 0
  store i32 1, ptr %68, align 8
  store i32 0, ptr %5, align 4
  br label %69

69:                                               ; preds = %66, %65, %55, %48, %40, %34, %28, %20, %14
  %70 = load i32, ptr %5, align 4
  ret i32 %70
}

declare i32 @CriticalSection_Init(ptr noundef) #1

declare i32 @AutoResetEvent_CreateNotSignaled(ptr noundef) #1

declare i32 @Semaphore_Create(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @Thread_Create(ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
