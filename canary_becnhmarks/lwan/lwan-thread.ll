; ModuleID = '/home/raj/lwan/common/lwan-thread.c'
source_filename = "/home/raj/lwan/common/lwan-thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.lwan_thread_t_ = type { ptr, %struct.anon.0, i32, [2 x i32], i64 }
%struct.anon.0 = type { [30 x i8], [30 x i8], i64 }
%struct.lwan_t_ = type { %struct.lwan_trie_t_, ptr, %struct.anon, ptr, %struct.lwan_config_t_, i32 }
%struct.lwan_trie_t_ = type { ptr, ptr }
%struct.anon = type { ptr, i32, i16 }
%struct.lwan_config_t_ = type { ptr, i16, i8, i8, i32, i16 }
%struct.lwan_connection_t_ = type { i32, i32, ptr, ptr, i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.coro_switcher_t_ = type { [10 x i64], [10 x i64] }
%struct.death_queue_t = type { ptr, %struct.lwan_connection_t_, i32, i16 }
%struct.lwan_value_t_ = type { ptr, i64 }
%struct.lwan_request_t_ = type { i32, i32, %struct.lwan_value_t_, %struct.lwan_value_t_, ptr, %struct.anon.2, %struct.anon.2, %struct.anon.3, %struct.lwan_response_t_ }
%struct.anon.2 = type { ptr, i64 }
%struct.anon.3 = type { i64, %struct.anon.4 }
%struct.anon.4 = type { i64, i64 }
%struct.lwan_response_t_ = type { ptr, ptr, i64, ptr, %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [36 x i8] c"/home/raj/lwan/common/lwan-thread.c\00", align 1, !dbg !0
@__FUNCTION__.lwan_format_rfc_time = private unnamed_addr constant [21 x i8] c"lwan_format_rfc_time\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [9 x i8] c"gmtime_r\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [26 x i8] c"%a, %d %b %Y %H:%M:%S GMT\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [9 x i8] c"strftime\00", align 1, !dbg !23
@__FUNCTION__.lwan_thread_add_client = private unnamed_addr constant [23 x i8] c"lwan_thread_add_client\00", align 1, !dbg !25
@.str.4 = private unnamed_addr constant [6 x i8] c"write\00", align 1, !dbg !30
@__FUNCTION__.lwan_thread_init = private unnamed_addr constant [17 x i8] c"lwan_thread_init\00", align 1, !dbg !35
@.str.5 = private unnamed_addr constant [21 x i8] c"Initializing threads\00", align 1, !dbg !40
@.str.6 = private unnamed_addr constant [38 x i8] c"Could not allocate memory for threads\00", align 1, !dbg !43
@__FUNCTION__.lwan_thread_shutdown = private unnamed_addr constant [21 x i8] c"lwan_thread_shutdown\00", align 1, !dbg !48
@.str.7 = private unnamed_addr constant [22 x i8] c"Shutting down threads\00", align 1, !dbg !50
@__FUNCTION__.create_thread = private unnamed_addr constant [14 x i8] c"create_thread\00", align 1, !dbg !55
@.str.8 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1, !dbg !60
@.str.9 = private unnamed_addr constant [18 x i8] c"pthread_attr_init\00", align 1, !dbg !65
@.str.10 = private unnamed_addr constant [22 x i8] c"pthread_attr_setscope\00", align 1, !dbg !70
@.str.11 = private unnamed_addr constant [28 x i8] c"pthread_attr_setdetachstate\00", align 1, !dbg !72
@.str.12 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1, !dbg !77
@__const.create_thread.event = private unnamed_addr constant %struct.epoll_event <{ i32 1, %union.epoll_data zeroinitializer }>, align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1, !dbg !82
@.str.14 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1, !dbg !87
@.str.15 = private unnamed_addr constant [21 x i8] c"pthread_attr_destroy\00", align 1, !dbg !92
@__FUNCTION__.thread_io_loop = private unnamed_addr constant [15 x i8] c"thread_io_loop\00", align 1, !dbg !94
@.str.16 = private unnamed_addr constant [31 x i8] c"Starting IO loop on thread #%d\00", align 1, !dbg !97
@.str.17 = private unnamed_addr constant [37 x i8] c"Could not allocate memory for events\00", align 1, !dbg !102
@__FUNCTION__.grab_and_watch_client = private unnamed_addr constant [22 x i8] c"grab_and_watch_client\00", align 1, !dbg !107
@.str.18 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !110
@events_by_write_flag = internal constant [2 x i32] [i32 8204, i32 -2147475447], align 4, !dbg !112
@.str.19 = private unnamed_addr constant [28 x i8] c"conn->flags & CONN_IS_ALIVE\00", align 1, !dbg !207
@__PRETTY_FUNCTION__.process_request_coro = private unnamed_addr constant [35 x i8] c"int process_request_coro(coro_t *)\00", align 1, !dbg !209
@.str.20 = private unnamed_addr constant [11 x i8] c"conn->coro\00", align 1, !dbg !214
@__PRETTY_FUNCTION__.resume_coro_if_needed = private unnamed_addr constant [77 x i8] c"void resume_coro_if_needed(struct death_queue_t *, lwan_connection_t *, int)\00", align 1, !dbg !219
@__FUNCTION__.resume_coro_if_needed = private unnamed_addr constant [22 x i8] c"resume_coro_if_needed\00", align 1, !dbg !224

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_format_rfc_time(i64 noundef %0, ptr noundef %1) #0 !dbg !241 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.tm, align 8
  store i64 %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !246, metadata !DIExpression()), !dbg !247
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata ptr %5, metadata !250, metadata !DIExpression()), !dbg !266
  %6 = call ptr @gmtime_r(ptr noundef %3, ptr noundef %5) #11, !dbg !267
  %7 = icmp ne ptr %6, null, !dbg !267
  %8 = xor i1 %7, true, !dbg !267
  %9 = zext i1 %8 to i32, !dbg !267
  %10 = sext i32 %9 to i64, !dbg !267
  %11 = icmp ne i64 %10, 0, !dbg !267
  br i1 %11, label %12, label %13, !dbg !269

12:                                               ; preds = %2
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str, i32 noundef 241, ptr noundef @__FUNCTION__.lwan_format_rfc_time, ptr noundef @.str.1), !dbg !270
  br label %22, !dbg !272

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !273
  %15 = call i64 @strftime(ptr noundef %14, i64 noundef 30, ptr noundef @.str.2, ptr noundef %5) #11, !dbg !273
  %16 = icmp ne i64 %15, 0, !dbg !273
  %17 = xor i1 %16, true, !dbg !273
  %18 = zext i1 %17 to i32, !dbg !273
  %19 = sext i32 %18 to i64, !dbg !273
  %20 = icmp ne i64 %19, 0, !dbg !273
  br i1 %20, label %21, label %22, !dbg !275

21:                                               ; preds = %13
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str, i32 noundef 246, ptr noundef @__FUNCTION__.lwan_format_rfc_time, ptr noundef @.str.3), !dbg !276
  br label %22, !dbg !276

22:                                               ; preds = %12, %21, %13
  ret void, !dbg !277
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) #2

declare void @lwan_status_perror_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_thread_add_client(ptr noundef %0, i32 noundef %1) #0 !dbg !278 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !370, metadata !DIExpression()), !dbg !371
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !372, metadata !DIExpression()), !dbg !373
  %5 = load ptr, ptr %3, align 8, !dbg !374
  %6 = getelementptr inbounds %struct.lwan_thread_t_, ptr %5, i32 0, i32 0, !dbg !375
  %7 = load ptr, ptr %6, align 8, !dbg !375
  %8 = getelementptr inbounds %struct.lwan_t_, ptr %7, i32 0, i32 1, !dbg !376
  %9 = load ptr, ptr %8, align 8, !dbg !376
  %10 = load i32, ptr %4, align 4, !dbg !377
  %11 = sext i32 %10 to i64, !dbg !374
  %12 = getelementptr inbounds %struct.lwan_connection_t_, ptr %9, i64 %11, !dbg !374
  %13 = getelementptr inbounds %struct.lwan_connection_t_, ptr %12, i32 0, i32 0, !dbg !378
  store i32 0, ptr %13, align 8, !dbg !379
  %14 = load ptr, ptr %3, align 8, !dbg !380
  %15 = load ptr, ptr %3, align 8, !dbg !381
  %16 = getelementptr inbounds %struct.lwan_thread_t_, ptr %15, i32 0, i32 0, !dbg !382
  %17 = load ptr, ptr %16, align 8, !dbg !382
  %18 = getelementptr inbounds %struct.lwan_t_, ptr %17, i32 0, i32 1, !dbg !383
  %19 = load ptr, ptr %18, align 8, !dbg !383
  %20 = load i32, ptr %4, align 4, !dbg !384
  %21 = sext i32 %20 to i64, !dbg !381
  %22 = getelementptr inbounds %struct.lwan_connection_t_, ptr %19, i64 %21, !dbg !381
  %23 = getelementptr inbounds %struct.lwan_connection_t_, ptr %22, i32 0, i32 3, !dbg !385
  store ptr %14, ptr %23, align 8, !dbg !386
  %24 = load ptr, ptr %3, align 8, !dbg !387
  %25 = getelementptr inbounds %struct.lwan_thread_t_, ptr %24, i32 0, i32 3, !dbg !387
  %26 = getelementptr inbounds [2 x i32], ptr %25, i64 0, i64 1, !dbg !387
  %27 = load i32, ptr %26, align 4, !dbg !387
  %28 = call i64 @write(i32 noundef %27, ptr noundef %4, i64 noundef 4), !dbg !387
  %29 = icmp slt i64 %28, 0, !dbg !387
  %30 = zext i1 %29 to i32, !dbg !387
  %31 = sext i32 %30 to i64, !dbg !387
  %32 = icmp ne i64 %31, 0, !dbg !387
  br i1 %32, label %33, label %34, !dbg !389

33:                                               ; preds = %2
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str, i32 noundef 408, ptr noundef @__FUNCTION__.lwan_thread_add_client, ptr noundef @.str.4), !dbg !390
  br label %34, !dbg !390

34:                                               ; preds = %33, %2
  ret void, !dbg !391
}

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_thread_init(ptr noundef %0) #0 !dbg !392 {
  %2 = alloca ptr, align 8
  %3 = alloca i16, align 2
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !395, metadata !DIExpression()), !dbg !396
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str, i32 noundef 414, ptr noundef @__FUNCTION__.lwan_thread_init, ptr noundef @.str.5), !dbg !397
  %4 = load ptr, ptr %2, align 8, !dbg !398
  %5 = getelementptr inbounds %struct.lwan_t_, ptr %4, i32 0, i32 2, !dbg !399
  %6 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2, !dbg !400
  %7 = load i16, ptr %6, align 4, !dbg !400
  %8 = zext i16 %7 to i64, !dbg !401
  %9 = call noalias ptr @calloc(i64 noundef %8, i64 noundef 104) #12, !dbg !402
  %10 = load ptr, ptr %2, align 8, !dbg !403
  %11 = getelementptr inbounds %struct.lwan_t_, ptr %10, i32 0, i32 2, !dbg !404
  %12 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 0, !dbg !405
  store ptr %9, ptr %12, align 8, !dbg !406
  %13 = load ptr, ptr %2, align 8, !dbg !407
  %14 = getelementptr inbounds %struct.lwan_t_, ptr %13, i32 0, i32 2, !dbg !409
  %15 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 0, !dbg !410
  %16 = load ptr, ptr %15, align 8, !dbg !410
  %17 = icmp ne ptr %16, null, !dbg !407
  br i1 %17, label %19, label %18, !dbg !411

18:                                               ; preds = %1
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str, i32 noundef 418, ptr noundef @__FUNCTION__.lwan_thread_init, ptr noundef @.str.6) #13, !dbg !412
  unreachable, !dbg !412

19:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !413, metadata !DIExpression()), !dbg !416
  store i16 0, ptr %3, align 2, !dbg !416
  br label %20, !dbg !417

20:                                               ; preds = %38, %19
  %21 = load i16, ptr %3, align 2, !dbg !418
  %22 = sext i16 %21 to i32, !dbg !418
  %23 = load ptr, ptr %2, align 8, !dbg !420
  %24 = getelementptr inbounds %struct.lwan_t_, ptr %23, i32 0, i32 2, !dbg !421
  %25 = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 2, !dbg !422
  %26 = load i16, ptr %25, align 4, !dbg !422
  %27 = zext i16 %26 to i32, !dbg !420
  %28 = icmp slt i32 %22, %27, !dbg !423
  br i1 %28, label %29, label %41, !dbg !424

29:                                               ; preds = %20
  %30 = load ptr, ptr %2, align 8, !dbg !425
  %31 = load ptr, ptr %2, align 8, !dbg !426
  %32 = getelementptr inbounds %struct.lwan_t_, ptr %31, i32 0, i32 2, !dbg !427
  %33 = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 0, !dbg !428
  %34 = load ptr, ptr %33, align 8, !dbg !428
  %35 = load i16, ptr %3, align 2, !dbg !429
  %36 = sext i16 %35 to i64, !dbg !426
  %37 = getelementptr inbounds %struct.lwan_thread_t_, ptr %34, i64 %36, !dbg !426
  call void @create_thread(ptr noundef %30, ptr noundef %37), !dbg !430
  br label %38, !dbg !430

38:                                               ; preds = %29
  %39 = load i16, ptr %3, align 2, !dbg !431
  %40 = add i16 %39, 1, !dbg !431
  store i16 %40, ptr %3, align 2, !dbg !431
  br label %20, !dbg !432, !llvm.loop !433

41:                                               ; preds = %20
  ret void, !dbg !436
}

declare void @lwan_status_debug_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #4

; Function Attrs: noreturn
declare void @lwan_status_critical_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_thread(ptr noundef %0, ptr noundef %1) #0 !dbg !437 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %union.pthread_attr_t, align 8
  %6 = alloca %struct.epoll_event, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !440, metadata !DIExpression()), !dbg !441
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !442, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.declare(metadata ptr %5, metadata !444, metadata !DIExpression()), !dbg !453
  %7 = load ptr, ptr %4, align 8, !dbg !454
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 104, i1 false), !dbg !455
  %8 = load ptr, ptr %3, align 8, !dbg !456
  %9 = load ptr, ptr %4, align 8, !dbg !457
  %10 = getelementptr inbounds %struct.lwan_thread_t_, ptr %9, i32 0, i32 0, !dbg !458
  store ptr %8, ptr %10, align 8, !dbg !459
  %11 = call i32 @epoll_create1(i32 noundef 524288) #11, !dbg !460
  %12 = load ptr, ptr %4, align 8, !dbg !462
  %13 = getelementptr inbounds %struct.lwan_thread_t_, ptr %12, i32 0, i32 2, !dbg !463
  store i32 %11, ptr %13, align 8, !dbg !464
  %14 = icmp slt i32 %11, 0, !dbg !465
  br i1 %14, label %15, label %16, !dbg !466

15:                                               ; preds = %2
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 376, ptr noundef @__FUNCTION__.create_thread, ptr noundef @.str.8) #13, !dbg !467
  unreachable, !dbg !467

16:                                               ; preds = %2
  %17 = call i32 @pthread_attr_init(ptr noundef %5) #11, !dbg !468
  %18 = icmp ne i32 %17, 0, !dbg !468
  br i1 %18, label %19, label %20, !dbg !470

19:                                               ; preds = %16
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 379, ptr noundef @__FUNCTION__.create_thread, ptr noundef @.str.9) #13, !dbg !471
  unreachable, !dbg !471

20:                                               ; preds = %16
  %21 = call i32 @pthread_attr_setscope(ptr noundef %5, i32 noundef 0) #11, !dbg !472
  %22 = icmp ne i32 %21, 0, !dbg !472
  br i1 %22, label %23, label %24, !dbg !474

23:                                               ; preds = %20
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 382, ptr noundef @__FUNCTION__.create_thread, ptr noundef @.str.10) #13, !dbg !475
  unreachable, !dbg !475

24:                                               ; preds = %20
  %25 = call i32 @pthread_attr_setdetachstate(ptr noundef %5, i32 noundef 0) #11, !dbg !476
  %26 = icmp ne i32 %25, 0, !dbg !476
  br i1 %26, label %27, label %28, !dbg !478

27:                                               ; preds = %24
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 385, ptr noundef @__FUNCTION__.create_thread, ptr noundef @.str.11) #13, !dbg !479
  unreachable, !dbg !479

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 8, !dbg !480
  %30 = getelementptr inbounds %struct.lwan_thread_t_, ptr %29, i32 0, i32 3, !dbg !482
  %31 = getelementptr inbounds [2 x i32], ptr %30, i64 0, i64 0, !dbg !480
  %32 = call i32 @pipe2(ptr noundef %31, i32 noundef 526336) #11, !dbg !483
  %33 = icmp slt i32 %32, 0, !dbg !484
  br i1 %33, label %34, label %35, !dbg !485

34:                                               ; preds = %28
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 388, ptr noundef @__FUNCTION__.create_thread, ptr noundef @.str.12) #13, !dbg !486
  unreachable, !dbg !486

35:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %6, metadata !487, metadata !DIExpression()), !dbg !501
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 @__const.create_thread.event, i64 12, i1 false), !dbg !501
  %36 = load ptr, ptr %4, align 8, !dbg !502
  %37 = getelementptr inbounds %struct.lwan_thread_t_, ptr %36, i32 0, i32 2, !dbg !504
  %38 = load i32, ptr %37, align 8, !dbg !504
  %39 = load ptr, ptr %4, align 8, !dbg !505
  %40 = getelementptr inbounds %struct.lwan_thread_t_, ptr %39, i32 0, i32 3, !dbg !506
  %41 = getelementptr inbounds [2 x i32], ptr %40, i64 0, i64 0, !dbg !505
  %42 = load i32, ptr %41, align 4, !dbg !505
  %43 = call i32 @epoll_ctl(i32 noundef %38, i32 noundef 1, i32 noundef %42, ptr noundef %6) #11, !dbg !507
  %44 = icmp slt i32 %43, 0, !dbg !508
  br i1 %44, label %45, label %46, !dbg !509

45:                                               ; preds = %35
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 392, ptr noundef @__FUNCTION__.create_thread, ptr noundef @.str.13) #13, !dbg !510
  unreachable, !dbg !510

46:                                               ; preds = %35
  %47 = load ptr, ptr %4, align 8, !dbg !511
  %48 = getelementptr inbounds %struct.lwan_thread_t_, ptr %47, i32 0, i32 4, !dbg !513
  %49 = load ptr, ptr %4, align 8, !dbg !514
  %50 = call i32 @pthread_create(ptr noundef %48, ptr noundef %5, ptr noundef @thread_io_loop, ptr noundef %49) #11, !dbg !515
  %51 = icmp ne i32 %50, 0, !dbg !515
  br i1 %51, label %52, label %53, !dbg !516

52:                                               ; preds = %46
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 395, ptr noundef @__FUNCTION__.create_thread, ptr noundef @.str.14) #13, !dbg !517
  unreachable, !dbg !517

53:                                               ; preds = %46
  %54 = call i32 @pthread_attr_destroy(ptr noundef %5) #11, !dbg !518
  %55 = icmp ne i32 %54, 0, !dbg !518
  br i1 %55, label %56, label %57, !dbg !520

56:                                               ; preds = %53
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 398, ptr noundef @__FUNCTION__.create_thread, ptr noundef @.str.15) #13, !dbg !521
  unreachable, !dbg !521

57:                                               ; preds = %53
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_thread_shutdown(ptr noundef %0) #0 !dbg !523 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !524, metadata !DIExpression()), !dbg !525
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str, i32 noundef 427, ptr noundef @__FUNCTION__.lwan_thread_shutdown, ptr noundef @.str.7), !dbg !526
  call void @llvm.dbg.declare(metadata ptr %3, metadata !527, metadata !DIExpression()), !dbg !529
  %5 = load ptr, ptr %2, align 8, !dbg !530
  %6 = getelementptr inbounds %struct.lwan_t_, ptr %5, i32 0, i32 2, !dbg !531
  %7 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 2, !dbg !532
  %8 = load i16, ptr %7, align 4, !dbg !532
  %9 = zext i16 %8 to i32, !dbg !530
  %10 = sub nsw i32 %9, 1, !dbg !533
  store i32 %10, ptr %3, align 4, !dbg !529
  br label %11, !dbg !534

11:                                               ; preds = %46, %1
  %12 = load i32, ptr %3, align 4, !dbg !535
  %13 = icmp sge i32 %12, 0, !dbg !537
  br i1 %13, label %14, label %49, !dbg !538

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %4, metadata !539, metadata !DIExpression()), !dbg !541
  %15 = load ptr, ptr %2, align 8, !dbg !542
  %16 = getelementptr inbounds %struct.lwan_t_, ptr %15, i32 0, i32 2, !dbg !543
  %17 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 0, !dbg !544
  %18 = load ptr, ptr %17, align 8, !dbg !544
  %19 = load i32, ptr %3, align 4, !dbg !545
  %20 = sext i32 %19 to i64, !dbg !542
  %21 = getelementptr inbounds %struct.lwan_thread_t_, ptr %18, i64 %20, !dbg !542
  store ptr %21, ptr %4, align 8, !dbg !541
  %22 = load ptr, ptr %4, align 8, !dbg !546
  %23 = getelementptr inbounds %struct.lwan_thread_t_, ptr %22, i32 0, i32 2, !dbg !547
  %24 = load i32, ptr %23, align 8, !dbg !547
  %25 = call i32 @close(i32 noundef %24), !dbg !548
  %26 = load ptr, ptr %4, align 8, !dbg !549
  %27 = getelementptr inbounds %struct.lwan_thread_t_, ptr %26, i32 0, i32 3, !dbg !550
  %28 = getelementptr inbounds [2 x i32], ptr %27, i64 0, i64 0, !dbg !549
  %29 = load i32, ptr %28, align 4, !dbg !549
  %30 = call i32 @close(i32 noundef %29), !dbg !551
  %31 = load ptr, ptr %4, align 8, !dbg !552
  %32 = getelementptr inbounds %struct.lwan_thread_t_, ptr %31, i32 0, i32 3, !dbg !553
  %33 = getelementptr inbounds [2 x i32], ptr %32, i64 0, i64 1, !dbg !552
  %34 = load i32, ptr %33, align 4, !dbg !552
  %35 = call i32 @close(i32 noundef %34), !dbg !554
  %36 = load ptr, ptr %2, align 8, !dbg !555
  %37 = getelementptr inbounds %struct.lwan_t_, ptr %36, i32 0, i32 2, !dbg !556
  %38 = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 0, !dbg !557
  %39 = load ptr, ptr %38, align 8, !dbg !557
  %40 = load i32, ptr %3, align 4, !dbg !558
  %41 = sext i32 %40 to i64, !dbg !555
  %42 = getelementptr inbounds %struct.lwan_thread_t_, ptr %39, i64 %41, !dbg !555
  %43 = getelementptr inbounds %struct.lwan_thread_t_, ptr %42, i32 0, i32 4, !dbg !559
  %44 = load i64, ptr %43, align 8, !dbg !559
  %45 = call i32 @pthread_tryjoin_np(i64 noundef %44, ptr noundef null) #11, !dbg !560
  br label %46, !dbg !561

