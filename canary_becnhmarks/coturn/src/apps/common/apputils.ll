; ModuleID = '/home/raj/coturn/src/apps/common/apputils.c'
source_filename = "/home/raj/coturn/src/apps/common/apputils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { %union.anon, %union.anon.0 }
%union.anon = type { [16 x i8] }
%union.anon.0 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.1 }
%union.anon.1 = type { [4 x i32] }
%struct.rlimit = type { i64, i64 }
%struct.timespec = type { i64, i64 }
%struct._oauth_key_data_raw = type { [129 x i8], [257 x i8], i64, i32, [65 x i8], [128 x i8] }
%struct._oauth_key_data = type { [129 x i8], [257 x i8], i64, i32, i32, [65 x i8] }

@IS_TURN_SERVER = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [11 x i8] c"O_NONBLOCK\00", align 1, !dbg !157
@read_spare_buffer.buffer = internal global [65536 x i8] zeroinitializer, align 16, !dbg !163
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot set socket rcv size\00", align 1, !dbg !170
@.str.2 = private unnamed_addr constant [38 x i8] c"Cannot set rcv sock size %d on fd %d\0A\00", align 1, !dbg !175
@.str.3 = private unnamed_addr constant [27 x i8] c"Cannot set socket snd size\00", align 1, !dbg !180
@.str.4 = private unnamed_addr constant [38 x i8] c"Cannot set snd sock size %d on fd %d\0A\00", align 1, !dbg !182
@.str.5 = private unnamed_addr constant [13 x i8] c"SO_REUSEADDR\00", align 1, !dbg !184
@.str.6 = private unnamed_addr constant [64 x i8] c"You must obtain superuser privileges to bind a socket to device\00", align 1, !dbg !189
@.str.7 = private unnamed_addr constant [29 x i8] c"Cannot bind socket to device\00", align 1, !dbg !194
@.str.8 = private unnamed_addr constant [8 x i8] c"Connect\00", align 1, !dbg !199
@.str.9 = private unnamed_addr constant [5 x i8] c"bind\00", align 1, !dbg !204
@.str.10 = private unnamed_addr constant [40 x i8] c"Trying to bind fd %d to <%s>: errno=%d\0A\00", align 1, !dbg !209
@.str.11 = private unnamed_addr constant [23 x i8] c"get HOPLIMIT on socket\00", align 1, !dbg !214
@.str.12 = private unnamed_addr constant [18 x i8] c"get TTL on socket\00", align 1, !dbg !219
@.str.13 = private unnamed_addr constant [21 x i8] c"get TCLASS on socket\00", align 1, !dbg !224
@.str.14 = private unnamed_addr constant [18 x i8] c"get TOS on socket\00", align 1, !dbg !229
@.str.15 = private unnamed_addr constant [23 x i8] c"set HOPLIMIT on socket\00", align 1, !dbg !231
@.str.16 = private unnamed_addr constant [18 x i8] c"set TTL on socket\00", align 1, !dbg !233
@.str.17 = private unnamed_addr constant [21 x i8] c"set TCLASS on socket\00", align 1, !dbg !235
@.str.18 = private unnamed_addr constant [18 x i8] c"set TOS on socket\00", align 1, !dbg !237
@.str.19 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1, !dbg !239
@.str.20 = private unnamed_addr constant [5 x i8] c"SCTP\00", align 1, !dbg !244
@.str.21 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1, !dbg !246
@.str.22 = private unnamed_addr constant [8 x i8] c"TLS/TCP\00", align 1, !dbg !248
@.str.23 = private unnamed_addr constant [9 x i8] c"TLS/SCTP\00", align 1, !dbg !250
@.str.24 = private unnamed_addr constant [5 x i8] c"DTLS\00", align 1, !dbg !255
@.str.25 = private unnamed_addr constant [10 x i8] c"TLS/TCP ?\00", align 1, !dbg !257
@.str.26 = private unnamed_addr constant [11 x i8] c"TLS/SCTP ?\00", align 1, !dbg !262
@.str.27 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1, !dbg !264
@.str.28 = private unnamed_addr constant [7 x i8] c"set DF\00", align 1, !dbg !266
@.str.29 = private unnamed_addr constant [24 x i8] c"%s: set sockopt failed\0A\00", align 1, !dbg !271
@__FUNCTION__.set_socket_df = private unnamed_addr constant [14 x i8] c"set_socket_df\00", align 1, !dbg !276
@.str.30 = private unnamed_addr constant [19 x i8] c"1. mtu to use: %d\0A\00", align 1, !dbg !279
@.str.31 = private unnamed_addr constant [19 x i8] c"3. mtu to use: %d\0A\00", align 1, !dbg !284
@.str.32 = private unnamed_addr constant [16 x i8] c"4. new mtu: %d\0A\00", align 1, !dbg !286
@.str.33 = private unnamed_addr constant [14 x i8] c"%s: final=%d\0A\00", align 1, !dbg !291
@__FUNCTION__.get_socket_mtu = private unnamed_addr constant [15 x i8] c"get_socket_mtu\00", align 1, !dbg !293
@.str.34 = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1, !dbg !298
@.str.35 = private unnamed_addr constant [32 x i8] c"Unexpected error! (errno = %d)\0A\00", align 1, !dbg !300
@.str.36 = private unnamed_addr constant [2 x i8] c"_\00", align 1, !dbg !305
@.str.37 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !310
@c_execdir = internal global ptr null, align 8, !dbg !338
@.str.38 = private unnamed_addr constant [21 x i8] c"%s%s file found: %s\0A\00", align 1, !dbg !312
@.str.39 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !314
@config_file_search_dirs = internal global [19 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr null], align 16, !dbg !389
@.str.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !316
@.str.41 = private unnamed_addr constant [7 x i8] c"Config\00", align 1, !dbg !321
@.str.42 = private unnamed_addr constant [3 x i8] c"//\00", align 1, !dbg !323
@.str.43 = private unnamed_addr constant [5 x i8] c"etc/\00", align 1, !dbg !328
@.str.44 = private unnamed_addr constant [27 x i8] c"Cannot set SIGPIPE handler\00", align 1, !dbg !330
@.str.45 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !332
@.str.46 = private unnamed_addr constant [24 x i8] c"Cannot get system limit\00", align 1, !dbg !334
@encoding_table = internal global [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 16, !dbg !392
@mod_table = internal global [3 x i64] [i64 0, i64 2, i64 1], align 16, !dbg !394
@decoding_table = internal global ptr null, align 8, !dbg !399
@.str.47 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1, !dbg !336
@.str.48 = private unnamed_addr constant [3 x i8] c"./\00", align 1, !dbg !340
@.str.49 = private unnamed_addr constant [14 x i8] c"./turnserver/\00", align 1, !dbg !342
@.str.50 = private unnamed_addr constant [10 x i8] c"./coturn/\00", align 1, !dbg !344
@.str.51 = private unnamed_addr constant [7 x i8] c"./etc/\00", align 1, !dbg !346
@.str.52 = private unnamed_addr constant [18 x i8] c"./etc/turnserver/\00", align 1, !dbg !348
@.str.53 = private unnamed_addr constant [14 x i8] c"./etc/coturn/\00", align 1, !dbg !350
@.str.54 = private unnamed_addr constant [8 x i8] c"../etc/\00", align 1, !dbg !352
@.str.55 = private unnamed_addr constant [19 x i8] c"../etc/turnserver/\00", align 1, !dbg !354
@.str.56 = private unnamed_addr constant [15 x i8] c"../etc/coturn/\00", align 1, !dbg !356
@.str.57 = private unnamed_addr constant [6 x i8] c"/etc/\00", align 1, !dbg !359
@.str.58 = private unnamed_addr constant [17 x i8] c"/etc/turnserver/\00", align 1, !dbg !364
@.str.59 = private unnamed_addr constant [13 x i8] c"/etc/coturn/\00", align 1, !dbg !369
@.str.60 = private unnamed_addr constant [16 x i8] c"/usr/local/etc/\00", align 1, !dbg !371
@.str.61 = private unnamed_addr constant [27 x i8] c"/usr/local/etc/turnserver/\00", align 1, !dbg !373
@.str.62 = private unnamed_addr constant [23 x i8] c"/usr/local/etc/coturn/\00", align 1, !dbg !375
@.str.63 = private unnamed_addr constant [20 x i8] c"INSTALL_PREFIX/etc/\00", align 1, !dbg !377
@.str.64 = private unnamed_addr constant [31 x i8] c"INSTALL_PREFIX/etc/turnserver/\00", align 1, !dbg !382
@.str.65 = private unnamed_addr constant [27 x i8] c"INSTALL_PREFIX/etc/coturn/\00", align 1, !dbg !387

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_set_nonblocking(i32 noundef %0) #0 !dbg !409 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !412, metadata !DIExpression()), !dbg !413
  %4 = load i32, ptr %3, align 4, !dbg !414
  %5 = call i32 (i32, i32, ...) @fcntl(i32 noundef %4, i32 noundef 4, i32 noundef 2048), !dbg !416
  %6 = icmp eq i32 %5, -1, !dbg !417
  br i1 %6, label %7, label %8, !dbg !418

7:                                                ; preds = %1
  call void @perror(ptr noundef @.str), !dbg !419
  store i32 -1, ptr %2, align 4, !dbg !421
  br label %9, !dbg !421

8:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !422
  br label %9, !dbg !422

9:                                                ; preds = %8, %7
  %10 = load i32, ptr %2, align 4, !dbg !423
  ret i32 %10, !dbg !423
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #2

declare void @perror(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_spare_buffer(i32 noundef %0) #0 !dbg !165 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !424, metadata !DIExpression()), !dbg !425
  %3 = load i32, ptr %2, align 4, !dbg !426
  %4 = icmp sge i32 %3, 0, !dbg !428
  br i1 %4, label %5, label %8, !dbg !429

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !dbg !430
  %7 = call i64 @recv(i32 noundef %6, ptr noundef @read_spare_buffer.buffer, i64 noundef 65536, i32 noundef 64), !dbg !432
  br label %8, !dbg !433

8:                                                ; preds = %5, %1
  ret void, !dbg !434
}

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_sock_buf_size(i32 noundef %0, i32 noundef %1) #0 !dbg !435 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !438, metadata !DIExpression()), !dbg !439
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !440, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.declare(metadata ptr %5, metadata !442, metadata !DIExpression()), !dbg !443
  %6 = load i32, ptr %4, align 4, !dbg !444
  store i32 %6, ptr %5, align 4, !dbg !445
  br label %7, !dbg !446

7:                                                ; preds = %18, %2
  %8 = load i32, ptr %5, align 4, !dbg !447
  %9 = icmp sgt i32 %8, 0, !dbg !448
  br i1 %9, label %10, label %19, !dbg !446

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 4, !dbg !449
  %12 = call i32 @setsockopt(i32 noundef %11, i32 noundef 1, i32 noundef 8, ptr noundef %5, i32 noundef 4) #8, !dbg !452
  %13 = icmp slt i32 %12, 0, !dbg !453
  br i1 %13, label %14, label %17, !dbg !454

14:                                               ; preds = %10
  %15 = load i32, ptr %5, align 4, !dbg !455
  %16 = sdiv i32 %15, 2, !dbg !457
  store i32 %16, ptr %5, align 4, !dbg !458
  br label %18, !dbg !459

17:                                               ; preds = %10
  br label %19, !dbg !460

18:                                               ; preds = %14
  br label %7, !dbg !446, !llvm.loop !462

19:                                               ; preds = %17, %7
  %20 = load i32, ptr %5, align 4, !dbg !465
  %21 = icmp slt i32 %20, 1, !dbg !467
  br i1 %21, label %22, label %25, !dbg !468

22:                                               ; preds = %19
  call void @perror(ptr noundef @.str.1), !dbg !469
  %23 = load i32, ptr %4, align 4, !dbg !471
  %24 = load i32, ptr %3, align 4, !dbg !472
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.2, i32 noundef %23, i32 noundef %24), !dbg !473
  br label %25, !dbg !474

25:                                               ; preds = %22, %19
  %26 = load i32, ptr %4, align 4, !dbg !475
  store i32 %26, ptr %5, align 4, !dbg !476
  br label %27, !dbg !477

27:                                               ; preds = %38, %25
  %28 = load i32, ptr %5, align 4, !dbg !478
  %29 = icmp sgt i32 %28, 0, !dbg !479
  br i1 %29, label %30, label %39, !dbg !477

30:                                               ; preds = %27
  %31 = load i32, ptr %3, align 4, !dbg !480
  %32 = call i32 @setsockopt(i32 noundef %31, i32 noundef 1, i32 noundef 7, ptr noundef %5, i32 noundef 4) #8, !dbg !483
  %33 = icmp slt i32 %32, 0, !dbg !484
  br i1 %33, label %34, label %37, !dbg !485

34:                                               ; preds = %30
  %35 = load i32, ptr %5, align 4, !dbg !486
  %36 = sdiv i32 %35, 2, !dbg !488
  store i32 %36, ptr %5, align 4, !dbg !489
  br label %38, !dbg !490

37:                                               ; preds = %30
  br label %39, !dbg !491

38:                                               ; preds = %34
  br label %27, !dbg !477, !llvm.loop !493

39:                                               ; preds = %37, %27
  %40 = load i32, ptr %5, align 4, !dbg !495
  %41 = icmp slt i32 %40, 1, !dbg !497
  br i1 %41, label %42, label %45, !dbg !498

42:                                               ; preds = %39
  call void @perror(ptr noundef @.str.3), !dbg !499
  %43 = load i32, ptr %4, align 4, !dbg !501
  %44 = load i32, ptr %3, align 4, !dbg !502
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.4, i32 noundef %43, i32 noundef %44), !dbg !503
  br label %45, !dbg !504

45:                                               ; preds = %42, %39
  ret i32 0, !dbg !505
}

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #3

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_tcp_set_keepalive(i32 noundef %0, i32 noundef %1) #0 !dbg !506 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !510, metadata !DIExpression()), !dbg !511
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !512, metadata !DIExpression()), !dbg !513
  br label %6, !dbg !514

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 4, !dbg !515
  store i32 %7, ptr %4, align 4, !dbg !515
  br label %8, !dbg !515

8:                                                ; preds = %6
  call void @llvm.dbg.declare(metadata ptr %5, metadata !517, metadata !DIExpression()), !dbg !519
  store i32 1, ptr %5, align 4, !dbg !519
  %9 = load i32, ptr %3, align 4, !dbg !520
  %10 = call i32 @setsockopt(i32 noundef %9, i32 noundef 1, i32 noundef 9, ptr noundef %5, i32 noundef 4) #8, !dbg !521
  ret i32 0, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_set_reusable(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !523 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !526, metadata !DIExpression()), !dbg !527
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !528, metadata !DIExpression()), !dbg !529
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !530, metadata !DIExpression()), !dbg !531
  br label %12, !dbg !532

12:                                               ; preds = %3
  %13 = load i32, ptr %7, align 4, !dbg !533
  store i32 %13, ptr %7, align 4, !dbg !533
  br label %14, !dbg !533

14:                                               ; preds = %12
  %15 = load i32, ptr %5, align 4, !dbg !535
  %16 = icmp slt i32 %15, 0, !dbg !537
  br i1 %16, label %17, label %18, !dbg !538

17:                                               ; preds = %14
  store i32 -1, ptr %4, align 4, !dbg !539
  br label %37, !dbg !539

18:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %8, metadata !540, metadata !DIExpression()), !dbg !542
  store i32 1, ptr %8, align 4, !dbg !542
  %19 = load i32, ptr %8, align 4, !dbg !543
  %20 = icmp ne i32 %19, 0, !dbg !543
  br i1 %20, label %21, label %29, !dbg !545

21:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %9, metadata !546, metadata !DIExpression()), !dbg !548
  %22 = load i32, ptr %6, align 4, !dbg !549
  store i32 %22, ptr %9, align 4, !dbg !548
  call void @llvm.dbg.declare(metadata ptr %10, metadata !550, metadata !DIExpression()), !dbg !551
  %23 = load i32, ptr %5, align 4, !dbg !552
  %24 = call i32 @setsockopt(i32 noundef %23, i32 noundef 1, i32 noundef 2, ptr noundef %9, i32 noundef 4) #8, !dbg !553
  store i32 %24, ptr %10, align 4, !dbg !551
  %25 = load i32, ptr %10, align 4, !dbg !554
  %26 = icmp slt i32 %25, 0, !dbg !556
  br i1 %26, label %27, label %28, !dbg !557

27:                                               ; preds = %21
  call void @perror(ptr noundef @.str.5), !dbg !558
  br label %28, !dbg !558

28:                                               ; preds = %27, %21
  br label %29, !dbg !559

29:                                               ; preds = %28, %18
  %30 = load i32, ptr %8, align 4, !dbg !560
  %31 = icmp ne i32 %30, 0, !dbg !560
  br i1 %31, label %32, label %36, !dbg !562

32:                                               ; preds = %29
  call void @llvm.dbg.declare(metadata ptr %11, metadata !563, metadata !DIExpression()), !dbg !565
  %33 = load i32, ptr %6, align 4, !dbg !566
  store i32 %33, ptr %11, align 4, !dbg !565
  %34 = load i32, ptr %5, align 4, !dbg !567
  %35 = call i32 @setsockopt(i32 noundef %34, i32 noundef 1, i32 noundef 15, ptr noundef %11, i32 noundef 4) #8, !dbg !568
  br label %36, !dbg !569

36:                                               ; preds = %32, %29
  store i32 0, ptr %4, align 4, !dbg !570
  br label %37, !dbg !570

37:                                               ; preds = %36, %17
  %38 = load i32, ptr %4, align 4, !dbg !571
  ret i32 %38, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_bind_to_device(i32 noundef %0, ptr noundef %1) #0 !dbg !572 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ifreq, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !577, metadata !DIExpression()), !dbg !578
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !579, metadata !DIExpression()), !dbg !580
  %7 = load i32, ptr %4, align 4, !dbg !581
  %8 = icmp sge i32 %7, 0, !dbg !583
  br i1 %8, label %9, label %34, !dbg !584

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !dbg !585
  %11 = icmp ne ptr %10, null, !dbg !585
  br i1 %11, label %12, label %34, !dbg !586

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 8, !dbg !587
  %14 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !587
  %15 = load i8, ptr %14, align 1, !dbg !587
  %16 = zext i8 %15 to i32, !dbg !587
  %17 = icmp ne i32 %16, 0, !dbg !587
  br i1 %17, label %18, label %34, !dbg !588

18:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %6, metadata !589, metadata !DIExpression()), !dbg !623
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 40, i1 false), !dbg !624
  %19 = getelementptr inbounds %struct.ifreq, ptr %6, i32 0, i32 0, !dbg !625
  %20 = getelementptr inbounds [16 x i8], ptr %19, i64 0, i64 0, !dbg !626
  %21 = load ptr, ptr %5, align 8, !dbg !627
  %22 = call ptr @strncpy(ptr noundef %20, ptr noundef %21, i64 noundef 16) #8, !dbg !628
  %23 = load i32, ptr %4, align 4, !dbg !629
  %24 = call i32 @setsockopt(i32 noundef %23, i32 noundef 1, i32 noundef 25, ptr noundef %6, i32 noundef 40) #8, !dbg !631
  %25 = icmp slt i32 %24, 0, !dbg !632
  br i1 %25, label %26, label %33, !dbg !633

26:                                               ; preds = %18
  %27 = call ptr @__errno_location() #9, !dbg !634
  %28 = load i32, ptr %27, align 4, !dbg !634
  %29 = icmp eq i32 %28, 1, !dbg !637
  br i1 %29, label %30, label %31, !dbg !638

30:                                               ; preds = %26
  call void @perror(ptr noundef @.str.6), !dbg !639
  br label %32, !dbg !639

31:                                               ; preds = %26
  call void @perror(ptr noundef @.str.7), !dbg !640
  br label %32

32:                                               ; preds = %31, %30
  store i32 -1, ptr %3, align 4, !dbg !641
  br label %35, !dbg !641

33:                                               ; preds = %18
  store i32 0, ptr %3, align 4, !dbg !642
  br label %35, !dbg !642

34:                                               ; preds = %12, %9, %2
  store i32 0, ptr %3, align 4, !dbg !643
  br label %35, !dbg !643

35:                                               ; preds = %34, %33, %32
  %36 = load i32, ptr %3, align 4, !dbg !644
  ret i32 %36, !dbg !644
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_connect(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !645 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !690, metadata !DIExpression()), !dbg !691
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !692, metadata !DIExpression()), !dbg !693
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !694, metadata !DIExpression()), !dbg !695
  %9 = load ptr, ptr %6, align 8, !dbg !696
  %10 = icmp ne ptr %9, null, !dbg !696
  br i1 %10, label %11, label %14, !dbg !698

11:                                               ; preds = %3
  %12 = load i32, ptr %5, align 4, !dbg !699
  %13 = icmp slt i32 %12, 0, !dbg !700
  br i1 %13, label %14, label %15, !dbg !701

14:                                               ; preds = %11, %3
  store i32 -1, ptr %4, align 4, !dbg !702
  br label %65, !dbg !702

15:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %8, metadata !703, metadata !DIExpression()), !dbg !705
  store i32 0, ptr %8, align 4, !dbg !705
  br label %16, !dbg !706

16:                                               ; preds = %46, %15
  %17 = load ptr, ptr %6, align 8, !dbg !707
  %18 = getelementptr inbounds %struct.sockaddr, ptr %17, i32 0, i32 0, !dbg !710
  %19 = load i16, ptr %18, align 4, !dbg !710
  %20 = zext i16 %19 to i32, !dbg !707
  %21 = icmp eq i32 %20, 2, !dbg !711
  br i1 %21, label %22, label %26, !dbg !712

22:                                               ; preds = %16
  %23 = load i32, ptr %5, align 4, !dbg !713
  %24 = load ptr, ptr %6, align 8, !dbg !715
  %25 = call i32 @connect(i32 noundef %23, ptr noundef %24, i32 noundef 16), !dbg !716
  store i32 %25, ptr %8, align 4, !dbg !717
  br label %38, !dbg !718

26:                                               ; preds = %16
  %27 = load ptr, ptr %6, align 8, !dbg !719
  %28 = getelementptr inbounds %struct.sockaddr, ptr %27, i32 0, i32 0, !dbg !721
  %29 = load i16, ptr %28, align 4, !dbg !721
  %30 = zext i16 %29 to i32, !dbg !719
  %31 = icmp eq i32 %30, 10, !dbg !722
  br i1 %31, label %32, label %36, !dbg !723

32:                                               ; preds = %26
  %33 = load i32, ptr %5, align 4, !dbg !724
  %34 = load ptr, ptr %6, align 8, !dbg !726
  %35 = call i32 @connect(i32 noundef %33, ptr noundef %34, i32 noundef 28), !dbg !727
  store i32 %35, ptr %8, align 4, !dbg !728
  br label %37, !dbg !729

36:                                               ; preds = %26
  store i32 -1, ptr %4, align 4, !dbg !730
  br label %65, !dbg !730

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %22
  br label %39, !dbg !732

39:                                               ; preds = %38
  %40 = load i32, ptr %8, align 4, !dbg !733
  %41 = icmp slt i32 %40, 0, !dbg !734
  br i1 %41, label %42, label %46, !dbg !735

42:                                               ; preds = %39
  %43 = call ptr @__errno_location() #9, !dbg !736
  %44 = load i32, ptr %43, align 4, !dbg !736
  %45 = icmp eq i32 %44, 4, !dbg !737
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi i1 [ false, %39 ], [ %45, %42 ], !dbg !738
  br i1 %47, label %16, label %48, !dbg !732, !llvm.loop !739

48:                                               ; preds = %46
  %49 = load ptr, ptr %7, align 8, !dbg !741
  %50 = icmp ne ptr %49, null, !dbg !741
  br i1 %50, label %51, label %55, !dbg !743

51:                                               ; preds = %48
  %52 = call ptr @__errno_location() #9, !dbg !744
  %53 = load i32, ptr %52, align 4, !dbg !744
  %54 = load ptr, ptr %7, align 8, !dbg !745
  store i32 %53, ptr %54, align 4, !dbg !746
  br label %55, !dbg !747

55:                                               ; preds = %51, %48
  %56 = load i32, ptr %8, align 4, !dbg !748
  %57 = icmp slt i32 %56, 0, !dbg !750
  br i1 %57, label %58, label %63, !dbg !751

58:                                               ; preds = %55
  %59 = call ptr @__errno_location() #9, !dbg !752
  %60 = load i32, ptr %59, align 4, !dbg !752
  %61 = icmp ne i32 %60, 115, !dbg !753
  br i1 %61, label %62, label %63, !dbg !754

62:                                               ; preds = %58
  call void @perror(ptr noundef @.str.8), !dbg !755
  br label %63, !dbg !755

63:                                               ; preds = %62, %58, %55
  %64 = load i32, ptr %8, align 4, !dbg !756
  store i32 %64, ptr %4, align 4, !dbg !757
  br label %65, !dbg !757

65:                                               ; preds = %63, %36, %14
  %66 = load i32, ptr %4, align 4, !dbg !758
  ret i32 %66, !dbg !758
}

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_bind(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !759 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [129 x i8], align 16
  store i32 %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !762, metadata !DIExpression()), !dbg !763
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !764, metadata !DIExpression()), !dbg !765
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !766, metadata !DIExpression()), !dbg !767
  store i32 %3, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !768, metadata !DIExpression()), !dbg !769
  store i32 %4, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !770, metadata !DIExpression()), !dbg !771
  %16 = load ptr, ptr %8, align 8, !dbg !772
  %17 = icmp ne ptr %16, null, !dbg !772
  br i1 %17, label %18, label %21, !dbg !774

18:                                               ; preds = %5
  %19 = load i32, ptr %7, align 4, !dbg !775
  %20 = icmp slt i32 %19, 0, !dbg !776
  br i1 %20, label %21, label %22, !dbg !777

21:                                               ; preds = %18, %5
  store i32 -1, ptr %6, align 4, !dbg !778
  br label %90, !dbg !778

22:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %12, metadata !780, metadata !DIExpression()), !dbg !782
  store i32 -1, ptr %12, align 4, !dbg !782
  %23 = load i32, ptr %7, align 4, !dbg !783
  %24 = load i32, ptr %9, align 4, !dbg !784
  %25 = load i32, ptr %11, align 4, !dbg !785
  %26 = call i32 @socket_set_reusable(i32 noundef %23, i32 noundef %24, i32 noundef %25), !dbg !786
  %27 = load ptr, ptr %8, align 8, !dbg !787
  %28 = getelementptr inbounds %struct.sockaddr, ptr %27, i32 0, i32 0, !dbg !789
  %29 = load i16, ptr %28, align 4, !dbg !789
  %30 = zext i16 %29 to i32, !dbg !787
  %31 = icmp eq i32 %30, 2, !dbg !790
  br i1 %31, label %32, label %47, !dbg !791

32:                                               ; preds = %22
  br label %33, !dbg !792

33:                                               ; preds = %44, %32
  %34 = load i32, ptr %7, align 4, !dbg !794
  %35 = load ptr, ptr %8, align 8, !dbg !796
  %36 = call i32 @bind(i32 noundef %34, ptr noundef %35, i32 noundef 16) #8, !dbg !797
  store i32 %36, ptr %12, align 4, !dbg !798
  br label %37, !dbg !799

37:                                               ; preds = %33
  %38 = load i32, ptr %12, align 4, !dbg !800
  %39 = icmp slt i32 %38, 0, !dbg !801
  br i1 %39, label %40, label %44, !dbg !802

40:                                               ; preds = %37
  %41 = call ptr @__errno_location() #9, !dbg !803
  %42 = load i32, ptr %41, align 4, !dbg !803
  %43 = icmp eq i32 %42, 4, !dbg !804
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ], !dbg !805
  br i1 %45, label %33, label %46, !dbg !799, !llvm.loop !806

46:                                               ; preds = %44
  br label %72, !dbg !808

47:                                               ; preds = %22
  %48 = load ptr, ptr %8, align 8, !dbg !809
  %49 = getelementptr inbounds %struct.sockaddr, ptr %48, i32 0, i32 0, !dbg !811
  %50 = load i16, ptr %49, align 4, !dbg !811
  %51 = zext i16 %50 to i32, !dbg !809
  %52 = icmp eq i32 %51, 10, !dbg !812
  br i1 %52, label %53, label %70, !dbg !813

53:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata ptr %13, metadata !814, metadata !DIExpression()), !dbg !817
  store i32 0, ptr %13, align 4, !dbg !817
  %54 = load i32, ptr %7, align 4, !dbg !818
  %55 = call i32 @setsockopt(i32 noundef %54, i32 noundef 41, i32 noundef 26, ptr noundef %13, i32 noundef 4) #8, !dbg !819
  br label %56, !dbg !820

56:                                               ; preds = %67, %53
  %57 = load i32, ptr %7, align 4, !dbg !821
  %58 = load ptr, ptr %8, align 8, !dbg !823
  %59 = call i32 @bind(i32 noundef %57, ptr noundef %58, i32 noundef 28) #8, !dbg !824
  store i32 %59, ptr %12, align 4, !dbg !825
  br label %60, !dbg !826

60:                                               ; preds = %56
  %61 = load i32, ptr %12, align 4, !dbg !827
  %62 = icmp slt i32 %61, 0, !dbg !828
  br i1 %62, label %63, label %67, !dbg !829

63:                                               ; preds = %60
  %64 = call ptr @__errno_location() #9, !dbg !830
  %65 = load i32, ptr %64, align 4, !dbg !830
  %66 = icmp eq i32 %65, 4, !dbg !831
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi i1 [ false, %60 ], [ %66, %63 ], !dbg !832
  br i1 %68, label %56, label %69, !dbg !826, !llvm.loop !833

69:                                               ; preds = %67
  br label %71, !dbg !835

70:                                               ; preds = %47
  store i32 -1, ptr %6, align 4, !dbg !836
  br label %90, !dbg !836

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %71, %46
  %73 = load i32, ptr %12, align 4, !dbg !838
  %74 = icmp slt i32 %73, 0, !dbg !840
  br i1 %74, label %75, label %88, !dbg !841

75:                                               ; preds = %72
  %76 = load i32, ptr %10, align 4, !dbg !842
  %77 = icmp ne i32 %76, 0, !dbg !842
  br i1 %77, label %78, label %87, !dbg !845

78:                                               ; preds = %75
  call void @llvm.dbg.declare(metadata ptr %14, metadata !846, metadata !DIExpression()), !dbg !848
  %79 = call ptr @__errno_location() #9, !dbg !849
  %80 = load i32, ptr %79, align 4, !dbg !849
  store i32 %80, ptr %14, align 4, !dbg !848
  call void @perror(ptr noundef @.str.9), !dbg !850
  call void @llvm.dbg.declare(metadata ptr %15, metadata !851, metadata !DIExpression()), !dbg !855
  %81 = load ptr, ptr %8, align 8, !dbg !856
  %82 = getelementptr inbounds [129 x i8], ptr %15, i64 0, i64 0, !dbg !857
  %83 = call i32 @addr_to_string(ptr noundef %81, ptr noundef %82), !dbg !858
  %84 = load i32, ptr %7, align 4, !dbg !859
  %85 = getelementptr inbounds [129 x i8], ptr %15, i64 0, i64 0, !dbg !860
  %86 = load i32, ptr %14, align 4, !dbg !861
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.10, i32 noundef %84, ptr noundef %85, i32 noundef %86), !dbg !862
  br label %87, !dbg !863

87:                                               ; preds = %78, %75
  br label %88, !dbg !864

88:                                               ; preds = %87, %72
  %89 = load i32, ptr %12, align 4, !dbg !865
  store i32 %89, ptr %6, align 4, !dbg !866
  br label %90, !dbg !866

90:                                               ; preds = %88, %70, %21
  %91 = load i32, ptr %6, align 4, !dbg !867
  ret i32 %91, !dbg !867
}

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr noundef, i32 noundef) #3

declare i32 @addr_to_string(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_get_from_sock(i32 noundef %0, ptr noundef %1) #0 !dbg !868 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %union.ioa_addr, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !872, metadata !DIExpression()), !dbg !873
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !874, metadata !DIExpression()), !dbg !875
  %8 = load i32, ptr %4, align 4, !dbg !876
  %9 = icmp slt i32 %8, 0, !dbg !878
  br i1 %9, label %13, label %10, !dbg !879

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !dbg !880
  %12 = icmp ne ptr %11, null, !dbg !880
  br i1 %12, label %14, label %13, !dbg !881

13:                                               ; preds = %10, %2
  store i32 -1, ptr %3, align 4, !dbg !882
  br label %30, !dbg !882

14:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata ptr %6, metadata !883, metadata !DIExpression()), !dbg !885
  %15 = getelementptr inbounds %struct.sockaddr, ptr %6, i32 0, i32 0, !dbg !886
  store i16 10, ptr %15, align 4, !dbg !887
  call void @llvm.dbg.declare(metadata ptr %7, metadata !888, metadata !DIExpression()), !dbg !889
  %16 = call i32 @get_ioa_addr_len(ptr noundef %6), !dbg !890
  store i32 %16, ptr %7, align 4, !dbg !889
  %17 = load i32, ptr %4, align 4, !dbg !891
  %18 = call i32 @getsockname(i32 noundef %17, ptr noundef %6, ptr noundef %7) #8, !dbg !893
  %19 = icmp slt i32 %18, 0, !dbg !894
  br i1 %19, label %20, label %28, !dbg !895

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.sockaddr, ptr %6, i32 0, i32 0, !dbg !896
  store i16 2, ptr %21, align 4, !dbg !898
  %22 = call i32 @get_ioa_addr_len(ptr noundef %6), !dbg !899
  store i32 %22, ptr %7, align 4, !dbg !900
  %23 = load i32, ptr %4, align 4, !dbg !901
  %24 = call i32 @getsockname(i32 noundef %23, ptr noundef %6, ptr noundef %7) #8, !dbg !903
  %25 = icmp slt i32 %24, 0, !dbg !904
  br i1 %25, label %26, label %27, !dbg !905

26:                                               ; preds = %20
  store i32 -1, ptr %3, align 4, !dbg !906
  br label %30, !dbg !906

27:                                               ; preds = %20
  br label %28, !dbg !908

28:                                               ; preds = %27, %14
  %29 = load ptr, ptr %5, align 8, !dbg !909
  call void @addr_cpy(ptr noundef %29, ptr noundef %6), !dbg !910
  store i32 0, ptr %3, align 4, !dbg !911
  br label %30, !dbg !911

30:                                               ; preds = %28, %26, %13
  %31 = load i32, ptr %3, align 4, !dbg !912
  ret i32 %31, !dbg !912
}

declare i32 @get_ioa_addr_len(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, ptr noundef, ptr noundef) #3

declare void @addr_cpy(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_raw_socket_ttl(i32 noundef %0, i32 noundef %1) #0 !dbg !913 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !914, metadata !DIExpression()), !dbg !915
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !916, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.declare(metadata ptr %6, metadata !918, metadata !DIExpression()), !dbg !919
  store i32 0, ptr %6, align 4, !dbg !919
  %9 = load i32, ptr %5, align 4, !dbg !920
  %10 = icmp eq i32 %9, 10, !dbg !922
  br i1 %10, label %11, label %17, !dbg !923

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !924, metadata !DIExpression()), !dbg !926
  store i32 4, ptr %7, align 4, !dbg !926
  %12 = load i32, ptr %4, align 4, !dbg !927
  %13 = call i32 @getsockopt(i32 noundef %12, i32 noundef 41, i32 noundef 16, ptr noundef %6, ptr noundef %7) #8, !dbg !929
  %14 = icmp slt i32 %13, 0, !dbg !930
  br i1 %14, label %15, label %16, !dbg !931

15:                                               ; preds = %11
  call void @perror(ptr noundef @.str.11), !dbg !932
  store i32 -1, ptr %3, align 4, !dbg !934
  br label %34, !dbg !934

16:                                               ; preds = %11
  br label %23, !dbg !935

17:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !936, metadata !DIExpression()), !dbg !938
  store i32 4, ptr %8, align 4, !dbg !938
  %18 = load i32, ptr %4, align 4, !dbg !939
  %19 = call i32 @getsockopt(i32 noundef %18, i32 noundef 0, i32 noundef 2, ptr noundef %6, ptr noundef %8) #8, !dbg !941
  %20 = icmp slt i32 %19, 0, !dbg !942
  br i1 %20, label %21, label %22, !dbg !943

21:                                               ; preds = %17
  call void @perror(ptr noundef @.str.12), !dbg !944
  store i32 -1, ptr %3, align 4, !dbg !946
  br label %34, !dbg !946

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %16
  br label %24, !dbg !947

24:                                               ; preds = %23
  %25 = load i32, ptr %6, align 4, !dbg !948
  %26 = icmp slt i32 %25, 0, !dbg !948
  br i1 %26, label %30, label %27, !dbg !948

27:                                               ; preds = %24
  %28 = load i32, ptr %6, align 4, !dbg !948
  %29 = icmp sgt i32 %28, 255, !dbg !948
  br i1 %29, label %30, label %31, !dbg !951

