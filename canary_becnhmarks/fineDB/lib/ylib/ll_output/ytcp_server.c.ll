; ModuleID = './ytcp_server.c'
source_filename = "./ytcp_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ytcp_server_s = type { ptr, i32, i32, ptr, i32, i16, i32 }
%struct.ytcp_thread_s = type { i64, i32, ptr, %union.pthread_mutex_t, i32, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.__CONST_SOCKADDR_ARG = type { ptr }
%union.__SOCKADDR_ARG = type { ptr }

@.str = private unnamed_addr constant [5 x i8] c"ytcp\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"./ytcp_server.c\00", align 1, !dbg !7
@__FUNCTION__.ytcp_server_init = private unnamed_addr constant [17 x i8] c"ytcp_server_init\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [9 x i8] c"Entering\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [31 x i8] c"Problem during thread creation\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [8 x i8] c"Exiting\00", align 1, !dbg !28
@__FUNCTION__.ytcp_server_start = private unnamed_addr constant [18 x i8] c"ytcp_server_start\00", align 1, !dbg !33
@.str.5 = private unnamed_addr constant [13 x i8] c"Socket error\00", align 1, !dbg !38
@.str.6 = private unnamed_addr constant [32 x i8] c"setsockopt(SO_REUSEADDR) failed\00", align 1, !dbg !43
@.str.7 = private unnamed_addr constant [32 x i8] c"setsockopt(SO_KEEPALIVE) failed\00", align 1, !dbg !48
@.str.8 = private unnamed_addr constant [11 x i8] c"Bind error\00", align 1, !dbg !50
@.str.9 = private unnamed_addr constant [13 x i8] c"Listen error\00", align 1, !dbg !55
@.str.10 = private unnamed_addr constant [29 x i8] c"setsockopt(KEEPALIVE) failed\00", align 1, !dbg !57
@__FUNCTION__.ytcp_server_purge_threads = private unnamed_addr constant [26 x i8] c"ytcp_server_purge_threads\00", align 1, !dbg !62
@__FUNCTION__.ytcp_server_set_nbr_threads = private unnamed_addr constant [28 x i8] c"ytcp_server_set_nbr_threads\00", align 1, !dbg !67
@__FUNCTION__.ytcp_server_delete = private unnamed_addr constant [19 x i8] c"ytcp_server_delete\00", align 1, !dbg !72
@.str.11 = private unnamed_addr constant [22 x i8] c"Server doesn't exist.\00", align 1, !dbg !77
@__FUNCTION__._ytcp_server_thread_handle = private unnamed_addr constant [27 x i8] c"_ytcp_server_thread_handle\00", align 1, !dbg !82
@.str.12 = private unnamed_addr constant [14 x i8] c"End of thread\00", align 1, !dbg !87
@.str.13 = private unnamed_addr constant [20 x i8] c"Start of connection\00", align 1, !dbg !92
@.str.14 = private unnamed_addr constant [18 x i8] c"End of connection\00", align 1, !dbg !97
@__FUNCTION__._ytcp_server_thread_launch = private unnamed_addr constant [27 x i8] c"_ytcp_server_thread_launch\00", align 1, !dbg !100
@.str.15 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1, !dbg !102
@.str.16 = private unnamed_addr constant [20 x i8] c"Recall the function\00", align 1, !dbg !107
@.str.17 = private unnamed_addr constant [29 x i8] c"New thread created - Exiting\00", align 1, !dbg !109

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ytcp_server_init(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !282 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !288, metadata !DIExpression()), !dbg !289
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !290, metadata !DIExpression()), !dbg !291
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata ptr %7, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata ptr %8, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata ptr %9, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata ptr %10, metadata !300, metadata !DIExpression()), !dbg !301
  %11 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !302
  %12 = icmp ne i32 %11, 0, !dbg !302
  br i1 %12, label %13, label %15, !dbg !302

13:                                               ; preds = %3
  %14 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 31, ptr noundef @__FUNCTION__.ytcp_server_init, ptr noundef @.str.2), !dbg !302
  br label %16, !dbg !302

15:                                               ; preds = %3
  br label %16, !dbg !302

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ], !dbg !302
  %18 = load i32, ptr %4, align 4, !dbg !303
  %19 = icmp eq i32 %18, 0, !dbg !304
  br i1 %19, label %20, label %21, !dbg !305

20:                                               ; preds = %16
  br label %23, !dbg !305

21:                                               ; preds = %16
  %22 = load i32, ptr %4, align 4, !dbg !306
  br label %23, !dbg !305

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 15, %20 ], [ %22, %21 ], !dbg !305
  store i32 %24, ptr %4, align 4, !dbg !307
  %25 = call ptr @yv_new(), !dbg !308
  store ptr %25, ptr %8, align 8, !dbg !309
  %26 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 40) #8, !dbg !310
  store ptr %26, ptr %9, align 8, !dbg !311
  %27 = load ptr, ptr %5, align 8, !dbg !312
  %28 = load ptr, ptr %9, align 8, !dbg !313
  %29 = getelementptr inbounds %struct.ytcp_server_s, ptr %28, i32 0, i32 0, !dbg !314
  store ptr %27, ptr %29, align 8, !dbg !315
  %30 = load i32, ptr %4, align 4, !dbg !316
  %31 = load ptr, ptr %9, align 8, !dbg !317
  %32 = getelementptr inbounds %struct.ytcp_server_s, ptr %31, i32 0, i32 1, !dbg !318
  store i32 %30, ptr %32, align 8, !dbg !319
  %33 = load ptr, ptr %9, align 8, !dbg !320
  %34 = getelementptr inbounds %struct.ytcp_server_s, ptr %33, i32 0, i32 2, !dbg !321
  store i32 0, ptr %34, align 4, !dbg !322
  %35 = load ptr, ptr %8, align 8, !dbg !323
  %36 = load ptr, ptr %9, align 8, !dbg !324
  %37 = getelementptr inbounds %struct.ytcp_server_s, ptr %36, i32 0, i32 3, !dbg !325
  store ptr %35, ptr %37, align 8, !dbg !326
  %38 = load ptr, ptr %9, align 8, !dbg !327
  %39 = getelementptr inbounds %struct.ytcp_server_s, ptr %38, i32 0, i32 4, !dbg !328
  store i32 -1, ptr %39, align 8, !dbg !329
  %40 = load ptr, ptr %9, align 8, !dbg !330
  %41 = getelementptr inbounds %struct.ytcp_server_s, ptr %40, i32 0, i32 5, !dbg !331
  store i16 1, ptr %41, align 4, !dbg !332
  %42 = load ptr, ptr %9, align 8, !dbg !333
  %43 = getelementptr inbounds %struct.ytcp_server_s, ptr %42, i32 0, i32 1, !dbg !333
  %44 = load i32, ptr %43, align 8, !dbg !333
  %45 = mul nsw i32 %44, 300, !dbg !333
  %46 = load ptr, ptr %9, align 8, !dbg !334
  %47 = getelementptr inbounds %struct.ytcp_server_s, ptr %46, i32 0, i32 6, !dbg !335
  store i32 %45, ptr %47, align 8, !dbg !336
  store i32 0, ptr %10, align 4, !dbg !337
  br label %48, !dbg !339

48:                                               ; preds = %87, %23
  %49 = load i32, ptr %10, align 4, !dbg !340
  %50 = load i32, ptr %4, align 4, !dbg !342
  %51 = icmp ult i32 %49, %50, !dbg !343
  br i1 %51, label %52, label %55, !dbg !344

52:                                               ; preds = %48
  %53 = load i32, ptr %10, align 4, !dbg !345
  %54 = icmp ult i32 %53, 1024, !dbg !346
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i1 [ false, %48 ], [ %54, %52 ], !dbg !347
  br i1 %56, label %57, label %90, !dbg !348

57:                                               ; preds = %55
  %58 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 88) #8, !dbg !349
  store ptr %58, ptr %7, align 8, !dbg !351
  %59 = load ptr, ptr %7, align 8, !dbg !352
  %60 = getelementptr inbounds %struct.ytcp_thread_s, ptr %59, i32 0, i32 3, !dbg !353
  %61 = call i32 @pthread_mutex_init(ptr noundef %60, ptr noundef null) #9, !dbg !354
  %62 = load ptr, ptr %7, align 8, !dbg !355
  %63 = getelementptr inbounds %struct.ytcp_thread_s, ptr %62, i32 0, i32 3, !dbg !356
  %64 = call i32 @pthread_mutex_lock(ptr noundef %63) #9, !dbg !357
  %65 = load ptr, ptr %7, align 8, !dbg !358
  %66 = getelementptr inbounds %struct.ytcp_thread_s, ptr %65, i32 0, i32 0, !dbg !360
  %67 = load ptr, ptr %7, align 8, !dbg !361
  %68 = call i32 @pthread_create(ptr noundef %66, ptr noundef null, ptr noundef @_ytcp_server_thread_handle, ptr noundef %67) #9, !dbg !362
  %69 = icmp ne i32 %68, 0, !dbg !362
  br i1 %69, label %70, label %74, !dbg !363

70:                                               ; preds = %57
  %71 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef @.str.1, i32 noundef 50, ptr noundef @__FUNCTION__.ytcp_server_init, ptr noundef @.str.3), !dbg !364
  %72 = load ptr, ptr %7, align 8, !dbg !366
  %73 = getelementptr inbounds %struct.ytcp_thread_s, ptr %72, i32 0, i32 4, !dbg !367
  store i32 3, ptr %73, align 8, !dbg !368
  br label %74, !dbg !369

74:                                               ; preds = %70, %57
  %75 = load ptr, ptr %7, align 8, !dbg !370
  %76 = getelementptr inbounds %struct.ytcp_thread_s, ptr %75, i32 0, i32 1, !dbg !371
  store i32 -1, ptr %76, align 8, !dbg !372
  %77 = load ptr, ptr %7, align 8, !dbg !373
  %78 = getelementptr inbounds %struct.ytcp_thread_s, ptr %77, i32 0, i32 4, !dbg !374
  store i32 1, ptr %78, align 8, !dbg !375
  %79 = load ptr, ptr %6, align 8, !dbg !376
  %80 = load ptr, ptr %7, align 8, !dbg !377
  %81 = getelementptr inbounds %struct.ytcp_thread_s, ptr %80, i32 0, i32 5, !dbg !378
  store ptr %79, ptr %81, align 8, !dbg !379
  %82 = load ptr, ptr %9, align 8, !dbg !380
  %83 = load ptr, ptr %7, align 8, !dbg !381
  %84 = getelementptr inbounds %struct.ytcp_thread_s, ptr %83, i32 0, i32 6, !dbg !382
  store ptr %82, ptr %84, align 8, !dbg !383
  %85 = load ptr, ptr %7, align 8, !dbg !384
  %86 = call i32 @yv_add(ptr noundef %8, ptr noundef %85), !dbg !385
  br label %87, !dbg !386

87:                                               ; preds = %74
  %88 = load i32, ptr %10, align 4, !dbg !387
  %89 = add i32 %88, 1, !dbg !387
  store i32 %89, ptr %10, align 4, !dbg !387
  br label %48, !dbg !388, !llvm.loop !389

90:                                               ; preds = %55
  %91 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !391
  %92 = icmp ne i32 %91, 0, !dbg !391
  br i1 %92, label %93, label %95, !dbg !391

93:                                               ; preds = %90
  %94 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 59, ptr noundef @__FUNCTION__.ytcp_server_init, ptr noundef @.str.4), !dbg !391
  br label %96, !dbg !391

95:                                               ; preds = %90
  br label %96, !dbg !391

96:                                               ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ 0, %95 ], !dbg !391
  %98 = load ptr, ptr %9, align 8, !dbg !392
  ret ptr %98, !dbg !393
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @ylog_check_module(ptr noundef) #2

declare i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

declare ptr @yv_new() #2

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @_ytcp_server_thread_handle(ptr noundef %0) #0 !dbg !394 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata ptr %3, metadata !397, metadata !DIExpression()), !dbg !398
  %4 = load ptr, ptr %2, align 8, !dbg !399
  store ptr %4, ptr %3, align 8, !dbg !398
  %5 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !400
  %6 = icmp ne i32 %5, 0, !dbg !400
  br i1 %6, label %7, label %9, !dbg !400

7:                                                ; preds = %1
  %8 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 249, ptr noundef @__FUNCTION__._ytcp_server_thread_handle, ptr noundef @.str.2), !dbg !400
  br label %10, !dbg !400

9:                                                ; preds = %1
  br label %10, !dbg !400

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ], !dbg !400
  br label %12, !dbg !401

12:                                               ; preds = %80, %10
  %13 = load ptr, ptr %3, align 8, !dbg !402
  %14 = getelementptr inbounds %struct.ytcp_thread_s, ptr %13, i32 0, i32 3, !dbg !407
  %15 = call i32 @pthread_mutex_lock(ptr noundef %14) #9, !dbg !408
  %16 = icmp ne i32 %15, 0, !dbg !408
  br i1 %16, label %80, label %17, !dbg !409

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8, !dbg !410
  %19 = getelementptr inbounds %struct.ytcp_thread_s, ptr %18, i32 0, i32 4, !dbg !413
  %20 = load i32, ptr %19, align 8, !dbg !413
  %21 = icmp eq i32 %20, 3, !dbg !414
  br i1 %21, label %22, label %30, !dbg !415

22:                                               ; preds = %17
  %23 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !416
  %24 = icmp ne i32 %23, 0, !dbg !416
  br i1 %24, label %25, label %27, !dbg !416

25:                                               ; preds = %22
  %26 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 256, ptr noundef @__FUNCTION__._ytcp_server_thread_handle, ptr noundef @.str.12), !dbg !416
  br label %28, !dbg !416

27:                                               ; preds = %22
  br label %28, !dbg !416

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ], !dbg !416
  call void @pthread_exit(ptr noundef null) #10, !dbg !418
  unreachable, !dbg !418

30:                                               ; preds = %17
  %31 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !419
  %32 = icmp ne i32 %31, 0, !dbg !419
  br i1 %32, label %33, label %35, !dbg !419

33:                                               ; preds = %30
  %34 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 261, ptr noundef @__FUNCTION__._ytcp_server_thread_handle, ptr noundef @.str.13), !dbg !419
  br label %36, !dbg !419

35:                                               ; preds = %30
  br label %36, !dbg !419

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ], !dbg !419
  %38 = load ptr, ptr %3, align 8, !dbg !421
  %39 = getelementptr inbounds %struct.ytcp_thread_s, ptr %38, i32 0, i32 6, !dbg !422
  %40 = load ptr, ptr %39, align 8, !dbg !422
  %41 = getelementptr inbounds %struct.ytcp_server_s, ptr %40, i32 0, i32 0, !dbg !423
  %42 = load ptr, ptr %41, align 8, !dbg !423
  %43 = load ptr, ptr %3, align 8, !dbg !424
  %44 = call ptr %42(ptr noundef %43), !dbg !421
  %45 = load ptr, ptr %3, align 8, !dbg !425
  %46 = getelementptr inbounds %struct.ytcp_thread_s, ptr %45, i32 0, i32 2, !dbg !427
  %47 = load ptr, ptr %46, align 8, !dbg !427
  %48 = icmp ne ptr %47, null, !dbg !425
  br i1 %48, label %49, label %54, !dbg !428

49:                                               ; preds = %36
  %50 = load ptr, ptr %3, align 8, !dbg !429
  %51 = getelementptr inbounds %struct.ytcp_thread_s, ptr %50, i32 0, i32 2, !dbg !430
  %52 = load ptr, ptr %51, align 8, !dbg !430
  %53 = call i32 @fclose(ptr noundef %52), !dbg !431
  br label %65, !dbg !431

54:                                               ; preds = %36
  %55 = load ptr, ptr %3, align 8, !dbg !432
  %56 = getelementptr inbounds %struct.ytcp_thread_s, ptr %55, i32 0, i32 1, !dbg !434
  %57 = load i32, ptr %56, align 8, !dbg !434
  %58 = icmp sgt i32 %57, -1, !dbg !435
  br i1 %58, label %59, label %64, !dbg !436

59:                                               ; preds = %54
  %60 = load ptr, ptr %3, align 8, !dbg !437
  %61 = getelementptr inbounds %struct.ytcp_thread_s, ptr %60, i32 0, i32 1, !dbg !438
  %62 = load i32, ptr %61, align 8, !dbg !438
  %63 = call i32 @close(i32 noundef %62), !dbg !439
  br label %64, !dbg !439

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %49
  %66 = load ptr, ptr %3, align 8, !dbg !440
  %67 = getelementptr inbounds %struct.ytcp_thread_s, ptr %66, i32 0, i32 2, !dbg !441
  store ptr null, ptr %67, align 8, !dbg !442
  %68 = load ptr, ptr %3, align 8, !dbg !443
  %69 = getelementptr inbounds %struct.ytcp_thread_s, ptr %68, i32 0, i32 1, !dbg !444
  store i32 -1, ptr %69, align 8, !dbg !445
  %70 = load ptr, ptr %3, align 8, !dbg !446
  %71 = getelementptr inbounds %struct.ytcp_thread_s, ptr %70, i32 0, i32 4, !dbg !447
  store i32 1, ptr %71, align 8, !dbg !448
  %72 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !449
  %73 = icmp ne i32 %72, 0, !dbg !449
  br i1 %73, label %74, label %76, !dbg !449

