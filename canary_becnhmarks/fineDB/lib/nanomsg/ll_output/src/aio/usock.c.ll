; ModuleID = './src/aio/usock.c'
source_filename = "./src/aio/usock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_usock = type { %struct.nn_fsm, i32, ptr, i32, %struct.nn_worker_fd, %struct.anon, %struct.anon.0, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_fsm_event, ptr }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_worker_fd = type { ptr, %struct.nn_poller_hndl }
%struct.nn_poller_hndl = type { i32 }
%struct.anon = type { ptr, i64, ptr, i64, i64 }
%struct.anon.0 = type { %struct.msghdr, [3 x %struct.iovec] }
%struct.msghdr = type { ptr, i32, ptr, i64, ptr, i64, i32 }
%struct.iovec = type { ptr, i64 }
%struct.nn_worker_task = type { ptr, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_iovec = type { ptr, i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [35 x i8] c"self->state == NN_USOCK_STATE_IDLE\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [26 x i8] c"./src/aio/usock_posix.inc\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [81 x i8] c"self->state == NN_USOCK_STATE_STARTING || self->state == NN_USOCK_STATE_ACCEPTED\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [39 x i8] c"self->state == NN_USOCK_STATE_STARTING\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [13 x i8] c"!self->asock\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [17 x i8] c"!listener->asock\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [37 x i8] c"self->state == NN_USOCK_STATE_ACTIVE\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [30 x i8] c"iovcnt <= NN_USOCK_MAX_IOVCNT\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [68 x i8] c"self->state == NN_USOCK_STATE_IDLE || NN_USOCK_STATE_BEING_ACCEPTED\00", align 1, !dbg !46
@.str.11 = private unnamed_addr constant [14 x i8] c"self->s == -1\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [31 x i8] c"type == NN_WORKER_TASK_EXECUTE\00", align 1, !dbg !56
@.str.13 = private unnamed_addr constant [86 x i8] c"usock->state != NN_USOCK_STATE_ACCEPTING && usock->state != NN_USOCK_STATE_CANCELLING\00", align 1, !dbg !61
@.str.14 = private unnamed_addr constant [47 x i8] c"srcptr == NULL && type == NN_USOCK_ACTION_DONE\00", align 1, !dbg !66
@.str.15 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !71
@.str.16 = private unnamed_addr constant [32 x i8] c"nbytes == hdr->msg_iov->iov_len\00", align 1, !dbg !76
@.str.17 = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !81

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_usock_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !353 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !357, metadata !DIExpression()), !dbg !358
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !359, metadata !DIExpression()), !dbg !360
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !361, metadata !DIExpression()), !dbg !362
  %7 = load ptr, ptr %4, align 8, !dbg !363
  %8 = getelementptr inbounds %struct.nn_usock, ptr %7, i32 0, i32 0, !dbg !364
  %9 = load i32, ptr %5, align 4, !dbg !365
  %10 = load ptr, ptr %4, align 8, !dbg !366
  %11 = load ptr, ptr %6, align 8, !dbg !367
  call void @nn_fsm_init(ptr noundef %8, ptr noundef @nn_usock_handler, i32 noundef %9, ptr noundef %10, ptr noundef %11), !dbg !368
  %12 = load ptr, ptr %4, align 8, !dbg !369
  %13 = getelementptr inbounds %struct.nn_usock, ptr %12, i32 0, i32 1, !dbg !370
  store i32 1, ptr %13, align 8, !dbg !371
  %14 = load ptr, ptr %4, align 8, !dbg !372
  %15 = getelementptr inbounds %struct.nn_usock, ptr %14, i32 0, i32 0, !dbg !373
  %16 = call ptr @nn_fsm_choose_worker(ptr noundef %15), !dbg !374
  %17 = load ptr, ptr %4, align 8, !dbg !375
  %18 = getelementptr inbounds %struct.nn_usock, ptr %17, i32 0, i32 2, !dbg !376
  store ptr %16, ptr %18, align 8, !dbg !377
  %19 = load ptr, ptr %4, align 8, !dbg !378
  %20 = getelementptr inbounds %struct.nn_usock, ptr %19, i32 0, i32 3, !dbg !379
  store i32 -1, ptr %20, align 8, !dbg !380
  %21 = load ptr, ptr %4, align 8, !dbg !381
  %22 = getelementptr inbounds %struct.nn_usock, ptr %21, i32 0, i32 5, !dbg !382
  %23 = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 0, !dbg !383
  store ptr null, ptr %23, align 8, !dbg !384
  %24 = load ptr, ptr %4, align 8, !dbg !385
  %25 = getelementptr inbounds %struct.nn_usock, ptr %24, i32 0, i32 5, !dbg !386
  %26 = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 1, !dbg !387
  store i64 0, ptr %26, align 8, !dbg !388
  %27 = load ptr, ptr %4, align 8, !dbg !389
  %28 = getelementptr inbounds %struct.nn_usock, ptr %27, i32 0, i32 5, !dbg !390
  %29 = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 2, !dbg !391
  store ptr null, ptr %29, align 8, !dbg !392
  %30 = load ptr, ptr %4, align 8, !dbg !393
  %31 = getelementptr inbounds %struct.nn_usock, ptr %30, i32 0, i32 5, !dbg !394
  %32 = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 3, !dbg !395
  store i64 0, ptr %32, align 8, !dbg !396
  %33 = load ptr, ptr %4, align 8, !dbg !397
  %34 = getelementptr inbounds %struct.nn_usock, ptr %33, i32 0, i32 5, !dbg !398
  %35 = getelementptr inbounds %struct.anon, ptr %34, i32 0, i32 4, !dbg !399
  store i64 0, ptr %35, align 8, !dbg !400
  %36 = load ptr, ptr %4, align 8, !dbg !401
  %37 = getelementptr inbounds %struct.nn_usock, ptr %36, i32 0, i32 6, !dbg !402
  %38 = getelementptr inbounds %struct.anon.0, ptr %37, i32 0, i32 0, !dbg !403
  call void @llvm.memset.p0.i64(ptr align 8 %38, i8 0, i64 56, i1 false), !dbg !404
  %39 = load ptr, ptr %4, align 8, !dbg !405
  %40 = getelementptr inbounds %struct.nn_usock, ptr %39, i32 0, i32 4, !dbg !406
  %41 = load ptr, ptr %4, align 8, !dbg !407
  %42 = getelementptr inbounds %struct.nn_usock, ptr %41, i32 0, i32 0, !dbg !408
  call void @nn_worker_fd_init(ptr noundef %40, ptr noundef %42), !dbg !409
  %43 = load ptr, ptr %4, align 8, !dbg !410
  %44 = getelementptr inbounds %struct.nn_usock, ptr %43, i32 0, i32 7, !dbg !411
  %45 = load ptr, ptr %4, align 8, !dbg !412
  %46 = getelementptr inbounds %struct.nn_usock, ptr %45, i32 0, i32 0, !dbg !413
  call void @nn_worker_task_init(ptr noundef %44, ptr noundef %46), !dbg !414
  %47 = load ptr, ptr %4, align 8, !dbg !415
  %48 = getelementptr inbounds %struct.nn_usock, ptr %47, i32 0, i32 8, !dbg !416
  %49 = load ptr, ptr %4, align 8, !dbg !417
  %50 = getelementptr inbounds %struct.nn_usock, ptr %49, i32 0, i32 0, !dbg !418
  call void @nn_worker_task_init(ptr noundef %48, ptr noundef %50), !dbg !419
  %51 = load ptr, ptr %4, align 8, !dbg !420
  %52 = getelementptr inbounds %struct.nn_usock, ptr %51, i32 0, i32 9, !dbg !421
  %53 = load ptr, ptr %4, align 8, !dbg !422
  %54 = getelementptr inbounds %struct.nn_usock, ptr %53, i32 0, i32 0, !dbg !423
  call void @nn_worker_task_init(ptr noundef %52, ptr noundef %54), !dbg !424
  %55 = load ptr, ptr %4, align 8, !dbg !425
  %56 = getelementptr inbounds %struct.nn_usock, ptr %55, i32 0, i32 10, !dbg !426
  %57 = load ptr, ptr %4, align 8, !dbg !427
  %58 = getelementptr inbounds %struct.nn_usock, ptr %57, i32 0, i32 0, !dbg !428
  call void @nn_worker_task_init(ptr noundef %56, ptr noundef %58), !dbg !429
  %59 = load ptr, ptr %4, align 8, !dbg !430
  %60 = getelementptr inbounds %struct.nn_usock, ptr %59, i32 0, i32 11, !dbg !431
  %61 = load ptr, ptr %4, align 8, !dbg !432
  %62 = getelementptr inbounds %struct.nn_usock, ptr %61, i32 0, i32 0, !dbg !433
  call void @nn_worker_task_init(ptr noundef %60, ptr noundef %62), !dbg !434
  %63 = load ptr, ptr %4, align 8, !dbg !435
  %64 = getelementptr inbounds %struct.nn_usock, ptr %63, i32 0, i32 12, !dbg !436
  %65 = load ptr, ptr %4, align 8, !dbg !437
  %66 = getelementptr inbounds %struct.nn_usock, ptr %65, i32 0, i32 0, !dbg !438
  call void @nn_worker_task_init(ptr noundef %64, ptr noundef %66), !dbg !439
  %67 = load ptr, ptr %4, align 8, !dbg !440
  %68 = getelementptr inbounds %struct.nn_usock, ptr %67, i32 0, i32 13, !dbg !441
  call void @nn_fsm_event_init(ptr noundef %68), !dbg !442
  %69 = load ptr, ptr %4, align 8, !dbg !443
  %70 = getelementptr inbounds %struct.nn_usock, ptr %69, i32 0, i32 14, !dbg !444
  call void @nn_fsm_event_init(ptr noundef %70), !dbg !445
  %71 = load ptr, ptr %4, align 8, !dbg !446
  %72 = getelementptr inbounds %struct.nn_usock, ptr %71, i32 0, i32 15, !dbg !447
  call void @nn_fsm_event_init(ptr noundef %72), !dbg !448
  %73 = load ptr, ptr %4, align 8, !dbg !449
  %74 = getelementptr inbounds %struct.nn_usock, ptr %73, i32 0, i32 16, !dbg !450
  call void @nn_fsm_event_init(ptr noundef %74), !dbg !451
  %75 = load ptr, ptr %4, align 8, !dbg !452
  %76 = getelementptr inbounds %struct.nn_usock, ptr %75, i32 0, i32 17, !dbg !453
  store ptr null, ptr %76, align 8, !dbg !454
  ret void, !dbg !455
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_fsm_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_usock_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !456 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !457, metadata !DIExpression()), !dbg !458
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !459, metadata !DIExpression()), !dbg !460
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !461, metadata !DIExpression()), !dbg !462
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !463, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.declare(metadata ptr %9, metadata !465, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.declare(metadata ptr %10, metadata !467, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.declare(metadata ptr %11, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata ptr %12, metadata !471, metadata !DIExpression()), !dbg !472
  %13 = load ptr, ptr %5, align 8, !dbg !473
  %14 = icmp ne ptr %13, null, !dbg !473
  br i1 %14, label %15, label %18, !dbg !473

15:                                               ; preds = %4
  %16 = load ptr, ptr %5, align 8, !dbg !473
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !473
  br label %19, !dbg !473

18:                                               ; preds = %4
  br label %19, !dbg !473

19:                                               ; preds = %18, %15
  %20 = phi ptr [ %17, %15 ], [ null, %18 ], !dbg !473
  store ptr %20, ptr %10, align 8, !dbg !474
  %21 = load ptr, ptr %8, align 8, !dbg !475
  %22 = load ptr, ptr %10, align 8, !dbg !477
  %23 = getelementptr inbounds %struct.nn_usock, ptr %22, i32 0, i32 10, !dbg !478
  %24 = icmp eq ptr %21, %23, !dbg !479
  br i1 %24, label %25, label %43, !dbg !480

25:                                               ; preds = %19
  br label %26, !dbg !481

26:                                               ; preds = %25
  %27 = load i32, ptr %7, align 4, !dbg !483
  %28 = icmp eq i32 %27, 1, !dbg !483
  %29 = xor i1 %28, true, !dbg !483
  %30 = zext i1 %29 to i32, !dbg !483
  %31 = sext i32 %30 to i64, !dbg !483
  %32 = icmp ne i64 %31, 0, !dbg !483
  br i1 %32, label %33, label %36, !dbg !486

33:                                               ; preds = %26
  %34 = load ptr, ptr @stderr, align 8, !dbg !487
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str, ptr noundef @.str.12, ptr noundef @.str.2, i32 noundef 441), !dbg !487
  call void @nn_err_abort() #8, !dbg !487
  unreachable, !dbg !487

36:                                               ; preds = %26
  br label %37, !dbg !486

37:                                               ; preds = %36
  %38 = load ptr, ptr %10, align 8, !dbg !489
  %39 = getelementptr inbounds %struct.nn_usock, ptr %38, i32 0, i32 2, !dbg !490
  %40 = load ptr, ptr %39, align 8, !dbg !490
  %41 = load ptr, ptr %10, align 8, !dbg !491
  %42 = getelementptr inbounds %struct.nn_usock, ptr %41, i32 0, i32 4, !dbg !492
  call void @nn_worker_set_out(ptr noundef %40, ptr noundef %42), !dbg !493
  br label %991, !dbg !494

43:                                               ; preds = %19
  %44 = load ptr, ptr %8, align 8, !dbg !495
  %45 = load ptr, ptr %10, align 8, !dbg !497
  %46 = getelementptr inbounds %struct.nn_usock, ptr %45, i32 0, i32 11, !dbg !498
  %47 = icmp eq ptr %44, %46, !dbg !499
  br i1 %47, label %48, label %66, !dbg !500

48:                                               ; preds = %43
  br label %49, !dbg !501

49:                                               ; preds = %48
  %50 = load i32, ptr %7, align 4, !dbg !503
  %51 = icmp eq i32 %50, 1, !dbg !503
  %52 = xor i1 %51, true, !dbg !503
  %53 = zext i1 %52 to i32, !dbg !503
  %54 = sext i32 %53 to i64, !dbg !503
  %55 = icmp ne i64 %54, 0, !dbg !503
  br i1 %55, label %56, label %59, !dbg !506

56:                                               ; preds = %49
  %57 = load ptr, ptr @stderr, align 8, !dbg !507
  %58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str, ptr noundef @.str.12, ptr noundef @.str.2, i32 noundef 446), !dbg !507
  call void @nn_err_abort() #8, !dbg !507
  unreachable, !dbg !507

59:                                               ; preds = %49
  br label %60, !dbg !506

60:                                               ; preds = %59
  %61 = load ptr, ptr %10, align 8, !dbg !509
  %62 = getelementptr inbounds %struct.nn_usock, ptr %61, i32 0, i32 2, !dbg !510
  %63 = load ptr, ptr %62, align 8, !dbg !510
  %64 = load ptr, ptr %10, align 8, !dbg !511
  %65 = getelementptr inbounds %struct.nn_usock, ptr %64, i32 0, i32 4, !dbg !512
  call void @nn_worker_set_in(ptr noundef %63, ptr noundef %65), !dbg !513
  br label %991, !dbg !514

66:                                               ; preds = %43
  %67 = load ptr, ptr %8, align 8, !dbg !515
  %68 = load ptr, ptr %10, align 8, !dbg !517
  %69 = getelementptr inbounds %struct.nn_usock, ptr %68, i32 0, i32 8, !dbg !518
  %70 = icmp eq ptr %67, %69, !dbg !519
  br i1 %70, label %71, label %92, !dbg !520

71:                                               ; preds = %66
  br label %72, !dbg !521

72:                                               ; preds = %71
  %73 = load i32, ptr %7, align 4, !dbg !523
  %74 = icmp eq i32 %73, 1, !dbg !523
  %75 = xor i1 %74, true, !dbg !523
  %76 = zext i1 %75 to i32, !dbg !523
  %77 = sext i32 %76 to i64, !dbg !523
  %78 = icmp ne i64 %77, 0, !dbg !523
  br i1 %78, label %79, label %82, !dbg !526

79:                                               ; preds = %72
  %80 = load ptr, ptr @stderr, align 8, !dbg !527
  %81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef @.str, ptr noundef @.str.12, ptr noundef @.str.2, i32 noundef 451), !dbg !527
  call void @nn_err_abort() #8, !dbg !527
  unreachable, !dbg !527

82:                                               ; preds = %72
  br label %83, !dbg !526

83:                                               ; preds = %82
  %84 = load ptr, ptr %10, align 8, !dbg !529
  %85 = getelementptr inbounds %struct.nn_usock, ptr %84, i32 0, i32 2, !dbg !530
  %86 = load ptr, ptr %85, align 8, !dbg !530
  %87 = load ptr, ptr %10, align 8, !dbg !531
  %88 = getelementptr inbounds %struct.nn_usock, ptr %87, i32 0, i32 3, !dbg !532
  %89 = load i32, ptr %88, align 8, !dbg !532
  %90 = load ptr, ptr %10, align 8, !dbg !533
  %91 = getelementptr inbounds %struct.nn_usock, ptr %90, i32 0, i32 4, !dbg !534
  call void @nn_worker_add_fd(ptr noundef %86, i32 noundef %89, ptr noundef %91), !dbg !535
  br label %991, !dbg !536

92:                                               ; preds = %66
  %93 = load ptr, ptr %8, align 8, !dbg !537
  %94 = load ptr, ptr %10, align 8, !dbg !539
  %95 = getelementptr inbounds %struct.nn_usock, ptr %94, i32 0, i32 7, !dbg !540
  %96 = icmp eq ptr %93, %95, !dbg !541
  br i1 %96, label %97, label %123, !dbg !542

97:                                               ; preds = %92
  br label %98, !dbg !543

98:                                               ; preds = %97
  %99 = load i32, ptr %7, align 4, !dbg !545
  %100 = icmp eq i32 %99, 1, !dbg !545
  %101 = xor i1 %100, true, !dbg !545
  %102 = zext i1 %101 to i32, !dbg !545
  %103 = sext i32 %102 to i64, !dbg !545
  %104 = icmp ne i64 %103, 0, !dbg !545
  br i1 %104, label %105, label %108, !dbg !548

105:                                              ; preds = %98
  %106 = load ptr, ptr @stderr, align 8, !dbg !549
  %107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef @.str, ptr noundef @.str.12, ptr noundef @.str.2, i32 noundef 456), !dbg !549
  call void @nn_err_abort() #8, !dbg !549
  unreachable, !dbg !549

108:                                              ; preds = %98
  br label %109, !dbg !548

109:                                              ; preds = %108
  %110 = load ptr, ptr %10, align 8, !dbg !551
  %111 = getelementptr inbounds %struct.nn_usock, ptr %110, i32 0, i32 2, !dbg !552
  %112 = load ptr, ptr %111, align 8, !dbg !552
  %113 = load ptr, ptr %10, align 8, !dbg !553
  %114 = getelementptr inbounds %struct.nn_usock, ptr %113, i32 0, i32 3, !dbg !554
  %115 = load i32, ptr %114, align 8, !dbg !554
  %116 = load ptr, ptr %10, align 8, !dbg !555
  %117 = getelementptr inbounds %struct.nn_usock, ptr %116, i32 0, i32 4, !dbg !556
  call void @nn_worker_add_fd(ptr noundef %112, i32 noundef %115, ptr noundef %117), !dbg !557
  %118 = load ptr, ptr %10, align 8, !dbg !558
  %119 = getelementptr inbounds %struct.nn_usock, ptr %118, i32 0, i32 2, !dbg !559
  %120 = load ptr, ptr %119, align 8, !dbg !559
  %121 = load ptr, ptr %10, align 8, !dbg !560
  %122 = getelementptr inbounds %struct.nn_usock, ptr %121, i32 0, i32 4, !dbg !561
  call void @nn_worker_set_out(ptr noundef %120, ptr noundef %122), !dbg !562
  br label %991, !dbg !563

123:                                              ; preds = %92
  %124 = load ptr, ptr %8, align 8, !dbg !564
  %125 = load ptr, ptr %10, align 8, !dbg !566
  %126 = getelementptr inbounds %struct.nn_usock, ptr %125, i32 0, i32 9, !dbg !567
  %127 = icmp eq ptr %124, %126, !dbg !568
  br i1 %127, label %128, label %154, !dbg !569

128:                                              ; preds = %123
  br label %129, !dbg !570

129:                                              ; preds = %128
  %130 = load i32, ptr %7, align 4, !dbg !572
  %131 = icmp eq i32 %130, 1, !dbg !572
  %132 = xor i1 %131, true, !dbg !572
  %133 = zext i1 %132 to i32, !dbg !572
  %134 = sext i32 %133 to i64, !dbg !572
  %135 = icmp ne i64 %134, 0, !dbg !572
  br i1 %135, label %136, label %139, !dbg !575

136:                                              ; preds = %129
  %137 = load ptr, ptr @stderr, align 8, !dbg !576
  %138 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef @.str, ptr noundef @.str.12, ptr noundef @.str.2, i32 noundef 462), !dbg !576
  call void @nn_err_abort() #8, !dbg !576
  unreachable, !dbg !576

139:                                              ; preds = %129
  br label %140, !dbg !575

140:                                              ; preds = %139
  %141 = load ptr, ptr %10, align 8, !dbg !578
  %142 = getelementptr inbounds %struct.nn_usock, ptr %141, i32 0, i32 2, !dbg !579
  %143 = load ptr, ptr %142, align 8, !dbg !579
  %144 = load ptr, ptr %10, align 8, !dbg !580
  %145 = getelementptr inbounds %struct.nn_usock, ptr %144, i32 0, i32 3, !dbg !581
  %146 = load i32, ptr %145, align 8, !dbg !581
  %147 = load ptr, ptr %10, align 8, !dbg !582
  %148 = getelementptr inbounds %struct.nn_usock, ptr %147, i32 0, i32 4, !dbg !583
  call void @nn_worker_add_fd(ptr noundef %143, i32 noundef %146, ptr noundef %148), !dbg !584
  %149 = load ptr, ptr %10, align 8, !dbg !585
  %150 = getelementptr inbounds %struct.nn_usock, ptr %149, i32 0, i32 2, !dbg !586
  %151 = load ptr, ptr %150, align 8, !dbg !586
  %152 = load ptr, ptr %10, align 8, !dbg !587
  %153 = getelementptr inbounds %struct.nn_usock, ptr %152, i32 0, i32 4, !dbg !588
  call void @nn_worker_set_in(ptr noundef %151, ptr noundef %153), !dbg !589
  br label %991, !dbg !590

154:                                              ; preds = %123
  %155 = load ptr, ptr %8, align 8, !dbg !591
  %156 = icmp eq ptr %155, null, !dbg !591
  br i1 %156, label %157, label %160, !dbg !591

157:                                              ; preds = %154
  %158 = load i32, ptr %7, align 4, !dbg !591
  %159 = icmp eq i32 %158, -3, !dbg !591
  br label %160

160:                                              ; preds = %157, %154
  %161 = phi i1 [ false, %154 ], [ %159, %157 ], !dbg !593
  %162 = zext i1 %161 to i32, !dbg !591
  %163 = sext i32 %162 to i64, !dbg !591
  %164 = icmp ne i64 %163, 0, !dbg !591
  br i1 %164, label %165, label %240, !dbg !594

165:                                              ; preds = %160
  br label %166, !dbg !595

166:                                              ; preds = %165
  %167 = load ptr, ptr %10, align 8, !dbg !597
  %168 = getelementptr inbounds %struct.nn_usock, ptr %167, i32 0, i32 1, !dbg !597
  %169 = load i32, ptr %168, align 8, !dbg !597
  %170 = icmp ne i32 %169, 10, !dbg !597
  br i1 %170, label %171, label %176, !dbg !597

171:                                              ; preds = %166
  %172 = load ptr, ptr %10, align 8, !dbg !597
  %173 = getelementptr inbounds %struct.nn_usock, ptr %172, i32 0, i32 1, !dbg !597
  %174 = load i32, ptr %173, align 8, !dbg !597
  %175 = icmp ne i32 %174, 11, !dbg !597
  br label %176

176:                                              ; preds = %171, %166
  %177 = phi i1 [ false, %166 ], [ %175, %171 ], !dbg !600
  %178 = xor i1 %177, true, !dbg !597
  %179 = zext i1 %178 to i32, !dbg !597
  %180 = sext i32 %179 to i64, !dbg !597
  %181 = icmp ne i64 %180, 0, !dbg !597
  br i1 %181, label %182, label %185, !dbg !601

182:                                              ; preds = %176
  %183 = load ptr, ptr @stderr, align 8, !dbg !602
  %184 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef @.str, ptr noundef @.str.13, ptr noundef @.str.2, i32 noundef 476), !dbg !602
  call void @nn_err_abort() #8, !dbg !602
  unreachable, !dbg !602

185:                                              ; preds = %176
  br label %186, !dbg !601

186:                                              ; preds = %185
  %187 = load ptr, ptr %10, align 8, !dbg !604
  %188 = getelementptr inbounds %struct.nn_usock, ptr %187, i32 0, i32 1, !dbg !606
  %189 = load i32, ptr %188, align 8, !dbg !606
  %190 = icmp eq i32 %189, 1, !dbg !607
  br i1 %190, label %191, label %192, !dbg !608

191:                                              ; preds = %186
  br label %327, !dbg !609

192:                                              ; preds = %186
  %193 = load ptr, ptr %10, align 8, !dbg !610
  %194 = getelementptr inbounds %struct.nn_usock, ptr %193, i32 0, i32 1, !dbg !612
  %195 = load i32, ptr %194, align 8, !dbg !612
  %196 = icmp eq i32 %195, 8, !dbg !613
  br i1 %196, label %197, label %198, !dbg !614

197:                                              ; preds = %192
  br label %322, !dbg !615

198:                                              ; preds = %192
  %199 = load ptr, ptr %10, align 8, !dbg !616
  %200 = getelementptr inbounds %struct.nn_usock, ptr %199, i32 0, i32 1, !dbg !618
  %201 = load i32, ptr %200, align 8, !dbg !618
  %202 = icmp eq i32 %201, 2, !dbg !619
  br i1 %202, label %213, label %203, !dbg !620

203:                                              ; preds = %198
  %204 = load ptr, ptr %10, align 8, !dbg !621
  %205 = getelementptr inbounds %struct.nn_usock, ptr %204, i32 0, i32 1, !dbg !622
  %206 = load i32, ptr %205, align 8, !dbg !622
  %207 = icmp eq i32 %206, 4, !dbg !623
  br i1 %207, label %213, label %208, !dbg !624

208:                                              ; preds = %203
  %209 = load ptr, ptr %10, align 8, !dbg !625
  %210 = getelementptr inbounds %struct.nn_usock, ptr %209, i32 0, i32 1, !dbg !626
  %211 = load i32, ptr %210, align 8, !dbg !626
  %212 = icmp eq i32 %211, 9, !dbg !627
  br i1 %212, label %213, label %214, !dbg !628

213:                                              ; preds = %208, %203, %198
  br label %298, !dbg !629

214:                                              ; preds = %208
  %215 = load ptr, ptr %10, align 8, !dbg !630
  %216 = getelementptr inbounds %struct.nn_usock, ptr %215, i32 0, i32 1, !dbg !632
  %217 = load i32, ptr %216, align 8, !dbg !632
  %218 = icmp eq i32 %217, 3, !dbg !633
  br i1 %218, label %219, label %226, !dbg !634

219:                                              ; preds = %214
  %220 = load ptr, ptr %10, align 8, !dbg !635
  %221 = getelementptr inbounds %struct.nn_usock, ptr %220, i32 0, i32 17, !dbg !637
  %222 = load ptr, ptr %221, align 8, !dbg !637
  %223 = getelementptr inbounds %struct.nn_usock, ptr %222, i32 0, i32 0, !dbg !638
  call void @nn_fsm_action(ptr noundef %223, i32 noundef 3), !dbg !639
  %224 = load ptr, ptr %10, align 8, !dbg !640
  %225 = getelementptr inbounds %struct.nn_usock, ptr %224, i32 0, i32 1, !dbg !641
  store i32 13, ptr %225, align 8, !dbg !642
  br label %991, !dbg !643

226:                                              ; preds = %214
  %227 = load ptr, ptr %10, align 8, !dbg !644
  %228 = getelementptr inbounds %struct.nn_usock, ptr %227, i32 0, i32 1, !dbg !646
  %229 = load i32, ptr %228, align 8, !dbg !646
  %230 = icmp ne i32 %229, 7, !dbg !647
  br i1 %230, label %231, label %237, !dbg !648

231:                                              ; preds = %226
  %232 = load ptr, ptr %10, align 8, !dbg !649
  %233 = getelementptr inbounds %struct.nn_usock, ptr %232, i32 0, i32 2, !dbg !650
  %234 = load ptr, ptr %233, align 8, !dbg !650
  %235 = load ptr, ptr %10, align 8, !dbg !651
  %236 = getelementptr inbounds %struct.nn_usock, ptr %235, i32 0, i32 12, !dbg !652
  call void @nn_worker_execute(ptr noundef %234, ptr noundef %236), !dbg !653
  br label %237, !dbg !653

237:                                              ; preds = %231, %226
  %238 = load ptr, ptr %10, align 8, !dbg !654
  %239 = getelementptr inbounds %struct.nn_usock, ptr %238, i32 0, i32 1, !dbg !655
  store i32 12, ptr %239, align 8, !dbg !656
  br label %991, !dbg !657

240:                                              ; preds = %160
  %241 = load ptr, ptr %10, align 8, !dbg !658
  %242 = getelementptr inbounds %struct.nn_usock, ptr %241, i32 0, i32 1, !dbg !658
  %243 = load i32, ptr %242, align 8, !dbg !658
  %244 = icmp eq i32 %243, 13, !dbg !658
  %245 = zext i1 %244 to i32, !dbg !658
  %246 = sext i32 %245 to i64, !dbg !658
  %247 = icmp ne i64 %246, 0, !dbg !658
  br i1 %247, label %248, label %266, !dbg !660

248:                                              ; preds = %240
  br label %249, !dbg !661

249:                                              ; preds = %248
  %250 = load ptr, ptr %8, align 8, !dbg !663
  %251 = icmp eq ptr %250, null, !dbg !663
  br i1 %251, label %252, label %255, !dbg !663

252:                                              ; preds = %249
  %253 = load i32, ptr %7, align 4, !dbg !663
  %254 = icmp eq i32 %253, 7, !dbg !663
  br label %255

255:                                              ; preds = %252, %249
  %256 = phi i1 [ false, %249 ], [ %254, %252 ], !dbg !666
  %257 = xor i1 %256, true, !dbg !663
  %258 = zext i1 %257 to i32, !dbg !663
  %259 = sext i32 %258 to i64, !dbg !663
  %260 = icmp ne i64 %259, 0, !dbg !663
  br i1 %260, label %261, label %264, !dbg !667

261:                                              ; preds = %255
  %262 = load ptr, ptr @stderr, align 8, !dbg !668
  %263 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %262, ptr noundef @.str, ptr noundef @.str.14, ptr noundef @.str.2, i32 noundef 503), !dbg !668
  call void @nn_err_abort() #8, !dbg !668
  unreachable, !dbg !668

264:                                              ; preds = %255
  br label %265, !dbg !667

265:                                              ; preds = %264
  br label %322, !dbg !670

266:                                              ; preds = %240
  %267 = load ptr, ptr %10, align 8, !dbg !671
  %268 = getelementptr inbounds %struct.nn_usock, ptr %267, i32 0, i32 1, !dbg !671
  %269 = load i32, ptr %268, align 8, !dbg !671
  %270 = icmp eq i32 %269, 12, !dbg !671
  %271 = zext i1 %270 to i32, !dbg !671
  %272 = sext i32 %271 to i64, !dbg !671
  %273 = icmp ne i64 %272, 0, !dbg !671
  br i1 %273, label %274, label %328, !dbg !673

274:                                              ; preds = %266
  %275 = load ptr, ptr %8, align 8, !dbg !674
  %276 = load ptr, ptr %10, align 8, !dbg !677
  %277 = getelementptr inbounds %struct.nn_usock, ptr %276, i32 0, i32 12, !dbg !678
  %278 = icmp ne ptr %275, %277, !dbg !679
  br i1 %278, label %279, label %280, !dbg !680

279:                                              ; preds = %274
  br label %991, !dbg !681

280:                                              ; preds = %274
  br label %281, !dbg !682

281:                                              ; preds = %280
  %282 = load i32, ptr %7, align 4, !dbg !683
  %283 = icmp eq i32 %282, 1, !dbg !683
  %284 = xor i1 %283, true, !dbg !683
  %285 = zext i1 %284 to i32, !dbg !683
  %286 = sext i32 %285 to i64, !dbg !683
  %287 = icmp ne i64 %286, 0, !dbg !683
  br i1 %287, label %288, label %291, !dbg !686

288:                                              ; preds = %281
  %289 = load ptr, ptr @stderr, align 8, !dbg !687
  %290 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %289, ptr noundef @.str, ptr noundef @.str.12, ptr noundef @.str.2, i32 noundef 509), !dbg !687
  call void @nn_err_abort() #8, !dbg !687
  unreachable, !dbg !687

291:                                              ; preds = %281
  br label %292, !dbg !686

292:                                              ; preds = %291
  %293 = load ptr, ptr %10, align 8, !dbg !689
  %294 = getelementptr inbounds %struct.nn_usock, ptr %293, i32 0, i32 2, !dbg !690
  %295 = load ptr, ptr %294, align 8, !dbg !690
  %296 = load ptr, ptr %10, align 8, !dbg !691
  %297 = getelementptr inbounds %struct.nn_usock, ptr %296, i32 0, i32 4, !dbg !692
  call void @nn_worker_rm_fd(ptr noundef %295, ptr noundef %297), !dbg !693
  br label %298, !dbg !693

298:                                              ; preds = %292, %213
  call void @llvm.dbg.label(metadata !694), !dbg !695
  %299 = load ptr, ptr %10, align 8, !dbg !696
  %300 = getelementptr inbounds %struct.nn_usock, ptr %299, i32 0, i32 3, !dbg !697
  %301 = load i32, ptr %300, align 8, !dbg !697
  %302 = call i32 @close(i32 noundef %301), !dbg !698
  store i32 %302, ptr %9, align 4, !dbg !699
  br label %303, !dbg !700

303:                                              ; preds = %298
  %304 = load i32, ptr %9, align 4, !dbg !701
  %305 = icmp eq i32 %304, 0, !dbg !701
  %306 = xor i1 %305, true, !dbg !701
  %307 = zext i1 %306 to i32, !dbg !701
  %308 = sext i32 %307 to i64, !dbg !701
  %309 = icmp ne i64 %308, 0, !dbg !701
  br i1 %309, label %310, label %318, !dbg !704

310:                                              ; preds = %303
  %311 = load ptr, ptr @stderr, align 8, !dbg !705
  %312 = call ptr @__errno_location() #9, !dbg !705
  %313 = load i32, ptr %312, align 4, !dbg !705
  %314 = call ptr @nn_err_strerror(i32 noundef %313), !dbg !705
  %315 = call ptr @__errno_location() #9, !dbg !705
  %316 = load i32, ptr %315, align 4, !dbg !705
  %317 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %311, ptr noundef @.str.5, ptr noundef %314, i32 noundef %316, ptr noundef @.str.2, i32 noundef 513), !dbg !705
  call void @nn_err_abort() #8, !dbg !705
  unreachable, !dbg !705

318:                                              ; preds = %303
  br label %319, !dbg !704

319:                                              ; preds = %318
  %320 = load ptr, ptr %10, align 8, !dbg !707
  %321 = getelementptr inbounds %struct.nn_usock, ptr %320, i32 0, i32 3, !dbg !708
  store i32 -1, ptr %321, align 8, !dbg !709
  br label %322, !dbg !707

322:                                              ; preds = %319, %265, %197
  call void @llvm.dbg.label(metadata !710), !dbg !711
  %323 = load ptr, ptr %10, align 8, !dbg !712
  %324 = getelementptr inbounds %struct.nn_usock, ptr %323, i32 0, i32 1, !dbg !713
  store i32 1, ptr %324, align 8, !dbg !714
  %325 = load ptr, ptr %10, align 8, !dbg !715
  %326 = getelementptr inbounds %struct.nn_usock, ptr %325, i32 0, i32 0, !dbg !716
  call void @nn_fsm_stopped(ptr noundef %326, i32 noundef 6), !dbg !717
  br label %327, !dbg !717

327:                                              ; preds = %322, %191
  call void @llvm.dbg.label(metadata !718), !dbg !719
  br label %991, !dbg !720

328:                                              ; preds = %266
  %329 = load ptr, ptr %10, align 8, !dbg !721
  %330 = getelementptr inbounds %struct.nn_usock, ptr %329, i32 0, i32 1, !dbg !722
  %331 = load i32, ptr %330, align 8, !dbg !722
  switch i32 %331, label %986 [
    i32 1, label %332
    i32 2, label %351
    i32 3, label %376
    i32 4, label %399
    i32 5, label %426
    i32 6, label %544
    i32 7, label %720
    i32 8, label %783
    i32 9, label %788
    i32 10, label %807
    i32 11, label %938
  ], !dbg !723

332:                                              ; preds = %328
  %333 = load ptr, ptr %8, align 8, !dbg !724
  %334 = icmp eq ptr %333, null, !dbg !727
  br i1 %334, label %335, label %346, !dbg !728

335:                                              ; preds = %332
  %336 = load i32, ptr %7, align 4, !dbg !729
  switch i32 %336, label %340 [
    i32 -2, label %337
  ], !dbg !731

337:                                              ; preds = %335
  %338 = load ptr, ptr %10, align 8, !dbg !732
  %339 = getelementptr inbounds %struct.nn_usock, ptr %338, i32 0, i32 1, !dbg !734
  store i32 2, ptr %339, align 8, !dbg !735
  br label %991, !dbg !736

340:                                              ; preds = %335
  br label %341, !dbg !737

341:                                              ; preds = %340
  %342 = load ptr, ptr @stderr, align 8, !dbg !738
  %343 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %342, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 536), !dbg !738
  call void @nn_err_abort() #8, !dbg !738
  unreachable, !dbg !738

344:                                              ; No predecessors!
  br label %345, !dbg !742

345:                                              ; preds = %344
  br label %346, !dbg !743

346:                                              ; preds = %345, %332
  br label %347, !dbg !744

347:                                              ; preds = %346
  %348 = load ptr, ptr @stderr, align 8, !dbg !745
  %349 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %348, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 539), !dbg !745
  call void @nn_err_abort() #8, !dbg !745
  unreachable, !dbg !745

350:                                              ; No predecessors!
  br label %351, !dbg !749

351:                                              ; preds = %328, %350
  %352 = load ptr, ptr %8, align 8, !dbg !750
  %353 = icmp eq ptr %352, null, !dbg !752
  br i1 %353, label %354, label %371, !dbg !753

354:                                              ; preds = %351
  %355 = load i32, ptr %7, align 4, !dbg !754
  switch i32 %355, label %365 [
    i32 4, label %356
    i32 5, label %359
    i32 2, label %362
  ], !dbg !756

356:                                              ; preds = %354
  %357 = load ptr, ptr %10, align 8, !dbg !757
  %358 = getelementptr inbounds %struct.nn_usock, ptr %357, i32 0, i32 1, !dbg !759
  store i32 9, ptr %358, align 8, !dbg !760
  br label %991, !dbg !761

359:                                              ; preds = %354
  %360 = load ptr, ptr %10, align 8, !dbg !762
  %361 = getelementptr inbounds %struct.nn_usock, ptr %360, i32 0, i32 1, !dbg !763
  store i32 5, ptr %361, align 8, !dbg !764
  br label %991, !dbg !765

362:                                              ; preds = %354
  %363 = load ptr, ptr %10, align 8, !dbg !766
  %364 = getelementptr inbounds %struct.nn_usock, ptr %363, i32 0, i32 1, !dbg !767
  store i32 3, ptr %364, align 8, !dbg !768
  br label %991, !dbg !769

365:                                              ; preds = %354
  br label %366, !dbg !770

366:                                              ; preds = %365
  %367 = load ptr, ptr @stderr, align 8, !dbg !771
  %368 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %367, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 562), !dbg !771
  call void @nn_err_abort() #8, !dbg !771
  unreachable, !dbg !771

369:                                              ; No predecessors!
  br label %370, !dbg !775

370:                                              ; preds = %369
  br label %371, !dbg !776

371:                                              ; preds = %370, %351
  br label %372, !dbg !777

372:                                              ; preds = %371
  %373 = load ptr, ptr @stderr, align 8, !dbg !778
  %374 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %373, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 565), !dbg !778
  call void @nn_err_abort() #8, !dbg !778
  unreachable, !dbg !778

375:                                              ; No predecessors!
  br label %376, !dbg !782

376:                                              ; preds = %328, %375
  %377 = load ptr, ptr %8, align 8, !dbg !783
  %378 = icmp eq ptr %377, null, !dbg !785
  br i1 %378, label %379, label %394, !dbg !786

379:                                              ; preds = %376
  %380 = load i32, ptr %7, align 4, !dbg !787
  switch i32 %380, label %388 [
    i32 7, label %381
  ], !dbg !789

381:                                              ; preds = %379
  %382 = load ptr, ptr %10, align 8, !dbg !790
  %383 = getelementptr inbounds %struct.nn_usock, ptr %382, i32 0, i32 1, !dbg !792
  store i32 4, ptr %383, align 8, !dbg !793
  %384 = load ptr, ptr %10, align 8, !dbg !794
  %385 = getelementptr inbounds %struct.nn_usock, ptr %384, i32 0, i32 0, !dbg !795
  %386 = load ptr, ptr %10, align 8, !dbg !796
  %387 = getelementptr inbounds %struct.nn_usock, ptr %386, i32 0, i32 13, !dbg !797
  call void @nn_fsm_raise(ptr noundef %385, ptr noundef %387, i32 noundef 2), !dbg !798
  br label %991, !dbg !799

388:                                              ; preds = %379
  br label %389, !dbg !800

389:                                              ; preds = %388
  %390 = load ptr, ptr @stderr, align 8, !dbg !801
  %391 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %390, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 581), !dbg !801
  call void @nn_err_abort() #8, !dbg !801
  unreachable, !dbg !801

392:                                              ; No predecessors!
  br label %393, !dbg !805

393:                                              ; preds = %392
  br label %394, !dbg !806

394:                                              ; preds = %393, %376
  br label %395, !dbg !807

395:                                              ; preds = %394
  %396 = load ptr, ptr @stderr, align 8, !dbg !808
  %397 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %396, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 584), !dbg !808
  call void @nn_err_abort() #8, !dbg !808
  unreachable, !dbg !808

398:                                              ; No predecessors!
  br label %399, !dbg !812

399:                                              ; preds = %328, %398
  %400 = load ptr, ptr %8, align 8, !dbg !813
  %401 = icmp eq ptr %400, null, !dbg !815
  br i1 %401, label %402, label %421, !dbg !816

402:                                              ; preds = %399
  %403 = load i32, ptr %7, align 4, !dbg !817
  switch i32 %403, label %415 [
    i32 6, label %404
  ], !dbg !819

404:                                              ; preds = %402
  %405 = load ptr, ptr %10, align 8, !dbg !820
  %406 = getelementptr inbounds %struct.nn_usock, ptr %405, i32 0, i32 2, !dbg !822
  %407 = load ptr, ptr %406, align 8, !dbg !822
  %408 = load ptr, ptr %10, align 8, !dbg !823
  %409 = getelementptr inbounds %struct.nn_usock, ptr %408, i32 0, i32 3, !dbg !824
  %410 = load i32, ptr %409, align 8, !dbg !824
  %411 = load ptr, ptr %10, align 8, !dbg !825
  %412 = getelementptr inbounds %struct.nn_usock, ptr %411, i32 0, i32 4, !dbg !826
  call void @nn_worker_add_fd(ptr noundef %407, i32 noundef %410, ptr noundef %412), !dbg !827
  %413 = load ptr, ptr %10, align 8, !dbg !828
  %414 = getelementptr inbounds %struct.nn_usock, ptr %413, i32 0, i32 1, !dbg !829
  store i32 6, ptr %414, align 8, !dbg !830
  br label %991, !dbg !831

415:                                              ; preds = %402
  br label %416, !dbg !832

416:                                              ; preds = %415
  %417 = load ptr, ptr @stderr, align 8, !dbg !833
  %418 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %417, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 599), !dbg !833
  call void @nn_err_abort() #8, !dbg !833
  unreachable, !dbg !833

419:                                              ; No predecessors!
  br label %420, !dbg !837

420:                                              ; preds = %419
  br label %421, !dbg !838

421:                                              ; preds = %420, %399
  br label %422, !dbg !839

422:                                              ; preds = %421
  %423 = load ptr, ptr @stderr, align 8, !dbg !840
  %424 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %423, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 602), !dbg !840
  call void @nn_err_abort() #8, !dbg !840
  unreachable, !dbg !840

425:                                              ; No predecessors!
  br label %426, !dbg !844

426:                                              ; preds = %328, %425
  %427 = load ptr, ptr %8, align 8, !dbg !845
  %428 = icmp eq ptr %427, null, !dbg !847
  br i1 %428, label %429, label %479, !dbg !848

429:                                              ; preds = %426
  %430 = load i32, ptr %7, align 4, !dbg !849
  switch i32 %430, label %473 [
    i32 7, label %431
    i32 8, label %443
  ], !dbg !851

431:                                              ; preds = %429
  %432 = load ptr, ptr %10, align 8, !dbg !852
  %433 = getelementptr inbounds %struct.nn_usock, ptr %432, i32 0, i32 1, !dbg !854
  store i32 6, ptr %433, align 8, !dbg !855
  %434 = load ptr, ptr %10, align 8, !dbg !856
  %435 = getelementptr inbounds %struct.nn_usock, ptr %434, i32 0, i32 2, !dbg !857
  %436 = load ptr, ptr %435, align 8, !dbg !857
  %437 = load ptr, ptr %10, align 8, !dbg !858
  %438 = getelementptr inbounds %struct.nn_usock, ptr %437, i32 0, i32 8, !dbg !859
  call void @nn_worker_execute(ptr noundef %436, ptr noundef %438), !dbg !860
  %439 = load ptr, ptr %10, align 8, !dbg !861
  %440 = getelementptr inbounds %struct.nn_usock, ptr %439, i32 0, i32 0, !dbg !862
  %441 = load ptr, ptr %10, align 8, !dbg !863
  %442 = getelementptr inbounds %struct.nn_usock, ptr %441, i32 0, i32 13, !dbg !864
  call void @nn_fsm_raise(ptr noundef %440, ptr noundef %442, i32 noundef 1), !dbg !865
  br label %991, !dbg !866

443:                                              ; preds = %429
  %444 = load ptr, ptr %10, align 8, !dbg !867
  %445 = getelementptr inbounds %struct.nn_usock, ptr %444, i32 0, i32 3, !dbg !868
  %446 = load i32, ptr %445, align 8, !dbg !868
  %447 = call i32 @close(i32 noundef %446), !dbg !869
  store i32 %447, ptr %9, align 4, !dbg !870
  br label %448, !dbg !871

448:                                              ; preds = %443
  %449 = load i32, ptr %9, align 4, !dbg !872
  %450 = icmp eq i32 %449, 0, !dbg !872
  %451 = xor i1 %450, true, !dbg !872
  %452 = zext i1 %451 to i32, !dbg !872
  %453 = sext i32 %452 to i64, !dbg !872
  %454 = icmp ne i64 %453, 0, !dbg !872
  br i1 %454, label %455, label %463, !dbg !875

455:                                              ; preds = %448
  %456 = load ptr, ptr @stderr, align 8, !dbg !876
  %457 = call ptr @__errno_location() #9, !dbg !876
  %458 = load i32, ptr %457, align 4, !dbg !876
  %459 = call ptr @nn_err_strerror(i32 noundef %458), !dbg !876
  %460 = call ptr @__errno_location() #9, !dbg !876
  %461 = load i32, ptr %460, align 4, !dbg !876
  %462 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %456, ptr noundef @.str.5, ptr noundef %459, i32 noundef %461, ptr noundef @.str.2, i32 noundef 619), !dbg !876
  call void @nn_err_abort() #8, !dbg !876
  unreachable, !dbg !876

463:                                              ; preds = %448
  br label %464, !dbg !875

464:                                              ; preds = %463
  %465 = load ptr, ptr %10, align 8, !dbg !878
  %466 = getelementptr inbounds %struct.nn_usock, ptr %465, i32 0, i32 3, !dbg !879
  store i32 -1, ptr %466, align 8, !dbg !880
  %467 = load ptr, ptr %10, align 8, !dbg !881
  %468 = getelementptr inbounds %struct.nn_usock, ptr %467, i32 0, i32 1, !dbg !882
  store i32 8, ptr %468, align 8, !dbg !883
  %469 = load ptr, ptr %10, align 8, !dbg !884
  %470 = getelementptr inbounds %struct.nn_usock, ptr %469, i32 0, i32 0, !dbg !885
  %471 = load ptr, ptr %10, align 8, !dbg !886
  %472 = getelementptr inbounds %struct.nn_usock, ptr %471, i32 0, i32 16, !dbg !887
  call void @nn_fsm_raise(ptr noundef %470, ptr noundef %472, i32 noundef 5), !dbg !888
  br label %991, !dbg !889

473:                                              ; preds = %429
  br label %474, !dbg !890

474:                                              ; preds = %473
  %475 = load ptr, ptr @stderr, align 8, !dbg !891
  %476 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %475, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 626), !dbg !891
  call void @nn_err_abort() #8, !dbg !891
  unreachable, !dbg !891

477:                                              ; No predecessors!
  br label %478, !dbg !895

478:                                              ; preds = %477
  br label %479, !dbg !896

479:                                              ; preds = %478, %426
  %480 = load ptr, ptr %8, align 8, !dbg !897
  %481 = load ptr, ptr %10, align 8, !dbg !899
  %482 = getelementptr inbounds %struct.nn_usock, ptr %481, i32 0, i32 4, !dbg !900
  %483 = icmp eq ptr %480, %482, !dbg !901
  br i1 %483, label %484, label %539, !dbg !902

484:                                              ; preds = %479
  %485 = load i32, ptr %7, align 4, !dbg !903
  switch i32 %485, label %533 [
    i32 2, label %486
    i32 3, label %498
  ], !dbg !905

486:                                              ; preds = %484
  %487 = load ptr, ptr %10, align 8, !dbg !906
  %488 = getelementptr inbounds %struct.nn_usock, ptr %487, i32 0, i32 2, !dbg !908
  %489 = load ptr, ptr %488, align 8, !dbg !908
  %490 = load ptr, ptr %10, align 8, !dbg !909
  %491 = getelementptr inbounds %struct.nn_usock, ptr %490, i32 0, i32 4, !dbg !910
  call void @nn_worker_reset_out(ptr noundef %489, ptr noundef %491), !dbg !911
  %492 = load ptr, ptr %10, align 8, !dbg !912
  %493 = getelementptr inbounds %struct.nn_usock, ptr %492, i32 0, i32 1, !dbg !913
  store i32 6, ptr %493, align 8, !dbg !914
  %494 = load ptr, ptr %10, align 8, !dbg !915
  %495 = getelementptr inbounds %struct.nn_usock, ptr %494, i32 0, i32 0, !dbg !916
  %496 = load ptr, ptr %10, align 8, !dbg !917
  %497 = getelementptr inbounds %struct.nn_usock, ptr %496, i32 0, i32 13, !dbg !918
  call void @nn_fsm_raise(ptr noundef %495, ptr noundef %497, i32 noundef 1), !dbg !919
  br label %991, !dbg !920

498:                                              ; preds = %484
  %499 = load ptr, ptr %10, align 8, !dbg !921
  %500 = getelementptr inbounds %struct.nn_usock, ptr %499, i32 0, i32 2, !dbg !922
  %501 = load ptr, ptr %500, align 8, !dbg !922
  %502 = load ptr, ptr %10, align 8, !dbg !923
  %503 = getelementptr inbounds %struct.nn_usock, ptr %502, i32 0, i32 4, !dbg !924
  call void @nn_worker_rm_fd(ptr noundef %501, ptr noundef %503), !dbg !925
  %504 = load ptr, ptr %10, align 8, !dbg !926
  %505 = getelementptr inbounds %struct.nn_usock, ptr %504, i32 0, i32 3, !dbg !927
  %506 = load i32, ptr %505, align 8, !dbg !927
  %507 = call i32 @close(i32 noundef %506), !dbg !928
  store i32 %507, ptr %9, align 4, !dbg !929
  br label %508, !dbg !930

508:                                              ; preds = %498
  %509 = load i32, ptr %9, align 4, !dbg !931
  %510 = icmp eq i32 %509, 0, !dbg !931
  %511 = xor i1 %510, true, !dbg !931
  %512 = zext i1 %511 to i32, !dbg !931
  %513 = sext i32 %512 to i64, !dbg !931
  %514 = icmp ne i64 %513, 0, !dbg !931
  br i1 %514, label %515, label %523, !dbg !934

515:                                              ; preds = %508
  %516 = load ptr, ptr @stderr, align 8, !dbg !935
  %517 = call ptr @__errno_location() #9, !dbg !935
  %518 = load i32, ptr %517, align 4, !dbg !935
  %519 = call ptr @nn_err_strerror(i32 noundef %518), !dbg !935
  %520 = call ptr @__errno_location() #9, !dbg !935
  %521 = load i32, ptr %520, align 4, !dbg !935
  %522 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %516, ptr noundef @.str.5, ptr noundef %519, i32 noundef %521, ptr noundef @.str.2, i32 noundef 640), !dbg !935
  call void @nn_err_abort() #8, !dbg !935
  unreachable, !dbg !935

523:                                              ; preds = %508
  br label %524, !dbg !934

524:                                              ; preds = %523
  %525 = load ptr, ptr %10, align 8, !dbg !937
  %526 = getelementptr inbounds %struct.nn_usock, ptr %525, i32 0, i32 3, !dbg !938
  store i32 -1, ptr %526, align 8, !dbg !939
  %527 = load ptr, ptr %10, align 8, !dbg !940
  %528 = getelementptr inbounds %struct.nn_usock, ptr %527, i32 0, i32 1, !dbg !941
  store i32 8, ptr %528, align 8, !dbg !942
  %529 = load ptr, ptr %10, align 8, !dbg !943
  %530 = getelementptr inbounds %struct.nn_usock, ptr %529, i32 0, i32 0, !dbg !944
  %531 = load ptr, ptr %10, align 8, !dbg !945
  %532 = getelementptr inbounds %struct.nn_usock, ptr %531, i32 0, i32 16, !dbg !946
  call void @nn_fsm_raise(ptr noundef %530, ptr noundef %532, i32 noundef 5), !dbg !947
  br label %991, !dbg !948

533:                                              ; preds = %484
  br label %534, !dbg !949

534:                                              ; preds = %533
  %535 = load ptr, ptr @stderr, align 8, !dbg !950
  %536 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %535, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 646), !dbg !950
  call void @nn_err_abort() #8, !dbg !950
  unreachable, !dbg !950

537:                                              ; No predecessors!
  br label %538, !dbg !954

538:                                              ; preds = %537
  br label %539, !dbg !955

539:                                              ; preds = %538, %479
  br label %540, !dbg !956

540:                                              ; preds = %539
  %541 = load ptr, ptr @stderr, align 8, !dbg !957
  %542 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %541, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 649), !dbg !957
  call void @nn_err_abort() #8, !dbg !957
  unreachable, !dbg !957

543:                                              ; No predecessors!
  br label %544, !dbg !961

544:                                              ; preds = %328, %543
  %545 = load ptr, ptr %8, align 8, !dbg !962
  %546 = load ptr, ptr %10, align 8, !dbg !964
  %547 = getelementptr inbounds %struct.nn_usock, ptr %546, i32 0, i32 4, !dbg !965
  %548 = icmp eq ptr %545, %547, !dbg !966
  br i1 %548, label %549, label %696, !dbg !967

549:                                              ; preds = %544
  %550 = load i32, ptr %7, align 4, !dbg !968
  switch i32 %550, label %690 [
    i32 1, label %551
    i32 2, label %608
    i32 3, label %654
  ], !dbg !970

551:                                              ; preds = %549
  %552 = load ptr, ptr %10, align 8, !dbg !971
  %553 = getelementptr inbounds %struct.nn_usock, ptr %552, i32 0, i32 5, !dbg !973
  %554 = getelementptr inbounds %struct.anon, ptr %553, i32 0, i32 1, !dbg !974
  %555 = load i64, ptr %554, align 8, !dbg !974
  store i64 %555, ptr %12, align 8, !dbg !975
  %556 = load ptr, ptr %10, align 8, !dbg !976
  %557 = load ptr, ptr %10, align 8, !dbg !977
  %558 = getelementptr inbounds %struct.nn_usock, ptr %557, i32 0, i32 5, !dbg !978
  %559 = getelementptr inbounds %struct.anon, ptr %558, i32 0, i32 0, !dbg !979
  %560 = load ptr, ptr %559, align 8, !dbg !979
  %561 = call i32 @nn_usock_recv_raw(ptr noundef %556, ptr noundef %560, ptr noundef %12), !dbg !980
  store i32 %561, ptr %9, align 4, !dbg !981
  %562 = load i32, ptr %9, align 4, !dbg !982
  %563 = icmp eq i32 %562, 0, !dbg !982
  %564 = zext i1 %563 to i32, !dbg !982
  %565 = sext i32 %564 to i64, !dbg !982
  %566 = icmp ne i64 %565, 0, !dbg !982
  br i1 %566, label %567, label %590, !dbg !984

567:                                              ; preds = %551
  %568 = load i64, ptr %12, align 8, !dbg !985
  %569 = load ptr, ptr %10, align 8, !dbg !987
  %570 = getelementptr inbounds %struct.nn_usock, ptr %569, i32 0, i32 5, !dbg !988
  %571 = getelementptr inbounds %struct.anon, ptr %570, i32 0, i32 1, !dbg !989
  %572 = load i64, ptr %571, align 8, !dbg !990
  %573 = sub i64 %572, %568, !dbg !990
  store i64 %573, ptr %571, align 8, !dbg !990
  %574 = load ptr, ptr %10, align 8, !dbg !991
  %575 = getelementptr inbounds %struct.nn_usock, ptr %574, i32 0, i32 5, !dbg !993
  %576 = getelementptr inbounds %struct.anon, ptr %575, i32 0, i32 1, !dbg !994
  %577 = load i64, ptr %576, align 8, !dbg !994
  %578 = icmp ne i64 %577, 0, !dbg !991
  br i1 %578, label %589, label %579, !dbg !995

579:                                              ; preds = %567
  %580 = load ptr, ptr %10, align 8, !dbg !996
  %581 = getelementptr inbounds %struct.nn_usock, ptr %580, i32 0, i32 2, !dbg !998
  %582 = load ptr, ptr %581, align 8, !dbg !998
  %583 = load ptr, ptr %10, align 8, !dbg !999
  %584 = getelementptr inbounds %struct.nn_usock, ptr %583, i32 0, i32 4, !dbg !1000
  call void @nn_worker_reset_in(ptr noundef %582, ptr noundef %584), !dbg !1001
  %585 = load ptr, ptr %10, align 8, !dbg !1002
  %586 = getelementptr inbounds %struct.nn_usock, ptr %585, i32 0, i32 0, !dbg !1003
  %587 = load ptr, ptr %10, align 8, !dbg !1004
  %588 = getelementptr inbounds %struct.nn_usock, ptr %587, i32 0, i32 15, !dbg !1005
  call void @nn_fsm_raise(ptr noundef %586, ptr noundef %588, i32 noundef 4), !dbg !1006
  br label %589, !dbg !1007

589:                                              ; preds = %579, %567
  br label %991, !dbg !1008

590:                                              ; preds = %551
  br label %591, !dbg !1009

591:                                              ; preds = %590
  %592 = load i32, ptr %9, align 4, !dbg !1010
  %593 = icmp eq i32 %592, -104, !dbg !1010
  %594 = xor i1 %593, true, !dbg !1010
  %595 = zext i1 %594 to i32, !dbg !1010
  %596 = sext i32 %595 to i64, !dbg !1010
  %597 = icmp ne i64 %596, 0, !dbg !1010
  br i1 %597, label %598, label %606, !dbg !1013

598:                                              ; preds = %591
  %599 = load ptr, ptr @stderr, align 8, !dbg !1014
  %600 = load i32, ptr %9, align 4, !dbg !1014
  %601 = sub nsw i32 0, %600, !dbg !1014
  %602 = call ptr @nn_err_strerror(i32 noundef %601), !dbg !1014
  %603 = load i32, ptr %9, align 4, !dbg !1014
  %604 = sub nsw i32 0, %603, !dbg !1014
  %605 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %599, ptr noundef @.str.5, ptr noundef %602, i32 noundef %604, ptr noundef @.str.2, i32 noundef 670), !dbg !1014
  call void @nn_err_abort() #8, !dbg !1014
  unreachable, !dbg !1014

606:                                              ; preds = %591
  br label %607, !dbg !1013

607:                                              ; preds = %606
  br label %655, !dbg !1016

608:                                              ; preds = %549
  %609 = load ptr, ptr %10, align 8, !dbg !1017
  %610 = load ptr, ptr %10, align 8, !dbg !1018
  %611 = getelementptr inbounds %struct.nn_usock, ptr %610, i32 0, i32 6, !dbg !1019
  %612 = getelementptr inbounds %struct.anon.0, ptr %611, i32 0, i32 0, !dbg !1020
  %613 = call i32 @nn_usock_send_raw(ptr noundef %609, ptr noundef %612), !dbg !1021
  store i32 %613, ptr %9, align 4, !dbg !1022
  %614 = load i32, ptr %9, align 4, !dbg !1023
  %615 = icmp eq i32 %614, 0, !dbg !1023
  %616 = zext i1 %615 to i32, !dbg !1023
  %617 = sext i32 %616 to i64, !dbg !1023
  %618 = icmp ne i64 %617, 0, !dbg !1023
  br i1 %618, label %619, label %629, !dbg !1025

619:                                              ; preds = %608
  %620 = load ptr, ptr %10, align 8, !dbg !1026
  %621 = getelementptr inbounds %struct.nn_usock, ptr %620, i32 0, i32 2, !dbg !1028
  %622 = load ptr, ptr %621, align 8, !dbg !1028
  %623 = load ptr, ptr %10, align 8, !dbg !1029
  %624 = getelementptr inbounds %struct.nn_usock, ptr %623, i32 0, i32 4, !dbg !1030
  call void @nn_worker_reset_out(ptr noundef %622, ptr noundef %624), !dbg !1031
  %625 = load ptr, ptr %10, align 8, !dbg !1032
  %626 = getelementptr inbounds %struct.nn_usock, ptr %625, i32 0, i32 0, !dbg !1033
  %627 = load ptr, ptr %10, align 8, !dbg !1034
  %628 = getelementptr inbounds %struct.nn_usock, ptr %627, i32 0, i32 14, !dbg !1035
  call void @nn_fsm_raise(ptr noundef %626, ptr noundef %628, i32 noundef 3), !dbg !1036
  br label %991, !dbg !1037

629:                                              ; preds = %608
  %630 = load i32, ptr %9, align 4, !dbg !1038
  %631 = icmp eq i32 %630, -11, !dbg !1038
  %632 = zext i1 %631 to i32, !dbg !1038
  %633 = sext i32 %632 to i64, !dbg !1038
  %634 = icmp ne i64 %633, 0, !dbg !1038
  br i1 %634, label %635, label %636, !dbg !1040

635:                                              ; preds = %629
  br label %991, !dbg !1041

636:                                              ; preds = %629
  br label %637, !dbg !1042

637:                                              ; preds = %636
  %638 = load i32, ptr %9, align 4, !dbg !1043
  %639 = icmp eq i32 %638, -104, !dbg !1043
  %640 = xor i1 %639, true, !dbg !1043
  %641 = zext i1 %640 to i32, !dbg !1043
  %642 = sext i32 %641 to i64, !dbg !1043
  %643 = icmp ne i64 %642, 0, !dbg !1043
  br i1 %643, label %644, label %652, !dbg !1046

644:                                              ; preds = %637
  %645 = load ptr, ptr @stderr, align 8, !dbg !1047
  %646 = load i32, ptr %9, align 4, !dbg !1047
  %647 = sub nsw i32 0, %646, !dbg !1047
  %648 = call ptr @nn_err_strerror(i32 noundef %647), !dbg !1047
  %649 = load i32, ptr %9, align 4, !dbg !1047
  %650 = sub nsw i32 0, %649, !dbg !1047
  %651 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %645, ptr noundef @.str.5, ptr noundef %648, i32 noundef %650, ptr noundef @.str.2, i32 noundef 682), !dbg !1047
  call void @nn_err_abort() #8, !dbg !1047
  unreachable, !dbg !1047

652:                                              ; preds = %637
  br label %653, !dbg !1046

653:                                              ; preds = %652
  br label %655, !dbg !1049

654:                                              ; preds = %549
  br label %655, !dbg !1049

655:                                              ; preds = %654, %653, %607
  call void @llvm.dbg.label(metadata !1050), !dbg !1051
  %656 = load ptr, ptr %10, align 8, !dbg !1052
  %657 = getelementptr inbounds %struct.nn_usock, ptr %656, i32 0, i32 2, !dbg !1053
  %658 = load ptr, ptr %657, align 8, !dbg !1053
  %659 = load ptr, ptr %10, align 8, !dbg !1054
  %660 = getelementptr inbounds %struct.nn_usock, ptr %659, i32 0, i32 4, !dbg !1055
  call void @nn_worker_rm_fd(ptr noundef %658, ptr noundef %660), !dbg !1056
  %661 = load ptr, ptr %10, align 8, !dbg !1057
  %662 = getelementptr inbounds %struct.nn_usock, ptr %661, i32 0, i32 3, !dbg !1058
  %663 = load i32, ptr %662, align 8, !dbg !1058
  %664 = call i32 @close(i32 noundef %663), !dbg !1059
  store i32 %664, ptr %9, align 4, !dbg !1060
  br label %665, !dbg !1061

665:                                              ; preds = %655
  %666 = load i32, ptr %9, align 4, !dbg !1062
  %667 = icmp eq i32 %666, 0, !dbg !1062
  %668 = xor i1 %667, true, !dbg !1062
  %669 = zext i1 %668 to i32, !dbg !1062
  %670 = sext i32 %669 to i64, !dbg !1062
  %671 = icmp ne i64 %670, 0, !dbg !1062
  br i1 %671, label %672, label %680, !dbg !1065

672:                                              ; preds = %665
  %673 = load ptr, ptr @stderr, align 8, !dbg !1066
  %674 = call ptr @__errno_location() #9, !dbg !1066
  %675 = load i32, ptr %674, align 4, !dbg !1066
  %676 = call ptr @nn_err_strerror(i32 noundef %675), !dbg !1066
  %677 = call ptr @__errno_location() #9, !dbg !1066
  %678 = load i32, ptr %677, align 4, !dbg !1066
  %679 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %673, ptr noundef @.str.5, ptr noundef %676, i32 noundef %678, ptr noundef @.str.2, i32 noundef 688), !dbg !1066
  call void @nn_err_abort() #8, !dbg !1066
  unreachable, !dbg !1066

680:                                              ; preds = %665
  br label %681, !dbg !1065

681:                                              ; preds = %680
  %682 = load ptr, ptr %10, align 8, !dbg !1068
  %683 = getelementptr inbounds %struct.nn_usock, ptr %682, i32 0, i32 3, !dbg !1069
  store i32 -1, ptr %683, align 8, !dbg !1070
  %684 = load ptr, ptr %10, align 8, !dbg !1071
  %685 = getelementptr inbounds %struct.nn_usock, ptr %684, i32 0, i32 1, !dbg !1072
  store i32 8, ptr %685, align 8, !dbg !1073
  %686 = load ptr, ptr %10, align 8, !dbg !1074
  %687 = getelementptr inbounds %struct.nn_usock, ptr %686, i32 0, i32 0, !dbg !1075
  %688 = load ptr, ptr %10, align 8, !dbg !1076
  %689 = getelementptr inbounds %struct.nn_usock, ptr %688, i32 0, i32 16, !dbg !1077
  call void @nn_fsm_raise(ptr noundef %687, ptr noundef %689, i32 noundef 5), !dbg !1078
  br label %991, !dbg !1079

690:                                              ; preds = %549
  br label %691, !dbg !1080

691:                                              ; preds = %690
  %692 = load ptr, ptr @stderr, align 8, !dbg !1081
  %693 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %692, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 694), !dbg !1081
  call void @nn_err_abort() #8, !dbg !1081
  unreachable, !dbg !1081

694:                                              ; No predecessors!
  br label %695, !dbg !1085

695:                                              ; preds = %694
  br label %696, !dbg !1086

696:                                              ; preds = %695, %544
  %697 = load ptr, ptr %8, align 8, !dbg !1087
  %698 = icmp eq ptr %697, null, !dbg !1089
  br i1 %698, label %699, label %715, !dbg !1090

699:                                              ; preds = %696
  %700 = load i32, ptr %7, align 4, !dbg !1091
  switch i32 %700, label %709 [
    i32 8, label %701
  ], !dbg !1093

701:                                              ; preds = %699
  %702 = load ptr, ptr %10, align 8, !dbg !1094
  %703 = getelementptr inbounds %struct.nn_usock, ptr %702, i32 0, i32 1, !dbg !1096
  store i32 7, ptr %703, align 8, !dbg !1097
  %704 = load ptr, ptr %10, align 8, !dbg !1098
  %705 = getelementptr inbounds %struct.nn_usock, ptr %704, i32 0, i32 2, !dbg !1099
  %706 = load ptr, ptr %705, align 8, !dbg !1099
  %707 = load ptr, ptr %10, align 8, !dbg !1100
  %708 = getelementptr inbounds %struct.nn_usock, ptr %707, i32 0, i32 12, !dbg !1101
  call void @nn_worker_execute(ptr noundef %706, ptr noundef %708), !dbg !1102
  br label %991, !dbg !1103

709:                                              ; preds = %699
  br label %710, !dbg !1104

710:                                              ; preds = %709
  %711 = load ptr, ptr @stderr, align 8, !dbg !1105
  %712 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %711, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 704), !dbg !1105
  call void @nn_err_abort() #8, !dbg !1105
  unreachable, !dbg !1105

713:                                              ; No predecessors!
  br label %714, !dbg !1109

714:                                              ; preds = %713
  br label %715, !dbg !1110

715:                                              ; preds = %714, %696
  br label %716, !dbg !1111

716:                                              ; preds = %715
  %717 = load ptr, ptr @stderr, align 8, !dbg !1112
  %718 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %717, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 707), !dbg !1112
  call void @nn_err_abort() #8, !dbg !1112
  unreachable, !dbg !1112

719:                                              ; No predecessors!
  br label %720, !dbg !1116

720:                                              ; preds = %328, %719
  %721 = load ptr, ptr %8, align 8, !dbg !1117
  %722 = load ptr, ptr %10, align 8, !dbg !1119
  %723 = getelementptr inbounds %struct.nn_usock, ptr %722, i32 0, i32 12, !dbg !1120
  %724 = icmp eq ptr %721, %723, !dbg !1121
  br i1 %724, label %725, label %772, !dbg !1122

725:                                              ; preds = %720
  br label %726, !dbg !1123

726:                                              ; preds = %725
  %727 = load i32, ptr %7, align 4, !dbg !1125
  %728 = icmp eq i32 %727, 1, !dbg !1125
  %729 = xor i1 %728, true, !dbg !1125
  %730 = zext i1 %729 to i32, !dbg !1125
  %731 = sext i32 %730 to i64, !dbg !1125
  %732 = icmp ne i64 %731, 0, !dbg !1125
  br i1 %732, label %733, label %736, !dbg !1128

733:                                              ; preds = %726
  %734 = load ptr, ptr @stderr, align 8, !dbg !1129
  %735 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %734, ptr noundef @.str, ptr noundef @.str.12, ptr noundef @.str.2, i32 noundef 714), !dbg !1129
  call void @nn_err_abort() #8, !dbg !1129
  unreachable, !dbg !1129

736:                                              ; preds = %726
  br label %737, !dbg !1128

737:                                              ; preds = %736
  %738 = load ptr, ptr %10, align 8, !dbg !1131
  %739 = getelementptr inbounds %struct.nn_usock, ptr %738, i32 0, i32 2, !dbg !1132
  %740 = load ptr, ptr %739, align 8, !dbg !1132
  %741 = load ptr, ptr %10, align 8, !dbg !1133
  %742 = getelementptr inbounds %struct.nn_usock, ptr %741, i32 0, i32 4, !dbg !1134
  call void @nn_worker_rm_fd(ptr noundef %740, ptr noundef %742), !dbg !1135
  %743 = load ptr, ptr %10, align 8, !dbg !1136
  %744 = getelementptr inbounds %struct.nn_usock, ptr %743, i32 0, i32 3, !dbg !1137
  %745 = load i32, ptr %744, align 8, !dbg !1137
  %746 = call i32 @close(i32 noundef %745), !dbg !1138
  store i32 %746, ptr %9, align 4, !dbg !1139
  br label %747, !dbg !1140

747:                                              ; preds = %737
  %748 = load i32, ptr %9, align 4, !dbg !1141
  %749 = icmp eq i32 %748, 0, !dbg !1141
  %750 = xor i1 %749, true, !dbg !1141
  %751 = zext i1 %750 to i32, !dbg !1141
  %752 = sext i32 %751 to i64, !dbg !1141
  %753 = icmp ne i64 %752, 0, !dbg !1141
  br i1 %753, label %754, label %762, !dbg !1144

754:                                              ; preds = %747
  %755 = load ptr, ptr @stderr, align 8, !dbg !1145
  %756 = call ptr @__errno_location() #9, !dbg !1145
  %757 = load i32, ptr %756, align 4, !dbg !1145
  %758 = call ptr @nn_err_strerror(i32 noundef %757), !dbg !1145
  %759 = call ptr @__errno_location() #9, !dbg !1145
  %760 = load i32, ptr %759, align 4, !dbg !1145
  %761 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %755, ptr noundef @.str.5, ptr noundef %758, i32 noundef %760, ptr noundef @.str.2, i32 noundef 717), !dbg !1145
  call void @nn_err_abort() #8, !dbg !1145
  unreachable, !dbg !1145

762:                                              ; preds = %747
  br label %763, !dbg !1144

763:                                              ; preds = %762
  %764 = load ptr, ptr %10, align 8, !dbg !1147
  %765 = getelementptr inbounds %struct.nn_usock, ptr %764, i32 0, i32 3, !dbg !1148
  store i32 -1, ptr %765, align 8, !dbg !1149
  %766 = load ptr, ptr %10, align 8, !dbg !1150
  %767 = getelementptr inbounds %struct.nn_usock, ptr %766, i32 0, i32 1, !dbg !1151
  store i32 8, ptr %767, align 8, !dbg !1152
  %768 = load ptr, ptr %10, align 8, !dbg !1153
  %769 = getelementptr inbounds %struct.nn_usock, ptr %768, i32 0, i32 0, !dbg !1154
  %770 = load ptr, ptr %10, align 8, !dbg !1155
  %771 = getelementptr inbounds %struct.nn_usock, ptr %770, i32 0, i32 16, !dbg !1156
  call void @nn_fsm_raise(ptr noundef %769, ptr noundef %771, i32 noundef 5), !dbg !1157
  br label %991, !dbg !1158

772:                                              ; preds = %720
  %773 = load ptr, ptr %8, align 8, !dbg !1159
  %774 = load ptr, ptr %10, align 8, !dbg !1161
  %775 = getelementptr inbounds %struct.nn_usock, ptr %774, i32 0, i32 4, !dbg !1162
  %776 = icmp eq ptr %773, %775, !dbg !1163
  br i1 %776, label %777, label %778, !dbg !1164

777:                                              ; preds = %772
  br label %991, !dbg !1165

778:                                              ; preds = %772
  br label %779, !dbg !1166

779:                                              ; preds = %778
  %780 = load ptr, ptr @stderr, align 8, !dbg !1167
  %781 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %780, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 729), !dbg !1167
  call void @nn_err_abort() #8, !dbg !1167
  unreachable, !dbg !1167

782:                                              ; No predecessors!
  br label %783, !dbg !1171

783:                                              ; preds = %328, %782
  br label %784, !dbg !1172

784:                                              ; preds = %783
  %785 = load ptr, ptr @stderr, align 8, !dbg !1173
  %786 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %785, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 737), !dbg !1173
  call void @nn_err_abort() #8, !dbg !1173
  unreachable, !dbg !1173

787:                                              ; No predecessors!
  br label %788, !dbg !1177

788:                                              ; preds = %328, %787
  %789 = load ptr, ptr %8, align 8, !dbg !1178
  %790 = icmp eq ptr %789, null, !dbg !1180
  br i1 %790, label %791, label %802, !dbg !1181

791:                                              ; preds = %788
  %792 = load i32, ptr %7, align 4, !dbg !1182
  switch i32 %792, label %796 [
    i32 1, label %793
  ], !dbg !1184

793:                                              ; preds = %791
  %794 = load ptr, ptr %10, align 8, !dbg !1185
  %795 = getelementptr inbounds %struct.nn_usock, ptr %794, i32 0, i32 1, !dbg !1187
  store i32 10, ptr %795, align 8, !dbg !1188
  br label %991, !dbg !1189

796:                                              ; preds = %791
  br label %797, !dbg !1190

797:                                              ; preds = %796
  %798 = load ptr, ptr @stderr, align 8, !dbg !1191
  %799 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %798, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 751), !dbg !1191
  call void @nn_err_abort() #8, !dbg !1191
  unreachable, !dbg !1191

800:                                              ; No predecessors!
  br label %801, !dbg !1195

801:                                              ; preds = %800
  br label %802, !dbg !1196

802:                                              ; preds = %801, %788
  br label %803, !dbg !1197

803:                                              ; preds = %802
  %804 = load ptr, ptr @stderr, align 8, !dbg !1198
  %805 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %804, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 754), !dbg !1198
  call void @nn_err_abort() #8, !dbg !1198
  unreachable, !dbg !1198

806:                                              ; No predecessors!
  br label %807, !dbg !1202

807:                                              ; preds = %328, %806
  %808 = load ptr, ptr %8, align 8, !dbg !1203
  %809 = icmp eq ptr %808, null, !dbg !1205
  br i1 %809, label %810, label %829, !dbg !1206

810:                                              ; preds = %807
  %811 = load i32, ptr %7, align 4, !dbg !1207
  switch i32 %811, label %823 [
    i32 7, label %812
    i32 3, label %815
  ], !dbg !1209

812:                                              ; preds = %810
  %813 = load ptr, ptr %10, align 8, !dbg !1210
  %814 = getelementptr inbounds %struct.nn_usock, ptr %813, i32 0, i32 1, !dbg !1212
  store i32 9, ptr %814, align 8, !dbg !1213
  br label %991, !dbg !1214

815:                                              ; preds = %810
  %816 = load ptr, ptr %10, align 8, !dbg !1215
  %817 = getelementptr inbounds %struct.nn_usock, ptr %816, i32 0, i32 2, !dbg !1216
  %818 = load ptr, ptr %817, align 8, !dbg !1216
  %819 = load ptr, ptr %10, align 8, !dbg !1217
  %820 = getelementptr inbounds %struct.nn_usock, ptr %819, i32 0, i32 12, !dbg !1218
  call void @nn_worker_execute(ptr noundef %818, ptr noundef %820), !dbg !1219
  %821 = load ptr, ptr %10, align 8, !dbg !1220
  %822 = getelementptr inbounds %struct.nn_usock, ptr %821, i32 0, i32 1, !dbg !1221
  store i32 11, ptr %822, align 8, !dbg !1222
  br label %991, !dbg !1223

823:                                              ; preds = %810
  br label %824, !dbg !1224

824:                                              ; preds = %823
  %825 = load ptr, ptr @stderr, align 8, !dbg !1225
  %826 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %825, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 772), !dbg !1225
  call void @nn_err_abort() #8, !dbg !1225
  unreachable, !dbg !1225

827:                                              ; No predecessors!
  br label %828, !dbg !1229

828:                                              ; preds = %827
  br label %829, !dbg !1230

829:                                              ; preds = %828, %807
  %830 = load ptr, ptr %8, align 8, !dbg !1231
  %831 = load ptr, ptr %10, align 8, !dbg !1233
  %832 = getelementptr inbounds %struct.nn_usock, ptr %831, i32 0, i32 4, !dbg !1234
  %833 = icmp eq ptr %830, %832, !dbg !1235
  br i1 %833, label %834, label %933, !dbg !1236

834:                                              ; preds = %829
  %835 = load i32, ptr %7, align 4, !dbg !1237
  switch i32 %835, label %927 [
    i32 1, label %836
  ], !dbg !1239

836:                                              ; preds = %834
  %837 = load ptr, ptr %10, align 8, !dbg !1240
  %838 = getelementptr inbounds %struct.nn_usock, ptr %837, i32 0, i32 3, !dbg !1242
  %839 = load i32, ptr %838, align 8, !dbg !1242
  %840 = call i32 @accept(i32 noundef %839, ptr noundef null, ptr noundef null), !dbg !1243
  store i32 %840, ptr %11, align 4, !dbg !1244
  %841 = load i32, ptr %11, align 4, !dbg !1245
  %842 = icmp slt i32 %841, 0, !dbg !1245
  br i1 %842, label %843, label %847, !dbg !1245

843:                                              ; preds = %836
  %844 = call ptr @__errno_location() #9, !dbg !1245
  %845 = load i32, ptr %844, align 4, !dbg !1245
  %846 = icmp eq i32 %845, 103, !dbg !1245
  br label %847

847:                                              ; preds = %843, %836
  %848 = phi i1 [ false, %836 ], [ %846, %843 ], !dbg !1247
  %849 = zext i1 %848 to i32, !dbg !1245
  %850 = sext i32 %849 to i64, !dbg !1245
  %851 = icmp ne i64 %850, 0, !dbg !1245
  br i1 %851, label %852, label %853, !dbg !1248

852:                                              ; preds = %847
  br label %991, !dbg !1249

853:                                              ; preds = %847
  %854 = load i32, ptr %11, align 4, !dbg !1250
  %855 = icmp slt i32 %854, 0, !dbg !1250
  br i1 %855, label %856, label %874, !dbg !1250

856:                                              ; preds = %853
  %857 = call ptr @__errno_location() #9, !dbg !1250
  %858 = load i32, ptr %857, align 4, !dbg !1250
  %859 = icmp eq i32 %858, 23, !dbg !1250
  br i1 %859, label %872, label %860, !dbg !1250

860:                                              ; preds = %856
  %861 = call ptr @__errno_location() #9, !dbg !1250
  %862 = load i32, ptr %861, align 4, !dbg !1250
  %863 = icmp eq i32 %862, 24, !dbg !1250
  br i1 %863, label %872, label %864, !dbg !1250

864:                                              ; preds = %860
  %865 = call ptr @__errno_location() #9, !dbg !1250
  %866 = load i32, ptr %865, align 4, !dbg !1250
  %867 = icmp eq i32 %866, 105, !dbg !1250
  br i1 %867, label %872, label %868, !dbg !1250

868:                                              ; preds = %864
  %869 = call ptr @__errno_location() #9, !dbg !1250
  %870 = load i32, ptr %869, align 4, !dbg !1250
  %871 = icmp eq i32 %870, 12, !dbg !1250
  br label %872, !dbg !1250

872:                                              ; preds = %868, %864, %860, %856
  %873 = phi i1 [ true, %864 ], [ true, %860 ], [ true, %856 ], [ %871, %868 ]
  br label %874

874:                                              ; preds = %872, %853
  %875 = phi i1 [ false, %853 ], [ %873, %872 ], !dbg !1252
  %876 = zext i1 %875 to i32, !dbg !1250
  %877 = sext i32 %876 to i64, !dbg !1250
  %878 = icmp ne i64 %877, 0, !dbg !1250
  br i1 %878, label %879, label %880, !dbg !1253

879:                                              ; preds = %874
  br label %991, !dbg !1254

880:                                              ; preds = %874
  br label %881, !dbg !1255

881:                                              ; preds = %880
  %882 = load i32, ptr %11, align 4, !dbg !1256
  %883 = icmp sge i32 %882, 0, !dbg !1256
  %884 = xor i1 %883, true, !dbg !1256
  %885 = zext i1 %884 to i32, !dbg !1256
  %886 = sext i32 %885 to i64, !dbg !1256
  %887 = icmp ne i64 %886, 0, !dbg !1256
  br i1 %887, label %888, label %896, !dbg !1259

888:                                              ; preds = %881
  %889 = load ptr, ptr @stderr, align 8, !dbg !1260
  %890 = call ptr @__errno_location() #9, !dbg !1260
  %891 = load i32, ptr %890, align 4, !dbg !1260
  %892 = call ptr @nn_err_strerror(i32 noundef %891), !dbg !1260
  %893 = call ptr @__errno_location() #9, !dbg !1260
  %894 = load i32, ptr %893, align 4, !dbg !1260
  %895 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %889, ptr noundef @.str.5, ptr noundef %892, i32 noundef %894, ptr noundef @.str.2, i32 noundef 802), !dbg !1260
  call void @nn_err_abort() #8, !dbg !1260
  unreachable, !dbg !1260

896:                                              ; preds = %881
  br label %897, !dbg !1259

897:                                              ; preds = %896
  %898 = load ptr, ptr %10, align 8, !dbg !1262
  %899 = getelementptr inbounds %struct.nn_usock, ptr %898, i32 0, i32 17, !dbg !1263
  %900 = load ptr, ptr %899, align 8, !dbg !1263
  %901 = load i32, ptr %11, align 4, !dbg !1264
  call void @nn_usock_init_from_fd(ptr noundef %900, i32 noundef %901), !dbg !1265
  %902 = load ptr, ptr %10, align 8, !dbg !1266
  %903 = getelementptr inbounds %struct.nn_usock, ptr %902, i32 0, i32 17, !dbg !1267
  %904 = load ptr, ptr %903, align 8, !dbg !1267
  %905 = getelementptr inbounds %struct.nn_usock, ptr %904, i32 0, i32 1, !dbg !1268
  store i32 4, ptr %905, align 8, !dbg !1269
  %906 = load ptr, ptr %10, align 8, !dbg !1270
  %907 = getelementptr inbounds %struct.nn_usock, ptr %906, i32 0, i32 17, !dbg !1271
  %908 = load ptr, ptr %907, align 8, !dbg !1271
  %909 = getelementptr inbounds %struct.nn_usock, ptr %908, i32 0, i32 0, !dbg !1272
  %910 = load ptr, ptr %10, align 8, !dbg !1273
  %911 = getelementptr inbounds %struct.nn_usock, ptr %910, i32 0, i32 17, !dbg !1274
  %912 = load ptr, ptr %911, align 8, !dbg !1274
  %913 = getelementptr inbounds %struct.nn_usock, ptr %912, i32 0, i32 13, !dbg !1275
  call void @nn_fsm_raise(ptr noundef %909, ptr noundef %913, i32 noundef 2), !dbg !1276
  %914 = load ptr, ptr %10, align 8, !dbg !1277
  %915 = getelementptr inbounds %struct.nn_usock, ptr %914, i32 0, i32 17, !dbg !1278
  %916 = load ptr, ptr %915, align 8, !dbg !1278
  %917 = getelementptr inbounds %struct.nn_usock, ptr %916, i32 0, i32 17, !dbg !1279
  store ptr null, ptr %917, align 8, !dbg !1280
  %918 = load ptr, ptr %10, align 8, !dbg !1281
  %919 = getelementptr inbounds %struct.nn_usock, ptr %918, i32 0, i32 17, !dbg !1282
  store ptr null, ptr %919, align 8, !dbg !1283
  %920 = load ptr, ptr %10, align 8, !dbg !1284
  %921 = getelementptr inbounds %struct.nn_usock, ptr %920, i32 0, i32 2, !dbg !1285
  %922 = load ptr, ptr %921, align 8, !dbg !1285
  %923 = load ptr, ptr %10, align 8, !dbg !1286
  %924 = getelementptr inbounds %struct.nn_usock, ptr %923, i32 0, i32 4, !dbg !1287
  call void @nn_worker_rm_fd(ptr noundef %922, ptr noundef %924), !dbg !1288
  %925 = load ptr, ptr %10, align 8, !dbg !1289
  %926 = getelementptr inbounds %struct.nn_usock, ptr %925, i32 0, i32 1, !dbg !1290
  store i32 9, ptr %926, align 8, !dbg !1291
  br label %991, !dbg !1292

927:                                              ; preds = %834
  br label %928, !dbg !1293

928:                                              ; preds = %927
  %929 = load ptr, ptr @stderr, align 8, !dbg !1294
  %930 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %929, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 824), !dbg !1294
  call void @nn_err_abort() #8, !dbg !1294
  unreachable, !dbg !1294

931:                                              ; No predecessors!
  br label %932, !dbg !1298

932:                                              ; preds = %931
  br label %933, !dbg !1299

933:                                              ; preds = %932, %829
  br label %934, !dbg !1300

934:                                              ; preds = %933
  %935 = load ptr, ptr @stderr, align 8, !dbg !1301
  %936 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %935, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 827), !dbg !1301
  call void @nn_err_abort() #8, !dbg !1301
  unreachable, !dbg !1301

937:                                              ; No predecessors!
  br label %938, !dbg !1305

938:                                              ; preds = %328, %937
  %939 = load ptr, ptr %8, align 8, !dbg !1306
  %940 = load ptr, ptr %10, align 8, !dbg !1308
  %941 = getelementptr inbounds %struct.nn_usock, ptr %940, i32 0, i32 12, !dbg !1309
  %942 = icmp eq ptr %939, %941, !dbg !1310
  br i1 %942, label %943, label %967, !dbg !1311

943:                                              ; preds = %938
  br label %944, !dbg !1312

944:                                              ; preds = %943
  %945 = load i32, ptr %7, align 4, !dbg !1314
  %946 = icmp eq i32 %945, 1, !dbg !1314
  %947 = xor i1 %946, true, !dbg !1314
  %948 = zext i1 %947 to i32, !dbg !1314
  %949 = sext i32 %948 to i64, !dbg !1314
  %950 = icmp ne i64 %949, 0, !dbg !1314
  br i1 %950, label %951, label %954, !dbg !1317

951:                                              ; preds = %944
  %952 = load ptr, ptr @stderr, align 8, !dbg !1318
  %953 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %952, ptr noundef @.str, ptr noundef @.str.12, ptr noundef @.str.2, i32 noundef 834), !dbg !1318
  call void @nn_err_abort() #8, !dbg !1318
  unreachable, !dbg !1318

954:                                              ; preds = %944
  br label %955, !dbg !1317

955:                                              ; preds = %954
  %956 = load ptr, ptr %10, align 8, !dbg !1320
  %957 = getelementptr inbounds %struct.nn_usock, ptr %956, i32 0, i32 2, !dbg !1321
  %958 = load ptr, ptr %957, align 8, !dbg !1321
  %959 = load ptr, ptr %10, align 8, !dbg !1322
  %960 = getelementptr inbounds %struct.nn_usock, ptr %959, i32 0, i32 4, !dbg !1323
  call void @nn_worker_rm_fd(ptr noundef %958, ptr noundef %960), !dbg !1324
  %961 = load ptr, ptr %10, align 8, !dbg !1325
  %962 = getelementptr inbounds %struct.nn_usock, ptr %961, i32 0, i32 1, !dbg !1326
  store i32 9, ptr %962, align 8, !dbg !1327
  %963 = load ptr, ptr %10, align 8, !dbg !1328
  %964 = getelementptr inbounds %struct.nn_usock, ptr %963, i32 0, i32 17, !dbg !1329
  %965 = load ptr, ptr %964, align 8, !dbg !1329
  %966 = getelementptr inbounds %struct.nn_usock, ptr %965, i32 0, i32 0, !dbg !1330
  call void @nn_fsm_action(ptr noundef %966, i32 noundef 7), !dbg !1331
  br label %991, !dbg !1332

967:                                              ; preds = %938
  %968 = load ptr, ptr %8, align 8, !dbg !1333
  %969 = load ptr, ptr %10, align 8, !dbg !1335
  %970 = getelementptr inbounds %struct.nn_usock, ptr %969, i32 0, i32 4, !dbg !1336
  %971 = icmp eq ptr %968, %970, !dbg !1337
  br i1 %971, label %972, label %981, !dbg !1338

972:                                              ; preds = %967
  %973 = load i32, ptr %7, align 4, !dbg !1339
  switch i32 %973, label %975 [
    i32 1, label %974
  ], !dbg !1341

974:                                              ; preds = %972
  br label %991, !dbg !1342

975:                                              ; preds = %972
  br label %976, !dbg !1344

976:                                              ; preds = %975
  %977 = load ptr, ptr @stderr, align 8, !dbg !1345
  %978 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %977, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 848), !dbg !1345
  call void @nn_err_abort() #8, !dbg !1345
  unreachable, !dbg !1345

979:                                              ; No predecessors!
  br label %980, !dbg !1349

980:                                              ; preds = %979
  br label %981, !dbg !1350

981:                                              ; preds = %980, %967
  br label %982, !dbg !1351

982:                                              ; preds = %981
  %983 = load ptr, ptr @stderr, align 8, !dbg !1352
  %984 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %983, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 851), !dbg !1352
  call void @nn_err_abort() #8, !dbg !1352
  unreachable, !dbg !1352

985:                                              ; No predecessors!
  br label %986, !dbg !1356

986:                                              ; preds = %328, %985
  br label %987, !dbg !1357

987:                                              ; preds = %986
  %988 = load ptr, ptr @stderr, align 8, !dbg !1358
  %989 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %988, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 857), !dbg !1358
  call void @nn_err_abort() #8, !dbg !1358
  unreachable, !dbg !1358

990:                                              ; No predecessors!
  br label %991, !dbg !1362

991:                                              ; preds = %37, %60, %83, %109, %140, %219, %237, %279, %327, %337, %356, %359, %362, %381, %404, %431, %464, %486, %524, %589, %619, %635, %681, %701, %763, %777, %793, %812, %815, %852, %879, %897, %955, %974, %990
  ret void, !dbg !1363
}

declare ptr @nn_fsm_choose_worker(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @nn_worker_fd_init(ptr noundef, ptr noundef) #2

declare void @nn_worker_task_init(ptr noundef, ptr noundef) #2

declare void @nn_fsm_event_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_usock_term(ptr noundef %0) #0 !dbg !1364 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1367, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1369, metadata !DIExpression()), !dbg !1370
  br label %4, !dbg !1371

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !dbg !1372
  %6 = getelementptr inbounds %struct.nn_usock, ptr %5, i32 0, i32 1, !dbg !1372
  %7 = load i32, ptr %6, align 8, !dbg !1372
  %8 = icmp eq i32 %7, 1, !dbg !1372
  %9 = xor i1 %8, true, !dbg !1372
  %10 = zext i1 %9 to i32, !dbg !1372
  %11 = sext i32 %10 to i64, !dbg !1372
  %12 = icmp ne i64 %11, 0, !dbg !1372
  br i1 %12, label %13, label %16, !dbg !1375

13:                                               ; preds = %4
  %14 = load ptr, ptr @stderr, align 8, !dbg !1376
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 106), !dbg !1376
  call void @nn_err_abort() #8, !dbg !1376
  unreachable, !dbg !1376

16:                                               ; preds = %4
  br label %17, !dbg !1375

17:                                               ; preds = %16
  %18 = load ptr, ptr %2, align 8, !dbg !1378
  %19 = getelementptr inbounds %struct.nn_usock, ptr %18, i32 0, i32 5, !dbg !1380
  %20 = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 2, !dbg !1381
  %21 = load ptr, ptr %20, align 8, !dbg !1381
  %22 = icmp ne ptr %21, null, !dbg !1378
  br i1 %22, label %23, label %28, !dbg !1382

23:                                               ; preds = %17
  %24 = load ptr, ptr %2, align 8, !dbg !1383
  %25 = getelementptr inbounds %struct.nn_usock, ptr %24, i32 0, i32 5, !dbg !1384
  %26 = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 2, !dbg !1385
  %27 = load ptr, ptr %26, align 8, !dbg !1385
  call void @nn_free(ptr noundef %27), !dbg !1386
  br label %28, !dbg !1386

28:                                               ; preds = %23, %17
  %29 = load ptr, ptr %2, align 8, !dbg !1387
  %30 = getelementptr inbounds %struct.nn_usock, ptr %29, i32 0, i32 16, !dbg !1388
  call void @nn_fsm_event_term(ptr noundef %30), !dbg !1389
  %31 = load ptr, ptr %2, align 8, !dbg !1390
  %32 = getelementptr inbounds %struct.nn_usock, ptr %31, i32 0, i32 15, !dbg !1391
  call void @nn_fsm_event_term(ptr noundef %32), !dbg !1392
  %33 = load ptr, ptr %2, align 8, !dbg !1393
  %34 = getelementptr inbounds %struct.nn_usock, ptr %33, i32 0, i32 14, !dbg !1394
  call void @nn_fsm_event_term(ptr noundef %34), !dbg !1395
  %35 = load ptr, ptr %2, align 8, !dbg !1396
  %36 = getelementptr inbounds %struct.nn_usock, ptr %35, i32 0, i32 13, !dbg !1397
  call void @nn_fsm_event_term(ptr noundef %36), !dbg !1398
  %37 = load ptr, ptr %2, align 8, !dbg !1399
  %38 = getelementptr inbounds %struct.nn_usock, ptr %37, i32 0, i32 12, !dbg !1400
  call void @nn_worker_task_term(ptr noundef %38), !dbg !1401
  %39 = load ptr, ptr %2, align 8, !dbg !1402
  %40 = getelementptr inbounds %struct.nn_usock, ptr %39, i32 0, i32 11, !dbg !1403
  call void @nn_worker_task_term(ptr noundef %40), !dbg !1404
  %41 = load ptr, ptr %2, align 8, !dbg !1405
  %42 = getelementptr inbounds %struct.nn_usock, ptr %41, i32 0, i32 10, !dbg !1406
  call void @nn_worker_task_term(ptr noundef %42), !dbg !1407
  %43 = load ptr, ptr %2, align 8, !dbg !1408
  %44 = getelementptr inbounds %struct.nn_usock, ptr %43, i32 0, i32 9, !dbg !1409
  call void @nn_worker_task_term(ptr noundef %44), !dbg !1410
  %45 = load ptr, ptr %2, align 8, !dbg !1411
  %46 = getelementptr inbounds %struct.nn_usock, ptr %45, i32 0, i32 8, !dbg !1412
  call void @nn_worker_task_term(ptr noundef %46), !dbg !1413
  %47 = load ptr, ptr %2, align 8, !dbg !1414
  %48 = getelementptr inbounds %struct.nn_usock, ptr %47, i32 0, i32 7, !dbg !1415
  call void @nn_worker_task_term(ptr noundef %48), !dbg !1416
  %49 = load ptr, ptr %2, align 8, !dbg !1417
  %50 = getelementptr inbounds %struct.nn_usock, ptr %49, i32 0, i32 4, !dbg !1418
  call void @nn_worker_fd_term(ptr noundef %50), !dbg !1419
  %51 = load ptr, ptr %2, align 8, !dbg !1420
  %52 = getelementptr inbounds %struct.nn_usock, ptr %51, i32 0, i32 0, !dbg !1421
  call void @nn_fsm_term(ptr noundef %52), !dbg !1422
  ret void, !dbg !1423
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #4

declare void @nn_free(ptr noundef) #2

declare void @nn_fsm_event_term(ptr noundef) #2

declare void @nn_worker_task_term(ptr noundef) #2

declare void @nn_worker_fd_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_usock_isidle(ptr noundef %0) #0 !dbg !1424 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1427, metadata !DIExpression()), !dbg !1428
  %3 = load ptr, ptr %2, align 8, !dbg !1429
  %4 = getelementptr inbounds %struct.nn_usock, ptr %3, i32 0, i32 0, !dbg !1430
  %5 = call i32 @nn_fsm_isidle(ptr noundef %4), !dbg !1431
  ret i32 %5, !dbg !1432
}

declare i32 @nn_fsm_isidle(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_usock_start(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1433 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1436, metadata !DIExpression()), !dbg !1437
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1438, metadata !DIExpression()), !dbg !1439
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1440, metadata !DIExpression()), !dbg !1441
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1442, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1444, metadata !DIExpression()), !dbg !1445
  %11 = load i32, ptr %8, align 4, !dbg !1446
  %12 = or i32 %11, 524288, !dbg !1446
  store i32 %12, ptr %8, align 4, !dbg !1446
  %13 = load i32, ptr %7, align 4, !dbg !1447
  %14 = load i32, ptr %8, align 4, !dbg !1448
  %15 = load i32, ptr %9, align 4, !dbg !1449
  %16 = call i32 @socket(i32 noundef %13, i32 noundef %14, i32 noundef %15) #10, !dbg !1450
  store i32 %16, ptr %10, align 4, !dbg !1451
  %17 = load i32, ptr %10, align 4, !dbg !1452
  %18 = icmp slt i32 %17, 0, !dbg !1452
  %19 = zext i1 %18 to i32, !dbg !1452
  %20 = sext i32 %19 to i64, !dbg !1452
  %21 = icmp ne i64 %20, 0, !dbg !1452
  br i1 %21, label %22, label %26, !dbg !1454

22:                                               ; preds = %4
  %23 = call ptr @__errno_location() #9, !dbg !1455
  %24 = load i32, ptr %23, align 4, !dbg !1455
  %25 = sub nsw i32 0, %24, !dbg !1456
  store i32 %25, ptr %5, align 4, !dbg !1457
  br label %31, !dbg !1457

26:                                               ; preds = %4
  %27 = load ptr, ptr %6, align 8, !dbg !1458
  %28 = load i32, ptr %10, align 4, !dbg !1459
  call void @nn_usock_init_from_fd(ptr noundef %27, i32 noundef %28), !dbg !1460
  %29 = load ptr, ptr %6, align 8, !dbg !1461
  %30 = getelementptr inbounds %struct.nn_usock, ptr %29, i32 0, i32 0, !dbg !1462
  call void @nn_fsm_start(ptr noundef %30), !dbg !1463
  store i32 0, ptr %5, align 4, !dbg !1464
  br label %31, !dbg !1464

31:                                               ; preds = %26, %22
  %32 = load i32, ptr %5, align 4, !dbg !1465
  ret i32 %32, !dbg !1465
}

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_usock_init_from_fd(ptr noundef %0, i32 noundef %1) #0 !dbg !1466 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1469, metadata !DIExpression()), !dbg !1470
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1471, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1473, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1475, metadata !DIExpression()), !dbg !1476
  br label %7, !dbg !1477

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !dbg !1478
  %9 = getelementptr inbounds %struct.nn_usock, ptr %8, i32 0, i32 1, !dbg !1478
  %10 = load i32, ptr %9, align 8, !dbg !1478
  %11 = icmp eq i32 %10, 1, !dbg !1478
  br i1 %11, label %13, label %12, !dbg !1478

12:                                               ; preds = %7
  br label %13, !dbg !1478

13:                                               ; preds = %12, %7
  %14 = phi i1 [ true, %7 ], [ true, %12 ]
  %15 = xor i1 %14, true, !dbg !1478
  %16 = zext i1 %15 to i32, !dbg !1478
  %17 = sext i32 %16 to i64, !dbg !1478
  %18 = icmp ne i64 %17, 0, !dbg !1478
  br i1 %18, label %19, label %22, !dbg !1481

19:                                               ; preds = %13
  %20 = load ptr, ptr @stderr, align 8, !dbg !1482
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str, ptr noundef @.str.10, ptr noundef @.str.2, i32 noundef 160), !dbg !1482
  call void @nn_err_abort() #8, !dbg !1482
  unreachable, !dbg !1482

22:                                               ; preds = %13
  br label %23, !dbg !1481

23:                                               ; preds = %22
  br label %24, !dbg !1484

24:                                               ; preds = %23
  %25 = load ptr, ptr %3, align 8, !dbg !1485
  %26 = getelementptr inbounds %struct.nn_usock, ptr %25, i32 0, i32 3, !dbg !1485
  %27 = load i32, ptr %26, align 8, !dbg !1485
  %28 = icmp eq i32 %27, -1, !dbg !1485
  %29 = xor i1 %28, true, !dbg !1485
  %30 = zext i1 %29 to i32, !dbg !1485
  %31 = sext i32 %30 to i64, !dbg !1485
  %32 = icmp ne i64 %31, 0, !dbg !1485
  br i1 %32, label %33, label %36, !dbg !1488

33:                                               ; preds = %24
  %34 = load ptr, ptr @stderr, align 8, !dbg !1489
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str, ptr noundef @.str.11, ptr noundef @.str.2, i32 noundef 163), !dbg !1489
  call void @nn_err_abort() #8, !dbg !1489
  unreachable, !dbg !1489

36:                                               ; preds = %24
  br label %37, !dbg !1488

37:                                               ; preds = %36
  %38 = load i32, ptr %4, align 4, !dbg !1491
  %39 = load ptr, ptr %3, align 8, !dbg !1492
  %40 = getelementptr inbounds %struct.nn_usock, ptr %39, i32 0, i32 3, !dbg !1493
  store i32 %38, ptr %40, align 8, !dbg !1494
  %41 = load ptr, ptr %3, align 8, !dbg !1495
  %42 = getelementptr inbounds %struct.nn_usock, ptr %41, i32 0, i32 3, !dbg !1496
  %43 = load i32, ptr %42, align 8, !dbg !1496
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %43, i32 noundef 2, i32 noundef 1), !dbg !1497
  store i32 %44, ptr %5, align 4, !dbg !1498
  br label %45, !dbg !1499

45:                                               ; preds = %37
  %46 = load i32, ptr %5, align 4, !dbg !1500
  %47 = icmp ne i32 %46, -1, !dbg !1500
  %48 = xor i1 %47, true, !dbg !1500
  %49 = zext i1 %48 to i32, !dbg !1500
  %50 = sext i32 %49 to i64, !dbg !1500
  %51 = icmp ne i64 %50, 0, !dbg !1500
  br i1 %51, label %52, label %60, !dbg !1503

52:                                               ; preds = %45
  %53 = load ptr, ptr @stderr, align 8, !dbg !1504
  %54 = call ptr @__errno_location() #9, !dbg !1504
  %55 = load i32, ptr %54, align 4, !dbg !1504
  %56 = call ptr @nn_err_strerror(i32 noundef %55), !dbg !1504
  %57 = call ptr @__errno_location() #9, !dbg !1504
  %58 = load i32, ptr %57, align 4, !dbg !1504
  %59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.5, ptr noundef %56, i32 noundef %58, ptr noundef @.str.2, i32 noundef 175), !dbg !1504
  call void @nn_err_abort() #8, !dbg !1504
  unreachable, !dbg !1504

60:                                               ; preds = %45
  br label %61, !dbg !1503

61:                                               ; preds = %60
  %62 = load ptr, ptr %3, align 8, !dbg !1506
  %63 = getelementptr inbounds %struct.nn_usock, ptr %62, i32 0, i32 3, !dbg !1507
  %64 = load i32, ptr %63, align 8, !dbg !1507
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %64, i32 noundef 3, i32 noundef 0), !dbg !1508
  store i32 %65, ptr %6, align 4, !dbg !1509
  %66 = load i32, ptr %6, align 4, !dbg !1510
  %67 = icmp eq i32 %66, -1, !dbg !1512
  br i1 %67, label %68, label %69, !dbg !1513

68:                                               ; preds = %61
  store i32 0, ptr %6, align 4, !dbg !1514
  br label %69, !dbg !1515

69:                                               ; preds = %68, %61
  %70 = load i32, ptr %6, align 4, !dbg !1516
  %71 = and i32 %70, 2048, !dbg !1518
  %72 = icmp ne i32 %71, 0, !dbg !1518
  br i1 %72, label %97, label %73, !dbg !1519

73:                                               ; preds = %69
  %74 = load ptr, ptr %3, align 8, !dbg !1520
  %75 = getelementptr inbounds %struct.nn_usock, ptr %74, i32 0, i32 3, !dbg !1522
  %76 = load i32, ptr %75, align 8, !dbg !1522
  %77 = load i32, ptr %6, align 4, !dbg !1523
  %78 = or i32 %77, 2048, !dbg !1524
  %79 = call i32 (i32, i32, ...) @fcntl(i32 noundef %76, i32 noundef 4, i32 noundef %78), !dbg !1525
  store i32 %79, ptr %5, align 4, !dbg !1526
  br label %80, !dbg !1527

80:                                               ; preds = %73
  %81 = load i32, ptr %5, align 4, !dbg !1528
  %82 = icmp ne i32 %81, -1, !dbg !1528
  %83 = xor i1 %82, true, !dbg !1528
  %84 = zext i1 %83 to i32, !dbg !1528
  %85 = sext i32 %84 to i64, !dbg !1528
  %86 = icmp ne i64 %85, 0, !dbg !1528
  br i1 %86, label %87, label %95, !dbg !1531

87:                                               ; preds = %80
  %88 = load ptr, ptr @stderr, align 8, !dbg !1532
  %89 = call ptr @__errno_location() #9, !dbg !1532
  %90 = load i32, ptr %89, align 4, !dbg !1532
  %91 = call ptr @nn_err_strerror(i32 noundef %90), !dbg !1532
  %92 = call ptr @__errno_location() #9, !dbg !1532
  %93 = load i32, ptr %92, align 4, !dbg !1532
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef @.str.5, ptr noundef %91, i32 noundef %93, ptr noundef @.str.2, i32 noundef 201), !dbg !1532
  call void @nn_err_abort() #8, !dbg !1532
  unreachable, !dbg !1532

95:                                               ; preds = %80
  br label %96, !dbg !1531

96:                                               ; preds = %95
  br label %97, !dbg !1534

97:                                               ; preds = %96, %69
  ret void, !dbg !1535
}

declare void @nn_fsm_start(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_usock_stop(ptr noundef %0) #0 !dbg !1536 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1537, metadata !DIExpression()), !dbg !1538
  %3 = load ptr, ptr %2, align 8, !dbg !1539
  %4 = getelementptr inbounds %struct.nn_usock, ptr %3, i32 0, i32 0, !dbg !1540
  call void @nn_fsm_stop(ptr noundef %4), !dbg !1541
  ret void, !dbg !1542
}

declare void @nn_fsm_stop(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_usock_swap_owner(ptr noundef %0, ptr noundef %1) #0 !dbg !1543 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1551, metadata !DIExpression()), !dbg !1552
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1553, metadata !DIExpression()), !dbg !1554
  %5 = load ptr, ptr %3, align 8, !dbg !1555
  %6 = getelementptr inbounds %struct.nn_usock, ptr %5, i32 0, i32 0, !dbg !1556
  %7 = load ptr, ptr %4, align 8, !dbg !1557
  call void @nn_fsm_swap_owner(ptr noundef %6, ptr noundef %7), !dbg !1558
  ret void, !dbg !1559
}

declare void @nn_fsm_swap_owner(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_usock_setsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !1560 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1565, metadata !DIExpression()), !dbg !1566
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1567, metadata !DIExpression()), !dbg !1568
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1569, metadata !DIExpression()), !dbg !1570
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1571, metadata !DIExpression()), !dbg !1572
  store i64 %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1573, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1575, metadata !DIExpression()), !dbg !1576
  br label %13, !dbg !1577

13:                                               ; preds = %5
  %14 = load ptr, ptr %7, align 8, !dbg !1578
  %15 = getelementptr inbounds %struct.nn_usock, ptr %14, i32 0, i32 1, !dbg !1578
  %16 = load i32, ptr %15, align 8, !dbg !1578
  %17 = icmp eq i32 %16, 2, !dbg !1578
  br i1 %17, label %23, label %18, !dbg !1578

18:                                               ; preds = %13
  %19 = load ptr, ptr %7, align 8, !dbg !1578
  %20 = getelementptr inbounds %struct.nn_usock, ptr %19, i32 0, i32 1, !dbg !1578
  %21 = load i32, ptr %20, align 8, !dbg !1578
  %22 = icmp eq i32 %21, 4, !dbg !1578
  br label %23, !dbg !1578

23:                                               ; preds = %18, %13
  %24 = phi i1 [ true, %13 ], [ %22, %18 ]
  %25 = xor i1 %24, true, !dbg !1578
  %26 = zext i1 %25 to i32, !dbg !1578
  %27 = sext i32 %26 to i64, !dbg !1578
  %28 = icmp ne i64 %27, 0, !dbg !1578
  br i1 %28, label %29, label %32, !dbg !1581

29:                                               ; preds = %23
  %30 = load ptr, ptr @stderr, align 8, !dbg !1582
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 223), !dbg !1582
  call void @nn_err_abort() #8, !dbg !1582
  unreachable, !dbg !1582

32:                                               ; preds = %23
  br label %33, !dbg !1581

33:                                               ; preds = %32
  %34 = load ptr, ptr %7, align 8, !dbg !1584
  %35 = getelementptr inbounds %struct.nn_usock, ptr %34, i32 0, i32 3, !dbg !1585
  %36 = load i32, ptr %35, align 8, !dbg !1585
  %37 = load i32, ptr %8, align 4, !dbg !1586
  %38 = load i32, ptr %9, align 4, !dbg !1587
  %39 = load ptr, ptr %10, align 8, !dbg !1588
  %40 = load i64, ptr %11, align 8, !dbg !1589
  %41 = trunc i64 %40 to i32, !dbg !1590
  %42 = call i32 @setsockopt(i32 noundef %36, i32 noundef %37, i32 noundef %38, ptr noundef %39, i32 noundef %41) #10, !dbg !1591
  store i32 %42, ptr %12, align 4, !dbg !1592
  %43 = load i32, ptr %12, align 4, !dbg !1593
  %44 = icmp ne i32 %43, 0, !dbg !1593
  %45 = zext i1 %44 to i32, !dbg !1593
  %46 = sext i32 %45 to i64, !dbg !1593
  %47 = icmp ne i64 %46, 0, !dbg !1593
  br i1 %47, label %48, label %52, !dbg !1595

48:                                               ; preds = %33
  %49 = call ptr @__errno_location() #9, !dbg !1596
  %50 = load i32, ptr %49, align 4, !dbg !1596
  %51 = sub nsw i32 0, %50, !dbg !1597
  store i32 %51, ptr %6, align 4, !dbg !1598
  br label %53, !dbg !1598

52:                                               ; preds = %33
  store i32 0, ptr %6, align 4, !dbg !1599
  br label %53, !dbg !1599

53:                                               ; preds = %52, %48
  %54 = load i32, ptr %6, align 4, !dbg !1600
  ret i32 %54, !dbg !1600
}

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_usock_bind(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1601 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1613, metadata !DIExpression()), !dbg !1614
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1615, metadata !DIExpression()), !dbg !1616
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1617, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1619, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1621, metadata !DIExpression()), !dbg !1622
  br label %10, !dbg !1623

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8, !dbg !1624
  %12 = getelementptr inbounds %struct.nn_usock, ptr %11, i32 0, i32 1, !dbg !1624
  %13 = load i32, ptr %12, align 8, !dbg !1624
  %14 = icmp eq i32 %13, 2, !dbg !1624
  %15 = xor i1 %14, true, !dbg !1624
  %16 = zext i1 %15 to i32, !dbg !1624
  %17 = sext i32 %16 to i64, !dbg !1624
  %18 = icmp ne i64 %17, 0, !dbg !1624
  br i1 %18, label %19, label %22, !dbg !1627

19:                                               ; preds = %10
  %20 = load ptr, ptr @stderr, align 8, !dbg !1628
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 249), !dbg !1628
  call void @nn_err_abort() #8, !dbg !1628
  unreachable, !dbg !1628

22:                                               ; preds = %10
  br label %23, !dbg !1627

23:                                               ; preds = %22
  store i32 1, ptr %9, align 4, !dbg !1630
  %24 = load ptr, ptr %5, align 8, !dbg !1631
  %25 = getelementptr inbounds %struct.nn_usock, ptr %24, i32 0, i32 3, !dbg !1632
  %26 = load i32, ptr %25, align 8, !dbg !1632
  %27 = call i32 @setsockopt(i32 noundef %26, i32 noundef 1, i32 noundef 2, ptr noundef %9, i32 noundef 4) #10, !dbg !1633
  store i32 %27, ptr %8, align 4, !dbg !1634
  br label %28, !dbg !1635

28:                                               ; preds = %23
  %29 = load i32, ptr %8, align 4, !dbg !1636
  %30 = icmp eq i32 %29, 0, !dbg !1636
  %31 = xor i1 %30, true, !dbg !1636
  %32 = zext i1 %31 to i32, !dbg !1636
  %33 = sext i32 %32 to i64, !dbg !1636
  %34 = icmp ne i64 %33, 0, !dbg !1636
  br i1 %34, label %35, label %43, !dbg !1639

35:                                               ; preds = %28
  %36 = load ptr, ptr @stderr, align 8, !dbg !1640
  %37 = call ptr @__errno_location() #9, !dbg !1640
  %38 = load i32, ptr %37, align 4, !dbg !1640
  %39 = call ptr @nn_err_strerror(i32 noundef %38), !dbg !1640
  %40 = call ptr @__errno_location() #9, !dbg !1640
  %41 = load i32, ptr %40, align 4, !dbg !1640
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.5, ptr noundef %39, i32 noundef %41, ptr noundef @.str.2, i32 noundef 254), !dbg !1640
  call void @nn_err_abort() #8, !dbg !1640
  unreachable, !dbg !1640

43:                                               ; preds = %28
  br label %44, !dbg !1639

44:                                               ; preds = %43
  %45 = load ptr, ptr %5, align 8, !dbg !1642
  %46 = getelementptr inbounds %struct.nn_usock, ptr %45, i32 0, i32 3, !dbg !1643
  %47 = load i32, ptr %46, align 8, !dbg !1643
  %48 = load ptr, ptr %6, align 8, !dbg !1644
  %49 = load i64, ptr %7, align 8, !dbg !1645
  %50 = trunc i64 %49 to i32, !dbg !1646
  %51 = call i32 @bind(i32 noundef %47, ptr noundef %48, i32 noundef %50) #10, !dbg !1647
  store i32 %51, ptr %8, align 4, !dbg !1648
  %52 = load i32, ptr %8, align 4, !dbg !1649
  %53 = icmp ne i32 %52, 0, !dbg !1649
  %54 = zext i1 %53 to i32, !dbg !1649
  %55 = sext i32 %54 to i64, !dbg !1649
  %56 = icmp ne i64 %55, 0, !dbg !1649
  br i1 %56, label %57, label %61, !dbg !1651

57:                                               ; preds = %44
  %58 = call ptr @__errno_location() #9, !dbg !1652
  %59 = load i32, ptr %58, align 4, !dbg !1652
  %60 = sub nsw i32 0, %59, !dbg !1653
  store i32 %60, ptr %4, align 4, !dbg !1654
  br label %62, !dbg !1654

61:                                               ; preds = %44
  store i32 0, ptr %4, align 4, !dbg !1655
  br label %62, !dbg !1655

62:                                               ; preds = %61, %57
  %63 = load i32, ptr %4, align 4, !dbg !1656
  ret i32 %63, !dbg !1656
}

declare ptr @nn_err_strerror(i32 noundef) #2

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_usock_listen(ptr noundef %0, i32 noundef %1) #0 !dbg !1657 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1660, metadata !DIExpression()), !dbg !1661
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1662, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1664, metadata !DIExpression()), !dbg !1665
  br label %7, !dbg !1666

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !dbg !1667
  %9 = getelementptr inbounds %struct.nn_usock, ptr %8, i32 0, i32 1, !dbg !1667
  %10 = load i32, ptr %9, align 8, !dbg !1667
  %11 = icmp eq i32 %10, 2, !dbg !1667
  %12 = xor i1 %11, true, !dbg !1667
  %13 = zext i1 %12 to i32, !dbg !1667
  %14 = sext i32 %13 to i64, !dbg !1667
  %15 = icmp ne i64 %14, 0, !dbg !1667
  br i1 %15, label %16, label %19, !dbg !1670

16:                                               ; preds = %7
  %17 = load ptr, ptr @stderr, align 8, !dbg !1671
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 268), !dbg !1671
  call void @nn_err_abort() #8, !dbg !1671
  unreachable, !dbg !1671

19:                                               ; preds = %7
  br label %20, !dbg !1670

20:                                               ; preds = %19
  %21 = load ptr, ptr %4, align 8, !dbg !1673
  %22 = getelementptr inbounds %struct.nn_usock, ptr %21, i32 0, i32 3, !dbg !1674
  %23 = load i32, ptr %22, align 8, !dbg !1674
  %24 = load i32, ptr %5, align 4, !dbg !1675
  %25 = call i32 @listen(i32 noundef %23, i32 noundef %24) #10, !dbg !1676
  store i32 %25, ptr %6, align 4, !dbg !1677
  %26 = load i32, ptr %6, align 4, !dbg !1678
  %27 = icmp ne i32 %26, 0, !dbg !1678
  %28 = zext i1 %27 to i32, !dbg !1678
  %29 = sext i32 %28 to i64, !dbg !1678
  %30 = icmp ne i64 %29, 0, !dbg !1678
  br i1 %30, label %31, label %35, !dbg !1680

31:                                               ; preds = %20
  %32 = call ptr @__errno_location() #9, !dbg !1681
  %33 = load i32, ptr %32, align 4, !dbg !1681
  %34 = sub nsw i32 0, %33, !dbg !1682
  store i32 %34, ptr %3, align 4, !dbg !1683
  br label %38, !dbg !1683

35:                                               ; preds = %20
  %36 = load ptr, ptr %4, align 8, !dbg !1684
  %37 = getelementptr inbounds %struct.nn_usock, ptr %36, i32 0, i32 0, !dbg !1685
  call void @nn_fsm_action(ptr noundef %37, i32 noundef 4), !dbg !1686
  store i32 0, ptr %3, align 4, !dbg !1687
  br label %38, !dbg !1687

38:                                               ; preds = %35, %31
  %39 = load i32, ptr %3, align 4, !dbg !1688
  ret i32 %39, !dbg !1688
}

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) #5

declare void @nn_fsm_action(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_usock_accept(ptr noundef %0, ptr noundef %1) #0 !dbg !1689 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1692, metadata !DIExpression()), !dbg !1693
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1694, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1696, metadata !DIExpression()), !dbg !1697
  %6 = load ptr, ptr %3, align 8, !dbg !1698
  %7 = getelementptr inbounds %struct.nn_usock, ptr %6, i32 0, i32 0, !dbg !1699
  call void @nn_fsm_start(ptr noundef %7), !dbg !1700
  %8 = load ptr, ptr %3, align 8, !dbg !1701
  %9 = getelementptr inbounds %struct.nn_usock, ptr %8, i32 0, i32 0, !dbg !1702
  call void @nn_fsm_action(ptr noundef %9, i32 noundef 2), !dbg !1703
  %10 = load ptr, ptr %4, align 8, !dbg !1704
  %11 = getelementptr inbounds %struct.nn_usock, ptr %10, i32 0, i32 0, !dbg !1705
  call void @nn_fsm_action(ptr noundef %11, i32 noundef 1), !dbg !1706
  %12 = load ptr, ptr %4, align 8, !dbg !1707
  %13 = getelementptr inbounds %struct.nn_usock, ptr %12, i32 0, i32 3, !dbg !1708
  %14 = load i32, ptr %13, align 8, !dbg !1708
  %15 = call i32 @accept(i32 noundef %14, ptr noundef null, ptr noundef null), !dbg !1709
  store i32 %15, ptr %5, align 4, !dbg !1710
  %16 = load i32, ptr %5, align 4, !dbg !1711
  %17 = icmp sge i32 %16, 0, !dbg !1711
  %18 = zext i1 %17 to i32, !dbg !1711
  %19 = sext i32 %18 to i64, !dbg !1711
  %20 = icmp ne i64 %19, 0, !dbg !1711
  br i1 %20, label %21, label %28, !dbg !1713

21:                                               ; preds = %2
  %22 = load ptr, ptr %3, align 8, !dbg !1714
  %23 = load i32, ptr %5, align 4, !dbg !1716
  call void @nn_usock_init_from_fd(ptr noundef %22, i32 noundef %23), !dbg !1717
  %24 = load ptr, ptr %4, align 8, !dbg !1718
  %25 = getelementptr inbounds %struct.nn_usock, ptr %24, i32 0, i32 0, !dbg !1719
  call void @nn_fsm_action(ptr noundef %25, i32 noundef 7), !dbg !1720
  %26 = load ptr, ptr %3, align 8, !dbg !1721
  %27 = getelementptr inbounds %struct.nn_usock, ptr %26, i32 0, i32 0, !dbg !1722
  call void @nn_fsm_action(ptr noundef %27, i32 noundef 7), !dbg !1723
  br label %114, !dbg !1724

28:                                               ; preds = %2
  br label %29, !dbg !1725

29:                                               ; preds = %28
  %30 = call ptr @__errno_location() #9, !dbg !1726
  %31 = load i32, ptr %30, align 4, !dbg !1726
  %32 = icmp eq i32 %31, 11, !dbg !1726
  br i1 %32, label %57, label %33, !dbg !1726

33:                                               ; preds = %29
  %34 = call ptr @__errno_location() #9, !dbg !1726
  %35 = load i32, ptr %34, align 4, !dbg !1726
  %36 = icmp eq i32 %35, 11, !dbg !1726
  br i1 %36, label %57, label %37, !dbg !1726

37:                                               ; preds = %33
  %38 = call ptr @__errno_location() #9, !dbg !1726
  %39 = load i32, ptr %38, align 4, !dbg !1726
  %40 = icmp eq i32 %39, 103, !dbg !1726
  br i1 %40, label %57, label %41, !dbg !1726

41:                                               ; preds = %37
  %42 = call ptr @__errno_location() #9, !dbg !1726
  %43 = load i32, ptr %42, align 4, !dbg !1726
  %44 = icmp eq i32 %43, 23, !dbg !1726
  br i1 %44, label %57, label %45, !dbg !1726

45:                                               ; preds = %41
  %46 = call ptr @__errno_location() #9, !dbg !1726
  %47 = load i32, ptr %46, align 4, !dbg !1726
  %48 = icmp eq i32 %47, 24, !dbg !1726
  br i1 %48, label %57, label %49, !dbg !1726

49:                                               ; preds = %45
  %50 = call ptr @__errno_location() #9, !dbg !1726
  %51 = load i32, ptr %50, align 4, !dbg !1726
  %52 = icmp eq i32 %51, 105, !dbg !1726
  br i1 %52, label %57, label %53, !dbg !1726

53:                                               ; preds = %49
  %54 = call ptr @__errno_location() #9, !dbg !1726
  %55 = load i32, ptr %54, align 4, !dbg !1726
  %56 = icmp eq i32 %55, 12, !dbg !1726
  br label %57, !dbg !1726

57:                                               ; preds = %53, %49, %45, %41, %37, %33, %29
  %58 = phi i1 [ true, %49 ], [ true, %45 ], [ true, %41 ], [ true, %37 ], [ true, %33 ], [ true, %29 ], [ %56, %53 ]
  %59 = xor i1 %58, true, !dbg !1726
  %60 = zext i1 %59 to i32, !dbg !1726
  %61 = sext i32 %60 to i64, !dbg !1726
  %62 = icmp ne i64 %61, 0, !dbg !1726
  br i1 %62, label %63, label %71, !dbg !1729

63:                                               ; preds = %57
  %64 = load ptr, ptr @stderr, align 8, !dbg !1730
  %65 = call ptr @__errno_location() #9, !dbg !1730
  %66 = load i32, ptr %65, align 4, !dbg !1730
  %67 = call ptr @nn_err_strerror(i32 noundef %66), !dbg !1730
  %68 = call ptr @__errno_location() #9, !dbg !1730
  %69 = load i32, ptr %68, align 4, !dbg !1730
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef @.str.5, ptr noundef %67, i32 noundef %69, ptr noundef @.str.2, i32 noundef 309), !dbg !1730
  call void @nn_err_abort() #8, !dbg !1730
  unreachable, !dbg !1730

71:                                               ; preds = %57
  br label %72, !dbg !1729

72:                                               ; preds = %71
  br label %73, !dbg !1732

73:                                               ; preds = %72
  %74 = load ptr, ptr %3, align 8, !dbg !1733
  %75 = getelementptr inbounds %struct.nn_usock, ptr %74, i32 0, i32 17, !dbg !1733
  %76 = load ptr, ptr %75, align 8, !dbg !1733
  %77 = icmp ne ptr %76, null, !dbg !1733
  %78 = xor i1 %77, true, !dbg !1733
  %79 = xor i1 %78, true, !dbg !1733
  %80 = zext i1 %79 to i32, !dbg !1733
  %81 = sext i32 %80 to i64, !dbg !1733
  %82 = icmp ne i64 %81, 0, !dbg !1733
  br i1 %82, label %83, label %86, !dbg !1736

83:                                               ; preds = %73
  %84 = load ptr, ptr @stderr, align 8, !dbg !1737
  %85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 312), !dbg !1737
  call void @nn_err_abort() #8, !dbg !1737
  unreachable, !dbg !1737

86:                                               ; preds = %73
  br label %87, !dbg !1736

87:                                               ; preds = %86
  %88 = load ptr, ptr %4, align 8, !dbg !1739
  %89 = load ptr, ptr %3, align 8, !dbg !1740
  %90 = getelementptr inbounds %struct.nn_usock, ptr %89, i32 0, i32 17, !dbg !1741
  store ptr %88, ptr %90, align 8, !dbg !1742
  br label %91, !dbg !1743

91:                                               ; preds = %87
  %92 = load ptr, ptr %4, align 8, !dbg !1744
  %93 = getelementptr inbounds %struct.nn_usock, ptr %92, i32 0, i32 17, !dbg !1744
  %94 = load ptr, ptr %93, align 8, !dbg !1744
  %95 = icmp ne ptr %94, null, !dbg !1744
  %96 = xor i1 %95, true, !dbg !1744
  %97 = xor i1 %96, true, !dbg !1744
  %98 = zext i1 %97 to i32, !dbg !1744
  %99 = sext i32 %98 to i64, !dbg !1744
  %100 = icmp ne i64 %99, 0, !dbg !1744
  br i1 %100, label %101, label %104, !dbg !1747

101:                                              ; preds = %91
  %102 = load ptr, ptr @stderr, align 8, !dbg !1748
  %103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 314), !dbg !1748
  call void @nn_err_abort() #8, !dbg !1748
  unreachable, !dbg !1748

104:                                              ; preds = %91
  br label %105, !dbg !1747

105:                                              ; preds = %104
  %106 = load ptr, ptr %3, align 8, !dbg !1750
  %107 = load ptr, ptr %4, align 8, !dbg !1751
  %108 = getelementptr inbounds %struct.nn_usock, ptr %107, i32 0, i32 17, !dbg !1752
  store ptr %106, ptr %108, align 8, !dbg !1753
  %109 = load ptr, ptr %4, align 8, !dbg !1754
  %110 = getelementptr inbounds %struct.nn_usock, ptr %109, i32 0, i32 2, !dbg !1755
  %111 = load ptr, ptr %110, align 8, !dbg !1755
  %112 = load ptr, ptr %4, align 8, !dbg !1756
  %113 = getelementptr inbounds %struct.nn_usock, ptr %112, i32 0, i32 9, !dbg !1757
  call void @nn_worker_execute(ptr noundef %111, ptr noundef %113), !dbg !1758
  br label %114, !dbg !1759

114:                                              ; preds = %105, %21
  ret void, !dbg !1759
}

declare i32 @accept(i32 noundef, ptr noundef, ptr noundef) #2

declare void @nn_worker_execute(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_usock_activate(ptr noundef %0) #0 !dbg !1760 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1761, metadata !DIExpression()), !dbg !1762
  %3 = load ptr, ptr %2, align 8, !dbg !1763
  %4 = getelementptr inbounds %struct.nn_usock, ptr %3, i32 0, i32 0, !dbg !1764
  call void @nn_fsm_action(ptr noundef %4, i32 noundef 6), !dbg !1765
  ret void, !dbg !1766
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_usock_connect(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1767 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1770, metadata !DIExpression()), !dbg !1771
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1772, metadata !DIExpression()), !dbg !1773
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1774, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1776, metadata !DIExpression()), !dbg !1777
  %8 = load ptr, ptr %4, align 8, !dbg !1778
  %9 = getelementptr inbounds %struct.nn_usock, ptr %8, i32 0, i32 0, !dbg !1779
  call void @nn_fsm_action(ptr noundef %9, i32 noundef 5), !dbg !1780
  %10 = load ptr, ptr %4, align 8, !dbg !1781
  %11 = getelementptr inbounds %struct.nn_usock, ptr %10, i32 0, i32 3, !dbg !1782
  %12 = load i32, ptr %11, align 8, !dbg !1782
  %13 = load ptr, ptr %5, align 8, !dbg !1783
  %14 = load i64, ptr %6, align 8, !dbg !1784
  %15 = trunc i64 %14 to i32, !dbg !1785
  %16 = call i32 @connect(i32 noundef %12, ptr noundef %13, i32 noundef %15), !dbg !1786
  store i32 %16, ptr %7, align 4, !dbg !1787
  %17 = load i32, ptr %7, align 4, !dbg !1788
  %18 = icmp eq i32 %17, 0, !dbg !1788
  %19 = zext i1 %18 to i32, !dbg !1788
  %20 = sext i32 %19 to i64, !dbg !1788
  %21 = icmp ne i64 %20, 0, !dbg !1788
  br i1 %21, label %22, label %25, !dbg !1790

22:                                               ; preds = %3
  %23 = load ptr, ptr %4, align 8, !dbg !1791
  %24 = getelementptr inbounds %struct.nn_usock, ptr %23, i32 0, i32 0, !dbg !1793
  call void @nn_fsm_action(ptr noundef %24, i32 noundef 7), !dbg !1794
  br label %41, !dbg !1795

25:                                               ; preds = %3
  %26 = call ptr @__errno_location() #9, !dbg !1796
  %27 = load i32, ptr %26, align 4, !dbg !1796
  %28 = icmp ne i32 %27, 115, !dbg !1796
  %29 = zext i1 %28 to i32, !dbg !1796
  %30 = sext i32 %29 to i64, !dbg !1796
  %31 = icmp ne i64 %30, 0, !dbg !1796
  br i1 %31, label %32, label %35, !dbg !1798

32:                                               ; preds = %25
  %33 = load ptr, ptr %4, align 8, !dbg !1799
  %34 = getelementptr inbounds %struct.nn_usock, ptr %33, i32 0, i32 0, !dbg !1801
  call void @nn_fsm_action(ptr noundef %34, i32 noundef 8), !dbg !1802
  br label %41, !dbg !1803

35:                                               ; preds = %25
  %36 = load ptr, ptr %4, align 8, !dbg !1804
  %37 = getelementptr inbounds %struct.nn_usock, ptr %36, i32 0, i32 2, !dbg !1805
  %38 = load ptr, ptr %37, align 8, !dbg !1805
  %39 = load ptr, ptr %4, align 8, !dbg !1806
  %40 = getelementptr inbounds %struct.nn_usock, ptr %39, i32 0, i32 7, !dbg !1807
  call void @nn_worker_execute(ptr noundef %38, ptr noundef %40), !dbg !1808
  br label %41, !dbg !1809

41:                                               ; preds = %35, %32, %22
  ret void, !dbg !1809
}

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_usock_send(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1810 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1820, metadata !DIExpression()), !dbg !1821
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1822, metadata !DIExpression()), !dbg !1823
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1824, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1826, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1828, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1830, metadata !DIExpression()), !dbg !1831
  br label %10, !dbg !1832

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !dbg !1833
  %12 = getelementptr inbounds %struct.nn_usock, ptr %11, i32 0, i32 1, !dbg !1833
  %13 = load i32, ptr %12, align 8, !dbg !1833
  %14 = icmp eq i32 %13, 6, !dbg !1833
  %15 = xor i1 %14, true, !dbg !1833
  %16 = zext i1 %15 to i32, !dbg !1833
  %17 = sext i32 %16 to i64, !dbg !1833
  %18 = icmp ne i64 %17, 0, !dbg !1833
  br i1 %18, label %19, label %22, !dbg !1836

19:                                               ; preds = %10
  %20 = load ptr, ptr @stderr, align 8, !dbg !1837
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str, ptr noundef @.str.8, ptr noundef @.str.2, i32 noundef 361), !dbg !1837
  call void @nn_err_abort() #8, !dbg !1837
  unreachable, !dbg !1837

22:                                               ; preds = %10
  br label %23, !dbg !1836

23:                                               ; preds = %22
  br label %24, !dbg !1839

24:                                               ; preds = %23
  %25 = load i32, ptr %6, align 4, !dbg !1840
  %26 = icmp sle i32 %25, 3, !dbg !1840
  %27 = xor i1 %26, true, !dbg !1840
  %28 = zext i1 %27 to i32, !dbg !1840
  %29 = sext i32 %28 to i64, !dbg !1840
  %30 = icmp ne i64 %29, 0, !dbg !1840
  br i1 %30, label %31, label %34, !dbg !1843

31:                                               ; preds = %24
  %32 = load ptr, ptr @stderr, align 8, !dbg !1844
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @.str.2, i32 noundef 364), !dbg !1844
  call void @nn_err_abort() #8, !dbg !1844
  unreachable, !dbg !1844

34:                                               ; preds = %24
  br label %35, !dbg !1843

35:                                               ; preds = %34
  %36 = load ptr, ptr %4, align 8, !dbg !1846
  %37 = getelementptr inbounds %struct.nn_usock, ptr %36, i32 0, i32 6, !dbg !1847
  %38 = getelementptr inbounds %struct.anon.0, ptr %37, i32 0, i32 1, !dbg !1848
  %39 = getelementptr inbounds [3 x %struct.iovec], ptr %38, i64 0, i64 0, !dbg !1846
  %40 = load ptr, ptr %4, align 8, !dbg !1849
  %41 = getelementptr inbounds %struct.nn_usock, ptr %40, i32 0, i32 6, !dbg !1850
  %42 = getelementptr inbounds %struct.anon.0, ptr %41, i32 0, i32 0, !dbg !1851
  %43 = getelementptr inbounds %struct.msghdr, ptr %42, i32 0, i32 2, !dbg !1852
  store ptr %39, ptr %43, align 8, !dbg !1853
  store i32 0, ptr %9, align 4, !dbg !1854
  store i32 0, ptr %8, align 4, !dbg !1855
  br label %44, !dbg !1857

44:                                               ; preds = %86, %35
  %45 = load i32, ptr %8, align 4, !dbg !1858
  %46 = load i32, ptr %6, align 4, !dbg !1860
  %47 = icmp ne i32 %45, %46, !dbg !1861
  br i1 %47, label %48, label %89, !dbg !1862

48:                                               ; preds = %44
  %49 = load ptr, ptr %5, align 8, !dbg !1863
  %50 = load i32, ptr %8, align 4, !dbg !1866
  %51 = sext i32 %50 to i64, !dbg !1863
  %52 = getelementptr inbounds %struct.nn_iovec, ptr %49, i64 %51, !dbg !1863
  %53 = getelementptr inbounds %struct.nn_iovec, ptr %52, i32 0, i32 1, !dbg !1867
  %54 = load i64, ptr %53, align 8, !dbg !1867
  %55 = icmp eq i64 %54, 0, !dbg !1868
  br i1 %55, label %56, label %57, !dbg !1869

56:                                               ; preds = %48
  br label %86, !dbg !1870

57:                                               ; preds = %48
  %58 = load ptr, ptr %5, align 8, !dbg !1871
  %59 = load i32, ptr %8, align 4, !dbg !1872
  %60 = sext i32 %59 to i64, !dbg !1871
  %61 = getelementptr inbounds %struct.nn_iovec, ptr %58, i64 %60, !dbg !1871
  %62 = getelementptr inbounds %struct.nn_iovec, ptr %61, i32 0, i32 0, !dbg !1873
  %63 = load ptr, ptr %62, align 8, !dbg !1873
  %64 = load ptr, ptr %4, align 8, !dbg !1874
  %65 = getelementptr inbounds %struct.nn_usock, ptr %64, i32 0, i32 6, !dbg !1875
  %66 = getelementptr inbounds %struct.anon.0, ptr %65, i32 0, i32 1, !dbg !1876
  %67 = load i32, ptr %9, align 4, !dbg !1877
  %68 = sext i32 %67 to i64, !dbg !1874
  %69 = getelementptr inbounds [3 x %struct.iovec], ptr %66, i64 0, i64 %68, !dbg !1874
  %70 = getelementptr inbounds %struct.iovec, ptr %69, i32 0, i32 0, !dbg !1878
  store ptr %63, ptr %70, align 8, !dbg !1879
  %71 = load ptr, ptr %5, align 8, !dbg !1880
  %72 = load i32, ptr %8, align 4, !dbg !1881
  %73 = sext i32 %72 to i64, !dbg !1880
  %74 = getelementptr inbounds %struct.nn_iovec, ptr %71, i64 %73, !dbg !1880
  %75 = getelementptr inbounds %struct.nn_iovec, ptr %74, i32 0, i32 1, !dbg !1882
  %76 = load i64, ptr %75, align 8, !dbg !1882
  %77 = load ptr, ptr %4, align 8, !dbg !1883
  %78 = getelementptr inbounds %struct.nn_usock, ptr %77, i32 0, i32 6, !dbg !1884
  %79 = getelementptr inbounds %struct.anon.0, ptr %78, i32 0, i32 1, !dbg !1885
  %80 = load i32, ptr %9, align 4, !dbg !1886
  %81 = sext i32 %80 to i64, !dbg !1883
  %82 = getelementptr inbounds [3 x %struct.iovec], ptr %79, i64 0, i64 %81, !dbg !1883
  %83 = getelementptr inbounds %struct.iovec, ptr %82, i32 0, i32 1, !dbg !1887
  store i64 %76, ptr %83, align 8, !dbg !1888
  %84 = load i32, ptr %9, align 4, !dbg !1889
  %85 = add nsw i32 %84, 1, !dbg !1889
  store i32 %85, ptr %9, align 4, !dbg !1889
  br label %86, !dbg !1890

86:                                               ; preds = %57, %56
  %87 = load i32, ptr %8, align 4, !dbg !1891
  %88 = add nsw i32 %87, 1, !dbg !1891
  store i32 %88, ptr %8, align 4, !dbg !1891
  br label %44, !dbg !1892, !llvm.loop !1893

89:                                               ; preds = %44
  %90 = load i32, ptr %9, align 4, !dbg !1896
  %91 = sext i32 %90 to i64, !dbg !1896
  %92 = load ptr, ptr %4, align 8, !dbg !1897
  %93 = getelementptr inbounds %struct.nn_usock, ptr %92, i32 0, i32 6, !dbg !1898
  %94 = getelementptr inbounds %struct.anon.0, ptr %93, i32 0, i32 0, !dbg !1899
  %95 = getelementptr inbounds %struct.msghdr, ptr %94, i32 0, i32 3, !dbg !1900
  store i64 %91, ptr %95, align 8, !dbg !1901
  %96 = load ptr, ptr %4, align 8, !dbg !1902
  %97 = load ptr, ptr %4, align 8, !dbg !1903
  %98 = getelementptr inbounds %struct.nn_usock, ptr %97, i32 0, i32 6, !dbg !1904
  %99 = getelementptr inbounds %struct.anon.0, ptr %98, i32 0, i32 0, !dbg !1905
  %100 = call i32 @nn_usock_send_raw(ptr noundef %96, ptr noundef %99), !dbg !1906
  store i32 %100, ptr %7, align 4, !dbg !1907
  %101 = load i32, ptr %7, align 4, !dbg !1908
  %102 = icmp eq i32 %101, 0, !dbg !1908
  %103 = zext i1 %102 to i32, !dbg !1908
  %104 = sext i32 %103 to i64, !dbg !1908
  %105 = icmp ne i64 %104, 0, !dbg !1908
  br i1 %105, label %106, label %111, !dbg !1910

106:                                              ; preds = %89
  %107 = load ptr, ptr %4, align 8, !dbg !1911
  %108 = getelementptr inbounds %struct.nn_usock, ptr %107, i32 0, i32 0, !dbg !1913
  %109 = load ptr, ptr %4, align 8, !dbg !1914
  %110 = getelementptr inbounds %struct.nn_usock, ptr %109, i32 0, i32 14, !dbg !1915
  call void @nn_fsm_raise(ptr noundef %108, ptr noundef %110, i32 noundef 3), !dbg !1916
  br label %143, !dbg !1917

111:                                              ; preds = %89
  %112 = load i32, ptr %7, align 4, !dbg !1918
  %113 = icmp ne i32 %112, -11, !dbg !1918
  %114 = zext i1 %113 to i32, !dbg !1918
  %115 = sext i32 %114 to i64, !dbg !1918
  %116 = icmp ne i64 %115, 0, !dbg !1918
  br i1 %116, label %117, label %137, !dbg !1920

117:                                              ; preds = %111
  br label %118, !dbg !1921

118:                                              ; preds = %117
  %119 = load i32, ptr %7, align 4, !dbg !1923
  %120 = icmp eq i32 %119, -104, !dbg !1923
  %121 = xor i1 %120, true, !dbg !1923
  %122 = zext i1 %121 to i32, !dbg !1923
  %123 = sext i32 %122 to i64, !dbg !1923
  %124 = icmp ne i64 %123, 0, !dbg !1923
  br i1 %124, label %125, label %133, !dbg !1926

125:                                              ; preds = %118
  %126 = load ptr, ptr @stderr, align 8, !dbg !1927
  %127 = load i32, ptr %7, align 4, !dbg !1927
  %128 = sub nsw i32 0, %127, !dbg !1927
  %129 = call ptr @nn_err_strerror(i32 noundef %128), !dbg !1927
  %130 = load i32, ptr %7, align 4, !dbg !1927
  %131 = sub nsw i32 0, %130, !dbg !1927
  %132 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef @.str.5, ptr noundef %129, i32 noundef %131, ptr noundef @.str.2, i32 noundef 387), !dbg !1927
  call void @nn_err_abort() #8, !dbg !1927
  unreachable, !dbg !1927

133:                                              ; preds = %118
  br label %134, !dbg !1926

134:                                              ; preds = %133
  %135 = load ptr, ptr %4, align 8, !dbg !1929
  %136 = getelementptr inbounds %struct.nn_usock, ptr %135, i32 0, i32 0, !dbg !1930
  call void @nn_fsm_action(ptr noundef %136, i32 noundef 8), !dbg !1931
  br label %143, !dbg !1932

137:                                              ; preds = %111
  %138 = load ptr, ptr %4, align 8, !dbg !1933
  %139 = getelementptr inbounds %struct.nn_usock, ptr %138, i32 0, i32 2, !dbg !1934
  %140 = load ptr, ptr %139, align 8, !dbg !1934
  %141 = load ptr, ptr %4, align 8, !dbg !1935
  %142 = getelementptr inbounds %struct.nn_usock, ptr %141, i32 0, i32 10, !dbg !1936
  call void @nn_worker_execute(ptr noundef %140, ptr noundef %142), !dbg !1937
  br label %143, !dbg !1938

143:                                              ; preds = %137, %134, %106
  ret void, !dbg !1938
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_usock_send_raw(ptr noundef %0, ptr noundef %1) #0 !dbg !1939 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1943, metadata !DIExpression()), !dbg !1944
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1945, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1947, metadata !DIExpression()), !dbg !1951
  %7 = load ptr, ptr %4, align 8, !dbg !1952
  %8 = getelementptr inbounds %struct.nn_usock, ptr %7, i32 0, i32 3, !dbg !1953
  %9 = load i32, ptr %8, align 8, !dbg !1953
  %10 = load ptr, ptr %5, align 8, !dbg !1954
  %11 = call i64 @sendmsg(i32 noundef %9, ptr noundef %10, i32 noundef 16384), !dbg !1955
  store i64 %11, ptr %6, align 8, !dbg !1956
  %12 = load i64, ptr %6, align 8, !dbg !1957
  %13 = icmp slt i64 %12, 0, !dbg !1957
  %14 = zext i1 %13 to i32, !dbg !1957
  %15 = sext i32 %14 to i64, !dbg !1957
  %16 = icmp ne i64 %15, 0, !dbg !1957
  br i1 %16, label %17, label %65, !dbg !1959

17:                                               ; preds = %2
  %18 = call ptr @__errno_location() #9, !dbg !1960
  %19 = load i32, ptr %18, align 4, !dbg !1960
  %20 = icmp eq i32 %19, 11, !dbg !1960
  br i1 %20, label %25, label %21, !dbg !1960

21:                                               ; preds = %17
  %22 = call ptr @__errno_location() #9, !dbg !1960
  %23 = load i32, ptr %22, align 4, !dbg !1960
  %24 = icmp eq i32 %23, 11, !dbg !1960
  br label %25, !dbg !1960

25:                                               ; preds = %21, %17
  %26 = phi i1 [ true, %17 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32, !dbg !1960
  %28 = sext i32 %27 to i64, !dbg !1960
  %29 = icmp ne i64 %28, 0, !dbg !1960
  br i1 %29, label %30, label %31, !dbg !1963

30:                                               ; preds = %25
  store i64 0, ptr %6, align 8, !dbg !1964
  br label %64, !dbg !1965

31:                                               ; preds = %25
  br label %32, !dbg !1966

32:                                               ; preds = %31
  %33 = call ptr @__errno_location() #9, !dbg !1968
  %34 = load i32, ptr %33, align 4, !dbg !1968
  %35 = icmp eq i32 %34, 104, !dbg !1968
  br i1 %35, label %48, label %36, !dbg !1968

36:                                               ; preds = %32
  %37 = call ptr @__errno_location() #9, !dbg !1968
  %38 = load i32, ptr %37, align 4, !dbg !1968
  %39 = icmp eq i32 %38, 110, !dbg !1968
  br i1 %39, label %48, label %40, !dbg !1968

40:                                               ; preds = %36
  %41 = call ptr @__errno_location() #9, !dbg !1968
  %42 = load i32, ptr %41, align 4, !dbg !1968
  %43 = icmp eq i32 %42, 32, !dbg !1968
  br i1 %43, label %48, label %44, !dbg !1968

44:                                               ; preds = %40
  %45 = call ptr @__errno_location() #9, !dbg !1968
  %46 = load i32, ptr %45, align 4, !dbg !1968
  %47 = icmp eq i32 %46, 111, !dbg !1968
  br label %48, !dbg !1968

48:                                               ; preds = %44, %40, %36, %32
  %49 = phi i1 [ true, %40 ], [ true, %36 ], [ true, %32 ], [ %47, %44 ]
  %50 = xor i1 %49, true, !dbg !1968
  %51 = zext i1 %50 to i32, !dbg !1968
  %52 = sext i32 %51 to i64, !dbg !1968
  %53 = icmp ne i64 %52, 0, !dbg !1968
  br i1 %53, label %54, label %62, !dbg !1971

54:                                               ; preds = %48
  %55 = load ptr, ptr @stderr, align 8, !dbg !1972
  %56 = call ptr @__errno_location() #9, !dbg !1972
  %57 = load i32, ptr %56, align 4, !dbg !1972
  %58 = call ptr @nn_err_strerror(i32 noundef %57), !dbg !1972
  %59 = call ptr @__errno_location() #9, !dbg !1972
  %60 = load i32, ptr %59, align 4, !dbg !1972
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.5, ptr noundef %58, i32 noundef %60, ptr noundef @.str.2, i32 noundef 880), !dbg !1972
  call void @nn_err_abort() #8, !dbg !1972
  unreachable, !dbg !1972

62:                                               ; preds = %48
  br label %63, !dbg !1971

63:                                               ; preds = %62
  store i32 -104, ptr %3, align 4, !dbg !1974
  br label %139, !dbg !1974

64:                                               ; preds = %30
  br label %65, !dbg !1975

65:                                               ; preds = %64, %2
  br label %66, !dbg !1976

66:                                               ; preds = %131, %65
  %67 = load i64, ptr %6, align 8, !dbg !1977
  %68 = icmp ne i64 %67, 0, !dbg !1976
  br i1 %68, label %69, label %132, !dbg !1976

69:                                               ; preds = %66
  %70 = load i64, ptr %6, align 8, !dbg !1978
  %71 = load ptr, ptr %5, align 8, !dbg !1981
  %72 = getelementptr inbounds %struct.msghdr, ptr %71, i32 0, i32 2, !dbg !1982
  %73 = load ptr, ptr %72, align 8, !dbg !1982
  %74 = getelementptr inbounds %struct.iovec, ptr %73, i32 0, i32 1, !dbg !1983
  %75 = load i64, ptr %74, align 8, !dbg !1983
  %76 = icmp uge i64 %70, %75, !dbg !1984
  br i1 %76, label %77, label %116, !dbg !1985

77:                                               ; preds = %69
  %78 = load ptr, ptr %5, align 8, !dbg !1986
  %79 = getelementptr inbounds %struct.msghdr, ptr %78, i32 0, i32 3, !dbg !1988
  %80 = load i64, ptr %79, align 8, !dbg !1989
  %81 = add i64 %80, -1, !dbg !1989
  store i64 %81, ptr %79, align 8, !dbg !1989
  %82 = load ptr, ptr %5, align 8, !dbg !1990
  %83 = getelementptr inbounds %struct.msghdr, ptr %82, i32 0, i32 3, !dbg !1992
  %84 = load i64, ptr %83, align 8, !dbg !1992
  %85 = icmp ne i64 %84, 0, !dbg !1990
  br i1 %85, label %104, label %86, !dbg !1993

86:                                               ; preds = %77
  br label %87, !dbg !1994

87:                                               ; preds = %86
  %88 = load i64, ptr %6, align 8, !dbg !1996
  %89 = load ptr, ptr %5, align 8, !dbg !1996
  %90 = getelementptr inbounds %struct.msghdr, ptr %89, i32 0, i32 2, !dbg !1996
  %91 = load ptr, ptr %90, align 8, !dbg !1996
  %92 = getelementptr inbounds %struct.iovec, ptr %91, i32 0, i32 1, !dbg !1996
  %93 = load i64, ptr %92, align 8, !dbg !1996
  %94 = icmp eq i64 %88, %93, !dbg !1996
  %95 = xor i1 %94, true, !dbg !1996
  %96 = zext i1 %95 to i32, !dbg !1996
  %97 = sext i32 %96 to i64, !dbg !1996
  %98 = icmp ne i64 %97, 0, !dbg !1996
  br i1 %98, label %99, label %102, !dbg !1999

99:                                               ; preds = %87
  %100 = load ptr, ptr @stderr, align 8, !dbg !2000
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.2, i32 noundef 890), !dbg !2000
  call void @nn_err_abort() #8, !dbg !2000
  unreachable, !dbg !2000

102:                                              ; preds = %87
  br label %103, !dbg !1999

103:                                              ; preds = %102
  store i32 0, ptr %3, align 4, !dbg !2002
  br label %139, !dbg !2002

104:                                              ; preds = %77
  %105 = load ptr, ptr %5, align 8, !dbg !2003
  %106 = getelementptr inbounds %struct.msghdr, ptr %105, i32 0, i32 2, !dbg !2004
  %107 = load ptr, ptr %106, align 8, !dbg !2004
  %108 = getelementptr inbounds %struct.iovec, ptr %107, i32 0, i32 1, !dbg !2005
  %109 = load i64, ptr %108, align 8, !dbg !2005
  %110 = load i64, ptr %6, align 8, !dbg !2006
  %111 = sub i64 %110, %109, !dbg !2006
  store i64 %111, ptr %6, align 8, !dbg !2006
  %112 = load ptr, ptr %5, align 8, !dbg !2007
  %113 = getelementptr inbounds %struct.msghdr, ptr %112, i32 0, i32 2, !dbg !2008
  %114 = load ptr, ptr %113, align 8, !dbg !2009
  %115 = getelementptr inbounds %struct.iovec, ptr %114, i32 1, !dbg !2009
  store ptr %115, ptr %113, align 8, !dbg !2009
  br label %131, !dbg !2010

116:                                              ; preds = %69
  %117 = load i64, ptr %6, align 8, !dbg !2011
  %118 = load ptr, ptr %5, align 8, !dbg !2013
  %119 = getelementptr inbounds %struct.msghdr, ptr %118, i32 0, i32 2, !dbg !2014
  %120 = load ptr, ptr %119, align 8, !dbg !2014
  %121 = getelementptr inbounds %struct.iovec, ptr %120, i32 0, i32 0, !dbg !2015
  %122 = load ptr, ptr %121, align 8, !dbg !2016
  %123 = getelementptr i8, ptr %122, i64 %117, !dbg !2016
  store ptr %123, ptr %121, align 8, !dbg !2016
  %124 = load i64, ptr %6, align 8, !dbg !2017
  %125 = load ptr, ptr %5, align 8, !dbg !2018
  %126 = getelementptr inbounds %struct.msghdr, ptr %125, i32 0, i32 2, !dbg !2019
  %127 = load ptr, ptr %126, align 8, !dbg !2019
  %128 = getelementptr inbounds %struct.iovec, ptr %127, i32 0, i32 1, !dbg !2020
  %129 = load i64, ptr %128, align 8, !dbg !2021
  %130 = sub i64 %129, %124, !dbg !2021
  store i64 %130, ptr %128, align 8, !dbg !2021
  store i32 -11, ptr %3, align 4, !dbg !2022
  br label %139, !dbg !2022

131:                                              ; preds = %104
  br label %66, !dbg !1976, !llvm.loop !2023

132:                                              ; preds = %66
  %133 = load ptr, ptr %5, align 8, !dbg !2025
  %134 = getelementptr inbounds %struct.msghdr, ptr %133, i32 0, i32 3, !dbg !2027
  %135 = load i64, ptr %134, align 8, !dbg !2027
  %136 = icmp ugt i64 %135, 0, !dbg !2028
  br i1 %136, label %137, label %138, !dbg !2029

137:                                              ; preds = %132
  store i32 -11, ptr %3, align 4, !dbg !2030
  br label %139, !dbg !2030

138:                                              ; preds = %132
  store i32 0, ptr %3, align 4, !dbg !2031
  br label %139, !dbg !2031

139:                                              ; preds = %138, %137, %116, %103, %63
  %140 = load i32, ptr %3, align 4, !dbg !2032
  ret i32 %140, !dbg !2032
}

declare void @nn_fsm_raise(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_usock_recv(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !2033 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2036, metadata !DIExpression()), !dbg !2037
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2038, metadata !DIExpression()), !dbg !2039
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2040, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2042, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2044, metadata !DIExpression()), !dbg !2045
  br label %9, !dbg !2046

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 8, !dbg !2047
  %11 = getelementptr inbounds %struct.nn_usock, ptr %10, i32 0, i32 1, !dbg !2047
  %12 = load i32, ptr %11, align 8, !dbg !2047
  %13 = icmp eq i32 %12, 6, !dbg !2047
  %14 = xor i1 %13, true, !dbg !2047
  %15 = zext i1 %14 to i32, !dbg !2047
  %16 = sext i32 %15 to i64, !dbg !2047
  %17 = icmp ne i64 %16, 0, !dbg !2047
  br i1 %17, label %18, label %21, !dbg !2050

18:                                               ; preds = %9
  %19 = load ptr, ptr @stderr, align 8, !dbg !2051
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str, ptr noundef @.str.8, ptr noundef @.str.2, i32 noundef 402), !dbg !2051
  call void @nn_err_abort() #8, !dbg !2051
  unreachable, !dbg !2051

21:                                               ; preds = %9
  br label %22, !dbg !2050

22:                                               ; preds = %21
  %23 = load i64, ptr %6, align 8, !dbg !2053
  store i64 %23, ptr %8, align 8, !dbg !2054
  %24 = load ptr, ptr %4, align 8, !dbg !2055
  %25 = load ptr, ptr %5, align 8, !dbg !2056
  %26 = call i32 @nn_usock_recv_raw(ptr noundef %24, ptr noundef %25, ptr noundef %8), !dbg !2057
  store i32 %26, ptr %7, align 4, !dbg !2058
  %27 = load i32, ptr %7, align 4, !dbg !2059
  %28 = icmp slt i32 %27, 0, !dbg !2059
  %29 = zext i1 %28 to i32, !dbg !2059
  %30 = sext i32 %29 to i64, !dbg !2059
  %31 = icmp ne i64 %30, 0, !dbg !2059
  br i1 %31, label %32, label %52, !dbg !2061

32:                                               ; preds = %22
  br label %33, !dbg !2062

33:                                               ; preds = %32
  %34 = load i32, ptr %7, align 4, !dbg !2064
  %35 = icmp eq i32 %34, -104, !dbg !2064
  %36 = xor i1 %35, true, !dbg !2064
  %37 = zext i1 %36 to i32, !dbg !2064
  %38 = sext i32 %37 to i64, !dbg !2064
  %39 = icmp ne i64 %38, 0, !dbg !2064
  br i1 %39, label %40, label %48, !dbg !2067

40:                                               ; preds = %33
  %41 = load ptr, ptr @stderr, align 8, !dbg !2068
  %42 = load i32, ptr %7, align 4, !dbg !2068
  %43 = sub nsw i32 0, %42, !dbg !2068
  %44 = call ptr @nn_err_strerror(i32 noundef %43), !dbg !2068
  %45 = load i32, ptr %7, align 4, !dbg !2068
  %46 = sub nsw i32 0, %45, !dbg !2068
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.5, ptr noundef %44, i32 noundef %46, ptr noundef @.str.2, i32 noundef 408), !dbg !2068
  call void @nn_err_abort() #8, !dbg !2068
  unreachable, !dbg !2068

48:                                               ; preds = %33
  br label %49, !dbg !2067

49:                                               ; preds = %48
  %50 = load ptr, ptr %4, align 8, !dbg !2070
  %51 = getelementptr inbounds %struct.nn_usock, ptr %50, i32 0, i32 0, !dbg !2071
  call void @nn_fsm_action(ptr noundef %51, i32 noundef 8), !dbg !2072
  br label %82, !dbg !2073

52:                                               ; preds = %22
  %53 = load i64, ptr %8, align 8, !dbg !2074
  %54 = load i64, ptr %6, align 8, !dbg !2074
  %55 = icmp eq i64 %53, %54, !dbg !2074
  %56 = zext i1 %55 to i32, !dbg !2074
  %57 = sext i32 %56 to i64, !dbg !2074
  %58 = icmp ne i64 %57, 0, !dbg !2074
  br i1 %58, label %59, label %64, !dbg !2076

59:                                               ; preds = %52
  %60 = load ptr, ptr %4, align 8, !dbg !2077
  %61 = getelementptr inbounds %struct.nn_usock, ptr %60, i32 0, i32 0, !dbg !2079
  %62 = load ptr, ptr %4, align 8, !dbg !2080
  %63 = getelementptr inbounds %struct.nn_usock, ptr %62, i32 0, i32 15, !dbg !2081
  call void @nn_fsm_raise(ptr noundef %61, ptr noundef %63, i32 noundef 4), !dbg !2082
  br label %82, !dbg !2083

64:                                               ; preds = %52
  %65 = load ptr, ptr %5, align 8, !dbg !2084
  %66 = load i64, ptr %8, align 8, !dbg !2085
  %67 = getelementptr inbounds i8, ptr %65, i64 %66, !dbg !2086
  %68 = load ptr, ptr %4, align 8, !dbg !2087
  %69 = getelementptr inbounds %struct.nn_usock, ptr %68, i32 0, i32 5, !dbg !2088
  %70 = getelementptr inbounds %struct.anon, ptr %69, i32 0, i32 0, !dbg !2089
  store ptr %67, ptr %70, align 8, !dbg !2090
  %71 = load i64, ptr %6, align 8, !dbg !2091
  %72 = load i64, ptr %8, align 8, !dbg !2092
  %73 = sub i64 %71, %72, !dbg !2093
  %74 = load ptr, ptr %4, align 8, !dbg !2094
  %75 = getelementptr inbounds %struct.nn_usock, ptr %74, i32 0, i32 5, !dbg !2095
  %76 = getelementptr inbounds %struct.anon, ptr %75, i32 0, i32 1, !dbg !2096
  store i64 %73, ptr %76, align 8, !dbg !2097
  %77 = load ptr, ptr %4, align 8, !dbg !2098
  %78 = getelementptr inbounds %struct.nn_usock, ptr %77, i32 0, i32 2, !dbg !2099
  %79 = load ptr, ptr %78, align 8, !dbg !2099
  %80 = load ptr, ptr %4, align 8, !dbg !2100
  %81 = getelementptr inbounds %struct.nn_usock, ptr %80, i32 0, i32 11, !dbg !2101
  call void @nn_worker_execute(ptr noundef %79, ptr noundef %81), !dbg !2102
  br label %82, !dbg !2103

82:                                               ; preds = %64, %59, %49
  ret void, !dbg !2103
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_usock_recv_raw(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2104 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2108, metadata !DIExpression()), !dbg !2109
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2110, metadata !DIExpression()), !dbg !2111
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2112, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2114, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2116, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2118, metadata !DIExpression()), !dbg !2119
  %11 = load ptr, ptr %5, align 8, !dbg !2120
  %12 = getelementptr inbounds %struct.nn_usock, ptr %11, i32 0, i32 5, !dbg !2120
  %13 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 2, !dbg !2120
  %14 = load ptr, ptr %13, align 8, !dbg !2120
  %15 = icmp ne ptr %14, null, !dbg !2120
  %16 = xor i1 %15, true, !dbg !2120
  %17 = zext i1 %16 to i32, !dbg !2120
  %18 = sext i32 %17 to i64, !dbg !2120
  %19 = icmp ne i64 %18, 0, !dbg !2120
  br i1 %19, label %20, label %40, !dbg !2122

20:                                               ; preds = %3
  %21 = call ptr @nn_alloc_(i64 noundef 2048), !dbg !2123
  %22 = load ptr, ptr %5, align 8, !dbg !2125
  %23 = getelementptr inbounds %struct.nn_usock, ptr %22, i32 0, i32 5, !dbg !2126
  %24 = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 2, !dbg !2127
  store ptr %21, ptr %24, align 8, !dbg !2128
  br label %25, !dbg !2129

25:                                               ; preds = %20
  %26 = load ptr, ptr %5, align 8, !dbg !2130
  %27 = getelementptr inbounds %struct.nn_usock, ptr %26, i32 0, i32 5, !dbg !2130
  %28 = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 2, !dbg !2130
  %29 = load ptr, ptr %28, align 8, !dbg !2130
  %30 = icmp ne ptr %29, null, !dbg !2130
  %31 = xor i1 %30, true, !dbg !2130
  %32 = zext i1 %31 to i32, !dbg !2130
  %33 = sext i32 %32 to i64, !dbg !2130
  %34 = icmp ne i64 %33, 0, !dbg !2130
  br i1 %34, label %35, label %38, !dbg !2133

35:                                               ; preds = %25
  %36 = load ptr, ptr @stderr, align 8, !dbg !2134
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.17, ptr noundef @.str.2, i32 noundef 920), !dbg !2134
  call void @nn_err_abort() #8, !dbg !2134
  unreachable, !dbg !2134

38:                                               ; preds = %25
  br label %39, !dbg !2133

39:                                               ; preds = %38
  br label %40, !dbg !2136

40:                                               ; preds = %39, %3
  %41 = load ptr, ptr %7, align 8, !dbg !2137
  %42 = load i64, ptr %41, align 8, !dbg !2138
  store i64 %42, ptr %9, align 8, !dbg !2139
  %43 = load ptr, ptr %5, align 8, !dbg !2140
  %44 = getelementptr inbounds %struct.nn_usock, ptr %43, i32 0, i32 5, !dbg !2141
  %45 = getelementptr inbounds %struct.anon, ptr %44, i32 0, i32 3, !dbg !2142
  %46 = load i64, ptr %45, align 8, !dbg !2142
  %47 = load ptr, ptr %5, align 8, !dbg !2143
  %48 = getelementptr inbounds %struct.nn_usock, ptr %47, i32 0, i32 5, !dbg !2144
  %49 = getelementptr inbounds %struct.anon, ptr %48, i32 0, i32 4, !dbg !2145
  %50 = load i64, ptr %49, align 8, !dbg !2145
  %51 = sub i64 %46, %50, !dbg !2146
  store i64 %51, ptr %8, align 8, !dbg !2147
  %52 = load i64, ptr %8, align 8, !dbg !2148
  %53 = icmp ne i64 %52, 0, !dbg !2148
  br i1 %53, label %54, label %88, !dbg !2150

54:                                               ; preds = %40
  %55 = load i64, ptr %8, align 8, !dbg !2151
  %56 = load i64, ptr %9, align 8, !dbg !2154
  %57 = icmp ugt i64 %55, %56, !dbg !2155
  br i1 %57, label %58, label %60, !dbg !2156

58:                                               ; preds = %54
  %59 = load i64, ptr %9, align 8, !dbg !2157
  store i64 %59, ptr %8, align 8, !dbg !2158
  br label %60, !dbg !2159

60:                                               ; preds = %58, %54
  %61 = load ptr, ptr %6, align 8, !dbg !2160
  %62 = load ptr, ptr %5, align 8, !dbg !2161
  %63 = getelementptr inbounds %struct.nn_usock, ptr %62, i32 0, i32 5, !dbg !2162
  %64 = getelementptr inbounds %struct.anon, ptr %63, i32 0, i32 2, !dbg !2163
  %65 = load ptr, ptr %64, align 8, !dbg !2163
  %66 = load ptr, ptr %5, align 8, !dbg !2164
  %67 = getelementptr inbounds %struct.nn_usock, ptr %66, i32 0, i32 5, !dbg !2165
  %68 = getelementptr inbounds %struct.anon, ptr %67, i32 0, i32 4, !dbg !2166
  %69 = load i64, ptr %68, align 8, !dbg !2166
  %70 = getelementptr inbounds i8, ptr %65, i64 %69, !dbg !2167
  %71 = load i64, ptr %8, align 8, !dbg !2168
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %70, i64 %71, i1 false), !dbg !2169
  %72 = load i64, ptr %8, align 8, !dbg !2170
  %73 = load ptr, ptr %5, align 8, !dbg !2171
  %74 = getelementptr inbounds %struct.nn_usock, ptr %73, i32 0, i32 5, !dbg !2172
  %75 = getelementptr inbounds %struct.anon, ptr %74, i32 0, i32 4, !dbg !2173
  %76 = load i64, ptr %75, align 8, !dbg !2174
  %77 = add i64 %76, %72, !dbg !2174
  store i64 %77, ptr %75, align 8, !dbg !2174
  %78 = load ptr, ptr %6, align 8, !dbg !2175
  %79 = load i64, ptr %8, align 8, !dbg !2176
  %80 = getelementptr inbounds i8, ptr %78, i64 %79, !dbg !2177
  store ptr %80, ptr %6, align 8, !dbg !2178
  %81 = load i64, ptr %8, align 8, !dbg !2179
  %82 = load i64, ptr %9, align 8, !dbg !2180
  %83 = sub i64 %82, %81, !dbg !2180
  store i64 %83, ptr %9, align 8, !dbg !2180
  %84 = load i64, ptr %9, align 8, !dbg !2181
  %85 = icmp ne i64 %84, 0, !dbg !2181
  br i1 %85, label %87, label %86, !dbg !2183

86:                                               ; preds = %60
  store i32 0, ptr %4, align 4, !dbg !2184
  br label %223, !dbg !2184

87:                                               ; preds = %60
  br label %88, !dbg !2185

88:                                               ; preds = %87, %40
  %89 = load i64, ptr %9, align 8, !dbg !2186
  %90 = icmp ugt i64 %89, 2048, !dbg !2188
  br i1 %90, label %91, label %98, !dbg !2189

91:                                               ; preds = %88
  %92 = load ptr, ptr %5, align 8, !dbg !2190
  %93 = getelementptr inbounds %struct.nn_usock, ptr %92, i32 0, i32 3, !dbg !2191
  %94 = load i32, ptr %93, align 8, !dbg !2191
  %95 = load ptr, ptr %6, align 8, !dbg !2192
  %96 = load i64, ptr %9, align 8, !dbg !2193
  %97 = call i64 @recv(i32 noundef %94, ptr noundef %95, i64 noundef %96, i32 noundef 0), !dbg !2194
  store i64 %97, ptr %10, align 8, !dbg !2195
  br label %107, !dbg !2196

98:                                               ; preds = %88
  %99 = load ptr, ptr %5, align 8, !dbg !2197
  %100 = getelementptr inbounds %struct.nn_usock, ptr %99, i32 0, i32 3, !dbg !2198
  %101 = load i32, ptr %100, align 8, !dbg !2198
  %102 = load ptr, ptr %5, align 8, !dbg !2199
  %103 = getelementptr inbounds %struct.nn_usock, ptr %102, i32 0, i32 5, !dbg !2200
  %104 = getelementptr inbounds %struct.anon, ptr %103, i32 0, i32 2, !dbg !2201
  %105 = load ptr, ptr %104, align 8, !dbg !2201
  %106 = call i64 @recv(i32 noundef %101, ptr noundef %105, i64 noundef 2048, i32 noundef 0), !dbg !2202
  store i64 %106, ptr %10, align 8, !dbg !2203
  br label %107

107:                                              ; preds = %98, %91
  %108 = load i64, ptr %10, align 8, !dbg !2204
  %109 = icmp sle i64 %108, 0, !dbg !2204
  %110 = zext i1 %109 to i32, !dbg !2204
  %111 = sext i32 %110 to i64, !dbg !2204
  %112 = icmp ne i64 %111, 0, !dbg !2204
  br i1 %112, label %113, label %172, !dbg !2206

113:                                              ; preds = %107
  %114 = load i64, ptr %10, align 8, !dbg !2207
  %115 = icmp eq i64 %114, 0, !dbg !2207
  %116 = zext i1 %115 to i32, !dbg !2207
  %117 = sext i32 %116 to i64, !dbg !2207
  %118 = icmp ne i64 %117, 0, !dbg !2207
  br i1 %118, label %119, label %120, !dbg !2210

119:                                              ; preds = %113
  store i32 -104, ptr %4, align 4, !dbg !2211
  br label %223, !dbg !2211

120:                                              ; preds = %113
  %121 = call ptr @__errno_location() #9, !dbg !2212
  %122 = load i32, ptr %121, align 4, !dbg !2212
  %123 = icmp eq i32 %122, 11, !dbg !2212
  br i1 %123, label %128, label %124, !dbg !2212

124:                                              ; preds = %120
  %125 = call ptr @__errno_location() #9, !dbg !2212
  %126 = load i32, ptr %125, align 4, !dbg !2212
  %127 = icmp eq i32 %126, 11, !dbg !2212
  br label %128, !dbg !2212

128:                                              ; preds = %124, %120
  %129 = phi i1 [ true, %120 ], [ %127, %124 ]
  %130 = zext i1 %129 to i32, !dbg !2212
  %131 = sext i32 %130 to i64, !dbg !2212
  %132 = icmp ne i64 %131, 0, !dbg !2212
  br i1 %132, label %133, label %134, !dbg !2214

133:                                              ; preds = %128
  store i64 0, ptr %10, align 8, !dbg !2215
  br label %171, !dbg !2216

134:                                              ; preds = %128
  br label %135, !dbg !2217

135:                                              ; preds = %134
  %136 = call ptr @__errno_location() #9, !dbg !2219
  %137 = load i32, ptr %136, align 4, !dbg !2219
  %138 = icmp eq i32 %137, 104, !dbg !2219
  br i1 %138, label %155, label %139, !dbg !2219

139:                                              ; preds = %135
  %140 = call ptr @__errno_location() #9, !dbg !2219
  %141 = load i32, ptr %140, align 4, !dbg !2219
  %142 = icmp eq i32 %141, 107, !dbg !2219
  br i1 %142, label %155, label %143, !dbg !2219

143:                                              ; preds = %139
  %144 = call ptr @__errno_location() #9, !dbg !2219
  %145 = load i32, ptr %144, align 4, !dbg !2219
  %146 = icmp eq i32 %145, 111, !dbg !2219
  br i1 %146, label %155, label %147, !dbg !2219

147:                                              ; preds = %143
  %148 = call ptr @__errno_location() #9, !dbg !2219
  %149 = load i32, ptr %148, align 4, !dbg !2219
  %150 = icmp eq i32 %149, 110, !dbg !2219
  br i1 %150, label %155, label %151, !dbg !2219

151:                                              ; preds = %147
  %152 = call ptr @__errno_location() #9, !dbg !2219
  %153 = load i32, ptr %152, align 4, !dbg !2219
  %154 = icmp eq i32 %153, 113, !dbg !2219
  br label %155, !dbg !2219

155:                                              ; preds = %151, %147, %143, %139, %135
  %156 = phi i1 [ true, %147 ], [ true, %143 ], [ true, %139 ], [ true, %135 ], [ %154, %151 ]
  %157 = xor i1 %156, true, !dbg !2219
  %158 = zext i1 %157 to i32, !dbg !2219
  %159 = sext i32 %158 to i64, !dbg !2219
  %160 = icmp ne i64 %159, 0, !dbg !2219
  br i1 %160, label %161, label %169, !dbg !2222

161:                                              ; preds = %155
  %162 = load ptr, ptr @stderr, align 8, !dbg !2223
  %163 = call ptr @__errno_location() #9, !dbg !2223
  %164 = load i32, ptr %163, align 4, !dbg !2223
  %165 = call ptr @nn_err_strerror(i32 noundef %164), !dbg !2223
  %166 = call ptr @__errno_location() #9, !dbg !2223
  %167 = load i32, ptr %166, align 4, !dbg !2223
  %168 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef @.str.5, ptr noundef %165, i32 noundef %167, ptr noundef @.str.2, i32 noundef 958), !dbg !2223
  call void @nn_err_abort() #8, !dbg !2223
  unreachable, !dbg !2223

169:                                              ; preds = %155
  br label %170, !dbg !2222

170:                                              ; preds = %169
  store i32 -104, ptr %4, align 4, !dbg !2225
  br label %223, !dbg !2225

171:                                              ; preds = %133
  br label %172, !dbg !2226

172:                                              ; preds = %171, %107
  %173 = load i64, ptr %9, align 8, !dbg !2227
  %174 = icmp ugt i64 %173, 2048, !dbg !2229
  br i1 %174, label %175, label %183, !dbg !2230

175:                                              ; preds = %172
  %176 = load i64, ptr %10, align 8, !dbg !2231
  %177 = load i64, ptr %9, align 8, !dbg !2233
  %178 = sub i64 %177, %176, !dbg !2233
  store i64 %178, ptr %9, align 8, !dbg !2233
  %179 = load i64, ptr %9, align 8, !dbg !2234
  %180 = load ptr, ptr %7, align 8, !dbg !2235
  %181 = load i64, ptr %180, align 8, !dbg !2236
  %182 = sub i64 %181, %179, !dbg !2236
  store i64 %182, ptr %180, align 8, !dbg !2236
  store i32 0, ptr %4, align 4, !dbg !2237
  br label %223, !dbg !2237

183:                                              ; preds = %172
  %184 = load i64, ptr %10, align 8, !dbg !2238
  %185 = load ptr, ptr %5, align 8, !dbg !2239
  %186 = getelementptr inbounds %struct.nn_usock, ptr %185, i32 0, i32 5, !dbg !2240
  %187 = getelementptr inbounds %struct.anon, ptr %186, i32 0, i32 3, !dbg !2241
  store i64 %184, ptr %187, align 8, !dbg !2242
  %188 = load ptr, ptr %5, align 8, !dbg !2243
  %189 = getelementptr inbounds %struct.nn_usock, ptr %188, i32 0, i32 5, !dbg !2244
  %190 = getelementptr inbounds %struct.anon, ptr %189, i32 0, i32 4, !dbg !2245
  store i64 0, ptr %190, align 8, !dbg !2246
  %191 = load i64, ptr %10, align 8, !dbg !2247
  %192 = icmp ne i64 %191, 0, !dbg !2247
  br i1 %192, label %193, label %218, !dbg !2249

193:                                              ; preds = %183
  %194 = load i64, ptr %10, align 8, !dbg !2250
  %195 = load i64, ptr %9, align 8, !dbg !2252
  %196 = icmp ugt i64 %194, %195, !dbg !2253
  br i1 %196, label %197, label %199, !dbg !2250

197:                                              ; preds = %193
  %198 = load i64, ptr %9, align 8, !dbg !2254
  br label %201, !dbg !2250

199:                                              ; preds = %193
  %200 = load i64, ptr %10, align 8, !dbg !2255
  br label %201, !dbg !2250

201:                                              ; preds = %199, %197
  %202 = phi i64 [ %198, %197 ], [ %200, %199 ], !dbg !2250
  store i64 %202, ptr %8, align 8, !dbg !2256
  %203 = load ptr, ptr %6, align 8, !dbg !2257
  %204 = load ptr, ptr %5, align 8, !dbg !2258
  %205 = getelementptr inbounds %struct.nn_usock, ptr %204, i32 0, i32 5, !dbg !2259
  %206 = getelementptr inbounds %struct.anon, ptr %205, i32 0, i32 2, !dbg !2260
  %207 = load ptr, ptr %206, align 8, !dbg !2260
  %208 = load i64, ptr %8, align 8, !dbg !2261
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %203, ptr align 1 %207, i64 %208, i1 false), !dbg !2262
  %209 = load i64, ptr %8, align 8, !dbg !2263
  %210 = load i64, ptr %9, align 8, !dbg !2264
  %211 = sub i64 %210, %209, !dbg !2264
  store i64 %211, ptr %9, align 8, !dbg !2264
  %212 = load i64, ptr %8, align 8, !dbg !2265
  %213 = load ptr, ptr %5, align 8, !dbg !2266
  %214 = getelementptr inbounds %struct.nn_usock, ptr %213, i32 0, i32 5, !dbg !2267
  %215 = getelementptr inbounds %struct.anon, ptr %214, i32 0, i32 4, !dbg !2268
  %216 = load i64, ptr %215, align 8, !dbg !2269
  %217 = add i64 %216, %212, !dbg !2269
  store i64 %217, ptr %215, align 8, !dbg !2269
  br label %218, !dbg !2270

218:                                              ; preds = %201, %183
  %219 = load i64, ptr %9, align 8, !dbg !2271
  %220 = load ptr, ptr %7, align 8, !dbg !2272
  %221 = load i64, ptr %220, align 8, !dbg !2273
  %222 = sub i64 %221, %219, !dbg !2273
  store i64 %222, ptr %220, align 8, !dbg !2273
  store i32 0, ptr %4, align 4, !dbg !2274
  br label %223, !dbg !2274

223:                                              ; preds = %218, %175, %170, %119, %86
  %224 = load i32, ptr %4, align 4, !dbg !2275
  ret i32 %224, !dbg !2275
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #2

declare void @nn_worker_set_out(ptr noundef, ptr noundef) #2

declare void @nn_worker_set_in(ptr noundef, ptr noundef) #2

declare void @nn_worker_add_fd(ptr noundef, i32 noundef, ptr noundef) #2

declare void @nn_worker_rm_fd(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare i32 @close(i32 noundef) #2

declare void @nn_fsm_stopped(ptr noundef, i32 noundef) #2

declare void @nn_worker_reset_out(ptr noundef, ptr noundef) #2

declare void @nn_worker_reset_in(ptr noundef, ptr noundef) #2

declare i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) #2

declare ptr @nn_alloc_(i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noreturn }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!86}
!llvm.module.flags = !{!345, !346, !347, !348, !349, !350, !351}
!llvm.ident = !{!352}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/aio/usock_posix.inc", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "5495a598bd191fd0603a84a82608cab3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 35)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 26)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 81)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 39)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 254, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 17)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 312, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 13)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 314, type: !29, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 361, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 37)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 364, type: !3, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 544, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 68)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 14)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 441, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 31)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 475, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 688, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 86)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 503, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 47)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 536, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 2)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 890, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 32)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 920, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 23)
!86 = distinct !DICompileUnit(language: DW_LANG_C11, file: !87, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !88, retainedTypes: !126, globals: !344, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "src/aio/usock.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "43cb00924970b91332964af659007a45")
!88 = !{!89, !102}
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !90, line: 24, baseType: !91, size: 32, elements: !92)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!91 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!92 = !{!93, !94, !95, !96, !97, !98, !99, !100, !101}
!93 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!94 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!95 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!96 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!97 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!98 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!99 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!100 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!101 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 202, baseType: !91, size: 32, elements: !104)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!105 = !DIEnumerator(name: "MSG_OOB", value: 1)
!106 = !DIEnumerator(name: "MSG_PEEK", value: 2)
!107 = !DIEnumerator(name: "MSG_DONTROUTE", value: 4)
!108 = !DIEnumerator(name: "MSG_CTRUNC", value: 8)
!109 = !DIEnumerator(name: "MSG_PROXY", value: 16)
!110 = !DIEnumerator(name: "MSG_TRUNC", value: 32)
!111 = !DIEnumerator(name: "MSG_DONTWAIT", value: 64)
!112 = !DIEnumerator(name: "MSG_EOR", value: 128)
!113 = !DIEnumerator(name: "MSG_WAITALL", value: 256)
!114 = !DIEnumerator(name: "MSG_FIN", value: 512)
!115 = !DIEnumerator(name: "MSG_SYN", value: 1024)
!116 = !DIEnumerator(name: "MSG_CONFIRM", value: 2048)
!117 = !DIEnumerator(name: "MSG_RST", value: 4096)
!118 = !DIEnumerator(name: "MSG_ERRQUEUE", value: 8192)
!119 = !DIEnumerator(name: "MSG_NOSIGNAL", value: 16384)
!120 = !DIEnumerator(name: "MSG_MORE", value: 32768)
!121 = !DIEnumerator(name: "MSG_WAITFORONE", value: 65536)
!122 = !DIEnumerator(name: "MSG_BATCH", value: 262144)
!123 = !DIEnumerator(name: "MSG_ZEROCOPY", value: 67108864)
!124 = !DIEnumerator(name: "MSG_FASTOPEN", value: 536870912)
!125 = !DIEnumerator(name: "MSG_CMSG_CLOEXEC", value: 1073741824)
!126 = !{!127, !130, !131, !136, !343, !150}
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !103, line: 33, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !129, line: 210, baseType: !91)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!130 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !133, line: 24, baseType: !134)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !129, line: 38, baseType: !135)
!135 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_usock", file: !138, line: 29, size: 4224, elements: !139)
!138 = !DIFile(filename: "./src/aio/usock_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "31b785bc46a858e5ba003f912abaeac8")
!139 = !{!140, !171, !172, !289, !290, !295, !305, !328, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !137, file: !138, line: 32, baseType: !141, size: 640)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !142, line: 66, size: 640, elements: !143)
!142 = !DIFile(filename: "./src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!143 = !{!144, !151, !152, !153, !154, !155, !158}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !141, file: !142, line: 67, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !142, line: 58, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !149, !130, !130, !150}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !141, file: !142, line: 68, baseType: !130, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !141, file: !142, line: 69, baseType: !130, size: 32, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !141, file: !142, line: 70, baseType: !150, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !141, file: !142, line: 71, baseType: !149, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !141, file: !142, line: 72, baseType: !156, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !142, line: 30, flags: DIFlagFwdDecl)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !141, file: !142, line: 73, baseType: !159, size: 320, offset: 320)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !142, line: 34, size: 320, elements: !160)
!160 = !{!161, !162, !163, !164, !165}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !159, file: !142, line: 35, baseType: !149, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !159, file: !142, line: 36, baseType: !130, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !159, file: !142, line: 37, baseType: !150, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !159, file: !142, line: 38, baseType: !130, size: 32, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !159, file: !142, line: 39, baseType: !166, size: 64, offset: 256)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !167, line: 33, size: 64, elements: !168)
!167 = !DIFile(filename: "./src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !167, line: 34, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !137, file: !138, line: 33, baseType: !130, size: 32, offset: 640)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !137, file: !138, line: 36, baseType: !173, size: 64, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !175, line: 53, size: 1408, elements: !176)
!175 = !DIFile(filename: "./src/aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!176 = !{!177, !212, !217, !218, !224, !251, !252, !276}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !174, file: !175, line: 54, baseType: !178, size: 320)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !179, line: 32, size: 320, elements: !180)
!179 = !DIFile(filename: "./src/aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !178, file: !179, line: 36, baseType: !182, size: 320)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !183, line: 72, baseType: !184)
!183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !183, line: 67, size: 320, elements: !185)
!185 = !{!186, !206, !210}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !184, file: !183, line: 69, baseType: !187, size: 320)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !188, line: 22, size: 320, elements: !189)
!188 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!189 = !{!190, !191, !192, !193, !194, !195, !197, !198}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !187, file: !188, line: 24, baseType: !130, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !187, file: !188, line: 25, baseType: !91, size: 32, offset: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !187, file: !188, line: 26, baseType: !130, size: 32, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !187, file: !188, line: 28, baseType: !91, size: 32, offset: 96)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !187, file: !188, line: 32, baseType: !130, size: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !187, file: !188, line: 34, baseType: !196, size: 16, offset: 160)
!196 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !187, file: !188, line: 35, baseType: !196, size: 16, offset: 176)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !187, file: !188, line: 36, baseType: !199, size: 128, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !200, line: 55, baseType: !201)
!200 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !200, line: 51, size: 128, elements: !202)
!202 = !{!203, !205}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !201, file: !200, line: 53, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !201, file: !200, line: 54, baseType: !204, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !184, file: !183, line: 70, baseType: !207, size: 320)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 40)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !184, file: !183, line: 71, baseType: !211, size: 64)
!211 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !174, file: !175, line: 55, baseType: !213, size: 128, offset: 320)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !167, line: 37, size: 128, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !213, file: !167, line: 38, baseType: !170, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !213, file: !167, line: 39, baseType: !170, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !174, file: !175, line: 56, baseType: !166, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !174, file: !175, line: 57, baseType: !219, size: 64, offset: 512)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !220, line: 25, size: 64, elements: !221)
!220 = !DIFile(filename: "./src/aio/../utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !219, file: !220, line: 26, baseType: !130, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !219, file: !220, line: 27, baseType: !130, size: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !174, file: !175, line: 58, baseType: !225, size: 320, offset: 576)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !226, line: 31, size: 320, elements: !227)
!226 = !DIFile(filename: "./src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!227 = !{!228, !229, !230, !231, !239, !250}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !225, file: !226, line: 34, baseType: !130, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !225, file: !226, line: 37, baseType: !130, size: 32, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !225, file: !226, line: 40, baseType: !130, size: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !225, file: !226, line: 43, baseType: !232, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !234, line: 36, size: 64, elements: !235)
!234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!235 = !{!236, !237, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !233, file: !234, line: 38, baseType: !130, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !233, file: !234, line: 39, baseType: !196, size: 16, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !233, file: !234, line: 40, baseType: !196, size: 16, offset: 48)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !225, file: !226, line: 52, baseType: !240, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !226, line: 48, size: 128, elements: !242)
!242 = !{!243, !248, !249}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !241, file: !226, line: 49, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !226, line: 27, size: 32, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !245, file: !226, line: 28, baseType: !130, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !241, file: !226, line: 50, baseType: !130, size: 32, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !226, line: 51, baseType: !130, size: 32, offset: 96)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !225, file: !226, line: 55, baseType: !130, size: 32, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !174, file: !175, line: 59, baseType: !245, size: 32, offset: 896)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !174, file: !175, line: 60, baseType: !253, size: 256, offset: 960)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !254, line: 37, size: 256, elements: !255)
!254 = !DIFile(filename: "./src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!255 = !{!256, !265}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !253, file: !254, line: 38, baseType: !257, size: 128)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !258, line: 31, size: 128, elements: !259)
!258 = !DIFile(filename: "./src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!259 = !{!260, !264}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !257, file: !258, line: 33, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !133, line: 27, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !129, line: 45, baseType: !263)
!263 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !257, file: !258, line: 34, baseType: !261, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !253, file: !254, line: 39, baseType: !266, size: 128, offset: 128)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !267, line: 31, size: 128, elements: !268)
!267 = !DIFile(filename: "./src/aio/../utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!268 = !{!269, !275}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !266, file: !267, line: 32, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !267, line: 26, size: 128, elements: !272)
!272 = !{!273, !274}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !267, line: 27, baseType: !270, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !271, file: !267, line: 28, baseType: !270, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !266, file: !267, line: 33, baseType: !270, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !174, file: !175, line: 61, baseType: !277, size: 192, offset: 1216)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !278, line: 25, size: 192, elements: !279)
!278 = !DIFile(filename: "./src/aio/../utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!279 = !{!280, !286, !287}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !277, file: !278, line: 27, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !283, line: 28, baseType: !284)
!283 = !DIFile(filename: "./src/aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!284 = !DISubroutineType(types: !285)
!285 = !{null, !150}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !277, file: !278, line: 28, baseType: !150, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !277, file: !278, line: 29, baseType: !288, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !183, line: 27, baseType: !263)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !137, file: !138, line: 39, baseType: !130, size: 32, offset: 768)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "wfd", scope: !137, file: !138, line: 40, baseType: !291, size: 128, offset: 832)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_fd", file: !175, line: 40, size: 128, elements: !292)
!292 = !{!293, !294}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !291, file: !175, line: 41, baseType: !149, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !291, file: !175, line: 42, baseType: !245, size: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !137, file: !138, line: 59, baseType: !296, size: 320, offset: 960)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !138, line: 43, size: 320, elements: !297)
!297 = !{!298, !299, !302, !303, !304}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !296, file: !138, line: 46, baseType: !131, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !296, file: !138, line: 47, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !301, line: 46, baseType: !263)
!301 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!302 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !296, file: !138, line: 50, baseType: !131, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "batch_len", scope: !296, file: !138, line: 53, baseType: !300, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "batch_pos", scope: !296, file: !138, line: 58, baseType: !300, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !137, file: !138, line: 69, baseType: !306, size: 832, offset: 1280)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !138, line: 62, size: 832, elements: !307)
!307 = !{!308, !324}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !306, file: !138, line: 65, baseType: !309, size: 448)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !103, line: 259, size: 448, elements: !310)
!310 = !{!311, !312, !313, !320, !321, !322, !323}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !309, file: !103, line: 261, baseType: !150, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !309, file: !103, line: 262, baseType: !127, size: 32, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !309, file: !103, line: 264, baseType: !314, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !316, line: 26, size: 128, elements: !317)
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !315, file: !316, line: 28, baseType: !150, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !315, file: !316, line: 29, baseType: !300, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !309, file: !103, line: 265, baseType: !300, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !309, file: !103, line: 267, baseType: !150, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !309, file: !103, line: 268, baseType: !300, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !309, file: !103, line: 273, baseType: !130, size: 32, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !306, file: !138, line: 68, baseType: !325, size: 384, offset: 448)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 384, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 3)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "task_connecting", scope: !137, file: !138, line: 72, baseType: !329, size: 128, offset: 2112)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_task", file: !175, line: 48, size: 128, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !329, file: !175, line: 49, baseType: !149, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !329, file: !175, line: 50, baseType: !166, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "task_connected", scope: !137, file: !138, line: 73, baseType: !329, size: 128, offset: 2240)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "task_accept", scope: !137, file: !138, line: 74, baseType: !329, size: 128, offset: 2368)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "task_send", scope: !137, file: !138, line: 75, baseType: !329, size: 128, offset: 2496)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "task_recv", scope: !137, file: !138, line: 76, baseType: !329, size: 128, offset: 2624)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "task_stop", scope: !137, file: !138, line: 77, baseType: !329, size: 128, offset: 2752)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "event_established", scope: !137, file: !138, line: 80, baseType: !159, size: 320, offset: 2880)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "event_sent", scope: !137, file: !138, line: 81, baseType: !159, size: 320, offset: 3200)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "event_received", scope: !137, file: !138, line: 82, baseType: !159, size: 320, offset: 3520)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "event_error", scope: !137, file: !138, line: 83, baseType: !159, size: 320, offset: 3840)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "asock", scope: !137, file: !138, line: 87, baseType: !136, size: 64, offset: 4160)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!344 = !{!0, !7, !12, !17, !22, !27, !32, !37, !39, !44, !46, !51, !56, !61, !66, !71, !76, !81}
!345 = !{i32 7, !"Dwarf Version", i32 5}
!346 = !{i32 2, !"Debug Info Version", i32 3}
!347 = !{i32 1, !"wchar_size", i32 4}
!348 = !{i32 8, !"PIC Level", i32 2}
!349 = !{i32 7, !"PIE Level", i32 2}
!350 = !{i32 7, !"uwtable", i32 2}
!351 = !{i32 7, !"frame-pointer", i32 2}
!352 = !{!"clang version 16.0.0"}
!353 = distinct !DISubprogram(name: "nn_usock_init", scope: !2, file: !2, line: 63, type: !354, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !136, !130, !149}
!356 = !{}
!357 = !DILocalVariable(name: "self", arg: 1, scope: !353, file: !2, line: 63, type: !136)
!358 = !DILocation(line: 63, column: 38, scope: !353)
!359 = !DILocalVariable(name: "src", arg: 2, scope: !353, file: !2, line: 63, type: !130)
!360 = !DILocation(line: 63, column: 48, scope: !353)
!361 = !DILocalVariable(name: "owner", arg: 3, scope: !353, file: !2, line: 63, type: !149)
!362 = !DILocation(line: 63, column: 68, scope: !353)
!363 = !DILocation(line: 66, column: 19, scope: !353)
!364 = !DILocation(line: 66, column: 25, scope: !353)
!365 = !DILocation(line: 66, column: 48, scope: !353)
!366 = !DILocation(line: 66, column: 53, scope: !353)
!367 = !DILocation(line: 66, column: 59, scope: !353)
!368 = !DILocation(line: 66, column: 5, scope: !353)
!369 = !DILocation(line: 67, column: 5, scope: !353)
!370 = !DILocation(line: 67, column: 11, scope: !353)
!371 = !DILocation(line: 67, column: 17, scope: !353)
!372 = !DILocation(line: 70, column: 43, scope: !353)
!373 = !DILocation(line: 70, column: 49, scope: !353)
!374 = !DILocation(line: 70, column: 20, scope: !353)
!375 = !DILocation(line: 70, column: 5, scope: !353)
!376 = !DILocation(line: 70, column: 11, scope: !353)
!377 = !DILocation(line: 70, column: 18, scope: !353)
!378 = !DILocation(line: 73, column: 5, scope: !353)
!379 = !DILocation(line: 73, column: 11, scope: !353)
!380 = !DILocation(line: 73, column: 13, scope: !353)
!381 = !DILocation(line: 75, column: 5, scope: !353)
!382 = !DILocation(line: 75, column: 11, scope: !353)
!383 = !DILocation(line: 75, column: 14, scope: !353)
!384 = !DILocation(line: 75, column: 18, scope: !353)
!385 = !DILocation(line: 76, column: 5, scope: !353)
!386 = !DILocation(line: 76, column: 11, scope: !353)
!387 = !DILocation(line: 76, column: 14, scope: !353)
!388 = !DILocation(line: 76, column: 18, scope: !353)
!389 = !DILocation(line: 77, column: 5, scope: !353)
!390 = !DILocation(line: 77, column: 11, scope: !353)
!391 = !DILocation(line: 77, column: 14, scope: !353)
!392 = !DILocation(line: 77, column: 20, scope: !353)
!393 = !DILocation(line: 78, column: 5, scope: !353)
!394 = !DILocation(line: 78, column: 11, scope: !353)
!395 = !DILocation(line: 78, column: 14, scope: !353)
!396 = !DILocation(line: 78, column: 24, scope: !353)
!397 = !DILocation(line: 79, column: 5, scope: !353)
!398 = !DILocation(line: 79, column: 11, scope: !353)
!399 = !DILocation(line: 79, column: 14, scope: !353)
!400 = !DILocation(line: 79, column: 24, scope: !353)
!401 = !DILocation(line: 81, column: 14, scope: !353)
!402 = !DILocation(line: 81, column: 20, scope: !353)
!403 = !DILocation(line: 81, column: 24, scope: !353)
!404 = !DILocation(line: 81, column: 5, scope: !353)
!405 = !DILocation(line: 84, column: 25, scope: !353)
!406 = !DILocation(line: 84, column: 31, scope: !353)
!407 = !DILocation(line: 84, column: 37, scope: !353)
!408 = !DILocation(line: 84, column: 43, scope: !353)
!409 = !DILocation(line: 84, column: 5, scope: !353)
!410 = !DILocation(line: 85, column: 27, scope: !353)
!411 = !DILocation(line: 85, column: 33, scope: !353)
!412 = !DILocation(line: 85, column: 51, scope: !353)
!413 = !DILocation(line: 85, column: 57, scope: !353)
!414 = !DILocation(line: 85, column: 5, scope: !353)
!415 = !DILocation(line: 86, column: 27, scope: !353)
!416 = !DILocation(line: 86, column: 33, scope: !353)
!417 = !DILocation(line: 86, column: 50, scope: !353)
!418 = !DILocation(line: 86, column: 56, scope: !353)
!419 = !DILocation(line: 86, column: 5, scope: !353)
!420 = !DILocation(line: 87, column: 27, scope: !353)
!421 = !DILocation(line: 87, column: 33, scope: !353)
!422 = !DILocation(line: 87, column: 47, scope: !353)
!423 = !DILocation(line: 87, column: 53, scope: !353)
!424 = !DILocation(line: 87, column: 5, scope: !353)
!425 = !DILocation(line: 88, column: 27, scope: !353)
!426 = !DILocation(line: 88, column: 33, scope: !353)
!427 = !DILocation(line: 88, column: 45, scope: !353)
!428 = !DILocation(line: 88, column: 51, scope: !353)
!429 = !DILocation(line: 88, column: 5, scope: !353)
!430 = !DILocation(line: 89, column: 27, scope: !353)
!431 = !DILocation(line: 89, column: 33, scope: !353)
!432 = !DILocation(line: 89, column: 45, scope: !353)
!433 = !DILocation(line: 89, column: 51, scope: !353)
!434 = !DILocation(line: 89, column: 5, scope: !353)
!435 = !DILocation(line: 90, column: 27, scope: !353)
!436 = !DILocation(line: 90, column: 33, scope: !353)
!437 = !DILocation(line: 90, column: 45, scope: !353)
!438 = !DILocation(line: 90, column: 51, scope: !353)
!439 = !DILocation(line: 90, column: 5, scope: !353)
!440 = !DILocation(line: 93, column: 25, scope: !353)
!441 = !DILocation(line: 93, column: 31, scope: !353)
!442 = !DILocation(line: 93, column: 5, scope: !353)
!443 = !DILocation(line: 94, column: 25, scope: !353)
!444 = !DILocation(line: 94, column: 31, scope: !353)
!445 = !DILocation(line: 94, column: 5, scope: !353)
!446 = !DILocation(line: 95, column: 25, scope: !353)
!447 = !DILocation(line: 95, column: 31, scope: !353)
!448 = !DILocation(line: 95, column: 5, scope: !353)
!449 = !DILocation(line: 96, column: 25, scope: !353)
!450 = !DILocation(line: 96, column: 31, scope: !353)
!451 = !DILocation(line: 96, column: 5, scope: !353)
!452 = !DILocation(line: 99, column: 5, scope: !353)
!453 = !DILocation(line: 99, column: 11, scope: !353)
!454 = !DILocation(line: 99, column: 17, scope: !353)
!455 = !DILocation(line: 100, column: 1, scope: !353)
!456 = distinct !DISubprogram(name: "nn_usock_handler", scope: !2, file: !2, line: 427, type: !147, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !356)
!457 = !DILocalVariable(name: "self", arg: 1, scope: !456, file: !2, line: 427, type: !149)
!458 = !DILocation(line: 427, column: 46, scope: !456)
!459 = !DILocalVariable(name: "src", arg: 2, scope: !456, file: !2, line: 427, type: !130)
!460 = !DILocation(line: 427, column: 56, scope: !456)
!461 = !DILocalVariable(name: "type", arg: 3, scope: !456, file: !2, line: 427, type: !130)
!462 = !DILocation(line: 427, column: 65, scope: !456)
!463 = !DILocalVariable(name: "srcptr", arg: 4, scope: !456, file: !2, line: 428, type: !150)
!464 = !DILocation(line: 428, column: 11, scope: !456)
!465 = !DILocalVariable(name: "rc", scope: !456, file: !2, line: 430, type: !130)
!466 = !DILocation(line: 430, column: 9, scope: !456)
!467 = !DILocalVariable(name: "usock", scope: !456, file: !2, line: 431, type: !136)
!468 = !DILocation(line: 431, column: 22, scope: !456)
!469 = !DILocalVariable(name: "s", scope: !456, file: !2, line: 432, type: !130)
!470 = !DILocation(line: 432, column: 9, scope: !456)
!471 = !DILocalVariable(name: "sz", scope: !456, file: !2, line: 433, type: !300)
!472 = !DILocation(line: 433, column: 12, scope: !456)
!473 = !DILocation(line: 435, column: 13, scope: !456)
!474 = !DILocation(line: 435, column: 11, scope: !456)
!475 = !DILocation(line: 440, column: 9, scope: !476)
!476 = distinct !DILexicalBlock(scope: !456, file: !2, line: 440, column: 9)
!477 = !DILocation(line: 440, column: 20, scope: !476)
!478 = !DILocation(line: 440, column: 27, scope: !476)
!479 = !DILocation(line: 440, column: 16, scope: !476)
!480 = !DILocation(line: 440, column: 9, scope: !456)
!481 = !DILocation(line: 441, column: 9, scope: !482)
!482 = distinct !DILexicalBlock(scope: !476, file: !2, line: 440, column: 38)
!483 = !DILocation(line: 441, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !2, line: 441, column: 9)
!485 = distinct !DILexicalBlock(scope: !482, file: !2, line: 441, column: 9)
!486 = !DILocation(line: 441, column: 9, scope: !485)
!487 = !DILocation(line: 441, column: 9, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !2, line: 441, column: 9)
!489 = !DILocation(line: 442, column: 28, scope: !482)
!490 = !DILocation(line: 442, column: 35, scope: !482)
!491 = !DILocation(line: 442, column: 44, scope: !482)
!492 = !DILocation(line: 442, column: 51, scope: !482)
!493 = !DILocation(line: 442, column: 9, scope: !482)
!494 = !DILocation(line: 443, column: 9, scope: !482)
!495 = !DILocation(line: 445, column: 9, scope: !496)
!496 = distinct !DILexicalBlock(scope: !456, file: !2, line: 445, column: 9)
!497 = !DILocation(line: 445, column: 20, scope: !496)
!498 = !DILocation(line: 445, column: 27, scope: !496)
!499 = !DILocation(line: 445, column: 16, scope: !496)
!500 = !DILocation(line: 445, column: 9, scope: !456)
!501 = !DILocation(line: 446, column: 9, scope: !502)
!502 = distinct !DILexicalBlock(scope: !496, file: !2, line: 445, column: 38)
!503 = !DILocation(line: 446, column: 9, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !2, line: 446, column: 9)
!505 = distinct !DILexicalBlock(scope: !502, file: !2, line: 446, column: 9)
!506 = !DILocation(line: 446, column: 9, scope: !505)
!507 = !DILocation(line: 446, column: 9, scope: !508)
!508 = distinct !DILexicalBlock(scope: !504, file: !2, line: 446, column: 9)
!509 = !DILocation(line: 447, column: 27, scope: !502)
!510 = !DILocation(line: 447, column: 34, scope: !502)
!511 = !DILocation(line: 447, column: 43, scope: !502)
!512 = !DILocation(line: 447, column: 50, scope: !502)
!513 = !DILocation(line: 447, column: 9, scope: !502)
!514 = !DILocation(line: 448, column: 9, scope: !502)
!515 = !DILocation(line: 450, column: 9, scope: !516)
!516 = distinct !DILexicalBlock(scope: !456, file: !2, line: 450, column: 9)
!517 = !DILocation(line: 450, column: 20, scope: !516)
!518 = !DILocation(line: 450, column: 27, scope: !516)
!519 = !DILocation(line: 450, column: 16, scope: !516)
!520 = !DILocation(line: 450, column: 9, scope: !456)
!521 = !DILocation(line: 451, column: 9, scope: !522)
!522 = distinct !DILexicalBlock(scope: !516, file: !2, line: 450, column: 43)
!523 = !DILocation(line: 451, column: 9, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !2, line: 451, column: 9)
!525 = distinct !DILexicalBlock(scope: !522, file: !2, line: 451, column: 9)
!526 = !DILocation(line: 451, column: 9, scope: !525)
!527 = !DILocation(line: 451, column: 9, scope: !528)
!528 = distinct !DILexicalBlock(scope: !524, file: !2, line: 451, column: 9)
!529 = !DILocation(line: 452, column: 27, scope: !522)
!530 = !DILocation(line: 452, column: 34, scope: !522)
!531 = !DILocation(line: 452, column: 42, scope: !522)
!532 = !DILocation(line: 452, column: 49, scope: !522)
!533 = !DILocation(line: 452, column: 53, scope: !522)
!534 = !DILocation(line: 452, column: 60, scope: !522)
!535 = !DILocation(line: 452, column: 9, scope: !522)
!536 = !DILocation(line: 453, column: 9, scope: !522)
!537 = !DILocation(line: 455, column: 9, scope: !538)
!538 = distinct !DILexicalBlock(scope: !456, file: !2, line: 455, column: 9)
!539 = !DILocation(line: 455, column: 20, scope: !538)
!540 = !DILocation(line: 455, column: 27, scope: !538)
!541 = !DILocation(line: 455, column: 16, scope: !538)
!542 = !DILocation(line: 455, column: 9, scope: !456)
!543 = !DILocation(line: 456, column: 9, scope: !544)
!544 = distinct !DILexicalBlock(scope: !538, file: !2, line: 455, column: 44)
!545 = !DILocation(line: 456, column: 9, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !2, line: 456, column: 9)
!547 = distinct !DILexicalBlock(scope: !544, file: !2, line: 456, column: 9)
!548 = !DILocation(line: 456, column: 9, scope: !547)
!549 = !DILocation(line: 456, column: 9, scope: !550)
!550 = distinct !DILexicalBlock(scope: !546, file: !2, line: 456, column: 9)
!551 = !DILocation(line: 457, column: 27, scope: !544)
!552 = !DILocation(line: 457, column: 34, scope: !544)
!553 = !DILocation(line: 457, column: 42, scope: !544)
!554 = !DILocation(line: 457, column: 49, scope: !544)
!555 = !DILocation(line: 457, column: 53, scope: !544)
!556 = !DILocation(line: 457, column: 60, scope: !544)
!557 = !DILocation(line: 457, column: 9, scope: !544)
!558 = !DILocation(line: 458, column: 28, scope: !544)
!559 = !DILocation(line: 458, column: 35, scope: !544)
!560 = !DILocation(line: 458, column: 44, scope: !544)
!561 = !DILocation(line: 458, column: 51, scope: !544)
!562 = !DILocation(line: 458, column: 9, scope: !544)
!563 = !DILocation(line: 459, column: 9, scope: !544)
!564 = !DILocation(line: 461, column: 9, scope: !565)
!565 = distinct !DILexicalBlock(scope: !456, file: !2, line: 461, column: 9)
!566 = !DILocation(line: 461, column: 20, scope: !565)
!567 = !DILocation(line: 461, column: 27, scope: !565)
!568 = !DILocation(line: 461, column: 16, scope: !565)
!569 = !DILocation(line: 461, column: 9, scope: !456)
!570 = !DILocation(line: 462, column: 9, scope: !571)
!571 = distinct !DILexicalBlock(scope: !565, file: !2, line: 461, column: 40)
!572 = !DILocation(line: 462, column: 9, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !2, line: 462, column: 9)
!574 = distinct !DILexicalBlock(scope: !571, file: !2, line: 462, column: 9)
!575 = !DILocation(line: 462, column: 9, scope: !574)
!576 = !DILocation(line: 462, column: 9, scope: !577)
!577 = distinct !DILexicalBlock(scope: !573, file: !2, line: 462, column: 9)
!578 = !DILocation(line: 463, column: 27, scope: !571)
!579 = !DILocation(line: 463, column: 34, scope: !571)
!580 = !DILocation(line: 463, column: 42, scope: !571)
!581 = !DILocation(line: 463, column: 49, scope: !571)
!582 = !DILocation(line: 463, column: 53, scope: !571)
!583 = !DILocation(line: 463, column: 60, scope: !571)
!584 = !DILocation(line: 463, column: 9, scope: !571)
!585 = !DILocation(line: 464, column: 27, scope: !571)
!586 = !DILocation(line: 464, column: 34, scope: !571)
!587 = !DILocation(line: 464, column: 43, scope: !571)
!588 = !DILocation(line: 464, column: 50, scope: !571)
!589 = !DILocation(line: 464, column: 9, scope: !571)
!590 = !DILocation(line: 465, column: 9, scope: !571)
!591 = !DILocation(line: 471, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !456, file: !2, line: 471, column: 9)
!593 = !DILocation(line: 0, scope: !592)
!594 = !DILocation(line: 471, column: 9, scope: !456)
!595 = !DILocation(line: 475, column: 9, scope: !596)
!596 = distinct !DILexicalBlock(scope: !592, file: !2, line: 471, column: 58)
!597 = !DILocation(line: 475, column: 9, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !2, line: 475, column: 9)
!599 = distinct !DILexicalBlock(scope: !596, file: !2, line: 475, column: 9)
!600 = !DILocation(line: 0, scope: !598)
!601 = !DILocation(line: 475, column: 9, scope: !599)
!602 = !DILocation(line: 475, column: 9, scope: !603)
!603 = distinct !DILexicalBlock(scope: !598, file: !2, line: 475, column: 9)
!604 = !DILocation(line: 479, column: 13, scope: !605)
!605 = distinct !DILexicalBlock(scope: !596, file: !2, line: 479, column: 13)
!606 = !DILocation(line: 479, column: 20, scope: !605)
!607 = !DILocation(line: 479, column: 26, scope: !605)
!608 = !DILocation(line: 479, column: 13, scope: !596)
!609 = !DILocation(line: 480, column: 13, scope: !605)
!610 = !DILocation(line: 481, column: 13, scope: !611)
!611 = distinct !DILexicalBlock(scope: !596, file: !2, line: 481, column: 13)
!612 = !DILocation(line: 481, column: 20, scope: !611)
!613 = !DILocation(line: 481, column: 26, scope: !611)
!614 = !DILocation(line: 481, column: 13, scope: !596)
!615 = !DILocation(line: 482, column: 13, scope: !611)
!616 = !DILocation(line: 483, column: 13, scope: !617)
!617 = distinct !DILexicalBlock(scope: !596, file: !2, line: 483, column: 13)
!618 = !DILocation(line: 483, column: 20, scope: !617)
!619 = !DILocation(line: 483, column: 26, scope: !617)
!620 = !DILocation(line: 483, column: 53, scope: !617)
!621 = !DILocation(line: 484, column: 15, scope: !617)
!622 = !DILocation(line: 484, column: 22, scope: !617)
!623 = !DILocation(line: 484, column: 28, scope: !617)
!624 = !DILocation(line: 484, column: 55, scope: !617)
!625 = !DILocation(line: 485, column: 15, scope: !617)
!626 = !DILocation(line: 485, column: 22, scope: !617)
!627 = !DILocation(line: 485, column: 28, scope: !617)
!628 = !DILocation(line: 483, column: 13, scope: !596)
!629 = !DILocation(line: 486, column: 13, scope: !617)
!630 = !DILocation(line: 490, column: 13, scope: !631)
!631 = distinct !DILexicalBlock(scope: !596, file: !2, line: 490, column: 13)
!632 = !DILocation(line: 490, column: 20, scope: !631)
!633 = !DILocation(line: 490, column: 26, scope: !631)
!634 = !DILocation(line: 490, column: 13, scope: !596)
!635 = !DILocation(line: 491, column: 29, scope: !636)
!636 = distinct !DILexicalBlock(scope: !631, file: !2, line: 490, column: 60)
!637 = !DILocation(line: 491, column: 36, scope: !636)
!638 = !DILocation(line: 491, column: 43, scope: !636)
!639 = !DILocation(line: 491, column: 13, scope: !636)
!640 = !DILocation(line: 492, column: 13, scope: !636)
!641 = !DILocation(line: 492, column: 20, scope: !636)
!642 = !DILocation(line: 492, column: 26, scope: !636)
!643 = !DILocation(line: 493, column: 13, scope: !636)
!644 = !DILocation(line: 497, column: 13, scope: !645)
!645 = distinct !DILexicalBlock(scope: !596, file: !2, line: 497, column: 13)
!646 = !DILocation(line: 497, column: 20, scope: !645)
!647 = !DILocation(line: 497, column: 26, scope: !645)
!648 = !DILocation(line: 497, column: 13, scope: !596)
!649 = !DILocation(line: 498, column: 32, scope: !645)
!650 = !DILocation(line: 498, column: 39, scope: !645)
!651 = !DILocation(line: 498, column: 48, scope: !645)
!652 = !DILocation(line: 498, column: 55, scope: !645)
!653 = !DILocation(line: 498, column: 13, scope: !645)
!654 = !DILocation(line: 499, column: 9, scope: !596)
!655 = !DILocation(line: 499, column: 16, scope: !596)
!656 = !DILocation(line: 499, column: 22, scope: !596)
!657 = !DILocation(line: 500, column: 9, scope: !596)
!658 = !DILocation(line: 502, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !456, file: !2, line: 502, column: 9)
!660 = !DILocation(line: 502, column: 9, scope: !456)
!661 = !DILocation(line: 503, column: 9, scope: !662)
!662 = distinct !DILexicalBlock(scope: !659, file: !2, line: 502, column: 67)
!663 = !DILocation(line: 503, column: 9, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !2, line: 503, column: 9)
!665 = distinct !DILexicalBlock(scope: !662, file: !2, line: 503, column: 9)
!666 = !DILocation(line: 0, scope: !664)
!667 = !DILocation(line: 503, column: 9, scope: !665)
!668 = !DILocation(line: 503, column: 9, scope: !669)
!669 = distinct !DILexicalBlock(scope: !664, file: !2, line: 503, column: 9)
!670 = !DILocation(line: 504, column: 9, scope: !662)
!671 = !DILocation(line: 506, column: 9, scope: !672)
!672 = distinct !DILexicalBlock(scope: !456, file: !2, line: 506, column: 9)
!673 = !DILocation(line: 506, column: 9, scope: !456)
!674 = !DILocation(line: 507, column: 13, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !2, line: 507, column: 13)
!676 = distinct !DILexicalBlock(scope: !672, file: !2, line: 506, column: 60)
!677 = !DILocation(line: 507, column: 24, scope: !675)
!678 = !DILocation(line: 507, column: 31, scope: !675)
!679 = !DILocation(line: 507, column: 20, scope: !675)
!680 = !DILocation(line: 507, column: 13, scope: !676)
!681 = !DILocation(line: 508, column: 13, scope: !675)
!682 = !DILocation(line: 509, column: 9, scope: !676)
!683 = !DILocation(line: 509, column: 9, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !2, line: 509, column: 9)
!685 = distinct !DILexicalBlock(scope: !676, file: !2, line: 509, column: 9)
!686 = !DILocation(line: 509, column: 9, scope: !685)
!687 = !DILocation(line: 509, column: 9, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !2, line: 509, column: 9)
!689 = !DILocation(line: 510, column: 26, scope: !676)
!690 = !DILocation(line: 510, column: 33, scope: !676)
!691 = !DILocation(line: 510, column: 42, scope: !676)
!692 = !DILocation(line: 510, column: 49, scope: !676)
!693 = !DILocation(line: 510, column: 9, scope: !676)
!694 = !DILabel(scope: !676, name: "finish1", file: !2, line: 511)
!695 = !DILocation(line: 511, column: 1, scope: !676)
!696 = !DILocation(line: 512, column: 21, scope: !676)
!697 = !DILocation(line: 512, column: 28, scope: !676)
!698 = !DILocation(line: 512, column: 14, scope: !676)
!699 = !DILocation(line: 512, column: 12, scope: !676)
!700 = !DILocation(line: 513, column: 9, scope: !676)
!701 = !DILocation(line: 513, column: 9, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !2, line: 513, column: 9)
!703 = distinct !DILexicalBlock(scope: !676, file: !2, line: 513, column: 9)
!704 = !DILocation(line: 513, column: 9, scope: !703)
!705 = !DILocation(line: 513, column: 9, scope: !706)
!706 = distinct !DILexicalBlock(scope: !702, file: !2, line: 513, column: 9)
!707 = !DILocation(line: 514, column: 9, scope: !676)
!708 = !DILocation(line: 514, column: 16, scope: !676)
!709 = !DILocation(line: 514, column: 18, scope: !676)
!710 = !DILabel(scope: !676, name: "finish2", file: !2, line: 515)
!711 = !DILocation(line: 515, column: 1, scope: !676)
!712 = !DILocation(line: 516, column: 9, scope: !676)
!713 = !DILocation(line: 516, column: 16, scope: !676)
!714 = !DILocation(line: 516, column: 22, scope: !676)
!715 = !DILocation(line: 517, column: 26, scope: !676)
!716 = !DILocation(line: 517, column: 33, scope: !676)
!717 = !DILocation(line: 517, column: 9, scope: !676)
!718 = !DILabel(scope: !676, name: "finish3", file: !2, line: 518)
!719 = !DILocation(line: 518, column: 1, scope: !676)
!720 = !DILocation(line: 519, column: 9, scope: !676)
!721 = !DILocation(line: 522, column: 13, scope: !456)
!722 = !DILocation(line: 522, column: 20, scope: !456)
!723 = !DILocation(line: 522, column: 5, scope: !456)
!724 = !DILocation(line: 530, column: 13, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !2, line: 530, column: 13)
!726 = distinct !DILexicalBlock(scope: !456, file: !2, line: 522, column: 27)
!727 = !DILocation(line: 530, column: 20, scope: !725)
!728 = !DILocation(line: 530, column: 13, scope: !726)
!729 = !DILocation(line: 531, column: 21, scope: !730)
!730 = distinct !DILexicalBlock(scope: !725, file: !2, line: 530, column: 29)
!731 = !DILocation(line: 531, column: 13, scope: !730)
!732 = !DILocation(line: 533, column: 17, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !2, line: 531, column: 27)
!734 = !DILocation(line: 533, column: 24, scope: !733)
!735 = !DILocation(line: 533, column: 30, scope: !733)
!736 = !DILocation(line: 534, column: 17, scope: !733)
!737 = !DILocation(line: 536, column: 17, scope: !733)
!738 = !DILocation(line: 536, column: 17, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !2, line: 536, column: 17)
!740 = distinct !DILexicalBlock(scope: !741, file: !2, line: 536, column: 17)
!741 = distinct !DILexicalBlock(scope: !733, file: !2, line: 536, column: 17)
!742 = !DILocation(line: 537, column: 13, scope: !733)
!743 = !DILocation(line: 538, column: 9, scope: !730)
!744 = !DILocation(line: 539, column: 9, scope: !726)
!745 = !DILocation(line: 539, column: 9, scope: !746)
!746 = distinct !DILexicalBlock(scope: !747, file: !2, line: 539, column: 9)
!747 = distinct !DILexicalBlock(scope: !748, file: !2, line: 539, column: 9)
!748 = distinct !DILexicalBlock(scope: !726, file: !2, line: 539, column: 9)
!749 = !DILocation(line: 539, column: 9, scope: !748)
!750 = !DILocation(line: 550, column: 13, scope: !751)
!751 = distinct !DILexicalBlock(scope: !726, file: !2, line: 550, column: 13)
!752 = !DILocation(line: 550, column: 20, scope: !751)
!753 = !DILocation(line: 550, column: 13, scope: !726)
!754 = !DILocation(line: 551, column: 21, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !2, line: 550, column: 29)
!756 = !DILocation(line: 551, column: 13, scope: !755)
!757 = !DILocation(line: 553, column: 17, scope: !758)
!758 = distinct !DILexicalBlock(scope: !755, file: !2, line: 551, column: 27)
!759 = !DILocation(line: 553, column: 24, scope: !758)
!760 = !DILocation(line: 553, column: 30, scope: !758)
!761 = !DILocation(line: 554, column: 17, scope: !758)
!762 = !DILocation(line: 556, column: 17, scope: !758)
!763 = !DILocation(line: 556, column: 24, scope: !758)
!764 = !DILocation(line: 556, column: 30, scope: !758)
!765 = !DILocation(line: 557, column: 17, scope: !758)
!766 = !DILocation(line: 559, column: 17, scope: !758)
!767 = !DILocation(line: 559, column: 24, scope: !758)
!768 = !DILocation(line: 559, column: 30, scope: !758)
!769 = !DILocation(line: 560, column: 17, scope: !758)
!770 = !DILocation(line: 562, column: 17, scope: !758)
!771 = !DILocation(line: 562, column: 17, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !2, line: 562, column: 17)
!773 = distinct !DILexicalBlock(scope: !774, file: !2, line: 562, column: 17)
!774 = distinct !DILexicalBlock(scope: !758, file: !2, line: 562, column: 17)
!775 = !DILocation(line: 563, column: 13, scope: !758)
!776 = !DILocation(line: 564, column: 9, scope: !755)
!777 = !DILocation(line: 565, column: 9, scope: !726)
!778 = !DILocation(line: 565, column: 9, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !2, line: 565, column: 9)
!780 = distinct !DILexicalBlock(scope: !781, file: !2, line: 565, column: 9)
!781 = distinct !DILexicalBlock(scope: !726, file: !2, line: 565, column: 9)
!782 = !DILocation(line: 565, column: 9, scope: !781)
!783 = !DILocation(line: 573, column: 13, scope: !784)
!784 = distinct !DILexicalBlock(scope: !726, file: !2, line: 573, column: 13)
!785 = !DILocation(line: 573, column: 20, scope: !784)
!786 = !DILocation(line: 573, column: 13, scope: !726)
!787 = !DILocation(line: 574, column: 21, scope: !788)
!788 = distinct !DILexicalBlock(scope: !784, file: !2, line: 573, column: 29)
!789 = !DILocation(line: 574, column: 13, scope: !788)
!790 = !DILocation(line: 576, column: 17, scope: !791)
!791 = distinct !DILexicalBlock(scope: !788, file: !2, line: 574, column: 27)
!792 = !DILocation(line: 576, column: 24, scope: !791)
!793 = !DILocation(line: 576, column: 30, scope: !791)
!794 = !DILocation(line: 577, column: 32, scope: !791)
!795 = !DILocation(line: 577, column: 39, scope: !791)
!796 = !DILocation(line: 577, column: 45, scope: !791)
!797 = !DILocation(line: 577, column: 52, scope: !791)
!798 = !DILocation(line: 577, column: 17, scope: !791)
!799 = !DILocation(line: 579, column: 17, scope: !791)
!800 = !DILocation(line: 581, column: 17, scope: !791)
!801 = !DILocation(line: 581, column: 17, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !2, line: 581, column: 17)
!803 = distinct !DILexicalBlock(scope: !804, file: !2, line: 581, column: 17)
!804 = distinct !DILexicalBlock(scope: !791, file: !2, line: 581, column: 17)
!805 = !DILocation(line: 582, column: 13, scope: !791)
!806 = !DILocation(line: 583, column: 9, scope: !788)
!807 = !DILocation(line: 584, column: 9, scope: !726)
!808 = !DILocation(line: 584, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !2, line: 584, column: 9)
!810 = distinct !DILexicalBlock(scope: !811, file: !2, line: 584, column: 9)
!811 = distinct !DILexicalBlock(scope: !726, file: !2, line: 584, column: 9)
!812 = !DILocation(line: 584, column: 9, scope: !811)
!813 = !DILocation(line: 592, column: 13, scope: !814)
!814 = distinct !DILexicalBlock(scope: !726, file: !2, line: 592, column: 13)
!815 = !DILocation(line: 592, column: 20, scope: !814)
!816 = !DILocation(line: 592, column: 13, scope: !726)
!817 = !DILocation(line: 593, column: 21, scope: !818)
!818 = distinct !DILexicalBlock(scope: !814, file: !2, line: 592, column: 29)
!819 = !DILocation(line: 593, column: 13, scope: !818)
!820 = !DILocation(line: 595, column: 35, scope: !821)
!821 = distinct !DILexicalBlock(scope: !818, file: !2, line: 593, column: 27)
!822 = !DILocation(line: 595, column: 42, scope: !821)
!823 = !DILocation(line: 595, column: 50, scope: !821)
!824 = !DILocation(line: 595, column: 57, scope: !821)
!825 = !DILocation(line: 595, column: 61, scope: !821)
!826 = !DILocation(line: 595, column: 68, scope: !821)
!827 = !DILocation(line: 595, column: 17, scope: !821)
!828 = !DILocation(line: 596, column: 17, scope: !821)
!829 = !DILocation(line: 596, column: 24, scope: !821)
!830 = !DILocation(line: 596, column: 30, scope: !821)
!831 = !DILocation(line: 597, column: 17, scope: !821)
!832 = !DILocation(line: 599, column: 17, scope: !821)
!833 = !DILocation(line: 599, column: 17, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !2, line: 599, column: 17)
!835 = distinct !DILexicalBlock(scope: !836, file: !2, line: 599, column: 17)
!836 = distinct !DILexicalBlock(scope: !821, file: !2, line: 599, column: 17)
!837 = !DILocation(line: 600, column: 13, scope: !821)
!838 = !DILocation(line: 601, column: 9, scope: !818)
!839 = !DILocation(line: 602, column: 9, scope: !726)
!840 = !DILocation(line: 602, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !2, line: 602, column: 9)
!842 = distinct !DILexicalBlock(scope: !843, file: !2, line: 602, column: 9)
!843 = distinct !DILexicalBlock(scope: !726, file: !2, line: 602, column: 9)
!844 = !DILocation(line: 602, column: 9, scope: !843)
!845 = !DILocation(line: 609, column: 13, scope: !846)
!846 = distinct !DILexicalBlock(scope: !726, file: !2, line: 609, column: 13)
!847 = !DILocation(line: 609, column: 20, scope: !846)
!848 = !DILocation(line: 609, column: 13, scope: !726)
!849 = !DILocation(line: 610, column: 21, scope: !850)
!850 = distinct !DILexicalBlock(scope: !846, file: !2, line: 609, column: 29)
!851 = !DILocation(line: 610, column: 13, scope: !850)
!852 = !DILocation(line: 612, column: 17, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !2, line: 610, column: 27)
!854 = !DILocation(line: 612, column: 24, scope: !853)
!855 = !DILocation(line: 612, column: 30, scope: !853)
!856 = !DILocation(line: 613, column: 36, scope: !853)
!857 = !DILocation(line: 613, column: 43, scope: !853)
!858 = !DILocation(line: 613, column: 52, scope: !853)
!859 = !DILocation(line: 613, column: 59, scope: !853)
!860 = !DILocation(line: 613, column: 17, scope: !853)
!861 = !DILocation(line: 614, column: 32, scope: !853)
!862 = !DILocation(line: 614, column: 39, scope: !853)
!863 = !DILocation(line: 614, column: 45, scope: !853)
!864 = !DILocation(line: 614, column: 52, scope: !853)
!865 = !DILocation(line: 614, column: 17, scope: !853)
!866 = !DILocation(line: 616, column: 17, scope: !853)
!867 = !DILocation(line: 618, column: 29, scope: !853)
!868 = !DILocation(line: 618, column: 36, scope: !853)
!869 = !DILocation(line: 618, column: 22, scope: !853)
!870 = !DILocation(line: 618, column: 20, scope: !853)
!871 = !DILocation(line: 619, column: 17, scope: !853)
!872 = !DILocation(line: 619, column: 17, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !2, line: 619, column: 17)
!874 = distinct !DILexicalBlock(scope: !853, file: !2, line: 619, column: 17)
!875 = !DILocation(line: 619, column: 17, scope: !874)
!876 = !DILocation(line: 619, column: 17, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !2, line: 619, column: 17)
!878 = !DILocation(line: 620, column: 17, scope: !853)
!879 = !DILocation(line: 620, column: 24, scope: !853)
!880 = !DILocation(line: 620, column: 26, scope: !853)
!881 = !DILocation(line: 621, column: 17, scope: !853)
!882 = !DILocation(line: 621, column: 24, scope: !853)
!883 = !DILocation(line: 621, column: 30, scope: !853)
!884 = !DILocation(line: 622, column: 32, scope: !853)
!885 = !DILocation(line: 622, column: 39, scope: !853)
!886 = !DILocation(line: 622, column: 45, scope: !853)
!887 = !DILocation(line: 622, column: 52, scope: !853)
!888 = !DILocation(line: 622, column: 17, scope: !853)
!889 = !DILocation(line: 624, column: 17, scope: !853)
!890 = !DILocation(line: 626, column: 19, scope: !853)
!891 = !DILocation(line: 626, column: 19, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !2, line: 626, column: 19)
!893 = distinct !DILexicalBlock(scope: !894, file: !2, line: 626, column: 19)
!894 = distinct !DILexicalBlock(scope: !853, file: !2, line: 626, column: 19)
!895 = !DILocation(line: 627, column: 13, scope: !853)
!896 = !DILocation(line: 628, column: 9, scope: !850)
!897 = !DILocation(line: 629, column: 13, scope: !898)
!898 = distinct !DILexicalBlock(scope: !726, file: !2, line: 629, column: 13)
!899 = !DILocation(line: 629, column: 24, scope: !898)
!900 = !DILocation(line: 629, column: 31, scope: !898)
!901 = !DILocation(line: 629, column: 20, scope: !898)
!902 = !DILocation(line: 629, column: 13, scope: !726)
!903 = !DILocation(line: 630, column: 21, scope: !904)
!904 = distinct !DILexicalBlock(scope: !898, file: !2, line: 629, column: 36)
!905 = !DILocation(line: 630, column: 13, scope: !904)
!906 = !DILocation(line: 632, column: 38, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !2, line: 630, column: 27)
!908 = !DILocation(line: 632, column: 45, scope: !907)
!909 = !DILocation(line: 632, column: 54, scope: !907)
!910 = !DILocation(line: 632, column: 61, scope: !907)
!911 = !DILocation(line: 632, column: 17, scope: !907)
!912 = !DILocation(line: 633, column: 17, scope: !907)
!913 = !DILocation(line: 633, column: 24, scope: !907)
!914 = !DILocation(line: 633, column: 30, scope: !907)
!915 = !DILocation(line: 634, column: 32, scope: !907)
!916 = !DILocation(line: 634, column: 39, scope: !907)
!917 = !DILocation(line: 634, column: 45, scope: !907)
!918 = !DILocation(line: 634, column: 52, scope: !907)
!919 = !DILocation(line: 634, column: 17, scope: !907)
!920 = !DILocation(line: 636, column: 17, scope: !907)
!921 = !DILocation(line: 638, column: 34, scope: !907)
!922 = !DILocation(line: 638, column: 41, scope: !907)
!923 = !DILocation(line: 638, column: 50, scope: !907)
!924 = !DILocation(line: 638, column: 57, scope: !907)
!925 = !DILocation(line: 638, column: 17, scope: !907)
!926 = !DILocation(line: 639, column: 29, scope: !907)
!927 = !DILocation(line: 639, column: 36, scope: !907)
!928 = !DILocation(line: 639, column: 22, scope: !907)
!929 = !DILocation(line: 639, column: 20, scope: !907)
!930 = !DILocation(line: 640, column: 17, scope: !907)
!931 = !DILocation(line: 640, column: 17, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !2, line: 640, column: 17)
!933 = distinct !DILexicalBlock(scope: !907, file: !2, line: 640, column: 17)
!934 = !DILocation(line: 640, column: 17, scope: !933)
!935 = !DILocation(line: 640, column: 17, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !2, line: 640, column: 17)
!937 = !DILocation(line: 641, column: 17, scope: !907)
!938 = !DILocation(line: 641, column: 24, scope: !907)
!939 = !DILocation(line: 641, column: 26, scope: !907)
!940 = !DILocation(line: 642, column: 17, scope: !907)
!941 = !DILocation(line: 642, column: 24, scope: !907)
!942 = !DILocation(line: 642, column: 30, scope: !907)
!943 = !DILocation(line: 643, column: 32, scope: !907)
!944 = !DILocation(line: 643, column: 39, scope: !907)
!945 = !DILocation(line: 643, column: 45, scope: !907)
!946 = !DILocation(line: 643, column: 52, scope: !907)
!947 = !DILocation(line: 643, column: 17, scope: !907)
!948 = !DILocation(line: 644, column: 17, scope: !907)
!949 = !DILocation(line: 646, column: 17, scope: !907)
!950 = !DILocation(line: 646, column: 17, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !2, line: 646, column: 17)
!952 = distinct !DILexicalBlock(scope: !953, file: !2, line: 646, column: 17)
!953 = distinct !DILexicalBlock(scope: !907, file: !2, line: 646, column: 17)
!954 = !DILocation(line: 647, column: 13, scope: !907)
!955 = !DILocation(line: 648, column: 9, scope: !904)
!956 = !DILocation(line: 649, column: 9, scope: !726)
!957 = !DILocation(line: 649, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !2, line: 649, column: 9)
!959 = distinct !DILexicalBlock(scope: !960, file: !2, line: 649, column: 9)
!960 = distinct !DILexicalBlock(scope: !726, file: !2, line: 649, column: 9)
!961 = !DILocation(line: 649, column: 9, scope: !960)
!962 = !DILocation(line: 656, column: 13, scope: !963)
!963 = distinct !DILexicalBlock(scope: !726, file: !2, line: 656, column: 13)
!964 = !DILocation(line: 656, column: 24, scope: !963)
!965 = !DILocation(line: 656, column: 31, scope: !963)
!966 = !DILocation(line: 656, column: 20, scope: !963)
!967 = !DILocation(line: 656, column: 13, scope: !726)
!968 = !DILocation(line: 657, column: 21, scope: !969)
!969 = distinct !DILexicalBlock(scope: !963, file: !2, line: 656, column: 36)
!970 = !DILocation(line: 657, column: 13, scope: !969)
!971 = !DILocation(line: 659, column: 22, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !2, line: 657, column: 27)
!973 = !DILocation(line: 659, column: 29, scope: !972)
!974 = !DILocation(line: 659, column: 32, scope: !972)
!975 = !DILocation(line: 659, column: 20, scope: !972)
!976 = !DILocation(line: 660, column: 41, scope: !972)
!977 = !DILocation(line: 660, column: 48, scope: !972)
!978 = !DILocation(line: 660, column: 55, scope: !972)
!979 = !DILocation(line: 660, column: 58, scope: !972)
!980 = !DILocation(line: 660, column: 22, scope: !972)
!981 = !DILocation(line: 660, column: 20, scope: !972)
!982 = !DILocation(line: 661, column: 21, scope: !983)
!983 = distinct !DILexicalBlock(scope: !972, file: !2, line: 661, column: 21)
!984 = !DILocation(line: 661, column: 21, scope: !972)
!985 = !DILocation(line: 662, column: 38, scope: !986)
!986 = distinct !DILexicalBlock(scope: !983, file: !2, line: 661, column: 40)
!987 = !DILocation(line: 662, column: 21, scope: !986)
!988 = !DILocation(line: 662, column: 28, scope: !986)
!989 = !DILocation(line: 662, column: 31, scope: !986)
!990 = !DILocation(line: 662, column: 35, scope: !986)
!991 = !DILocation(line: 663, column: 26, scope: !992)
!992 = distinct !DILexicalBlock(scope: !986, file: !2, line: 663, column: 25)
!993 = !DILocation(line: 663, column: 33, scope: !992)
!994 = !DILocation(line: 663, column: 36, scope: !992)
!995 = !DILocation(line: 663, column: 25, scope: !986)
!996 = !DILocation(line: 664, column: 45, scope: !997)
!997 = distinct !DILexicalBlock(scope: !992, file: !2, line: 663, column: 41)
!998 = !DILocation(line: 664, column: 52, scope: !997)
!999 = !DILocation(line: 664, column: 61, scope: !997)
!1000 = !DILocation(line: 664, column: 68, scope: !997)
!1001 = !DILocation(line: 664, column: 25, scope: !997)
!1002 = !DILocation(line: 665, column: 40, scope: !997)
!1003 = !DILocation(line: 665, column: 47, scope: !997)
!1004 = !DILocation(line: 665, column: 53, scope: !997)
!1005 = !DILocation(line: 665, column: 60, scope: !997)
!1006 = !DILocation(line: 665, column: 25, scope: !997)
!1007 = !DILocation(line: 667, column: 21, scope: !997)
!1008 = !DILocation(line: 668, column: 21, scope: !986)
!1009 = !DILocation(line: 670, column: 17, scope: !972)
!1010 = !DILocation(line: 670, column: 17, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 670, column: 17)
!1012 = distinct !DILexicalBlock(scope: !972, file: !2, line: 670, column: 17)
!1013 = !DILocation(line: 670, column: 17, scope: !1012)
!1014 = !DILocation(line: 670, column: 17, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 670, column: 17)
!1016 = !DILocation(line: 671, column: 17, scope: !972)
!1017 = !DILocation(line: 673, column: 41, scope: !972)
!1018 = !DILocation(line: 673, column: 49, scope: !972)
!1019 = !DILocation(line: 673, column: 56, scope: !972)
!1020 = !DILocation(line: 673, column: 60, scope: !972)
!1021 = !DILocation(line: 673, column: 22, scope: !972)
!1022 = !DILocation(line: 673, column: 20, scope: !972)
!1023 = !DILocation(line: 674, column: 21, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !972, file: !2, line: 674, column: 21)
!1025 = !DILocation(line: 674, column: 21, scope: !972)
!1026 = !DILocation(line: 675, column: 42, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 674, column: 40)
!1028 = !DILocation(line: 675, column: 49, scope: !1027)
!1029 = !DILocation(line: 675, column: 58, scope: !1027)
!1030 = !DILocation(line: 675, column: 65, scope: !1027)
!1031 = !DILocation(line: 675, column: 21, scope: !1027)
!1032 = !DILocation(line: 676, column: 36, scope: !1027)
!1033 = !DILocation(line: 676, column: 43, scope: !1027)
!1034 = !DILocation(line: 676, column: 49, scope: !1027)
!1035 = !DILocation(line: 676, column: 56, scope: !1027)
!1036 = !DILocation(line: 676, column: 21, scope: !1027)
!1037 = !DILocation(line: 678, column: 21, scope: !1027)
!1038 = !DILocation(line: 680, column: 21, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !972, file: !2, line: 680, column: 21)
!1040 = !DILocation(line: 680, column: 21, scope: !972)
!1041 = !DILocation(line: 681, column: 21, scope: !1039)
!1042 = !DILocation(line: 682, column: 17, scope: !972)
!1043 = !DILocation(line: 682, column: 17, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 682, column: 17)
!1045 = distinct !DILexicalBlock(scope: !972, file: !2, line: 682, column: 17)
!1046 = !DILocation(line: 682, column: 17, scope: !1045)
!1047 = !DILocation(line: 682, column: 17, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 682, column: 17)
!1049 = !DILocation(line: 683, column: 17, scope: !972)
!1050 = !DILabel(scope: !972, name: "error", file: !2, line: 685)
!1051 = !DILocation(line: 685, column: 1, scope: !972)
!1052 = !DILocation(line: 686, column: 34, scope: !972)
!1053 = !DILocation(line: 686, column: 41, scope: !972)
!1054 = !DILocation(line: 686, column: 50, scope: !972)
!1055 = !DILocation(line: 686, column: 57, scope: !972)
!1056 = !DILocation(line: 686, column: 17, scope: !972)
!1057 = !DILocation(line: 687, column: 29, scope: !972)
!1058 = !DILocation(line: 687, column: 36, scope: !972)
!1059 = !DILocation(line: 687, column: 22, scope: !972)
!1060 = !DILocation(line: 687, column: 20, scope: !972)
!1061 = !DILocation(line: 688, column: 17, scope: !972)
!1062 = !DILocation(line: 688, column: 17, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 688, column: 17)
!1064 = distinct !DILexicalBlock(scope: !972, file: !2, line: 688, column: 17)
!1065 = !DILocation(line: 688, column: 17, scope: !1064)
!1066 = !DILocation(line: 688, column: 17, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 688, column: 17)
!1068 = !DILocation(line: 689, column: 17, scope: !972)
!1069 = !DILocation(line: 689, column: 24, scope: !972)
!1070 = !DILocation(line: 689, column: 26, scope: !972)
!1071 = !DILocation(line: 690, column: 17, scope: !972)
!1072 = !DILocation(line: 690, column: 24, scope: !972)
!1073 = !DILocation(line: 690, column: 30, scope: !972)
!1074 = !DILocation(line: 691, column: 32, scope: !972)
!1075 = !DILocation(line: 691, column: 39, scope: !972)
!1076 = !DILocation(line: 691, column: 45, scope: !972)
!1077 = !DILocation(line: 691, column: 52, scope: !972)
!1078 = !DILocation(line: 691, column: 17, scope: !972)
!1079 = !DILocation(line: 692, column: 17, scope: !972)
!1080 = !DILocation(line: 694, column: 17, scope: !972)
!1081 = !DILocation(line: 694, column: 17, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 694, column: 17)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 694, column: 17)
!1084 = distinct !DILexicalBlock(scope: !972, file: !2, line: 694, column: 17)
!1085 = !DILocation(line: 695, column: 13, scope: !972)
!1086 = !DILocation(line: 696, column: 9, scope: !969)
!1087 = !DILocation(line: 697, column: 13, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !726, file: !2, line: 697, column: 13)
!1089 = !DILocation(line: 697, column: 20, scope: !1088)
!1090 = !DILocation(line: 697, column: 13, scope: !726)
!1091 = !DILocation(line: 698, column: 21, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 697, column: 29)
!1093 = !DILocation(line: 698, column: 13, scope: !1092)
!1094 = !DILocation(line: 700, column: 17, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 698, column: 27)
!1096 = !DILocation(line: 700, column: 24, scope: !1095)
!1097 = !DILocation(line: 700, column: 30, scope: !1095)
!1098 = !DILocation(line: 701, column: 36, scope: !1095)
!1099 = !DILocation(line: 701, column: 43, scope: !1095)
!1100 = !DILocation(line: 701, column: 52, scope: !1095)
!1101 = !DILocation(line: 701, column: 59, scope: !1095)
!1102 = !DILocation(line: 701, column: 17, scope: !1095)
!1103 = !DILocation(line: 702, column: 17, scope: !1095)
!1104 = !DILocation(line: 704, column: 17, scope: !1095)
!1105 = !DILocation(line: 704, column: 17, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 704, column: 17)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 704, column: 17)
!1108 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 704, column: 17)
!1109 = !DILocation(line: 705, column: 13, scope: !1095)
!1110 = !DILocation(line: 706, column: 9, scope: !1092)
!1111 = !DILocation(line: 707, column: 9, scope: !726)
!1112 = !DILocation(line: 707, column: 9, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 707, column: 9)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 707, column: 9)
!1115 = distinct !DILexicalBlock(scope: !726, file: !2, line: 707, column: 9)
!1116 = !DILocation(line: 707, column: 9, scope: !1115)
!1117 = !DILocation(line: 713, column: 13, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !726, file: !2, line: 713, column: 13)
!1119 = !DILocation(line: 713, column: 24, scope: !1118)
!1120 = !DILocation(line: 713, column: 31, scope: !1118)
!1121 = !DILocation(line: 713, column: 20, scope: !1118)
!1122 = !DILocation(line: 713, column: 13, scope: !726)
!1123 = !DILocation(line: 714, column: 13, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 713, column: 42)
!1125 = !DILocation(line: 714, column: 13, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 714, column: 13)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 714, column: 13)
!1128 = !DILocation(line: 714, column: 13, scope: !1127)
!1129 = !DILocation(line: 714, column: 13, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 714, column: 13)
!1131 = !DILocation(line: 715, column: 30, scope: !1124)
!1132 = !DILocation(line: 715, column: 37, scope: !1124)
!1133 = !DILocation(line: 715, column: 46, scope: !1124)
!1134 = !DILocation(line: 715, column: 53, scope: !1124)
!1135 = !DILocation(line: 715, column: 13, scope: !1124)
!1136 = !DILocation(line: 716, column: 25, scope: !1124)
!1137 = !DILocation(line: 716, column: 32, scope: !1124)
!1138 = !DILocation(line: 716, column: 18, scope: !1124)
!1139 = !DILocation(line: 716, column: 16, scope: !1124)
!1140 = !DILocation(line: 717, column: 13, scope: !1124)
!1141 = !DILocation(line: 717, column: 13, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 717, column: 13)
!1143 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 717, column: 13)
!1144 = !DILocation(line: 717, column: 13, scope: !1143)
!1145 = !DILocation(line: 717, column: 13, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 717, column: 13)
!1147 = !DILocation(line: 718, column: 13, scope: !1124)
!1148 = !DILocation(line: 718, column: 20, scope: !1124)
!1149 = !DILocation(line: 718, column: 22, scope: !1124)
!1150 = !DILocation(line: 719, column: 13, scope: !1124)
!1151 = !DILocation(line: 719, column: 20, scope: !1124)
!1152 = !DILocation(line: 719, column: 26, scope: !1124)
!1153 = !DILocation(line: 720, column: 28, scope: !1124)
!1154 = !DILocation(line: 720, column: 35, scope: !1124)
!1155 = !DILocation(line: 720, column: 41, scope: !1124)
!1156 = !DILocation(line: 720, column: 48, scope: !1124)
!1157 = !DILocation(line: 720, column: 13, scope: !1124)
!1158 = !DILocation(line: 721, column: 13, scope: !1124)
!1159 = !DILocation(line: 726, column: 13, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !726, file: !2, line: 726, column: 13)
!1161 = !DILocation(line: 726, column: 24, scope: !1160)
!1162 = !DILocation(line: 726, column: 31, scope: !1160)
!1163 = !DILocation(line: 726, column: 20, scope: !1160)
!1164 = !DILocation(line: 726, column: 13, scope: !726)
!1165 = !DILocation(line: 727, column: 13, scope: !1160)
!1166 = !DILocation(line: 729, column: 9, scope: !726)
!1167 = !DILocation(line: 729, column: 9, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 729, column: 9)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !2, line: 729, column: 9)
!1170 = distinct !DILexicalBlock(scope: !726, file: !2, line: 729, column: 9)
!1171 = !DILocation(line: 729, column: 9, scope: !1170)
!1172 = !DILocation(line: 737, column: 9, scope: !726)
!1173 = !DILocation(line: 737, column: 9, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 737, column: 9)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 737, column: 9)
!1176 = distinct !DILexicalBlock(scope: !726, file: !2, line: 737, column: 9)
!1177 = !DILocation(line: 737, column: 9, scope: !1176)
!1178 = !DILocation(line: 745, column: 13, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !726, file: !2, line: 745, column: 13)
!1180 = !DILocation(line: 745, column: 20, scope: !1179)
!1181 = !DILocation(line: 745, column: 13, scope: !726)
!1182 = !DILocation(line: 746, column: 21, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 745, column: 29)
!1184 = !DILocation(line: 746, column: 13, scope: !1183)
!1185 = !DILocation(line: 748, column: 17, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 746, column: 27)
!1187 = !DILocation(line: 748, column: 24, scope: !1186)
!1188 = !DILocation(line: 748, column: 30, scope: !1186)
!1189 = !DILocation(line: 749, column: 17, scope: !1186)
!1190 = !DILocation(line: 751, column: 17, scope: !1186)
!1191 = !DILocation(line: 751, column: 17, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 751, column: 17)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 751, column: 17)
!1194 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 751, column: 17)
!1195 = !DILocation(line: 752, column: 13, scope: !1186)
!1196 = !DILocation(line: 753, column: 9, scope: !1183)
!1197 = !DILocation(line: 754, column: 9, scope: !726)
!1198 = !DILocation(line: 754, column: 9, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 754, column: 9)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 754, column: 9)
!1201 = distinct !DILexicalBlock(scope: !726, file: !2, line: 754, column: 9)
!1202 = !DILocation(line: 754, column: 9, scope: !1201)
!1203 = !DILocation(line: 762, column: 13, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !726, file: !2, line: 762, column: 13)
!1205 = !DILocation(line: 762, column: 20, scope: !1204)
!1206 = !DILocation(line: 762, column: 13, scope: !726)
!1207 = !DILocation(line: 763, column: 21, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 762, column: 29)
!1209 = !DILocation(line: 763, column: 13, scope: !1208)
!1210 = !DILocation(line: 765, column: 17, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !2, line: 763, column: 27)
!1212 = !DILocation(line: 765, column: 24, scope: !1211)
!1213 = !DILocation(line: 765, column: 30, scope: !1211)
!1214 = !DILocation(line: 766, column: 17, scope: !1211)
!1215 = !DILocation(line: 768, column: 36, scope: !1211)
!1216 = !DILocation(line: 768, column: 43, scope: !1211)
!1217 = !DILocation(line: 768, column: 52, scope: !1211)
!1218 = !DILocation(line: 768, column: 59, scope: !1211)
!1219 = !DILocation(line: 768, column: 17, scope: !1211)
!1220 = !DILocation(line: 769, column: 17, scope: !1211)
!1221 = !DILocation(line: 769, column: 24, scope: !1211)
!1222 = !DILocation(line: 769, column: 30, scope: !1211)
!1223 = !DILocation(line: 770, column: 17, scope: !1211)
!1224 = !DILocation(line: 772, column: 17, scope: !1211)
!1225 = !DILocation(line: 772, column: 17, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !2, line: 772, column: 17)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 772, column: 17)
!1228 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 772, column: 17)
!1229 = !DILocation(line: 773, column: 13, scope: !1211)
!1230 = !DILocation(line: 774, column: 9, scope: !1208)
!1231 = !DILocation(line: 775, column: 13, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !726, file: !2, line: 775, column: 13)
!1233 = !DILocation(line: 775, column: 24, scope: !1232)
!1234 = !DILocation(line: 775, column: 31, scope: !1232)
!1235 = !DILocation(line: 775, column: 20, scope: !1232)
!1236 = !DILocation(line: 775, column: 13, scope: !726)
!1237 = !DILocation(line: 776, column: 21, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 775, column: 36)
!1239 = !DILocation(line: 776, column: 13, scope: !1238)
!1240 = !DILocation(line: 783, column: 29, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 776, column: 27)
!1242 = !DILocation(line: 783, column: 36, scope: !1241)
!1243 = !DILocation(line: 783, column: 21, scope: !1241)
!1244 = !DILocation(line: 783, column: 19, scope: !1241)
!1245 = !DILocation(line: 789, column: 21, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 789, column: 21)
!1247 = !DILocation(line: 0, scope: !1246)
!1248 = !DILocation(line: 789, column: 21, scope: !1241)
!1249 = !DILocation(line: 790, column: 21, scope: !1246)
!1250 = !DILocation(line: 797, column: 21, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 797, column: 21)
!1252 = !DILocation(line: 0, scope: !1251)
!1253 = !DILocation(line: 797, column: 21, scope: !1241)
!1254 = !DILocation(line: 799, column: 21, scope: !1251)
!1255 = !DILocation(line: 802, column: 17, scope: !1241)
!1256 = !DILocation(line: 802, column: 17, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 802, column: 17)
!1258 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 802, column: 17)
!1259 = !DILocation(line: 802, column: 17, scope: !1258)
!1260 = !DILocation(line: 802, column: 17, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 802, column: 17)
!1262 = !DILocation(line: 805, column: 40, scope: !1241)
!1263 = !DILocation(line: 805, column: 47, scope: !1241)
!1264 = !DILocation(line: 805, column: 54, scope: !1241)
!1265 = !DILocation(line: 805, column: 17, scope: !1241)
!1266 = !DILocation(line: 806, column: 17, scope: !1241)
!1267 = !DILocation(line: 806, column: 24, scope: !1241)
!1268 = !DILocation(line: 806, column: 31, scope: !1241)
!1269 = !DILocation(line: 806, column: 37, scope: !1241)
!1270 = !DILocation(line: 809, column: 32, scope: !1241)
!1271 = !DILocation(line: 809, column: 39, scope: !1241)
!1272 = !DILocation(line: 809, column: 46, scope: !1241)
!1273 = !DILocation(line: 810, column: 22, scope: !1241)
!1274 = !DILocation(line: 810, column: 29, scope: !1241)
!1275 = !DILocation(line: 810, column: 36, scope: !1241)
!1276 = !DILocation(line: 809, column: 17, scope: !1241)
!1277 = !DILocation(line: 814, column: 17, scope: !1241)
!1278 = !DILocation(line: 814, column: 24, scope: !1241)
!1279 = !DILocation(line: 814, column: 31, scope: !1241)
!1280 = !DILocation(line: 814, column: 37, scope: !1241)
!1281 = !DILocation(line: 815, column: 17, scope: !1241)
!1282 = !DILocation(line: 815, column: 24, scope: !1241)
!1283 = !DILocation(line: 815, column: 30, scope: !1241)
!1284 = !DILocation(line: 818, column: 34, scope: !1241)
!1285 = !DILocation(line: 818, column: 41, scope: !1241)
!1286 = !DILocation(line: 818, column: 50, scope: !1241)
!1287 = !DILocation(line: 818, column: 57, scope: !1241)
!1288 = !DILocation(line: 818, column: 17, scope: !1241)
!1289 = !DILocation(line: 819, column: 17, scope: !1241)
!1290 = !DILocation(line: 819, column: 24, scope: !1241)
!1291 = !DILocation(line: 819, column: 30, scope: !1241)
!1292 = !DILocation(line: 821, column: 17, scope: !1241)
!1293 = !DILocation(line: 824, column: 17, scope: !1241)
!1294 = !DILocation(line: 824, column: 17, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 824, column: 17)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 824, column: 17)
!1297 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 824, column: 17)
!1298 = !DILocation(line: 825, column: 13, scope: !1241)
!1299 = !DILocation(line: 826, column: 9, scope: !1238)
!1300 = !DILocation(line: 827, column: 9, scope: !726)
!1301 = !DILocation(line: 827, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 827, column: 9)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 827, column: 9)
!1304 = distinct !DILexicalBlock(scope: !726, file: !2, line: 827, column: 9)
!1305 = !DILocation(line: 827, column: 9, scope: !1304)
!1306 = !DILocation(line: 833, column: 13, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !726, file: !2, line: 833, column: 13)
!1308 = !DILocation(line: 833, column: 24, scope: !1307)
!1309 = !DILocation(line: 833, column: 31, scope: !1307)
!1310 = !DILocation(line: 833, column: 20, scope: !1307)
!1311 = !DILocation(line: 833, column: 13, scope: !726)
!1312 = !DILocation(line: 834, column: 13, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 833, column: 42)
!1314 = !DILocation(line: 834, column: 13, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 834, column: 13)
!1316 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 834, column: 13)
!1317 = !DILocation(line: 834, column: 13, scope: !1316)
!1318 = !DILocation(line: 834, column: 13, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 834, column: 13)
!1320 = !DILocation(line: 835, column: 30, scope: !1313)
!1321 = !DILocation(line: 835, column: 37, scope: !1313)
!1322 = !DILocation(line: 835, column: 46, scope: !1313)
!1323 = !DILocation(line: 835, column: 53, scope: !1313)
!1324 = !DILocation(line: 835, column: 13, scope: !1313)
!1325 = !DILocation(line: 836, column: 13, scope: !1313)
!1326 = !DILocation(line: 836, column: 20, scope: !1313)
!1327 = !DILocation(line: 836, column: 26, scope: !1313)
!1328 = !DILocation(line: 839, column: 29, scope: !1313)
!1329 = !DILocation(line: 839, column: 36, scope: !1313)
!1330 = !DILocation(line: 839, column: 43, scope: !1313)
!1331 = !DILocation(line: 839, column: 13, scope: !1313)
!1332 = !DILocation(line: 841, column: 13, scope: !1313)
!1333 = !DILocation(line: 843, column: 13, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !726, file: !2, line: 843, column: 13)
!1335 = !DILocation(line: 843, column: 24, scope: !1334)
!1336 = !DILocation(line: 843, column: 31, scope: !1334)
!1337 = !DILocation(line: 843, column: 20, scope: !1334)
!1338 = !DILocation(line: 843, column: 13, scope: !726)
!1339 = !DILocation(line: 844, column: 21, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 843, column: 36)
!1341 = !DILocation(line: 844, column: 13, scope: !1340)
!1342 = !DILocation(line: 846, column: 17, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1340, file: !2, line: 844, column: 27)
!1344 = !DILocation(line: 848, column: 17, scope: !1343)
!1345 = !DILocation(line: 848, column: 17, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 848, column: 17)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 848, column: 17)
!1348 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 848, column: 17)
!1349 = !DILocation(line: 849, column: 13, scope: !1343)
!1350 = !DILocation(line: 850, column: 9, scope: !1340)
!1351 = !DILocation(line: 851, column: 9, scope: !726)
!1352 = !DILocation(line: 851, column: 9, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 851, column: 9)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 851, column: 9)
!1355 = distinct !DILexicalBlock(scope: !726, file: !2, line: 851, column: 9)
!1356 = !DILocation(line: 851, column: 9, scope: !1355)
!1357 = !DILocation(line: 857, column: 9, scope: !726)
!1358 = !DILocation(line: 857, column: 9, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 857, column: 9)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 857, column: 9)
!1361 = distinct !DILexicalBlock(scope: !726, file: !2, line: 857, column: 9)
!1362 = !DILocation(line: 858, column: 5, scope: !726)
!1363 = !DILocation(line: 859, column: 1, scope: !456)
!1364 = distinct !DISubprogram(name: "nn_usock_term", scope: !2, file: !2, line: 102, type: !1365, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !356)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{null, !136}
!1367 = !DILocalVariable(name: "self", arg: 1, scope: !1364, file: !2, line: 102, type: !136)
!1368 = !DILocation(line: 102, column: 38, scope: !1364)
!1369 = !DILocalVariable(name: "rc", scope: !1364, file: !2, line: 104, type: !130)
!1370 = !DILocation(line: 104, column: 9, scope: !1364)
!1371 = !DILocation(line: 106, column: 5, scope: !1364)
!1372 = !DILocation(line: 106, column: 5, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 106, column: 5)
!1374 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 106, column: 5)
!1375 = !DILocation(line: 106, column: 5, scope: !1374)
!1376 = !DILocation(line: 106, column: 5, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 106, column: 5)
!1378 = !DILocation(line: 108, column: 9, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 108, column: 9)
!1380 = !DILocation(line: 108, column: 15, scope: !1379)
!1381 = !DILocation(line: 108, column: 18, scope: !1379)
!1382 = !DILocation(line: 108, column: 9, scope: !1364)
!1383 = !DILocation(line: 109, column: 18, scope: !1379)
!1384 = !DILocation(line: 109, column: 24, scope: !1379)
!1385 = !DILocation(line: 109, column: 27, scope: !1379)
!1386 = !DILocation(line: 109, column: 9, scope: !1379)
!1387 = !DILocation(line: 111, column: 25, scope: !1364)
!1388 = !DILocation(line: 111, column: 31, scope: !1364)
!1389 = !DILocation(line: 111, column: 5, scope: !1364)
!1390 = !DILocation(line: 112, column: 25, scope: !1364)
!1391 = !DILocation(line: 112, column: 31, scope: !1364)
!1392 = !DILocation(line: 112, column: 5, scope: !1364)
!1393 = !DILocation(line: 113, column: 25, scope: !1364)
!1394 = !DILocation(line: 113, column: 31, scope: !1364)
!1395 = !DILocation(line: 113, column: 5, scope: !1364)
!1396 = !DILocation(line: 114, column: 25, scope: !1364)
!1397 = !DILocation(line: 114, column: 31, scope: !1364)
!1398 = !DILocation(line: 114, column: 5, scope: !1364)
!1399 = !DILocation(line: 115, column: 27, scope: !1364)
!1400 = !DILocation(line: 115, column: 33, scope: !1364)
!1401 = !DILocation(line: 115, column: 5, scope: !1364)
!1402 = !DILocation(line: 116, column: 27, scope: !1364)
!1403 = !DILocation(line: 116, column: 33, scope: !1364)
!1404 = !DILocation(line: 116, column: 5, scope: !1364)
!1405 = !DILocation(line: 117, column: 27, scope: !1364)
!1406 = !DILocation(line: 117, column: 33, scope: !1364)
!1407 = !DILocation(line: 117, column: 5, scope: !1364)
!1408 = !DILocation(line: 118, column: 27, scope: !1364)
!1409 = !DILocation(line: 118, column: 33, scope: !1364)
!1410 = !DILocation(line: 118, column: 5, scope: !1364)
!1411 = !DILocation(line: 119, column: 27, scope: !1364)
!1412 = !DILocation(line: 119, column: 33, scope: !1364)
!1413 = !DILocation(line: 119, column: 5, scope: !1364)
!1414 = !DILocation(line: 120, column: 27, scope: !1364)
!1415 = !DILocation(line: 120, column: 33, scope: !1364)
!1416 = !DILocation(line: 120, column: 5, scope: !1364)
!1417 = !DILocation(line: 121, column: 25, scope: !1364)
!1418 = !DILocation(line: 121, column: 31, scope: !1364)
!1419 = !DILocation(line: 121, column: 5, scope: !1364)
!1420 = !DILocation(line: 123, column: 19, scope: !1364)
!1421 = !DILocation(line: 123, column: 25, scope: !1364)
!1422 = !DILocation(line: 123, column: 5, scope: !1364)
!1423 = !DILocation(line: 124, column: 1, scope: !1364)
!1424 = distinct !DISubprogram(name: "nn_usock_isidle", scope: !2, file: !2, line: 126, type: !1425, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !356)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!130, !136}
!1427 = !DILocalVariable(name: "self", arg: 1, scope: !1424, file: !2, line: 126, type: !136)
!1428 = !DILocation(line: 126, column: 39, scope: !1424)
!1429 = !DILocation(line: 128, column: 28, scope: !1424)
!1430 = !DILocation(line: 128, column: 34, scope: !1424)
!1431 = !DILocation(line: 128, column: 12, scope: !1424)
!1432 = !DILocation(line: 128, column: 5, scope: !1424)
!1433 = distinct !DISubprogram(name: "nn_usock_start", scope: !2, file: !2, line: 131, type: !1434, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !356)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!130, !136, !130, !130, !130}
!1436 = !DILocalVariable(name: "self", arg: 1, scope: !1433, file: !2, line: 131, type: !136)
!1437 = !DILocation(line: 131, column: 38, scope: !1433)
!1438 = !DILocalVariable(name: "domain", arg: 2, scope: !1433, file: !2, line: 131, type: !130)
!1439 = !DILocation(line: 131, column: 48, scope: !1433)
!1440 = !DILocalVariable(name: "type", arg: 3, scope: !1433, file: !2, line: 131, type: !130)
!1441 = !DILocation(line: 131, column: 60, scope: !1433)
!1442 = !DILocalVariable(name: "protocol", arg: 4, scope: !1433, file: !2, line: 131, type: !130)
!1443 = !DILocation(line: 131, column: 70, scope: !1433)
!1444 = !DILocalVariable(name: "s", scope: !1433, file: !2, line: 133, type: !130)
!1445 = !DILocation(line: 133, column: 9, scope: !1433)
!1446 = !DILocation(line: 138, column: 10, scope: !1433)
!1447 = !DILocation(line: 142, column: 17, scope: !1433)
!1448 = !DILocation(line: 142, column: 25, scope: !1433)
!1449 = !DILocation(line: 142, column: 31, scope: !1433)
!1450 = !DILocation(line: 142, column: 9, scope: !1433)
!1451 = !DILocation(line: 142, column: 7, scope: !1433)
!1452 = !DILocation(line: 143, column: 9, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 143, column: 9)
!1454 = !DILocation(line: 143, column: 9, scope: !1433)
!1455 = !DILocation(line: 144, column: 16, scope: !1453)
!1456 = !DILocation(line: 144, column: 15, scope: !1453)
!1457 = !DILocation(line: 144, column: 8, scope: !1453)
!1458 = !DILocation(line: 146, column: 28, scope: !1433)
!1459 = !DILocation(line: 146, column: 34, scope: !1433)
!1460 = !DILocation(line: 146, column: 5, scope: !1433)
!1461 = !DILocation(line: 149, column: 20, scope: !1433)
!1462 = !DILocation(line: 149, column: 26, scope: !1433)
!1463 = !DILocation(line: 149, column: 5, scope: !1433)
!1464 = !DILocation(line: 151, column: 5, scope: !1433)
!1465 = !DILocation(line: 152, column: 1, scope: !1433)
!1466 = distinct !DISubprogram(name: "nn_usock_init_from_fd", scope: !2, file: !2, line: 154, type: !1467, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !356)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !136, !130}
!1469 = !DILocalVariable(name: "self", arg: 1, scope: !1466, file: !2, line: 154, type: !136)
!1470 = !DILocation(line: 154, column: 53, scope: !1466)
!1471 = !DILocalVariable(name: "s", arg: 2, scope: !1466, file: !2, line: 154, type: !130)
!1472 = !DILocation(line: 154, column: 63, scope: !1466)
!1473 = !DILocalVariable(name: "rc", scope: !1466, file: !2, line: 156, type: !130)
!1474 = !DILocation(line: 156, column: 9, scope: !1466)
!1475 = !DILocalVariable(name: "opt", scope: !1466, file: !2, line: 157, type: !130)
!1476 = !DILocation(line: 157, column: 9, scope: !1466)
!1477 = !DILocation(line: 159, column: 5, scope: !1466)
!1478 = !DILocation(line: 159, column: 5, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 159, column: 5)
!1480 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 159, column: 5)
!1481 = !DILocation(line: 159, column: 5, scope: !1480)
!1482 = !DILocation(line: 159, column: 5, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 159, column: 5)
!1484 = !DILocation(line: 163, column: 5, scope: !1466)
!1485 = !DILocation(line: 163, column: 5, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 163, column: 5)
!1487 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 163, column: 5)
!1488 = !DILocation(line: 163, column: 5, scope: !1487)
!1489 = !DILocation(line: 163, column: 5, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 163, column: 5)
!1491 = !DILocation(line: 164, column: 15, scope: !1466)
!1492 = !DILocation(line: 164, column: 5, scope: !1466)
!1493 = !DILocation(line: 164, column: 11, scope: !1466)
!1494 = !DILocation(line: 164, column: 13, scope: !1466)
!1495 = !DILocation(line: 171, column: 17, scope: !1466)
!1496 = !DILocation(line: 171, column: 23, scope: !1466)
!1497 = !DILocation(line: 171, column: 10, scope: !1466)
!1498 = !DILocation(line: 171, column: 8, scope: !1466)
!1499 = !DILocation(line: 175, column: 5, scope: !1466)
!1500 = !DILocation(line: 175, column: 5, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 175, column: 5)
!1502 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 175, column: 5)
!1503 = !DILocation(line: 175, column: 5, scope: !1502)
!1504 = !DILocation(line: 175, column: 5, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !2, line: 175, column: 5)
!1506 = !DILocation(line: 193, column: 18, scope: !1466)
!1507 = !DILocation(line: 193, column: 24, scope: !1466)
!1508 = !DILocation(line: 193, column: 11, scope: !1466)
!1509 = !DILocation(line: 193, column: 9, scope: !1466)
!1510 = !DILocation(line: 194, column: 9, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 194, column: 9)
!1512 = !DILocation(line: 194, column: 13, scope: !1511)
!1513 = !DILocation(line: 194, column: 9, scope: !1466)
!1514 = !DILocation(line: 195, column: 13, scope: !1511)
!1515 = !DILocation(line: 195, column: 9, scope: !1511)
!1516 = !DILocation(line: 196, column: 11, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 196, column: 9)
!1518 = !DILocation(line: 196, column: 15, scope: !1517)
!1519 = !DILocation(line: 196, column: 9, scope: !1466)
!1520 = !DILocation(line: 197, column: 21, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !2, line: 196, column: 30)
!1522 = !DILocation(line: 197, column: 27, scope: !1521)
!1523 = !DILocation(line: 197, column: 39, scope: !1521)
!1524 = !DILocation(line: 197, column: 43, scope: !1521)
!1525 = !DILocation(line: 197, column: 14, scope: !1521)
!1526 = !DILocation(line: 197, column: 12, scope: !1521)
!1527 = !DILocation(line: 201, column: 9, scope: !1521)
!1528 = !DILocation(line: 201, column: 9, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !2, line: 201, column: 9)
!1530 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 201, column: 9)
!1531 = !DILocation(line: 201, column: 9, scope: !1530)
!1532 = !DILocation(line: 201, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !2, line: 201, column: 9)
!1534 = !DILocation(line: 203, column: 5, scope: !1521)
!1535 = !DILocation(line: 204, column: 1, scope: !1466)
!1536 = distinct !DISubprogram(name: "nn_usock_stop", scope: !2, file: !2, line: 206, type: !1365, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !356)
!1537 = !DILocalVariable(name: "self", arg: 1, scope: !1536, file: !2, line: 206, type: !136)
!1538 = !DILocation(line: 206, column: 38, scope: !1536)
!1539 = !DILocation(line: 208, column: 19, scope: !1536)
!1540 = !DILocation(line: 208, column: 25, scope: !1536)
!1541 = !DILocation(line: 208, column: 5, scope: !1536)
!1542 = !DILocation(line: 209, column: 1, scope: !1536)
!1543 = distinct !DISubprogram(name: "nn_usock_swap_owner", scope: !2, file: !2, line: 211, type: !1544, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !356)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !136, !1546}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_owner", file: !142, line: 61, size: 128, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1547, file: !142, line: 62, baseType: !130, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !1547, file: !142, line: 63, baseType: !149, size: 64, offset: 64)
!1551 = !DILocalVariable(name: "self", arg: 1, scope: !1543, file: !2, line: 211, type: !136)
!1552 = !DILocation(line: 211, column: 44, scope: !1543)
!1553 = !DILocalVariable(name: "owner", arg: 2, scope: !1543, file: !2, line: 211, type: !1546)
!1554 = !DILocation(line: 211, column: 71, scope: !1543)
!1555 = !DILocation(line: 213, column: 25, scope: !1543)
!1556 = !DILocation(line: 213, column: 31, scope: !1543)
!1557 = !DILocation(line: 213, column: 36, scope: !1543)
!1558 = !DILocation(line: 213, column: 5, scope: !1543)
!1559 = !DILocation(line: 214, column: 1, scope: !1543)
!1560 = distinct !DISubprogram(name: "nn_usock_setsockopt", scope: !2, file: !2, line: 216, type: !1561, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !356)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!130, !136, !130, !130, !1563, !300}
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1565 = !DILocalVariable(name: "self", arg: 1, scope: !1560, file: !2, line: 216, type: !136)
!1566 = !DILocation(line: 216, column: 43, scope: !1560)
!1567 = !DILocalVariable(name: "level", arg: 2, scope: !1560, file: !2, line: 216, type: !130)
!1568 = !DILocation(line: 216, column: 53, scope: !1560)
!1569 = !DILocalVariable(name: "optname", arg: 3, scope: !1560, file: !2, line: 216, type: !130)
!1570 = !DILocation(line: 216, column: 64, scope: !1560)
!1571 = !DILocalVariable(name: "optval", arg: 4, scope: !1560, file: !2, line: 217, type: !1563)
!1572 = !DILocation(line: 217, column: 17, scope: !1560)
!1573 = !DILocalVariable(name: "optlen", arg: 5, scope: !1560, file: !2, line: 217, type: !300)
!1574 = !DILocation(line: 217, column: 32, scope: !1560)
!1575 = !DILocalVariable(name: "rc", scope: !1560, file: !2, line: 219, type: !130)
!1576 = !DILocation(line: 219, column: 9, scope: !1560)
!1577 = !DILocation(line: 222, column: 5, scope: !1560)
!1578 = !DILocation(line: 222, column: 5, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !2, line: 222, column: 5)
!1580 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 222, column: 5)
!1581 = !DILocation(line: 222, column: 5, scope: !1580)
!1582 = !DILocation(line: 222, column: 5, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 222, column: 5)
!1584 = !DILocation(line: 230, column: 22, scope: !1560)
!1585 = !DILocation(line: 230, column: 28, scope: !1560)
!1586 = !DILocation(line: 230, column: 31, scope: !1560)
!1587 = !DILocation(line: 230, column: 38, scope: !1560)
!1588 = !DILocation(line: 230, column: 47, scope: !1560)
!1589 = !DILocation(line: 230, column: 67, scope: !1560)
!1590 = !DILocation(line: 230, column: 55, scope: !1560)
!1591 = !DILocation(line: 230, column: 10, scope: !1560)
!1592 = !DILocation(line: 230, column: 8, scope: !1560)
!1593 = !DILocation(line: 235, column: 9, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 235, column: 9)
!1595 = !DILocation(line: 235, column: 9, scope: !1560)
!1596 = !DILocation(line: 236, column: 17, scope: !1594)
!1597 = !DILocation(line: 236, column: 16, scope: !1594)
!1598 = !DILocation(line: 236, column: 9, scope: !1594)
!1599 = !DILocation(line: 239, column: 5, scope: !1560)
!1600 = !DILocation(line: 240, column: 1, scope: !1560)
!1601 = distinct !DISubprogram(name: "nn_usock_bind", scope: !2, file: !2, line: 242, type: !1602, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !356)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!130, !136, !1604, !300}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1606)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !103, line: 180, size: 128, elements: !1607)
!1607 = !{!1608, !1612}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !1606, file: !103, line: 182, baseType: !1609, size: 16)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !1610, line: 28, baseType: !1611)
!1610 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!1611 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !1606, file: !103, line: 183, baseType: !53, size: 112, offset: 16)
!1613 = !DILocalVariable(name: "self", arg: 1, scope: !1601, file: !2, line: 242, type: !136)
!1614 = !DILocation(line: 242, column: 37, scope: !1601)
!1615 = !DILocalVariable(name: "addr", arg: 2, scope: !1601, file: !2, line: 242, type: !1604)
!1616 = !DILocation(line: 242, column: 66, scope: !1601)
!1617 = !DILocalVariable(name: "addrlen", arg: 3, scope: !1601, file: !2, line: 243, type: !300)
!1618 = !DILocation(line: 243, column: 12, scope: !1601)
!1619 = !DILocalVariable(name: "rc", scope: !1601, file: !2, line: 245, type: !130)
!1620 = !DILocation(line: 245, column: 9, scope: !1601)
!1621 = !DILocalVariable(name: "opt", scope: !1601, file: !2, line: 246, type: !130)
!1622 = !DILocation(line: 246, column: 9, scope: !1601)
!1623 = !DILocation(line: 249, column: 5, scope: !1601)
!1624 = !DILocation(line: 249, column: 5, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 249, column: 5)
!1626 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 249, column: 5)
!1627 = !DILocation(line: 249, column: 5, scope: !1626)
!1628 = !DILocation(line: 249, column: 5, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 249, column: 5)
!1630 = !DILocation(line: 252, column: 9, scope: !1601)
!1631 = !DILocation(line: 253, column: 22, scope: !1601)
!1632 = !DILocation(line: 253, column: 28, scope: !1601)
!1633 = !DILocation(line: 253, column: 10, scope: !1601)
!1634 = !DILocation(line: 253, column: 8, scope: !1601)
!1635 = !DILocation(line: 254, column: 5, scope: !1601)
!1636 = !DILocation(line: 254, column: 5, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !2, line: 254, column: 5)
!1638 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 254, column: 5)
!1639 = !DILocation(line: 254, column: 5, scope: !1638)
!1640 = !DILocation(line: 254, column: 5, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 254, column: 5)
!1642 = !DILocation(line: 256, column: 16, scope: !1601)
!1643 = !DILocation(line: 256, column: 22, scope: !1601)
!1644 = !DILocation(line: 256, column: 25, scope: !1601)
!1645 = !DILocation(line: 256, column: 43, scope: !1601)
!1646 = !DILocation(line: 256, column: 31, scope: !1601)
!1647 = !DILocation(line: 256, column: 10, scope: !1601)
!1648 = !DILocation(line: 256, column: 8, scope: !1601)
!1649 = !DILocation(line: 257, column: 9, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 257, column: 9)
!1651 = !DILocation(line: 257, column: 9, scope: !1601)
!1652 = !DILocation(line: 258, column: 17, scope: !1650)
!1653 = !DILocation(line: 258, column: 16, scope: !1650)
!1654 = !DILocation(line: 258, column: 9, scope: !1650)
!1655 = !DILocation(line: 260, column: 5, scope: !1601)
!1656 = !DILocation(line: 261, column: 1, scope: !1601)
!1657 = distinct !DISubprogram(name: "nn_usock_listen", scope: !2, file: !2, line: 263, type: !1658, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !356)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!130, !136, !130}
!1660 = !DILocalVariable(name: "self", arg: 1, scope: !1657, file: !2, line: 263, type: !136)
!1661 = !DILocation(line: 263, column: 39, scope: !1657)
!1662 = !DILocalVariable(name: "backlog", arg: 2, scope: !1657, file: !2, line: 263, type: !130)
!1663 = !DILocation(line: 263, column: 49, scope: !1657)
!1664 = !DILocalVariable(name: "rc", scope: !1657, file: !2, line: 265, type: !130)
!1665 = !DILocation(line: 265, column: 9, scope: !1657)
!1666 = !DILocation(line: 268, column: 5, scope: !1657)
!1667 = !DILocation(line: 268, column: 5, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !2, line: 268, column: 5)
!1669 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 268, column: 5)
!1670 = !DILocation(line: 268, column: 5, scope: !1669)
!1671 = !DILocation(line: 268, column: 5, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 268, column: 5)
!1673 = !DILocation(line: 271, column: 18, scope: !1657)
!1674 = !DILocation(line: 271, column: 24, scope: !1657)
!1675 = !DILocation(line: 271, column: 27, scope: !1657)
!1676 = !DILocation(line: 271, column: 10, scope: !1657)
!1677 = !DILocation(line: 271, column: 8, scope: !1657)
!1678 = !DILocation(line: 272, column: 9, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 272, column: 9)
!1680 = !DILocation(line: 272, column: 9, scope: !1657)
!1681 = !DILocation(line: 273, column: 17, scope: !1679)
!1682 = !DILocation(line: 273, column: 16, scope: !1679)
!1683 = !DILocation(line: 273, column: 9, scope: !1679)
!1684 = !DILocation(line: 276, column: 21, scope: !1657)
!1685 = !DILocation(line: 276, column: 27, scope: !1657)
!1686 = !DILocation(line: 276, column: 5, scope: !1657)
!1687 = !DILocation(line: 278, column: 5, scope: !1657)
!1688 = !DILocation(line: 279, column: 1, scope: !1657)
!1689 = distinct !DISubprogram(name: "nn_usock_accept", scope: !2, file: !2, line: 281, type: !1690, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !356)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{null, !136, !136}
!1692 = !DILocalVariable(name: "self", arg: 1, scope: !1689, file: !2, line: 281, type: !136)
!1693 = !DILocation(line: 281, column: 40, scope: !1689)
!1694 = !DILocalVariable(name: "listener", arg: 2, scope: !1689, file: !2, line: 281, type: !136)
!1695 = !DILocation(line: 281, column: 63, scope: !1689)
!1696 = !DILocalVariable(name: "s", scope: !1689, file: !2, line: 283, type: !130)
!1697 = !DILocation(line: 283, column: 9, scope: !1689)
!1698 = !DILocation(line: 286, column: 20, scope: !1689)
!1699 = !DILocation(line: 286, column: 26, scope: !1689)
!1700 = !DILocation(line: 286, column: 5, scope: !1689)
!1701 = !DILocation(line: 287, column: 21, scope: !1689)
!1702 = !DILocation(line: 287, column: 27, scope: !1689)
!1703 = !DILocation(line: 287, column: 5, scope: !1689)
!1704 = !DILocation(line: 288, column: 21, scope: !1689)
!1705 = !DILocation(line: 288, column: 31, scope: !1689)
!1706 = !DILocation(line: 288, column: 5, scope: !1689)
!1707 = !DILocation(line: 294, column: 17, scope: !1689)
!1708 = !DILocation(line: 294, column: 27, scope: !1689)
!1709 = !DILocation(line: 294, column: 9, scope: !1689)
!1710 = !DILocation(line: 294, column: 7, scope: !1689)
!1711 = !DILocation(line: 298, column: 9, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 298, column: 9)
!1713 = !DILocation(line: 298, column: 9, scope: !1689)
!1714 = !DILocation(line: 299, column: 32, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 298, column: 27)
!1716 = !DILocation(line: 299, column: 38, scope: !1715)
!1717 = !DILocation(line: 299, column: 9, scope: !1715)
!1718 = !DILocation(line: 300, column: 25, scope: !1715)
!1719 = !DILocation(line: 300, column: 35, scope: !1715)
!1720 = !DILocation(line: 300, column: 9, scope: !1715)
!1721 = !DILocation(line: 301, column: 25, scope: !1715)
!1722 = !DILocation(line: 301, column: 31, scope: !1715)
!1723 = !DILocation(line: 301, column: 9, scope: !1715)
!1724 = !DILocation(line: 302, column: 9, scope: !1715)
!1725 = !DILocation(line: 307, column: 5, scope: !1689)
!1726 = !DILocation(line: 307, column: 5, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 307, column: 5)
!1728 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 307, column: 5)
!1729 = !DILocation(line: 307, column: 5, scope: !1728)
!1730 = !DILocation(line: 307, column: 5, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !2, line: 307, column: 5)
!1732 = !DILocation(line: 312, column: 5, scope: !1689)
!1733 = !DILocation(line: 312, column: 5, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !2, line: 312, column: 5)
!1735 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 312, column: 5)
!1736 = !DILocation(line: 312, column: 5, scope: !1735)
!1737 = !DILocation(line: 312, column: 5, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1734, file: !2, line: 312, column: 5)
!1739 = !DILocation(line: 313, column: 19, scope: !1689)
!1740 = !DILocation(line: 313, column: 5, scope: !1689)
!1741 = !DILocation(line: 313, column: 11, scope: !1689)
!1742 = !DILocation(line: 313, column: 17, scope: !1689)
!1743 = !DILocation(line: 314, column: 5, scope: !1689)
!1744 = !DILocation(line: 314, column: 5, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !2, line: 314, column: 5)
!1746 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 314, column: 5)
!1747 = !DILocation(line: 314, column: 5, scope: !1746)
!1748 = !DILocation(line: 314, column: 5, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 314, column: 5)
!1750 = !DILocation(line: 315, column: 23, scope: !1689)
!1751 = !DILocation(line: 315, column: 5, scope: !1689)
!1752 = !DILocation(line: 315, column: 15, scope: !1689)
!1753 = !DILocation(line: 315, column: 21, scope: !1689)
!1754 = !DILocation(line: 318, column: 24, scope: !1689)
!1755 = !DILocation(line: 318, column: 34, scope: !1689)
!1756 = !DILocation(line: 318, column: 43, scope: !1689)
!1757 = !DILocation(line: 318, column: 53, scope: !1689)
!1758 = !DILocation(line: 318, column: 5, scope: !1689)
!1759 = !DILocation(line: 319, column: 1, scope: !1689)
!1760 = distinct !DISubprogram(name: "nn_usock_activate", scope: !2, file: !2, line: 321, type: !1365, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !356)
!1761 = !DILocalVariable(name: "self", arg: 1, scope: !1760, file: !2, line: 321, type: !136)
!1762 = !DILocation(line: 321, column: 42, scope: !1760)
!1763 = !DILocation(line: 323, column: 21, scope: !1760)
!1764 = !DILocation(line: 323, column: 27, scope: !1760)
!1765 = !DILocation(line: 323, column: 5, scope: !1760)
!1766 = !DILocation(line: 324, column: 1, scope: !1760)
!1767 = distinct !DISubprogram(name: "nn_usock_connect", scope: !2, file: !2, line: 326, type: !1768, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !356)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !136, !1604, !300}
!1770 = !DILocalVariable(name: "self", arg: 1, scope: !1767, file: !2, line: 326, type: !136)
!1771 = !DILocation(line: 326, column: 41, scope: !1767)
!1772 = !DILocalVariable(name: "addr", arg: 2, scope: !1767, file: !2, line: 326, type: !1604)
!1773 = !DILocation(line: 326, column: 70, scope: !1767)
!1774 = !DILocalVariable(name: "addrlen", arg: 3, scope: !1767, file: !2, line: 327, type: !300)
!1775 = !DILocation(line: 327, column: 12, scope: !1767)
!1776 = !DILocalVariable(name: "rc", scope: !1767, file: !2, line: 329, type: !130)
!1777 = !DILocation(line: 329, column: 9, scope: !1767)
!1778 = !DILocation(line: 332, column: 21, scope: !1767)
!1779 = !DILocation(line: 332, column: 27, scope: !1767)
!1780 = !DILocation(line: 332, column: 5, scope: !1767)
!1781 = !DILocation(line: 335, column: 19, scope: !1767)
!1782 = !DILocation(line: 335, column: 25, scope: !1767)
!1783 = !DILocation(line: 335, column: 28, scope: !1767)
!1784 = !DILocation(line: 335, column: 46, scope: !1767)
!1785 = !DILocation(line: 335, column: 34, scope: !1767)
!1786 = !DILocation(line: 335, column: 10, scope: !1767)
!1787 = !DILocation(line: 335, column: 8, scope: !1767)
!1788 = !DILocation(line: 338, column: 9, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1767, file: !2, line: 338, column: 9)
!1790 = !DILocation(line: 338, column: 9, scope: !1767)
!1791 = !DILocation(line: 339, column: 25, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 338, column: 28)
!1793 = !DILocation(line: 339, column: 31, scope: !1792)
!1794 = !DILocation(line: 339, column: 9, scope: !1792)
!1795 = !DILocation(line: 340, column: 9, scope: !1792)
!1796 = !DILocation(line: 344, column: 9, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1767, file: !2, line: 344, column: 9)
!1798 = !DILocation(line: 344, column: 9, scope: !1767)
!1799 = !DILocation(line: 345, column: 25, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 344, column: 41)
!1801 = !DILocation(line: 345, column: 31, scope: !1800)
!1802 = !DILocation(line: 345, column: 9, scope: !1800)
!1803 = !DILocation(line: 346, column: 9, scope: !1800)
!1804 = !DILocation(line: 350, column: 24, scope: !1767)
!1805 = !DILocation(line: 350, column: 30, scope: !1767)
!1806 = !DILocation(line: 350, column: 39, scope: !1767)
!1807 = !DILocation(line: 350, column: 45, scope: !1767)
!1808 = !DILocation(line: 350, column: 5, scope: !1767)
!1809 = !DILocation(line: 351, column: 1, scope: !1767)
!1810 = distinct !DISubprogram(name: "nn_usock_send", scope: !2, file: !2, line: 353, type: !1811, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !356)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !136, !1813, !130}
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_iovec", file: !1816, line: 165, size: 128, elements: !1817)
!1816 = !DIFile(filename: "./src/aio/../nn.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "0c95956590725e5a1eedd7f7b192cc23")
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1815, file: !1816, line: 166, baseType: !150, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1815, file: !1816, line: 167, baseType: !300, size: 64, offset: 64)
!1820 = !DILocalVariable(name: "self", arg: 1, scope: !1810, file: !2, line: 353, type: !136)
!1821 = !DILocation(line: 353, column: 38, scope: !1810)
!1822 = !DILocalVariable(name: "iov", arg: 2, scope: !1810, file: !2, line: 353, type: !1813)
!1823 = !DILocation(line: 353, column: 67, scope: !1810)
!1824 = !DILocalVariable(name: "iovcnt", arg: 3, scope: !1810, file: !2, line: 354, type: !130)
!1825 = !DILocation(line: 354, column: 9, scope: !1810)
!1826 = !DILocalVariable(name: "rc", scope: !1810, file: !2, line: 356, type: !130)
!1827 = !DILocation(line: 356, column: 9, scope: !1810)
!1828 = !DILocalVariable(name: "i", scope: !1810, file: !2, line: 357, type: !130)
!1829 = !DILocation(line: 357, column: 9, scope: !1810)
!1830 = !DILocalVariable(name: "out", scope: !1810, file: !2, line: 358, type: !130)
!1831 = !DILocation(line: 358, column: 9, scope: !1810)
!1832 = !DILocation(line: 361, column: 5, scope: !1810)
!1833 = !DILocation(line: 361, column: 5, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 361, column: 5)
!1835 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 361, column: 5)
!1836 = !DILocation(line: 361, column: 5, scope: !1835)
!1837 = !DILocation(line: 361, column: 5, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 361, column: 5)
!1839 = !DILocation(line: 364, column: 5, scope: !1810)
!1840 = !DILocation(line: 364, column: 5, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !2, line: 364, column: 5)
!1842 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 364, column: 5)
!1843 = !DILocation(line: 364, column: 5, scope: !1842)
!1844 = !DILocation(line: 364, column: 5, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1841, file: !2, line: 364, column: 5)
!1846 = !DILocation(line: 365, column: 29, scope: !1810)
!1847 = !DILocation(line: 365, column: 35, scope: !1810)
!1848 = !DILocation(line: 365, column: 39, scope: !1810)
!1849 = !DILocation(line: 365, column: 5, scope: !1810)
!1850 = !DILocation(line: 365, column: 11, scope: !1810)
!1851 = !DILocation(line: 365, column: 15, scope: !1810)
!1852 = !DILocation(line: 365, column: 19, scope: !1810)
!1853 = !DILocation(line: 365, column: 27, scope: !1810)
!1854 = !DILocation(line: 366, column: 9, scope: !1810)
!1855 = !DILocation(line: 367, column: 12, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 367, column: 5)
!1857 = !DILocation(line: 367, column: 10, scope: !1856)
!1858 = !DILocation(line: 367, column: 17, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1856, file: !2, line: 367, column: 5)
!1860 = !DILocation(line: 367, column: 22, scope: !1859)
!1861 = !DILocation(line: 367, column: 19, scope: !1859)
!1862 = !DILocation(line: 367, column: 5, scope: !1856)
!1863 = !DILocation(line: 368, column: 13, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !2, line: 368, column: 13)
!1865 = distinct !DILexicalBlock(scope: !1859, file: !2, line: 367, column: 35)
!1866 = !DILocation(line: 368, column: 18, scope: !1864)
!1867 = !DILocation(line: 368, column: 21, scope: !1864)
!1868 = !DILocation(line: 368, column: 29, scope: !1864)
!1869 = !DILocation(line: 368, column: 13, scope: !1865)
!1870 = !DILocation(line: 369, column: 13, scope: !1864)
!1871 = !DILocation(line: 370, column: 40, scope: !1865)
!1872 = !DILocation(line: 370, column: 45, scope: !1865)
!1873 = !DILocation(line: 370, column: 48, scope: !1865)
!1874 = !DILocation(line: 370, column: 9, scope: !1865)
!1875 = !DILocation(line: 370, column: 15, scope: !1865)
!1876 = !DILocation(line: 370, column: 19, scope: !1865)
!1877 = !DILocation(line: 370, column: 24, scope: !1865)
!1878 = !DILocation(line: 370, column: 29, scope: !1865)
!1879 = !DILocation(line: 370, column: 38, scope: !1865)
!1880 = !DILocation(line: 371, column: 39, scope: !1865)
!1881 = !DILocation(line: 371, column: 44, scope: !1865)
!1882 = !DILocation(line: 371, column: 47, scope: !1865)
!1883 = !DILocation(line: 371, column: 9, scope: !1865)
!1884 = !DILocation(line: 371, column: 15, scope: !1865)
!1885 = !DILocation(line: 371, column: 19, scope: !1865)
!1886 = !DILocation(line: 371, column: 24, scope: !1865)
!1887 = !DILocation(line: 371, column: 29, scope: !1865)
!1888 = !DILocation(line: 371, column: 37, scope: !1865)
!1889 = !DILocation(line: 372, column: 12, scope: !1865)
!1890 = !DILocation(line: 373, column: 5, scope: !1865)
!1891 = !DILocation(line: 367, column: 30, scope: !1859)
!1892 = !DILocation(line: 367, column: 5, scope: !1859)
!1893 = distinct !{!1893, !1862, !1894, !1895}
!1894 = !DILocation(line: 373, column: 5, scope: !1856)
!1895 = !{!"llvm.loop.mustprogress"}
!1896 = !DILocation(line: 374, column: 32, scope: !1810)
!1897 = !DILocation(line: 374, column: 5, scope: !1810)
!1898 = !DILocation(line: 374, column: 11, scope: !1810)
!1899 = !DILocation(line: 374, column: 15, scope: !1810)
!1900 = !DILocation(line: 374, column: 19, scope: !1810)
!1901 = !DILocation(line: 374, column: 30, scope: !1810)
!1902 = !DILocation(line: 377, column: 29, scope: !1810)
!1903 = !DILocation(line: 377, column: 36, scope: !1810)
!1904 = !DILocation(line: 377, column: 42, scope: !1810)
!1905 = !DILocation(line: 377, column: 46, scope: !1810)
!1906 = !DILocation(line: 377, column: 10, scope: !1810)
!1907 = !DILocation(line: 377, column: 8, scope: !1810)
!1908 = !DILocation(line: 380, column: 9, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 380, column: 9)
!1910 = !DILocation(line: 380, column: 9, scope: !1810)
!1911 = !DILocation(line: 381, column: 24, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1909, file: !2, line: 380, column: 28)
!1913 = !DILocation(line: 381, column: 30, scope: !1912)
!1914 = !DILocation(line: 381, column: 36, scope: !1912)
!1915 = !DILocation(line: 381, column: 42, scope: !1912)
!1916 = !DILocation(line: 381, column: 9, scope: !1912)
!1917 = !DILocation(line: 382, column: 9, scope: !1912)
!1918 = !DILocation(line: 386, column: 9, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 386, column: 9)
!1920 = !DILocation(line: 386, column: 9, scope: !1810)
!1921 = !DILocation(line: 387, column: 9, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1919, file: !2, line: 386, column: 34)
!1923 = !DILocation(line: 387, column: 9, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !2, line: 387, column: 9)
!1925 = distinct !DILexicalBlock(scope: !1922, file: !2, line: 387, column: 9)
!1926 = !DILocation(line: 387, column: 9, scope: !1925)
!1927 = !DILocation(line: 387, column: 9, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1924, file: !2, line: 387, column: 9)
!1929 = !DILocation(line: 388, column: 25, scope: !1922)
!1930 = !DILocation(line: 388, column: 31, scope: !1922)
!1931 = !DILocation(line: 388, column: 9, scope: !1922)
!1932 = !DILocation(line: 389, column: 9, scope: !1922)
!1933 = !DILocation(line: 393, column: 24, scope: !1810)
!1934 = !DILocation(line: 393, column: 30, scope: !1810)
!1935 = !DILocation(line: 393, column: 39, scope: !1810)
!1936 = !DILocation(line: 393, column: 45, scope: !1810)
!1937 = !DILocation(line: 393, column: 5, scope: !1810)
!1938 = !DILocation(line: 394, column: 1, scope: !1810)
!1939 = distinct !DISubprogram(name: "nn_usock_send_raw", scope: !2, file: !2, line: 861, type: !1940, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !356)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!130, !136, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!1943 = !DILocalVariable(name: "self", arg: 1, scope: !1939, file: !2, line: 861, type: !136)
!1944 = !DILocation(line: 861, column: 48, scope: !1939)
!1945 = !DILocalVariable(name: "hdr", arg: 2, scope: !1939, file: !2, line: 861, type: !1942)
!1946 = !DILocation(line: 861, column: 69, scope: !1939)
!1947 = !DILocalVariable(name: "nbytes", scope: !1939, file: !2, line: 863, type: !1948)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1949, line: 108, baseType: !1950)
!1949 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !129, line: 194, baseType: !211)
!1951 = !DILocation(line: 863, column: 13, scope: !1939)
!1952 = !DILocation(line: 867, column: 23, scope: !1939)
!1953 = !DILocation(line: 867, column: 29, scope: !1939)
!1954 = !DILocation(line: 867, column: 32, scope: !1939)
!1955 = !DILocation(line: 867, column: 14, scope: !1939)
!1956 = !DILocation(line: 867, column: 12, scope: !1939)
!1957 = !DILocation(line: 873, column: 9, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 873, column: 9)
!1959 = !DILocation(line: 873, column: 9, scope: !1939)
!1960 = !DILocation(line: 874, column: 13, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !2, line: 874, column: 13)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !2, line: 873, column: 31)
!1963 = !DILocation(line: 874, column: 13, scope: !1962)
!1964 = !DILocation(line: 875, column: 20, scope: !1961)
!1965 = !DILocation(line: 875, column: 13, scope: !1961)
!1966 = !DILocation(line: 879, column: 13, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1961, file: !2, line: 876, column: 14)
!1968 = !DILocation(line: 879, column: 13, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !2, line: 879, column: 13)
!1970 = distinct !DILexicalBlock(scope: !1967, file: !2, line: 879, column: 13)
!1971 = !DILocation(line: 879, column: 13, scope: !1970)
!1972 = !DILocation(line: 879, column: 13, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 879, column: 13)
!1974 = !DILocation(line: 881, column: 13, scope: !1967)
!1975 = !DILocation(line: 883, column: 5, scope: !1962)
!1976 = !DILocation(line: 886, column: 5, scope: !1939)
!1977 = !DILocation(line: 886, column: 12, scope: !1939)
!1978 = !DILocation(line: 887, column: 13, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !2, line: 887, column: 13)
!1980 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 886, column: 20)
!1981 = !DILocation(line: 887, column: 23, scope: !1979)
!1982 = !DILocation(line: 887, column: 28, scope: !1979)
!1983 = !DILocation(line: 887, column: 37, scope: !1979)
!1984 = !DILocation(line: 887, column: 20, scope: !1979)
!1985 = !DILocation(line: 887, column: 13, scope: !1980)
!1986 = !DILocation(line: 888, column: 15, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 887, column: 46)
!1988 = !DILocation(line: 888, column: 20, scope: !1987)
!1989 = !DILocation(line: 888, column: 13, scope: !1987)
!1990 = !DILocation(line: 889, column: 18, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 889, column: 17)
!1992 = !DILocation(line: 889, column: 23, scope: !1991)
!1993 = !DILocation(line: 889, column: 17, scope: !1987)
!1994 = !DILocation(line: 890, column: 17, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 889, column: 35)
!1996 = !DILocation(line: 890, column: 17, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !2, line: 890, column: 17)
!1998 = distinct !DILexicalBlock(scope: !1995, file: !2, line: 890, column: 17)
!1999 = !DILocation(line: 890, column: 17, scope: !1998)
!2000 = !DILocation(line: 890, column: 17, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 890, column: 17)
!2002 = !DILocation(line: 891, column: 17, scope: !1995)
!2003 = !DILocation(line: 893, column: 23, scope: !1987)
!2004 = !DILocation(line: 893, column: 28, scope: !1987)
!2005 = !DILocation(line: 893, column: 37, scope: !1987)
!2006 = !DILocation(line: 893, column: 20, scope: !1987)
!2007 = !DILocation(line: 894, column: 15, scope: !1987)
!2008 = !DILocation(line: 894, column: 20, scope: !1987)
!2009 = !DILocation(line: 894, column: 13, scope: !1987)
!2010 = !DILocation(line: 895, column: 9, scope: !1987)
!2011 = !DILocation(line: 897, column: 39, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 896, column: 14)
!2013 = !DILocation(line: 897, column: 13, scope: !2012)
!2014 = !DILocation(line: 897, column: 18, scope: !2012)
!2015 = !DILocation(line: 897, column: 27, scope: !2012)
!2016 = !DILocation(line: 897, column: 36, scope: !2012)
!2017 = !DILocation(line: 898, column: 38, scope: !2012)
!2018 = !DILocation(line: 898, column: 13, scope: !2012)
!2019 = !DILocation(line: 898, column: 18, scope: !2012)
!2020 = !DILocation(line: 898, column: 27, scope: !2012)
!2021 = !DILocation(line: 898, column: 35, scope: !2012)
!2022 = !DILocation(line: 899, column: 13, scope: !2012)
!2023 = distinct !{!2023, !1976, !2024, !1895}
!2024 = !DILocation(line: 901, column: 5, scope: !1939)
!2025 = !DILocation(line: 903, column: 9, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 903, column: 9)
!2027 = !DILocation(line: 903, column: 14, scope: !2026)
!2028 = !DILocation(line: 903, column: 25, scope: !2026)
!2029 = !DILocation(line: 903, column: 9, scope: !1939)
!2030 = !DILocation(line: 904, column: 9, scope: !2026)
!2031 = !DILocation(line: 906, column: 5, scope: !1939)
!2032 = !DILocation(line: 907, column: 1, scope: !1939)
!2033 = distinct !DISubprogram(name: "nn_usock_recv", scope: !2, file: !2, line: 396, type: !2034, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !356)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !136, !150, !300}
!2036 = !DILocalVariable(name: "self", arg: 1, scope: !2033, file: !2, line: 396, type: !136)
!2037 = !DILocation(line: 396, column: 38, scope: !2033)
!2038 = !DILocalVariable(name: "buf", arg: 2, scope: !2033, file: !2, line: 396, type: !150)
!2039 = !DILocation(line: 396, column: 50, scope: !2033)
!2040 = !DILocalVariable(name: "len", arg: 3, scope: !2033, file: !2, line: 396, type: !300)
!2041 = !DILocation(line: 396, column: 62, scope: !2033)
!2042 = !DILocalVariable(name: "rc", scope: !2033, file: !2, line: 398, type: !130)
!2043 = !DILocation(line: 398, column: 9, scope: !2033)
!2044 = !DILocalVariable(name: "nbytes", scope: !2033, file: !2, line: 399, type: !300)
!2045 = !DILocation(line: 399, column: 12, scope: !2033)
!2046 = !DILocation(line: 402, column: 5, scope: !2033)
!2047 = !DILocation(line: 402, column: 5, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 402, column: 5)
!2049 = distinct !DILexicalBlock(scope: !2033, file: !2, line: 402, column: 5)
!2050 = !DILocation(line: 402, column: 5, scope: !2049)
!2051 = !DILocation(line: 402, column: 5, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 402, column: 5)
!2053 = !DILocation(line: 405, column: 14, scope: !2033)
!2054 = !DILocation(line: 405, column: 12, scope: !2033)
!2055 = !DILocation(line: 406, column: 29, scope: !2033)
!2056 = !DILocation(line: 406, column: 35, scope: !2033)
!2057 = !DILocation(line: 406, column: 10, scope: !2033)
!2058 = !DILocation(line: 406, column: 8, scope: !2033)
!2059 = !DILocation(line: 407, column: 9, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2033, file: !2, line: 407, column: 9)
!2061 = !DILocation(line: 407, column: 9, scope: !2033)
!2062 = !DILocation(line: 408, column: 9, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !2, line: 407, column: 27)
!2064 = !DILocation(line: 408, column: 9, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !2, line: 408, column: 9)
!2066 = distinct !DILexicalBlock(scope: !2063, file: !2, line: 408, column: 9)
!2067 = !DILocation(line: 408, column: 9, scope: !2066)
!2068 = !DILocation(line: 408, column: 9, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !2, line: 408, column: 9)
!2070 = !DILocation(line: 409, column: 25, scope: !2063)
!2071 = !DILocation(line: 409, column: 31, scope: !2063)
!2072 = !DILocation(line: 409, column: 9, scope: !2063)
!2073 = !DILocation(line: 410, column: 9, scope: !2063)
!2074 = !DILocation(line: 414, column: 9, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2033, file: !2, line: 414, column: 9)
!2076 = !DILocation(line: 414, column: 9, scope: !2033)
!2077 = !DILocation(line: 415, column: 24, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2075, file: !2, line: 414, column: 34)
!2079 = !DILocation(line: 415, column: 30, scope: !2078)
!2080 = !DILocation(line: 415, column: 36, scope: !2078)
!2081 = !DILocation(line: 415, column: 42, scope: !2078)
!2082 = !DILocation(line: 415, column: 9, scope: !2078)
!2083 = !DILocation(line: 416, column: 9, scope: !2078)
!2084 = !DILocation(line: 420, column: 32, scope: !2033)
!2085 = !DILocation(line: 420, column: 39, scope: !2033)
!2086 = !DILocation(line: 420, column: 37, scope: !2033)
!2087 = !DILocation(line: 420, column: 5, scope: !2033)
!2088 = !DILocation(line: 420, column: 11, scope: !2033)
!2089 = !DILocation(line: 420, column: 14, scope: !2033)
!2090 = !DILocation(line: 420, column: 18, scope: !2033)
!2091 = !DILocation(line: 421, column: 20, scope: !2033)
!2092 = !DILocation(line: 421, column: 26, scope: !2033)
!2093 = !DILocation(line: 421, column: 24, scope: !2033)
!2094 = !DILocation(line: 421, column: 5, scope: !2033)
!2095 = !DILocation(line: 421, column: 11, scope: !2033)
!2096 = !DILocation(line: 421, column: 14, scope: !2033)
!2097 = !DILocation(line: 421, column: 18, scope: !2033)
!2098 = !DILocation(line: 424, column: 24, scope: !2033)
!2099 = !DILocation(line: 424, column: 30, scope: !2033)
!2100 = !DILocation(line: 424, column: 39, scope: !2033)
!2101 = !DILocation(line: 424, column: 45, scope: !2033)
!2102 = !DILocation(line: 424, column: 5, scope: !2033)
!2103 = !DILocation(line: 425, column: 1, scope: !2033)
!2104 = distinct !DISubprogram(name: "nn_usock_recv_raw", scope: !2, file: !2, line: 909, type: !2105, scopeLine: 910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !86, retainedNodes: !356)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!130, !136, !150, !2107}
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!2108 = !DILocalVariable(name: "self", arg: 1, scope: !2104, file: !2, line: 909, type: !136)
!2109 = !DILocation(line: 909, column: 48, scope: !2104)
!2110 = !DILocalVariable(name: "buf", arg: 2, scope: !2104, file: !2, line: 909, type: !150)
!2111 = !DILocation(line: 909, column: 60, scope: !2104)
!2112 = !DILocalVariable(name: "len", arg: 3, scope: !2104, file: !2, line: 909, type: !2107)
!2113 = !DILocation(line: 909, column: 73, scope: !2104)
!2114 = !DILocalVariable(name: "sz", scope: !2104, file: !2, line: 911, type: !300)
!2115 = !DILocation(line: 911, column: 12, scope: !2104)
!2116 = !DILocalVariable(name: "length", scope: !2104, file: !2, line: 912, type: !300)
!2117 = !DILocation(line: 912, column: 12, scope: !2104)
!2118 = !DILocalVariable(name: "nbytes", scope: !2104, file: !2, line: 913, type: !1948)
!2119 = !DILocation(line: 913, column: 13, scope: !2104)
!2120 = !DILocation(line: 918, column: 9, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2104, file: !2, line: 918, column: 9)
!2122 = !DILocation(line: 918, column: 9, scope: !2104)
!2123 = !DILocation(line: 919, column: 26, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2121, file: !2, line: 918, column: 36)
!2125 = !DILocation(line: 919, column: 9, scope: !2124)
!2126 = !DILocation(line: 919, column: 15, scope: !2124)
!2127 = !DILocation(line: 919, column: 18, scope: !2124)
!2128 = !DILocation(line: 919, column: 24, scope: !2124)
!2129 = !DILocation(line: 920, column: 9, scope: !2124)
!2130 = !DILocation(line: 920, column: 9, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 920, column: 9)
!2132 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 920, column: 9)
!2133 = !DILocation(line: 920, column: 9, scope: !2132)
!2134 = !DILocation(line: 920, column: 9, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !2, line: 920, column: 9)
!2136 = !DILocation(line: 921, column: 5, scope: !2124)
!2137 = !DILocation(line: 924, column: 15, scope: !2104)
!2138 = !DILocation(line: 924, column: 14, scope: !2104)
!2139 = !DILocation(line: 924, column: 12, scope: !2104)
!2140 = !DILocation(line: 925, column: 10, scope: !2104)
!2141 = !DILocation(line: 925, column: 16, scope: !2104)
!2142 = !DILocation(line: 925, column: 19, scope: !2104)
!2143 = !DILocation(line: 925, column: 31, scope: !2104)
!2144 = !DILocation(line: 925, column: 37, scope: !2104)
!2145 = !DILocation(line: 925, column: 40, scope: !2104)
!2146 = !DILocation(line: 925, column: 29, scope: !2104)
!2147 = !DILocation(line: 925, column: 8, scope: !2104)
!2148 = !DILocation(line: 926, column: 9, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2104, file: !2, line: 926, column: 9)
!2150 = !DILocation(line: 926, column: 9, scope: !2104)
!2151 = !DILocation(line: 927, column: 13, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !2, line: 927, column: 13)
!2153 = distinct !DILexicalBlock(scope: !2149, file: !2, line: 926, column: 13)
!2154 = !DILocation(line: 927, column: 18, scope: !2152)
!2155 = !DILocation(line: 927, column: 16, scope: !2152)
!2156 = !DILocation(line: 927, column: 13, scope: !2153)
!2157 = !DILocation(line: 928, column: 18, scope: !2152)
!2158 = !DILocation(line: 928, column: 16, scope: !2152)
!2159 = !DILocation(line: 928, column: 13, scope: !2152)
!2160 = !DILocation(line: 929, column: 17, scope: !2153)
!2161 = !DILocation(line: 929, column: 22, scope: !2153)
!2162 = !DILocation(line: 929, column: 28, scope: !2153)
!2163 = !DILocation(line: 929, column: 31, scope: !2153)
!2164 = !DILocation(line: 929, column: 39, scope: !2153)
!2165 = !DILocation(line: 929, column: 45, scope: !2153)
!2166 = !DILocation(line: 929, column: 48, scope: !2153)
!2167 = !DILocation(line: 929, column: 37, scope: !2153)
!2168 = !DILocation(line: 929, column: 59, scope: !2153)
!2169 = !DILocation(line: 929, column: 9, scope: !2153)
!2170 = !DILocation(line: 930, column: 31, scope: !2153)
!2171 = !DILocation(line: 930, column: 9, scope: !2153)
!2172 = !DILocation(line: 930, column: 15, scope: !2153)
!2173 = !DILocation(line: 930, column: 18, scope: !2153)
!2174 = !DILocation(line: 930, column: 28, scope: !2153)
!2175 = !DILocation(line: 931, column: 24, scope: !2153)
!2176 = !DILocation(line: 931, column: 31, scope: !2153)
!2177 = !DILocation(line: 931, column: 29, scope: !2153)
!2178 = !DILocation(line: 931, column: 13, scope: !2153)
!2179 = !DILocation(line: 932, column: 19, scope: !2153)
!2180 = !DILocation(line: 932, column: 16, scope: !2153)
!2181 = !DILocation(line: 933, column: 14, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2153, file: !2, line: 933, column: 13)
!2183 = !DILocation(line: 933, column: 13, scope: !2153)
!2184 = !DILocation(line: 934, column: 13, scope: !2182)
!2185 = !DILocation(line: 935, column: 5, scope: !2153)
!2186 = !DILocation(line: 939, column: 9, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2104, file: !2, line: 939, column: 9)
!2188 = !DILocation(line: 939, column: 16, scope: !2187)
!2189 = !DILocation(line: 939, column: 9, scope: !2104)
!2190 = !DILocation(line: 940, column: 24, scope: !2187)
!2191 = !DILocation(line: 940, column: 30, scope: !2187)
!2192 = !DILocation(line: 940, column: 33, scope: !2187)
!2193 = !DILocation(line: 940, column: 38, scope: !2187)
!2194 = !DILocation(line: 940, column: 18, scope: !2187)
!2195 = !DILocation(line: 940, column: 16, scope: !2187)
!2196 = !DILocation(line: 940, column: 9, scope: !2187)
!2197 = !DILocation(line: 942, column: 24, scope: !2187)
!2198 = !DILocation(line: 942, column: 30, scope: !2187)
!2199 = !DILocation(line: 942, column: 33, scope: !2187)
!2200 = !DILocation(line: 942, column: 39, scope: !2187)
!2201 = !DILocation(line: 942, column: 42, scope: !2187)
!2202 = !DILocation(line: 942, column: 18, scope: !2187)
!2203 = !DILocation(line: 942, column: 16, scope: !2187)
!2204 = !DILocation(line: 945, column: 9, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2104, file: !2, line: 945, column: 9)
!2206 = !DILocation(line: 945, column: 9, scope: !2104)
!2207 = !DILocation(line: 947, column: 13, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !2, line: 947, column: 13)
!2209 = distinct !DILexicalBlock(scope: !2205, file: !2, line: 945, column: 32)
!2210 = !DILocation(line: 947, column: 13, scope: !2209)
!2211 = !DILocation(line: 948, column: 13, scope: !2208)
!2212 = !DILocation(line: 951, column: 13, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2209, file: !2, line: 951, column: 13)
!2214 = !DILocation(line: 951, column: 13, scope: !2209)
!2215 = !DILocation(line: 952, column: 20, scope: !2213)
!2216 = !DILocation(line: 952, column: 13, scope: !2213)
!2217 = !DILocation(line: 956, column: 13, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2213, file: !2, line: 953, column: 14)
!2219 = !DILocation(line: 956, column: 13, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !2, line: 956, column: 13)
!2221 = distinct !DILexicalBlock(scope: !2218, file: !2, line: 956, column: 13)
!2222 = !DILocation(line: 956, column: 13, scope: !2221)
!2223 = !DILocation(line: 956, column: 13, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2220, file: !2, line: 956, column: 13)
!2225 = !DILocation(line: 959, column: 13, scope: !2218)
!2226 = !DILocation(line: 961, column: 5, scope: !2209)
!2227 = !DILocation(line: 965, column: 9, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2104, file: !2, line: 965, column: 9)
!2229 = !DILocation(line: 965, column: 16, scope: !2228)
!2230 = !DILocation(line: 965, column: 9, scope: !2104)
!2231 = !DILocation(line: 966, column: 19, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 965, column: 39)
!2233 = !DILocation(line: 966, column: 16, scope: !2232)
!2234 = !DILocation(line: 967, column: 17, scope: !2232)
!2235 = !DILocation(line: 967, column: 10, scope: !2232)
!2236 = !DILocation(line: 967, column: 14, scope: !2232)
!2237 = !DILocation(line: 968, column: 9, scope: !2232)
!2238 = !DILocation(line: 973, column: 26, scope: !2104)
!2239 = !DILocation(line: 973, column: 5, scope: !2104)
!2240 = !DILocation(line: 973, column: 11, scope: !2104)
!2241 = !DILocation(line: 973, column: 14, scope: !2104)
!2242 = !DILocation(line: 973, column: 24, scope: !2104)
!2243 = !DILocation(line: 974, column: 5, scope: !2104)
!2244 = !DILocation(line: 974, column: 11, scope: !2104)
!2245 = !DILocation(line: 974, column: 14, scope: !2104)
!2246 = !DILocation(line: 974, column: 24, scope: !2104)
!2247 = !DILocation(line: 975, column: 9, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2104, file: !2, line: 975, column: 9)
!2249 = !DILocation(line: 975, column: 9, scope: !2104)
!2250 = !DILocation(line: 976, column: 14, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2248, file: !2, line: 975, column: 17)
!2252 = !DILocation(line: 976, column: 23, scope: !2251)
!2253 = !DILocation(line: 976, column: 21, scope: !2251)
!2254 = !DILocation(line: 976, column: 32, scope: !2251)
!2255 = !DILocation(line: 976, column: 41, scope: !2251)
!2256 = !DILocation(line: 976, column: 12, scope: !2251)
!2257 = !DILocation(line: 977, column: 17, scope: !2251)
!2258 = !DILocation(line: 977, column: 22, scope: !2251)
!2259 = !DILocation(line: 977, column: 28, scope: !2251)
!2260 = !DILocation(line: 977, column: 31, scope: !2251)
!2261 = !DILocation(line: 977, column: 38, scope: !2251)
!2262 = !DILocation(line: 977, column: 9, scope: !2251)
!2263 = !DILocation(line: 978, column: 19, scope: !2251)
!2264 = !DILocation(line: 978, column: 16, scope: !2251)
!2265 = !DILocation(line: 979, column: 31, scope: !2251)
!2266 = !DILocation(line: 979, column: 9, scope: !2251)
!2267 = !DILocation(line: 979, column: 15, scope: !2251)
!2268 = !DILocation(line: 979, column: 18, scope: !2251)
!2269 = !DILocation(line: 979, column: 28, scope: !2251)
!2270 = !DILocation(line: 980, column: 5, scope: !2251)
!2271 = !DILocation(line: 982, column: 13, scope: !2104)
!2272 = !DILocation(line: 982, column: 6, scope: !2104)
!2273 = !DILocation(line: 982, column: 10, scope: !2104)
!2274 = !DILocation(line: 983, column: 5, scope: !2104)
!2275 = !DILocation(line: 984, column: 1, scope: !2104)