30:                                               ; preds = %27, %24
  store i32 64, ptr %6, align 4, !dbg !948
  br label %31, !dbg !948

31:                                               ; preds = %30, %27
  br label %32, !dbg !951

32:                                               ; preds = %31
  %33 = load i32, ptr %6, align 4, !dbg !952
  store i32 %33, ptr %3, align 4, !dbg !953
  br label %34, !dbg !953

34:                                               ; preds = %32, %21, %15
  %35 = load i32, ptr %3, align 4, !dbg !954
  ret i32 %35, !dbg !954
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_raw_socket_tos(i32 noundef %0, i32 noundef %1) #0 !dbg !955 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !956, metadata !DIExpression()), !dbg !957
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !958, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata ptr %6, metadata !960, metadata !DIExpression()), !dbg !961
  store i32 0, ptr %6, align 4, !dbg !961
  %9 = load i32, ptr %5, align 4, !dbg !962
  %10 = icmp eq i32 %9, 10, !dbg !964
  br i1 %10, label %11, label %17, !dbg !965

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !966, metadata !DIExpression()), !dbg !968
  store i32 4, ptr %7, align 4, !dbg !968
  %12 = load i32, ptr %4, align 4, !dbg !969
  %13 = call i32 @getsockopt(i32 noundef %12, i32 noundef 41, i32 noundef 67, ptr noundef %6, ptr noundef %7) #8, !dbg !971
  %14 = icmp slt i32 %13, 0, !dbg !972
  br i1 %14, label %15, label %16, !dbg !973

15:                                               ; preds = %11
  call void @perror(ptr noundef @.str.13), !dbg !974
  store i32 -1, ptr %3, align 4, !dbg !976
  br label %34, !dbg !976

16:                                               ; preds = %11
  br label %23, !dbg !977

17:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !978, metadata !DIExpression()), !dbg !980
  store i32 4, ptr %8, align 4, !dbg !980
  %18 = load i32, ptr %4, align 4, !dbg !981
  %19 = call i32 @getsockopt(i32 noundef %18, i32 noundef 0, i32 noundef 1, ptr noundef %6, ptr noundef %8) #8, !dbg !983
  %20 = icmp slt i32 %19, 0, !dbg !984
  br i1 %20, label %21, label %22, !dbg !985

21:                                               ; preds = %17
  call void @perror(ptr noundef @.str.14), !dbg !986
  store i32 -1, ptr %3, align 4, !dbg !988
  br label %34, !dbg !988

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %16
  br label %24, !dbg !989

24:                                               ; preds = %23
  %25 = load i32, ptr %6, align 4, !dbg !990
  %26 = icmp slt i32 %25, 0, !dbg !990
  br i1 %26, label %30, label %27, !dbg !990

27:                                               ; preds = %24
  %28 = load i32, ptr %6, align 4, !dbg !990
  %29 = icmp sgt i32 %28, 255, !dbg !990
  br i1 %29, label %30, label %31, !dbg !993

30:                                               ; preds = %27, %24
  store i32 0, ptr %6, align 4, !dbg !990
  br label %31, !dbg !990

31:                                               ; preds = %30, %27
  br label %32, !dbg !993

32:                                               ; preds = %31
  %33 = load i32, ptr %6, align 4, !dbg !994
  store i32 %33, ptr %3, align 4, !dbg !995
  br label %34, !dbg !995

34:                                               ; preds = %32, %21, %15
  %35 = load i32, ptr %3, align 4, !dbg !996
  ret i32 %35, !dbg !996
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_raw_socket_ttl(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !997 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1000, metadata !DIExpression()), !dbg !1001
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1002, metadata !DIExpression()), !dbg !1003
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1004, metadata !DIExpression()), !dbg !1005
  %8 = load i32, ptr %6, align 4, !dbg !1006
  %9 = icmp eq i32 %8, 10, !dbg !1008
  br i1 %9, label %10, label %25, !dbg !1009

10:                                               ; preds = %3
  br label %11, !dbg !1010

11:                                               ; preds = %10
  %12 = load i32, ptr %7, align 4, !dbg !1012
  %13 = icmp slt i32 %12, 0, !dbg !1012
  br i1 %13, label %17, label %14, !dbg !1012

14:                                               ; preds = %11
  %15 = load i32, ptr %7, align 4, !dbg !1012
  %16 = icmp sgt i32 %15, 255, !dbg !1012
  br i1 %16, label %17, label %18, !dbg !1015

17:                                               ; preds = %14, %11
  store i32 64, ptr %7, align 4, !dbg !1012
  br label %18, !dbg !1012

18:                                               ; preds = %17, %14
  br label %19, !dbg !1015

19:                                               ; preds = %18
  %20 = load i32, ptr %5, align 4, !dbg !1016
  %21 = call i32 @setsockopt(i32 noundef %20, i32 noundef 41, i32 noundef 16, ptr noundef %7, i32 noundef 4) #8, !dbg !1018
  %22 = icmp slt i32 %21, 0, !dbg !1019
  br i1 %22, label %23, label %24, !dbg !1020

23:                                               ; preds = %19
  call void @perror(ptr noundef @.str.15), !dbg !1021
  store i32 -1, ptr %4, align 4, !dbg !1023
  br label %41, !dbg !1023

24:                                               ; preds = %19
  br label %40, !dbg !1024

25:                                               ; preds = %3
  br label %26, !dbg !1025

26:                                               ; preds = %25
  %27 = load i32, ptr %7, align 4, !dbg !1027
  %28 = icmp slt i32 %27, 0, !dbg !1027
  br i1 %28, label %32, label %29, !dbg !1027

29:                                               ; preds = %26
  %30 = load i32, ptr %7, align 4, !dbg !1027
  %31 = icmp sgt i32 %30, 255, !dbg !1027
  br i1 %31, label %32, label %33, !dbg !1030

32:                                               ; preds = %29, %26
  store i32 64, ptr %7, align 4, !dbg !1027
  br label %33, !dbg !1027

33:                                               ; preds = %32, %29
  br label %34, !dbg !1030

34:                                               ; preds = %33
  %35 = load i32, ptr %5, align 4, !dbg !1031
  %36 = call i32 @setsockopt(i32 noundef %35, i32 noundef 0, i32 noundef 2, ptr noundef %7, i32 noundef 4) #8, !dbg !1033
  %37 = icmp slt i32 %36, 0, !dbg !1034
  br i1 %37, label %38, label %39, !dbg !1035

38:                                               ; preds = %34
  call void @perror(ptr noundef @.str.16), !dbg !1036
  store i32 -1, ptr %4, align 4, !dbg !1038
  br label %41, !dbg !1038

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %24
  store i32 0, ptr %4, align 4, !dbg !1039
  br label %41, !dbg !1039

41:                                               ; preds = %40, %38, %23
  %42 = load i32, ptr %4, align 4, !dbg !1040
  ret i32 %42, !dbg !1040
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_raw_socket_tos(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1041 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1042, metadata !DIExpression()), !dbg !1043
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1044, metadata !DIExpression()), !dbg !1045
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1046, metadata !DIExpression()), !dbg !1047
  %8 = load i32, ptr %6, align 4, !dbg !1048
  %9 = icmp eq i32 %8, 10, !dbg !1050
  br i1 %9, label %10, label %25, !dbg !1051

10:                                               ; preds = %3
  br label %11, !dbg !1052

11:                                               ; preds = %10
  %12 = load i32, ptr %7, align 4, !dbg !1054
  %13 = icmp slt i32 %12, 0, !dbg !1054
  br i1 %13, label %17, label %14, !dbg !1054

14:                                               ; preds = %11
  %15 = load i32, ptr %7, align 4, !dbg !1054
  %16 = icmp sgt i32 %15, 255, !dbg !1054
  br i1 %16, label %17, label %18, !dbg !1057

17:                                               ; preds = %14, %11
  store i32 0, ptr %7, align 4, !dbg !1054
  br label %18, !dbg !1054

18:                                               ; preds = %17, %14
  br label %19, !dbg !1057

19:                                               ; preds = %18
  %20 = load i32, ptr %5, align 4, !dbg !1058
  %21 = call i32 @setsockopt(i32 noundef %20, i32 noundef 41, i32 noundef 67, ptr noundef %7, i32 noundef 4) #8, !dbg !1060
  %22 = icmp slt i32 %21, 0, !dbg !1061
  br i1 %22, label %23, label %24, !dbg !1062

23:                                               ; preds = %19
  call void @perror(ptr noundef @.str.17), !dbg !1063
  store i32 -1, ptr %4, align 4, !dbg !1065
  br label %32, !dbg !1065

24:                                               ; preds = %19
  br label %31, !dbg !1066

25:                                               ; preds = %3
  %26 = load i32, ptr %5, align 4, !dbg !1067
  %27 = call i32 @setsockopt(i32 noundef %26, i32 noundef 0, i32 noundef 1, ptr noundef %7, i32 noundef 4) #8, !dbg !1070
  %28 = icmp slt i32 %27, 0, !dbg !1071
  br i1 %28, label %29, label %30, !dbg !1072

29:                                               ; preds = %25
  call void @perror(ptr noundef @.str.18), !dbg !1073
  store i32 -1, ptr %4, align 4, !dbg !1075
  br label %32, !dbg !1075

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %24
  store i32 0, ptr %4, align 4, !dbg !1076
  br label %32, !dbg !1076

32:                                               ; preds = %31, %29, %23
  %33 = load i32, ptr %4, align 4, !dbg !1077
  ret i32 %33, !dbg !1077
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_stream_socket(i32 noundef %0) #0 !dbg !1078 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1079, metadata !DIExpression()), !dbg !1080
  %4 = load i32, ptr %3, align 4, !dbg !1081
  switch i32 %4, label %6 [
    i32 6, label %5
    i32 253, label %5
    i32 56, label %5
    i32 255, label %5
    i32 132, label %5
    i32 133, label %5
    i32 254, label %5
  ], !dbg !1082

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1
  store i32 1, ptr %2, align 4, !dbg !1083
  br label %8, !dbg !1083

6:                                                ; preds = %1
  br label %7, !dbg !1085

7:                                                ; preds = %6
  store i32 0, ptr %2, align 4, !dbg !1086
  br label %8, !dbg !1086

8:                                                ; preds = %7, %5
  %9 = load i32, ptr %2, align 4, !dbg !1087
  ret i32 %9, !dbg !1087
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_tcp_socket(i32 noundef %0) #0 !dbg !1088 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1089, metadata !DIExpression()), !dbg !1090
  %4 = load i32, ptr %3, align 4, !dbg !1091
  switch i32 %4, label %6 [
    i32 6, label %5
    i32 56, label %5
    i32 255, label %5
  ], !dbg !1092

5:                                                ; preds = %1, %1, %1
  store i32 1, ptr %2, align 4, !dbg !1093
  br label %8, !dbg !1093

6:                                                ; preds = %1
  br label %7, !dbg !1095

7:                                                ; preds = %6
  store i32 0, ptr %2, align 4, !dbg !1096
  br label %8, !dbg !1096

8:                                                ; preds = %7, %5
  %9 = load i32, ptr %2, align 4, !dbg !1097
  ret i32 %9, !dbg !1097
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_sctp_socket(i32 noundef %0) #0 !dbg !1098 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1099, metadata !DIExpression()), !dbg !1100
  %4 = load i32, ptr %3, align 4, !dbg !1101
  switch i32 %4, label %6 [
    i32 132, label %5
    i32 133, label %5
    i32 254, label %5
  ], !dbg !1102

5:                                                ; preds = %1, %1, %1
  store i32 1, ptr %2, align 4, !dbg !1103
  br label %8, !dbg !1103

6:                                                ; preds = %1
  br label %7, !dbg !1105

7:                                                ; preds = %6
  store i32 0, ptr %2, align 4, !dbg !1106
  br label %8, !dbg !1106

8:                                                ; preds = %7, %5
  %9 = load i32, ptr %2, align 4, !dbg !1107
  ret i32 %9, !dbg !1107
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @socket_type_name(i32 noundef %0) #0 !dbg !1108 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1111, metadata !DIExpression()), !dbg !1112
  %4 = load i32, ptr %3, align 4, !dbg !1113
  switch i32 %4, label %13 [
    i32 6, label %5
    i32 132, label %6
    i32 17, label %7
    i32 56, label %8
    i32 133, label %9
    i32 250, label %10
    i32 255, label %11
    i32 254, label %12
  ], !dbg !1114

5:                                                ; preds = %1
  store ptr @.str.19, ptr %2, align 8, !dbg !1115
  br label %15, !dbg !1115

6:                                                ; preds = %1
  store ptr @.str.20, ptr %2, align 8, !dbg !1117
  br label %15, !dbg !1117

7:                                                ; preds = %1
  store ptr @.str.21, ptr %2, align 8, !dbg !1118
  br label %15, !dbg !1118

8:                                                ; preds = %1
  store ptr @.str.22, ptr %2, align 8, !dbg !1119
  br label %15, !dbg !1119

9:                                                ; preds = %1
  store ptr @.str.23, ptr %2, align 8, !dbg !1120
  br label %15, !dbg !1120

10:                                               ; preds = %1
  store ptr @.str.24, ptr %2, align 8, !dbg !1121
  br label %15, !dbg !1121

11:                                               ; preds = %1
  store ptr @.str.25, ptr %2, align 8, !dbg !1122
  br label %15, !dbg !1122

12:                                               ; preds = %1
  store ptr @.str.26, ptr %2, align 8, !dbg !1123
  br label %15, !dbg !1123

13:                                               ; preds = %1
  br label %14, !dbg !1124

14:                                               ; preds = %13
  store ptr @.str.27, ptr %2, align 8, !dbg !1125
  br label %15, !dbg !1125

15:                                               ; preds = %14, %12, %11, %10, %9, %8, %7, %6, %5
  %16 = load ptr, ptr %2, align 8, !dbg !1126
  ret ptr %16, !dbg !1126
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_socket_df(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1127 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1128, metadata !DIExpression()), !dbg !1129
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1130, metadata !DIExpression()), !dbg !1131
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1132, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1134, metadata !DIExpression()), !dbg !1135
  store i32 0, ptr %7, align 4, !dbg !1135
  %10 = load i32, ptr %5, align 4, !dbg !1136
  %11 = icmp eq i32 %10, 2, !dbg !1139
  br i1 %11, label %12, label %19, !dbg !1140

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1141, metadata !DIExpression()), !dbg !1143
  store i32 2, ptr %8, align 4, !dbg !1143
  %13 = load i32, ptr %6, align 4, !dbg !1144
  %14 = icmp ne i32 %13, 0, !dbg !1144
  br i1 %14, label %16, label %15, !dbg !1146

15:                                               ; preds = %12
  store i32 0, ptr %8, align 4, !dbg !1147
  br label %16, !dbg !1148

16:                                               ; preds = %15, %12
  %17 = load i32, ptr %4, align 4, !dbg !1149
  %18 = call i32 @setsockopt(i32 noundef %17, i32 noundef 0, i32 noundef 10, ptr noundef %8, i32 noundef 4) #8, !dbg !1150
  store i32 %18, ptr %7, align 4, !dbg !1151
  br label %26, !dbg !1152

19:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1153, metadata !DIExpression()), !dbg !1155
  store i32 2, ptr %9, align 4, !dbg !1155
  %20 = load i32, ptr %6, align 4, !dbg !1156
  %21 = icmp ne i32 %20, 0, !dbg !1156
  br i1 %21, label %23, label %22, !dbg !1158

22:                                               ; preds = %19
  store i32 0, ptr %9, align 4, !dbg !1159
  br label %23, !dbg !1160

23:                                               ; preds = %22, %19
  %24 = load i32, ptr %4, align 4, !dbg !1161
  %25 = call i32 @setsockopt(i32 noundef %24, i32 noundef 41, i32 noundef 23, ptr noundef %9, i32 noundef 4) #8, !dbg !1162
  store i32 %25, ptr %7, align 4, !dbg !1163
  br label %26

26:                                               ; preds = %23, %16
  %27 = load i32, ptr %7, align 4, !dbg !1164
  %28 = icmp slt i32 %27, 0, !dbg !1166
  br i1 %28, label %29, label %30, !dbg !1167

29:                                               ; preds = %26
  call void @perror(ptr noundef @.str.28), !dbg !1168
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.29, ptr noundef @__FUNCTION__.set_socket_df), !dbg !1170
  br label %30, !dbg !1171

30:                                               ; preds = %29, %26
  %31 = load i32, ptr %7, align 4, !dbg !1172
  ret i32 %31, !dbg !1173
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decrease_mtu(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1174 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1181, metadata !DIExpression()), !dbg !1182
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1183, metadata !DIExpression()), !dbg !1184
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1185, metadata !DIExpression()), !dbg !1186
  %9 = load ptr, ptr %5, align 8, !dbg !1187
  %10 = icmp ne ptr %9, null, !dbg !1187
  br i1 %10, label %13, label %11, !dbg !1189

11:                                               ; preds = %3
  %12 = load i32, ptr %6, align 4, !dbg !1190
  store i32 %12, ptr %4, align 4, !dbg !1191
  br label %62, !dbg !1191

13:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1192, metadata !DIExpression()), !dbg !1193
  %14 = load ptr, ptr %5, align 8, !dbg !1194
  %15 = call i32 @get_mtu_from_ssl(ptr noundef %14), !dbg !1195
  store i32 %15, ptr %8, align 4, !dbg !1193
  %16 = load i32, ptr %8, align 4, !dbg !1196
  %17 = icmp slt i32 %16, 1, !dbg !1198
  br i1 %17, label %18, label %20, !dbg !1199

18:                                               ; preds = %13
  %19 = load i32, ptr %6, align 4, !dbg !1200
  store i32 %19, ptr %8, align 4, !dbg !1201
  br label %20, !dbg !1202

20:                                               ; preds = %18, %13
  %21 = load i32, ptr %8, align 4, !dbg !1203
  %22 = icmp sgt i32 %21, 1472, !dbg !1205
  br i1 %22, label %23, label %24, !dbg !1206

23:                                               ; preds = %20
  store i32 1472, ptr %6, align 4, !dbg !1207
  br label %24, !dbg !1208

24:                                               ; preds = %23, %20
  %25 = load i32, ptr %8, align 4, !dbg !1209
  %26 = icmp sgt i32 %25, 0, !dbg !1211
  br i1 %26, label %27, label %31, !dbg !1212

27:                                               ; preds = %24
  %28 = load i32, ptr %8, align 4, !dbg !1213
  %29 = icmp slt i32 %28, 548, !dbg !1214
  br i1 %29, label %30, label %31, !dbg !1215

30:                                               ; preds = %27
  store i32 548, ptr %6, align 4, !dbg !1216
  br label %41, !dbg !1217

31:                                               ; preds = %27, %24
  %32 = load i32, ptr %8, align 4, !dbg !1218
  %33 = load i32, ptr %6, align 4, !dbg !1220
  %34 = icmp slt i32 %32, %33, !dbg !1221
  br i1 %34, label %35, label %37, !dbg !1222

35:                                               ; preds = %31
  %36 = load i32, ptr %8, align 4, !dbg !1223
  store i32 %36, ptr %6, align 4, !dbg !1224
  br label %40, !dbg !1225

37:                                               ; preds = %31
  %38 = load i32, ptr %6, align 4, !dbg !1226
  %39 = sub nsw i32 %38, 68, !dbg !1226
  store i32 %39, ptr %6, align 4, !dbg !1226
  br label %40

40:                                               ; preds = %37, %35
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i32, ptr %6, align 4, !dbg !1227
  %43 = icmp slt i32 %42, 548, !dbg !1229
  br i1 %43, label %44, label %45, !dbg !1230

44:                                               ; preds = %41
  store i32 548, ptr %6, align 4, !dbg !1231
  br label %45, !dbg !1232

45:                                               ; preds = %44, %41
  %46 = load ptr, ptr %5, align 8, !dbg !1233
  call void @set_query_mtu(ptr noundef %46), !dbg !1234
  %47 = load i32, ptr %7, align 4, !dbg !1235
  %48 = icmp ne i32 %47, 0, !dbg !1235
  br i1 %48, label %49, label %51, !dbg !1237

49:                                               ; preds = %45
  %50 = load i32, ptr %6, align 4, !dbg !1238
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.30, i32 noundef %50), !dbg !1239
  br label %51, !dbg !1239

51:                                               ; preds = %49, %45
  %52 = load ptr, ptr %5, align 8, !dbg !1240
  %53 = load i32, ptr %6, align 4, !dbg !1240
  %54 = sext i32 %53 to i64, !dbg !1240
  %55 = call i64 @SSL_ctrl(ptr noundef %52, i32 noundef 17, i64 noundef %54, ptr noundef null), !dbg !1240
  %56 = load ptr, ptr %5, align 8, !dbg !1241
  %57 = call ptr @SSL_get_wbio(ptr noundef %56), !dbg !1242
  %58 = load i32, ptr %6, align 4, !dbg !1243
  %59 = sext i32 %58 to i64, !dbg !1243
  %60 = call i64 @BIO_ctrl(ptr noundef %57, i32 noundef 42, i64 noundef %59, ptr noundef null), !dbg !1244
  %61 = load i32, ptr %6, align 4, !dbg !1245
  store i32 %61, ptr %4, align 4, !dbg !1246
  br label %62, !dbg !1246

62:                                               ; preds = %51, %11
  %63 = load i32, ptr %4, align 4, !dbg !1247
  ret i32 %63, !dbg !1247
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mtu_from_ssl(ptr noundef %0) #0 !dbg !1248 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1251, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1253, metadata !DIExpression()), !dbg !1254
  store i32 1300, ptr %3, align 4, !dbg !1254
  %4 = load ptr, ptr %2, align 8, !dbg !1255
  %5 = icmp ne ptr %4, null, !dbg !1255
  br i1 %5, label %6, label %11, !dbg !1257

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !1258
  %8 = call ptr @SSL_get_wbio(ptr noundef %7), !dbg !1259
  %9 = call i64 @BIO_ctrl(ptr noundef %8, i32 noundef 40, i64 noundef 0, ptr noundef null), !dbg !1260
  %10 = trunc i64 %9 to i32, !dbg !1260
  store i32 %10, ptr %3, align 4, !dbg !1261
  br label %11, !dbg !1262

11:                                               ; preds = %6, %1
  %12 = load i32, ptr %3, align 4, !dbg !1263
  ret i32 %12, !dbg !1264
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_query_mtu(ptr noundef %0) #0 !dbg !1265 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1268, metadata !DIExpression()), !dbg !1269
  %3 = load ptr, ptr %2, align 8, !dbg !1270
  %4 = icmp ne ptr %3, null, !dbg !1270
  br i1 %4, label %5, label %8, !dbg !1272

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !1273
  %7 = call i64 @SSL_set_options(ptr noundef %6, i64 noundef 4096), !dbg !1275
  br label %8, !dbg !1276

8:                                                ; preds = %5, %1
  ret void, !dbg !1277
}

declare i64 @SSL_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #2

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #2

declare ptr @SSL_get_wbio(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_mtu_df(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 !dbg !1278 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1281, metadata !DIExpression()), !dbg !1282
  store i32 %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1283, metadata !DIExpression()), !dbg !1284
  store i32 %2, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1285, metadata !DIExpression()), !dbg !1286
  store i32 %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1287, metadata !DIExpression()), !dbg !1288
  store i32 %4, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1289, metadata !DIExpression()), !dbg !1290
  store i32 %5, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1291, metadata !DIExpression()), !dbg !1292
  %15 = load ptr, ptr %8, align 8, !dbg !1293
  %16 = icmp ne ptr %15, null, !dbg !1293
  br i1 %16, label %17, label %20, !dbg !1295

17:                                               ; preds = %6
  %18 = load i32, ptr %9, align 4, !dbg !1296
  %19 = icmp slt i32 %18, 0, !dbg !1297
  br i1 %19, label %20, label %21, !dbg !1298

20:                                               ; preds = %17, %6
  store i32 0, ptr %7, align 4, !dbg !1299
  br label %62, !dbg !1299

21:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1300, metadata !DIExpression()), !dbg !1301
  %22 = load i32, ptr %9, align 4, !dbg !1302
  %23 = load i32, ptr %10, align 4, !dbg !1303
  %24 = load i32, ptr %12, align 4, !dbg !1304
  %25 = call i32 @set_socket_df(i32 noundef %22, i32 noundef %23, i32 noundef %24), !dbg !1305
  store i32 %25, ptr %14, align 4, !dbg !1301
  %26 = load i32, ptr %11, align 4, !dbg !1306
  %27 = icmp ne i32 %26, 0, !dbg !1306
  br i1 %27, label %29, label %28, !dbg !1308

28:                                               ; preds = %21
  store i32 1300, ptr %11, align 4, !dbg !1309
  br label %39, !dbg !1310

29:                                               ; preds = %21
  %30 = load i32, ptr %11, align 4, !dbg !1311
  %31 = icmp slt i32 %30, 548, !dbg !1313
  br i1 %31, label %32, label %33, !dbg !1314

32:                                               ; preds = %29
  store i32 548, ptr %11, align 4, !dbg !1315
  br label %38, !dbg !1316

33:                                               ; preds = %29
  %34 = load i32, ptr %11, align 4, !dbg !1317
  %35 = icmp sgt i32 %34, 1472, !dbg !1319
  br i1 %35, label %36, label %37, !dbg !1320

36:                                               ; preds = %33
  store i32 1472, ptr %11, align 4, !dbg !1321
  br label %37, !dbg !1322

37:                                               ; preds = %36, %33
  br label %38

38:                                               ; preds = %37, %32
  br label %39

39:                                               ; preds = %38, %28
  %40 = load ptr, ptr %8, align 8, !dbg !1323
  call void @set_query_mtu(ptr noundef %40), !dbg !1324
  %41 = load i32, ptr %13, align 4, !dbg !1325
  %42 = icmp ne i32 %41, 0, !dbg !1325
  br i1 %42, label %43, label %45, !dbg !1327

43:                                               ; preds = %39
  %44 = load i32, ptr %11, align 4, !dbg !1328
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.31, i32 noundef %44), !dbg !1329
  br label %45, !dbg !1329

45:                                               ; preds = %43, %39
  %46 = load ptr, ptr %8, align 8, !dbg !1330
  %47 = load i32, ptr %11, align 4, !dbg !1330
  %48 = sext i32 %47 to i64, !dbg !1330
  %49 = call i64 @SSL_ctrl(ptr noundef %46, i32 noundef 17, i64 noundef %48, ptr noundef null), !dbg !1330
  %50 = load ptr, ptr %8, align 8, !dbg !1331
  %51 = call ptr @SSL_get_wbio(ptr noundef %50), !dbg !1332
  %52 = load i32, ptr %11, align 4, !dbg !1333
  %53 = sext i32 %52 to i64, !dbg !1333
  %54 = call i64 @BIO_ctrl(ptr noundef %51, i32 noundef 42, i64 noundef %53, ptr noundef null), !dbg !1334
  %55 = load i32, ptr %13, align 4, !dbg !1335
  %56 = icmp ne i32 %55, 0, !dbg !1335
  br i1 %56, label %57, label %60, !dbg !1337

57:                                               ; preds = %45
  %58 = load ptr, ptr %8, align 8, !dbg !1338
  %59 = call i32 @get_mtu_from_ssl(ptr noundef %58), !dbg !1339
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.32, i32 noundef %59), !dbg !1340
  br label %60, !dbg !1340

60:                                               ; preds = %57, %45
  %61 = load i32, ptr %14, align 4, !dbg !1341
  store i32 %61, ptr %7, align 4, !dbg !1342
  br label %62, !dbg !1342

62:                                               ; preds = %60, %20
  %63 = load i32, ptr %7, align 4, !dbg !1343
  ret i32 %63, !dbg !1343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_socket_mtu(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1344 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1345, metadata !DIExpression()), !dbg !1346
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1347, metadata !DIExpression()), !dbg !1348
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1349, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1351, metadata !DIExpression()), !dbg !1352
  store i32 0, ptr %7, align 4, !dbg !1352
  br label %10, !dbg !1353

10:                                               ; preds = %3
  %11 = load i32, ptr %4, align 4, !dbg !1354
  store i32 %11, ptr %4, align 4, !dbg !1354
  br label %12, !dbg !1354

12:                                               ; preds = %10
  br label %13, !dbg !1356

13:                                               ; preds = %12
  %14 = load i32, ptr %5, align 4, !dbg !1357
  store i32 %14, ptr %5, align 4, !dbg !1357
  br label %15, !dbg !1357

15:                                               ; preds = %13
  br label %16, !dbg !1359

16:                                               ; preds = %15
  %17 = load i32, ptr %6, align 4, !dbg !1360
  store i32 %17, ptr %6, align 4, !dbg !1360
  br label %18, !dbg !1360

18:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1362, metadata !DIExpression()), !dbg !1363
  store i32 0, ptr %8, align 4, !dbg !1363
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1364, metadata !DIExpression()), !dbg !1365
  store i32 4, ptr %9, align 4, !dbg !1365
  %19 = load i32, ptr %5, align 4, !dbg !1366
  %20 = icmp eq i32 %19, 2, !dbg !1368
  br i1 %20, label %21, label %24, !dbg !1369

21:                                               ; preds = %18
  %22 = load i32, ptr %4, align 4, !dbg !1370
  %23 = call i32 @getsockopt(i32 noundef %22, i32 noundef 0, i32 noundef 14, ptr noundef %8, ptr noundef %9) #8, !dbg !1372
  store i32 %23, ptr %7, align 4, !dbg !1373
  br label %27, !dbg !1374

24:                                               ; preds = %18
  %25 = load i32, ptr %4, align 4, !dbg !1375
  %26 = call i32 @getsockopt(i32 noundef %25, i32 noundef 41, i32 noundef 24, ptr noundef %8, ptr noundef %9) #8, !dbg !1377
  store i32 %26, ptr %7, align 4, !dbg !1378
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, ptr %8, align 4, !dbg !1379
  store i32 %28, ptr %7, align 4, !dbg !1380
  %29 = load i32, ptr %6, align 4, !dbg !1381
  %30 = icmp ne i32 %29, 0, !dbg !1381
  br i1 %30, label %31, label %33, !dbg !1383

31:                                               ; preds = %27
  %32 = load i32, ptr %7, align 4, !dbg !1384
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.33, ptr noundef @__FUNCTION__.get_socket_mtu, i32 noundef %32), !dbg !1385
  br label %33, !dbg !1385

33:                                               ; preds = %31, %27
  %34 = load i32, ptr %7, align 4, !dbg !1386
  ret i32 %34, !dbg !1387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_socket_error() #0 !dbg !1388 {
  %1 = alloca i32, align 4
  %2 = call ptr @__errno_location() #9, !dbg !1391
  %3 = load i32, ptr %2, align 4, !dbg !1391
  switch i32 %3, label %13 [
    i32 4, label %4
    i32 105, label %5
    i32 11, label %6
    i32 90, label %7
    i32 9, label %8
    i32 112, label %9
    i32 104, label %10
    i32 111, label %10
    i32 12, label %11
    i32 13, label %12
  ], !dbg !1392

4:                                                ; preds = %0
  store i32 1, ptr %1, align 4, !dbg !1393
  br label %16, !dbg !1393

5:                                                ; preds = %0
  store i32 1, ptr %1, align 4, !dbg !1395
  br label %16, !dbg !1395

6:                                                ; preds = %0
  store i32 1, ptr %1, align 4, !dbg !1396
  br label %16, !dbg !1396

7:                                                ; preds = %0
  store i32 1, ptr %1, align 4, !dbg !1397
  br label %16, !dbg !1397

8:                                                ; preds = %0
  store i32 0, ptr %1, align 4, !dbg !1398
  br label %16, !dbg !1398

9:                                                ; preds = %0
  store i32 1, ptr %1, align 4, !dbg !1399
  br label %16, !dbg !1399

10:                                               ; preds = %0, %0
  store i32 0, ptr %1, align 4, !dbg !1400
  br label %16, !dbg !1400

11:                                               ; preds = %0
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.34), !dbg !1401
  store i32 0, ptr %1, align 4, !dbg !1402
  br label %16, !dbg !1402

12:                                               ; preds = %0
  store i32 1, ptr %1, align 4, !dbg !1403
  br label %16, !dbg !1403

13:                                               ; preds = %0
  %14 = call ptr @__errno_location() #9, !dbg !1404
  %15 = load i32, ptr %14, align 4, !dbg !1404
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.35, i32 noundef %15), !dbg !1405
  store i32 0, ptr %1, align 4, !dbg !1406
  br label %16, !dbg !1406

16:                                               ; preds = %13, %12, %11, %10, %9, %8, %7, %6, %5, %4
  %17 = load i32, ptr %1, align 4, !dbg !1407
  ret i32 %17, !dbg !1407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @skip_blanks(ptr noundef %0) #0 !dbg !1408 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1411, metadata !DIExpression()), !dbg !1412
  br label %3, !dbg !1413

3:                                                ; preds = %20, %1
  %4 = load ptr, ptr %2, align 8, !dbg !1414
  %5 = load i8, ptr %4, align 1, !dbg !1415
  %6 = sext i8 %5 to i32, !dbg !1415
  %7 = icmp eq i32 %6, 32, !dbg !1416
  br i1 %7, label %18, label %8, !dbg !1417

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !dbg !1418
  %10 = load i8, ptr %9, align 1, !dbg !1419
  %11 = sext i8 %10 to i32, !dbg !1419
  %12 = icmp eq i32 %11, 9, !dbg !1420
  br i1 %12, label %18, label %13, !dbg !1421

13:                                               ; preds = %8
  %14 = load ptr, ptr %2, align 8, !dbg !1422
  %15 = load i8, ptr %14, align 1, !dbg !1423
  %16 = sext i8 %15 to i32, !dbg !1423
  %17 = icmp eq i32 %16, 10, !dbg !1424
  br label %18, !dbg !1421

18:                                               ; preds = %13, %8, %3
  %19 = phi i1 [ true, %8 ], [ true, %3 ], [ %17, %13 ]
  br i1 %19, label %20, label %23, !dbg !1413

20:                                               ; preds = %18
  %21 = load ptr, ptr %2, align 8, !dbg !1425
  %22 = getelementptr inbounds i8, ptr %21, i32 1, !dbg !1425
  store ptr %22, ptr %2, align 8, !dbg !1425
  br label %3, !dbg !1413, !llvm.loop !1426

23:                                               ; preds = %18
  %24 = load ptr, ptr %2, align 8, !dbg !1428
  ret ptr %24, !dbg !1429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_execdir() #0 !dbg !1430 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1433, metadata !DIExpression()), !dbg !1434
  %3 = call ptr @getenv(ptr noundef @.str.36) #8, !dbg !1435
  store ptr %3, ptr %1, align 8, !dbg !1434
  %4 = load ptr, ptr %1, align 8, !dbg !1436
  %5 = icmp ne ptr %4, null, !dbg !1436
  br i1 %5, label %6, label %46, !dbg !1438

6:                                                ; preds = %0
  %7 = load ptr, ptr %1, align 8, !dbg !1439
  %8 = load i8, ptr %7, align 1, !dbg !1440
  %9 = sext i8 %8 to i32, !dbg !1440
  %10 = icmp ne i32 %9, 0, !dbg !1440
  br i1 %10, label %11, label %46, !dbg !1441

11:                                               ; preds = %6
  %12 = load ptr, ptr %1, align 8, !dbg !1442
  %13 = call noalias ptr @strdup(ptr noundef %12) #8, !dbg !1444
  store ptr %13, ptr %1, align 8, !dbg !1445
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1446, metadata !DIExpression()), !dbg !1447
  %14 = load ptr, ptr %1, align 8, !dbg !1448
  store ptr %14, ptr %2, align 8, !dbg !1447
  %15 = load ptr, ptr %2, align 8, !dbg !1449
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !1449
  %17 = load i8, ptr %16, align 1, !dbg !1449
  %18 = sext i8 %17 to i32, !dbg !1449
  %19 = icmp ne i32 %18, 46, !dbg !1451
  br i1 %19, label %20, label %23, !dbg !1452

20:                                               ; preds = %11
  %21 = load ptr, ptr %2, align 8, !dbg !1453
  %22 = call ptr @strstr(ptr noundef %21, ptr noundef @.str.37) #10, !dbg !1454
  store ptr %22, ptr %2, align 8, !dbg !1455
  br label %23, !dbg !1456

23:                                               ; preds = %20, %11
  %24 = load ptr, ptr %2, align 8, !dbg !1457
  %25 = icmp ne ptr %24, null, !dbg !1457
  br i1 %25, label %26, label %34, !dbg !1459

26:                                               ; preds = %23
  %27 = load ptr, ptr %2, align 8, !dbg !1460
  %28 = load i8, ptr %27, align 1, !dbg !1461
  %29 = sext i8 %28 to i32, !dbg !1461
  %30 = icmp ne i32 %29, 0, !dbg !1461
  br i1 %30, label %31, label %34, !dbg !1462

31:                                               ; preds = %26
  %32 = load ptr, ptr %2, align 8, !dbg !1463
  %33 = call ptr @dirname(ptr noundef %32) #8, !dbg !1464
  store ptr %33, ptr %2, align 8, !dbg !1465
  br label %37, !dbg !1466

