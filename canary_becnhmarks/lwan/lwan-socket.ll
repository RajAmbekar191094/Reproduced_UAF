; ModuleID = '/home/raj/lwan/common/lwan-socket.c'
source_filename = "/home/raj/lwan/common/lwan-socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linger = type { i32, i32 }
%struct.lwan_t_ = type { %struct.lwan_trie_t_, ptr, %struct.anon.0, ptr, %struct.lwan_config_t_, i32 }
%struct.lwan_trie_t_ = type { ptr, ptr }
%struct.anon.0 = type { ptr, i32, i16 }
%struct.lwan_config_t_ = type { ptr, i16, i8, i8, i32, i16 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%union.__CONST_SOCKADDR_ARG = type { ptr }

@.str = private unnamed_addr constant [36 x i8] c"/home/raj/lwan/common/lwan-socket.c\00", align 1, !dbg !0
@__FUNCTION__.lwan_socket_init = private unnamed_addr constant [17 x i8] c"lwan_socket_init\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [21 x i8] c"Initializing sockets\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [35 x i8] c"Too many file descriptors received\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [31 x i8] c"%s not supported by the kernel\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [13 x i8] c"TCP_FASTOPEN\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [13 x i8] c"TCP_QUICKACK\00", align 1, !dbg !38
@__FUNCTION__.setup_socket_from_systemd = private unnamed_addr constant [26 x i8] c"setup_socket_from_systemd\00", align 1, !dbg !40
@.str.7 = private unnamed_addr constant [53 x i8] c"Passed file descriptor is not a listening TCP socket\00", align 1, !dbg !45
@.str.8 = private unnamed_addr constant [30 x i8] c"Could not obtain socket flags\00", align 1, !dbg !50
@.str.9 = private unnamed_addr constant [27 x i8] c"Could not set socket flags\00", align 1, !dbg !55
@__FUNCTION__.setup_socket_normally = private unnamed_addr constant [22 x i8] c"setup_socket_normally\00", align 1, !dbg !60
@.str.10 = private unnamed_addr constant [29 x i8] c"Could not parse listener: %s\00", align 1, !dbg !65
@.str.11 = private unnamed_addr constant [16 x i8] c"getaddrinfo: %s\00", align 1, !dbg !70
@.str.12 = private unnamed_addr constant [5 x i8] c"8080\00", align 1, !dbg !75
@.str.13 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1, !dbg !80
@.str.14 = private unnamed_addr constant [2 x i8] c"*\00", align 1, !dbg !85
@__FUNCTION__.bind_and_listen_addrinfos = private unnamed_addr constant [26 x i8] c"bind_and_listen_addrinfos\00", align 1, !dbg !90
@.str.15 = private unnamed_addr constant [13 x i8] c"SO_REUSEPORT\00", align 1, !dbg !92
@.str.16 = private unnamed_addr constant [22 x i8] c"Could not bind socket\00", align 1, !dbg !94
@__FUNCTION__.listen_addrinfo = private unnamed_addr constant [16 x i8] c"listen_addrinfo\00", align 1, !dbg !97
@.str.17 = private unnamed_addr constant [7 x i8] c"listen\00", align 1, !dbg !100
@.str.18 = private unnamed_addr constant [16 x i8] c"getnameinfo: %s\00", align 1, !dbg !105
@.str.19 = private unnamed_addr constant [28 x i8] c"Listening on http://[%s]:%s\00", align 1, !dbg !107
@.str.20 = private unnamed_addr constant [26 x i8] c"Listening on http://%s:%s\00", align 1, !dbg !112
@.str.21 = private unnamed_addr constant [29 x i8] c"/proc/sys/net/core/somaxconn\00", align 1, !dbg !115
@.str.22 = private unnamed_addr constant [3 x i8] c"re\00", align 1, !dbg !117
@.str.23 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !122

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_socket_init(ptr noundef %0) #0 !dbg !161 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.linger, align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca [1 x i32], align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata ptr %3, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata ptr %4, metadata !261, metadata !DIExpression()), !dbg !262
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str, i32 noundef 233, ptr noundef @__FUNCTION__.lwan_socket_init, ptr noundef @.str.1), !dbg !263
  %8 = call i32 @sd_listen_fds(i32 noundef 1), !dbg !264
  store i32 %8, ptr %4, align 4, !dbg !265
  %9 = load i32, ptr %4, align 4, !dbg !266
  %10 = icmp sgt i32 %9, 1, !dbg !268
  br i1 %10, label %11, label %12, !dbg !269

11:                                               ; preds = %1
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str, i32 noundef 237, ptr noundef @__FUNCTION__.lwan_socket_init, ptr noundef @.str.2) #8, !dbg !270
  unreachable, !dbg !270

12:                                               ; preds = %1
  %13 = load i32, ptr %4, align 4, !dbg !272
  %14 = icmp eq i32 %13, 1, !dbg !274
  br i1 %14, label %15, label %17, !dbg !275

15:                                               ; preds = %12
  %16 = call i32 @setup_socket_from_systemd(), !dbg !276
  store i32 %16, ptr %3, align 4, !dbg !278
  br label %20, !dbg !279

17:                                               ; preds = %12
  %18 = load ptr, ptr %2, align 8, !dbg !280
  %19 = call i32 @setup_socket_normally(ptr noundef %18), !dbg !282
  store i32 %19, ptr %3, align 4, !dbg !283
  br label %20

20:                                               ; preds = %17, %15
  br label %21

21:                                               ; preds = %20
  br label %22, !dbg !284

22:                                               ; preds = %21
  %23 = load i32, ptr %3, align 4, !dbg !285
  %24 = getelementptr inbounds %struct.linger, ptr %5, i32 0, i32 0, !dbg !285
  store i32 1, ptr %24, align 4, !dbg !285
  %25 = getelementptr inbounds %struct.linger, ptr %5, i32 0, i32 1, !dbg !285
  store i32 1, ptr %25, align 4, !dbg !285
  %26 = call i32 @setsockopt(i32 noundef %23, i32 noundef 1, i32 noundef 13, ptr noundef %5, i32 noundef 8) #9, !dbg !285
  %27 = icmp slt i32 %26, 0, !dbg !285
  br i1 %27, label %28, label %29, !dbg !288

28:                                               ; preds = %22
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 245, ptr noundef @__FUNCTION__.lwan_socket_init, ptr noundef @.str.3) #8, !dbg !285
  unreachable, !dbg !285

29:                                               ; preds = %22
  br label %30, !dbg !288

30:                                               ; preds = %29
  br label %31, !dbg !289

31:                                               ; preds = %30
  %32 = load i32, ptr %3, align 4, !dbg !290
  %33 = getelementptr inbounds [1 x i32], ptr %6, i64 0, i64 0, !dbg !290
  store i32 5, ptr %33, align 4, !dbg !290
  %34 = getelementptr inbounds [1 x i32], ptr %6, i64 0, i64 0, !dbg !290
  %35 = call i32 @setsockopt(i32 noundef %32, i32 noundef 6, i32 noundef 23, ptr noundef %34, i32 noundef 4) #9, !dbg !290
  %36 = icmp slt i32 %35, 0, !dbg !290
  br i1 %36, label %37, label %38, !dbg !293

37:                                               ; preds = %31
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_warning_debug(ptr noundef @.str, i32 noundef 248, ptr noundef @__FUNCTION__.lwan_socket_init, ptr noundef @.str.4, ptr noundef @.str.5), !dbg !290
  br label %38, !dbg !290

38:                                               ; preds = %37, %31
  br label %39, !dbg !293

39:                                               ; preds = %38
  br label %40, !dbg !294

40:                                               ; preds = %39
  %41 = load i32, ptr %3, align 4, !dbg !295
  %42 = getelementptr inbounds [1 x i32], ptr %7, i64 0, i64 0, !dbg !295
  store i32 0, ptr %42, align 4, !dbg !295
  %43 = getelementptr inbounds [1 x i32], ptr %7, i64 0, i64 0, !dbg !295
  %44 = call i32 @setsockopt(i32 noundef %41, i32 noundef 6, i32 noundef 12, ptr noundef %43, i32 noundef 4) #9, !dbg !295
  %45 = icmp slt i32 %44, 0, !dbg !295
  br i1 %45, label %46, label %47, !dbg !298

46:                                               ; preds = %40
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_warning_debug(ptr noundef @.str, i32 noundef 250, ptr noundef @__FUNCTION__.lwan_socket_init, ptr noundef @.str.4, ptr noundef @.str.6), !dbg !295
  br label %47, !dbg !295

47:                                               ; preds = %46, %40
  br label %48, !dbg !298

48:                                               ; preds = %47
  %49 = load i32, ptr %3, align 4, !dbg !299
  %50 = load ptr, ptr %2, align 8, !dbg !300
  %51 = getelementptr inbounds %struct.lwan_t_, ptr %50, i32 0, i32 5, !dbg !301
  store i32 %49, ptr %51, align 8, !dbg !302
  ret void, !dbg !303
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @lwan_status_debug_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

declare i32 @sd_listen_fds(i32 noundef) #2

; Function Attrs: noreturn
declare void @lwan_status_critical_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_socket_from_systemd() #0 !dbg !304 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !307, metadata !DIExpression()), !dbg !308
  store i32 3, ptr %1, align 4, !dbg !308
  %3 = load i32, ptr %1, align 4, !dbg !309
  %4 = call i32 @sd_is_socket_inet(i32 noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 1, i16 noundef zeroext 0), !dbg !311
  %5 = icmp ne i32 %4, 0, !dbg !311
  br i1 %5, label %7, label %6, !dbg !312