74:                                               ; preds = %65
  %75 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 270, ptr noundef @__FUNCTION__._ytcp_server_thread_handle, ptr noundef @.str.14), !dbg !449
  br label %77, !dbg !449

76:                                               ; preds = %65
  br label %77, !dbg !449

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ], !dbg !449
  br label %79

79:                                               ; preds = %77
  br label %80, !dbg !450

80:                                               ; preds = %79, %12
  br label %12, !dbg !451, !llvm.loop !452
}

declare i32 @yv_add(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ytcp_server_start(ptr noundef %0, i32 noundef %1) #0 !dbg !455 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %11 = alloca %union.__SOCKADDR_ARG, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !460, metadata !DIExpression()), !dbg !461
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !462, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.declare(metadata ptr %6, metadata !464, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.declare(metadata ptr %7, metadata !480, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.declare(metadata ptr %8, metadata !482, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.declare(metadata ptr %9, metadata !484, metadata !DIExpression()), !dbg !486
  store i32 1, ptr %9, align 4, !dbg !486
  %12 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !487
  %13 = icmp ne i32 %12, 0, !dbg !487
  br i1 %13, label %14, label %16, !dbg !487

14:                                               ; preds = %2
  %15 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 74, ptr noundef @__FUNCTION__.ytcp_server_start, ptr noundef @.str.2), !dbg !487
  br label %17, !dbg !487

16:                                               ; preds = %2
  br label %17, !dbg !487

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ], !dbg !487
  %19 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #9, !dbg !488
  %20 = load ptr, ptr %4, align 8, !dbg !490
  %21 = getelementptr inbounds %struct.ytcp_server_s, ptr %20, i32 0, i32 4, !dbg !491
  store i32 %19, ptr %21, align 8, !dbg !492
  %22 = icmp slt i32 %19, 0, !dbg !493
  br i1 %22, label %23, label %25, !dbg !494

23:                                               ; preds = %17
  %24 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef @.str.1, i32 noundef 77, ptr noundef @__FUNCTION__.ytcp_server_start, ptr noundef @.str.5), !dbg !495
  store i32 -5, ptr %3, align 4, !dbg !497
  br label %112, !dbg !497

25:                                               ; preds = %17
  %26 = load ptr, ptr %4, align 8, !dbg !498
  %27 = getelementptr inbounds %struct.ytcp_server_s, ptr %26, i32 0, i32 4, !dbg !500
  %28 = load i32, ptr %27, align 8, !dbg !500
  %29 = call i32 @setsockopt(i32 noundef %28, i32 noundef 1, i32 noundef 2, ptr noundef %9, i32 noundef 4) #9, !dbg !501
  %30 = icmp slt i32 %29, 0, !dbg !502
  br i1 %30, label %31, label %33, !dbg !503

31:                                               ; preds = %25
  %32 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef @.str.1, i32 noundef 81, ptr noundef @__FUNCTION__.ytcp_server_start, ptr noundef @.str.6), !dbg !504
  br label %33, !dbg !504

33:                                               ; preds = %31, %25
  %34 = load ptr, ptr %4, align 8, !dbg !505
  %35 = getelementptr inbounds %struct.ytcp_server_s, ptr %34, i32 0, i32 4, !dbg !507
  %36 = load i32, ptr %35, align 8, !dbg !507
  %37 = call i32 @setsockopt(i32 noundef %36, i32 noundef 1, i32 noundef 9, ptr noundef %9, i32 noundef 4) #9, !dbg !508
  %38 = icmp slt i32 %37, 0, !dbg !509
  br i1 %38, label %39, label %41, !dbg !510

39:                                               ; preds = %33
  %40 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef @.str.1, i32 noundef 83, ptr noundef @__FUNCTION__.ytcp_server_start, ptr noundef @.str.7), !dbg !511
  br label %41, !dbg !511

41:                                               ; preds = %39, %33
  store i32 16, ptr %7, align 4, !dbg !512
  %42 = load i32, ptr %7, align 4, !dbg !513
  %43 = zext i32 %42 to i64, !dbg !513
  call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %43, i1 false), !dbg !514
  %44 = call i32 @htonl(i32 noundef 0) #11, !dbg !515
  %45 = getelementptr inbounds %struct.sockaddr_in, ptr %6, i32 0, i32 2, !dbg !516
  %46 = getelementptr inbounds %struct.in_addr, ptr %45, i32 0, i32 0, !dbg !517
  store i32 %44, ptr %46, align 4, !dbg !518
  %47 = getelementptr inbounds %struct.sockaddr_in, ptr %6, i32 0, i32 0, !dbg !519
  store i16 2, ptr %47, align 4, !dbg !520
  %48 = load i32, ptr %5, align 4, !dbg !521
  %49 = trunc i32 %48 to i16, !dbg !521
  %50 = call zeroext i16 @htons(i16 noundef zeroext %49) #11, !dbg !522
  %51 = getelementptr inbounds %struct.sockaddr_in, ptr %6, i32 0, i32 1, !dbg !523
  store i16 %50, ptr %51, align 2, !dbg !524
  %52 = load ptr, ptr %4, align 8, !dbg !525
  %53 = getelementptr inbounds %struct.ytcp_server_s, ptr %52, i32 0, i32 4, !dbg !527
  %54 = load i32, ptr %53, align 8, !dbg !527
  store ptr %6, ptr %10, align 8, !dbg !528
  %55 = load i32, ptr %7, align 4, !dbg !529
  %56 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, ptr %10, i32 0, i32 0, !dbg !530
  %57 = load ptr, ptr %56, align 8, !dbg !530
  %58 = call i32 @bind(i32 noundef %54, ptr %57, i32 noundef %55) #9, !dbg !530
  %59 = icmp slt i32 %58, 0, !dbg !531
  br i1 %59, label %60, label %62, !dbg !532

60:                                               ; preds = %41
  %61 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef @.str.1, i32 noundef 91, ptr noundef @__FUNCTION__.ytcp_server_start, ptr noundef @.str.8), !dbg !533
  store i32 -9, ptr %3, align 4, !dbg !535
  br label %112, !dbg !535

62:                                               ; preds = %41
  %63 = load ptr, ptr %4, align 8, !dbg !536
  %64 = getelementptr inbounds %struct.ytcp_server_s, ptr %63, i32 0, i32 4, !dbg !538
  %65 = load i32, ptr %64, align 8, !dbg !538
  %66 = call i32 @listen(i32 noundef %65, i32 noundef 4096) #9, !dbg !539
  %67 = icmp ne i32 %66, 0, !dbg !539
  br i1 %67, label %68, label %70, !dbg !540

68:                                               ; preds = %62
  %69 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 5, ptr noundef @.str.1, i32 noundef 96, ptr noundef @__FUNCTION__.ytcp_server_start, ptr noundef @.str.9), !dbg !541
  store i32 -9, ptr %3, align 4, !dbg !543
  br label %112, !dbg !543

70:                                               ; preds = %62
  br label %71, !dbg !544

71:                                               ; preds = %99, %84, %70
  %72 = load ptr, ptr %4, align 8, !dbg !545
  %73 = getelementptr inbounds %struct.ytcp_server_s, ptr %72, i32 0, i32 5, !dbg !546
  %74 = load i16, ptr %73, align 4, !dbg !546
  %75 = icmp ne i16 %74, 0, !dbg !544
  br i1 %75, label %76, label %100, !dbg !544

76:                                               ; preds = %71
  %77 = load ptr, ptr %4, align 8, !dbg !547
  %78 = getelementptr inbounds %struct.ytcp_server_s, ptr %77, i32 0, i32 4, !dbg !550
  %79 = load i32, ptr %78, align 8, !dbg !550
  store ptr %6, ptr %11, align 8, !dbg !551
  %80 = getelementptr inbounds %union.__SOCKADDR_ARG, ptr %11, i32 0, i32 0, !dbg !552
  %81 = load ptr, ptr %80, align 8, !dbg !552
  %82 = call i32 @accept(i32 noundef %79, ptr %81, ptr noundef %7), !dbg !552
  store i32 %82, ptr %8, align 4, !dbg !553
  %83 = icmp slt i32 %82, 0, !dbg !554
  br i1 %83, label %84, label %85, !dbg !555

84:                                               ; preds = %76
  br label %71, !dbg !556, !llvm.loop !557

85:                                               ; preds = %76
  %86 = load i32, ptr %8, align 4, !dbg !559
  %87 = call i32 @setsockopt(i32 noundef %86, i32 noundef 1, i32 noundef 9, ptr noundef %9, i32 noundef 4) #9, !dbg !561
  %88 = icmp slt i32 %87, 0, !dbg !562
  br i1 %88, label %89, label %91, !dbg !563

89:                                               ; preds = %85
  %90 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef @.str.1, i32 noundef 104, ptr noundef @__FUNCTION__.ytcp_server_start, ptr noundef @.str.10), !dbg !564
  br label %91, !dbg !564

91:                                               ; preds = %89, %85
  %92 = load ptr, ptr %4, align 8, !dbg !565
  %93 = load i32, ptr %8, align 4, !dbg !567
  %94 = call i32 @_ytcp_server_thread_launch(ptr noundef %92, i32 noundef %93), !dbg !568
  %95 = icmp ne i32 %94, 1, !dbg !569
  br i1 %95, label %96, label %99, !dbg !570

96:                                               ; preds = %91
  %97 = load i32, ptr %8, align 4, !dbg !571
  %98 = call i32 @close(i32 noundef %97), !dbg !572
  br label %99, !dbg !572

99:                                               ; preds = %96, %91
  br label %71, !dbg !544, !llvm.loop !557

100:                                              ; preds = %71
  %101 = load ptr, ptr %4, align 8, !dbg !573
  %102 = getelementptr inbounds %struct.ytcp_server_s, ptr %101, i32 0, i32 4, !dbg !574
  %103 = load i32, ptr %102, align 8, !dbg !574
  %104 = call i32 @close(i32 noundef %103), !dbg !575
  %105 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !576
  %106 = icmp ne i32 %105, 0, !dbg !576
  br i1 %106, label %107, label %109, !dbg !576

107:                                              ; preds = %100
  %108 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 109, ptr noundef @__FUNCTION__.ytcp_server_start, ptr noundef @.str.4), !dbg !576
  br label %110, !dbg !576

109:                                              ; preds = %100
  br label %110, !dbg !576

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ], !dbg !576
  store i32 1, ptr %3, align 4, !dbg !577
  br label %112, !dbg !577

112:                                              ; preds = %110, %68, %60, %23
  %113 = load i32, ptr %3, align 4, !dbg !578
  ret i32 %113, !dbg !578
}

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind willreturn memory(none)
declare i32 @htonl(i32 noundef) #6

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #6

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) #4

declare i32 @accept(i32 noundef, ptr, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ytcp_server_thread_launch(ptr noundef %0, i32 noundef %1) #0 !dbg !579 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !580, metadata !DIExpression()), !dbg !581
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata ptr %6, metadata !584, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.declare(metadata ptr %7, metadata !586, metadata !DIExpression()), !dbg !587
  %8 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !588
  %9 = icmp ne i32 %8, 0, !dbg !588
  br i1 %9, label %10, label %12, !dbg !588

10:                                               ; preds = %2
  %11 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 287, ptr noundef @__FUNCTION__._ytcp_server_thread_launch, ptr noundef @.str.2), !dbg !588
  br label %13, !dbg !588

12:                                               ; preds = %2
  br label %13, !dbg !588

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ], !dbg !588
  %15 = load ptr, ptr %4, align 8, !dbg !589
  %16 = getelementptr inbounds %struct.ytcp_server_s, ptr %15, i32 0, i32 6, !dbg !591
  %17 = load i32, ptr %16, align 8, !dbg !591
  %18 = icmp ne i32 %17, 0, !dbg !589
  br i1 %18, label %27, label %19, !dbg !592

19:                                               ; preds = %13
  %20 = load ptr, ptr %4, align 8, !dbg !593
  call void @ytcp_server_purge_threads(ptr noundef %20), !dbg !595
  %21 = load ptr, ptr %4, align 8, !dbg !596
  %22 = getelementptr inbounds %struct.ytcp_server_s, ptr %21, i32 0, i32 1, !dbg !596
  %23 = load i32, ptr %22, align 8, !dbg !596
  %24 = mul nsw i32 %23, 300, !dbg !596
  %25 = load ptr, ptr %4, align 8, !dbg !597
  %26 = getelementptr inbounds %struct.ytcp_server_s, ptr %25, i32 0, i32 6, !dbg !598
  store i32 %24, ptr %26, align 8, !dbg !599
  br label %27, !dbg !600

27:                                               ; preds = %19, %13
  %28 = load ptr, ptr %4, align 8, !dbg !601
  %29 = getelementptr inbounds %struct.ytcp_server_s, ptr %28, i32 0, i32 2, !dbg !603
  %30 = load i32, ptr %29, align 4, !dbg !603
  %31 = icmp sge i32 %30, 0, !dbg !604
  br i1 %31, label %32, label %101, !dbg !605

32:                                               ; preds = %27
  %33 = load ptr, ptr %4, align 8, !dbg !606
  %34 = getelementptr inbounds %struct.ytcp_server_s, ptr %33, i32 0, i32 3, !dbg !608
  %35 = load ptr, ptr %34, align 8, !dbg !608
  %36 = load ptr, ptr %4, align 8, !dbg !609
  %37 = getelementptr inbounds %struct.ytcp_server_s, ptr %36, i32 0, i32 2, !dbg !610
  %38 = load i32, ptr %37, align 4, !dbg !610
  %39 = sext i32 %38 to i64, !dbg !606
  %40 = getelementptr inbounds ptr, ptr %35, i64 %39, !dbg !606
  %41 = load ptr, ptr %40, align 8, !dbg !606
  store ptr %41, ptr %6, align 8, !dbg !611
  %42 = load i32, ptr %5, align 4, !dbg !612
  %43 = load ptr, ptr %6, align 8, !dbg !613
  %44 = getelementptr inbounds %struct.ytcp_thread_s, ptr %43, i32 0, i32 1, !dbg !614
  store i32 %42, ptr %44, align 8, !dbg !615
  %45 = load i32, ptr %5, align 4, !dbg !616
  %46 = call noalias ptr @fdopen(i32 noundef %45, ptr noundef @.str.15) #9, !dbg !617
  %47 = load ptr, ptr %6, align 8, !dbg !618
  %48 = getelementptr inbounds %struct.ytcp_thread_s, ptr %47, i32 0, i32 2, !dbg !619
  store ptr %46, ptr %48, align 8, !dbg !620
  %49 = load ptr, ptr %6, align 8, !dbg !621
  %50 = getelementptr inbounds %struct.ytcp_thread_s, ptr %49, i32 0, i32 2, !dbg !622
  %51 = load ptr, ptr %50, align 8, !dbg !622
  %52 = call i32 @setvbuf(ptr noundef %51, ptr noundef null, i32 noundef 2, i64 noundef 0) #9, !dbg !623
  %53 = load ptr, ptr %6, align 8, !dbg !624
  %54 = getelementptr inbounds %struct.ytcp_thread_s, ptr %53, i32 0, i32 4, !dbg !625
  store i32 2, ptr %54, align 8, !dbg !626
  %55 = load ptr, ptr %6, align 8, !dbg !627
  %56 = getelementptr inbounds %struct.ytcp_thread_s, ptr %55, i32 0, i32 3, !dbg !628
  %57 = call i32 @pthread_mutex_unlock(ptr noundef %56) #9, !dbg !629
  store i32 0, ptr %7, align 4, !dbg !630
  br label %58, !dbg !632

58:                                               ; preds = %81, %32
  %59 = load i32, ptr %7, align 4, !dbg !633
  %60 = load ptr, ptr %4, align 8, !dbg !635
  %61 = getelementptr inbounds %struct.ytcp_server_s, ptr %60, i32 0, i32 1, !dbg !636
  %62 = load i32, ptr %61, align 8, !dbg !636
  %63 = icmp slt i32 %59, %62, !dbg !637
  br i1 %63, label %64, label %84, !dbg !638

