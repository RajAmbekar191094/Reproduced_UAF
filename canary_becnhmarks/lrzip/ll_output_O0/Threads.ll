; ModuleID = './lzma/C/Threads.c'
source_filename = "./lzma/C/Threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Thread_Create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %union.pthread_attr_t, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct._CThread, ptr %10, i32 0, i32 1
  store i32 0, ptr %11, align 8
  %12 = call i32 @pthread_attr_init(ptr noundef %8) #3
  store i32 %12, ptr %9, align 4
  %13 = load i32, ptr %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, ptr %9, align 4
  store i32 %16, ptr %4, align 4
  br label %37

17:                                               ; preds = %3
  %18 = call i32 @pthread_attr_setdetachstate(ptr noundef %8, i32 noundef 0) #3
  store i32 %18, ptr %9, align 4
  %19 = load i32, ptr %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, ptr %9, align 4
  store i32 %22, ptr %4, align 4
  br label %37

23:                                               ; preds = %17
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct._CThread, ptr %24, i32 0, i32 0
  %26 = load ptr, ptr %6, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = call i32 @pthread_create(ptr noundef %25, ptr noundef %8, ptr noundef %26, ptr noundef %27) #3
  store i32 %28, ptr %9, align 4
  %29 = call i32 @pthread_attr_destroy(ptr noundef %8) #3
  %30 = load i32, ptr %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, ptr %9, align 4
  store i32 %33, ptr %4, align 4
  br label %37

34:                                               ; preds = %23
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds %struct._CThread, ptr %35, i32 0, i32 1
  store i32 1, ptr %36, align 8
  store i32 0, ptr %4, align 4
  br label %37

