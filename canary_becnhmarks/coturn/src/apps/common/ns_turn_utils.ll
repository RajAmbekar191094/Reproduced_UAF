; ModuleID = '/home/raj/coturn/src/apps/common/ns_turn_utils.c'
source_filename = "/home/raj/coturn/src/apps/common/ns_turn_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._turn_mutex = type { i32, ptr }
%union.pthread_mutexattr_t = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@_log_time_value_set = dso_local global i32 0, align 4, !dbg !0
@_log_time_value = dso_local global i32 0, align 4, !dbg !74
@.str = private unnamed_addr constant [11 x i8] c"Mutex lock\00", align 1, !dbg !78
@.str.1 = private unnamed_addr constant [21 x i8] c"Uninitialized mutex\0A\00", align 1, !dbg !83
@.str.2 = private unnamed_addr constant [13 x i8] c"Mutex unlock\00", align 1, !dbg !88
@.str.3 = private unnamed_addr constant [23 x i8] c"Cannot init mutex attr\00", align 1, !dbg !93
@.str.4 = private unnamed_addr constant [30 x i8] c"Cannot set type on mutex attr\00", align 1, !dbg !98
@.str.5 = private unnamed_addr constant [18 x i8] c"Cannot init mutex\00", align 1, !dbg !103
@no_stdout_log = internal global i32 0, align 4, !dbg !233
@turn_log_timestamp_format = internal global [48 x i8] c"%FT%T%z\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16, !dbg !235
@use_new_log_timestamp_format = dso_local global i32 0, align 4, !dbg !108
@.str.6 = private unnamed_addr constant [11 x i8] c"%s: EMPTY\0A\00", align 1, !dbg !110
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !112
@.str.8 = private unnamed_addr constant [17 x i8] c"IPv4. %s: %s:%d\0A\00", align 1, !dbg !117
@.str.9 = private unnamed_addr constant [17 x i8] c"IPv6. %s: %s:%d\0A\00", align 1, !dbg !122
@.str.10 = private unnamed_addr constant [20 x i8] c"IP. %s: 0.0.0.0:%d\0A\00", align 1, !dbg !124
@.str.11 = private unnamed_addr constant [33 x i8] c"%s: wrong IP address family: %d\0A\00", align 1, !dbg !129
@log_fn_base = internal global [1025 x i8] zeroinitializer, align 16, !dbg !250
@_rtpfile = internal global ptr null, align 8, !dbg !255
@stdout = external global ptr, align 8
@to_syslog = internal global i32 0, align 4, !dbg !305
@simple_log = internal global i32 0, align 4, !dbg !307
@log_fn = internal global [1025 x i8] zeroinitializer, align 16, !dbg !309
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !134
@stderr = external global ptr, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"log file is damaged\0A\00", align 1, !dbg !139
@.str.14 = private unnamed_addr constant [23 x i8] c"log file reopened: %s\0A\00", align 1, !dbg !141
@.str.15 = private unnamed_addr constant [2 x i8] c"w\00", align 1, !dbg !143
@.str.16 = private unnamed_addr constant [21 x i8] c"log file opened: %s\0A\00", align 1, !dbg !145
@.str.17 = private unnamed_addr constant [6 x i8] c"%lu: \00", align 1, !dbg !147
@.str.18 = private unnamed_addr constant [10 x i8] c": ERROR: \00", align 1, !dbg !152
@.str.19 = private unnamed_addr constant [3 x i8] c": \00", align 1, !dbg !157
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !162
@.str.21 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1, !dbg !164
@.str.22 = private unnamed_addr constant [4 x i8] c"svn\00", align 1, !dbg !169
@.str.23 = private unnamed_addr constant [4 x i8] c"ssh\00", align 1, !dbg !171
@.str.24 = private unnamed_addr constant [4 x i8] c"sip\00", align 1, !dbg !173
@.str.25 = private unnamed_addr constant [5 x i8] c"http\00", align 1, !dbg !175
@.str.26 = private unnamed_addr constant [5 x i8] c"ldap\00", align 1, !dbg !180
@.str.27 = private unnamed_addr constant [5 x i8] c"sips\00", align 1, !dbg !182
@.str.28 = private unnamed_addr constant [5 x i8] c"turn\00", align 1, !dbg !184
@.str.29 = private unnamed_addr constant [5 x i8] c"stun\00", align 1, !dbg !186
@.str.30 = private unnamed_addr constant [6 x i8] c"https\00", align 1, !dbg !188
@.str.31 = private unnamed_addr constant [6 x i8] c"ldaps\00", align 1, !dbg !190
@.str.32 = private unnamed_addr constant [6 x i8] c"turns\00", align 1, !dbg !192
@.str.33 = private unnamed_addr constant [6 x i8] c"stuns\00", align 1, !dbg !194
@.str.34 = private unnamed_addr constant [7 x i8] c"telnet\00", align 1, !dbg !196
@.str.35 = private unnamed_addr constant [7 x i8] c"radius\00", align 1, !dbg !201
@.str.36 = private unnamed_addr constant [8 x i8] c"svn+ssh\00", align 1, !dbg !203
@.str.37 = private unnamed_addr constant [9 x i8] c"://%s:%d\00", align 1, !dbg !208
@.str.38 = private unnamed_addr constant [6 x i8] c"://%s\00", align 1, !dbg !213
@.str.39 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !215
@.str.40 = private unnamed_addr constant [2 x i8] c"\09\00", align 1, !dbg !217
@.str.41 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !219
@.str.42 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !221
@.str.43 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !223
@.str.44 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1, !dbg !225
@.str.45 = private unnamed_addr constant [2 x i8] c"\\\00", align 1, !dbg !227
@.str.46 = private unnamed_addr constant [6 x i8] c"union\00", align 1, !dbg !229
@.str.47 = private unnamed_addr constant [7 x i8] c"select\00", align 1, !dbg !231
@log_mutex_inited = internal global i32 0, align 4, !dbg !240
@log_mutex = internal global %struct._turn_mutex zeroinitializer, align 8, !dbg !242
@.str.48 = private unnamed_addr constant [5 x i8] c".log\00", align 1, !dbg !311
@.str.49 = private unnamed_addr constant [8 x i8] c"%s_%s%s\00", align 1, !dbg !313
@.str.50 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1, !dbg !315
@.str.51 = private unnamed_addr constant [3 x i8] c"%F\00", align 1, !dbg !317
@log_start_time = internal global i32 0, align 4, !dbg !319
@to_reset_log_file = internal global i32 0, align 4, !dbg !359
@.str.52 = private unnamed_addr constant [28 x i8] c"%s: resetting the log file\0A\00", align 1, !dbg !321
@__FUNCTION__.set_rtpfile = private unnamed_addr constant [12 x i8] c"set_rtpfile\00", align 1, !dbg !326
@.str.53 = private unnamed_addr constant [7 x i8] c"syslog\00", align 1, !dbg !331
@.str.54 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1, !dbg !333
@.str.55 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !335
@.str.56 = private unnamed_addr constant [2 x i8] c"a\00", align 1, !dbg !337
@.str.57 = private unnamed_addr constant [45 x i8] c"ERROR: Cannot open log file for writing: %s\0A\00", align 1, !dbg !339
@.str.58 = private unnamed_addr constant [9 x i8] c"turn.log\00", align 1, !dbg !344
@.str.59 = private unnamed_addr constant [9 x i8] c"turn_%d_\00", align 1, !dbg !346
@.str.60 = private unnamed_addr constant [23 x i8] c"/var/log/turnserver/%s\00", align 1, !dbg !348
@.str.61 = private unnamed_addr constant [28 x i8] c"String truncation occured.\0A\00", align 1, !dbg !350
@.str.62 = private unnamed_addr constant [12 x i8] c"/var/log/%s\00", align 1, !dbg !352
@.str.63 = private unnamed_addr constant [12 x i8] c"/var/tmp/%s\00", align 1, !dbg !355
@.str.64 = private unnamed_addr constant [8 x i8] c"/tmp/%s\00", align 1, !dbg !357

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @turn_mutex_lock(ptr noundef %0) #0 !dbg !370 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !376, metadata !DIExpression()), !dbg !377
  %5 = load ptr, ptr %3, align 8, !dbg !378
  %6 = icmp ne ptr %5, null, !dbg !378
  br i1 %6, label %7, label %27, !dbg !380

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !381
  %9 = getelementptr inbounds %struct._turn_mutex, ptr %8, i32 0, i32 1, !dbg !382
  %10 = load ptr, ptr %9, align 8, !dbg !382
  %11 = icmp ne ptr %10, null, !dbg !381
  br i1 %11, label %12, label %27, !dbg !383

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !dbg !384
  %14 = getelementptr inbounds %struct._turn_mutex, ptr %13, i32 0, i32 0, !dbg !385
  %15 = load i32, ptr %14, align 8, !dbg !385
  %16 = icmp eq i32 %15, -271771261, !dbg !386
  br i1 %16, label %17, label %27, !dbg !387

17:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %4, metadata !388, metadata !DIExpression()), !dbg !390
  store i32 0, ptr %4, align 4, !dbg !390
  %18 = load ptr, ptr %3, align 8, !dbg !391
  %19 = getelementptr inbounds %struct._turn_mutex, ptr %18, i32 0, i32 1, !dbg !392
  %20 = load ptr, ptr %19, align 8, !dbg !392
  %21 = call i32 @pthread_mutex_lock(ptr noundef %20) #8, !dbg !393
  store i32 %21, ptr %4, align 4, !dbg !394
  %22 = load i32, ptr %4, align 4, !dbg !395
  %23 = icmp slt i32 %22, 0, !dbg !397
  br i1 %23, label %24, label %25, !dbg !398

24:                                               ; preds = %17
  call void @perror(ptr noundef @.str), !dbg !399
  br label %25, !dbg !401

25:                                               ; preds = %24, %17
  %26 = load i32, ptr %4, align 4, !dbg !402
  store i32 %26, ptr %2, align 4, !dbg !403
  br label %29, !dbg !403

27:                                               ; preds = %12, %7, %1
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.1), !dbg !404
  store i32 -1, ptr %2, align 4, !dbg !406
  br label %29, !dbg !406

29:                                               ; preds = %27, %25
  %30 = load i32, ptr %2, align 4, !dbg !407
  ret i32 %30, !dbg !407
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #2

declare void @perror(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @turn_mutex_unlock(ptr noundef %0) #0 !dbg !408 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !409, metadata !DIExpression()), !dbg !410
  %5 = load ptr, ptr %3, align 8, !dbg !411
  %6 = icmp ne ptr %5, null, !dbg !411
  br i1 %6, label %7, label %27, !dbg !413

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !414
  %9 = getelementptr inbounds %struct._turn_mutex, ptr %8, i32 0, i32 1, !dbg !415
  %10 = load ptr, ptr %9, align 8, !dbg !415
  %11 = icmp ne ptr %10, null, !dbg !414
  br i1 %11, label %12, label %27, !dbg !416

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !dbg !417
  %14 = getelementptr inbounds %struct._turn_mutex, ptr %13, i32 0, i32 0, !dbg !418
  %15 = load i32, ptr %14, align 8, !dbg !418
  %16 = icmp eq i32 %15, -271771261, !dbg !419
  br i1 %16, label %17, label %27, !dbg !420

17:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %4, metadata !421, metadata !DIExpression()), !dbg !423
  store i32 0, ptr %4, align 4, !dbg !423
  %18 = load ptr, ptr %3, align 8, !dbg !424
  %19 = getelementptr inbounds %struct._turn_mutex, ptr %18, i32 0, i32 1, !dbg !425
  %20 = load ptr, ptr %19, align 8, !dbg !425
  %21 = call i32 @pthread_mutex_unlock(ptr noundef %20) #8, !dbg !426
  store i32 %21, ptr %4, align 4, !dbg !427
  %22 = load i32, ptr %4, align 4, !dbg !428
  %23 = icmp slt i32 %22, 0, !dbg !430
  br i1 %23, label %24, label %25, !dbg !431

24:                                               ; preds = %17
  call void @perror(ptr noundef @.str.2), !dbg !432
  br label %25, !dbg !434

25:                                               ; preds = %24, %17
  %26 = load i32, ptr %4, align 4, !dbg !435
  store i32 %26, ptr %2, align 4, !dbg !436
  br label %29, !dbg !436

27:                                               ; preds = %12, %7, %1
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.1), !dbg !437
  store i32 -1, ptr %2, align 4, !dbg !439
  br label %29, !dbg !439

29:                                               ; preds = %27, %25
  %30 = load i32, ptr %2, align 4, !dbg !440
  ret i32 %30, !dbg !440
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @turn_mutex_init(ptr noundef %0) #0 !dbg !441 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !445, metadata !DIExpression()), !dbg !446
  %4 = load ptr, ptr %3, align 8, !dbg !447
  %5 = icmp ne ptr %4, null, !dbg !447
  br i1 %5, label %6, label %16, !dbg !449

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !450
  %8 = getelementptr inbounds %struct._turn_mutex, ptr %7, i32 0, i32 0, !dbg !452
  store i32 -271771261, ptr %8, align 8, !dbg !453
  %9 = call noalias ptr @malloc(i64 noundef 40) #9, !dbg !454
  %10 = load ptr, ptr %3, align 8, !dbg !455
  %11 = getelementptr inbounds %struct._turn_mutex, ptr %10, i32 0, i32 1, !dbg !456
  store ptr %9, ptr %11, align 8, !dbg !457
  %12 = load ptr, ptr %3, align 8, !dbg !458
  %13 = getelementptr inbounds %struct._turn_mutex, ptr %12, i32 0, i32 1, !dbg !459
  %14 = load ptr, ptr %13, align 8, !dbg !459
  %15 = call i32 @pthread_mutex_init(ptr noundef %14, ptr noundef null) #8, !dbg !460
  store i32 0, ptr %2, align 4, !dbg !461
  br label %17, !dbg !461

16:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !462
  br label %17, !dbg !462

17:                                               ; preds = %16, %6
  %18 = load i32, ptr %2, align 4, !dbg !464
  ret i32 %18, !dbg !464
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @turn_mutex_init_recursive(ptr noundef %0) #0 !dbg !465 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.pthread_mutexattr_t, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !466, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.declare(metadata ptr %3, metadata !468, metadata !DIExpression()), !dbg !469
  store i32 -1, ptr %3, align 4, !dbg !469
  %5 = load ptr, ptr %2, align 8, !dbg !470
  %6 = icmp ne ptr %5, null, !dbg !470
  br i1 %6, label %7, label %38, !dbg !472

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !473, metadata !DIExpression()), !dbg !480
  %8 = call i32 @pthread_mutexattr_init(ptr noundef %4) #8, !dbg !481
  %9 = icmp slt i32 %8, 0, !dbg !483
  br i1 %9, label %10, label %11, !dbg !484

10:                                               ; preds = %7
  call void @perror(ptr noundef @.str.3), !dbg !485
  br label %37, !dbg !487

11:                                               ; preds = %7
  %12 = call i32 @pthread_mutexattr_settype(ptr noundef %4, i32 noundef 1) #8, !dbg !488
  %13 = icmp slt i32 %12, 0, !dbg !491
  br i1 %13, label %14, label %15, !dbg !492

14:                                               ; preds = %11
  call void @perror(ptr noundef @.str.4), !dbg !493
  br label %35, !dbg !495

15:                                               ; preds = %11
  %16 = call noalias ptr @malloc(i64 noundef 40) #9, !dbg !496
  %17 = load ptr, ptr %2, align 8, !dbg !498
  %18 = getelementptr inbounds %struct._turn_mutex, ptr %17, i32 0, i32 1, !dbg !499
  store ptr %16, ptr %18, align 8, !dbg !500
  %19 = load ptr, ptr %2, align 8, !dbg !501
  %20 = getelementptr inbounds %struct._turn_mutex, ptr %19, i32 0, i32 0, !dbg !502
  store i32 -271771261, ptr %20, align 8, !dbg !503
  %21 = load ptr, ptr %2, align 8, !dbg !504
  %22 = getelementptr inbounds %struct._turn_mutex, ptr %21, i32 0, i32 1, !dbg !506
  %23 = load ptr, ptr %22, align 8, !dbg !506
  %24 = call i32 @pthread_mutex_init(ptr noundef %23, ptr noundef %4) #8, !dbg !507
  store i32 %24, ptr %3, align 4, !dbg !508
  %25 = icmp slt i32 %24, 0, !dbg !509
  br i1 %25, label %26, label %34, !dbg !510

26:                                               ; preds = %15
  call void @perror(ptr noundef @.str.5), !dbg !511
  %27 = load ptr, ptr %2, align 8, !dbg !513
  %28 = getelementptr inbounds %struct._turn_mutex, ptr %27, i32 0, i32 0, !dbg !514
  store i32 0, ptr %28, align 8, !dbg !515
  %29 = load ptr, ptr %2, align 8, !dbg !516
  %30 = getelementptr inbounds %struct._turn_mutex, ptr %29, i32 0, i32 1, !dbg !517
  %31 = load ptr, ptr %30, align 8, !dbg !517
  call void @free(ptr noundef %31) #8, !dbg !518
  %32 = load ptr, ptr %2, align 8, !dbg !519
  %33 = getelementptr inbounds %struct._turn_mutex, ptr %32, i32 0, i32 1, !dbg !520
  store ptr null, ptr %33, align 8, !dbg !521
  br label %34, !dbg !522

34:                                               ; preds = %26, %15
  br label %35

35:                                               ; preds = %34, %14
  %36 = call i32 @pthread_mutexattr_destroy(ptr noundef %4) #8, !dbg !523
  br label %37

37:                                               ; preds = %35, %10
  br label %38, !dbg !524

38:                                               ; preds = %37, %1
  %39 = load i32, ptr %3, align 4, !dbg !525
  ret i32 %39, !dbg !526
}

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_init(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_settype(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_destroy(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @turn_mutex_destroy(ptr noundef %0) #0 !dbg !527 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !528, metadata !DIExpression()), !dbg !529
  %5 = load ptr, ptr %3, align 8, !dbg !530
  %6 = icmp ne ptr %5, null, !dbg !530
  br i1 %6, label %7, label %30, !dbg !532

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !533
  %9 = getelementptr inbounds %struct._turn_mutex, ptr %8, i32 0, i32 1, !dbg !534
  %10 = load ptr, ptr %9, align 8, !dbg !534
  %11 = icmp ne ptr %10, null, !dbg !533
  br i1 %11, label %12, label %30, !dbg !535

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !dbg !536
  %14 = getelementptr inbounds %struct._turn_mutex, ptr %13, i32 0, i32 0, !dbg !537
  %15 = load i32, ptr %14, align 8, !dbg !537
  %16 = icmp eq i32 %15, -271771261, !dbg !538
  br i1 %16, label %17, label %30, !dbg !539

17:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %4, metadata !540, metadata !DIExpression()), !dbg !542
  store i32 0, ptr %4, align 4, !dbg !542
  %18 = load ptr, ptr %3, align 8, !dbg !543
  %19 = getelementptr inbounds %struct._turn_mutex, ptr %18, i32 0, i32 1, !dbg !544
  %20 = load ptr, ptr %19, align 8, !dbg !544
  %21 = call i32 @pthread_mutex_destroy(ptr noundef %20) #8, !dbg !545
  store i32 %21, ptr %4, align 4, !dbg !546
  %22 = load ptr, ptr %3, align 8, !dbg !547
  %23 = getelementptr inbounds %struct._turn_mutex, ptr %22, i32 0, i32 1, !dbg !548
  %24 = load ptr, ptr %23, align 8, !dbg !548
  call void @free(ptr noundef %24) #8, !dbg !549
  %25 = load ptr, ptr %3, align 8, !dbg !550
  %26 = getelementptr inbounds %struct._turn_mutex, ptr %25, i32 0, i32 1, !dbg !551
  store ptr null, ptr %26, align 8, !dbg !552
  %27 = load ptr, ptr %3, align 8, !dbg !553
  %28 = getelementptr inbounds %struct._turn_mutex, ptr %27, i32 0, i32 0, !dbg !554
  store i32 0, ptr %28, align 8, !dbg !555
  %29 = load i32, ptr %4, align 4, !dbg !556
  store i32 %29, ptr %2, align 4, !dbg !557
  br label %31, !dbg !557

30:                                               ; preds = %12, %7, %1
  store i32 0, ptr %2, align 4, !dbg !558
  br label %31, !dbg !558

31:                                               ; preds = %30, %17
  %32 = load i32, ptr %2, align 4, !dbg !560
  ret i32 %32, !dbg !560
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_no_stdout_log(i32 noundef %0) #0 !dbg !561 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !564, metadata !DIExpression()), !dbg !565
  %3 = load i32, ptr %2, align 4, !dbg !566
  store i32 %3, ptr @no_stdout_log, align 4, !dbg !567
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_turn_log_timestamp_format(ptr noundef %0) #0 !dbg !569 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !572, metadata !DIExpression()), !dbg !573
  %3 = load ptr, ptr %2, align 8, !dbg !574
  %4 = call ptr @strncpy(ptr noundef @turn_log_timestamp_format, ptr noundef %3, i64 noundef 47) #8, !dbg !575
  ret void, !dbg !576
}

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addr_debug_print(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !577 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [46 x i8], align 16
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !636, metadata !DIExpression()), !dbg !637
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !638, metadata !DIExpression()), !dbg !639
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !640, metadata !DIExpression()), !dbg !641
  %8 = load i32, ptr %4, align 4, !dbg !642
  %9 = icmp ne i32 %8, 0, !dbg !642
  br i1 %9, label %10, label %74, !dbg !644

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8, !dbg !645
  %12 = icmp ne ptr %11, null, !dbg !645
  br i1 %12, label %15, label %13, !dbg !648

13:                                               ; preds = %10
  %14 = load ptr, ptr %6, align 8, !dbg !649
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.6, ptr noundef %14), !dbg !651
  br label %73, !dbg !652

15:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata ptr %7, metadata !653, metadata !DIExpression()), !dbg !658
  %16 = load ptr, ptr %6, align 8, !dbg !659
  %17 = icmp ne ptr %16, null, !dbg !659
  br i1 %17, label %19, label %18, !dbg !661

18:                                               ; preds = %15
  store ptr @.str.7, ptr %6, align 8, !dbg !662
  br label %19, !dbg !663

19:                                               ; preds = %18, %15
  %20 = load ptr, ptr %5, align 8, !dbg !664
  %21 = getelementptr inbounds %struct.sockaddr, ptr %20, i32 0, i32 0, !dbg !666
  %22 = load i16, ptr %21, align 4, !dbg !666
  %23 = zext i16 %22 to i32, !dbg !664
  %24 = icmp eq i32 %23, 2, !dbg !667
  br i1 %24, label %25, label %36, !dbg !668

25:                                               ; preds = %19
  %26 = load ptr, ptr %6, align 8, !dbg !669
  %27 = load ptr, ptr %5, align 8, !dbg !671
  %28 = getelementptr inbounds %struct.sockaddr_in, ptr %27, i32 0, i32 2, !dbg !672
  %29 = getelementptr inbounds [46 x i8], ptr %7, i64 0, i64 0, !dbg !673
  %30 = call ptr @inet_ntop(i32 noundef 2, ptr noundef %28, ptr noundef %29, i32 noundef 46) #8, !dbg !674
  %31 = load ptr, ptr %5, align 8, !dbg !675
  %32 = getelementptr inbounds %struct.sockaddr_in, ptr %31, i32 0, i32 1, !dbg !675
  %33 = load i16, ptr %32, align 2, !dbg !675
  %34 = call zeroext i16 @ntohs(i16 noundef zeroext %33) #10, !dbg !675
  %35 = zext i16 %34 to i32, !dbg !675
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.8, ptr noundef %26, ptr noundef %30, i32 noundef %35), !dbg !676
  br label %72, !dbg !677

36:                                               ; preds = %19
  %37 = load ptr, ptr %5, align 8, !dbg !678
  %38 = getelementptr inbounds %struct.sockaddr, ptr %37, i32 0, i32 0, !dbg !680
  %39 = load i16, ptr %38, align 4, !dbg !680
  %40 = zext i16 %39 to i32, !dbg !678
  %41 = icmp eq i32 %40, 10, !dbg !681
  br i1 %41, label %42, label %53, !dbg !682

42:                                               ; preds = %36
  %43 = load ptr, ptr %6, align 8, !dbg !683
  %44 = load ptr, ptr %5, align 8, !dbg !685
  %45 = getelementptr inbounds %struct.sockaddr_in6, ptr %44, i32 0, i32 3, !dbg !686
  %46 = getelementptr inbounds [46 x i8], ptr %7, i64 0, i64 0, !dbg !687
  %47 = call ptr @inet_ntop(i32 noundef 10, ptr noundef %45, ptr noundef %46, i32 noundef 46) #8, !dbg !688
  %48 = load ptr, ptr %5, align 8, !dbg !689
  %49 = getelementptr inbounds %struct.sockaddr_in6, ptr %48, i32 0, i32 1, !dbg !689
  %50 = load i16, ptr %49, align 2, !dbg !689
  %51 = call zeroext i16 @ntohs(i16 noundef zeroext %50) #10, !dbg !689
  %52 = zext i16 %51 to i32, !dbg !689
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.9, ptr noundef %43, ptr noundef %47, i32 noundef %52), !dbg !690
  br label %71, !dbg !691

53:                                               ; preds = %36
  %54 = load ptr, ptr %5, align 8, !dbg !692
  %55 = call i32 @addr_any_no_port(ptr noundef %54), !dbg !695
  %56 = icmp ne i32 %55, 0, !dbg !695
  br i1 %56, label %57, label %64, !dbg !696