46:                                               ; preds = %14
  %47 = load i32, ptr %3, align 4, !dbg !562
  %48 = add nsw i32 %47, -1, !dbg !562
  store i32 %48, ptr %3, align 4, !dbg !562
  br label %11, !dbg !563, !llvm.loop !564

49:                                               ; preds = %11
  %50 = load ptr, ptr %2, align 8, !dbg !566
  %51 = getelementptr inbounds %struct.lwan_t_, ptr %50, i32 0, i32 2, !dbg !567
  %52 = getelementptr inbounds %struct.anon, ptr %51, i32 0, i32 0, !dbg !568
  %53 = load ptr, ptr %52, align 8, !dbg !568
  call void @free(ptr noundef %53) #11, !dbg !569
  ret void, !dbg !570
}

declare i32 @close(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_tryjoin_np(i64 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare i32 @epoll_create1(i32 noundef) #2

; Function Attrs: noreturn
declare void @lwan_status_critical_perror_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #5

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_attr_setscope(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_attr_setdetachstate(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @pipe2(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind
declare i32 @epoll_ctl(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @thread_io_loop(ptr noundef %0) #0 !dbg !571 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.epoll_event, align 1
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca %struct.coro_switcher_t_, align 8
  %31 = alloca %struct.death_queue_t, align 8
  %32 = alloca i32, align 4
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  store ptr %0, ptr %23, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata ptr %24, metadata !576, metadata !DIExpression()), !dbg !577
  %35 = load ptr, ptr %23, align 8, !dbg !578
  store ptr %35, ptr %24, align 8, !dbg !577
  call void @llvm.dbg.declare(metadata ptr %25, metadata !579, metadata !DIExpression()), !dbg !581
  %36 = load ptr, ptr %24, align 8, !dbg !582
  %37 = getelementptr inbounds %struct.lwan_thread_t_, ptr %36, i32 0, i32 2, !dbg !583
  %38 = load i32, ptr %37, align 8, !dbg !583
  store i32 %38, ptr %25, align 4, !dbg !581
  call void @llvm.dbg.declare(metadata ptr %26, metadata !584, metadata !DIExpression()), !dbg !585
  %39 = load ptr, ptr %24, align 8, !dbg !586
  %40 = getelementptr inbounds %struct.lwan_thread_t_, ptr %39, i32 0, i32 3, !dbg !587
  %41 = getelementptr inbounds [2 x i32], ptr %40, i64 0, i64 0, !dbg !586
  %42 = load i32, ptr %41, align 4, !dbg !586
  store i32 %42, ptr %26, align 4, !dbg !585
  call void @llvm.dbg.declare(metadata ptr %27, metadata !588, metadata !DIExpression()), !dbg !589
  %43 = load ptr, ptr %24, align 8, !dbg !590
  %44 = getelementptr inbounds %struct.lwan_thread_t_, ptr %43, i32 0, i32 0, !dbg !591
  %45 = load ptr, ptr %44, align 8, !dbg !591
  %46 = getelementptr inbounds %struct.lwan_t_, ptr %45, i32 0, i32 2, !dbg !592
  %47 = getelementptr inbounds %struct.anon, ptr %46, i32 0, i32 1, !dbg !593
  %48 = load i32, ptr %47, align 8, !dbg !593
  store i32 %48, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !594, metadata !DIExpression()), !dbg !598
  store i32 1024, ptr %22, align 4
  call void @llvm.dbg.declare(metadata ptr %22, metadata !600, metadata !DIExpression()), !dbg !601
  %49 = load i32, ptr %21, align 4, !dbg !602
  %50 = load i32, ptr %22, align 4, !dbg !603
  %51 = icmp slt i32 %49, %50, !dbg !604
  br i1 %51, label %52, label %54, !dbg !602

52:                                               ; preds = %1
  %53 = load i32, ptr %21, align 4, !dbg !605
  br label %56, !dbg !602

54:                                               ; preds = %1
  %55 = load i32, ptr %22, align 4, !dbg !606
  br label %56, !dbg !602

56:                                               ; preds = %52, %54
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ], !dbg !602
  store i32 %57, ptr %27, align 4, !dbg !589
  call void @llvm.dbg.declare(metadata ptr %28, metadata !607, metadata !DIExpression()), !dbg !608
  %58 = load ptr, ptr %24, align 8, !dbg !609
  %59 = getelementptr inbounds %struct.lwan_thread_t_, ptr %58, i32 0, i32 0, !dbg !610
  %60 = load ptr, ptr %59, align 8, !dbg !610
  %61 = getelementptr inbounds %struct.lwan_t_, ptr %60, i32 0, i32 1, !dbg !611
  %62 = load ptr, ptr %61, align 8, !dbg !611
  store ptr %62, ptr %28, align 8, !dbg !608
  call void @llvm.dbg.declare(metadata ptr %29, metadata !612, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.declare(metadata ptr %30, metadata !615, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.declare(metadata ptr %31, metadata !626, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.declare(metadata ptr %32, metadata !634, metadata !DIExpression()), !dbg !635
  %63 = load ptr, ptr %24, align 8, !dbg !636
  %64 = load ptr, ptr %24, align 8, !dbg !636
  %65 = getelementptr inbounds %struct.lwan_thread_t_, ptr %64, i32 0, i32 0, !dbg !636
  %66 = load ptr, ptr %65, align 8, !dbg !636
  %67 = getelementptr inbounds %struct.lwan_t_, ptr %66, i32 0, i32 2, !dbg !636
  %68 = getelementptr inbounds %struct.anon, ptr %67, i32 0, i32 0, !dbg !636
  %69 = load ptr, ptr %68, align 8, !dbg !636
  %70 = ptrtoint ptr %63 to i64, !dbg !636
  %71 = ptrtoint ptr %69 to i64, !dbg !636
  %72 = sub i64 %70, %71, !dbg !636
  %73 = sdiv exact i64 %72, 104, !dbg !636
  %74 = trunc i64 %73 to i16, !dbg !636
  %75 = zext i16 %74 to i32, !dbg !636
  %76 = add nsw i32 %75, 1, !dbg !636
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str, i32 noundef 313, ptr noundef @__FUNCTION__.thread_io_loop, ptr noundef @.str.16, i32 noundef %76), !dbg !636
  %77 = load i32, ptr %27, align 4, !dbg !637
  %78 = sext i32 %77 to i64, !dbg !638
  %79 = call noalias ptr @calloc(i64 noundef %78, i64 noundef 12) #12, !dbg !639
  store ptr %79, ptr %29, align 8, !dbg !640
  %80 = load ptr, ptr %29, align 8, !dbg !641
  %81 = icmp ne ptr %80, null, !dbg !641
  %82 = xor i1 %81, true, !dbg !641
  %83 = zext i1 %82 to i32, !dbg !641
  %84 = sext i32 %83 to i64, !dbg !641
  %85 = icmp ne i64 %84, 0, !dbg !641
  br i1 %85, label %86, label %87, !dbg !643

86:                                               ; preds = %56
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str, i32 noundef 317, ptr noundef @__FUNCTION__.thread_io_loop, ptr noundef @.str.17) #13, !dbg !644
  unreachable, !dbg !644

87:                                               ; preds = %56
  %88 = load ptr, ptr %28, align 8, !dbg !645
  %89 = load ptr, ptr %24, align 8, !dbg !646
  %90 = getelementptr inbounds %struct.lwan_thread_t_, ptr %89, i32 0, i32 0, !dbg !647
  %91 = load ptr, ptr %90, align 8, !dbg !647
  %92 = getelementptr inbounds %struct.lwan_t_, ptr %91, i32 0, i32 4, !dbg !648
  %93 = getelementptr inbounds %struct.lwan_config_t_, ptr %92, i32 0, i32 1, !dbg !649
  %94 = load i16, ptr %93, align 8, !dbg !649
  call void @death_queue_init(ptr noundef %31, ptr noundef %88, i16 noundef zeroext %94), !dbg !650
  br label %95, !dbg !651

95:                                               ; preds = %360, %108, %87
  %96 = load i32, ptr %25, align 4, !dbg !652
  %97 = load ptr, ptr %29, align 8, !dbg !656
  %98 = load i32, ptr %27, align 4, !dbg !657
  store ptr %31, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !658, metadata !DIExpression()), !dbg !663
  %99 = load ptr, ptr %20, align 8, !dbg !665
  %100 = call zeroext i1 @death_queue_empty(ptr noundef %99), !dbg !666
  %101 = zext i1 %100 to i64, !dbg !666
  %102 = select i1 %100, i32 -1, i32 1000, !dbg !666
  %103 = call i32 @epoll_wait(i32 noundef %96, ptr noundef %97, i32 noundef %98, i32 noundef %102), !dbg !667
  store i32 %103, ptr %32, align 4, !dbg !668
  switch i32 %103, label %110 [
    i32 -1, label %104
    i32 0, label %109
  ], !dbg !669

104:                                              ; preds = %95
  %105 = call ptr @__errno_location() #14, !dbg !670
  %106 = load i32, ptr %105, align 4, !dbg !670
  switch i32 %106, label %108 [
    i32 9, label %107
    i32 22, label %107
  ], !dbg !672

107:                                              ; preds = %104, %104
  br label %361, !dbg !673

108:                                              ; preds = %104
  br label %95, !dbg !675, !llvm.loop !676

109:                                              ; preds = %95
  call void @death_queue_kill_waiting(ptr noundef %31), !dbg !679
  br label %360, !dbg !680

110:                                              ; preds = %95
  %111 = load ptr, ptr %24, align 8, !dbg !681
  call void @update_date_cache(ptr noundef %111), !dbg !682
  call void @llvm.dbg.declare(metadata ptr %33, metadata !683, metadata !DIExpression()), !dbg !685
  %112 = load ptr, ptr %29, align 8, !dbg !686
  store ptr %112, ptr %33, align 8, !dbg !685
  br label %113, !dbg !687

113:                                              ; preds = %356, %110
  %114 = load i32, ptr %32, align 4, !dbg !688
  %115 = add nsw i32 %114, -1, !dbg !688
  store i32 %115, ptr %32, align 4, !dbg !688
  %116 = icmp ne i32 %114, 0, !dbg !690
  br i1 %116, label %117, label %359, !dbg !690

117:                                              ; preds = %113
  call void @llvm.dbg.declare(metadata ptr %34, metadata !691, metadata !DIExpression()), !dbg !693
  %118 = load ptr, ptr %33, align 8, !dbg !694
  %119 = getelementptr inbounds %struct.epoll_event, ptr %118, i32 0, i32 1, !dbg !696
  %120 = load ptr, ptr %119, align 1, !dbg !697
  %121 = icmp ne ptr %120, null, !dbg !694
  br i1 %121, label %170, label %122, !dbg !698

122:                                              ; preds = %117
  %123 = load i32, ptr %25, align 4, !dbg !699
  %124 = load i32, ptr %26, align 4, !dbg !701
  %125 = load ptr, ptr %28, align 8, !dbg !702
  %126 = call ptr @grab_and_watch_client(i32 noundef %123, i32 noundef %124, ptr noundef %125), !dbg !703
  store ptr %126, ptr %34, align 8, !dbg !704
  %127 = load ptr, ptr %34, align 8, !dbg !705
  %128 = icmp ne ptr %127, null, !dbg !705
  %129 = xor i1 %128, true, !dbg !705
  %130 = zext i1 %129 to i32, !dbg !705
  %131 = sext i32 %130 to i64, !dbg !705
  %132 = icmp ne i64 %131, 0, !dbg !705
  br i1 %132, label %133, label %134, !dbg !707

133:                                              ; preds = %122
  br label %356, !dbg !708

134:                                              ; preds = %122
  %135 = load ptr, ptr %34, align 8, !dbg !709
  store ptr %135, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !710, metadata !DIExpression()), !dbg !715
  store ptr %30, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !717, metadata !DIExpression()), !dbg !718
  store ptr %31, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !719, metadata !DIExpression()), !dbg !720
  %136 = load ptr, ptr %14, align 8, !dbg !721
  %137 = getelementptr inbounds %struct.lwan_connection_t_, ptr %136, i32 0, i32 2, !dbg !723
  %138 = load ptr, ptr %137, align 8, !dbg !723
  %139 = icmp ne ptr %138, null, !dbg !721
  br i1 %139, label %140, label %151, !dbg !724

140:                                              ; preds = %134
  %141 = load ptr, ptr %14, align 8, !dbg !725
  %142 = load i32, ptr %141, align 8, !dbg !728
  %143 = and i32 %142, 4, !dbg !729
  %144 = icmp ne i32 %143, 0, !dbg !729
  br i1 %144, label %145, label %146, !dbg !730

145:                                              ; preds = %140
  br label %169, !dbg !731

146:                                              ; preds = %140
  %147 = load ptr, ptr %14, align 8, !dbg !732
  %148 = getelementptr inbounds %struct.lwan_connection_t_, ptr %147, i32 0, i32 2, !dbg !733
  %149 = load ptr, ptr %148, align 8, !dbg !733
  %150 = load ptr, ptr %14, align 8, !dbg !734
  call void @coro_reset(ptr noundef %149, ptr noundef @process_request_coro, ptr noundef %150) #11, !dbg !735
  br label %162, !dbg !736

151:                                              ; preds = %134
  %152 = load ptr, ptr %15, align 8, !dbg !737
  %153 = load ptr, ptr %14, align 8, !dbg !739
  %154 = call ptr @coro_new(ptr noundef %152, ptr noundef @process_request_coro, ptr noundef %153) #11, !dbg !740
  %155 = load ptr, ptr %14, align 8, !dbg !741
  %156 = getelementptr inbounds %struct.lwan_connection_t_, ptr %155, i32 0, i32 2, !dbg !742
  store ptr %154, ptr %156, align 8, !dbg !743
  %157 = load ptr, ptr %16, align 8, !dbg !744
  %158 = load ptr, ptr %14, align 8, !dbg !745
  call void @death_queue_insert(ptr noundef %157, ptr noundef %158), !dbg !746
  %159 = load ptr, ptr %14, align 8, !dbg !747
  %160 = load i32, ptr %159, align 8, !dbg !748
  %161 = or i32 %160, 2, !dbg !748
  store i32 %161, ptr %159, align 8, !dbg !748
  br label %162

162:                                              ; preds = %151, %146
  %163 = load ptr, ptr %14, align 8, !dbg !749
  %164 = load i32, ptr %163, align 8, !dbg !750
  %165 = or i32 %164, 4, !dbg !750
  store i32 %165, ptr %163, align 8, !dbg !750
  %166 = load ptr, ptr %14, align 8, !dbg !751
  %167 = load i32, ptr %166, align 8, !dbg !752
  %168 = and i32 %167, -9, !dbg !752
  store i32 %168, ptr %166, align 8, !dbg !752
  br label %169, !dbg !753

169:                                              ; preds = %145, %162
  br label %354, !dbg !754

170:                                              ; preds = %117
  %171 = load ptr, ptr %33, align 8, !dbg !755
  %172 = getelementptr inbounds %struct.epoll_event, ptr %171, i32 0, i32 1, !dbg !757
  %173 = load ptr, ptr %172, align 1, !dbg !758
  store ptr %173, ptr %34, align 8, !dbg !759
  %174 = load ptr, ptr %33, align 8, !dbg !760
  %175 = getelementptr inbounds %struct.epoll_event, ptr %174, i32 0, i32 0, !dbg !760
  %176 = load i32, ptr %175, align 1, !dbg !760
  %177 = and i32 %176, 8208, !dbg !760
  %178 = zext i32 %177 to i64, !dbg !760
  %179 = icmp ne i64 %178, 0, !dbg !760
  br i1 %179, label %180, label %210, !dbg !762

180:                                              ; preds = %170
  %181 = load ptr, ptr %34, align 8, !dbg !763
  store ptr %31, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !765, metadata !DIExpression()), !dbg !769
  store ptr %181, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !771, metadata !DIExpression()), !dbg !772
  %182 = load ptr, ptr %12, align 8, !dbg !773
  %183 = load ptr, ptr %13, align 8, !dbg !774
  call void @death_queue_remove(ptr noundef %182, ptr noundef %183), !dbg !775
  %184 = load ptr, ptr %13, align 8, !dbg !776
  %185 = getelementptr inbounds %struct.lwan_connection_t_, ptr %184, i32 0, i32 2, !dbg !776
  %186 = load ptr, ptr %185, align 8, !dbg !776
  %187 = icmp ne ptr %186, null, !dbg !776
  %188 = xor i1 %187, true, !dbg !776
  %189 = zext i1 %187 to i32, !dbg !776
  %190 = sext i32 %189 to i64, !dbg !776
  br i1 %187, label %191, label %197, !dbg !778

191:                                              ; preds = %180
  %192 = load ptr, ptr %13, align 8, !dbg !779
  %193 = getelementptr inbounds %struct.lwan_connection_t_, ptr %192, i32 0, i32 2, !dbg !781
  %194 = load ptr, ptr %193, align 8, !dbg !781
  call void @coro_free(ptr noundef %194) #11, !dbg !782
  %195 = load ptr, ptr %13, align 8, !dbg !783
  %196 = getelementptr inbounds %struct.lwan_connection_t_, ptr %195, i32 0, i32 2, !dbg !784
  store ptr null, ptr %196, align 8, !dbg !785
  br label %197, !dbg !786

197:                                              ; preds = %191, %180
  %198 = load ptr, ptr %13, align 8, !dbg !787
  %199 = load i32, ptr %198, align 8, !dbg !789
  %200 = and i32 %199, 2, !dbg !790
  %201 = icmp ne i32 %200, 0, !dbg !790
  br i1 %201, label %202, label %209, !dbg !791

202:                                              ; preds = %197
  %203 = load ptr, ptr %13, align 8, !dbg !792
  %204 = load i32, ptr %203, align 8, !dbg !794
  %205 = and i32 %204, -3, !dbg !794
  store i32 %205, ptr %203, align 8, !dbg !794
  %206 = load ptr, ptr %13, align 8, !dbg !795
  %207 = call i32 @lwan_connection_get_fd(ptr noundef %206) #15, !dbg !796
  %208 = call i32 @close(i32 noundef %207) #11, !dbg !797
  br label %209, !dbg !798

209:                                              ; preds = %197, %202
  br label %356, !dbg !799

210:                                              ; preds = %170
  %211 = load ptr, ptr %34, align 8, !dbg !800
  store ptr %211, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !710, metadata !DIExpression()), !dbg !801
  store ptr %30, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !717, metadata !DIExpression()), !dbg !803
  store ptr %31, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !719, metadata !DIExpression()), !dbg !804
  %212 = load ptr, ptr %17, align 8, !dbg !805
  %213 = getelementptr inbounds %struct.lwan_connection_t_, ptr %212, i32 0, i32 2, !dbg !806
  %214 = load ptr, ptr %213, align 8, !dbg !806
  %215 = icmp ne ptr %214, null, !dbg !805
  br i1 %215, label %216, label %227, !dbg !807

216:                                              ; preds = %210
  %217 = load ptr, ptr %17, align 8, !dbg !808
  %218 = load i32, ptr %217, align 8, !dbg !809
  %219 = and i32 %218, 4, !dbg !810
  %220 = icmp ne i32 %219, 0, !dbg !810
  br i1 %220, label %221, label %222, !dbg !811

221:                                              ; preds = %216
  br label %245, !dbg !812

222:                                              ; preds = %216
  %223 = load ptr, ptr %17, align 8, !dbg !813
  %224 = getelementptr inbounds %struct.lwan_connection_t_, ptr %223, i32 0, i32 2, !dbg !814
  %225 = load ptr, ptr %224, align 8, !dbg !814
  %226 = load ptr, ptr %17, align 8, !dbg !815
  call void @coro_reset(ptr noundef %225, ptr noundef @process_request_coro, ptr noundef %226) #11, !dbg !816
  br label %238, !dbg !817

227:                                              ; preds = %210
  %228 = load ptr, ptr %18, align 8, !dbg !818
  %229 = load ptr, ptr %17, align 8, !dbg !819
  %230 = call ptr @coro_new(ptr noundef %228, ptr noundef @process_request_coro, ptr noundef %229) #11, !dbg !820
  %231 = load ptr, ptr %17, align 8, !dbg !821
  %232 = getelementptr inbounds %struct.lwan_connection_t_, ptr %231, i32 0, i32 2, !dbg !822
  store ptr %230, ptr %232, align 8, !dbg !823
  %233 = load ptr, ptr %19, align 8, !dbg !824
  %234 = load ptr, ptr %17, align 8, !dbg !825
  call void @death_queue_insert(ptr noundef %233, ptr noundef %234), !dbg !826
  %235 = load ptr, ptr %17, align 8, !dbg !827
  %236 = load i32, ptr %235, align 8, !dbg !828
  %237 = or i32 %236, 2, !dbg !828
  store i32 %237, ptr %235, align 8, !dbg !828
  br label %238

