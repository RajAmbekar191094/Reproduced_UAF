; ModuleID = './util.c'
source_filename = "./util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rzip_control = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i8, i64, i64, i64, [5 x i8], i64, i64, i64, i64, i64, i32, i8, i8, i8, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, [8 x i8], ptr, i32, ptr, %union.pthread_mutex_t, i8, i8, i8, %union.sem_t, %struct.md5_ctx, [16 x i8], i64, %struct.checksum, ptr, i8, ptr, i64, i64, ptr, i8, ptr, i8, i32, ptr, ptr, ptr, ptr, i8, %struct.sliding_buffer, ptr, ptr, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.sem_t = type { i64, [24 x i8] }
%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.checksum = type { ptr, ptr, i64 }
%struct.sliding_buffer = type { ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.aes_context = type { i32, ptr, [68 x i64] }
%struct.sha4_context = type { [2 x i64], [8 x i64], [128 x i8], [128 x i8], [128 x i8], i32 }

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Fatal error - exiting\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"./util.c\00", align 1
@__func__.get_rand = private unnamed_addr constant [9 x i8] c"get_rand\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to read fd in get_rand\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to close fd in get_rand\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"lrzip.conf\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Using configuration file ./lrzip.conf\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s/.lrzip/lrzip.conf\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Using configuration file %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"/etc/lrzip/lrzip.conf\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Using configuration file /etc/lrzip/lrzip.conf\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c" =\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"unlimited\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"compressionlevel\00", align 1
@__func__.read_config = private unnamed_addr constant [12 x i8] c"read_config\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"CONF.FILE error. Compression Level must between 1 and 9\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"compressionmethod\00", align 1
@.str.20 = private unnamed_addr constant [57 x i8] c"CONF.FILE error. Can only specify one compression method\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"bzip2\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"rzip\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"zpaq\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"lzma\00", align 1
@.str.27 = private unnamed_addr constant [58 x i8] c"CONF.FILE error. Invalid compression method %s specified\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"lzotest\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"hashcheck\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"showhash\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"outputdirectory\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"Fatal Memory Error in read_config\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"verbosity\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"CONF.FILE error. Verbosity already defined.\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.38 = private unnamed_addr constant [55 x i8] c"lrzip.conf: Unrecognized verbosity value %s. Ignored.\0A\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"showprogress\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@.str.42 = private unnamed_addr constant [49 x i8] c"CONF.FILE error. Nice must be between -20 and 19\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"keepbroken\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"DELETEFILES\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"REPLACEFILE\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"tmpdir\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"encrypt\00", align 1
@.str.49 = private unnamed_addr constant [64 x i8] c"lrzip.conf: Unrecognized parameter value, %s = %s. Continuing.\0A\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"Failed to fclose fp in read_config\0A\00", align 1
@__func__.lrz_crypt = private unnamed_addr constant [10 x i8] c"lrz_crypt\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"Encrypting data        \0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"Failed to aes_setkey_enc in lrz_crypt\0A\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"Failed to aes_setkey_dec in lrz_crypt\0A\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"Decrypting data        \0A\00", align 1
@__func__.lrz_stretch = private unnamed_addr constant [12 x i8] c"lrz_stretch\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"Hashing passphrase %lld (%lld) times \0A\00", align 1
@stderr = external global ptr, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_infile(ptr noundef %0, ptr noundef %1, i8 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i8 %2, ptr %6, align 1
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.rzip_control, ptr %8, i32 0, i32 56
  store ptr %7, ptr %9, align 8
  %10 = load i8, ptr %6, align 1
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.rzip_control, ptr %11, i32 0, i32 57
  store i8 %10, ptr %12, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_outfile(ptr noundef %0, ptr noundef %1, i8 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i8 %2, ptr %6, align 1
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.rzip_control, ptr %8, i32 0, i32 58
  store ptr %7, ptr %9, align 8
  %10 = load i8, ptr %6, align 1
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.rzip_control, ptr %11, i32 0, i32 62
  store i8 %10, ptr %12, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_outputfile(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.rzip_control, ptr %6, i32 0, i32 63
  store ptr %5, ptr %7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unlink_files(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rzip_control, ptr %3, i32 0, i32 58
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.rzip_control, ptr %8, i32 0, i32 62
  %10 = load i8, ptr %9, align 8
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 58
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @unlink(ptr noundef %16) #11
  br label %18

18:                                               ; preds = %13, %7, %1
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.rzip_control, ptr %19, i32 0, i32 56
  %21 = load ptr, ptr %20, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.rzip_control, ptr %24, i32 0, i32 57
  %26 = load i8, ptr %25, align 8
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.rzip_control, ptr %30, i32 0, i32 56
  %32 = load ptr, ptr %31, align 8
  %33 = call i32 @unlink(ptr noundef %32) #11
  br label %34

34:                                               ; preds = %29, %23, %18
  ret void
}

; Function Attrs: nounwind
declare i32 @unlink(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fatal_exit(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.termios, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr @stdin, align 8
  %5 = call i32 @fileno(ptr noundef %4) #11
  %6 = call i32 @tcgetattr(i32 noundef %5, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.termios, ptr %3, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 8
  store i32 %9, ptr %7, align 4
  %10 = load ptr, ptr @stdin, align 8
  %11 = call i32 @fileno(ptr noundef %10) #11
  %12 = call i32 @tcsetattr(i32 noundef %11, i32 noundef 0, ptr noundef %3) #11
  %13 = load ptr, ptr %2, align 8
  call void @unlink_files(ptr noundef %13)
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 63
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str)
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.rzip_control, ptr %18, i32 0, i32 63
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @fflush(ptr noundef %20)
  call void @exit(i32 noundef 1) #12
  unreachable
}

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_overhead(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i32 0, i32 26
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 992
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.rzip_control, ptr %11, i32 0, i32 20
  %13 = load i8, ptr %12, align 8
  %14 = zext i8 %13 to i32
  %15 = mul nsw i32 %14, 7
  %16 = sdiv i32 %15, 9
  store i32 %16, ptr %3, align 4
  %17 = load i32, ptr %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  store i32 1, ptr %3, align 4
  br label %20

20:                                               ; preds = %19, %10
  %21 = load i32, ptr %3, align 4
  %22 = icmp sle i32 %21, 5
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, ptr %3, align 4
  %25 = mul nsw i32 %24, 2
  %26 = add nsw i32 %25, 14
  %27 = shl i32 1, %26
  br label %33

28:                                               ; preds = %20
  %29 = load i32, ptr %3, align 4
  %30 = icmp eq i32 %29, 6
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 33554432, i32 67108864
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i32 [ %27, %23 ], [ %32, %28 ]
  %35 = sext i32 %34 to i64
  store i64 %35, ptr %4, align 8
  %36 = load i64, ptr %4, align 8
  %37 = mul nsw i64 %36, 23
  %38 = sdiv i64 %37, 2
  %39 = add nsw i64 %38, 4194304
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.rzip_control, ptr %40, i32 0, i32 21
  store i64 %39, ptr %41, align 8
  br label %52

42:                                               ; preds = %1
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.rzip_control, ptr %43, i32 0, i32 26
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 512
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.rzip_control, ptr %49, i32 0, i32 21
  store i64 117440512, ptr %50, align 8
  br label %51

51:                                               ; preds = %48, %42
  br label %52

52:                                               ; preds = %51, %33
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_ram(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rzip_control, ptr %3, i32 0, i32 26
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 8192
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.rzip_control, ptr %9, i32 0, i32 26
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 4096
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.rzip_control, ptr %15, i32 0, i32 26
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 16
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %14, %8
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.rzip_control, ptr %21, i32 0, i32 26
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 16
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.rzip_control, ptr %27, i32 0, i32 26
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 4
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %26, %14
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.rzip_control, ptr %33, i32 0, i32 27
  %35 = load i64, ptr %34, align 8
  %36 = sdiv i64 %35, 6
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.rzip_control, ptr %37, i32 0, i32 23
  store i64 %36, ptr %38, align 8
  br label %46

39:                                               ; preds = %26, %20, %1
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.rzip_control, ptr %40, i32 0, i32 27
  %42 = load i64, ptr %41, align 8
  %43 = sdiv i64 %42, 3
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds %struct.rzip_control, ptr %44, i32 0, i32 23
  store i64 %43, ptr %45, align 8
  br label %46

46:                                               ; preds = %39, %32
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr inbounds %struct.rzip_control, ptr %47, i32 0, i32 23
  %49 = load i64, ptr %48, align 8
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct.rzip_control, ptr %50, i32 0, i32 22
  store i64 %49, ptr %51, align 8
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds %struct.rzip_control, ptr %52, i32 0, i32 23
  call void @round_to_page(ptr noundef %53)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @round_to_page(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i64, ptr %3, align 8
  %5 = call i64 @sysconf(i32 noundef 30) #11
  %6 = srem i64 %4, %5
  %7 = load ptr, ptr %2, align 8
  %8 = load i64, ptr %7, align 8
  %9 = sub nsw i64 %8, %6
  store i64 %9, ptr %7, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = load i64, ptr %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = call i64 @sysconf(i32 noundef 30) #11
  %21 = load ptr, ptr %2, align 8
  store i64 %20, ptr %21, align 8
  br label %22

22:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @round_up_page(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %6 = load i64, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.rzip_control, ptr %7, i32 0, i32 35
  %9 = load i64, ptr %8, align 8
  %10 = urem i64 %6, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, ptr %5, align 4
  %12 = load i32, ptr %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.rzip_control, ptr %15, i32 0, i32 35
  %17 = load i64, ptr %16, align 8
  %18 = load i32, ptr %5, align 4
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %17, %19
  %21 = load i64, ptr %4, align 8
  %22 = add i64 %21, %20
  store i64 %22, ptr %4, align 8
  br label %23

23:                                               ; preds = %14, %2
  %24 = load i64, ptr %4, align 8
  ret i64 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @get_rand(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %10 = call i32 (ptr, i32, ...) @open64(ptr noundef @.str.1, i32 noundef 0)
  store i32 %10, ptr %8, align 4
  %11 = load i32, ptr %8, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  store i32 0, ptr %9, align 4
  br label %14

14:                                               ; preds = %25, %13
  %15 = load i32, ptr %9, align 4
  %16 = load i32, ptr %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = call i64 @random() #11
  %20 = trunc i64 %19 to i8
  %21 = load ptr, ptr %6, align 8
  %22 = load i32, ptr %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  store i8 %20, ptr %24, align 1
  br label %25

25:                                               ; preds = %18
  %26 = load i32, ptr %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %9, align 4
  br label %14, !llvm.loop !6

28:                                               ; preds = %14
  br label %61

29:                                               ; preds = %3
  %30 = load i32, ptr %8, align 4
  %31 = load ptr, ptr %6, align 8
  %32 = load i32, ptr %7, align 4
  %33 = sext i32 %32 to i64
  %34 = call i64 @read(i32 noundef %30, ptr noundef %31, i64 noundef %33)
  %35 = load i32, ptr %7, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %34, %36
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43
  %45 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %45, i32 noundef 174, ptr noundef @.str.2, ptr noundef @__func__.get_rand, ptr noundef @.str.3)
  store i1 false, ptr %4, align 1
  br label %62

46:                                               ; No predecessors!
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32, ptr %8, align 4
  %49 = call i32 @close(i32 noundef %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %58, i32 noundef 176, ptr noundef @.str.2, ptr noundef @__func__.get_rand, ptr noundef @.str.4)
  store i1 false, ptr %4, align 1
  br label %62

59:                                               ; No predecessors!
  br label %60

60:                                               ; preds = %59, %47
  br label %61

61:                                               ; preds = %60, %28
  store i1 true, ptr %4, align 1
  br label %62

62:                                               ; preds = %61, %57, %44
  %63 = load i1, ptr %4, align 1
  ret i1 %63
}

declare i32 @open64(ptr noundef, i32 noundef, ...) #2

; Function Attrs: nounwind
declare i64 @random() #1

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fatal(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ...) #0 {
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
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_start(ptr %12)
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %struct.rzip_control, ptr %13, i32 0, i32 68
  %15 = load ptr, ptr %14, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load ptr, ptr @stderr, align 8
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  %21 = call i32 @vfprintf(ptr noundef %18, ptr noundef %19, ptr noundef %20)
  call void @perror(ptr noundef null)
  br label %34

22:                                               ; preds = %5
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.rzip_control, ptr %23, i32 0, i32 68
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds %struct.rzip_control, ptr %26, i32 0, i32 69
  %28 = load ptr, ptr %27, align 8
  %29 = load i32, ptr %7, align 4
  %30 = load ptr, ptr %8, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = load ptr, ptr %10, align 8
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void %25(ptr noundef %28, i32 noundef 0, i32 noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33)
  br label %34

34:                                               ; preds = %22, %17
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_end(ptr %35)
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.rzip_control, ptr %36, i32 0, i32 64
  %38 = load i8, ptr %37, align 8
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %6, align 8
  call void @fatal_exit(ptr noundef %41)
  br label %42

42:                                               ; preds = %40, %34
  ret void
}

declare i32 @close(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @read_config(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [255 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [255 x i8], align 16
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %10 = call noalias ptr @fopen64(ptr noundef @.str.5, ptr noundef @.str.6)
  store ptr %10, ptr %9, align 8
  %11 = load ptr, ptr %9, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 17
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.7)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load ptr, ptr %9, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = call ptr @getenv(ptr noundef @.str.8) #11
  store ptr %22, ptr %4, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = getelementptr inbounds [255 x i8], ptr %5, i64 0, i64 0
  %27 = load ptr, ptr %4, align 8
  %28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %26, i64 noundef 255, ptr noundef @.str.9, ptr noundef %27) #11
  %29 = getelementptr inbounds [255 x i8], ptr %5, i64 0, i64 0
  %30 = call noalias ptr @fopen64(ptr noundef %29, ptr noundef @.str.6)
  store ptr %30, ptr %9, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = icmp ne ptr %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.rzip_control, ptr %34, i32 0, i32 17
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds [255 x i8], ptr %5, i64 0, i64 0
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.10, ptr noundef %37)
  br label %39

39:                                               ; preds = %33, %25
  br label %40

40:                                               ; preds = %39, %21
  br label %41

41:                                               ; preds = %40, %18
  %42 = load ptr, ptr %9, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = call noalias ptr @fopen64(ptr noundef @.str.11, ptr noundef @.str.6)
  store ptr %45, ptr %9, align 8
  %46 = load ptr, ptr %9, align 8
  %47 = icmp ne ptr %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct.rzip_control, ptr %49, i32 0, i32 17
  %51 = load ptr, ptr %50, align 8
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.12)
  br label %53

53:                                               ; preds = %48, %44
  br label %54

54:                                               ; preds = %53, %41
  %55 = load ptr, ptr %9, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i1 true, ptr %2, align 1
  br label %520

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %505, %102, %97, %91, %78, %58
  %60 = getelementptr inbounds [255 x i8], ptr %8, i64 0, i64 0
  %61 = load ptr, ptr %9, align 8
  %62 = call ptr @fgets(ptr noundef %60, i32 noundef 255, ptr noundef %61)
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %506

64:                                               ; preds = %59
  %65 = getelementptr inbounds [255 x i8], ptr %8, i64 0, i64 0
  %66 = call i64 @strlen(ptr noundef %65) #13
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = getelementptr inbounds [255 x i8], ptr %8, i64 0, i64 0
  %70 = call i64 @strlen(ptr noundef %69) #13
  %71 = sub i64 %70, 1
  %72 = getelementptr inbounds [255 x i8], ptr %8, i64 0, i64 %71
  store i8 0, ptr %72, align 1
  br label %73

73:                                               ; preds = %68, %64
  %74 = getelementptr inbounds [255 x i8], ptr %8, i64 0, i64 0
  %75 = call ptr @strtok(ptr noundef %74, ptr noundef @.str.13) #11
  store ptr %75, ptr %7, align 8
  %76 = load ptr, ptr %7, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %59, !llvm.loop !8

79:                                               ; preds = %73
  %80 = call ptr @__ctype_b_loc() #14
  %81 = load ptr, ptr %80, align 8
  %82 = load ptr, ptr %7, align 8
  %83 = load i8, ptr %82, align 1
  %84 = sext i8 %83 to i32
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i16, ptr %81, i64 %85
  %87 = load i16, ptr %86, align 2
  %88 = zext i16 %87 to i32
  %89 = and i32 %88, 8192
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %59, !llvm.loop !8

92:                                               ; preds = %79
  %93 = load ptr, ptr %7, align 8
  %94 = load i8, ptr %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 35
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %59, !llvm.loop !8

98:                                               ; preds = %92
  %99 = call ptr @strtok(ptr noundef null, ptr noundef @.str.13) #11
  store ptr %99, ptr %6, align 8
  %100 = load ptr, ptr %6, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %59, !llvm.loop !8

103:                                              ; preds = %98
  %104 = load ptr, ptr %7, align 8
  %105 = call i32 @strcasecmp(ptr noundef %104, ptr noundef @.str.14) #13
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %6, align 8
  %109 = call i32 @atoi(ptr noundef %108) #13
  %110 = sext i32 %109 to i64
  %111 = load ptr, ptr %3, align 8
  %112 = getelementptr inbounds %struct.rzip_control, ptr %111, i32 0, i32 25
  store i64 %110, ptr %112, align 8
  br label %505

113:                                              ; preds = %103
  %114 = load ptr, ptr %7, align 8
  %115 = call i32 @strcasecmp(ptr noundef %114, ptr noundef @.str.15) #13
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr %6, align 8
  %119 = call i32 @strcasecmp(ptr noundef %118, ptr noundef @.str.16) #13
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %3, align 8
  %123 = getelementptr inbounds %struct.rzip_control, ptr %122, i32 0, i32 26
  %124 = load i64, ptr %123, align 8
  %125 = or i64 %124, 32768
  store i64 %125, ptr %123, align 8
  br label %126

126:                                              ; preds = %121, %117
  br label %504

127:                                              ; preds = %113
  %128 = load ptr, ptr %7, align 8
  %129 = call i32 @strcasecmp(ptr noundef %128, ptr noundef @.str.17) #13
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %153, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr %6, align 8
  %133 = call i32 @atoi(ptr noundef %132) #13
  %134 = trunc i32 %133 to i8
  %135 = load ptr, ptr %3, align 8
  %136 = getelementptr inbounds %struct.rzip_control, ptr %135, i32 0, i32 20
  store i8 %134, ptr %136, align 8
  %137 = load ptr, ptr %3, align 8
  %138 = getelementptr inbounds %struct.rzip_control, ptr %137, i32 0, i32 20
  %139 = load i8, ptr %138, align 8
  %140 = zext i8 %139 to i32
  %141 = icmp slt i32 %140, 1
  br i1 %141, label %148, label %142

142:                                              ; preds = %131
  %143 = load ptr, ptr %3, align 8
  %144 = getelementptr inbounds %struct.rzip_control, ptr %143, i32 0, i32 20
  %145 = load i8, ptr %144, align 8
  %146 = zext i8 %145 to i32
  %147 = icmp sgt i32 %146, 9
  br i1 %147, label %148, label %152

148:                                              ; preds = %142, %131
  br label %149

149:                                              ; preds = %148
  %150 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %150, i32 noundef 238, ptr noundef @.str.2, ptr noundef @__func__.read_config, ptr noundef @.str.18)
  store i1 false, ptr %2, align 1
  br label %520

151:                                              ; No predecessors!
  br label %152

152:                                              ; preds = %151, %142
  br label %503

153:                                              ; preds = %127
  %154 = load ptr, ptr %7, align 8
  %155 = call i32 @strcasecmp(ptr noundef %154, ptr noundef @.str.19) #13
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %227, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %3, align 8
  %159 = getelementptr inbounds %struct.rzip_control, ptr %158, i32 0, i32 26
  %160 = load i64, ptr %159, align 8
  %161 = and i64 %160, 992
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163
  %165 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %165, i32 noundef 242, ptr noundef @.str.2, ptr noundef @__func__.read_config, ptr noundef @.str.20)
  store i1 false, ptr %2, align 1
  br label %520

166:                                              ; No predecessors!
  br label %167

167:                                              ; preds = %166, %157
  %168 = load ptr, ptr %6, align 8
  %169 = call i32 @strcasecmp(ptr noundef %168, ptr noundef @.str.21) #13
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr %3, align 8
  %173 = getelementptr inbounds %struct.rzip_control, ptr %172, i32 0, i32 26
  %174 = load i64, ptr %173, align 8
  %175 = or i64 %174, 128
  store i64 %175, ptr %173, align 8
  br label %226

176:                                              ; preds = %167
  %177 = load ptr, ptr %6, align 8
  %178 = call i32 @strcasecmp(ptr noundef %177, ptr noundef @.str.22) #13
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %176
  %181 = load ptr, ptr %3, align 8
  %182 = getelementptr inbounds %struct.rzip_control, ptr %181, i32 0, i32 26
  %183 = load i64, ptr %182, align 8
  %184 = or i64 %183, 256
  store i64 %184, ptr %182, align 8
  br label %225

185:                                              ; preds = %176
  %186 = load ptr, ptr %6, align 8
  %187 = call i32 @strcasecmp(ptr noundef %186, ptr noundef @.str.23) #13
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr %3, align 8
  %191 = getelementptr inbounds %struct.rzip_control, ptr %190, i32 0, i32 26
  %192 = load i64, ptr %191, align 8
  %193 = or i64 %192, 64
  store i64 %193, ptr %191, align 8
  br label %224

194:                                              ; preds = %185
  %195 = load ptr, ptr %6, align 8
  %196 = call i32 @strcasecmp(ptr noundef %195, ptr noundef @.str.24) #13
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %194
  %199 = load ptr, ptr %3, align 8
  %200 = getelementptr inbounds %struct.rzip_control, ptr %199, i32 0, i32 26
  %201 = load i64, ptr %200, align 8
  %202 = or i64 %201, 32
  store i64 %202, ptr %200, align 8
  br label %223

203:                                              ; preds = %194
  %204 = load ptr, ptr %6, align 8
  %205 = call i32 @strcasecmp(ptr noundef %204, ptr noundef @.str.25) #13
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %203
  %208 = load ptr, ptr %3, align 8
  %209 = getelementptr inbounds %struct.rzip_control, ptr %208, i32 0, i32 26
  %210 = load i64, ptr %209, align 8
  %211 = or i64 %210, 512
  store i64 %211, ptr %209, align 8
  br label %222

212:                                              ; preds = %203
  %213 = load ptr, ptr %6, align 8
  %214 = call i32 @strcasecmp(ptr noundef %213, ptr noundef @.str.26) #13
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  br label %217

217:                                              ; preds = %216
  %218 = load ptr, ptr %3, align 8
  %219 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %218, i32 noundef 254, ptr noundef @.str.2, ptr noundef @__func__.read_config, ptr noundef @.str.27, ptr noundef %219)
  store i1 false, ptr %2, align 1
  br label %520

220:                                              ; No predecessors!
  br label %221

221:                                              ; preds = %220, %212
  br label %222

222:                                              ; preds = %221, %207
  br label %223

223:                                              ; preds = %222, %198
  br label %224

224:                                              ; preds = %223, %189
  br label %225

225:                                              ; preds = %224, %180
  br label %226

226:                                              ; preds = %225, %171
  br label %502

227:                                              ; preds = %153
  %228 = load ptr, ptr %7, align 8
  %229 = call i32 @strcasecmp(ptr noundef %228, ptr noundef @.str.28) #13
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %241, label %231

231:                                              ; preds = %227
  %232 = load ptr, ptr %6, align 8
  %233 = call i32 @strcasecmp(ptr noundef %232, ptr noundef @.str.29) #13
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %231
  %236 = load ptr, ptr %3, align 8
  %237 = getelementptr inbounds %struct.rzip_control, ptr %236, i32 0, i32 26
  %238 = load i64, ptr %237, align 8
  %239 = and i64 %238, -1048577
  store i64 %239, ptr %237, align 8
  br label %240

240:                                              ; preds = %235, %231
  br label %501

241:                                              ; preds = %227
  %242 = load ptr, ptr %7, align 8
  %243 = call i32 @strcasecmp(ptr noundef %242, ptr noundef @.str.30) #13
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %259, label %245

245:                                              ; preds = %241
  %246 = load ptr, ptr %6, align 8
  %247 = call i32 @strcasecmp(ptr noundef %246, ptr noundef @.str.16) #13
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %258, label %249

249:                                              ; preds = %245
  %250 = load ptr, ptr %3, align 8
  %251 = getelementptr inbounds %struct.rzip_control, ptr %250, i32 0, i32 26
  %252 = load i64, ptr %251, align 8
  %253 = or i64 %252, 262144
  store i64 %253, ptr %251, align 8
  %254 = load ptr, ptr %3, align 8
  %255 = getelementptr inbounds %struct.rzip_control, ptr %254, i32 0, i32 26
  %256 = load i64, ptr %255, align 8
  %257 = or i64 %256, 65536
  store i64 %257, ptr %255, align 8
  br label %258

258:                                              ; preds = %249, %245
  br label %500

259:                                              ; preds = %241
  %260 = load ptr, ptr %7, align 8
  %261 = call i32 @strcasecmp(ptr noundef %260, ptr noundef @.str.31) #13
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %273, label %263

263:                                              ; preds = %259
  %264 = load ptr, ptr %6, align 8
  %265 = call i32 @strcasecmp(ptr noundef %264, ptr noundef @.str.16) #13
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %263
  %268 = load ptr, ptr %3, align 8
  %269 = getelementptr inbounds %struct.rzip_control, ptr %268, i32 0, i32 26
  %270 = load i64, ptr %269, align 8
  %271 = or i64 %270, 65536
  store i64 %271, ptr %269, align 8
  br label %272

272:                                              ; preds = %267, %263
  br label %499

273:                                              ; preds = %259
  %274 = load ptr, ptr %7, align 8
  %275 = call i32 @strcasecmp(ptr noundef %274, ptr noundef @.str.32) #13
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %311, label %277

277:                                              ; preds = %273
  %278 = load ptr, ptr %6, align 8
  %279 = call i64 @strlen(ptr noundef %278) #13
  %280 = add i64 %279, 2
  %281 = call noalias ptr @malloc(i64 noundef %280) #15
  %282 = load ptr, ptr %3, align 8
  %283 = getelementptr inbounds %struct.rzip_control, ptr %282, i32 0, i32 5
  store ptr %281, ptr %283, align 8
  %284 = load ptr, ptr %3, align 8
  %285 = getelementptr inbounds %struct.rzip_control, ptr %284, i32 0, i32 5
  %286 = load ptr, ptr %285, align 8
  %287 = icmp ne ptr %286, null
  br i1 %287, label %292, label %288

288:                                              ; preds = %277
  br label %289

289:                                              ; preds = %288
  %290 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %290, i32 noundef 270, ptr noundef @.str.2, ptr noundef @__func__.read_config, ptr noundef @.str.33)
  store i1 false, ptr %2, align 1
  br label %520

291:                                              ; No predecessors!
  br label %292

292:                                              ; preds = %291, %277
  %293 = load ptr, ptr %3, align 8
  %294 = getelementptr inbounds %struct.rzip_control, ptr %293, i32 0, i32 5
  %295 = load ptr, ptr %294, align 8
  %296 = load ptr, ptr %6, align 8
  %297 = call ptr @strcpy(ptr noundef %295, ptr noundef %296) #11
  %298 = load ptr, ptr %6, align 8
  %299 = load ptr, ptr %6, align 8
  %300 = call i64 @strlen(ptr noundef %299) #13
  %301 = getelementptr inbounds i8, ptr %298, i64 %300
  %302 = getelementptr inbounds i8, ptr %301, i64 -1
  %303 = call i32 @strcmp(ptr noundef %302, ptr noundef @.str.34) #13
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %292
  %306 = load ptr, ptr %3, align 8
  %307 = getelementptr inbounds %struct.rzip_control, ptr %306, i32 0, i32 5
  %308 = load ptr, ptr %307, align 8
  %309 = call ptr @strcat(ptr noundef %308, ptr noundef @.str.34) #11
  br label %310

310:                                              ; preds = %305, %292
  br label %498

311:                                              ; preds = %273
  %312 = load ptr, ptr %7, align 8
  %313 = call i32 @strcasecmp(ptr noundef %312, ptr noundef @.str.35) #13
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %350, label %315

315:                                              ; preds = %311
  %316 = load ptr, ptr %3, align 8
  %317 = getelementptr inbounds %struct.rzip_control, ptr %316, i32 0, i32 26
  %318 = load i64, ptr %317, align 8
  %319 = and i64 %318, 3072
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %315
  br label %322

322:                                              ; preds = %321
  %323 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %323, i32 noundef 276, ptr noundef @.str.2, ptr noundef @__func__.read_config, ptr noundef @.str.36)
  store i1 false, ptr %2, align 1
  br label %520

324:                                              ; No predecessors!
  br label %325

325:                                              ; preds = %324, %315
  %326 = load ptr, ptr %6, align 8
  %327 = call i32 @strcasecmp(ptr noundef %326, ptr noundef @.str.16) #13
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %325
  %330 = load ptr, ptr %3, align 8
  %331 = getelementptr inbounds %struct.rzip_control, ptr %330, i32 0, i32 26
  %332 = load i64, ptr %331, align 8
  %333 = or i64 %332, 1024
  store i64 %333, ptr %331, align 8
  br label %349

334:                                              ; preds = %325
  %335 = load ptr, ptr %6, align 8
  %336 = call i32 @strcasecmp(ptr noundef %335, ptr noundef @.str.37) #13
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %343, label %338

338:                                              ; preds = %334
  %339 = load ptr, ptr %3, align 8
  %340 = getelementptr inbounds %struct.rzip_control, ptr %339, i32 0, i32 26
  %341 = load i64, ptr %340, align 8
  %342 = or i64 %341, 2048
  store i64 %342, ptr %340, align 8
  br label %348

343:                                              ; preds = %334
  br label %344

344:                                              ; preds = %343
  %345 = load ptr, ptr %3, align 8
  %346 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %345, i32 noundef 282, ptr noundef @.str.2, ptr noundef @__func__.read_config, ptr noundef @.str.38, ptr noundef %346)
  br label %347