57:                                               ; preds = %53
  %58 = load ptr, ptr %6, align 8, !dbg !697
  %59 = load ptr, ptr %5, align 8, !dbg !699
  %60 = getelementptr inbounds %struct.sockaddr_in, ptr %59, i32 0, i32 1, !dbg !699
  %61 = load i16, ptr %60, align 2, !dbg !699
  %62 = call zeroext i16 @ntohs(i16 noundef zeroext %61) #10, !dbg !699
  %63 = zext i16 %62 to i32, !dbg !699
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.10, ptr noundef %58, i32 noundef %63), !dbg !700
  br label %70, !dbg !701

64:                                               ; preds = %53
  %65 = load ptr, ptr %6, align 8, !dbg !702
  %66 = load ptr, ptr %5, align 8, !dbg !704
  %67 = getelementptr inbounds %struct.sockaddr, ptr %66, i32 0, i32 0, !dbg !705
  %68 = load i16, ptr %67, align 4, !dbg !705
  %69 = zext i16 %68 to i32, !dbg !706
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.11, ptr noundef %65, i32 noundef %69), !dbg !707
  br label %70

70:                                               ; preds = %64, %57
  br label %71

71:                                               ; preds = %70, %42
  br label %72

72:                                               ; preds = %71, %25
  br label %73

73:                                               ; preds = %72, %13
  br label %74, !dbg !708

74:                                               ; preds = %73, %3
  ret void, !dbg !709
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @turn_log_func_default(i32 noundef %0, ptr noundef %1, ...) #0 !dbg !710 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca [1025 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !714, metadata !DIExpression()), !dbg !715
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !716, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.declare(metadata ptr %5, metadata !718, metadata !DIExpression()), !dbg !730
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !731
  call void @llvm.va_start(ptr %9), !dbg !731
  call void @llvm.dbg.declare(metadata ptr %6, metadata !732, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.declare(metadata ptr %7, metadata !734, metadata !DIExpression()), !dbg !735
  store i64 0, ptr %7, align 8, !dbg !735
  %10 = load i32, ptr @use_new_log_timestamp_format, align 4, !dbg !736
  %11 = icmp ne i32 %10, 0, !dbg !736
  br i1 %11, label %12, label %19, !dbg !738

12:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !739, metadata !DIExpression()), !dbg !744
  %13 = call i64 @time(ptr noundef null) #8, !dbg !745
  store i64 %13, ptr %8, align 8, !dbg !744
  %14 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !746
  %15 = call ptr @localtime(ptr noundef %8) #8, !dbg !747
  %16 = call i64 @strftime(ptr noundef %14, i64 noundef 1025, ptr noundef @turn_log_timestamp_format, ptr noundef %15) #8, !dbg !748
  %17 = load i64, ptr %7, align 8, !dbg !749
  %18 = add i64 %17, %16, !dbg !749
  store i64 %18, ptr %7, align 8, !dbg !749
  br label %27, !dbg !750

19:                                               ; preds = %2
  %20 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !751
  %21 = call i32 @log_time(), !dbg !753
  %22 = zext i32 %21 to i64, !dbg !754
  %23 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %20, i64 noundef 1025, ptr noundef @.str.17, i64 noundef %22) #8, !dbg !755
  %24 = sext i32 %23 to i64, !dbg !755
  %25 = load i64, ptr %7, align 8, !dbg !756
  %26 = add i64 %25, %24, !dbg !756
  store i64 %26, ptr %7, align 8, !dbg !756
  br label %27

27:                                               ; preds = %19, %12
  %28 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !757
  %29 = load i64, ptr %7, align 8, !dbg !758
  %30 = getelementptr inbounds i8, ptr %28, i64 %29, !dbg !759
  %31 = load i32, ptr %3, align 4, !dbg !760
  %32 = icmp eq i32 %31, 3, !dbg !761
  %33 = zext i1 %32 to i64, !dbg !762
  %34 = select i1 %32, ptr @.str.18, ptr @.str.19, !dbg !762
  %35 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %30, i64 noundef 925, ptr noundef %34) #8, !dbg !763
  %36 = sext i32 %35 to i64, !dbg !763
  %37 = load i64, ptr %7, align 8, !dbg !764
  %38 = add i64 %37, %36, !dbg !764
  store i64 %38, ptr %7, align 8, !dbg !764
  %39 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !765
  %40 = load i64, ptr %7, align 8, !dbg !766
  %41 = getelementptr inbounds i8, ptr %39, i64 %40, !dbg !767
  %42 = load i64, ptr %7, align 8, !dbg !768
  %43 = add i64 %42, 1, !dbg !769
  %44 = sub i64 1025, %43, !dbg !770
  %45 = load ptr, ptr %4, align 8, !dbg !771
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !772
  %47 = call i32 @vsnprintf(ptr noundef %41, i64 noundef %44, ptr noundef %45, ptr noundef %46) #8, !dbg !773
  %48 = sext i32 %47 to i64, !dbg !773
  %49 = load i64, ptr %7, align 8, !dbg !774
  %50 = add i64 %49, %48, !dbg !774
  store i64 %50, ptr %7, align 8, !dbg !774
  %51 = load i32, ptr @no_stdout_log, align 4, !dbg !775
  %52 = icmp ne i32 %51, 0, !dbg !775
  br i1 %52, label %58, label %53, !dbg !777

53:                                               ; preds = %27
  %54 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !778
  %55 = load i64, ptr %7, align 8, !dbg !779
  %56 = load ptr, ptr @stdout, align 8, !dbg !780
  %57 = call i64 @fwrite(ptr noundef %54, i64 noundef %55, i64 noundef 1, ptr noundef %56), !dbg !781
  br label %58, !dbg !781

58:                                               ; preds = %53, %27
  %59 = load i32, ptr @to_syslog, align 4, !dbg !782
  %60 = icmp ne i32 %59, 0, !dbg !782
  br i1 %60, label %61, label %65, !dbg !784

61:                                               ; preds = %58
  %62 = load i32, ptr %3, align 4, !dbg !785
  %63 = call i32 @get_syslog_level(i32 noundef %62), !dbg !787
  %64 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !788
  call void (i32, ptr, ...) @syslog(i32 noundef %63, ptr noundef @.str.20, ptr noundef %64), !dbg !789
  br label %78, !dbg !790

65:                                               ; preds = %58
  call void @log_lock(), !dbg !791
  call void @set_rtpfile(), !dbg !793
  %66 = load ptr, ptr @_rtpfile, align 8, !dbg !794
  %67 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !796
  %68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.20, ptr noundef %67), !dbg !797
  %69 = icmp slt i32 %68, 0, !dbg !798
  br i1 %69, label %70, label %71, !dbg !799

70:                                               ; preds = %65
  call void @reset_rtpprintf(), !dbg !800
  br label %77, !dbg !802

71:                                               ; preds = %65
  %72 = load ptr, ptr @_rtpfile, align 8, !dbg !803
  %73 = call i32 @fflush(ptr noundef %72), !dbg !805
  %74 = icmp slt i32 %73, 0, !dbg !806
  br i1 %74, label %75, label %76, !dbg !807

75:                                               ; preds = %71
  call void @reset_rtpprintf(), !dbg !808
  br label %76, !dbg !810

76:                                               ; preds = %75, %71
  br label %77

77:                                               ; preds = %76, %70
  call void @log_unlock(), !dbg !811
  br label %78

78:                                               ; preds = %77, %61
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !812
  call void @llvm.va_end(ptr %79), !dbg !812
  ret void, !dbg !813
}

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @ntohs(i16 noundef zeroext) #5

declare i32 @addr_any_no_port(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_logfile(ptr noundef %0) #0 !dbg !814 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !817, metadata !DIExpression()), !dbg !818
  %4 = load ptr, ptr %2, align 8, !dbg !819
  %5 = icmp ne ptr %4, null, !dbg !819
  br i1 %5, label %6, label %24, !dbg !821

6:                                                ; preds = %1
  call void @log_lock(), !dbg !822
  %7 = load ptr, ptr %2, align 8, !dbg !824
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @log_fn_base) #11, !dbg !826
  %9 = icmp ne i32 %8, 0, !dbg !826
  br i1 %9, label %10, label %23, !dbg !827

10:                                               ; preds = %6
  call void @reset_rtpprintf(), !dbg !828
  br label %11, !dbg !830

11:                                               ; preds = %10
  %12 = load ptr, ptr %2, align 8, !dbg !831
  %13 = icmp ne ptr @log_fn_base, %12, !dbg !831
  br i1 %13, label %14, label %21, !dbg !834

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %3, metadata !835, metadata !DIExpression()), !dbg !839
  store i64 1025, ptr %3, align 8, !dbg !839
  %15 = load ptr, ptr %2, align 8, !dbg !839
  %16 = load i64, ptr %3, align 8, !dbg !839
  %17 = call ptr @strncpy(ptr noundef @log_fn_base, ptr noundef %15, i64 noundef %16) #8, !dbg !839
  %18 = load i64, ptr %3, align 8, !dbg !839
  %19 = sub i64 %18, 1, !dbg !839
  %20 = getelementptr inbounds i8, ptr @log_fn_base, i64 %19, !dbg !839
  store i8 0, ptr %20, align 1, !dbg !839
  br label %21, !dbg !840

21:                                               ; preds = %14, %11
  br label %22, !dbg !834

22:                                               ; preds = %21
  br label %23, !dbg !841

23:                                               ; preds = %22, %6
  call void @log_unlock(), !dbg !842
  br label %24, !dbg !843

24:                                               ; preds = %23, %1
  ret void, !dbg !844
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_lock() #0 !dbg !845 {
  %1 = load i32, ptr @log_mutex_inited, align 4, !dbg !848
  %2 = icmp ne i32 %1, 0, !dbg !848
  br i1 %2, label %5, label %3, !dbg !850

3:                                                ; preds = %0
  store i32 1, ptr @log_mutex_inited, align 4, !dbg !851
  %4 = call i32 @turn_mutex_init_recursive(ptr noundef @log_mutex), !dbg !853
  br label %5, !dbg !854

5:                                                ; preds = %3, %0
  %6 = call i32 @turn_mutex_lock(ptr noundef @log_mutex), !dbg !855
  ret void, !dbg !856
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_rtpprintf() #0 !dbg !857 {
  call void @log_lock(), !dbg !858
  %1 = load ptr, ptr @_rtpfile, align 8, !dbg !859
  %2 = icmp ne ptr %1, null, !dbg !859
  br i1 %2, label %3, label %11, !dbg !861

3:                                                ; preds = %0
  %4 = load ptr, ptr @_rtpfile, align 8, !dbg !862
  %5 = load ptr, ptr @stdout, align 8, !dbg !865
  %6 = icmp ne ptr %4, %5, !dbg !866
  br i1 %6, label %7, label %10, !dbg !867

7:                                                ; preds = %3
  %8 = load ptr, ptr @_rtpfile, align 8, !dbg !868
  %9 = call i32 @fclose(ptr noundef %8), !dbg !869
  br label %10, !dbg !869

10:                                               ; preds = %7, %3
  store ptr null, ptr @_rtpfile, align 8, !dbg !870
  br label %11, !dbg !871

11:                                               ; preds = %10, %0
  call void @log_unlock(), !dbg !872
  ret void, !dbg !873
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_unlock() #0 !dbg !874 {
  %1 = call i32 @turn_mutex_unlock(ptr noundef @log_mutex), !dbg !875
  ret void, !dbg !876
}

declare i32 @fclose(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_log_to_syslog(i32 noundef %0) #0 !dbg !877 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !878, metadata !DIExpression()), !dbg !879
  %3 = load i32, ptr %2, align 4, !dbg !880
  store i32 %3, ptr @to_syslog, align 4, !dbg !881
  ret void, !dbg !882
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_simple_log(i32 noundef %0) #0 !dbg !883 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !884, metadata !DIExpression()), !dbg !885
  %3 = load i32, ptr %2, align 4, !dbg !886
  store i32 %3, ptr @simple_log, align 4, !dbg !887
  ret void, !dbg !888
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rollover_logfile() #0 !dbg !889 {
  %1 = alloca ptr, align 8
  %2 = alloca [1025 x i8], align 16
  %3 = alloca i64, align 8
  %4 = load i32, ptr @to_syslog, align 4, !dbg !890
  %5 = icmp ne i32 %4, 0, !dbg !890
  br i1 %5, label %9, label %6, !dbg !892

6:                                                ; preds = %0
  %7 = load i8, ptr @log_fn, align 16, !dbg !893
  %8 = icmp ne i8 %7, 0, !dbg !894
  br i1 %8, label %10, label %9, !dbg !895

9:                                                ; preds = %6, %0
  br label %61, !dbg !896

10:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata ptr %1, metadata !897, metadata !DIExpression()), !dbg !899
  %11 = call noalias ptr @fopen(ptr noundef @log_fn, ptr noundef @.str.12), !dbg !900
  store ptr %11, ptr %1, align 8, !dbg !899
  %12 = load ptr, ptr %1, align 8, !dbg !901
  %13 = icmp ne ptr %12, null, !dbg !901
  br i1 %13, label %17, label %14, !dbg !903

14:                                               ; preds = %10
  %15 = load ptr, ptr @stderr, align 8, !dbg !904
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.13), !dbg !906
  call void @reset_rtpprintf(), !dbg !907
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.14, ptr noundef @log_fn), !dbg !908
  br label %61, !dbg !909

17:                                               ; preds = %10
  %18 = load ptr, ptr %1, align 8, !dbg !910
  %19 = call i32 @fclose(ptr noundef %18), !dbg !912
  br label %20

20:                                               ; preds = %17
  %21 = load i32, ptr @simple_log, align 4, !dbg !913
  %22 = icmp ne i32 %21, 0, !dbg !913
  br i1 %22, label %23, label %24, !dbg !915

23:                                               ; preds = %20
  br label %61, !dbg !916

24:                                               ; preds = %20
  call void @log_lock(), !dbg !917
  %25 = load ptr, ptr @_rtpfile, align 8, !dbg !918
  %26 = icmp ne ptr %25, null, !dbg !918
  br i1 %26, label %27, label %60, !dbg !920

27:                                               ; preds = %24
  %28 = load i8, ptr @log_fn, align 16, !dbg !921
  %29 = sext i8 %28 to i32, !dbg !921
  %30 = icmp ne i32 %29, 0, !dbg !921
  br i1 %30, label %31, label %60, !dbg !922

31:                                               ; preds = %27
  %32 = load ptr, ptr @_rtpfile, align 8, !dbg !923
  %33 = load ptr, ptr @stdout, align 8, !dbg !924
  %34 = icmp ne ptr %32, %33, !dbg !925
  br i1 %34, label %35, label %60, !dbg !926

35:                                               ; preds = %31
  call void @llvm.dbg.declare(metadata ptr %2, metadata !927, metadata !DIExpression()), !dbg !929
  %36 = getelementptr inbounds [1025 x i8], ptr %2, i64 0, i64 0, !dbg !930
  call void @set_log_file_name_func(ptr noundef @log_fn_base, ptr noundef %36, i64 noundef 1025), !dbg !930
  %37 = getelementptr inbounds [1025 x i8], ptr %2, i64 0, i64 0, !dbg !931
  %38 = call i32 @strcmp(ptr noundef @log_fn, ptr noundef %37) #11, !dbg !933
  %39 = icmp ne i32 %38, 0, !dbg !933
  br i1 %39, label %40, label %59, !dbg !934

40:                                               ; preds = %35
  %41 = load ptr, ptr @_rtpfile, align 8, !dbg !935
  %42 = call i32 @fclose(ptr noundef %41), !dbg !937
  store i8 0, ptr @log_fn, align 16, !dbg !938
  %43 = getelementptr inbounds [1025 x i8], ptr %2, i64 0, i64 0, !dbg !939
  %44 = call noalias ptr @fopen(ptr noundef %43, ptr noundef @.str.15), !dbg !940
  store ptr %44, ptr @_rtpfile, align 8, !dbg !941
  %45 = load ptr, ptr @_rtpfile, align 8, !dbg !942
  %46 = icmp ne ptr %45, null, !dbg !942
  br i1 %46, label %47, label %56, !dbg !944

47:                                               ; preds = %40
  br label %48, !dbg !945

48:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata ptr %3, metadata !947, metadata !DIExpression()), !dbg !953
  store i64 1025, ptr %3, align 8, !dbg !953
  %49 = getelementptr inbounds [1025 x i8], ptr %2, i64 0, i64 0, !dbg !953
  %50 = load i64, ptr %3, align 8, !dbg !953
  %51 = call ptr @strncpy(ptr noundef @log_fn, ptr noundef %49, i64 noundef %50) #8, !dbg !953
  %52 = load i64, ptr %3, align 8, !dbg !953
  %53 = sub i64 %52, 1, !dbg !953
  %54 = getelementptr inbounds i8, ptr @log_fn, i64 %53, !dbg !953
  store i8 0, ptr %54, align 1, !dbg !953
  br label %55, !dbg !954

55:                                               ; preds = %48
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.16, ptr noundef @log_fn), !dbg !955
  br label %58, !dbg !956

56:                                               ; preds = %40
  %57 = load ptr, ptr @stdout, align 8, !dbg !957
  store ptr %57, ptr @_rtpfile, align 8, !dbg !959
  br label %58

58:                                               ; preds = %56, %55
  br label %59, !dbg !960

59:                                               ; preds = %58, %35
  br label %60, !dbg !961

60:                                               ; preds = %59, %31, %27, %24
  call void @log_unlock(), !dbg !962
  br label %61, !dbg !963

61:                                               ; preds = %60, %23, %14, %9
  ret void, !dbg !963
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_log_file_name_func(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !964 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca [125 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !967, metadata !DIExpression()), !dbg !968
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !969, metadata !DIExpression()), !dbg !970
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !971, metadata !DIExpression()), !dbg !972
  %11 = load i32, ptr @simple_log, align 4, !dbg !973
  %12 = icmp ne i32 %11, 0, !dbg !973
  br i1 %12, label %13, label %18, !dbg !975

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !dbg !976
  %15 = load ptr, ptr %4, align 8, !dbg !978
  %16 = load i64, ptr %6, align 8, !dbg !979
  %17 = call ptr @strncpy(ptr noundef %14, ptr noundef %15, i64 noundef %16) #8, !dbg !980
  br label %149, !dbg !981

18:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %7, metadata !982, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.declare(metadata ptr %8, metadata !987, metadata !DIExpression()), !dbg !988
  %19 = call noalias ptr @strdup(ptr noundef @.str.48) #8, !dbg !989
  store ptr %19, ptr %8, align 8, !dbg !988
  %20 = getelementptr inbounds [125 x i8], ptr %7, i64 0, i64 0, !dbg !990
  call void @get_date(ptr noundef %20, i64 noundef 125), !dbg !991
  call void @llvm.dbg.declare(metadata ptr %9, metadata !992, metadata !DIExpression()), !dbg !993
  %21 = load ptr, ptr %4, align 8, !dbg !994
  %22 = call noalias ptr @strdup(ptr noundef %21) #8, !dbg !995
  store ptr %22, ptr %9, align 8, !dbg !993
  call void @llvm.dbg.declare(metadata ptr %10, metadata !996, metadata !DIExpression()), !dbg !997
  %23 = load ptr, ptr %9, align 8, !dbg !998
  %24 = call i64 @strlen(ptr noundef %23) #11, !dbg !999
  %25 = trunc i64 %24 to i32, !dbg !1000
  store i32 %25, ptr %10, align 4, !dbg !997
  %26 = load i32, ptr %10, align 4, !dbg !1001
  %27 = add nsw i32 %26, -1, !dbg !1001
  store i32 %27, ptr %10, align 4, !dbg !1001
  br label %28, !dbg !1002

28:                                               ; preds = %52, %18
  %29 = load i32, ptr %10, align 4, !dbg !1003
  %30 = icmp sge i32 %29, 0, !dbg !1004
  br i1 %30, label %31, label %55, !dbg !1002

31:                                               ; preds = %28
  %32 = load ptr, ptr %9, align 8, !dbg !1005
  %33 = load i32, ptr %10, align 4, !dbg !1008
  %34 = sext i32 %33 to i64, !dbg !1005
  %35 = getelementptr inbounds i8, ptr %32, i64 %34, !dbg !1005
  %36 = load i8, ptr %35, align 1, !dbg !1005
  %37 = sext i8 %36 to i32, !dbg !1005
  %38 = icmp eq i32 %37, 32, !dbg !1009
  br i1 %38, label %47, label %39, !dbg !1010

39:                                               ; preds = %31
  %40 = load ptr, ptr %9, align 8, !dbg !1011
  %41 = load i32, ptr %10, align 4, !dbg !1012
  %42 = sext i32 %41 to i64, !dbg !1011
  %43 = getelementptr inbounds i8, ptr %40, i64 %42, !dbg !1011
  %44 = load i8, ptr %43, align 1, !dbg !1011
  %45 = sext i8 %44 to i32, !dbg !1011
  %46 = icmp eq i32 %45, 9, !dbg !1013
  br i1 %46, label %47, label %52, !dbg !1014

47:                                               ; preds = %39, %31
  %48 = load ptr, ptr %9, align 8, !dbg !1015
  %49 = load i32, ptr %10, align 4, !dbg !1017
  %50 = sext i32 %49 to i64, !dbg !1015
  %51 = getelementptr inbounds i8, ptr %48, i64 %50, !dbg !1015
  store i8 95, ptr %51, align 1, !dbg !1018
  br label %52, !dbg !1019

52:                                               ; preds = %47, %39
  %53 = load i32, ptr %10, align 4, !dbg !1020
  %54 = add nsw i32 %53, -1, !dbg !1020
  store i32 %54, ptr %10, align 4, !dbg !1020
  br label %28, !dbg !1002, !llvm.loop !1021

55:                                               ; preds = %28
  %56 = load ptr, ptr %9, align 8, !dbg !1024
  %57 = call i64 @strlen(ptr noundef %56) #11, !dbg !1025
  %58 = trunc i64 %57 to i32, !dbg !1026
  store i32 %58, ptr %10, align 4, !dbg !1027
  br label %59, !dbg !1028

59:                                               ; preds = %98, %55
  %60 = load i32, ptr %10, align 4, !dbg !1029
  %61 = icmp sge i32 %60, 0, !dbg !1030
  br i1 %61, label %62, label %101, !dbg !1028

62:                                               ; preds = %59
  %63 = load ptr, ptr %9, align 8, !dbg !1031
  %64 = load i32, ptr %10, align 4, !dbg !1034
  %65 = sext i32 %64 to i64, !dbg !1031
  %66 = getelementptr inbounds i8, ptr %63, i64 %65, !dbg !1031
  %67 = load i8, ptr %66, align 1, !dbg !1031
  %68 = sext i8 %67 to i32, !dbg !1031
  %69 = icmp eq i32 %68, 47, !dbg !1035
  br i1 %69, label %70, label %71, !dbg !1036

70:                                               ; preds = %62
  br label %101, !dbg !1037

71:                                               ; preds = %62
  %72 = load ptr, ptr %9, align 8, !dbg !1038
  %73 = load i32, ptr %10, align 4, !dbg !1040
  %74 = sext i32 %73 to i64, !dbg !1038
  %75 = getelementptr inbounds i8, ptr %72, i64 %74, !dbg !1038
  %76 = load i8, ptr %75, align 1, !dbg !1038
  %77 = sext i8 %76 to i32, !dbg !1038
  %78 = icmp eq i32 %77, 46, !dbg !1041
  br i1 %78, label %79, label %97, !dbg !1042

79:                                               ; preds = %71
  %80 = load ptr, ptr %8, align 8, !dbg !1043
  call void @free(ptr noundef %80) #8, !dbg !1045
  %81 = load ptr, ptr %9, align 8, !dbg !1046
  %82 = load i32, ptr %10, align 4, !dbg !1047
  %83 = sext i32 %82 to i64, !dbg !1048
  %84 = getelementptr inbounds i8, ptr %81, i64 %83, !dbg !1048
  %85 = call noalias ptr @strdup(ptr noundef %84) #8, !dbg !1049
  store ptr %85, ptr %8, align 8, !dbg !1050
  %86 = load ptr, ptr %9, align 8, !dbg !1051
  %87 = load i32, ptr %10, align 4, !dbg !1052
  %88 = sext i32 %87 to i64, !dbg !1051
  %89 = getelementptr inbounds i8, ptr %86, i64 %88, !dbg !1051
  store i8 0, ptr %89, align 1, !dbg !1053
  %90 = load ptr, ptr %8, align 8, !dbg !1054
  %91 = call i64 @strlen(ptr noundef %90) #11, !dbg !1056
  %92 = icmp ult i64 %91, 2, !dbg !1057
  br i1 %92, label %93, label %96, !dbg !1058

93:                                               ; preds = %79
  %94 = load ptr, ptr %8, align 8, !dbg !1059
  call void @free(ptr noundef %94) #8, !dbg !1061
  %95 = call noalias ptr @strdup(ptr noundef @.str.48) #8, !dbg !1062
  store ptr %95, ptr %8, align 8, !dbg !1063
  br label %96, !dbg !1064

96:                                               ; preds = %93, %79
  br label %101, !dbg !1065

97:                                               ; preds = %71
  br label %98

98:                                               ; preds = %97
  %99 = load i32, ptr %10, align 4, !dbg !1066
  %100 = add nsw i32 %99, -1, !dbg !1066
  store i32 %100, ptr %10, align 4, !dbg !1066
  br label %59, !dbg !1028, !llvm.loop !1067