6:                                                ; preds = %0
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str, i32 noundef 65, ptr noundef @__FUNCTION__.setup_socket_from_systemd, ptr noundef @.str.7) #8, !dbg !313
  unreachable, !dbg !313

7:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %2, metadata !314, metadata !DIExpression()), !dbg !315
  %8 = load i32, ptr %1, align 4, !dbg !316
  %9 = call i32 (i32, i32, ...) @fcntl(i32 noundef %8, i32 noundef 1), !dbg !317
  store i32 %9, ptr %2, align 4, !dbg !315
  %10 = load i32, ptr %2, align 4, !dbg !318
  %11 = icmp slt i32 %10, 0, !dbg !320
  br i1 %11, label %12, label %13, !dbg !321

12:                                               ; preds = %7
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 69, ptr noundef @__FUNCTION__.setup_socket_from_systemd, ptr noundef @.str.8) #8, !dbg !322
  unreachable, !dbg !322

13:                                               ; preds = %7
  %14 = load i32, ptr %1, align 4, !dbg !323
  %15 = load i32, ptr %2, align 4, !dbg !325
  %16 = or i32 %15, 1, !dbg !326
  %17 = call i32 (i32, i32, ...) @fcntl(i32 noundef %14, i32 noundef 2, i32 noundef %16), !dbg !327
  %18 = icmp slt i32 %17, 0, !dbg !328
  br i1 %18, label %19, label %20, !dbg !329

19:                                               ; preds = %13
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 71, ptr noundef @__FUNCTION__.setup_socket_from_systemd, ptr noundef @.str.9) #8, !dbg !330
  unreachable, !dbg !330

20:                                               ; preds = %13
  %21 = load i32, ptr %1, align 4, !dbg !331
  ret i32 %21, !dbg !332
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_socket_normally(ptr noundef %0) #0 !dbg !333 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i16, align 2
  %11 = alloca ptr, align 8
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata ptr %3, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata ptr %4, metadata !340, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.declare(metadata ptr %5, metadata !342, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.declare(metadata ptr %6, metadata !344, metadata !DIExpression()), !dbg !347
  %15 = load ptr, ptr %2, align 8, !dbg !347
  %16 = getelementptr inbounds %struct.lwan_t_, ptr %15, i32 0, i32 4, !dbg !347
  %17 = getelementptr inbounds %struct.lwan_config_t_, ptr %16, i32 0, i32 0, !dbg !347
  %18 = load ptr, ptr %17, align 8, !dbg !347
  store ptr %18, ptr %6, align 8, !dbg !347
  call void @llvm.dbg.declare(metadata ptr %7, metadata !348, metadata !DIExpression()), !dbg !347
  %19 = load ptr, ptr %6, align 8, !dbg !347
  %20 = call i64 @strlen(ptr noundef %19) #10, !dbg !347
  %21 = add i64 %20, 1, !dbg !347
  store i64 %21, ptr %7, align 8, !dbg !347
  call void @llvm.dbg.declare(metadata ptr %8, metadata !351, metadata !DIExpression()), !dbg !347
  %22 = load i64, ptr %7, align 8, !dbg !347
  %23 = alloca i8, i64 %22, align 16, !dbg !347
  store ptr %23, ptr %8, align 8, !dbg !347
  %24 = load ptr, ptr %8, align 8, !dbg !347
  %25 = load ptr, ptr %6, align 8, !dbg !347
  %26 = load i64, ptr %7, align 8, !dbg !347
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %25, i64 %26, i1 false), !dbg !347
  store ptr %24, ptr %9, align 8, !dbg !347
  %27 = load ptr, ptr %9, align 8, !dbg !347
  store ptr %27, ptr %5, align 8, !dbg !343
  call void @llvm.dbg.declare(metadata ptr %10, metadata !352, metadata !DIExpression()), !dbg !355
  %28 = load ptr, ptr %5, align 8, !dbg !356
  %29 = call zeroext i16 @parse_listener(ptr noundef %28, ptr noundef %3, ptr noundef %4), !dbg !357
  store i16 %29, ptr %10, align 2, !dbg !355
  %30 = load i16, ptr %10, align 2, !dbg !358
  %31 = zext i16 %30 to i32, !dbg !358
  %32 = icmp eq i32 %31, 0, !dbg !360
  br i1 %32, label %33, label %38, !dbg !361

33:                                               ; preds = %1
  %34 = load ptr, ptr %2, align 8, !dbg !362
  %35 = getelementptr inbounds %struct.lwan_t_, ptr %34, i32 0, i32 4, !dbg !362
  %36 = getelementptr inbounds %struct.lwan_config_t_, ptr %35, i32 0, i32 0, !dbg !362
  %37 = load ptr, ptr %36, align 8, !dbg !362
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str, i32 noundef 206, ptr noundef @__FUNCTION__.setup_socket_normally, ptr noundef @.str.10, ptr noundef %37) #8, !dbg !362
  unreachable, !dbg !362

38:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %11, metadata !363, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.declare(metadata ptr %12, metadata !388, metadata !DIExpression()), !dbg !389
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 48, i1 false), !dbg !389
  %39 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 0, !dbg !390
  store i32 1, ptr %39, align 8, !dbg !390
  %40 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 1, !dbg !390
  %41 = load i16, ptr %10, align 2, !dbg !391
  %42 = zext i16 %41 to i32, !dbg !391
  store i32 %42, ptr %40, align 4, !dbg !390
  %43 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 2, !dbg !390
  store i32 1, ptr %43, align 8, !dbg !390
  call void @llvm.dbg.declare(metadata ptr %13, metadata !392, metadata !DIExpression()), !dbg !393
  %44 = load ptr, ptr %3, align 8, !dbg !394
  %45 = load ptr, ptr %4, align 8, !dbg !395
  %46 = call i32 @getaddrinfo(ptr noundef %44, ptr noundef %45, ptr noundef %12, ptr noundef %11), !dbg !396
  store i32 %46, ptr %13, align 4, !dbg !393
  %47 = load i32, ptr %13, align 4, !dbg !397
  %48 = icmp ne i32 %47, 0, !dbg !397
  br i1 %48, label %49, label %52, !dbg !399

49:                                               ; preds = %38
  %50 = load i32, ptr %13, align 4, !dbg !400
  %51 = call ptr @gai_strerror(i32 noundef %50) #9, !dbg !400
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str, i32 noundef 217, ptr noundef @__FUNCTION__.setup_socket_normally, ptr noundef @.str.11, ptr noundef %51) #8, !dbg !400
  unreachable, !dbg !400

52:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %14, metadata !401, metadata !DIExpression()), !dbg !402
  %53 = load ptr, ptr %11, align 8, !dbg !403
  %54 = load ptr, ptr %2, align 8, !dbg !404
  %55 = getelementptr inbounds %struct.lwan_t_, ptr %54, i32 0, i32 4, !dbg !405
  %56 = getelementptr inbounds %struct.lwan_config_t_, ptr %55, i32 0, i32 3, !dbg !406
  %57 = load i8, ptr %56, align 1, !dbg !406
  %58 = trunc i8 %57 to i1, !dbg !406
  %59 = call i32 @bind_and_listen_addrinfos(ptr noundef %53, i1 noundef zeroext %58), !dbg !407
  store i32 %59, ptr %14, align 4, !dbg !402
  %60 = load ptr, ptr %11, align 8, !dbg !408
  call void @freeaddrinfo(ptr noundef %60) #9, !dbg !409
  %61 = load i32, ptr %14, align 4, !dbg !410
  ret i32 %61, !dbg !411
}

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noreturn
declare void @lwan_status_critical_perror_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #3

declare void @lwan_status_warning_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

declare i32 @sd_is_socket_inet(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #2

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @parse_listener(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !412 {
  %4 = alloca i16, align 2
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !416, metadata !DIExpression()), !dbg !417
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !418, metadata !DIExpression()), !dbg !419
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !420, metadata !DIExpression()), !dbg !421
  %8 = load ptr, ptr %5, align 8, !dbg !422
  %9 = load i8, ptr %8, align 1, !dbg !424
  %10 = sext i8 %9 to i32, !dbg !424
  %11 = icmp eq i32 %10, 91, !dbg !425
  br i1 %11, label %12, label %17, !dbg !426

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !dbg !427
  %14 = load ptr, ptr %6, align 8, !dbg !428
  %15 = load ptr, ptr %7, align 8, !dbg !429
  %16 = call zeroext i16 @parse_listener_ipv6(ptr noundef %13, ptr noundef %14, ptr noundef %15), !dbg !430
  store i16 %16, ptr %4, align 2, !dbg !431
  br label %22, !dbg !431

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 8, !dbg !432
  %19 = load ptr, ptr %6, align 8, !dbg !433
  %20 = load ptr, ptr %7, align 8, !dbg !434
  %21 = call zeroext i16 @parse_listener_ipv4(ptr noundef %18, ptr noundef %19, ptr noundef %20), !dbg !435
  store i16 %21, ptr %4, align 2, !dbg !436
  br label %22, !dbg !436

