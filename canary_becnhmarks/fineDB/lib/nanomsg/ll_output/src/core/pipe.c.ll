; ModuleID = './src/core/pipe.c'
source_filename = "./src/core/pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_epbase = type { ptr, ptr }
%struct.nn_ep = type { %struct.nn_fsm, i32, ptr, ptr, i32, %struct.nn_list_item, [129 x i8] }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_pipebase = type { %struct.nn_fsm, ptr, i8, i8, i8, ptr, ptr, %struct.nn_fsm_event, %struct.nn_fsm_event }
%struct.nn_sock = type { %struct.nn_fsm, i32, ptr, ptr, i32, %struct.nn_ctx, %struct.nn_efd, %struct.nn_efd, %struct.nn_sem, %struct.nn_clock, %struct.nn_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x ptr] }
%struct.nn_ctx = type { %struct.nn_mutex, ptr, %struct.nn_queue, %struct.nn_queue, ptr }
%struct.nn_mutex = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.nn_queue = type { ptr, ptr }
%struct.nn_efd = type { i32, i32 }
%struct.nn_sem = type { %union.sem_t }
%union.sem_t = type { i64, [24 x i8] }
%struct.nn_clock = type { i64, i64 }
%struct.nn_list = type { ptr, ptr }
%struct.nn_pipebase_vfptr = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [17 x i8] c"epbase->ep->sock\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [18 x i8] c"./src/core/pipe.c\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [38 x i8] c"self->state == NN_PIPEBASE_STATE_IDLE\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [43 x i8] c"self->instate == NN_PIPEBASE_INSTATE_ASYNC\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [45 x i8] c"self->outstate == NN_PIPEBASE_OUTSTATE_ASYNC\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [48 x i8] c"pipebase->outstate == NN_PIPEBASE_OUTSTATE_IDLE\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [51 x i8] c"pipebase->outstate == NN_PIPEBASE_OUTSTATE_SENDING\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [46 x i8] c"pipebase->instate == NN_PIPEBASE_INSTATE_IDLE\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [51 x i8] c"pipebase->instate == NN_PIPEBASE_INSTATE_RECEIVING\00", align 1, !dbg !49

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_pipebase_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !391 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !423, metadata !DIExpression()), !dbg !424
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !425, metadata !DIExpression()), !dbg !426
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !427, metadata !DIExpression()), !dbg !428
  br label %7, !dbg !429

7:                                                ; preds = %3
  %8 = load ptr, ptr %6, align 8, !dbg !430
  %9 = getelementptr inbounds %struct.nn_epbase, ptr %8, i32 0, i32 1, !dbg !430
  %10 = load ptr, ptr %9, align 8, !dbg !430
  %11 = getelementptr inbounds %struct.nn_ep, ptr %10, i32 0, i32 3, !dbg !430
  %12 = load ptr, ptr %11, align 8, !dbg !430
  %13 = icmp ne ptr %12, null, !dbg !430
  %14 = xor i1 %13, true, !dbg !430
  %15 = zext i1 %14 to i32, !dbg !430
  %16 = sext i32 %15 to i64, !dbg !430
  %17 = icmp ne i64 %16, 0, !dbg !430
  br i1 %17, label %18, label %21, !dbg !433

18:                                               ; preds = %7
  %19 = load ptr, ptr @stderr, align 8, !dbg !434
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 51), !dbg !434
  call void @nn_err_abort() #4, !dbg !434
  unreachable, !dbg !434

21:                                               ; preds = %7
  br label %22, !dbg !433

22:                                               ; preds = %21
  %23 = load ptr, ptr %4, align 8, !dbg !436
  %24 = getelementptr inbounds %struct.nn_pipebase, ptr %23, i32 0, i32 0, !dbg !437
  %25 = load ptr, ptr %4, align 8, !dbg !438
  %26 = load ptr, ptr %6, align 8, !dbg !439
  %27 = getelementptr inbounds %struct.nn_epbase, ptr %26, i32 0, i32 1, !dbg !440
  %28 = load ptr, ptr %27, align 8, !dbg !440
  %29 = getelementptr inbounds %struct.nn_ep, ptr %28, i32 0, i32 3, !dbg !441
  %30 = load ptr, ptr %29, align 8, !dbg !441
  %31 = getelementptr inbounds %struct.nn_sock, ptr %30, i32 0, i32 0, !dbg !442
  call void @nn_fsm_init(ptr noundef %24, ptr noundef null, i32 noundef 0, ptr noundef %25, ptr noundef %31), !dbg !443
  %32 = load ptr, ptr %5, align 8, !dbg !444
  %33 = load ptr, ptr %4, align 8, !dbg !445
  %34 = getelementptr inbounds %struct.nn_pipebase, ptr %33, i32 0, i32 1, !dbg !446
  store ptr %32, ptr %34, align 8, !dbg !447
  %35 = load ptr, ptr %4, align 8, !dbg !448
  %36 = getelementptr inbounds %struct.nn_pipebase, ptr %35, i32 0, i32 2, !dbg !449
  store i8 1, ptr %36, align 8, !dbg !450
  %37 = load ptr, ptr %4, align 8, !dbg !451
  %38 = getelementptr inbounds %struct.nn_pipebase, ptr %37, i32 0, i32 3, !dbg !452
  store i8 0, ptr %38, align 1, !dbg !453
  %39 = load ptr, ptr %4, align 8, !dbg !454
  %40 = getelementptr inbounds %struct.nn_pipebase, ptr %39, i32 0, i32 4, !dbg !455
  store i8 0, ptr %40, align 2, !dbg !456
  %41 = load ptr, ptr %6, align 8, !dbg !457
  %42 = getelementptr inbounds %struct.nn_epbase, ptr %41, i32 0, i32 1, !dbg !458
  %43 = load ptr, ptr %42, align 8, !dbg !458
  %44 = getelementptr inbounds %struct.nn_ep, ptr %43, i32 0, i32 3, !dbg !459
  %45 = load ptr, ptr %44, align 8, !dbg !459
  %46 = load ptr, ptr %4, align 8, !dbg !460
  %47 = getelementptr inbounds %struct.nn_pipebase, ptr %46, i32 0, i32 5, !dbg !461
  store ptr %45, ptr %47, align 8, !dbg !462
  %48 = load ptr, ptr %4, align 8, !dbg !463
  %49 = getelementptr inbounds %struct.nn_pipebase, ptr %48, i32 0, i32 7, !dbg !464
  call void @nn_fsm_event_init(ptr noundef %49), !dbg !465
  %50 = load ptr, ptr %4, align 8, !dbg !466
  %51 = getelementptr inbounds %struct.nn_pipebase, ptr %50, i32 0, i32 8, !dbg !467
  call void @nn_fsm_event_init(ptr noundef %51), !dbg !468
  ret void, !dbg !469
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_fsm_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @nn_fsm_event_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_pipebase_term(ptr noundef %0) #0 !dbg !470 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !473, metadata !DIExpression()), !dbg !474
  br label %3, !dbg !475

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !476
  %5 = getelementptr inbounds %struct.nn_pipebase, ptr %4, i32 0, i32 2, !dbg !476
  %6 = load i8, ptr %5, align 8, !dbg !476
  %7 = zext i8 %6 to i32, !dbg !476
  %8 = icmp eq i32 %7, 1, !dbg !476
  %9 = xor i1 %8, true, !dbg !476
  %10 = zext i1 %9 to i32, !dbg !476
  %11 = sext i32 %10 to i64, !dbg !476
  %12 = icmp ne i64 %11, 0, !dbg !476
  br i1 %12, label %13, label %16, !dbg !479

13:                                               ; preds = %3
  %14 = load ptr, ptr @stderr, align 8, !dbg !480
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 65), !dbg !480
  call void @nn_err_abort() #4, !dbg !480
  unreachable, !dbg !480

16:                                               ; preds = %3
  br label %17, !dbg !479

17:                                               ; preds = %16
  %18 = load ptr, ptr %2, align 8, !dbg !482
  %19 = getelementptr inbounds %struct.nn_pipebase, ptr %18, i32 0, i32 8, !dbg !483
  call void @nn_fsm_event_term(ptr noundef %19), !dbg !484
  %20 = load ptr, ptr %2, align 8, !dbg !485
  %21 = getelementptr inbounds %struct.nn_pipebase, ptr %20, i32 0, i32 7, !dbg !486
  call void @nn_fsm_event_term(ptr noundef %21), !dbg !487
  %22 = load ptr, ptr %2, align 8, !dbg !488
  %23 = getelementptr inbounds %struct.nn_pipebase, ptr %22, i32 0, i32 0, !dbg !489
  call void @nn_fsm_term(ptr noundef %23), !dbg !490
  ret void, !dbg !491
}

declare void @nn_fsm_event_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_pipebase_start(ptr noundef %0) #0 !dbg !492 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !495, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.declare(metadata ptr %4, metadata !497, metadata !DIExpression()), !dbg !498
  br label %5, !dbg !499

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !dbg !500
  %7 = getelementptr inbounds %struct.nn_pipebase, ptr %6, i32 0, i32 2, !dbg !500
  %8 = load i8, ptr %7, align 8, !dbg !500
  %9 = zext i8 %8 to i32, !dbg !500
  %10 = icmp eq i32 %9, 1, !dbg !500
  %11 = xor i1 %10, true, !dbg !500
  %12 = zext i1 %11 to i32, !dbg !500
  %13 = sext i32 %12 to i64, !dbg !500
  %14 = icmp ne i64 %13, 0, !dbg !500
  br i1 %14, label %15, label %18, !dbg !503

15:                                               ; preds = %5
  %16 = load ptr, ptr @stderr, align 8, !dbg !504
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 76), !dbg !504
  call void @nn_err_abort() #4, !dbg !504
  unreachable, !dbg !504

18:                                               ; preds = %5
  br label %19, !dbg !503

