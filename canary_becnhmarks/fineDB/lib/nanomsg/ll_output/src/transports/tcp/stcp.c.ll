; ModuleID = './src/transports/tcp/stcp.c'
source_filename = "./src/transports/tcp/stcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_pipebase_vfptr = type { ptr, ptr }
%struct.nn_iovec = type { ptr, i64 }
%struct.nn_stcp = type { %struct.nn_fsm, i32, ptr, %struct.nn_streamhdr, %struct.nn_fsm_owner, %struct.nn_pipebase, i32, [8 x i8], %struct.nn_msg, i32, [8 x i8], %struct.nn_msg, %struct.nn_fsm_event }
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

@nn_stcp_pipebase_vfptr = dso_local constant %struct.nn_pipebase_vfptr { ptr @nn_stcp_send, ptr @nn_stcp_recv }, align 8, !dbg !0
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !318
@.str.1 = private unnamed_addr constant [34 x i8] c"self->state == NN_STCP_STATE_IDLE\00", align 1, !dbg !324
@.str.2 = private unnamed_addr constant [28 x i8] c"./src/transports/tcp/stcp.c\00", align 1, !dbg !329
@.str.3 = private unnamed_addr constant [53 x i8] c"self->usock == NULL && self->usock_owner.fsm == NULL\00", align 1, !dbg !334
@.str.4 = private unnamed_addr constant [36 x i8] c"stcp->state == NN_STCP_STATE_ACTIVE\00", align 1, !dbg !339
@.str.5 = private unnamed_addr constant [40 x i8] c"stcp->outstate == NN_STCP_OUTSTATE_IDLE\00", align 1, !dbg !344
@.str.6 = private unnamed_addr constant [40 x i8] c"stcp->instate == NN_STCP_INSTATE_HASMSG\00", align 1, !dbg !346
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !348
@.str.8 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !353
@.str.9 = private unnamed_addr constant [43 x i8] c"stcp->outstate == NN_STCP_OUTSTATE_SENDING\00", align 1, !dbg !358

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_stcp_send(ptr noundef %0, ptr noundef %1) #0 !dbg !371 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [3 x %struct.nn_iovec], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !373, metadata !DIExpression()), !dbg !374
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata ptr %5, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata ptr %6, metadata !379, metadata !DIExpression()), !dbg !386
  %7 = load ptr, ptr %3, align 8, !dbg !387
  %8 = icmp ne ptr %7, null, !dbg !387
  br i1 %8, label %9, label %12, !dbg !387

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !387
  %11 = getelementptr inbounds i8, ptr %10, i64 -488, !dbg !387
  br label %13, !dbg !387

12:                                               ; preds = %2
  br label %13, !dbg !387

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !387
  store ptr %14, ptr %5, align 8, !dbg !388
  br label %15, !dbg !389

15:                                               ; preds = %13
  %16 = load ptr, ptr %5, align 8, !dbg !390
  %17 = getelementptr inbounds %struct.nn_stcp, ptr %16, i32 0, i32 1, !dbg !390
  %18 = load i32, ptr %17, align 8, !dbg !390
  %19 = icmp eq i32 %18, 4, !dbg !390
  %20 = xor i1 %19, true, !dbg !390
  %21 = zext i1 %20 to i32, !dbg !390
  %22 = sext i32 %21 to i64, !dbg !390
  %23 = icmp ne i64 %22, 0, !dbg !390
  br i1 %23, label %24, label %27, !dbg !393

24:                                               ; preds = %15
  %25 = load ptr, ptr @stderr, align 8, !dbg !394
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 124), !dbg !394
  call void @nn_err_abort() #4, !dbg !394
  unreachable, !dbg !394

27:                                               ; preds = %15
  br label %28, !dbg !393

28:                                               ; preds = %27
  br label %29, !dbg !396

29:                                               ; preds = %28
  %30 = load ptr, ptr %5, align 8, !dbg !397
  %31 = getelementptr inbounds %struct.nn_stcp, ptr %30, i32 0, i32 9, !dbg !397
  %32 = load i32, ptr %31, align 4, !dbg !397
  %33 = icmp eq i32 %32, 1, !dbg !397
  %34 = xor i1 %33, true, !dbg !397
  %35 = zext i1 %34 to i32, !dbg !397
  %36 = sext i32 %35 to i64, !dbg !397
  %37 = icmp ne i64 %36, 0, !dbg !397
  br i1 %37, label %38, label %41, !dbg !400

38:                                               ; preds = %29
  %39 = load ptr, ptr @stderr, align 8, !dbg !401
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 125), !dbg !401
  call void @nn_err_abort() #4, !dbg !401
  unreachable, !dbg !401

41:                                               ; preds = %29
  br label %42, !dbg !400

42:                                               ; preds = %41
  %43 = load ptr, ptr %5, align 8, !dbg !403
  %44 = getelementptr inbounds %struct.nn_stcp, ptr %43, i32 0, i32 11, !dbg !404
  call void @nn_msg_term(ptr noundef %44), !dbg !405
  %45 = load ptr, ptr %5, align 8, !dbg !406
  %46 = getelementptr inbounds %struct.nn_stcp, ptr %45, i32 0, i32 11, !dbg !407
  %47 = load ptr, ptr %4, align 8, !dbg !408
  call void @nn_msg_mv(ptr noundef %46, ptr noundef %47), !dbg !409
  %48 = load ptr, ptr %5, align 8, !dbg !410
  %49 = getelementptr inbounds %struct.nn_stcp, ptr %48, i32 0, i32 10, !dbg !411
  %50 = getelementptr inbounds [8 x i8], ptr %49, i64 0, i64 0, !dbg !410
  %51 = load ptr, ptr %5, align 8, !dbg !412
  %52 = getelementptr inbounds %struct.nn_stcp, ptr %51, i32 0, i32 11, !dbg !413
  %53 = getelementptr inbounds %struct.nn_msg, ptr %52, i32 0, i32 0, !dbg !414
  %54 = call i64 @nn_chunkref_size(ptr noundef %53), !dbg !415
  %55 = load ptr, ptr %5, align 8, !dbg !416
  %56 = getelementptr inbounds %struct.nn_stcp, ptr %55, i32 0, i32 11, !dbg !417
  %57 = getelementptr inbounds %struct.nn_msg, ptr %56, i32 0, i32 1, !dbg !418
  %58 = call i64 @nn_chunkref_size(ptr noundef %57), !dbg !419
  %59 = add i64 %54, %58, !dbg !420
  call void @nn_putll(ptr noundef %50, i64 noundef %59), !dbg !421
  %60 = load ptr, ptr %5, align 8, !dbg !422
  %61 = getelementptr inbounds %struct.nn_stcp, ptr %60, i32 0, i32 10, !dbg !423
  %62 = getelementptr inbounds [8 x i8], ptr %61, i64 0, i64 0, !dbg !422
  %63 = getelementptr inbounds [3 x %struct.nn_iovec], ptr %6, i64 0, i64 0, !dbg !424
  %64 = getelementptr inbounds %struct.nn_iovec, ptr %63, i32 0, i32 0, !dbg !425
  store ptr %62, ptr %64, align 16, !dbg !426
  %65 = getelementptr inbounds [3 x %struct.nn_iovec], ptr %6, i64 0, i64 0, !dbg !427
  %66 = getelementptr inbounds %struct.nn_iovec, ptr %65, i32 0, i32 1, !dbg !428
  store i64 8, ptr %66, align 8, !dbg !429
  %67 = load ptr, ptr %5, align 8, !dbg !430
  %68 = getelementptr inbounds %struct.nn_stcp, ptr %67, i32 0, i32 11, !dbg !431
  %69 = getelementptr inbounds %struct.nn_msg, ptr %68, i32 0, i32 0, !dbg !432
  %70 = call ptr @nn_chunkref_data(ptr noundef %69), !dbg !433
  %71 = getelementptr inbounds [3 x %struct.nn_iovec], ptr %6, i64 0, i64 1, !dbg !434
  %72 = getelementptr inbounds %struct.nn_iovec, ptr %71, i32 0, i32 0, !dbg !435
  store ptr %70, ptr %72, align 16, !dbg !436
  %73 = load ptr, ptr %5, align 8, !dbg !437
  %74 = getelementptr inbounds %struct.nn_stcp, ptr %73, i32 0, i32 11, !dbg !438
  %75 = getelementptr inbounds %struct.nn_msg, ptr %74, i32 0, i32 0, !dbg !439
  %76 = call i64 @nn_chunkref_size(ptr noundef %75), !dbg !440
  %77 = getelementptr inbounds [3 x %struct.nn_iovec], ptr %6, i64 0, i64 1, !dbg !441
  %78 = getelementptr inbounds %struct.nn_iovec, ptr %77, i32 0, i32 1, !dbg !442
  store i64 %76, ptr %78, align 8, !dbg !443
  %79 = load ptr, ptr %5, align 8, !dbg !444
  %80 = getelementptr inbounds %struct.nn_stcp, ptr %79, i32 0, i32 11, !dbg !445
  %81 = getelementptr inbounds %struct.nn_msg, ptr %80, i32 0, i32 1, !dbg !446
  %82 = call ptr @nn_chunkref_data(ptr noundef %81), !dbg !447
  %83 = getelementptr inbounds [3 x %struct.nn_iovec], ptr %6, i64 0, i64 2, !dbg !448
  %84 = getelementptr inbounds %struct.nn_iovec, ptr %83, i32 0, i32 0, !dbg !449
  store ptr %82, ptr %84, align 16, !dbg !450
  %85 = load ptr, ptr %5, align 8, !dbg !451
  %86 = getelementptr inbounds %struct.nn_stcp, ptr %85, i32 0, i32 11, !dbg !452
  %87 = getelementptr inbounds %struct.nn_msg, ptr %86, i32 0, i32 1, !dbg !453
  %88 = call i64 @nn_chunkref_size(ptr noundef %87), !dbg !454
  %89 = getelementptr inbounds [3 x %struct.nn_iovec], ptr %6, i64 0, i64 2, !dbg !455
  %90 = getelementptr inbounds %struct.nn_iovec, ptr %89, i32 0, i32 1, !dbg !456
  store i64 %88, ptr %90, align 8, !dbg !457
  %91 = load ptr, ptr %5, align 8, !dbg !458
  %92 = getelementptr inbounds %struct.nn_stcp, ptr %91, i32 0, i32 2, !dbg !459
  %93 = load ptr, ptr %92, align 8, !dbg !459
  %94 = getelementptr inbounds [3 x %struct.nn_iovec], ptr %6, i64 0, i64 0, !dbg !460
  call void @nn_usock_send(ptr noundef %93, ptr noundef %94, i32 noundef 3), !dbg !461
  %95 = load ptr, ptr %5, align 8, !dbg !462
  %96 = getelementptr inbounds %struct.nn_stcp, ptr %95, i32 0, i32 9, !dbg !463
  store i32 2, ptr %96, align 4, !dbg !464
  ret i32 0, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_stcp_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !466 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !467, metadata !DIExpression()), !dbg !468
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata ptr %5, metadata !471, metadata !DIExpression()), !dbg !472
  %6 = load ptr, ptr %3, align 8, !dbg !473
  %7 = icmp ne ptr %6, null, !dbg !473
  br i1 %7, label %8, label %11, !dbg !473

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !dbg !473
  %10 = getelementptr inbounds i8, ptr %9, i64 -488, !dbg !473
  br label %12, !dbg !473

11:                                               ; preds = %2
  br label %12, !dbg !473

12:                                               ; preds = %11, %8
  %13 = phi ptr [ %10, %8 ], [ null, %11 ], !dbg !473
  store ptr %13, ptr %5, align 8, !dbg !474
  br label %14, !dbg !475