22:                                               ; preds = %17, %12
  %23 = load i16, ptr %4, align 2, !dbg !437
  ret i16 %23, !dbg !437
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @gai_strerror(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_and_listen_addrinfos(ptr noundef %0, i1 noundef zeroext %1) #0 !dbg !438 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca [1 x i32], align 4
  %9 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !441, metadata !DIExpression()), !dbg !442
  %10 = zext i1 %1 to i8
  store i8 %10, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !443, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata ptr %5, metadata !445, metadata !DIExpression()), !dbg !448
  %11 = load ptr, ptr %3, align 8, !dbg !449
  store ptr %11, ptr %5, align 8, !dbg !451
  br label %12, !dbg !452

12:                                               ; preds = %70, %2
  %13 = load ptr, ptr %5, align 8, !dbg !453
  %14 = icmp ne ptr %13, null, !dbg !455
  br i1 %14, label %15, label %74, !dbg !455

15:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %6, metadata !456, metadata !DIExpression()), !dbg !458
  %16 = load ptr, ptr %5, align 8, !dbg !459
  %17 = getelementptr inbounds %struct.addrinfo, ptr %16, i32 0, i32 1, !dbg !460
  %18 = load i32, ptr %17, align 4, !dbg !460
  %19 = load ptr, ptr %5, align 8, !dbg !461
  %20 = getelementptr inbounds %struct.addrinfo, ptr %19, i32 0, i32 2, !dbg !462
  %21 = load i32, ptr %20, align 8, !dbg !462
  %22 = or i32 %21, 524288, !dbg !463
  %23 = load ptr, ptr %5, align 8, !dbg !464
  %24 = getelementptr inbounds %struct.addrinfo, ptr %23, i32 0, i32 3, !dbg !465
  %25 = load i32, ptr %24, align 4, !dbg !465
  %26 = call i32 @socket(i32 noundef %18, i32 noundef %22, i32 noundef %25) #9, !dbg !466
  store i32 %26, ptr %6, align 4, !dbg !458
  %27 = load i32, ptr %6, align 4, !dbg !467
  %28 = icmp slt i32 %27, 0, !dbg !469
  br i1 %28, label %29, label %30, !dbg !470

29:                                               ; preds = %15
  br label %70, !dbg !471

30:                                               ; preds = %15
  br label %31, !dbg !472

31:                                               ; preds = %30
  %32 = load i32, ptr %6, align 4, !dbg !473
  %33 = getelementptr inbounds [1 x i32], ptr %7, i64 0, i64 0, !dbg !473
  store i32 1, ptr %33, align 4, !dbg !473
  %34 = getelementptr inbounds [1 x i32], ptr %7, i64 0, i64 0, !dbg !473
  %35 = call i32 @setsockopt(i32 noundef %32, i32 noundef 1, i32 noundef 2, ptr noundef %34, i32 noundef 4) #9, !dbg !473
  %36 = icmp slt i32 %35, 0, !dbg !473
  br i1 %36, label %37, label %38, !dbg !476

37:                                               ; preds = %31
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 186, ptr noundef @__FUNCTION__.bind_and_listen_addrinfos, ptr noundef @.str.3) #8, !dbg !473
  unreachable, !dbg !473

38:                                               ; preds = %31
  br label %39, !dbg !476

39:                                               ; preds = %38
  br label %40, !dbg !477

40:                                               ; preds = %39
  %41 = load i32, ptr %6, align 4, !dbg !478
  %42 = getelementptr inbounds [1 x i32], ptr %8, i64 0, i64 0, !dbg !478
  %43 = load i8, ptr %4, align 1, !dbg !478
  %44 = trunc i8 %43 to i1, !dbg !478
  %45 = zext i1 %44 to i32, !dbg !478
  store i32 %45, ptr %42, align 4, !dbg !478
  %46 = getelementptr inbounds [1 x i32], ptr %8, i64 0, i64 0, !dbg !478
  %47 = call i32 @setsockopt(i32 noundef %41, i32 noundef 1, i32 noundef 15, ptr noundef %46, i32 noundef 4) #9, !dbg !478
  %48 = icmp slt i32 %47, 0, !dbg !478
  br i1 %48, label %49, label %50, !dbg !481

49:                                               ; preds = %40
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_warning_debug(ptr noundef @.str, i32 noundef 188, ptr noundef @__FUNCTION__.bind_and_listen_addrinfos, ptr noundef @.str.4, ptr noundef @.str.15), !dbg !478
  br label %50, !dbg !478

50:                                               ; preds = %49, %40
  br label %51, !dbg !481

51:                                               ; preds = %50
  %52 = load i32, ptr %6, align 4, !dbg !482
  %53 = load ptr, ptr %5, align 8, !dbg !484
  %54 = getelementptr inbounds %struct.addrinfo, ptr %53, i32 0, i32 5, !dbg !485
  %55 = load ptr, ptr %54, align 8, !dbg !485
  store ptr %55, ptr %9, align 8, !dbg !484
  %56 = load ptr, ptr %5, align 8, !dbg !486
  %57 = getelementptr inbounds %struct.addrinfo, ptr %56, i32 0, i32 4, !dbg !487
  %58 = load i32, ptr %57, align 8, !dbg !487
  %59 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, ptr %9, i32 0, i32 0, !dbg !488
  %60 = load ptr, ptr %59, align 8, !dbg !488
  %61 = call i32 @bind(i32 noundef %52, ptr %60, i32 noundef %58) #9, !dbg !488
  %62 = icmp ne i32 %61, 0, !dbg !488
  br i1 %62, label %67, label %63, !dbg !489

63:                                               ; preds = %51
  %64 = load i32, ptr %6, align 4, !dbg !490
  %65 = load ptr, ptr %5, align 8, !dbg !491
  %66 = call i32 @listen_addrinfo(i32 noundef %64, ptr noundef %65), !dbg !492
  ret i32 %66, !dbg !493

67:                                               ; preds = %51
  %68 = load i32, ptr %6, align 4, !dbg !494
  %69 = call i32 @close(i32 noundef %68), !dbg !495
  br label %70, !dbg !496

70:                                               ; preds = %67, %29
  %71 = load ptr, ptr %5, align 8, !dbg !497
  %72 = getelementptr inbounds %struct.addrinfo, ptr %71, i32 0, i32 7, !dbg !498
  %73 = load ptr, ptr %72, align 8, !dbg !498
  store ptr %73, ptr %5, align 8, !dbg !499
  br label %12, !dbg !500, !llvm.loop !501

74:                                               ; preds = %12
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str, i32 noundef 196, ptr noundef @__FUNCTION__.bind_and_listen_addrinfos, ptr noundef @.str.16) #8, !dbg !504
  unreachable, !dbg !504
}

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @parse_listener_ipv6(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !505 {
  %4 = alloca i16, align 2
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !506, metadata !DIExpression()), !dbg !507
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !508, metadata !DIExpression()), !dbg !509
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.declare(metadata ptr %8, metadata !512, metadata !DIExpression()), !dbg !513
  %9 = load ptr, ptr %5, align 8, !dbg !514
  %10 = call ptr @strrchr(ptr noundef %9, i32 noundef 58) #10, !dbg !515
  store ptr %10, ptr %8, align 8, !dbg !513
  %11 = load ptr, ptr %8, align 8, !dbg !516
  %12 = icmp ne ptr %11, null, !dbg !516
  br i1 %12, label %14, label %13, !dbg !518

13:                                               ; preds = %3
  store i16 0, ptr %4, align 2, !dbg !519
  br label %40, !dbg !519

14:                                               ; preds = %3
  %15 = load ptr, ptr %8, align 8, !dbg !520
  %16 = getelementptr inbounds i8, ptr %15, i64 -1, !dbg !522
  %17 = load i8, ptr %16, align 1, !dbg !523
  %18 = sext i8 %17 to i32, !dbg !523
  %19 = icmp eq i32 %18, 93, !dbg !524
  br i1 %19, label %20, label %29, !dbg !525

20:                                               ; preds = %14
  %21 = load ptr, ptr %8, align 8, !dbg !526
  %22 = getelementptr inbounds i8, ptr %21, i64 -1, !dbg !528
  store i8 0, ptr %22, align 1, !dbg !529
  %23 = load ptr, ptr %5, align 8, !dbg !530
  %24 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !531
  %25 = load ptr, ptr %6, align 8, !dbg !532
  store ptr %24, ptr %25, align 8, !dbg !533
  %26 = load ptr, ptr %8, align 8, !dbg !534
  %27 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !535
  %28 = load ptr, ptr %7, align 8, !dbg !536
  store ptr %27, ptr %28, align 8, !dbg !537
  br label %39, !dbg !538

29:                                               ; preds = %14
  %30 = load ptr, ptr %5, align 8, !dbg !539
  %31 = load ptr, ptr %5, align 8, !dbg !541
  %32 = call i64 @strlen(ptr noundef %31) #10, !dbg !542
  %33 = sub i64 %32, 1, !dbg !543
  %34 = getelementptr inbounds i8, ptr %30, i64 %33, !dbg !539
  store i8 0, ptr %34, align 1, !dbg !544
  %35 = load ptr, ptr %5, align 8, !dbg !545
  %36 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !546
  %37 = load ptr, ptr %6, align 8, !dbg !547
  store ptr %36, ptr %37, align 8, !dbg !548
  %38 = load ptr, ptr %7, align 8, !dbg !549
  store ptr @.str.12, ptr %38, align 8, !dbg !550
  br label %39

39:                                               ; preds = %29, %20
  store i16 10, ptr %4, align 2, !dbg !551
  br label %40, !dbg !551