19:                                               ; preds = %18
  %20 = load ptr, ptr %3, align 8, !dbg !506
  %21 = getelementptr inbounds %struct.nn_pipebase, ptr %20, i32 0, i32 2, !dbg !507
  store i8 2, ptr %21, align 8, !dbg !508
  %22 = load ptr, ptr %3, align 8, !dbg !509
  %23 = getelementptr inbounds %struct.nn_pipebase, ptr %22, i32 0, i32 3, !dbg !510
  store i8 4, ptr %23, align 1, !dbg !511
  %24 = load ptr, ptr %3, align 8, !dbg !512
  %25 = getelementptr inbounds %struct.nn_pipebase, ptr %24, i32 0, i32 4, !dbg !513
  store i8 1, ptr %25, align 2, !dbg !514
  %26 = load ptr, ptr %3, align 8, !dbg !515
  %27 = getelementptr inbounds %struct.nn_pipebase, ptr %26, i32 0, i32 5, !dbg !516
  %28 = load ptr, ptr %27, align 8, !dbg !516
  %29 = load ptr, ptr %3, align 8, !dbg !517
  %30 = call i32 @nn_sock_add(ptr noundef %28, ptr noundef %29), !dbg !518
  store i32 %30, ptr %4, align 4, !dbg !519
  %31 = load i32, ptr %4, align 4, !dbg !520
  %32 = icmp slt i32 %31, 0, !dbg !520
  %33 = zext i1 %32 to i32, !dbg !520
  %34 = sext i32 %33 to i64, !dbg !520
  %35 = icmp ne i64 %34, 0, !dbg !520
  br i1 %35, label %36, label %38, !dbg !522

36:                                               ; preds = %19
  %37 = load i32, ptr %4, align 4, !dbg !523
  store i32 %37, ptr %2, align 4, !dbg !524
  br label %49, !dbg !524

38:                                               ; preds = %19
  %39 = load ptr, ptr %3, align 8, !dbg !525
  %40 = getelementptr inbounds %struct.nn_pipebase, ptr %39, i32 0, i32 5, !dbg !527
  %41 = load ptr, ptr %40, align 8, !dbg !527
  %42 = icmp ne ptr %41, null, !dbg !525
  br i1 %42, label %43, label %48, !dbg !528

43:                                               ; preds = %38
  %44 = load ptr, ptr %3, align 8, !dbg !529
  %45 = getelementptr inbounds %struct.nn_pipebase, ptr %44, i32 0, i32 0, !dbg !530
  %46 = load ptr, ptr %3, align 8, !dbg !531
  %47 = getelementptr inbounds %struct.nn_pipebase, ptr %46, i32 0, i32 8, !dbg !532
  call void @nn_fsm_raise(ptr noundef %45, ptr noundef %47, i32 noundef 33988), !dbg !533
  br label %48, !dbg !533

48:                                               ; preds = %43, %38
  store i32 0, ptr %2, align 4, !dbg !534
  br label %49, !dbg !534

49:                                               ; preds = %48, %36
  %50 = load i32, ptr %2, align 4, !dbg !535
  ret i32 %50, !dbg !535
}

declare i32 @nn_sock_add(ptr noundef, ptr noundef) #2

declare void @nn_fsm_raise(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_pipebase_stop(ptr noundef %0) #0 !dbg !536 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !537, metadata !DIExpression()), !dbg !538
  %3 = load ptr, ptr %2, align 8, !dbg !539
  %4 = getelementptr inbounds %struct.nn_pipebase, ptr %3, i32 0, i32 2, !dbg !541
  %5 = load i8, ptr %4, align 8, !dbg !541
  %6 = zext i8 %5 to i32, !dbg !539
  %7 = icmp ne i32 %6, 2, !dbg !542
  br i1 %7, label %8, label %9, !dbg !543

8:                                                ; preds = %1
  br label %16, !dbg !544

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !dbg !545
  %11 = getelementptr inbounds %struct.nn_pipebase, ptr %10, i32 0, i32 5, !dbg !546
  %12 = load ptr, ptr %11, align 8, !dbg !546
  %13 = load ptr, ptr %2, align 8, !dbg !547
  call void @nn_sock_rm(ptr noundef %12, ptr noundef %13), !dbg !548
  %14 = load ptr, ptr %2, align 8, !dbg !549
  %15 = getelementptr inbounds %struct.nn_pipebase, ptr %14, i32 0, i32 2, !dbg !550
  store i8 1, ptr %15, align 8, !dbg !551
  br label %16, !dbg !552

16:                                               ; preds = %9, %8
  ret void, !dbg !552
}

declare void @nn_sock_rm(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_pipebase_received(ptr noundef %0) #0 !dbg !553 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !554, metadata !DIExpression()), !dbg !555
  %3 = load ptr, ptr %2, align 8, !dbg !556
  %4 = getelementptr inbounds %struct.nn_pipebase, ptr %3, i32 0, i32 3, !dbg !556
  %5 = load i8, ptr %4, align 1, !dbg !556
  %6 = zext i8 %5 to i32, !dbg !556
  %7 = icmp eq i32 %6, 2, !dbg !556
  %8 = zext i1 %7 to i32, !dbg !556
  %9 = sext i32 %8 to i64, !dbg !556
  %10 = icmp ne i64 %9, 0, !dbg !556
  br i1 %10, label %11, label %14, !dbg !558

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 8, !dbg !559
  %13 = getelementptr inbounds %struct.nn_pipebase, ptr %12, i32 0, i32 3, !dbg !561
  store i8 3, ptr %13, align 1, !dbg !562
  br label %41, !dbg !563

14:                                               ; preds = %1
  br label %15, !dbg !564

15:                                               ; preds = %14
  %16 = load ptr, ptr %2, align 8, !dbg !565
  %17 = getelementptr inbounds %struct.nn_pipebase, ptr %16, i32 0, i32 3, !dbg !565
  %18 = load i8, ptr %17, align 1, !dbg !565
  %19 = zext i8 %18 to i32, !dbg !565
  %20 = icmp eq i32 %19, 4, !dbg !565
  %21 = xor i1 %20, true, !dbg !565
  %22 = zext i1 %21 to i32, !dbg !565
  %23 = sext i32 %22 to i64, !dbg !565
  %24 = icmp ne i64 %23, 0, !dbg !565
  br i1 %24, label %25, label %28, !dbg !568

25:                                               ; preds = %15
  %26 = load ptr, ptr @stderr, align 8, !dbg !569
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 104), !dbg !569
  call void @nn_err_abort() #4, !dbg !569
  unreachable, !dbg !569

28:                                               ; preds = %15
  br label %29, !dbg !568

29:                                               ; preds = %28
  %30 = load ptr, ptr %2, align 8, !dbg !571
  %31 = getelementptr inbounds %struct.nn_pipebase, ptr %30, i32 0, i32 3, !dbg !572
  store i8 1, ptr %31, align 1, !dbg !573
  %32 = load ptr, ptr %2, align 8, !dbg !574
  %33 = getelementptr inbounds %struct.nn_pipebase, ptr %32, i32 0, i32 5, !dbg !576
  %34 = load ptr, ptr %33, align 8, !dbg !576
  %35 = icmp ne ptr %34, null, !dbg !574
  br i1 %35, label %36, label %41, !dbg !577

36:                                               ; preds = %29
  %37 = load ptr, ptr %2, align 8, !dbg !578
  %38 = getelementptr inbounds %struct.nn_pipebase, ptr %37, i32 0, i32 0, !dbg !579
  %39 = load ptr, ptr %2, align 8, !dbg !580
  %40 = getelementptr inbounds %struct.nn_pipebase, ptr %39, i32 0, i32 7, !dbg !581
  call void @nn_fsm_raise(ptr noundef %38, ptr noundef %40, i32 noundef 33987), !dbg !582
  br label %41, !dbg !582

41:                                               ; preds = %11, %36, %29
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_pipebase_sent(ptr noundef %0) #0 !dbg !584 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !585, metadata !DIExpression()), !dbg !586
  %3 = load ptr, ptr %2, align 8, !dbg !587
  %4 = getelementptr inbounds %struct.nn_pipebase, ptr %3, i32 0, i32 4, !dbg !587
  %5 = load i8, ptr %4, align 2, !dbg !587
  %6 = zext i8 %5 to i32, !dbg !587
  %7 = icmp eq i32 %6, 2, !dbg !587
  %8 = zext i1 %7 to i32, !dbg !587
  %9 = sext i32 %8 to i64, !dbg !587
  %10 = icmp ne i64 %9, 0, !dbg !587
  br i1 %10, label %11, label %14, !dbg !589

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 8, !dbg !590
  %13 = getelementptr inbounds %struct.nn_pipebase, ptr %12, i32 0, i32 4, !dbg !592
  store i8 3, ptr %13, align 2, !dbg !593
  br label %41, !dbg !594

14:                                               ; preds = %1
  br label %15, !dbg !595

15:                                               ; preds = %14
  %16 = load ptr, ptr %2, align 8, !dbg !596
  %17 = getelementptr inbounds %struct.nn_pipebase, ptr %16, i32 0, i32 4, !dbg !596
  %18 = load i8, ptr %17, align 2, !dbg !596
  %19 = zext i8 %18 to i32, !dbg !596
  %20 = icmp eq i32 %19, 4, !dbg !596
  %21 = xor i1 %20, true, !dbg !596
  %22 = zext i1 %21 to i32, !dbg !596
  %23 = sext i32 %22 to i64, !dbg !596
  %24 = icmp ne i64 %23, 0, !dbg !596
  br i1 %24, label %25, label %28, !dbg !599

25:                                               ; preds = %15
  %26 = load ptr, ptr @stderr, align 8, !dbg !600
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 116), !dbg !600
  call void @nn_err_abort() #4, !dbg !600
  unreachable, !dbg !600

28:                                               ; preds = %15
  br label %29, !dbg !599

29:                                               ; preds = %28
  %30 = load ptr, ptr %2, align 8, !dbg !602
  %31 = getelementptr inbounds %struct.nn_pipebase, ptr %30, i32 0, i32 4, !dbg !603
  store i8 1, ptr %31, align 2, !dbg !604
  %32 = load ptr, ptr %2, align 8, !dbg !605
  %33 = getelementptr inbounds %struct.nn_pipebase, ptr %32, i32 0, i32 5, !dbg !607
  %34 = load ptr, ptr %33, align 8, !dbg !607
  %35 = icmp ne ptr %34, null, !dbg !605
  br i1 %35, label %36, label %41, !dbg !608