238:                                              ; preds = %227, %222
  %239 = load ptr, ptr %17, align 8, !dbg !829
  %240 = load i32, ptr %239, align 8, !dbg !830
  %241 = or i32 %240, 4, !dbg !830
  store i32 %241, ptr %239, align 8, !dbg !830
  %242 = load ptr, ptr %17, align 8, !dbg !831
  %243 = load i32, ptr %242, align 8, !dbg !832
  %244 = and i32 %243, -9, !dbg !832
  store i32 %244, ptr %242, align 8, !dbg !832
  br label %245, !dbg !833

245:                                              ; preds = %221, %238
  %246 = load ptr, ptr %34, align 8, !dbg !834
  %247 = load i32, ptr %25, align 4, !dbg !835
  store ptr %31, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !836, metadata !DIExpression()), !dbg !840
  store ptr %246, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !842, metadata !DIExpression()), !dbg !843
  store i32 %247, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !844, metadata !DIExpression()), !dbg !845
  %248 = load ptr, ptr %5, align 8, !dbg !846
  %249 = getelementptr inbounds %struct.lwan_connection_t_, ptr %248, i32 0, i32 2, !dbg !846
  %250 = load ptr, ptr %249, align 8, !dbg !846
  %251 = icmp ne ptr %250, null, !dbg !846
  br i1 %251, label %252, label %257, !dbg !849

252:                                              ; preds = %245
  %253 = load ptr, ptr %5, align 8, !dbg !850
  %254 = load i32, ptr %253, align 8, !dbg !852
  %255 = and i32 %254, 4, !dbg !853
  %256 = icmp ne i32 %255, 0, !dbg !853
  br i1 %256, label %259, label %258, !dbg !854

257:                                              ; preds = %245
  call void @__assert_fail(ptr noundef @.str.20, ptr noundef @.str, i32 noundef 177, ptr noundef @__PRETTY_FUNCTION__.resume_coro_if_needed) #16, !dbg !846
  unreachable, !dbg !846

258:                                              ; preds = %252
  br label %353, !dbg !855

259:                                              ; preds = %252
  call void @llvm.dbg.declare(metadata ptr %7, metadata !856, metadata !DIExpression()), !dbg !858
  %260 = load ptr, ptr %5, align 8, !dbg !859
  %261 = getelementptr inbounds %struct.lwan_connection_t_, ptr %260, i32 0, i32 2, !dbg !860
  %262 = load ptr, ptr %261, align 8, !dbg !860
  %263 = call i32 @coro_resume(ptr noundef %262) #11, !dbg !861
  store i32 %263, ptr %7, align 4, !dbg !858
  %264 = load i32, ptr %7, align 4, !dbg !862
  %265 = icmp slt i32 %264, 0, !dbg !864
  br i1 %265, label %266, label %297, !dbg !865

266:                                              ; preds = %259
  %267 = load ptr, ptr %4, align 8, !dbg !866
  %268 = load ptr, ptr %5, align 8, !dbg !868
  store ptr %267, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !765, metadata !DIExpression()), !dbg !869
  store ptr %268, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !771, metadata !DIExpression()), !dbg !871
  %269 = load ptr, ptr %2, align 8, !dbg !872
  %270 = load ptr, ptr %3, align 8, !dbg !873
  call void @death_queue_remove(ptr noundef %269, ptr noundef %270), !dbg !874
  %271 = load ptr, ptr %3, align 8, !dbg !875
  %272 = getelementptr inbounds %struct.lwan_connection_t_, ptr %271, i32 0, i32 2, !dbg !875
  %273 = load ptr, ptr %272, align 8, !dbg !875
  %274 = icmp ne ptr %273, null, !dbg !875
  %275 = xor i1 %274, true, !dbg !875
  %276 = zext i1 %274 to i32, !dbg !875
  %277 = sext i32 %276 to i64, !dbg !875
  br i1 %274, label %278, label %284, !dbg !876

278:                                              ; preds = %266
  %279 = load ptr, ptr %3, align 8, !dbg !877
  %280 = getelementptr inbounds %struct.lwan_connection_t_, ptr %279, i32 0, i32 2, !dbg !878
  %281 = load ptr, ptr %280, align 8, !dbg !878
  call void @coro_free(ptr noundef %281) #11, !dbg !879
  %282 = load ptr, ptr %3, align 8, !dbg !880
  %283 = getelementptr inbounds %struct.lwan_connection_t_, ptr %282, i32 0, i32 2, !dbg !881
  store ptr null, ptr %283, align 8, !dbg !882
  br label %284, !dbg !883

284:                                              ; preds = %278, %266
  %285 = load ptr, ptr %3, align 8, !dbg !884
  %286 = load i32, ptr %285, align 8, !dbg !885
  %287 = and i32 %286, 2, !dbg !886
  %288 = icmp ne i32 %287, 0, !dbg !886
  br i1 %288, label %289, label %296, !dbg !887

289:                                              ; preds = %284
  %290 = load ptr, ptr %3, align 8, !dbg !888
  %291 = load i32, ptr %290, align 8, !dbg !889
  %292 = and i32 %291, -3, !dbg !889
  store i32 %292, ptr %290, align 8, !dbg !889
  %293 = load ptr, ptr %3, align 8, !dbg !890
  %294 = call i32 @lwan_connection_get_fd(ptr noundef %293) #15, !dbg !891
  %295 = call i32 @close(i32 noundef %294) #11, !dbg !892
  br label %296, !dbg !893

296:                                              ; preds = %289, %284
  br label %353, !dbg !894

297:                                              ; preds = %259
  call void @llvm.dbg.declare(metadata ptr %8, metadata !895, metadata !DIExpression()), !dbg !896
  %298 = load ptr, ptr %5, align 8, !dbg !897
  %299 = load i32, ptr %298, align 8, !dbg !899
  %300 = and i32 %299, 16, !dbg !900
  %301 = icmp ne i32 %300, 0, !dbg !900
  br i1 %301, label %302, label %303, !dbg !901

302:                                              ; preds = %297
  store i8 1, ptr %8, align 1, !dbg !902
  br label %332, !dbg !904

303:                                              ; preds = %297
  call void @llvm.dbg.declare(metadata ptr %9, metadata !905, metadata !DIExpression()), !dbg !907
  %304 = load i32, ptr %7, align 4, !dbg !908
  %305 = icmp eq i32 %304, 0, !dbg !909
  %306 = zext i1 %305 to i8, !dbg !907
  store i8 %306, ptr %9, align 1, !dbg !907
  %307 = load i8, ptr %9, align 1, !dbg !910
  %308 = trunc i8 %307 to i1, !dbg !910
  br i1 %308, label %309, label %313, !dbg !912

309:                                              ; preds = %303
  %310 = load ptr, ptr %5, align 8, !dbg !913
  %311 = load i32, ptr %310, align 8, !dbg !914
  %312 = or i32 %311, 4, !dbg !914
  store i32 %312, ptr %310, align 8, !dbg !914
  br label %317, !dbg !913

313:                                              ; preds = %303
  %314 = load ptr, ptr %5, align 8, !dbg !915
  %315 = load i32, ptr %314, align 8, !dbg !916
  %316 = and i32 %315, -5, !dbg !916
  store i32 %316, ptr %314, align 8, !dbg !916
  br label %317

317:                                              ; preds = %313, %309
  %318 = load ptr, ptr %5, align 8, !dbg !917
  %319 = load i32, ptr %318, align 8, !dbg !918
  %320 = and i32 %319, 8, !dbg !919
  %321 = icmp ne i32 %320, 0, !dbg !920
  %322 = zext i1 %321 to i8, !dbg !921
  store i8 %322, ptr %8, align 1, !dbg !921
  %323 = load i8, ptr %9, align 1, !dbg !922
  %324 = trunc i8 %323 to i1, !dbg !922
  %325 = zext i1 %324 to i32, !dbg !922
  %326 = load i8, ptr %8, align 1, !dbg !924
  %327 = trunc i8 %326 to i1, !dbg !924
  %328 = zext i1 %327 to i32, !dbg !924
  %329 = icmp eq i32 %325, %328, !dbg !925
  br i1 %329, label %330, label %331, !dbg !926

330:                                              ; preds = %317
  br label %353, !dbg !927

331:                                              ; preds = %317
  br label %332

332:                                              ; preds = %331, %302
  call void @llvm.dbg.declare(metadata ptr %10, metadata !928, metadata !DIExpression()), !dbg !929
  %333 = load i8, ptr %8, align 1, !dbg !930
  %334 = trunc i8 %333 to i1, !dbg !930
  %335 = zext i1 %334 to i64, !dbg !931
  %336 = getelementptr inbounds [2 x i32], ptr @events_by_write_flag, i64 0, i64 %335, !dbg !931
  %337 = load i32, ptr %336, align 4, !dbg !931
  store i32 %337, ptr %10, align 1, !dbg !932
  %338 = getelementptr inbounds %struct.epoll_event, ptr %10, i32 0, i32 1, !dbg !932
  %339 = load ptr, ptr %5, align 8, !dbg !933
  store ptr %339, ptr %338, align 1, !dbg !934
  call void @llvm.dbg.declare(metadata ptr %11, metadata !935, metadata !DIExpression()), !dbg !936
  %340 = load ptr, ptr %5, align 8, !dbg !937
  %341 = call i32 @lwan_connection_get_fd(ptr noundef %340) #15, !dbg !938
  store i32 %341, ptr %11, align 4, !dbg !936
  %342 = load i32, ptr %6, align 4, !dbg !939
  %343 = load i32, ptr %11, align 4, !dbg !939
  %344 = call i32 @epoll_ctl(i32 noundef %342, i32 noundef 3, i32 noundef %343, ptr noundef %10) #11, !dbg !939
  %345 = icmp slt i32 %344, 0, !dbg !939
  %346 = zext i1 %345 to i32, !dbg !939
  %347 = sext i32 %346 to i64, !dbg !939
  br i1 %345, label %348, label %349, !dbg !941

348:                                              ; preds = %332
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str, i32 noundef 212, ptr noundef @__FUNCTION__.resume_coro_if_needed, ptr noundef @.str.13) #11, !dbg !942
  br label %349, !dbg !942

349:                                              ; preds = %348, %332
  %350 = load ptr, ptr %5, align 8, !dbg !943
  %351 = load i32, ptr %350, align 8, !dbg !944
  %352 = xor i32 %351, 8, !dbg !944
  store i32 %352, ptr %350, align 8, !dbg !944
  br label %353, !dbg !945

353:                                              ; preds = %258, %296, %330, %349
  br label %354

354:                                              ; preds = %353, %169
  %355 = load ptr, ptr %34, align 8, !dbg !946
  call void @death_queue_move_to_last(ptr noundef %31, ptr noundef %355), !dbg !947
  br label %356, !dbg !948

356:                                              ; preds = %354, %209, %133
  %357 = load ptr, ptr %33, align 8, !dbg !949
  %358 = getelementptr inbounds %struct.epoll_event, ptr %357, i32 1, !dbg !949
  store ptr %358, ptr %33, align 8, !dbg !949
  br label %113, !dbg !950, !llvm.loop !951

359:                                              ; preds = %113
  br label %360, !dbg !953

360:                                              ; preds = %359, %109
  br label %95, !dbg !954, !llvm.loop !676

361:                                              ; preds = %107
  call void @llvm.dbg.label(metadata !955), !dbg !956
  %362 = load ptr, ptr %29, align 8, !dbg !957
  call void @free(ptr noundef %362) #11, !dbg !958
  ret ptr null, !dbg !959
}

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @death_queue_init(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 !dbg !960 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !963, metadata !DIExpression()), !dbg !964
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !965, metadata !DIExpression()), !dbg !966
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !967, metadata !DIExpression()), !dbg !968
  %7 = load ptr, ptr %5, align 8, !dbg !969
  %8 = load ptr, ptr %4, align 8, !dbg !970
  %9 = getelementptr inbounds %struct.death_queue_t, ptr %8, i32 0, i32 0, !dbg !971
  store ptr %7, ptr %9, align 8, !dbg !972
  %10 = load ptr, ptr %4, align 8, !dbg !973
  %11 = getelementptr inbounds %struct.death_queue_t, ptr %10, i32 0, i32 2, !dbg !974
  store i32 0, ptr %11, align 8, !dbg !975
  %12 = load i16, ptr %6, align 2, !dbg !976
  %13 = load ptr, ptr %4, align 8, !dbg !977
  %14 = getelementptr inbounds %struct.death_queue_t, ptr %13, i32 0, i32 3, !dbg !978
  store i16 %12, ptr %14, align 4, !dbg !979
  %15 = load ptr, ptr %4, align 8, !dbg !980
  %16 = getelementptr inbounds %struct.death_queue_t, ptr %15, i32 0, i32 1, !dbg !981
  %17 = getelementptr inbounds %struct.lwan_connection_t_, ptr %16, i32 0, i32 4, !dbg !982
  store i32 -1, ptr %17, align 8, !dbg !983
  %18 = load ptr, ptr %4, align 8, !dbg !984
  %19 = getelementptr inbounds %struct.death_queue_t, ptr %18, i32 0, i32 1, !dbg !985
  %20 = getelementptr inbounds %struct.lwan_connection_t_, ptr %19, i32 0, i32 5, !dbg !986
  store i32 -1, ptr %20, align 4, !dbg !987
  ret void, !dbg !988
}

declare i32 @epoll_wait(i32 noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @death_queue_kill_waiting(ptr noundef %0) #0 !dbg !989 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !992, metadata !DIExpression()), !dbg !993
  %6 = load ptr, ptr %4, align 8, !dbg !994
  %7 = getelementptr inbounds %struct.death_queue_t, ptr %6, i32 0, i32 2, !dbg !995
  %8 = load i32, ptr %7, align 8, !dbg !996
  %9 = add i32 %8, 1, !dbg !996
  store i32 %9, ptr %7, align 8, !dbg !996
  br label %10, !dbg !997

10:                                               ; preds = %59, %1
  %11 = load ptr, ptr %4, align 8, !dbg !998
  %12 = call zeroext i1 @death_queue_empty(ptr noundef %11), !dbg !999
  %13 = xor i1 %12, true, !dbg !1000
  br i1 %13, label %14, label %60, !dbg !997

14:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1001, metadata !DIExpression()), !dbg !1003
  %15 = load ptr, ptr %4, align 8, !dbg !1004
  %16 = load ptr, ptr %4, align 8, !dbg !1005
  %17 = getelementptr inbounds %struct.death_queue_t, ptr %16, i32 0, i32 1, !dbg !1006
  %18 = getelementptr inbounds %struct.lwan_connection_t_, ptr %17, i32 0, i32 5, !dbg !1007
  %19 = load i32, ptr %18, align 4, !dbg !1007
  %20 = call ptr @death_queue_idx_to_node(ptr noundef %15, i32 noundef %19), !dbg !1008
  store ptr %20, ptr %5, align 8, !dbg !1003
  %21 = load ptr, ptr %5, align 8, !dbg !1009
  %22 = getelementptr inbounds %struct.lwan_connection_t_, ptr %21, i32 0, i32 1, !dbg !1011
  %23 = load i32, ptr %22, align 4, !dbg !1011
  %24 = load ptr, ptr %4, align 8, !dbg !1012
  %25 = getelementptr inbounds %struct.death_queue_t, ptr %24, i32 0, i32 2, !dbg !1013
  %26 = load i32, ptr %25, align 8, !dbg !1013
  %27 = icmp ugt i32 %23, %26, !dbg !1014
  br i1 %27, label %28, label %29, !dbg !1015

28:                                               ; preds = %14
  br label %63, !dbg !1016

29:                                               ; preds = %14
  %30 = load ptr, ptr %4, align 8, !dbg !1017
  %31 = load ptr, ptr %5, align 8, !dbg !1018
  store ptr %30, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !765, metadata !DIExpression()), !dbg !1019
  store ptr %31, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !771, metadata !DIExpression()), !dbg !1021
  %32 = load ptr, ptr %2, align 8, !dbg !1022
  %33 = load ptr, ptr %3, align 8, !dbg !1023
  call void @death_queue_remove(ptr noundef %32, ptr noundef %33), !dbg !1024
  %34 = load ptr, ptr %3, align 8, !dbg !1025
  %35 = getelementptr inbounds %struct.lwan_connection_t_, ptr %34, i32 0, i32 2, !dbg !1025
  %36 = load ptr, ptr %35, align 8, !dbg !1025
  %37 = icmp ne ptr %36, null, !dbg !1025
  %38 = xor i1 %37, true, !dbg !1025
  %39 = zext i1 %37 to i32, !dbg !1025
  %40 = sext i32 %39 to i64, !dbg !1025
  br i1 %37, label %41, label %47, !dbg !1026

41:                                               ; preds = %29
  %42 = load ptr, ptr %3, align 8, !dbg !1027
  %43 = getelementptr inbounds %struct.lwan_connection_t_, ptr %42, i32 0, i32 2, !dbg !1028
  %44 = load ptr, ptr %43, align 8, !dbg !1028
  call void @coro_free(ptr noundef %44) #11, !dbg !1029
  %45 = load ptr, ptr %3, align 8, !dbg !1030
  %46 = getelementptr inbounds %struct.lwan_connection_t_, ptr %45, i32 0, i32 2, !dbg !1031
  store ptr null, ptr %46, align 8, !dbg !1032
  br label %47, !dbg !1033

47:                                               ; preds = %41, %29
  %48 = load ptr, ptr %3, align 8, !dbg !1034
  %49 = load i32, ptr %48, align 8, !dbg !1035
  %50 = and i32 %49, 2, !dbg !1036
  %51 = icmp ne i32 %50, 0, !dbg !1036
  br i1 %51, label %52, label %59, !dbg !1037

52:                                               ; preds = %47
  %53 = load ptr, ptr %3, align 8, !dbg !1038
  %54 = load i32, ptr %53, align 8, !dbg !1039
  %55 = and i32 %54, -3, !dbg !1039
  store i32 %55, ptr %53, align 8, !dbg !1039
  %56 = load ptr, ptr %3, align 8, !dbg !1040
  %57 = call i32 @lwan_connection_get_fd(ptr noundef %56) #15, !dbg !1041
  %58 = call i32 @close(i32 noundef %57) #11, !dbg !1042
  br label %59, !dbg !1043

59:                                               ; preds = %47, %52
  br label %10, !dbg !997, !llvm.loop !1044

60:                                               ; preds = %10
  %61 = load ptr, ptr %4, align 8, !dbg !1046
  %62 = getelementptr inbounds %struct.death_queue_t, ptr %61, i32 0, i32 2, !dbg !1047
  store i32 0, ptr %62, align 8, !dbg !1048
  br label %63, !dbg !1049

63:                                               ; preds = %60, %28
  ret void, !dbg !1049
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_date_cache(ptr noundef %0) #0 !dbg !1050 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1053, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1055, metadata !DIExpression()), !dbg !1056
  %4 = call i64 @time(ptr noundef null) #11, !dbg !1057
  store i64 %4, ptr %3, align 8, !dbg !1056
  %5 = load i64, ptr %3, align 8, !dbg !1058
  %6 = load ptr, ptr %2, align 8, !dbg !1060
  %7 = getelementptr inbounds %struct.lwan_thread_t_, ptr %6, i32 0, i32 1, !dbg !1061
  %8 = getelementptr inbounds %struct.anon.0, ptr %7, i32 0, i32 2, !dbg !1062
  %9 = load i64, ptr %8, align 8, !dbg !1062
  %10 = icmp ne i64 %5, %9, !dbg !1063
  br i1 %10, label %11, label %34, !dbg !1064

11:                                               ; preds = %1
  %12 = load i64, ptr %3, align 8, !dbg !1065
  %13 = load ptr, ptr %2, align 8, !dbg !1067
  %14 = getelementptr inbounds %struct.lwan_thread_t_, ptr %13, i32 0, i32 1, !dbg !1068
  %15 = getelementptr inbounds %struct.anon.0, ptr %14, i32 0, i32 2, !dbg !1069
  store i64 %12, ptr %15, align 8, !dbg !1070
  %16 = load i64, ptr %3, align 8, !dbg !1071
  %17 = load ptr, ptr %2, align 8, !dbg !1072
  %18 = getelementptr inbounds %struct.lwan_thread_t_, ptr %17, i32 0, i32 1, !dbg !1073
  %19 = getelementptr inbounds %struct.anon.0, ptr %18, i32 0, i32 0, !dbg !1074
  %20 = getelementptr inbounds [30 x i8], ptr %19, i64 0, i64 0, !dbg !1072
  call void @lwan_format_rfc_time(i64 noundef %16, ptr noundef %20), !dbg !1075
  %21 = load i64, ptr %3, align 8, !dbg !1076
  %22 = load ptr, ptr %2, align 8, !dbg !1077
  %23 = getelementptr inbounds %struct.lwan_thread_t_, ptr %22, i32 0, i32 0, !dbg !1078
  %24 = load ptr, ptr %23, align 8, !dbg !1078
  %25 = getelementptr inbounds %struct.lwan_t_, ptr %24, i32 0, i32 4, !dbg !1079
  %26 = getelementptr inbounds %struct.lwan_config_t_, ptr %25, i32 0, i32 4, !dbg !1080
  %27 = load i32, ptr %26, align 4, !dbg !1080
  %28 = zext i32 %27 to i64, !dbg !1081
  %29 = add nsw i64 %21, %28, !dbg !1082
  %30 = load ptr, ptr %2, align 8, !dbg !1083
  %31 = getelementptr inbounds %struct.lwan_thread_t_, ptr %30, i32 0, i32 1, !dbg !1084
  %32 = getelementptr inbounds %struct.anon.0, ptr %31, i32 0, i32 1, !dbg !1085
  %33 = getelementptr inbounds [30 x i8], ptr %32, i64 0, i64 0, !dbg !1083
  call void @lwan_format_rfc_time(i64 noundef %29, ptr noundef %33), !dbg !1086
  br label %34, !dbg !1087

