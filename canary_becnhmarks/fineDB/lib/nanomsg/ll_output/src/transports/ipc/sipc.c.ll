; ModuleID = './src/transports/ipc/sipc.c'
source_filename = "./src/transports/ipc/sipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_pipebase_vfptr = type { ptr, ptr }
%struct.nn_iovec = type { ptr, i64 }
%struct.nn_sipc = type { %struct.nn_fsm, i32, ptr, %struct.nn_streamhdr, %struct.nn_fsm_owner, %struct.nn_pipebase, i32, [9 x i8], %struct.nn_msg, i32, [9 x i8], %struct.nn_msg, %struct.nn_fsm_event }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_streamhdr = type { %struct.nn_fsm, i32, %struct.nn_timer, ptr, %struct.nn_fsm_owner, ptr, [8 x i8], %struct.nn_fsm_event }
%struct.nn_timer = type { %struct.nn_fsm, i32, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_timer, %struct.nn_fsm_event, ptr, i32 }
%struct.nn_worker_task = type { ptr, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_worker_timer = type { ptr, %struct.nn_timerset_hndl }
%struct.nn_timerset_hndl = type { %struct.nn_list_item, i64 }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_fsm_owner = type { i32, ptr }
%struct.nn_pipebase = type { %struct.nn_fsm, ptr, i8, i8, i8, ptr, ptr, %struct.nn_fsm_event, %struct.nn_fsm_event }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }

@nn_sipc_pipebase_vfptr = dso_local constant %struct.nn_pipebase_vfptr { ptr @nn_sipc_send, ptr @nn_sipc_recv }, align 8, !dbg !0
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !321
@.str.1 = private unnamed_addr constant [34 x i8] c"self->state == NN_SIPC_STATE_IDLE\00", align 1, !dbg !327
@.str.2 = private unnamed_addr constant [28 x i8] c"./src/transports/ipc/sipc.c\00", align 1, !dbg !332
@.str.3 = private unnamed_addr constant [53 x i8] c"self->usock == NULL && self->usock_owner.fsm == NULL\00", align 1, !dbg !337
@.str.4 = private unnamed_addr constant [36 x i8] c"sipc->state == NN_SIPC_STATE_ACTIVE\00", align 1, !dbg !342
@.str.5 = private unnamed_addr constant [40 x i8] c"sipc->outstate == NN_SIPC_OUTSTATE_IDLE\00", align 1, !dbg !347
@.str.6 = private unnamed_addr constant [40 x i8] c"sipc->instate == NN_SIPC_INSTATE_HASMSG\00", align 1, !dbg !349
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !351
@.str.8 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !356
@.str.9 = private unnamed_addr constant [43 x i8] c"sipc->outstate == NN_SIPC_OUTSTATE_SENDING\00", align 1, !dbg !361
@.str.10 = private unnamed_addr constant [38 x i8] c"sipc->inhdr [0] == NN_SIPC_MSG_NORMAL\00", align 1, !dbg !366

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_sipc_send(ptr noundef %0, ptr noundef %1) #0 !dbg !379 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [3 x %struct.nn_iovec], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !381, metadata !DIExpression()), !dbg !382
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !383, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.declare(metadata ptr %5, metadata !385, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata ptr %6, metadata !387, metadata !DIExpression()), !dbg !394
  %7 = load ptr, ptr %3, align 8, !dbg !395
  %8 = icmp ne ptr %7, null, !dbg !395
  br i1 %8, label %9, label %12, !dbg !395

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !395
  %11 = getelementptr inbounds i8, ptr %10, i64 -488, !dbg !395
  br label %13, !dbg !395

12:                                               ; preds = %2
  br label %13, !dbg !395

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !395
  store ptr %14, ptr %5, align 8, !dbg !396
  br label %15, !dbg !397

15:                                               ; preds = %13
  %16 = load ptr, ptr %5, align 8, !dbg !398
  %17 = getelementptr inbounds %struct.nn_sipc, ptr %16, i32 0, i32 1, !dbg !398
  %18 = load i32, ptr %17, align 8, !dbg !398
  %19 = icmp eq i32 %18, 4, !dbg !398
  %20 = xor i1 %19, true, !dbg !398
  %21 = zext i1 %20 to i32, !dbg !398
  %22 = sext i32 %21 to i64, !dbg !398
  %23 = icmp ne i64 %22, 0, !dbg !398
  br i1 %23, label %24, label %27, !dbg !401

24:                                               ; preds = %15
  %25 = load ptr, ptr @stderr, align 8, !dbg !402
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 130), !dbg !402
  call void @nn_err_abort() #4, !dbg !402
  unreachable, !dbg !402

27:                                               ; preds = %15
  br label %28, !dbg !401

28:                                               ; preds = %27
  br label %29, !dbg !404

29:                                               ; preds = %28
  %30 = load ptr, ptr %5, align 8, !dbg !405
  %31 = getelementptr inbounds %struct.nn_sipc, ptr %30, i32 0, i32 9, !dbg !405
  %32 = load i32, ptr %31, align 8, !dbg !405
  %33 = icmp eq i32 %32, 1, !dbg !405
  %34 = xor i1 %33, true, !dbg !405
  %35 = zext i1 %34 to i32, !dbg !405
  %36 = sext i32 %35 to i64, !dbg !405
  %37 = icmp ne i64 %36, 0, !dbg !405
  br i1 %37, label %38, label %41, !dbg !408

38:                                               ; preds = %29
  %39 = load ptr, ptr @stderr, align 8, !dbg !409
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 131), !dbg !409
  call void @nn_err_abort() #4, !dbg !409
  unreachable, !dbg !409

41:                                               ; preds = %29
  br label %42, !dbg !408

42:                                               ; preds = %41
  %43 = load ptr, ptr %5, align 8, !dbg !411
  %44 = getelementptr inbounds %struct.nn_sipc, ptr %43, i32 0, i32 11, !dbg !412
  call void @nn_msg_term(ptr noundef %44), !dbg !413
  %45 = load ptr, ptr %5, align 8, !dbg !414
  %46 = getelementptr inbounds %struct.nn_sipc, ptr %45, i32 0, i32 11, !dbg !415
  %47 = load ptr, ptr %4, align 8, !dbg !416
  call void @nn_msg_mv(ptr noundef %46, ptr noundef %47), !dbg !417
  %48 = load ptr, ptr %5, align 8, !dbg !418
  %49 = getelementptr inbounds %struct.nn_sipc, ptr %48, i32 0, i32 10, !dbg !419
  %50 = getelementptr inbounds [9 x i8], ptr %49, i64 0, i64 0, !dbg !418
  store i8 1, ptr %50, align 4, !dbg !420
  %51 = load ptr, ptr %5, align 8, !dbg !421
  %52 = getelementptr inbounds %struct.nn_sipc, ptr %51, i32 0, i32 10, !dbg !422
  %53 = getelementptr inbounds [9 x i8], ptr %52, i64 0, i64 0, !dbg !421
  %54 = getelementptr inbounds i8, ptr %53, i64 1, !dbg !423
  %55 = load ptr, ptr %5, align 8, !dbg !424
  %56 = getelementptr inbounds %struct.nn_sipc, ptr %55, i32 0, i32 11, !dbg !425
  %57 = getelementptr inbounds %struct.nn_msg, ptr %56, i32 0, i32 0, !dbg !426
  %58 = call i64 @nn_chunkref_size(ptr noundef %57), !dbg !427
  %59 = load ptr, ptr %5, align 8, !dbg !428
  %60 = getelementptr inbounds %struct.nn_sipc, ptr %59, i32 0, i32 11, !dbg !429
  %61 = getelementptr inbounds %struct.nn_msg, ptr %60, i32 0, i32 1, !dbg !430
  %62 = call i64 @nn_chunkref_size(ptr noundef %61), !dbg !431
  %63 = add i64 %58, %62, !dbg !432
  call void @nn_putll(ptr noundef %54, i64 noundef %63), !dbg !433
  %64 = load ptr, ptr %5, align 8, !dbg !434
  %65 = getelementptr inbounds %struct.nn_sipc, ptr %64, i32 0, i32 10, !dbg !435
  %66 = getelementptr inbounds [9 x i8], ptr %65, i64 0, i64 0, !dbg !434
  %67 = getelementptr inbounds [3 x %struct.nn_iovec], ptr %6, i64 0, i64 0, !dbg !436
  %68 = getelementptr inbounds %struct.nn_iovec, ptr %67, i32 0, i32 0, !dbg !437
  store ptr %66, ptr %68, align 16, !dbg !438
  %69 = getelementptr inbounds [3 x %struct.nn_iovec], ptr %6, i64 0, i64 0, !dbg !439
  %70 = getelementptr inbounds %struct.nn_iovec, ptr %69, i32 0, i32 1, !dbg !440
  store i64 9, ptr %70, align 8, !dbg !441
  %71 = load ptr, ptr %5, align 8, !dbg !442
  %72 = getelementptr inbounds %struct.nn_sipc, ptr %71, i32 0, i32 11, !dbg !443
  %73 = getelementptr inbounds %struct.nn_msg, ptr %72, i32 0, i32 0, !dbg !444
  %74 = call ptr @nn_chunkref_data(ptr noundef %73), !dbg !445
  %75 = getelementptr inbounds [3 x %struct.nn_iovec], ptr %6, i64 0, i64 1, !dbg !446
  %76 = getelementptr inbounds %struct.nn_iovec, ptr %75, i32 0, i32 0, !dbg !447
  store ptr %74, ptr %76, align 16, !dbg !448
  %77 = load ptr, ptr %5, align 8, !dbg !449
  %78 = getelementptr inbounds %struct.nn_sipc, ptr %77, i32 0, i32 11, !dbg !450
  %79 = getelementptr inbounds %struct.nn_msg, ptr %78, i32 0, i32 0, !dbg !451
  %80 = call i64 @nn_chunkref_size(ptr noundef %79), !dbg !452
  %81 = getelementptr inbounds [3 x %struct.nn_iovec], ptr %6, i64 0, i64 1, !dbg !453
  %82 = getelementptr inbounds %struct.nn_iovec, ptr %81, i32 0, i32 1, !dbg !454
  store i64 %80, ptr %82, align 8, !dbg !455
  %83 = load ptr, ptr %5, align 8, !dbg !456
  %84 = getelementptr inbounds %struct.nn_sipc, ptr %83, i32 0, i32 11, !dbg !457
  %85 = getelementptr inbounds %struct.nn_msg, ptr %84, i32 0, i32 1, !dbg !458
  %86 = call ptr @nn_chunkref_data(ptr noundef %85), !dbg !459
  %87 = getelementptr inbounds [3 x %struct.nn_iovec], ptr %6, i64 0, i64 2, !dbg !460
  %88 = getelementptr inbounds %struct.nn_iovec, ptr %87, i32 0, i32 0, !dbg !461
  store ptr %86, ptr %88, align 16, !dbg !462
  %89 = load ptr, ptr %5, align 8, !dbg !463
  %90 = getelementptr inbounds %struct.nn_sipc, ptr %89, i32 0, i32 11, !dbg !464
  %91 = getelementptr inbounds %struct.nn_msg, ptr %90, i32 0, i32 1, !dbg !465
  %92 = call i64 @nn_chunkref_size(ptr noundef %91), !dbg !466
  %93 = getelementptr inbounds [3 x %struct.nn_iovec], ptr %6, i64 0, i64 2, !dbg !467
  %94 = getelementptr inbounds %struct.nn_iovec, ptr %93, i32 0, i32 1, !dbg !468
  store i64 %92, ptr %94, align 8, !dbg !469
  %95 = load ptr, ptr %5, align 8, !dbg !470
  %96 = getelementptr inbounds %struct.nn_sipc, ptr %95, i32 0, i32 2, !dbg !471
  %97 = load ptr, ptr %96, align 8, !dbg !471
  %98 = getelementptr inbounds [3 x %struct.nn_iovec], ptr %6, i64 0, i64 0, !dbg !472
  call void @nn_usock_send(ptr noundef %97, ptr noundef %98, i32 noundef 3), !dbg !473
  %99 = load ptr, ptr %5, align 8, !dbg !474
  %100 = getelementptr inbounds %struct.nn_sipc, ptr %99, i32 0, i32 9, !dbg !475
  store i32 2, ptr %100, align 8, !dbg !476
  ret i32 0, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_sipc_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !478 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !479, metadata !DIExpression()), !dbg !480
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !481, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.declare(metadata ptr %5, metadata !483, metadata !DIExpression()), !dbg !484
  %6 = load ptr, ptr %3, align 8, !dbg !485
  %7 = icmp ne ptr %6, null, !dbg !485
  br i1 %7, label %8, label %11, !dbg !485

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !dbg !485
  %10 = getelementptr inbounds i8, ptr %9, i64 -488, !dbg !485
  br label %12, !dbg !485

11:                                               ; preds = %2
  br label %12, !dbg !485

12:                                               ; preds = %11, %8
  %13 = phi ptr [ %10, %8 ], [ null, %11 ], !dbg !485
  store ptr %13, ptr %5, align 8, !dbg !486
  br label %14, !dbg !487

14:                                               ; preds = %12
  %15 = load ptr, ptr %5, align 8, !dbg !488
  %16 = getelementptr inbounds %struct.nn_sipc, ptr %15, i32 0, i32 1, !dbg !488
  %17 = load i32, ptr %16, align 8, !dbg !488
  %18 = icmp eq i32 %17, 4, !dbg !488
  %19 = xor i1 %18, true, !dbg !488
  %20 = zext i1 %19 to i32, !dbg !488
  %21 = sext i32 %20 to i64, !dbg !488
  %22 = icmp ne i64 %21, 0, !dbg !488
  br i1 %22, label %23, label %26, !dbg !491

23:                                               ; preds = %14
  %24 = load ptr, ptr @stderr, align 8, !dbg !492
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 162), !dbg !492
  call void @nn_err_abort() #4, !dbg !492
  unreachable, !dbg !492

26:                                               ; preds = %14
  br label %27, !dbg !491

27:                                               ; preds = %26
  br label %28, !dbg !494