36:                                               ; preds = %29
  %37 = load ptr, ptr %2, align 8, !dbg !609
  %38 = getelementptr inbounds %struct.nn_pipebase, ptr %37, i32 0, i32 0, !dbg !610
  %39 = load ptr, ptr %2, align 8, !dbg !611
  %40 = getelementptr inbounds %struct.nn_pipebase, ptr %39, i32 0, i32 8, !dbg !612
  call void @nn_fsm_raise(ptr noundef %38, ptr noundef %40, i32 noundef 33988), !dbg !613
  br label %41, !dbg !613

41:                                               ; preds = %11, %36, %29
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_pipebase_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !615 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !618, metadata !DIExpression()), !dbg !619
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !620, metadata !DIExpression()), !dbg !621
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !622, metadata !DIExpression()), !dbg !623
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !624, metadata !DIExpression()), !dbg !625
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !626, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.declare(metadata ptr %11, metadata !628, metadata !DIExpression()), !dbg !629
  %12 = load ptr, ptr %6, align 8, !dbg !630
  %13 = getelementptr inbounds %struct.nn_pipebase, ptr %12, i32 0, i32 5, !dbg !631
  %14 = load ptr, ptr %13, align 8, !dbg !631
  %15 = load i32, ptr %7, align 4, !dbg !632
  %16 = load i32, ptr %8, align 4, !dbg !633
  %17 = load ptr, ptr %9, align 8, !dbg !634
  %18 = load ptr, ptr %10, align 8, !dbg !635
  %19 = call i32 @nn_sock_getopt_inner(ptr noundef %14, i32 noundef %15, i32 noundef %16, ptr noundef %17, ptr noundef %18), !dbg !636
  store i32 %19, ptr %11, align 4, !dbg !637
  br label %20, !dbg !638

20:                                               ; preds = %5
  %21 = load i32, ptr %11, align 4, !dbg !639
  %22 = icmp eq i32 %21, 0, !dbg !639
  %23 = xor i1 %22, true, !dbg !639
  %24 = zext i1 %23 to i32, !dbg !639
  %25 = sext i32 %24 to i64, !dbg !639
  %26 = icmp ne i64 %25, 0, !dbg !639
  br i1 %26, label %27, label %35, !dbg !642

27:                                               ; preds = %20
  %28 = load ptr, ptr @stderr, align 8, !dbg !643
  %29 = load i32, ptr %11, align 4, !dbg !643
  %30 = sub nsw i32 0, %29, !dbg !643
  %31 = call ptr @nn_err_strerror(i32 noundef %30), !dbg !643
  %32 = load i32, ptr %11, align 4, !dbg !643
  %33 = sub nsw i32 0, %32, !dbg !643
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.6, ptr noundef %31, i32 noundef %33, ptr noundef @.str.2, i32 noundef 128), !dbg !643
  call void @nn_err_abort() #4, !dbg !643
  unreachable, !dbg !643

35:                                               ; preds = %20
  br label %36, !dbg !642

36:                                               ; preds = %35
  ret void, !dbg !645
}

declare i32 @nn_sock_getopt_inner(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare ptr @nn_err_strerror(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_pipebase_ispeer(ptr noundef %0, i32 noundef %1) #0 !dbg !646 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !649, metadata !DIExpression()), !dbg !650
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !651, metadata !DIExpression()), !dbg !652
  %5 = load ptr, ptr %3, align 8, !dbg !653
  %6 = getelementptr inbounds %struct.nn_pipebase, ptr %5, i32 0, i32 5, !dbg !654
  %7 = load ptr, ptr %6, align 8, !dbg !654
  %8 = load i32, ptr %4, align 4, !dbg !655
  %9 = call i32 @nn_sock_ispeer(ptr noundef %7, i32 noundef %8), !dbg !656
  ret i32 %9, !dbg !657
}

declare i32 @nn_sock_ispeer(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_pipe_setdata(ptr noundef %0, ptr noundef %1) #0 !dbg !658 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !661, metadata !DIExpression()), !dbg !662
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !663, metadata !DIExpression()), !dbg !664
  %5 = load ptr, ptr %4, align 8, !dbg !665
  %6 = load ptr, ptr %3, align 8, !dbg !666
  %7 = getelementptr inbounds %struct.nn_pipebase, ptr %6, i32 0, i32 6, !dbg !667
  store ptr %5, ptr %7, align 8, !dbg !668
  ret void, !dbg !669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_pipe_getdata(ptr noundef %0) #0 !dbg !670 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !673, metadata !DIExpression()), !dbg !674
  %3 = load ptr, ptr %2, align 8, !dbg !675
  %4 = getelementptr inbounds %struct.nn_pipebase, ptr %3, i32 0, i32 6, !dbg !676
  %5 = load ptr, ptr %4, align 8, !dbg !676
  ret ptr %5, !dbg !677
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_pipe_send(ptr noundef %0, ptr noundef %1) #0 !dbg !678 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !681, metadata !DIExpression()), !dbg !682
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !683, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.declare(metadata ptr %6, metadata !685, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.declare(metadata ptr %7, metadata !687, metadata !DIExpression()), !dbg !688
  %8 = load ptr, ptr %4, align 8, !dbg !689
  store ptr %8, ptr %7, align 8, !dbg !690
  br label %9, !dbg !691

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 8, !dbg !692
  %11 = getelementptr inbounds %struct.nn_pipebase, ptr %10, i32 0, i32 4, !dbg !692
  %12 = load i8, ptr %11, align 2, !dbg !692
  %13 = zext i8 %12 to i32, !dbg !692
  %14 = icmp eq i32 %13, 1, !dbg !692
  %15 = xor i1 %14, true, !dbg !692
  %16 = zext i1 %15 to i32, !dbg !692
  %17 = sext i32 %16 to i64, !dbg !692
  %18 = icmp ne i64 %17, 0, !dbg !692
  br i1 %18, label %19, label %22, !dbg !695

19:                                               ; preds = %9
  %20 = load ptr, ptr @stderr, align 8, !dbg !696
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 152), !dbg !696
  call void @nn_err_abort() #4, !dbg !696
  unreachable, !dbg !696

22:                                               ; preds = %9
  br label %23, !dbg !695

23:                                               ; preds = %22
  %24 = load ptr, ptr %7, align 8, !dbg !698
  %25 = getelementptr inbounds %struct.nn_pipebase, ptr %24, i32 0, i32 4, !dbg !699
  store i8 2, ptr %25, align 2, !dbg !700
  %26 = load ptr, ptr %7, align 8, !dbg !701
  %27 = getelementptr inbounds %struct.nn_pipebase, ptr %26, i32 0, i32 1, !dbg !702
  %28 = load ptr, ptr %27, align 8, !dbg !702
  %29 = getelementptr inbounds %struct.nn_pipebase_vfptr, ptr %28, i32 0, i32 0, !dbg !703
  %30 = load ptr, ptr %29, align 8, !dbg !703
  %31 = load ptr, ptr %7, align 8, !dbg !704
  %32 = load ptr, ptr %5, align 8, !dbg !705
  %33 = call i32 %30(ptr noundef %31, ptr noundef %32), !dbg !701
  store i32 %33, ptr %6, align 4, !dbg !706
  br label %34, !dbg !707

34:                                               ; preds = %23
  %35 = load i32, ptr %6, align 4, !dbg !708
  %36 = icmp sge i32 %35, 0, !dbg !708
  %37 = xor i1 %36, true, !dbg !708
  %38 = zext i1 %37 to i32, !dbg !708
  %39 = sext i32 %38 to i64, !dbg !708
  %40 = icmp ne i64 %39, 0, !dbg !708
  br i1 %40, label %41, label %49, !dbg !711

41:                                               ; preds = %34
  %42 = load ptr, ptr @stderr, align 8, !dbg !712
  %43 = load i32, ptr %6, align 4, !dbg !712
  %44 = sub nsw i32 0, %43, !dbg !712
  %45 = call ptr @nn_err_strerror(i32 noundef %44), !dbg !712
  %46 = load i32, ptr %6, align 4, !dbg !712
  %47 = sub nsw i32 0, %46, !dbg !712
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.6, ptr noundef %45, i32 noundef %47, ptr noundef @.str.2, i32 noundef 155), !dbg !712
  call void @nn_err_abort() #4, !dbg !712
  unreachable, !dbg !712

49:                                               ; preds = %34
  br label %50, !dbg !711

50:                                               ; preds = %49
  %51 = load ptr, ptr %7, align 8, !dbg !714
  %52 = getelementptr inbounds %struct.nn_pipebase, ptr %51, i32 0, i32 4, !dbg !714
  %53 = load i8, ptr %52, align 2, !dbg !714
  %54 = zext i8 %53 to i32, !dbg !714
  %55 = icmp eq i32 %54, 3, !dbg !714
  %56 = zext i1 %55 to i32, !dbg !714
  %57 = sext i32 %56 to i64, !dbg !714
  %58 = icmp ne i64 %57, 0, !dbg !714
  br i1 %58, label %59, label %63, !dbg !716

59:                                               ; preds = %50
  %60 = load ptr, ptr %7, align 8, !dbg !717
  %61 = getelementptr inbounds %struct.nn_pipebase, ptr %60, i32 0, i32 4, !dbg !719
  store i8 1, ptr %61, align 2, !dbg !720
  %62 = load i32, ptr %6, align 4, !dbg !721
  store i32 %62, ptr %3, align 4, !dbg !722
  br label %83, !dbg !722

63:                                               ; preds = %50
  br label %64, !dbg !723