34:                                               ; preds = %11, %1
  ret void, !dbg !1088
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @grab_and_watch_client(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !1089 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.epoll_event, align 1
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1092, metadata !DIExpression()), !dbg !1093
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1094, metadata !DIExpression()), !dbg !1095
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1096, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1098, metadata !DIExpression()), !dbg !1099
  %10 = load i32, ptr %6, align 4, !dbg !1100
  %11 = call i64 @read(i32 noundef %10, ptr noundef %8, i64 noundef 4), !dbg !1100
  %12 = icmp ne i64 %11, 4, !dbg !1100
  %13 = zext i1 %12 to i32, !dbg !1100
  %14 = sext i32 %13 to i64, !dbg !1100
  %15 = icmp ne i64 %14, 0, !dbg !1100
  br i1 %15, label %16, label %17, !dbg !1102

16:                                               ; preds = %3
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str, i32 noundef 285, ptr noundef @__FUNCTION__.grab_and_watch_client, ptr noundef @.str.18), !dbg !1103
  store ptr null, ptr %4, align 8, !dbg !1105
  br label %38, !dbg !1105

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1106, metadata !DIExpression()), !dbg !1107
  %18 = getelementptr inbounds %struct.epoll_event, ptr %9, i32 0, i32 0, !dbg !1108
  %19 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @events_by_write_flag, i64 0, i64 1), align 4, !dbg !1109
  store i32 %19, ptr %18, align 1, !dbg !1108
  %20 = getelementptr inbounds %struct.epoll_event, ptr %9, i32 0, i32 1, !dbg !1108
  %21 = load ptr, ptr %7, align 8, !dbg !1110
  %22 = load i32, ptr %8, align 4, !dbg !1111
  %23 = sext i32 %22 to i64, !dbg !1110
  %24 = getelementptr inbounds %struct.lwan_connection_t_, ptr %21, i64 %23, !dbg !1110
  store ptr %24, ptr %20, align 1, !dbg !1112
  %25 = load i32, ptr %5, align 4, !dbg !1113
  %26 = load i32, ptr %8, align 4, !dbg !1113
  %27 = call i32 @epoll_ctl(i32 noundef %25, i32 noundef 1, i32 noundef %26, ptr noundef %9) #11, !dbg !1113
  %28 = icmp slt i32 %27, 0, !dbg !1113
  %29 = zext i1 %28 to i32, !dbg !1113
  %30 = sext i32 %29 to i64, !dbg !1113
  %31 = icmp ne i64 %30, 0, !dbg !1113
  br i1 %31, label %32, label %33, !dbg !1115

32:                                               ; preds = %17
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 294, ptr noundef @__FUNCTION__.grab_and_watch_client, ptr noundef @.str.13) #13, !dbg !1116
  unreachable, !dbg !1116

33:                                               ; preds = %17
  %34 = load ptr, ptr %7, align 8, !dbg !1117
  %35 = load i32, ptr %8, align 4, !dbg !1118
  %36 = sext i32 %35 to i64, !dbg !1117
  %37 = getelementptr inbounds %struct.lwan_connection_t_, ptr %34, i64 %36, !dbg !1117
  store ptr %37, ptr %4, align 8, !dbg !1119
  br label %38, !dbg !1119

38:                                               ; preds = %33, %16
  %39 = load ptr, ptr %4, align 8, !dbg !1120
  ret ptr %39, !dbg !1120
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @death_queue_move_to_last(ptr noundef %0, ptr noundef %1) #0 !dbg !1121 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1122, metadata !DIExpression()), !dbg !1123
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1124, metadata !DIExpression()), !dbg !1125
  %5 = load ptr, ptr %3, align 8, !dbg !1126
  %6 = getelementptr inbounds %struct.death_queue_t, ptr %5, i32 0, i32 2, !dbg !1127
  %7 = load i32, ptr %6, align 8, !dbg !1127
  %8 = load ptr, ptr %3, align 8, !dbg !1128
  %9 = getelementptr inbounds %struct.death_queue_t, ptr %8, i32 0, i32 3, !dbg !1129
  %10 = load i16, ptr %9, align 4, !dbg !1129
  %11 = zext i16 %10 to i32, !dbg !1128
  %12 = load ptr, ptr %4, align 8, !dbg !1130
  %13 = getelementptr inbounds %struct.lwan_connection_t_, ptr %12, i32 0, i32 0, !dbg !1131
  %14 = load i32, ptr %13, align 8, !dbg !1131
  %15 = and i32 %14, 5, !dbg !1132
  %16 = icmp ne i32 %15, 0, !dbg !1133
  %17 = xor i1 %16, true, !dbg !1133
  %18 = xor i1 %17, true, !dbg !1134
  %19 = zext i1 %18 to i32, !dbg !1134
  %20 = mul i32 %11, %19, !dbg !1135
  %21 = add i32 %7, %20, !dbg !1136
  %22 = load ptr, ptr %4, align 8, !dbg !1137
  %23 = getelementptr inbounds %struct.lwan_connection_t_, ptr %22, i32 0, i32 1, !dbg !1138
  store i32 %21, ptr %23, align 4, !dbg !1139
  %24 = load ptr, ptr %3, align 8, !dbg !1140
  %25 = load ptr, ptr %4, align 8, !dbg !1141
  call void @death_queue_remove(ptr noundef %24, ptr noundef %25), !dbg !1142
  %26 = load ptr, ptr %3, align 8, !dbg !1143
  %27 = load ptr, ptr %4, align 8, !dbg !1144
  call void @death_queue_insert(ptr noundef %26, ptr noundef %27), !dbg !1145
  ret void, !dbg !1146
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @death_queue_empty(ptr noundef %0) #0 !dbg !1147 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1150, metadata !DIExpression()), !dbg !1151
  %3 = load ptr, ptr %2, align 8, !dbg !1152
  %4 = getelementptr inbounds %struct.death_queue_t, ptr %3, i32 0, i32 1, !dbg !1153
  %5 = getelementptr inbounds %struct.lwan_connection_t_, ptr %4, i32 0, i32 5, !dbg !1154
  %6 = load i32, ptr %5, align 4, !dbg !1154
  %7 = icmp slt i32 %6, 0, !dbg !1155
  ret i1 %7, !dbg !1156
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @death_queue_idx_to_node(ptr noundef %0, i32 noundef %1) #0 !dbg !1157 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1160, metadata !DIExpression()), !dbg !1161
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1162, metadata !DIExpression()), !dbg !1163
  %5 = load i32, ptr %4, align 4, !dbg !1164
  %6 = icmp slt i32 %5, 0, !dbg !1165
  br i1 %6, label %7, label %10, !dbg !1166

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !1167
  %9 = getelementptr inbounds %struct.death_queue_t, ptr %8, i32 0, i32 1, !dbg !1168
  br label %17, !dbg !1166

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !dbg !1169
  %12 = getelementptr inbounds %struct.death_queue_t, ptr %11, i32 0, i32 0, !dbg !1170
  %13 = load ptr, ptr %12, align 8, !dbg !1170
  %14 = load i32, ptr %4, align 4, !dbg !1171
  %15 = sext i32 %14 to i64, !dbg !1169
  %16 = getelementptr inbounds %struct.lwan_connection_t_, ptr %13, i64 %15, !dbg !1169
  br label %17, !dbg !1166

17:                                               ; preds = %10, %7
  %18 = phi ptr [ %9, %7 ], [ %16, %10 ], !dbg !1166
  ret ptr %18, !dbg !1172
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #2

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #3

declare void @coro_reset(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_request_coro(ptr noundef %0) #0 !dbg !1173 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct.lwan_value_t_, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.lwan_request_t_, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1176, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1178, metadata !DIExpression()), !dbg !1195
  %12 = load ptr, ptr %3, align 8, !dbg !1196
  %13 = call ptr @coro_malloc_full(ptr noundef %12, i64 noundef 32, ptr noundef @strbuf_free), !dbg !1197
  store ptr %13, ptr %4, align 8, !dbg !1195
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1198, metadata !DIExpression()), !dbg !1199
  %14 = load ptr, ptr %3, align 8, !dbg !1200
  %15 = call ptr @coro_get_data(ptr noundef %14), !dbg !1201
  store ptr %15, ptr %5, align 8, !dbg !1199
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1202, metadata !DIExpression()), !dbg !1203
  %16 = load ptr, ptr %5, align 8, !dbg !1204
  %17 = getelementptr inbounds %struct.lwan_connection_t_, ptr %16, i32 0, i32 3, !dbg !1205
  %18 = load ptr, ptr %17, align 8, !dbg !1205
  %19 = getelementptr inbounds %struct.lwan_thread_t_, ptr %18, i32 0, i32 0, !dbg !1206
  %20 = load ptr, ptr %19, align 8, !dbg !1206
  store ptr %20, ptr %6, align 8, !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1207, metadata !DIExpression()), !dbg !1208
  %21 = load ptr, ptr %5, align 8, !dbg !1209
  %22 = call i32 @lwan_connection_get_fd(ptr noundef %21) #15, !dbg !1210
  store i32 %22, ptr %7, align 4, !dbg !1208
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1211, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1216, metadata !DIExpression()), !dbg !1222
  %23 = getelementptr inbounds %struct.lwan_value_t_, ptr %9, i32 0, i32 0, !dbg !1223
  %24 = getelementptr inbounds [4096 x i8], ptr %8, i64 0, i64 0, !dbg !1224
  store ptr %24, ptr %23, align 8, !dbg !1223
  %25 = getelementptr inbounds %struct.lwan_value_t_, ptr %9, i32 0, i32 1, !dbg !1223
  store i64 0, ptr %25, align 8, !dbg !1223
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1225, metadata !DIExpression()), !dbg !1226
  store ptr null, ptr %10, align 8, !dbg !1226
  %26 = load ptr, ptr %4, align 8, !dbg !1227
  %27 = call zeroext i1 @strbuf_init(ptr noundef %26), !dbg !1228
  br label %28, !dbg !1229

28:                                               ; preds = %1, %60
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1230, metadata !DIExpression()), !dbg !1284
  call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 160, i1 false), !dbg !1284
  %29 = getelementptr inbounds %struct.lwan_request_t_, ptr %11, i32 0, i32 1, !dbg !1285
  %30 = load i32, ptr %7, align 4, !dbg !1286
  store i32 %30, ptr %29, align 4, !dbg !1285
  %31 = getelementptr inbounds %struct.lwan_request_t_, ptr %11, i32 0, i32 4, !dbg !1285
  %32 = load ptr, ptr %5, align 8, !dbg !1287
  store ptr %32, ptr %31, align 8, !dbg !1285
  %33 = getelementptr inbounds %struct.lwan_request_t_, ptr %11, i32 0, i32 8, !dbg !1285
  %34 = getelementptr inbounds %struct.lwan_response_t_, ptr %33, i32 0, i32 0, !dbg !1288
  %35 = load ptr, ptr %4, align 8, !dbg !1289
  store ptr %35, ptr %34, align 8, !dbg !1288
  %36 = load ptr, ptr %5, align 8, !dbg !1290
  %37 = getelementptr inbounds %struct.lwan_connection_t_, ptr %36, i32 0, i32 0, !dbg !1290
  %38 = load i32, ptr %37, align 8, !dbg !1290
  %39 = and i32 %38, 2, !dbg !1290
  %40 = icmp ne i32 %39, 0, !dbg !1290
  br i1 %40, label %41, label %42, !dbg !1293

41:                                               ; preds = %28
  br label %43, !dbg !1293

42:                                               ; preds = %28
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str, i32 noundef 158, ptr noundef @__PRETTY_FUNCTION__.process_request_coro) #16, !dbg !1290
  unreachable, !dbg !1290

43:                                               ; preds = %41
  %44 = load ptr, ptr %6, align 8, !dbg !1294
  %45 = load ptr, ptr %10, align 8, !dbg !1295
  %46 = call ptr @lwan_process_request(ptr noundef %44, ptr noundef %11, ptr noundef %9, ptr noundef %45), !dbg !1296
  store ptr %46, ptr %10, align 8, !dbg !1297
  %47 = load ptr, ptr %10, align 8, !dbg !1298
  %48 = icmp ne ptr %47, null, !dbg !1298
  br i1 %48, label %50, label %49, !dbg !1300

49:                                               ; preds = %43
  br label %61, !dbg !1301

50:                                               ; preds = %43
  %51 = load ptr, ptr %3, align 8, !dbg !1302
  %52 = call i32 @coro_yield(ptr noundef %51, i32 noundef 0), !dbg !1303
  %53 = load ptr, ptr %4, align 8, !dbg !1304
  %54 = call zeroext i1 @strbuf_reset_length(ptr noundef %53), !dbg !1304
  %55 = xor i1 %54, true, !dbg !1304
  %56 = zext i1 %55 to i32, !dbg !1304
  %57 = sext i32 %56 to i64, !dbg !1304
  %58 = icmp ne i64 %57, 0, !dbg !1304
  br i1 %58, label %59, label %60, !dbg !1306

59:                                               ; preds = %50
  store i32 -1, ptr %2, align 4, !dbg !1307
  br label %62, !dbg !1307

60:                                               ; preds = %50
  br label %28, !dbg !1229, !llvm.loop !1308

61:                                               ; preds = %49
  store i32 1, ptr %2, align 4, !dbg !1310
  br label %62, !dbg !1310

62:                                               ; preds = %61, %59
  %63 = load i32, ptr %2, align 4, !dbg !1311
  ret i32 %63, !dbg !1311
}

declare ptr @coro_new(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @death_queue_insert(ptr noundef %0, ptr noundef %1) #0 !dbg !1312 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1313, metadata !DIExpression()), !dbg !1314
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1315, metadata !DIExpression()), !dbg !1316
  %6 = load ptr, ptr %4, align 8, !dbg !1317
  %7 = getelementptr inbounds %struct.lwan_connection_t_, ptr %6, i32 0, i32 5, !dbg !1318
  store i32 -1, ptr %7, align 4, !dbg !1319
  %8 = load ptr, ptr %3, align 8, !dbg !1320
  %9 = getelementptr inbounds %struct.death_queue_t, ptr %8, i32 0, i32 1, !dbg !1321
  %10 = getelementptr inbounds %struct.lwan_connection_t_, ptr %9, i32 0, i32 4, !dbg !1322
  %11 = load i32, ptr %10, align 8, !dbg !1322
  %12 = load ptr, ptr %4, align 8, !dbg !1323
  %13 = getelementptr inbounds %struct.lwan_connection_t_, ptr %12, i32 0, i32 4, !dbg !1324
  store i32 %11, ptr %13, align 8, !dbg !1325
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1326, metadata !DIExpression()), !dbg !1327
  %14 = load ptr, ptr %3, align 8, !dbg !1328
  %15 = load ptr, ptr %3, align 8, !dbg !1329
  %16 = getelementptr inbounds %struct.death_queue_t, ptr %15, i32 0, i32 1, !dbg !1330
  %17 = getelementptr inbounds %struct.lwan_connection_t_, ptr %16, i32 0, i32 4, !dbg !1331
  %18 = load i32, ptr %17, align 8, !dbg !1331
  %19 = call ptr @death_queue_idx_to_node(ptr noundef %14, i32 noundef %18), !dbg !1332
  store ptr %19, ptr %5, align 8, !dbg !1327
  %20 = load ptr, ptr %3, align 8, !dbg !1333
  %21 = load ptr, ptr %4, align 8, !dbg !1334
  %22 = call i32 @death_queue_node_to_idx(ptr noundef %20, ptr noundef %21), !dbg !1335
  %23 = load ptr, ptr %5, align 8, !dbg !1336
  %24 = getelementptr inbounds %struct.lwan_connection_t_, ptr %23, i32 0, i32 5, !dbg !1337
  store i32 %22, ptr %24, align 4, !dbg !1338
  %25 = load ptr, ptr %3, align 8, !dbg !1339
  %26 = getelementptr inbounds %struct.death_queue_t, ptr %25, i32 0, i32 1, !dbg !1340
  %27 = getelementptr inbounds %struct.lwan_connection_t_, ptr %26, i32 0, i32 4, !dbg !1341
  store i32 %22, ptr %27, align 8, !dbg !1342
  ret void, !dbg !1343
}

declare ptr @coro_malloc_full(ptr noundef, i64 noundef, ptr noundef) #3

declare void @strbuf_free(ptr noundef) #3

declare ptr @coro_get_data(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @lwan_connection_get_fd(ptr noundef) #9

declare zeroext i1 @strbuf_init(ptr noundef) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #10

declare ptr @lwan_process_request(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @coro_yield(ptr noundef, i32 noundef) #3

declare zeroext i1 @strbuf_reset_length(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @death_queue_node_to_idx(ptr noundef %0, ptr noundef %1) #0 !dbg !1344 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1347, metadata !DIExpression()), !dbg !1348
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1349, metadata !DIExpression()), !dbg !1350
  %5 = load ptr, ptr %4, align 8, !dbg !1351
  %6 = load ptr, ptr %3, align 8, !dbg !1352
  %7 = getelementptr inbounds %struct.death_queue_t, ptr %6, i32 0, i32 1, !dbg !1353
  %8 = icmp eq ptr %5, %7, !dbg !1354
  br i1 %8, label %9, label %10, !dbg !1355

9:                                                ; preds = %2
  br label %20, !dbg !1355

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !1356
  %12 = load ptr, ptr %3, align 8, !dbg !1357
  %13 = getelementptr inbounds %struct.death_queue_t, ptr %12, i32 0, i32 0, !dbg !1358
  %14 = load ptr, ptr %13, align 8, !dbg !1358
  %15 = ptrtoint ptr %11 to i64, !dbg !1359
  %16 = ptrtoint ptr %14 to i64, !dbg !1359
  %17 = sub i64 %15, %16, !dbg !1359
  %18 = sdiv exact i64 %17, 32, !dbg !1359
  %19 = trunc i64 %18 to i32, !dbg !1360
  br label %20, !dbg !1355

20:                                               ; preds = %10, %9
  %21 = phi i32 [ -1, %9 ], [ %19, %10 ], !dbg !1355
  ret i32 %21, !dbg !1361
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @death_queue_remove(ptr noundef %0, ptr noundef %1) #0 !dbg !1362 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1363, metadata !DIExpression()), !dbg !1364
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1365, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1367, metadata !DIExpression()), !dbg !1368
  %7 = load ptr, ptr %3, align 8, !dbg !1369
  %8 = load ptr, ptr %4, align 8, !dbg !1370
  %9 = getelementptr inbounds %struct.lwan_connection_t_, ptr %8, i32 0, i32 4, !dbg !1371
  %10 = load i32, ptr %9, align 8, !dbg !1371
  %11 = call ptr @death_queue_idx_to_node(ptr noundef %7, i32 noundef %10), !dbg !1372
  store ptr %11, ptr %5, align 8, !dbg !1368
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1373, metadata !DIExpression()), !dbg !1374
  %12 = load ptr, ptr %3, align 8, !dbg !1375
  %13 = load ptr, ptr %4, align 8, !dbg !1376
  %14 = getelementptr inbounds %struct.lwan_connection_t_, ptr %13, i32 0, i32 5, !dbg !1377
  %15 = load i32, ptr %14, align 4, !dbg !1377
  %16 = call ptr @death_queue_idx_to_node(ptr noundef %12, i32 noundef %15), !dbg !1378
  store ptr %16, ptr %6, align 8, !dbg !1374
  %17 = load ptr, ptr %4, align 8, !dbg !1379
  %18 = getelementptr inbounds %struct.lwan_connection_t_, ptr %17, i32 0, i32 4, !dbg !1380
  %19 = load i32, ptr %18, align 8, !dbg !1380
  %20 = load ptr, ptr %6, align 8, !dbg !1381
  %21 = getelementptr inbounds %struct.lwan_connection_t_, ptr %20, i32 0, i32 4, !dbg !1382
  store i32 %19, ptr %21, align 8, !dbg !1383
  %22 = load ptr, ptr %4, align 8, !dbg !1384
  %23 = getelementptr inbounds %struct.lwan_connection_t_, ptr %22, i32 0, i32 5, !dbg !1385
  %24 = load i32, ptr %23, align 4, !dbg !1385
  %25 = load ptr, ptr %5, align 8, !dbg !1386
  %26 = getelementptr inbounds %struct.lwan_connection_t_, ptr %25, i32 0, i32 5, !dbg !1387
  store i32 %24, ptr %26, align 4, !dbg !1388
  ret void, !dbg !1389
}

declare void @coro_free(ptr noundef) #3