14:                                               ; preds = %12
  %15 = load ptr, ptr %5, align 8, !dbg !476
  %16 = getelementptr inbounds %struct.nn_stcp, ptr %15, i32 0, i32 1, !dbg !476
  %17 = load i32, ptr %16, align 8, !dbg !476
  %18 = icmp eq i32 %17, 4, !dbg !476
  %19 = xor i1 %18, true, !dbg !476
  %20 = zext i1 %19 to i32, !dbg !476
  %21 = sext i32 %20 to i64, !dbg !476
  %22 = icmp ne i64 %21, 0, !dbg !476
  br i1 %22, label %23, label %26, !dbg !479

23:                                               ; preds = %14
  %24 = load ptr, ptr @stderr, align 8, !dbg !480
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 155), !dbg !480
  call void @nn_err_abort() #4, !dbg !480
  unreachable, !dbg !480

26:                                               ; preds = %14
  br label %27, !dbg !479

27:                                               ; preds = %26
  br label %28, !dbg !482

28:                                               ; preds = %27
  %29 = load ptr, ptr %5, align 8, !dbg !483
  %30 = getelementptr inbounds %struct.nn_stcp, ptr %29, i32 0, i32 6, !dbg !483
  %31 = load i32, ptr %30, align 8, !dbg !483
  %32 = icmp eq i32 %31, 3, !dbg !483
  %33 = xor i1 %32, true, !dbg !483
  %34 = zext i1 %33 to i32, !dbg !483
  %35 = sext i32 %34 to i64, !dbg !483
  %36 = icmp ne i64 %35, 0, !dbg !483
  br i1 %36, label %37, label %40, !dbg !486

37:                                               ; preds = %28
  %38 = load ptr, ptr @stderr, align 8, !dbg !487
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 156), !dbg !487
  call void @nn_err_abort() #4, !dbg !487
  unreachable, !dbg !487

40:                                               ; preds = %28
  br label %41, !dbg !486

41:                                               ; preds = %40
  %42 = load ptr, ptr %4, align 8, !dbg !489
  %43 = load ptr, ptr %5, align 8, !dbg !490
  %44 = getelementptr inbounds %struct.nn_stcp, ptr %43, i32 0, i32 8, !dbg !491
  call void @nn_msg_mv(ptr noundef %42, ptr noundef %44), !dbg !492
  %45 = load ptr, ptr %5, align 8, !dbg !493
  %46 = getelementptr inbounds %struct.nn_stcp, ptr %45, i32 0, i32 8, !dbg !494
  call void @nn_msg_init(ptr noundef %46, i64 noundef 0), !dbg !495
  %47 = load ptr, ptr %5, align 8, !dbg !496
  %48 = getelementptr inbounds %struct.nn_stcp, ptr %47, i32 0, i32 6, !dbg !497
  store i32 1, ptr %48, align 8, !dbg !498
  %49 = load ptr, ptr %5, align 8, !dbg !499
  %50 = getelementptr inbounds %struct.nn_stcp, ptr %49, i32 0, i32 2, !dbg !500
  %51 = load ptr, ptr %50, align 8, !dbg !500
  %52 = load ptr, ptr %5, align 8, !dbg !501
  %53 = getelementptr inbounds %struct.nn_stcp, ptr %52, i32 0, i32 7, !dbg !502
  %54 = getelementptr inbounds [8 x i8], ptr %53, i64 0, i64 0, !dbg !501
  call void @nn_usock_recv(ptr noundef %51, ptr noundef %54, i64 noundef 8), !dbg !503
  ret i32 0, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_stcp_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !505 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !524, metadata !DIExpression()), !dbg !525
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !526, metadata !DIExpression()), !dbg !527
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !528, metadata !DIExpression()), !dbg !529
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !530, metadata !DIExpression()), !dbg !531
  %9 = load ptr, ptr %5, align 8, !dbg !532
  %10 = getelementptr inbounds %struct.nn_stcp, ptr %9, i32 0, i32 0, !dbg !533
  %11 = load i32, ptr %6, align 4, !dbg !534
  %12 = load ptr, ptr %5, align 8, !dbg !535
  %13 = load ptr, ptr %8, align 8, !dbg !536
  call void @nn_fsm_init(ptr noundef %10, ptr noundef @nn_stcp_handler, i32 noundef %11, ptr noundef %12, ptr noundef %13), !dbg !537
  %14 = load ptr, ptr %5, align 8, !dbg !538
  %15 = getelementptr inbounds %struct.nn_stcp, ptr %14, i32 0, i32 1, !dbg !539
  store i32 1, ptr %15, align 8, !dbg !540
  %16 = load ptr, ptr %5, align 8, !dbg !541
  %17 = getelementptr inbounds %struct.nn_stcp, ptr %16, i32 0, i32 3, !dbg !542
  %18 = load ptr, ptr %5, align 8, !dbg !543
  %19 = getelementptr inbounds %struct.nn_stcp, ptr %18, i32 0, i32 0, !dbg !544
  call void @nn_streamhdr_init(ptr noundef %17, i32 noundef 2, ptr noundef %19), !dbg !545
  %20 = load ptr, ptr %5, align 8, !dbg !546
  %21 = getelementptr inbounds %struct.nn_stcp, ptr %20, i32 0, i32 2, !dbg !547
  store ptr null, ptr %21, align 8, !dbg !548
  %22 = load ptr, ptr %5, align 8, !dbg !549
  %23 = getelementptr inbounds %struct.nn_stcp, ptr %22, i32 0, i32 4, !dbg !550
  %24 = getelementptr inbounds %struct.nn_fsm_owner, ptr %23, i32 0, i32 0, !dbg !551
  store i32 -1, ptr %24, align 8, !dbg !552
  %25 = load ptr, ptr %5, align 8, !dbg !553
  %26 = getelementptr inbounds %struct.nn_stcp, ptr %25, i32 0, i32 4, !dbg !554
  %27 = getelementptr inbounds %struct.nn_fsm_owner, ptr %26, i32 0, i32 1, !dbg !555
  store ptr null, ptr %27, align 8, !dbg !556
  %28 = load ptr, ptr %5, align 8, !dbg !557
  %29 = getelementptr inbounds %struct.nn_stcp, ptr %28, i32 0, i32 5, !dbg !558
  %30 = load ptr, ptr %7, align 8, !dbg !559
  call void @nn_pipebase_init(ptr noundef %29, ptr noundef @nn_stcp_pipebase_vfptr, ptr noundef %30), !dbg !560
  %31 = load ptr, ptr %5, align 8, !dbg !561
  %32 = getelementptr inbounds %struct.nn_stcp, ptr %31, i32 0, i32 6, !dbg !562
  store i32 -1, ptr %32, align 8, !dbg !563
  %33 = load ptr, ptr %5, align 8, !dbg !564
  %34 = getelementptr inbounds %struct.nn_stcp, ptr %33, i32 0, i32 8, !dbg !565
  call void @nn_msg_init(ptr noundef %34, i64 noundef 0), !dbg !566
  %35 = load ptr, ptr %5, align 8, !dbg !567
  %36 = getelementptr inbounds %struct.nn_stcp, ptr %35, i32 0, i32 9, !dbg !568
  store i32 -1, ptr %36, align 4, !dbg !569
  %37 = load ptr, ptr %5, align 8, !dbg !570
  %38 = getelementptr inbounds %struct.nn_stcp, ptr %37, i32 0, i32 11, !dbg !571
  call void @nn_msg_init(ptr noundef %38, i64 noundef 0), !dbg !572
  %39 = load ptr, ptr %5, align 8, !dbg !573
  %40 = getelementptr inbounds %struct.nn_stcp, ptr %39, i32 0, i32 12, !dbg !574
  call void @nn_fsm_event_init(ptr noundef %40), !dbg !575
  ret void, !dbg !576
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_fsm_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_stcp_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !577 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !578, metadata !DIExpression()), !dbg !579
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !580, metadata !DIExpression()), !dbg !581
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !582, metadata !DIExpression()), !dbg !583
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !584, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.declare(metadata ptr %9, metadata !586, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.declare(metadata ptr %10, metadata !588, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.declare(metadata ptr %11, metadata !590, metadata !DIExpression()), !dbg !591
  %12 = load ptr, ptr %5, align 8, !dbg !592
  %13 = icmp ne ptr %12, null, !dbg !592
  br i1 %13, label %14, label %17, !dbg !592

14:                                               ; preds = %4
  %15 = load ptr, ptr %5, align 8, !dbg !592
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !592
  br label %18, !dbg !592

17:                                               ; preds = %4
  br label %18, !dbg !592

18:                                               ; preds = %17, %14
  %19 = phi ptr [ %16, %14 ], [ null, %17 ], !dbg !592
  store ptr %19, ptr %10, align 8, !dbg !593
  %20 = load i32, ptr %6, align 4, !dbg !594
  %21 = icmp eq i32 %20, -2, !dbg !594
  br i1 %21, label %22, label %25, !dbg !594

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4, !dbg !594
  %24 = icmp eq i32 %23, -3, !dbg !594
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ], !dbg !596
  %27 = zext i1 %26 to i32, !dbg !594
  %28 = sext i32 %27 to i64, !dbg !594
  %29 = icmp ne i64 %28, 0, !dbg !594
  br i1 %29, label %30, label %37, !dbg !597

30:                                               ; preds = %25
  %31 = load ptr, ptr %10, align 8, !dbg !598
  %32 = getelementptr inbounds %struct.nn_stcp, ptr %31, i32 0, i32 5, !dbg !600
  call void @nn_pipebase_stop(ptr noundef %32), !dbg !601
  %33 = load ptr, ptr %10, align 8, !dbg !602
  %34 = getelementptr inbounds %struct.nn_stcp, ptr %33, i32 0, i32 3, !dbg !603
  call void @nn_streamhdr_stop(ptr noundef %34), !dbg !604
  %35 = load ptr, ptr %10, align 8, !dbg !605
  %36 = getelementptr inbounds %struct.nn_stcp, ptr %35, i32 0, i32 1, !dbg !606
  store i32 6, ptr %36, align 8, !dbg !607
  br label %37, !dbg !608

37:                                               ; preds = %30, %25
  %38 = load ptr, ptr %10, align 8, !dbg !609
  %39 = getelementptr inbounds %struct.nn_stcp, ptr %38, i32 0, i32 1, !dbg !609
  %40 = load i32, ptr %39, align 8, !dbg !609
  %41 = icmp eq i32 %40, 6, !dbg !609
  %42 = zext i1 %41 to i32, !dbg !609
  %43 = sext i32 %42 to i64, !dbg !609
  %44 = icmp ne i64 %43, 0, !dbg !609
  br i1 %44, label %45, label %69, !dbg !611

45:                                               ; preds = %37
  %46 = load ptr, ptr %10, align 8, !dbg !612
  %47 = getelementptr inbounds %struct.nn_stcp, ptr %46, i32 0, i32 3, !dbg !615
  %48 = call i32 @nn_streamhdr_isidle(ptr noundef %47), !dbg !616
  %49 = icmp ne i32 %48, 0, !dbg !616
  br i1 %49, label %50, label %68, !dbg !617

50:                                               ; preds = %45
  %51 = load ptr, ptr %10, align 8, !dbg !618
  %52 = getelementptr inbounds %struct.nn_stcp, ptr %51, i32 0, i32 2, !dbg !620
  %53 = load ptr, ptr %52, align 8, !dbg !620
  %54 = load ptr, ptr %10, align 8, !dbg !621
  %55 = getelementptr inbounds %struct.nn_stcp, ptr %54, i32 0, i32 4, !dbg !622
  call void @nn_usock_swap_owner(ptr noundef %53, ptr noundef %55), !dbg !623
  %56 = load ptr, ptr %10, align 8, !dbg !624
  %57 = getelementptr inbounds %struct.nn_stcp, ptr %56, i32 0, i32 2, !dbg !625
  store ptr null, ptr %57, align 8, !dbg !626
  %58 = load ptr, ptr %10, align 8, !dbg !627
  %59 = getelementptr inbounds %struct.nn_stcp, ptr %58, i32 0, i32 4, !dbg !628
  %60 = getelementptr inbounds %struct.nn_fsm_owner, ptr %59, i32 0, i32 0, !dbg !629
  store i32 -1, ptr %60, align 8, !dbg !630
  %61 = load ptr, ptr %10, align 8, !dbg !631
  %62 = getelementptr inbounds %struct.nn_stcp, ptr %61, i32 0, i32 4, !dbg !632
  %63 = getelementptr inbounds %struct.nn_fsm_owner, ptr %62, i32 0, i32 1, !dbg !633
  store ptr null, ptr %63, align 8, !dbg !634
  %64 = load ptr, ptr %10, align 8, !dbg !635
  %65 = getelementptr inbounds %struct.nn_stcp, ptr %64, i32 0, i32 1, !dbg !636
  store i32 1, ptr %65, align 8, !dbg !637
  %66 = load ptr, ptr %10, align 8, !dbg !638
  %67 = getelementptr inbounds %struct.nn_stcp, ptr %66, i32 0, i32 0, !dbg !639
  call void @nn_fsm_stopped(ptr noundef %67, i32 noundef 2), !dbg !640
  br label %276, !dbg !641

68:                                               ; preds = %45
  br label %276, !dbg !642

69:                                               ; preds = %37
  %70 = load ptr, ptr %10, align 8, !dbg !643
  %71 = getelementptr inbounds %struct.nn_stcp, ptr %70, i32 0, i32 1, !dbg !644
  %72 = load i32, ptr %71, align 8, !dbg !644
  switch i32 %72, label %271 [
    i32 1, label %73
    i32 2, label %99
    i32 3, label %127
    i32 4, label %175
    i32 5, label %266
  ], !dbg !645

73:                                               ; preds = %69
  %74 = load i32, ptr %6, align 4, !dbg !646
  switch i32 %74, label %93 [
    i32 -2, label %75
  ], !dbg !648

75:                                               ; preds = %73
  %76 = load i32, ptr %7, align 4, !dbg !649
  switch i32 %76, label %87 [
    i32 -2, label %77
  ], !dbg !651

77:                                               ; preds = %75
  %78 = load ptr, ptr %10, align 8, !dbg !652
  %79 = getelementptr inbounds %struct.nn_stcp, ptr %78, i32 0, i32 3, !dbg !654
  %80 = load ptr, ptr %10, align 8, !dbg !655
  %81 = getelementptr inbounds %struct.nn_stcp, ptr %80, i32 0, i32 2, !dbg !656
  %82 = load ptr, ptr %81, align 8, !dbg !656
  %83 = load ptr, ptr %10, align 8, !dbg !657
  %84 = getelementptr inbounds %struct.nn_stcp, ptr %83, i32 0, i32 5, !dbg !658
  call void @nn_streamhdr_start(ptr noundef %79, ptr noundef %82, ptr noundef %84), !dbg !659
  %85 = load ptr, ptr %10, align 8, !dbg !660
  %86 = getelementptr inbounds %struct.nn_stcp, ptr %85, i32 0, i32 1, !dbg !661
  store i32 2, ptr %86, align 8, !dbg !662
  br label %276, !dbg !663

87:                                               ; preds = %75
  br label %88, !dbg !664

88:                                               ; preds = %87
  %89 = load ptr, ptr @stderr, align 8, !dbg !665
  %90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 215), !dbg !665
  call void @nn_err_abort() #4, !dbg !665
  unreachable, !dbg !665