34:                                               ; preds = %26, %23
  %35 = load ptr, ptr %1, align 8, !dbg !1467
  %36 = call ptr @dirname(ptr noundef %35) #8, !dbg !1468
  store ptr %36, ptr %2, align 8, !dbg !1469
  br label %37

37:                                               ; preds = %34, %31
  %38 = load ptr, ptr @c_execdir, align 8, !dbg !1470
  %39 = icmp ne ptr %38, null, !dbg !1470
  br i1 %39, label %40, label %42, !dbg !1472

40:                                               ; preds = %37
  %41 = load ptr, ptr @c_execdir, align 8, !dbg !1473
  call void @free(ptr noundef %41) #8, !dbg !1474
  br label %42, !dbg !1474

42:                                               ; preds = %40, %37
  %43 = load ptr, ptr %2, align 8, !dbg !1475
  %44 = call noalias ptr @strdup(ptr noundef %43) #8, !dbg !1476
  store ptr %44, ptr @c_execdir, align 8, !dbg !1477
  %45 = load ptr, ptr %1, align 8, !dbg !1478
  call void @free(ptr noundef %45) #8, !dbg !1479
  br label %46, !dbg !1480

46:                                               ; preds = %42, %6, %0
  ret void, !dbg !1481
}

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #3

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind
declare ptr @dirname(ptr noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_abs_file_name(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1482 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [1025 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1485, metadata !DIExpression()), !dbg !1486
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1487, metadata !DIExpression()), !dbg !1488
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1489, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1491, metadata !DIExpression()), !dbg !1495
  %11 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1496
  store i8 0, ptr %11, align 16, !dbg !1497
  %12 = load ptr, ptr %6, align 8, !dbg !1498
  %13 = icmp ne ptr %12, null, !dbg !1498
  br i1 %13, label %14, label %127, !dbg !1500

14:                                               ; preds = %3
  br label %15, !dbg !1501

15:                                               ; preds = %29, %14
  %16 = load ptr, ptr %6, align 8, !dbg !1503
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !1503
  %18 = load i8, ptr %17, align 1, !dbg !1503
  %19 = sext i8 %18 to i32, !dbg !1503
  %20 = icmp ne i32 %19, 0, !dbg !1503
  br i1 %20, label %21, label %27, !dbg !1504

21:                                               ; preds = %15
  %22 = load ptr, ptr %6, align 8, !dbg !1505
  %23 = getelementptr inbounds i8, ptr %22, i64 0, !dbg !1505
  %24 = load i8, ptr %23, align 1, !dbg !1505
  %25 = sext i8 %24 to i32, !dbg !1505
  %26 = icmp eq i32 %25, 32, !dbg !1506
  br label %27

27:                                               ; preds = %21, %15
  %28 = phi i1 [ false, %15 ], [ %26, %21 ], !dbg !1507
  br i1 %28, label %29, label %32, !dbg !1501

29:                                               ; preds = %27
  %30 = load ptr, ptr %6, align 8, !dbg !1508
  %31 = getelementptr inbounds i8, ptr %30, i32 1, !dbg !1508
  store ptr %31, ptr %6, align 8, !dbg !1508
  br label %15, !dbg !1501, !llvm.loop !1509

32:                                               ; preds = %27
  %33 = load ptr, ptr %6, align 8, !dbg !1511
  %34 = getelementptr inbounds i8, ptr %33, i64 0, !dbg !1511
  %35 = load i8, ptr %34, align 1, !dbg !1511
  %36 = icmp ne i8 %35, 0, !dbg !1511
  br i1 %36, label %37, label %126, !dbg !1513

37:                                               ; preds = %32
  %38 = load ptr, ptr %6, align 8, !dbg !1514
  %39 = getelementptr inbounds i8, ptr %38, i64 0, !dbg !1514
  %40 = load i8, ptr %39, align 1, !dbg !1514
  %41 = sext i8 %40 to i32, !dbg !1514
  %42 = icmp eq i32 %41, 47, !dbg !1517
  br i1 %42, label %43, label %59, !dbg !1518

43:                                               ; preds = %37
  br label %44, !dbg !1519

44:                                               ; preds = %43
  %45 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1521
  %46 = load ptr, ptr %6, align 8, !dbg !1521
  %47 = icmp ne ptr %45, %46, !dbg !1521
  br i1 %47, label %48, label %57, !dbg !1524

48:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1525, metadata !DIExpression()), !dbg !1529
  store i64 1025, ptr %8, align 8, !dbg !1529
  %49 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1529
  %50 = load ptr, ptr %6, align 8, !dbg !1529
  %51 = load i64, ptr %8, align 8, !dbg !1529
  %52 = call ptr @strncpy(ptr noundef %49, ptr noundef %50, i64 noundef %51) #8, !dbg !1529
  %53 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1529
  %54 = load i64, ptr %8, align 8, !dbg !1529
  %55 = sub i64 %54, 1, !dbg !1529
  %56 = getelementptr inbounds i8, ptr %53, i64 %55, !dbg !1529
  store i8 0, ptr %56, align 1, !dbg !1529
  br label %57, !dbg !1530

57:                                               ; preds = %48, %44
  br label %58, !dbg !1524

58:                                               ; preds = %57
  br label %125, !dbg !1531

59:                                               ; preds = %37
  %60 = load ptr, ptr %6, align 8, !dbg !1532
  %61 = getelementptr inbounds i8, ptr %60, i64 0, !dbg !1532
  %62 = load i8, ptr %61, align 1, !dbg !1532
  %63 = sext i8 %62 to i32, !dbg !1532
  %64 = icmp eq i32 %63, 46, !dbg !1535
  br i1 %64, label %65, label %80, !dbg !1536

65:                                               ; preds = %59
  %66 = load ptr, ptr %6, align 8, !dbg !1537
  %67 = getelementptr inbounds i8, ptr %66, i64 1, !dbg !1537
  %68 = load i8, ptr %67, align 1, !dbg !1537
  %69 = sext i8 %68 to i32, !dbg !1537
  %70 = icmp ne i32 %69, 0, !dbg !1537
  br i1 %70, label %71, label %80, !dbg !1538

71:                                               ; preds = %65
  %72 = load ptr, ptr %6, align 8, !dbg !1539
  %73 = getelementptr inbounds i8, ptr %72, i64 1, !dbg !1539
  %74 = load i8, ptr %73, align 1, !dbg !1539
  %75 = sext i8 %74 to i32, !dbg !1539
  %76 = icmp eq i32 %75, 47, !dbg !1540
  br i1 %76, label %77, label %80, !dbg !1541

77:                                               ; preds = %71
  %78 = load ptr, ptr %6, align 8, !dbg !1542
  %79 = getelementptr inbounds i8, ptr %78, i64 2, !dbg !1542
  store ptr %79, ptr %6, align 8, !dbg !1542
  br label %80, !dbg !1543

80:                                               ; preds = %77, %71, %65, %59
  %81 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1544
  %82 = call ptr @getcwd(ptr noundef %81, i64 noundef 1024) #8, !dbg !1546
  %83 = icmp ne ptr %82, null, !dbg !1546
  br i1 %83, label %86, label %84, !dbg !1547

84:                                               ; preds = %80
  %85 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1548
  store i8 0, ptr %85, align 16, !dbg !1549
  br label %86, !dbg !1548

86:                                               ; preds = %84, %80
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1550, metadata !DIExpression()), !dbg !1551
  %87 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1552
  %88 = call i64 @strlen(ptr noundef %87) #10, !dbg !1553
  store i64 %88, ptr %9, align 8, !dbg !1551
  %89 = load i64, ptr %9, align 8, !dbg !1554
  %90 = icmp ult i64 %89, 1024, !dbg !1556
  br i1 %90, label %91, label %107, !dbg !1557

91:                                               ; preds = %86
  %92 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1558
  %93 = load i64, ptr %9, align 8, !dbg !1560
  %94 = getelementptr inbounds i8, ptr %92, i64 %93, !dbg !1561
  %95 = load i64, ptr %9, align 8, !dbg !1562
  %96 = sub i64 1025, %95, !dbg !1563
  %97 = call ptr @strncpy(ptr noundef %94, ptr noundef @.str.37, i64 noundef %96) #8, !dbg !1564
  %98 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1565
  %99 = load i64, ptr %9, align 8, !dbg !1566
  %100 = getelementptr inbounds i8, ptr %98, i64 %99, !dbg !1567
  %101 = getelementptr inbounds i8, ptr %100, i64 1, !dbg !1568
  %102 = load ptr, ptr %6, align 8, !dbg !1569
  %103 = load i64, ptr %9, align 8, !dbg !1570
  %104 = sub i64 1025, %103, !dbg !1571
  %105 = sub i64 %104, 1, !dbg !1572
  %106 = call ptr @strncpy(ptr noundef %101, ptr noundef %102, i64 noundef %105) #8, !dbg !1573
  br label %123, !dbg !1574

107:                                              ; preds = %86
  br label %108, !dbg !1575

108:                                              ; preds = %107
  %109 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1577
  %110 = load ptr, ptr %6, align 8, !dbg !1577
  %111 = icmp ne ptr %109, %110, !dbg !1577
  br i1 %111, label %112, label %121, !dbg !1580

112:                                              ; preds = %108
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1581, metadata !DIExpression()), !dbg !1585
  store i64 1025, ptr %10, align 8, !dbg !1585
  %113 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1585
  %114 = load ptr, ptr %6, align 8, !dbg !1585
  %115 = load i64, ptr %10, align 8, !dbg !1585
  %116 = call ptr @strncpy(ptr noundef %113, ptr noundef %114, i64 noundef %115) #8, !dbg !1585
  %117 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1585
  %118 = load i64, ptr %10, align 8, !dbg !1585
  %119 = sub i64 %118, 1, !dbg !1585
  %120 = getelementptr inbounds i8, ptr %117, i64 %119, !dbg !1585
  store i8 0, ptr %120, align 1, !dbg !1585
  br label %121, !dbg !1586

121:                                              ; preds = %112, %108
  br label %122, !dbg !1580

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122, %91
  %124 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 1024, !dbg !1587
  store i8 0, ptr %124, align 16, !dbg !1588
  br label %125

125:                                              ; preds = %123, %58
  br label %126, !dbg !1589

126:                                              ; preds = %125, %32
  br label %127, !dbg !1590

127:                                              ; preds = %126, %3
  %128 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1591
  %129 = load i8, ptr %128, align 16, !dbg !1591
  %130 = icmp ne i8 %129, 0, !dbg !1591
  br i1 %130, label %131, label %135, !dbg !1593

131:                                              ; preds = %127
  %132 = load ptr, ptr %4, align 8, !dbg !1594
  %133 = load ptr, ptr %5, align 8, !dbg !1596
  %134 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1597
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.38, ptr noundef %132, ptr noundef %133, ptr noundef %134), !dbg !1598
  br label %135, !dbg !1599

135:                                              ; preds = %131, %127
  ret void, !dbg !1600
}

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @find_config_file(ptr noundef %0, i32 noundef %1) #0 !dbg !1601 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1604, metadata !DIExpression()), !dbg !1605
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1606, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1608, metadata !DIExpression()), !dbg !1609
  store ptr null, ptr %6, align 8, !dbg !1609
  %16 = load ptr, ptr %4, align 8, !dbg !1610
  %17 = icmp ne ptr %16, null, !dbg !1610
  br i1 %17, label %18, label %236, !dbg !1612

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 8, !dbg !1613
  %20 = getelementptr inbounds i8, ptr %19, i64 0, !dbg !1613
  %21 = load i8, ptr %20, align 1, !dbg !1613
  %22 = sext i8 %21 to i32, !dbg !1613
  %23 = icmp ne i32 %22, 0, !dbg !1613
  br i1 %23, label %24, label %236, !dbg !1614

24:                                               ; preds = %18
  %25 = load ptr, ptr %4, align 8, !dbg !1615
  %26 = getelementptr inbounds i8, ptr %25, i64 0, !dbg !1615
  %27 = load i8, ptr %26, align 1, !dbg !1615
  %28 = sext i8 %27 to i32, !dbg !1615
  %29 = icmp eq i32 %28, 47, !dbg !1618
  br i1 %29, label %36, label %30, !dbg !1619

30:                                               ; preds = %24
  %31 = load ptr, ptr %4, align 8, !dbg !1620
  %32 = getelementptr inbounds i8, ptr %31, i64 0, !dbg !1620
  %33 = load i8, ptr %32, align 1, !dbg !1620
  %34 = sext i8 %33 to i32, !dbg !1620
  %35 = icmp eq i32 %34, 126, !dbg !1621
  br i1 %35, label %36, label %47, !dbg !1622

36:                                               ; preds = %30, %24
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1623, metadata !DIExpression()), !dbg !1672
  %37 = load ptr, ptr %4, align 8, !dbg !1673
  %38 = call noalias ptr @fopen(ptr noundef %37, ptr noundef @.str.39), !dbg !1674
  store ptr %38, ptr %7, align 8, !dbg !1672
  %39 = load ptr, ptr %7, align 8, !dbg !1675
  %40 = icmp ne ptr %39, null, !dbg !1675
  br i1 %40, label %41, label %46, !dbg !1677

41:                                               ; preds = %36
  %42 = load ptr, ptr %7, align 8, !dbg !1678
  %43 = call i32 @fclose(ptr noundef %42), !dbg !1680
  %44 = load ptr, ptr %4, align 8, !dbg !1681
  %45 = call noalias ptr @strdup(ptr noundef %44) #8, !dbg !1682
  store ptr %45, ptr %6, align 8, !dbg !1683
  br label %46, !dbg !1684

46:                                               ; preds = %41, %36
  br label %221, !dbg !1685

47:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1686, metadata !DIExpression()), !dbg !1688
  store i32 0, ptr %8, align 4, !dbg !1688
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1689, metadata !DIExpression()), !dbg !1690
  %48 = load ptr, ptr %4, align 8, !dbg !1691
  %49 = call i64 @strlen(ptr noundef %48) #10, !dbg !1692
  store i64 %49, ptr %9, align 8, !dbg !1690
  br label %50, !dbg !1693

50:                                               ; preds = %217, %47
  %51 = load i32, ptr %8, align 4, !dbg !1694
  %52 = sext i32 %51 to i64, !dbg !1695
  %53 = getelementptr inbounds [19 x ptr], ptr @config_file_search_dirs, i64 0, i64 %52, !dbg !1695
  %54 = load ptr, ptr %53, align 8, !dbg !1695
  %55 = icmp ne ptr %54, null, !dbg !1693
  br i1 %55, label %56, label %220, !dbg !1693

56:                                               ; preds = %50
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1696, metadata !DIExpression()), !dbg !1698
  %57 = load i32, ptr %8, align 4, !dbg !1699
  %58 = sext i32 %57 to i64, !dbg !1700
  %59 = getelementptr inbounds [19 x ptr], ptr @config_file_search_dirs, i64 0, i64 %58, !dbg !1700
  %60 = load ptr, ptr %59, align 8, !dbg !1700
  %61 = call i64 @strlen(ptr noundef %60) #10, !dbg !1701
  store i64 %61, ptr %10, align 8, !dbg !1698
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1702, metadata !DIExpression()), !dbg !1703
  %62 = load i64, ptr %10, align 8, !dbg !1704
  %63 = load i64, ptr %9, align 8, !dbg !1705
  %64 = add i64 %62, %63, !dbg !1706
  %65 = add i64 %64, 10, !dbg !1707
  %66 = mul i64 1, %65, !dbg !1708
  store i64 %66, ptr %11, align 8, !dbg !1703
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1709, metadata !DIExpression()), !dbg !1710
  %67 = load i64, ptr %11, align 8, !dbg !1711
  %68 = add i64 %67, 1, !dbg !1712
  %69 = call noalias ptr @malloc(i64 noundef %68) #11, !dbg !1713
  store ptr %69, ptr %12, align 8, !dbg !1710
  %70 = load ptr, ptr %12, align 8, !dbg !1714
  %71 = load i32, ptr %8, align 4, !dbg !1715
  %72 = sext i32 %71 to i64, !dbg !1716
  %73 = getelementptr inbounds [19 x ptr], ptr @config_file_search_dirs, i64 0, i64 %72, !dbg !1716
  %74 = load ptr, ptr %73, align 8, !dbg !1716
  %75 = load i64, ptr %11, align 8, !dbg !1717
  %76 = call ptr @strncpy(ptr noundef %70, ptr noundef %74, i64 noundef %75) #8, !dbg !1718
  %77 = load ptr, ptr %12, align 8, !dbg !1719
  %78 = load i64, ptr %10, align 8, !dbg !1720
  %79 = getelementptr inbounds i8, ptr %77, i64 %78, !dbg !1721
  %80 = load ptr, ptr %4, align 8, !dbg !1722
  %81 = load i64, ptr %11, align 8, !dbg !1723
  %82 = load i64, ptr %10, align 8, !dbg !1724
  %83 = sub i64 %81, %82, !dbg !1725
  %84 = call ptr @strncpy(ptr noundef %79, ptr noundef %80, i64 noundef %83) #8, !dbg !1726
  %85 = load ptr, ptr %12, align 8, !dbg !1727
  %86 = load i64, ptr %11, align 8, !dbg !1728
  %87 = getelementptr inbounds i8, ptr %85, i64 %86, !dbg !1727
  store i8 0, ptr %87, align 1, !dbg !1729
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1730, metadata !DIExpression()), !dbg !1731
  %88 = load ptr, ptr %12, align 8, !dbg !1732
  %89 = call noalias ptr @fopen(ptr noundef %88, ptr noundef @.str.39), !dbg !1733
  store ptr %89, ptr %13, align 8, !dbg !1731
  %90 = load ptr, ptr %13, align 8, !dbg !1734
  %91 = icmp ne ptr %90, null, !dbg !1734
  br i1 %91, label %92, label %101, !dbg !1736

92:                                               ; preds = %56
  %93 = load ptr, ptr %13, align 8, !dbg !1737
  %94 = call i32 @fclose(ptr noundef %93), !dbg !1739
  %95 = load i32, ptr %5, align 4, !dbg !1740
  %96 = icmp ne i32 %95, 0, !dbg !1740
  br i1 %96, label %97, label %99, !dbg !1742

97:                                               ; preds = %92
  %98 = load ptr, ptr %12, align 8, !dbg !1743
  call void @print_abs_file_name(ptr noundef @.str.40, ptr noundef @.str.41, ptr noundef %98), !dbg !1744
  br label %99, !dbg !1744

99:                                               ; preds = %97, %92
  %100 = load ptr, ptr %12, align 8, !dbg !1745
  store ptr %100, ptr %6, align 8, !dbg !1746
  br label %220, !dbg !1747

101:                                              ; preds = %56
  %102 = load ptr, ptr %12, align 8, !dbg !1748
  call void @free(ptr noundef %102) #8, !dbg !1749
  %103 = load i32, ptr %8, align 4, !dbg !1750
  %104 = sext i32 %103 to i64, !dbg !1752
  %105 = getelementptr inbounds [19 x ptr], ptr @config_file_search_dirs, i64 0, i64 %104, !dbg !1752
  %106 = load ptr, ptr %105, align 8, !dbg !1752
  %107 = getelementptr inbounds i8, ptr %106, i64 0, !dbg !1752
  %108 = load i8, ptr %107, align 1, !dbg !1752
  %109 = sext i8 %108 to i32, !dbg !1752
  %110 = icmp ne i32 %109, 47, !dbg !1753
  br i1 %110, label %111, label %217, !dbg !1754

111:                                              ; preds = %101
  %112 = load i32, ptr %8, align 4, !dbg !1755
  %113 = sext i32 %112 to i64, !dbg !1756
  %114 = getelementptr inbounds [19 x ptr], ptr @config_file_search_dirs, i64 0, i64 %113, !dbg !1756
  %115 = load ptr, ptr %114, align 8, !dbg !1756
  %116 = getelementptr inbounds i8, ptr %115, i64 0, !dbg !1756
  %117 = load i8, ptr %116, align 1, !dbg !1756
  %118 = sext i8 %117 to i32, !dbg !1756
  %119 = icmp ne i32 %118, 46, !dbg !1757
  br i1 %119, label %120, label %217, !dbg !1758

120:                                              ; preds = %111
  %121 = load ptr, ptr @c_execdir, align 8, !dbg !1759
  %122 = icmp ne ptr %121, null, !dbg !1759
  br i1 %122, label %123, label %217, !dbg !1760

123:                                              ; preds = %120
  %124 = load ptr, ptr @c_execdir, align 8, !dbg !1761
  %125 = getelementptr inbounds i8, ptr %124, i64 0, !dbg !1761
  %126 = load i8, ptr %125, align 1, !dbg !1761
  %127 = sext i8 %126 to i32, !dbg !1761
  %128 = icmp ne i32 %127, 0, !dbg !1761
  br i1 %128, label %129, label %217, !dbg !1762

129:                                              ; preds = %123
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1763, metadata !DIExpression()), !dbg !1765
  %130 = load ptr, ptr @c_execdir, align 8, !dbg !1766
  %131 = call i64 @strlen(ptr noundef %130) #10, !dbg !1767
  store i64 %131, ptr %14, align 8, !dbg !1765
  %132 = load i64, ptr %10, align 8, !dbg !1768
  %133 = load i64, ptr %9, align 8, !dbg !1769
  %134 = add i64 %132, %133, !dbg !1770
  %135 = load i64, ptr %14, align 8, !dbg !1771
  %136 = add i64 %134, %135, !dbg !1772
  %137 = add i64 %136, 10, !dbg !1773
  %138 = mul i64 1, %137, !dbg !1774
  store i64 %138, ptr %11, align 8, !dbg !1775
  %139 = load i64, ptr %11, align 8, !dbg !1776
  %140 = add i64 %139, 1, !dbg !1777
  %141 = call noalias ptr @malloc(i64 noundef %140) #11, !dbg !1778
  store ptr %141, ptr %12, align 8, !dbg !1779
  %142 = load ptr, ptr %12, align 8, !dbg !1780
  %143 = load ptr, ptr @c_execdir, align 8, !dbg !1781
  %144 = load i64, ptr %11, align 8, !dbg !1782
  %145 = call ptr @strncpy(ptr noundef %142, ptr noundef %143, i64 noundef %144) #8, !dbg !1783
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1784, metadata !DIExpression()), !dbg !1785
  %146 = load ptr, ptr %12, align 8, !dbg !1786
  %147 = call i64 @strlen(ptr noundef %146) #10, !dbg !1787
  store i64 %147, ptr %15, align 8, !dbg !1785
  %148 = load i64, ptr %15, align 8, !dbg !1788
  %149 = load i64, ptr %11, align 8, !dbg !1790
  %150 = icmp ult i64 %148, %149, !dbg !1791
  br i1 %150, label %151, label %192, !dbg !1792

151:                                              ; preds = %129
  %152 = load ptr, ptr %12, align 8, !dbg !1793
  %153 = load i64, ptr %15, align 8, !dbg !1795
  %154 = getelementptr inbounds i8, ptr %152, i64 %153, !dbg !1796
  %155 = load i64, ptr %11, align 8, !dbg !1797
  %156 = load i64, ptr %15, align 8, !dbg !1798
  %157 = sub i64 %155, %156, !dbg !1799
  %158 = call ptr @strncpy(ptr noundef %154, ptr noundef @.str.37, i64 noundef %157) #8, !dbg !1800
  %159 = load ptr, ptr %12, align 8, !dbg !1801
  %160 = call i64 @strlen(ptr noundef %159) #10, !dbg !1802
  store i64 %160, ptr %15, align 8, !dbg !1803
  %161 = load i64, ptr %15, align 8, !dbg !1804
  %162 = load i64, ptr %11, align 8, !dbg !1806
  %163 = icmp ult i64 %161, %162, !dbg !1807
  br i1 %163, label %164, label %191, !dbg !1808

164:                                              ; preds = %151
  %165 = load ptr, ptr %12, align 8, !dbg !1809
  %166 = load i64, ptr %15, align 8, !dbg !1811
  %167 = getelementptr inbounds i8, ptr %165, i64 %166, !dbg !1812
  %168 = load i32, ptr %8, align 4, !dbg !1813
  %169 = sext i32 %168 to i64, !dbg !1814
  %170 = getelementptr inbounds [19 x ptr], ptr @config_file_search_dirs, i64 0, i64 %169, !dbg !1814
  %171 = load ptr, ptr %170, align 8, !dbg !1814
  %172 = load i64, ptr %11, align 8, !dbg !1815
  %173 = load i64, ptr %15, align 8, !dbg !1816
  %174 = sub i64 %172, %173, !dbg !1817
  %175 = call ptr @strncpy(ptr noundef %167, ptr noundef %171, i64 noundef %174) #8, !dbg !1818
  %176 = load ptr, ptr %12, align 8, !dbg !1819
  %177 = call i64 @strlen(ptr noundef %176) #10, !dbg !1820
  store i64 %177, ptr %15, align 8, !dbg !1821
  %178 = load i64, ptr %15, align 8, !dbg !1822
  %179 = load i64, ptr %11, align 8, !dbg !1824
  %180 = icmp ult i64 %178, %179, !dbg !1825
  br i1 %180, label %181, label %190, !dbg !1826

181:                                              ; preds = %164
  %182 = load ptr, ptr %12, align 8, !dbg !1827
  %183 = load i64, ptr %15, align 8, !dbg !1829
  %184 = getelementptr inbounds i8, ptr %182, i64 %183, !dbg !1830
  %185 = load ptr, ptr %4, align 8, !dbg !1831
  %186 = load i64, ptr %11, align 8, !dbg !1832
  %187 = load i64, ptr %15, align 8, !dbg !1833
  %188 = sub i64 %186, %187, !dbg !1834
  %189 = call ptr @strncpy(ptr noundef %184, ptr noundef %185, i64 noundef %188) #8, !dbg !1835
  br label %190, !dbg !1836

190:                                              ; preds = %181, %164
  br label %191, !dbg !1837

191:                                              ; preds = %190, %151
  br label %192, !dbg !1838

192:                                              ; preds = %191, %129
  %193 = load ptr, ptr %12, align 8, !dbg !1839
  %194 = load i64, ptr %11, align 8, !dbg !1840
  %195 = getelementptr inbounds i8, ptr %193, i64 %194, !dbg !1839
  store i8 0, ptr %195, align 1, !dbg !1841
  %196 = load ptr, ptr %12, align 8, !dbg !1842
  %197 = call ptr @strstr(ptr noundef %196, ptr noundef @.str.42) #10, !dbg !1844
  %198 = load ptr, ptr %12, align 8, !dbg !1845
  %199 = icmp ne ptr %197, %198, !dbg !1846
  br i1 %199, label %200, label %215, !dbg !1847

200:                                              ; preds = %192
  %201 = load ptr, ptr %12, align 8, !dbg !1848
  %202 = call noalias ptr @fopen(ptr noundef %201, ptr noundef @.str.39), !dbg !1850
  store ptr %202, ptr %13, align 8, !dbg !1851
  %203 = load ptr, ptr %13, align 8, !dbg !1852
  %204 = icmp ne ptr %203, null, !dbg !1852
  br i1 %204, label %205, label %214, !dbg !1854

205:                                              ; preds = %200
  %206 = load ptr, ptr %13, align 8, !dbg !1855
  %207 = call i32 @fclose(ptr noundef %206), !dbg !1857
  %208 = load i32, ptr %5, align 4, !dbg !1858
  %209 = icmp ne i32 %208, 0, !dbg !1858
  br i1 %209, label %210, label %212, !dbg !1860

210:                                              ; preds = %205
  %211 = load ptr, ptr %12, align 8, !dbg !1861
  call void @print_abs_file_name(ptr noundef @.str.40, ptr noundef @.str.41, ptr noundef %211), !dbg !1862
  br label %212, !dbg !1862

212:                                              ; preds = %210, %205
  %213 = load ptr, ptr %12, align 8, !dbg !1863
  store ptr %213, ptr %6, align 8, !dbg !1864
  br label %220, !dbg !1865

214:                                              ; preds = %200
  br label %215, !dbg !1866

215:                                              ; preds = %214, %192
  %216 = load ptr, ptr %12, align 8, !dbg !1867
  call void @free(ptr noundef %216) #8, !dbg !1868
  br label %217, !dbg !1869

217:                                              ; preds = %215, %123, %120, %111, %101
  %218 = load i32, ptr %8, align 4, !dbg !1870
  %219 = add nsw i32 %218, 1, !dbg !1870
  store i32 %219, ptr %8, align 4, !dbg !1870
  br label %50, !dbg !1693, !llvm.loop !1871

220:                                              ; preds = %212, %99, %50
  br label %221

221:                                              ; preds = %220, %46
  %222 = load ptr, ptr %6, align 8, !dbg !1873
  %223 = icmp ne ptr %222, null, !dbg !1873
  br i1 %223, label %235, label %224, !dbg !1875

224:                                              ; preds = %221
  %225 = load ptr, ptr %4, align 8, !dbg !1876
  %226 = call ptr @strstr(ptr noundef %225, ptr noundef @.str.43) #10, !dbg !1879
  %227 = load ptr, ptr %4, align 8, !dbg !1880
  %228 = icmp eq ptr %226, %227, !dbg !1881
  br i1 %228, label %229, label %234, !dbg !1882

229:                                              ; preds = %224
  %230 = load ptr, ptr %4, align 8, !dbg !1883
  %231 = getelementptr inbounds i8, ptr %230, i64 4, !dbg !1885
  %232 = load i32, ptr %5, align 4, !dbg !1886
  %233 = call ptr @find_config_file(ptr noundef %231, i32 noundef %232), !dbg !1887
  store ptr %233, ptr %3, align 8, !dbg !1888
  br label %238, !dbg !1888

234:                                              ; preds = %224
  br label %235, !dbg !1889

235:                                              ; preds = %234, %221
  br label %236, !dbg !1890

236:                                              ; preds = %235, %18, %2
  %237 = load ptr, ptr %6, align 8, !dbg !1891
  store ptr %237, ptr %3, align 8, !dbg !1892
  br label %238, !dbg !1892

238:                                              ; preds = %236, %229
  %239 = load ptr, ptr %3, align 8, !dbg !1893
  ret ptr %239, !dbg !1893
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ignore_sigpipe() #0 !dbg !1894 {
  %1 = call ptr @signal(i32 noundef 13, ptr noundef inttoptr (i64 1 to ptr)) #8, !dbg !1895
  %2 = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !1897
  br i1 %2, label %3, label %4, !dbg !1898

3:                                                ; preds = %0
  call void @perror(ptr noundef @.str.44), !dbg !1899
  br label %4, !dbg !1901

4:                                                ; preds = %3, %0
  ret void, !dbg !1902
}

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @set_system_parameters(i32 noundef %0) #0 !dbg !1903 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rlimit, align 8
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1906, metadata !DIExpression()), !dbg !1907
  %5 = call i64 @turn_getRandTime(), !dbg !1908
  %6 = add i64 %5, zext (i32 ptrtoint (ptr @turn_getRandTime to i32) to i64), !dbg !1909
  %7 = trunc i64 %6 to i32, !dbg !1910
  call void @srandom(i32 noundef %7) #8, !dbg !1911
  %8 = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.45) #8, !dbg !1912
  call void @build_base64_decoding_table(), !dbg !1913
  call void @ignore_sigpipe(), !dbg !1914
  %9 = load i32, ptr %3, align 4, !dbg !1915
  %10 = icmp ne i32 %9, 0, !dbg !1915
  br i1 %10, label %11, label %37, !dbg !1917

11:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1918, metadata !DIExpression()), !dbg !1926
  %12 = call i32 @getrlimit(i32 noundef 7, ptr noundef %4) #8, !dbg !1927
  %13 = icmp slt i32 %12, 0, !dbg !1929
  br i1 %13, label %14, label %15, !dbg !1930

14:                                               ; preds = %11
  call void @perror(ptr noundef @.str.46), !dbg !1931
  br label %36, !dbg !1933

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rlimit, ptr %4, i32 0, i32 1, !dbg !1934
  %17 = load i64, ptr %16, align 8, !dbg !1934
  %18 = getelementptr inbounds %struct.rlimit, ptr %4, i32 0, i32 0, !dbg !1936
  store i64 %17, ptr %18, align 8, !dbg !1937
  br label %19, !dbg !1938

19:                                               ; preds = %28, %15
  %20 = call i32 @setrlimit(i32 noundef 7, ptr noundef %4) #8, !dbg !1939
  %21 = icmp slt i32 %20, 0, !dbg !1940
  br i1 %21, label %22, label %26, !dbg !1941

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rlimit, ptr %4, i32 0, i32 0, !dbg !1942
  %24 = load i64, ptr %23, align 8, !dbg !1942
  %25 = icmp ugt i64 %24, 0, !dbg !1943
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ], !dbg !1944
  br i1 %27, label %28, label %33, !dbg !1938

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.rlimit, ptr %4, i32 0, i32 0, !dbg !1945
  %30 = load i64, ptr %29, align 8, !dbg !1945
  %31 = lshr i64 %30, 1, !dbg !1947
  %32 = getelementptr inbounds %struct.rlimit, ptr %4, i32 0, i32 0, !dbg !1948
  store i64 %31, ptr %32, align 8, !dbg !1949
  br label %19, !dbg !1938, !llvm.loop !1950

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.rlimit, ptr %4, i32 0, i32 0, !dbg !1952
  %35 = load i64, ptr %34, align 8, !dbg !1952
  store i64 %35, ptr %2, align 8, !dbg !1953
  br label %38, !dbg !1953

36:                                               ; preds = %14
  br label %37, !dbg !1954

37:                                               ; preds = %36, %1
  store i64 0, ptr %2, align 8, !dbg !1955
  br label %38, !dbg !1955

38:                                               ; preds = %37, %33
  %39 = load i64, ptr %2, align 8, !dbg !1956
  ret i64 %39, !dbg !1956
}

; Function Attrs: nounwind
declare void @srandom(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @turn_getRandTime() #0 !dbg !1957 {
  %1 = alloca %struct.timespec, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1960, metadata !DIExpression()), !dbg !1968
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 16, i1 false), !dbg !1968
  %4 = call i32 @clock_gettime(i32 noundef 0, ptr noundef %1) #8, !dbg !1969
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1970, metadata !DIExpression()), !dbg !1971
  %5 = getelementptr inbounds %struct.timespec, ptr %1, i32 0, i32 0, !dbg !1972
  %6 = load i64, ptr %5, align 8, !dbg !1972
  store i64 %6, ptr %2, align 8, !dbg !1971
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1973, metadata !DIExpression()), !dbg !1974
  %7 = load i64, ptr %2, align 8, !dbg !1975
  %8 = getelementptr inbounds %struct.timespec, ptr %1, i32 0, i32 1, !dbg !1976
  %9 = load i64, ptr %8, align 8, !dbg !1976
  %10 = add i64 %7, %9, !dbg !1977
  store i64 %10, ptr %3, align 8, !dbg !1974
  %11 = load i64, ptr %3, align 8, !dbg !1978
  ret i64 %11, !dbg !1979
}

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_base64_decoding_table() #0 !dbg !1980 {
  %1 = alloca i32, align 4
  %2 = call noalias ptr @malloc(i64 noundef 256) #11, !dbg !1981
  store ptr %2, ptr @decoding_table, align 8, !dbg !1982
  %3 = load ptr, ptr @decoding_table, align 8, !dbg !1983
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 256, i1 false), !dbg !1984
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1985, metadata !DIExpression()), !dbg !1986
  store i32 0, ptr %1, align 4, !dbg !1987
  br label %4, !dbg !1989

4:                                                ; preds = %17, %0
  %5 = load i32, ptr %1, align 4, !dbg !1990
  %6 = icmp slt i32 %5, 64, !dbg !1992
  br i1 %6, label %7, label %20, !dbg !1993

7:                                                ; preds = %4
  %8 = load i32, ptr %1, align 4, !dbg !1994
  %9 = trunc i32 %8 to i8, !dbg !1995
  %10 = load ptr, ptr @decoding_table, align 8, !dbg !1996
  %11 = load i32, ptr %1, align 4, !dbg !1997
  %12 = sext i32 %11 to i64, !dbg !1998
  %13 = getelementptr inbounds [64 x i8], ptr @encoding_table, i64 0, i64 %12, !dbg !1998
  %14 = load i8, ptr %13, align 1, !dbg !1998
  %15 = zext i8 %14 to i64, !dbg !1996
  %16 = getelementptr inbounds i8, ptr %10, i64 %15, !dbg !1996
  store i8 %9, ptr %16, align 1, !dbg !1999
  br label %17, !dbg !1996

17:                                               ; preds = %7
  %18 = load i32, ptr %1, align 4, !dbg !2000
  %19 = add nsw i32 %18, 1, !dbg !2000
  store i32 %19, ptr %1, align 4, !dbg !2000
  br label %4, !dbg !2001, !llvm.loop !2002

20:                                               ; preds = %4
  ret void, !dbg !2004
}

