; ModuleID = '/home/raj/coturn/src/apps/common/hiredis_libevent2.c'
source_filename = "/home/raj/coturn/src/apps/common/hiredis_libevent2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redisLibeventEvents = type { ptr, i32, i32, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32 }
%struct.redis_message = type { [513 x i8], [513 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.redisAsyncContext = type { %struct.redisContext, i32, ptr, ptr, %struct.anon.1, ptr, ptr, %struct.redisCallbackList, %struct.anon.2 }
%struct.redisContext = type { i32, [128 x i8], i32, i32, ptr, ptr, i32, ptr, %struct.anon, %struct.anon.0 }
%struct.anon = type { ptr, ptr, i32 }
%struct.anon.0 = type { ptr }
%struct.anon.1 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.redisCallbackList = type { ptr, ptr }
%struct.anon.2 = type { %struct.redisCallbackList, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"%s %s \00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: Redis connection broken: ac=0x%lx, e=0x%lx\0A\00", align 1, !dbg !12
@__FUNCTION__.send_message_to_redis = private unnamed_addr constant [22 x i8] c"send_message_to_redis\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1, !dbg !23
@stderr = external global ptr, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"Error: %s:%s\0A\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [8 x i8] c"AUTH %s\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [10 x i8] c"SELECT %d\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [38 x i8] c"%s: Redis connection broken: e=0x%lx\0A\00", align 1, !dbg !40
@__FUNCTION__.redisLibeventReadEvent = private unnamed_addr constant [23 x i8] c"redisLibeventReadEvent\00", align 1, !dbg !45
@.str.8 = private unnamed_addr constant [34 x i8] c"%s: Re-connected to redis, async\0A\00", align 1, !dbg !50
@__FUNCTION__.redis_reconnect = private unnamed_addr constant [16 x i8] c"redis_reconnect\00", align 1, !dbg !55

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redis_async_init() #0 !dbg !285 {
  ret void, !dbg !289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_redis_asyncconn_good(ptr noundef %0) #0 !dbg !290 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !293, metadata !DIExpression()), !dbg !294
  %5 = load ptr, ptr %3, align 8, !dbg !295
  %6 = icmp ne ptr %5, null, !dbg !295
  br i1 %6, label %7, label %14, !dbg !297

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !298, metadata !DIExpression()), !dbg !300
  %8 = load ptr, ptr %3, align 8, !dbg !301
  store ptr %8, ptr %4, align 8, !dbg !300
  %9 = load ptr, ptr %4, align 8, !dbg !302
  %10 = call i32 @redis_le_valid(ptr noundef %9), !dbg !304
  %11 = icmp ne i32 %10, 0, !dbg !304
  br i1 %11, label %12, label %13, !dbg !305

12:                                               ; preds = %7
  store i32 1, ptr %2, align 4, !dbg !306
  br label %15, !dbg !306

13:                                               ; preds = %7
  br label %14, !dbg !307

14:                                               ; preds = %13, %1
  store i32 0, ptr %2, align 4, !dbg !308
  br label %15, !dbg !308

15:                                               ; preds = %14, %12
  %16 = load i32, ptr %2, align 4, !dbg !309
  ret i32 %16, !dbg !309
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_le_valid(ptr noundef %0) #0 !dbg !310 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !313, metadata !DIExpression()), !dbg !314
  %3 = load ptr, ptr %2, align 8, !dbg !315
  %4 = icmp ne ptr %3, null, !dbg !315
  br i1 %4, label %5, label %15, !dbg !316

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !317
  %7 = getelementptr inbounds %struct.redisLibeventEvents, ptr %6, i32 0, i32 1, !dbg !318
  %8 = load i32, ptr %7, align 8, !dbg !318
  %9 = icmp ne i32 %8, 0, !dbg !319
  br i1 %9, label %15, label %10, !dbg !320

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !dbg !321
  %12 = getelementptr inbounds %struct.redisLibeventEvents, ptr %11, i32 0, i32 0, !dbg !322
  %13 = load ptr, ptr %12, align 8, !dbg !322
  %14 = icmp ne ptr %13, null, !dbg !320
  br label %15

15:                                               ; preds = %10, %5, %1
  %16 = phi i1 [ false, %5 ], [ false, %1 ], [ %14, %10 ], !dbg !323
  %17 = zext i1 %16 to i32, !dbg !320
  ret i32 %17, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_message_to_redis(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) #0 !dbg !325 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.redis_message, align 1
  %12 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !328, metadata !DIExpression()), !dbg !329
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !330, metadata !DIExpression()), !dbg !331
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !332, metadata !DIExpression()), !dbg !333
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !334, metadata !DIExpression()), !dbg !335
  %13 = load ptr, ptr %5, align 8, !dbg !336
  %14 = icmp ne ptr %13, null, !dbg !336
  br i1 %14, label %16, label %15, !dbg !338

15:                                               ; preds = %4
  br label %68, !dbg !339

16:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !341, metadata !DIExpression()), !dbg !343
  %17 = load ptr, ptr %5, align 8, !dbg !344
  store ptr %17, ptr %9, align 8, !dbg !343
  %18 = load ptr, ptr %9, align 8, !dbg !345
  %19 = call i32 @redis_le_valid(ptr noundef %18), !dbg !347
  %20 = icmp ne i32 %19, 0, !dbg !347
  br i1 %20, label %23, label %21, !dbg !348

21:                                               ; preds = %16
  %22 = load ptr, ptr %9, align 8, !dbg !349
  call void @redis_reconnect(ptr noundef %22), !dbg !351
  br label %23, !dbg !352

23:                                               ; preds = %21, %16
  %24 = load ptr, ptr %9, align 8, !dbg !353
  %25 = call i32 @redis_le_valid(ptr noundef %24), !dbg !355
  %26 = icmp ne i32 %25, 0, !dbg !355
  br i1 %26, label %28, label %27, !dbg !356

27:                                               ; preds = %23
  br label %67, !dbg !357

28:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %10, metadata !359, metadata !DIExpression()), !dbg !361
  %29 = load ptr, ptr %9, align 8, !dbg !362
  %30 = getelementptr inbounds %struct.redisLibeventEvents, ptr %29, i32 0, i32 0, !dbg !363
  %31 = load ptr, ptr %30, align 8, !dbg !363
  store ptr %31, ptr %10, align 8, !dbg !361
  call void @llvm.dbg.declare(metadata ptr %11, metadata !364, metadata !DIExpression()), !dbg !372
  %32 = getelementptr inbounds %struct.redis_message, ptr %11, i32 0, i32 0, !dbg !373
  %33 = getelementptr inbounds [513 x i8], ptr %32, i64 0, i64 0, !dbg !374
  %34 = load ptr, ptr %6, align 8, !dbg !375
  %35 = load ptr, ptr %7, align 8, !dbg !376
  %36 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %33, i64 noundef 510, ptr noundef @.str, ptr noundef %34, ptr noundef %35) #9, !dbg !377
  %37 = getelementptr inbounds %struct.redis_message, ptr %11, i32 0, i32 0, !dbg !378
  %38 = getelementptr inbounds [513 x i8], ptr %37, i64 0, i64 0, !dbg !379
  %39 = getelementptr inbounds %struct.redis_message, ptr %11, i32 0, i32 0, !dbg !380
  %40 = getelementptr inbounds [513 x i8], ptr %39, i64 0, i64 0, !dbg !381
  %41 = call i64 @strlen(ptr noundef %40) #10, !dbg !382
  %42 = getelementptr inbounds i8, ptr %38, i64 %41, !dbg !383
  %43 = call ptr @strcpy(ptr noundef %42, ptr noundef @.str.1) #9, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %12, metadata !385, metadata !DIExpression()), !dbg !401
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %12, i64 0, i64 0, !dbg !402
  call void @llvm.va_start(ptr %44), !dbg !402
  %45 = getelementptr inbounds %struct.redis_message, ptr %11, i32 0, i32 1, !dbg !403
  %46 = getelementptr inbounds [513 x i8], ptr %45, i64 0, i64 0, !dbg !404
  %47 = load ptr, ptr %8, align 8, !dbg !405
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %12, i64 0, i64 0, !dbg !406
  %49 = call i32 @vsnprintf(ptr noundef %46, i64 noundef 512, ptr noundef %47, ptr noundef %48) #9, !dbg !407
  %50 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %12, i64 0, i64 0, !dbg !408
  call void @llvm.va_end(ptr %50), !dbg !408
  %51 = load ptr, ptr %10, align 8, !dbg !409
  %52 = load ptr, ptr %9, align 8, !dbg !411
  %53 = getelementptr inbounds %struct.redis_message, ptr %11, i32 0, i32 0, !dbg !412
  %54 = getelementptr inbounds [513 x i8], ptr %53, i64 0, i64 0, !dbg !413
  %55 = getelementptr inbounds %struct.redis_message, ptr %11, i32 0, i32 1, !dbg !414
  %56 = getelementptr inbounds [513 x i8], ptr %55, i64 0, i64 0, !dbg !415
  %57 = call i32 (ptr, ptr, ptr, ptr, ...) @redisAsyncCommand(ptr noundef %51, ptr noundef null, ptr noundef %52, ptr noundef %54, ptr noundef %56), !dbg !416
  %58 = icmp ne i32 %57, 0, !dbg !417
  br i1 %58, label %59, label %66, !dbg !418

59:                                               ; preds = %28
  %60 = load ptr, ptr %9, align 8, !dbg !419
  %61 = getelementptr inbounds %struct.redisLibeventEvents, ptr %60, i32 0, i32 1, !dbg !421
  store i32 1, ptr %61, align 8, !dbg !422
  %62 = load ptr, ptr %10, align 8, !dbg !423
  %63 = ptrtoint ptr %62 to i64, !dbg !424
  %64 = load ptr, ptr %9, align 8, !dbg !425
  %65 = ptrtoint ptr %64 to i64, !dbg !426
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.2, ptr noundef @__FUNCTION__.send_message_to_redis, i64 noundef %63, i64 noundef %65), !dbg !427
  br label %66, !dbg !428

66:                                               ; preds = %59, %28
  br label %67

67:                                               ; preds = %66, %27
  br label %68

68:                                               ; preds = %15, %67
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redis_reconnect(ptr noundef %0) #0 !dbg !430 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !433, metadata !DIExpression()), !dbg !434
  %4 = load ptr, ptr %2, align 8, !dbg !435
  %5 = icmp ne ptr %4, null, !dbg !435
  br i1 %5, label %6, label %11, !dbg !437

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !438
  %8 = getelementptr inbounds %struct.redisLibeventEvents, ptr %7, i32 0, i32 2, !dbg !439
  %9 = load i32, ptr %8, align 4, !dbg !439
  %10 = icmp ne i32 %9, 0, !dbg !440
  br i1 %10, label %12, label %11, !dbg !441

11:                                               ; preds = %6, %1
  br label %186, !dbg !442

12:                                               ; preds = %6
  %13 = load ptr, ptr %2, align 8, !dbg !443
  %14 = getelementptr inbounds %struct.redisLibeventEvents, ptr %13, i32 0, i32 4, !dbg !445
  %15 = load ptr, ptr %14, align 8, !dbg !445
  %16 = icmp ne ptr %15, null, !dbg !443
  br i1 %16, label %17, label %33, !dbg !446

17:                                               ; preds = %12
  %18 = load ptr, ptr %2, align 8, !dbg !447
  %19 = getelementptr inbounds %struct.redisLibeventEvents, ptr %18, i32 0, i32 6, !dbg !450
  %20 = load i32, ptr %19, align 8, !dbg !450
  %21 = icmp ne i32 %20, 0, !dbg !447
  br i1 %21, label %22, label %27, !dbg !451

22:                                               ; preds = %17
  %23 = load ptr, ptr %2, align 8, !dbg !452
  %24 = getelementptr inbounds %struct.redisLibeventEvents, ptr %23, i32 0, i32 4, !dbg !453
  %25 = load ptr, ptr %24, align 8, !dbg !453
  %26 = call i32 @event_del(ptr noundef %25), !dbg !454
  br label %27, !dbg !454

27:                                               ; preds = %22, %17
  %28 = load ptr, ptr %2, align 8, !dbg !455
  %29 = getelementptr inbounds %struct.redisLibeventEvents, ptr %28, i32 0, i32 4, !dbg !456
  %30 = load ptr, ptr %29, align 8, !dbg !456
  call void @event_free(ptr noundef %30), !dbg !457
  %31 = load ptr, ptr %2, align 8, !dbg !458
  %32 = getelementptr inbounds %struct.redisLibeventEvents, ptr %31, i32 0, i32 4, !dbg !459
  store ptr null, ptr %32, align 8, !dbg !460
  br label %33, !dbg !461

33:                                               ; preds = %27, %12
  %34 = load ptr, ptr %2, align 8, !dbg !462
  %35 = getelementptr inbounds %struct.redisLibeventEvents, ptr %34, i32 0, i32 6, !dbg !463
  store i32 0, ptr %35, align 8, !dbg !464
  %36 = load ptr, ptr %2, align 8, !dbg !465
  %37 = getelementptr inbounds %struct.redisLibeventEvents, ptr %36, i32 0, i32 5, !dbg !467
  %38 = load ptr, ptr %37, align 8, !dbg !467
  %39 = icmp ne ptr %38, null, !dbg !465
  br i1 %39, label %40, label %56, !dbg !468

40:                                               ; preds = %33
  %41 = load ptr, ptr %2, align 8, !dbg !469
  %42 = getelementptr inbounds %struct.redisLibeventEvents, ptr %41, i32 0, i32 7, !dbg !472
  %43 = load i32, ptr %42, align 4, !dbg !472
  %44 = icmp ne i32 %43, 0, !dbg !469
  br i1 %44, label %45, label %50, !dbg !473

45:                                               ; preds = %40
  %46 = load ptr, ptr %2, align 8, !dbg !474
  %47 = getelementptr inbounds %struct.redisLibeventEvents, ptr %46, i32 0, i32 5, !dbg !475
  %48 = load ptr, ptr %47, align 8, !dbg !475
  %49 = call i32 @event_del(ptr noundef %48), !dbg !476
  br label %50, !dbg !476

50:                                               ; preds = %45, %40
  %51 = load ptr, ptr %2, align 8, !dbg !477
  %52 = getelementptr inbounds %struct.redisLibeventEvents, ptr %51, i32 0, i32 5, !dbg !478
  %53 = load ptr, ptr %52, align 8, !dbg !478
  call void @event_free(ptr noundef %53), !dbg !479
  %54 = load ptr, ptr %2, align 8, !dbg !480
  %55 = getelementptr inbounds %struct.redisLibeventEvents, ptr %54, i32 0, i32 5, !dbg !481
  store ptr null, ptr %55, align 8, !dbg !482
  br label %56, !dbg !483

56:                                               ; preds = %50, %33
  %57 = load ptr, ptr %2, align 8, !dbg !484
  %58 = getelementptr inbounds %struct.redisLibeventEvents, ptr %57, i32 0, i32 7, !dbg !485
  store i32 0, ptr %58, align 4, !dbg !486
  call void @llvm.dbg.declare(metadata ptr %3, metadata !487, metadata !DIExpression()), !dbg !488
  store ptr null, ptr %3, align 8, !dbg !488
  %59 = load ptr, ptr %2, align 8, !dbg !489
  %60 = getelementptr inbounds %struct.redisLibeventEvents, ptr %59, i32 0, i32 0, !dbg !491
  %61 = load ptr, ptr %60, align 8, !dbg !491
  %62 = icmp ne ptr %61, null, !dbg !489
  br i1 %62, label %63, label %66, !dbg !492

63:                                               ; preds = %56
  %64 = load ptr, ptr %2, align 8, !dbg !493
  %65 = getelementptr inbounds %struct.redisLibeventEvents, ptr %64, i32 0, i32 0, !dbg !495
  store ptr null, ptr %65, align 8, !dbg !496
  br label %66, !dbg !497

66:                                               ; preds = %63, %56
  %67 = load ptr, ptr %2, align 8, !dbg !498
  %68 = getelementptr inbounds %struct.redisLibeventEvents, ptr %67, i32 0, i32 8, !dbg !499
  %69 = load ptr, ptr %68, align 8, !dbg !499
  %70 = load ptr, ptr %2, align 8, !dbg !500
  %71 = getelementptr inbounds %struct.redisLibeventEvents, ptr %70, i32 0, i32 9, !dbg !501
  %72 = load i32, ptr %71, align 8, !dbg !501
  %73 = call ptr @redisAsyncConnect(ptr noundef %69, i32 noundef %72), !dbg !502
  store ptr %73, ptr %3, align 8, !dbg !503
  %74 = load ptr, ptr %3, align 8, !dbg !504
  %75 = icmp ne ptr %74, null, !dbg !504
  br i1 %75, label %77, label %76, !dbg !506