64:                                               ; preds = %63
  %65 = load ptr, ptr %7, align 8, !dbg !724
  %66 = getelementptr inbounds %struct.nn_pipebase, ptr %65, i32 0, i32 4, !dbg !724
  %67 = load i8, ptr %66, align 2, !dbg !724
  %68 = zext i8 %67 to i32, !dbg !724
  %69 = icmp eq i32 %68, 2, !dbg !724
  %70 = xor i1 %69, true, !dbg !724
  %71 = zext i1 %70 to i32, !dbg !724
  %72 = sext i32 %71 to i64, !dbg !724
  %73 = icmp ne i64 %72, 0, !dbg !724
  br i1 %73, label %74, label %77, !dbg !727

74:                                               ; preds = %64
  %75 = load ptr, ptr @stderr, align 8, !dbg !728
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str, ptr noundef @.str.8, ptr noundef @.str.2, i32 noundef 160), !dbg !728
  call void @nn_err_abort() #4, !dbg !728
  unreachable, !dbg !728

77:                                               ; preds = %64
  br label %78, !dbg !727

78:                                               ; preds = %77
  %79 = load ptr, ptr %7, align 8, !dbg !730
  %80 = getelementptr inbounds %struct.nn_pipebase, ptr %79, i32 0, i32 4, !dbg !731
  store i8 4, ptr %80, align 2, !dbg !732
  %81 = load i32, ptr %6, align 4, !dbg !733
  %82 = or i32 %81, 1, !dbg !734
  store i32 %82, ptr %3, align 4, !dbg !735
  br label %83, !dbg !735

83:                                               ; preds = %78, %59
  %84 = load i32, ptr %3, align 4, !dbg !736
  ret i32 %84, !dbg !736
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_pipe_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !737 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !738, metadata !DIExpression()), !dbg !739
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !740, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.declare(metadata ptr %6, metadata !742, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.declare(metadata ptr %7, metadata !744, metadata !DIExpression()), !dbg !745
  %8 = load ptr, ptr %4, align 8, !dbg !746
  store ptr %8, ptr %7, align 8, !dbg !747
  br label %9, !dbg !748

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 8, !dbg !749
  %11 = getelementptr inbounds %struct.nn_pipebase, ptr %10, i32 0, i32 3, !dbg !749
  %12 = load i8, ptr %11, align 1, !dbg !749
  %13 = zext i8 %12 to i32, !dbg !749
  %14 = icmp eq i32 %13, 1, !dbg !749
  %15 = xor i1 %14, true, !dbg !749
  %16 = zext i1 %15 to i32, !dbg !749
  %17 = sext i32 %16 to i64, !dbg !749
  %18 = icmp ne i64 %17, 0, !dbg !749
  br i1 %18, label %19, label %22, !dbg !752

19:                                               ; preds = %9
  %20 = load ptr, ptr @stderr, align 8, !dbg !753
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @.str.2, i32 noundef 171), !dbg !753
  call void @nn_err_abort() #4, !dbg !753
  unreachable, !dbg !753

22:                                               ; preds = %9
  br label %23, !dbg !752

23:                                               ; preds = %22
  %24 = load ptr, ptr %7, align 8, !dbg !755
  %25 = getelementptr inbounds %struct.nn_pipebase, ptr %24, i32 0, i32 3, !dbg !756
  store i8 2, ptr %25, align 1, !dbg !757
  %26 = load ptr, ptr %7, align 8, !dbg !758
  %27 = getelementptr inbounds %struct.nn_pipebase, ptr %26, i32 0, i32 1, !dbg !759
  %28 = load ptr, ptr %27, align 8, !dbg !759
  %29 = getelementptr inbounds %struct.nn_pipebase_vfptr, ptr %28, i32 0, i32 1, !dbg !760
  %30 = load ptr, ptr %29, align 8, !dbg !760
  %31 = load ptr, ptr %7, align 8, !dbg !761
  %32 = load ptr, ptr %5, align 8, !dbg !762
  %33 = call i32 %30(ptr noundef %31, ptr noundef %32), !dbg !758
  store i32 %33, ptr %6, align 4, !dbg !763
  br label %34, !dbg !764

34:                                               ; preds = %23
  %35 = load i32, ptr %6, align 4, !dbg !765
  %36 = icmp sge i32 %35, 0, !dbg !765
  %37 = xor i1 %36, true, !dbg !765
  %38 = zext i1 %37 to i32, !dbg !765
  %39 = sext i32 %38 to i64, !dbg !765
  %40 = icmp ne i64 %39, 0, !dbg !765
  br i1 %40, label %41, label %49, !dbg !768

41:                                               ; preds = %34
  %42 = load ptr, ptr @stderr, align 8, !dbg !769
  %43 = load i32, ptr %6, align 4, !dbg !769
  %44 = sub nsw i32 0, %43, !dbg !769
  %45 = call ptr @nn_err_strerror(i32 noundef %44), !dbg !769
  %46 = load i32, ptr %6, align 4, !dbg !769
  %47 = sub nsw i32 0, %46, !dbg !769
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.6, ptr noundef %45, i32 noundef %47, ptr noundef @.str.2, i32 noundef 174), !dbg !769
  call void @nn_err_abort() #4, !dbg !769
  unreachable, !dbg !769

49:                                               ; preds = %34
  br label %50, !dbg !768

50:                                               ; preds = %49
  %51 = load ptr, ptr %7, align 8, !dbg !771
  %52 = getelementptr inbounds %struct.nn_pipebase, ptr %51, i32 0, i32 3, !dbg !771
  %53 = load i8, ptr %52, align 1, !dbg !771
  %54 = zext i8 %53 to i32, !dbg !771
  %55 = icmp eq i32 %54, 3, !dbg !771
  %56 = zext i1 %55 to i32, !dbg !771
  %57 = sext i32 %56 to i64, !dbg !771
  %58 = icmp ne i64 %57, 0, !dbg !771
  br i1 %58, label %59, label %63, !dbg !773

59:                                               ; preds = %50
  %60 = load ptr, ptr %7, align 8, !dbg !774
  %61 = getelementptr inbounds %struct.nn_pipebase, ptr %60, i32 0, i32 3, !dbg !776
  store i8 1, ptr %61, align 1, !dbg !777
  %62 = load i32, ptr %6, align 4, !dbg !778
  store i32 %62, ptr %3, align 4, !dbg !779
  br label %83, !dbg !779

63:                                               ; preds = %50
  br label %64, !dbg !780

64:                                               ; preds = %63
  %65 = load ptr, ptr %7, align 8, !dbg !781
  %66 = getelementptr inbounds %struct.nn_pipebase, ptr %65, i32 0, i32 3, !dbg !781
  %67 = load i8, ptr %66, align 1, !dbg !781
  %68 = zext i8 %67 to i32, !dbg !781
  %69 = icmp eq i32 %68, 2, !dbg !781
  %70 = xor i1 %69, true, !dbg !781
  %71 = zext i1 %70 to i32, !dbg !781
  %72 = sext i32 %71 to i64, !dbg !781
  %73 = icmp ne i64 %72, 0, !dbg !781
  br i1 %73, label %74, label %77, !dbg !784

74:                                               ; preds = %64
  %75 = load ptr, ptr @stderr, align 8, !dbg !785
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str, ptr noundef @.str.10, ptr noundef @.str.2, i32 noundef 180), !dbg !785
  call void @nn_err_abort() #4, !dbg !785
  unreachable, !dbg !785

77:                                               ; preds = %64
  br label %78, !dbg !784

78:                                               ; preds = %77
  %79 = load ptr, ptr %7, align 8, !dbg !787
  %80 = getelementptr inbounds %struct.nn_pipebase, ptr %79, i32 0, i32 3, !dbg !788
  store i8 4, ptr %80, align 1, !dbg !789
  %81 = load i32, ptr %6, align 4, !dbg !790
  %82 = or i32 %81, 1, !dbg !791
  store i32 %82, ptr %3, align 4, !dbg !792
  br label %83, !dbg !792

