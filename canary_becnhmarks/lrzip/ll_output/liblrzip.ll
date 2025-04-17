; ModuleID = './liblrzip.c'
source_filename = "./liblrzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Lrzip = type { i32, i32, ptr, ptr, i64, i64, ptr, i64, i64 }
%struct.rzip_control = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i8, i64, i64, i64, [5 x i8], i64, i64, i64, i64, i64, i32, i8, i8, i8, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, [8 x i8], ptr, i32, ptr, %union.pthread_mutex_t, i8, i8, i8, %union.sem_t, %struct.md5_ctx, [16 x i8], i64, %struct.checksum, ptr, i8, ptr, i64, i64, ptr, i8, ptr, i8, i32, ptr, ptr, ptr, ptr, i8, %struct.sliding_buffer, ptr, ptr, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.sem_t = type { i64, [24 x i8] }
%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.checksum = type { ptr, ptr, i64 }
%struct.sliding_buffer = type { ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"LRZIP\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"NOCONFIG\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@lrzip_filename_pop.buf = internal global [4096 x i8] zeroinitializer, align 16
@stderr = external global ptr, align 8
@stdout = external global ptr, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"./liblrzip.c\00", align 1
@__func__.lrzip_run = private unnamed_addr constant [10 x i8] c"lrzip_run\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"No password callback set!\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Total time: %02d:%02d:%05.2f\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrzip_init() #0 {
  call void @CrcGenerateTable()
  ret i1 true
}

declare void @CrcGenerateTable() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_config_env(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = call ptr @getenv(ptr noundef @.str) #9
  store ptr %4, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = call zeroext i1 @read_config(ptr noundef %10)
  br label %22

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8
  %14 = call ptr @strstr(ptr noundef %13, ptr noundef @.str.1) #10
  %15 = icmp ne ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.Lrzip, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = call zeroext i1 @read_config(ptr noundef %19)
  br label %21

21:                                               ; preds = %16, %12
  br label %22

22:                                               ; preds = %21, %7
  ret void
}

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #2

declare zeroext i1 @read_config(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_free(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.Lrzip, ptr %7, i32 0, i32 5
  %9 = load i64, ptr %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  br label %56

12:                                               ; preds = %6
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.Lrzip, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  call void @rzip_control_free(ptr noundef %15)
  store i64 0, ptr %3, align 8
  br label %16

16:                                               ; preds = %36, %12
  %17 = load i64, ptr %3, align 8
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.Lrzip, ptr %18, i32 0, i32 4
  %20 = load i64, ptr %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.Lrzip, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = load i64, ptr %3, align 8
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8
  call void @free(ptr noundef %29) #9
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.Lrzip, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = load i64, ptr %3, align 8
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  store ptr null, ptr %34, align 8
  br label %35

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i64, ptr %3, align 8
  %38 = add i64 %37, 1
  store i64 %38, ptr %3, align 8
  br label %16, !llvm.loop !6

39:                                               ; preds = %16
  br label %40

40:                                               ; preds = %39
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr inbounds %struct.Lrzip, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8
  call void @free(ptr noundef %43) #9
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds %struct.Lrzip, ptr %44, i32 0, i32 3
  store ptr null, ptr %45, align 8
  br label %46

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds %struct.Lrzip, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 8
  call void @free(ptr noundef %50) #9
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds %struct.Lrzip, ptr %51, i32 0, i32 6
  store ptr null, ptr %52, align 8
  br label %53

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %55) #9
  store ptr null, ptr %2, align 8
  br label %56

56:                                               ; preds = %11, %54
  ret void
}

declare void @rzip_control_free(ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lrzip_new(i32 noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  %5 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 64) #11
  store ptr %5, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %35

9:                                                ; preds = %1
  %10 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 864) #11
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.Lrzip, ptr %11, i32 0, i32 2
  store ptr %10, ptr %12, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.Lrzip, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  br label %33

18:                                               ; preds = %9
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.Lrzip, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = call zeroext i1 @initialise_control(ptr noundef %21)
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %33

24:                                               ; preds = %18
  %25 = load i32, ptr %3, align 4
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.Lrzip, ptr %26, i32 0, i32 0
  store i32 %25, ptr %27, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.Lrzip, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.rzip_control, ptr %30, i32 0, i32 64
  store i8 1, ptr %31, align 8
  %32 = load ptr, ptr %4, align 8
  store ptr %32, ptr %2, align 8
  br label %35

33:                                               ; preds = %23, %17
  %34 = load ptr, ptr %4, align 8
  call void @lrzip_free(ptr noundef %34)
  store ptr null, ptr %2, align 8
  br label %35

35:                                               ; preds = %33, %24, %8
  %36 = load ptr, ptr %2, align 8
  ret ptr %36
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #4