; Function Attrs: nounwind
declare i32 @getrlimit(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @setrlimit(i32 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @base64_encode(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !2005 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2009, metadata !DIExpression()), !dbg !2010
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2011, metadata !DIExpression()), !dbg !2012
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2013, metadata !DIExpression()), !dbg !2014
  %15 = load i64, ptr %6, align 8, !dbg !2015
  %16 = add i64 %15, 2, !dbg !2016
  %17 = udiv i64 %16, 3, !dbg !2017
  %18 = mul i64 4, %17, !dbg !2018
  %19 = load ptr, ptr %7, align 8, !dbg !2019
  store i64 %18, ptr %19, align 8, !dbg !2020
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2021, metadata !DIExpression()), !dbg !2022
  %20 = load ptr, ptr %7, align 8, !dbg !2023
  %21 = load i64, ptr %20, align 8, !dbg !2024
  %22 = add i64 %21, 1, !dbg !2025
  %23 = call noalias ptr @malloc(i64 noundef %22) #11, !dbg !2026
  store ptr %23, ptr %8, align 8, !dbg !2022
  %24 = load ptr, ptr %8, align 8, !dbg !2027
  %25 = icmp eq ptr %24, null, !dbg !2029
  br i1 %25, label %26, label %27, !dbg !2030

26:                                               ; preds = %3
  store ptr null, ptr %4, align 8, !dbg !2031
  br label %144, !dbg !2031

27:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2032, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2034, metadata !DIExpression()), !dbg !2035
  store i64 0, ptr %9, align 8, !dbg !2036
  store i64 0, ptr %10, align 8, !dbg !2038
  br label %28, !dbg !2039

28:                                               ; preds = %70, %27
  %29 = load i64, ptr %9, align 8, !dbg !2040
  %30 = load i64, ptr %6, align 8, !dbg !2042
  %31 = icmp ult i64 %29, %30, !dbg !2043
  br i1 %31, label %32, label %119, !dbg !2044

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2045, metadata !DIExpression()), !dbg !2047
  %33 = load i64, ptr %9, align 8, !dbg !2048
  %34 = load i64, ptr %6, align 8, !dbg !2049
  %35 = icmp ult i64 %33, %34, !dbg !2050
  br i1 %35, label %36, label %43, !dbg !2048

36:                                               ; preds = %32
  %37 = load ptr, ptr %5, align 8, !dbg !2051
  %38 = load i64, ptr %9, align 8, !dbg !2052
  %39 = add i64 %38, 1, !dbg !2052
  store i64 %39, ptr %9, align 8, !dbg !2052
  %40 = getelementptr inbounds i8, ptr %37, i64 %38, !dbg !2051
  %41 = load i8, ptr %40, align 1, !dbg !2051
  %42 = zext i8 %41 to i32, !dbg !2051
  br label %44, !dbg !2048

43:                                               ; preds = %32
  br label %44, !dbg !2048

44:                                               ; preds = %43, %36
  %45 = phi i32 [ %42, %36 ], [ 0, %43 ], !dbg !2048
  store i32 %45, ptr %11, align 4, !dbg !2047
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2053, metadata !DIExpression()), !dbg !2054
  %46 = load i64, ptr %9, align 8, !dbg !2055
  %47 = load i64, ptr %6, align 8, !dbg !2056
  %48 = icmp ult i64 %46, %47, !dbg !2057
  br i1 %48, label %49, label %56, !dbg !2055

49:                                               ; preds = %44
  %50 = load ptr, ptr %5, align 8, !dbg !2058
  %51 = load i64, ptr %9, align 8, !dbg !2059
  %52 = add i64 %51, 1, !dbg !2059
  store i64 %52, ptr %9, align 8, !dbg !2059
  %53 = getelementptr inbounds i8, ptr %50, i64 %51, !dbg !2058
  %54 = load i8, ptr %53, align 1, !dbg !2058
  %55 = zext i8 %54 to i32, !dbg !2058
  br label %57, !dbg !2055

56:                                               ; preds = %44
  br label %57, !dbg !2055

57:                                               ; preds = %56, %49
  %58 = phi i32 [ %55, %49 ], [ 0, %56 ], !dbg !2055
  store i32 %58, ptr %12, align 4, !dbg !2054
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2060, metadata !DIExpression()), !dbg !2061
  %59 = load i64, ptr %9, align 8, !dbg !2062
  %60 = load i64, ptr %6, align 8, !dbg !2063
  %61 = icmp ult i64 %59, %60, !dbg !2064
  br i1 %61, label %62, label %69, !dbg !2062

62:                                               ; preds = %57
  %63 = load ptr, ptr %5, align 8, !dbg !2065
  %64 = load i64, ptr %9, align 8, !dbg !2066
  %65 = add i64 %64, 1, !dbg !2066
  store i64 %65, ptr %9, align 8, !dbg !2066
  %66 = getelementptr inbounds i8, ptr %63, i64 %64, !dbg !2065
  %67 = load i8, ptr %66, align 1, !dbg !2065
  %68 = zext i8 %67 to i32, !dbg !2065
  br label %70, !dbg !2062

69:                                               ; preds = %57
  br label %70, !dbg !2062

70:                                               ; preds = %69, %62
  %71 = phi i32 [ %68, %62 ], [ 0, %69 ], !dbg !2062
  store i32 %71, ptr %13, align 4, !dbg !2061
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2067, metadata !DIExpression()), !dbg !2068
  %72 = load i32, ptr %11, align 4, !dbg !2069
  %73 = shl i32 %72, 16, !dbg !2070
  %74 = load i32, ptr %12, align 4, !dbg !2071
  %75 = shl i32 %74, 8, !dbg !2072
  %76 = add i32 %73, %75, !dbg !2073
  %77 = load i32, ptr %13, align 4, !dbg !2074
  %78 = add i32 %76, %77, !dbg !2075
  store i32 %78, ptr %14, align 4, !dbg !2068
  %79 = load i32, ptr %14, align 4, !dbg !2076
  %80 = lshr i32 %79, 18, !dbg !2077
  %81 = and i32 %80, 63, !dbg !2078
  %82 = zext i32 %81 to i64, !dbg !2079
  %83 = getelementptr inbounds [64 x i8], ptr @encoding_table, i64 0, i64 %82, !dbg !2079
  %84 = load i8, ptr %83, align 1, !dbg !2079
  %85 = load ptr, ptr %8, align 8, !dbg !2080
  %86 = load i64, ptr %10, align 8, !dbg !2081
  %87 = add i64 %86, 1, !dbg !2081
  store i64 %87, ptr %10, align 8, !dbg !2081
  %88 = getelementptr inbounds i8, ptr %85, i64 %86, !dbg !2080
  store i8 %84, ptr %88, align 1, !dbg !2082
  %89 = load i32, ptr %14, align 4, !dbg !2083
  %90 = lshr i32 %89, 12, !dbg !2084
  %91 = and i32 %90, 63, !dbg !2085
  %92 = zext i32 %91 to i64, !dbg !2086
  %93 = getelementptr inbounds [64 x i8], ptr @encoding_table, i64 0, i64 %92, !dbg !2086
  %94 = load i8, ptr %93, align 1, !dbg !2086
  %95 = load ptr, ptr %8, align 8, !dbg !2087
  %96 = load i64, ptr %10, align 8, !dbg !2088
  %97 = add i64 %96, 1, !dbg !2088
  store i64 %97, ptr %10, align 8, !dbg !2088
  %98 = getelementptr inbounds i8, ptr %95, i64 %96, !dbg !2087
  store i8 %94, ptr %98, align 1, !dbg !2089
  %99 = load i32, ptr %14, align 4, !dbg !2090
  %100 = lshr i32 %99, 6, !dbg !2091
  %101 = and i32 %100, 63, !dbg !2092
  %102 = zext i32 %101 to i64, !dbg !2093
  %103 = getelementptr inbounds [64 x i8], ptr @encoding_table, i64 0, i64 %102, !dbg !2093
  %104 = load i8, ptr %103, align 1, !dbg !2093
  %105 = load ptr, ptr %8, align 8, !dbg !2094
  %106 = load i64, ptr %10, align 8, !dbg !2095
  %107 = add i64 %106, 1, !dbg !2095
  store i64 %107, ptr %10, align 8, !dbg !2095
  %108 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !2094
  store i8 %104, ptr %108, align 1, !dbg !2096
  %109 = load i32, ptr %14, align 4, !dbg !2097
  %110 = lshr i32 %109, 0, !dbg !2098
  %111 = and i32 %110, 63, !dbg !2099
  %112 = zext i32 %111 to i64, !dbg !2100
  %113 = getelementptr inbounds [64 x i8], ptr @encoding_table, i64 0, i64 %112, !dbg !2100
  %114 = load i8, ptr %113, align 1, !dbg !2100
  %115 = load ptr, ptr %8, align 8, !dbg !2101
  %116 = load i64, ptr %10, align 8, !dbg !2102
  %117 = add i64 %116, 1, !dbg !2102
  store i64 %117, ptr %10, align 8, !dbg !2102
  %118 = getelementptr inbounds i8, ptr %115, i64 %116, !dbg !2101
  store i8 %114, ptr %118, align 1, !dbg !2103
  br label %28, !dbg !2104, !llvm.loop !2105

119:                                              ; preds = %28
  store i64 0, ptr %9, align 8, !dbg !2107
  br label %120, !dbg !2109

120:                                              ; preds = %135, %119
  %121 = load i64, ptr %9, align 8, !dbg !2110
  %122 = load i64, ptr %6, align 8, !dbg !2112
  %123 = urem i64 %122, 3, !dbg !2113
  %124 = getelementptr inbounds [3 x i64], ptr @mod_table, i64 0, i64 %123, !dbg !2114
  %125 = load i64, ptr %124, align 8, !dbg !2114
  %126 = icmp ult i64 %121, %125, !dbg !2115
  br i1 %126, label %127, label %138, !dbg !2116

127:                                              ; preds = %120
  %128 = load ptr, ptr %8, align 8, !dbg !2117
  %129 = load ptr, ptr %7, align 8, !dbg !2118
  %130 = load i64, ptr %129, align 8, !dbg !2119
  %131 = sub i64 %130, 1, !dbg !2120
  %132 = load i64, ptr %9, align 8, !dbg !2121
  %133 = sub i64 %131, %132, !dbg !2122
  %134 = getelementptr inbounds i8, ptr %128, i64 %133, !dbg !2117
  store i8 61, ptr %134, align 1, !dbg !2123
  br label %135, !dbg !2117

135:                                              ; preds = %127
  %136 = load i64, ptr %9, align 8, !dbg !2124
  %137 = add i64 %136, 1, !dbg !2124
  store i64 %137, ptr %9, align 8, !dbg !2124
  br label %120, !dbg !2125, !llvm.loop !2126

138:                                              ; preds = %120
  %139 = load ptr, ptr %8, align 8, !dbg !2128
  %140 = load ptr, ptr %7, align 8, !dbg !2129
  %141 = load i64, ptr %140, align 8, !dbg !2130
  %142 = getelementptr inbounds i8, ptr %139, i64 %141, !dbg !2128
  store i8 0, ptr %142, align 1, !dbg !2131
  %143 = load ptr, ptr %8, align 8, !dbg !2132
  store ptr %143, ptr %4, align 8, !dbg !2133
  br label %144, !dbg !2133

144:                                              ; preds = %138, %26
  %145 = load ptr, ptr %4, align 8, !dbg !2134
  ret ptr %145, !dbg !2134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @base64_decode(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !2135 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2138, metadata !DIExpression()), !dbg !2139
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2140, metadata !DIExpression()), !dbg !2141
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2142, metadata !DIExpression()), !dbg !2143
  %16 = load ptr, ptr @decoding_table, align 8, !dbg !2144
  %17 = icmp eq ptr %16, null, !dbg !2146
  br i1 %17, label %18, label %19, !dbg !2147

18:                                               ; preds = %3
  call void @build_base64_decoding_table(), !dbg !2148
  br label %19, !dbg !2148

19:                                               ; preds = %18, %3
  %20 = load i64, ptr %6, align 8, !dbg !2149
  %21 = urem i64 %20, 4, !dbg !2151
  %22 = icmp ne i64 %21, 0, !dbg !2152
  br i1 %22, label %23, label %24, !dbg !2153

23:                                               ; preds = %19
  store ptr null, ptr %4, align 8, !dbg !2154
  br label %225, !dbg !2154

24:                                               ; preds = %19
  %25 = load i64, ptr %6, align 8, !dbg !2155
  %26 = udiv i64 %25, 4, !dbg !2156
  %27 = mul i64 %26, 3, !dbg !2157
  %28 = load ptr, ptr %7, align 8, !dbg !2158
  store i64 %27, ptr %28, align 8, !dbg !2159
  %29 = load ptr, ptr %5, align 8, !dbg !2160
  %30 = load i64, ptr %6, align 8, !dbg !2162
  %31 = sub i64 %30, 1, !dbg !2163
  %32 = getelementptr inbounds i8, ptr %29, i64 %31, !dbg !2160
  %33 = load i8, ptr %32, align 1, !dbg !2160
  %34 = sext i8 %33 to i32, !dbg !2160
  %35 = icmp eq i32 %34, 61, !dbg !2164
  br i1 %35, label %36, label %40, !dbg !2165

36:                                               ; preds = %24
  %37 = load ptr, ptr %7, align 8, !dbg !2166
  %38 = load i64, ptr %37, align 8, !dbg !2167
  %39 = add i64 %38, -1, !dbg !2167
  store i64 %39, ptr %37, align 8, !dbg !2167
  br label %40, !dbg !2168

40:                                               ; preds = %36, %24
  %41 = load ptr, ptr %5, align 8, !dbg !2169
  %42 = load i64, ptr %6, align 8, !dbg !2171
  %43 = sub i64 %42, 2, !dbg !2172
  %44 = getelementptr inbounds i8, ptr %41, i64 %43, !dbg !2169
  %45 = load i8, ptr %44, align 1, !dbg !2169
  %46 = sext i8 %45 to i32, !dbg !2169
  %47 = icmp eq i32 %46, 61, !dbg !2173
  br i1 %47, label %48, label %52, !dbg !2174

48:                                               ; preds = %40
  %49 = load ptr, ptr %7, align 8, !dbg !2175
  %50 = load i64, ptr %49, align 8, !dbg !2176
  %51 = add i64 %50, -1, !dbg !2176
  store i64 %51, ptr %49, align 8, !dbg !2176
  br label %52, !dbg !2177

52:                                               ; preds = %48, %40
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2178, metadata !DIExpression()), !dbg !2179
  %53 = load ptr, ptr %7, align 8, !dbg !2180
  %54 = load i64, ptr %53, align 8, !dbg !2181
  %55 = call noalias ptr @malloc(i64 noundef %54) #11, !dbg !2182
  store ptr %55, ptr %8, align 8, !dbg !2179
  %56 = load ptr, ptr %8, align 8, !dbg !2183
  %57 = icmp eq ptr %56, null, !dbg !2185
  br i1 %57, label %58, label %59, !dbg !2186

58:                                               ; preds = %52
  store ptr null, ptr %4, align 8, !dbg !2187
  br label %225, !dbg !2187

59:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2188, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2190, metadata !DIExpression()), !dbg !2191
  store i32 0, ptr %9, align 4, !dbg !2192
  store i64 0, ptr %10, align 8, !dbg !2194
  br label %60, !dbg !2195

60:                                               ; preds = %222, %59
  %61 = load i32, ptr %9, align 4, !dbg !2196
  %62 = load i64, ptr %6, align 8, !dbg !2198
  %63 = trunc i64 %62 to i32, !dbg !2199
  %64 = icmp slt i32 %61, %63, !dbg !2200
  br i1 %64, label %65, label %223, !dbg !2201

65:                                               ; preds = %60
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2202, metadata !DIExpression()), !dbg !2204
  %66 = load ptr, ptr %5, align 8, !dbg !2205
  %67 = load i32, ptr %9, align 4, !dbg !2206
  %68 = sext i32 %67 to i64, !dbg !2205
  %69 = getelementptr inbounds i8, ptr %66, i64 %68, !dbg !2205
  %70 = load i8, ptr %69, align 1, !dbg !2205
  %71 = sext i8 %70 to i32, !dbg !2205
  %72 = icmp eq i32 %71, 61, !dbg !2207
  br i1 %72, label %73, label %77, !dbg !2205

73:                                               ; preds = %65
  %74 = load i32, ptr %9, align 4, !dbg !2208
  %75 = add nsw i32 %74, 1, !dbg !2208
  store i32 %75, ptr %9, align 4, !dbg !2208
  %76 = and i32 0, %74, !dbg !2209
  br label %90, !dbg !2205

77:                                               ; preds = %65
  %78 = load ptr, ptr @decoding_table, align 8, !dbg !2210
  %79 = load ptr, ptr %5, align 8, !dbg !2211
  %80 = load i32, ptr %9, align 4, !dbg !2212
  %81 = add nsw i32 %80, 1, !dbg !2212
  store i32 %81, ptr %9, align 4, !dbg !2212
  %82 = sext i32 %80 to i64, !dbg !2211
  %83 = getelementptr inbounds i8, ptr %79, i64 %82, !dbg !2211
  %84 = load i8, ptr %83, align 1, !dbg !2211
  %85 = sext i8 %84 to i32, !dbg !2213
  %86 = sext i32 %85 to i64, !dbg !2210
  %87 = getelementptr inbounds i8, ptr %78, i64 %86, !dbg !2210
  %88 = load i8, ptr %87, align 1, !dbg !2210
  %89 = sext i8 %88 to i32, !dbg !2210
  br label %90, !dbg !2205

90:                                               ; preds = %77, %73
  %91 = phi i32 [ %76, %73 ], [ %89, %77 ], !dbg !2205
  store i32 %91, ptr %11, align 4, !dbg !2204
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2214, metadata !DIExpression()), !dbg !2215
  %92 = load ptr, ptr %5, align 8, !dbg !2216
  %93 = load i32, ptr %9, align 4, !dbg !2217
  %94 = sext i32 %93 to i64, !dbg !2216
  %95 = getelementptr inbounds i8, ptr %92, i64 %94, !dbg !2216
  %96 = load i8, ptr %95, align 1, !dbg !2216
  %97 = sext i8 %96 to i32, !dbg !2216
  %98 = icmp eq i32 %97, 61, !dbg !2218
  br i1 %98, label %99, label %103, !dbg !2216

99:                                               ; preds = %90
  %100 = load i32, ptr %9, align 4, !dbg !2219
  %101 = add nsw i32 %100, 1, !dbg !2219
  store i32 %101, ptr %9, align 4, !dbg !2219
  %102 = and i32 0, %100, !dbg !2220
  br label %116, !dbg !2216

103:                                              ; preds = %90
  %104 = load ptr, ptr @decoding_table, align 8, !dbg !2221
  %105 = load ptr, ptr %5, align 8, !dbg !2222
  %106 = load i32, ptr %9, align 4, !dbg !2223
  %107 = add nsw i32 %106, 1, !dbg !2223
  store i32 %107, ptr %9, align 4, !dbg !2223
  %108 = sext i32 %106 to i64, !dbg !2222
  %109 = getelementptr inbounds i8, ptr %105, i64 %108, !dbg !2222
  %110 = load i8, ptr %109, align 1, !dbg !2222
  %111 = sext i8 %110 to i32, !dbg !2224
  %112 = sext i32 %111 to i64, !dbg !2221
  %113 = getelementptr inbounds i8, ptr %104, i64 %112, !dbg !2221
  %114 = load i8, ptr %113, align 1, !dbg !2221
  %115 = sext i8 %114 to i32, !dbg !2221
  br label %116, !dbg !2216

116:                                              ; preds = %103, %99
  %117 = phi i32 [ %102, %99 ], [ %115, %103 ], !dbg !2216
  store i32 %117, ptr %12, align 4, !dbg !2215
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2225, metadata !DIExpression()), !dbg !2226
  %118 = load ptr, ptr %5, align 8, !dbg !2227
  %119 = load i32, ptr %9, align 4, !dbg !2228
  %120 = sext i32 %119 to i64, !dbg !2227
  %121 = getelementptr inbounds i8, ptr %118, i64 %120, !dbg !2227
  %122 = load i8, ptr %121, align 1, !dbg !2227
  %123 = sext i8 %122 to i32, !dbg !2227
  %124 = icmp eq i32 %123, 61, !dbg !2229
  br i1 %124, label %125, label %129, !dbg !2227

125:                                              ; preds = %116
  %126 = load i32, ptr %9, align 4, !dbg !2230
  %127 = add nsw i32 %126, 1, !dbg !2230
  store i32 %127, ptr %9, align 4, !dbg !2230
  %128 = and i32 0, %126, !dbg !2231
  br label %142, !dbg !2227

129:                                              ; preds = %116
  %130 = load ptr, ptr @decoding_table, align 8, !dbg !2232
  %131 = load ptr, ptr %5, align 8, !dbg !2233
  %132 = load i32, ptr %9, align 4, !dbg !2234
  %133 = add nsw i32 %132, 1, !dbg !2234
  store i32 %133, ptr %9, align 4, !dbg !2234
  %134 = sext i32 %132 to i64, !dbg !2233
  %135 = getelementptr inbounds i8, ptr %131, i64 %134, !dbg !2233
  %136 = load i8, ptr %135, align 1, !dbg !2233
  %137 = sext i8 %136 to i32, !dbg !2235
  %138 = sext i32 %137 to i64, !dbg !2232
  %139 = getelementptr inbounds i8, ptr %130, i64 %138, !dbg !2232
  %140 = load i8, ptr %139, align 1, !dbg !2232
  %141 = sext i8 %140 to i32, !dbg !2232
  br label %142, !dbg !2227

142:                                              ; preds = %129, %125
  %143 = phi i32 [ %128, %125 ], [ %141, %129 ], !dbg !2227
  store i32 %143, ptr %13, align 4, !dbg !2226
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2236, metadata !DIExpression()), !dbg !2237
  %144 = load ptr, ptr %5, align 8, !dbg !2238
  %145 = load i32, ptr %9, align 4, !dbg !2239
  %146 = sext i32 %145 to i64, !dbg !2238
  %147 = getelementptr inbounds i8, ptr %144, i64 %146, !dbg !2238
  %148 = load i8, ptr %147, align 1, !dbg !2238
  %149 = sext i8 %148 to i32, !dbg !2238
  %150 = icmp eq i32 %149, 61, !dbg !2240
  br i1 %150, label %151, label %155, !dbg !2238

151:                                              ; preds = %142
  %152 = load i32, ptr %9, align 4, !dbg !2241
  %153 = add nsw i32 %152, 1, !dbg !2241
  store i32 %153, ptr %9, align 4, !dbg !2241
  %154 = and i32 0, %152, !dbg !2242
  br label %168, !dbg !2238

155:                                              ; preds = %142
  %156 = load ptr, ptr @decoding_table, align 8, !dbg !2243
  %157 = load ptr, ptr %5, align 8, !dbg !2244
  %158 = load i32, ptr %9, align 4, !dbg !2245
  %159 = add nsw i32 %158, 1, !dbg !2245
  store i32 %159, ptr %9, align 4, !dbg !2245
  %160 = sext i32 %158 to i64, !dbg !2244
  %161 = getelementptr inbounds i8, ptr %157, i64 %160, !dbg !2244
  %162 = load i8, ptr %161, align 1, !dbg !2244
  %163 = sext i8 %162 to i32, !dbg !2246
  %164 = sext i32 %163 to i64, !dbg !2243
  %165 = getelementptr inbounds i8, ptr %156, i64 %164, !dbg !2243
  %166 = load i8, ptr %165, align 1, !dbg !2243
  %167 = sext i8 %166 to i32, !dbg !2243
  br label %168, !dbg !2238

168:                                              ; preds = %155, %151
  %169 = phi i32 [ %154, %151 ], [ %167, %155 ], !dbg !2238
  store i32 %169, ptr %14, align 4, !dbg !2237
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2247, metadata !DIExpression()), !dbg !2248
  %170 = load i32, ptr %11, align 4, !dbg !2249
  %171 = shl i32 %170, 18, !dbg !2250
  %172 = load i32, ptr %12, align 4, !dbg !2251
  %173 = shl i32 %172, 12, !dbg !2252
  %174 = add i32 %171, %173, !dbg !2253
  %175 = load i32, ptr %13, align 4, !dbg !2254
  %176 = shl i32 %175, 6, !dbg !2255
  %177 = add i32 %174, %176, !dbg !2256
  %178 = load i32, ptr %14, align 4, !dbg !2257
  %179 = shl i32 %178, 0, !dbg !2258
  %180 = add i32 %177, %179, !dbg !2259
  store i32 %180, ptr %15, align 4, !dbg !2248
  %181 = load i64, ptr %10, align 8, !dbg !2260
  %182 = load ptr, ptr %7, align 8, !dbg !2262
  %183 = load i64, ptr %182, align 8, !dbg !2263
  %184 = icmp ult i64 %181, %183, !dbg !2264
  br i1 %184, label %185, label %194, !dbg !2265

185:                                              ; preds = %168
  %186 = load i32, ptr %15, align 4, !dbg !2266
  %187 = lshr i32 %186, 16, !dbg !2267
  %188 = and i32 %187, 255, !dbg !2268
  %189 = trunc i32 %188 to i8, !dbg !2269
  %190 = load ptr, ptr %8, align 8, !dbg !2270
  %191 = load i64, ptr %10, align 8, !dbg !2271
  %192 = add i64 %191, 1, !dbg !2271
  store i64 %192, ptr %10, align 8, !dbg !2271
  %193 = getelementptr inbounds i8, ptr %190, i64 %191, !dbg !2270
  store i8 %189, ptr %193, align 1, !dbg !2272
  br label %194, !dbg !2270

194:                                              ; preds = %185, %168
  %195 = load i64, ptr %10, align 8, !dbg !2273
  %196 = load ptr, ptr %7, align 8, !dbg !2275
  %197 = load i64, ptr %196, align 8, !dbg !2276
  %198 = icmp ult i64 %195, %197, !dbg !2277
  br i1 %198, label %199, label %208, !dbg !2278

199:                                              ; preds = %194
  %200 = load i32, ptr %15, align 4, !dbg !2279
  %201 = lshr i32 %200, 8, !dbg !2280
  %202 = and i32 %201, 255, !dbg !2281
  %203 = trunc i32 %202 to i8, !dbg !2282
  %204 = load ptr, ptr %8, align 8, !dbg !2283
  %205 = load i64, ptr %10, align 8, !dbg !2284
  %206 = add i64 %205, 1, !dbg !2284
  store i64 %206, ptr %10, align 8, !dbg !2284
  %207 = getelementptr inbounds i8, ptr %204, i64 %205, !dbg !2283
  store i8 %203, ptr %207, align 1, !dbg !2285
  br label %208, !dbg !2283

208:                                              ; preds = %199, %194
  %209 = load i64, ptr %10, align 8, !dbg !2286
  %210 = load ptr, ptr %7, align 8, !dbg !2288
  %211 = load i64, ptr %210, align 8, !dbg !2289
  %212 = icmp ult i64 %209, %211, !dbg !2290
  br i1 %212, label %213, label %222, !dbg !2291

213:                                              ; preds = %208
  %214 = load i32, ptr %15, align 4, !dbg !2292
  %215 = lshr i32 %214, 0, !dbg !2293
  %216 = and i32 %215, 255, !dbg !2294
  %217 = trunc i32 %216 to i8, !dbg !2295
  %218 = load ptr, ptr %8, align 8, !dbg !2296
  %219 = load i64, ptr %10, align 8, !dbg !2297
  %220 = add i64 %219, 1, !dbg !2297
  store i64 %220, ptr %10, align 8, !dbg !2297
  %221 = getelementptr inbounds i8, ptr %218, i64 %219, !dbg !2296
  store i8 %217, ptr %221, align 1, !dbg !2298
  br label %222, !dbg !2296

222:                                              ; preds = %213, %208
  br label %60, !dbg !2299, !llvm.loop !2300

223:                                              ; preds = %60
  %224 = load ptr, ptr %8, align 8, !dbg !2302
  store ptr %224, ptr %4, align 8, !dbg !2303
  br label %225, !dbg !2303

225:                                              ; preds = %223, %58, %23
  %226 = load ptr, ptr %4, align 8, !dbg !2304
  ret ptr %226, !dbg !2304
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @turn_get_ssl_method(ptr noundef %0, ptr noundef %1) #0 !dbg !2305 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2308, metadata !DIExpression()), !dbg !2309
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2310, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2312, metadata !DIExpression()), !dbg !2313
  store ptr @.str.47, ptr %5, align 8, !dbg !2313
  %6 = load ptr, ptr %3, align 8, !dbg !2314
  %7 = icmp ne ptr %6, null, !dbg !2314
  br i1 %7, label %10, label %8, !dbg !2316

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !dbg !2317
  store ptr %9, ptr %5, align 8, !dbg !2319
  br label %13, !dbg !2320

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !dbg !2321
  %12 = call ptr @SSL_get_version(ptr noundef %11), !dbg !2323
  store ptr %12, ptr %5, align 8, !dbg !2324
  br label %13

13:                                               ; preds = %10, %8
  %14 = load ptr, ptr %5, align 8, !dbg !2325
  ret ptr %14, !dbg !2326
}

declare ptr @SSL_get_version(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @turn_event_base_new() #0 !dbg !2327 {
  %1 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2332, metadata !DIExpression()), !dbg !2335
  %2 = call ptr @event_config_new(), !dbg !2336
  store ptr %2, ptr %1, align 8, !dbg !2335
  %3 = load ptr, ptr %1, align 8, !dbg !2337
  %4 = call i32 @event_config_set_flag(ptr noundef %3, i32 noundef 16), !dbg !2338
  %5 = load ptr, ptr %1, align 8, !dbg !2339
  %6 = call ptr @event_base_new_with_config(ptr noundef %5), !dbg !2340
  ret ptr %6, !dbg !2341
}

declare ptr @event_config_new() #2

declare i32 @event_config_set_flag(ptr noundef, i32 noundef) #2

declare ptr @event_base_new_with_config(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_oauth_key_data_raw(ptr noundef %0, ptr noundef %1) #0 !dbg !2342 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2377, metadata !DIExpression()), !dbg !2378
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2379, metadata !DIExpression()), !dbg !2380
  %7 = load ptr, ptr %3, align 8, !dbg !2381
  %8 = icmp ne ptr %7, null, !dbg !2381
  br i1 %8, label %9, label %65, !dbg !2383

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !2384
  %11 = icmp ne ptr %10, null, !dbg !2384
  br i1 %11, label %12, label %65, !dbg !2385

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8, !dbg !2386
  call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 480, i1 false), !dbg !2388
  %14 = load ptr, ptr %3, align 8, !dbg !2389
  %15 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %14, i32 0, i32 2, !dbg !2390
  %16 = load i64, ptr %15, align 8, !dbg !2390
  %17 = trunc i64 %16 to i32, !dbg !2391
  %18 = load ptr, ptr %4, align 8, !dbg !2392
  %19 = getelementptr inbounds %struct._oauth_key_data, ptr %18, i32 0, i32 3, !dbg !2393
  store i32 %17, ptr %19, align 8, !dbg !2394
  %20 = load ptr, ptr %3, align 8, !dbg !2395
  %21 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %20, i32 0, i32 3, !dbg !2396
  %22 = load i32, ptr %21, align 8, !dbg !2396
  %23 = load ptr, ptr %4, align 8, !dbg !2397
  %24 = getelementptr inbounds %struct._oauth_key_data, ptr %23, i32 0, i32 4, !dbg !2398
  store i32 %22, ptr %24, align 4, !dbg !2399
  %25 = load ptr, ptr %3, align 8, !dbg !2400
  %26 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %25, i32 0, i32 4, !dbg !2401
  %27 = getelementptr inbounds [65 x i8], ptr %26, i64 0, i64 0, !dbg !2400
  %28 = load ptr, ptr %4, align 8, !dbg !2402
  %29 = getelementptr inbounds %struct._oauth_key_data, ptr %28, i32 0, i32 5, !dbg !2403
  %30 = getelementptr inbounds [65 x i8], ptr %29, i64 0, i64 0, !dbg !2402
  call void @bcopy(ptr noundef %27, ptr noundef %30, i64 noundef 65) #8, !dbg !2404
  %31 = load ptr, ptr %3, align 8, !dbg !2405
  %32 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %31, i32 0, i32 0, !dbg !2406
  %33 = getelementptr inbounds [129 x i8], ptr %32, i64 0, i64 0, !dbg !2405
  %34 = load ptr, ptr %4, align 8, !dbg !2407
  %35 = getelementptr inbounds %struct._oauth_key_data, ptr %34, i32 0, i32 0, !dbg !2408
  %36 = getelementptr inbounds [129 x i8], ptr %35, i64 0, i64 0, !dbg !2407
  call void @bcopy(ptr noundef %33, ptr noundef %36, i64 noundef 129) #8, !dbg !2409
  %37 = load ptr, ptr %3, align 8, !dbg !2410
  %38 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %37, i32 0, i32 1, !dbg !2412
  %39 = getelementptr inbounds [257 x i8], ptr %38, i64 0, i64 0, !dbg !2410
  %40 = load i8, ptr %39, align 1, !dbg !2410
  %41 = icmp ne i8 %40, 0, !dbg !2410
  br i1 %41, label %42, label %64, !dbg !2413

42:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2414, metadata !DIExpression()), !dbg !2416
  store i64 0, ptr %5, align 8, !dbg !2416
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2417, metadata !DIExpression()), !dbg !2418
  %43 = load ptr, ptr %3, align 8, !dbg !2419
  %44 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %43, i32 0, i32 1, !dbg !2420
  %45 = getelementptr inbounds [257 x i8], ptr %44, i64 0, i64 0, !dbg !2419
  %46 = load ptr, ptr %3, align 8, !dbg !2421
  %47 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %46, i32 0, i32 1, !dbg !2422
  %48 = getelementptr inbounds [257 x i8], ptr %47, i64 0, i64 0, !dbg !2421
  %49 = call i64 @strlen(ptr noundef %48) #10, !dbg !2423
  %50 = call ptr @base64_decode(ptr noundef %45, i64 noundef %49, ptr noundef %5), !dbg !2424
  store ptr %50, ptr %6, align 8, !dbg !2418
  %51 = load ptr, ptr %6, align 8, !dbg !2425
  %52 = icmp ne ptr %51, null, !dbg !2425
  br i1 %52, label %53, label %63, !dbg !2427

53:                                               ; preds = %42
  %54 = load ptr, ptr %6, align 8, !dbg !2428
  %55 = load ptr, ptr %4, align 8, !dbg !2430
  %56 = getelementptr inbounds %struct._oauth_key_data, ptr %55, i32 0, i32 1, !dbg !2431
  %57 = getelementptr inbounds [257 x i8], ptr %56, i64 0, i64 0, !dbg !2430
  %58 = load i64, ptr %5, align 8, !dbg !2432
  call void @bcopy(ptr noundef %54, ptr noundef %57, i64 noundef %58) #8, !dbg !2433
  %59 = load i64, ptr %5, align 8, !dbg !2434
  %60 = load ptr, ptr %4, align 8, !dbg !2435
  %61 = getelementptr inbounds %struct._oauth_key_data, ptr %60, i32 0, i32 2, !dbg !2436
  store i64 %59, ptr %61, align 8, !dbg !2437
  %62 = load ptr, ptr %6, align 8, !dbg !2438
  call void @free(ptr noundef %62) #8, !dbg !2439
  br label %63, !dbg !2440

63:                                               ; preds = %53, %42
  br label %64, !dbg !2441

64:                                               ; preds = %63, %12
  br label %65, !dbg !2442

65:                                               ; preds = %64, %9, %2
  ret void, !dbg !2443
}

; Function Attrs: nounwind
declare void @bcopy(ptr noundef, ptr noundef, i64 noundef) #3