347:                                              ; preds = %344
  br label %348

348:                                              ; preds = %347, %338
  br label %349

349:                                              ; preds = %348, %329
  br label %497

350:                                              ; preds = %311
  %351 = load ptr, ptr %7, align 8
  %352 = call i32 @strcasecmp(ptr noundef %351, ptr noundef @.str.39) #13
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %364, label %354

354:                                              ; preds = %350
  %355 = load ptr, ptr %6, align 8
  %356 = call i32 @strcasecmp(ptr noundef %355, ptr noundef @.str.40) #13
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %363, label %358

358:                                              ; preds = %354
  %359 = load ptr, ptr %3, align 8
  %360 = getelementptr inbounds %struct.rzip_control, ptr %359, i32 0, i32 26
  %361 = load i64, ptr %360, align 8
  %362 = and i64 %361, -2
  store i64 %362, ptr %360, align 8
  br label %363

363:                                              ; preds = %358, %354
  br label %496

364:                                              ; preds = %350
  %365 = load ptr, ptr %7, align 8
  %366 = call i32 @strcasecmp(ptr noundef %365, ptr noundef @.str.41) #13
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %390, label %368

368:                                              ; preds = %364
  %369 = load ptr, ptr %6, align 8
  %370 = call i32 @atoi(ptr noundef %369) #13
  %371 = trunc i32 %370 to i8
  %372 = load ptr, ptr %3, align 8
  %373 = getelementptr inbounds %struct.rzip_control, ptr %372, i32 0, i32 31
  store i8 %371, ptr %373, align 4
  %374 = load ptr, ptr %3, align 8
  %375 = getelementptr inbounds %struct.rzip_control, ptr %374, i32 0, i32 31
  %376 = load i8, ptr %375, align 4
  %377 = sext i8 %376 to i32
  %378 = icmp slt i32 %377, -20
  br i1 %378, label %385, label %379