28:                                               ; preds = %27
  %29 = load ptr, ptr %5, align 8, !dbg !495
  %30 = getelementptr inbounds %struct.nn_sipc, ptr %29, i32 0, i32 6, !dbg !495
  %31 = load i32, ptr %30, align 8, !dbg !495
  %32 = icmp eq i32 %31, 3, !dbg !495
  %33 = xor i1 %32, true, !dbg !495
  %34 = zext i1 %33 to i32, !dbg !495
  %35 = sext i32 %34 to i64, !dbg !495
  %36 = icmp ne i64 %35, 0, !dbg !495
  br i1 %36, label %37, label %40, !dbg !498

37:                                               ; preds = %28
  %38 = load ptr, ptr @stderr, align 8, !dbg !499
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 163), !dbg !499
  call void @nn_err_abort() #4, !dbg !499
  unreachable, !dbg !499

40:                                               ; preds = %28
  br label %41, !dbg !498

41:                                               ; preds = %40
  %42 = load ptr, ptr %4, align 8, !dbg !501
  %43 = load ptr, ptr %5, align 8, !dbg !502
  %44 = getelementptr inbounds %struct.nn_sipc, ptr %43, i32 0, i32 8, !dbg !503
  call void @nn_msg_mv(ptr noundef %42, ptr noundef %44), !dbg !504
  %45 = load ptr, ptr %5, align 8, !dbg !505
  %46 = getelementptr inbounds %struct.nn_sipc, ptr %45, i32 0, i32 8, !dbg !506
  call void @nn_msg_init(ptr noundef %46, i64 noundef 0), !dbg !507
  %47 = load ptr, ptr %5, align 8, !dbg !508
  %48 = getelementptr inbounds %struct.nn_sipc, ptr %47, i32 0, i32 6, !dbg !509
  store i32 1, ptr %48, align 8, !dbg !510
  %49 = load ptr, ptr %5, align 8, !dbg !511
  %50 = getelementptr inbounds %struct.nn_sipc, ptr %49, i32 0, i32 2, !dbg !512
  %51 = load ptr, ptr %50, align 8, !dbg !512
  %52 = load ptr, ptr %5, align 8, !dbg !513
  %53 = getelementptr inbounds %struct.nn_sipc, ptr %52, i32 0, i32 7, !dbg !514
  %54 = getelementptr inbounds [9 x i8], ptr %53, i64 0, i64 0, !dbg !513
  call void @nn_usock_recv(ptr noundef %51, ptr noundef %54, i64 noundef 9), !dbg !515
  ret i32 0, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sipc_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !517 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !536, metadata !DIExpression()), !dbg !537
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !538, metadata !DIExpression()), !dbg !539
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !540, metadata !DIExpression()), !dbg !541
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !542, metadata !DIExpression()), !dbg !543
  %9 = load ptr, ptr %5, align 8, !dbg !544
  %10 = getelementptr inbounds %struct.nn_sipc, ptr %9, i32 0, i32 0, !dbg !545
  %11 = load i32, ptr %6, align 4, !dbg !546
  %12 = load ptr, ptr %5, align 8, !dbg !547
  %13 = load ptr, ptr %8, align 8, !dbg !548
  call void @nn_fsm_init(ptr noundef %10, ptr noundef @nn_sipc_handler, i32 noundef %11, ptr noundef %12, ptr noundef %13), !dbg !549
  %14 = load ptr, ptr %5, align 8, !dbg !550
  %15 = getelementptr inbounds %struct.nn_sipc, ptr %14, i32 0, i32 1, !dbg !551
  store i32 1, ptr %15, align 8, !dbg !552
  %16 = load ptr, ptr %5, align 8, !dbg !553
  %17 = getelementptr inbounds %struct.nn_sipc, ptr %16, i32 0, i32 3, !dbg !554
  %18 = load ptr, ptr %5, align 8, !dbg !555
  %19 = getelementptr inbounds %struct.nn_sipc, ptr %18, i32 0, i32 0, !dbg !556
  call void @nn_streamhdr_init(ptr noundef %17, i32 noundef 2, ptr noundef %19), !dbg !557
  %20 = load ptr, ptr %5, align 8, !dbg !558
  %21 = getelementptr inbounds %struct.nn_sipc, ptr %20, i32 0, i32 2, !dbg !559
  store ptr null, ptr %21, align 8, !dbg !560
  %22 = load ptr, ptr %5, align 8, !dbg !561
  %23 = getelementptr inbounds %struct.nn_sipc, ptr %22, i32 0, i32 4, !dbg !562
  %24 = getelementptr inbounds %struct.nn_fsm_owner, ptr %23, i32 0, i32 0, !dbg !563
  store i32 -1, ptr %24, align 8, !dbg !564
  %25 = load ptr, ptr %5, align 8, !dbg !565
  %26 = getelementptr inbounds %struct.nn_sipc, ptr %25, i32 0, i32 4, !dbg !566
  %27 = getelementptr inbounds %struct.nn_fsm_owner, ptr %26, i32 0, i32 1, !dbg !567
  store ptr null, ptr %27, align 8, !dbg !568
  %28 = load ptr, ptr %5, align 8, !dbg !569
  %29 = getelementptr inbounds %struct.nn_sipc, ptr %28, i32 0, i32 5, !dbg !570
  %30 = load ptr, ptr %7, align 8, !dbg !571
  call void @nn_pipebase_init(ptr noundef %29, ptr noundef @nn_sipc_pipebase_vfptr, ptr noundef %30), !dbg !572
  %31 = load ptr, ptr %5, align 8, !dbg !573
  %32 = getelementptr inbounds %struct.nn_sipc, ptr %31, i32 0, i32 6, !dbg !574
  store i32 -1, ptr %32, align 8, !dbg !575
  %33 = load ptr, ptr %5, align 8, !dbg !576
  %34 = getelementptr inbounds %struct.nn_sipc, ptr %33, i32 0, i32 8, !dbg !577
  call void @nn_msg_init(ptr noundef %34, i64 noundef 0), !dbg !578
  %35 = load ptr, ptr %5, align 8, !dbg !579
  %36 = getelementptr inbounds %struct.nn_sipc, ptr %35, i32 0, i32 9, !dbg !580
  store i32 -1, ptr %36, align 8, !dbg !581
  %37 = load ptr, ptr %5, align 8, !dbg !582
  %38 = getelementptr inbounds %struct.nn_sipc, ptr %37, i32 0, i32 11, !dbg !583
  call void @nn_msg_init(ptr noundef %38, i64 noundef 0), !dbg !584
  %39 = load ptr, ptr %5, align 8, !dbg !585
  %40 = getelementptr inbounds %struct.nn_sipc, ptr %39, i32 0, i32 12, !dbg !586
  call void @nn_fsm_event_init(ptr noundef %40), !dbg !587
  ret void, !dbg !588
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_fsm_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_sipc_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !589 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !590, metadata !DIExpression()), !dbg !591
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !592, metadata !DIExpression()), !dbg !593
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !594, metadata !DIExpression()), !dbg !595
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !596, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.declare(metadata ptr %9, metadata !598, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.declare(metadata ptr %10, metadata !600, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.declare(metadata ptr %11, metadata !602, metadata !DIExpression()), !dbg !603
  %12 = load ptr, ptr %5, align 8, !dbg !604
  %13 = icmp ne ptr %12, null, !dbg !604
  br i1 %13, label %14, label %17, !dbg !604

14:                                               ; preds = %4
  %15 = load ptr, ptr %5, align 8, !dbg !604
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !604
  br label %18, !dbg !604

17:                                               ; preds = %4
  br label %18, !dbg !604

18:                                               ; preds = %17, %14
  %19 = phi ptr [ %16, %14 ], [ null, %17 ], !dbg !604
  store ptr %19, ptr %10, align 8, !dbg !605
  %20 = load i32, ptr %6, align 4, !dbg !606
  %21 = icmp eq i32 %20, -2, !dbg !606
  br i1 %21, label %22, label %25, !dbg !606

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4, !dbg !606
  %24 = icmp eq i32 %23, -3, !dbg !606
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ], !dbg !608
  %27 = zext i1 %26 to i32, !dbg !606
  %28 = sext i32 %27 to i64, !dbg !606
  %29 = icmp ne i64 %28, 0, !dbg !606
  br i1 %29, label %30, label %37, !dbg !609

30:                                               ; preds = %25
  %31 = load ptr, ptr %10, align 8, !dbg !610
  %32 = getelementptr inbounds %struct.nn_sipc, ptr %31, i32 0, i32 5, !dbg !612
  call void @nn_pipebase_stop(ptr noundef %32), !dbg !613
  %33 = load ptr, ptr %10, align 8, !dbg !614
  %34 = getelementptr inbounds %struct.nn_sipc, ptr %33, i32 0, i32 3, !dbg !615
  call void @nn_streamhdr_stop(ptr noundef %34), !dbg !616
  %35 = load ptr, ptr %10, align 8, !dbg !617
  %36 = getelementptr inbounds %struct.nn_sipc, ptr %35, i32 0, i32 1, !dbg !618
  store i32 6, ptr %36, align 8, !dbg !619
  br label %37, !dbg !620

37:                                               ; preds = %30, %25
  %38 = load ptr, ptr %10, align 8, !dbg !621
  %39 = getelementptr inbounds %struct.nn_sipc, ptr %38, i32 0, i32 1, !dbg !621
  %40 = load i32, ptr %39, align 8, !dbg !621
  %41 = icmp eq i32 %40, 6, !dbg !621
  %42 = zext i1 %41 to i32, !dbg !621
  %43 = sext i32 %42 to i64, !dbg !621
  %44 = icmp ne i64 %43, 0, !dbg !621
  br i1 %44, label %45, label %69, !dbg !623

45:                                               ; preds = %37
  %46 = load ptr, ptr %10, align 8, !dbg !624
  %47 = getelementptr inbounds %struct.nn_sipc, ptr %46, i32 0, i32 3, !dbg !627
  %48 = call i32 @nn_streamhdr_isidle(ptr noundef %47), !dbg !628
  %49 = icmp ne i32 %48, 0, !dbg !628
  br i1 %49, label %50, label %68, !dbg !629

50:                                               ; preds = %45
  %51 = load ptr, ptr %10, align 8, !dbg !630
  %52 = getelementptr inbounds %struct.nn_sipc, ptr %51, i32 0, i32 2, !dbg !632
  %53 = load ptr, ptr %52, align 8, !dbg !632
  %54 = load ptr, ptr %10, align 8, !dbg !633
  %55 = getelementptr inbounds %struct.nn_sipc, ptr %54, i32 0, i32 4, !dbg !634
  call void @nn_usock_swap_owner(ptr noundef %53, ptr noundef %55), !dbg !635
  %56 = load ptr, ptr %10, align 8, !dbg !636
  %57 = getelementptr inbounds %struct.nn_sipc, ptr %56, i32 0, i32 2, !dbg !637
  store ptr null, ptr %57, align 8, !dbg !638
  %58 = load ptr, ptr %10, align 8, !dbg !639
  %59 = getelementptr inbounds %struct.nn_sipc, ptr %58, i32 0, i32 4, !dbg !640
  %60 = getelementptr inbounds %struct.nn_fsm_owner, ptr %59, i32 0, i32 0, !dbg !641
  store i32 -1, ptr %60, align 8, !dbg !642
  %61 = load ptr, ptr %10, align 8, !dbg !643
  %62 = getelementptr inbounds %struct.nn_sipc, ptr %61, i32 0, i32 4, !dbg !644
  %63 = getelementptr inbounds %struct.nn_fsm_owner, ptr %62, i32 0, i32 1, !dbg !645
  store ptr null, ptr %63, align 8, !dbg !646
  %64 = load ptr, ptr %10, align 8, !dbg !647
  %65 = getelementptr inbounds %struct.nn_sipc, ptr %64, i32 0, i32 1, !dbg !648
  store i32 1, ptr %65, align 8, !dbg !649
  %66 = load ptr, ptr %10, align 8, !dbg !650
  %67 = getelementptr inbounds %struct.nn_sipc, ptr %66, i32 0, i32 0, !dbg !651
  call void @nn_fsm_stopped(ptr noundef %67, i32 noundef 2), !dbg !652
  br label %293, !dbg !653

68:                                               ; preds = %45
  br label %293, !dbg !654

69:                                               ; preds = %37
  %70 = load ptr, ptr %10, align 8, !dbg !655
  %71 = getelementptr inbounds %struct.nn_sipc, ptr %70, i32 0, i32 1, !dbg !656
  %72 = load i32, ptr %71, align 8, !dbg !656
  switch i32 %72, label %288 [
    i32 1, label %73
    i32 2, label %99
    i32 3, label %127
    i32 4, label %175
    i32 5, label %283
  ], !dbg !657

73:                                               ; preds = %69
  %74 = load i32, ptr %6, align 4, !dbg !658
  %75 = icmp eq i32 %74, -2, !dbg !661
  br i1 %75, label %76, label %94, !dbg !662

76:                                               ; preds = %73
  %77 = load i32, ptr %7, align 4, !dbg !663
  switch i32 %77, label %88 [
    i32 -2, label %78
  ], !dbg !665

78:                                               ; preds = %76
  %79 = load ptr, ptr %10, align 8, !dbg !666
  %80 = getelementptr inbounds %struct.nn_sipc, ptr %79, i32 0, i32 3, !dbg !668
  %81 = load ptr, ptr %10, align 8, !dbg !669
  %82 = getelementptr inbounds %struct.nn_sipc, ptr %81, i32 0, i32 2, !dbg !670
  %83 = load ptr, ptr %82, align 8, !dbg !670
  %84 = load ptr, ptr %10, align 8, !dbg !671
  %85 = getelementptr inbounds %struct.nn_sipc, ptr %84, i32 0, i32 5, !dbg !672
  call void @nn_streamhdr_start(ptr noundef %80, ptr noundef %83, ptr noundef %85), !dbg !673
  %86 = load ptr, ptr %10, align 8, !dbg !674
  %87 = getelementptr inbounds %struct.nn_sipc, ptr %86, i32 0, i32 1, !dbg !675
  store i32 2, ptr %87, align 8, !dbg !676
  br label %293, !dbg !677

88:                                               ; preds = %76
  br label %89, !dbg !678

89:                                               ; preds = %88
  %90 = load ptr, ptr @stderr, align 8, !dbg !679
  %91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 220), !dbg !679
  call void @nn_err_abort() #4, !dbg !679
  unreachable, !dbg !679

