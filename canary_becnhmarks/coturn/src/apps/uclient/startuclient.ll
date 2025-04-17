; ModuleID = '/home/raj/coturn/src/apps/uclient/startuclient.c'
source_filename = "/home/raj/coturn/src/apps/uclient/startuclient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.app_ur_conn_info = type { %union.ioa_addr, [129 x i8], %union.ioa_addr, [129 x i8], [129 x i8], %union.ioa_addr, %union.ioa_addr, i32, ptr, i32, [128 x i8], [128 x i8], i32, [1026 x i8], [64 x i8], i32, i32, ptr, i64, i32, [33 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._stun_buffer = type { [4 x i8], [65507 x i8], i64, i16, i8 }
%struct.app_ur_session = type { %struct.app_ur_conn_info, i32, i32, i16, i32, i32, i32, ptr, ptr, %struct._stun_buffer, %struct._stun_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.app_tcp_conn_info = type { i32, %union.ioa_addr, i32, ptr, i32 }
%struct.timeval = type { i64, i64 }

@dos = external global i32, align 4
@.str = private unnamed_addr constant [8 x i8] c"connect\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: cannot connect to remote addr: %d\0A\00", align 1, !dbg !7
@__FUNCTION__.socket_connect = private unnamed_addr constant [15 x i8] c"socket_connect\00", align 1, !dbg !12
@clnet_verbose = external global i32, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s: smid=%s\0A\00", align 1, !dbg !18
@__FUNCTION__.read_mobility_ticket = private unnamed_addr constant [21 x i8] c"read_mobility_ticket\00", align 1, !dbg !23
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: ERROR: smid_len=%d\0A\00", align 1, !dbg !28
@origin = external global [128 x i8], align 16
@.str.4 = private unnamed_addr constant [24 x i8] c"https://carleon.gov:443\00", align 1, !dbg !33
@.str.5 = private unnamed_addr constant [18 x i8] c"ftp://uffrith.net\00", align 1, !dbg !35
@peer_addr = external global %union.ioa_addr, align 4
@default_address_family = external global i32, align 4
@no_rtcp = external global i32, align 4
@do_not_use_channel = external global i32, align 4
@extra_requests = external global i32, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"164.156.178.190\00", align 1, !dbg !40
@.str.7 = private unnamed_addr constant [10 x i8] c"2001::172\00", align 1, !dbg !45
@.str.8 = private unnamed_addr constant [12 x i8] c"64.56.78.90\00", align 1, !dbg !50
@passive_tcp = external global i32, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"tcp connect sent\0A\00", align 1, !dbg !55
@.str.10 = private unnamed_addr constant [5 x i8] c"send\00", align 1, !dbg !57
@.str.11 = private unnamed_addr constant [7 x i8] c"socket\00", align 1, !dbg !62
@client_ifname = external global [1025 x i8], align 16
@.str.12 = private unnamed_addr constant [40 x i8] c"Cannot bind client socket to device %s\0A\00", align 1, !dbg !67
@.str.13 = private unnamed_addr constant [35 x i8] c"%s: cannot connect to remote addr\0A\00", align 1, !dbg !72
@__FUNCTION__.tcp_data_connect = private unnamed_addr constant [17 x i8] c"tcp_data_connect\00", align 1, !dbg !77
@use_secure = external global i32, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"%s: cannot SSL connect to remote addr\0A\00", align 1, !dbg !82
@.str.15 = private unnamed_addr constant [35 x i8] c"%s: cannot BIND to tcp connection\0A\00", align 1, !dbg !84
@client_event_base = external global ptr, align 8
@.str.16 = private unnamed_addr constant [30 x i8] c"TCP data network connected to\00", align 1, !dbg !86
@use_sctp = external global i32, align 4
@use_tcp = external global i32, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"::1\00", align 1, !dbg !91
@.str.18 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1, !dbg !96
@__FUNCTION__.clnet_connect = private unnamed_addr constant [14 x i8] c"clnet_connect\00", align 1, !dbg !98
@.str.19 = private unnamed_addr constant [15 x i8] c"Connected from\00", align 1, !dbg !103
@.str.20 = private unnamed_addr constant [13 x i8] c"Connected to\00", align 1, !dbg !106
@dual_allocation = external global i32, align 4
@allocate_rtcp = internal global i32 0, align 4, !dbg !108
@current_reservation_token = internal global i64 0, align 8, !dbg !325
@relay_transport = external global i8, align 1
@mobility = external global i32, align 4
@bps = external global i64, align 8
@dont_fragment = external global i32, align 4
@.str.21 = private unnamed_addr constant [15 x i8] c"allocate sent\0A\00", align 1, !dbg !267
@.str.22 = private unnamed_addr constant [30 x i8] c"allocate response received: \0A\00", align 1, !dbg !269
@.str.23 = private unnamed_addr constant [9 x i8] c"success\0A\00", align 1, !dbg !271
@.str.24 = private unnamed_addr constant [44 x i8] c"%s: !!!: relay addr cannot be received (1)\0A\00", align 1, !dbg !276
@__FUNCTION__.clnet_allocate = private unnamed_addr constant [15 x i8] c"clnet_allocate\00", align 1, !dbg !281
@.str.25 = private unnamed_addr constant [20 x i8] c"Received relay addr\00", align 1, !dbg !283
@.str.26 = private unnamed_addr constant [44 x i8] c"%s: !!!: relay addr cannot be received (2)\0A\00", align 1, !dbg !288
@.str.27 = private unnamed_addr constant [14 x i8] c"%s: rtv=%llu\0A\00", align 1, !dbg !290
@.str.28 = private unnamed_addr constant [15 x i8] c"error %d (%s)\0A\00", align 1, !dbg !292
@.str.29 = private unnamed_addr constant [29 x i8] c"trying allocate again %d...\0A\00", align 1, !dbg !294
@.str.30 = private unnamed_addr constant [27 x i8] c"unknown allocate response\0A\00", align 1, !dbg !299
@.str.31 = private unnamed_addr constant [5 x i8] c"recv\00", align 1, !dbg !304
@.str.32 = private unnamed_addr constant [28 x i8] c"Cannot complete Allocation\0A\00", align 1, !dbg !306
@.str.33 = private unnamed_addr constant [25 x i8] c"Cannot complete Refresh\0A\00", align 1, !dbg !311
@.str.34 = private unnamed_addr constant [14 x i8] c"refresh sent\0A\00", align 1, !dbg !316
@.str.35 = private unnamed_addr constant [29 x i8] c"refresh response received: \0A\00", align 1, !dbg !318
@.str.36 = private unnamed_addr constant [26 x i8] c"unknown refresh response\0A\00", align 1, !dbg !320
@negative_test = external global i32, align 4
@.str.37 = private unnamed_addr constant [19 x i8] c"channel bind sent\0A\00", align 1, !dbg !329
@.str.38 = private unnamed_addr constant [24 x i8] c"cb response received: \0A\00", align 1, !dbg !334
@.str.39 = private unnamed_addr constant [15 x i8] c"success: 0x%x\0A\00", align 1, !dbg !336
@.str.40 = private unnamed_addr constant [29 x i8] c"channel bind: error %d (%s)\0A\00", align 1, !dbg !338
@.str.41 = private unnamed_addr constant [31 x i8] c"unknown channel bind response\0A\00", align 1, !dbg !340
@no_permissions = external global i32, align 4
@.str.42 = private unnamed_addr constant [22 x i8] c"create perm sent: %s\0A\00", align 1, !dbg !345
@.str.43 = private unnamed_addr constant [24 x i8] c"cp response received: \0A\00", align 1, !dbg !350
@.str.44 = private unnamed_addr constant [33 x i8] c"create permission error %d (%s)\0A\00", align 1, !dbg !352
@.str.45 = private unnamed_addr constant [36 x i8] c"unknown create permission response\0A\00", align 1, !dbg !357
@root_tls_ctx_num = external global i32, align 4
@root_tls_ctx = external global [32 x ptr], align 16
@kALPNProtos = internal constant [39 x i8] c"\08http/1.1\09stun.turn\12stun.nat-discovery\00", align 16, !dbg !399
@.str.46 = private unnamed_addr constant [21 x i8] c"call SSL_connect...\0A\00", align 1, !dbg !365
@.str.47 = private unnamed_addr constant [56 x i8] c"%s: client session connected with cipher %s, method=%s\0A\00", align 1, !dbg !368
@__FUNCTION__.tls_connect = private unnamed_addr constant [12 x i8] c"tls_connect\00", align 1, !dbg !373
@.str.48 = private unnamed_addr constant [62 x i8] c"------------------------------------------------------------\0A\00", align 1, !dbg !376
@stdout = external global ptr, align 8
@.str.49 = private unnamed_addr constant [15 x i8] c"\0A\0A Cipher: %s\0A\00", align 1, !dbg !381
@.str.50 = private unnamed_addr constant [64 x i8] c"\0A------------------------------------------------------------\0A\0A\00", align 1, !dbg !383
@.str.51 = private unnamed_addr constant [35 x i8] c"%s: cannot connect: rc=%d, ctx=%d\0A\00", align 1, !dbg !388
@.str.52 = private unnamed_addr constant [27 x i8] c"errno=%d, err=%d, %s (%d)\0A\00", align 1, !dbg !390
@.str.53 = private unnamed_addr constant [62 x i8] c"------TLS---------------------------------------------------\0A\00", align 1, !dbg !392
@.str.54 = private unnamed_addr constant [63 x i8] c"------DTLS---------------------------------------------------\0A\00", align 1, !dbg !394
@.str.55 = private unnamed_addr constant [22 x i8] c"connection bind sent\0A\00", align 1, !dbg !403
@.str.56 = private unnamed_addr constant [34 x i8] c"connect bind response received: \0A\00", align 1, !dbg !405
@.str.57 = private unnamed_addr constant [31 x i8] c"connection bind error %d (%s)\0A\00", align 1, !dbg !410
@.str.58 = private unnamed_addr constant [34 x i8] c"unknown connection bind response\0A\00", align 1, !dbg !412

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rare_event() #0 !dbg !422 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr @dos, align 4, !dbg !426
  %3 = icmp ne i32 %2, 0, !dbg !426
  br i1 %3, label %4, label %9, !dbg !428

4:                                                ; preds = %0
  %5 = call i64 @random() #11, !dbg !429
  %6 = urem i64 %5, 1000, !dbg !430
  %7 = icmp eq i64 %6, 777, !dbg !431
  %8 = zext i1 %7 to i32, !dbg !431
  store i32 %8, ptr %1, align 4, !dbg !432
  br label %10, !dbg !432

9:                                                ; preds = %0
  store i32 0, ptr %1, align 4, !dbg !433
  br label %10, !dbg !433

10:                                               ; preds = %9, %4
  %11 = load i32, ptr %1, align 4, !dbg !434
  ret i32 %11, !dbg !434
}

; Function Attrs: nounwind
declare i64 @random() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @not_rare_event() #0 !dbg !435 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr @dos, align 4, !dbg !436
  %3 = icmp ne i32 %2, 0, !dbg !436
  br i1 %3, label %4, label %9, !dbg !438

4:                                                ; preds = %0
  %5 = call i64 @random() #11, !dbg !439
  %6 = urem i64 %5, 1000, !dbg !440
  %7 = icmp ult i64 %6, 200, !dbg !441
  %8 = zext i1 %7 to i32, !dbg !441
  store i32 %8, ptr %1, align 4, !dbg !442
  br label %10, !dbg !442

9:                                                ; preds = %0
  store i32 0, ptr %1, align 4, !dbg !443
  br label %10, !dbg !443

10:                                               ; preds = %9, %4
  %11 = load i32, ptr %1, align 4, !dbg !444
  ret i32 %11, !dbg !444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_connect(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !445 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !450, metadata !DIExpression()), !dbg !451
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !452, metadata !DIExpression()), !dbg !453
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !454, metadata !DIExpression()), !dbg !455
  %8 = load i32, ptr %5, align 4, !dbg !456
  %9 = load ptr, ptr %6, align 8, !dbg !458
  %10 = load ptr, ptr %7, align 8, !dbg !459
  %11 = call i32 @addr_connect(i32 noundef %8, ptr noundef %9, ptr noundef %10), !dbg !460
  %12 = icmp slt i32 %11, 0, !dbg !461
  br i1 %12, label %13, label %26, !dbg !462

13:                                               ; preds = %3
  %14 = load ptr, ptr %7, align 8, !dbg !463
  %15 = load i32, ptr %14, align 4, !dbg !466
  %16 = icmp eq i32 %15, 115, !dbg !467
  br i1 %16, label %17, label %18, !dbg !468

17:                                               ; preds = %13
  store i32 0, ptr %4, align 4, !dbg !469
  br label %27, !dbg !469

18:                                               ; preds = %13
  %19 = load ptr, ptr %7, align 8, !dbg !470
  %20 = load i32, ptr %19, align 4, !dbg !472
  %21 = icmp eq i32 %20, 98, !dbg !473
  br i1 %21, label %22, label %23, !dbg !474

22:                                               ; preds = %18
  store i32 1, ptr %4, align 4, !dbg !475
  br label %27, !dbg !475

23:                                               ; preds = %18
  call void @perror(ptr noundef @.str), !dbg !476
  %24 = load ptr, ptr %7, align 8, !dbg !477
  %25 = load i32, ptr %24, align 4, !dbg !478
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.1, ptr noundef @__FUNCTION__.socket_connect, i32 noundef %25), !dbg !479
  call void @exit(i32 noundef -1) #12, !dbg !480
  unreachable, !dbg !480

26:                                               ; preds = %3
  store i32 0, ptr %4, align 4, !dbg !481
  br label %27, !dbg !481

27:                                               ; preds = %26, %22, %17
  %28 = load i32, ptr %4, align 4, !dbg !482
  ret i32 %28, !dbg !482
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @addr_connect(i32 noundef, ptr noundef, ptr noundef) #3

declare void @perror(ptr noundef) #3

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_mobility_ticket(ptr noundef %0, ptr noundef %1) #0 !dbg !483 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !537, metadata !DIExpression()), !dbg !538
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !539, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.declare(metadata ptr %5, metadata !541, metadata !DIExpression()), !dbg !542
  store i32 0, ptr %5, align 4, !dbg !542
  %9 = load ptr, ptr %3, align 8, !dbg !543
  %10 = icmp ne ptr %9, null, !dbg !543
  br i1 %10, label %11, label %57, !dbg !545

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !dbg !546
  %13 = icmp ne ptr %12, null, !dbg !546
  br i1 %13, label %14, label %57, !dbg !547

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %6, metadata !548, metadata !DIExpression()), !dbg !553
  %15 = load ptr, ptr %4, align 8, !dbg !554
  %16 = call ptr @stun_attr_get_first_by_type(ptr noundef %15, i16 noundef zeroext -32720), !dbg !555
  store ptr %16, ptr %6, align 8, !dbg !553
  %17 = load ptr, ptr %6, align 8, !dbg !556
  %18 = icmp ne ptr %17, null, !dbg !556
  br i1 %18, label %19, label %56, !dbg !558

19:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %7, metadata !559, metadata !DIExpression()), !dbg !561
  %20 = load ptr, ptr %6, align 8, !dbg !562
  %21 = call i32 @stun_attr_get_len(ptr noundef %20), !dbg !563
  store i32 %21, ptr %7, align 4, !dbg !561
  %22 = load i32, ptr %7, align 4, !dbg !564
  %23 = icmp sgt i32 %22, 0, !dbg !566
  br i1 %23, label %24, label %53, !dbg !567

24:                                               ; preds = %19
  %25 = load i32, ptr %7, align 4, !dbg !568
  %26 = sext i32 %25 to i64, !dbg !569
  %27 = icmp ult i64 %26, 33, !dbg !570
  br i1 %27, label %28, label %53, !dbg !571

28:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %8, metadata !572, metadata !DIExpression()), !dbg !574
  %29 = load ptr, ptr %6, align 8, !dbg !575
  %30 = call ptr @stun_attr_get_value(ptr noundef %29), !dbg !576
  store ptr %30, ptr %8, align 8, !dbg !574
  %31 = load ptr, ptr %8, align 8, !dbg !577
  %32 = icmp ne ptr %31, null, !dbg !577
  br i1 %32, label %33, label %52, !dbg !579

33:                                               ; preds = %28
  %34 = load ptr, ptr %8, align 8, !dbg !580
  %35 = load ptr, ptr %3, align 8, !dbg !582
  %36 = getelementptr inbounds %struct.app_ur_conn_info, ptr %35, i32 0, i32 20, !dbg !583
  %37 = getelementptr inbounds [33 x i8], ptr %36, i64 0, i64 0, !dbg !582
  %38 = load i32, ptr %7, align 4, !dbg !584
  %39 = sext i32 %38 to i64, !dbg !585
  call void @bcopy(ptr noundef %34, ptr noundef %37, i64 noundef %39) #11, !dbg !586
  %40 = load ptr, ptr %3, align 8, !dbg !587
  %41 = getelementptr inbounds %struct.app_ur_conn_info, ptr %40, i32 0, i32 20, !dbg !588
  %42 = load i32, ptr %7, align 4, !dbg !589
  %43 = sext i32 %42 to i64, !dbg !587
  %44 = getelementptr inbounds [33 x i8], ptr %41, i64 0, i64 %43, !dbg !587
  store i8 0, ptr %44, align 1, !dbg !590
  %45 = load i32, ptr @clnet_verbose, align 4, !dbg !591
  %46 = icmp ne i32 %45, 0, !dbg !591
  br i1 %46, label %47, label %51, !dbg !593

47:                                               ; preds = %33
  %48 = load ptr, ptr %3, align 8, !dbg !594
  %49 = getelementptr inbounds %struct.app_ur_conn_info, ptr %48, i32 0, i32 20, !dbg !595
  %50 = getelementptr inbounds [33 x i8], ptr %49, i64 0, i64 0, !dbg !594
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.2, ptr noundef @__FUNCTION__.read_mobility_ticket, ptr noundef %50), !dbg !596
  br label %51, !dbg !596

51:                                               ; preds = %47, %33
  br label %52, !dbg !597

52:                                               ; preds = %51, %28
  br label %55, !dbg !598

53:                                               ; preds = %24, %19
  %54 = load i32, ptr %7, align 4, !dbg !599
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.3, ptr noundef @__FUNCTION__.read_mobility_ticket, i32 noundef %54), !dbg !601
  store i32 -1, ptr %5, align 4, !dbg !602
  br label %55

55:                                               ; preds = %53, %52
  br label %56, !dbg !603

56:                                               ; preds = %55, %14
  br label %57, !dbg !604

57:                                               ; preds = %56, %11, %2
  %58 = load i32, ptr %5, align 4, !dbg !605
  ret i32 %58, !dbg !606
}

declare ptr @stun_attr_get_first_by_type(ptr noundef, i16 noundef zeroext) #3

declare i32 @stun_attr_get_len(ptr noundef) #3

declare ptr @stun_attr_get_value(ptr noundef) #3

; Function Attrs: nounwind
declare void @bcopy(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_origin(ptr noundef %0) #0 !dbg !607 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !610, metadata !DIExpression()), !dbg !611
  %4 = load ptr, ptr %2, align 8, !dbg !612
  %5 = icmp ne ptr %4, null, !dbg !612
  br i1 %5, label %6, label %27, !dbg !614

6:                                                ; preds = %1
  %7 = load i8, ptr @origin, align 16, !dbg !615
  %8 = sext i8 %7 to i32, !dbg !615
  %9 = icmp ne i32 %8, 0, !dbg !615
  br i1 %9, label %10, label %27, !dbg !616

10:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata ptr %3, metadata !617, metadata !DIExpression()), !dbg !619
  store ptr @.str.4, ptr %3, align 8, !dbg !619
  %11 = load ptr, ptr %2, align 8, !dbg !620
  %12 = load ptr, ptr %3, align 8, !dbg !621
  %13 = load ptr, ptr %3, align 8, !dbg !622
  %14 = call i64 @strlen(ptr noundef %13) #13, !dbg !623
  %15 = trunc i64 %14 to i32, !dbg !623
  %16 = call i32 @stun_attr_add(ptr noundef %11, i16 noundef zeroext -32721, ptr noundef %12, i32 noundef %15), !dbg !624
  %17 = load ptr, ptr %2, align 8, !dbg !625
  %18 = call i64 @strlen(ptr noundef @origin) #13, !dbg !626
  %19 = trunc i64 %18 to i32, !dbg !626
  %20 = call i32 @stun_attr_add(ptr noundef %17, i16 noundef zeroext -32721, ptr noundef @origin, i32 noundef %19), !dbg !627
  store ptr @.str.5, ptr %3, align 8, !dbg !628
  %21 = load ptr, ptr %2, align 8, !dbg !629
  %22 = load ptr, ptr %3, align 8, !dbg !630
  %23 = load ptr, ptr %3, align 8, !dbg !631
  %24 = call i64 @strlen(ptr noundef %23) #13, !dbg !632
  %25 = trunc i64 %24 to i32, !dbg !632
  %26 = call i32 @stun_attr_add(ptr noundef %21, i16 noundef zeroext -32721, ptr noundef %22, i32 noundef %25), !dbg !633
  br label %27, !dbg !634

27:                                               ; preds = %10, %6, %1
  ret void, !dbg !635
}

declare i32 @stun_attr_add(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_connection(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #0 !dbg !636 {
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca %union.ioa_addr, align 4
  %23 = alloca %union.ioa_addr, align 4
  %24 = alloca %union.ioa_addr, align 4
  %25 = alloca i16, align 2
  %26 = alloca [1025 x i8], align 16
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca ptr, align 8
  %30 = alloca %union.ioa_addr, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i16, align 2
  %34 = alloca i32, align 4
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca [25 x %union.ioa_addr], align 16
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca ptr, align 8
  %41 = alloca i32, align 4
  %42 = alloca ptr, align 8
  %43 = alloca [25 x %union.ioa_addr], align 16
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca ptr, align 8
  store i16 %0, ptr %12, align 2
  call void @llvm.dbg.declare(metadata ptr %12, metadata !641, metadata !DIExpression()), !dbg !642
  store ptr %1, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !643, metadata !DIExpression()), !dbg !644
  store ptr %2, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !645, metadata !DIExpression()), !dbg !646
  store ptr %3, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !647, metadata !DIExpression()), !dbg !648
  store i32 %4, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !649, metadata !DIExpression()), !dbg !650
  store ptr %5, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !651, metadata !DIExpression()), !dbg !652
  store ptr %6, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !653, metadata !DIExpression()), !dbg !654
  store ptr %7, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !655, metadata !DIExpression()), !dbg !656
  store ptr %8, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !657, metadata !DIExpression()), !dbg !658
  store ptr %9, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !659, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.declare(metadata ptr %22, metadata !661, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.declare(metadata ptr %23, metadata !663, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.declare(metadata ptr %24, metadata !665, metadata !DIExpression()), !dbg !666
  call void @addr_cpy(ptr noundef %24, ptr noundef @peer_addr), !dbg !667
  %47 = call i32 @addr_get_port(ptr noundef %24), !dbg !668
  %48 = add nsw i32 %47, 1, !dbg !669
  call void @addr_set_port(ptr noundef %24, i32 noundef %48), !dbg !670
  %49 = load i16, ptr %12, align 2, !dbg !671
  %50 = load ptr, ptr %13, align 8, !dbg !673
  %51 = load ptr, ptr %14, align 8, !dbg !674
  %52 = load ptr, ptr %15, align 8, !dbg !675
  %53 = load i32, ptr %16, align 4, !dbg !676
  %54 = load ptr, ptr %17, align 8, !dbg !677
  %55 = call i32 @clnet_connect(i16 noundef zeroext %49, ptr noundef %50, ptr noundef %51, ptr noundef %52, i32 noundef %53, ptr noundef %54), !dbg !678
  %56 = icmp slt i32 %55, 0, !dbg !679
  br i1 %56, label %57, label %58, !dbg !680

57:                                               ; preds = %10
  call void @exit(i32 noundef -1) #12, !dbg !681
  unreachable, !dbg !681

58:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata ptr %25, metadata !683, metadata !DIExpression()), !dbg !684
  %59 = load i16, ptr %12, align 2, !dbg !685
  store i16 %59, ptr %25, align 2, !dbg !684
  call void @llvm.dbg.declare(metadata ptr %26, metadata !686, metadata !DIExpression()), !dbg !690
  br label %60, !dbg !691

60:                                               ; preds = %58
  %61 = getelementptr inbounds [1025 x i8], ptr %26, i64 0, i64 0, !dbg !692
  %62 = load ptr, ptr %13, align 8, !dbg !692
  %63 = icmp ne ptr %61, %62, !dbg !692
  br i1 %63, label %64, label %73, !dbg !695

64:                                               ; preds = %60
  call void @llvm.dbg.declare(metadata ptr %27, metadata !696, metadata !DIExpression()), !dbg !700
  store i64 1025, ptr %27, align 8, !dbg !700
  %65 = getelementptr inbounds [1025 x i8], ptr %26, i64 0, i64 0, !dbg !700
  %66 = load ptr, ptr %13, align 8, !dbg !700
  %67 = load i64, ptr %27, align 8, !dbg !700
  %68 = call ptr @strncpy(ptr noundef %65, ptr noundef %66, i64 noundef %67) #11, !dbg !700
  %69 = getelementptr inbounds [1025 x i8], ptr %26, i64 0, i64 0, !dbg !700
  %70 = load i64, ptr %27, align 8, !dbg !700
  %71 = sub i64 %70, 1, !dbg !700
  %72 = getelementptr inbounds i8, ptr %69, i64 %71, !dbg !700
  store i8 0, ptr %72, align 1, !dbg !700
  br label %73, !dbg !701

73:                                               ; preds = %64, %60
  br label %74, !dbg !695

74:                                               ; preds = %73
  %75 = load i32, ptr %16, align 4, !dbg !702
  %76 = load ptr, ptr %17, align 8, !dbg !703
  %77 = load i32, ptr @default_address_family, align 4, !dbg !704
  %78 = getelementptr inbounds [1025 x i8], ptr %26, i64 0, i64 0, !dbg !705
  %79 = call i32 @clnet_allocate(i32 noundef %75, ptr noundef %76, ptr noundef %22, i32 noundef %77, ptr noundef %78, ptr noundef %25), !dbg !706
  %80 = load ptr, ptr %19, align 8, !dbg !707
  store i16 0, ptr %80, align 2, !dbg !708
  %81 = load ptr, ptr %21, align 8, !dbg !709
  %82 = icmp ne ptr %81, null, !dbg !709
  br i1 %82, label %83, label %85, !dbg !711

83:                                               ; preds = %74
  %84 = load ptr, ptr %21, align 8, !dbg !712
  store i16 0, ptr %84, align 2, !dbg !713
  br label %85, !dbg !714

85:                                               ; preds = %83, %74
  %86 = load i16, ptr %25, align 2, !dbg !715
  %87 = getelementptr inbounds [1025 x i8], ptr %26, i64 0, i64 0, !dbg !717
  %88 = load ptr, ptr %14, align 8, !dbg !718
  %89 = load ptr, ptr %15, align 8, !dbg !719
  %90 = load i32, ptr %16, align 4, !dbg !720
  %91 = load ptr, ptr %18, align 8, !dbg !721
  %92 = call i32 @clnet_connect(i16 noundef zeroext %86, ptr noundef %87, ptr noundef %88, ptr noundef %89, i32 noundef %90, ptr noundef %91), !dbg !722
  %93 = icmp slt i32 %92, 0, !dbg !723
  br i1 %93, label %94, label %95, !dbg !724

94:                                               ; preds = %85
  call void @exit(i32 noundef -1) #12, !dbg !725
  unreachable, !dbg !725

95:                                               ; preds = %85
  %96 = load i32, ptr @no_rtcp, align 4, !dbg !727
  %97 = icmp ne i32 %96, 0, !dbg !727
  br i1 %97, label %109, label %98, !dbg !729

98:                                               ; preds = %95
  %99 = load i16, ptr %25, align 2, !dbg !730
  %100 = getelementptr inbounds [1025 x i8], ptr %26, i64 0, i64 0, !dbg !733
  %101 = load ptr, ptr %14, align 8, !dbg !734
  %102 = load ptr, ptr %15, align 8, !dbg !735
  %103 = load i32, ptr %16, align 4, !dbg !736
  %104 = load ptr, ptr %20, align 8, !dbg !737
  %105 = call i32 @clnet_connect(i16 noundef zeroext %99, ptr noundef %100, ptr noundef %101, ptr noundef %102, i32 noundef %103, ptr noundef %104), !dbg !738
  %106 = icmp slt i32 %105, 0, !dbg !739
  br i1 %106, label %107, label %108, !dbg !740

107:                                              ; preds = %98
  call void @exit(i32 noundef -1) #12, !dbg !741
  unreachable, !dbg !741

108:                                              ; preds = %98
  br label %109, !dbg !743

109:                                              ; preds = %108, %95
  call void @llvm.dbg.declare(metadata ptr %28, metadata !744, metadata !DIExpression()), !dbg !745
  %110 = load i32, ptr @default_address_family, align 4, !dbg !746
  %111 = icmp ne i32 %110, 0, !dbg !746
  br i1 %111, label %112, label %114, !dbg !746

112:                                              ; preds = %109
  %113 = load i32, ptr @default_address_family, align 4, !dbg !747
  br label %116, !dbg !746

114:                                              ; preds = %109
  %115 = call i32 @get_allocate_address_family(ptr noundef @peer_addr), !dbg !748
  br label %116, !dbg !746

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ], !dbg !746
  store i32 %117, ptr %28, align 4, !dbg !745
  %118 = load i32, ptr %16, align 4, !dbg !749
  %119 = load ptr, ptr %18, align 8, !dbg !751
  %120 = load i32, ptr %28, align 4, !dbg !752
  %121 = call i32 @clnet_allocate(i32 noundef %118, ptr noundef %119, ptr noundef %22, i32 noundef %120, ptr noundef null, ptr noundef null), !dbg !753
  %122 = icmp slt i32 %121, 0, !dbg !754
  br i1 %122, label %123, label %124, !dbg !755

123:                                              ; preds = %116
  call void @exit(i32 noundef -1) #12, !dbg !756
  unreachable, !dbg !756

124:                                              ; preds = %116
  %125 = call i32 @rare_event(), !dbg !758
  %126 = icmp ne i32 %125, 0, !dbg !758
  br i1 %126, label %127, label %128, !dbg !760

127:                                              ; preds = %124
  store i32 0, ptr %11, align 4, !dbg !761
  br label %493, !dbg !761

128:                                              ; preds = %124
  %129 = load i32, ptr @no_rtcp, align 4, !dbg !762
  %130 = icmp ne i32 %129, 0, !dbg !762
  br i1 %130, label %151, label %131, !dbg !764

131:                                              ; preds = %128
  %132 = load i32, ptr @default_address_family, align 4, !dbg !765
  %133 = icmp ne i32 %132, 0, !dbg !765
  br i1 %133, label %134, label %136, !dbg !765

134:                                              ; preds = %131
  %135 = load i32, ptr @default_address_family, align 4, !dbg !767
  br label %138, !dbg !765

136:                                              ; preds = %131
  %137 = call i32 @get_allocate_address_family(ptr noundef %24), !dbg !768
  br label %138, !dbg !765

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ], !dbg !765
  store i32 %139, ptr %28, align 4, !dbg !769
  %140 = load i32, ptr %16, align 4, !dbg !770
  %141 = load ptr, ptr %20, align 8, !dbg !772
  %142 = load i32, ptr %28, align 4, !dbg !773
  %143 = call i32 @clnet_allocate(i32 noundef %140, ptr noundef %141, ptr noundef %23, i32 noundef %142, ptr noundef null, ptr noundef null), !dbg !774
  %144 = icmp slt i32 %143, 0, !dbg !775
  br i1 %144, label %145, label %146, !dbg !776

145:                                              ; preds = %138
  call void @exit(i32 noundef -1) #12, !dbg !777
  unreachable, !dbg !777

146:                                              ; preds = %138
  %147 = call i32 @rare_event(), !dbg !779
  %148 = icmp ne i32 %147, 0, !dbg !779
  br i1 %148, label %149, label %150, !dbg !781

149:                                              ; preds = %146
  store i32 0, ptr %11, align 4, !dbg !782
  br label %493, !dbg !782

150:                                              ; preds = %146
  br label %151, !dbg !783

151:                                              ; preds = %150, %128
  %152 = load i32, ptr @dos, align 4, !dbg !784
  %153 = icmp ne i32 %152, 0, !dbg !784
  br i1 %153, label %484, label %154, !dbg !786

154:                                              ; preds = %151
  %155 = load i32, ptr @do_not_use_channel, align 4, !dbg !787
  %156 = icmp ne i32 %155, 0, !dbg !787
  br i1 %156, label %340, label %157, !dbg !790

157:                                              ; preds = %154
  %158 = load i32, ptr %16, align 4, !dbg !791
  %159 = load ptr, ptr %19, align 8, !dbg !794
  %160 = load ptr, ptr %18, align 8, !dbg !795
  %161 = call i32 @turn_channel_bind(i32 noundef %158, ptr noundef %159, ptr noundef %160, ptr noundef %24), !dbg !796
  %162 = icmp slt i32 %161, 0, !dbg !797
  br i1 %162, label %163, label %164, !dbg !798

163:                                              ; preds = %157
  call void @exit(i32 noundef -1) #12, !dbg !799
  unreachable, !dbg !799

164:                                              ; preds = %157
  %165 = call i32 @rare_event(), !dbg !801
  %166 = icmp ne i32 %165, 0, !dbg !801
  br i1 %166, label %167, label %168, !dbg !803

167:                                              ; preds = %164
  store i32 0, ptr %11, align 4, !dbg !804
  br label %493, !dbg !804

168:                                              ; preds = %164
  %169 = load i32, ptr %16, align 4, !dbg !805
  %170 = load ptr, ptr %19, align 8, !dbg !807
  %171 = load ptr, ptr %18, align 8, !dbg !808
  %172 = call i32 @turn_channel_bind(i32 noundef %169, ptr noundef %170, ptr noundef %171, ptr noundef %24), !dbg !809
  %173 = icmp slt i32 %172, 0, !dbg !810
  br i1 %173, label %174, label %175, !dbg !811

174:                                              ; preds = %168
  call void @exit(i32 noundef -1) #12, !dbg !812
  unreachable, !dbg !812

175:                                              ; preds = %168
  %176 = call i32 @rare_event(), !dbg !814
  %177 = icmp ne i32 %176, 0, !dbg !814
  br i1 %177, label %178, label %179, !dbg !816

178:                                              ; preds = %175
  store i32 0, ptr %11, align 4, !dbg !817
  br label %493, !dbg !817

179:                                              ; preds = %175
  %180 = load ptr, ptr %19, align 8, !dbg !818
  store i16 0, ptr %180, align 2, !dbg !819
  %181 = load i32, ptr %16, align 4, !dbg !820
  %182 = load ptr, ptr %19, align 8, !dbg !822
  %183 = load ptr, ptr %18, align 8, !dbg !823
  %184 = call i32 @turn_channel_bind(i32 noundef %181, ptr noundef %182, ptr noundef %183, ptr noundef @peer_addr), !dbg !824
  %185 = icmp slt i32 %184, 0, !dbg !825
  br i1 %185, label %186, label %187, !dbg !826

186:                                              ; preds = %179
  call void @exit(i32 noundef -1) #12, !dbg !827
  unreachable, !dbg !827

187:                                              ; preds = %179
  %188 = call i32 @rare_event(), !dbg !829
  %189 = icmp ne i32 %188, 0, !dbg !829
  br i1 %189, label %190, label %191, !dbg !831

190:                                              ; preds = %187
  store i32 0, ptr %11, align 4, !dbg !832
  br label %493, !dbg !832

191:                                              ; preds = %187
  %192 = load i32, ptr %16, align 4, !dbg !833
  %193 = load ptr, ptr %19, align 8, !dbg !835
  %194 = load ptr, ptr %18, align 8, !dbg !836
  %195 = call i32 @turn_channel_bind(i32 noundef %192, ptr noundef %193, ptr noundef %194, ptr noundef @peer_addr), !dbg !837
  %196 = icmp slt i32 %195, 0, !dbg !838
  br i1 %196, label %197, label %198, !dbg !839

197:                                              ; preds = %191
  call void @exit(i32 noundef -1) #12, !dbg !840
  unreachable, !dbg !840

198:                                              ; preds = %191
  %199 = call i32 @rare_event(), !dbg !842
  %200 = icmp ne i32 %199, 0, !dbg !842
  br i1 %200, label %201, label %202, !dbg !844

201:                                              ; preds = %198
  store i32 0, ptr %11, align 4, !dbg !845
  br label %493, !dbg !845

202:                                              ; preds = %198
  %203 = load i32, ptr @extra_requests, align 4, !dbg !846
  %204 = icmp ne i32 %203, 0, !dbg !846
  br i1 %204, label %205, label %258, !dbg !848

205:                                              ; preds = %202
  call void @llvm.dbg.declare(metadata ptr %29, metadata !849, metadata !DIExpression()), !dbg !851
  store ptr @.str.6, ptr %29, align 8, !dbg !851
  %206 = call i64 @random() #11, !dbg !852
  %207 = srem i64 %206, 2, !dbg !854
  %208 = icmp eq i64 %207, 0, !dbg !855
  br i1 %208, label %209, label %210, !dbg !856

209:                                              ; preds = %205
  store ptr @.str.7, ptr %29, align 8, !dbg !857
  br label %210, !dbg !858

210:                                              ; preds = %209, %205
  call void @llvm.dbg.declare(metadata ptr %30, metadata !859, metadata !DIExpression()), !dbg !860
  %211 = load ptr, ptr %29, align 8, !dbg !861
  %212 = call i32 @make_ioa_addr(ptr noundef %211, i32 noundef 333, ptr noundef %30), !dbg !862
  call void @llvm.dbg.declare(metadata ptr %31, metadata !863, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.declare(metadata ptr %32, metadata !865, metadata !DIExpression()), !dbg !866
  %213 = call i64 @random() #11, !dbg !867
  %214 = trunc i64 %213 to i16, !dbg !868
  %215 = zext i16 %214 to i32, !dbg !868
  %216 = srem i32 %215, 25, !dbg !869
  store i32 %216, ptr %32, align 4, !dbg !866
  store i32 0, ptr %31, align 4, !dbg !870
  br label %217, !dbg !872

217:                                              ; preds = %254, %210
  %218 = load i32, ptr %31, align 4, !dbg !873
  %219 = load i32, ptr %32, align 4, !dbg !875
  %220 = icmp slt i32 %218, %219, !dbg !876
  br i1 %220, label %221, label %257, !dbg !877

221:                                              ; preds = %217
  call void @llvm.dbg.declare(metadata ptr %33, metadata !878, metadata !DIExpression()), !dbg !880
  store i16 0, ptr %33, align 2, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %34, metadata !881, metadata !DIExpression()), !dbg !882
  %222 = call i64 @random() #11, !dbg !883
  %223 = trunc i64 %222 to i16, !dbg !884
  %224 = zext i16 %223 to i32, !dbg !884
  store i32 %224, ptr %34, align 4, !dbg !882
  %225 = load i32, ptr %34, align 4, !dbg !885
  %226 = icmp slt i32 %225, 1024, !dbg !887
  br i1 %226, label %227, label %230, !dbg !888

227:                                              ; preds = %221
  %228 = load i32, ptr %34, align 4, !dbg !889
  %229 = add nsw i32 %228, 1024, !dbg !889
  store i32 %229, ptr %34, align 4, !dbg !889
  br label %230, !dbg !890

230:                                              ; preds = %227, %221
  %231 = load i32, ptr %34, align 4, !dbg !891
  call void @addr_set_port(ptr noundef %30, i32 noundef %231), !dbg !892
  call void @llvm.dbg.declare(metadata ptr %35, metadata !893, metadata !DIExpression()), !dbg !894
  %232 = getelementptr inbounds %struct.sockaddr_in, ptr %30, i32 0, i32 2, !dbg !895
  store ptr %232, ptr %35, align 8, !dbg !894
  %233 = load ptr, ptr %35, align 8, !dbg !896
  %234 = call i64 @random() #11, !dbg !897
  %235 = trunc i64 %234 to i16, !dbg !898
  %236 = zext i16 %235 to i32, !dbg !898
  %237 = srem i32 %236, 4, !dbg !899
  %238 = sext i32 %237 to i64, !dbg !896
  %239 = getelementptr inbounds i8, ptr %233, i64 %238, !dbg !896
  %240 = load i8, ptr %239, align 1, !dbg !896
  %241 = zext i8 %240 to i32, !dbg !896
  %242 = add nsw i32 %241, 1, !dbg !900
  %243 = trunc i32 %242 to i8, !dbg !896
  %244 = load ptr, ptr %35, align 8, !dbg !901
  %245 = call i64 @random() #11, !dbg !902
  %246 = trunc i64 %245 to i16, !dbg !903
  %247 = zext i16 %246 to i32, !dbg !903
  %248 = srem i32 %247, 4, !dbg !904
  %249 = sext i32 %248 to i64, !dbg !901
  %250 = getelementptr inbounds i8, ptr %244, i64 %249, !dbg !901
  store i8 %243, ptr %250, align 1, !dbg !905
  %251 = load i32, ptr %16, align 4, !dbg !906
  %252 = load ptr, ptr %18, align 8, !dbg !907
  %253 = call i32 @turn_channel_bind(i32 noundef %251, ptr noundef %33, ptr noundef %252, ptr noundef %30), !dbg !908
  br label %254, !dbg !909

254:                                              ; preds = %230
  %255 = load i32, ptr %31, align 4, !dbg !910
  %256 = add nsw i32 %255, 1, !dbg !910
  store i32 %256, ptr %31, align 4, !dbg !910
  br label %217, !dbg !911, !llvm.loop !912

257:                                              ; preds = %217
  br label %258, !dbg !915

258:                                              ; preds = %257, %202
  %259 = load i32, ptr @no_rtcp, align 4, !dbg !916
  %260 = icmp ne i32 %259, 0, !dbg !916
  br i1 %260, label %269, label %261, !dbg !918

261:                                              ; preds = %258
  %262 = load i32, ptr %16, align 4, !dbg !919
  %263 = load ptr, ptr %21, align 8, !dbg !922
  %264 = load ptr, ptr %20, align 8, !dbg !923
  %265 = call i32 @turn_channel_bind(i32 noundef %262, ptr noundef %263, ptr noundef %264, ptr noundef %24), !dbg !924
  %266 = icmp slt i32 %265, 0, !dbg !925
  br i1 %266, label %267, label %268, !dbg !926

267:                                              ; preds = %261
  call void @exit(i32 noundef -1) #12, !dbg !927
  unreachable, !dbg !927

268:                                              ; preds = %261
  br label %269, !dbg !929

269:                                              ; preds = %268, %258
  %270 = call i32 @rare_event(), !dbg !930
  %271 = icmp ne i32 %270, 0, !dbg !930
  br i1 %271, label %272, label %273, !dbg !932

272:                                              ; preds = %269
  store i32 0, ptr %11, align 4, !dbg !933
  br label %493, !dbg !933

273:                                              ; preds = %269
  %274 = load i32, ptr @extra_requests, align 4, !dbg !934
  %275 = icmp ne i32 %274, 0, !dbg !934
  br i1 %275, label %276, label %339, !dbg !936

276:                                              ; preds = %273
  call void @llvm.dbg.declare(metadata ptr %36, metadata !937, metadata !DIExpression()), !dbg !939
  store ptr @.str.8, ptr %36, align 8, !dbg !939
  %277 = call i64 @random() #11, !dbg !940
  %278 = srem i64 %277, 2, !dbg !942
  %279 = icmp eq i64 %278, 0, !dbg !943
  br i1 %279, label %280, label %281, !dbg !944

280:                                              ; preds = %276
  store ptr @.str.7, ptr %36, align 8, !dbg !945
  br label %281, !dbg !946

281:                                              ; preds = %280, %276
  call void @llvm.dbg.declare(metadata ptr %37, metadata !947, metadata !DIExpression()), !dbg !949
  %282 = load ptr, ptr %36, align 8, !dbg !950
  %283 = getelementptr inbounds [25 x %union.ioa_addr], ptr %37, i64 0, i64 0, !dbg !951
  %284 = call i32 @make_ioa_addr(ptr noundef %282, i32 noundef 333, ptr noundef %283), !dbg !952
  call void @llvm.dbg.declare(metadata ptr %38, metadata !953, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.declare(metadata ptr %39, metadata !955, metadata !DIExpression()), !dbg !956
  %285 = call i64 @random() #11, !dbg !957
  %286 = trunc i64 %285 to i16, !dbg !958
  %287 = zext i16 %286 to i32, !dbg !958
  %288 = srem i32 %287, 25, !dbg !959
  store i32 %288, ptr %39, align 4, !dbg !956
  store i32 0, ptr %38, align 4, !dbg !960
  br label %289, !dbg !962

289:                                              ; preds = %330, %281
  %290 = load i32, ptr %38, align 4, !dbg !963
  %291 = load i32, ptr %39, align 4, !dbg !965
  %292 = icmp slt i32 %290, %291, !dbg !966
  br i1 %292, label %293, label %333, !dbg !967

293:                                              ; preds = %289
  %294 = load i32, ptr %38, align 4, !dbg !968
  %295 = icmp sgt i32 %294, 0, !dbg !971
  br i1 %295, label %296, label %301, !dbg !972

296:                                              ; preds = %293
  %297 = load i32, ptr %38, align 4, !dbg !973
  %298 = sext i32 %297 to i64, !dbg !974
  %299 = getelementptr inbounds [25 x %union.ioa_addr], ptr %37, i64 0, i64 %298, !dbg !974
  %300 = getelementptr inbounds [25 x %union.ioa_addr], ptr %37, i64 0, i64 0, !dbg !975
  call void @addr_cpy(ptr noundef %299, ptr noundef %300), !dbg !976
  br label %301, !dbg !976

301:                                              ; preds = %296, %293
  %302 = load i32, ptr %38, align 4, !dbg !977
  %303 = sext i32 %302 to i64, !dbg !978
  %304 = getelementptr inbounds [25 x %union.ioa_addr], ptr %37, i64 0, i64 %303, !dbg !978
  %305 = call i64 @random() #11, !dbg !979
  %306 = trunc i64 %305 to i16, !dbg !980
  %307 = zext i16 %306 to i32, !dbg !980
  call void @addr_set_port(ptr noundef %304, i32 noundef %307), !dbg !981
  call void @llvm.dbg.declare(metadata ptr %40, metadata !982, metadata !DIExpression()), !dbg !983
  %308 = load i32, ptr %38, align 4, !dbg !984
  %309 = sext i32 %308 to i64, !dbg !985
  %310 = getelementptr inbounds [25 x %union.ioa_addr], ptr %37, i64 0, i64 %309, !dbg !985
  %311 = getelementptr inbounds %struct.sockaddr_in, ptr %310, i32 0, i32 2, !dbg !986
  store ptr %311, ptr %40, align 8, !dbg !983
  %312 = load ptr, ptr %40, align 8, !dbg !987
  %313 = call i64 @random() #11, !dbg !988
  %314 = trunc i64 %313 to i16, !dbg !989
  %315 = zext i16 %314 to i32, !dbg !989
  %316 = srem i32 %315, 4, !dbg !990
  %317 = sext i32 %316 to i64, !dbg !987
  %318 = getelementptr inbounds i8, ptr %312, i64 %317, !dbg !987
  %319 = load i8, ptr %318, align 1, !dbg !987
  %320 = zext i8 %319 to i32, !dbg !987
  %321 = add nsw i32 %320, 1, !dbg !991
  %322 = trunc i32 %321 to i8, !dbg !987
  %323 = load ptr, ptr %40, align 8, !dbg !992
  %324 = call i64 @random() #11, !dbg !993
  %325 = trunc i64 %324 to i16, !dbg !994
  %326 = zext i16 %325 to i32, !dbg !994
  %327 = srem i32 %326, 4, !dbg !995
  %328 = sext i32 %327 to i64, !dbg !992
  %329 = getelementptr inbounds i8, ptr %323, i64 %328, !dbg !992
  store i8 %322, ptr %329, align 1, !dbg !996
  br label %330, !dbg !997

330:                                              ; preds = %301
  %331 = load i32, ptr %38, align 4, !dbg !998
  %332 = add nsw i32 %331, 1, !dbg !998
  store i32 %332, ptr %38, align 4, !dbg !998
  br label %289, !dbg !999, !llvm.loop !1000

333:                                              ; preds = %289
  %334 = load i32, ptr %16, align 4, !dbg !1002
  %335 = load ptr, ptr %18, align 8, !dbg !1003
  %336 = getelementptr inbounds [25 x %union.ioa_addr], ptr %37, i64 0, i64 0, !dbg !1004
  %337 = load i32, ptr %39, align 4, !dbg !1005
  %338 = call i32 @turn_create_permission(i32 noundef %334, ptr noundef %335, ptr noundef %336, i32 noundef %337), !dbg !1006
  br label %339, !dbg !1007

339:                                              ; preds = %333, %273
  br label %483, !dbg !1008

340:                                              ; preds = %154
  call void @llvm.dbg.declare(metadata ptr %41, metadata !1009, metadata !DIExpression()), !dbg !1011
  %341 = call i64 @random() #11, !dbg !1012
  %342 = srem i64 %341, 2, !dbg !1013
  %343 = icmp eq i64 %342, 0, !dbg !1014
  %344 = zext i1 %343 to i32, !dbg !1014
  store i32 %344, ptr %41, align 4, !dbg !1011
  %345 = load i32, ptr %41, align 4, !dbg !1015
  %346 = icmp ne i32 %345, 0, !dbg !1015
  br i1 %346, label %347, label %368, !dbg !1017

347:                                              ; preds = %340
  %348 = load i32, ptr %16, align 4, !dbg !1018
  %349 = load ptr, ptr %18, align 8, !dbg !1021
  %350 = call i32 @turn_create_permission(i32 noundef %348, ptr noundef %349, ptr noundef @peer_addr, i32 noundef 1), !dbg !1022
  %351 = icmp slt i32 %350, 0, !dbg !1023
  br i1 %351, label %352, label %353, !dbg !1024

352:                                              ; preds = %347
  call void @exit(i32 noundef -1) #12, !dbg !1025
  unreachable, !dbg !1025

353:                                              ; preds = %347
  %354 = call i32 @rare_event(), !dbg !1027
  %355 = icmp ne i32 %354, 0, !dbg !1027
  br i1 %355, label %356, label %357, !dbg !1029

356:                                              ; preds = %353
  store i32 0, ptr %11, align 4, !dbg !1030
  br label %493, !dbg !1030

357:                                              ; preds = %353
  %358 = load i32, ptr %16, align 4, !dbg !1031
  %359 = load ptr, ptr %18, align 8, !dbg !1033
  %360 = call i32 @turn_create_permission(i32 noundef %358, ptr noundef %359, ptr noundef %24, i32 noundef 1), !dbg !1034
  %361 = icmp slt i32 %360, 0, !dbg !1035
  br i1 %361, label %362, label %363, !dbg !1036

362:                                              ; preds = %357
  call void @exit(i32 noundef -1) #12, !dbg !1037
  unreachable, !dbg !1037

363:                                              ; preds = %357
  %364 = call i32 @rare_event(), !dbg !1039
  %365 = icmp ne i32 %364, 0, !dbg !1039
  br i1 %365, label %366, label %367, !dbg !1041

366:                                              ; preds = %363
  store i32 0, ptr %11, align 4, !dbg !1042
  br label %493, !dbg !1042

367:                                              ; preds = %363
  br label %368, !dbg !1043

368:                                              ; preds = %367, %340
  %369 = load i32, ptr @extra_requests, align 4, !dbg !1044
  %370 = icmp ne i32 %369, 0, !dbg !1044
  br i1 %370, label %371, label %434, !dbg !1046

371:                                              ; preds = %368
  call void @llvm.dbg.declare(metadata ptr %42, metadata !1047, metadata !DIExpression()), !dbg !1049
  store ptr @.str.8, ptr %42, align 8, !dbg !1049
  %372 = call i64 @random() #11, !dbg !1050
  %373 = srem i64 %372, 2, !dbg !1052
  %374 = icmp eq i64 %373, 0, !dbg !1053
  br i1 %374, label %375, label %376, !dbg !1054

375:                                              ; preds = %371
  store ptr @.str.7, ptr %42, align 8, !dbg !1055
  br label %376, !dbg !1056

376:                                              ; preds = %375, %371
  call void @llvm.dbg.declare(metadata ptr %43, metadata !1057, metadata !DIExpression()), !dbg !1058
  %377 = load ptr, ptr %42, align 8, !dbg !1059
  %378 = getelementptr inbounds [25 x %union.ioa_addr], ptr %43, i64 0, i64 0, !dbg !1060
  %379 = call i32 @make_ioa_addr(ptr noundef %377, i32 noundef 333, ptr noundef %378), !dbg !1061
  call void @llvm.dbg.declare(metadata ptr %44, metadata !1062, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.declare(metadata ptr %45, metadata !1064, metadata !DIExpression()), !dbg !1065
  %380 = call i64 @random() #11, !dbg !1066
  %381 = trunc i64 %380 to i16, !dbg !1067
  %382 = zext i16 %381 to i32, !dbg !1067
  %383 = srem i32 %382, 25, !dbg !1068
  store i32 %383, ptr %45, align 4, !dbg !1065
  store i32 0, ptr %44, align 4, !dbg !1069
  br label %384, !dbg !1071

384:                                              ; preds = %425, %376
  %385 = load i32, ptr %44, align 4, !dbg !1072
  %386 = load i32, ptr %45, align 4, !dbg !1074
  %387 = icmp slt i32 %385, %386, !dbg !1075
  br i1 %387, label %388, label %428, !dbg !1076

388:                                              ; preds = %384
  %389 = load i32, ptr %44, align 4, !dbg !1077
  %390 = icmp sgt i32 %389, 0, !dbg !1080
  br i1 %390, label %391, label %396, !dbg !1081

391:                                              ; preds = %388
  %392 = load i32, ptr %44, align 4, !dbg !1082
  %393 = sext i32 %392 to i64, !dbg !1083
  %394 = getelementptr inbounds [25 x %union.ioa_addr], ptr %43, i64 0, i64 %393, !dbg !1083
  %395 = getelementptr inbounds [25 x %union.ioa_addr], ptr %43, i64 0, i64 0, !dbg !1084
  call void @addr_cpy(ptr noundef %394, ptr noundef %395), !dbg !1085
  br label %396, !dbg !1085

396:                                              ; preds = %391, %388
  %397 = load i32, ptr %44, align 4, !dbg !1086
  %398 = sext i32 %397 to i64, !dbg !1087
  %399 = getelementptr inbounds [25 x %union.ioa_addr], ptr %43, i64 0, i64 %398, !dbg !1087
  %400 = call i64 @random() #11, !dbg !1088
  %401 = trunc i64 %400 to i16, !dbg !1089
  %402 = zext i16 %401 to i32, !dbg !1089
  call void @addr_set_port(ptr noundef %399, i32 noundef %402), !dbg !1090
  call void @llvm.dbg.declare(metadata ptr %46, metadata !1091, metadata !DIExpression()), !dbg !1092
  %403 = load i32, ptr %44, align 4, !dbg !1093
  %404 = sext i32 %403 to i64, !dbg !1094
  %405 = getelementptr inbounds [25 x %union.ioa_addr], ptr %43, i64 0, i64 %404, !dbg !1094
  %406 = getelementptr inbounds %struct.sockaddr_in, ptr %405, i32 0, i32 2, !dbg !1095
  store ptr %406, ptr %46, align 8, !dbg !1092
  %407 = load ptr, ptr %46, align 8, !dbg !1096
  %408 = call i64 @random() #11, !dbg !1097
  %409 = trunc i64 %408 to i16, !dbg !1098
  %410 = zext i16 %409 to i32, !dbg !1098
  %411 = srem i32 %410, 4, !dbg !1099
  %412 = sext i32 %411 to i64, !dbg !1096
  %413 = getelementptr inbounds i8, ptr %407, i64 %412, !dbg !1096
  %414 = load i8, ptr %413, align 1, !dbg !1096
  %415 = zext i8 %414 to i32, !dbg !1096
  %416 = add nsw i32 %415, 1, !dbg !1100
  %417 = trunc i32 %416 to i8, !dbg !1096
  %418 = load ptr, ptr %46, align 8, !dbg !1101
  %419 = call i64 @random() #11, !dbg !1102
  %420 = trunc i64 %419 to i16, !dbg !1103
  %421 = zext i16 %420 to i32, !dbg !1103
  %422 = srem i32 %421, 4, !dbg !1104
  %423 = sext i32 %422 to i64, !dbg !1101
  %424 = getelementptr inbounds i8, ptr %418, i64 %423, !dbg !1101
  store i8 %417, ptr %424, align 1, !dbg !1105
  br label %425, !dbg !1106

425:                                              ; preds = %396
  %426 = load i32, ptr %44, align 4, !dbg !1107
  %427 = add nsw i32 %426, 1, !dbg !1107
  store i32 %427, ptr %44, align 4, !dbg !1107
  br label %384, !dbg !1108, !llvm.loop !1109

428:                                              ; preds = %384
  %429 = load i32, ptr %16, align 4, !dbg !1111
  %430 = load ptr, ptr %18, align 8, !dbg !1112
  %431 = getelementptr inbounds [25 x %union.ioa_addr], ptr %43, i64 0, i64 0, !dbg !1113
  %432 = load i32, ptr %45, align 4, !dbg !1114
  %433 = call i32 @turn_create_permission(i32 noundef %429, ptr noundef %430, ptr noundef %431, i32 noundef %432), !dbg !1115
  br label %434, !dbg !1116

434:                                              ; preds = %428, %368
  %435 = load i32, ptr %41, align 4, !dbg !1117
  %436 = icmp ne i32 %435, 0, !dbg !1117
  br i1 %436, label %458, label %437, !dbg !1119

437:                                              ; preds = %434
  %438 = load i32, ptr %16, align 4, !dbg !1120
  %439 = load ptr, ptr %18, align 8, !dbg !1123
  %440 = call i32 @turn_create_permission(i32 noundef %438, ptr noundef %439, ptr noundef @peer_addr, i32 noundef 1), !dbg !1124
  %441 = icmp slt i32 %440, 0, !dbg !1125
  br i1 %441, label %442, label %443, !dbg !1126

442:                                              ; preds = %437
  call void @exit(i32 noundef -1) #12, !dbg !1127
  unreachable, !dbg !1127

443:                                              ; preds = %437
  %444 = call i32 @rare_event(), !dbg !1129
  %445 = icmp ne i32 %444, 0, !dbg !1129
  br i1 %445, label %446, label %447, !dbg !1131

446:                                              ; preds = %443
  store i32 0, ptr %11, align 4, !dbg !1132
  br label %493, !dbg !1132

447:                                              ; preds = %443
  %448 = load i32, ptr %16, align 4, !dbg !1133
  %449 = load ptr, ptr %18, align 8, !dbg !1135
  %450 = call i32 @turn_create_permission(i32 noundef %448, ptr noundef %449, ptr noundef %24, i32 noundef 1), !dbg !1136
  %451 = icmp slt i32 %450, 0, !dbg !1137
  br i1 %451, label %452, label %453, !dbg !1138

452:                                              ; preds = %447
  call void @exit(i32 noundef -1) #12, !dbg !1139
  unreachable, !dbg !1139

453:                                              ; preds = %447
  %454 = call i32 @rare_event(), !dbg !1141
  %455 = icmp ne i32 %454, 0, !dbg !1141
  br i1 %455, label %456, label %457, !dbg !1143

456:                                              ; preds = %453
  store i32 0, ptr %11, align 4, !dbg !1144
  br label %493, !dbg !1144

457:                                              ; preds = %453
  br label %458, !dbg !1145

458:                                              ; preds = %457, %434
  %459 = load i32, ptr @no_rtcp, align 4, !dbg !1146
  %460 = icmp ne i32 %459, 0, !dbg !1146
  br i1 %460, label %482, label %461, !dbg !1148

461:                                              ; preds = %458
  %462 = load i32, ptr %16, align 4, !dbg !1149
  %463 = load ptr, ptr %20, align 8, !dbg !1152
  %464 = call i32 @turn_create_permission(i32 noundef %462, ptr noundef %463, ptr noundef %24, i32 noundef 1), !dbg !1153
  %465 = icmp slt i32 %464, 0, !dbg !1154
  br i1 %465, label %466, label %467, !dbg !1155

466:                                              ; preds = %461
  call void @exit(i32 noundef -1) #12, !dbg !1156
  unreachable, !dbg !1156

467:                                              ; preds = %461
  %468 = call i32 @rare_event(), !dbg !1158
  %469 = icmp ne i32 %468, 0, !dbg !1158
  br i1 %469, label %470, label %471, !dbg !1160

470:                                              ; preds = %467
  store i32 0, ptr %11, align 4, !dbg !1161
  br label %493, !dbg !1161

471:                                              ; preds = %467
  %472 = load i32, ptr %16, align 4, !dbg !1162
  %473 = load ptr, ptr %20, align 8, !dbg !1164
  %474 = call i32 @turn_create_permission(i32 noundef %472, ptr noundef %473, ptr noundef @peer_addr, i32 noundef 1), !dbg !1165
  %475 = icmp slt i32 %474, 0, !dbg !1166
  br i1 %475, label %476, label %477, !dbg !1167

476:                                              ; preds = %471
  call void @exit(i32 noundef -1) #12, !dbg !1168
  unreachable, !dbg !1168

477:                                              ; preds = %471
  %478 = call i32 @rare_event(), !dbg !1170
  %479 = icmp ne i32 %478, 0, !dbg !1170
  br i1 %479, label %480, label %481, !dbg !1172

480:                                              ; preds = %477
  store i32 0, ptr %11, align 4, !dbg !1173
  br label %493, !dbg !1173

481:                                              ; preds = %477
  br label %482, !dbg !1174

482:                                              ; preds = %481, %458
  br label %483

483:                                              ; preds = %482, %339
  br label %484, !dbg !1175

484:                                              ; preds = %483, %151
  %485 = load ptr, ptr %18, align 8, !dbg !1176
  %486 = getelementptr inbounds %struct.app_ur_conn_info, ptr %485, i32 0, i32 5, !dbg !1177
  call void @addr_cpy(ptr noundef %486, ptr noundef @peer_addr), !dbg !1178
  %487 = load i32, ptr @no_rtcp, align 4, !dbg !1179
  %488 = icmp ne i32 %487, 0, !dbg !1179
  br i1 %488, label %492, label %489, !dbg !1181

489:                                              ; preds = %484
  %490 = load ptr, ptr %20, align 8, !dbg !1182
  %491 = getelementptr inbounds %struct.app_ur_conn_info, ptr %490, i32 0, i32 5, !dbg !1183
  call void @addr_cpy(ptr noundef %491, ptr noundef %24), !dbg !1184
  br label %492, !dbg !1184

492:                                              ; preds = %489, %484
  store i32 0, ptr %11, align 4, !dbg !1185
  br label %493, !dbg !1185

493:                                              ; preds = %492, %480, %470, %456, %446, %366, %356, %272, %201, %190, %178, %167, %149, %127
  %494 = load i32, ptr %11, align 4, !dbg !1186
  ret i32 %494, !dbg !1186
}

declare void @addr_cpy(ptr noundef, ptr noundef) #3

declare void @addr_set_port(ptr noundef, i32 noundef) #3

declare i32 @addr_get_port(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clnet_connect(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 !dbg !1187 {
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca %union.ioa_addr, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %union.ioa_addr, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i16 %0, ptr %8, align 2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1190, metadata !DIExpression()), !dbg !1191
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1192, metadata !DIExpression()), !dbg !1193
  store ptr %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1194, metadata !DIExpression()), !dbg !1195
  store ptr %3, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1196, metadata !DIExpression()), !dbg !1197
  store i32 %4, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1198, metadata !DIExpression()), !dbg !1199
  store ptr %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1200, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1202, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1204, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1206, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1208, metadata !DIExpression()), !dbg !1209
  store i32 0, ptr %17, align 4, !dbg !1209
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1210, metadata !DIExpression()), !dbg !1211
  br label %23, !dbg !1212

23:                                               ; preds = %229, %130, %6
  call void @llvm.dbg.label(metadata !1213), !dbg !1214
  store i32 -1, ptr %15, align 4, !dbg !1215
  store i32 0, ptr %16, align 4, !dbg !1216
  call void @llvm.memset.p0.i64(ptr align 4 %18, i8 0, i64 28, i1 false), !dbg !1217
  %24 = load ptr, ptr %9, align 8, !dbg !1218
  %25 = load i16, ptr %8, align 2, !dbg !1220
  %26 = zext i16 %25 to i32, !dbg !1220
  %27 = call i32 @make_ioa_addr(ptr noundef %24, i32 noundef %26, ptr noundef %18), !dbg !1221
  %28 = icmp slt i32 %27, 0, !dbg !1222
  br i1 %28, label %29, label %30, !dbg !1223

29:                                               ; preds = %23
  store i32 -1, ptr %7, align 4, !dbg !1224
  br label %249, !dbg !1224

30:                                               ; preds = %23
  call void @llvm.memset.p0.i64(ptr align 4 %14, i8 0, i64 28, i1 false), !dbg !1225
  %31 = getelementptr inbounds %struct.sockaddr, ptr %18, i32 0, i32 0, !dbg !1226
  %32 = load i16, ptr %31, align 4, !dbg !1226
  %33 = zext i16 %32 to i32, !dbg !1227
  %34 = load i32, ptr @use_sctp, align 4, !dbg !1228
  %35 = icmp ne i32 %34, 0, !dbg !1228
  br i1 %35, label %36, label %37, !dbg !1228

36:                                               ; preds = %30
  br label %42, !dbg !1228

37:                                               ; preds = %30
  %38 = load i32, ptr @use_tcp, align 4, !dbg !1229
  %39 = icmp ne i32 %38, 0, !dbg !1229
  %40 = zext i1 %39 to i64, !dbg !1229
  %41 = select i1 %39, i32 1, i32 2, !dbg !1229
  br label %42, !dbg !1228

42:                                               ; preds = %37, %36
  %43 = phi i32 [ 1, %36 ], [ %41, %37 ], !dbg !1228
  %44 = load i32, ptr @use_sctp, align 4, !dbg !1230
  %45 = icmp ne i32 %44, 0, !dbg !1230
  br i1 %45, label %46, label %47, !dbg !1230

46:                                               ; preds = %42
  br label %52, !dbg !1230

47:                                               ; preds = %42
  %48 = load i32, ptr @use_tcp, align 4, !dbg !1231
  %49 = icmp ne i32 %48, 0, !dbg !1231
  %50 = zext i1 %49 to i64, !dbg !1231
  %51 = select i1 %49, i32 0, i32 0, !dbg !1231
  br label %52, !dbg !1230

52:                                               ; preds = %47, %46
  %53 = phi i32 [ 132, %46 ], [ %51, %47 ], !dbg !1230
  %54 = call i32 @socket(i32 noundef %33, i32 noundef %43, i32 noundef %53) #11, !dbg !1232
  store i32 %54, ptr %15, align 4, !dbg !1233
  %55 = load i32, ptr %15, align 4, !dbg !1234
  %56 = icmp slt i32 %55, 0, !dbg !1236
  br i1 %56, label %57, label %58, !dbg !1237

57:                                               ; preds = %52
  call void @perror(ptr noundef @.str.11), !dbg !1238
  call void @exit(i32 noundef -1) #12, !dbg !1240
  unreachable, !dbg !1240

58:                                               ; preds = %52
  %59 = load i32, ptr %15, align 4, !dbg !1241
  %60 = load ptr, ptr %10, align 8, !dbg !1243
  %61 = call i32 @sock_bind_to_device(i32 noundef %59, ptr noundef %60), !dbg !1244
  %62 = icmp slt i32 %61, 0, !dbg !1245
  br i1 %62, label %63, label %65, !dbg !1246

63:                                               ; preds = %58
  %64 = load ptr, ptr %10, align 8, !dbg !1247
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.12, ptr noundef %64), !dbg !1249
  br label %65, !dbg !1250

65:                                               ; preds = %63, %58
  %66 = load i32, ptr %15, align 4, !dbg !1251
  %67 = call i32 @set_sock_buf_size(i32 noundef %66, i32 noundef 65536), !dbg !1252
  %68 = load i32, ptr %15, align 4, !dbg !1253
  %69 = getelementptr inbounds %struct.sockaddr, ptr %18, i32 0, i32 0, !dbg !1254
  %70 = load i16, ptr %69, align 4, !dbg !1254
  %71 = zext i16 %70 to i32, !dbg !1255
  %72 = call i32 @set_raw_socket_tos(i32 noundef %68, i32 noundef %71, i32 noundef 34), !dbg !1256
  %73 = load i32, ptr %15, align 4, !dbg !1257
  %74 = getelementptr inbounds %struct.sockaddr, ptr %18, i32 0, i32 0, !dbg !1258
  %75 = load i16, ptr %74, align 4, !dbg !1258
  %76 = zext i16 %75 to i32, !dbg !1259
  %77 = call i32 @set_raw_socket_ttl(i32 noundef %73, i32 noundef %76, i32 noundef 47), !dbg !1260
  %78 = load ptr, ptr %13, align 8, !dbg !1261
  %79 = getelementptr inbounds %struct.app_ur_conn_info, ptr %78, i32 0, i32 19, !dbg !1263
  %80 = load i32, ptr %79, align 8, !dbg !1263
  %81 = icmp ne i32 %80, 0, !dbg !1261
  br i1 %81, label %82, label %106, !dbg !1264

82:                                               ; preds = %65
  %83 = load ptr, ptr %11, align 8, !dbg !1265
  %84 = load i8, ptr %83, align 1, !dbg !1266
  %85 = sext i8 %84 to i32, !dbg !1266
  %86 = icmp eq i32 %85, 0, !dbg !1267
  br i1 %86, label %87, label %106, !dbg !1268

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.sockaddr, ptr %18, i32 0, i32 0, !dbg !1269
  %89 = load i16, ptr %88, align 4, !dbg !1269
  %90 = zext i16 %89 to i32, !dbg !1272
  %91 = icmp eq i32 %90, 10, !dbg !1273
  br i1 %91, label %92, label %97, !dbg !1274

92:                                               ; preds = %87
  %93 = call i32 @make_ioa_addr(ptr noundef @.str.17, i32 noundef 0, ptr noundef %14), !dbg !1275
  %94 = icmp slt i32 %93, 0, !dbg !1278
  br i1 %94, label %95, label %96, !dbg !1279

95:                                               ; preds = %92
  store i32 -1, ptr %7, align 4, !dbg !1280
  br label %249, !dbg !1280

96:                                               ; preds = %92
  br label %102, !dbg !1282

97:                                               ; preds = %87
  %98 = call i32 @make_ioa_addr(ptr noundef @.str.18, i32 noundef 0, ptr noundef %14), !dbg !1283
  %99 = icmp slt i32 %98, 0, !dbg !1286
  br i1 %99, label %100, label %101, !dbg !1287

100:                                              ; preds = %97
  store i32 -1, ptr %7, align 4, !dbg !1288
  br label %249, !dbg !1288

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101, %96
  %103 = load i32, ptr %15, align 4, !dbg !1290
  %104 = call i32 @get_socket_type(), !dbg !1291
  %105 = call i32 @addr_bind(i32 noundef %103, ptr noundef %14, i32 noundef 0, i32 noundef 1, i32 noundef %104), !dbg !1292
  br label %120, !dbg !1293

106:                                              ; preds = %82, %65
  %107 = load ptr, ptr %11, align 8, !dbg !1294
  %108 = call i64 @strlen(ptr noundef %107) #13, !dbg !1296
  %109 = icmp ugt i64 %108, 0, !dbg !1297
  br i1 %109, label %110, label %119, !dbg !1298

110:                                              ; preds = %106
  %111 = load ptr, ptr %11, align 8, !dbg !1299
  %112 = call i32 @make_ioa_addr(ptr noundef %111, i32 noundef 0, ptr noundef %14), !dbg !1302
  %113 = icmp slt i32 %112, 0, !dbg !1303
  br i1 %113, label %114, label %115, !dbg !1304

114:                                              ; preds = %110
  store i32 -1, ptr %7, align 4, !dbg !1305
  br label %249, !dbg !1305

115:                                              ; preds = %110
  %116 = load i32, ptr %15, align 4, !dbg !1306
  %117 = call i32 @get_socket_type(), !dbg !1307
  %118 = call i32 @addr_bind(i32 noundef %116, ptr noundef %14, i32 noundef 0, i32 noundef 1, i32 noundef %117), !dbg !1308
  br label %119, !dbg !1309

119:                                              ; preds = %115, %106
  br label %120

120:                                              ; preds = %119, %102
  %121 = load ptr, ptr %13, align 8, !dbg !1310
  %122 = getelementptr inbounds %struct.app_ur_conn_info, ptr %121, i32 0, i32 19, !dbg !1312
  %123 = load i32, ptr %122, align 8, !dbg !1312
  %124 = icmp ne i32 %123, 0, !dbg !1310
  br i1 %124, label %125, label %126, !dbg !1313

125:                                              ; preds = %120
  br label %132, !dbg !1314

126:                                              ; preds = %120
  %127 = load i32, ptr %15, align 4, !dbg !1316
  %128 = call i32 @socket_connect(i32 noundef %127, ptr noundef %18, ptr noundef %16), !dbg !1318
  %129 = icmp sgt i32 %128, 0, !dbg !1319
  br i1 %129, label %130, label %131, !dbg !1320

130:                                              ; preds = %126
  br label %23, !dbg !1321

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131, %125
  %133 = load ptr, ptr %13, align 8, !dbg !1322
  %134 = icmp ne ptr %133, null, !dbg !1322
  br i1 %134, label %135, label %210, !dbg !1324

135:                                              ; preds = %132
  %136 = load ptr, ptr %13, align 8, !dbg !1325
  %137 = getelementptr inbounds %struct.app_ur_conn_info, ptr %136, i32 0, i32 2, !dbg !1327
  call void @addr_cpy(ptr noundef %137, ptr noundef %18), !dbg !1328
  %138 = load ptr, ptr %13, align 8, !dbg !1329
  %139 = getelementptr inbounds %struct.app_ur_conn_info, ptr %138, i32 0, i32 0, !dbg !1330
  call void @addr_cpy(ptr noundef %139, ptr noundef %14), !dbg !1331
  %140 = load i32, ptr %15, align 4, !dbg !1332
  %141 = load ptr, ptr %13, align 8, !dbg !1333
  %142 = getelementptr inbounds %struct.app_ur_conn_info, ptr %141, i32 0, i32 7, !dbg !1334
  store i32 %140, ptr %142, align 8, !dbg !1335
  %143 = load i32, ptr %15, align 4, !dbg !1336
  %144 = load ptr, ptr %13, align 8, !dbg !1337
  %145 = getelementptr inbounds %struct.app_ur_conn_info, ptr %144, i32 0, i32 0, !dbg !1338
  %146 = call i32 @addr_get_from_sock(i32 noundef %143, ptr noundef %145), !dbg !1339
  br label %147, !dbg !1340

147:                                              ; preds = %135
  %148 = load ptr, ptr %13, align 8, !dbg !1341
  %149 = getelementptr inbounds %struct.app_ur_conn_info, ptr %148, i32 0, i32 1, !dbg !1341
  %150 = getelementptr inbounds [129 x i8], ptr %149, i64 0, i64 0, !dbg !1341
  %151 = load ptr, ptr %11, align 8, !dbg !1341
  %152 = icmp ne ptr %150, %151, !dbg !1341
  br i1 %152, label %153, label %166, !dbg !1344

153:                                              ; preds = %147
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1345, metadata !DIExpression()), !dbg !1349
  store i64 129, ptr %19, align 8, !dbg !1349
  %154 = load ptr, ptr %13, align 8, !dbg !1349
  %155 = getelementptr inbounds %struct.app_ur_conn_info, ptr %154, i32 0, i32 1, !dbg !1349
  %156 = getelementptr inbounds [129 x i8], ptr %155, i64 0, i64 0, !dbg !1349
  %157 = load ptr, ptr %11, align 8, !dbg !1349
  %158 = load i64, ptr %19, align 8, !dbg !1349
  %159 = call ptr @strncpy(ptr noundef %156, ptr noundef %157, i64 noundef %158) #11, !dbg !1349
  %160 = load ptr, ptr %13, align 8, !dbg !1349
  %161 = getelementptr inbounds %struct.app_ur_conn_info, ptr %160, i32 0, i32 1, !dbg !1349
  %162 = getelementptr inbounds [129 x i8], ptr %161, i64 0, i64 0, !dbg !1349
  %163 = load i64, ptr %19, align 8, !dbg !1349
  %164 = sub i64 %163, 1, !dbg !1349
  %165 = getelementptr inbounds i8, ptr %162, i64 %164, !dbg !1349
  store i8 0, ptr %165, align 1, !dbg !1349
  br label %166, !dbg !1350

166:                                              ; preds = %153, %147
  br label %167, !dbg !1344

167:                                              ; preds = %166
  br label %168, !dbg !1351

168:                                              ; preds = %167
  %169 = load ptr, ptr %13, align 8, !dbg !1352
  %170 = getelementptr inbounds %struct.app_ur_conn_info, ptr %169, i32 0, i32 3, !dbg !1352
  %171 = getelementptr inbounds [129 x i8], ptr %170, i64 0, i64 0, !dbg !1352
  %172 = load ptr, ptr %9, align 8, !dbg !1352
  %173 = icmp ne ptr %171, %172, !dbg !1352
  br i1 %173, label %174, label %187, !dbg !1355

174:                                              ; preds = %168
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1356, metadata !DIExpression()), !dbg !1360
  store i64 129, ptr %20, align 8, !dbg !1360
  %175 = load ptr, ptr %13, align 8, !dbg !1360
  %176 = getelementptr inbounds %struct.app_ur_conn_info, ptr %175, i32 0, i32 3, !dbg !1360
  %177 = getelementptr inbounds [129 x i8], ptr %176, i64 0, i64 0, !dbg !1360
  %178 = load ptr, ptr %9, align 8, !dbg !1360
  %179 = load i64, ptr %20, align 8, !dbg !1360
  %180 = call ptr @strncpy(ptr noundef %177, ptr noundef %178, i64 noundef %179) #11, !dbg !1360
  %181 = load ptr, ptr %13, align 8, !dbg !1360
  %182 = getelementptr inbounds %struct.app_ur_conn_info, ptr %181, i32 0, i32 3, !dbg !1360
  %183 = getelementptr inbounds [129 x i8], ptr %182, i64 0, i64 0, !dbg !1360
  %184 = load i64, ptr %20, align 8, !dbg !1360
  %185 = sub i64 %184, 1, !dbg !1360
  %186 = getelementptr inbounds i8, ptr %183, i64 %185, !dbg !1360
  store i8 0, ptr %186, align 1, !dbg !1360
  br label %187, !dbg !1361

187:                                              ; preds = %174, %168
  br label %188, !dbg !1355

188:                                              ; preds = %187
  br label %189, !dbg !1362

189:                                              ; preds = %188
  %190 = load ptr, ptr %13, align 8, !dbg !1363
  %191 = getelementptr inbounds %struct.app_ur_conn_info, ptr %190, i32 0, i32 4, !dbg !1363
  %192 = getelementptr inbounds [129 x i8], ptr %191, i64 0, i64 0, !dbg !1363
  %193 = load ptr, ptr %10, align 8, !dbg !1363
  %194 = icmp ne ptr %192, %193, !dbg !1363
  br i1 %194, label %195, label %208, !dbg !1366

195:                                              ; preds = %189
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1367, metadata !DIExpression()), !dbg !1371
  store i64 129, ptr %21, align 8, !dbg !1371
  %196 = load ptr, ptr %13, align 8, !dbg !1371
  %197 = getelementptr inbounds %struct.app_ur_conn_info, ptr %196, i32 0, i32 4, !dbg !1371
  %198 = getelementptr inbounds [129 x i8], ptr %197, i64 0, i64 0, !dbg !1371
  %199 = load ptr, ptr %10, align 8, !dbg !1371
  %200 = load i64, ptr %21, align 8, !dbg !1371
  %201 = call ptr @strncpy(ptr noundef %198, ptr noundef %199, i64 noundef %200) #11, !dbg !1371
  %202 = load ptr, ptr %13, align 8, !dbg !1371
  %203 = getelementptr inbounds %struct.app_ur_conn_info, ptr %202, i32 0, i32 4, !dbg !1371
  %204 = getelementptr inbounds [129 x i8], ptr %203, i64 0, i64 0, !dbg !1371
  %205 = load i64, ptr %21, align 8, !dbg !1371
  %206 = sub i64 %205, 1, !dbg !1371
  %207 = getelementptr inbounds i8, ptr %204, i64 %206, !dbg !1371
  store i8 0, ptr %207, align 1, !dbg !1371
  br label %208, !dbg !1372

208:                                              ; preds = %195, %189
  br label %209, !dbg !1366

209:                                              ; preds = %208
  br label %210, !dbg !1373

210:                                              ; preds = %209, %132
  %211 = load i32, ptr @use_secure, align 4, !dbg !1374
  %212 = icmp ne i32 %211, 0, !dbg !1374
  br i1 %212, label %213, label %232, !dbg !1376

213:                                              ; preds = %210
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1377, metadata !DIExpression()), !dbg !1379
  store i32 0, ptr %22, align 4, !dbg !1379
  %214 = load ptr, ptr %13, align 8, !dbg !1380
  %215 = getelementptr inbounds %struct.app_ur_conn_info, ptr %214, i32 0, i32 7, !dbg !1381
  %216 = load i32, ptr %215, align 8, !dbg !1381
  %217 = load i32, ptr %17, align 4, !dbg !1382
  %218 = add nsw i32 %217, 1, !dbg !1382
  store i32 %218, ptr %17, align 4, !dbg !1382
  %219 = call ptr @tls_connect(i32 noundef %216, ptr noundef %18, ptr noundef %22, i32 noundef %217), !dbg !1383
  %220 = load ptr, ptr %13, align 8, !dbg !1384
  %221 = getelementptr inbounds %struct.app_ur_conn_info, ptr %220, i32 0, i32 8, !dbg !1385
  store ptr %219, ptr %221, align 8, !dbg !1386
  %222 = load ptr, ptr %13, align 8, !dbg !1387
  %223 = getelementptr inbounds %struct.app_ur_conn_info, ptr %222, i32 0, i32 8, !dbg !1389
  %224 = load ptr, ptr %223, align 8, !dbg !1389
  %225 = icmp ne ptr %224, null, !dbg !1387
  br i1 %225, label %231, label %226, !dbg !1390

226:                                              ; preds = %213
  %227 = load i32, ptr %22, align 4, !dbg !1391
  %228 = icmp ne i32 %227, 0, !dbg !1391
  br i1 %228, label %229, label %230, !dbg !1394

229:                                              ; preds = %226
  br label %23, !dbg !1395

230:                                              ; preds = %226
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.14, ptr noundef @__FUNCTION__.clnet_connect), !dbg !1397
  call void @exit(i32 noundef -1) #12, !dbg !1398
  unreachable, !dbg !1398

231:                                              ; preds = %213
  br label %232, !dbg !1399

232:                                              ; preds = %231, %210
  %233 = load i32, ptr %12, align 4, !dbg !1400
  %234 = icmp ne i32 %233, 0, !dbg !1400
  br i1 %234, label %235, label %243, !dbg !1402

235:                                              ; preds = %232
  %236 = load ptr, ptr %13, align 8, !dbg !1403
  %237 = icmp ne ptr %236, null, !dbg !1403
  br i1 %237, label %238, label %243, !dbg !1404

238:                                              ; preds = %235
  %239 = load i32, ptr %12, align 4, !dbg !1405
  %240 = load ptr, ptr %13, align 8, !dbg !1407
  %241 = getelementptr inbounds %struct.app_ur_conn_info, ptr %240, i32 0, i32 0, !dbg !1408
  call void @addr_debug_print(i32 noundef %239, ptr noundef %241, ptr noundef @.str.19), !dbg !1409
  %242 = load i32, ptr %12, align 4, !dbg !1410
  call void @addr_debug_print(i32 noundef %242, ptr noundef %18, ptr noundef @.str.20), !dbg !1411
  br label %243, !dbg !1412

243:                                              ; preds = %238, %235, %232
  %244 = load i32, ptr @dos, align 4, !dbg !1413
  %245 = icmp ne i32 %244, 0, !dbg !1413
  br i1 %245, label %248, label %246, !dbg !1415

246:                                              ; preds = %243
  %247 = call i32 @usleep(i32 noundef 500), !dbg !1416
  br label %248, !dbg !1416

248:                                              ; preds = %246, %243
  store i32 0, ptr %7, align 4, !dbg !1417
  br label %249, !dbg !1417

249:                                              ; preds = %248, %114, %100, %95, %29
  %250 = load i32, ptr %7, align 4, !dbg !1418
  ret i32 %250, !dbg !1418
}

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clnet_allocate(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 !dbg !1419 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct._stun_buffer, align 8
  %18 = alloca %struct._stun_buffer, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [129 x i8], align 16
  %30 = alloca i32, align 4
  %31 = alloca ptr, align 8
  %32 = alloca i32, align 4
  %33 = alloca %union.ioa_addr, align 4
  %34 = alloca ptr, align 8
  %35 = alloca i64, align 8
  %36 = alloca %union.ioa_addr, align 4
  %37 = alloca i32, align 4
  %38 = alloca ptr, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %struct.app_ur_conn_info, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca [4 x i8], align 1
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca [129 x i8], align 16
  store i32 %0, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1422, metadata !DIExpression()), !dbg !1423
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1424, metadata !DIExpression()), !dbg !1425
  store ptr %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1426, metadata !DIExpression()), !dbg !1427
  store i32 %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1428, metadata !DIExpression()), !dbg !1429
  store ptr %4, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1430, metadata !DIExpression()), !dbg !1431
  store ptr %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1432, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1434, metadata !DIExpression()), !dbg !1435
  store i32 0, ptr %14, align 4, !dbg !1435
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1436, metadata !DIExpression()), !dbg !1437
  store i32 0, ptr %15, align 4, !dbg !1437
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1438, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1440, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1442, metadata !DIExpression()), !dbg !1443
  br label %51, !dbg !1444

51:                                               ; preds = %343, %6
  call void @llvm.dbg.label(metadata !1445), !dbg !1446
  store i32 0, ptr %16, align 4, !dbg !1447
  br label %52, !dbg !1448

52:                                               ; preds = %397, %51
  %53 = load i32, ptr %16, align 4, !dbg !1449
  %54 = icmp ne i32 %53, 0, !dbg !1449
  br i1 %54, label %59, label %55, !dbg !1450

55:                                               ; preds = %52
  %56 = load i32, ptr %14, align 4, !dbg !1451
  %57 = add nsw i32 %56, 1, !dbg !1451
  store i32 %57, ptr %14, align 4, !dbg !1451
  %58 = icmp slt i32 %56, 32, !dbg !1452
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i1 [ false, %52 ], [ %58, %55 ], !dbg !1453
  br i1 %60, label %61, label %398, !dbg !1448

61:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1454, metadata !DIExpression()), !dbg !1456
  store i32 0, ptr %19, align 4, !dbg !1456
  %62 = load i32, ptr %15, align 4, !dbg !1457
  %63 = icmp ne i32 %62, 0, !dbg !1457
  br i1 %63, label %64, label %93, !dbg !1459

64:                                               ; preds = %61
  %65 = load i32, ptr @use_tcp, align 4, !dbg !1460
  %66 = icmp ne i32 %65, 0, !dbg !1460
  br i1 %66, label %93, label %67, !dbg !1461

67:                                               ; preds = %64
  %68 = load ptr, ptr %9, align 8, !dbg !1462
  %69 = getelementptr inbounds %struct.app_ur_conn_info, ptr %68, i32 0, i32 7, !dbg !1462
  %70 = load i32, ptr %69, align 8, !dbg !1462
  %71 = call i32 @close(i32 noundef %70), !dbg !1462
  %72 = load ptr, ptr %9, align 8, !dbg !1464
  %73 = getelementptr inbounds %struct.app_ur_conn_info, ptr %72, i32 0, i32 7, !dbg !1465
  store i32 -1, ptr %73, align 8, !dbg !1466
  %74 = load ptr, ptr %9, align 8, !dbg !1467
  %75 = getelementptr inbounds %struct.app_ur_conn_info, ptr %74, i32 0, i32 2, !dbg !1469
  %76 = call i32 @addr_get_port(ptr noundef %75), !dbg !1470
  %77 = trunc i32 %76 to i16, !dbg !1470
  %78 = load ptr, ptr %9, align 8, !dbg !1471
  %79 = getelementptr inbounds %struct.app_ur_conn_info, ptr %78, i32 0, i32 3, !dbg !1472
  %80 = getelementptr inbounds [129 x i8], ptr %79, i64 0, i64 0, !dbg !1471
  %81 = load ptr, ptr %9, align 8, !dbg !1473
  %82 = getelementptr inbounds %struct.app_ur_conn_info, ptr %81, i32 0, i32 4, !dbg !1474
  %83 = getelementptr inbounds [129 x i8], ptr %82, i64 0, i64 0, !dbg !1473
  %84 = load ptr, ptr %9, align 8, !dbg !1475
  %85 = getelementptr inbounds %struct.app_ur_conn_info, ptr %84, i32 0, i32 1, !dbg !1476
  %86 = getelementptr inbounds [129 x i8], ptr %85, i64 0, i64 0, !dbg !1475
  %87 = load i32, ptr %8, align 4, !dbg !1477
  %88 = load ptr, ptr %9, align 8, !dbg !1478
  %89 = call i32 @clnet_connect(i16 noundef zeroext %77, ptr noundef %80, ptr noundef %83, ptr noundef %86, i32 noundef %87, ptr noundef %88), !dbg !1479
  %90 = icmp slt i32 %89, 0, !dbg !1480
  br i1 %90, label %91, label %92, !dbg !1481

91:                                               ; preds = %67
  call void @exit(i32 noundef -1) #12, !dbg !1482
  unreachable, !dbg !1482

92:                                               ; preds = %67
  store i32 0, ptr %15, align 4, !dbg !1484
  br label %93, !dbg !1485

93:                                               ; preds = %92, %64, %61
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1486, metadata !DIExpression()), !dbg !1487
  %94 = load i32, ptr @dual_allocation, align 4, !dbg !1488
  %95 = icmp ne i32 %94, 0, !dbg !1488
  br i1 %95, label %99, label %96, !dbg !1489

96:                                               ; preds = %93
  %97 = load i32, ptr %11, align 4, !dbg !1490
  %98 = icmp eq i32 %97, 1, !dbg !1491
  br label %99, !dbg !1489

99:                                               ; preds = %96, %93
  %100 = phi i1 [ true, %93 ], [ %98, %96 ]
  %101 = zext i1 %100 to i32, !dbg !1489
  store i32 %101, ptr %20, align 4, !dbg !1487
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1492, metadata !DIExpression()), !dbg !1493
  %102 = load i32, ptr @dual_allocation, align 4, !dbg !1494
  %103 = icmp ne i32 %102, 0, !dbg !1494
  br i1 %103, label %107, label %104, !dbg !1495

104:                                              ; preds = %99
  %105 = load i32, ptr %11, align 4, !dbg !1496
  %106 = icmp eq i32 %105, 2, !dbg !1497
  br label %107, !dbg !1495

107:                                              ; preds = %104, %99
  %108 = phi i1 [ true, %99 ], [ %106, %104 ]
  %109 = zext i1 %108 to i32, !dbg !1495
  store i32 %109, ptr %21, align 4, !dbg !1493
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1498, metadata !DIExpression()), !dbg !1499
  store i64 0, ptr %22, align 8, !dbg !1499
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1500, metadata !DIExpression()), !dbg !1501
  store ptr null, ptr %23, align 8, !dbg !1501
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1502, metadata !DIExpression()), !dbg !1503
  %110 = load i32, ptr @no_rtcp, align 4, !dbg !1504
  %111 = icmp ne i32 %110, 0, !dbg !1504
  br i1 %111, label %116, label %112, !dbg !1505

112:                                              ; preds = %107
  %113 = load i32, ptr @dual_allocation, align 4, !dbg !1506
  %114 = icmp ne i32 %113, 0, !dbg !1507
  %115 = xor i1 %114, true, !dbg !1507
  br label %116

116:                                              ; preds = %112, %107
  %117 = phi i1 [ false, %107 ], [ %115, %112 ], !dbg !1508
  %118 = zext i1 %117 to i32, !dbg !1505
  store i32 %118, ptr %24, align 4, !dbg !1503
  %119 = load i32, ptr @no_rtcp, align 4, !dbg !1509
  %120 = icmp ne i32 %119, 0, !dbg !1509
  br i1 %120, label %128, label %121, !dbg !1511

121:                                              ; preds = %116
  %122 = load i32, ptr @allocate_rtcp, align 4, !dbg !1512
  %123 = icmp ne i32 %122, 0, !dbg !1512
  br i1 %123, label %124, label %127, !dbg !1515

124:                                              ; preds = %121
  %125 = load i64, ptr @current_reservation_token, align 8, !dbg !1516
  %126 = call i64 @_ioa_ntoh64(i64 noundef %125), !dbg !1518
  store i64 %126, ptr %22, align 8, !dbg !1519
  store ptr %22, ptr %23, align 8, !dbg !1520
  br label %127, !dbg !1521

127:                                              ; preds = %124, %121
  br label %128, !dbg !1522

128:                                              ; preds = %127, %116
  %129 = load i8, ptr @relay_transport, align 1, !dbg !1523
  %130 = zext i8 %129 to i32, !dbg !1523
  %131 = icmp eq i32 %130, 6, !dbg !1523
  br i1 %131, label %132, label %133, !dbg !1525

132:                                              ; preds = %128
  store i32 -1, ptr %24, align 4, !dbg !1526
  br label %149, !dbg !1528

133:                                              ; preds = %128
  %134 = load ptr, ptr %23, align 8, !dbg !1529
  %135 = icmp ne ptr %134, null, !dbg !1529
  br i1 %135, label %136, label %137, !dbg !1531

136:                                              ; preds = %133
  store i32 -1, ptr %24, align 4, !dbg !1532
  br label %148, !dbg !1534

137:                                              ; preds = %133
  %138 = load i32, ptr %24, align 4, !dbg !1535
  %139 = icmp ne i32 %138, 0, !dbg !1535
  br i1 %139, label %147, label %140, !dbg !1537

140:                                              ; preds = %137
  %141 = call i64 @random() #11, !dbg !1538
  %142 = trunc i64 %141 to i8, !dbg !1540
  %143 = zext i8 %142 to i32, !dbg !1541
  %144 = srem i32 %143, 2, !dbg !1542
  store i32 %144, ptr %24, align 4, !dbg !1543
  %145 = load i32, ptr %24, align 4, !dbg !1544
  %146 = sub nsw i32 %145, 1, !dbg !1545
  store i32 %146, ptr %24, align 4, !dbg !1546
  br label %147, !dbg !1547

147:                                              ; preds = %140, %137
  br label %148

148:                                              ; preds = %147, %136
  br label %149

149:                                              ; preds = %148, %132
  %150 = load i32, ptr @dos, align 4, !dbg !1548
  %151 = icmp ne i32 %150, 0, !dbg !1548
  br i1 %151, label %160, label %152, !dbg !1550

152:                                              ; preds = %149
  %153 = load i32, ptr %20, align 4, !dbg !1551
  %154 = load i32, ptr %21, align 4, !dbg !1552
  %155 = load i8, ptr @relay_transport, align 1, !dbg !1553
  %156 = load i32, ptr @mobility, align 4, !dbg !1554
  %157 = load ptr, ptr %23, align 8, !dbg !1555
  %158 = load i32, ptr %24, align 4, !dbg !1556
  %159 = call i32 @stun_set_allocate_request(ptr noundef %17, i32 noundef 777, i32 noundef %153, i32 noundef %154, i8 noundef zeroext %155, i32 noundef %156, ptr noundef %157, i32 noundef %158), !dbg !1557
  br label %168, !dbg !1557

160:                                              ; preds = %149
  %161 = load i32, ptr %20, align 4, !dbg !1558
  %162 = load i32, ptr %21, align 4, !dbg !1559
  %163 = load i8, ptr @relay_transport, align 1, !dbg !1560
  %164 = load i32, ptr @mobility, align 4, !dbg !1561
  %165 = load ptr, ptr %23, align 8, !dbg !1562
  %166 = load i32, ptr %24, align 4, !dbg !1563
  %167 = call i32 @stun_set_allocate_request(ptr noundef %17, i32 noundef 259, i32 noundef %161, i32 noundef %162, i8 noundef zeroext %163, i32 noundef %164, ptr noundef %165, i32 noundef %166), !dbg !1564
  br label %168

168:                                              ; preds = %160, %152
  %169 = load i64, ptr @bps, align 8, !dbg !1565
  %170 = icmp ne i64 %169, 0, !dbg !1565
  br i1 %170, label %171, label %177, !dbg !1567

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct._stun_buffer, ptr %17, i32 0, i32 1, !dbg !1568
  %173 = getelementptr inbounds [65507 x i8], ptr %172, i64 0, i64 0, !dbg !1569
  %174 = getelementptr inbounds %struct._stun_buffer, ptr %17, i32 0, i32 2, !dbg !1570
  %175 = load i64, ptr @bps, align 8, !dbg !1571
  %176 = call i32 @stun_attr_add_bandwidth_str(ptr noundef %173, ptr noundef %174, i64 noundef %175), !dbg !1572
  br label %177, !dbg !1572

177:                                              ; preds = %171, %168
  %178 = load i32, ptr @dont_fragment, align 4, !dbg !1573
  %179 = icmp ne i32 %178, 0, !dbg !1573
  br i1 %179, label %180, label %182, !dbg !1575

180:                                              ; preds = %177
  %181 = call i32 @stun_attr_add(ptr noundef %17, i16 noundef zeroext 26, ptr noundef null, i32 noundef 0), !dbg !1576
  br label %182, !dbg !1576

182:                                              ; preds = %180, %177
  call void @add_origin(ptr noundef %17), !dbg !1577
  %183 = load ptr, ptr %9, align 8, !dbg !1578
  %184 = call i32 @add_integrity(ptr noundef %183, ptr noundef %17), !dbg !1580
  %185 = icmp slt i32 %184, 0, !dbg !1581
  br i1 %185, label %186, label %187, !dbg !1582

186:                                              ; preds = %182
  store i32 -1, ptr %7, align 4, !dbg !1583
  br label %646, !dbg !1583

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct._stun_buffer, ptr %17, i32 0, i32 1, !dbg !1584
  %189 = getelementptr inbounds [65507 x i8], ptr %188, i64 0, i64 0, !dbg !1585
  %190 = getelementptr inbounds %struct._stun_buffer, ptr %17, i32 0, i32 2, !dbg !1586
  %191 = call i32 @stun_attr_add_fingerprint_str(ptr noundef %189, ptr noundef %190), !dbg !1587
  br label %192, !dbg !1588

192:                                              ; preds = %207, %187
  %193 = load i32, ptr %19, align 4, !dbg !1589
  %194 = icmp ne i32 %193, 0, !dbg !1590
  %195 = xor i1 %194, true, !dbg !1590
  br i1 %195, label %196, label %208, !dbg !1588

196:                                              ; preds = %192
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1591, metadata !DIExpression()), !dbg !1593
  %197 = load ptr, ptr %9, align 8, !dbg !1594
  %198 = call i32 @send_buffer(ptr noundef %197, ptr noundef %17, i32 noundef 0, ptr noundef null), !dbg !1595
  store i32 %198, ptr %25, align 4, !dbg !1593
  %199 = load i32, ptr %25, align 4, !dbg !1596
  %200 = icmp sgt i32 %199, 0, !dbg !1598
  br i1 %200, label %201, label %206, !dbg !1599

201:                                              ; preds = %196
  %202 = load i32, ptr %8, align 4, !dbg !1600
  %203 = icmp ne i32 %202, 0, !dbg !1600
  br i1 %203, label %204, label %205, !dbg !1603

204:                                              ; preds = %201
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.21), !dbg !1604
  br label %205, !dbg !1606

205:                                              ; preds = %204, %201
  store i32 1, ptr %19, align 4, !dbg !1607
  br label %207, !dbg !1608

206:                                              ; preds = %196
  call void @perror(ptr noundef @.str.10), !dbg !1609
  call void @exit(i32 noundef 1) #12, !dbg !1611
  unreachable, !dbg !1611

207:                                              ; preds = %205
  br label %192, !dbg !1588, !llvm.loop !1612

208:                                              ; preds = %192
  %209 = call i32 @not_rare_event(), !dbg !1614
  %210 = icmp ne i32 %209, 0, !dbg !1614
  br i1 %210, label %211, label %212, !dbg !1616

211:                                              ; preds = %208
  store i32 0, ptr %7, align 4, !dbg !1617
  br label %646, !dbg !1617

212:                                              ; preds = %208
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1618, metadata !DIExpression()), !dbg !1620
  store i32 0, ptr %26, align 4, !dbg !1620
  br label %213, !dbg !1621

213:                                              ; preds = %396, %212
  %214 = load i32, ptr %26, align 4, !dbg !1622
  %215 = icmp ne i32 %214, 0, !dbg !1623
  %216 = xor i1 %215, true, !dbg !1623
  br i1 %216, label %217, label %397, !dbg !1621

217:                                              ; preds = %213
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1624, metadata !DIExpression()), !dbg !1626
  %218 = load ptr, ptr %9, align 8, !dbg !1627
  %219 = call i32 @recv_buffer(ptr noundef %218, ptr noundef %18, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef %17), !dbg !1628
  store i32 %219, ptr %27, align 4, !dbg !1626
  %220 = load i32, ptr %27, align 4, !dbg !1629
  %221 = icmp sgt i32 %220, 0, !dbg !1631
  br i1 %221, label %222, label %395, !dbg !1632

222:                                              ; preds = %217
  %223 = load i32, ptr %8, align 4, !dbg !1633
  %224 = icmp ne i32 %223, 0, !dbg !1633
  br i1 %224, label %225, label %226, !dbg !1636

225:                                              ; preds = %222
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.22), !dbg !1637
  br label %226, !dbg !1639

226:                                              ; preds = %225, %222
  %227 = load i32, ptr %27, align 4, !dbg !1640
  %228 = sext i32 %227 to i64, !dbg !1640
  %229 = getelementptr inbounds %struct._stun_buffer, ptr %18, i32 0, i32 2, !dbg !1641
  store i64 %228, ptr %229, align 8, !dbg !1642
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1643, metadata !DIExpression()), !dbg !1644
  store i32 0, ptr %28, align 4, !dbg !1644
  call void @llvm.dbg.declare(metadata ptr %29, metadata !1645, metadata !DIExpression()), !dbg !1647
  %230 = call i32 @stun_is_success_response(ptr noundef %18), !dbg !1648
  %231 = icmp ne i32 %230, 0, !dbg !1648
  br i1 %231, label %232, label %324, !dbg !1650

232:                                              ; preds = %226
  store i32 1, ptr %26, align 4, !dbg !1651
  store i32 1, ptr %16, align 4, !dbg !1653
  %233 = load ptr, ptr %9, align 8, !dbg !1654
  %234 = getelementptr inbounds %struct.app_ur_conn_info, ptr %233, i32 0, i32 10, !dbg !1656
  %235 = getelementptr inbounds [128 x i8], ptr %234, i64 0, i64 0, !dbg !1654
  %236 = load i8, ptr %235, align 4, !dbg !1654
  %237 = icmp ne i8 %236, 0, !dbg !1654
  br i1 %237, label %238, label %244, !dbg !1657

238:                                              ; preds = %232
  %239 = load ptr, ptr %9, align 8, !dbg !1658
  %240 = call i32 @check_integrity(ptr noundef %239, ptr noundef %18), !dbg !1661
  %241 = icmp slt i32 %240, 0, !dbg !1662
  br i1 %241, label %242, label %243, !dbg !1663

242:                                              ; preds = %238
  store i32 -1, ptr %7, align 4, !dbg !1664
  br label %646, !dbg !1664

243:                                              ; preds = %238
  br label %244, !dbg !1665

244:                                              ; preds = %243, %232
  %245 = load i32, ptr %8, align 4, !dbg !1666
  %246 = icmp ne i32 %245, 0, !dbg !1666
  br i1 %246, label %247, label %248, !dbg !1668

247:                                              ; preds = %244
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.23), !dbg !1669
  br label %248, !dbg !1671

248:                                              ; preds = %247, %244
  call void @llvm.dbg.declare(metadata ptr %30, metadata !1672, metadata !DIExpression()), !dbg !1674
  store i32 0, ptr %30, align 4, !dbg !1674
  call void @llvm.dbg.declare(metadata ptr %31, metadata !1675, metadata !DIExpression()), !dbg !1676
  %249 = call ptr @stun_attr_get_first(ptr noundef %18), !dbg !1677
  store ptr %249, ptr %31, align 8, !dbg !1676
  br label %250, !dbg !1678

250:                                              ; preds = %305, %248
  %251 = load ptr, ptr %31, align 8, !dbg !1679
  %252 = icmp ne ptr %251, null, !dbg !1678
  br i1 %252, label %253, label %308, !dbg !1678

253:                                              ; preds = %250
  call void @llvm.dbg.declare(metadata ptr %32, metadata !1680, metadata !DIExpression()), !dbg !1682
  %254 = load ptr, ptr %31, align 8, !dbg !1683
  %255 = call i32 @stun_attr_get_type(ptr noundef %254), !dbg !1684
  store i32 %255, ptr %32, align 4, !dbg !1682
  %256 = load i32, ptr %32, align 4, !dbg !1685
  %257 = icmp eq i32 %256, 22, !dbg !1687
  br i1 %257, label %258, label %305, !dbg !1688

258:                                              ; preds = %253
  %259 = load ptr, ptr %31, align 8, !dbg !1689
  %260 = load ptr, ptr %10, align 8, !dbg !1692
  %261 = call i32 @stun_attr_get_addr(ptr noundef %18, ptr noundef %259, ptr noundef %260, ptr noundef null), !dbg !1693
  %262 = icmp slt i32 %261, 0, !dbg !1694
  br i1 %262, label %263, label %264, !dbg !1695

263:                                              ; preds = %258
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.24, ptr noundef @__FUNCTION__.clnet_allocate), !dbg !1696
  store i32 -1, ptr %7, align 4, !dbg !1698
  br label %646, !dbg !1698

264:                                              ; preds = %258
  %265 = load i32, ptr %8, align 4, !dbg !1699
  %266 = icmp ne i32 %265, 0, !dbg !1699
  br i1 %266, label %267, label %270, !dbg !1702

267:                                              ; preds = %264
  call void @llvm.dbg.declare(metadata ptr %33, metadata !1703, metadata !DIExpression()), !dbg !1705
  %268 = load ptr, ptr %10, align 8, !dbg !1706
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %33, ptr align 4 %268, i64 28, i1 false), !dbg !1707
  %269 = load i32, ptr %8, align 4, !dbg !1708
  call void @addr_debug_print(i32 noundef %269, ptr noundef %33, ptr noundef @.str.25), !dbg !1709
  br label %270, !dbg !1710

270:                                              ; preds = %267, %264
  %271 = load ptr, ptr %10, align 8, !dbg !1711
  %272 = call i32 @addr_any(ptr noundef %271), !dbg !1713
  %273 = icmp ne i32 %272, 0, !dbg !1713
  br i1 %273, label %303, label %274, !dbg !1714

274:                                              ; preds = %270
  %275 = load ptr, ptr %10, align 8, !dbg !1715
  %276 = getelementptr inbounds %struct.sockaddr, ptr %275, i32 0, i32 0, !dbg !1718
  %277 = load i16, ptr %276, align 4, !dbg !1718
  %278 = zext i16 %277 to i32, !dbg !1715
  %279 = icmp eq i32 %278, 2, !dbg !1719
  br i1 %279, label %280, label %288, !dbg !1720

280:                                              ; preds = %274
  %281 = load i32, ptr @default_address_family, align 4, !dbg !1721
  %282 = icmp ne i32 %281, 2, !dbg !1724
  br i1 %282, label %283, label %287, !dbg !1725

283:                                              ; preds = %280
  store i32 1, ptr %30, align 4, !dbg !1726
  %284 = load ptr, ptr %9, align 8, !dbg !1728
  %285 = getelementptr inbounds %struct.app_ur_conn_info, ptr %284, i32 0, i32 6, !dbg !1729
  %286 = load ptr, ptr %10, align 8, !dbg !1730
  call void @addr_cpy(ptr noundef %285, ptr noundef %286), !dbg !1731
  br label %308, !dbg !1732

287:                                              ; preds = %280
  br label %288, !dbg !1733

288:                                              ; preds = %287, %274
  %289 = load ptr, ptr %10, align 8, !dbg !1734
  %290 = getelementptr inbounds %struct.sockaddr, ptr %289, i32 0, i32 0, !dbg !1736
  %291 = load i16, ptr %290, align 4, !dbg !1736
  %292 = zext i16 %291 to i32, !dbg !1734
  %293 = icmp eq i32 %292, 10, !dbg !1737
  br i1 %293, label %294, label %302, !dbg !1738

294:                                              ; preds = %288
  %295 = load i32, ptr @default_address_family, align 4, !dbg !1739
  %296 = icmp eq i32 %295, 2, !dbg !1742
  br i1 %296, label %297, label %301, !dbg !1743

297:                                              ; preds = %294
  store i32 1, ptr %30, align 4, !dbg !1744
  %298 = load ptr, ptr %9, align 8, !dbg !1746
  %299 = getelementptr inbounds %struct.app_ur_conn_info, ptr %298, i32 0, i32 6, !dbg !1747
  %300 = load ptr, ptr %10, align 8, !dbg !1748
  call void @addr_cpy(ptr noundef %299, ptr noundef %300), !dbg !1749
  br label %308, !dbg !1750

301:                                              ; preds = %294
  br label %302, !dbg !1751

302:                                              ; preds = %301, %288
  br label %303, !dbg !1752

303:                                              ; preds = %302, %270
  br label %304

304:                                              ; preds = %303
  br label %305, !dbg !1753

305:                                              ; preds = %304, %253
  %306 = load ptr, ptr %31, align 8, !dbg !1754
  %307 = call ptr @stun_attr_get_next(ptr noundef %18, ptr noundef %306), !dbg !1755
  store ptr %307, ptr %31, align 8, !dbg !1756
  br label %250, !dbg !1678, !llvm.loop !1757

308:                                              ; preds = %297, %283, %250
  %309 = load i32, ptr %30, align 4, !dbg !1759
  %310 = icmp ne i32 %309, 0, !dbg !1759
  br i1 %310, label %312, label %311, !dbg !1761

311:                                              ; preds = %308
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.26, ptr noundef @__FUNCTION__.clnet_allocate), !dbg !1762
  store i32 -1, ptr %7, align 4, !dbg !1764
  br label %646, !dbg !1764

312:                                              ; preds = %308
  call void @llvm.dbg.declare(metadata ptr %34, metadata !1765, metadata !DIExpression()), !dbg !1766
  %313 = call ptr @stun_attr_get_first_by_type(ptr noundef %18, i16 noundef zeroext 34), !dbg !1767
  store ptr %313, ptr %34, align 8, !dbg !1766
  call void @llvm.dbg.declare(metadata ptr %35, metadata !1768, metadata !DIExpression()), !dbg !1769
  %314 = load ptr, ptr %34, align 8, !dbg !1770
  %315 = call i64 @stun_attr_get_reservation_token_value(ptr noundef %314), !dbg !1771
  store i64 %315, ptr %35, align 8, !dbg !1769
  %316 = load i64, ptr %35, align 8, !dbg !1772
  store i64 %316, ptr @current_reservation_token, align 8, !dbg !1773
  %317 = load i32, ptr %8, align 4, !dbg !1774
  %318 = icmp ne i32 %317, 0, !dbg !1774
  br i1 %318, label %319, label %321, !dbg !1776

319:                                              ; preds = %312
  %320 = load i64, ptr %35, align 8, !dbg !1777
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.27, ptr noundef @__FUNCTION__.clnet_allocate, i64 noundef %320), !dbg !1778
  br label %321, !dbg !1778

321:                                              ; preds = %319, %312
  %322 = load ptr, ptr %9, align 8, !dbg !1779
  %323 = call i32 @read_mobility_ticket(ptr noundef %322, ptr noundef %18), !dbg !1780
  br label %394, !dbg !1781

324:                                              ; preds = %226
  %325 = getelementptr inbounds %struct._stun_buffer, ptr %18, i32 0, i32 1, !dbg !1782
  %326 = getelementptr inbounds [65507 x i8], ptr %325, i64 0, i64 0, !dbg !1784
  %327 = getelementptr inbounds %struct._stun_buffer, ptr %18, i32 0, i32 2, !dbg !1785
  %328 = load i64, ptr %327, align 8, !dbg !1785
  %329 = getelementptr inbounds [129 x i8], ptr %29, i64 0, i64 0, !dbg !1786
  %330 = load ptr, ptr %9, align 8, !dbg !1787
  %331 = getelementptr inbounds %struct.app_ur_conn_info, ptr %330, i32 0, i32 11, !dbg !1788
  %332 = getelementptr inbounds [128 x i8], ptr %331, i64 0, i64 0, !dbg !1787
  %333 = load ptr, ptr %9, align 8, !dbg !1789
  %334 = getelementptr inbounds %struct.app_ur_conn_info, ptr %333, i32 0, i32 10, !dbg !1790
  %335 = getelementptr inbounds [128 x i8], ptr %334, i64 0, i64 0, !dbg !1789
  %336 = load ptr, ptr %9, align 8, !dbg !1791
  %337 = getelementptr inbounds %struct.app_ur_conn_info, ptr %336, i32 0, i32 13, !dbg !1792
  %338 = getelementptr inbounds [1026 x i8], ptr %337, i64 0, i64 0, !dbg !1791
  %339 = load ptr, ptr %9, align 8, !dbg !1793
  %340 = getelementptr inbounds %struct.app_ur_conn_info, ptr %339, i32 0, i32 12, !dbg !1794
  %341 = call i32 @stun_is_challenge_response_str(ptr noundef %326, i64 noundef %328, ptr noundef %28, ptr noundef %329, i64 noundef 129, ptr noundef %332, ptr noundef %335, ptr noundef %338, ptr noundef %340), !dbg !1795
  %342 = icmp ne i32 %341, 0, !dbg !1795
  br i1 %342, label %343, label %344, !dbg !1796

343:                                              ; preds = %324
  br label %51, !dbg !1797

344:                                              ; preds = %324
  %345 = getelementptr inbounds [129 x i8], ptr %29, i64 0, i64 0, !dbg !1799
  %346 = call i32 @stun_is_error_response(ptr noundef %18, ptr noundef %28, ptr noundef %345, i64 noundef 129), !dbg !1801
  %347 = icmp ne i32 %346, 0, !dbg !1801
  br i1 %347, label %348, label %391, !dbg !1802

348:                                              ; preds = %344
  store i32 1, ptr %26, align 4, !dbg !1803
  %349 = load i32, ptr %28, align 4, !dbg !1805
  %350 = icmp eq i32 %349, 300, !dbg !1807
  br i1 %350, label %351, label %381, !dbg !1808

351:                                              ; preds = %348
  %352 = load ptr, ptr %9, align 8, !dbg !1809
  %353 = getelementptr inbounds %struct.app_ur_conn_info, ptr %352, i32 0, i32 10, !dbg !1812
  %354 = getelementptr inbounds [128 x i8], ptr %353, i64 0, i64 0, !dbg !1809
  %355 = load i8, ptr %354, align 4, !dbg !1809
  %356 = icmp ne i8 %355, 0, !dbg !1809
  br i1 %356, label %357, label %363, !dbg !1813

357:                                              ; preds = %351
  %358 = load ptr, ptr %9, align 8, !dbg !1814
  %359 = call i32 @check_integrity(ptr noundef %358, ptr noundef %18), !dbg !1817
  %360 = icmp slt i32 %359, 0, !dbg !1818
  br i1 %360, label %361, label %362, !dbg !1819

361:                                              ; preds = %357
  store i32 -1, ptr %7, align 4, !dbg !1820
  br label %646, !dbg !1820

362:                                              ; preds = %357
  br label %363, !dbg !1821

363:                                              ; preds = %362, %351
  call void @llvm.dbg.declare(metadata ptr %36, metadata !1822, metadata !DIExpression()), !dbg !1823
  %364 = call i32 @stun_attr_get_first_addr(ptr noundef %18, i16 noundef zeroext -32733, ptr noundef %36, ptr noundef null), !dbg !1824
  %365 = icmp eq i32 %364, -1, !dbg !1826
  br i1 %365, label %366, label %367, !dbg !1827

366:                                              ; preds = %363
  br label %380, !dbg !1828

367:                                              ; preds = %363
  %368 = load ptr, ptr %12, align 8, !dbg !1830
  %369 = icmp ne ptr %368, null, !dbg !1830
  br i1 %369, label %370, label %379, !dbg !1832

370:                                              ; preds = %367
  %371 = load ptr, ptr %13, align 8, !dbg !1833
  %372 = icmp ne ptr %371, null, !dbg !1833
  br i1 %372, label %373, label %379, !dbg !1834

373:                                              ; preds = %370
  %374 = load ptr, ptr %12, align 8, !dbg !1835
  %375 = call i32 @addr_to_string_no_port(ptr noundef %36, ptr noundef %374), !dbg !1837
  %376 = call i32 @addr_get_port(ptr noundef %36), !dbg !1838
  %377 = trunc i32 %376 to i16, !dbg !1839
  %378 = load ptr, ptr %13, align 8, !dbg !1840
  store i16 %377, ptr %378, align 2, !dbg !1841
  br label %379, !dbg !1842

379:                                              ; preds = %373, %370, %367
  br label %380

380:                                              ; preds = %379, %366
  br label %381, !dbg !1843

381:                                              ; preds = %380, %348
  %382 = load i32, ptr %28, align 4, !dbg !1844
  %383 = getelementptr inbounds [129 x i8], ptr %29, i64 0, i64 0, !dbg !1845
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.28, i32 noundef %382, ptr noundef %383), !dbg !1846
  %384 = load i32, ptr %28, align 4, !dbg !1847
  %385 = icmp ne i32 %384, 437, !dbg !1849
  br i1 %385, label %386, label %387, !dbg !1850

386:                                              ; preds = %381
  store i32 1, ptr %16, align 4, !dbg !1851
  store i64 0, ptr @current_reservation_token, align 8, !dbg !1853
  store i32 -1, ptr %7, align 4, !dbg !1854
  br label %646, !dbg !1854

387:                                              ; preds = %381
  %388 = load i32, ptr %28, align 4, !dbg !1855
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.29, i32 noundef %388), !dbg !1857
  %389 = call i32 @sleep(i32 noundef 1), !dbg !1858
  store i32 1, ptr %15, align 4, !dbg !1859
  br label %390

390:                                              ; preds = %387
  br label %392, !dbg !1860

391:                                              ; preds = %344
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.30), !dbg !1861
  br label %392

392:                                              ; preds = %391, %390
  br label %393

393:                                              ; preds = %392
  br label %394

394:                                              ; preds = %393, %321
  br label %396, !dbg !1863

395:                                              ; preds = %217
  call void @perror(ptr noundef @.str.31), !dbg !1864
  call void @exit(i32 noundef -1) #12, !dbg !1866
  unreachable, !dbg !1866

396:                                              ; preds = %394
  br label %213, !dbg !1621, !llvm.loop !1867

397:                                              ; preds = %213
  br label %52, !dbg !1448, !llvm.loop !1869

398:                                              ; preds = %59
  %399 = call i32 @rare_event(), !dbg !1871
  %400 = icmp ne i32 %399, 0, !dbg !1871
  br i1 %400, label %401, label %402, !dbg !1873

401:                                              ; preds = %398
  store i32 0, ptr %7, align 4, !dbg !1874
  br label %646, !dbg !1874

402:                                              ; preds = %398
  %403 = load i32, ptr %16, align 4, !dbg !1875
  %404 = icmp ne i32 %403, 0, !dbg !1875
  br i1 %404, label %406, label %405, !dbg !1877

405:                                              ; preds = %402
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.32), !dbg !1878
  call void @exit(i32 noundef -1) #12, !dbg !1880
  unreachable, !dbg !1880

406:                                              ; preds = %402
  %407 = load i32, ptr @allocate_rtcp, align 4, !dbg !1881
  %408 = icmp ne i32 %407, 0, !dbg !1882
  %409 = xor i1 %408, true, !dbg !1882
  %410 = zext i1 %409 to i32, !dbg !1882
  store i32 %410, ptr @allocate_rtcp, align 4, !dbg !1883
  store i32 0, ptr %14, align 4, !dbg !1884
  %411 = load ptr, ptr %9, align 8, !dbg !1887
  %412 = getelementptr inbounds %struct.app_ur_conn_info, ptr %411, i32 0, i32 20, !dbg !1889
  %413 = getelementptr inbounds [33 x i8], ptr %412, i64 0, i64 0, !dbg !1887
  %414 = load i8, ptr %413, align 4, !dbg !1887
  %415 = icmp ne i8 %414, 0, !dbg !1887
  br i1 %415, label %416, label %486, !dbg !1890

416:                                              ; preds = %406
  call void @llvm.dbg.declare(metadata ptr %37, metadata !1891, metadata !DIExpression()), !dbg !1893
  %417 = load ptr, ptr %9, align 8, !dbg !1894
  %418 = getelementptr inbounds %struct.app_ur_conn_info, ptr %417, i32 0, i32 7, !dbg !1895
  %419 = load i32, ptr %418, align 8, !dbg !1895
  store i32 %419, ptr %37, align 4, !dbg !1893
  call void @llvm.dbg.declare(metadata ptr %38, metadata !1896, metadata !DIExpression()), !dbg !1897
  %420 = load ptr, ptr %9, align 8, !dbg !1898
  %421 = getelementptr inbounds %struct.app_ur_conn_info, ptr %420, i32 0, i32 8, !dbg !1899
  %422 = load ptr, ptr %421, align 8, !dbg !1899
  store ptr %422, ptr %38, align 8, !dbg !1897
  call void @llvm.dbg.declare(metadata ptr %39, metadata !1900, metadata !DIExpression()), !dbg !1901
  %423 = call i64 @random() #11, !dbg !1902
  %424 = srem i64 %423, 2, !dbg !1903
  %425 = trunc i64 %424 to i32, !dbg !1904
  store i32 %425, ptr %39, align 4, !dbg !1901
  %426 = load i32, ptr %39, align 4, !dbg !1905
  %427 = icmp ne i32 %426, 0, !dbg !1905
  br i1 %427, label %428, label %449, !dbg !1907

428:                                              ; preds = %416
  call void @llvm.dbg.declare(metadata ptr %40, metadata !1908, metadata !DIExpression()), !dbg !1910
  %429 = call i64 @random() #11, !dbg !1911
  %430 = srem i64 %429, 2, !dbg !1912
  %431 = trunc i64 %430 to i32, !dbg !1913
  store i32 %431, ptr %40, align 4, !dbg !1910
  %432 = load ptr, ptr %38, align 8, !dbg !1914
  %433 = icmp ne ptr %432, null, !dbg !1914
  br i1 %433, label %434, label %441, !dbg !1916

434:                                              ; preds = %428
  %435 = load i32, ptr %40, align 4, !dbg !1917
  %436 = icmp ne i32 %435, 0, !dbg !1917
  br i1 %436, label %441, label %437, !dbg !1918

437:                                              ; preds = %434
  %438 = load ptr, ptr %38, align 8, !dbg !1919
  %439 = call i32 @SSL_shutdown(ptr noundef %438), !dbg !1921
  %440 = load ptr, ptr %38, align 8, !dbg !1922
  call void @SSL_free(ptr noundef %440), !dbg !1923
  store i32 -1, ptr %37, align 4, !dbg !1924
  br label %448, !dbg !1925

441:                                              ; preds = %434, %428
  %442 = load i32, ptr %37, align 4, !dbg !1926
  %443 = icmp sge i32 %442, 0, !dbg !1928
  br i1 %443, label %444, label %447, !dbg !1929

444:                                              ; preds = %441
  %445 = load i32, ptr %37, align 4, !dbg !1930
  %446 = call i32 @close(i32 noundef %445), !dbg !1932
  store i32 -1, ptr %37, align 4, !dbg !1933
  store ptr null, ptr %38, align 8, !dbg !1934
  br label %447, !dbg !1935

447:                                              ; preds = %444, %441
  br label %448

448:                                              ; preds = %447, %437
  br label %449, !dbg !1936

449:                                              ; preds = %448, %416
  call void @llvm.dbg.declare(metadata ptr %41, metadata !1937, metadata !DIExpression()), !dbg !1938
  %450 = load ptr, ptr %9, align 8, !dbg !1939
  call void @bcopy(ptr noundef %450, ptr noundef %41, i64 noundef 1944) #11, !dbg !1940
  %451 = getelementptr inbounds %struct.app_ur_conn_info, ptr %41, i32 0, i32 7, !dbg !1941
  store i32 -1, ptr %451, align 8, !dbg !1942
  %452 = getelementptr inbounds %struct.app_ur_conn_info, ptr %41, i32 0, i32 8, !dbg !1943
  store ptr null, ptr %452, align 8, !dbg !1944
  %453 = load ptr, ptr %9, align 8, !dbg !1945
  %454 = getelementptr inbounds %struct.app_ur_conn_info, ptr %453, i32 0, i32 7, !dbg !1946
  store i32 -1, ptr %454, align 8, !dbg !1947
  %455 = load ptr, ptr %9, align 8, !dbg !1948
  %456 = getelementptr inbounds %struct.app_ur_conn_info, ptr %455, i32 0, i32 8, !dbg !1949
  store ptr null, ptr %456, align 8, !dbg !1950
  %457 = getelementptr inbounds %struct.app_ur_conn_info, ptr %41, i32 0, i32 2, !dbg !1951
  %458 = call i32 @addr_get_port(ptr noundef %457), !dbg !1953
  %459 = trunc i32 %458 to i16, !dbg !1953
  %460 = getelementptr inbounds %struct.app_ur_conn_info, ptr %41, i32 0, i32 3, !dbg !1954
  %461 = getelementptr inbounds [129 x i8], ptr %460, i64 0, i64 0, !dbg !1955
  %462 = getelementptr inbounds %struct.app_ur_conn_info, ptr %41, i32 0, i32 4, !dbg !1956
  %463 = getelementptr inbounds [129 x i8], ptr %462, i64 0, i64 0, !dbg !1957
  %464 = getelementptr inbounds %struct.app_ur_conn_info, ptr %41, i32 0, i32 1, !dbg !1958
  %465 = getelementptr inbounds [129 x i8], ptr %464, i64 0, i64 0, !dbg !1959
  %466 = load i32, ptr @clnet_verbose, align 4, !dbg !1960
  %467 = load ptr, ptr %9, align 8, !dbg !1961
  %468 = call i32 @clnet_connect(i16 noundef zeroext %459, ptr noundef %461, ptr noundef %463, ptr noundef %465, i32 noundef %466, ptr noundef %467), !dbg !1962
  %469 = icmp slt i32 %468, 0, !dbg !1963
  br i1 %469, label %470, label %471, !dbg !1964

470:                                              ; preds = %449
  call void @exit(i32 noundef -1) #12, !dbg !1965
  unreachable, !dbg !1965

471:                                              ; preds = %449
  %472 = load ptr, ptr %38, align 8, !dbg !1967
  %473 = icmp ne ptr %472, null, !dbg !1967
  br i1 %473, label %474, label %478, !dbg !1969

474:                                              ; preds = %471
  %475 = load ptr, ptr %38, align 8, !dbg !1970
  %476 = call i32 @SSL_shutdown(ptr noundef %475), !dbg !1972
  %477 = load ptr, ptr %38, align 8, !dbg !1973
  call void @SSL_free(ptr noundef %477), !dbg !1974
  br label %485, !dbg !1975

478:                                              ; preds = %471
  %479 = load i32, ptr %37, align 4, !dbg !1976
  %480 = icmp sge i32 %479, 0, !dbg !1978
  br i1 %480, label %481, label %484, !dbg !1979

481:                                              ; preds = %478
  %482 = load i32, ptr %37, align 4, !dbg !1980
  %483 = call i32 @close(i32 noundef %482), !dbg !1982
  br label %484, !dbg !1983

484:                                              ; preds = %481, %478
  br label %485

485:                                              ; preds = %484, %474
  br label %486, !dbg !1984

486:                                              ; preds = %485, %406
  br label %487, !dbg !1985

487:                                              ; preds = %631, %486
  call void @llvm.dbg.label(metadata !1986), !dbg !1987
  %488 = load i32, ptr %14, align 4, !dbg !1988
  %489 = add nsw i32 %488, 1, !dbg !1988
  store i32 %489, ptr %14, align 4, !dbg !1988
  %490 = icmp sgt i32 %488, 32, !dbg !1990
  br i1 %490, label %491, label %492, !dbg !1991

491:                                              ; preds = %487
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.33), !dbg !1992
  call void @exit(i32 noundef -1) #12, !dbg !1994
  unreachable, !dbg !1994

492:                                              ; preds = %487
  call void @llvm.dbg.declare(metadata ptr %42, metadata !1995, metadata !DIExpression()), !dbg !1997
  store i32 0, ptr %42, align 4, !dbg !1997
  call void @stun_init_request(i16 noundef zeroext 4, ptr noundef %17), !dbg !1998
  call void @llvm.dbg.declare(metadata ptr %43, metadata !1999, metadata !DIExpression()), !dbg !2000
  %493 = call i32 @htonl(i32 noundef 777) #14, !dbg !2001
  store i32 %493, ptr %43, align 4, !dbg !2000
  %494 = call i32 @stun_attr_add(ptr noundef %17, i16 noundef zeroext 13, ptr noundef %43, i32 noundef 4), !dbg !2002
  %495 = load ptr, ptr %9, align 8, !dbg !2003
  %496 = getelementptr inbounds %struct.app_ur_conn_info, ptr %495, i32 0, i32 20, !dbg !2005
  %497 = getelementptr inbounds [33 x i8], ptr %496, i64 0, i64 0, !dbg !2003
  %498 = load i8, ptr %497, align 4, !dbg !2003
  %499 = icmp ne i8 %498, 0, !dbg !2003
  br i1 %499, label %500, label %510, !dbg !2006

500:                                              ; preds = %492
  %501 = load ptr, ptr %9, align 8, !dbg !2007
  %502 = getelementptr inbounds %struct.app_ur_conn_info, ptr %501, i32 0, i32 20, !dbg !2009
  %503 = getelementptr inbounds [33 x i8], ptr %502, i64 0, i64 0, !dbg !2007
  %504 = load ptr, ptr %9, align 8, !dbg !2010
  %505 = getelementptr inbounds %struct.app_ur_conn_info, ptr %504, i32 0, i32 20, !dbg !2011
  %506 = getelementptr inbounds [33 x i8], ptr %505, i64 0, i64 0, !dbg !2010
  %507 = call i64 @strlen(ptr noundef %506) #13, !dbg !2012
  %508 = trunc i64 %507 to i32, !dbg !2012
  %509 = call i32 @stun_attr_add(ptr noundef %17, i16 noundef zeroext -32720, ptr noundef %503, i32 noundef %508), !dbg !2013
  br label %510, !dbg !2014

510:                                              ; preds = %500, %492
  %511 = load i32, ptr @dual_allocation, align 4, !dbg !2015
  %512 = icmp ne i32 %511, 0, !dbg !2015
  br i1 %512, label %513, label %536, !dbg !2017

513:                                              ; preds = %510
  %514 = load i32, ptr @mobility, align 4, !dbg !2018
  %515 = icmp ne i32 %514, 0, !dbg !2018
  br i1 %515, label %536, label %516, !dbg !2019

516:                                              ; preds = %513
  call void @llvm.dbg.declare(metadata ptr %44, metadata !2020, metadata !DIExpression()), !dbg !2022
  %517 = call i64 @random() #11, !dbg !2023
  %518 = trunc i64 %517 to i8, !dbg !2024
  %519 = zext i8 %518 to i32, !dbg !2025
  %520 = srem i32 %519, 3, !dbg !2026
  store i32 %520, ptr %44, align 4, !dbg !2022
  %521 = load i32, ptr %44, align 4, !dbg !2027
  %522 = icmp ne i32 %521, 0, !dbg !2027
  br i1 %522, label %523, label %535, !dbg !2029

523:                                              ; preds = %516
  call void @llvm.dbg.declare(metadata ptr %45, metadata !2030, metadata !DIExpression()), !dbg !2032
  %524 = load i32, ptr %44, align 4, !dbg !2033
  %525 = icmp eq i32 %524, 1, !dbg !2034
  %526 = zext i1 %525 to i64, !dbg !2035
  %527 = select i1 %525, i32 1, i32 2, !dbg !2035
  %528 = trunc i32 %527 to i8, !dbg !2035
  %529 = getelementptr inbounds [4 x i8], ptr %45, i64 0, i64 0, !dbg !2036
  store i8 %528, ptr %529, align 1, !dbg !2037
  %530 = getelementptr inbounds [4 x i8], ptr %45, i64 0, i64 1, !dbg !2038
  store i8 0, ptr %530, align 1, !dbg !2039
  %531 = getelementptr inbounds [4 x i8], ptr %45, i64 0, i64 2, !dbg !2040
  store i8 0, ptr %531, align 1, !dbg !2041
  %532 = getelementptr inbounds [4 x i8], ptr %45, i64 0, i64 3, !dbg !2042
  store i8 0, ptr %532, align 1, !dbg !2043
  %533 = getelementptr inbounds [4 x i8], ptr %45, i64 0, i64 0, !dbg !2044
  %534 = call i32 @stun_attr_add(ptr noundef %17, i16 noundef zeroext 23, ptr noundef %533, i32 noundef 4), !dbg !2045
  br label %535, !dbg !2046

535:                                              ; preds = %523, %516
  br label %536, !dbg !2047

536:                                              ; preds = %535, %513, %510
  call void @add_origin(ptr noundef %17), !dbg !2048
  %537 = load ptr, ptr %9, align 8, !dbg !2049
  %538 = call i32 @add_integrity(ptr noundef %537, ptr noundef %17), !dbg !2051
  %539 = icmp slt i32 %538, 0, !dbg !2052
  br i1 %539, label %540, label %541, !dbg !2053

540:                                              ; preds = %536
  store i32 -1, ptr %7, align 4, !dbg !2054
  br label %646, !dbg !2054

541:                                              ; preds = %536
  %542 = getelementptr inbounds %struct._stun_buffer, ptr %17, i32 0, i32 1, !dbg !2055
  %543 = getelementptr inbounds [65507 x i8], ptr %542, i64 0, i64 0, !dbg !2056
  %544 = getelementptr inbounds %struct._stun_buffer, ptr %17, i32 0, i32 2, !dbg !2057
  %545 = call i32 @stun_attr_add_fingerprint_str(ptr noundef %543, ptr noundef %544), !dbg !2058
  br label %546, !dbg !2059

546:                                              ; preds = %571, %541
  %547 = load i32, ptr %42, align 4, !dbg !2060
  %548 = icmp ne i32 %547, 0, !dbg !2061
  %549 = xor i1 %548, true, !dbg !2061
  br i1 %549, label %550, label %572, !dbg !2059

550:                                              ; preds = %546
  call void @llvm.dbg.declare(metadata ptr %46, metadata !2062, metadata !DIExpression()), !dbg !2064
  %551 = load ptr, ptr %9, align 8, !dbg !2065
  %552 = call i32 @send_buffer(ptr noundef %551, ptr noundef %17, i32 noundef 0, ptr noundef null), !dbg !2066
  store i32 %552, ptr %46, align 4, !dbg !2064
  %553 = load i32, ptr %46, align 4, !dbg !2067
  %554 = icmp sgt i32 %553, 0, !dbg !2069
  br i1 %554, label %555, label %570, !dbg !2070

555:                                              ; preds = %550
  %556 = load i32, ptr %8, align 4, !dbg !2071
  %557 = icmp ne i32 %556, 0, !dbg !2071
  br i1 %557, label %558, label %559, !dbg !2074

558:                                              ; preds = %555
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.34), !dbg !2075
  br label %559, !dbg !2077

559:                                              ; preds = %558, %555
  store i32 1, ptr %42, align 4, !dbg !2078
  %560 = load ptr, ptr %9, align 8, !dbg !2079
  %561 = getelementptr inbounds %struct.app_ur_conn_info, ptr %560, i32 0, i32 20, !dbg !2081
  %562 = getelementptr inbounds [33 x i8], ptr %561, i64 0, i64 0, !dbg !2079
  %563 = load i8, ptr %562, align 4, !dbg !2079
  %564 = icmp ne i8 %563, 0, !dbg !2079
  br i1 %564, label %565, label %569, !dbg !2082

565:                                              ; preds = %559
  %566 = call i32 @usleep(i32 noundef 10000), !dbg !2083
  %567 = load ptr, ptr %9, align 8, !dbg !2085
  %568 = call i32 @send_buffer(ptr noundef %567, ptr noundef %17, i32 noundef 0, ptr noundef null), !dbg !2086
  br label %569, !dbg !2087

569:                                              ; preds = %565, %559
  br label %571, !dbg !2088

570:                                              ; preds = %550
  call void @perror(ptr noundef @.str.10), !dbg !2089
  call void @exit(i32 noundef 1) #12, !dbg !2091
  unreachable, !dbg !2091

571:                                              ; preds = %569
  br label %546, !dbg !2059, !llvm.loop !2092

572:                                              ; preds = %546
  %573 = call i32 @not_rare_event(), !dbg !2094
  %574 = icmp ne i32 %573, 0, !dbg !2094
  br i1 %574, label %575, label %576, !dbg !2096

575:                                              ; preds = %572
  store i32 0, ptr %7, align 4, !dbg !2097
  br label %646, !dbg !2097

576:                                              ; preds = %572
  call void @llvm.dbg.declare(metadata ptr %47, metadata !2098, metadata !DIExpression()), !dbg !2100
  store i32 0, ptr %47, align 4, !dbg !2100
  br label %577, !dbg !2101

577:                                              ; preds = %644, %576
  %578 = load i32, ptr %47, align 4, !dbg !2102
  %579 = icmp ne i32 %578, 0, !dbg !2103
  %580 = xor i1 %579, true, !dbg !2103
  br i1 %580, label %581, label %645, !dbg !2101

581:                                              ; preds = %577
  call void @llvm.dbg.declare(metadata ptr %48, metadata !2104, metadata !DIExpression()), !dbg !2106
  %582 = load ptr, ptr %9, align 8, !dbg !2107
  %583 = call i32 @recv_buffer(ptr noundef %582, ptr noundef %18, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef %17), !dbg !2108
  store i32 %583, ptr %48, align 4, !dbg !2106
  %584 = load ptr, ptr %9, align 8, !dbg !2109
  %585 = getelementptr inbounds %struct.app_ur_conn_info, ptr %584, i32 0, i32 20, !dbg !2111
  %586 = getelementptr inbounds [33 x i8], ptr %585, i64 0, i64 0, !dbg !2109
  %587 = load i8, ptr %586, align 4, !dbg !2109
  %588 = icmp ne i8 %587, 0, !dbg !2109
  br i1 %588, label %589, label %592, !dbg !2112

589:                                              ; preds = %581
  %590 = load ptr, ptr %9, align 8, !dbg !2113
  %591 = call i32 @recv_buffer(ptr noundef %590, ptr noundef %18, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef %17), !dbg !2115
  store i32 %591, ptr %48, align 4, !dbg !2116
  br label %592, !dbg !2117

592:                                              ; preds = %589, %581
  %593 = load i32, ptr %48, align 4, !dbg !2118
  %594 = icmp sgt i32 %593, 0, !dbg !2120
  br i1 %594, label %595, label %643, !dbg !2121

595:                                              ; preds = %592
  %596 = load i32, ptr %8, align 4, !dbg !2122
  %597 = icmp ne i32 %596, 0, !dbg !2122
  br i1 %597, label %598, label %599, !dbg !2125

598:                                              ; preds = %595
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.35), !dbg !2126
  br label %599, !dbg !2128

599:                                              ; preds = %598, %595
  %600 = load i32, ptr %48, align 4, !dbg !2129
  %601 = sext i32 %600 to i64, !dbg !2129
  %602 = getelementptr inbounds %struct._stun_buffer, ptr %18, i32 0, i32 2, !dbg !2130
  store i64 %601, ptr %602, align 8, !dbg !2131
  call void @llvm.dbg.declare(metadata ptr %49, metadata !2132, metadata !DIExpression()), !dbg !2133
  store i32 0, ptr %49, align 4, !dbg !2133
  call void @llvm.dbg.declare(metadata ptr %50, metadata !2134, metadata !DIExpression()), !dbg !2135
  %603 = call i32 @stun_is_success_response(ptr noundef %18), !dbg !2136
  %604 = icmp ne i32 %603, 0, !dbg !2136
  br i1 %604, label %605, label %612, !dbg !2138

605:                                              ; preds = %599
  %606 = load ptr, ptr %9, align 8, !dbg !2139
  %607 = call i32 @read_mobility_ticket(ptr noundef %606, ptr noundef %18), !dbg !2141
  store i32 1, ptr %47, align 4, !dbg !2142
  %608 = load i32, ptr %8, align 4, !dbg !2143
  %609 = icmp ne i32 %608, 0, !dbg !2143
  br i1 %609, label %610, label %611, !dbg !2145

610:                                              ; preds = %605
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.23), !dbg !2146
  br label %611, !dbg !2148

611:                                              ; preds = %610, %605
  br label %642, !dbg !2149

612:                                              ; preds = %599
  %613 = getelementptr inbounds %struct._stun_buffer, ptr %18, i32 0, i32 1, !dbg !2150
  %614 = getelementptr inbounds [65507 x i8], ptr %613, i64 0, i64 0, !dbg !2152
  %615 = getelementptr inbounds %struct._stun_buffer, ptr %18, i32 0, i32 2, !dbg !2153
  %616 = load i64, ptr %615, align 8, !dbg !2153
  %617 = getelementptr inbounds [129 x i8], ptr %50, i64 0, i64 0, !dbg !2154
  %618 = load ptr, ptr %9, align 8, !dbg !2155
  %619 = getelementptr inbounds %struct.app_ur_conn_info, ptr %618, i32 0, i32 11, !dbg !2156
  %620 = getelementptr inbounds [128 x i8], ptr %619, i64 0, i64 0, !dbg !2155
  %621 = load ptr, ptr %9, align 8, !dbg !2157
  %622 = getelementptr inbounds %struct.app_ur_conn_info, ptr %621, i32 0, i32 10, !dbg !2158
  %623 = getelementptr inbounds [128 x i8], ptr %622, i64 0, i64 0, !dbg !2157
  %624 = load ptr, ptr %9, align 8, !dbg !2159
  %625 = getelementptr inbounds %struct.app_ur_conn_info, ptr %624, i32 0, i32 13, !dbg !2160
  %626 = getelementptr inbounds [1026 x i8], ptr %625, i64 0, i64 0, !dbg !2159
  %627 = load ptr, ptr %9, align 8, !dbg !2161
  %628 = getelementptr inbounds %struct.app_ur_conn_info, ptr %627, i32 0, i32 12, !dbg !2162
  %629 = call i32 @stun_is_challenge_response_str(ptr noundef %614, i64 noundef %616, ptr noundef %49, ptr noundef %617, i64 noundef 129, ptr noundef %620, ptr noundef %623, ptr noundef %626, ptr noundef %628), !dbg !2163
  %630 = icmp ne i32 %629, 0, !dbg !2163
  br i1 %630, label %631, label %632, !dbg !2164

631:                                              ; preds = %612
  br label %487, !dbg !2165

632:                                              ; preds = %612
  %633 = getelementptr inbounds [129 x i8], ptr %50, i64 0, i64 0, !dbg !2167
  %634 = call i32 @stun_is_error_response(ptr noundef %18, ptr noundef %49, ptr noundef %633, i64 noundef 129), !dbg !2169
  %635 = icmp ne i32 %634, 0, !dbg !2169
  br i1 %635, label %636, label %639, !dbg !2170

636:                                              ; preds = %632
  store i32 1, ptr %47, align 4, !dbg !2171
  %637 = load i32, ptr %49, align 4, !dbg !2173
  %638 = getelementptr inbounds [129 x i8], ptr %50, i64 0, i64 0, !dbg !2174
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.28, i32 noundef %637, ptr noundef %638), !dbg !2175
  store i32 -1, ptr %7, align 4, !dbg !2176
  br label %646, !dbg !2176

639:                                              ; preds = %632
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.36), !dbg !2177
  br label %640

640:                                              ; preds = %639
  br label %641

641:                                              ; preds = %640
  br label %642

642:                                              ; preds = %641, %611
  br label %644, !dbg !2179

643:                                              ; preds = %592
  call void @perror(ptr noundef @.str.31), !dbg !2180
  call void @exit(i32 noundef -1) #12, !dbg !2182
  unreachable, !dbg !2182

644:                                              ; preds = %642
  br label %577, !dbg !2101, !llvm.loop !2183

645:                                              ; preds = %577
  store i32 0, ptr %7, align 4, !dbg !2185
  br label %646, !dbg !2185

646:                                              ; preds = %645, %636, %575, %540, %401, %386, %361, %311, %263, %242, %211, %186
  %647 = load i32, ptr %7, align 4, !dbg !2186
  ret i32 %647, !dbg !2186
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_allocate_address_family(ptr noundef %0) #0 !dbg !2187 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2190, metadata !DIExpression()), !dbg !2191
  %4 = load ptr, ptr %3, align 8, !dbg !2192
  %5 = getelementptr inbounds %struct.sockaddr, ptr %4, i32 0, i32 0, !dbg !2194
  %6 = load i16, ptr %5, align 4, !dbg !2194
  %7 = zext i16 %6 to i32, !dbg !2192
  %8 = icmp eq i32 %7, 2, !dbg !2195
  br i1 %8, label %9, label %10, !dbg !2196

9:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !2197
  br label %18, !dbg !2197

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !2198
  %12 = getelementptr inbounds %struct.sockaddr, ptr %11, i32 0, i32 0, !dbg !2200
  %13 = load i16, ptr %12, align 4, !dbg !2200
  %14 = zext i16 %13 to i32, !dbg !2198
  %15 = icmp eq i32 %14, 10, !dbg !2201
  br i1 %15, label %16, label %17, !dbg !2202

16:                                               ; preds = %10
  store i32 2, ptr %2, align 4, !dbg !2203
  br label %18, !dbg !2203

17:                                               ; preds = %10
  store i32 -1, ptr %2, align 4, !dbg !2204
  br label %18, !dbg !2204

18:                                               ; preds = %17, %16, %9
  %19 = load i32, ptr %2, align 4, !dbg !2205
  ret i32 %19, !dbg !2205
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turn_channel_bind(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !2206 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct._stun_buffer, align 8
  %11 = alloca %struct._stun_buffer, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [129 x i8], align 16
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2209, metadata !DIExpression()), !dbg !2210
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2211, metadata !DIExpression()), !dbg !2212
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2213, metadata !DIExpression()), !dbg !2214
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2215, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2217, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2219, metadata !DIExpression()), !dbg !2220
  br label %18, !dbg !2221

18:                                               ; preds = %119, %4
  call void @llvm.dbg.label(metadata !2222), !dbg !2223
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2224, metadata !DIExpression()), !dbg !2226
  store i32 0, ptr %12, align 4, !dbg !2226
  %19 = load i32, ptr @negative_test, align 4, !dbg !2227
  %20 = icmp ne i32 %19, 0, !dbg !2227
  br i1 %20, label %21, label %27, !dbg !2229

21:                                               ; preds = %18
  %22 = load ptr, ptr %9, align 8, !dbg !2230
  %23 = call i64 @random() #11, !dbg !2232
  %24 = trunc i64 %23 to i16, !dbg !2233
  %25 = call zeroext i16 @stun_set_channel_bind_request(ptr noundef %10, ptr noundef %22, i16 noundef zeroext %24), !dbg !2234
  %26 = load ptr, ptr %7, align 8, !dbg !2235
  store i16 %25, ptr %26, align 2, !dbg !2236
  br label %33, !dbg !2237

27:                                               ; preds = %18
  %28 = load ptr, ptr %9, align 8, !dbg !2238
  %29 = load ptr, ptr %7, align 8, !dbg !2240
  %30 = load i16, ptr %29, align 2, !dbg !2241
  %31 = call zeroext i16 @stun_set_channel_bind_request(ptr noundef %10, ptr noundef %28, i16 noundef zeroext %30), !dbg !2242
  %32 = load ptr, ptr %7, align 8, !dbg !2243
  store i16 %31, ptr %32, align 2, !dbg !2244
  br label %33

33:                                               ; preds = %27, %21
  call void @add_origin(ptr noundef %10), !dbg !2245
  %34 = load ptr, ptr %8, align 8, !dbg !2246
  %35 = call i32 @add_integrity(ptr noundef %34, ptr noundef %10), !dbg !2248
  %36 = icmp slt i32 %35, 0, !dbg !2249
  br i1 %36, label %37, label %38, !dbg !2250

37:                                               ; preds = %33
  store i32 -1, ptr %5, align 4, !dbg !2251
  br label %134, !dbg !2251

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct._stun_buffer, ptr %10, i32 0, i32 1, !dbg !2252
  %40 = getelementptr inbounds [65507 x i8], ptr %39, i64 0, i64 0, !dbg !2253
  %41 = getelementptr inbounds %struct._stun_buffer, ptr %10, i32 0, i32 2, !dbg !2254
  %42 = call i32 @stun_attr_add_fingerprint_str(ptr noundef %40, ptr noundef %41), !dbg !2255
  br label %43, !dbg !2256

43:                                               ; preds = %58, %38
  %44 = load i32, ptr %12, align 4, !dbg !2257
  %45 = icmp ne i32 %44, 0, !dbg !2258
  %46 = xor i1 %45, true, !dbg !2258
  br i1 %46, label %47, label %59, !dbg !2256

47:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2259, metadata !DIExpression()), !dbg !2261
  %48 = load ptr, ptr %8, align 8, !dbg !2262
  %49 = call i32 @send_buffer(ptr noundef %48, ptr noundef %10, i32 noundef 0, ptr noundef null), !dbg !2263
  store i32 %49, ptr %13, align 4, !dbg !2261
  %50 = load i32, ptr %13, align 4, !dbg !2264
  %51 = icmp sgt i32 %50, 0, !dbg !2266
  br i1 %51, label %52, label %57, !dbg !2267

52:                                               ; preds = %47
  %53 = load i32, ptr %6, align 4, !dbg !2268
  %54 = icmp ne i32 %53, 0, !dbg !2268
  br i1 %54, label %55, label %56, !dbg !2271

55:                                               ; preds = %52
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.37), !dbg !2272
  br label %56, !dbg !2274

56:                                               ; preds = %55, %52
  store i32 1, ptr %12, align 4, !dbg !2275
  br label %58, !dbg !2276

57:                                               ; preds = %47
  call void @perror(ptr noundef @.str.10), !dbg !2277
  call void @exit(i32 noundef 1) #12, !dbg !2279
  unreachable, !dbg !2279

58:                                               ; preds = %56
  br label %43, !dbg !2256, !llvm.loop !2280

59:                                               ; preds = %43
  %60 = call i32 @not_rare_event(), !dbg !2282
  %61 = icmp ne i32 %60, 0, !dbg !2282
  br i1 %61, label %62, label %63, !dbg !2284

62:                                               ; preds = %59
  store i32 0, ptr %5, align 4, !dbg !2285
  br label %134, !dbg !2285

63:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2286, metadata !DIExpression()), !dbg !2288
  store i32 0, ptr %14, align 4, !dbg !2288
  br label %64, !dbg !2289

64:                                               ; preds = %132, %63
  %65 = load i32, ptr %14, align 4, !dbg !2290
  %66 = icmp ne i32 %65, 0, !dbg !2291
  %67 = xor i1 %66, true, !dbg !2291
  br i1 %67, label %68, label %133, !dbg !2289

68:                                               ; preds = %64
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2292, metadata !DIExpression()), !dbg !2294
  %69 = load ptr, ptr %8, align 8, !dbg !2295
  %70 = call i32 @recv_buffer(ptr noundef %69, ptr noundef %11, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef %10), !dbg !2296
  store i32 %70, ptr %15, align 4, !dbg !2294
  %71 = load i32, ptr %15, align 4, !dbg !2297
  %72 = icmp sgt i32 %71, 0, !dbg !2299
  br i1 %72, label %73, label %131, !dbg !2300

73:                                               ; preds = %68
  %74 = load i32, ptr %6, align 4, !dbg !2301
  %75 = icmp ne i32 %74, 0, !dbg !2301
  br i1 %75, label %76, label %77, !dbg !2304

76:                                               ; preds = %73
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.38), !dbg !2305
  br label %77, !dbg !2307

77:                                               ; preds = %76, %73
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2308, metadata !DIExpression()), !dbg !2309
  store i32 0, ptr %16, align 4, !dbg !2309
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2310, metadata !DIExpression()), !dbg !2311
  %78 = call i32 @stun_is_success_response(ptr noundef %11), !dbg !2312
  %79 = icmp ne i32 %78, 0, !dbg !2312
  br i1 %79, label %80, label %100, !dbg !2314

80:                                               ; preds = %77
  store i32 1, ptr %14, align 4, !dbg !2315
  %81 = load ptr, ptr %8, align 8, !dbg !2317
  %82 = getelementptr inbounds %struct.app_ur_conn_info, ptr %81, i32 0, i32 10, !dbg !2319
  %83 = getelementptr inbounds [128 x i8], ptr %82, i64 0, i64 0, !dbg !2317
  %84 = load i8, ptr %83, align 4, !dbg !2317
  %85 = icmp ne i8 %84, 0, !dbg !2317
  br i1 %85, label %86, label %92, !dbg !2320

86:                                               ; preds = %80
  %87 = load ptr, ptr %8, align 8, !dbg !2321
  %88 = call i32 @check_integrity(ptr noundef %87, ptr noundef %11), !dbg !2324
  %89 = icmp slt i32 %88, 0, !dbg !2325
  br i1 %89, label %90, label %91, !dbg !2326

90:                                               ; preds = %86
  store i32 -1, ptr %5, align 4, !dbg !2327
  br label %134, !dbg !2327

91:                                               ; preds = %86
  br label %92, !dbg !2328

92:                                               ; preds = %91, %80
  %93 = load i32, ptr %6, align 4, !dbg !2329
  %94 = icmp ne i32 %93, 0, !dbg !2329
  br i1 %94, label %95, label %99, !dbg !2331

95:                                               ; preds = %92
  %96 = load ptr, ptr %7, align 8, !dbg !2332
  %97 = load i16, ptr %96, align 2, !dbg !2334
  %98 = zext i16 %97 to i32, !dbg !2335
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.39, i32 noundef %98), !dbg !2336
  br label %99, !dbg !2337

99:                                               ; preds = %95, %92
  br label %130, !dbg !2338

100:                                              ; preds = %77
  %101 = getelementptr inbounds %struct._stun_buffer, ptr %11, i32 0, i32 1, !dbg !2339
  %102 = getelementptr inbounds [65507 x i8], ptr %101, i64 0, i64 0, !dbg !2341
  %103 = getelementptr inbounds %struct._stun_buffer, ptr %11, i32 0, i32 2, !dbg !2342
  %104 = load i64, ptr %103, align 8, !dbg !2342
  %105 = getelementptr inbounds [129 x i8], ptr %17, i64 0, i64 0, !dbg !2343
  %106 = load ptr, ptr %8, align 8, !dbg !2344
  %107 = getelementptr inbounds %struct.app_ur_conn_info, ptr %106, i32 0, i32 11, !dbg !2345
  %108 = getelementptr inbounds [128 x i8], ptr %107, i64 0, i64 0, !dbg !2344
  %109 = load ptr, ptr %8, align 8, !dbg !2346
  %110 = getelementptr inbounds %struct.app_ur_conn_info, ptr %109, i32 0, i32 10, !dbg !2347
  %111 = getelementptr inbounds [128 x i8], ptr %110, i64 0, i64 0, !dbg !2346
  %112 = load ptr, ptr %8, align 8, !dbg !2348
  %113 = getelementptr inbounds %struct.app_ur_conn_info, ptr %112, i32 0, i32 13, !dbg !2349
  %114 = getelementptr inbounds [1026 x i8], ptr %113, i64 0, i64 0, !dbg !2348
  %115 = load ptr, ptr %8, align 8, !dbg !2350
  %116 = getelementptr inbounds %struct.app_ur_conn_info, ptr %115, i32 0, i32 12, !dbg !2351
  %117 = call i32 @stun_is_challenge_response_str(ptr noundef %102, i64 noundef %104, ptr noundef %16, ptr noundef %105, i64 noundef 129, ptr noundef %108, ptr noundef %111, ptr noundef %114, ptr noundef %116), !dbg !2352
  %118 = icmp ne i32 %117, 0, !dbg !2352
  br i1 %118, label %119, label %120, !dbg !2353

119:                                              ; preds = %100
  br label %18, !dbg !2354

120:                                              ; preds = %100
  %121 = getelementptr inbounds [129 x i8], ptr %17, i64 0, i64 0, !dbg !2356
  %122 = call i32 @stun_is_error_response(ptr noundef %11, ptr noundef %16, ptr noundef %121, i64 noundef 129), !dbg !2358
  %123 = icmp ne i32 %122, 0, !dbg !2358
  br i1 %123, label %124, label %127, !dbg !2359

124:                                              ; preds = %120
  store i32 1, ptr %14, align 4, !dbg !2360
  %125 = load i32, ptr %16, align 4, !dbg !2362
  %126 = getelementptr inbounds [129 x i8], ptr %17, i64 0, i64 0, !dbg !2363
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.40, i32 noundef %125, ptr noundef %126), !dbg !2364
  store i32 -1, ptr %5, align 4, !dbg !2365
  br label %134, !dbg !2365

127:                                              ; preds = %120
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.41), !dbg !2366
  br label %128

128:                                              ; preds = %127
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129, %99
  br label %132, !dbg !2368

131:                                              ; preds = %68
  call void @perror(ptr noundef @.str.31), !dbg !2369
  call void @exit(i32 noundef -1) #12, !dbg !2371
  unreachable, !dbg !2371

132:                                              ; preds = %130
  br label %64, !dbg !2289, !llvm.loop !2372

133:                                              ; preds = %64
  store i32 0, ptr %5, align 4, !dbg !2374
  br label %134, !dbg !2374

134:                                              ; preds = %133, %124, %90, %62, %37
  %135 = load i32, ptr %5, align 4, !dbg !2375
  ret i32 %135, !dbg !2375
}

declare i32 @make_ioa_addr(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turn_create_permission(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !2376 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca [129 x i8], align 16
  %11 = alloca %struct._stun_buffer, align 8
  %12 = alloca %struct._stun_buffer, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [129 x i8], align 16
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2379, metadata !DIExpression()), !dbg !2380
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2381, metadata !DIExpression()), !dbg !2382
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2383, metadata !DIExpression()), !dbg !2384
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2385, metadata !DIExpression()), !dbg !2386
  %20 = load i32, ptr @no_permissions, align 4, !dbg !2387
  %21 = icmp ne i32 %20, 0, !dbg !2387
  br i1 %21, label %25, label %22, !dbg !2389

22:                                               ; preds = %4
  %23 = load i32, ptr %9, align 4, !dbg !2390
  %24 = icmp slt i32 %23, 1, !dbg !2391
  br i1 %24, label %25, label %26, !dbg !2392

25:                                               ; preds = %22, %4
  store i32 0, ptr %5, align 4, !dbg !2393
  br label %147, !dbg !2393

26:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2394, metadata !DIExpression()), !dbg !2395
  call void @llvm.memset.p0.i64(ptr align 16 %10, i8 0, i64 129, i1 false), !dbg !2395
  %27 = load i32, ptr %6, align 4, !dbg !2396
  %28 = icmp ne i32 %27, 0, !dbg !2396
  br i1 %28, label %29, label %33, !dbg !2398

29:                                               ; preds = %26
  %30 = load ptr, ptr %8, align 8, !dbg !2399
  %31 = getelementptr inbounds [129 x i8], ptr %10, i64 0, i64 0, !dbg !2401
  %32 = call i32 @addr_to_string(ptr noundef %30, ptr noundef %31), !dbg !2402
  br label %33, !dbg !2403

33:                                               ; preds = %29, %26
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2404, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2406, metadata !DIExpression()), !dbg !2407
  br label %34, !dbg !2408

34:                                               ; preds = %132, %33
  call void @llvm.dbg.label(metadata !2409), !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2411, metadata !DIExpression()), !dbg !2413
  store i32 0, ptr %13, align 4, !dbg !2413
  call void @stun_init_request(i16 noundef zeroext 8, ptr noundef %11), !dbg !2414
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2415, metadata !DIExpression()), !dbg !2417
  store i32 0, ptr %14, align 4, !dbg !2418
  br label %35, !dbg !2420

35:                                               ; preds = %45, %34
  %36 = load i32, ptr %14, align 4, !dbg !2421
  %37 = load i32, ptr %9, align 4, !dbg !2423
  %38 = icmp slt i32 %36, %37, !dbg !2424
  br i1 %38, label %39, label %48, !dbg !2425

39:                                               ; preds = %35
  %40 = load ptr, ptr %8, align 8, !dbg !2426
  %41 = load i32, ptr %14, align 4, !dbg !2428
  %42 = sext i32 %41 to i64, !dbg !2429
  %43 = getelementptr inbounds %union.ioa_addr, ptr %40, i64 %42, !dbg !2429
  %44 = call i32 @stun_attr_add_addr(ptr noundef %11, i16 noundef zeroext 18, ptr noundef %43), !dbg !2430
  br label %45, !dbg !2431

45:                                               ; preds = %39
  %46 = load i32, ptr %14, align 4, !dbg !2432
  %47 = add nsw i32 %46, 1, !dbg !2432
  store i32 %47, ptr %14, align 4, !dbg !2432
  br label %35, !dbg !2433, !llvm.loop !2434

48:                                               ; preds = %35
  call void @add_origin(ptr noundef %11), !dbg !2436
  %49 = load ptr, ptr %7, align 8, !dbg !2437
  %50 = call i32 @add_integrity(ptr noundef %49, ptr noundef %11), !dbg !2439
  %51 = icmp slt i32 %50, 0, !dbg !2440
  br i1 %51, label %52, label %53, !dbg !2441

52:                                               ; preds = %48
  store i32 -1, ptr %5, align 4, !dbg !2442
  br label %147, !dbg !2442

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct._stun_buffer, ptr %11, i32 0, i32 1, !dbg !2443
  %55 = getelementptr inbounds [65507 x i8], ptr %54, i64 0, i64 0, !dbg !2444
  %56 = getelementptr inbounds %struct._stun_buffer, ptr %11, i32 0, i32 2, !dbg !2445
  %57 = call i32 @stun_attr_add_fingerprint_str(ptr noundef %55, ptr noundef %56), !dbg !2446
  br label %58, !dbg !2447

58:                                               ; preds = %74, %53
  %59 = load i32, ptr %13, align 4, !dbg !2448
  %60 = icmp ne i32 %59, 0, !dbg !2449
  %61 = xor i1 %60, true, !dbg !2449
  br i1 %61, label %62, label %75, !dbg !2447

62:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2450, metadata !DIExpression()), !dbg !2452
  %63 = load ptr, ptr %7, align 8, !dbg !2453
  %64 = call i32 @send_buffer(ptr noundef %63, ptr noundef %11, i32 noundef 0, ptr noundef null), !dbg !2454
  store i32 %64, ptr %15, align 4, !dbg !2452
  %65 = load i32, ptr %15, align 4, !dbg !2455
  %66 = icmp sgt i32 %65, 0, !dbg !2457
  br i1 %66, label %67, label %73, !dbg !2458

67:                                               ; preds = %62
  %68 = load i32, ptr %6, align 4, !dbg !2459
  %69 = icmp ne i32 %68, 0, !dbg !2459
  br i1 %69, label %70, label %72, !dbg !2462

70:                                               ; preds = %67
  %71 = getelementptr inbounds [129 x i8], ptr %10, i64 0, i64 0, !dbg !2463
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.42, ptr noundef %71), !dbg !2465
  br label %72, !dbg !2466

72:                                               ; preds = %70, %67
  store i32 1, ptr %13, align 4, !dbg !2467
  br label %74, !dbg !2468

73:                                               ; preds = %62
  call void @perror(ptr noundef @.str.10), !dbg !2469
  call void @exit(i32 noundef 1) #12, !dbg !2471
  unreachable, !dbg !2471

74:                                               ; preds = %72
  br label %58, !dbg !2447, !llvm.loop !2472

75:                                               ; preds = %58
  %76 = call i32 @not_rare_event(), !dbg !2474
  %77 = icmp ne i32 %76, 0, !dbg !2474
  br i1 %77, label %78, label %79, !dbg !2476

78:                                               ; preds = %75
  store i32 0, ptr %5, align 4, !dbg !2477
  br label %147, !dbg !2477

79:                                               ; preds = %75
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2478, metadata !DIExpression()), !dbg !2480
  store i32 0, ptr %16, align 4, !dbg !2480
  br label %80, !dbg !2481

80:                                               ; preds = %145, %79
  %81 = load i32, ptr %16, align 4, !dbg !2482
  %82 = icmp ne i32 %81, 0, !dbg !2483
  %83 = xor i1 %82, true, !dbg !2483
  br i1 %83, label %84, label %146, !dbg !2481

84:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2484, metadata !DIExpression()), !dbg !2486
  %85 = load ptr, ptr %7, align 8, !dbg !2487
  %86 = call i32 @recv_buffer(ptr noundef %85, ptr noundef %12, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef %11), !dbg !2488
  store i32 %86, ptr %17, align 4, !dbg !2486
  %87 = load i32, ptr %17, align 4, !dbg !2489
  %88 = icmp sgt i32 %87, 0, !dbg !2491
  br i1 %88, label %89, label %144, !dbg !2492

89:                                               ; preds = %84
  %90 = load i32, ptr %6, align 4, !dbg !2493
  %91 = icmp ne i32 %90, 0, !dbg !2493
  br i1 %91, label %92, label %93, !dbg !2496

92:                                               ; preds = %89
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.43), !dbg !2497
  br label %93, !dbg !2499

93:                                               ; preds = %92, %89
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2500, metadata !DIExpression()), !dbg !2501
  store i32 0, ptr %18, align 4, !dbg !2501
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2502, metadata !DIExpression()), !dbg !2503
  %94 = call i32 @stun_is_success_response(ptr noundef %12), !dbg !2504
  %95 = icmp ne i32 %94, 0, !dbg !2504
  br i1 %95, label %96, label %113, !dbg !2506

96:                                               ; preds = %93
  store i32 1, ptr %16, align 4, !dbg !2507
  %97 = load ptr, ptr %7, align 8, !dbg !2509
  %98 = getelementptr inbounds %struct.app_ur_conn_info, ptr %97, i32 0, i32 10, !dbg !2511
  %99 = getelementptr inbounds [128 x i8], ptr %98, i64 0, i64 0, !dbg !2509
  %100 = load i8, ptr %99, align 4, !dbg !2509
  %101 = icmp ne i8 %100, 0, !dbg !2509
  br i1 %101, label %102, label %108, !dbg !2512

102:                                              ; preds = %96
  %103 = load ptr, ptr %7, align 8, !dbg !2513
  %104 = call i32 @check_integrity(ptr noundef %103, ptr noundef %12), !dbg !2516
  %105 = icmp slt i32 %104, 0, !dbg !2517
  br i1 %105, label %106, label %107, !dbg !2518

106:                                              ; preds = %102
  store i32 -1, ptr %5, align 4, !dbg !2519
  br label %147, !dbg !2519

107:                                              ; preds = %102
  br label %108, !dbg !2520

108:                                              ; preds = %107, %96
  %109 = load i32, ptr %6, align 4, !dbg !2521
  %110 = icmp ne i32 %109, 0, !dbg !2521
  br i1 %110, label %111, label %112, !dbg !2523

111:                                              ; preds = %108
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.23), !dbg !2524
  br label %112, !dbg !2526

112:                                              ; preds = %111, %108
  br label %143, !dbg !2527

113:                                              ; preds = %93
  %114 = getelementptr inbounds %struct._stun_buffer, ptr %12, i32 0, i32 1, !dbg !2528
  %115 = getelementptr inbounds [65507 x i8], ptr %114, i64 0, i64 0, !dbg !2530
  %116 = getelementptr inbounds %struct._stun_buffer, ptr %12, i32 0, i32 2, !dbg !2531
  %117 = load i64, ptr %116, align 8, !dbg !2531
  %118 = getelementptr inbounds [129 x i8], ptr %19, i64 0, i64 0, !dbg !2532
  %119 = load ptr, ptr %7, align 8, !dbg !2533
  %120 = getelementptr inbounds %struct.app_ur_conn_info, ptr %119, i32 0, i32 11, !dbg !2534
  %121 = getelementptr inbounds [128 x i8], ptr %120, i64 0, i64 0, !dbg !2533
  %122 = load ptr, ptr %7, align 8, !dbg !2535
  %123 = getelementptr inbounds %struct.app_ur_conn_info, ptr %122, i32 0, i32 10, !dbg !2536
  %124 = getelementptr inbounds [128 x i8], ptr %123, i64 0, i64 0, !dbg !2535
  %125 = load ptr, ptr %7, align 8, !dbg !2537
  %126 = getelementptr inbounds %struct.app_ur_conn_info, ptr %125, i32 0, i32 13, !dbg !2538
  %127 = getelementptr inbounds [1026 x i8], ptr %126, i64 0, i64 0, !dbg !2537
  %128 = load ptr, ptr %7, align 8, !dbg !2539
  %129 = getelementptr inbounds %struct.app_ur_conn_info, ptr %128, i32 0, i32 12, !dbg !2540
  %130 = call i32 @stun_is_challenge_response_str(ptr noundef %115, i64 noundef %117, ptr noundef %18, ptr noundef %118, i64 noundef 129, ptr noundef %121, ptr noundef %124, ptr noundef %127, ptr noundef %129), !dbg !2541
  %131 = icmp ne i32 %130, 0, !dbg !2541
  br i1 %131, label %132, label %133, !dbg !2542

132:                                              ; preds = %113
  br label %34, !dbg !2543

133:                                              ; preds = %113
  %134 = getelementptr inbounds [129 x i8], ptr %19, i64 0, i64 0, !dbg !2545
  %135 = call i32 @stun_is_error_response(ptr noundef %12, ptr noundef %18, ptr noundef %134, i64 noundef 129), !dbg !2547
  %136 = icmp ne i32 %135, 0, !dbg !2547
  br i1 %136, label %137, label %140, !dbg !2548

137:                                              ; preds = %133
  store i32 1, ptr %16, align 4, !dbg !2549
  %138 = load i32, ptr %18, align 4, !dbg !2551
  %139 = getelementptr inbounds [129 x i8], ptr %19, i64 0, i64 0, !dbg !2552
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.44, i32 noundef %138, ptr noundef %139), !dbg !2553
  store i32 -1, ptr %5, align 4, !dbg !2554
  br label %147, !dbg !2554

140:                                              ; preds = %133
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.45), !dbg !2555
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142, %112
  br label %145, !dbg !2557

144:                                              ; preds = %84
  call void @perror(ptr noundef @.str.31), !dbg !2558
  call void @exit(i32 noundef -1) #12, !dbg !2560
  unreachable, !dbg !2560

145:                                              ; preds = %143
  br label %80, !dbg !2481, !llvm.loop !2561

146:                                              ; preds = %80
  store i32 0, ptr %5, align 4, !dbg !2563
  br label %147, !dbg !2563

147:                                              ; preds = %146, %137, %106, %78, %52, %25
  %148 = load i32, ptr %5, align 4, !dbg !2564
  ret i32 %148, !dbg !2564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_c2c_connection(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) #0 !dbg !2565 {
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca %union.ioa_addr, align 4
  %31 = alloca %union.ioa_addr, align 4
  %32 = alloca %union.ioa_addr, align 4
  %33 = alloca %union.ioa_addr, align 4
  %34 = alloca i16, align 2
  %35 = alloca [1025 x i8], align 16
  %36 = alloca i64, align 8
  %37 = alloca ptr, align 8
  %38 = alloca %union.ioa_addr, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i16, align 2
  %42 = alloca i32, align 4
  %43 = alloca ptr, align 8
  %44 = alloca ptr, align 8
  %45 = alloca [25 x %union.ioa_addr], align 16
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca ptr, align 8
  %49 = alloca ptr, align 8
  %50 = alloca %union.ioa_addr, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca ptr, align 8
  store i16 %0, ptr %16, align 2
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2568, metadata !DIExpression()), !dbg !2569
  store ptr %1, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2570, metadata !DIExpression()), !dbg !2571
  store ptr %2, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2572, metadata !DIExpression()), !dbg !2573
  store ptr %3, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2574, metadata !DIExpression()), !dbg !2575
  store i32 %4, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2576, metadata !DIExpression()), !dbg !2577
  store ptr %5, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2578, metadata !DIExpression()), !dbg !2579
  store ptr %6, ptr %22, align 8
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2580, metadata !DIExpression()), !dbg !2581
  store ptr %7, ptr %23, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2582, metadata !DIExpression()), !dbg !2583
  store ptr %8, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2584, metadata !DIExpression()), !dbg !2585
  store ptr %9, ptr %25, align 8
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2586, metadata !DIExpression()), !dbg !2587
  store ptr %10, ptr %26, align 8
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2588, metadata !DIExpression()), !dbg !2589
  store ptr %11, ptr %27, align 8
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2590, metadata !DIExpression()), !dbg !2591
  store ptr %12, ptr %28, align 8
  call void @llvm.dbg.declare(metadata ptr %28, metadata !2592, metadata !DIExpression()), !dbg !2593
  store ptr %13, ptr %29, align 8
  call void @llvm.dbg.declare(metadata ptr %29, metadata !2594, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.declare(metadata ptr %30, metadata !2596, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.declare(metadata ptr %31, metadata !2598, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.declare(metadata ptr %32, metadata !2600, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.declare(metadata ptr %33, metadata !2602, metadata !DIExpression()), !dbg !2603
  %54 = load ptr, ptr %23, align 8, !dbg !2604
  store i16 0, ptr %54, align 2, !dbg !2605
  %55 = load ptr, ptr %27, align 8, !dbg !2606
  store i16 0, ptr %55, align 2, !dbg !2607
  %56 = load ptr, ptr %25, align 8, !dbg !2608
  %57 = icmp ne ptr %56, null, !dbg !2608
  br i1 %57, label %58, label %60, !dbg !2610

58:                                               ; preds = %14
  %59 = load ptr, ptr %25, align 8, !dbg !2611
  store i16 0, ptr %59, align 2, !dbg !2612
  br label %60, !dbg !2613

60:                                               ; preds = %58, %14
  %61 = load ptr, ptr %29, align 8, !dbg !2614
  %62 = icmp ne ptr %61, null, !dbg !2614
  br i1 %62, label %63, label %65, !dbg !2616

63:                                               ; preds = %60
  %64 = load ptr, ptr %29, align 8, !dbg !2617
  store i16 0, ptr %64, align 2, !dbg !2618
  br label %65, !dbg !2619

65:                                               ; preds = %63, %60
  %66 = load i16, ptr %16, align 2, !dbg !2620
  %67 = load ptr, ptr %17, align 8, !dbg !2622
  %68 = load ptr, ptr %18, align 8, !dbg !2623
  %69 = load ptr, ptr %19, align 8, !dbg !2624
  %70 = load i32, ptr %20, align 4, !dbg !2625
  %71 = load ptr, ptr %21, align 8, !dbg !2626
  %72 = call i32 @clnet_connect(i16 noundef zeroext %66, ptr noundef %67, ptr noundef %68, ptr noundef %69, i32 noundef %70, ptr noundef %71), !dbg !2627
  %73 = icmp slt i32 %72, 0, !dbg !2628
  br i1 %73, label %74, label %75, !dbg !2629

74:                                               ; preds = %65
  call void @exit(i32 noundef -1) #12, !dbg !2630
  unreachable, !dbg !2630

75:                                               ; preds = %65
  call void @llvm.dbg.declare(metadata ptr %34, metadata !2632, metadata !DIExpression()), !dbg !2633
  %76 = load i16, ptr %16, align 2, !dbg !2634
  store i16 %76, ptr %34, align 2, !dbg !2633
  call void @llvm.dbg.declare(metadata ptr %35, metadata !2635, metadata !DIExpression()), !dbg !2636
  br label %77, !dbg !2637

77:                                               ; preds = %75
  %78 = getelementptr inbounds [1025 x i8], ptr %35, i64 0, i64 0, !dbg !2638
  %79 = load ptr, ptr %17, align 8, !dbg !2638
  %80 = icmp ne ptr %78, %79, !dbg !2638
  br i1 %80, label %81, label %90, !dbg !2641

81:                                               ; preds = %77
  call void @llvm.dbg.declare(metadata ptr %36, metadata !2642, metadata !DIExpression()), !dbg !2646
  store i64 1025, ptr %36, align 8, !dbg !2646
  %82 = getelementptr inbounds [1025 x i8], ptr %35, i64 0, i64 0, !dbg !2646
  %83 = load ptr, ptr %17, align 8, !dbg !2646
  %84 = load i64, ptr %36, align 8, !dbg !2646
  %85 = call ptr @strncpy(ptr noundef %82, ptr noundef %83, i64 noundef %84) #11, !dbg !2646
  %86 = getelementptr inbounds [1025 x i8], ptr %35, i64 0, i64 0, !dbg !2646
  %87 = load i64, ptr %36, align 8, !dbg !2646
  %88 = sub i64 %87, 1, !dbg !2646
  %89 = getelementptr inbounds i8, ptr %86, i64 %88, !dbg !2646
  store i8 0, ptr %89, align 1, !dbg !2646
  br label %90, !dbg !2647

90:                                               ; preds = %81, %77
  br label %91, !dbg !2641

91:                                               ; preds = %90
  %92 = load i32, ptr %20, align 4, !dbg !2648
  %93 = load ptr, ptr %21, align 8, !dbg !2649
  %94 = load i32, ptr @default_address_family, align 4, !dbg !2650
  %95 = getelementptr inbounds [1025 x i8], ptr %35, i64 0, i64 0, !dbg !2651
  %96 = call i32 @clnet_allocate(i32 noundef %92, ptr noundef %93, ptr noundef %30, i32 noundef %94, ptr noundef %95, ptr noundef %34), !dbg !2652
  %97 = call i32 @rare_event(), !dbg !2653
  %98 = icmp ne i32 %97, 0, !dbg !2653
  br i1 %98, label %99, label %100, !dbg !2655

99:                                               ; preds = %91
  store i32 0, ptr %15, align 4, !dbg !2656
  br label %535, !dbg !2656

100:                                              ; preds = %91
  %101 = load i16, ptr %34, align 2, !dbg !2657
  %102 = getelementptr inbounds [1025 x i8], ptr %35, i64 0, i64 0, !dbg !2659
  %103 = load ptr, ptr %18, align 8, !dbg !2660
  %104 = load ptr, ptr %19, align 8, !dbg !2661
  %105 = load i32, ptr %20, align 4, !dbg !2662
  %106 = load ptr, ptr %22, align 8, !dbg !2663
  %107 = call i32 @clnet_connect(i16 noundef zeroext %101, ptr noundef %102, ptr noundef %103, ptr noundef %104, i32 noundef %105, ptr noundef %106), !dbg !2664
  %108 = icmp slt i32 %107, 0, !dbg !2665
  br i1 %108, label %109, label %110, !dbg !2666

109:                                              ; preds = %100
  call void @exit(i32 noundef -1) #12, !dbg !2667
  unreachable, !dbg !2667

110:                                              ; preds = %100
  %111 = load i32, ptr @no_rtcp, align 4, !dbg !2669
  %112 = icmp ne i32 %111, 0, !dbg !2669
  br i1 %112, label %124, label %113, !dbg !2671

113:                                              ; preds = %110
  %114 = load i16, ptr %34, align 2, !dbg !2672
  %115 = getelementptr inbounds [1025 x i8], ptr %35, i64 0, i64 0, !dbg !2674
  %116 = load ptr, ptr %18, align 8, !dbg !2675
  %117 = load ptr, ptr %19, align 8, !dbg !2676
  %118 = load i32, ptr %20, align 4, !dbg !2677
  %119 = load ptr, ptr %24, align 8, !dbg !2678
  %120 = call i32 @clnet_connect(i16 noundef zeroext %114, ptr noundef %115, ptr noundef %116, ptr noundef %117, i32 noundef %118, ptr noundef %119), !dbg !2679
  %121 = icmp slt i32 %120, 0, !dbg !2680
  br i1 %121, label %122, label %123, !dbg !2681

122:                                              ; preds = %113
  call void @exit(i32 noundef -1) #12, !dbg !2682
  unreachable, !dbg !2682

123:                                              ; preds = %113
  br label %124, !dbg !2684

124:                                              ; preds = %123, %110
  %125 = load i32, ptr @passive_tcp, align 4, !dbg !2685
  %126 = icmp ne i32 %125, 0, !dbg !2685
  br i1 %126, label %127, label %130, !dbg !2687

127:                                              ; preds = %124
  %128 = load ptr, ptr %26, align 8, !dbg !2688
  %129 = getelementptr inbounds %struct.app_ur_conn_info, ptr %128, i32 0, i32 19, !dbg !2689
  store i32 1, ptr %129, align 8, !dbg !2690
  br label %130, !dbg !2688

130:                                              ; preds = %127, %124
  %131 = load i16, ptr %34, align 2, !dbg !2691
  %132 = getelementptr inbounds [1025 x i8], ptr %35, i64 0, i64 0, !dbg !2693
  %133 = load ptr, ptr %18, align 8, !dbg !2694
  %134 = load ptr, ptr %19, align 8, !dbg !2695
  %135 = load i32, ptr %20, align 4, !dbg !2696
  %136 = load ptr, ptr %26, align 8, !dbg !2697
  %137 = call i32 @clnet_connect(i16 noundef zeroext %131, ptr noundef %132, ptr noundef %133, ptr noundef %134, i32 noundef %135, ptr noundef %136), !dbg !2698
  %138 = icmp slt i32 %137, 0, !dbg !2699
  br i1 %138, label %139, label %140, !dbg !2700

139:                                              ; preds = %130
  call void @exit(i32 noundef -1) #12, !dbg !2701
  unreachable, !dbg !2701

140:                                              ; preds = %130
  %141 = load i32, ptr @no_rtcp, align 4, !dbg !2703
  %142 = icmp ne i32 %141, 0, !dbg !2703
  br i1 %142, label %154, label %143, !dbg !2705

143:                                              ; preds = %140
  %144 = load i16, ptr %34, align 2, !dbg !2706
  %145 = getelementptr inbounds [1025 x i8], ptr %35, i64 0, i64 0, !dbg !2708
  %146 = load ptr, ptr %18, align 8, !dbg !2709
  %147 = load ptr, ptr %19, align 8, !dbg !2710
  %148 = load i32, ptr %20, align 4, !dbg !2711
  %149 = load ptr, ptr %28, align 8, !dbg !2712
  %150 = call i32 @clnet_connect(i16 noundef zeroext %144, ptr noundef %145, ptr noundef %146, ptr noundef %147, i32 noundef %148, ptr noundef %149), !dbg !2713
  %151 = icmp slt i32 %150, 0, !dbg !2714
  br i1 %151, label %152, label %153, !dbg !2715

152:                                              ; preds = %143
  call void @exit(i32 noundef -1) #12, !dbg !2716
  unreachable, !dbg !2716

153:                                              ; preds = %143
  br label %154, !dbg !2718

154:                                              ; preds = %153, %140
  %155 = load i32, ptr @no_rtcp, align 4, !dbg !2719
  %156 = icmp ne i32 %155, 0, !dbg !2719
  br i1 %156, label %202, label %157, !dbg !2721

157:                                              ; preds = %154
  %158 = load i32, ptr %20, align 4, !dbg !2722
  %159 = load ptr, ptr %22, align 8, !dbg !2725
  %160 = load i32, ptr @default_address_family, align 4, !dbg !2726
  %161 = call i32 @clnet_allocate(i32 noundef %158, ptr noundef %159, ptr noundef %30, i32 noundef %160, ptr noundef null, ptr noundef null), !dbg !2727
  %162 = icmp slt i32 %161, 0, !dbg !2728
  br i1 %162, label %163, label %164, !dbg !2729

163:                                              ; preds = %157
  call void @exit(i32 noundef -1) #12, !dbg !2730
  unreachable, !dbg !2730

164:                                              ; preds = %157
  %165 = call i32 @rare_event(), !dbg !2732
  %166 = icmp ne i32 %165, 0, !dbg !2732
  br i1 %166, label %167, label %168, !dbg !2734

167:                                              ; preds = %164
  store i32 0, ptr %15, align 4, !dbg !2735
  br label %535, !dbg !2735

168:                                              ; preds = %164
  %169 = load i32, ptr %20, align 4, !dbg !2736
  %170 = load ptr, ptr %24, align 8, !dbg !2738
  %171 = load i32, ptr @default_address_family, align 4, !dbg !2739
  %172 = call i32 @clnet_allocate(i32 noundef %169, ptr noundef %170, ptr noundef %31, i32 noundef %171, ptr noundef null, ptr noundef null), !dbg !2740
  %173 = icmp slt i32 %172, 0, !dbg !2741
  br i1 %173, label %174, label %175, !dbg !2742

174:                                              ; preds = %168
  call void @exit(i32 noundef -1) #12, !dbg !2743
  unreachable, !dbg !2743

175:                                              ; preds = %168
  %176 = call i32 @rare_event(), !dbg !2745
  %177 = icmp ne i32 %176, 0, !dbg !2745
  br i1 %177, label %178, label %179, !dbg !2747

178:                                              ; preds = %175
  store i32 0, ptr %15, align 4, !dbg !2748
  br label %535, !dbg !2748

179:                                              ; preds = %175
  %180 = load i32, ptr %20, align 4, !dbg !2749
  %181 = load ptr, ptr %26, align 8, !dbg !2751
  %182 = load i32, ptr @default_address_family, align 4, !dbg !2752
  %183 = call i32 @clnet_allocate(i32 noundef %180, ptr noundef %181, ptr noundef %32, i32 noundef %182, ptr noundef null, ptr noundef null), !dbg !2753
  %184 = icmp slt i32 %183, 0, !dbg !2754
  br i1 %184, label %185, label %186, !dbg !2755

185:                                              ; preds = %179
  call void @exit(i32 noundef -1) #12, !dbg !2756
  unreachable, !dbg !2756

186:                                              ; preds = %179
  %187 = call i32 @rare_event(), !dbg !2758
  %188 = icmp ne i32 %187, 0, !dbg !2758
  br i1 %188, label %189, label %190, !dbg !2760

189:                                              ; preds = %186
  store i32 0, ptr %15, align 4, !dbg !2761
  br label %535, !dbg !2761

190:                                              ; preds = %186
  %191 = load i32, ptr %20, align 4, !dbg !2762
  %192 = load ptr, ptr %28, align 8, !dbg !2764
  %193 = load i32, ptr @default_address_family, align 4, !dbg !2765
  %194 = call i32 @clnet_allocate(i32 noundef %191, ptr noundef %192, ptr noundef %33, i32 noundef %193, ptr noundef null, ptr noundef null), !dbg !2766
  %195 = icmp slt i32 %194, 0, !dbg !2767
  br i1 %195, label %196, label %197, !dbg !2768

196:                                              ; preds = %190
  call void @exit(i32 noundef -1) #12, !dbg !2769
  unreachable, !dbg !2769

197:                                              ; preds = %190
  %198 = call i32 @rare_event(), !dbg !2771
  %199 = icmp ne i32 %198, 0, !dbg !2771
  br i1 %199, label %200, label %201, !dbg !2773

200:                                              ; preds = %197
  store i32 0, ptr %15, align 4, !dbg !2774
  br label %535, !dbg !2774

201:                                              ; preds = %197
  br label %236, !dbg !2775

202:                                              ; preds = %154
  %203 = load i32, ptr %20, align 4, !dbg !2776
  %204 = load ptr, ptr %22, align 8, !dbg !2779
  %205 = load i32, ptr @default_address_family, align 4, !dbg !2780
  %206 = call i32 @clnet_allocate(i32 noundef %203, ptr noundef %204, ptr noundef %30, i32 noundef %205, ptr noundef null, ptr noundef null), !dbg !2781
  %207 = icmp slt i32 %206, 0, !dbg !2782
  br i1 %207, label %208, label %209, !dbg !2783

208:                                              ; preds = %202
  call void @exit(i32 noundef -1) #12, !dbg !2784
  unreachable, !dbg !2784

209:                                              ; preds = %202
  %210 = call i32 @rare_event(), !dbg !2786
  %211 = icmp ne i32 %210, 0, !dbg !2786
  br i1 %211, label %212, label %213, !dbg !2788

212:                                              ; preds = %209
  store i32 0, ptr %15, align 4, !dbg !2789
  br label %535, !dbg !2789

213:                                              ; preds = %209
  %214 = load ptr, ptr %26, align 8, !dbg !2790
  %215 = getelementptr inbounds %struct.app_ur_conn_info, ptr %214, i32 0, i32 19, !dbg !2792
  %216 = load i32, ptr %215, align 8, !dbg !2792
  %217 = icmp ne i32 %216, 0, !dbg !2793
  br i1 %217, label %230, label %218, !dbg !2794

218:                                              ; preds = %213
  %219 = load i32, ptr %20, align 4, !dbg !2795
  %220 = load ptr, ptr %26, align 8, !dbg !2798
  %221 = load i32, ptr @default_address_family, align 4, !dbg !2799
  %222 = call i32 @clnet_allocate(i32 noundef %219, ptr noundef %220, ptr noundef %32, i32 noundef %221, ptr noundef null, ptr noundef null), !dbg !2800
  %223 = icmp slt i32 %222, 0, !dbg !2801
  br i1 %223, label %224, label %225, !dbg !2802

224:                                              ; preds = %218
  call void @exit(i32 noundef -1) #12, !dbg !2803
  unreachable, !dbg !2803

225:                                              ; preds = %218
  %226 = call i32 @rare_event(), !dbg !2805
  %227 = icmp ne i32 %226, 0, !dbg !2805
  br i1 %227, label %228, label %229, !dbg !2807

228:                                              ; preds = %225
  store i32 0, ptr %15, align 4, !dbg !2808
  br label %535, !dbg !2808

229:                                              ; preds = %225
  br label %235, !dbg !2809

230:                                              ; preds = %213
  %231 = load ptr, ptr %26, align 8, !dbg !2810
  %232 = getelementptr inbounds %struct.app_ur_conn_info, ptr %231, i32 0, i32 2, !dbg !2812
  call void @addr_cpy(ptr noundef %232, ptr noundef %30), !dbg !2813
  %233 = load ptr, ptr %26, align 8, !dbg !2814
  %234 = getelementptr inbounds %struct.app_ur_conn_info, ptr %233, i32 0, i32 0, !dbg !2815
  call void @addr_cpy(ptr noundef %32, ptr noundef %234), !dbg !2816
  br label %235

235:                                              ; preds = %230, %229
  br label %236

236:                                              ; preds = %235, %201
  %237 = load i32, ptr @do_not_use_channel, align 4, !dbg !2817
  %238 = icmp ne i32 %237, 0, !dbg !2817
  br i1 %238, label %414, label %239, !dbg !2819

239:                                              ; preds = %236
  %240 = load i32, ptr %20, align 4, !dbg !2820
  %241 = load ptr, ptr %23, align 8, !dbg !2823
  %242 = load ptr, ptr %22, align 8, !dbg !2824
  %243 = call i32 @turn_channel_bind(i32 noundef %240, ptr noundef %241, ptr noundef %242, ptr noundef %32), !dbg !2825
  %244 = icmp slt i32 %243, 0, !dbg !2826
  br i1 %244, label %245, label %246, !dbg !2827

245:                                              ; preds = %239
  call void @exit(i32 noundef -1) #12, !dbg !2828
  unreachable, !dbg !2828

246:                                              ; preds = %239
  %247 = load i32, ptr @extra_requests, align 4, !dbg !2830
  %248 = icmp ne i32 %247, 0, !dbg !2830
  br i1 %248, label %249, label %302, !dbg !2832

249:                                              ; preds = %246
  call void @llvm.dbg.declare(metadata ptr %37, metadata !2833, metadata !DIExpression()), !dbg !2835
  store ptr @.str.6, ptr %37, align 8, !dbg !2835
  %250 = call i64 @random() #11, !dbg !2836
  %251 = srem i64 %250, 2, !dbg !2838
  %252 = icmp eq i64 %251, 0, !dbg !2839
  br i1 %252, label %253, label %254, !dbg !2840

253:                                              ; preds = %249
  store ptr @.str.7, ptr %37, align 8, !dbg !2841
  br label %254, !dbg !2842

254:                                              ; preds = %253, %249
  call void @llvm.dbg.declare(metadata ptr %38, metadata !2843, metadata !DIExpression()), !dbg !2844
  %255 = load ptr, ptr %37, align 8, !dbg !2845
  %256 = call i32 @make_ioa_addr(ptr noundef %255, i32 noundef 333, ptr noundef %38), !dbg !2846
  call void @llvm.dbg.declare(metadata ptr %39, metadata !2847, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.declare(metadata ptr %40, metadata !2849, metadata !DIExpression()), !dbg !2850
  %257 = call i64 @random() #11, !dbg !2851
  %258 = trunc i64 %257 to i16, !dbg !2852
  %259 = zext i16 %258 to i32, !dbg !2852
  %260 = srem i32 %259, 25, !dbg !2853
  store i32 %260, ptr %40, align 4, !dbg !2850
  store i32 0, ptr %39, align 4, !dbg !2854
  br label %261, !dbg !2856

261:                                              ; preds = %298, %254
  %262 = load i32, ptr %39, align 4, !dbg !2857
  %263 = load i32, ptr %40, align 4, !dbg !2859
  %264 = icmp slt i32 %262, %263, !dbg !2860
  br i1 %264, label %265, label %301, !dbg !2861

265:                                              ; preds = %261
  call void @llvm.dbg.declare(metadata ptr %41, metadata !2862, metadata !DIExpression()), !dbg !2864
  store i16 0, ptr %41, align 2, !dbg !2864
  call void @llvm.dbg.declare(metadata ptr %42, metadata !2865, metadata !DIExpression()), !dbg !2866
  %266 = call i64 @random() #11, !dbg !2867
  %267 = trunc i64 %266 to i16, !dbg !2868
  %268 = zext i16 %267 to i32, !dbg !2868
  store i32 %268, ptr %42, align 4, !dbg !2866
  %269 = load i32, ptr %42, align 4, !dbg !2869
  %270 = icmp slt i32 %269, 1024, !dbg !2871
  br i1 %270, label %271, label %274, !dbg !2872

271:                                              ; preds = %265
  %272 = load i32, ptr %42, align 4, !dbg !2873
  %273 = add nsw i32 %272, 1024, !dbg !2873
  store i32 %273, ptr %42, align 4, !dbg !2873
  br label %274, !dbg !2874

274:                                              ; preds = %271, %265
  %275 = load i32, ptr %42, align 4, !dbg !2875
  call void @addr_set_port(ptr noundef %38, i32 noundef %275), !dbg !2876
  call void @llvm.dbg.declare(metadata ptr %43, metadata !2877, metadata !DIExpression()), !dbg !2878
  %276 = getelementptr inbounds %struct.sockaddr_in, ptr %38, i32 0, i32 2, !dbg !2879
  store ptr %276, ptr %43, align 8, !dbg !2878
  %277 = load ptr, ptr %43, align 8, !dbg !2880
  %278 = call i64 @random() #11, !dbg !2881
  %279 = trunc i64 %278 to i16, !dbg !2882
  %280 = zext i16 %279 to i32, !dbg !2882
  %281 = srem i32 %280, 4, !dbg !2883
  %282 = sext i32 %281 to i64, !dbg !2880
  %283 = getelementptr inbounds i8, ptr %277, i64 %282, !dbg !2880
  %284 = load i8, ptr %283, align 1, !dbg !2880
  %285 = zext i8 %284 to i32, !dbg !2880
  %286 = add nsw i32 %285, 1, !dbg !2884
  %287 = trunc i32 %286 to i8, !dbg !2880
  %288 = load ptr, ptr %43, align 8, !dbg !2885
  %289 = call i64 @random() #11, !dbg !2886
  %290 = trunc i64 %289 to i16, !dbg !2887
  %291 = zext i16 %290 to i32, !dbg !2887
  %292 = srem i32 %291, 4, !dbg !2888
  %293 = sext i32 %292 to i64, !dbg !2885
  %294 = getelementptr inbounds i8, ptr %288, i64 %293, !dbg !2885
  store i8 %287, ptr %294, align 1, !dbg !2889
  %295 = load i32, ptr %20, align 4, !dbg !2890
  %296 = load ptr, ptr %22, align 8, !dbg !2891
  %297 = call i32 @turn_channel_bind(i32 noundef %295, ptr noundef %41, ptr noundef %296, ptr noundef %38), !dbg !2892
  br label %298, !dbg !2893

298:                                              ; preds = %274
  %299 = load i32, ptr %39, align 4, !dbg !2894
  %300 = add nsw i32 %299, 1, !dbg !2894
  store i32 %300, ptr %39, align 4, !dbg !2894
  br label %261, !dbg !2895, !llvm.loop !2896

301:                                              ; preds = %261
  br label %302, !dbg !2898

302:                                              ; preds = %301, %246
  %303 = call i32 @rare_event(), !dbg !2899
  %304 = icmp ne i32 %303, 0, !dbg !2899
  br i1 %304, label %305, label %306, !dbg !2901

305:                                              ; preds = %302
  store i32 0, ptr %15, align 4, !dbg !2902
  br label %535, !dbg !2902

306:                                              ; preds = %302
  %307 = load i32, ptr @extra_requests, align 4, !dbg !2903
  %308 = icmp ne i32 %307, 0, !dbg !2903
  br i1 %308, label %309, label %372, !dbg !2905

309:                                              ; preds = %306
  call void @llvm.dbg.declare(metadata ptr %44, metadata !2906, metadata !DIExpression()), !dbg !2908
  store ptr @.str.8, ptr %44, align 8, !dbg !2908
  %310 = call i64 @random() #11, !dbg !2909
  %311 = srem i64 %310, 2, !dbg !2911
  %312 = icmp eq i64 %311, 0, !dbg !2912
  br i1 %312, label %313, label %314, !dbg !2913

313:                                              ; preds = %309
  store ptr @.str.7, ptr %44, align 8, !dbg !2914
  br label %314, !dbg !2915

314:                                              ; preds = %313, %309
  call void @llvm.dbg.declare(metadata ptr %45, metadata !2916, metadata !DIExpression()), !dbg !2917
  %315 = load ptr, ptr %44, align 8, !dbg !2918
  %316 = getelementptr inbounds [25 x %union.ioa_addr], ptr %45, i64 0, i64 0, !dbg !2919
  %317 = call i32 @make_ioa_addr(ptr noundef %315, i32 noundef 333, ptr noundef %316), !dbg !2920
  call void @llvm.dbg.declare(metadata ptr %46, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.declare(metadata ptr %47, metadata !2923, metadata !DIExpression()), !dbg !2924
  %318 = call i64 @random() #11, !dbg !2925
  %319 = trunc i64 %318 to i16, !dbg !2926
  %320 = zext i16 %319 to i32, !dbg !2926
  %321 = srem i32 %320, 25, !dbg !2927
  store i32 %321, ptr %47, align 4, !dbg !2924
  store i32 0, ptr %46, align 4, !dbg !2928
  br label %322, !dbg !2930

322:                                              ; preds = %363, %314
  %323 = load i32, ptr %46, align 4, !dbg !2931
  %324 = load i32, ptr %47, align 4, !dbg !2933
  %325 = icmp slt i32 %323, %324, !dbg !2934
  br i1 %325, label %326, label %366, !dbg !2935

326:                                              ; preds = %322
  %327 = load i32, ptr %46, align 4, !dbg !2936
  %328 = icmp sgt i32 %327, 0, !dbg !2939
  br i1 %328, label %329, label %334, !dbg !2940

329:                                              ; preds = %326
  %330 = load i32, ptr %46, align 4, !dbg !2941
  %331 = sext i32 %330 to i64, !dbg !2942
  %332 = getelementptr inbounds [25 x %union.ioa_addr], ptr %45, i64 0, i64 %331, !dbg !2942
  %333 = getelementptr inbounds [25 x %union.ioa_addr], ptr %45, i64 0, i64 0, !dbg !2943
  call void @addr_cpy(ptr noundef %332, ptr noundef %333), !dbg !2944
  br label %334, !dbg !2944

334:                                              ; preds = %329, %326
  %335 = load i32, ptr %46, align 4, !dbg !2945
  %336 = sext i32 %335 to i64, !dbg !2946
  %337 = getelementptr inbounds [25 x %union.ioa_addr], ptr %45, i64 0, i64 %336, !dbg !2946
  %338 = call i64 @random() #11, !dbg !2947
  %339 = trunc i64 %338 to i16, !dbg !2948
  %340 = zext i16 %339 to i32, !dbg !2948
  call void @addr_set_port(ptr noundef %337, i32 noundef %340), !dbg !2949
  call void @llvm.dbg.declare(metadata ptr %48, metadata !2950, metadata !DIExpression()), !dbg !2951
  %341 = load i32, ptr %46, align 4, !dbg !2952
  %342 = sext i32 %341 to i64, !dbg !2953
  %343 = getelementptr inbounds [25 x %union.ioa_addr], ptr %45, i64 0, i64 %342, !dbg !2953
  %344 = getelementptr inbounds %struct.sockaddr_in, ptr %343, i32 0, i32 2, !dbg !2954
  store ptr %344, ptr %48, align 8, !dbg !2951
  %345 = load ptr, ptr %48, align 8, !dbg !2955
  %346 = call i64 @random() #11, !dbg !2956
  %347 = trunc i64 %346 to i16, !dbg !2957
  %348 = zext i16 %347 to i32, !dbg !2957
  %349 = srem i32 %348, 4, !dbg !2958
  %350 = sext i32 %349 to i64, !dbg !2955
  %351 = getelementptr inbounds i8, ptr %345, i64 %350, !dbg !2955
  %352 = load i8, ptr %351, align 1, !dbg !2955
  %353 = zext i8 %352 to i32, !dbg !2955
  %354 = add nsw i32 %353, 1, !dbg !2959
  %355 = trunc i32 %354 to i8, !dbg !2955
  %356 = load ptr, ptr %48, align 8, !dbg !2960
  %357 = call i64 @random() #11, !dbg !2961
  %358 = trunc i64 %357 to i16, !dbg !2962
  %359 = zext i16 %358 to i32, !dbg !2962
  %360 = srem i32 %359, 4, !dbg !2963
  %361 = sext i32 %360 to i64, !dbg !2960
  %362 = getelementptr inbounds i8, ptr %356, i64 %361, !dbg !2960
  store i8 %355, ptr %362, align 1, !dbg !2964
  br label %363, !dbg !2965

363:                                              ; preds = %334
  %364 = load i32, ptr %46, align 4, !dbg !2966
  %365 = add nsw i32 %364, 1, !dbg !2966
  store i32 %365, ptr %46, align 4, !dbg !2966
  br label %322, !dbg !2967, !llvm.loop !2968

366:                                              ; preds = %322
  %367 = load i32, ptr %20, align 4, !dbg !2970
  %368 = load ptr, ptr %22, align 8, !dbg !2971
  %369 = getelementptr inbounds [25 x %union.ioa_addr], ptr %45, i64 0, i64 0, !dbg !2972
  %370 = load i32, ptr %47, align 4, !dbg !2973
  %371 = call i32 @turn_create_permission(i32 noundef %367, ptr noundef %368, ptr noundef %369, i32 noundef %370), !dbg !2974
  br label %372, !dbg !2975

372:                                              ; preds = %366, %306
  %373 = load i32, ptr @no_rtcp, align 4, !dbg !2976
  %374 = icmp ne i32 %373, 0, !dbg !2976
  br i1 %374, label %383, label %375, !dbg !2978

375:                                              ; preds = %372
  %376 = load i32, ptr %20, align 4, !dbg !2979
  %377 = load ptr, ptr %25, align 8, !dbg !2981
  %378 = load ptr, ptr %24, align 8, !dbg !2982
  %379 = call i32 @turn_channel_bind(i32 noundef %376, ptr noundef %377, ptr noundef %378, ptr noundef %33), !dbg !2983
  %380 = icmp slt i32 %379, 0, !dbg !2984
  br i1 %380, label %381, label %382, !dbg !2985

381:                                              ; preds = %375
  call void @exit(i32 noundef -1) #12, !dbg !2986
  unreachable, !dbg !2986

382:                                              ; preds = %375
  br label %383, !dbg !2988

383:                                              ; preds = %382, %372
  %384 = call i32 @rare_event(), !dbg !2989
  %385 = icmp ne i32 %384, 0, !dbg !2989
  br i1 %385, label %386, label %387, !dbg !2991

386:                                              ; preds = %383
  store i32 0, ptr %15, align 4, !dbg !2992
  br label %535, !dbg !2992

387:                                              ; preds = %383
  %388 = load i32, ptr %20, align 4, !dbg !2993
  %389 = load ptr, ptr %27, align 8, !dbg !2995
  %390 = load ptr, ptr %26, align 8, !dbg !2996
  %391 = call i32 @turn_channel_bind(i32 noundef %388, ptr noundef %389, ptr noundef %390, ptr noundef %30), !dbg !2997
  %392 = icmp slt i32 %391, 0, !dbg !2998
  br i1 %392, label %393, label %394, !dbg !2999

393:                                              ; preds = %387
  call void @exit(i32 noundef -1) #12, !dbg !3000
  unreachable, !dbg !3000

394:                                              ; preds = %387
  %395 = call i32 @rare_event(), !dbg !3002
  %396 = icmp ne i32 %395, 0, !dbg !3002
  br i1 %396, label %397, label %398, !dbg !3004

397:                                              ; preds = %394
  store i32 0, ptr %15, align 4, !dbg !3005
  br label %535, !dbg !3005

398:                                              ; preds = %394
  %399 = load i32, ptr @no_rtcp, align 4, !dbg !3006
  %400 = icmp ne i32 %399, 0, !dbg !3006
  br i1 %400, label %409, label %401, !dbg !3008

401:                                              ; preds = %398
  %402 = load i32, ptr %20, align 4, !dbg !3009
  %403 = load ptr, ptr %29, align 8, !dbg !3011
  %404 = load ptr, ptr %28, align 8, !dbg !3012
  %405 = call i32 @turn_channel_bind(i32 noundef %402, ptr noundef %403, ptr noundef %404, ptr noundef %31), !dbg !3013
  %406 = icmp slt i32 %405, 0, !dbg !3014
  br i1 %406, label %407, label %408, !dbg !3015

407:                                              ; preds = %401
  call void @exit(i32 noundef -1) #12, !dbg !3016
  unreachable, !dbg !3016

408:                                              ; preds = %401
  br label %409, !dbg !3018

409:                                              ; preds = %408, %398
  %410 = call i32 @rare_event(), !dbg !3019
  %411 = icmp ne i32 %410, 0, !dbg !3019
  br i1 %411, label %412, label %413, !dbg !3021

412:                                              ; preds = %409
  store i32 0, ptr %15, align 4, !dbg !3022
  br label %535, !dbg !3022

413:                                              ; preds = %409
  br label %518, !dbg !3023

414:                                              ; preds = %236
  %415 = load i32, ptr %20, align 4, !dbg !3024
  %416 = load ptr, ptr %22, align 8, !dbg !3027
  %417 = call i32 @turn_create_permission(i32 noundef %415, ptr noundef %416, ptr noundef %32, i32 noundef 1), !dbg !3028
  %418 = icmp slt i32 %417, 0, !dbg !3029
  br i1 %418, label %419, label %420, !dbg !3030

419:                                              ; preds = %414
  call void @exit(i32 noundef -1) #12, !dbg !3031
  unreachable, !dbg !3031

420:                                              ; preds = %414
  %421 = load i32, ptr @extra_requests, align 4, !dbg !3033
  %422 = icmp ne i32 %421, 0, !dbg !3033
  br i1 %422, label %423, label %469, !dbg !3035

423:                                              ; preds = %420
  call void @llvm.dbg.declare(metadata ptr %49, metadata !3036, metadata !DIExpression()), !dbg !3038
  store ptr @.str.8, ptr %49, align 8, !dbg !3038
  %424 = call i64 @random() #11, !dbg !3039
  %425 = srem i64 %424, 2, !dbg !3041
  %426 = icmp eq i64 %425, 0, !dbg !3042
  br i1 %426, label %427, label %428, !dbg !3043

427:                                              ; preds = %423
  store ptr @.str.7, ptr %49, align 8, !dbg !3044
  br label %428, !dbg !3045

428:                                              ; preds = %427, %423
  call void @llvm.dbg.declare(metadata ptr %50, metadata !3046, metadata !DIExpression()), !dbg !3047
  %429 = load ptr, ptr %49, align 8, !dbg !3048
  %430 = call i32 @make_ioa_addr(ptr noundef %429, i32 noundef 333, ptr noundef %50), !dbg !3049
  call void @llvm.dbg.declare(metadata ptr %51, metadata !3050, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.declare(metadata ptr %52, metadata !3052, metadata !DIExpression()), !dbg !3053
  %431 = call i64 @random() #11, !dbg !3054
  %432 = trunc i64 %431 to i16, !dbg !3055
  %433 = zext i16 %432 to i32, !dbg !3055
  %434 = srem i32 %433, 25, !dbg !3056
  store i32 %434, ptr %52, align 4, !dbg !3053
  store i32 0, ptr %51, align 4, !dbg !3057
  br label %435, !dbg !3059

435:                                              ; preds = %465, %428
  %436 = load i32, ptr %51, align 4, !dbg !3060
  %437 = load i32, ptr %52, align 4, !dbg !3062
  %438 = icmp slt i32 %436, %437, !dbg !3063
  br i1 %438, label %439, label %468, !dbg !3064

439:                                              ; preds = %435
  %440 = call i64 @random() #11, !dbg !3065
  %441 = trunc i64 %440 to i16, !dbg !3067
  %442 = zext i16 %441 to i32, !dbg !3067
  call void @addr_set_port(ptr noundef %50, i32 noundef %442), !dbg !3068
  call void @llvm.dbg.declare(metadata ptr %53, metadata !3069, metadata !DIExpression()), !dbg !3070
  %443 = getelementptr inbounds %struct.sockaddr_in, ptr %50, i32 0, i32 2, !dbg !3071
  store ptr %443, ptr %53, align 8, !dbg !3070
  %444 = load ptr, ptr %53, align 8, !dbg !3072
  %445 = call i64 @random() #11, !dbg !3073
  %446 = trunc i64 %445 to i16, !dbg !3074
  %447 = zext i16 %446 to i32, !dbg !3074
  %448 = srem i32 %447, 4, !dbg !3075
  %449 = sext i32 %448 to i64, !dbg !3072
  %450 = getelementptr inbounds i8, ptr %444, i64 %449, !dbg !3072
  %451 = load i8, ptr %450, align 1, !dbg !3072
  %452 = zext i8 %451 to i32, !dbg !3072
  %453 = add nsw i32 %452, 1, !dbg !3076
  %454 = trunc i32 %453 to i8, !dbg !3072
  %455 = load ptr, ptr %53, align 8, !dbg !3077
  %456 = call i64 @random() #11, !dbg !3078
  %457 = trunc i64 %456 to i16, !dbg !3079
  %458 = zext i16 %457 to i32, !dbg !3079
  %459 = srem i32 %458, 4, !dbg !3080
  %460 = sext i32 %459 to i64, !dbg !3077
  %461 = getelementptr inbounds i8, ptr %455, i64 %460, !dbg !3077
  store i8 %454, ptr %461, align 1, !dbg !3081
  %462 = load i32, ptr %20, align 4, !dbg !3082
  %463 = load ptr, ptr %22, align 8, !dbg !3083
  %464 = call i32 @turn_create_permission(i32 noundef %462, ptr noundef %463, ptr noundef %50, i32 noundef 1), !dbg !3084
  br label %465, !dbg !3085

465:                                              ; preds = %439
  %466 = load i32, ptr %51, align 4, !dbg !3086
  %467 = add nsw i32 %466, 1, !dbg !3086
  store i32 %467, ptr %51, align 4, !dbg !3086
  br label %435, !dbg !3087, !llvm.loop !3088

468:                                              ; preds = %435
  br label %469, !dbg !3090

469:                                              ; preds = %468, %420
  %470 = call i32 @rare_event(), !dbg !3091
  %471 = icmp ne i32 %470, 0, !dbg !3091
  br i1 %471, label %472, label %473, !dbg !3093

472:                                              ; preds = %469
  store i32 0, ptr %15, align 4, !dbg !3094
  br label %535, !dbg !3094

473:                                              ; preds = %469
  %474 = load i32, ptr @no_rtcp, align 4, !dbg !3095
  %475 = icmp ne i32 %474, 0, !dbg !3095
  br i1 %475, label %483, label %476, !dbg !3097

476:                                              ; preds = %473
  %477 = load i32, ptr %20, align 4, !dbg !3098
  %478 = load ptr, ptr %24, align 8, !dbg !3100
  %479 = call i32 @turn_create_permission(i32 noundef %477, ptr noundef %478, ptr noundef %33, i32 noundef 1), !dbg !3101
  %480 = icmp slt i32 %479, 0, !dbg !3102
  br i1 %480, label %481, label %482, !dbg !3103

481:                                              ; preds = %476
  call void @exit(i32 noundef -1) #12, !dbg !3104
  unreachable, !dbg !3104

482:                                              ; preds = %476
  br label %483, !dbg !3106

483:                                              ; preds = %482, %473
  %484 = call i32 @rare_event(), !dbg !3107
  %485 = icmp ne i32 %484, 0, !dbg !3107
  br i1 %485, label %486, label %487, !dbg !3109

486:                                              ; preds = %483
  store i32 0, ptr %15, align 4, !dbg !3110
  br label %535, !dbg !3110

487:                                              ; preds = %483
  %488 = load ptr, ptr %26, align 8, !dbg !3111
  %489 = getelementptr inbounds %struct.app_ur_conn_info, ptr %488, i32 0, i32 19, !dbg !3113
  %490 = load i32, ptr %489, align 8, !dbg !3113
  %491 = icmp ne i32 %490, 0, !dbg !3114
  br i1 %491, label %503, label %492, !dbg !3115

492:                                              ; preds = %487
  %493 = load i32, ptr %20, align 4, !dbg !3116
  %494 = load ptr, ptr %26, align 8, !dbg !3119
  %495 = call i32 @turn_create_permission(i32 noundef %493, ptr noundef %494, ptr noundef %30, i32 noundef 1), !dbg !3120
  %496 = icmp slt i32 %495, 0, !dbg !3121
  br i1 %496, label %497, label %498, !dbg !3122

497:                                              ; preds = %492
  call void @exit(i32 noundef -1) #12, !dbg !3123
  unreachable, !dbg !3123

498:                                              ; preds = %492
  %499 = call i32 @rare_event(), !dbg !3125
  %500 = icmp ne i32 %499, 0, !dbg !3125
  br i1 %500, label %501, label %502, !dbg !3127

501:                                              ; preds = %498
  store i32 0, ptr %15, align 4, !dbg !3128
  br label %535, !dbg !3128

502:                                              ; preds = %498
  br label %503, !dbg !3129

503:                                              ; preds = %502, %487
  %504 = load i32, ptr @no_rtcp, align 4, !dbg !3130
  %505 = icmp ne i32 %504, 0, !dbg !3130
  br i1 %505, label %513, label %506, !dbg !3132

506:                                              ; preds = %503
  %507 = load i32, ptr %20, align 4, !dbg !3133
  %508 = load ptr, ptr %28, align 8, !dbg !3135
  %509 = call i32 @turn_create_permission(i32 noundef %507, ptr noundef %508, ptr noundef %31, i32 noundef 1), !dbg !3136
  %510 = icmp slt i32 %509, 0, !dbg !3137
  br i1 %510, label %511, label %512, !dbg !3138

511:                                              ; preds = %506
  call void @exit(i32 noundef -1) #12, !dbg !3139
  unreachable, !dbg !3139

512:                                              ; preds = %506
  br label %513, !dbg !3141

513:                                              ; preds = %512, %503
  %514 = call i32 @rare_event(), !dbg !3142
  %515 = icmp ne i32 %514, 0, !dbg !3142
  br i1 %515, label %516, label %517, !dbg !3144

516:                                              ; preds = %513
  store i32 0, ptr %15, align 4, !dbg !3145
  br label %535, !dbg !3145

517:                                              ; preds = %513
  br label %518

518:                                              ; preds = %517, %413
  %519 = load ptr, ptr %22, align 8, !dbg !3146
  %520 = getelementptr inbounds %struct.app_ur_conn_info, ptr %519, i32 0, i32 5, !dbg !3147
  call void @addr_cpy(ptr noundef %520, ptr noundef %32), !dbg !3148
  %521 = load i32, ptr @no_rtcp, align 4, !dbg !3149
  %522 = icmp ne i32 %521, 0, !dbg !3149
  br i1 %522, label %526, label %523, !dbg !3151

523:                                              ; preds = %518
  %524 = load ptr, ptr %24, align 8, !dbg !3152
  %525 = getelementptr inbounds %struct.app_ur_conn_info, ptr %524, i32 0, i32 5, !dbg !3153
  call void @addr_cpy(ptr noundef %525, ptr noundef %33), !dbg !3154
  br label %526, !dbg !3154

526:                                              ; preds = %523, %518
  %527 = load ptr, ptr %26, align 8, !dbg !3155
  %528 = getelementptr inbounds %struct.app_ur_conn_info, ptr %527, i32 0, i32 5, !dbg !3156
  call void @addr_cpy(ptr noundef %528, ptr noundef %30), !dbg !3157
  %529 = load i32, ptr @no_rtcp, align 4, !dbg !3158
  %530 = icmp ne i32 %529, 0, !dbg !3158
  br i1 %530, label %534, label %531, !dbg !3160

531:                                              ; preds = %526
  %532 = load ptr, ptr %28, align 8, !dbg !3161
  %533 = getelementptr inbounds %struct.app_ur_conn_info, ptr %532, i32 0, i32 5, !dbg !3162
  call void @addr_cpy(ptr noundef %533, ptr noundef %31), !dbg !3163
  br label %534, !dbg !3163

534:                                              ; preds = %531, %526
  store i32 0, ptr %15, align 4, !dbg !3164
  br label %535, !dbg !3164

535:                                              ; preds = %534, %516, %501, %486, %472, %412, %397, %386, %305, %228, %212, %200, %189, %178, %167, %99
  %536 = load i32, ptr %15, align 4, !dbg !3165
  ret i32 %536, !dbg !3165
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @turn_tcp_connect(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !3166 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._stun_buffer, align 8
  %10 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3169, metadata !DIExpression()), !dbg !3170
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3171, metadata !DIExpression()), !dbg !3172
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3173, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3175, metadata !DIExpression()), !dbg !3177
  store i32 0, ptr %8, align 4, !dbg !3177
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3178, metadata !DIExpression()), !dbg !3179
  call void @stun_init_request(i16 noundef zeroext 10, ptr noundef %9), !dbg !3180
  %11 = load ptr, ptr %7, align 8, !dbg !3181
  %12 = call i32 @stun_attr_add_addr(ptr noundef %9, i16 noundef zeroext 18, ptr noundef %11), !dbg !3182
  call void @add_origin(ptr noundef %9), !dbg !3183
  %13 = load ptr, ptr %6, align 8, !dbg !3184
  %14 = call i32 @add_integrity(ptr noundef %13, ptr noundef %9), !dbg !3186
  %15 = icmp slt i32 %14, 0, !dbg !3187
  br i1 %15, label %16, label %17, !dbg !3188

16:                                               ; preds = %3
  store i32 -1, ptr %4, align 4, !dbg !3189
  br label %39, !dbg !3189

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct._stun_buffer, ptr %9, i32 0, i32 1, !dbg !3190
  %19 = getelementptr inbounds [65507 x i8], ptr %18, i64 0, i64 0, !dbg !3191
  %20 = getelementptr inbounds %struct._stun_buffer, ptr %9, i32 0, i32 2, !dbg !3192
  %21 = call i32 @stun_attr_add_fingerprint_str(ptr noundef %19, ptr noundef %20), !dbg !3193
  br label %22, !dbg !3194

22:                                               ; preds = %37, %17
  %23 = load i32, ptr %8, align 4, !dbg !3195
  %24 = icmp ne i32 %23, 0, !dbg !3196
  %25 = xor i1 %24, true, !dbg !3196
  br i1 %25, label %26, label %38, !dbg !3194

26:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3197, metadata !DIExpression()), !dbg !3199
  %27 = load ptr, ptr %6, align 8, !dbg !3200
  %28 = call i32 @send_buffer(ptr noundef %27, ptr noundef %9, i32 noundef 0, ptr noundef null), !dbg !3201
  store i32 %28, ptr %10, align 4, !dbg !3199
  %29 = load i32, ptr %10, align 4, !dbg !3202
  %30 = icmp sgt i32 %29, 0, !dbg !3204
  br i1 %30, label %31, label %36, !dbg !3205

31:                                               ; preds = %26
  %32 = load i32, ptr %5, align 4, !dbg !3206
  %33 = icmp ne i32 %32, 0, !dbg !3206
  br i1 %33, label %34, label %35, !dbg !3209

34:                                               ; preds = %31
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.9), !dbg !3210
  br label %35, !dbg !3212

35:                                               ; preds = %34, %31
  store i32 1, ptr %8, align 4, !dbg !3213
  br label %37, !dbg !3214

36:                                               ; preds = %26
  call void @perror(ptr noundef @.str.10), !dbg !3215
  call void @exit(i32 noundef 1) #12, !dbg !3217
  unreachable, !dbg !3217

37:                                               ; preds = %35
  br label %22, !dbg !3194, !llvm.loop !3218

38:                                               ; preds = %22
  store i32 0, ptr %4, align 4, !dbg !3220
  br label %39, !dbg !3220

39:                                               ; preds = %38, %16
  %40 = load i32, ptr %4, align 4, !dbg !3221
  ret i32 %40, !dbg !3221
}

declare void @stun_init_request(i16 noundef zeroext, ptr noundef) #3

declare i32 @stun_attr_add_addr(ptr noundef, i16 noundef zeroext, ptr noundef) #3

declare i32 @add_integrity(ptr noundef, ptr noundef) #3

declare i32 @stun_attr_add_fingerprint_str(ptr noundef, ptr noundef) #3

declare i32 @send_buffer(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_data_connect(ptr noundef %0, i32 noundef %1) #0 !dbg !3222 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3255, metadata !DIExpression()), !dbg !3256
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3257, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3259, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3261, metadata !DIExpression()), !dbg !3262
  store i32 0, ptr %6, align 4, !dbg !3262
  br label %12, !dbg !3263

12:                                               ; preds = %267, %2
  call void @llvm.dbg.label(metadata !3264), !dbg !3265
  %13 = load ptr, ptr %3, align 8, !dbg !3266
  %14 = getelementptr inbounds %struct.app_ur_session, ptr %13, i32 0, i32 0, !dbg !3267
  %15 = getelementptr inbounds %struct.app_ur_conn_info, ptr %14, i32 0, i32 2, !dbg !3268
  %16 = getelementptr inbounds %struct.sockaddr, ptr %15, i32 0, i32 0, !dbg !3269
  %17 = load i16, ptr %16, align 8, !dbg !3269
  %18 = zext i16 %17 to i32, !dbg !3266
  %19 = call i32 @socket(i32 noundef %18, i32 noundef 1, i32 noundef 0) #11, !dbg !3270
  store i32 %19, ptr %5, align 4, !dbg !3271
  %20 = load i32, ptr %5, align 4, !dbg !3272
  %21 = icmp slt i32 %20, 0, !dbg !3274
  br i1 %21, label %22, label %23, !dbg !3275

22:                                               ; preds = %12
  call void @perror(ptr noundef @.str.11), !dbg !3276
  call void @exit(i32 noundef -1) #12, !dbg !3278
  unreachable, !dbg !3278

23:                                               ; preds = %12
  %24 = load i32, ptr %5, align 4, !dbg !3279
  %25 = call i32 @sock_bind_to_device(i32 noundef %24, ptr noundef @client_ifname), !dbg !3281
  %26 = icmp slt i32 %25, 0, !dbg !3282
  br i1 %26, label %27, label %28, !dbg !3283

27:                                               ; preds = %23
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.12, ptr noundef @client_ifname), !dbg !3284
  br label %28, !dbg !3286

28:                                               ; preds = %27, %23
  %29 = load i32, ptr %5, align 4, !dbg !3287
  %30 = call i32 @set_sock_buf_size(i32 noundef %29, i32 noundef 262144), !dbg !3288
  %31 = load ptr, ptr %3, align 8, !dbg !3289
  %32 = getelementptr inbounds %struct.app_ur_session, ptr %31, i32 0, i32 0, !dbg !3290
  %33 = getelementptr inbounds %struct.app_ur_conn_info, ptr %32, i32 0, i32 18, !dbg !3291
  %34 = load i64, ptr %33, align 8, !dbg !3292
  %35 = add i64 %34, 1, !dbg !3292
  store i64 %35, ptr %33, align 8, !dbg !3292
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3293, metadata !DIExpression()), !dbg !3294
  %36 = load ptr, ptr %3, align 8, !dbg !3295
  %37 = getelementptr inbounds %struct.app_ur_session, ptr %36, i32 0, i32 0, !dbg !3296
  %38 = getelementptr inbounds %struct.app_ur_conn_info, ptr %37, i32 0, i32 18, !dbg !3297
  %39 = load i64, ptr %38, align 8, !dbg !3297
  %40 = sub i64 %39, 1, !dbg !3298
  %41 = trunc i64 %40 to i32, !dbg !3299
  store i32 %41, ptr %7, align 4, !dbg !3294
  %42 = load ptr, ptr %3, align 8, !dbg !3300
  %43 = getelementptr inbounds %struct.app_ur_session, ptr %42, i32 0, i32 0, !dbg !3301
  %44 = getelementptr inbounds %struct.app_ur_conn_info, ptr %43, i32 0, i32 17, !dbg !3302
  %45 = load ptr, ptr %44, align 8, !dbg !3302
  %46 = load ptr, ptr %3, align 8, !dbg !3303
  %47 = getelementptr inbounds %struct.app_ur_session, ptr %46, i32 0, i32 0, !dbg !3304
  %48 = getelementptr inbounds %struct.app_ur_conn_info, ptr %47, i32 0, i32 18, !dbg !3305
  %49 = load i64, ptr %48, align 8, !dbg !3305
  %50 = mul i64 %49, 8, !dbg !3306
  %51 = call ptr @realloc(ptr noundef %45, i64 noundef %50) #15, !dbg !3307
  %52 = load ptr, ptr %3, align 8, !dbg !3308
  %53 = getelementptr inbounds %struct.app_ur_session, ptr %52, i32 0, i32 0, !dbg !3309
  %54 = getelementptr inbounds %struct.app_ur_conn_info, ptr %53, i32 0, i32 17, !dbg !3310
  store ptr %51, ptr %54, align 8, !dbg !3311
  %55 = call noalias ptr @malloc(i64 noundef 56) #16, !dbg !3312
  %56 = load ptr, ptr %3, align 8, !dbg !3313
  %57 = getelementptr inbounds %struct.app_ur_session, ptr %56, i32 0, i32 0, !dbg !3314
  %58 = getelementptr inbounds %struct.app_ur_conn_info, ptr %57, i32 0, i32 17, !dbg !3315
  %59 = load ptr, ptr %58, align 8, !dbg !3315
  %60 = load i32, ptr %7, align 4, !dbg !3316
  %61 = sext i32 %60 to i64, !dbg !3313
  %62 = getelementptr inbounds ptr, ptr %59, i64 %61, !dbg !3313
  store ptr %55, ptr %62, align 8, !dbg !3317
  %63 = load ptr, ptr %3, align 8, !dbg !3318
  %64 = getelementptr inbounds %struct.app_ur_session, ptr %63, i32 0, i32 0, !dbg !3319
  %65 = getelementptr inbounds %struct.app_ur_conn_info, ptr %64, i32 0, i32 17, !dbg !3320
  %66 = load ptr, ptr %65, align 8, !dbg !3320
  %67 = load i32, ptr %7, align 4, !dbg !3321
  %68 = sext i32 %67 to i64, !dbg !3318
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68, !dbg !3318
  %70 = load ptr, ptr %69, align 8, !dbg !3318
  call void @llvm.memset.p0.i64(ptr align 8 %70, i8 0, i64 56, i1 false), !dbg !3322
  %71 = load i32, ptr %5, align 4, !dbg !3323
  %72 = load ptr, ptr %3, align 8, !dbg !3324
  %73 = getelementptr inbounds %struct.app_ur_session, ptr %72, i32 0, i32 0, !dbg !3325
  %74 = getelementptr inbounds %struct.app_ur_conn_info, ptr %73, i32 0, i32 17, !dbg !3326
  %75 = load ptr, ptr %74, align 8, !dbg !3326
  %76 = load i32, ptr %7, align 4, !dbg !3327
  %77 = sext i32 %76 to i64, !dbg !3324
  %78 = getelementptr inbounds ptr, ptr %75, i64 %77, !dbg !3324
  %79 = load ptr, ptr %78, align 8, !dbg !3324
  %80 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %79, i32 0, i32 2, !dbg !3328
  store i32 %71, ptr %80, align 8, !dbg !3329
  %81 = load i32, ptr %4, align 4, !dbg !3330
  %82 = load ptr, ptr %3, align 8, !dbg !3331
  %83 = getelementptr inbounds %struct.app_ur_session, ptr %82, i32 0, i32 0, !dbg !3332
  %84 = getelementptr inbounds %struct.app_ur_conn_info, ptr %83, i32 0, i32 17, !dbg !3333
  %85 = load ptr, ptr %84, align 8, !dbg !3333
  %86 = load i32, ptr %7, align 4, !dbg !3334
  %87 = sext i32 %86 to i64, !dbg !3331
  %88 = getelementptr inbounds ptr, ptr %85, i64 %87, !dbg !3331
  %89 = load ptr, ptr %88, align 8, !dbg !3331
  %90 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %89, i32 0, i32 0, !dbg !3335
  store i32 %81, ptr %90, align 8, !dbg !3336
  %91 = load ptr, ptr %3, align 8, !dbg !3337
  %92 = getelementptr inbounds %struct.app_ur_session, ptr %91, i32 0, i32 0, !dbg !3338
  %93 = getelementptr inbounds %struct.app_ur_conn_info, ptr %92, i32 0, i32 17, !dbg !3339
  %94 = load ptr, ptr %93, align 8, !dbg !3339
  %95 = load i32, ptr %7, align 4, !dbg !3340
  %96 = sext i32 %95 to i64, !dbg !3337
  %97 = getelementptr inbounds ptr, ptr %94, i64 %96, !dbg !3337
  %98 = load ptr, ptr %97, align 8, !dbg !3337
  %99 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %98, i32 0, i32 1, !dbg !3341
  %100 = load ptr, ptr %3, align 8, !dbg !3342
  %101 = getelementptr inbounds %struct.app_ur_session, ptr %100, i32 0, i32 0, !dbg !3343
  %102 = getelementptr inbounds %struct.app_ur_conn_info, ptr %101, i32 0, i32 0, !dbg !3344
  call void @addr_cpy(ptr noundef %99, ptr noundef %102), !dbg !3345
  %103 = load ptr, ptr %3, align 8, !dbg !3346
  %104 = getelementptr inbounds %struct.app_ur_session, ptr %103, i32 0, i32 0, !dbg !3347
  %105 = getelementptr inbounds %struct.app_ur_conn_info, ptr %104, i32 0, i32 17, !dbg !3348
  %106 = load ptr, ptr %105, align 8, !dbg !3348
  %107 = load i32, ptr %7, align 4, !dbg !3349
  %108 = sext i32 %107 to i64, !dbg !3346
  %109 = getelementptr inbounds ptr, ptr %106, i64 %108, !dbg !3346
  %110 = load ptr, ptr %109, align 8, !dbg !3346
  %111 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %110, i32 0, i32 1, !dbg !3350
  call void @addr_set_port(ptr noundef %111, i32 noundef 0), !dbg !3351
  %112 = load i32, ptr %5, align 4, !dbg !3352
  %113 = load ptr, ptr %3, align 8, !dbg !3353
  %114 = getelementptr inbounds %struct.app_ur_session, ptr %113, i32 0, i32 0, !dbg !3354
  %115 = getelementptr inbounds %struct.app_ur_conn_info, ptr %114, i32 0, i32 17, !dbg !3355
  %116 = load ptr, ptr %115, align 8, !dbg !3355
  %117 = load i32, ptr %7, align 4, !dbg !3356
  %118 = sext i32 %117 to i64, !dbg !3353
  %119 = getelementptr inbounds ptr, ptr %116, i64 %118, !dbg !3353
  %120 = load ptr, ptr %119, align 8, !dbg !3353
  %121 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %120, i32 0, i32 1, !dbg !3357
  %122 = call i32 @addr_bind(i32 noundef %112, ptr noundef %121, i32 noundef 1, i32 noundef 1, i32 noundef 6), !dbg !3358
  %123 = load i32, ptr %5, align 4, !dbg !3359
  %124 = load ptr, ptr %3, align 8, !dbg !3360
  %125 = getelementptr inbounds %struct.app_ur_session, ptr %124, i32 0, i32 0, !dbg !3361
  %126 = getelementptr inbounds %struct.app_ur_conn_info, ptr %125, i32 0, i32 17, !dbg !3362
  %127 = load ptr, ptr %126, align 8, !dbg !3362
  %128 = load i32, ptr %7, align 4, !dbg !3363
  %129 = sext i32 %128 to i64, !dbg !3360
  %130 = getelementptr inbounds ptr, ptr %127, i64 %129, !dbg !3360
  %131 = load ptr, ptr %130, align 8, !dbg !3360
  %132 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %131, i32 0, i32 1, !dbg !3364
  %133 = call i32 @addr_get_from_sock(i32 noundef %123, ptr noundef %132), !dbg !3365
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3366, metadata !DIExpression()), !dbg !3368
  store i32 0, ptr %8, align 4, !dbg !3368
  br label %134, !dbg !3369

134:                                              ; preds = %166, %28
  %135 = load i32, ptr %8, align 4, !dbg !3370
  %136 = add nsw i32 %135, 1, !dbg !3370
  store i32 %136, ptr %8, align 4, !dbg !3370
  %137 = icmp slt i32 %135, 1024, !dbg !3371
  br i1 %137, label %138, label %224, !dbg !3369

138:                                              ; preds = %134
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3372, metadata !DIExpression()), !dbg !3374
  store i32 0, ptr %9, align 4, !dbg !3374
  %139 = load i32, ptr %5, align 4, !dbg !3375
  %140 = load ptr, ptr %3, align 8, !dbg !3377
  %141 = getelementptr inbounds %struct.app_ur_session, ptr %140, i32 0, i32 0, !dbg !3378
  %142 = getelementptr inbounds %struct.app_ur_conn_info, ptr %141, i32 0, i32 2, !dbg !3379
  %143 = call i32 @addr_connect(i32 noundef %139, ptr noundef %142, ptr noundef %9), !dbg !3380
  %144 = icmp slt i32 %143, 0, !dbg !3381
  br i1 %144, label %145, label %223, !dbg !3382

145:                                              ; preds = %138
  %146 = load i32, ptr %9, align 4, !dbg !3383
  %147 = icmp eq i32 %146, 98, !dbg !3386
  br i1 %147, label %148, label %222, !dbg !3387

148:                                              ; preds = %145
  %149 = load i32, ptr %5, align 4, !dbg !3388
  %150 = call i32 @close(i32 noundef %149), !dbg !3388
  %151 = load ptr, ptr %3, align 8, !dbg !3390
  %152 = getelementptr inbounds %struct.app_ur_session, ptr %151, i32 0, i32 0, !dbg !3391
  %153 = getelementptr inbounds %struct.app_ur_conn_info, ptr %152, i32 0, i32 2, !dbg !3392
  %154 = getelementptr inbounds %struct.sockaddr, ptr %153, i32 0, i32 0, !dbg !3393
  %155 = load i16, ptr %154, align 8, !dbg !3393
  %156 = zext i16 %155 to i32, !dbg !3390
  %157 = call i32 @socket(i32 noundef %156, i32 noundef 1, i32 noundef 0) #11, !dbg !3394
  store i32 %157, ptr %5, align 4, !dbg !3395
  %158 = load i32, ptr %5, align 4, !dbg !3396
  %159 = icmp slt i32 %158, 0, !dbg !3398
  br i1 %159, label %160, label %161, !dbg !3399

160:                                              ; preds = %148
  call void @perror(ptr noundef @.str.11), !dbg !3400
  call void @exit(i32 noundef -1) #12, !dbg !3402
  unreachable, !dbg !3402

161:                                              ; preds = %148
  %162 = load i32, ptr %5, align 4, !dbg !3403
  %163 = call i32 @sock_bind_to_device(i32 noundef %162, ptr noundef @client_ifname), !dbg !3405
  %164 = icmp slt i32 %163, 0, !dbg !3406
  br i1 %164, label %165, label %166, !dbg !3407

165:                                              ; preds = %161
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.12, ptr noundef @client_ifname), !dbg !3408
  br label %166, !dbg !3410

166:                                              ; preds = %165, %161
  %167 = load i32, ptr %5, align 4, !dbg !3411
  %168 = call i32 @set_sock_buf_size(i32 noundef %167, i32 noundef 262144), !dbg !3412
  %169 = load i32, ptr %5, align 4, !dbg !3413
  %170 = load ptr, ptr %3, align 8, !dbg !3414
  %171 = getelementptr inbounds %struct.app_ur_session, ptr %170, i32 0, i32 0, !dbg !3415
  %172 = getelementptr inbounds %struct.app_ur_conn_info, ptr %171, i32 0, i32 17, !dbg !3416
  %173 = load ptr, ptr %172, align 8, !dbg !3416
  %174 = load i32, ptr %7, align 4, !dbg !3417
  %175 = sext i32 %174 to i64, !dbg !3414
  %176 = getelementptr inbounds ptr, ptr %173, i64 %175, !dbg !3414
  %177 = load ptr, ptr %176, align 8, !dbg !3414
  %178 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %177, i32 0, i32 2, !dbg !3418
  store i32 %169, ptr %178, align 8, !dbg !3419
  %179 = load ptr, ptr %3, align 8, !dbg !3420
  %180 = getelementptr inbounds %struct.app_ur_session, ptr %179, i32 0, i32 0, !dbg !3421
  %181 = getelementptr inbounds %struct.app_ur_conn_info, ptr %180, i32 0, i32 17, !dbg !3422
  %182 = load ptr, ptr %181, align 8, !dbg !3422
  %183 = load i32, ptr %7, align 4, !dbg !3423
  %184 = sext i32 %183 to i64, !dbg !3420
  %185 = getelementptr inbounds ptr, ptr %182, i64 %184, !dbg !3420
  %186 = load ptr, ptr %185, align 8, !dbg !3420
  %187 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %186, i32 0, i32 1, !dbg !3424
  %188 = load ptr, ptr %3, align 8, !dbg !3425
  %189 = getelementptr inbounds %struct.app_ur_session, ptr %188, i32 0, i32 0, !dbg !3426
  %190 = getelementptr inbounds %struct.app_ur_conn_info, ptr %189, i32 0, i32 0, !dbg !3427
  call void @addr_cpy(ptr noundef %187, ptr noundef %190), !dbg !3428
  %191 = load ptr, ptr %3, align 8, !dbg !3429
  %192 = getelementptr inbounds %struct.app_ur_session, ptr %191, i32 0, i32 0, !dbg !3430
  %193 = getelementptr inbounds %struct.app_ur_conn_info, ptr %192, i32 0, i32 17, !dbg !3431
  %194 = load ptr, ptr %193, align 8, !dbg !3431
  %195 = load i32, ptr %7, align 4, !dbg !3432
  %196 = sext i32 %195 to i64, !dbg !3429
  %197 = getelementptr inbounds ptr, ptr %194, i64 %196, !dbg !3429
  %198 = load ptr, ptr %197, align 8, !dbg !3429
  %199 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %198, i32 0, i32 1, !dbg !3433
  call void @addr_set_port(ptr noundef %199, i32 noundef 0), !dbg !3434
  %200 = load i32, ptr %5, align 4, !dbg !3435
  %201 = load ptr, ptr %3, align 8, !dbg !3436
  %202 = getelementptr inbounds %struct.app_ur_session, ptr %201, i32 0, i32 0, !dbg !3437
  %203 = getelementptr inbounds %struct.app_ur_conn_info, ptr %202, i32 0, i32 17, !dbg !3438
  %204 = load ptr, ptr %203, align 8, !dbg !3438
  %205 = load i32, ptr %7, align 4, !dbg !3439
  %206 = sext i32 %205 to i64, !dbg !3436
  %207 = getelementptr inbounds ptr, ptr %204, i64 %206, !dbg !3436
  %208 = load ptr, ptr %207, align 8, !dbg !3436
  %209 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %208, i32 0, i32 1, !dbg !3440
  %210 = call i32 @addr_bind(i32 noundef %200, ptr noundef %209, i32 noundef 1, i32 noundef 1, i32 noundef 6), !dbg !3441
  %211 = load i32, ptr %5, align 4, !dbg !3442
  %212 = load ptr, ptr %3, align 8, !dbg !3443
  %213 = getelementptr inbounds %struct.app_ur_session, ptr %212, i32 0, i32 0, !dbg !3444
  %214 = getelementptr inbounds %struct.app_ur_conn_info, ptr %213, i32 0, i32 17, !dbg !3445
  %215 = load ptr, ptr %214, align 8, !dbg !3445
  %216 = load i32, ptr %7, align 4, !dbg !3446
  %217 = sext i32 %216 to i64, !dbg !3443
  %218 = getelementptr inbounds ptr, ptr %215, i64 %217, !dbg !3443
  %219 = load ptr, ptr %218, align 8, !dbg !3443
  %220 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %219, i32 0, i32 1, !dbg !3447
  %221 = call i32 @addr_get_from_sock(i32 noundef %211, ptr noundef %220), !dbg !3448
  br label %134, !dbg !3449, !llvm.loop !3450

222:                                              ; preds = %145
  call void @perror(ptr noundef @.str), !dbg !3452
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.13, ptr noundef @__FUNCTION__.tcp_data_connect), !dbg !3454
  call void @exit(i32 noundef -1) #12, !dbg !3455
  unreachable, !dbg !3455

223:                                              ; preds = %138
  br label %224, !dbg !3456

224:                                              ; preds = %223, %134
  %225 = load i32, ptr @use_secure, align 4, !dbg !3458
  %226 = icmp ne i32 %225, 0, !dbg !3458
  br i1 %226, label %227, label %275, !dbg !3460

227:                                              ; preds = %224
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3461, metadata !DIExpression()), !dbg !3463
  store i32 0, ptr %10, align 4, !dbg !3463
  %228 = load ptr, ptr %3, align 8, !dbg !3464
  %229 = getelementptr inbounds %struct.app_ur_session, ptr %228, i32 0, i32 0, !dbg !3465
  %230 = getelementptr inbounds %struct.app_ur_conn_info, ptr %229, i32 0, i32 17, !dbg !3466
  %231 = load ptr, ptr %230, align 8, !dbg !3466
  %232 = load i32, ptr %7, align 4, !dbg !3467
  %233 = sext i32 %232 to i64, !dbg !3464
  %234 = getelementptr inbounds ptr, ptr %231, i64 %233, !dbg !3464
  %235 = load ptr, ptr %234, align 8, !dbg !3464
  %236 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %235, i32 0, i32 2, !dbg !3468
  %237 = load i32, ptr %236, align 8, !dbg !3468
  %238 = load ptr, ptr %3, align 8, !dbg !3469
  %239 = getelementptr inbounds %struct.app_ur_session, ptr %238, i32 0, i32 0, !dbg !3470
  %240 = getelementptr inbounds %struct.app_ur_conn_info, ptr %239, i32 0, i32 2, !dbg !3471
  %241 = load i32, ptr %6, align 4, !dbg !3472
  %242 = add nsw i32 %241, 1, !dbg !3472
  store i32 %242, ptr %6, align 4, !dbg !3472
  %243 = call ptr @tls_connect(i32 noundef %237, ptr noundef %240, ptr noundef %10, i32 noundef %241), !dbg !3473
  %244 = load ptr, ptr %3, align 8, !dbg !3474
  %245 = getelementptr inbounds %struct.app_ur_session, ptr %244, i32 0, i32 0, !dbg !3475
  %246 = getelementptr inbounds %struct.app_ur_conn_info, ptr %245, i32 0, i32 17, !dbg !3476
  %247 = load ptr, ptr %246, align 8, !dbg !3476
  %248 = load i32, ptr %7, align 4, !dbg !3477
  %249 = sext i32 %248 to i64, !dbg !3474
  %250 = getelementptr inbounds ptr, ptr %247, i64 %249, !dbg !3474
  %251 = load ptr, ptr %250, align 8, !dbg !3474
  %252 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %251, i32 0, i32 3, !dbg !3478
  store ptr %243, ptr %252, align 8, !dbg !3479
  %253 = load ptr, ptr %3, align 8, !dbg !3480
  %254 = getelementptr inbounds %struct.app_ur_session, ptr %253, i32 0, i32 0, !dbg !3482
  %255 = getelementptr inbounds %struct.app_ur_conn_info, ptr %254, i32 0, i32 17, !dbg !3483
  %256 = load ptr, ptr %255, align 8, !dbg !3483
  %257 = load i32, ptr %7, align 4, !dbg !3484
  %258 = sext i32 %257 to i64, !dbg !3480
  %259 = getelementptr inbounds ptr, ptr %256, i64 %258, !dbg !3480
  %260 = load ptr, ptr %259, align 8, !dbg !3480
  %261 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %260, i32 0, i32 3, !dbg !3485
  %262 = load ptr, ptr %261, align 8, !dbg !3485
  %263 = icmp ne ptr %262, null, !dbg !3486
  br i1 %263, label %274, label %264, !dbg !3487

264:                                              ; preds = %227
  %265 = load i32, ptr %10, align 4, !dbg !3488
  %266 = icmp ne i32 %265, 0, !dbg !3488
  br i1 %266, label %267, label %273, !dbg !3491

267:                                              ; preds = %264
  %268 = load ptr, ptr %3, align 8, !dbg !3492
  %269 = getelementptr inbounds %struct.app_ur_session, ptr %268, i32 0, i32 0, !dbg !3494
  %270 = getelementptr inbounds %struct.app_ur_conn_info, ptr %269, i32 0, i32 18, !dbg !3495
  %271 = load i64, ptr %270, align 8, !dbg !3496
  %272 = add i64 %271, -1, !dbg !3496
  store i64 %272, ptr %270, align 8, !dbg !3496
  br label %12, !dbg !3497

273:                                              ; preds = %264
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.14, ptr noundef @__FUNCTION__.tcp_data_connect), !dbg !3498
  call void @exit(i32 noundef -1) #12, !dbg !3499
  unreachable, !dbg !3499

274:                                              ; preds = %227
  br label %275, !dbg !3500

275:                                              ; preds = %274, %224
  %276 = load i32, ptr @clnet_verbose, align 4, !dbg !3501
  %277 = load ptr, ptr %3, align 8, !dbg !3503
  %278 = getelementptr inbounds %struct.app_ur_session, ptr %277, i32 0, i32 0, !dbg !3504
  %279 = load ptr, ptr %3, align 8, !dbg !3505
  %280 = getelementptr inbounds %struct.app_ur_session, ptr %279, i32 0, i32 0, !dbg !3506
  %281 = getelementptr inbounds %struct.app_ur_conn_info, ptr %280, i32 0, i32 17, !dbg !3507
  %282 = load ptr, ptr %281, align 8, !dbg !3507
  %283 = load i32, ptr %7, align 4, !dbg !3508
  %284 = sext i32 %283 to i64, !dbg !3505
  %285 = getelementptr inbounds ptr, ptr %282, i64 %284, !dbg !3505
  %286 = load ptr, ptr %285, align 8, !dbg !3505
  %287 = call i32 @turn_tcp_connection_bind(i32 noundef %276, ptr noundef %278, ptr noundef %286, i32 noundef 0), !dbg !3509
  %288 = icmp slt i32 %287, 0, !dbg !3510
  br i1 %288, label %289, label %290, !dbg !3511

289:                                              ; preds = %275
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.15, ptr noundef @__FUNCTION__.tcp_data_connect), !dbg !3512
  br label %306, !dbg !3514

290:                                              ; preds = %275
  %291 = load i32, ptr %5, align 4, !dbg !3515
  %292 = call i32 @socket_set_nonblocking(i32 noundef %291), !dbg !3517
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3518, metadata !DIExpression()), !dbg !3519
  %293 = load ptr, ptr @client_event_base, align 8, !dbg !3520
  %294 = load i32, ptr %5, align 4, !dbg !3521
  %295 = load ptr, ptr %3, align 8, !dbg !3522
  %296 = call ptr @event_new(ptr noundef %293, i32 noundef %294, i16 noundef signext 18, ptr noundef @client_input_handler, ptr noundef %295), !dbg !3523
  store ptr %296, ptr %11, align 8, !dbg !3519
  %297 = load ptr, ptr %11, align 8, !dbg !3524
  %298 = call i32 @event_add(ptr noundef %297, ptr noundef null), !dbg !3525
  %299 = load ptr, ptr %11, align 8, !dbg !3526
  %300 = load ptr, ptr %3, align 8, !dbg !3527
  %301 = getelementptr inbounds %struct.app_ur_session, ptr %300, i32 0, i32 8, !dbg !3528
  store ptr %299, ptr %301, align 8, !dbg !3529
  %302 = load i32, ptr @clnet_verbose, align 4, !dbg !3530
  %303 = load ptr, ptr %3, align 8, !dbg !3531
  %304 = getelementptr inbounds %struct.app_ur_session, ptr %303, i32 0, i32 0, !dbg !3532
  %305 = getelementptr inbounds %struct.app_ur_conn_info, ptr %304, i32 0, i32 2, !dbg !3533
  call void @addr_debug_print(i32 noundef %302, ptr noundef %305, ptr noundef @.str.16), !dbg !3534
  br label %306

306:                                              ; preds = %290, %289
  ret void, !dbg !3535
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @sock_bind_to_device(i32 noundef, ptr noundef) #3

declare i32 @set_sock_buf_size(i32 noundef, i32 noundef) #3

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #6

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare i32 @addr_bind(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare i32 @addr_get_from_sock(i32 noundef, ptr noundef) #3

declare i32 @close(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @tls_connect(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !3536 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [1025 x i8], align 16
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3539, metadata !DIExpression()), !dbg !3540
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3541, metadata !DIExpression()), !dbg !3542
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3543, metadata !DIExpression()), !dbg !3544
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3545, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3547, metadata !DIExpression()), !dbg !3548
  %17 = call i64 @random() #11, !dbg !3549
  %18 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !3550
  %19 = sext i32 %18 to i64, !dbg !3550
  %20 = urem i64 %17, %19, !dbg !3551
  %21 = trunc i64 %20 to i32, !dbg !3552
  store i32 %21, ptr %10, align 4, !dbg !3548
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3553, metadata !DIExpression()), !dbg !3554
  %22 = load i32, ptr %10, align 4, !dbg !3555
  %23 = sext i32 %22 to i64, !dbg !3556
  %24 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %23, !dbg !3556
  %25 = load ptr, ptr %24, align 8, !dbg !3556
  %26 = call ptr @SSL_new(ptr noundef %25), !dbg !3557
  store ptr %26, ptr %11, align 8, !dbg !3558
  %27 = load ptr, ptr %11, align 8, !dbg !3559
  %28 = call i32 @SSL_set_alpn_protos(ptr noundef %27, ptr noundef @kALPNProtos, i32 noundef 38), !dbg !3560
  %29 = load i32, ptr @use_tcp, align 4, !dbg !3561
  %30 = icmp ne i32 %29, 0, !dbg !3561
  br i1 %30, label %31, label %35, !dbg !3563

31:                                               ; preds = %4
  %32 = load ptr, ptr %11, align 8, !dbg !3564
  %33 = load i32, ptr %6, align 4, !dbg !3566
  %34 = call i32 @SSL_set_fd(ptr noundef %32, i32 noundef %33), !dbg !3567
  br label %60, !dbg !3568

35:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3569, metadata !DIExpression()), !dbg !3574
  %36 = load i32, ptr %6, align 4, !dbg !3575
  %37 = call ptr @BIO_new_dgram(i32 noundef %36, i32 noundef 1), !dbg !3576
  store ptr %37, ptr %12, align 8, !dbg !3574
  %38 = load ptr, ptr %12, align 8, !dbg !3577
  %39 = load ptr, ptr %7, align 8, !dbg !3578
  %40 = call i64 @BIO_ctrl(ptr noundef %38, i32 noundef 32, i64 noundef 0, ptr noundef %39), !dbg !3579
  %41 = load ptr, ptr %11, align 8, !dbg !3580
  %42 = load ptr, ptr %12, align 8, !dbg !3581
  %43 = load ptr, ptr %12, align 8, !dbg !3582
  call void @SSL_set_bio(ptr noundef %41, ptr noundef %42, ptr noundef %43), !dbg !3583
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3584, metadata !DIExpression()), !dbg !3594
  %44 = getelementptr inbounds %struct.timeval, ptr %13, i32 0, i32 0, !dbg !3595
  store i64 30, ptr %44, align 8, !dbg !3596
  %45 = getelementptr inbounds %struct.timeval, ptr %13, i32 0, i32 1, !dbg !3597
  store i64 0, ptr %45, align 8, !dbg !3598
  %46 = load ptr, ptr %12, align 8, !dbg !3599
  %47 = call i64 @BIO_ctrl(ptr noundef %46, i32 noundef 33, i64 noundef 0, ptr noundef %13), !dbg !3600
  %48 = load ptr, ptr %11, align 8, !dbg !3601
  %49 = load i32, ptr %6, align 4, !dbg !3602
  %50 = load ptr, ptr %7, align 8, !dbg !3603
  %51 = getelementptr inbounds %struct.sockaddr, ptr %50, i32 0, i32 0, !dbg !3604
  %52 = load i16, ptr %51, align 4, !dbg !3604
  %53 = zext i16 %52 to i32, !dbg !3603
  %54 = load i32, ptr @use_tcp, align 4, !dbg !3605
  %55 = icmp ne i32 %54, 0, !dbg !3606
  %56 = xor i1 %55, true, !dbg !3606
  %57 = zext i1 %56 to i32, !dbg !3606
  %58 = load i32, ptr @clnet_verbose, align 4, !dbg !3607
  %59 = call i32 @set_mtu_df(ptr noundef %48, i32 noundef %49, i32 noundef %53, i32 noundef 1300, i32 noundef %57, i32 noundef %58), !dbg !3608
  br label %60

60:                                               ; preds = %35, %31
  %61 = load ptr, ptr %11, align 8, !dbg !3609
  %62 = call i64 @SSL_ctrl(ptr noundef %61, i32 noundef 51, i64 noundef 655350, ptr noundef null), !dbg !3609
  %63 = load i32, ptr @clnet_verbose, align 4, !dbg !3610
  %64 = icmp ne i32 %63, 0, !dbg !3610
  br i1 %64, label %65, label %66, !dbg !3612

65:                                               ; preds = %60
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.46), !dbg !3613
  br label %66, !dbg !3613

66:                                               ; preds = %65, %60
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3614, metadata !DIExpression()), !dbg !3615
  store i32 0, ptr %14, align 4, !dbg !3615
  br label %67, !dbg !3616

67:                                               ; preds = %139, %66
  br label %68, !dbg !3617

68:                                               ; preds = %78, %67
  %69 = load ptr, ptr %11, align 8, !dbg !3619
  %70 = call i32 @SSL_connect(ptr noundef %69), !dbg !3621
  store i32 %70, ptr %14, align 4, !dbg !3622
  br label %71, !dbg !3623

71:                                               ; preds = %68
  %72 = load i32, ptr %14, align 4, !dbg !3624
  %73 = icmp slt i32 %72, 0, !dbg !3625
  br i1 %73, label %74, label %78, !dbg !3626

74:                                               ; preds = %71
  %75 = call ptr @__errno_location() #14, !dbg !3627
  %76 = load i32, ptr %75, align 4, !dbg !3627
  %77 = icmp eq i32 %76, 4, !dbg !3628
  br label %78

78:                                               ; preds = %74, %71
  %79 = phi i1 [ false, %71 ], [ %77, %74 ], !dbg !3629
  br i1 %79, label %68, label %80, !dbg !3623, !llvm.loop !3630

80:                                               ; preds = %78
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3632, metadata !DIExpression()), !dbg !3633
  %81 = call ptr @__errno_location() #14, !dbg !3634
  %82 = load i32, ptr %81, align 4, !dbg !3634
  store i32 %82, ptr %15, align 4, !dbg !3633
  %83 = load i32, ptr %14, align 4, !dbg !3635
  %84 = icmp sgt i32 %83, 0, !dbg !3637
  br i1 %84, label %85, label %107, !dbg !3638

85:                                               ; preds = %80
  %86 = load ptr, ptr %11, align 8, !dbg !3639
  %87 = call ptr @SSL_get_current_cipher(ptr noundef %86), !dbg !3639
  %88 = call ptr @SSL_CIPHER_get_name(ptr noundef %87), !dbg !3639
  %89 = load ptr, ptr %11, align 8, !dbg !3641
  %90 = call ptr @turn_get_ssl_method(ptr noundef %89, ptr noundef null), !dbg !3642
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.47, ptr noundef @__FUNCTION__.tls_connect, ptr noundef %88, ptr noundef %90), !dbg !3643
  %91 = load i32, ptr @clnet_verbose, align 4, !dbg !3644
  %92 = icmp ne i32 %91, 0, !dbg !3644
  br i1 %92, label %93, label %106, !dbg !3646

93:                                               ; preds = %85
  %94 = load ptr, ptr %11, align 8, !dbg !3647
  %95 = call ptr @SSL_get1_peer_certificate(ptr noundef %94), !dbg !3648
  %96 = icmp ne ptr %95, null, !dbg !3648
  br i1 %96, label %97, label %106, !dbg !3649

97:                                               ; preds = %93
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.48), !dbg !3650
  %98 = load ptr, ptr @stdout, align 8, !dbg !3652
  %99 = load ptr, ptr %11, align 8, !dbg !3653
  %100 = call ptr @SSL_get1_peer_certificate(ptr noundef %99), !dbg !3654
  %101 = call ptr @X509_get_subject_name(ptr noundef %100), !dbg !3655
  %102 = call i32 @X509_NAME_print_ex_fp(ptr noundef %98, ptr noundef %101, i32 noundef 1, i64 noundef 44302342), !dbg !3656
  %103 = load ptr, ptr %11, align 8, !dbg !3657
  %104 = call ptr @SSL_get_current_cipher(ptr noundef %103), !dbg !3658
  %105 = call ptr @SSL_CIPHER_get_name(ptr noundef %104), !dbg !3659
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.49, ptr noundef %105), !dbg !3660
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.50), !dbg !3661
  br label %106, !dbg !3662

106:                                              ; preds = %97, %93, %85
  br label %140, !dbg !3663

107:                                              ; preds = %80
  %108 = load i32, ptr %14, align 4, !dbg !3664
  %109 = load i32, ptr %10, align 4, !dbg !3666
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.51, ptr noundef @__FUNCTION__.tls_connect, i32 noundef %108, i32 noundef %109), !dbg !3667
  %110 = load ptr, ptr %11, align 8, !dbg !3668
  %111 = load i32, ptr %14, align 4, !dbg !3669
  %112 = call i32 @SSL_get_error(ptr noundef %110, i32 noundef %111), !dbg !3670
  switch i32 %112, label %119 [
    i32 2, label %113
    i32 3, label %113
  ], !dbg !3671

113:                                              ; preds = %107, %107
  %114 = load i32, ptr @dos, align 4, !dbg !3672
  %115 = icmp ne i32 %114, 0, !dbg !3672
  br i1 %115, label %118, label %116, !dbg !3675

116:                                              ; preds = %113
  %117 = call i32 @usleep(i32 noundef 1000), !dbg !3676
  br label %118, !dbg !3676

118:                                              ; preds = %116, %113
  br label %139, !dbg !3677

119:                                              ; preds = %107
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3678, metadata !DIExpression()), !dbg !3680
  %120 = load i32, ptr %15, align 4, !dbg !3681
  %121 = call i64 @ERR_get_error(), !dbg !3682
  %122 = trunc i64 %121 to i32, !dbg !3683
  %123 = call i64 @ERR_get_error(), !dbg !3684
  %124 = getelementptr inbounds [1025 x i8], ptr %16, i64 0, i64 0, !dbg !3685
  %125 = call ptr @ERR_error_string(i64 noundef %123, ptr noundef %124), !dbg !3686
  %126 = load ptr, ptr %11, align 8, !dbg !3687
  %127 = load i32, ptr %14, align 4, !dbg !3688
  %128 = call i32 @SSL_get_error(ptr noundef %126, i32 noundef %127), !dbg !3689
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.52, i32 noundef %120, i32 noundef %122, ptr noundef %125, i32 noundef %128), !dbg !3690
  %129 = load i32, ptr %9, align 4, !dbg !3691
  %130 = icmp slt i32 %129, 32, !dbg !3693
  br i1 %130, label %131, label %138, !dbg !3694

131:                                              ; preds = %119
  %132 = load ptr, ptr %8, align 8, !dbg !3695
  %133 = icmp ne ptr %132, null, !dbg !3695
  br i1 %133, label %134, label %137, !dbg !3698

134:                                              ; preds = %131
  %135 = load ptr, ptr %11, align 8, !dbg !3699
  call void @SSL_free(ptr noundef %135), !dbg !3701
  %136 = load ptr, ptr %8, align 8, !dbg !3702
  store i32 1, ptr %136, align 4, !dbg !3703
  store ptr null, ptr %5, align 8, !dbg !3704
  br label %163, !dbg !3704

137:                                              ; preds = %131
  br label %138, !dbg !3705

138:                                              ; preds = %137, %119
  call void @exit(i32 noundef -1) #12, !dbg !3706
  unreachable, !dbg !3706

139:                                              ; preds = %118
  br i1 true, label %67, label %140, !dbg !3707, !llvm.loop !3708

140:                                              ; preds = %139, %106
  %141 = load i32, ptr @clnet_verbose, align 4, !dbg !3710
  %142 = icmp ne i32 %141, 0, !dbg !3710
  br i1 %142, label %143, label %161, !dbg !3712

143:                                              ; preds = %140
  %144 = load ptr, ptr %11, align 8, !dbg !3713
  %145 = call ptr @SSL_get1_peer_certificate(ptr noundef %144), !dbg !3714
  %146 = icmp ne ptr %145, null, !dbg !3714
  br i1 %146, label %147, label %161, !dbg !3715

147:                                              ; preds = %143
  %148 = load i32, ptr @use_tcp, align 4, !dbg !3716
  %149 = icmp ne i32 %148, 0, !dbg !3716
  br i1 %149, label %150, label %151, !dbg !3719

150:                                              ; preds = %147
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.53), !dbg !3720
  br label %152, !dbg !3722

151:                                              ; preds = %147
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.54), !dbg !3723
  br label %152

152:                                              ; preds = %151, %150
  %153 = load ptr, ptr @stdout, align 8, !dbg !3725
  %154 = load ptr, ptr %11, align 8, !dbg !3726
  %155 = call ptr @SSL_get1_peer_certificate(ptr noundef %154), !dbg !3727
  %156 = call ptr @X509_get_subject_name(ptr noundef %155), !dbg !3728
  %157 = call i32 @X509_NAME_print_ex_fp(ptr noundef %153, ptr noundef %156, i32 noundef 1, i64 noundef 44302342), !dbg !3729
  %158 = load ptr, ptr %11, align 8, !dbg !3730
  %159 = call ptr @SSL_get_current_cipher(ptr noundef %158), !dbg !3731
  %160 = call ptr @SSL_CIPHER_get_name(ptr noundef %159), !dbg !3732
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.49, ptr noundef %160), !dbg !3733
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.50), !dbg !3734
  br label %161, !dbg !3735

161:                                              ; preds = %152, %143, %140
  %162 = load ptr, ptr %11, align 8, !dbg !3736
  store ptr %162, ptr %5, align 8, !dbg !3737
  br label %163, !dbg !3737

163:                                              ; preds = %161, %134
  %164 = load ptr, ptr %5, align 8, !dbg !3738
  ret ptr %164, !dbg !3738
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turn_tcp_connection_bind(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !3739 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._stun_buffer, align 8
  %11 = alloca %struct._stun_buffer, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [129 x i8], align 16
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3742, metadata !DIExpression()), !dbg !3743
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3744, metadata !DIExpression()), !dbg !3745
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3746, metadata !DIExpression()), !dbg !3747
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3748, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3750, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3752, metadata !DIExpression()), !dbg !3753
  br label %19, !dbg !3754

19:                                               ; preds = %119, %4
  call void @llvm.dbg.label(metadata !3755), !dbg !3756
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3757, metadata !DIExpression()), !dbg !3759
  store i32 0, ptr %12, align 4, !dbg !3759
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3760, metadata !DIExpression()), !dbg !3761
  %20 = load ptr, ptr %8, align 8, !dbg !3762
  %21 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %20, i32 0, i32 0, !dbg !3763
  %22 = load i32, ptr %21, align 8, !dbg !3763
  store i32 %22, ptr %13, align 4, !dbg !3761
  call void @stun_init_request(i16 noundef zeroext 11, ptr noundef %10), !dbg !3764
  %23 = call i32 @stun_attr_add(ptr noundef %10, i16 noundef zeroext 42, ptr noundef %13, i32 noundef 4), !dbg !3765
  call void @add_origin(ptr noundef %10), !dbg !3766
  %24 = load ptr, ptr %7, align 8, !dbg !3767
  %25 = call i32 @add_integrity(ptr noundef %24, ptr noundef %10), !dbg !3769
  %26 = icmp slt i32 %25, 0, !dbg !3770
  br i1 %26, label %27, label %28, !dbg !3771

27:                                               ; preds = %19
  store i32 -1, ptr %5, align 4, !dbg !3772
  br label %138, !dbg !3772

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct._stun_buffer, ptr %10, i32 0, i32 1, !dbg !3773
  %30 = getelementptr inbounds [65507 x i8], ptr %29, i64 0, i64 0, !dbg !3774
  %31 = getelementptr inbounds %struct._stun_buffer, ptr %10, i32 0, i32 2, !dbg !3775
  %32 = call i32 @stun_attr_add_fingerprint_str(ptr noundef %30, ptr noundef %31), !dbg !3776
  br label %33, !dbg !3777

33:                                               ; preds = %53, %28
  %34 = load i32, ptr %12, align 4, !dbg !3778
  %35 = icmp ne i32 %34, 0, !dbg !3779
  %36 = xor i1 %35, true, !dbg !3779
  br i1 %36, label %37, label %54, !dbg !3777

37:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3780, metadata !DIExpression()), !dbg !3782
  %38 = load ptr, ptr %7, align 8, !dbg !3783
  %39 = load ptr, ptr %8, align 8, !dbg !3784
  %40 = call i32 @send_buffer(ptr noundef %38, ptr noundef %10, i32 noundef 1, ptr noundef %39), !dbg !3785
  store i32 %40, ptr %14, align 4, !dbg !3782
  %41 = load i32, ptr %14, align 4, !dbg !3786
  %42 = icmp sgt i32 %41, 0, !dbg !3788
  br i1 %42, label %43, label %48, !dbg !3789

43:                                               ; preds = %37
  %44 = load i32, ptr %6, align 4, !dbg !3790
  %45 = icmp ne i32 %44, 0, !dbg !3790
  br i1 %45, label %46, label %47, !dbg !3793

46:                                               ; preds = %43
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.55), !dbg !3794
  br label %47, !dbg !3796

47:                                               ; preds = %46, %43
  store i32 1, ptr %12, align 4, !dbg !3797
  br label %53, !dbg !3798

48:                                               ; preds = %37
  %49 = load i32, ptr %9, align 4, !dbg !3799
  %50 = icmp ne i32 %49, 0, !dbg !3799
  br i1 %50, label %51, label %52, !dbg !3802

51:                                               ; preds = %48
  store i32 0, ptr %5, align 4, !dbg !3803
  br label %138, !dbg !3803

52:                                               ; preds = %48
  call void @perror(ptr noundef @.str.10), !dbg !3804
  call void @exit(i32 noundef 1) #12, !dbg !3805
  unreachable, !dbg !3805

53:                                               ; preds = %47
  br label %33, !dbg !3777, !llvm.loop !3806

54:                                               ; preds = %33
  %55 = call i32 @not_rare_event(), !dbg !3808
  %56 = icmp ne i32 %55, 0, !dbg !3808
  br i1 %56, label %57, label %58, !dbg !3810

57:                                               ; preds = %54
  store i32 0, ptr %5, align 4, !dbg !3811
  br label %138, !dbg !3811

58:                                               ; preds = %54
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3812, metadata !DIExpression()), !dbg !3814
  store i32 0, ptr %15, align 4, !dbg !3814
  br label %59, !dbg !3815

59:                                               ; preds = %136, %92, %58
  %60 = load i32, ptr %15, align 4, !dbg !3816
  %61 = icmp ne i32 %60, 0, !dbg !3817
  %62 = xor i1 %61, true, !dbg !3817
  br i1 %62, label %63, label %137, !dbg !3815

63:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3818, metadata !DIExpression()), !dbg !3820
  %64 = load ptr, ptr %7, align 8, !dbg !3821
  %65 = load ptr, ptr %8, align 8, !dbg !3822
  %66 = call i32 @recv_buffer(ptr noundef %64, ptr noundef %11, i32 noundef 1, i32 noundef 1, ptr noundef %65, ptr noundef %10), !dbg !3823
  store i32 %66, ptr %16, align 4, !dbg !3820
  %67 = load i32, ptr %16, align 4, !dbg !3824
  %68 = icmp sgt i32 %67, 0, !dbg !3826
  br i1 %68, label %69, label %131, !dbg !3827

69:                                               ; preds = %63
  %70 = load i32, ptr %6, align 4, !dbg !3828
  %71 = icmp ne i32 %70, 0, !dbg !3828
  br i1 %71, label %72, label %73, !dbg !3831

72:                                               ; preds = %69
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.56), !dbg !3832
  br label %73, !dbg !3834

73:                                               ; preds = %72, %69
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3835, metadata !DIExpression()), !dbg !3836
  store i32 0, ptr %17, align 4, !dbg !3836
  call void @llvm.dbg.declare(metadata ptr %18, metadata !3837, metadata !DIExpression()), !dbg !3838
  %74 = call i32 @stun_is_success_response(ptr noundef %11), !dbg !3839
  %75 = icmp ne i32 %74, 0, !dbg !3839
  br i1 %75, label %76, label %100, !dbg !3841

76:                                               ; preds = %73
  %77 = load ptr, ptr %7, align 8, !dbg !3842
  %78 = getelementptr inbounds %struct.app_ur_conn_info, ptr %77, i32 0, i32 10, !dbg !3845
  %79 = getelementptr inbounds [128 x i8], ptr %78, i64 0, i64 0, !dbg !3842
  %80 = load i8, ptr %79, align 4, !dbg !3842
  %81 = icmp ne i8 %80, 0, !dbg !3842
  br i1 %81, label %82, label %88, !dbg !3846

82:                                               ; preds = %76
  %83 = load ptr, ptr %7, align 8, !dbg !3847
  %84 = call i32 @check_integrity(ptr noundef %83, ptr noundef %11), !dbg !3850
  %85 = icmp slt i32 %84, 0, !dbg !3851
  br i1 %85, label %86, label %87, !dbg !3852

86:                                               ; preds = %82
  store i32 -1, ptr %5, align 4, !dbg !3853
  br label %138, !dbg !3853

87:                                               ; preds = %82
  br label %88, !dbg !3854

88:                                               ; preds = %87, %76
  %89 = call zeroext i16 @stun_get_method(ptr noundef %11), !dbg !3855
  %90 = zext i16 %89 to i32, !dbg !3855
  %91 = icmp ne i32 %90, 11, !dbg !3857
  br i1 %91, label %92, label %93, !dbg !3858

92:                                               ; preds = %88
  br label %59, !dbg !3859, !llvm.loop !3860

93:                                               ; preds = %88
  store i32 1, ptr %15, align 4, !dbg !3862
  %94 = load i32, ptr %6, align 4, !dbg !3863
  %95 = icmp ne i32 %94, 0, !dbg !3863
  br i1 %95, label %96, label %97, !dbg !3865

96:                                               ; preds = %93
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.23), !dbg !3866
  br label %97, !dbg !3868

97:                                               ; preds = %96, %93
  %98 = load ptr, ptr %8, align 8, !dbg !3869
  %99 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %98, i32 0, i32 4, !dbg !3870
  store i32 1, ptr %99, align 8, !dbg !3871
  br label %130, !dbg !3872

100:                                              ; preds = %73
  %101 = getelementptr inbounds %struct._stun_buffer, ptr %11, i32 0, i32 1, !dbg !3873
  %102 = getelementptr inbounds [65507 x i8], ptr %101, i64 0, i64 0, !dbg !3875
  %103 = getelementptr inbounds %struct._stun_buffer, ptr %11, i32 0, i32 2, !dbg !3876
  %104 = load i64, ptr %103, align 8, !dbg !3876
  %105 = getelementptr inbounds [129 x i8], ptr %18, i64 0, i64 0, !dbg !3877
  %106 = load ptr, ptr %7, align 8, !dbg !3878
  %107 = getelementptr inbounds %struct.app_ur_conn_info, ptr %106, i32 0, i32 11, !dbg !3879
  %108 = getelementptr inbounds [128 x i8], ptr %107, i64 0, i64 0, !dbg !3878
  %109 = load ptr, ptr %7, align 8, !dbg !3880
  %110 = getelementptr inbounds %struct.app_ur_conn_info, ptr %109, i32 0, i32 10, !dbg !3881
  %111 = getelementptr inbounds [128 x i8], ptr %110, i64 0, i64 0, !dbg !3880
  %112 = load ptr, ptr %7, align 8, !dbg !3882
  %113 = getelementptr inbounds %struct.app_ur_conn_info, ptr %112, i32 0, i32 13, !dbg !3883
  %114 = getelementptr inbounds [1026 x i8], ptr %113, i64 0, i64 0, !dbg !3882
  %115 = load ptr, ptr %7, align 8, !dbg !3884
  %116 = getelementptr inbounds %struct.app_ur_conn_info, ptr %115, i32 0, i32 12, !dbg !3885
  %117 = call i32 @stun_is_challenge_response_str(ptr noundef %102, i64 noundef %104, ptr noundef %17, ptr noundef %105, i64 noundef 129, ptr noundef %108, ptr noundef %111, ptr noundef %114, ptr noundef %116), !dbg !3886
  %118 = icmp ne i32 %117, 0, !dbg !3886
  br i1 %118, label %119, label %120, !dbg !3887

119:                                              ; preds = %100
  br label %19, !dbg !3888

120:                                              ; preds = %100
  %121 = getelementptr inbounds [129 x i8], ptr %18, i64 0, i64 0, !dbg !3890
  %122 = call i32 @stun_is_error_response(ptr noundef %11, ptr noundef %17, ptr noundef %121, i64 noundef 129), !dbg !3892
  %123 = icmp ne i32 %122, 0, !dbg !3892
  br i1 %123, label %124, label %127, !dbg !3893

124:                                              ; preds = %120
  store i32 1, ptr %15, align 4, !dbg !3894
  %125 = load i32, ptr %17, align 4, !dbg !3896
  %126 = getelementptr inbounds [129 x i8], ptr %18, i64 0, i64 0, !dbg !3897
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.57, i32 noundef %125, ptr noundef %126), !dbg !3898
  store i32 -1, ptr %5, align 4, !dbg !3899
  br label %138, !dbg !3899

127:                                              ; preds = %120
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.58), !dbg !3900
  br label %128

128:                                              ; preds = %127
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129, %97
  br label %136, !dbg !3902

131:                                              ; preds = %63
  %132 = load i32, ptr %9, align 4, !dbg !3903
  %133 = icmp ne i32 %132, 0, !dbg !3903
  br i1 %133, label %134, label %135, !dbg !3906

134:                                              ; preds = %131
  store i32 0, ptr %5, align 4, !dbg !3907
  br label %138, !dbg !3907

135:                                              ; preds = %131
  call void @perror(ptr noundef @.str.31), !dbg !3908
  call void @exit(i32 noundef -1) #12, !dbg !3909
  unreachable, !dbg !3909

136:                                              ; preds = %130
  br label %59, !dbg !3815, !llvm.loop !3860

137:                                              ; preds = %59
  store i32 0, ptr %5, align 4, !dbg !3910
  br label %138, !dbg !3910

138:                                              ; preds = %137, %134, %124, %86, %57, %51, %27
  %139 = load i32, ptr %5, align 4, !dbg !3911
  ret i32 %139, !dbg !3911
}

declare i32 @socket_set_nonblocking(i32 noundef) #3

declare ptr @event_new(ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) #3

declare void @client_input_handler(i32 noundef, i16 noundef signext, ptr noundef) #3

declare i32 @event_add(ptr noundef, ptr noundef) #3

declare void @addr_debug_print(i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @set_raw_socket_tos(i32 noundef, i32 noundef, i32 noundef) #3

declare i32 @set_raw_socket_ttl(i32 noundef, i32 noundef, i32 noundef) #3

declare i32 @get_socket_type() #3

declare i32 @usleep(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_ioa_ntoh64(i64 noundef %0) #0 !dbg !3912 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3916, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3918, metadata !DIExpression()), !dbg !3919
  store ptr %2, ptr %3, align 8, !dbg !3919
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3920, metadata !DIExpression()), !dbg !3921
  %6 = load ptr, ptr %3, align 8, !dbg !3922
  %7 = getelementptr inbounds i8, ptr %6, i64 7, !dbg !3923
  store ptr %7, ptr %4, align 8, !dbg !3921
  br label %8, !dbg !3924

8:                                                ; preds = %12, %1
  %9 = load ptr, ptr %3, align 8, !dbg !3925
  %10 = load ptr, ptr %4, align 8, !dbg !3926
  %11 = icmp ult ptr %9, %10, !dbg !3927
  br i1 %11, label %12, label %22, !dbg !3924

12:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3928, metadata !DIExpression()), !dbg !3930
  %13 = load ptr, ptr %4, align 8, !dbg !3931
  %14 = load i8, ptr %13, align 1, !dbg !3932
  store i8 %14, ptr %5, align 1, !dbg !3930
  %15 = load ptr, ptr %3, align 8, !dbg !3933
  %16 = load i8, ptr %15, align 1, !dbg !3934
  %17 = load ptr, ptr %4, align 8, !dbg !3935
  %18 = getelementptr inbounds i8, ptr %17, i32 -1, !dbg !3935
  store ptr %18, ptr %4, align 8, !dbg !3935
  store i8 %16, ptr %17, align 1, !dbg !3936
  %19 = load i8, ptr %5, align 1, !dbg !3937
  %20 = load ptr, ptr %3, align 8, !dbg !3938
  %21 = getelementptr inbounds i8, ptr %20, i32 1, !dbg !3938
  store ptr %21, ptr %3, align 8, !dbg !3938
  store i8 %19, ptr %20, align 1, !dbg !3939
  br label %8, !dbg !3924, !llvm.loop !3940

22:                                               ; preds = %8
  %23 = load i64, ptr %2, align 8, !dbg !3942
  ret i64 %23, !dbg !3943
}

declare i32 @stun_set_allocate_request(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) #3

declare i32 @stun_attr_add_bandwidth_str(ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @recv_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @stun_is_success_response(ptr noundef) #3

declare i32 @check_integrity(ptr noundef, ptr noundef) #3

declare ptr @stun_attr_get_first(ptr noundef) #3

declare i32 @stun_attr_get_type(ptr noundef) #3

declare i32 @stun_attr_get_addr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare i32 @addr_any(ptr noundef) #3

declare ptr @stun_attr_get_next(ptr noundef, ptr noundef) #3

declare i64 @stun_attr_get_reservation_token_value(ptr noundef) #3

declare i32 @stun_is_challenge_response_str(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @stun_is_error_response(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @stun_attr_get_first_addr(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #3

declare i32 @addr_to_string_no_port(ptr noundef, ptr noundef) #3

declare i32 @sleep(i32 noundef) #3

declare i32 @SSL_shutdown(ptr noundef) #3

declare void @SSL_free(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare i32 @htonl(i32 noundef) #10

declare zeroext i16 @stun_set_channel_bind_request(ptr noundef, ptr noundef, i16 noundef zeroext) #3

declare i32 @addr_to_string(ptr noundef, ptr noundef) #3

declare ptr @SSL_new(ptr noundef) #3

declare i32 @SSL_set_alpn_protos(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @SSL_set_fd(ptr noundef, i32 noundef) #3

declare ptr @BIO_new_dgram(i32 noundef, i32 noundef) #3

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #3

declare void @SSL_set_bio(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @set_mtu_df(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare i64 @SSL_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #3

declare i32 @SSL_connect(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #10

declare ptr @SSL_CIPHER_get_name(ptr noundef) #3

declare ptr @SSL_get_current_cipher(ptr noundef) #3

declare ptr @turn_get_ssl_method(ptr noundef, ptr noundef) #3

declare ptr @SSL_get1_peer_certificate(ptr noundef) #3

declare i32 @X509_NAME_print_ex_fp(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #3

declare ptr @X509_get_subject_name(ptr noundef) #3

declare i32 @SSL_get_error(ptr noundef, i32 noundef) #3

declare i64 @ERR_get_error() #3

declare ptr @ERR_error_string(i64 noundef, ptr noundef) #3

declare zeroext i16 @stun_get_method(ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind allocsize(1) }
attributes #16 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!110}
!llvm.module.flags = !{!414, !415, !416, !417, !418, !419, !420}
!llvm.ident = !{!421}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/apps/uclient/startuclient.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74efb05251b20ebea1e306bc8392a842")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 39)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 120, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 15)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 324, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 13)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 324, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 168, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 21)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 328, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 24)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 339, type: !30, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 342, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 18)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1030, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 16)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1032, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 10)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1060, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 12)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1406, type: !37, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1410, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 5)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1527, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 7)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1533, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 40)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1587, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 35)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1587, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 136, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 17)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1605, type: !9, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1612, type: !74, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1625, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 30)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 4)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 257, type: !47, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 112, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 14)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !16)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 302, type: !20, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "allocate_rtcp", scope: !110, file: !2, line: 50, type: !199, isLocal: true, isDefinition: true)
!110 = distinct !DICompileUnit(language: DW_LANG_C11, file: !111, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !183, globals: !266, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "/home/raj/coturn/src/apps/uclient/startuclient.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "74efb05251b20ebea1e306bc8392a842")
!112 = !{!113, !121, !127, !139, !170}
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !114, line: 47, baseType: !115, size: 32, elements: !116)
!114 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!115 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!116 = !{!117, !118, !119, !120}
!117 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!118 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!119 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!120 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_UR_STATE", file: !122, line: 51, baseType: !115, size: 32, elements: !123)
!122 = !DIFile(filename: "src/apps/uclient/session.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "d70192ffc41ca1767f7b9531a33c3705")
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "UR_STATE_UNKNOWN", value: 0)
!125 = !DIEnumerator(name: "UR_STATE_READY", value: 1)
!126 = !DIEnumerator(name: "UR_STATE_DONE", value: 2)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !128, line: 24, baseType: !115, size: 32, elements: !129)
!128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138}
!130 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!131 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!132 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!133 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!134 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!135 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!136 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!137 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!138 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !140, line: 40, baseType: !115, size: 32, elements: !141)
!140 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!142 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!143 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!144 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!145 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!146 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!147 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!148 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!149 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!150 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!151 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!152 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!153 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!154 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!155 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!156 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!157 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!158 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!159 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!160 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!161 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!162 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!163 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!164 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!165 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!166 = !DIEnumerator(name: "IPPROTO_ETHERNET", value: 143)
!167 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!168 = !DIEnumerator(name: "IPPROTO_MPTCP", value: 262)
!169 = !DIEnumerator(name: "IPPROTO_MAX", value: 263)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_TYPE", file: !171, line: 85, baseType: !115, size: 32, elements: !172)
!171 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182}
!173 = !DIEnumerator(name: "UNKNOWN_SOCKET", value: 0)
!174 = !DIEnumerator(name: "TCP_SOCKET", value: 6)
!175 = !DIEnumerator(name: "UDP_SOCKET", value: 17)
!176 = !DIEnumerator(name: "TLS_SOCKET", value: 56)
!177 = !DIEnumerator(name: "SCTP_SOCKET", value: 132)
!178 = !DIEnumerator(name: "TLS_SCTP_SOCKET", value: 133)
!179 = !DIEnumerator(name: "DTLS_SOCKET", value: 250)
!180 = !DIEnumerator(name: "TCP_SOCKET_PROXY", value: 253)
!181 = !DIEnumerator(name: "TENTATIVE_SCTP_SOCKET", value: 254)
!182 = !DIEnumerator(name: "TENTATIVE_TCP_SOCKET", value: 255)
!183 = !{!184, !185, !187, !188, !189, !196, !197, !198, !199, !200, !201, !191, !263, !228, !264, !265}
!184 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !186, line: 46, baseType: !184)
!186 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !192, line: 24, baseType: !193)
!192 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !194, line: 38, baseType: !195)
!194 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!195 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!196 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!199 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "app_tcp_conn_info", file: !122, line: 69, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 61, size: 448, elements: !204)
!204 = !{!205, !208, !256, !257, !262}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !203, file: !122, line: 64, baseType: !206, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !192, line: 26, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !194, line: 42, baseType: !115)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_data_local_addr", scope: !203, file: !122, line: 65, baseType: !209, size: 224, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !210, line: 48, baseType: !211)
!210 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!211 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !210, line: 44, size: 224, elements: !212)
!212 = !{!213, !222, !237}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !211, file: !210, line: 45, baseType: !214, size: 128)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !215, line: 180, size: 128, elements: !216)
!215 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!216 = !{!217, !220}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !214, file: !215, line: 182, baseType: !218, size: 16)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !219, line: 28, baseType: !196)
!219 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!220 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !214, file: !215, line: 183, baseType: !221, size: 112, offset: 16)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !101)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !211, file: !210, line: 46, baseType: !223, size: 128)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !140, line: 245, size: 128, elements: !224)
!224 = !{!225, !226, !230, !235}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !223, file: !140, line: 247, baseType: !218, size: 16)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !223, file: !140, line: 248, baseType: !227, size: 16, offset: 16)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !140, line: 123, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !192, line: 25, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !194, line: 40, baseType: !196)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !223, file: !140, line: 249, baseType: !231, size: 32, offset: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !140, line: 31, size: 32, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !231, file: !140, line: 33, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !140, line: 30, baseType: !206)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !223, file: !140, line: 252, baseType: !236, size: 64, offset: 64)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 64, elements: !5)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !211, file: !210, line: 47, baseType: !238, size: 224)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !140, line: 260, size: 224, elements: !239)
!239 = !{!240, !241, !242, !243, !255}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !238, file: !140, line: 262, baseType: !218, size: 16)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !238, file: !140, line: 263, baseType: !227, size: 16, offset: 16)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !238, file: !140, line: 264, baseType: !206, size: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !238, file: !140, line: 265, baseType: !244, size: 128, offset: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !140, line: 219, size: 128, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !244, file: !140, line: 226, baseType: !247, size: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !140, line: 221, size: 128, elements: !248)
!248 = !{!249, !251, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !247, file: !140, line: 223, baseType: !250, size: 128)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 128, elements: !43)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !247, file: !140, line: 224, baseType: !252, size: 128)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 128, elements: !5)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !247, file: !140, line: 225, baseType: !254, size: 128)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 128, elements: !94)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !238, file: !140, line: 266, baseType: !206, size: 32, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_data_fd", scope: !203, file: !122, line: 66, baseType: !199, size: 32, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_data_ssl", scope: !203, file: !122, line: 67, baseType: !258, size: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !260, line: 184, baseType: !261)
!260 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!261 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !260, line: 184, flags: DIFlagFwdDecl)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_data_bound", scope: !203, file: !122, line: 68, baseType: !199, size: 32, offset: 384)
!263 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!266 = !{!0, !7, !12, !18, !23, !28, !33, !35, !40, !45, !50, !55, !57, !62, !67, !72, !77, !82, !84, !86, !91, !96, !98, !103, !106, !267, !269, !271, !276, !281, !283, !288, !290, !292, !294, !299, !304, !306, !311, !316, !318, !320, !108, !325, !329, !334, !336, !338, !340, !345, !350, !352, !357, !362, !365, !368, !373, !376, !381, !383, !388, !390, !392, !394, !399, !403, !405, !410, !412}
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !2, line: 424, type: !105, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !88, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !2, line: 462, type: !273, isLocal: true, isDefinition: true)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 9)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !2, line: 475, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 44)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !2, line: 476, type: !14, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !2, line: 482, type: !285, isLocal: true, isDefinition: true)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 20)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !2, line: 509, type: !278, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !2, line: 521, type: !221, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !2, line: 551, type: !105, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !2, line: 559, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 29)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !2, line: 565, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 27)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !2, line: 569, type: !59, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !2, line: 582, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 28)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !2, line: 637, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 25)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !2, line: 677, type: !221, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !2, line: 708, type: !296, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !2, line: 730, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 26)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "current_reservation_token", scope: !110, file: !2, line: 49, type: !327, isLocal: true, isDefinition: true)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !192, line: 27, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !194, line: 45, baseType: !184)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !2, line: 772, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 19)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !2, line: 796, type: !30, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !2, line: 810, type: !105, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 820, type: !296, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !2, line: 824, type: !342, isLocal: true, isDefinition: true)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 31)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !2, line: 877, type: !347, isLocal: true, isDefinition: true)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 22)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !2, line: 901, type: !30, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !2, line: 924, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 33)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !2, line: 928, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 36)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression(DW_OP_constu, 38, DW_OP_stack_value))
!363 = distinct !DIGlobalVariable(name: "kALPNProtosLen", scope: !110, file: !2, line: 55, type: !364, isLocal: true, isDefinition: true)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !26)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !370, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 56)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !375, isLocal: true, isDefinition: true)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 96, elements: !53)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !378, isLocal: true, isDefinition: true)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 62)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !105, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !385, isLocal: true, isDefinition: true)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 64)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !74, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !301, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !378, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 63)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "kALPNProtos", scope: !110, file: !2, line: 54, type: !401, isLocal: true, isDefinition: true)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 312, elements: !10)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1448, type: !347, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1474, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 34)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1499, type: !342, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1503, type: !407, isLocal: true, isDefinition: true)
!414 = !{i32 7, !"Dwarf Version", i32 5}
!415 = !{i32 2, !"Debug Info Version", i32 3}
!416 = !{i32 1, !"wchar_size", i32 4}
!417 = !{i32 8, !"PIC Level", i32 2}
!418 = !{i32 7, !"PIE Level", i32 2}
!419 = !{i32 7, !"uwtable", i32 2}
!420 = !{i32 7, !"frame-pointer", i32 2}
!421 = !{!"clang version 16.0.0"}
!422 = distinct !DISubprogram(name: "rare_event", scope: !2, file: !2, line: 60, type: !423, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{!199}
!425 = !{}
!426 = !DILocation(line: 62, column: 5, scope: !427)
!427 = distinct !DILexicalBlock(scope: !422, file: !2, line: 62, column: 5)
!428 = !DILocation(line: 62, column: 5, scope: !422)
!429 = !DILocation(line: 63, column: 27, scope: !427)
!430 = !DILocation(line: 63, column: 37, scope: !427)
!431 = !DILocation(line: 63, column: 43, scope: !427)
!432 = !DILocation(line: 63, column: 3, scope: !427)
!433 = !DILocation(line: 64, column: 2, scope: !422)
!434 = !DILocation(line: 65, column: 1, scope: !422)
!435 = distinct !DISubprogram(name: "not_rare_event", scope: !2, file: !2, line: 67, type: !423, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !425)
!436 = !DILocation(line: 69, column: 5, scope: !437)
!437 = distinct !DILexicalBlock(scope: !435, file: !2, line: 69, column: 5)
!438 = !DILocation(line: 69, column: 5, scope: !435)
!439 = !DILocation(line: 70, column: 28, scope: !437)
!440 = !DILocation(line: 70, column: 38, scope: !437)
!441 = !DILocation(line: 70, column: 45, scope: !437)
!442 = !DILocation(line: 70, column: 3, scope: !437)
!443 = !DILocation(line: 71, column: 2, scope: !435)
!444 = !DILocation(line: 72, column: 1, scope: !435)
!445 = distinct !DISubprogram(name: "socket_connect", scope: !2, file: !2, line: 194, type: !446, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !425)
!446 = !DISubroutineType(types: !447)
!447 = !{!199, !199, !448, !449}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!450 = !DILocalVariable(name: "clnet_fd", arg: 1, scope: !445, file: !2, line: 194, type: !199)
!451 = !DILocation(line: 194, column: 36, scope: !445)
!452 = !DILocalVariable(name: "remote_addr", arg: 2, scope: !445, file: !2, line: 194, type: !448)
!453 = !DILocation(line: 194, column: 56, scope: !445)
!454 = !DILocalVariable(name: "connect_err", arg: 3, scope: !445, file: !2, line: 194, type: !449)
!455 = !DILocation(line: 194, column: 74, scope: !445)
!456 = !DILocation(line: 196, column: 19, scope: !457)
!457 = distinct !DILexicalBlock(scope: !445, file: !2, line: 196, column: 6)
!458 = !DILocation(line: 196, column: 29, scope: !457)
!459 = !DILocation(line: 196, column: 42, scope: !457)
!460 = !DILocation(line: 196, column: 6, scope: !457)
!461 = !DILocation(line: 196, column: 55, scope: !457)
!462 = !DILocation(line: 196, column: 6, scope: !445)
!463 = !DILocation(line: 197, column: 7, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !2, line: 197, column: 6)
!465 = distinct !DILexicalBlock(scope: !457, file: !2, line: 196, column: 60)
!466 = !DILocation(line: 197, column: 6, scope: !464)
!467 = !DILocation(line: 197, column: 19, scope: !464)
!468 = !DILocation(line: 197, column: 6, scope: !465)
!469 = !DILocation(line: 198, column: 4, scope: !464)
!470 = !DILocation(line: 199, column: 8, scope: !471)
!471 = distinct !DILexicalBlock(scope: !465, file: !2, line: 199, column: 7)
!472 = !DILocation(line: 199, column: 7, scope: !471)
!473 = !DILocation(line: 199, column: 20, scope: !471)
!474 = !DILocation(line: 199, column: 7, scope: !465)
!475 = !DILocation(line: 200, column: 4, scope: !471)
!476 = !DILocation(line: 201, column: 3, scope: !465)
!477 = !DILocation(line: 202, column: 95, scope: !465)
!478 = !DILocation(line: 202, column: 94, scope: !465)
!479 = !DILocation(line: 202, column: 3, scope: !465)
!480 = !DILocation(line: 203, column: 3, scope: !465)
!481 = !DILocation(line: 206, column: 2, scope: !445)
!482 = !DILocation(line: 207, column: 1, scope: !445)
!483 = distinct !DISubprogram(name: "read_mobility_ticket", scope: !2, file: !2, line: 310, type: !484, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !425)
!484 = !DISubroutineType(types: !485)
!485 = !{!199, !486, !523}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "app_ur_conn_info", file: !122, line: 95, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 71, size: 15552, elements: !489)
!489 = !{!490, !491, !495, !496, !497, !498, !499, !500, !501, !502, !503, !507, !508, !509, !513, !517, !518, !519, !520, !521, !522}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr", scope: !488, file: !122, line: 72, baseType: !209, size: 224)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "lsaddr", scope: !488, file: !122, line: 73, baseType: !492, size: 1032, offset: 224)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1032, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 129)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !488, file: !122, line: 74, baseType: !209, size: 224, offset: 1280)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rsaddr", scope: !488, file: !122, line: 75, baseType: !492, size: 1032, offset: 1504)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !488, file: !122, line: 76, baseType: !492, size: 1032, offset: 2536)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr", scope: !488, file: !122, line: 77, baseType: !209, size: 224, offset: 3584)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr", scope: !488, file: !122, line: 78, baseType: !209, size: 224, offset: 3808)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !488, file: !122, line: 79, baseType: !199, size: 32, offset: 4032)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !488, file: !122, line: 80, baseType: !258, size: 64, offset: 4096)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "broken", scope: !488, file: !122, line: 81, baseType: !199, size: 32, offset: 4160)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !488, file: !122, line: 82, baseType: !504, size: 1024, offset: 4192)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 1024, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !488, file: !122, line: 83, baseType: !504, size: 1024, offset: 5216)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "oauth", scope: !488, file: !122, line: 85, baseType: !199, size: 32, offset: 6240)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !488, file: !122, line: 86, baseType: !510, size: 8208, offset: 6272)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 8208, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 1026)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !488, file: !122, line: 87, baseType: !514, size: 512, offset: 14480)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "hmackey_t", file: !515, line: 64, baseType: !516)
!515 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 512, elements: !386)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "key_set", scope: !488, file: !122, line: 88, baseType: !199, size: 32, offset: 15008)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "cok", scope: !488, file: !122, line: 89, baseType: !199, size: 32, offset: 15040)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_conn", scope: !488, file: !122, line: 91, baseType: !200, size: 64, offset: 15104)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_conn_number", scope: !488, file: !122, line: 92, baseType: !185, size: 64, offset: 15168)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "is_peer", scope: !488, file: !122, line: 93, baseType: !199, size: 32, offset: 15232)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "s_mobile_id", scope: !488, file: !122, line: 94, baseType: !354, size: 264, offset: 15264)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer", file: !525, line: 48, baseType: !526)
!525 = !DIFile(filename: "src/apps/common/stun_buffer.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "cc7948905c033a0fb654060699acf9e2")
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer", file: !525, line: 42, size: 524224, elements: !527)
!527 = !{!528, !530, !534, !535, !536}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !526, file: !525, line: 43, baseType: !529, size: 32)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 32, elements: !94)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !526, file: !525, line: 44, baseType: !531, size: 524056, offset: 32)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 524056, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 65507)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !526, file: !525, line: 45, baseType: !185, size: 64, offset: 524096)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !526, file: !525, line: 46, baseType: !228, size: 16, offset: 524160)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "coffset", scope: !526, file: !525, line: 47, baseType: !191, size: 8, offset: 524176)
!537 = !DILocalVariable(name: "clnet_info", arg: 1, scope: !483, file: !2, line: 310, type: !486)
!538 = !DILocation(line: 310, column: 44, scope: !483)
!539 = !DILocalVariable(name: "message", arg: 2, scope: !483, file: !2, line: 310, type: !523)
!540 = !DILocation(line: 310, column: 69, scope: !483)
!541 = !DILocalVariable(name: "ret", scope: !483, file: !2, line: 312, type: !199)
!542 = !DILocation(line: 312, column: 6, scope: !483)
!543 = !DILocation(line: 313, column: 5, scope: !544)
!544 = distinct !DILexicalBlock(scope: !483, file: !2, line: 313, column: 5)
!545 = !DILocation(line: 313, column: 16, scope: !544)
!546 = !DILocation(line: 313, column: 19, scope: !544)
!547 = !DILocation(line: 313, column: 5, scope: !483)
!548 = !DILocalVariable(name: "s_mobile_id_sar", scope: !549, file: !2, line: 314, type: !550)
!549 = distinct !DILexicalBlock(scope: !544, file: !2, line: 313, column: 28)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_attr_ref", file: !515, line: 71, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!553 = !DILocation(line: 314, column: 17, scope: !549)
!554 = !DILocation(line: 314, column: 63, scope: !549)
!555 = !DILocation(line: 314, column: 35, scope: !549)
!556 = !DILocation(line: 315, column: 6, scope: !557)
!557 = distinct !DILexicalBlock(scope: !549, file: !2, line: 315, column: 6)
!558 = !DILocation(line: 315, column: 6, scope: !549)
!559 = !DILocalVariable(name: "smid_len", scope: !560, file: !2, line: 316, type: !199)
!560 = distinct !DILexicalBlock(scope: !557, file: !2, line: 315, column: 23)
!561 = !DILocation(line: 316, column: 8, scope: !560)
!562 = !DILocation(line: 316, column: 37, scope: !560)
!563 = !DILocation(line: 316, column: 19, scope: !560)
!564 = !DILocation(line: 317, column: 7, scope: !565)
!565 = distinct !DILexicalBlock(scope: !560, file: !2, line: 317, column: 7)
!566 = !DILocation(line: 317, column: 15, scope: !565)
!567 = !DILocation(line: 317, column: 18, scope: !565)
!568 = !DILocation(line: 317, column: 31, scope: !565)
!569 = !DILocation(line: 317, column: 23, scope: !565)
!570 = !DILocation(line: 317, column: 40, scope: !565)
!571 = !DILocation(line: 317, column: 7, scope: !560)
!572 = !DILocalVariable(name: "smid_val", scope: !573, file: !2, line: 318, type: !189)
!573 = distinct !DILexicalBlock(scope: !565, file: !2, line: 317, column: 75)
!574 = !DILocation(line: 318, column: 20, scope: !573)
!575 = !DILocation(line: 318, column: 51, scope: !573)
!576 = !DILocation(line: 318, column: 31, scope: !573)
!577 = !DILocation(line: 319, column: 8, scope: !578)
!578 = distinct !DILexicalBlock(scope: !573, file: !2, line: 319, column: 8)
!579 = !DILocation(line: 319, column: 8, scope: !573)
!580 = !DILocation(line: 320, column: 12, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !2, line: 319, column: 18)
!582 = !DILocation(line: 320, column: 22, scope: !581)
!583 = !DILocation(line: 320, column: 34, scope: !581)
!584 = !DILocation(line: 320, column: 55, scope: !581)
!585 = !DILocation(line: 320, column: 47, scope: !581)
!586 = !DILocation(line: 320, column: 6, scope: !581)
!587 = !DILocation(line: 321, column: 6, scope: !581)
!588 = !DILocation(line: 321, column: 18, scope: !581)
!589 = !DILocation(line: 321, column: 30, scope: !581)
!590 = !DILocation(line: 321, column: 40, scope: !581)
!591 = !DILocation(line: 322, column: 10, scope: !592)
!592 = distinct !DILexicalBlock(scope: !581, file: !2, line: 322, column: 10)
!593 = !DILocation(line: 322, column: 10, scope: !581)
!594 = !DILocation(line: 324, column: 41, scope: !592)
!595 = !DILocation(line: 324, column: 53, scope: !592)
!596 = !DILocation(line: 323, column: 7, scope: !592)
!597 = !DILocation(line: 325, column: 5, scope: !581)
!598 = !DILocation(line: 326, column: 4, scope: !573)
!599 = !DILocation(line: 328, column: 50, scope: !600)
!600 = distinct !DILexicalBlock(scope: !565, file: !2, line: 326, column: 11)
!601 = !DILocation(line: 327, column: 5, scope: !600)
!602 = !DILocation(line: 329, column: 9, scope: !600)
!603 = !DILocation(line: 331, column: 3, scope: !560)
!604 = !DILocation(line: 332, column: 2, scope: !549)
!605 = !DILocation(line: 333, column: 9, scope: !483)
!606 = !DILocation(line: 333, column: 2, scope: !483)
!607 = distinct !DISubprogram(name: "add_origin", scope: !2, file: !2, line: 336, type: !608, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !425)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !523}
!610 = !DILocalVariable(name: "message", arg: 1, scope: !607, file: !2, line: 336, type: !523)
!611 = !DILocation(line: 336, column: 30, scope: !607)
!612 = !DILocation(line: 338, column: 5, scope: !613)
!613 = distinct !DILexicalBlock(scope: !607, file: !2, line: 338, column: 5)
!614 = !DILocation(line: 338, column: 13, scope: !613)
!615 = !DILocation(line: 338, column: 16, scope: !613)
!616 = !DILocation(line: 338, column: 5, scope: !607)
!617 = !DILocalVariable(name: "some_origin", scope: !618, file: !2, line: 339, type: !187)
!618 = distinct !DILexicalBlock(scope: !613, file: !2, line: 338, column: 27)
!619 = !DILocation(line: 339, column: 15, scope: !618)
!620 = !DILocation(line: 340, column: 17, scope: !618)
!621 = !DILocation(line: 340, column: 49, scope: !618)
!622 = !DILocation(line: 340, column: 69, scope: !618)
!623 = !DILocation(line: 340, column: 62, scope: !618)
!624 = !DILocation(line: 340, column: 3, scope: !618)
!625 = !DILocation(line: 341, column: 17, scope: !618)
!626 = !DILocation(line: 341, column: 57, scope: !618)
!627 = !DILocation(line: 341, column: 3, scope: !618)
!628 = !DILocation(line: 342, column: 15, scope: !618)
!629 = !DILocation(line: 343, column: 17, scope: !618)
!630 = !DILocation(line: 343, column: 49, scope: !618)
!631 = !DILocation(line: 343, column: 69, scope: !618)
!632 = !DILocation(line: 343, column: 62, scope: !618)
!633 = !DILocation(line: 343, column: 3, scope: !618)
!634 = !DILocation(line: 344, column: 2, scope: !618)
!635 = !DILocation(line: 345, column: 1, scope: !607)
!636 = distinct !DISubprogram(name: "start_connection", scope: !2, file: !2, line: 941, type: !637, scopeLine: 949, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !425)
!637 = !DISubroutineType(types: !638)
!638 = !{!199, !228, !187, !639, !187, !199, !486, !486, !640, !486, !640}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!641 = !DILocalVariable(name: "clnet_remote_port0", arg: 1, scope: !636, file: !2, line: 941, type: !228)
!642 = !DILocation(line: 941, column: 31, scope: !636)
!643 = !DILocalVariable(name: "remote_address0", arg: 2, scope: !636, file: !2, line: 942, type: !187)
!644 = !DILocation(line: 942, column: 20, scope: !636)
!645 = !DILocalVariable(name: "ifname", arg: 3, scope: !636, file: !2, line: 943, type: !639)
!646 = !DILocation(line: 943, column: 29, scope: !636)
!647 = !DILocalVariable(name: "local_address", arg: 4, scope: !636, file: !2, line: 943, type: !187)
!648 = !DILocation(line: 943, column: 49, scope: !636)
!649 = !DILocalVariable(name: "verbose", arg: 5, scope: !636, file: !2, line: 944, type: !199)
!650 = !DILocation(line: 944, column: 12, scope: !636)
!651 = !DILocalVariable(name: "clnet_info_probe", arg: 6, scope: !636, file: !2, line: 945, type: !486)
!652 = !DILocation(line: 945, column: 26, scope: !636)
!653 = !DILocalVariable(name: "clnet_info", arg: 7, scope: !636, file: !2, line: 946, type: !486)
!654 = !DILocation(line: 946, column: 26, scope: !636)
!655 = !DILocalVariable(name: "chn", arg: 8, scope: !636, file: !2, line: 947, type: !640)
!656 = !DILocation(line: 947, column: 18, scope: !636)
!657 = !DILocalVariable(name: "clnet_info_rtcp", arg: 9, scope: !636, file: !2, line: 948, type: !486)
!658 = !DILocation(line: 948, column: 26, scope: !636)
!659 = !DILocalVariable(name: "chn_rtcp", arg: 10, scope: !636, file: !2, line: 949, type: !640)
!660 = !DILocation(line: 949, column: 18, scope: !636)
!661 = !DILocalVariable(name: "relay_addr", scope: !636, file: !2, line: 951, type: !209)
!662 = !DILocation(line: 951, column: 11, scope: !636)
!663 = !DILocalVariable(name: "relay_addr_rtcp", scope: !636, file: !2, line: 952, type: !209)
!664 = !DILocation(line: 952, column: 11, scope: !636)
!665 = !DILocalVariable(name: "peer_addr_rtcp", scope: !636, file: !2, line: 953, type: !209)
!666 = !DILocation(line: 953, column: 11, scope: !636)
!667 = !DILocation(line: 955, column: 2, scope: !636)
!668 = !DILocation(line: 956, column: 32, scope: !636)
!669 = !DILocation(line: 956, column: 62, scope: !636)
!670 = !DILocation(line: 956, column: 2, scope: !636)
!671 = !DILocation(line: 960, column: 20, scope: !672)
!672 = distinct !DILexicalBlock(scope: !636, file: !2, line: 960, column: 6)
!673 = !DILocation(line: 960, column: 40, scope: !672)
!674 = !DILocation(line: 960, column: 57, scope: !672)
!675 = !DILocation(line: 960, column: 65, scope: !672)
!676 = !DILocation(line: 961, column: 4, scope: !672)
!677 = !DILocation(line: 961, column: 13, scope: !672)
!678 = !DILocation(line: 960, column: 6, scope: !672)
!679 = !DILocation(line: 961, column: 31, scope: !672)
!680 = !DILocation(line: 960, column: 6, scope: !636)
!681 = !DILocation(line: 962, column: 3, scope: !682)
!682 = distinct !DILexicalBlock(scope: !672, file: !2, line: 961, column: 36)
!683 = !DILocalVariable(name: "clnet_remote_port", scope: !636, file: !2, line: 965, type: !228)
!684 = !DILocation(line: 965, column: 11, scope: !636)
!685 = !DILocation(line: 965, column: 31, scope: !636)
!686 = !DILocalVariable(name: "remote_address", scope: !636, file: !2, line: 966, type: !687)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8200, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 1025)
!690 = !DILocation(line: 966, column: 7, scope: !636)
!691 = !DILocation(line: 967, column: 2, scope: !636)
!692 = !DILocation(line: 967, column: 2, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !2, line: 967, column: 2)
!694 = distinct !DILexicalBlock(scope: !636, file: !2, line: 967, column: 2)
!695 = !DILocation(line: 967, column: 2, scope: !694)
!696 = !DILocalVariable(name: "szdst", scope: !697, file: !2, line: 967, type: !185)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 967, column: 2)
!698 = distinct !DILexicalBlock(scope: !699, file: !2, line: 967, column: 2)
!699 = distinct !DILexicalBlock(scope: !693, file: !2, line: 967, column: 2)
!700 = !DILocation(line: 967, column: 2, scope: !697)
!701 = !DILocation(line: 967, column: 2, scope: !699)
!702 = !DILocation(line: 969, column: 17, scope: !636)
!703 = !DILocation(line: 969, column: 26, scope: !636)
!704 = !DILocation(line: 969, column: 57, scope: !636)
!705 = !DILocation(line: 969, column: 81, scope: !636)
!706 = !DILocation(line: 969, column: 2, scope: !636)
!707 = !DILocation(line: 973, column: 3, scope: !636)
!708 = !DILocation(line: 973, column: 7, scope: !636)
!709 = !DILocation(line: 974, column: 5, scope: !710)
!710 = distinct !DILexicalBlock(scope: !636, file: !2, line: 974, column: 5)
!711 = !DILocation(line: 974, column: 5, scope: !636)
!712 = !DILocation(line: 974, column: 16, scope: !710)
!713 = !DILocation(line: 974, column: 24, scope: !710)
!714 = !DILocation(line: 974, column: 15, scope: !710)
!715 = !DILocation(line: 976, column: 20, scope: !716)
!716 = distinct !DILexicalBlock(scope: !636, file: !2, line: 976, column: 6)
!717 = !DILocation(line: 976, column: 39, scope: !716)
!718 = !DILocation(line: 976, column: 55, scope: !716)
!719 = !DILocation(line: 976, column: 63, scope: !716)
!720 = !DILocation(line: 977, column: 4, scope: !716)
!721 = !DILocation(line: 977, column: 13, scope: !716)
!722 = !DILocation(line: 976, column: 6, scope: !716)
!723 = !DILocation(line: 977, column: 25, scope: !716)
!724 = !DILocation(line: 976, column: 6, scope: !636)
!725 = !DILocation(line: 978, column: 4, scope: !726)
!726 = distinct !DILexicalBlock(scope: !716, file: !2, line: 977, column: 30)
!727 = !DILocation(line: 981, column: 6, scope: !728)
!728 = distinct !DILexicalBlock(scope: !636, file: !2, line: 981, column: 5)
!729 = !DILocation(line: 981, column: 5, scope: !636)
!730 = !DILocation(line: 982, column: 22, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !2, line: 982, column: 8)
!732 = distinct !DILexicalBlock(scope: !728, file: !2, line: 981, column: 15)
!733 = !DILocation(line: 982, column: 41, scope: !731)
!734 = !DILocation(line: 982, column: 57, scope: !731)
!735 = !DILocation(line: 982, column: 65, scope: !731)
!736 = !DILocation(line: 983, column: 6, scope: !731)
!737 = !DILocation(line: 983, column: 15, scope: !731)
!738 = !DILocation(line: 982, column: 8, scope: !731)
!739 = !DILocation(line: 983, column: 32, scope: !731)
!740 = !DILocation(line: 982, column: 8, scope: !732)
!741 = !DILocation(line: 984, column: 6, scope: !742)
!742 = distinct !DILexicalBlock(scope: !731, file: !2, line: 983, column: 37)
!743 = !DILocation(line: 986, column: 2, scope: !732)
!744 = !DILocalVariable(name: "af", scope: !636, file: !2, line: 988, type: !199)
!745 = !DILocation(line: 988, column: 6, scope: !636)
!746 = !DILocation(line: 988, column: 11, scope: !636)
!747 = !DILocation(line: 988, column: 36, scope: !636)
!748 = !DILocation(line: 988, column: 61, scope: !636)
!749 = !DILocation(line: 989, column: 21, scope: !750)
!750 = distinct !DILexicalBlock(scope: !636, file: !2, line: 989, column: 6)
!751 = !DILocation(line: 989, column: 30, scope: !750)
!752 = !DILocation(line: 989, column: 55, scope: !750)
!753 = !DILocation(line: 989, column: 6, scope: !750)
!754 = !DILocation(line: 989, column: 70, scope: !750)
!755 = !DILocation(line: 989, column: 6, scope: !636)
!756 = !DILocation(line: 990, column: 4, scope: !757)
!757 = distinct !DILexicalBlock(scope: !750, file: !2, line: 989, column: 75)
!758 = !DILocation(line: 993, column: 5, scope: !759)
!759 = distinct !DILexicalBlock(scope: !636, file: !2, line: 993, column: 5)
!760 = !DILocation(line: 993, column: 5, scope: !636)
!761 = !DILocation(line: 993, column: 19, scope: !759)
!762 = !DILocation(line: 995, column: 6, scope: !763)
!763 = distinct !DILexicalBlock(scope: !636, file: !2, line: 995, column: 5)
!764 = !DILocation(line: 995, column: 5, scope: !636)
!765 = !DILocation(line: 996, column: 8, scope: !766)
!766 = distinct !DILexicalBlock(scope: !763, file: !2, line: 995, column: 15)
!767 = !DILocation(line: 996, column: 33, scope: !766)
!768 = !DILocation(line: 996, column: 58, scope: !766)
!769 = !DILocation(line: 996, column: 6, scope: !766)
!770 = !DILocation(line: 997, column: 23, scope: !771)
!771 = distinct !DILexicalBlock(scope: !766, file: !2, line: 997, column: 8)
!772 = !DILocation(line: 997, column: 32, scope: !771)
!773 = !DILocation(line: 997, column: 67, scope: !771)
!774 = !DILocation(line: 997, column: 8, scope: !771)
!775 = !DILocation(line: 997, column: 81, scope: !771)
!776 = !DILocation(line: 997, column: 8, scope: !766)
!777 = !DILocation(line: 998, column: 6, scope: !778)
!778 = distinct !DILexicalBlock(scope: !771, file: !2, line: 997, column: 86)
!779 = !DILocation(line: 1000, column: 7, scope: !780)
!780 = distinct !DILexicalBlock(scope: !766, file: !2, line: 1000, column: 7)
!781 = !DILocation(line: 1000, column: 7, scope: !766)
!782 = !DILocation(line: 1000, column: 21, scope: !780)
!783 = !DILocation(line: 1001, column: 2, scope: !766)
!784 = !DILocation(line: 1003, column: 7, scope: !785)
!785 = distinct !DILexicalBlock(scope: !636, file: !2, line: 1003, column: 6)
!786 = !DILocation(line: 1003, column: 6, scope: !636)
!787 = !DILocation(line: 1004, column: 8, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !2, line: 1004, column: 7)
!789 = distinct !DILexicalBlock(scope: !785, file: !2, line: 1003, column: 12)
!790 = !DILocation(line: 1004, column: 7, scope: !789)
!791 = !DILocation(line: 1007, column: 26, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !2, line: 1007, column: 8)
!793 = distinct !DILexicalBlock(scope: !788, file: !2, line: 1004, column: 28)
!794 = !DILocation(line: 1007, column: 35, scope: !792)
!795 = !DILocation(line: 1007, column: 40, scope: !792)
!796 = !DILocation(line: 1007, column: 8, scope: !792)
!797 = !DILocation(line: 1008, column: 6, scope: !792)
!798 = !DILocation(line: 1007, column: 8, scope: !793)
!799 = !DILocation(line: 1009, column: 5, scope: !800)
!800 = distinct !DILexicalBlock(scope: !792, file: !2, line: 1008, column: 11)
!801 = !DILocation(line: 1011, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !793, file: !2, line: 1011, column: 7)
!803 = !DILocation(line: 1011, column: 7, scope: !793)
!804 = !DILocation(line: 1011, column: 21, scope: !802)
!805 = !DILocation(line: 1013, column: 26, scope: !806)
!806 = distinct !DILexicalBlock(scope: !793, file: !2, line: 1013, column: 8)
!807 = !DILocation(line: 1013, column: 35, scope: !806)
!808 = !DILocation(line: 1013, column: 40, scope: !806)
!809 = !DILocation(line: 1013, column: 8, scope: !806)
!810 = !DILocation(line: 1014, column: 6, scope: !806)
!811 = !DILocation(line: 1013, column: 8, scope: !793)
!812 = !DILocation(line: 1015, column: 5, scope: !813)
!813 = distinct !DILexicalBlock(scope: !806, file: !2, line: 1014, column: 11)
!814 = !DILocation(line: 1017, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !793, file: !2, line: 1017, column: 7)
!816 = !DILocation(line: 1017, column: 7, scope: !793)
!817 = !DILocation(line: 1017, column: 21, scope: !815)
!818 = !DILocation(line: 1018, column: 5, scope: !793)
!819 = !DILocation(line: 1018, column: 9, scope: !793)
!820 = !DILocation(line: 1019, column: 26, scope: !821)
!821 = distinct !DILexicalBlock(scope: !793, file: !2, line: 1019, column: 8)
!822 = !DILocation(line: 1019, column: 35, scope: !821)
!823 = !DILocation(line: 1019, column: 40, scope: !821)
!824 = !DILocation(line: 1019, column: 8, scope: !821)
!825 = !DILocation(line: 1019, column: 64, scope: !821)
!826 = !DILocation(line: 1019, column: 8, scope: !793)
!827 = !DILocation(line: 1020, column: 5, scope: !828)
!828 = distinct !DILexicalBlock(scope: !821, file: !2, line: 1019, column: 69)
!829 = !DILocation(line: 1023, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !793, file: !2, line: 1023, column: 7)
!831 = !DILocation(line: 1023, column: 7, scope: !793)
!832 = !DILocation(line: 1023, column: 21, scope: !830)
!833 = !DILocation(line: 1024, column: 26, scope: !834)
!834 = distinct !DILexicalBlock(scope: !793, file: !2, line: 1024, column: 8)
!835 = !DILocation(line: 1024, column: 35, scope: !834)
!836 = !DILocation(line: 1024, column: 40, scope: !834)
!837 = !DILocation(line: 1024, column: 8, scope: !834)
!838 = !DILocation(line: 1024, column: 64, scope: !834)
!839 = !DILocation(line: 1024, column: 8, scope: !793)
!840 = !DILocation(line: 1025, column: 5, scope: !841)
!841 = distinct !DILexicalBlock(scope: !834, file: !2, line: 1024, column: 69)
!842 = !DILocation(line: 1027, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !793, file: !2, line: 1027, column: 7)
!844 = !DILocation(line: 1027, column: 7, scope: !793)
!845 = !DILocation(line: 1027, column: 21, scope: !843)
!846 = !DILocation(line: 1029, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !793, file: !2, line: 1029, column: 7)
!848 = !DILocation(line: 1029, column: 7, scope: !793)
!849 = !DILocalVariable(name: "sarbaddr", scope: !850, file: !2, line: 1030, type: !187)
!850 = distinct !DILexicalBlock(scope: !847, file: !2, line: 1029, column: 23)
!851 = !DILocation(line: 1030, column: 17, scope: !850)
!852 = !DILocation(line: 1031, column: 8, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !2, line: 1031, column: 8)
!854 = !DILocation(line: 1031, column: 17, scope: !853)
!855 = !DILocation(line: 1031, column: 21, scope: !853)
!856 = !DILocation(line: 1031, column: 8, scope: !850)
!857 = !DILocation(line: 1032, column: 15, scope: !853)
!858 = !DILocation(line: 1032, column: 6, scope: !853)
!859 = !DILocalVariable(name: "arbaddr", scope: !850, file: !2, line: 1033, type: !209)
!860 = !DILocation(line: 1033, column: 14, scope: !850)
!861 = !DILocation(line: 1034, column: 35, scope: !850)
!862 = !DILocation(line: 1034, column: 5, scope: !850)
!863 = !DILocalVariable(name: "i", scope: !850, file: !2, line: 1035, type: !199)
!864 = !DILocation(line: 1035, column: 9, scope: !850)
!865 = !DILocalVariable(name: "maxi", scope: !850, file: !2, line: 1036, type: !199)
!866 = !DILocation(line: 1036, column: 9, scope: !850)
!867 = !DILocation(line: 1036, column: 32, scope: !850)
!868 = !DILocation(line: 1036, column: 16, scope: !850)
!869 = !DILocation(line: 1036, column: 41, scope: !850)
!870 = !DILocation(line: 1037, column: 10, scope: !871)
!871 = distinct !DILexicalBlock(scope: !850, file: !2, line: 1037, column: 5)
!872 = !DILocation(line: 1037, column: 9, scope: !871)
!873 = !DILocation(line: 1037, column: 13, scope: !874)
!874 = distinct !DILexicalBlock(scope: !871, file: !2, line: 1037, column: 5)
!875 = !DILocation(line: 1037, column: 15, scope: !874)
!876 = !DILocation(line: 1037, column: 14, scope: !874)
!877 = !DILocation(line: 1037, column: 5, scope: !871)
!878 = !DILocalVariable(name: "chni", scope: !879, file: !2, line: 1038, type: !228)
!879 = distinct !DILexicalBlock(scope: !874, file: !2, line: 1037, column: 25)
!880 = !DILocation(line: 1038, column: 15, scope: !879)
!881 = !DILocalVariable(name: "port", scope: !879, file: !2, line: 1039, type: !199)
!882 = !DILocation(line: 1039, column: 10, scope: !879)
!883 = !DILocation(line: 1039, column: 33, scope: !879)
!884 = !DILocation(line: 1039, column: 17, scope: !879)
!885 = !DILocation(line: 1040, column: 9, scope: !886)
!886 = distinct !DILexicalBlock(scope: !879, file: !2, line: 1040, column: 9)
!887 = !DILocation(line: 1040, column: 13, scope: !886)
!888 = !DILocation(line: 1040, column: 9, scope: !879)
!889 = !DILocation(line: 1040, column: 25, scope: !886)
!890 = !DILocation(line: 1040, column: 20, scope: !886)
!891 = !DILocation(line: 1041, column: 30, scope: !879)
!892 = !DILocation(line: 1041, column: 6, scope: !879)
!893 = !DILocalVariable(name: "u", scope: !879, file: !2, line: 1042, type: !197)
!894 = !DILocation(line: 1042, column: 15, scope: !879)
!895 = !DILocation(line: 1042, column: 40, scope: !879)
!896 = !DILocation(line: 1043, column: 38, scope: !879)
!897 = !DILocation(line: 1043, column: 56, scope: !879)
!898 = !DILocation(line: 1043, column: 40, scope: !879)
!899 = !DILocation(line: 1043, column: 64, scope: !879)
!900 = !DILocation(line: 1043, column: 68, scope: !879)
!901 = !DILocation(line: 1043, column: 6, scope: !879)
!902 = !DILocation(line: 1043, column: 24, scope: !879)
!903 = !DILocation(line: 1043, column: 8, scope: !879)
!904 = !DILocation(line: 1043, column: 32, scope: !879)
!905 = !DILocation(line: 1043, column: 36, scope: !879)
!906 = !DILocation(line: 1047, column: 24, scope: !879)
!907 = !DILocation(line: 1047, column: 40, scope: !879)
!908 = !DILocation(line: 1047, column: 6, scope: !879)
!909 = !DILocation(line: 1048, column: 5, scope: !879)
!910 = !DILocation(line: 1037, column: 21, scope: !874)
!911 = !DILocation(line: 1037, column: 5, scope: !874)
!912 = distinct !{!912, !877, !913, !914}
!913 = !DILocation(line: 1048, column: 5, scope: !871)
!914 = !{!"llvm.loop.mustprogress"}
!915 = !DILocation(line: 1049, column: 4, scope: !850)
!916 = !DILocation(line: 1051, column: 9, scope: !917)
!917 = distinct !DILexicalBlock(scope: !793, file: !2, line: 1051, column: 8)
!918 = !DILocation(line: 1051, column: 8, scope: !793)
!919 = !DILocation(line: 1052, column: 27, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !2, line: 1052, column: 9)
!921 = distinct !DILexicalBlock(scope: !917, file: !2, line: 1051, column: 18)
!922 = !DILocation(line: 1052, column: 36, scope: !920)
!923 = !DILocation(line: 1052, column: 46, scope: !920)
!924 = !DILocation(line: 1052, column: 9, scope: !920)
!925 = !DILocation(line: 1053, column: 24, scope: !920)
!926 = !DILocation(line: 1052, column: 9, scope: !921)
!927 = !DILocation(line: 1054, column: 6, scope: !928)
!928 = distinct !DILexicalBlock(scope: !920, file: !2, line: 1053, column: 29)
!929 = !DILocation(line: 1056, column: 4, scope: !921)
!930 = !DILocation(line: 1057, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !793, file: !2, line: 1057, column: 7)
!932 = !DILocation(line: 1057, column: 7, scope: !793)
!933 = !DILocation(line: 1057, column: 21, scope: !931)
!934 = !DILocation(line: 1059, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !793, file: !2, line: 1059, column: 7)
!936 = !DILocation(line: 1059, column: 7, scope: !793)
!937 = !DILocalVariable(name: "sarbaddr", scope: !938, file: !2, line: 1060, type: !187)
!938 = distinct !DILexicalBlock(scope: !935, file: !2, line: 1059, column: 23)
!939 = !DILocation(line: 1060, column: 17, scope: !938)
!940 = !DILocation(line: 1061, column: 8, scope: !941)
!941 = distinct !DILexicalBlock(scope: !938, file: !2, line: 1061, column: 8)
!942 = !DILocation(line: 1061, column: 17, scope: !941)
!943 = !DILocation(line: 1061, column: 21, scope: !941)
!944 = !DILocation(line: 1061, column: 8, scope: !938)
!945 = !DILocation(line: 1062, column: 15, scope: !941)
!946 = !DILocation(line: 1062, column: 6, scope: !941)
!947 = !DILocalVariable(name: "arbaddr", scope: !938, file: !2, line: 1063, type: !948)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 5600, elements: !314)
!949 = !DILocation(line: 1063, column: 14, scope: !938)
!950 = !DILocation(line: 1064, column: 35, scope: !938)
!951 = !DILocation(line: 1064, column: 51, scope: !938)
!952 = !DILocation(line: 1064, column: 5, scope: !938)
!953 = !DILocalVariable(name: "i", scope: !938, file: !2, line: 1065, type: !199)
!954 = !DILocation(line: 1065, column: 9, scope: !938)
!955 = !DILocalVariable(name: "maxi", scope: !938, file: !2, line: 1066, type: !199)
!956 = !DILocation(line: 1066, column: 9, scope: !938)
!957 = !DILocation(line: 1066, column: 32, scope: !938)
!958 = !DILocation(line: 1066, column: 16, scope: !938)
!959 = !DILocation(line: 1066, column: 41, scope: !938)
!960 = !DILocation(line: 1067, column: 10, scope: !961)
!961 = distinct !DILexicalBlock(scope: !938, file: !2, line: 1067, column: 5)
!962 = !DILocation(line: 1067, column: 9, scope: !961)
!963 = !DILocation(line: 1067, column: 13, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !2, line: 1067, column: 5)
!965 = !DILocation(line: 1067, column: 15, scope: !964)
!966 = !DILocation(line: 1067, column: 14, scope: !964)
!967 = !DILocation(line: 1067, column: 5, scope: !961)
!968 = !DILocation(line: 1068, column: 9, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !2, line: 1068, column: 9)
!970 = distinct !DILexicalBlock(scope: !964, file: !2, line: 1067, column: 25)
!971 = !DILocation(line: 1068, column: 10, scope: !969)
!972 = !DILocation(line: 1068, column: 9, scope: !970)
!973 = !DILocation(line: 1069, column: 25, scope: !969)
!974 = !DILocation(line: 1069, column: 17, scope: !969)
!975 = !DILocation(line: 1069, column: 29, scope: !969)
!976 = !DILocation(line: 1069, column: 7, scope: !969)
!977 = !DILocation(line: 1070, column: 29, scope: !970)
!978 = !DILocation(line: 1070, column: 21, scope: !970)
!979 = !DILocation(line: 1070, column: 49, scope: !970)
!980 = !DILocation(line: 1070, column: 33, scope: !970)
!981 = !DILocation(line: 1070, column: 6, scope: !970)
!982 = !DILocalVariable(name: "u", scope: !970, file: !2, line: 1071, type: !197)
!983 = !DILocation(line: 1071, column: 15, scope: !970)
!984 = !DILocation(line: 1071, column: 37, scope: !970)
!985 = !DILocation(line: 1071, column: 29, scope: !970)
!986 = !DILocation(line: 1071, column: 43, scope: !970)
!987 = !DILocation(line: 1072, column: 38, scope: !970)
!988 = !DILocation(line: 1072, column: 56, scope: !970)
!989 = !DILocation(line: 1072, column: 40, scope: !970)
!990 = !DILocation(line: 1072, column: 64, scope: !970)
!991 = !DILocation(line: 1072, column: 68, scope: !970)
!992 = !DILocation(line: 1072, column: 6, scope: !970)
!993 = !DILocation(line: 1072, column: 24, scope: !970)
!994 = !DILocation(line: 1072, column: 8, scope: !970)
!995 = !DILocation(line: 1072, column: 32, scope: !970)
!996 = !DILocation(line: 1072, column: 36, scope: !970)
!997 = !DILocation(line: 1076, column: 5, scope: !970)
!998 = !DILocation(line: 1067, column: 21, scope: !964)
!999 = !DILocation(line: 1067, column: 5, scope: !964)
!1000 = distinct !{!1000, !967, !1001, !914}
!1001 = !DILocation(line: 1076, column: 5, scope: !961)
!1002 = !DILocation(line: 1077, column: 28, scope: !938)
!1003 = !DILocation(line: 1077, column: 37, scope: !938)
!1004 = !DILocation(line: 1077, column: 49, scope: !938)
!1005 = !DILocation(line: 1077, column: 58, scope: !938)
!1006 = !DILocation(line: 1077, column: 5, scope: !938)
!1007 = !DILocation(line: 1078, column: 4, scope: !938)
!1008 = !DILocation(line: 1079, column: 3, scope: !793)
!1009 = !DILocalVariable(name: "before", scope: !1010, file: !2, line: 1081, type: !199)
!1010 = distinct !DILexicalBlock(scope: !788, file: !2, line: 1079, column: 10)
!1011 = !DILocation(line: 1081, column: 8, scope: !1010)
!1012 = !DILocation(line: 1081, column: 16, scope: !1010)
!1013 = !DILocation(line: 1081, column: 24, scope: !1010)
!1014 = !DILocation(line: 1081, column: 27, scope: !1010)
!1015 = !DILocation(line: 1083, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 1083, column: 7)
!1017 = !DILocation(line: 1083, column: 7, scope: !1010)
!1018 = !DILocation(line: 1084, column: 32, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 1084, column: 9)
!1020 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 1083, column: 15)
!1021 = !DILocation(line: 1084, column: 41, scope: !1019)
!1022 = !DILocation(line: 1084, column: 9, scope: !1019)
!1023 = !DILocation(line: 1084, column: 68, scope: !1019)
!1024 = !DILocation(line: 1084, column: 9, scope: !1020)
!1025 = !DILocation(line: 1085, column: 6, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 1084, column: 73)
!1027 = !DILocation(line: 1087, column: 8, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 1087, column: 8)
!1029 = !DILocation(line: 1087, column: 8, scope: !1020)
!1030 = !DILocation(line: 1087, column: 22, scope: !1028)
!1031 = !DILocation(line: 1088, column: 32, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 1088, column: 9)
!1033 = !DILocation(line: 1088, column: 41, scope: !1032)
!1034 = !DILocation(line: 1088, column: 9, scope: !1032)
!1035 = !DILocation(line: 1089, column: 7, scope: !1032)
!1036 = !DILocation(line: 1088, column: 9, scope: !1020)
!1037 = !DILocation(line: 1090, column: 6, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 1089, column: 12)
!1039 = !DILocation(line: 1092, column: 8, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 1092, column: 8)
!1041 = !DILocation(line: 1092, column: 8, scope: !1020)
!1042 = !DILocation(line: 1092, column: 22, scope: !1040)
!1043 = !DILocation(line: 1093, column: 4, scope: !1020)
!1044 = !DILocation(line: 1095, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 1095, column: 7)
!1046 = !DILocation(line: 1095, column: 7, scope: !1010)
!1047 = !DILocalVariable(name: "sarbaddr", scope: !1048, file: !2, line: 1096, type: !187)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 1095, column: 23)
!1049 = !DILocation(line: 1096, column: 17, scope: !1048)
!1050 = !DILocation(line: 1097, column: 8, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 1097, column: 8)
!1052 = !DILocation(line: 1097, column: 17, scope: !1051)
!1053 = !DILocation(line: 1097, column: 21, scope: !1051)
!1054 = !DILocation(line: 1097, column: 8, scope: !1048)
!1055 = !DILocation(line: 1098, column: 15, scope: !1051)
!1056 = !DILocation(line: 1098, column: 6, scope: !1051)
!1057 = !DILocalVariable(name: "arbaddr", scope: !1048, file: !2, line: 1099, type: !948)
!1058 = !DILocation(line: 1099, column: 14, scope: !1048)
!1059 = !DILocation(line: 1100, column: 35, scope: !1048)
!1060 = !DILocation(line: 1100, column: 51, scope: !1048)
!1061 = !DILocation(line: 1100, column: 5, scope: !1048)
!1062 = !DILocalVariable(name: "i", scope: !1048, file: !2, line: 1101, type: !199)
!1063 = !DILocation(line: 1101, column: 9, scope: !1048)
!1064 = !DILocalVariable(name: "maxi", scope: !1048, file: !2, line: 1102, type: !199)
!1065 = !DILocation(line: 1102, column: 9, scope: !1048)
!1066 = !DILocation(line: 1102, column: 32, scope: !1048)
!1067 = !DILocation(line: 1102, column: 16, scope: !1048)
!1068 = !DILocation(line: 1102, column: 41, scope: !1048)
!1069 = !DILocation(line: 1103, column: 10, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 1103, column: 5)
!1071 = !DILocation(line: 1103, column: 9, scope: !1070)
!1072 = !DILocation(line: 1103, column: 13, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 1103, column: 5)
!1074 = !DILocation(line: 1103, column: 15, scope: !1073)
!1075 = !DILocation(line: 1103, column: 14, scope: !1073)
!1076 = !DILocation(line: 1103, column: 5, scope: !1070)
!1077 = !DILocation(line: 1104, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 1104, column: 9)
!1079 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 1103, column: 25)
!1080 = !DILocation(line: 1104, column: 10, scope: !1078)
!1081 = !DILocation(line: 1104, column: 9, scope: !1079)
!1082 = !DILocation(line: 1105, column: 25, scope: !1078)
!1083 = !DILocation(line: 1105, column: 17, scope: !1078)
!1084 = !DILocation(line: 1105, column: 29, scope: !1078)
!1085 = !DILocation(line: 1105, column: 7, scope: !1078)
!1086 = !DILocation(line: 1106, column: 29, scope: !1079)
!1087 = !DILocation(line: 1106, column: 21, scope: !1079)
!1088 = !DILocation(line: 1106, column: 49, scope: !1079)
!1089 = !DILocation(line: 1106, column: 33, scope: !1079)
!1090 = !DILocation(line: 1106, column: 6, scope: !1079)
!1091 = !DILocalVariable(name: "u", scope: !1079, file: !2, line: 1107, type: !197)
!1092 = !DILocation(line: 1107, column: 15, scope: !1079)
!1093 = !DILocation(line: 1107, column: 37, scope: !1079)
!1094 = !DILocation(line: 1107, column: 29, scope: !1079)
!1095 = !DILocation(line: 1107, column: 43, scope: !1079)
!1096 = !DILocation(line: 1108, column: 38, scope: !1079)
!1097 = !DILocation(line: 1108, column: 56, scope: !1079)
!1098 = !DILocation(line: 1108, column: 40, scope: !1079)
!1099 = !DILocation(line: 1108, column: 64, scope: !1079)
!1100 = !DILocation(line: 1108, column: 68, scope: !1079)
!1101 = !DILocation(line: 1108, column: 6, scope: !1079)
!1102 = !DILocation(line: 1108, column: 24, scope: !1079)
!1103 = !DILocation(line: 1108, column: 8, scope: !1079)
!1104 = !DILocation(line: 1108, column: 32, scope: !1079)
!1105 = !DILocation(line: 1108, column: 36, scope: !1079)
!1106 = !DILocation(line: 1112, column: 5, scope: !1079)
!1107 = !DILocation(line: 1103, column: 21, scope: !1073)
!1108 = !DILocation(line: 1103, column: 5, scope: !1073)
!1109 = distinct !{!1109, !1076, !1110, !914}
!1110 = !DILocation(line: 1112, column: 5, scope: !1070)
!1111 = !DILocation(line: 1113, column: 28, scope: !1048)
!1112 = !DILocation(line: 1113, column: 37, scope: !1048)
!1113 = !DILocation(line: 1113, column: 49, scope: !1048)
!1114 = !DILocation(line: 1113, column: 58, scope: !1048)
!1115 = !DILocation(line: 1113, column: 5, scope: !1048)
!1116 = !DILocation(line: 1114, column: 4, scope: !1048)
!1117 = !DILocation(line: 1116, column: 8, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 1116, column: 7)
!1119 = !DILocation(line: 1116, column: 7, scope: !1010)
!1120 = !DILocation(line: 1117, column: 32, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 1117, column: 9)
!1122 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 1116, column: 16)
!1123 = !DILocation(line: 1117, column: 41, scope: !1121)
!1124 = !DILocation(line: 1117, column: 9, scope: !1121)
!1125 = !DILocation(line: 1117, column: 68, scope: !1121)
!1126 = !DILocation(line: 1117, column: 9, scope: !1122)
!1127 = !DILocation(line: 1118, column: 6, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 1117, column: 73)
!1129 = !DILocation(line: 1120, column: 8, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 1120, column: 8)
!1131 = !DILocation(line: 1120, column: 8, scope: !1122)
!1132 = !DILocation(line: 1120, column: 22, scope: !1130)
!1133 = !DILocation(line: 1121, column: 32, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 1121, column: 9)
!1135 = !DILocation(line: 1121, column: 41, scope: !1134)
!1136 = !DILocation(line: 1121, column: 9, scope: !1134)
!1137 = !DILocation(line: 1122, column: 6, scope: !1134)
!1138 = !DILocation(line: 1121, column: 9, scope: !1122)
!1139 = !DILocation(line: 1123, column: 6, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 1122, column: 11)
!1141 = !DILocation(line: 1125, column: 8, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 1125, column: 8)
!1143 = !DILocation(line: 1125, column: 8, scope: !1122)
!1144 = !DILocation(line: 1125, column: 22, scope: !1142)
!1145 = !DILocation(line: 1126, column: 4, scope: !1122)
!1146 = !DILocation(line: 1128, column: 9, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 1128, column: 8)
!1148 = !DILocation(line: 1128, column: 8, scope: !1010)
!1149 = !DILocation(line: 1129, column: 32, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 1129, column: 9)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 1128, column: 18)
!1152 = !DILocation(line: 1129, column: 41, scope: !1150)
!1153 = !DILocation(line: 1129, column: 9, scope: !1150)
!1154 = !DILocation(line: 1130, column: 27, scope: !1150)
!1155 = !DILocation(line: 1129, column: 9, scope: !1151)
!1156 = !DILocation(line: 1131, column: 6, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 1130, column: 32)
!1158 = !DILocation(line: 1133, column: 8, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 1133, column: 8)
!1160 = !DILocation(line: 1133, column: 8, scope: !1151)
!1161 = !DILocation(line: 1133, column: 22, scope: !1159)
!1162 = !DILocation(line: 1134, column: 32, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 1134, column: 9)
!1164 = !DILocation(line: 1134, column: 41, scope: !1163)
!1165 = !DILocation(line: 1134, column: 9, scope: !1163)
!1166 = !DILocation(line: 1135, column: 7, scope: !1163)
!1167 = !DILocation(line: 1134, column: 9, scope: !1151)
!1168 = !DILocation(line: 1136, column: 6, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 1135, column: 12)
!1170 = !DILocation(line: 1138, column: 8, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 1138, column: 8)
!1172 = !DILocation(line: 1138, column: 8, scope: !1151)
!1173 = !DILocation(line: 1138, column: 22, scope: !1171)
!1174 = !DILocation(line: 1139, column: 4, scope: !1151)
!1175 = !DILocation(line: 1141, column: 2, scope: !789)
!1176 = !DILocation(line: 1143, column: 13, scope: !636)
!1177 = !DILocation(line: 1143, column: 25, scope: !636)
!1178 = !DILocation(line: 1143, column: 2, scope: !636)
!1179 = !DILocation(line: 1144, column: 6, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !636, file: !2, line: 1144, column: 5)
!1181 = !DILocation(line: 1144, column: 5, scope: !636)
!1182 = !DILocation(line: 1145, column: 15, scope: !1180)
!1183 = !DILocation(line: 1145, column: 32, scope: !1180)
!1184 = !DILocation(line: 1145, column: 4, scope: !1180)
!1185 = !DILocation(line: 1147, column: 2, scope: !636)
!1186 = !DILocation(line: 1148, column: 1, scope: !636)
!1187 = distinct !DISubprogram(name: "clnet_connect", scope: !2, file: !2, line: 209, type: !1188, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !425)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!199, !228, !187, !639, !187, !199, !486}
!1190 = !DILocalVariable(name: "clnet_remote_port", arg: 1, scope: !1187, file: !2, line: 209, type: !228)
!1191 = !DILocation(line: 209, column: 35, scope: !1187)
!1192 = !DILocalVariable(name: "remote_address", arg: 2, scope: !1187, file: !2, line: 209, type: !187)
!1193 = !DILocation(line: 209, column: 66, scope: !1187)
!1194 = !DILocalVariable(name: "ifname", arg: 3, scope: !1187, file: !2, line: 210, type: !639)
!1195 = !DILocation(line: 210, column: 24, scope: !1187)
!1196 = !DILocalVariable(name: "local_address", arg: 4, scope: !1187, file: !2, line: 210, type: !187)
!1197 = !DILocation(line: 210, column: 44, scope: !1187)
!1198 = !DILocalVariable(name: "verbose", arg: 5, scope: !1187, file: !2, line: 210, type: !199)
!1199 = !DILocation(line: 210, column: 63, scope: !1187)
!1200 = !DILocalVariable(name: "clnet_info", arg: 6, scope: !1187, file: !2, line: 211, type: !486)
!1201 = !DILocation(line: 211, column: 21, scope: !1187)
!1202 = !DILocalVariable(name: "local_addr", scope: !1187, file: !2, line: 213, type: !209)
!1203 = !DILocation(line: 213, column: 11, scope: !1187)
!1204 = !DILocalVariable(name: "clnet_fd", scope: !1187, file: !2, line: 214, type: !199)
!1205 = !DILocation(line: 214, column: 18, scope: !1187)
!1206 = !DILocalVariable(name: "connect_err", scope: !1187, file: !2, line: 215, type: !199)
!1207 = !DILocation(line: 215, column: 6, scope: !1187)
!1208 = !DILocalVariable(name: "connect_cycle", scope: !1187, file: !2, line: 216, type: !199)
!1209 = !DILocation(line: 216, column: 6, scope: !1187)
!1210 = !DILocalVariable(name: "remote_addr", scope: !1187, file: !2, line: 218, type: !209)
!1211 = !DILocation(line: 218, column: 11, scope: !1187)
!1212 = !DILocation(line: 218, column: 2, scope: !1187)
!1213 = !DILabel(scope: !1187, name: "start_socket", file: !2, line: 220)
!1214 = !DILocation(line: 220, column: 2, scope: !1187)
!1215 = !DILocation(line: 222, column: 11, scope: !1187)
!1216 = !DILocation(line: 223, column: 14, scope: !1187)
!1217 = !DILocation(line: 225, column: 2, scope: !1187)
!1218 = !DILocation(line: 226, column: 37, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 226, column: 6)
!1220 = !DILocation(line: 226, column: 53, scope: !1219)
!1221 = !DILocation(line: 226, column: 6, scope: !1219)
!1222 = !DILocation(line: 227, column: 18, scope: !1219)
!1223 = !DILocation(line: 226, column: 6, scope: !1187)
!1224 = !DILocation(line: 228, column: 3, scope: !1219)
!1225 = !DILocation(line: 230, column: 2, scope: !1187)
!1226 = !DILocation(line: 232, column: 35, scope: !1187)
!1227 = !DILocation(line: 232, column: 20, scope: !1187)
!1228 = !DILocation(line: 233, column: 4, scope: !1187)
!1229 = !DILocation(line: 233, column: 49, scope: !1187)
!1230 = !DILocation(line: 234, column: 4, scope: !1187)
!1231 = !DILocation(line: 234, column: 53, scope: !1187)
!1232 = !DILocation(line: 232, column: 13, scope: !1187)
!1233 = !DILocation(line: 232, column: 11, scope: !1187)
!1234 = !DILocation(line: 235, column: 6, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 235, column: 6)
!1236 = !DILocation(line: 235, column: 15, scope: !1235)
!1237 = !DILocation(line: 235, column: 6, scope: !1187)
!1238 = !DILocation(line: 236, column: 3, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !2, line: 235, column: 20)
!1240 = !DILocation(line: 237, column: 3, scope: !1239)
!1241 = !DILocation(line: 240, column: 26, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 240, column: 6)
!1243 = !DILocation(line: 240, column: 36, scope: !1242)
!1244 = !DILocation(line: 240, column: 6, scope: !1242)
!1245 = !DILocation(line: 240, column: 44, scope: !1242)
!1246 = !DILocation(line: 240, column: 6, scope: !1187)
!1247 = !DILocation(line: 242, column: 49, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 240, column: 49)
!1249 = !DILocation(line: 241, column: 3, scope: !1248)
!1250 = !DILocation(line: 243, column: 2, scope: !1248)
!1251 = !DILocation(line: 245, column: 20, scope: !1187)
!1252 = !DILocation(line: 245, column: 2, scope: !1187)
!1253 = !DILocation(line: 247, column: 21, scope: !1187)
!1254 = !DILocation(line: 247, column: 46, scope: !1187)
!1255 = !DILocation(line: 247, column: 31, scope: !1187)
!1256 = !DILocation(line: 247, column: 2, scope: !1187)
!1257 = !DILocation(line: 248, column: 21, scope: !1187)
!1258 = !DILocation(line: 248, column: 46, scope: !1187)
!1259 = !DILocation(line: 248, column: 31, scope: !1187)
!1260 = !DILocation(line: 248, column: 2, scope: !1187)
!1261 = !DILocation(line: 250, column: 5, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 250, column: 5)
!1263 = !DILocation(line: 250, column: 17, scope: !1262)
!1264 = !DILocation(line: 250, column: 25, scope: !1262)
!1265 = !DILocation(line: 250, column: 30, scope: !1262)
!1266 = !DILocation(line: 250, column: 29, scope: !1262)
!1267 = !DILocation(line: 250, column: 43, scope: !1262)
!1268 = !DILocation(line: 250, column: 5, scope: !1187)
!1269 = !DILocation(line: 252, column: 21, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 252, column: 6)
!1271 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 250, column: 49)
!1272 = !DILocation(line: 252, column: 6, scope: !1270)
!1273 = !DILocation(line: 252, column: 31, scope: !1270)
!1274 = !DILocation(line: 252, column: 6, scope: !1271)
!1275 = !DILocation(line: 253, column: 8, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 253, column: 8)
!1277 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 252, column: 44)
!1278 = !DILocation(line: 253, column: 62, scope: !1276)
!1279 = !DILocation(line: 253, column: 8, scope: !1277)
!1280 = !DILocation(line: 254, column: 8, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 253, column: 67)
!1282 = !DILocation(line: 256, column: 3, scope: !1277)
!1283 = !DILocation(line: 257, column: 8, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 257, column: 8)
!1285 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 256, column: 10)
!1286 = !DILocation(line: 257, column: 68, scope: !1284)
!1287 = !DILocation(line: 257, column: 8, scope: !1285)
!1288 = !DILocation(line: 258, column: 8, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 257, column: 73)
!1290 = !DILocation(line: 262, column: 13, scope: !1271)
!1291 = !DILocation(line: 262, column: 42, scope: !1271)
!1292 = !DILocation(line: 262, column: 3, scope: !1271)
!1293 = !DILocation(line: 264, column: 2, scope: !1271)
!1294 = !DILocation(line: 264, column: 20, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 264, column: 13)
!1296 = !DILocation(line: 264, column: 13, scope: !1295)
!1297 = !DILocation(line: 264, column: 35, scope: !1295)
!1298 = !DILocation(line: 264, column: 13, scope: !1262)
!1299 = !DILocation(line: 266, column: 38, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 266, column: 7)
!1301 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 264, column: 40)
!1302 = !DILocation(line: 266, column: 7, scope: !1300)
!1303 = !DILocation(line: 267, column: 21, scope: !1300)
!1304 = !DILocation(line: 266, column: 7, scope: !1301)
!1305 = !DILocation(line: 268, column: 4, scope: !1300)
!1306 = !DILocation(line: 270, column: 13, scope: !1301)
!1307 = !DILocation(line: 270, column: 39, scope: !1301)
!1308 = !DILocation(line: 270, column: 3, scope: !1301)
!1309 = !DILocation(line: 271, column: 2, scope: !1301)
!1310 = !DILocation(line: 273, column: 5, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 273, column: 5)
!1312 = !DILocation(line: 273, column: 17, scope: !1311)
!1313 = !DILocation(line: 273, column: 5, scope: !1187)
!1314 = !DILocation(line: 275, column: 2, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 273, column: 26)
!1316 = !DILocation(line: 275, column: 27, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 275, column: 12)
!1318 = !DILocation(line: 275, column: 12, scope: !1317)
!1319 = !DILocation(line: 275, column: 64, scope: !1317)
!1320 = !DILocation(line: 275, column: 12, scope: !1311)
!1321 = !DILocation(line: 276, column: 3, scope: !1317)
!1322 = !DILocation(line: 278, column: 6, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 278, column: 6)
!1324 = !DILocation(line: 278, column: 6, scope: !1187)
!1325 = !DILocation(line: 279, column: 14, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 278, column: 18)
!1327 = !DILocation(line: 279, column: 26, scope: !1326)
!1328 = !DILocation(line: 279, column: 3, scope: !1326)
!1329 = !DILocation(line: 280, column: 14, scope: !1326)
!1330 = !DILocation(line: 280, column: 26, scope: !1326)
!1331 = !DILocation(line: 280, column: 3, scope: !1326)
!1332 = !DILocation(line: 281, column: 20, scope: !1326)
!1333 = !DILocation(line: 281, column: 3, scope: !1326)
!1334 = !DILocation(line: 281, column: 15, scope: !1326)
!1335 = !DILocation(line: 281, column: 18, scope: !1326)
!1336 = !DILocation(line: 282, column: 22, scope: !1326)
!1337 = !DILocation(line: 282, column: 34, scope: !1326)
!1338 = !DILocation(line: 282, column: 46, scope: !1326)
!1339 = !DILocation(line: 282, column: 3, scope: !1326)
!1340 = !DILocation(line: 283, column: 3, scope: !1326)
!1341 = !DILocation(line: 283, column: 3, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 283, column: 3)
!1343 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 283, column: 3)
!1344 = !DILocation(line: 283, column: 3, scope: !1343)
!1345 = !DILocalVariable(name: "szdst", scope: !1346, file: !2, line: 283, type: !185)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 283, column: 3)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 283, column: 3)
!1348 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 283, column: 3)
!1349 = !DILocation(line: 283, column: 3, scope: !1346)
!1350 = !DILocation(line: 283, column: 3, scope: !1348)
!1351 = !DILocation(line: 284, column: 3, scope: !1326)
!1352 = !DILocation(line: 284, column: 3, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 284, column: 3)
!1354 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 284, column: 3)
!1355 = !DILocation(line: 284, column: 3, scope: !1354)
!1356 = !DILocalVariable(name: "szdst", scope: !1357, file: !2, line: 284, type: !185)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 284, column: 3)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 284, column: 3)
!1359 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 284, column: 3)
!1360 = !DILocation(line: 284, column: 3, scope: !1357)
!1361 = !DILocation(line: 284, column: 3, scope: !1359)
!1362 = !DILocation(line: 285, column: 3, scope: !1326)
!1363 = !DILocation(line: 285, column: 3, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 285, column: 3)
!1365 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 285, column: 3)
!1366 = !DILocation(line: 285, column: 3, scope: !1365)
!1367 = !DILocalVariable(name: "szdst", scope: !1368, file: !2, line: 285, type: !185)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 285, column: 3)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 285, column: 3)
!1370 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 285, column: 3)
!1371 = !DILocation(line: 285, column: 3, scope: !1368)
!1372 = !DILocation(line: 285, column: 3, scope: !1370)
!1373 = !DILocation(line: 286, column: 2, scope: !1326)
!1374 = !DILocation(line: 288, column: 6, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 288, column: 6)
!1376 = !DILocation(line: 288, column: 6, scope: !1187)
!1377 = !DILocalVariable(name: "try_again", scope: !1378, file: !2, line: 289, type: !199)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !2, line: 288, column: 18)
!1379 = !DILocation(line: 289, column: 7, scope: !1378)
!1380 = !DILocation(line: 290, column: 33, scope: !1378)
!1381 = !DILocation(line: 290, column: 45, scope: !1378)
!1382 = !DILocation(line: 290, column: 86, scope: !1378)
!1383 = !DILocation(line: 290, column: 21, scope: !1378)
!1384 = !DILocation(line: 290, column: 3, scope: !1378)
!1385 = !DILocation(line: 290, column: 15, scope: !1378)
!1386 = !DILocation(line: 290, column: 19, scope: !1378)
!1387 = !DILocation(line: 291, column: 8, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 291, column: 7)
!1389 = !DILocation(line: 291, column: 20, scope: !1388)
!1390 = !DILocation(line: 291, column: 7, scope: !1378)
!1391 = !DILocation(line: 292, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 292, column: 7)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 291, column: 25)
!1394 = !DILocation(line: 292, column: 7, scope: !1393)
!1395 = !DILocation(line: 293, column: 5, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 292, column: 18)
!1397 = !DILocation(line: 295, column: 4, scope: !1393)
!1398 = !DILocation(line: 296, column: 4, scope: !1393)
!1399 = !DILocation(line: 298, column: 2, scope: !1378)
!1400 = !DILocation(line: 300, column: 5, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 300, column: 5)
!1402 = !DILocation(line: 300, column: 13, scope: !1401)
!1403 = !DILocation(line: 300, column: 16, scope: !1401)
!1404 = !DILocation(line: 300, column: 5, scope: !1187)
!1405 = !DILocation(line: 301, column: 20, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 300, column: 28)
!1407 = !DILocation(line: 301, column: 31, scope: !1406)
!1408 = !DILocation(line: 301, column: 43, scope: !1406)
!1409 = !DILocation(line: 301, column: 3, scope: !1406)
!1410 = !DILocation(line: 302, column: 20, scope: !1406)
!1411 = !DILocation(line: 302, column: 3, scope: !1406)
!1412 = !DILocation(line: 303, column: 2, scope: !1406)
!1413 = !DILocation(line: 305, column: 6, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 305, column: 5)
!1415 = !DILocation(line: 305, column: 5, scope: !1187)
!1416 = !DILocation(line: 305, column: 11, scope: !1414)
!1417 = !DILocation(line: 307, column: 2, scope: !1187)
!1418 = !DILocation(line: 308, column: 1, scope: !1187)
!1419 = distinct !DISubprogram(name: "clnet_allocate", scope: !2, file: !2, line: 347, type: !1420, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !425)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!199, !199, !486, !448, !199, !188, !640}
!1422 = !DILocalVariable(name: "verbose", arg: 1, scope: !1419, file: !2, line: 347, type: !199)
!1423 = !DILocation(line: 347, column: 31, scope: !1419)
!1424 = !DILocalVariable(name: "clnet_info", arg: 2, scope: !1419, file: !2, line: 348, type: !486)
!1425 = !DILocation(line: 348, column: 21, scope: !1419)
!1426 = !DILocalVariable(name: "relay_addr", arg: 3, scope: !1419, file: !2, line: 349, type: !448)
!1427 = !DILocation(line: 349, column: 13, scope: !1419)
!1428 = !DILocalVariable(name: "af", arg: 4, scope: !1419, file: !2, line: 350, type: !199)
!1429 = !DILocation(line: 350, column: 7, scope: !1419)
!1430 = !DILocalVariable(name: "turn_addr", arg: 5, scope: !1419, file: !2, line: 351, type: !188)
!1431 = !DILocation(line: 351, column: 9, scope: !1419)
!1432 = !DILocalVariable(name: "turn_port", arg: 6, scope: !1419, file: !2, line: 351, type: !640)
!1433 = !DILocation(line: 351, column: 30, scope: !1419)
!1434 = !DILocalVariable(name: "af_cycle", scope: !1419, file: !2, line: 353, type: !199)
!1435 = !DILocation(line: 353, column: 6, scope: !1419)
!1436 = !DILocalVariable(name: "reopen_socket", scope: !1419, file: !2, line: 354, type: !199)
!1437 = !DILocation(line: 354, column: 6, scope: !1419)
!1438 = !DILocalVariable(name: "allocate_finished", scope: !1419, file: !2, line: 356, type: !199)
!1439 = !DILocation(line: 356, column: 6, scope: !1419)
!1440 = !DILocalVariable(name: "request_message", scope: !1419, file: !2, line: 358, type: !524)
!1441 = !DILocation(line: 358, column: 14, scope: !1419)
!1442 = !DILocalVariable(name: "response_message", scope: !1419, file: !2, line: 358, type: !524)
!1443 = !DILocation(line: 358, column: 31, scope: !1419)
!1444 = !DILocation(line: 358, column: 2, scope: !1419)
!1445 = !DILabel(scope: !1419, name: "beg_allocate", file: !2, line: 360)
!1446 = !DILocation(line: 360, column: 2, scope: !1419)
!1447 = !DILocation(line: 362, column: 19, scope: !1419)
!1448 = !DILocation(line: 364, column: 2, scope: !1419)
!1449 = !DILocation(line: 364, column: 10, scope: !1419)
!1450 = !DILocation(line: 364, column: 28, scope: !1419)
!1451 = !DILocation(line: 364, column: 39, scope: !1419)
!1452 = !DILocation(line: 364, column: 42, scope: !1419)
!1453 = !DILocation(line: 0, scope: !1419)
!1454 = !DILocalVariable(name: "allocate_sent", scope: !1455, file: !2, line: 366, type: !199)
!1455 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 364, column: 48)
!1456 = !DILocation(line: 366, column: 7, scope: !1455)
!1457 = !DILocation(line: 368, column: 6, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 368, column: 6)
!1459 = !DILocation(line: 368, column: 20, scope: !1458)
!1460 = !DILocation(line: 368, column: 24, scope: !1458)
!1461 = !DILocation(line: 368, column: 6, scope: !1455)
!1462 = !DILocation(line: 369, column: 4, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 368, column: 33)
!1464 = !DILocation(line: 370, column: 4, scope: !1463)
!1465 = !DILocation(line: 370, column: 16, scope: !1463)
!1466 = !DILocation(line: 370, column: 19, scope: !1463)
!1467 = !DILocation(line: 371, column: 38, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1463, file: !2, line: 371, column: 8)
!1469 = !DILocation(line: 371, column: 50, scope: !1468)
!1470 = !DILocation(line: 371, column: 22, scope: !1468)
!1471 = !DILocation(line: 371, column: 65, scope: !1468)
!1472 = !DILocation(line: 371, column: 77, scope: !1468)
!1473 = !DILocation(line: 371, column: 95, scope: !1468)
!1474 = !DILocation(line: 371, column: 107, scope: !1468)
!1475 = !DILocation(line: 371, column: 115, scope: !1468)
!1476 = !DILocation(line: 371, column: 127, scope: !1468)
!1477 = !DILocation(line: 372, column: 6, scope: !1468)
!1478 = !DILocation(line: 372, column: 15, scope: !1468)
!1479 = !DILocation(line: 371, column: 8, scope: !1468)
!1480 = !DILocation(line: 372, column: 27, scope: !1468)
!1481 = !DILocation(line: 371, column: 8, scope: !1463)
!1482 = !DILocation(line: 373, column: 5, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 372, column: 32)
!1484 = !DILocation(line: 375, column: 18, scope: !1463)
!1485 = !DILocation(line: 376, column: 3, scope: !1463)
!1486 = !DILocalVariable(name: "af4", scope: !1455, file: !2, line: 378, type: !199)
!1487 = !DILocation(line: 378, column: 7, scope: !1455)
!1488 = !DILocation(line: 378, column: 13, scope: !1455)
!1489 = !DILocation(line: 378, column: 29, scope: !1455)
!1490 = !DILocation(line: 378, column: 33, scope: !1455)
!1491 = !DILocation(line: 378, column: 36, scope: !1455)
!1492 = !DILocalVariable(name: "af6", scope: !1455, file: !2, line: 379, type: !199)
!1493 = !DILocation(line: 379, column: 7, scope: !1455)
!1494 = !DILocation(line: 379, column: 13, scope: !1455)
!1495 = !DILocation(line: 379, column: 29, scope: !1455)
!1496 = !DILocation(line: 379, column: 33, scope: !1455)
!1497 = !DILocation(line: 379, column: 36, scope: !1455)
!1498 = !DILocalVariable(name: "reservation_token", scope: !1455, file: !2, line: 381, type: !327)
!1499 = !DILocation(line: 381, column: 12, scope: !1455)
!1500 = !DILocalVariable(name: "rt", scope: !1455, file: !2, line: 382, type: !188)
!1501 = !DILocation(line: 382, column: 9, scope: !1455)
!1502 = !DILocalVariable(name: "ep", scope: !1455, file: !2, line: 383, type: !199)
!1503 = !DILocation(line: 383, column: 7, scope: !1455)
!1504 = !DILocation(line: 383, column: 13, scope: !1455)
!1505 = !DILocation(line: 383, column: 21, scope: !1455)
!1506 = !DILocation(line: 383, column: 25, scope: !1455)
!1507 = !DILocation(line: 383, column: 24, scope: !1455)
!1508 = !DILocation(line: 0, scope: !1455)
!1509 = !DILocation(line: 385, column: 7, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 385, column: 6)
!1511 = !DILocation(line: 385, column: 6, scope: !1455)
!1512 = !DILocation(line: 386, column: 32, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 386, column: 8)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 385, column: 16)
!1515 = !DILocation(line: 386, column: 8, scope: !1514)
!1516 = !DILocation(line: 387, column: 36, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 386, column: 47)
!1518 = !DILocation(line: 387, column: 25, scope: !1517)
!1519 = !DILocation(line: 387, column: 23, scope: !1517)
!1520 = !DILocation(line: 388, column: 8, scope: !1517)
!1521 = !DILocation(line: 389, column: 4, scope: !1517)
!1522 = !DILocation(line: 390, column: 3, scope: !1514)
!1523 = !DILocation(line: 392, column: 6, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 392, column: 6)
!1525 = !DILocation(line: 392, column: 6, scope: !1455)
!1526 = !DILocation(line: 393, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 392, column: 22)
!1528 = !DILocation(line: 394, column: 3, scope: !1527)
!1529 = !DILocation(line: 394, column: 13, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 394, column: 13)
!1531 = !DILocation(line: 394, column: 13, scope: !1524)
!1532 = !DILocation(line: 395, column: 7, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !2, line: 394, column: 17)
!1534 = !DILocation(line: 396, column: 3, scope: !1533)
!1535 = !DILocation(line: 396, column: 14, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1530, file: !2, line: 396, column: 13)
!1537 = !DILocation(line: 396, column: 13, scope: !1530)
!1538 = !DILocation(line: 397, column: 20, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 396, column: 18)
!1540 = !DILocation(line: 397, column: 11, scope: !1539)
!1541 = !DILocation(line: 397, column: 10, scope: !1539)
!1542 = !DILocation(line: 397, column: 30, scope: !1539)
!1543 = !DILocation(line: 397, column: 7, scope: !1539)
!1544 = !DILocation(line: 398, column: 9, scope: !1539)
!1545 = !DILocation(line: 398, column: 11, scope: !1539)
!1546 = !DILocation(line: 398, column: 7, scope: !1539)
!1547 = !DILocation(line: 399, column: 3, scope: !1539)
!1548 = !DILocation(line: 401, column: 7, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 401, column: 6)
!1550 = !DILocation(line: 401, column: 6, scope: !1455)
!1551 = !DILocation(line: 402, column: 74, scope: !1549)
!1552 = !DILocation(line: 402, column: 79, scope: !1549)
!1553 = !DILocation(line: 402, column: 84, scope: !1549)
!1554 = !DILocation(line: 402, column: 101, scope: !1549)
!1555 = !DILocation(line: 402, column: 111, scope: !1549)
!1556 = !DILocation(line: 402, column: 115, scope: !1549)
!1557 = !DILocation(line: 402, column: 4, scope: !1549)
!1558 = !DILocation(line: 404, column: 76, scope: !1549)
!1559 = !DILocation(line: 404, column: 81, scope: !1549)
!1560 = !DILocation(line: 404, column: 86, scope: !1549)
!1561 = !DILocation(line: 404, column: 103, scope: !1549)
!1562 = !DILocation(line: 404, column: 113, scope: !1549)
!1563 = !DILocation(line: 404, column: 117, scope: !1549)
!1564 = !DILocation(line: 404, column: 4, scope: !1549)
!1565 = !DILocation(line: 406, column: 6, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 406, column: 6)
!1567 = !DILocation(line: 406, column: 6, scope: !1455)
!1568 = !DILocation(line: 407, column: 48, scope: !1566)
!1569 = !DILocation(line: 407, column: 32, scope: !1566)
!1570 = !DILocation(line: 407, column: 81, scope: !1566)
!1571 = !DILocation(line: 407, column: 88, scope: !1566)
!1572 = !DILocation(line: 407, column: 4, scope: !1566)
!1573 = !DILocation(line: 409, column: 6, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 409, column: 6)
!1575 = !DILocation(line: 409, column: 6, scope: !1455)
!1576 = !DILocation(line: 410, column: 4, scope: !1574)
!1577 = !DILocation(line: 412, column: 3, scope: !1455)
!1578 = !DILocation(line: 414, column: 20, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 414, column: 6)
!1580 = !DILocation(line: 414, column: 6, scope: !1579)
!1581 = !DILocation(line: 414, column: 49, scope: !1579)
!1582 = !DILocation(line: 414, column: 6, scope: !1455)
!1583 = !DILocation(line: 414, column: 53, scope: !1579)
!1584 = !DILocation(line: 416, column: 49, scope: !1455)
!1585 = !DILocation(line: 416, column: 33, scope: !1455)
!1586 = !DILocation(line: 416, column: 80, scope: !1455)
!1587 = !DILocation(line: 416, column: 3, scope: !1455)
!1588 = !DILocation(line: 418, column: 3, scope: !1455)
!1589 = !DILocation(line: 418, column: 11, scope: !1455)
!1590 = !DILocation(line: 418, column: 10, scope: !1455)
!1591 = !DILocalVariable(name: "len", scope: !1592, file: !2, line: 420, type: !199)
!1592 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 418, column: 26)
!1593 = !DILocation(line: 420, column: 8, scope: !1592)
!1594 = !DILocation(line: 420, column: 26, scope: !1592)
!1595 = !DILocation(line: 420, column: 14, scope: !1592)
!1596 = !DILocation(line: 422, column: 8, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1592, file: !2, line: 422, column: 8)
!1598 = !DILocation(line: 422, column: 12, scope: !1597)
!1599 = !DILocation(line: 422, column: 8, scope: !1592)
!1600 = !DILocation(line: 423, column: 9, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 423, column: 9)
!1602 = distinct !DILexicalBlock(scope: !1597, file: !2, line: 422, column: 17)
!1603 = !DILocation(line: 423, column: 9, scope: !1602)
!1604 = !DILocation(line: 424, column: 6, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 423, column: 18)
!1606 = !DILocation(line: 425, column: 5, scope: !1605)
!1607 = !DILocation(line: 426, column: 19, scope: !1602)
!1608 = !DILocation(line: 427, column: 4, scope: !1602)
!1609 = !DILocation(line: 428, column: 5, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1597, file: !2, line: 427, column: 11)
!1611 = !DILocation(line: 429, column: 5, scope: !1610)
!1612 = distinct !{!1612, !1588, !1613, !914}
!1613 = !DILocation(line: 431, column: 3, scope: !1455)
!1614 = !DILocation(line: 435, column: 6, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 435, column: 6)
!1616 = !DILocation(line: 435, column: 6, scope: !1455)
!1617 = !DILocation(line: 435, column: 24, scope: !1615)
!1618 = !DILocalVariable(name: "allocate_received", scope: !1619, file: !2, line: 439, type: !199)
!1619 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 438, column: 3)
!1620 = !DILocation(line: 439, column: 8, scope: !1619)
!1621 = !DILocation(line: 440, column: 4, scope: !1619)
!1622 = !DILocation(line: 440, column: 12, scope: !1619)
!1623 = !DILocation(line: 440, column: 11, scope: !1619)
!1624 = !DILocalVariable(name: "len", scope: !1625, file: !2, line: 442, type: !199)
!1625 = distinct !DILexicalBlock(scope: !1619, file: !2, line: 440, column: 31)
!1626 = !DILocation(line: 442, column: 9, scope: !1625)
!1627 = !DILocation(line: 442, column: 27, scope: !1625)
!1628 = !DILocation(line: 442, column: 15, scope: !1625)
!1629 = !DILocation(line: 444, column: 9, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 444, column: 9)
!1631 = !DILocation(line: 444, column: 13, scope: !1630)
!1632 = !DILocation(line: 444, column: 9, scope: !1625)
!1633 = !DILocation(line: 445, column: 10, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !2, line: 445, column: 10)
!1635 = distinct !DILexicalBlock(scope: !1630, file: !2, line: 444, column: 18)
!1636 = !DILocation(line: 445, column: 10, scope: !1635)
!1637 = !DILocation(line: 446, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !2, line: 445, column: 19)
!1639 = !DILocation(line: 448, column: 6, scope: !1638)
!1640 = !DILocation(line: 449, column: 29, scope: !1635)
!1641 = !DILocation(line: 449, column: 23, scope: !1635)
!1642 = !DILocation(line: 449, column: 27, scope: !1635)
!1643 = !DILocalVariable(name: "err_code", scope: !1635, file: !2, line: 450, type: !199)
!1644 = !DILocation(line: 450, column: 10, scope: !1635)
!1645 = !DILocalVariable(name: "err_msg", scope: !1635, file: !2, line: 451, type: !1646)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 1032, elements: !493)
!1647 = !DILocation(line: 451, column: 14, scope: !1635)
!1648 = !DILocation(line: 452, column: 10, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1635, file: !2, line: 452, column: 10)
!1650 = !DILocation(line: 452, column: 10, scope: !1635)
!1651 = !DILocation(line: 453, column: 25, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1649, file: !2, line: 452, column: 55)
!1653 = !DILocation(line: 454, column: 25, scope: !1652)
!1654 = !DILocation(line: 456, column: 10, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 456, column: 10)
!1656 = !DILocation(line: 456, column: 22, scope: !1655)
!1657 = !DILocation(line: 456, column: 10, scope: !1652)
!1658 = !DILocation(line: 457, column: 27, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 457, column: 11)
!1660 = distinct !DILexicalBlock(scope: !1655, file: !2, line: 456, column: 32)
!1661 = !DILocation(line: 457, column: 11, scope: !1659)
!1662 = !DILocation(line: 457, column: 57, scope: !1659)
!1663 = !DILocation(line: 457, column: 11, scope: !1660)
!1664 = !DILocation(line: 458, column: 9, scope: !1659)
!1665 = !DILocation(line: 459, column: 7, scope: !1660)
!1666 = !DILocation(line: 461, column: 11, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 461, column: 11)
!1668 = !DILocation(line: 461, column: 11, scope: !1652)
!1669 = !DILocation(line: 462, column: 8, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1667, file: !2, line: 461, column: 20)
!1671 = !DILocation(line: 463, column: 7, scope: !1670)
!1672 = !DILocalVariable(name: "found", scope: !1673, file: !2, line: 465, type: !199)
!1673 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 464, column: 7)
!1674 = !DILocation(line: 465, column: 12, scope: !1673)
!1675 = !DILocalVariable(name: "sar", scope: !1673, file: !2, line: 467, type: !550)
!1676 = !DILocation(line: 467, column: 22, scope: !1673)
!1677 = !DILocation(line: 467, column: 28, scope: !1673)
!1678 = !DILocation(line: 468, column: 8, scope: !1673)
!1679 = !DILocation(line: 468, column: 15, scope: !1673)
!1680 = !DILocalVariable(name: "attr_type", scope: !1681, file: !2, line: 470, type: !199)
!1681 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 468, column: 20)
!1682 = !DILocation(line: 470, column: 13, scope: !1681)
!1683 = !DILocation(line: 470, column: 44, scope: !1681)
!1684 = !DILocation(line: 470, column: 25, scope: !1681)
!1685 = !DILocation(line: 471, column: 12, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1681, file: !2, line: 471, column: 12)
!1687 = !DILocation(line: 471, column: 22, scope: !1686)
!1688 = !DILocation(line: 471, column: 12, scope: !1681)
!1689 = !DILocation(line: 473, column: 52, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !2, line: 473, column: 14)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 471, column: 61)
!1692 = !DILocation(line: 473, column: 57, scope: !1690)
!1693 = !DILocation(line: 473, column: 14, scope: !1690)
!1694 = !DILocation(line: 473, column: 75, scope: !1690)
!1695 = !DILocation(line: 473, column: 14, scope: !1691)
!1696 = !DILocation(line: 474, column: 11, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1690, file: !2, line: 473, column: 80)
!1698 = !DILocation(line: 477, column: 11, scope: !1697)
!1699 = !DILocation(line: 479, column: 15, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !2, line: 479, column: 15)
!1701 = distinct !DILexicalBlock(scope: !1690, file: !2, line: 478, column: 17)
!1702 = !DILocation(line: 479, column: 15, scope: !1701)
!1703 = !DILocalVariable(name: "raddr", scope: !1704, file: !2, line: 480, type: !209)
!1704 = distinct !DILexicalBlock(scope: !1700, file: !2, line: 479, column: 24)
!1705 = !DILocation(line: 480, column: 21, scope: !1704)
!1706 = !DILocation(line: 481, column: 27, scope: !1704)
!1707 = !DILocation(line: 481, column: 12, scope: !1704)
!1708 = !DILocation(line: 482, column: 29, scope: !1704)
!1709 = !DILocation(line: 482, column: 12, scope: !1704)
!1710 = !DILocation(line: 483, column: 11, scope: !1704)
!1711 = !DILocation(line: 485, column: 24, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1701, file: !2, line: 485, column: 14)
!1713 = !DILocation(line: 485, column: 15, scope: !1712)
!1714 = !DILocation(line: 485, column: 14, scope: !1701)
!1715 = !DILocation(line: 486, column: 15, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 486, column: 15)
!1717 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 485, column: 37)
!1718 = !DILocation(line: 486, column: 30, scope: !1716)
!1719 = !DILocation(line: 486, column: 40, scope: !1716)
!1720 = !DILocation(line: 486, column: 15, scope: !1717)
!1721 = !DILocation(line: 487, column: 16, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 487, column: 16)
!1723 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 486, column: 52)
!1724 = !DILocation(line: 487, column: 39, scope: !1722)
!1725 = !DILocation(line: 487, column: 16, scope: !1723)
!1726 = !DILocation(line: 488, column: 20, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1722, file: !2, line: 487, column: 94)
!1728 = !DILocation(line: 489, column: 25, scope: !1727)
!1729 = !DILocation(line: 489, column: 37, scope: !1727)
!1730 = !DILocation(line: 489, column: 49, scope: !1727)
!1731 = !DILocation(line: 489, column: 14, scope: !1727)
!1732 = !DILocation(line: 490, column: 14, scope: !1727)
!1733 = !DILocation(line: 492, column: 12, scope: !1723)
!1734 = !DILocation(line: 493, column: 15, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 493, column: 15)
!1736 = !DILocation(line: 493, column: 30, scope: !1735)
!1737 = !DILocation(line: 493, column: 40, scope: !1735)
!1738 = !DILocation(line: 493, column: 15, scope: !1717)
!1739 = !DILocation(line: 494, column: 16, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 494, column: 16)
!1741 = distinct !DILexicalBlock(scope: !1735, file: !2, line: 493, column: 53)
!1742 = !DILocation(line: 494, column: 39, scope: !1740)
!1743 = !DILocation(line: 494, column: 16, scope: !1741)
!1744 = !DILocation(line: 495, column: 20, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !2, line: 494, column: 94)
!1746 = !DILocation(line: 496, column: 25, scope: !1745)
!1747 = !DILocation(line: 496, column: 37, scope: !1745)
!1748 = !DILocation(line: 496, column: 49, scope: !1745)
!1749 = !DILocation(line: 496, column: 14, scope: !1745)
!1750 = !DILocation(line: 497, column: 14, scope: !1745)
!1751 = !DILocation(line: 499, column: 12, scope: !1741)
!1752 = !DILocation(line: 500, column: 11, scope: !1717)
!1753 = !DILocation(line: 502, column: 9, scope: !1691)
!1754 = !DILocation(line: 504, column: 52, scope: !1681)
!1755 = !DILocation(line: 504, column: 15, scope: !1681)
!1756 = !DILocation(line: 504, column: 13, scope: !1681)
!1757 = distinct !{!1757, !1678, !1758, !914}
!1758 = !DILocation(line: 505, column: 8, scope: !1673)
!1759 = !DILocation(line: 507, column: 12, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 507, column: 11)
!1761 = !DILocation(line: 507, column: 11, scope: !1673)
!1762 = !DILocation(line: 508, column: 9, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1760, file: !2, line: 507, column: 19)
!1764 = !DILocation(line: 511, column: 9, scope: !1763)
!1765 = !DILocalVariable(name: "rt_sar", scope: !1652, file: !2, line: 515, type: !550)
!1766 = !DILocation(line: 515, column: 21, scope: !1652)
!1767 = !DILocation(line: 515, column: 30, scope: !1652)
!1768 = !DILocalVariable(name: "rtv", scope: !1652, file: !2, line: 517, type: !327)
!1769 = !DILocation(line: 517, column: 16, scope: !1652)
!1770 = !DILocation(line: 517, column: 60, scope: !1652)
!1771 = !DILocation(line: 517, column: 22, scope: !1652)
!1772 = !DILocation(line: 518, column: 35, scope: !1652)
!1773 = !DILocation(line: 518, column: 33, scope: !1652)
!1774 = !DILocation(line: 519, column: 11, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 519, column: 11)
!1776 = !DILocation(line: 519, column: 11, scope: !1652)
!1777 = !DILocation(line: 521, column: 71, scope: !1775)
!1778 = !DILocation(line: 520, column: 8, scope: !1775)
!1779 = !DILocation(line: 523, column: 28, scope: !1652)
!1780 = !DILocation(line: 523, column: 7, scope: !1652)
!1781 = !DILocation(line: 525, column: 6, scope: !1652)
!1782 = !DILocation(line: 525, column: 65, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1649, file: !2, line: 525, column: 17)
!1784 = !DILocation(line: 525, column: 48, scope: !1783)
!1785 = !DILocation(line: 525, column: 95, scope: !1783)
!1786 = !DILocation(line: 526, column: 20, scope: !1783)
!1787 = !DILocation(line: 527, column: 10, scope: !1783)
!1788 = !DILocation(line: 527, column: 22, scope: !1783)
!1789 = !DILocation(line: 527, column: 28, scope: !1783)
!1790 = !DILocation(line: 527, column: 40, scope: !1783)
!1791 = !DILocation(line: 528, column: 10, scope: !1783)
!1792 = !DILocation(line: 528, column: 22, scope: !1783)
!1793 = !DILocation(line: 528, column: 37, scope: !1783)
!1794 = !DILocation(line: 528, column: 49, scope: !1783)
!1795 = !DILocation(line: 525, column: 17, scope: !1783)
!1796 = !DILocation(line: 525, column: 17, scope: !1649)
!1797 = !DILocation(line: 529, column: 7, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1783, file: !2, line: 528, column: 58)
!1799 = !DILocation(line: 530, column: 69, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1783, file: !2, line: 530, column: 17)
!1801 = !DILocation(line: 530, column: 17, scope: !1800)
!1802 = !DILocation(line: 530, column: 17, scope: !1783)
!1803 = !DILocation(line: 532, column: 25, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 530, column: 95)
!1805 = !DILocation(line: 534, column: 10, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 534, column: 10)
!1807 = !DILocation(line: 534, column: 19, scope: !1806)
!1808 = !DILocation(line: 534, column: 10, scope: !1804)
!1809 = !DILocation(line: 536, column: 11, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 536, column: 11)
!1811 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 534, column: 27)
!1812 = !DILocation(line: 536, column: 23, scope: !1810)
!1813 = !DILocation(line: 536, column: 11, scope: !1811)
!1814 = !DILocation(line: 537, column: 28, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 537, column: 12)
!1816 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 536, column: 33)
!1817 = !DILocation(line: 537, column: 12, scope: !1815)
!1818 = !DILocation(line: 537, column: 58, scope: !1815)
!1819 = !DILocation(line: 537, column: 12, scope: !1816)
!1820 = !DILocation(line: 538, column: 10, scope: !1815)
!1821 = !DILocation(line: 539, column: 8, scope: !1816)
!1822 = !DILocalVariable(name: "alternate_server", scope: !1811, file: !2, line: 541, type: !209)
!1823 = !DILocation(line: 541, column: 17, scope: !1811)
!1824 = !DILocation(line: 542, column: 11, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 542, column: 11)
!1826 = !DILocation(line: 542, column: 112, scope: !1825)
!1827 = !DILocation(line: 542, column: 11, scope: !1811)
!1828 = !DILocation(line: 544, column: 8, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 542, column: 118)
!1830 = !DILocation(line: 544, column: 18, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 544, column: 18)
!1832 = !DILocation(line: 544, column: 28, scope: !1831)
!1833 = !DILocation(line: 544, column: 31, scope: !1831)
!1834 = !DILocation(line: 544, column: 18, scope: !1825)
!1835 = !DILocation(line: 545, column: 61, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1831, file: !2, line: 544, column: 41)
!1837 = !DILocation(line: 545, column: 9, scope: !1836)
!1838 = !DILocation(line: 546, column: 32, scope: !1836)
!1839 = !DILocation(line: 546, column: 22, scope: !1836)
!1840 = !DILocation(line: 546, column: 10, scope: !1836)
!1841 = !DILocation(line: 546, column: 20, scope: !1836)
!1842 = !DILocation(line: 547, column: 8, scope: !1836)
!1843 = !DILocation(line: 549, column: 7, scope: !1811)
!1844 = !DILocation(line: 552, column: 15, scope: !1804)
!1845 = !DILocation(line: 552, column: 31, scope: !1804)
!1846 = !DILocation(line: 551, column: 7, scope: !1804)
!1847 = !DILocation(line: 553, column: 11, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 553, column: 11)
!1849 = !DILocation(line: 553, column: 20, scope: !1848)
!1850 = !DILocation(line: 553, column: 11, scope: !1804)
!1851 = !DILocation(line: 554, column: 26, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1848, file: !2, line: 553, column: 28)
!1853 = !DILocation(line: 555, column: 34, scope: !1852)
!1854 = !DILocation(line: 556, column: 8, scope: !1852)
!1855 = !DILocation(line: 559, column: 43, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1848, file: !2, line: 557, column: 14)
!1857 = !DILocation(line: 558, column: 8, scope: !1856)
!1858 = !DILocation(line: 560, column: 8, scope: !1856)
!1859 = !DILocation(line: 561, column: 22, scope: !1856)
!1860 = !DILocation(line: 563, column: 6, scope: !1804)
!1861 = !DILocation(line: 564, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 563, column: 13)
!1863 = !DILocation(line: 568, column: 5, scope: !1635)
!1864 = !DILocation(line: 569, column: 6, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1630, file: !2, line: 568, column: 12)
!1866 = !DILocation(line: 570, column: 6, scope: !1865)
!1867 = distinct !{!1867, !1621, !1868, !914}
!1868 = !DILocation(line: 573, column: 4, scope: !1619)
!1869 = distinct !{!1869, !1448, !1870, !914}
!1870 = !DILocation(line: 575, column: 2, scope: !1419)
!1871 = !DILocation(line: 578, column: 5, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 578, column: 5)
!1873 = !DILocation(line: 578, column: 5, scope: !1419)
!1874 = !DILocation(line: 578, column: 19, scope: !1872)
!1875 = !DILocation(line: 580, column: 6, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 580, column: 5)
!1877 = !DILocation(line: 580, column: 5, scope: !1419)
!1878 = !DILocation(line: 581, column: 4, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1876, file: !2, line: 580, column: 25)
!1880 = !DILocation(line: 583, column: 4, scope: !1879)
!1881 = !DILocation(line: 586, column: 19, scope: !1419)
!1882 = !DILocation(line: 586, column: 18, scope: !1419)
!1883 = !DILocation(line: 586, column: 16, scope: !1419)
!1884 = !DILocation(line: 590, column: 13, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 588, column: 9)
!1886 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 588, column: 6)
!1887 = !DILocation(line: 592, column: 7, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1885, file: !2, line: 592, column: 7)
!1889 = !DILocation(line: 592, column: 19, scope: !1888)
!1890 = !DILocation(line: 592, column: 7, scope: !1885)
!1891 = !DILocalVariable(name: "fd", scope: !1892, file: !2, line: 594, type: !199)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 592, column: 35)
!1893 = !DILocation(line: 594, column: 9, scope: !1892)
!1894 = !DILocation(line: 594, column: 14, scope: !1892)
!1895 = !DILocation(line: 594, column: 26, scope: !1892)
!1896 = !DILocalVariable(name: "ssl", scope: !1892, file: !2, line: 595, type: !258)
!1897 = !DILocation(line: 595, column: 10, scope: !1892)
!1898 = !DILocation(line: 595, column: 16, scope: !1892)
!1899 = !DILocation(line: 595, column: 28, scope: !1892)
!1900 = !DILocalVariable(name: "close_now", scope: !1892, file: !2, line: 597, type: !199)
!1901 = !DILocation(line: 597, column: 9, scope: !1892)
!1902 = !DILocation(line: 597, column: 27, scope: !1892)
!1903 = !DILocation(line: 597, column: 35, scope: !1892)
!1904 = !DILocation(line: 597, column: 21, scope: !1892)
!1905 = !DILocation(line: 599, column: 8, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1892, file: !2, line: 599, column: 8)
!1907 = !DILocation(line: 599, column: 8, scope: !1892)
!1908 = !DILocalVariable(name: "close_socket", scope: !1909, file: !2, line: 600, type: !199)
!1909 = distinct !DILexicalBlock(scope: !1906, file: !2, line: 599, column: 19)
!1910 = !DILocation(line: 600, column: 10, scope: !1909)
!1911 = !DILocation(line: 600, column: 31, scope: !1909)
!1912 = !DILocation(line: 600, column: 39, scope: !1909)
!1913 = !DILocation(line: 600, column: 25, scope: !1909)
!1914 = !DILocation(line: 601, column: 9, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1909, file: !2, line: 601, column: 9)
!1916 = !DILocation(line: 601, column: 13, scope: !1915)
!1917 = !DILocation(line: 601, column: 17, scope: !1915)
!1918 = !DILocation(line: 601, column: 9, scope: !1909)
!1919 = !DILocation(line: 602, column: 20, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1915, file: !2, line: 601, column: 31)
!1921 = !DILocation(line: 602, column: 7, scope: !1920)
!1922 = !DILocation(line: 603, column: 16, scope: !1920)
!1923 = !DILocation(line: 603, column: 7, scope: !1920)
!1924 = !DILocation(line: 604, column: 10, scope: !1920)
!1925 = !DILocation(line: 605, column: 6, scope: !1920)
!1926 = !DILocation(line: 605, column: 16, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1915, file: !2, line: 605, column: 16)
!1928 = !DILocation(line: 605, column: 18, scope: !1927)
!1929 = !DILocation(line: 605, column: 16, scope: !1915)
!1930 = !DILocation(line: 606, column: 13, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !2, line: 605, column: 23)
!1932 = !DILocation(line: 606, column: 7, scope: !1931)
!1933 = !DILocation(line: 607, column: 10, scope: !1931)
!1934 = !DILocation(line: 608, column: 11, scope: !1931)
!1935 = !DILocation(line: 609, column: 6, scope: !1931)
!1936 = !DILocation(line: 610, column: 5, scope: !1909)
!1937 = !DILocalVariable(name: "ci", scope: !1892, file: !2, line: 612, type: !487)
!1938 = !DILocation(line: 612, column: 22, scope: !1892)
!1939 = !DILocation(line: 613, column: 11, scope: !1892)
!1940 = !DILocation(line: 613, column: 5, scope: !1892)
!1941 = !DILocation(line: 614, column: 8, scope: !1892)
!1942 = !DILocation(line: 614, column: 11, scope: !1892)
!1943 = !DILocation(line: 615, column: 8, scope: !1892)
!1944 = !DILocation(line: 615, column: 12, scope: !1892)
!1945 = !DILocation(line: 616, column: 5, scope: !1892)
!1946 = !DILocation(line: 616, column: 17, scope: !1892)
!1947 = !DILocation(line: 616, column: 20, scope: !1892)
!1948 = !DILocation(line: 617, column: 5, scope: !1892)
!1949 = !DILocation(line: 617, column: 17, scope: !1892)
!1950 = !DILocation(line: 617, column: 21, scope: !1892)
!1951 = !DILocation(line: 619, column: 41, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1892, file: !2, line: 619, column: 8)
!1953 = !DILocation(line: 619, column: 22, scope: !1952)
!1954 = !DILocation(line: 619, column: 59, scope: !1952)
!1955 = !DILocation(line: 619, column: 56, scope: !1952)
!1956 = !DILocation(line: 620, column: 26, scope: !1952)
!1957 = !DILocation(line: 620, column: 23, scope: !1952)
!1958 = !DILocation(line: 620, column: 37, scope: !1952)
!1959 = !DILocation(line: 620, column: 34, scope: !1952)
!1960 = !DILocation(line: 620, column: 45, scope: !1952)
!1961 = !DILocation(line: 621, column: 7, scope: !1952)
!1962 = !DILocation(line: 619, column: 8, scope: !1952)
!1963 = !DILocation(line: 621, column: 18, scope: !1952)
!1964 = !DILocation(line: 619, column: 8, scope: !1892)
!1965 = !DILocation(line: 622, column: 6, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1952, file: !2, line: 621, column: 22)
!1967 = !DILocation(line: 625, column: 8, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1892, file: !2, line: 625, column: 8)
!1969 = !DILocation(line: 625, column: 8, scope: !1892)
!1970 = !DILocation(line: 626, column: 19, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 625, column: 13)
!1972 = !DILocation(line: 626, column: 6, scope: !1971)
!1973 = !DILocation(line: 627, column: 17, scope: !1971)
!1974 = !DILocation(line: 627, column: 8, scope: !1971)
!1975 = !DILocation(line: 628, column: 5, scope: !1971)
!1976 = !DILocation(line: 628, column: 15, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 628, column: 15)
!1978 = !DILocation(line: 628, column: 17, scope: !1977)
!1979 = !DILocation(line: 628, column: 15, scope: !1968)
!1980 = !DILocation(line: 629, column: 14, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 628, column: 22)
!1982 = !DILocation(line: 629, column: 8, scope: !1981)
!1983 = !DILocation(line: 630, column: 5, scope: !1981)
!1984 = !DILocation(line: 631, column: 4, scope: !1892)
!1985 = !DILocation(line: 592, column: 32, scope: !1888)
!1986 = !DILabel(scope: !1885, name: "beg_refresh", file: !2, line: 633)
!1987 = !DILocation(line: 633, column: 3, scope: !1885)
!1988 = !DILocation(line: 635, column: 15, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1885, file: !2, line: 635, column: 7)
!1990 = !DILocation(line: 635, column: 17, scope: !1989)
!1991 = !DILocation(line: 635, column: 7, scope: !1885)
!1992 = !DILocation(line: 636, column: 6, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !2, line: 635, column: 22)
!1994 = !DILocation(line: 638, column: 6, scope: !1993)
!1995 = !DILocalVariable(name: "refresh_sent", scope: !1996, file: !2, line: 643, type: !199)
!1996 = distinct !DILexicalBlock(scope: !1885, file: !2, line: 642, column: 3)
!1997 = !DILocation(line: 643, column: 8, scope: !1996)
!1998 = !DILocation(line: 645, column: 4, scope: !1996)
!1999 = !DILocalVariable(name: "lt", scope: !1996, file: !2, line: 646, type: !206)
!2000 = !DILocation(line: 646, column: 13, scope: !1996)
!2001 = !DILocation(line: 646, column: 18, scope: !1996)
!2002 = !DILocation(line: 647, column: 4, scope: !1996)
!2003 = !DILocation(line: 649, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 649, column: 7)
!2005 = !DILocation(line: 649, column: 19, scope: !2004)
!2006 = !DILocation(line: 649, column: 7, scope: !1996)
!2007 = !DILocation(line: 650, column: 82, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 649, column: 35)
!2009 = !DILocation(line: 650, column: 94, scope: !2008)
!2010 = !DILocation(line: 650, column: 114, scope: !2008)
!2011 = !DILocation(line: 650, column: 126, scope: !2008)
!2012 = !DILocation(line: 650, column: 107, scope: !2008)
!2013 = !DILocation(line: 650, column: 5, scope: !2008)
!2014 = !DILocation(line: 651, column: 4, scope: !2008)
!2015 = !DILocation(line: 653, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 653, column: 7)
!2017 = !DILocation(line: 653, column: 23, scope: !2016)
!2018 = !DILocation(line: 653, column: 27, scope: !2016)
!2019 = !DILocation(line: 653, column: 7, scope: !1996)
!2020 = !DILocalVariable(name: "t", scope: !2021, file: !2, line: 654, type: !199)
!2021 = distinct !DILexicalBlock(scope: !2016, file: !2, line: 653, column: 37)
!2022 = !DILocation(line: 654, column: 9, scope: !2021)
!2023 = !DILocation(line: 654, column: 23, scope: !2021)
!2024 = !DILocation(line: 654, column: 14, scope: !2021)
!2025 = !DILocation(line: 654, column: 13, scope: !2021)
!2026 = !DILocation(line: 654, column: 32, scope: !2021)
!2027 = !DILocation(line: 655, column: 8, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2021, file: !2, line: 655, column: 8)
!2029 = !DILocation(line: 655, column: 8, scope: !2021)
!2030 = !DILocalVariable(name: "field", scope: !2031, file: !2, line: 656, type: !529)
!2031 = distinct !DILexicalBlock(scope: !2028, file: !2, line: 655, column: 11)
!2032 = !DILocation(line: 656, column: 14, scope: !2031)
!2033 = !DILocation(line: 657, column: 18, scope: !2031)
!2034 = !DILocation(line: 657, column: 19, scope: !2031)
!2035 = !DILocation(line: 657, column: 17, scope: !2031)
!2036 = !DILocation(line: 657, column: 6, scope: !2031)
!2037 = !DILocation(line: 657, column: 15, scope: !2031)
!2038 = !DILocation(line: 658, column: 6, scope: !2031)
!2039 = !DILocation(line: 658, column: 14, scope: !2031)
!2040 = !DILocation(line: 659, column: 6, scope: !2031)
!2041 = !DILocation(line: 659, column: 14, scope: !2031)
!2042 = !DILocation(line: 660, column: 6, scope: !2031)
!2043 = !DILocation(line: 660, column: 14, scope: !2031)
!2044 = !DILocation(line: 661, column: 93, scope: !2031)
!2045 = !DILocation(line: 661, column: 6, scope: !2031)
!2046 = !DILocation(line: 662, column: 5, scope: !2031)
!2047 = !DILocation(line: 663, column: 4, scope: !2021)
!2048 = !DILocation(line: 665, column: 4, scope: !1996)
!2049 = !DILocation(line: 667, column: 21, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 667, column: 7)
!2051 = !DILocation(line: 667, column: 7, scope: !2050)
!2052 = !DILocation(line: 667, column: 50, scope: !2050)
!2053 = !DILocation(line: 667, column: 7, scope: !1996)
!2054 = !DILocation(line: 667, column: 54, scope: !2050)
!2055 = !DILocation(line: 669, column: 50, scope: !1996)
!2056 = !DILocation(line: 669, column: 34, scope: !1996)
!2057 = !DILocation(line: 669, column: 81, scope: !1996)
!2058 = !DILocation(line: 669, column: 4, scope: !1996)
!2059 = !DILocation(line: 671, column: 4, scope: !1996)
!2060 = !DILocation(line: 671, column: 12, scope: !1996)
!2061 = !DILocation(line: 671, column: 11, scope: !1996)
!2062 = !DILocalVariable(name: "len", scope: !2063, file: !2, line: 673, type: !199)
!2063 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 671, column: 26)
!2064 = !DILocation(line: 673, column: 9, scope: !2063)
!2065 = !DILocation(line: 673, column: 27, scope: !2063)
!2066 = !DILocation(line: 673, column: 15, scope: !2063)
!2067 = !DILocation(line: 675, column: 9, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2063, file: !2, line: 675, column: 9)
!2069 = !DILocation(line: 675, column: 13, scope: !2068)
!2070 = !DILocation(line: 675, column: 9, scope: !2063)
!2071 = !DILocation(line: 676, column: 10, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !2, line: 676, column: 10)
!2073 = distinct !DILexicalBlock(scope: !2068, file: !2, line: 675, column: 18)
!2074 = !DILocation(line: 676, column: 10, scope: !2073)
!2075 = !DILocation(line: 677, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2072, file: !2, line: 676, column: 19)
!2077 = !DILocation(line: 678, column: 6, scope: !2076)
!2078 = !DILocation(line: 679, column: 19, scope: !2073)
!2079 = !DILocation(line: 681, column: 9, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2073, file: !2, line: 681, column: 9)
!2081 = !DILocation(line: 681, column: 21, scope: !2080)
!2082 = !DILocation(line: 681, column: 9, scope: !2073)
!2083 = !DILocation(line: 682, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 681, column: 37)
!2085 = !DILocation(line: 683, column: 19, scope: !2084)
!2086 = !DILocation(line: 683, column: 7, scope: !2084)
!2087 = !DILocation(line: 684, column: 6, scope: !2084)
!2088 = !DILocation(line: 685, column: 5, scope: !2073)
!2089 = !DILocation(line: 686, column: 6, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2068, file: !2, line: 685, column: 12)
!2091 = !DILocation(line: 687, column: 6, scope: !2090)
!2092 = distinct !{!2092, !2059, !2093, !914}
!2093 = !DILocation(line: 689, column: 4, scope: !1996)
!2094 = !DILocation(line: 692, column: 6, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1885, file: !2, line: 692, column: 6)
!2096 = !DILocation(line: 692, column: 6, scope: !1885)
!2097 = !DILocation(line: 692, column: 24, scope: !2095)
!2098 = !DILocalVariable(name: "refresh_received", scope: !2099, file: !2, line: 696, type: !199)
!2099 = distinct !DILexicalBlock(scope: !1885, file: !2, line: 695, column: 3)
!2100 = !DILocation(line: 696, column: 8, scope: !2099)
!2101 = !DILocation(line: 697, column: 4, scope: !2099)
!2102 = !DILocation(line: 697, column: 12, scope: !2099)
!2103 = !DILocation(line: 697, column: 11, scope: !2099)
!2104 = !DILocalVariable(name: "len", scope: !2105, file: !2, line: 699, type: !199)
!2105 = distinct !DILexicalBlock(scope: !2099, file: !2, line: 697, column: 30)
!2106 = !DILocation(line: 699, column: 9, scope: !2105)
!2107 = !DILocation(line: 699, column: 27, scope: !2105)
!2108 = !DILocation(line: 699, column: 15, scope: !2105)
!2109 = !DILocation(line: 701, column: 8, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 701, column: 8)
!2111 = !DILocation(line: 701, column: 20, scope: !2110)
!2112 = !DILocation(line: 701, column: 8, scope: !2105)
!2113 = !DILocation(line: 702, column: 24, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !2, line: 701, column: 36)
!2115 = !DILocation(line: 702, column: 12, scope: !2114)
!2116 = !DILocation(line: 702, column: 10, scope: !2114)
!2117 = !DILocation(line: 703, column: 5, scope: !2114)
!2118 = !DILocation(line: 705, column: 9, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 705, column: 9)
!2120 = !DILocation(line: 705, column: 13, scope: !2119)
!2121 = !DILocation(line: 705, column: 9, scope: !2105)
!2122 = !DILocation(line: 706, column: 10, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 706, column: 10)
!2124 = distinct !DILexicalBlock(scope: !2119, file: !2, line: 705, column: 18)
!2125 = !DILocation(line: 706, column: 10, scope: !2124)
!2126 = !DILocation(line: 707, column: 7, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2123, file: !2, line: 706, column: 19)
!2128 = !DILocation(line: 709, column: 6, scope: !2127)
!2129 = !DILocation(line: 710, column: 29, scope: !2124)
!2130 = !DILocation(line: 710, column: 23, scope: !2124)
!2131 = !DILocation(line: 710, column: 27, scope: !2124)
!2132 = !DILocalVariable(name: "err_code", scope: !2124, file: !2, line: 711, type: !199)
!2133 = !DILocation(line: 711, column: 10, scope: !2124)
!2134 = !DILocalVariable(name: "err_msg", scope: !2124, file: !2, line: 712, type: !1646)
!2135 = !DILocation(line: 712, column: 14, scope: !2124)
!2136 = !DILocation(line: 713, column: 10, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 713, column: 10)
!2138 = !DILocation(line: 713, column: 10, scope: !2124)
!2139 = !DILocation(line: 714, column: 28, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2137, file: !2, line: 713, column: 55)
!2141 = !DILocation(line: 714, column: 7, scope: !2140)
!2142 = !DILocation(line: 715, column: 24, scope: !2140)
!2143 = !DILocation(line: 716, column: 11, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !2, line: 716, column: 11)
!2145 = !DILocation(line: 716, column: 11, scope: !2140)
!2146 = !DILocation(line: 717, column: 8, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 716, column: 20)
!2148 = !DILocation(line: 718, column: 7, scope: !2147)
!2149 = !DILocation(line: 719, column: 6, scope: !2140)
!2150 = !DILocation(line: 719, column: 65, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2137, file: !2, line: 719, column: 17)
!2152 = !DILocation(line: 719, column: 48, scope: !2151)
!2153 = !DILocation(line: 719, column: 95, scope: !2151)
!2154 = !DILocation(line: 720, column: 21, scope: !2151)
!2155 = !DILocation(line: 721, column: 11, scope: !2151)
!2156 = !DILocation(line: 721, column: 23, scope: !2151)
!2157 = !DILocation(line: 721, column: 29, scope: !2151)
!2158 = !DILocation(line: 721, column: 41, scope: !2151)
!2159 = !DILocation(line: 722, column: 11, scope: !2151)
!2160 = !DILocation(line: 722, column: 23, scope: !2151)
!2161 = !DILocation(line: 722, column: 38, scope: !2151)
!2162 = !DILocation(line: 722, column: 50, scope: !2151)
!2163 = !DILocation(line: 719, column: 17, scope: !2151)
!2164 = !DILocation(line: 719, column: 17, scope: !2137)
!2165 = !DILocation(line: 723, column: 7, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2151, file: !2, line: 722, column: 59)
!2167 = !DILocation(line: 724, column: 69, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2151, file: !2, line: 724, column: 17)
!2169 = !DILocation(line: 724, column: 17, scope: !2168)
!2170 = !DILocation(line: 724, column: 17, scope: !2151)
!2171 = !DILocation(line: 725, column: 24, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !2, line: 724, column: 95)
!2173 = !DILocation(line: 727, column: 15, scope: !2172)
!2174 = !DILocation(line: 727, column: 31, scope: !2172)
!2175 = !DILocation(line: 726, column: 7, scope: !2172)
!2176 = !DILocation(line: 728, column: 7, scope: !2172)
!2177 = !DILocation(line: 730, column: 7, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2168, file: !2, line: 729, column: 13)
!2179 = !DILocation(line: 733, column: 5, scope: !2124)
!2180 = !DILocation(line: 734, column: 6, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2119, file: !2, line: 733, column: 12)
!2182 = !DILocation(line: 735, column: 6, scope: !2181)
!2183 = distinct !{!2183, !2101, !2184, !914}
!2184 = !DILocation(line: 738, column: 4, scope: !2099)
!2185 = !DILocation(line: 742, column: 2, scope: !1419)
!2186 = !DILocation(line: 743, column: 1, scope: !1419)
!2187 = distinct !DISubprogram(name: "get_allocate_address_family", scope: !2, file: !2, line: 74, type: !2188, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !425)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!199, !448}
!2190 = !DILocalVariable(name: "relay_addr", arg: 1, scope: !2187, file: !2, line: 74, type: !448)
!2191 = !DILocation(line: 74, column: 50, scope: !2187)
!2192 = !DILocation(line: 75, column: 5, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2187, file: !2, line: 75, column: 5)
!2194 = !DILocation(line: 75, column: 20, scope: !2193)
!2195 = !DILocation(line: 75, column: 30, scope: !2193)
!2196 = !DILocation(line: 75, column: 5, scope: !2187)
!2197 = !DILocation(line: 76, column: 3, scope: !2193)
!2198 = !DILocation(line: 77, column: 10, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2193, file: !2, line: 77, column: 10)
!2200 = !DILocation(line: 77, column: 25, scope: !2199)
!2201 = !DILocation(line: 77, column: 35, scope: !2199)
!2202 = !DILocation(line: 77, column: 10, scope: !2193)
!2203 = !DILocation(line: 78, column: 3, scope: !2199)
!2204 = !DILocation(line: 80, column: 3, scope: !2199)
!2205 = !DILocation(line: 81, column: 1, scope: !2187)
!2206 = distinct !DISubprogram(name: "turn_channel_bind", scope: !2, file: !2, line: 745, type: !2207, scopeLine: 746, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !425)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!199, !199, !640, !486, !448}
!2209 = !DILocalVariable(name: "verbose", arg: 1, scope: !2206, file: !2, line: 745, type: !199)
!2210 = !DILocation(line: 745, column: 34, scope: !2206)
!2211 = !DILocalVariable(name: "chn", arg: 2, scope: !2206, file: !2, line: 745, type: !640)
!2212 = !DILocation(line: 745, column: 53, scope: !2206)
!2213 = !DILocalVariable(name: "clnet_info", arg: 3, scope: !2206, file: !2, line: 746, type: !486)
!2214 = !DILocation(line: 746, column: 21, scope: !2206)
!2215 = !DILocalVariable(name: "peer_addr", arg: 4, scope: !2206, file: !2, line: 746, type: !448)
!2216 = !DILocation(line: 746, column: 43, scope: !2206)
!2217 = !DILocalVariable(name: "request_message", scope: !2206, file: !2, line: 748, type: !524)
!2218 = !DILocation(line: 748, column: 14, scope: !2206)
!2219 = !DILocalVariable(name: "response_message", scope: !2206, file: !2, line: 748, type: !524)
!2220 = !DILocation(line: 748, column: 31, scope: !2206)
!2221 = !DILocation(line: 748, column: 2, scope: !2206)
!2222 = !DILabel(scope: !2206, name: "beg_bind", file: !2, line: 750)
!2223 = !DILocation(line: 750, column: 2, scope: !2206)
!2224 = !DILocalVariable(name: "cb_sent", scope: !2225, file: !2, line: 753, type: !199)
!2225 = distinct !DILexicalBlock(scope: !2206, file: !2, line: 752, column: 2)
!2226 = !DILocation(line: 753, column: 7, scope: !2225)
!2227 = !DILocation(line: 755, column: 6, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 755, column: 6)
!2229 = !DILocation(line: 755, column: 6, scope: !2225)
!2230 = !DILocation(line: 756, column: 59, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 755, column: 21)
!2232 = !DILocation(line: 756, column: 80, scope: !2231)
!2233 = !DILocation(line: 756, column: 70, scope: !2231)
!2234 = !DILocation(line: 756, column: 11, scope: !2231)
!2235 = !DILocation(line: 756, column: 5, scope: !2231)
!2236 = !DILocation(line: 756, column: 9, scope: !2231)
!2237 = !DILocation(line: 757, column: 3, scope: !2231)
!2238 = !DILocation(line: 758, column: 59, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 757, column: 10)
!2240 = !DILocation(line: 758, column: 71, scope: !2239)
!2241 = !DILocation(line: 758, column: 70, scope: !2239)
!2242 = !DILocation(line: 758, column: 11, scope: !2239)
!2243 = !DILocation(line: 758, column: 5, scope: !2239)
!2244 = !DILocation(line: 758, column: 9, scope: !2239)
!2245 = !DILocation(line: 761, column: 3, scope: !2225)
!2246 = !DILocation(line: 763, column: 20, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 763, column: 6)
!2248 = !DILocation(line: 763, column: 6, scope: !2247)
!2249 = !DILocation(line: 763, column: 49, scope: !2247)
!2250 = !DILocation(line: 763, column: 6, scope: !2225)
!2251 = !DILocation(line: 763, column: 53, scope: !2247)
!2252 = !DILocation(line: 765, column: 49, scope: !2225)
!2253 = !DILocation(line: 765, column: 33, scope: !2225)
!2254 = !DILocation(line: 765, column: 80, scope: !2225)
!2255 = !DILocation(line: 765, column: 3, scope: !2225)
!2256 = !DILocation(line: 767, column: 3, scope: !2225)
!2257 = !DILocation(line: 767, column: 11, scope: !2225)
!2258 = !DILocation(line: 767, column: 10, scope: !2225)
!2259 = !DILocalVariable(name: "len", scope: !2260, file: !2, line: 769, type: !199)
!2260 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 767, column: 20)
!2261 = !DILocation(line: 769, column: 8, scope: !2260)
!2262 = !DILocation(line: 769, column: 26, scope: !2260)
!2263 = !DILocation(line: 769, column: 14, scope: !2260)
!2264 = !DILocation(line: 770, column: 8, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 770, column: 8)
!2266 = !DILocation(line: 770, column: 12, scope: !2265)
!2267 = !DILocation(line: 770, column: 8, scope: !2260)
!2268 = !DILocation(line: 771, column: 9, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !2, line: 771, column: 9)
!2270 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 770, column: 17)
!2271 = !DILocation(line: 771, column: 9, scope: !2270)
!2272 = !DILocation(line: 772, column: 6, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 771, column: 18)
!2274 = !DILocation(line: 773, column: 5, scope: !2273)
!2275 = !DILocation(line: 774, column: 13, scope: !2270)
!2276 = !DILocation(line: 775, column: 4, scope: !2270)
!2277 = !DILocation(line: 776, column: 5, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 775, column: 11)
!2279 = !DILocation(line: 777, column: 5, scope: !2278)
!2280 = distinct !{!2280, !2256, !2281, !914}
!2281 = !DILocation(line: 779, column: 3, scope: !2225)
!2282 = !DILocation(line: 784, column: 5, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2206, file: !2, line: 784, column: 5)
!2284 = !DILocation(line: 784, column: 5, scope: !2206)
!2285 = !DILocation(line: 784, column: 23, scope: !2283)
!2286 = !DILocalVariable(name: "cb_received", scope: !2287, file: !2, line: 789, type: !199)
!2287 = distinct !DILexicalBlock(scope: !2206, file: !2, line: 788, column: 2)
!2288 = !DILocation(line: 789, column: 7, scope: !2287)
!2289 = !DILocation(line: 790, column: 3, scope: !2287)
!2290 = !DILocation(line: 790, column: 11, scope: !2287)
!2291 = !DILocation(line: 790, column: 10, scope: !2287)
!2292 = !DILocalVariable(name: "len", scope: !2293, file: !2, line: 792, type: !199)
!2293 = distinct !DILexicalBlock(scope: !2287, file: !2, line: 790, column: 24)
!2294 = !DILocation(line: 792, column: 8, scope: !2293)
!2295 = !DILocation(line: 792, column: 26, scope: !2293)
!2296 = !DILocation(line: 792, column: 14, scope: !2293)
!2297 = !DILocation(line: 793, column: 8, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2293, file: !2, line: 793, column: 8)
!2299 = !DILocation(line: 793, column: 12, scope: !2298)
!2300 = !DILocation(line: 793, column: 8, scope: !2293)
!2301 = !DILocation(line: 794, column: 9, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !2, line: 794, column: 9)
!2303 = distinct !DILexicalBlock(scope: !2298, file: !2, line: 793, column: 17)
!2304 = !DILocation(line: 794, column: 9, scope: !2303)
!2305 = !DILocation(line: 795, column: 6, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !2, line: 794, column: 18)
!2307 = !DILocation(line: 797, column: 5, scope: !2306)
!2308 = !DILocalVariable(name: "err_code", scope: !2303, file: !2, line: 798, type: !199)
!2309 = !DILocation(line: 798, column: 9, scope: !2303)
!2310 = !DILocalVariable(name: "err_msg", scope: !2303, file: !2, line: 799, type: !1646)
!2311 = !DILocation(line: 799, column: 13, scope: !2303)
!2312 = !DILocation(line: 800, column: 9, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2303, file: !2, line: 800, column: 9)
!2314 = !DILocation(line: 800, column: 9, scope: !2303)
!2315 = !DILocation(line: 802, column: 18, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2313, file: !2, line: 800, column: 54)
!2317 = !DILocation(line: 804, column: 9, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2316, file: !2, line: 804, column: 9)
!2319 = !DILocation(line: 804, column: 21, scope: !2318)
!2320 = !DILocation(line: 804, column: 9, scope: !2316)
!2321 = !DILocation(line: 805, column: 26, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 805, column: 10)
!2323 = distinct !DILexicalBlock(scope: !2318, file: !2, line: 804, column: 31)
!2324 = !DILocation(line: 805, column: 10, scope: !2322)
!2325 = !DILocation(line: 805, column: 56, scope: !2322)
!2326 = !DILocation(line: 805, column: 10, scope: !2323)
!2327 = !DILocation(line: 806, column: 8, scope: !2322)
!2328 = !DILocation(line: 807, column: 6, scope: !2323)
!2329 = !DILocation(line: 809, column: 10, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2316, file: !2, line: 809, column: 10)
!2331 = !DILocation(line: 809, column: 10, scope: !2316)
!2332 = !DILocation(line: 811, column: 17, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 809, column: 19)
!2334 = !DILocation(line: 811, column: 16, scope: !2333)
!2335 = !DILocation(line: 811, column: 9, scope: !2333)
!2336 = !DILocation(line: 810, column: 7, scope: !2333)
!2337 = !DILocation(line: 812, column: 6, scope: !2333)
!2338 = !DILocation(line: 813, column: 5, scope: !2316)
!2339 = !DILocation(line: 813, column: 64, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2313, file: !2, line: 813, column: 16)
!2341 = !DILocation(line: 813, column: 47, scope: !2340)
!2342 = !DILocation(line: 813, column: 94, scope: !2340)
!2343 = !DILocation(line: 814, column: 21, scope: !2340)
!2344 = !DILocation(line: 815, column: 11, scope: !2340)
!2345 = !DILocation(line: 815, column: 23, scope: !2340)
!2346 = !DILocation(line: 815, column: 29, scope: !2340)
!2347 = !DILocation(line: 815, column: 41, scope: !2340)
!2348 = !DILocation(line: 816, column: 11, scope: !2340)
!2349 = !DILocation(line: 816, column: 23, scope: !2340)
!2350 = !DILocation(line: 816, column: 38, scope: !2340)
!2351 = !DILocation(line: 816, column: 50, scope: !2340)
!2352 = !DILocation(line: 813, column: 16, scope: !2340)
!2353 = !DILocation(line: 813, column: 16, scope: !2313)
!2354 = !DILocation(line: 817, column: 6, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2340, file: !2, line: 816, column: 59)
!2356 = !DILocation(line: 818, column: 68, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2340, file: !2, line: 818, column: 16)
!2358 = !DILocation(line: 818, column: 16, scope: !2357)
!2359 = !DILocation(line: 818, column: 16, scope: !2340)
!2360 = !DILocation(line: 819, column: 18, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !2, line: 818, column: 94)
!2362 = !DILocation(line: 821, column: 14, scope: !2361)
!2363 = !DILocation(line: 821, column: 30, scope: !2361)
!2364 = !DILocation(line: 820, column: 6, scope: !2361)
!2365 = !DILocation(line: 822, column: 6, scope: !2361)
!2366 = !DILocation(line: 824, column: 6, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2357, file: !2, line: 823, column: 12)
!2368 = !DILocation(line: 827, column: 4, scope: !2303)
!2369 = !DILocation(line: 828, column: 5, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2298, file: !2, line: 827, column: 11)
!2371 = !DILocation(line: 829, column: 5, scope: !2370)
!2372 = distinct !{!2372, !2289, !2373, !914}
!2373 = !DILocation(line: 832, column: 3, scope: !2287)
!2374 = !DILocation(line: 835, column: 2, scope: !2206)
!2375 = !DILocation(line: 836, column: 1, scope: !2206)
!2376 = distinct !DISubprogram(name: "turn_create_permission", scope: !2, file: !2, line: 838, type: !2377, scopeLine: 840, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !425)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!199, !199, !486, !448, !199}
!2379 = !DILocalVariable(name: "verbose", arg: 1, scope: !2376, file: !2, line: 838, type: !199)
!2380 = !DILocation(line: 838, column: 39, scope: !2376)
!2381 = !DILocalVariable(name: "clnet_info", arg: 2, scope: !2376, file: !2, line: 838, type: !486)
!2382 = !DILocation(line: 838, column: 66, scope: !2376)
!2383 = !DILocalVariable(name: "peer_addr", arg: 3, scope: !2376, file: !2, line: 839, type: !448)
!2384 = !DILocation(line: 839, column: 13, scope: !2376)
!2385 = !DILocalVariable(name: "addrnum", arg: 4, scope: !2376, file: !2, line: 839, type: !199)
!2386 = !DILocation(line: 839, column: 28, scope: !2376)
!2387 = !DILocation(line: 842, column: 5, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 842, column: 5)
!2389 = !DILocation(line: 842, column: 20, scope: !2388)
!2390 = !DILocation(line: 842, column: 24, scope: !2388)
!2391 = !DILocation(line: 842, column: 31, scope: !2388)
!2392 = !DILocation(line: 842, column: 5, scope: !2376)
!2393 = !DILocation(line: 843, column: 3, scope: !2388)
!2394 = !DILocalVariable(name: "saddr", scope: !2376, file: !2, line: 845, type: !492)
!2395 = !DILocation(line: 845, column: 7, scope: !2376)
!2396 = !DILocation(line: 846, column: 6, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 846, column: 6)
!2398 = !DILocation(line: 846, column: 6, scope: !2376)
!2399 = !DILocation(line: 847, column: 18, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2397, file: !2, line: 846, column: 15)
!2401 = !DILocation(line: 847, column: 38, scope: !2400)
!2402 = !DILocation(line: 847, column: 3, scope: !2400)
!2403 = !DILocation(line: 848, column: 2, scope: !2400)
!2404 = !DILocalVariable(name: "request_message", scope: !2376, file: !2, line: 850, type: !524)
!2405 = !DILocation(line: 850, column: 14, scope: !2376)
!2406 = !DILocalVariable(name: "response_message", scope: !2376, file: !2, line: 850, type: !524)
!2407 = !DILocation(line: 850, column: 31, scope: !2376)
!2408 = !DILocation(line: 850, column: 2, scope: !2376)
!2409 = !DILabel(scope: !2376, name: "beg_cp", file: !2, line: 852)
!2410 = !DILocation(line: 852, column: 2, scope: !2376)
!2411 = !DILocalVariable(name: "cp_sent", scope: !2412, file: !2, line: 855, type: !199)
!2412 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 854, column: 2)
!2413 = !DILocation(line: 855, column: 7, scope: !2412)
!2414 = !DILocation(line: 857, column: 3, scope: !2412)
!2415 = !DILocalVariable(name: "addrindex", scope: !2416, file: !2, line: 859, type: !199)
!2416 = distinct !DILexicalBlock(scope: !2412, file: !2, line: 858, column: 3)
!2417 = !DILocation(line: 859, column: 8, scope: !2416)
!2418 = !DILocation(line: 860, column: 17, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2416, file: !2, line: 860, column: 4)
!2420 = !DILocation(line: 860, column: 8, scope: !2419)
!2421 = !DILocation(line: 860, column: 20, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2419, file: !2, line: 860, column: 4)
!2423 = !DILocation(line: 860, column: 30, scope: !2422)
!2424 = !DILocation(line: 860, column: 29, scope: !2422)
!2425 = !DILocation(line: 860, column: 4, scope: !2419)
!2426 = !DILocation(line: 861, column: 75, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2422, file: !2, line: 860, column: 51)
!2428 = !DILocation(line: 861, column: 85, scope: !2427)
!2429 = !DILocation(line: 861, column: 84, scope: !2427)
!2430 = !DILocation(line: 861, column: 5, scope: !2427)
!2431 = !DILocation(line: 862, column: 4, scope: !2427)
!2432 = !DILocation(line: 860, column: 38, scope: !2422)
!2433 = !DILocation(line: 860, column: 4, scope: !2422)
!2434 = distinct !{!2434, !2425, !2435, !914}
!2435 = !DILocation(line: 862, column: 4, scope: !2419)
!2436 = !DILocation(line: 865, column: 3, scope: !2412)
!2437 = !DILocation(line: 867, column: 20, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2412, file: !2, line: 867, column: 6)
!2439 = !DILocation(line: 867, column: 6, scope: !2438)
!2440 = !DILocation(line: 867, column: 49, scope: !2438)
!2441 = !DILocation(line: 867, column: 6, scope: !2412)
!2442 = !DILocation(line: 867, column: 53, scope: !2438)
!2443 = !DILocation(line: 869, column: 49, scope: !2412)
!2444 = !DILocation(line: 869, column: 33, scope: !2412)
!2445 = !DILocation(line: 869, column: 80, scope: !2412)
!2446 = !DILocation(line: 869, column: 3, scope: !2412)
!2447 = !DILocation(line: 871, column: 3, scope: !2412)
!2448 = !DILocation(line: 871, column: 11, scope: !2412)
!2449 = !DILocation(line: 871, column: 10, scope: !2412)
!2450 = !DILocalVariable(name: "len", scope: !2451, file: !2, line: 873, type: !199)
!2451 = distinct !DILexicalBlock(scope: !2412, file: !2, line: 871, column: 20)
!2452 = !DILocation(line: 873, column: 8, scope: !2451)
!2453 = !DILocation(line: 873, column: 26, scope: !2451)
!2454 = !DILocation(line: 873, column: 14, scope: !2451)
!2455 = !DILocation(line: 875, column: 8, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2451, file: !2, line: 875, column: 8)
!2457 = !DILocation(line: 875, column: 12, scope: !2456)
!2458 = !DILocation(line: 875, column: 8, scope: !2451)
!2459 = !DILocation(line: 876, column: 9, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 876, column: 9)
!2461 = distinct !DILexicalBlock(scope: !2456, file: !2, line: 875, column: 17)
!2462 = !DILocation(line: 876, column: 9, scope: !2461)
!2463 = !DILocation(line: 877, column: 66, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2460, file: !2, line: 876, column: 18)
!2465 = !DILocation(line: 877, column: 6, scope: !2464)
!2466 = !DILocation(line: 878, column: 5, scope: !2464)
!2467 = !DILocation(line: 879, column: 13, scope: !2461)
!2468 = !DILocation(line: 880, column: 4, scope: !2461)
!2469 = !DILocation(line: 881, column: 5, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2456, file: !2, line: 880, column: 11)
!2471 = !DILocation(line: 882, column: 5, scope: !2470)
!2472 = distinct !{!2472, !2447, !2473, !914}
!2473 = !DILocation(line: 884, column: 3, scope: !2412)
!2474 = !DILocation(line: 889, column: 5, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 889, column: 5)
!2476 = !DILocation(line: 889, column: 5, scope: !2376)
!2477 = !DILocation(line: 889, column: 23, scope: !2475)
!2478 = !DILocalVariable(name: "cp_received", scope: !2479, file: !2, line: 894, type: !199)
!2479 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 893, column: 2)
!2480 = !DILocation(line: 894, column: 7, scope: !2479)
!2481 = !DILocation(line: 895, column: 3, scope: !2479)
!2482 = !DILocation(line: 895, column: 11, scope: !2479)
!2483 = !DILocation(line: 895, column: 10, scope: !2479)
!2484 = !DILocalVariable(name: "len", scope: !2485, file: !2, line: 897, type: !199)
!2485 = distinct !DILexicalBlock(scope: !2479, file: !2, line: 895, column: 24)
!2486 = !DILocation(line: 897, column: 8, scope: !2485)
!2487 = !DILocation(line: 897, column: 26, scope: !2485)
!2488 = !DILocation(line: 897, column: 14, scope: !2485)
!2489 = !DILocation(line: 898, column: 8, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2485, file: !2, line: 898, column: 8)
!2491 = !DILocation(line: 898, column: 12, scope: !2490)
!2492 = !DILocation(line: 898, column: 8, scope: !2485)
!2493 = !DILocation(line: 899, column: 9, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !2, line: 899, column: 9)
!2495 = distinct !DILexicalBlock(scope: !2490, file: !2, line: 898, column: 17)
!2496 = !DILocation(line: 899, column: 9, scope: !2495)
!2497 = !DILocation(line: 900, column: 6, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2494, file: !2, line: 899, column: 18)
!2499 = !DILocation(line: 902, column: 5, scope: !2498)
!2500 = !DILocalVariable(name: "err_code", scope: !2495, file: !2, line: 903, type: !199)
!2501 = !DILocation(line: 903, column: 9, scope: !2495)
!2502 = !DILocalVariable(name: "err_msg", scope: !2495, file: !2, line: 904, type: !1646)
!2503 = !DILocation(line: 904, column: 13, scope: !2495)
!2504 = !DILocation(line: 905, column: 9, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2495, file: !2, line: 905, column: 9)
!2506 = !DILocation(line: 905, column: 9, scope: !2495)
!2507 = !DILocation(line: 907, column: 18, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2505, file: !2, line: 905, column: 54)
!2509 = !DILocation(line: 909, column: 9, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2508, file: !2, line: 909, column: 9)
!2511 = !DILocation(line: 909, column: 21, scope: !2510)
!2512 = !DILocation(line: 909, column: 9, scope: !2508)
!2513 = !DILocation(line: 910, column: 26, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 910, column: 10)
!2515 = distinct !DILexicalBlock(scope: !2510, file: !2, line: 909, column: 31)
!2516 = !DILocation(line: 910, column: 10, scope: !2514)
!2517 = !DILocation(line: 910, column: 56, scope: !2514)
!2518 = !DILocation(line: 910, column: 10, scope: !2515)
!2519 = !DILocation(line: 911, column: 8, scope: !2514)
!2520 = !DILocation(line: 912, column: 6, scope: !2515)
!2521 = !DILocation(line: 914, column: 10, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2508, file: !2, line: 914, column: 10)
!2523 = !DILocation(line: 914, column: 10, scope: !2508)
!2524 = !DILocation(line: 915, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2522, file: !2, line: 914, column: 19)
!2526 = !DILocation(line: 916, column: 6, scope: !2525)
!2527 = !DILocation(line: 917, column: 5, scope: !2508)
!2528 = !DILocation(line: 917, column: 64, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2505, file: !2, line: 917, column: 16)
!2530 = !DILocation(line: 917, column: 47, scope: !2529)
!2531 = !DILocation(line: 917, column: 94, scope: !2529)
!2532 = !DILocation(line: 918, column: 20, scope: !2529)
!2533 = !DILocation(line: 919, column: 10, scope: !2529)
!2534 = !DILocation(line: 919, column: 22, scope: !2529)
!2535 = !DILocation(line: 919, column: 28, scope: !2529)
!2536 = !DILocation(line: 919, column: 40, scope: !2529)
!2537 = !DILocation(line: 920, column: 10, scope: !2529)
!2538 = !DILocation(line: 920, column: 22, scope: !2529)
!2539 = !DILocation(line: 920, column: 37, scope: !2529)
!2540 = !DILocation(line: 920, column: 49, scope: !2529)
!2541 = !DILocation(line: 917, column: 16, scope: !2529)
!2542 = !DILocation(line: 917, column: 16, scope: !2505)
!2543 = !DILocation(line: 921, column: 6, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2529, file: !2, line: 920, column: 58)
!2545 = !DILocation(line: 922, column: 68, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2529, file: !2, line: 922, column: 16)
!2547 = !DILocation(line: 922, column: 16, scope: !2546)
!2548 = !DILocation(line: 922, column: 16, scope: !2529)
!2549 = !DILocation(line: 923, column: 18, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !2, line: 922, column: 94)
!2551 = !DILocation(line: 925, column: 14, scope: !2550)
!2552 = !DILocation(line: 925, column: 30, scope: !2550)
!2553 = !DILocation(line: 924, column: 6, scope: !2550)
!2554 = !DILocation(line: 926, column: 6, scope: !2550)
!2555 = !DILocation(line: 928, column: 6, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2546, file: !2, line: 927, column: 12)
!2557 = !DILocation(line: 931, column: 4, scope: !2495)
!2558 = !DILocation(line: 932, column: 5, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2490, file: !2, line: 931, column: 11)
!2560 = !DILocation(line: 933, column: 5, scope: !2559)
!2561 = distinct !{!2561, !2481, !2562, !914}
!2562 = !DILocation(line: 935, column: 3, scope: !2479)
!2563 = !DILocation(line: 938, column: 2, scope: !2376)
!2564 = !DILocation(line: 939, column: 1, scope: !2376)
!2565 = distinct !DISubprogram(name: "start_c2c_connection", scope: !2, file: !2, line: 1151, type: !2566, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !425)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!199, !228, !187, !639, !187, !199, !486, !486, !640, !486, !640, !486, !640, !486, !640}
!2568 = !DILocalVariable(name: "clnet_remote_port0", arg: 1, scope: !2565, file: !2, line: 1151, type: !228)
!2569 = !DILocation(line: 1151, column: 35, scope: !2565)
!2570 = !DILocalVariable(name: "remote_address0", arg: 2, scope: !2565, file: !2, line: 1152, type: !187)
!2571 = !DILocation(line: 1152, column: 15, scope: !2565)
!2572 = !DILocalVariable(name: "ifname", arg: 3, scope: !2565, file: !2, line: 1152, type: !639)
!2573 = !DILocation(line: 1152, column: 53, scope: !2565)
!2574 = !DILocalVariable(name: "local_address", arg: 4, scope: !2565, file: !2, line: 1153, type: !187)
!2575 = !DILocation(line: 1153, column: 15, scope: !2565)
!2576 = !DILocalVariable(name: "verbose", arg: 5, scope: !2565, file: !2, line: 1153, type: !199)
!2577 = !DILocation(line: 1153, column: 34, scope: !2565)
!2578 = !DILocalVariable(name: "clnet_info_probe", arg: 6, scope: !2565, file: !2, line: 1154, type: !486)
!2579 = !DILocation(line: 1154, column: 21, scope: !2565)
!2580 = !DILocalVariable(name: "clnet_info1", arg: 7, scope: !2565, file: !2, line: 1155, type: !486)
!2581 = !DILocation(line: 1155, column: 21, scope: !2565)
!2582 = !DILocalVariable(name: "chn1", arg: 8, scope: !2565, file: !2, line: 1156, type: !640)
!2583 = !DILocation(line: 1156, column: 13, scope: !2565)
!2584 = !DILocalVariable(name: "clnet_info1_rtcp", arg: 9, scope: !2565, file: !2, line: 1156, type: !486)
!2585 = !DILocation(line: 1156, column: 37, scope: !2565)
!2586 = !DILocalVariable(name: "chn1_rtcp", arg: 10, scope: !2565, file: !2, line: 1157, type: !640)
!2587 = !DILocation(line: 1157, column: 13, scope: !2565)
!2588 = !DILocalVariable(name: "clnet_info2", arg: 11, scope: !2565, file: !2, line: 1158, type: !486)
!2589 = !DILocation(line: 1158, column: 21, scope: !2565)
!2590 = !DILocalVariable(name: "chn2", arg: 12, scope: !2565, file: !2, line: 1158, type: !640)
!2591 = !DILocation(line: 1158, column: 44, scope: !2565)
!2592 = !DILocalVariable(name: "clnet_info2_rtcp", arg: 13, scope: !2565, file: !2, line: 1159, type: !486)
!2593 = !DILocation(line: 1159, column: 21, scope: !2565)
!2594 = !DILocalVariable(name: "chn2_rtcp", arg: 14, scope: !2565, file: !2, line: 1160, type: !640)
!2595 = !DILocation(line: 1160, column: 13, scope: !2565)
!2596 = !DILocalVariable(name: "relay_addr1", scope: !2565, file: !2, line: 1162, type: !209)
!2597 = !DILocation(line: 1162, column: 11, scope: !2565)
!2598 = !DILocalVariable(name: "relay_addr1_rtcp", scope: !2565, file: !2, line: 1163, type: !209)
!2599 = !DILocation(line: 1163, column: 11, scope: !2565)
!2600 = !DILocalVariable(name: "relay_addr2", scope: !2565, file: !2, line: 1165, type: !209)
!2601 = !DILocation(line: 1165, column: 11, scope: !2565)
!2602 = !DILocalVariable(name: "relay_addr2_rtcp", scope: !2565, file: !2, line: 1166, type: !209)
!2603 = !DILocation(line: 1166, column: 11, scope: !2565)
!2604 = !DILocation(line: 1168, column: 3, scope: !2565)
!2605 = !DILocation(line: 1168, column: 8, scope: !2565)
!2606 = !DILocation(line: 1169, column: 3, scope: !2565)
!2607 = !DILocation(line: 1169, column: 8, scope: !2565)
!2608 = !DILocation(line: 1170, column: 5, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 1170, column: 5)
!2610 = !DILocation(line: 1170, column: 5, scope: !2565)
!2611 = !DILocation(line: 1170, column: 17, scope: !2609)
!2612 = !DILocation(line: 1170, column: 26, scope: !2609)
!2613 = !DILocation(line: 1170, column: 16, scope: !2609)
!2614 = !DILocation(line: 1171, column: 5, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 1171, column: 5)
!2616 = !DILocation(line: 1171, column: 5, scope: !2565)
!2617 = !DILocation(line: 1171, column: 17, scope: !2615)
!2618 = !DILocation(line: 1171, column: 26, scope: !2615)
!2619 = !DILocation(line: 1171, column: 16, scope: !2615)
!2620 = !DILocation(line: 1175, column: 20, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 1175, column: 6)
!2622 = !DILocation(line: 1175, column: 40, scope: !2621)
!2623 = !DILocation(line: 1175, column: 57, scope: !2621)
!2624 = !DILocation(line: 1175, column: 65, scope: !2621)
!2625 = !DILocation(line: 1176, column: 4, scope: !2621)
!2626 = !DILocation(line: 1176, column: 13, scope: !2621)
!2627 = !DILocation(line: 1175, column: 6, scope: !2621)
!2628 = !DILocation(line: 1176, column: 31, scope: !2621)
!2629 = !DILocation(line: 1175, column: 6, scope: !2565)
!2630 = !DILocation(line: 1177, column: 3, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2621, file: !2, line: 1176, column: 36)
!2632 = !DILocalVariable(name: "clnet_remote_port", scope: !2565, file: !2, line: 1180, type: !228)
!2633 = !DILocation(line: 1180, column: 11, scope: !2565)
!2634 = !DILocation(line: 1180, column: 31, scope: !2565)
!2635 = !DILocalVariable(name: "remote_address", scope: !2565, file: !2, line: 1181, type: !687)
!2636 = !DILocation(line: 1181, column: 7, scope: !2565)
!2637 = !DILocation(line: 1182, column: 2, scope: !2565)
!2638 = !DILocation(line: 1182, column: 2, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !2, line: 1182, column: 2)
!2640 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 1182, column: 2)
!2641 = !DILocation(line: 1182, column: 2, scope: !2640)
!2642 = !DILocalVariable(name: "szdst", scope: !2643, file: !2, line: 1182, type: !185)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !2, line: 1182, column: 2)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !2, line: 1182, column: 2)
!2645 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 1182, column: 2)
!2646 = !DILocation(line: 1182, column: 2, scope: !2643)
!2647 = !DILocation(line: 1182, column: 2, scope: !2645)
!2648 = !DILocation(line: 1184, column: 17, scope: !2565)
!2649 = !DILocation(line: 1184, column: 26, scope: !2565)
!2650 = !DILocation(line: 1184, column: 58, scope: !2565)
!2651 = !DILocation(line: 1184, column: 82, scope: !2565)
!2652 = !DILocation(line: 1184, column: 2, scope: !2565)
!2653 = !DILocation(line: 1186, column: 5, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 1186, column: 5)
!2655 = !DILocation(line: 1186, column: 5, scope: !2565)
!2656 = !DILocation(line: 1186, column: 19, scope: !2654)
!2657 = !DILocation(line: 1190, column: 20, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 1190, column: 6)
!2659 = !DILocation(line: 1190, column: 39, scope: !2658)
!2660 = !DILocation(line: 1190, column: 55, scope: !2658)
!2661 = !DILocation(line: 1190, column: 63, scope: !2658)
!2662 = !DILocation(line: 1191, column: 4, scope: !2658)
!2663 = !DILocation(line: 1191, column: 13, scope: !2658)
!2664 = !DILocation(line: 1190, column: 6, scope: !2658)
!2665 = !DILocation(line: 1191, column: 26, scope: !2658)
!2666 = !DILocation(line: 1190, column: 6, scope: !2565)
!2667 = !DILocation(line: 1192, column: 3, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2658, file: !2, line: 1191, column: 31)
!2669 = !DILocation(line: 1195, column: 6, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 1195, column: 5)
!2671 = !DILocation(line: 1195, column: 5, scope: !2565)
!2672 = !DILocation(line: 1196, column: 22, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2670, file: !2, line: 1196, column: 8)
!2674 = !DILocation(line: 1196, column: 41, scope: !2673)
!2675 = !DILocation(line: 1196, column: 57, scope: !2673)
!2676 = !DILocation(line: 1196, column: 65, scope: !2673)
!2677 = !DILocation(line: 1197, column: 6, scope: !2673)
!2678 = !DILocation(line: 1197, column: 15, scope: !2673)
!2679 = !DILocation(line: 1196, column: 8, scope: !2673)
!2680 = !DILocation(line: 1197, column: 33, scope: !2673)
!2681 = !DILocation(line: 1196, column: 8, scope: !2670)
!2682 = !DILocation(line: 1198, column: 6, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2673, file: !2, line: 1197, column: 38)
!2684 = !DILocation(line: 1197, column: 35, scope: !2673)
!2685 = !DILocation(line: 1201, column: 5, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 1201, column: 5)
!2687 = !DILocation(line: 1201, column: 5, scope: !2565)
!2688 = !DILocation(line: 1202, column: 3, scope: !2686)
!2689 = !DILocation(line: 1202, column: 16, scope: !2686)
!2690 = !DILocation(line: 1202, column: 24, scope: !2686)
!2691 = !DILocation(line: 1204, column: 20, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 1204, column: 6)
!2693 = !DILocation(line: 1204, column: 39, scope: !2692)
!2694 = !DILocation(line: 1204, column: 55, scope: !2692)
!2695 = !DILocation(line: 1204, column: 63, scope: !2692)
!2696 = !DILocation(line: 1205, column: 4, scope: !2692)
!2697 = !DILocation(line: 1205, column: 13, scope: !2692)
!2698 = !DILocation(line: 1204, column: 6, scope: !2692)
!2699 = !DILocation(line: 1205, column: 26, scope: !2692)
!2700 = !DILocation(line: 1204, column: 6, scope: !2565)
!2701 = !DILocation(line: 1206, column: 3, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2692, file: !2, line: 1205, column: 31)
!2703 = !DILocation(line: 1209, column: 6, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 1209, column: 5)
!2705 = !DILocation(line: 1209, column: 5, scope: !2565)
!2706 = !DILocation(line: 1210, column: 22, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2704, file: !2, line: 1210, column: 8)
!2708 = !DILocation(line: 1210, column: 41, scope: !2707)
!2709 = !DILocation(line: 1210, column: 57, scope: !2707)
!2710 = !DILocation(line: 1210, column: 65, scope: !2707)
!2711 = !DILocation(line: 1211, column: 6, scope: !2707)
!2712 = !DILocation(line: 1211, column: 15, scope: !2707)
!2713 = !DILocation(line: 1210, column: 8, scope: !2707)
!2714 = !DILocation(line: 1211, column: 33, scope: !2707)
!2715 = !DILocation(line: 1210, column: 8, scope: !2704)
!2716 = !DILocation(line: 1212, column: 6, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2707, file: !2, line: 1211, column: 38)
!2718 = !DILocation(line: 1211, column: 35, scope: !2707)
!2719 = !DILocation(line: 1215, column: 6, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 1215, column: 5)
!2721 = !DILocation(line: 1215, column: 5, scope: !2565)
!2722 = !DILocation(line: 1217, column: 23, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !2, line: 1217, column: 8)
!2724 = distinct !DILexicalBlock(scope: !2720, file: !2, line: 1215, column: 15)
!2725 = !DILocation(line: 1217, column: 32, scope: !2723)
!2726 = !DILocation(line: 1217, column: 59, scope: !2723)
!2727 = !DILocation(line: 1217, column: 8, scope: !2723)
!2728 = !DILocation(line: 1218, column: 8, scope: !2723)
!2729 = !DILocation(line: 1217, column: 8, scope: !2724)
!2730 = !DILocation(line: 1219, column: 6, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2723, file: !2, line: 1218, column: 13)
!2732 = !DILocation(line: 1222, column: 7, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2724, file: !2, line: 1222, column: 7)
!2734 = !DILocation(line: 1222, column: 7, scope: !2724)
!2735 = !DILocation(line: 1222, column: 21, scope: !2733)
!2736 = !DILocation(line: 1224, column: 23, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2724, file: !2, line: 1224, column: 8)
!2738 = !DILocation(line: 1224, column: 32, scope: !2737)
!2739 = !DILocation(line: 1225, column: 26, scope: !2737)
!2740 = !DILocation(line: 1224, column: 8, scope: !2737)
!2741 = !DILocation(line: 1225, column: 60, scope: !2737)
!2742 = !DILocation(line: 1224, column: 8, scope: !2724)
!2743 = !DILocation(line: 1226, column: 6, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2737, file: !2, line: 1225, column: 65)
!2745 = !DILocation(line: 1229, column: 7, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2724, file: !2, line: 1229, column: 7)
!2747 = !DILocation(line: 1229, column: 7, scope: !2724)
!2748 = !DILocation(line: 1229, column: 21, scope: !2746)
!2749 = !DILocation(line: 1231, column: 23, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2724, file: !2, line: 1231, column: 8)
!2751 = !DILocation(line: 1231, column: 32, scope: !2750)
!2752 = !DILocation(line: 1231, column: 59, scope: !2750)
!2753 = !DILocation(line: 1231, column: 8, scope: !2750)
!2754 = !DILocation(line: 1232, column: 8, scope: !2750)
!2755 = !DILocation(line: 1231, column: 8, scope: !2724)
!2756 = !DILocation(line: 1233, column: 6, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2750, file: !2, line: 1232, column: 13)
!2758 = !DILocation(line: 1236, column: 7, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2724, file: !2, line: 1236, column: 7)
!2760 = !DILocation(line: 1236, column: 7, scope: !2724)
!2761 = !DILocation(line: 1236, column: 21, scope: !2759)
!2762 = !DILocation(line: 1238, column: 23, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2724, file: !2, line: 1238, column: 8)
!2764 = !DILocation(line: 1238, column: 32, scope: !2763)
!2765 = !DILocation(line: 1239, column: 26, scope: !2763)
!2766 = !DILocation(line: 1238, column: 8, scope: !2763)
!2767 = !DILocation(line: 1239, column: 60, scope: !2763)
!2768 = !DILocation(line: 1238, column: 8, scope: !2724)
!2769 = !DILocation(line: 1240, column: 6, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2763, file: !2, line: 1239, column: 65)
!2771 = !DILocation(line: 1243, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2724, file: !2, line: 1243, column: 7)
!2773 = !DILocation(line: 1243, column: 7, scope: !2724)
!2774 = !DILocation(line: 1243, column: 21, scope: !2772)
!2775 = !DILocation(line: 1244, column: 2, scope: !2724)
!2776 = !DILocation(line: 1246, column: 23, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !2, line: 1246, column: 8)
!2778 = distinct !DILexicalBlock(scope: !2720, file: !2, line: 1244, column: 9)
!2779 = !DILocation(line: 1246, column: 32, scope: !2777)
!2780 = !DILocation(line: 1246, column: 59, scope: !2777)
!2781 = !DILocation(line: 1246, column: 8, scope: !2777)
!2782 = !DILocation(line: 1247, column: 8, scope: !2777)
!2783 = !DILocation(line: 1246, column: 8, scope: !2778)
!2784 = !DILocation(line: 1248, column: 6, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2777, file: !2, line: 1247, column: 13)
!2786 = !DILocation(line: 1250, column: 7, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2778, file: !2, line: 1250, column: 7)
!2788 = !DILocation(line: 1250, column: 7, scope: !2778)
!2789 = !DILocation(line: 1250, column: 21, scope: !2787)
!2790 = !DILocation(line: 1251, column: 9, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2778, file: !2, line: 1251, column: 7)
!2792 = !DILocation(line: 1251, column: 22, scope: !2791)
!2793 = !DILocation(line: 1251, column: 8, scope: !2791)
!2794 = !DILocation(line: 1251, column: 7, scope: !2778)
!2795 = !DILocation(line: 1252, column: 24, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !2, line: 1252, column: 9)
!2797 = distinct !DILexicalBlock(scope: !2791, file: !2, line: 1251, column: 32)
!2798 = !DILocation(line: 1252, column: 33, scope: !2796)
!2799 = !DILocation(line: 1252, column: 60, scope: !2796)
!2800 = !DILocation(line: 1252, column: 9, scope: !2796)
!2801 = !DILocation(line: 1252, column: 94, scope: !2796)
!2802 = !DILocation(line: 1252, column: 9, scope: !2797)
!2803 = !DILocation(line: 1253, column: 6, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2796, file: !2, line: 1252, column: 99)
!2805 = !DILocation(line: 1255, column: 8, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2797, file: !2, line: 1255, column: 8)
!2807 = !DILocation(line: 1255, column: 8, scope: !2797)
!2808 = !DILocation(line: 1255, column: 22, scope: !2806)
!2809 = !DILocation(line: 1256, column: 4, scope: !2797)
!2810 = !DILocation(line: 1257, column: 16, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2791, file: !2, line: 1256, column: 11)
!2812 = !DILocation(line: 1257, column: 29, scope: !2811)
!2813 = !DILocation(line: 1257, column: 5, scope: !2811)
!2814 = !DILocation(line: 1258, column: 29, scope: !2811)
!2815 = !DILocation(line: 1258, column: 42, scope: !2811)
!2816 = !DILocation(line: 1258, column: 5, scope: !2811)
!2817 = !DILocation(line: 1262, column: 7, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 1262, column: 6)
!2819 = !DILocation(line: 1262, column: 6, scope: !2565)
!2820 = !DILocation(line: 1263, column: 25, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !2, line: 1263, column: 7)
!2822 = distinct !DILexicalBlock(scope: !2818, file: !2, line: 1262, column: 27)
!2823 = !DILocation(line: 1263, column: 34, scope: !2821)
!2824 = !DILocation(line: 1263, column: 40, scope: !2821)
!2825 = !DILocation(line: 1263, column: 7, scope: !2821)
!2826 = !DILocation(line: 1263, column: 67, scope: !2821)
!2827 = !DILocation(line: 1263, column: 7, scope: !2822)
!2828 = !DILocation(line: 1264, column: 4, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2821, file: !2, line: 1263, column: 72)
!2830 = !DILocation(line: 1267, column: 6, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2822, file: !2, line: 1267, column: 6)
!2832 = !DILocation(line: 1267, column: 6, scope: !2822)
!2833 = !DILocalVariable(name: "sarbaddr", scope: !2834, file: !2, line: 1268, type: !187)
!2834 = distinct !DILexicalBlock(scope: !2831, file: !2, line: 1267, column: 22)
!2835 = !DILocation(line: 1268, column: 16, scope: !2834)
!2836 = !DILocation(line: 1269, column: 7, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2834, file: !2, line: 1269, column: 7)
!2838 = !DILocation(line: 1269, column: 16, scope: !2837)
!2839 = !DILocation(line: 1269, column: 20, scope: !2837)
!2840 = !DILocation(line: 1269, column: 7, scope: !2834)
!2841 = !DILocation(line: 1270, column: 14, scope: !2837)
!2842 = !DILocation(line: 1270, column: 5, scope: !2837)
!2843 = !DILocalVariable(name: "arbaddr", scope: !2834, file: !2, line: 1271, type: !209)
!2844 = !DILocation(line: 1271, column: 13, scope: !2834)
!2845 = !DILocation(line: 1272, column: 34, scope: !2834)
!2846 = !DILocation(line: 1272, column: 4, scope: !2834)
!2847 = !DILocalVariable(name: "i", scope: !2834, file: !2, line: 1273, type: !199)
!2848 = !DILocation(line: 1273, column: 8, scope: !2834)
!2849 = !DILocalVariable(name: "maxi", scope: !2834, file: !2, line: 1274, type: !199)
!2850 = !DILocation(line: 1274, column: 8, scope: !2834)
!2851 = !DILocation(line: 1274, column: 31, scope: !2834)
!2852 = !DILocation(line: 1274, column: 15, scope: !2834)
!2853 = !DILocation(line: 1274, column: 40, scope: !2834)
!2854 = !DILocation(line: 1275, column: 9, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2834, file: !2, line: 1275, column: 4)
!2856 = !DILocation(line: 1275, column: 8, scope: !2855)
!2857 = !DILocation(line: 1275, column: 12, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2855, file: !2, line: 1275, column: 4)
!2859 = !DILocation(line: 1275, column: 14, scope: !2858)
!2860 = !DILocation(line: 1275, column: 13, scope: !2858)
!2861 = !DILocation(line: 1275, column: 4, scope: !2855)
!2862 = !DILocalVariable(name: "chni", scope: !2863, file: !2, line: 1276, type: !228)
!2863 = distinct !DILexicalBlock(scope: !2858, file: !2, line: 1275, column: 24)
!2864 = !DILocation(line: 1276, column: 14, scope: !2863)
!2865 = !DILocalVariable(name: "port", scope: !2863, file: !2, line: 1277, type: !199)
!2866 = !DILocation(line: 1277, column: 9, scope: !2863)
!2867 = !DILocation(line: 1277, column: 32, scope: !2863)
!2868 = !DILocation(line: 1277, column: 16, scope: !2863)
!2869 = !DILocation(line: 1278, column: 8, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2863, file: !2, line: 1278, column: 8)
!2871 = !DILocation(line: 1278, column: 12, scope: !2870)
!2872 = !DILocation(line: 1278, column: 8, scope: !2863)
!2873 = !DILocation(line: 1278, column: 24, scope: !2870)
!2874 = !DILocation(line: 1278, column: 19, scope: !2870)
!2875 = !DILocation(line: 1279, column: 29, scope: !2863)
!2876 = !DILocation(line: 1279, column: 5, scope: !2863)
!2877 = !DILocalVariable(name: "u", scope: !2863, file: !2, line: 1280, type: !197)
!2878 = !DILocation(line: 1280, column: 14, scope: !2863)
!2879 = !DILocation(line: 1280, column: 39, scope: !2863)
!2880 = !DILocation(line: 1281, column: 37, scope: !2863)
!2881 = !DILocation(line: 1281, column: 55, scope: !2863)
!2882 = !DILocation(line: 1281, column: 39, scope: !2863)
!2883 = !DILocation(line: 1281, column: 63, scope: !2863)
!2884 = !DILocation(line: 1281, column: 67, scope: !2863)
!2885 = !DILocation(line: 1281, column: 5, scope: !2863)
!2886 = !DILocation(line: 1281, column: 23, scope: !2863)
!2887 = !DILocation(line: 1281, column: 7, scope: !2863)
!2888 = !DILocation(line: 1281, column: 31, scope: !2863)
!2889 = !DILocation(line: 1281, column: 35, scope: !2863)
!2890 = !DILocation(line: 1285, column: 23, scope: !2863)
!2891 = !DILocation(line: 1285, column: 39, scope: !2863)
!2892 = !DILocation(line: 1285, column: 5, scope: !2863)
!2893 = !DILocation(line: 1286, column: 4, scope: !2863)
!2894 = !DILocation(line: 1275, column: 20, scope: !2858)
!2895 = !DILocation(line: 1275, column: 4, scope: !2858)
!2896 = distinct !{!2896, !2861, !2897, !914}
!2897 = !DILocation(line: 1286, column: 4, scope: !2855)
!2898 = !DILocation(line: 1287, column: 3, scope: !2834)
!2899 = !DILocation(line: 1289, column: 6, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2822, file: !2, line: 1289, column: 6)
!2901 = !DILocation(line: 1289, column: 6, scope: !2822)
!2902 = !DILocation(line: 1289, column: 20, scope: !2900)
!2903 = !DILocation(line: 1291, column: 6, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2822, file: !2, line: 1291, column: 6)
!2905 = !DILocation(line: 1291, column: 6, scope: !2822)
!2906 = !DILocalVariable(name: "sarbaddr", scope: !2907, file: !2, line: 1292, type: !187)
!2907 = distinct !DILexicalBlock(scope: !2904, file: !2, line: 1291, column: 22)
!2908 = !DILocation(line: 1292, column: 16, scope: !2907)
!2909 = !DILocation(line: 1293, column: 7, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2907, file: !2, line: 1293, column: 7)
!2911 = !DILocation(line: 1293, column: 16, scope: !2910)
!2912 = !DILocation(line: 1293, column: 20, scope: !2910)
!2913 = !DILocation(line: 1293, column: 7, scope: !2907)
!2914 = !DILocation(line: 1294, column: 14, scope: !2910)
!2915 = !DILocation(line: 1294, column: 5, scope: !2910)
!2916 = !DILocalVariable(name: "arbaddr", scope: !2907, file: !2, line: 1295, type: !948)
!2917 = !DILocation(line: 1295, column: 13, scope: !2907)
!2918 = !DILocation(line: 1296, column: 34, scope: !2907)
!2919 = !DILocation(line: 1296, column: 50, scope: !2907)
!2920 = !DILocation(line: 1296, column: 4, scope: !2907)
!2921 = !DILocalVariable(name: "i", scope: !2907, file: !2, line: 1297, type: !199)
!2922 = !DILocation(line: 1297, column: 8, scope: !2907)
!2923 = !DILocalVariable(name: "maxi", scope: !2907, file: !2, line: 1298, type: !199)
!2924 = !DILocation(line: 1298, column: 8, scope: !2907)
!2925 = !DILocation(line: 1298, column: 31, scope: !2907)
!2926 = !DILocation(line: 1298, column: 15, scope: !2907)
!2927 = !DILocation(line: 1298, column: 40, scope: !2907)
!2928 = !DILocation(line: 1299, column: 9, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2907, file: !2, line: 1299, column: 4)
!2930 = !DILocation(line: 1299, column: 8, scope: !2929)
!2931 = !DILocation(line: 1299, column: 12, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2929, file: !2, line: 1299, column: 4)
!2933 = !DILocation(line: 1299, column: 14, scope: !2932)
!2934 = !DILocation(line: 1299, column: 13, scope: !2932)
!2935 = !DILocation(line: 1299, column: 4, scope: !2929)
!2936 = !DILocation(line: 1300, column: 8, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !2, line: 1300, column: 8)
!2938 = distinct !DILexicalBlock(scope: !2932, file: !2, line: 1299, column: 24)
!2939 = !DILocation(line: 1300, column: 9, scope: !2937)
!2940 = !DILocation(line: 1300, column: 8, scope: !2938)
!2941 = !DILocation(line: 1301, column: 24, scope: !2937)
!2942 = !DILocation(line: 1301, column: 16, scope: !2937)
!2943 = !DILocation(line: 1301, column: 28, scope: !2937)
!2944 = !DILocation(line: 1301, column: 6, scope: !2937)
!2945 = !DILocation(line: 1302, column: 28, scope: !2938)
!2946 = !DILocation(line: 1302, column: 20, scope: !2938)
!2947 = !DILocation(line: 1302, column: 48, scope: !2938)
!2948 = !DILocation(line: 1302, column: 32, scope: !2938)
!2949 = !DILocation(line: 1302, column: 5, scope: !2938)
!2950 = !DILocalVariable(name: "u", scope: !2938, file: !2, line: 1303, type: !197)
!2951 = !DILocation(line: 1303, column: 14, scope: !2938)
!2952 = !DILocation(line: 1303, column: 36, scope: !2938)
!2953 = !DILocation(line: 1303, column: 28, scope: !2938)
!2954 = !DILocation(line: 1303, column: 42, scope: !2938)
!2955 = !DILocation(line: 1304, column: 37, scope: !2938)
!2956 = !DILocation(line: 1304, column: 55, scope: !2938)
!2957 = !DILocation(line: 1304, column: 39, scope: !2938)
!2958 = !DILocation(line: 1304, column: 63, scope: !2938)
!2959 = !DILocation(line: 1304, column: 67, scope: !2938)
!2960 = !DILocation(line: 1304, column: 5, scope: !2938)
!2961 = !DILocation(line: 1304, column: 23, scope: !2938)
!2962 = !DILocation(line: 1304, column: 7, scope: !2938)
!2963 = !DILocation(line: 1304, column: 31, scope: !2938)
!2964 = !DILocation(line: 1304, column: 35, scope: !2938)
!2965 = !DILocation(line: 1308, column: 4, scope: !2938)
!2966 = !DILocation(line: 1299, column: 20, scope: !2932)
!2967 = !DILocation(line: 1299, column: 4, scope: !2932)
!2968 = distinct !{!2968, !2935, !2969, !914}
!2969 = !DILocation(line: 1308, column: 4, scope: !2929)
!2970 = !DILocation(line: 1309, column: 27, scope: !2907)
!2971 = !DILocation(line: 1309, column: 36, scope: !2907)
!2972 = !DILocation(line: 1309, column: 49, scope: !2907)
!2973 = !DILocation(line: 1309, column: 58, scope: !2907)
!2974 = !DILocation(line: 1309, column: 4, scope: !2907)
!2975 = !DILocation(line: 1310, column: 3, scope: !2907)
!2976 = !DILocation(line: 1312, column: 7, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2822, file: !2, line: 1312, column: 6)
!2978 = !DILocation(line: 1312, column: 6, scope: !2822)
!2979 = !DILocation(line: 1313, column: 27, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2977, file: !2, line: 1313, column: 9)
!2981 = !DILocation(line: 1313, column: 36, scope: !2980)
!2982 = !DILocation(line: 1313, column: 47, scope: !2980)
!2983 = !DILocation(line: 1313, column: 9, scope: !2980)
!2984 = !DILocation(line: 1314, column: 25, scope: !2980)
!2985 = !DILocation(line: 1313, column: 9, scope: !2977)
!2986 = !DILocation(line: 1315, column: 7, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2980, file: !2, line: 1314, column: 30)
!2988 = !DILocation(line: 1314, column: 27, scope: !2980)
!2989 = !DILocation(line: 1317, column: 6, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2822, file: !2, line: 1317, column: 6)
!2991 = !DILocation(line: 1317, column: 6, scope: !2822)
!2992 = !DILocation(line: 1317, column: 20, scope: !2990)
!2993 = !DILocation(line: 1318, column: 25, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2822, file: !2, line: 1318, column: 7)
!2995 = !DILocation(line: 1318, column: 34, scope: !2994)
!2996 = !DILocation(line: 1318, column: 40, scope: !2994)
!2997 = !DILocation(line: 1318, column: 7, scope: !2994)
!2998 = !DILocation(line: 1318, column: 67, scope: !2994)
!2999 = !DILocation(line: 1318, column: 7, scope: !2822)
!3000 = !DILocation(line: 1319, column: 4, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2994, file: !2, line: 1318, column: 72)
!3002 = !DILocation(line: 1321, column: 6, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2822, file: !2, line: 1321, column: 6)
!3004 = !DILocation(line: 1321, column: 6, scope: !2822)
!3005 = !DILocation(line: 1321, column: 20, scope: !3003)
!3006 = !DILocation(line: 1322, column: 7, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2822, file: !2, line: 1322, column: 6)
!3008 = !DILocation(line: 1322, column: 6, scope: !2822)
!3009 = !DILocation(line: 1323, column: 27, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3007, file: !2, line: 1323, column: 9)
!3011 = !DILocation(line: 1323, column: 36, scope: !3010)
!3012 = !DILocation(line: 1323, column: 47, scope: !3010)
!3013 = !DILocation(line: 1323, column: 9, scope: !3010)
!3014 = !DILocation(line: 1324, column: 25, scope: !3010)
!3015 = !DILocation(line: 1323, column: 9, scope: !3007)
!3016 = !DILocation(line: 1325, column: 7, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3010, file: !2, line: 1324, column: 30)
!3018 = !DILocation(line: 1324, column: 27, scope: !3010)
!3019 = !DILocation(line: 1327, column: 6, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2822, file: !2, line: 1327, column: 6)
!3021 = !DILocation(line: 1327, column: 6, scope: !2822)
!3022 = !DILocation(line: 1327, column: 20, scope: !3020)
!3023 = !DILocation(line: 1328, column: 2, scope: !2822)
!3024 = !DILocation(line: 1330, column: 30, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 1330, column: 7)
!3026 = distinct !DILexicalBlock(scope: !2818, file: !2, line: 1328, column: 9)
!3027 = !DILocation(line: 1330, column: 39, scope: !3025)
!3028 = !DILocation(line: 1330, column: 7, scope: !3025)
!3029 = !DILocation(line: 1330, column: 69, scope: !3025)
!3030 = !DILocation(line: 1330, column: 7, scope: !3026)
!3031 = !DILocation(line: 1331, column: 4, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3025, file: !2, line: 1330, column: 74)
!3033 = !DILocation(line: 1334, column: 6, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 1334, column: 6)
!3035 = !DILocation(line: 1334, column: 6, scope: !3026)
!3036 = !DILocalVariable(name: "sarbaddr", scope: !3037, file: !2, line: 1335, type: !187)
!3037 = distinct !DILexicalBlock(scope: !3034, file: !2, line: 1334, column: 22)
!3038 = !DILocation(line: 1335, column: 16, scope: !3037)
!3039 = !DILocation(line: 1336, column: 7, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3037, file: !2, line: 1336, column: 7)
!3041 = !DILocation(line: 1336, column: 16, scope: !3040)
!3042 = !DILocation(line: 1336, column: 20, scope: !3040)
!3043 = !DILocation(line: 1336, column: 7, scope: !3037)
!3044 = !DILocation(line: 1337, column: 14, scope: !3040)
!3045 = !DILocation(line: 1337, column: 5, scope: !3040)
!3046 = !DILocalVariable(name: "arbaddr", scope: !3037, file: !2, line: 1338, type: !209)
!3047 = !DILocation(line: 1338, column: 13, scope: !3037)
!3048 = !DILocation(line: 1339, column: 34, scope: !3037)
!3049 = !DILocation(line: 1339, column: 4, scope: !3037)
!3050 = !DILocalVariable(name: "i", scope: !3037, file: !2, line: 1340, type: !199)
!3051 = !DILocation(line: 1340, column: 8, scope: !3037)
!3052 = !DILocalVariable(name: "maxi", scope: !3037, file: !2, line: 1341, type: !199)
!3053 = !DILocation(line: 1341, column: 8, scope: !3037)
!3054 = !DILocation(line: 1341, column: 31, scope: !3037)
!3055 = !DILocation(line: 1341, column: 15, scope: !3037)
!3056 = !DILocation(line: 1341, column: 40, scope: !3037)
!3057 = !DILocation(line: 1342, column: 9, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3037, file: !2, line: 1342, column: 4)
!3059 = !DILocation(line: 1342, column: 8, scope: !3058)
!3060 = !DILocation(line: 1342, column: 12, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3058, file: !2, line: 1342, column: 4)
!3062 = !DILocation(line: 1342, column: 14, scope: !3061)
!3063 = !DILocation(line: 1342, column: 13, scope: !3061)
!3064 = !DILocation(line: 1342, column: 4, scope: !3058)
!3065 = !DILocation(line: 1343, column: 45, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3061, file: !2, line: 1342, column: 24)
!3067 = !DILocation(line: 1343, column: 29, scope: !3066)
!3068 = !DILocation(line: 1343, column: 5, scope: !3066)
!3069 = !DILocalVariable(name: "u", scope: !3066, file: !2, line: 1344, type: !197)
!3070 = !DILocation(line: 1344, column: 14, scope: !3066)
!3071 = !DILocation(line: 1344, column: 39, scope: !3066)
!3072 = !DILocation(line: 1345, column: 37, scope: !3066)
!3073 = !DILocation(line: 1345, column: 55, scope: !3066)
!3074 = !DILocation(line: 1345, column: 39, scope: !3066)
!3075 = !DILocation(line: 1345, column: 63, scope: !3066)
!3076 = !DILocation(line: 1345, column: 67, scope: !3066)
!3077 = !DILocation(line: 1345, column: 5, scope: !3066)
!3078 = !DILocation(line: 1345, column: 23, scope: !3066)
!3079 = !DILocation(line: 1345, column: 7, scope: !3066)
!3080 = !DILocation(line: 1345, column: 31, scope: !3066)
!3081 = !DILocation(line: 1345, column: 35, scope: !3066)
!3082 = !DILocation(line: 1349, column: 28, scope: !3066)
!3083 = !DILocation(line: 1349, column: 37, scope: !3066)
!3084 = !DILocation(line: 1349, column: 5, scope: !3066)
!3085 = !DILocation(line: 1350, column: 4, scope: !3066)
!3086 = !DILocation(line: 1342, column: 20, scope: !3061)
!3087 = !DILocation(line: 1342, column: 4, scope: !3061)
!3088 = distinct !{!3088, !3064, !3089, !914}
!3089 = !DILocation(line: 1350, column: 4, scope: !3058)
!3090 = !DILocation(line: 1351, column: 3, scope: !3037)
!3091 = !DILocation(line: 1353, column: 6, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 1353, column: 6)
!3093 = !DILocation(line: 1353, column: 6, scope: !3026)
!3094 = !DILocation(line: 1353, column: 20, scope: !3092)
!3095 = !DILocation(line: 1354, column: 8, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 1354, column: 7)
!3097 = !DILocation(line: 1354, column: 7, scope: !3026)
!3098 = !DILocation(line: 1355, column: 31, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3096, file: !2, line: 1355, column: 8)
!3100 = !DILocation(line: 1355, column: 40, scope: !3099)
!3101 = !DILocation(line: 1355, column: 8, scope: !3099)
!3102 = !DILocation(line: 1355, column: 80, scope: !3099)
!3103 = !DILocation(line: 1355, column: 8, scope: !3096)
!3104 = !DILocation(line: 1356, column: 5, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3099, file: !2, line: 1355, column: 85)
!3106 = !DILocation(line: 1355, column: 82, scope: !3099)
!3107 = !DILocation(line: 1358, column: 6, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 1358, column: 6)
!3109 = !DILocation(line: 1358, column: 6, scope: !3026)
!3110 = !DILocation(line: 1358, column: 20, scope: !3108)
!3111 = !DILocation(line: 1359, column: 8, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 1359, column: 6)
!3113 = !DILocation(line: 1359, column: 21, scope: !3112)
!3114 = !DILocation(line: 1359, column: 7, scope: !3112)
!3115 = !DILocation(line: 1359, column: 6, scope: !3026)
!3116 = !DILocation(line: 1360, column: 31, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !2, line: 1360, column: 8)
!3118 = distinct !DILexicalBlock(scope: !3112, file: !2, line: 1359, column: 31)
!3119 = !DILocation(line: 1360, column: 40, scope: !3117)
!3120 = !DILocation(line: 1360, column: 8, scope: !3117)
!3121 = !DILocation(line: 1360, column: 70, scope: !3117)
!3122 = !DILocation(line: 1360, column: 8, scope: !3118)
!3123 = !DILocation(line: 1361, column: 5, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3117, file: !2, line: 1360, column: 75)
!3125 = !DILocation(line: 1363, column: 7, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3118, file: !2, line: 1363, column: 7)
!3127 = !DILocation(line: 1363, column: 7, scope: !3118)
!3128 = !DILocation(line: 1363, column: 21, scope: !3126)
!3129 = !DILocation(line: 1364, column: 3, scope: !3118)
!3130 = !DILocation(line: 1365, column: 8, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 1365, column: 7)
!3132 = !DILocation(line: 1365, column: 7, scope: !3026)
!3133 = !DILocation(line: 1366, column: 31, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3131, file: !2, line: 1366, column: 8)
!3135 = !DILocation(line: 1366, column: 40, scope: !3134)
!3136 = !DILocation(line: 1366, column: 8, scope: !3134)
!3137 = !DILocation(line: 1366, column: 80, scope: !3134)
!3138 = !DILocation(line: 1366, column: 8, scope: !3131)
!3139 = !DILocation(line: 1367, column: 5, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3134, file: !2, line: 1366, column: 85)
!3141 = !DILocation(line: 1366, column: 82, scope: !3134)
!3142 = !DILocation(line: 1369, column: 6, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 1369, column: 6)
!3144 = !DILocation(line: 1369, column: 6, scope: !3026)
!3145 = !DILocation(line: 1369, column: 20, scope: !3143)
!3146 = !DILocation(line: 1372, column: 13, scope: !2565)
!3147 = !DILocation(line: 1372, column: 26, scope: !2565)
!3148 = !DILocation(line: 1372, column: 2, scope: !2565)
!3149 = !DILocation(line: 1373, column: 6, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 1373, column: 5)
!3151 = !DILocation(line: 1373, column: 5, scope: !2565)
!3152 = !DILocation(line: 1374, column: 15, scope: !3150)
!3153 = !DILocation(line: 1374, column: 33, scope: !3150)
!3154 = !DILocation(line: 1374, column: 4, scope: !3150)
!3155 = !DILocation(line: 1375, column: 13, scope: !2565)
!3156 = !DILocation(line: 1375, column: 26, scope: !2565)
!3157 = !DILocation(line: 1375, column: 2, scope: !2565)
!3158 = !DILocation(line: 1376, column: 6, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 1376, column: 5)
!3160 = !DILocation(line: 1376, column: 5, scope: !2565)
!3161 = !DILocation(line: 1377, column: 15, scope: !3159)
!3162 = !DILocation(line: 1377, column: 33, scope: !3159)
!3163 = !DILocation(line: 1377, column: 4, scope: !3159)
!3164 = !DILocation(line: 1379, column: 2, scope: !2565)
!3165 = !DILocation(line: 1380, column: 1, scope: !2565)
!3166 = distinct !DISubprogram(name: "turn_tcp_connect", scope: !2, file: !2, line: 1384, type: !3167, scopeLine: 1384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !425)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!199, !199, !486, !448}
!3169 = !DILocalVariable(name: "verbose", arg: 1, scope: !3166, file: !2, line: 1384, type: !199)
!3170 = !DILocation(line: 1384, column: 26, scope: !3166)
!3171 = !DILocalVariable(name: "clnet_info", arg: 2, scope: !3166, file: !2, line: 1384, type: !486)
!3172 = !DILocation(line: 1384, column: 53, scope: !3166)
!3173 = !DILocalVariable(name: "peer_addr", arg: 3, scope: !3166, file: !2, line: 1384, type: !448)
!3174 = !DILocation(line: 1384, column: 75, scope: !3166)
!3175 = !DILocalVariable(name: "cp_sent", scope: !3176, file: !2, line: 1387, type: !199)
!3176 = distinct !DILexicalBlock(scope: !3166, file: !2, line: 1386, column: 2)
!3177 = !DILocation(line: 1387, column: 7, scope: !3176)
!3178 = !DILocalVariable(name: "message", scope: !3176, file: !2, line: 1389, type: !524)
!3179 = !DILocation(line: 1389, column: 15, scope: !3176)
!3180 = !DILocation(line: 1391, column: 3, scope: !3176)
!3181 = !DILocation(line: 1392, column: 65, scope: !3176)
!3182 = !DILocation(line: 1392, column: 3, scope: !3176)
!3183 = !DILocation(line: 1394, column: 3, scope: !3176)
!3184 = !DILocation(line: 1396, column: 20, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3176, file: !2, line: 1396, column: 6)
!3186 = !DILocation(line: 1396, column: 6, scope: !3185)
!3187 = !DILocation(line: 1396, column: 41, scope: !3185)
!3188 = !DILocation(line: 1396, column: 6, scope: !3176)
!3189 = !DILocation(line: 1396, column: 45, scope: !3185)
!3190 = !DILocation(line: 1398, column: 41, scope: !3176)
!3191 = !DILocation(line: 1398, column: 33, scope: !3176)
!3192 = !DILocation(line: 1398, column: 64, scope: !3176)
!3193 = !DILocation(line: 1398, column: 3, scope: !3176)
!3194 = !DILocation(line: 1400, column: 3, scope: !3176)
!3195 = !DILocation(line: 1400, column: 11, scope: !3176)
!3196 = !DILocation(line: 1400, column: 10, scope: !3176)
!3197 = !DILocalVariable(name: "len", scope: !3198, file: !2, line: 1402, type: !199)
!3198 = distinct !DILexicalBlock(scope: !3176, file: !2, line: 1400, column: 20)
!3199 = !DILocation(line: 1402, column: 8, scope: !3198)
!3200 = !DILocation(line: 1402, column: 26, scope: !3198)
!3201 = !DILocation(line: 1402, column: 14, scope: !3198)
!3202 = !DILocation(line: 1404, column: 8, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3198, file: !2, line: 1404, column: 8)
!3204 = !DILocation(line: 1404, column: 12, scope: !3203)
!3205 = !DILocation(line: 1404, column: 8, scope: !3198)
!3206 = !DILocation(line: 1405, column: 9, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !2, line: 1405, column: 9)
!3208 = distinct !DILexicalBlock(scope: !3203, file: !2, line: 1404, column: 17)
!3209 = !DILocation(line: 1405, column: 9, scope: !3208)
!3210 = !DILocation(line: 1406, column: 6, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3207, file: !2, line: 1405, column: 18)
!3212 = !DILocation(line: 1407, column: 5, scope: !3211)
!3213 = !DILocation(line: 1408, column: 13, scope: !3208)
!3214 = !DILocation(line: 1409, column: 4, scope: !3208)
!3215 = !DILocation(line: 1410, column: 5, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3203, file: !2, line: 1409, column: 11)
!3217 = !DILocation(line: 1411, column: 5, scope: !3216)
!3218 = distinct !{!3218, !3194, !3219, !914}
!3219 = !DILocation(line: 1413, column: 3, scope: !3176)
!3220 = !DILocation(line: 1418, column: 2, scope: !3166)
!3221 = !DILocation(line: 1419, column: 1, scope: !3166)
!3222 = distinct !DISubprogram(name: "tcp_data_connect", scope: !2, file: !2, line: 1518, type: !3223, scopeLine: 1519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !425)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{null, !3225, !206}
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_typedef, name: "app_ur_session", file: !122, line: 122, baseType: !3227)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 97, size: 1064768, elements: !3228)
!3228 = !{!3229, !3230, !3232, !3233, !3234, !3235, !3236, !3237, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "pinfo", scope: !3227, file: !122, line: 98, baseType: !487, size: 15552)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3227, file: !122, line: 99, baseType: !3231, size: 32, offset: 15552)
!3231 = !DIDerivedType(tag: DW_TAG_typedef, name: "UR_STATE", file: !122, line: 57, baseType: !121)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3227, file: !122, line: 100, baseType: !115, size: 32, offset: 15584)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "chnum", scope: !3227, file: !122, line: 101, baseType: !228, size: 16, offset: 15616)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cycles", scope: !3227, file: !122, line: 102, baseType: !199, size: 32, offset: 15648)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "timer_cycle", scope: !3227, file: !122, line: 103, baseType: !199, size: 32, offset: 15680)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "completed", scope: !3227, file: !122, line: 104, baseType: !199, size: 32, offset: 15712)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "input_ev", scope: !3227, file: !122, line: 105, baseType: !3238, size: 64, offset: 15744)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !3240, line: 276, flags: DIFlagFwdDecl)
!3240 = !DIFile(filename: "/usr/include/event2/event.h", directory: "", checksumkind: CSK_MD5, checksum: "90db4fa73456052afa8984291985dfd5")
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "input_tcp_data_ev", scope: !3227, file: !122, line: 106, baseType: !3238, size: 64, offset: 15808)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "in_buffer", scope: !3227, file: !122, line: 107, baseType: !524, size: 524224, offset: 15872)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !3227, file: !122, line: 108, baseType: !524, size: 524224, offset: 540096)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_time", scope: !3227, file: !122, line: 109, baseType: !206, size: 32, offset: 1064320)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "finished_time", scope: !3227, file: !122, line: 110, baseType: !206, size: 32, offset: 1064352)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "tot_msgnum", scope: !3227, file: !122, line: 112, baseType: !199, size: 32, offset: 1064384)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "wmsgnum", scope: !3227, file: !122, line: 113, baseType: !199, size: 32, offset: 1064416)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "rmsgnum", scope: !3227, file: !122, line: 114, baseType: !199, size: 32, offset: 1064448)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "recvmsgnum", scope: !3227, file: !122, line: 115, baseType: !199, size: 32, offset: 1064480)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "recvtimems", scope: !3227, file: !122, line: 116, baseType: !206, size: 32, offset: 1064512)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "to_send_timems", scope: !3227, file: !122, line: 117, baseType: !206, size: 32, offset: 1064544)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "loss", scope: !3227, file: !122, line: 119, baseType: !185, size: 64, offset: 1064576)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !3227, file: !122, line: 120, baseType: !327, size: 64, offset: 1064640)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "jitter", scope: !3227, file: !122, line: 121, baseType: !327, size: 64, offset: 1064704)
!3255 = !DILocalVariable(name: "elem", arg: 1, scope: !3222, file: !2, line: 1518, type: !3225)
!3256 = !DILocation(line: 1518, column: 39, scope: !3222)
!3257 = !DILocalVariable(name: "cid", arg: 2, scope: !3222, file: !2, line: 1518, type: !206)
!3258 = !DILocation(line: 1518, column: 54, scope: !3222)
!3259 = !DILocalVariable(name: "clnet_fd", scope: !3222, file: !2, line: 1520, type: !199)
!3260 = !DILocation(line: 1520, column: 6, scope: !3222)
!3261 = !DILocalVariable(name: "connect_cycle", scope: !3222, file: !2, line: 1521, type: !199)
!3262 = !DILocation(line: 1521, column: 6, scope: !3222)
!3263 = !DILocation(line: 1521, column: 2, scope: !3222)
!3264 = !DILabel(scope: !3222, name: "again", file: !2, line: 1523)
!3265 = !DILocation(line: 1523, column: 2, scope: !3222)
!3266 = !DILocation(line: 1525, column: 20, scope: !3222)
!3267 = !DILocation(line: 1525, column: 26, scope: !3222)
!3268 = !DILocation(line: 1525, column: 32, scope: !3222)
!3269 = !DILocation(line: 1525, column: 47, scope: !3222)
!3270 = !DILocation(line: 1525, column: 13, scope: !3222)
!3271 = !DILocation(line: 1525, column: 11, scope: !3222)
!3272 = !DILocation(line: 1526, column: 6, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3222, file: !2, line: 1526, column: 6)
!3274 = !DILocation(line: 1526, column: 15, scope: !3273)
!3275 = !DILocation(line: 1526, column: 6, scope: !3222)
!3276 = !DILocation(line: 1527, column: 3, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3273, file: !2, line: 1526, column: 20)
!3278 = !DILocation(line: 1528, column: 3, scope: !3277)
!3279 = !DILocation(line: 1531, column: 26, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3222, file: !2, line: 1531, column: 6)
!3281 = !DILocation(line: 1531, column: 6, scope: !3280)
!3282 = !DILocation(line: 1531, column: 51, scope: !3280)
!3283 = !DILocation(line: 1531, column: 6, scope: !3222)
!3284 = !DILocation(line: 1532, column: 3, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3280, file: !2, line: 1531, column: 56)
!3286 = !DILocation(line: 1534, column: 2, scope: !3285)
!3287 = !DILocation(line: 1535, column: 20, scope: !3222)
!3288 = !DILocation(line: 1535, column: 2, scope: !3222)
!3289 = !DILocation(line: 1537, column: 4, scope: !3222)
!3290 = !DILocation(line: 1537, column: 10, scope: !3222)
!3291 = !DILocation(line: 1537, column: 16, scope: !3222)
!3292 = !DILocation(line: 1537, column: 2, scope: !3222)
!3293 = !DILocalVariable(name: "i", scope: !3222, file: !2, line: 1538, type: !199)
!3294 = !DILocation(line: 1538, column: 6, scope: !3222)
!3295 = !DILocation(line: 1538, column: 16, scope: !3222)
!3296 = !DILocation(line: 1538, column: 22, scope: !3222)
!3297 = !DILocation(line: 1538, column: 28, scope: !3222)
!3298 = !DILocation(line: 1538, column: 43, scope: !3222)
!3299 = !DILocation(line: 1538, column: 10, scope: !3222)
!3300 = !DILocation(line: 1539, column: 52, scope: !3222)
!3301 = !DILocation(line: 1539, column: 58, scope: !3222)
!3302 = !DILocation(line: 1539, column: 64, scope: !3222)
!3303 = !DILocation(line: 1539, column: 73, scope: !3222)
!3304 = !DILocation(line: 1539, column: 79, scope: !3222)
!3305 = !DILocation(line: 1539, column: 85, scope: !3222)
!3306 = !DILocation(line: 1539, column: 100, scope: !3222)
!3307 = !DILocation(line: 1539, column: 44, scope: !3222)
!3308 = !DILocation(line: 1539, column: 2, scope: !3222)
!3309 = !DILocation(line: 1539, column: 8, scope: !3222)
!3310 = !DILocation(line: 1539, column: 14, scope: !3222)
!3311 = !DILocation(line: 1539, column: 22, scope: !3222)
!3312 = !DILocation(line: 1540, column: 46, scope: !3222)
!3313 = !DILocation(line: 1540, column: 2, scope: !3222)
!3314 = !DILocation(line: 1540, column: 8, scope: !3222)
!3315 = !DILocation(line: 1540, column: 14, scope: !3222)
!3316 = !DILocation(line: 1540, column: 23, scope: !3222)
!3317 = !DILocation(line: 1540, column: 25, scope: !3222)
!3318 = !DILocation(line: 1541, column: 8, scope: !3222)
!3319 = !DILocation(line: 1541, column: 14, scope: !3222)
!3320 = !DILocation(line: 1541, column: 20, scope: !3222)
!3321 = !DILocation(line: 1541, column: 29, scope: !3222)
!3322 = !DILocation(line: 1541, column: 2, scope: !3222)
!3323 = !DILocation(line: 1543, column: 41, scope: !3222)
!3324 = !DILocation(line: 1543, column: 2, scope: !3222)
!3325 = !DILocation(line: 1543, column: 8, scope: !3222)
!3326 = !DILocation(line: 1543, column: 14, scope: !3222)
!3327 = !DILocation(line: 1543, column: 23, scope: !3222)
!3328 = !DILocation(line: 1543, column: 27, scope: !3222)
!3329 = !DILocation(line: 1543, column: 39, scope: !3222)
!3330 = !DILocation(line: 1544, column: 33, scope: !3222)
!3331 = !DILocation(line: 1544, column: 2, scope: !3222)
!3332 = !DILocation(line: 1544, column: 8, scope: !3222)
!3333 = !DILocation(line: 1544, column: 14, scope: !3222)
!3334 = !DILocation(line: 1544, column: 23, scope: !3222)
!3335 = !DILocation(line: 1544, column: 27, scope: !3222)
!3336 = !DILocation(line: 1544, column: 31, scope: !3222)
!3337 = !DILocation(line: 1546, column: 13, scope: !3222)
!3338 = !DILocation(line: 1546, column: 19, scope: !3222)
!3339 = !DILocation(line: 1546, column: 25, scope: !3222)
!3340 = !DILocation(line: 1546, column: 34, scope: !3222)
!3341 = !DILocation(line: 1546, column: 38, scope: !3222)
!3342 = !DILocation(line: 1546, column: 61, scope: !3222)
!3343 = !DILocation(line: 1546, column: 67, scope: !3222)
!3344 = !DILocation(line: 1546, column: 73, scope: !3222)
!3345 = !DILocation(line: 1546, column: 2, scope: !3222)
!3346 = !DILocation(line: 1548, column: 18, scope: !3222)
!3347 = !DILocation(line: 1548, column: 24, scope: !3222)
!3348 = !DILocation(line: 1548, column: 30, scope: !3222)
!3349 = !DILocation(line: 1548, column: 39, scope: !3222)
!3350 = !DILocation(line: 1548, column: 43, scope: !3222)
!3351 = !DILocation(line: 1548, column: 2, scope: !3222)
!3352 = !DILocation(line: 1550, column: 12, scope: !3222)
!3353 = !DILocation(line: 1550, column: 24, scope: !3222)
!3354 = !DILocation(line: 1550, column: 30, scope: !3222)
!3355 = !DILocation(line: 1550, column: 36, scope: !3222)
!3356 = !DILocation(line: 1550, column: 45, scope: !3222)
!3357 = !DILocation(line: 1550, column: 49, scope: !3222)
!3358 = !DILocation(line: 1550, column: 2, scope: !3222)
!3359 = !DILocation(line: 1552, column: 21, scope: !3222)
!3360 = !DILocation(line: 1552, column: 32, scope: !3222)
!3361 = !DILocation(line: 1552, column: 38, scope: !3222)
!3362 = !DILocation(line: 1552, column: 44, scope: !3222)
!3363 = !DILocation(line: 1552, column: 53, scope: !3222)
!3364 = !DILocation(line: 1552, column: 57, scope: !3222)
!3365 = !DILocation(line: 1552, column: 2, scope: !3222)
!3366 = !DILocalVariable(name: "cycle", scope: !3367, file: !2, line: 1555, type: !199)
!3367 = distinct !DILexicalBlock(scope: !3222, file: !2, line: 1554, column: 2)
!3368 = !DILocation(line: 1555, column: 8, scope: !3367)
!3369 = !DILocation(line: 1556, column: 4, scope: !3367)
!3370 = !DILocation(line: 1556, column: 15, scope: !3367)
!3371 = !DILocation(line: 1556, column: 17, scope: !3367)
!3372 = !DILocalVariable(name: "err", scope: !3373, file: !2, line: 1557, type: !199)
!3373 = distinct !DILexicalBlock(scope: !3367, file: !2, line: 1556, column: 24)
!3374 = !DILocation(line: 1557, column: 10, scope: !3373)
!3375 = !DILocation(line: 1558, column: 23, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3373, file: !2, line: 1558, column: 10)
!3377 = !DILocation(line: 1558, column: 35, scope: !3376)
!3378 = !DILocation(line: 1558, column: 41, scope: !3376)
!3379 = !DILocation(line: 1558, column: 47, scope: !3376)
!3380 = !DILocation(line: 1558, column: 10, scope: !3376)
!3381 = !DILocation(line: 1558, column: 66, scope: !3376)
!3382 = !DILocation(line: 1558, column: 10, scope: !3373)
!3383 = !DILocation(line: 1559, column: 11, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !2, line: 1559, column: 11)
!3385 = distinct !DILexicalBlock(scope: !3376, file: !2, line: 1558, column: 71)
!3386 = !DILocation(line: 1559, column: 15, scope: !3384)
!3387 = !DILocation(line: 1559, column: 11, scope: !3385)
!3388 = !DILocation(line: 1560, column: 9, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3384, file: !2, line: 1559, column: 30)
!3390 = !DILocation(line: 1561, column: 27, scope: !3389)
!3391 = !DILocation(line: 1561, column: 33, scope: !3389)
!3392 = !DILocation(line: 1561, column: 39, scope: !3389)
!3393 = !DILocation(line: 1561, column: 54, scope: !3389)
!3394 = !DILocation(line: 1561, column: 20, scope: !3389)
!3395 = !DILocation(line: 1561, column: 18, scope: !3389)
!3396 = !DILocation(line: 1562, column: 13, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3389, file: !2, line: 1562, column: 13)
!3398 = !DILocation(line: 1562, column: 22, scope: !3397)
!3399 = !DILocation(line: 1562, column: 13, scope: !3389)
!3400 = !DILocation(line: 1563, column: 10, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3397, file: !2, line: 1562, column: 27)
!3402 = !DILocation(line: 1564, column: 10, scope: !3401)
!3403 = !DILocation(line: 1566, column: 33, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3389, file: !2, line: 1566, column: 13)
!3405 = !DILocation(line: 1566, column: 13, scope: !3404)
!3406 = !DILocation(line: 1566, column: 58, scope: !3404)
!3407 = !DILocation(line: 1566, column: 13, scope: !3389)
!3408 = !DILocation(line: 1567, column: 10, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3404, file: !2, line: 1566, column: 63)
!3410 = !DILocation(line: 1569, column: 9, scope: !3409)
!3411 = !DILocation(line: 1570, column: 27, scope: !3389)
!3412 = !DILocation(line: 1570, column: 9, scope: !3389)
!3413 = !DILocation(line: 1572, column: 48, scope: !3389)
!3414 = !DILocation(line: 1572, column: 9, scope: !3389)
!3415 = !DILocation(line: 1572, column: 15, scope: !3389)
!3416 = !DILocation(line: 1572, column: 21, scope: !3389)
!3417 = !DILocation(line: 1572, column: 30, scope: !3389)
!3418 = !DILocation(line: 1572, column: 34, scope: !3389)
!3419 = !DILocation(line: 1572, column: 46, scope: !3389)
!3420 = !DILocation(line: 1574, column: 20, scope: !3389)
!3421 = !DILocation(line: 1574, column: 26, scope: !3389)
!3422 = !DILocation(line: 1574, column: 32, scope: !3389)
!3423 = !DILocation(line: 1574, column: 41, scope: !3389)
!3424 = !DILocation(line: 1574, column: 45, scope: !3389)
!3425 = !DILocation(line: 1574, column: 68, scope: !3389)
!3426 = !DILocation(line: 1574, column: 74, scope: !3389)
!3427 = !DILocation(line: 1574, column: 80, scope: !3389)
!3428 = !DILocation(line: 1574, column: 9, scope: !3389)
!3429 = !DILocation(line: 1576, column: 25, scope: !3389)
!3430 = !DILocation(line: 1576, column: 31, scope: !3389)
!3431 = !DILocation(line: 1576, column: 37, scope: !3389)
!3432 = !DILocation(line: 1576, column: 46, scope: !3389)
!3433 = !DILocation(line: 1576, column: 50, scope: !3389)
!3434 = !DILocation(line: 1576, column: 9, scope: !3389)
!3435 = !DILocation(line: 1578, column: 19, scope: !3389)
!3436 = !DILocation(line: 1578, column: 31, scope: !3389)
!3437 = !DILocation(line: 1578, column: 37, scope: !3389)
!3438 = !DILocation(line: 1578, column: 43, scope: !3389)
!3439 = !DILocation(line: 1578, column: 52, scope: !3389)
!3440 = !DILocation(line: 1578, column: 56, scope: !3389)
!3441 = !DILocation(line: 1578, column: 9, scope: !3389)
!3442 = !DILocation(line: 1580, column: 28, scope: !3389)
!3443 = !DILocation(line: 1580, column: 39, scope: !3389)
!3444 = !DILocation(line: 1580, column: 45, scope: !3389)
!3445 = !DILocation(line: 1580, column: 51, scope: !3389)
!3446 = !DILocation(line: 1580, column: 60, scope: !3389)
!3447 = !DILocation(line: 1580, column: 64, scope: !3389)
!3448 = !DILocation(line: 1580, column: 9, scope: !3389)
!3449 = !DILocation(line: 1582, column: 9, scope: !3389)
!3450 = distinct !{!3450, !3369, !3451, !914}
!3451 = !DILocation(line: 1593, column: 4, scope: !3367)
!3452 = !DILocation(line: 1585, column: 9, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3384, file: !2, line: 1584, column: 15)
!3454 = !DILocation(line: 1586, column: 9, scope: !3453)
!3455 = !DILocation(line: 1588, column: 9, scope: !3453)
!3456 = !DILocation(line: 1591, column: 8, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3376, file: !2, line: 1590, column: 13)
!3458 = !DILocation(line: 1596, column: 5, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3222, file: !2, line: 1596, column: 5)
!3460 = !DILocation(line: 1596, column: 5, scope: !3222)
!3461 = !DILocalVariable(name: "try_again", scope: !3462, file: !2, line: 1597, type: !199)
!3462 = distinct !DILexicalBlock(scope: !3459, file: !2, line: 1596, column: 17)
!3463 = !DILocation(line: 1597, column: 7, scope: !3462)
!3464 = !DILocation(line: 1598, column: 55, scope: !3462)
!3465 = !DILocation(line: 1598, column: 61, scope: !3462)
!3466 = !DILocation(line: 1598, column: 67, scope: !3462)
!3467 = !DILocation(line: 1598, column: 76, scope: !3462)
!3468 = !DILocation(line: 1598, column: 80, scope: !3462)
!3469 = !DILocation(line: 1598, column: 95, scope: !3462)
!3470 = !DILocation(line: 1598, column: 101, scope: !3462)
!3471 = !DILocation(line: 1598, column: 107, scope: !3462)
!3472 = !DILocation(line: 1598, column: 145, scope: !3462)
!3473 = !DILocation(line: 1598, column: 43, scope: !3462)
!3474 = !DILocation(line: 1598, column: 3, scope: !3462)
!3475 = !DILocation(line: 1598, column: 9, scope: !3462)
!3476 = !DILocation(line: 1598, column: 15, scope: !3462)
!3477 = !DILocation(line: 1598, column: 24, scope: !3462)
!3478 = !DILocation(line: 1598, column: 28, scope: !3462)
!3479 = !DILocation(line: 1598, column: 41, scope: !3462)
!3480 = !DILocation(line: 1599, column: 8, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3462, file: !2, line: 1599, column: 6)
!3482 = !DILocation(line: 1599, column: 14, scope: !3481)
!3483 = !DILocation(line: 1599, column: 20, scope: !3481)
!3484 = !DILocation(line: 1599, column: 29, scope: !3481)
!3485 = !DILocation(line: 1599, column: 33, scope: !3481)
!3486 = !DILocation(line: 1599, column: 7, scope: !3481)
!3487 = !DILocation(line: 1599, column: 6, scope: !3462)
!3488 = !DILocation(line: 1600, column: 7, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !2, line: 1600, column: 7)
!3490 = distinct !DILexicalBlock(scope: !3481, file: !2, line: 1599, column: 48)
!3491 = !DILocation(line: 1600, column: 7, scope: !3490)
!3492 = !DILocation(line: 1601, column: 7, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3489, file: !2, line: 1600, column: 18)
!3494 = !DILocation(line: 1601, column: 13, scope: !3493)
!3495 = !DILocation(line: 1601, column: 19, scope: !3493)
!3496 = !DILocation(line: 1601, column: 5, scope: !3493)
!3497 = !DILocation(line: 1602, column: 5, scope: !3493)
!3498 = !DILocation(line: 1604, column: 4, scope: !3490)
!3499 = !DILocation(line: 1606, column: 4, scope: !3490)
!3500 = !DILocation(line: 1608, column: 2, scope: !3462)
!3501 = !DILocation(line: 1610, column: 30, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3222, file: !2, line: 1610, column: 5)
!3503 = !DILocation(line: 1610, column: 47, scope: !3502)
!3504 = !DILocation(line: 1610, column: 53, scope: !3502)
!3505 = !DILocation(line: 1610, column: 61, scope: !3502)
!3506 = !DILocation(line: 1610, column: 67, scope: !3502)
!3507 = !DILocation(line: 1610, column: 73, scope: !3502)
!3508 = !DILocation(line: 1610, column: 82, scope: !3502)
!3509 = !DILocation(line: 1610, column: 5, scope: !3502)
!3510 = !DILocation(line: 1610, column: 87, scope: !3502)
!3511 = !DILocation(line: 1610, column: 5, scope: !3222)
!3512 = !DILocation(line: 1611, column: 3, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3502, file: !2, line: 1610, column: 91)
!3514 = !DILocation(line: 1613, column: 2, scope: !3513)
!3515 = !DILocation(line: 1615, column: 26, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3502, file: !2, line: 1613, column: 9)
!3517 = !DILocation(line: 1615, column: 3, scope: !3516)
!3518 = !DILocalVariable(name: "ev", scope: !3516, file: !2, line: 1617, type: !3238)
!3519 = !DILocation(line: 1617, column: 17, scope: !3516)
!3520 = !DILocation(line: 1617, column: 32, scope: !3516)
!3521 = !DILocation(line: 1617, column: 50, scope: !3516)
!3522 = !DILocation(line: 1619, column: 6, scope: !3516)
!3523 = !DILocation(line: 1617, column: 22, scope: !3516)
!3524 = !DILocation(line: 1621, column: 13, scope: !3516)
!3525 = !DILocation(line: 1621, column: 3, scope: !3516)
!3526 = !DILocation(line: 1623, column: 29, scope: !3516)
!3527 = !DILocation(line: 1623, column: 3, scope: !3516)
!3528 = !DILocation(line: 1623, column: 9, scope: !3516)
!3529 = !DILocation(line: 1623, column: 27, scope: !3516)
!3530 = !DILocation(line: 1625, column: 20, scope: !3516)
!3531 = !DILocation(line: 1625, column: 37, scope: !3516)
!3532 = !DILocation(line: 1625, column: 43, scope: !3516)
!3533 = !DILocation(line: 1625, column: 49, scope: !3516)
!3534 = !DILocation(line: 1625, column: 3, scope: !3516)
!3535 = !DILocation(line: 1627, column: 1, scope: !3222)
!3536 = distinct !DISubprogram(name: "tls_connect", scope: !2, file: !2, line: 85, type: !3537, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !425)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!258, !199, !448, !449, !199}
!3539 = !DILocalVariable(name: "fd", arg: 1, scope: !3536, file: !2, line: 85, type: !199)
!3540 = !DILocation(line: 85, column: 40, scope: !3536)
!3541 = !DILocalVariable(name: "remote_addr", arg: 2, scope: !3536, file: !2, line: 85, type: !448)
!3542 = !DILocation(line: 85, column: 54, scope: !3536)
!3543 = !DILocalVariable(name: "try_again", arg: 3, scope: !3536, file: !2, line: 85, type: !449)
!3544 = !DILocation(line: 85, column: 72, scope: !3536)
!3545 = !DILocalVariable(name: "connect_cycle", arg: 4, scope: !3536, file: !2, line: 85, type: !199)
!3546 = !DILocation(line: 85, column: 87, scope: !3536)
!3547 = !DILocalVariable(name: "ctxtype", scope: !3536, file: !2, line: 88, type: !199)
!3548 = !DILocation(line: 88, column: 6, scope: !3536)
!3549 = !DILocation(line: 88, column: 38, scope: !3536)
!3550 = !DILocation(line: 88, column: 48, scope: !3536)
!3551 = !DILocation(line: 88, column: 47, scope: !3536)
!3552 = !DILocation(line: 88, column: 16, scope: !3536)
!3553 = !DILocalVariable(name: "ssl", scope: !3536, file: !2, line: 90, type: !258)
!3554 = !DILocation(line: 90, column: 7, scope: !3536)
!3555 = !DILocation(line: 92, column: 29, scope: !3536)
!3556 = !DILocation(line: 92, column: 16, scope: !3536)
!3557 = !DILocation(line: 92, column: 8, scope: !3536)
!3558 = !DILocation(line: 92, column: 6, scope: !3536)
!3559 = !DILocation(line: 95, column: 22, scope: !3536)
!3560 = !DILocation(line: 95, column: 2, scope: !3536)
!3561 = !DILocation(line: 98, column: 5, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3536, file: !2, line: 98, column: 5)
!3563 = !DILocation(line: 98, column: 5, scope: !3536)
!3564 = !DILocation(line: 99, column: 14, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3562, file: !2, line: 98, column: 14)
!3566 = !DILocation(line: 99, column: 19, scope: !3565)
!3567 = !DILocation(line: 99, column: 3, scope: !3565)
!3568 = !DILocation(line: 100, column: 2, scope: !3565)
!3569 = !DILocalVariable(name: "bio", scope: !3570, file: !2, line: 107, type: !3571)
!3570 = distinct !DILexicalBlock(scope: !3562, file: !2, line: 100, column: 9)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO", file: !260, line: 86, baseType: !3573)
!3573 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_st", file: !260, line: 86, flags: DIFlagFwdDecl)
!3574 = !DILocation(line: 107, column: 8, scope: !3570)
!3575 = !DILocation(line: 107, column: 28, scope: !3570)
!3576 = !DILocation(line: 107, column: 14, scope: !3570)
!3577 = !DILocation(line: 110, column: 12, scope: !3570)
!3578 = !DILocation(line: 110, column: 51, scope: !3570)
!3579 = !DILocation(line: 110, column: 3, scope: !3570)
!3580 = !DILocation(line: 112, column: 15, scope: !3570)
!3581 = !DILocation(line: 112, column: 20, scope: !3570)
!3582 = !DILocation(line: 112, column: 25, scope: !3570)
!3583 = !DILocation(line: 112, column: 3, scope: !3570)
!3584 = !DILocalVariable(name: "timeout", scope: !3585, file: !2, line: 115, type: !3586)
!3585 = distinct !DILexicalBlock(scope: !3570, file: !2, line: 114, column: 3)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !3587, line: 8, size: 128, elements: !3588)
!3587 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!3588 = !{!3589, !3592}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3586, file: !3587, line: 14, baseType: !3590, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !194, line: 160, baseType: !3591)
!3591 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !3586, file: !3587, line: 15, baseType: !3593, size: 64, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !194, line: 162, baseType: !3591)
!3594 = !DILocation(line: 115, column: 19, scope: !3585)
!3595 = !DILocation(line: 117, column: 12, scope: !3585)
!3596 = !DILocation(line: 117, column: 19, scope: !3585)
!3597 = !DILocation(line: 118, column: 12, scope: !3585)
!3598 = !DILocation(line: 118, column: 20, scope: !3585)
!3599 = !DILocation(line: 119, column: 13, scope: !3585)
!3600 = !DILocation(line: 119, column: 4, scope: !3585)
!3601 = !DILocation(line: 122, column: 14, scope: !3570)
!3602 = !DILocation(line: 122, column: 19, scope: !3570)
!3603 = !DILocation(line: 122, column: 23, scope: !3570)
!3604 = !DILocation(line: 122, column: 39, scope: !3570)
!3605 = !DILocation(line: 122, column: 61, scope: !3570)
!3606 = !DILocation(line: 122, column: 60, scope: !3570)
!3607 = !DILocation(line: 122, column: 70, scope: !3570)
!3608 = !DILocation(line: 122, column: 3, scope: !3570)
!3609 = !DILocation(line: 126, column: 2, scope: !3536)
!3610 = !DILocation(line: 128, column: 6, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3536, file: !2, line: 128, column: 6)
!3612 = !DILocation(line: 128, column: 6, scope: !3536)
!3613 = !DILocation(line: 129, column: 3, scope: !3611)
!3614 = !DILocalVariable(name: "rc", scope: !3536, file: !2, line: 131, type: !199)
!3615 = !DILocation(line: 131, column: 6, scope: !3536)
!3616 = !DILocation(line: 133, column: 2, scope: !3536)
!3617 = !DILocation(line: 134, column: 3, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3536, file: !2, line: 133, column: 5)
!3619 = !DILocation(line: 135, column: 21, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3618, file: !2, line: 134, column: 6)
!3621 = !DILocation(line: 135, column: 9, scope: !3620)
!3622 = !DILocation(line: 135, column: 7, scope: !3620)
!3623 = !DILocation(line: 136, column: 3, scope: !3620)
!3624 = !DILocation(line: 136, column: 12, scope: !3618)
!3625 = !DILocation(line: 136, column: 15, scope: !3618)
!3626 = !DILocation(line: 136, column: 19, scope: !3618)
!3627 = !DILocation(line: 136, column: 22, scope: !3618)
!3628 = !DILocation(line: 136, column: 28, scope: !3618)
!3629 = !DILocation(line: 0, scope: !3618)
!3630 = distinct !{!3630, !3617, !3631, !914}
!3631 = !DILocation(line: 136, column: 36, scope: !3618)
!3632 = !DILocalVariable(name: "orig_errno", scope: !3618, file: !2, line: 137, type: !199)
!3633 = !DILocation(line: 137, column: 7, scope: !3618)
!3634 = !DILocation(line: 137, column: 20, scope: !3618)
!3635 = !DILocation(line: 138, column: 7, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3618, file: !2, line: 138, column: 7)
!3637 = !DILocation(line: 138, column: 10, scope: !3636)
!3638 = !DILocation(line: 138, column: 7, scope: !3618)
!3639 = !DILocation(line: 140, column: 7, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3636, file: !2, line: 138, column: 15)
!3641 = !DILocation(line: 140, column: 47, scope: !3640)
!3642 = !DILocation(line: 140, column: 27, scope: !3640)
!3643 = !DILocation(line: 139, column: 5, scope: !3640)
!3644 = !DILocation(line: 141, column: 8, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3640, file: !2, line: 141, column: 8)
!3646 = !DILocation(line: 141, column: 22, scope: !3645)
!3647 = !DILocation(line: 141, column: 50, scope: !3645)
!3648 = !DILocation(line: 141, column: 25, scope: !3645)
!3649 = !DILocation(line: 141, column: 8, scope: !3640)
!3650 = !DILocation(line: 142, column: 6, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3645, file: !2, line: 141, column: 56)
!3652 = !DILocation(line: 143, column: 28, scope: !3651)
!3653 = !DILocation(line: 143, column: 83, scope: !3651)
!3654 = !DILocation(line: 143, column: 58, scope: !3651)
!3655 = !DILocation(line: 143, column: 36, scope: !3651)
!3656 = !DILocation(line: 143, column: 6, scope: !3651)
!3657 = !DILocation(line: 145, column: 105, scope: !3651)
!3658 = !DILocation(line: 145, column: 82, scope: !3651)
!3659 = !DILocation(line: 145, column: 62, scope: !3651)
!3660 = !DILocation(line: 145, column: 6, scope: !3651)
!3661 = !DILocation(line: 146, column: 6, scope: !3651)
!3662 = !DILocation(line: 147, column: 5, scope: !3651)
!3663 = !DILocation(line: 148, column: 5, scope: !3640)
!3664 = !DILocation(line: 151, column: 19, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3636, file: !2, line: 149, column: 10)
!3666 = !DILocation(line: 151, column: 22, scope: !3665)
!3667 = !DILocation(line: 150, column: 4, scope: !3665)
!3668 = !DILocation(line: 153, column: 26, scope: !3665)
!3669 = !DILocation(line: 153, column: 31, scope: !3665)
!3670 = !DILocation(line: 153, column: 12, scope: !3665)
!3671 = !DILocation(line: 153, column: 4, scope: !3665)
!3672 = !DILocation(line: 156, column: 9, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !2, line: 156, column: 8)
!3674 = distinct !DILexicalBlock(scope: !3665, file: !2, line: 153, column: 36)
!3675 = !DILocation(line: 156, column: 8, scope: !3674)
!3676 = !DILocation(line: 156, column: 14, scope: !3673)
!3677 = !DILocation(line: 157, column: 5, scope: !3674)
!3678 = !DILocalVariable(name: "buf", scope: !3679, file: !2, line: 159, type: !687)
!3679 = distinct !DILexicalBlock(scope: !3674, file: !2, line: 158, column: 13)
!3680 = !DILocation(line: 159, column: 10, scope: !3679)
!3681 = !DILocation(line: 160, column: 70, scope: !3679)
!3682 = !DILocation(line: 161, column: 14, scope: !3679)
!3683 = !DILocation(line: 161, column: 9, scope: !3679)
!3684 = !DILocation(line: 161, column: 48, scope: !3679)
!3685 = !DILocation(line: 161, column: 65, scope: !3679)
!3686 = !DILocation(line: 161, column: 31, scope: !3679)
!3687 = !DILocation(line: 161, column: 90, scope: !3679)
!3688 = !DILocation(line: 161, column: 95, scope: !3679)
!3689 = !DILocation(line: 161, column: 76, scope: !3679)
!3690 = !DILocation(line: 160, column: 5, scope: !3679)
!3691 = !DILocation(line: 162, column: 8, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3679, file: !2, line: 162, column: 8)
!3693 = !DILocation(line: 162, column: 21, scope: !3692)
!3694 = !DILocation(line: 162, column: 8, scope: !3679)
!3695 = !DILocation(line: 163, column: 9, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !2, line: 163, column: 9)
!3697 = distinct !DILexicalBlock(scope: !3692, file: !2, line: 162, column: 38)
!3698 = !DILocation(line: 163, column: 9, scope: !3697)
!3699 = !DILocation(line: 164, column: 16, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3696, file: !2, line: 163, column: 20)
!3701 = !DILocation(line: 164, column: 7, scope: !3700)
!3702 = !DILocation(line: 165, column: 8, scope: !3700)
!3703 = !DILocation(line: 165, column: 18, scope: !3700)
!3704 = !DILocation(line: 166, column: 7, scope: !3700)
!3705 = !DILocation(line: 168, column: 5, scope: !3697)
!3706 = !DILocation(line: 169, column: 5, scope: !3679)
!3707 = !DILocation(line: 173, column: 2, scope: !3618)
!3708 = distinct !{!3708, !3616, !3709}
!3709 = !DILocation(line: 173, column: 12, scope: !3536)
!3710 = !DILocation(line: 175, column: 6, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3536, file: !2, line: 175, column: 6)
!3712 = !DILocation(line: 175, column: 20, scope: !3711)
!3713 = !DILocation(line: 175, column: 48, scope: !3711)
!3714 = !DILocation(line: 175, column: 23, scope: !3711)
!3715 = !DILocation(line: 175, column: 6, scope: !3536)
!3716 = !DILocation(line: 176, column: 6, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !2, line: 176, column: 6)
!3718 = distinct !DILexicalBlock(scope: !3711, file: !2, line: 175, column: 54)
!3719 = !DILocation(line: 176, column: 6, scope: !3718)
!3720 = !DILocation(line: 177, column: 4, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3717, file: !2, line: 176, column: 15)
!3722 = !DILocation(line: 179, column: 3, scope: !3721)
!3723 = !DILocation(line: 180, column: 4, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3717, file: !2, line: 179, column: 10)
!3725 = !DILocation(line: 183, column: 25, scope: !3718)
!3726 = !DILocation(line: 184, column: 30, scope: !3718)
!3727 = !DILocation(line: 184, column: 5, scope: !3718)
!3728 = !DILocation(line: 183, column: 33, scope: !3718)
!3729 = !DILocation(line: 183, column: 3, scope: !3718)
!3730 = !DILocation(line: 186, column: 48, scope: !3718)
!3731 = !DILocation(line: 186, column: 25, scope: !3718)
!3732 = !DILocation(line: 186, column: 5, scope: !3718)
!3733 = !DILocation(line: 185, column: 3, scope: !3718)
!3734 = !DILocation(line: 187, column: 3, scope: !3718)
!3735 = !DILocation(line: 189, column: 2, scope: !3718)
!3736 = !DILocation(line: 191, column: 9, scope: !3536)
!3737 = !DILocation(line: 191, column: 2, scope: !3536)
!3738 = !DILocation(line: 192, column: 1, scope: !3536)
!3739 = distinct !DISubprogram(name: "turn_tcp_connection_bind", scope: !2, file: !2, line: 1421, type: !3740, scopeLine: 1421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !425)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!199, !199, !486, !201, !199}
!3742 = !DILocalVariable(name: "verbose", arg: 1, scope: !3739, file: !2, line: 1421, type: !199)
!3743 = !DILocation(line: 1421, column: 41, scope: !3739)
!3744 = !DILocalVariable(name: "clnet_info", arg: 2, scope: !3739, file: !2, line: 1421, type: !486)
!3745 = !DILocation(line: 1421, column: 68, scope: !3739)
!3746 = !DILocalVariable(name: "atc", arg: 3, scope: !3739, file: !2, line: 1421, type: !201)
!3747 = !DILocation(line: 1421, column: 99, scope: !3739)
!3748 = !DILocalVariable(name: "errorOK", arg: 4, scope: !3739, file: !2, line: 1421, type: !199)
!3749 = !DILocation(line: 1421, column: 108, scope: !3739)
!3750 = !DILocalVariable(name: "request_message", scope: !3739, file: !2, line: 1423, type: !524)
!3751 = !DILocation(line: 1423, column: 14, scope: !3739)
!3752 = !DILocalVariable(name: "response_message", scope: !3739, file: !2, line: 1423, type: !524)
!3753 = !DILocation(line: 1423, column: 31, scope: !3739)
!3754 = !DILocation(line: 1423, column: 2, scope: !3739)
!3755 = !DILabel(scope: !3739, name: "beg_cb", file: !2, line: 1425)
!3756 = !DILocation(line: 1425, column: 2, scope: !3739)
!3757 = !DILocalVariable(name: "cb_sent", scope: !3758, file: !2, line: 1428, type: !199)
!3758 = distinct !DILexicalBlock(scope: !3739, file: !2, line: 1427, column: 2)
!3759 = !DILocation(line: 1428, column: 7, scope: !3758)
!3760 = !DILocalVariable(name: "cid", scope: !3758, file: !2, line: 1430, type: !206)
!3761 = !DILocation(line: 1430, column: 12, scope: !3758)
!3762 = !DILocation(line: 1430, column: 18, scope: !3758)
!3763 = !DILocation(line: 1430, column: 23, scope: !3758)
!3764 = !DILocation(line: 1432, column: 3, scope: !3758)
!3765 = !DILocation(line: 1434, column: 3, scope: !3758)
!3766 = !DILocation(line: 1436, column: 3, scope: !3758)
!3767 = !DILocation(line: 1438, column: 20, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3758, file: !2, line: 1438, column: 6)
!3769 = !DILocation(line: 1438, column: 6, scope: !3768)
!3770 = !DILocation(line: 1438, column: 49, scope: !3768)
!3771 = !DILocation(line: 1438, column: 6, scope: !3758)
!3772 = !DILocation(line: 1438, column: 53, scope: !3768)
!3773 = !DILocation(line: 1440, column: 49, scope: !3758)
!3774 = !DILocation(line: 1440, column: 33, scope: !3758)
!3775 = !DILocation(line: 1440, column: 80, scope: !3758)
!3776 = !DILocation(line: 1440, column: 3, scope: !3758)
!3777 = !DILocation(line: 1442, column: 3, scope: !3758)
!3778 = !DILocation(line: 1442, column: 11, scope: !3758)
!3779 = !DILocation(line: 1442, column: 10, scope: !3758)
!3780 = !DILocalVariable(name: "len", scope: !3781, file: !2, line: 1444, type: !199)
!3781 = distinct !DILexicalBlock(scope: !3758, file: !2, line: 1442, column: 20)
!3782 = !DILocation(line: 1444, column: 8, scope: !3781)
!3783 = !DILocation(line: 1444, column: 26, scope: !3781)
!3784 = !DILocation(line: 1444, column: 59, scope: !3781)
!3785 = !DILocation(line: 1444, column: 14, scope: !3781)
!3786 = !DILocation(line: 1446, column: 8, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3781, file: !2, line: 1446, column: 8)
!3788 = !DILocation(line: 1446, column: 12, scope: !3787)
!3789 = !DILocation(line: 1446, column: 8, scope: !3781)
!3790 = !DILocation(line: 1447, column: 9, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !2, line: 1447, column: 9)
!3792 = distinct !DILexicalBlock(scope: !3787, file: !2, line: 1446, column: 17)
!3793 = !DILocation(line: 1447, column: 9, scope: !3792)
!3794 = !DILocation(line: 1448, column: 6, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3791, file: !2, line: 1447, column: 18)
!3796 = !DILocation(line: 1449, column: 5, scope: !3795)
!3797 = !DILocation(line: 1450, column: 13, scope: !3792)
!3798 = !DILocation(line: 1451, column: 4, scope: !3792)
!3799 = !DILocation(line: 1452, column: 8, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !2, line: 1452, column: 8)
!3801 = distinct !DILexicalBlock(scope: !3787, file: !2, line: 1451, column: 11)
!3802 = !DILocation(line: 1452, column: 8, scope: !3801)
!3803 = !DILocation(line: 1453, column: 6, scope: !3800)
!3804 = !DILocation(line: 1454, column: 5, scope: !3801)
!3805 = !DILocation(line: 1455, column: 5, scope: !3801)
!3806 = distinct !{!3806, !3777, !3807, !914}
!3807 = !DILocation(line: 1457, column: 3, scope: !3758)
!3808 = !DILocation(line: 1462, column: 5, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3739, file: !2, line: 1462, column: 5)
!3810 = !DILocation(line: 1462, column: 5, scope: !3739)
!3811 = !DILocation(line: 1462, column: 23, scope: !3809)
!3812 = !DILocalVariable(name: "cb_received", scope: !3813, file: !2, line: 1467, type: !199)
!3813 = distinct !DILexicalBlock(scope: !3739, file: !2, line: 1466, column: 2)
!3814 = !DILocation(line: 1467, column: 7, scope: !3813)
!3815 = !DILocation(line: 1468, column: 3, scope: !3813)
!3816 = !DILocation(line: 1468, column: 11, scope: !3813)
!3817 = !DILocation(line: 1468, column: 10, scope: !3813)
!3818 = !DILocalVariable(name: "len", scope: !3819, file: !2, line: 1470, type: !199)
!3819 = distinct !DILexicalBlock(scope: !3813, file: !2, line: 1468, column: 24)
!3820 = !DILocation(line: 1470, column: 8, scope: !3819)
!3821 = !DILocation(line: 1470, column: 26, scope: !3819)
!3822 = !DILocation(line: 1470, column: 63, scope: !3819)
!3823 = !DILocation(line: 1470, column: 14, scope: !3819)
!3824 = !DILocation(line: 1471, column: 8, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3819, file: !2, line: 1471, column: 8)
!3826 = !DILocation(line: 1471, column: 12, scope: !3825)
!3827 = !DILocation(line: 1471, column: 8, scope: !3819)
!3828 = !DILocation(line: 1472, column: 9, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3830, file: !2, line: 1472, column: 9)
!3830 = distinct !DILexicalBlock(scope: !3825, file: !2, line: 1471, column: 17)
!3831 = !DILocation(line: 1472, column: 9, scope: !3830)
!3832 = !DILocation(line: 1473, column: 6, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3829, file: !2, line: 1472, column: 18)
!3834 = !DILocation(line: 1475, column: 5, scope: !3833)
!3835 = !DILocalVariable(name: "err_code", scope: !3830, file: !2, line: 1476, type: !199)
!3836 = !DILocation(line: 1476, column: 9, scope: !3830)
!3837 = !DILocalVariable(name: "err_msg", scope: !3830, file: !2, line: 1477, type: !1646)
!3838 = !DILocation(line: 1477, column: 13, scope: !3830)
!3839 = !DILocation(line: 1478, column: 9, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3830, file: !2, line: 1478, column: 9)
!3841 = !DILocation(line: 1478, column: 9, scope: !3830)
!3842 = !DILocation(line: 1480, column: 9, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !2, line: 1480, column: 9)
!3844 = distinct !DILexicalBlock(scope: !3840, file: !2, line: 1478, column: 54)
!3845 = !DILocation(line: 1480, column: 21, scope: !3843)
!3846 = !DILocation(line: 1480, column: 9, scope: !3844)
!3847 = !DILocation(line: 1481, column: 26, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3849, file: !2, line: 1481, column: 10)
!3849 = distinct !DILexicalBlock(scope: !3843, file: !2, line: 1480, column: 31)
!3850 = !DILocation(line: 1481, column: 10, scope: !3848)
!3851 = !DILocation(line: 1481, column: 56, scope: !3848)
!3852 = !DILocation(line: 1481, column: 10, scope: !3849)
!3853 = !DILocation(line: 1482, column: 8, scope: !3848)
!3854 = !DILocation(line: 1483, column: 6, scope: !3849)
!3855 = !DILocation(line: 1485, column: 9, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3844, file: !2, line: 1485, column: 9)
!3857 = !DILocation(line: 1485, column: 43, scope: !3856)
!3858 = !DILocation(line: 1485, column: 9, scope: !3844)
!3859 = !DILocation(line: 1486, column: 7, scope: !3856)
!3860 = distinct !{!3860, !3815, !3861, !914}
!3861 = !DILocation(line: 1512, column: 3, scope: !3813)
!3862 = !DILocation(line: 1487, column: 18, scope: !3844)
!3863 = !DILocation(line: 1488, column: 10, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3844, file: !2, line: 1488, column: 10)
!3865 = !DILocation(line: 1488, column: 10, scope: !3844)
!3866 = !DILocation(line: 1489, column: 7, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3864, file: !2, line: 1488, column: 19)
!3868 = !DILocation(line: 1490, column: 6, scope: !3867)
!3869 = !DILocation(line: 1491, column: 6, scope: !3844)
!3870 = !DILocation(line: 1491, column: 11, scope: !3844)
!3871 = !DILocation(line: 1491, column: 26, scope: !3844)
!3872 = !DILocation(line: 1492, column: 5, scope: !3844)
!3873 = !DILocation(line: 1492, column: 64, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3840, file: !2, line: 1492, column: 16)
!3875 = !DILocation(line: 1492, column: 47, scope: !3874)
!3876 = !DILocation(line: 1492, column: 94, scope: !3874)
!3877 = !DILocation(line: 1493, column: 21, scope: !3874)
!3878 = !DILocation(line: 1494, column: 11, scope: !3874)
!3879 = !DILocation(line: 1494, column: 23, scope: !3874)
!3880 = !DILocation(line: 1494, column: 29, scope: !3874)
!3881 = !DILocation(line: 1494, column: 41, scope: !3874)
!3882 = !DILocation(line: 1495, column: 11, scope: !3874)
!3883 = !DILocation(line: 1495, column: 23, scope: !3874)
!3884 = !DILocation(line: 1495, column: 38, scope: !3874)
!3885 = !DILocation(line: 1495, column: 50, scope: !3874)
!3886 = !DILocation(line: 1492, column: 16, scope: !3874)
!3887 = !DILocation(line: 1492, column: 16, scope: !3840)
!3888 = !DILocation(line: 1496, column: 6, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3874, file: !2, line: 1495, column: 59)
!3890 = !DILocation(line: 1497, column: 68, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3874, file: !2, line: 1497, column: 16)
!3892 = !DILocation(line: 1497, column: 16, scope: !3891)
!3893 = !DILocation(line: 1497, column: 16, scope: !3874)
!3894 = !DILocation(line: 1498, column: 18, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3891, file: !2, line: 1497, column: 94)
!3896 = !DILocation(line: 1500, column: 14, scope: !3895)
!3897 = !DILocation(line: 1500, column: 30, scope: !3895)
!3898 = !DILocation(line: 1499, column: 6, scope: !3895)
!3899 = !DILocation(line: 1501, column: 6, scope: !3895)
!3900 = !DILocation(line: 1503, column: 6, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3891, file: !2, line: 1502, column: 12)
!3902 = !DILocation(line: 1506, column: 4, scope: !3830)
!3903 = !DILocation(line: 1507, column: 8, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !2, line: 1507, column: 8)
!3905 = distinct !DILexicalBlock(scope: !3825, file: !2, line: 1506, column: 11)
!3906 = !DILocation(line: 1507, column: 8, scope: !3905)
!3907 = !DILocation(line: 1508, column: 6, scope: !3904)
!3908 = !DILocation(line: 1509, column: 5, scope: !3905)
!3909 = !DILocation(line: 1510, column: 5, scope: !3905)
!3910 = !DILocation(line: 1515, column: 2, scope: !3739)
!3911 = !DILocation(line: 1516, column: 1, scope: !3739)
!3912 = distinct !DISubprogram(name: "_ioa_ntoh64", scope: !3913, file: !3913, line: 72, type: !3914, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !110, retainedNodes: !425)
!3913 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!327, !327}
!3916 = !DILocalVariable(name: "v", arg: 1, scope: !3912, file: !3913, line: 72, type: !327)
!3917 = !DILocation(line: 72, column: 45, scope: !3912)
!3918 = !DILocalVariable(name: "src", scope: !3912, file: !3913, line: 75, type: !197)
!3919 = !DILocation(line: 75, column: 11, scope: !3912)
!3920 = !DILocalVariable(name: "dst", scope: !3912, file: !3913, line: 76, type: !197)
!3921 = !DILocation(line: 76, column: 11, scope: !3912)
!3922 = !DILocation(line: 76, column: 17, scope: !3912)
!3923 = !DILocation(line: 76, column: 21, scope: !3912)
!3924 = !DILocation(line: 77, column: 2, scope: !3912)
!3925 = !DILocation(line: 77, column: 9, scope: !3912)
!3926 = !DILocation(line: 77, column: 15, scope: !3912)
!3927 = !DILocation(line: 77, column: 13, scope: !3912)
!3928 = !DILocalVariable(name: "vdst", scope: !3929, file: !3913, line: 78, type: !191)
!3929 = distinct !DILexicalBlock(scope: !3912, file: !3913, line: 77, column: 20)
!3930 = !DILocation(line: 78, column: 11, scope: !3929)
!3931 = !DILocation(line: 78, column: 19, scope: !3929)
!3932 = !DILocation(line: 78, column: 18, scope: !3929)
!3933 = !DILocation(line: 79, column: 15, scope: !3929)
!3934 = !DILocation(line: 79, column: 14, scope: !3929)
!3935 = !DILocation(line: 79, column: 8, scope: !3929)
!3936 = !DILocation(line: 79, column: 12, scope: !3929)
!3937 = !DILocation(line: 80, column: 14, scope: !3929)
!3938 = !DILocation(line: 80, column: 8, scope: !3929)
!3939 = !DILocation(line: 80, column: 12, scope: !3929)
!3940 = distinct !{!3940, !3924, !3941, !914}
!3941 = !DILocation(line: 81, column: 2, scope: !3912)
!3942 = !DILocation(line: 87, column: 9, scope: !3912)
!3943 = !DILocation(line: 87, column: 2, scope: !3912)