76:                                               ; preds = %66
  br label %186, !dbg !507

77:                                               ; preds = %66
  %78 = load ptr, ptr %3, align 8, !dbg !509
  %79 = load ptr, ptr %2, align 8, !dbg !510
  %80 = getelementptr inbounds %struct.redisLibeventEvents, ptr %79, i32 0, i32 0, !dbg !511
  store ptr %78, ptr %80, align 8, !dbg !512
  %81 = load ptr, ptr %3, align 8, !dbg !513
  %82 = getelementptr inbounds %struct.redisAsyncContext, ptr %81, i32 0, i32 4, !dbg !514
  %83 = getelementptr inbounds %struct.anon.1, ptr %82, i32 0, i32 1, !dbg !515
  store ptr @redisLibeventAddRead, ptr %83, align 8, !dbg !516
  %84 = load ptr, ptr %3, align 8, !dbg !517
  %85 = getelementptr inbounds %struct.redisAsyncContext, ptr %84, i32 0, i32 4, !dbg !518
  %86 = getelementptr inbounds %struct.anon.1, ptr %85, i32 0, i32 2, !dbg !519
  store ptr @redisLibeventDelRead, ptr %86, align 8, !dbg !520
  %87 = load ptr, ptr %3, align 8, !dbg !521
  %88 = getelementptr inbounds %struct.redisAsyncContext, ptr %87, i32 0, i32 4, !dbg !522
  %89 = getelementptr inbounds %struct.anon.1, ptr %88, i32 0, i32 3, !dbg !523
  store ptr @redisLibeventAddWrite, ptr %89, align 8, !dbg !524
  %90 = load ptr, ptr %3, align 8, !dbg !525
  %91 = getelementptr inbounds %struct.redisAsyncContext, ptr %90, i32 0, i32 4, !dbg !526
  %92 = getelementptr inbounds %struct.anon.1, ptr %91, i32 0, i32 4, !dbg !527
  store ptr @redisLibeventDelWrite, ptr %92, align 8, !dbg !528
  %93 = load ptr, ptr %3, align 8, !dbg !529
  %94 = getelementptr inbounds %struct.redisAsyncContext, ptr %93, i32 0, i32 4, !dbg !530
  %95 = getelementptr inbounds %struct.anon.1, ptr %94, i32 0, i32 5, !dbg !531
  store ptr @redisLibeventCleanup, ptr %95, align 8, !dbg !532
  %96 = load ptr, ptr %2, align 8, !dbg !533
  %97 = load ptr, ptr %3, align 8, !dbg !534
  %98 = getelementptr inbounds %struct.redisAsyncContext, ptr %97, i32 0, i32 4, !dbg !535
  %99 = getelementptr inbounds %struct.anon.1, ptr %98, i32 0, i32 0, !dbg !536
  store ptr %96, ptr %99, align 8, !dbg !537
  %100 = load ptr, ptr %2, align 8, !dbg !538
  %101 = getelementptr inbounds %struct.redisLibeventEvents, ptr %100, i32 0, i32 3, !dbg !539
  %102 = load ptr, ptr %101, align 8, !dbg !539
  %103 = load ptr, ptr %2, align 8, !dbg !540
  %104 = getelementptr inbounds %struct.redisLibeventEvents, ptr %103, i32 0, i32 0, !dbg !541
  %105 = load ptr, ptr %104, align 8, !dbg !541
  %106 = getelementptr inbounds %struct.redisAsyncContext, ptr %105, i32 0, i32 0, !dbg !542
  %107 = getelementptr inbounds %struct.redisContext, ptr %106, i32 0, i32 2, !dbg !543
  %108 = load i32, ptr %107, align 4, !dbg !543
  %109 = load ptr, ptr %2, align 8, !dbg !544
  %110 = call ptr @event_new(ptr noundef %102, i32 noundef %108, i16 noundef signext 2, ptr noundef @redisLibeventReadEvent, ptr noundef %109), !dbg !545
  %111 = load ptr, ptr %2, align 8, !dbg !546
  %112 = getelementptr inbounds %struct.redisLibeventEvents, ptr %111, i32 0, i32 4, !dbg !547
  store ptr %110, ptr %112, align 8, !dbg !548
  %113 = load ptr, ptr %2, align 8, !dbg !549
  %114 = getelementptr inbounds %struct.redisLibeventEvents, ptr %113, i32 0, i32 3, !dbg !550
  %115 = load ptr, ptr %114, align 8, !dbg !550
  %116 = load ptr, ptr %2, align 8, !dbg !551
  %117 = getelementptr inbounds %struct.redisLibeventEvents, ptr %116, i32 0, i32 0, !dbg !552
  %118 = load ptr, ptr %117, align 8, !dbg !552
  %119 = getelementptr inbounds %struct.redisAsyncContext, ptr %118, i32 0, i32 0, !dbg !553
  %120 = getelementptr inbounds %struct.redisContext, ptr %119, i32 0, i32 2, !dbg !554
  %121 = load i32, ptr %120, align 4, !dbg !554
  %122 = load ptr, ptr %2, align 8, !dbg !555
  %123 = call ptr @event_new(ptr noundef %115, i32 noundef %121, i16 noundef signext 4, ptr noundef @redisLibeventWriteEvent, ptr noundef %122), !dbg !556
  %124 = load ptr, ptr %2, align 8, !dbg !557
  %125 = getelementptr inbounds %struct.redisLibeventEvents, ptr %124, i32 0, i32 5, !dbg !558
  store ptr %123, ptr %125, align 8, !dbg !559
  %126 = load ptr, ptr %2, align 8, !dbg !560
  %127 = getelementptr inbounds %struct.redisLibeventEvents, ptr %126, i32 0, i32 4, !dbg !562
  %128 = load ptr, ptr %127, align 8, !dbg !562
  %129 = icmp eq ptr %128, null, !dbg !563
  br i1 %129, label %135, label %130, !dbg !564

130:                                              ; preds = %77
  %131 = load ptr, ptr %2, align 8, !dbg !565
  %132 = getelementptr inbounds %struct.redisLibeventEvents, ptr %131, i32 0, i32 5, !dbg !566
  %133 = load ptr, ptr %132, align 8, !dbg !566
  %134 = icmp eq ptr %133, null, !dbg !567
  br i1 %134, label %135, label %136, !dbg !568

135:                                              ; preds = %130, %77
  br label %186, !dbg !569

136:                                              ; preds = %130
  %137 = load ptr, ptr %2, align 8, !dbg !571
  %138 = getelementptr inbounds %struct.redisLibeventEvents, ptr %137, i32 0, i32 5, !dbg !572
  %139 = load ptr, ptr %138, align 8, !dbg !572
  %140 = call i32 @event_add(ptr noundef %139, ptr noundef null), !dbg !573
  %141 = load ptr, ptr %2, align 8, !dbg !574
  %142 = getelementptr inbounds %struct.redisLibeventEvents, ptr %141, i32 0, i32 7, !dbg !575
  store i32 1, ptr %142, align 4, !dbg !576
  %143 = load ptr, ptr %2, align 8, !dbg !577
  %144 = getelementptr inbounds %struct.redisLibeventEvents, ptr %143, i32 0, i32 1, !dbg !578
  store i32 0, ptr %144, align 8, !dbg !579
  %145 = load ptr, ptr %2, align 8, !dbg !580
  %146 = call i32 @redis_le_valid(ptr noundef %145), !dbg !582
  %147 = icmp ne i32 %146, 0, !dbg !582
  br i1 %147, label %148, label %165, !dbg !583

148:                                              ; preds = %136
  %149 = load ptr, ptr %2, align 8, !dbg !584
  %150 = getelementptr inbounds %struct.redisLibeventEvents, ptr %149, i32 0, i32 10, !dbg !585
  %151 = load ptr, ptr %150, align 8, !dbg !585
  %152 = icmp ne ptr %151, null, !dbg !584
  br i1 %152, label %153, label %165, !dbg !586

153:                                              ; preds = %148
  %154 = load ptr, ptr %3, align 8, !dbg !587
  %155 = load ptr, ptr %2, align 8, !dbg !590
  %156 = load ptr, ptr %2, align 8, !dbg !591
  %157 = getelementptr inbounds %struct.redisLibeventEvents, ptr %156, i32 0, i32 10, !dbg !592
  %158 = load ptr, ptr %157, align 8, !dbg !592
  %159 = call i32 (ptr, ptr, ptr, ptr, ...) @redisAsyncCommand(ptr noundef %154, ptr noundef null, ptr noundef %155, ptr noundef @.str.5, ptr noundef %158), !dbg !593
  %160 = icmp ne i32 %159, 0, !dbg !594
  br i1 %160, label %161, label %164, !dbg !595

161:                                              ; preds = %153
  %162 = load ptr, ptr %2, align 8, !dbg !596
  %163 = getelementptr inbounds %struct.redisLibeventEvents, ptr %162, i32 0, i32 1, !dbg !598
  store i32 1, ptr %163, align 8, !dbg !599
  br label %164, !dbg !600

164:                                              ; preds = %161, %153
  br label %165, !dbg !601

165:                                              ; preds = %164, %148, %136
  %166 = load ptr, ptr %2, align 8, !dbg !602
  %167 = call i32 @redis_le_valid(ptr noundef %166), !dbg !604
  %168 = icmp ne i32 %167, 0, !dbg !604
  br i1 %168, label %169, label %181, !dbg !605

169:                                              ; preds = %165
  %170 = load ptr, ptr %3, align 8, !dbg !606
  %171 = load ptr, ptr %2, align 8, !dbg !609
  %172 = load ptr, ptr %2, align 8, !dbg !610
  %173 = getelementptr inbounds %struct.redisLibeventEvents, ptr %172, i32 0, i32 11, !dbg !611
  %174 = load i32, ptr %173, align 8, !dbg !611
  %175 = call i32 (ptr, ptr, ptr, ptr, ...) @redisAsyncCommand(ptr noundef %170, ptr noundef null, ptr noundef %171, ptr noundef @.str.6, i32 noundef %174), !dbg !612
  %176 = icmp ne i32 %175, 0, !dbg !613
  br i1 %176, label %177, label %180, !dbg !614

177:                                              ; preds = %169
  %178 = load ptr, ptr %2, align 8, !dbg !615
  %179 = getelementptr inbounds %struct.redisLibeventEvents, ptr %178, i32 0, i32 1, !dbg !617
  store i32 1, ptr %179, align 8, !dbg !618
  br label %180, !dbg !619

180:                                              ; preds = %177, %169
  br label %181, !dbg !620

181:                                              ; preds = %180, %165
  %182 = load ptr, ptr %2, align 8, !dbg !621
  %183 = call i32 @redis_le_valid(ptr noundef %182), !dbg !623
  %184 = icmp ne i32 %183, 0, !dbg !623
  br i1 %184, label %185, label %186, !dbg !624

185:                                              ; preds = %181
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.8, ptr noundef @__FUNCTION__.redis_reconnect), !dbg !625
  br label %186, !dbg !627

186:                                              ; preds = %11, %76, %135, %185, %181
  ret void, !dbg !628
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nounwind
declare i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

declare i32 @redisAsyncCommand(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #5

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @redisLibeventAttach(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !629 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca [256 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !632, metadata !DIExpression()), !dbg !633
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !634, metadata !DIExpression()), !dbg !635
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !636, metadata !DIExpression()), !dbg !637
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !638, metadata !DIExpression()), !dbg !639
  store i32 %4, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !640, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.declare(metadata ptr %12, metadata !642, metadata !DIExpression()), !dbg !643
  store ptr null, ptr %12, align 8, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %13, metadata !644, metadata !DIExpression()), !dbg !645
  store ptr null, ptr %13, align 8, !dbg !645
  call void @llvm.dbg.declare(metadata ptr %14, metadata !646, metadata !DIExpression()), !dbg !650
  %18 = load ptr, ptr %8, align 8, !dbg !651
  %19 = icmp ne ptr %18, null, !dbg !651
  br i1 %19, label %20, label %42, !dbg !653

20:                                               ; preds = %5
  %21 = load ptr, ptr %8, align 8, !dbg !654
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !654
  %23 = load i8, ptr %22, align 1, !dbg !654
  %24 = sext i8 %23 to i32, !dbg !654
  %25 = icmp ne i32 %24, 0, !dbg !654
  br i1 %25, label %26, label %42, !dbg !655

26:                                               ; preds = %20
  br label %27, !dbg !656

27:                                               ; preds = %26
  %28 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 0, !dbg !657
  %29 = load ptr, ptr %8, align 8, !dbg !657
  %30 = icmp ne ptr %28, %29, !dbg !657
  br i1 %30, label %31, label %40, !dbg !660

31:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %15, metadata !661, metadata !DIExpression()), !dbg !665
  store i64 256, ptr %15, align 8, !dbg !665
  %32 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 0, !dbg !665
  %33 = load ptr, ptr %8, align 8, !dbg !665
  %34 = load i64, ptr %15, align 8, !dbg !665
  %35 = call ptr @strncpy(ptr noundef %32, ptr noundef %33, i64 noundef %34) #9, !dbg !665
  %36 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 0, !dbg !665
  %37 = load i64, ptr %15, align 8, !dbg !665
  %38 = sub i64 %37, 1, !dbg !665
  %39 = getelementptr inbounds i8, ptr %36, i64 %38, !dbg !665
  store i8 0, ptr %39, align 1, !dbg !665
  br label %40, !dbg !666

40:                                               ; preds = %31, %27
  br label %41, !dbg !660

41:                                               ; preds = %40
  br label %56, !dbg !660

42:                                               ; preds = %20, %5
  br label %43, !dbg !667

43:                                               ; preds = %42
  %44 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 0, !dbg !668
  %45 = icmp ne ptr %44, @.str.3, !dbg !668
  br i1 %45, label %46, label %54, !dbg !671

46:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata ptr %16, metadata !672, metadata !DIExpression()), !dbg !676
  store i64 256, ptr %16, align 8, !dbg !676
  %47 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 0, !dbg !676
  %48 = load i64, ptr %16, align 8, !dbg !676
  %49 = call ptr @strncpy(ptr noundef %47, ptr noundef @.str.3, i64 noundef %48) #9, !dbg !676
  %50 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 0, !dbg !676
  %51 = load i64, ptr %16, align 8, !dbg !676
  %52 = sub i64 %51, 1, !dbg !676
  %53 = getelementptr inbounds i8, ptr %50, i64 %52, !dbg !676
  store i8 0, ptr %53, align 1, !dbg !676
  br label %54, !dbg !677

54:                                               ; preds = %46, %43
  br label %55, !dbg !671

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55, %41
  call void @llvm.dbg.declare(metadata ptr %17, metadata !678, metadata !DIExpression()), !dbg !679
  store i32 6379, ptr %17, align 4, !dbg !679
  %57 = load i32, ptr %9, align 4, !dbg !680
  %58 = icmp sgt i32 %57, 0, !dbg !682
  br i1 %58, label %59, label %61, !dbg !683

59:                                               ; preds = %56
  %60 = load i32, ptr %9, align 4, !dbg !684
  store i32 %60, ptr %17, align 4, !dbg !685
  br label %61, !dbg !686

61:                                               ; preds = %59, %56
  %62 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 0, !dbg !687
  %63 = load i32, ptr %17, align 4, !dbg !688
  %64 = call ptr @redisAsyncConnect(ptr noundef %62, i32 noundef %63), !dbg !689
  store ptr %64, ptr %13, align 8, !dbg !690
  %65 = load ptr, ptr %13, align 8, !dbg !691
  %66 = icmp ne ptr %65, null, !dbg !691
  br i1 %66, label %77, label %67, !dbg !693

67:                                               ; preds = %61
  %68 = load ptr, ptr @stderr, align 8, !dbg !694
  %69 = load ptr, ptr %13, align 8, !dbg !696
  %70 = getelementptr inbounds %struct.redisAsyncContext, ptr %69, i32 0, i32 2, !dbg !697
  %71 = load ptr, ptr %70, align 8, !dbg !697
  %72 = load ptr, ptr %13, align 8, !dbg !698
  %73 = getelementptr inbounds %struct.redisAsyncContext, ptr %72, i32 0, i32 0, !dbg !699
  %74 = getelementptr inbounds %struct.redisContext, ptr %73, i32 0, i32 1, !dbg !700
  %75 = getelementptr inbounds [128 x i8], ptr %74, i64 0, i64 0, !dbg !698
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef @.str.4, ptr noundef %71, ptr noundef %75), !dbg !701
  store ptr null, ptr %6, align 8, !dbg !702
  br label %201, !dbg !702