101:                                              ; preds = %96, %70, %59
  %102 = load ptr, ptr %9, align 8, !dbg !1069
  %103 = call i64 @strlen(ptr noundef %102) #11, !dbg !1070
  %104 = trunc i64 %103 to i32, !dbg !1071
  store i32 %104, ptr %10, align 4, !dbg !1072
  %105 = load i32, ptr %10, align 4, !dbg !1073
  %106 = icmp sgt i32 %105, 0, !dbg !1075
  br i1 %106, label %107, label %140, !dbg !1076

107:                                              ; preds = %101
  %108 = load ptr, ptr %9, align 8, !dbg !1077
  %109 = load i32, ptr %10, align 4, !dbg !1078
  %110 = sub nsw i32 %109, 1, !dbg !1079
  %111 = sext i32 %110 to i64, !dbg !1077
  %112 = getelementptr inbounds i8, ptr %108, i64 %111, !dbg !1077
  %113 = load i8, ptr %112, align 1, !dbg !1077
  %114 = sext i8 %113 to i32, !dbg !1077
  %115 = icmp ne i32 %114, 47, !dbg !1080
  br i1 %115, label %116, label %140, !dbg !1081

116:                                              ; preds = %107
  %117 = load ptr, ptr %9, align 8, !dbg !1082
  %118 = load i32, ptr %10, align 4, !dbg !1083
  %119 = sub nsw i32 %118, 1, !dbg !1084
  %120 = sext i32 %119 to i64, !dbg !1082
  %121 = getelementptr inbounds i8, ptr %117, i64 %120, !dbg !1082
  %122 = load i8, ptr %121, align 1, !dbg !1082
  %123 = sext i8 %122 to i32, !dbg !1082
  %124 = icmp ne i32 %123, 45, !dbg !1085
  br i1 %124, label %125, label %140, !dbg !1086

125:                                              ; preds = %116
  %126 = load ptr, ptr %9, align 8, !dbg !1087
  %127 = load i32, ptr %10, align 4, !dbg !1088
  %128 = sub nsw i32 %127, 1, !dbg !1089
  %129 = sext i32 %128 to i64, !dbg !1087
  %130 = getelementptr inbounds i8, ptr %126, i64 %129, !dbg !1087
  %131 = load i8, ptr %130, align 1, !dbg !1087
  %132 = sext i8 %131 to i32, !dbg !1087
  %133 = icmp ne i32 %132, 95, !dbg !1090
  br i1 %133, label %134, label %140, !dbg !1091

134:                                              ; preds = %125
  %135 = load ptr, ptr %5, align 8, !dbg !1092
  %136 = load ptr, ptr %9, align 8, !dbg !1094
  %137 = getelementptr inbounds [125 x i8], ptr %7, i64 0, i64 0, !dbg !1095
  %138 = load ptr, ptr %8, align 8, !dbg !1096
  %139 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %135, i64 noundef 1025, ptr noundef @.str.49, ptr noundef %136, ptr noundef %137, ptr noundef %138) #8, !dbg !1097
  br label %146, !dbg !1098

140:                                              ; preds = %125, %116, %107, %101
  %141 = load ptr, ptr %5, align 8, !dbg !1099
  %142 = load ptr, ptr %9, align 8, !dbg !1101
  %143 = getelementptr inbounds [125 x i8], ptr %7, i64 0, i64 0, !dbg !1102
  %144 = load ptr, ptr %8, align 8, !dbg !1103
  %145 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %141, i64 noundef 1025, ptr noundef @.str.50, ptr noundef %142, ptr noundef %143, ptr noundef %144) #8, !dbg !1104
  br label %146

146:                                              ; preds = %140, %134
  %147 = load ptr, ptr %9, align 8, !dbg !1105
  call void @free(ptr noundef %147) #8, !dbg !1106
  %148 = load ptr, ptr %8, align 8, !dbg !1107
  call void @free(ptr noundef %148) #8, !dbg !1108
  br label %149, !dbg !1109

149:                                              ; preds = %146, %13
  ret void, !dbg !1109
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #2

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_time() #0 !dbg !1110 {
  %1 = alloca i32, align 4
  %2 = load volatile i32, ptr @log_start_time, align 4, !dbg !1113
  %3 = icmp ne i32 %2, 0, !dbg !1113
  br i1 %3, label %7, label %4, !dbg !1115

4:                                                ; preds = %0
  %5 = call i64 @time(ptr noundef null) #8, !dbg !1116
  %6 = trunc i64 %5 to i32, !dbg !1116
  store volatile i32 %6, ptr @log_start_time, align 4, !dbg !1117
  br label %7, !dbg !1118

7:                                                ; preds = %4, %0
  %8 = load volatile i32, ptr @_log_time_value_set, align 4, !dbg !1119
  %9 = icmp ne i32 %8, 0, !dbg !1119
  br i1 %9, label %10, label %14, !dbg !1121

10:                                               ; preds = %7
  %11 = load volatile i32, ptr @_log_time_value, align 4, !dbg !1122
  %12 = load volatile i32, ptr @log_start_time, align 4, !dbg !1123
  %13 = sub i32 %11, %12, !dbg !1124
  store i32 %13, ptr %1, align 4, !dbg !1125
  br label %19, !dbg !1125

14:                                               ; preds = %7
  %15 = call i64 @time(ptr noundef null) #8, !dbg !1126
  %16 = trunc i64 %15 to i32, !dbg !1126
  %17 = load volatile i32, ptr @log_start_time, align 4, !dbg !1127
  %18 = sub i32 %16, %17, !dbg !1128
  store i32 %18, ptr %1, align 4, !dbg !1129
  br label %19, !dbg !1129

19:                                               ; preds = %14, %10
  %20 = load i32, ptr %1, align 4, !dbg !1130
  ret i32 %20, !dbg !1130
}

; Function Attrs: nounwind
declare i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

declare void @syslog(i32 noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_syslog_level(i32 noundef %0) #0 !dbg !1131 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1134, metadata !DIExpression()), !dbg !1135
  %4 = load i32, ptr %3, align 4, !dbg !1136
  switch i32 %4, label %8 [
    i32 1, label %5
    i32 2, label %6
    i32 3, label %7
  ], !dbg !1137

5:                                                ; preds = %1
  store i32 5, ptr %2, align 4, !dbg !1138
  br label %10, !dbg !1138

6:                                                ; preds = %1
  store i32 4, ptr %2, align 4, !dbg !1140
  br label %10, !dbg !1140

7:                                                ; preds = %1
  store i32 3, ptr %2, align 4, !dbg !1141
  br label %10, !dbg !1141

8:                                                ; preds = %1
  br label %9, !dbg !1142

9:                                                ; preds = %8
  store i32 6, ptr %2, align 4, !dbg !1143
  br label %10, !dbg !1143

10:                                               ; preds = %9, %7, %6, %5
  %11 = load i32, ptr %2, align 4, !dbg !1144
  ret i32 %11, !dbg !1144
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rtpfile() #0 !dbg !1145 {
  %1 = alloca [1025 x i8], align 16
  %2 = alloca [1025 x i8], align 16
  %3 = alloca [1025 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load volatile i32, ptr @to_reset_log_file, align 4, !dbg !1146
  %7 = icmp ne i32 %6, 0, !dbg !1146
  br i1 %7, label %8, label %10, !dbg !1148

8:                                                ; preds = %0
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.52, ptr noundef @__FUNCTION__.set_rtpfile), !dbg !1149
  call void @reset_rtpprintf(), !dbg !1151
  store volatile i32 0, ptr @to_reset_log_file, align 4, !dbg !1152
  br label %10, !dbg !1153

10:                                               ; preds = %8, %0
  %11 = load i32, ptr @to_syslog, align 4, !dbg !1154
  %12 = icmp ne i32 %11, 0, !dbg !1154
  br i1 %12, label %13, label %14, !dbg !1156

13:                                               ; preds = %10
  br label %159, !dbg !1157

14:                                               ; preds = %10
  %15 = load ptr, ptr @_rtpfile, align 8, !dbg !1159
  %16 = icmp ne ptr %15, null, !dbg !1159
  br i1 %16, label %50, label %17, !dbg !1161

17:                                               ; preds = %14
  %18 = call ptr @signal(i32 noundef 1, ptr noundef @sighup_callback_handler) #8, !dbg !1162
  %19 = load i8, ptr @log_fn_base, align 16, !dbg !1164
  %20 = icmp ne i8 %19, 0, !dbg !1164
  br i1 %20, label %21, label %49, !dbg !1166

21:                                               ; preds = %17
  %22 = call i32 @strcmp(ptr noundef @log_fn_base, ptr noundef @.str.53) #11, !dbg !1167
  %23 = icmp ne i32 %22, 0, !dbg !1167
  br i1 %23, label %26, label %24, !dbg !1170

24:                                               ; preds = %21
  %25 = load ptr, ptr @stdout, align 8, !dbg !1171
  store ptr %25, ptr @_rtpfile, align 8, !dbg !1173
  store i32 1, ptr @to_syslog, align 4, !dbg !1174
  br label %41, !dbg !1175

26:                                               ; preds = %21
  %27 = call i32 @strcmp(ptr noundef @log_fn_base, ptr noundef @.str.54) #11, !dbg !1176
  %28 = icmp ne i32 %27, 0, !dbg !1176
  br i1 %28, label %29, label %32, !dbg !1178

29:                                               ; preds = %26
  %30 = call i32 @strcmp(ptr noundef @log_fn_base, ptr noundef @.str.55) #11, !dbg !1179
  %31 = icmp ne i32 %30, 0, !dbg !1179
  br i1 %31, label %34, label %32, !dbg !1180

32:                                               ; preds = %29, %26
  %33 = load ptr, ptr @stdout, align 8, !dbg !1181
  store ptr %33, ptr @_rtpfile, align 8, !dbg !1183
  store i32 1, ptr @no_stdout_log, align 4, !dbg !1184
  br label %40, !dbg !1185

34:                                               ; preds = %29
  call void @set_log_file_name_func(ptr noundef @log_fn_base, ptr noundef @log_fn, i64 noundef 1025), !dbg !1186
  %35 = call noalias ptr @fopen(ptr noundef @log_fn, ptr noundef @.str.56), !dbg !1188
  store ptr %35, ptr @_rtpfile, align 8, !dbg !1189
  %36 = load ptr, ptr @_rtpfile, align 8, !dbg !1190
  %37 = icmp ne ptr %36, null, !dbg !1190
  br i1 %37, label %38, label %39, !dbg !1192

38:                                               ; preds = %34
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.16, ptr noundef @log_fn), !dbg !1193
  br label %39, !dbg !1193

39:                                               ; preds = %38, %34
  br label %40

40:                                               ; preds = %39, %32
  br label %41

41:                                               ; preds = %40, %24
  %42 = load ptr, ptr @_rtpfile, align 8, !dbg !1194
  %43 = icmp ne ptr %42, null, !dbg !1194
  br i1 %43, label %47, label %44, !dbg !1196

44:                                               ; preds = %41
  %45 = load ptr, ptr @stderr, align 8, !dbg !1197
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.57, ptr noundef @log_fn), !dbg !1199
  br label %48, !dbg !1200

47:                                               ; preds = %41
  br label %159, !dbg !1201

48:                                               ; preds = %44
  br label %49, !dbg !1203

49:                                               ; preds = %48, %17
  br label %50, !dbg !1204

50:                                               ; preds = %49, %14
  br label %51

51:                                               ; preds = %50
  %52 = load ptr, ptr @_rtpfile, align 8, !dbg !1205
  %53 = icmp ne ptr %52, null, !dbg !1205
  br i1 %53, label %159, label %54, !dbg !1207

54:                                               ; preds = %51
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1208, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1211, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1213, metadata !DIExpression()), !dbg !1214
  %55 = load i32, ptr @simple_log, align 4, !dbg !1215
  %56 = icmp ne i32 %55, 0, !dbg !1215
  br i1 %56, label %57, label %60, !dbg !1217

57:                                               ; preds = %54
  %58 = getelementptr inbounds [1025 x i8], ptr %2, i64 0, i64 0, !dbg !1218
  %59 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %58, i64 noundef 1025, ptr noundef @.str.58) #8, !dbg !1219
  br label %64, !dbg !1219

60:                                               ; preds = %54
  %61 = getelementptr inbounds [1025 x i8], ptr %2, i64 0, i64 0, !dbg !1220
  %62 = call i32 @getpid() #8, !dbg !1221
  %63 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %61, i64 noundef 1025, ptr noundef @.str.59, i32 noundef %62) #8, !dbg !1222
  br label %64

64:                                               ; preds = %60, %57
  %65 = getelementptr inbounds [1025 x i8], ptr %1, i64 0, i64 0, !dbg !1223
  %66 = getelementptr inbounds [1025 x i8], ptr %2, i64 0, i64 0, !dbg !1225
  %67 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %65, i64 noundef 1025, ptr noundef @.str.60, ptr noundef %66) #8, !dbg !1226
  %68 = icmp slt i32 %67, 0, !dbg !1227
  br i1 %68, label %69, label %70, !dbg !1228

69:                                               ; preds = %64
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.61), !dbg !1229
  br label %70, !dbg !1229

70:                                               ; preds = %69, %64
  %71 = getelementptr inbounds [1025 x i8], ptr %1, i64 0, i64 0, !dbg !1230
  %72 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1230
  call void @set_log_file_name_func(ptr noundef %71, ptr noundef %72, i64 noundef 1025), !dbg !1230
  %73 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1231
  %74 = call noalias ptr @fopen(ptr noundef %73, ptr noundef @.str.56), !dbg !1232
  store ptr %74, ptr @_rtpfile, align 8, !dbg !1233
  %75 = load ptr, ptr @_rtpfile, align 8, !dbg !1234
  %76 = icmp ne ptr %75, null, !dbg !1234
  br i1 %76, label %77, label %79, !dbg !1236

77:                                               ; preds = %70
  %78 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1237
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.16, ptr noundef %78), !dbg !1238
  br label %142, !dbg !1238

79:                                               ; preds = %70
  %80 = getelementptr inbounds [1025 x i8], ptr %1, i64 0, i64 0, !dbg !1239
  %81 = getelementptr inbounds [1025 x i8], ptr %2, i64 0, i64 0, !dbg !1242
  %82 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %80, i64 noundef 1025, ptr noundef @.str.62, ptr noundef %81) #8, !dbg !1243
  %83 = icmp slt i32 %82, 0, !dbg !1244
  br i1 %83, label %84, label %85, !dbg !1245

84:                                               ; preds = %79
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.61), !dbg !1246
  br label %85, !dbg !1246

85:                                               ; preds = %84, %79
  %86 = getelementptr inbounds [1025 x i8], ptr %1, i64 0, i64 0, !dbg !1247
  %87 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1247
  call void @set_log_file_name_func(ptr noundef %86, ptr noundef %87, i64 noundef 1025), !dbg !1247
  %88 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1248
  %89 = call noalias ptr @fopen(ptr noundef %88, ptr noundef @.str.56), !dbg !1249
  store ptr %89, ptr @_rtpfile, align 8, !dbg !1250
  %90 = load ptr, ptr @_rtpfile, align 8, !dbg !1251
  %91 = icmp ne ptr %90, null, !dbg !1251
  br i1 %91, label %92, label %94, !dbg !1253

92:                                               ; preds = %85
  %93 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1254
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.16, ptr noundef %93), !dbg !1255
  br label %141, !dbg !1255

94:                                               ; preds = %85
  %95 = getelementptr inbounds [1025 x i8], ptr %1, i64 0, i64 0, !dbg !1256
  %96 = getelementptr inbounds [1025 x i8], ptr %2, i64 0, i64 0, !dbg !1259
  %97 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %95, i64 noundef 1025, ptr noundef @.str.63, ptr noundef %96) #8, !dbg !1260
  %98 = icmp slt i32 %97, 0, !dbg !1261
  br i1 %98, label %99, label %100, !dbg !1262

99:                                               ; preds = %94
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.61), !dbg !1263
  br label %100, !dbg !1263

100:                                              ; preds = %99, %94
  %101 = getelementptr inbounds [1025 x i8], ptr %1, i64 0, i64 0, !dbg !1264
  %102 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1264
  call void @set_log_file_name_func(ptr noundef %101, ptr noundef %102, i64 noundef 1025), !dbg !1264
  %103 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1265
  %104 = call noalias ptr @fopen(ptr noundef %103, ptr noundef @.str.56), !dbg !1266
  store ptr %104, ptr @_rtpfile, align 8, !dbg !1267
  %105 = load ptr, ptr @_rtpfile, align 8, !dbg !1268
  %106 = icmp ne ptr %105, null, !dbg !1268
  br i1 %106, label %107, label %109, !dbg !1270

107:                                              ; preds = %100
  %108 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1271
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.16, ptr noundef %108), !dbg !1272
  br label %140, !dbg !1272

109:                                              ; preds = %100
  %110 = getelementptr inbounds [1025 x i8], ptr %1, i64 0, i64 0, !dbg !1273
  %111 = getelementptr inbounds [1025 x i8], ptr %2, i64 0, i64 0, !dbg !1276
  %112 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %110, i64 noundef 1025, ptr noundef @.str.64, ptr noundef %111) #8, !dbg !1277
  %113 = icmp slt i32 %112, 0, !dbg !1278
  br i1 %113, label %114, label %115, !dbg !1279

114:                                              ; preds = %109
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.61), !dbg !1280
  br label %115, !dbg !1280

115:                                              ; preds = %114, %109
  %116 = getelementptr inbounds [1025 x i8], ptr %1, i64 0, i64 0, !dbg !1281
  %117 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1281
  call void @set_log_file_name_func(ptr noundef %116, ptr noundef %117, i64 noundef 1025), !dbg !1281
  %118 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1282
  %119 = call noalias ptr @fopen(ptr noundef %118, ptr noundef @.str.56), !dbg !1283
  store ptr %119, ptr @_rtpfile, align 8, !dbg !1284
  %120 = load ptr, ptr @_rtpfile, align 8, !dbg !1285
  %121 = icmp ne ptr %120, null, !dbg !1285
  br i1 %121, label %122, label %124, !dbg !1287

122:                                              ; preds = %115
  %123 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1288
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.16, ptr noundef %123), !dbg !1289
  br label %139, !dbg !1289

124:                                              ; preds = %115
  %125 = getelementptr inbounds [1025 x i8], ptr %1, i64 0, i64 0, !dbg !1290
  %126 = getelementptr inbounds [1025 x i8], ptr %2, i64 0, i64 0, !dbg !1292
  %127 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %125, i64 noundef 1025, ptr noundef @.str.20, ptr noundef %126) #8, !dbg !1293
  %128 = getelementptr inbounds [1025 x i8], ptr %1, i64 0, i64 0, !dbg !1294
  %129 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1294
  call void @set_log_file_name_func(ptr noundef %128, ptr noundef %129, i64 noundef 1025), !dbg !1294
  %130 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1295
  %131 = call noalias ptr @fopen(ptr noundef %130, ptr noundef @.str.56), !dbg !1296
  store ptr %131, ptr @_rtpfile, align 8, !dbg !1297
  %132 = load ptr, ptr @_rtpfile, align 8, !dbg !1298
  %133 = icmp ne ptr %132, null, !dbg !1298
  br i1 %133, label %134, label %136, !dbg !1300

134:                                              ; preds = %124
  %135 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1301
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.16, ptr noundef %135), !dbg !1302
  br label %138, !dbg !1302

136:                                              ; preds = %124
  %137 = load ptr, ptr @stdout, align 8, !dbg !1303
  store ptr %137, ptr @_rtpfile, align 8, !dbg !1305
  br label %159, !dbg !1306

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %138, %122
  br label %140

140:                                              ; preds = %139, %107
  br label %141

141:                                              ; preds = %140, %92
  br label %142

142:                                              ; preds = %141, %77
  br label %143, !dbg !1307

143:                                              ; preds = %142
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1308, metadata !DIExpression()), !dbg !1314
  store i64 1025, ptr %4, align 8, !dbg !1314
  %144 = getelementptr inbounds [1025 x i8], ptr %1, i64 0, i64 0, !dbg !1314
  %145 = load i64, ptr %4, align 8, !dbg !1314
  %146 = call ptr @strncpy(ptr noundef @log_fn_base, ptr noundef %144, i64 noundef %145) #8, !dbg !1314
  %147 = load i64, ptr %4, align 8, !dbg !1314
  %148 = sub i64 %147, 1, !dbg !1314
  %149 = getelementptr inbounds i8, ptr @log_fn_base, i64 %148, !dbg !1314
  store i8 0, ptr %149, align 1, !dbg !1314
  br label %150, !dbg !1315

150:                                              ; preds = %143
  br label %151, !dbg !1316

151:                                              ; preds = %150
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1317, metadata !DIExpression()), !dbg !1323
  store i64 1025, ptr %5, align 8, !dbg !1323
  %152 = getelementptr inbounds [1025 x i8], ptr %3, i64 0, i64 0, !dbg !1323
  %153 = load i64, ptr %5, align 8, !dbg !1323
  %154 = call ptr @strncpy(ptr noundef @log_fn, ptr noundef %152, i64 noundef %153) #8, !dbg !1323
  %155 = load i64, ptr %5, align 8, !dbg !1323
  %156 = sub i64 %155, 1, !dbg !1323
  %157 = getelementptr inbounds i8, ptr @log_fn, i64 %156, !dbg !1323
  store i8 0, ptr %157, align 1, !dbg !1323
  br label %158, !dbg !1324

158:                                              ; preds = %151
  br label %159, !dbg !1325

159:                                              ; preds = %13, %47, %136, %158, %51
  ret void, !dbg !1326
}

declare i32 @fflush(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_default_protocol_port(ptr noundef %0, i64 noundef %1) #0 !dbg !1327 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1330, metadata !DIExpression()), !dbg !1331
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1332, metadata !DIExpression()), !dbg !1333
  %6 = load ptr, ptr %4, align 8, !dbg !1334
  %7 = icmp ne ptr %6, null, !dbg !1334
  br i1 %7, label %8, label %100, !dbg !1336

8:                                                ; preds = %2
  %9 = load i64, ptr %5, align 8, !dbg !1337
  %10 = icmp ugt i64 %9, 0, !dbg !1338
  br i1 %10, label %11, label %100, !dbg !1339

11:                                               ; preds = %8
  %12 = load i64, ptr %5, align 8, !dbg !1340
  switch i64 %12, label %98 [
    i64 3, label %13
    i64 4, label %34
    i64 5, label %60
    i64 6, label %81
    i64 7, label %92
  ], !dbg !1342

13:                                               ; preds = %11
  %14 = load ptr, ptr %4, align 8, !dbg !1343
  %15 = call i32 @memcmp(ptr noundef @.str.21, ptr noundef %14, i64 noundef 3) #11, !dbg !1346
  %16 = icmp ne i32 %15, 0, !dbg !1346
  br i1 %16, label %18, label %17, !dbg !1347

17:                                               ; preds = %13
  store i32 21, ptr %3, align 4, !dbg !1348
  br label %101, !dbg !1348

18:                                               ; preds = %13
  %19 = load ptr, ptr %4, align 8, !dbg !1349
  %20 = call i32 @memcmp(ptr noundef @.str.22, ptr noundef %19, i64 noundef 3) #11, !dbg !1351
  %21 = icmp ne i32 %20, 0, !dbg !1351
  br i1 %21, label %23, label %22, !dbg !1352

22:                                               ; preds = %18
  store i32 3690, ptr %3, align 4, !dbg !1353
  br label %101, !dbg !1353

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 8, !dbg !1354
  %25 = call i32 @memcmp(ptr noundef @.str.23, ptr noundef %24, i64 noundef 3) #11, !dbg !1356
  %26 = icmp ne i32 %25, 0, !dbg !1356
  br i1 %26, label %28, label %27, !dbg !1357

27:                                               ; preds = %23
  store i32 22, ptr %3, align 4, !dbg !1358
  br label %101, !dbg !1358

28:                                               ; preds = %23
  %29 = load ptr, ptr %4, align 8, !dbg !1359
  %30 = call i32 @memcmp(ptr noundef @.str.24, ptr noundef %29, i64 noundef 3) #11, !dbg !1361
  %31 = icmp ne i32 %30, 0, !dbg !1361
  br i1 %31, label %33, label %32, !dbg !1362

32:                                               ; preds = %28
  store i32 5060, ptr %3, align 4, !dbg !1363
  br label %101, !dbg !1363

33:                                               ; preds = %28
  br label %99, !dbg !1364

34:                                               ; preds = %11
  %35 = load ptr, ptr %4, align 8, !dbg !1365
  %36 = call i32 @memcmp(ptr noundef @.str.25, ptr noundef %35, i64 noundef 4) #11, !dbg !1367
  %37 = icmp ne i32 %36, 0, !dbg !1367
  br i1 %37, label %39, label %38, !dbg !1368

38:                                               ; preds = %34
  store i32 80, ptr %3, align 4, !dbg !1369
  br label %101, !dbg !1369

39:                                               ; preds = %34
  %40 = load ptr, ptr %4, align 8, !dbg !1370
  %41 = call i32 @memcmp(ptr noundef @.str.26, ptr noundef %40, i64 noundef 4) #11, !dbg !1372
  %42 = icmp ne i32 %41, 0, !dbg !1372
  br i1 %42, label %44, label %43, !dbg !1373

43:                                               ; preds = %39
  store i32 389, ptr %3, align 4, !dbg !1374
  br label %101, !dbg !1374