40:                                               ; preds = %39, %13
  %41 = load i16, ptr %4, align 2, !dbg !552
  ret i16 %41, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @parse_listener_ipv4(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !553 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !554, metadata !DIExpression()), !dbg !555
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !556, metadata !DIExpression()), !dbg !557
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !558, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.declare(metadata ptr %7, metadata !560, metadata !DIExpression()), !dbg !561
  %8 = load ptr, ptr %4, align 8, !dbg !562
  %9 = call ptr @strrchr(ptr noundef %8, i32 noundef 58) #10, !dbg !563
  store ptr %9, ptr %7, align 8, !dbg !561
  %10 = load ptr, ptr %7, align 8, !dbg !564
  %11 = icmp ne ptr %10, null, !dbg !564
  br i1 %11, label %23, label %12, !dbg !566

12:                                               ; preds = %3
  %13 = load ptr, ptr %6, align 8, !dbg !567
  store ptr @.str.12, ptr %13, align 8, !dbg !569
  %14 = load ptr, ptr %4, align 8, !dbg !570
  %15 = call ptr @strchr(ptr noundef %14, i32 noundef 46) #10, !dbg !572
  %16 = icmp ne ptr %15, null, !dbg !572
  br i1 %16, label %19, label %17, !dbg !573

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 8, !dbg !574
  store ptr @.str.13, ptr %18, align 8, !dbg !576
  br label %22, !dbg !577

19:                                               ; preds = %12
  %20 = load ptr, ptr %4, align 8, !dbg !578
  %21 = load ptr, ptr %5, align 8, !dbg !580
  store ptr %20, ptr %21, align 8, !dbg !581
  br label %22

22:                                               ; preds = %19, %17
  br label %37, !dbg !582

23:                                               ; preds = %3
  %24 = load ptr, ptr %7, align 8, !dbg !583
  store i8 0, ptr %24, align 1, !dbg !585
  %25 = load ptr, ptr %4, align 8, !dbg !586
  %26 = load ptr, ptr %5, align 8, !dbg !587
  store ptr %25, ptr %26, align 8, !dbg !588
  %27 = load ptr, ptr %7, align 8, !dbg !589
  %28 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !590
  %29 = load ptr, ptr %6, align 8, !dbg !591
  store ptr %28, ptr %29, align 8, !dbg !592
  %30 = load ptr, ptr %5, align 8, !dbg !593
  %31 = load ptr, ptr %30, align 8, !dbg !595
  %32 = call i32 @strcmp(ptr noundef %31, ptr noundef @.str.14) #10, !dbg !596
  %33 = icmp ne i32 %32, 0, !dbg !596
  br i1 %33, label %36, label %34, !dbg !597

34:                                               ; preds = %23
  %35 = load ptr, ptr %5, align 8, !dbg !598
  store ptr @.str.13, ptr %35, align 8, !dbg !600
  br label %36, !dbg !601

36:                                               ; preds = %34, %23
  br label %37

37:                                               ; preds = %36, %22
  ret i16 2, !dbg !602
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listen_addrinfo(i32 noundef %0, ptr noundef %1) #0 !dbg !603 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca [1025 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !606, metadata !DIExpression()), !dbg !607
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !608, metadata !DIExpression()), !dbg !609
  %8 = load i32, ptr %3, align 4, !dbg !610
  %9 = call i32 @get_backlog_size(), !dbg !612
  %10 = call i32 @listen(i32 noundef %8, i32 noundef %9) #9, !dbg !613
  %11 = icmp slt i32 %10, 0, !dbg !614
  br i1 %11, label %12, label %13, !dbg !615

12:                                               ; preds = %2
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 141, ptr noundef @__FUNCTION__.listen_addrinfo, ptr noundef @.str.17) #8, !dbg !616
  unreachable, !dbg !616

13:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !617, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.declare(metadata ptr %6, metadata !622, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.declare(metadata ptr %7, metadata !627, metadata !DIExpression()), !dbg !628
  %14 = load ptr, ptr %4, align 8, !dbg !629
  %15 = getelementptr inbounds %struct.addrinfo, ptr %14, i32 0, i32 5, !dbg !630
  %16 = load ptr, ptr %15, align 8, !dbg !630
  %17 = load ptr, ptr %4, align 8, !dbg !631
  %18 = getelementptr inbounds %struct.addrinfo, ptr %17, i32 0, i32 4, !dbg !632
  %19 = load i32, ptr %18, align 8, !dbg !632
  %20 = getelementptr inbounds [1025 x i8], ptr %5, i64 0, i64 0, !dbg !633
  %21 = getelementptr inbounds [32 x i8], ptr %6, i64 0, i64 0, !dbg !634
  %22 = call i32 @getnameinfo(ptr noundef %16, i32 noundef %19, ptr noundef %20, i32 noundef 1025, ptr noundef %21, i32 noundef 32, i32 noundef 3), !dbg !635
  store i32 %22, ptr %7, align 4, !dbg !628
  %23 = load i32, ptr %7, align 4, !dbg !636
  %24 = icmp ne i32 %23, 0, !dbg !636
  br i1 %24, label %25, label %28, !dbg !638

25:                                               ; preds = %13
  %26 = load i32, ptr %7, align 4, !dbg !639
  %27 = call ptr @gai_strerror(i32 noundef %26) #9, !dbg !639
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str, i32 noundef 147, ptr noundef @__FUNCTION__.listen_addrinfo, ptr noundef @.str.18, ptr noundef %27) #8, !dbg !639
  unreachable, !dbg !639

28:                                               ; preds = %13
  %29 = load ptr, ptr %4, align 8, !dbg !640
  %30 = getelementptr inbounds %struct.addrinfo, ptr %29, i32 0, i32 1, !dbg !642
  %31 = load i32, ptr %30, align 4, !dbg !642
  %32 = icmp eq i32 %31, 10, !dbg !643
  br i1 %32, label %33, label %36, !dbg !644

33:                                               ; preds = %28
  %34 = getelementptr inbounds [1025 x i8], ptr %5, i64 0, i64 0, !dbg !645
  %35 = getelementptr inbounds [32 x i8], ptr %6, i64 0, i64 0, !dbg !645
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_info_debug(ptr noundef @.str, i32 noundef 150, ptr noundef @__FUNCTION__.listen_addrinfo, ptr noundef @.str.19, ptr noundef %34, ptr noundef %35), !dbg !645
  br label %39, !dbg !645

36:                                               ; preds = %28
  %37 = getelementptr inbounds [1025 x i8], ptr %5, i64 0, i64 0, !dbg !646
  %38 = getelementptr inbounds [32 x i8], ptr %6, i64 0, i64 0, !dbg !646
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_info_debug(ptr noundef @.str, i32 noundef 152, ptr noundef @__FUNCTION__.listen_addrinfo, ptr noundef @.str.20, ptr noundef %37, ptr noundef %38), !dbg !646
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, ptr %3, align 4, !dbg !647
  ret i32 %40, !dbg !648
}

declare i32 @close(i32 noundef) #2

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_backlog_size() #0 !dbg !649 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !650, metadata !DIExpression()), !dbg !651
  store i32 4096, ptr %1, align 4, !dbg !651
  call void @llvm.dbg.declare(metadata ptr %2, metadata !652, metadata !DIExpression()), !dbg !706
  %4 = call noalias ptr @fopen(ptr noundef @.str.21, ptr noundef @.str.22), !dbg !707
  store ptr %4, ptr %2, align 8, !dbg !708
  %5 = load ptr, ptr %2, align 8, !dbg !709
  %6 = icmp ne ptr %5, null, !dbg !709
  br i1 %6, label %7, label %16, !dbg !711

7:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %3, metadata !712, metadata !DIExpression()), !dbg !714
  %8 = load ptr, ptr %2, align 8, !dbg !715
  %9 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %8, ptr noundef @.str.23, ptr noundef %3), !dbg !717
  %10 = icmp eq i32 %9, 1, !dbg !718
  br i1 %10, label %11, label %13, !dbg !719

11:                                               ; preds = %7
  %12 = load i32, ptr %3, align 4, !dbg !720
  store i32 %12, ptr %1, align 4, !dbg !721
  br label %13, !dbg !722

13:                                               ; preds = %11, %7
  %14 = load ptr, ptr %2, align 8, !dbg !723
  %15 = call i32 @fclose(ptr noundef %14), !dbg !724
  br label %16, !dbg !725

16:                                               ; preds = %13, %0
  %17 = load i32, ptr %1, align 4, !dbg !726
  ret i32 %17, !dbg !727
}