379:                                              ; preds = %368
  %380 = load ptr, ptr %3, align 8
  %381 = getelementptr inbounds %struct.rzip_control, ptr %380, i32 0, i32 31
  %382 = load i8, ptr %381, align 4
  %383 = sext i8 %382 to i32
  %384 = icmp sgt i32 %383, 19
  br i1 %384, label %385, label %389

385:                                              ; preds = %379, %368
  br label %386

386:                                              ; preds = %385
  %387 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %387, i32 noundef 290, ptr noundef @.str.2, ptr noundef @__func__.read_config, ptr noundef @.str.42)
  store i1 false, ptr %2, align 1
  br label %520

388:                                              ; No predecessors!
  br label %389

389:                                              ; preds = %388, %379
  br label %495

390:                                              ; preds = %364
  %391 = load ptr, ptr %7, align 8
  %392 = call i32 @strcasecmp(ptr noundef %391, ptr noundef @.str.43) #13
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %404, label %394

394:                                              ; preds = %390
  %395 = load ptr, ptr %6, align 8
  %396 = call i32 @strcasecmp(ptr noundef %395, ptr noundef @.str.16) #13
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %403, label %398

398:                                              ; preds = %394
  %399 = load ptr, ptr %3, align 8
  %400 = getelementptr inbounds %struct.rzip_control, ptr %399, i32 0, i32 26
  %401 = load i64, ptr %400, align 8
  %402 = or i64 %401, 524288
  store i64 %402, ptr %400, align 8
  br label %403