44:                                               ; preds = %39
  %45 = load ptr, ptr %4, align 8, !dbg !1375
  %46 = call i32 @memcmp(ptr noundef @.str.27, ptr noundef %45, i64 noundef 4) #11, !dbg !1377
  %47 = icmp ne i32 %46, 0, !dbg !1377
  br i1 %47, label %49, label %48, !dbg !1378

48:                                               ; preds = %44
  store i32 5061, ptr %3, align 4, !dbg !1379
  br label %101, !dbg !1379

49:                                               ; preds = %44
  %50 = load ptr, ptr %4, align 8, !dbg !1380
  %51 = call i32 @memcmp(ptr noundef @.str.28, ptr noundef %50, i64 noundef 4) #11, !dbg !1382
  %52 = icmp ne i32 %51, 0, !dbg !1382
  br i1 %52, label %54, label %53, !dbg !1383

53:                                               ; preds = %49
  store i32 3478, ptr %3, align 4, !dbg !1384
  br label %101, !dbg !1384

54:                                               ; preds = %49
  %55 = load ptr, ptr %4, align 8, !dbg !1385
  %56 = call i32 @memcmp(ptr noundef @.str.29, ptr noundef %55, i64 noundef 4) #11, !dbg !1387
  %57 = icmp ne i32 %56, 0, !dbg !1387
  br i1 %57, label %59, label %58, !dbg !1388

58:                                               ; preds = %54
  store i32 3478, ptr %3, align 4, !dbg !1389
  br label %101, !dbg !1389

59:                                               ; preds = %54
  br label %99, !dbg !1390

60:                                               ; preds = %11
  %61 = load ptr, ptr %4, align 8, !dbg !1391
  %62 = call i32 @memcmp(ptr noundef @.str.30, ptr noundef %61, i64 noundef 5) #11, !dbg !1393
  %63 = icmp ne i32 %62, 0, !dbg !1393
  br i1 %63, label %65, label %64, !dbg !1394

64:                                               ; preds = %60
  store i32 443, ptr %3, align 4, !dbg !1395
  br label %101, !dbg !1395

65:                                               ; preds = %60
  %66 = load ptr, ptr %4, align 8, !dbg !1396
  %67 = call i32 @memcmp(ptr noundef @.str.31, ptr noundef %66, i64 noundef 5) #11, !dbg !1398
  %68 = icmp ne i32 %67, 0, !dbg !1398
  br i1 %68, label %70, label %69, !dbg !1399

69:                                               ; preds = %65
  store i32 636, ptr %3, align 4, !dbg !1400
  br label %101, !dbg !1400

70:                                               ; preds = %65
  %71 = load ptr, ptr %4, align 8, !dbg !1401
  %72 = call i32 @memcmp(ptr noundef @.str.32, ptr noundef %71, i64 noundef 5) #11, !dbg !1403
  %73 = icmp ne i32 %72, 0, !dbg !1403
  br i1 %73, label %75, label %74, !dbg !1404

74:                                               ; preds = %70
  store i32 5349, ptr %3, align 4, !dbg !1405
  br label %101, !dbg !1405

75:                                               ; preds = %70
  %76 = load ptr, ptr %4, align 8, !dbg !1406
  %77 = call i32 @memcmp(ptr noundef @.str.33, ptr noundef %76, i64 noundef 5) #11, !dbg !1408
  %78 = icmp ne i32 %77, 0, !dbg !1408
  br i1 %78, label %80, label %79, !dbg !1409

79:                                               ; preds = %75
  store i32 5349, ptr %3, align 4, !dbg !1410
  br label %101, !dbg !1410

80:                                               ; preds = %75
  br label %99, !dbg !1411

81:                                               ; preds = %11
  %82 = load ptr, ptr %4, align 8, !dbg !1412
  %83 = call i32 @memcmp(ptr noundef @.str.34, ptr noundef %82, i64 noundef 6) #11, !dbg !1414
  %84 = icmp ne i32 %83, 0, !dbg !1414
  br i1 %84, label %86, label %85, !dbg !1415

85:                                               ; preds = %81
  store i32 23, ptr %3, align 4, !dbg !1416
  br label %101, !dbg !1416

86:                                               ; preds = %81
  %87 = load ptr, ptr %4, align 8, !dbg !1417
  %88 = call i32 @memcmp(ptr noundef @.str.35, ptr noundef %87, i64 noundef 6) #11, !dbg !1419
  %89 = icmp ne i32 %88, 0, !dbg !1419
  br i1 %89, label %91, label %90, !dbg !1420

90:                                               ; preds = %86
  store i32 1645, ptr %3, align 4, !dbg !1421
  br label %101, !dbg !1421

91:                                               ; preds = %86
  br label %99, !dbg !1422

92:                                               ; preds = %11
  %93 = load ptr, ptr %4, align 8, !dbg !1423
  %94 = call i32 @memcmp(ptr noundef @.str.36, ptr noundef %93, i64 noundef 7) #11, !dbg !1425
  %95 = icmp ne i32 %94, 0, !dbg !1425
  br i1 %95, label %97, label %96, !dbg !1426

96:                                               ; preds = %92
  store i32 22, ptr %3, align 4, !dbg !1427
  br label %101, !dbg !1427

97:                                               ; preds = %92
  br label %99, !dbg !1428

98:                                               ; preds = %11
  store i32 0, ptr %3, align 4, !dbg !1429
  br label %101, !dbg !1429

99:                                               ; preds = %97, %91, %80, %59, %33
  br label %100, !dbg !1430

100:                                              ; preds = %99, %8, %2
  store i32 0, ptr %3, align 4, !dbg !1431
  br label %101, !dbg !1431

101:                                              ; preds = %100, %98, %96, %90, %85, %79, %74, %69, %64, %58, %53, %48, %43, %38, %32, %27, %22, %17
  %102 = load i32, ptr %3, align 4, !dbg !1432
  ret i32 %102, !dbg !1432
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_canonic_origin(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1433 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [254 x i8], align 16
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1436, metadata !DIExpression()), !dbg !1437
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1438, metadata !DIExpression()), !dbg !1439
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1440, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1442, metadata !DIExpression()), !dbg !1443
  store i32 -1, ptr %7, align 4, !dbg !1443
  %16 = load ptr, ptr %4, align 8, !dbg !1444
  %17 = icmp ne ptr %16, null, !dbg !1444
  br i1 %17, label %18, label %163, !dbg !1446

18:                                               ; preds = %3
  %19 = load ptr, ptr %4, align 8, !dbg !1447
  %20 = getelementptr inbounds i8, ptr %19, i64 0, !dbg !1447
  %21 = load i8, ptr %20, align 1, !dbg !1447
  %22 = sext i8 %21 to i32, !dbg !1447
  %23 = icmp ne i32 %22, 0, !dbg !1447
  br i1 %23, label %24, label %163, !dbg !1448

24:                                               ; preds = %18
  %25 = load ptr, ptr %5, align 8, !dbg !1449
  %26 = icmp ne ptr %25, null, !dbg !1449
  br i1 %26, label %27, label %163, !dbg !1450

27:                                               ; preds = %24
  %28 = load ptr, ptr %5, align 8, !dbg !1451
  %29 = getelementptr inbounds i8, ptr %28, i64 0, !dbg !1451
  store i8 0, ptr %29, align 1, !dbg !1453
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1454, metadata !DIExpression()), !dbg !1458
  %30 = load ptr, ptr %4, align 8, !dbg !1459
  %31 = call ptr @evhttp_uri_parse(ptr noundef %30), !dbg !1460
  store ptr %31, ptr %8, align 8, !dbg !1458
  %32 = load ptr, ptr %8, align 8, !dbg !1461
  %33 = icmp ne ptr %32, null, !dbg !1461
  br i1 %33, label %34, label %149, !dbg !1463

34:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1464, metadata !DIExpression()), !dbg !1466
  %35 = load ptr, ptr %8, align 8, !dbg !1467
  %36 = call ptr @evhttp_uri_get_scheme(ptr noundef %35), !dbg !1468
  store ptr %36, ptr %9, align 8, !dbg !1466
  %37 = load ptr, ptr %9, align 8, !dbg !1469
  %38 = icmp ne ptr %37, null, !dbg !1469
  br i1 %38, label %39, label %147, !dbg !1471

39:                                               ; preds = %34
  %40 = load ptr, ptr %9, align 8, !dbg !1472
  %41 = getelementptr inbounds i8, ptr %40, i64 0, !dbg !1472
  %42 = load i8, ptr %41, align 1, !dbg !1472
  %43 = sext i8 %42 to i32, !dbg !1472
  %44 = icmp ne i32 %43, 0, !dbg !1472
  br i1 %44, label %45, label %147, !dbg !1473

45:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1474, metadata !DIExpression()), !dbg !1476
  %46 = load ptr, ptr %9, align 8, !dbg !1477
  %47 = call i64 @strlen(ptr noundef %46) #11, !dbg !1478
  store i64 %47, ptr %10, align 8, !dbg !1476
  %48 = load i64, ptr %10, align 8, !dbg !1479
  %49 = load i32, ptr %6, align 4, !dbg !1481
  %50 = sext i32 %49 to i64, !dbg !1482
  %51 = icmp ult i64 %48, %50, !dbg !1483
  br i1 %51, label %52, label %146, !dbg !1484

52:                                               ; preds = %45
  %53 = load i64, ptr %10, align 8, !dbg !1485
  %54 = icmp ult i64 %53, 127, !dbg !1486
  br i1 %54, label %55, label %146, !dbg !1487

55:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1488, metadata !DIExpression()), !dbg !1490
  %56 = load ptr, ptr %8, align 8, !dbg !1491
  %57 = call ptr @evhttp_uri_get_host(ptr noundef %56), !dbg !1492
  store ptr %57, ptr %11, align 8, !dbg !1490
  %58 = load ptr, ptr %11, align 8, !dbg !1493
  %59 = icmp ne ptr %58, null, !dbg !1493
  br i1 %59, label %60, label %145, !dbg !1495

60:                                               ; preds = %55
  %61 = load ptr, ptr %11, align 8, !dbg !1496
  %62 = getelementptr inbounds i8, ptr %61, i64 0, !dbg !1496
  %63 = load i8, ptr %62, align 1, !dbg !1496
  %64 = sext i8 %63 to i32, !dbg !1496
  %65 = icmp ne i32 %64, 0, !dbg !1496
  br i1 %65, label %66, label %145, !dbg !1497

66:                                               ; preds = %60
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1498, metadata !DIExpression()), !dbg !1503
  %67 = load ptr, ptr %9, align 8, !dbg !1504
  %68 = getelementptr inbounds [254 x i8], ptr %12, i64 0, i64 0, !dbg !1505
  %69 = load i64, ptr %10, align 8, !dbg !1506
  call void @bcopy(ptr noundef %67, ptr noundef %68, i64 noundef %69) #8, !dbg !1507
  %70 = load i64, ptr %10, align 8, !dbg !1508
  %71 = getelementptr inbounds [254 x i8], ptr %12, i64 0, i64 %70, !dbg !1509
  store i8 0, ptr %71, align 1, !dbg !1510
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1511, metadata !DIExpression()), !dbg !1513
  %72 = getelementptr inbounds [254 x i8], ptr %12, i64 0, i64 0, !dbg !1514
  store ptr %72, ptr %13, align 8, !dbg !1513
  br label %73, !dbg !1515

73:                                               ; preds = %77, %66
  %74 = load ptr, ptr %13, align 8, !dbg !1516
  %75 = load i8, ptr %74, align 1, !dbg !1517
  %76 = icmp ne i8 %75, 0, !dbg !1515
  br i1 %76, label %77, label %86, !dbg !1515

77:                                               ; preds = %73
  %78 = load ptr, ptr %13, align 8, !dbg !1518
  %79 = load i8, ptr %78, align 1, !dbg !1520
  %80 = zext i8 %79 to i32, !dbg !1521
  %81 = call i32 @tolower(i32 noundef %80) #11, !dbg !1522
  %82 = trunc i32 %81 to i8, !dbg !1523
  %83 = load ptr, ptr %13, align 8, !dbg !1524
  store i8 %82, ptr %83, align 1, !dbg !1525
  %84 = load ptr, ptr %13, align 8, !dbg !1526
  %85 = getelementptr inbounds i8, ptr %84, i32 1, !dbg !1526
  store ptr %85, ptr %13, align 8, !dbg !1526
  br label %73, !dbg !1515, !llvm.loop !1527

86:                                               ; preds = %73
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1529, metadata !DIExpression()), !dbg !1530
  %87 = load ptr, ptr %8, align 8, !dbg !1531
  %88 = call i32 @evhttp_uri_get_port(ptr noundef %87), !dbg !1532
  store i32 %88, ptr %14, align 4, !dbg !1530
  %89 = load i32, ptr %14, align 4, !dbg !1533
  %90 = icmp slt i32 %89, 1, !dbg !1535
  br i1 %90, label %91, label %95, !dbg !1536

91:                                               ; preds = %86
  %92 = getelementptr inbounds [254 x i8], ptr %12, i64 0, i64 0, !dbg !1537
  %93 = load i64, ptr %10, align 8, !dbg !1539
  %94 = call i32 @get_default_protocol_port(ptr noundef %92, i64 noundef %93), !dbg !1540
  store i32 %94, ptr %14, align 4, !dbg !1541
  br label %95, !dbg !1542

95:                                               ; preds = %91, %86
  %96 = load i32, ptr %14, align 4, !dbg !1543
  %97 = icmp sgt i32 %96, 0, !dbg !1545
  br i1 %97, label %98, label %108, !dbg !1546

98:                                               ; preds = %95
  %99 = getelementptr inbounds [254 x i8], ptr %12, i64 0, i64 0, !dbg !1547
  %100 = load i64, ptr %10, align 8, !dbg !1548
  %101 = getelementptr inbounds i8, ptr %99, i64 %100, !dbg !1549
  %102 = load i64, ptr %10, align 8, !dbg !1550
  %103 = sub i64 254, %102, !dbg !1551
  %104 = sub i64 %103, 1, !dbg !1552
  %105 = load ptr, ptr %11, align 8, !dbg !1553
  %106 = load i32, ptr %14, align 4, !dbg !1554
  %107 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %101, i64 noundef %104, ptr noundef @.str.37, ptr noundef %105, i32 noundef %106) #8, !dbg !1555
  br label %117, !dbg !1555

108:                                              ; preds = %95
  %109 = getelementptr inbounds [254 x i8], ptr %12, i64 0, i64 0, !dbg !1556
  %110 = load i64, ptr %10, align 8, !dbg !1557
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !1558
  %112 = load i64, ptr %10, align 8, !dbg !1559
  %113 = sub i64 254, %112, !dbg !1560
  %114 = sub i64 %113, 1, !dbg !1561
  %115 = load ptr, ptr %11, align 8, !dbg !1562
  %116 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %111, i64 noundef %114, ptr noundef @.str.38, ptr noundef %115) #8, !dbg !1563
  br label %117

117:                                              ; preds = %108, %98
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1564, metadata !DIExpression()), !dbg !1566
  %118 = getelementptr inbounds [254 x i8], ptr %12, i64 0, i64 0, !dbg !1567
  %119 = load i64, ptr %10, align 8, !dbg !1568
  %120 = getelementptr inbounds i8, ptr %118, i64 %119, !dbg !1569
  %121 = getelementptr inbounds i8, ptr %120, i64 3, !dbg !1570
  store ptr %121, ptr %15, align 8, !dbg !1566
  br label %122, !dbg !1571

122:                                              ; preds = %126, %117
  %123 = load ptr, ptr %15, align 8, !dbg !1572
  %124 = load i8, ptr %123, align 1, !dbg !1573
  %125 = icmp ne i8 %124, 0, !dbg !1571
  br i1 %125, label %126, label %135, !dbg !1571

126:                                              ; preds = %122
  %127 = load ptr, ptr %15, align 8, !dbg !1574
  %128 = load i8, ptr %127, align 1, !dbg !1576
  %129 = zext i8 %128 to i32, !dbg !1577
  %130 = call i32 @tolower(i32 noundef %129) #11, !dbg !1578
  %131 = trunc i32 %130 to i8, !dbg !1579
  %132 = load ptr, ptr %15, align 8, !dbg !1580
  store i8 %131, ptr %132, align 1, !dbg !1581
  %133 = load ptr, ptr %15, align 8, !dbg !1582
  %134 = getelementptr inbounds i8, ptr %133, i32 1, !dbg !1582
  store ptr %134, ptr %15, align 8, !dbg !1582
  br label %122, !dbg !1571, !llvm.loop !1583

135:                                              ; preds = %122
  %136 = load ptr, ptr %5, align 8, !dbg !1585
  %137 = getelementptr inbounds [254 x i8], ptr %12, i64 0, i64 0, !dbg !1586
  %138 = load i32, ptr %6, align 4, !dbg !1587
  %139 = sext i32 %138 to i64, !dbg !1587
  %140 = call ptr @strncpy(ptr noundef %136, ptr noundef %137, i64 noundef %139) #8, !dbg !1588
  %141 = load ptr, ptr %5, align 8, !dbg !1589
  %142 = load i32, ptr %6, align 4, !dbg !1590
  %143 = sext i32 %142 to i64, !dbg !1589
  %144 = getelementptr inbounds i8, ptr %141, i64 %143, !dbg !1589
  store i8 0, ptr %144, align 1, !dbg !1591
  store i32 0, ptr %7, align 4, !dbg !1592
  br label %145, !dbg !1593

145:                                              ; preds = %135, %60, %55
  br label %146, !dbg !1594

146:                                              ; preds = %145, %52, %45
  br label %147, !dbg !1595

147:                                              ; preds = %146, %39, %34
  %148 = load ptr, ptr %8, align 8, !dbg !1596
  call void @evhttp_uri_free(ptr noundef %148), !dbg !1597
  br label %149, !dbg !1598

149:                                              ; preds = %147, %27
  %150 = load i32, ptr %7, align 4, !dbg !1599
  %151 = icmp slt i32 %150, 0, !dbg !1601
  br i1 %151, label %152, label %162, !dbg !1602

152:                                              ; preds = %149
  %153 = load ptr, ptr %5, align 8, !dbg !1603
  %154 = load ptr, ptr %4, align 8, !dbg !1605
  %155 = load i32, ptr %6, align 4, !dbg !1606
  %156 = sext i32 %155 to i64, !dbg !1606
  %157 = call ptr @strncpy(ptr noundef %153, ptr noundef %154, i64 noundef %156) #8, !dbg !1607
  %158 = load ptr, ptr %5, align 8, !dbg !1608
  %159 = load i32, ptr %6, align 4, !dbg !1609
  %160 = sext i32 %159 to i64, !dbg !1608
  %161 = getelementptr inbounds i8, ptr %158, i64 %160, !dbg !1608
  store i8 0, ptr %161, align 1, !dbg !1610
  br label %162, !dbg !1611

162:                                              ; preds = %152, %149
  br label %163, !dbg !1612

163:                                              ; preds = %162, %24, %18, %3
  %164 = load i32, ptr %7, align 4, !dbg !1613
  ret i32 %164, !dbg !1614
}

declare ptr @evhttp_uri_parse(ptr noundef) #3

declare ptr @evhttp_uri_get_scheme(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

declare ptr @evhttp_uri_get_host(ptr noundef) #3

; Function Attrs: nounwind
declare void @bcopy(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) #6

declare i32 @evhttp_uri_get_port(ptr noundef) #3

declare void @evhttp_uri_free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_secure_string(ptr noundef %0, i32 noundef %1) #0 !dbg !1615 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1620, metadata !DIExpression()), !dbg !1621
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1622, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1624, metadata !DIExpression()), !dbg !1625
  store i32 0, ptr %5, align 4, !dbg !1625
  %8 = load ptr, ptr %3, align 8, !dbg !1626
  %9 = icmp ne ptr %8, null, !dbg !1626
  br i1 %9, label %10, label %73, !dbg !1628

10:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1629, metadata !DIExpression()), !dbg !1631
  %11 = load ptr, ptr %3, align 8, !dbg !1632
  %12 = call noalias ptr @strdup(ptr noundef %11) #8, !dbg !1633
  store ptr %12, ptr %6, align 8, !dbg !1631
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1634, metadata !DIExpression()), !dbg !1635
  %13 = load ptr, ptr %6, align 8, !dbg !1636
  store ptr %13, ptr %7, align 8, !dbg !1635
  br label %14, !dbg !1637

14:                                               ; preds = %18, %10
  %15 = load ptr, ptr %7, align 8, !dbg !1638
  %16 = load i8, ptr %15, align 1, !dbg !1639
  %17 = icmp ne i8 %16, 0, !dbg !1637
  br i1 %17, label %18, label %27, !dbg !1637

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 8, !dbg !1640
  %20 = load i8, ptr %19, align 1, !dbg !1642
  %21 = zext i8 %20 to i32, !dbg !1643
  %22 = call i32 @tolower(i32 noundef %21) #11, !dbg !1644
  %23 = trunc i32 %22 to i8, !dbg !1645
  %24 = load ptr, ptr %7, align 8, !dbg !1646
  store i8 %23, ptr %24, align 1, !dbg !1647
  %25 = load ptr, ptr %7, align 8, !dbg !1648
  %26 = getelementptr inbounds i8, ptr %25, i32 1, !dbg !1648
  store ptr %26, ptr %7, align 8, !dbg !1648
  br label %14, !dbg !1637, !llvm.loop !1649

27:                                               ; preds = %14
  %28 = load ptr, ptr %6, align 8, !dbg !1651
  store ptr %28, ptr %7, align 8, !dbg !1652
  %29 = load ptr, ptr %7, align 8, !dbg !1653
  %30 = call ptr @strstr(ptr noundef %29, ptr noundef @.str.39) #11, !dbg !1655
  %31 = icmp ne ptr %30, null, !dbg !1655
  br i1 %31, label %56, label %32, !dbg !1656

32:                                               ; preds = %27
  %33 = load ptr, ptr %7, align 8, !dbg !1657
  %34 = call ptr @strstr(ptr noundef %33, ptr noundef @.str.40) #11, !dbg !1658
  %35 = icmp ne ptr %34, null, !dbg !1658
  br i1 %35, label %56, label %36, !dbg !1659

36:                                               ; preds = %32
  %37 = load ptr, ptr %7, align 8, !dbg !1660
  %38 = call ptr @strstr(ptr noundef %37, ptr noundef @.str.41) #11, !dbg !1661
  %39 = icmp ne ptr %38, null, !dbg !1661
  br i1 %39, label %56, label %40, !dbg !1662

40:                                               ; preds = %36
  %41 = load ptr, ptr %7, align 8, !dbg !1663
  %42 = call ptr @strstr(ptr noundef %41, ptr noundef @.str.42) #11, !dbg !1664
  %43 = icmp ne ptr %42, null, !dbg !1664
  br i1 %43, label %56, label %44, !dbg !1665

44:                                               ; preds = %40
  %45 = load ptr, ptr %7, align 8, !dbg !1666
  %46 = call ptr @strstr(ptr noundef %45, ptr noundef @.str.43) #11, !dbg !1667
  %47 = icmp ne ptr %46, null, !dbg !1667
  br i1 %47, label %56, label %48, !dbg !1668

48:                                               ; preds = %44
  %49 = load ptr, ptr %7, align 8, !dbg !1669
  %50 = call ptr @strstr(ptr noundef %49, ptr noundef @.str.44) #11, !dbg !1670
  %51 = icmp ne ptr %50, null, !dbg !1670
  br i1 %51, label %56, label %52, !dbg !1671

52:                                               ; preds = %48
  %53 = load ptr, ptr %7, align 8, !dbg !1672
  %54 = call ptr @strstr(ptr noundef %53, ptr noundef @.str.45) #11, !dbg !1673
  %55 = icmp ne ptr %54, null, !dbg !1673
  br i1 %55, label %56, label %57, !dbg !1674

56:                                               ; preds = %52, %48, %44, %40, %36, %32, %27
  br label %71, !dbg !1675

57:                                               ; preds = %52
  %58 = load i32, ptr %4, align 4, !dbg !1677
  %59 = icmp ne i32 %58, 0, !dbg !1677
  br i1 %59, label %60, label %69, !dbg !1679

60:                                               ; preds = %57
  %61 = load ptr, ptr %7, align 8, !dbg !1680
  %62 = call ptr @strstr(ptr noundef %61, ptr noundef @.str.46) #11, !dbg !1681
  %63 = icmp ne ptr %62, null, !dbg !1681
  br i1 %63, label %64, label %69, !dbg !1682

64:                                               ; preds = %60
  %65 = load ptr, ptr %7, align 8, !dbg !1683
  %66 = call ptr @strstr(ptr noundef %65, ptr noundef @.str.47) #11, !dbg !1684
  %67 = icmp ne ptr %66, null, !dbg !1684
  br i1 %67, label %68, label %69, !dbg !1685

68:                                               ; preds = %64
  br label %70, !dbg !1686

69:                                               ; preds = %64, %60, %57
  store i32 1, ptr %5, align 4, !dbg !1688
  br label %70

70:                                               ; preds = %69, %68
  br label %71

71:                                               ; preds = %70, %56
  %72 = load ptr, ptr %7, align 8, !dbg !1690
  call void @free(ptr noundef %72) #8, !dbg !1691
  br label %73, !dbg !1692