64:                                               ; preds = %58
  %65 = load ptr, ptr %4, align 8, !dbg !639
  %66 = getelementptr inbounds %struct.ytcp_server_s, ptr %65, i32 0, i32 3, !dbg !641
  %67 = load ptr, ptr %66, align 8, !dbg !641
  %68 = load i32, ptr %7, align 4, !dbg !642
  %69 = sext i32 %68 to i64, !dbg !639
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69, !dbg !639
  %71 = load ptr, ptr %70, align 8, !dbg !639
  store ptr %71, ptr %6, align 8, !dbg !643
  %72 = load ptr, ptr %6, align 8, !dbg !644
  %73 = getelementptr inbounds %struct.ytcp_thread_s, ptr %72, i32 0, i32 4, !dbg !646
  %74 = load i32, ptr %73, align 8, !dbg !646
  %75 = icmp eq i32 %74, 1, !dbg !647
  br i1 %75, label %76, label %80, !dbg !648

76:                                               ; preds = %64
  %77 = load i32, ptr %7, align 4, !dbg !649
  %78 = load ptr, ptr %4, align 8, !dbg !651
  %79 = getelementptr inbounds %struct.ytcp_server_s, ptr %78, i32 0, i32 2, !dbg !652
  store i32 %77, ptr %79, align 4, !dbg !653
  br label %84, !dbg !654

80:                                               ; preds = %64
  br label %81, !dbg !655

81:                                               ; preds = %80
  %82 = load i32, ptr %7, align 4, !dbg !656
  %83 = add nsw i32 %82, 1, !dbg !656
  store i32 %83, ptr %7, align 4, !dbg !656
  br label %58, !dbg !657, !llvm.loop !658

84:                                               ; preds = %76, %58
  %85 = load i32, ptr %7, align 4, !dbg !660
  %86 = load ptr, ptr %4, align 8, !dbg !662
  %87 = getelementptr inbounds %struct.ytcp_server_s, ptr %86, i32 0, i32 1, !dbg !663
  %88 = load i32, ptr %87, align 8, !dbg !663
  %89 = icmp eq i32 %85, %88, !dbg !664
  br i1 %89, label %90, label %93, !dbg !665

90:                                               ; preds = %84
  %91 = load ptr, ptr %4, align 8, !dbg !666
  %92 = getelementptr inbounds %struct.ytcp_server_s, ptr %91, i32 0, i32 2, !dbg !667
  store i32 -1, ptr %92, align 4, !dbg !668
  br label %93, !dbg !666

93:                                               ; preds = %90, %84
  %94 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !669
  %95 = icmp ne i32 %94, 0, !dbg !669
  br i1 %95, label %96, label %98, !dbg !669

96:                                               ; preds = %93
  %97 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 313, ptr noundef @__FUNCTION__._ytcp_server_thread_launch, ptr noundef @.str.4), !dbg !669
  br label %99, !dbg !669

98:                                               ; preds = %93
  br label %99, !dbg !669

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ], !dbg !669
  store i32 1, ptr %3, align 4, !dbg !670
  br label %206, !dbg !670

101:                                              ; preds = %27
  store i32 0, ptr %7, align 4, !dbg !671
  br label %102, !dbg !673

102:                                              ; preds = %125, %101
  %103 = load i32, ptr %7, align 4, !dbg !674
  %104 = load ptr, ptr %4, align 8, !dbg !676
  %105 = getelementptr inbounds %struct.ytcp_server_s, ptr %104, i32 0, i32 1, !dbg !677
  %106 = load i32, ptr %105, align 8, !dbg !677
  %107 = icmp slt i32 %103, %106, !dbg !678
  br i1 %107, label %108, label %128, !dbg !679

108:                                              ; preds = %102
  %109 = load ptr, ptr %4, align 8, !dbg !680
  %110 = getelementptr inbounds %struct.ytcp_server_s, ptr %109, i32 0, i32 3, !dbg !682
  %111 = load ptr, ptr %110, align 8, !dbg !682
  %112 = load i32, ptr %7, align 4, !dbg !683
  %113 = sext i32 %112 to i64, !dbg !680
  %114 = getelementptr inbounds ptr, ptr %111, i64 %113, !dbg !680
  %115 = load ptr, ptr %114, align 8, !dbg !680
  store ptr %115, ptr %6, align 8, !dbg !684
  %116 = load ptr, ptr %6, align 8, !dbg !685
  %117 = getelementptr inbounds %struct.ytcp_thread_s, ptr %116, i32 0, i32 4, !dbg !687
  %118 = load i32, ptr %117, align 8, !dbg !687
  %119 = icmp eq i32 %118, 1, !dbg !688
  br i1 %119, label %120, label %124, !dbg !689

120:                                              ; preds = %108
  %121 = load i32, ptr %7, align 4, !dbg !690
  %122 = load ptr, ptr %4, align 8, !dbg !692
  %123 = getelementptr inbounds %struct.ytcp_server_s, ptr %122, i32 0, i32 2, !dbg !693
  store i32 %121, ptr %123, align 4, !dbg !694
  br label %128, !dbg !695

124:                                              ; preds = %108
  br label %125, !dbg !696

125:                                              ; preds = %124
  %126 = load i32, ptr %7, align 4, !dbg !697
  %127 = add nsw i32 %126, 1, !dbg !697
  store i32 %127, ptr %7, align 4, !dbg !697
  br label %102, !dbg !698, !llvm.loop !699

128:                                              ; preds = %120, %102
  %129 = load i32, ptr %7, align 4, !dbg !701
  %130 = load ptr, ptr %4, align 8, !dbg !703
  %131 = getelementptr inbounds %struct.ytcp_server_s, ptr %130, i32 0, i32 1, !dbg !704
  %132 = load i32, ptr %131, align 8, !dbg !704
  %133 = icmp ne i32 %129, %132, !dbg !705
  br i1 %133, label %134, label %145, !dbg !706

134:                                              ; preds = %128
  %135 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !707
  %136 = icmp ne i32 %135, 0, !dbg !707
  br i1 %136, label %137, label %139, !dbg !707

137:                                              ; preds = %134
  %138 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 328, ptr noundef @__FUNCTION__._ytcp_server_thread_launch, ptr noundef @.str.16), !dbg !707
  br label %140, !dbg !707

139:                                              ; preds = %134
  br label %140, !dbg !707

140:                                              ; preds = %139, %137
  %141 = phi i32 [ %138, %137 ], [ 0, %139 ], !dbg !707
  %142 = load ptr, ptr %4, align 8, !dbg !709
  %143 = load i32, ptr %5, align 4, !dbg !710
  %144 = call i32 @_ytcp_server_thread_launch(ptr noundef %142, i32 noundef %143), !dbg !711
  store i32 %144, ptr %3, align 4, !dbg !712
  br label %206, !dbg !712

145:                                              ; preds = %128
  %146 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 88) #8, !dbg !713
  store ptr %146, ptr %6, align 8, !dbg !714
  %147 = load ptr, ptr %6, align 8, !dbg !715
  %148 = getelementptr inbounds %struct.ytcp_thread_s, ptr %147, i32 0, i32 3, !dbg !716
  %149 = call i32 @pthread_mutex_init(ptr noundef %148, ptr noundef null) #9, !dbg !717
  %150 = load ptr, ptr %6, align 8, !dbg !718
  %151 = getelementptr inbounds %struct.ytcp_thread_s, ptr %150, i32 0, i32 3, !dbg !719
  %152 = call i32 @pthread_mutex_lock(ptr noundef %151) #9, !dbg !720
  %153 = load ptr, ptr %4, align 8, !dbg !721
  %154 = load ptr, ptr %6, align 8, !dbg !722
  %155 = getelementptr inbounds %struct.ytcp_thread_s, ptr %154, i32 0, i32 6, !dbg !723
  store ptr %153, ptr %155, align 8, !dbg !724
  %156 = load ptr, ptr %4, align 8, !dbg !725
  %157 = getelementptr inbounds %struct.ytcp_server_s, ptr %156, i32 0, i32 3, !dbg !726
  %158 = load ptr, ptr %157, align 8, !dbg !726
  %159 = getelementptr inbounds ptr, ptr %158, i64 0, !dbg !725
  %160 = load ptr, ptr %159, align 8, !dbg !725
  %161 = getelementptr inbounds %struct.ytcp_thread_s, ptr %160, i32 0, i32 5, !dbg !727
  %162 = load ptr, ptr %161, align 8, !dbg !727
  %163 = load ptr, ptr %6, align 8, !dbg !728
  %164 = getelementptr inbounds %struct.ytcp_thread_s, ptr %163, i32 0, i32 5, !dbg !729
  store ptr %162, ptr %164, align 8, !dbg !730
  %165 = load ptr, ptr %6, align 8, !dbg !731
  %166 = getelementptr inbounds %struct.ytcp_thread_s, ptr %165, i32 0, i32 0, !dbg !733
  %167 = load ptr, ptr %6, align 8, !dbg !734
  %168 = call i32 @pthread_create(ptr noundef %166, ptr noundef null, ptr noundef @_ytcp_server_thread_handle, ptr noundef %167) #9, !dbg !735
  %169 = icmp ne i32 %168, 0, !dbg !735
  br i1 %169, label %170, label %182, !dbg !736

170:                                              ; preds = %145
  %171 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef @.str.1, i32 noundef 339, ptr noundef @__FUNCTION__._ytcp_server_thread_launch, ptr noundef @.str.3), !dbg !737
  %172 = load ptr, ptr %6, align 8, !dbg !739
  %173 = getelementptr inbounds %struct.ytcp_thread_s, ptr %172, i32 0, i32 4, !dbg !740
  store i32 3, ptr %173, align 8, !dbg !741
  %174 = load ptr, ptr %6, align 8, !dbg !742
  %175 = getelementptr inbounds %struct.ytcp_thread_s, ptr %174, i32 0, i32 1, !dbg !743
  store i32 -1, ptr %175, align 8, !dbg !744
  %176 = load ptr, ptr %6, align 8, !dbg !745
  %177 = getelementptr inbounds %struct.ytcp_thread_s, ptr %176, i32 0, i32 3, !dbg !746
  %178 = call i32 @pthread_mutex_unlock(ptr noundef %177) #9, !dbg !747
  %179 = load ptr, ptr %6, align 8, !dbg !748
  %180 = getelementptr inbounds %struct.ytcp_thread_s, ptr %179, i32 0, i32 3, !dbg !749
  %181 = call i32 @pthread_mutex_destroy(ptr noundef %180) #9, !dbg !750
  store i32 -11, ptr %3, align 4, !dbg !751
  br label %206, !dbg !751

182:                                              ; preds = %145
  %183 = load ptr, ptr %4, align 8, !dbg !752
  %184 = getelementptr inbounds %struct.ytcp_server_s, ptr %183, i32 0, i32 3, !dbg !753
  %185 = load ptr, ptr %6, align 8, !dbg !754
  %186 = call i32 @yv_add(ptr noundef %184, ptr noundef %185), !dbg !755
  %187 = load ptr, ptr %4, align 8, !dbg !756
  %188 = getelementptr inbounds %struct.ytcp_server_s, ptr %187, i32 0, i32 1, !dbg !757
  %189 = load i32, ptr %188, align 8, !dbg !758
  %190 = add nsw i32 %189, 1, !dbg !758
  store i32 %190, ptr %188, align 8, !dbg !758
  %191 = load i32, ptr %5, align 4, !dbg !759
  %192 = load ptr, ptr %6, align 8, !dbg !760
  %193 = getelementptr inbounds %struct.ytcp_thread_s, ptr %192, i32 0, i32 1, !dbg !761
  store i32 %191, ptr %193, align 8, !dbg !762
  %194 = load ptr, ptr %6, align 8, !dbg !763
  %195 = getelementptr inbounds %struct.ytcp_thread_s, ptr %194, i32 0, i32 4, !dbg !764
  store i32 2, ptr %195, align 8, !dbg !765
  %196 = load ptr, ptr %6, align 8, !dbg !766
  %197 = getelementptr inbounds %struct.ytcp_thread_s, ptr %196, i32 0, i32 3, !dbg !767
  %198 = call i32 @pthread_mutex_unlock(ptr noundef %197) #9, !dbg !768
  %199 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !769
  %200 = icmp ne i32 %199, 0, !dbg !769
  br i1 %200, label %201, label %203, !dbg !769

201:                                              ; preds = %182
  %202 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 351, ptr noundef @__FUNCTION__._ytcp_server_thread_launch, ptr noundef @.str.17), !dbg !769
  br label %204, !dbg !769

203:                                              ; preds = %182
  br label %204, !dbg !769

204:                                              ; preds = %203, %201
  %205 = phi i32 [ %202, %201 ], [ 0, %203 ], !dbg !769
  store i32 1, ptr %3, align 4, !dbg !770
  br label %206, !dbg !770

206:                                              ; preds = %204, %170, %140, %99
  %207 = load i32, ptr %3, align 4, !dbg !771
  ret i32 %207, !dbg !771
}

declare i32 @close(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @ytcp_server_purge_threads(ptr noundef %0) #0 !dbg !772 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !775, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.declare(metadata ptr %3, metadata !777, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.declare(metadata ptr %4, metadata !779, metadata !DIExpression()), !dbg !780
  %5 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !781
  %6 = icmp ne i32 %5, 0, !dbg !781
  br i1 %6, label %7, label %9, !dbg !781

7:                                                ; preds = %1
  %8 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 122, ptr noundef @__FUNCTION__.ytcp_server_purge_threads, ptr noundef @.str.2), !dbg !781
  br label %10, !dbg !781

9:                                                ; preds = %1
  br label %10, !dbg !781

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ], !dbg !781
  %12 = load ptr, ptr %2, align 8, !dbg !782
  %13 = getelementptr inbounds %struct.ytcp_server_s, ptr %12, i32 0, i32 1, !dbg !784
  %14 = load i32, ptr %13, align 8, !dbg !784
  store i32 %14, ptr %4, align 4, !dbg !785
  br label %15, !dbg !786

15:                                               ; preds = %67, %10
  %16 = load i32, ptr %4, align 4, !dbg !787
  %17 = icmp ne i32 %16, 0, !dbg !789
  br i1 %17, label %18, label %70, !dbg !789

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 8, !dbg !790
  %20 = getelementptr inbounds %struct.ytcp_server_s, ptr %19, i32 0, i32 3, !dbg !792
  %21 = load ptr, ptr %20, align 8, !dbg !792
  %22 = load i32, ptr %4, align 4, !dbg !793
  %23 = sub nsw i32 %22, 1, !dbg !794
  %24 = sext i32 %23 to i64, !dbg !790
  %25 = getelementptr inbounds ptr, ptr %21, i64 %24, !dbg !790
  %26 = load ptr, ptr %25, align 8, !dbg !790
  store ptr %26, ptr %3, align 8, !dbg !795
  %27 = load ptr, ptr %3, align 8, !dbg !796
  %28 = getelementptr inbounds %struct.ytcp_thread_s, ptr %27, i32 0, i32 4, !dbg !798
  %29 = load i32, ptr %28, align 8, !dbg !798
  %30 = icmp eq i32 %29, 3, !dbg !799
  br i1 %30, label %36, label %31, !dbg !800

31:                                               ; preds = %18
  %32 = load ptr, ptr %3, align 8, !dbg !801
  %33 = getelementptr inbounds %struct.ytcp_thread_s, ptr %32, i32 0, i32 4, !dbg !802
  %34 = load i32, ptr %33, align 8, !dbg !802
  %35 = icmp eq i32 %34, 0, !dbg !803
  br i1 %35, label %36, label %66, !dbg !804

36:                                               ; preds = %31, %18
  %37 = load ptr, ptr %2, align 8, !dbg !805
  %38 = getelementptr inbounds %struct.ytcp_server_s, ptr %37, i32 0, i32 3, !dbg !807
  %39 = load ptr, ptr %38, align 8, !dbg !807
  %40 = load i32, ptr %4, align 4, !dbg !808
  %41 = sext i32 %40 to i64, !dbg !808
  %42 = call ptr @yv_ext(ptr noundef %39, i64 noundef %41), !dbg !809
  store ptr %42, ptr %3, align 8, !dbg !810
  %43 = load ptr, ptr %3, align 8, !dbg !811
  %44 = getelementptr inbounds %struct.ytcp_thread_s, ptr %43, i32 0, i32 4, !dbg !812
  store i32 3, ptr %44, align 8, !dbg !813
  %45 = load ptr, ptr %3, align 8, !dbg !814
  %46 = getelementptr inbounds %struct.ytcp_thread_s, ptr %45, i32 0, i32 3, !dbg !815
  %47 = call i32 @pthread_mutex_unlock(ptr noundef %46) #9, !dbg !816
  %48 = load ptr, ptr %3, align 8, !dbg !817
  %49 = getelementptr inbounds %struct.ytcp_thread_s, ptr %48, i32 0, i32 0, !dbg !818
  %50 = load i64, ptr %49, align 8, !dbg !818
  %51 = call i32 @pthread_join(i64 noundef %50, ptr noundef null), !dbg !819
  %52 = load ptr, ptr %3, align 8, !dbg !820
  %53 = getelementptr inbounds %struct.ytcp_thread_s, ptr %52, i32 0, i32 3, !dbg !821
  %54 = call i32 @pthread_mutex_destroy(ptr noundef %53) #9, !dbg !822
  %55 = load ptr, ptr %3, align 8, !dbg !823
  %56 = icmp ne ptr %55, null, !dbg !823
  br i1 %56, label %57, label %59, !dbg !823