92:                                               ; No predecessors!
  br label %93, !dbg !683

93:                                               ; preds = %92
  br label %94, !dbg !684

94:                                               ; preds = %93, %73
  br label %95, !dbg !685

95:                                               ; preds = %94
  %96 = load ptr, ptr @stderr, align 8, !dbg !686
  %97 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 223), !dbg !686
  call void @nn_err_abort() #4, !dbg !686
  unreachable, !dbg !686

98:                                               ; No predecessors!
  br label %99, !dbg !690

99:                                               ; preds = %69, %98
  %100 = load i32, ptr %6, align 4, !dbg !691
  switch i32 %100, label %121 [
    i32 2, label %101
  ], !dbg !692

101:                                              ; preds = %99
  %102 = load i32, ptr %7, align 4, !dbg !693
  switch i32 %102, label %115 [
    i32 1, label %103
    i32 2, label %108
  ], !dbg !695

103:                                              ; preds = %101
  %104 = load ptr, ptr %10, align 8, !dbg !696
  %105 = getelementptr inbounds %struct.nn_sipc, ptr %104, i32 0, i32 3, !dbg !698
  call void @nn_streamhdr_stop(ptr noundef %105), !dbg !699
  %106 = load ptr, ptr %10, align 8, !dbg !700
  %107 = getelementptr inbounds %struct.nn_sipc, ptr %106, i32 0, i32 1, !dbg !701
  store i32 3, ptr %107, align 8, !dbg !702
  br label %293, !dbg !703

108:                                              ; preds = %101
  %109 = load ptr, ptr %10, align 8, !dbg !704
  %110 = getelementptr inbounds %struct.nn_sipc, ptr %109, i32 0, i32 1, !dbg !705
  store i32 5, ptr %110, align 8, !dbg !706
  %111 = load ptr, ptr %10, align 8, !dbg !707
  %112 = getelementptr inbounds %struct.nn_sipc, ptr %111, i32 0, i32 0, !dbg !708
  %113 = load ptr, ptr %10, align 8, !dbg !709
  %114 = getelementptr inbounds %struct.nn_sipc, ptr %113, i32 0, i32 12, !dbg !710
  call void @nn_fsm_raise(ptr noundef %112, ptr noundef %114, i32 noundef 1), !dbg !711
  br label %293, !dbg !712

115:                                              ; preds = %101
  br label %116, !dbg !713

116:                                              ; preds = %115
  %117 = load ptr, ptr @stderr, align 8, !dbg !714
  %118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 250), !dbg !714
  call void @nn_err_abort() #4, !dbg !714
  unreachable, !dbg !714

119:                                              ; No predecessors!
  br label %120, !dbg !718

120:                                              ; preds = %119
  br label %121, !dbg !718

121:                                              ; preds = %99, %120
  br label %122, !dbg !719

122:                                              ; preds = %121
  %123 = load ptr, ptr @stderr, align 8, !dbg !720
  %124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 254), !dbg !720
  call void @nn_err_abort() #4, !dbg !720
  unreachable, !dbg !720

125:                                              ; No predecessors!
  br label %126, !dbg !724

126:                                              ; preds = %125
  br label %127, !dbg !724

127:                                              ; preds = %69, %126
  %128 = load i32, ptr %6, align 4, !dbg !725
  switch i32 %128, label %169 [
    i32 2, label %129
  ], !dbg !726

129:                                              ; preds = %127
  %130 = load i32, ptr %7, align 4, !dbg !727
  switch i32 %130, label %163 [
    i32 3, label %131
  ], !dbg !729

131:                                              ; preds = %129
  %132 = load ptr, ptr %10, align 8, !dbg !730
  %133 = getelementptr inbounds %struct.nn_sipc, ptr %132, i32 0, i32 5, !dbg !732
  %134 = call i32 @nn_pipebase_start(ptr noundef %133), !dbg !733
  store i32 %134, ptr %9, align 4, !dbg !734
  br label %135, !dbg !735

135:                                              ; preds = %131
  %136 = load i32, ptr %9, align 4, !dbg !736
  %137 = icmp eq i32 %136, 0, !dbg !736
  %138 = xor i1 %137, true, !dbg !736
  %139 = zext i1 %138 to i32, !dbg !736
  %140 = sext i32 %139 to i64, !dbg !736
  %141 = icmp ne i64 %140, 0, !dbg !736
  br i1 %141, label %142, label %150, !dbg !739

142:                                              ; preds = %135
  %143 = load ptr, ptr @stderr, align 8, !dbg !740
  %144 = load i32, ptr %9, align 4, !dbg !740
  %145 = sub nsw i32 0, %144, !dbg !740
  %146 = call ptr @nn_err_strerror(i32 noundef %145), !dbg !740
  %147 = load i32, ptr %9, align 4, !dbg !740
  %148 = sub nsw i32 0, %147, !dbg !740
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef @.str.8, ptr noundef %146, i32 noundef %148, ptr noundef @.str.2, i32 noundef 269), !dbg !740
  call void @nn_err_abort() #4, !dbg !740
  unreachable, !dbg !740

150:                                              ; preds = %135
  br label %151, !dbg !739

151:                                              ; preds = %150
  %152 = load ptr, ptr %10, align 8, !dbg !742
  %153 = getelementptr inbounds %struct.nn_sipc, ptr %152, i32 0, i32 6, !dbg !743
  store i32 1, ptr %153, align 8, !dbg !744
  %154 = load ptr, ptr %10, align 8, !dbg !745
  %155 = getelementptr inbounds %struct.nn_sipc, ptr %154, i32 0, i32 2, !dbg !746
  %156 = load ptr, ptr %155, align 8, !dbg !746
  %157 = load ptr, ptr %10, align 8, !dbg !747
  %158 = getelementptr inbounds %struct.nn_sipc, ptr %157, i32 0, i32 7, !dbg !748
  call void @nn_usock_recv(ptr noundef %156, ptr noundef %158, i64 noundef 9), !dbg !749
  %159 = load ptr, ptr %10, align 8, !dbg !750
  %160 = getelementptr inbounds %struct.nn_sipc, ptr %159, i32 0, i32 9, !dbg !751
  store i32 1, ptr %160, align 8, !dbg !752
  %161 = load ptr, ptr %10, align 8, !dbg !753
  %162 = getelementptr inbounds %struct.nn_sipc, ptr %161, i32 0, i32 1, !dbg !754
  store i32 4, ptr %162, align 8, !dbg !755
  br label %293, !dbg !756

163:                                              ; preds = %129
  br label %164, !dbg !757

164:                                              ; preds = %163
  %165 = load ptr, ptr @stderr, align 8, !dbg !758
  %166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 283), !dbg !758
  call void @nn_err_abort() #4, !dbg !758
  unreachable, !dbg !758

167:                                              ; No predecessors!
  br label %168, !dbg !762

168:                                              ; preds = %167
  br label %169, !dbg !762

169:                                              ; preds = %127, %168
  br label %170, !dbg !763

170:                                              ; preds = %169
  %171 = load ptr, ptr @stderr, align 8, !dbg !764
  %172 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 287), !dbg !764
  call void @nn_err_abort() #4, !dbg !764
  unreachable, !dbg !764

173:                                              ; No predecessors!
  br label %174, !dbg !768

174:                                              ; preds = %173
  br label %175, !dbg !768

175:                                              ; preds = %69, %174
  %176 = load i32, ptr %6, align 4, !dbg !769
  switch i32 %176, label %277 [
    i32 1, label %177
  ], !dbg !770

177:                                              ; preds = %175
  %178 = load i32, ptr %7, align 4, !dbg !771
  switch i32 %178, label %271 [
    i32 3, label %179
    i32 4, label %202
    i32 5, label %262
  ], !dbg !773

179:                                              ; preds = %177
  br label %180, !dbg !774

180:                                              ; preds = %179
  %181 = load ptr, ptr %10, align 8, !dbg !776
  %182 = getelementptr inbounds %struct.nn_sipc, ptr %181, i32 0, i32 9, !dbg !776
  %183 = load i32, ptr %182, align 8, !dbg !776
  %184 = icmp eq i32 %183, 2, !dbg !776
  %185 = xor i1 %184, true, !dbg !776
  %186 = zext i1 %185 to i32, !dbg !776
  %187 = sext i32 %186 to i64, !dbg !776
  %188 = icmp ne i64 %187, 0, !dbg !776
  br i1 %188, label %189, label %192, !dbg !779

189:                                              ; preds = %180
  %190 = load ptr, ptr @stderr, align 8, !dbg !780
  %191 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %190, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @.str.2, i32 noundef 301), !dbg !780
  call void @nn_err_abort() #4, !dbg !780
  unreachable, !dbg !780

192:                                              ; preds = %180
  br label %193, !dbg !779

193:                                              ; preds = %192
  %194 = load ptr, ptr %10, align 8, !dbg !782
  %195 = getelementptr inbounds %struct.nn_sipc, ptr %194, i32 0, i32 9, !dbg !783
  store i32 1, ptr %195, align 8, !dbg !784
  %196 = load ptr, ptr %10, align 8, !dbg !785
  %197 = getelementptr inbounds %struct.nn_sipc, ptr %196, i32 0, i32 11, !dbg !786
  call void @nn_msg_term(ptr noundef %197), !dbg !787
  %198 = load ptr, ptr %10, align 8, !dbg !788
  %199 = getelementptr inbounds %struct.nn_sipc, ptr %198, i32 0, i32 11, !dbg !789
  call void @nn_msg_init(ptr noundef %199, i64 noundef 0), !dbg !790
  %200 = load ptr, ptr %10, align 8, !dbg !791
  %201 = getelementptr inbounds %struct.nn_sipc, ptr %200, i32 0, i32 5, !dbg !792
  call void @nn_pipebase_sent(ptr noundef %201), !dbg !793
  br label %293, !dbg !794

202:                                              ; preds = %177
  %203 = load ptr, ptr %10, align 8, !dbg !795
  %204 = getelementptr inbounds %struct.nn_sipc, ptr %203, i32 0, i32 6, !dbg !796
  %205 = load i32, ptr %204, align 8, !dbg !796
  switch i32 %205, label %256 [
    i32 1, label %206
    i32 2, label %251
  ], !dbg !797

206:                                              ; preds = %202
  br label %207, !dbg !798

207:                                              ; preds = %206
  %208 = load ptr, ptr %10, align 8, !dbg !800
  %209 = getelementptr inbounds %struct.nn_sipc, ptr %208, i32 0, i32 7, !dbg !800
  %210 = getelementptr inbounds [9 x i8], ptr %209, i64 0, i64 0, !dbg !800
  %211 = load i8, ptr %210, align 4, !dbg !800
  %212 = zext i8 %211 to i32, !dbg !800
  %213 = icmp eq i32 %212, 1, !dbg !800
  %214 = xor i1 %213, true, !dbg !800
  %215 = zext i1 %214 to i32, !dbg !800
  %216 = sext i32 %215 to i64, !dbg !800
  %217 = icmp ne i64 %216, 0, !dbg !800
  br i1 %217, label %218, label %221, !dbg !803

218:                                              ; preds = %207
  %219 = load ptr, ptr @stderr, align 8, !dbg !804
  %220 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef @.str, ptr noundef @.str.10, ptr noundef @.str.2, i32 noundef 315), !dbg !804
  call void @nn_err_abort() #4, !dbg !804
  unreachable, !dbg !804

221:                                              ; preds = %207
  br label %222, !dbg !803

222:                                              ; preds = %221
  %223 = load ptr, ptr %10, align 8, !dbg !806
  %224 = getelementptr inbounds %struct.nn_sipc, ptr %223, i32 0, i32 7, !dbg !807
  %225 = getelementptr inbounds [9 x i8], ptr %224, i64 0, i64 0, !dbg !806
  %226 = getelementptr inbounds i8, ptr %225, i64 1, !dbg !808
  %227 = call i64 @nn_getll(ptr noundef %226), !dbg !809
  store i64 %227, ptr %11, align 8, !dbg !810
  %228 = load ptr, ptr %10, align 8, !dbg !811
  %229 = getelementptr inbounds %struct.nn_sipc, ptr %228, i32 0, i32 8, !dbg !812
  call void @nn_msg_term(ptr noundef %229), !dbg !813
  %230 = load ptr, ptr %10, align 8, !dbg !814
  %231 = getelementptr inbounds %struct.nn_sipc, ptr %230, i32 0, i32 8, !dbg !815
  %232 = load i64, ptr %11, align 8, !dbg !816
  call void @nn_msg_init(ptr noundef %231, i64 noundef %232), !dbg !817
  %233 = load i64, ptr %11, align 8, !dbg !818
  %234 = icmp ne i64 %233, 0, !dbg !818
  br i1 %234, label %240, label %235, !dbg !820

235:                                              ; preds = %222
  %236 = load ptr, ptr %10, align 8, !dbg !821
  %237 = getelementptr inbounds %struct.nn_sipc, ptr %236, i32 0, i32 6, !dbg !823
  store i32 3, ptr %237, align 8, !dbg !824
  %238 = load ptr, ptr %10, align 8, !dbg !825
  %239 = getelementptr inbounds %struct.nn_sipc, ptr %238, i32 0, i32 5, !dbg !826
  call void @nn_pipebase_received(ptr noundef %239), !dbg !827
  br label %293, !dbg !828