declare i32 @getnameinfo(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @lwan_status_info_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #2

declare i32 @fclose(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!124}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 233, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "common/lwan-socket.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "c18944055a3b887a7cad5341937765cf")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 36)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 233, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 136, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 17)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 233, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 21)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 35)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 11)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 247, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 31)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 247, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 13)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !35, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 26)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 53)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 30)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 27)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 176, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 22)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 29)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 16)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 5)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 8)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 2)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !42, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 187, type: !35, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 196, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !63)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !73)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 7)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !72, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 28)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !43)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !67, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 3)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !119, isLocal: true, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C11, file: !125, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !126, retainedTypes: !150, globals: !152, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "/home/raj/lwan/common/lwan-socket.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "c18944055a3b887a7cad5341937765cf")
!126 = !{!127, !137}
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 158, baseType: !129, size: 32, elements: !130)
!128 = !DIFile(filename: "common/lwan.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "56f65bbbfce1c5452d6905964ca2b84f")
!129 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!130 = !{!131, !132, !133, !134, !135, !136}
!131 = !DIEnumerator(name: "CONN_MASK", value: -1)
!132 = !DIEnumerator(name: "CONN_KEEP_ALIVE", value: 1)
!133 = !DIEnumerator(name: "CONN_IS_ALIVE", value: 2)
!134 = !DIEnumerator(name: "CONN_SHOULD_RESUME_CORO", value: 4)
!135 = !DIEnumerator(name: "CONN_WRITE_EVENTS", value: 8)
!136 = !DIEnumerator(name: "CONN_MUST_READ", value: 16)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !138, line: 24, baseType: !139, size: 32, elements: !140)
!138 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!139 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149}
!141 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!142 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!143 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!144 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!145 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!146 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!147 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!148 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!149 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!152 = !{!0, !7, !13, !18, !23, !28, !33, !38, !40, !45, !50, !55, !60, !65, !70, !75, !80, !85, !90, !92, !94, !97, !100, !105, !107, !112, !115, !117, !122}
!153 = !{i32 7, !"Dwarf Version", i32 5}
!154 = !{i32 2, !"Debug Info Version", i32 3}
!155 = !{i32 1, !"wchar_size", i32 4}
!156 = !{i32 8, !"PIC Level", i32 2}
!157 = !{i32 7, !"PIE Level", i32 2}
!158 = !{i32 7, !"uwtable", i32 2}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 16.0.0"}
!161 = distinct !DISubprogram(name: "lwan_socket_init", scope: !2, file: !2, line: 229, type: !162, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !124, retainedNodes: !256)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_t", file: !128, line: 103, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_t_", file: !128, line: 275, size: 640, elements: !167)
!167 = !{!168, !194, !233, !240, !244, !255}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "url_map_trie", scope: !166, file: !128, line: 276, baseType: !169, size: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_t", file: !170, line: 25, baseType: !171)
!170 = !DIFile(filename: "common/lwan-trie.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "ee6a35f9d72fff2f5550c3424937f5b6")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_t_", file: !170, line: 41, size: 128, elements: !172)
!172 = !{!173, !190}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !171, file: !170, line: 42, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_node_t", file: !170, line: 26, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_node_t_", file: !170, line: 29, size: 640, elements: !177)
!177 = !{!178, !180, !189}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !176, file: !170, line: 30, baseType: !179, size: 512)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 512, elements: !83)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !176, file: !170, line: 31, baseType: !181, size: 64, offset: 512)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_leaf_t", file: !170, line: 27, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_leaf_t_", file: !170, line: 35, size: 192, elements: !184)
!184 = !{!185, !186, !188}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !183, file: !170, line: 36, baseType: !151, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !183, file: !170, line: 37, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !170, line: 38, baseType: !181, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !176, file: !170, line: 32, baseType: !129, size: 32, offset: 576)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !171, file: !170, line: 43, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !187}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !166, file: !128, line: 277, baseType: !195, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_t", file: !128, line: 112, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_connection_t_", file: !128, line: 196, size: 256, elements: !198)
!198 = !{!199, !201, !202, !207, !231, !232}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !128, line: 199, baseType: !200, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_flags_t", file: !128, line: 165, baseType: !127)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !197, file: !128, line: 200, baseType: !139, size: 32, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "coro", scope: !197, file: !128, line: 201, baseType: !203, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !205, line: 34, baseType: !206)
!205 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !205, line: 34, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !197, file: !128, line: 202, baseType: !208, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_thread_t", file: !128, line: 108, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_thread_t_", file: !128, line: 253, size: 832, elements: !211)
!211 = !{!212, !213, !224, !225, !227}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "lwan", scope: !210, file: !128, line: 254, baseType: !164, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !210, file: !128, line: 259, baseType: !214, size: 576, offset: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !210, file: !128, line: 255, size: 576, elements: !215)
!215 = !{!216, !217, !218}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !214, file: !128, line: 256, baseType: !52, size: 240)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !214, file: !128, line: 257, baseType: !52, size: 240, offset: 240)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !214, file: !128, line: 258, baseType: !219, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !220, line: 10, baseType: !221)
!220 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !222, line: 160, baseType: !223)
!222 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!223 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !210, file: !128, line: 261, baseType: !129, size: 32, offset: 640)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_fd", scope: !210, file: !128, line: 262, baseType: !226, size: 64, offset: 672)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 64, elements: !88)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !210, file: !128, line: 263, baseType: !228, size: 64, offset: 768)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !229, line: 27, baseType: !230)
!229 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!230 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !197, file: !128, line: 203, baseType: !129, size: 32, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !128, line: 203, baseType: !129, size: 32, offset: 224)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !166, file: !128, line: 283, baseType: !234, size: 128, offset: 192)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !166, file: !128, line: 279, size: 128, elements: !235)
!235 = !{!236, !237, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !234, file: !128, line: 280, baseType: !208, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "max_fd", scope: !234, file: !128, line: 281, baseType: !139, size: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !234, file: !128, line: 282, baseType: !239, size: 16, offset: 96)
!239 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "module_registry", scope: !166, file: !128, line: 285, baseType: !241, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !243, line: 6, flags: DIFlagFwdDecl)
!243 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!244 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !166, file: !128, line: 286, baseType: !245, size: 192, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_config_t", file: !128, line: 111, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_config_t_", file: !128, line: 266, size: 192, elements: !247)
!247 = !{!248, !249, !250, !252, !253, !254}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !246, file: !128, line: 267, baseType: !151, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !246, file: !128, line: 268, baseType: !239, size: 16, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !246, file: !128, line: 269, baseType: !251, size: 8, offset: 80)
!251 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_port", scope: !246, file: !128, line: 270, baseType: !251, size: 8, offset: 88)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !246, file: !128, line: 271, baseType: !139, size: 32, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "n_threads", scope: !246, file: !128, line: 272, baseType: !239, size: 16, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "main_socket", scope: !166, file: !128, line: 287, baseType: !129, size: 32, offset: 576)
!256 = !{}
!257 = !DILocalVariable(name: "l", arg: 1, scope: !161, file: !2, line: 229, type: !164)
!258 = !DILocation(line: 229, column: 26, scope: !161)
!259 = !DILocalVariable(name: "fd", scope: !161, file: !2, line: 231, type: !129)
!260 = !DILocation(line: 231, column: 9, scope: !161)
!261 = !DILocalVariable(name: "n", scope: !161, file: !2, line: 231, type: !129)
!262 = !DILocation(line: 231, column: 13, scope: !161)
!263 = !DILocation(line: 233, column: 5, scope: !161)
!264 = !DILocation(line: 235, column: 9, scope: !161)
!265 = !DILocation(line: 235, column: 7, scope: !161)
!266 = !DILocation(line: 236, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !161, file: !2, line: 236, column: 9)
!268 = !DILocation(line: 236, column: 11, scope: !267)
!269 = !DILocation(line: 236, column: 9, scope: !161)
!270 = !DILocation(line: 237, column: 9, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !2, line: 236, column: 16)
!272 = !DILocation(line: 238, column: 16, scope: !273)
!273 = distinct !DILexicalBlock(scope: !267, file: !2, line: 238, column: 16)
!274 = !DILocation(line: 238, column: 18, scope: !273)
!275 = !DILocation(line: 238, column: 16, scope: !267)
!276 = !DILocation(line: 239, column: 14, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !2, line: 238, column: 24)
!278 = !DILocation(line: 239, column: 12, scope: !277)
!279 = !DILocation(line: 240, column: 5, scope: !277)
!280 = !DILocation(line: 241, column: 36, scope: !281)
!281 = distinct !DILexicalBlock(scope: !273, file: !2, line: 240, column: 12)
!282 = !DILocation(line: 241, column: 14, scope: !281)
!283 = !DILocation(line: 241, column: 12, scope: !281)
!284 = !DILocation(line: 244, column: 5, scope: !161)
!285 = !DILocation(line: 244, column: 5, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !2, line: 244, column: 5)
!287 = distinct !DILexicalBlock(scope: !161, file: !2, line: 244, column: 5)
!288 = !DILocation(line: 244, column: 5, scope: !287)
!289 = !DILocation(line: 247, column: 5, scope: !161)
!290 = !DILocation(line: 247, column: 5, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !2, line: 247, column: 5)
!292 = distinct !DILexicalBlock(scope: !161, file: !2, line: 247, column: 5)
!293 = !DILocation(line: 247, column: 5, scope: !292)
!294 = !DILocation(line: 249, column: 5, scope: !161)
!295 = !DILocation(line: 249, column: 5, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 249, column: 5)
!297 = distinct !DILexicalBlock(scope: !161, file: !2, line: 249, column: 5)
!298 = !DILocation(line: 249, column: 5, scope: !297)
!299 = !DILocation(line: 252, column: 22, scope: !161)
!300 = !DILocation(line: 252, column: 5, scope: !161)
!301 = !DILocation(line: 252, column: 8, scope: !161)
!302 = !DILocation(line: 252, column: 20, scope: !161)
!303 = !DILocation(line: 253, column: 1, scope: !161)
!304 = distinct !DISubprogram(name: "setup_socket_from_systemd", scope: !2, file: !2, line: 59, type: !305, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !256)
!305 = !DISubroutineType(types: !306)
!306 = !{!129}
!307 = !DILocalVariable(name: "fd", scope: !304, file: !2, line: 61, type: !129)
!308 = !DILocation(line: 61, column: 9, scope: !304)
!309 = !DILocation(line: 63, column: 28, scope: !310)
!310 = distinct !DILexicalBlock(scope: !304, file: !2, line: 63, column: 9)
!311 = !DILocation(line: 63, column: 10, scope: !310)
!312 = !DILocation(line: 63, column: 9, scope: !304)
!313 = !DILocation(line: 64, column: 9, scope: !310)
!314 = !DILocalVariable(name: "flags", scope: !304, file: !2, line: 67, type: !129)
!315 = !DILocation(line: 67, column: 9, scope: !304)
!316 = !DILocation(line: 67, column: 23, scope: !304)
!317 = !DILocation(line: 67, column: 17, scope: !304)
!318 = !DILocation(line: 68, column: 9, scope: !319)
!319 = distinct !DILexicalBlock(scope: !304, file: !2, line: 68, column: 9)
!320 = !DILocation(line: 68, column: 15, scope: !319)
!321 = !DILocation(line: 68, column: 9, scope: !304)
!322 = !DILocation(line: 69, column: 9, scope: !319)
!323 = !DILocation(line: 70, column: 15, scope: !324)
!324 = distinct !DILexicalBlock(scope: !304, file: !2, line: 70, column: 9)
!325 = !DILocation(line: 70, column: 28, scope: !324)
!326 = !DILocation(line: 70, column: 34, scope: !324)
!327 = !DILocation(line: 70, column: 9, scope: !324)
!328 = !DILocation(line: 70, column: 48, scope: !324)
!329 = !DILocation(line: 70, column: 9, scope: !304)
!330 = !DILocation(line: 71, column: 9, scope: !324)
!331 = !DILocation(line: 73, column: 12, scope: !304)
!332 = !DILocation(line: 73, column: 5, scope: !304)
!333 = distinct !DISubprogram(name: "setup_socket_normally", scope: !2, file: !2, line: 200, type: !334, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !256)
!334 = !DISubroutineType(types: !335)
!335 = !{!129, !164}
!336 = !DILocalVariable(name: "l", arg: 1, scope: !333, file: !2, line: 200, type: !164)
!337 = !DILocation(line: 200, column: 31, scope: !333)
!338 = !DILocalVariable(name: "node", scope: !333, file: !2, line: 202, type: !151)
!339 = !DILocation(line: 202, column: 11, scope: !333)
!340 = !DILocalVariable(name: "port", scope: !333, file: !2, line: 202, type: !151)
!341 = !DILocation(line: 202, column: 18, scope: !333)
!342 = !DILocalVariable(name: "listener", scope: !333, file: !2, line: 203, type: !151)
!343 = !DILocation(line: 203, column: 11, scope: !333)
!344 = !DILocalVariable(name: "__old", scope: !345, file: !2, line: 203, type: !346)
!345 = distinct !DILexicalBlock(scope: !333, file: !2, line: 203, column: 22)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!347 = !DILocation(line: 203, column: 22, scope: !345)
!348 = !DILocalVariable(name: "__len", scope: !345, file: !2, line: 203, type: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !350, line: 46, baseType: !230)
!350 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!351 = !DILocalVariable(name: "__new", scope: !345, file: !2, line: 203, type: !151)
!352 = !DILocalVariable(name: "family", scope: !333, file: !2, line: 204, type: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !354, line: 28, baseType: !239)
!354 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!355 = !DILocation(line: 204, column: 17, scope: !333)
!356 = !DILocation(line: 204, column: 41, scope: !333)
!357 = !DILocation(line: 204, column: 26, scope: !333)
!358 = !DILocation(line: 205, column: 9, scope: !359)
!359 = distinct !DILexicalBlock(scope: !333, file: !2, line: 205, column: 9)
!360 = !DILocation(line: 205, column: 16, scope: !359)
!361 = !DILocation(line: 205, column: 9, scope: !333)
!362 = !DILocation(line: 206, column: 9, scope: !359)
!363 = !DILocalVariable(name: "addrs", scope: !333, file: !2, line: 208, type: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !366, line: 565, size: 384, elements: !367)
!366 = !DIFile(filename: "/usr/include/netdb.h", directory: "", checksumkind: CSK_MD5, checksum: "dd84cdc2a8dcb66c232d326e9ca8b469")
!367 = !{!368, !369, !370, !371, !372, !376, !385, !386}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !365, file: !366, line: 567, baseType: !129, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !365, file: !366, line: 568, baseType: !129, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !365, file: !366, line: 569, baseType: !129, size: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !365, file: !366, line: 570, baseType: !129, size: 32, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !365, file: !366, line: 571, baseType: !373, size: 32, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !374, line: 33, baseType: !375)
!374 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !222, line: 210, baseType: !139)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !365, file: !366, line: 572, baseType: !377, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !374, line: 180, size: 128, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !378, file: !374, line: 182, baseType: !353, size: 16)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !378, file: !374, line: 183, baseType: !382, size: 112, offset: 16)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 14)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !365, file: !366, line: 573, baseType: !151, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !365, file: !366, line: 574, baseType: !364, size: 64, offset: 320)
!387 = !DILocation(line: 208, column: 22, scope: !333)
!388 = !DILocalVariable(name: "hints", scope: !333, file: !2, line: 209, type: !365)
!389 = !DILocation(line: 209, column: 21, scope: !333)
!390 = !DILocation(line: 209, column: 29, scope: !333)
!391 = !DILocation(line: 210, column: 22, scope: !333)
!392 = !DILocalVariable(name: "ret", scope: !333, file: !2, line: 215, type: !129)
!393 = !DILocation(line: 215, column: 9, scope: !333)
!394 = !DILocation(line: 215, column: 27, scope: !333)
!395 = !DILocation(line: 215, column: 33, scope: !333)
!396 = !DILocation(line: 215, column: 15, scope: !333)
!397 = !DILocation(line: 216, column: 9, scope: !398)
!398 = distinct !DILexicalBlock(scope: !333, file: !2, line: 216, column: 9)
!399 = !DILocation(line: 216, column: 9, scope: !333)
!400 = !DILocation(line: 217, column: 9, scope: !398)
!401 = !DILocalVariable(name: "fd", scope: !333, file: !2, line: 219, type: !129)
!402 = !DILocation(line: 219, column: 9, scope: !333)
!403 = !DILocation(line: 219, column: 40, scope: !333)
!404 = !DILocation(line: 219, column: 47, scope: !333)
!405 = !DILocation(line: 219, column: 50, scope: !333)
!406 = !DILocation(line: 219, column: 57, scope: !333)
!407 = !DILocation(line: 219, column: 14, scope: !333)
!408 = !DILocation(line: 220, column: 18, scope: !333)
!409 = !DILocation(line: 220, column: 5, scope: !333)
!410 = !DILocation(line: 221, column: 12, scope: !333)
!411 = !DILocation(line: 221, column: 5, scope: !333)
!412 = distinct !DISubprogram(name: "parse_listener", scope: !2, file: !2, line: 130, type: !413, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !256)
!413 = !DISubroutineType(types: !414)
!414 = !{!353, !151, !415, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!416 = !DILocalVariable(name: "listener", arg: 1, scope: !412, file: !2, line: 130, type: !151)
!417 = !DILocation(line: 130, column: 22, scope: !412)
!418 = !DILocalVariable(name: "node", arg: 2, scope: !412, file: !2, line: 130, type: !415)
!419 = !DILocation(line: 130, column: 39, scope: !412)
!420 = !DILocalVariable(name: "port", arg: 3, scope: !412, file: !2, line: 130, type: !415)
!421 = !DILocation(line: 130, column: 52, scope: !412)
!422 = !DILocation(line: 132, column: 10, scope: !423)
!423 = distinct !DILexicalBlock(scope: !412, file: !2, line: 132, column: 9)
!424 = !DILocation(line: 132, column: 9, scope: !423)
!425 = !DILocation(line: 132, column: 19, scope: !423)
!426 = !DILocation(line: 132, column: 9, scope: !412)
!427 = !DILocation(line: 133, column: 36, scope: !423)
!428 = !DILocation(line: 133, column: 46, scope: !423)
!429 = !DILocation(line: 133, column: 52, scope: !423)
!430 = !DILocation(line: 133, column: 16, scope: !423)
!431 = !DILocation(line: 133, column: 9, scope: !423)
!432 = !DILocation(line: 134, column: 32, scope: !412)
!433 = !DILocation(line: 134, column: 42, scope: !412)
!434 = !DILocation(line: 134, column: 48, scope: !412)
!435 = !DILocation(line: 134, column: 12, scope: !412)
!436 = !DILocation(line: 134, column: 5, scope: !412)
!437 = !DILocation(line: 135, column: 1, scope: !412)
!438 = distinct !DISubprogram(name: "bind_and_listen_addrinfos", scope: !2, file: !2, line: 175, type: !439, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !256)
!439 = !DISubroutineType(types: !440)
!440 = !{!129, !364, !251}
!441 = !DILocalVariable(name: "addrs", arg: 1, scope: !438, file: !2, line: 175, type: !364)
!442 = !DILocation(line: 175, column: 44, scope: !438)
!443 = !DILocalVariable(name: "reuse_port", arg: 2, scope: !438, file: !2, line: 175, type: !251)
!444 = !DILocation(line: 175, column: 56, scope: !438)
!445 = !DILocalVariable(name: "addr", scope: !438, file: !2, line: 177, type: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!448 = !DILocation(line: 177, column: 28, scope: !438)
!449 = !DILocation(line: 180, column: 17, scope: !450)
!450 = distinct !DILexicalBlock(scope: !438, file: !2, line: 180, column: 5)
!451 = !DILocation(line: 180, column: 15, scope: !450)
!452 = !DILocation(line: 180, column: 10, scope: !450)
!453 = !DILocation(line: 180, column: 24, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !2, line: 180, column: 5)
!455 = !DILocation(line: 180, column: 5, scope: !450)
!456 = !DILocalVariable(name: "fd", scope: !457, file: !2, line: 181, type: !129)
!457 = distinct !DILexicalBlock(scope: !454, file: !2, line: 180, column: 52)
!458 = !DILocation(line: 181, column: 13, scope: !457)
!459 = !DILocation(line: 181, column: 25, scope: !457)
!460 = !DILocation(line: 181, column: 31, scope: !457)
!461 = !DILocation(line: 182, column: 13, scope: !457)
!462 = !DILocation(line: 182, column: 19, scope: !457)
!463 = !DILocation(line: 182, column: 31, scope: !457)
!464 = !DILocation(line: 182, column: 47, scope: !457)
!465 = !DILocation(line: 182, column: 53, scope: !457)
!466 = !DILocation(line: 181, column: 18, scope: !457)
!467 = !DILocation(line: 183, column: 13, scope: !468)
!468 = distinct !DILexicalBlock(scope: !457, file: !2, line: 183, column: 13)
!469 = !DILocation(line: 183, column: 16, scope: !468)
!470 = !DILocation(line: 183, column: 13, scope: !457)
!471 = !DILocation(line: 184, column: 13, scope: !468)
!472 = !DILocation(line: 186, column: 9, scope: !457)
!473 = !DILocation(line: 186, column: 9, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !2, line: 186, column: 9)
!475 = distinct !DILexicalBlock(scope: !457, file: !2, line: 186, column: 9)
!476 = !DILocation(line: 186, column: 9, scope: !475)
!477 = !DILocation(line: 187, column: 9, scope: !457)
!478 = !DILocation(line: 187, column: 9, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !2, line: 187, column: 9)
!480 = distinct !DILexicalBlock(scope: !457, file: !2, line: 187, column: 9)
!481 = !DILocation(line: 187, column: 9, scope: !480)
!482 = !DILocation(line: 190, column: 19, scope: !483)
!483 = distinct !DILexicalBlock(scope: !457, file: !2, line: 190, column: 13)
!484 = !DILocation(line: 190, column: 23, scope: !483)
!485 = !DILocation(line: 190, column: 29, scope: !483)
!486 = !DILocation(line: 190, column: 38, scope: !483)
!487 = !DILocation(line: 190, column: 44, scope: !483)
!488 = !DILocation(line: 190, column: 14, scope: !483)
!489 = !DILocation(line: 190, column: 13, scope: !457)
!490 = !DILocation(line: 191, column: 36, scope: !483)
!491 = !DILocation(line: 191, column: 40, scope: !483)
!492 = !DILocation(line: 191, column: 20, scope: !483)
!493 = !DILocation(line: 191, column: 13, scope: !483)
!494 = !DILocation(line: 193, column: 15, scope: !457)
!495 = !DILocation(line: 193, column: 9, scope: !457)
!496 = !DILocation(line: 194, column: 5, scope: !457)
!497 = !DILocation(line: 180, column: 37, scope: !454)
!498 = !DILocation(line: 180, column: 43, scope: !454)
!499 = !DILocation(line: 180, column: 35, scope: !454)
!500 = !DILocation(line: 180, column: 5, scope: !454)
!501 = distinct !{!501, !455, !502, !503}
!502 = !DILocation(line: 194, column: 5, scope: !450)
!503 = !{!"llvm.loop.mustprogress"}
!504 = !DILocation(line: 196, column: 5, scope: !438)
!505 = distinct !DISubprogram(name: "parse_listener_ipv6", scope: !2, file: !2, line: 108, type: !413, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !256)
!506 = !DILocalVariable(name: "listener", arg: 1, scope: !505, file: !2, line: 108, type: !151)
!507 = !DILocation(line: 108, column: 27, scope: !505)
!508 = !DILocalVariable(name: "node", arg: 2, scope: !505, file: !2, line: 108, type: !415)
!509 = !DILocation(line: 108, column: 44, scope: !505)
!510 = !DILocalVariable(name: "port", arg: 3, scope: !505, file: !2, line: 108, type: !415)
!511 = !DILocation(line: 108, column: 57, scope: !505)
!512 = !DILocalVariable(name: "last_colon", scope: !505, file: !2, line: 110, type: !151)
!513 = !DILocation(line: 110, column: 11, scope: !505)
!514 = !DILocation(line: 110, column: 32, scope: !505)
!515 = !DILocation(line: 110, column: 24, scope: !505)
!516 = !DILocation(line: 111, column: 10, scope: !517)
!517 = distinct !DILexicalBlock(scope: !505, file: !2, line: 111, column: 9)
!518 = !DILocation(line: 111, column: 9, scope: !505)
!519 = !DILocation(line: 112, column: 9, scope: !517)
!520 = !DILocation(line: 114, column: 11, scope: !521)
!521 = distinct !DILexicalBlock(scope: !505, file: !2, line: 114, column: 9)
!522 = !DILocation(line: 114, column: 22, scope: !521)
!523 = !DILocation(line: 114, column: 9, scope: !521)
!524 = !DILocation(line: 114, column: 27, scope: !521)
!525 = !DILocation(line: 114, column: 9, scope: !505)
!526 = !DILocation(line: 116, column: 11, scope: !527)
!527 = distinct !DILexicalBlock(scope: !521, file: !2, line: 114, column: 35)
!528 = !DILocation(line: 116, column: 22, scope: !527)
!529 = !DILocation(line: 116, column: 27, scope: !527)
!530 = !DILocation(line: 117, column: 17, scope: !527)
!531 = !DILocation(line: 117, column: 26, scope: !527)
!532 = !DILocation(line: 117, column: 10, scope: !527)
!533 = !DILocation(line: 117, column: 15, scope: !527)
!534 = !DILocation(line: 118, column: 17, scope: !527)
!535 = !DILocation(line: 118, column: 28, scope: !527)
!536 = !DILocation(line: 118, column: 10, scope: !527)
!537 = !DILocation(line: 118, column: 15, scope: !527)
!538 = !DILocation(line: 119, column: 5, scope: !527)
!539 = !DILocation(line: 121, column: 9, scope: !540)
!540 = distinct !DILexicalBlock(scope: !521, file: !2, line: 119, column: 12)
!541 = !DILocation(line: 121, column: 25, scope: !540)
!542 = !DILocation(line: 121, column: 18, scope: !540)
!543 = !DILocation(line: 121, column: 35, scope: !540)
!544 = !DILocation(line: 121, column: 40, scope: !540)
!545 = !DILocation(line: 122, column: 17, scope: !540)
!546 = !DILocation(line: 122, column: 26, scope: !540)
!547 = !DILocation(line: 122, column: 10, scope: !540)
!548 = !DILocation(line: 122, column: 15, scope: !540)
!549 = !DILocation(line: 123, column: 10, scope: !540)
!550 = !DILocation(line: 123, column: 15, scope: !540)
!551 = !DILocation(line: 126, column: 5, scope: !505)
!552 = !DILocation(line: 127, column: 1, scope: !505)
!553 = distinct !DISubprogram(name: "parse_listener_ipv4", scope: !2, file: !2, line: 77, type: !413, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !256)
!554 = !DILocalVariable(name: "listener", arg: 1, scope: !553, file: !2, line: 77, type: !151)
!555 = !DILocation(line: 77, column: 27, scope: !553)
!556 = !DILocalVariable(name: "node", arg: 2, scope: !553, file: !2, line: 77, type: !415)
!557 = !DILocation(line: 77, column: 44, scope: !553)
!558 = !DILocalVariable(name: "port", arg: 3, scope: !553, file: !2, line: 77, type: !415)
!559 = !DILocation(line: 77, column: 57, scope: !553)
!560 = !DILocalVariable(name: "colon", scope: !553, file: !2, line: 79, type: !151)
!561 = !DILocation(line: 79, column: 11, scope: !553)
!562 = !DILocation(line: 79, column: 27, scope: !553)
!563 = !DILocation(line: 79, column: 19, scope: !553)
!564 = !DILocation(line: 80, column: 10, scope: !565)
!565 = distinct !DILexicalBlock(scope: !553, file: !2, line: 80, column: 9)
!566 = !DILocation(line: 80, column: 9, scope: !553)
!567 = !DILocation(line: 81, column: 10, scope: !568)
!568 = distinct !DILexicalBlock(scope: !565, file: !2, line: 80, column: 17)
!569 = !DILocation(line: 81, column: 15, scope: !568)
!570 = !DILocation(line: 82, column: 21, scope: !571)
!571 = distinct !DILexicalBlock(scope: !568, file: !2, line: 82, column: 13)
!572 = !DILocation(line: 82, column: 14, scope: !571)
!573 = !DILocation(line: 82, column: 13, scope: !568)
!574 = !DILocation(line: 84, column: 14, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !2, line: 82, column: 37)
!576 = !DILocation(line: 84, column: 19, scope: !575)
!577 = !DILocation(line: 85, column: 9, scope: !575)
!578 = !DILocation(line: 87, column: 21, scope: !579)
!579 = distinct !DILexicalBlock(scope: !571, file: !2, line: 85, column: 16)
!580 = !DILocation(line: 87, column: 14, scope: !579)
!581 = !DILocation(line: 87, column: 19, scope: !579)
!582 = !DILocation(line: 89, column: 5, scope: !568)
!583 = !DILocation(line: 94, column: 10, scope: !584)
!584 = distinct !DILexicalBlock(scope: !565, file: !2, line: 89, column: 12)
!585 = !DILocation(line: 94, column: 16, scope: !584)
!586 = !DILocation(line: 95, column: 17, scope: !584)
!587 = !DILocation(line: 95, column: 10, scope: !584)
!588 = !DILocation(line: 95, column: 15, scope: !584)
!589 = !DILocation(line: 96, column: 17, scope: !584)
!590 = !DILocation(line: 96, column: 23, scope: !584)
!591 = !DILocation(line: 96, column: 10, scope: !584)
!592 = !DILocation(line: 96, column: 15, scope: !584)
!593 = !DILocation(line: 98, column: 22, scope: !594)
!594 = distinct !DILexicalBlock(scope: !584, file: !2, line: 98, column: 13)
!595 = !DILocation(line: 98, column: 21, scope: !594)
!596 = !DILocation(line: 98, column: 14, scope: !594)
!597 = !DILocation(line: 98, column: 13, scope: !584)
!598 = !DILocation(line: 100, column: 14, scope: !599)
!599 = distinct !DILexicalBlock(scope: !594, file: !2, line: 98, column: 34)
!600 = !DILocation(line: 100, column: 19, scope: !599)
!601 = !DILocation(line: 101, column: 9, scope: !599)
!602 = !DILocation(line: 104, column: 5, scope: !553)
!603 = distinct !DISubprogram(name: "listen_addrinfo", scope: !2, file: !2, line: 138, type: !604, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !256)
!604 = !DISubroutineType(types: !605)
!605 = !{!129, !129, !446}
!606 = !DILocalVariable(name: "fd", arg: 1, scope: !603, file: !2, line: 138, type: !129)
!607 = !DILocation(line: 138, column: 21, scope: !603)
!608 = !DILocalVariable(name: "addr", arg: 2, scope: !603, file: !2, line: 138, type: !446)
!609 = !DILocation(line: 138, column: 48, scope: !603)
!610 = !DILocation(line: 140, column: 16, scope: !611)
!611 = distinct !DILexicalBlock(scope: !603, file: !2, line: 140, column: 9)
!612 = !DILocation(line: 140, column: 20, scope: !611)
!613 = !DILocation(line: 140, column: 9, scope: !611)
!614 = !DILocation(line: 140, column: 40, scope: !611)
!615 = !DILocation(line: 140, column: 9, scope: !603)
!616 = !DILocation(line: 141, column: 9, scope: !611)
!617 = !DILocalVariable(name: "host_buf", scope: !603, file: !2, line: 143, type: !618)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8200, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 1025)
!621 = !DILocation(line: 143, column: 10, scope: !603)
!622 = !DILocalVariable(name: "serv_buf", scope: !603, file: !2, line: 143, type: !623)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 32)
!626 = !DILocation(line: 143, column: 32, scope: !603)
!627 = !DILocalVariable(name: "ret", scope: !603, file: !2, line: 144, type: !129)
!628 = !DILocation(line: 144, column: 9, scope: !603)
!629 = !DILocation(line: 144, column: 27, scope: !603)
!630 = !DILocation(line: 144, column: 33, scope: !603)
!631 = !DILocation(line: 144, column: 42, scope: !603)
!632 = !DILocation(line: 144, column: 48, scope: !603)
!633 = !DILocation(line: 144, column: 60, scope: !603)
!634 = !DILocation(line: 145, column: 23, scope: !603)
!635 = !DILocation(line: 144, column: 15, scope: !603)
!636 = !DILocation(line: 146, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !603, file: !2, line: 146, column: 9)
!638 = !DILocation(line: 146, column: 9, scope: !603)
!639 = !DILocation(line: 147, column: 9, scope: !637)
!640 = !DILocation(line: 149, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !603, file: !2, line: 149, column: 9)
!642 = !DILocation(line: 149, column: 15, scope: !641)
!643 = !DILocation(line: 149, column: 25, scope: !641)
!644 = !DILocation(line: 149, column: 9, scope: !603)
!645 = !DILocation(line: 150, column: 9, scope: !641)
!646 = !DILocation(line: 152, column: 9, scope: !641)
!647 = !DILocation(line: 154, column: 12, scope: !603)
!648 = !DILocation(line: 154, column: 5, scope: !603)
!649 = distinct !DISubprogram(name: "get_backlog_size", scope: !2, file: !2, line: 38, type: !305, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !256)
!650 = !DILocalVariable(name: "backlog", scope: !649, file: !2, line: 41, type: !129)
!651 = !DILocation(line: 41, column: 9, scope: !649)
!652 = !DILocalVariable(name: "somaxconn", scope: !649, file: !2, line: 45, type: !653)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !655, line: 7, baseType: !656)
!655 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !657, line: 49, size: 1728, elements: !658)
!657 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !674, !676, !677, !678, !680, !681, !683, !687, !690, !692, !695, !698, !699, !700, !701, !702}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !656, file: !657, line: 51, baseType: !129, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !656, file: !657, line: 54, baseType: !151, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !656, file: !657, line: 55, baseType: !151, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !656, file: !657, line: 56, baseType: !151, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !656, file: !657, line: 57, baseType: !151, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !656, file: !657, line: 58, baseType: !151, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !656, file: !657, line: 59, baseType: !151, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !656, file: !657, line: 60, baseType: !151, size: 64, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !656, file: !657, line: 61, baseType: !151, size: 64, offset: 512)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !656, file: !657, line: 64, baseType: !151, size: 64, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !656, file: !657, line: 65, baseType: !151, size: 64, offset: 640)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !656, file: !657, line: 66, baseType: !151, size: 64, offset: 704)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !656, file: !657, line: 68, baseType: !672, size: 64, offset: 768)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !657, line: 36, flags: DIFlagFwdDecl)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !656, file: !657, line: 70, baseType: !675, size: 64, offset: 832)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !656, file: !657, line: 72, baseType: !129, size: 32, offset: 896)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !656, file: !657, line: 73, baseType: !129, size: 32, offset: 928)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !656, file: !657, line: 74, baseType: !679, size: 64, offset: 960)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !222, line: 152, baseType: !223)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !656, file: !657, line: 77, baseType: !239, size: 16, offset: 1024)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !656, file: !657, line: 78, baseType: !682, size: 8, offset: 1040)
!682 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !656, file: !657, line: 79, baseType: !684, size: 8, offset: 1048)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 1)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !656, file: !657, line: 81, baseType: !688, size: 64, offset: 1088)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !657, line: 43, baseType: null)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !656, file: !657, line: 89, baseType: !691, size: 64, offset: 1152)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !222, line: 153, baseType: !223)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !656, file: !657, line: 91, baseType: !693, size: 64, offset: 1216)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !657, line: 37, flags: DIFlagFwdDecl)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !656, file: !657, line: 92, baseType: !696, size: 64, offset: 1280)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !657, line: 38, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !656, file: !657, line: 93, baseType: !675, size: 64, offset: 1344)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !656, file: !657, line: 94, baseType: !187, size: 64, offset: 1408)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !656, file: !657, line: 95, baseType: !349, size: 64, offset: 1472)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !656, file: !657, line: 96, baseType: !129, size: 32, offset: 1536)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !656, file: !657, line: 98, baseType: !703, size: 160, offset: 1568)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !704)
!704 = !{!705}
!705 = !DISubrange(count: 20)
!706 = !DILocation(line: 45, column: 11, scope: !649)
!707 = !DILocation(line: 47, column: 17, scope: !649)
!708 = !DILocation(line: 47, column: 15, scope: !649)
!709 = !DILocation(line: 48, column: 9, scope: !710)
!710 = distinct !DILexicalBlock(scope: !649, file: !2, line: 48, column: 9)
!711 = !DILocation(line: 48, column: 9, scope: !649)
!712 = !DILocalVariable(name: "tmp", scope: !713, file: !2, line: 49, type: !129)
!713 = distinct !DILexicalBlock(scope: !710, file: !2, line: 48, column: 20)
!714 = !DILocation(line: 49, column: 13, scope: !713)
!715 = !DILocation(line: 50, column: 20, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !2, line: 50, column: 13)
!717 = !DILocation(line: 50, column: 13, scope: !716)
!718 = !DILocation(line: 50, column: 43, scope: !716)
!719 = !DILocation(line: 50, column: 13, scope: !713)
!720 = !DILocation(line: 51, column: 23, scope: !716)
!721 = !DILocation(line: 51, column: 21, scope: !716)
!722 = !DILocation(line: 51, column: 13, scope: !716)
!723 = !DILocation(line: 52, column: 16, scope: !713)
!724 = !DILocation(line: 52, column: 9, scope: !713)
!725 = !DILocation(line: 53, column: 5, scope: !713)
!726 = !DILocation(line: 55, column: 12, scope: !649)
!727 = !DILocation(line: 55, column: 5, scope: !649)