403:                                              ; preds = %398, %394
  br label %494

404:                                              ; preds = %390
  %405 = load ptr, ptr %7, align 8
  %406 = call i32 @strcmp(ptr noundef %405, ptr noundef @.str.44) #13
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %418, label %408

408:                                              ; preds = %404
  %409 = load ptr, ptr %6, align 8
  %410 = call i32 @strcmp(ptr noundef %409, ptr noundef @.str.45) #13
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %417, label %412

412:                                              ; preds = %408
  %413 = load ptr, ptr %3, align 8
  %414 = getelementptr inbounds %struct.rzip_control, ptr %413, i32 0, i32 26
  %415 = load i64, ptr %414, align 8
  %416 = and i64 %415, -3
  store i64 %416, ptr %414, align 8
  br label %417

417:                                              ; preds = %412, %408
  br label %493

418:                                              ; preds = %404
  %419 = load ptr, ptr %7, align 8
  %420 = call i32 @strcmp(ptr noundef %419, ptr noundef @.str.46) #13
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %432, label %422

422:                                              ; preds = %418
  %423 = load ptr, ptr %6, align 8
  %424 = call i32 @strcmp(ptr noundef %423, ptr noundef @.str.45) #13
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %431, label %426

426:                                              ; preds = %422
  %427 = load ptr, ptr %3, align 8
  %428 = getelementptr inbounds %struct.rzip_control, ptr %427, i32 0, i32 26
  %429 = load i64, ptr %428, align 8
  %430 = or i64 %429, 8
  store i64 %430, ptr %428, align 8
  br label %431