91:                                               ; No predecessors!
  br label %92, !dbg !669

92:                                               ; preds = %91
  br label %93, !dbg !669

93:                                               ; preds = %73, %92
  br label %94, !dbg !670

94:                                               ; preds = %93
  %95 = load ptr, ptr @stderr, align 8, !dbg !671
  %96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 219), !dbg !671
  call void @nn_err_abort() #4, !dbg !671
  unreachable, !dbg !671

97:                                               ; No predecessors!
  br label %98, !dbg !675

98:                                               ; preds = %97
  br label %99, !dbg !675

99:                                               ; preds = %69, %98
  %100 = load i32, ptr %6, align 4, !dbg !676
  switch i32 %100, label %121 [
    i32 2, label %101
  ], !dbg !677

101:                                              ; preds = %99
  %102 = load i32, ptr %7, align 4, !dbg !678
  switch i32 %102, label %115 [
    i32 1, label %103
    i32 2, label %108
  ], !dbg !680

103:                                              ; preds = %101
  %104 = load ptr, ptr %10, align 8, !dbg !681
  %105 = getelementptr inbounds %struct.nn_stcp, ptr %104, i32 0, i32 3, !dbg !683
  call void @nn_streamhdr_stop(ptr noundef %105), !dbg !684
  %106 = load ptr, ptr %10, align 8, !dbg !685
  %107 = getelementptr inbounds %struct.nn_stcp, ptr %106, i32 0, i32 1, !dbg !686
  store i32 3, ptr %107, align 8, !dbg !687
  br label %276, !dbg !688

108:                                              ; preds = %101
  %109 = load ptr, ptr %10, align 8, !dbg !689
  %110 = getelementptr inbounds %struct.nn_stcp, ptr %109, i32 0, i32 1, !dbg !690
  store i32 5, ptr %110, align 8, !dbg !691
  %111 = load ptr, ptr %10, align 8, !dbg !692
  %112 = getelementptr inbounds %struct.nn_stcp, ptr %111, i32 0, i32 0, !dbg !693
  %113 = load ptr, ptr %10, align 8, !dbg !694
  %114 = getelementptr inbounds %struct.nn_stcp, ptr %113, i32 0, i32 12, !dbg !695
  call void @nn_fsm_raise(ptr noundef %112, ptr noundef %114, i32 noundef 1), !dbg !696
  br label %276, !dbg !697

115:                                              ; preds = %101
  br label %116, !dbg !698

116:                                              ; preds = %115
  %117 = load ptr, ptr @stderr, align 8, !dbg !699
  %118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 247), !dbg !699
  call void @nn_err_abort() #4, !dbg !699
  unreachable, !dbg !699

119:                                              ; No predecessors!
  br label %120, !dbg !703

120:                                              ; preds = %119
  br label %121, !dbg !703

121:                                              ; preds = %99, %120
  br label %122, !dbg !704

122:                                              ; preds = %121
  %123 = load ptr, ptr @stderr, align 8, !dbg !705
  %124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 251), !dbg !705
  call void @nn_err_abort() #4, !dbg !705
  unreachable, !dbg !705

125:                                              ; No predecessors!
  br label %126, !dbg !709

126:                                              ; preds = %125
  br label %127, !dbg !709

127:                                              ; preds = %69, %126
  %128 = load i32, ptr %6, align 4, !dbg !710
  switch i32 %128, label %169 [
    i32 2, label %129
  ], !dbg !711

129:                                              ; preds = %127
  %130 = load i32, ptr %7, align 4, !dbg !712
  switch i32 %130, label %163 [
    i32 3, label %131
  ], !dbg !714

131:                                              ; preds = %129
  %132 = load ptr, ptr %10, align 8, !dbg !715
  %133 = getelementptr inbounds %struct.nn_stcp, ptr %132, i32 0, i32 5, !dbg !717
  %134 = call i32 @nn_pipebase_start(ptr noundef %133), !dbg !718
  store i32 %134, ptr %9, align 4, !dbg !719
  br label %135, !dbg !720

135:                                              ; preds = %131
  %136 = load i32, ptr %9, align 4, !dbg !721
  %137 = icmp eq i32 %136, 0, !dbg !721
  %138 = xor i1 %137, true, !dbg !721
  %139 = zext i1 %138 to i32, !dbg !721
  %140 = sext i32 %139 to i64, !dbg !721
  %141 = icmp ne i64 %140, 0, !dbg !721
  br i1 %141, label %142, label %150, !dbg !724

142:                                              ; preds = %135
  %143 = load ptr, ptr @stderr, align 8, !dbg !725
  %144 = load i32, ptr %9, align 4, !dbg !725
  %145 = sub nsw i32 0, %144, !dbg !725
  %146 = call ptr @nn_err_strerror(i32 noundef %145), !dbg !725
  %147 = load i32, ptr %9, align 4, !dbg !725
  %148 = sub nsw i32 0, %147, !dbg !725
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef @.str.8, ptr noundef %146, i32 noundef %148, ptr noundef @.str.2, i32 noundef 266), !dbg !725
  call void @nn_err_abort() #4, !dbg !725
  unreachable, !dbg !725

150:                                              ; preds = %135
  br label %151, !dbg !724

151:                                              ; preds = %150
  %152 = load ptr, ptr %10, align 8, !dbg !727
  %153 = getelementptr inbounds %struct.nn_stcp, ptr %152, i32 0, i32 6, !dbg !728
  store i32 1, ptr %153, align 8, !dbg !729
  %154 = load ptr, ptr %10, align 8, !dbg !730
  %155 = getelementptr inbounds %struct.nn_stcp, ptr %154, i32 0, i32 2, !dbg !731
  %156 = load ptr, ptr %155, align 8, !dbg !731
  %157 = load ptr, ptr %10, align 8, !dbg !732
  %158 = getelementptr inbounds %struct.nn_stcp, ptr %157, i32 0, i32 7, !dbg !733
  call void @nn_usock_recv(ptr noundef %156, ptr noundef %158, i64 noundef 8), !dbg !734
  %159 = load ptr, ptr %10, align 8, !dbg !735
  %160 = getelementptr inbounds %struct.nn_stcp, ptr %159, i32 0, i32 9, !dbg !736
  store i32 1, ptr %160, align 4, !dbg !737
  %161 = load ptr, ptr %10, align 8, !dbg !738
  %162 = getelementptr inbounds %struct.nn_stcp, ptr %161, i32 0, i32 1, !dbg !739
  store i32 4, ptr %162, align 8, !dbg !740
  br label %276, !dbg !741

163:                                              ; preds = %129
  br label %164, !dbg !742

164:                                              ; preds = %163
  %165 = load ptr, ptr @stderr, align 8, !dbg !743
  %166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 280), !dbg !743
  call void @nn_err_abort() #4, !dbg !743
  unreachable, !dbg !743

167:                                              ; No predecessors!
  br label %168, !dbg !747

168:                                              ; preds = %167
  br label %169, !dbg !747

169:                                              ; preds = %127, %168
  br label %170, !dbg !748

170:                                              ; preds = %169
  %171 = load ptr, ptr @stderr, align 8, !dbg !749
  %172 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 284), !dbg !749
  call void @nn_err_abort() #4, !dbg !749
  unreachable, !dbg !749

173:                                              ; No predecessors!
  br label %174, !dbg !753

174:                                              ; preds = %173
  br label %175, !dbg !753

175:                                              ; preds = %69, %174
  %176 = load i32, ptr %6, align 4, !dbg !754
  switch i32 %176, label %260 [
    i32 1, label %177
  ], !dbg !755

177:                                              ; preds = %175
  %178 = load i32, ptr %7, align 4, !dbg !756
  switch i32 %178, label %254 [
    i32 3, label %179
    i32 4, label %202
    i32 5, label %245
  ], !dbg !758

179:                                              ; preds = %177
  br label %180, !dbg !759

180:                                              ; preds = %179
  %181 = load ptr, ptr %10, align 8, !dbg !761
  %182 = getelementptr inbounds %struct.nn_stcp, ptr %181, i32 0, i32 9, !dbg !761
  %183 = load i32, ptr %182, align 4, !dbg !761
  %184 = icmp eq i32 %183, 2, !dbg !761
  %185 = xor i1 %184, true, !dbg !761
  %186 = zext i1 %185 to i32, !dbg !761
  %187 = sext i32 %186 to i64, !dbg !761
  %188 = icmp ne i64 %187, 0, !dbg !761
  br i1 %188, label %189, label %192, !dbg !764

189:                                              ; preds = %180
  %190 = load ptr, ptr @stderr, align 8, !dbg !765
  %191 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %190, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @.str.2, i32 noundef 298), !dbg !765
  call void @nn_err_abort() #4, !dbg !765
  unreachable, !dbg !765

