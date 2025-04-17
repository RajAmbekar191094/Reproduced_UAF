; ModuleID = '/home/raj/coturn/src/apps/relay/libtelnet.c'
source_filename = "/home/raj/coturn/src/apps/relay/libtelnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.telnet_t = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i8, i8, i8 }
%union.telnet_event_t = type { %struct.error_t }
%struct.error_t = type { i32, ptr, ptr, ptr, i32, i32 }
%struct.data_t = type { i32, ptr, i64 }
%struct.iac_t = type { i32, i8 }
%struct.telnet_rfc1143_t = type { i8, i8 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.negotiate_t = type { i32, i8 }
%struct.subnegotiate_t = type { i32, ptr, i64, i8 }
%struct.telnet_telopt_t = type { i16, i8, i8 }
%struct.zmp_t = type { i32, ptr, i64 }
%struct.ttype_t = type { i32, i8, ptr }
%struct.environ_t = type { i32, ptr, i64, i8 }
%struct.telnet_environ_t = type { i8, ptr, ptr }
%struct.mssp_t = type { i32, ptr, i64 }

@telnet_vprintf.CRLF = internal constant [2 x i8] c"\0D\0A", align 1, !dbg !0
@telnet_vprintf.CRNUL = internal constant [2 x i8] c"\0D\00", align 1, !dbg !179
@__func__.telnet_vprintf = private unnamed_addr constant [15 x i8] c"telnet_vprintf\00", align 1, !dbg !184
@.str = private unnamed_addr constant [20 x i8] c"malloc() failed: %s\00", align 1, !dbg !189
@__func__.telnet_raw_vprintf = private unnamed_addr constant [19 x i8] c"telnet_raw_vprintf\00", align 1, !dbg !194
@telnet_ttype_send.SEND = internal constant [6 x i8] c"\FF\FA\18\01\FF\F0", align 1, !dbg !199
@telnet_ttype_is.IS = internal constant [4 x i8] c"\FF\FA\18\00", align 1, !dbg !209
@__func__._process = private unnamed_addr constant [9 x i8] c"_process\00", align 1, !dbg !217
@.str.1 = private unnamed_addr constant [40 x i8] c"unexpected byte after IAC inside SB: %d\00", align 1, !dbg !222
@__func__._negotiate = private unnamed_addr constant [11 x i8] c"_negotiate\00", align 1, !dbg !227
@.str.2 = private unnamed_addr constant [22 x i8] c"DONT answered by WILL\00", align 1, !dbg !232
@.str.3 = private unnamed_addr constant [20 x i8] c"WONT answered by DO\00", align 1, !dbg !237
@_buffer_sizes = internal constant [5 x i64] [i64 0, i64 512, i64 2048, i64 8192, i64 16384], align 16, !dbg !257
@__func__._buffer_byte = private unnamed_addr constant [13 x i8] c"_buffer_byte\00", align 1, !dbg !242
@.str.4 = private unnamed_addr constant [41 x i8] c"subnegotiation buffer size limit reached\00", align 1, !dbg !247
@.str.5 = private unnamed_addr constant [17 x i8] c"realloc() failed\00", align 1, !dbg !252
@__func__._zmp_telnet = private unnamed_addr constant [12 x i8] c"_zmp_telnet\00", align 1, !dbg !262
@.str.6 = private unnamed_addr constant [21 x i8] c"incomplete ZMP frame\00", align 1, !dbg !267
@.str.7 = private unnamed_addr constant [20 x i8] c"calloc() failed: %s\00", align 1, !dbg !272
@__func__._ttype_telnet = private unnamed_addr constant [14 x i8] c"_ttype_telnet\00", align 1, !dbg !274
@.str.8 = private unnamed_addr constant [33 x i8] c"incomplete TERMINAL-TYPE request\00", align 1, !dbg !279
@.str.9 = private unnamed_addr constant [39 x i8] c"TERMINAL-TYPE request has invalid type\00", align 1, !dbg !284
@__func__._environ_telnet = private unnamed_addr constant [16 x i8] c"_environ_telnet\00", align 1, !dbg !289
@.str.10 = private unnamed_addr constant [37 x i8] c"telopt %d subneg has invalid command\00", align 1, !dbg !294
@.str.11 = private unnamed_addr constant [39 x i8] c"telopt %d subneg missing variable type\00", align 1, !dbg !299
@.str.12 = private unnamed_addr constant [31 x i8] c"telopt %d subneg ends with ESC\00", align 1, !dbg !301
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !306
@__func__._mssp_telnet = private unnamed_addr constant [13 x i8] c"_mssp_telnet\00", align 1, !dbg !311
@.str.14 = private unnamed_addr constant [37 x i8] c"MSSP subnegotiation has invalid data\00", align 1, !dbg !313
@.str.15 = private unnamed_addr constant [33 x i8] c"invalid MSSP subnegotiation data\00", align 1, !dbg !315
@__func__._set_rfc1143 = private unnamed_addr constant [13 x i8] c"_set_rfc1143\00", align 1, !dbg !317
@.str.16 = private unnamed_addr constant [21 x i8] c"realloc() failed: %s\00", align 1, !dbg !319
@.str.17 = private unnamed_addr constant [44 x i8] c"/home/raj/coturn/src/apps/relay/libtelnet.c\00", align 1, !dbg !321

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @telnet_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #0 !dbg !334 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !337, metadata !DIExpression()), !dbg !338
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !339, metadata !DIExpression()), !dbg !340
  store i8 %2, ptr %8, align 1
  call void @llvm.dbg.declare(metadata ptr %8, metadata !341, metadata !DIExpression()), !dbg !342
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !343, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.declare(metadata ptr %10, metadata !345, metadata !DIExpression()), !dbg !347
  %11 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 64) #11, !dbg !348
  store ptr %11, ptr %10, align 8, !dbg !347
  %12 = load ptr, ptr %10, align 8, !dbg !349
  %13 = icmp eq ptr %12, null, !dbg !351
  br i1 %13, label %14, label %15, !dbg !352

14:                                               ; preds = %4
  store ptr null, ptr %5, align 8, !dbg !353
  br label %29, !dbg !353

15:                                               ; preds = %4
  %16 = load ptr, ptr %9, align 8, !dbg !354
  %17 = load ptr, ptr %10, align 8, !dbg !355
  %18 = getelementptr inbounds %struct.telnet_t, ptr %17, i32 0, i32 0, !dbg !356
  store ptr %16, ptr %18, align 8, !dbg !357
  %19 = load ptr, ptr %6, align 8, !dbg !358
  %20 = load ptr, ptr %10, align 8, !dbg !359
  %21 = getelementptr inbounds %struct.telnet_t, ptr %20, i32 0, i32 1, !dbg !360
  store ptr %19, ptr %21, align 8, !dbg !361
  %22 = load ptr, ptr %7, align 8, !dbg !362
  %23 = load ptr, ptr %10, align 8, !dbg !363
  %24 = getelementptr inbounds %struct.telnet_t, ptr %23, i32 0, i32 2, !dbg !364
  store ptr %22, ptr %24, align 8, !dbg !365
  %25 = load i8, ptr %8, align 1, !dbg !366
  %26 = load ptr, ptr %10, align 8, !dbg !367
  %27 = getelementptr inbounds %struct.telnet_t, ptr %26, i32 0, i32 8, !dbg !368
  store i8 %25, ptr %27, align 4, !dbg !369
  %28 = load ptr, ptr %10, align 8, !dbg !370
  store ptr %28, ptr %5, align 8, !dbg !371
  br label %29, !dbg !371

29:                                               ; preds = %15, %14
  %30 = load ptr, ptr %5, align 8, !dbg !372
  ret ptr %30, !dbg !372
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_free(ptr noundef %0) #0 !dbg !373 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !374, metadata !DIExpression()), !dbg !375
  %3 = load ptr, ptr %2, align 8, !dbg !376
  %4 = getelementptr inbounds %struct.telnet_t, ptr %3, i32 0, i32 4, !dbg !378
  %5 = load ptr, ptr %4, align 8, !dbg !378
  %6 = icmp ne ptr %5, null, !dbg !379
  br i1 %6, label %7, label %17, !dbg !380

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !381
  %9 = getelementptr inbounds %struct.telnet_t, ptr %8, i32 0, i32 4, !dbg !383
  %10 = load ptr, ptr %9, align 8, !dbg !383
  call void @free(ptr noundef %10) #12, !dbg !384
  %11 = load ptr, ptr %2, align 8, !dbg !385
  %12 = getelementptr inbounds %struct.telnet_t, ptr %11, i32 0, i32 4, !dbg !386
  store ptr null, ptr %12, align 8, !dbg !387
  %13 = load ptr, ptr %2, align 8, !dbg !388
  %14 = getelementptr inbounds %struct.telnet_t, ptr %13, i32 0, i32 5, !dbg !389
  store i64 0, ptr %14, align 8, !dbg !390
  %15 = load ptr, ptr %2, align 8, !dbg !391
  %16 = getelementptr inbounds %struct.telnet_t, ptr %15, i32 0, i32 6, !dbg !392
  store i64 0, ptr %16, align 8, !dbg !393
  br label %17, !dbg !394

17:                                               ; preds = %7, %1
  %18 = load ptr, ptr %2, align 8, !dbg !395
  %19 = getelementptr inbounds %struct.telnet_t, ptr %18, i32 0, i32 3, !dbg !397
  %20 = load ptr, ptr %19, align 8, !dbg !397
  %21 = icmp ne ptr %20, null, !dbg !395
  br i1 %21, label %22, label %30, !dbg !398

22:                                               ; preds = %17
  %23 = load ptr, ptr %2, align 8, !dbg !399
  %24 = getelementptr inbounds %struct.telnet_t, ptr %23, i32 0, i32 3, !dbg !401
  %25 = load ptr, ptr %24, align 8, !dbg !401
  call void @free(ptr noundef %25) #12, !dbg !402
  %26 = load ptr, ptr %2, align 8, !dbg !403
  %27 = getelementptr inbounds %struct.telnet_t, ptr %26, i32 0, i32 3, !dbg !404
  store ptr null, ptr %27, align 8, !dbg !405
  %28 = load ptr, ptr %2, align 8, !dbg !406
  %29 = getelementptr inbounds %struct.telnet_t, ptr %28, i32 0, i32 10, !dbg !407
  store i8 0, ptr %29, align 2, !dbg !408
  br label %30, !dbg !409

30:                                               ; preds = %22, %17
  %31 = load ptr, ptr %2, align 8, !dbg !410
  call void @free(ptr noundef %31) #12, !dbg !411
  ret void, !dbg !412
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_recv(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !413 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !416, metadata !DIExpression()), !dbg !417
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !418, metadata !DIExpression()), !dbg !419
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !420, metadata !DIExpression()), !dbg !421
  %7 = load ptr, ptr %4, align 8, !dbg !422
  %8 = load ptr, ptr %5, align 8, !dbg !423
  %9 = load i64, ptr %6, align 8, !dbg !424
  call void @_process(ptr noundef %7, ptr noundef %8, i64 noundef %9), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_process(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !427 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.telnet_event_t, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !428, metadata !DIExpression()), !dbg !429
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !430, metadata !DIExpression()), !dbg !431
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata ptr %7, metadata !434, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.declare(metadata ptr %8, metadata !436, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.declare(metadata ptr %9, metadata !438, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.declare(metadata ptr %10, metadata !440, metadata !DIExpression()), !dbg !441
  store i64 0, ptr %10, align 8, !dbg !442
  store i64 0, ptr %9, align 8, !dbg !444
  br label %11, !dbg !445

11:                                               ; preds = %190, %3
  %12 = load i64, ptr %9, align 8, !dbg !446
  %13 = load i64, ptr %6, align 8, !dbg !448
  %14 = icmp ne i64 %12, %13, !dbg !449
  br i1 %14, label %15, label %193, !dbg !450

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 8, !dbg !451
  %17 = load i64, ptr %9, align 8, !dbg !453
  %18 = getelementptr inbounds i8, ptr %16, i64 %17, !dbg !451
  %19 = load i8, ptr %18, align 1, !dbg !451
  store i8 %19, ptr %8, align 1, !dbg !454
  %20 = load ptr, ptr %4, align 8, !dbg !455
  %21 = getelementptr inbounds %struct.telnet_t, ptr %20, i32 0, i32 7, !dbg !456
  %22 = load i32, ptr %21, align 8, !dbg !456
  switch i32 %22, label %189 [
    i32 0, label %23
    i32 1, label %51
    i32 2, label %98
    i32 3, label %98
    i32 4, label %98
    i32 5, label %98
    i32 6, label %105
    i32 7, label %113
    i32 8, label %132
  ], !dbg !457

23:                                               ; preds = %15
  %24 = load i8, ptr %8, align 1, !dbg !458
  %25 = zext i8 %24 to i32, !dbg !458
  %26 = icmp eq i32 %25, 255, !dbg !461
  br i1 %26, label %27, label %50, !dbg !462

27:                                               ; preds = %23
  %28 = load i64, ptr %9, align 8, !dbg !463
  %29 = load i64, ptr %10, align 8, !dbg !466
  %30 = icmp ne i64 %28, %29, !dbg !467
  br i1 %30, label %31, label %47, !dbg !468

31:                                               ; preds = %27
  store i32 0, ptr %7, align 8, !dbg !469
  %32 = load ptr, ptr %5, align 8, !dbg !471
  %33 = load i64, ptr %10, align 8, !dbg !472
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !473
  %35 = getelementptr inbounds %struct.data_t, ptr %7, i32 0, i32 1, !dbg !474
  store ptr %34, ptr %35, align 8, !dbg !475
  %36 = load i64, ptr %9, align 8, !dbg !476
  %37 = load i64, ptr %10, align 8, !dbg !477
  %38 = sub i64 %36, %37, !dbg !478
  %39 = getelementptr inbounds %struct.data_t, ptr %7, i32 0, i32 2, !dbg !479
  store i64 %38, ptr %39, align 8, !dbg !480
  %40 = load ptr, ptr %4, align 8, !dbg !481
  %41 = getelementptr inbounds %struct.telnet_t, ptr %40, i32 0, i32 2, !dbg !482
  %42 = load ptr, ptr %41, align 8, !dbg !482
  %43 = load ptr, ptr %4, align 8, !dbg !483
  %44 = load ptr, ptr %4, align 8, !dbg !484
  %45 = getelementptr inbounds %struct.telnet_t, ptr %44, i32 0, i32 0, !dbg !485
  %46 = load ptr, ptr %45, align 8, !dbg !485
  call void %42(ptr noundef %43, ptr noundef %7, ptr noundef %46), !dbg !481
  br label %47, !dbg !486

47:                                               ; preds = %31, %27
  %48 = load ptr, ptr %4, align 8, !dbg !487
  %49 = getelementptr inbounds %struct.telnet_t, ptr %48, i32 0, i32 7, !dbg !488
  store i32 1, ptr %49, align 8, !dbg !489
  br label %50, !dbg !490

50:                                               ; preds = %47, %23
  br label %189, !dbg !491

51:                                               ; preds = %15
  %52 = load i8, ptr %8, align 1, !dbg !492
  %53 = zext i8 %52 to i32, !dbg !492
  switch i32 %53, label %83 [
    i32 250, label %54
    i32 251, label %57
    i32 252, label %60
    i32 253, label %63
    i32 254, label %66
    i32 255, label %69
  ], !dbg !493

54:                                               ; preds = %51
  %55 = load ptr, ptr %4, align 8, !dbg !494
  %56 = getelementptr inbounds %struct.telnet_t, ptr %55, i32 0, i32 7, !dbg !496
  store i32 6, ptr %56, align 8, !dbg !497
  br label %97, !dbg !498

57:                                               ; preds = %51
  %58 = load ptr, ptr %4, align 8, !dbg !499
  %59 = getelementptr inbounds %struct.telnet_t, ptr %58, i32 0, i32 7, !dbg !500
  store i32 2, ptr %59, align 8, !dbg !501
  br label %97, !dbg !502

60:                                               ; preds = %51
  %61 = load ptr, ptr %4, align 8, !dbg !503
  %62 = getelementptr inbounds %struct.telnet_t, ptr %61, i32 0, i32 7, !dbg !504
  store i32 3, ptr %62, align 8, !dbg !505
  br label %97, !dbg !506

63:                                               ; preds = %51
  %64 = load ptr, ptr %4, align 8, !dbg !507
  %65 = getelementptr inbounds %struct.telnet_t, ptr %64, i32 0, i32 7, !dbg !508
  store i32 4, ptr %65, align 8, !dbg !509
  br label %97, !dbg !510

66:                                               ; preds = %51
  %67 = load ptr, ptr %4, align 8, !dbg !511
  %68 = getelementptr inbounds %struct.telnet_t, ptr %67, i32 0, i32 7, !dbg !512
  store i32 5, ptr %68, align 8, !dbg !513
  br label %97, !dbg !514

69:                                               ; preds = %51
  store i32 0, ptr %7, align 8, !dbg !515
  %70 = getelementptr inbounds %struct.data_t, ptr %7, i32 0, i32 1, !dbg !516
  store ptr %8, ptr %70, align 8, !dbg !517
  %71 = getelementptr inbounds %struct.data_t, ptr %7, i32 0, i32 2, !dbg !518
  store i64 1, ptr %71, align 8, !dbg !519
  %72 = load ptr, ptr %4, align 8, !dbg !520
  %73 = getelementptr inbounds %struct.telnet_t, ptr %72, i32 0, i32 2, !dbg !521
  %74 = load ptr, ptr %73, align 8, !dbg !521
  %75 = load ptr, ptr %4, align 8, !dbg !522
  %76 = load ptr, ptr %4, align 8, !dbg !523
  %77 = getelementptr inbounds %struct.telnet_t, ptr %76, i32 0, i32 0, !dbg !524
  %78 = load ptr, ptr %77, align 8, !dbg !524
  call void %74(ptr noundef %75, ptr noundef %7, ptr noundef %78), !dbg !520
  %79 = load i64, ptr %9, align 8, !dbg !525
  %80 = add i64 %79, 1, !dbg !526
  store i64 %80, ptr %10, align 8, !dbg !527
  %81 = load ptr, ptr %4, align 8, !dbg !528
  %82 = getelementptr inbounds %struct.telnet_t, ptr %81, i32 0, i32 7, !dbg !529
  store i32 0, ptr %82, align 8, !dbg !530
  br label %97, !dbg !531

83:                                               ; preds = %51
  store i32 2, ptr %7, align 8, !dbg !532
  %84 = load i8, ptr %8, align 1, !dbg !533
  %85 = getelementptr inbounds %struct.iac_t, ptr %7, i32 0, i32 1, !dbg !534
  store i8 %84, ptr %85, align 4, !dbg !535
  %86 = load ptr, ptr %4, align 8, !dbg !536
  %87 = getelementptr inbounds %struct.telnet_t, ptr %86, i32 0, i32 2, !dbg !537
  %88 = load ptr, ptr %87, align 8, !dbg !537
  %89 = load ptr, ptr %4, align 8, !dbg !538
  %90 = load ptr, ptr %4, align 8, !dbg !539
  %91 = getelementptr inbounds %struct.telnet_t, ptr %90, i32 0, i32 0, !dbg !540
  %92 = load ptr, ptr %91, align 8, !dbg !540
  call void %88(ptr noundef %89, ptr noundef %7, ptr noundef %92), !dbg !536
  %93 = load i64, ptr %9, align 8, !dbg !541
  %94 = add i64 %93, 1, !dbg !542
  store i64 %94, ptr %10, align 8, !dbg !543
  %95 = load ptr, ptr %4, align 8, !dbg !544
  %96 = getelementptr inbounds %struct.telnet_t, ptr %95, i32 0, i32 7, !dbg !545
  store i32 0, ptr %96, align 8, !dbg !546
  br label %97, !dbg !547

97:                                               ; preds = %83, %69, %66, %63, %60, %57, %54
  br label %189, !dbg !548

98:                                               ; preds = %15, %15, %15, %15
  %99 = load ptr, ptr %4, align 8, !dbg !549
  %100 = load i8, ptr %8, align 1, !dbg !550
  call void @_negotiate(ptr noundef %99, i8 noundef zeroext %100), !dbg !551
  %101 = load i64, ptr %9, align 8, !dbg !552
  %102 = add i64 %101, 1, !dbg !553
  store i64 %102, ptr %10, align 8, !dbg !554
  %103 = load ptr, ptr %4, align 8, !dbg !555
  %104 = getelementptr inbounds %struct.telnet_t, ptr %103, i32 0, i32 7, !dbg !556
  store i32 0, ptr %104, align 8, !dbg !557
  br label %189, !dbg !558

105:                                              ; preds = %15
  %106 = load i8, ptr %8, align 1, !dbg !559
  %107 = load ptr, ptr %4, align 8, !dbg !560
  %108 = getelementptr inbounds %struct.telnet_t, ptr %107, i32 0, i32 9, !dbg !561
  store i8 %106, ptr %108, align 1, !dbg !562
  %109 = load ptr, ptr %4, align 8, !dbg !563
  %110 = getelementptr inbounds %struct.telnet_t, ptr %109, i32 0, i32 6, !dbg !564
  store i64 0, ptr %110, align 8, !dbg !565
  %111 = load ptr, ptr %4, align 8, !dbg !566
  %112 = getelementptr inbounds %struct.telnet_t, ptr %111, i32 0, i32 7, !dbg !567
  store i32 7, ptr %112, align 8, !dbg !568
  br label %189, !dbg !569

113:                                              ; preds = %15
  %114 = load i8, ptr %8, align 1, !dbg !570
  %115 = zext i8 %114 to i32, !dbg !570
  %116 = icmp eq i32 %115, 255, !dbg !572
  br i1 %116, label %117, label %120, !dbg !573

117:                                              ; preds = %113
  %118 = load ptr, ptr %4, align 8, !dbg !574
  %119 = getelementptr inbounds %struct.telnet_t, ptr %118, i32 0, i32 7, !dbg !576
  store i32 8, ptr %119, align 8, !dbg !577
  br label %131, !dbg !578

120:                                              ; preds = %113
  %121 = load ptr, ptr %4, align 8, !dbg !579
  %122 = load i8, ptr %8, align 1, !dbg !581
  %123 = call i32 @_buffer_byte(ptr noundef %121, i8 noundef zeroext %122), !dbg !582
  %124 = icmp ne i32 %123, 0, !dbg !583
  br i1 %124, label %125, label %130, !dbg !584

125:                                              ; preds = %120
  %126 = load i64, ptr %9, align 8, !dbg !585
  %127 = add i64 %126, 1, !dbg !587
  store i64 %127, ptr %10, align 8, !dbg !588
  %128 = load ptr, ptr %4, align 8, !dbg !589
  %129 = getelementptr inbounds %struct.telnet_t, ptr %128, i32 0, i32 7, !dbg !590
  store i32 0, ptr %129, align 8, !dbg !591
  br label %130, !dbg !592

130:                                              ; preds = %125, %120
  br label %131

131:                                              ; preds = %130, %117
  br label %189, !dbg !593

132:                                              ; preds = %15
  %133 = load i8, ptr %8, align 1, !dbg !594
  %134 = zext i8 %133 to i32, !dbg !594
  switch i32 %134, label %165 [
    i32 240, label %135
    i32 255, label %152
  ], !dbg !595

135:                                              ; preds = %132
  %136 = load i64, ptr %9, align 8, !dbg !596
  %137 = add i64 %136, 1, !dbg !598
  store i64 %137, ptr %10, align 8, !dbg !599
  %138 = load ptr, ptr %4, align 8, !dbg !600
  %139 = getelementptr inbounds %struct.telnet_t, ptr %138, i32 0, i32 7, !dbg !601
  store i32 0, ptr %139, align 8, !dbg !602
  %140 = load ptr, ptr %4, align 8, !dbg !603
  %141 = call i32 @_subnegotiate(ptr noundef %140), !dbg !605
  %142 = icmp ne i32 %141, 0, !dbg !606
  br i1 %142, label %143, label %151, !dbg !607

143:                                              ; preds = %135
  %144 = load ptr, ptr %4, align 8, !dbg !608
  %145 = load ptr, ptr %5, align 8, !dbg !610
  %146 = load i64, ptr %10, align 8, !dbg !611
  %147 = getelementptr inbounds i8, ptr %145, i64 %146, !dbg !610
  %148 = load i64, ptr %6, align 8, !dbg !612
  %149 = load i64, ptr %10, align 8, !dbg !613
  %150 = sub i64 %148, %149, !dbg !614
  call void @telnet_recv(ptr noundef %144, ptr noundef %147, i64 noundef %150), !dbg !615
  br label %218, !dbg !616

151:                                              ; preds = %135
  br label %188, !dbg !617

152:                                              ; preds = %132
  %153 = load ptr, ptr %4, align 8, !dbg !618
  %154 = call i32 @_buffer_byte(ptr noundef %153, i8 noundef zeroext -1), !dbg !620
  %155 = icmp ne i32 %154, 0, !dbg !621
  br i1 %155, label %156, label %161, !dbg !622

156:                                              ; preds = %152
  %157 = load i64, ptr %9, align 8, !dbg !623
  %158 = add i64 %157, 1, !dbg !625
  store i64 %158, ptr %10, align 8, !dbg !626
  %159 = load ptr, ptr %4, align 8, !dbg !627
  %160 = getelementptr inbounds %struct.telnet_t, ptr %159, i32 0, i32 7, !dbg !628
  store i32 0, ptr %160, align 8, !dbg !629
  br label %164, !dbg !630

161:                                              ; preds = %152
  %162 = load ptr, ptr %4, align 8, !dbg !631
  %163 = getelementptr inbounds %struct.telnet_t, ptr %162, i32 0, i32 7, !dbg !633
  store i32 7, ptr %163, align 8, !dbg !634
  br label %164

164:                                              ; preds = %161, %156
  br label %188, !dbg !635

165:                                              ; preds = %132
  %166 = load ptr, ptr %4, align 8, !dbg !636
  %167 = load i8, ptr %8, align 1, !dbg !637
  %168 = zext i8 %167 to i32, !dbg !637
  %169 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %166, i32 noundef 1074, ptr noundef @__func__._process, i32 noundef 4, i32 noundef 0, ptr noundef @.str.1, i32 noundef %168), !dbg !638
  %170 = load i64, ptr %9, align 8, !dbg !639
  %171 = add i64 %170, 1, !dbg !640
  store i64 %171, ptr %10, align 8, !dbg !641
  %172 = load ptr, ptr %4, align 8, !dbg !642
  %173 = getelementptr inbounds %struct.telnet_t, ptr %172, i32 0, i32 7, !dbg !643
  store i32 1, ptr %173, align 8, !dbg !644
  %174 = load ptr, ptr %4, align 8, !dbg !645
  %175 = call i32 @_subnegotiate(ptr noundef %174), !dbg !647
  %176 = icmp ne i32 %175, 0, !dbg !648
  br i1 %176, label %177, label %185, !dbg !649

177:                                              ; preds = %165
  %178 = load ptr, ptr %4, align 8, !dbg !650
  %179 = load ptr, ptr %5, align 8, !dbg !652
  %180 = load i64, ptr %10, align 8, !dbg !653
  %181 = getelementptr inbounds i8, ptr %179, i64 %180, !dbg !652
  %182 = load i64, ptr %6, align 8, !dbg !654
  %183 = load i64, ptr %10, align 8, !dbg !655
  %184 = sub i64 %182, %183, !dbg !656
  call void @telnet_recv(ptr noundef %178, ptr noundef %181, i64 noundef %184), !dbg !657
  br label %218, !dbg !658

185:                                              ; preds = %165
  %186 = load ptr, ptr %4, align 8, !dbg !659
  call void @_process(ptr noundef %186, ptr noundef %8, i64 noundef 1), !dbg !661
  br label %187

187:                                              ; preds = %185
  br label %188, !dbg !662

188:                                              ; preds = %187, %164, %151
  br label %189, !dbg !663

189:                                              ; preds = %15, %188, %131, %105, %98, %97, %50
  br label %190, !dbg !664

190:                                              ; preds = %189
  %191 = load i64, ptr %9, align 8, !dbg !665
  %192 = add i64 %191, 1, !dbg !665
  store i64 %192, ptr %9, align 8, !dbg !665
  br label %11, !dbg !666, !llvm.loop !667

193:                                              ; preds = %11
  %194 = load ptr, ptr %4, align 8, !dbg !670
  %195 = getelementptr inbounds %struct.telnet_t, ptr %194, i32 0, i32 7, !dbg !672
  %196 = load i32, ptr %195, align 8, !dbg !672
  %197 = icmp eq i32 %196, 0, !dbg !673
  br i1 %197, label %198, label %218, !dbg !674

198:                                              ; preds = %193
  %199 = load i64, ptr %9, align 8, !dbg !675
  %200 = load i64, ptr %10, align 8, !dbg !676
  %201 = icmp ne i64 %199, %200, !dbg !677
  br i1 %201, label %202, label %218, !dbg !678

202:                                              ; preds = %198
  store i32 0, ptr %7, align 8, !dbg !679
  %203 = load ptr, ptr %5, align 8, !dbg !681
  %204 = load i64, ptr %10, align 8, !dbg !682
  %205 = getelementptr inbounds i8, ptr %203, i64 %204, !dbg !683
  %206 = getelementptr inbounds %struct.data_t, ptr %7, i32 0, i32 1, !dbg !684
  store ptr %205, ptr %206, align 8, !dbg !685
  %207 = load i64, ptr %9, align 8, !dbg !686
  %208 = load i64, ptr %10, align 8, !dbg !687
  %209 = sub i64 %207, %208, !dbg !688
  %210 = getelementptr inbounds %struct.data_t, ptr %7, i32 0, i32 2, !dbg !689
  store i64 %209, ptr %210, align 8, !dbg !690
  %211 = load ptr, ptr %4, align 8, !dbg !691
  %212 = getelementptr inbounds %struct.telnet_t, ptr %211, i32 0, i32 2, !dbg !692
  %213 = load ptr, ptr %212, align 8, !dbg !692
  %214 = load ptr, ptr %4, align 8, !dbg !693
  %215 = load ptr, ptr %4, align 8, !dbg !694
  %216 = getelementptr inbounds %struct.telnet_t, ptr %215, i32 0, i32 0, !dbg !695
  %217 = load ptr, ptr %216, align 8, !dbg !695
  call void %213(ptr noundef %214, ptr noundef %7, ptr noundef %217), !dbg !691
  br label %218, !dbg !696

218:                                              ; preds = %143, %177, %202, %198, %193
  ret void, !dbg !697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_iac(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !698 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca [2 x i8], align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !701, metadata !DIExpression()), !dbg !702
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !703, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.declare(metadata ptr %5, metadata !705, metadata !DIExpression()), !dbg !707
  %6 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 0, !dbg !708
  store i8 -1, ptr %6, align 1, !dbg !709
  %7 = load i8, ptr %4, align 1, !dbg !710
  %8 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 1, !dbg !711
  store i8 %7, ptr %8, align 1, !dbg !712
  %9 = load ptr, ptr %3, align 8, !dbg !713
  %10 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 0, !dbg !713
  call void @_send(ptr noundef %9, ptr noundef %10, i64 noundef 2), !dbg !713
  ret void, !dbg !714
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_send(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !715 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.telnet_event_t, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !716, metadata !DIExpression()), !dbg !717
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !718, metadata !DIExpression()), !dbg !719
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !720, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.declare(metadata ptr %7, metadata !722, metadata !DIExpression()), !dbg !723
  store i32 1, ptr %7, align 8, !dbg !724
  %8 = load ptr, ptr %5, align 8, !dbg !725
  %9 = getelementptr inbounds %struct.data_t, ptr %7, i32 0, i32 1, !dbg !726
  store ptr %8, ptr %9, align 8, !dbg !727
  %10 = load i64, ptr %6, align 8, !dbg !728
  %11 = getelementptr inbounds %struct.data_t, ptr %7, i32 0, i32 2, !dbg !729
  store i64 %10, ptr %11, align 8, !dbg !730
  %12 = load ptr, ptr %4, align 8, !dbg !731
  %13 = getelementptr inbounds %struct.telnet_t, ptr %12, i32 0, i32 2, !dbg !732
  %14 = load ptr, ptr %13, align 8, !dbg !732
  %15 = load ptr, ptr %4, align 8, !dbg !733
  %16 = load ptr, ptr %4, align 8, !dbg !734
  %17 = getelementptr inbounds %struct.telnet_t, ptr %16, i32 0, i32 0, !dbg !735
  %18 = load ptr, ptr %17, align 8, !dbg !735
  call void %14(ptr noundef %15, ptr noundef %7, ptr noundef %18), !dbg !731
  ret void, !dbg !736
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_negotiate(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 !dbg !737 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.telnet_rfc1143_t, align 1
  %8 = alloca [3 x i8], align 1
  %9 = alloca %struct.telnet_rfc1143_t, align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !740, metadata !DIExpression()), !dbg !741
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !742, metadata !DIExpression()), !dbg !743
  store i8 %2, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !744, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.declare(metadata ptr %7, metadata !746, metadata !DIExpression()), !dbg !747
  %10 = load ptr, ptr %4, align 8, !dbg !748
  %11 = getelementptr inbounds %struct.telnet_t, ptr %10, i32 0, i32 8, !dbg !750
  %12 = load i8, ptr %11, align 4, !dbg !750
  %13 = zext i8 %12 to i32, !dbg !748
  %14 = and i32 %13, 1, !dbg !751
  %15 = icmp ne i32 %14, 0, !dbg !751
  br i1 %15, label %16, label %24, !dbg !752

16:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !753, metadata !DIExpression()), !dbg !758
  %17 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 0, !dbg !759
  store i8 -1, ptr %17, align 1, !dbg !760
  %18 = load i8, ptr %5, align 1, !dbg !761
  %19 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 1, !dbg !762
  store i8 %18, ptr %19, align 1, !dbg !763
  %20 = load i8, ptr %6, align 1, !dbg !764
  %21 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 2, !dbg !765
  store i8 %20, ptr %21, align 1, !dbg !766
  %22 = load ptr, ptr %4, align 8, !dbg !767
  %23 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 0, !dbg !767
  call void @_send(ptr noundef %22, ptr noundef %23, i64 noundef 3), !dbg !767
  br label %166, !dbg !768

24:                                               ; preds = %3
  %25 = load ptr, ptr %4, align 8, !dbg !769
  %26 = load i8, ptr %6, align 1, !dbg !770
  %27 = call i16 @_get_rfc1143(ptr noundef %25, i8 noundef zeroext %26), !dbg !771
  store i16 %27, ptr %9, align 1, !dbg !771
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %9, i64 2, i1 false), !dbg !771
  %28 = load i8, ptr %5, align 1, !dbg !772
  %29 = zext i8 %28 to i32, !dbg !772
  switch i32 %29, label %166 [
    i32 251, label %30
    i32 252, label %65
    i32 253, label %100
    i32 254, label %133
  ], !dbg !773

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !774
  %32 = load i8, ptr %31, align 1, !dbg !774
  %33 = zext i8 %32 to i32, !dbg !774
  %34 = and i32 %33, 15, !dbg !774
  switch i32 %34, label %64 [
    i32 0, label %35
    i32 2, label %46
    i32 5, label %55
  ], !dbg !776

35:                                               ; preds = %30
  %36 = load ptr, ptr %4, align 8, !dbg !777
  %37 = load i8, ptr %6, align 1, !dbg !779
  %38 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !780
  %39 = load i8, ptr %38, align 1, !dbg !780
  %40 = zext i8 %39 to i32, !dbg !780
  %41 = and i32 %40, 240, !dbg !780
  %42 = ashr i32 %41, 4, !dbg !780
  %43 = trunc i32 %42 to i8, !dbg !780
  call void @_set_rfc1143(ptr noundef %36, i8 noundef zeroext %37, i8 noundef signext 3, i8 noundef signext %43), !dbg !781
  %44 = load ptr, ptr %4, align 8, !dbg !782
  %45 = load i8, ptr %6, align 1, !dbg !783
  call void @_send_negotiate(ptr noundef %44, i8 noundef zeroext -5, i8 noundef zeroext %45), !dbg !784
  br label %64, !dbg !785

46:                                               ; preds = %30
  %47 = load ptr, ptr %4, align 8, !dbg !786
  %48 = load i8, ptr %6, align 1, !dbg !787
  %49 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !788
  %50 = load i8, ptr %49, align 1, !dbg !788
  %51 = zext i8 %50 to i32, !dbg !788
  %52 = and i32 %51, 240, !dbg !788
  %53 = ashr i32 %52, 4, !dbg !788
  %54 = trunc i32 %53 to i8, !dbg !788
  call void @_set_rfc1143(ptr noundef %47, i8 noundef zeroext %48, i8 noundef signext 4, i8 noundef signext %54), !dbg !789
  br label %64, !dbg !790

55:                                               ; preds = %30
  %56 = load ptr, ptr %4, align 8, !dbg !791
  %57 = load i8, ptr %6, align 1, !dbg !792
  %58 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !793
  %59 = load i8, ptr %58, align 1, !dbg !793
  %60 = zext i8 %59 to i32, !dbg !793
  %61 = and i32 %60, 240, !dbg !793
  %62 = ashr i32 %61, 4, !dbg !793
  %63 = trunc i32 %62 to i8, !dbg !793
  call void @_set_rfc1143(ptr noundef %56, i8 noundef zeroext %57, i8 noundef signext 3, i8 noundef signext %63), !dbg !794
  br label %64, !dbg !795

64:                                               ; preds = %30, %55, %46, %35
  br label %166, !dbg !796

65:                                               ; preds = %24
  %66 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !797
  %67 = load i8, ptr %66, align 1, !dbg !797
  %68 = zext i8 %67 to i32, !dbg !797
  %69 = and i32 %68, 15, !dbg !797
  switch i32 %69, label %99 [
    i32 1, label %70
    i32 3, label %81
    i32 4, label %90
  ], !dbg !798

70:                                               ; preds = %65
  %71 = load ptr, ptr %4, align 8, !dbg !799
  %72 = load i8, ptr %6, align 1, !dbg !801
  %73 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !802
  %74 = load i8, ptr %73, align 1, !dbg !802
  %75 = zext i8 %74 to i32, !dbg !802
  %76 = and i32 %75, 240, !dbg !802
  %77 = ashr i32 %76, 4, !dbg !802
  %78 = trunc i32 %77 to i8, !dbg !802
  call void @_set_rfc1143(ptr noundef %71, i8 noundef zeroext %72, i8 noundef signext 2, i8 noundef signext %78), !dbg !803
  %79 = load ptr, ptr %4, align 8, !dbg !804
  %80 = load i8, ptr %6, align 1, !dbg !805
  call void @_send_negotiate(ptr noundef %79, i8 noundef zeroext -4, i8 noundef zeroext %80), !dbg !806
  br label %99, !dbg !807

81:                                               ; preds = %65
  %82 = load ptr, ptr %4, align 8, !dbg !808
  %83 = load i8, ptr %6, align 1, !dbg !809
  %84 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !810
  %85 = load i8, ptr %84, align 1, !dbg !810
  %86 = zext i8 %85 to i32, !dbg !810
  %87 = and i32 %86, 240, !dbg !810
  %88 = ashr i32 %87, 4, !dbg !810
  %89 = trunc i32 %88 to i8, !dbg !810
  call void @_set_rfc1143(ptr noundef %82, i8 noundef zeroext %83, i8 noundef signext 5, i8 noundef signext %89), !dbg !811
  br label %99, !dbg !812

90:                                               ; preds = %65
  %91 = load ptr, ptr %4, align 8, !dbg !813
  %92 = load i8, ptr %6, align 1, !dbg !814
  %93 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !815
  %94 = load i8, ptr %93, align 1, !dbg !815
  %95 = zext i8 %94 to i32, !dbg !815
  %96 = and i32 %95, 240, !dbg !815
  %97 = ashr i32 %96, 4, !dbg !815
  %98 = trunc i32 %97 to i8, !dbg !815
  call void @_set_rfc1143(ptr noundef %91, i8 noundef zeroext %92, i8 noundef signext 2, i8 noundef signext %98), !dbg !816
  br label %99, !dbg !817

99:                                               ; preds = %65, %90, %81, %70
  br label %166, !dbg !818

100:                                              ; preds = %24
  %101 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !819
  %102 = load i8, ptr %101, align 1, !dbg !819
  %103 = zext i8 %102 to i32, !dbg !819
  %104 = and i32 %103, 240, !dbg !819
  %105 = ashr i32 %104, 4, !dbg !819
  switch i32 %105, label %132 [
    i32 0, label %106
    i32 2, label %116
    i32 5, label %124
  ], !dbg !820

106:                                              ; preds = %100
  %107 = load ptr, ptr %4, align 8, !dbg !821
  %108 = load i8, ptr %6, align 1, !dbg !823
  %109 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !824
  %110 = load i8, ptr %109, align 1, !dbg !824
  %111 = zext i8 %110 to i32, !dbg !824
  %112 = and i32 %111, 15, !dbg !824
  %113 = trunc i32 %112 to i8, !dbg !824
  call void @_set_rfc1143(ptr noundef %107, i8 noundef zeroext %108, i8 noundef signext %113, i8 noundef signext 3), !dbg !825
  %114 = load ptr, ptr %4, align 8, !dbg !826
  %115 = load i8, ptr %6, align 1, !dbg !827
  call void @_send_negotiate(ptr noundef %114, i8 noundef zeroext -3, i8 noundef zeroext %115), !dbg !828
  br label %132, !dbg !829

116:                                              ; preds = %100
  %117 = load ptr, ptr %4, align 8, !dbg !830
  %118 = load i8, ptr %6, align 1, !dbg !831
  %119 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !832
  %120 = load i8, ptr %119, align 1, !dbg !832
  %121 = zext i8 %120 to i32, !dbg !832
  %122 = and i32 %121, 15, !dbg !832
  %123 = trunc i32 %122 to i8, !dbg !832
  call void @_set_rfc1143(ptr noundef %117, i8 noundef zeroext %118, i8 noundef signext %123, i8 noundef signext 4), !dbg !833
  br label %132, !dbg !834

124:                                              ; preds = %100
  %125 = load ptr, ptr %4, align 8, !dbg !835
  %126 = load i8, ptr %6, align 1, !dbg !836
  %127 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !837
  %128 = load i8, ptr %127, align 1, !dbg !837
  %129 = zext i8 %128 to i32, !dbg !837
  %130 = and i32 %129, 15, !dbg !837
  %131 = trunc i32 %130 to i8, !dbg !837
  call void @_set_rfc1143(ptr noundef %125, i8 noundef zeroext %126, i8 noundef signext %131, i8 noundef signext 3), !dbg !838
  br label %132, !dbg !839

132:                                              ; preds = %100, %124, %116, %106
  br label %166, !dbg !840

133:                                              ; preds = %24
  %134 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !841
  %135 = load i8, ptr %134, align 1, !dbg !841
  %136 = zext i8 %135 to i32, !dbg !841
  %137 = and i32 %136, 240, !dbg !841
  %138 = ashr i32 %137, 4, !dbg !841
  switch i32 %138, label %165 [
    i32 1, label %139
    i32 3, label %149
    i32 4, label %157
  ], !dbg !842

139:                                              ; preds = %133
  %140 = load ptr, ptr %4, align 8, !dbg !843
  %141 = load i8, ptr %6, align 1, !dbg !845
  %142 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !846
  %143 = load i8, ptr %142, align 1, !dbg !846
  %144 = zext i8 %143 to i32, !dbg !846
  %145 = and i32 %144, 15, !dbg !846
  %146 = trunc i32 %145 to i8, !dbg !846
  call void @_set_rfc1143(ptr noundef %140, i8 noundef zeroext %141, i8 noundef signext %146, i8 noundef signext 2), !dbg !847
  %147 = load ptr, ptr %4, align 8, !dbg !848
  %148 = load i8, ptr %6, align 1, !dbg !849
  call void @_send_negotiate(ptr noundef %147, i8 noundef zeroext -2, i8 noundef zeroext %148), !dbg !850
  br label %165, !dbg !851

149:                                              ; preds = %133
  %150 = load ptr, ptr %4, align 8, !dbg !852
  %151 = load i8, ptr %6, align 1, !dbg !853
  %152 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !854
  %153 = load i8, ptr %152, align 1, !dbg !854
  %154 = zext i8 %153 to i32, !dbg !854
  %155 = and i32 %154, 15, !dbg !854
  %156 = trunc i32 %155 to i8, !dbg !854
  call void @_set_rfc1143(ptr noundef %150, i8 noundef zeroext %151, i8 noundef signext %156, i8 noundef signext 5), !dbg !855
  br label %165, !dbg !856

157:                                              ; preds = %133
  %158 = load ptr, ptr %4, align 8, !dbg !857
  %159 = load i8, ptr %6, align 1, !dbg !858
  %160 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %7, i32 0, i32 1, !dbg !859
  %161 = load i8, ptr %160, align 1, !dbg !859
  %162 = zext i8 %161 to i32, !dbg !859
  %163 = and i32 %162, 15, !dbg !859
  %164 = trunc i32 %163 to i8, !dbg !859
  call void @_set_rfc1143(ptr noundef %158, i8 noundef zeroext %159, i8 noundef signext %164, i8 noundef signext 2), !dbg !860
  br label %165, !dbg !861

165:                                              ; preds = %133, %157, %149, %139
  br label %166, !dbg !862

166:                                              ; preds = %16, %24, %165, %132, %99, %64
  ret void, !dbg !863
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i16 @_get_rfc1143(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !864 {
  %3 = alloca %struct.telnet_rfc1143_t, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.telnet_rfc1143_t, align 1
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !867, metadata !DIExpression()), !dbg !868
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !869, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.declare(metadata ptr %6, metadata !871, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.declare(metadata ptr %7, metadata !873, metadata !DIExpression()), !dbg !874
  store i32 0, ptr %7, align 4, !dbg !875
  br label %8, !dbg !877

8:                                                ; preds = %36, %2
  %9 = load i32, ptr %7, align 4, !dbg !878
  %10 = load ptr, ptr %4, align 8, !dbg !880
  %11 = getelementptr inbounds %struct.telnet_t, ptr %10, i32 0, i32 10, !dbg !881
  %12 = load i8, ptr %11, align 2, !dbg !881
  %13 = zext i8 %12 to i32, !dbg !880
  %14 = icmp ne i32 %9, %13, !dbg !882
  br i1 %14, label %15, label %39, !dbg !883

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 8, !dbg !884
  %17 = getelementptr inbounds %struct.telnet_t, ptr %16, i32 0, i32 3, !dbg !887
  %18 = load ptr, ptr %17, align 8, !dbg !887
  %19 = load i32, ptr %7, align 4, !dbg !888
  %20 = sext i32 %19 to i64, !dbg !884
  %21 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %18, i64 %20, !dbg !884
  %22 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %21, i32 0, i32 0, !dbg !889
  %23 = load i8, ptr %22, align 1, !dbg !889
  %24 = zext i8 %23 to i32, !dbg !884
  %25 = load i8, ptr %5, align 1, !dbg !890
  %26 = zext i8 %25 to i32, !dbg !890
  %27 = icmp eq i32 %24, %26, !dbg !891
  br i1 %27, label %28, label %35, !dbg !892

28:                                               ; preds = %15
  %29 = load ptr, ptr %4, align 8, !dbg !893
  %30 = getelementptr inbounds %struct.telnet_t, ptr %29, i32 0, i32 3, !dbg !895
  %31 = load ptr, ptr %30, align 8, !dbg !895
  %32 = load i32, ptr %7, align 4, !dbg !896
  %33 = sext i32 %32 to i64, !dbg !893
  %34 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %31, i64 %33, !dbg !893
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %34, i64 2, i1 false), !dbg !893
  br label %43, !dbg !897

35:                                               ; preds = %15
  br label %36, !dbg !898

36:                                               ; preds = %35
  %37 = load i32, ptr %7, align 4, !dbg !899
  %38 = add nsw i32 %37, 1, !dbg !899
  store i32 %38, ptr %7, align 4, !dbg !899
  br label %8, !dbg !900, !llvm.loop !901

39:                                               ; preds = %8
  %40 = load i8, ptr %5, align 1, !dbg !903
  %41 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 0, !dbg !904
  store i8 %40, ptr %41, align 1, !dbg !905
  %42 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !906
  store i8 0, ptr %42, align 1, !dbg !907
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %6, i64 2, i1 false), !dbg !908
  br label %43, !dbg !909

43:                                               ; preds = %39, %28
  %44 = load i16, ptr %3, align 1, !dbg !910
  ret i16 %44, !dbg !910
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_set_rfc1143(ptr noundef %0, i8 noundef zeroext %1, i8 noundef signext %2, i8 noundef signext %3) #0 !dbg !911 {
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !914, metadata !DIExpression()), !dbg !915
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !916, metadata !DIExpression()), !dbg !917
  store i8 %2, ptr %7, align 1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !918, metadata !DIExpression()), !dbg !919
  store i8 %3, ptr %8, align 1
  call void @llvm.dbg.declare(metadata ptr %8, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.declare(metadata ptr %9, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.declare(metadata ptr %10, metadata !924, metadata !DIExpression()), !dbg !925
  store i32 0, ptr %10, align 4, !dbg !926
  br label %11, !dbg !928

11:                                               ; preds = %47, %4
  %12 = load i32, ptr %10, align 4, !dbg !929
  %13 = load ptr, ptr %5, align 8, !dbg !931
  %14 = getelementptr inbounds %struct.telnet_t, ptr %13, i32 0, i32 10, !dbg !932
  %15 = load i8, ptr %14, align 2, !dbg !932
  %16 = zext i8 %15 to i32, !dbg !931
  %17 = icmp ne i32 %12, %16, !dbg !933
  br i1 %17, label %18, label %50, !dbg !934

18:                                               ; preds = %11
  %19 = load ptr, ptr %5, align 8, !dbg !935
  %20 = getelementptr inbounds %struct.telnet_t, ptr %19, i32 0, i32 3, !dbg !938
  %21 = load ptr, ptr %20, align 8, !dbg !938
  %22 = load i32, ptr %10, align 4, !dbg !939
  %23 = sext i32 %22 to i64, !dbg !935
  %24 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %21, i64 %23, !dbg !935
  %25 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %24, i32 0, i32 0, !dbg !940
  %26 = load i8, ptr %25, align 1, !dbg !940
  %27 = zext i8 %26 to i32, !dbg !935
  %28 = load i8, ptr %6, align 1, !dbg !941
  %29 = zext i8 %28 to i32, !dbg !941
  %30 = icmp eq i32 %27, %29, !dbg !942
  br i1 %30, label %31, label %46, !dbg !943

31:                                               ; preds = %18
  %32 = load i8, ptr %7, align 1, !dbg !944
  %33 = sext i8 %32 to i32, !dbg !944
  %34 = load i8, ptr %8, align 1, !dbg !944
  %35 = sext i8 %34 to i32, !dbg !944
  %36 = shl i32 %35, 4, !dbg !944
  %37 = or i32 %33, %36, !dbg !944
  %38 = trunc i32 %37 to i8, !dbg !944
  %39 = load ptr, ptr %5, align 8, !dbg !946
  %40 = getelementptr inbounds %struct.telnet_t, ptr %39, i32 0, i32 3, !dbg !947
  %41 = load ptr, ptr %40, align 8, !dbg !947
  %42 = load i32, ptr %10, align 4, !dbg !948
  %43 = sext i32 %42 to i64, !dbg !946
  %44 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %41, i64 %43, !dbg !946
  %45 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %44, i32 0, i32 1, !dbg !949
  store i8 %38, ptr %45, align 1, !dbg !950
  br label %111, !dbg !951

46:                                               ; preds = %18
  br label %47, !dbg !952

47:                                               ; preds = %46
  %48 = load i32, ptr %10, align 4, !dbg !953
  %49 = add nsw i32 %48, 1, !dbg !953
  store i32 %49, ptr %10, align 4, !dbg !953
  br label %11, !dbg !954, !llvm.loop !955

50:                                               ; preds = %11
  %51 = load ptr, ptr %5, align 8, !dbg !957
  %52 = getelementptr inbounds %struct.telnet_t, ptr %51, i32 0, i32 3, !dbg !959
  %53 = load ptr, ptr %52, align 8, !dbg !959
  %54 = load ptr, ptr %5, align 8, !dbg !960
  %55 = getelementptr inbounds %struct.telnet_t, ptr %54, i32 0, i32 10, !dbg !961
  %56 = load i8, ptr %55, align 2, !dbg !961
  %57 = zext i8 %56 to i32, !dbg !960
  %58 = add nsw i32 %57, 4, !dbg !962
  %59 = sext i32 %58 to i64, !dbg !963
  %60 = mul i64 2, %59, !dbg !964
  %61 = call ptr @realloc(ptr noundef %53, i64 noundef %60) #13, !dbg !965
  store ptr %61, ptr %9, align 8, !dbg !966
  %62 = icmp eq ptr %61, null, !dbg !967
  br i1 %62, label %63, label %69, !dbg !968

63:                                               ; preds = %50
  %64 = load ptr, ptr %5, align 8, !dbg !969
  %65 = call ptr @__errno_location() #14, !dbg !971
  %66 = load i32, ptr %65, align 4, !dbg !971
  %67 = call ptr @strerror(i32 noundef %66) #12, !dbg !972
  %68 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %64, i32 noundef 312, ptr noundef @__func__._set_rfc1143, i32 noundef 2, i32 noundef 0, ptr noundef @.str.16, ptr noundef %67), !dbg !973
  br label %111, !dbg !974

69:                                               ; preds = %50
  %70 = load ptr, ptr %9, align 8, !dbg !975
  %71 = load ptr, ptr %5, align 8, !dbg !976
  %72 = getelementptr inbounds %struct.telnet_t, ptr %71, i32 0, i32 10, !dbg !977
  %73 = load i8, ptr %72, align 2, !dbg !977
  %74 = zext i8 %73 to i64, !dbg !975
  %75 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %70, i64 %74, !dbg !975
  call void @llvm.memset.p0.i64(ptr align 1 %75, i8 0, i64 8, i1 false), !dbg !978
  %76 = load ptr, ptr %9, align 8, !dbg !979
  %77 = load ptr, ptr %5, align 8, !dbg !980
  %78 = getelementptr inbounds %struct.telnet_t, ptr %77, i32 0, i32 3, !dbg !981
  store ptr %76, ptr %78, align 8, !dbg !982
  %79 = load i8, ptr %6, align 1, !dbg !983
  %80 = load ptr, ptr %5, align 8, !dbg !984
  %81 = getelementptr inbounds %struct.telnet_t, ptr %80, i32 0, i32 3, !dbg !985
  %82 = load ptr, ptr %81, align 8, !dbg !985
  %83 = load ptr, ptr %5, align 8, !dbg !986
  %84 = getelementptr inbounds %struct.telnet_t, ptr %83, i32 0, i32 10, !dbg !987
  %85 = load i8, ptr %84, align 2, !dbg !987
  %86 = zext i8 %85 to i64, !dbg !984
  %87 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %82, i64 %86, !dbg !984
  %88 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %87, i32 0, i32 0, !dbg !988
  store i8 %79, ptr %88, align 1, !dbg !989
  %89 = load i8, ptr %7, align 1, !dbg !990
  %90 = sext i8 %89 to i32, !dbg !990
  %91 = load i8, ptr %8, align 1, !dbg !990
  %92 = sext i8 %91 to i32, !dbg !990
  %93 = shl i32 %92, 4, !dbg !990
  %94 = or i32 %90, %93, !dbg !990
  %95 = trunc i32 %94 to i8, !dbg !990
  %96 = load ptr, ptr %5, align 8, !dbg !991
  %97 = getelementptr inbounds %struct.telnet_t, ptr %96, i32 0, i32 3, !dbg !992
  %98 = load ptr, ptr %97, align 8, !dbg !992
  %99 = load ptr, ptr %5, align 8, !dbg !993
  %100 = getelementptr inbounds %struct.telnet_t, ptr %99, i32 0, i32 10, !dbg !994
  %101 = load i8, ptr %100, align 2, !dbg !994
  %102 = zext i8 %101 to i64, !dbg !991
  %103 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %98, i64 %102, !dbg !991
  %104 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %103, i32 0, i32 1, !dbg !995
  store i8 %95, ptr %104, align 1, !dbg !996
  %105 = load ptr, ptr %5, align 8, !dbg !997
  %106 = getelementptr inbounds %struct.telnet_t, ptr %105, i32 0, i32 10, !dbg !998
  %107 = load i8, ptr %106, align 2, !dbg !999
  %108 = zext i8 %107 to i32, !dbg !999
  %109 = add nsw i32 %108, 4, !dbg !999
  %110 = trunc i32 %109 to i8, !dbg !999
  store i8 %110, ptr %106, align 2, !dbg !999
  br label %111, !dbg !1000

111:                                              ; preds = %69, %63, %31
  ret void, !dbg !1000
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_send_negotiate(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 !dbg !1001 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [3 x i8], align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1002, metadata !DIExpression()), !dbg !1003
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1004, metadata !DIExpression()), !dbg !1005
  store i8 %2, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1006, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1008, metadata !DIExpression()), !dbg !1009
  %8 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 0, !dbg !1010
  store i8 -1, ptr %8, align 1, !dbg !1011
  %9 = load i8, ptr %5, align 1, !dbg !1012
  %10 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 1, !dbg !1013
  store i8 %9, ptr %10, align 1, !dbg !1014
  %11 = load i8, ptr %6, align 1, !dbg !1015
  %12 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 2, !dbg !1016
  store i8 %11, ptr %12, align 1, !dbg !1017
  %13 = load ptr, ptr %4, align 8, !dbg !1018
  %14 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 0, !dbg !1018
  call void @_send(ptr noundef %13, ptr noundef %14, i64 noundef 3), !dbg !1018
  ret void, !dbg !1019
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_send(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1020 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1021, metadata !DIExpression()), !dbg !1022
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1023, metadata !DIExpression()), !dbg !1024
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1025, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1027, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1029, metadata !DIExpression()), !dbg !1030
  store i64 0, ptr %7, align 8, !dbg !1031
  store i64 0, ptr %8, align 8, !dbg !1033
  br label %9, !dbg !1034

9:                                                ; preds = %37, %3
  %10 = load i64, ptr %7, align 8, !dbg !1035
  %11 = load i64, ptr %6, align 8, !dbg !1037
  %12 = icmp ne i64 %10, %11, !dbg !1038
  br i1 %12, label %13, label %40, !dbg !1039

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !dbg !1040
  %15 = load i64, ptr %7, align 8, !dbg !1043
  %16 = getelementptr inbounds i8, ptr %14, i64 %15, !dbg !1040
  %17 = load i8, ptr %16, align 1, !dbg !1040
  %18 = sext i8 %17 to i32, !dbg !1040
  %19 = icmp eq i32 %18, -1, !dbg !1044
  br i1 %19, label %20, label %36, !dbg !1045

20:                                               ; preds = %13
  %21 = load i64, ptr %7, align 8, !dbg !1046
  %22 = load i64, ptr %8, align 8, !dbg !1049
  %23 = icmp ne i64 %21, %22, !dbg !1050
  br i1 %23, label %24, label %32, !dbg !1051

24:                                               ; preds = %20
  %25 = load ptr, ptr %4, align 8, !dbg !1052
  %26 = load ptr, ptr %5, align 8, !dbg !1054
  %27 = load i64, ptr %8, align 8, !dbg !1055
  %28 = getelementptr inbounds i8, ptr %26, i64 %27, !dbg !1056
  %29 = load i64, ptr %7, align 8, !dbg !1057
  %30 = load i64, ptr %8, align 8, !dbg !1058
  %31 = sub i64 %29, %30, !dbg !1059
  call void @_send(ptr noundef %25, ptr noundef %28, i64 noundef %31), !dbg !1060
  br label %32, !dbg !1061

32:                                               ; preds = %24, %20
  %33 = load i64, ptr %7, align 8, !dbg !1062
  %34 = add i64 %33, 1, !dbg !1063
  store i64 %34, ptr %8, align 8, !dbg !1064
  %35 = load ptr, ptr %4, align 8, !dbg !1065
  call void @telnet_iac(ptr noundef %35, i8 noundef zeroext -1), !dbg !1066
  br label %36, !dbg !1067

36:                                               ; preds = %32, %13
  br label %37, !dbg !1068

37:                                               ; preds = %36
  %38 = load i64, ptr %7, align 8, !dbg !1069
  %39 = add i64 %38, 1, !dbg !1069
  store i64 %39, ptr %7, align 8, !dbg !1069
  br label %9, !dbg !1070, !llvm.loop !1071

40:                                               ; preds = %9
  %41 = load i64, ptr %7, align 8, !dbg !1073
  %42 = load i64, ptr %8, align 8, !dbg !1075
  %43 = icmp ne i64 %41, %42, !dbg !1076
  br i1 %43, label %44, label %52, !dbg !1077

44:                                               ; preds = %40
  %45 = load ptr, ptr %4, align 8, !dbg !1078
  %46 = load ptr, ptr %5, align 8, !dbg !1080
  %47 = load i64, ptr %8, align 8, !dbg !1081
  %48 = getelementptr inbounds i8, ptr %46, i64 %47, !dbg !1082
  %49 = load i64, ptr %7, align 8, !dbg !1083
  %50 = load i64, ptr %8, align 8, !dbg !1084
  %51 = sub i64 %49, %50, !dbg !1085
  call void @_send(ptr noundef %45, ptr noundef %48, i64 noundef %51), !dbg !1086
  br label %52, !dbg !1087

52:                                               ; preds = %44, %40
  ret void, !dbg !1088
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_begin_sb(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !1089 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca [3 x i8], align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1090, metadata !DIExpression()), !dbg !1091
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1092, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1094, metadata !DIExpression()), !dbg !1095
  %6 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 0, !dbg !1096
  store i8 -1, ptr %6, align 1, !dbg !1097
  %7 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 1, !dbg !1098
  store i8 -6, ptr %7, align 1, !dbg !1099
  %8 = load i8, ptr %4, align 1, !dbg !1100
  %9 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 2, !dbg !1101
  store i8 %8, ptr %9, align 1, !dbg !1102
  %10 = load ptr, ptr %3, align 8, !dbg !1103
  %11 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 0, !dbg !1103
  call void @_send(ptr noundef %10, ptr noundef %11, i64 noundef 3), !dbg !1103
  ret void, !dbg !1104
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_subnegotiation(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i64 noundef %3) #0 !dbg !1105 {
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca [5 x i8], align 1
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1108, metadata !DIExpression()), !dbg !1109
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1110, metadata !DIExpression()), !dbg !1111
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1112, metadata !DIExpression()), !dbg !1113
  store i64 %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1114, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1116, metadata !DIExpression()), !dbg !1118
  %10 = getelementptr inbounds [5 x i8], ptr %9, i64 0, i64 0, !dbg !1119
  store i8 -1, ptr %10, align 1, !dbg !1120
  %11 = getelementptr inbounds [5 x i8], ptr %9, i64 0, i64 1, !dbg !1121
  store i8 -6, ptr %11, align 1, !dbg !1122
  %12 = load i8, ptr %6, align 1, !dbg !1123
  %13 = getelementptr inbounds [5 x i8], ptr %9, i64 0, i64 2, !dbg !1124
  store i8 %12, ptr %13, align 1, !dbg !1125
  %14 = getelementptr inbounds [5 x i8], ptr %9, i64 0, i64 3, !dbg !1126
  store i8 -1, ptr %14, align 1, !dbg !1127
  %15 = getelementptr inbounds [5 x i8], ptr %9, i64 0, i64 4, !dbg !1128
  store i8 -16, ptr %15, align 1, !dbg !1129
  %16 = load ptr, ptr %5, align 8, !dbg !1130
  %17 = getelementptr inbounds [5 x i8], ptr %9, i64 0, i64 0, !dbg !1130
  call void @_send(ptr noundef %16, ptr noundef %17, i64 noundef 3), !dbg !1130
  %18 = load ptr, ptr %5, align 8, !dbg !1131
  %19 = load ptr, ptr %7, align 8, !dbg !1132
  %20 = load i64, ptr %8, align 8, !dbg !1133
  call void @telnet_send(ptr noundef %18, ptr noundef %19, i64 noundef %20), !dbg !1134
  %21 = load ptr, ptr %5, align 8, !dbg !1135
  %22 = getelementptr inbounds [5 x i8], ptr %9, i64 0, i64 0, !dbg !1135
  %23 = getelementptr inbounds i8, ptr %22, i64 3, !dbg !1135
  call void @_send(ptr noundef %21, ptr noundef %23, i64 noundef 2), !dbg !1135
  ret void, !dbg !1136
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_begin_compress2(ptr noundef %0) #0 !dbg !1137 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1138, metadata !DIExpression()), !dbg !1139
  br label %3, !dbg !1140

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !1141
  store ptr %4, ptr %2, align 8, !dbg !1141
  br label %5, !dbg !1141

5:                                                ; preds = %3
  ret void, !dbg !1143
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @telnet_vprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1144, metadata !DIExpression()), !dbg !1145
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1146, metadata !DIExpression()), !dbg !1147
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1148, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1150, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1155, metadata !DIExpression()), !dbg !1156
  %13 = getelementptr inbounds [1024 x i8], ptr %8, i64 0, i64 0, !dbg !1157
  store ptr %13, ptr %9, align 8, !dbg !1156
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1158, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1160, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1162, metadata !DIExpression()), !dbg !1163
  %14 = getelementptr inbounds [1024 x i8], ptr %8, i64 0, i64 0, !dbg !1164
  %15 = load ptr, ptr %6, align 8, !dbg !1165
  %16 = load ptr, ptr %7, align 8, !dbg !1166
  %17 = call i32 @vsnprintf(ptr noundef %14, i64 noundef 1024, ptr noundef %15, ptr noundef %16) #12, !dbg !1167
  store i32 %17, ptr %10, align 4, !dbg !1168
  %18 = load i32, ptr %10, align 4, !dbg !1169
  %19 = sext i32 %18 to i64, !dbg !1171
  %20 = icmp uge i64 %19, 1024, !dbg !1172
  br i1 %20, label %21, label %42, !dbg !1173

21:                                               ; preds = %3
  %22 = load i32, ptr %10, align 4, !dbg !1174
  %23 = add nsw i32 %22, 1, !dbg !1176
  %24 = sext i32 %23 to i64, !dbg !1174
  %25 = call noalias ptr @malloc(i64 noundef %24) #15, !dbg !1177
  store ptr %25, ptr %9, align 8, !dbg !1178
  %26 = load ptr, ptr %9, align 8, !dbg !1179
  %27 = icmp eq ptr %26, null, !dbg !1181
  br i1 %27, label %28, label %34, !dbg !1182

28:                                               ; preds = %21
  %29 = load ptr, ptr %5, align 8, !dbg !1183
  %30 = call ptr @__errno_location() #14, !dbg !1185
  %31 = load i32, ptr %30, align 4, !dbg !1185
  %32 = call ptr @strerror(i32 noundef %31) #12, !dbg !1186
  %33 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %29, i32 noundef 1370, ptr noundef @__func__.telnet_vprintf, i32 noundef 2, i32 noundef 0, ptr noundef @.str, ptr noundef %32), !dbg !1187
  store i32 -1, ptr %4, align 4, !dbg !1188
  br label %146, !dbg !1188

34:                                               ; preds = %21
  %35 = load ptr, ptr %9, align 8, !dbg !1189
  %36 = load i32, ptr %10, align 4, !dbg !1190
  %37 = add nsw i32 %36, 1, !dbg !1191
  %38 = sext i32 %37 to i64, !dbg !1190
  %39 = load ptr, ptr %6, align 8, !dbg !1192
  %40 = load ptr, ptr %7, align 8, !dbg !1193
  %41 = call i32 @vsnprintf(ptr noundef %35, i64 noundef %38, ptr noundef %39, ptr noundef %40) #12, !dbg !1194
  store i32 %41, ptr %10, align 4, !dbg !1195
  br label %42, !dbg !1196

42:                                               ; preds = %34, %3
  store i32 0, ptr %11, align 4, !dbg !1197
  store i32 0, ptr %12, align 4, !dbg !1199
  br label %43, !dbg !1200

43:                                               ; preds = %121, %42
  %44 = load i32, ptr %11, align 4, !dbg !1201
  %45 = load i32, ptr %10, align 4, !dbg !1203
  %46 = icmp ne i32 %44, %45, !dbg !1204
  br i1 %46, label %47, label %124, !dbg !1205

47:                                               ; preds = %43
  %48 = load ptr, ptr %9, align 8, !dbg !1206
  %49 = load i32, ptr %11, align 4, !dbg !1209
  %50 = sext i32 %49 to i64, !dbg !1206
  %51 = getelementptr inbounds i8, ptr %48, i64 %50, !dbg !1206
  %52 = load i8, ptr %51, align 1, !dbg !1206
  %53 = sext i8 %52 to i32, !dbg !1206
  %54 = icmp eq i32 %53, -1, !dbg !1210
  br i1 %54, label %71, label %55, !dbg !1211

55:                                               ; preds = %47
  %56 = load ptr, ptr %9, align 8, !dbg !1212
  %57 = load i32, ptr %11, align 4, !dbg !1213
  %58 = sext i32 %57 to i64, !dbg !1212
  %59 = getelementptr inbounds i8, ptr %56, i64 %58, !dbg !1212
  %60 = load i8, ptr %59, align 1, !dbg !1212
  %61 = sext i8 %60 to i32, !dbg !1212
  %62 = icmp eq i32 %61, 13, !dbg !1214
  br i1 %62, label %71, label %63, !dbg !1215

63:                                               ; preds = %55
  %64 = load ptr, ptr %9, align 8, !dbg !1216
  %65 = load i32, ptr %11, align 4, !dbg !1217
  %66 = sext i32 %65 to i64, !dbg !1216
  %67 = getelementptr inbounds i8, ptr %64, i64 %66, !dbg !1216
  %68 = load i8, ptr %67, align 1, !dbg !1216
  %69 = sext i8 %68 to i32, !dbg !1216
  %70 = icmp eq i32 %69, 10, !dbg !1218
  br i1 %70, label %71, label %120, !dbg !1219

71:                                               ; preds = %63, %55, %47
  %72 = load i32, ptr %11, align 4, !dbg !1220
  %73 = load i32, ptr %12, align 4, !dbg !1223
  %74 = icmp ne i32 %72, %73, !dbg !1224
  br i1 %74, label %75, label %85, !dbg !1225

75:                                               ; preds = %71
  %76 = load ptr, ptr %5, align 8, !dbg !1226
  %77 = load ptr, ptr %9, align 8, !dbg !1227
  %78 = load i32, ptr %12, align 4, !dbg !1228
  %79 = sext i32 %78 to i64, !dbg !1229
  %80 = getelementptr inbounds i8, ptr %77, i64 %79, !dbg !1229
  %81 = load i32, ptr %11, align 4, !dbg !1230
  %82 = load i32, ptr %12, align 4, !dbg !1231
  %83 = sub nsw i32 %81, %82, !dbg !1232
  %84 = sext i32 %83 to i64, !dbg !1230
  call void @_send(ptr noundef %76, ptr noundef %80, i64 noundef %84), !dbg !1233
  br label %85, !dbg !1233

85:                                               ; preds = %75, %71
  %86 = load i32, ptr %11, align 4, !dbg !1234
  %87 = add nsw i32 %86, 1, !dbg !1235
  store i32 %87, ptr %12, align 4, !dbg !1236
  %88 = load ptr, ptr %9, align 8, !dbg !1237
  %89 = load i32, ptr %11, align 4, !dbg !1239
  %90 = sext i32 %89 to i64, !dbg !1237
  %91 = getelementptr inbounds i8, ptr %88, i64 %90, !dbg !1237
  %92 = load i8, ptr %91, align 1, !dbg !1237
  %93 = sext i8 %92 to i32, !dbg !1237
  %94 = icmp eq i32 %93, -1, !dbg !1240
  br i1 %94, label %95, label %97, !dbg !1241

95:                                               ; preds = %85
  %96 = load ptr, ptr %5, align 8, !dbg !1242
  call void @telnet_iac(ptr noundef %96, i8 noundef zeroext -1), !dbg !1243
  br label %119, !dbg !1243

97:                                               ; preds = %85
  %98 = load ptr, ptr %9, align 8, !dbg !1244
  %99 = load i32, ptr %11, align 4, !dbg !1246
  %100 = sext i32 %99 to i64, !dbg !1244
  %101 = getelementptr inbounds i8, ptr %98, i64 %100, !dbg !1244
  %102 = load i8, ptr %101, align 1, !dbg !1244
  %103 = sext i8 %102 to i32, !dbg !1244
  %104 = icmp eq i32 %103, 13, !dbg !1247
  br i1 %104, label %105, label %107, !dbg !1248

105:                                              ; preds = %97
  %106 = load ptr, ptr %5, align 8, !dbg !1249
  call void @_send(ptr noundef %106, ptr noundef @telnet_vprintf.CRNUL, i64 noundef 2), !dbg !1250
  br label %118, !dbg !1250

107:                                              ; preds = %97
  %108 = load ptr, ptr %9, align 8, !dbg !1251
  %109 = load i32, ptr %11, align 4, !dbg !1253
  %110 = sext i32 %109 to i64, !dbg !1251
  %111 = getelementptr inbounds i8, ptr %108, i64 %110, !dbg !1251
  %112 = load i8, ptr %111, align 1, !dbg !1251
  %113 = sext i8 %112 to i32, !dbg !1251
  %114 = icmp eq i32 %113, 10, !dbg !1254
  br i1 %114, label %115, label %117, !dbg !1255

115:                                              ; preds = %107
  %116 = load ptr, ptr %5, align 8, !dbg !1256
  call void @_send(ptr noundef %116, ptr noundef @telnet_vprintf.CRLF, i64 noundef 2), !dbg !1257
  br label %117, !dbg !1257

117:                                              ; preds = %115, %107
  br label %118

118:                                              ; preds = %117, %105
  br label %119

119:                                              ; preds = %118, %95
  br label %120, !dbg !1258

120:                                              ; preds = %119, %63
  br label %121, !dbg !1259

121:                                              ; preds = %120
  %122 = load i32, ptr %11, align 4, !dbg !1260
  %123 = add nsw i32 %122, 1, !dbg !1260
  store i32 %123, ptr %11, align 4, !dbg !1260
  br label %43, !dbg !1261, !llvm.loop !1262

124:                                              ; preds = %43
  %125 = load i32, ptr %11, align 4, !dbg !1264
  %126 = load i32, ptr %12, align 4, !dbg !1266
  %127 = icmp ne i32 %125, %126, !dbg !1267
  br i1 %127, label %128, label %138, !dbg !1268

128:                                              ; preds = %124
  %129 = load ptr, ptr %5, align 8, !dbg !1269
  %130 = load ptr, ptr %9, align 8, !dbg !1271
  %131 = load i32, ptr %12, align 4, !dbg !1272
  %132 = sext i32 %131 to i64, !dbg !1273
  %133 = getelementptr inbounds i8, ptr %130, i64 %132, !dbg !1273
  %134 = load i32, ptr %11, align 4, !dbg !1274
  %135 = load i32, ptr %12, align 4, !dbg !1275
  %136 = sub nsw i32 %134, %135, !dbg !1276
  %137 = sext i32 %136 to i64, !dbg !1274
  call void @_send(ptr noundef %129, ptr noundef %133, i64 noundef %137), !dbg !1277
  br label %138, !dbg !1278

138:                                              ; preds = %128, %124
  %139 = load ptr, ptr %9, align 8, !dbg !1279
  %140 = getelementptr inbounds [1024 x i8], ptr %8, i64 0, i64 0, !dbg !1281
  %141 = icmp ne ptr %139, %140, !dbg !1282
  br i1 %141, label %142, label %144, !dbg !1283

142:                                              ; preds = %138
  %143 = load ptr, ptr %9, align 8, !dbg !1284
  call void @free(ptr noundef %143) #12, !dbg !1286
  br label %144, !dbg !1287

144:                                              ; preds = %142, %138
  %145 = load i32, ptr %10, align 4, !dbg !1288
  store i32 %145, ptr %4, align 4, !dbg !1289
  br label %146, !dbg !1289

146:                                              ; preds = %144, %28
  %147 = load i32, ptr %4, align 4, !dbg !1290
  ret i32 %147, !dbg !1290
}

; Function Attrs: nounwind
declare i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_error(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ...) #0 !dbg !1291 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca %union.telnet_event_t, align 8
  %14 = alloca [512 x i8], align 16
  %15 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1294, metadata !DIExpression()), !dbg !1295
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1296, metadata !DIExpression()), !dbg !1297
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1298, metadata !DIExpression()), !dbg !1299
  store i32 %3, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1300, metadata !DIExpression()), !dbg !1301
  store i32 %4, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1302, metadata !DIExpression()), !dbg !1303
  store ptr %5, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1304, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1306, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1308, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1313, metadata !DIExpression()), !dbg !1318
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %15, i64 0, i64 0, !dbg !1319
  call void @llvm.va_start(ptr %16), !dbg !1319
  %17 = getelementptr inbounds [512 x i8], ptr %14, i64 0, i64 0, !dbg !1320
  %18 = load ptr, ptr %12, align 8, !dbg !1321
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %15, i64 0, i64 0, !dbg !1322
  %20 = call i32 @vsnprintf(ptr noundef %17, i64 noundef 512, ptr noundef %18, ptr noundef %19) #12, !dbg !1323
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %15, i64 0, i64 0, !dbg !1324
  call void @llvm.va_end(ptr %21), !dbg !1324
  %22 = load i32, ptr %11, align 4, !dbg !1325
  %23 = icmp ne i32 %22, 0, !dbg !1325
  %24 = zext i1 %23 to i64, !dbg !1325
  %25 = select i1 %23, i32 14, i32 13, !dbg !1325
  store i32 %25, ptr %13, align 8, !dbg !1326
  %26 = getelementptr inbounds %struct.error_t, ptr %13, i32 0, i32 1, !dbg !1327
  store ptr @.str.17, ptr %26, align 8, !dbg !1328
  %27 = load ptr, ptr %9, align 8, !dbg !1329
  %28 = getelementptr inbounds %struct.error_t, ptr %13, i32 0, i32 2, !dbg !1330
  store ptr %27, ptr %28, align 8, !dbg !1331
  %29 = load i32, ptr %8, align 4, !dbg !1332
  %30 = getelementptr inbounds %struct.error_t, ptr %13, i32 0, i32 4, !dbg !1333
  store i32 %29, ptr %30, align 8, !dbg !1334
  %31 = getelementptr inbounds [512 x i8], ptr %14, i64 0, i64 0, !dbg !1335
  %32 = getelementptr inbounds %struct.error_t, ptr %13, i32 0, i32 3, !dbg !1336
  store ptr %31, ptr %32, align 8, !dbg !1337
  %33 = load ptr, ptr %7, align 8, !dbg !1338
  %34 = getelementptr inbounds %struct.telnet_t, ptr %33, i32 0, i32 2, !dbg !1339
  %35 = load ptr, ptr %34, align 8, !dbg !1339
  %36 = load ptr, ptr %7, align 8, !dbg !1340
  %37 = load ptr, ptr %7, align 8, !dbg !1341
  %38 = getelementptr inbounds %struct.telnet_t, ptr %37, i32 0, i32 0, !dbg !1342
  %39 = load ptr, ptr %38, align 8, !dbg !1342
  call void %35(ptr noundef %36, ptr noundef %13, ptr noundef %39), !dbg !1338
  %40 = load i32, ptr %10, align 4, !dbg !1343
  ret i32 %40, !dbg !1344
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @telnet_printf(ptr noundef %0, ptr noundef %1, ...) #0 !dbg !1345 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1348, metadata !DIExpression()), !dbg !1349
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1350, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1352, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1354, metadata !DIExpression()), !dbg !1355
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !1356
  call void @llvm.va_start(ptr %7), !dbg !1356
  %8 = load ptr, ptr %3, align 8, !dbg !1357
  %9 = load ptr, ptr %4, align 8, !dbg !1358
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !1359
  %11 = call i32 @telnet_vprintf(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !1360
  store i32 %11, ptr %6, align 4, !dbg !1361
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !1362
  call void @llvm.va_end(ptr %12), !dbg !1362
  %13 = load i32, ptr %6, align 4, !dbg !1363
  ret i32 %13, !dbg !1364
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @telnet_raw_vprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1365 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1366, metadata !DIExpression()), !dbg !1367
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1368, metadata !DIExpression()), !dbg !1369
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1370, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1372, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1374, metadata !DIExpression()), !dbg !1375
  %11 = getelementptr inbounds [1024 x i8], ptr %8, i64 0, i64 0, !dbg !1376
  store ptr %11, ptr %9, align 8, !dbg !1375
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1377, metadata !DIExpression()), !dbg !1378
  %12 = getelementptr inbounds [1024 x i8], ptr %8, i64 0, i64 0, !dbg !1379
  %13 = load ptr, ptr %6, align 8, !dbg !1380
  %14 = load ptr, ptr %7, align 8, !dbg !1381
  %15 = call i32 @vsnprintf(ptr noundef %12, i64 noundef 1024, ptr noundef %13, ptr noundef %14) #12, !dbg !1382
  store i32 %15, ptr %10, align 4, !dbg !1383
  %16 = load i32, ptr %10, align 4, !dbg !1384
  %17 = sext i32 %16 to i64, !dbg !1386
  %18 = icmp uge i64 %17, 1024, !dbg !1387
  br i1 %18, label %19, label %40, !dbg !1388

19:                                               ; preds = %3
  %20 = load i32, ptr %10, align 4, !dbg !1389
  %21 = add nsw i32 %20, 1, !dbg !1391
  %22 = sext i32 %21 to i64, !dbg !1389
  %23 = call noalias ptr @malloc(i64 noundef %22) #15, !dbg !1392
  store ptr %23, ptr %9, align 8, !dbg !1393
  %24 = load ptr, ptr %9, align 8, !dbg !1394
  %25 = icmp eq ptr %24, null, !dbg !1396
  br i1 %25, label %26, label %32, !dbg !1397

26:                                               ; preds = %19
  %27 = load ptr, ptr %5, align 8, !dbg !1398
  %28 = call ptr @__errno_location() #14, !dbg !1400
  %29 = load i32, ptr %28, align 4, !dbg !1400
  %30 = call ptr @strerror(i32 noundef %29) #12, !dbg !1401
  %31 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %27, i32 noundef 1435, ptr noundef @__func__.telnet_raw_vprintf, i32 noundef 2, i32 noundef 0, ptr noundef @.str, ptr noundef %30), !dbg !1402
  store i32 -1, ptr %4, align 4, !dbg !1403
  br label %52, !dbg !1403

32:                                               ; preds = %19
  %33 = load ptr, ptr %9, align 8, !dbg !1404
  %34 = load i32, ptr %10, align 4, !dbg !1405
  %35 = add nsw i32 %34, 1, !dbg !1406
  %36 = sext i32 %35 to i64, !dbg !1405
  %37 = load ptr, ptr %6, align 8, !dbg !1407
  %38 = load ptr, ptr %7, align 8, !dbg !1408
  %39 = call i32 @vsnprintf(ptr noundef %33, i64 noundef %36, ptr noundef %37, ptr noundef %38) #12, !dbg !1409
  store i32 %39, ptr %10, align 4, !dbg !1410
  br label %40, !dbg !1411

40:                                               ; preds = %32, %3
  %41 = load ptr, ptr %5, align 8, !dbg !1412
  %42 = load ptr, ptr %9, align 8, !dbg !1413
  %43 = load i32, ptr %10, align 4, !dbg !1414
  %44 = sext i32 %43 to i64, !dbg !1414
  call void @telnet_send(ptr noundef %41, ptr noundef %42, i64 noundef %44), !dbg !1415
  %45 = load ptr, ptr %9, align 8, !dbg !1416
  %46 = getelementptr inbounds [1024 x i8], ptr %8, i64 0, i64 0, !dbg !1418
  %47 = icmp ne ptr %45, %46, !dbg !1419
  br i1 %47, label %48, label %50, !dbg !1420

48:                                               ; preds = %40
  %49 = load ptr, ptr %9, align 8, !dbg !1421
  call void @free(ptr noundef %49) #12, !dbg !1423
  br label %50, !dbg !1424

50:                                               ; preds = %48, %40
  %51 = load i32, ptr %10, align 4, !dbg !1425
  store i32 %51, ptr %4, align 4, !dbg !1426
  br label %52, !dbg !1426

52:                                               ; preds = %50, %26
  %53 = load i32, ptr %4, align 4, !dbg !1427
  ret i32 %53, !dbg !1427
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @telnet_raw_printf(ptr noundef %0, ptr noundef %1, ...) #0 !dbg !1428 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1429, metadata !DIExpression()), !dbg !1430
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1431, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1433, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1435, metadata !DIExpression()), !dbg !1436
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !1437
  call void @llvm.va_start(ptr %7), !dbg !1437
  %8 = load ptr, ptr %3, align 8, !dbg !1438
  %9 = load ptr, ptr %4, align 8, !dbg !1439
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !1440
  %11 = call i32 @telnet_raw_vprintf(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !1441
  store i32 %11, ptr %6, align 4, !dbg !1442
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0, !dbg !1443
  call void @llvm.va_end(ptr %12), !dbg !1443
  %13 = load i32, ptr %6, align 4, !dbg !1444
  ret i32 %13, !dbg !1445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_begin_newenviron(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !1446 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1447, metadata !DIExpression()), !dbg !1448
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1449, metadata !DIExpression()), !dbg !1450
  %5 = load ptr, ptr %3, align 8, !dbg !1451
  call void @telnet_begin_sb(ptr noundef %5, i8 noundef zeroext 39), !dbg !1452
  %6 = load ptr, ptr %3, align 8, !dbg !1453
  call void @telnet_send(ptr noundef %6, ptr noundef %4, i64 noundef 1), !dbg !1454
  ret void, !dbg !1455
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_newenviron_value(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #0 !dbg !1456 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1459, metadata !DIExpression()), !dbg !1460
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1461, metadata !DIExpression()), !dbg !1462
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1463, metadata !DIExpression()), !dbg !1464
  %7 = load ptr, ptr %4, align 8, !dbg !1465
  call void @telnet_send(ptr noundef %7, ptr noundef %5, i64 noundef 1), !dbg !1466
  %8 = load ptr, ptr %6, align 8, !dbg !1467
  %9 = icmp ne ptr %8, null, !dbg !1469
  br i1 %9, label %10, label %15, !dbg !1470

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !dbg !1471
  %12 = load ptr, ptr %6, align 8, !dbg !1473
  %13 = load ptr, ptr %6, align 8, !dbg !1474
  %14 = call i64 @strlen(ptr noundef %13) #16, !dbg !1475
  call void @telnet_send(ptr noundef %11, ptr noundef %12, i64 noundef %14), !dbg !1476
  br label %15, !dbg !1477

15:                                               ; preds = %10, %3
  ret void, !dbg !1478
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_ttype_send(ptr noundef %0) #0 !dbg !201 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1479, metadata !DIExpression()), !dbg !1480
  %3 = load ptr, ptr %2, align 8, !dbg !1481
  call void @_send(ptr noundef %3, ptr noundef @telnet_ttype_send.SEND, i64 noundef 6), !dbg !1481
  ret void, !dbg !1482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_ttype_is(ptr noundef %0, ptr noundef %1) #0 !dbg !211 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1483, metadata !DIExpression()), !dbg !1484
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1485, metadata !DIExpression()), !dbg !1486
  %5 = load ptr, ptr %3, align 8, !dbg !1487
  call void @_send(ptr noundef %5, ptr noundef @telnet_ttype_is.IS, i64 noundef 4), !dbg !1487
  %6 = load ptr, ptr %3, align 8, !dbg !1488
  %7 = load ptr, ptr %4, align 8, !dbg !1489
  %8 = load ptr, ptr %4, align 8, !dbg !1490
  %9 = call i64 @strlen(ptr noundef %8) #16, !dbg !1491
  call void @_send(ptr noundef %6, ptr noundef %7, i64 noundef %9), !dbg !1492
  %10 = load ptr, ptr %3, align 8, !dbg !1493
  call void @telnet_iac(ptr noundef %10, i8 noundef zeroext -16), !dbg !1493
  ret void, !dbg !1494
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_send_zmp(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !1495 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1498, metadata !DIExpression()), !dbg !1499
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1500, metadata !DIExpression()), !dbg !1501
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1502, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1504, metadata !DIExpression()), !dbg !1505
  %8 = load ptr, ptr %4, align 8, !dbg !1506
  %9 = load ptr, ptr %6, align 8, !dbg !1507
  %10 = getelementptr inbounds ptr, ptr %9, i64 0, !dbg !1507
  %11 = load ptr, ptr %10, align 8, !dbg !1507
  call void @telnet_begin_zmp(ptr noundef %8, ptr noundef %11), !dbg !1508
  store i64 1, ptr %7, align 8, !dbg !1509
  br label %12, !dbg !1511

12:                                               ; preds = %22, %3
  %13 = load i64, ptr %7, align 8, !dbg !1512
  %14 = load i64, ptr %5, align 8, !dbg !1514
  %15 = icmp ne i64 %13, %14, !dbg !1515
  br i1 %15, label %16, label %25, !dbg !1516

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 8, !dbg !1517
  %18 = load ptr, ptr %6, align 8, !dbg !1518
  %19 = load i64, ptr %7, align 8, !dbg !1519
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19, !dbg !1518
  %21 = load ptr, ptr %20, align 8, !dbg !1518
  call void @telnet_zmp_arg(ptr noundef %17, ptr noundef %21), !dbg !1520
  br label %22, !dbg !1520

22:                                               ; preds = %16
  %23 = load i64, ptr %7, align 8, !dbg !1521
  %24 = add i64 %23, 1, !dbg !1521
  store i64 %24, ptr %7, align 8, !dbg !1521
  br label %12, !dbg !1522, !llvm.loop !1523

25:                                               ; preds = %12
  %26 = load ptr, ptr %4, align 8, !dbg !1525
  call void @telnet_iac(ptr noundef %26, i8 noundef zeroext -16), !dbg !1525
  ret void, !dbg !1526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_begin_zmp(ptr noundef %0, ptr noundef %1) #0 !dbg !1527 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1528, metadata !DIExpression()), !dbg !1529
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1530, metadata !DIExpression()), !dbg !1531
  %5 = load ptr, ptr %3, align 8, !dbg !1532
  call void @telnet_begin_sb(ptr noundef %5, i8 noundef zeroext 93), !dbg !1533
  %6 = load ptr, ptr %3, align 8, !dbg !1534
  %7 = load ptr, ptr %4, align 8, !dbg !1535
  call void @telnet_zmp_arg(ptr noundef %6, ptr noundef %7), !dbg !1536
  ret void, !dbg !1537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_zmp_arg(ptr noundef %0, ptr noundef %1) #0 !dbg !1538 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1539, metadata !DIExpression()), !dbg !1540
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1541, metadata !DIExpression()), !dbg !1542
  %5 = load ptr, ptr %3, align 8, !dbg !1543
  %6 = load ptr, ptr %4, align 8, !dbg !1544
  %7 = load ptr, ptr %4, align 8, !dbg !1545
  %8 = call i64 @strlen(ptr noundef %7) #16, !dbg !1546
  %9 = add i64 %8, 1, !dbg !1547
  call void @telnet_send(ptr noundef %5, ptr noundef %6, i64 noundef %9), !dbg !1548
  ret void, !dbg !1549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_send_vzmpv(ptr noundef %0, ptr noundef %1) #0 !dbg !1550 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1553, metadata !DIExpression()), !dbg !1554
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1555, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1557, metadata !DIExpression()), !dbg !1558
  %6 = load ptr, ptr %3, align 8, !dbg !1559
  call void @telnet_begin_sb(ptr noundef %6, i8 noundef zeroext 93), !dbg !1560
  br label %7, !dbg !1561

7:                                                ; preds = %25, %2
  %8 = load ptr, ptr %4, align 8, !dbg !1562
  %9 = getelementptr inbounds %struct.__va_list_tag, ptr %8, i32 0, i32 0, !dbg !1562
  %10 = load i32, ptr %9, align 8, !dbg !1562
  %11 = icmp ule i32 %10, 40, !dbg !1562
  br i1 %11, label %12, label %17, !dbg !1562

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.__va_list_tag, ptr %8, i32 0, i32 3, !dbg !1562
  %14 = load ptr, ptr %13, align 8, !dbg !1562
  %15 = getelementptr i8, ptr %14, i32 %10, !dbg !1562
  %16 = add i32 %10, 8, !dbg !1562
  store i32 %16, ptr %9, align 8, !dbg !1562
  br label %21, !dbg !1562

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.__va_list_tag, ptr %8, i32 0, i32 2, !dbg !1562
  %19 = load ptr, ptr %18, align 8, !dbg !1562
  %20 = getelementptr i8, ptr %19, i32 8, !dbg !1562
  store ptr %20, ptr %18, align 8, !dbg !1562
  br label %21, !dbg !1562

21:                                               ; preds = %17, %12
  %22 = phi ptr [ %15, %12 ], [ %19, %17 ], !dbg !1562
  %23 = load ptr, ptr %22, align 8, !dbg !1562
  store ptr %23, ptr %5, align 8, !dbg !1563
  %24 = icmp ne ptr %23, null, !dbg !1564
  br i1 %24, label %25, label %28, !dbg !1561

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 8, !dbg !1565
  %27 = load ptr, ptr %5, align 8, !dbg !1566
  call void @telnet_zmp_arg(ptr noundef %26, ptr noundef %27), !dbg !1567
  br label %7, !dbg !1561, !llvm.loop !1568

28:                                               ; preds = %21
  %29 = load ptr, ptr %3, align 8, !dbg !1570
  call void @telnet_iac(ptr noundef %29, i8 noundef zeroext -16), !dbg !1570
  ret void, !dbg !1571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_send_zmpv(ptr noundef %0, ...) #0 !dbg !1572 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1575, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1577, metadata !DIExpression()), !dbg !1578
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0, !dbg !1579
  call void @llvm.va_start(ptr %4), !dbg !1579
  %5 = load ptr, ptr %2, align 8, !dbg !1580
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0, !dbg !1581
  call void @telnet_send_vzmpv(ptr noundef %5, ptr noundef %6), !dbg !1582
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0, !dbg !1583
  call void @llvm.va_end(ptr %7), !dbg !1583
  ret void, !dbg !1584
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_negotiate(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !1585 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca %union.telnet_event_t, align 8
  %6 = alloca %struct.telnet_rfc1143_t, align 1
  %7 = alloca %struct.telnet_rfc1143_t, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1586, metadata !DIExpression()), !dbg !1587
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1588, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1590, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1592, metadata !DIExpression()), !dbg !1593
  %8 = load ptr, ptr %3, align 8, !dbg !1594
  %9 = getelementptr inbounds %struct.telnet_t, ptr %8, i32 0, i32 8, !dbg !1596
  %10 = load i8, ptr %9, align 4, !dbg !1596
  %11 = zext i8 %10 to i32, !dbg !1594
  %12 = and i32 %11, 1, !dbg !1597
  %13 = icmp ne i32 %12, 0, !dbg !1597
  br i1 %13, label %14, label %59, !dbg !1598

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8, !dbg !1599
  %16 = getelementptr inbounds %struct.telnet_t, ptr %15, i32 0, i32 7, !dbg !1601
  %17 = load i32, ptr %16, align 8, !dbg !1601
  switch i32 %17, label %58 [
    i32 2, label %18
    i32 3, label %28
    i32 4, label %38
    i32 5, label %48
  ], !dbg !1602

18:                                               ; preds = %14
  store i32 3, ptr %5, align 8, !dbg !1603
  %19 = load i8, ptr %4, align 1, !dbg !1603
  %20 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1603
  store i8 %19, ptr %20, align 4, !dbg !1603
  %21 = load ptr, ptr %3, align 8, !dbg !1603
  %22 = getelementptr inbounds %struct.telnet_t, ptr %21, i32 0, i32 2, !dbg !1603
  %23 = load ptr, ptr %22, align 8, !dbg !1603
  %24 = load ptr, ptr %3, align 8, !dbg !1603
  %25 = load ptr, ptr %3, align 8, !dbg !1603
  %26 = getelementptr inbounds %struct.telnet_t, ptr %25, i32 0, i32 0, !dbg !1603
  %27 = load ptr, ptr %26, align 8, !dbg !1603
  call void %23(ptr noundef %24, ptr noundef %5, ptr noundef %27), !dbg !1603
  br label %58, !dbg !1605

28:                                               ; preds = %14
  store i32 4, ptr %5, align 8, !dbg !1606
  %29 = load i8, ptr %4, align 1, !dbg !1606
  %30 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1606
  store i8 %29, ptr %30, align 4, !dbg !1606
  %31 = load ptr, ptr %3, align 8, !dbg !1606
  %32 = getelementptr inbounds %struct.telnet_t, ptr %31, i32 0, i32 2, !dbg !1606
  %33 = load ptr, ptr %32, align 8, !dbg !1606
  %34 = load ptr, ptr %3, align 8, !dbg !1606
  %35 = load ptr, ptr %3, align 8, !dbg !1606
  %36 = getelementptr inbounds %struct.telnet_t, ptr %35, i32 0, i32 0, !dbg !1606
  %37 = load ptr, ptr %36, align 8, !dbg !1606
  call void %33(ptr noundef %34, ptr noundef %5, ptr noundef %37), !dbg !1606
  br label %58, !dbg !1607

38:                                               ; preds = %14
  store i32 5, ptr %5, align 8, !dbg !1608
  %39 = load i8, ptr %4, align 1, !dbg !1608
  %40 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1608
  store i8 %39, ptr %40, align 4, !dbg !1608
  %41 = load ptr, ptr %3, align 8, !dbg !1608
  %42 = getelementptr inbounds %struct.telnet_t, ptr %41, i32 0, i32 2, !dbg !1608
  %43 = load ptr, ptr %42, align 8, !dbg !1608
  %44 = load ptr, ptr %3, align 8, !dbg !1608
  %45 = load ptr, ptr %3, align 8, !dbg !1608
  %46 = getelementptr inbounds %struct.telnet_t, ptr %45, i32 0, i32 0, !dbg !1608
  %47 = load ptr, ptr %46, align 8, !dbg !1608
  call void %43(ptr noundef %44, ptr noundef %5, ptr noundef %47), !dbg !1608
  br label %58, !dbg !1609

48:                                               ; preds = %14
  store i32 6, ptr %5, align 8, !dbg !1610
  %49 = load i8, ptr %4, align 1, !dbg !1610
  %50 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1610
  store i8 %49, ptr %50, align 4, !dbg !1610
  %51 = load ptr, ptr %3, align 8, !dbg !1610
  %52 = getelementptr inbounds %struct.telnet_t, ptr %51, i32 0, i32 2, !dbg !1610
  %53 = load ptr, ptr %52, align 8, !dbg !1610
  %54 = load ptr, ptr %3, align 8, !dbg !1610
  %55 = load ptr, ptr %3, align 8, !dbg !1610
  %56 = getelementptr inbounds %struct.telnet_t, ptr %55, i32 0, i32 0, !dbg !1610
  %57 = load ptr, ptr %56, align 8, !dbg !1610
  call void %53(ptr noundef %54, ptr noundef %5, ptr noundef %57), !dbg !1610
  br label %58, !dbg !1611

58:                                               ; preds = %14, %48, %38, %28, %18
  br label %429, !dbg !1612

59:                                               ; preds = %2
  %60 = load ptr, ptr %3, align 8, !dbg !1613
  %61 = load i8, ptr %4, align 1, !dbg !1614
  %62 = call i16 @_get_rfc1143(ptr noundef %60, i8 noundef zeroext %61), !dbg !1615
  store i16 %62, ptr %7, align 1, !dbg !1615
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %7, i64 2, i1 false), !dbg !1615
  %63 = load ptr, ptr %3, align 8, !dbg !1616
  %64 = getelementptr inbounds %struct.telnet_t, ptr %63, i32 0, i32 7, !dbg !1617
  %65 = load i32, ptr %64, align 8, !dbg !1617
  switch i32 %65, label %429 [
    i32 2, label %66
    i32 3, label %175
    i32 4, label %243
    i32 5, label %356
  ], !dbg !1618

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1619
  %68 = load i8, ptr %67, align 1, !dbg !1619
  %69 = zext i8 %68 to i32, !dbg !1619
  %70 = and i32 %69, 240, !dbg !1619
  %71 = ashr i32 %70, 4, !dbg !1619
  switch i32 %71, label %174 [
    i32 0, label %72
    i32 2, label %100
    i32 4, label %119
    i32 3, label %138
    i32 5, label %155
  ], !dbg !1621

72:                                               ; preds = %66
  %73 = load ptr, ptr %3, align 8, !dbg !1622
  %74 = load i8, ptr %4, align 1, !dbg !1625
  %75 = call i32 @_check_telopt(ptr noundef %73, i8 noundef zeroext %74, i32 noundef 0), !dbg !1626
  %76 = icmp ne i32 %75, 0, !dbg !1626
  br i1 %76, label %77, label %96, !dbg !1627

77:                                               ; preds = %72
  %78 = load ptr, ptr %3, align 8, !dbg !1628
  %79 = load i8, ptr %4, align 1, !dbg !1630
  %80 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1631
  %81 = load i8, ptr %80, align 1, !dbg !1631
  %82 = zext i8 %81 to i32, !dbg !1631
  %83 = and i32 %82, 15, !dbg !1631
  %84 = trunc i32 %83 to i8, !dbg !1631
  call void @_set_rfc1143(ptr noundef %78, i8 noundef zeroext %79, i8 noundef signext %84, i8 noundef signext 1), !dbg !1632
  %85 = load ptr, ptr %3, align 8, !dbg !1633
  %86 = load i8, ptr %4, align 1, !dbg !1634
  call void @_send_negotiate(ptr noundef %85, i8 noundef zeroext -3, i8 noundef zeroext %86), !dbg !1635
  store i32 3, ptr %5, align 8, !dbg !1636
  %87 = load i8, ptr %4, align 1, !dbg !1636
  %88 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1636
  store i8 %87, ptr %88, align 4, !dbg !1636
  %89 = load ptr, ptr %3, align 8, !dbg !1636
  %90 = getelementptr inbounds %struct.telnet_t, ptr %89, i32 0, i32 2, !dbg !1636
  %91 = load ptr, ptr %90, align 8, !dbg !1636
  %92 = load ptr, ptr %3, align 8, !dbg !1636
  %93 = load ptr, ptr %3, align 8, !dbg !1636
  %94 = getelementptr inbounds %struct.telnet_t, ptr %93, i32 0, i32 0, !dbg !1636
  %95 = load ptr, ptr %94, align 8, !dbg !1636
  call void %91(ptr noundef %92, ptr noundef %5, ptr noundef %95), !dbg !1636
  br label %99, !dbg !1637

96:                                               ; preds = %72
  %97 = load ptr, ptr %3, align 8, !dbg !1638
  %98 = load i8, ptr %4, align 1, !dbg !1639
  call void @_send_negotiate(ptr noundef %97, i8 noundef zeroext -2, i8 noundef zeroext %98), !dbg !1640
  br label %99

99:                                               ; preds = %96, %77
  br label %174, !dbg !1641

100:                                              ; preds = %66
  %101 = load ptr, ptr %3, align 8, !dbg !1642
  %102 = load i8, ptr %4, align 1, !dbg !1643
  %103 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1644
  %104 = load i8, ptr %103, align 1, !dbg !1644
  %105 = zext i8 %104 to i32, !dbg !1644
  %106 = and i32 %105, 15, !dbg !1644
  %107 = trunc i32 %106 to i8, !dbg !1644
  call void @_set_rfc1143(ptr noundef %101, i8 noundef zeroext %102, i8 noundef signext %107, i8 noundef signext 0), !dbg !1645
  store i32 4, ptr %5, align 8, !dbg !1646
  %108 = load i8, ptr %4, align 1, !dbg !1646
  %109 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1646
  store i8 %108, ptr %109, align 4, !dbg !1646
  %110 = load ptr, ptr %3, align 8, !dbg !1646
  %111 = getelementptr inbounds %struct.telnet_t, ptr %110, i32 0, i32 2, !dbg !1646
  %112 = load ptr, ptr %111, align 8, !dbg !1646
  %113 = load ptr, ptr %3, align 8, !dbg !1646
  %114 = load ptr, ptr %3, align 8, !dbg !1646
  %115 = getelementptr inbounds %struct.telnet_t, ptr %114, i32 0, i32 0, !dbg !1646
  %116 = load ptr, ptr %115, align 8, !dbg !1646
  call void %112(ptr noundef %113, ptr noundef %5, ptr noundef %116), !dbg !1646
  %117 = load ptr, ptr %3, align 8, !dbg !1647
  %118 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %117, i32 noundef 376, ptr noundef @__func__._negotiate, i32 noundef 4, i32 noundef 0, ptr noundef @.str.2), !dbg !1648
  br label %174, !dbg !1649

119:                                              ; preds = %66
  %120 = load ptr, ptr %3, align 8, !dbg !1650
  %121 = load i8, ptr %4, align 1, !dbg !1651
  %122 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1652
  %123 = load i8, ptr %122, align 1, !dbg !1652
  %124 = zext i8 %123 to i32, !dbg !1652
  %125 = and i32 %124, 15, !dbg !1652
  %126 = trunc i32 %125 to i8, !dbg !1652
  call void @_set_rfc1143(ptr noundef %120, i8 noundef zeroext %121, i8 noundef signext %126, i8 noundef signext 1), !dbg !1653
  store i32 3, ptr %5, align 8, !dbg !1654
  %127 = load i8, ptr %4, align 1, !dbg !1654
  %128 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1654
  store i8 %127, ptr %128, align 4, !dbg !1654
  %129 = load ptr, ptr %3, align 8, !dbg !1654
  %130 = getelementptr inbounds %struct.telnet_t, ptr %129, i32 0, i32 2, !dbg !1654
  %131 = load ptr, ptr %130, align 8, !dbg !1654
  %132 = load ptr, ptr %3, align 8, !dbg !1654
  %133 = load ptr, ptr %3, align 8, !dbg !1654
  %134 = getelementptr inbounds %struct.telnet_t, ptr %133, i32 0, i32 0, !dbg !1654
  %135 = load ptr, ptr %134, align 8, !dbg !1654
  call void %131(ptr noundef %132, ptr noundef %5, ptr noundef %135), !dbg !1654
  %136 = load ptr, ptr %3, align 8, !dbg !1655
  %137 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %136, i32 noundef 382, ptr noundef @__func__._negotiate, i32 noundef 4, i32 noundef 0, ptr noundef @.str.2), !dbg !1656
  br label %174, !dbg !1657

138:                                              ; preds = %66
  %139 = load ptr, ptr %3, align 8, !dbg !1658
  %140 = load i8, ptr %4, align 1, !dbg !1659
  %141 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1660
  %142 = load i8, ptr %141, align 1, !dbg !1660
  %143 = zext i8 %142 to i32, !dbg !1660
  %144 = and i32 %143, 15, !dbg !1660
  %145 = trunc i32 %144 to i8, !dbg !1660
  call void @_set_rfc1143(ptr noundef %139, i8 noundef zeroext %140, i8 noundef signext %145, i8 noundef signext 1), !dbg !1661
  store i32 3, ptr %5, align 8, !dbg !1662
  %146 = load i8, ptr %4, align 1, !dbg !1662
  %147 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1662
  store i8 %146, ptr %147, align 4, !dbg !1662
  %148 = load ptr, ptr %3, align 8, !dbg !1662
  %149 = getelementptr inbounds %struct.telnet_t, ptr %148, i32 0, i32 2, !dbg !1662
  %150 = load ptr, ptr %149, align 8, !dbg !1662
  %151 = load ptr, ptr %3, align 8, !dbg !1662
  %152 = load ptr, ptr %3, align 8, !dbg !1662
  %153 = getelementptr inbounds %struct.telnet_t, ptr %152, i32 0, i32 0, !dbg !1662
  %154 = load ptr, ptr %153, align 8, !dbg !1662
  call void %150(ptr noundef %151, ptr noundef %5, ptr noundef %154), !dbg !1662
  br label %174, !dbg !1663

155:                                              ; preds = %66
  %156 = load ptr, ptr %3, align 8, !dbg !1664
  %157 = load i8, ptr %4, align 1, !dbg !1665
  %158 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1666
  %159 = load i8, ptr %158, align 1, !dbg !1666
  %160 = zext i8 %159 to i32, !dbg !1666
  %161 = and i32 %160, 15, !dbg !1666
  %162 = trunc i32 %161 to i8, !dbg !1666
  call void @_set_rfc1143(ptr noundef %156, i8 noundef zeroext %157, i8 noundef signext %162, i8 noundef signext 2), !dbg !1667
  %163 = load ptr, ptr %3, align 8, !dbg !1668
  %164 = load i8, ptr %4, align 1, !dbg !1669
  call void @_send_negotiate(ptr noundef %163, i8 noundef zeroext -2, i8 noundef zeroext %164), !dbg !1670
  store i32 3, ptr %5, align 8, !dbg !1671
  %165 = load i8, ptr %4, align 1, !dbg !1671
  %166 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1671
  store i8 %165, ptr %166, align 4, !dbg !1671
  %167 = load ptr, ptr %3, align 8, !dbg !1671
  %168 = getelementptr inbounds %struct.telnet_t, ptr %167, i32 0, i32 2, !dbg !1671
  %169 = load ptr, ptr %168, align 8, !dbg !1671
  %170 = load ptr, ptr %3, align 8, !dbg !1671
  %171 = load ptr, ptr %3, align 8, !dbg !1671
  %172 = getelementptr inbounds %struct.telnet_t, ptr %171, i32 0, i32 0, !dbg !1671
  %173 = load ptr, ptr %172, align 8, !dbg !1671
  call void %169(ptr noundef %170, ptr noundef %5, ptr noundef %173), !dbg !1671
  br label %174, !dbg !1672

174:                                              ; preds = %66, %155, %138, %119, %100, %99
  br label %429, !dbg !1673

175:                                              ; preds = %59
  %176 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1674
  %177 = load i8, ptr %176, align 1, !dbg !1674
  %178 = zext i8 %177 to i32, !dbg !1674
  %179 = and i32 %178, 240, !dbg !1674
  %180 = ashr i32 %179, 4, !dbg !1674
  switch i32 %180, label %242 [
    i32 1, label %181
    i32 2, label %200
    i32 4, label %217
    i32 3, label %234
    i32 5, label %234
  ], !dbg !1675

181:                                              ; preds = %175
  %182 = load ptr, ptr %3, align 8, !dbg !1676
  %183 = load i8, ptr %4, align 1, !dbg !1678
  %184 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1679
  %185 = load i8, ptr %184, align 1, !dbg !1679
  %186 = zext i8 %185 to i32, !dbg !1679
  %187 = and i32 %186, 15, !dbg !1679
  %188 = trunc i32 %187 to i8, !dbg !1679
  call void @_set_rfc1143(ptr noundef %182, i8 noundef zeroext %183, i8 noundef signext %188, i8 noundef signext 0), !dbg !1680
  %189 = load ptr, ptr %3, align 8, !dbg !1681
  %190 = load i8, ptr %4, align 1, !dbg !1682
  call void @_send_negotiate(ptr noundef %189, i8 noundef zeroext -2, i8 noundef zeroext %190), !dbg !1683
  store i32 4, ptr %5, align 8, !dbg !1684
  %191 = load i8, ptr %4, align 1, !dbg !1684
  %192 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1684
  store i8 %191, ptr %192, align 4, !dbg !1684
  %193 = load ptr, ptr %3, align 8, !dbg !1684
  %194 = getelementptr inbounds %struct.telnet_t, ptr %193, i32 0, i32 2, !dbg !1684
  %195 = load ptr, ptr %194, align 8, !dbg !1684
  %196 = load ptr, ptr %3, align 8, !dbg !1684
  %197 = load ptr, ptr %3, align 8, !dbg !1684
  %198 = getelementptr inbounds %struct.telnet_t, ptr %197, i32 0, i32 0, !dbg !1684
  %199 = load ptr, ptr %198, align 8, !dbg !1684
  call void %195(ptr noundef %196, ptr noundef %5, ptr noundef %199), !dbg !1684
  br label %242, !dbg !1685

200:                                              ; preds = %175
  %201 = load ptr, ptr %3, align 8, !dbg !1686
  %202 = load i8, ptr %4, align 1, !dbg !1687
  %203 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1688
  %204 = load i8, ptr %203, align 1, !dbg !1688
  %205 = zext i8 %204 to i32, !dbg !1688
  %206 = and i32 %205, 15, !dbg !1688
  %207 = trunc i32 %206 to i8, !dbg !1688
  call void @_set_rfc1143(ptr noundef %201, i8 noundef zeroext %202, i8 noundef signext %207, i8 noundef signext 0), !dbg !1689
  store i32 4, ptr %5, align 8, !dbg !1690
  %208 = load i8, ptr %4, align 1, !dbg !1690
  %209 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1690
  store i8 %208, ptr %209, align 4, !dbg !1690
  %210 = load ptr, ptr %3, align 8, !dbg !1690
  %211 = getelementptr inbounds %struct.telnet_t, ptr %210, i32 0, i32 2, !dbg !1690
  %212 = load ptr, ptr %211, align 8, !dbg !1690
  %213 = load ptr, ptr %3, align 8, !dbg !1690
  %214 = load ptr, ptr %3, align 8, !dbg !1690
  %215 = getelementptr inbounds %struct.telnet_t, ptr %214, i32 0, i32 0, !dbg !1690
  %216 = load ptr, ptr %215, align 8, !dbg !1690
  call void %212(ptr noundef %213, ptr noundef %5, ptr noundef %216), !dbg !1690
  br label %242, !dbg !1691

217:                                              ; preds = %175
  %218 = load ptr, ptr %3, align 8, !dbg !1692
  %219 = load i8, ptr %4, align 1, !dbg !1693
  %220 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1694
  %221 = load i8, ptr %220, align 1, !dbg !1694
  %222 = zext i8 %221 to i32, !dbg !1694
  %223 = and i32 %222, 15, !dbg !1694
  %224 = trunc i32 %223 to i8, !dbg !1694
  call void @_set_rfc1143(ptr noundef %218, i8 noundef zeroext %219, i8 noundef signext %224, i8 noundef signext 3), !dbg !1695
  store i32 5, ptr %5, align 8, !dbg !1696
  %225 = load i8, ptr %4, align 1, !dbg !1696
  %226 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1696
  store i8 %225, ptr %226, align 4, !dbg !1696
  %227 = load ptr, ptr %3, align 8, !dbg !1696
  %228 = getelementptr inbounds %struct.telnet_t, ptr %227, i32 0, i32 2, !dbg !1696
  %229 = load ptr, ptr %228, align 8, !dbg !1696
  %230 = load ptr, ptr %3, align 8, !dbg !1696
  %231 = load ptr, ptr %3, align 8, !dbg !1696
  %232 = getelementptr inbounds %struct.telnet_t, ptr %231, i32 0, i32 0, !dbg !1696
  %233 = load ptr, ptr %232, align 8, !dbg !1696
  call void %229(ptr noundef %230, ptr noundef %5, ptr noundef %233), !dbg !1696
  br label %242, !dbg !1697

234:                                              ; preds = %175, %175
  %235 = load ptr, ptr %3, align 8, !dbg !1698
  %236 = load i8, ptr %4, align 1, !dbg !1699
  %237 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1700
  %238 = load i8, ptr %237, align 1, !dbg !1700
  %239 = zext i8 %238 to i32, !dbg !1700
  %240 = and i32 %239, 15, !dbg !1700
  %241 = trunc i32 %240 to i8, !dbg !1700
  call void @_set_rfc1143(ptr noundef %235, i8 noundef zeroext %236, i8 noundef signext %241, i8 noundef signext 0), !dbg !1701
  br label %242, !dbg !1702

242:                                              ; preds = %175, %234, %217, %200, %181
  br label %429, !dbg !1703

243:                                              ; preds = %59
  %244 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1704
  %245 = load i8, ptr %244, align 1, !dbg !1704
  %246 = zext i8 %245 to i32, !dbg !1704
  %247 = and i32 %246, 15, !dbg !1704
  switch i32 %247, label %355 [
    i32 0, label %248
    i32 2, label %277
    i32 4, label %297
    i32 3, label %317
    i32 5, label %335
  ], !dbg !1705

248:                                              ; preds = %243
  %249 = load ptr, ptr %3, align 8, !dbg !1706
  %250 = load i8, ptr %4, align 1, !dbg !1709
  %251 = call i32 @_check_telopt(ptr noundef %249, i8 noundef zeroext %250, i32 noundef 1), !dbg !1710
  %252 = icmp ne i32 %251, 0, !dbg !1710
  br i1 %252, label %253, label %273, !dbg !1711

253:                                              ; preds = %248
  %254 = load ptr, ptr %3, align 8, !dbg !1712
  %255 = load i8, ptr %4, align 1, !dbg !1714
  %256 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1715
  %257 = load i8, ptr %256, align 1, !dbg !1715
  %258 = zext i8 %257 to i32, !dbg !1715
  %259 = and i32 %258, 240, !dbg !1715
  %260 = ashr i32 %259, 4, !dbg !1715
  %261 = trunc i32 %260 to i8, !dbg !1715
  call void @_set_rfc1143(ptr noundef %254, i8 noundef zeroext %255, i8 noundef signext 1, i8 noundef signext %261), !dbg !1716
  %262 = load ptr, ptr %3, align 8, !dbg !1717
  %263 = load i8, ptr %4, align 1, !dbg !1718
  call void @_send_negotiate(ptr noundef %262, i8 noundef zeroext -5, i8 noundef zeroext %263), !dbg !1719
  store i32 5, ptr %5, align 8, !dbg !1720
  %264 = load i8, ptr %4, align 1, !dbg !1720
  %265 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1720
  store i8 %264, ptr %265, align 4, !dbg !1720
  %266 = load ptr, ptr %3, align 8, !dbg !1720
  %267 = getelementptr inbounds %struct.telnet_t, ptr %266, i32 0, i32 2, !dbg !1720
  %268 = load ptr, ptr %267, align 8, !dbg !1720
  %269 = load ptr, ptr %3, align 8, !dbg !1720
  %270 = load ptr, ptr %3, align 8, !dbg !1720
  %271 = getelementptr inbounds %struct.telnet_t, ptr %270, i32 0, i32 0, !dbg !1720
  %272 = load ptr, ptr %271, align 8, !dbg !1720
  call void %268(ptr noundef %269, ptr noundef %5, ptr noundef %272), !dbg !1720
  br label %276, !dbg !1721

273:                                              ; preds = %248
  %274 = load ptr, ptr %3, align 8, !dbg !1722
  %275 = load i8, ptr %4, align 1, !dbg !1723
  call void @_send_negotiate(ptr noundef %274, i8 noundef zeroext -4, i8 noundef zeroext %275), !dbg !1724
  br label %276

276:                                              ; preds = %273, %253
  br label %355, !dbg !1725

277:                                              ; preds = %243
  %278 = load ptr, ptr %3, align 8, !dbg !1726
  %279 = load i8, ptr %4, align 1, !dbg !1727
  %280 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1728
  %281 = load i8, ptr %280, align 1, !dbg !1728
  %282 = zext i8 %281 to i32, !dbg !1728
  %283 = and i32 %282, 240, !dbg !1728
  %284 = ashr i32 %283, 4, !dbg !1728
  %285 = trunc i32 %284 to i8, !dbg !1728
  call void @_set_rfc1143(ptr noundef %278, i8 noundef zeroext %279, i8 noundef signext 0, i8 noundef signext %285), !dbg !1729
  store i32 6, ptr %5, align 8, !dbg !1730
  %286 = load i8, ptr %4, align 1, !dbg !1730
  %287 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1730
  store i8 %286, ptr %287, align 4, !dbg !1730
  %288 = load ptr, ptr %3, align 8, !dbg !1730
  %289 = getelementptr inbounds %struct.telnet_t, ptr %288, i32 0, i32 2, !dbg !1730
  %290 = load ptr, ptr %289, align 8, !dbg !1730
  %291 = load ptr, ptr %3, align 8, !dbg !1730
  %292 = load ptr, ptr %3, align 8, !dbg !1730
  %293 = getelementptr inbounds %struct.telnet_t, ptr %292, i32 0, i32 0, !dbg !1730
  %294 = load ptr, ptr %293, align 8, !dbg !1730
  call void %290(ptr noundef %291, ptr noundef %5, ptr noundef %294), !dbg !1730
  %295 = load ptr, ptr %3, align 8, !dbg !1731
  %296 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %295, i32 noundef 434, ptr noundef @__func__._negotiate, i32 noundef 4, i32 noundef 0, ptr noundef @.str.3), !dbg !1732
  br label %355, !dbg !1733

297:                                              ; preds = %243
  %298 = load ptr, ptr %3, align 8, !dbg !1734
  %299 = load i8, ptr %4, align 1, !dbg !1735
  %300 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1736
  %301 = load i8, ptr %300, align 1, !dbg !1736
  %302 = zext i8 %301 to i32, !dbg !1736
  %303 = and i32 %302, 240, !dbg !1736
  %304 = ashr i32 %303, 4, !dbg !1736
  %305 = trunc i32 %304 to i8, !dbg !1736
  call void @_set_rfc1143(ptr noundef %298, i8 noundef zeroext %299, i8 noundef signext 1, i8 noundef signext %305), !dbg !1737
  store i32 5, ptr %5, align 8, !dbg !1738
  %306 = load i8, ptr %4, align 1, !dbg !1738
  %307 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1738
  store i8 %306, ptr %307, align 4, !dbg !1738
  %308 = load ptr, ptr %3, align 8, !dbg !1738
  %309 = getelementptr inbounds %struct.telnet_t, ptr %308, i32 0, i32 2, !dbg !1738
  %310 = load ptr, ptr %309, align 8, !dbg !1738
  %311 = load ptr, ptr %3, align 8, !dbg !1738
  %312 = load ptr, ptr %3, align 8, !dbg !1738
  %313 = getelementptr inbounds %struct.telnet_t, ptr %312, i32 0, i32 0, !dbg !1738
  %314 = load ptr, ptr %313, align 8, !dbg !1738
  call void %310(ptr noundef %311, ptr noundef %5, ptr noundef %314), !dbg !1738
  %315 = load ptr, ptr %3, align 8, !dbg !1739
  %316 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %315, i32 noundef 440, ptr noundef @__func__._negotiate, i32 noundef 4, i32 noundef 0, ptr noundef @.str.3), !dbg !1740
  br label %355, !dbg !1741

317:                                              ; preds = %243
  %318 = load ptr, ptr %3, align 8, !dbg !1742
  %319 = load i8, ptr %4, align 1, !dbg !1743
  %320 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1744
  %321 = load i8, ptr %320, align 1, !dbg !1744
  %322 = zext i8 %321 to i32, !dbg !1744
  %323 = and i32 %322, 240, !dbg !1744
  %324 = ashr i32 %323, 4, !dbg !1744
  %325 = trunc i32 %324 to i8, !dbg !1744
  call void @_set_rfc1143(ptr noundef %318, i8 noundef zeroext %319, i8 noundef signext 1, i8 noundef signext %325), !dbg !1745
  store i32 5, ptr %5, align 8, !dbg !1746
  %326 = load i8, ptr %4, align 1, !dbg !1746
  %327 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1746
  store i8 %326, ptr %327, align 4, !dbg !1746
  %328 = load ptr, ptr %3, align 8, !dbg !1746
  %329 = getelementptr inbounds %struct.telnet_t, ptr %328, i32 0, i32 2, !dbg !1746
  %330 = load ptr, ptr %329, align 8, !dbg !1746
  %331 = load ptr, ptr %3, align 8, !dbg !1746
  %332 = load ptr, ptr %3, align 8, !dbg !1746
  %333 = getelementptr inbounds %struct.telnet_t, ptr %332, i32 0, i32 0, !dbg !1746
  %334 = load ptr, ptr %333, align 8, !dbg !1746
  call void %330(ptr noundef %331, ptr noundef %5, ptr noundef %334), !dbg !1746
  br label %355, !dbg !1747

335:                                              ; preds = %243
  %336 = load ptr, ptr %3, align 8, !dbg !1748
  %337 = load i8, ptr %4, align 1, !dbg !1749
  %338 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1750
  %339 = load i8, ptr %338, align 1, !dbg !1750
  %340 = zext i8 %339 to i32, !dbg !1750
  %341 = and i32 %340, 240, !dbg !1750
  %342 = ashr i32 %341, 4, !dbg !1750
  %343 = trunc i32 %342 to i8, !dbg !1750
  call void @_set_rfc1143(ptr noundef %336, i8 noundef zeroext %337, i8 noundef signext 2, i8 noundef signext %343), !dbg !1751
  %344 = load ptr, ptr %3, align 8, !dbg !1752
  %345 = load i8, ptr %4, align 1, !dbg !1753
  call void @_send_negotiate(ptr noundef %344, i8 noundef zeroext -4, i8 noundef zeroext %345), !dbg !1754
  store i32 5, ptr %5, align 8, !dbg !1755
  %346 = load i8, ptr %4, align 1, !dbg !1755
  %347 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1755
  store i8 %346, ptr %347, align 4, !dbg !1755
  %348 = load ptr, ptr %3, align 8, !dbg !1755
  %349 = getelementptr inbounds %struct.telnet_t, ptr %348, i32 0, i32 2, !dbg !1755
  %350 = load ptr, ptr %349, align 8, !dbg !1755
  %351 = load ptr, ptr %3, align 8, !dbg !1755
  %352 = load ptr, ptr %3, align 8, !dbg !1755
  %353 = getelementptr inbounds %struct.telnet_t, ptr %352, i32 0, i32 0, !dbg !1755
  %354 = load ptr, ptr %353, align 8, !dbg !1755
  call void %350(ptr noundef %351, ptr noundef %5, ptr noundef %354), !dbg !1755
  br label %355, !dbg !1756

355:                                              ; preds = %243, %335, %317, %297, %277, %276
  br label %429, !dbg !1757

356:                                              ; preds = %59
  %357 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1758
  %358 = load i8, ptr %357, align 1, !dbg !1758
  %359 = zext i8 %358 to i32, !dbg !1758
  %360 = and i32 %359, 15, !dbg !1758
  switch i32 %360, label %428 [
    i32 1, label %361
    i32 2, label %381
    i32 4, label %399
    i32 3, label %419
    i32 5, label %419
  ], !dbg !1759

361:                                              ; preds = %356
  %362 = load ptr, ptr %3, align 8, !dbg !1760
  %363 = load i8, ptr %4, align 1, !dbg !1762
  %364 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1763
  %365 = load i8, ptr %364, align 1, !dbg !1763
  %366 = zext i8 %365 to i32, !dbg !1763
  %367 = and i32 %366, 240, !dbg !1763
  %368 = ashr i32 %367, 4, !dbg !1763
  %369 = trunc i32 %368 to i8, !dbg !1763
  call void @_set_rfc1143(ptr noundef %362, i8 noundef zeroext %363, i8 noundef signext 0, i8 noundef signext %369), !dbg !1764
  %370 = load ptr, ptr %3, align 8, !dbg !1765
  %371 = load i8, ptr %4, align 1, !dbg !1766
  call void @_send_negotiate(ptr noundef %370, i8 noundef zeroext -4, i8 noundef zeroext %371), !dbg !1767
  store i32 6, ptr %5, align 8, !dbg !1768
  %372 = load i8, ptr %4, align 1, !dbg !1768
  %373 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1768
  store i8 %372, ptr %373, align 4, !dbg !1768
  %374 = load ptr, ptr %3, align 8, !dbg !1768
  %375 = getelementptr inbounds %struct.telnet_t, ptr %374, i32 0, i32 2, !dbg !1768
  %376 = load ptr, ptr %375, align 8, !dbg !1768
  %377 = load ptr, ptr %3, align 8, !dbg !1768
  %378 = load ptr, ptr %3, align 8, !dbg !1768
  %379 = getelementptr inbounds %struct.telnet_t, ptr %378, i32 0, i32 0, !dbg !1768
  %380 = load ptr, ptr %379, align 8, !dbg !1768
  call void %376(ptr noundef %377, ptr noundef %5, ptr noundef %380), !dbg !1768
  br label %428, !dbg !1769

381:                                              ; preds = %356
  %382 = load ptr, ptr %3, align 8, !dbg !1770
  %383 = load i8, ptr %4, align 1, !dbg !1771
  %384 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1772
  %385 = load i8, ptr %384, align 1, !dbg !1772
  %386 = zext i8 %385 to i32, !dbg !1772
  %387 = and i32 %386, 240, !dbg !1772
  %388 = ashr i32 %387, 4, !dbg !1772
  %389 = trunc i32 %388 to i8, !dbg !1772
  call void @_set_rfc1143(ptr noundef %382, i8 noundef zeroext %383, i8 noundef signext 0, i8 noundef signext %389), !dbg !1773
  store i32 4, ptr %5, align 8, !dbg !1774
  %390 = load i8, ptr %4, align 1, !dbg !1774
  %391 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1774
  store i8 %390, ptr %391, align 4, !dbg !1774
  %392 = load ptr, ptr %3, align 8, !dbg !1774
  %393 = getelementptr inbounds %struct.telnet_t, ptr %392, i32 0, i32 2, !dbg !1774
  %394 = load ptr, ptr %393, align 8, !dbg !1774
  %395 = load ptr, ptr %3, align 8, !dbg !1774
  %396 = load ptr, ptr %3, align 8, !dbg !1774
  %397 = getelementptr inbounds %struct.telnet_t, ptr %396, i32 0, i32 0, !dbg !1774
  %398 = load ptr, ptr %397, align 8, !dbg !1774
  call void %394(ptr noundef %395, ptr noundef %5, ptr noundef %398), !dbg !1774
  br label %428, !dbg !1775

399:                                              ; preds = %356
  %400 = load ptr, ptr %3, align 8, !dbg !1776
  %401 = load i8, ptr %4, align 1, !dbg !1777
  %402 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1778
  %403 = load i8, ptr %402, align 1, !dbg !1778
  %404 = zext i8 %403 to i32, !dbg !1778
  %405 = and i32 %404, 240, !dbg !1778
  %406 = ashr i32 %405, 4, !dbg !1778
  %407 = trunc i32 %406 to i8, !dbg !1778
  call void @_set_rfc1143(ptr noundef %400, i8 noundef zeroext %401, i8 noundef signext 3, i8 noundef signext %407), !dbg !1779
  %408 = load ptr, ptr %3, align 8, !dbg !1780
  %409 = load i8, ptr %4, align 1, !dbg !1781
  call void @_send_negotiate(ptr noundef %408, i8 noundef zeroext -5, i8 noundef zeroext %409), !dbg !1782
  store i32 3, ptr %5, align 8, !dbg !1783
  %410 = load i8, ptr %4, align 1, !dbg !1783
  %411 = getelementptr inbounds %struct.negotiate_t, ptr %5, i32 0, i32 1, !dbg !1783
  store i8 %410, ptr %411, align 4, !dbg !1783
  %412 = load ptr, ptr %3, align 8, !dbg !1783
  %413 = getelementptr inbounds %struct.telnet_t, ptr %412, i32 0, i32 2, !dbg !1783
  %414 = load ptr, ptr %413, align 8, !dbg !1783
  %415 = load ptr, ptr %3, align 8, !dbg !1783
  %416 = load ptr, ptr %3, align 8, !dbg !1783
  %417 = getelementptr inbounds %struct.telnet_t, ptr %416, i32 0, i32 0, !dbg !1783
  %418 = load ptr, ptr %417, align 8, !dbg !1783
  call void %414(ptr noundef %415, ptr noundef %5, ptr noundef %418), !dbg !1783
  br label %428, !dbg !1784

419:                                              ; preds = %356, %356
  %420 = load ptr, ptr %3, align 8, !dbg !1785
  %421 = load i8, ptr %4, align 1, !dbg !1786
  %422 = getelementptr inbounds %struct.telnet_rfc1143_t, ptr %6, i32 0, i32 1, !dbg !1787
  %423 = load i8, ptr %422, align 1, !dbg !1787
  %424 = zext i8 %423 to i32, !dbg !1787
  %425 = and i32 %424, 240, !dbg !1787
  %426 = ashr i32 %425, 4, !dbg !1787
  %427 = trunc i32 %426 to i8, !dbg !1787
  call void @_set_rfc1143(ptr noundef %420, i8 noundef zeroext %421, i8 noundef signext 0, i8 noundef signext %427), !dbg !1788
  br label %428, !dbg !1789

428:                                              ; preds = %356, %419, %399, %381, %361
  br label %429, !dbg !1790

429:                                              ; preds = %58, %59, %428, %355, %242, %174
  ret void, !dbg !1791
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_buffer_byte(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !1792 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1795, metadata !DIExpression()), !dbg !1796
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1797, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1799, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1801, metadata !DIExpression()), !dbg !1802
  %8 = load ptr, ptr %4, align 8, !dbg !1803
  %9 = getelementptr inbounds %struct.telnet_t, ptr %8, i32 0, i32 6, !dbg !1805
  %10 = load i64, ptr %9, align 8, !dbg !1805
  %11 = load ptr, ptr %4, align 8, !dbg !1806
  %12 = getelementptr inbounds %struct.telnet_t, ptr %11, i32 0, i32 5, !dbg !1807
  %13 = load i64, ptr %12, align 8, !dbg !1807
  %14 = icmp eq i64 %10, %13, !dbg !1808
  br i1 %14, label %15, label %62, !dbg !1809

15:                                               ; preds = %2
  store i64 0, ptr %7, align 8, !dbg !1810
  br label %16, !dbg !1813

16:                                               ; preds = %29, %15
  %17 = load i64, ptr %7, align 8, !dbg !1814
  %18 = icmp ne i64 %17, 5, !dbg !1816
  br i1 %18, label %19, label %32, !dbg !1817

19:                                               ; preds = %16
  %20 = load i64, ptr %7, align 8, !dbg !1818
  %21 = getelementptr inbounds [5 x i64], ptr @_buffer_sizes, i64 0, i64 %20, !dbg !1821
  %22 = load i64, ptr %21, align 8, !dbg !1821
  %23 = load ptr, ptr %4, align 8, !dbg !1822
  %24 = getelementptr inbounds %struct.telnet_t, ptr %23, i32 0, i32 5, !dbg !1823
  %25 = load i64, ptr %24, align 8, !dbg !1823
  %26 = icmp eq i64 %22, %25, !dbg !1824
  br i1 %26, label %27, label %28, !dbg !1825

27:                                               ; preds = %19
  br label %32, !dbg !1826

28:                                               ; preds = %19
  br label %29, !dbg !1828

29:                                               ; preds = %28
  %30 = load i64, ptr %7, align 8, !dbg !1829
  %31 = add i64 %30, 1, !dbg !1829
  store i64 %31, ptr %7, align 8, !dbg !1829
  br label %16, !dbg !1830, !llvm.loop !1831

32:                                               ; preds = %27, %16
  %33 = load i64, ptr %7, align 8, !dbg !1833
  %34 = icmp uge i64 %33, 4, !dbg !1835
  br i1 %34, label %35, label %38, !dbg !1836

35:                                               ; preds = %32
  %36 = load ptr, ptr %4, align 8, !dbg !1837
  %37 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %36, i32 noundef 919, ptr noundef @__func__._buffer_byte, i32 noundef 3, i32 noundef 0, ptr noundef @.str.4), !dbg !1839
  store i32 3, ptr %3, align 4, !dbg !1840
  br label %72, !dbg !1840

38:                                               ; preds = %32
  %39 = load ptr, ptr %4, align 8, !dbg !1841
  %40 = getelementptr inbounds %struct.telnet_t, ptr %39, i32 0, i32 4, !dbg !1842
  %41 = load ptr, ptr %40, align 8, !dbg !1842
  %42 = load i64, ptr %7, align 8, !dbg !1843
  %43 = add i64 %42, 1, !dbg !1844
  %44 = getelementptr inbounds [5 x i64], ptr @_buffer_sizes, i64 0, i64 %43, !dbg !1845
  %45 = load i64, ptr %44, align 8, !dbg !1845
  %46 = call ptr @realloc(ptr noundef %41, i64 noundef %45) #13, !dbg !1846
  store ptr %46, ptr %6, align 8, !dbg !1847
  %47 = load ptr, ptr %6, align 8, !dbg !1848
  %48 = icmp eq ptr %47, null, !dbg !1850
  br i1 %48, label %49, label %52, !dbg !1851

49:                                               ; preds = %38
  %50 = load ptr, ptr %4, align 8, !dbg !1852
  %51 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %50, i32 noundef 927, ptr noundef @__func__._buffer_byte, i32 noundef 2, i32 noundef 0, ptr noundef @.str.5), !dbg !1854
  store i32 2, ptr %3, align 4, !dbg !1855
  br label %72, !dbg !1855

52:                                               ; preds = %38
  %53 = load ptr, ptr %6, align 8, !dbg !1856
  %54 = load ptr, ptr %4, align 8, !dbg !1857
  %55 = getelementptr inbounds %struct.telnet_t, ptr %54, i32 0, i32 4, !dbg !1858
  store ptr %53, ptr %55, align 8, !dbg !1859
  %56 = load i64, ptr %7, align 8, !dbg !1860
  %57 = add i64 %56, 1, !dbg !1861
  %58 = getelementptr inbounds [5 x i64], ptr @_buffer_sizes, i64 0, i64 %57, !dbg !1862
  %59 = load i64, ptr %58, align 8, !dbg !1862
  %60 = load ptr, ptr %4, align 8, !dbg !1863
  %61 = getelementptr inbounds %struct.telnet_t, ptr %60, i32 0, i32 5, !dbg !1864
  store i64 %59, ptr %61, align 8, !dbg !1865
  br label %62, !dbg !1866

62:                                               ; preds = %52, %2
  %63 = load i8, ptr %5, align 1, !dbg !1867
  %64 = load ptr, ptr %4, align 8, !dbg !1868
  %65 = getelementptr inbounds %struct.telnet_t, ptr %64, i32 0, i32 4, !dbg !1869
  %66 = load ptr, ptr %65, align 8, !dbg !1869
  %67 = load ptr, ptr %4, align 8, !dbg !1870
  %68 = getelementptr inbounds %struct.telnet_t, ptr %67, i32 0, i32 6, !dbg !1871
  %69 = load i64, ptr %68, align 8, !dbg !1872
  %70 = add i64 %69, 1, !dbg !1872
  store i64 %70, ptr %68, align 8, !dbg !1872
  %71 = getelementptr inbounds i8, ptr %66, i64 %69, !dbg !1868
  store i8 %63, ptr %71, align 1, !dbg !1873
  store i32 0, ptr %3, align 4, !dbg !1874
  br label %72, !dbg !1874

72:                                               ; preds = %62, %49, %35
  %73 = load i32, ptr %3, align 4, !dbg !1875
  ret i32 %73, !dbg !1875
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_subnegotiate(ptr noundef %0) #0 !dbg !1876 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %union.telnet_event_t, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1879, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1881, metadata !DIExpression()), !dbg !1882
  store i32 7, ptr %4, align 8, !dbg !1883
  %5 = load ptr, ptr %3, align 8, !dbg !1884
  %6 = getelementptr inbounds %struct.telnet_t, ptr %5, i32 0, i32 9, !dbg !1885
  %7 = load i8, ptr %6, align 1, !dbg !1885
  %8 = getelementptr inbounds %struct.subnegotiate_t, ptr %4, i32 0, i32 3, !dbg !1886
  store i8 %7, ptr %8, align 8, !dbg !1887
  %9 = load ptr, ptr %3, align 8, !dbg !1888
  %10 = getelementptr inbounds %struct.telnet_t, ptr %9, i32 0, i32 4, !dbg !1889
  %11 = load ptr, ptr %10, align 8, !dbg !1889
  %12 = getelementptr inbounds %struct.subnegotiate_t, ptr %4, i32 0, i32 1, !dbg !1890
  store ptr %11, ptr %12, align 8, !dbg !1891
  %13 = load ptr, ptr %3, align 8, !dbg !1892
  %14 = getelementptr inbounds %struct.telnet_t, ptr %13, i32 0, i32 6, !dbg !1893
  %15 = load i64, ptr %14, align 8, !dbg !1893
  %16 = getelementptr inbounds %struct.subnegotiate_t, ptr %4, i32 0, i32 2, !dbg !1894
  store i64 %15, ptr %16, align 8, !dbg !1895
  %17 = load ptr, ptr %3, align 8, !dbg !1896
  %18 = getelementptr inbounds %struct.telnet_t, ptr %17, i32 0, i32 2, !dbg !1897
  %19 = load ptr, ptr %18, align 8, !dbg !1897
  %20 = load ptr, ptr %3, align 8, !dbg !1898
  %21 = load ptr, ptr %3, align 8, !dbg !1899
  %22 = getelementptr inbounds %struct.telnet_t, ptr %21, i32 0, i32 0, !dbg !1900
  %23 = load ptr, ptr %22, align 8, !dbg !1900
  call void %19(ptr noundef %20, ptr noundef %4, ptr noundef %23), !dbg !1896
  %24 = load ptr, ptr %3, align 8, !dbg !1901
  %25 = getelementptr inbounds %struct.telnet_t, ptr %24, i32 0, i32 9, !dbg !1902
  %26 = load i8, ptr %25, align 1, !dbg !1902
  %27 = zext i8 %26 to i32, !dbg !1901
  switch i32 %27, label %67 [
    i32 93, label %28
    i32 24, label %37
    i32 36, label %46
    i32 39, label %46
    i32 70, label %58
  ], !dbg !1903

28:                                               ; preds = %1
  %29 = load ptr, ptr %3, align 8, !dbg !1904
  %30 = load ptr, ptr %3, align 8, !dbg !1906
  %31 = getelementptr inbounds %struct.telnet_t, ptr %30, i32 0, i32 4, !dbg !1907
  %32 = load ptr, ptr %31, align 8, !dbg !1907
  %33 = load ptr, ptr %3, align 8, !dbg !1908
  %34 = getelementptr inbounds %struct.telnet_t, ptr %33, i32 0, i32 6, !dbg !1909
  %35 = load i64, ptr %34, align 8, !dbg !1909
  %36 = call i32 @_zmp_telnet(ptr noundef %29, ptr noundef %32, i64 noundef %35), !dbg !1910
  store i32 %36, ptr %2, align 4, !dbg !1911
  br label %68, !dbg !1911

37:                                               ; preds = %1
  %38 = load ptr, ptr %3, align 8, !dbg !1912
  %39 = load ptr, ptr %3, align 8, !dbg !1913
  %40 = getelementptr inbounds %struct.telnet_t, ptr %39, i32 0, i32 4, !dbg !1914
  %41 = load ptr, ptr %40, align 8, !dbg !1914
  %42 = load ptr, ptr %3, align 8, !dbg !1915
  %43 = getelementptr inbounds %struct.telnet_t, ptr %42, i32 0, i32 6, !dbg !1916
  %44 = load i64, ptr %43, align 8, !dbg !1916
  %45 = call i32 @_ttype_telnet(ptr noundef %38, ptr noundef %41, i64 noundef %44), !dbg !1917
  store i32 %45, ptr %2, align 4, !dbg !1918
  br label %68, !dbg !1918

46:                                               ; preds = %1, %1
  %47 = load ptr, ptr %3, align 8, !dbg !1919
  %48 = load ptr, ptr %3, align 8, !dbg !1920
  %49 = getelementptr inbounds %struct.telnet_t, ptr %48, i32 0, i32 9, !dbg !1921
  %50 = load i8, ptr %49, align 1, !dbg !1921
  %51 = load ptr, ptr %3, align 8, !dbg !1922
  %52 = getelementptr inbounds %struct.telnet_t, ptr %51, i32 0, i32 4, !dbg !1923
  %53 = load ptr, ptr %52, align 8, !dbg !1923
  %54 = load ptr, ptr %3, align 8, !dbg !1924
  %55 = getelementptr inbounds %struct.telnet_t, ptr %54, i32 0, i32 6, !dbg !1925
  %56 = load i64, ptr %55, align 8, !dbg !1925
  %57 = call i32 @_environ_telnet(ptr noundef %47, i8 noundef zeroext %50, ptr noundef %53, i64 noundef %56), !dbg !1926
  store i32 %57, ptr %2, align 4, !dbg !1927
  br label %68, !dbg !1927

58:                                               ; preds = %1
  %59 = load ptr, ptr %3, align 8, !dbg !1928
  %60 = load ptr, ptr %3, align 8, !dbg !1929
  %61 = getelementptr inbounds %struct.telnet_t, ptr %60, i32 0, i32 4, !dbg !1930
  %62 = load ptr, ptr %61, align 8, !dbg !1930
  %63 = load ptr, ptr %3, align 8, !dbg !1931
  %64 = getelementptr inbounds %struct.telnet_t, ptr %63, i32 0, i32 6, !dbg !1932
  %65 = load i64, ptr %64, align 8, !dbg !1932
  %66 = call i32 @_mssp_telnet(ptr noundef %59, ptr noundef %62, i64 noundef %65), !dbg !1933
  store i32 %66, ptr %2, align 4, !dbg !1934
  br label %68, !dbg !1934

67:                                               ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !1935
  br label %68, !dbg !1935

68:                                               ; preds = %67, %58, %46, %37, %28
  %69 = load i32, ptr %2, align 4, !dbg !1936
  ret i32 %69, !dbg !1936
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_check_telopt(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 !dbg !1937 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1940, metadata !DIExpression()), !dbg !1941
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1942, metadata !DIExpression()), !dbg !1943
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1944, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1946, metadata !DIExpression()), !dbg !1947
  %9 = load ptr, ptr %5, align 8, !dbg !1948
  %10 = getelementptr inbounds %struct.telnet_t, ptr %9, i32 0, i32 1, !dbg !1950
  %11 = load ptr, ptr %10, align 8, !dbg !1950
  %12 = icmp eq ptr %11, null, !dbg !1951
  br i1 %12, label %13, label %14, !dbg !1952

13:                                               ; preds = %3
  store i32 0, ptr %4, align 4, !dbg !1953
  br label %75, !dbg !1953

14:                                               ; preds = %3
  store i32 0, ptr %8, align 4, !dbg !1954
  br label %15, !dbg !1956

15:                                               ; preds = %71, %14
  %16 = load ptr, ptr %5, align 8, !dbg !1957
  %17 = getelementptr inbounds %struct.telnet_t, ptr %16, i32 0, i32 1, !dbg !1959
  %18 = load ptr, ptr %17, align 8, !dbg !1959
  %19 = load i32, ptr %8, align 4, !dbg !1960
  %20 = sext i32 %19 to i64, !dbg !1957
  %21 = getelementptr inbounds %struct.telnet_telopt_t, ptr %18, i64 %20, !dbg !1957
  %22 = getelementptr inbounds %struct.telnet_telopt_t, ptr %21, i32 0, i32 0, !dbg !1961
  %23 = load i16, ptr %22, align 2, !dbg !1961
  %24 = sext i16 %23 to i32, !dbg !1957
  %25 = icmp ne i32 %24, -1, !dbg !1962
  br i1 %25, label %26, label %74, !dbg !1963

26:                                               ; preds = %15
  %27 = load ptr, ptr %5, align 8, !dbg !1964
  %28 = getelementptr inbounds %struct.telnet_t, ptr %27, i32 0, i32 1, !dbg !1967
  %29 = load ptr, ptr %28, align 8, !dbg !1967
  %30 = load i32, ptr %8, align 4, !dbg !1968
  %31 = sext i32 %30 to i64, !dbg !1964
  %32 = getelementptr inbounds %struct.telnet_telopt_t, ptr %29, i64 %31, !dbg !1964
  %33 = getelementptr inbounds %struct.telnet_telopt_t, ptr %32, i32 0, i32 0, !dbg !1969
  %34 = load i16, ptr %33, align 2, !dbg !1969
  %35 = sext i16 %34 to i32, !dbg !1964
  %36 = load i8, ptr %6, align 1, !dbg !1970
  %37 = zext i8 %36 to i32, !dbg !1970
  %38 = icmp eq i32 %35, %37, !dbg !1971
  br i1 %38, label %39, label %70, !dbg !1972

39:                                               ; preds = %26
  %40 = load i32, ptr %7, align 4, !dbg !1973
  %41 = icmp ne i32 %40, 0, !dbg !1973
  br i1 %41, label %42, label %54, !dbg !1976

42:                                               ; preds = %39
  %43 = load ptr, ptr %5, align 8, !dbg !1977
  %44 = getelementptr inbounds %struct.telnet_t, ptr %43, i32 0, i32 1, !dbg !1978
  %45 = load ptr, ptr %44, align 8, !dbg !1978
  %46 = load i32, ptr %8, align 4, !dbg !1979
  %47 = sext i32 %46 to i64, !dbg !1977
  %48 = getelementptr inbounds %struct.telnet_telopt_t, ptr %45, i64 %47, !dbg !1977
  %49 = getelementptr inbounds %struct.telnet_telopt_t, ptr %48, i32 0, i32 1, !dbg !1980
  %50 = load i8, ptr %49, align 2, !dbg !1980
  %51 = zext i8 %50 to i32, !dbg !1977
  %52 = icmp eq i32 %51, 251, !dbg !1981
  br i1 %52, label %53, label %54, !dbg !1982

53:                                               ; preds = %42
  store i32 1, ptr %4, align 4, !dbg !1983
  br label %75, !dbg !1983

54:                                               ; preds = %42, %39
  %55 = load i32, ptr %7, align 4, !dbg !1984
  %56 = icmp ne i32 %55, 0, !dbg !1984
  br i1 %56, label %69, label %57, !dbg !1986

57:                                               ; preds = %54
  %58 = load ptr, ptr %5, align 8, !dbg !1987
  %59 = getelementptr inbounds %struct.telnet_t, ptr %58, i32 0, i32 1, !dbg !1988
  %60 = load ptr, ptr %59, align 8, !dbg !1988
  %61 = load i32, ptr %8, align 4, !dbg !1989
  %62 = sext i32 %61 to i64, !dbg !1987
  %63 = getelementptr inbounds %struct.telnet_telopt_t, ptr %60, i64 %62, !dbg !1987
  %64 = getelementptr inbounds %struct.telnet_telopt_t, ptr %63, i32 0, i32 2, !dbg !1990
  %65 = load i8, ptr %64, align 1, !dbg !1990
  %66 = zext i8 %65 to i32, !dbg !1987
  %67 = icmp eq i32 %66, 253, !dbg !1991
  br i1 %67, label %68, label %69, !dbg !1992

68:                                               ; preds = %57
  store i32 1, ptr %4, align 4, !dbg !1993
  br label %75, !dbg !1993

69:                                               ; preds = %57, %54
  store i32 0, ptr %4, align 4, !dbg !1994
  br label %75, !dbg !1994

70:                                               ; preds = %26
  br label %71, !dbg !1995

71:                                               ; preds = %70
  %72 = load i32, ptr %8, align 4, !dbg !1996
  %73 = add nsw i32 %72, 1, !dbg !1996
  store i32 %73, ptr %8, align 4, !dbg !1996
  br label %15, !dbg !1997, !llvm.loop !1998

74:                                               ; preds = %15
  store i32 0, ptr %4, align 4, !dbg !2000
  br label %75, !dbg !2000

75:                                               ; preds = %74, %69, %68, %53, %13
  %76 = load i32, ptr %4, align 4, !dbg !2001
  ret i32 %76, !dbg !2001
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_zmp_telnet(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !2002 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.telnet_event_t, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2005, metadata !DIExpression()), !dbg !2006
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2007, metadata !DIExpression()), !dbg !2008
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2009, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2011, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2013, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2015, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2017, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2019, metadata !DIExpression()), !dbg !2020
  %13 = load i64, ptr %7, align 8, !dbg !2021
  %14 = icmp eq i64 %13, 0, !dbg !2023
  br i1 %14, label %23, label %15, !dbg !2024

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8, !dbg !2025
  %17 = load i64, ptr %7, align 8, !dbg !2026
  %18 = sub i64 %17, 1, !dbg !2027
  %19 = getelementptr inbounds i8, ptr %16, i64 %18, !dbg !2025
  %20 = load i8, ptr %19, align 1, !dbg !2025
  %21 = sext i8 %20 to i32, !dbg !2025
  %22 = icmp ne i32 %21, 0, !dbg !2028
  br i1 %22, label %23, label %26, !dbg !2029

23:                                               ; preds = %15, %3
  %24 = load ptr, ptr %5, align 8, !dbg !2030
  %25 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %24, i32 noundef 722, ptr noundef @__func__._zmp_telnet, i32 noundef 4, i32 noundef 0, ptr noundef @.str.6), !dbg !2032
  store i32 0, ptr %4, align 4, !dbg !2033
  br label %85, !dbg !2033

26:                                               ; preds = %15
  store i64 0, ptr %12, align 8, !dbg !2034
  %27 = load ptr, ptr %6, align 8, !dbg !2036
  store ptr %27, ptr %10, align 8, !dbg !2037
  br label %28, !dbg !2038

28:                                               ; preds = %40, %26
  %29 = load ptr, ptr %10, align 8, !dbg !2039
  %30 = load ptr, ptr %6, align 8, !dbg !2041
  %31 = load i64, ptr %7, align 8, !dbg !2042
  %32 = getelementptr inbounds i8, ptr %30, i64 %31, !dbg !2043
  %33 = icmp ne ptr %29, %32, !dbg !2044
  br i1 %33, label %34, label %43, !dbg !2045

34:                                               ; preds = %28
  %35 = load ptr, ptr %10, align 8, !dbg !2046
  %36 = call i64 @strlen(ptr noundef %35) #16, !dbg !2047
  %37 = add i64 %36, 1, !dbg !2048
  %38 = load ptr, ptr %10, align 8, !dbg !2049
  %39 = getelementptr inbounds i8, ptr %38, i64 %37, !dbg !2049
  store ptr %39, ptr %10, align 8, !dbg !2049
  br label %40, !dbg !2050

40:                                               ; preds = %34
  %41 = load i64, ptr %12, align 8, !dbg !2051
  %42 = add i64 %41, 1, !dbg !2051
  store i64 %42, ptr %12, align 8, !dbg !2051
  br label %28, !dbg !2052, !llvm.loop !2053

43:                                               ; preds = %28
  %44 = load i64, ptr %12, align 8, !dbg !2055
  %45 = call noalias ptr @calloc(i64 noundef %44, i64 noundef 8) #11, !dbg !2057
  store ptr %45, ptr %9, align 8, !dbg !2058
  %46 = icmp eq ptr %45, null, !dbg !2059
  br i1 %46, label %47, label %53, !dbg !2060

47:                                               ; preds = %43
  %48 = load ptr, ptr %5, align 8, !dbg !2061
  %49 = call ptr @__errno_location() #14, !dbg !2063
  %50 = load i32, ptr %49, align 4, !dbg !2063
  %51 = call ptr @strerror(i32 noundef %50) #12, !dbg !2064
  %52 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %48, i32 noundef 733, ptr noundef @__func__._zmp_telnet, i32 noundef 2, i32 noundef 0, ptr noundef @.str.7, ptr noundef %51), !dbg !2065
  store i32 0, ptr %4, align 4, !dbg !2066
  br label %85, !dbg !2066

53:                                               ; preds = %43
  store i64 0, ptr %11, align 8, !dbg !2067
  %54 = load ptr, ptr %6, align 8, !dbg !2069
  store ptr %54, ptr %10, align 8, !dbg !2070
  br label %55, !dbg !2071

55:                                               ; preds = %69, %53
  %56 = load i64, ptr %11, align 8, !dbg !2072
  %57 = load i64, ptr %12, align 8, !dbg !2074
  %58 = icmp ne i64 %56, %57, !dbg !2075
  br i1 %58, label %59, label %72, !dbg !2076

59:                                               ; preds = %55
  %60 = load ptr, ptr %10, align 8, !dbg !2077
  %61 = load ptr, ptr %9, align 8, !dbg !2079
  %62 = load i64, ptr %11, align 8, !dbg !2080
  %63 = getelementptr inbounds ptr, ptr %61, i64 %62, !dbg !2079
  store ptr %60, ptr %63, align 8, !dbg !2081
  %64 = load ptr, ptr %10, align 8, !dbg !2082
  %65 = call i64 @strlen(ptr noundef %64) #16, !dbg !2083
  %66 = add i64 %65, 1, !dbg !2084
  %67 = load ptr, ptr %10, align 8, !dbg !2085
  %68 = getelementptr inbounds i8, ptr %67, i64 %66, !dbg !2085
  store ptr %68, ptr %10, align 8, !dbg !2085
  br label %69, !dbg !2086

69:                                               ; preds = %59
  %70 = load i64, ptr %11, align 8, !dbg !2087
  %71 = add i64 %70, 1, !dbg !2087
  store i64 %71, ptr %11, align 8, !dbg !2087
  br label %55, !dbg !2088, !llvm.loop !2089

72:                                               ; preds = %55
  store i32 9, ptr %8, align 8, !dbg !2091
  %73 = load ptr, ptr %9, align 8, !dbg !2092
  %74 = getelementptr inbounds %struct.zmp_t, ptr %8, i32 0, i32 1, !dbg !2093
  store ptr %73, ptr %74, align 8, !dbg !2094
  %75 = load i64, ptr %12, align 8, !dbg !2095
  %76 = getelementptr inbounds %struct.zmp_t, ptr %8, i32 0, i32 2, !dbg !2096
  store i64 %75, ptr %76, align 8, !dbg !2097
  %77 = load ptr, ptr %5, align 8, !dbg !2098
  %78 = getelementptr inbounds %struct.telnet_t, ptr %77, i32 0, i32 2, !dbg !2099
  %79 = load ptr, ptr %78, align 8, !dbg !2099
  %80 = load ptr, ptr %5, align 8, !dbg !2100
  %81 = load ptr, ptr %5, align 8, !dbg !2101
  %82 = getelementptr inbounds %struct.telnet_t, ptr %81, i32 0, i32 0, !dbg !2102
  %83 = load ptr, ptr %82, align 8, !dbg !2102
  call void %79(ptr noundef %80, ptr noundef %8, ptr noundef %83), !dbg !2098
  %84 = load ptr, ptr %9, align 8, !dbg !2103
  call void @free(ptr noundef %84) #12, !dbg !2104
  store i32 0, ptr %4, align 4, !dbg !2105
  br label %85, !dbg !2105

85:                                               ; preds = %72, %47, %23
  %86 = load i32, ptr %4, align 4, !dbg !2106
  ret i32 %86, !dbg !2106
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ttype_telnet(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !2107 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.telnet_event_t, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2108, metadata !DIExpression()), !dbg !2109
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2110, metadata !DIExpression()), !dbg !2111
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2112, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2114, metadata !DIExpression()), !dbg !2115
  %10 = load i64, ptr %7, align 8, !dbg !2116
  %11 = icmp eq i64 %10, 0, !dbg !2118
  br i1 %11, label %12, label %15, !dbg !2119

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !dbg !2120
  %14 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %13, i32 noundef 761, ptr noundef @__func__._ttype_telnet, i32 noundef 4, i32 noundef 0, ptr noundef @.str.8), !dbg !2122
  store i32 0, ptr %4, align 4, !dbg !2123
  br label %78, !dbg !2123

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8, !dbg !2124
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !2124
  %18 = load i8, ptr %17, align 1, !dbg !2124
  %19 = sext i8 %18 to i32, !dbg !2124
  %20 = icmp ne i32 %19, 0, !dbg !2126
  br i1 %20, label %21, label %30, !dbg !2127

21:                                               ; preds = %15
  %22 = load ptr, ptr %6, align 8, !dbg !2128
  %23 = getelementptr inbounds i8, ptr %22, i64 0, !dbg !2128
  %24 = load i8, ptr %23, align 1, !dbg !2128
  %25 = sext i8 %24 to i32, !dbg !2128
  %26 = icmp ne i32 %25, 1, !dbg !2129
  br i1 %26, label %27, label %30, !dbg !2130

27:                                               ; preds = %21
  %28 = load ptr, ptr %5, align 8, !dbg !2131
  %29 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %28, i32 noundef 769, ptr noundef @__func__._ttype_telnet, i32 noundef 4, i32 noundef 0, ptr noundef @.str.9), !dbg !2133
  store i32 0, ptr %4, align 4, !dbg !2134
  br label %78, !dbg !2134

30:                                               ; preds = %21, %15
  %31 = load ptr, ptr %6, align 8, !dbg !2135
  %32 = getelementptr inbounds i8, ptr %31, i64 0, !dbg !2135
  %33 = load i8, ptr %32, align 1, !dbg !2135
  %34 = sext i8 %33 to i32, !dbg !2135
  %35 = icmp eq i32 %34, 0, !dbg !2137
  br i1 %35, label %36, label %67, !dbg !2138

36:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2139, metadata !DIExpression()), !dbg !2141
  %37 = load i64, ptr %7, align 8, !dbg !2142
  %38 = call noalias ptr @malloc(i64 noundef %37) #15, !dbg !2144
  store ptr %38, ptr %9, align 8, !dbg !2145
  %39 = icmp eq ptr %38, null, !dbg !2146
  br i1 %39, label %40, label %46, !dbg !2147

40:                                               ; preds = %36
  %41 = load ptr, ptr %5, align 8, !dbg !2148
  %42 = call ptr @__errno_location() #14, !dbg !2150
  %43 = load i32, ptr %42, align 4, !dbg !2150
  %44 = call ptr @strerror(i32 noundef %43) #12, !dbg !2151
  %45 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %41, i32 noundef 780, ptr noundef @__func__._ttype_telnet, i32 noundef 2, i32 noundef 0, ptr noundef @.str, ptr noundef %44), !dbg !2152
  store i32 0, ptr %4, align 4, !dbg !2153
  br label %78, !dbg !2153

46:                                               ; preds = %36
  %47 = load ptr, ptr %9, align 8, !dbg !2154
  %48 = load ptr, ptr %6, align 8, !dbg !2155
  %49 = getelementptr inbounds i8, ptr %48, i64 1, !dbg !2156
  %50 = load i64, ptr %7, align 8, !dbg !2157
  %51 = sub i64 %50, 1, !dbg !2158
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %47, ptr align 1 %49, i64 %51, i1 false), !dbg !2159
  %52 = load ptr, ptr %9, align 8, !dbg !2160
  %53 = load i64, ptr %7, align 8, !dbg !2161
  %54 = sub i64 %53, 1, !dbg !2162
  %55 = getelementptr inbounds i8, ptr %52, i64 %54, !dbg !2160
  store i8 0, ptr %55, align 1, !dbg !2163
  store i32 10, ptr %8, align 8, !dbg !2164
  %56 = getelementptr inbounds %struct.ttype_t, ptr %8, i32 0, i32 1, !dbg !2165
  store i8 0, ptr %56, align 4, !dbg !2166
  %57 = load ptr, ptr %9, align 8, !dbg !2167
  %58 = getelementptr inbounds %struct.ttype_t, ptr %8, i32 0, i32 2, !dbg !2168
  store ptr %57, ptr %58, align 8, !dbg !2169
  %59 = load ptr, ptr %5, align 8, !dbg !2170
  %60 = getelementptr inbounds %struct.telnet_t, ptr %59, i32 0, i32 2, !dbg !2171
  %61 = load ptr, ptr %60, align 8, !dbg !2171
  %62 = load ptr, ptr %5, align 8, !dbg !2172
  %63 = load ptr, ptr %5, align 8, !dbg !2173
  %64 = getelementptr inbounds %struct.telnet_t, ptr %63, i32 0, i32 0, !dbg !2174
  %65 = load ptr, ptr %64, align 8, !dbg !2174
  call void %61(ptr noundef %62, ptr noundef %8, ptr noundef %65), !dbg !2170
  %66 = load ptr, ptr %9, align 8, !dbg !2175
  call void @free(ptr noundef %66) #12, !dbg !2176
  br label %77, !dbg !2177

67:                                               ; preds = %30
  store i32 10, ptr %8, align 8, !dbg !2178
  %68 = getelementptr inbounds %struct.ttype_t, ptr %8, i32 0, i32 1, !dbg !2180
  store i8 1, ptr %68, align 4, !dbg !2181
  %69 = getelementptr inbounds %struct.ttype_t, ptr %8, i32 0, i32 2, !dbg !2182
  store ptr null, ptr %69, align 8, !dbg !2183
  %70 = load ptr, ptr %5, align 8, !dbg !2184
  %71 = getelementptr inbounds %struct.telnet_t, ptr %70, i32 0, i32 2, !dbg !2185
  %72 = load ptr, ptr %71, align 8, !dbg !2185
  %73 = load ptr, ptr %5, align 8, !dbg !2186
  %74 = load ptr, ptr %5, align 8, !dbg !2187
  %75 = getelementptr inbounds %struct.telnet_t, ptr %74, i32 0, i32 0, !dbg !2188
  %76 = load ptr, ptr %75, align 8, !dbg !2188
  call void %72(ptr noundef %73, ptr noundef %8, ptr noundef %76), !dbg !2184
  br label %77

77:                                               ; preds = %67, %46
  store i32 0, ptr %4, align 4, !dbg !2189
  br label %78, !dbg !2189

78:                                               ; preds = %77, %40, %27, %12
  %79 = load i32, ptr %4, align 4, !dbg !2190
  ret i32 %79, !dbg !2190
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_environ_telnet(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i64 noundef %3) #0 !dbg !2191 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.telnet_event_t, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2194, metadata !DIExpression()), !dbg !2195
  store i8 %1, ptr %7, align 1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2196, metadata !DIExpression()), !dbg !2197
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2198, metadata !DIExpression()), !dbg !2199
  store i64 %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2200, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2202, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2204, metadata !DIExpression()), !dbg !2205
  store ptr null, ptr %11, align 8, !dbg !2205
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2206, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2208, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2210, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2212, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2214, metadata !DIExpression()), !dbg !2215
  %17 = load i64, ptr %9, align 8, !dbg !2216
  %18 = icmp eq i64 %17, 0, !dbg !2218
  br i1 %18, label %19, label %20, !dbg !2219

19:                                               ; preds = %4
  store i32 0, ptr %5, align 4, !dbg !2220
  br label %270, !dbg !2220

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !dbg !2222
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !2222
  %23 = load i8, ptr %22, align 1, !dbg !2222
  %24 = sext i8 %23 to i32, !dbg !2224
  %25 = icmp ne i32 %24, 1, !dbg !2225
  br i1 %25, label %26, label %43, !dbg !2226

26:                                               ; preds = %20
  %27 = load ptr, ptr %8, align 8, !dbg !2227
  %28 = getelementptr inbounds i8, ptr %27, i64 0, !dbg !2227
  %29 = load i8, ptr %28, align 1, !dbg !2227
  %30 = sext i8 %29 to i32, !dbg !2228
  %31 = icmp ne i32 %30, 0, !dbg !2229
  br i1 %31, label %32, label %43, !dbg !2230

32:                                               ; preds = %26
  %33 = load ptr, ptr %8, align 8, !dbg !2231
  %34 = getelementptr inbounds i8, ptr %33, i64 0, !dbg !2231
  %35 = load i8, ptr %34, align 1, !dbg !2231
  %36 = sext i8 %35 to i32, !dbg !2232
  %37 = icmp ne i32 %36, 2, !dbg !2233
  br i1 %37, label %38, label %43, !dbg !2234

38:                                               ; preds = %32
  %39 = load ptr, ptr %6, align 8, !dbg !2235
  %40 = load i8, ptr %7, align 1, !dbg !2237
  %41 = zext i8 %40 to i32, !dbg !2237
  %42 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %39, i32 noundef 509, ptr noundef @__func__._environ_telnet, i32 noundef 4, i32 noundef 0, ptr noundef @.str.10, i32 noundef %41), !dbg !2238
  store i32 0, ptr %5, align 4, !dbg !2239
  br label %270, !dbg !2239

43:                                               ; preds = %32, %26, %20
  %44 = load ptr, ptr %8, align 8, !dbg !2240
  %45 = getelementptr inbounds i8, ptr %44, i64 0, !dbg !2240
  %46 = load i8, ptr %45, align 1, !dbg !2240
  %47 = getelementptr inbounds %struct.environ_t, ptr %10, i32 0, i32 3, !dbg !2241
  store i8 %46, ptr %47, align 8, !dbg !2242
  %48 = load i64, ptr %9, align 8, !dbg !2243
  %49 = icmp eq i64 %48, 1, !dbg !2245
  br i1 %49, label %50, label %60, !dbg !2246

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.environ_t, ptr %10, i32 0, i32 1, !dbg !2247
  store ptr null, ptr %51, align 8, !dbg !2249
  %52 = getelementptr inbounds %struct.environ_t, ptr %10, i32 0, i32 2, !dbg !2250
  store i64 0, ptr %52, align 8, !dbg !2251
  store i32 11, ptr %10, align 8, !dbg !2252
  %53 = load ptr, ptr %6, align 8, !dbg !2253
  %54 = getelementptr inbounds %struct.telnet_t, ptr %53, i32 0, i32 2, !dbg !2254
  %55 = load ptr, ptr %54, align 8, !dbg !2254
  %56 = load ptr, ptr %6, align 8, !dbg !2255
  %57 = load ptr, ptr %6, align 8, !dbg !2256
  %58 = getelementptr inbounds %struct.telnet_t, ptr %57, i32 0, i32 0, !dbg !2257
  %59 = load ptr, ptr %58, align 8, !dbg !2257
  call void %55(ptr noundef %56, ptr noundef %10, ptr noundef %59), !dbg !2253
  store i32 1, ptr %5, align 4, !dbg !2258
  br label %270, !dbg !2258

60:                                               ; preds = %43
  %61 = load ptr, ptr %8, align 8, !dbg !2259
  %62 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !2259
  %63 = load i8, ptr %62, align 1, !dbg !2259
  %64 = sext i8 %63 to i32, !dbg !2261
  %65 = icmp ne i32 %64, 0, !dbg !2262
  br i1 %65, label %66, label %77, !dbg !2263

66:                                               ; preds = %60
  %67 = load ptr, ptr %8, align 8, !dbg !2264
  %68 = getelementptr inbounds i8, ptr %67, i64 1, !dbg !2264
  %69 = load i8, ptr %68, align 1, !dbg !2264
  %70 = sext i8 %69 to i32, !dbg !2265
  %71 = icmp ne i32 %70, 3, !dbg !2266
  br i1 %71, label %72, label %77, !dbg !2267

72:                                               ; preds = %66
  %73 = load ptr, ptr %6, align 8, !dbg !2268
  %74 = load i8, ptr %7, align 1, !dbg !2270
  %75 = zext i8 %74 to i32, !dbg !2270
  %76 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %73, i32 noundef 533, ptr noundef @__func__._environ_telnet, i32 noundef 4, i32 noundef 0, ptr noundef @.str.11, i32 noundef %75), !dbg !2271
  store i32 0, ptr %5, align 4, !dbg !2272
  br label %270, !dbg !2272

77:                                               ; preds = %66, %60
  %78 = load ptr, ptr %8, align 8, !dbg !2273
  %79 = load i64, ptr %9, align 8, !dbg !2275
  %80 = sub i64 %79, 1, !dbg !2276
  %81 = getelementptr inbounds i8, ptr %78, i64 %80, !dbg !2273
  %82 = load i8, ptr %81, align 1, !dbg !2273
  %83 = sext i8 %82 to i32, !dbg !2277
  %84 = icmp eq i32 %83, 2, !dbg !2278
  br i1 %84, label %85, label %90, !dbg !2279

85:                                               ; preds = %77
  %86 = load ptr, ptr %6, align 8, !dbg !2280
  %87 = load i8, ptr %7, align 1, !dbg !2282
  %88 = zext i8 %87 to i32, !dbg !2282
  %89 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %86, i32 noundef 540, ptr noundef @__func__._environ_telnet, i32 noundef 4, i32 noundef 0, ptr noundef @.str.12, i32 noundef %88), !dbg !2283
  store i32 0, ptr %5, align 4, !dbg !2284
  br label %270, !dbg !2284

90:                                               ; preds = %77
  store i64 0, ptr %16, align 8, !dbg !2285
  %91 = load ptr, ptr %8, align 8, !dbg !2286
  %92 = getelementptr inbounds i8, ptr %91, i64 1, !dbg !2288
  store ptr %92, ptr %12, align 8, !dbg !2289
  br label %93, !dbg !2290

93:                                               ; preds = %122, %90
  %94 = load ptr, ptr %12, align 8, !dbg !2291
  %95 = load ptr, ptr %8, align 8, !dbg !2293
  %96 = load i64, ptr %9, align 8, !dbg !2294
  %97 = getelementptr inbounds i8, ptr %95, i64 %96, !dbg !2295
  %98 = icmp ult ptr %94, %97, !dbg !2296
  br i1 %98, label %99, label %125, !dbg !2297

99:                                               ; preds = %93
  %100 = load ptr, ptr %12, align 8, !dbg !2298
  %101 = load i8, ptr %100, align 1, !dbg !2301
  %102 = sext i8 %101 to i32, !dbg !2301
  %103 = icmp eq i32 %102, 0, !dbg !2302
  br i1 %103, label %109, label %104, !dbg !2303

104:                                              ; preds = %99
  %105 = load ptr, ptr %12, align 8, !dbg !2304
  %106 = load i8, ptr %105, align 1, !dbg !2305
  %107 = sext i8 %106 to i32, !dbg !2305
  %108 = icmp eq i32 %107, 3, !dbg !2306
  br i1 %108, label %109, label %112, !dbg !2307

109:                                              ; preds = %104, %99
  %110 = load i64, ptr %16, align 8, !dbg !2308
  %111 = add i64 %110, 1, !dbg !2308
  store i64 %111, ptr %16, align 8, !dbg !2308
  br label %121, !dbg !2310

112:                                              ; preds = %104
  %113 = load ptr, ptr %12, align 8, !dbg !2311
  %114 = load i8, ptr %113, align 1, !dbg !2313
  %115 = sext i8 %114 to i32, !dbg !2313
  %116 = icmp eq i32 %115, 2, !dbg !2314
  br i1 %116, label %117, label %120, !dbg !2315

117:                                              ; preds = %112
  %118 = load ptr, ptr %12, align 8, !dbg !2316
  %119 = getelementptr inbounds i8, ptr %118, i32 1, !dbg !2316
  store ptr %119, ptr %12, align 8, !dbg !2316
  br label %120, !dbg !2318

120:                                              ; preds = %117, %112
  br label %121

121:                                              ; preds = %120, %109
  br label %122, !dbg !2319

122:                                              ; preds = %121
  %123 = load ptr, ptr %12, align 8, !dbg !2320
  %124 = getelementptr inbounds i8, ptr %123, i32 1, !dbg !2320
  store ptr %124, ptr %12, align 8, !dbg !2320
  br label %93, !dbg !2321, !llvm.loop !2322

125:                                              ; preds = %93
  %126 = load i64, ptr %16, align 8, !dbg !2324
  %127 = call noalias ptr @calloc(i64 noundef %126, i64 noundef 24) #11, !dbg !2326
  store ptr %127, ptr %11, align 8, !dbg !2327
  %128 = icmp eq ptr %127, null, !dbg !2328
  br i1 %128, label %129, label %135, !dbg !2329

129:                                              ; preds = %125
  %130 = load ptr, ptr %6, align 8, !dbg !2330
  %131 = call ptr @__errno_location() #14, !dbg !2332
  %132 = load i32, ptr %131, align 4, !dbg !2332
  %133 = call ptr @strerror(i32 noundef %132) #12, !dbg !2333
  %134 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %130, i32 noundef 559, ptr noundef @__func__._environ_telnet, i32 noundef 2, i32 noundef 0, ptr noundef @.str.7, ptr noundef %133), !dbg !2334
  store i32 0, ptr %5, align 4, !dbg !2335
  br label %270, !dbg !2335

135:                                              ; preds = %125
  %136 = load ptr, ptr %8, align 8, !dbg !2336
  store ptr %136, ptr %14, align 8, !dbg !2337
  %137 = load ptr, ptr %8, align 8, !dbg !2338
  %138 = getelementptr inbounds i8, ptr %137, i64 1, !dbg !2339
  store ptr %138, ptr %12, align 8, !dbg !2340
  store i64 0, ptr %15, align 8, !dbg !2341
  br label %139, !dbg !2343

139:                                              ; preds = %254, %135
  %140 = load i64, ptr %15, align 8, !dbg !2344
  %141 = load i64, ptr %16, align 8, !dbg !2346
  %142 = icmp ne i64 %140, %141, !dbg !2347
  br i1 %142, label %143, label %257, !dbg !2348

143:                                              ; preds = %139
  %144 = load ptr, ptr %12, align 8, !dbg !2349
  %145 = getelementptr inbounds i8, ptr %144, i32 1, !dbg !2349
  store ptr %145, ptr %12, align 8, !dbg !2349
  %146 = load i8, ptr %144, align 1, !dbg !2351
  %147 = load ptr, ptr %11, align 8, !dbg !2352
  %148 = load i64, ptr %15, align 8, !dbg !2353
  %149 = getelementptr inbounds %struct.telnet_environ_t, ptr %147, i64 %148, !dbg !2352
  %150 = getelementptr inbounds %struct.telnet_environ_t, ptr %149, i32 0, i32 0, !dbg !2354
  store i8 %146, ptr %150, align 8, !dbg !2355
  %151 = load ptr, ptr %14, align 8, !dbg !2356
  store ptr %151, ptr %13, align 8, !dbg !2357
  br label %152, !dbg !2358

152:                                              ; preds = %182, %143
  %153 = load ptr, ptr %12, align 8, !dbg !2359
  %154 = load ptr, ptr %8, align 8, !dbg !2360
  %155 = load i64, ptr %9, align 8, !dbg !2361
  %156 = getelementptr inbounds i8, ptr %154, i64 %155, !dbg !2362
  %157 = icmp ult ptr %153, %156, !dbg !2363
  br i1 %157, label %158, label %188, !dbg !2358

158:                                              ; preds = %152
  %159 = load ptr, ptr %12, align 8, !dbg !2364
  %160 = load i8, ptr %159, align 1, !dbg !2367
  %161 = sext i8 %160 to i32, !dbg !2368
  %162 = icmp eq i32 %161, 0, !dbg !2369
  br i1 %162, label %173, label %163, !dbg !2370

163:                                              ; preds = %158
  %164 = load ptr, ptr %12, align 8, !dbg !2371
  %165 = load i8, ptr %164, align 1, !dbg !2372
  %166 = sext i8 %165 to i32, !dbg !2373
  %167 = icmp eq i32 %166, 1, !dbg !2374
  br i1 %167, label %173, label %168, !dbg !2375

168:                                              ; preds = %163
  %169 = load ptr, ptr %12, align 8, !dbg !2376
  %170 = load i8, ptr %169, align 1, !dbg !2377
  %171 = sext i8 %170 to i32, !dbg !2378
  %172 = icmp eq i32 %171, 3, !dbg !2379
  br i1 %172, label %173, label %174, !dbg !2380

173:                                              ; preds = %168, %163, %158
  br label %188, !dbg !2381

174:                                              ; preds = %168
  %175 = load ptr, ptr %12, align 8, !dbg !2383
  %176 = load i8, ptr %175, align 1, !dbg !2385
  %177 = sext i8 %176 to i32, !dbg !2385
  %178 = icmp eq i32 %177, 2, !dbg !2386
  br i1 %178, label %179, label %182, !dbg !2387

179:                                              ; preds = %174
  %180 = load ptr, ptr %12, align 8, !dbg !2388
  %181 = getelementptr inbounds i8, ptr %180, i32 1, !dbg !2388
  store ptr %181, ptr %12, align 8, !dbg !2388
  br label %182, !dbg !2390

182:                                              ; preds = %179, %174
  %183 = load ptr, ptr %12, align 8, !dbg !2391
  %184 = getelementptr inbounds i8, ptr %183, i32 1, !dbg !2391
  store ptr %184, ptr %12, align 8, !dbg !2391
  %185 = load i8, ptr %183, align 1, !dbg !2392
  %186 = load ptr, ptr %14, align 8, !dbg !2393
  %187 = getelementptr inbounds i8, ptr %186, i32 1, !dbg !2393
  store ptr %187, ptr %14, align 8, !dbg !2393
  store i8 %185, ptr %186, align 1, !dbg !2394
  br label %152, !dbg !2358, !llvm.loop !2395

188:                                              ; preds = %173, %152
  %189 = load ptr, ptr %14, align 8, !dbg !2397
  %190 = getelementptr inbounds i8, ptr %189, i32 1, !dbg !2397
  store ptr %190, ptr %14, align 8, !dbg !2397
  store i8 0, ptr %189, align 1, !dbg !2398
  %191 = load ptr, ptr %13, align 8, !dbg !2399
  %192 = load ptr, ptr %11, align 8, !dbg !2400
  %193 = load i64, ptr %15, align 8, !dbg !2401
  %194 = getelementptr inbounds %struct.telnet_environ_t, ptr %192, i64 %193, !dbg !2400
  %195 = getelementptr inbounds %struct.telnet_environ_t, ptr %194, i32 0, i32 1, !dbg !2402
  store ptr %191, ptr %195, align 8, !dbg !2403
  %196 = load ptr, ptr %11, align 8, !dbg !2404
  %197 = load i64, ptr %15, align 8, !dbg !2405
  %198 = getelementptr inbounds %struct.telnet_environ_t, ptr %196, i64 %197, !dbg !2404
  %199 = getelementptr inbounds %struct.telnet_environ_t, ptr %198, i32 0, i32 2, !dbg !2406
  store ptr @.str.13, ptr %199, align 8, !dbg !2407
  %200 = load ptr, ptr %12, align 8, !dbg !2408
  %201 = load ptr, ptr %8, align 8, !dbg !2410
  %202 = load i64, ptr %9, align 8, !dbg !2411
  %203 = getelementptr inbounds i8, ptr %201, i64 %202, !dbg !2412
  %204 = icmp ult ptr %200, %203, !dbg !2413
  br i1 %204, label %205, label %253, !dbg !2414

205:                                              ; preds = %188
  %206 = load ptr, ptr %12, align 8, !dbg !2415
  %207 = load i8, ptr %206, align 1, !dbg !2416
  %208 = sext i8 %207 to i32, !dbg !2416
  %209 = icmp eq i32 %208, 1, !dbg !2417
  br i1 %209, label %210, label %253, !dbg !2418

210:                                              ; preds = %205
  %211 = load ptr, ptr %12, align 8, !dbg !2419
  %212 = getelementptr inbounds i8, ptr %211, i32 1, !dbg !2419
  store ptr %212, ptr %12, align 8, !dbg !2419
  %213 = load ptr, ptr %14, align 8, !dbg !2421
  store ptr %213, ptr %13, align 8, !dbg !2422
  br label %214, !dbg !2423

214:                                              ; preds = %239, %210
  %215 = load ptr, ptr %12, align 8, !dbg !2424
  %216 = load ptr, ptr %8, align 8, !dbg !2425
  %217 = load i64, ptr %9, align 8, !dbg !2426
  %218 = getelementptr inbounds i8, ptr %216, i64 %217, !dbg !2427
  %219 = icmp ult ptr %215, %218, !dbg !2428
  br i1 %219, label %220, label %245, !dbg !2423

220:                                              ; preds = %214
  %221 = load ptr, ptr %12, align 8, !dbg !2429
  %222 = load i8, ptr %221, align 1, !dbg !2432
  %223 = sext i8 %222 to i32, !dbg !2433
  %224 = icmp eq i32 %223, 0, !dbg !2434
  br i1 %224, label %230, label %225, !dbg !2435

225:                                              ; preds = %220
  %226 = load ptr, ptr %12, align 8, !dbg !2436
  %227 = load i8, ptr %226, align 1, !dbg !2437
  %228 = sext i8 %227 to i32, !dbg !2438
  %229 = icmp eq i32 %228, 3, !dbg !2439
  br i1 %229, label %230, label %231, !dbg !2440

230:                                              ; preds = %225, %220
  br label %245, !dbg !2441

231:                                              ; preds = %225
  %232 = load ptr, ptr %12, align 8, !dbg !2443
  %233 = load i8, ptr %232, align 1, !dbg !2445
  %234 = sext i8 %233 to i32, !dbg !2445
  %235 = icmp eq i32 %234, 2, !dbg !2446
  br i1 %235, label %236, label %239, !dbg !2447

236:                                              ; preds = %231
  %237 = load ptr, ptr %12, align 8, !dbg !2448
  %238 = getelementptr inbounds i8, ptr %237, i32 1, !dbg !2448
  store ptr %238, ptr %12, align 8, !dbg !2448
  br label %239, !dbg !2450

239:                                              ; preds = %236, %231
  %240 = load ptr, ptr %12, align 8, !dbg !2451
  %241 = getelementptr inbounds i8, ptr %240, i32 1, !dbg !2451
  store ptr %241, ptr %12, align 8, !dbg !2451
  %242 = load i8, ptr %240, align 1, !dbg !2452
  %243 = load ptr, ptr %14, align 8, !dbg !2453
  %244 = getelementptr inbounds i8, ptr %243, i32 1, !dbg !2453
  store ptr %244, ptr %14, align 8, !dbg !2453
  store i8 %242, ptr %243, align 1, !dbg !2454
  br label %214, !dbg !2423, !llvm.loop !2455

245:                                              ; preds = %230, %214
  %246 = load ptr, ptr %14, align 8, !dbg !2457
  %247 = getelementptr inbounds i8, ptr %246, i32 1, !dbg !2457
  store ptr %247, ptr %14, align 8, !dbg !2457
  store i8 0, ptr %246, align 1, !dbg !2458
  %248 = load ptr, ptr %13, align 8, !dbg !2459
  %249 = load ptr, ptr %11, align 8, !dbg !2460
  %250 = load i64, ptr %15, align 8, !dbg !2461
  %251 = getelementptr inbounds %struct.telnet_environ_t, ptr %249, i64 %250, !dbg !2460
  %252 = getelementptr inbounds %struct.telnet_environ_t, ptr %251, i32 0, i32 2, !dbg !2462
  store ptr %248, ptr %252, align 8, !dbg !2463
  br label %253, !dbg !2464

253:                                              ; preds = %245, %205, %188
  br label %254, !dbg !2465

254:                                              ; preds = %253
  %255 = load i64, ptr %15, align 8, !dbg !2466
  %256 = add i64 %255, 1, !dbg !2466
  store i64 %256, ptr %15, align 8, !dbg !2466
  br label %139, !dbg !2467, !llvm.loop !2468

257:                                              ; preds = %139
  %258 = load ptr, ptr %11, align 8, !dbg !2470
  %259 = getelementptr inbounds %struct.environ_t, ptr %10, i32 0, i32 1, !dbg !2471
  store ptr %258, ptr %259, align 8, !dbg !2472
  %260 = load i64, ptr %16, align 8, !dbg !2473
  %261 = getelementptr inbounds %struct.environ_t, ptr %10, i32 0, i32 2, !dbg !2474
  store i64 %260, ptr %261, align 8, !dbg !2475
  store i32 11, ptr %10, align 8, !dbg !2476
  %262 = load ptr, ptr %6, align 8, !dbg !2477
  %263 = getelementptr inbounds %struct.telnet_t, ptr %262, i32 0, i32 2, !dbg !2478
  %264 = load ptr, ptr %263, align 8, !dbg !2478
  %265 = load ptr, ptr %6, align 8, !dbg !2479
  %266 = load ptr, ptr %6, align 8, !dbg !2480
  %267 = getelementptr inbounds %struct.telnet_t, ptr %266, i32 0, i32 0, !dbg !2481
  %268 = load ptr, ptr %267, align 8, !dbg !2481
  call void %264(ptr noundef %265, ptr noundef %10, ptr noundef %268), !dbg !2477
  %269 = load ptr, ptr %11, align 8, !dbg !2482
  call void @free(ptr noundef %269) #12, !dbg !2483
  store i32 1, ptr %5, align 4, !dbg !2484
  br label %270, !dbg !2484

270:                                              ; preds = %257, %129, %85, %72, %50, %38, %19
  %271 = load i32, ptr %5, align 4, !dbg !2485
  ret i32 %271, !dbg !2485
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mssp_telnet(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !2486 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.telnet_event_t, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2489, metadata !DIExpression()), !dbg !2490
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2491, metadata !DIExpression()), !dbg !2492
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2493, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2495, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2497, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2499, metadata !DIExpression()), !dbg !2500
  store ptr null, ptr %10, align 8, !dbg !2500
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2501, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2503, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2505, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2507, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2509, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2511, metadata !DIExpression()), !dbg !2512
  %17 = load i64, ptr %7, align 8, !dbg !2513
  %18 = icmp eq i64 %17, 0, !dbg !2515
  br i1 %18, label %19, label %20, !dbg !2516

19:                                               ; preds = %3
  store i32 0, ptr %4, align 4, !dbg !2517
  br label %147, !dbg !2517

20:                                               ; preds = %3
  %21 = load ptr, ptr %6, align 8, !dbg !2519
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !2519
  %23 = load i8, ptr %22, align 1, !dbg !2519
  %24 = sext i8 %23 to i32, !dbg !2521
  %25 = icmp ne i32 %24, 1, !dbg !2522
  br i1 %25, label %26, label %29, !dbg !2523

26:                                               ; preds = %20
  %27 = load ptr, ptr %5, align 8, !dbg !2524
  %28 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %27, i32 noundef 650, ptr noundef @__func__._mssp_telnet, i32 noundef 4, i32 noundef 0, ptr noundef @.str.14), !dbg !2526
  store i32 0, ptr %4, align 4, !dbg !2527
  br label %147, !dbg !2527

29:                                               ; preds = %20
  store i64 0, ptr %15, align 8, !dbg !2528
  store i64 0, ptr %14, align 8, !dbg !2530
  br label %30, !dbg !2531

30:                                               ; preds = %45, %29
  %31 = load i64, ptr %14, align 8, !dbg !2532
  %32 = load i64, ptr %7, align 8, !dbg !2534
  %33 = icmp ne i64 %31, %32, !dbg !2535
  br i1 %33, label %34, label %48, !dbg !2536

34:                                               ; preds = %30
  %35 = load ptr, ptr %6, align 8, !dbg !2537
  %36 = load i64, ptr %14, align 8, !dbg !2540
  %37 = getelementptr inbounds i8, ptr %35, i64 %36, !dbg !2537
  %38 = load i8, ptr %37, align 1, !dbg !2537
  %39 = sext i8 %38 to i32, !dbg !2541
  %40 = icmp eq i32 %39, 2, !dbg !2542
  br i1 %40, label %41, label %44, !dbg !2543

41:                                               ; preds = %34
  %42 = load i64, ptr %15, align 8, !dbg !2544
  %43 = add i64 %42, 1, !dbg !2544
  store i64 %43, ptr %15, align 8, !dbg !2544
  br label %44, !dbg !2546

44:                                               ; preds = %41, %34
  br label %45, !dbg !2547

45:                                               ; preds = %44
  %46 = load i64, ptr %14, align 8, !dbg !2548
  %47 = add i64 %46, 1, !dbg !2548
  store i64 %47, ptr %14, align 8, !dbg !2548
  br label %30, !dbg !2549, !llvm.loop !2550

48:                                               ; preds = %30
  %49 = load i64, ptr %15, align 8, !dbg !2552
  %50 = call noalias ptr @calloc(i64 noundef %49, i64 noundef 24) #11, !dbg !2554
  store ptr %50, ptr %9, align 8, !dbg !2555
  %51 = icmp eq ptr %50, null, !dbg !2556
  br i1 %51, label %52, label %58, !dbg !2557

52:                                               ; preds = %48
  %53 = load ptr, ptr %5, align 8, !dbg !2558
  %54 = call ptr @__errno_location() #14, !dbg !2560
  %55 = load i32, ptr %54, align 4, !dbg !2560
  %56 = call ptr @strerror(i32 noundef %55) #12, !dbg !2561
  %57 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %53, i32 noundef 665, ptr noundef @__func__._mssp_telnet, i32 noundef 2, i32 noundef 0, ptr noundef @.str.7, ptr noundef %56), !dbg !2562
  store i32 0, ptr %4, align 4, !dbg !2563
  br label %147, !dbg !2563

58:                                               ; preds = %48
  %59 = load ptr, ptr %9, align 8, !dbg !2564
  %60 = getelementptr inbounds %struct.mssp_t, ptr %8, i32 0, i32 1, !dbg !2565
  store ptr %59, ptr %60, align 8, !dbg !2566
  %61 = load i64, ptr %15, align 8, !dbg !2567
  %62 = getelementptr inbounds %struct.mssp_t, ptr %8, i32 0, i32 2, !dbg !2568
  store i64 %61, ptr %62, align 8, !dbg !2569
  %63 = load ptr, ptr %6, align 8, !dbg !2570
  store ptr %63, ptr %12, align 8, !dbg !2571
  store ptr %63, ptr %13, align 8, !dbg !2572
  %64 = load ptr, ptr %6, align 8, !dbg !2573
  %65 = getelementptr inbounds i8, ptr %64, i64 0, !dbg !2573
  %66 = load i8, ptr %65, align 1, !dbg !2573
  store i8 %66, ptr %16, align 1, !dbg !2574
  store i64 0, ptr %14, align 8, !dbg !2575
  %67 = load ptr, ptr %6, align 8, !dbg !2577
  %68 = getelementptr inbounds i8, ptr %67, i64 1, !dbg !2578
  store ptr %68, ptr %11, align 8, !dbg !2579
  br label %69, !dbg !2580

69:                                               ; preds = %133, %58
  %70 = load ptr, ptr %11, align 8, !dbg !2581
  %71 = load ptr, ptr %6, align 8, !dbg !2583
  %72 = load i64, ptr %7, align 8, !dbg !2584
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2585
  %74 = icmp ult ptr %70, %73, !dbg !2586
  br i1 %74, label %75, label %138, !dbg !2587

75:                                               ; preds = %69
  br label %76, !dbg !2588

76:                                               ; preds = %94, %75
  %77 = load ptr, ptr %11, align 8, !dbg !2590
  %78 = load ptr, ptr %6, align 8, !dbg !2591
  %79 = load i64, ptr %7, align 8, !dbg !2592
  %80 = getelementptr inbounds i8, ptr %78, i64 %79, !dbg !2593
  %81 = icmp ult ptr %77, %80, !dbg !2594
  br i1 %81, label %82, label %92, !dbg !2595

82:                                               ; preds = %76
  %83 = load ptr, ptr %11, align 8, !dbg !2596
  %84 = load i8, ptr %83, align 1, !dbg !2597
  %85 = sext i8 %84 to i32, !dbg !2598
  %86 = icmp ne i32 %85, 1, !dbg !2599
  br i1 %86, label %87, label %92, !dbg !2600

87:                                               ; preds = %82
  %88 = load ptr, ptr %11, align 8, !dbg !2601
  %89 = load i8, ptr %88, align 1, !dbg !2602
  %90 = sext i8 %89 to i32, !dbg !2603
  %91 = icmp ne i32 %90, 2, !dbg !2604
  br label %92

92:                                               ; preds = %87, %82, %76
  %93 = phi i1 [ false, %82 ], [ false, %76 ], [ %91, %87 ], !dbg !2605
  br i1 %93, label %94, label %100, !dbg !2588

94:                                               ; preds = %92
  %95 = load ptr, ptr %11, align 8, !dbg !2606
  %96 = getelementptr inbounds i8, ptr %95, i32 1, !dbg !2606
  store ptr %96, ptr %11, align 8, !dbg !2606
  %97 = load i8, ptr %95, align 1, !dbg !2608
  %98 = load ptr, ptr %13, align 8, !dbg !2609
  %99 = getelementptr inbounds i8, ptr %98, i32 1, !dbg !2609
  store ptr %99, ptr %13, align 8, !dbg !2609
  store i8 %97, ptr %98, align 1, !dbg !2610
  br label %76, !dbg !2588, !llvm.loop !2611

100:                                              ; preds = %92
  %101 = load ptr, ptr %13, align 8, !dbg !2613
  %102 = getelementptr inbounds i8, ptr %101, i32 1, !dbg !2613
  store ptr %102, ptr %13, align 8, !dbg !2613
  store i8 0, ptr %101, align 1, !dbg !2614
  %103 = load i8, ptr %16, align 1, !dbg !2615
  %104 = zext i8 %103 to i32, !dbg !2615
  %105 = icmp eq i32 %104, 1, !dbg !2617
  br i1 %105, label %106, label %108, !dbg !2618

106:                                              ; preds = %100
  %107 = load ptr, ptr %12, align 8, !dbg !2619
  store ptr %107, ptr %10, align 8, !dbg !2621
  br label %133, !dbg !2622

108:                                              ; preds = %100
  %109 = load i8, ptr %16, align 1, !dbg !2623
  %110 = zext i8 %109 to i32, !dbg !2623
  %111 = icmp eq i32 %110, 2, !dbg !2625
  br i1 %111, label %112, label %128, !dbg !2626

112:                                              ; preds = %108
  %113 = load ptr, ptr %10, align 8, !dbg !2627
  %114 = icmp ne ptr %113, null, !dbg !2628
  br i1 %114, label %115, label %128, !dbg !2629

115:                                              ; preds = %112
  %116 = load ptr, ptr %10, align 8, !dbg !2630
  %117 = load ptr, ptr %9, align 8, !dbg !2632
  %118 = load i64, ptr %14, align 8, !dbg !2633
  %119 = getelementptr inbounds %struct.telnet_environ_t, ptr %117, i64 %118, !dbg !2632
  %120 = getelementptr inbounds %struct.telnet_environ_t, ptr %119, i32 0, i32 1, !dbg !2634
  store ptr %116, ptr %120, align 8, !dbg !2635
  %121 = load ptr, ptr %12, align 8, !dbg !2636
  %122 = load ptr, ptr %9, align 8, !dbg !2637
  %123 = load i64, ptr %14, align 8, !dbg !2638
  %124 = getelementptr inbounds %struct.telnet_environ_t, ptr %122, i64 %123, !dbg !2637
  %125 = getelementptr inbounds %struct.telnet_environ_t, ptr %124, i32 0, i32 2, !dbg !2639
  store ptr %121, ptr %125, align 8, !dbg !2640
  %126 = load i64, ptr %14, align 8, !dbg !2641
  %127 = add i64 %126, 1, !dbg !2641
  store i64 %127, ptr %14, align 8, !dbg !2641
  br label %132, !dbg !2642

128:                                              ; preds = %112, %108
  %129 = load ptr, ptr %5, align 8, !dbg !2643
  %130 = call i32 (ptr, i32, ptr, i32, i32, ptr, ...) @_error(ptr noundef %129, i32 noundef 692, ptr noundef @__func__._mssp_telnet, i32 noundef 4, i32 noundef 0, ptr noundef @.str.15), !dbg !2645
  %131 = load ptr, ptr %9, align 8, !dbg !2646
  call void @free(ptr noundef %131) #12, !dbg !2647
  store i32 0, ptr %4, align 4, !dbg !2648
  br label %147, !dbg !2648

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132, %106
  %134 = load ptr, ptr %13, align 8, !dbg !2649
  store ptr %134, ptr %12, align 8, !dbg !2650
  %135 = load ptr, ptr %11, align 8, !dbg !2651
  %136 = getelementptr inbounds i8, ptr %135, i32 1, !dbg !2651
  store ptr %136, ptr %11, align 8, !dbg !2651
  %137 = load i8, ptr %135, align 1, !dbg !2652
  store i8 %137, ptr %16, align 1, !dbg !2653
  br label %69, !dbg !2654, !llvm.loop !2655

138:                                              ; preds = %69
  store i32 12, ptr %8, align 8, !dbg !2657
  %139 = load ptr, ptr %5, align 8, !dbg !2658
  %140 = getelementptr inbounds %struct.telnet_t, ptr %139, i32 0, i32 2, !dbg !2659
  %141 = load ptr, ptr %140, align 8, !dbg !2659
  %142 = load ptr, ptr %5, align 8, !dbg !2660
  %143 = load ptr, ptr %5, align 8, !dbg !2661
  %144 = getelementptr inbounds %struct.telnet_t, ptr %143, i32 0, i32 0, !dbg !2662
  %145 = load ptr, ptr %144, align 8, !dbg !2662
  call void %141(ptr noundef %142, ptr noundef %8, ptr noundef %145), !dbg !2658
  %146 = load ptr, ptr %9, align 8, !dbg !2663
  call void @free(ptr noundef %146) #12, !dbg !2664
  store i32 0, ptr %4, align 4, !dbg !2665
  br label %147, !dbg !2665

147:                                              ; preds = %138, %128, %52, %26, %19
  %148 = load i32, ptr %4, align 4, !dbg !2666
  ret i32 %148, !dbg !2666
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!171}
!llvm.module.flags = !{!326, !327, !328, !329, !330, !331, !332}
!llvm.ident = !{!333}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CRLF", scope: !2, file: !3, line: 1359, type: !181, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "telnet_vprintf", scope: !3, file: !3, line: 1358, type: !4, scopeLine: 1358, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!3 = !DIFile(filename: "src/apps/relay/libtelnet.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "7be7bbf7ad757e34f57d78a35b0e72d1")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !58, !163}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "telnet_t", file: !9, line: 65, baseType: !10)
!9 = !DIFile(filename: "src/apps/relay/libtelnet.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "f2ce4ff3537f2db009dc531f503a1443")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "telnet_t", file: !3, line: 74, size: 512, elements: !11)
!11 = !{!12, !14, !25, !138, !144, !146, !147, !148, !160, !161, !162}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !10, file: !3, line: 76, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "telopts", scope: !10, file: !3, line: 78, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "telnet_telopt_t", file: !9, line: 71, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "telnet_telopt_t", file: !9, line: 357, size: 32, elements: !19)
!19 = !{!20, !22, !24}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "telopt", scope: !18, file: !9, line: 358, baseType: !21, size: 16)
!21 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "us", scope: !18, file: !9, line: 359, baseType: !23, size: 8, offset: 16)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "him", scope: !18, file: !9, line: 360, baseType: !23, size: 8, offset: 24)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !10, file: !3, line: 80, baseType: !26, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "telnet_event_handler_t", file: !9, line: 351, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !7, !30, !13}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "telnet_event_t", file: !9, line: 68, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "telnet_event_t", file: !9, line: 234, size: 320, elements: !33)
!33 = !{!34, !53, !65, !83, !88, !93, !100, !107, !113, !118, !132}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !32, file: !9, line: 243, baseType: !35, size: 32)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "telnet_event_type_t", file: !9, line: 203, baseType: !36, size: 32, elements: !37)
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!38 = !DIEnumerator(name: "TELNET_EV_DATA", value: 0)
!39 = !DIEnumerator(name: "TELNET_EV_SEND", value: 1)
!40 = !DIEnumerator(name: "TELNET_EV_IAC", value: 2)
!41 = !DIEnumerator(name: "TELNET_EV_WILL", value: 3)
!42 = !DIEnumerator(name: "TELNET_EV_WONT", value: 4)
!43 = !DIEnumerator(name: "TELNET_EV_DO", value: 5)
!44 = !DIEnumerator(name: "TELNET_EV_DONT", value: 6)
!45 = !DIEnumerator(name: "TELNET_EV_SUBNEGOTIATION", value: 7)
!46 = !DIEnumerator(name: "TELNET_EV_COMPRESS", value: 8)
!47 = !DIEnumerator(name: "TELNET_EV_ZMP", value: 9)
!48 = !DIEnumerator(name: "TELNET_EV_TTYPE", value: 10)
!49 = !DIEnumerator(name: "TELNET_EV_ENVIRON", value: 11)
!50 = !DIEnumerator(name: "TELNET_EV_MSSP", value: 12)
!51 = !DIEnumerator(name: "TELNET_EV_WARNING", value: 13)
!52 = !DIEnumerator(name: "TELNET_EV_ERROR", value: 14)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !32, file: !9, line: 252, baseType: !54, size: 192)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_t", file: !9, line: 248, size: 192, elements: !55)
!55 = !{!56, !57, !61}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !54, file: !9, line: 249, baseType: !35, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !54, file: !9, line: 250, baseType: !58, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !54, file: !9, line: 251, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 46, baseType: !64)
!63 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!64 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !32, file: !9, line: 264, baseType: !66, size: 320)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "error_t", file: !9, line: 257, size: 320, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !66, file: !9, line: 258, baseType: !35, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !66, file: !9, line: 259, baseType: !58, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !66, file: !9, line: 260, baseType: !58, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !66, file: !9, line: 261, baseType: !58, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !66, file: !9, line: 262, baseType: !6, size: 32, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "errcode", scope: !66, file: !9, line: 263, baseType: !74, size: 32, offset: 288)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "telnet_error_t", file: !9, line: 198, baseType: !75)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "telnet_error_t", file: !9, line: 190, baseType: !36, size: 32, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82}
!77 = !DIEnumerator(name: "TELNET_EOK", value: 0)
!78 = !DIEnumerator(name: "TELNET_EBADVAL", value: 1)
!79 = !DIEnumerator(name: "TELNET_ENOMEM", value: 2)
!80 = !DIEnumerator(name: "TELNET_EOVERFLOW", value: 3)
!81 = !DIEnumerator(name: "TELNET_EPROTOCOL", value: 4)
!82 = !DIEnumerator(name: "TELNET_ECOMPRESS", value: 5)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "iac", scope: !32, file: !9, line: 272, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iac_t", file: !9, line: 269, size: 64, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !84, file: !9, line: 270, baseType: !35, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !84, file: !9, line: 271, baseType: !23, size: 8, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !32, file: !9, line: 280, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "negotiate_t", file: !9, line: 277, size: 64, elements: !90)
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !89, file: !9, line: 278, baseType: !35, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "telopt", scope: !89, file: !9, line: 279, baseType: !23, size: 8, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !32, file: !9, line: 290, baseType: !94, size: 256)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subnegotiate_t", file: !9, line: 285, size: 256, elements: !95)
!95 = !{!96, !97, !98, !99}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !94, file: !9, line: 286, baseType: !35, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !94, file: !9, line: 287, baseType: !58, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !94, file: !9, line: 288, baseType: !62, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "telopt", scope: !94, file: !9, line: 289, baseType: !23, size: 8, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "zmp", scope: !32, file: !9, line: 299, baseType: !101, size: 192)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zmp_t", file: !9, line: 295, size: 192, elements: !102)
!102 = !{!103, !104, !106}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !101, file: !9, line: 296, baseType: !35, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !101, file: !9, line: 297, baseType: !105, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !101, file: !9, line: 298, baseType: !62, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ttype", scope: !32, file: !9, line: 308, baseType: !108, size: 128)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttype_t", file: !9, line: 304, size: 128, elements: !109)
!109 = !{!110, !111, !112}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !108, file: !9, line: 305, baseType: !35, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !108, file: !9, line: 306, baseType: !23, size: 8, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !108, file: !9, line: 307, baseType: !58, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !32, file: !9, line: 317, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_t", file: !9, line: 313, size: 64, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !114, file: !9, line: 314, baseType: !35, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !114, file: !9, line: 315, baseType: !23, size: 8, offset: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "environ", scope: !32, file: !9, line: 327, baseType: !119, size: 256)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "environ_t", file: !9, line: 322, size: 256, elements: !120)
!120 = !{!121, !122, !130, !131}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !119, file: !9, line: 323, baseType: !35, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !119, file: !9, line: 324, baseType: !123, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "telnet_environ_t", file: !9, line: 225, size: 192, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !9, line: 226, baseType: !23, size: 8)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !125, file: !9, line: 227, baseType: !58, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !125, file: !9, line: 228, baseType: !58, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !119, file: !9, line: 325, baseType: !62, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !119, file: !9, line: 326, baseType: !23, size: 8, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "mssp", scope: !32, file: !9, line: 336, baseType: !133, size: 192)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mssp_t", file: !9, line: 332, size: 192, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !133, file: !9, line: 333, baseType: !35, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !133, file: !9, line: 334, baseType: !123, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !133, file: !9, line: 335, baseType: !62, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !10, file: !3, line: 86, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "telnet_rfc1143_t", file: !3, line: 104, size: 16, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "telopt", scope: !140, file: !3, line: 105, baseType: !23, size: 8)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !140, file: !3, line: 106, baseType: !23, size: 8, offset: 8)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !10, file: !3, line: 88, baseType: !145, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !10, file: !3, line: 90, baseType: !62, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_pos", scope: !10, file: !3, line: 92, baseType: !62, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !10, file: !3, line: 94, baseType: !149, size: 32, offset: 448)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "telnet_state_t", file: !3, line: 60, baseType: !36, size: 32, elements: !150)
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159}
!151 = !DIEnumerator(name: "TELNET_STATE_DATA", value: 0)
!152 = !DIEnumerator(name: "TELNET_STATE_IAC", value: 1)
!153 = !DIEnumerator(name: "TELNET_STATE_WILL", value: 2)
!154 = !DIEnumerator(name: "TELNET_STATE_WONT", value: 3)
!155 = !DIEnumerator(name: "TELNET_STATE_DO", value: 4)
!156 = !DIEnumerator(name: "TELNET_STATE_DONT", value: 5)
!157 = !DIEnumerator(name: "TELNET_STATE_SB", value: 6)
!158 = !DIEnumerator(name: "TELNET_STATE_SB_DATA", value: 7)
!159 = !DIEnumerator(name: "TELNET_STATE_SB_DATA_IAC", value: 8)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !10, file: !3, line: 96, baseType: !23, size: 8, offset: 480)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "sb_telopt", scope: !10, file: !3, line: 98, baseType: !23, size: 8, offset: 488)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "q_size", scope: !10, file: !3, line: 100, baseType: !23, size: 8, offset: 496)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !165)
!165 = !{!166, !168, !169, !170}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !164, file: !167, line: 1355, baseType: !36, size: 32)
!167 = !DIFile(filename: "src/apps/relay/libtelnet.c", directory: "/home/raj/coturn")
!168 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !164, file: !167, line: 1355, baseType: !36, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !164, file: !167, line: 1355, baseType: !13, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !164, file: !167, line: 1355, baseType: !13, size: 64, offset: 128)
!171 = distinct !DICompileUnit(language: DW_LANG_C11, file: !172, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !173, retainedTypes: !174, globals: !178, splitDebugInlining: false, nameTableKind: None)
!172 = !DIFile(filename: "/home/raj/coturn/src/apps/relay/libtelnet.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "7be7bbf7ad757e34f57d78a35b0e72d1")
!173 = !{!35, !75, !149}
!174 = !{!7, !58, !60, !62, !145, !6, !105, !36, !175, !176}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "telnet_rfc1143_t", file: !3, line: 107, baseType: !140)
!178 = !{!0, !179, !184, !189, !194, !199, !209, !217, !222, !227, !232, !237, !239, !242, !247, !252, !257, !262, !267, !272, !274, !279, !284, !289, !294, !299, !301, !306, !311, !313, !315, !317, !319, !321}
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "CRNUL", scope: !2, file: !3, line: 1360, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 16, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 2)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1370, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 120, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 15)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1371, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 160, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 20)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1435, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 152, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 19)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "SEND", scope: !201, file: !3, line: 1483, type: !205, isLocal: true, isDefinition: true)
!201 = distinct !DISubprogram(name: "telnet_ttype_send", scope: !3, file: !3, line: 1482, type: !202, scopeLine: 1482, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !7}
!204 = !{}
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 48, elements: !207)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!207 = !{!208}
!208 = !DISubrange(count: 6)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "IS", scope: !211, file: !3, line: 1490, type: !214, isLocal: true, isDefinition: true)
!211 = distinct !DISubprogram(name: "telnet_ttype_is", scope: !3, file: !3, line: 1489, type: !212, scopeLine: 1489, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !7, !58}
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 32, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 4)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1074, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 72, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 9)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1075, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 320, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 40)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !3, line: 376, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 88, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 11)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !3, line: 377, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 176, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 22)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !3, line: 435, type: !191, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression(DW_OP_constu, 5, DW_OP_stack_value))
!240 = distinct !DIGlobalVariable(name: "_buffer_sizes_count", scope: !171, file: !3, line: 119, type: !241, isLocal: true, isDefinition: true)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !3, line: 919, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 104, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 13)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !3, line: 920, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 328, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 41)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !3, line: 928, type: !254, isLocal: true, isDefinition: true)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 136, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 17)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "_buffer_sizes", scope: !171, file: !3, line: 118, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 320, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 5)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !3, line: 722, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 96, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 12)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !3, line: 723, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 168, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 21)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !3, line: 734, type: !191, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !3, line: 761, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 112, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 14)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !3, line: 762, type: !281, isLocal: true, isDefinition: true)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 264, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 33)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !3, line: 770, type: !286, isLocal: true, isDefinition: true)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 312, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 39)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !3, line: 509, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 128, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 16)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !3, line: 510, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 296, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 37)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !3, line: 534, type: !286, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !3, line: 541, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 248, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 31)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !3, line: 593, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 8, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 1)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !3, line: 650, type: !244, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !3, line: 651, type: !296, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !3, line: 693, type: !281, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !3, line: 312, type: !244, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !3, line: 313, type: !269, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !3, line: 137, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 352, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 44)
!326 = !{i32 7, !"Dwarf Version", i32 5}
!327 = !{i32 2, !"Debug Info Version", i32 3}
!328 = !{i32 1, !"wchar_size", i32 4}
!329 = !{i32 8, !"PIC Level", i32 2}
!330 = !{i32 7, !"PIE Level", i32 2}
!331 = !{i32 7, !"uwtable", i32 2}
!332 = !{i32 7, !"frame-pointer", i32 2}
!333 = !{!"clang version 16.0.0"}
!334 = distinct !DISubprogram(name: "telnet_init", scope: !3, file: !3, line: 853, type: !335, scopeLine: 854, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!335 = !DISubroutineType(types: !336)
!336 = !{!7, !15, !26, !23, !13}
!337 = !DILocalVariable(name: "telopts", arg: 1, scope: !334, file: !3, line: 853, type: !15)
!338 = !DILocation(line: 853, column: 46, scope: !334)
!339 = !DILocalVariable(name: "eh", arg: 2, scope: !334, file: !3, line: 854, type: !26)
!340 = !DILocation(line: 854, column: 26, scope: !334)
!341 = !DILocalVariable(name: "flags", arg: 3, scope: !334, file: !3, line: 854, type: !23)
!342 = !DILocation(line: 854, column: 44, scope: !334)
!343 = !DILocalVariable(name: "user_data", arg: 4, scope: !334, file: !3, line: 854, type: !13)
!344 = !DILocation(line: 854, column: 57, scope: !334)
!345 = !DILocalVariable(name: "telnet", scope: !334, file: !3, line: 856, type: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!347 = !DILocation(line: 856, column: 19, scope: !334)
!348 = !DILocation(line: 856, column: 39, scope: !334)
!349 = !DILocation(line: 857, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !334, file: !3, line: 857, column: 6)
!351 = !DILocation(line: 857, column: 13, scope: !350)
!352 = !DILocation(line: 857, column: 6, scope: !334)
!353 = !DILocation(line: 858, column: 3, scope: !350)
!354 = !DILocation(line: 861, column: 15, scope: !334)
!355 = !DILocation(line: 861, column: 2, scope: !334)
!356 = !DILocation(line: 861, column: 10, scope: !334)
!357 = !DILocation(line: 861, column: 13, scope: !334)
!358 = !DILocation(line: 862, column: 20, scope: !334)
!359 = !DILocation(line: 862, column: 2, scope: !334)
!360 = !DILocation(line: 862, column: 10, scope: !334)
!361 = !DILocation(line: 862, column: 18, scope: !334)
!362 = !DILocation(line: 863, column: 15, scope: !334)
!363 = !DILocation(line: 863, column: 2, scope: !334)
!364 = !DILocation(line: 863, column: 10, scope: !334)
!365 = !DILocation(line: 863, column: 13, scope: !334)
!366 = !DILocation(line: 864, column: 18, scope: !334)
!367 = !DILocation(line: 864, column: 2, scope: !334)
!368 = !DILocation(line: 864, column: 10, scope: !334)
!369 = !DILocation(line: 864, column: 16, scope: !334)
!370 = !DILocation(line: 866, column: 9, scope: !334)
!371 = !DILocation(line: 866, column: 2, scope: !334)
!372 = !DILocation(line: 867, column: 1, scope: !334)
!373 = distinct !DISubprogram(name: "telnet_free", scope: !3, file: !3, line: 870, type: !202, scopeLine: 870, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!374 = !DILocalVariable(name: "telnet", arg: 1, scope: !373, file: !3, line: 870, type: !7)
!375 = !DILocation(line: 870, column: 28, scope: !373)
!376 = !DILocation(line: 872, column: 6, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !3, line: 872, column: 6)
!378 = !DILocation(line: 872, column: 14, scope: !377)
!379 = !DILocation(line: 872, column: 21, scope: !377)
!380 = !DILocation(line: 872, column: 6, scope: !373)
!381 = !DILocation(line: 873, column: 8, scope: !382)
!382 = distinct !DILexicalBlock(scope: !377, file: !3, line: 872, column: 27)
!383 = !DILocation(line: 873, column: 16, scope: !382)
!384 = !DILocation(line: 873, column: 3, scope: !382)
!385 = !DILocation(line: 874, column: 3, scope: !382)
!386 = !DILocation(line: 874, column: 11, scope: !382)
!387 = !DILocation(line: 874, column: 18, scope: !382)
!388 = !DILocation(line: 875, column: 3, scope: !382)
!389 = !DILocation(line: 875, column: 11, scope: !382)
!390 = !DILocation(line: 875, column: 23, scope: !382)
!391 = !DILocation(line: 876, column: 3, scope: !382)
!392 = !DILocation(line: 876, column: 11, scope: !382)
!393 = !DILocation(line: 876, column: 22, scope: !382)
!394 = !DILocation(line: 877, column: 2, scope: !382)
!395 = !DILocation(line: 892, column: 6, scope: !396)
!396 = distinct !DILexicalBlock(scope: !373, file: !3, line: 892, column: 6)
!397 = !DILocation(line: 892, column: 14, scope: !396)
!398 = !DILocation(line: 892, column: 6, scope: !373)
!399 = !DILocation(line: 893, column: 8, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !3, line: 892, column: 17)
!401 = !DILocation(line: 893, column: 16, scope: !400)
!402 = !DILocation(line: 893, column: 3, scope: !400)
!403 = !DILocation(line: 894, column: 3, scope: !400)
!404 = !DILocation(line: 894, column: 11, scope: !400)
!405 = !DILocation(line: 894, column: 13, scope: !400)
!406 = !DILocation(line: 895, column: 3, scope: !400)
!407 = !DILocation(line: 895, column: 11, scope: !400)
!408 = !DILocation(line: 895, column: 18, scope: !400)
!409 = !DILocation(line: 896, column: 2, scope: !400)
!410 = !DILocation(line: 899, column: 7, scope: !373)
!411 = !DILocation(line: 899, column: 2, scope: !373)
!412 = !DILocation(line: 900, column: 1, scope: !373)
!413 = distinct !DISubprogram(name: "telnet_recv", scope: !3, file: !3, line: 1111, type: !414, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !7, !58, !62}
!416 = !DILocalVariable(name: "telnet", arg: 1, scope: !413, file: !3, line: 1111, type: !7)
!417 = !DILocation(line: 1111, column: 28, scope: !413)
!418 = !DILocalVariable(name: "buffer", arg: 2, scope: !413, file: !3, line: 1111, type: !58)
!419 = !DILocation(line: 1111, column: 48, scope: !413)
!420 = !DILocalVariable(name: "size", arg: 3, scope: !413, file: !3, line: 1112, type: !62)
!421 = !DILocation(line: 1112, column: 10, scope: !413)
!422 = !DILocation(line: 1165, column: 12, scope: !413)
!423 = !DILocation(line: 1165, column: 20, scope: !413)
!424 = !DILocation(line: 1165, column: 28, scope: !413)
!425 = !DILocation(line: 1165, column: 3, scope: !413)
!426 = !DILocation(line: 1166, column: 1, scope: !413)
!427 = distinct !DISubprogram(name: "_process", scope: !3, file: !3, line: 941, type: !414, scopeLine: 941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !204)
!428 = !DILocalVariable(name: "telnet", arg: 1, scope: !427, file: !3, line: 941, type: !7)
!429 = !DILocation(line: 941, column: 32, scope: !427)
!430 = !DILocalVariable(name: "buffer", arg: 2, scope: !427, file: !3, line: 941, type: !58)
!431 = !DILocation(line: 941, column: 52, scope: !427)
!432 = !DILocalVariable(name: "size", arg: 3, scope: !427, file: !3, line: 941, type: !62)
!433 = !DILocation(line: 941, column: 67, scope: !427)
!434 = !DILocalVariable(name: "ev", scope: !427, file: !3, line: 942, type: !31)
!435 = !DILocation(line: 942, column: 17, scope: !427)
!436 = !DILocalVariable(name: "byte", scope: !427, file: !3, line: 943, type: !23)
!437 = !DILocation(line: 943, column: 16, scope: !427)
!438 = !DILocalVariable(name: "i", scope: !427, file: !3, line: 944, type: !62)
!439 = !DILocation(line: 944, column: 9, scope: !427)
!440 = !DILocalVariable(name: "start", scope: !427, file: !3, line: 944, type: !62)
!441 = !DILocation(line: 944, column: 12, scope: !427)
!442 = !DILocation(line: 945, column: 17, scope: !443)
!443 = distinct !DILexicalBlock(scope: !427, file: !3, line: 945, column: 2)
!444 = !DILocation(line: 945, column: 9, scope: !443)
!445 = !DILocation(line: 945, column: 7, scope: !443)
!446 = !DILocation(line: 945, column: 22, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !3, line: 945, column: 2)
!448 = !DILocation(line: 945, column: 27, scope: !447)
!449 = !DILocation(line: 945, column: 24, scope: !447)
!450 = !DILocation(line: 945, column: 2, scope: !443)
!451 = !DILocation(line: 946, column: 10, scope: !452)
!452 = distinct !DILexicalBlock(scope: !447, file: !3, line: 945, column: 38)
!453 = !DILocation(line: 946, column: 17, scope: !452)
!454 = !DILocation(line: 946, column: 8, scope: !452)
!455 = !DILocation(line: 947, column: 11, scope: !452)
!456 = !DILocation(line: 947, column: 19, scope: !452)
!457 = !DILocation(line: 947, column: 3, scope: !452)
!458 = !DILocation(line: 952, column: 8, scope: !459)
!459 = distinct !DILexicalBlock(scope: !460, file: !3, line: 952, column: 8)
!460 = distinct !DILexicalBlock(scope: !452, file: !3, line: 947, column: 26)
!461 = !DILocation(line: 952, column: 13, scope: !459)
!462 = !DILocation(line: 952, column: 8, scope: !460)
!463 = !DILocation(line: 953, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !3, line: 953, column: 9)
!465 = distinct !DILexicalBlock(scope: !459, file: !3, line: 952, column: 28)
!466 = !DILocation(line: 953, column: 14, scope: !464)
!467 = !DILocation(line: 953, column: 11, scope: !464)
!468 = !DILocation(line: 953, column: 9, scope: !465)
!469 = !DILocation(line: 954, column: 14, scope: !470)
!470 = distinct !DILexicalBlock(scope: !464, file: !3, line: 953, column: 21)
!471 = !DILocation(line: 955, column: 23, scope: !470)
!472 = !DILocation(line: 955, column: 32, scope: !470)
!473 = !DILocation(line: 955, column: 30, scope: !470)
!474 = !DILocation(line: 955, column: 14, scope: !470)
!475 = !DILocation(line: 955, column: 21, scope: !470)
!476 = !DILocation(line: 956, column: 21, scope: !470)
!477 = !DILocation(line: 956, column: 25, scope: !470)
!478 = !DILocation(line: 956, column: 23, scope: !470)
!479 = !DILocation(line: 956, column: 14, scope: !470)
!480 = !DILocation(line: 956, column: 19, scope: !470)
!481 = !DILocation(line: 957, column: 6, scope: !470)
!482 = !DILocation(line: 957, column: 14, scope: !470)
!483 = !DILocation(line: 957, column: 17, scope: !470)
!484 = !DILocation(line: 957, column: 30, scope: !470)
!485 = !DILocation(line: 957, column: 38, scope: !470)
!486 = !DILocation(line: 958, column: 5, scope: !470)
!487 = !DILocation(line: 959, column: 5, scope: !465)
!488 = !DILocation(line: 959, column: 13, scope: !465)
!489 = !DILocation(line: 959, column: 19, scope: !465)
!490 = !DILocation(line: 960, column: 4, scope: !465)
!491 = !DILocation(line: 961, column: 4, scope: !460)
!492 = !DILocation(line: 965, column: 12, scope: !460)
!493 = !DILocation(line: 965, column: 4, scope: !460)
!494 = !DILocation(line: 968, column: 5, scope: !495)
!495 = distinct !DILexicalBlock(scope: !460, file: !3, line: 965, column: 18)
!496 = !DILocation(line: 968, column: 13, scope: !495)
!497 = !DILocation(line: 968, column: 19, scope: !495)
!498 = !DILocation(line: 969, column: 5, scope: !495)
!499 = !DILocation(line: 972, column: 5, scope: !495)
!500 = !DILocation(line: 972, column: 13, scope: !495)
!501 = !DILocation(line: 972, column: 19, scope: !495)
!502 = !DILocation(line: 973, column: 5, scope: !495)
!503 = !DILocation(line: 975, column: 5, scope: !495)
!504 = !DILocation(line: 975, column: 13, scope: !495)
!505 = !DILocation(line: 975, column: 19, scope: !495)
!506 = !DILocation(line: 976, column: 5, scope: !495)
!507 = !DILocation(line: 978, column: 5, scope: !495)
!508 = !DILocation(line: 978, column: 13, scope: !495)
!509 = !DILocation(line: 978, column: 19, scope: !495)
!510 = !DILocation(line: 979, column: 5, scope: !495)
!511 = !DILocation(line: 981, column: 5, scope: !495)
!512 = !DILocation(line: 981, column: 13, scope: !495)
!513 = !DILocation(line: 981, column: 19, scope: !495)
!514 = !DILocation(line: 982, column: 5, scope: !495)
!515 = !DILocation(line: 986, column: 13, scope: !495)
!516 = !DILocation(line: 987, column: 13, scope: !495)
!517 = !DILocation(line: 987, column: 20, scope: !495)
!518 = !DILocation(line: 988, column: 13, scope: !495)
!519 = !DILocation(line: 988, column: 18, scope: !495)
!520 = !DILocation(line: 989, column: 5, scope: !495)
!521 = !DILocation(line: 989, column: 13, scope: !495)
!522 = !DILocation(line: 989, column: 16, scope: !495)
!523 = !DILocation(line: 989, column: 29, scope: !495)
!524 = !DILocation(line: 989, column: 37, scope: !495)
!525 = !DILocation(line: 992, column: 13, scope: !495)
!526 = !DILocation(line: 992, column: 15, scope: !495)
!527 = !DILocation(line: 992, column: 11, scope: !495)
!528 = !DILocation(line: 993, column: 5, scope: !495)
!529 = !DILocation(line: 993, column: 13, scope: !495)
!530 = !DILocation(line: 993, column: 19, scope: !495)
!531 = !DILocation(line: 994, column: 5, scope: !495)
!532 = !DILocation(line: 998, column: 13, scope: !495)
!533 = !DILocation(line: 999, column: 18, scope: !495)
!534 = !DILocation(line: 999, column: 12, scope: !495)
!535 = !DILocation(line: 999, column: 16, scope: !495)
!536 = !DILocation(line: 1000, column: 5, scope: !495)
!537 = !DILocation(line: 1000, column: 13, scope: !495)
!538 = !DILocation(line: 1000, column: 16, scope: !495)
!539 = !DILocation(line: 1000, column: 29, scope: !495)
!540 = !DILocation(line: 1000, column: 37, scope: !495)
!541 = !DILocation(line: 1003, column: 13, scope: !495)
!542 = !DILocation(line: 1003, column: 15, scope: !495)
!543 = !DILocation(line: 1003, column: 11, scope: !495)
!544 = !DILocation(line: 1004, column: 5, scope: !495)
!545 = !DILocation(line: 1004, column: 13, scope: !495)
!546 = !DILocation(line: 1004, column: 19, scope: !495)
!547 = !DILocation(line: 1005, column: 4, scope: !495)
!548 = !DILocation(line: 1006, column: 4, scope: !460)
!549 = !DILocation(line: 1013, column: 15, scope: !460)
!550 = !DILocation(line: 1013, column: 23, scope: !460)
!551 = !DILocation(line: 1013, column: 4, scope: !460)
!552 = !DILocation(line: 1014, column: 12, scope: !460)
!553 = !DILocation(line: 1014, column: 14, scope: !460)
!554 = !DILocation(line: 1014, column: 10, scope: !460)
!555 = !DILocation(line: 1015, column: 4, scope: !460)
!556 = !DILocation(line: 1015, column: 12, scope: !460)
!557 = !DILocation(line: 1015, column: 18, scope: !460)
!558 = !DILocation(line: 1016, column: 4, scope: !460)
!559 = !DILocation(line: 1020, column: 24, scope: !460)
!560 = !DILocation(line: 1020, column: 4, scope: !460)
!561 = !DILocation(line: 1020, column: 12, scope: !460)
!562 = !DILocation(line: 1020, column: 22, scope: !460)
!563 = !DILocation(line: 1021, column: 4, scope: !460)
!564 = !DILocation(line: 1021, column: 12, scope: !460)
!565 = !DILocation(line: 1021, column: 23, scope: !460)
!566 = !DILocation(line: 1022, column: 4, scope: !460)
!567 = !DILocation(line: 1022, column: 12, scope: !460)
!568 = !DILocation(line: 1022, column: 18, scope: !460)
!569 = !DILocation(line: 1023, column: 4, scope: !460)
!570 = !DILocation(line: 1028, column: 8, scope: !571)
!571 = distinct !DILexicalBlock(scope: !460, file: !3, line: 1028, column: 8)
!572 = !DILocation(line: 1028, column: 13, scope: !571)
!573 = !DILocation(line: 1028, column: 8, scope: !460)
!574 = !DILocation(line: 1029, column: 5, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1028, column: 28)
!576 = !DILocation(line: 1029, column: 13, scope: !575)
!577 = !DILocation(line: 1029, column: 19, scope: !575)
!578 = !DILocation(line: 1031, column: 4, scope: !575)
!579 = !DILocation(line: 1031, column: 28, scope: !580)
!580 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1031, column: 15)
!581 = !DILocation(line: 1031, column: 36, scope: !580)
!582 = !DILocation(line: 1031, column: 15, scope: !580)
!583 = !DILocation(line: 1031, column: 42, scope: !580)
!584 = !DILocation(line: 1031, column: 15, scope: !571)
!585 = !DILocation(line: 1032, column: 13, scope: !586)
!586 = distinct !DILexicalBlock(scope: !580, file: !3, line: 1031, column: 57)
!587 = !DILocation(line: 1032, column: 15, scope: !586)
!588 = !DILocation(line: 1032, column: 11, scope: !586)
!589 = !DILocation(line: 1033, column: 5, scope: !586)
!590 = !DILocation(line: 1033, column: 13, scope: !586)
!591 = !DILocation(line: 1033, column: 19, scope: !586)
!592 = !DILocation(line: 1034, column: 4, scope: !586)
!593 = !DILocation(line: 1035, column: 4, scope: !460)
!594 = !DILocation(line: 1039, column: 12, scope: !460)
!595 = !DILocation(line: 1039, column: 4, scope: !460)
!596 = !DILocation(line: 1043, column: 13, scope: !597)
!597 = distinct !DILexicalBlock(scope: !460, file: !3, line: 1039, column: 18)
!598 = !DILocation(line: 1043, column: 15, scope: !597)
!599 = !DILocation(line: 1043, column: 11, scope: !597)
!600 = !DILocation(line: 1044, column: 5, scope: !597)
!601 = !DILocation(line: 1044, column: 13, scope: !597)
!602 = !DILocation(line: 1044, column: 19, scope: !597)
!603 = !DILocation(line: 1047, column: 23, scope: !604)
!604 = distinct !DILexicalBlock(scope: !597, file: !3, line: 1047, column: 9)
!605 = !DILocation(line: 1047, column: 9, scope: !604)
!606 = !DILocation(line: 1047, column: 31, scope: !604)
!607 = !DILocation(line: 1047, column: 9, scope: !597)
!608 = !DILocation(line: 1054, column: 18, scope: !609)
!609 = distinct !DILexicalBlock(scope: !604, file: !3, line: 1047, column: 37)
!610 = !DILocation(line: 1054, column: 27, scope: !609)
!611 = !DILocation(line: 1054, column: 34, scope: !609)
!612 = !DILocation(line: 1054, column: 42, scope: !609)
!613 = !DILocation(line: 1054, column: 49, scope: !609)
!614 = !DILocation(line: 1054, column: 47, scope: !609)
!615 = !DILocation(line: 1054, column: 6, scope: !609)
!616 = !DILocation(line: 1055, column: 6, scope: !609)
!617 = !DILocation(line: 1057, column: 5, scope: !597)
!618 = !DILocation(line: 1061, column: 22, scope: !619)
!619 = distinct !DILexicalBlock(scope: !597, file: !3, line: 1061, column: 9)
!620 = !DILocation(line: 1061, column: 9, scope: !619)
!621 = !DILocation(line: 1061, column: 42, scope: !619)
!622 = !DILocation(line: 1061, column: 9, scope: !597)
!623 = !DILocation(line: 1063, column: 14, scope: !624)
!624 = distinct !DILexicalBlock(scope: !619, file: !3, line: 1062, column: 19)
!625 = !DILocation(line: 1063, column: 16, scope: !624)
!626 = !DILocation(line: 1063, column: 12, scope: !624)
!627 = !DILocation(line: 1064, column: 6, scope: !624)
!628 = !DILocation(line: 1064, column: 14, scope: !624)
!629 = !DILocation(line: 1064, column: 20, scope: !624)
!630 = !DILocation(line: 1065, column: 5, scope: !624)
!631 = !DILocation(line: 1066, column: 6, scope: !632)
!632 = distinct !DILexicalBlock(scope: !619, file: !3, line: 1065, column: 12)
!633 = !DILocation(line: 1066, column: 14, scope: !632)
!634 = !DILocation(line: 1066, column: 20, scope: !632)
!635 = !DILocation(line: 1068, column: 5, scope: !597)
!636 = !DILocation(line: 1074, column: 12, scope: !597)
!637 = !DILocation(line: 1076, column: 7, scope: !597)
!638 = !DILocation(line: 1074, column: 5, scope: !597)
!639 = !DILocation(line: 1079, column: 13, scope: !597)
!640 = !DILocation(line: 1079, column: 15, scope: !597)
!641 = !DILocation(line: 1079, column: 11, scope: !597)
!642 = !DILocation(line: 1080, column: 5, scope: !597)
!643 = !DILocation(line: 1080, column: 13, scope: !597)
!644 = !DILocation(line: 1080, column: 19, scope: !597)
!645 = !DILocation(line: 1085, column: 23, scope: !646)
!646 = distinct !DILexicalBlock(scope: !597, file: !3, line: 1085, column: 9)
!647 = !DILocation(line: 1085, column: 9, scope: !646)
!648 = !DILocation(line: 1085, column: 31, scope: !646)
!649 = !DILocation(line: 1085, column: 9, scope: !597)
!650 = !DILocation(line: 1086, column: 18, scope: !651)
!651 = distinct !DILexicalBlock(scope: !646, file: !3, line: 1085, column: 37)
!652 = !DILocation(line: 1086, column: 27, scope: !651)
!653 = !DILocation(line: 1086, column: 34, scope: !651)
!654 = !DILocation(line: 1086, column: 42, scope: !651)
!655 = !DILocation(line: 1086, column: 49, scope: !651)
!656 = !DILocation(line: 1086, column: 47, scope: !651)
!657 = !DILocation(line: 1086, column: 6, scope: !651)
!658 = !DILocation(line: 1087, column: 6, scope: !651)
!659 = !DILocation(line: 1093, column: 15, scope: !660)
!660 = distinct !DILexicalBlock(scope: !646, file: !3, line: 1088, column: 12)
!661 = !DILocation(line: 1093, column: 6, scope: !660)
!662 = !DILocation(line: 1095, column: 5, scope: !597)
!663 = !DILocation(line: 1097, column: 4, scope: !460)
!664 = !DILocation(line: 1099, column: 2, scope: !452)
!665 = !DILocation(line: 945, column: 33, scope: !447)
!666 = !DILocation(line: 945, column: 2, scope: !447)
!667 = distinct !{!667, !450, !668, !669}
!668 = !DILocation(line: 1099, column: 2, scope: !443)
!669 = !{!"llvm.loop.mustprogress"}
!670 = !DILocation(line: 1102, column: 6, scope: !671)
!671 = distinct !DILexicalBlock(scope: !427, file: !3, line: 1102, column: 6)
!672 = !DILocation(line: 1102, column: 14, scope: !671)
!673 = !DILocation(line: 1102, column: 20, scope: !671)
!674 = !DILocation(line: 1102, column: 41, scope: !671)
!675 = !DILocation(line: 1102, column: 44, scope: !671)
!676 = !DILocation(line: 1102, column: 49, scope: !671)
!677 = !DILocation(line: 1102, column: 46, scope: !671)
!678 = !DILocation(line: 1102, column: 6, scope: !427)
!679 = !DILocation(line: 1103, column: 11, scope: !680)
!680 = distinct !DILexicalBlock(scope: !671, file: !3, line: 1102, column: 56)
!681 = !DILocation(line: 1104, column: 20, scope: !680)
!682 = !DILocation(line: 1104, column: 29, scope: !680)
!683 = !DILocation(line: 1104, column: 27, scope: !680)
!684 = !DILocation(line: 1104, column: 11, scope: !680)
!685 = !DILocation(line: 1104, column: 18, scope: !680)
!686 = !DILocation(line: 1105, column: 18, scope: !680)
!687 = !DILocation(line: 1105, column: 22, scope: !680)
!688 = !DILocation(line: 1105, column: 20, scope: !680)
!689 = !DILocation(line: 1105, column: 11, scope: !680)
!690 = !DILocation(line: 1105, column: 16, scope: !680)
!691 = !DILocation(line: 1106, column: 3, scope: !680)
!692 = !DILocation(line: 1106, column: 11, scope: !680)
!693 = !DILocation(line: 1106, column: 14, scope: !680)
!694 = !DILocation(line: 1106, column: 27, scope: !680)
!695 = !DILocation(line: 1106, column: 35, scope: !680)
!696 = !DILocation(line: 1107, column: 2, scope: !680)
!697 = !DILocation(line: 1108, column: 1, scope: !427)
!698 = distinct !DISubprogram(name: "telnet_iac", scope: !3, file: !3, line: 1169, type: !699, scopeLine: 1169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !7, !23}
!701 = !DILocalVariable(name: "telnet", arg: 1, scope: !698, file: !3, line: 1169, type: !7)
!702 = !DILocation(line: 1169, column: 27, scope: !698)
!703 = !DILocalVariable(name: "cmd", arg: 2, scope: !698, file: !3, line: 1169, type: !23)
!704 = !DILocation(line: 1169, column: 49, scope: !698)
!705 = !DILocalVariable(name: "bytes", scope: !698, file: !3, line: 1170, type: !706)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 16, elements: !182)
!707 = !DILocation(line: 1170, column: 16, scope: !698)
!708 = !DILocation(line: 1171, column: 2, scope: !698)
!709 = !DILocation(line: 1171, column: 11, scope: !698)
!710 = !DILocation(line: 1172, column: 13, scope: !698)
!711 = !DILocation(line: 1172, column: 2, scope: !698)
!712 = !DILocation(line: 1172, column: 11, scope: !698)
!713 = !DILocation(line: 1173, column: 2, scope: !698)
!714 = !DILocation(line: 1174, column: 1, scope: !698)
!715 = distinct !DISubprogram(name: "_send", scope: !3, file: !3, line: 190, type: !414, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !204)
!716 = !DILocalVariable(name: "telnet", arg: 1, scope: !715, file: !3, line: 190, type: !7)
!717 = !DILocation(line: 190, column: 29, scope: !715)
!718 = !DILocalVariable(name: "buffer", arg: 2, scope: !715, file: !3, line: 190, type: !58)
!719 = !DILocation(line: 190, column: 49, scope: !715)
!720 = !DILocalVariable(name: "size", arg: 3, scope: !715, file: !3, line: 191, type: !62)
!721 = !DILocation(line: 191, column: 10, scope: !715)
!722 = !DILocalVariable(name: "ev", scope: !715, file: !3, line: 192, type: !31)
!723 = !DILocation(line: 192, column: 17, scope: !715)
!724 = !DILocation(line: 234, column: 10, scope: !715)
!725 = !DILocation(line: 235, column: 19, scope: !715)
!726 = !DILocation(line: 235, column: 10, scope: !715)
!727 = !DILocation(line: 235, column: 17, scope: !715)
!728 = !DILocation(line: 236, column: 17, scope: !715)
!729 = !DILocation(line: 236, column: 10, scope: !715)
!730 = !DILocation(line: 236, column: 15, scope: !715)
!731 = !DILocation(line: 237, column: 2, scope: !715)
!732 = !DILocation(line: 237, column: 10, scope: !715)
!733 = !DILocation(line: 237, column: 13, scope: !715)
!734 = !DILocation(line: 237, column: 26, scope: !715)
!735 = !DILocation(line: 237, column: 34, scope: !715)
!736 = !DILocation(line: 238, column: 1, scope: !715)
!737 = distinct !DISubprogram(name: "telnet_negotiate", scope: !3, file: !3, line: 1177, type: !738, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !7, !23, !23}
!740 = !DILocalVariable(name: "telnet", arg: 1, scope: !737, file: !3, line: 1177, type: !7)
!741 = !DILocation(line: 1177, column: 33, scope: !737)
!742 = !DILocalVariable(name: "cmd", arg: 2, scope: !737, file: !3, line: 1177, type: !23)
!743 = !DILocation(line: 1177, column: 55, scope: !737)
!744 = !DILocalVariable(name: "telopt", arg: 3, scope: !737, file: !3, line: 1178, type: !23)
!745 = !DILocation(line: 1178, column: 17, scope: !737)
!746 = !DILocalVariable(name: "q", scope: !737, file: !3, line: 1179, type: !177)
!747 = !DILocation(line: 1179, column: 19, scope: !737)
!748 = !DILocation(line: 1182, column: 6, scope: !749)
!749 = distinct !DILexicalBlock(scope: !737, file: !3, line: 1182, column: 6)
!750 = !DILocation(line: 1182, column: 14, scope: !749)
!751 = !DILocation(line: 1182, column: 20, scope: !749)
!752 = !DILocation(line: 1182, column: 6, scope: !737)
!753 = !DILocalVariable(name: "bytes", scope: !754, file: !3, line: 1183, type: !755)
!754 = distinct !DILexicalBlock(scope: !749, file: !3, line: 1182, column: 41)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 3)
!758 = !DILocation(line: 1183, column: 17, scope: !754)
!759 = !DILocation(line: 1184, column: 3, scope: !754)
!760 = !DILocation(line: 1184, column: 12, scope: !754)
!761 = !DILocation(line: 1185, column: 14, scope: !754)
!762 = !DILocation(line: 1185, column: 3, scope: !754)
!763 = !DILocation(line: 1185, column: 12, scope: !754)
!764 = !DILocation(line: 1186, column: 14, scope: !754)
!765 = !DILocation(line: 1186, column: 3, scope: !754)
!766 = !DILocation(line: 1186, column: 12, scope: !754)
!767 = !DILocation(line: 1187, column: 3, scope: !754)
!768 = !DILocation(line: 1188, column: 3, scope: !754)
!769 = !DILocation(line: 1192, column: 19, scope: !737)
!770 = !DILocation(line: 1192, column: 27, scope: !737)
!771 = !DILocation(line: 1192, column: 6, scope: !737)
!772 = !DILocation(line: 1194, column: 10, scope: !737)
!773 = !DILocation(line: 1194, column: 2, scope: !737)
!774 = !DILocation(line: 1197, column: 11, scope: !775)
!775 = distinct !DILexicalBlock(scope: !737, file: !3, line: 1194, column: 15)
!776 = !DILocation(line: 1197, column: 3, scope: !775)
!777 = !DILocation(line: 1199, column: 17, scope: !778)
!778 = distinct !DILexicalBlock(scope: !775, file: !3, line: 1197, column: 20)
!779 = !DILocation(line: 1199, column: 25, scope: !778)
!780 = !DILocation(line: 1199, column: 44, scope: !778)
!781 = !DILocation(line: 1199, column: 4, scope: !778)
!782 = !DILocation(line: 1200, column: 20, scope: !778)
!783 = !DILocation(line: 1200, column: 41, scope: !778)
!784 = !DILocation(line: 1200, column: 4, scope: !778)
!785 = !DILocation(line: 1201, column: 4, scope: !778)
!786 = !DILocation(line: 1203, column: 17, scope: !778)
!787 = !DILocation(line: 1203, column: 25, scope: !778)
!788 = !DILocation(line: 1203, column: 46, scope: !778)
!789 = !DILocation(line: 1203, column: 4, scope: !778)
!790 = !DILocation(line: 1204, column: 4, scope: !778)
!791 = !DILocation(line: 1206, column: 17, scope: !778)
!792 = !DILocation(line: 1206, column: 25, scope: !778)
!793 = !DILocation(line: 1206, column: 44, scope: !778)
!794 = !DILocation(line: 1206, column: 4, scope: !778)
!795 = !DILocation(line: 1207, column: 4, scope: !778)
!796 = !DILocation(line: 1209, column: 3, scope: !775)
!797 = !DILocation(line: 1213, column: 11, scope: !775)
!798 = !DILocation(line: 1213, column: 3, scope: !775)
!799 = !DILocation(line: 1215, column: 17, scope: !800)
!800 = distinct !DILexicalBlock(scope: !775, file: !3, line: 1213, column: 20)
!801 = !DILocation(line: 1215, column: 25, scope: !800)
!802 = !DILocation(line: 1215, column: 43, scope: !800)
!803 = !DILocation(line: 1215, column: 4, scope: !800)
!804 = !DILocation(line: 1216, column: 20, scope: !800)
!805 = !DILocation(line: 1216, column: 41, scope: !800)
!806 = !DILocation(line: 1216, column: 4, scope: !800)
!807 = !DILocation(line: 1217, column: 4, scope: !800)
!808 = !DILocation(line: 1219, column: 17, scope: !800)
!809 = !DILocation(line: 1219, column: 25, scope: !800)
!810 = !DILocation(line: 1219, column: 47, scope: !800)
!811 = !DILocation(line: 1219, column: 4, scope: !800)
!812 = !DILocation(line: 1220, column: 4, scope: !800)
!813 = !DILocation(line: 1222, column: 17, scope: !800)
!814 = !DILocation(line: 1222, column: 25, scope: !800)
!815 = !DILocation(line: 1222, column: 43, scope: !800)
!816 = !DILocation(line: 1222, column: 4, scope: !800)
!817 = !DILocation(line: 1223, column: 4, scope: !800)
!818 = !DILocation(line: 1225, column: 3, scope: !775)
!819 = !DILocation(line: 1229, column: 11, scope: !775)
!820 = !DILocation(line: 1229, column: 3, scope: !775)
!821 = !DILocation(line: 1231, column: 17, scope: !822)
!822 = distinct !DILexicalBlock(scope: !775, file: !3, line: 1229, column: 21)
!823 = !DILocation(line: 1231, column: 25, scope: !822)
!824 = !DILocation(line: 1231, column: 33, scope: !822)
!825 = !DILocation(line: 1231, column: 4, scope: !822)
!826 = !DILocation(line: 1232, column: 20, scope: !822)
!827 = !DILocation(line: 1232, column: 39, scope: !822)
!828 = !DILocation(line: 1232, column: 4, scope: !822)
!829 = !DILocation(line: 1233, column: 4, scope: !822)
!830 = !DILocation(line: 1235, column: 17, scope: !822)
!831 = !DILocation(line: 1235, column: 25, scope: !822)
!832 = !DILocation(line: 1235, column: 33, scope: !822)
!833 = !DILocation(line: 1235, column: 4, scope: !822)
!834 = !DILocation(line: 1236, column: 4, scope: !822)
!835 = !DILocation(line: 1238, column: 17, scope: !822)
!836 = !DILocation(line: 1238, column: 25, scope: !822)
!837 = !DILocation(line: 1238, column: 33, scope: !822)
!838 = !DILocation(line: 1238, column: 4, scope: !822)
!839 = !DILocation(line: 1239, column: 4, scope: !822)
!840 = !DILocation(line: 1241, column: 3, scope: !775)
!841 = !DILocation(line: 1245, column: 11, scope: !775)
!842 = !DILocation(line: 1245, column: 3, scope: !775)
!843 = !DILocation(line: 1247, column: 17, scope: !844)
!844 = distinct !DILexicalBlock(scope: !775, file: !3, line: 1245, column: 21)
!845 = !DILocation(line: 1247, column: 25, scope: !844)
!846 = !DILocation(line: 1247, column: 33, scope: !844)
!847 = !DILocation(line: 1247, column: 4, scope: !844)
!848 = !DILocation(line: 1248, column: 20, scope: !844)
!849 = !DILocation(line: 1248, column: 41, scope: !844)
!850 = !DILocation(line: 1248, column: 4, scope: !844)
!851 = !DILocation(line: 1249, column: 4, scope: !844)
!852 = !DILocation(line: 1251, column: 17, scope: !844)
!853 = !DILocation(line: 1251, column: 25, scope: !844)
!854 = !DILocation(line: 1251, column: 33, scope: !844)
!855 = !DILocation(line: 1251, column: 4, scope: !844)
!856 = !DILocation(line: 1252, column: 4, scope: !844)
!857 = !DILocation(line: 1254, column: 17, scope: !844)
!858 = !DILocation(line: 1254, column: 25, scope: !844)
!859 = !DILocation(line: 1254, column: 33, scope: !844)
!860 = !DILocation(line: 1254, column: 4, scope: !844)
!861 = !DILocation(line: 1255, column: 4, scope: !844)
!862 = !DILocation(line: 1257, column: 3, scope: !775)
!863 = !DILocation(line: 1259, column: 1, scope: !737)
!864 = distinct !DISubprogram(name: "_get_rfc1143", scope: !3, file: !3, line: 272, type: !865, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !204)
!865 = !DISubroutineType(types: !866)
!866 = !{!177, !7, !23}
!867 = !DILocalVariable(name: "telnet", arg: 1, scope: !864, file: !3, line: 272, type: !7)
!868 = !DILocation(line: 272, column: 55, scope: !864)
!869 = !DILocalVariable(name: "telopt", arg: 2, scope: !864, file: !3, line: 273, type: !23)
!870 = !DILocation(line: 273, column: 17, scope: !864)
!871 = !DILocalVariable(name: "empty", scope: !864, file: !3, line: 274, type: !177)
!872 = !DILocation(line: 274, column: 19, scope: !864)
!873 = !DILocalVariable(name: "i", scope: !864, file: !3, line: 275, type: !6)
!874 = !DILocation(line: 275, column: 6, scope: !864)
!875 = !DILocation(line: 278, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !864, file: !3, line: 278, column: 2)
!877 = !DILocation(line: 278, column: 7, scope: !876)
!878 = !DILocation(line: 278, column: 14, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !3, line: 278, column: 2)
!880 = !DILocation(line: 278, column: 19, scope: !879)
!881 = !DILocation(line: 278, column: 27, scope: !879)
!882 = !DILocation(line: 278, column: 16, scope: !879)
!883 = !DILocation(line: 278, column: 2, scope: !876)
!884 = !DILocation(line: 279, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 279, column: 7)
!886 = distinct !DILexicalBlock(scope: !879, file: !3, line: 278, column: 40)
!887 = !DILocation(line: 279, column: 15, scope: !885)
!888 = !DILocation(line: 279, column: 17, scope: !885)
!889 = !DILocation(line: 279, column: 20, scope: !885)
!890 = !DILocation(line: 279, column: 30, scope: !885)
!891 = !DILocation(line: 279, column: 27, scope: !885)
!892 = !DILocation(line: 279, column: 7, scope: !886)
!893 = !DILocation(line: 280, column: 11, scope: !894)
!894 = distinct !DILexicalBlock(scope: !885, file: !3, line: 279, column: 38)
!895 = !DILocation(line: 280, column: 19, scope: !894)
!896 = !DILocation(line: 280, column: 21, scope: !894)
!897 = !DILocation(line: 280, column: 4, scope: !894)
!898 = !DILocation(line: 282, column: 2, scope: !886)
!899 = !DILocation(line: 278, column: 35, scope: !879)
!900 = !DILocation(line: 278, column: 2, scope: !879)
!901 = distinct !{!901, !883, !902, !669}
!902 = !DILocation(line: 282, column: 2, scope: !876)
!903 = !DILocation(line: 285, column: 18, scope: !864)
!904 = !DILocation(line: 285, column: 9, scope: !864)
!905 = !DILocation(line: 285, column: 16, scope: !864)
!906 = !DILocation(line: 286, column: 8, scope: !864)
!907 = !DILocation(line: 286, column: 14, scope: !864)
!908 = !DILocation(line: 287, column: 9, scope: !864)
!909 = !DILocation(line: 287, column: 2, scope: !864)
!910 = !DILocation(line: 288, column: 1, scope: !864)
!911 = distinct !DISubprogram(name: "_set_rfc1143", scope: !3, file: !3, line: 291, type: !912, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !204)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !7, !23, !60, !60}
!914 = !DILocalVariable(name: "telnet", arg: 1, scope: !911, file: !3, line: 291, type: !7)
!915 = !DILocation(line: 291, column: 43, scope: !911)
!916 = !DILocalVariable(name: "telopt", arg: 2, scope: !911, file: !3, line: 291, type: !23)
!917 = !DILocation(line: 291, column: 65, scope: !911)
!918 = !DILocalVariable(name: "us", arg: 3, scope: !911, file: !3, line: 292, type: !60)
!919 = !DILocation(line: 292, column: 8, scope: !911)
!920 = !DILocalVariable(name: "him", arg: 4, scope: !911, file: !3, line: 292, type: !60)
!921 = !DILocation(line: 292, column: 17, scope: !911)
!922 = !DILocalVariable(name: "qtmp", scope: !911, file: !3, line: 293, type: !176)
!923 = !DILocation(line: 293, column: 20, scope: !911)
!924 = !DILocalVariable(name: "i", scope: !911, file: !3, line: 294, type: !6)
!925 = !DILocation(line: 294, column: 6, scope: !911)
!926 = !DILocation(line: 297, column: 9, scope: !927)
!927 = distinct !DILexicalBlock(scope: !911, file: !3, line: 297, column: 2)
!928 = !DILocation(line: 297, column: 7, scope: !927)
!929 = !DILocation(line: 297, column: 14, scope: !930)
!930 = distinct !DILexicalBlock(scope: !927, file: !3, line: 297, column: 2)
!931 = !DILocation(line: 297, column: 19, scope: !930)
!932 = !DILocation(line: 297, column: 27, scope: !930)
!933 = !DILocation(line: 297, column: 16, scope: !930)
!934 = !DILocation(line: 297, column: 2, scope: !927)
!935 = !DILocation(line: 298, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 298, column: 7)
!937 = distinct !DILexicalBlock(scope: !930, file: !3, line: 297, column: 40)
!938 = !DILocation(line: 298, column: 15, scope: !936)
!939 = !DILocation(line: 298, column: 17, scope: !936)
!940 = !DILocation(line: 298, column: 20, scope: !936)
!941 = !DILocation(line: 298, column: 30, scope: !936)
!942 = !DILocation(line: 298, column: 27, scope: !936)
!943 = !DILocation(line: 298, column: 7, scope: !937)
!944 = !DILocation(line: 299, column: 25, scope: !945)
!945 = distinct !DILexicalBlock(scope: !936, file: !3, line: 298, column: 38)
!946 = !DILocation(line: 299, column: 4, scope: !945)
!947 = !DILocation(line: 299, column: 12, scope: !945)
!948 = !DILocation(line: 299, column: 14, scope: !945)
!949 = !DILocation(line: 299, column: 17, scope: !945)
!950 = !DILocation(line: 299, column: 23, scope: !945)
!951 = !DILocation(line: 300, column: 4, scope: !945)
!952 = !DILocation(line: 302, column: 2, scope: !937)
!953 = !DILocation(line: 297, column: 35, scope: !930)
!954 = !DILocation(line: 297, column: 2, scope: !930)
!955 = distinct !{!955, !934, !956, !669}
!956 = !DILocation(line: 302, column: 2, scope: !927)
!957 = !DILocation(line: 310, column: 42, scope: !958)
!958 = distinct !DILexicalBlock(scope: !911, file: !3, line: 310, column: 6)
!959 = !DILocation(line: 310, column: 50, scope: !958)
!960 = !DILocation(line: 311, column: 32, scope: !958)
!961 = !DILocation(line: 311, column: 40, scope: !958)
!962 = !DILocation(line: 311, column: 47, scope: !958)
!963 = !DILocation(line: 311, column: 31, scope: !958)
!964 = !DILocation(line: 311, column: 29, scope: !958)
!965 = !DILocation(line: 310, column: 34, scope: !958)
!966 = !DILocation(line: 310, column: 12, scope: !958)
!967 = !DILocation(line: 311, column: 54, scope: !958)
!968 = !DILocation(line: 310, column: 6, scope: !911)
!969 = !DILocation(line: 312, column: 10, scope: !970)
!970 = distinct !DILexicalBlock(scope: !958, file: !3, line: 311, column: 60)
!971 = !DILocation(line: 313, column: 38, scope: !970)
!972 = !DILocation(line: 313, column: 29, scope: !970)
!973 = !DILocation(line: 312, column: 3, scope: !970)
!974 = !DILocation(line: 314, column: 3, scope: !970)
!975 = !DILocation(line: 316, column: 10, scope: !911)
!976 = !DILocation(line: 316, column: 15, scope: !911)
!977 = !DILocation(line: 316, column: 23, scope: !911)
!978 = !DILocation(line: 316, column: 2, scope: !911)
!979 = !DILocation(line: 317, column: 14, scope: !911)
!980 = !DILocation(line: 317, column: 2, scope: !911)
!981 = !DILocation(line: 317, column: 10, scope: !911)
!982 = !DILocation(line: 317, column: 12, scope: !911)
!983 = !DILocation(line: 318, column: 37, scope: !911)
!984 = !DILocation(line: 318, column: 2, scope: !911)
!985 = !DILocation(line: 318, column: 10, scope: !911)
!986 = !DILocation(line: 318, column: 12, scope: !911)
!987 = !DILocation(line: 318, column: 20, scope: !911)
!988 = !DILocation(line: 318, column: 28, scope: !911)
!989 = !DILocation(line: 318, column: 35, scope: !911)
!990 = !DILocation(line: 319, column: 36, scope: !911)
!991 = !DILocation(line: 319, column: 2, scope: !911)
!992 = !DILocation(line: 319, column: 10, scope: !911)
!993 = !DILocation(line: 319, column: 12, scope: !911)
!994 = !DILocation(line: 319, column: 20, scope: !911)
!995 = !DILocation(line: 319, column: 28, scope: !911)
!996 = !DILocation(line: 319, column: 34, scope: !911)
!997 = !DILocation(line: 320, column: 2, scope: !911)
!998 = !DILocation(line: 320, column: 10, scope: !911)
!999 = !DILocation(line: 320, column: 17, scope: !911)
!1000 = !DILocation(line: 321, column: 1, scope: !911)
!1001 = distinct !DISubprogram(name: "_send_negotiate", scope: !3, file: !3, line: 324, type: !738, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1002 = !DILocalVariable(name: "telnet", arg: 1, scope: !1001, file: !3, line: 324, type: !7)
!1003 = !DILocation(line: 324, column: 46, scope: !1001)
!1004 = !DILocalVariable(name: "cmd", arg: 2, scope: !1001, file: !3, line: 324, type: !23)
!1005 = !DILocation(line: 324, column: 68, scope: !1001)
!1006 = !DILocalVariable(name: "telopt", arg: 3, scope: !1001, file: !3, line: 325, type: !23)
!1007 = !DILocation(line: 325, column: 17, scope: !1001)
!1008 = !DILocalVariable(name: "bytes", scope: !1001, file: !3, line: 326, type: !755)
!1009 = !DILocation(line: 326, column: 16, scope: !1001)
!1010 = !DILocation(line: 327, column: 2, scope: !1001)
!1011 = !DILocation(line: 327, column: 11, scope: !1001)
!1012 = !DILocation(line: 328, column: 13, scope: !1001)
!1013 = !DILocation(line: 328, column: 2, scope: !1001)
!1014 = !DILocation(line: 328, column: 11, scope: !1001)
!1015 = !DILocation(line: 329, column: 13, scope: !1001)
!1016 = !DILocation(line: 329, column: 2, scope: !1001)
!1017 = !DILocation(line: 329, column: 11, scope: !1001)
!1018 = !DILocation(line: 330, column: 2, scope: !1001)
!1019 = !DILocation(line: 331, column: 1, scope: !1001)
!1020 = distinct !DISubprogram(name: "telnet_send", scope: !3, file: !3, line: 1262, type: !414, scopeLine: 1263, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1021 = !DILocalVariable(name: "telnet", arg: 1, scope: !1020, file: !3, line: 1262, type: !7)
!1022 = !DILocation(line: 1262, column: 28, scope: !1020)
!1023 = !DILocalVariable(name: "buffer", arg: 2, scope: !1020, file: !3, line: 1262, type: !58)
!1024 = !DILocation(line: 1262, column: 48, scope: !1020)
!1025 = !DILocalVariable(name: "size", arg: 3, scope: !1020, file: !3, line: 1263, type: !62)
!1026 = !DILocation(line: 1263, column: 10, scope: !1020)
!1027 = !DILocalVariable(name: "i", scope: !1020, file: !3, line: 1264, type: !62)
!1028 = !DILocation(line: 1264, column: 9, scope: !1020)
!1029 = !DILocalVariable(name: "l", scope: !1020, file: !3, line: 1264, type: !62)
!1030 = !DILocation(line: 1264, column: 12, scope: !1020)
!1031 = !DILocation(line: 1266, column: 13, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 1266, column: 2)
!1033 = !DILocation(line: 1266, column: 9, scope: !1032)
!1034 = !DILocation(line: 1266, column: 7, scope: !1032)
!1035 = !DILocation(line: 1266, column: 18, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 1266, column: 2)
!1037 = !DILocation(line: 1266, column: 23, scope: !1036)
!1038 = !DILocation(line: 1266, column: 20, scope: !1036)
!1039 = !DILocation(line: 1266, column: 2, scope: !1032)
!1040 = !DILocation(line: 1268, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 1268, column: 7)
!1042 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 1266, column: 34)
!1043 = !DILocation(line: 1268, column: 14, scope: !1041)
!1044 = !DILocation(line: 1268, column: 17, scope: !1041)
!1045 = !DILocation(line: 1268, column: 7, scope: !1042)
!1046 = !DILocation(line: 1270, column: 8, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 1270, column: 8)
!1048 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 1268, column: 38)
!1049 = !DILocation(line: 1270, column: 13, scope: !1047)
!1050 = !DILocation(line: 1270, column: 10, scope: !1047)
!1051 = !DILocation(line: 1270, column: 8, scope: !1048)
!1052 = !DILocation(line: 1271, column: 11, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 1270, column: 16)
!1054 = !DILocation(line: 1271, column: 19, scope: !1053)
!1055 = !DILocation(line: 1271, column: 28, scope: !1053)
!1056 = !DILocation(line: 1271, column: 26, scope: !1053)
!1057 = !DILocation(line: 1271, column: 31, scope: !1053)
!1058 = !DILocation(line: 1271, column: 35, scope: !1053)
!1059 = !DILocation(line: 1271, column: 33, scope: !1053)
!1060 = !DILocation(line: 1271, column: 5, scope: !1053)
!1061 = !DILocation(line: 1272, column: 4, scope: !1053)
!1062 = !DILocation(line: 1273, column: 8, scope: !1048)
!1063 = !DILocation(line: 1273, column: 10, scope: !1048)
!1064 = !DILocation(line: 1273, column: 6, scope: !1048)
!1065 = !DILocation(line: 1276, column: 15, scope: !1048)
!1066 = !DILocation(line: 1276, column: 4, scope: !1048)
!1067 = !DILocation(line: 1277, column: 3, scope: !1048)
!1068 = !DILocation(line: 1278, column: 2, scope: !1042)
!1069 = !DILocation(line: 1266, column: 29, scope: !1036)
!1070 = !DILocation(line: 1266, column: 2, scope: !1036)
!1071 = distinct !{!1071, !1039, !1072, !669}
!1072 = !DILocation(line: 1278, column: 2, scope: !1032)
!1073 = !DILocation(line: 1281, column: 6, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 1281, column: 6)
!1075 = !DILocation(line: 1281, column: 11, scope: !1074)
!1076 = !DILocation(line: 1281, column: 8, scope: !1074)
!1077 = !DILocation(line: 1281, column: 6, scope: !1020)
!1078 = !DILocation(line: 1282, column: 9, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 1281, column: 14)
!1080 = !DILocation(line: 1282, column: 17, scope: !1079)
!1081 = !DILocation(line: 1282, column: 26, scope: !1079)
!1082 = !DILocation(line: 1282, column: 24, scope: !1079)
!1083 = !DILocation(line: 1282, column: 29, scope: !1079)
!1084 = !DILocation(line: 1282, column: 33, scope: !1079)
!1085 = !DILocation(line: 1282, column: 31, scope: !1079)
!1086 = !DILocation(line: 1282, column: 3, scope: !1079)
!1087 = !DILocation(line: 1283, column: 2, scope: !1079)
!1088 = !DILocation(line: 1284, column: 1, scope: !1020)
!1089 = distinct !DISubprogram(name: "telnet_begin_sb", scope: !3, file: !3, line: 1287, type: !699, scopeLine: 1287, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1090 = !DILocalVariable(name: "telnet", arg: 1, scope: !1089, file: !3, line: 1287, type: !7)
!1091 = !DILocation(line: 1287, column: 32, scope: !1089)
!1092 = !DILocalVariable(name: "telopt", arg: 2, scope: !1089, file: !3, line: 1287, type: !23)
!1093 = !DILocation(line: 1287, column: 54, scope: !1089)
!1094 = !DILocalVariable(name: "sb", scope: !1089, file: !3, line: 1288, type: !755)
!1095 = !DILocation(line: 1288, column: 16, scope: !1089)
!1096 = !DILocation(line: 1289, column: 2, scope: !1089)
!1097 = !DILocation(line: 1289, column: 8, scope: !1089)
!1098 = !DILocation(line: 1290, column: 2, scope: !1089)
!1099 = !DILocation(line: 1290, column: 8, scope: !1089)
!1100 = !DILocation(line: 1291, column: 10, scope: !1089)
!1101 = !DILocation(line: 1291, column: 2, scope: !1089)
!1102 = !DILocation(line: 1291, column: 8, scope: !1089)
!1103 = !DILocation(line: 1292, column: 2, scope: !1089)
!1104 = !DILocation(line: 1293, column: 1, scope: !1089)
!1105 = distinct !DISubprogram(name: "telnet_subnegotiation", scope: !3, file: !3, line: 1297, type: !1106, scopeLine: 1298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{null, !7, !23, !58, !62}
!1108 = !DILocalVariable(name: "telnet", arg: 1, scope: !1105, file: !3, line: 1297, type: !7)
!1109 = !DILocation(line: 1297, column: 38, scope: !1105)
!1110 = !DILocalVariable(name: "telopt", arg: 2, scope: !1105, file: !3, line: 1297, type: !23)
!1111 = !DILocation(line: 1297, column: 60, scope: !1105)
!1112 = !DILocalVariable(name: "buffer", arg: 3, scope: !1105, file: !3, line: 1298, type: !58)
!1113 = !DILocation(line: 1298, column: 15, scope: !1105)
!1114 = !DILocalVariable(name: "size", arg: 4, scope: !1105, file: !3, line: 1298, type: !62)
!1115 = !DILocation(line: 1298, column: 30, scope: !1105)
!1116 = !DILocalVariable(name: "bytes", scope: !1105, file: !3, line: 1299, type: !1117)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 40, elements: !260)
!1118 = !DILocation(line: 1299, column: 16, scope: !1105)
!1119 = !DILocation(line: 1300, column: 2, scope: !1105)
!1120 = !DILocation(line: 1300, column: 11, scope: !1105)
!1121 = !DILocation(line: 1301, column: 2, scope: !1105)
!1122 = !DILocation(line: 1301, column: 11, scope: !1105)
!1123 = !DILocation(line: 1302, column: 13, scope: !1105)
!1124 = !DILocation(line: 1302, column: 2, scope: !1105)
!1125 = !DILocation(line: 1302, column: 11, scope: !1105)
!1126 = !DILocation(line: 1303, column: 2, scope: !1105)
!1127 = !DILocation(line: 1303, column: 11, scope: !1105)
!1128 = !DILocation(line: 1304, column: 2, scope: !1105)
!1129 = !DILocation(line: 1304, column: 11, scope: !1105)
!1130 = !DILocation(line: 1306, column: 2, scope: !1105)
!1131 = !DILocation(line: 1307, column: 14, scope: !1105)
!1132 = !DILocation(line: 1307, column: 22, scope: !1105)
!1133 = !DILocation(line: 1307, column: 30, scope: !1105)
!1134 = !DILocation(line: 1307, column: 2, scope: !1105)
!1135 = !DILocation(line: 1308, column: 2, scope: !1105)
!1136 = !DILocation(line: 1327, column: 1, scope: !1105)
!1137 = distinct !DISubprogram(name: "telnet_begin_compress2", scope: !3, file: !3, line: 1329, type: !202, scopeLine: 1329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1138 = !DILocalVariable(name: "telnet", arg: 1, scope: !1137, file: !3, line: 1329, type: !7)
!1139 = !DILocation(line: 1329, column: 39, scope: !1137)
!1140 = !DILocation(line: 1330, column: 2, scope: !1137)
!1141 = !DILocation(line: 1330, column: 2, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 1330, column: 2)
!1143 = !DILocation(line: 1355, column: 1, scope: !1137)
!1144 = !DILocalVariable(name: "telnet", arg: 1, scope: !2, file: !3, line: 1358, type: !7)
!1145 = !DILocation(line: 1358, column: 30, scope: !2)
!1146 = !DILocalVariable(name: "fmt", arg: 2, scope: !2, file: !3, line: 1358, type: !58)
!1147 = !DILocation(line: 1358, column: 50, scope: !2)
!1148 = !DILocalVariable(name: "va", arg: 3, scope: !2, file: !3, line: 1358, type: !163)
!1149 = !DILocation(line: 1358, column: 63, scope: !2)
!1150 = !DILocalVariable(name: "buffer", scope: !2, file: !3, line: 1361, type: !1151)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 8192, elements: !1152)
!1152 = !{!1153}
!1153 = !DISubrange(count: 1024)
!1154 = !DILocation(line: 1361, column: 7, scope: !2)
!1155 = !DILocalVariable(name: "output", scope: !2, file: !3, line: 1362, type: !145)
!1156 = !DILocation(line: 1362, column: 8, scope: !2)
!1157 = !DILocation(line: 1362, column: 17, scope: !2)
!1158 = !DILocalVariable(name: "rs", scope: !2, file: !3, line: 1363, type: !6)
!1159 = !DILocation(line: 1363, column: 6, scope: !2)
!1160 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 1363, type: !6)
!1161 = !DILocation(line: 1363, column: 10, scope: !2)
!1162 = !DILocalVariable(name: "l", scope: !2, file: !3, line: 1363, type: !6)
!1163 = !DILocation(line: 1363, column: 13, scope: !2)
!1164 = !DILocation(line: 1366, column: 17, scope: !2)
!1165 = !DILocation(line: 1366, column: 41, scope: !2)
!1166 = !DILocation(line: 1366, column: 46, scope: !2)
!1167 = !DILocation(line: 1366, column: 7, scope: !2)
!1168 = !DILocation(line: 1366, column: 5, scope: !2)
!1169 = !DILocation(line: 1367, column: 14, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1367, column: 6)
!1171 = !DILocation(line: 1367, column: 6, scope: !1170)
!1172 = !DILocation(line: 1367, column: 17, scope: !1170)
!1173 = !DILocation(line: 1367, column: 6, scope: !2)
!1174 = !DILocation(line: 1368, column: 26, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 1367, column: 36)
!1176 = !DILocation(line: 1368, column: 29, scope: !1175)
!1177 = !DILocation(line: 1368, column: 19, scope: !1175)
!1178 = !DILocation(line: 1368, column: 10, scope: !1175)
!1179 = !DILocation(line: 1369, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 1369, column: 7)
!1181 = !DILocation(line: 1369, column: 14, scope: !1180)
!1182 = !DILocation(line: 1369, column: 7, scope: !1175)
!1183 = !DILocation(line: 1370, column: 11, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 1369, column: 20)
!1185 = !DILocation(line: 1371, column: 38, scope: !1184)
!1186 = !DILocation(line: 1371, column: 29, scope: !1184)
!1187 = !DILocation(line: 1370, column: 4, scope: !1184)
!1188 = !DILocation(line: 1372, column: 4, scope: !1184)
!1189 = !DILocation(line: 1374, column: 18, scope: !1175)
!1190 = !DILocation(line: 1374, column: 26, scope: !1175)
!1191 = !DILocation(line: 1374, column: 29, scope: !1175)
!1192 = !DILocation(line: 1374, column: 34, scope: !1175)
!1193 = !DILocation(line: 1374, column: 39, scope: !1175)
!1194 = !DILocation(line: 1374, column: 8, scope: !1175)
!1195 = !DILocation(line: 1374, column: 6, scope: !1175)
!1196 = !DILocation(line: 1375, column: 2, scope: !1175)
!1197 = !DILocation(line: 1378, column: 13, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1378, column: 2)
!1199 = !DILocation(line: 1378, column: 9, scope: !1198)
!1200 = !DILocation(line: 1378, column: 7, scope: !1198)
!1201 = !DILocation(line: 1378, column: 18, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 1378, column: 2)
!1203 = !DILocation(line: 1378, column: 23, scope: !1202)
!1204 = !DILocation(line: 1378, column: 20, scope: !1202)
!1205 = !DILocation(line: 1378, column: 2, scope: !1198)
!1206 = !DILocation(line: 1380, column: 7, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 1380, column: 7)
!1208 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1378, column: 32)
!1209 = !DILocation(line: 1380, column: 14, scope: !1207)
!1210 = !DILocation(line: 1380, column: 17, scope: !1207)
!1211 = !DILocation(line: 1380, column: 37, scope: !1207)
!1212 = !DILocation(line: 1380, column: 40, scope: !1207)
!1213 = !DILocation(line: 1380, column: 47, scope: !1207)
!1214 = !DILocation(line: 1380, column: 50, scope: !1207)
!1215 = !DILocation(line: 1380, column: 58, scope: !1207)
!1216 = !DILocation(line: 1381, column: 5, scope: !1207)
!1217 = !DILocation(line: 1381, column: 12, scope: !1207)
!1218 = !DILocation(line: 1381, column: 15, scope: !1207)
!1219 = !DILocation(line: 1380, column: 7, scope: !1208)
!1220 = !DILocation(line: 1383, column: 8, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1383, column: 8)
!1222 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 1381, column: 24)
!1223 = !DILocation(line: 1383, column: 13, scope: !1221)
!1224 = !DILocation(line: 1383, column: 10, scope: !1221)
!1225 = !DILocation(line: 1383, column: 8, scope: !1222)
!1226 = !DILocation(line: 1384, column: 11, scope: !1221)
!1227 = !DILocation(line: 1384, column: 19, scope: !1221)
!1228 = !DILocation(line: 1384, column: 28, scope: !1221)
!1229 = !DILocation(line: 1384, column: 26, scope: !1221)
!1230 = !DILocation(line: 1384, column: 31, scope: !1221)
!1231 = !DILocation(line: 1384, column: 35, scope: !1221)
!1232 = !DILocation(line: 1384, column: 33, scope: !1221)
!1233 = !DILocation(line: 1384, column: 5, scope: !1221)
!1234 = !DILocation(line: 1385, column: 8, scope: !1222)
!1235 = !DILocation(line: 1385, column: 10, scope: !1222)
!1236 = !DILocation(line: 1385, column: 6, scope: !1222)
!1237 = !DILocation(line: 1388, column: 8, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1388, column: 8)
!1239 = !DILocation(line: 1388, column: 15, scope: !1238)
!1240 = !DILocation(line: 1388, column: 18, scope: !1238)
!1241 = !DILocation(line: 1388, column: 8, scope: !1222)
!1242 = !DILocation(line: 1389, column: 16, scope: !1238)
!1243 = !DILocation(line: 1389, column: 5, scope: !1238)
!1244 = !DILocation(line: 1391, column: 13, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1391, column: 13)
!1246 = !DILocation(line: 1391, column: 20, scope: !1245)
!1247 = !DILocation(line: 1391, column: 23, scope: !1245)
!1248 = !DILocation(line: 1391, column: 13, scope: !1238)
!1249 = !DILocation(line: 1392, column: 11, scope: !1245)
!1250 = !DILocation(line: 1392, column: 5, scope: !1245)
!1251 = !DILocation(line: 1394, column: 13, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 1394, column: 13)
!1253 = !DILocation(line: 1394, column: 20, scope: !1252)
!1254 = !DILocation(line: 1394, column: 23, scope: !1252)
!1255 = !DILocation(line: 1394, column: 13, scope: !1245)
!1256 = !DILocation(line: 1395, column: 11, scope: !1252)
!1257 = !DILocation(line: 1395, column: 5, scope: !1252)
!1258 = !DILocation(line: 1396, column: 3, scope: !1222)
!1259 = !DILocation(line: 1397, column: 2, scope: !1208)
!1260 = !DILocation(line: 1378, column: 27, scope: !1202)
!1261 = !DILocation(line: 1378, column: 2, scope: !1202)
!1262 = distinct !{!1262, !1205, !1263, !669}
!1263 = !DILocation(line: 1397, column: 2, scope: !1198)
!1264 = !DILocation(line: 1400, column: 6, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1400, column: 6)
!1266 = !DILocation(line: 1400, column: 11, scope: !1265)
!1267 = !DILocation(line: 1400, column: 8, scope: !1265)
!1268 = !DILocation(line: 1400, column: 6, scope: !2)
!1269 = !DILocation(line: 1401, column: 9, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 1400, column: 14)
!1271 = !DILocation(line: 1401, column: 17, scope: !1270)
!1272 = !DILocation(line: 1401, column: 26, scope: !1270)
!1273 = !DILocation(line: 1401, column: 24, scope: !1270)
!1274 = !DILocation(line: 1401, column: 29, scope: !1270)
!1275 = !DILocation(line: 1401, column: 33, scope: !1270)
!1276 = !DILocation(line: 1401, column: 31, scope: !1270)
!1277 = !DILocation(line: 1401, column: 3, scope: !1270)
!1278 = !DILocation(line: 1402, column: 2, scope: !1270)
!1279 = !DILocation(line: 1405, column: 6, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1405, column: 6)
!1281 = !DILocation(line: 1405, column: 16, scope: !1280)
!1282 = !DILocation(line: 1405, column: 13, scope: !1280)
!1283 = !DILocation(line: 1405, column: 6, scope: !2)
!1284 = !DILocation(line: 1406, column: 8, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 1405, column: 24)
!1286 = !DILocation(line: 1406, column: 3, scope: !1285)
!1287 = !DILocation(line: 1407, column: 2, scope: !1285)
!1288 = !DILocation(line: 1409, column: 9, scope: !2)
!1289 = !DILocation(line: 1409, column: 2, scope: !2)
!1290 = !DILocation(line: 1410, column: 1, scope: !2)
!1291 = distinct !DISubprogram(name: "_error", scope: !3, file: !3, line: 123, type: !1292, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!74, !7, !36, !58, !74, !6, !58, null}
!1294 = !DILocalVariable(name: "telnet", arg: 1, scope: !1291, file: !3, line: 123, type: !7)
!1295 = !DILocation(line: 123, column: 40, scope: !1291)
!1296 = !DILocalVariable(name: "line", arg: 2, scope: !1291, file: !3, line: 123, type: !36)
!1297 = !DILocation(line: 123, column: 57, scope: !1291)
!1298 = !DILocalVariable(name: "func", arg: 3, scope: !1291, file: !3, line: 124, type: !58)
!1299 = !DILocation(line: 124, column: 15, scope: !1291)
!1300 = !DILocalVariable(name: "err", arg: 4, scope: !1291, file: !3, line: 124, type: !74)
!1301 = !DILocation(line: 124, column: 36, scope: !1291)
!1302 = !DILocalVariable(name: "fatal", arg: 5, scope: !1291, file: !3, line: 124, type: !6)
!1303 = !DILocation(line: 124, column: 45, scope: !1291)
!1304 = !DILocalVariable(name: "fmt", arg: 6, scope: !1291, file: !3, line: 124, type: !58)
!1305 = !DILocation(line: 124, column: 64, scope: !1291)
!1306 = !DILocalVariable(name: "ev", scope: !1291, file: !3, line: 126, type: !31)
!1307 = !DILocation(line: 126, column: 17, scope: !1291)
!1308 = !DILocalVariable(name: "buffer", scope: !1291, file: !3, line: 127, type: !1309)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 4096, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 512)
!1312 = !DILocation(line: 127, column: 7, scope: !1291)
!1313 = !DILocalVariable(name: "va", scope: !1291, file: !3, line: 128, type: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1315, line: 22, baseType: !1316)
!1315 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stdarg.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !167, baseType: !1317)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 192, elements: !309)
!1318 = !DILocation(line: 128, column: 10, scope: !1291)
!1319 = !DILocation(line: 131, column: 2, scope: !1291)
!1320 = !DILocation(line: 132, column: 12, scope: !1291)
!1321 = !DILocation(line: 132, column: 36, scope: !1291)
!1322 = !DILocation(line: 132, column: 41, scope: !1291)
!1323 = !DILocation(line: 132, column: 2, scope: !1291)
!1324 = !DILocation(line: 133, column: 2, scope: !1291)
!1325 = !DILocation(line: 136, column: 12, scope: !1291)
!1326 = !DILocation(line: 136, column: 10, scope: !1291)
!1327 = !DILocation(line: 137, column: 11, scope: !1291)
!1328 = !DILocation(line: 137, column: 16, scope: !1291)
!1329 = !DILocation(line: 138, column: 18, scope: !1291)
!1330 = !DILocation(line: 138, column: 11, scope: !1291)
!1331 = !DILocation(line: 138, column: 16, scope: !1291)
!1332 = !DILocation(line: 139, column: 18, scope: !1291)
!1333 = !DILocation(line: 139, column: 11, scope: !1291)
!1334 = !DILocation(line: 139, column: 16, scope: !1291)
!1335 = !DILocation(line: 140, column: 17, scope: !1291)
!1336 = !DILocation(line: 140, column: 11, scope: !1291)
!1337 = !DILocation(line: 140, column: 15, scope: !1291)
!1338 = !DILocation(line: 141, column: 2, scope: !1291)
!1339 = !DILocation(line: 141, column: 10, scope: !1291)
!1340 = !DILocation(line: 141, column: 13, scope: !1291)
!1341 = !DILocation(line: 141, column: 26, scope: !1291)
!1342 = !DILocation(line: 141, column: 34, scope: !1291)
!1343 = !DILocation(line: 143, column: 9, scope: !1291)
!1344 = !DILocation(line: 143, column: 2, scope: !1291)
!1345 = distinct !DISubprogram(name: "telnet_printf", scope: !3, file: !3, line: 1413, type: !1346, scopeLine: 1413, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!6, !7, !58, null}
!1348 = !DILocalVariable(name: "telnet", arg: 1, scope: !1345, file: !3, line: 1413, type: !7)
!1349 = !DILocation(line: 1413, column: 29, scope: !1345)
!1350 = !DILocalVariable(name: "fmt", arg: 2, scope: !1345, file: !3, line: 1413, type: !58)
!1351 = !DILocation(line: 1413, column: 49, scope: !1345)
!1352 = !DILocalVariable(name: "va", scope: !1345, file: !3, line: 1414, type: !1314)
!1353 = !DILocation(line: 1414, column: 10, scope: !1345)
!1354 = !DILocalVariable(name: "rs", scope: !1345, file: !3, line: 1415, type: !6)
!1355 = !DILocation(line: 1415, column: 6, scope: !1345)
!1356 = !DILocation(line: 1417, column: 2, scope: !1345)
!1357 = !DILocation(line: 1418, column: 22, scope: !1345)
!1358 = !DILocation(line: 1418, column: 30, scope: !1345)
!1359 = !DILocation(line: 1418, column: 35, scope: !1345)
!1360 = !DILocation(line: 1418, column: 7, scope: !1345)
!1361 = !DILocation(line: 1418, column: 5, scope: !1345)
!1362 = !DILocation(line: 1419, column: 2, scope: !1345)
!1363 = !DILocation(line: 1421, column: 9, scope: !1345)
!1364 = !DILocation(line: 1421, column: 2, scope: !1345)
!1365 = distinct !DISubprogram(name: "telnet_raw_vprintf", scope: !3, file: !3, line: 1425, type: !4, scopeLine: 1425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1366 = !DILocalVariable(name: "telnet", arg: 1, scope: !1365, file: !3, line: 1425, type: !7)
!1367 = !DILocation(line: 1425, column: 34, scope: !1365)
!1368 = !DILocalVariable(name: "fmt", arg: 2, scope: !1365, file: !3, line: 1425, type: !58)
!1369 = !DILocation(line: 1425, column: 54, scope: !1365)
!1370 = !DILocalVariable(name: "va", arg: 3, scope: !1365, file: !3, line: 1425, type: !163)
!1371 = !DILocation(line: 1425, column: 67, scope: !1365)
!1372 = !DILocalVariable(name: "buffer", scope: !1365, file: !3, line: 1426, type: !1151)
!1373 = !DILocation(line: 1426, column: 7, scope: !1365)
!1374 = !DILocalVariable(name: "output", scope: !1365, file: !3, line: 1427, type: !145)
!1375 = !DILocation(line: 1427, column: 8, scope: !1365)
!1376 = !DILocation(line: 1427, column: 17, scope: !1365)
!1377 = !DILocalVariable(name: "rs", scope: !1365, file: !3, line: 1428, type: !6)
!1378 = !DILocation(line: 1428, column: 6, scope: !1365)
!1379 = !DILocation(line: 1431, column: 17, scope: !1365)
!1380 = !DILocation(line: 1431, column: 41, scope: !1365)
!1381 = !DILocation(line: 1431, column: 46, scope: !1365)
!1382 = !DILocation(line: 1431, column: 7, scope: !1365)
!1383 = !DILocation(line: 1431, column: 5, scope: !1365)
!1384 = !DILocation(line: 1432, column: 14, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 1432, column: 6)
!1386 = !DILocation(line: 1432, column: 6, scope: !1385)
!1387 = !DILocation(line: 1432, column: 17, scope: !1385)
!1388 = !DILocation(line: 1432, column: 6, scope: !1365)
!1389 = !DILocation(line: 1433, column: 26, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 1432, column: 36)
!1391 = !DILocation(line: 1433, column: 29, scope: !1390)
!1392 = !DILocation(line: 1433, column: 19, scope: !1390)
!1393 = !DILocation(line: 1433, column: 10, scope: !1390)
!1394 = !DILocation(line: 1434, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 1434, column: 7)
!1396 = !DILocation(line: 1434, column: 14, scope: !1395)
!1397 = !DILocation(line: 1434, column: 7, scope: !1390)
!1398 = !DILocation(line: 1435, column: 11, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 1434, column: 20)
!1400 = !DILocation(line: 1436, column: 38, scope: !1399)
!1401 = !DILocation(line: 1436, column: 29, scope: !1399)
!1402 = !DILocation(line: 1435, column: 4, scope: !1399)
!1403 = !DILocation(line: 1437, column: 4, scope: !1399)
!1404 = !DILocation(line: 1439, column: 18, scope: !1390)
!1405 = !DILocation(line: 1439, column: 26, scope: !1390)
!1406 = !DILocation(line: 1439, column: 29, scope: !1390)
!1407 = !DILocation(line: 1439, column: 34, scope: !1390)
!1408 = !DILocation(line: 1439, column: 39, scope: !1390)
!1409 = !DILocation(line: 1439, column: 8, scope: !1390)
!1410 = !DILocation(line: 1439, column: 6, scope: !1390)
!1411 = !DILocation(line: 1440, column: 2, scope: !1390)
!1412 = !DILocation(line: 1443, column: 14, scope: !1365)
!1413 = !DILocation(line: 1443, column: 22, scope: !1365)
!1414 = !DILocation(line: 1443, column: 30, scope: !1365)
!1415 = !DILocation(line: 1443, column: 2, scope: !1365)
!1416 = !DILocation(line: 1446, column: 6, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 1446, column: 6)
!1418 = !DILocation(line: 1446, column: 16, scope: !1417)
!1419 = !DILocation(line: 1446, column: 13, scope: !1417)
!1420 = !DILocation(line: 1446, column: 6, scope: !1365)
!1421 = !DILocation(line: 1447, column: 8, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 1446, column: 24)
!1423 = !DILocation(line: 1447, column: 3, scope: !1422)
!1424 = !DILocation(line: 1448, column: 2, scope: !1422)
!1425 = !DILocation(line: 1450, column: 9, scope: !1365)
!1426 = !DILocation(line: 1450, column: 2, scope: !1365)
!1427 = !DILocation(line: 1451, column: 1, scope: !1365)
!1428 = distinct !DISubprogram(name: "telnet_raw_printf", scope: !3, file: !3, line: 1454, type: !1346, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1429 = !DILocalVariable(name: "telnet", arg: 1, scope: !1428, file: !3, line: 1454, type: !7)
!1430 = !DILocation(line: 1454, column: 33, scope: !1428)
!1431 = !DILocalVariable(name: "fmt", arg: 2, scope: !1428, file: !3, line: 1454, type: !58)
!1432 = !DILocation(line: 1454, column: 53, scope: !1428)
!1433 = !DILocalVariable(name: "va", scope: !1428, file: !3, line: 1455, type: !1314)
!1434 = !DILocation(line: 1455, column: 10, scope: !1428)
!1435 = !DILocalVariable(name: "rs", scope: !1428, file: !3, line: 1456, type: !6)
!1436 = !DILocation(line: 1456, column: 6, scope: !1428)
!1437 = !DILocation(line: 1458, column: 2, scope: !1428)
!1438 = !DILocation(line: 1459, column: 26, scope: !1428)
!1439 = !DILocation(line: 1459, column: 34, scope: !1428)
!1440 = !DILocation(line: 1459, column: 39, scope: !1428)
!1441 = !DILocation(line: 1459, column: 7, scope: !1428)
!1442 = !DILocation(line: 1459, column: 5, scope: !1428)
!1443 = !DILocation(line: 1460, column: 2, scope: !1428)
!1444 = !DILocation(line: 1462, column: 9, scope: !1428)
!1445 = !DILocation(line: 1462, column: 2, scope: !1428)
!1446 = distinct !DISubprogram(name: "telnet_begin_newenviron", scope: !3, file: !3, line: 1466, type: !699, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1447 = !DILocalVariable(name: "telnet", arg: 1, scope: !1446, file: !3, line: 1466, type: !7)
!1448 = !DILocation(line: 1466, column: 40, scope: !1446)
!1449 = !DILocalVariable(name: "cmd", arg: 2, scope: !1446, file: !3, line: 1466, type: !23)
!1450 = !DILocation(line: 1466, column: 62, scope: !1446)
!1451 = !DILocation(line: 1467, column: 18, scope: !1446)
!1452 = !DILocation(line: 1467, column: 2, scope: !1446)
!1453 = !DILocation(line: 1468, column: 14, scope: !1446)
!1454 = !DILocation(line: 1468, column: 2, scope: !1446)
!1455 = !DILocation(line: 1469, column: 1, scope: !1446)
!1456 = distinct !DISubprogram(name: "telnet_newenviron_value", scope: !3, file: !3, line: 1472, type: !1457, scopeLine: 1473, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{null, !7, !23, !58}
!1459 = !DILocalVariable(name: "telnet", arg: 1, scope: !1456, file: !3, line: 1472, type: !7)
!1460 = !DILocation(line: 1472, column: 40, scope: !1456)
!1461 = !DILocalVariable(name: "type", arg: 2, scope: !1456, file: !3, line: 1472, type: !23)
!1462 = !DILocation(line: 1472, column: 62, scope: !1456)
!1463 = !DILocalVariable(name: "string", arg: 3, scope: !1456, file: !3, line: 1473, type: !58)
!1464 = !DILocation(line: 1473, column: 15, scope: !1456)
!1465 = !DILocation(line: 1474, column: 14, scope: !1456)
!1466 = !DILocation(line: 1474, column: 2, scope: !1456)
!1467 = !DILocation(line: 1476, column: 6, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 1476, column: 6)
!1469 = !DILocation(line: 1476, column: 13, scope: !1468)
!1470 = !DILocation(line: 1476, column: 6, scope: !1456)
!1471 = !DILocation(line: 1477, column: 15, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 1476, column: 19)
!1473 = !DILocation(line: 1477, column: 23, scope: !1472)
!1474 = !DILocation(line: 1477, column: 38, scope: !1472)
!1475 = !DILocation(line: 1477, column: 31, scope: !1472)
!1476 = !DILocation(line: 1477, column: 3, scope: !1472)
!1477 = !DILocation(line: 1478, column: 2, scope: !1472)
!1478 = !DILocation(line: 1479, column: 1, scope: !1456)
!1479 = !DILocalVariable(name: "telnet", arg: 1, scope: !201, file: !3, line: 1482, type: !7)
!1480 = !DILocation(line: 1482, column: 34, scope: !201)
!1481 = !DILocation(line: 1485, column: 2, scope: !201)
!1482 = !DILocation(line: 1486, column: 1, scope: !201)
!1483 = !DILocalVariable(name: "telnet", arg: 1, scope: !211, file: !3, line: 1489, type: !7)
!1484 = !DILocation(line: 1489, column: 32, scope: !211)
!1485 = !DILocalVariable(name: "ttype", arg: 2, scope: !211, file: !3, line: 1489, type: !58)
!1486 = !DILocation(line: 1489, column: 52, scope: !211)
!1487 = !DILocation(line: 1492, column: 2, scope: !211)
!1488 = !DILocation(line: 1493, column: 8, scope: !211)
!1489 = !DILocation(line: 1493, column: 16, scope: !211)
!1490 = !DILocation(line: 1493, column: 30, scope: !211)
!1491 = !DILocation(line: 1493, column: 23, scope: !211)
!1492 = !DILocation(line: 1493, column: 2, scope: !211)
!1493 = !DILocation(line: 1494, column: 2, scope: !211)
!1494 = !DILocation(line: 1495, column: 1, scope: !211)
!1495 = distinct !DISubprogram(name: "telnet_send_zmp", scope: !3, file: !3, line: 1498, type: !1496, scopeLine: 1498, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{null, !7, !62, !105}
!1498 = !DILocalVariable(name: "telnet", arg: 1, scope: !1495, file: !3, line: 1498, type: !7)
!1499 = !DILocation(line: 1498, column: 32, scope: !1495)
!1500 = !DILocalVariable(name: "argc", arg: 2, scope: !1495, file: !3, line: 1498, type: !62)
!1501 = !DILocation(line: 1498, column: 47, scope: !1495)
!1502 = !DILocalVariable(name: "argv", arg: 3, scope: !1495, file: !3, line: 1498, type: !105)
!1503 = !DILocation(line: 1498, column: 66, scope: !1495)
!1504 = !DILocalVariable(name: "i", scope: !1495, file: !3, line: 1499, type: !62)
!1505 = !DILocation(line: 1499, column: 9, scope: !1495)
!1506 = !DILocation(line: 1502, column: 19, scope: !1495)
!1507 = !DILocation(line: 1502, column: 27, scope: !1495)
!1508 = !DILocation(line: 1502, column: 2, scope: !1495)
!1509 = !DILocation(line: 1505, column: 9, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 1505, column: 2)
!1511 = !DILocation(line: 1505, column: 7, scope: !1510)
!1512 = !DILocation(line: 1505, column: 14, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 1505, column: 2)
!1514 = !DILocation(line: 1505, column: 19, scope: !1513)
!1515 = !DILocation(line: 1505, column: 16, scope: !1513)
!1516 = !DILocation(line: 1505, column: 2, scope: !1510)
!1517 = !DILocation(line: 1506, column: 18, scope: !1513)
!1518 = !DILocation(line: 1506, column: 26, scope: !1513)
!1519 = !DILocation(line: 1506, column: 31, scope: !1513)
!1520 = !DILocation(line: 1506, column: 3, scope: !1513)
!1521 = !DILocation(line: 1505, column: 25, scope: !1513)
!1522 = !DILocation(line: 1505, column: 2, scope: !1513)
!1523 = distinct !{!1523, !1516, !1524, !669}
!1524 = !DILocation(line: 1506, column: 33, scope: !1510)
!1525 = !DILocation(line: 1509, column: 2, scope: !1495)
!1526 = !DILocation(line: 1510, column: 1, scope: !1495)
!1527 = distinct !DISubprogram(name: "telnet_begin_zmp", scope: !3, file: !3, line: 1537, type: !212, scopeLine: 1537, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1528 = !DILocalVariable(name: "telnet", arg: 1, scope: !1527, file: !3, line: 1537, type: !7)
!1529 = !DILocation(line: 1537, column: 33, scope: !1527)
!1530 = !DILocalVariable(name: "cmd", arg: 2, scope: !1527, file: !3, line: 1537, type: !58)
!1531 = !DILocation(line: 1537, column: 53, scope: !1527)
!1532 = !DILocation(line: 1538, column: 18, scope: !1527)
!1533 = !DILocation(line: 1538, column: 2, scope: !1527)
!1534 = !DILocation(line: 1539, column: 17, scope: !1527)
!1535 = !DILocation(line: 1539, column: 25, scope: !1527)
!1536 = !DILocation(line: 1539, column: 2, scope: !1527)
!1537 = !DILocation(line: 1540, column: 1, scope: !1527)
!1538 = distinct !DISubprogram(name: "telnet_zmp_arg", scope: !3, file: !3, line: 1543, type: !212, scopeLine: 1543, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1539 = !DILocalVariable(name: "telnet", arg: 1, scope: !1538, file: !3, line: 1543, type: !7)
!1540 = !DILocation(line: 1543, column: 31, scope: !1538)
!1541 = !DILocalVariable(name: "arg", arg: 2, scope: !1538, file: !3, line: 1543, type: !58)
!1542 = !DILocation(line: 1543, column: 51, scope: !1538)
!1543 = !DILocation(line: 1544, column: 14, scope: !1538)
!1544 = !DILocation(line: 1544, column: 22, scope: !1538)
!1545 = !DILocation(line: 1544, column: 34, scope: !1538)
!1546 = !DILocation(line: 1544, column: 27, scope: !1538)
!1547 = !DILocation(line: 1544, column: 39, scope: !1538)
!1548 = !DILocation(line: 1544, column: 2, scope: !1538)
!1549 = !DILocation(line: 1545, column: 1, scope: !1538)
!1550 = distinct !DISubprogram(name: "telnet_send_vzmpv", scope: !3, file: !3, line: 1513, type: !1551, scopeLine: 1513, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !7, !163}
!1553 = !DILocalVariable(name: "telnet", arg: 1, scope: !1550, file: !3, line: 1513, type: !7)
!1554 = !DILocation(line: 1513, column: 34, scope: !1550)
!1555 = !DILocalVariable(name: "va", arg: 2, scope: !1550, file: !3, line: 1513, type: !163)
!1556 = !DILocation(line: 1513, column: 50, scope: !1550)
!1557 = !DILocalVariable(name: "arg", scope: !1550, file: !3, line: 1514, type: !58)
!1558 = !DILocation(line: 1514, column: 14, scope: !1550)
!1559 = !DILocation(line: 1517, column: 18, scope: !1550)
!1560 = !DILocation(line: 1517, column: 2, scope: !1550)
!1561 = !DILocation(line: 1520, column: 2, scope: !1550)
!1562 = !DILocation(line: 1520, column: 16, scope: !1550)
!1563 = !DILocation(line: 1520, column: 14, scope: !1550)
!1564 = !DILocation(line: 1520, column: 42, scope: !1550)
!1565 = !DILocation(line: 1521, column: 18, scope: !1550)
!1566 = !DILocation(line: 1521, column: 26, scope: !1550)
!1567 = !DILocation(line: 1521, column: 3, scope: !1550)
!1568 = distinct !{!1568, !1561, !1569, !669}
!1569 = !DILocation(line: 1521, column: 29, scope: !1550)
!1570 = !DILocation(line: 1524, column: 2, scope: !1550)
!1571 = !DILocation(line: 1525, column: 1, scope: !1550)
!1572 = distinct !DISubprogram(name: "telnet_send_zmpv", scope: !3, file: !3, line: 1528, type: !1573, scopeLine: 1528, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !7, null}
!1575 = !DILocalVariable(name: "telnet", arg: 1, scope: !1572, file: !3, line: 1528, type: !7)
!1576 = !DILocation(line: 1528, column: 33, scope: !1572)
!1577 = !DILocalVariable(name: "va", scope: !1572, file: !3, line: 1529, type: !1314)
!1578 = !DILocation(line: 1529, column: 10, scope: !1572)
!1579 = !DILocation(line: 1531, column: 2, scope: !1572)
!1580 = !DILocation(line: 1532, column: 20, scope: !1572)
!1581 = !DILocation(line: 1532, column: 28, scope: !1572)
!1582 = !DILocation(line: 1532, column: 2, scope: !1572)
!1583 = !DILocation(line: 1533, column: 2, scope: !1572)
!1584 = !DILocation(line: 1534, column: 1, scope: !1572)
!1585 = distinct !DISubprogram(name: "_negotiate", scope: !3, file: !3, line: 334, type: !699, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1586 = !DILocalVariable(name: "telnet", arg: 1, scope: !1585, file: !3, line: 334, type: !7)
!1587 = !DILocation(line: 334, column: 34, scope: !1585)
!1588 = !DILocalVariable(name: "telopt", arg: 2, scope: !1585, file: !3, line: 334, type: !23)
!1589 = !DILocation(line: 334, column: 56, scope: !1585)
!1590 = !DILocalVariable(name: "ev", scope: !1585, file: !3, line: 335, type: !31)
!1591 = !DILocation(line: 335, column: 17, scope: !1585)
!1592 = !DILocalVariable(name: "q", scope: !1585, file: !3, line: 336, type: !177)
!1593 = !DILocation(line: 336, column: 19, scope: !1585)
!1594 = !DILocation(line: 339, column: 6, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 339, column: 6)
!1596 = !DILocation(line: 339, column: 14, scope: !1595)
!1597 = !DILocation(line: 339, column: 20, scope: !1595)
!1598 = !DILocation(line: 339, column: 6, scope: !1585)
!1599 = !DILocation(line: 340, column: 16, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 339, column: 41)
!1601 = !DILocation(line: 340, column: 24, scope: !1600)
!1602 = !DILocation(line: 340, column: 3, scope: !1600)
!1603 = !DILocation(line: 342, column: 4, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 340, column: 31)
!1605 = !DILocation(line: 343, column: 4, scope: !1604)
!1606 = !DILocation(line: 345, column: 4, scope: !1604)
!1607 = !DILocation(line: 346, column: 4, scope: !1604)
!1608 = !DILocation(line: 348, column: 4, scope: !1604)
!1609 = !DILocation(line: 349, column: 4, scope: !1604)
!1610 = !DILocation(line: 351, column: 4, scope: !1604)
!1611 = !DILocation(line: 352, column: 4, scope: !1604)
!1612 = !DILocation(line: 354, column: 3, scope: !1600)
!1613 = !DILocation(line: 358, column: 19, scope: !1585)
!1614 = !DILocation(line: 358, column: 27, scope: !1585)
!1615 = !DILocation(line: 358, column: 6, scope: !1585)
!1616 = !DILocation(line: 361, column: 15, scope: !1585)
!1617 = !DILocation(line: 361, column: 23, scope: !1585)
!1618 = !DILocation(line: 361, column: 2, scope: !1585)
!1619 = !DILocation(line: 364, column: 11, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 361, column: 30)
!1621 = !DILocation(line: 364, column: 3, scope: !1620)
!1622 = !DILocation(line: 366, column: 22, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 366, column: 8)
!1624 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 364, column: 21)
!1625 = !DILocation(line: 366, column: 30, scope: !1623)
!1626 = !DILocation(line: 366, column: 8, scope: !1623)
!1627 = !DILocation(line: 366, column: 8, scope: !1624)
!1628 = !DILocation(line: 367, column: 18, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 366, column: 42)
!1630 = !DILocation(line: 367, column: 26, scope: !1629)
!1631 = !DILocation(line: 367, column: 34, scope: !1629)
!1632 = !DILocation(line: 367, column: 5, scope: !1629)
!1633 = !DILocation(line: 368, column: 21, scope: !1629)
!1634 = !DILocation(line: 368, column: 40, scope: !1629)
!1635 = !DILocation(line: 368, column: 5, scope: !1629)
!1636 = !DILocation(line: 369, column: 5, scope: !1629)
!1637 = !DILocation(line: 370, column: 4, scope: !1629)
!1638 = !DILocation(line: 371, column: 21, scope: !1623)
!1639 = !DILocation(line: 371, column: 42, scope: !1623)
!1640 = !DILocation(line: 371, column: 5, scope: !1623)
!1641 = !DILocation(line: 372, column: 4, scope: !1624)
!1642 = !DILocation(line: 374, column: 17, scope: !1624)
!1643 = !DILocation(line: 374, column: 25, scope: !1624)
!1644 = !DILocation(line: 374, column: 33, scope: !1624)
!1645 = !DILocation(line: 374, column: 4, scope: !1624)
!1646 = !DILocation(line: 375, column: 4, scope: !1624)
!1647 = !DILocation(line: 376, column: 11, scope: !1624)
!1648 = !DILocation(line: 376, column: 4, scope: !1624)
!1649 = !DILocation(line: 378, column: 4, scope: !1624)
!1650 = !DILocation(line: 380, column: 17, scope: !1624)
!1651 = !DILocation(line: 380, column: 25, scope: !1624)
!1652 = !DILocation(line: 380, column: 33, scope: !1624)
!1653 = !DILocation(line: 380, column: 4, scope: !1624)
!1654 = !DILocation(line: 381, column: 4, scope: !1624)
!1655 = !DILocation(line: 382, column: 11, scope: !1624)
!1656 = !DILocation(line: 382, column: 4, scope: !1624)
!1657 = !DILocation(line: 384, column: 4, scope: !1624)
!1658 = !DILocation(line: 386, column: 17, scope: !1624)
!1659 = !DILocation(line: 386, column: 25, scope: !1624)
!1660 = !DILocation(line: 386, column: 33, scope: !1624)
!1661 = !DILocation(line: 386, column: 4, scope: !1624)
!1662 = !DILocation(line: 387, column: 4, scope: !1624)
!1663 = !DILocation(line: 388, column: 4, scope: !1624)
!1664 = !DILocation(line: 390, column: 17, scope: !1624)
!1665 = !DILocation(line: 390, column: 25, scope: !1624)
!1666 = !DILocation(line: 390, column: 33, scope: !1624)
!1667 = !DILocation(line: 390, column: 4, scope: !1624)
!1668 = !DILocation(line: 391, column: 20, scope: !1624)
!1669 = !DILocation(line: 391, column: 41, scope: !1624)
!1670 = !DILocation(line: 391, column: 4, scope: !1624)
!1671 = !DILocation(line: 392, column: 4, scope: !1624)
!1672 = !DILocation(line: 393, column: 4, scope: !1624)
!1673 = !DILocation(line: 395, column: 3, scope: !1620)
!1674 = !DILocation(line: 399, column: 11, scope: !1620)
!1675 = !DILocation(line: 399, column: 3, scope: !1620)
!1676 = !DILocation(line: 401, column: 17, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 399, column: 21)
!1678 = !DILocation(line: 401, column: 25, scope: !1677)
!1679 = !DILocation(line: 401, column: 33, scope: !1677)
!1680 = !DILocation(line: 401, column: 4, scope: !1677)
!1681 = !DILocation(line: 402, column: 20, scope: !1677)
!1682 = !DILocation(line: 402, column: 41, scope: !1677)
!1683 = !DILocation(line: 402, column: 4, scope: !1677)
!1684 = !DILocation(line: 403, column: 4, scope: !1677)
!1685 = !DILocation(line: 404, column: 4, scope: !1677)
!1686 = !DILocation(line: 406, column: 17, scope: !1677)
!1687 = !DILocation(line: 406, column: 25, scope: !1677)
!1688 = !DILocation(line: 406, column: 33, scope: !1677)
!1689 = !DILocation(line: 406, column: 4, scope: !1677)
!1690 = !DILocation(line: 407, column: 4, scope: !1677)
!1691 = !DILocation(line: 408, column: 4, scope: !1677)
!1692 = !DILocation(line: 410, column: 17, scope: !1677)
!1693 = !DILocation(line: 410, column: 25, scope: !1677)
!1694 = !DILocation(line: 410, column: 33, scope: !1677)
!1695 = !DILocation(line: 410, column: 4, scope: !1677)
!1696 = !DILocation(line: 411, column: 4, scope: !1677)
!1697 = !DILocation(line: 412, column: 4, scope: !1677)
!1698 = !DILocation(line: 415, column: 17, scope: !1677)
!1699 = !DILocation(line: 415, column: 25, scope: !1677)
!1700 = !DILocation(line: 415, column: 33, scope: !1677)
!1701 = !DILocation(line: 415, column: 4, scope: !1677)
!1702 = !DILocation(line: 416, column: 4, scope: !1677)
!1703 = !DILocation(line: 418, column: 3, scope: !1620)
!1704 = !DILocation(line: 422, column: 11, scope: !1620)
!1705 = !DILocation(line: 422, column: 3, scope: !1620)
!1706 = !DILocation(line: 424, column: 22, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 424, column: 8)
!1708 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 422, column: 20)
!1709 = !DILocation(line: 424, column: 30, scope: !1707)
!1710 = !DILocation(line: 424, column: 8, scope: !1707)
!1711 = !DILocation(line: 424, column: 8, scope: !1708)
!1712 = !DILocation(line: 425, column: 18, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 424, column: 42)
!1714 = !DILocation(line: 425, column: 26, scope: !1713)
!1715 = !DILocation(line: 425, column: 41, scope: !1713)
!1716 = !DILocation(line: 425, column: 5, scope: !1713)
!1717 = !DILocation(line: 426, column: 21, scope: !1713)
!1718 = !DILocation(line: 426, column: 42, scope: !1713)
!1719 = !DILocation(line: 426, column: 5, scope: !1713)
!1720 = !DILocation(line: 427, column: 5, scope: !1713)
!1721 = !DILocation(line: 428, column: 4, scope: !1713)
!1722 = !DILocation(line: 429, column: 21, scope: !1707)
!1723 = !DILocation(line: 429, column: 42, scope: !1707)
!1724 = !DILocation(line: 429, column: 5, scope: !1707)
!1725 = !DILocation(line: 430, column: 4, scope: !1708)
!1726 = !DILocation(line: 432, column: 17, scope: !1708)
!1727 = !DILocation(line: 432, column: 25, scope: !1708)
!1728 = !DILocation(line: 432, column: 39, scope: !1708)
!1729 = !DILocation(line: 432, column: 4, scope: !1708)
!1730 = !DILocation(line: 433, column: 4, scope: !1708)
!1731 = !DILocation(line: 434, column: 11, scope: !1708)
!1732 = !DILocation(line: 434, column: 4, scope: !1708)
!1733 = !DILocation(line: 436, column: 4, scope: !1708)
!1734 = !DILocation(line: 438, column: 17, scope: !1708)
!1735 = !DILocation(line: 438, column: 25, scope: !1708)
!1736 = !DILocation(line: 438, column: 40, scope: !1708)
!1737 = !DILocation(line: 438, column: 4, scope: !1708)
!1738 = !DILocation(line: 439, column: 4, scope: !1708)
!1739 = !DILocation(line: 440, column: 11, scope: !1708)
!1740 = !DILocation(line: 440, column: 4, scope: !1708)
!1741 = !DILocation(line: 442, column: 4, scope: !1708)
!1742 = !DILocation(line: 444, column: 17, scope: !1708)
!1743 = !DILocation(line: 444, column: 25, scope: !1708)
!1744 = !DILocation(line: 444, column: 40, scope: !1708)
!1745 = !DILocation(line: 444, column: 4, scope: !1708)
!1746 = !DILocation(line: 445, column: 4, scope: !1708)
!1747 = !DILocation(line: 446, column: 4, scope: !1708)
!1748 = !DILocation(line: 448, column: 17, scope: !1708)
!1749 = !DILocation(line: 448, column: 25, scope: !1708)
!1750 = !DILocation(line: 448, column: 43, scope: !1708)
!1751 = !DILocation(line: 448, column: 4, scope: !1708)
!1752 = !DILocation(line: 449, column: 20, scope: !1708)
!1753 = !DILocation(line: 449, column: 41, scope: !1708)
!1754 = !DILocation(line: 449, column: 4, scope: !1708)
!1755 = !DILocation(line: 450, column: 4, scope: !1708)
!1756 = !DILocation(line: 451, column: 4, scope: !1708)
!1757 = !DILocation(line: 453, column: 3, scope: !1620)
!1758 = !DILocation(line: 457, column: 11, scope: !1620)
!1759 = !DILocation(line: 457, column: 3, scope: !1620)
!1760 = !DILocation(line: 459, column: 17, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 457, column: 20)
!1762 = !DILocation(line: 459, column: 25, scope: !1761)
!1763 = !DILocation(line: 459, column: 39, scope: !1761)
!1764 = !DILocation(line: 459, column: 4, scope: !1761)
!1765 = !DILocation(line: 460, column: 20, scope: !1761)
!1766 = !DILocation(line: 460, column: 41, scope: !1761)
!1767 = !DILocation(line: 460, column: 4, scope: !1761)
!1768 = !DILocation(line: 461, column: 4, scope: !1761)
!1769 = !DILocation(line: 462, column: 4, scope: !1761)
!1770 = !DILocation(line: 464, column: 17, scope: !1761)
!1771 = !DILocation(line: 464, column: 25, scope: !1761)
!1772 = !DILocation(line: 464, column: 39, scope: !1761)
!1773 = !DILocation(line: 464, column: 4, scope: !1761)
!1774 = !DILocation(line: 465, column: 4, scope: !1761)
!1775 = !DILocation(line: 466, column: 4, scope: !1761)
!1776 = !DILocation(line: 468, column: 17, scope: !1761)
!1777 = !DILocation(line: 468, column: 25, scope: !1761)
!1778 = !DILocation(line: 468, column: 44, scope: !1761)
!1779 = !DILocation(line: 468, column: 4, scope: !1761)
!1780 = !DILocation(line: 469, column: 20, scope: !1761)
!1781 = !DILocation(line: 469, column: 41, scope: !1761)
!1782 = !DILocation(line: 469, column: 4, scope: !1761)
!1783 = !DILocation(line: 470, column: 4, scope: !1761)
!1784 = !DILocation(line: 471, column: 4, scope: !1761)
!1785 = !DILocation(line: 474, column: 17, scope: !1761)
!1786 = !DILocation(line: 474, column: 25, scope: !1761)
!1787 = !DILocation(line: 474, column: 39, scope: !1761)
!1788 = !DILocation(line: 474, column: 4, scope: !1761)
!1789 = !DILocation(line: 475, column: 4, scope: !1761)
!1790 = !DILocation(line: 477, column: 3, scope: !1620)
!1791 = !DILocation(line: 479, column: 1, scope: !1585)
!1792 = distinct !DISubprogram(name: "_buffer_byte", scope: !3, file: !3, line: 903, type: !1793, scopeLine: 904, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!74, !7, !23}
!1795 = !DILocalVariable(name: "telnet", arg: 1, scope: !1792, file: !3, line: 903, type: !7)
!1796 = !DILocation(line: 903, column: 46, scope: !1792)
!1797 = !DILocalVariable(name: "byte", arg: 2, scope: !1792, file: !3, line: 904, type: !23)
!1798 = !DILocation(line: 904, column: 17, scope: !1792)
!1799 = !DILocalVariable(name: "new_buffer", scope: !1792, file: !3, line: 905, type: !145)
!1800 = !DILocation(line: 905, column: 8, scope: !1792)
!1801 = !DILocalVariable(name: "i", scope: !1792, file: !3, line: 906, type: !62)
!1802 = !DILocation(line: 906, column: 9, scope: !1792)
!1803 = !DILocation(line: 909, column: 6, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 909, column: 6)
!1805 = !DILocation(line: 909, column: 14, scope: !1804)
!1806 = !DILocation(line: 909, column: 28, scope: !1804)
!1807 = !DILocation(line: 909, column: 36, scope: !1804)
!1808 = !DILocation(line: 909, column: 25, scope: !1804)
!1809 = !DILocation(line: 909, column: 6, scope: !1792)
!1810 = !DILocation(line: 911, column: 10, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 911, column: 3)
!1812 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 909, column: 49)
!1813 = !DILocation(line: 911, column: 8, scope: !1811)
!1814 = !DILocation(line: 911, column: 15, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 911, column: 3)
!1816 = !DILocation(line: 911, column: 17, scope: !1815)
!1817 = !DILocation(line: 911, column: 3, scope: !1811)
!1818 = !DILocation(line: 912, column: 22, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 912, column: 8)
!1820 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 911, column: 46)
!1821 = !DILocation(line: 912, column: 8, scope: !1819)
!1822 = !DILocation(line: 912, column: 28, scope: !1819)
!1823 = !DILocation(line: 912, column: 36, scope: !1819)
!1824 = !DILocation(line: 912, column: 25, scope: !1819)
!1825 = !DILocation(line: 912, column: 8, scope: !1820)
!1826 = !DILocation(line: 913, column: 5, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 912, column: 49)
!1828 = !DILocation(line: 915, column: 3, scope: !1820)
!1829 = !DILocation(line: 911, column: 41, scope: !1815)
!1830 = !DILocation(line: 911, column: 3, scope: !1815)
!1831 = distinct !{!1831, !1817, !1832, !669}
!1832 = !DILocation(line: 915, column: 3, scope: !1811)
!1833 = !DILocation(line: 918, column: 7, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 918, column: 7)
!1835 = !DILocation(line: 918, column: 9, scope: !1834)
!1836 = !DILocation(line: 918, column: 7, scope: !1812)
!1837 = !DILocation(line: 919, column: 11, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 918, column: 37)
!1839 = !DILocation(line: 919, column: 4, scope: !1838)
!1840 = !DILocation(line: 921, column: 4, scope: !1838)
!1841 = !DILocation(line: 925, column: 32, scope: !1812)
!1842 = !DILocation(line: 925, column: 40, scope: !1812)
!1843 = !DILocation(line: 925, column: 62, scope: !1812)
!1844 = !DILocation(line: 925, column: 64, scope: !1812)
!1845 = !DILocation(line: 925, column: 48, scope: !1812)
!1846 = !DILocation(line: 925, column: 24, scope: !1812)
!1847 = !DILocation(line: 925, column: 14, scope: !1812)
!1848 = !DILocation(line: 926, column: 7, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 926, column: 7)
!1850 = !DILocation(line: 926, column: 18, scope: !1849)
!1851 = !DILocation(line: 926, column: 7, scope: !1812)
!1852 = !DILocation(line: 927, column: 11, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 926, column: 24)
!1854 = !DILocation(line: 927, column: 4, scope: !1853)
!1855 = !DILocation(line: 929, column: 4, scope: !1853)
!1856 = !DILocation(line: 932, column: 20, scope: !1812)
!1857 = !DILocation(line: 932, column: 3, scope: !1812)
!1858 = !DILocation(line: 932, column: 11, scope: !1812)
!1859 = !DILocation(line: 932, column: 18, scope: !1812)
!1860 = !DILocation(line: 933, column: 39, scope: !1812)
!1861 = !DILocation(line: 933, column: 41, scope: !1812)
!1862 = !DILocation(line: 933, column: 25, scope: !1812)
!1863 = !DILocation(line: 933, column: 3, scope: !1812)
!1864 = !DILocation(line: 933, column: 11, scope: !1812)
!1865 = !DILocation(line: 933, column: 23, scope: !1812)
!1866 = !DILocation(line: 934, column: 2, scope: !1812)
!1867 = !DILocation(line: 937, column: 41, scope: !1792)
!1868 = !DILocation(line: 937, column: 2, scope: !1792)
!1869 = !DILocation(line: 937, column: 10, scope: !1792)
!1870 = !DILocation(line: 937, column: 17, scope: !1792)
!1871 = !DILocation(line: 937, column: 25, scope: !1792)
!1872 = !DILocation(line: 937, column: 35, scope: !1792)
!1873 = !DILocation(line: 937, column: 39, scope: !1792)
!1874 = !DILocation(line: 938, column: 2, scope: !1792)
!1875 = !DILocation(line: 939, column: 1, scope: !1792)
!1876 = distinct !DISubprogram(name: "_subnegotiate", scope: !3, file: !3, line: 807, type: !1877, scopeLine: 807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!6, !7}
!1879 = !DILocalVariable(name: "telnet", arg: 1, scope: !1876, file: !3, line: 807, type: !7)
!1880 = !DILocation(line: 807, column: 36, scope: !1876)
!1881 = !DILocalVariable(name: "ev", scope: !1876, file: !3, line: 808, type: !31)
!1882 = !DILocation(line: 808, column: 17, scope: !1876)
!1883 = !DILocation(line: 811, column: 10, scope: !1876)
!1884 = !DILocation(line: 812, column: 18, scope: !1876)
!1885 = !DILocation(line: 812, column: 26, scope: !1876)
!1886 = !DILocation(line: 812, column: 9, scope: !1876)
!1887 = !DILocation(line: 812, column: 16, scope: !1876)
!1888 = !DILocation(line: 813, column: 18, scope: !1876)
!1889 = !DILocation(line: 813, column: 26, scope: !1876)
!1890 = !DILocation(line: 813, column: 9, scope: !1876)
!1891 = !DILocation(line: 813, column: 16, scope: !1876)
!1892 = !DILocation(line: 814, column: 16, scope: !1876)
!1893 = !DILocation(line: 814, column: 24, scope: !1876)
!1894 = !DILocation(line: 814, column: 9, scope: !1876)
!1895 = !DILocation(line: 814, column: 14, scope: !1876)
!1896 = !DILocation(line: 815, column: 2, scope: !1876)
!1897 = !DILocation(line: 815, column: 10, scope: !1876)
!1898 = !DILocation(line: 815, column: 13, scope: !1876)
!1899 = !DILocation(line: 815, column: 26, scope: !1876)
!1900 = !DILocation(line: 815, column: 34, scope: !1876)
!1901 = !DILocation(line: 817, column: 10, scope: !1876)
!1902 = !DILocation(line: 817, column: 18, scope: !1876)
!1903 = !DILocation(line: 817, column: 2, scope: !1876)
!1904 = !DILocation(line: 838, column: 22, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 817, column: 29)
!1906 = !DILocation(line: 838, column: 30, scope: !1905)
!1907 = !DILocation(line: 838, column: 38, scope: !1905)
!1908 = !DILocation(line: 838, column: 46, scope: !1905)
!1909 = !DILocation(line: 838, column: 54, scope: !1905)
!1910 = !DILocation(line: 838, column: 10, scope: !1905)
!1911 = !DILocation(line: 838, column: 3, scope: !1905)
!1912 = !DILocation(line: 840, column: 24, scope: !1905)
!1913 = !DILocation(line: 840, column: 32, scope: !1905)
!1914 = !DILocation(line: 840, column: 40, scope: !1905)
!1915 = !DILocation(line: 840, column: 48, scope: !1905)
!1916 = !DILocation(line: 840, column: 56, scope: !1905)
!1917 = !DILocation(line: 840, column: 10, scope: !1905)
!1918 = !DILocation(line: 840, column: 3, scope: !1905)
!1919 = !DILocation(line: 843, column: 26, scope: !1905)
!1920 = !DILocation(line: 843, column: 34, scope: !1905)
!1921 = !DILocation(line: 843, column: 42, scope: !1905)
!1922 = !DILocation(line: 843, column: 53, scope: !1905)
!1923 = !DILocation(line: 843, column: 61, scope: !1905)
!1924 = !DILocation(line: 844, column: 5, scope: !1905)
!1925 = !DILocation(line: 844, column: 13, scope: !1905)
!1926 = !DILocation(line: 843, column: 10, scope: !1905)
!1927 = !DILocation(line: 843, column: 3, scope: !1905)
!1928 = !DILocation(line: 846, column: 23, scope: !1905)
!1929 = !DILocation(line: 846, column: 31, scope: !1905)
!1930 = !DILocation(line: 846, column: 39, scope: !1905)
!1931 = !DILocation(line: 846, column: 47, scope: !1905)
!1932 = !DILocation(line: 846, column: 55, scope: !1905)
!1933 = !DILocation(line: 846, column: 10, scope: !1905)
!1934 = !DILocation(line: 846, column: 3, scope: !1905)
!1935 = !DILocation(line: 848, column: 3, scope: !1905)
!1936 = !DILocation(line: 850, column: 1, scope: !1876)
!1937 = distinct !DISubprogram(name: "_check_telopt", scope: !3, file: !3, line: 247, type: !1938, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !204)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!6, !7, !23, !6}
!1940 = !DILocalVariable(name: "telnet", arg: 1, scope: !1937, file: !3, line: 247, type: !7)
!1941 = !DILocation(line: 247, column: 43, scope: !1937)
!1942 = !DILocalVariable(name: "telopt", arg: 2, scope: !1937, file: !3, line: 247, type: !23)
!1943 = !DILocation(line: 247, column: 65, scope: !1937)
!1944 = !DILocalVariable(name: "us", arg: 3, scope: !1937, file: !3, line: 248, type: !6)
!1945 = !DILocation(line: 248, column: 7, scope: !1937)
!1946 = !DILocalVariable(name: "i", scope: !1937, file: !3, line: 249, type: !6)
!1947 = !DILocation(line: 249, column: 6, scope: !1937)
!1948 = !DILocation(line: 252, column: 6, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 252, column: 6)
!1950 = !DILocation(line: 252, column: 14, scope: !1949)
!1951 = !DILocation(line: 252, column: 22, scope: !1949)
!1952 = !DILocation(line: 252, column: 6, scope: !1937)
!1953 = !DILocation(line: 253, column: 3, scope: !1949)
!1954 = !DILocation(line: 256, column: 9, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 256, column: 2)
!1956 = !DILocation(line: 256, column: 7, scope: !1955)
!1957 = !DILocation(line: 256, column: 14, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 256, column: 2)
!1959 = !DILocation(line: 256, column: 22, scope: !1958)
!1960 = !DILocation(line: 256, column: 30, scope: !1958)
!1961 = !DILocation(line: 256, column: 33, scope: !1958)
!1962 = !DILocation(line: 256, column: 40, scope: !1958)
!1963 = !DILocation(line: 256, column: 2, scope: !1955)
!1964 = !DILocation(line: 257, column: 7, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 257, column: 7)
!1966 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 256, column: 52)
!1967 = !DILocation(line: 257, column: 15, scope: !1965)
!1968 = !DILocation(line: 257, column: 23, scope: !1965)
!1969 = !DILocation(line: 257, column: 26, scope: !1965)
!1970 = !DILocation(line: 257, column: 36, scope: !1965)
!1971 = !DILocation(line: 257, column: 33, scope: !1965)
!1972 = !DILocation(line: 257, column: 7, scope: !1966)
!1973 = !DILocation(line: 258, column: 8, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 258, column: 8)
!1975 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 257, column: 44)
!1976 = !DILocation(line: 258, column: 11, scope: !1974)
!1977 = !DILocation(line: 258, column: 14, scope: !1974)
!1978 = !DILocation(line: 258, column: 22, scope: !1974)
!1979 = !DILocation(line: 258, column: 30, scope: !1974)
!1980 = !DILocation(line: 258, column: 33, scope: !1974)
!1981 = !DILocation(line: 258, column: 36, scope: !1974)
!1982 = !DILocation(line: 258, column: 8, scope: !1975)
!1983 = !DILocation(line: 259, column: 5, scope: !1974)
!1984 = !DILocation(line: 260, column: 14, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 260, column: 13)
!1986 = !DILocation(line: 260, column: 17, scope: !1985)
!1987 = !DILocation(line: 260, column: 20, scope: !1985)
!1988 = !DILocation(line: 260, column: 28, scope: !1985)
!1989 = !DILocation(line: 260, column: 36, scope: !1985)
!1990 = !DILocation(line: 260, column: 39, scope: !1985)
!1991 = !DILocation(line: 260, column: 43, scope: !1985)
!1992 = !DILocation(line: 260, column: 13, scope: !1974)
!1993 = !DILocation(line: 261, column: 5, scope: !1985)
!1994 = !DILocation(line: 263, column: 5, scope: !1985)
!1995 = !DILocation(line: 265, column: 2, scope: !1966)
!1996 = !DILocation(line: 256, column: 47, scope: !1958)
!1997 = !DILocation(line: 256, column: 2, scope: !1958)
!1998 = distinct !{!1998, !1963, !1999, !669}
!1999 = !DILocation(line: 265, column: 2, scope: !1955)
!2000 = !DILocation(line: 268, column: 2, scope: !1937)
!2001 = !DILocation(line: 269, column: 1, scope: !1937)
!2002 = distinct !DISubprogram(name: "_zmp_telnet", scope: !3, file: !3, line: 714, type: !2003, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !204)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!6, !7, !58, !62}
!2005 = !DILocalVariable(name: "telnet", arg: 1, scope: !2002, file: !3, line: 714, type: !7)
!2006 = !DILocation(line: 714, column: 34, scope: !2002)
!2007 = !DILocalVariable(name: "buffer", arg: 2, scope: !2002, file: !3, line: 714, type: !58)
!2008 = !DILocation(line: 714, column: 54, scope: !2002)
!2009 = !DILocalVariable(name: "size", arg: 3, scope: !2002, file: !3, line: 714, type: !62)
!2010 = !DILocation(line: 714, column: 69, scope: !2002)
!2011 = !DILocalVariable(name: "ev", scope: !2002, file: !3, line: 715, type: !31)
!2012 = !DILocation(line: 715, column: 17, scope: !2002)
!2013 = !DILocalVariable(name: "argv", scope: !2002, file: !3, line: 716, type: !105)
!2014 = !DILocation(line: 716, column: 15, scope: !2002)
!2015 = !DILocalVariable(name: "c", scope: !2002, file: !3, line: 717, type: !58)
!2016 = !DILocation(line: 717, column: 14, scope: !2002)
!2017 = !DILocalVariable(name: "i", scope: !2002, file: !3, line: 718, type: !62)
!2018 = !DILocation(line: 718, column: 9, scope: !2002)
!2019 = !DILocalVariable(name: "argc", scope: !2002, file: !3, line: 718, type: !62)
!2020 = !DILocation(line: 718, column: 12, scope: !2002)
!2021 = !DILocation(line: 721, column: 6, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 721, column: 6)
!2023 = !DILocation(line: 721, column: 11, scope: !2022)
!2024 = !DILocation(line: 721, column: 16, scope: !2022)
!2025 = !DILocation(line: 721, column: 19, scope: !2022)
!2026 = !DILocation(line: 721, column: 26, scope: !2022)
!2027 = !DILocation(line: 721, column: 31, scope: !2022)
!2028 = !DILocation(line: 721, column: 36, scope: !2022)
!2029 = !DILocation(line: 721, column: 6, scope: !2002)
!2030 = !DILocation(line: 722, column: 10, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 721, column: 42)
!2032 = !DILocation(line: 722, column: 3, scope: !2031)
!2033 = !DILocation(line: 724, column: 3, scope: !2031)
!2034 = !DILocation(line: 728, column: 12, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 728, column: 2)
!2036 = !DILocation(line: 728, column: 21, scope: !2035)
!2037 = !DILocation(line: 728, column: 19, scope: !2035)
!2038 = !DILocation(line: 728, column: 7, scope: !2035)
!2039 = !DILocation(line: 728, column: 29, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 728, column: 2)
!2041 = !DILocation(line: 728, column: 34, scope: !2040)
!2042 = !DILocation(line: 728, column: 43, scope: !2040)
!2043 = !DILocation(line: 728, column: 41, scope: !2040)
!2044 = !DILocation(line: 728, column: 31, scope: !2040)
!2045 = !DILocation(line: 728, column: 2, scope: !2035)
!2046 = !DILocation(line: 729, column: 15, scope: !2040)
!2047 = !DILocation(line: 729, column: 8, scope: !2040)
!2048 = !DILocation(line: 729, column: 18, scope: !2040)
!2049 = !DILocation(line: 729, column: 5, scope: !2040)
!2050 = !DILocation(line: 729, column: 3, scope: !2040)
!2051 = !DILocation(line: 728, column: 49, scope: !2040)
!2052 = !DILocation(line: 728, column: 2, scope: !2040)
!2053 = distinct !{!2053, !2045, !2054, !669}
!2054 = !DILocation(line: 729, column: 20, scope: !2035)
!2055 = !DILocation(line: 732, column: 36, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 732, column: 6)
!2057 = !DILocation(line: 732, column: 29, scope: !2056)
!2058 = !DILocation(line: 732, column: 12, scope: !2056)
!2059 = !DILocation(line: 732, column: 59, scope: !2056)
!2060 = !DILocation(line: 732, column: 6, scope: !2002)
!2061 = !DILocation(line: 733, column: 10, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 732, column: 65)
!2063 = !DILocation(line: 734, column: 37, scope: !2062)
!2064 = !DILocation(line: 734, column: 28, scope: !2062)
!2065 = !DILocation(line: 733, column: 3, scope: !2062)
!2066 = !DILocation(line: 735, column: 3, scope: !2062)
!2067 = !DILocation(line: 739, column: 9, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 739, column: 2)
!2069 = !DILocation(line: 739, column: 18, scope: !2068)
!2070 = !DILocation(line: 739, column: 16, scope: !2068)
!2071 = !DILocation(line: 739, column: 7, scope: !2068)
!2072 = !DILocation(line: 739, column: 26, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 739, column: 2)
!2074 = !DILocation(line: 739, column: 31, scope: !2073)
!2075 = !DILocation(line: 739, column: 28, scope: !2073)
!2076 = !DILocation(line: 739, column: 2, scope: !2068)
!2077 = !DILocation(line: 740, column: 13, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 739, column: 42)
!2079 = !DILocation(line: 740, column: 3, scope: !2078)
!2080 = !DILocation(line: 740, column: 8, scope: !2078)
!2081 = !DILocation(line: 740, column: 11, scope: !2078)
!2082 = !DILocation(line: 741, column: 15, scope: !2078)
!2083 = !DILocation(line: 741, column: 8, scope: !2078)
!2084 = !DILocation(line: 741, column: 18, scope: !2078)
!2085 = !DILocation(line: 741, column: 5, scope: !2078)
!2086 = !DILocation(line: 742, column: 2, scope: !2078)
!2087 = !DILocation(line: 739, column: 37, scope: !2073)
!2088 = !DILocation(line: 739, column: 2, scope: !2073)
!2089 = distinct !{!2089, !2076, !2090, !669}
!2090 = !DILocation(line: 742, column: 2, scope: !2068)
!2091 = !DILocation(line: 745, column: 10, scope: !2002)
!2092 = !DILocation(line: 746, column: 16, scope: !2002)
!2093 = !DILocation(line: 746, column: 9, scope: !2002)
!2094 = !DILocation(line: 746, column: 14, scope: !2002)
!2095 = !DILocation(line: 747, column: 16, scope: !2002)
!2096 = !DILocation(line: 747, column: 9, scope: !2002)
!2097 = !DILocation(line: 747, column: 14, scope: !2002)
!2098 = !DILocation(line: 748, column: 2, scope: !2002)
!2099 = !DILocation(line: 748, column: 10, scope: !2002)
!2100 = !DILocation(line: 748, column: 13, scope: !2002)
!2101 = !DILocation(line: 748, column: 26, scope: !2002)
!2102 = !DILocation(line: 748, column: 34, scope: !2002)
!2103 = !DILocation(line: 751, column: 7, scope: !2002)
!2104 = !DILocation(line: 751, column: 2, scope: !2002)
!2105 = !DILocation(line: 752, column: 2, scope: !2002)
!2106 = !DILocation(line: 753, column: 1, scope: !2002)
!2107 = distinct !DISubprogram(name: "_ttype_telnet", scope: !3, file: !3, line: 756, type: !2003, scopeLine: 756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !204)
!2108 = !DILocalVariable(name: "telnet", arg: 1, scope: !2107, file: !3, line: 756, type: !7)
!2109 = !DILocation(line: 756, column: 36, scope: !2107)
!2110 = !DILocalVariable(name: "buffer", arg: 2, scope: !2107, file: !3, line: 756, type: !58)
!2111 = !DILocation(line: 756, column: 56, scope: !2107)
!2112 = !DILocalVariable(name: "size", arg: 3, scope: !2107, file: !3, line: 756, type: !62)
!2113 = !DILocation(line: 756, column: 71, scope: !2107)
!2114 = !DILocalVariable(name: "ev", scope: !2107, file: !3, line: 757, type: !31)
!2115 = !DILocation(line: 757, column: 17, scope: !2107)
!2116 = !DILocation(line: 760, column: 6, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 760, column: 6)
!2118 = !DILocation(line: 760, column: 11, scope: !2117)
!2119 = !DILocation(line: 760, column: 6, scope: !2107)
!2120 = !DILocation(line: 761, column: 10, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 760, column: 17)
!2122 = !DILocation(line: 761, column: 3, scope: !2121)
!2123 = !DILocation(line: 763, column: 3, scope: !2121)
!2124 = !DILocation(line: 767, column: 6, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 767, column: 6)
!2126 = !DILocation(line: 767, column: 16, scope: !2125)
!2127 = !DILocation(line: 767, column: 35, scope: !2125)
!2128 = !DILocation(line: 768, column: 4, scope: !2125)
!2129 = !DILocation(line: 768, column: 14, scope: !2125)
!2130 = !DILocation(line: 767, column: 6, scope: !2107)
!2131 = !DILocation(line: 769, column: 10, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 768, column: 36)
!2133 = !DILocation(line: 769, column: 3, scope: !2132)
!2134 = !DILocation(line: 771, column: 3, scope: !2132)
!2135 = !DILocation(line: 775, column: 6, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 775, column: 6)
!2137 = !DILocation(line: 775, column: 16, scope: !2136)
!2138 = !DILocation(line: 775, column: 6, scope: !2107)
!2139 = !DILocalVariable(name: "name", scope: !2140, file: !3, line: 776, type: !145)
!2140 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 775, column: 36)
!2141 = !DILocation(line: 776, column: 9, scope: !2140)
!2142 = !DILocation(line: 779, column: 30, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 779, column: 7)
!2144 = !DILocation(line: 779, column: 23, scope: !2143)
!2145 = !DILocation(line: 779, column: 13, scope: !2143)
!2146 = !DILocation(line: 779, column: 37, scope: !2143)
!2147 = !DILocation(line: 779, column: 7, scope: !2140)
!2148 = !DILocation(line: 780, column: 11, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 779, column: 43)
!2150 = !DILocation(line: 781, column: 38, scope: !2149)
!2151 = !DILocation(line: 781, column: 29, scope: !2149)
!2152 = !DILocation(line: 780, column: 4, scope: !2149)
!2153 = !DILocation(line: 782, column: 4, scope: !2149)
!2154 = !DILocation(line: 784, column: 10, scope: !2140)
!2155 = !DILocation(line: 784, column: 16, scope: !2140)
!2156 = !DILocation(line: 784, column: 23, scope: !2140)
!2157 = !DILocation(line: 784, column: 28, scope: !2140)
!2158 = !DILocation(line: 784, column: 33, scope: !2140)
!2159 = !DILocation(line: 784, column: 3, scope: !2140)
!2160 = !DILocation(line: 785, column: 3, scope: !2140)
!2161 = !DILocation(line: 785, column: 8, scope: !2140)
!2162 = !DILocation(line: 785, column: 13, scope: !2140)
!2163 = !DILocation(line: 785, column: 18, scope: !2140)
!2164 = !DILocation(line: 787, column: 11, scope: !2140)
!2165 = !DILocation(line: 788, column: 12, scope: !2140)
!2166 = !DILocation(line: 788, column: 16, scope: !2140)
!2167 = !DILocation(line: 789, column: 19, scope: !2140)
!2168 = !DILocation(line: 789, column: 12, scope: !2140)
!2169 = !DILocation(line: 789, column: 17, scope: !2140)
!2170 = !DILocation(line: 790, column: 3, scope: !2140)
!2171 = !DILocation(line: 790, column: 11, scope: !2140)
!2172 = !DILocation(line: 790, column: 14, scope: !2140)
!2173 = !DILocation(line: 790, column: 27, scope: !2140)
!2174 = !DILocation(line: 790, column: 35, scope: !2140)
!2175 = !DILocation(line: 793, column: 8, scope: !2140)
!2176 = !DILocation(line: 793, column: 3, scope: !2140)
!2177 = !DILocation(line: 794, column: 2, scope: !2140)
!2178 = !DILocation(line: 795, column: 11, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 794, column: 9)
!2180 = !DILocation(line: 796, column: 12, scope: !2179)
!2181 = !DILocation(line: 796, column: 16, scope: !2179)
!2182 = !DILocation(line: 797, column: 12, scope: !2179)
!2183 = !DILocation(line: 797, column: 17, scope: !2179)
!2184 = !DILocation(line: 798, column: 3, scope: !2179)
!2185 = !DILocation(line: 798, column: 11, scope: !2179)
!2186 = !DILocation(line: 798, column: 14, scope: !2179)
!2187 = !DILocation(line: 798, column: 27, scope: !2179)
!2188 = !DILocation(line: 798, column: 35, scope: !2179)
!2189 = !DILocation(line: 801, column: 2, scope: !2107)
!2190 = !DILocation(line: 802, column: 1, scope: !2107)
!2191 = distinct !DISubprogram(name: "_environ_telnet", scope: !3, file: !3, line: 493, type: !2192, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !204)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!6, !7, !23, !145, !62}
!2194 = !DILocalVariable(name: "telnet", arg: 1, scope: !2191, file: !3, line: 493, type: !7)
!2195 = !DILocation(line: 493, column: 38, scope: !2191)
!2196 = !DILocalVariable(name: "type", arg: 2, scope: !2191, file: !3, line: 493, type: !23)
!2197 = !DILocation(line: 493, column: 60, scope: !2191)
!2198 = !DILocalVariable(name: "buffer", arg: 3, scope: !2191, file: !3, line: 494, type: !145)
!2199 = !DILocation(line: 494, column: 9, scope: !2191)
!2200 = !DILocalVariable(name: "size", arg: 4, scope: !2191, file: !3, line: 494, type: !62)
!2201 = !DILocation(line: 494, column: 24, scope: !2191)
!2202 = !DILocalVariable(name: "ev", scope: !2191, file: !3, line: 495, type: !31)
!2203 = !DILocation(line: 495, column: 17, scope: !2191)
!2204 = !DILocalVariable(name: "values", scope: !2191, file: !3, line: 496, type: !175)
!2205 = !DILocation(line: 496, column: 27, scope: !2191)
!2206 = !DILocalVariable(name: "c", scope: !2191, file: !3, line: 497, type: !145)
!2207 = !DILocation(line: 497, column: 8, scope: !2191)
!2208 = !DILocalVariable(name: "last", scope: !2191, file: !3, line: 497, type: !145)
!2209 = !DILocation(line: 497, column: 12, scope: !2191)
!2210 = !DILocalVariable(name: "out", scope: !2191, file: !3, line: 497, type: !145)
!2211 = !DILocation(line: 497, column: 19, scope: !2191)
!2212 = !DILocalVariable(name: "index", scope: !2191, file: !3, line: 498, type: !62)
!2213 = !DILocation(line: 498, column: 9, scope: !2191)
!2214 = !DILocalVariable(name: "count", scope: !2191, file: !3, line: 498, type: !62)
!2215 = !DILocation(line: 498, column: 16, scope: !2191)
!2216 = !DILocation(line: 501, column: 6, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 501, column: 6)
!2218 = !DILocation(line: 501, column: 11, scope: !2217)
!2219 = !DILocation(line: 501, column: 6, scope: !2191)
!2220 = !DILocation(line: 502, column: 3, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 501, column: 17)
!2222 = !DILocation(line: 506, column: 16, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 506, column: 6)
!2224 = !DILocation(line: 506, column: 6, scope: !2223)
!2225 = !DILocation(line: 506, column: 26, scope: !2223)
!2226 = !DILocation(line: 506, column: 49, scope: !2223)
!2227 = !DILocation(line: 507, column: 14, scope: !2223)
!2228 = !DILocation(line: 507, column: 4, scope: !2223)
!2229 = !DILocation(line: 507, column: 24, scope: !2223)
!2230 = !DILocation(line: 507, column: 45, scope: !2223)
!2231 = !DILocation(line: 508, column: 14, scope: !2223)
!2232 = !DILocation(line: 508, column: 4, scope: !2223)
!2233 = !DILocation(line: 508, column: 24, scope: !2223)
!2234 = !DILocation(line: 506, column: 6, scope: !2191)
!2235 = !DILocation(line: 509, column: 10, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 508, column: 48)
!2237 = !DILocation(line: 510, column: 45, scope: !2236)
!2238 = !DILocation(line: 509, column: 3, scope: !2236)
!2239 = !DILocation(line: 511, column: 3, scope: !2236)
!2240 = !DILocation(line: 515, column: 19, scope: !2191)
!2241 = !DILocation(line: 515, column: 13, scope: !2191)
!2242 = !DILocation(line: 515, column: 17, scope: !2191)
!2243 = !DILocation(line: 518, column: 6, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 518, column: 6)
!2245 = !DILocation(line: 518, column: 11, scope: !2244)
!2246 = !DILocation(line: 518, column: 6, scope: !2191)
!2247 = !DILocation(line: 520, column: 14, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 518, column: 17)
!2249 = !DILocation(line: 520, column: 21, scope: !2248)
!2250 = !DILocation(line: 521, column: 14, scope: !2248)
!2251 = !DILocation(line: 521, column: 19, scope: !2248)
!2252 = !DILocation(line: 524, column: 11, scope: !2248)
!2253 = !DILocation(line: 525, column: 3, scope: !2248)
!2254 = !DILocation(line: 525, column: 11, scope: !2248)
!2255 = !DILocation(line: 525, column: 14, scope: !2248)
!2256 = !DILocation(line: 525, column: 27, scope: !2248)
!2257 = !DILocation(line: 525, column: 35, scope: !2248)
!2258 = !DILocation(line: 527, column: 3, scope: !2248)
!2259 = !DILocation(line: 531, column: 16, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 531, column: 6)
!2261 = !DILocation(line: 531, column: 6, scope: !2260)
!2262 = !DILocation(line: 531, column: 26, scope: !2260)
!2263 = !DILocation(line: 531, column: 48, scope: !2260)
!2264 = !DILocation(line: 532, column: 14, scope: !2260)
!2265 = !DILocation(line: 532, column: 4, scope: !2260)
!2266 = !DILocation(line: 532, column: 24, scope: !2260)
!2267 = !DILocation(line: 531, column: 6, scope: !2191)
!2268 = !DILocation(line: 533, column: 10, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 532, column: 51)
!2270 = !DILocation(line: 534, column: 47, scope: !2269)
!2271 = !DILocation(line: 533, column: 3, scope: !2269)
!2272 = !DILocation(line: 535, column: 3, scope: !2269)
!2273 = !DILocation(line: 539, column: 16, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 539, column: 6)
!2275 = !DILocation(line: 539, column: 23, scope: !2274)
!2276 = !DILocation(line: 539, column: 28, scope: !2274)
!2277 = !DILocation(line: 539, column: 6, scope: !2274)
!2278 = !DILocation(line: 539, column: 33, scope: !2274)
!2279 = !DILocation(line: 539, column: 6, scope: !2191)
!2280 = !DILocation(line: 540, column: 10, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 539, column: 56)
!2282 = !DILocation(line: 541, column: 39, scope: !2281)
!2283 = !DILocation(line: 540, column: 3, scope: !2281)
!2284 = !DILocation(line: 542, column: 3, scope: !2281)
!2285 = !DILocation(line: 546, column: 8, scope: !2191)
!2286 = !DILocation(line: 547, column: 11, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 547, column: 2)
!2288 = !DILocation(line: 547, column: 18, scope: !2287)
!2289 = !DILocation(line: 547, column: 9, scope: !2287)
!2290 = !DILocation(line: 547, column: 7, scope: !2287)
!2291 = !DILocation(line: 547, column: 23, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 547, column: 2)
!2293 = !DILocation(line: 547, column: 27, scope: !2292)
!2294 = !DILocation(line: 547, column: 36, scope: !2292)
!2295 = !DILocation(line: 547, column: 34, scope: !2292)
!2296 = !DILocation(line: 547, column: 25, scope: !2292)
!2297 = !DILocation(line: 547, column: 2, scope: !2287)
!2298 = !DILocation(line: 548, column: 8, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 548, column: 7)
!2300 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 547, column: 47)
!2301 = !DILocation(line: 548, column: 7, scope: !2299)
!2302 = !DILocation(line: 548, column: 10, scope: !2299)
!2303 = !DILocation(line: 548, column: 32, scope: !2299)
!2304 = !DILocation(line: 548, column: 36, scope: !2299)
!2305 = !DILocation(line: 548, column: 35, scope: !2299)
!2306 = !DILocation(line: 548, column: 38, scope: !2299)
!2307 = !DILocation(line: 548, column: 7, scope: !2300)
!2308 = !DILocation(line: 549, column: 4, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 548, column: 65)
!2310 = !DILocation(line: 550, column: 3, scope: !2309)
!2311 = !DILocation(line: 550, column: 15, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 550, column: 14)
!2313 = !DILocation(line: 550, column: 14, scope: !2312)
!2314 = !DILocation(line: 550, column: 17, scope: !2312)
!2315 = !DILocation(line: 550, column: 14, scope: !2299)
!2316 = !DILocation(line: 552, column: 4, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 550, column: 40)
!2318 = !DILocation(line: 553, column: 3, scope: !2317)
!2319 = !DILocation(line: 554, column: 2, scope: !2300)
!2320 = !DILocation(line: 547, column: 42, scope: !2292)
!2321 = !DILocation(line: 547, column: 2, scope: !2292)
!2322 = distinct !{!2322, !2297, !2323, !669}
!2323 = !DILocation(line: 554, column: 2, scope: !2287)
!2324 = !DILocation(line: 557, column: 50, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 557, column: 6)
!2326 = !DILocation(line: 557, column: 43, scope: !2325)
!2327 = !DILocation(line: 557, column: 14, scope: !2325)
!2328 = !DILocation(line: 558, column: 38, scope: !2325)
!2329 = !DILocation(line: 557, column: 6, scope: !2191)
!2330 = !DILocation(line: 559, column: 10, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 558, column: 44)
!2332 = !DILocation(line: 560, column: 37, scope: !2331)
!2333 = !DILocation(line: 560, column: 28, scope: !2331)
!2334 = !DILocation(line: 559, column: 3, scope: !2331)
!2335 = !DILocation(line: 561, column: 3, scope: !2331)
!2336 = !DILocation(line: 565, column: 8, scope: !2191)
!2337 = !DILocation(line: 565, column: 6, scope: !2191)
!2338 = !DILocation(line: 566, column: 6, scope: !2191)
!2339 = !DILocation(line: 566, column: 13, scope: !2191)
!2340 = !DILocation(line: 566, column: 4, scope: !2191)
!2341 = !DILocation(line: 567, column: 13, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 567, column: 2)
!2343 = !DILocation(line: 567, column: 7, scope: !2342)
!2344 = !DILocation(line: 567, column: 18, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 567, column: 2)
!2346 = !DILocation(line: 567, column: 27, scope: !2345)
!2347 = !DILocation(line: 567, column: 24, scope: !2345)
!2348 = !DILocation(line: 567, column: 2, scope: !2342)
!2349 = !DILocation(line: 569, column: 26, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 567, column: 43)
!2351 = !DILocation(line: 569, column: 24, scope: !2350)
!2352 = !DILocation(line: 569, column: 3, scope: !2350)
!2353 = !DILocation(line: 569, column: 10, scope: !2350)
!2354 = !DILocation(line: 569, column: 17, scope: !2350)
!2355 = !DILocation(line: 569, column: 22, scope: !2350)
!2356 = !DILocation(line: 573, column: 10, scope: !2350)
!2357 = !DILocation(line: 573, column: 8, scope: !2350)
!2358 = !DILocation(line: 574, column: 3, scope: !2350)
!2359 = !DILocation(line: 574, column: 10, scope: !2350)
!2360 = !DILocation(line: 574, column: 14, scope: !2350)
!2361 = !DILocation(line: 574, column: 23, scope: !2350)
!2362 = !DILocation(line: 574, column: 21, scope: !2350)
!2363 = !DILocation(line: 574, column: 12, scope: !2350)
!2364 = !DILocation(line: 576, column: 19, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 576, column: 8)
!2366 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 574, column: 29)
!2367 = !DILocation(line: 576, column: 18, scope: !2365)
!2368 = !DILocation(line: 576, column: 8, scope: !2365)
!2369 = !DILocation(line: 576, column: 21, scope: !2365)
!2370 = !DILocation(line: 576, column: 43, scope: !2365)
!2371 = !DILocation(line: 577, column: 17, scope: !2365)
!2372 = !DILocation(line: 577, column: 16, scope: !2365)
!2373 = !DILocation(line: 577, column: 6, scope: !2365)
!2374 = !DILocation(line: 577, column: 19, scope: !2365)
!2375 = !DILocation(line: 577, column: 43, scope: !2365)
!2376 = !DILocation(line: 578, column: 17, scope: !2365)
!2377 = !DILocation(line: 578, column: 16, scope: !2365)
!2378 = !DILocation(line: 578, column: 6, scope: !2365)
!2379 = !DILocation(line: 578, column: 19, scope: !2365)
!2380 = !DILocation(line: 576, column: 8, scope: !2366)
!2381 = !DILocation(line: 579, column: 5, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 578, column: 46)
!2383 = !DILocation(line: 583, column: 9, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 583, column: 8)
!2385 = !DILocation(line: 583, column: 8, scope: !2384)
!2386 = !DILocation(line: 583, column: 11, scope: !2384)
!2387 = !DILocation(line: 583, column: 8, scope: !2366)
!2388 = !DILocation(line: 584, column: 5, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 583, column: 34)
!2390 = !DILocation(line: 585, column: 4, scope: !2389)
!2391 = !DILocation(line: 587, column: 15, scope: !2366)
!2392 = !DILocation(line: 587, column: 13, scope: !2366)
!2393 = !DILocation(line: 587, column: 8, scope: !2366)
!2394 = !DILocation(line: 587, column: 11, scope: !2366)
!2395 = distinct !{!2395, !2358, !2396, !669}
!2396 = !DILocation(line: 588, column: 3, scope: !2350)
!2397 = !DILocation(line: 589, column: 7, scope: !2350)
!2398 = !DILocation(line: 589, column: 10, scope: !2350)
!2399 = !DILocation(line: 592, column: 23, scope: !2350)
!2400 = !DILocation(line: 592, column: 3, scope: !2350)
!2401 = !DILocation(line: 592, column: 10, scope: !2350)
!2402 = !DILocation(line: 592, column: 17, scope: !2350)
!2403 = !DILocation(line: 592, column: 21, scope: !2350)
!2404 = !DILocation(line: 593, column: 3, scope: !2350)
!2405 = !DILocation(line: 593, column: 10, scope: !2350)
!2406 = !DILocation(line: 593, column: 17, scope: !2350)
!2407 = !DILocation(line: 593, column: 23, scope: !2350)
!2408 = !DILocation(line: 597, column: 7, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 597, column: 7)
!2410 = !DILocation(line: 597, column: 11, scope: !2409)
!2411 = !DILocation(line: 597, column: 20, scope: !2409)
!2412 = !DILocation(line: 597, column: 18, scope: !2409)
!2413 = !DILocation(line: 597, column: 9, scope: !2409)
!2414 = !DILocation(line: 597, column: 25, scope: !2409)
!2415 = !DILocation(line: 597, column: 29, scope: !2409)
!2416 = !DILocation(line: 597, column: 28, scope: !2409)
!2417 = !DILocation(line: 597, column: 31, scope: !2409)
!2418 = !DILocation(line: 597, column: 7, scope: !2350)
!2419 = !DILocation(line: 598, column: 4, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 597, column: 56)
!2421 = !DILocation(line: 599, column: 11, scope: !2420)
!2422 = !DILocation(line: 599, column: 9, scope: !2420)
!2423 = !DILocation(line: 600, column: 4, scope: !2420)
!2424 = !DILocation(line: 600, column: 11, scope: !2420)
!2425 = !DILocation(line: 600, column: 15, scope: !2420)
!2426 = !DILocation(line: 600, column: 24, scope: !2420)
!2427 = !DILocation(line: 600, column: 22, scope: !2420)
!2428 = !DILocation(line: 600, column: 13, scope: !2420)
!2429 = !DILocation(line: 602, column: 20, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 602, column: 9)
!2431 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 600, column: 30)
!2432 = !DILocation(line: 602, column: 19, scope: !2430)
!2433 = !DILocation(line: 602, column: 9, scope: !2430)
!2434 = !DILocation(line: 602, column: 22, scope: !2430)
!2435 = !DILocation(line: 602, column: 44, scope: !2430)
!2436 = !DILocation(line: 603, column: 18, scope: !2430)
!2437 = !DILocation(line: 603, column: 17, scope: !2430)
!2438 = !DILocation(line: 603, column: 7, scope: !2430)
!2439 = !DILocation(line: 603, column: 20, scope: !2430)
!2440 = !DILocation(line: 602, column: 9, scope: !2431)
!2441 = !DILocation(line: 604, column: 6, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 603, column: 47)
!2443 = !DILocation(line: 608, column: 10, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 608, column: 9)
!2445 = !DILocation(line: 608, column: 9, scope: !2444)
!2446 = !DILocation(line: 608, column: 12, scope: !2444)
!2447 = !DILocation(line: 608, column: 9, scope: !2431)
!2448 = !DILocation(line: 609, column: 6, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 608, column: 35)
!2450 = !DILocation(line: 610, column: 5, scope: !2449)
!2451 = !DILocation(line: 612, column: 16, scope: !2431)
!2452 = !DILocation(line: 612, column: 14, scope: !2431)
!2453 = !DILocation(line: 612, column: 9, scope: !2431)
!2454 = !DILocation(line: 612, column: 12, scope: !2431)
!2455 = distinct !{!2455, !2423, !2456, !669}
!2456 = !DILocation(line: 613, column: 4, scope: !2420)
!2457 = !DILocation(line: 614, column: 8, scope: !2420)
!2458 = !DILocation(line: 614, column: 11, scope: !2420)
!2459 = !DILocation(line: 617, column: 26, scope: !2420)
!2460 = !DILocation(line: 617, column: 4, scope: !2420)
!2461 = !DILocation(line: 617, column: 11, scope: !2420)
!2462 = !DILocation(line: 617, column: 18, scope: !2420)
!2463 = !DILocation(line: 617, column: 24, scope: !2420)
!2464 = !DILocation(line: 618, column: 3, scope: !2420)
!2465 = !DILocation(line: 619, column: 2, scope: !2350)
!2466 = !DILocation(line: 567, column: 34, scope: !2345)
!2467 = !DILocation(line: 567, column: 2, scope: !2345)
!2468 = distinct !{!2468, !2348, !2469, !669}
!2469 = !DILocation(line: 619, column: 2, scope: !2342)
!2470 = !DILocation(line: 622, column: 22, scope: !2191)
!2471 = !DILocation(line: 622, column: 13, scope: !2191)
!2472 = !DILocation(line: 622, column: 20, scope: !2191)
!2473 = !DILocation(line: 623, column: 20, scope: !2191)
!2474 = !DILocation(line: 623, column: 13, scope: !2191)
!2475 = !DILocation(line: 623, column: 18, scope: !2191)
!2476 = !DILocation(line: 626, column: 10, scope: !2191)
!2477 = !DILocation(line: 627, column: 2, scope: !2191)
!2478 = !DILocation(line: 627, column: 10, scope: !2191)
!2479 = !DILocation(line: 627, column: 13, scope: !2191)
!2480 = !DILocation(line: 627, column: 26, scope: !2191)
!2481 = !DILocation(line: 627, column: 34, scope: !2191)
!2482 = !DILocation(line: 630, column: 7, scope: !2191)
!2483 = !DILocation(line: 630, column: 2, scope: !2191)
!2484 = !DILocation(line: 631, column: 2, scope: !2191)
!2485 = !DILocation(line: 632, column: 1, scope: !2191)
!2486 = distinct !DISubprogram(name: "_mssp_telnet", scope: !3, file: !3, line: 635, type: !2487, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !204)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!6, !7, !145, !62}
!2489 = !DILocalVariable(name: "telnet", arg: 1, scope: !2486, file: !3, line: 635, type: !7)
!2490 = !DILocation(line: 635, column: 35, scope: !2486)
!2491 = !DILocalVariable(name: "buffer", arg: 2, scope: !2486, file: !3, line: 635, type: !145)
!2492 = !DILocation(line: 635, column: 49, scope: !2486)
!2493 = !DILocalVariable(name: "size", arg: 3, scope: !2486, file: !3, line: 635, type: !62)
!2494 = !DILocation(line: 635, column: 64, scope: !2486)
!2495 = !DILocalVariable(name: "ev", scope: !2486, file: !3, line: 636, type: !31)
!2496 = !DILocation(line: 636, column: 17, scope: !2486)
!2497 = !DILocalVariable(name: "values", scope: !2486, file: !3, line: 637, type: !175)
!2498 = !DILocation(line: 637, column: 27, scope: !2486)
!2499 = !DILocalVariable(name: "var", scope: !2486, file: !3, line: 638, type: !145)
!2500 = !DILocation(line: 638, column: 8, scope: !2486)
!2501 = !DILocalVariable(name: "c", scope: !2486, file: !3, line: 639, type: !145)
!2502 = !DILocation(line: 639, column: 8, scope: !2486)
!2503 = !DILocalVariable(name: "last", scope: !2486, file: !3, line: 639, type: !145)
!2504 = !DILocation(line: 639, column: 12, scope: !2486)
!2505 = !DILocalVariable(name: "out", scope: !2486, file: !3, line: 639, type: !145)
!2506 = !DILocation(line: 639, column: 19, scope: !2486)
!2507 = !DILocalVariable(name: "i", scope: !2486, file: !3, line: 640, type: !62)
!2508 = !DILocation(line: 640, column: 9, scope: !2486)
!2509 = !DILocalVariable(name: "count", scope: !2486, file: !3, line: 640, type: !62)
!2510 = !DILocation(line: 640, column: 12, scope: !2486)
!2511 = !DILocalVariable(name: "next_type", scope: !2486, file: !3, line: 641, type: !23)
!2512 = !DILocation(line: 641, column: 16, scope: !2486)
!2513 = !DILocation(line: 644, column: 6, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 644, column: 6)
!2515 = !DILocation(line: 644, column: 11, scope: !2514)
!2516 = !DILocation(line: 644, column: 6, scope: !2486)
!2517 = !DILocation(line: 645, column: 3, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 644, column: 17)
!2519 = !DILocation(line: 649, column: 16, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 649, column: 6)
!2521 = !DILocation(line: 649, column: 6, scope: !2520)
!2522 = !DILocation(line: 649, column: 26, scope: !2520)
!2523 = !DILocation(line: 649, column: 6, scope: !2486)
!2524 = !DILocation(line: 650, column: 10, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 649, column: 46)
!2526 = !DILocation(line: 650, column: 3, scope: !2525)
!2527 = !DILocation(line: 652, column: 3, scope: !2525)
!2528 = !DILocation(line: 656, column: 13, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 656, column: 2)
!2530 = !DILocation(line: 656, column: 20, scope: !2529)
!2531 = !DILocation(line: 656, column: 7, scope: !2529)
!2532 = !DILocation(line: 656, column: 25, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 656, column: 2)
!2534 = !DILocation(line: 656, column: 30, scope: !2533)
!2535 = !DILocation(line: 656, column: 27, scope: !2533)
!2536 = !DILocation(line: 656, column: 2, scope: !2529)
!2537 = !DILocation(line: 657, column: 17, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 657, column: 7)
!2539 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 656, column: 41)
!2540 = !DILocation(line: 657, column: 24, scope: !2538)
!2541 = !DILocation(line: 657, column: 7, scope: !2538)
!2542 = !DILocation(line: 657, column: 27, scope: !2538)
!2543 = !DILocation(line: 657, column: 7, scope: !2539)
!2544 = !DILocation(line: 658, column: 4, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 657, column: 47)
!2546 = !DILocation(line: 659, column: 3, scope: !2545)
!2547 = !DILocation(line: 660, column: 2, scope: !2539)
!2548 = !DILocation(line: 656, column: 36, scope: !2533)
!2549 = !DILocation(line: 656, column: 2, scope: !2533)
!2550 = distinct !{!2550, !2536, !2551, !669}
!2551 = !DILocation(line: 660, column: 2, scope: !2529)
!2552 = !DILocation(line: 663, column: 50, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 663, column: 6)
!2554 = !DILocation(line: 663, column: 43, scope: !2553)
!2555 = !DILocation(line: 663, column: 14, scope: !2553)
!2556 = !DILocation(line: 664, column: 38, scope: !2553)
!2557 = !DILocation(line: 663, column: 6, scope: !2486)
!2558 = !DILocation(line: 665, column: 10, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 664, column: 44)
!2560 = !DILocation(line: 666, column: 37, scope: !2559)
!2561 = !DILocation(line: 666, column: 28, scope: !2559)
!2562 = !DILocation(line: 665, column: 3, scope: !2559)
!2563 = !DILocation(line: 667, column: 3, scope: !2559)
!2564 = !DILocation(line: 670, column: 19, scope: !2486)
!2565 = !DILocation(line: 670, column: 10, scope: !2486)
!2566 = !DILocation(line: 670, column: 17, scope: !2486)
!2567 = !DILocation(line: 671, column: 17, scope: !2486)
!2568 = !DILocation(line: 671, column: 10, scope: !2486)
!2569 = !DILocation(line: 671, column: 15, scope: !2486)
!2570 = !DILocation(line: 674, column: 15, scope: !2486)
!2571 = !DILocation(line: 674, column: 13, scope: !2486)
!2572 = !DILocation(line: 674, column: 6, scope: !2486)
!2573 = !DILocation(line: 675, column: 14, scope: !2486)
!2574 = !DILocation(line: 675, column: 12, scope: !2486)
!2575 = !DILocation(line: 676, column: 9, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 676, column: 2)
!2577 = !DILocation(line: 676, column: 18, scope: !2576)
!2578 = !DILocation(line: 676, column: 25, scope: !2576)
!2579 = !DILocation(line: 676, column: 16, scope: !2576)
!2580 = !DILocation(line: 676, column: 7, scope: !2576)
!2581 = !DILocation(line: 676, column: 30, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 676, column: 2)
!2583 = !DILocation(line: 676, column: 34, scope: !2582)
!2584 = !DILocation(line: 676, column: 43, scope: !2582)
!2585 = !DILocation(line: 676, column: 41, scope: !2582)
!2586 = !DILocation(line: 676, column: 32, scope: !2582)
!2587 = !DILocation(line: 676, column: 2, scope: !2576)
!2588 = !DILocation(line: 678, column: 3, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 676, column: 50)
!2590 = !DILocation(line: 678, column: 10, scope: !2589)
!2591 = !DILocation(line: 678, column: 14, scope: !2589)
!2592 = !DILocation(line: 678, column: 23, scope: !2589)
!2593 = !DILocation(line: 678, column: 21, scope: !2589)
!2594 = !DILocation(line: 678, column: 12, scope: !2589)
!2595 = !DILocation(line: 678, column: 28, scope: !2589)
!2596 = !DILocation(line: 678, column: 42, scope: !2589)
!2597 = !DILocation(line: 678, column: 41, scope: !2589)
!2598 = !DILocation(line: 678, column: 31, scope: !2589)
!2599 = !DILocation(line: 678, column: 44, scope: !2589)
!2600 = !DILocation(line: 678, column: 63, scope: !2589)
!2601 = !DILocation(line: 679, column: 16, scope: !2589)
!2602 = !DILocation(line: 679, column: 15, scope: !2589)
!2603 = !DILocation(line: 679, column: 5, scope: !2589)
!2604 = !DILocation(line: 679, column: 18, scope: !2589)
!2605 = !DILocation(line: 0, scope: !2589)
!2606 = !DILocation(line: 680, column: 15, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 679, column: 38)
!2608 = !DILocation(line: 680, column: 13, scope: !2607)
!2609 = !DILocation(line: 680, column: 8, scope: !2607)
!2610 = !DILocation(line: 680, column: 11, scope: !2607)
!2611 = distinct !{!2611, !2588, !2612, !669}
!2612 = !DILocation(line: 681, column: 3, scope: !2589)
!2613 = !DILocation(line: 682, column: 7, scope: !2589)
!2614 = !DILocation(line: 682, column: 10, scope: !2589)
!2615 = !DILocation(line: 685, column: 7, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 685, column: 7)
!2617 = !DILocation(line: 685, column: 17, scope: !2616)
!2618 = !DILocation(line: 685, column: 7, scope: !2589)
!2619 = !DILocation(line: 686, column: 10, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 685, column: 37)
!2621 = !DILocation(line: 686, column: 8, scope: !2620)
!2622 = !DILocation(line: 687, column: 3, scope: !2620)
!2623 = !DILocation(line: 687, column: 14, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 687, column: 14)
!2625 = !DILocation(line: 687, column: 24, scope: !2624)
!2626 = !DILocation(line: 687, column: 43, scope: !2624)
!2627 = !DILocation(line: 687, column: 46, scope: !2624)
!2628 = !DILocation(line: 687, column: 50, scope: !2624)
!2629 = !DILocation(line: 687, column: 14, scope: !2616)
!2630 = !DILocation(line: 688, column: 20, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 687, column: 56)
!2632 = !DILocation(line: 688, column: 4, scope: !2631)
!2633 = !DILocation(line: 688, column: 11, scope: !2631)
!2634 = !DILocation(line: 688, column: 14, scope: !2631)
!2635 = !DILocation(line: 688, column: 18, scope: !2631)
!2636 = !DILocation(line: 689, column: 22, scope: !2631)
!2637 = !DILocation(line: 689, column: 4, scope: !2631)
!2638 = !DILocation(line: 689, column: 11, scope: !2631)
!2639 = !DILocation(line: 689, column: 14, scope: !2631)
!2640 = !DILocation(line: 689, column: 20, scope: !2631)
!2641 = !DILocation(line: 690, column: 4, scope: !2631)
!2642 = !DILocation(line: 691, column: 3, scope: !2631)
!2643 = !DILocation(line: 692, column: 11, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 691, column: 10)
!2645 = !DILocation(line: 692, column: 4, scope: !2644)
!2646 = !DILocation(line: 694, column: 9, scope: !2644)
!2647 = !DILocation(line: 694, column: 4, scope: !2644)
!2648 = !DILocation(line: 695, column: 4, scope: !2644)
!2649 = !DILocation(line: 699, column: 10, scope: !2589)
!2650 = !DILocation(line: 699, column: 8, scope: !2589)
!2651 = !DILocation(line: 700, column: 17, scope: !2589)
!2652 = !DILocation(line: 700, column: 15, scope: !2589)
!2653 = !DILocation(line: 700, column: 13, scope: !2589)
!2654 = !DILocation(line: 676, column: 2, scope: !2582)
!2655 = distinct !{!2655, !2587, !2656, !669}
!2656 = !DILocation(line: 701, column: 2, scope: !2576)
!2657 = !DILocation(line: 704, column: 10, scope: !2486)
!2658 = !DILocation(line: 705, column: 2, scope: !2486)
!2659 = !DILocation(line: 705, column: 10, scope: !2486)
!2660 = !DILocation(line: 705, column: 13, scope: !2486)
!2661 = !DILocation(line: 705, column: 26, scope: !2486)
!2662 = !DILocation(line: 705, column: 34, scope: !2486)
!2663 = !DILocation(line: 708, column: 7, scope: !2486)
!2664 = !DILocation(line: 708, column: 2, scope: !2486)
!2665 = !DILocation(line: 710, column: 2, scope: !2486)
!2666 = !DILocation(line: 711, column: 1, scope: !2486)