431:                                              ; preds = %426, %422
  br label %492

432:                                              ; preds = %418
  %433 = load ptr, ptr %7, align 8
  %434 = call i32 @strcasecmp(ptr noundef %433, ptr noundef @.str.47) #13
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %470, label %436

436:                                              ; preds = %432
  %437 = load ptr, ptr %6, align 8
  %438 = call i64 @strlen(ptr noundef %437) #13
  %439 = add i64 %438, 2
  %440 = call ptr @realloc(ptr noundef null, i64 noundef %439) #16
  %441 = load ptr, ptr %3, align 8
  %442 = getelementptr inbounds %struct.rzip_control, ptr %441, i32 0, i32 6
  store ptr %440, ptr %442, align 8
  %443 = load ptr, ptr %3, align 8
  %444 = getelementptr inbounds %struct.rzip_control, ptr %443, i32 0, i32 6
  %445 = load ptr, ptr %444, align 8
  %446 = icmp ne ptr %445, null
  br i1 %446, label %451, label %447

447:                                              ; preds = %436
  br label %448

448:                                              ; preds = %447
  %449 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %449, i32 noundef 305, ptr noundef @.str.2, ptr noundef @__func__.read_config, ptr noundef @.str.33)
  store i1 false, ptr %2, align 1
  br label %520