83:                                               ; preds = %78, %59
  %84 = load i32, ptr %3, align 4, !dbg !793
  ret i32 %84, !dbg !793
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!51}
!llvm.module.flags = !{!383, !384, !385, !386, !387, !388, !389}
!llvm.ident = !{!390}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/core/pipe.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1d337fccc2731f367f416a2189f6b16f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 17)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 18)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 38)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 43)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 45)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !9, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 48)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 51)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 171, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 46)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !41, isLocal: true, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C11, file: !52, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !53, globals: !382, splitDebugInlining: false, nameTableKind: None)
!52 = !DIFile(filename: "src/core/pipe.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1d337fccc2731f367f416a2189f6b16f")
!53 = !{!54, !57, !58}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !56, line: 56, flags: DIFlagFwdDecl)
!56 = !DIFile(filename: "./src/core/../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase", file: !60, line: 147, size: 1536, elements: !61)
!60 = !DIFile(filename: "./src/core/../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
!61 = !{!62, !227, !253, !254, !255, !256, !379, !380, !381}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !59, file: !60, line: 148, baseType: !63, size: 640)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !64, line: 66, size: 640, elements: !65)
!64 = !DIFile(filename: "src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!65 = !{!66, !73, !74, !75, !76, !77, !219}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !63, file: !64, line: 67, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !64, line: 58, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !57, !57, !72}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !63, file: !64, line: 68, baseType: !57, size: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !63, file: !64, line: 69, baseType: !57, size: 32, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !63, file: !64, line: 70, baseType: !72, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !63, file: !64, line: 71, baseType: !71, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !63, file: !64, line: 72, baseType: !78, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !80, line: 37, size: 704, elements: !81)
!80 = !DIFile(filename: "./src/core/../aio/ctx.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "02553d3500c8d7bb20cd89fa252fe2c2")
!81 = !{!82, !118, !212, !213, !214}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !79, file: !80, line: 38, baseType: !83, size: 320)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !84, line: 32, size: 320, elements: !85)
!84 = !DIFile(filename: "src/aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !83, file: !84, line: 36, baseType: !87, size: 320)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !88, line: 72, baseType: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !88, line: 67, size: 320, elements: !90)
!90 = !{!91, !112, !116}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !89, file: !88, line: 69, baseType: !92, size: 320)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !93, line: 22, size: 320, elements: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!94 = !{!95, !96, !98, !99, !100, !101, !103, !104}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !92, file: !93, line: 24, baseType: !57, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !92, file: !93, line: 25, baseType: !97, size: 32, offset: 32)
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !92, file: !93, line: 26, baseType: !57, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !92, file: !93, line: 28, baseType: !97, size: 32, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !92, file: !93, line: 32, baseType: !57, size: 32, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !92, file: !93, line: 34, baseType: !102, size: 16, offset: 160)
!102 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !92, file: !93, line: 35, baseType: !102, size: 16, offset: 176)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !92, file: !93, line: 36, baseType: !105, size: 128, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !106, line: 55, baseType: !107)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !106, line: 51, size: 128, elements: !108)
!108 = !{!109, !111}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !107, file: !106, line: 53, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !107, file: !106, line: 54, baseType: !110, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !89, file: !88, line: 70, baseType: !113, size: 320)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 40)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !89, file: !88, line: 71, baseType: !117, size: 64)
!117 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !79, file: !80, line: 39, baseType: !119, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pool", file: !121, line: 30, size: 1408, elements: !122)
!121 = !DIFile(filename: "src/aio/pool.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a87eb417ecad65fee67523e01b3df661")
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !120, file: !121, line: 31, baseType: !124, size: 1408)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !125, line: 53, size: 1408, elements: !126)
!125 = !DIFile(filename: "src/aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!126 = !{!127, !128, !138, !139, !145, !172, !173, !199}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !124, file: !125, line: 54, baseType: !83, size: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !124, file: !125, line: 55, baseType: !129, size: 128, offset: 320)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !130, line: 37, size: 128, elements: !131)
!130 = !DIFile(filename: "src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!131 = !{!132, !137}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !129, file: !130, line: 38, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !130, line: 33, size: 64, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !130, line: 34, baseType: !133, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !129, file: !130, line: 39, baseType: !133, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !124, file: !125, line: 56, baseType: !134, size: 64, offset: 448)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !124, file: !125, line: 57, baseType: !140, size: 64, offset: 512)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !141, line: 25, size: 64, elements: !142)
!141 = !DIFile(filename: "src/aio/../utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !140, file: !141, line: 26, baseType: !57, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !140, file: !141, line: 27, baseType: !57, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !124, file: !125, line: 58, baseType: !146, size: 320, offset: 576)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !147, line: 31, size: 320, elements: !148)
!147 = !DIFile(filename: "src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!148 = !{!149, !150, !151, !152, !160, !171}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !146, file: !147, line: 34, baseType: !57, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !146, file: !147, line: 37, baseType: !57, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !146, file: !147, line: 40, baseType: !57, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !146, file: !147, line: 43, baseType: !153, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !155, line: 36, size: 64, elements: !156)
!155 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!156 = !{!157, !158, !159}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !154, file: !155, line: 38, baseType: !57, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !154, file: !155, line: 39, baseType: !102, size: 16, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !154, file: !155, line: 40, baseType: !102, size: 16, offset: 48)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !146, file: !147, line: 52, baseType: !161, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !147, line: 48, size: 128, elements: !163)
!163 = !{!164, !169, !170}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !162, file: !147, line: 49, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !147, line: 27, size: 32, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !166, file: !147, line: 28, baseType: !57, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !162, file: !147, line: 50, baseType: !57, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !147, line: 51, baseType: !57, size: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !146, file: !147, line: 55, baseType: !57, size: 32, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !124, file: !125, line: 59, baseType: !166, size: 32, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !124, file: !125, line: 60, baseType: !174, size: 256, offset: 960)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !175, line: 37, size: 256, elements: !176)
!175 = !DIFile(filename: "src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!176 = !{!177, !188}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !174, file: !175, line: 38, baseType: !178, size: 128)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !179, line: 31, size: 128, elements: !180)
!179 = !DIFile(filename: "src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!180 = !{!181, !187}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !178, file: !179, line: 33, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !183, line: 27, baseType: !184)
!183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !185, line: 45, baseType: !186)
!185 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!186 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !178, file: !179, line: 34, baseType: !182, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !174, file: !175, line: 39, baseType: !189, size: 128, offset: 128)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !190, line: 31, size: 128, elements: !191)
!190 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!191 = !{!192, !198}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !189, file: !190, line: 32, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !190, line: 26, size: 128, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !190, line: 27, baseType: !193, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !194, file: !190, line: 28, baseType: !193, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !189, file: !190, line: 33, baseType: !193, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !124, file: !125, line: 61, baseType: !200, size: 192, offset: 1216)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !201, line: 25, size: 192, elements: !202)
!201 = !DIFile(filename: "src/aio/../utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!202 = !{!203, !209, !210}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !200, file: !201, line: 27, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !206, line: 28, baseType: !207)
!206 = !DIFile(filename: "src/aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!207 = !DISubroutineType(types: !208)
!208 = !{null, !72}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !200, file: !201, line: 28, baseType: !72, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !200, file: !201, line: 29, baseType: !211, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !88, line: 27, baseType: !186)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !79, file: !80, line: 40, baseType: !129, size: 128, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "eventsto", scope: !79, file: !80, line: 41, baseType: !129, size: 128, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "onleave", scope: !79, file: !80, line: 42, baseType: !215, size: 64, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_ctx_onleave", file: !80, line: 35, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !78}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !63, file: !64, line: 73, baseType: !220, size: 320, offset: 320)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !64, line: 34, size: 320, elements: !221)
!221 = !{!222, !223, !224, !225, !226}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !220, file: !64, line: 35, baseType: !71, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !220, file: !64, line: 36, baseType: !57, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !220, file: !64, line: 37, baseType: !72, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !220, file: !64, line: 38, baseType: !57, size: 32, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !220, file: !64, line: 39, baseType: !134, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !59, file: !60, line: 149, baseType: !228, size: 64, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase_vfptr", file: !60, line: 134, size: 128, elements: !231)
!231 = !{!232, !252}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !230, file: !60, line: 138, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!57, !58, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !238, line: 30, size: 512, elements: !239)
!238 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!239 = !{!240, !251}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !237, file: !238, line: 33, baseType: !241, size: 256)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !242, line: 39, size: 256, elements: !243)
!242 = !DIFile(filename: "src/aio/../utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !241, file: !242, line: 40, baseType: !245, size: 256)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 256, elements: !249)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !183, line: 24, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !185, line: 38, baseType: !248)
!248 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!249 = !{!250}
!250 = !DISubrange(count: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !237, file: !238, line: 36, baseType: !241, size: 256, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !230, file: !60, line: 142, baseType: !233, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !59, file: !60, line: 150, baseType: !246, size: 8, offset: 704)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !59, file: !60, line: 151, baseType: !246, size: 8, offset: 712)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !59, file: !60, line: 152, baseType: !246, size: 8, offset: 720)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !59, file: !60, line: 153, baseType: !257, size: 64, offset: 768)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !259, line: 42, size: 2752, elements: !260)
!259 = !DIFile(filename: "./src/core/sock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "81758969b613e986f7c84ae94c8bce2a")
!260 = !{!261, !262, !263, !310, !327, !328, !329, !330, !331, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !258, file: !259, line: 45, baseType: !63, size: 640)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !258, file: !259, line: 46, baseType: !57, size: 32, offset: 640)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !258, file: !259, line: 49, baseType: !264, size: 64, offset: 704)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !56, line: 123, size: 128, elements: !266)
!266 = !{!267, !309}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !265, file: !56, line: 124, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase_vfptr", file: !56, line: 84, size: 704, elements: !271)
!271 = !{!272, !276, !277, !281, !285, !286, !287, !291, !295, !296, !304}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !270, file: !56, line: 87, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !264}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !270, file: !56, line: 90, baseType: !273, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !270, file: !56, line: 97, baseType: !278, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!57, !264, !54}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !270, file: !56, line: 98, baseType: !282, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !264, !54}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !270, file: !56, line: 99, baseType: !282, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !270, file: !56, line: 100, baseType: !282, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !270, file: !56, line: 104, baseType: !288, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!57, !264}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !270, file: !56, line: 108, baseType: !292, size: 64, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!57, !264, !236}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !270, file: !56, line: 112, baseType: !292, size: 64, offset: 512)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !270, file: !56, line: 115, baseType: !297, size: 64, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!57, !264, !57, !57, !300, !302}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !303, line: 46, baseType: !186)
!303 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!304 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !270, file: !56, line: 119, baseType: !305, size: 64, offset: 640)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!57, !264, !57, !57, !72, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !265, file: !56, line: 125, baseType: !257, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "socktype", scope: !258, file: !259, line: 52, baseType: !311, size: 64, offset: 768)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !56, line: 160, size: 384, elements: !313)
!313 = !{!314, !315, !316, !317, !322, !326}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !312, file: !56, line: 163, baseType: !57, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !312, file: !56, line: 164, baseType: !57, size: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !56, line: 167, baseType: !57, size: 32, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !312, file: !56, line: 173, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!57, !72, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !312, file: !56, line: 179, baseType: !323, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!57, !57}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !312, file: !56, line: 183, baseType: !194, size: 128, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !258, file: !259, line: 54, baseType: !57, size: 32, offset: 832)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !258, file: !259, line: 56, baseType: !79, size: 704, offset: 896)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sndfd", scope: !258, file: !259, line: 57, baseType: !140, size: 64, offset: 1600)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rcvfd", scope: !258, file: !259, line: 58, baseType: !140, size: 64, offset: 1664)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "termsem", scope: !258, file: !259, line: 59, baseType: !332, size: 256, offset: 1728)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sem", file: !333, line: 64, size: 256, elements: !334)
!333 = !DIFile(filename: "src/aio/../utils/sem.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "925a3ae06fa6fbb251fb87fc0fbd3a0b")
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !332, file: !333, line: 65, baseType: !336, size: 256)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !337, line: 39, baseType: !338)
!337 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!338 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !337, line: 35, size: 256, elements: !339)
!339 = !{!340, !342}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !338, file: !337, line: 37, baseType: !341, size: 256)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !249)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !338, file: !337, line: 38, baseType: !117, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !258, file: !259, line: 63, baseType: !178, size: 128, offset: 1984)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !258, file: !259, line: 66, baseType: !189, size: 128, offset: 2112)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !258, file: !259, line: 69, baseType: !57, size: 32, offset: 2240)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "linger", scope: !258, file: !259, line: 72, baseType: !57, size: 32, offset: 2272)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !258, file: !259, line: 73, baseType: !57, size: 32, offset: 2304)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !258, file: !259, line: 74, baseType: !57, size: 32, offset: 2336)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sndtimeo", scope: !258, file: !259, line: 75, baseType: !57, size: 32, offset: 2368)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rcvtimeo", scope: !258, file: !259, line: 76, baseType: !57, size: 32, offset: 2400)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_ivl", scope: !258, file: !259, line: 77, baseType: !57, size: 32, offset: 2432)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_ivl_max", scope: !258, file: !259, line: 78, baseType: !57, size: 32, offset: 2464)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sndprio", scope: !258, file: !259, line: 79, baseType: !57, size: 32, offset: 2496)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4only", scope: !258, file: !259, line: 80, baseType: !57, size: 32, offset: 2528)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "optsets", scope: !258, file: !259, line: 83, baseType: !356, size: 192, offset: 2560)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 192, elements: !377)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset", file: !60, line: 56, size: 64, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !358, file: !60, line: 57, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset_vfptr", file: !60, line: 48, size: 192, elements: !364)
!364 = !{!365, !369, !373}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !363, file: !60, line: 49, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !357}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !363, file: !60, line: 50, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!57, !357, !57, !300, !302}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !363, file: !60, line: 52, baseType: !374, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!57, !357, !57, !72, !308}
!377 = !{!378}
!378 = !DISubrange(count: 3)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !59, file: !60, line: 154, baseType: !72, size: 64, offset: 832)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !59, file: !60, line: 155, baseType: !220, size: 320, offset: 896)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !59, file: !60, line: 156, baseType: !220, size: 320, offset: 1216)
!382 = !{!0, !7, !12, !17, !22, !27, !32, !34, !39, !44, !49}
!383 = !{i32 7, !"Dwarf Version", i32 5}
!384 = !{i32 2, !"Debug Info Version", i32 3}
!385 = !{i32 1, !"wchar_size", i32 4}
!386 = !{i32 8, !"PIC Level", i32 2}
!387 = !{i32 7, !"PIE Level", i32 2}
!388 = !{i32 7, !"uwtable", i32 2}
!389 = !{i32 7, !"frame-pointer", i32 2}
!390 = !{!"clang version 16.0.0"}
!391 = distinct !DISubprogram(name: "nn_pipebase_init", scope: !2, file: !2, line: 48, type: !392, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !422)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !58, !228, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !60, line: 81, size: 128, elements: !396)
!396 = !{!397, !407}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !395, file: !60, line: 82, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase_vfptr", file: !60, line: 70, size: 128, elements: !401)
!401 = !{!402, !406}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !400, file: !60, line: 75, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !394}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !400, file: !60, line: 78, baseType: !403, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !395, file: !60, line: 83, baseType: !408, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ep", file: !410, line: 35, size: 2112, elements: !411)
!410 = !DIFile(filename: "./src/core/ep.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3cb96b08ce030ea933432a57e3a52863")
!411 = !{!412, !413, !414, !415, !416, !417, !418}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !409, file: !410, line: 36, baseType: !63, size: 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !409, file: !410, line: 37, baseType: !57, size: 32, offset: 640)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "epbase", scope: !409, file: !410, line: 38, baseType: !394, size: 64, offset: 704)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !409, file: !410, line: 39, baseType: !257, size: 64, offset: 768)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !409, file: !410, line: 40, baseType: !57, size: 32, offset: 832)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !409, file: !410, line: 41, baseType: !194, size: 128, offset: 896)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !409, file: !410, line: 42, baseType: !419, size: 1032, offset: 1024)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1032, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 129)
!422 = !{}
!423 = !DILocalVariable(name: "self", arg: 1, scope: !391, file: !2, line: 48, type: !58)
!424 = !DILocation(line: 48, column: 44, scope: !391)
!425 = !DILocalVariable(name: "vfptr", arg: 2, scope: !391, file: !2, line: 49, type: !228)
!426 = !DILocation(line: 49, column: 37, scope: !391)
!427 = !DILocalVariable(name: "epbase", arg: 3, scope: !391, file: !2, line: 49, type: !394)
!428 = !DILocation(line: 49, column: 62, scope: !391)
!429 = !DILocation(line: 51, column: 5, scope: !391)
!430 = !DILocation(line: 51, column: 5, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !2, line: 51, column: 5)
!432 = distinct !DILexicalBlock(scope: !391, file: !2, line: 51, column: 5)
!433 = !DILocation(line: 51, column: 5, scope: !432)
!434 = !DILocation(line: 51, column: 5, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !2, line: 51, column: 5)
!436 = !DILocation(line: 53, column: 19, scope: !391)
!437 = !DILocation(line: 53, column: 25, scope: !391)
!438 = !DILocation(line: 53, column: 39, scope: !391)
!439 = !DILocation(line: 53, column: 46, scope: !391)
!440 = !DILocation(line: 53, column: 54, scope: !391)
!441 = !DILocation(line: 53, column: 58, scope: !391)
!442 = !DILocation(line: 53, column: 64, scope: !391)
!443 = !DILocation(line: 53, column: 5, scope: !391)
!444 = !DILocation(line: 54, column: 19, scope: !391)
!445 = !DILocation(line: 54, column: 5, scope: !391)
!446 = !DILocation(line: 54, column: 11, scope: !391)
!447 = !DILocation(line: 54, column: 17, scope: !391)
!448 = !DILocation(line: 55, column: 5, scope: !391)
!449 = !DILocation(line: 55, column: 11, scope: !391)
!450 = !DILocation(line: 55, column: 17, scope: !391)
!451 = !DILocation(line: 56, column: 5, scope: !391)
!452 = !DILocation(line: 56, column: 11, scope: !391)
!453 = !DILocation(line: 56, column: 19, scope: !391)
!454 = !DILocation(line: 57, column: 5, scope: !391)
!455 = !DILocation(line: 57, column: 11, scope: !391)
!456 = !DILocation(line: 57, column: 20, scope: !391)
!457 = !DILocation(line: 58, column: 18, scope: !391)
!458 = !DILocation(line: 58, column: 26, scope: !391)
!459 = !DILocation(line: 58, column: 30, scope: !391)
!460 = !DILocation(line: 58, column: 5, scope: !391)
!461 = !DILocation(line: 58, column: 11, scope: !391)
!462 = !DILocation(line: 58, column: 16, scope: !391)
!463 = !DILocation(line: 59, column: 25, scope: !391)
!464 = !DILocation(line: 59, column: 31, scope: !391)
!465 = !DILocation(line: 59, column: 5, scope: !391)
!466 = !DILocation(line: 60, column: 25, scope: !391)
!467 = !DILocation(line: 60, column: 31, scope: !391)
!468 = !DILocation(line: 60, column: 5, scope: !391)
!469 = !DILocation(line: 61, column: 1, scope: !391)
!470 = distinct !DISubprogram(name: "nn_pipebase_term", scope: !2, file: !2, line: 63, type: !471, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !422)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !58}
!473 = !DILocalVariable(name: "self", arg: 1, scope: !470, file: !2, line: 63, type: !58)
!474 = !DILocation(line: 63, column: 44, scope: !470)
!475 = !DILocation(line: 65, column: 5, scope: !470)
!476 = !DILocation(line: 65, column: 5, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !2, line: 65, column: 5)
!478 = distinct !DILexicalBlock(scope: !470, file: !2, line: 65, column: 5)
!479 = !DILocation(line: 65, column: 5, scope: !478)
!480 = !DILocation(line: 65, column: 5, scope: !481)
!481 = distinct !DILexicalBlock(scope: !477, file: !2, line: 65, column: 5)
!482 = !DILocation(line: 67, column: 25, scope: !470)
!483 = !DILocation(line: 67, column: 31, scope: !470)
!484 = !DILocation(line: 67, column: 5, scope: !470)
!485 = !DILocation(line: 68, column: 25, scope: !470)
!486 = !DILocation(line: 68, column: 31, scope: !470)
!487 = !DILocation(line: 68, column: 5, scope: !470)
!488 = !DILocation(line: 69, column: 19, scope: !470)
!489 = !DILocation(line: 69, column: 25, scope: !470)
!490 = !DILocation(line: 69, column: 5, scope: !470)
!491 = !DILocation(line: 70, column: 1, scope: !470)
!492 = distinct !DISubprogram(name: "nn_pipebase_start", scope: !2, file: !2, line: 72, type: !493, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !422)
!493 = !DISubroutineType(types: !494)
!494 = !{!57, !58}
!495 = !DILocalVariable(name: "self", arg: 1, scope: !492, file: !2, line: 72, type: !58)
!496 = !DILocation(line: 72, column: 44, scope: !492)
!497 = !DILocalVariable(name: "rc", scope: !492, file: !2, line: 74, type: !57)
!498 = !DILocation(line: 74, column: 9, scope: !492)
!499 = !DILocation(line: 76, column: 5, scope: !492)
!500 = !DILocation(line: 76, column: 5, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !2, line: 76, column: 5)
!502 = distinct !DILexicalBlock(scope: !492, file: !2, line: 76, column: 5)
!503 = !DILocation(line: 76, column: 5, scope: !502)
!504 = !DILocation(line: 76, column: 5, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !2, line: 76, column: 5)
!506 = !DILocation(line: 78, column: 5, scope: !492)
!507 = !DILocation(line: 78, column: 11, scope: !492)
!508 = !DILocation(line: 78, column: 17, scope: !492)
!509 = !DILocation(line: 79, column: 5, scope: !492)
!510 = !DILocation(line: 79, column: 11, scope: !492)
!511 = !DILocation(line: 79, column: 19, scope: !492)
!512 = !DILocation(line: 80, column: 5, scope: !492)
!513 = !DILocation(line: 80, column: 11, scope: !492)
!514 = !DILocation(line: 80, column: 20, scope: !492)
!515 = !DILocation(line: 81, column: 23, scope: !492)
!516 = !DILocation(line: 81, column: 29, scope: !492)
!517 = !DILocation(line: 81, column: 53, scope: !492)
!518 = !DILocation(line: 81, column: 10, scope: !492)
!519 = !DILocation(line: 81, column: 8, scope: !492)
!520 = !DILocation(line: 82, column: 9, scope: !521)
!521 = distinct !DILexicalBlock(scope: !492, file: !2, line: 82, column: 9)
!522 = !DILocation(line: 82, column: 9, scope: !492)
!523 = !DILocation(line: 83, column: 16, scope: !521)
!524 = !DILocation(line: 83, column: 9, scope: !521)
!525 = !DILocation(line: 84, column: 9, scope: !526)
!526 = distinct !DILexicalBlock(scope: !492, file: !2, line: 84, column: 9)
!527 = !DILocation(line: 84, column: 15, scope: !526)
!528 = !DILocation(line: 84, column: 9, scope: !492)
!529 = !DILocation(line: 85, column: 24, scope: !526)
!530 = !DILocation(line: 85, column: 30, scope: !526)
!531 = !DILocation(line: 85, column: 36, scope: !526)
!532 = !DILocation(line: 85, column: 42, scope: !526)
!533 = !DILocation(line: 85, column: 9, scope: !526)
!534 = !DILocation(line: 87, column: 5, scope: !492)
!535 = !DILocation(line: 88, column: 1, scope: !492)
!536 = distinct !DISubprogram(name: "nn_pipebase_stop", scope: !2, file: !2, line: 90, type: !471, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !422)
!537 = !DILocalVariable(name: "self", arg: 1, scope: !536, file: !2, line: 90, type: !58)
!538 = !DILocation(line: 90, column: 44, scope: !536)
!539 = !DILocation(line: 92, column: 9, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !2, line: 92, column: 9)
!541 = !DILocation(line: 92, column: 15, scope: !540)
!542 = !DILocation(line: 92, column: 21, scope: !540)
!543 = !DILocation(line: 92, column: 9, scope: !536)
!544 = !DILocation(line: 93, column: 9, scope: !540)
!545 = !DILocation(line: 94, column: 17, scope: !536)
!546 = !DILocation(line: 94, column: 23, scope: !536)
!547 = !DILocation(line: 94, column: 47, scope: !536)
!548 = !DILocation(line: 94, column: 5, scope: !536)
!549 = !DILocation(line: 95, column: 5, scope: !536)
!550 = !DILocation(line: 95, column: 11, scope: !536)
!551 = !DILocation(line: 95, column: 17, scope: !536)
!552 = !DILocation(line: 96, column: 1, scope: !536)
!553 = distinct !DISubprogram(name: "nn_pipebase_received", scope: !2, file: !2, line: 98, type: !471, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !422)
!554 = !DILocalVariable(name: "self", arg: 1, scope: !553, file: !2, line: 98, type: !58)
!555 = !DILocation(line: 98, column: 48, scope: !553)
!556 = !DILocation(line: 100, column: 9, scope: !557)
!557 = distinct !DILexicalBlock(scope: !553, file: !2, line: 100, column: 9)
!558 = !DILocation(line: 100, column: 9, scope: !553)
!559 = !DILocation(line: 101, column: 9, scope: !560)
!560 = distinct !DILexicalBlock(scope: !557, file: !2, line: 100, column: 67)
!561 = !DILocation(line: 101, column: 15, scope: !560)
!562 = !DILocation(line: 101, column: 23, scope: !560)
!563 = !DILocation(line: 102, column: 9, scope: !560)
!564 = !DILocation(line: 104, column: 5, scope: !553)
!565 = !DILocation(line: 104, column: 5, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !2, line: 104, column: 5)
!567 = distinct !DILexicalBlock(scope: !553, file: !2, line: 104, column: 5)
!568 = !DILocation(line: 104, column: 5, scope: !567)
!569 = !DILocation(line: 104, column: 5, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !2, line: 104, column: 5)
!571 = !DILocation(line: 105, column: 5, scope: !553)
!572 = !DILocation(line: 105, column: 11, scope: !553)
!573 = !DILocation(line: 105, column: 19, scope: !553)
!574 = !DILocation(line: 106, column: 9, scope: !575)
!575 = distinct !DILexicalBlock(scope: !553, file: !2, line: 106, column: 9)
!576 = !DILocation(line: 106, column: 15, scope: !575)
!577 = !DILocation(line: 106, column: 9, scope: !553)
!578 = !DILocation(line: 107, column: 24, scope: !575)
!579 = !DILocation(line: 107, column: 30, scope: !575)
!580 = !DILocation(line: 107, column: 36, scope: !575)
!581 = !DILocation(line: 107, column: 42, scope: !575)
!582 = !DILocation(line: 107, column: 9, scope: !575)
!583 = !DILocation(line: 108, column: 1, scope: !553)
!584 = distinct !DISubprogram(name: "nn_pipebase_sent", scope: !2, file: !2, line: 110, type: !471, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !422)
!585 = !DILocalVariable(name: "self", arg: 1, scope: !584, file: !2, line: 110, type: !58)
!586 = !DILocation(line: 110, column: 44, scope: !584)
!587 = !DILocation(line: 112, column: 9, scope: !588)
!588 = distinct !DILexicalBlock(scope: !584, file: !2, line: 112, column: 9)
!589 = !DILocation(line: 112, column: 9, scope: !584)
!590 = !DILocation(line: 113, column: 9, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !2, line: 112, column: 67)
!592 = !DILocation(line: 113, column: 15, scope: !591)
!593 = !DILocation(line: 113, column: 24, scope: !591)
!594 = !DILocation(line: 114, column: 9, scope: !591)
!595 = !DILocation(line: 116, column: 5, scope: !584)
!596 = !DILocation(line: 116, column: 5, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !2, line: 116, column: 5)
!598 = distinct !DILexicalBlock(scope: !584, file: !2, line: 116, column: 5)
!599 = !DILocation(line: 116, column: 5, scope: !598)
!600 = !DILocation(line: 116, column: 5, scope: !601)
!601 = distinct !DILexicalBlock(scope: !597, file: !2, line: 116, column: 5)
!602 = !DILocation(line: 117, column: 5, scope: !584)
!603 = !DILocation(line: 117, column: 11, scope: !584)
!604 = !DILocation(line: 117, column: 20, scope: !584)
!605 = !DILocation(line: 118, column: 9, scope: !606)
!606 = distinct !DILexicalBlock(scope: !584, file: !2, line: 118, column: 9)
!607 = !DILocation(line: 118, column: 15, scope: !606)
!608 = !DILocation(line: 118, column: 9, scope: !584)
!609 = !DILocation(line: 119, column: 24, scope: !606)
!610 = !DILocation(line: 119, column: 30, scope: !606)
!611 = !DILocation(line: 119, column: 36, scope: !606)
!612 = !DILocation(line: 119, column: 42, scope: !606)
!613 = !DILocation(line: 119, column: 9, scope: !606)
!614 = !DILocation(line: 120, column: 1, scope: !584)
!615 = distinct !DISubprogram(name: "nn_pipebase_getopt", scope: !2, file: !2, line: 122, type: !616, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !422)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !58, !57, !57, !72, !308}
!618 = !DILocalVariable(name: "self", arg: 1, scope: !615, file: !2, line: 122, type: !58)
!619 = !DILocation(line: 122, column: 46, scope: !615)
!620 = !DILocalVariable(name: "level", arg: 2, scope: !615, file: !2, line: 122, type: !57)
!621 = !DILocation(line: 122, column: 56, scope: !615)
!622 = !DILocalVariable(name: "option", arg: 3, scope: !615, file: !2, line: 122, type: !57)
!623 = !DILocation(line: 122, column: 67, scope: !615)
!624 = !DILocalVariable(name: "optval", arg: 4, scope: !615, file: !2, line: 123, type: !72)
!625 = !DILocation(line: 123, column: 11, scope: !615)
!626 = !DILocalVariable(name: "optvallen", arg: 5, scope: !615, file: !2, line: 123, type: !308)
!627 = !DILocation(line: 123, column: 27, scope: !615)
!628 = !DILocalVariable(name: "rc", scope: !615, file: !2, line: 125, type: !57)
!629 = !DILocation(line: 125, column: 9, scope: !615)
!630 = !DILocation(line: 127, column: 32, scope: !615)
!631 = !DILocation(line: 127, column: 38, scope: !615)
!632 = !DILocation(line: 127, column: 44, scope: !615)
!633 = !DILocation(line: 127, column: 51, scope: !615)
!634 = !DILocation(line: 127, column: 59, scope: !615)
!635 = !DILocation(line: 127, column: 67, scope: !615)
!636 = !DILocation(line: 127, column: 10, scope: !615)
!637 = !DILocation(line: 127, column: 8, scope: !615)
!638 = !DILocation(line: 128, column: 5, scope: !615)
!639 = !DILocation(line: 128, column: 5, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !2, line: 128, column: 5)
!641 = distinct !DILexicalBlock(scope: !615, file: !2, line: 128, column: 5)
!642 = !DILocation(line: 128, column: 5, scope: !641)
!643 = !DILocation(line: 128, column: 5, scope: !644)
!644 = distinct !DILexicalBlock(scope: !640, file: !2, line: 128, column: 5)
!645 = !DILocation(line: 129, column: 1, scope: !615)
!646 = distinct !DISubprogram(name: "nn_pipebase_ispeer", scope: !2, file: !2, line: 131, type: !647, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !422)
!647 = !DISubroutineType(types: !648)
!648 = !{!57, !58, !57}
!649 = !DILocalVariable(name: "self", arg: 1, scope: !646, file: !2, line: 131, type: !58)
!650 = !DILocation(line: 131, column: 45, scope: !646)
!651 = !DILocalVariable(name: "socktype", arg: 2, scope: !646, file: !2, line: 131, type: !57)
!652 = !DILocation(line: 131, column: 55, scope: !646)
!653 = !DILocation(line: 133, column: 28, scope: !646)
!654 = !DILocation(line: 133, column: 34, scope: !646)
!655 = !DILocation(line: 133, column: 40, scope: !646)
!656 = !DILocation(line: 133, column: 12, scope: !646)
!657 = !DILocation(line: 133, column: 5, scope: !646)
!658 = distinct !DISubprogram(name: "nn_pipe_setdata", scope: !2, file: !2, line: 136, type: !659, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !422)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !54, !72}
!661 = !DILocalVariable(name: "self", arg: 1, scope: !658, file: !2, line: 136, type: !54)
!662 = !DILocation(line: 136, column: 39, scope: !658)
!663 = !DILocalVariable(name: "data", arg: 2, scope: !658, file: !2, line: 136, type: !72)
!664 = !DILocation(line: 136, column: 51, scope: !658)
!665 = !DILocation(line: 138, column: 42, scope: !658)
!666 = !DILocation(line: 138, column: 28, scope: !658)
!667 = !DILocation(line: 138, column: 35, scope: !658)
!668 = !DILocation(line: 138, column: 40, scope: !658)
!669 = !DILocation(line: 139, column: 1, scope: !658)
!670 = distinct !DISubprogram(name: "nn_pipe_getdata", scope: !2, file: !2, line: 141, type: !671, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !422)
!671 = !DISubroutineType(types: !672)
!672 = !{!72, !54}
!673 = !DILocalVariable(name: "self", arg: 1, scope: !670, file: !2, line: 141, type: !54)
!674 = !DILocation(line: 141, column: 40, scope: !670)
!675 = !DILocation(line: 143, column: 35, scope: !670)
!676 = !DILocation(line: 143, column: 42, scope: !670)
!677 = !DILocation(line: 143, column: 5, scope: !670)
!678 = distinct !DISubprogram(name: "nn_pipe_send", scope: !2, file: !2, line: 146, type: !679, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !422)
!679 = !DISubroutineType(types: !680)
!680 = !{!57, !54, !236}
!681 = !DILocalVariable(name: "self", arg: 1, scope: !678, file: !2, line: 146, type: !54)
!682 = !DILocation(line: 146, column: 35, scope: !678)
!683 = !DILocalVariable(name: "msg", arg: 2, scope: !678, file: !2, line: 146, type: !236)
!684 = !DILocation(line: 146, column: 56, scope: !678)
!685 = !DILocalVariable(name: "rc", scope: !678, file: !2, line: 148, type: !57)
!686 = !DILocation(line: 148, column: 9, scope: !678)
!687 = !DILocalVariable(name: "pipebase", scope: !678, file: !2, line: 149, type: !58)
!688 = !DILocation(line: 149, column: 25, scope: !678)
!689 = !DILocation(line: 151, column: 38, scope: !678)
!690 = !DILocation(line: 151, column: 14, scope: !678)
!691 = !DILocation(line: 152, column: 5, scope: !678)
!692 = !DILocation(line: 152, column: 5, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !2, line: 152, column: 5)
!694 = distinct !DILexicalBlock(scope: !678, file: !2, line: 152, column: 5)
!695 = !DILocation(line: 152, column: 5, scope: !694)
!696 = !DILocation(line: 152, column: 5, scope: !697)
!697 = distinct !DILexicalBlock(scope: !693, file: !2, line: 152, column: 5)
!698 = !DILocation(line: 153, column: 5, scope: !678)
!699 = !DILocation(line: 153, column: 15, scope: !678)
!700 = !DILocation(line: 153, column: 24, scope: !678)
!701 = !DILocation(line: 154, column: 10, scope: !678)
!702 = !DILocation(line: 154, column: 20, scope: !678)
!703 = !DILocation(line: 154, column: 27, scope: !678)
!704 = !DILocation(line: 154, column: 33, scope: !678)
!705 = !DILocation(line: 154, column: 43, scope: !678)
!706 = !DILocation(line: 154, column: 8, scope: !678)
!707 = !DILocation(line: 155, column: 5, scope: !678)
!708 = !DILocation(line: 155, column: 5, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !2, line: 155, column: 5)
!710 = distinct !DILexicalBlock(scope: !678, file: !2, line: 155, column: 5)
!711 = !DILocation(line: 155, column: 5, scope: !710)
!712 = !DILocation(line: 155, column: 5, scope: !713)
!713 = distinct !DILexicalBlock(scope: !709, file: !2, line: 155, column: 5)
!714 = !DILocation(line: 156, column: 9, scope: !715)
!715 = distinct !DILexicalBlock(scope: !678, file: !2, line: 156, column: 9)
!716 = !DILocation(line: 156, column: 9, scope: !678)
!717 = !DILocation(line: 157, column: 9, scope: !718)
!718 = distinct !DILexicalBlock(scope: !715, file: !2, line: 156, column: 68)
!719 = !DILocation(line: 157, column: 19, scope: !718)
!720 = !DILocation(line: 157, column: 28, scope: !718)
!721 = !DILocation(line: 158, column: 16, scope: !718)
!722 = !DILocation(line: 158, column: 9, scope: !718)
!723 = !DILocation(line: 160, column: 5, scope: !678)
!724 = !DILocation(line: 160, column: 5, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !2, line: 160, column: 5)
!726 = distinct !DILexicalBlock(scope: !678, file: !2, line: 160, column: 5)
!727 = !DILocation(line: 160, column: 5, scope: !726)
!728 = !DILocation(line: 160, column: 5, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !2, line: 160, column: 5)
!730 = !DILocation(line: 161, column: 5, scope: !678)
!731 = !DILocation(line: 161, column: 15, scope: !678)
!732 = !DILocation(line: 161, column: 24, scope: !678)
!733 = !DILocation(line: 162, column: 12, scope: !678)
!734 = !DILocation(line: 162, column: 15, scope: !678)
!735 = !DILocation(line: 162, column: 5, scope: !678)
!736 = !DILocation(line: 163, column: 1, scope: !678)
!737 = distinct !DISubprogram(name: "nn_pipe_recv", scope: !2, file: !2, line: 165, type: !679, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !422)
!738 = !DILocalVariable(name: "self", arg: 1, scope: !737, file: !2, line: 165, type: !54)
!739 = !DILocation(line: 165, column: 35, scope: !737)
!740 = !DILocalVariable(name: "msg", arg: 2, scope: !737, file: !2, line: 165, type: !236)
!741 = !DILocation(line: 165, column: 56, scope: !737)
!742 = !DILocalVariable(name: "rc", scope: !737, file: !2, line: 167, type: !57)
!743 = !DILocation(line: 167, column: 9, scope: !737)
!744 = !DILocalVariable(name: "pipebase", scope: !737, file: !2, line: 168, type: !58)
!745 = !DILocation(line: 168, column: 25, scope: !737)
!746 = !DILocation(line: 170, column: 38, scope: !737)
!747 = !DILocation(line: 170, column: 14, scope: !737)
!748 = !DILocation(line: 171, column: 5, scope: !737)
!749 = !DILocation(line: 171, column: 5, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !2, line: 171, column: 5)
!751 = distinct !DILexicalBlock(scope: !737, file: !2, line: 171, column: 5)
!752 = !DILocation(line: 171, column: 5, scope: !751)
!753 = !DILocation(line: 171, column: 5, scope: !754)
!754 = distinct !DILexicalBlock(scope: !750, file: !2, line: 171, column: 5)
!755 = !DILocation(line: 172, column: 5, scope: !737)
!756 = !DILocation(line: 172, column: 15, scope: !737)
!757 = !DILocation(line: 172, column: 23, scope: !737)
!758 = !DILocation(line: 173, column: 10, scope: !737)
!759 = !DILocation(line: 173, column: 20, scope: !737)
!760 = !DILocation(line: 173, column: 27, scope: !737)
!761 = !DILocation(line: 173, column: 33, scope: !737)
!762 = !DILocation(line: 173, column: 43, scope: !737)
!763 = !DILocation(line: 173, column: 8, scope: !737)
!764 = !DILocation(line: 174, column: 5, scope: !737)
!765 = !DILocation(line: 174, column: 5, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !2, line: 174, column: 5)
!767 = distinct !DILexicalBlock(scope: !737, file: !2, line: 174, column: 5)
!768 = !DILocation(line: 174, column: 5, scope: !767)
!769 = !DILocation(line: 174, column: 5, scope: !770)
!770 = distinct !DILexicalBlock(scope: !766, file: !2, line: 174, column: 5)
!771 = !DILocation(line: 176, column: 9, scope: !772)
!772 = distinct !DILexicalBlock(scope: !737, file: !2, line: 176, column: 9)
!773 = !DILocation(line: 176, column: 9, scope: !737)
!774 = !DILocation(line: 177, column: 9, scope: !775)
!775 = distinct !DILexicalBlock(scope: !772, file: !2, line: 176, column: 70)
!776 = !DILocation(line: 177, column: 19, scope: !775)
!777 = !DILocation(line: 177, column: 27, scope: !775)
!778 = !DILocation(line: 178, column: 16, scope: !775)
!779 = !DILocation(line: 178, column: 9, scope: !775)
!780 = !DILocation(line: 180, column: 5, scope: !737)
!781 = !DILocation(line: 180, column: 5, scope: !782)
!782 = distinct !DILexicalBlock(scope: !783, file: !2, line: 180, column: 5)
!783 = distinct !DILexicalBlock(scope: !737, file: !2, line: 180, column: 5)
!784 = !DILocation(line: 180, column: 5, scope: !783)
!785 = !DILocation(line: 180, column: 5, scope: !786)
!786 = distinct !DILexicalBlock(scope: !782, file: !2, line: 180, column: 5)
!787 = !DILocation(line: 181, column: 5, scope: !737)
!788 = !DILocation(line: 181, column: 15, scope: !737)
!789 = !DILocation(line: 181, column: 23, scope: !737)
!790 = !DILocation(line: 182, column: 12, scope: !737)
!791 = !DILocation(line: 182, column: 15, scope: !737)
!792 = !DILocation(line: 182, column: 5, scope: !737)
!793 = !DILocation(line: 183, column: 1, scope: !737)