192:                                              ; preds = %180
  br label %193, !dbg !764

193:                                              ; preds = %192
  %194 = load ptr, ptr %10, align 8, !dbg !767
  %195 = getelementptr inbounds %struct.nn_stcp, ptr %194, i32 0, i32 9, !dbg !768
  store i32 1, ptr %195, align 4, !dbg !769
  %196 = load ptr, ptr %10, align 8, !dbg !770
  %197 = getelementptr inbounds %struct.nn_stcp, ptr %196, i32 0, i32 11, !dbg !771
  call void @nn_msg_term(ptr noundef %197), !dbg !772
  %198 = load ptr, ptr %10, align 8, !dbg !773
  %199 = getelementptr inbounds %struct.nn_stcp, ptr %198, i32 0, i32 11, !dbg !774
  call void @nn_msg_init(ptr noundef %199, i64 noundef 0), !dbg !775
  %200 = load ptr, ptr %10, align 8, !dbg !776
  %201 = getelementptr inbounds %struct.nn_stcp, ptr %200, i32 0, i32 5, !dbg !777
  call void @nn_pipebase_sent(ptr noundef %201), !dbg !778
  br label %276, !dbg !779

202:                                              ; preds = %177
  %203 = load ptr, ptr %10, align 8, !dbg !780
  %204 = getelementptr inbounds %struct.nn_stcp, ptr %203, i32 0, i32 6, !dbg !781
  %205 = load i32, ptr %204, align 8, !dbg !781
  switch i32 %205, label %239 [
    i32 1, label %206
    i32 2, label %234
  ], !dbg !782

206:                                              ; preds = %202
  %207 = load ptr, ptr %10, align 8, !dbg !783
  %208 = getelementptr inbounds %struct.nn_stcp, ptr %207, i32 0, i32 7, !dbg !785
  %209 = getelementptr inbounds [8 x i8], ptr %208, i64 0, i64 0, !dbg !783
  %210 = call i64 @nn_getll(ptr noundef %209), !dbg !786
  store i64 %210, ptr %11, align 8, !dbg !787
  %211 = load ptr, ptr %10, align 8, !dbg !788
  %212 = getelementptr inbounds %struct.nn_stcp, ptr %211, i32 0, i32 8, !dbg !789
  call void @nn_msg_term(ptr noundef %212), !dbg !790
  %213 = load ptr, ptr %10, align 8, !dbg !791
  %214 = getelementptr inbounds %struct.nn_stcp, ptr %213, i32 0, i32 8, !dbg !792
  %215 = load i64, ptr %11, align 8, !dbg !793
  call void @nn_msg_init(ptr noundef %214, i64 noundef %215), !dbg !794
  %216 = load i64, ptr %11, align 8, !dbg !795
  %217 = icmp ne i64 %216, 0, !dbg !795
  br i1 %217, label %223, label %218, !dbg !797

218:                                              ; preds = %206
  %219 = load ptr, ptr %10, align 8, !dbg !798
  %220 = getelementptr inbounds %struct.nn_stcp, ptr %219, i32 0, i32 6, !dbg !800
  store i32 3, ptr %220, align 8, !dbg !801
  %221 = load ptr, ptr %10, align 8, !dbg !802
  %222 = getelementptr inbounds %struct.nn_stcp, ptr %221, i32 0, i32 5, !dbg !803
  call void @nn_pipebase_received(ptr noundef %222), !dbg !804
  br label %276, !dbg !805

223:                                              ; preds = %206
  %224 = load ptr, ptr %10, align 8, !dbg !806
  %225 = getelementptr inbounds %struct.nn_stcp, ptr %224, i32 0, i32 6, !dbg !807
  store i32 2, ptr %225, align 8, !dbg !808
  %226 = load ptr, ptr %10, align 8, !dbg !809
  %227 = getelementptr inbounds %struct.nn_stcp, ptr %226, i32 0, i32 2, !dbg !810
  %228 = load ptr, ptr %227, align 8, !dbg !810
  %229 = load ptr, ptr %10, align 8, !dbg !811
  %230 = getelementptr inbounds %struct.nn_stcp, ptr %229, i32 0, i32 8, !dbg !812
  %231 = getelementptr inbounds %struct.nn_msg, ptr %230, i32 0, i32 1, !dbg !813
  %232 = call ptr @nn_chunkref_data(ptr noundef %231), !dbg !814
  %233 = load i64, ptr %11, align 8, !dbg !815
  call void @nn_usock_recv(ptr noundef %228, ptr noundef %232, i64 noundef %233), !dbg !816
  br label %276, !dbg !817

234:                                              ; preds = %202
  %235 = load ptr, ptr %10, align 8, !dbg !818
  %236 = getelementptr inbounds %struct.nn_stcp, ptr %235, i32 0, i32 6, !dbg !819
  store i32 3, ptr %236, align 8, !dbg !820
  %237 = load ptr, ptr %10, align 8, !dbg !821
  %238 = getelementptr inbounds %struct.nn_stcp, ptr %237, i32 0, i32 5, !dbg !822
  call void @nn_pipebase_received(ptr noundef %238), !dbg !823
  br label %276, !dbg !824

239:                                              ; preds = %202
  br label %240, !dbg !825

240:                                              ; preds = %239
  %241 = load ptr, ptr @stderr, align 8, !dbg !826
  %242 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 340), !dbg !826
  call void @nn_err_abort() #4, !dbg !826
  unreachable, !dbg !826

243:                                              ; No predecessors!
  br label %244, !dbg !830

244:                                              ; preds = %243
  br label %245, !dbg !830

245:                                              ; preds = %177, %244
  %246 = load ptr, ptr %10, align 8, !dbg !831
  %247 = getelementptr inbounds %struct.nn_stcp, ptr %246, i32 0, i32 5, !dbg !832
  call void @nn_pipebase_stop(ptr noundef %247), !dbg !833
  %248 = load ptr, ptr %10, align 8, !dbg !834
  %249 = getelementptr inbounds %struct.nn_stcp, ptr %248, i32 0, i32 1, !dbg !835
  store i32 5, ptr %249, align 8, !dbg !836
  %250 = load ptr, ptr %10, align 8, !dbg !837
  %251 = getelementptr inbounds %struct.nn_stcp, ptr %250, i32 0, i32 0, !dbg !838
  %252 = load ptr, ptr %10, align 8, !dbg !839
  %253 = getelementptr inbounds %struct.nn_stcp, ptr %252, i32 0, i32 12, !dbg !840
  call void @nn_fsm_raise(ptr noundef %251, ptr noundef %253, i32 noundef 1), !dbg !841
  br label %276, !dbg !842

254:                                              ; preds = %177
  br label %255, !dbg !843

255:                                              ; preds = %254
  %256 = load ptr, ptr @stderr, align 8, !dbg !844
  %257 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %256, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 350), !dbg !844
  call void @nn_err_abort() #4, !dbg !844
  unreachable, !dbg !844

258:                                              ; No predecessors!
  br label %259, !dbg !848

259:                                              ; preds = %258
  br label %260, !dbg !848

260:                                              ; preds = %175, %259
  br label %261, !dbg !849

261:                                              ; preds = %260
  %262 = load ptr, ptr @stderr, align 8, !dbg !850
  %263 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %262, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 354), !dbg !850
  call void @nn_err_abort() #4, !dbg !850
  unreachable, !dbg !850

264:                                              ; No predecessors!
  br label %265, !dbg !854

265:                                              ; preds = %264
  br label %266, !dbg !854

266:                                              ; preds = %69, %265
  br label %267, !dbg !855

267:                                              ; preds = %266
  %268 = load ptr, ptr @stderr, align 8, !dbg !856
  %269 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %268, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 363), !dbg !856
  call void @nn_err_abort() #4, !dbg !856
  unreachable, !dbg !856

270:                                              ; No predecessors!
  br label %271, !dbg !860

271:                                              ; preds = %69, %270
  br label %272, !dbg !861

272:                                              ; preds = %271
  %273 = load ptr, ptr @stderr, align 8, !dbg !862
  %274 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %273, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 369), !dbg !862
  call void @nn_err_abort() #4, !dbg !862
  unreachable, !dbg !862

275:                                              ; No predecessors!
  br label %276, !dbg !866

276:                                              ; preds = %50, %68, %77, %103, %108, %151, %193, %218, %223, %234, %245, %275
  ret void, !dbg !867
}

declare void @nn_streamhdr_init(ptr noundef, i32 noundef, ptr noundef) #2

declare void @nn_pipebase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_msg_init(ptr noundef, i64 noundef) #2

declare void @nn_fsm_event_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_stcp_term(ptr noundef %0) #0 !dbg !868 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !871, metadata !DIExpression()), !dbg !872
  br label %3, !dbg !873

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !874
  %5 = getelementptr inbounds %struct.nn_stcp, ptr %4, i32 0, i32 1, !dbg !874
  %6 = load i32, ptr %5, align 8, !dbg !874
  %7 = icmp eq i32 %6, 1, !dbg !874
  %8 = xor i1 %7, true, !dbg !874
  %9 = zext i1 %8 to i32, !dbg !874
  %10 = sext i32 %9 to i64, !dbg !874
  %11 = icmp ne i64 %10, 0, !dbg !874
  br i1 %11, label %12, label %15, !dbg !877

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !dbg !878
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 84), !dbg !878
  call void @nn_err_abort() #4, !dbg !878
  unreachable, !dbg !878

15:                                               ; preds = %3
  br label %16, !dbg !877

16:                                               ; preds = %15
  %17 = load ptr, ptr %2, align 8, !dbg !880
  %18 = getelementptr inbounds %struct.nn_stcp, ptr %17, i32 0, i32 12, !dbg !881
  call void @nn_fsm_event_term(ptr noundef %18), !dbg !882
  %19 = load ptr, ptr %2, align 8, !dbg !883
  %20 = getelementptr inbounds %struct.nn_stcp, ptr %19, i32 0, i32 11, !dbg !884
  call void @nn_msg_term(ptr noundef %20), !dbg !885
  %21 = load ptr, ptr %2, align 8, !dbg !886
  %22 = getelementptr inbounds %struct.nn_stcp, ptr %21, i32 0, i32 8, !dbg !887
  call void @nn_msg_term(ptr noundef %22), !dbg !888
  %23 = load ptr, ptr %2, align 8, !dbg !889
  %24 = getelementptr inbounds %struct.nn_stcp, ptr %23, i32 0, i32 5, !dbg !890
  call void @nn_pipebase_term(ptr noundef %24), !dbg !891
  %25 = load ptr, ptr %2, align 8, !dbg !892
  %26 = getelementptr inbounds %struct.nn_stcp, ptr %25, i32 0, i32 3, !dbg !893
  call void @nn_streamhdr_term(ptr noundef %26), !dbg !894
  %27 = load ptr, ptr %2, align 8, !dbg !895
  %28 = getelementptr inbounds %struct.nn_stcp, ptr %27, i32 0, i32 0, !dbg !896
  call void @nn_fsm_term(ptr noundef %28), !dbg !897
  ret void, !dbg !898
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
define dso_local i32 @nn_stcp_isidle(ptr noundef %0) #0 !dbg !899 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !902, metadata !DIExpression()), !dbg !903
  %3 = load ptr, ptr %2, align 8, !dbg !904
  %4 = getelementptr inbounds %struct.nn_stcp, ptr %3, i32 0, i32 0, !dbg !905
  %5 = call i32 @nn_fsm_isidle(ptr noundef %4), !dbg !906
  ret i32 %5, !dbg !907
}