57:                                               ; preds = %36
  %58 = load ptr, ptr %3, align 8, !dbg !823
  call void @free(ptr noundef %58) #9, !dbg !823
  br label %60, !dbg !823

59:                                               ; preds = %36
  br label %60, !dbg !823

60:                                               ; preds = %59, %57
  %61 = phi ptr [ null, %57 ], [ null, %59 ], !dbg !823
  store ptr null, ptr %3, align 8, !dbg !823
  %62 = load ptr, ptr %2, align 8, !dbg !824
  %63 = getelementptr inbounds %struct.ytcp_server_s, ptr %62, i32 0, i32 1, !dbg !825
  %64 = load i32, ptr %63, align 8, !dbg !826
  %65 = add nsw i32 %64, -1, !dbg !826
  store i32 %65, ptr %63, align 8, !dbg !826
  br label %66, !dbg !827

66:                                               ; preds = %60, %31
  br label %67, !dbg !828

67:                                               ; preds = %66
  %68 = load i32, ptr %4, align 4, !dbg !829
  %69 = add nsw i32 %68, -1, !dbg !829
  store i32 %69, ptr %4, align 4, !dbg !829
  br label %15, !dbg !830, !llvm.loop !831

70:                                               ; preds = %15
  %71 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !833
  %72 = icmp ne i32 %71, 0, !dbg !833
  br i1 %72, label %73, label %75, !dbg !833

73:                                               ; preds = %70
  %74 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 137, ptr noundef @__FUNCTION__.ytcp_server_purge_threads, ptr noundef @.str.4), !dbg !833
  br label %76, !dbg !833

75:                                               ; preds = %70
  br label %76, !dbg !833

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ], !dbg !833
  ret void, !dbg !834
}

declare ptr @yv_ext(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #4

declare i32 @pthread_join(i64 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ytcp_server_set_nbr_threads(ptr noundef %0, i32 noundef %1) #0 !dbg !835 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !836, metadata !DIExpression()), !dbg !837
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !838, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.declare(metadata ptr %6, metadata !840, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.declare(metadata ptr %7, metadata !842, metadata !DIExpression()), !dbg !843
  %8 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !844
  %9 = icmp ne i32 %8, 0, !dbg !844
  br i1 %9, label %10, label %12, !dbg !844

10:                                               ; preds = %2
  %11 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 151, ptr noundef @__FUNCTION__.ytcp_server_set_nbr_threads, ptr noundef @.str.2), !dbg !844
  br label %13, !dbg !844

12:                                               ; preds = %2
  br label %13, !dbg !844

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ], !dbg !844
  %15 = load i32, ptr %5, align 4, !dbg !845
  %16 = load ptr, ptr %4, align 8, !dbg !847
  %17 = getelementptr inbounds %struct.ytcp_server_s, ptr %16, i32 0, i32 1, !dbg !848
  %18 = load i32, ptr %17, align 8, !dbg !848
  %19 = icmp eq i32 %15, %18, !dbg !849
  br i1 %19, label %20, label %21, !dbg !850

20:                                               ; preds = %13
  store i32 1, ptr %3, align 4, !dbg !851
  br label %141, !dbg !851

21:                                               ; preds = %13
  %22 = load ptr, ptr %4, align 8, !dbg !852
  %23 = getelementptr inbounds %struct.ytcp_server_s, ptr %22, i32 0, i32 1, !dbg !854
  %24 = load i32, ptr %23, align 8, !dbg !854
  %25 = load i32, ptr %5, align 4, !dbg !855
  %26 = icmp sgt i32 %24, %25, !dbg !856
  br i1 %26, label %27, label %82, !dbg !857

27:                                               ; preds = %21
  %28 = load ptr, ptr %4, align 8, !dbg !858
  %29 = getelementptr inbounds %struct.ytcp_server_s, ptr %28, i32 0, i32 1, !dbg !861
  %30 = load i32, ptr %29, align 8, !dbg !861
  store i32 %30, ptr %7, align 4, !dbg !862
  br label %31, !dbg !863

31:                                               ; preds = %78, %27
  %32 = load i32, ptr %7, align 4, !dbg !864
  %33 = icmp ne i32 %32, 0, !dbg !866
  br i1 %33, label %34, label %81, !dbg !866

34:                                               ; preds = %31
  %35 = load ptr, ptr %4, align 8, !dbg !867
  %36 = getelementptr inbounds %struct.ytcp_server_s, ptr %35, i32 0, i32 3, !dbg !869
  %37 = load ptr, ptr %36, align 8, !dbg !869
  %38 = load i32, ptr %7, align 4, !dbg !870
  %39 = sub nsw i32 %38, 1, !dbg !871
  %40 = sext i32 %39 to i64, !dbg !867
  %41 = getelementptr inbounds ptr, ptr %37, i64 %40, !dbg !867
  %42 = load ptr, ptr %41, align 8, !dbg !867
  store ptr %42, ptr %6, align 8, !dbg !872
  %43 = load ptr, ptr %6, align 8, !dbg !873
  %44 = getelementptr inbounds %struct.ytcp_thread_s, ptr %43, i32 0, i32 4, !dbg !875
  %45 = load i32, ptr %44, align 8, !dbg !875
  %46 = icmp ne i32 %45, 2, !dbg !876
  br i1 %46, label %47, label %77, !dbg !877

47:                                               ; preds = %34
  %48 = load ptr, ptr %4, align 8, !dbg !878
  %49 = getelementptr inbounds %struct.ytcp_server_s, ptr %48, i32 0, i32 3, !dbg !880
  %50 = load ptr, ptr %49, align 8, !dbg !880
  %51 = load i32, ptr %7, align 4, !dbg !881
  %52 = sext i32 %51 to i64, !dbg !881
  %53 = call ptr @yv_ext(ptr noundef %50, i64 noundef %52), !dbg !882
  store ptr %53, ptr %6, align 8, !dbg !883
  %54 = load ptr, ptr %6, align 8, !dbg !884
  %55 = getelementptr inbounds %struct.ytcp_thread_s, ptr %54, i32 0, i32 4, !dbg !885
  store i32 3, ptr %55, align 8, !dbg !886
  %56 = load ptr, ptr %6, align 8, !dbg !887
  %57 = getelementptr inbounds %struct.ytcp_thread_s, ptr %56, i32 0, i32 3, !dbg !888
  %58 = call i32 @pthread_mutex_unlock(ptr noundef %57) #9, !dbg !889
  %59 = load ptr, ptr %6, align 8, !dbg !890
  %60 = getelementptr inbounds %struct.ytcp_thread_s, ptr %59, i32 0, i32 0, !dbg !891
  %61 = load i64, ptr %60, align 8, !dbg !891
  %62 = call i32 @pthread_join(i64 noundef %61, ptr noundef null), !dbg !892
  %63 = load ptr, ptr %6, align 8, !dbg !893
  %64 = getelementptr inbounds %struct.ytcp_thread_s, ptr %63, i32 0, i32 3, !dbg !894
  %65 = call i32 @pthread_mutex_destroy(ptr noundef %64) #9, !dbg !895
  %66 = load ptr, ptr %6, align 8, !dbg !896
  %67 = icmp ne ptr %66, null, !dbg !896
  br i1 %67, label %68, label %70, !dbg !896

68:                                               ; preds = %47
  %69 = load ptr, ptr %6, align 8, !dbg !896
  call void @free(ptr noundef %69) #9, !dbg !896
  br label %71, !dbg !896

70:                                               ; preds = %47
  br label %71, !dbg !896

71:                                               ; preds = %70, %68
  %72 = phi ptr [ null, %68 ], [ null, %70 ], !dbg !896
  store ptr null, ptr %6, align 8, !dbg !896
  %73 = load ptr, ptr %4, align 8, !dbg !897
  %74 = getelementptr inbounds %struct.ytcp_server_s, ptr %73, i32 0, i32 1, !dbg !898
  %75 = load i32, ptr %74, align 8, !dbg !899
  %76 = add nsw i32 %75, -1, !dbg !899
  store i32 %76, ptr %74, align 8, !dbg !899
  br label %77, !dbg !900

77:                                               ; preds = %71, %34
  br label %78, !dbg !901

78:                                               ; preds = %77
  %79 = load i32, ptr %7, align 4, !dbg !902
  %80 = add nsw i32 %79, -1, !dbg !902
  store i32 %80, ptr %7, align 4, !dbg !902
  br label %31, !dbg !903, !llvm.loop !904

81:                                               ; preds = %31
  br label %82, !dbg !906

82:                                               ; preds = %81, %21
  br label %83, !dbg !907

83:                                               ; preds = %120, %82
  %84 = load ptr, ptr %4, align 8, !dbg !908
  %85 = getelementptr inbounds %struct.ytcp_server_s, ptr %84, i32 0, i32 1, !dbg !909
  %86 = load i32, ptr %85, align 8, !dbg !909
  %87 = load i32, ptr %5, align 4, !dbg !910
  %88 = icmp slt i32 %86, %87, !dbg !911
  br i1 %88, label %89, label %133, !dbg !907

89:                                               ; preds = %83
  %90 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 88) #8, !dbg !912
  store ptr %90, ptr %6, align 8, !dbg !914
  %91 = load ptr, ptr %6, align 8, !dbg !915
  %92 = getelementptr inbounds %struct.ytcp_thread_s, ptr %91, i32 0, i32 3, !dbg !916
  %93 = call i32 @pthread_mutex_init(ptr noundef %92, ptr noundef null) #9, !dbg !917
  %94 = load ptr, ptr %6, align 8, !dbg !918
  %95 = getelementptr inbounds %struct.ytcp_thread_s, ptr %94, i32 0, i32 3, !dbg !919
  %96 = call i32 @pthread_mutex_lock(ptr noundef %95) #9, !dbg !920
  %97 = load ptr, ptr %4, align 8, !dbg !921
  %98 = load ptr, ptr %6, align 8, !dbg !922
  %99 = getelementptr inbounds %struct.ytcp_thread_s, ptr %98, i32 0, i32 6, !dbg !923
  store ptr %97, ptr %99, align 8, !dbg !924
  %100 = load ptr, ptr %4, align 8, !dbg !925
  %101 = getelementptr inbounds %struct.ytcp_server_s, ptr %100, i32 0, i32 3, !dbg !926
  %102 = load ptr, ptr %101, align 8, !dbg !926
  %103 = getelementptr inbounds ptr, ptr %102, i64 0, !dbg !925
  %104 = load ptr, ptr %103, align 8, !dbg !925
  %105 = getelementptr inbounds %struct.ytcp_thread_s, ptr %104, i32 0, i32 5, !dbg !927
  %106 = load ptr, ptr %105, align 8, !dbg !927
  %107 = load ptr, ptr %6, align 8, !dbg !928
  %108 = getelementptr inbounds %struct.ytcp_thread_s, ptr %107, i32 0, i32 5, !dbg !929
  store ptr %106, ptr %108, align 8, !dbg !930
  %109 = load ptr, ptr %6, align 8, !dbg !931
  %110 = getelementptr inbounds %struct.ytcp_thread_s, ptr %109, i32 0, i32 0, !dbg !933
  %111 = load ptr, ptr %6, align 8, !dbg !934
  %112 = call i32 @pthread_create(ptr noundef %110, ptr noundef null, ptr noundef @_ytcp_server_thread_handle, ptr noundef %111) #9, !dbg !935
  %113 = icmp ne i32 %112, 0, !dbg !935
  br i1 %113, label %114, label %120, !dbg !936

114:                                              ; preds = %89
  %115 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 4, ptr noundef @.str.1, i32 noundef 181, ptr noundef @__FUNCTION__.ytcp_server_set_nbr_threads, ptr noundef @.str.3), !dbg !937
  %116 = load ptr, ptr %6, align 8, !dbg !939
  %117 = getelementptr inbounds %struct.ytcp_thread_s, ptr %116, i32 0, i32 4, !dbg !940
  store i32 3, ptr %117, align 8, !dbg !941
  %118 = load ptr, ptr %6, align 8, !dbg !942
  %119 = getelementptr inbounds %struct.ytcp_thread_s, ptr %118, i32 0, i32 1, !dbg !943
  store i32 -1, ptr %119, align 8, !dbg !944
  store i32 -11, ptr %3, align 4, !dbg !945
  br label %141, !dbg !945

120:                                              ; preds = %89
  %121 = load ptr, ptr %4, align 8, !dbg !946
  %122 = getelementptr inbounds %struct.ytcp_server_s, ptr %121, i32 0, i32 3, !dbg !947
  %123 = load ptr, ptr %6, align 8, !dbg !948
  %124 = call i32 @yv_add(ptr noundef %122, ptr noundef %123), !dbg !949
  %125 = load ptr, ptr %4, align 8, !dbg !950
  %126 = getelementptr inbounds %struct.ytcp_server_s, ptr %125, i32 0, i32 1, !dbg !951
  %127 = load i32, ptr %126, align 8, !dbg !952
  %128 = add nsw i32 %127, 1, !dbg !952
  store i32 %128, ptr %126, align 8, !dbg !952
  %129 = load ptr, ptr %6, align 8, !dbg !953
  %130 = getelementptr inbounds %struct.ytcp_thread_s, ptr %129, i32 0, i32 1, !dbg !954
  store i32 -1, ptr %130, align 8, !dbg !955
  %131 = load ptr, ptr %6, align 8, !dbg !956
  %132 = getelementptr inbounds %struct.ytcp_thread_s, ptr %131, i32 0, i32 4, !dbg !957
  store i32 1, ptr %132, align 8, !dbg !958
  br label %83, !dbg !907, !llvm.loop !959

133:                                              ; preds = %83
  %134 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !961
  %135 = icmp ne i32 %134, 0, !dbg !961
  br i1 %135, label %136, label %138, !dbg !961

136:                                              ; preds = %133
  %137 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 191, ptr noundef @__FUNCTION__.ytcp_server_set_nbr_threads, ptr noundef @.str.4), !dbg !961
  br label %139, !dbg !961

138:                                              ; preds = %133
  br label %139, !dbg !961

139:                                              ; preds = %138, %136
  %140 = phi i32 [ %137, %136 ], [ 0, %138 ], !dbg !961
  store i32 1, ptr %3, align 4, !dbg !962
  br label %141, !dbg !962

141:                                              ; preds = %139, %114, %20
  %142 = load i32, ptr %3, align 4, !dbg !963
  ret i32 %142, !dbg !963
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ytcp_server_stop(ptr noundef %0) #0 !dbg !964 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !967, metadata !DIExpression()), !dbg !968
  %3 = load ptr, ptr %2, align 8, !dbg !969
  %4 = getelementptr inbounds %struct.ytcp_server_s, ptr %3, i32 0, i32 5, !dbg !970
  store i16 0, ptr %4, align 4, !dbg !971
  ret i32 1, !dbg !972
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @ytcp_server_delete(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !973 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !976, metadata !DIExpression()), !dbg !977
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !978, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.declare(metadata ptr %6, metadata !980, metadata !DIExpression()), !dbg !981
  %7 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !982
  %8 = icmp ne i32 %7, 0, !dbg !982
  br i1 %8, label %9, label %11, !dbg !982

9:                                                ; preds = %2
  %10 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 214, ptr noundef @__FUNCTION__.ytcp_server_delete, ptr noundef @.str.2), !dbg !982
  br label %12, !dbg !982

11:                                               ; preds = %2
  br label %12, !dbg !982

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ 0, %11 ], !dbg !982
  %14 = load ptr, ptr %4, align 8, !dbg !983
  %15 = icmp ne ptr %14, null, !dbg !983
  br i1 %15, label %16, label %21, !dbg !985

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 8, !dbg !986
  %18 = getelementptr inbounds %struct.ytcp_server_s, ptr %17, i32 0, i32 3, !dbg !987
  %19 = load ptr, ptr %18, align 8, !dbg !987
  %20 = icmp ne ptr %19, null, !dbg !986
  br i1 %20, label %23, label %21, !dbg !988