450:                                              ; No predecessors!
  br label %451

451:                                              ; preds = %450, %436
  %452 = load ptr, ptr %3, align 8
  %453 = getelementptr inbounds %struct.rzip_control, ptr %452, i32 0, i32 6
  %454 = load ptr, ptr %453, align 8
  %455 = load ptr, ptr %6, align 8
  %456 = call ptr @strcpy(ptr noundef %454, ptr noundef %455) #11
  %457 = load ptr, ptr %6, align 8
  %458 = load ptr, ptr %6, align 8
  %459 = call i64 @strlen(ptr noundef %458) #13
  %460 = getelementptr inbounds i8, ptr %457, i64 %459
  %461 = getelementptr inbounds i8, ptr %460, i64 -1
  %462 = call i32 @strcmp(ptr noundef %461, ptr noundef @.str.34) #13
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %469

464:                                              ; preds = %451
  %465 = load ptr, ptr %3, align 8
  %466 = getelementptr inbounds %struct.rzip_control, ptr %465, i32 0, i32 6
  %467 = load ptr, ptr %466, align 8
  %468 = call ptr @strcat(ptr noundef %467, ptr noundef @.str.34) #11
  br label %469

469:                                              ; preds = %464, %451
  br label %491

470:                                              ; preds = %432
  %471 = load ptr, ptr %7, align 8
  %472 = call i32 @strcasecmp(ptr noundef %471, ptr noundef @.str.48) #13
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %484, label %474

474:                                              ; preds = %470
  %475 = load ptr, ptr %7, align 8
  %476 = call i32 @strcasecmp(ptr noundef %475, ptr noundef @.str.45) #13
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %483, label %478

478:                                              ; preds = %474
  %479 = load ptr, ptr %3, align 8
  %480 = getelementptr inbounds %struct.rzip_control, ptr %479, i32 0, i32 26
  %481 = load i64, ptr %480, align 8
  %482 = or i64 %481, 8388608
  store i64 %482, ptr %480, align 8
  br label %483

483:                                              ; preds = %478, %474
  br label %490

484:                                              ; preds = %470
  br label %485

485:                                              ; preds = %484
  %486 = load ptr, ptr %3, align 8
  %487 = load ptr, ptr %7, align 8
  %488 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %486, i32 noundef 315, ptr noundef @.str.2, ptr noundef @__func__.read_config, ptr noundef @.str.49, ptr noundef %487, ptr noundef %488)
  br label %489

489:                                              ; preds = %485
  br label %490

490:                                              ; preds = %489, %483
  br label %491

491:                                              ; preds = %490, %469
  br label %492

492:                                              ; preds = %491, %431
  br label %493

493:                                              ; preds = %492, %417
  br label %494

494:                                              ; preds = %493, %403
  br label %495

495:                                              ; preds = %494, %389
  br label %496

496:                                              ; preds = %495, %363
  br label %497

497:                                              ; preds = %496, %349
  br label %498

498:                                              ; preds = %497, %310
  br label %499

499:                                              ; preds = %498, %272
  br label %500

500:                                              ; preds = %499, %258
  br label %501

501:                                              ; preds = %500, %240
  br label %502

502:                                              ; preds = %501, %226
  br label %503

503:                                              ; preds = %502, %152
  br label %504

504:                                              ; preds = %503, %126
  br label %505

505:                                              ; preds = %504, %107
  br label %59, !llvm.loop !8

506:                                              ; preds = %59
  %507 = load ptr, ptr %9, align 8
  %508 = call i32 @fclose(ptr noundef %507)
  %509 = icmp ne i32 %508, 0
  %510 = xor i1 %509, true
  %511 = xor i1 %510, true
  %512 = zext i1 %511 to i32
  %513 = sext i32 %512 to i64
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %519

515:                                              ; preds = %506
  br label %516

516:                                              ; preds = %515
  %517 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %517, i32 noundef 319, ptr noundef @.str.2, ptr noundef @__func__.read_config, ptr noundef @.str.50)
  store i1 false, ptr %2, align 1
  br label %520

518:                                              ; No predecessors!
  br label %519

519:                                              ; preds = %518, %506
  store i1 true, ptr %2, align 1
  br label %520

520:                                              ; preds = %519, %516, %448, %386, %322, %289, %217, %164, %149, %57
  %521 = load i1, ptr %2, align 1
  ret i1 %521
}