37:                                               ; preds = %34, %32, %21, %15
  %38 = load i32, ptr %4, align 4
  ret i32 %38
}

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_attr_setdetachstate(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Thread_Wait(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct._CThread, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 22, ptr %2, align 4
  br label %19

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct._CThread, ptr %12, i32 0, i32 0
  %14 = load i64, ptr %13, align 8
  %15 = call i32 @pthread_join(i64 noundef %14, ptr noundef %4)
  store i32 %15, ptr %5, align 4
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct._CThread, ptr %16, i32 0, i32 1
  store i32 0, ptr %17, align 8
  %18 = load i32, ptr %5, align 4
  store i32 %18, ptr %2, align 4
  br label %19

19:                                               ; preds = %11, %10
  %20 = load i32, ptr %2, align 4
  ret i32 %20
}

declare i32 @pthread_join(i64 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Thread_Close(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct._CThread, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %18

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct._CThread, ptr %10, i32 0, i32 0
  %12 = load i64, ptr %11, align 8
  %13 = call i32 @pthread_detach(i64 noundef %12) #3
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct._CThread, ptr %14, i32 0, i32 0
  store i64 0, ptr %15, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct._CThread, ptr %16, i32 0, i32 1
  store i32 0, ptr %17, align 8
  store i32 0, ptr %2, align 4
  br label %18

18:                                               ; preds = %9, %8
  %19 = load i32, ptr %2, align 4
  ret i32 %19
}

; Function Attrs: nounwind
declare i32 @pthread_detach(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Event_Create(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct._CEvent, ptr %7, i32 0, i32 3
  %9 = call i32 @pthread_mutex_init(ptr noundef %8, ptr noundef null) #3
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct._CEvent, ptr %10, i32 0, i32 4
  %12 = call i32 @pthread_cond_init(ptr noundef %11, ptr noundef null) #3
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct._CEvent, ptr %14, i32 0, i32 1
  store i32 %13, ptr %15, align 4
  %16 = load i32, ptr %6, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct._CEvent, ptr %20, i32 0, i32 2
  store i32 %19, ptr %21, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct._CEvent, ptr %22, i32 0, i32 0
  store i32 1, ptr %23, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Event_Set(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CEvent, ptr %3, i32 0, i32 3
  %5 = call i32 @pthread_mutex_lock(ptr noundef %4) #3
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct._CEvent, ptr %6, i32 0, i32 2
  store i32 1, ptr %7, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct._CEvent, ptr %8, i32 0, i32 4
  %10 = call i32 @pthread_cond_broadcast(ptr noundef %9) #3
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct._CEvent, ptr %11, i32 0, i32 3
  %13 = call i32 @pthread_mutex_unlock(ptr noundef %12) #3
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Event_Reset(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CEvent, ptr %3, i32 0, i32 3
  %5 = call i32 @pthread_mutex_lock(ptr noundef %4) #3
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct._CEvent, ptr %6, i32 0, i32 2
  store i32 0, ptr %7, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct._CEvent, ptr %8, i32 0, i32 3
  %10 = call i32 @pthread_mutex_unlock(ptr noundef %9) #3
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Event_Wait(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CEvent, ptr %3, i32 0, i32 3
  %5 = call i32 @pthread_mutex_lock(ptr noundef %4) #3
  br label %6

6:                                                ; preds = %11, %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct._CEvent, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct._CEvent, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct._CEvent, ptr %14, i32 0, i32 3
  %16 = call i32 @pthread_cond_wait(ptr noundef %13, ptr noundef %15)
  br label %6, !llvm.loop !6

17:                                               ; preds = %6
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct._CEvent, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct._CEvent, ptr %23, i32 0, i32 2
  store i32 0, ptr %24, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct._CEvent, ptr %26, i32 0, i32 3
  %28 = call i32 @pthread_mutex_unlock(ptr noundef %27) #3
  ret i32 0
}

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Event_Close(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CEvent, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct._CEvent, ptr %8, i32 0, i32 0
  store i32 0, ptr %9, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct._CEvent, ptr %10, i32 0, i32 3
  %12 = call i32 @pthread_mutex_destroy(ptr noundef %11) #3
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct._CEvent, ptr %13, i32 0, i32 4
  %15 = call i32 @pthread_cond_destroy(ptr noundef %14) #3
  br label %16

16:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Semaphore_Create(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct._CSemaphore, ptr %7, i32 0, i32 3
  %9 = call i32 @pthread_mutex_init(ptr noundef %8, ptr noundef null) #3
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct._CSemaphore, ptr %10, i32 0, i32 4
  %12 = call i32 @pthread_cond_init(ptr noundef %11, ptr noundef null) #3
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct._CSemaphore, ptr %14, i32 0, i32 1
  store i32 %13, ptr %15, align 4
  %16 = load i32, ptr %6, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct._CSemaphore, ptr %17, i32 0, i32 2
  store i32 %16, ptr %18, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct._CSemaphore, ptr %19, i32 0, i32 0
  store i32 1, ptr %20, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Semaphore_ReleaseN(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %7 = load i32, ptr %5, align 4
  %8 = icmp ult i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 22, ptr %3, align 4
  br label %38

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct._CSemaphore, ptr %11, i32 0, i32 3
  %13 = call i32 @pthread_mutex_lock(ptr noundef %12) #3
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct._CSemaphore, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %5, align 4
  %18 = add i32 %16, %17
  store i32 %18, ptr %6, align 4
  %19 = load i32, ptr %6, align 4
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct._CSemaphore, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = icmp ugt i32 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %10
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct._CSemaphore, ptr %25, i32 0, i32 3
  %27 = call i32 @pthread_mutex_unlock(ptr noundef %26) #3
  store i32 22, ptr %3, align 4
  br label %38

28:                                               ; preds = %10
  %29 = load i32, ptr %6, align 4
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct._CSemaphore, ptr %30, i32 0, i32 1
  store i32 %29, ptr %31, align 4
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct._CSemaphore, ptr %32, i32 0, i32 4
  %34 = call i32 @pthread_cond_broadcast(ptr noundef %33) #3
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds %struct._CSemaphore, ptr %35, i32 0, i32 3
  %37 = call i32 @pthread_mutex_unlock(ptr noundef %36) #3
  store i32 0, ptr %3, align 4
  br label %38

38:                                               ; preds = %28, %24, %9
  %39 = load i32, ptr %3, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Semaphore_Wait(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CSemaphore, ptr %3, i32 0, i32 3
  %5 = call i32 @pthread_mutex_lock(ptr noundef %4) #3
  br label %6

6:                                                ; preds = %11, %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct._CSemaphore, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct._CSemaphore, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct._CSemaphore, ptr %14, i32 0, i32 3
  %16 = call i32 @pthread_cond_wait(ptr noundef %13, ptr noundef %15)
  br label %6, !llvm.loop !8

17:                                               ; preds = %6
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct._CSemaphore, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  store i32 %21, ptr %19, align 4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct._CSemaphore, ptr %22, i32 0, i32 3
  %24 = call i32 @pthread_mutex_unlock(ptr noundef %23) #3
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Semaphore_Close(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._CSemaphore, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct._CSemaphore, ptr %8, i32 0, i32 0
  store i32 0, ptr %9, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct._CSemaphore, ptr %10, i32 0, i32 3
  %12 = call i32 @pthread_mutex_destroy(ptr noundef %11) #3
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct._CSemaphore, ptr %13, i32 0, i32 4
  %15 = call i32 @pthread_cond_destroy(ptr noundef %14) #3
  br label %16

16:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CriticalSection_Init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.CCriticalSection, ptr %3, i32 0, i32 0
  %5 = call i32 @pthread_mutex_init(ptr noundef %4, ptr noundef null) #3
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ManualResetEvent_Create(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  %7 = call i32 @Event_Create(ptr noundef %5, i32 noundef 1, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ManualResetEvent_CreateNotSignaled(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 @ManualResetEvent_Create(ptr noundef %3, i32 noundef 0)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AutoResetEvent_Create(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  %7 = call i32 @Event_Create(ptr noundef %5, i32 noundef 0, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AutoResetEvent_CreateNotSignaled(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 @AutoResetEvent_Create(ptr noundef %3, i32 noundef 0)
  ret i32 %4
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