21:                                               ; preds = %16, %12
  %22 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 2, ptr noundef @.str.1, i32 noundef 217, ptr noundef @__FUNCTION__.ytcp_server_delete, ptr noundef @.str.11), !dbg !989
  store ptr null, ptr %3, align 8, !dbg !991
  br label %89, !dbg !991

23:                                               ; preds = %16
  br label %24, !dbg !992

24:                                               ; preds = %66, %23
  %25 = load ptr, ptr %4, align 8, !dbg !993
  %26 = getelementptr inbounds %struct.ytcp_server_s, ptr %25, i32 0, i32 3, !dbg !994
  %27 = load ptr, ptr %26, align 8, !dbg !994
  %28 = call ptr @yv_get(ptr noundef %27), !dbg !995
  store ptr %28, ptr %6, align 8, !dbg !996
  %29 = icmp ne ptr %28, null, !dbg !992
  br i1 %29, label %30, label %72, !dbg !992

30:                                               ; preds = %24
  %31 = load i16, ptr %5, align 2, !dbg !997
  %32 = zext i16 %31 to i32, !dbg !997
  %33 = icmp ne i32 %32, 0, !dbg !997
  br i1 %33, label %34, label %48, !dbg !1000

34:                                               ; preds = %30
  %35 = load ptr, ptr %6, align 8, !dbg !1001
  %36 = getelementptr inbounds %struct.ytcp_thread_s, ptr %35, i32 0, i32 4, !dbg !1002
  %37 = load i32, ptr %36, align 8, !dbg !1002
  %38 = icmp eq i32 %37, 2, !dbg !1003
  br i1 %38, label %39, label %48, !dbg !1004

39:                                               ; preds = %34
  br label %40, !dbg !1005

40:                                               ; preds = %45, %39
  %41 = load ptr, ptr %6, align 8, !dbg !1007
  %42 = getelementptr inbounds %struct.ytcp_thread_s, ptr %41, i32 0, i32 4, !dbg !1008
  %43 = load i32, ptr %42, align 8, !dbg !1008
  %44 = icmp eq i32 %43, 2, !dbg !1009
  br i1 %44, label %45, label %47, !dbg !1005

45:                                               ; preds = %40
  %46 = call i32 @usleep(i32 noundef 500), !dbg !1010
  br label %40, !dbg !1005, !llvm.loop !1011

47:                                               ; preds = %40
  br label %48, !dbg !1013

48:                                               ; preds = %47, %34, %30
  %49 = load ptr, ptr %6, align 8, !dbg !1014
  %50 = getelementptr inbounds %struct.ytcp_thread_s, ptr %49, i32 0, i32 4, !dbg !1015
  store i32 3, ptr %50, align 8, !dbg !1016
  %51 = load ptr, ptr %6, align 8, !dbg !1017
  %52 = getelementptr inbounds %struct.ytcp_thread_s, ptr %51, i32 0, i32 3, !dbg !1018
  %53 = call i32 @pthread_mutex_unlock(ptr noundef %52) #9, !dbg !1019
  %54 = load ptr, ptr %6, align 8, !dbg !1020
  %55 = getelementptr inbounds %struct.ytcp_thread_s, ptr %54, i32 0, i32 0, !dbg !1021
  %56 = load i64, ptr %55, align 8, !dbg !1021
  %57 = call i32 @pthread_join(i64 noundef %56, ptr noundef null), !dbg !1022
  %58 = load ptr, ptr %6, align 8, !dbg !1023
  %59 = getelementptr inbounds %struct.ytcp_thread_s, ptr %58, i32 0, i32 3, !dbg !1024
  %60 = call i32 @pthread_mutex_destroy(ptr noundef %59) #9, !dbg !1025
  %61 = load ptr, ptr %6, align 8, !dbg !1026
  %62 = icmp ne ptr %61, null, !dbg !1026
  br i1 %62, label %63, label %65, !dbg !1026

63:                                               ; preds = %48
  %64 = load ptr, ptr %6, align 8, !dbg !1026
  call void @free(ptr noundef %64) #9, !dbg !1026
  br label %66, !dbg !1026

65:                                               ; preds = %48
  br label %66, !dbg !1026

66:                                               ; preds = %65, %63
  %67 = phi ptr [ null, %63 ], [ null, %65 ], !dbg !1026
  store ptr null, ptr %6, align 8, !dbg !1026
  %68 = load ptr, ptr %4, align 8, !dbg !1027
  %69 = getelementptr inbounds %struct.ytcp_server_s, ptr %68, i32 0, i32 1, !dbg !1028
  %70 = load i32, ptr %69, align 8, !dbg !1029
  %71 = add nsw i32 %70, -1, !dbg !1029
  store i32 %71, ptr %69, align 8, !dbg !1029
  br label %24, !dbg !992, !llvm.loop !1030

72:                                               ; preds = %24
  %73 = load ptr, ptr %4, align 8, !dbg !1032
  %74 = getelementptr inbounds %struct.ytcp_server_s, ptr %73, i32 0, i32 3, !dbg !1033
  call void @yv_del(ptr noundef %74, ptr noundef null, ptr noundef null), !dbg !1034
  %75 = load ptr, ptr %4, align 8, !dbg !1035
  %76 = icmp ne ptr %75, null, !dbg !1035
  br i1 %76, label %77, label %79, !dbg !1035

77:                                               ; preds = %72
  %78 = load ptr, ptr %4, align 8, !dbg !1035
  call void @free(ptr noundef %78) #9, !dbg !1035
  br label %80, !dbg !1035

79:                                               ; preds = %72
  br label %80, !dbg !1035

80:                                               ; preds = %79, %77
  %81 = phi ptr [ null, %77 ], [ null, %79 ], !dbg !1035
  store ptr null, ptr %4, align 8, !dbg !1035
  %82 = call i32 @ylog_check_module(ptr noundef @.str), !dbg !1036
  %83 = icmp ne i32 %82, 0, !dbg !1036
  br i1 %83, label %84, label %86, !dbg !1036

84:                                               ; preds = %80
  %85 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef @.str.1, i32 noundef 236, ptr noundef @__FUNCTION__.ytcp_server_delete, ptr noundef @.str.4), !dbg !1036
  br label %87, !dbg !1036

86:                                               ; preds = %80
  br label %87, !dbg !1036

87:                                               ; preds = %86, %84
  %88 = phi i32 [ %85, %84 ], [ 0, %86 ], !dbg !1036
  store ptr null, ptr %3, align 8, !dbg !1037
  br label %89, !dbg !1037

89:                                               ; preds = %87, %21
  %90 = load ptr, ptr %3, align 8, !dbg !1038
  ret ptr %90, !dbg !1038
}

declare ptr @yv_get(ptr noundef) #2

declare i32 @usleep(i32 noundef) #2