declare noalias ptr @fopen64(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #1

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind
declare ptr @strtok(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #5

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @failure(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ...) #0 {
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
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_start(ptr %12)
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %struct.rzip_control, ptr %13, i32 0, i32 68
  %15 = load ptr, ptr %14, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load ptr, ptr @stderr, align 8
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  %21 = call i32 @vfprintf(ptr noundef %18, ptr noundef %19, ptr noundef %20)
  br label %34

22:                                               ; preds = %5
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.rzip_control, ptr %23, i32 0, i32 68
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds %struct.rzip_control, ptr %26, i32 0, i32 69
  %28 = load ptr, ptr %27, align 8
  %29 = load i32, ptr %7, align 4
  %30 = load ptr, ptr %8, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = load ptr, ptr %10, align 8
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void %25(ptr noundef %28, i32 noundef 0, i32 noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33)
  br label %34

34:                                               ; preds = %22, %17
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_end(ptr %35)
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.rzip_control, ptr %36, i32 0, i32 64
  %38 = load i8, ptr %37, align 8
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %6, align 8
  call void @fatal_exit(ptr noundef %41)
  br label %42

42:                                               ; preds = %40, %34
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #1

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

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #7

declare i32 @fclose(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrz_crypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  %12 = alloca [64 x i8], align 16
  %13 = alloca [16 x i8], align 16
  %14 = alloca [16 x i8], align 16
  %15 = alloca %struct.aes_context, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store i32 %4, ptr %10, align 4
  store i8 0, ptr %18, align 1
  %19 = call i32 @mlock(ptr noundef %15, i64 noundef 560) #11
  %20 = getelementptr inbounds [64 x i8], ptr %11, i64 0, i64 0
  %21 = call i32 @mlock(ptr noundef %20, i64 noundef 64) #11
  %22 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %23 = call i32 @mlock(ptr noundef %22, i64 noundef 64) #11
  %24 = load ptr, ptr %6, align 8
  %25 = load ptr, ptr %9, align 8
  %26 = getelementptr inbounds [64 x i8], ptr %11, i64 0, i64 0
  %27 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  call void @lrz_keygen(ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27)
  %28 = load i64, ptr %8, align 8
  %29 = srem i64 %28, 16
  store i64 %29, ptr %17, align 8
  %30 = load i64, ptr %8, align 8
  %31 = load i64, ptr %17, align 8
  %32 = sub nsw i64 %30, %31
  store i64 %32, ptr %16, align 8
  %33 = load i32, ptr %10, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %93

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %6, align 8
  %38 = getelementptr inbounds %struct.rzip_control, ptr %37, i32 0, i32 26
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 2048
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr %6, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %44, i32 noundef 4, i32 noundef 379, ptr noundef @.str.2, ptr noundef @__func__.lrz_crypt, ptr noundef @.str.51)
  br label %45

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45, %36
  br label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds [64 x i8], ptr %11, i64 0, i64 0
  %49 = call i32 @aes_setkey_enc(ptr noundef %15, ptr noundef %48, i32 noundef 128)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %58, i32 noundef 381, ptr noundef @.str.2, ptr noundef @__func__.lrz_crypt, ptr noundef @.str.52)
  br label %174

59:                                               ; No predecessors!
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i64, ptr %16, align 8
  %62 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %63 = load ptr, ptr %7, align 8
  %64 = load ptr, ptr %7, align 8
  %65 = call i32 @aes_crypt_cbc(ptr noundef %15, i32 noundef 1, i64 noundef %61, ptr noundef %62, ptr noundef %63, ptr noundef %64)
  %66 = load i64, ptr %17, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %60
  %69 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %69, i8 0, i64 16, i1 false)
  %70 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0
  %71 = load ptr, ptr %7, align 8
  %72 = load i64, ptr %16, align 8
  %73 = getelementptr inbounds i8, ptr %71, i64 %72
  %74 = load i64, ptr %17, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %70, ptr align 1 %73, i64 %74, i1 false)
  %75 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %76 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0
  %77 = getelementptr inbounds [16 x i8], ptr %14, i64 0, i64 0
  %78 = call i32 @aes_crypt_cbc(ptr noundef %15, i32 noundef 1, i64 noundef 16, ptr noundef %75, ptr noundef %76, ptr noundef %77)
  %79 = load ptr, ptr %7, align 8
  %80 = load i64, ptr %16, align 8
  %81 = getelementptr inbounds i8, ptr %79, i64 %80
  %82 = load ptr, ptr %7, align 8
  %83 = load i64, ptr %16, align 8
  %84 = getelementptr inbounds i8, ptr %82, i64 %83
  %85 = getelementptr inbounds i8, ptr %84, i64 -16
  %86 = load i64, ptr %17, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %81, ptr align 1 %85, i64 %86, i1 false)
  %87 = load ptr, ptr %7, align 8
  %88 = load i64, ptr %16, align 8
  %89 = getelementptr inbounds i8, ptr %87, i64 %88
  %90 = getelementptr inbounds i8, ptr %89, i64 -16
  %91 = getelementptr inbounds [16 x i8], ptr %14, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %90, ptr align 16 %91, i64 16, i1 false)
  br label %92

92:                                               ; preds = %68, %60
  br label %173

93:                                               ; preds = %5
  %94 = getelementptr inbounds [64 x i8], ptr %11, i64 0, i64 0
  %95 = call i32 @aes_setkey_dec(ptr noundef %15, ptr noundef %94, i32 noundef 128)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = sext i32 %99 to i64
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102
  %104 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %104, i32 noundef 394, ptr noundef @.str.2, ptr noundef @__func__.lrz_crypt, ptr noundef @.str.53)
  br label %174

105:                                              ; No predecessors!
  br label %106

106:                                              ; preds = %105, %93
  br label %107

107:                                              ; preds = %106
  %108 = load ptr, ptr %6, align 8
  %109 = getelementptr inbounds %struct.rzip_control, ptr %108, i32 0, i32 26
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 2048
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113
  %115 = load ptr, ptr %6, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %115, i32 noundef 4, i32 noundef 395, ptr noundef @.str.2, ptr noundef @__func__.lrz_crypt, ptr noundef @.str.54)
  br label %116

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %116, %107
  br label %118

118:                                              ; preds = %117
  %119 = load i64, ptr %17, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %166

121:                                              ; preds = %118
  %122 = load i64, ptr %16, align 8
  %123 = sub nsw i64 %122, 16
  %124 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %125 = load ptr, ptr %7, align 8
  %126 = load ptr, ptr %7, align 8
  %127 = call i32 @aes_crypt_cbc(ptr noundef %15, i32 noundef 0, i64 noundef %123, ptr noundef %124, ptr noundef %125, ptr noundef %126)
  %128 = load ptr, ptr %7, align 8
  %129 = load i64, ptr %16, align 8
  %130 = getelementptr inbounds i8, ptr %128, i64 %129
  %131 = getelementptr inbounds i8, ptr %130, i64 -16
  %132 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0
  %133 = call i32 @aes_crypt_ecb(ptr noundef %15, i32 noundef 0, ptr noundef %131, ptr noundef %132)
  %134 = getelementptr inbounds [16 x i8], ptr %14, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %134, i8 0, i64 16, i1 false)
  %135 = getelementptr inbounds [16 x i8], ptr %14, i64 0, i64 0
  %136 = load ptr, ptr %7, align 8
  %137 = load i64, ptr %16, align 8
  %138 = getelementptr inbounds i8, ptr %136, i64 %137
  %139 = load i64, ptr %17, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %135, ptr align 1 %138, i64 %139, i1 false)
  %140 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0
  %141 = getelementptr inbounds [16 x i8], ptr %14, i64 0, i64 0
  call void @xor128(ptr noundef %140, ptr noundef %141)
  %142 = load ptr, ptr %7, align 8
  %143 = load i64, ptr %16, align 8
  %144 = getelementptr inbounds i8, ptr %142, i64 %143
  %145 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0
  %146 = load i64, ptr %17, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %144, ptr align 16 %145, i64 %146, i1 false)
  %147 = getelementptr inbounds [16 x i8], ptr %14, i64 0, i64 0
  %148 = load i64, ptr %17, align 8
  %149 = getelementptr inbounds i8, ptr %147, i64 %148
  %150 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0
  %151 = load i64, ptr %17, align 8
  %152 = getelementptr inbounds i8, ptr %150, i64 %151
  %153 = load i64, ptr %17, align 8
  %154 = sub nsw i64 16, %153
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %149, ptr align 1 %152, i64 %154, i1 false)
  %155 = getelementptr inbounds [16 x i8], ptr %14, i64 0, i64 0
  %156 = load ptr, ptr %7, align 8
  %157 = load i64, ptr %16, align 8
  %158 = getelementptr inbounds i8, ptr %156, i64 %157
  %159 = getelementptr inbounds i8, ptr %158, i64 -16
  %160 = call i32 @aes_crypt_ecb(ptr noundef %15, i32 noundef 0, ptr noundef %155, ptr noundef %159)
  %161 = load ptr, ptr %7, align 8
  %162 = load i64, ptr %16, align 8
  %163 = getelementptr inbounds i8, ptr %161, i64 %162
  %164 = getelementptr inbounds i8, ptr %163, i64 -16
  %165 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  call void @xor128(ptr noundef %164, ptr noundef %165)
  br label %172

166:                                              ; preds = %118
  %167 = load i64, ptr %8, align 8
  %168 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %169 = load ptr, ptr %7, align 8
  %170 = load ptr, ptr %7, align 8
  %171 = call i32 @aes_crypt_cbc(ptr noundef %15, i32 noundef 0, i64 noundef %167, ptr noundef %168, ptr noundef %169, ptr noundef %170)
  br label %172

172:                                              ; preds = %166, %121
  br label %173