declare i64 @SSL_set_options(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!401, !402, !403, !404, !405, !406, !407}
!llvm.ident = !{!408}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "IS_TURN_SERVER", scope: !2, file: !159, line: 65, type: !140, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !112, globals: !156, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/coturn/src/apps/common/apputils.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "ee9b923b2c166e843f26472f8a373109")
!4 = !{!5, !30, !37, !50, !81, !103}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 202, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!9 = !DIEnumerator(name: "MSG_OOB", value: 1)
!10 = !DIEnumerator(name: "MSG_PEEK", value: 2)
!11 = !DIEnumerator(name: "MSG_DONTROUTE", value: 4)
!12 = !DIEnumerator(name: "MSG_CTRUNC", value: 8)
!13 = !DIEnumerator(name: "MSG_PROXY", value: 16)
!14 = !DIEnumerator(name: "MSG_TRUNC", value: 32)
!15 = !DIEnumerator(name: "MSG_DONTWAIT", value: 64)
!16 = !DIEnumerator(name: "MSG_EOR", value: 128)
!17 = !DIEnumerator(name: "MSG_WAITALL", value: 256)
!18 = !DIEnumerator(name: "MSG_FIN", value: 512)
!19 = !DIEnumerator(name: "MSG_SYN", value: 1024)
!20 = !DIEnumerator(name: "MSG_CONFIRM", value: 2048)
!21 = !DIEnumerator(name: "MSG_RST", value: 4096)
!22 = !DIEnumerator(name: "MSG_ERRQUEUE", value: 8192)
!23 = !DIEnumerator(name: "MSG_NOSIGNAL", value: 16384)
!24 = !DIEnumerator(name: "MSG_MORE", value: 32768)
!25 = !DIEnumerator(name: "MSG_WAITFORONE", value: 65536)
!26 = !DIEnumerator(name: "MSG_BATCH", value: 262144)
!27 = !DIEnumerator(name: "MSG_ZEROCOPY", value: 67108864)
!28 = !DIEnumerator(name: "MSG_FASTOPEN", value: 536870912)
!29 = !DIEnumerator(name: "MSG_CMSG_CLOEXEC", value: 1073741824)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 47, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!34 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!35 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!36 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_TYPE", file: !38, line: 85, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!40 = !DIEnumerator(name: "UNKNOWN_SOCKET", value: 0)
!41 = !DIEnumerator(name: "TCP_SOCKET", value: 6)
!42 = !DIEnumerator(name: "UDP_SOCKET", value: 17)
!43 = !DIEnumerator(name: "TLS_SOCKET", value: 56)
!44 = !DIEnumerator(name: "SCTP_SOCKET", value: 132)
!45 = !DIEnumerator(name: "TLS_SCTP_SOCKET", value: 133)
!46 = !DIEnumerator(name: "DTLS_SOCKET", value: 250)
!47 = !DIEnumerator(name: "TCP_SOCKET_PROXY", value: 253)
!48 = !DIEnumerator(name: "TENTATIVE_SCTP_SOCKET", value: 254)
!49 = !DIEnumerator(name: "TENTATIVE_TCP_SOCKET", value: 255)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 40, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!53 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!54 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!55 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!56 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!57 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!58 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!59 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!60 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!61 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!62 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!63 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!64 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!65 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!66 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!67 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!68 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!69 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!70 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!71 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!72 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!73 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!74 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!75 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!76 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!77 = !DIEnumerator(name: "IPPROTO_ETHERNET", value: 143)
!78 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!79 = !DIEnumerator(name: "IPPROTO_MPTCP", value: 262)
!80 = !DIEnumerator(name: "IPPROTO_MAX", value: 263)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rlimit_resource", file: !82, line: 31, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "", checksumkind: CSK_MD5, checksum: "bb0bdc9e7ae341ef435e98e05276a863")
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!84 = !DIEnumerator(name: "RLIMIT_CPU", value: 0)
!85 = !DIEnumerator(name: "RLIMIT_FSIZE", value: 1)
!86 = !DIEnumerator(name: "RLIMIT_DATA", value: 2)
!87 = !DIEnumerator(name: "RLIMIT_STACK", value: 3)
!88 = !DIEnumerator(name: "RLIMIT_CORE", value: 4)
!89 = !DIEnumerator(name: "__RLIMIT_RSS", value: 5)
!90 = !DIEnumerator(name: "RLIMIT_NOFILE", value: 7)
!91 = !DIEnumerator(name: "__RLIMIT_OFILE", value: 7)
!92 = !DIEnumerator(name: "RLIMIT_AS", value: 9)
!93 = !DIEnumerator(name: "__RLIMIT_NPROC", value: 6)
!94 = !DIEnumerator(name: "__RLIMIT_MEMLOCK", value: 8)
!95 = !DIEnumerator(name: "__RLIMIT_LOCKS", value: 10)
!96 = !DIEnumerator(name: "__RLIMIT_SIGPENDING", value: 11)
!97 = !DIEnumerator(name: "__RLIMIT_MSGQUEUE", value: 12)
!98 = !DIEnumerator(name: "__RLIMIT_NICE", value: 13)
!99 = !DIEnumerator(name: "__RLIMIT_RTPRIO", value: 14)
!100 = !DIEnumerator(name: "__RLIMIT_RTTIME", value: 15)
!101 = !DIEnumerator(name: "__RLIMIT_NLIMITS", value: 16)
!102 = !DIEnumerator(name: "__RLIM_NLIMITS", value: 16)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "event_base_config_flag", file: !104, line: 529, baseType: !7, size: 32, elements: !105)
!104 = !DIFile(filename: "/usr/include/event2/event.h", directory: "", checksumkind: CSK_MD5, checksum: "90db4fa73456052afa8984291985dfd5")
!105 = !{!106, !107, !108, !109, !110, !111}
!106 = !DIEnumerator(name: "EVENT_BASE_FLAG_NOLOCK", value: 1)
!107 = !DIEnumerator(name: "EVENT_BASE_FLAG_IGNORE_ENV", value: 2)
!108 = !DIEnumerator(name: "EVENT_BASE_FLAG_STARTUP_IOCP", value: 4)
!109 = !DIEnumerator(name: "EVENT_BASE_FLAG_NO_CACHE_TIME", value: 8)
!110 = !DIEnumerator(name: "EVENT_BASE_FLAG_EPOLL_USE_CHANGELIST", value: 16)
!111 = !DIEnumerator(name: "EVENT_BASE_FLAG_PRECISE_TIMER", value: 32)
!112 = !{!113, !115, !118, !121, !122, !134, !139, !140, !141, !142, !7, !147, !148, !120, !138, !149, !150, !154}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !6, line: 33, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !117, line: 210, baseType: !7)
!117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !6, line: 180, size: 128, elements: !125)
!125 = !{!126, !130}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !124, file: !6, line: 182, baseType: !127, size: 16)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !128, line: 28, baseType: !129)
!128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!129 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !124, file: !6, line: 183, baseType: !131, size: 112, offset: 16)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 112, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 14)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !136, line: 24, baseType: !137)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !117, line: 38, baseType: !138)
!138 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!140 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !143, line: 72, baseType: !144)
!143 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !140}
!147 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!148 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_time_t", file: !151, line: 108, baseType: !152)
!151 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !136, line: 26, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !117, line: 42, baseType: !7)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !136, line: 27, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !117, line: 45, baseType: !148)
!156 = !{!0, !157, !163, !170, !175, !180, !182, !184, !189, !194, !199, !204, !209, !214, !219, !224, !229, !231, !233, !235, !237, !239, !244, !246, !248, !250, !255, !257, !262, !264, !266, !271, !276, !279, !284, !286, !291, !293, !298, !300, !305, !310, !312, !314, !316, !321, !323, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !359, !364, !369, !371, !373, !375, !377, !382, !387, !389, !392, !394, !399}
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !159, line: 76, type: !160, isLocal: true, isDefinition: true)
!159 = !DIFile(filename: "src/apps/common/apputils.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "ee9b923b2c166e843f26472f8a373109")
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 88, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 11)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "buffer", scope: !165, file: !159, line: 86, type: !167, isLocal: true, isDefinition: true)
!165 = distinct !DISubprogram(name: "read_spare_buffer", scope: !159, file: !159, line: 83, type: !145, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!166 = !{}
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 524288, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 65536)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !159, line: 105, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 216, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 27)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !159, line: 106, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 304, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 38)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !159, line: 119, type: !172, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !159, line: 120, type: !177, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !159, line: 169, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 104, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 13)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !159, line: 210, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 512, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 64)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !159, line: 212, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 232, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 29)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !159, line: 246, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 64, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 8)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !159, line: 280, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 40, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 5)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !159, line: 283, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 320, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 40)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !159, line: 325, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 184, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 23)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !159, line: 336, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 144, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 18)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !159, line: 358, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 168, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 21)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !159, line: 369, type: !221, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !159, line: 390, type: !216, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !159, line: 401, type: !221, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !159, line: 420, type: !226, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !159, line: 430, type: !221, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !159, line: 483, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 32, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 4)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !159, line: 485, type: !206, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !159, line: 487, type: !241, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !159, line: 489, type: !201, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !159, line: 491, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 72, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 9)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !159, line: 493, type: !206, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !159, line: 495, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 80, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 10)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !159, line: 497, type: !160, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !159, line: 501, type: !201, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !159, line: 547, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 56, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 7)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !159, line: 548, type: !273, isLocal: true, isDefinition: true)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 192, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 24)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !159, line: 548, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 112, elements: !132)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !159, line: 608, type: !281, isLocal: true, isDefinition: true)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 152, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 19)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !159, line: 629, type: !281, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !159, line: 639, type: !288, isLocal: true, isDefinition: true)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 128, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 16)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !159, line: 669, type: !131, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !159, line: 669, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 120, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 15)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !159, line: 716, type: !288, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !159, line: 727, type: !302, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 256, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 32)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !159, line: 762, type: !307, isLocal: true, isDefinition: true)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 16, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 2)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !159, line: 767, type: !307, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !159, line: 806, type: !226, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !159, line: 816, type: !307, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !159, line: 836, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 8, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 1)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !159, line: 836, type: !268, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !159, line: 861, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 24, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 3)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !159, line: 878, type: !206, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !159, line: 893, type: !172, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !159, line: 913, type: !307, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !159, line: 922, type: !273, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !159, line: 1037, type: !201, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(name: "c_execdir", scope: !2, file: !159, line: 757, type: !141, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !325, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !131, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !259, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !268, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !221, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !131, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !201, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !281, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 120, elements: !296)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 48, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 6)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 136, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 17)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !186, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !288, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !172, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !216, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !379, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 160, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 20)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !384, isLocal: true, isDefinition: true)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 248, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 31)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !159, line: 756, type: !172, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "config_file_search_dirs", scope: !2, file: !159, line: 756, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 1216, elements: !282)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "encoding_table", scope: !2, file: !159, line: 937, type: !191, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "mod_table", scope: !2, file: !159, line: 946, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 192, elements: !326)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !398, line: 46, baseType: !148)
!398 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "decoding_table", scope: !2, file: !159, line: 945, type: !141, isLocal: true, isDefinition: true)
!401 = !{i32 7, !"Dwarf Version", i32 5}
!402 = !{i32 2, !"Debug Info Version", i32 3}
!403 = !{i32 1, !"wchar_size", i32 4}
!404 = !{i32 8, !"PIC Level", i32 2}
!405 = !{i32 7, !"PIE Level", i32 2}
!406 = !{i32 7, !"uwtable", i32 2}
!407 = !{i32 7, !"frame-pointer", i32 2}
!408 = !{!"clang version 16.0.0"}
!409 = distinct !DISubprogram(name: "socket_set_nonblocking", scope: !159, file: !159, line: 69, type: !410, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!410 = !DISubroutineType(types: !411)
!411 = !{!140, !140}
!412 = !DILocalVariable(name: "fd", arg: 1, scope: !409, file: !159, line: 69, type: !140)
!413 = !DILocation(line: 69, column: 44, scope: !409)
!414 = !DILocation(line: 75, column: 15, scope: !415)
!415 = distinct !DILexicalBlock(scope: !409, file: !159, line: 75, column: 9)
!416 = !DILocation(line: 75, column: 9, scope: !415)
!417 = !DILocation(line: 75, column: 40, scope: !415)
!418 = !DILocation(line: 75, column: 9, scope: !409)
!419 = !DILocation(line: 76, column: 9, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !159, line: 75, column: 47)
!421 = !DILocation(line: 77, column: 9, scope: !420)
!422 = !DILocation(line: 80, column: 5, scope: !409)
!423 = !DILocation(line: 81, column: 1, scope: !409)
!424 = !DILocalVariable(name: "fd", arg: 1, scope: !165, file: !159, line: 83, type: !140)
!425 = !DILocation(line: 83, column: 40, scope: !165)
!426 = !DILocation(line: 85, column: 5, scope: !427)
!427 = distinct !DILexicalBlock(scope: !165, file: !159, line: 85, column: 5)
!428 = !DILocation(line: 85, column: 8, scope: !427)
!429 = !DILocation(line: 85, column: 5, scope: !165)
!430 = !DILocation(line: 87, column: 8, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !159, line: 85, column: 14)
!432 = !DILocation(line: 87, column: 3, scope: !431)
!433 = !DILocation(line: 88, column: 2, scope: !431)
!434 = !DILocation(line: 89, column: 1, scope: !165)
!435 = distinct !DISubprogram(name: "set_sock_buf_size", scope: !159, file: !159, line: 91, type: !436, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!436 = !DISubroutineType(types: !437)
!437 = !{!140, !140, !140}
!438 = !DILocalVariable(name: "fd", arg: 1, scope: !435, file: !159, line: 91, type: !140)
!439 = !DILocation(line: 91, column: 39, scope: !435)
!440 = !DILocalVariable(name: "sz0", arg: 2, scope: !435, file: !159, line: 91, type: !140)
!441 = !DILocation(line: 91, column: 47, scope: !435)
!442 = !DILocalVariable(name: "sz", scope: !435, file: !159, line: 93, type: !140)
!443 = !DILocation(line: 93, column: 6, scope: !435)
!444 = !DILocation(line: 95, column: 7, scope: !435)
!445 = !DILocation(line: 95, column: 5, scope: !435)
!446 = !DILocation(line: 96, column: 2, scope: !435)
!447 = !DILocation(line: 96, column: 9, scope: !435)
!448 = !DILocation(line: 96, column: 12, scope: !435)
!449 = !DILocation(line: 97, column: 18, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !159, line: 97, column: 7)
!451 = distinct !DILexicalBlock(scope: !435, file: !159, line: 96, column: 17)
!452 = !DILocation(line: 97, column: 7, scope: !450)
!453 = !DILocation(line: 97, column: 90, scope: !450)
!454 = !DILocation(line: 97, column: 7, scope: !451)
!455 = !DILocation(line: 98, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !450, file: !159, line: 97, column: 95)
!457 = !DILocation(line: 98, column: 12, scope: !456)
!458 = !DILocation(line: 98, column: 7, scope: !456)
!459 = !DILocation(line: 99, column: 3, scope: !456)
!460 = !DILocation(line: 100, column: 4, scope: !461)
!461 = distinct !DILexicalBlock(scope: !450, file: !159, line: 99, column: 10)
!462 = distinct !{!462, !446, !463, !464}
!463 = !DILocation(line: 102, column: 2, scope: !435)
!464 = !{!"llvm.loop.mustprogress"}
!465 = !DILocation(line: 104, column: 6, scope: !466)
!466 = distinct !DILexicalBlock(scope: !435, file: !159, line: 104, column: 6)
!467 = !DILocation(line: 104, column: 9, scope: !466)
!468 = !DILocation(line: 104, column: 6, scope: !435)
!469 = !DILocation(line: 105, column: 3, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !159, line: 104, column: 14)
!471 = !DILocation(line: 106, column: 80, scope: !470)
!472 = !DILocation(line: 106, column: 85, scope: !470)
!473 = !DILocation(line: 106, column: 3, scope: !470)
!474 = !DILocation(line: 107, column: 2, scope: !470)
!475 = !DILocation(line: 109, column: 7, scope: !435)
!476 = !DILocation(line: 109, column: 5, scope: !435)
!477 = !DILocation(line: 110, column: 2, scope: !435)
!478 = !DILocation(line: 110, column: 9, scope: !435)
!479 = !DILocation(line: 110, column: 12, scope: !435)
!480 = !DILocation(line: 111, column: 18, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !159, line: 111, column: 7)
!482 = distinct !DILexicalBlock(scope: !435, file: !159, line: 110, column: 17)
!483 = !DILocation(line: 111, column: 7, scope: !481)
!484 = !DILocation(line: 111, column: 90, scope: !481)
!485 = !DILocation(line: 111, column: 7, scope: !482)
!486 = !DILocation(line: 112, column: 9, scope: !487)
!487 = distinct !DILexicalBlock(scope: !481, file: !159, line: 111, column: 95)
!488 = !DILocation(line: 112, column: 12, scope: !487)
!489 = !DILocation(line: 112, column: 7, scope: !487)
!490 = !DILocation(line: 113, column: 3, scope: !487)
!491 = !DILocation(line: 114, column: 4, scope: !492)
!492 = distinct !DILexicalBlock(scope: !481, file: !159, line: 113, column: 10)
!493 = distinct !{!493, !477, !494, !464}
!494 = !DILocation(line: 116, column: 2, scope: !435)
!495 = !DILocation(line: 118, column: 6, scope: !496)
!496 = distinct !DILexicalBlock(scope: !435, file: !159, line: 118, column: 6)
!497 = !DILocation(line: 118, column: 9, scope: !496)
!498 = !DILocation(line: 118, column: 6, scope: !435)
!499 = !DILocation(line: 119, column: 3, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !159, line: 118, column: 14)
!501 = !DILocation(line: 120, column: 80, scope: !500)
!502 = !DILocation(line: 120, column: 85, scope: !500)
!503 = !DILocation(line: 120, column: 3, scope: !500)
!504 = !DILocation(line: 121, column: 2, scope: !500)
!505 = !DILocation(line: 123, column: 2, scope: !435)
!506 = distinct !DISubprogram(name: "socket_tcp_set_keepalive", scope: !159, file: !159, line: 126, type: !507, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!507 = !DISubroutineType(types: !508)
!508 = !{!140, !140, !509}
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET_TYPE", file: !38, line: 98, baseType: !37)
!510 = !DILocalVariable(name: "fd", arg: 1, scope: !506, file: !159, line: 126, type: !140)
!511 = !DILocation(line: 126, column: 46, scope: !506)
!512 = !DILocalVariable(name: "st", arg: 2, scope: !506, file: !159, line: 126, type: !509)
!513 = !DILocation(line: 126, column: 61, scope: !506)
!514 = !DILocation(line: 128, column: 2, scope: !506)
!515 = !DILocation(line: 128, column: 2, scope: !516)
!516 = distinct !DILexicalBlock(scope: !506, file: !159, line: 128, column: 2)
!517 = !DILocalVariable(name: "on", scope: !518, file: !159, line: 133, type: !140)
!518 = distinct !DILexicalBlock(scope: !506, file: !159, line: 132, column: 2)
!519 = !DILocation(line: 133, column: 7, scope: !518)
!520 = !DILocation(line: 134, column: 14, scope: !518)
!521 = !DILocation(line: 134, column: 3, scope: !518)
!522 = !DILocation(line: 147, column: 5, scope: !506)
!523 = distinct !DISubprogram(name: "socket_set_reusable", scope: !159, file: !159, line: 150, type: !524, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!524 = !DISubroutineType(types: !525)
!525 = !{!140, !140, !140, !509}
!526 = !DILocalVariable(name: "fd", arg: 1, scope: !523, file: !159, line: 150, type: !140)
!527 = !DILocation(line: 150, column: 41, scope: !523)
!528 = !DILocalVariable(name: "flag", arg: 2, scope: !523, file: !159, line: 150, type: !140)
!529 = !DILocation(line: 150, column: 49, scope: !523)
!530 = !DILocalVariable(name: "st", arg: 3, scope: !523, file: !159, line: 150, type: !509)
!531 = !DILocation(line: 150, column: 67, scope: !523)
!532 = !DILocation(line: 152, column: 2, scope: !523)
!533 = !DILocation(line: 152, column: 2, scope: !534)
!534 = distinct !DILexicalBlock(scope: !523, file: !159, line: 152, column: 2)
!535 = !DILocation(line: 154, column: 6, scope: !536)
!536 = distinct !DILexicalBlock(scope: !523, file: !159, line: 154, column: 6)
!537 = !DILocation(line: 154, column: 9, scope: !536)
!538 = !DILocation(line: 154, column: 6, scope: !523)
!539 = !DILocation(line: 155, column: 3, scope: !536)
!540 = !DILocalVariable(name: "use_reuseaddr", scope: !541, file: !159, line: 161, type: !140)
!541 = distinct !DILexicalBlock(scope: !536, file: !159, line: 156, column: 7)
!542 = !DILocation(line: 161, column: 7, scope: !541)
!543 = !DILocation(line: 165, column: 7, scope: !544)
!544 = distinct !DILexicalBlock(scope: !541, file: !159, line: 165, column: 7)
!545 = !DILocation(line: 165, column: 7, scope: !541)
!546 = !DILocalVariable(name: "on", scope: !547, file: !159, line: 166, type: !140)
!547 = distinct !DILexicalBlock(scope: !544, file: !159, line: 165, column: 22)
!548 = !DILocation(line: 166, column: 8, scope: !547)
!549 = !DILocation(line: 166, column: 13, scope: !547)
!550 = !DILocalVariable(name: "ret", scope: !547, file: !159, line: 167, type: !140)
!551 = !DILocation(line: 167, column: 8, scope: !547)
!552 = !DILocation(line: 167, column: 25, scope: !547)
!553 = !DILocation(line: 167, column: 14, scope: !547)
!554 = !DILocation(line: 168, column: 8, scope: !555)
!555 = distinct !DILexicalBlock(scope: !547, file: !159, line: 168, column: 8)
!556 = !DILocation(line: 168, column: 12, scope: !555)
!557 = !DILocation(line: 168, column: 8, scope: !547)
!558 = !DILocation(line: 169, column: 5, scope: !555)
!559 = !DILocation(line: 170, column: 3, scope: !547)
!560 = !DILocation(line: 187, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !541, file: !159, line: 187, column: 7)
!562 = !DILocation(line: 187, column: 7, scope: !541)
!563 = !DILocalVariable(name: "on", scope: !564, file: !159, line: 188, type: !140)
!564 = distinct !DILexicalBlock(scope: !561, file: !159, line: 187, column: 22)
!565 = !DILocation(line: 188, column: 8, scope: !564)
!566 = !DILocation(line: 188, column: 13, scope: !564)
!567 = !DILocation(line: 189, column: 15, scope: !564)
!568 = !DILocation(line: 189, column: 4, scope: !564)
!569 = !DILocation(line: 190, column: 3, scope: !564)
!570 = !DILocation(line: 193, column: 3, scope: !541)
!571 = !DILocation(line: 195, column: 1, scope: !523)
!572 = distinct !DISubprogram(name: "sock_bind_to_device", scope: !159, file: !159, line: 197, type: !573, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!573 = !DISubroutineType(types: !574)
!574 = !{!140, !140, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!577 = !DILocalVariable(name: "fd", arg: 1, scope: !572, file: !159, line: 197, type: !140)
!578 = !DILocation(line: 197, column: 41, scope: !572)
!579 = !DILocalVariable(name: "ifname", arg: 2, scope: !572, file: !159, line: 197, type: !575)
!580 = !DILocation(line: 197, column: 66, scope: !572)
!581 = !DILocation(line: 199, column: 6, scope: !582)
!582 = distinct !DILexicalBlock(scope: !572, file: !159, line: 199, column: 6)
!583 = !DILocation(line: 199, column: 9, scope: !582)
!584 = !DILocation(line: 199, column: 14, scope: !582)
!585 = !DILocation(line: 199, column: 17, scope: !582)
!586 = !DILocation(line: 199, column: 24, scope: !582)
!587 = !DILocation(line: 199, column: 27, scope: !582)
!588 = !DILocation(line: 199, column: 6, scope: !572)
!589 = !DILocalVariable(name: "ifr", scope: !590, file: !159, line: 203, type: !591)
!590 = distinct !DILexicalBlock(scope: !582, file: !159, line: 199, column: 38)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifreq", file: !592, line: 126, size: 320, elements: !593)
!592 = !DIFile(filename: "/usr/include/net/if.h", directory: "", checksumkind: CSK_MD5, checksum: "ef0f4d1e9791a3fdd927ef15876d20ed")
!593 = !{!594, !598}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ifr_ifrn", scope: !591, file: !592, line: 133, baseType: !595, size: 128)
!595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !591, file: !592, line: 130, size: 128, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ifrn_name", scope: !595, file: !592, line: 132, baseType: !288, size: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ifr_ifru", scope: !591, file: !592, line: 149, baseType: !599, size: 192, offset: 128)
!599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !591, file: !592, line: 135, size: 192, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !608, !609, !610, !619, !620, !621}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_addr", scope: !599, file: !592, line: 137, baseType: !124, size: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_dstaddr", scope: !599, file: !592, line: 138, baseType: !124, size: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_broadaddr", scope: !599, file: !592, line: 139, baseType: !124, size: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_netmask", scope: !599, file: !592, line: 140, baseType: !124, size: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_hwaddr", scope: !599, file: !592, line: 141, baseType: !124, size: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_flags", scope: !599, file: !592, line: 142, baseType: !607, size: 16)
!607 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_ivalue", scope: !599, file: !592, line: 143, baseType: !140, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_mtu", scope: !599, file: !592, line: 144, baseType: !140, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_map", scope: !599, file: !592, line: 145, baseType: !611, size: 192)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifmap", file: !592, line: 111, size: 192, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mem_start", scope: !611, file: !592, line: 113, baseType: !148, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mem_end", scope: !611, file: !592, line: 114, baseType: !148, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "base_addr", scope: !611, file: !592, line: 115, baseType: !129, size: 16, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !611, file: !592, line: 116, baseType: !138, size: 8, offset: 144)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !611, file: !592, line: 117, baseType: !138, size: 8, offset: 152)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !611, file: !592, line: 118, baseType: !138, size: 8, offset: 160)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_slave", scope: !599, file: !592, line: 146, baseType: !288, size: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_newname", scope: !599, file: !592, line: 147, baseType: !288, size: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_data", scope: !599, file: !592, line: 148, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !117, line: 204, baseType: !141)
!623 = !DILocation(line: 203, column: 16, scope: !590)
!624 = !DILocation(line: 204, column: 3, scope: !590)
!625 = !DILocation(line: 206, column: 15, scope: !590)
!626 = !DILocation(line: 206, column: 11, scope: !590)
!627 = !DILocation(line: 206, column: 39, scope: !590)
!628 = !DILocation(line: 206, column: 3, scope: !590)
!629 = !DILocation(line: 208, column: 18, scope: !630)
!630 = distinct !DILexicalBlock(scope: !590, file: !159, line: 208, column: 7)
!631 = !DILocation(line: 208, column: 7, scope: !630)
!632 = !DILocation(line: 208, column: 79, scope: !630)
!633 = !DILocation(line: 208, column: 7, scope: !590)
!634 = !DILocation(line: 209, column: 8, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !159, line: 209, column: 8)
!636 = distinct !DILexicalBlock(scope: !630, file: !159, line: 208, column: 84)
!637 = !DILocation(line: 209, column: 14, scope: !635)
!638 = !DILocation(line: 209, column: 8, scope: !636)
!639 = !DILocation(line: 210, column: 5, scope: !635)
!640 = !DILocation(line: 212, column: 5, scope: !635)
!641 = !DILocation(line: 214, column: 4, scope: !636)
!642 = !DILocation(line: 217, column: 3, scope: !590)
!643 = !DILocation(line: 223, column: 2, scope: !572)
!644 = !DILocation(line: 224, column: 1, scope: !572)
!645 = distinct !DISubprogram(name: "addr_connect", scope: !159, file: !159, line: 226, type: !646, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!646 = !DISubroutineType(types: !647)
!647 = !{!140, !140, !648, !689}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !651, line: 48, baseType: !652)
!651 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!652 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !651, line: 44, size: 224, elements: !653)
!653 = !{!654, !655, !670}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !652, file: !651, line: 45, baseType: !124, size: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !652, file: !651, line: 46, baseType: !656, size: 128)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !51, line: 245, size: 128, elements: !657)
!657 = !{!658, !659, !663, !668}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !656, file: !51, line: 247, baseType: !127, size: 16)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !656, file: !51, line: 248, baseType: !660, size: 16, offset: 16)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !51, line: 123, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !136, line: 25, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !117, line: 40, baseType: !129)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !656, file: !51, line: 249, baseType: !664, size: 32, offset: 32)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !51, line: 31, size: 32, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !664, file: !51, line: 33, baseType: !667, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !51, line: 30, baseType: !152)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !656, file: !51, line: 252, baseType: !669, size: 64, offset: 64)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !202)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !652, file: !651, line: 47, baseType: !671, size: 224)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !51, line: 260, size: 224, elements: !672)
!672 = !{!673, !674, !675, !676, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !671, file: !51, line: 262, baseType: !127, size: 16)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !671, file: !51, line: 263, baseType: !660, size: 16, offset: 16)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !671, file: !51, line: 264, baseType: !152, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !671, file: !51, line: 265, baseType: !677, size: 128, offset: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !51, line: 219, size: 128, elements: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !677, file: !51, line: 226, baseType: !680, size: 128)
!680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !51, line: 221, size: 128, elements: !681)
!681 = !{!682, !684, !686}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !680, file: !51, line: 223, baseType: !683, size: 128)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, elements: !289)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !680, file: !51, line: 224, baseType: !685, size: 128)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 128, elements: !202)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !680, file: !51, line: 225, baseType: !687, size: 128)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !242)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !671, file: !51, line: 266, baseType: !152, size: 32, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!690 = !DILocalVariable(name: "fd", arg: 1, scope: !645, file: !159, line: 226, type: !140)
!691 = !DILocation(line: 226, column: 34, scope: !645)
!692 = !DILocalVariable(name: "addr", arg: 2, scope: !645, file: !159, line: 226, type: !648)
!693 = !DILocation(line: 226, column: 54, scope: !645)
!694 = !DILocalVariable(name: "out_errno", arg: 3, scope: !645, file: !159, line: 226, type: !689)
!695 = !DILocation(line: 226, column: 65, scope: !645)
!696 = !DILocation(line: 228, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !645, file: !159, line: 228, column: 6)
!698 = !DILocation(line: 228, column: 12, scope: !697)
!699 = !DILocation(line: 228, column: 15, scope: !697)
!700 = !DILocation(line: 228, column: 18, scope: !697)
!701 = !DILocation(line: 228, column: 6, scope: !645)
!702 = !DILocation(line: 229, column: 3, scope: !697)
!703 = !DILocalVariable(name: "err", scope: !704, file: !159, line: 231, type: !140)
!704 = distinct !DILexicalBlock(scope: !697, file: !159, line: 230, column: 7)
!705 = !DILocation(line: 231, column: 7, scope: !704)
!706 = !DILocation(line: 232, column: 3, scope: !704)
!707 = !DILocation(line: 233, column: 8, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !159, line: 233, column: 8)
!709 = distinct !DILexicalBlock(scope: !704, file: !159, line: 232, column: 6)
!710 = !DILocation(line: 233, column: 17, scope: !708)
!711 = !DILocation(line: 233, column: 27, scope: !708)
!712 = !DILocation(line: 233, column: 8, scope: !709)
!713 = !DILocation(line: 234, column: 19, scope: !714)
!714 = distinct !DILexicalBlock(scope: !708, file: !159, line: 233, column: 39)
!715 = !DILocation(line: 234, column: 49, scope: !714)
!716 = !DILocation(line: 234, column: 11, scope: !714)
!717 = !DILocation(line: 234, column: 9, scope: !714)
!718 = !DILocation(line: 235, column: 4, scope: !714)
!719 = !DILocation(line: 235, column: 15, scope: !720)
!720 = distinct !DILexicalBlock(scope: !708, file: !159, line: 235, column: 15)
!721 = !DILocation(line: 235, column: 24, scope: !720)
!722 = !DILocation(line: 235, column: 34, scope: !720)
!723 = !DILocation(line: 235, column: 15, scope: !708)
!724 = !DILocation(line: 236, column: 19, scope: !725)
!725 = distinct !DILexicalBlock(scope: !720, file: !159, line: 235, column: 47)
!726 = !DILocation(line: 236, column: 49, scope: !725)
!727 = !DILocation(line: 236, column: 11, scope: !725)
!728 = !DILocation(line: 236, column: 9, scope: !725)
!729 = !DILocation(line: 237, column: 4, scope: !725)
!730 = !DILocation(line: 238, column: 5, scope: !731)
!731 = distinct !DILexicalBlock(scope: !720, file: !159, line: 237, column: 11)
!732 = !DILocation(line: 240, column: 3, scope: !709)
!733 = !DILocation(line: 240, column: 12, scope: !704)
!734 = !DILocation(line: 240, column: 16, scope: !704)
!735 = !DILocation(line: 240, column: 20, scope: !704)
!736 = !DILocation(line: 240, column: 23, scope: !704)
!737 = !DILocation(line: 240, column: 29, scope: !704)
!738 = !DILocation(line: 0, scope: !704)
!739 = distinct !{!739, !706, !740, !464}
!740 = !DILocation(line: 240, column: 37, scope: !704)
!741 = !DILocation(line: 242, column: 6, scope: !742)
!742 = distinct !DILexicalBlock(scope: !704, file: !159, line: 242, column: 6)
!743 = !DILocation(line: 242, column: 6, scope: !704)
!744 = !DILocation(line: 243, column: 18, scope: !742)
!745 = !DILocation(line: 243, column: 6, scope: !742)
!746 = !DILocation(line: 243, column: 16, scope: !742)
!747 = !DILocation(line: 243, column: 5, scope: !742)
!748 = !DILocation(line: 245, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !704, file: !159, line: 245, column: 7)
!750 = !DILocation(line: 245, column: 11, scope: !749)
!751 = !DILocation(line: 245, column: 15, scope: !749)
!752 = !DILocation(line: 245, column: 18, scope: !749)
!753 = !DILocation(line: 245, column: 24, scope: !749)
!754 = !DILocation(line: 245, column: 7, scope: !704)
!755 = !DILocation(line: 246, column: 4, scope: !749)
!756 = !DILocation(line: 248, column: 10, scope: !704)
!757 = !DILocation(line: 248, column: 3, scope: !704)
!758 = !DILocation(line: 250, column: 1, scope: !645)
!759 = distinct !DISubprogram(name: "addr_bind", scope: !159, file: !159, line: 252, type: !760, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!760 = !DISubroutineType(types: !761)
!761 = !{!140, !140, !648, !140, !140, !509}
!762 = !DILocalVariable(name: "fd", arg: 1, scope: !759, file: !159, line: 252, type: !140)
!763 = !DILocation(line: 252, column: 31, scope: !759)
!764 = !DILocalVariable(name: "addr", arg: 2, scope: !759, file: !159, line: 252, type: !648)
!765 = !DILocation(line: 252, column: 51, scope: !759)
!766 = !DILocalVariable(name: "reusable", arg: 3, scope: !759, file: !159, line: 252, type: !140)
!767 = !DILocation(line: 252, column: 61, scope: !759)
!768 = !DILocalVariable(name: "debug", arg: 4, scope: !759, file: !159, line: 252, type: !140)
!769 = !DILocation(line: 252, column: 75, scope: !759)
!770 = !DILocalVariable(name: "st", arg: 5, scope: !759, file: !159, line: 252, type: !509)
!771 = !DILocation(line: 252, column: 94, scope: !759)
!772 = !DILocation(line: 254, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !759, file: !159, line: 254, column: 6)
!774 = !DILocation(line: 254, column: 12, scope: !773)
!775 = !DILocation(line: 254, column: 15, scope: !773)
!776 = !DILocation(line: 254, column: 18, scope: !773)
!777 = !DILocation(line: 254, column: 6, scope: !759)
!778 = !DILocation(line: 256, column: 3, scope: !779)
!779 = distinct !DILexicalBlock(scope: !773, file: !159, line: 254, column: 23)
!780 = !DILocalVariable(name: "ret", scope: !781, file: !159, line: 260, type: !140)
!781 = distinct !DILexicalBlock(scope: !773, file: !159, line: 258, column: 9)
!782 = !DILocation(line: 260, column: 7, scope: !781)
!783 = !DILocation(line: 262, column: 23, scope: !781)
!784 = !DILocation(line: 262, column: 27, scope: !781)
!785 = !DILocation(line: 262, column: 37, scope: !781)
!786 = !DILocation(line: 262, column: 3, scope: !781)
!787 = !DILocation(line: 264, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !781, file: !159, line: 264, column: 7)
!789 = !DILocation(line: 264, column: 16, scope: !788)
!790 = !DILocation(line: 264, column: 26, scope: !788)
!791 = !DILocation(line: 264, column: 7, scope: !781)
!792 = !DILocation(line: 265, column: 4, scope: !793)
!793 = distinct !DILexicalBlock(scope: !788, file: !159, line: 264, column: 38)
!794 = !DILocation(line: 266, column: 16, scope: !795)
!795 = distinct !DILexicalBlock(scope: !793, file: !159, line: 265, column: 7)
!796 = !DILocation(line: 266, column: 46, scope: !795)
!797 = !DILocation(line: 266, column: 11, scope: !795)
!798 = !DILocation(line: 266, column: 9, scope: !795)
!799 = !DILocation(line: 267, column: 4, scope: !795)
!800 = !DILocation(line: 267, column: 13, scope: !793)
!801 = !DILocation(line: 267, column: 17, scope: !793)
!802 = !DILocation(line: 267, column: 21, scope: !793)
!803 = !DILocation(line: 267, column: 24, scope: !793)
!804 = !DILocation(line: 267, column: 30, scope: !793)
!805 = !DILocation(line: 0, scope: !793)
!806 = distinct !{!806, !792, !807, !464}
!807 = !DILocation(line: 267, column: 38, scope: !793)
!808 = !DILocation(line: 268, column: 3, scope: !793)
!809 = !DILocation(line: 268, column: 14, scope: !810)
!810 = distinct !DILexicalBlock(scope: !788, file: !159, line: 268, column: 14)
!811 = !DILocation(line: 268, column: 23, scope: !810)
!812 = !DILocation(line: 268, column: 33, scope: !810)
!813 = !DILocation(line: 268, column: 14, scope: !788)
!814 = !DILocalVariable(name: "off", scope: !815, file: !159, line: 269, type: !816)
!815 = distinct !DILexicalBlock(scope: !810, file: !159, line: 268, column: 46)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!817 = !DILocation(line: 269, column: 14, scope: !815)
!818 = !DILocation(line: 270, column: 15, scope: !815)
!819 = !DILocation(line: 270, column: 4, scope: !815)
!820 = !DILocation(line: 271, column: 4, scope: !815)
!821 = !DILocation(line: 272, column: 16, scope: !822)
!822 = distinct !DILexicalBlock(scope: !815, file: !159, line: 271, column: 7)
!823 = !DILocation(line: 272, column: 46, scope: !822)
!824 = !DILocation(line: 272, column: 11, scope: !822)
!825 = !DILocation(line: 272, column: 9, scope: !822)
!826 = !DILocation(line: 273, column: 4, scope: !822)
!827 = !DILocation(line: 273, column: 13, scope: !815)
!828 = !DILocation(line: 273, column: 17, scope: !815)
!829 = !DILocation(line: 273, column: 21, scope: !815)
!830 = !DILocation(line: 273, column: 24, scope: !815)
!831 = !DILocation(line: 273, column: 30, scope: !815)
!832 = !DILocation(line: 0, scope: !815)
!833 = distinct !{!833, !820, !834, !464}
!834 = !DILocation(line: 273, column: 38, scope: !815)
!835 = !DILocation(line: 274, column: 3, scope: !815)
!836 = !DILocation(line: 275, column: 4, scope: !837)
!837 = distinct !DILexicalBlock(scope: !810, file: !159, line: 274, column: 10)
!838 = !DILocation(line: 277, column: 6, scope: !839)
!839 = distinct !DILexicalBlock(scope: !781, file: !159, line: 277, column: 6)
!840 = !DILocation(line: 277, column: 9, scope: !839)
!841 = !DILocation(line: 277, column: 6, scope: !781)
!842 = !DILocation(line: 278, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !159, line: 278, column: 7)
!844 = distinct !DILexicalBlock(scope: !839, file: !159, line: 277, column: 13)
!845 = !DILocation(line: 278, column: 7, scope: !844)
!846 = !DILocalVariable(name: "err", scope: !847, file: !159, line: 279, type: !140)
!847 = distinct !DILexicalBlock(scope: !843, file: !159, line: 278, column: 14)
!848 = !DILocation(line: 279, column: 9, scope: !847)
!849 = !DILocation(line: 279, column: 15, scope: !847)
!850 = !DILocation(line: 280, column: 5, scope: !847)
!851 = !DILocalVariable(name: "str", scope: !847, file: !159, line: 281, type: !852)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 1032, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 129)
!855 = !DILocation(line: 281, column: 10, scope: !847)
!856 = !DILocation(line: 282, column: 20, scope: !847)
!857 = !DILocation(line: 282, column: 35, scope: !847)
!858 = !DILocation(line: 282, column: 5, scope: !847)
!859 = !DILocation(line: 283, column: 87, scope: !847)
!860 = !DILocation(line: 283, column: 91, scope: !847)
!861 = !DILocation(line: 283, column: 96, scope: !847)
!862 = !DILocation(line: 283, column: 5, scope: !847)
!863 = !DILocation(line: 284, column: 4, scope: !847)
!864 = !DILocation(line: 285, column: 3, scope: !844)
!865 = !DILocation(line: 286, column: 10, scope: !781)
!866 = !DILocation(line: 286, column: 3, scope: !781)
!867 = !DILocation(line: 288, column: 1, scope: !759)
!868 = distinct !DISubprogram(name: "addr_get_from_sock", scope: !159, file: !159, line: 290, type: !869, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!869 = !DISubroutineType(types: !870)
!870 = !{!140, !140, !871}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!872 = !DILocalVariable(name: "fd", arg: 1, scope: !868, file: !159, line: 290, type: !140)
!873 = !DILocation(line: 290, column: 40, scope: !868)
!874 = !DILocalVariable(name: "addr", arg: 2, scope: !868, file: !159, line: 290, type: !871)
!875 = !DILocation(line: 290, column: 54, scope: !868)
!876 = !DILocation(line: 293, column: 6, scope: !877)
!877 = distinct !DILexicalBlock(scope: !868, file: !159, line: 293, column: 6)
!878 = !DILocation(line: 293, column: 9, scope: !877)
!879 = !DILocation(line: 293, column: 13, scope: !877)
!880 = !DILocation(line: 293, column: 17, scope: !877)
!881 = !DILocation(line: 293, column: 6, scope: !868)
!882 = !DILocation(line: 294, column: 3, scope: !877)
!883 = !DILocalVariable(name: "a", scope: !884, file: !159, line: 297, type: !650)
!884 = distinct !DILexicalBlock(scope: !877, file: !159, line: 295, column: 7)
!885 = !DILocation(line: 297, column: 12, scope: !884)
!886 = !DILocation(line: 298, column: 8, scope: !884)
!887 = !DILocation(line: 298, column: 18, scope: !884)
!888 = !DILocalVariable(name: "socklen", scope: !884, file: !159, line: 299, type: !115)
!889 = !DILocation(line: 299, column: 13, scope: !884)
!890 = !DILocation(line: 299, column: 23, scope: !884)
!891 = !DILocation(line: 300, column: 19, scope: !892)
!892 = distinct !DILexicalBlock(scope: !884, file: !159, line: 300, column: 7)
!893 = !DILocation(line: 300, column: 7, scope: !892)
!894 = !DILocation(line: 300, column: 56, scope: !892)
!895 = !DILocation(line: 300, column: 7, scope: !884)
!896 = !DILocation(line: 301, column: 9, scope: !897)
!897 = distinct !DILexicalBlock(scope: !892, file: !159, line: 300, column: 61)
!898 = !DILocation(line: 301, column: 19, scope: !897)
!899 = !DILocation(line: 302, column: 14, scope: !897)
!900 = !DILocation(line: 302, column: 12, scope: !897)
!901 = !DILocation(line: 303, column: 20, scope: !902)
!902 = distinct !DILexicalBlock(scope: !897, file: !159, line: 303, column: 8)
!903 = !DILocation(line: 303, column: 8, scope: !902)
!904 = !DILocation(line: 303, column: 57, scope: !902)
!905 = !DILocation(line: 303, column: 8, scope: !897)
!906 = !DILocation(line: 304, column: 5, scope: !907)
!907 = distinct !DILexicalBlock(scope: !902, file: !159, line: 303, column: 62)
!908 = !DILocation(line: 306, column: 3, scope: !897)
!909 = !DILocation(line: 308, column: 12, scope: !884)
!910 = !DILocation(line: 308, column: 3, scope: !884)
!911 = !DILocation(line: 310, column: 3, scope: !884)
!912 = !DILocation(line: 312, column: 1, scope: !868)
!913 = distinct !DISubprogram(name: "get_raw_socket_ttl", scope: !159, file: !159, line: 314, type: !436, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!914 = !DILocalVariable(name: "fd", arg: 1, scope: !913, file: !159, line: 314, type: !140)
!915 = !DILocation(line: 314, column: 40, scope: !913)
!916 = !DILocalVariable(name: "family", arg: 2, scope: !913, file: !159, line: 314, type: !140)
!917 = !DILocation(line: 314, column: 48, scope: !913)
!918 = !DILocalVariable(name: "ttl", scope: !913, file: !159, line: 316, type: !140)
!919 = !DILocation(line: 316, column: 6, scope: !913)
!920 = !DILocation(line: 318, column: 5, scope: !921)
!921 = distinct !DILexicalBlock(scope: !913, file: !159, line: 318, column: 5)
!922 = !DILocation(line: 318, column: 12, scope: !921)
!923 = !DILocation(line: 318, column: 5, scope: !913)
!924 = !DILocalVariable(name: "slen", scope: !925, file: !159, line: 323, type: !115)
!925 = distinct !DILexicalBlock(scope: !921, file: !159, line: 318, column: 25)
!926 = !DILocation(line: 323, column: 13, scope: !925)
!927 = !DILocation(line: 324, column: 17, scope: !928)
!928 = distinct !DILexicalBlock(scope: !925, file: !159, line: 324, column: 6)
!929 = !DILocation(line: 324, column: 6, scope: !928)
!930 = !DILocation(line: 324, column: 65, scope: !928)
!931 = !DILocation(line: 324, column: 6, scope: !925)
!932 = !DILocation(line: 325, column: 4, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !159, line: 324, column: 69)
!934 = !DILocation(line: 326, column: 4, scope: !933)
!935 = !DILocation(line: 329, column: 2, scope: !925)
!936 = !DILocalVariable(name: "slen", scope: !937, file: !159, line: 334, type: !115)
!937 = distinct !DILexicalBlock(scope: !921, file: !159, line: 329, column: 9)
!938 = !DILocation(line: 334, column: 13, scope: !937)
!939 = !DILocation(line: 335, column: 17, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !159, line: 335, column: 6)
!941 = !DILocation(line: 335, column: 6, scope: !940)
!942 = !DILocation(line: 335, column: 52, scope: !940)
!943 = !DILocation(line: 335, column: 6, scope: !937)
!944 = !DILocation(line: 336, column: 4, scope: !945)
!945 = distinct !DILexicalBlock(scope: !940, file: !159, line: 335, column: 56)
!946 = !DILocation(line: 337, column: 4, scope: !945)
!947 = !DILocation(line: 342, column: 2, scope: !913)
!948 = !DILocation(line: 342, column: 2, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !159, line: 342, column: 2)
!950 = distinct !DILexicalBlock(scope: !913, file: !159, line: 342, column: 2)
!951 = !DILocation(line: 342, column: 2, scope: !950)
!952 = !DILocation(line: 344, column: 9, scope: !913)
!953 = !DILocation(line: 344, column: 2, scope: !913)
!954 = !DILocation(line: 345, column: 1, scope: !913)
!955 = distinct !DISubprogram(name: "get_raw_socket_tos", scope: !159, file: !159, line: 347, type: !436, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!956 = !DILocalVariable(name: "fd", arg: 1, scope: !955, file: !159, line: 347, type: !140)
!957 = !DILocation(line: 347, column: 40, scope: !955)
!958 = !DILocalVariable(name: "family", arg: 2, scope: !955, file: !159, line: 347, type: !140)
!959 = !DILocation(line: 347, column: 48, scope: !955)
!960 = !DILocalVariable(name: "tos", scope: !955, file: !159, line: 349, type: !140)
!961 = !DILocation(line: 349, column: 6, scope: !955)
!962 = !DILocation(line: 351, column: 5, scope: !963)
!963 = distinct !DILexicalBlock(scope: !955, file: !159, line: 351, column: 5)
!964 = !DILocation(line: 351, column: 12, scope: !963)
!965 = !DILocation(line: 351, column: 5, scope: !955)
!966 = !DILocalVariable(name: "slen", scope: !967, file: !159, line: 356, type: !115)
!967 = distinct !DILexicalBlock(scope: !963, file: !159, line: 351, column: 25)
!968 = !DILocation(line: 356, column: 13, scope: !967)
!969 = !DILocation(line: 357, column: 17, scope: !970)
!970 = distinct !DILexicalBlock(scope: !967, file: !159, line: 357, column: 6)
!971 = !DILocation(line: 357, column: 6, scope: !970)
!972 = !DILocation(line: 357, column: 59, scope: !970)
!973 = !DILocation(line: 357, column: 6, scope: !967)
!974 = !DILocation(line: 358, column: 4, scope: !975)
!975 = distinct !DILexicalBlock(scope: !970, file: !159, line: 357, column: 63)
!976 = !DILocation(line: 359, column: 4, scope: !975)
!977 = !DILocation(line: 362, column: 2, scope: !967)
!978 = !DILocalVariable(name: "slen", scope: !979, file: !159, line: 367, type: !115)
!979 = distinct !DILexicalBlock(scope: !963, file: !159, line: 362, column: 9)
!980 = !DILocation(line: 367, column: 13, scope: !979)
!981 = !DILocation(line: 368, column: 17, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !159, line: 368, column: 6)
!983 = !DILocation(line: 368, column: 6, scope: !982)
!984 = !DILocation(line: 368, column: 52, scope: !982)
!985 = !DILocation(line: 368, column: 6, scope: !979)
!986 = !DILocation(line: 369, column: 4, scope: !987)
!987 = distinct !DILexicalBlock(scope: !982, file: !159, line: 368, column: 56)
!988 = !DILocation(line: 370, column: 4, scope: !987)
!989 = !DILocation(line: 375, column: 2, scope: !955)
!990 = !DILocation(line: 375, column: 2, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !159, line: 375, column: 2)
!992 = distinct !DILexicalBlock(scope: !955, file: !159, line: 375, column: 2)
!993 = !DILocation(line: 375, column: 2, scope: !992)
!994 = !DILocation(line: 377, column: 9, scope: !955)
!995 = !DILocation(line: 377, column: 2, scope: !955)
!996 = !DILocation(line: 378, column: 1, scope: !955)
!997 = distinct !DISubprogram(name: "set_raw_socket_ttl", scope: !159, file: !159, line: 380, type: !998, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!998 = !DISubroutineType(types: !999)
!999 = !{!140, !140, !140, !140}
!1000 = !DILocalVariable(name: "fd", arg: 1, scope: !997, file: !159, line: 380, type: !140)
!1001 = !DILocation(line: 380, column: 40, scope: !997)
!1002 = !DILocalVariable(name: "family", arg: 2, scope: !997, file: !159, line: 380, type: !140)
!1003 = !DILocation(line: 380, column: 48, scope: !997)
!1004 = !DILocalVariable(name: "ttl", arg: 3, scope: !997, file: !159, line: 380, type: !140)
!1005 = !DILocation(line: 380, column: 60, scope: !997)
!1006 = !DILocation(line: 383, column: 5, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !997, file: !159, line: 383, column: 5)
!1008 = !DILocation(line: 383, column: 12, scope: !1007)
!1009 = !DILocation(line: 383, column: 5, scope: !997)
!1010 = !DILocation(line: 388, column: 3, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !159, line: 383, column: 25)
!1012 = !DILocation(line: 388, column: 3, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !159, line: 388, column: 3)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !159, line: 388, column: 3)
!1015 = !DILocation(line: 388, column: 3, scope: !1014)
!1016 = !DILocation(line: 389, column: 17, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1011, file: !159, line: 389, column: 6)
!1018 = !DILocation(line: 389, column: 6, scope: !1017)
!1019 = !DILocation(line: 389, column: 71, scope: !1017)
!1020 = !DILocation(line: 389, column: 6, scope: !1011)
!1021 = !DILocation(line: 390, column: 4, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !159, line: 389, column: 75)
!1023 = !DILocation(line: 391, column: 4, scope: !1022)
!1024 = !DILocation(line: 394, column: 2, scope: !1011)
!1025 = !DILocation(line: 399, column: 3, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1007, file: !159, line: 394, column: 9)
!1027 = !DILocation(line: 399, column: 3, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !159, line: 399, column: 3)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !159, line: 399, column: 3)
!1030 = !DILocation(line: 399, column: 3, scope: !1029)
!1031 = !DILocation(line: 400, column: 17, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1026, file: !159, line: 400, column: 6)
!1033 = !DILocation(line: 400, column: 6, scope: !1032)
!1034 = !DILocation(line: 400, column: 58, scope: !1032)
!1035 = !DILocation(line: 400, column: 6, scope: !1026)
!1036 = !DILocation(line: 401, column: 4, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !159, line: 400, column: 62)
!1038 = !DILocation(line: 402, column: 4, scope: !1037)
!1039 = !DILocation(line: 407, column: 2, scope: !997)
!1040 = !DILocation(line: 408, column: 1, scope: !997)
!1041 = distinct !DISubprogram(name: "set_raw_socket_tos", scope: !159, file: !159, line: 410, type: !998, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1042 = !DILocalVariable(name: "fd", arg: 1, scope: !1041, file: !159, line: 410, type: !140)
!1043 = !DILocation(line: 410, column: 40, scope: !1041)
!1044 = !DILocalVariable(name: "family", arg: 2, scope: !1041, file: !159, line: 410, type: !140)
!1045 = !DILocation(line: 410, column: 48, scope: !1041)
!1046 = !DILocalVariable(name: "tos", arg: 3, scope: !1041, file: !159, line: 410, type: !140)
!1047 = !DILocation(line: 410, column: 60, scope: !1041)
!1048 = !DILocation(line: 413, column: 5, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1041, file: !159, line: 413, column: 5)
!1050 = !DILocation(line: 413, column: 12, scope: !1049)
!1051 = !DILocation(line: 413, column: 5, scope: !1041)
!1052 = !DILocation(line: 418, column: 3, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !159, line: 413, column: 25)
!1054 = !DILocation(line: 418, column: 3, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !159, line: 418, column: 3)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !159, line: 418, column: 3)
!1057 = !DILocation(line: 418, column: 3, scope: !1056)
!1058 = !DILocation(line: 419, column: 17, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1053, file: !159, line: 419, column: 6)
!1060 = !DILocation(line: 419, column: 6, scope: !1059)
!1061 = !DILocation(line: 419, column: 65, scope: !1059)
!1062 = !DILocation(line: 419, column: 6, scope: !1053)
!1063 = !DILocation(line: 420, column: 4, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !159, line: 419, column: 69)
!1065 = !DILocation(line: 421, column: 4, scope: !1064)
!1066 = !DILocation(line: 424, column: 2, scope: !1053)
!1067 = !DILocation(line: 429, column: 17, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !159, line: 429, column: 6)
!1069 = distinct !DILexicalBlock(scope: !1049, file: !159, line: 424, column: 9)
!1070 = !DILocation(line: 429, column: 6, scope: !1068)
!1071 = !DILocation(line: 429, column: 58, scope: !1068)
!1072 = !DILocation(line: 429, column: 6, scope: !1069)
!1073 = !DILocation(line: 430, column: 4, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1068, file: !159, line: 429, column: 62)
!1075 = !DILocation(line: 431, column: 4, scope: !1074)
!1076 = !DILocation(line: 436, column: 2, scope: !1041)
!1077 = !DILocation(line: 437, column: 1, scope: !1041)
!1078 = distinct !DISubprogram(name: "is_stream_socket", scope: !159, file: !159, line: 439, type: !410, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1079 = !DILocalVariable(name: "st", arg: 1, scope: !1078, file: !159, line: 439, type: !140)
!1080 = !DILocation(line: 439, column: 26, scope: !1078)
!1081 = !DILocation(line: 440, column: 9, scope: !1078)
!1082 = !DILocation(line: 440, column: 2, scope: !1078)
!1083 = !DILocation(line: 448, column: 3, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1078, file: !159, line: 440, column: 13)
!1085 = !DILocation(line: 451, column: 2, scope: !1084)
!1086 = !DILocation(line: 452, column: 2, scope: !1078)
!1087 = !DILocation(line: 453, column: 1, scope: !1078)
!1088 = distinct !DISubprogram(name: "is_tcp_socket", scope: !159, file: !159, line: 455, type: !410, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1089 = !DILocalVariable(name: "st", arg: 1, scope: !1088, file: !159, line: 455, type: !140)
!1090 = !DILocation(line: 455, column: 23, scope: !1088)
!1091 = !DILocation(line: 456, column: 9, scope: !1088)
!1092 = !DILocation(line: 456, column: 2, scope: !1088)
!1093 = !DILocation(line: 460, column: 3, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1088, file: !159, line: 456, column: 13)
!1095 = !DILocation(line: 463, column: 2, scope: !1094)
!1096 = !DILocation(line: 464, column: 2, scope: !1088)
!1097 = !DILocation(line: 465, column: 1, scope: !1088)
!1098 = distinct !DISubprogram(name: "is_sctp_socket", scope: !159, file: !159, line: 467, type: !410, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1099 = !DILocalVariable(name: "st", arg: 1, scope: !1098, file: !159, line: 467, type: !140)
!1100 = !DILocation(line: 467, column: 24, scope: !1098)
!1101 = !DILocation(line: 468, column: 9, scope: !1098)
!1102 = !DILocation(line: 468, column: 2, scope: !1098)
!1103 = !DILocation(line: 472, column: 3, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1098, file: !159, line: 468, column: 13)
!1105 = !DILocation(line: 475, column: 2, scope: !1104)
!1106 = !DILocation(line: 476, column: 2, scope: !1098)
!1107 = !DILocation(line: 477, column: 1, scope: !1098)
!1108 = distinct !DISubprogram(name: "socket_type_name", scope: !159, file: !159, line: 479, type: !1109, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!118, !509}
!1111 = !DILocalVariable(name: "st", arg: 1, scope: !1108, file: !159, line: 479, type: !509)
!1112 = !DILocation(line: 479, column: 42, scope: !1108)
!1113 = !DILocation(line: 481, column: 9, scope: !1108)
!1114 = !DILocation(line: 481, column: 2, scope: !1108)
!1115 = !DILocation(line: 483, column: 3, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1108, file: !159, line: 481, column: 13)
!1117 = !DILocation(line: 485, column: 3, scope: !1116)
!1118 = !DILocation(line: 487, column: 3, scope: !1116)
!1119 = !DILocation(line: 489, column: 3, scope: !1116)
!1120 = !DILocation(line: 491, column: 3, scope: !1116)
!1121 = !DILocation(line: 493, column: 3, scope: !1116)
!1122 = !DILocation(line: 495, column: 3, scope: !1116)
!1123 = !DILocation(line: 497, column: 3, scope: !1116)
!1124 = !DILocation(line: 500, column: 2, scope: !1116)
!1125 = !DILocation(line: 501, column: 2, scope: !1108)
!1126 = !DILocation(line: 502, column: 1, scope: !1108)
!1127 = distinct !DISubprogram(name: "set_socket_df", scope: !159, file: !159, line: 506, type: !998, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1128 = !DILocalVariable(name: "fd", arg: 1, scope: !1127, file: !159, line: 506, type: !140)
!1129 = !DILocation(line: 506, column: 35, scope: !1127)
!1130 = !DILocalVariable(name: "family", arg: 2, scope: !1127, file: !159, line: 506, type: !140)
!1131 = !DILocation(line: 506, column: 43, scope: !1127)
!1132 = !DILocalVariable(name: "value", arg: 3, scope: !1127, file: !159, line: 506, type: !140)
!1133 = !DILocation(line: 506, column: 55, scope: !1127)
!1134 = !DILocalVariable(name: "ret", scope: !1127, file: !159, line: 509, type: !140)
!1135 = !DILocation(line: 509, column: 7, scope: !1127)
!1136 = !DILocation(line: 533, column: 8, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !159, line: 533, column: 8)
!1138 = distinct !DILexicalBlock(scope: !1127, file: !159, line: 531, column: 3)
!1139 = !DILocation(line: 533, column: 14, scope: !1137)
!1140 = !DILocation(line: 533, column: 8, scope: !1138)
!1141 = !DILocalVariable(name: "val", scope: !1142, file: !159, line: 534, type: !140)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !159, line: 533, column: 25)
!1143 = !DILocation(line: 534, column: 11, scope: !1142)
!1144 = !DILocation(line: 535, column: 11, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !159, line: 535, column: 10)
!1146 = !DILocation(line: 535, column: 10, scope: !1142)
!1147 = !DILocation(line: 535, column: 21, scope: !1145)
!1148 = !DILocation(line: 535, column: 18, scope: !1145)
!1149 = !DILocation(line: 536, column: 24, scope: !1142)
!1150 = !DILocation(line: 536, column: 13, scope: !1142)
!1151 = !DILocation(line: 536, column: 11, scope: !1142)
!1152 = !DILocation(line: 537, column: 5, scope: !1142)
!1153 = !DILocalVariable(name: "val", scope: !1154, file: !159, line: 539, type: !140)
!1154 = distinct !DILexicalBlock(scope: !1137, file: !159, line: 537, column: 12)
!1155 = !DILocation(line: 539, column: 11, scope: !1154)
!1156 = !DILocation(line: 540, column: 11, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !159, line: 540, column: 10)
!1158 = !DILocation(line: 540, column: 10, scope: !1154)
!1159 = !DILocation(line: 540, column: 21, scope: !1157)
!1160 = !DILocation(line: 540, column: 18, scope: !1157)
!1161 = !DILocation(line: 541, column: 24, scope: !1154)
!1162 = !DILocation(line: 541, column: 13, scope: !1154)
!1163 = !DILocation(line: 541, column: 11, scope: !1154)
!1164 = !DILocation(line: 546, column: 8, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1138, file: !159, line: 546, column: 8)
!1166 = !DILocation(line: 546, column: 11, scope: !1165)
!1167 = !DILocation(line: 546, column: 8, scope: !1138)
!1168 = !DILocation(line: 547, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !159, line: 546, column: 15)
!1170 = !DILocation(line: 548, column: 7, scope: !1169)
!1171 = !DILocation(line: 549, column: 5, scope: !1169)
!1172 = !DILocation(line: 558, column: 10, scope: !1127)
!1173 = !DILocation(line: 558, column: 3, scope: !1127)
!1174 = distinct !DISubprogram(name: "decrease_mtu", scope: !159, file: !159, line: 583, type: !1175, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!140, !1177, !140, !140}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !1179, line: 184, baseType: !1180)
!1179 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !1179, line: 184, flags: DIFlagFwdDecl)
!1181 = !DILocalVariable(name: "ssl", arg: 1, scope: !1174, file: !159, line: 583, type: !1177)
!1182 = !DILocation(line: 583, column: 23, scope: !1174)
!1183 = !DILocalVariable(name: "mtu", arg: 2, scope: !1174, file: !159, line: 583, type: !140)
!1184 = !DILocation(line: 583, column: 32, scope: !1174)
!1185 = !DILocalVariable(name: "verbose", arg: 3, scope: !1174, file: !159, line: 583, type: !140)
!1186 = !DILocation(line: 583, column: 41, scope: !1174)
!1187 = !DILocation(line: 586, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1174, file: !159, line: 586, column: 6)
!1189 = !DILocation(line: 586, column: 6, scope: !1174)
!1190 = !DILocation(line: 587, column: 10, scope: !1188)
!1191 = !DILocation(line: 587, column: 3, scope: !1188)
!1192 = !DILocalVariable(name: "new_mtu", scope: !1174, file: !159, line: 589, type: !140)
!1193 = !DILocation(line: 589, column: 6, scope: !1174)
!1194 = !DILocation(line: 589, column: 33, scope: !1174)
!1195 = !DILocation(line: 589, column: 16, scope: !1174)
!1196 = !DILocation(line: 591, column: 6, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1174, file: !159, line: 591, column: 6)
!1198 = !DILocation(line: 591, column: 14, scope: !1197)
!1199 = !DILocation(line: 591, column: 6, scope: !1174)
!1200 = !DILocation(line: 592, column: 13, scope: !1197)
!1201 = !DILocation(line: 592, column: 11, scope: !1197)
!1202 = !DILocation(line: 592, column: 3, scope: !1197)
!1203 = !DILocation(line: 594, column: 6, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1174, file: !159, line: 594, column: 6)
!1205 = !DILocation(line: 594, column: 14, scope: !1204)
!1206 = !DILocation(line: 594, column: 6, scope: !1174)
!1207 = !DILocation(line: 595, column: 7, scope: !1204)
!1208 = !DILocation(line: 595, column: 3, scope: !1204)
!1209 = !DILocation(line: 596, column: 6, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1174, file: !159, line: 596, column: 6)
!1211 = !DILocation(line: 596, column: 14, scope: !1210)
!1212 = !DILocation(line: 596, column: 18, scope: !1210)
!1213 = !DILocation(line: 596, column: 21, scope: !1210)
!1214 = !DILocation(line: 596, column: 29, scope: !1210)
!1215 = !DILocation(line: 596, column: 6, scope: !1174)
!1216 = !DILocation(line: 597, column: 7, scope: !1210)
!1217 = !DILocation(line: 597, column: 3, scope: !1210)
!1218 = !DILocation(line: 598, column: 11, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1210, file: !159, line: 598, column: 11)
!1220 = !DILocation(line: 598, column: 21, scope: !1219)
!1221 = !DILocation(line: 598, column: 19, scope: !1219)
!1222 = !DILocation(line: 598, column: 11, scope: !1210)
!1223 = !DILocation(line: 599, column: 9, scope: !1219)
!1224 = !DILocation(line: 599, column: 7, scope: !1219)
!1225 = !DILocation(line: 599, column: 3, scope: !1219)
!1226 = !DILocation(line: 601, column: 7, scope: !1219)
!1227 = !DILocation(line: 603, column: 6, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1174, file: !159, line: 603, column: 6)
!1229 = !DILocation(line: 603, column: 10, scope: !1228)
!1230 = !DILocation(line: 603, column: 6, scope: !1174)
!1231 = !DILocation(line: 604, column: 7, scope: !1228)
!1232 = !DILocation(line: 604, column: 3, scope: !1228)
!1233 = !DILocation(line: 606, column: 16, scope: !1174)
!1234 = !DILocation(line: 606, column: 2, scope: !1174)
!1235 = !DILocation(line: 607, column: 6, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1174, file: !159, line: 607, column: 6)
!1237 = !DILocation(line: 607, column: 6, scope: !1174)
!1238 = !DILocation(line: 608, column: 61, scope: !1236)
!1239 = !DILocation(line: 608, column: 3, scope: !1236)
!1240 = !DILocation(line: 611, column: 2, scope: !1174)
!1241 = !DILocation(line: 612, column: 24, scope: !1174)
!1242 = !DILocation(line: 612, column: 11, scope: !1174)
!1243 = !DILocation(line: 612, column: 54, scope: !1174)
!1244 = !DILocation(line: 612, column: 2, scope: !1174)
!1245 = !DILocation(line: 615, column: 9, scope: !1174)
!1246 = !DILocation(line: 615, column: 2, scope: !1174)
!1247 = !DILocation(line: 616, column: 1, scope: !1174)
!1248 = distinct !DISubprogram(name: "get_mtu_from_ssl", scope: !159, file: !159, line: 561, type: !1249, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!140, !1177}
!1251 = !DILocalVariable(name: "ssl", arg: 1, scope: !1248, file: !159, line: 561, type: !1177)
!1252 = !DILocation(line: 561, column: 34, scope: !1248)
!1253 = !DILocalVariable(name: "ret", scope: !1248, file: !159, line: 563, type: !140)
!1254 = !DILocation(line: 563, column: 7, scope: !1248)
!1255 = !DILocation(line: 565, column: 6, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1248, file: !159, line: 565, column: 6)
!1257 = !DILocation(line: 565, column: 6, scope: !1248)
!1258 = !DILocation(line: 566, column: 32, scope: !1256)
!1259 = !DILocation(line: 566, column: 19, scope: !1256)
!1260 = !DILocation(line: 566, column: 10, scope: !1256)
!1261 = !DILocation(line: 566, column: 8, scope: !1256)
!1262 = !DILocation(line: 566, column: 4, scope: !1256)
!1263 = !DILocation(line: 570, column: 10, scope: !1248)
!1264 = !DILocation(line: 570, column: 3, scope: !1248)
!1265 = distinct !DISubprogram(name: "set_query_mtu", scope: !159, file: !159, line: 573, type: !1266, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !1177}
!1268 = !DILocalVariable(name: "ssl", arg: 1, scope: !1265, file: !159, line: 573, type: !1177)
!1269 = !DILocation(line: 573, column: 32, scope: !1265)
!1270 = !DILocation(line: 574, column: 6, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1265, file: !159, line: 574, column: 6)
!1272 = !DILocation(line: 574, column: 6, scope: !1265)
!1273 = !DILocation(line: 576, column: 21, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !159, line: 574, column: 11)
!1275 = !DILocation(line: 576, column: 5, scope: !1274)
!1276 = !DILocation(line: 580, column: 3, scope: !1274)
!1277 = !DILocation(line: 581, column: 1, scope: !1265)
!1278 = distinct !DISubprogram(name: "set_mtu_df", scope: !159, file: !159, line: 618, type: !1279, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!140, !1177, !140, !140, !140, !140, !140}
!1281 = !DILocalVariable(name: "ssl", arg: 1, scope: !1278, file: !159, line: 618, type: !1177)
!1282 = !DILocation(line: 618, column: 21, scope: !1278)
!1283 = !DILocalVariable(name: "fd", arg: 2, scope: !1278, file: !159, line: 618, type: !140)
!1284 = !DILocation(line: 618, column: 42, scope: !1278)
!1285 = !DILocalVariable(name: "family", arg: 3, scope: !1278, file: !159, line: 618, type: !140)
!1286 = !DILocation(line: 618, column: 50, scope: !1278)
!1287 = !DILocalVariable(name: "mtu", arg: 4, scope: !1278, file: !159, line: 618, type: !140)
!1288 = !DILocation(line: 618, column: 62, scope: !1278)
!1289 = !DILocalVariable(name: "df_value", arg: 5, scope: !1278, file: !159, line: 618, type: !140)
!1290 = !DILocation(line: 618, column: 71, scope: !1278)
!1291 = !DILocalVariable(name: "verbose", arg: 6, scope: !1278, file: !159, line: 618, type: !140)
!1292 = !DILocation(line: 618, column: 85, scope: !1278)
!1293 = !DILocation(line: 620, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1278, file: !159, line: 620, column: 6)
!1295 = !DILocation(line: 620, column: 11, scope: !1294)
!1296 = !DILocation(line: 620, column: 14, scope: !1294)
!1297 = !DILocation(line: 620, column: 16, scope: !1294)
!1298 = !DILocation(line: 620, column: 6, scope: !1278)
!1299 = !DILocation(line: 620, column: 20, scope: !1294)
!1300 = !DILocalVariable(name: "ret", scope: !1278, file: !159, line: 622, type: !140)
!1301 = !DILocation(line: 622, column: 7, scope: !1278)
!1302 = !DILocation(line: 622, column: 25, scope: !1278)
!1303 = !DILocation(line: 622, column: 29, scope: !1278)
!1304 = !DILocation(line: 622, column: 37, scope: !1278)
!1305 = !DILocation(line: 622, column: 11, scope: !1278)
!1306 = !DILocation(line: 624, column: 7, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1278, file: !159, line: 624, column: 6)
!1308 = !DILocation(line: 624, column: 6, scope: !1278)
!1309 = !DILocation(line: 624, column: 15, scope: !1307)
!1310 = !DILocation(line: 624, column: 12, scope: !1307)
!1311 = !DILocation(line: 625, column: 11, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !159, line: 625, column: 11)
!1313 = !DILocation(line: 625, column: 14, scope: !1312)
!1314 = !DILocation(line: 625, column: 11, scope: !1307)
!1315 = !DILocation(line: 625, column: 27, scope: !1312)
!1316 = !DILocation(line: 625, column: 24, scope: !1312)
!1317 = !DILocation(line: 626, column: 11, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1312, file: !159, line: 626, column: 11)
!1319 = !DILocation(line: 626, column: 14, scope: !1318)
!1320 = !DILocation(line: 626, column: 11, scope: !1312)
!1321 = !DILocation(line: 626, column: 27, scope: !1318)
!1322 = !DILocation(line: 626, column: 24, scope: !1318)
!1323 = !DILocation(line: 628, column: 17, scope: !1278)
!1324 = !DILocation(line: 628, column: 3, scope: !1278)
!1325 = !DILocation(line: 629, column: 6, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1278, file: !159, line: 629, column: 6)
!1327 = !DILocation(line: 629, column: 6, scope: !1278)
!1328 = !DILocation(line: 629, column: 71, scope: !1326)
!1329 = !DILocation(line: 629, column: 15, scope: !1326)
!1330 = !DILocation(line: 633, column: 3, scope: !1278)
!1331 = !DILocation(line: 635, column: 25, scope: !1278)
!1332 = !DILocation(line: 635, column: 12, scope: !1278)
!1333 = !DILocation(line: 635, column: 55, scope: !1278)
!1334 = !DILocation(line: 635, column: 3, scope: !1278)
!1335 = !DILocation(line: 639, column: 6, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1278, file: !159, line: 639, column: 6)
!1337 = !DILocation(line: 639, column: 6, scope: !1278)
!1338 = !DILocation(line: 639, column: 85, scope: !1336)
!1339 = !DILocation(line: 639, column: 68, scope: !1336)
!1340 = !DILocation(line: 639, column: 15, scope: !1336)
!1341 = !DILocation(line: 641, column: 10, scope: !1278)
!1342 = !DILocation(line: 641, column: 3, scope: !1278)
!1343 = !DILocation(line: 642, column: 1, scope: !1278)
!1344 = distinct !DISubprogram(name: "get_socket_mtu", scope: !159, file: !159, line: 644, type: !998, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1345 = !DILocalVariable(name: "fd", arg: 1, scope: !1344, file: !159, line: 644, type: !140)
!1346 = !DILocation(line: 644, column: 36, scope: !1344)
!1347 = !DILocalVariable(name: "family", arg: 2, scope: !1344, file: !159, line: 644, type: !140)
!1348 = !DILocation(line: 644, column: 44, scope: !1344)
!1349 = !DILocalVariable(name: "verbose", arg: 3, scope: !1344, file: !159, line: 644, type: !140)
!1350 = !DILocation(line: 644, column: 56, scope: !1344)
!1351 = !DILocalVariable(name: "ret", scope: !1344, file: !159, line: 647, type: !140)
!1352 = !DILocation(line: 647, column: 6, scope: !1344)
!1353 = !DILocation(line: 649, column: 2, scope: !1344)
!1354 = !DILocation(line: 649, column: 2, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1344, file: !159, line: 649, column: 2)
!1356 = !DILocation(line: 650, column: 2, scope: !1344)
!1357 = !DILocation(line: 650, column: 2, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1344, file: !159, line: 650, column: 2)
!1359 = !DILocation(line: 651, column: 2, scope: !1344)
!1360 = !DILocation(line: 651, column: 2, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1344, file: !159, line: 651, column: 2)
!1362 = !DILocalVariable(name: "val", scope: !1344, file: !159, line: 654, type: !140)
!1363 = !DILocation(line: 654, column: 6, scope: !1344)
!1364 = !DILocalVariable(name: "slen", scope: !1344, file: !159, line: 655, type: !115)
!1365 = !DILocation(line: 655, column: 12, scope: !1344)
!1366 = !DILocation(line: 656, column: 5, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1344, file: !159, line: 656, column: 5)
!1368 = !DILocation(line: 656, column: 11, scope: !1367)
!1369 = !DILocation(line: 656, column: 5, scope: !1344)
!1370 = !DILocation(line: 657, column: 20, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !159, line: 656, column: 22)
!1372 = !DILocation(line: 657, column: 9, scope: !1371)
!1373 = !DILocation(line: 657, column: 7, scope: !1371)
!1374 = !DILocation(line: 658, column: 2, scope: !1371)
!1375 = !DILocation(line: 660, column: 20, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1367, file: !159, line: 658, column: 9)
!1377 = !DILocation(line: 660, column: 9, scope: !1376)
!1378 = !DILocation(line: 660, column: 7, scope: !1376)
!1379 = !DILocation(line: 665, column: 8, scope: !1344)
!1380 = !DILocation(line: 665, column: 6, scope: !1344)
!1381 = !DILocation(line: 668, column: 6, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1344, file: !159, line: 668, column: 6)
!1383 = !DILocation(line: 668, column: 6, scope: !1344)
!1384 = !DILocation(line: 669, column: 70, scope: !1382)
!1385 = !DILocation(line: 669, column: 3, scope: !1382)
!1386 = !DILocation(line: 671, column: 9, scope: !1344)
!1387 = !DILocation(line: 671, column: 2, scope: !1344)
!1388 = distinct !DISubprogram(name: "handle_socket_error", scope: !159, file: !159, line: 676, type: !1389, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!140}
!1391 = !DILocation(line: 677, column: 11, scope: !1388)
!1392 = !DILocation(line: 677, column: 3, scope: !1388)
!1393 = !DILocation(line: 682, column: 5, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1388, file: !159, line: 677, column: 18)
!1395 = !DILocation(line: 687, column: 5, scope: !1394)
!1396 = !DILocation(line: 694, column: 5, scope: !1394)
!1397 = !DILocation(line: 696, column: 5, scope: !1394)
!1398 = !DILocation(line: 701, column: 5, scope: !1394)
!1399 = !DILocation(line: 707, column: 5, scope: !1394)
!1400 = !DILocation(line: 711, column: 5, scope: !1394)
!1401 = !DILocation(line: 716, column: 5, scope: !1394)
!1402 = !DILocation(line: 717, column: 5, scope: !1394)
!1403 = !DILocation(line: 724, column: 5, scope: !1394)
!1404 = !DILocation(line: 727, column: 75, scope: !1394)
!1405 = !DILocation(line: 727, column: 5, scope: !1394)
!1406 = !DILocation(line: 728, column: 5, scope: !1394)
!1407 = !DILocation(line: 730, column: 1, scope: !1388)
!1408 = distinct !DISubprogram(name: "skip_blanks", scope: !159, file: !159, line: 734, type: !1409, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!141, !141}
!1411 = !DILocalVariable(name: "s", arg: 1, scope: !1408, file: !159, line: 734, type: !141)
!1412 = !DILocation(line: 734, column: 25, scope: !1408)
!1413 = !DILocation(line: 736, column: 2, scope: !1408)
!1414 = !DILocation(line: 736, column: 9, scope: !1408)
!1415 = !DILocation(line: 736, column: 8, scope: !1408)
!1416 = !DILocation(line: 736, column: 10, scope: !1408)
!1417 = !DILocation(line: 736, column: 16, scope: !1408)
!1418 = !DILocation(line: 736, column: 20, scope: !1408)
!1419 = !DILocation(line: 736, column: 19, scope: !1408)
!1420 = !DILocation(line: 736, column: 21, scope: !1408)
!1421 = !DILocation(line: 736, column: 28, scope: !1408)
!1422 = !DILocation(line: 736, column: 32, scope: !1408)
!1423 = !DILocation(line: 736, column: 31, scope: !1408)
!1424 = !DILocation(line: 736, column: 33, scope: !1408)
!1425 = !DILocation(line: 737, column: 3, scope: !1408)
!1426 = distinct !{!1426, !1413, !1427, !464}
!1427 = !DILocation(line: 737, column: 5, scope: !1408)
!1428 = !DILocation(line: 739, column: 9, scope: !1408)
!1429 = !DILocation(line: 739, column: 2, scope: !1408)
!1430 = distinct !DISubprogram(name: "set_execdir", scope: !159, file: !159, line: 759, type: !1431, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null}
!1433 = !DILocalVariable(name: "_var", scope: !1430, file: !159, line: 762, type: !141)
!1434 = !DILocation(line: 762, column: 9, scope: !1430)
!1435 = !DILocation(line: 762, column: 16, scope: !1430)
!1436 = !DILocation(line: 763, column: 6, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1430, file: !159, line: 763, column: 6)
!1438 = !DILocation(line: 763, column: 11, scope: !1437)
!1439 = !DILocation(line: 763, column: 15, scope: !1437)
!1440 = !DILocation(line: 763, column: 14, scope: !1437)
!1441 = !DILocation(line: 763, column: 6, scope: !1430)
!1442 = !DILocation(line: 764, column: 19, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1437, file: !159, line: 763, column: 21)
!1444 = !DILocation(line: 764, column: 12, scope: !1443)
!1445 = !DILocation(line: 764, column: 10, scope: !1443)
!1446 = !DILocalVariable(name: "edir", scope: !1443, file: !159, line: 765, type: !141)
!1447 = !DILocation(line: 765, column: 11, scope: !1443)
!1448 = !DILocation(line: 765, column: 16, scope: !1443)
!1449 = !DILocation(line: 766, column: 8, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1443, file: !159, line: 766, column: 8)
!1451 = !DILocation(line: 766, column: 15, scope: !1450)
!1452 = !DILocation(line: 766, column: 8, scope: !1443)
!1453 = !DILocation(line: 767, column: 21, scope: !1450)
!1454 = !DILocation(line: 767, column: 14, scope: !1450)
!1455 = !DILocation(line: 767, column: 12, scope: !1450)
!1456 = !DILocation(line: 767, column: 7, scope: !1450)
!1457 = !DILocation(line: 768, column: 8, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1443, file: !159, line: 768, column: 8)
!1459 = !DILocation(line: 768, column: 13, scope: !1458)
!1460 = !DILocation(line: 768, column: 17, scope: !1458)
!1461 = !DILocation(line: 768, column: 16, scope: !1458)
!1462 = !DILocation(line: 768, column: 8, scope: !1443)
!1463 = !DILocation(line: 769, column: 22, scope: !1458)
!1464 = !DILocation(line: 769, column: 14, scope: !1458)
!1465 = !DILocation(line: 769, column: 12, scope: !1458)
!1466 = !DILocation(line: 769, column: 7, scope: !1458)
!1467 = !DILocation(line: 771, column: 22, scope: !1458)
!1468 = !DILocation(line: 771, column: 14, scope: !1458)
!1469 = !DILocation(line: 771, column: 12, scope: !1458)
!1470 = !DILocation(line: 772, column: 8, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1443, file: !159, line: 772, column: 8)
!1472 = !DILocation(line: 772, column: 8, scope: !1443)
!1473 = !DILocation(line: 773, column: 12, scope: !1471)
!1474 = !DILocation(line: 773, column: 7, scope: !1471)
!1475 = !DILocation(line: 774, column: 24, scope: !1443)
!1476 = !DILocation(line: 774, column: 17, scope: !1443)
!1477 = !DILocation(line: 774, column: 15, scope: !1443)
!1478 = !DILocation(line: 775, column: 10, scope: !1443)
!1479 = !DILocation(line: 775, column: 5, scope: !1443)
!1480 = !DILocation(line: 776, column: 3, scope: !1443)
!1481 = !DILocation(line: 777, column: 1, scope: !1430)
!1482 = distinct !DISubprogram(name: "print_abs_file_name", scope: !159, file: !159, line: 779, type: !1483, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !118, !118, !118}
!1485 = !DILocalVariable(name: "msg1", arg: 1, scope: !1482, file: !159, line: 779, type: !118)
!1486 = !DILocation(line: 779, column: 38, scope: !1482)
!1487 = !DILocalVariable(name: "msg2", arg: 2, scope: !1482, file: !159, line: 779, type: !118)
!1488 = !DILocation(line: 779, column: 56, scope: !1482)
!1489 = !DILocalVariable(name: "fn", arg: 3, scope: !1482, file: !159, line: 779, type: !118)
!1490 = !DILocation(line: 779, column: 74, scope: !1482)
!1491 = !DILocalVariable(name: "absfn", scope: !1482, file: !159, line: 781, type: !1492)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 8200, elements: !1493)
!1493 = !{!1494}
!1494 = !DISubrange(count: 1025)
!1495 = !DILocation(line: 781, column: 8, scope: !1482)
!1496 = !DILocation(line: 782, column: 3, scope: !1482)
!1497 = !DILocation(line: 782, column: 11, scope: !1482)
!1498 = !DILocation(line: 784, column: 6, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1482, file: !159, line: 784, column: 6)
!1500 = !DILocation(line: 784, column: 6, scope: !1482)
!1501 = !DILocation(line: 785, column: 5, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1499, file: !159, line: 784, column: 10)
!1503 = !DILocation(line: 785, column: 11, scope: !1502)
!1504 = !DILocation(line: 785, column: 17, scope: !1502)
!1505 = !DILocation(line: 785, column: 20, scope: !1502)
!1506 = !DILocation(line: 785, column: 25, scope: !1502)
!1507 = !DILocation(line: 0, scope: !1502)
!1508 = !DILocation(line: 785, column: 32, scope: !1502)
!1509 = distinct !{!1509, !1501, !1510, !464}
!1510 = !DILocation(line: 785, column: 34, scope: !1502)
!1511 = !DILocation(line: 786, column: 8, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1502, file: !159, line: 786, column: 8)
!1513 = !DILocation(line: 786, column: 8, scope: !1502)
!1514 = !DILocation(line: 787, column: 10, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !159, line: 787, column: 10)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !159, line: 786, column: 15)
!1517 = !DILocation(line: 787, column: 15, scope: !1515)
!1518 = !DILocation(line: 787, column: 10, scope: !1516)
!1519 = !DILocation(line: 788, column: 2, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !159, line: 787, column: 22)
!1521 = !DILocation(line: 788, column: 2, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !159, line: 788, column: 2)
!1523 = distinct !DILexicalBlock(scope: !1520, file: !159, line: 788, column: 2)
!1524 = !DILocation(line: 788, column: 2, scope: !1523)
!1525 = !DILocalVariable(name: "szdst", scope: !1526, file: !159, line: 788, type: !397)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !159, line: 788, column: 2)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !159, line: 788, column: 2)
!1528 = distinct !DILexicalBlock(scope: !1522, file: !159, line: 788, column: 2)
!1529 = !DILocation(line: 788, column: 2, scope: !1526)
!1530 = !DILocation(line: 788, column: 2, scope: !1528)
!1531 = !DILocation(line: 789, column: 7, scope: !1520)
!1532 = !DILocation(line: 790, column: 5, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !159, line: 790, column: 5)
!1534 = distinct !DILexicalBlock(scope: !1515, file: !159, line: 789, column: 14)
!1535 = !DILocation(line: 790, column: 10, scope: !1533)
!1536 = !DILocation(line: 790, column: 16, scope: !1533)
!1537 = !DILocation(line: 790, column: 19, scope: !1533)
!1538 = !DILocation(line: 790, column: 25, scope: !1533)
!1539 = !DILocation(line: 790, column: 28, scope: !1533)
!1540 = !DILocation(line: 790, column: 33, scope: !1533)
!1541 = !DILocation(line: 790, column: 5, scope: !1534)
!1542 = !DILocation(line: 791, column: 6, scope: !1533)
!1543 = !DILocation(line: 791, column: 4, scope: !1533)
!1544 = !DILocation(line: 792, column: 13, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1534, file: !159, line: 792, column: 5)
!1546 = !DILocation(line: 792, column: 6, scope: !1545)
!1547 = !DILocation(line: 792, column: 5, scope: !1534)
!1548 = !DILocation(line: 793, column: 4, scope: !1545)
!1549 = !DILocation(line: 793, column: 12, scope: !1545)
!1550 = !DILocalVariable(name: "blen", scope: !1534, file: !159, line: 794, type: !397)
!1551 = !DILocation(line: 794, column: 9, scope: !1534)
!1552 = !DILocation(line: 794, column: 21, scope: !1534)
!1553 = !DILocation(line: 794, column: 14, scope: !1534)
!1554 = !DILocation(line: 795, column: 5, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1534, file: !159, line: 795, column: 5)
!1556 = !DILocation(line: 795, column: 9, scope: !1555)
!1557 = !DILocation(line: 795, column: 5, scope: !1534)
!1558 = !DILocation(line: 796, column: 12, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !159, line: 795, column: 27)
!1560 = !DILocation(line: 796, column: 18, scope: !1559)
!1561 = !DILocation(line: 796, column: 17, scope: !1559)
!1562 = !DILocation(line: 796, column: 41, scope: !1559)
!1563 = !DILocation(line: 796, column: 40, scope: !1559)
!1564 = !DILocation(line: 796, column: 4, scope: !1559)
!1565 = !DILocation(line: 797, column: 12, scope: !1559)
!1566 = !DILocation(line: 797, column: 18, scope: !1559)
!1567 = !DILocation(line: 797, column: 17, scope: !1559)
!1568 = !DILocation(line: 797, column: 22, scope: !1559)
!1569 = !DILocation(line: 797, column: 25, scope: !1559)
!1570 = !DILocation(line: 797, column: 42, scope: !1559)
!1571 = !DILocation(line: 797, column: 41, scope: !1559)
!1572 = !DILocation(line: 797, column: 46, scope: !1559)
!1573 = !DILocation(line: 797, column: 4, scope: !1559)
!1574 = !DILocation(line: 798, column: 2, scope: !1559)
!1575 = !DILocation(line: 799, column: 4, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1555, file: !159, line: 798, column: 9)
!1577 = !DILocation(line: 799, column: 4, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !159, line: 799, column: 4)
!1579 = distinct !DILexicalBlock(scope: !1576, file: !159, line: 799, column: 4)
!1580 = !DILocation(line: 799, column: 4, scope: !1579)
!1581 = !DILocalVariable(name: "szdst", scope: !1582, file: !159, line: 799, type: !397)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !159, line: 799, column: 4)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !159, line: 799, column: 4)
!1584 = distinct !DILexicalBlock(scope: !1578, file: !159, line: 799, column: 4)
!1585 = !DILocation(line: 799, column: 4, scope: !1582)
!1586 = !DILocation(line: 799, column: 4, scope: !1584)
!1587 = !DILocation(line: 801, column: 2, scope: !1534)
!1588 = !DILocation(line: 801, column: 24, scope: !1534)
!1589 = !DILocation(line: 803, column: 5, scope: !1516)
!1590 = !DILocation(line: 804, column: 3, scope: !1502)
!1591 = !DILocation(line: 805, column: 6, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1482, file: !159, line: 805, column: 6)
!1593 = !DILocation(line: 805, column: 6, scope: !1482)
!1594 = !DILocation(line: 806, column: 65, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1592, file: !159, line: 805, column: 16)
!1596 = !DILocation(line: 806, column: 71, scope: !1595)
!1597 = !DILocation(line: 806, column: 77, scope: !1595)
!1598 = !DILocation(line: 806, column: 5, scope: !1595)
!1599 = !DILocation(line: 807, column: 3, scope: !1595)
!1600 = !DILocation(line: 808, column: 1, scope: !1482)
!1601 = distinct !DISubprogram(name: "find_config_file", scope: !159, file: !159, line: 810, type: !1602, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!141, !118, !140}
!1604 = !DILocalVariable(name: "config_file", arg: 1, scope: !1601, file: !159, line: 810, type: !118)
!1605 = !DILocation(line: 810, column: 36, scope: !1601)
!1606 = !DILocalVariable(name: "print_file_name", arg: 2, scope: !1601, file: !159, line: 810, type: !140)
!1607 = !DILocation(line: 810, column: 53, scope: !1601)
!1608 = !DILocalVariable(name: "full_path_to_config_file", scope: !1601, file: !159, line: 812, type: !141)
!1609 = !DILocation(line: 812, column: 8, scope: !1601)
!1610 = !DILocation(line: 814, column: 6, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1601, file: !159, line: 814, column: 6)
!1612 = !DILocation(line: 814, column: 18, scope: !1611)
!1613 = !DILocation(line: 814, column: 21, scope: !1611)
!1614 = !DILocation(line: 814, column: 6, scope: !1601)
!1615 = !DILocation(line: 815, column: 8, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !159, line: 815, column: 7)
!1617 = distinct !DILexicalBlock(scope: !1611, file: !159, line: 814, column: 37)
!1618 = !DILocation(line: 815, column: 23, scope: !1616)
!1619 = !DILocation(line: 815, column: 30, scope: !1616)
!1620 = !DILocation(line: 815, column: 33, scope: !1616)
!1621 = !DILocation(line: 815, column: 48, scope: !1616)
!1622 = !DILocation(line: 815, column: 7, scope: !1617)
!1623 = !DILocalVariable(name: "f", scope: !1624, file: !159, line: 816, type: !1625)
!1624 = distinct !DILexicalBlock(scope: !1616, file: !159, line: 815, column: 57)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1627, line: 7, baseType: !1628)
!1627 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1629, line: 49, size: 1728, elements: !1630)
!1629 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1646, !1648, !1649, !1650, !1652, !1653, !1655, !1656, !1659, !1661, !1664, !1667, !1668, !1669, !1670, !1671}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1628, file: !1629, line: 51, baseType: !140, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1628, file: !1629, line: 54, baseType: !141, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1628, file: !1629, line: 55, baseType: !141, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1628, file: !1629, line: 56, baseType: !141, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1628, file: !1629, line: 57, baseType: !141, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1628, file: !1629, line: 58, baseType: !141, size: 64, offset: 320)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1628, file: !1629, line: 59, baseType: !141, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1628, file: !1629, line: 60, baseType: !141, size: 64, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1628, file: !1629, line: 61, baseType: !141, size: 64, offset: 512)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1628, file: !1629, line: 64, baseType: !141, size: 64, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1628, file: !1629, line: 65, baseType: !141, size: 64, offset: 640)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1628, file: !1629, line: 66, baseType: !141, size: 64, offset: 704)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1628, file: !1629, line: 68, baseType: !1644, size: 64, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1629, line: 36, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1628, file: !1629, line: 70, baseType: !1647, size: 64, offset: 832)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1628, file: !1629, line: 72, baseType: !140, size: 32, offset: 896)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1628, file: !1629, line: 73, baseType: !140, size: 32, offset: 928)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1628, file: !1629, line: 74, baseType: !1651, size: 64, offset: 960)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !117, line: 152, baseType: !147)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1628, file: !1629, line: 77, baseType: !129, size: 16, offset: 1024)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1628, file: !1629, line: 78, baseType: !1654, size: 8, offset: 1040)
!1654 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1628, file: !1629, line: 79, baseType: !318, size: 8, offset: 1048)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1628, file: !1629, line: 81, baseType: !1657, size: 64, offset: 1088)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1629, line: 43, baseType: null)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1628, file: !1629, line: 89, baseType: !1660, size: 64, offset: 1152)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !117, line: 153, baseType: !147)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1628, file: !1629, line: 91, baseType: !1662, size: 64, offset: 1216)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1629, line: 37, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1628, file: !1629, line: 92, baseType: !1665, size: 64, offset: 1280)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1629, line: 38, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1628, file: !1629, line: 93, baseType: !1647, size: 64, offset: 1344)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1628, file: !1629, line: 94, baseType: !121, size: 64, offset: 1408)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1628, file: !1629, line: 95, baseType: !397, size: 64, offset: 1472)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1628, file: !1629, line: 96, baseType: !140, size: 32, offset: 1536)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1628, file: !1629, line: 98, baseType: !379, size: 160, offset: 1568)
!1672 = !DILocation(line: 816, column: 10, scope: !1624)
!1673 = !DILocation(line: 816, column: 20, scope: !1624)
!1674 = !DILocation(line: 816, column: 14, scope: !1624)
!1675 = !DILocation(line: 817, column: 8, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1624, file: !159, line: 817, column: 8)
!1677 = !DILocation(line: 817, column: 8, scope: !1624)
!1678 = !DILocation(line: 818, column: 12, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1676, file: !159, line: 817, column: 11)
!1680 = !DILocation(line: 818, column: 5, scope: !1679)
!1681 = !DILocation(line: 819, column: 39, scope: !1679)
!1682 = !DILocation(line: 819, column: 32, scope: !1679)
!1683 = !DILocation(line: 819, column: 30, scope: !1679)
!1684 = !DILocation(line: 820, column: 4, scope: !1679)
!1685 = !DILocation(line: 821, column: 3, scope: !1624)
!1686 = !DILocalVariable(name: "i", scope: !1687, file: !159, line: 822, type: !140)
!1687 = distinct !DILexicalBlock(scope: !1616, file: !159, line: 821, column: 10)
!1688 = !DILocation(line: 822, column: 8, scope: !1687)
!1689 = !DILocalVariable(name: "cflen", scope: !1687, file: !159, line: 823, type: !397)
!1690 = !DILocation(line: 823, column: 11, scope: !1687)
!1691 = !DILocation(line: 823, column: 26, scope: !1687)
!1692 = !DILocation(line: 823, column: 19, scope: !1687)
!1693 = !DILocation(line: 825, column: 4, scope: !1687)
!1694 = !DILocation(line: 825, column: 35, scope: !1687)
!1695 = !DILocation(line: 825, column: 11, scope: !1687)
!1696 = !DILocalVariable(name: "dirlen", scope: !1697, file: !159, line: 826, type: !397)
!1697 = distinct !DILexicalBlock(scope: !1687, file: !159, line: 825, column: 39)
!1698 = !DILocation(line: 826, column: 12, scope: !1697)
!1699 = !DILocation(line: 826, column: 52, scope: !1697)
!1700 = !DILocation(line: 826, column: 28, scope: !1697)
!1701 = !DILocation(line: 826, column: 21, scope: !1697)
!1702 = !DILocalVariable(name: "fnsz", scope: !1697, file: !159, line: 827, type: !397)
!1703 = !DILocation(line: 827, column: 12, scope: !1697)
!1704 = !DILocation(line: 827, column: 35, scope: !1697)
!1705 = !DILocation(line: 827, column: 44, scope: !1697)
!1706 = !DILocation(line: 827, column: 42, scope: !1697)
!1707 = !DILocation(line: 827, column: 50, scope: !1697)
!1708 = !DILocation(line: 827, column: 32, scope: !1697)
!1709 = !DILocalVariable(name: "fn", scope: !1697, file: !159, line: 828, type: !141)
!1710 = !DILocation(line: 828, column: 11, scope: !1697)
!1711 = !DILocation(line: 828, column: 30, scope: !1697)
!1712 = !DILocation(line: 828, column: 34, scope: !1697)
!1713 = !DILocation(line: 828, column: 23, scope: !1697)
!1714 = !DILocation(line: 829, column: 13, scope: !1697)
!1715 = !DILocation(line: 829, column: 41, scope: !1697)
!1716 = !DILocation(line: 829, column: 17, scope: !1697)
!1717 = !DILocation(line: 829, column: 45, scope: !1697)
!1718 = !DILocation(line: 829, column: 5, scope: !1697)
!1719 = !DILocation(line: 830, column: 13, scope: !1697)
!1720 = !DILocation(line: 830, column: 18, scope: !1697)
!1721 = !DILocation(line: 830, column: 16, scope: !1697)
!1722 = !DILocation(line: 830, column: 26, scope: !1697)
!1723 = !DILocation(line: 830, column: 39, scope: !1697)
!1724 = !DILocation(line: 830, column: 44, scope: !1697)
!1725 = !DILocation(line: 830, column: 43, scope: !1697)
!1726 = !DILocation(line: 830, column: 5, scope: !1697)
!1727 = !DILocation(line: 831, column: 5, scope: !1697)
!1728 = !DILocation(line: 831, column: 8, scope: !1697)
!1729 = !DILocation(line: 831, column: 13, scope: !1697)
!1730 = !DILocalVariable(name: "f", scope: !1697, file: !159, line: 832, type: !1625)
!1731 = !DILocation(line: 832, column: 11, scope: !1697)
!1732 = !DILocation(line: 832, column: 21, scope: !1697)
!1733 = !DILocation(line: 832, column: 15, scope: !1697)
!1734 = !DILocation(line: 833, column: 9, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1697, file: !159, line: 833, column: 9)
!1736 = !DILocation(line: 833, column: 9, scope: !1697)
!1737 = !DILocation(line: 834, column: 13, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1735, file: !159, line: 833, column: 12)
!1739 = !DILocation(line: 834, column: 6, scope: !1738)
!1740 = !DILocation(line: 835, column: 10, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1738, file: !159, line: 835, column: 10)
!1742 = !DILocation(line: 835, column: 10, scope: !1738)
!1743 = !DILocation(line: 836, column: 40, scope: !1741)
!1744 = !DILocation(line: 836, column: 8, scope: !1741)
!1745 = !DILocation(line: 837, column: 33, scope: !1738)
!1746 = !DILocation(line: 837, column: 31, scope: !1738)
!1747 = !DILocation(line: 838, column: 6, scope: !1738)
!1748 = !DILocation(line: 840, column: 10, scope: !1697)
!1749 = !DILocation(line: 840, column: 5, scope: !1697)
!1750 = !DILocation(line: 841, column: 32, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1697, file: !159, line: 841, column: 8)
!1752 = !DILocation(line: 841, column: 8, scope: !1751)
!1753 = !DILocation(line: 841, column: 37, scope: !1751)
!1754 = !DILocation(line: 841, column: 43, scope: !1751)
!1755 = !DILocation(line: 842, column: 32, scope: !1751)
!1756 = !DILocation(line: 842, column: 8, scope: !1751)
!1757 = !DILocation(line: 842, column: 37, scope: !1751)
!1758 = !DILocation(line: 842, column: 43, scope: !1751)
!1759 = !DILocation(line: 843, column: 8, scope: !1751)
!1760 = !DILocation(line: 843, column: 18, scope: !1751)
!1761 = !DILocation(line: 843, column: 21, scope: !1751)
!1762 = !DILocation(line: 841, column: 8, scope: !1697)
!1763 = !DILocalVariable(name: "celen", scope: !1764, file: !159, line: 844, type: !397)
!1764 = distinct !DILexicalBlock(scope: !1751, file: !159, line: 843, column: 35)
!1765 = !DILocation(line: 844, column: 13, scope: !1764)
!1766 = !DILocation(line: 844, column: 28, scope: !1764)
!1767 = !DILocation(line: 844, column: 21, scope: !1764)
!1768 = !DILocation(line: 845, column: 29, scope: !1764)
!1769 = !DILocation(line: 845, column: 38, scope: !1764)
!1770 = !DILocation(line: 845, column: 36, scope: !1764)
!1771 = !DILocation(line: 845, column: 46, scope: !1764)
!1772 = !DILocation(line: 845, column: 44, scope: !1764)
!1773 = !DILocation(line: 845, column: 52, scope: !1764)
!1774 = !DILocation(line: 845, column: 26, scope: !1764)
!1775 = !DILocation(line: 845, column: 11, scope: !1764)
!1776 = !DILocation(line: 846, column: 25, scope: !1764)
!1777 = !DILocation(line: 846, column: 29, scope: !1764)
!1778 = !DILocation(line: 846, column: 18, scope: !1764)
!1779 = !DILocation(line: 846, column: 9, scope: !1764)
!1780 = !DILocation(line: 847, column: 14, scope: !1764)
!1781 = !DILocation(line: 847, column: 17, scope: !1764)
!1782 = !DILocation(line: 847, column: 27, scope: !1764)
!1783 = !DILocation(line: 847, column: 6, scope: !1764)
!1784 = !DILocalVariable(name: "fnlen", scope: !1764, file: !159, line: 848, type: !397)
!1785 = !DILocation(line: 848, column: 13, scope: !1764)
!1786 = !DILocation(line: 848, column: 26, scope: !1764)
!1787 = !DILocation(line: 848, column: 19, scope: !1764)
!1788 = !DILocation(line: 849, column: 9, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1764, file: !159, line: 849, column: 9)
!1790 = !DILocation(line: 849, column: 15, scope: !1789)
!1791 = !DILocation(line: 849, column: 14, scope: !1789)
!1792 = !DILocation(line: 849, column: 9, scope: !1764)
!1793 = !DILocation(line: 850, column: 16, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1789, file: !159, line: 849, column: 21)
!1795 = !DILocation(line: 850, column: 19, scope: !1794)
!1796 = !DILocation(line: 850, column: 18, scope: !1794)
!1797 = !DILocation(line: 850, column: 29, scope: !1794)
!1798 = !DILocation(line: 850, column: 34, scope: !1794)
!1799 = !DILocation(line: 850, column: 33, scope: !1794)
!1800 = !DILocation(line: 850, column: 8, scope: !1794)
!1801 = !DILocation(line: 851, column: 21, scope: !1794)
!1802 = !DILocation(line: 851, column: 14, scope: !1794)
!1803 = !DILocation(line: 851, column: 13, scope: !1794)
!1804 = !DILocation(line: 852, column: 11, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1794, file: !159, line: 852, column: 11)
!1806 = !DILocation(line: 852, column: 17, scope: !1805)
!1807 = !DILocation(line: 852, column: 16, scope: !1805)
!1808 = !DILocation(line: 852, column: 11, scope: !1794)
!1809 = !DILocation(line: 853, column: 18, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1805, file: !159, line: 852, column: 23)
!1811 = !DILocation(line: 853, column: 21, scope: !1810)
!1812 = !DILocation(line: 853, column: 20, scope: !1810)
!1813 = !DILocation(line: 853, column: 52, scope: !1810)
!1814 = !DILocation(line: 853, column: 28, scope: !1810)
!1815 = !DILocation(line: 853, column: 56, scope: !1810)
!1816 = !DILocation(line: 853, column: 61, scope: !1810)
!1817 = !DILocation(line: 853, column: 60, scope: !1810)
!1818 = !DILocation(line: 853, column: 10, scope: !1810)
!1819 = !DILocation(line: 854, column: 23, scope: !1810)
!1820 = !DILocation(line: 854, column: 16, scope: !1810)
!1821 = !DILocation(line: 854, column: 15, scope: !1810)
!1822 = !DILocation(line: 855, column: 13, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1810, file: !159, line: 855, column: 13)
!1824 = !DILocation(line: 855, column: 19, scope: !1823)
!1825 = !DILocation(line: 855, column: 18, scope: !1823)
!1826 = !DILocation(line: 855, column: 13, scope: !1810)
!1827 = !DILocation(line: 856, column: 20, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1823, file: !159, line: 855, column: 25)
!1829 = !DILocation(line: 856, column: 23, scope: !1828)
!1830 = !DILocation(line: 856, column: 22, scope: !1828)
!1831 = !DILocation(line: 856, column: 30, scope: !1828)
!1832 = !DILocation(line: 856, column: 43, scope: !1828)
!1833 = !DILocation(line: 856, column: 48, scope: !1828)
!1834 = !DILocation(line: 856, column: 47, scope: !1828)
!1835 = !DILocation(line: 856, column: 12, scope: !1828)
!1836 = !DILocation(line: 857, column: 10, scope: !1828)
!1837 = !DILocation(line: 858, column: 8, scope: !1810)
!1838 = !DILocation(line: 859, column: 6, scope: !1794)
!1839 = !DILocation(line: 860, column: 6, scope: !1764)
!1840 = !DILocation(line: 860, column: 9, scope: !1764)
!1841 = !DILocation(line: 860, column: 14, scope: !1764)
!1842 = !DILocation(line: 861, column: 16, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1764, file: !159, line: 861, column: 9)
!1844 = !DILocation(line: 861, column: 9, scope: !1843)
!1845 = !DILocation(line: 861, column: 26, scope: !1843)
!1846 = !DILocation(line: 861, column: 24, scope: !1843)
!1847 = !DILocation(line: 861, column: 9, scope: !1764)
!1848 = !DILocation(line: 862, column: 18, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1843, file: !159, line: 861, column: 30)
!1850 = !DILocation(line: 862, column: 12, scope: !1849)
!1851 = !DILocation(line: 862, column: 10, scope: !1849)
!1852 = !DILocation(line: 863, column: 12, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !159, line: 863, column: 12)
!1854 = !DILocation(line: 863, column: 12, scope: !1849)
!1855 = !DILocation(line: 864, column: 17, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1853, file: !159, line: 863, column: 15)
!1857 = !DILocation(line: 864, column: 10, scope: !1856)
!1858 = !DILocation(line: 865, column: 14, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1856, file: !159, line: 865, column: 14)
!1860 = !DILocation(line: 865, column: 14, scope: !1856)
!1861 = !DILocation(line: 866, column: 44, scope: !1859)
!1862 = !DILocation(line: 866, column: 12, scope: !1859)
!1863 = !DILocation(line: 867, column: 37, scope: !1856)
!1864 = !DILocation(line: 867, column: 35, scope: !1856)
!1865 = !DILocation(line: 868, column: 10, scope: !1856)
!1866 = !DILocation(line: 870, column: 6, scope: !1849)
!1867 = !DILocation(line: 871, column: 11, scope: !1764)
!1868 = !DILocation(line: 871, column: 6, scope: !1764)
!1869 = !DILocation(line: 872, column: 5, scope: !1764)
!1870 = !DILocation(line: 873, column: 5, scope: !1697)
!1871 = distinct !{!1871, !1693, !1872, !464}
!1872 = !DILocation(line: 874, column: 4, scope: !1687)
!1873 = !DILocation(line: 877, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1617, file: !159, line: 877, column: 6)
!1875 = !DILocation(line: 877, column: 6, scope: !1617)
!1876 = !DILocation(line: 878, column: 14, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !159, line: 878, column: 7)
!1878 = distinct !DILexicalBlock(scope: !1874, file: !159, line: 877, column: 33)
!1879 = !DILocation(line: 878, column: 7, scope: !1877)
!1880 = !DILocation(line: 878, column: 35, scope: !1877)
!1881 = !DILocation(line: 878, column: 33, scope: !1877)
!1882 = !DILocation(line: 878, column: 7, scope: !1878)
!1883 = !DILocation(line: 879, column: 29, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1877, file: !159, line: 878, column: 48)
!1885 = !DILocation(line: 879, column: 40, scope: !1884)
!1886 = !DILocation(line: 879, column: 44, scope: !1884)
!1887 = !DILocation(line: 879, column: 12, scope: !1884)
!1888 = !DILocation(line: 879, column: 5, scope: !1884)
!1889 = !DILocation(line: 881, column: 3, scope: !1878)
!1890 = !DILocation(line: 882, column: 2, scope: !1617)
!1891 = !DILocation(line: 884, column: 9, scope: !1601)
!1892 = !DILocation(line: 884, column: 2, scope: !1601)
!1893 = !DILocation(line: 885, column: 1, scope: !1601)
!1894 = distinct !DISubprogram(name: "ignore_sigpipe", scope: !159, file: !159, line: 889, type: !1431, scopeLine: 890, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1895 = !DILocation(line: 892, column: 5, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1894, file: !159, line: 892, column: 5)
!1897 = !DILocation(line: 892, column: 30, scope: !1896)
!1898 = !DILocation(line: 892, column: 5, scope: !1894)
!1899 = !DILocation(line: 893, column: 3, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !159, line: 892, column: 42)
!1901 = !DILocation(line: 894, column: 2, scope: !1900)
!1902 = !DILocation(line: 895, column: 1, scope: !1894)
!1903 = distinct !DISubprogram(name: "set_system_parameters", scope: !159, file: !159, line: 910, type: !1904, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!148, !140}
!1906 = !DILocalVariable(name: "max_resources", arg: 1, scope: !1903, file: !159, line: 910, type: !140)
!1907 = !DILocation(line: 910, column: 41, scope: !1903)
!1908 = !DILocation(line: 912, column: 26, scope: !1903)
!1909 = !DILocation(line: 912, column: 45, scope: !1903)
!1910 = !DILocation(line: 912, column: 10, scope: !1903)
!1911 = !DILocation(line: 912, column: 2, scope: !1903)
!1912 = !DILocation(line: 913, column: 2, scope: !1903)
!1913 = !DILocation(line: 915, column: 2, scope: !1903)
!1914 = !DILocation(line: 917, column: 2, scope: !1903)
!1915 = !DILocation(line: 919, column: 5, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1903, file: !159, line: 919, column: 5)
!1917 = !DILocation(line: 919, column: 5, scope: !1903)
!1918 = !DILocalVariable(name: "rlim", scope: !1919, file: !159, line: 920, type: !1920)
!1919 = distinct !DILexicalBlock(scope: !1916, file: !159, line: 919, column: 20)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !82, line: 139, size: 128, elements: !1921)
!1921 = !{!1922, !1925}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1920, file: !82, line: 142, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !82, line: 131, baseType: !1924)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim_t", file: !117, line: 157, baseType: !148)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1920, file: !82, line: 144, baseType: !1923, size: 64, offset: 64)
!1926 = !DILocation(line: 920, column: 17, scope: !1919)
!1927 = !DILocation(line: 921, column: 6, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1919, file: !159, line: 921, column: 6)
!1929 = !DILocation(line: 921, column: 37, scope: !1928)
!1930 = !DILocation(line: 921, column: 6, scope: !1919)
!1931 = !DILocation(line: 922, column: 4, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1928, file: !159, line: 921, column: 41)
!1933 = !DILocation(line: 923, column: 3, scope: !1932)
!1934 = !DILocation(line: 924, column: 25, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1928, file: !159, line: 923, column: 10)
!1936 = !DILocation(line: 924, column: 9, scope: !1935)
!1937 = !DILocation(line: 924, column: 18, scope: !1935)
!1938 = !DILocation(line: 925, column: 4, scope: !1935)
!1939 = !DILocation(line: 925, column: 11, scope: !1935)
!1940 = !DILocation(line: 925, column: 42, scope: !1935)
!1941 = !DILocation(line: 925, column: 46, scope: !1935)
!1942 = !DILocation(line: 925, column: 55, scope: !1935)
!1943 = !DILocation(line: 925, column: 63, scope: !1935)
!1944 = !DILocation(line: 0, scope: !1935)
!1945 = !DILocation(line: 926, column: 26, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1935, file: !159, line: 925, column: 68)
!1947 = !DILocation(line: 926, column: 34, scope: !1946)
!1948 = !DILocation(line: 926, column: 10, scope: !1946)
!1949 = !DILocation(line: 926, column: 19, scope: !1946)
!1950 = distinct !{!1950, !1938, !1951, !464}
!1951 = !DILocation(line: 927, column: 4, scope: !1935)
!1952 = !DILocation(line: 928, column: 31, scope: !1935)
!1953 = !DILocation(line: 928, column: 4, scope: !1935)
!1954 = !DILocation(line: 930, column: 2, scope: !1919)
!1955 = !DILocation(line: 932, column: 2, scope: !1903)
!1956 = !DILocation(line: 933, column: 1, scope: !1903)
!1957 = distinct !DISubprogram(name: "turn_getRandTime", scope: !159, file: !159, line: 897, type: !1958, scopeLine: 897, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!154}
!1960 = !DILocalVariable(name: "tp", scope: !1957, file: !159, line: 898, type: !1961)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1962, line: 11, size: 128, elements: !1963)
!1962 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1963 = !{!1964, !1966}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1961, file: !1962, line: 16, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !117, line: 160, baseType: !147)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1961, file: !1962, line: 21, baseType: !1967, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !117, line: 197, baseType: !147)
!1968 = !DILocation(line: 898, column: 19, scope: !1957)
!1969 = !DILocation(line: 900, column: 3, scope: !1957)
!1970 = !DILocalVariable(name: "current_time", scope: !1957, file: !159, line: 904, type: !154)
!1971 = !DILocation(line: 904, column: 12, scope: !1957)
!1972 = !DILocation(line: 904, column: 41, scope: !1957)
!1973 = !DILocalVariable(name: "current_mstime", scope: !1957, file: !159, line: 905, type: !154)
!1974 = !DILocation(line: 905, column: 12, scope: !1957)
!1975 = !DILocation(line: 905, column: 40, scope: !1957)
!1976 = !DILocation(line: 905, column: 59, scope: !1957)
!1977 = !DILocation(line: 905, column: 53, scope: !1957)
!1978 = !DILocation(line: 907, column: 10, scope: !1957)
!1979 = !DILocation(line: 907, column: 3, scope: !1957)
!1980 = distinct !DISubprogram(name: "build_base64_decoding_table", scope: !159, file: !159, line: 980, type: !1431, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!1981 = !DILocation(line: 982, column: 29, scope: !1980)
!1982 = !DILocation(line: 982, column: 20, scope: !1980)
!1983 = !DILocation(line: 983, column: 11, scope: !1980)
!1984 = !DILocation(line: 983, column: 5, scope: !1980)
!1985 = !DILocalVariable(name: "i", scope: !1980, file: !159, line: 985, type: !140)
!1986 = !DILocation(line: 985, column: 9, scope: !1980)
!1987 = !DILocation(line: 986, column: 12, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1980, file: !159, line: 986, column: 5)
!1989 = !DILocation(line: 986, column: 10, scope: !1988)
!1990 = !DILocation(line: 986, column: 17, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1988, file: !159, line: 986, column: 5)
!1992 = !DILocation(line: 986, column: 19, scope: !1991)
!1993 = !DILocation(line: 986, column: 5, scope: !1988)
!1994 = !DILocation(line: 987, column: 67, scope: !1991)
!1995 = !DILocation(line: 987, column: 61, scope: !1991)
!1996 = !DILocation(line: 987, column: 9, scope: !1991)
!1997 = !DILocation(line: 987, column: 55, scope: !1991)
!1998 = !DILocation(line: 987, column: 40, scope: !1991)
!1999 = !DILocation(line: 987, column: 59, scope: !1991)
!2000 = !DILocation(line: 986, column: 26, scope: !1991)
!2001 = !DILocation(line: 986, column: 5, scope: !1991)
!2002 = distinct !{!2002, !1993, !2003, !464}
!2003 = !DILocation(line: 987, column: 67, scope: !1988)
!2004 = !DILocation(line: 988, column: 1, scope: !1980)
!2005 = distinct !DISubprogram(name: "base64_encode", scope: !159, file: !159, line: 948, type: !2006, scopeLine: 950, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!141, !575, !397, !2008}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!2009 = !DILocalVariable(name: "data", arg: 1, scope: !2005, file: !159, line: 948, type: !575)
!2010 = !DILocation(line: 948, column: 42, scope: !2005)
!2011 = !DILocalVariable(name: "input_length", arg: 2, scope: !2005, file: !159, line: 949, type: !397)
!2012 = !DILocation(line: 949, column: 28, scope: !2005)
!2013 = !DILocalVariable(name: "output_length", arg: 3, scope: !2005, file: !159, line: 950, type: !2008)
!2014 = !DILocation(line: 950, column: 29, scope: !2005)
!2015 = !DILocation(line: 952, column: 28, scope: !2005)
!2016 = !DILocation(line: 952, column: 41, scope: !2005)
!2017 = !DILocation(line: 952, column: 46, scope: !2005)
!2018 = !DILocation(line: 952, column: 24, scope: !2005)
!2019 = !DILocation(line: 952, column: 6, scope: !2005)
!2020 = !DILocation(line: 952, column: 20, scope: !2005)
!2021 = !DILocalVariable(name: "encoded_data", scope: !2005, file: !159, line: 954, type: !141)
!2022 = !DILocation(line: 954, column: 11, scope: !2005)
!2023 = !DILocation(line: 954, column: 41, scope: !2005)
!2024 = !DILocation(line: 954, column: 40, scope: !2005)
!2025 = !DILocation(line: 954, column: 54, scope: !2005)
!2026 = !DILocation(line: 954, column: 33, scope: !2005)
!2027 = !DILocation(line: 955, column: 9, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2005, file: !159, line: 955, column: 9)
!2029 = !DILocation(line: 955, column: 22, scope: !2028)
!2030 = !DILocation(line: 955, column: 9, scope: !2005)
!2031 = !DILocation(line: 955, column: 31, scope: !2028)
!2032 = !DILocalVariable(name: "i", scope: !2005, file: !159, line: 957, type: !397)
!2033 = !DILocation(line: 957, column: 12, scope: !2005)
!2034 = !DILocalVariable(name: "j", scope: !2005, file: !159, line: 957, type: !397)
!2035 = !DILocation(line: 957, column: 14, scope: !2005)
!2036 = !DILocation(line: 958, column: 12, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2005, file: !159, line: 958, column: 5)
!2038 = !DILocation(line: 958, column: 19, scope: !2037)
!2039 = !DILocation(line: 958, column: 10, scope: !2037)
!2040 = !DILocation(line: 958, column: 24, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2037, file: !159, line: 958, column: 5)
!2042 = !DILocation(line: 958, column: 28, scope: !2041)
!2043 = !DILocation(line: 958, column: 26, scope: !2041)
!2044 = !DILocation(line: 958, column: 5, scope: !2037)
!2045 = !DILocalVariable(name: "octet_a", scope: !2046, file: !159, line: 960, type: !152)
!2046 = distinct !DILexicalBlock(scope: !2041, file: !159, line: 958, column: 43)
!2047 = !DILocation(line: 960, column: 18, scope: !2046)
!2048 = !DILocation(line: 960, column: 28, scope: !2046)
!2049 = !DILocation(line: 960, column: 32, scope: !2046)
!2050 = !DILocation(line: 960, column: 30, scope: !2046)
!2051 = !DILocation(line: 960, column: 47, scope: !2046)
!2052 = !DILocation(line: 960, column: 53, scope: !2046)
!2053 = !DILocalVariable(name: "octet_b", scope: !2046, file: !159, line: 961, type: !152)
!2054 = !DILocation(line: 961, column: 18, scope: !2046)
!2055 = !DILocation(line: 961, column: 28, scope: !2046)
!2056 = !DILocation(line: 961, column: 32, scope: !2046)
!2057 = !DILocation(line: 961, column: 30, scope: !2046)
!2058 = !DILocation(line: 961, column: 47, scope: !2046)
!2059 = !DILocation(line: 961, column: 53, scope: !2046)
!2060 = !DILocalVariable(name: "octet_c", scope: !2046, file: !159, line: 962, type: !152)
!2061 = !DILocation(line: 962, column: 18, scope: !2046)
!2062 = !DILocation(line: 962, column: 28, scope: !2046)
!2063 = !DILocation(line: 962, column: 32, scope: !2046)
!2064 = !DILocation(line: 962, column: 30, scope: !2046)
!2065 = !DILocation(line: 962, column: 47, scope: !2046)
!2066 = !DILocation(line: 962, column: 53, scope: !2046)
!2067 = !DILocalVariable(name: "triple", scope: !2046, file: !159, line: 964, type: !152)
!2068 = !DILocation(line: 964, column: 18, scope: !2046)
!2069 = !DILocation(line: 964, column: 28, scope: !2046)
!2070 = !DILocation(line: 964, column: 36, scope: !2046)
!2071 = !DILocation(line: 964, column: 48, scope: !2046)
!2072 = !DILocation(line: 964, column: 56, scope: !2046)
!2073 = !DILocation(line: 964, column: 45, scope: !2046)
!2074 = !DILocation(line: 964, column: 67, scope: !2046)
!2075 = !DILocation(line: 964, column: 65, scope: !2046)
!2076 = !DILocation(line: 966, column: 45, scope: !2046)
!2077 = !DILocation(line: 966, column: 52, scope: !2046)
!2078 = !DILocation(line: 966, column: 62, scope: !2046)
!2079 = !DILocation(line: 966, column: 29, scope: !2046)
!2080 = !DILocation(line: 966, column: 9, scope: !2046)
!2081 = !DILocation(line: 966, column: 23, scope: !2046)
!2082 = !DILocation(line: 966, column: 27, scope: !2046)
!2083 = !DILocation(line: 967, column: 45, scope: !2046)
!2084 = !DILocation(line: 967, column: 52, scope: !2046)
!2085 = !DILocation(line: 967, column: 62, scope: !2046)
!2086 = !DILocation(line: 967, column: 29, scope: !2046)
!2087 = !DILocation(line: 967, column: 9, scope: !2046)
!2088 = !DILocation(line: 967, column: 23, scope: !2046)
!2089 = !DILocation(line: 967, column: 27, scope: !2046)
!2090 = !DILocation(line: 968, column: 45, scope: !2046)
!2091 = !DILocation(line: 968, column: 52, scope: !2046)
!2092 = !DILocation(line: 968, column: 62, scope: !2046)
!2093 = !DILocation(line: 968, column: 29, scope: !2046)
!2094 = !DILocation(line: 968, column: 9, scope: !2046)
!2095 = !DILocation(line: 968, column: 23, scope: !2046)
!2096 = !DILocation(line: 968, column: 27, scope: !2046)
!2097 = !DILocation(line: 969, column: 45, scope: !2046)
!2098 = !DILocation(line: 969, column: 52, scope: !2046)
!2099 = !DILocation(line: 969, column: 62, scope: !2046)
!2100 = !DILocation(line: 969, column: 29, scope: !2046)
!2101 = !DILocation(line: 969, column: 9, scope: !2046)
!2102 = !DILocation(line: 969, column: 23, scope: !2046)
!2103 = !DILocation(line: 969, column: 27, scope: !2046)
!2104 = !DILocation(line: 958, column: 5, scope: !2041)
!2105 = distinct !{!2105, !2044, !2106, !464}
!2106 = !DILocation(line: 970, column: 5, scope: !2037)
!2107 = !DILocation(line: 972, column: 12, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2005, file: !159, line: 972, column: 5)
!2109 = !DILocation(line: 972, column: 10, scope: !2108)
!2110 = !DILocation(line: 972, column: 17, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2108, file: !159, line: 972, column: 5)
!2112 = !DILocation(line: 972, column: 31, scope: !2111)
!2113 = !DILocation(line: 972, column: 44, scope: !2111)
!2114 = !DILocation(line: 972, column: 21, scope: !2111)
!2115 = !DILocation(line: 972, column: 19, scope: !2111)
!2116 = !DILocation(line: 972, column: 5, scope: !2108)
!2117 = !DILocation(line: 973, column: 9, scope: !2111)
!2118 = !DILocation(line: 973, column: 23, scope: !2111)
!2119 = !DILocation(line: 973, column: 22, scope: !2111)
!2120 = !DILocation(line: 973, column: 37, scope: !2111)
!2121 = !DILocation(line: 973, column: 43, scope: !2111)
!2122 = !DILocation(line: 973, column: 41, scope: !2111)
!2123 = !DILocation(line: 973, column: 46, scope: !2111)
!2124 = !DILocation(line: 972, column: 51, scope: !2111)
!2125 = !DILocation(line: 972, column: 5, scope: !2111)
!2126 = distinct !{!2126, !2116, !2127, !464}
!2127 = !DILocation(line: 973, column: 48, scope: !2108)
!2128 = !DILocation(line: 975, column: 5, scope: !2005)
!2129 = !DILocation(line: 975, column: 19, scope: !2005)
!2130 = !DILocation(line: 975, column: 18, scope: !2005)
!2131 = !DILocation(line: 975, column: 33, scope: !2005)
!2132 = !DILocation(line: 977, column: 12, scope: !2005)
!2133 = !DILocation(line: 977, column: 5, scope: !2005)
!2134 = !DILocation(line: 978, column: 1, scope: !2005)
!2135 = distinct !DISubprogram(name: "base64_decode", scope: !159, file: !159, line: 990, type: !2136, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!149, !118, !397, !2008}
!2138 = !DILocalVariable(name: "data", arg: 1, scope: !2135, file: !159, line: 990, type: !118)
!2139 = !DILocation(line: 990, column: 42, scope: !2135)
!2140 = !DILocalVariable(name: "input_length", arg: 2, scope: !2135, file: !159, line: 991, type: !397)
!2141 = !DILocation(line: 991, column: 37, scope: !2135)
!2142 = !DILocalVariable(name: "output_length", arg: 3, scope: !2135, file: !159, line: 992, type: !2008)
!2143 = !DILocation(line: 992, column: 38, scope: !2135)
!2144 = !DILocation(line: 994, column: 9, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2135, file: !159, line: 994, column: 9)
!2146 = !DILocation(line: 994, column: 24, scope: !2145)
!2147 = !DILocation(line: 994, column: 9, scope: !2135)
!2148 = !DILocation(line: 994, column: 33, scope: !2145)
!2149 = !DILocation(line: 996, column: 9, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2135, file: !159, line: 996, column: 9)
!2151 = !DILocation(line: 996, column: 22, scope: !2150)
!2152 = !DILocation(line: 996, column: 26, scope: !2150)
!2153 = !DILocation(line: 996, column: 9, scope: !2135)
!2154 = !DILocation(line: 996, column: 32, scope: !2150)
!2155 = !DILocation(line: 998, column: 22, scope: !2135)
!2156 = !DILocation(line: 998, column: 35, scope: !2135)
!2157 = !DILocation(line: 998, column: 39, scope: !2135)
!2158 = !DILocation(line: 998, column: 6, scope: !2135)
!2159 = !DILocation(line: 998, column: 20, scope: !2135)
!2160 = !DILocation(line: 999, column: 9, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2135, file: !159, line: 999, column: 9)
!2162 = !DILocation(line: 999, column: 14, scope: !2161)
!2163 = !DILocation(line: 999, column: 27, scope: !2161)
!2164 = !DILocation(line: 999, column: 32, scope: !2161)
!2165 = !DILocation(line: 999, column: 9, scope: !2135)
!2166 = !DILocation(line: 999, column: 42, scope: !2161)
!2167 = !DILocation(line: 999, column: 56, scope: !2161)
!2168 = !DILocation(line: 999, column: 40, scope: !2161)
!2169 = !DILocation(line: 1000, column: 9, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2135, file: !159, line: 1000, column: 9)
!2171 = !DILocation(line: 1000, column: 14, scope: !2170)
!2172 = !DILocation(line: 1000, column: 27, scope: !2170)
!2173 = !DILocation(line: 1000, column: 32, scope: !2170)
!2174 = !DILocation(line: 1000, column: 9, scope: !2135)
!2175 = !DILocation(line: 1000, column: 42, scope: !2170)
!2176 = !DILocation(line: 1000, column: 56, scope: !2170)
!2177 = !DILocation(line: 1000, column: 40, scope: !2170)
!2178 = !DILocalVariable(name: "decoded_data", scope: !2135, file: !159, line: 1002, type: !149)
!2179 = !DILocation(line: 1002, column: 20, scope: !2135)
!2180 = !DILocation(line: 1002, column: 59, scope: !2135)
!2181 = !DILocation(line: 1002, column: 58, scope: !2135)
!2182 = !DILocation(line: 1002, column: 51, scope: !2135)
!2183 = !DILocation(line: 1003, column: 9, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2135, file: !159, line: 1003, column: 9)
!2185 = !DILocation(line: 1003, column: 22, scope: !2184)
!2186 = !DILocation(line: 1003, column: 9, scope: !2135)
!2187 = !DILocation(line: 1003, column: 31, scope: !2184)
!2188 = !DILocalVariable(name: "i", scope: !2135, file: !159, line: 1005, type: !140)
!2189 = !DILocation(line: 1005, column: 9, scope: !2135)
!2190 = !DILocalVariable(name: "j", scope: !2135, file: !159, line: 1006, type: !397)
!2191 = !DILocation(line: 1006, column: 12, scope: !2135)
!2192 = !DILocation(line: 1007, column: 12, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2135, file: !159, line: 1007, column: 5)
!2194 = !DILocation(line: 1007, column: 19, scope: !2193)
!2195 = !DILocation(line: 1007, column: 10, scope: !2193)
!2196 = !DILocation(line: 1007, column: 24, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2193, file: !159, line: 1007, column: 5)
!2198 = !DILocation(line: 1007, column: 33, scope: !2197)
!2199 = !DILocation(line: 1007, column: 28, scope: !2197)
!2200 = !DILocation(line: 1007, column: 26, scope: !2197)
!2201 = !DILocation(line: 1007, column: 5, scope: !2193)
!2202 = !DILocalVariable(name: "sextet_a", scope: !2203, file: !159, line: 1009, type: !152)
!2203 = distinct !DILexicalBlock(scope: !2197, file: !159, line: 1007, column: 48)
!2204 = !DILocation(line: 1009, column: 12, scope: !2203)
!2205 = !DILocation(line: 1010, column: 5, scope: !2203)
!2206 = !DILocation(line: 1010, column: 10, scope: !2203)
!2207 = !DILocation(line: 1010, column: 13, scope: !2203)
!2208 = !DILocation(line: 1010, column: 27, scope: !2203)
!2209 = !DILocation(line: 1010, column: 24, scope: !2203)
!2210 = !DILocation(line: 1010, column: 32, scope: !2203)
!2211 = !DILocation(line: 1010, column: 52, scope: !2203)
!2212 = !DILocation(line: 1010, column: 58, scope: !2203)
!2213 = !DILocation(line: 1010, column: 47, scope: !2203)
!2214 = !DILocalVariable(name: "sextet_b", scope: !2203, file: !159, line: 1011, type: !152)
!2215 = !DILocation(line: 1011, column: 12, scope: !2203)
!2216 = !DILocation(line: 1012, column: 5, scope: !2203)
!2217 = !DILocation(line: 1012, column: 10, scope: !2203)
!2218 = !DILocation(line: 1012, column: 13, scope: !2203)
!2219 = !DILocation(line: 1012, column: 27, scope: !2203)
!2220 = !DILocation(line: 1012, column: 24, scope: !2203)
!2221 = !DILocation(line: 1012, column: 32, scope: !2203)
!2222 = !DILocation(line: 1012, column: 52, scope: !2203)
!2223 = !DILocation(line: 1012, column: 58, scope: !2203)
!2224 = !DILocation(line: 1012, column: 47, scope: !2203)
!2225 = !DILocalVariable(name: "sextet_c", scope: !2203, file: !159, line: 1013, type: !152)
!2226 = !DILocation(line: 1013, column: 12, scope: !2203)
!2227 = !DILocation(line: 1014, column: 5, scope: !2203)
!2228 = !DILocation(line: 1014, column: 10, scope: !2203)
!2229 = !DILocation(line: 1014, column: 13, scope: !2203)
!2230 = !DILocation(line: 1014, column: 27, scope: !2203)
!2231 = !DILocation(line: 1014, column: 24, scope: !2203)
!2232 = !DILocation(line: 1014, column: 32, scope: !2203)
!2233 = !DILocation(line: 1014, column: 52, scope: !2203)
!2234 = !DILocation(line: 1014, column: 58, scope: !2203)
!2235 = !DILocation(line: 1014, column: 47, scope: !2203)
!2236 = !DILocalVariable(name: "sextet_d", scope: !2203, file: !159, line: 1015, type: !152)
!2237 = !DILocation(line: 1015, column: 12, scope: !2203)
!2238 = !DILocation(line: 1016, column: 5, scope: !2203)
!2239 = !DILocation(line: 1016, column: 10, scope: !2203)
!2240 = !DILocation(line: 1016, column: 13, scope: !2203)
!2241 = !DILocation(line: 1016, column: 27, scope: !2203)
!2242 = !DILocation(line: 1016, column: 24, scope: !2203)
!2243 = !DILocation(line: 1016, column: 32, scope: !2203)
!2244 = !DILocation(line: 1016, column: 52, scope: !2203)
!2245 = !DILocation(line: 1016, column: 58, scope: !2203)
!2246 = !DILocation(line: 1016, column: 47, scope: !2203)
!2247 = !DILocalVariable(name: "triple", scope: !2203, file: !159, line: 1018, type: !152)
!2248 = !DILocation(line: 1018, column: 12, scope: !2203)
!2249 = !DILocation(line: 1018, column: 22, scope: !2203)
!2250 = !DILocation(line: 1018, column: 31, scope: !2203)
!2251 = !DILocation(line: 1018, column: 44, scope: !2203)
!2252 = !DILocation(line: 1018, column: 53, scope: !2203)
!2253 = !DILocation(line: 1018, column: 41, scope: !2203)
!2254 = !DILocation(line: 1019, column: 8, scope: !2203)
!2255 = !DILocation(line: 1019, column: 17, scope: !2203)
!2256 = !DILocation(line: 1019, column: 5, scope: !2203)
!2257 = !DILocation(line: 1019, column: 30, scope: !2203)
!2258 = !DILocation(line: 1019, column: 39, scope: !2203)
!2259 = !DILocation(line: 1019, column: 27, scope: !2203)
!2260 = !DILocation(line: 1021, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2203, file: !159, line: 1021, column: 7)
!2262 = !DILocation(line: 1021, column: 12, scope: !2261)
!2263 = !DILocation(line: 1021, column: 11, scope: !2261)
!2264 = !DILocation(line: 1021, column: 9, scope: !2261)
!2265 = !DILocation(line: 1021, column: 7, scope: !2203)
!2266 = !DILocation(line: 1022, column: 25, scope: !2261)
!2267 = !DILocation(line: 1022, column: 32, scope: !2261)
!2268 = !DILocation(line: 1022, column: 42, scope: !2261)
!2269 = !DILocation(line: 1022, column: 24, scope: !2261)
!2270 = !DILocation(line: 1022, column: 4, scope: !2261)
!2271 = !DILocation(line: 1022, column: 18, scope: !2261)
!2272 = !DILocation(line: 1022, column: 22, scope: !2261)
!2273 = !DILocation(line: 1023, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2203, file: !159, line: 1023, column: 7)
!2275 = !DILocation(line: 1023, column: 12, scope: !2274)
!2276 = !DILocation(line: 1023, column: 11, scope: !2274)
!2277 = !DILocation(line: 1023, column: 9, scope: !2274)
!2278 = !DILocation(line: 1023, column: 7, scope: !2203)
!2279 = !DILocation(line: 1024, column: 25, scope: !2274)
!2280 = !DILocation(line: 1024, column: 32, scope: !2274)
!2281 = !DILocation(line: 1024, column: 42, scope: !2274)
!2282 = !DILocation(line: 1024, column: 24, scope: !2274)
!2283 = !DILocation(line: 1024, column: 4, scope: !2274)
!2284 = !DILocation(line: 1024, column: 18, scope: !2274)
!2285 = !DILocation(line: 1024, column: 22, scope: !2274)
!2286 = !DILocation(line: 1025, column: 7, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2203, file: !159, line: 1025, column: 7)
!2288 = !DILocation(line: 1025, column: 12, scope: !2287)
!2289 = !DILocation(line: 1025, column: 11, scope: !2287)
!2290 = !DILocation(line: 1025, column: 9, scope: !2287)
!2291 = !DILocation(line: 1025, column: 7, scope: !2203)
!2292 = !DILocation(line: 1026, column: 25, scope: !2287)
!2293 = !DILocation(line: 1026, column: 32, scope: !2287)
!2294 = !DILocation(line: 1026, column: 42, scope: !2287)
!2295 = !DILocation(line: 1026, column: 24, scope: !2287)
!2296 = !DILocation(line: 1026, column: 4, scope: !2287)
!2297 = !DILocation(line: 1026, column: 18, scope: !2287)
!2298 = !DILocation(line: 1026, column: 22, scope: !2287)
!2299 = !DILocation(line: 1007, column: 5, scope: !2197)
!2300 = distinct !{!2300, !2201, !2301, !464}
!2301 = !DILocation(line: 1028, column: 5, scope: !2193)
!2302 = !DILocation(line: 1030, column: 12, scope: !2135)
!2303 = !DILocation(line: 1030, column: 5, scope: !2135)
!2304 = !DILocation(line: 1031, column: 1, scope: !2135)
!2305 = distinct !DISubprogram(name: "turn_get_ssl_method", scope: !159, file: !159, line: 1035, type: !2306, scopeLine: 1036, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!118, !1177, !118}
!2308 = !DILocalVariable(name: "ssl", arg: 1, scope: !2305, file: !159, line: 1035, type: !1177)
!2309 = !DILocation(line: 1035, column: 38, scope: !2305)
!2310 = !DILocalVariable(name: "mdefault", arg: 2, scope: !2305, file: !159, line: 1035, type: !118)
!2311 = !DILocation(line: 1035, column: 55, scope: !2305)
!2312 = !DILocalVariable(name: "ret", scope: !2305, file: !159, line: 1037, type: !118)
!2313 = !DILocation(line: 1037, column: 14, scope: !2305)
!2314 = !DILocation(line: 1038, column: 6, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2305, file: !159, line: 1038, column: 5)
!2316 = !DILocation(line: 1038, column: 5, scope: !2305)
!2317 = !DILocation(line: 1039, column: 9, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2315, file: !159, line: 1038, column: 11)
!2319 = !DILocation(line: 1039, column: 7, scope: !2318)
!2320 = !DILocation(line: 1040, column: 2, scope: !2318)
!2321 = !DILocation(line: 1041, column: 25, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2315, file: !159, line: 1040, column: 9)
!2323 = !DILocation(line: 1041, column: 9, scope: !2322)
!2324 = !DILocation(line: 1041, column: 7, scope: !2322)
!2325 = !DILocation(line: 1044, column: 9, scope: !2305)
!2326 = !DILocation(line: 1044, column: 2, scope: !2305)
!2327 = distinct !DISubprogram(name: "turn_event_base_new", scope: !159, file: !159, line: 1049, type: !2328, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!2330}
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !104, line: 217, flags: DIFlagFwdDecl)
!2332 = !DILocalVariable(name: "cfg", scope: !2327, file: !159, line: 1051, type: !2333)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_config", file: !104, line: 295, flags: DIFlagFwdDecl)
!2335 = !DILocation(line: 1051, column: 23, scope: !2327)
!2336 = !DILocation(line: 1051, column: 29, scope: !2327)
!2337 = !DILocation(line: 1053, column: 24, scope: !2327)
!2338 = !DILocation(line: 1053, column: 2, scope: !2327)
!2339 = !DILocation(line: 1055, column: 36, scope: !2327)
!2340 = !DILocation(line: 1055, column: 9, scope: !2327)
!2341 = !DILocation(line: 1055, column: 2, scope: !2327)
!2342 = distinct !DISubprogram(name: "convert_oauth_key_data_raw", scope: !159, file: !159, line: 1060, type: !2343, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !166)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{null, !2345, !2366}
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2347)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data_raw", file: !2348, line: 144, baseType: !2349)
!2348 = !DIFile(filename: "src/apps/common/apputils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "5f4d9112d5c1617ebc273618c0760b4a")
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data_raw", file: !2348, line: 135, size: 4800, elements: !2350)
!2350 = !{!2351, !2352, !2356, !2357, !2358, !2362}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !2349, file: !2348, line: 136, baseType: !852, size: 1032)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !2349, file: !2348, line: 137, baseType: !2353, size: 2056, offset: 1032)
!2353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 2056, elements: !2354)
!2354 = !{!2355}
!2355 = !DISubrange(count: 257)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !2349, file: !2348, line: 138, baseType: !154, size: 64, offset: 3136)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !2349, file: !2348, line: 139, baseType: !152, size: 32, offset: 3200)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !2349, file: !2348, line: 140, baseType: !2359, size: 520, offset: 3232)
!2359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 520, elements: !2360)
!2360 = !{!2361}
!2361 = !DISubrange(count: 65)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !2349, file: !2348, line: 141, baseType: !2363, size: 1024, offset: 3752)
!2363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 1024, elements: !2364)
!2364 = !{!2365}
!2365 = !DISubrange(count: 128)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data", file: !2368, line: 221, baseType: !2369)
!2368 = !DIFile(filename: "src/client/ns_turn_msg_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "4d8c44ae9e82b7a50b86805787352690")
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data", file: !2368, line: 212, size: 3840, elements: !2370)
!2370 = !{!2371, !2372, !2373, !2374, !2375, !2376}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !2369, file: !2368, line: 213, baseType: !852, size: 1032)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !2369, file: !2368, line: 214, baseType: !2353, size: 2056, offset: 1032)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key_size", scope: !2369, file: !2368, line: 215, baseType: !397, size: 64, offset: 3136)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !2369, file: !2368, line: 216, baseType: !150, size: 32, offset: 3200)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !2369, file: !2368, line: 217, baseType: !150, size: 32, offset: 3232)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !2369, file: !2368, line: 218, baseType: !2359, size: 520, offset: 3264)
!2377 = !DILocalVariable(name: "raw", arg: 1, scope: !2342, file: !159, line: 1060, type: !2345)
!2378 = !DILocation(line: 1060, column: 59, scope: !2342)
!2379 = !DILocalVariable(name: "oakd", arg: 2, scope: !2342, file: !159, line: 1060, type: !2366)
!2380 = !DILocation(line: 1060, column: 80, scope: !2342)
!2381 = !DILocation(line: 1062, column: 5, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2342, file: !159, line: 1062, column: 5)
!2383 = !DILocation(line: 1062, column: 9, scope: !2382)
!2384 = !DILocation(line: 1062, column: 12, scope: !2382)
!2385 = !DILocation(line: 1062, column: 5, scope: !2342)
!2386 = !DILocation(line: 1064, column: 9, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2382, file: !159, line: 1062, column: 18)
!2388 = !DILocation(line: 1064, column: 3, scope: !2387)
!2389 = !DILocation(line: 1066, column: 34, scope: !2387)
!2390 = !DILocation(line: 1066, column: 39, scope: !2387)
!2391 = !DILocation(line: 1066, column: 21, scope: !2387)
!2392 = !DILocation(line: 1066, column: 3, scope: !2387)
!2393 = !DILocation(line: 1066, column: 9, scope: !2387)
!2394 = !DILocation(line: 1066, column: 19, scope: !2387)
!2395 = !DILocation(line: 1067, column: 20, scope: !2387)
!2396 = !DILocation(line: 1067, column: 25, scope: !2387)
!2397 = !DILocation(line: 1067, column: 3, scope: !2387)
!2398 = !DILocation(line: 1067, column: 9, scope: !2387)
!2399 = !DILocation(line: 1067, column: 18, scope: !2387)
!2400 = !DILocation(line: 1069, column: 9, scope: !2387)
!2401 = !DILocation(line: 1069, column: 14, scope: !2387)
!2402 = !DILocation(line: 1069, column: 24, scope: !2387)
!2403 = !DILocation(line: 1069, column: 30, scope: !2387)
!2404 = !DILocation(line: 1069, column: 3, scope: !2387)
!2405 = !DILocation(line: 1070, column: 9, scope: !2387)
!2406 = !DILocation(line: 1070, column: 14, scope: !2387)
!2407 = !DILocation(line: 1070, column: 18, scope: !2387)
!2408 = !DILocation(line: 1070, column: 24, scope: !2387)
!2409 = !DILocation(line: 1070, column: 3, scope: !2387)
!2410 = !DILocation(line: 1072, column: 6, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2387, file: !159, line: 1072, column: 6)
!2412 = !DILocation(line: 1072, column: 11, scope: !2411)
!2413 = !DILocation(line: 1072, column: 6, scope: !2387)
!2414 = !DILocalVariable(name: "ikm_key_size", scope: !2415, file: !159, line: 1073, type: !397)
!2415 = distinct !DILexicalBlock(scope: !2411, file: !159, line: 1072, column: 23)
!2416 = !DILocation(line: 1073, column: 11, scope: !2415)
!2417 = !DILocalVariable(name: "ikm_key", scope: !2415, file: !159, line: 1074, type: !141)
!2418 = !DILocation(line: 1074, column: 10, scope: !2415)
!2419 = !DILocation(line: 1074, column: 41, scope: !2415)
!2420 = !DILocation(line: 1074, column: 46, scope: !2415)
!2421 = !DILocation(line: 1074, column: 61, scope: !2415)
!2422 = !DILocation(line: 1074, column: 66, scope: !2415)
!2423 = !DILocation(line: 1074, column: 54, scope: !2415)
!2424 = !DILocation(line: 1074, column: 27, scope: !2415)
!2425 = !DILocation(line: 1075, column: 7, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2415, file: !159, line: 1075, column: 7)
!2427 = !DILocation(line: 1075, column: 7, scope: !2415)
!2428 = !DILocation(line: 1076, column: 11, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2426, file: !159, line: 1075, column: 16)
!2430 = !DILocation(line: 1076, column: 19, scope: !2429)
!2431 = !DILocation(line: 1076, column: 25, scope: !2429)
!2432 = !DILocation(line: 1076, column: 33, scope: !2429)
!2433 = !DILocation(line: 1076, column: 5, scope: !2429)
!2434 = !DILocation(line: 1077, column: 26, scope: !2429)
!2435 = !DILocation(line: 1077, column: 5, scope: !2429)
!2436 = !DILocation(line: 1077, column: 11, scope: !2429)
!2437 = !DILocation(line: 1077, column: 24, scope: !2429)
!2438 = !DILocation(line: 1078, column: 10, scope: !2429)
!2439 = !DILocation(line: 1078, column: 5, scope: !2429)
!2440 = !DILocation(line: 1079, column: 4, scope: !2429)
!2441 = !DILocation(line: 1080, column: 3, scope: !2415)
!2442 = !DILocation(line: 1081, column: 2, scope: !2387)
!2443 = !DILocation(line: 1082, column: 1, scope: !2342)