73:                                               ; preds = %71, %2
  %74 = load i32, ptr %5, align 4, !dbg !1693
  ret i32 %74, !dbg !1694
}

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_date(ptr noundef %0, i64 noundef %1) #0 !dbg !1695 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1698, metadata !DIExpression()), !dbg !1699
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1700, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1702, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1704, metadata !DIExpression()), !dbg !1720
  %7 = call i64 @time(ptr noundef null) #8, !dbg !1721
  store i64 %7, ptr %5, align 8, !dbg !1722
  %8 = call ptr @localtime(ptr noundef %5) #8, !dbg !1723
  store ptr %8, ptr %6, align 8, !dbg !1724
  %9 = load ptr, ptr %3, align 8, !dbg !1725
  %10 = load i64, ptr %4, align 8, !dbg !1726
  %11 = load ptr, ptr %6, align 8, !dbg !1727
  %12 = call i64 @strftime(ptr noundef %9, i64 noundef %10, ptr noundef @.str.51, ptr noundef %11) #8, !dbg !1728
  ret void, !dbg !1729
}

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sighup_callback_handler(i32 noundef %0) #0 !dbg !1730 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1731, metadata !DIExpression()), !dbg !1732
  %3 = load i32, ptr %2, align 4, !dbg !1733
  %4 = icmp eq i32 %3, 1, !dbg !1735
  br i1 %4, label %5, label %6, !dbg !1736

5:                                                ; preds = %1
  store volatile i32 1, ptr @to_reset_log_file, align 4, !dbg !1737
  br label %6, !dbg !1739

6:                                                ; preds = %5, %1
  ret void, !dbg !1740
}