173:                                              ; preds = %172, %92
  store i8 1, ptr %18, align 1
  br label %174

174:                                              ; preds = %173, %103, %57
  call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 560, i1 false)
  %175 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %175, i8 0, i64 64, i1 false)
  %176 = getelementptr inbounds [64 x i8], ptr %11, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %176, i8 0, i64 64, i1 false)
  %177 = call i32 @munlock(ptr noundef %15, i64 noundef 560) #11
  %178 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %179 = call i32 @munlock(ptr noundef %178, i64 noundef 64) #11
  %180 = getelementptr inbounds [64 x i8], ptr %11, i64 0, i64 0
  %181 = call i32 @munlock(ptr noundef %180, i64 noundef 64) #11
  %182 = load i8, ptr %18, align 1
  %183 = trunc i8 %182 to i1
  ret i1 %183
}

; Function Attrs: nounwind
declare i32 @mlock(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lrz_keygen(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [584 x i8], align 16
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %10 = getelementptr inbounds [584 x i8], ptr %9, i64 0, i64 0
  %11 = call i32 @mlock(ptr noundef %10, i64 noundef 584) #11
  %12 = getelementptr inbounds [584 x i8], ptr %9, i64 0, i64 0
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.rzip_control, ptr %13, i32 0, i32 46
  %15 = load ptr, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %12, ptr align 1 %15, i64 64, i1 false)
  %16 = getelementptr inbounds [584 x i8], ptr %9, i64 0, i64 0
  %17 = getelementptr inbounds i8, ptr %16, i64 64
  %18 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %18, i64 8, i1 false)
  %19 = getelementptr inbounds [584 x i8], ptr %9, i64 0, i64 0
  %20 = getelementptr inbounds i8, ptr %19, i64 64
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.rzip_control, ptr %22, i32 0, i32 44
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds %struct.rzip_control, ptr %25, i32 0, i32 45
  %27 = load i32, ptr %26, align 8
  %28 = sext i32 %27 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %24, i64 %28, i1 false)
  %29 = getelementptr inbounds [584 x i8], ptr %9, i64 0, i64 0
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds %struct.rzip_control, ptr %30, i32 0, i32 45
  %32 = load i32, ptr %31, align 8
  %33 = add nsw i32 72, %32
  %34 = load ptr, ptr %7, align 8
  call void @sha4(ptr noundef %29, i32 noundef %33, ptr noundef %34, i32 noundef 0)
  %35 = getelementptr inbounds [584 x i8], ptr %9, i64 0, i64 0
  %36 = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %35, ptr align 1 %36, i64 64, i1 false)
  %37 = getelementptr inbounds [584 x i8], ptr %9, i64 0, i64 0
  %38 = getelementptr inbounds i8, ptr %37, i64 64
  %39 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr align 1 %39, i64 8, i1 false)
  %40 = getelementptr inbounds [584 x i8], ptr %9, i64 0, i64 0
  %41 = getelementptr inbounds i8, ptr %40, i64 64
  %42 = getelementptr inbounds i8, ptr %41, i64 8
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds %struct.rzip_control, ptr %43, i32 0, i32 44
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds %struct.rzip_control, ptr %46, i32 0, i32 45
  %48 = load i32, ptr %47, align 8
  %49 = sext i32 %48 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %42, ptr align 1 %45, i64 %49, i1 false)
  %50 = getelementptr inbounds [584 x i8], ptr %9, i64 0, i64 0
  %51 = load ptr, ptr %5, align 8
  %52 = getelementptr inbounds %struct.rzip_control, ptr %51, i32 0, i32 45
  %53 = load i32, ptr %52, align 8
  %54 = add nsw i32 72, %53
  %55 = load ptr, ptr %8, align 8
  call void @sha4(ptr noundef %50, i32 noundef %54, ptr noundef %55, i32 noundef 0)
  %56 = getelementptr inbounds [584 x i8], ptr %9, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %56, i8 0, i64 584, i1 false)
  %57 = getelementptr inbounds [584 x i8], ptr %9, i64 0, i64 0
  %58 = call i32 @munlock(ptr noundef %57, i64 noundef 584) #11
  ret void
}

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

declare i32 @aes_setkey_enc(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @aes_crypt_cbc(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare i32 @aes_setkey_dec(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @aes_crypt_ecb(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xor128(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  store ptr %7, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  store ptr %8, ptr %6, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr inbounds i64, ptr %9, i64 0
  %11 = load i64, ptr %10, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds i64, ptr %12, i64 0
  %14 = load i64, ptr %13, align 8
  %15 = xor i64 %14, %11
  store i64 %15, ptr %13, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 1
  %18 = load i64, ptr %17, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 1
  %21 = load i64, ptr %20, align 8
  %22 = xor i64 %21, %18
  store i64 %22, ptr %20, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @munlock(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrz_stretch(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.sha4_context, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %7 = call i32 @mlock(ptr noundef %3, i64 noundef 472) #11
  call void @sha4_starts(ptr noundef %3, i32 noundef 0)
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.rzip_control, ptr %8, i32 0, i32 39
  %10 = load i64, ptr %9, align 8
  %11 = mul nsw i64 %10, 64
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.rzip_control, ptr %12, i32 0, i32 45
  %14 = load i32, ptr %13, align 8
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 8
  %17 = udiv i64 %11, %16
  store i64 %17, ptr %5, align 8
  br label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.rzip_control, ptr %19, i32 0, i32 26
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 2048
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr %2, align 8
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.rzip_control, ptr %27, i32 0, i32 39
  %29 = load i64, ptr %28, align 8
  %30 = load i64, ptr %5, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %26, i32 noundef 4, i32 noundef 434, ptr noundef @.str.2, ptr noundef @__func__.lrz_stretch, ptr noundef @.str.55, i64 noundef %29, i64 noundef %30)
  br label %31

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %18
  br label %33

33:                                               ; preds = %32
  store i64 0, ptr %4, align 8
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i64, ptr %4, align 8
  %36 = load i64, ptr %5, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i64, ptr %4, align 8
  %40 = call i64 @__uint64_identity(i64 noundef %39)
  store i64 %40, ptr %6, align 8
  call void @sha4_update(ptr noundef %3, ptr noundef %6, i32 noundef 8)
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr inbounds %struct.rzip_control, ptr %41, i32 0, i32 44
  %43 = load ptr, ptr %42, align 8
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds %struct.rzip_control, ptr %44, i32 0, i32 45
  %46 = load i32, ptr %45, align 8
  call void @sha4_update(ptr noundef %3, ptr noundef %43, i32 noundef %46)
  br label %47

47:                                               ; preds = %38
  %48 = load i64, ptr %4, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, ptr %4, align 8
  br label %34, !llvm.loop !9

50:                                               ; preds = %34
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds %struct.rzip_control, ptr %51, i32 0, i32 46
  %53 = load ptr, ptr %52, align 8
  call void @sha4_finish(ptr noundef %3, ptr noundef %53)
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 472, i1 false)
  %54 = call i32 @munlock(ptr noundef %3, i64 noundef 472) #11
  ret void
}

declare void @sha4_starts(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__uint64_identity(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

declare void @sha4_update(ptr noundef, ptr noundef, i32 noundef) #2

declare void @sha4_finish(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #10

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare void @perror(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #10

declare void @sha4(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(1) }

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