240:                                              ; preds = %222
  %241 = load ptr, ptr %10, align 8, !dbg !829
  %242 = getelementptr inbounds %struct.nn_sipc, ptr %241, i32 0, i32 6, !dbg !830
  store i32 2, ptr %242, align 8, !dbg !831
  %243 = load ptr, ptr %10, align 8, !dbg !832
  %244 = getelementptr inbounds %struct.nn_sipc, ptr %243, i32 0, i32 2, !dbg !833
  %245 = load ptr, ptr %244, align 8, !dbg !833
  %246 = load ptr, ptr %10, align 8, !dbg !834
  %247 = getelementptr inbounds %struct.nn_sipc, ptr %246, i32 0, i32 8, !dbg !835
  %248 = getelementptr inbounds %struct.nn_msg, ptr %247, i32 0, i32 1, !dbg !836
  %249 = call ptr @nn_chunkref_data(ptr noundef %248), !dbg !837
  %250 = load i64, ptr %11, align 8, !dbg !838
  call void @nn_usock_recv(ptr noundef %245, ptr noundef %249, i64 noundef %250), !dbg !839
  br label %293, !dbg !840

251:                                              ; preds = %202
  %252 = load ptr, ptr %10, align 8, !dbg !841
  %253 = getelementptr inbounds %struct.nn_sipc, ptr %252, i32 0, i32 6, !dbg !842
  store i32 3, ptr %253, align 8, !dbg !843
  %254 = load ptr, ptr %10, align 8, !dbg !844
  %255 = getelementptr inbounds %struct.nn_sipc, ptr %254, i32 0, i32 5, !dbg !845
  call void @nn_pipebase_received(ptr noundef %255), !dbg !846
  br label %293, !dbg !847

256:                                              ; preds = %202
  br label %257, !dbg !848

257:                                              ; preds = %256
  %258 = load ptr, ptr @stderr, align 8, !dbg !849
  %259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %258, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 344), !dbg !849
  call void @nn_err_abort() #4, !dbg !849
  unreachable, !dbg !849

260:                                              ; No predecessors!
  br label %261, !dbg !853

261:                                              ; preds = %260
  br label %262, !dbg !853

262:                                              ; preds = %177, %261
  %263 = load ptr, ptr %10, align 8, !dbg !854
  %264 = getelementptr inbounds %struct.nn_sipc, ptr %263, i32 0, i32 5, !dbg !855
  call void @nn_pipebase_stop(ptr noundef %264), !dbg !856
  %265 = load ptr, ptr %10, align 8, !dbg !857
  %266 = getelementptr inbounds %struct.nn_sipc, ptr %265, i32 0, i32 1, !dbg !858
  store i32 5, ptr %266, align 8, !dbg !859
  %267 = load ptr, ptr %10, align 8, !dbg !860
  %268 = getelementptr inbounds %struct.nn_sipc, ptr %267, i32 0, i32 0, !dbg !861
  %269 = load ptr, ptr %10, align 8, !dbg !862
  %270 = getelementptr inbounds %struct.nn_sipc, ptr %269, i32 0, i32 12, !dbg !863
  call void @nn_fsm_raise(ptr noundef %268, ptr noundef %270, i32 noundef 1), !dbg !864
  br label %293, !dbg !865

271:                                              ; preds = %177
  br label %272, !dbg !866

272:                                              ; preds = %271
  %273 = load ptr, ptr @stderr, align 8, !dbg !867
  %274 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %273, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 354), !dbg !867
  call void @nn_err_abort() #4, !dbg !867
  unreachable, !dbg !867

275:                                              ; No predecessors!
  br label %276, !dbg !871

276:                                              ; preds = %275
  br label %277, !dbg !871

277:                                              ; preds = %175, %276
  br label %278, !dbg !872

278:                                              ; preds = %277
  %279 = load ptr, ptr @stderr, align 8, !dbg !873
  %280 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %279, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 358), !dbg !873
  call void @nn_err_abort() #4, !dbg !873
  unreachable, !dbg !873

281:                                              ; No predecessors!
  br label %282, !dbg !877

282:                                              ; preds = %281
  br label %283, !dbg !877

283:                                              ; preds = %69, %282
  br label %284, !dbg !878

284:                                              ; preds = %283
  %285 = load ptr, ptr @stderr, align 8, !dbg !879
  %286 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %285, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 367), !dbg !879
  call void @nn_err_abort() #4, !dbg !879
  unreachable, !dbg !879

287:                                              ; No predecessors!
  br label %288, !dbg !883

288:                                              ; preds = %69, %287
  br label %289, !dbg !884

289:                                              ; preds = %288
  %290 = load ptr, ptr @stderr, align 8, !dbg !885
  %291 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %290, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 373), !dbg !885
  call void @nn_err_abort() #4, !dbg !885
  unreachable, !dbg !885

292:                                              ; No predecessors!
  br label %293, !dbg !889

293:                                              ; preds = %50, %68, %78, %103, %108, %151, %193, %235, %240, %251, %262, %292
  ret void, !dbg !890
}

declare void @nn_streamhdr_init(ptr noundef, i32 noundef, ptr noundef) #2

declare void @nn_pipebase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_msg_init(ptr noundef, i64 noundef) #2

declare void @nn_fsm_event_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sipc_term(ptr noundef %0) #0 !dbg !891 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !894, metadata !DIExpression()), !dbg !895
  br label %3, !dbg !896

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !897
  %5 = getelementptr inbounds %struct.nn_sipc, ptr %4, i32 0, i32 1, !dbg !897
  %6 = load i32, ptr %5, align 8, !dbg !897
  %7 = icmp eq i32 %6, 1, !dbg !897
  %8 = xor i1 %7, true, !dbg !897
  %9 = zext i1 %8 to i32, !dbg !897
  %10 = sext i32 %9 to i64, !dbg !897
  %11 = icmp ne i64 %10, 0, !dbg !897
  br i1 %11, label %12, label %15, !dbg !900

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !dbg !901
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 90), !dbg !901
  call void @nn_err_abort() #4, !dbg !901
  unreachable, !dbg !901

15:                                               ; preds = %3
  br label %16, !dbg !900

16:                                               ; preds = %15
  %17 = load ptr, ptr %2, align 8, !dbg !903
  %18 = getelementptr inbounds %struct.nn_sipc, ptr %17, i32 0, i32 12, !dbg !904
  call void @nn_fsm_event_term(ptr noundef %18), !dbg !905
  %19 = load ptr, ptr %2, align 8, !dbg !906
  %20 = getelementptr inbounds %struct.nn_sipc, ptr %19, i32 0, i32 11, !dbg !907
  call void @nn_msg_term(ptr noundef %20), !dbg !908
  %21 = load ptr, ptr %2, align 8, !dbg !909
  %22 = getelementptr inbounds %struct.nn_sipc, ptr %21, i32 0, i32 8, !dbg !910
  call void @nn_msg_term(ptr noundef %22), !dbg !911
  %23 = load ptr, ptr %2, align 8, !dbg !912
  %24 = getelementptr inbounds %struct.nn_sipc, ptr %23, i32 0, i32 5, !dbg !913
  call void @nn_pipebase_term(ptr noundef %24), !dbg !914
  %25 = load ptr, ptr %2, align 8, !dbg !915
  %26 = getelementptr inbounds %struct.nn_sipc, ptr %25, i32 0, i32 3, !dbg !916
  call void @nn_streamhdr_term(ptr noundef %26), !dbg !917
  %27 = load ptr, ptr %2, align 8, !dbg !918
  %28 = getelementptr inbounds %struct.nn_sipc, ptr %27, i32 0, i32 0, !dbg !919
  call void @nn_fsm_term(ptr noundef %28), !dbg !920
  ret void, !dbg !921
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_fsm_event_term(ptr noundef) #2

declare void @nn_msg_term(ptr noundef) #2

declare void @nn_pipebase_term(ptr noundef) #2

declare void @nn_streamhdr_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sipc_isidle(ptr noundef %0) #0 !dbg !922 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !925, metadata !DIExpression()), !dbg !926
  %3 = load ptr, ptr %2, align 8, !dbg !927
  %4 = getelementptr inbounds %struct.nn_sipc, ptr %3, i32 0, i32 0, !dbg !928
  %5 = call i32 @nn_fsm_isidle(ptr noundef %4), !dbg !929
  ret i32 %5, !dbg !930
}

declare i32 @nn_fsm_isidle(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sipc_start(ptr noundef %0, ptr noundef %1) #0 !dbg !931 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !934, metadata !DIExpression()), !dbg !935
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !936, metadata !DIExpression()), !dbg !937
  br label %5, !dbg !938

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !dbg !939
  %7 = getelementptr inbounds %struct.nn_sipc, ptr %6, i32 0, i32 2, !dbg !939
  %8 = load ptr, ptr %7, align 8, !dbg !939
  %9 = icmp eq ptr %8, null, !dbg !939
  br i1 %9, label %10, label %16, !dbg !939

10:                                               ; preds = %5
  %11 = load ptr, ptr %3, align 8, !dbg !939
  %12 = getelementptr inbounds %struct.nn_sipc, ptr %11, i32 0, i32 4, !dbg !939
  %13 = getelementptr inbounds %struct.nn_fsm_owner, ptr %12, i32 0, i32 1, !dbg !939
  %14 = load ptr, ptr %13, align 8, !dbg !939
  %15 = icmp eq ptr %14, null, !dbg !939
  br label %16

16:                                               ; preds = %10, %5
  %17 = phi i1 [ false, %5 ], [ %15, %10 ], !dbg !942
  %18 = xor i1 %17, true, !dbg !939
  %19 = zext i1 %18 to i32, !dbg !939
  %20 = sext i32 %19 to i64, !dbg !939
  %21 = icmp ne i64 %20, 0, !dbg !939
  br i1 %21, label %22, label %25, !dbg !943

22:                                               ; preds = %16
  %23 = load ptr, ptr @stderr, align 8, !dbg !944
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 108), !dbg !944
  call void @nn_err_abort() #4, !dbg !944
  unreachable, !dbg !944

25:                                               ; preds = %16
  br label %26, !dbg !943

26:                                               ; preds = %25
  %27 = load ptr, ptr %3, align 8, !dbg !946
  %28 = getelementptr inbounds %struct.nn_sipc, ptr %27, i32 0, i32 4, !dbg !947
  %29 = getelementptr inbounds %struct.nn_fsm_owner, ptr %28, i32 0, i32 0, !dbg !948
  store i32 1, ptr %29, align 8, !dbg !949
  %30 = load ptr, ptr %3, align 8, !dbg !950
  %31 = getelementptr inbounds %struct.nn_sipc, ptr %30, i32 0, i32 0, !dbg !951
  %32 = load ptr, ptr %3, align 8, !dbg !952
  %33 = getelementptr inbounds %struct.nn_sipc, ptr %32, i32 0, i32 4, !dbg !953
  %34 = getelementptr inbounds %struct.nn_fsm_owner, ptr %33, i32 0, i32 1, !dbg !954
  store ptr %31, ptr %34, align 8, !dbg !955
  %35 = load ptr, ptr %4, align 8, !dbg !956
  %36 = load ptr, ptr %3, align 8, !dbg !957
  %37 = getelementptr inbounds %struct.nn_sipc, ptr %36, i32 0, i32 4, !dbg !958
  call void @nn_usock_swap_owner(ptr noundef %35, ptr noundef %37), !dbg !959
  %38 = load ptr, ptr %4, align 8, !dbg !960
  %39 = load ptr, ptr %3, align 8, !dbg !961
  %40 = getelementptr inbounds %struct.nn_sipc, ptr %39, i32 0, i32 2, !dbg !962
  store ptr %38, ptr %40, align 8, !dbg !963
  %41 = load ptr, ptr %3, align 8, !dbg !964
  %42 = getelementptr inbounds %struct.nn_sipc, ptr %41, i32 0, i32 0, !dbg !965
  call void @nn_fsm_start(ptr noundef %42), !dbg !966
  ret void, !dbg !967
}

declare void @nn_usock_swap_owner(ptr noundef, ptr noundef) #2

declare void @nn_fsm_start(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sipc_stop(ptr noundef %0) #0 !dbg !968 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !969, metadata !DIExpression()), !dbg !970
  %3 = load ptr, ptr %2, align 8, !dbg !971
  %4 = getelementptr inbounds %struct.nn_sipc, ptr %3, i32 0, i32 0, !dbg !972
  call void @nn_fsm_stop(ptr noundef %4), !dbg !973
  ret void, !dbg !974
}

declare void @nn_fsm_stop(ptr noundef) #2

declare void @nn_msg_mv(ptr noundef, ptr noundef) #2

declare void @nn_putll(ptr noundef, i64 noundef) #2

declare i64 @nn_chunkref_size(ptr noundef) #2

declare ptr @nn_chunkref_data(ptr noundef) #2

declare void @nn_usock_send(ptr noundef, ptr noundef, i32 noundef) #2

declare void @nn_usock_recv(ptr noundef, ptr noundef, i64 noundef) #2

declare void @nn_pipebase_stop(ptr noundef) #2

declare void @nn_streamhdr_stop(ptr noundef) #2

declare i32 @nn_streamhdr_isidle(ptr noundef) #2

declare void @nn_fsm_stopped(ptr noundef, i32 noundef) #2