77:                                               ; preds = %61
  %78 = call noalias ptr @malloc(i64 noundef 80) #11, !dbg !703
  store ptr %78, ptr %12, align 8, !dbg !704
  %79 = load ptr, ptr %12, align 8, !dbg !705
  call void @llvm.memset.p0.i64(ptr align 8 %79, i8 0, i64 80, i1 false), !dbg !706
  %80 = load ptr, ptr %12, align 8, !dbg !707
  %81 = getelementptr inbounds %struct.redisLibeventEvents, ptr %80, i32 0, i32 2, !dbg !708
  store i32 1, ptr %81, align 4, !dbg !709
  %82 = load ptr, ptr %13, align 8, !dbg !710
  %83 = load ptr, ptr %12, align 8, !dbg !711
  %84 = getelementptr inbounds %struct.redisLibeventEvents, ptr %83, i32 0, i32 0, !dbg !712
  store ptr %82, ptr %84, align 8, !dbg !713
  %85 = load ptr, ptr %7, align 8, !dbg !714
  %86 = load ptr, ptr %12, align 8, !dbg !715
  %87 = getelementptr inbounds %struct.redisLibeventEvents, ptr %86, i32 0, i32 3, !dbg !716
  store ptr %85, ptr %87, align 8, !dbg !717
  %88 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 0, !dbg !718
  %89 = call noalias ptr @strdup(ptr noundef %88) #9, !dbg !719
  %90 = load ptr, ptr %12, align 8, !dbg !720
  %91 = getelementptr inbounds %struct.redisLibeventEvents, ptr %90, i32 0, i32 8, !dbg !721
  store ptr %89, ptr %91, align 8, !dbg !722
  %92 = load i32, ptr %17, align 4, !dbg !723
  %93 = load ptr, ptr %12, align 8, !dbg !724
  %94 = getelementptr inbounds %struct.redisLibeventEvents, ptr %93, i32 0, i32 9, !dbg !725
  store i32 %92, ptr %94, align 8, !dbg !726
  %95 = load ptr, ptr %10, align 8, !dbg !727
  %96 = icmp ne ptr %95, null, !dbg !727
  br i1 %96, label %97, label %102, !dbg !729

97:                                               ; preds = %77
  %98 = load ptr, ptr %10, align 8, !dbg !730
  %99 = call noalias ptr @strdup(ptr noundef %98) #9, !dbg !731
  %100 = load ptr, ptr %12, align 8, !dbg !732
  %101 = getelementptr inbounds %struct.redisLibeventEvents, ptr %100, i32 0, i32 10, !dbg !733
  store ptr %99, ptr %101, align 8, !dbg !734
  br label %102, !dbg !732

102:                                              ; preds = %97, %77
  %103 = load i32, ptr %11, align 4, !dbg !735
  %104 = load ptr, ptr %12, align 8, !dbg !736
  %105 = getelementptr inbounds %struct.redisLibeventEvents, ptr %104, i32 0, i32 11, !dbg !737
  store i32 %103, ptr %105, align 8, !dbg !738
  %106 = load ptr, ptr %13, align 8, !dbg !739
  %107 = getelementptr inbounds %struct.redisAsyncContext, ptr %106, i32 0, i32 4, !dbg !740
  %108 = getelementptr inbounds %struct.anon.1, ptr %107, i32 0, i32 1, !dbg !741
  store ptr @redisLibeventAddRead, ptr %108, align 8, !dbg !742
  %109 = load ptr, ptr %13, align 8, !dbg !743
  %110 = getelementptr inbounds %struct.redisAsyncContext, ptr %109, i32 0, i32 4, !dbg !744
  %111 = getelementptr inbounds %struct.anon.1, ptr %110, i32 0, i32 2, !dbg !745
  store ptr @redisLibeventDelRead, ptr %111, align 8, !dbg !746
  %112 = load ptr, ptr %13, align 8, !dbg !747
  %113 = getelementptr inbounds %struct.redisAsyncContext, ptr %112, i32 0, i32 4, !dbg !748
  %114 = getelementptr inbounds %struct.anon.1, ptr %113, i32 0, i32 3, !dbg !749
  store ptr @redisLibeventAddWrite, ptr %114, align 8, !dbg !750
  %115 = load ptr, ptr %13, align 8, !dbg !751
  %116 = getelementptr inbounds %struct.redisAsyncContext, ptr %115, i32 0, i32 4, !dbg !752
  %117 = getelementptr inbounds %struct.anon.1, ptr %116, i32 0, i32 4, !dbg !753
  store ptr @redisLibeventDelWrite, ptr %117, align 8, !dbg !754
  %118 = load ptr, ptr %13, align 8, !dbg !755
  %119 = getelementptr inbounds %struct.redisAsyncContext, ptr %118, i32 0, i32 4, !dbg !756
  %120 = getelementptr inbounds %struct.anon.1, ptr %119, i32 0, i32 5, !dbg !757
  store ptr @redisLibeventCleanup, ptr %120, align 8, !dbg !758
  %121 = load ptr, ptr %12, align 8, !dbg !759
  %122 = load ptr, ptr %13, align 8, !dbg !760
  %123 = getelementptr inbounds %struct.redisAsyncContext, ptr %122, i32 0, i32 4, !dbg !761
  %124 = getelementptr inbounds %struct.anon.1, ptr %123, i32 0, i32 0, !dbg !762
  store ptr %121, ptr %124, align 8, !dbg !763
  %125 = load ptr, ptr %12, align 8, !dbg !764
  %126 = getelementptr inbounds %struct.redisLibeventEvents, ptr %125, i32 0, i32 3, !dbg !765
  %127 = load ptr, ptr %126, align 8, !dbg !765
  %128 = load ptr, ptr %12, align 8, !dbg !766
  %129 = getelementptr inbounds %struct.redisLibeventEvents, ptr %128, i32 0, i32 0, !dbg !767
  %130 = load ptr, ptr %129, align 8, !dbg !767
  %131 = getelementptr inbounds %struct.redisAsyncContext, ptr %130, i32 0, i32 0, !dbg !768
  %132 = getelementptr inbounds %struct.redisContext, ptr %131, i32 0, i32 2, !dbg !769
  %133 = load i32, ptr %132, align 4, !dbg !769
  %134 = load ptr, ptr %12, align 8, !dbg !770
  %135 = call ptr @event_new(ptr noundef %127, i32 noundef %133, i16 noundef signext 18, ptr noundef @redisLibeventReadEvent, ptr noundef %134), !dbg !771
  %136 = load ptr, ptr %12, align 8, !dbg !772
  %137 = getelementptr inbounds %struct.redisLibeventEvents, ptr %136, i32 0, i32 4, !dbg !773
  store ptr %135, ptr %137, align 8, !dbg !774
  %138 = load ptr, ptr %12, align 8, !dbg !775
  %139 = getelementptr inbounds %struct.redisLibeventEvents, ptr %138, i32 0, i32 3, !dbg !776
  %140 = load ptr, ptr %139, align 8, !dbg !776
  %141 = load ptr, ptr %12, align 8, !dbg !777
  %142 = getelementptr inbounds %struct.redisLibeventEvents, ptr %141, i32 0, i32 0, !dbg !778
  %143 = load ptr, ptr %142, align 8, !dbg !778
  %144 = getelementptr inbounds %struct.redisAsyncContext, ptr %143, i32 0, i32 0, !dbg !779
  %145 = getelementptr inbounds %struct.redisContext, ptr %144, i32 0, i32 2, !dbg !780
  %146 = load i32, ptr %145, align 4, !dbg !780
  %147 = load ptr, ptr %12, align 8, !dbg !781
  %148 = call ptr @event_new(ptr noundef %140, i32 noundef %146, i16 noundef signext 4, ptr noundef @redisLibeventWriteEvent, ptr noundef %147), !dbg !782
  %149 = load ptr, ptr %12, align 8, !dbg !783
  %150 = getelementptr inbounds %struct.redisLibeventEvents, ptr %149, i32 0, i32 5, !dbg !784
  store ptr %148, ptr %150, align 8, !dbg !785
  %151 = load ptr, ptr %12, align 8, !dbg !786
  %152 = getelementptr inbounds %struct.redisLibeventEvents, ptr %151, i32 0, i32 4, !dbg !788
  %153 = load ptr, ptr %152, align 8, !dbg !788
  %154 = icmp eq ptr %153, null, !dbg !789
  br i1 %154, label %160, label %155, !dbg !790

155:                                              ; preds = %102
  %156 = load ptr, ptr %12, align 8, !dbg !791
  %157 = getelementptr inbounds %struct.redisLibeventEvents, ptr %156, i32 0, i32 5, !dbg !792
  %158 = load ptr, ptr %157, align 8, !dbg !792
  %159 = icmp eq ptr %158, null, !dbg !793
  br i1 %159, label %160, label %162, !dbg !794

160:                                              ; preds = %155, %102
  %161 = load ptr, ptr %12, align 8, !dbg !795
  call void @free(ptr noundef %161) #9, !dbg !797
  store ptr null, ptr %6, align 8, !dbg !798
  br label %201, !dbg !798

162:                                              ; preds = %155
  %163 = load ptr, ptr %12, align 8, !dbg !799
  %164 = getelementptr inbounds %struct.redisLibeventEvents, ptr %163, i32 0, i32 5, !dbg !800
  %165 = load ptr, ptr %164, align 8, !dbg !800
  %166 = call i32 @event_add(ptr noundef %165, ptr noundef null), !dbg !801
  %167 = load ptr, ptr %12, align 8, !dbg !802
  %168 = getelementptr inbounds %struct.redisLibeventEvents, ptr %167, i32 0, i32 7, !dbg !803
  store i32 1, ptr %168, align 4, !dbg !804
  %169 = load ptr, ptr %12, align 8, !dbg !805
  %170 = call i32 @redis_le_valid(ptr noundef %169), !dbg !807
  %171 = icmp ne i32 %170, 0, !dbg !807
  br i1 %171, label %172, label %185, !dbg !808

172:                                              ; preds = %162
  %173 = load ptr, ptr %10, align 8, !dbg !809
  %174 = icmp ne ptr %173, null, !dbg !809
  br i1 %174, label %175, label %185, !dbg !810

175:                                              ; preds = %172
  %176 = load ptr, ptr %13, align 8, !dbg !811
  %177 = load ptr, ptr %12, align 8, !dbg !814
  %178 = load ptr, ptr %10, align 8, !dbg !815
  %179 = call i32 (ptr, ptr, ptr, ptr, ...) @redisAsyncCommand(ptr noundef %176, ptr noundef null, ptr noundef %177, ptr noundef @.str.5, ptr noundef %178), !dbg !816
  %180 = icmp ne i32 %179, 0, !dbg !817
  br i1 %180, label %181, label %184, !dbg !818

181:                                              ; preds = %175
  %182 = load ptr, ptr %12, align 8, !dbg !819
  %183 = getelementptr inbounds %struct.redisLibeventEvents, ptr %182, i32 0, i32 1, !dbg !821
  store i32 1, ptr %183, align 8, !dbg !822
  br label %184, !dbg !823

184:                                              ; preds = %181, %175
  br label %185, !dbg !824

185:                                              ; preds = %184, %172, %162
  %186 = load ptr, ptr %12, align 8, !dbg !825
  %187 = call i32 @redis_le_valid(ptr noundef %186), !dbg !827
  %188 = icmp ne i32 %187, 0, !dbg !827
  br i1 %188, label %189, label %199, !dbg !828

189:                                              ; preds = %185
  %190 = load ptr, ptr %13, align 8, !dbg !829
  %191 = load ptr, ptr %12, align 8, !dbg !832
  %192 = load i32, ptr %11, align 4, !dbg !833
  %193 = call i32 (ptr, ptr, ptr, ptr, ...) @redisAsyncCommand(ptr noundef %190, ptr noundef null, ptr noundef %191, ptr noundef @.str.6, i32 noundef %192), !dbg !834
  %194 = icmp ne i32 %193, 0, !dbg !835
  br i1 %194, label %195, label %198, !dbg !836

195:                                              ; preds = %189
  %196 = load ptr, ptr %12, align 8, !dbg !837
  %197 = getelementptr inbounds %struct.redisLibeventEvents, ptr %196, i32 0, i32 1, !dbg !839
  store i32 1, ptr %197, align 8, !dbg !840
  br label %198, !dbg !841

198:                                              ; preds = %195, %189
  br label %199, !dbg !842

199:                                              ; preds = %198, %185
  %200 = load ptr, ptr %12, align 8, !dbg !843
  store ptr %200, ptr %6, align 8, !dbg !844
  br label %201, !dbg !844

201:                                              ; preds = %199, %160, %67
  %202 = load ptr, ptr %6, align 8, !dbg !845
  ret ptr %202, !dbg !845
}

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #2

declare ptr @redisAsyncConnect(ptr noundef, i32 noundef) #5

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redisLibeventAddRead(ptr noundef %0) #0 !dbg !846 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !847, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.declare(metadata ptr %3, metadata !849, metadata !DIExpression()), !dbg !850
  %4 = load ptr, ptr %2, align 8, !dbg !851
  store ptr %4, ptr %3, align 8, !dbg !850
  %5 = load ptr, ptr %3, align 8, !dbg !852
  %6 = icmp ne ptr %5, null, !dbg !852
  br i1 %6, label %7, label %24, !dbg !854

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !855
  %9 = getelementptr inbounds %struct.redisLibeventEvents, ptr %8, i32 0, i32 4, !dbg !856
  %10 = load ptr, ptr %9, align 8, !dbg !856
  %11 = icmp ne ptr %10, null, !dbg !857
  br i1 %11, label %12, label %24, !dbg !858

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !dbg !859
  %14 = getelementptr inbounds %struct.redisLibeventEvents, ptr %13, i32 0, i32 6, !dbg !860
  %15 = load i32, ptr %14, align 8, !dbg !860
  %16 = icmp ne i32 %15, 0, !dbg !861
  br i1 %16, label %24, label %17, !dbg !862

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8, !dbg !863
  %19 = getelementptr inbounds %struct.redisLibeventEvents, ptr %18, i32 0, i32 4, !dbg !865
  %20 = load ptr, ptr %19, align 8, !dbg !865
  %21 = call i32 @event_add(ptr noundef %20, ptr noundef null), !dbg !866
  %22 = load ptr, ptr %3, align 8, !dbg !867
  %23 = getelementptr inbounds %struct.redisLibeventEvents, ptr %22, i32 0, i32 6, !dbg !868
  store i32 1, ptr %23, align 8, !dbg !869
  br label %24, !dbg !870

24:                                               ; preds = %17, %12, %7, %1
  ret void, !dbg !871
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redisLibeventDelRead(ptr noundef %0) #0 !dbg !872 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !873, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.declare(metadata ptr %3, metadata !875, metadata !DIExpression()), !dbg !876
  %4 = load ptr, ptr %2, align 8, !dbg !877
  store ptr %4, ptr %3, align 8, !dbg !876
  %5 = load ptr, ptr %3, align 8, !dbg !878
  %6 = icmp ne ptr %5, null, !dbg !878
  br i1 %6, label %7, label %24, !dbg !880

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !881
  %9 = getelementptr inbounds %struct.redisLibeventEvents, ptr %8, i32 0, i32 4, !dbg !882
  %10 = load ptr, ptr %9, align 8, !dbg !882
  %11 = icmp ne ptr %10, null, !dbg !881
  br i1 %11, label %12, label %24, !dbg !883

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !dbg !884
  %14 = getelementptr inbounds %struct.redisLibeventEvents, ptr %13, i32 0, i32 6, !dbg !885
  %15 = load i32, ptr %14, align 8, !dbg !885
  %16 = icmp ne i32 %15, 0, !dbg !884
  br i1 %16, label %17, label %24, !dbg !886

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8, !dbg !887
  %19 = getelementptr inbounds %struct.redisLibeventEvents, ptr %18, i32 0, i32 4, !dbg !889
  %20 = load ptr, ptr %19, align 8, !dbg !889
  %21 = call i32 @event_del(ptr noundef %20), !dbg !890
  %22 = load ptr, ptr %3, align 8, !dbg !891
  %23 = getelementptr inbounds %struct.redisLibeventEvents, ptr %22, i32 0, i32 6, !dbg !892
  store i32 0, ptr %23, align 8, !dbg !893
  br label %24, !dbg !894