declare i32 @coro_resume(ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { noreturn }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { noreturn nounwind }

!llvm.dbg.cu = !{!114}
!llvm.module.flags = !{!233, !234, !235, !236, !237, !238, !239}
!llvm.ident = !{!240}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 241, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "common/lwan-thread.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "9d2309d4fac6f8cdf7410220b7094774")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 36)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 241, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 168, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 21)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 241, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 9)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 26)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 246, type: !15, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 408, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 184, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 23)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 408, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 6)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 414, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 136, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 17)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 414, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !11)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 418, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 38)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 427, type: !9, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 427, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 22)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 376, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 112, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 14)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 376, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 13)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 379, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 18)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 382, type: !52, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 385, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 28)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 388, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 5)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 392, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 10)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 395, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 15)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 398, type: !42, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 312, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 120, elements: !90)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 312, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 31)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 317, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 37)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 285, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 176, elements: !53)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 285, type: !79, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "events_by_write_flag", scope: !114, file: !2, line: 39, type: !226, isLocal: true, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C11, file: !115, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !116, retainedTypes: !194, globals: !206, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "/home/raj/lwan/common/lwan-thread.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "9d2309d4fac6f8cdf7410220b7094774")
!116 = !{!117, !127, !132, !137, !141, !159, !171, !189}
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 158, baseType: !119, size: 32, elements: !120)
!118 = !DIFile(filename: "common/lwan.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "56f65bbbfce1c5452d6905964ca2b84f")
!119 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!120 = !{!121, !122, !123, !124, !125, !126}
!121 = !DIEnumerator(name: "CONN_MASK", value: -1)
!122 = !DIEnumerator(name: "CONN_KEEP_ALIVE", value: 1)
!123 = !DIEnumerator(name: "CONN_IS_ALIVE", value: 2)
!124 = !DIEnumerator(name: "CONN_SHOULD_RESUME_CORO", value: 4)
!125 = !DIEnumerator(name: "CONN_WRITE_EVENTS", value: 8)
!126 = !DIEnumerator(name: "CONN_MUST_READ", value: 16)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 23, baseType: !129, size: 32, elements: !130)
!128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/epoll.h", directory: "", checksumkind: CSK_MD5, checksum: "5dde4c8e84480c014305a04d7ba11b15")
!129 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!130 = !{!131}
!131 = !DIEnumerator(name: "EPOLL_CLOEXEC", value: 524288)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !133, line: 134, baseType: !129, size: 32, elements: !134)
!133 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!134 = !{!135, !136}
!135 = !DIEnumerator(name: "PTHREAD_SCOPE_SYSTEM", value: 0)
!136 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS", value: 1)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !133, line: 37, baseType: !129, size: 32, elements: !138)
!138 = !{!139, !140}
!139 = !DIEnumerator(name: "PTHREAD_CREATE_JOINABLE", value: 0)
!140 = !DIEnumerator(name: "PTHREAD_CREATE_DETACHED", value: 1)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "EPOLL_EVENTS", file: !142, line: 35, baseType: !129, size: 32, elements: !143)
!142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/epoll.h", directory: "", checksumkind: CSK_MD5, checksum: "0986da711185ef074164bfe0527c7631")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!144 = !DIEnumerator(name: "EPOLLIN", value: 1)
!145 = !DIEnumerator(name: "EPOLLPRI", value: 2)
!146 = !DIEnumerator(name: "EPOLLOUT", value: 4)
!147 = !DIEnumerator(name: "EPOLLRDNORM", value: 64)
!148 = !DIEnumerator(name: "EPOLLRDBAND", value: 128)
!149 = !DIEnumerator(name: "EPOLLWRNORM", value: 256)
!150 = !DIEnumerator(name: "EPOLLWRBAND", value: 512)
!151 = !DIEnumerator(name: "EPOLLMSG", value: 1024)
!152 = !DIEnumerator(name: "EPOLLERR", value: 8)
!153 = !DIEnumerator(name: "EPOLLHUP", value: 16)
!154 = !DIEnumerator(name: "EPOLLRDHUP", value: 8192)
!155 = !DIEnumerator(name: "EPOLLEXCLUSIVE", value: 268435456)
!156 = !DIEnumerator(name: "EPOLLWAKEUP", value: 536870912)
!157 = !DIEnumerator(name: "EPOLLONESHOT", value: 1073741824)
!158 = !DIEnumerator(name: "EPOLLET", value: 2147483648, isUnsigned: true)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 145, baseType: !119, size: 32, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!161 = !DIEnumerator(name: "REQUEST_ALL_FLAGS", value: -1)
!162 = !DIEnumerator(name: "REQUEST_METHOD_GET", value: 1)
!163 = !DIEnumerator(name: "REQUEST_METHOD_HEAD", value: 2)
!164 = !DIEnumerator(name: "REQUEST_METHOD_POST", value: 4)
!165 = !DIEnumerator(name: "REQUEST_ACCEPT_DEFLATE", value: 8)
!166 = !DIEnumerator(name: "REQUEST_ACCEPT_GZIP", value: 16)
!167 = !DIEnumerator(name: "REQUEST_IS_HTTP_1_0", value: 32)
!168 = !DIEnumerator(name: "RESPONSE_SENT_HEADERS", value: 64)
!169 = !DIEnumerator(name: "RESPONSE_CHUNKED_ENCODING", value: 128)
!170 = !DIEnumerator(name: "RESPONSE_NO_CONTENT_LENGTH", value: 256)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 114, baseType: !129, size: 32, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!173 = !DIEnumerator(name: "HTTP_OK", value: 200)
!174 = !DIEnumerator(name: "HTTP_PARTIAL_CONTENT", value: 206)
!175 = !DIEnumerator(name: "HTTP_MOVED_PERMANENTLY", value: 301)
!176 = !DIEnumerator(name: "HTTP_NOT_MODIFIED", value: 304)
!177 = !DIEnumerator(name: "HTTP_BAD_REQUEST", value: 400)
!178 = !DIEnumerator(name: "HTTP_NOT_AUTHORIZED", value: 401)
!179 = !DIEnumerator(name: "HTTP_FORBIDDEN", value: 403)
!180 = !DIEnumerator(name: "HTTP_NOT_FOUND", value: 404)
!181 = !DIEnumerator(name: "HTTP_NOT_ALLOWED", value: 405)
!182 = !DIEnumerator(name: "HTTP_TIMEOUT", value: 408)
!183 = !DIEnumerator(name: "HTTP_TOO_LARGE", value: 413)
!184 = !DIEnumerator(name: "HTTP_RANGE_UNSATISFIABLE", value: 416)
!185 = !DIEnumerator(name: "HTTP_I_AM_A_TEAPOT", value: 418)
!186 = !DIEnumerator(name: "HTTP_INTERNAL_ERROR", value: 500)
!187 = !DIEnumerator(name: "HTTP_NOT_IMPLEMENTED", value: 501)
!188 = !DIEnumerator(name: "HTTP_UNAVAILABLE", value: 503)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 167, baseType: !119, size: 32, elements: !190)
!190 = !{!191, !192, !193}
!191 = !DIEnumerator(name: "CONN_CORO_ABORT", value: -1)
!192 = !DIEnumerator(name: "CONN_CORO_MAY_RESUME", value: 0)
!193 = !DIEnumerator(name: "CONN_CORO_FINISHED", value: 1)
!194 = !{!195, !119, !198, !199, !201, !202, !129}
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !196, line: 46, baseType: !197)
!196 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!197 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!198 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !196, line: 35, baseType: !200)
!200 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !203, line: 10, baseType: !204)
!203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !205, line: 160, baseType: !200)
!205 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!206 = !{!0, !7, !13, !18, !23, !25, !30, !35, !40, !43, !48, !50, !55, !60, !65, !70, !72, !77, !82, !87, !92, !94, !97, !102, !107, !110, !112, !207, !209, !214, !219, !224}
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !74, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 280, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 35)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 11)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 616, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 77)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !2, line: 212, type: !109, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 64, elements: !231)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !229, line: 26, baseType: !230)
!229 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !205, line: 42, baseType: !129)
!231 = !{!232}
!232 = !DISubrange(count: 2)
!233 = !{i32 7, !"Dwarf Version", i32 5}
!234 = !{i32 2, !"Debug Info Version", i32 3}
!235 = !{i32 1, !"wchar_size", i32 4}
!236 = !{i32 8, !"PIC Level", i32 2}
!237 = !{i32 7, !"PIE Level", i32 2}
!238 = !{i32 7, !"uwtable", i32 2}
!239 = !{i32 7, !"frame-pointer", i32 2}
!240 = !{!"clang version 16.0.0"}
!241 = distinct !DISubprogram(name: "lwan_format_rfc_time", scope: !2, file: !2, line: 236, type: !242, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !245)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !202, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!245 = !{}
!246 = !DILocalVariable(name: "t", arg: 1, scope: !241, file: !2, line: 236, type: !202)
!247 = !DILocation(line: 236, column: 29, scope: !241)
!248 = !DILocalVariable(name: "buffer", arg: 2, scope: !241, file: !2, line: 236, type: !244)
!249 = !DILocation(line: 236, column: 37, scope: !241)
!250 = !DILocalVariable(name: "tm", scope: !241, file: !2, line: 238, type: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !252, line: 7, size: 448, elements: !253)
!252 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "", checksumkind: CSK_MD5, checksum: "9e5545b565ef031c4cd0faf90b69386f")
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !251, file: !252, line: 9, baseType: !119, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !251, file: !252, line: 10, baseType: !119, size: 32, offset: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !251, file: !252, line: 11, baseType: !119, size: 32, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !251, file: !252, line: 12, baseType: !119, size: 32, offset: 96)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !251, file: !252, line: 13, baseType: !119, size: 32, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !251, file: !252, line: 14, baseType: !119, size: 32, offset: 160)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !251, file: !252, line: 15, baseType: !119, size: 32, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !251, file: !252, line: 16, baseType: !119, size: 32, offset: 224)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !251, file: !252, line: 17, baseType: !119, size: 32, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !251, file: !252, line: 20, baseType: !200, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !251, file: !252, line: 21, baseType: !265, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!266 = !DILocation(line: 238, column: 15, scope: !241)
!267 = !DILocation(line: 240, column: 9, scope: !268)
!268 = distinct !DILexicalBlock(scope: !241, file: !2, line: 240, column: 9)
!269 = !DILocation(line: 240, column: 9, scope: !241)
!270 = !DILocation(line: 241, column: 9, scope: !271)
!271 = distinct !DILexicalBlock(scope: !268, file: !2, line: 240, column: 39)
!272 = !DILocation(line: 242, column: 9, scope: !271)
!273 = !DILocation(line: 245, column: 9, scope: !274)
!274 = distinct !DILexicalBlock(scope: !241, file: !2, line: 245, column: 9)
!275 = !DILocation(line: 245, column: 9, scope: !241)
!276 = !DILocation(line: 246, column: 9, scope: !274)
!277 = !DILocation(line: 247, column: 1, scope: !241)
!278 = distinct !DISubprogram(name: "lwan_thread_add_client", scope: !2, file: !2, line: 402, type: !279, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !245)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !281, !119}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_thread_t", file: !118, line: 108, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_thread_t_", file: !118, line: 253, size: 832, elements: !284)
!284 = !{!285, !355, !364, !365, !367}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "lwan", scope: !283, file: !118, line: 254, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_t", file: !118, line: 103, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_t_", file: !118, line: 275, size: 640, elements: !289)
!289 = !{!290, !317, !333, !339, !343, !354}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "url_map_trie", scope: !288, file: !118, line: 276, baseType: !291, size: 128)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_t", file: !292, line: 25, baseType: !293)
!292 = !DIFile(filename: "common/lwan-trie.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "ee6a35f9d72fff2f5550c3424937f5b6")
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_t_", file: !292, line: 41, size: 128, elements: !294)
!294 = !{!295, !313}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !293, file: !292, line: 42, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_node_t", file: !292, line: 26, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_node_t_", file: !292, line: 29, size: 640, elements: !299)
!299 = !{!300, !304, !312}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !292, line: 30, baseType: !301, size: 512)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 512, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 8)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !298, file: !292, line: 31, baseType: !305, size: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_leaf_t", file: !292, line: 27, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_leaf_t_", file: !292, line: 35, size: 192, elements: !308)
!308 = !{!309, !310, !311}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !307, file: !292, line: 36, baseType: !244, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !307, file: !292, line: 37, baseType: !201, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !292, line: 38, baseType: !305, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !298, file: !292, line: 32, baseType: !119, size: 32, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !293, file: !292, line: 43, baseType: !314, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !201}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !288, file: !118, line: 277, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_t", file: !118, line: 112, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_connection_t_", file: !118, line: 196, size: 256, elements: !321)
!321 = !{!322, !324, !325, !330, !331, !332}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !118, line: 199, baseType: !323, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_flags_t", file: !118, line: 165, baseType: !117)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !320, file: !118, line: 200, baseType: !129, size: 32, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "coro", scope: !320, file: !118, line: 201, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !328, line: 34, baseType: !329)
!328 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!329 = !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !328, line: 34, flags: DIFlagFwdDecl)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !320, file: !118, line: 202, baseType: !281, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !320, file: !118, line: 203, baseType: !119, size: 32, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !118, line: 203, baseType: !119, size: 32, offset: 224)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !288, file: !118, line: 283, baseType: !334, size: 128, offset: 192)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !288, file: !118, line: 279, size: 128, elements: !335)
!335 = !{!336, !337, !338}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !334, file: !118, line: 280, baseType: !281, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "max_fd", scope: !334, file: !118, line: 281, baseType: !129, size: 32, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !334, file: !118, line: 282, baseType: !198, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "module_registry", scope: !288, file: !118, line: 285, baseType: !340, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !342, line: 6, flags: DIFlagFwdDecl)
!342 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!343 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !288, file: !118, line: 286, baseType: !344, size: 192, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_config_t", file: !118, line: 111, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_config_t_", file: !118, line: 266, size: 192, elements: !346)
!346 = !{!347, !348, !349, !351, !352, !353}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !345, file: !118, line: 267, baseType: !244, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !345, file: !118, line: 268, baseType: !198, size: 16, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !345, file: !118, line: 269, baseType: !350, size: 8, offset: 80)
!350 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_port", scope: !345, file: !118, line: 270, baseType: !350, size: 8, offset: 88)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !345, file: !118, line: 271, baseType: !129, size: 32, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "n_threads", scope: !345, file: !118, line: 272, baseType: !198, size: 16, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "main_socket", scope: !288, file: !118, line: 287, baseType: !119, size: 32, offset: 576)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !283, file: !118, line: 259, baseType: !356, size: 576, offset: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !283, file: !118, line: 255, size: 576, elements: !357)
!357 = !{!358, !362, !363}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !356, file: !118, line: 256, baseType: !359, size: 240)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 30)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !356, file: !118, line: 257, baseType: !359, size: 240, offset: 240)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !356, file: !118, line: 258, baseType: !202, size: 64, offset: 512)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !283, file: !118, line: 261, baseType: !119, size: 32, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_fd", scope: !283, file: !118, line: 262, baseType: !366, size: 64, offset: 672)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !231)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !283, file: !118, line: 263, baseType: !368, size: 64, offset: 768)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !369, line: 27, baseType: !197)
!369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!370 = !DILocalVariable(name: "t", arg: 1, scope: !278, file: !2, line: 402, type: !281)
!371 = !DILocation(line: 402, column: 39, scope: !278)
!372 = !DILocalVariable(name: "fd", arg: 2, scope: !278, file: !2, line: 402, type: !119)
!373 = !DILocation(line: 402, column: 46, scope: !278)
!374 = !DILocation(line: 404, column: 5, scope: !278)
!375 = !DILocation(line: 404, column: 8, scope: !278)
!376 = !DILocation(line: 404, column: 14, scope: !278)
!377 = !DILocation(line: 404, column: 20, scope: !278)
!378 = !DILocation(line: 404, column: 24, scope: !278)
!379 = !DILocation(line: 404, column: 30, scope: !278)
!380 = !DILocation(line: 405, column: 33, scope: !278)
!381 = !DILocation(line: 405, column: 5, scope: !278)
!382 = !DILocation(line: 405, column: 8, scope: !278)
!383 = !DILocation(line: 405, column: 14, scope: !278)
!384 = !DILocation(line: 405, column: 20, scope: !278)
!385 = !DILocation(line: 405, column: 24, scope: !278)
!386 = !DILocation(line: 405, column: 31, scope: !278)
!387 = !DILocation(line: 407, column: 9, scope: !388)
!388 = distinct !DILexicalBlock(scope: !278, file: !2, line: 407, column: 9)
!389 = !DILocation(line: 407, column: 9, scope: !278)
!390 = !DILocation(line: 408, column: 9, scope: !388)
!391 = !DILocation(line: 409, column: 1, scope: !278)
!392 = distinct !DISubprogram(name: "lwan_thread_init", scope: !2, file: !2, line: 412, type: !393, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !245)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !286}
!395 = !DILocalVariable(name: "l", arg: 1, scope: !392, file: !2, line: 412, type: !286)
!396 = !DILocation(line: 412, column: 26, scope: !392)
!397 = !DILocation(line: 414, column: 5, scope: !392)
!398 = !DILocation(line: 416, column: 40, scope: !392)
!399 = !DILocation(line: 416, column: 43, scope: !392)
!400 = !DILocation(line: 416, column: 50, scope: !392)
!401 = !DILocation(line: 416, column: 32, scope: !392)
!402 = !DILocation(line: 416, column: 25, scope: !392)
!403 = !DILocation(line: 416, column: 5, scope: !392)
!404 = !DILocation(line: 416, column: 8, scope: !392)
!405 = !DILocation(line: 416, column: 15, scope: !392)
!406 = !DILocation(line: 416, column: 23, scope: !392)
!407 = !DILocation(line: 417, column: 10, scope: !408)
!408 = distinct !DILexicalBlock(scope: !392, file: !2, line: 417, column: 9)
!409 = !DILocation(line: 417, column: 13, scope: !408)
!410 = !DILocation(line: 417, column: 20, scope: !408)
!411 = !DILocation(line: 417, column: 9, scope: !392)
!412 = !DILocation(line: 418, column: 9, scope: !408)
!413 = !DILocalVariable(name: "i", scope: !414, file: !2, line: 420, type: !415)
!414 = distinct !DILexicalBlock(scope: !392, file: !2, line: 420, column: 5)
!415 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!416 = !DILocation(line: 420, column: 16, scope: !414)
!417 = !DILocation(line: 420, column: 10, scope: !414)
!418 = !DILocation(line: 420, column: 23, scope: !419)
!419 = distinct !DILexicalBlock(scope: !414, file: !2, line: 420, column: 5)
!420 = !DILocation(line: 420, column: 27, scope: !419)
!421 = !DILocation(line: 420, column: 30, scope: !419)
!422 = !DILocation(line: 420, column: 37, scope: !419)
!423 = !DILocation(line: 420, column: 25, scope: !419)
!424 = !DILocation(line: 420, column: 5, scope: !414)
!425 = !DILocation(line: 421, column: 23, scope: !419)
!426 = !DILocation(line: 421, column: 27, scope: !419)
!427 = !DILocation(line: 421, column: 30, scope: !419)
!428 = !DILocation(line: 421, column: 37, scope: !419)
!429 = !DILocation(line: 421, column: 45, scope: !419)
!430 = !DILocation(line: 421, column: 9, scope: !419)
!431 = !DILocation(line: 420, column: 45, scope: !419)
!432 = !DILocation(line: 420, column: 5, scope: !419)
!433 = distinct !{!433, !424, !434, !435}
!434 = !DILocation(line: 421, column: 47, scope: !414)
!435 = !{!"llvm.loop.mustprogress"}
!436 = !DILocation(line: 422, column: 1, scope: !392)
!437 = distinct !DISubprogram(name: "create_thread", scope: !2, file: !2, line: 368, type: !438, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !286, !281}
!440 = !DILocalVariable(name: "l", arg: 1, scope: !437, file: !2, line: 368, type: !286)
!441 = !DILocation(line: 368, column: 23, scope: !437)
!442 = !DILocalVariable(name: "thread", arg: 2, scope: !437, file: !2, line: 368, type: !281)
!443 = !DILocation(line: 368, column: 41, scope: !437)
!444 = !DILocalVariable(name: "attr", scope: !437, file: !2, line: 370, type: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !369, line: 62, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !369, line: 56, size: 448, elements: !447)
!447 = !{!448, !452}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !446, file: !369, line: 58, baseType: !449, size: 448)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 56)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !446, file: !369, line: 59, baseType: !200, size: 64)
!453 = !DILocation(line: 370, column: 20, scope: !437)
!454 = !DILocation(line: 372, column: 12, scope: !437)
!455 = !DILocation(line: 372, column: 5, scope: !437)
!456 = !DILocation(line: 373, column: 20, scope: !437)
!457 = !DILocation(line: 373, column: 5, scope: !437)
!458 = !DILocation(line: 373, column: 13, scope: !437)
!459 = !DILocation(line: 373, column: 18, scope: !437)
!460 = !DILocation(line: 375, column: 29, scope: !461)
!461 = distinct !DILexicalBlock(scope: !437, file: !2, line: 375, column: 9)
!462 = !DILocation(line: 375, column: 10, scope: !461)
!463 = !DILocation(line: 375, column: 18, scope: !461)
!464 = !DILocation(line: 375, column: 27, scope: !461)
!465 = !DILocation(line: 375, column: 59, scope: !461)
!466 = !DILocation(line: 375, column: 9, scope: !437)
!467 = !DILocation(line: 376, column: 9, scope: !461)
!468 = !DILocation(line: 378, column: 9, scope: !469)
!469 = distinct !DILexicalBlock(scope: !437, file: !2, line: 378, column: 9)
!470 = !DILocation(line: 378, column: 9, scope: !437)
!471 = !DILocation(line: 379, column: 9, scope: !469)
!472 = !DILocation(line: 381, column: 9, scope: !473)
!473 = distinct !DILexicalBlock(scope: !437, file: !2, line: 381, column: 9)
!474 = !DILocation(line: 381, column: 9, scope: !437)
!475 = !DILocation(line: 382, column: 9, scope: !473)
!476 = !DILocation(line: 384, column: 9, scope: !477)
!477 = distinct !DILexicalBlock(scope: !437, file: !2, line: 384, column: 9)
!478 = !DILocation(line: 384, column: 9, scope: !437)
!479 = !DILocation(line: 385, column: 9, scope: !477)
!480 = !DILocation(line: 387, column: 15, scope: !481)
!481 = distinct !DILexicalBlock(scope: !437, file: !2, line: 387, column: 9)
!482 = !DILocation(line: 387, column: 23, scope: !481)
!483 = !DILocation(line: 387, column: 9, scope: !481)
!484 = !DILocation(line: 387, column: 56, scope: !481)
!485 = !DILocation(line: 387, column: 9, scope: !437)
!486 = !DILocation(line: 388, column: 9, scope: !481)
!487 = !DILocalVariable(name: "event", scope: !437, file: !2, line: 390, type: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !142, line: 84, size: 96, elements: !489)
!489 = !{!490, !491}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !488, file: !142, line: 86, baseType: !228, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !488, file: !142, line: 87, baseType: !492, size: 64, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "epoll_data_t", file: !142, line: 82, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "epoll_data", file: !142, line: 76, size: 64, elements: !494)
!494 = !{!495, !496, !497, !498}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !493, file: !142, line: 78, baseType: !201, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !493, file: !142, line: 79, baseType: !119, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !493, file: !142, line: 80, baseType: !228, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !493, file: !142, line: 81, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !229, line: 27, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !205, line: 45, baseType: !197)
!501 = !DILocation(line: 390, column: 24, scope: !437)
!502 = !DILocation(line: 391, column: 19, scope: !503)
!503 = distinct !DILexicalBlock(scope: !437, file: !2, line: 391, column: 9)
!504 = !DILocation(line: 391, column: 27, scope: !503)
!505 = !DILocation(line: 391, column: 52, scope: !503)
!506 = !DILocation(line: 391, column: 60, scope: !503)
!507 = !DILocation(line: 391, column: 9, scope: !503)
!508 = !DILocation(line: 391, column: 80, scope: !503)
!509 = !DILocation(line: 391, column: 9, scope: !437)
!510 = !DILocation(line: 392, column: 9, scope: !503)
!511 = !DILocation(line: 394, column: 25, scope: !512)
!512 = distinct !DILexicalBlock(scope: !437, file: !2, line: 394, column: 9)
!513 = !DILocation(line: 394, column: 33, scope: !512)
!514 = !DILocation(line: 394, column: 62, scope: !512)
!515 = !DILocation(line: 394, column: 9, scope: !512)
!516 = !DILocation(line: 394, column: 9, scope: !437)
!517 = !DILocation(line: 395, column: 9, scope: !512)
!518 = !DILocation(line: 397, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !437, file: !2, line: 397, column: 9)
!520 = !DILocation(line: 397, column: 9, scope: !437)
!521 = !DILocation(line: 398, column: 9, scope: !519)
!522 = !DILocation(line: 399, column: 1, scope: !437)
!523 = distinct !DISubprogram(name: "lwan_thread_shutdown", scope: !2, file: !2, line: 425, type: !393, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !245)
!524 = !DILocalVariable(name: "l", arg: 1, scope: !523, file: !2, line: 425, type: !286)
!525 = !DILocation(line: 425, column: 30, scope: !523)
!526 = !DILocation(line: 427, column: 5, scope: !523)
!527 = !DILocalVariable(name: "i", scope: !528, file: !2, line: 429, type: !119)
!528 = distinct !DILexicalBlock(scope: !523, file: !2, line: 429, column: 5)
!529 = !DILocation(line: 429, column: 14, scope: !528)
!530 = !DILocation(line: 429, column: 18, scope: !528)
!531 = !DILocation(line: 429, column: 21, scope: !528)
!532 = !DILocation(line: 429, column: 28, scope: !528)
!533 = !DILocation(line: 429, column: 34, scope: !528)
!534 = !DILocation(line: 429, column: 10, scope: !528)
!535 = !DILocation(line: 429, column: 39, scope: !536)
!536 = distinct !DILexicalBlock(scope: !528, file: !2, line: 429, column: 5)
!537 = !DILocation(line: 429, column: 41, scope: !536)
!538 = !DILocation(line: 429, column: 5, scope: !528)
!539 = !DILocalVariable(name: "t", scope: !540, file: !2, line: 430, type: !281)
!540 = distinct !DILexicalBlock(scope: !536, file: !2, line: 429, column: 52)
!541 = !DILocation(line: 430, column: 24, scope: !540)
!542 = !DILocation(line: 430, column: 29, scope: !540)
!543 = !DILocation(line: 430, column: 32, scope: !540)
!544 = !DILocation(line: 430, column: 39, scope: !540)
!545 = !DILocation(line: 430, column: 47, scope: !540)
!546 = !DILocation(line: 433, column: 15, scope: !540)
!547 = !DILocation(line: 433, column: 18, scope: !540)
!548 = !DILocation(line: 433, column: 9, scope: !540)
!549 = !DILocation(line: 435, column: 15, scope: !540)
!550 = !DILocation(line: 435, column: 18, scope: !540)
!551 = !DILocation(line: 435, column: 9, scope: !540)
!552 = !DILocation(line: 436, column: 15, scope: !540)
!553 = !DILocation(line: 436, column: 18, scope: !540)
!554 = !DILocation(line: 436, column: 9, scope: !540)
!555 = !DILocation(line: 438, column: 28, scope: !540)
!556 = !DILocation(line: 438, column: 31, scope: !540)
!557 = !DILocation(line: 438, column: 38, scope: !540)
!558 = !DILocation(line: 438, column: 46, scope: !540)
!559 = !DILocation(line: 438, column: 49, scope: !540)
!560 = !DILocation(line: 438, column: 9, scope: !540)
!561 = !DILocation(line: 439, column: 5, scope: !540)
!562 = !DILocation(line: 429, column: 48, scope: !536)
!563 = !DILocation(line: 429, column: 5, scope: !536)
!564 = distinct !{!564, !538, !565, !435}
!565 = !DILocation(line: 439, column: 5, scope: !528)
!566 = !DILocation(line: 441, column: 10, scope: !523)
!567 = !DILocation(line: 441, column: 13, scope: !523)
!568 = !DILocation(line: 441, column: 20, scope: !523)
!569 = !DILocation(line: 441, column: 5, scope: !523)
!570 = !DILocation(line: 442, column: 1, scope: !523)
!571 = distinct !DISubprogram(name: "thread_io_loop", scope: !2, file: !2, line: 300, type: !572, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!572 = !DISubroutineType(types: !573)
!573 = !{!201, !201}
!574 = !DILocalVariable(name: "data", arg: 1, scope: !571, file: !2, line: 300, type: !201)
!575 = !DILocation(line: 300, column: 22, scope: !571)
!576 = !DILocalVariable(name: "t", scope: !571, file: !2, line: 302, type: !281)
!577 = !DILocation(line: 302, column: 20, scope: !571)
!578 = !DILocation(line: 302, column: 24, scope: !571)
!579 = !DILocalVariable(name: "epoll_fd", scope: !571, file: !2, line: 303, type: !580)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!581 = !DILocation(line: 303, column: 15, scope: !571)
!582 = !DILocation(line: 303, column: 26, scope: !571)
!583 = !DILocation(line: 303, column: 29, scope: !571)
!584 = !DILocalVariable(name: "read_pipe_fd", scope: !571, file: !2, line: 304, type: !580)
!585 = !DILocation(line: 304, column: 15, scope: !571)
!586 = !DILocation(line: 304, column: 30, scope: !571)
!587 = !DILocation(line: 304, column: 33, scope: !571)
!588 = !DILocalVariable(name: "max_events", scope: !571, file: !2, line: 305, type: !580)
!589 = !DILocation(line: 305, column: 15, scope: !571)
!590 = !DILocation(line: 305, column: 37, scope: !571)
!591 = !DILocation(line: 305, column: 40, scope: !571)
!592 = !DILocation(line: 305, column: 46, scope: !571)
!593 = !DILocation(line: 305, column: 53, scope: !571)
!594 = !DILocalVariable(name: "a", arg: 1, scope: !595, file: !2, line: 128, type: !580)
!595 = distinct !DISubprogram(name: "min", scope: !2, file: !2, line: 128, type: !596, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!596 = !DISubroutineType(types: !597)
!597 = !{!119, !580, !580}
!598 = !DILocation(line: 128, column: 15, scope: !595, inlinedAt: !599)
!599 = distinct !DILocation(line: 305, column: 28, scope: !571)
!600 = !DILocalVariable(name: "b", arg: 2, scope: !595, file: !2, line: 128, type: !580)
!601 = !DILocation(line: 128, column: 28, scope: !595, inlinedAt: !599)
!602 = !DILocation(line: 130, column: 12, scope: !595, inlinedAt: !599)
!603 = !DILocation(line: 130, column: 16, scope: !595, inlinedAt: !599)
!604 = !DILocation(line: 130, column: 14, scope: !595, inlinedAt: !599)
!605 = !DILocation(line: 130, column: 20, scope: !595, inlinedAt: !599)
!606 = !DILocation(line: 130, column: 24, scope: !595, inlinedAt: !599)
!607 = !DILocalVariable(name: "conns", scope: !571, file: !2, line: 306, type: !318)
!608 = !DILocation(line: 306, column: 24, scope: !571)
!609 = !DILocation(line: 306, column: 32, scope: !571)
!610 = !DILocation(line: 306, column: 35, scope: !571)
!611 = !DILocation(line: 306, column: 41, scope: !571)
!612 = !DILocalVariable(name: "events", scope: !571, file: !2, line: 307, type: !613)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!614 = !DILocation(line: 307, column: 25, scope: !571)
!615 = !DILocalVariable(name: "switcher", scope: !571, file: !2, line: 308, type: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_switcher_t", file: !328, line: 35, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "coro_switcher_t_", file: !328, line: 39, size: 1280, elements: !618)
!618 = !{!619, !624}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !617, file: !328, line: 40, baseType: !620, size: 640)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_context_t", file: !328, line: 25, baseType: !621)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 640, elements: !85)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !623, line: 90, baseType: !197)
!623 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!624 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !617, file: !328, line: 41, baseType: !620, size: 640, offset: 640)
!625 = !DILocation(line: 308, column: 21, scope: !571)
!626 = !DILocalVariable(name: "dq", scope: !571, file: !2, line: 309, type: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "death_queue_t", file: !2, line: 32, size: 384, elements: !628)
!628 = !{!629, !630, !631, !632}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !627, file: !2, line: 33, baseType: !318, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !627, file: !2, line: 34, baseType: !319, size: 256, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !627, file: !2, line: 35, baseType: !129, size: 32, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !627, file: !2, line: 36, baseType: !198, size: 16, offset: 352)
!633 = !DILocation(line: 309, column: 26, scope: !571)
!634 = !DILocalVariable(name: "n_fds", scope: !571, file: !2, line: 310, type: !119)
!635 = !DILocation(line: 310, column: 9, scope: !571)
!636 = !DILocation(line: 312, column: 5, scope: !571)
!637 = !DILocation(line: 315, column: 29, scope: !571)
!638 = !DILocation(line: 315, column: 21, scope: !571)
!639 = !DILocation(line: 315, column: 14, scope: !571)
!640 = !DILocation(line: 315, column: 12, scope: !571)
!641 = !DILocation(line: 316, column: 9, scope: !642)
!642 = distinct !DILexicalBlock(scope: !571, file: !2, line: 316, column: 9)
!643 = !DILocation(line: 316, column: 9, scope: !571)
!644 = !DILocation(line: 317, column: 9, scope: !642)
!645 = !DILocation(line: 319, column: 27, scope: !571)
!646 = !DILocation(line: 319, column: 34, scope: !571)
!647 = !DILocation(line: 319, column: 37, scope: !571)
!648 = !DILocation(line: 319, column: 43, scope: !571)
!649 = !DILocation(line: 319, column: 50, scope: !571)
!650 = !DILocation(line: 319, column: 5, scope: !571)
!651 = !DILocation(line: 321, column: 5, scope: !571)
!652 = !DILocation(line: 322, column: 36, scope: !653)
!653 = distinct !DILexicalBlock(scope: !654, file: !2, line: 321, column: 14)
!654 = distinct !DILexicalBlock(scope: !655, file: !2, line: 321, column: 5)
!655 = distinct !DILexicalBlock(scope: !571, file: !2, line: 321, column: 5)
!656 = !DILocation(line: 322, column: 46, scope: !653)
!657 = !DILocation(line: 322, column: 54, scope: !653)
!658 = !DILocalVariable(name: "dq", arg: 1, scope: !659, file: !2, line: 108, type: !662)
!659 = distinct !DISubprogram(name: "death_queue_epoll_timeout", scope: !2, file: !2, line: 108, type: !660, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!660 = !DISubroutineType(types: !661)
!661 = !{!119, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!663 = !DILocation(line: 108, column: 49, scope: !659, inlinedAt: !664)
!664 = distinct !DILocation(line: 323, column: 36, scope: !653)
!665 = !DILocation(line: 110, column: 30, scope: !659, inlinedAt: !664)
!666 = !DILocation(line: 110, column: 12, scope: !659, inlinedAt: !664)
!667 = !DILocation(line: 322, column: 25, scope: !653)
!668 = !DILocation(line: 322, column: 23, scope: !653)
!669 = !DILocation(line: 322, column: 9, scope: !653)
!670 = !DILocation(line: 325, column: 21, scope: !671)
!671 = distinct !DILexicalBlock(scope: !653, file: !2, line: 323, column: 69)
!672 = !DILocation(line: 325, column: 13, scope: !671)
!673 = !DILocation(line: 328, column: 17, scope: !674)
!674 = distinct !DILexicalBlock(scope: !671, file: !2, line: 325, column: 28)
!675 = !DILocation(line: 330, column: 13, scope: !671)
!676 = distinct !{!676, !677, !678}
!677 = !DILocation(line: 321, column: 5, scope: !655)
!678 = !DILocation(line: 359, column: 5, scope: !655)
!679 = !DILocation(line: 332, column: 13, scope: !671)
!680 = !DILocation(line: 333, column: 13, scope: !671)
!681 = !DILocation(line: 335, column: 31, scope: !671)
!682 = !DILocation(line: 335, column: 13, scope: !671)
!683 = !DILocalVariable(name: "ep_event", scope: !684, file: !2, line: 337, type: !613)
!684 = distinct !DILexicalBlock(scope: !671, file: !2, line: 337, column: 13)
!685 = !DILocation(line: 337, column: 38, scope: !684)
!686 = !DILocation(line: 337, column: 49, scope: !684)
!687 = !DILocation(line: 337, column: 18, scope: !684)
!688 = !DILocation(line: 337, column: 62, scope: !689)
!689 = distinct !DILexicalBlock(scope: !684, file: !2, line: 337, column: 13)
!690 = !DILocation(line: 337, column: 13, scope: !684)
!691 = !DILocalVariable(name: "conn", scope: !692, file: !2, line: 338, type: !318)
!692 = distinct !DILexicalBlock(scope: !689, file: !2, line: 337, column: 78)
!693 = !DILocation(line: 338, column: 36, scope: !692)
!694 = !DILocation(line: 340, column: 22, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !2, line: 340, column: 21)
!696 = !DILocation(line: 340, column: 32, scope: !695)
!697 = !DILocation(line: 340, column: 37, scope: !695)
!698 = !DILocation(line: 340, column: 21, scope: !692)
!699 = !DILocation(line: 341, column: 50, scope: !700)
!700 = distinct !DILexicalBlock(scope: !695, file: !2, line: 340, column: 42)
!701 = !DILocation(line: 341, column: 60, scope: !700)
!702 = !DILocation(line: 341, column: 74, scope: !700)
!703 = !DILocation(line: 341, column: 28, scope: !700)
!704 = !DILocation(line: 341, column: 26, scope: !700)
!705 = !DILocation(line: 342, column: 25, scope: !706)
!706 = distinct !DILexicalBlock(scope: !700, file: !2, line: 342, column: 25)
!707 = !DILocation(line: 342, column: 25, scope: !700)
!708 = !DILocation(line: 343, column: 25, scope: !706)
!709 = !DILocation(line: 344, column: 51, scope: !700)
!710 = !DILocalVariable(name: "conn", arg: 1, scope: !711, file: !2, line: 262, type: !318)
!711 = distinct !DISubprogram(name: "spawn_or_reset_coro_if_needed", scope: !2, file: !2, line: 262, type: !712, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !318, !714, !662}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!715 = !DILocation(line: 262, column: 50, scope: !711, inlinedAt: !716)
!716 = distinct !DILocation(line: 344, column: 21, scope: !700)
!717 = !DILocalVariable(name: "switcher", arg: 2, scope: !711, file: !2, line: 263, type: !714)
!718 = !DILocation(line: 263, column: 30, scope: !711, inlinedAt: !716)
!719 = !DILocalVariable(name: "dq", arg: 3, scope: !711, file: !2, line: 263, type: !662)
!720 = !DILocation(line: 263, column: 62, scope: !711, inlinedAt: !716)
!721 = !DILocation(line: 265, column: 9, scope: !722, inlinedAt: !716)
!722 = distinct !DILexicalBlock(scope: !711, file: !2, line: 265, column: 9)
!723 = !DILocation(line: 265, column: 15, scope: !722, inlinedAt: !716)
!724 = !DILocation(line: 265, column: 9, scope: !711, inlinedAt: !716)
!725 = !DILocation(line: 266, column: 13, scope: !726, inlinedAt: !716)
!726 = distinct !DILexicalBlock(scope: !727, file: !2, line: 266, column: 13)
!727 = distinct !DILexicalBlock(scope: !722, file: !2, line: 265, column: 21)
!728 = !DILocation(line: 266, column: 19, scope: !726, inlinedAt: !716)
!729 = !DILocation(line: 266, column: 25, scope: !726, inlinedAt: !716)
!730 = !DILocation(line: 266, column: 13, scope: !727, inlinedAt: !716)
!731 = !DILocation(line: 267, column: 13, scope: !726, inlinedAt: !716)
!732 = !DILocation(line: 269, column: 20, scope: !727, inlinedAt: !716)
!733 = !DILocation(line: 269, column: 26, scope: !727, inlinedAt: !716)
!734 = !DILocation(line: 269, column: 54, scope: !727, inlinedAt: !716)
!735 = !DILocation(line: 269, column: 9, scope: !727, inlinedAt: !716)
!736 = !DILocation(line: 270, column: 5, scope: !727, inlinedAt: !716)
!737 = !DILocation(line: 271, column: 31, scope: !738, inlinedAt: !716)
!738 = distinct !DILexicalBlock(scope: !722, file: !2, line: 270, column: 12)
!739 = !DILocation(line: 271, column: 63, scope: !738, inlinedAt: !716)
!740 = !DILocation(line: 271, column: 22, scope: !738, inlinedAt: !716)
!741 = !DILocation(line: 271, column: 9, scope: !738, inlinedAt: !716)
!742 = !DILocation(line: 271, column: 15, scope: !738, inlinedAt: !716)
!743 = !DILocation(line: 271, column: 20, scope: !738, inlinedAt: !716)
!744 = !DILocation(line: 273, column: 28, scope: !738, inlinedAt: !716)
!745 = !DILocation(line: 273, column: 32, scope: !738, inlinedAt: !716)
!746 = !DILocation(line: 273, column: 9, scope: !738, inlinedAt: !716)
!747 = !DILocation(line: 274, column: 9, scope: !738, inlinedAt: !716)
!748 = !DILocation(line: 274, column: 21, scope: !738, inlinedAt: !716)
!749 = !DILocation(line: 276, column: 5, scope: !711, inlinedAt: !716)
!750 = !DILocation(line: 276, column: 17, scope: !711, inlinedAt: !716)
!751 = !DILocation(line: 277, column: 5, scope: !711, inlinedAt: !716)
!752 = !DILocation(line: 277, column: 17, scope: !711, inlinedAt: !716)
!753 = !DILocation(line: 278, column: 1, scope: !711, inlinedAt: !716)
!754 = !DILocation(line: 345, column: 17, scope: !700)
!755 = !DILocation(line: 346, column: 28, scope: !756)
!756 = distinct !DILexicalBlock(scope: !695, file: !2, line: 345, column: 24)
!757 = !DILocation(line: 346, column: 38, scope: !756)
!758 = !DILocation(line: 346, column: 43, scope: !756)
!759 = !DILocation(line: 346, column: 26, scope: !756)
!760 = !DILocation(line: 347, column: 25, scope: !761)
!761 = distinct !DILexicalBlock(scope: !756, file: !2, line: 347, column: 25)
!762 = !DILocation(line: 347, column: 25, scope: !756)
!763 = !DILocation(line: 348, column: 43, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !2, line: 347, column: 79)
!765 = !DILocalVariable(name: "dq", arg: 1, scope: !766, file: !2, line: 114, type: !662)
!766 = distinct !DISubprogram(name: "destroy_coro", scope: !2, file: !2, line: 114, type: !767, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !662, !318}
!769 = !DILocation(line: 114, column: 36, scope: !766, inlinedAt: !770)
!770 = distinct !DILocation(line: 348, column: 25, scope: !764)
!771 = !DILocalVariable(name: "conn", arg: 2, scope: !766, file: !2, line: 114, type: !318)
!772 = !DILocation(line: 114, column: 59, scope: !766, inlinedAt: !770)
!773 = !DILocation(line: 116, column: 24, scope: !766, inlinedAt: !770)
!774 = !DILocation(line: 116, column: 28, scope: !766, inlinedAt: !770)
!775 = !DILocation(line: 116, column: 5, scope: !766, inlinedAt: !770)
!776 = !DILocation(line: 117, column: 9, scope: !777, inlinedAt: !770)
!777 = distinct !DILexicalBlock(scope: !766, file: !2, line: 117, column: 9)
!778 = !DILocation(line: 117, column: 9, scope: !766, inlinedAt: !770)
!779 = !DILocation(line: 118, column: 19, scope: !780, inlinedAt: !770)
!780 = distinct !DILexicalBlock(scope: !777, file: !2, line: 117, column: 29)
!781 = !DILocation(line: 118, column: 25, scope: !780, inlinedAt: !770)
!782 = !DILocation(line: 118, column: 9, scope: !780, inlinedAt: !770)
!783 = !DILocation(line: 119, column: 9, scope: !780, inlinedAt: !770)
!784 = !DILocation(line: 119, column: 15, scope: !780, inlinedAt: !770)
!785 = !DILocation(line: 119, column: 20, scope: !780, inlinedAt: !770)
!786 = !DILocation(line: 120, column: 5, scope: !780, inlinedAt: !770)
!787 = !DILocation(line: 121, column: 9, scope: !788, inlinedAt: !770)
!788 = distinct !DILexicalBlock(scope: !766, file: !2, line: 121, column: 9)
!789 = !DILocation(line: 121, column: 15, scope: !788, inlinedAt: !770)
!790 = !DILocation(line: 121, column: 21, scope: !788, inlinedAt: !770)
!791 = !DILocation(line: 121, column: 9, scope: !766, inlinedAt: !770)
!792 = !DILocation(line: 122, column: 9, scope: !793, inlinedAt: !770)
!793 = distinct !DILexicalBlock(scope: !788, file: !2, line: 121, column: 38)
!794 = !DILocation(line: 122, column: 21, scope: !793, inlinedAt: !770)
!795 = !DILocation(line: 123, column: 38, scope: !793, inlinedAt: !770)
!796 = !DILocation(line: 123, column: 15, scope: !793, inlinedAt: !770)
!797 = !DILocation(line: 123, column: 9, scope: !793, inlinedAt: !770)
!798 = !DILocation(line: 124, column: 5, scope: !793, inlinedAt: !770)
!799 = !DILocation(line: 349, column: 25, scope: !764)
!800 = !DILocation(line: 352, column: 51, scope: !756)
!801 = !DILocation(line: 262, column: 50, scope: !711, inlinedAt: !802)
!802 = distinct !DILocation(line: 352, column: 21, scope: !756)
!803 = !DILocation(line: 263, column: 30, scope: !711, inlinedAt: !802)
!804 = !DILocation(line: 263, column: 62, scope: !711, inlinedAt: !802)
!805 = !DILocation(line: 265, column: 9, scope: !722, inlinedAt: !802)
!806 = !DILocation(line: 265, column: 15, scope: !722, inlinedAt: !802)
!807 = !DILocation(line: 265, column: 9, scope: !711, inlinedAt: !802)
!808 = !DILocation(line: 266, column: 13, scope: !726, inlinedAt: !802)
!809 = !DILocation(line: 266, column: 19, scope: !726, inlinedAt: !802)
!810 = !DILocation(line: 266, column: 25, scope: !726, inlinedAt: !802)
!811 = !DILocation(line: 266, column: 13, scope: !727, inlinedAt: !802)
!812 = !DILocation(line: 267, column: 13, scope: !726, inlinedAt: !802)
!813 = !DILocation(line: 269, column: 20, scope: !727, inlinedAt: !802)
!814 = !DILocation(line: 269, column: 26, scope: !727, inlinedAt: !802)
!815 = !DILocation(line: 269, column: 54, scope: !727, inlinedAt: !802)
!816 = !DILocation(line: 269, column: 9, scope: !727, inlinedAt: !802)
!817 = !DILocation(line: 270, column: 5, scope: !727, inlinedAt: !802)
!818 = !DILocation(line: 271, column: 31, scope: !738, inlinedAt: !802)
!819 = !DILocation(line: 271, column: 63, scope: !738, inlinedAt: !802)
!820 = !DILocation(line: 271, column: 22, scope: !738, inlinedAt: !802)
!821 = !DILocation(line: 271, column: 9, scope: !738, inlinedAt: !802)
!822 = !DILocation(line: 271, column: 15, scope: !738, inlinedAt: !802)
!823 = !DILocation(line: 271, column: 20, scope: !738, inlinedAt: !802)
!824 = !DILocation(line: 273, column: 28, scope: !738, inlinedAt: !802)
!825 = !DILocation(line: 273, column: 32, scope: !738, inlinedAt: !802)
!826 = !DILocation(line: 273, column: 9, scope: !738, inlinedAt: !802)
!827 = !DILocation(line: 274, column: 9, scope: !738, inlinedAt: !802)
!828 = !DILocation(line: 274, column: 21, scope: !738, inlinedAt: !802)
!829 = !DILocation(line: 276, column: 5, scope: !711, inlinedAt: !802)
!830 = !DILocation(line: 276, column: 17, scope: !711, inlinedAt: !802)
!831 = !DILocation(line: 277, column: 5, scope: !711, inlinedAt: !802)
!832 = !DILocation(line: 277, column: 17, scope: !711, inlinedAt: !802)
!833 = !DILocation(line: 278, column: 1, scope: !711, inlinedAt: !802)
!834 = !DILocation(line: 353, column: 48, scope: !756)
!835 = !DILocation(line: 353, column: 54, scope: !756)
!836 = !DILocalVariable(name: "dq", arg: 1, scope: !837, file: !2, line: 174, type: !662)
!837 = distinct !DISubprogram(name: "resume_coro_if_needed", scope: !2, file: !2, line: 174, type: !838, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !662, !318, !119}
!840 = !DILocation(line: 174, column: 45, scope: !837, inlinedAt: !841)
!841 = distinct !DILocation(line: 353, column: 21, scope: !756)
!842 = !DILocalVariable(name: "conn", arg: 2, scope: !837, file: !2, line: 174, type: !318)
!843 = !DILocation(line: 174, column: 68, scope: !837, inlinedAt: !841)
!844 = !DILocalVariable(name: "epoll_fd", arg: 3, scope: !837, file: !2, line: 175, type: !119)
!845 = !DILocation(line: 175, column: 9, scope: !837, inlinedAt: !841)
!846 = !DILocation(line: 177, column: 5, scope: !847, inlinedAt: !841)
!847 = distinct !DILexicalBlock(scope: !848, file: !2, line: 177, column: 5)
!848 = distinct !DILexicalBlock(scope: !837, file: !2, line: 177, column: 5)
!849 = !DILocation(line: 177, column: 5, scope: !848, inlinedAt: !841)
!850 = !DILocation(line: 179, column: 11, scope: !851, inlinedAt: !841)
!851 = distinct !DILexicalBlock(scope: !837, file: !2, line: 179, column: 9)
!852 = !DILocation(line: 179, column: 17, scope: !851, inlinedAt: !841)
!853 = !DILocation(line: 179, column: 23, scope: !851, inlinedAt: !841)
!854 = !DILocation(line: 179, column: 9, scope: !837, inlinedAt: !841)
!855 = !DILocation(line: 180, column: 9, scope: !851, inlinedAt: !841)
!856 = !DILocalVariable(name: "yield_result", scope: !837, file: !2, line: 182, type: !857)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_coro_yield_t", file: !118, line: 171, baseType: !189)
!858 = !DILocation(line: 182, column: 34, scope: !837, inlinedAt: !841)
!859 = !DILocation(line: 182, column: 61, scope: !837, inlinedAt: !841)
!860 = !DILocation(line: 182, column: 67, scope: !837, inlinedAt: !841)
!861 = !DILocation(line: 182, column: 49, scope: !837, inlinedAt: !841)
!862 = !DILocation(line: 184, column: 9, scope: !863, inlinedAt: !841)
!863 = distinct !DILexicalBlock(scope: !837, file: !2, line: 184, column: 9)
!864 = !DILocation(line: 184, column: 22, scope: !863, inlinedAt: !841)
!865 = !DILocation(line: 184, column: 9, scope: !837, inlinedAt: !841)
!866 = !DILocation(line: 185, column: 22, scope: !867, inlinedAt: !841)
!867 = distinct !DILexicalBlock(scope: !863, file: !2, line: 184, column: 46)
!868 = !DILocation(line: 185, column: 26, scope: !867, inlinedAt: !841)
!869 = !DILocation(line: 114, column: 36, scope: !766, inlinedAt: !870)
!870 = distinct !DILocation(line: 185, column: 9, scope: !867, inlinedAt: !841)
!871 = !DILocation(line: 114, column: 59, scope: !766, inlinedAt: !870)
!872 = !DILocation(line: 116, column: 24, scope: !766, inlinedAt: !870)
!873 = !DILocation(line: 116, column: 28, scope: !766, inlinedAt: !870)
!874 = !DILocation(line: 116, column: 5, scope: !766, inlinedAt: !870)
!875 = !DILocation(line: 117, column: 9, scope: !777, inlinedAt: !870)
!876 = !DILocation(line: 117, column: 9, scope: !766, inlinedAt: !870)
!877 = !DILocation(line: 118, column: 19, scope: !780, inlinedAt: !870)
!878 = !DILocation(line: 118, column: 25, scope: !780, inlinedAt: !870)
!879 = !DILocation(line: 118, column: 9, scope: !780, inlinedAt: !870)
!880 = !DILocation(line: 119, column: 9, scope: !780, inlinedAt: !870)
!881 = !DILocation(line: 119, column: 15, scope: !780, inlinedAt: !870)
!882 = !DILocation(line: 119, column: 20, scope: !780, inlinedAt: !870)
!883 = !DILocation(line: 120, column: 5, scope: !780, inlinedAt: !870)
!884 = !DILocation(line: 121, column: 9, scope: !788, inlinedAt: !870)
!885 = !DILocation(line: 121, column: 15, scope: !788, inlinedAt: !870)
!886 = !DILocation(line: 121, column: 21, scope: !788, inlinedAt: !870)
!887 = !DILocation(line: 121, column: 9, scope: !766, inlinedAt: !870)
!888 = !DILocation(line: 122, column: 9, scope: !793, inlinedAt: !870)
!889 = !DILocation(line: 122, column: 21, scope: !793, inlinedAt: !870)
!890 = !DILocation(line: 123, column: 38, scope: !793, inlinedAt: !870)
!891 = !DILocation(line: 123, column: 15, scope: !793, inlinedAt: !870)
!892 = !DILocation(line: 123, column: 9, scope: !793, inlinedAt: !870)
!893 = !DILocation(line: 124, column: 5, scope: !793, inlinedAt: !870)
!894 = !DILocation(line: 186, column: 9, scope: !867, inlinedAt: !841)
!895 = !DILocalVariable(name: "write_events", scope: !837, file: !2, line: 189, type: !350)
!896 = !DILocation(line: 189, column: 10, scope: !837, inlinedAt: !841)
!897 = !DILocation(line: 190, column: 9, scope: !898, inlinedAt: !841)
!898 = distinct !DILexicalBlock(scope: !837, file: !2, line: 190, column: 9)
!899 = !DILocation(line: 190, column: 15, scope: !898, inlinedAt: !841)
!900 = !DILocation(line: 190, column: 21, scope: !898, inlinedAt: !841)
!901 = !DILocation(line: 190, column: 9, scope: !837, inlinedAt: !841)
!902 = !DILocation(line: 191, column: 22, scope: !903, inlinedAt: !841)
!903 = distinct !DILexicalBlock(scope: !898, file: !2, line: 190, column: 39)
!904 = !DILocation(line: 192, column: 5, scope: !903, inlinedAt: !841)
!905 = !DILocalVariable(name: "should_resume_coro", scope: !906, file: !2, line: 193, type: !350)
!906 = distinct !DILexicalBlock(scope: !898, file: !2, line: 192, column: 12)
!907 = !DILocation(line: 193, column: 14, scope: !906, inlinedAt: !841)
!908 = !DILocation(line: 193, column: 36, scope: !906, inlinedAt: !841)
!909 = !DILocation(line: 193, column: 49, scope: !906, inlinedAt: !841)
!910 = !DILocation(line: 195, column: 13, scope: !911, inlinedAt: !841)
!911 = distinct !DILexicalBlock(scope: !906, file: !2, line: 195, column: 13)
!912 = !DILocation(line: 195, column: 13, scope: !906, inlinedAt: !841)
!913 = !DILocation(line: 196, column: 13, scope: !911, inlinedAt: !841)
!914 = !DILocation(line: 196, column: 25, scope: !911, inlinedAt: !841)
!915 = !DILocation(line: 198, column: 13, scope: !911, inlinedAt: !841)
!916 = !DILocation(line: 198, column: 25, scope: !911, inlinedAt: !841)
!917 = !DILocation(line: 200, column: 25, scope: !906, inlinedAt: !841)
!918 = !DILocation(line: 200, column: 31, scope: !906, inlinedAt: !841)
!919 = !DILocation(line: 200, column: 37, scope: !906, inlinedAt: !841)
!920 = !DILocation(line: 200, column: 24, scope: !906, inlinedAt: !841)
!921 = !DILocation(line: 200, column: 22, scope: !906, inlinedAt: !841)
!922 = !DILocation(line: 201, column: 13, scope: !923, inlinedAt: !841)
!923 = distinct !DILexicalBlock(scope: !906, file: !2, line: 201, column: 13)
!924 = !DILocation(line: 201, column: 35, scope: !923, inlinedAt: !841)
!925 = !DILocation(line: 201, column: 32, scope: !923, inlinedAt: !841)
!926 = !DILocation(line: 201, column: 13, scope: !906, inlinedAt: !841)
!927 = !DILocation(line: 202, column: 13, scope: !923, inlinedAt: !841)
!928 = !DILocalVariable(name: "event", scope: !837, file: !2, line: 205, type: !488)
!929 = !DILocation(line: 205, column: 24, scope: !837, inlinedAt: !841)
!930 = !DILocation(line: 206, column: 40, scope: !837, inlinedAt: !841)
!931 = !DILocation(line: 206, column: 19, scope: !837, inlinedAt: !841)
!932 = !DILocation(line: 205, column: 32, scope: !837, inlinedAt: !841)
!933 = !DILocation(line: 207, column: 21, scope: !837, inlinedAt: !841)
!934 = !DILocation(line: 207, column: 14, scope: !837, inlinedAt: !841)
!935 = !DILocalVariable(name: "fd", scope: !837, file: !2, line: 210, type: !119)
!936 = !DILocation(line: 210, column: 9, scope: !837, inlinedAt: !841)
!937 = !DILocation(line: 210, column: 37, scope: !837, inlinedAt: !841)
!938 = !DILocation(line: 210, column: 14, scope: !837, inlinedAt: !841)
!939 = !DILocation(line: 211, column: 9, scope: !940, inlinedAt: !841)
!940 = distinct !DILexicalBlock(scope: !837, file: !2, line: 211, column: 9)
!941 = !DILocation(line: 211, column: 9, scope: !837, inlinedAt: !841)
!942 = !DILocation(line: 212, column: 9, scope: !940, inlinedAt: !841)
!943 = !DILocation(line: 214, column: 5, scope: !837, inlinedAt: !841)
!944 = !DILocation(line: 214, column: 17, scope: !837, inlinedAt: !841)
!945 = !DILocation(line: 215, column: 1, scope: !837, inlinedAt: !841)
!946 = !DILocation(line: 356, column: 47, scope: !692)
!947 = !DILocation(line: 356, column: 17, scope: !692)
!948 = !DILocation(line: 357, column: 13, scope: !692)
!949 = !DILocation(line: 337, column: 74, scope: !689)
!950 = !DILocation(line: 337, column: 13, scope: !689)
!951 = distinct !{!951, !690, !952, !435}
!952 = !DILocation(line: 357, column: 13, scope: !684)
!953 = !DILocation(line: 358, column: 9, scope: !671)
!954 = !DILocation(line: 321, column: 5, scope: !654)
!955 = !DILabel(scope: !571, name: "epoll_fd_closed", file: !2, line: 361)
!956 = !DILocation(line: 361, column: 1, scope: !571)
!957 = !DILocation(line: 362, column: 10, scope: !571)
!958 = !DILocation(line: 362, column: 5, scope: !571)
!959 = !DILocation(line: 364, column: 5, scope: !571)
!960 = distinct !DISubprogram(name: "death_queue_init", scope: !2, file: !2, line: 98, type: !961, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!961 = !DISubroutineType(types: !962)
!962 = !{null, !662, !318, !198}
!963 = !DILocalVariable(name: "dq", arg: 1, scope: !960, file: !2, line: 98, type: !662)
!964 = !DILocation(line: 98, column: 40, scope: !960)
!965 = !DILocalVariable(name: "conns", arg: 2, scope: !960, file: !2, line: 98, type: !318)
!966 = !DILocation(line: 98, column: 63, scope: !960)
!967 = !DILocalVariable(name: "keep_alive_timeout", arg: 3, scope: !960, file: !2, line: 99, type: !198)
!968 = !DILocation(line: 99, column: 20, scope: !960)
!969 = !DILocation(line: 101, column: 17, scope: !960)
!970 = !DILocation(line: 101, column: 5, scope: !960)
!971 = !DILocation(line: 101, column: 9, scope: !960)
!972 = !DILocation(line: 101, column: 15, scope: !960)
!973 = !DILocation(line: 102, column: 5, scope: !960)
!974 = !DILocation(line: 102, column: 9, scope: !960)
!975 = !DILocation(line: 102, column: 14, scope: !960)
!976 = !DILocation(line: 103, column: 30, scope: !960)
!977 = !DILocation(line: 103, column: 5, scope: !960)
!978 = !DILocation(line: 103, column: 9, scope: !960)
!979 = !DILocation(line: 103, column: 28, scope: !960)
!980 = !DILocation(line: 104, column: 21, scope: !960)
!981 = !DILocation(line: 104, column: 25, scope: !960)
!982 = !DILocation(line: 104, column: 30, scope: !960)
!983 = !DILocation(line: 104, column: 35, scope: !960)
!984 = !DILocation(line: 104, column: 5, scope: !960)
!985 = !DILocation(line: 104, column: 9, scope: !960)
!986 = !DILocation(line: 104, column: 14, scope: !960)
!987 = !DILocation(line: 104, column: 19, scope: !960)
!988 = !DILocation(line: 105, column: 1, scope: !960)
!989 = distinct !DISubprogram(name: "death_queue_kill_waiting", scope: !2, file: !2, line: 218, type: !990, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !662}
!992 = !DILocalVariable(name: "dq", arg: 1, scope: !989, file: !2, line: 218, type: !662)
!993 = !DILocation(line: 218, column: 48, scope: !989)
!994 = !DILocation(line: 220, column: 5, scope: !989)
!995 = !DILocation(line: 220, column: 9, scope: !989)
!996 = !DILocation(line: 220, column: 13, scope: !989)
!997 = !DILocation(line: 222, column: 5, scope: !989)
!998 = !DILocation(line: 222, column: 31, scope: !989)
!999 = !DILocation(line: 222, column: 13, scope: !989)
!1000 = !DILocation(line: 222, column: 12, scope: !989)
!1001 = !DILocalVariable(name: "conn", scope: !1002, file: !2, line: 223, type: !318)
!1002 = distinct !DILexicalBlock(scope: !989, file: !2, line: 222, column: 36)
!1003 = !DILocation(line: 223, column: 28, scope: !1002)
!1004 = !DILocation(line: 223, column: 59, scope: !1002)
!1005 = !DILocation(line: 223, column: 63, scope: !1002)
!1006 = !DILocation(line: 223, column: 67, scope: !1002)
!1007 = !DILocation(line: 223, column: 72, scope: !1002)
!1008 = !DILocation(line: 223, column: 35, scope: !1002)
!1009 = !DILocation(line: 225, column: 13, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1002, file: !2, line: 225, column: 13)
!1011 = !DILocation(line: 225, column: 19, scope: !1010)
!1012 = !DILocation(line: 225, column: 33, scope: !1010)
!1013 = !DILocation(line: 225, column: 37, scope: !1010)
!1014 = !DILocation(line: 225, column: 31, scope: !1010)
!1015 = !DILocation(line: 225, column: 13, scope: !1002)
!1016 = !DILocation(line: 226, column: 13, scope: !1010)
!1017 = !DILocation(line: 228, column: 22, scope: !1002)
!1018 = !DILocation(line: 228, column: 26, scope: !1002)
!1019 = !DILocation(line: 114, column: 36, scope: !766, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 228, column: 9, scope: !1002)
!1021 = !DILocation(line: 114, column: 59, scope: !766, inlinedAt: !1020)
!1022 = !DILocation(line: 116, column: 24, scope: !766, inlinedAt: !1020)
!1023 = !DILocation(line: 116, column: 28, scope: !766, inlinedAt: !1020)
!1024 = !DILocation(line: 116, column: 5, scope: !766, inlinedAt: !1020)
!1025 = !DILocation(line: 117, column: 9, scope: !777, inlinedAt: !1020)
!1026 = !DILocation(line: 117, column: 9, scope: !766, inlinedAt: !1020)
!1027 = !DILocation(line: 118, column: 19, scope: !780, inlinedAt: !1020)
!1028 = !DILocation(line: 118, column: 25, scope: !780, inlinedAt: !1020)
!1029 = !DILocation(line: 118, column: 9, scope: !780, inlinedAt: !1020)
!1030 = !DILocation(line: 119, column: 9, scope: !780, inlinedAt: !1020)
!1031 = !DILocation(line: 119, column: 15, scope: !780, inlinedAt: !1020)
!1032 = !DILocation(line: 119, column: 20, scope: !780, inlinedAt: !1020)
!1033 = !DILocation(line: 120, column: 5, scope: !780, inlinedAt: !1020)
!1034 = !DILocation(line: 121, column: 9, scope: !788, inlinedAt: !1020)
!1035 = !DILocation(line: 121, column: 15, scope: !788, inlinedAt: !1020)
!1036 = !DILocation(line: 121, column: 21, scope: !788, inlinedAt: !1020)
!1037 = !DILocation(line: 121, column: 9, scope: !766, inlinedAt: !1020)
!1038 = !DILocation(line: 122, column: 9, scope: !793, inlinedAt: !1020)
!1039 = !DILocation(line: 122, column: 21, scope: !793, inlinedAt: !1020)
!1040 = !DILocation(line: 123, column: 38, scope: !793, inlinedAt: !1020)
!1041 = !DILocation(line: 123, column: 15, scope: !793, inlinedAt: !1020)
!1042 = !DILocation(line: 123, column: 9, scope: !793, inlinedAt: !1020)
!1043 = !DILocation(line: 124, column: 5, scope: !793, inlinedAt: !1020)
!1044 = distinct !{!1044, !997, !1045, !435}
!1045 = !DILocation(line: 229, column: 5, scope: !989)
!1046 = !DILocation(line: 232, column: 5, scope: !989)
!1047 = !DILocation(line: 232, column: 9, scope: !989)
!1048 = !DILocation(line: 232, column: 14, scope: !989)
!1049 = !DILocation(line: 233, column: 1, scope: !989)
!1050 = distinct !DISubprogram(name: "update_date_cache", scope: !2, file: !2, line: 250, type: !1051, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !281}
!1053 = !DILocalVariable(name: "thread", arg: 1, scope: !1050, file: !2, line: 250, type: !281)
!1054 = !DILocation(line: 250, column: 34, scope: !1050)
!1055 = !DILocalVariable(name: "now", scope: !1050, file: !2, line: 252, type: !202)
!1056 = !DILocation(line: 252, column: 12, scope: !1050)
!1057 = !DILocation(line: 252, column: 18, scope: !1050)
!1058 = !DILocation(line: 253, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 253, column: 9)
!1060 = !DILocation(line: 253, column: 16, scope: !1059)
!1061 = !DILocation(line: 253, column: 24, scope: !1059)
!1062 = !DILocation(line: 253, column: 29, scope: !1059)
!1063 = !DILocation(line: 253, column: 13, scope: !1059)
!1064 = !DILocation(line: 253, column: 9, scope: !1050)
!1065 = !DILocation(line: 254, column: 29, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 253, column: 35)
!1067 = !DILocation(line: 254, column: 9, scope: !1066)
!1068 = !DILocation(line: 254, column: 17, scope: !1066)
!1069 = !DILocation(line: 254, column: 22, scope: !1066)
!1070 = !DILocation(line: 254, column: 27, scope: !1066)
!1071 = !DILocation(line: 255, column: 30, scope: !1066)
!1072 = !DILocation(line: 255, column: 35, scope: !1066)
!1073 = !DILocation(line: 255, column: 43, scope: !1066)
!1074 = !DILocation(line: 255, column: 48, scope: !1066)
!1075 = !DILocation(line: 255, column: 9, scope: !1066)
!1076 = !DILocation(line: 256, column: 30, scope: !1066)
!1077 = !DILocation(line: 256, column: 44, scope: !1066)
!1078 = !DILocation(line: 256, column: 52, scope: !1066)
!1079 = !DILocation(line: 256, column: 58, scope: !1066)
!1080 = !DILocation(line: 256, column: 65, scope: !1066)
!1081 = !DILocation(line: 256, column: 36, scope: !1066)
!1082 = !DILocation(line: 256, column: 34, scope: !1066)
!1083 = !DILocation(line: 257, column: 21, scope: !1066)
!1084 = !DILocation(line: 257, column: 29, scope: !1066)
!1085 = !DILocation(line: 257, column: 34, scope: !1066)
!1086 = !DILocation(line: 256, column: 9, scope: !1066)
!1087 = !DILocation(line: 258, column: 5, scope: !1066)
!1088 = !DILocation(line: 259, column: 1, scope: !1050)
!1089 = distinct !DISubprogram(name: "grab_and_watch_client", scope: !2, file: !2, line: 281, type: !1090, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!318, !119, !119, !318}
!1092 = !DILocalVariable(name: "epoll_fd", arg: 1, scope: !1089, file: !2, line: 281, type: !119)
!1093 = !DILocation(line: 281, column: 27, scope: !1089)
!1094 = !DILocalVariable(name: "pipe_fd", arg: 2, scope: !1089, file: !2, line: 281, type: !119)
!1095 = !DILocation(line: 281, column: 41, scope: !1089)
!1096 = !DILocalVariable(name: "conns", arg: 3, scope: !1089, file: !2, line: 281, type: !318)
!1097 = !DILocation(line: 281, column: 69, scope: !1089)
!1098 = !DILocalVariable(name: "fd", scope: !1089, file: !2, line: 283, type: !119)
!1099 = !DILocation(line: 283, column: 9, scope: !1089)
!1100 = !DILocation(line: 284, column: 9, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 284, column: 9)
!1102 = !DILocation(line: 284, column: 9, scope: !1089)
!1103 = !DILocation(line: 285, column: 9, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 284, column: 67)
!1105 = !DILocation(line: 286, column: 9, scope: !1104)
!1106 = !DILocalVariable(name: "event", scope: !1089, file: !2, line: 289, type: !488)
!1107 = !DILocation(line: 289, column: 24, scope: !1089)
!1108 = !DILocation(line: 289, column: 32, scope: !1089)
!1109 = !DILocation(line: 290, column: 19, scope: !1089)
!1110 = !DILocation(line: 291, column: 22, scope: !1089)
!1111 = !DILocation(line: 291, column: 28, scope: !1089)
!1112 = !DILocation(line: 291, column: 14, scope: !1089)
!1113 = !DILocation(line: 293, column: 9, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 293, column: 9)
!1115 = !DILocation(line: 293, column: 9, scope: !1089)
!1116 = !DILocation(line: 294, column: 9, scope: !1114)
!1117 = !DILocation(line: 296, column: 13, scope: !1089)
!1118 = !DILocation(line: 296, column: 19, scope: !1089)
!1119 = !DILocation(line: 296, column: 5, scope: !1089)
!1120 = !DILocation(line: 297, column: 1, scope: !1089)
!1121 = distinct !DISubprogram(name: "death_queue_move_to_last", scope: !2, file: !2, line: 79, type: !767, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!1122 = !DILocalVariable(name: "dq", arg: 1, scope: !1121, file: !2, line: 79, type: !662)
!1123 = !DILocation(line: 79, column: 60, scope: !1121)
!1124 = !DILocalVariable(name: "conn", arg: 2, scope: !1121, file: !2, line: 80, type: !318)
!1125 = !DILocation(line: 80, column: 24, scope: !1121)
!1126 = !DILocation(line: 90, column: 25, scope: !1121)
!1127 = !DILocation(line: 90, column: 29, scope: !1121)
!1128 = !DILocation(line: 90, column: 36, scope: !1121)
!1129 = !DILocation(line: 90, column: 40, scope: !1121)
!1130 = !DILocation(line: 91, column: 26, scope: !1121)
!1131 = !DILocation(line: 91, column: 32, scope: !1121)
!1132 = !DILocation(line: 91, column: 38, scope: !1121)
!1133 = !DILocation(line: 91, column: 24, scope: !1121)
!1134 = !DILocation(line: 91, column: 23, scope: !1121)
!1135 = !DILocation(line: 90, column: 59, scope: !1121)
!1136 = !DILocation(line: 90, column: 34, scope: !1121)
!1137 = !DILocation(line: 90, column: 5, scope: !1121)
!1138 = !DILocation(line: 90, column: 11, scope: !1121)
!1139 = !DILocation(line: 90, column: 23, scope: !1121)
!1140 = !DILocation(line: 93, column: 24, scope: !1121)
!1141 = !DILocation(line: 93, column: 28, scope: !1121)
!1142 = !DILocation(line: 93, column: 5, scope: !1121)
!1143 = !DILocation(line: 94, column: 24, scope: !1121)
!1144 = !DILocation(line: 94, column: 28, scope: !1121)
!1145 = !DILocation(line: 94, column: 5, scope: !1121)
!1146 = !DILocation(line: 95, column: 1, scope: !1121)
!1147 = distinct !DISubprogram(name: "death_queue_empty", scope: !2, file: !2, line: 74, type: !1148, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!350, !662}
!1150 = !DILocalVariable(name: "dq", arg: 1, scope: !1147, file: !2, line: 74, type: !662)
!1151 = !DILocation(line: 74, column: 53, scope: !1147)
!1152 = !DILocation(line: 76, column: 12, scope: !1147)
!1153 = !DILocation(line: 76, column: 16, scope: !1147)
!1154 = !DILocation(line: 76, column: 21, scope: !1147)
!1155 = !DILocation(line: 76, column: 26, scope: !1147)
!1156 = !DILocation(line: 76, column: 5, scope: !1147)
!1157 = distinct !DISubprogram(name: "death_queue_idx_to_node", scope: !2, file: !2, line: 50, type: !1158, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!318, !662, !119}
!1160 = !DILocalVariable(name: "dq", arg: 1, scope: !1157, file: !2, line: 50, type: !662)
!1161 = !DILocation(line: 50, column: 80, scope: !1157)
!1162 = !DILocalVariable(name: "idx", arg: 2, scope: !1157, file: !2, line: 51, type: !119)
!1163 = !DILocation(line: 51, column: 9, scope: !1157)
!1164 = !DILocation(line: 53, column: 13, scope: !1157)
!1165 = !DILocation(line: 53, column: 17, scope: !1157)
!1166 = !DILocation(line: 53, column: 12, scope: !1157)
!1167 = !DILocation(line: 53, column: 25, scope: !1157)
!1168 = !DILocation(line: 53, column: 29, scope: !1157)
!1169 = !DILocation(line: 53, column: 37, scope: !1157)
!1170 = !DILocation(line: 53, column: 41, scope: !1157)
!1171 = !DILocation(line: 53, column: 47, scope: !1157)
!1172 = !DILocation(line: 53, column: 5, scope: !1157)
!1173 = distinct !DISubprogram(name: "process_request_coro", scope: !2, file: !2, line: 134, type: !1174, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!119, !326}
!1176 = !DILocalVariable(name: "coro", arg: 1, scope: !1173, file: !2, line: 134, type: !326)
!1177 = !DILocation(line: 134, column: 30, scope: !1173)
!1178 = !DILocalVariable(name: "strbuf", scope: !1173, file: !2, line: 136, type: !1179)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "strbuf_t", file: !1181, line: 25, baseType: !1182)
!1181 = !DIFile(filename: "common/strbuf.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1033ae3716fb79c0aa99479d5ab6b6cd")
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf_t_", file: !1181, line: 27, size: 256, elements: !1183)
!1183 = !{!1184, !1189, !1194}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1182, file: !1181, line: 31, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1182, file: !1181, line: 28, size: 64, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1185, file: !1181, line: 29, baseType: !244, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "static_buffer", scope: !1185, file: !1181, line: 30, baseType: !265, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1182, file: !1181, line: 34, baseType: !1190, size: 128, offset: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1182, file: !1181, line: 32, size: 128, elements: !1191)
!1191 = !{!1192, !1193}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !1190, file: !1181, line: 33, baseType: !195, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1190, file: !1181, line: 33, baseType: !195, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1182, file: !1181, line: 35, baseType: !129, size: 32, offset: 192)
!1195 = !DILocation(line: 136, column: 15, scope: !1173)
!1196 = !DILocation(line: 136, column: 41, scope: !1173)
!1197 = !DILocation(line: 136, column: 24, scope: !1173)
!1198 = !DILocalVariable(name: "conn", scope: !1173, file: !2, line: 137, type: !318)
!1199 = !DILocation(line: 137, column: 24, scope: !1173)
!1200 = !DILocation(line: 137, column: 45, scope: !1173)
!1201 = !DILocation(line: 137, column: 31, scope: !1173)
!1202 = !DILocalVariable(name: "lwan", scope: !1173, file: !2, line: 138, type: !286)
!1203 = !DILocation(line: 138, column: 13, scope: !1173)
!1204 = !DILocation(line: 138, column: 20, scope: !1173)
!1205 = !DILocation(line: 138, column: 26, scope: !1173)
!1206 = !DILocation(line: 138, column: 34, scope: !1173)
!1207 = !DILocalVariable(name: "fd", scope: !1173, file: !2, line: 139, type: !119)
!1208 = !DILocation(line: 139, column: 9, scope: !1173)
!1209 = !DILocation(line: 139, column: 37, scope: !1173)
!1210 = !DILocation(line: 139, column: 14, scope: !1173)
!1211 = !DILocalVariable(name: "request_buffer", scope: !1173, file: !2, line: 140, type: !1212)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !1213)
!1213 = !{!1214}
!1214 = !DISubrange(count: 4096)
!1215 = !DILocation(line: 140, column: 10, scope: !1173)
!1216 = !DILocalVariable(name: "buffer", scope: !1173, file: !2, line: 141, type: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_value_t", file: !118, line: 110, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_value_t_", file: !118, line: 191, size: 128, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1218, file: !118, line: 192, baseType: !244, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1218, file: !118, line: 193, baseType: !195, size: 64, offset: 64)
!1222 = !DILocation(line: 141, column: 18, scope: !1173)
!1223 = !DILocation(line: 141, column: 27, scope: !1173)
!1224 = !DILocation(line: 142, column: 18, scope: !1173)
!1225 = !DILocalVariable(name: "next_request", scope: !1173, file: !2, line: 145, type: !244)
!1226 = !DILocation(line: 145, column: 11, scope: !1173)
!1227 = !DILocation(line: 147, column: 17, scope: !1173)
!1228 = !DILocation(line: 147, column: 5, scope: !1173)
!1229 = !DILocation(line: 149, column: 5, scope: !1173)
!1230 = !DILocalVariable(name: "request", scope: !1231, file: !2, line: 150, type: !1232)
!1231 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 149, column: 18)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_t", file: !118, line: 106, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_request_t_", file: !118, line: 206, size: 1280, elements: !1234)
!1234 = !{!1235, !1237, !1238, !1239, !1240, !1241, !1252, !1253, !1265}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1233, file: !118, line: 207, baseType: !1236, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_flags_t", file: !118, line: 156, baseType: !159)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1233, file: !118, line: 208, baseType: !119, size: 32, offset: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "url", scope: !1233, file: !118, line: 209, baseType: !1217, size: 128, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "original_url", scope: !1233, file: !118, line: 210, baseType: !1217, size: 128, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !1233, file: !118, line: 211, baseType: !318, size: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "query_params", scope: !1233, file: !118, line: 216, baseType: !1242, size: 128, offset: 384)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1233, file: !118, line: 213, size: 128, elements: !1243)
!1243 = !{!1244, !1251}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1242, file: !118, line: 214, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_key_value_t", file: !118, line: 105, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_key_value_t_", file: !118, line: 173, size: 128, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1247, file: !118, line: 174, baseType: !244, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1247, file: !118, line: 175, baseType: !244, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1242, file: !118, line: 215, baseType: !195, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "post_data", scope: !1233, file: !118, line: 216, baseType: !1242, size: 128, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1233, file: !118, line: 223, baseType: !1254, size: 192, offset: 640)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1233, file: !118, line: 217, size: 192, elements: !1255)
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1254, file: !118, line: 218, baseType: !202, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1254, file: !118, line: 222, baseType: !1258, size: 128, offset: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1254, file: !118, line: 219, size: 128, elements: !1259)
!1259 = !{!1260, !1264}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1258, file: !118, line: 220, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1262, line: 56, baseType: !1263)
!1262 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !205, line: 152, baseType: !200)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !1258, file: !118, line: 221, baseType: !1261, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !1233, file: !118, line: 224, baseType: !1266, size: 448, offset: 832)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_response_t", file: !118, line: 107, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_response_t_", file: !118, line: 178, size: 448, elements: !1268)
!1268 = !{!1269, !1270, !1271, !1272, !1273}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1267, file: !118, line: 179, baseType: !1179, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !1267, file: !118, line: 180, baseType: !265, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1267, file: !118, line: 181, baseType: !195, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1267, file: !118, line: 182, baseType: !1245, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !1267, file: !118, line: 188, baseType: !1274, size: 192, offset: 256)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1267, file: !118, line: 184, size: 192, elements: !1275)
!1275 = !{!1276, !1282, !1283}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1274, file: !118, line: 185, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!1280, !1281, !201}
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_http_status_t", file: !118, line: 131, baseType: !171)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1274, file: !118, line: 186, baseType: !201, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1274, file: !118, line: 187, baseType: !201, size: 64, offset: 128)
!1284 = !DILocation(line: 150, column: 24, scope: !1231)
!1285 = !DILocation(line: 150, column: 34, scope: !1231)
!1286 = !DILocation(line: 152, column: 19, scope: !1231)
!1287 = !DILocation(line: 151, column: 21, scope: !1231)
!1288 = !DILocation(line: 153, column: 25, scope: !1231)
!1289 = !DILocation(line: 154, column: 27, scope: !1231)
!1290 = !DILocation(line: 158, column: 9, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 158, column: 9)
!1292 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 158, column: 9)
!1293 = !DILocation(line: 158, column: 9, scope: !1292)
!1294 = !DILocation(line: 160, column: 45, scope: !1231)
!1295 = !DILocation(line: 160, column: 70, scope: !1231)
!1296 = !DILocation(line: 160, column: 24, scope: !1231)
!1297 = !DILocation(line: 160, column: 22, scope: !1231)
!1298 = !DILocation(line: 161, column: 14, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 161, column: 13)
!1300 = !DILocation(line: 161, column: 13, scope: !1231)
!1301 = !DILocation(line: 162, column: 13, scope: !1299)
!1302 = !DILocation(line: 164, column: 20, scope: !1231)
!1303 = !DILocation(line: 164, column: 9, scope: !1231)
!1304 = !DILocation(line: 166, column: 13, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 166, column: 13)
!1306 = !DILocation(line: 166, column: 13, scope: !1231)
!1307 = !DILocation(line: 167, column: 13, scope: !1305)
!1308 = distinct !{!1308, !1229, !1309}
!1309 = !DILocation(line: 168, column: 5, scope: !1173)
!1310 = !DILocation(line: 170, column: 5, scope: !1173)
!1311 = !DILocation(line: 171, column: 1, scope: !1173)
!1312 = distinct !DISubprogram(name: "death_queue_insert", scope: !2, file: !2, line: 56, type: !767, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!1313 = !DILocalVariable(name: "dq", arg: 1, scope: !1312, file: !2, line: 56, type: !662)
!1314 = !DILocation(line: 56, column: 54, scope: !1312)
!1315 = !DILocalVariable(name: "new_node", arg: 2, scope: !1312, file: !2, line: 57, type: !318)
!1316 = !DILocation(line: 57, column: 24, scope: !1312)
!1317 = !DILocation(line: 59, column: 5, scope: !1312)
!1318 = !DILocation(line: 59, column: 15, scope: !1312)
!1319 = !DILocation(line: 59, column: 20, scope: !1312)
!1320 = !DILocation(line: 60, column: 22, scope: !1312)
!1321 = !DILocation(line: 60, column: 26, scope: !1312)
!1322 = !DILocation(line: 60, column: 31, scope: !1312)
!1323 = !DILocation(line: 60, column: 5, scope: !1312)
!1324 = !DILocation(line: 60, column: 15, scope: !1312)
!1325 = !DILocation(line: 60, column: 20, scope: !1312)
!1326 = !DILocalVariable(name: "prev", scope: !1312, file: !2, line: 61, type: !318)
!1327 = !DILocation(line: 61, column: 24, scope: !1312)
!1328 = !DILocation(line: 61, column: 55, scope: !1312)
!1329 = !DILocation(line: 61, column: 59, scope: !1312)
!1330 = !DILocation(line: 61, column: 63, scope: !1312)
!1331 = !DILocation(line: 61, column: 68, scope: !1312)
!1332 = !DILocation(line: 61, column: 31, scope: !1312)
!1333 = !DILocation(line: 62, column: 58, scope: !1312)
!1334 = !DILocation(line: 62, column: 62, scope: !1312)
!1335 = !DILocation(line: 62, column: 34, scope: !1312)
!1336 = !DILocation(line: 62, column: 21, scope: !1312)
!1337 = !DILocation(line: 62, column: 27, scope: !1312)
!1338 = !DILocation(line: 62, column: 32, scope: !1312)
!1339 = !DILocation(line: 62, column: 5, scope: !1312)
!1340 = !DILocation(line: 62, column: 9, scope: !1312)
!1341 = !DILocation(line: 62, column: 14, scope: !1312)
!1342 = !DILocation(line: 62, column: 19, scope: !1312)
!1343 = !DILocation(line: 63, column: 1, scope: !1312)
!1344 = distinct !DISubprogram(name: "death_queue_node_to_idx", scope: !2, file: !2, line: 44, type: !1345, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!119, !662, !318}
!1347 = !DILocalVariable(name: "dq", arg: 1, scope: !1344, file: !2, line: 44, type: !662)
!1348 = !DILocation(line: 44, column: 65, scope: !1344)
!1349 = !DILocalVariable(name: "conn", arg: 2, scope: !1344, file: !2, line: 45, type: !318)
!1350 = !DILocation(line: 45, column: 24, scope: !1344)
!1351 = !DILocation(line: 47, column: 13, scope: !1344)
!1352 = !DILocation(line: 47, column: 22, scope: !1344)
!1353 = !DILocation(line: 47, column: 26, scope: !1344)
!1354 = !DILocation(line: 47, column: 18, scope: !1344)
!1355 = !DILocation(line: 47, column: 12, scope: !1344)
!1356 = !DILocation(line: 47, column: 56, scope: !1344)
!1357 = !DILocation(line: 47, column: 63, scope: !1344)
!1358 = !DILocation(line: 47, column: 67, scope: !1344)
!1359 = !DILocation(line: 47, column: 61, scope: !1344)
!1360 = !DILocation(line: 47, column: 39, scope: !1344)
!1361 = !DILocation(line: 47, column: 5, scope: !1344)
!1362 = distinct !DISubprogram(name: "death_queue_remove", scope: !2, file: !2, line: 65, type: !767, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !114, retainedNodes: !245)
!1363 = !DILocalVariable(name: "dq", arg: 1, scope: !1362, file: !2, line: 65, type: !662)
!1364 = !DILocation(line: 65, column: 54, scope: !1362)
!1365 = !DILocalVariable(name: "node", arg: 2, scope: !1362, file: !2, line: 66, type: !318)
!1366 = !DILocation(line: 66, column: 24, scope: !1362)
!1367 = !DILocalVariable(name: "prev", scope: !1362, file: !2, line: 68, type: !318)
!1368 = !DILocation(line: 68, column: 24, scope: !1362)
!1369 = !DILocation(line: 68, column: 55, scope: !1362)
!1370 = !DILocation(line: 68, column: 59, scope: !1362)
!1371 = !DILocation(line: 68, column: 65, scope: !1362)
!1372 = !DILocation(line: 68, column: 31, scope: !1362)
!1373 = !DILocalVariable(name: "next", scope: !1362, file: !2, line: 69, type: !318)
!1374 = !DILocation(line: 69, column: 24, scope: !1362)
!1375 = !DILocation(line: 69, column: 55, scope: !1362)
!1376 = !DILocation(line: 69, column: 59, scope: !1362)
!1377 = !DILocation(line: 69, column: 65, scope: !1362)
!1378 = !DILocation(line: 69, column: 31, scope: !1362)
!1379 = !DILocation(line: 70, column: 18, scope: !1362)
!1380 = !DILocation(line: 70, column: 24, scope: !1362)
!1381 = !DILocation(line: 70, column: 5, scope: !1362)
!1382 = !DILocation(line: 70, column: 11, scope: !1362)
!1383 = !DILocation(line: 70, column: 16, scope: !1362)
!1384 = !DILocation(line: 71, column: 18, scope: !1362)
!1385 = !DILocation(line: 71, column: 24, scope: !1362)
!1386 = !DILocation(line: 71, column: 5, scope: !1362)
!1387 = !DILocation(line: 71, column: 11, scope: !1362)
!1388 = !DILocation(line: 71, column: 16, scope: !1362)
!1389 = !DILocation(line: 72, column: 1, scope: !1362)