declare i32 @nn_fsm_isidle(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_stcp_start(ptr noundef %0, ptr noundef %1) #0 !dbg !908 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !911, metadata !DIExpression()), !dbg !912
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !913, metadata !DIExpression()), !dbg !914
  br label %5, !dbg !915

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !dbg !916
  %7 = getelementptr inbounds %struct.nn_stcp, ptr %6, i32 0, i32 2, !dbg !916
  %8 = load ptr, ptr %7, align 8, !dbg !916
  %9 = icmp eq ptr %8, null, !dbg !916
  br i1 %9, label %10, label %16, !dbg !916

10:                                               ; preds = %5
  %11 = load ptr, ptr %3, align 8, !dbg !916
  %12 = getelementptr inbounds %struct.nn_stcp, ptr %11, i32 0, i32 4, !dbg !916
  %13 = getelementptr inbounds %struct.nn_fsm_owner, ptr %12, i32 0, i32 1, !dbg !916
  %14 = load ptr, ptr %13, align 8, !dbg !916
  %15 = icmp eq ptr %14, null, !dbg !916
  br label %16

16:                                               ; preds = %10, %5
  %17 = phi i1 [ false, %5 ], [ %15, %10 ], !dbg !919
  %18 = xor i1 %17, true, !dbg !916
  %19 = zext i1 %18 to i32, !dbg !916
  %20 = sext i32 %19 to i64, !dbg !916
  %21 = icmp ne i64 %20, 0, !dbg !916
  br i1 %21, label %22, label %25, !dbg !920

22:                                               ; preds = %16
  %23 = load ptr, ptr @stderr, align 8, !dbg !921
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 102), !dbg !921
  call void @nn_err_abort() #4, !dbg !921
  unreachable, !dbg !921

25:                                               ; preds = %16
  br label %26, !dbg !920

26:                                               ; preds = %25
  %27 = load ptr, ptr %3, align 8, !dbg !923
  %28 = getelementptr inbounds %struct.nn_stcp, ptr %27, i32 0, i32 4, !dbg !924
  %29 = getelementptr inbounds %struct.nn_fsm_owner, ptr %28, i32 0, i32 0, !dbg !925
  store i32 1, ptr %29, align 8, !dbg !926
  %30 = load ptr, ptr %3, align 8, !dbg !927
  %31 = getelementptr inbounds %struct.nn_stcp, ptr %30, i32 0, i32 0, !dbg !928
  %32 = load ptr, ptr %3, align 8, !dbg !929
  %33 = getelementptr inbounds %struct.nn_stcp, ptr %32, i32 0, i32 4, !dbg !930
  %34 = getelementptr inbounds %struct.nn_fsm_owner, ptr %33, i32 0, i32 1, !dbg !931
  store ptr %31, ptr %34, align 8, !dbg !932
  %35 = load ptr, ptr %4, align 8, !dbg !933
  %36 = load ptr, ptr %3, align 8, !dbg !934
  %37 = getelementptr inbounds %struct.nn_stcp, ptr %36, i32 0, i32 4, !dbg !935
  call void @nn_usock_swap_owner(ptr noundef %35, ptr noundef %37), !dbg !936
  %38 = load ptr, ptr %4, align 8, !dbg !937
  %39 = load ptr, ptr %3, align 8, !dbg !938
  %40 = getelementptr inbounds %struct.nn_stcp, ptr %39, i32 0, i32 2, !dbg !939
  store ptr %38, ptr %40, align 8, !dbg !940
  %41 = load ptr, ptr %3, align 8, !dbg !941
  %42 = getelementptr inbounds %struct.nn_stcp, ptr %41, i32 0, i32 0, !dbg !942
  call void @nn_fsm_start(ptr noundef %42), !dbg !943
  ret void, !dbg !944
}

declare void @nn_usock_swap_owner(ptr noundef, ptr noundef) #2