24:                                               ; preds = %17, %12, %7, %1
  ret void, !dbg !895
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redisLibeventAddWrite(ptr noundef %0) #0 !dbg !896 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !897, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.declare(metadata ptr %3, metadata !899, metadata !DIExpression()), !dbg !900
  %4 = load ptr, ptr %2, align 8, !dbg !901
  store ptr %4, ptr %3, align 8, !dbg !900
  %5 = load ptr, ptr %3, align 8, !dbg !902
  %6 = icmp ne ptr %5, null, !dbg !902
  br i1 %6, label %7, label %24, !dbg !904

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !905
  %9 = getelementptr inbounds %struct.redisLibeventEvents, ptr %8, i32 0, i32 5, !dbg !906
  %10 = load ptr, ptr %9, align 8, !dbg !906
  %11 = icmp ne ptr %10, null, !dbg !907
  br i1 %11, label %12, label %24, !dbg !908

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !dbg !909
  %14 = getelementptr inbounds %struct.redisLibeventEvents, ptr %13, i32 0, i32 7, !dbg !910
  %15 = load i32, ptr %14, align 4, !dbg !910
  %16 = icmp ne i32 %15, 0, !dbg !911
  br i1 %16, label %24, label %17, !dbg !912

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8, !dbg !913
  %19 = getelementptr inbounds %struct.redisLibeventEvents, ptr %18, i32 0, i32 5, !dbg !915
  %20 = load ptr, ptr %19, align 8, !dbg !915
  %21 = call i32 @event_add(ptr noundef %20, ptr noundef null), !dbg !916
  %22 = load ptr, ptr %3, align 8, !dbg !917
  %23 = getelementptr inbounds %struct.redisLibeventEvents, ptr %22, i32 0, i32 7, !dbg !918
  store i32 1, ptr %23, align 4, !dbg !919
  br label %24, !dbg !920

24:                                               ; preds = %17, %12, %7, %1
  ret void, !dbg !921
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redisLibeventDelWrite(ptr noundef %0) #0 !dbg !922 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !923, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.declare(metadata ptr %3, metadata !925, metadata !DIExpression()), !dbg !926
  %4 = load ptr, ptr %2, align 8, !dbg !927
  store ptr %4, ptr %3, align 8, !dbg !926
  %5 = load ptr, ptr %3, align 8, !dbg !928
  %6 = icmp ne ptr %5, null, !dbg !928
  br i1 %6, label %7, label %24, !dbg !930

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !931
  %9 = getelementptr inbounds %struct.redisLibeventEvents, ptr %8, i32 0, i32 5, !dbg !932
  %10 = load ptr, ptr %9, align 8, !dbg !932
  %11 = icmp ne ptr %10, null, !dbg !931
  br i1 %11, label %12, label %24, !dbg !933

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !dbg !934
  %14 = getelementptr inbounds %struct.redisLibeventEvents, ptr %13, i32 0, i32 7, !dbg !935
  %15 = load i32, ptr %14, align 4, !dbg !935
  %16 = icmp ne i32 %15, 0, !dbg !934
  br i1 %16, label %17, label %24, !dbg !936

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8, !dbg !937
  %19 = getelementptr inbounds %struct.redisLibeventEvents, ptr %18, i32 0, i32 5, !dbg !939
  %20 = load ptr, ptr %19, align 8, !dbg !939
  %21 = call i32 @event_del(ptr noundef %20), !dbg !940
  %22 = load ptr, ptr %3, align 8, !dbg !941
  %23 = getelementptr inbounds %struct.redisLibeventEvents, ptr %22, i32 0, i32 7, !dbg !942
  store i32 0, ptr %23, align 4, !dbg !943
  br label %24, !dbg !944

24:                                               ; preds = %17, %12, %7, %1
  ret void, !dbg !945
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redisLibeventCleanup(ptr noundef %0) #0 !dbg !946 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !947, metadata !DIExpression()), !dbg !948
  %4 = load ptr, ptr %2, align 8, !dbg !949
  %5 = icmp ne ptr %4, null, !dbg !949
  br i1 %5, label %6, label %62, !dbg !951

6:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !952, metadata !DIExpression()), !dbg !954
  %7 = load ptr, ptr %2, align 8, !dbg !955
  store ptr %7, ptr %3, align 8, !dbg !954
  %8 = load ptr, ptr %3, align 8, !dbg !956
  %9 = getelementptr inbounds %struct.redisLibeventEvents, ptr %8, i32 0, i32 2, !dbg !958
  %10 = load i32, ptr %9, align 4, !dbg !958
  %11 = icmp ne i32 %10, 0, !dbg !956
  br i1 %11, label %12, label %61, !dbg !959

12:                                               ; preds = %6
  %13 = load ptr, ptr %3, align 8, !dbg !960
  %14 = getelementptr inbounds %struct.redisLibeventEvents, ptr %13, i32 0, i32 4, !dbg !963
  %15 = load ptr, ptr %14, align 8, !dbg !963
  %16 = icmp ne ptr %15, null, !dbg !960
  br i1 %16, label %17, label %33, !dbg !964

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8, !dbg !965
  %19 = getelementptr inbounds %struct.redisLibeventEvents, ptr %18, i32 0, i32 6, !dbg !968
  %20 = load i32, ptr %19, align 8, !dbg !968
  %21 = icmp ne i32 %20, 0, !dbg !965
  br i1 %21, label %22, label %27, !dbg !969

22:                                               ; preds = %17
  %23 = load ptr, ptr %3, align 8, !dbg !970
  %24 = getelementptr inbounds %struct.redisLibeventEvents, ptr %23, i32 0, i32 4, !dbg !971
  %25 = load ptr, ptr %24, align 8, !dbg !971
  %26 = call i32 @event_del(ptr noundef %25), !dbg !972
  br label %27, !dbg !972

27:                                               ; preds = %22, %17
  %28 = load ptr, ptr %3, align 8, !dbg !973
  %29 = getelementptr inbounds %struct.redisLibeventEvents, ptr %28, i32 0, i32 4, !dbg !974
  %30 = load ptr, ptr %29, align 8, !dbg !974
  call void @event_free(ptr noundef %30), !dbg !975
  %31 = load ptr, ptr %3, align 8, !dbg !976
  %32 = getelementptr inbounds %struct.redisLibeventEvents, ptr %31, i32 0, i32 4, !dbg !977
  store ptr null, ptr %32, align 8, !dbg !978
  br label %33, !dbg !979

33:                                               ; preds = %27, %12
  %34 = load ptr, ptr %3, align 8, !dbg !980
  %35 = getelementptr inbounds %struct.redisLibeventEvents, ptr %34, i32 0, i32 6, !dbg !981
  store i32 0, ptr %35, align 8, !dbg !982
  %36 = load ptr, ptr %3, align 8, !dbg !983
  %37 = getelementptr inbounds %struct.redisLibeventEvents, ptr %36, i32 0, i32 5, !dbg !985
  %38 = load ptr, ptr %37, align 8, !dbg !985
  %39 = icmp ne ptr %38, null, !dbg !983
  br i1 %39, label %40, label %56, !dbg !986

40:                                               ; preds = %33
  %41 = load ptr, ptr %3, align 8, !dbg !987
  %42 = getelementptr inbounds %struct.redisLibeventEvents, ptr %41, i32 0, i32 7, !dbg !990
  %43 = load i32, ptr %42, align 4, !dbg !990
  %44 = icmp ne i32 %43, 0, !dbg !987
  br i1 %44, label %45, label %50, !dbg !991

45:                                               ; preds = %40
  %46 = load ptr, ptr %3, align 8, !dbg !992
  %47 = getelementptr inbounds %struct.redisLibeventEvents, ptr %46, i32 0, i32 5, !dbg !993
  %48 = load ptr, ptr %47, align 8, !dbg !993
  %49 = call i32 @event_del(ptr noundef %48), !dbg !994
  br label %50, !dbg !994

50:                                               ; preds = %45, %40
  %51 = load ptr, ptr %3, align 8, !dbg !995
  %52 = getelementptr inbounds %struct.redisLibeventEvents, ptr %51, i32 0, i32 5, !dbg !996
  %53 = load ptr, ptr %52, align 8, !dbg !996
  call void @event_free(ptr noundef %53), !dbg !997
  %54 = load ptr, ptr %3, align 8, !dbg !998
  %55 = getelementptr inbounds %struct.redisLibeventEvents, ptr %54, i32 0, i32 5, !dbg !999
  store ptr null, ptr %55, align 8, !dbg !1000
  br label %56, !dbg !1001

56:                                               ; preds = %50, %33
  %57 = load ptr, ptr %3, align 8, !dbg !1002
  %58 = getelementptr inbounds %struct.redisLibeventEvents, ptr %57, i32 0, i32 7, !dbg !1003
  store i32 0, ptr %58, align 4, !dbg !1004
  %59 = load ptr, ptr %3, align 8, !dbg !1005
  %60 = getelementptr inbounds %struct.redisLibeventEvents, ptr %59, i32 0, i32 0, !dbg !1006
  store ptr null, ptr %60, align 8, !dbg !1007
  br label %61, !dbg !1008

61:                                               ; preds = %56, %6
  br label %62, !dbg !1009

62:                                               ; preds = %61, %1
  ret void, !dbg !1010
}

declare ptr @event_new(ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redisLibeventReadEvent(i32 noundef %0, i16 noundef signext %1, ptr noundef %2) #0 !dbg !1011 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1015, metadata !DIExpression()), !dbg !1016
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1017, metadata !DIExpression()), !dbg !1018
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1019, metadata !DIExpression()), !dbg !1020
  %10 = load i32, ptr %4, align 4, !dbg !1021
  %11 = load i16, ptr %5, align 2, !dbg !1022
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1023, metadata !DIExpression()), !dbg !1024
  %12 = load ptr, ptr %6, align 8, !dbg !1025
  store ptr %12, ptr %7, align 8, !dbg !1024
  %13 = load ptr, ptr %7, align 8, !dbg !1026
  %14 = call i32 @redis_le_valid(ptr noundef %13), !dbg !1028
  %15 = icmp ne i32 %14, 0, !dbg !1028
  br i1 %15, label %16, label %48, !dbg !1029

16:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1030, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1034, metadata !DIExpression()), !dbg !1035
  store i32 0, ptr %9, align 4, !dbg !1035
  br label %17, !dbg !1036

17:                                               ; preds = %29, %16
  %18 = load i32, ptr %4, align 4, !dbg !1037
  %19 = getelementptr inbounds [8 x i8], ptr %8, i64 0, i64 0, !dbg !1039
  %20 = call i64 @recv(i32 noundef %18, ptr noundef %19, i64 noundef 8, i32 noundef 2), !dbg !1040
  %21 = trunc i64 %20 to i32, !dbg !1040
  store i32 %21, ptr %9, align 4, !dbg !1041
  br label %22, !dbg !1042

22:                                               ; preds = %17
  %23 = load i32, ptr %9, align 4, !dbg !1043
  %24 = icmp slt i32 %23, 0, !dbg !1044
  br i1 %24, label %25, label %29, !dbg !1045

25:                                               ; preds = %22
  %26 = call ptr @__errno_location() #12, !dbg !1046
  %27 = load i32, ptr %26, align 4, !dbg !1046
  %28 = icmp eq i32 %27, 4, !dbg !1047
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ], !dbg !1048
  br i1 %30, label %17, label %31, !dbg !1042, !llvm.loop !1049

31:                                               ; preds = %29
  %32 = load i32, ptr %9, align 4, !dbg !1052
  %33 = icmp slt i32 %32, 1, !dbg !1054
  br i1 %33, label %34, label %39, !dbg !1055

34:                                               ; preds = %31
  %35 = load ptr, ptr %7, align 8, !dbg !1056
  %36 = getelementptr inbounds %struct.redisLibeventEvents, ptr %35, i32 0, i32 1, !dbg !1058
  store i32 1, ptr %36, align 8, !dbg !1059
  %37 = load ptr, ptr %7, align 8, !dbg !1060
  %38 = ptrtoint ptr %37 to i64, !dbg !1061
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef @__FUNCTION__.redisLibeventReadEvent, i64 noundef %38), !dbg !1062
  br label %39, !dbg !1063

39:                                               ; preds = %34, %31
  %40 = load ptr, ptr %7, align 8, !dbg !1064
  %41 = call i32 @redis_le_valid(ptr noundef %40), !dbg !1066
  %42 = icmp ne i32 %41, 0, !dbg !1066
  br i1 %42, label %43, label %47, !dbg !1067

43:                                               ; preds = %39
  %44 = load ptr, ptr %7, align 8, !dbg !1068
  %45 = getelementptr inbounds %struct.redisLibeventEvents, ptr %44, i32 0, i32 0, !dbg !1070
  %46 = load ptr, ptr %45, align 8, !dbg !1070
  call void @redisAsyncHandleRead(ptr noundef %46), !dbg !1071
  br label %47, !dbg !1072

47:                                               ; preds = %43, %39
  br label %50, !dbg !1073

48:                                               ; preds = %3
  %49 = load ptr, ptr %7, align 8, !dbg !1074
  call void @redis_reconnect(ptr noundef %49), !dbg !1076
  br label %50

50:                                               ; preds = %48, %47
  ret void, !dbg !1077
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redisLibeventWriteEvent(i32 noundef %0, i16 noundef signext %1, ptr noundef %2) #0 !dbg !1078 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1079, metadata !DIExpression()), !dbg !1080
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1081, metadata !DIExpression()), !dbg !1082
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1083, metadata !DIExpression()), !dbg !1084
  %8 = load i32, ptr %4, align 4, !dbg !1085
  %9 = load i16, ptr %5, align 2, !dbg !1086
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1087, metadata !DIExpression()), !dbg !1088
  %10 = load ptr, ptr %6, align 8, !dbg !1089
  store ptr %10, ptr %7, align 8, !dbg !1088
  %11 = load ptr, ptr %7, align 8, !dbg !1090
  %12 = call i32 @redis_le_valid(ptr noundef %11), !dbg !1092
  %13 = icmp ne i32 %12, 0, !dbg !1092
  br i1 %13, label %14, label %18, !dbg !1093

14:                                               ; preds = %3
  %15 = load ptr, ptr %7, align 8, !dbg !1094
  %16 = getelementptr inbounds %struct.redisLibeventEvents, ptr %15, i32 0, i32 0, !dbg !1096
  %17 = load ptr, ptr %16, align 8, !dbg !1096
  call void @redisAsyncHandleWrite(ptr noundef %17), !dbg !1097
  br label %18, !dbg !1098

18:                                               ; preds = %14, %3
  ret void, !dbg !1099
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

declare i32 @event_add(ptr noundef, ptr noundef) #5

declare i32 @event_del(ptr noundef) #5

declare void @event_free(ptr noundef) #5

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #8

declare void @redisAsyncHandleRead(ptr noundef) #5