; Function Attrs: nounwind
declare i32 @getpid() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!362, !363, !364, !365, !366, !367, !368}
!llvm.ident = !{!369}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_log_time_value_set", scope: !2, file: !76, line: 52, type: !361, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !73, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/coturn/src/apps/common/ns_turn_utils.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "bd4aacda49fca419cc2a9d55e9e940d1")
!4 = !{!5, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 47, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "PTHREAD_MUTEX_TIMED_NP", value: 0)
!10 = !DIEnumerator(name: "PTHREAD_MUTEX_RECURSIVE_NP", value: 1)
!11 = !DIEnumerator(name: "PTHREAD_MUTEX_ERRORCHECK_NP", value: 2)
!12 = !DIEnumerator(name: "PTHREAD_MUTEX_ADAPTIVE_NP", value: 3)
!13 = !DIEnumerator(name: "PTHREAD_MUTEX_NORMAL", value: 0)
!14 = !DIEnumerator(name: "PTHREAD_MUTEX_RECURSIVE", value: 1)
!15 = !DIEnumerator(name: "PTHREAD_MUTEX_ERRORCHECK", value: 2)
!16 = !DIEnumerator(name: "PTHREAD_MUTEX_DEFAULT", value: 0)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 47, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!21 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!22 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!23 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!24 = !{!25, !58, !35, !59, !61, !62, !63, !65, !66, !67}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !27, line: 72, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !27, line: 67, size: 320, elements: !29)
!29 = !{!30, !51, !56}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !28, file: !27, line: 69, baseType: !31, size: 320)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !32, line: 22, size: 320, elements: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!33 = !{!34, !36, !37, !38, !39, !40, !42, !43}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !31, file: !32, line: 24, baseType: !35, size: 32)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !31, file: !32, line: 25, baseType: !7, size: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !31, file: !32, line: 26, baseType: !35, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !31, file: !32, line: 28, baseType: !7, size: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !31, file: !32, line: 32, baseType: !35, size: 32, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !31, file: !32, line: 34, baseType: !41, size: 16, offset: 160)
!41 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !31, file: !32, line: 35, baseType: !41, size: 16, offset: 176)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !31, file: !32, line: 36, baseType: !44, size: 128, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !45, line: 55, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !45, line: 51, size: 128, elements: !47)
!47 = !{!48, !50}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !46, file: !45, line: 53, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !46, file: !45, line: 54, baseType: !49, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !28, file: !27, line: 70, baseType: !52, size: 320)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 320, elements: !54)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !{!55}
!55 = !DISubrange(count: 40)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !28, file: !27, line: 71, baseType: !57, size: 64)
!57 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 46, baseType: !62)
!64 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_time_t", file: !68, line: 108, baseType: !69)
!68 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !70, line: 26, baseType: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !72, line: 42, baseType: !7)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!73 = !{!0, !74, !78, !83, !88, !93, !98, !103, !108, !110, !112, !117, !122, !124, !129, !134, !139, !141, !143, !145, !147, !152, !157, !162, !164, !169, !171, !173, !175, !180, !182, !184, !186, !188, !190, !192, !194, !196, !201, !203, !208, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !240, !242, !250, !255, !305, !307, !309, !311, !313, !315, !317, !319, !321, !326, !331, !333, !335, !337, !339, !344, !346, !348, !350, !352, !355, !357, !359}
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "_log_time_value", scope: !2, file: !76, line: 53, type: !77, isLocal: false, isDefinition: true)
!76 = !DIFile(filename: "src/apps/common/ns_turn_utils.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "bd4aacda49fca419cc2a9d55e9e940d1")
!77 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !76, line: 75, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 88, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 11)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !76, line: 79, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 168, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 21)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !76, line: 89, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 104, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 13)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !76, line: 114, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 184, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 23)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !76, line: 117, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 240, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 30)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !76, line: 123, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 144, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 18)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "use_new_log_timestamp_format", scope: !2, file: !76, line: 169, type: !35, isLocal: false, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !76, line: 175, type: !80, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !76, line: 179, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 1)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !76, line: 181, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 136, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 17)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !76, line: 185, type: !119, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !76, line: 192, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 160, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 20)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !76, line: 196, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 264, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 33)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !76, line: 440, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 16, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 2)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !76, line: 442, type: !85, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !76, line: 444, type: !95, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !76, line: 462, type: !136, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !76, line: 465, type: !85, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !76, line: 505, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 48, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 6)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !76, line: 507, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 80, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 10)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !76, line: 507, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 24, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 3)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !76, line: 513, type: !159, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !76, line: 536, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 32, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 4)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !76, line: 538, type: !166, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !76, line: 540, type: !166, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !76, line: 542, type: !166, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !76, line: 546, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 40, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 5)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !76, line: 548, type: !177, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !76, line: 550, type: !177, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !76, line: 552, type: !177, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !76, line: 554, type: !177, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !76, line: 558, type: !149, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !76, line: 560, type: !149, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !76, line: 562, type: !149, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !76, line: 564, type: !149, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !76, line: 568, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 56, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 7)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !76, line: 570, type: !198, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !76, line: 574, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 64, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 8)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !76, line: 615, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 72, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 9)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !76, line: 617, type: !149, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !76, line: 658, type: !136, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !76, line: 658, type: !136, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !76, line: 658, type: !136, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !76, line: 658, type: !136, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !76, line: 658, type: !136, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !76, line: 658, type: !136, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !76, line: 658, type: !136, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !76, line: 660, type: !149, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !76, line: 660, type: !198, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "no_stdout_log", scope: !2, file: !76, line: 154, type: !35, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "turn_log_timestamp_format", scope: !2, file: !76, line: 162, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 384, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 48)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "log_mutex_inited", scope: !2, file: !76, line: 216, type: !35, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "log_mutex", scope: !2, file: !76, line: 215, type: !244, isLocal: true, isDefinition: true)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_mutex", file: !245, line: 60, baseType: !246)
!245 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_mutex", file: !245, line: 55, size: 128, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !246, file: !245, line: 56, baseType: !69, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !246, file: !245, line: 57, baseType: !58, size: 64, offset: 64)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "log_fn_base", scope: !2, file: !76, line: 212, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 8200, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 1025)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "_rtpfile", scope: !2, file: !76, line: 208, type: !257, isLocal: true, isDefinition: true)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !259, line: 7, baseType: !260)
!259 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !261, line: 49, size: 1728, elements: !262)
!261 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !278, !280, !281, !282, !284, !286, !288, !289, !292, !294, !297, !300, !301, !302, !303, !304}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !260, file: !261, line: 51, baseType: !35, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !260, file: !261, line: 54, baseType: !61, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !260, file: !261, line: 55, baseType: !61, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !260, file: !261, line: 56, baseType: !61, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !260, file: !261, line: 57, baseType: !61, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !260, file: !261, line: 58, baseType: !61, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !260, file: !261, line: 59, baseType: !61, size: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !260, file: !261, line: 60, baseType: !61, size: 64, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !260, file: !261, line: 61, baseType: !61, size: 64, offset: 512)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !260, file: !261, line: 64, baseType: !61, size: 64, offset: 576)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !260, file: !261, line: 65, baseType: !61, size: 64, offset: 640)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !260, file: !261, line: 66, baseType: !61, size: 64, offset: 704)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !260, file: !261, line: 68, baseType: !276, size: 64, offset: 768)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !261, line: 36, flags: DIFlagFwdDecl)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !260, file: !261, line: 70, baseType: !279, size: 64, offset: 832)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !260, file: !261, line: 72, baseType: !35, size: 32, offset: 896)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !260, file: !261, line: 73, baseType: !35, size: 32, offset: 928)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !260, file: !261, line: 74, baseType: !283, size: 64, offset: 960)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !72, line: 152, baseType: !57)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !260, file: !261, line: 77, baseType: !285, size: 16, offset: 1024)
!285 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !260, file: !261, line: 78, baseType: !287, size: 8, offset: 1040)
!287 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !260, file: !261, line: 79, baseType: !114, size: 8, offset: 1048)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !260, file: !261, line: 81, baseType: !290, size: 64, offset: 1088)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !261, line: 43, baseType: null)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !260, file: !261, line: 89, baseType: !293, size: 64, offset: 1152)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !72, line: 153, baseType: !57)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !260, file: !261, line: 91, baseType: !295, size: 64, offset: 1216)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !261, line: 37, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !260, file: !261, line: 92, baseType: !298, size: 64, offset: 1280)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !261, line: 38, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !260, file: !261, line: 93, baseType: !279, size: 64, offset: 1344)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !260, file: !261, line: 94, baseType: !58, size: 64, offset: 1408)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !260, file: !261, line: 95, baseType: !63, size: 64, offset: 1472)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !260, file: !261, line: 96, baseType: !35, size: 32, offset: 1536)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !260, file: !261, line: 98, baseType: !126, size: 160, offset: 1568)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "to_syslog", scope: !2, file: !76, line: 209, type: !35, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "simple_log", scope: !2, file: !76, line: 210, type: !35, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "log_fn", scope: !2, file: !76, line: 211, type: !252, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !76, line: 273, type: !177, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !76, line: 310, type: !205, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !76, line: 312, type: !198, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !76, line: 237, type: !159, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "log_start_time", scope: !2, file: !76, line: 51, type: !77, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !76, line: 329, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 224, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 28)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !76, line: 329, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 96, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 12)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !76, line: 339, type: !198, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !76, line: 342, type: !198, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !76, line: 342, type: !136, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !76, line: 347, type: !136, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !76, line: 352, type: !341, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 360, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 45)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !76, line: 366, type: !210, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !76, line: 368, type: !210, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !76, line: 370, type: !95, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !76, line: 371, type: !323, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !76, line: 379, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 96, elements: !329)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !76, line: 387, type: !354, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !76, line: 395, type: !205, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "to_reset_log_file", scope: !2, file: !76, line: 213, type: !361, isLocal: true, isDefinition: true)
!361 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!362 = !{i32 7, !"Dwarf Version", i32 5}
!363 = !{i32 2, !"Debug Info Version", i32 3}
!364 = !{i32 1, !"wchar_size", i32 4}
!365 = !{i32 8, !"PIC Level", i32 2}
!366 = !{i32 7, !"PIE Level", i32 2}
!367 = !{i32 7, !"uwtable", i32 2}
!368 = !{i32 7, !"frame-pointer", i32 2}
!369 = !{!"clang version 16.0.0"}
!370 = distinct !DISubprogram(name: "turn_mutex_lock", scope: !76, file: !76, line: 70, type: !371, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!371 = !DISubroutineType(types: !372)
!372 = !{!35, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!375 = !{}
!376 = !DILocalVariable(name: "mutex", arg: 1, scope: !370, file: !76, line: 70, type: !373)
!377 = !DILocation(line: 70, column: 39, scope: !370)
!378 = !DILocation(line: 71, column: 6, scope: !379)
!379 = distinct !DILexicalBlock(scope: !370, file: !76, line: 71, column: 6)
!380 = !DILocation(line: 71, column: 12, scope: !379)
!381 = !DILocation(line: 71, column: 15, scope: !379)
!382 = !DILocation(line: 71, column: 22, scope: !379)
!383 = !DILocation(line: 71, column: 28, scope: !379)
!384 = !DILocation(line: 71, column: 32, scope: !379)
!385 = !DILocation(line: 71, column: 39, scope: !379)
!386 = !DILocation(line: 71, column: 44, scope: !379)
!387 = !DILocation(line: 71, column: 6, scope: !370)
!388 = !DILocalVariable(name: "ret", scope: !389, file: !76, line: 72, type: !35)
!389 = distinct !DILexicalBlock(scope: !379, file: !76, line: 71, column: 60)
!390 = !DILocation(line: 72, column: 9, scope: !389)
!391 = !DILocation(line: 73, column: 48, scope: !389)
!392 = !DILocation(line: 73, column: 55, scope: !389)
!393 = !DILocation(line: 73, column: 11, scope: !389)
!394 = !DILocation(line: 73, column: 9, scope: !389)
!395 = !DILocation(line: 74, column: 8, scope: !396)
!396 = distinct !DILexicalBlock(scope: !389, file: !76, line: 74, column: 8)
!397 = !DILocation(line: 74, column: 11, scope: !396)
!398 = !DILocation(line: 74, column: 8, scope: !389)
!399 = !DILocation(line: 75, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !76, line: 74, column: 15)
!401 = !DILocation(line: 76, column: 5, scope: !400)
!402 = !DILocation(line: 77, column: 12, scope: !389)
!403 = !DILocation(line: 77, column: 5, scope: !389)
!404 = !DILocation(line: 79, column: 5, scope: !405)
!405 = distinct !DILexicalBlock(scope: !379, file: !76, line: 78, column: 10)
!406 = !DILocation(line: 80, column: 5, scope: !405)
!407 = !DILocation(line: 82, column: 1, scope: !370)
!408 = distinct !DISubprogram(name: "turn_mutex_unlock", scope: !76, file: !76, line: 84, type: !371, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!409 = !DILocalVariable(name: "mutex", arg: 1, scope: !408, file: !76, line: 84, type: !373)
!410 = !DILocation(line: 84, column: 41, scope: !408)
!411 = !DILocation(line: 85, column: 6, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !76, line: 85, column: 6)
!413 = !DILocation(line: 85, column: 12, scope: !412)
!414 = !DILocation(line: 85, column: 15, scope: !412)
!415 = !DILocation(line: 85, column: 22, scope: !412)
!416 = !DILocation(line: 85, column: 28, scope: !412)
!417 = !DILocation(line: 85, column: 32, scope: !412)
!418 = !DILocation(line: 85, column: 39, scope: !412)
!419 = !DILocation(line: 85, column: 44, scope: !412)
!420 = !DILocation(line: 85, column: 6, scope: !408)
!421 = !DILocalVariable(name: "ret", scope: !422, file: !76, line: 86, type: !35)
!422 = distinct !DILexicalBlock(scope: !412, file: !76, line: 85, column: 60)
!423 = !DILocation(line: 86, column: 9, scope: !422)
!424 = !DILocation(line: 87, column: 50, scope: !422)
!425 = !DILocation(line: 87, column: 57, scope: !422)
!426 = !DILocation(line: 87, column: 11, scope: !422)
!427 = !DILocation(line: 87, column: 9, scope: !422)
!428 = !DILocation(line: 88, column: 8, scope: !429)
!429 = distinct !DILexicalBlock(scope: !422, file: !76, line: 88, column: 8)
!430 = !DILocation(line: 88, column: 11, scope: !429)
!431 = !DILocation(line: 88, column: 8, scope: !422)
!432 = !DILocation(line: 89, column: 7, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !76, line: 88, column: 15)
!434 = !DILocation(line: 90, column: 5, scope: !433)
!435 = !DILocation(line: 91, column: 12, scope: !422)
!436 = !DILocation(line: 91, column: 5, scope: !422)
!437 = !DILocation(line: 93, column: 5, scope: !438)
!438 = distinct !DILexicalBlock(scope: !412, file: !76, line: 92, column: 10)
!439 = !DILocation(line: 94, column: 5, scope: !438)
!440 = !DILocation(line: 96, column: 1, scope: !408)
!441 = distinct !DISubprogram(name: "turn_mutex_init", scope: !76, file: !76, line: 98, type: !442, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!442 = !DISubroutineType(types: !443)
!443 = !{!35, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!445 = !DILocalVariable(name: "mutex", arg: 1, scope: !441, file: !76, line: 98, type: !444)
!446 = !DILocation(line: 98, column: 33, scope: !441)
!447 = !DILocation(line: 99, column: 6, scope: !448)
!448 = distinct !DILexicalBlock(scope: !441, file: !76, line: 99, column: 6)
!449 = !DILocation(line: 99, column: 6, scope: !441)
!450 = !DILocation(line: 100, column: 5, scope: !451)
!451 = distinct !DILexicalBlock(scope: !448, file: !76, line: 99, column: 13)
!452 = !DILocation(line: 100, column: 12, scope: !451)
!453 = !DILocation(line: 100, column: 16, scope: !451)
!454 = !DILocation(line: 101, column: 18, scope: !451)
!455 = !DILocation(line: 101, column: 5, scope: !451)
!456 = !DILocation(line: 101, column: 12, scope: !451)
!457 = !DILocation(line: 101, column: 17, scope: !451)
!458 = !DILocation(line: 102, column: 42, scope: !451)
!459 = !DILocation(line: 102, column: 49, scope: !451)
!460 = !DILocation(line: 102, column: 5, scope: !451)
!461 = !DILocation(line: 103, column: 5, scope: !451)
!462 = !DILocation(line: 105, column: 5, scope: !463)
!463 = distinct !DILexicalBlock(scope: !448, file: !76, line: 104, column: 10)
!464 = !DILocation(line: 107, column: 1, scope: !441)
!465 = distinct !DISubprogram(name: "turn_mutex_init_recursive", scope: !76, file: !76, line: 109, type: !442, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!466 = !DILocalVariable(name: "mutex", arg: 1, scope: !465, file: !76, line: 109, type: !444)
!467 = !DILocation(line: 109, column: 43, scope: !465)
!468 = !DILocalVariable(name: "ret", scope: !465, file: !76, line: 110, type: !35)
!469 = !DILocation(line: 110, column: 6, scope: !465)
!470 = !DILocation(line: 111, column: 6, scope: !471)
!471 = distinct !DILexicalBlock(scope: !465, file: !76, line: 111, column: 6)
!472 = !DILocation(line: 111, column: 6, scope: !465)
!473 = !DILocalVariable(name: "attr", scope: !474, file: !76, line: 112, type: !475)
!474 = distinct !DILexicalBlock(scope: !471, file: !76, line: 111, column: 13)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !27, line: 36, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !27, line: 32, size: 32, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !476, file: !27, line: 34, baseType: !166, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !476, file: !27, line: 35, baseType: !35, size: 32)
!480 = !DILocation(line: 112, column: 23, scope: !474)
!481 = !DILocation(line: 113, column: 7, scope: !482)
!482 = distinct !DILexicalBlock(scope: !474, file: !76, line: 113, column: 7)
!483 = !DILocation(line: 113, column: 37, scope: !482)
!484 = !DILocation(line: 113, column: 7, scope: !474)
!485 = !DILocation(line: 114, column: 4, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !76, line: 113, column: 42)
!487 = !DILocation(line: 115, column: 3, scope: !486)
!488 = !DILocation(line: 116, column: 8, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !76, line: 116, column: 8)
!490 = distinct !DILexicalBlock(scope: !482, file: !76, line: 115, column: 10)
!491 = !DILocation(line: 116, column: 66, scope: !489)
!492 = !DILocation(line: 116, column: 8, scope: !490)
!493 = !DILocation(line: 117, column: 5, scope: !494)
!494 = distinct !DILexicalBlock(scope: !489, file: !76, line: 116, column: 71)
!495 = !DILocation(line: 118, column: 4, scope: !494)
!496 = !DILocation(line: 119, column: 20, scope: !497)
!497 = distinct !DILexicalBlock(scope: !489, file: !76, line: 118, column: 11)
!498 = !DILocation(line: 119, column: 5, scope: !497)
!499 = !DILocation(line: 119, column: 12, scope: !497)
!500 = !DILocation(line: 119, column: 18, scope: !497)
!501 = !DILocation(line: 120, column: 5, scope: !497)
!502 = !DILocation(line: 120, column: 12, scope: !497)
!503 = !DILocation(line: 120, column: 17, scope: !497)
!504 = !DILocation(line: 121, column: 54, scope: !505)
!505 = distinct !DILexicalBlock(scope: !497, file: !76, line: 121, column: 9)
!506 = !DILocation(line: 121, column: 61, scope: !505)
!507 = !DILocation(line: 121, column: 16, scope: !505)
!508 = !DILocation(line: 121, column: 14, scope: !505)
!509 = !DILocation(line: 122, column: 15, scope: !505)
!510 = !DILocation(line: 121, column: 9, scope: !497)
!511 = !DILocation(line: 123, column: 6, scope: !512)
!512 = distinct !DILexicalBlock(scope: !505, file: !76, line: 122, column: 20)
!513 = !DILocation(line: 124, column: 6, scope: !512)
!514 = !DILocation(line: 124, column: 13, scope: !512)
!515 = !DILocation(line: 124, column: 18, scope: !512)
!516 = !DILocation(line: 125, column: 11, scope: !512)
!517 = !DILocation(line: 125, column: 18, scope: !512)
!518 = !DILocation(line: 125, column: 6, scope: !512)
!519 = !DILocation(line: 126, column: 6, scope: !512)
!520 = !DILocation(line: 126, column: 13, scope: !512)
!521 = !DILocation(line: 126, column: 19, scope: !512)
!522 = !DILocation(line: 127, column: 5, scope: !512)
!523 = !DILocation(line: 129, column: 4, scope: !490)
!524 = !DILocation(line: 131, column: 2, scope: !474)
!525 = !DILocation(line: 132, column: 10, scope: !465)
!526 = !DILocation(line: 132, column: 3, scope: !465)
!527 = distinct !DISubprogram(name: "turn_mutex_destroy", scope: !76, file: !76, line: 135, type: !442, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!528 = !DILocalVariable(name: "mutex", arg: 1, scope: !527, file: !76, line: 135, type: !444)
!529 = !DILocation(line: 135, column: 36, scope: !527)
!530 = !DILocation(line: 136, column: 6, scope: !531)
!531 = distinct !DILexicalBlock(scope: !527, file: !76, line: 136, column: 6)
!532 = !DILocation(line: 136, column: 12, scope: !531)
!533 = !DILocation(line: 136, column: 15, scope: !531)
!534 = !DILocation(line: 136, column: 22, scope: !531)
!535 = !DILocation(line: 136, column: 28, scope: !531)
!536 = !DILocation(line: 136, column: 31, scope: !531)
!537 = !DILocation(line: 136, column: 38, scope: !531)
!538 = !DILocation(line: 136, column: 43, scope: !531)
!539 = !DILocation(line: 136, column: 6, scope: !527)
!540 = !DILocalVariable(name: "ret", scope: !541, file: !76, line: 137, type: !35)
!541 = distinct !DILexicalBlock(scope: !531, file: !76, line: 136, column: 58)
!542 = !DILocation(line: 137, column: 9, scope: !541)
!543 = !DILocation(line: 138, column: 52, scope: !541)
!544 = !DILocation(line: 138, column: 59, scope: !541)
!545 = !DILocation(line: 138, column: 11, scope: !541)
!546 = !DILocation(line: 138, column: 9, scope: !541)
!547 = !DILocation(line: 139, column: 10, scope: !541)
!548 = !DILocation(line: 139, column: 17, scope: !541)
!549 = !DILocation(line: 139, column: 5, scope: !541)
!550 = !DILocation(line: 140, column: 5, scope: !541)
!551 = !DILocation(line: 140, column: 12, scope: !541)
!552 = !DILocation(line: 140, column: 17, scope: !541)
!553 = !DILocation(line: 141, column: 5, scope: !541)
!554 = !DILocation(line: 141, column: 12, scope: !541)
!555 = !DILocation(line: 141, column: 16, scope: !541)
!556 = !DILocation(line: 142, column: 12, scope: !541)
!557 = !DILocation(line: 142, column: 5, scope: !541)
!558 = !DILocation(line: 144, column: 5, scope: !559)
!559 = distinct !DILexicalBlock(scope: !531, file: !76, line: 143, column: 10)
!560 = !DILocation(line: 146, column: 1, scope: !527)
!561 = distinct !DISubprogram(name: "set_no_stdout_log", scope: !76, file: !76, line: 156, type: !562, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !35}
!564 = !DILocalVariable(name: "val", arg: 1, scope: !561, file: !76, line: 156, type: !35)
!565 = !DILocation(line: 156, column: 28, scope: !561)
!566 = !DILocation(line: 158, column: 18, scope: !561)
!567 = !DILocation(line: 158, column: 16, scope: !561)
!568 = !DILocation(line: 159, column: 1, scope: !561)
!569 = distinct !DISubprogram(name: "set_turn_log_timestamp_format", scope: !76, file: !76, line: 164, type: !570, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !61}
!572 = !DILocalVariable(name: "new_format", arg: 1, scope: !569, file: !76, line: 164, type: !61)
!573 = !DILocation(line: 164, column: 42, scope: !569)
!574 = !DILocation(line: 166, column: 37, scope: !569)
!575 = !DILocation(line: 166, column: 2, scope: !569)
!576 = !DILocation(line: 167, column: 1, scope: !569)
!577 = distinct !DISubprogram(name: "addr_debug_print", scope: !76, file: !76, line: 171, type: !578, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !35, !580, !59}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !583, line: 48, baseType: !584)
!583 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !583, line: 44, size: 224, elements: !585)
!585 = !{!586, !597, !613}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !584, file: !583, line: 45, baseType: !587, size: 128)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !588, line: 180, size: 128, elements: !589)
!588 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!589 = !{!590, !593}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !587, file: !588, line: 182, baseType: !591, size: 16)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !592, line: 28, baseType: !285)
!592 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !587, file: !588, line: 183, baseType: !594, size: 112, offset: 16)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 112, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 14)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !584, file: !583, line: 46, baseType: !598, size: 128)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !599, line: 245, size: 128, elements: !600)
!599 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!600 = !{!601, !602, !606, !611}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !598, file: !599, line: 247, baseType: !591, size: 16)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !598, file: !599, line: 248, baseType: !603, size: 16, offset: 16)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !599, line: 123, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !70, line: 25, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !72, line: 40, baseType: !285)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !598, file: !599, line: 249, baseType: !607, size: 32, offset: 32)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !599, line: 31, size: 32, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !607, file: !599, line: 33, baseType: !610, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !599, line: 30, baseType: !69)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !598, file: !599, line: 252, baseType: !612, size: 64, offset: 64)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 64, elements: !206)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !584, file: !583, line: 47, baseType: !614, size: 224)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !599, line: 260, size: 224, elements: !615)
!615 = !{!616, !617, !618, !619, !635}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !614, file: !599, line: 262, baseType: !591, size: 16)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !614, file: !599, line: 263, baseType: !603, size: 16, offset: 16)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !614, file: !599, line: 264, baseType: !69, size: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !614, file: !599, line: 265, baseType: !620, size: 128, offset: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !599, line: 219, size: 128, elements: !621)
!621 = !{!622}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !620, file: !599, line: 226, baseType: !623, size: 128)
!623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !620, file: !599, line: 221, size: 128, elements: !624)
!624 = !{!625, !631, !633}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !623, file: !599, line: 223, baseType: !626, size: 128)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 128, elements: !629)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !70, line: 24, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !72, line: 38, baseType: !66)
!629 = !{!630}
!630 = !DISubrange(count: 16)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !623, file: !599, line: 224, baseType: !632, size: 128)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 128, elements: !206)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !623, file: !599, line: 225, baseType: !634, size: 128)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, elements: !167)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !614, file: !599, line: 266, baseType: !69, size: 32, offset: 192)
!636 = !DILocalVariable(name: "verbose", arg: 1, scope: !577, file: !76, line: 171, type: !35)
!637 = !DILocation(line: 171, column: 27, scope: !577)
!638 = !DILocalVariable(name: "addr", arg: 2, scope: !577, file: !76, line: 171, type: !580)
!639 = !DILocation(line: 171, column: 52, scope: !577)
!640 = !DILocalVariable(name: "s", arg: 3, scope: !577, file: !76, line: 171, type: !59)
!641 = !DILocation(line: 171, column: 70, scope: !577)
!642 = !DILocation(line: 173, column: 6, scope: !643)
!643 = distinct !DILexicalBlock(scope: !577, file: !76, line: 173, column: 6)
!644 = !DILocation(line: 173, column: 6, scope: !577)
!645 = !DILocation(line: 174, column: 8, scope: !646)
!646 = distinct !DILexicalBlock(scope: !647, file: !76, line: 174, column: 7)
!647 = distinct !DILexicalBlock(scope: !643, file: !76, line: 173, column: 15)
!648 = !DILocation(line: 174, column: 7, scope: !647)
!649 = !DILocation(line: 175, column: 54, scope: !650)
!650 = distinct !DILexicalBlock(scope: !646, file: !76, line: 174, column: 14)
!651 = !DILocation(line: 175, column: 4, scope: !650)
!652 = !DILocation(line: 176, column: 3, scope: !650)
!653 = !DILocalVariable(name: "addrbuf", scope: !654, file: !76, line: 177, type: !655)
!654 = distinct !DILexicalBlock(scope: !646, file: !76, line: 176, column: 10)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 368, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 46)
!658 = !DILocation(line: 177, column: 9, scope: !654)
!659 = !DILocation(line: 178, column: 9, scope: !660)
!660 = distinct !DILexicalBlock(scope: !654, file: !76, line: 178, column: 8)
!661 = !DILocation(line: 178, column: 8, scope: !654)
!662 = !DILocation(line: 179, column: 7, scope: !660)
!663 = !DILocation(line: 179, column: 5, scope: !660)
!664 = !DILocation(line: 180, column: 8, scope: !665)
!665 = distinct !DILexicalBlock(scope: !654, file: !76, line: 180, column: 8)
!666 = !DILocation(line: 180, column: 17, scope: !665)
!667 = !DILocation(line: 180, column: 27, scope: !665)
!668 = !DILocation(line: 180, column: 8, scope: !654)
!669 = !DILocation(line: 181, column: 61, scope: !670)
!670 = distinct !DILexicalBlock(scope: !665, file: !76, line: 180, column: 39)
!671 = !DILocation(line: 182, column: 10, scope: !670)
!672 = !DILocation(line: 182, column: 19, scope: !670)
!673 = !DILocation(line: 182, column: 29, scope: !670)
!674 = !DILocation(line: 181, column: 64, scope: !670)
!675 = !DILocation(line: 183, column: 9, scope: !670)
!676 = !DILocation(line: 181, column: 5, scope: !670)
!677 = !DILocation(line: 184, column: 4, scope: !670)
!678 = !DILocation(line: 184, column: 15, scope: !679)
!679 = distinct !DILexicalBlock(scope: !665, file: !76, line: 184, column: 15)
!680 = !DILocation(line: 184, column: 24, scope: !679)
!681 = !DILocation(line: 184, column: 34, scope: !679)
!682 = !DILocation(line: 184, column: 15, scope: !665)
!683 = !DILocation(line: 185, column: 61, scope: !684)
!684 = distinct !DILexicalBlock(scope: !679, file: !76, line: 184, column: 47)
!685 = !DILocation(line: 186, column: 10, scope: !684)
!686 = !DILocation(line: 186, column: 19, scope: !684)
!687 = !DILocation(line: 186, column: 30, scope: !684)
!688 = !DILocation(line: 185, column: 64, scope: !684)
!689 = !DILocation(line: 187, column: 9, scope: !684)
!690 = !DILocation(line: 185, column: 5, scope: !684)
!691 = !DILocation(line: 188, column: 4, scope: !684)
!692 = !DILocation(line: 189, column: 26, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !76, line: 189, column: 9)
!694 = distinct !DILexicalBlock(scope: !679, file: !76, line: 188, column: 11)
!695 = !DILocation(line: 189, column: 9, scope: !693)
!696 = !DILocation(line: 189, column: 9, scope: !694)
!697 = !DILocation(line: 193, column: 10, scope: !698)
!698 = distinct !DILexicalBlock(scope: !693, file: !76, line: 189, column: 33)
!699 = !DILocation(line: 194, column: 10, scope: !698)
!700 = !DILocation(line: 190, column: 6, scope: !698)
!701 = !DILocation(line: 195, column: 5, scope: !698)
!702 = !DILocation(line: 196, column: 78, scope: !703)
!703 = distinct !DILexicalBlock(scope: !693, file: !76, line: 195, column: 12)
!704 = !DILocation(line: 197, column: 17, scope: !703)
!705 = !DILocation(line: 197, column: 26, scope: !703)
!706 = !DILocation(line: 197, column: 10, scope: !703)
!707 = !DILocation(line: 196, column: 6, scope: !703)
!708 = !DILocation(line: 201, column: 2, scope: !647)
!709 = !DILocation(line: 202, column: 1, scope: !577)
!710 = distinct !DISubprogram(name: "turn_log_func_default", scope: !76, file: !76, line: 489, type: !711, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !713, !59, null}
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "TURN_LOG_LEVEL", file: !18, line: 52, baseType: !17)
!714 = !DILocalVariable(name: "level", arg: 1, scope: !710, file: !76, line: 489, type: !713)
!715 = !DILocation(line: 489, column: 43, scope: !710)
!716 = !DILocalVariable(name: "format", arg: 2, scope: !710, file: !76, line: 489, type: !59)
!717 = !DILocation(line: 489, column: 62, scope: !710)
!718 = !DILocalVariable(name: "args", scope: !710, file: !76, line: 491, type: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !720, line: 22, baseType: !721)
!720 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stdarg.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !722, baseType: !723)
!722 = !DIFile(filename: "src/apps/common/ns_turn_utils.c", directory: "/home/raj/coturn")
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 192, elements: !115)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !725)
!725 = !{!726, !727, !728, !729}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !724, file: !722, line: 491, baseType: !7, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !724, file: !722, line: 491, baseType: !7, size: 32, offset: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !724, file: !722, line: 491, baseType: !58, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !724, file: !722, line: 491, baseType: !58, size: 64, offset: 128)
!730 = !DILocation(line: 491, column: 10, scope: !710)
!731 = !DILocation(line: 492, column: 2, scope: !710)
!732 = !DILocalVariable(name: "s", scope: !710, file: !76, line: 498, type: !252)
!733 = !DILocation(line: 498, column: 7, scope: !710)
!734 = !DILocalVariable(name: "so_far", scope: !710, file: !76, line: 500, type: !63)
!735 = !DILocation(line: 500, column: 9, scope: !710)
!736 = !DILocation(line: 501, column: 6, scope: !737)
!737 = distinct !DILexicalBlock(scope: !710, file: !76, line: 501, column: 6)
!738 = !DILocation(line: 501, column: 6, scope: !710)
!739 = !DILocalVariable(name: "now", scope: !740, file: !76, line: 502, type: !741)
!740 = distinct !DILexicalBlock(scope: !737, file: !76, line: 501, column: 36)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !742, line: 10, baseType: !743)
!742 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !72, line: 160, baseType: !57)
!744 = !DILocation(line: 502, column: 10, scope: !740)
!745 = !DILocation(line: 502, column: 16, scope: !740)
!746 = !DILocation(line: 503, column: 22, scope: !740)
!747 = !DILocation(line: 503, column: 63, scope: !740)
!748 = !DILocation(line: 503, column: 13, scope: !740)
!749 = !DILocation(line: 503, column: 10, scope: !740)
!750 = !DILocation(line: 504, column: 2, scope: !740)
!751 = !DILocation(line: 505, column: 22, scope: !752)
!752 = distinct !DILexicalBlock(scope: !737, file: !76, line: 504, column: 9)
!753 = !DILocation(line: 505, column: 60, scope: !752)
!754 = !DILocation(line: 505, column: 45, scope: !752)
!755 = !DILocation(line: 505, column: 13, scope: !752)
!756 = !DILocation(line: 505, column: 10, scope: !752)
!757 = !DILocation(line: 507, column: 21, scope: !710)
!758 = !DILocation(line: 507, column: 25, scope: !710)
!759 = !DILocation(line: 507, column: 23, scope: !710)
!760 = !DILocation(line: 507, column: 49, scope: !710)
!761 = !DILocation(line: 507, column: 55, scope: !710)
!762 = !DILocation(line: 507, column: 48, scope: !710)
!763 = !DILocation(line: 507, column: 12, scope: !710)
!764 = !DILocation(line: 507, column: 9, scope: !710)
!765 = !DILocation(line: 508, column: 22, scope: !710)
!766 = !DILocation(line: 508, column: 26, scope: !710)
!767 = !DILocation(line: 508, column: 24, scope: !710)
!768 = !DILocation(line: 508, column: 46, scope: !710)
!769 = !DILocation(line: 508, column: 52, scope: !710)
!770 = !DILocation(line: 508, column: 43, scope: !710)
!771 = !DILocation(line: 508, column: 57, scope: !710)
!772 = !DILocation(line: 508, column: 65, scope: !710)
!773 = !DILocation(line: 508, column: 12, scope: !710)
!774 = !DILocation(line: 508, column: 9, scope: !710)
!775 = !DILocation(line: 509, column: 6, scope: !776)
!776 = distinct !DILexicalBlock(scope: !710, file: !76, line: 509, column: 5)
!777 = !DILocation(line: 509, column: 5, scope: !710)
!778 = !DILocation(line: 510, column: 10, scope: !776)
!779 = !DILocation(line: 510, column: 13, scope: !776)
!780 = !DILocation(line: 510, column: 24, scope: !776)
!781 = !DILocation(line: 510, column: 3, scope: !776)
!782 = !DILocation(line: 512, column: 5, scope: !783)
!783 = distinct !DILexicalBlock(scope: !710, file: !76, line: 512, column: 5)
!784 = !DILocation(line: 512, column: 5, scope: !710)
!785 = !DILocation(line: 513, column: 27, scope: !786)
!786 = distinct !DILexicalBlock(scope: !783, file: !76, line: 512, column: 16)
!787 = !DILocation(line: 513, column: 10, scope: !786)
!788 = !DILocation(line: 513, column: 39, scope: !786)
!789 = !DILocation(line: 513, column: 3, scope: !786)
!790 = !DILocation(line: 514, column: 2, scope: !786)
!791 = !DILocation(line: 515, column: 3, scope: !792)
!792 = distinct !DILexicalBlock(scope: !783, file: !76, line: 514, column: 9)
!793 = !DILocation(line: 516, column: 3, scope: !792)
!794 = !DILocation(line: 517, column: 14, scope: !795)
!795 = distinct !DILexicalBlock(scope: !792, file: !76, line: 517, column: 6)
!796 = !DILocation(line: 517, column: 28, scope: !795)
!797 = !DILocation(line: 517, column: 6, scope: !795)
!798 = !DILocation(line: 517, column: 30, scope: !795)
!799 = !DILocation(line: 517, column: 6, scope: !792)
!800 = !DILocation(line: 518, column: 4, scope: !801)
!801 = distinct !DILexicalBlock(scope: !795, file: !76, line: 517, column: 34)
!802 = !DILocation(line: 519, column: 3, scope: !801)
!803 = !DILocation(line: 519, column: 20, scope: !804)
!804 = distinct !DILexicalBlock(scope: !795, file: !76, line: 519, column: 13)
!805 = !DILocation(line: 519, column: 13, scope: !804)
!806 = !DILocation(line: 519, column: 29, scope: !804)
!807 = !DILocation(line: 519, column: 13, scope: !795)
!808 = !DILocation(line: 520, column: 4, scope: !809)
!809 = distinct !DILexicalBlock(scope: !804, file: !76, line: 519, column: 33)
!810 = !DILocation(line: 521, column: 3, scope: !809)
!811 = !DILocation(line: 522, column: 3, scope: !792)
!812 = !DILocation(line: 525, column: 2, scope: !710)
!813 = !DILocation(line: 527, column: 1, scope: !710)
!814 = distinct !DISubprogram(name: "set_logfile", scope: !76, file: !76, line: 240, type: !815, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !59}
!817 = !DILocalVariable(name: "fn", arg: 1, scope: !814, file: !76, line: 240, type: !59)
!818 = !DILocation(line: 240, column: 30, scope: !814)
!819 = !DILocation(line: 242, column: 5, scope: !820)
!820 = distinct !DILexicalBlock(scope: !814, file: !76, line: 242, column: 5)
!821 = !DILocation(line: 242, column: 5, scope: !814)
!822 = !DILocation(line: 243, column: 3, scope: !823)
!823 = distinct !DILexicalBlock(scope: !820, file: !76, line: 242, column: 9)
!824 = !DILocation(line: 244, column: 13, scope: !825)
!825 = distinct !DILexicalBlock(scope: !823, file: !76, line: 244, column: 6)
!826 = !DILocation(line: 244, column: 6, scope: !825)
!827 = !DILocation(line: 244, column: 6, scope: !823)
!828 = !DILocation(line: 245, column: 4, scope: !829)
!829 = distinct !DILexicalBlock(scope: !825, file: !76, line: 244, column: 30)
!830 = !DILocation(line: 246, column: 4, scope: !829)
!831 = !DILocation(line: 246, column: 4, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !76, line: 246, column: 4)
!833 = distinct !DILexicalBlock(scope: !829, file: !76, line: 246, column: 4)
!834 = !DILocation(line: 246, column: 4, scope: !833)
!835 = !DILocalVariable(name: "szdst", scope: !836, file: !76, line: 246, type: !63)
!836 = distinct !DILexicalBlock(scope: !837, file: !76, line: 246, column: 4)
!837 = distinct !DILexicalBlock(scope: !838, file: !76, line: 246, column: 4)
!838 = distinct !DILexicalBlock(scope: !832, file: !76, line: 246, column: 4)
!839 = !DILocation(line: 246, column: 4, scope: !836)
!840 = !DILocation(line: 246, column: 4, scope: !838)
!841 = !DILocation(line: 247, column: 3, scope: !829)
!842 = !DILocation(line: 248, column: 3, scope: !823)
!843 = !DILocation(line: 249, column: 2, scope: !823)
!844 = !DILocation(line: 250, column: 1, scope: !814)
!845 = distinct !DISubprogram(name: "log_lock", scope: !76, file: !76, line: 218, type: !846, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!846 = !DISubroutineType(types: !847)
!847 = !{null}
!848 = !DILocation(line: 219, column: 6, scope: !849)
!849 = distinct !DILexicalBlock(scope: !845, file: !76, line: 219, column: 5)
!850 = !DILocation(line: 219, column: 5, scope: !845)
!851 = !DILocation(line: 220, column: 19, scope: !852)
!852 = distinct !DILexicalBlock(scope: !849, file: !76, line: 219, column: 24)
!853 = !DILocation(line: 221, column: 3, scope: !852)
!854 = !DILocation(line: 222, column: 2, scope: !852)
!855 = !DILocation(line: 223, column: 2, scope: !845)
!856 = !DILocation(line: 224, column: 1, scope: !845)
!857 = distinct !DISubprogram(name: "reset_rtpprintf", scope: !76, file: !76, line: 252, type: !846, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!858 = !DILocation(line: 254, column: 2, scope: !857)
!859 = !DILocation(line: 255, column: 5, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !76, line: 255, column: 5)
!861 = !DILocation(line: 255, column: 5, scope: !857)
!862 = !DILocation(line: 256, column: 6, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !76, line: 256, column: 6)
!864 = distinct !DILexicalBlock(scope: !860, file: !76, line: 255, column: 15)
!865 = !DILocation(line: 256, column: 18, scope: !863)
!866 = !DILocation(line: 256, column: 15, scope: !863)
!867 = !DILocation(line: 256, column: 6, scope: !864)
!868 = !DILocation(line: 257, column: 11, scope: !863)
!869 = !DILocation(line: 257, column: 4, scope: !863)
!870 = !DILocation(line: 258, column: 12, scope: !864)
!871 = !DILocation(line: 259, column: 2, scope: !864)
!872 = !DILocation(line: 260, column: 2, scope: !857)
!873 = !DILocation(line: 261, column: 1, scope: !857)
!874 = distinct !DISubprogram(name: "log_unlock", scope: !76, file: !76, line: 226, type: !846, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!875 = !DILocation(line: 227, column: 2, scope: !874)
!876 = !DILocation(line: 228, column: 1, scope: !874)
!877 = distinct !DISubprogram(name: "set_log_to_syslog", scope: !76, file: !76, line: 421, type: !562, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!878 = !DILocalVariable(name: "val", arg: 1, scope: !877, file: !76, line: 421, type: !35)
!879 = !DILocation(line: 421, column: 28, scope: !877)
!880 = !DILocation(line: 423, column: 14, scope: !877)
!881 = !DILocation(line: 423, column: 12, scope: !877)
!882 = !DILocation(line: 424, column: 1, scope: !877)
!883 = distinct !DISubprogram(name: "set_simple_log", scope: !76, file: !76, line: 426, type: !562, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!884 = !DILocalVariable(name: "val", arg: 1, scope: !883, file: !76, line: 426, type: !35)
!885 = !DILocation(line: 426, column: 25, scope: !883)
!886 = !DILocation(line: 428, column: 15, scope: !883)
!887 = !DILocation(line: 428, column: 13, scope: !883)
!888 = !DILocation(line: 429, column: 1, scope: !883)
!889 = distinct !DISubprogram(name: "rollover_logfile", scope: !76, file: !76, line: 434, type: !846, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!890 = !DILocation(line: 436, column: 5, scope: !891)
!891 = distinct !DILexicalBlock(scope: !889, file: !76, line: 436, column: 5)
!892 = !DILocation(line: 436, column: 15, scope: !891)
!893 = !DILocation(line: 436, column: 20, scope: !891)
!894 = !DILocation(line: 436, column: 19, scope: !891)
!895 = !DILocation(line: 436, column: 5, scope: !889)
!896 = !DILocation(line: 437, column: 3, scope: !891)
!897 = !DILocalVariable(name: "f", scope: !898, file: !76, line: 440, type: !257)
!898 = distinct !DILexicalBlock(scope: !889, file: !76, line: 439, column: 2)
!899 = !DILocation(line: 440, column: 9, scope: !898)
!900 = !DILocation(line: 440, column: 13, scope: !898)
!901 = !DILocation(line: 441, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !898, file: !76, line: 441, column: 6)
!903 = !DILocation(line: 441, column: 6, scope: !898)
!904 = !DILocation(line: 442, column: 12, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !76, line: 441, column: 10)
!906 = !DILocation(line: 442, column: 4, scope: !905)
!907 = !DILocation(line: 443, column: 4, scope: !905)
!908 = !DILocation(line: 444, column: 4, scope: !905)
!909 = !DILocation(line: 445, column: 4, scope: !905)
!910 = !DILocation(line: 447, column: 11, scope: !911)
!911 = distinct !DILexicalBlock(scope: !902, file: !76, line: 446, column: 10)
!912 = !DILocation(line: 447, column: 4, scope: !911)
!913 = !DILocation(line: 451, column: 5, scope: !914)
!914 = distinct !DILexicalBlock(scope: !889, file: !76, line: 451, column: 5)
!915 = !DILocation(line: 451, column: 5, scope: !889)
!916 = !DILocation(line: 452, column: 3, scope: !914)
!917 = !DILocation(line: 454, column: 2, scope: !889)
!918 = !DILocation(line: 455, column: 5, scope: !919)
!919 = distinct !DILexicalBlock(scope: !889, file: !76, line: 455, column: 5)
!920 = !DILocation(line: 455, column: 14, scope: !919)
!921 = !DILocation(line: 455, column: 17, scope: !919)
!922 = !DILocation(line: 455, column: 27, scope: !919)
!923 = !DILocation(line: 455, column: 31, scope: !919)
!924 = !DILocation(line: 455, column: 43, scope: !919)
!925 = !DILocation(line: 455, column: 40, scope: !919)
!926 = !DILocation(line: 455, column: 5, scope: !889)
!927 = !DILocalVariable(name: "logf", scope: !928, file: !76, line: 456, type: !252)
!928 = distinct !DILexicalBlock(scope: !919, file: !76, line: 455, column: 52)
!929 = !DILocation(line: 456, column: 8, scope: !928)
!930 = !DILocation(line: 458, column: 3, scope: !928)
!931 = !DILocation(line: 459, column: 20, scope: !932)
!932 = distinct !DILexicalBlock(scope: !928, file: !76, line: 459, column: 6)
!933 = !DILocation(line: 459, column: 6, scope: !932)
!934 = !DILocation(line: 459, column: 6, scope: !928)
!935 = !DILocation(line: 460, column: 11, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !76, line: 459, column: 27)
!937 = !DILocation(line: 460, column: 4, scope: !936)
!938 = !DILocation(line: 461, column: 13, scope: !936)
!939 = !DILocation(line: 462, column: 21, scope: !936)
!940 = !DILocation(line: 462, column: 15, scope: !936)
!941 = !DILocation(line: 462, column: 13, scope: !936)
!942 = !DILocation(line: 463, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !936, file: !76, line: 463, column: 7)
!944 = !DILocation(line: 463, column: 7, scope: !936)
!945 = !DILocation(line: 464, column: 5, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !76, line: 463, column: 17)
!947 = !DILocalVariable(name: "szdst", scope: !948, file: !76, line: 464, type: !63)
!948 = distinct !DILexicalBlock(scope: !949, file: !76, line: 464, column: 5)
!949 = distinct !DILexicalBlock(scope: !950, file: !76, line: 464, column: 5)
!950 = distinct !DILexicalBlock(scope: !951, file: !76, line: 464, column: 5)
!951 = distinct !DILexicalBlock(scope: !952, file: !76, line: 464, column: 5)
!952 = distinct !DILexicalBlock(scope: !946, file: !76, line: 464, column: 5)
!953 = !DILocation(line: 464, column: 5, scope: !948)
!954 = !DILocation(line: 464, column: 5, scope: !952)
!955 = !DILocation(line: 465, column: 5, scope: !946)
!956 = !DILocation(line: 466, column: 4, scope: !946)
!957 = !DILocation(line: 467, column: 16, scope: !958)
!958 = distinct !DILexicalBlock(scope: !943, file: !76, line: 466, column: 11)
!959 = !DILocation(line: 467, column: 14, scope: !958)
!960 = !DILocation(line: 469, column: 3, scope: !936)
!961 = !DILocation(line: 470, column: 2, scope: !928)
!962 = !DILocation(line: 471, column: 2, scope: !889)
!963 = !DILocation(line: 472, column: 1, scope: !889)
!964 = distinct !DISubprogram(name: "set_log_file_name_func", scope: !76, file: !76, line: 265, type: !965, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !61, !61, !63}
!967 = !DILocalVariable(name: "base", arg: 1, scope: !964, file: !76, line: 265, type: !61)
!968 = !DILocation(line: 265, column: 42, scope: !964)
!969 = !DILocalVariable(name: "f", arg: 2, scope: !964, file: !76, line: 265, type: !61)
!970 = !DILocation(line: 265, column: 54, scope: !964)
!971 = !DILocalVariable(name: "fsz", arg: 3, scope: !964, file: !76, line: 265, type: !63)
!972 = !DILocation(line: 265, column: 64, scope: !964)
!973 = !DILocation(line: 267, column: 5, scope: !974)
!974 = distinct !DILexicalBlock(scope: !964, file: !76, line: 267, column: 5)
!975 = !DILocation(line: 267, column: 5, scope: !964)
!976 = !DILocation(line: 268, column: 12, scope: !977)
!977 = distinct !DILexicalBlock(scope: !974, file: !76, line: 267, column: 17)
!978 = !DILocation(line: 268, column: 14, scope: !977)
!979 = !DILocation(line: 268, column: 19, scope: !977)
!980 = !DILocation(line: 268, column: 4, scope: !977)
!981 = !DILocation(line: 269, column: 4, scope: !977)
!982 = !DILocalVariable(name: "logdate", scope: !964, file: !76, line: 272, type: !983)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1000, elements: !984)
!984 = !{!985}
!985 = !DISubrange(count: 125)
!986 = !DILocation(line: 272, column: 7, scope: !964)
!987 = !DILocalVariable(name: "tail", scope: !964, file: !76, line: 273, type: !61)
!988 = !DILocation(line: 273, column: 8, scope: !964)
!989 = !DILocation(line: 273, column: 13, scope: !964)
!990 = !DILocation(line: 275, column: 11, scope: !964)
!991 = !DILocation(line: 275, column: 2, scope: !964)
!992 = !DILocalVariable(name: "base1", scope: !964, file: !76, line: 277, type: !61)
!993 = !DILocation(line: 277, column: 8, scope: !964)
!994 = !DILocation(line: 277, column: 21, scope: !964)
!995 = !DILocation(line: 277, column: 14, scope: !964)
!996 = !DILocalVariable(name: "len", scope: !964, file: !76, line: 279, type: !35)
!997 = !DILocation(line: 279, column: 6, scope: !964)
!998 = !DILocation(line: 279, column: 22, scope: !964)
!999 = !DILocation(line: 279, column: 15, scope: !964)
!1000 = !DILocation(line: 279, column: 10, scope: !964)
!1001 = !DILocation(line: 281, column: 2, scope: !964)
!1002 = !DILocation(line: 283, column: 2, scope: !964)
!1003 = !DILocation(line: 283, column: 8, scope: !964)
!1004 = !DILocation(line: 283, column: 11, scope: !964)
!1005 = !DILocation(line: 284, column: 7, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !76, line: 284, column: 6)
!1007 = distinct !DILexicalBlock(scope: !964, file: !76, line: 283, column: 16)
!1008 = !DILocation(line: 284, column: 13, scope: !1006)
!1009 = !DILocation(line: 284, column: 17, scope: !1006)
!1010 = !DILocation(line: 284, column: 23, scope: !1006)
!1011 = !DILocation(line: 284, column: 26, scope: !1006)
!1012 = !DILocation(line: 284, column: 32, scope: !1006)
!1013 = !DILocation(line: 284, column: 36, scope: !1006)
!1014 = !DILocation(line: 284, column: 6, scope: !1007)
!1015 = !DILocation(line: 285, column: 4, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1006, file: !76, line: 284, column: 45)
!1017 = !DILocation(line: 285, column: 10, scope: !1016)
!1018 = !DILocation(line: 285, column: 14, scope: !1016)
!1019 = !DILocation(line: 286, column: 3, scope: !1016)
!1020 = !DILocation(line: 287, column: 3, scope: !1007)
!1021 = distinct !{!1021, !1002, !1022, !1023}
!1022 = !DILocation(line: 288, column: 2, scope: !964)
!1023 = !{!"llvm.loop.mustprogress"}
!1024 = !DILocation(line: 290, column: 18, scope: !964)
!1025 = !DILocation(line: 290, column: 11, scope: !964)
!1026 = !DILocation(line: 290, column: 6, scope: !964)
!1027 = !DILocation(line: 290, column: 5, scope: !964)
!1028 = !DILocation(line: 292, column: 2, scope: !964)
!1029 = !DILocation(line: 292, column: 8, scope: !964)
!1030 = !DILocation(line: 292, column: 11, scope: !964)
!1031 = !DILocation(line: 293, column: 6, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !76, line: 293, column: 6)
!1033 = distinct !DILexicalBlock(scope: !964, file: !76, line: 292, column: 16)
!1034 = !DILocation(line: 293, column: 12, scope: !1032)
!1035 = !DILocation(line: 293, column: 16, scope: !1032)
!1036 = !DILocation(line: 293, column: 6, scope: !1033)
!1037 = !DILocation(line: 294, column: 4, scope: !1032)
!1038 = !DILocation(line: 295, column: 11, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1032, file: !76, line: 295, column: 11)
!1040 = !DILocation(line: 295, column: 17, scope: !1039)
!1041 = !DILocation(line: 295, column: 21, scope: !1039)
!1042 = !DILocation(line: 295, column: 11, scope: !1032)
!1043 = !DILocation(line: 296, column: 9, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1039, file: !76, line: 295, column: 28)
!1045 = !DILocation(line: 296, column: 4, scope: !1044)
!1046 = !DILocation(line: 297, column: 16, scope: !1044)
!1047 = !DILocation(line: 297, column: 22, scope: !1044)
!1048 = !DILocation(line: 297, column: 21, scope: !1044)
!1049 = !DILocation(line: 297, column: 9, scope: !1044)
!1050 = !DILocation(line: 297, column: 8, scope: !1044)
!1051 = !DILocation(line: 298, column: 4, scope: !1044)
!1052 = !DILocation(line: 298, column: 10, scope: !1044)
!1053 = !DILocation(line: 298, column: 14, scope: !1044)
!1054 = !DILocation(line: 299, column: 14, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1044, file: !76, line: 299, column: 7)
!1056 = !DILocation(line: 299, column: 7, scope: !1055)
!1057 = !DILocation(line: 299, column: 19, scope: !1055)
!1058 = !DILocation(line: 299, column: 7, scope: !1044)
!1059 = !DILocation(line: 300, column: 10, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !76, line: 299, column: 23)
!1061 = !DILocation(line: 300, column: 5, scope: !1060)
!1062 = !DILocation(line: 301, column: 12, scope: !1060)
!1063 = !DILocation(line: 301, column: 10, scope: !1060)
!1064 = !DILocation(line: 302, column: 4, scope: !1060)
!1065 = !DILocation(line: 303, column: 4, scope: !1044)
!1066 = !DILocation(line: 305, column: 3, scope: !1033)
!1067 = distinct !{!1067, !1028, !1068, !1023}
!1068 = !DILocation(line: 306, column: 2, scope: !964)
!1069 = !DILocation(line: 308, column: 18, scope: !964)
!1070 = !DILocation(line: 308, column: 11, scope: !964)
!1071 = !DILocation(line: 308, column: 6, scope: !964)
!1072 = !DILocation(line: 308, column: 5, scope: !964)
!1073 = !DILocation(line: 309, column: 5, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !964, file: !76, line: 309, column: 5)
!1075 = !DILocation(line: 309, column: 8, scope: !1074)
!1076 = !DILocation(line: 309, column: 11, scope: !1074)
!1077 = !DILocation(line: 309, column: 15, scope: !1074)
!1078 = !DILocation(line: 309, column: 21, scope: !1074)
!1079 = !DILocation(line: 309, column: 24, scope: !1074)
!1080 = !DILocation(line: 309, column: 27, scope: !1074)
!1081 = !DILocation(line: 309, column: 34, scope: !1074)
!1082 = !DILocation(line: 309, column: 38, scope: !1074)
!1083 = !DILocation(line: 309, column: 44, scope: !1074)
!1084 = !DILocation(line: 309, column: 47, scope: !1074)
!1085 = !DILocation(line: 309, column: 50, scope: !1074)
!1086 = !DILocation(line: 309, column: 57, scope: !1074)
!1087 = !DILocation(line: 309, column: 61, scope: !1074)
!1088 = !DILocation(line: 309, column: 67, scope: !1074)
!1089 = !DILocation(line: 309, column: 70, scope: !1074)
!1090 = !DILocation(line: 309, column: 73, scope: !1074)
!1091 = !DILocation(line: 309, column: 5, scope: !964)
!1092 = !DILocation(line: 310, column: 13, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1074, file: !76, line: 309, column: 81)
!1094 = !DILocation(line: 310, column: 41, scope: !1093)
!1095 = !DILocation(line: 310, column: 47, scope: !1093)
!1096 = !DILocation(line: 310, column: 55, scope: !1093)
!1097 = !DILocation(line: 310, column: 4, scope: !1093)
!1098 = !DILocation(line: 311, column: 2, scope: !1093)
!1099 = !DILocation(line: 312, column: 13, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1074, file: !76, line: 311, column: 9)
!1101 = !DILocation(line: 312, column: 40, scope: !1100)
!1102 = !DILocation(line: 312, column: 46, scope: !1100)
!1103 = !DILocation(line: 312, column: 54, scope: !1100)
!1104 = !DILocation(line: 312, column: 4, scope: !1100)
!1105 = !DILocation(line: 315, column: 7, scope: !964)
!1106 = !DILocation(line: 315, column: 2, scope: !964)
!1107 = !DILocation(line: 316, column: 7, scope: !964)
!1108 = !DILocation(line: 316, column: 2, scope: !964)
!1109 = !DILocation(line: 317, column: 1, scope: !964)
!1110 = distinct !DISubprogram(name: "log_time", scope: !76, file: !76, line: 55, type: !1111, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!67}
!1113 = !DILocation(line: 57, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !76, line: 57, column: 6)
!1115 = !DILocation(line: 57, column: 6, scope: !1110)
!1116 = !DILocation(line: 58, column: 22, scope: !1114)
!1117 = !DILocation(line: 58, column: 20, scope: !1114)
!1118 = !DILocation(line: 58, column: 5, scope: !1114)
!1119 = !DILocation(line: 60, column: 6, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1110, file: !76, line: 60, column: 6)
!1121 = !DILocation(line: 60, column: 6, scope: !1110)
!1122 = !DILocation(line: 61, column: 13, scope: !1120)
!1123 = !DILocation(line: 61, column: 31, scope: !1120)
!1124 = !DILocation(line: 61, column: 29, scope: !1120)
!1125 = !DILocation(line: 61, column: 5, scope: !1120)
!1126 = !DILocation(line: 63, column: 11, scope: !1110)
!1127 = !DILocation(line: 63, column: 25, scope: !1110)
!1128 = !DILocation(line: 63, column: 23, scope: !1110)
!1129 = !DILocation(line: 63, column: 3, scope: !1110)
!1130 = !DILocation(line: 64, column: 1, scope: !1110)
!1131 = distinct !DISubprogram(name: "get_syslog_level", scope: !76, file: !76, line: 474, type: !1132, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!35, !713}
!1134 = !DILocalVariable(name: "level", arg: 1, scope: !1131, file: !76, line: 474, type: !713)
!1135 = !DILocation(line: 474, column: 44, scope: !1131)
!1136 = !DILocation(line: 476, column: 9, scope: !1131)
!1137 = !DILocation(line: 476, column: 2, scope: !1131)
!1138 = !DILocation(line: 478, column: 3, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1131, file: !76, line: 476, column: 16)
!1140 = !DILocation(line: 480, column: 3, scope: !1139)
!1141 = !DILocation(line: 482, column: 3, scope: !1139)
!1142 = !DILocation(line: 485, column: 2, scope: !1139)
!1143 = !DILocation(line: 486, column: 2, scope: !1131)
!1144 = !DILocation(line: 487, column: 1, scope: !1131)
!1145 = distinct !DISubprogram(name: "set_rtpfile", scope: !76, file: !76, line: 326, type: !846, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!1146 = !DILocation(line: 328, column: 5, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1145, file: !76, line: 328, column: 5)
!1148 = !DILocation(line: 328, column: 5, scope: !1145)
!1149 = !DILocation(line: 329, column: 3, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !76, line: 328, column: 24)
!1151 = !DILocation(line: 330, column: 3, scope: !1150)
!1152 = !DILocation(line: 331, column: 21, scope: !1150)
!1153 = !DILocation(line: 332, column: 2, scope: !1150)
!1154 = !DILocation(line: 334, column: 5, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1145, file: !76, line: 334, column: 5)
!1156 = !DILocation(line: 334, column: 5, scope: !1145)
!1157 = !DILocation(line: 335, column: 3, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !76, line: 334, column: 16)
!1159 = !DILocation(line: 336, column: 14, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !76, line: 336, column: 13)
!1161 = !DILocation(line: 336, column: 13, scope: !1155)
!1162 = !DILocation(line: 337, column: 3, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !76, line: 336, column: 24)
!1164 = !DILocation(line: 338, column: 6, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1163, file: !76, line: 338, column: 6)
!1166 = !DILocation(line: 338, column: 6, scope: !1163)
!1167 = !DILocation(line: 339, column: 8, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !76, line: 339, column: 7)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !76, line: 338, column: 22)
!1170 = !DILocation(line: 339, column: 7, scope: !1169)
!1171 = !DILocation(line: 340, column: 16, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !76, line: 339, column: 38)
!1173 = !DILocation(line: 340, column: 14, scope: !1172)
!1174 = !DILocation(line: 341, column: 15, scope: !1172)
!1175 = !DILocation(line: 342, column: 4, scope: !1172)
!1176 = !DILocation(line: 342, column: 15, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1168, file: !76, line: 342, column: 14)
!1178 = !DILocation(line: 342, column: 43, scope: !1177)
!1179 = !DILocation(line: 342, column: 47, scope: !1177)
!1180 = !DILocation(line: 342, column: 14, scope: !1168)
!1181 = !DILocation(line: 343, column: 16, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !76, line: 342, column: 72)
!1183 = !DILocation(line: 343, column: 14, scope: !1182)
!1184 = !DILocation(line: 344, column: 19, scope: !1182)
!1185 = !DILocation(line: 345, column: 4, scope: !1182)
!1186 = !DILocation(line: 346, column: 5, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1177, file: !76, line: 345, column: 11)
!1188 = !DILocation(line: 347, column: 16, scope: !1187)
!1189 = !DILocation(line: 347, column: 14, scope: !1187)
!1190 = !DILocation(line: 348, column: 8, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1187, file: !76, line: 348, column: 8)
!1192 = !DILocation(line: 348, column: 8, scope: !1187)
!1193 = !DILocation(line: 349, column: 6, scope: !1191)
!1194 = !DILocation(line: 351, column: 9, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1169, file: !76, line: 351, column: 8)
!1196 = !DILocation(line: 351, column: 8, scope: !1169)
!1197 = !DILocation(line: 352, column: 13, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !76, line: 351, column: 19)
!1199 = !DILocation(line: 352, column: 5, scope: !1198)
!1200 = !DILocation(line: 353, column: 4, scope: !1198)
!1201 = !DILocation(line: 354, column: 5, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1195, file: !76, line: 353, column: 11)
!1203 = !DILocation(line: 356, column: 3, scope: !1169)
!1204 = !DILocation(line: 357, column: 2, scope: !1163)
!1205 = !DILocation(line: 359, column: 6, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1145, file: !76, line: 359, column: 5)
!1207 = !DILocation(line: 359, column: 5, scope: !1145)
!1208 = !DILocalVariable(name: "logbase", scope: !1209, file: !76, line: 361, type: !252)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !76, line: 359, column: 16)
!1210 = !DILocation(line: 361, column: 8, scope: !1209)
!1211 = !DILocalVariable(name: "logtail", scope: !1209, file: !76, line: 362, type: !252)
!1212 = !DILocation(line: 362, column: 8, scope: !1209)
!1213 = !DILocalVariable(name: "logf", scope: !1209, file: !76, line: 363, type: !252)
!1214 = !DILocation(line: 363, column: 8, scope: !1209)
!1215 = !DILocation(line: 365, column: 6, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1209, file: !76, line: 365, column: 6)
!1217 = !DILocation(line: 365, column: 6, scope: !1209)
!1218 = !DILocation(line: 366, column: 13, scope: !1216)
!1219 = !DILocation(line: 366, column: 4, scope: !1216)
!1220 = !DILocation(line: 368, column: 13, scope: !1216)
!1221 = !DILocation(line: 368, column: 53, scope: !1216)
!1222 = !DILocation(line: 368, column: 4, scope: !1216)
!1223 = !DILocation(line: 370, column: 16, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1209, file: !76, line: 370, column: 7)
!1225 = !DILocation(line: 370, column: 65, scope: !1224)
!1226 = !DILocation(line: 370, column: 7, scope: !1224)
!1227 = !DILocation(line: 370, column: 73, scope: !1224)
!1228 = !DILocation(line: 370, column: 7, scope: !1209)
!1229 = !DILocation(line: 371, column: 4, scope: !1224)
!1230 = !DILocation(line: 373, column: 3, scope: !1209)
!1231 = !DILocation(line: 375, column: 20, scope: !1209)
!1232 = !DILocation(line: 375, column: 14, scope: !1209)
!1233 = !DILocation(line: 375, column: 12, scope: !1209)
!1234 = !DILocation(line: 376, column: 6, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1209, file: !76, line: 376, column: 6)
!1236 = !DILocation(line: 376, column: 6, scope: !1209)
!1237 = !DILocation(line: 377, column: 64, scope: !1235)
!1238 = !DILocation(line: 377, column: 4, scope: !1235)
!1239 = !DILocation(line: 379, column: 17, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !76, line: 379, column: 8)
!1241 = distinct !DILexicalBlock(scope: !1235, file: !76, line: 378, column: 8)
!1242 = !DILocation(line: 379, column: 55, scope: !1240)
!1243 = !DILocation(line: 379, column: 8, scope: !1240)
!1244 = !DILocation(line: 379, column: 63, scope: !1240)
!1245 = !DILocation(line: 379, column: 8, scope: !1241)
!1246 = !DILocation(line: 380, column: 5, scope: !1240)
!1247 = !DILocation(line: 382, column: 4, scope: !1241)
!1248 = !DILocation(line: 383, column: 21, scope: !1241)
!1249 = !DILocation(line: 383, column: 15, scope: !1241)
!1250 = !DILocation(line: 383, column: 13, scope: !1241)
!1251 = !DILocation(line: 384, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1241, file: !76, line: 384, column: 7)
!1253 = !DILocation(line: 384, column: 7, scope: !1241)
!1254 = !DILocation(line: 385, column: 65, scope: !1252)
!1255 = !DILocation(line: 385, column: 5, scope: !1252)
!1256 = !DILocation(line: 387, column: 18, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !76, line: 387, column: 9)
!1258 = distinct !DILexicalBlock(scope: !1252, file: !76, line: 386, column: 9)
!1259 = !DILocation(line: 387, column: 56, scope: !1257)
!1260 = !DILocation(line: 387, column: 9, scope: !1257)
!1261 = !DILocation(line: 387, column: 64, scope: !1257)
!1262 = !DILocation(line: 387, column: 9, scope: !1258)
!1263 = !DILocation(line: 388, column: 6, scope: !1257)
!1264 = !DILocation(line: 390, column: 5, scope: !1258)
!1265 = !DILocation(line: 391, column: 22, scope: !1258)
!1266 = !DILocation(line: 391, column: 16, scope: !1258)
!1267 = !DILocation(line: 391, column: 14, scope: !1258)
!1268 = !DILocation(line: 392, column: 8, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1258, file: !76, line: 392, column: 8)
!1270 = !DILocation(line: 392, column: 8, scope: !1258)
!1271 = !DILocation(line: 393, column: 66, scope: !1269)
!1272 = !DILocation(line: 393, column: 6, scope: !1269)
!1273 = !DILocation(line: 395, column: 19, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !76, line: 395, column: 10)
!1275 = distinct !DILexicalBlock(scope: !1269, file: !76, line: 394, column: 10)
!1276 = !DILocation(line: 395, column: 53, scope: !1274)
!1277 = !DILocation(line: 395, column: 10, scope: !1274)
!1278 = !DILocation(line: 395, column: 61, scope: !1274)
!1279 = !DILocation(line: 395, column: 10, scope: !1275)
!1280 = !DILocation(line: 396, column: 7, scope: !1274)
!1281 = !DILocation(line: 397, column: 6, scope: !1275)
!1282 = !DILocation(line: 398, column: 23, scope: !1275)
!1283 = !DILocation(line: 398, column: 17, scope: !1275)
!1284 = !DILocation(line: 398, column: 15, scope: !1275)
!1285 = !DILocation(line: 399, column: 9, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1275, file: !76, line: 399, column: 9)
!1287 = !DILocation(line: 399, column: 9, scope: !1275)
!1288 = !DILocation(line: 400, column: 67, scope: !1286)
!1289 = !DILocation(line: 400, column: 7, scope: !1286)
!1290 = !DILocation(line: 402, column: 16, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !76, line: 401, column: 11)
!1292 = !DILocation(line: 402, column: 45, scope: !1291)
!1293 = !DILocation(line: 402, column: 7, scope: !1291)
!1294 = !DILocation(line: 403, column: 7, scope: !1291)
!1295 = !DILocation(line: 404, column: 24, scope: !1291)
!1296 = !DILocation(line: 404, column: 18, scope: !1291)
!1297 = !DILocation(line: 404, column: 16, scope: !1291)
!1298 = !DILocation(line: 405, column: 10, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1291, file: !76, line: 405, column: 10)
!1300 = !DILocation(line: 405, column: 10, scope: !1291)
!1301 = !DILocation(line: 406, column: 68, scope: !1299)
!1302 = !DILocation(line: 406, column: 8, scope: !1299)
!1303 = !DILocation(line: 408, column: 19, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !76, line: 407, column: 12)
!1305 = !DILocation(line: 408, column: 17, scope: !1304)
!1306 = !DILocation(line: 409, column: 8, scope: !1304)
!1307 = !DILocation(line: 416, column: 3, scope: !1209)
!1308 = !DILocalVariable(name: "szdst", scope: !1309, file: !76, line: 416, type: !63)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !76, line: 416, column: 3)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !76, line: 416, column: 3)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !76, line: 416, column: 3)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !76, line: 416, column: 3)
!1313 = distinct !DILexicalBlock(scope: !1209, file: !76, line: 416, column: 3)
!1314 = !DILocation(line: 416, column: 3, scope: !1309)
!1315 = !DILocation(line: 416, column: 3, scope: !1313)
!1316 = !DILocation(line: 417, column: 3, scope: !1209)
!1317 = !DILocalVariable(name: "szdst", scope: !1318, file: !76, line: 417, type: !63)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !76, line: 417, column: 3)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !76, line: 417, column: 3)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !76, line: 417, column: 3)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !76, line: 417, column: 3)
!1322 = distinct !DILexicalBlock(scope: !1209, file: !76, line: 417, column: 3)
!1323 = !DILocation(line: 417, column: 3, scope: !1318)
!1324 = !DILocation(line: 417, column: 3, scope: !1322)
!1325 = !DILocation(line: 418, column: 2, scope: !1209)
!1326 = !DILocation(line: 419, column: 1, scope: !1145)
!1327 = distinct !DISubprogram(name: "get_default_protocol_port", scope: !76, file: !76, line: 531, type: !1328, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!35, !59, !63}
!1330 = !DILocalVariable(name: "scheme", arg: 1, scope: !1327, file: !76, line: 531, type: !59)
!1331 = !DILocation(line: 531, column: 43, scope: !1327)
!1332 = !DILocalVariable(name: "slen", arg: 2, scope: !1327, file: !76, line: 531, type: !63)
!1333 = !DILocation(line: 531, column: 58, scope: !1327)
!1334 = !DILocation(line: 533, column: 5, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1327, file: !76, line: 533, column: 5)
!1336 = !DILocation(line: 533, column: 12, scope: !1335)
!1337 = !DILocation(line: 533, column: 16, scope: !1335)
!1338 = !DILocation(line: 533, column: 20, scope: !1335)
!1339 = !DILocation(line: 533, column: 5, scope: !1327)
!1340 = !DILocation(line: 534, column: 10, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1335, file: !76, line: 533, column: 25)
!1342 = !DILocation(line: 534, column: 3, scope: !1341)
!1343 = !DILocation(line: 536, column: 21, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 536, column: 7)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !76, line: 534, column: 16)
!1346 = !DILocation(line: 536, column: 8, scope: !1344)
!1347 = !DILocation(line: 536, column: 7, scope: !1345)
!1348 = !DILocation(line: 537, column: 5, scope: !1344)
!1349 = !DILocation(line: 538, column: 21, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 538, column: 7)
!1351 = !DILocation(line: 538, column: 8, scope: !1350)
!1352 = !DILocation(line: 538, column: 7, scope: !1345)
!1353 = !DILocation(line: 539, column: 5, scope: !1350)
!1354 = !DILocation(line: 540, column: 21, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 540, column: 7)
!1356 = !DILocation(line: 540, column: 8, scope: !1355)
!1357 = !DILocation(line: 540, column: 7, scope: !1345)
!1358 = !DILocation(line: 541, column: 5, scope: !1355)
!1359 = !DILocation(line: 542, column: 21, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 542, column: 7)
!1361 = !DILocation(line: 542, column: 8, scope: !1360)
!1362 = !DILocation(line: 542, column: 7, scope: !1345)
!1363 = !DILocation(line: 543, column: 5, scope: !1360)
!1364 = !DILocation(line: 544, column: 4, scope: !1345)
!1365 = !DILocation(line: 546, column: 22, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 546, column: 7)
!1367 = !DILocation(line: 546, column: 8, scope: !1366)
!1368 = !DILocation(line: 546, column: 7, scope: !1345)
!1369 = !DILocation(line: 547, column: 5, scope: !1366)
!1370 = !DILocation(line: 548, column: 22, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 548, column: 7)
!1372 = !DILocation(line: 548, column: 8, scope: !1371)
!1373 = !DILocation(line: 548, column: 7, scope: !1345)
!1374 = !DILocation(line: 549, column: 5, scope: !1371)
!1375 = !DILocation(line: 550, column: 22, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 550, column: 7)
!1377 = !DILocation(line: 550, column: 8, scope: !1376)
!1378 = !DILocation(line: 550, column: 7, scope: !1345)
!1379 = !DILocation(line: 551, column: 5, scope: !1376)
!1380 = !DILocation(line: 552, column: 22, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 552, column: 7)
!1382 = !DILocation(line: 552, column: 8, scope: !1381)
!1383 = !DILocation(line: 552, column: 7, scope: !1345)
!1384 = !DILocation(line: 553, column: 5, scope: !1381)
!1385 = !DILocation(line: 554, column: 22, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 554, column: 7)
!1387 = !DILocation(line: 554, column: 8, scope: !1386)
!1388 = !DILocation(line: 554, column: 7, scope: !1345)
!1389 = !DILocation(line: 555, column: 5, scope: !1386)
!1390 = !DILocation(line: 556, column: 4, scope: !1345)
!1391 = !DILocation(line: 558, column: 23, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 558, column: 7)
!1393 = !DILocation(line: 558, column: 8, scope: !1392)
!1394 = !DILocation(line: 558, column: 7, scope: !1345)
!1395 = !DILocation(line: 559, column: 5, scope: !1392)
!1396 = !DILocation(line: 560, column: 23, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 560, column: 7)
!1398 = !DILocation(line: 560, column: 8, scope: !1397)
!1399 = !DILocation(line: 560, column: 7, scope: !1345)
!1400 = !DILocation(line: 561, column: 5, scope: !1397)
!1401 = !DILocation(line: 562, column: 23, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 562, column: 7)
!1403 = !DILocation(line: 562, column: 8, scope: !1402)
!1404 = !DILocation(line: 562, column: 7, scope: !1345)
!1405 = !DILocation(line: 563, column: 5, scope: !1402)
!1406 = !DILocation(line: 564, column: 23, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 564, column: 7)
!1408 = !DILocation(line: 564, column: 8, scope: !1407)
!1409 = !DILocation(line: 564, column: 7, scope: !1345)
!1410 = !DILocation(line: 565, column: 5, scope: !1407)
!1411 = !DILocation(line: 566, column: 4, scope: !1345)
!1412 = !DILocation(line: 568, column: 24, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 568, column: 7)
!1414 = !DILocation(line: 568, column: 8, scope: !1413)
!1415 = !DILocation(line: 568, column: 7, scope: !1345)
!1416 = !DILocation(line: 569, column: 5, scope: !1413)
!1417 = !DILocation(line: 570, column: 24, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 570, column: 7)
!1419 = !DILocation(line: 570, column: 8, scope: !1418)
!1420 = !DILocation(line: 570, column: 7, scope: !1345)
!1421 = !DILocation(line: 571, column: 5, scope: !1418)
!1422 = !DILocation(line: 572, column: 4, scope: !1345)
!1423 = !DILocation(line: 574, column: 25, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1345, file: !76, line: 574, column: 7)
!1425 = !DILocation(line: 574, column: 8, scope: !1424)
!1426 = !DILocation(line: 574, column: 7, scope: !1345)
!1427 = !DILocation(line: 575, column: 5, scope: !1424)
!1428 = !DILocation(line: 576, column: 4, scope: !1345)
!1429 = !DILocation(line: 578, column: 4, scope: !1345)
!1430 = !DILocation(line: 580, column: 2, scope: !1341)
!1431 = !DILocation(line: 581, column: 2, scope: !1327)
!1432 = !DILocation(line: 582, column: 1, scope: !1327)
!1433 = distinct !DISubprogram(name: "get_canonic_origin", scope: !76, file: !76, line: 584, type: !1434, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!35, !59, !61, !35}
!1436 = !DILocalVariable(name: "o", arg: 1, scope: !1433, file: !76, line: 584, type: !59)
!1437 = !DILocation(line: 584, column: 36, scope: !1433)
!1438 = !DILocalVariable(name: "co", arg: 2, scope: !1433, file: !76, line: 584, type: !61)
!1439 = !DILocation(line: 584, column: 45, scope: !1433)
!1440 = !DILocalVariable(name: "sz", arg: 3, scope: !1433, file: !76, line: 584, type: !35)
!1441 = !DILocation(line: 584, column: 53, scope: !1433)
!1442 = !DILocalVariable(name: "ret", scope: !1433, file: !76, line: 586, type: !35)
!1443 = !DILocation(line: 586, column: 6, scope: !1433)
!1444 = !DILocation(line: 588, column: 5, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1433, file: !76, line: 588, column: 5)
!1446 = !DILocation(line: 588, column: 7, scope: !1445)
!1447 = !DILocation(line: 588, column: 10, scope: !1445)
!1448 = !DILocation(line: 588, column: 15, scope: !1445)
!1449 = !DILocation(line: 588, column: 18, scope: !1445)
!1450 = !DILocation(line: 588, column: 5, scope: !1433)
!1451 = !DILocation(line: 589, column: 3, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1445, file: !76, line: 588, column: 22)
!1453 = !DILocation(line: 589, column: 8, scope: !1452)
!1454 = !DILocalVariable(name: "uri", scope: !1452, file: !76, line: 590, type: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "evhttp_uri", file: !1457, line: 815, flags: DIFlagFwdDecl)
!1457 = !DIFile(filename: "/usr/include/event2/http.h", directory: "", checksumkind: CSK_MD5, checksum: "9ed86fd27828ae479b1fafeef94925b9")
!1458 = !DILocation(line: 590, column: 22, scope: !1452)
!1459 = !DILocation(line: 590, column: 45, scope: !1452)
!1460 = !DILocation(line: 590, column: 28, scope: !1452)
!1461 = !DILocation(line: 591, column: 6, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1452, file: !76, line: 591, column: 6)
!1463 = !DILocation(line: 591, column: 6, scope: !1452)
!1464 = !DILocalVariable(name: "scheme", scope: !1465, file: !76, line: 592, type: !59)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !76, line: 591, column: 11)
!1466 = !DILocation(line: 592, column: 16, scope: !1465)
!1467 = !DILocation(line: 592, column: 47, scope: !1465)
!1468 = !DILocation(line: 592, column: 25, scope: !1465)
!1469 = !DILocation(line: 593, column: 7, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1465, file: !76, line: 593, column: 7)
!1471 = !DILocation(line: 593, column: 14, scope: !1470)
!1472 = !DILocation(line: 593, column: 17, scope: !1470)
!1473 = !DILocation(line: 593, column: 7, scope: !1465)
!1474 = !DILocalVariable(name: "schlen", scope: !1475, file: !76, line: 594, type: !63)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !76, line: 593, column: 28)
!1476 = !DILocation(line: 594, column: 12, scope: !1475)
!1477 = !DILocation(line: 594, column: 28, scope: !1475)
!1478 = !DILocation(line: 594, column: 21, scope: !1475)
!1479 = !DILocation(line: 595, column: 9, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1475, file: !76, line: 595, column: 8)
!1481 = !DILocation(line: 595, column: 24, scope: !1480)
!1482 = !DILocation(line: 595, column: 16, scope: !1480)
!1483 = !DILocation(line: 595, column: 15, scope: !1480)
!1484 = !DILocation(line: 595, column: 28, scope: !1480)
!1485 = !DILocation(line: 595, column: 32, scope: !1480)
!1486 = !DILocation(line: 595, column: 38, scope: !1480)
!1487 = !DILocation(line: 595, column: 8, scope: !1475)
!1488 = !DILocalVariable(name: "host", scope: !1489, file: !76, line: 596, type: !59)
!1489 = distinct !DILexicalBlock(scope: !1480, file: !76, line: 595, column: 62)
!1490 = !DILocation(line: 596, column: 18, scope: !1489)
!1491 = !DILocation(line: 596, column: 45, scope: !1489)
!1492 = !DILocation(line: 596, column: 25, scope: !1489)
!1493 = !DILocation(line: 597, column: 9, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1489, file: !76, line: 597, column: 9)
!1495 = !DILocation(line: 597, column: 14, scope: !1494)
!1496 = !DILocation(line: 597, column: 17, scope: !1494)
!1497 = !DILocation(line: 597, column: 9, scope: !1489)
!1498 = !DILocalVariable(name: "otmp", scope: !1499, file: !76, line: 598, type: !1500)
!1499 = distinct !DILexicalBlock(scope: !1494, file: !76, line: 597, column: 26)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2032, elements: !1501)
!1501 = !{!1502}
!1502 = !DISubrange(count: 254)
!1503 = !DILocation(line: 598, column: 12, scope: !1499)
!1504 = !DILocation(line: 599, column: 13, scope: !1499)
!1505 = !DILocation(line: 599, column: 20, scope: !1499)
!1506 = !DILocation(line: 599, column: 25, scope: !1499)
!1507 = !DILocation(line: 599, column: 7, scope: !1499)
!1508 = !DILocation(line: 600, column: 12, scope: !1499)
!1509 = !DILocation(line: 600, column: 7, scope: !1499)
!1510 = !DILocation(line: 600, column: 19, scope: !1499)
!1511 = !DILocalVariable(name: "s", scope: !1512, file: !76, line: 603, type: !65)
!1512 = distinct !DILexicalBlock(scope: !1499, file: !76, line: 602, column: 7)
!1513 = !DILocation(line: 603, column: 23, scope: !1512)
!1514 = !DILocation(line: 603, column: 43, scope: !1512)
!1515 = !DILocation(line: 604, column: 8, scope: !1512)
!1516 = !DILocation(line: 604, column: 15, scope: !1512)
!1517 = !DILocation(line: 604, column: 14, scope: !1512)
!1518 = !DILocation(line: 605, column: 43, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1512, file: !76, line: 604, column: 18)
!1520 = !DILocation(line: 605, column: 42, scope: !1519)
!1521 = !DILocation(line: 605, column: 37, scope: !1519)
!1522 = !DILocation(line: 605, column: 29, scope: !1519)
!1523 = !DILocation(line: 605, column: 14, scope: !1519)
!1524 = !DILocation(line: 605, column: 10, scope: !1519)
!1525 = !DILocation(line: 605, column: 12, scope: !1519)
!1526 = !DILocation(line: 606, column: 9, scope: !1519)
!1527 = distinct !{!1527, !1515, !1528, !1023}
!1528 = !DILocation(line: 607, column: 8, scope: !1512)
!1529 = !DILocalVariable(name: "port", scope: !1499, file: !76, line: 610, type: !35)
!1530 = !DILocation(line: 610, column: 11, scope: !1499)
!1531 = !DILocation(line: 610, column: 38, scope: !1499)
!1532 = !DILocation(line: 610, column: 18, scope: !1499)
!1533 = !DILocation(line: 611, column: 10, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1499, file: !76, line: 611, column: 10)
!1535 = !DILocation(line: 611, column: 14, scope: !1534)
!1536 = !DILocation(line: 611, column: 10, scope: !1499)
!1537 = !DILocation(line: 612, column: 41, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !76, line: 611, column: 18)
!1539 = !DILocation(line: 612, column: 47, scope: !1538)
!1540 = !DILocation(line: 612, column: 15, scope: !1538)
!1541 = !DILocation(line: 612, column: 13, scope: !1538)
!1542 = !DILocation(line: 613, column: 7, scope: !1538)
!1543 = !DILocation(line: 614, column: 10, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1499, file: !76, line: 614, column: 10)
!1545 = !DILocation(line: 614, column: 14, scope: !1544)
!1546 = !DILocation(line: 614, column: 10, scope: !1499)
!1547 = !DILocation(line: 615, column: 17, scope: !1544)
!1548 = !DILocation(line: 615, column: 22, scope: !1544)
!1549 = !DILocation(line: 615, column: 21, scope: !1544)
!1550 = !DILocation(line: 615, column: 42, scope: !1544)
!1551 = !DILocation(line: 615, column: 41, scope: !1544)
!1552 = !DILocation(line: 615, column: 48, scope: !1544)
!1553 = !DILocation(line: 615, column: 62, scope: !1544)
!1554 = !DILocation(line: 615, column: 67, scope: !1544)
!1555 = !DILocation(line: 615, column: 8, scope: !1544)
!1556 = !DILocation(line: 617, column: 17, scope: !1544)
!1557 = !DILocation(line: 617, column: 22, scope: !1544)
!1558 = !DILocation(line: 617, column: 21, scope: !1544)
!1559 = !DILocation(line: 617, column: 42, scope: !1544)
!1560 = !DILocation(line: 617, column: 41, scope: !1544)
!1561 = !DILocation(line: 617, column: 48, scope: !1544)
!1562 = !DILocation(line: 617, column: 59, scope: !1544)
!1563 = !DILocation(line: 617, column: 8, scope: !1544)
!1564 = !DILocalVariable(name: "s", scope: !1565, file: !76, line: 620, type: !65)
!1565 = distinct !DILexicalBlock(scope: !1499, file: !76, line: 619, column: 7)
!1566 = !DILocation(line: 620, column: 23, scope: !1565)
!1567 = !DILocation(line: 620, column: 43, scope: !1565)
!1568 = !DILocation(line: 620, column: 50, scope: !1565)
!1569 = !DILocation(line: 620, column: 48, scope: !1565)
!1570 = !DILocation(line: 620, column: 57, scope: !1565)
!1571 = !DILocation(line: 621, column: 8, scope: !1565)
!1572 = !DILocation(line: 621, column: 15, scope: !1565)
!1573 = !DILocation(line: 621, column: 14, scope: !1565)
!1574 = !DILocation(line: 622, column: 43, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1565, file: !76, line: 621, column: 18)
!1576 = !DILocation(line: 622, column: 42, scope: !1575)
!1577 = !DILocation(line: 622, column: 37, scope: !1575)
!1578 = !DILocation(line: 622, column: 29, scope: !1575)
!1579 = !DILocation(line: 622, column: 14, scope: !1575)
!1580 = !DILocation(line: 622, column: 10, scope: !1575)
!1581 = !DILocation(line: 622, column: 12, scope: !1575)
!1582 = !DILocation(line: 623, column: 9, scope: !1575)
!1583 = distinct !{!1583, !1571, !1584, !1023}
!1584 = !DILocation(line: 624, column: 8, scope: !1565)
!1585 = !DILocation(line: 627, column: 15, scope: !1499)
!1586 = !DILocation(line: 627, column: 18, scope: !1499)
!1587 = !DILocation(line: 627, column: 23, scope: !1499)
!1588 = !DILocation(line: 627, column: 7, scope: !1499)
!1589 = !DILocation(line: 628, column: 7, scope: !1499)
!1590 = !DILocation(line: 628, column: 10, scope: !1499)
!1591 = !DILocation(line: 628, column: 13, scope: !1499)
!1592 = !DILocation(line: 629, column: 11, scope: !1499)
!1593 = !DILocation(line: 630, column: 6, scope: !1499)
!1594 = !DILocation(line: 631, column: 5, scope: !1489)
!1595 = !DILocation(line: 632, column: 4, scope: !1475)
!1596 = !DILocation(line: 633, column: 20, scope: !1465)
!1597 = !DILocation(line: 633, column: 4, scope: !1465)
!1598 = !DILocation(line: 634, column: 3, scope: !1465)
!1599 = !DILocation(line: 636, column: 6, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1452, file: !76, line: 636, column: 6)
!1601 = !DILocation(line: 636, column: 9, scope: !1600)
!1602 = !DILocation(line: 636, column: 6, scope: !1452)
!1603 = !DILocation(line: 637, column: 12, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !76, line: 636, column: 13)
!1605 = !DILocation(line: 637, column: 15, scope: !1604)
!1606 = !DILocation(line: 637, column: 17, scope: !1604)
!1607 = !DILocation(line: 637, column: 4, scope: !1604)
!1608 = !DILocation(line: 638, column: 4, scope: !1604)
!1609 = !DILocation(line: 638, column: 7, scope: !1604)
!1610 = !DILocation(line: 638, column: 10, scope: !1604)
!1611 = !DILocation(line: 639, column: 3, scope: !1604)
!1612 = !DILocation(line: 640, column: 2, scope: !1452)
!1613 = !DILocation(line: 642, column: 9, scope: !1433)
!1614 = !DILocation(line: 642, column: 2, scope: !1433)
!1615 = distinct !DISubprogram(name: "is_secure_string", scope: !76, file: !76, line: 647, type: !1616, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !375)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!35, !1618, !35}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!1620 = !DILocalVariable(name: "string", arg: 1, scope: !1615, file: !76, line: 647, type: !1618)
!1621 = !DILocation(line: 647, column: 37, scope: !1615)
!1622 = !DILocalVariable(name: "sanitizesql", arg: 2, scope: !1615, file: !76, line: 647, type: !35)
!1623 = !DILocation(line: 647, column: 49, scope: !1615)
!1624 = !DILocalVariable(name: "ret", scope: !1615, file: !76, line: 649, type: !35)
!1625 = !DILocation(line: 649, column: 6, scope: !1615)
!1626 = !DILocation(line: 650, column: 5, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1615, file: !76, line: 650, column: 5)
!1628 = !DILocation(line: 650, column: 5, scope: !1615)
!1629 = !DILocalVariable(name: "s0", scope: !1630, file: !76, line: 651, type: !65)
!1630 = distinct !DILexicalBlock(scope: !1627, file: !76, line: 650, column: 13)
!1631 = !DILocation(line: 651, column: 18, scope: !1630)
!1632 = !DILocation(line: 651, column: 59, scope: !1630)
!1633 = !DILocation(line: 651, column: 39, scope: !1630)
!1634 = !DILocalVariable(name: "s", scope: !1630, file: !76, line: 652, type: !65)
!1635 = !DILocation(line: 652, column: 18, scope: !1630)
!1636 = !DILocation(line: 652, column: 22, scope: !1630)
!1637 = !DILocation(line: 653, column: 3, scope: !1630)
!1638 = !DILocation(line: 653, column: 10, scope: !1630)
!1639 = !DILocation(line: 653, column: 9, scope: !1630)
!1640 = !DILocation(line: 654, column: 38, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1630, file: !76, line: 653, column: 13)
!1642 = !DILocation(line: 654, column: 37, scope: !1641)
!1643 = !DILocation(line: 654, column: 32, scope: !1641)
!1644 = !DILocation(line: 654, column: 24, scope: !1641)
!1645 = !DILocation(line: 654, column: 9, scope: !1641)
!1646 = !DILocation(line: 654, column: 5, scope: !1641)
!1647 = !DILocation(line: 654, column: 7, scope: !1641)
!1648 = !DILocation(line: 655, column: 4, scope: !1641)
!1649 = distinct !{!1649, !1637, !1650, !1023}
!1650 = !DILocation(line: 656, column: 3, scope: !1630)
!1651 = !DILocation(line: 657, column: 7, scope: !1630)
!1652 = !DILocation(line: 657, column: 5, scope: !1630)
!1653 = !DILocation(line: 658, column: 20, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1630, file: !76, line: 658, column: 6)
!1655 = !DILocation(line: 658, column: 6, scope: !1654)
!1656 = !DILocation(line: 658, column: 26, scope: !1654)
!1657 = !DILocation(line: 658, column: 42, scope: !1654)
!1658 = !DILocation(line: 658, column: 28, scope: !1654)
!1659 = !DILocation(line: 658, column: 49, scope: !1654)
!1660 = !DILocation(line: 658, column: 65, scope: !1654)
!1661 = !DILocation(line: 658, column: 51, scope: !1654)
!1662 = !DILocation(line: 658, column: 71, scope: !1654)
!1663 = !DILocation(line: 658, column: 87, scope: !1654)
!1664 = !DILocation(line: 658, column: 73, scope: !1654)
!1665 = !DILocation(line: 658, column: 94, scope: !1654)
!1666 = !DILocation(line: 658, column: 110, scope: !1654)
!1667 = !DILocation(line: 658, column: 96, scope: !1654)
!1668 = !DILocation(line: 658, column: 117, scope: !1654)
!1669 = !DILocation(line: 658, column: 133, scope: !1654)
!1670 = !DILocation(line: 658, column: 119, scope: !1654)
!1671 = !DILocation(line: 658, column: 140, scope: !1654)
!1672 = !DILocation(line: 658, column: 156, scope: !1654)
!1673 = !DILocation(line: 658, column: 142, scope: !1654)
!1674 = !DILocation(line: 658, column: 6, scope: !1630)
!1675 = !DILocation(line: 660, column: 3, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1654, file: !76, line: 658, column: 165)
!1677 = !DILocation(line: 660, column: 13, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1654, file: !76, line: 660, column: 13)
!1679 = !DILocation(line: 660, column: 25, scope: !1678)
!1680 = !DILocation(line: 660, column: 42, scope: !1678)
!1681 = !DILocation(line: 660, column: 28, scope: !1678)
!1682 = !DILocation(line: 660, column: 52, scope: !1678)
!1683 = !DILocation(line: 660, column: 68, scope: !1678)
!1684 = !DILocation(line: 660, column: 54, scope: !1678)
!1685 = !DILocation(line: 660, column: 13, scope: !1654)
!1686 = !DILocation(line: 662, column: 3, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1678, file: !76, line: 660, column: 81)
!1688 = !DILocation(line: 663, column: 8, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1678, file: !76, line: 662, column: 10)
!1690 = !DILocation(line: 665, column: 8, scope: !1630)
!1691 = !DILocation(line: 665, column: 3, scope: !1630)
!1692 = !DILocation(line: 666, column: 2, scope: !1630)
!1693 = !DILocation(line: 667, column: 9, scope: !1615)
!1694 = !DILocation(line: 667, column: 2, scope: !1615)
!1695 = distinct !DISubprogram(name: "get_date", scope: !76, file: !76, line: 230, type: !1696, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !61, !63}
!1698 = !DILocalVariable(name: "s", arg: 1, scope: !1695, file: !76, line: 230, type: !61)
!1699 = !DILocation(line: 230, column: 28, scope: !1695)
!1700 = !DILocalVariable(name: "sz", arg: 2, scope: !1695, file: !76, line: 230, type: !63)
!1701 = !DILocation(line: 230, column: 38, scope: !1695)
!1702 = !DILocalVariable(name: "curtm", scope: !1695, file: !76, line: 231, type: !741)
!1703 = !DILocation(line: 231, column: 9, scope: !1695)
!1704 = !DILocalVariable(name: "tm_info", scope: !1695, file: !76, line: 232, type: !1705)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1707, line: 7, size: 448, elements: !1708)
!1707 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "", checksumkind: CSK_MD5, checksum: "9e5545b565ef031c4cd0faf90b69386f")
!1708 = !{!1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1706, file: !1707, line: 9, baseType: !35, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1706, file: !1707, line: 10, baseType: !35, size: 32, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1706, file: !1707, line: 11, baseType: !35, size: 32, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1706, file: !1707, line: 12, baseType: !35, size: 32, offset: 96)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1706, file: !1707, line: 13, baseType: !35, size: 32, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1706, file: !1707, line: 14, baseType: !35, size: 32, offset: 160)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1706, file: !1707, line: 15, baseType: !35, size: 32, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1706, file: !1707, line: 16, baseType: !35, size: 32, offset: 224)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1706, file: !1707, line: 17, baseType: !35, size: 32, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1706, file: !1707, line: 20, baseType: !57, size: 64, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1706, file: !1707, line: 21, baseType: !59, size: 64, offset: 384)
!1720 = !DILocation(line: 232, column: 16, scope: !1695)
!1721 = !DILocation(line: 234, column: 13, scope: !1695)
!1722 = !DILocation(line: 234, column: 11, scope: !1695)
!1723 = !DILocation(line: 235, column: 15, scope: !1695)
!1724 = !DILocation(line: 235, column: 13, scope: !1695)
!1725 = !DILocation(line: 237, column: 14, scope: !1695)
!1726 = !DILocation(line: 237, column: 17, scope: !1695)
!1727 = !DILocation(line: 237, column: 27, scope: !1695)
!1728 = !DILocation(line: 237, column: 5, scope: !1695)
!1729 = !DILocation(line: 238, column: 1, scope: !1695)
!1730 = distinct !DISubprogram(name: "sighup_callback_handler", scope: !76, file: !76, line: 319, type: !562, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!1731 = !DILocalVariable(name: "signum", arg: 1, scope: !1730, file: !76, line: 319, type: !35)
!1732 = !DILocation(line: 319, column: 41, scope: !1730)
!1733 = !DILocation(line: 321, column: 5, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1730, file: !76, line: 321, column: 5)
!1735 = !DILocation(line: 321, column: 12, scope: !1734)
!1736 = !DILocation(line: 321, column: 5, scope: !1730)
!1737 = !DILocation(line: 322, column: 21, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1734, file: !76, line: 321, column: 23)
!1739 = !DILocation(line: 323, column: 2, scope: !1738)
!1740 = !DILocation(line: 324, column: 1, scope: !1730)