declare void @yv_del(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #7

declare i32 @fclose(ptr noundef) #2

; Function Attrs: nounwind
declare noalias ptr @fdopen(i32 noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @setvbuf(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!111}
!llvm.module.flags = !{!275, !276, !277, !278, !279, !280}
!llvm.ident = !{!281}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./ytcp_server.c", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "01ea3e45bd0a3674bb5cd3c65689ae9d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 136, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 17)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 9)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 31)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 8)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 144, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 18)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 13)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 32)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !45, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 11)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !40, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 29)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 208, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 26)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 224, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 28)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 152, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 19)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 22)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 216, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 27)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 14)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 261, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 20)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !36)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !84, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 4)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 328, type: !94, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 351, type: !59, isLocal: true, isDefinition: true)
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !113, retainedTypes: !143, globals: !274, splitDebugInlining: false, nameTableKind: None)
!112 = !DIFile(filename: "ytcp_server.c", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "01ea3e45bd0a3674bb5cd3c65689ae9d")
!113 = !{!114, !122, !131}
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ytcp_state_e", file: !115, line: 109, baseType: !116, size: 32, elements: !117)
!115 = !DIFile(filename: "./ytcp_server.h", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "0e22595ccc4dc04dc3742369b5f1febc")
!116 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "YTCP_NONE", value: 0)
!119 = !DIEnumerator(name: "YTCP_WAIT", value: 1)
!120 = !DIEnumerator(name: "YTCP_RUN", value: 2)
!121 = !DIEnumerator(name: "YTCP_CLOSE", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !123, line: 267, baseType: !116, size: 32, elements: !124)
!123 = !DIFile(filename: "./ylog.h", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!124 = !{!125, !126, !127, !128, !129, !130}
!125 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!126 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!127 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!128 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!129 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!130 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !132, line: 24, baseType: !116, size: 32, elements: !133)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142}
!134 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!135 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!136 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!137 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!138 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!139 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!140 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!141 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!142 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!143 = !{!144, !145, !151, !160}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !146, line: 30, baseType: !147)
!146 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !148, line: 26, baseType: !149)
!148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !150, line: 42, baseType: !116)
!150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !153, line: 180, size: 128, elements: !154)
!153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!154 = !{!155, !159}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !152, file: !153, line: 182, baseType: !156, size: 16)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !157, line: 28, baseType: !158)
!157 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!158 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !152, file: !153, line: 183, baseType: !89, size: 112, offset: 16)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "ytcp_thread_t", file: !115, line: 148, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ytcp_thread_s", file: !115, line: 136, size: 704, elements: !163)
!163 = !{!164, !168, !170, !225, !254, !256, !257}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !162, file: !115, line: 138, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !166, line: 27, baseType: !167)
!166 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!167 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !162, file: !115, line: 139, baseType: !169, size: 32, offset: 64)
!169 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !162, file: !115, line: 140, baseType: !171, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !174)
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !176)
!175 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!176 = !{!177, !178, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !193, !195, !196, !197, !200, !201, !203, !207, !210, !212, !215, !218, !219, !220, !223, !224}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !174, file: !175, line: 51, baseType: !169, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !174, file: !175, line: 54, baseType: !179, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !174, file: !175, line: 55, baseType: !179, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !174, file: !175, line: 56, baseType: !179, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !174, file: !175, line: 57, baseType: !179, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !174, file: !175, line: 58, baseType: !179, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !174, file: !175, line: 59, baseType: !179, size: 64, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !174, file: !175, line: 60, baseType: !179, size: 64, offset: 448)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !174, file: !175, line: 61, baseType: !179, size: 64, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !174, file: !175, line: 64, baseType: !179, size: 64, offset: 576)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !174, file: !175, line: 65, baseType: !179, size: 64, offset: 640)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !174, file: !175, line: 66, baseType: !179, size: 64, offset: 704)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !174, file: !175, line: 68, baseType: !191, size: 64, offset: 768)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !175, line: 36, flags: DIFlagFwdDecl)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !174, file: !175, line: 70, baseType: !194, size: 64, offset: 832)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !174, file: !175, line: 72, baseType: !169, size: 32, offset: 896)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !174, file: !175, line: 73, baseType: !169, size: 32, offset: 928)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !174, file: !175, line: 74, baseType: !198, size: 64, offset: 960)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !150, line: 152, baseType: !199)
!199 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !174, file: !175, line: 77, baseType: !158, size: 16, offset: 1024)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !174, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!202 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !174, file: !175, line: 79, baseType: !204, size: 8, offset: 1048)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 1)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !174, file: !175, line: 81, baseType: !208, size: 64, offset: 1088)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !175, line: 43, baseType: null)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !174, file: !175, line: 89, baseType: !211, size: 64, offset: 1152)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !150, line: 153, baseType: !199)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !174, file: !175, line: 91, baseType: !213, size: 64, offset: 1216)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !175, line: 37, flags: DIFlagFwdDecl)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !174, file: !175, line: 92, baseType: !216, size: 64, offset: 1280)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !175, line: 38, flags: DIFlagFwdDecl)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !174, file: !175, line: 93, baseType: !194, size: 64, offset: 1344)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !174, file: !175, line: 94, baseType: !144, size: 64, offset: 1408)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !174, file: !175, line: 95, baseType: !221, size: 64, offset: 1472)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !222, line: 46, baseType: !167)
!222 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !174, file: !175, line: 96, baseType: !169, size: 32, offset: 1536)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !174, file: !175, line: 98, baseType: !94, size: 160, offset: 1568)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mut_do", scope: !162, file: !115, line: 141, baseType: !226, size: 320, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !166, line: 72, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !166, line: 67, size: 320, elements: !228)
!228 = !{!229, !249, !253}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !227, file: !166, line: 69, baseType: !230, size: 320)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !231, line: 22, size: 320, elements: !232)
!231 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!232 = !{!233, !234, !235, !236, !237, !238, !240, !241}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !230, file: !231, line: 24, baseType: !169, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !230, file: !231, line: 25, baseType: !116, size: 32, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !230, file: !231, line: 26, baseType: !169, size: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !230, file: !231, line: 28, baseType: !116, size: 32, offset: 96)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !230, file: !231, line: 32, baseType: !169, size: 32, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !230, file: !231, line: 34, baseType: !239, size: 16, offset: 160)
!239 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !230, file: !231, line: 35, baseType: !239, size: 16, offset: 176)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !230, file: !231, line: 36, baseType: !242, size: 128, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !243, line: 55, baseType: !244)
!243 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !243, line: 51, size: 128, elements: !245)
!245 = !{!246, !248}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !244, file: !243, line: 53, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !244, file: !243, line: 54, baseType: !247, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !227, file: !166, line: 70, baseType: !250, size: 320)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 40)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !227, file: !166, line: 71, baseType: !199, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !162, file: !115, line: 142, baseType: !255, size: 32, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "ytcp_state_t", file: !115, line: 118, baseType: !114)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !162, file: !115, line: 143, baseType: !144, size: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !162, file: !115, line: 144, baseType: !258, size: 64, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ytcp_server_s", file: !115, line: 167, size: 320, elements: !260)
!260 = !{!261, !265, !266, !267, !271, !272, !273}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "threads_func", scope: !259, file: !115, line: 169, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!144, !144}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "nbr_threads", scope: !259, file: !115, line: 170, baseType: !169, size: 32, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "first_waiting", scope: !259, file: !115, line: 171, baseType: !169, size: 32, offset: 96)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "vect_threads", scope: !259, file: !115, line: 172, baseType: !268, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_t", file: !269, line: 56, baseType: !270)
!269 = !DIFile(filename: "./yvect.h", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "73ac1eb655eaae5d93c48c36880d9ca2")
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !259, file: !115, line: 173, baseType: !169, size: 32, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "run_loop", scope: !259, file: !115, line: 174, baseType: !239, size: 16, offset: 224)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "purge_cnt", scope: !259, file: !115, line: 175, baseType: !169, size: 32, offset: 256)
!274 = !{!0, !7, !12, !18, !23, !28, !33, !38, !43, !48, !50, !55, !57, !62, !67, !72, !77, !82, !87, !92, !97, !100, !102, !107, !109}
!275 = !{i32 7, !"Dwarf Version", i32 5}
!276 = !{i32 2, !"Debug Info Version", i32 3}
!277 = !{i32 1, !"wchar_size", i32 4}
!278 = !{i32 8, !"PIC Level", i32 2}
!279 = !{i32 7, !"uwtable", i32 2}
!280 = !{i32 7, !"frame-pointer", i32 2}
!281 = !{!"clang version 16.0.0"}
!282 = distinct !DISubprogram(name: "ytcp_server_init", scope: !2, file: !2, line: 23, type: !283, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !287)
!283 = !DISubroutineType(types: !284)
!284 = !{!285, !116, !262, !144}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "ytcp_server_t", file: !115, line: 179, baseType: !259)
!287 = !{}
!288 = !DILocalVariable(name: "nbr_threads", arg: 1, scope: !282, file: !2, line: 23, type: !116)
!289 = !DILocation(line: 23, column: 46, scope: !282)
!290 = !DILocalVariable(name: "f", arg: 2, scope: !282, file: !2, line: 24, type: !262)
!291 = !DILocation(line: 24, column: 13, scope: !282)
!292 = !DILocalVariable(name: "data", arg: 3, scope: !282, file: !2, line: 24, type: !144)
!293 = !DILocation(line: 24, column: 30, scope: !282)
!294 = !DILocalVariable(name: "thread", scope: !282, file: !2, line: 26, type: !160)
!295 = !DILocation(line: 26, column: 18, scope: !282)
!296 = !DILocalVariable(name: "threads", scope: !282, file: !2, line: 27, type: !268)
!297 = !DILocation(line: 27, column: 11, scope: !282)
!298 = !DILocalVariable(name: "server", scope: !282, file: !2, line: 28, type: !285)
!299 = !DILocation(line: 28, column: 18, scope: !282)
!300 = !DILocalVariable(name: "i", scope: !282, file: !2, line: 29, type: !116)
!301 = !DILocation(line: 29, column: 16, scope: !282)
!302 = !DILocation(line: 31, column: 3, scope: !282)
!303 = !DILocation(line: 32, column: 18, scope: !282)
!304 = !DILocation(line: 32, column: 30, scope: !282)
!305 = !DILocation(line: 32, column: 17, scope: !282)
!306 = !DILocation(line: 32, column: 58, scope: !282)
!307 = !DILocation(line: 32, column: 15, scope: !282)
!308 = !DILocation(line: 33, column: 13, scope: !282)
!309 = !DILocation(line: 33, column: 11, scope: !282)
!310 = !DILocation(line: 34, column: 12, scope: !282)
!311 = !DILocation(line: 34, column: 10, scope: !282)
!312 = !DILocation(line: 35, column: 26, scope: !282)
!313 = !DILocation(line: 35, column: 3, scope: !282)
!314 = !DILocation(line: 35, column: 11, scope: !282)
!315 = !DILocation(line: 35, column: 24, scope: !282)
!316 = !DILocation(line: 36, column: 25, scope: !282)
!317 = !DILocation(line: 36, column: 3, scope: !282)
!318 = !DILocation(line: 36, column: 11, scope: !282)
!319 = !DILocation(line: 36, column: 23, scope: !282)
!320 = !DILocation(line: 37, column: 3, scope: !282)
!321 = !DILocation(line: 37, column: 11, scope: !282)
!322 = !DILocation(line: 37, column: 25, scope: !282)
!323 = !DILocation(line: 38, column: 26, scope: !282)
!324 = !DILocation(line: 38, column: 3, scope: !282)
!325 = !DILocation(line: 38, column: 11, scope: !282)
!326 = !DILocation(line: 38, column: 24, scope: !282)
!327 = !DILocation(line: 39, column: 3, scope: !282)
!328 = !DILocation(line: 39, column: 11, scope: !282)
!329 = !DILocation(line: 39, column: 14, scope: !282)
!330 = !DILocation(line: 40, column: 3, scope: !282)
!331 = !DILocation(line: 40, column: 11, scope: !282)
!332 = !DILocation(line: 40, column: 20, scope: !282)
!333 = !DILocation(line: 41, column: 23, scope: !282)
!334 = !DILocation(line: 41, column: 3, scope: !282)
!335 = !DILocation(line: 41, column: 11, scope: !282)
!336 = !DILocation(line: 41, column: 21, scope: !282)
!337 = !DILocation(line: 42, column: 10, scope: !338)
!338 = distinct !DILexicalBlock(scope: !282, file: !2, line: 42, column: 3)
!339 = !DILocation(line: 42, column: 8, scope: !338)
!340 = !DILocation(line: 42, column: 15, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !2, line: 42, column: 3)
!342 = !DILocation(line: 42, column: 19, scope: !341)
!343 = !DILocation(line: 42, column: 17, scope: !341)
!344 = !DILocation(line: 42, column: 31, scope: !341)
!345 = !DILocation(line: 42, column: 34, scope: !341)
!346 = !DILocation(line: 42, column: 36, scope: !341)
!347 = !DILocation(line: 0, scope: !341)
!348 = !DILocation(line: 42, column: 3, scope: !338)
!349 = !DILocation(line: 44, column: 16, scope: !350)
!350 = distinct !DILexicalBlock(scope: !341, file: !2, line: 43, column: 5)
!351 = !DILocation(line: 44, column: 14, scope: !350)
!352 = !DILocation(line: 45, column: 28, scope: !350)
!353 = !DILocation(line: 45, column: 36, scope: !350)
!354 = !DILocation(line: 45, column: 7, scope: !350)
!355 = !DILocation(line: 46, column: 28, scope: !350)
!356 = !DILocation(line: 46, column: 36, scope: !350)
!357 = !DILocation(line: 46, column: 7, scope: !350)
!358 = !DILocation(line: 47, column: 28, scope: !359)
!359 = distinct !DILexicalBlock(scope: !350, file: !2, line: 47, column: 11)
!360 = !DILocation(line: 47, column: 36, scope: !359)
!361 = !DILocation(line: 48, column: 5, scope: !359)
!362 = !DILocation(line: 47, column: 11, scope: !359)
!363 = !DILocation(line: 47, column: 11, scope: !350)
!364 = !DILocation(line: 50, column: 4, scope: !365)
!365 = distinct !DILexicalBlock(scope: !359, file: !2, line: 49, column: 2)
!366 = !DILocation(line: 51, column: 4, scope: !365)
!367 = !DILocation(line: 51, column: 12, scope: !365)
!368 = !DILocation(line: 51, column: 18, scope: !365)
!369 = !DILocation(line: 52, column: 2, scope: !365)
!370 = !DILocation(line: 53, column: 7, scope: !350)
!371 = !DILocation(line: 53, column: 15, scope: !350)
!372 = !DILocation(line: 53, column: 18, scope: !350)
!373 = !DILocation(line: 54, column: 7, scope: !350)
!374 = !DILocation(line: 54, column: 15, scope: !350)
!375 = !DILocation(line: 54, column: 21, scope: !350)
!376 = !DILocation(line: 55, column: 22, scope: !350)
!377 = !DILocation(line: 55, column: 7, scope: !350)
!378 = !DILocation(line: 55, column: 15, scope: !350)
!379 = !DILocation(line: 55, column: 20, scope: !350)
!380 = !DILocation(line: 56, column: 24, scope: !350)
!381 = !DILocation(line: 56, column: 7, scope: !350)
!382 = !DILocation(line: 56, column: 15, scope: !350)
!383 = !DILocation(line: 56, column: 22, scope: !350)
!384 = !DILocation(line: 57, column: 24, scope: !350)
!385 = !DILocation(line: 57, column: 7, scope: !350)
!386 = !DILocation(line: 58, column: 5, scope: !350)
!387 = !DILocation(line: 42, column: 44, scope: !341)
!388 = !DILocation(line: 42, column: 3, scope: !341)
!389 = distinct !{!389, !348, !390}
!390 = !DILocation(line: 58, column: 5, scope: !338)
!391 = !DILocation(line: 59, column: 3, scope: !282)
!392 = !DILocation(line: 60, column: 11, scope: !282)
!393 = !DILocation(line: 60, column: 3, scope: !282)
!394 = distinct !DISubprogram(name: "_ytcp_server_thread_handle", scope: !2, file: !2, line: 245, type: !263, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !111, retainedNodes: !287)
!395 = !DILocalVariable(name: "param", arg: 1, scope: !394, file: !2, line: 245, type: !144)
!396 = !DILocation(line: 245, column: 40, scope: !394)
!397 = !DILocalVariable(name: "thread", scope: !394, file: !2, line: 247, type: !160)
!398 = !DILocation(line: 247, column: 18, scope: !394)
!399 = !DILocation(line: 247, column: 27, scope: !394)
!400 = !DILocation(line: 249, column: 3, scope: !394)
!401 = !DILocation(line: 250, column: 3, scope: !394)
!402 = !DILocation(line: 252, column: 33, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !2, line: 252, column: 11)
!404 = distinct !DILexicalBlock(scope: !405, file: !2, line: 251, column: 5)
!405 = distinct !DILexicalBlock(scope: !406, file: !2, line: 250, column: 3)
!406 = distinct !DILexicalBlock(scope: !394, file: !2, line: 250, column: 3)
!407 = !DILocation(line: 252, column: 41, scope: !403)
!408 = !DILocation(line: 252, column: 12, scope: !403)
!409 = !DILocation(line: 252, column: 11, scope: !404)
!410 = !DILocation(line: 254, column: 8, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !2, line: 254, column: 8)
!412 = distinct !DILexicalBlock(scope: !403, file: !2, line: 253, column: 2)
!413 = !DILocation(line: 254, column: 16, scope: !411)
!414 = !DILocation(line: 254, column: 22, scope: !411)
!415 = !DILocation(line: 254, column: 8, scope: !412)
!416 = !DILocation(line: 256, column: 8, scope: !417)
!417 = distinct !DILexicalBlock(scope: !411, file: !2, line: 255, column: 6)
!418 = !DILocation(line: 257, column: 8, scope: !417)
!419 = !DILocation(line: 261, column: 8, scope: !420)
!420 = distinct !DILexicalBlock(scope: !411, file: !2, line: 260, column: 6)
!421 = !DILocation(line: 262, column: 8, scope: !420)
!422 = !DILocation(line: 262, column: 16, scope: !420)
!423 = !DILocation(line: 262, column: 24, scope: !420)
!424 = !DILocation(line: 262, column: 37, scope: !420)
!425 = !DILocation(line: 263, column: 12, scope: !426)
!426 = distinct !DILexicalBlock(scope: !420, file: !2, line: 263, column: 12)
!427 = !DILocation(line: 263, column: 20, scope: !426)
!428 = !DILocation(line: 263, column: 12, scope: !420)
!429 = !DILocation(line: 264, column: 10, scope: !426)
!430 = !DILocation(line: 264, column: 18, scope: !426)
!431 = !DILocation(line: 264, column: 3, scope: !426)
!432 = !DILocation(line: 265, column: 17, scope: !433)
!433 = distinct !DILexicalBlock(scope: !426, file: !2, line: 265, column: 17)
!434 = !DILocation(line: 265, column: 25, scope: !433)
!435 = !DILocation(line: 265, column: 28, scope: !433)
!436 = !DILocation(line: 265, column: 17, scope: !426)
!437 = !DILocation(line: 266, column: 9, scope: !433)
!438 = !DILocation(line: 266, column: 17, scope: !433)
!439 = !DILocation(line: 266, column: 3, scope: !433)
!440 = !DILocation(line: 267, column: 8, scope: !420)
!441 = !DILocation(line: 267, column: 16, scope: !420)
!442 = !DILocation(line: 267, column: 23, scope: !420)
!443 = !DILocation(line: 268, column: 8, scope: !420)
!444 = !DILocation(line: 268, column: 16, scope: !420)
!445 = !DILocation(line: 268, column: 19, scope: !420)
!446 = !DILocation(line: 269, column: 8, scope: !420)
!447 = !DILocation(line: 269, column: 16, scope: !420)
!448 = !DILocation(line: 269, column: 22, scope: !420)
!449 = !DILocation(line: 270, column: 8, scope: !420)
!450 = !DILocation(line: 272, column: 2, scope: !412)
!451 = !DILocation(line: 250, column: 3, scope: !405)
!452 = distinct !{!452, !453, !454}
!453 = !DILocation(line: 250, column: 3, scope: !406)
!454 = !DILocation(line: 273, column: 5, scope: !406)
!455 = distinct !DISubprogram(name: "ytcp_server_start", scope: !2, file: !2, line: 67, type: !456, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !287)
!456 = !DISubroutineType(types: !457)
!457 = !{!458, !285, !169}
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !459, line: 23, baseType: !169)
!459 = !DIFile(filename: "./yerror.h", directory: "/home/raj/FineDB/lib/ylib", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!460 = !DILocalVariable(name: "server", arg: 1, scope: !455, file: !2, line: 67, type: !285)
!461 = !DILocation(line: 67, column: 41, scope: !455)
!462 = !DILocalVariable(name: "port", arg: 2, scope: !455, file: !2, line: 67, type: !169)
!463 = !DILocation(line: 67, column: 53, scope: !455)
!464 = !DILocalVariable(name: "addr", scope: !455, file: !2, line: 69, type: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !146, line: 245, size: 128, elements: !466)
!466 = !{!467, !468, !472, !476}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !465, file: !146, line: 247, baseType: !156, size: 16)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !465, file: !146, line: 248, baseType: !469, size: 16, offset: 16)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !146, line: 123, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !148, line: 25, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !150, line: 40, baseType: !158)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !465, file: !146, line: 249, baseType: !473, size: 32, offset: 32)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !146, line: 31, size: 32, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !473, file: !146, line: 33, baseType: !145, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !465, file: !146, line: 252, baseType: !477, size: 64, offset: 64)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 64, elements: !31)
!478 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!479 = !DILocation(line: 69, column: 22, scope: !455)
!480 = !DILocalVariable(name: "addr_size", scope: !455, file: !2, line: 70, type: !116)
!481 = !DILocation(line: 70, column: 16, scope: !455)
!482 = !DILocalVariable(name: "fd", scope: !455, file: !2, line: 71, type: !169)
!483 = !DILocation(line: 71, column: 7, scope: !455)
!484 = !DILocalVariable(name: "on", scope: !455, file: !2, line: 72, type: !485)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!486 = !DILocation(line: 72, column: 13, scope: !455)
!487 = !DILocation(line: 74, column: 3, scope: !455)
!488 = !DILocation(line: 75, column: 21, scope: !489)
!489 = distinct !DILexicalBlock(scope: !455, file: !2, line: 75, column: 7)
!490 = !DILocation(line: 75, column: 8, scope: !489)
!491 = !DILocation(line: 75, column: 16, scope: !489)
!492 = !DILocation(line: 75, column: 19, scope: !489)
!493 = !DILocation(line: 75, column: 54, scope: !489)
!494 = !DILocation(line: 75, column: 7, scope: !455)
!495 = !DILocation(line: 77, column: 7, scope: !496)
!496 = distinct !DILexicalBlock(scope: !489, file: !2, line: 76, column: 5)
!497 = !DILocation(line: 78, column: 7, scope: !496)
!498 = !DILocation(line: 80, column: 18, scope: !499)
!499 = distinct !DILexicalBlock(scope: !455, file: !2, line: 80, column: 7)
!500 = !DILocation(line: 80, column: 26, scope: !499)
!501 = !DILocation(line: 80, column: 7, scope: !499)
!502 = !DILocation(line: 80, column: 80, scope: !499)
!503 = !DILocation(line: 80, column: 7, scope: !455)
!504 = !DILocation(line: 81, column: 5, scope: !499)
!505 = !DILocation(line: 82, column: 18, scope: !506)
!506 = distinct !DILexicalBlock(scope: !455, file: !2, line: 82, column: 7)
!507 = !DILocation(line: 82, column: 26, scope: !506)
!508 = !DILocation(line: 82, column: 7, scope: !506)
!509 = !DILocation(line: 82, column: 80, scope: !506)
!510 = !DILocation(line: 82, column: 7, scope: !455)
!511 = !DILocation(line: 83, column: 5, scope: !506)
!512 = !DILocation(line: 84, column: 13, scope: !455)
!513 = !DILocation(line: 85, column: 20, scope: !455)
!514 = !DILocation(line: 85, column: 3, scope: !455)
!515 = !DILocation(line: 86, column: 26, scope: !455)
!516 = !DILocation(line: 86, column: 8, scope: !455)
!517 = !DILocation(line: 86, column: 17, scope: !455)
!518 = !DILocation(line: 86, column: 24, scope: !455)
!519 = !DILocation(line: 87, column: 8, scope: !455)
!520 = !DILocation(line: 87, column: 19, scope: !455)
!521 = !DILocation(line: 88, column: 25, scope: !455)
!522 = !DILocation(line: 88, column: 19, scope: !455)
!523 = !DILocation(line: 88, column: 8, scope: !455)
!524 = !DILocation(line: 88, column: 17, scope: !455)
!525 = !DILocation(line: 89, column: 12, scope: !526)
!526 = distinct !DILexicalBlock(scope: !455, file: !2, line: 89, column: 7)
!527 = !DILocation(line: 89, column: 20, scope: !526)
!528 = !DILocation(line: 89, column: 24, scope: !526)
!529 = !DILocation(line: 89, column: 49, scope: !526)
!530 = !DILocation(line: 89, column: 7, scope: !526)
!531 = !DILocation(line: 89, column: 60, scope: !526)
!532 = !DILocation(line: 89, column: 7, scope: !455)
!533 = !DILocation(line: 91, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !526, file: !2, line: 90, column: 5)
!535 = !DILocation(line: 92, column: 7, scope: !534)
!536 = !DILocation(line: 94, column: 14, scope: !537)
!537 = distinct !DILexicalBlock(scope: !455, file: !2, line: 94, column: 7)
!538 = !DILocation(line: 94, column: 22, scope: !537)
!539 = !DILocation(line: 94, column: 7, scope: !537)
!540 = !DILocation(line: 94, column: 7, scope: !455)
!541 = !DILocation(line: 96, column: 7, scope: !542)
!542 = distinct !DILexicalBlock(scope: !537, file: !2, line: 95, column: 5)
!543 = !DILocation(line: 97, column: 7, scope: !542)
!544 = !DILocation(line: 99, column: 3, scope: !455)
!545 = !DILocation(line: 99, column: 10, scope: !455)
!546 = !DILocation(line: 99, column: 18, scope: !455)
!547 = !DILocation(line: 101, column: 24, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !2, line: 101, column: 11)
!549 = distinct !DILexicalBlock(scope: !455, file: !2, line: 100, column: 5)
!550 = !DILocation(line: 101, column: 32, scope: !548)
!551 = !DILocation(line: 101, column: 36, scope: !548)
!552 = !DILocation(line: 101, column: 17, scope: !548)
!553 = !DILocation(line: 101, column: 15, scope: !548)
!554 = !DILocation(line: 101, column: 74, scope: !548)
!555 = !DILocation(line: 101, column: 11, scope: !549)
!556 = !DILocation(line: 102, column: 2, scope: !548)
!557 = distinct !{!557, !544, !558}
!558 = !DILocation(line: 107, column: 5, scope: !455)
!559 = !DILocation(line: 103, column: 22, scope: !560)
!560 = distinct !DILexicalBlock(scope: !549, file: !2, line: 103, column: 11)
!561 = !DILocation(line: 103, column: 11, scope: !560)
!562 = !DILocation(line: 103, column: 76, scope: !560)
!563 = !DILocation(line: 103, column: 11, scope: !549)
!564 = !DILocation(line: 104, column: 2, scope: !560)
!565 = !DILocation(line: 105, column: 38, scope: !566)
!566 = distinct !DILexicalBlock(scope: !549, file: !2, line: 105, column: 11)
!567 = !DILocation(line: 105, column: 46, scope: !566)
!568 = !DILocation(line: 105, column: 11, scope: !566)
!569 = !DILocation(line: 105, column: 50, scope: !566)
!570 = !DILocation(line: 105, column: 11, scope: !549)
!571 = !DILocation(line: 106, column: 8, scope: !566)
!572 = !DILocation(line: 106, column: 2, scope: !566)
!573 = !DILocation(line: 108, column: 9, scope: !455)
!574 = !DILocation(line: 108, column: 17, scope: !455)
!575 = !DILocation(line: 108, column: 3, scope: !455)
!576 = !DILocation(line: 109, column: 3, scope: !455)
!577 = !DILocation(line: 110, column: 3, scope: !455)
!578 = !DILocation(line: 111, column: 1, scope: !455)
!579 = distinct !DISubprogram(name: "_ytcp_server_thread_launch", scope: !2, file: !2, line: 282, type: !456, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !111, retainedNodes: !287)
!580 = !DILocalVariable(name: "server", arg: 1, scope: !579, file: !2, line: 282, type: !285)
!581 = !DILocation(line: 282, column: 57, scope: !579)
!582 = !DILocalVariable(name: "fd", arg: 2, scope: !579, file: !2, line: 282, type: !169)
!583 = !DILocation(line: 282, column: 69, scope: !579)
!584 = !DILocalVariable(name: "thread", scope: !579, file: !2, line: 284, type: !160)
!585 = !DILocation(line: 284, column: 18, scope: !579)
!586 = !DILocalVariable(name: "i", scope: !579, file: !2, line: 285, type: !169)
!587 = !DILocation(line: 285, column: 7, scope: !579)
!588 = !DILocation(line: 287, column: 3, scope: !579)
!589 = !DILocation(line: 288, column: 8, scope: !590)
!590 = distinct !DILexicalBlock(scope: !579, file: !2, line: 288, column: 7)
!591 = !DILocation(line: 288, column: 16, scope: !590)
!592 = !DILocation(line: 288, column: 7, scope: !579)
!593 = !DILocation(line: 290, column: 33, scope: !594)
!594 = distinct !DILexicalBlock(scope: !590, file: !2, line: 289, column: 5)
!595 = !DILocation(line: 290, column: 7, scope: !594)
!596 = !DILocation(line: 291, column: 27, scope: !594)
!597 = !DILocation(line: 291, column: 7, scope: !594)
!598 = !DILocation(line: 291, column: 15, scope: !594)
!599 = !DILocation(line: 291, column: 25, scope: !594)
!600 = !DILocation(line: 292, column: 5, scope: !594)
!601 = !DILocation(line: 294, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !579, file: !2, line: 294, column: 7)
!603 = !DILocation(line: 294, column: 15, scope: !602)
!604 = !DILocation(line: 294, column: 29, scope: !602)
!605 = !DILocation(line: 294, column: 7, scope: !579)
!606 = !DILocation(line: 296, column: 33, scope: !607)
!607 = distinct !DILexicalBlock(scope: !602, file: !2, line: 295, column: 5)
!608 = !DILocation(line: 296, column: 41, scope: !607)
!609 = !DILocation(line: 296, column: 54, scope: !607)
!610 = !DILocation(line: 296, column: 62, scope: !607)
!611 = !DILocation(line: 296, column: 14, scope: !607)
!612 = !DILocation(line: 297, column: 20, scope: !607)
!613 = !DILocation(line: 297, column: 7, scope: !607)
!614 = !DILocation(line: 297, column: 15, scope: !607)
!615 = !DILocation(line: 297, column: 18, scope: !607)
!616 = !DILocation(line: 298, column: 31, scope: !607)
!617 = !DILocation(line: 298, column: 24, scope: !607)
!618 = !DILocation(line: 298, column: 7, scope: !607)
!619 = !DILocation(line: 298, column: 15, scope: !607)
!620 = !DILocation(line: 298, column: 22, scope: !607)
!621 = !DILocation(line: 299, column: 15, scope: !607)
!622 = !DILocation(line: 299, column: 23, scope: !607)
!623 = !DILocation(line: 299, column: 7, scope: !607)
!624 = !DILocation(line: 300, column: 7, scope: !607)
!625 = !DILocation(line: 300, column: 15, scope: !607)
!626 = !DILocation(line: 300, column: 21, scope: !607)
!627 = !DILocation(line: 301, column: 30, scope: !607)
!628 = !DILocation(line: 301, column: 38, scope: !607)
!629 = !DILocation(line: 301, column: 7, scope: !607)
!630 = !DILocation(line: 302, column: 14, scope: !631)
!631 = distinct !DILexicalBlock(scope: !607, file: !2, line: 302, column: 7)
!632 = !DILocation(line: 302, column: 12, scope: !631)
!633 = !DILocation(line: 302, column: 19, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !2, line: 302, column: 7)
!635 = !DILocation(line: 302, column: 23, scope: !634)
!636 = !DILocation(line: 302, column: 31, scope: !634)
!637 = !DILocation(line: 302, column: 21, scope: !634)
!638 = !DILocation(line: 302, column: 7, scope: !631)
!639 = !DILocation(line: 304, column: 30, scope: !640)
!640 = distinct !DILexicalBlock(scope: !634, file: !2, line: 303, column: 2)
!641 = !DILocation(line: 304, column: 38, scope: !640)
!642 = !DILocation(line: 304, column: 51, scope: !640)
!643 = !DILocation(line: 304, column: 11, scope: !640)
!644 = !DILocation(line: 305, column: 8, scope: !645)
!645 = distinct !DILexicalBlock(scope: !640, file: !2, line: 305, column: 8)
!646 = !DILocation(line: 305, column: 16, scope: !645)
!647 = !DILocation(line: 305, column: 22, scope: !645)
!648 = !DILocation(line: 305, column: 8, scope: !640)
!649 = !DILocation(line: 307, column: 32, scope: !650)
!650 = distinct !DILexicalBlock(scope: !645, file: !2, line: 306, column: 6)
!651 = !DILocation(line: 307, column: 8, scope: !650)
!652 = !DILocation(line: 307, column: 16, scope: !650)
!653 = !DILocation(line: 307, column: 30, scope: !650)
!654 = !DILocation(line: 308, column: 8, scope: !650)
!655 = !DILocation(line: 310, column: 2, scope: !640)
!656 = !DILocation(line: 302, column: 44, scope: !634)
!657 = !DILocation(line: 302, column: 7, scope: !634)
!658 = distinct !{!658, !638, !659}
!659 = !DILocation(line: 310, column: 2, scope: !631)
!660 = !DILocation(line: 311, column: 11, scope: !661)
!661 = distinct !DILexicalBlock(scope: !607, file: !2, line: 311, column: 11)
!662 = !DILocation(line: 311, column: 16, scope: !661)
!663 = !DILocation(line: 311, column: 24, scope: !661)
!664 = !DILocation(line: 311, column: 13, scope: !661)
!665 = !DILocation(line: 311, column: 11, scope: !607)
!666 = !DILocation(line: 312, column: 2, scope: !661)
!667 = !DILocation(line: 312, column: 10, scope: !661)
!668 = !DILocation(line: 312, column: 24, scope: !661)
!669 = !DILocation(line: 313, column: 7, scope: !607)
!670 = !DILocation(line: 314, column: 7, scope: !607)
!671 = !DILocation(line: 317, column: 10, scope: !672)
!672 = distinct !DILexicalBlock(scope: !579, file: !2, line: 317, column: 3)
!673 = !DILocation(line: 317, column: 8, scope: !672)
!674 = !DILocation(line: 317, column: 15, scope: !675)
!675 = distinct !DILexicalBlock(scope: !672, file: !2, line: 317, column: 3)
!676 = !DILocation(line: 317, column: 19, scope: !675)
!677 = !DILocation(line: 317, column: 27, scope: !675)
!678 = !DILocation(line: 317, column: 17, scope: !675)
!679 = !DILocation(line: 317, column: 3, scope: !672)
!680 = !DILocation(line: 319, column: 33, scope: !681)
!681 = distinct !DILexicalBlock(scope: !675, file: !2, line: 318, column: 5)
!682 = !DILocation(line: 319, column: 41, scope: !681)
!683 = !DILocation(line: 319, column: 54, scope: !681)
!684 = !DILocation(line: 319, column: 14, scope: !681)
!685 = !DILocation(line: 320, column: 11, scope: !686)
!686 = distinct !DILexicalBlock(scope: !681, file: !2, line: 320, column: 11)
!687 = !DILocation(line: 320, column: 19, scope: !686)
!688 = !DILocation(line: 320, column: 25, scope: !686)
!689 = !DILocation(line: 320, column: 11, scope: !681)
!690 = !DILocation(line: 322, column: 28, scope: !691)
!691 = distinct !DILexicalBlock(scope: !686, file: !2, line: 321, column: 2)
!692 = !DILocation(line: 322, column: 4, scope: !691)
!693 = !DILocation(line: 322, column: 12, scope: !691)
!694 = !DILocation(line: 322, column: 26, scope: !691)
!695 = !DILocation(line: 323, column: 4, scope: !691)
!696 = !DILocation(line: 325, column: 5, scope: !681)
!697 = !DILocation(line: 317, column: 40, scope: !675)
!698 = !DILocation(line: 317, column: 3, scope: !675)
!699 = distinct !{!699, !679, !700}
!700 = !DILocation(line: 325, column: 5, scope: !672)
!701 = !DILocation(line: 326, column: 7, scope: !702)
!702 = distinct !DILexicalBlock(scope: !579, file: !2, line: 326, column: 7)
!703 = !DILocation(line: 326, column: 12, scope: !702)
!704 = !DILocation(line: 326, column: 20, scope: !702)
!705 = !DILocation(line: 326, column: 9, scope: !702)
!706 = !DILocation(line: 326, column: 7, scope: !579)
!707 = !DILocation(line: 328, column: 7, scope: !708)
!708 = distinct !DILexicalBlock(scope: !702, file: !2, line: 327, column: 5)
!709 = !DILocation(line: 329, column: 42, scope: !708)
!710 = !DILocation(line: 329, column: 50, scope: !708)
!711 = !DILocation(line: 329, column: 15, scope: !708)
!712 = !DILocation(line: 329, column: 7, scope: !708)
!713 = !DILocation(line: 332, column: 12, scope: !579)
!714 = !DILocation(line: 332, column: 10, scope: !579)
!715 = !DILocation(line: 333, column: 24, scope: !579)
!716 = !DILocation(line: 333, column: 32, scope: !579)
!717 = !DILocation(line: 333, column: 3, scope: !579)
!718 = !DILocation(line: 334, column: 24, scope: !579)
!719 = !DILocation(line: 334, column: 32, scope: !579)
!720 = !DILocation(line: 334, column: 3, scope: !579)
!721 = !DILocation(line: 335, column: 20, scope: !579)
!722 = !DILocation(line: 335, column: 3, scope: !579)
!723 = !DILocation(line: 335, column: 11, scope: !579)
!724 = !DILocation(line: 335, column: 18, scope: !579)
!725 = !DILocation(line: 336, column: 36, scope: !579)
!726 = !DILocation(line: 336, column: 44, scope: !579)
!727 = !DILocation(line: 336, column: 63, scope: !579)
!728 = !DILocation(line: 336, column: 3, scope: !579)
!729 = !DILocation(line: 336, column: 11, scope: !579)
!730 = !DILocation(line: 336, column: 16, scope: !579)
!731 = !DILocation(line: 337, column: 24, scope: !732)
!732 = distinct !DILexicalBlock(scope: !579, file: !2, line: 337, column: 7)
!733 = !DILocation(line: 337, column: 32, scope: !732)
!734 = !DILocation(line: 337, column: 69, scope: !732)
!735 = !DILocation(line: 337, column: 7, scope: !732)
!736 = !DILocation(line: 337, column: 7, scope: !579)
!737 = !DILocation(line: 339, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !732, file: !2, line: 338, column: 5)
!739 = !DILocation(line: 340, column: 7, scope: !738)
!740 = !DILocation(line: 340, column: 15, scope: !738)
!741 = !DILocation(line: 340, column: 21, scope: !738)
!742 = !DILocation(line: 341, column: 7, scope: !738)
!743 = !DILocation(line: 341, column: 15, scope: !738)
!744 = !DILocation(line: 341, column: 18, scope: !738)
!745 = !DILocation(line: 342, column: 30, scope: !738)
!746 = !DILocation(line: 342, column: 38, scope: !738)
!747 = !DILocation(line: 342, column: 7, scope: !738)
!748 = !DILocation(line: 343, column: 31, scope: !738)
!749 = !DILocation(line: 343, column: 39, scope: !738)
!750 = !DILocation(line: 343, column: 7, scope: !738)
!751 = !DILocation(line: 344, column: 7, scope: !738)
!752 = !DILocation(line: 346, column: 12, scope: !579)
!753 = !DILocation(line: 346, column: 20, scope: !579)
!754 = !DILocation(line: 346, column: 35, scope: !579)
!755 = !DILocation(line: 346, column: 3, scope: !579)
!756 = !DILocation(line: 347, column: 3, scope: !579)
!757 = !DILocation(line: 347, column: 11, scope: !579)
!758 = !DILocation(line: 347, column: 22, scope: !579)
!759 = !DILocation(line: 348, column: 16, scope: !579)
!760 = !DILocation(line: 348, column: 3, scope: !579)
!761 = !DILocation(line: 348, column: 11, scope: !579)
!762 = !DILocation(line: 348, column: 14, scope: !579)
!763 = !DILocation(line: 349, column: 3, scope: !579)
!764 = !DILocation(line: 349, column: 11, scope: !579)
!765 = !DILocation(line: 349, column: 17, scope: !579)
!766 = !DILocation(line: 350, column: 26, scope: !579)
!767 = !DILocation(line: 350, column: 34, scope: !579)
!768 = !DILocation(line: 350, column: 3, scope: !579)
!769 = !DILocation(line: 351, column: 3, scope: !579)
!770 = !DILocation(line: 352, column: 3, scope: !579)
!771 = !DILocation(line: 353, column: 1, scope: !579)
!772 = distinct !DISubprogram(name: "ytcp_server_purge_threads", scope: !2, file: !2, line: 117, type: !773, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !287)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !285}
!775 = !DILocalVariable(name: "server", arg: 1, scope: !772, file: !2, line: 117, type: !285)
!776 = !DILocation(line: 117, column: 47, scope: !772)
!777 = !DILocalVariable(name: "thread", scope: !772, file: !2, line: 119, type: !160)
!778 = !DILocation(line: 119, column: 18, scope: !772)
!779 = !DILocalVariable(name: "i", scope: !772, file: !2, line: 120, type: !169)
!780 = !DILocation(line: 120, column: 7, scope: !772)
!781 = !DILocation(line: 122, column: 3, scope: !772)
!782 = !DILocation(line: 123, column: 12, scope: !783)
!783 = distinct !DILexicalBlock(scope: !772, file: !2, line: 123, column: 3)
!784 = !DILocation(line: 123, column: 20, scope: !783)
!785 = !DILocation(line: 123, column: 10, scope: !783)
!786 = !DILocation(line: 123, column: 8, scope: !783)
!787 = !DILocation(line: 123, column: 33, scope: !788)
!788 = distinct !DILexicalBlock(scope: !783, file: !2, line: 123, column: 3)
!789 = !DILocation(line: 123, column: 3, scope: !783)
!790 = !DILocation(line: 125, column: 33, scope: !791)
!791 = distinct !DILexicalBlock(scope: !788, file: !2, line: 124, column: 5)
!792 = !DILocation(line: 125, column: 41, scope: !791)
!793 = !DILocation(line: 125, column: 54, scope: !791)
!794 = !DILocation(line: 125, column: 56, scope: !791)
!795 = !DILocation(line: 125, column: 14, scope: !791)
!796 = !DILocation(line: 126, column: 11, scope: !797)
!797 = distinct !DILexicalBlock(scope: !791, file: !2, line: 126, column: 11)
!798 = !DILocation(line: 126, column: 19, scope: !797)
!799 = !DILocation(line: 126, column: 25, scope: !797)
!800 = !DILocation(line: 126, column: 39, scope: !797)
!801 = !DILocation(line: 126, column: 42, scope: !797)
!802 = !DILocation(line: 126, column: 50, scope: !797)
!803 = !DILocation(line: 126, column: 56, scope: !797)
!804 = !DILocation(line: 126, column: 11, scope: !791)
!805 = !DILocation(line: 128, column: 20, scope: !806)
!806 = distinct !DILexicalBlock(scope: !797, file: !2, line: 127, column: 2)
!807 = !DILocation(line: 128, column: 28, scope: !806)
!808 = !DILocation(line: 128, column: 42, scope: !806)
!809 = !DILocation(line: 128, column: 13, scope: !806)
!810 = !DILocation(line: 128, column: 11, scope: !806)
!811 = !DILocation(line: 129, column: 4, scope: !806)
!812 = !DILocation(line: 129, column: 12, scope: !806)
!813 = !DILocation(line: 129, column: 18, scope: !806)
!814 = !DILocation(line: 130, column: 27, scope: !806)
!815 = !DILocation(line: 130, column: 35, scope: !806)
!816 = !DILocation(line: 130, column: 4, scope: !806)
!817 = !DILocation(line: 131, column: 17, scope: !806)
!818 = !DILocation(line: 131, column: 25, scope: !806)
!819 = !DILocation(line: 131, column: 4, scope: !806)
!820 = !DILocation(line: 132, column: 28, scope: !806)
!821 = !DILocation(line: 132, column: 36, scope: !806)
!822 = !DILocation(line: 132, column: 4, scope: !806)
!823 = !DILocation(line: 133, column: 4, scope: !806)
!824 = !DILocation(line: 134, column: 4, scope: !806)
!825 = !DILocation(line: 134, column: 12, scope: !806)
!826 = !DILocation(line: 134, column: 23, scope: !806)
!827 = !DILocation(line: 135, column: 2, scope: !806)
!828 = !DILocation(line: 136, column: 5, scope: !791)
!829 = !DILocation(line: 123, column: 36, scope: !788)
!830 = !DILocation(line: 123, column: 3, scope: !788)
!831 = distinct !{!831, !789, !832}
!832 = !DILocation(line: 136, column: 5, scope: !783)
!833 = !DILocation(line: 137, column: 3, scope: !772)
!834 = !DILocation(line: 138, column: 1, scope: !772)
!835 = distinct !DISubprogram(name: "ytcp_server_set_nbr_threads", scope: !2, file: !2, line: 146, type: !456, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !287)
!836 = !DILocalVariable(name: "server", arg: 1, scope: !835, file: !2, line: 146, type: !285)
!837 = !DILocation(line: 146, column: 51, scope: !835)
!838 = !DILocalVariable(name: "nbr", arg: 2, scope: !835, file: !2, line: 146, type: !169)
!839 = !DILocation(line: 146, column: 63, scope: !835)
!840 = !DILocalVariable(name: "thread", scope: !835, file: !2, line: 148, type: !160)
!841 = !DILocation(line: 148, column: 18, scope: !835)
!842 = !DILocalVariable(name: "i", scope: !835, file: !2, line: 149, type: !169)
!843 = !DILocation(line: 149, column: 7, scope: !835)
!844 = !DILocation(line: 151, column: 3, scope: !835)
!845 = !DILocation(line: 152, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !835, file: !2, line: 152, column: 7)
!847 = !DILocation(line: 152, column: 14, scope: !846)
!848 = !DILocation(line: 152, column: 22, scope: !846)
!849 = !DILocation(line: 152, column: 11, scope: !846)
!850 = !DILocation(line: 152, column: 7, scope: !835)
!851 = !DILocation(line: 153, column: 5, scope: !846)
!852 = !DILocation(line: 154, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !835, file: !2, line: 154, column: 7)
!854 = !DILocation(line: 154, column: 15, scope: !853)
!855 = !DILocation(line: 154, column: 29, scope: !853)
!856 = !DILocation(line: 154, column: 27, scope: !853)
!857 = !DILocation(line: 154, column: 7, scope: !835)
!858 = !DILocation(line: 156, column: 16, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !2, line: 156, column: 7)
!860 = distinct !DILexicalBlock(scope: !853, file: !2, line: 155, column: 5)
!861 = !DILocation(line: 156, column: 24, scope: !859)
!862 = !DILocation(line: 156, column: 14, scope: !859)
!863 = !DILocation(line: 156, column: 12, scope: !859)
!864 = !DILocation(line: 156, column: 37, scope: !865)
!865 = distinct !DILexicalBlock(scope: !859, file: !2, line: 156, column: 7)
!866 = !DILocation(line: 156, column: 7, scope: !859)
!867 = !DILocation(line: 158, column: 30, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !2, line: 157, column: 2)
!869 = !DILocation(line: 158, column: 38, scope: !868)
!870 = !DILocation(line: 158, column: 51, scope: !868)
!871 = !DILocation(line: 158, column: 53, scope: !868)
!872 = !DILocation(line: 158, column: 11, scope: !868)
!873 = !DILocation(line: 159, column: 8, scope: !874)
!874 = distinct !DILexicalBlock(scope: !868, file: !2, line: 159, column: 8)
!875 = !DILocation(line: 159, column: 16, scope: !874)
!876 = !DILocation(line: 159, column: 22, scope: !874)
!877 = !DILocation(line: 159, column: 8, scope: !868)
!878 = !DILocation(line: 161, column: 24, scope: !879)
!879 = distinct !DILexicalBlock(scope: !874, file: !2, line: 160, column: 6)
!880 = !DILocation(line: 161, column: 32, scope: !879)
!881 = !DILocation(line: 161, column: 46, scope: !879)
!882 = !DILocation(line: 161, column: 17, scope: !879)
!883 = !DILocation(line: 161, column: 15, scope: !879)
!884 = !DILocation(line: 162, column: 8, scope: !879)
!885 = !DILocation(line: 162, column: 16, scope: !879)
!886 = !DILocation(line: 162, column: 22, scope: !879)
!887 = !DILocation(line: 163, column: 31, scope: !879)
!888 = !DILocation(line: 163, column: 39, scope: !879)
!889 = !DILocation(line: 163, column: 8, scope: !879)
!890 = !DILocation(line: 164, column: 21, scope: !879)
!891 = !DILocation(line: 164, column: 29, scope: !879)
!892 = !DILocation(line: 164, column: 8, scope: !879)
!893 = !DILocation(line: 165, column: 32, scope: !879)
!894 = !DILocation(line: 165, column: 40, scope: !879)
!895 = !DILocation(line: 165, column: 8, scope: !879)
!896 = !DILocation(line: 166, column: 8, scope: !879)
!897 = !DILocation(line: 167, column: 8, scope: !879)
!898 = !DILocation(line: 167, column: 16, scope: !879)
!899 = !DILocation(line: 167, column: 27, scope: !879)
!900 = !DILocation(line: 168, column: 6, scope: !879)
!901 = !DILocation(line: 169, column: 2, scope: !868)
!902 = !DILocation(line: 156, column: 40, scope: !865)
!903 = !DILocation(line: 156, column: 7, scope: !865)
!904 = distinct !{!904, !866, !905}
!905 = !DILocation(line: 169, column: 2, scope: !859)
!906 = !DILocation(line: 170, column: 5, scope: !860)
!907 = !DILocation(line: 171, column: 3, scope: !835)
!908 = !DILocation(line: 171, column: 10, scope: !835)
!909 = !DILocation(line: 171, column: 18, scope: !835)
!910 = !DILocation(line: 171, column: 32, scope: !835)
!911 = !DILocation(line: 171, column: 30, scope: !835)
!912 = !DILocation(line: 173, column: 16, scope: !913)
!913 = distinct !DILexicalBlock(scope: !835, file: !2, line: 172, column: 5)
!914 = !DILocation(line: 173, column: 14, scope: !913)
!915 = !DILocation(line: 174, column: 28, scope: !913)
!916 = !DILocation(line: 174, column: 36, scope: !913)
!917 = !DILocation(line: 174, column: 7, scope: !913)
!918 = !DILocation(line: 175, column: 28, scope: !913)
!919 = !DILocation(line: 175, column: 36, scope: !913)
!920 = !DILocation(line: 175, column: 7, scope: !913)
!921 = !DILocation(line: 176, column: 24, scope: !913)
!922 = !DILocation(line: 176, column: 7, scope: !913)
!923 = !DILocation(line: 176, column: 15, scope: !913)
!924 = !DILocation(line: 176, column: 22, scope: !913)
!925 = !DILocation(line: 177, column: 40, scope: !913)
!926 = !DILocation(line: 177, column: 48, scope: !913)
!927 = !DILocation(line: 177, column: 67, scope: !913)
!928 = !DILocation(line: 177, column: 7, scope: !913)
!929 = !DILocation(line: 177, column: 15, scope: !913)
!930 = !DILocation(line: 177, column: 20, scope: !913)
!931 = !DILocation(line: 178, column: 28, scope: !932)
!932 = distinct !DILexicalBlock(scope: !913, file: !2, line: 178, column: 11)
!933 = !DILocation(line: 178, column: 36, scope: !932)
!934 = !DILocation(line: 179, column: 5, scope: !932)
!935 = !DILocation(line: 178, column: 11, scope: !932)
!936 = !DILocation(line: 178, column: 11, scope: !913)
!937 = !DILocation(line: 181, column: 4, scope: !938)
!938 = distinct !DILexicalBlock(scope: !932, file: !2, line: 180, column: 2)
!939 = !DILocation(line: 182, column: 4, scope: !938)
!940 = !DILocation(line: 182, column: 12, scope: !938)
!941 = !DILocation(line: 182, column: 18, scope: !938)
!942 = !DILocation(line: 183, column: 4, scope: !938)
!943 = !DILocation(line: 183, column: 12, scope: !938)
!944 = !DILocation(line: 183, column: 15, scope: !938)
!945 = !DILocation(line: 184, column: 4, scope: !938)
!946 = !DILocation(line: 186, column: 16, scope: !913)
!947 = !DILocation(line: 186, column: 24, scope: !913)
!948 = !DILocation(line: 186, column: 39, scope: !913)
!949 = !DILocation(line: 186, column: 7, scope: !913)
!950 = !DILocation(line: 187, column: 7, scope: !913)
!951 = !DILocation(line: 187, column: 15, scope: !913)
!952 = !DILocation(line: 187, column: 26, scope: !913)
!953 = !DILocation(line: 188, column: 7, scope: !913)
!954 = !DILocation(line: 188, column: 15, scope: !913)
!955 = !DILocation(line: 188, column: 18, scope: !913)
!956 = !DILocation(line: 189, column: 7, scope: !913)
!957 = !DILocation(line: 189, column: 15, scope: !913)
!958 = !DILocation(line: 189, column: 21, scope: !913)
!959 = distinct !{!959, !907, !960}
!960 = !DILocation(line: 190, column: 5, scope: !835)
!961 = !DILocation(line: 191, column: 3, scope: !835)
!962 = !DILocation(line: 192, column: 3, scope: !835)
!963 = !DILocation(line: 193, column: 1, scope: !835)
!964 = distinct !DISubprogram(name: "ytcp_server_stop", scope: !2, file: !2, line: 199, type: !965, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !287)
!965 = !DISubroutineType(types: !966)
!966 = !{!458, !285}
!967 = !DILocalVariable(name: "server", arg: 1, scope: !964, file: !2, line: 199, type: !285)
!968 = !DILocation(line: 199, column: 40, scope: !964)
!969 = !DILocation(line: 201, column: 3, scope: !964)
!970 = !DILocation(line: 201, column: 11, scope: !964)
!971 = !DILocation(line: 201, column: 20, scope: !964)
!972 = !DILocation(line: 202, column: 3, scope: !964)
!973 = distinct !DISubprogram(name: "ytcp_server_delete", scope: !2, file: !2, line: 209, type: !974, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !287)
!974 = !DISubroutineType(types: !975)
!975 = !{!285, !285, !158}
!976 = !DILocalVariable(name: "server", arg: 1, scope: !973, file: !2, line: 209, type: !285)
!977 = !DILocation(line: 209, column: 50, scope: !973)
!978 = !DILocalVariable(name: "wait_threads", arg: 2, scope: !973, file: !2, line: 210, type: !158)
!979 = !DILocation(line: 210, column: 22, scope: !973)
!980 = !DILocalVariable(name: "thread", scope: !973, file: !2, line: 212, type: !160)
!981 = !DILocation(line: 212, column: 18, scope: !973)
!982 = !DILocation(line: 214, column: 3, scope: !973)
!983 = !DILocation(line: 215, column: 8, scope: !984)
!984 = distinct !DILexicalBlock(scope: !973, file: !2, line: 215, column: 7)
!985 = !DILocation(line: 215, column: 15, scope: !984)
!986 = !DILocation(line: 215, column: 19, scope: !984)
!987 = !DILocation(line: 215, column: 27, scope: !984)
!988 = !DILocation(line: 215, column: 7, scope: !973)
!989 = !DILocation(line: 217, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !984, file: !2, line: 216, column: 5)
!991 = !DILocation(line: 218, column: 7, scope: !990)
!992 = !DILocation(line: 220, column: 3, scope: !973)
!993 = !DILocation(line: 220, column: 43, scope: !973)
!994 = !DILocation(line: 220, column: 51, scope: !973)
!995 = !DILocation(line: 220, column: 36, scope: !973)
!996 = !DILocation(line: 220, column: 18, scope: !973)
!997 = !DILocation(line: 222, column: 11, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !2, line: 222, column: 11)
!999 = distinct !DILexicalBlock(scope: !973, file: !2, line: 221, column: 5)
!1000 = !DILocation(line: 222, column: 24, scope: !998)
!1001 = !DILocation(line: 222, column: 27, scope: !998)
!1002 = !DILocation(line: 222, column: 35, scope: !998)
!1003 = !DILocation(line: 222, column: 41, scope: !998)
!1004 = !DILocation(line: 222, column: 11, scope: !999)
!1005 = !DILocation(line: 224, column: 4, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !998, file: !2, line: 223, column: 2)
!1007 = !DILocation(line: 224, column: 11, scope: !1006)
!1008 = !DILocation(line: 224, column: 19, scope: !1006)
!1009 = !DILocation(line: 224, column: 25, scope: !1006)
!1010 = !DILocation(line: 225, column: 6, scope: !1006)
!1011 = distinct !{!1011, !1005, !1012}
!1012 = !DILocation(line: 225, column: 16, scope: !1006)
!1013 = !DILocation(line: 226, column: 2, scope: !1006)
!1014 = !DILocation(line: 227, column: 7, scope: !999)
!1015 = !DILocation(line: 227, column: 15, scope: !999)
!1016 = !DILocation(line: 227, column: 21, scope: !999)
!1017 = !DILocation(line: 228, column: 30, scope: !999)
!1018 = !DILocation(line: 228, column: 38, scope: !999)
!1019 = !DILocation(line: 228, column: 7, scope: !999)
!1020 = !DILocation(line: 229, column: 20, scope: !999)
!1021 = !DILocation(line: 229, column: 28, scope: !999)
!1022 = !DILocation(line: 229, column: 7, scope: !999)
!1023 = !DILocation(line: 230, column: 31, scope: !999)
!1024 = !DILocation(line: 230, column: 39, scope: !999)
!1025 = !DILocation(line: 230, column: 7, scope: !999)
!1026 = !DILocation(line: 231, column: 7, scope: !999)
!1027 = !DILocation(line: 232, column: 7, scope: !999)
!1028 = !DILocation(line: 232, column: 15, scope: !999)
!1029 = !DILocation(line: 232, column: 26, scope: !999)
!1030 = distinct !{!1030, !992, !1031}
!1031 = !DILocation(line: 233, column: 5, scope: !973)
!1032 = !DILocation(line: 234, column: 12, scope: !973)
!1033 = !DILocation(line: 234, column: 20, scope: !973)
!1034 = !DILocation(line: 234, column: 3, scope: !973)
!1035 = !DILocation(line: 235, column: 3, scope: !973)
!1036 = !DILocation(line: 236, column: 3, scope: !973)
!1037 = !DILocation(line: 237, column: 3, scope: !973)
!1038 = !DILocation(line: 238, column: 1, scope: !973)