declare void @redisAsyncHandleWrite(ptr noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!60}
!llvm.module.flags = !{!277, !278, !279, !280, !281, !282, !283}
!llvm.ident = !{!284}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 208, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/apps/common/hiredis_libevent2.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c3ef14860ad3b5fc21bcf0eff3645448")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 7)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 209, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 3)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 48)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 176, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 22)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 10)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 14)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 289, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 8)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !25, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 38)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 184, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 23)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 377, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 34)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 377, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 16)
!60 = distinct !DICompileUnit(language: DW_LANG_C11, file: !61, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !62, retainedTypes: !100, globals: !276, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "/home/raj/coturn/src/apps/common/hiredis_libevent2.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "c3ef14860ad3b5fc21bcf0eff3645448")
!62 = !{!63, !69, !76}
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "redisConnectionType", file: !64, line: 111, baseType: !65, size: 32, elements: !66)
!64 = !DIFile(filename: "/usr/include/hiredis/hiredis.h", directory: "", checksumkind: CSK_MD5, checksum: "5e1762de74574e650d25f42de25117d4")
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "REDIS_CONN_TCP", value: 0)
!68 = !DIEnumerator(name: "REDIS_CONN_UNIX", value: 1)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 47, baseType: !65, size: 32, elements: !71)
!70 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!73 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!74 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!75 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 202, baseType: !65, size: 32, elements: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!79 = !DIEnumerator(name: "MSG_OOB", value: 1)
!80 = !DIEnumerator(name: "MSG_PEEK", value: 2)
!81 = !DIEnumerator(name: "MSG_DONTROUTE", value: 4)
!82 = !DIEnumerator(name: "MSG_CTRUNC", value: 8)
!83 = !DIEnumerator(name: "MSG_PROXY", value: 16)
!84 = !DIEnumerator(name: "MSG_TRUNC", value: 32)
!85 = !DIEnumerator(name: "MSG_DONTWAIT", value: 64)
!86 = !DIEnumerator(name: "MSG_EOR", value: 128)
!87 = !DIEnumerator(name: "MSG_WAITALL", value: 256)
!88 = !DIEnumerator(name: "MSG_FIN", value: 512)
!89 = !DIEnumerator(name: "MSG_SYN", value: 1024)
!90 = !DIEnumerator(name: "MSG_CONFIRM", value: 2048)
!91 = !DIEnumerator(name: "MSG_RST", value: 4096)
!92 = !DIEnumerator(name: "MSG_ERRQUEUE", value: 8192)
!93 = !DIEnumerator(name: "MSG_NOSIGNAL", value: 16384)
!94 = !DIEnumerator(name: "MSG_MORE", value: 32768)
!95 = !DIEnumerator(name: "MSG_WAITFORONE", value: 65536)
!96 = !DIEnumerator(name: "MSG_BATCH", value: 262144)
!97 = !DIEnumerator(name: "MSG_ZEROCOPY", value: 67108864)
!98 = !DIEnumerator(name: "MSG_FASTOPEN", value: 536870912)
!99 = !DIEnumerator(name: "MSG_CMSG_CLOEXEC", value: 1073741824)
!100 = !{!101, !136, !273, !123, !148, !274}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisLibeventEvents", file: !2, line: 47, size: 640, elements: !103)
!103 = !{!104, !257, !258, !259, !263, !266, !267, !268, !269, !270, !271, !272}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !102, file: !2, line: 49, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisAsyncContext", file: !107, line: 102, baseType: !108)
!107 = !DIFile(filename: "/usr/include/hiredis/async.h", directory: "", checksumkind: CSK_MD5, checksum: "5cb4b0c0e64a258568370922886d582b")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisAsyncContext", file: !107, line: 62, size: 2752, elements: !109)
!109 = !{!110, !207, !208, !209, !210, !219, !226, !229, !249}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !108, file: !107, line: 64, baseType: !111, size: 1664)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisContext", file: !64, line: 138, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisContext", file: !64, line: 117, size: 1664, elements: !113)
!113 = !{!114, !116, !120, !121, !122, !124, !185, !186, !197, !203}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !112, file: !64, line: 118, baseType: !115, size: 32)
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !112, file: !64, line: 119, baseType: !117, size: 1024, offset: 32)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !112, file: !64, line: 120, baseType: !115, size: 32, offset: 1056)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !64, line: 121, baseType: !115, size: 32, offset: 1088)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "obuf", scope: !112, file: !64, line: 122, baseType: !123, size: 64, offset: 1152)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !112, file: !64, line: 123, baseType: !125, size: 64, offset: 1216)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReader", file: !127, line: 95, baseType: !128)
!127 = !DIFile(filename: "/usr/include/hiredis/read.h", directory: "", checksumkind: CSK_MD5, checksum: "5e2fbb2b7092d07192fd3a67cc71e387")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReader", file: !127, line: 80, size: 4480, elements: !129)
!129 = !{!130, !131, !132, !133, !137, !138, !139, !154, !155, !156, !184}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !128, file: !127, line: 81, baseType: !115, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !128, file: !127, line: 82, baseType: !117, size: 1024, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !128, file: !127, line: 84, baseType: !123, size: 64, offset: 1088)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !128, file: !127, line: 85, baseType: !134, size: 64, offset: 1152)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !135, line: 46, baseType: !136)
!135 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!136 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !128, file: !127, line: 86, baseType: !134, size: 64, offset: 1216)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "maxbuf", scope: !128, file: !127, line: 87, baseType: !134, size: 64, offset: 1280)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "rstack", scope: !128, file: !127, line: 89, baseType: !140, size: 2880, offset: 1344)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 2880, elements: !152)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReadTask", file: !127, line: 70, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReadTask", file: !127, line: 63, size: 320, elements: !143)
!143 = !{!144, !145, !146, !147, !149, !151}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !127, line: 64, baseType: !115, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !142, file: !127, line: 65, baseType: !115, size: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !142, file: !127, line: 66, baseType: !115, size: 32, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !142, file: !127, line: 67, baseType: !148, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !142, file: !127, line: 68, baseType: !150, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !142, file: !127, line: 69, baseType: !148, size: 64, offset: 256)
!152 = !{!153}
!153 = !DISubrange(count: 9)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ridx", scope: !128, file: !127, line: 90, baseType: !115, size: 32, offset: 4224)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !128, file: !127, line: 91, baseType: !148, size: 64, offset: 4288)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !128, file: !127, line: 93, baseType: !157, size: 64, offset: 4352)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReplyObjectFunctions", file: !127, line: 78, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReplyObjectFunctions", file: !127, line: 72, size: 320, elements: !160)
!160 = !{!161, !167, !171, !176, !180}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "createString", scope: !159, file: !127, line: 73, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!148, !165, !123, !134}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "createArray", scope: !159, file: !127, line: 74, baseType: !168, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!148, !165, !115}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "createInteger", scope: !159, file: !127, line: 75, baseType: !172, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!148, !165, !175}
!175 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "createNil", scope: !159, file: !127, line: 76, baseType: !177, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!148, !165}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "freeObject", scope: !159, file: !127, line: 77, baseType: !181, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !148}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !128, file: !127, line: 94, baseType: !148, size: 64, offset: 4416)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !112, file: !64, line: 125, baseType: !63, size: 32, offset: 1280)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !112, file: !64, line: 126, baseType: !187, size: 64, offset: 1344)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !189, line: 8, size: 128, elements: !190)
!189 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!190 = !{!191, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !188, file: !189, line: 14, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !193, line: 160, baseType: !194)
!193 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!194 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !188, file: !189, line: 15, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !193, line: 162, baseType: !194)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !112, file: !64, line: 132, baseType: !198, size: 192, offset: 1408)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !112, file: !64, line: 128, size: 192, elements: !199)
!199 = !{!200, !201, !202}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !198, file: !64, line: 129, baseType: !123, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "source_addr", scope: !198, file: !64, line: 130, baseType: !123, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !198, file: !64, line: 131, baseType: !115, size: 32, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "unix_sock", scope: !112, file: !64, line: 136, baseType: !204, size: 64, offset: 1600)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !112, file: !64, line: 134, size: 64, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !204, file: !64, line: 135, baseType: !123, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !108, file: !107, line: 67, baseType: !115, size: 32, offset: 1664)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !108, file: !107, line: 68, baseType: !123, size: 64, offset: 1728)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !108, file: !107, line: 71, baseType: !148, size: 64, offset: 1792)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !108, file: !107, line: 84, baseType: !211, size: 384, offset: 1856)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !108, file: !107, line: 74, size: 384, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !211, file: !107, line: 75, baseType: !148, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "addRead", scope: !211, file: !107, line: 79, baseType: !181, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "delRead", scope: !211, file: !107, line: 80, baseType: !181, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "addWrite", scope: !211, file: !107, line: 81, baseType: !181, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "delWrite", scope: !211, file: !107, line: 82, baseType: !181, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !211, file: !107, line: 83, baseType: !181, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "onDisconnect", scope: !108, file: !107, line: 88, baseType: !220, size: 64, offset: 2240)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDisconnectCallback", file: !107, line: 58, baseType: !222)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !224, !115}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "onConnect", scope: !108, file: !107, line: 91, baseType: !227, size: 64, offset: 2304)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisConnectCallback", file: !107, line: 59, baseType: !222)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "replies", scope: !108, file: !107, line: 94, baseType: !230, size: 128, offset: 2368)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCallbackList", file: !107, line: 55, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCallbackList", file: !107, line: 53, size: 128, elements: !232)
!232 = !{!233, !248}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !231, file: !107, line: 54, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCallback", file: !107, line: 50, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCallback", file: !107, line: 45, size: 256, elements: !237)
!237 = !{!238, !240, !246, !247}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !107, line: 46, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !236, file: !107, line: 47, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCallbackFn", file: !107, line: 44, baseType: !243)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !245, !148, !148}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pending_subs", scope: !236, file: !107, line: 48, baseType: !115, size: 32, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !236, file: !107, line: 49, baseType: !148, size: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !231, file: !107, line: 54, baseType: !234, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !108, file: !107, line: 101, baseType: !250, size: 256, offset: 2496)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !108, file: !107, line: 97, size: 256, elements: !251)
!251 = !{!252, !253, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "invalid", scope: !250, file: !107, line: 98, baseType: !230, size: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !250, file: !107, line: 99, baseType: !254, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !107, line: 41, flags: DIFlagFwdDecl)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "patterns", scope: !250, file: !107, line: 100, baseType: !254, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "invalid", scope: !102, file: !2, line: 50, baseType: !115, size: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !102, file: !2, line: 51, baseType: !115, size: 32, offset: 96)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !102, file: !2, line: 52, baseType: !260, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !262, line: 217, flags: DIFlagFwdDecl)
!262 = !DIFile(filename: "/usr/include/event2/event.h", directory: "", checksumkind: CSK_MD5, checksum: "90db4fa73456052afa8984291985dfd5")
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !102, file: !2, line: 53, baseType: !264, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !262, line: 276, flags: DIFlagFwdDecl)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "wev", scope: !102, file: !2, line: 53, baseType: !264, size: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "rev_set", scope: !102, file: !2, line: 54, baseType: !115, size: 32, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "wev_set", scope: !102, file: !2, line: 54, baseType: !115, size: 32, offset: 352)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !102, file: !2, line: 55, baseType: !123, size: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !102, file: !2, line: 56, baseType: !115, size: 32, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !102, file: !2, line: 57, baseType: !123, size: 64, offset: 512)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !102, file: !2, line: 58, baseType: !115, size: 32, offset: 576)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "redis_context_handle", file: !275, line: 45, baseType: !148)
!275 = !DIFile(filename: "src/apps/common/hiredis_libevent2.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8bcf7d75479c12c7a6031a30f30ef1f7")
!276 = !{!0, !7, !12, !17, !23, !28, !33, !38, !40, !45, !50, !55}
!277 = !{i32 7, !"Dwarf Version", i32 5}
!278 = !{i32 2, !"Debug Info Version", i32 3}
!279 = !{i32 1, !"wchar_size", i32 4}
!280 = !{i32 8, !"PIC Level", i32 2}
!281 = !{i32 7, !"PIE Level", i32 2}
!282 = !{i32 7, !"uwtable", i32 2}
!283 = !{i32 7, !"frame-pointer", i32 2}
!284 = !{!"clang version 16.0.0"}
!285 = distinct !DISubprogram(name: "redis_async_init", scope: !2, file: !2, line: 173, type: !286, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !288)
!286 = !DISubroutineType(types: !287)
!287 = !{null}
!288 = !{}
!289 = !DILocation(line: 176, column: 1, scope: !285)
!290 = distinct !DISubprogram(name: "is_redis_asyncconn_good", scope: !2, file: !2, line: 178, type: !291, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !288)
!291 = !DISubroutineType(types: !292)
!292 = !{!115, !274}
!293 = !DILocalVariable(name: "rch", arg: 1, scope: !290, file: !2, line: 178, type: !274)
!294 = !DILocation(line: 178, column: 50, scope: !290)
!295 = !DILocation(line: 180, column: 5, scope: !296)
!296 = distinct !DILexicalBlock(scope: !290, file: !2, line: 180, column: 5)
!297 = !DILocation(line: 180, column: 5, scope: !290)
!298 = !DILocalVariable(name: "e", scope: !299, file: !2, line: 181, type: !101)
!299 = distinct !DILexicalBlock(scope: !296, file: !2, line: 180, column: 10)
!300 = !DILocation(line: 181, column: 31, scope: !299)
!301 = !DILocation(line: 181, column: 64, scope: !299)
!302 = !DILocation(line: 182, column: 21, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !2, line: 182, column: 6)
!304 = !DILocation(line: 182, column: 6, scope: !303)
!305 = !DILocation(line: 182, column: 6, scope: !299)
!306 = !DILocation(line: 183, column: 4, scope: !303)
!307 = !DILocation(line: 184, column: 2, scope: !299)
!308 = !DILocation(line: 185, column: 2, scope: !290)
!309 = !DILocation(line: 186, column: 1, scope: !290)
!310 = distinct !DISubprogram(name: "redis_le_valid", scope: !2, file: !2, line: 75, type: !311, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !288)
!311 = !DISubroutineType(types: !312)
!312 = !{!115, !101}
!313 = !DILocalVariable(name: "e", arg: 1, scope: !310, file: !2, line: 75, type: !101)
!314 = !DILocation(line: 75, column: 55, scope: !310)
!315 = !DILocation(line: 77, column: 10, scope: !310)
!316 = !DILocation(line: 77, column: 12, scope: !310)
!317 = !DILocation(line: 77, column: 17, scope: !310)
!318 = !DILocation(line: 77, column: 20, scope: !310)
!319 = !DILocation(line: 77, column: 16, scope: !310)
!320 = !DILocation(line: 77, column: 29, scope: !310)
!321 = !DILocation(line: 77, column: 33, scope: !310)
!322 = !DILocation(line: 77, column: 36, scope: !310)
!323 = !DILocation(line: 0, scope: !310)
!324 = !DILocation(line: 77, column: 2, scope: !310)
!325 = distinct !DISubprogram(name: "send_message_to_redis", scope: !2, file: !2, line: 188, type: !326, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !288)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !274, !273, !273, !273, null}
!328 = !DILocalVariable(name: "rch", arg: 1, scope: !325, file: !2, line: 188, type: !274)
!329 = !DILocation(line: 188, column: 49, scope: !325)
!330 = !DILocalVariable(name: "command", arg: 2, scope: !325, file: !2, line: 188, type: !273)
!331 = !DILocation(line: 188, column: 66, scope: !325)
!332 = !DILocalVariable(name: "key", arg: 3, scope: !325, file: !2, line: 188, type: !273)
!333 = !DILocation(line: 188, column: 87, scope: !325)
!334 = !DILocalVariable(name: "format", arg: 4, scope: !325, file: !2, line: 188, type: !273)
!335 = !DILocation(line: 188, column: 104, scope: !325)
!336 = !DILocation(line: 190, column: 6, scope: !337)
!337 = distinct !DILexicalBlock(scope: !325, file: !2, line: 190, column: 5)
!338 = !DILocation(line: 190, column: 5, scope: !325)
!339 = !DILocation(line: 191, column: 3, scope: !340)
!340 = distinct !DILexicalBlock(scope: !337, file: !2, line: 190, column: 11)
!341 = !DILocalVariable(name: "e", scope: !342, file: !2, line: 194, type: !101)
!342 = distinct !DILexicalBlock(scope: !337, file: !2, line: 192, column: 9)
!343 = !DILocation(line: 194, column: 31, scope: !342)
!344 = !DILocation(line: 194, column: 64, scope: !342)
!345 = !DILocation(line: 196, column: 22, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !2, line: 196, column: 6)
!347 = !DILocation(line: 196, column: 7, scope: !346)
!348 = !DILocation(line: 196, column: 6, scope: !342)
!349 = !DILocation(line: 197, column: 20, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !2, line: 196, column: 26)
!351 = !DILocation(line: 197, column: 4, scope: !350)
!352 = !DILocation(line: 198, column: 3, scope: !350)
!353 = !DILocation(line: 200, column: 22, scope: !354)
!354 = distinct !DILexicalBlock(scope: !342, file: !2, line: 200, column: 6)
!355 = !DILocation(line: 200, column: 7, scope: !354)
!356 = !DILocation(line: 200, column: 6, scope: !342)
!357 = !DILocation(line: 202, column: 3, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !2, line: 200, column: 26)
!359 = !DILocalVariable(name: "ac", scope: !360, file: !2, line: 204, type: !105)
!360 = distinct !DILexicalBlock(scope: !354, file: !2, line: 202, column: 10)
!361 = !DILocation(line: 204, column: 23, scope: !360)
!362 = !DILocation(line: 204, column: 26, scope: !360)
!363 = !DILocation(line: 204, column: 29, scope: !360)
!364 = !DILocalVariable(name: "rm", scope: !360, file: !2, line: 206, type: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redis_message", file: !2, line: 63, size: 8208, elements: !366)
!366 = !{!367, !371}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !365, file: !2, line: 65, baseType: !368, size: 4104)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4104, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 513)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !365, file: !2, line: 66, baseType: !368, size: 4104, offset: 4104)
!372 = !DILocation(line: 206, column: 25, scope: !360)
!373 = !DILocation(line: 208, column: 16, scope: !360)
!374 = !DILocation(line: 208, column: 13, scope: !360)
!375 = !DILocation(line: 208, column: 53, scope: !360)
!376 = !DILocation(line: 208, column: 62, scope: !360)
!377 = !DILocation(line: 208, column: 4, scope: !360)
!378 = !DILocation(line: 209, column: 14, scope: !360)
!379 = !DILocation(line: 209, column: 11, scope: !360)
!380 = !DILocation(line: 209, column: 31, scope: !360)
!381 = !DILocation(line: 209, column: 28, scope: !360)
!382 = !DILocation(line: 209, column: 21, scope: !360)
!383 = !DILocation(line: 209, column: 20, scope: !360)
!384 = !DILocation(line: 209, column: 4, scope: !360)
!385 = !DILocalVariable(name: "args", scope: !360, file: !2, line: 211, type: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !387, line: 52, baseType: !388)
!387 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !389, line: 14, baseType: !390)
!389 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stdarg.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !391, baseType: !392)
!391 = !DIFile(filename: "src/apps/common/hiredis_libevent2.c", directory: "/home/raj/coturn")
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 192, elements: !399)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !394)
!394 = !{!395, !396, !397, !398}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !393, file: !391, line: 211, baseType: !65, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !393, file: !391, line: 211, baseType: !65, size: 32, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !393, file: !391, line: 211, baseType: !148, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !393, file: !391, line: 211, baseType: !148, size: 64, offset: 128)
!399 = !{!400}
!400 = !DISubrange(count: 1)
!401 = !DILocation(line: 211, column: 12, scope: !360)
!402 = !DILocation(line: 212, column: 4, scope: !360)
!403 = !DILocation(line: 213, column: 17, scope: !360)
!404 = !DILocation(line: 213, column: 14, scope: !360)
!405 = !DILocation(line: 213, column: 40, scope: !360)
!406 = !DILocation(line: 213, column: 48, scope: !360)
!407 = !DILocation(line: 213, column: 4, scope: !360)
!408 = !DILocation(line: 214, column: 4, scope: !360)
!409 = !DILocation(line: 216, column: 26, scope: !410)
!410 = distinct !DILexicalBlock(scope: !360, file: !2, line: 216, column: 7)
!411 = !DILocation(line: 216, column: 36, scope: !410)
!412 = !DILocation(line: 216, column: 42, scope: !410)
!413 = !DILocation(line: 216, column: 39, scope: !410)
!414 = !DILocation(line: 216, column: 53, scope: !410)
!415 = !DILocation(line: 216, column: 50, scope: !410)
!416 = !DILocation(line: 216, column: 8, scope: !410)
!417 = !DILocation(line: 216, column: 57, scope: !410)
!418 = !DILocation(line: 216, column: 7, scope: !360)
!419 = !DILocation(line: 217, column: 5, scope: !420)
!420 = distinct !DILexicalBlock(scope: !410, file: !2, line: 216, column: 70)
!421 = !DILocation(line: 217, column: 8, scope: !420)
!422 = !DILocation(line: 217, column: 16, scope: !420)
!423 = !DILocation(line: 218, column: 121, scope: !420)
!424 = !DILocation(line: 218, column: 106, scope: !420)
!425 = !DILocation(line: 218, column: 139, scope: !420)
!426 = !DILocation(line: 218, column: 124, scope: !420)
!427 = !DILocation(line: 218, column: 5, scope: !420)
!428 = !DILocation(line: 219, column: 4, scope: !420)
!429 = !DILocation(line: 222, column: 1, scope: !325)
!430 = distinct !DISubprogram(name: "redis_reconnect", scope: !2, file: !2, line: 303, type: !431, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !288)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !101}
!433 = !DILocalVariable(name: "e", arg: 1, scope: !430, file: !2, line: 303, type: !101)
!434 = !DILocation(line: 303, column: 57, scope: !430)
!435 = !DILocation(line: 305, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !430, file: !2, line: 305, column: 6)
!437 = !DILocation(line: 305, column: 9, scope: !436)
!438 = !DILocation(line: 305, column: 14, scope: !436)
!439 = !DILocation(line: 305, column: 17, scope: !436)
!440 = !DILocation(line: 305, column: 13, scope: !436)
!441 = !DILocation(line: 305, column: 6, scope: !430)
!442 = !DILocation(line: 306, column: 4, scope: !436)
!443 = !DILocation(line: 308, column: 7, scope: !444)
!444 = distinct !DILexicalBlock(scope: !430, file: !2, line: 308, column: 7)
!445 = !DILocation(line: 308, column: 10, scope: !444)
!446 = !DILocation(line: 308, column: 7, scope: !430)
!447 = !DILocation(line: 309, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !2, line: 309, column: 7)
!449 = distinct !DILexicalBlock(scope: !444, file: !2, line: 308, column: 15)
!450 = !DILocation(line: 309, column: 10, scope: !448)
!451 = !DILocation(line: 309, column: 7, scope: !449)
!452 = !DILocation(line: 310, column: 15, scope: !448)
!453 = !DILocation(line: 310, column: 18, scope: !448)
!454 = !DILocation(line: 310, column: 5, scope: !448)
!455 = !DILocation(line: 311, column: 15, scope: !449)
!456 = !DILocation(line: 311, column: 18, scope: !449)
!457 = !DILocation(line: 311, column: 4, scope: !449)
!458 = !DILocation(line: 312, column: 4, scope: !449)
!459 = !DILocation(line: 312, column: 7, scope: !449)
!460 = !DILocation(line: 312, column: 11, scope: !449)
!461 = !DILocation(line: 313, column: 3, scope: !449)
!462 = !DILocation(line: 314, column: 3, scope: !430)
!463 = !DILocation(line: 314, column: 6, scope: !430)
!464 = !DILocation(line: 314, column: 14, scope: !430)
!465 = !DILocation(line: 316, column: 7, scope: !466)
!466 = distinct !DILexicalBlock(scope: !430, file: !2, line: 316, column: 7)
!467 = !DILocation(line: 316, column: 10, scope: !466)
!468 = !DILocation(line: 316, column: 7, scope: !430)
!469 = !DILocation(line: 317, column: 7, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !2, line: 317, column: 7)
!471 = distinct !DILexicalBlock(scope: !466, file: !2, line: 316, column: 15)
!472 = !DILocation(line: 317, column: 10, scope: !470)
!473 = !DILocation(line: 317, column: 7, scope: !471)
!474 = !DILocation(line: 318, column: 15, scope: !470)
!475 = !DILocation(line: 318, column: 18, scope: !470)
!476 = !DILocation(line: 318, column: 5, scope: !470)
!477 = !DILocation(line: 319, column: 15, scope: !471)
!478 = !DILocation(line: 319, column: 18, scope: !471)
!479 = !DILocation(line: 319, column: 4, scope: !471)
!480 = !DILocation(line: 320, column: 4, scope: !471)
!481 = !DILocation(line: 320, column: 7, scope: !471)
!482 = !DILocation(line: 320, column: 11, scope: !471)
!483 = !DILocation(line: 321, column: 3, scope: !471)
!484 = !DILocation(line: 322, column: 3, scope: !430)
!485 = !DILocation(line: 322, column: 6, scope: !430)
!486 = !DILocation(line: 322, column: 14, scope: !430)
!487 = !DILocalVariable(name: "ac", scope: !430, file: !2, line: 324, type: !105)
!488 = !DILocation(line: 324, column: 22, scope: !430)
!489 = !DILocation(line: 326, column: 6, scope: !490)
!490 = distinct !DILexicalBlock(scope: !430, file: !2, line: 326, column: 6)
!491 = !DILocation(line: 326, column: 9, scope: !490)
!492 = !DILocation(line: 326, column: 6, scope: !430)
!493 = !DILocation(line: 327, column: 4, scope: !494)
!494 = distinct !DILexicalBlock(scope: !490, file: !2, line: 326, column: 18)
!495 = !DILocation(line: 327, column: 7, scope: !494)
!496 = !DILocation(line: 327, column: 15, scope: !494)
!497 = !DILocation(line: 328, column: 3, scope: !494)
!498 = !DILocation(line: 330, column: 26, scope: !430)
!499 = !DILocation(line: 330, column: 29, scope: !430)
!500 = !DILocation(line: 330, column: 33, scope: !430)
!501 = !DILocation(line: 330, column: 36, scope: !430)
!502 = !DILocation(line: 330, column: 8, scope: !430)
!503 = !DILocation(line: 330, column: 6, scope: !430)
!504 = !DILocation(line: 331, column: 7, scope: !505)
!505 = distinct !DILexicalBlock(scope: !430, file: !2, line: 331, column: 6)
!506 = !DILocation(line: 331, column: 6, scope: !430)
!507 = !DILocation(line: 332, column: 4, scope: !508)
!508 = distinct !DILexicalBlock(scope: !505, file: !2, line: 331, column: 11)
!509 = !DILocation(line: 335, column: 16, scope: !430)
!510 = !DILocation(line: 335, column: 3, scope: !430)
!511 = !DILocation(line: 335, column: 6, scope: !430)
!512 = !DILocation(line: 335, column: 14, scope: !430)
!513 = !DILocation(line: 338, column: 3, scope: !430)
!514 = !DILocation(line: 338, column: 7, scope: !430)
!515 = !DILocation(line: 338, column: 10, scope: !430)
!516 = !DILocation(line: 338, column: 18, scope: !430)
!517 = !DILocation(line: 339, column: 3, scope: !430)
!518 = !DILocation(line: 339, column: 7, scope: !430)
!519 = !DILocation(line: 339, column: 10, scope: !430)
!520 = !DILocation(line: 339, column: 18, scope: !430)
!521 = !DILocation(line: 340, column: 3, scope: !430)
!522 = !DILocation(line: 340, column: 7, scope: !430)
!523 = !DILocation(line: 340, column: 10, scope: !430)
!524 = !DILocation(line: 340, column: 19, scope: !430)
!525 = !DILocation(line: 341, column: 3, scope: !430)
!526 = !DILocation(line: 341, column: 7, scope: !430)
!527 = !DILocation(line: 341, column: 10, scope: !430)
!528 = !DILocation(line: 341, column: 19, scope: !430)
!529 = !DILocation(line: 342, column: 3, scope: !430)
!530 = !DILocation(line: 342, column: 7, scope: !430)
!531 = !DILocation(line: 342, column: 10, scope: !430)
!532 = !DILocation(line: 342, column: 18, scope: !430)
!533 = !DILocation(line: 344, column: 17, scope: !430)
!534 = !DILocation(line: 344, column: 3, scope: !430)
!535 = !DILocation(line: 344, column: 7, scope: !430)
!536 = !DILocation(line: 344, column: 10, scope: !430)
!537 = !DILocation(line: 344, column: 15, scope: !430)
!538 = !DILocation(line: 347, column: 22, scope: !430)
!539 = !DILocation(line: 347, column: 25, scope: !430)
!540 = !DILocation(line: 347, column: 30, scope: !430)
!541 = !DILocation(line: 347, column: 33, scope: !430)
!542 = !DILocation(line: 347, column: 42, scope: !430)
!543 = !DILocation(line: 347, column: 44, scope: !430)
!544 = !DILocation(line: 349, column: 10, scope: !430)
!545 = !DILocation(line: 347, column: 12, scope: !430)
!546 = !DILocation(line: 347, column: 3, scope: !430)
!547 = !DILocation(line: 347, column: 6, scope: !430)
!548 = !DILocation(line: 347, column: 10, scope: !430)
!549 = !DILocation(line: 351, column: 22, scope: !430)
!550 = !DILocation(line: 351, column: 25, scope: !430)
!551 = !DILocation(line: 351, column: 30, scope: !430)
!552 = !DILocation(line: 351, column: 33, scope: !430)
!553 = !DILocation(line: 351, column: 42, scope: !430)
!554 = !DILocation(line: 351, column: 44, scope: !430)
!555 = !DILocation(line: 353, column: 10, scope: !430)
!556 = !DILocation(line: 351, column: 12, scope: !430)
!557 = !DILocation(line: 351, column: 3, scope: !430)
!558 = !DILocation(line: 351, column: 6, scope: !430)
!559 = !DILocation(line: 351, column: 10, scope: !430)
!560 = !DILocation(line: 355, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !430, file: !2, line: 355, column: 7)
!562 = !DILocation(line: 355, column: 10, scope: !561)
!563 = !DILocation(line: 355, column: 14, scope: !561)
!564 = !DILocation(line: 355, column: 22, scope: !561)
!565 = !DILocation(line: 355, column: 25, scope: !561)
!566 = !DILocation(line: 355, column: 28, scope: !561)
!567 = !DILocation(line: 355, column: 32, scope: !561)
!568 = !DILocation(line: 355, column: 7, scope: !430)
!569 = !DILocation(line: 356, column: 4, scope: !570)
!570 = distinct !DILexicalBlock(scope: !561, file: !2, line: 355, column: 41)
!571 = !DILocation(line: 359, column: 13, scope: !430)
!572 = !DILocation(line: 359, column: 16, scope: !430)
!573 = !DILocation(line: 359, column: 3, scope: !430)
!574 = !DILocation(line: 360, column: 3, scope: !430)
!575 = !DILocation(line: 360, column: 6, scope: !430)
!576 = !DILocation(line: 360, column: 14, scope: !430)
!577 = !DILocation(line: 361, column: 3, scope: !430)
!578 = !DILocation(line: 361, column: 6, scope: !430)
!579 = !DILocation(line: 361, column: 14, scope: !430)
!580 = !DILocation(line: 364, column: 21, scope: !581)
!581 = distinct !DILexicalBlock(scope: !430, file: !2, line: 364, column: 6)
!582 = !DILocation(line: 364, column: 6, scope: !581)
!583 = !DILocation(line: 364, column: 24, scope: !581)
!584 = !DILocation(line: 364, column: 27, scope: !581)
!585 = !DILocation(line: 364, column: 30, scope: !581)
!586 = !DILocation(line: 364, column: 6, scope: !430)
!587 = !DILocation(line: 365, column: 25, scope: !588)
!588 = distinct !DILexicalBlock(scope: !589, file: !2, line: 365, column: 7)
!589 = distinct !DILexicalBlock(scope: !581, file: !2, line: 364, column: 35)
!590 = !DILocation(line: 365, column: 35, scope: !588)
!591 = !DILocation(line: 365, column: 49, scope: !588)
!592 = !DILocation(line: 365, column: 52, scope: !588)
!593 = !DILocation(line: 365, column: 7, scope: !588)
!594 = !DILocation(line: 365, column: 56, scope: !588)
!595 = !DILocation(line: 365, column: 7, scope: !589)
!596 = !DILocation(line: 366, column: 5, scope: !597)
!597 = distinct !DILexicalBlock(scope: !588, file: !2, line: 365, column: 68)
!598 = !DILocation(line: 366, column: 8, scope: !597)
!599 = !DILocation(line: 366, column: 16, scope: !597)
!600 = !DILocation(line: 367, column: 4, scope: !597)
!601 = !DILocation(line: 368, column: 3, scope: !589)
!602 = !DILocation(line: 370, column: 21, scope: !603)
!603 = distinct !DILexicalBlock(scope: !430, file: !2, line: 370, column: 6)
!604 = !DILocation(line: 370, column: 6, scope: !603)
!605 = !DILocation(line: 370, column: 6, scope: !430)
!606 = !DILocation(line: 371, column: 25, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !2, line: 371, column: 7)
!608 = distinct !DILexicalBlock(scope: !603, file: !2, line: 370, column: 25)
!609 = !DILocation(line: 371, column: 35, scope: !607)
!610 = !DILocation(line: 371, column: 51, scope: !607)
!611 = !DILocation(line: 371, column: 54, scope: !607)
!612 = !DILocation(line: 371, column: 7, scope: !607)
!613 = !DILocation(line: 371, column: 57, scope: !607)
!614 = !DILocation(line: 371, column: 7, scope: !608)
!615 = !DILocation(line: 372, column: 5, scope: !616)
!616 = distinct !DILexicalBlock(scope: !607, file: !2, line: 371, column: 69)
!617 = !DILocation(line: 372, column: 8, scope: !616)
!618 = !DILocation(line: 372, column: 16, scope: !616)
!619 = !DILocation(line: 373, column: 4, scope: !616)
!620 = !DILocation(line: 374, column: 3, scope: !608)
!621 = !DILocation(line: 376, column: 21, scope: !622)
!622 = distinct !DILexicalBlock(scope: !430, file: !2, line: 376, column: 6)
!623 = !DILocation(line: 376, column: 6, scope: !622)
!624 = !DILocation(line: 376, column: 6, scope: !430)
!625 = !DILocation(line: 377, column: 4, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !2, line: 376, column: 25)
!627 = !DILocation(line: 378, column: 3, scope: !626)
!628 = !DILocation(line: 379, column: 1, scope: !430)
!629 = distinct !DISubprogram(name: "redisLibeventAttach", scope: !2, file: !2, line: 226, type: !630, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !288)
!630 = !DISubroutineType(types: !631)
!631 = !{!274, !260, !123, !115, !123, !115}
!632 = !DILocalVariable(name: "base", arg: 1, scope: !629, file: !2, line: 226, type: !260)
!633 = !DILocation(line: 226, column: 61, scope: !629)
!634 = !DILocalVariable(name: "ip0", arg: 2, scope: !629, file: !2, line: 226, type: !123)
!635 = !DILocation(line: 226, column: 73, scope: !629)
!636 = !DILocalVariable(name: "port0", arg: 3, scope: !629, file: !2, line: 226, type: !115)
!637 = !DILocation(line: 226, column: 82, scope: !629)
!638 = !DILocalVariable(name: "pwd", arg: 4, scope: !629, file: !2, line: 226, type: !123)
!639 = !DILocation(line: 226, column: 95, scope: !629)
!640 = !DILocalVariable(name: "db", arg: 5, scope: !629, file: !2, line: 226, type: !115)
!641 = !DILocation(line: 226, column: 104, scope: !629)
!642 = !DILocalVariable(name: "e", scope: !629, file: !2, line: 229, type: !101)
!643 = !DILocation(line: 229, column: 31, scope: !629)
!644 = !DILocalVariable(name: "ac", scope: !629, file: !2, line: 230, type: !105)
!645 = !DILocation(line: 230, column: 22, scope: !629)
!646 = !DILocalVariable(name: "ip", scope: !629, file: !2, line: 232, type: !647)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 256)
!650 = !DILocation(line: 232, column: 8, scope: !629)
!651 = !DILocation(line: 233, column: 6, scope: !652)
!652 = distinct !DILexicalBlock(scope: !629, file: !2, line: 233, column: 6)
!653 = !DILocation(line: 233, column: 10, scope: !652)
!654 = !DILocation(line: 233, column: 13, scope: !652)
!655 = !DILocation(line: 233, column: 6, scope: !629)
!656 = !DILocation(line: 234, column: 4, scope: !652)
!657 = !DILocation(line: 234, column: 4, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !2, line: 234, column: 4)
!659 = distinct !DILexicalBlock(scope: !652, file: !2, line: 234, column: 4)
!660 = !DILocation(line: 234, column: 4, scope: !659)
!661 = !DILocalVariable(name: "szdst", scope: !662, file: !2, line: 234, type: !134)
!662 = distinct !DILexicalBlock(scope: !663, file: !2, line: 234, column: 4)
!663 = distinct !DILexicalBlock(scope: !664, file: !2, line: 234, column: 4)
!664 = distinct !DILexicalBlock(scope: !658, file: !2, line: 234, column: 4)
!665 = !DILocation(line: 234, column: 4, scope: !662)
!666 = !DILocation(line: 234, column: 4, scope: !664)
!667 = !DILocation(line: 236, column: 4, scope: !652)
!668 = !DILocation(line: 236, column: 4, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !2, line: 236, column: 4)
!670 = distinct !DILexicalBlock(scope: !652, file: !2, line: 236, column: 4)
!671 = !DILocation(line: 236, column: 4, scope: !670)
!672 = !DILocalVariable(name: "szdst", scope: !673, file: !2, line: 236, type: !134)
!673 = distinct !DILexicalBlock(scope: !674, file: !2, line: 236, column: 4)
!674 = distinct !DILexicalBlock(scope: !675, file: !2, line: 236, column: 4)
!675 = distinct !DILexicalBlock(scope: !669, file: !2, line: 236, column: 4)
!676 = !DILocation(line: 236, column: 4, scope: !673)
!677 = !DILocation(line: 236, column: 4, scope: !675)
!678 = !DILocalVariable(name: "port", scope: !629, file: !2, line: 238, type: !115)
!679 = !DILocation(line: 238, column: 7, scope: !629)
!680 = !DILocation(line: 239, column: 6, scope: !681)
!681 = distinct !DILexicalBlock(scope: !629, file: !2, line: 239, column: 6)
!682 = !DILocation(line: 239, column: 11, scope: !681)
!683 = !DILocation(line: 239, column: 6, scope: !629)
!684 = !DILocation(line: 240, column: 9, scope: !681)
!685 = !DILocation(line: 240, column: 8, scope: !681)
!686 = !DILocation(line: 240, column: 4, scope: !681)
!687 = !DILocation(line: 242, column: 26, scope: !629)
!688 = !DILocation(line: 242, column: 30, scope: !629)
!689 = !DILocation(line: 242, column: 8, scope: !629)
!690 = !DILocation(line: 242, column: 6, scope: !629)
!691 = !DILocation(line: 243, column: 8, scope: !692)
!692 = distinct !DILexicalBlock(scope: !629, file: !2, line: 243, column: 7)
!693 = !DILocation(line: 243, column: 7, scope: !629)
!694 = !DILocation(line: 244, column: 12, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !2, line: 243, column: 12)
!696 = !DILocation(line: 244, column: 37, scope: !695)
!697 = !DILocation(line: 244, column: 41, scope: !695)
!698 = !DILocation(line: 244, column: 49, scope: !695)
!699 = !DILocation(line: 244, column: 53, scope: !695)
!700 = !DILocation(line: 244, column: 55, scope: !695)
!701 = !DILocation(line: 244, column: 4, scope: !695)
!702 = !DILocation(line: 245, column: 4, scope: !695)
!703 = !DILocation(line: 249, column: 36, scope: !629)
!704 = !DILocation(line: 249, column: 5, scope: !629)
!705 = !DILocation(line: 250, column: 9, scope: !629)
!706 = !DILocation(line: 250, column: 3, scope: !629)
!707 = !DILocation(line: 252, column: 3, scope: !629)
!708 = !DILocation(line: 252, column: 6, scope: !629)
!709 = !DILocation(line: 252, column: 16, scope: !629)
!710 = !DILocation(line: 253, column: 16, scope: !629)
!711 = !DILocation(line: 253, column: 3, scope: !629)
!712 = !DILocation(line: 253, column: 6, scope: !629)
!713 = !DILocation(line: 253, column: 14, scope: !629)
!714 = !DILocation(line: 254, column: 13, scope: !629)
!715 = !DILocation(line: 254, column: 3, scope: !629)
!716 = !DILocation(line: 254, column: 6, scope: !629)
!717 = !DILocation(line: 254, column: 11, scope: !629)
!718 = !DILocation(line: 255, column: 18, scope: !629)
!719 = !DILocation(line: 255, column: 11, scope: !629)
!720 = !DILocation(line: 255, column: 3, scope: !629)
!721 = !DILocation(line: 255, column: 6, scope: !629)
!722 = !DILocation(line: 255, column: 9, scope: !629)
!723 = !DILocation(line: 256, column: 13, scope: !629)
!724 = !DILocation(line: 256, column: 3, scope: !629)
!725 = !DILocation(line: 256, column: 6, scope: !629)
!726 = !DILocation(line: 256, column: 11, scope: !629)
!727 = !DILocation(line: 257, column: 6, scope: !728)
!728 = distinct !DILexicalBlock(scope: !629, file: !2, line: 257, column: 6)
!729 = !DILocation(line: 257, column: 6, scope: !629)
!730 = !DILocation(line: 258, column: 20, scope: !728)
!731 = !DILocation(line: 258, column: 13, scope: !728)
!732 = !DILocation(line: 258, column: 4, scope: !728)
!733 = !DILocation(line: 258, column: 7, scope: !728)
!734 = !DILocation(line: 258, column: 11, scope: !728)
!735 = !DILocation(line: 259, column: 11, scope: !629)
!736 = !DILocation(line: 259, column: 3, scope: !629)
!737 = !DILocation(line: 259, column: 6, scope: !629)
!738 = !DILocation(line: 259, column: 9, scope: !629)
!739 = !DILocation(line: 262, column: 3, scope: !629)
!740 = !DILocation(line: 262, column: 7, scope: !629)
!741 = !DILocation(line: 262, column: 10, scope: !629)
!742 = !DILocation(line: 262, column: 18, scope: !629)
!743 = !DILocation(line: 263, column: 3, scope: !629)
!744 = !DILocation(line: 263, column: 7, scope: !629)
!745 = !DILocation(line: 263, column: 10, scope: !629)
!746 = !DILocation(line: 263, column: 18, scope: !629)
!747 = !DILocation(line: 264, column: 3, scope: !629)
!748 = !DILocation(line: 264, column: 7, scope: !629)
!749 = !DILocation(line: 264, column: 10, scope: !629)
!750 = !DILocation(line: 264, column: 19, scope: !629)
!751 = !DILocation(line: 265, column: 3, scope: !629)
!752 = !DILocation(line: 265, column: 7, scope: !629)
!753 = !DILocation(line: 265, column: 10, scope: !629)
!754 = !DILocation(line: 265, column: 19, scope: !629)
!755 = !DILocation(line: 266, column: 3, scope: !629)
!756 = !DILocation(line: 266, column: 7, scope: !629)
!757 = !DILocation(line: 266, column: 10, scope: !629)
!758 = !DILocation(line: 266, column: 18, scope: !629)
!759 = !DILocation(line: 268, column: 17, scope: !629)
!760 = !DILocation(line: 268, column: 3, scope: !629)
!761 = !DILocation(line: 268, column: 7, scope: !629)
!762 = !DILocation(line: 268, column: 10, scope: !629)
!763 = !DILocation(line: 268, column: 15, scope: !629)
!764 = !DILocation(line: 271, column: 22, scope: !629)
!765 = !DILocation(line: 271, column: 25, scope: !629)
!766 = !DILocation(line: 271, column: 30, scope: !629)
!767 = !DILocation(line: 271, column: 33, scope: !629)
!768 = !DILocation(line: 271, column: 42, scope: !629)
!769 = !DILocation(line: 271, column: 44, scope: !629)
!770 = !DILocation(line: 273, column: 10, scope: !629)
!771 = !DILocation(line: 271, column: 12, scope: !629)
!772 = !DILocation(line: 271, column: 3, scope: !629)
!773 = !DILocation(line: 271, column: 6, scope: !629)
!774 = !DILocation(line: 271, column: 10, scope: !629)
!775 = !DILocation(line: 275, column: 22, scope: !629)
!776 = !DILocation(line: 275, column: 25, scope: !629)
!777 = !DILocation(line: 275, column: 30, scope: !629)
!778 = !DILocation(line: 275, column: 33, scope: !629)
!779 = !DILocation(line: 275, column: 42, scope: !629)
!780 = !DILocation(line: 275, column: 44, scope: !629)
!781 = !DILocation(line: 277, column: 10, scope: !629)
!782 = !DILocation(line: 275, column: 12, scope: !629)
!783 = !DILocation(line: 275, column: 3, scope: !629)
!784 = !DILocation(line: 275, column: 6, scope: !629)
!785 = !DILocation(line: 275, column: 10, scope: !629)
!786 = !DILocation(line: 279, column: 7, scope: !787)
!787 = distinct !DILexicalBlock(scope: !629, file: !2, line: 279, column: 7)
!788 = !DILocation(line: 279, column: 10, scope: !787)
!789 = !DILocation(line: 279, column: 14, scope: !787)
!790 = !DILocation(line: 279, column: 22, scope: !787)
!791 = !DILocation(line: 279, column: 25, scope: !787)
!792 = !DILocation(line: 279, column: 28, scope: !787)
!793 = !DILocation(line: 279, column: 32, scope: !787)
!794 = !DILocation(line: 279, column: 7, scope: !629)
!795 = !DILocation(line: 280, column: 9, scope: !796)
!796 = distinct !DILexicalBlock(scope: !787, file: !2, line: 279, column: 41)
!797 = !DILocation(line: 280, column: 4, scope: !796)
!798 = !DILocation(line: 281, column: 4, scope: !796)
!799 = !DILocation(line: 284, column: 13, scope: !629)
!800 = !DILocation(line: 284, column: 16, scope: !629)
!801 = !DILocation(line: 284, column: 3, scope: !629)
!802 = !DILocation(line: 285, column: 3, scope: !629)
!803 = !DILocation(line: 285, column: 6, scope: !629)
!804 = !DILocation(line: 285, column: 14, scope: !629)
!805 = !DILocation(line: 288, column: 21, scope: !806)
!806 = distinct !DILexicalBlock(scope: !629, file: !2, line: 288, column: 6)
!807 = !DILocation(line: 288, column: 6, scope: !806)
!808 = !DILocation(line: 288, column: 24, scope: !806)
!809 = !DILocation(line: 288, column: 27, scope: !806)
!810 = !DILocation(line: 288, column: 6, scope: !629)
!811 = !DILocation(line: 289, column: 25, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !2, line: 289, column: 7)
!813 = distinct !DILexicalBlock(scope: !806, file: !2, line: 288, column: 32)
!814 = !DILocation(line: 289, column: 35, scope: !812)
!815 = !DILocation(line: 289, column: 49, scope: !812)
!816 = !DILocation(line: 289, column: 7, scope: !812)
!817 = !DILocation(line: 289, column: 53, scope: !812)
!818 = !DILocation(line: 289, column: 7, scope: !813)
!819 = !DILocation(line: 290, column: 5, scope: !820)
!820 = distinct !DILexicalBlock(scope: !812, file: !2, line: 289, column: 65)
!821 = !DILocation(line: 290, column: 8, scope: !820)
!822 = !DILocation(line: 290, column: 16, scope: !820)
!823 = !DILocation(line: 291, column: 4, scope: !820)
!824 = !DILocation(line: 292, column: 3, scope: !813)
!825 = !DILocation(line: 294, column: 21, scope: !826)
!826 = distinct !DILexicalBlock(scope: !629, file: !2, line: 294, column: 6)
!827 = !DILocation(line: 294, column: 6, scope: !826)
!828 = !DILocation(line: 294, column: 6, scope: !629)
!829 = !DILocation(line: 295, column: 25, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !2, line: 295, column: 7)
!831 = distinct !DILexicalBlock(scope: !826, file: !2, line: 294, column: 25)
!832 = !DILocation(line: 295, column: 35, scope: !830)
!833 = !DILocation(line: 295, column: 51, scope: !830)
!834 = !DILocation(line: 295, column: 7, scope: !830)
!835 = !DILocation(line: 295, column: 54, scope: !830)
!836 = !DILocation(line: 295, column: 7, scope: !831)
!837 = !DILocation(line: 296, column: 5, scope: !838)
!838 = distinct !DILexicalBlock(scope: !830, file: !2, line: 295, column: 66)
!839 = !DILocation(line: 296, column: 8, scope: !838)
!840 = !DILocation(line: 296, column: 16, scope: !838)
!841 = !DILocation(line: 297, column: 4, scope: !838)
!842 = !DILocation(line: 298, column: 3, scope: !831)
!843 = !DILocation(line: 300, column: 32, scope: !629)
!844 = !DILocation(line: 300, column: 3, scope: !629)
!845 = !DILocation(line: 301, column: 1, scope: !629)
!846 = distinct !DISubprogram(name: "redisLibeventAddRead", scope: !2, file: !2, line: 113, type: !182, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !288)
!847 = !DILocalVariable(name: "privdata", arg: 1, scope: !846, file: !2, line: 113, type: !148)
!848 = !DILocation(line: 113, column: 40, scope: !846)
!849 = !DILocalVariable(name: "e", scope: !846, file: !2, line: 114, type: !101)
!850 = !DILocation(line: 114, column: 31, scope: !846)
!851 = !DILocation(line: 114, column: 64, scope: !846)
!852 = !DILocation(line: 115, column: 6, scope: !853)
!853 = distinct !DILexicalBlock(scope: !846, file: !2, line: 115, column: 6)
!854 = !DILocation(line: 115, column: 8, scope: !853)
!855 = !DILocation(line: 115, column: 12, scope: !853)
!856 = !DILocation(line: 115, column: 15, scope: !853)
!857 = !DILocation(line: 115, column: 11, scope: !853)
!858 = !DILocation(line: 115, column: 20, scope: !853)
!859 = !DILocation(line: 115, column: 25, scope: !853)
!860 = !DILocation(line: 115, column: 28, scope: !853)
!861 = !DILocation(line: 115, column: 24, scope: !853)
!862 = !DILocation(line: 115, column: 6, scope: !846)
!863 = !DILocation(line: 116, column: 15, scope: !864)
!864 = distinct !DILexicalBlock(scope: !853, file: !2, line: 115, column: 38)
!865 = !DILocation(line: 116, column: 18, scope: !864)
!866 = !DILocation(line: 116, column: 5, scope: !864)
!867 = !DILocation(line: 117, column: 5, scope: !864)
!868 = !DILocation(line: 117, column: 8, scope: !864)
!869 = !DILocation(line: 117, column: 16, scope: !864)
!870 = !DILocation(line: 118, column: 3, scope: !864)
!871 = !DILocation(line: 119, column: 1, scope: !846)
!872 = distinct !DISubprogram(name: "redisLibeventDelRead", scope: !2, file: !2, line: 121, type: !182, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !288)
!873 = !DILocalVariable(name: "privdata", arg: 1, scope: !872, file: !2, line: 121, type: !148)
!874 = !DILocation(line: 121, column: 40, scope: !872)
!875 = !DILocalVariable(name: "e", scope: !872, file: !2, line: 122, type: !101)
!876 = !DILocation(line: 122, column: 33, scope: !872)
!877 = !DILocation(line: 122, column: 66, scope: !872)
!878 = !DILocation(line: 123, column: 8, scope: !879)
!879 = distinct !DILexicalBlock(scope: !872, file: !2, line: 123, column: 8)
!880 = !DILocation(line: 123, column: 10, scope: !879)
!881 = !DILocation(line: 123, column: 13, scope: !879)
!882 = !DILocation(line: 123, column: 16, scope: !879)
!883 = !DILocation(line: 123, column: 20, scope: !879)
!884 = !DILocation(line: 123, column: 23, scope: !879)
!885 = !DILocation(line: 123, column: 26, scope: !879)
!886 = !DILocation(line: 123, column: 8, scope: !872)
!887 = !DILocation(line: 124, column: 17, scope: !888)
!888 = distinct !DILexicalBlock(scope: !879, file: !2, line: 123, column: 35)
!889 = !DILocation(line: 124, column: 20, scope: !888)
!890 = !DILocation(line: 124, column: 7, scope: !888)
!891 = !DILocation(line: 125, column: 7, scope: !888)
!892 = !DILocation(line: 125, column: 10, scope: !888)
!893 = !DILocation(line: 125, column: 18, scope: !888)
!894 = !DILocation(line: 126, column: 5, scope: !888)
!895 = !DILocation(line: 127, column: 1, scope: !872)
!896 = distinct !DISubprogram(name: "redisLibeventAddWrite", scope: !2, file: !2, line: 129, type: !182, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !288)
!897 = !DILocalVariable(name: "privdata", arg: 1, scope: !896, file: !2, line: 129, type: !148)
!898 = !DILocation(line: 129, column: 41, scope: !896)
!899 = !DILocalVariable(name: "e", scope: !896, file: !2, line: 130, type: !101)
!900 = !DILocation(line: 130, column: 33, scope: !896)
!901 = !DILocation(line: 130, column: 66, scope: !896)
!902 = !DILocation(line: 131, column: 8, scope: !903)
!903 = distinct !DILexicalBlock(scope: !896, file: !2, line: 131, column: 8)
!904 = !DILocation(line: 131, column: 10, scope: !903)
!905 = !DILocation(line: 131, column: 14, scope: !903)
!906 = !DILocation(line: 131, column: 17, scope: !903)
!907 = !DILocation(line: 131, column: 13, scope: !903)
!908 = !DILocation(line: 131, column: 22, scope: !903)
!909 = !DILocation(line: 131, column: 27, scope: !903)
!910 = !DILocation(line: 131, column: 30, scope: !903)
!911 = !DILocation(line: 131, column: 26, scope: !903)
!912 = !DILocation(line: 131, column: 8, scope: !896)
!913 = !DILocation(line: 132, column: 17, scope: !914)
!914 = distinct !DILexicalBlock(scope: !903, file: !2, line: 131, column: 40)
!915 = !DILocation(line: 132, column: 20, scope: !914)
!916 = !DILocation(line: 132, column: 7, scope: !914)
!917 = !DILocation(line: 133, column: 7, scope: !914)
!918 = !DILocation(line: 133, column: 10, scope: !914)
!919 = !DILocation(line: 133, column: 18, scope: !914)
!920 = !DILocation(line: 134, column: 5, scope: !914)
!921 = !DILocation(line: 135, column: 1, scope: !896)
!922 = distinct !DISubprogram(name: "redisLibeventDelWrite", scope: !2, file: !2, line: 137, type: !182, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !288)
!923 = !DILocalVariable(name: "privdata", arg: 1, scope: !922, file: !2, line: 137, type: !148)
!924 = !DILocation(line: 137, column: 41, scope: !922)
!925 = !DILocalVariable(name: "e", scope: !922, file: !2, line: 138, type: !101)
!926 = !DILocation(line: 138, column: 31, scope: !922)
!927 = !DILocation(line: 138, column: 64, scope: !922)
!928 = !DILocation(line: 139, column: 6, scope: !929)
!929 = distinct !DILexicalBlock(scope: !922, file: !2, line: 139, column: 6)
!930 = !DILocation(line: 139, column: 8, scope: !929)
!931 = !DILocation(line: 139, column: 11, scope: !929)
!932 = !DILocation(line: 139, column: 14, scope: !929)
!933 = !DILocation(line: 139, column: 18, scope: !929)
!934 = !DILocation(line: 139, column: 21, scope: !929)
!935 = !DILocation(line: 139, column: 24, scope: !929)
!936 = !DILocation(line: 139, column: 6, scope: !922)
!937 = !DILocation(line: 140, column: 15, scope: !938)
!938 = distinct !DILexicalBlock(scope: !929, file: !2, line: 139, column: 33)
!939 = !DILocation(line: 140, column: 18, scope: !938)
!940 = !DILocation(line: 140, column: 5, scope: !938)
!941 = !DILocation(line: 141, column: 5, scope: !938)
!942 = !DILocation(line: 141, column: 8, scope: !938)
!943 = !DILocation(line: 141, column: 16, scope: !938)
!944 = !DILocation(line: 142, column: 3, scope: !938)
!945 = !DILocation(line: 143, column: 1, scope: !922)
!946 = distinct !DISubprogram(name: "redisLibeventCleanup", scope: !2, file: !2, line: 145, type: !182, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !288)
!947 = !DILocalVariable(name: "privdata", arg: 1, scope: !946, file: !2, line: 145, type: !148)
!948 = !DILocation(line: 145, column: 40, scope: !946)
!949 = !DILocation(line: 148, column: 6, scope: !950)
!950 = distinct !DILexicalBlock(scope: !946, file: !2, line: 148, column: 6)
!951 = !DILocation(line: 148, column: 6, scope: !946)
!952 = !DILocalVariable(name: "e", scope: !953, file: !2, line: 150, type: !101)
!953 = distinct !DILexicalBlock(scope: !950, file: !2, line: 148, column: 16)
!954 = !DILocation(line: 150, column: 31, scope: !953)
!955 = !DILocation(line: 150, column: 66, scope: !953)
!956 = !DILocation(line: 151, column: 7, scope: !957)
!957 = distinct !DILexicalBlock(scope: !953, file: !2, line: 151, column: 7)
!958 = !DILocation(line: 151, column: 10, scope: !957)
!959 = !DILocation(line: 151, column: 7, scope: !953)
!960 = !DILocation(line: 152, column: 8, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !2, line: 152, column: 8)
!962 = distinct !DILexicalBlock(scope: !957, file: !2, line: 151, column: 21)
!963 = !DILocation(line: 152, column: 11, scope: !961)
!964 = !DILocation(line: 152, column: 8, scope: !962)
!965 = !DILocation(line: 153, column: 8, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !2, line: 153, column: 8)
!967 = distinct !DILexicalBlock(scope: !961, file: !2, line: 152, column: 16)
!968 = !DILocation(line: 153, column: 11, scope: !966)
!969 = !DILocation(line: 153, column: 8, scope: !967)
!970 = !DILocation(line: 154, column: 16, scope: !966)
!971 = !DILocation(line: 154, column: 19, scope: !966)
!972 = !DILocation(line: 154, column: 6, scope: !966)
!973 = !DILocation(line: 155, column: 16, scope: !967)
!974 = !DILocation(line: 155, column: 19, scope: !967)
!975 = !DILocation(line: 155, column: 5, scope: !967)
!976 = !DILocation(line: 156, column: 5, scope: !967)
!977 = !DILocation(line: 156, column: 8, scope: !967)
!978 = !DILocation(line: 156, column: 12, scope: !967)
!979 = !DILocation(line: 157, column: 4, scope: !967)
!980 = !DILocation(line: 158, column: 4, scope: !962)
!981 = !DILocation(line: 158, column: 7, scope: !962)
!982 = !DILocation(line: 158, column: 15, scope: !962)
!983 = !DILocation(line: 159, column: 8, scope: !984)
!984 = distinct !DILexicalBlock(scope: !962, file: !2, line: 159, column: 8)
!985 = !DILocation(line: 159, column: 11, scope: !984)
!986 = !DILocation(line: 159, column: 8, scope: !962)
!987 = !DILocation(line: 160, column: 8, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !2, line: 160, column: 8)
!989 = distinct !DILexicalBlock(scope: !984, file: !2, line: 159, column: 16)
!990 = !DILocation(line: 160, column: 11, scope: !988)
!991 = !DILocation(line: 160, column: 8, scope: !989)
!992 = !DILocation(line: 161, column: 16, scope: !988)
!993 = !DILocation(line: 161, column: 19, scope: !988)
!994 = !DILocation(line: 161, column: 6, scope: !988)
!995 = !DILocation(line: 162, column: 16, scope: !989)
!996 = !DILocation(line: 162, column: 19, scope: !989)
!997 = !DILocation(line: 162, column: 5, scope: !989)
!998 = !DILocation(line: 163, column: 5, scope: !989)
!999 = !DILocation(line: 163, column: 8, scope: !989)
!1000 = !DILocation(line: 163, column: 12, scope: !989)
!1001 = !DILocation(line: 164, column: 4, scope: !989)
!1002 = !DILocation(line: 165, column: 4, scope: !962)
!1003 = !DILocation(line: 165, column: 7, scope: !962)
!1004 = !DILocation(line: 165, column: 15, scope: !962)
!1005 = !DILocation(line: 166, column: 4, scope: !962)
!1006 = !DILocation(line: 166, column: 7, scope: !962)
!1007 = !DILocation(line: 166, column: 15, scope: !962)
!1008 = !DILocation(line: 167, column: 3, scope: !962)
!1009 = !DILocation(line: 168, column: 2, scope: !953)
!1010 = !DILocation(line: 169, column: 1, scope: !946)
!1011 = distinct !DISubprogram(name: "redisLibeventReadEvent", scope: !2, file: !2, line: 82, type: !1012, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !288)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !115, !1014, !148}
!1014 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1015 = !DILocalVariable(name: "fd", arg: 1, scope: !1011, file: !2, line: 82, type: !115)
!1016 = !DILocation(line: 82, column: 40, scope: !1011)
!1017 = !DILocalVariable(name: "event", arg: 2, scope: !1011, file: !2, line: 82, type: !1014)
!1018 = !DILocation(line: 82, column: 50, scope: !1011)
!1019 = !DILocalVariable(name: "arg", arg: 3, scope: !1011, file: !2, line: 82, type: !148)
!1020 = !DILocation(line: 82, column: 63, scope: !1011)
!1021 = !DILocation(line: 83, column: 10, scope: !1011)
!1022 = !DILocation(line: 83, column: 22, scope: !1011)
!1023 = !DILocalVariable(name: "e", scope: !1011, file: !2, line: 84, type: !101)
!1024 = !DILocation(line: 84, column: 31, scope: !1011)
!1025 = !DILocation(line: 84, column: 64, scope: !1011)
!1026 = !DILocation(line: 85, column: 21, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 85, column: 6)
!1028 = !DILocation(line: 85, column: 6, scope: !1027)
!1029 = !DILocation(line: 85, column: 6, scope: !1011)
!1030 = !DILocalVariable(name: "buf", scope: !1031, file: !2, line: 87, type: !35)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 86, column: 4)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 85, column: 25)
!1033 = !DILocation(line: 87, column: 10, scope: !1031)
!1034 = !DILocalVariable(name: "len", scope: !1031, file: !2, line: 88, type: !115)
!1035 = !DILocation(line: 88, column: 9, scope: !1031)
!1036 = !DILocation(line: 89, column: 5, scope: !1031)
!1037 = !DILocation(line: 90, column: 17, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1031, file: !2, line: 89, column: 8)
!1039 = !DILocation(line: 90, column: 20, scope: !1038)
!1040 = !DILocation(line: 90, column: 12, scope: !1038)
!1041 = !DILocation(line: 90, column: 10, scope: !1038)
!1042 = !DILocation(line: 91, column: 5, scope: !1038)
!1043 = !DILocation(line: 91, column: 14, scope: !1031)
!1044 = !DILocation(line: 91, column: 17, scope: !1031)
!1045 = !DILocation(line: 91, column: 20, scope: !1031)
!1046 = !DILocation(line: 91, column: 23, scope: !1031)
!1047 = !DILocation(line: 91, column: 29, scope: !1031)
!1048 = !DILocation(line: 0, scope: !1031)
!1049 = distinct !{!1049, !1036, !1050, !1051}
!1050 = !DILocation(line: 91, column: 38, scope: !1031)
!1051 = !{!"llvm.loop.mustprogress"}
!1052 = !DILocation(line: 92, column: 8, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1031, file: !2, line: 92, column: 8)
!1054 = !DILocation(line: 92, column: 11, scope: !1053)
!1055 = !DILocation(line: 92, column: 8, scope: !1031)
!1056 = !DILocation(line: 93, column: 6, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 92, column: 15)
!1058 = !DILocation(line: 93, column: 9, scope: !1057)
!1059 = !DILocation(line: 93, column: 17, scope: !1057)
!1060 = !DILocation(line: 94, column: 114, scope: !1057)
!1061 = !DILocation(line: 94, column: 99, scope: !1057)
!1062 = !DILocation(line: 94, column: 6, scope: !1057)
!1063 = !DILocation(line: 95, column: 5, scope: !1057)
!1064 = !DILocation(line: 97, column: 22, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 97, column: 7)
!1066 = !DILocation(line: 97, column: 7, scope: !1065)
!1067 = !DILocation(line: 97, column: 7, scope: !1032)
!1068 = !DILocation(line: 98, column: 26, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 97, column: 26)
!1070 = !DILocation(line: 98, column: 29, scope: !1069)
!1071 = !DILocation(line: 98, column: 5, scope: !1069)
!1072 = !DILocation(line: 99, column: 4, scope: !1069)
!1073 = !DILocation(line: 100, column: 3, scope: !1032)
!1074 = !DILocation(line: 101, column: 20, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 100, column: 10)
!1076 = !DILocation(line: 101, column: 4, scope: !1075)
!1077 = !DILocation(line: 103, column: 1, scope: !1011)
!1078 = distinct !DISubprogram(name: "redisLibeventWriteEvent", scope: !2, file: !2, line: 105, type: !1012, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !288)
!1079 = !DILocalVariable(name: "fd", arg: 1, scope: !1078, file: !2, line: 105, type: !115)
!1080 = !DILocation(line: 105, column: 41, scope: !1078)
!1081 = !DILocalVariable(name: "event", arg: 2, scope: !1078, file: !2, line: 105, type: !1014)
!1082 = !DILocation(line: 105, column: 51, scope: !1078)
!1083 = !DILocalVariable(name: "arg", arg: 3, scope: !1078, file: !2, line: 105, type: !148)
!1084 = !DILocation(line: 105, column: 64, scope: !1078)
!1085 = !DILocation(line: 106, column: 10, scope: !1078)
!1086 = !DILocation(line: 106, column: 22, scope: !1078)
!1087 = !DILocalVariable(name: "e", scope: !1078, file: !2, line: 107, type: !101)
!1088 = !DILocation(line: 107, column: 31, scope: !1078)
!1089 = !DILocation(line: 107, column: 64, scope: !1078)
!1090 = !DILocation(line: 108, column: 21, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 108, column: 6)
!1092 = !DILocation(line: 108, column: 6, scope: !1091)
!1093 = !DILocation(line: 108, column: 6, scope: !1078)
!1094 = !DILocation(line: 109, column: 27, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 108, column: 25)
!1096 = !DILocation(line: 109, column: 30, scope: !1095)
!1097 = !DILocation(line: 109, column: 5, scope: !1095)
!1098 = !DILocation(line: 110, column: 3, scope: !1095)
!1099 = !DILocation(line: 111, column: 1, scope: !1078)