declare void @nn_fsm_start(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_stcp_stop(ptr noundef %0) #0 !dbg !945 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !946, metadata !DIExpression()), !dbg !947
  %3 = load ptr, ptr %2, align 8, !dbg !948
  %4 = getelementptr inbounds %struct.nn_stcp, ptr %3, i32 0, i32 0, !dbg !949
  call void @nn_fsm_stop(ptr noundef %4), !dbg !950
  ret void, !dbg !951
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
!llvm.module.flags = !{!363, !364, !365, !366, !367, !368, !369}
!llvm.ident = !{!370}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_stcp_pipebase_vfptr", scope: !2, file: !320, line: 56, type: !272, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !317, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/transports/tcp/stcp.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "27b90ccb49767b246e4d984da9fa70ed")
!4 = !{!5, !6, !316, !20, !185}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_stcp", file: !8, line: 41, size: 6976, elements: !9)
!8 = !DIFile(filename: "./src/transports/tcp/stcp.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "f6f65c8822f9985e9560a60ac94ab206")
!9 = !{!10, !41, !42, !231, !307, !308, !309, !310, !311, !312, !313, !314, !315}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !7, file: !8, line: 44, baseType: !11, size: 640)
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
!41 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !7, file: !8, line: 45, baseType: !20, size: 32, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !7, file: !8, line: 48, baseType: !43, size: 64, offset: 704)
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
!231 = !DIDerivedType(tag: DW_TAG_member, name: "streamhdr", scope: !7, file: !8, line: 51, baseType: !232, size: 3008, offset: 768)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_streamhdr", file: !233, line: 41, size: 3008, elements: !234)
!233 = !DIFile(filename: "./src/transports/tcp/../utils/streamhdr.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "7d060aeed02236eba444409cfc4451d2")
!234 = !{!235, !236, !237, !258, !259, !264, !302, !306}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !232, file: !233, line: 44, baseType: !11, size: 640)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !232, file: !233, line: 45, baseType: !20, size: 32, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !232, file: !233, line: 48, baseType: !238, size: 1664, offset: 704)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timer", file: !239, line: 32, size: 1664, elements: !240)
!239 = !DIFile(filename: "./src/transports/tcp/../utils/../../aio/timer.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "36b8c8892aa99fc49b85b12a9caf893a")
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
!267 = !DIFile(filename: "./src/transports/tcp/../../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
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
!307 = !DIDerivedType(tag: DW_TAG_member, name: "usock_owner", scope: !7, file: !8, line: 54, baseType: !260, size: 128, offset: 3776)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !7, file: !8, line: 57, baseType: !266, size: 1536, offset: 3904)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !7, file: !8, line: 60, baseType: !20, size: 32, offset: 5440)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "inhdr", scope: !7, file: !8, line: 63, baseType: !303, size: 64, offset: 5472)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "inmsg", scope: !7, file: !8, line: 66, baseType: !280, size: 512, offset: 5536)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !7, file: !8, line: 69, baseType: !20, size: 32, offset: 6048)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "outhdr", scope: !7, file: !8, line: 72, baseType: !303, size: 64, offset: 6080)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "outmsg", scope: !7, file: !8, line: 75, baseType: !280, size: 512, offset: 6144)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !7, file: !8, line: 78, baseType: !29, size: 320, offset: 6656)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!317 = !{!0, !318, !324, !329, !334, !339, !344, !346, !348, !353, !358}
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !320, line: 84, type: !321, isLocal: true, isDefinition: true)
!320 = !DIFile(filename: "./src/transports/tcp/stcp.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "27b90ccb49767b246e4d984da9fa70ed")
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 240, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 30)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !320, line: 84, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 272, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 34)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !320, line: 84, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 224, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 28)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !320, line: 102, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 424, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 53)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !320, line: 124, type: !341, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 288, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 36)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !320, line: 125, type: !85, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !320, line: 156, type: !85, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !320, line: 215, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 16, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 2)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !320, line: 266, type: !355, isLocal: true, isDefinition: true)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 136, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 17)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !320, line: 298, type: !360, isLocal: true, isDefinition: true)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 344, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 43)
!363 = !{i32 7, !"Dwarf Version", i32 5}
!364 = !{i32 2, !"Debug Info Version", i32 3}
!365 = !{i32 1, !"wchar_size", i32 4}
!366 = !{i32 8, !"PIC Level", i32 2}
!367 = !{i32 7, !"PIE Level", i32 2}
!368 = !{i32 7, !"uwtable", i32 2}
!369 = !{i32 7, !"frame-pointer", i32 2}
!370 = !{!"clang version 16.0.0"}
!371 = distinct !DISubprogram(name: "nn_stcp_send", scope: !320, file: !320, line: 117, type: !277, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !372)
!372 = !{}
!373 = !DILocalVariable(name: "self", arg: 1, scope: !371, file: !320, line: 117, type: !265)
!374 = !DILocation(line: 117, column: 46, scope: !371)
!375 = !DILocalVariable(name: "msg", arg: 2, scope: !371, file: !320, line: 117, type: !279)
!376 = !DILocation(line: 117, column: 67, scope: !371)
!377 = !DILocalVariable(name: "stcp", scope: !371, file: !320, line: 119, type: !6)
!378 = !DILocation(line: 119, column: 21, scope: !371)
!379 = !DILocalVariable(name: "iov", scope: !371, file: !320, line: 120, type: !380)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 384, elements: !214)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_iovec", file: !382, line: 165, size: 128, elements: !383)
!382 = !DIFile(filename: "src/nn.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "0c95956590725e5a1eedd7f7b192cc23")
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !381, file: !382, line: 166, baseType: !5, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !381, file: !382, line: 167, baseType: !185, size: 64, offset: 64)
!386 = !DILocation(line: 120, column: 21, scope: !371)
!387 = !DILocation(line: 122, column: 12, scope: !371)
!388 = !DILocation(line: 122, column: 10, scope: !371)
!389 = !DILocation(line: 124, column: 5, scope: !371)
!390 = !DILocation(line: 124, column: 5, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !320, line: 124, column: 5)
!392 = distinct !DILexicalBlock(scope: !371, file: !320, line: 124, column: 5)
!393 = !DILocation(line: 124, column: 5, scope: !392)
!394 = !DILocation(line: 124, column: 5, scope: !395)
!395 = distinct !DILexicalBlock(scope: !391, file: !320, line: 124, column: 5)
!396 = !DILocation(line: 125, column: 5, scope: !371)
!397 = !DILocation(line: 125, column: 5, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !320, line: 125, column: 5)
!399 = distinct !DILexicalBlock(scope: !371, file: !320, line: 125, column: 5)
!400 = !DILocation(line: 125, column: 5, scope: !399)
!401 = !DILocation(line: 125, column: 5, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !320, line: 125, column: 5)
!403 = !DILocation(line: 128, column: 19, scope: !371)
!404 = !DILocation(line: 128, column: 25, scope: !371)
!405 = !DILocation(line: 128, column: 5, scope: !371)
!406 = !DILocation(line: 129, column: 17, scope: !371)
!407 = !DILocation(line: 129, column: 23, scope: !371)
!408 = !DILocation(line: 129, column: 31, scope: !371)
!409 = !DILocation(line: 129, column: 5, scope: !371)
!410 = !DILocation(line: 132, column: 15, scope: !371)
!411 = !DILocation(line: 132, column: 21, scope: !371)
!412 = !DILocation(line: 132, column: 48, scope: !371)
!413 = !DILocation(line: 132, column: 54, scope: !371)
!414 = !DILocation(line: 132, column: 61, scope: !371)
!415 = !DILocation(line: 132, column: 29, scope: !371)
!416 = !DILocation(line: 133, column: 28, scope: !371)
!417 = !DILocation(line: 133, column: 34, scope: !371)
!418 = !DILocation(line: 133, column: 41, scope: !371)
!419 = !DILocation(line: 133, column: 9, scope: !371)
!420 = !DILocation(line: 132, column: 66, scope: !371)
!421 = !DILocation(line: 132, column: 5, scope: !371)
!422 = !DILocation(line: 136, column: 24, scope: !371)
!423 = !DILocation(line: 136, column: 30, scope: !371)
!424 = !DILocation(line: 136, column: 5, scope: !371)
!425 = !DILocation(line: 136, column: 13, scope: !371)
!426 = !DILocation(line: 136, column: 22, scope: !371)
!427 = !DILocation(line: 137, column: 5, scope: !371)
!428 = !DILocation(line: 137, column: 13, scope: !371)
!429 = !DILocation(line: 137, column: 21, scope: !371)
!430 = !DILocation(line: 138, column: 43, scope: !371)
!431 = !DILocation(line: 138, column: 49, scope: !371)
!432 = !DILocation(line: 138, column: 56, scope: !371)
!433 = !DILocation(line: 138, column: 24, scope: !371)
!434 = !DILocation(line: 138, column: 5, scope: !371)
!435 = !DILocation(line: 138, column: 13, scope: !371)
!436 = !DILocation(line: 138, column: 22, scope: !371)
!437 = !DILocation(line: 139, column: 42, scope: !371)
!438 = !DILocation(line: 139, column: 48, scope: !371)
!439 = !DILocation(line: 139, column: 55, scope: !371)
!440 = !DILocation(line: 139, column: 23, scope: !371)
!441 = !DILocation(line: 139, column: 5, scope: !371)
!442 = !DILocation(line: 139, column: 13, scope: !371)
!443 = !DILocation(line: 139, column: 21, scope: !371)
!444 = !DILocation(line: 140, column: 43, scope: !371)
!445 = !DILocation(line: 140, column: 49, scope: !371)
!446 = !DILocation(line: 140, column: 56, scope: !371)
!447 = !DILocation(line: 140, column: 24, scope: !371)
!448 = !DILocation(line: 140, column: 5, scope: !371)
!449 = !DILocation(line: 140, column: 13, scope: !371)
!450 = !DILocation(line: 140, column: 22, scope: !371)
!451 = !DILocation(line: 141, column: 42, scope: !371)
!452 = !DILocation(line: 141, column: 48, scope: !371)
!453 = !DILocation(line: 141, column: 55, scope: !371)
!454 = !DILocation(line: 141, column: 23, scope: !371)
!455 = !DILocation(line: 141, column: 5, scope: !371)
!456 = !DILocation(line: 141, column: 13, scope: !371)
!457 = !DILocation(line: 141, column: 21, scope: !371)
!458 = !DILocation(line: 142, column: 20, scope: !371)
!459 = !DILocation(line: 142, column: 26, scope: !371)
!460 = !DILocation(line: 142, column: 33, scope: !371)
!461 = !DILocation(line: 142, column: 5, scope: !371)
!462 = !DILocation(line: 144, column: 5, scope: !371)
!463 = !DILocation(line: 144, column: 11, scope: !371)
!464 = !DILocation(line: 144, column: 20, scope: !371)
!465 = !DILocation(line: 146, column: 5, scope: !371)
!466 = distinct !DISubprogram(name: "nn_stcp_recv", scope: !320, file: !320, line: 149, type: !277, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !372)
!467 = !DILocalVariable(name: "self", arg: 1, scope: !466, file: !320, line: 149, type: !265)
!468 = !DILocation(line: 149, column: 46, scope: !466)
!469 = !DILocalVariable(name: "msg", arg: 2, scope: !466, file: !320, line: 149, type: !279)
!470 = !DILocation(line: 149, column: 67, scope: !466)
!471 = !DILocalVariable(name: "stcp", scope: !466, file: !320, line: 151, type: !6)
!472 = !DILocation(line: 151, column: 21, scope: !466)
!473 = !DILocation(line: 153, column: 12, scope: !466)
!474 = !DILocation(line: 153, column: 10, scope: !466)
!475 = !DILocation(line: 155, column: 5, scope: !466)
!476 = !DILocation(line: 155, column: 5, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !320, line: 155, column: 5)
!478 = distinct !DILexicalBlock(scope: !466, file: !320, line: 155, column: 5)
!479 = !DILocation(line: 155, column: 5, scope: !478)
!480 = !DILocation(line: 155, column: 5, scope: !481)
!481 = distinct !DILexicalBlock(scope: !477, file: !320, line: 155, column: 5)
!482 = !DILocation(line: 156, column: 5, scope: !466)
!483 = !DILocation(line: 156, column: 5, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !320, line: 156, column: 5)
!485 = distinct !DILexicalBlock(scope: !466, file: !320, line: 156, column: 5)
!486 = !DILocation(line: 156, column: 5, scope: !485)
!487 = !DILocation(line: 156, column: 5, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !320, line: 156, column: 5)
!489 = !DILocation(line: 159, column: 16, scope: !466)
!490 = !DILocation(line: 159, column: 22, scope: !466)
!491 = !DILocation(line: 159, column: 28, scope: !466)
!492 = !DILocation(line: 159, column: 5, scope: !466)
!493 = !DILocation(line: 160, column: 19, scope: !466)
!494 = !DILocation(line: 160, column: 25, scope: !466)
!495 = !DILocation(line: 160, column: 5, scope: !466)
!496 = !DILocation(line: 163, column: 5, scope: !466)
!497 = !DILocation(line: 163, column: 11, scope: !466)
!498 = !DILocation(line: 163, column: 19, scope: !466)
!499 = !DILocation(line: 164, column: 20, scope: !466)
!500 = !DILocation(line: 164, column: 26, scope: !466)
!501 = !DILocation(line: 164, column: 33, scope: !466)
!502 = !DILocation(line: 164, column: 39, scope: !466)
!503 = !DILocation(line: 164, column: 5, scope: !466)
!504 = !DILocation(line: 166, column: 5, scope: !466)
!505 = distinct !DISubprogram(name: "nn_stcp_init", scope: !320, file: !320, line: 65, type: !506, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !372)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !6, !20, !508, !19}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !267, line: 81, size: 128, elements: !510)
!510 = !{!511, !521}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !509, file: !267, line: 82, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase_vfptr", file: !267, line: 70, size: 128, elements: !515)
!515 = !{!516, !520}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !514, file: !267, line: 75, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !508}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !514, file: !267, line: 78, baseType: !517, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !509, file: !267, line: 83, baseType: !522, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ep", file: !267, line: 83, flags: DIFlagFwdDecl)
!524 = !DILocalVariable(name: "self", arg: 1, scope: !505, file: !320, line: 65, type: !6)
!525 = !DILocation(line: 65, column: 36, scope: !505)
!526 = !DILocalVariable(name: "src", arg: 2, scope: !505, file: !320, line: 65, type: !20)
!527 = !DILocation(line: 65, column: 46, scope: !505)
!528 = !DILocalVariable(name: "epbase", arg: 3, scope: !505, file: !320, line: 66, type: !508)
!529 = !DILocation(line: 66, column: 23, scope: !505)
!530 = !DILocalVariable(name: "owner", arg: 4, scope: !505, file: !320, line: 66, type: !19)
!531 = !DILocation(line: 66, column: 46, scope: !505)
!532 = !DILocation(line: 68, column: 19, scope: !505)
!533 = !DILocation(line: 68, column: 25, scope: !505)
!534 = !DILocation(line: 68, column: 47, scope: !505)
!535 = !DILocation(line: 68, column: 52, scope: !505)
!536 = !DILocation(line: 68, column: 58, scope: !505)
!537 = !DILocation(line: 68, column: 5, scope: !505)
!538 = !DILocation(line: 69, column: 5, scope: !505)
!539 = !DILocation(line: 69, column: 11, scope: !505)
!540 = !DILocation(line: 69, column: 17, scope: !505)
!541 = !DILocation(line: 70, column: 25, scope: !505)
!542 = !DILocation(line: 70, column: 31, scope: !505)
!543 = !DILocation(line: 70, column: 66, scope: !505)
!544 = !DILocation(line: 70, column: 72, scope: !505)
!545 = !DILocation(line: 70, column: 5, scope: !505)
!546 = !DILocation(line: 71, column: 5, scope: !505)
!547 = !DILocation(line: 71, column: 11, scope: !505)
!548 = !DILocation(line: 71, column: 17, scope: !505)
!549 = !DILocation(line: 72, column: 5, scope: !505)
!550 = !DILocation(line: 72, column: 11, scope: !505)
!551 = !DILocation(line: 72, column: 23, scope: !505)
!552 = !DILocation(line: 72, column: 27, scope: !505)
!553 = !DILocation(line: 73, column: 5, scope: !505)
!554 = !DILocation(line: 73, column: 11, scope: !505)
!555 = !DILocation(line: 73, column: 23, scope: !505)
!556 = !DILocation(line: 73, column: 27, scope: !505)
!557 = !DILocation(line: 74, column: 24, scope: !505)
!558 = !DILocation(line: 74, column: 30, scope: !505)
!559 = !DILocation(line: 74, column: 65, scope: !505)
!560 = !DILocation(line: 74, column: 5, scope: !505)
!561 = !DILocation(line: 75, column: 5, scope: !505)
!562 = !DILocation(line: 75, column: 11, scope: !505)
!563 = !DILocation(line: 75, column: 19, scope: !505)
!564 = !DILocation(line: 76, column: 19, scope: !505)
!565 = !DILocation(line: 76, column: 25, scope: !505)
!566 = !DILocation(line: 76, column: 5, scope: !505)
!567 = !DILocation(line: 77, column: 5, scope: !505)
!568 = !DILocation(line: 77, column: 11, scope: !505)
!569 = !DILocation(line: 77, column: 20, scope: !505)
!570 = !DILocation(line: 78, column: 19, scope: !505)
!571 = !DILocation(line: 78, column: 25, scope: !505)
!572 = !DILocation(line: 78, column: 5, scope: !505)
!573 = !DILocation(line: 79, column: 25, scope: !505)
!574 = !DILocation(line: 79, column: 31, scope: !505)
!575 = !DILocation(line: 79, column: 5, scope: !505)
!576 = !DILocation(line: 80, column: 1, scope: !505)
!577 = distinct !DISubprogram(name: "nn_stcp_handler", scope: !320, file: !320, line: 169, type: !17, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !372)
!578 = !DILocalVariable(name: "self", arg: 1, scope: !577, file: !320, line: 169, type: !19)
!579 = !DILocation(line: 169, column: 45, scope: !577)
!580 = !DILocalVariable(name: "src", arg: 2, scope: !577, file: !320, line: 169, type: !20)
!581 = !DILocation(line: 169, column: 55, scope: !577)
!582 = !DILocalVariable(name: "type", arg: 3, scope: !577, file: !320, line: 169, type: !20)
!583 = !DILocation(line: 169, column: 64, scope: !577)
!584 = !DILocalVariable(name: "srcptr", arg: 4, scope: !577, file: !320, line: 170, type: !5)
!585 = !DILocation(line: 170, column: 11, scope: !577)
!586 = !DILocalVariable(name: "rc", scope: !577, file: !320, line: 172, type: !20)
!587 = !DILocation(line: 172, column: 9, scope: !577)
!588 = !DILocalVariable(name: "stcp", scope: !577, file: !320, line: 173, type: !6)
!589 = !DILocation(line: 173, column: 21, scope: !577)
!590 = !DILocalVariable(name: "size", scope: !577, file: !320, line: 174, type: !140)
!591 = !DILocation(line: 174, column: 14, scope: !577)
!592 = !DILocation(line: 176, column: 12, scope: !577)
!593 = !DILocation(line: 176, column: 10, scope: !577)
!594 = !DILocation(line: 181, column: 9, scope: !595)
!595 = distinct !DILexicalBlock(scope: !577, file: !320, line: 181, column: 9)
!596 = !DILocation(line: 0, scope: !595)
!597 = !DILocation(line: 181, column: 9, scope: !577)
!598 = !DILocation(line: 182, column: 28, scope: !599)
!599 = distinct !DILexicalBlock(scope: !595, file: !320, line: 181, column: 64)
!600 = !DILocation(line: 182, column: 34, scope: !599)
!601 = !DILocation(line: 182, column: 9, scope: !599)
!602 = !DILocation(line: 183, column: 29, scope: !599)
!603 = !DILocation(line: 183, column: 35, scope: !599)
!604 = !DILocation(line: 183, column: 9, scope: !599)
!605 = !DILocation(line: 184, column: 9, scope: !599)
!606 = !DILocation(line: 184, column: 15, scope: !599)
!607 = !DILocation(line: 184, column: 21, scope: !599)
!608 = !DILocation(line: 185, column: 5, scope: !599)
!609 = !DILocation(line: 186, column: 9, scope: !610)
!610 = distinct !DILexicalBlock(scope: !577, file: !320, line: 186, column: 9)
!611 = !DILocation(line: 186, column: 9, scope: !577)
!612 = !DILocation(line: 187, column: 35, scope: !613)
!613 = distinct !DILexicalBlock(scope: !614, file: !320, line: 187, column: 13)
!614 = distinct !DILexicalBlock(scope: !610, file: !320, line: 186, column: 58)
!615 = !DILocation(line: 187, column: 41, scope: !613)
!616 = !DILocation(line: 187, column: 13, scope: !613)
!617 = !DILocation(line: 187, column: 13, scope: !614)
!618 = !DILocation(line: 188, column: 34, scope: !619)
!619 = distinct !DILexicalBlock(scope: !613, file: !320, line: 187, column: 53)
!620 = !DILocation(line: 188, column: 40, scope: !619)
!621 = !DILocation(line: 188, column: 48, scope: !619)
!622 = !DILocation(line: 188, column: 54, scope: !619)
!623 = !DILocation(line: 188, column: 13, scope: !619)
!624 = !DILocation(line: 189, column: 13, scope: !619)
!625 = !DILocation(line: 189, column: 19, scope: !619)
!626 = !DILocation(line: 189, column: 25, scope: !619)
!627 = !DILocation(line: 190, column: 13, scope: !619)
!628 = !DILocation(line: 190, column: 19, scope: !619)
!629 = !DILocation(line: 190, column: 31, scope: !619)
!630 = !DILocation(line: 190, column: 35, scope: !619)
!631 = !DILocation(line: 191, column: 13, scope: !619)
!632 = !DILocation(line: 191, column: 19, scope: !619)
!633 = !DILocation(line: 191, column: 31, scope: !619)
!634 = !DILocation(line: 191, column: 35, scope: !619)
!635 = !DILocation(line: 192, column: 13, scope: !619)
!636 = !DILocation(line: 192, column: 19, scope: !619)
!637 = !DILocation(line: 192, column: 25, scope: !619)
!638 = !DILocation(line: 193, column: 30, scope: !619)
!639 = !DILocation(line: 193, column: 36, scope: !619)
!640 = !DILocation(line: 193, column: 13, scope: !619)
!641 = !DILocation(line: 194, column: 13, scope: !619)
!642 = !DILocation(line: 196, column: 9, scope: !614)
!643 = !DILocation(line: 199, column: 13, scope: !577)
!644 = !DILocation(line: 199, column: 19, scope: !577)
!645 = !DILocation(line: 199, column: 5, scope: !577)
!646 = !DILocation(line: 205, column: 17, scope: !647)
!647 = distinct !DILexicalBlock(scope: !577, file: !320, line: 199, column: 26)
!648 = !DILocation(line: 205, column: 9, scope: !647)
!649 = !DILocation(line: 208, column: 21, scope: !650)
!650 = distinct !DILexicalBlock(scope: !647, file: !320, line: 205, column: 22)
!651 = !DILocation(line: 208, column: 13, scope: !650)
!652 = !DILocation(line: 210, column: 38, scope: !653)
!653 = distinct !DILexicalBlock(scope: !650, file: !320, line: 208, column: 27)
!654 = !DILocation(line: 210, column: 44, scope: !653)
!655 = !DILocation(line: 210, column: 55, scope: !653)
!656 = !DILocation(line: 210, column: 61, scope: !653)
!657 = !DILocation(line: 211, column: 22, scope: !653)
!658 = !DILocation(line: 211, column: 28, scope: !653)
!659 = !DILocation(line: 210, column: 17, scope: !653)
!660 = !DILocation(line: 212, column: 17, scope: !653)
!661 = !DILocation(line: 212, column: 23, scope: !653)
!662 = !DILocation(line: 212, column: 29, scope: !653)
!663 = !DILocation(line: 213, column: 17, scope: !653)
!664 = !DILocation(line: 215, column: 17, scope: !653)
!665 = !DILocation(line: 215, column: 17, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !320, line: 215, column: 17)
!667 = distinct !DILexicalBlock(scope: !668, file: !320, line: 215, column: 17)
!668 = distinct !DILexicalBlock(scope: !653, file: !320, line: 215, column: 17)
!669 = !DILocation(line: 216, column: 13, scope: !653)
!670 = !DILocation(line: 219, column: 13, scope: !650)
!671 = !DILocation(line: 219, column: 13, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !320, line: 219, column: 13)
!673 = distinct !DILexicalBlock(scope: !674, file: !320, line: 219, column: 13)
!674 = distinct !DILexicalBlock(scope: !650, file: !320, line: 219, column: 13)
!675 = !DILocation(line: 220, column: 9, scope: !650)
!676 = !DILocation(line: 226, column: 17, scope: !647)
!677 = !DILocation(line: 226, column: 9, scope: !647)
!678 = !DILocation(line: 229, column: 21, scope: !679)
!679 = distinct !DILexicalBlock(scope: !647, file: !320, line: 226, column: 22)
!680 = !DILocation(line: 229, column: 13, scope: !679)
!681 = !DILocation(line: 234, column: 37, scope: !682)
!682 = distinct !DILexicalBlock(scope: !679, file: !320, line: 229, column: 27)
!683 = !DILocation(line: 234, column: 43, scope: !682)
!684 = !DILocation(line: 234, column: 17, scope: !682)
!685 = !DILocation(line: 235, column: 17, scope: !682)
!686 = !DILocation(line: 235, column: 23, scope: !682)
!687 = !DILocation(line: 235, column: 29, scope: !682)
!688 = !DILocation(line: 236, column: 17, scope: !682)
!689 = !DILocation(line: 242, column: 17, scope: !682)
!690 = !DILocation(line: 242, column: 23, scope: !682)
!691 = !DILocation(line: 242, column: 29, scope: !682)
!692 = !DILocation(line: 243, column: 32, scope: !682)
!693 = !DILocation(line: 243, column: 38, scope: !682)
!694 = !DILocation(line: 243, column: 44, scope: !682)
!695 = !DILocation(line: 243, column: 50, scope: !682)
!696 = !DILocation(line: 243, column: 17, scope: !682)
!697 = !DILocation(line: 244, column: 17, scope: !682)
!698 = !DILocation(line: 247, column: 17, scope: !682)
!699 = !DILocation(line: 247, column: 17, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !320, line: 247, column: 17)
!701 = distinct !DILexicalBlock(scope: !702, file: !320, line: 247, column: 17)
!702 = distinct !DILexicalBlock(scope: !682, file: !320, line: 247, column: 17)
!703 = !DILocation(line: 248, column: 13, scope: !682)
!704 = !DILocation(line: 251, column: 13, scope: !679)
!705 = !DILocation(line: 251, column: 13, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !320, line: 251, column: 13)
!707 = distinct !DILexicalBlock(scope: !708, file: !320, line: 251, column: 13)
!708 = distinct !DILexicalBlock(scope: !679, file: !320, line: 251, column: 13)
!709 = !DILocation(line: 252, column: 9, scope: !679)
!710 = !DILocation(line: 258, column: 17, scope: !647)
!711 = !DILocation(line: 258, column: 9, scope: !647)
!712 = !DILocation(line: 261, column: 21, scope: !713)
!713 = distinct !DILexicalBlock(scope: !647, file: !320, line: 258, column: 22)
!714 = !DILocation(line: 261, column: 13, scope: !713)
!715 = !DILocation(line: 265, column: 43, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !320, line: 261, column: 27)
!717 = !DILocation(line: 265, column: 49, scope: !716)
!718 = !DILocation(line: 265, column: 23, scope: !716)
!719 = !DILocation(line: 265, column: 21, scope: !716)
!720 = !DILocation(line: 266, column: 18, scope: !716)
!721 = !DILocation(line: 266, column: 18, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !320, line: 266, column: 18)
!723 = distinct !DILexicalBlock(scope: !716, file: !320, line: 266, column: 18)
!724 = !DILocation(line: 266, column: 18, scope: !723)
!725 = !DILocation(line: 266, column: 18, scope: !726)
!726 = distinct !DILexicalBlock(scope: !722, file: !320, line: 266, column: 18)
!727 = !DILocation(line: 269, column: 18, scope: !716)
!728 = !DILocation(line: 269, column: 24, scope: !716)
!729 = !DILocation(line: 269, column: 32, scope: !716)
!730 = !DILocation(line: 270, column: 33, scope: !716)
!731 = !DILocation(line: 270, column: 39, scope: !716)
!732 = !DILocation(line: 270, column: 47, scope: !716)
!733 = !DILocation(line: 270, column: 53, scope: !716)
!734 = !DILocation(line: 270, column: 18, scope: !716)
!735 = !DILocation(line: 274, column: 18, scope: !716)
!736 = !DILocation(line: 274, column: 24, scope: !716)
!737 = !DILocation(line: 274, column: 33, scope: !716)
!738 = !DILocation(line: 276, column: 18, scope: !716)
!739 = !DILocation(line: 276, column: 24, scope: !716)
!740 = !DILocation(line: 276, column: 30, scope: !716)
!741 = !DILocation(line: 277, column: 18, scope: !716)
!742 = !DILocation(line: 280, column: 17, scope: !716)
!743 = !DILocation(line: 280, column: 17, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !320, line: 280, column: 17)
!745 = distinct !DILexicalBlock(scope: !746, file: !320, line: 280, column: 17)
!746 = distinct !DILexicalBlock(scope: !716, file: !320, line: 280, column: 17)
!747 = !DILocation(line: 281, column: 13, scope: !716)
!748 = !DILocation(line: 284, column: 13, scope: !713)
!749 = !DILocation(line: 284, column: 13, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !320, line: 284, column: 13)
!751 = distinct !DILexicalBlock(scope: !752, file: !320, line: 284, column: 13)
!752 = distinct !DILexicalBlock(scope: !713, file: !320, line: 284, column: 13)
!753 = !DILocation(line: 285, column: 9, scope: !713)
!754 = !DILocation(line: 291, column: 17, scope: !647)
!755 = !DILocation(line: 291, column: 9, scope: !647)
!756 = !DILocation(line: 294, column: 21, scope: !757)
!757 = distinct !DILexicalBlock(scope: !647, file: !320, line: 291, column: 22)
!758 = !DILocation(line: 294, column: 13, scope: !757)
!759 = !DILocation(line: 298, column: 17, scope: !760)
!760 = distinct !DILexicalBlock(scope: !757, file: !320, line: 294, column: 27)
!761 = !DILocation(line: 298, column: 17, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !320, line: 298, column: 17)
!763 = distinct !DILexicalBlock(scope: !760, file: !320, line: 298, column: 17)
!764 = !DILocation(line: 298, column: 17, scope: !763)
!765 = !DILocation(line: 298, column: 17, scope: !766)
!766 = distinct !DILexicalBlock(scope: !762, file: !320, line: 298, column: 17)
!767 = !DILocation(line: 299, column: 17, scope: !760)
!768 = !DILocation(line: 299, column: 23, scope: !760)
!769 = !DILocation(line: 299, column: 32, scope: !760)
!770 = !DILocation(line: 300, column: 31, scope: !760)
!771 = !DILocation(line: 300, column: 37, scope: !760)
!772 = !DILocation(line: 300, column: 17, scope: !760)
!773 = !DILocation(line: 301, column: 31, scope: !760)
!774 = !DILocation(line: 301, column: 37, scope: !760)
!775 = !DILocation(line: 301, column: 17, scope: !760)
!776 = !DILocation(line: 302, column: 36, scope: !760)
!777 = !DILocation(line: 302, column: 42, scope: !760)
!778 = !DILocation(line: 302, column: 17, scope: !760)
!779 = !DILocation(line: 303, column: 17, scope: !760)
!780 = !DILocation(line: 307, column: 25, scope: !760)
!781 = !DILocation(line: 307, column: 31, scope: !760)
!782 = !DILocation(line: 307, column: 17, scope: !760)
!783 = !DILocation(line: 312, column: 38, scope: !784)
!784 = distinct !DILexicalBlock(scope: !760, file: !320, line: 307, column: 40)
!785 = !DILocation(line: 312, column: 44, scope: !784)
!786 = !DILocation(line: 312, column: 28, scope: !784)
!787 = !DILocation(line: 312, column: 26, scope: !784)
!788 = !DILocation(line: 313, column: 35, scope: !784)
!789 = !DILocation(line: 313, column: 41, scope: !784)
!790 = !DILocation(line: 313, column: 21, scope: !784)
!791 = !DILocation(line: 314, column: 35, scope: !784)
!792 = !DILocation(line: 314, column: 41, scope: !784)
!793 = !DILocation(line: 314, column: 57, scope: !784)
!794 = !DILocation(line: 314, column: 21, scope: !784)
!795 = !DILocation(line: 317, column: 26, scope: !796)
!796 = distinct !DILexicalBlock(scope: !784, file: !320, line: 317, column: 25)
!797 = !DILocation(line: 317, column: 25, scope: !784)
!798 = !DILocation(line: 318, column: 25, scope: !799)
!799 = distinct !DILexicalBlock(scope: !796, file: !320, line: 317, column: 32)
!800 = !DILocation(line: 318, column: 31, scope: !799)
!801 = !DILocation(line: 318, column: 39, scope: !799)
!802 = !DILocation(line: 319, column: 48, scope: !799)
!803 = !DILocation(line: 319, column: 54, scope: !799)
!804 = !DILocation(line: 319, column: 25, scope: !799)
!805 = !DILocation(line: 320, column: 25, scope: !799)
!806 = !DILocation(line: 324, column: 21, scope: !784)
!807 = !DILocation(line: 324, column: 27, scope: !784)
!808 = !DILocation(line: 324, column: 35, scope: !784)
!809 = !DILocation(line: 325, column: 36, scope: !784)
!810 = !DILocation(line: 325, column: 42, scope: !784)
!811 = !DILocation(line: 326, column: 44, scope: !784)
!812 = !DILocation(line: 326, column: 50, scope: !784)
!813 = !DILocation(line: 326, column: 56, scope: !784)
!814 = !DILocation(line: 326, column: 25, scope: !784)
!815 = !DILocation(line: 326, column: 72, scope: !784)
!816 = !DILocation(line: 325, column: 21, scope: !784)
!817 = !DILocation(line: 328, column: 21, scope: !784)
!818 = !DILocation(line: 334, column: 21, scope: !784)
!819 = !DILocation(line: 334, column: 27, scope: !784)
!820 = !DILocation(line: 334, column: 35, scope: !784)
!821 = !DILocation(line: 335, column: 44, scope: !784)
!822 = !DILocation(line: 335, column: 50, scope: !784)
!823 = !DILocation(line: 335, column: 21, scope: !784)
!824 = !DILocation(line: 337, column: 21, scope: !784)
!825 = !DILocation(line: 340, column: 21, scope: !784)
!826 = !DILocation(line: 340, column: 21, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !320, line: 340, column: 21)
!828 = distinct !DILexicalBlock(scope: !829, file: !320, line: 340, column: 21)
!829 = distinct !DILexicalBlock(scope: !784, file: !320, line: 340, column: 21)
!830 = !DILocation(line: 341, column: 17, scope: !784)
!831 = !DILocation(line: 344, column: 36, scope: !760)
!832 = !DILocation(line: 344, column: 42, scope: !760)
!833 = !DILocation(line: 344, column: 17, scope: !760)
!834 = !DILocation(line: 345, column: 17, scope: !760)
!835 = !DILocation(line: 345, column: 23, scope: !760)
!836 = !DILocation(line: 345, column: 29, scope: !760)
!837 = !DILocation(line: 346, column: 32, scope: !760)
!838 = !DILocation(line: 346, column: 38, scope: !760)
!839 = !DILocation(line: 346, column: 44, scope: !760)
!840 = !DILocation(line: 346, column: 50, scope: !760)
!841 = !DILocation(line: 346, column: 17, scope: !760)
!842 = !DILocation(line: 347, column: 17, scope: !760)
!843 = !DILocation(line: 350, column: 17, scope: !760)
!844 = !DILocation(line: 350, column: 17, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !320, line: 350, column: 17)
!846 = distinct !DILexicalBlock(scope: !847, file: !320, line: 350, column: 17)
!847 = distinct !DILexicalBlock(scope: !760, file: !320, line: 350, column: 17)
!848 = !DILocation(line: 351, column: 13, scope: !760)
!849 = !DILocation(line: 354, column: 13, scope: !757)
!850 = !DILocation(line: 354, column: 13, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !320, line: 354, column: 13)
!852 = distinct !DILexicalBlock(scope: !853, file: !320, line: 354, column: 13)
!853 = distinct !DILexicalBlock(scope: !757, file: !320, line: 354, column: 13)
!854 = !DILocation(line: 355, column: 9, scope: !757)
!855 = !DILocation(line: 363, column: 9, scope: !647)
!856 = !DILocation(line: 363, column: 9, scope: !857)
!857 = distinct !DILexicalBlock(scope: !858, file: !320, line: 363, column: 9)
!858 = distinct !DILexicalBlock(scope: !859, file: !320, line: 363, column: 9)
!859 = distinct !DILexicalBlock(scope: !647, file: !320, line: 363, column: 9)
!860 = !DILocation(line: 363, column: 9, scope: !859)
!861 = !DILocation(line: 369, column: 9, scope: !647)
!862 = !DILocation(line: 369, column: 9, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !320, line: 369, column: 9)
!864 = distinct !DILexicalBlock(scope: !865, file: !320, line: 369, column: 9)
!865 = distinct !DILexicalBlock(scope: !647, file: !320, line: 369, column: 9)
!866 = !DILocation(line: 370, column: 5, scope: !647)
!867 = !DILocation(line: 371, column: 1, scope: !577)
!868 = distinct !DISubprogram(name: "nn_stcp_term", scope: !320, file: !320, line: 82, type: !869, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !372)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !6}
!871 = !DILocalVariable(name: "self", arg: 1, scope: !868, file: !320, line: 82, type: !6)
!872 = !DILocation(line: 82, column: 36, scope: !868)
!873 = !DILocation(line: 84, column: 5, scope: !868)
!874 = !DILocation(line: 84, column: 5, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !320, line: 84, column: 5)
!876 = distinct !DILexicalBlock(scope: !868, file: !320, line: 84, column: 5)
!877 = !DILocation(line: 84, column: 5, scope: !876)
!878 = !DILocation(line: 84, column: 5, scope: !879)
!879 = distinct !DILexicalBlock(scope: !875, file: !320, line: 84, column: 5)
!880 = !DILocation(line: 86, column: 25, scope: !868)
!881 = !DILocation(line: 86, column: 31, scope: !868)
!882 = !DILocation(line: 86, column: 5, scope: !868)
!883 = !DILocation(line: 87, column: 19, scope: !868)
!884 = !DILocation(line: 87, column: 25, scope: !868)
!885 = !DILocation(line: 87, column: 5, scope: !868)
!886 = !DILocation(line: 88, column: 19, scope: !868)
!887 = !DILocation(line: 88, column: 25, scope: !868)
!888 = !DILocation(line: 88, column: 5, scope: !868)
!889 = !DILocation(line: 89, column: 24, scope: !868)
!890 = !DILocation(line: 89, column: 30, scope: !868)
!891 = !DILocation(line: 89, column: 5, scope: !868)
!892 = !DILocation(line: 90, column: 25, scope: !868)
!893 = !DILocation(line: 90, column: 31, scope: !868)
!894 = !DILocation(line: 90, column: 5, scope: !868)
!895 = !DILocation(line: 91, column: 19, scope: !868)
!896 = !DILocation(line: 91, column: 25, scope: !868)
!897 = !DILocation(line: 91, column: 5, scope: !868)
!898 = !DILocation(line: 92, column: 1, scope: !868)
!899 = distinct !DISubprogram(name: "nn_stcp_isidle", scope: !320, file: !320, line: 94, type: !900, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !372)
!900 = !DISubroutineType(types: !901)
!901 = !{!20, !6}
!902 = !DILocalVariable(name: "self", arg: 1, scope: !899, file: !320, line: 94, type: !6)
!903 = !DILocation(line: 94, column: 37, scope: !899)
!904 = !DILocation(line: 96, column: 28, scope: !899)
!905 = !DILocation(line: 96, column: 34, scope: !899)
!906 = !DILocation(line: 96, column: 12, scope: !899)
!907 = !DILocation(line: 96, column: 5, scope: !899)
!908 = distinct !DISubprogram(name: "nn_stcp_start", scope: !320, file: !320, line: 99, type: !909, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !372)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !6, !43}
!911 = !DILocalVariable(name: "self", arg: 1, scope: !908, file: !320, line: 99, type: !6)
!912 = !DILocation(line: 99, column: 37, scope: !908)
!913 = !DILocalVariable(name: "usock", arg: 2, scope: !908, file: !320, line: 99, type: !43)
!914 = !DILocation(line: 99, column: 60, scope: !908)
!915 = !DILocation(line: 102, column: 5, scope: !908)
!916 = !DILocation(line: 102, column: 5, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !320, line: 102, column: 5)
!918 = distinct !DILexicalBlock(scope: !908, file: !320, line: 102, column: 5)
!919 = !DILocation(line: 0, scope: !917)
!920 = !DILocation(line: 102, column: 5, scope: !918)
!921 = !DILocation(line: 102, column: 5, scope: !922)
!922 = distinct !DILexicalBlock(scope: !917, file: !320, line: 102, column: 5)
!923 = !DILocation(line: 103, column: 5, scope: !908)
!924 = !DILocation(line: 103, column: 11, scope: !908)
!925 = !DILocation(line: 103, column: 23, scope: !908)
!926 = !DILocation(line: 103, column: 27, scope: !908)
!927 = !DILocation(line: 104, column: 30, scope: !908)
!928 = !DILocation(line: 104, column: 36, scope: !908)
!929 = !DILocation(line: 104, column: 5, scope: !908)
!930 = !DILocation(line: 104, column: 11, scope: !908)
!931 = !DILocation(line: 104, column: 23, scope: !908)
!932 = !DILocation(line: 104, column: 27, scope: !908)
!933 = !DILocation(line: 105, column: 26, scope: !908)
!934 = !DILocation(line: 105, column: 34, scope: !908)
!935 = !DILocation(line: 105, column: 40, scope: !908)
!936 = !DILocation(line: 105, column: 5, scope: !908)
!937 = !DILocation(line: 106, column: 19, scope: !908)
!938 = !DILocation(line: 106, column: 5, scope: !908)
!939 = !DILocation(line: 106, column: 11, scope: !908)
!940 = !DILocation(line: 106, column: 17, scope: !908)
!941 = !DILocation(line: 109, column: 20, scope: !908)
!942 = !DILocation(line: 109, column: 26, scope: !908)
!943 = !DILocation(line: 109, column: 5, scope: !908)
!944 = !DILocation(line: 110, column: 1, scope: !908)
!945 = distinct !DISubprogram(name: "nn_stcp_stop", scope: !320, file: !320, line: 112, type: !869, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !372)
!946 = !DILocalVariable(name: "self", arg: 1, scope: !945, file: !320, line: 112, type: !6)
!947 = !DILocation(line: 112, column: 36, scope: !945)
!948 = !DILocation(line: 114, column: 19, scope: !945)
!949 = !DILocation(line: 114, column: 25, scope: !945)
!950 = !DILocation(line: 114, column: 5, scope: !945)
!951 = !DILocation(line: 115, column: 1, scope: !945)