declare void @nn_streamhdr_start(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_fsm_raise(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @nn_pipebase_start(ptr noundef) #2

declare ptr @nn_err_strerror(i32 noundef) #2

declare void @nn_pipebase_sent(ptr noundef) #2

declare i64 @nn_getll(ptr noundef) #2

declare void @nn_pipebase_received(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!371, !372, !373, !374, !375, !376, !377}
!llvm.ident = !{!378}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_sipc_pipebase_vfptr", scope: !2, file: !323, line: 62, type: !272, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !320, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/transports/ipc/sipc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "da50450d3d8ffa2dce5ab2bf33d29a10")
!4 = !{!5, !6, !319, !20, !185}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sipc", file: !8, line: 43, size: 7040, elements: !9)
!8 = !DIFile(filename: "./src/transports/ipc/sipc.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "c72c01549df9f1b312112846109e9bf8")
!9 = !{!10, !41, !42, !231, !307, !308, !309, !310, !314, !315, !316, !317, !318}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !7, file: !8, line: 46, baseType: !11, size: 640)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !12, line: 66, size: 640, elements: !13)
!12 = !DIFile(filename: "src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!13 = !{!14, !21, !22, !23, !24, !25, !28}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !11, file: !12, line: 67, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !12, line: 58, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19, !20, !20, !5}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !11, file: !12, line: 68, baseType: !20, size: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !11, file: !12, line: 69, baseType: !20, size: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !11, file: !12, line: 70, baseType: !5, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !11, file: !12, line: 71, baseType: !19, size: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !11, file: !12, line: 72, baseType: !26, size: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !12, line: 30, flags: DIFlagFwdDecl)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !11, file: !12, line: 73, baseType: !29, size: 320, offset: 320)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !12, line: 34, size: 320, elements: !30)
!30 = !{!31, !32, !33, !34, !35}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !29, file: !12, line: 35, baseType: !19, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !29, file: !12, line: 36, baseType: !20, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !29, file: !12, line: 37, baseType: !5, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !29, file: !12, line: 38, baseType: !20, size: 32, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !29, file: !12, line: 39, baseType: !36, size: 64, offset: 256)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !37, line: 33, size: 64, elements: !38)
!37 = !DIFile(filename: "src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!38 = !{!39}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !36, file: !37, line: 34, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !7, file: !8, line: 47, baseType: !20, size: 32, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !7, file: !8, line: 50, baseType: !43, size: 64, offset: 704)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_usock", file: !45, line: 29, size: 4224, elements: !46)
!45 = !DIFile(filename: "src/aio/usock_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "31b785bc46a858e5ba003f912abaeac8")
!46 = !{!47, !48, !49, !170, !171, !176, !190, !216, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !44, file: !45, line: 32, baseType: !11, size: 640)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !44, file: !45, line: 33, baseType: !20, size: 32, offset: 640)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !44, file: !45, line: 36, baseType: !50, size: 64, offset: 704)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !52, line: 53, size: 1408, elements: !53)
!52 = !DIFile(filename: "src/aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!53 = !{!54, !91, !96, !97, !103, !130, !131, !157}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !51, file: !52, line: 54, baseType: !55, size: 320)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !56, line: 32, size: 320, elements: !57)
!56 = !DIFile(filename: "src/aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !55, file: !56, line: 36, baseType: !59, size: 320)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !60, line: 72, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!61 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !60, line: 67, size: 320, elements: !62)
!62 = !{!63, !84, !89}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !61, file: !60, line: 69, baseType: !64, size: 320)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !65, line: 22, size: 320, elements: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!66 = !{!67, !68, !70, !71, !72, !73, !75, !76}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !64, file: !65, line: 24, baseType: !20, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !64, file: !65, line: 25, baseType: !69, size: 32, offset: 32)
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !64, file: !65, line: 26, baseType: !20, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !64, file: !65, line: 28, baseType: !69, size: 32, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !64, file: !65, line: 32, baseType: !20, size: 32, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !64, file: !65, line: 34, baseType: !74, size: 16, offset: 160)
!74 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !64, file: !65, line: 35, baseType: !74, size: 16, offset: 176)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !64, file: !65, line: 36, baseType: !77, size: 128, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !78, line: 55, baseType: !79)
!78 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !78, line: 51, size: 128, elements: !80)
!80 = !{!81, !83}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !79, file: !78, line: 53, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !79, file: !78, line: 54, baseType: !82, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !61, file: !60, line: 70, baseType: !85, size: 320)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 320, elements: !87)
!86 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!87 = !{!88}
!88 = !DISubrange(count: 40)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !61, file: !60, line: 71, baseType: !90, size: 64)
!90 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !51, file: !52, line: 55, baseType: !92, size: 128, offset: 320)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !37, line: 37, size: 128, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !92, file: !37, line: 38, baseType: !40, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !92, file: !37, line: 39, baseType: !40, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !51, file: !52, line: 56, baseType: !36, size: 64, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !51, file: !52, line: 57, baseType: !98, size: 64, offset: 512)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !99, line: 25, size: 64, elements: !100)
!99 = !DIFile(filename: "src/aio/../utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !98, file: !99, line: 26, baseType: !20, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !98, file: !99, line: 27, baseType: !20, size: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !51, file: !52, line: 58, baseType: !104, size: 320, offset: 576)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !105, line: 31, size: 320, elements: !106)
!105 = !DIFile(filename: "src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!106 = !{!107, !108, !109, !110, !118, !129}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !104, file: !105, line: 34, baseType: !20, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !104, file: !105, line: 37, baseType: !20, size: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !104, file: !105, line: 40, baseType: !20, size: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !104, file: !105, line: 43, baseType: !111, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !113, line: 36, size: 64, elements: !114)
!113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!114 = !{!115, !116, !117}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !112, file: !113, line: 38, baseType: !20, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !112, file: !113, line: 39, baseType: !74, size: 16, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !112, file: !113, line: 40, baseType: !74, size: 16, offset: 48)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !104, file: !105, line: 52, baseType: !119, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !105, line: 48, size: 128, elements: !121)
!121 = !{!122, !127, !128}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !120, file: !105, line: 49, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !105, line: 27, size: 32, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !124, file: !105, line: 28, baseType: !20, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !120, file: !105, line: 50, baseType: !20, size: 32, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !120, file: !105, line: 51, baseType: !20, size: 32, offset: 96)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !104, file: !105, line: 55, baseType: !20, size: 32, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !51, file: !52, line: 59, baseType: !124, size: 32, offset: 896)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !51, file: !52, line: 60, baseType: !132, size: 256, offset: 960)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !133, line: 37, size: 256, elements: !134)
!133 = !DIFile(filename: "src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!134 = !{!135, !146}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !132, file: !133, line: 38, baseType: !136, size: 128)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !137, line: 31, size: 128, elements: !138)
!137 = !DIFile(filename: "src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!138 = !{!139, !145}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !136, file: !137, line: 33, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !141, line: 27, baseType: !142)
!141 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !143, line: 45, baseType: !144)
!143 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!144 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !136, file: !137, line: 34, baseType: !140, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !132, file: !133, line: 39, baseType: !147, size: 128, offset: 128)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !148, line: 31, size: 128, elements: !149)
!148 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!149 = !{!150, !156}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !147, file: !148, line: 32, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !148, line: 26, size: 128, elements: !153)
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !148, line: 27, baseType: !151, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !152, file: !148, line: 28, baseType: !151, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !147, file: !148, line: 33, baseType: !151, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !51, file: !52, line: 61, baseType: !158, size: 192, offset: 1216)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !159, line: 25, size: 192, elements: !160)
!159 = !DIFile(filename: "src/aio/../utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!160 = !{!161, !167, !168}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !158, file: !159, line: 27, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !164, line: 28, baseType: !165)
!164 = !DIFile(filename: "src/aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!165 = !DISubroutineType(types: !166)
!166 = !{null, !5}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !158, file: !159, line: 28, baseType: !5, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !158, file: !159, line: 29, baseType: !169, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !60, line: 27, baseType: !144)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !44, file: !45, line: 39, baseType: !20, size: 32, offset: 768)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "wfd", scope: !44, file: !45, line: 40, baseType: !172, size: 128, offset: 832)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_fd", file: !52, line: 40, size: 128, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !172, file: !52, line: 41, baseType: !19, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !172, file: !52, line: 42, baseType: !124, size: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !44, file: !45, line: 59, baseType: !177, size: 320, offset: 960)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !45, line: 43, size: 320, elements: !178)
!178 = !{!179, !184, !187, !188, !189}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !177, file: !45, line: 46, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !141, line: 24, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !143, line: 38, baseType: !183)
!183 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !177, file: !45, line: 47, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !186, line: 46, baseType: !144)
!186 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!187 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !177, file: !45, line: 50, baseType: !180, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "batch_len", scope: !177, file: !45, line: 53, baseType: !185, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "batch_pos", scope: !177, file: !45, line: 58, baseType: !185, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !44, file: !45, line: 69, baseType: !191, size: 832, offset: 1280)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !45, line: 62, size: 832, elements: !192)
!192 = !{!193, !212}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !191, file: !45, line: 65, baseType: !194, size: 448)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !195, line: 259, size: 448, elements: !196)
!195 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!196 = !{!197, !198, !201, !208, !209, !210, !211}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !194, file: !195, line: 261, baseType: !5, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !194, file: !195, line: 262, baseType: !199, size: 32, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !195, line: 33, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !143, line: 210, baseType: !69)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !194, file: !195, line: 264, baseType: !202, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !204, line: 26, size: 128, elements: !205)
!204 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !203, file: !204, line: 28, baseType: !5, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !203, file: !204, line: 29, baseType: !185, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !194, file: !195, line: 265, baseType: !185, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !194, file: !195, line: 267, baseType: !5, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !194, file: !195, line: 268, baseType: !185, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !194, file: !195, line: 273, baseType: !20, size: 32, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !191, file: !45, line: 68, baseType: !213, size: 384, offset: 448)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 384, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 3)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "task_connecting", scope: !44, file: !45, line: 72, baseType: !217, size: 128, offset: 2112)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_task", file: !52, line: 48, size: 128, elements: !218)
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !217, file: !52, line: 49, baseType: !19, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !217, file: !52, line: 50, baseType: !36, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "task_connected", scope: !44, file: !45, line: 73, baseType: !217, size: 128, offset: 2240)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "task_accept", scope: !44, file: !45, line: 74, baseType: !217, size: 128, offset: 2368)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "task_send", scope: !44, file: !45, line: 75, baseType: !217, size: 128, offset: 2496)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "task_recv", scope: !44, file: !45, line: 76, baseType: !217, size: 128, offset: 2624)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "task_stop", scope: !44, file: !45, line: 77, baseType: !217, size: 128, offset: 2752)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "event_established", scope: !44, file: !45, line: 80, baseType: !29, size: 320, offset: 2880)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "event_sent", scope: !44, file: !45, line: 81, baseType: !29, size: 320, offset: 3200)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "event_received", scope: !44, file: !45, line: 82, baseType: !29, size: 320, offset: 3520)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "event_error", scope: !44, file: !45, line: 83, baseType: !29, size: 320, offset: 3840)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "asock", scope: !44, file: !45, line: 87, baseType: !43, size: 64, offset: 4160)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "streamhdr", scope: !7, file: !8, line: 53, baseType: !232, size: 3008, offset: 768)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_streamhdr", file: !233, line: 41, size: 3008, elements: !234)
!233 = !DIFile(filename: "./src/transports/ipc/../utils/streamhdr.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "7d060aeed02236eba444409cfc4451d2")
!234 = !{!235, !236, !237, !258, !259, !264, !302, !306}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !232, file: !233, line: 44, baseType: !11, size: 640)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !232, file: !233, line: 45, baseType: !20, size: 32, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !232, file: !233, line: 48, baseType: !238, size: 1664, offset: 704)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timer", file: !239, line: 32, size: 1664, elements: !240)
!239 = !DIFile(filename: "./src/transports/ipc/../utils/../../aio/timer.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "36b8c8892aa99fc49b85b12a9caf893a")
!240 = !{!241, !242, !243, !244, !245, !255, !256, !257}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !238, file: !239, line: 33, baseType: !11, size: 640)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !238, file: !239, line: 34, baseType: !20, size: 32, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "start_task", scope: !238, file: !239, line: 35, baseType: !217, size: 128, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "stop_task", scope: !238, file: !239, line: 36, baseType: !217, size: 128, offset: 832)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "wtimer", scope: !238, file: !239, line: 37, baseType: !246, size: 256, offset: 960)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_timer", file: !247, line: 37, size: 256, elements: !248)
!247 = !DIFile(filename: "src/aio/worker.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "2b691693adce9b61547df7808f294867")
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !246, file: !247, line: 38, baseType: !19, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !246, file: !247, line: 39, baseType: !251, size: 192, offset: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset_hndl", file: !133, line: 32, size: 192, elements: !252)
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !251, file: !133, line: 33, baseType: !152, size: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !251, file: !133, line: 34, baseType: !140, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !238, file: !239, line: 38, baseType: !29, size: 320, offset: 1216)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !238, file: !239, line: 39, baseType: !50, size: 64, offset: 1536)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !238, file: !239, line: 40, baseType: !20, size: 32, offset: 1600)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !232, file: !233, line: 51, baseType: !43, size: 64, offset: 2368)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "usock_owner", scope: !232, file: !233, line: 54, baseType: !260, size: 128, offset: 2432)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_owner", file: !12, line: 61, size: 128, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !260, file: !12, line: 62, baseType: !20, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !260, file: !12, line: 63, baseType: !19, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !232, file: !233, line: 57, baseType: !265, size: 64, offset: 2560)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase", file: !267, line: 147, size: 1536, elements: !268)
!267 = !DIFile(filename: "./src/transports/ipc/../../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
!268 = !{!269, !270, !293, !294, !295, !296, !299, !300, !301}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !266, file: !267, line: 148, baseType: !11, size: 640)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !266, file: !267, line: 149, baseType: !271, size: 64, offset: 640)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase_vfptr", file: !267, line: 134, size: 128, elements: !274)
!274 = !{!275, !292}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !273, file: !267, line: 138, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!20, !265, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !281, line: 30, size: 512, elements: !282)
!281 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!282 = !{!283, !291}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !280, file: !281, line: 33, baseType: !284, size: 256)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !285, line: 39, size: 256, elements: !286)
!285 = !DIFile(filename: "src/aio/../utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !284, file: !285, line: 40, baseType: !288, size: 256)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 256, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !280, file: !281, line: 36, baseType: !284, size: 256, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !273, file: !267, line: 142, baseType: !276, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !266, file: !267, line: 150, baseType: !181, size: 8, offset: 704)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !266, file: !267, line: 151, baseType: !181, size: 8, offset: 712)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !266, file: !267, line: 152, baseType: !181, size: 8, offset: 720)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !266, file: !267, line: 153, baseType: !297, size: 64, offset: 768)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !267, line: 39, flags: DIFlagFwdDecl)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !266, file: !267, line: 154, baseType: !5, size: 64, offset: 832)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !266, file: !267, line: 155, baseType: !29, size: 320, offset: 896)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !266, file: !267, line: 156, baseType: !29, size: 320, offset: 1216)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "protohdr", scope: !232, file: !233, line: 60, baseType: !303, size: 64, offset: 2624)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 64, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 8)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !232, file: !233, line: 63, baseType: !29, size: 320, offset: 2688)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "usock_owner", scope: !7, file: !8, line: 56, baseType: !260, size: 128, offset: 3776)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !7, file: !8, line: 59, baseType: !266, size: 1536, offset: 3904)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !7, file: !8, line: 62, baseType: !20, size: 32, offset: 5440)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "inhdr", scope: !7, file: !8, line: 65, baseType: !311, size: 72, offset: 5472)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 72, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 9)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "inmsg", scope: !7, file: !8, line: 68, baseType: !280, size: 512, offset: 5544)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !7, file: !8, line: 71, baseType: !20, size: 32, offset: 6080)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "outhdr", scope: !7, file: !8, line: 74, baseType: !311, size: 72, offset: 6112)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "outmsg", scope: !7, file: !8, line: 77, baseType: !280, size: 512, offset: 6184)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !7, file: !8, line: 80, baseType: !29, size: 320, offset: 6720)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!320 = !{!0, !321, !327, !332, !337, !342, !347, !349, !351, !356, !361, !366}
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !323, line: 90, type: !324, isLocal: true, isDefinition: true)
!323 = !DIFile(filename: "./src/transports/ipc/sipc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "da50450d3d8ffa2dce5ab2bf33d29a10")
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 240, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 30)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !323, line: 90, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 272, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 34)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !323, line: 90, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 224, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 28)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !323, line: 108, type: !339, isLocal: true, isDefinition: true)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 424, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 53)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !323, line: 130, type: !344, isLocal: true, isDefinition: true)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 288, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 36)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !323, line: 131, type: !85, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !323, line: 163, type: !85, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !323, line: 220, type: !353, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 16, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 2)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !323, line: 269, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 136, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 17)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !323, line: 301, type: !363, isLocal: true, isDefinition: true)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 344, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 43)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !323, line: 315, type: !368, isLocal: true, isDefinition: true)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 304, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 38)
!371 = !{i32 7, !"Dwarf Version", i32 5}
!372 = !{i32 2, !"Debug Info Version", i32 3}
!373 = !{i32 1, !"wchar_size", i32 4}
!374 = !{i32 8, !"PIC Level", i32 2}
!375 = !{i32 7, !"PIE Level", i32 2}
!376 = !{i32 7, !"uwtable", i32 2}
!377 = !{i32 7, !"frame-pointer", i32 2}
!378 = !{!"clang version 16.0.0"}
!379 = distinct !DISubprogram(name: "nn_sipc_send", scope: !323, file: !323, line: 123, type: !277, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!380 = !{}
!381 = !DILocalVariable(name: "self", arg: 1, scope: !379, file: !323, line: 123, type: !265)
!382 = !DILocation(line: 123, column: 46, scope: !379)
!383 = !DILocalVariable(name: "msg", arg: 2, scope: !379, file: !323, line: 123, type: !279)
!384 = !DILocation(line: 123, column: 67, scope: !379)
!385 = !DILocalVariable(name: "sipc", scope: !379, file: !323, line: 125, type: !6)
!386 = !DILocation(line: 125, column: 21, scope: !379)
!387 = !DILocalVariable(name: "iov", scope: !379, file: !323, line: 126, type: !388)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 384, elements: !214)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_iovec", file: !390, line: 165, size: 128, elements: !391)
!390 = !DIFile(filename: "src/nn.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "0c95956590725e5a1eedd7f7b192cc23")
!391 = !{!392, !393}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !389, file: !390, line: 166, baseType: !5, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !389, file: !390, line: 167, baseType: !185, size: 64, offset: 64)
!394 = !DILocation(line: 126, column: 21, scope: !379)
!395 = !DILocation(line: 128, column: 12, scope: !379)
!396 = !DILocation(line: 128, column: 10, scope: !379)
!397 = !DILocation(line: 130, column: 5, scope: !379)
!398 = !DILocation(line: 130, column: 5, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !323, line: 130, column: 5)
!400 = distinct !DILexicalBlock(scope: !379, file: !323, line: 130, column: 5)
!401 = !DILocation(line: 130, column: 5, scope: !400)
!402 = !DILocation(line: 130, column: 5, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !323, line: 130, column: 5)
!404 = !DILocation(line: 131, column: 5, scope: !379)
!405 = !DILocation(line: 131, column: 5, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !323, line: 131, column: 5)
!407 = distinct !DILexicalBlock(scope: !379, file: !323, line: 131, column: 5)
!408 = !DILocation(line: 131, column: 5, scope: !407)
!409 = !DILocation(line: 131, column: 5, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !323, line: 131, column: 5)
!411 = !DILocation(line: 134, column: 19, scope: !379)
!412 = !DILocation(line: 134, column: 25, scope: !379)
!413 = !DILocation(line: 134, column: 5, scope: !379)
!414 = !DILocation(line: 135, column: 17, scope: !379)
!415 = !DILocation(line: 135, column: 23, scope: !379)
!416 = !DILocation(line: 135, column: 31, scope: !379)
!417 = !DILocation(line: 135, column: 5, scope: !379)
!418 = !DILocation(line: 138, column: 5, scope: !379)
!419 = !DILocation(line: 138, column: 11, scope: !379)
!420 = !DILocation(line: 138, column: 22, scope: !379)
!421 = !DILocation(line: 139, column: 15, scope: !379)
!422 = !DILocation(line: 139, column: 21, scope: !379)
!423 = !DILocation(line: 139, column: 28, scope: !379)
!424 = !DILocation(line: 139, column: 52, scope: !379)
!425 = !DILocation(line: 139, column: 58, scope: !379)
!426 = !DILocation(line: 139, column: 65, scope: !379)
!427 = !DILocation(line: 139, column: 33, scope: !379)
!428 = !DILocation(line: 140, column: 28, scope: !379)
!429 = !DILocation(line: 140, column: 34, scope: !379)
!430 = !DILocation(line: 140, column: 41, scope: !379)
!431 = !DILocation(line: 140, column: 9, scope: !379)
!432 = !DILocation(line: 139, column: 70, scope: !379)
!433 = !DILocation(line: 139, column: 5, scope: !379)
!434 = !DILocation(line: 143, column: 24, scope: !379)
!435 = !DILocation(line: 143, column: 30, scope: !379)
!436 = !DILocation(line: 143, column: 5, scope: !379)
!437 = !DILocation(line: 143, column: 13, scope: !379)
!438 = !DILocation(line: 143, column: 22, scope: !379)
!439 = !DILocation(line: 144, column: 5, scope: !379)
!440 = !DILocation(line: 144, column: 13, scope: !379)
!441 = !DILocation(line: 144, column: 21, scope: !379)
!442 = !DILocation(line: 145, column: 43, scope: !379)
!443 = !DILocation(line: 145, column: 49, scope: !379)
!444 = !DILocation(line: 145, column: 56, scope: !379)
!445 = !DILocation(line: 145, column: 24, scope: !379)
!446 = !DILocation(line: 145, column: 5, scope: !379)
!447 = !DILocation(line: 145, column: 13, scope: !379)
!448 = !DILocation(line: 145, column: 22, scope: !379)
!449 = !DILocation(line: 146, column: 42, scope: !379)
!450 = !DILocation(line: 146, column: 48, scope: !379)
!451 = !DILocation(line: 146, column: 55, scope: !379)
!452 = !DILocation(line: 146, column: 23, scope: !379)
!453 = !DILocation(line: 146, column: 5, scope: !379)
!454 = !DILocation(line: 146, column: 13, scope: !379)
!455 = !DILocation(line: 146, column: 21, scope: !379)
!456 = !DILocation(line: 147, column: 43, scope: !379)
!457 = !DILocation(line: 147, column: 49, scope: !379)
!458 = !DILocation(line: 147, column: 56, scope: !379)
!459 = !DILocation(line: 147, column: 24, scope: !379)
!460 = !DILocation(line: 147, column: 5, scope: !379)
!461 = !DILocation(line: 147, column: 13, scope: !379)
!462 = !DILocation(line: 147, column: 22, scope: !379)
!463 = !DILocation(line: 148, column: 42, scope: !379)
!464 = !DILocation(line: 148, column: 48, scope: !379)
!465 = !DILocation(line: 148, column: 55, scope: !379)
!466 = !DILocation(line: 148, column: 23, scope: !379)
!467 = !DILocation(line: 148, column: 5, scope: !379)
!468 = !DILocation(line: 148, column: 13, scope: !379)
!469 = !DILocation(line: 148, column: 21, scope: !379)
!470 = !DILocation(line: 149, column: 20, scope: !379)
!471 = !DILocation(line: 149, column: 26, scope: !379)
!472 = !DILocation(line: 149, column: 33, scope: !379)
!473 = !DILocation(line: 149, column: 5, scope: !379)
!474 = !DILocation(line: 151, column: 5, scope: !379)
!475 = !DILocation(line: 151, column: 11, scope: !379)
!476 = !DILocation(line: 151, column: 20, scope: !379)
!477 = !DILocation(line: 153, column: 5, scope: !379)
!478 = distinct !DISubprogram(name: "nn_sipc_recv", scope: !323, file: !323, line: 156, type: !277, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!479 = !DILocalVariable(name: "self", arg: 1, scope: !478, file: !323, line: 156, type: !265)
!480 = !DILocation(line: 156, column: 46, scope: !478)
!481 = !DILocalVariable(name: "msg", arg: 2, scope: !478, file: !323, line: 156, type: !279)
!482 = !DILocation(line: 156, column: 67, scope: !478)
!483 = !DILocalVariable(name: "sipc", scope: !478, file: !323, line: 158, type: !6)
!484 = !DILocation(line: 158, column: 21, scope: !478)
!485 = !DILocation(line: 160, column: 12, scope: !478)
!486 = !DILocation(line: 160, column: 10, scope: !478)
!487 = !DILocation(line: 162, column: 5, scope: !478)
!488 = !DILocation(line: 162, column: 5, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !323, line: 162, column: 5)
!490 = distinct !DILexicalBlock(scope: !478, file: !323, line: 162, column: 5)
!491 = !DILocation(line: 162, column: 5, scope: !490)
!492 = !DILocation(line: 162, column: 5, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !323, line: 162, column: 5)
!494 = !DILocation(line: 163, column: 5, scope: !478)
!495 = !DILocation(line: 163, column: 5, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !323, line: 163, column: 5)
!497 = distinct !DILexicalBlock(scope: !478, file: !323, line: 163, column: 5)
!498 = !DILocation(line: 163, column: 5, scope: !497)
!499 = !DILocation(line: 163, column: 5, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !323, line: 163, column: 5)
!501 = !DILocation(line: 166, column: 16, scope: !478)
!502 = !DILocation(line: 166, column: 22, scope: !478)
!503 = !DILocation(line: 166, column: 28, scope: !478)
!504 = !DILocation(line: 166, column: 5, scope: !478)
!505 = !DILocation(line: 167, column: 19, scope: !478)
!506 = !DILocation(line: 167, column: 25, scope: !478)
!507 = !DILocation(line: 167, column: 5, scope: !478)
!508 = !DILocation(line: 170, column: 5, scope: !478)
!509 = !DILocation(line: 170, column: 11, scope: !478)
!510 = !DILocation(line: 170, column: 19, scope: !478)
!511 = !DILocation(line: 171, column: 20, scope: !478)
!512 = !DILocation(line: 171, column: 26, scope: !478)
!513 = !DILocation(line: 171, column: 33, scope: !478)
!514 = !DILocation(line: 171, column: 39, scope: !478)
!515 = !DILocation(line: 171, column: 5, scope: !478)
!516 = !DILocation(line: 173, column: 5, scope: !478)
!517 = distinct !DISubprogram(name: "nn_sipc_init", scope: !323, file: !323, line: 71, type: !518, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !380)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !6, !20, !520, !19}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !267, line: 81, size: 128, elements: !522)
!522 = !{!523, !533}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !521, file: !267, line: 82, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase_vfptr", file: !267, line: 70, size: 128, elements: !527)
!527 = !{!528, !532}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !526, file: !267, line: 75, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !520}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !526, file: !267, line: 78, baseType: !529, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !521, file: !267, line: 83, baseType: !534, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ep", file: !267, line: 83, flags: DIFlagFwdDecl)
!536 = !DILocalVariable(name: "self", arg: 1, scope: !517, file: !323, line: 71, type: !6)
!537 = !DILocation(line: 71, column: 36, scope: !517)
!538 = !DILocalVariable(name: "src", arg: 2, scope: !517, file: !323, line: 71, type: !20)
!539 = !DILocation(line: 71, column: 46, scope: !517)
!540 = !DILocalVariable(name: "epbase", arg: 3, scope: !517, file: !323, line: 72, type: !520)
!541 = !DILocation(line: 72, column: 23, scope: !517)
!542 = !DILocalVariable(name: "owner", arg: 4, scope: !517, file: !323, line: 72, type: !19)
!543 = !DILocation(line: 72, column: 46, scope: !517)
!544 = !DILocation(line: 74, column: 19, scope: !517)
!545 = !DILocation(line: 74, column: 25, scope: !517)
!546 = !DILocation(line: 74, column: 47, scope: !517)
!547 = !DILocation(line: 74, column: 52, scope: !517)
!548 = !DILocation(line: 74, column: 58, scope: !517)
!549 = !DILocation(line: 74, column: 5, scope: !517)
!550 = !DILocation(line: 75, column: 5, scope: !517)
!551 = !DILocation(line: 75, column: 11, scope: !517)
!552 = !DILocation(line: 75, column: 17, scope: !517)
!553 = !DILocation(line: 76, column: 25, scope: !517)
!554 = !DILocation(line: 76, column: 31, scope: !517)
!555 = !DILocation(line: 76, column: 66, scope: !517)
!556 = !DILocation(line: 76, column: 72, scope: !517)
!557 = !DILocation(line: 76, column: 5, scope: !517)
!558 = !DILocation(line: 77, column: 5, scope: !517)
!559 = !DILocation(line: 77, column: 11, scope: !517)
!560 = !DILocation(line: 77, column: 17, scope: !517)
!561 = !DILocation(line: 78, column: 5, scope: !517)
!562 = !DILocation(line: 78, column: 11, scope: !517)
!563 = !DILocation(line: 78, column: 23, scope: !517)
!564 = !DILocation(line: 78, column: 27, scope: !517)
!565 = !DILocation(line: 79, column: 5, scope: !517)
!566 = !DILocation(line: 79, column: 11, scope: !517)
!567 = !DILocation(line: 79, column: 23, scope: !517)
!568 = !DILocation(line: 79, column: 27, scope: !517)
!569 = !DILocation(line: 80, column: 24, scope: !517)
!570 = !DILocation(line: 80, column: 30, scope: !517)
!571 = !DILocation(line: 80, column: 65, scope: !517)
!572 = !DILocation(line: 80, column: 5, scope: !517)
!573 = !DILocation(line: 81, column: 5, scope: !517)
!574 = !DILocation(line: 81, column: 11, scope: !517)
!575 = !DILocation(line: 81, column: 19, scope: !517)
!576 = !DILocation(line: 82, column: 19, scope: !517)
!577 = !DILocation(line: 82, column: 25, scope: !517)
!578 = !DILocation(line: 82, column: 5, scope: !517)
!579 = !DILocation(line: 83, column: 5, scope: !517)
!580 = !DILocation(line: 83, column: 11, scope: !517)
!581 = !DILocation(line: 83, column: 20, scope: !517)
!582 = !DILocation(line: 84, column: 19, scope: !517)
!583 = !DILocation(line: 84, column: 25, scope: !517)
!584 = !DILocation(line: 84, column: 5, scope: !517)
!585 = !DILocation(line: 85, column: 25, scope: !517)
!586 = !DILocation(line: 85, column: 31, scope: !517)
!587 = !DILocation(line: 85, column: 5, scope: !517)
!588 = !DILocation(line: 86, column: 1, scope: !517)
!589 = distinct !DISubprogram(name: "nn_sipc_handler", scope: !323, file: !323, line: 176, type: !17, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !380)
!590 = !DILocalVariable(name: "self", arg: 1, scope: !589, file: !323, line: 176, type: !19)
!591 = !DILocation(line: 176, column: 45, scope: !589)
!592 = !DILocalVariable(name: "src", arg: 2, scope: !589, file: !323, line: 176, type: !20)
!593 = !DILocation(line: 176, column: 55, scope: !589)
!594 = !DILocalVariable(name: "type", arg: 3, scope: !589, file: !323, line: 176, type: !20)
!595 = !DILocation(line: 176, column: 64, scope: !589)
!596 = !DILocalVariable(name: "srcptr", arg: 4, scope: !589, file: !323, line: 177, type: !5)
!597 = !DILocation(line: 177, column: 11, scope: !589)
!598 = !DILocalVariable(name: "rc", scope: !589, file: !323, line: 179, type: !20)
!599 = !DILocation(line: 179, column: 9, scope: !589)
!600 = !DILocalVariable(name: "sipc", scope: !589, file: !323, line: 180, type: !6)
!601 = !DILocation(line: 180, column: 21, scope: !589)
!602 = !DILocalVariable(name: "size", scope: !589, file: !323, line: 181, type: !140)
!603 = !DILocation(line: 181, column: 14, scope: !589)
!604 = !DILocation(line: 183, column: 12, scope: !589)
!605 = !DILocation(line: 183, column: 10, scope: !589)
!606 = !DILocation(line: 188, column: 9, scope: !607)
!607 = distinct !DILexicalBlock(scope: !589, file: !323, line: 188, column: 9)
!608 = !DILocation(line: 0, scope: !607)
!609 = !DILocation(line: 188, column: 9, scope: !589)
!610 = !DILocation(line: 189, column: 28, scope: !611)
!611 = distinct !DILexicalBlock(scope: !607, file: !323, line: 188, column: 64)
!612 = !DILocation(line: 189, column: 34, scope: !611)
!613 = !DILocation(line: 189, column: 9, scope: !611)
!614 = !DILocation(line: 190, column: 29, scope: !611)
!615 = !DILocation(line: 190, column: 35, scope: !611)
!616 = !DILocation(line: 190, column: 9, scope: !611)
!617 = !DILocation(line: 191, column: 9, scope: !611)
!618 = !DILocation(line: 191, column: 15, scope: !611)
!619 = !DILocation(line: 191, column: 21, scope: !611)
!620 = !DILocation(line: 192, column: 5, scope: !611)
!621 = !DILocation(line: 193, column: 9, scope: !622)
!622 = distinct !DILexicalBlock(scope: !589, file: !323, line: 193, column: 9)
!623 = !DILocation(line: 193, column: 9, scope: !589)
!624 = !DILocation(line: 194, column: 35, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !323, line: 194, column: 13)
!626 = distinct !DILexicalBlock(scope: !622, file: !323, line: 193, column: 58)
!627 = !DILocation(line: 194, column: 41, scope: !625)
!628 = !DILocation(line: 194, column: 13, scope: !625)
!629 = !DILocation(line: 194, column: 13, scope: !626)
!630 = !DILocation(line: 195, column: 34, scope: !631)
!631 = distinct !DILexicalBlock(scope: !625, file: !323, line: 194, column: 53)
!632 = !DILocation(line: 195, column: 40, scope: !631)
!633 = !DILocation(line: 195, column: 48, scope: !631)
!634 = !DILocation(line: 195, column: 54, scope: !631)
!635 = !DILocation(line: 195, column: 13, scope: !631)
!636 = !DILocation(line: 196, column: 13, scope: !631)
!637 = !DILocation(line: 196, column: 19, scope: !631)
!638 = !DILocation(line: 196, column: 25, scope: !631)
!639 = !DILocation(line: 197, column: 13, scope: !631)
!640 = !DILocation(line: 197, column: 19, scope: !631)
!641 = !DILocation(line: 197, column: 31, scope: !631)
!642 = !DILocation(line: 197, column: 35, scope: !631)
!643 = !DILocation(line: 198, column: 13, scope: !631)
!644 = !DILocation(line: 198, column: 19, scope: !631)
!645 = !DILocation(line: 198, column: 31, scope: !631)
!646 = !DILocation(line: 198, column: 35, scope: !631)
!647 = !DILocation(line: 199, column: 13, scope: !631)
!648 = !DILocation(line: 199, column: 19, scope: !631)
!649 = !DILocation(line: 199, column: 25, scope: !631)
!650 = !DILocation(line: 200, column: 30, scope: !631)
!651 = !DILocation(line: 200, column: 36, scope: !631)
!652 = !DILocation(line: 200, column: 13, scope: !631)
!653 = !DILocation(line: 201, column: 13, scope: !631)
!654 = !DILocation(line: 203, column: 9, scope: !626)
!655 = !DILocation(line: 206, column: 13, scope: !589)
!656 = !DILocation(line: 206, column: 19, scope: !589)
!657 = !DILocation(line: 206, column: 5, scope: !589)
!658 = !DILocation(line: 212, column: 13, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !323, line: 212, column: 13)
!660 = distinct !DILexicalBlock(scope: !589, file: !323, line: 206, column: 26)
!661 = !DILocation(line: 212, column: 17, scope: !659)
!662 = !DILocation(line: 212, column: 13, scope: !660)
!663 = !DILocation(line: 213, column: 21, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !323, line: 212, column: 35)
!665 = !DILocation(line: 213, column: 13, scope: !664)
!666 = !DILocation(line: 215, column: 38, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !323, line: 213, column: 27)
!668 = !DILocation(line: 215, column: 44, scope: !667)
!669 = !DILocation(line: 215, column: 55, scope: !667)
!670 = !DILocation(line: 215, column: 61, scope: !667)
!671 = !DILocation(line: 216, column: 22, scope: !667)
!672 = !DILocation(line: 216, column: 28, scope: !667)
!673 = !DILocation(line: 215, column: 17, scope: !667)
!674 = !DILocation(line: 217, column: 17, scope: !667)
!675 = !DILocation(line: 217, column: 23, scope: !667)
!676 = !DILocation(line: 217, column: 29, scope: !667)
!677 = !DILocation(line: 218, column: 17, scope: !667)
!678 = !DILocation(line: 220, column: 17, scope: !667)
!679 = !DILocation(line: 220, column: 17, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !323, line: 220, column: 17)
!681 = distinct !DILexicalBlock(scope: !682, file: !323, line: 220, column: 17)
!682 = distinct !DILexicalBlock(scope: !667, file: !323, line: 220, column: 17)
!683 = !DILocation(line: 221, column: 13, scope: !667)
!684 = !DILocation(line: 222, column: 9, scope: !664)
!685 = !DILocation(line: 223, column: 9, scope: !660)
!686 = !DILocation(line: 223, column: 9, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !323, line: 223, column: 9)
!688 = distinct !DILexicalBlock(scope: !689, file: !323, line: 223, column: 9)
!689 = distinct !DILexicalBlock(scope: !660, file: !323, line: 223, column: 9)
!690 = !DILocation(line: 223, column: 9, scope: !689)
!691 = !DILocation(line: 229, column: 17, scope: !660)
!692 = !DILocation(line: 229, column: 9, scope: !660)
!693 = !DILocation(line: 232, column: 21, scope: !694)
!694 = distinct !DILexicalBlock(scope: !660, file: !323, line: 229, column: 22)
!695 = !DILocation(line: 232, column: 13, scope: !694)
!696 = !DILocation(line: 237, column: 37, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !323, line: 232, column: 27)
!698 = !DILocation(line: 237, column: 43, scope: !697)
!699 = !DILocation(line: 237, column: 17, scope: !697)
!700 = !DILocation(line: 238, column: 17, scope: !697)
!701 = !DILocation(line: 238, column: 23, scope: !697)
!702 = !DILocation(line: 238, column: 29, scope: !697)
!703 = !DILocation(line: 239, column: 17, scope: !697)
!704 = !DILocation(line: 245, column: 17, scope: !697)
!705 = !DILocation(line: 245, column: 23, scope: !697)
!706 = !DILocation(line: 245, column: 29, scope: !697)
!707 = !DILocation(line: 246, column: 32, scope: !697)
!708 = !DILocation(line: 246, column: 38, scope: !697)
!709 = !DILocation(line: 246, column: 44, scope: !697)
!710 = !DILocation(line: 246, column: 50, scope: !697)
!711 = !DILocation(line: 246, column: 17, scope: !697)
!712 = !DILocation(line: 247, column: 17, scope: !697)
!713 = !DILocation(line: 250, column: 17, scope: !697)
!714 = !DILocation(line: 250, column: 17, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !323, line: 250, column: 17)
!716 = distinct !DILexicalBlock(scope: !717, file: !323, line: 250, column: 17)
!717 = distinct !DILexicalBlock(scope: !697, file: !323, line: 250, column: 17)
!718 = !DILocation(line: 251, column: 13, scope: !697)
!719 = !DILocation(line: 254, column: 13, scope: !694)
!720 = !DILocation(line: 254, column: 13, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !323, line: 254, column: 13)
!722 = distinct !DILexicalBlock(scope: !723, file: !323, line: 254, column: 13)
!723 = distinct !DILexicalBlock(scope: !694, file: !323, line: 254, column: 13)
!724 = !DILocation(line: 255, column: 9, scope: !694)
!725 = !DILocation(line: 261, column: 17, scope: !660)
!726 = !DILocation(line: 261, column: 9, scope: !660)
!727 = !DILocation(line: 264, column: 21, scope: !728)
!728 = distinct !DILexicalBlock(scope: !660, file: !323, line: 261, column: 22)
!729 = !DILocation(line: 264, column: 13, scope: !728)
!730 = !DILocation(line: 268, column: 43, scope: !731)
!731 = distinct !DILexicalBlock(scope: !728, file: !323, line: 264, column: 27)
!732 = !DILocation(line: 268, column: 49, scope: !731)
!733 = !DILocation(line: 268, column: 23, scope: !731)
!734 = !DILocation(line: 268, column: 21, scope: !731)
!735 = !DILocation(line: 269, column: 18, scope: !731)
!736 = !DILocation(line: 269, column: 18, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !323, line: 269, column: 18)
!738 = distinct !DILexicalBlock(scope: !731, file: !323, line: 269, column: 18)
!739 = !DILocation(line: 269, column: 18, scope: !738)
!740 = !DILocation(line: 269, column: 18, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !323, line: 269, column: 18)
!742 = !DILocation(line: 272, column: 18, scope: !731)
!743 = !DILocation(line: 272, column: 24, scope: !731)
!744 = !DILocation(line: 272, column: 32, scope: !731)
!745 = !DILocation(line: 273, column: 33, scope: !731)
!746 = !DILocation(line: 273, column: 39, scope: !731)
!747 = !DILocation(line: 273, column: 47, scope: !731)
!748 = !DILocation(line: 273, column: 53, scope: !731)
!749 = !DILocation(line: 273, column: 18, scope: !731)
!750 = !DILocation(line: 277, column: 18, scope: !731)
!751 = !DILocation(line: 277, column: 24, scope: !731)
!752 = !DILocation(line: 277, column: 33, scope: !731)
!753 = !DILocation(line: 279, column: 18, scope: !731)
!754 = !DILocation(line: 279, column: 24, scope: !731)
!755 = !DILocation(line: 279, column: 30, scope: !731)
!756 = !DILocation(line: 280, column: 18, scope: !731)
!757 = !DILocation(line: 283, column: 17, scope: !731)
!758 = !DILocation(line: 283, column: 17, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !323, line: 283, column: 17)
!760 = distinct !DILexicalBlock(scope: !761, file: !323, line: 283, column: 17)
!761 = distinct !DILexicalBlock(scope: !731, file: !323, line: 283, column: 17)
!762 = !DILocation(line: 284, column: 13, scope: !731)
!763 = !DILocation(line: 287, column: 13, scope: !728)
!764 = !DILocation(line: 287, column: 13, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !323, line: 287, column: 13)
!766 = distinct !DILexicalBlock(scope: !767, file: !323, line: 287, column: 13)
!767 = distinct !DILexicalBlock(scope: !728, file: !323, line: 287, column: 13)
!768 = !DILocation(line: 288, column: 9, scope: !728)
!769 = !DILocation(line: 294, column: 17, scope: !660)
!770 = !DILocation(line: 294, column: 9, scope: !660)
!771 = !DILocation(line: 297, column: 21, scope: !772)
!772 = distinct !DILexicalBlock(scope: !660, file: !323, line: 294, column: 22)
!773 = !DILocation(line: 297, column: 13, scope: !772)
!774 = !DILocation(line: 301, column: 17, scope: !775)
!775 = distinct !DILexicalBlock(scope: !772, file: !323, line: 297, column: 27)
!776 = !DILocation(line: 301, column: 17, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !323, line: 301, column: 17)
!778 = distinct !DILexicalBlock(scope: !775, file: !323, line: 301, column: 17)
!779 = !DILocation(line: 301, column: 17, scope: !778)
!780 = !DILocation(line: 301, column: 17, scope: !781)
!781 = distinct !DILexicalBlock(scope: !777, file: !323, line: 301, column: 17)
!782 = !DILocation(line: 302, column: 17, scope: !775)
!783 = !DILocation(line: 302, column: 23, scope: !775)
!784 = !DILocation(line: 302, column: 32, scope: !775)
!785 = !DILocation(line: 303, column: 31, scope: !775)
!786 = !DILocation(line: 303, column: 37, scope: !775)
!787 = !DILocation(line: 303, column: 17, scope: !775)
!788 = !DILocation(line: 304, column: 31, scope: !775)
!789 = !DILocation(line: 304, column: 37, scope: !775)
!790 = !DILocation(line: 304, column: 17, scope: !775)
!791 = !DILocation(line: 305, column: 36, scope: !775)
!792 = !DILocation(line: 305, column: 42, scope: !775)
!793 = !DILocation(line: 305, column: 17, scope: !775)
!794 = !DILocation(line: 306, column: 17, scope: !775)
!795 = !DILocation(line: 310, column: 25, scope: !775)
!796 = !DILocation(line: 310, column: 31, scope: !775)
!797 = !DILocation(line: 310, column: 17, scope: !775)
!798 = !DILocation(line: 315, column: 21, scope: !799)
!799 = distinct !DILexicalBlock(scope: !775, file: !323, line: 310, column: 40)
!800 = !DILocation(line: 315, column: 21, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !323, line: 315, column: 21)
!802 = distinct !DILexicalBlock(scope: !799, file: !323, line: 315, column: 21)
!803 = !DILocation(line: 315, column: 21, scope: !802)
!804 = !DILocation(line: 315, column: 21, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !323, line: 315, column: 21)
!806 = !DILocation(line: 316, column: 38, scope: !799)
!807 = !DILocation(line: 316, column: 44, scope: !799)
!808 = !DILocation(line: 316, column: 50, scope: !799)
!809 = !DILocation(line: 316, column: 28, scope: !799)
!810 = !DILocation(line: 316, column: 26, scope: !799)
!811 = !DILocation(line: 317, column: 35, scope: !799)
!812 = !DILocation(line: 317, column: 41, scope: !799)
!813 = !DILocation(line: 317, column: 21, scope: !799)
!814 = !DILocation(line: 318, column: 35, scope: !799)
!815 = !DILocation(line: 318, column: 41, scope: !799)
!816 = !DILocation(line: 318, column: 57, scope: !799)
!817 = !DILocation(line: 318, column: 21, scope: !799)
!818 = !DILocation(line: 321, column: 26, scope: !819)
!819 = distinct !DILexicalBlock(scope: !799, file: !323, line: 321, column: 25)
!820 = !DILocation(line: 321, column: 25, scope: !799)
!821 = !DILocation(line: 322, column: 25, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !323, line: 321, column: 32)
!823 = !DILocation(line: 322, column: 31, scope: !822)
!824 = !DILocation(line: 322, column: 39, scope: !822)
!825 = !DILocation(line: 323, column: 48, scope: !822)
!826 = !DILocation(line: 323, column: 54, scope: !822)
!827 = !DILocation(line: 323, column: 25, scope: !822)
!828 = !DILocation(line: 324, column: 25, scope: !822)
!829 = !DILocation(line: 328, column: 21, scope: !799)
!830 = !DILocation(line: 328, column: 27, scope: !799)
!831 = !DILocation(line: 328, column: 35, scope: !799)
!832 = !DILocation(line: 329, column: 36, scope: !799)
!833 = !DILocation(line: 329, column: 42, scope: !799)
!834 = !DILocation(line: 330, column: 44, scope: !799)
!835 = !DILocation(line: 330, column: 50, scope: !799)
!836 = !DILocation(line: 330, column: 56, scope: !799)
!837 = !DILocation(line: 330, column: 25, scope: !799)
!838 = !DILocation(line: 330, column: 72, scope: !799)
!839 = !DILocation(line: 329, column: 21, scope: !799)
!840 = !DILocation(line: 332, column: 21, scope: !799)
!841 = !DILocation(line: 338, column: 21, scope: !799)
!842 = !DILocation(line: 338, column: 27, scope: !799)
!843 = !DILocation(line: 338, column: 35, scope: !799)
!844 = !DILocation(line: 339, column: 44, scope: !799)
!845 = !DILocation(line: 339, column: 50, scope: !799)
!846 = !DILocation(line: 339, column: 21, scope: !799)
!847 = !DILocation(line: 341, column: 21, scope: !799)
!848 = !DILocation(line: 344, column: 21, scope: !799)
!849 = !DILocation(line: 344, column: 21, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !323, line: 344, column: 21)
!851 = distinct !DILexicalBlock(scope: !852, file: !323, line: 344, column: 21)
!852 = distinct !DILexicalBlock(scope: !799, file: !323, line: 344, column: 21)
!853 = !DILocation(line: 345, column: 17, scope: !799)
!854 = !DILocation(line: 348, column: 36, scope: !775)
!855 = !DILocation(line: 348, column: 42, scope: !775)
!856 = !DILocation(line: 348, column: 17, scope: !775)
!857 = !DILocation(line: 349, column: 17, scope: !775)
!858 = !DILocation(line: 349, column: 23, scope: !775)
!859 = !DILocation(line: 349, column: 29, scope: !775)
!860 = !DILocation(line: 350, column: 32, scope: !775)
!861 = !DILocation(line: 350, column: 38, scope: !775)
!862 = !DILocation(line: 350, column: 44, scope: !775)
!863 = !DILocation(line: 350, column: 50, scope: !775)
!864 = !DILocation(line: 350, column: 17, scope: !775)
!865 = !DILocation(line: 351, column: 17, scope: !775)
!866 = !DILocation(line: 354, column: 17, scope: !775)
!867 = !DILocation(line: 354, column: 17, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !323, line: 354, column: 17)
!869 = distinct !DILexicalBlock(scope: !870, file: !323, line: 354, column: 17)
!870 = distinct !DILexicalBlock(scope: !775, file: !323, line: 354, column: 17)
!871 = !DILocation(line: 355, column: 13, scope: !775)
!872 = !DILocation(line: 358, column: 13, scope: !772)
!873 = !DILocation(line: 358, column: 13, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !323, line: 358, column: 13)
!875 = distinct !DILexicalBlock(scope: !876, file: !323, line: 358, column: 13)
!876 = distinct !DILexicalBlock(scope: !772, file: !323, line: 358, column: 13)
!877 = !DILocation(line: 359, column: 9, scope: !772)
!878 = !DILocation(line: 367, column: 9, scope: !660)
!879 = !DILocation(line: 367, column: 9, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !323, line: 367, column: 9)
!881 = distinct !DILexicalBlock(scope: !882, file: !323, line: 367, column: 9)
!882 = distinct !DILexicalBlock(scope: !660, file: !323, line: 367, column: 9)
!883 = !DILocation(line: 367, column: 9, scope: !882)
!884 = !DILocation(line: 373, column: 9, scope: !660)
!885 = !DILocation(line: 373, column: 9, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !323, line: 373, column: 9)
!887 = distinct !DILexicalBlock(scope: !888, file: !323, line: 373, column: 9)
!888 = distinct !DILexicalBlock(scope: !660, file: !323, line: 373, column: 9)
!889 = !DILocation(line: 374, column: 5, scope: !660)
!890 = !DILocation(line: 375, column: 1, scope: !589)
!891 = distinct !DISubprogram(name: "nn_sipc_term", scope: !323, file: !323, line: 88, type: !892, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !380)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !6}
!894 = !DILocalVariable(name: "self", arg: 1, scope: !891, file: !323, line: 88, type: !6)
!895 = !DILocation(line: 88, column: 36, scope: !891)
!896 = !DILocation(line: 90, column: 5, scope: !891)
!897 = !DILocation(line: 90, column: 5, scope: !898)
!898 = distinct !DILexicalBlock(scope: !899, file: !323, line: 90, column: 5)
!899 = distinct !DILexicalBlock(scope: !891, file: !323, line: 90, column: 5)
!900 = !DILocation(line: 90, column: 5, scope: !899)
!901 = !DILocation(line: 90, column: 5, scope: !902)
!902 = distinct !DILexicalBlock(scope: !898, file: !323, line: 90, column: 5)
!903 = !DILocation(line: 92, column: 25, scope: !891)
!904 = !DILocation(line: 92, column: 31, scope: !891)
!905 = !DILocation(line: 92, column: 5, scope: !891)
!906 = !DILocation(line: 93, column: 19, scope: !891)
!907 = !DILocation(line: 93, column: 25, scope: !891)
!908 = !DILocation(line: 93, column: 5, scope: !891)
!909 = !DILocation(line: 94, column: 19, scope: !891)
!910 = !DILocation(line: 94, column: 25, scope: !891)
!911 = !DILocation(line: 94, column: 5, scope: !891)
!912 = !DILocation(line: 95, column: 24, scope: !891)
!913 = !DILocation(line: 95, column: 30, scope: !891)
!914 = !DILocation(line: 95, column: 5, scope: !891)
!915 = !DILocation(line: 96, column: 25, scope: !891)
!916 = !DILocation(line: 96, column: 31, scope: !891)
!917 = !DILocation(line: 96, column: 5, scope: !891)
!918 = !DILocation(line: 97, column: 19, scope: !891)
!919 = !DILocation(line: 97, column: 25, scope: !891)
!920 = !DILocation(line: 97, column: 5, scope: !891)
!921 = !DILocation(line: 98, column: 1, scope: !891)
!922 = distinct !DISubprogram(name: "nn_sipc_isidle", scope: !323, file: !323, line: 100, type: !923, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !380)
!923 = !DISubroutineType(types: !924)
!924 = !{!20, !6}
!925 = !DILocalVariable(name: "self", arg: 1, scope: !922, file: !323, line: 100, type: !6)
!926 = !DILocation(line: 100, column: 37, scope: !922)
!927 = !DILocation(line: 102, column: 28, scope: !922)
!928 = !DILocation(line: 102, column: 34, scope: !922)
!929 = !DILocation(line: 102, column: 12, scope: !922)
!930 = !DILocation(line: 102, column: 5, scope: !922)
!931 = distinct !DISubprogram(name: "nn_sipc_start", scope: !323, file: !323, line: 105, type: !932, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !380)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !6, !43}
!934 = !DILocalVariable(name: "self", arg: 1, scope: !931, file: !323, line: 105, type: !6)
!935 = !DILocation(line: 105, column: 37, scope: !931)
!936 = !DILocalVariable(name: "usock", arg: 2, scope: !931, file: !323, line: 105, type: !43)
!937 = !DILocation(line: 105, column: 60, scope: !931)
!938 = !DILocation(line: 108, column: 5, scope: !931)
!939 = !DILocation(line: 108, column: 5, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !323, line: 108, column: 5)
!941 = distinct !DILexicalBlock(scope: !931, file: !323, line: 108, column: 5)
!942 = !DILocation(line: 0, scope: !940)
!943 = !DILocation(line: 108, column: 5, scope: !941)
!944 = !DILocation(line: 108, column: 5, scope: !945)
!945 = distinct !DILexicalBlock(scope: !940, file: !323, line: 108, column: 5)
!946 = !DILocation(line: 109, column: 5, scope: !931)
!947 = !DILocation(line: 109, column: 11, scope: !931)
!948 = !DILocation(line: 109, column: 23, scope: !931)
!949 = !DILocation(line: 109, column: 27, scope: !931)
!950 = !DILocation(line: 110, column: 30, scope: !931)
!951 = !DILocation(line: 110, column: 36, scope: !931)
!952 = !DILocation(line: 110, column: 5, scope: !931)
!953 = !DILocation(line: 110, column: 11, scope: !931)
!954 = !DILocation(line: 110, column: 23, scope: !931)
!955 = !DILocation(line: 110, column: 27, scope: !931)
!956 = !DILocation(line: 111, column: 26, scope: !931)
!957 = !DILocation(line: 111, column: 34, scope: !931)
!958 = !DILocation(line: 111, column: 40, scope: !931)
!959 = !DILocation(line: 111, column: 5, scope: !931)
!960 = !DILocation(line: 112, column: 19, scope: !931)
!961 = !DILocation(line: 112, column: 5, scope: !931)
!962 = !DILocation(line: 112, column: 11, scope: !931)
!963 = !DILocation(line: 112, column: 17, scope: !931)
!964 = !DILocation(line: 115, column: 20, scope: !931)
!965 = !DILocation(line: 115, column: 26, scope: !931)
!966 = !DILocation(line: 115, column: 5, scope: !931)
!967 = !DILocation(line: 116, column: 1, scope: !931)
!968 = distinct !DISubprogram(name: "nn_sipc_stop", scope: !323, file: !323, line: 118, type: !892, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !380)
!969 = !DILocalVariable(name: "self", arg: 1, scope: !968, file: !323, line: 118, type: !6)
!970 = !DILocation(line: 118, column: 36, scope: !968)
!971 = !DILocation(line: 120, column: 19, scope: !968)
!972 = !DILocation(line: 120, column: 25, scope: !968)
!973 = !DILocation(line: 120, column: 5, scope: !968)
!974 = !DILocation(line: 121, column: 1, scope: !968)