declare zeroext i1 @initialise_control(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lrzip_mode_get(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  store i32 %10, ptr %2, align 4
  br label %11

11:                                               ; preds = %7, %6
  %12 = load i32, ptr %2, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrzip_mode_set(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %6 = load ptr, ptr %4, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, ptr %5, align 4
  %10 = icmp ugt i32 %9, 9
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i1 false, ptr %3, align 1
  br label %16

12:                                               ; preds = %8
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.Lrzip, ptr %14, i32 0, i32 0
  store i32 %13, ptr %15, align 8
  store i1 true, ptr %3, align 1
  br label %16

16:                                               ; preds = %12, %11
  %17 = load i1, ptr %3, align 1
  ret i1 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrzip_compression_level_set(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %6 = load ptr, ptr %4, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, ptr %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, ptr %5, align 4
  %13 = icmp ugt i32 %12, 9
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %8, %2
  store i1 false, ptr %3, align 1
  br label %22

15:                                               ; preds = %11
  %16 = load i32, ptr %5, align 4
  %17 = trunc i32 %16 to i8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.Lrzip, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.rzip_control, ptr %20, i32 0, i32 20
  store i8 %17, ptr %21, align 8
  store i1 true, ptr %3, align 1
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i1, ptr %3, align 1
  ret i1 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lrzip_compression_level_get(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 20
  %12 = load i8, ptr %11, align 8
  %13 = zext i8 %12 to i32
  store i32 %13, ptr %2, align 4
  br label %14

14:                                               ; preds = %7, %6
  %15 = load i32, ptr %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_flags_set(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %12

8:                                                ; preds = %2
  %9 = load i32, ptr %4, align 4
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.Lrzip, ptr %10, i32 0, i32 1
  store i32 %9, ptr %11, align 4
  br label %12

12:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lrzip_flags_get(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %2, align 4
  br label %11

11:                                               ; preds = %7, %6
  %12 = load i32, ptr %2, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_nice_set(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4
  %9 = icmp slt i32 %8, -19
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %4, align 4
  %12 = icmp sgt i32 %11, 20
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %7, %2
  br label %21

14:                                               ; preds = %10
  %15 = load i32, ptr %4, align 4
  %16 = trunc i32 %15 to i8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.Lrzip, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.rzip_control, ptr %19, i32 0, i32 31
  store i8 %16, ptr %20, align 4
  br label %21

21:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lrzip_nice_get(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 31
  %12 = load i8, ptr %11, align 4
  %13 = sext i8 %12 to i32
  store i32 %13, ptr %2, align 4
  br label %14

14:                                               ; preds = %7, %6
  %15 = load i32, ptr %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_threads_set(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %2
  br label %17

11:                                               ; preds = %7
  %12 = load i32, ptr %4, align 4
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.Lrzip, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.rzip_control, ptr %15, i32 0, i32 30
  store i32 %12, ptr %16, align 8
  br label %17

17:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lrzip_threads_get(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 30
  %12 = load i32, ptr %11, align 8
  store i32 %12, ptr %2, align 4
  br label %13

13:                                               ; preds = %7, %6
  %14 = load i32, ptr %2, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_compression_window_max_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %14

8:                                                ; preds = %2
  %9 = load i64, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.Lrzip, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.rzip_control, ptr %12, i32 0, i32 25
  store i64 %9, ptr %13, align 8
  br label %14

14:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lrzip_compression_window_max_get(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i64 -1, ptr %2, align 8
  br label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 25
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %2, align 8
  br label %13

13:                                               ; preds = %7, %6
  %14 = load i64, ptr %2, align 8
  ret i64 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lrzip_files_count(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %12

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 7
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, ptr %2, align 4
  br label %12

12:                                               ; preds = %7, %6
  %13 = load i32, ptr %2, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lrzip_filenames_count(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %12

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 4
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, ptr %2, align 4
  br label %12

12:                                               ; preds = %7, %6
  %13 = load i32, ptr %2, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lrzip_files_get(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %2, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load ptr, ptr %2, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lrzip_filenames_get(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %2, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load ptr, ptr %2, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrzip_file_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store i1 false, ptr %3, align 1
  br label %72

13:                                               ; preds = %9
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.Lrzip, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i1 false, ptr %3, align 1
  br label %72

19:                                               ; preds = %13
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.Lrzip, ptr %20, i32 0, i32 8
  %22 = load i64, ptr %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = call noalias ptr @calloc(i64 noundef 11, i64 noundef 8) #11
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.Lrzip, ptr %26, i32 0, i32 6
  store ptr %25, ptr %27, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.Lrzip, ptr %28, i32 0, i32 8
  %30 = load i64, ptr %29, align 8
  %31 = add i64 %30, 1
  store i64 %31, ptr %29, align 8
  br label %62

32:                                               ; preds = %19
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.Lrzip, ptr %33, i32 0, i32 7
  %35 = load i64, ptr %34, align 8
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.Lrzip, ptr %36, i32 0, i32 8
  %38 = load i64, ptr %37, align 8
  %39 = mul i64 10, %38
  %40 = add i64 %39, 1
  %41 = icmp eq i64 %35, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %32
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.Lrzip, ptr %43, i32 0, i32 6
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds %struct.Lrzip, ptr %46, i32 0, i32 8
  %48 = load i64, ptr %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, ptr %47, align 8
  %50 = mul i64 %49, 10
  %51 = add i64 %50, 1
  %52 = mul i64 %51, 8
  %53 = call ptr @realloc(ptr noundef %45, i64 noundef %52) #12
  store ptr %53, ptr %6, align 8
  %54 = load ptr, ptr %6, align 8
  %55 = icmp ne ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %42
  store i1 false, ptr %3, align 1
  br label %72

57:                                               ; preds = %42
  %58 = load ptr, ptr %6, align 8
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds %struct.Lrzip, ptr %59, i32 0, i32 6
  store ptr %58, ptr %60, align 8
  br label %61

61:                                               ; preds = %57, %32
  br label %62

62:                                               ; preds = %61, %24
  %63 = load ptr, ptr %5, align 8
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds %struct.Lrzip, ptr %64, i32 0, i32 6
  %66 = load ptr, ptr %65, align 8
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr inbounds %struct.Lrzip, ptr %67, i32 0, i32 7
  %69 = load i64, ptr %68, align 8
  %70 = add i64 %69, 1
  store i64 %70, ptr %68, align 8
  %71 = getelementptr inbounds ptr, ptr %66, i64 %69
  store ptr %63, ptr %71, align 8
  store i1 true, ptr %3, align 1
  br label %72

72:                                               ; preds = %62, %56, %18, %12
  %73 = load i1, ptr %3, align 1
  ret i1 %73
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrzip_file_del(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store i1 false, ptr %3, align 1
  br label %57

13:                                               ; preds = %9
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.Lrzip, ptr %14, i32 0, i32 8
  %16 = load i64, ptr %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i1 true, ptr %3, align 1
  br label %57

19:                                               ; preds = %13
  store i64 0, ptr %6, align 8
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i64, ptr %6, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.Lrzip, ptr %22, i32 0, i32 7
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, 1
  %26 = icmp ule i64 %21, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %20
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.Lrzip, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 8
  %31 = load i64, ptr %6, align 8
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8
  %34 = icmp ne ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i1 true, ptr %3, align 1
  br label %57

36:                                               ; preds = %27
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %struct.Lrzip, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8
  %40 = load i64, ptr %6, align 8
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8
  %43 = load ptr, ptr %5, align 8
  %44 = icmp ne ptr %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %47

46:                                               ; preds = %36
  br label %50

47:                                               ; preds = %45
  %48 = load i64, ptr %6, align 8
  %49 = add i64 %48, 1
  store i64 %49, ptr %6, align 8
  br label %20, !llvm.loop !8

50:                                               ; preds = %46, %20
  %51 = load i64, ptr %6, align 8
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds %struct.Lrzip, ptr %52, i32 0, i32 7
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.Lrzip, ptr %54, i32 0, i32 6
  %56 = load ptr, ptr %55, align 8
  call void @liblrzip_index_update(i64 noundef %51, ptr noundef %53, ptr noundef %56)
  store i1 true, ptr %3, align 1
  br label %57

57:                                               ; preds = %50, %35, %18, %12
  %58 = load i1, ptr %3, align 1
  ret i1 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @liblrzip_index_update(i64 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  br label %7

7:                                                ; preds = %21, %3
  %8 = load i64, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load i64, ptr %9, align 8
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8
  %14 = load i64, ptr %4, align 8
  %15 = add i64 %14, 1
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = load i64, ptr %4, align 8
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  store ptr %17, ptr %20, align 8
  br label %21

21:                                               ; preds = %12
  %22 = load i64, ptr %4, align 8
  %23 = add i64 %22, 1
  store i64 %23, ptr %4, align 8
  br label %7, !llvm.loop !9

24:                                               ; preds = %7
  %25 = load ptr, ptr %5, align 8
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %26, -1
  store i64 %27, ptr %25, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lrzip_file_pop(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 8
  %10 = load i64, ptr %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  store ptr null, ptr %2, align 8
  br label %23

13:                                               ; preds = %7
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.Lrzip, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds ptr, ptr %16, i64 0
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %4, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = call zeroext i1 @lrzip_file_del(ptr noundef %19, ptr noundef %20)
  %22 = load ptr, ptr %4, align 8
  store ptr %22, ptr %2, align 8
  br label %23

23:                                               ; preds = %13, %12
  %24 = load ptr, ptr %2, align 8
  ret ptr %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_files_clear(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.Lrzip, ptr %6, i32 0, i32 8
  %8 = load i64, ptr %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  br label %21

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.Lrzip, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %15) #9
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.Lrzip, ptr %16, i32 0, i32 6
  store ptr null, ptr %17, align 8
  br label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.Lrzip, ptr %19, i32 0, i32 6
  store ptr null, ptr %20, align 8
  br label %21

21:                                               ; preds = %18, %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrzip_filename_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds i8, ptr %14, i64 0
  %16 = load i8, ptr %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load ptr, ptr %5, align 8
  %20 = call i32 @strcmp(ptr noundef %19, ptr noundef @.str.2) #10
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %13, %10, %2
  store i1 false, ptr %3, align 1
  br label %94

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.Lrzip, ptr %24, i32 0, i32 6
  %26 = load ptr, ptr %25, align 8
  %27 = icmp ne ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i1 false, ptr %3, align 1
  br label %94

29:                                               ; preds = %23
  %30 = load ptr, ptr %5, align 8
  %31 = call i32 @stat64(ptr noundef %30, ptr noundef %6) #9
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i1 false, ptr %3, align 1
  br label %94

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 3
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 61440
  %38 = icmp eq i32 %37, 16384
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i1 false, ptr %3, align 1
  br label %94

40:                                               ; preds = %34
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds %struct.Lrzip, ptr %41, i32 0, i32 5
  %43 = load i64, ptr %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = call noalias ptr @calloc(i64 noundef 11, i64 noundef 8) #11
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds %struct.Lrzip, ptr %47, i32 0, i32 3
  store ptr %46, ptr %48, align 8
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds %struct.Lrzip, ptr %49, i32 0, i32 5
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %51, 1
  store i64 %52, ptr %50, align 8
  br label %83

53:                                               ; preds = %40
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.Lrzip, ptr %54, i32 0, i32 4
  %56 = load i64, ptr %55, align 8
  %57 = load ptr, ptr %4, align 8
  %58 = getelementptr inbounds %struct.Lrzip, ptr %57, i32 0, i32 5
  %59 = load i64, ptr %58, align 8
  %60 = mul i64 10, %59
  %61 = add i64 %60, 1
  %62 = icmp eq i64 %56, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %53
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds %struct.Lrzip, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 8
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr inbounds %struct.Lrzip, ptr %67, i32 0, i32 5
  %69 = load i64, ptr %68, align 8
  %70 = add i64 %69, 1
  store i64 %70, ptr %68, align 8
  %71 = mul i64 %70, 10
  %72 = add i64 %71, 1
  %73 = mul i64 %72, 8
  %74 = call ptr @realloc(ptr noundef %66, i64 noundef %73) #12
  store ptr %74, ptr %7, align 8
  %75 = load ptr, ptr %7, align 8
  %76 = icmp ne ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %63
  store i1 false, ptr %3, align 1
  br label %94

78:                                               ; preds = %63
  %79 = load ptr, ptr %7, align 8
  %80 = load ptr, ptr %4, align 8
  %81 = getelementptr inbounds %struct.Lrzip, ptr %80, i32 0, i32 3
  store ptr %79, ptr %81, align 8
  br label %82

82:                                               ; preds = %78, %53
  br label %83

83:                                               ; preds = %82, %45
  %84 = load ptr, ptr %5, align 8
  %85 = call noalias ptr @strdup(ptr noundef %84) #9
  %86 = load ptr, ptr %4, align 8
  %87 = getelementptr inbounds %struct.Lrzip, ptr %86, i32 0, i32 3
  %88 = load ptr, ptr %87, align 8
  %89 = load ptr, ptr %4, align 8
  %90 = getelementptr inbounds %struct.Lrzip, ptr %89, i32 0, i32 4
  %91 = load i64, ptr %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, ptr %90, align 8
  %93 = getelementptr inbounds ptr, ptr %88, i64 %91
  store ptr %85, ptr %93, align 8
  store i1 true, ptr %3, align 1
  br label %94

94:                                               ; preds = %83, %77, %39, %33, %28, %22
  %95 = load i1, ptr %3, align 1
  ret i1 %95
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @stat64(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrzip_filename_del(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds i8, ptr %13, i64 0
  %15 = load i8, ptr %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %9, %2
  store i1 false, ptr %3, align 1
  br label %76

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.Lrzip, ptr %19, i32 0, i32 5
  %21 = load i64, ptr %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i1 true, ptr %3, align 1
  br label %76

24:                                               ; preds = %18
  store i64 0, ptr %6, align 8
  br label %25

25:                                               ; preds = %66, %24
  %26 = load i64, ptr %6, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds %struct.Lrzip, ptr %27, i32 0, i32 4
  %29 = load i64, ptr %28, align 8
  %30 = add i64 %29, 1
  %31 = icmp ule i64 %26, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %25
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.Lrzip, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = load i64, ptr %6, align 8
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8
  %39 = icmp ne ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  store i1 true, ptr %3, align 1
  br label %76

41:                                               ; preds = %32
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.Lrzip, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = load i64, ptr %6, align 8
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  %47 = load ptr, ptr %46, align 8
  %48 = load ptr, ptr %5, align 8
  %49 = call i32 @strcmp(ptr noundef %47, ptr noundef %48) #10
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %66

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.Lrzip, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = load i64, ptr %6, align 8
  %58 = getelementptr inbounds ptr, ptr %56, i64 %57
  %59 = load ptr, ptr %58, align 8
  call void @free(ptr noundef %59) #9
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr inbounds %struct.Lrzip, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 8
  %63 = load i64, ptr %6, align 8
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  store ptr null, ptr %64, align 8
  br label %65

65:                                               ; preds = %53
  br label %69

66:                                               ; preds = %51
  %67 = load i64, ptr %6, align 8
  %68 = add i64 %67, 1
  store i64 %68, ptr %6, align 8
  br label %25, !llvm.loop !10

69:                                               ; preds = %65, %25
  %70 = load i64, ptr %6, align 8
  %71 = load ptr, ptr %4, align 8
  %72 = getelementptr inbounds %struct.Lrzip, ptr %71, i32 0, i32 4
  %73 = load ptr, ptr %4, align 8
  %74 = getelementptr inbounds %struct.Lrzip, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8
  call void @liblrzip_index_update(i64 noundef %70, ptr noundef %72, ptr noundef %75)
  store i1 true, ptr %3, align 1
  br label %76

76:                                               ; preds = %69, %40, %23, %17
  %77 = load i1, ptr %3, align 1
  ret i1 %77
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lrzip_filename_pop(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.Lrzip, ptr %7, i32 0, i32 5
  %9 = load i64, ptr %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  store ptr null, ptr %2, align 8
  br label %21

12:                                               ; preds = %6
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.Lrzip, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds ptr, ptr %15, i64 0
  %17 = load ptr, ptr %16, align 8
  %18 = call ptr @strcat(ptr noundef @lrzip_filename_pop.buf, ptr noundef %17) #9
  %19 = load ptr, ptr %3, align 8
  %20 = call zeroext i1 @lrzip_filename_del(ptr noundef %19, ptr noundef @lrzip_filename_pop.buf)
  store ptr @lrzip_filename_pop.buf, ptr %2, align 8
  br label %21

21:                                               ; preds = %12, %11
  %22 = load ptr, ptr %2, align 8
  ret ptr %22
}

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_filenames_clear(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.Lrzip, ptr %7, i32 0, i32 5
  %9 = load i64, ptr %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  br label %46

12:                                               ; preds = %6
  store i64 0, ptr %3, align 8
  br label %13

13:                                               ; preds = %33, %12
  %14 = load i64, ptr %3, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.Lrzip, ptr %15, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.Lrzip, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = load i64, ptr %3, align 8
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8
  call void @free(ptr noundef %26) #9
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.Lrzip, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = load i64, ptr %3, align 8
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  store ptr null, ptr %31, align 8
  br label %32

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i64, ptr %3, align 8
  %35 = add i64 %34, 1
  store i64 %35, ptr %3, align 8
  br label %13, !llvm.loop !11

36:                                               ; preds = %13
  br label %37

37:                                               ; preds = %36
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.Lrzip, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  call void @free(ptr noundef %40) #9
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr inbounds %struct.Lrzip, ptr %41, i32 0, i32 3
  store ptr null, ptr %42, align 8
  br label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds %struct.Lrzip, ptr %44, i32 0, i32 3
  store ptr null, ptr %45, align 8
  br label %46

46:                                               ; preds = %43, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_suffix_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 0
  %13 = load i8, ptr %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %7, %2
  br label %34

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.Lrzip, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.rzip_control, ptr %20, i32 0, i32 19
  %22 = load ptr, ptr %21, align 8
  call void @free(ptr noundef %22) #9
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.Lrzip, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.rzip_control, ptr %25, i32 0, i32 19
  store ptr null, ptr %26, align 8
  br label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr %4, align 8
  %29 = call noalias ptr @strdup(ptr noundef %28) #9
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct.Lrzip, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.rzip_control, ptr %32, i32 0, i32 19
  store ptr %29, ptr %33, align 8
  br label %34

34:                                               ; preds = %27, %15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lrzip_suffix_get(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 19
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %2, align 8
  br label %13

13:                                               ; preds = %7, %6
  %14 = load ptr, ptr %2, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_outdir_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i8, ptr %14, i64 0
  %16 = load i8, ptr %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %10, %2
  br label %73

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.Lrzip, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.rzip_control, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8
  call void @free(ptr noundef %25) #9
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.Lrzip, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.rzip_control, ptr %28, i32 0, i32 5
  store ptr null, ptr %29, align 8
  br label %30

30:                                               ; preds = %20
  %31 = load ptr, ptr %4, align 8
  %32 = call ptr @strrchr(ptr noundef %31, i32 noundef 47) #10
  store ptr %32, ptr %5, align 8
  %33 = load ptr, ptr %5, align 8
  %34 = icmp ne ptr %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 8
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = load i8, ptr %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load ptr, ptr %4, align 8
  %43 = call noalias ptr @strdup(ptr noundef %42) #9
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.Lrzip, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.rzip_control, ptr %46, i32 0, i32 5
  store ptr %43, ptr %47, align 8
  br label %73

48:                                               ; preds = %35, %30
  %49 = load ptr, ptr %4, align 8
  %50 = call i64 @strlen(ptr noundef %49) #10
  store i64 %50, ptr %7, align 8
  %51 = load i64, ptr %7, align 8
  %52 = add i64 %51, 2
  %53 = call noalias ptr @malloc(i64 noundef %52) #13
  store ptr %53, ptr %6, align 8
  %54 = load ptr, ptr %6, align 8
  %55 = icmp ne ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %73

57:                                               ; preds = %48
  %58 = load ptr, ptr %6, align 8
  %59 = load ptr, ptr %4, align 8
  %60 = load i64, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr align 1 %59, i64 %60, i1 false)
  %61 = load ptr, ptr %6, align 8
  %62 = load i64, ptr %7, align 8
  %63 = getelementptr inbounds i8, ptr %61, i64 %62
  store i8 47, ptr %63, align 1
  %64 = load ptr, ptr %6, align 8
  %65 = load i64, ptr %7, align 8
  %66 = add i64 %65, 1
  %67 = getelementptr inbounds i8, ptr %64, i64 %66
  store i8 0, ptr %67, align 1
  %68 = load ptr, ptr %6, align 8
  %69 = load ptr, ptr %3, align 8
  %70 = getelementptr inbounds %struct.Lrzip, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.rzip_control, ptr %71, i32 0, i32 5
  store ptr %68, ptr %72, align 8
  br label %73

73:                                               ; preds = %57, %56, %41, %18
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lrzip_outdir_get(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %2, align 8
  br label %13

13:                                               ; preds = %7, %6
  %14 = load ptr, ptr %2, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_outfile_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8
  %12 = load ptr, ptr @stderr, align 8
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %2
  br label %29

15:                                               ; preds = %10, %7
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.Lrzip, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.rzip_control, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %29

23:                                               ; preds = %15
  %24 = load ptr, ptr %4, align 8
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.Lrzip, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.rzip_control, ptr %27, i32 0, i32 4
  store ptr %24, ptr %28, align 8
  br label %29

29:                                               ; preds = %23, %22, %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lrzip_outfile_get(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %2, align 8
  br label %13

13:                                               ; preds = %7, %6
  %14 = load ptr, ptr %2, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_outfilename_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 0
  %13 = load i8, ptr %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %2
  br label %68

16:                                               ; preds = %10, %7
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.Lrzip, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.rzip_control, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %68

24:                                               ; preds = %16
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.Lrzip, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.rzip_control, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = icmp ne ptr %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load ptr, ptr %4, align 8
  %33 = icmp ne ptr %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.Lrzip, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.rzip_control, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = call i32 @strcmp(ptr noundef %39, ptr noundef %40) #10
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %68

44:                                               ; preds = %34, %31, %24
  br label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct.Lrzip, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.rzip_control, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  call void @free(ptr noundef %50) #9
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.Lrzip, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.rzip_control, ptr %53, i32 0, i32 2
  store ptr null, ptr %54, align 8
  br label %55

55:                                               ; preds = %45
  %56 = load ptr, ptr %4, align 8
  %57 = icmp ne ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load ptr, ptr %4, align 8
  %60 = call noalias ptr @strdup(ptr noundef %59) #9
  br label %62

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi ptr [ %60, %58 ], [ null, %61 ]
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %struct.Lrzip, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.rzip_control, ptr %66, i32 0, i32 2
  store ptr %63, ptr %67, align 8
  br label %68

68:                                               ; preds = %62, %43, %23, %15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lrzip_outfilename_get(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %2, align 8
  br label %13

13:                                               ; preds = %7, %6
  %14 = load ptr, ptr %2, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lrzip_md5digest_get(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 53
  %12 = getelementptr inbounds [16 x i8], ptr %11, i64 0, i64 0
  store ptr %12, ptr %2, align 8
  br label %13

13:                                               ; preds = %7, %6
  %14 = load ptr, ptr %2, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrzip_run(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = call zeroext i1 @liblrzip_setup_flags(ptr noundef %11)
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i1 false, ptr %2, align 1
  br label %242

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.Lrzip, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %6, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.Lrzip, ptr %18, i32 0, i32 7
  %20 = load i64, ptr %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %14
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.Lrzip, ptr %23, i32 0, i32 4
  %25 = load i64, ptr %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i1 false, ptr %2, align 1
  br label %242

28:                                               ; preds = %22, %14
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.Lrzip, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.rzip_control, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 8
  %34 = icmp ne ptr %33, null
  br i1 %34, label %35, label %68

35:                                               ; preds = %28
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr inbounds %struct.Lrzip, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.rzip_control, ptr %38, i32 0, i32 4
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds %struct.Lrzip, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.rzip_control, ptr %43, i32 0, i32 17
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %40, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = load ptr, ptr @stderr, align 8
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct.Lrzip, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.rzip_control, ptr %51, i32 0, i32 17
  store ptr %48, ptr %52, align 8
  br label %53

53:                                               ; preds = %47, %35
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr inbounds %struct.Lrzip, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.rzip_control, ptr %56, i32 0, i32 26
  %58 = load i64, ptr %57, align 8
  %59 = or i64 %58, 8192
  store i64 %59, ptr %57, align 8
  %60 = load ptr, ptr %3, align 8
  %61 = getelementptr inbounds %struct.Lrzip, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = load ptr, ptr %3, align 8
  %64 = getelementptr inbounds %struct.Lrzip, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.rzip_control, ptr %65, i32 0, i32 17
  %67 = load ptr, ptr %66, align 8
  call void @register_outputfile(ptr noundef %62, ptr noundef %67)
  br label %68

68:                                               ; preds = %53, %28
  %69 = load ptr, ptr %3, align 8
  %70 = getelementptr inbounds %struct.Lrzip, ptr %69, i32 0, i32 3
  %71 = load ptr, ptr %70, align 8
  %72 = icmp ne ptr %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load ptr, ptr %3, align 8
  %75 = getelementptr inbounds %struct.Lrzip, ptr %74, i32 0, i32 3
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds ptr, ptr %76, i64 0
  %78 = load ptr, ptr %77, align 8
  %79 = load ptr, ptr %3, align 8
  %80 = getelementptr inbounds %struct.Lrzip, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.rzip_control, ptr %81, i32 0, i32 0
  store ptr %78, ptr %82, align 8
  br label %97

83:                                               ; preds = %68
  %84 = load ptr, ptr %3, align 8
  %85 = getelementptr inbounds %struct.Lrzip, ptr %84, i32 0, i32 6
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds ptr, ptr %86, i64 0
  %88 = load ptr, ptr %87, align 8
  %89 = load ptr, ptr %3, align 8
  %90 = getelementptr inbounds %struct.Lrzip, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.rzip_control, ptr %91, i32 0, i32 1
  store ptr %88, ptr %92, align 8
  %93 = load ptr, ptr %6, align 8
  %94 = getelementptr inbounds %struct.rzip_control, ptr %93, i32 0, i32 26
  %95 = load i64, ptr %94, align 8
  %96 = or i64 %95, 4096
  store i64 %96, ptr %94, align 8
  br label %97

97:                                               ; preds = %83, %73
  %98 = load ptr, ptr %6, align 8
  %99 = getelementptr inbounds %struct.rzip_control, ptr %98, i32 0, i32 26
  %100 = load i64, ptr %99, align 8
  %101 = and i64 %100, 8192
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %116, label %103

103:                                              ; preds = %97
  %104 = load ptr, ptr %3, align 8
  %105 = getelementptr inbounds %struct.Lrzip, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.rzip_control, ptr %106, i32 0, i32 17
  %108 = load ptr, ptr %107, align 8
  %109 = icmp ne ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %103
  %111 = load ptr, ptr @stdout, align 8
  %112 = load ptr, ptr %3, align 8
  %113 = getelementptr inbounds %struct.Lrzip, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds %struct.rzip_control, ptr %114, i32 0, i32 17
  store ptr %111, ptr %115, align 8
  br label %116

116:                                              ; preds = %110, %103, %97
  %117 = load ptr, ptr %3, align 8
  %118 = getelementptr inbounds %struct.Lrzip, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8
  %120 = load ptr, ptr %3, align 8
  %121 = getelementptr inbounds %struct.Lrzip, ptr %120, i32 0, i32 2
  %122 = load ptr, ptr %121, align 8
  %123 = getelementptr inbounds %struct.rzip_control, ptr %122, i32 0, i32 17
  %124 = load ptr, ptr %123, align 8
  call void @register_outputfile(ptr noundef %119, ptr noundef %124)
  %125 = load ptr, ptr %3, align 8
  %126 = getelementptr inbounds %struct.Lrzip, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 8
  call void @setup_ram(ptr noundef %127)
  %128 = call i32 @gettimeofday(ptr noundef %4, ptr noundef null) #9
  %129 = load ptr, ptr %6, align 8
  %130 = getelementptr inbounds %struct.rzip_control, ptr %129, i32 0, i32 26
  %131 = load i64, ptr %130, align 8
  %132 = and i64 %131, 8388608
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %116
  %135 = load ptr, ptr %3, align 8
  %136 = getelementptr inbounds %struct.Lrzip, ptr %135, i32 0, i32 2
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.rzip_control, ptr %137, i32 0, i32 41
  %139 = load ptr, ptr %138, align 8
  %140 = icmp ne ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141
  %143 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %143, i32 noundef 557, ptr noundef @.str.3, ptr noundef @__func__.lrzip_run, ptr noundef @.str.4)
  br label %144

144:                                              ; preds = %142
  store i1 false, ptr %2, align 1
  br label %242

145:                                              ; preds = %134, %116
  %146 = load ptr, ptr %6, align 8
  %147 = getelementptr inbounds %struct.rzip_control, ptr %146, i32 0, i32 26
  %148 = load i64, ptr %147, align 8
  %149 = and i64 %148, 16
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %145
  %152 = load ptr, ptr %6, align 8
  %153 = getelementptr inbounds %struct.rzip_control, ptr %152, i32 0, i32 26
  %154 = load i64, ptr %153, align 8
  %155 = and i64 %154, 4
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %151, %145
  %158 = load ptr, ptr %3, align 8
  %159 = getelementptr inbounds %struct.Lrzip, ptr %158, i32 0, i32 2
  %160 = load ptr, ptr %159, align 8
  %161 = call zeroext i1 @decompress_file(ptr noundef %160)
  br i1 %161, label %163, label %162

162:                                              ; preds = %157
  store i1 false, ptr %2, align 1
  br label %242

163:                                              ; preds = %157
  br label %185

164:                                              ; preds = %151
  %165 = load ptr, ptr %6, align 8
  %166 = getelementptr inbounds %struct.rzip_control, ptr %165, i32 0, i32 26
  %167 = load i64, ptr %166, align 8
  %168 = and i64 %167, 16384
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %164
  %171 = load ptr, ptr %3, align 8
  %172 = getelementptr inbounds %struct.Lrzip, ptr %171, i32 0, i32 2
  %173 = load ptr, ptr %172, align 8
  %174 = call zeroext i1 @get_fileinfo(ptr noundef %173)
  br i1 %174, label %176, label %175

175:                                              ; preds = %170
  store i1 false, ptr %2, align 1
  br label %242

176:                                              ; preds = %170
  br label %184

177:                                              ; preds = %164
  %178 = load ptr, ptr %3, align 8
  %179 = getelementptr inbounds %struct.Lrzip, ptr %178, i32 0, i32 2
  %180 = load ptr, ptr %179, align 8
  %181 = call zeroext i1 @compress_file(ptr noundef %180)
  br i1 %181, label %183, label %182

182:                                              ; preds = %177
  store i1 false, ptr %2, align 1
  br label %242

183:                                              ; preds = %177
  br label %184

184:                                              ; preds = %183, %176
  br label %185

185:                                              ; preds = %184, %163
  %186 = call i32 @gettimeofday(ptr noundef %5, ptr noundef null) #9
  %187 = getelementptr inbounds %struct.timeval, ptr %5, i32 0, i32 0
  %188 = load i64, ptr %187, align 8
  %189 = sitofp i64 %188 to double
  %190 = getelementptr inbounds %struct.timeval, ptr %5, i32 0, i32 1
  %191 = load i64, ptr %190, align 8
  %192 = sitofp i64 %191 to double
  %193 = fdiv double %192, 1.000000e+06
  %194 = fadd double %189, %193
  %195 = getelementptr inbounds %struct.timeval, ptr %4, i32 0, i32 0
  %196 = load i64, ptr %195, align 8
  %197 = sitofp i64 %196 to double
  %198 = getelementptr inbounds %struct.timeval, ptr %4, i32 0, i32 1
  %199 = load i64, ptr %198, align 8
  %200 = sitofp i64 %199 to double
  %201 = fdiv double %200, 1.000000e+06
  %202 = fadd double %197, %201
  %203 = fsub double %194, %202
  store double %203, ptr %8, align 8
  %204 = load double, ptr %8, align 8
  %205 = fptosi double %204 to i32
  %206 = sdiv i32 %205, 3600
  store i32 %206, ptr %9, align 4
  %207 = load double, ptr %8, align 8
  %208 = fdiv double %207, 6.000000e+01
  %209 = fptosi double %208 to i32
  %210 = srem i32 %209, 60
  store i32 %210, ptr %10, align 4
  %211 = load double, ptr %8, align 8
  %212 = load i32, ptr %9, align 4
  %213 = mul nsw i32 %212, 3600
  %214 = sitofp i32 %213 to double
  %215 = fsub double %211, %214
  %216 = load i32, ptr %10, align 4
  %217 = mul nsw i32 %216, 60
  %218 = sitofp i32 %217 to double
  %219 = fsub double %215, %218
  store double %219, ptr %7, align 8
  %220 = load ptr, ptr %6, align 8
  %221 = getelementptr inbounds %struct.rzip_control, ptr %220, i32 0, i32 26
  %222 = load i64, ptr %221, align 8
  %223 = and i64 %222, 16384
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %241, label %225

225:                                              ; preds = %185
  br label %226

226:                                              ; preds = %225
  %227 = load ptr, ptr %6, align 8
  %228 = getelementptr inbounds %struct.rzip_control, ptr %227, i32 0, i32 26
  %229 = load i64, ptr %228, align 8
  %230 = and i64 %229, 1
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %226
  br label %233

233:                                              ; preds = %232
  %234 = load ptr, ptr %6, align 8
  %235 = load i32, ptr %9, align 4
  %236 = load i32, ptr %10, align 4
  %237 = load double, ptr %7, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %234, i32 noundef 2, i32 noundef 578, ptr noundef @.str.3, ptr noundef @__func__.lrzip_run, ptr noundef @.str.5, i32 noundef %235, i32 noundef %236, double noundef %237)
  br label %238

238:                                              ; preds = %233
  br label %239

239:                                              ; preds = %238, %226
  br label %240

240:                                              ; preds = %239
  br label %241

241:                                              ; preds = %240, %185
  store i1 true, ptr %2, align 1
  br label %242

242:                                              ; preds = %241, %182, %175, %162, %144, %27, %13
  %243 = load i1, ptr %2, align 1
  ret i1 %243
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @liblrzip_setup_flags(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i1 false, ptr %2, align 1
  br label %255

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %104 [
    i32 3, label %11
    i32 2, label %18
    i32 1, label %25
    i32 4, label %32
    i32 8, label %45
    i32 5, label %52
    i32 7, label %65
    i32 6, label %78
    i32 9, label %91
  ]

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.Lrzip, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 26
  %16 = load i64, ptr %15, align 8
  %17 = or i64 %16, 16
  store i64 %17, ptr %15, align 8
  br label %105

18:                                               ; preds = %7
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.Lrzip, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.rzip_control, ptr %21, i32 0, i32 26
  %23 = load i64, ptr %22, align 8
  %24 = or i64 %23, 4
  store i64 %24, ptr %22, align 8
  br label %105

25:                                               ; preds = %7
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.Lrzip, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.rzip_control, ptr %28, i32 0, i32 26
  %30 = load i64, ptr %29, align 8
  %31 = or i64 %30, 16384
  store i64 %31, ptr %29, align 8
  br label %105

32:                                               ; preds = %7
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.Lrzip, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.rzip_control, ptr %35, i32 0, i32 26
  %37 = load i64, ptr %36, align 8
  %38 = xor i64 %37, 992
  store i64 %38, ptr %36, align 8
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds %struct.Lrzip, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.rzip_control, ptr %41, i32 0, i32 26
  %43 = load i64, ptr %42, align 8
  %44 = or i64 %43, 32
  store i64 %44, ptr %42, align 8
  br label %105

45:                                               ; preds = %7
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct.Lrzip, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.rzip_control, ptr %48, i32 0, i32 26
  %50 = load i64, ptr %49, align 8
  %51 = xor i64 %50, 992
  store i64 %51, ptr %49, align 8
  br label %105

52:                                               ; preds = %7
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.Lrzip, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.rzip_control, ptr %55, i32 0, i32 26
  %57 = load i64, ptr %56, align 8
  %58 = xor i64 %57, 992
  store i64 %58, ptr %56, align 8
  %59 = load ptr, ptr %3, align 8
  %60 = getelementptr inbounds %struct.Lrzip, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.rzip_control, ptr %61, i32 0, i32 26
  %63 = load i64, ptr %62, align 8
  %64 = or i64 %63, 64
  store i64 %64, ptr %62, align 8
  br label %105

65:                                               ; preds = %7
  %66 = load ptr, ptr %3, align 8
  %67 = getelementptr inbounds %struct.Lrzip, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.rzip_control, ptr %68, i32 0, i32 26
  %70 = load i64, ptr %69, align 8
  %71 = xor i64 %70, 992
  store i64 %71, ptr %69, align 8
  %72 = load ptr, ptr %3, align 8
  %73 = getelementptr inbounds %struct.Lrzip, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.rzip_control, ptr %74, i32 0, i32 26
  %76 = load i64, ptr %75, align 8
  %77 = or i64 %76, 128
  store i64 %77, ptr %75, align 8
  br label %105

78:                                               ; preds = %7
  %79 = load ptr, ptr %3, align 8
  %80 = getelementptr inbounds %struct.Lrzip, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.rzip_control, ptr %81, i32 0, i32 26
  %83 = load i64, ptr %82, align 8
  %84 = xor i64 %83, 992
  store i64 %84, ptr %82, align 8
  %85 = load ptr, ptr %3, align 8
  %86 = getelementptr inbounds %struct.Lrzip, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.rzip_control, ptr %87, i32 0, i32 26
  %89 = load i64, ptr %88, align 8
  %90 = or i64 %89, 256
  store i64 %90, ptr %88, align 8
  br label %105

91:                                               ; preds = %7
  %92 = load ptr, ptr %3, align 8
  %93 = getelementptr inbounds %struct.Lrzip, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %struct.rzip_control, ptr %94, i32 0, i32 26
  %96 = load i64, ptr %95, align 8
  %97 = xor i64 %96, 992
  store i64 %97, ptr %95, align 8
  %98 = load ptr, ptr %3, align 8
  %99 = getelementptr inbounds %struct.Lrzip, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.rzip_control, ptr %100, i32 0, i32 26
  %102 = load i64, ptr %101, align 8
  %103 = or i64 %102, 512
  store i64 %103, ptr %101, align 8
  br label %105

104:                                              ; preds = %7
  store i1 false, ptr %2, align 1
  br label %255

105:                                              ; preds = %91, %78, %65, %52, %45, %32, %25, %18, %11
  %106 = load ptr, ptr %3, align 8
  %107 = getelementptr inbounds %struct.Lrzip, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  call void @setup_overhead(ptr noundef %108)
  %109 = load ptr, ptr %3, align 8
  %110 = getelementptr inbounds %struct.Lrzip, ptr %109, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %105
  %115 = load ptr, ptr %3, align 8
  %116 = getelementptr inbounds %struct.Lrzip, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %struct.rzip_control, ptr %117, i32 0, i32 26
  %119 = load i64, ptr %118, align 8
  %120 = or i64 %119, 262144
  store i64 %120, ptr %118, align 8
  %121 = load ptr, ptr %3, align 8
  %122 = getelementptr inbounds %struct.Lrzip, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.rzip_control, ptr %123, i32 0, i32 26
  %125 = load i64, ptr %124, align 8
  %126 = or i64 %125, 65536
  store i64 %126, ptr %124, align 8
  br label %127

127:                                              ; preds = %114, %105
  %128 = load ptr, ptr %3, align 8
  %129 = getelementptr inbounds %struct.Lrzip, ptr %128, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, 2
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load ptr, ptr %3, align 8
  %135 = getelementptr inbounds %struct.Lrzip, ptr %134, i32 0, i32 2
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds %struct.rzip_control, ptr %136, i32 0, i32 26
  %138 = load i64, ptr %137, align 8
  %139 = or i64 %138, 8
  store i64 %139, ptr %137, align 8
  br label %140

140:                                              ; preds = %133, %127
  %141 = load ptr, ptr %3, align 8
  %142 = getelementptr inbounds %struct.Lrzip, ptr %141, i32 0, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, 1
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %140
  %147 = load ptr, ptr %3, align 8
  %148 = getelementptr inbounds %struct.Lrzip, ptr %147, i32 0, i32 2
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr inbounds %struct.rzip_control, ptr %149, i32 0, i32 26
  %151 = load i64, ptr %150, align 8
  %152 = and i64 %151, -3
  store i64 %152, ptr %150, align 8
  br label %153

153:                                              ; preds = %146, %140
  %154 = load ptr, ptr %3, align 8
  %155 = getelementptr inbounds %struct.Lrzip, ptr %154, i32 0, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load ptr, ptr %3, align 8
  %161 = getelementptr inbounds %struct.Lrzip, ptr %160, i32 0, i32 2
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %struct.rzip_control, ptr %162, i32 0, i32 26
  %164 = load i64, ptr %163, align 8
  %165 = or i64 %164, 524288
  store i64 %165, ptr %163, align 8
  br label %166

166:                                              ; preds = %159, %153
  %167 = load ptr, ptr %3, align 8
  %168 = getelementptr inbounds %struct.Lrzip, ptr %167, i32 0, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = and i32 %169, 16
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %166
  %173 = load ptr, ptr %3, align 8
  %174 = getelementptr inbounds %struct.Lrzip, ptr %173, i32 0, i32 2
  %175 = load ptr, ptr %174, align 8
  %176 = getelementptr inbounds %struct.rzip_control, ptr %175, i32 0, i32 26
  %177 = load i64, ptr %176, align 8
  %178 = and i64 %177, -1048577
  store i64 %178, ptr %176, align 8
  br label %179

179:                                              ; preds = %172, %166
  %180 = load ptr, ptr %3, align 8
  %181 = getelementptr inbounds %struct.Lrzip, ptr %180, i32 0, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = and i32 %182, 32
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %179
  %186 = load ptr, ptr %3, align 8
  %187 = getelementptr inbounds %struct.Lrzip, ptr %186, i32 0, i32 2
  %188 = load ptr, ptr %187, align 8
  %189 = getelementptr inbounds %struct.rzip_control, ptr %188, i32 0, i32 26
  %190 = load i64, ptr %189, align 8
  %191 = or i64 %190, 32768
  store i64 %191, ptr %189, align 8
  br label %192

192:                                              ; preds = %185, %179
  %193 = load ptr, ptr %3, align 8
  %194 = getelementptr inbounds %struct.Lrzip, ptr %193, i32 0, i32 1
  %195 = load i32, ptr %194, align 4
  %196 = and i32 %195, 64
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %192
  %199 = load ptr, ptr %3, align 8
  %200 = getelementptr inbounds %struct.Lrzip, ptr %199, i32 0, i32 2
  %201 = load ptr, ptr %200, align 8
  %202 = getelementptr inbounds %struct.rzip_control, ptr %201, i32 0, i32 26
  %203 = load i64, ptr %202, align 8
  %204 = or i64 %203, 8388608
  store i64 %204, ptr %202, align 8
  br label %205

205:                                              ; preds = %198, %192
  %206 = load ptr, ptr %3, align 8
  %207 = getelementptr inbounds %struct.Lrzip, ptr %206, i32 0, i32 2
  %208 = load ptr, ptr %207, align 8
  %209 = getelementptr inbounds %struct.rzip_control, ptr %208, i32 0, i32 65
  %210 = load i32, ptr %209, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %247

212:                                              ; preds = %205
  %213 = load ptr, ptr %3, align 8
  %214 = getelementptr inbounds %struct.Lrzip, ptr %213, i32 0, i32 2
  %215 = load ptr, ptr %214, align 8
  %216 = getelementptr inbounds %struct.rzip_control, ptr %215, i32 0, i32 26
  %217 = load i64, ptr %216, align 8
  %218 = or i64 %217, 1
  store i64 %218, ptr %216, align 8
  %219 = load ptr, ptr %3, align 8
  %220 = getelementptr inbounds %struct.Lrzip, ptr %219, i32 0, i32 2
  %221 = load ptr, ptr %220, align 8
  %222 = getelementptr inbounds %struct.rzip_control, ptr %221, i32 0, i32 65
  %223 = load i32, ptr %222, align 4
  %224 = icmp sgt i32 %223, 1
  br i1 %224, label %225, label %246

225:                                              ; preds = %212
  %226 = load ptr, ptr %3, align 8
  %227 = getelementptr inbounds %struct.Lrzip, ptr %226, i32 0, i32 2
  %228 = load ptr, ptr %227, align 8
  %229 = getelementptr inbounds %struct.rzip_control, ptr %228, i32 0, i32 26
  %230 = load i64, ptr %229, align 8
  %231 = or i64 %230, 1024
  store i64 %231, ptr %229, align 8
  %232 = load ptr, ptr %3, align 8
  %233 = getelementptr inbounds %struct.Lrzip, ptr %232, i32 0, i32 2
  %234 = load ptr, ptr %233, align 8
  %235 = getelementptr inbounds %struct.rzip_control, ptr %234, i32 0, i32 65
  %236 = load i32, ptr %235, align 4
  %237 = icmp sgt i32 %236, 2
  br i1 %237, label %238, label %245

238:                                              ; preds = %225
  %239 = load ptr, ptr %3, align 8
  %240 = getelementptr inbounds %struct.Lrzip, ptr %239, i32 0, i32 2
  %241 = load ptr, ptr %240, align 8
  %242 = getelementptr inbounds %struct.rzip_control, ptr %241, i32 0, i32 26
  %243 = load i64, ptr %242, align 8
  %244 = or i64 %243, 2048
  store i64 %244, ptr %242, align 8
  br label %245

245:                                              ; preds = %238, %225
  br label %246

246:                                              ; preds = %245, %212
  br label %254

247:                                              ; preds = %205
  %248 = load ptr, ptr %3, align 8
  %249 = getelementptr inbounds %struct.Lrzip, ptr %248, i32 0, i32 2
  %250 = load ptr, ptr %249, align 8
  %251 = getelementptr inbounds %struct.rzip_control, ptr %250, i32 0, i32 26
  %252 = load i64, ptr %251, align 8
  %253 = xor i64 %252, 3073
  store i64 %253, ptr %251, align 8
  br label %254

254:                                              ; preds = %247, %246
  store i1 true, ptr %2, align 1
  br label %255

255:                                              ; preds = %254, %104, %6
  %256 = load i1, ptr %2, align 1
  ret i1 %256
}

declare void @register_outputfile(ptr noundef, ptr noundef) #1

declare void @setup_ram(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_err(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ...) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds %struct.rzip_control, ptr %12, i32 0, i32 64
  %14 = load i8, ptr %13, align 8
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %5
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds %struct.rzip_control, ptr %18, i32 0, i32 68
  %20 = load ptr, ptr %19, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.rzip_control, ptr %23, i32 0, i32 65
  %25 = load i32, ptr %24, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_start(ptr %28)
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds %struct.rzip_control, ptr %29, i32 0, i32 68
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds %struct.rzip_control, ptr %32, i32 0, i32 69
  %34 = load ptr, ptr %33, align 8
  %35 = load i32, ptr %7, align 4
  %36 = load ptr, ptr %8, align 8
  %37 = load ptr, ptr %9, align 8
  %38 = load ptr, ptr %10, align 8
  %39 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void %31(ptr noundef %34, i32 noundef 0, i32 noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39)
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_end(ptr %40)
  br label %60

41:                                               ; preds = %22, %17, %5
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr inbounds %struct.rzip_control, ptr %42, i32 0, i32 18
  %44 = load ptr, ptr %43, align 8
  %45 = icmp ne ptr %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_start(ptr %47)
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr inbounds %struct.rzip_control, ptr %48, i32 0, i32 18
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr %10, align 8
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  %53 = call i32 @vfprintf(ptr noundef %50, ptr noundef %51, ptr noundef %52)
  %54 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_end(ptr %54)
  %55 = load ptr, ptr %6, align 8
  %56 = getelementptr inbounds %struct.rzip_control, ptr %55, i32 0, i32 18
  %57 = load ptr, ptr %56, align 8
  %58 = call i32 @fflush(ptr noundef %57)
  br label %59

59:                                               ; preds = %46, %41
  br label %60

60:                                               ; preds = %59, %27
  ret void
}

declare zeroext i1 @decompress_file(ptr noundef) #1

declare zeroext i1 @get_fileinfo(ptr noundef) #1

declare zeroext i1 @compress_file(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_stuff(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ...) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %7, align 8
  store i32 %1, ptr %8, align 4
  store i32 %2, ptr %9, align 4
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 64
  %16 = load i8, ptr %15, align 8
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %6
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds %struct.rzip_control, ptr %20, i32 0, i32 68
  %22 = load ptr, ptr %21, align 8
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load ptr, ptr %7, align 8
  %26 = getelementptr inbounds %struct.rzip_control, ptr %25, i32 0, i32 65
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %8, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %13, i64 0, i64 0
  call void @llvm.va_start(ptr %31)
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr inbounds %struct.rzip_control, ptr %32, i32 0, i32 68
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %7, align 8
  %36 = getelementptr inbounds %struct.rzip_control, ptr %35, i32 0, i32 69
  %37 = load ptr, ptr %36, align 8
  %38 = load i32, ptr %8, align 4
  %39 = load i32, ptr %9, align 4
  %40 = load ptr, ptr %10, align 8
  %41 = load ptr, ptr %11, align 8
  %42 = load ptr, ptr %12, align 8
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %13, i64 0, i64 0
  call void %34(ptr noundef %37, i32 noundef %38, i32 noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43)
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %13, i64 0, i64 0
  call void @llvm.va_end(ptr %44)
  br label %64

45:                                               ; preds = %24, %19, %6
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds %struct.rzip_control, ptr %46, i32 0, i32 17
  %48 = load ptr, ptr %47, align 8
  %49 = icmp ne ptr %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %13, i64 0, i64 0
  call void @llvm.va_start(ptr %51)
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr inbounds %struct.rzip_control, ptr %52, i32 0, i32 17
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %12, align 8
  %56 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %13, i64 0, i64 0
  %57 = call i32 @vfprintf(ptr noundef %54, ptr noundef %55, ptr noundef %56)
  %58 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %13, i64 0, i64 0
  call void @llvm.va_end(ptr %58)
  %59 = load ptr, ptr %7, align 8
  %60 = getelementptr inbounds %struct.rzip_control, ptr %59, i32 0, i32 17
  %61 = load ptr, ptr %60, align 8
  %62 = call i32 @fflush(ptr noundef %61)
  br label %63

63:                                               ; preds = %50, %45
  br label %64

64:                                               ; preds = %63, %30
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_log_level_set(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %14

8:                                                ; preds = %2
  %9 = load i32, ptr %4, align 4
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.Lrzip, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.rzip_control, ptr %12, i32 0, i32 65
  store i32 %9, ptr %13, align 4
  br label %14

14:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lrzip_log_level_get(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 65
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %2, align 4
  br label %13

13:                                               ; preds = %7, %6
  %14 = load i32, ptr %2, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_log_cb_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %21

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.Lrzip, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 68
  store ptr %11, ptr %15, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.Lrzip, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.rzip_control, ptr %19, i32 0, i32 69
  store ptr %16, ptr %20, align 8
  br label %21

21:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_log_stdout_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.Lrzip, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.rzip_control, ptr %12, i32 0, i32 17
  store ptr %9, ptr %13, align 8
  br label %14

14:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lrzip_log_stdout_get(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 17
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %2, align 8
  br label %13

13:                                               ; preds = %7, %6
  %14 = load ptr, ptr %2, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_log_stderr_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.Lrzip, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.rzip_control, ptr %12, i32 0, i32 18
  store ptr %9, ptr %13, align 8
  br label %14

14:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lrzip_log_stderr_get(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 18
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %2, align 8
  br label %13

13:                                               ; preds = %7, %6
  %14 = load ptr, ptr %2, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_pass_cb_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %21

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.Lrzip, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 41
  store ptr %11, ptr %15, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.Lrzip, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.rzip_control, ptr %19, i32 0, i32 42
  store ptr %16, ptr %20, align 8
  br label %21

21:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrzip_info_cb_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %21

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.Lrzip, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 66
  store ptr %11, ptr %15, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.Lrzip, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.rzip_control, ptr %19, i32 0, i32 67
  store ptr %16, ptr %20, align 8
  br label %21

21:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrzip_compress_full(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i8, align 1
  %17 = alloca %struct.stat, align 8
  %18 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store i32 %4, ptr %11, align 4
  store i32 %5, ptr %12, align 4
  store ptr null, ptr %13, align 8
  store ptr null, ptr %14, align 8
  store ptr null, ptr %15, align 8
  store i8 0, ptr %16, align 1
  %19 = load ptr, ptr %7, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %6
  %22 = load ptr, ptr %8, align 8
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load ptr, ptr %9, align 8
  %26 = icmp ne ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, ptr %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, ptr %11, align 4
  %32 = icmp ult i32 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27, %24, %21, %6
  br label %109

34:                                               ; preds = %30
  %35 = call zeroext i1 @lrzip_init()
  %36 = load i32, ptr %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 8, ptr %11, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, ptr %11, align 4
  %41 = call ptr @lrzip_new(i32 noundef %40)
  store ptr %41, ptr %15, align 8
  %42 = load ptr, ptr %15, align 8
  %43 = icmp ne ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %109

45:                                               ; preds = %39
  %46 = load ptr, ptr %15, align 8
  call void @lrzip_config_env(ptr noundef %46)
  %47 = load ptr, ptr %9, align 8
  %48 = load i64, ptr %10, align 8
  %49 = call noalias ptr @fmemopen(ptr noundef %47, i64 noundef %48, ptr noundef @.str.6) #9
  store ptr %49, ptr %13, align 8
  %50 = call noalias ptr @tmpfile64()
  store ptr %50, ptr %14, align 8
  %51 = load ptr, ptr %13, align 8
  %52 = icmp ne ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load ptr, ptr %14, align 8
  %55 = icmp ne ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53, %45
  br label %109

57:                                               ; preds = %53
  %58 = load ptr, ptr %15, align 8
  %59 = load ptr, ptr %13, align 8
  %60 = call zeroext i1 @lrzip_file_add(ptr noundef %58, ptr noundef %59)
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %109

62:                                               ; preds = %57
  %63 = load ptr, ptr %15, align 8
  %64 = load ptr, ptr %14, align 8
  call void @lrzip_outfile_set(ptr noundef %63, ptr noundef %64)
  %65 = load ptr, ptr %15, align 8
  %66 = load i32, ptr %12, align 4
  %67 = call zeroext i1 @lrzip_compression_level_set(ptr noundef %65, i32 noundef %66)
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  br label %109

69:                                               ; preds = %62
  %70 = load ptr, ptr %15, align 8
  %71 = call zeroext i1 @lrzip_run(ptr noundef %70)
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %109

73:                                               ; preds = %69
  %74 = load ptr, ptr %14, align 8
  %75 = call i32 @fileno(ptr noundef %74) #9
  store i32 %75, ptr %18, align 4
  %76 = load i32, ptr %18, align 4
  %77 = call i32 @fstat64(i32 noundef %76, ptr noundef %17) #9
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %109

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.stat, ptr %17, i32 0, i32 8
  %82 = load i64, ptr %81, align 8
  %83 = load ptr, ptr %8, align 8
  store i64 %82, ptr %83, align 8
  %84 = load ptr, ptr %7, align 8
  %85 = getelementptr inbounds %struct.stat, ptr %17, i32 0, i32 8
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = call i64 @fread(ptr noundef %84, i64 noundef 1, i64 noundef %86, ptr noundef %87)
  %89 = getelementptr inbounds %struct.stat, ptr %17, i32 0, i32 8
  %90 = load i64, ptr %89, align 8
  %91 = icmp ne i64 %88, %90
  %92 = xor i1 %91, true
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = sext i32 %94 to i64
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %80
  br label %109

98:                                               ; preds = %80
  %99 = load ptr, ptr %14, align 8
  %100 = call i32 @ferror(ptr noundef %99) #9
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = sext i32 %104 to i64
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %109

108:                                              ; preds = %98
  store i8 1, ptr %16, align 1
  br label %109

109:                                              ; preds = %108, %107, %97, %79, %72, %68, %61, %56, %44, %33
  %110 = load ptr, ptr %13, align 8
  %111 = icmp ne ptr %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load ptr, ptr %13, align 8
  %114 = call i32 @fclose(ptr noundef %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load ptr, ptr %14, align 8
  %117 = icmp ne ptr %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load ptr, ptr %14, align 8
  %120 = call i32 @fclose(ptr noundef %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load ptr, ptr %15, align 8
  call void @lrzip_free(ptr noundef %122)
  %123 = load i8, ptr %16, align 1
  %124 = trunc i8 %123 to i1
  ret i1 %124
}

; Function Attrs: nounwind
declare noalias ptr @fmemopen(ptr noundef, i64 noundef, ptr noundef) #2

declare noalias ptr @tmpfile64() #1

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @fstat64(i32 noundef, ptr noundef) #2

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #2

declare i32 @fclose(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrzip_decompress(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i8, align 1
  %13 = alloca %struct.stat, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  store ptr null, ptr %9, align 8
  store ptr null, ptr %10, align 8
  store ptr null, ptr %11, align 8
  store i8 0, ptr %12, align 1
  %15 = load ptr, ptr %5, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load ptr, ptr %6, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load ptr, ptr %7, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, ptr %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %20, %17, %4
  br label %92

27:                                               ; preds = %23
  %28 = call zeroext i1 @lrzip_init()
  %29 = call ptr @lrzip_new(i32 noundef 3)
  store ptr %29, ptr %11, align 8
  %30 = load ptr, ptr %11, align 8
  %31 = icmp ne ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %92

33:                                               ; preds = %27
  %34 = load ptr, ptr %11, align 8
  call void @lrzip_config_env(ptr noundef %34)
  %35 = load ptr, ptr %7, align 8
  %36 = load i64, ptr %8, align 8
  %37 = call noalias ptr @fmemopen(ptr noundef %35, i64 noundef %36, ptr noundef @.str.6) #9
  store ptr %37, ptr %9, align 8
  %38 = call noalias ptr @tmpfile64()
  store ptr %38, ptr %10, align 8
  %39 = load ptr, ptr %9, align 8
  %40 = icmp ne ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load ptr, ptr %10, align 8
  %43 = icmp ne ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %33
  br label %92

45:                                               ; preds = %41
  %46 = load ptr, ptr %11, align 8
  %47 = load ptr, ptr %9, align 8
  %48 = call zeroext i1 @lrzip_file_add(ptr noundef %46, ptr noundef %47)
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %92

50:                                               ; preds = %45
  %51 = load ptr, ptr %11, align 8
  %52 = load ptr, ptr %10, align 8
  call void @lrzip_outfile_set(ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %11, align 8
  %54 = call zeroext i1 @lrzip_run(ptr noundef %53)
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %92

56:                                               ; preds = %50
  %57 = load ptr, ptr %10, align 8
  %58 = call i32 @fileno(ptr noundef %57) #9
  store i32 %58, ptr %14, align 4
  %59 = load i32, ptr %14, align 4
  %60 = call i32 @fstat64(i32 noundef %59, ptr noundef %13) #9
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %92

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.stat, ptr %13, i32 0, i32 8
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %6, align 8
  store i64 %65, ptr %66, align 8
  %67 = load ptr, ptr %5, align 8
  %68 = getelementptr inbounds %struct.stat, ptr %13, i32 0, i32 8
  %69 = load i64, ptr %68, align 8
  %70 = load ptr, ptr %10, align 8
  %71 = call i64 @fread(ptr noundef %67, i64 noundef 1, i64 noundef %69, ptr noundef %70)
  %72 = getelementptr inbounds %struct.stat, ptr %13, i32 0, i32 8
  %73 = load i64, ptr %72, align 8
  %74 = icmp ne i64 %71, %73
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %63
  br label %92

81:                                               ; preds = %63
  %82 = load ptr, ptr %10, align 8
  %83 = call i32 @ferror(ptr noundef %82) #9
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = sext i32 %87 to i64
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %92

91:                                               ; preds = %81
  store i8 1, ptr %12, align 1
  br label %92

92:                                               ; preds = %91, %90, %80, %62, %55, %49, %44, %32, %26
  %93 = load ptr, ptr %9, align 8
  %94 = icmp ne ptr %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load ptr, ptr %9, align 8
  %97 = call i32 @fclose(ptr noundef %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load ptr, ptr %10, align 8
  %100 = icmp ne ptr %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load ptr, ptr %10, align 8
  %103 = call i32 @fclose(ptr noundef %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load ptr, ptr %11, align 8
  call void @lrzip_free(ptr noundef %105)
  %106 = load i8, ptr %12, align 1
  %107 = trunc i8 %106 to i1
  ret i1 %107
}

declare void @setup_overhead(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @fflush(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { nounwind allocsize(0) }

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
