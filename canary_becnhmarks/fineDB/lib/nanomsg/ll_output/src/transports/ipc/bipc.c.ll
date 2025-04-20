; ModuleID = './src/transports/ipc/bipc.c'
source_filename = "./src/transports/ipc/bipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_epbase_vfptr = type { ptr, ptr }
%struct.nn_bipc = type { %struct.nn_fsm, i32, %struct.nn_epbase, %struct.nn_usock, ptr, %struct.nn_list }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_epbase = type { ptr, ptr }
%struct.nn_usock = type { %struct.nn_fsm, i32, ptr, i32, %struct.nn_worker_fd, %struct.anon, %struct.anon.0, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_fsm_event, ptr }
%struct.nn_worker_fd = type { ptr, %struct.nn_poller_hndl }
%struct.nn_poller_hndl = type { i32 }
%struct.anon = type { ptr, i64, ptr, i64, i64 }
%struct.anon.0 = type { %struct.msghdr, [3 x %struct.iovec] }
%struct.msghdr = type { ptr, i32, ptr, i64, ptr, i64, i32 }
%struct.iovec = type { ptr, i64 }
%struct.nn_worker_task = type { ptr, %struct.nn_queue_item }
%struct.nn_list = type { ptr, ptr }
%struct.nn_aipc = type { %struct.nn_fsm, i32, %struct.nn_usock, ptr, %struct.nn_fsm_owner, %struct.nn_sipc, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_list_item }
%struct.nn_fsm_owner = type { i32, ptr }
%struct.nn_sipc = type { %struct.nn_fsm, i32, ptr, %struct.nn_streamhdr, %struct.nn_fsm_owner, %struct.nn_pipebase, i32, [9 x i8], %struct.nn_msg, i32, [9 x i8], %struct.nn_msg, %struct.nn_fsm_event }
%struct.nn_streamhdr = type { %struct.nn_fsm, i32, %struct.nn_timer, ptr, %struct.nn_fsm_owner, ptr, [8 x i8], %struct.nn_fsm_event }
%struct.nn_timer = type { %struct.nn_fsm, i32, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_timer, %struct.nn_fsm_event, ptr, i32 }
%struct.nn_worker_timer = type { ptr, %struct.nn_timerset_hndl }
%struct.nn_timerset_hndl = type { %struct.nn_list_item, i64 }
%struct.nn_pipebase = type { %struct.nn_fsm, ptr, i8, i8, i8, ptr, ptr, %struct.nn_fsm_event, %struct.nn_fsm_event }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }
%struct.nn_list_item = type { ptr, ptr }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.sockaddr_un = type { i16, [108 x i8] }

@nn_bipc_epbase_vfptr = dso_local constant %struct.nn_epbase_vfptr { ptr @nn_bipc_stop, ptr @nn_bipc_destroy }, align 8, !dbg !0
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !392
@.str.1 = private unnamed_addr constant [28 x i8] c"./src/transports/ipc/bipc.c\00", align 1, !dbg !397
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !402
@.str.3 = private unnamed_addr constant [34 x i8] c"bipc->state == NN_BIPC_STATE_IDLE\00", align 1, !dbg !407
@.str.4 = private unnamed_addr constant [19 x i8] c"bipc->aipc == NULL\00", align 1, !dbg !412
@.str.5 = private unnamed_addr constant [51 x i8] c"src == NN_BIPC_SRC_AIPC && type == NN_AIPC_STOPPED\00", align 1, !dbg !417
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !422
@.str.7 = private unnamed_addr constant [24 x i8] c"src == NN_BIPC_SRC_AIPC\00", align 1, !dbg !427
@.str.8 = private unnamed_addr constant [38 x i8] c"strlen (addr) < sizeof (un->sun_path)\00", align 1, !dbg !432
@.str.9 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !437
@.str.10 = private unnamed_addr constant [19 x i8] c"self->aipc == NULL\00", align 1, !dbg !442

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_bipc_stop(ptr noundef %0) #0 !dbg !452 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !454, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.declare(metadata ptr %3, metadata !456, metadata !DIExpression()), !dbg !457
  %4 = load ptr, ptr %2, align 8, !dbg !458
  %5 = icmp ne ptr %4, null, !dbg !458
  br i1 %5, label %6, label %9, !dbg !458

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !458
  %8 = getelementptr inbounds i8, ptr %7, i64 -88, !dbg !458
  br label %10, !dbg !458

9:                                                ; preds = %1
  br label %10, !dbg !458

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !458
  store ptr %11, ptr %3, align 8, !dbg !459
  %12 = load ptr, ptr %3, align 8, !dbg !460
  %13 = getelementptr inbounds %struct.nn_bipc, ptr %12, i32 0, i32 0, !dbg !461
  call void @nn_fsm_stop(ptr noundef %13), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_bipc_destroy(ptr noundef %0) #0 !dbg !464 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !465, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.declare(metadata ptr %3, metadata !467, metadata !DIExpression()), !dbg !468
  %4 = load ptr, ptr %2, align 8, !dbg !469
  %5 = icmp ne ptr %4, null, !dbg !469
  br i1 %5, label %6, label %9, !dbg !469

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !469
  %8 = getelementptr inbounds i8, ptr %7, i64 -88, !dbg !469
  br label %10, !dbg !469

9:                                                ; preds = %1
  br label %10, !dbg !469

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !469
  store ptr %11, ptr %3, align 8, !dbg !470
  br label %12, !dbg !471

12:                                               ; preds = %10
  %13 = load ptr, ptr %3, align 8, !dbg !472
  %14 = getelementptr inbounds %struct.nn_bipc, ptr %13, i32 0, i32 1, !dbg !472
  %15 = load i32, ptr %14, align 8, !dbg !472
  %16 = icmp eq i32 %15, 1, !dbg !472
  %17 = xor i1 %16, true, !dbg !472
  %18 = zext i1 %17 to i32, !dbg !472
  %19 = sext i32 %18 to i64, !dbg !472
  %20 = icmp ne i64 %19, 0, !dbg !472
  br i1 %20, label %21, label %24, !dbg !475

21:                                               ; preds = %12
  %22 = load ptr, ptr @stderr, align 8, !dbg !476
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 127), !dbg !476
  call void @nn_err_abort() #8, !dbg !476
  unreachable, !dbg !476

24:                                               ; preds = %12
  br label %25, !dbg !475

25:                                               ; preds = %24
  %26 = load ptr, ptr %3, align 8, !dbg !478
  %27 = getelementptr inbounds %struct.nn_bipc, ptr %26, i32 0, i32 5, !dbg !479
  call void @nn_list_term(ptr noundef %27), !dbg !480
  br label %28, !dbg !481

28:                                               ; preds = %25
  %29 = load ptr, ptr %3, align 8, !dbg !482
  %30 = getelementptr inbounds %struct.nn_bipc, ptr %29, i32 0, i32 4, !dbg !482
  %31 = load ptr, ptr %30, align 8, !dbg !482
  %32 = icmp eq ptr %31, null, !dbg !482
  %33 = xor i1 %32, true, !dbg !482
  %34 = zext i1 %33 to i32, !dbg !482
  %35 = sext i32 %34 to i64, !dbg !482
  %36 = icmp ne i64 %35, 0, !dbg !482
  br i1 %36, label %37, label %40, !dbg !485

37:                                               ; preds = %28
  %38 = load ptr, ptr @stderr, align 8, !dbg !486
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 129), !dbg !486
  call void @nn_err_abort() #8, !dbg !486
  unreachable, !dbg !486

40:                                               ; preds = %28
  br label %41, !dbg !485

41:                                               ; preds = %40
  %42 = load ptr, ptr %3, align 8, !dbg !488
  %43 = getelementptr inbounds %struct.nn_bipc, ptr %42, i32 0, i32 3, !dbg !489
  call void @nn_usock_term(ptr noundef %43), !dbg !490
  %44 = load ptr, ptr %3, align 8, !dbg !491
  %45 = getelementptr inbounds %struct.nn_bipc, ptr %44, i32 0, i32 2, !dbg !492
  call void @nn_epbase_term(ptr noundef %45), !dbg !493
  %46 = load ptr, ptr %3, align 8, !dbg !494
  %47 = getelementptr inbounds %struct.nn_bipc, ptr %46, i32 0, i32 0, !dbg !495
  call void @nn_fsm_term(ptr noundef %47), !dbg !496
  %48 = load ptr, ptr %3, align 8, !dbg !497
  call void @nn_free(ptr noundef %48), !dbg !498
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_bipc_create(ptr noundef %0, ptr noundef %1) #0 !dbg !500 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !504, metadata !DIExpression()), !dbg !505
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !506, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.declare(metadata ptr %5, metadata !508, metadata !DIExpression()), !dbg !509
  %6 = call ptr @nn_alloc_(i64 noundef 656), !dbg !510
  store ptr %6, ptr %5, align 8, !dbg !511
  br label %7, !dbg !512

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !513
  %9 = icmp ne ptr %8, null, !dbg !513
  %10 = xor i1 %9, true, !dbg !513
  %11 = zext i1 %10 to i32, !dbg !513
  %12 = sext i32 %11 to i64, !dbg !513
  %13 = icmp ne i64 %12, 0, !dbg !513
  br i1 %13, label %14, label %17, !dbg !516

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !517
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 92), !dbg !517
  call void @nn_err_abort() #8, !dbg !517
  unreachable, !dbg !517

17:                                               ; preds = %7
  br label %18, !dbg !516

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !519
  %20 = getelementptr inbounds %struct.nn_bipc, ptr %19, i32 0, i32 2, !dbg !520
  %21 = load ptr, ptr %3, align 8, !dbg !521
  call void @nn_epbase_init(ptr noundef %20, ptr noundef @nn_bipc_epbase_vfptr, ptr noundef %21), !dbg !522
  %22 = load ptr, ptr %5, align 8, !dbg !523
  %23 = getelementptr inbounds %struct.nn_bipc, ptr %22, i32 0, i32 0, !dbg !524
  %24 = load ptr, ptr %5, align 8, !dbg !525
  %25 = getelementptr inbounds %struct.nn_bipc, ptr %24, i32 0, i32 2, !dbg !526
  %26 = call ptr @nn_epbase_getctx(ptr noundef %25), !dbg !527
  call void @nn_fsm_init_root(ptr noundef %23, ptr noundef @nn_bipc_handler, ptr noundef %26), !dbg !528
  %27 = load ptr, ptr %5, align 8, !dbg !529
  %28 = getelementptr inbounds %struct.nn_bipc, ptr %27, i32 0, i32 1, !dbg !530
  store i32 1, ptr %28, align 8, !dbg !531
  %29 = load ptr, ptr %5, align 8, !dbg !532
  %30 = getelementptr inbounds %struct.nn_bipc, ptr %29, i32 0, i32 3, !dbg !533
  %31 = load ptr, ptr %5, align 8, !dbg !534
  %32 = getelementptr inbounds %struct.nn_bipc, ptr %31, i32 0, i32 0, !dbg !535
  call void @nn_usock_init(ptr noundef %30, i32 noundef 1, ptr noundef %32), !dbg !536
  %33 = load ptr, ptr %5, align 8, !dbg !537
  %34 = getelementptr inbounds %struct.nn_bipc, ptr %33, i32 0, i32 4, !dbg !538
  store ptr null, ptr %34, align 8, !dbg !539
  %35 = load ptr, ptr %5, align 8, !dbg !540
  %36 = getelementptr inbounds %struct.nn_bipc, ptr %35, i32 0, i32 5, !dbg !541
  call void @nn_list_init(ptr noundef %36), !dbg !542
  %37 = load ptr, ptr %5, align 8, !dbg !543
  %38 = getelementptr inbounds %struct.nn_bipc, ptr %37, i32 0, i32 0, !dbg !544
  call void @nn_fsm_start(ptr noundef %38), !dbg !545
  %39 = load ptr, ptr %5, align 8, !dbg !546
  %40 = getelementptr inbounds %struct.nn_bipc, ptr %39, i32 0, i32 2, !dbg !547
  %41 = load ptr, ptr %4, align 8, !dbg !548
  store ptr %40, ptr %41, align 8, !dbg !549
  ret i32 0, !dbg !550
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_epbase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_fsm_init_root(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_bipc_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !551 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !552, metadata !DIExpression()), !dbg !553
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !554, metadata !DIExpression()), !dbg !555
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !556, metadata !DIExpression()), !dbg !557
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !558, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.declare(metadata ptr %9, metadata !560, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.declare(metadata ptr %10, metadata !562, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.declare(metadata ptr %11, metadata !564, metadata !DIExpression()), !dbg !565
  %12 = load ptr, ptr %5, align 8, !dbg !566
  %13 = icmp ne ptr %12, null, !dbg !566
  br i1 %13, label %14, label %17, !dbg !566

14:                                               ; preds = %4
  %15 = load ptr, ptr %5, align 8, !dbg !566
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !566
  br label %18, !dbg !566

17:                                               ; preds = %4
  br label %18, !dbg !566

18:                                               ; preds = %17, %14
  %19 = phi ptr [ %16, %14 ], [ null, %17 ], !dbg !566
  store ptr %19, ptr %9, align 8, !dbg !567
  %20 = load i32, ptr %6, align 4, !dbg !568
  %21 = icmp eq i32 %20, -2, !dbg !568
  br i1 %21, label %22, label %25, !dbg !568

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4, !dbg !568
  %24 = icmp eq i32 %23, -3, !dbg !568
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ], !dbg !570
  %27 = zext i1 %26 to i32, !dbg !568
  %28 = sext i32 %27 to i64, !dbg !568
  %29 = icmp ne i64 %28, 0, !dbg !568
  br i1 %29, label %30, label %36, !dbg !571

30:                                               ; preds = %25
  %31 = load ptr, ptr %9, align 8, !dbg !572
  %32 = getelementptr inbounds %struct.nn_bipc, ptr %31, i32 0, i32 4, !dbg !574
  %33 = load ptr, ptr %32, align 8, !dbg !574
  call void @nn_aipc_stop(ptr noundef %33), !dbg !575
  %34 = load ptr, ptr %9, align 8, !dbg !576
  %35 = getelementptr inbounds %struct.nn_bipc, ptr %34, i32 0, i32 1, !dbg !577
  store i32 3, ptr %35, align 8, !dbg !578
  br label %36, !dbg !579

36:                                               ; preds = %30, %25
  %37 = load ptr, ptr %9, align 8, !dbg !580
  %38 = getelementptr inbounds %struct.nn_bipc, ptr %37, i32 0, i32 1, !dbg !580
  %39 = load i32, ptr %38, align 8, !dbg !580
  %40 = icmp eq i32 %39, 3, !dbg !580
  %41 = zext i1 %40 to i32, !dbg !580
  %42 = sext i32 %41 to i64, !dbg !580
  %43 = icmp ne i64 %42, 0, !dbg !580
  br i1 %43, label %44, label %64, !dbg !582

44:                                               ; preds = %36
  %45 = load ptr, ptr %9, align 8, !dbg !583
  %46 = getelementptr inbounds %struct.nn_bipc, ptr %45, i32 0, i32 4, !dbg !586
  %47 = load ptr, ptr %46, align 8, !dbg !586
  %48 = call i32 @nn_aipc_isidle(ptr noundef %47), !dbg !587
  %49 = icmp ne i32 %48, 0, !dbg !587
  br i1 %49, label %51, label %50, !dbg !588

50:                                               ; preds = %44
  br label %241, !dbg !589

51:                                               ; preds = %44
  %52 = load ptr, ptr %9, align 8, !dbg !590
  %53 = getelementptr inbounds %struct.nn_bipc, ptr %52, i32 0, i32 4, !dbg !591
  %54 = load ptr, ptr %53, align 8, !dbg !591
  call void @nn_aipc_term(ptr noundef %54), !dbg !592
  %55 = load ptr, ptr %9, align 8, !dbg !593
  %56 = getelementptr inbounds %struct.nn_bipc, ptr %55, i32 0, i32 4, !dbg !594
  %57 = load ptr, ptr %56, align 8, !dbg !594
  call void @nn_free(ptr noundef %57), !dbg !595
  %58 = load ptr, ptr %9, align 8, !dbg !596
  %59 = getelementptr inbounds %struct.nn_bipc, ptr %58, i32 0, i32 4, !dbg !597
  store ptr null, ptr %59, align 8, !dbg !598
  %60 = load ptr, ptr %9, align 8, !dbg !599
  %61 = getelementptr inbounds %struct.nn_bipc, ptr %60, i32 0, i32 3, !dbg !600
  call void @nn_usock_stop(ptr noundef %61), !dbg !601
  %62 = load ptr, ptr %9, align 8, !dbg !602
  %63 = getelementptr inbounds %struct.nn_bipc, ptr %62, i32 0, i32 1, !dbg !603
  store i32 4, ptr %63, align 8, !dbg !604
  br label %64, !dbg !605

64:                                               ; preds = %51, %36
  %65 = load ptr, ptr %9, align 8, !dbg !606
  %66 = getelementptr inbounds %struct.nn_bipc, ptr %65, i32 0, i32 1, !dbg !606
  %67 = load i32, ptr %66, align 8, !dbg !606
  %68 = icmp eq i32 %67, 4, !dbg !606
  %69 = zext i1 %68 to i32, !dbg !606
  %70 = sext i32 %69 to i64, !dbg !606
  %71 = icmp ne i64 %70, 0, !dbg !606
  br i1 %71, label %72, label %106, !dbg !608

72:                                               ; preds = %64
  %73 = load ptr, ptr %9, align 8, !dbg !609
  %74 = getelementptr inbounds %struct.nn_bipc, ptr %73, i32 0, i32 3, !dbg !612
  %75 = call i32 @nn_usock_isidle(ptr noundef %74), !dbg !613
  %76 = icmp ne i32 %75, 0, !dbg !613
  br i1 %76, label %78, label %77, !dbg !614

77:                                               ; preds = %72
  br label %241, !dbg !615

78:                                               ; preds = %72
  %79 = load ptr, ptr %9, align 8, !dbg !616
  %80 = getelementptr inbounds %struct.nn_bipc, ptr %79, i32 0, i32 5, !dbg !618
  %81 = call ptr @nn_list_begin(ptr noundef %80), !dbg !619
  store ptr %81, ptr %10, align 8, !dbg !620
  br label %82, !dbg !621

82:                                               ; preds = %98, %78
  %83 = load ptr, ptr %10, align 8, !dbg !622
  %84 = load ptr, ptr %9, align 8, !dbg !624
  %85 = getelementptr inbounds %struct.nn_bipc, ptr %84, i32 0, i32 5, !dbg !625
  %86 = call ptr @nn_list_end(ptr noundef %85), !dbg !626
  %87 = icmp ne ptr %83, %86, !dbg !627
  br i1 %87, label %88, label %103, !dbg !628

88:                                               ; preds = %82
  %89 = load ptr, ptr %10, align 8, !dbg !629
  %90 = icmp ne ptr %89, null, !dbg !629
  br i1 %90, label %91, label %94, !dbg !629

91:                                               ; preds = %88
  %92 = load ptr, ptr %10, align 8, !dbg !629
  %93 = getelementptr inbounds i8, ptr %92, i64 -1600, !dbg !629
  br label %95, !dbg !629

94:                                               ; preds = %88
  br label %95, !dbg !629

95:                                               ; preds = %94, %91
  %96 = phi ptr [ %93, %91 ], [ null, %94 ], !dbg !629
  store ptr %96, ptr %11, align 8, !dbg !631
  %97 = load ptr, ptr %11, align 8, !dbg !632
  call void @nn_aipc_stop(ptr noundef %97), !dbg !633
  br label %98, !dbg !634

98:                                               ; preds = %95
  %99 = load ptr, ptr %9, align 8, !dbg !635
  %100 = getelementptr inbounds %struct.nn_bipc, ptr %99, i32 0, i32 5, !dbg !636
  %101 = load ptr, ptr %10, align 8, !dbg !637
  %102 = call ptr @nn_list_next(ptr noundef %100, ptr noundef %101), !dbg !638
  store ptr %102, ptr %10, align 8, !dbg !639
  br label %82, !dbg !640, !llvm.loop !641

103:                                              ; preds = %82
  %104 = load ptr, ptr %9, align 8, !dbg !644
  %105 = getelementptr inbounds %struct.nn_bipc, ptr %104, i32 0, i32 1, !dbg !645
  store i32 5, ptr %105, align 8, !dbg !646
  br label %140, !dbg !647

106:                                              ; preds = %64
  %107 = load ptr, ptr %9, align 8, !dbg !648
  %108 = getelementptr inbounds %struct.nn_bipc, ptr %107, i32 0, i32 1, !dbg !648
  %109 = load i32, ptr %108, align 8, !dbg !648
  %110 = icmp eq i32 %109, 5, !dbg !648
  %111 = zext i1 %110 to i32, !dbg !648
  %112 = sext i32 %111 to i64, !dbg !648
  %113 = icmp ne i64 %112, 0, !dbg !648
  br i1 %113, label %114, label %153, !dbg !650

114:                                              ; preds = %106
  br label %115, !dbg !651

115:                                              ; preds = %114
  %116 = load i32, ptr %6, align 4, !dbg !653
  %117 = icmp eq i32 %116, 2, !dbg !653
  br i1 %117, label %118, label %121, !dbg !653

118:                                              ; preds = %115
  %119 = load i32, ptr %7, align 4, !dbg !653
  %120 = icmp eq i32 %119, 34233, !dbg !653
  br label %121

121:                                              ; preds = %118, %115
  %122 = phi i1 [ false, %115 ], [ %120, %118 ], !dbg !656
  %123 = xor i1 %122, true, !dbg !653
  %124 = zext i1 %123 to i32, !dbg !653
  %125 = sext i32 %124 to i64, !dbg !653
  %126 = icmp ne i64 %125, 0, !dbg !653
  br i1 %126, label %127, label %130, !dbg !657

127:                                              ; preds = %121
  %128 = load ptr, ptr @stderr, align 8, !dbg !658
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 175), !dbg !658
  call void @nn_err_abort() #8, !dbg !658
  unreachable, !dbg !658

130:                                              ; preds = %121
  br label %131, !dbg !657

131:                                              ; preds = %130
  %132 = load ptr, ptr %8, align 8, !dbg !660
  store ptr %132, ptr %11, align 8, !dbg !661
  %133 = load ptr, ptr %9, align 8, !dbg !662
  %134 = getelementptr inbounds %struct.nn_bipc, ptr %133, i32 0, i32 5, !dbg !663
  %135 = load ptr, ptr %11, align 8, !dbg !664
  %136 = getelementptr inbounds %struct.nn_aipc, ptr %135, i32 0, i32 8, !dbg !665
  %137 = call ptr @nn_list_erase(ptr noundef %134, ptr noundef %136), !dbg !666
  %138 = load ptr, ptr %11, align 8, !dbg !667
  call void @nn_aipc_term(ptr noundef %138), !dbg !668
  %139 = load ptr, ptr %11, align 8, !dbg !669
  call void @nn_free(ptr noundef %139), !dbg !670
  br label %140, !dbg !670

140:                                              ; preds = %131, %103
  call void @llvm.dbg.label(metadata !671), !dbg !672
  %141 = load ptr, ptr %9, align 8, !dbg !673
  %142 = getelementptr inbounds %struct.nn_bipc, ptr %141, i32 0, i32 5, !dbg !675
  %143 = call i32 @nn_list_empty(ptr noundef %142), !dbg !676
  %144 = icmp ne i32 %143, 0, !dbg !676
  br i1 %144, label %145, label %152, !dbg !677

145:                                              ; preds = %140
  %146 = load ptr, ptr %9, align 8, !dbg !678
  %147 = getelementptr inbounds %struct.nn_bipc, ptr %146, i32 0, i32 1, !dbg !680
  store i32 1, ptr %147, align 8, !dbg !681
  %148 = load ptr, ptr %9, align 8, !dbg !682
  %149 = getelementptr inbounds %struct.nn_bipc, ptr %148, i32 0, i32 0, !dbg !683
  call void @nn_fsm_stopped_noevent(ptr noundef %149), !dbg !684
  %150 = load ptr, ptr %9, align 8, !dbg !685
  %151 = getelementptr inbounds %struct.nn_bipc, ptr %150, i32 0, i32 2, !dbg !686
  call void @nn_epbase_stopped(ptr noundef %151), !dbg !687
  br label %241, !dbg !688

152:                                              ; preds = %140
  br label %241, !dbg !689

153:                                              ; preds = %106
  %154 = load ptr, ptr %9, align 8, !dbg !690
  %155 = getelementptr inbounds %struct.nn_bipc, ptr %154, i32 0, i32 1, !dbg !691
  %156 = load i32, ptr %155, align 8, !dbg !691
  switch i32 %156, label %236 [
    i32 1, label %157
    i32 2, label %178
  ], !dbg !692

157:                                              ; preds = %153
  %158 = load i32, ptr %6, align 4, !dbg !693
  switch i32 %158, label %172 [
    i32 -2, label %159
  ], !dbg !695

159:                                              ; preds = %157
  %160 = load i32, ptr %7, align 4, !dbg !696
  switch i32 %160, label %166 [
    i32 -2, label %161
  ], !dbg !698

161:                                              ; preds = %159
  %162 = load ptr, ptr %9, align 8, !dbg !699
  call void @nn_bipc_start_listening(ptr noundef %162), !dbg !701
  %163 = load ptr, ptr %9, align 8, !dbg !702
  call void @nn_bipc_start_accepting(ptr noundef %163), !dbg !703
  %164 = load ptr, ptr %9, align 8, !dbg !704
  %165 = getelementptr inbounds %struct.nn_bipc, ptr %164, i32 0, i32 1, !dbg !705
  store i32 2, ptr %165, align 8, !dbg !706
  br label %241, !dbg !707

166:                                              ; preds = %159
  br label %167, !dbg !708

167:                                              ; preds = %166
  %168 = load ptr, ptr @stderr, align 8, !dbg !709
  %169 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 210), !dbg !709
  call void @nn_err_abort() #8, !dbg !709
  unreachable, !dbg !709

170:                                              ; No predecessors!
  br label %171, !dbg !713

171:                                              ; preds = %170
  br label %172, !dbg !713

172:                                              ; preds = %157, %171
  br label %173, !dbg !714

173:                                              ; preds = %172
  %174 = load ptr, ptr @stderr, align 8, !dbg !715
  %175 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 214), !dbg !715
  call void @nn_err_abort() #8, !dbg !715
  unreachable, !dbg !715

176:                                              ; No predecessors!
  br label %177, !dbg !719

177:                                              ; preds = %176
  br label %178, !dbg !719

178:                                              ; preds = %153, %177
  %179 = load ptr, ptr %8, align 8, !dbg !720
  %180 = load ptr, ptr %9, align 8, !dbg !722
  %181 = getelementptr inbounds %struct.nn_bipc, ptr %180, i32 0, i32 4, !dbg !723
  %182 = load ptr, ptr %181, align 8, !dbg !723
  %183 = icmp eq ptr %179, %182, !dbg !724
  br i1 %183, label %184, label %205, !dbg !725

184:                                              ; preds = %178
  %185 = load i32, ptr %7, align 4, !dbg !726
  switch i32 %185, label %199 [
    i32 34231, label %186
  ], !dbg !728

186:                                              ; preds = %184
  %187 = load ptr, ptr %9, align 8, !dbg !729
  %188 = getelementptr inbounds %struct.nn_bipc, ptr %187, i32 0, i32 5, !dbg !731
  %189 = load ptr, ptr %9, align 8, !dbg !732
  %190 = getelementptr inbounds %struct.nn_bipc, ptr %189, i32 0, i32 4, !dbg !733
  %191 = load ptr, ptr %190, align 8, !dbg !733
  %192 = getelementptr inbounds %struct.nn_aipc, ptr %191, i32 0, i32 8, !dbg !734
  %193 = load ptr, ptr %9, align 8, !dbg !735
  %194 = getelementptr inbounds %struct.nn_bipc, ptr %193, i32 0, i32 5, !dbg !736
  %195 = call ptr @nn_list_end(ptr noundef %194), !dbg !737
  call void @nn_list_insert(ptr noundef %188, ptr noundef %192, ptr noundef %195), !dbg !738
  %196 = load ptr, ptr %9, align 8, !dbg !739
  %197 = getelementptr inbounds %struct.nn_bipc, ptr %196, i32 0, i32 4, !dbg !740
  store ptr null, ptr %197, align 8, !dbg !741
  %198 = load ptr, ptr %9, align 8, !dbg !742
  call void @nn_bipc_start_accepting(ptr noundef %198), !dbg !743
  br label %241, !dbg !744

199:                                              ; preds = %184
  br label %200, !dbg !745

200:                                              ; preds = %199
  %201 = load ptr, ptr @stderr, align 8, !dbg !746
  %202 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 238), !dbg !746
  call void @nn_err_abort() #8, !dbg !746
  unreachable, !dbg !746

203:                                              ; No predecessors!
  br label %204, !dbg !750

204:                                              ; preds = %203
  br label %205, !dbg !751

205:                                              ; preds = %204, %178
  br label %206, !dbg !752

206:                                              ; preds = %205
  %207 = load i32, ptr %6, align 4, !dbg !753
  %208 = icmp eq i32 %207, 2, !dbg !753
  %209 = xor i1 %208, true, !dbg !753
  %210 = zext i1 %209 to i32, !dbg !753
  %211 = sext i32 %210 to i64, !dbg !753
  %212 = icmp ne i64 %211, 0, !dbg !753
  br i1 %212, label %213, label %216, !dbg !756

213:                                              ; preds = %206
  %214 = load ptr, ptr @stderr, align 8, !dbg !757
  %215 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %214, ptr noundef @.str.2, ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 244), !dbg !757
  call void @nn_err_abort() #8, !dbg !757
  unreachable, !dbg !757

216:                                              ; preds = %206
  br label %217, !dbg !756

217:                                              ; preds = %216
  %218 = load ptr, ptr %8, align 8, !dbg !759
  store ptr %218, ptr %11, align 8, !dbg !760
  %219 = load i32, ptr %7, align 4, !dbg !761
  switch i32 %219, label %230 [
    i32 34232, label %220
    i32 34233, label %222
  ], !dbg !762

220:                                              ; preds = %217
  %221 = load ptr, ptr %11, align 8, !dbg !763
  call void @nn_aipc_stop(ptr noundef %221), !dbg !765
  br label %241, !dbg !766

222:                                              ; preds = %217
  %223 = load ptr, ptr %9, align 8, !dbg !767
  %224 = getelementptr inbounds %struct.nn_bipc, ptr %223, i32 0, i32 5, !dbg !768
  %225 = load ptr, ptr %11, align 8, !dbg !769
  %226 = getelementptr inbounds %struct.nn_aipc, ptr %225, i32 0, i32 8, !dbg !770
  %227 = call ptr @nn_list_erase(ptr noundef %224, ptr noundef %226), !dbg !771
  %228 = load ptr, ptr %11, align 8, !dbg !772
  call void @nn_aipc_term(ptr noundef %228), !dbg !773
  %229 = load ptr, ptr %11, align 8, !dbg !774
  call void @nn_free(ptr noundef %229), !dbg !775
  br label %241, !dbg !776

230:                                              ; preds = %217
  br label %231, !dbg !777

231:                                              ; preds = %230
  %232 = load ptr, ptr @stderr, align 8, !dbg !778
  %233 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 256), !dbg !778
  call void @nn_err_abort() #8, !dbg !778
  unreachable, !dbg !778

234:                                              ; No predecessors!
  br label %235, !dbg !782

235:                                              ; preds = %234
  br label %236, !dbg !782

236:                                              ; preds = %153, %235
  br label %237, !dbg !783

237:                                              ; preds = %236
  %238 = load ptr, ptr @stderr, align 8, !dbg !784
  %239 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %238, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 263), !dbg !784
  call void @nn_err_abort() #8, !dbg !784
  unreachable, !dbg !784

240:                                              ; No predecessors!
  br label %241, !dbg !788

241:                                              ; preds = %50, %77, %145, %152, %161, %186, %220, %222, %240
  ret void, !dbg !789
}

declare ptr @nn_epbase_getctx(ptr noundef) #2

declare void @nn_usock_init(ptr noundef, i32 noundef, ptr noundef) #2

declare void @nn_list_init(ptr noundef) #2

declare void @nn_fsm_start(ptr noundef) #2

declare void @nn_fsm_stop(ptr noundef) #2

declare void @nn_list_term(ptr noundef) #2

declare void @nn_usock_term(ptr noundef) #2

declare void @nn_epbase_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

declare void @nn_free(ptr noundef) #2

declare void @nn_aipc_stop(ptr noundef) #2

declare i32 @nn_aipc_isidle(ptr noundef) #2

declare void @nn_aipc_term(ptr noundef) #2

declare void @nn_usock_stop(ptr noundef) #2

declare i32 @nn_usock_isidle(ptr noundef) #2

declare ptr @nn_list_begin(ptr noundef) #2

declare ptr @nn_list_end(ptr noundef) #2

declare ptr @nn_list_next(ptr noundef, ptr noundef) #2

declare ptr @nn_list_erase(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare i32 @nn_list_empty(ptr noundef) #2

declare void @nn_fsm_stopped_noevent(ptr noundef) #2

declare void @nn_epbase_stopped(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_bipc_start_listening(ptr noundef %0) #0 !dbg !790 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !793, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.declare(metadata ptr %3, metadata !795, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.declare(metadata ptr %4, metadata !797, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.declare(metadata ptr %5, metadata !807, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.declare(metadata ptr %6, metadata !809, metadata !DIExpression()), !dbg !812
  %7 = load ptr, ptr %2, align 8, !dbg !813
  %8 = getelementptr inbounds %struct.nn_bipc, ptr %7, i32 0, i32 2, !dbg !814
  %9 = call ptr @nn_epbase_getaddr(ptr noundef %8), !dbg !815
  store ptr %9, ptr %6, align 8, !dbg !816
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 128, i1 false), !dbg !817
  store ptr %4, ptr %5, align 8, !dbg !818
  br label %10, !dbg !819

10:                                               ; preds = %1
  %11 = load ptr, ptr %6, align 8, !dbg !820
  %12 = call i64 @strlen(ptr noundef %11) #9, !dbg !820
  %13 = icmp ult i64 %12, 108, !dbg !820
  %14 = xor i1 %13, true, !dbg !820
  %15 = zext i1 %14 to i32, !dbg !820
  %16 = sext i32 %15 to i64, !dbg !820
  %17 = icmp ne i64 %16, 0, !dbg !820
  br i1 %17, label %18, label %21, !dbg !823

18:                                               ; preds = %10
  %19 = load ptr, ptr @stderr, align 8, !dbg !824
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.2, ptr noundef @.str.8, ptr noundef @.str.1, i32 noundef 282), !dbg !824
  call void @nn_err_abort() #8, !dbg !824
  unreachable, !dbg !824

21:                                               ; preds = %10
  br label %22, !dbg !823

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.sockaddr_storage, ptr %4, i32 0, i32 0, !dbg !826
  store i16 1, ptr %23, align 8, !dbg !827
  %24 = load ptr, ptr %5, align 8, !dbg !828
  %25 = getelementptr inbounds %struct.sockaddr_un, ptr %24, i32 0, i32 1, !dbg !829
  %26 = getelementptr inbounds [108 x i8], ptr %25, i64 0, i64 0, !dbg !828
  %27 = load ptr, ptr %6, align 8, !dbg !830
  %28 = call ptr @strncpy(ptr noundef %26, ptr noundef %27, i64 noundef 108) #10, !dbg !831
  %29 = load ptr, ptr %6, align 8, !dbg !832
  %30 = call i32 @unlink(ptr noundef %29) #10, !dbg !833
  store i32 %30, ptr %3, align 4, !dbg !834
  br label %31, !dbg !835

31:                                               ; preds = %22
  %32 = load i32, ptr %3, align 4, !dbg !836
  %33 = icmp eq i32 %32, 0, !dbg !836
  br i1 %33, label %38, label %34, !dbg !836

34:                                               ; preds = %31
  %35 = call ptr @__errno_location() #11, !dbg !836
  %36 = load i32, ptr %35, align 4, !dbg !836
  %37 = icmp eq i32 %36, 2, !dbg !836
  br label %38, !dbg !836

38:                                               ; preds = %34, %31
  %39 = phi i1 [ true, %31 ], [ %37, %34 ]
  %40 = xor i1 %39, true, !dbg !836
  %41 = zext i1 %40 to i32, !dbg !836
  %42 = sext i32 %41 to i64, !dbg !836
  %43 = icmp ne i64 %42, 0, !dbg !836
  br i1 %43, label %44, label %52, !dbg !839

44:                                               ; preds = %38
  %45 = load ptr, ptr @stderr, align 8, !dbg !840
  %46 = call ptr @__errno_location() #11, !dbg !840
  %47 = load i32, ptr %46, align 4, !dbg !840
  %48 = call ptr @nn_err_strerror(i32 noundef %47), !dbg !840
  %49 = call ptr @__errno_location() #11, !dbg !840
  %50 = load i32, ptr %49, align 4, !dbg !840
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.9, ptr noundef %48, i32 noundef %50, ptr noundef @.str.1, i32 noundef 289), !dbg !840
  call void @nn_err_abort() #8, !dbg !840
  unreachable, !dbg !840

52:                                               ; preds = %38
  br label %53, !dbg !839

53:                                               ; preds = %52
  %54 = load ptr, ptr %2, align 8, !dbg !842
  %55 = getelementptr inbounds %struct.nn_bipc, ptr %54, i32 0, i32 3, !dbg !843
  %56 = call i32 @nn_usock_start(ptr noundef %55, i32 noundef 1, i32 noundef 1, i32 noundef 0), !dbg !844
  store i32 %56, ptr %3, align 4, !dbg !845
  br label %57, !dbg !846

57:                                               ; preds = %53
  %58 = load i32, ptr %3, align 4, !dbg !847
  %59 = icmp eq i32 %58, 0, !dbg !847
  %60 = xor i1 %59, true, !dbg !847
  %61 = zext i1 %60 to i32, !dbg !847
  %62 = sext i32 %61 to i64, !dbg !847
  %63 = icmp ne i64 %62, 0, !dbg !847
  br i1 %63, label %64, label %72, !dbg !850

64:                                               ; preds = %57
  %65 = load ptr, ptr @stderr, align 8, !dbg !851
  %66 = load i32, ptr %3, align 4, !dbg !851
  %67 = sub nsw i32 0, %66, !dbg !851
  %68 = call ptr @nn_err_strerror(i32 noundef %67), !dbg !851
  %69 = load i32, ptr %3, align 4, !dbg !851
  %70 = sub nsw i32 0, %69, !dbg !851
  %71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef @.str.9, ptr noundef %68, i32 noundef %70, ptr noundef @.str.1, i32 noundef 294), !dbg !851
  call void @nn_err_abort() #8, !dbg !851
  unreachable, !dbg !851

72:                                               ; preds = %57
  br label %73, !dbg !850

73:                                               ; preds = %72
  %74 = load ptr, ptr %2, align 8, !dbg !853
  %75 = getelementptr inbounds %struct.nn_bipc, ptr %74, i32 0, i32 3, !dbg !854
  %76 = call i32 @nn_usock_bind(ptr noundef %75, ptr noundef %4, i64 noundef 110), !dbg !855
  store i32 %76, ptr %3, align 4, !dbg !856
  br label %77, !dbg !857

77:                                               ; preds = %73
  %78 = load i32, ptr %3, align 4, !dbg !858
  %79 = icmp eq i32 %78, 0, !dbg !858
  %80 = xor i1 %79, true, !dbg !858
  %81 = zext i1 %80 to i32, !dbg !858
  %82 = sext i32 %81 to i64, !dbg !858
  %83 = icmp ne i64 %82, 0, !dbg !858
  br i1 %83, label %84, label %92, !dbg !861

84:                                               ; preds = %77
  %85 = load ptr, ptr @stderr, align 8, !dbg !862
  %86 = load i32, ptr %3, align 4, !dbg !862
  %87 = sub nsw i32 0, %86, !dbg !862
  %88 = call ptr @nn_err_strerror(i32 noundef %87), !dbg !862
  %89 = load i32, ptr %3, align 4, !dbg !862
  %90 = sub nsw i32 0, %89, !dbg !862
  %91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef @.str.9, ptr noundef %88, i32 noundef %90, ptr noundef @.str.1, i32 noundef 297), !dbg !862
  call void @nn_err_abort() #8, !dbg !862
  unreachable, !dbg !862

92:                                               ; preds = %77
  br label %93, !dbg !861

93:                                               ; preds = %92
  %94 = load ptr, ptr %2, align 8, !dbg !864
  %95 = getelementptr inbounds %struct.nn_bipc, ptr %94, i32 0, i32 3, !dbg !865
  %96 = call i32 @nn_usock_listen(ptr noundef %95, i32 noundef 10), !dbg !866
  store i32 %96, ptr %3, align 4, !dbg !867
  br label %97, !dbg !868

97:                                               ; preds = %93
  %98 = load i32, ptr %3, align 4, !dbg !869
  %99 = icmp eq i32 %98, 0, !dbg !869
  %100 = xor i1 %99, true, !dbg !869
  %101 = zext i1 %100 to i32, !dbg !869
  %102 = sext i32 %101 to i64, !dbg !869
  %103 = icmp ne i64 %102, 0, !dbg !869
  br i1 %103, label %104, label %112, !dbg !872

104:                                              ; preds = %97
  %105 = load ptr, ptr @stderr, align 8, !dbg !873
  %106 = load i32, ptr %3, align 4, !dbg !873
  %107 = sub nsw i32 0, %106, !dbg !873
  %108 = call ptr @nn_err_strerror(i32 noundef %107), !dbg !873
  %109 = load i32, ptr %3, align 4, !dbg !873
  %110 = sub nsw i32 0, %109, !dbg !873
  %111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef @.str.9, ptr noundef %108, i32 noundef %110, ptr noundef @.str.1, i32 noundef 299), !dbg !873
  call void @nn_err_abort() #8, !dbg !873
  unreachable, !dbg !873

112:                                              ; preds = %97
  br label %113, !dbg !872

113:                                              ; preds = %112
  ret void, !dbg !875
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_bipc_start_accepting(ptr noundef %0) #0 !dbg !876 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !877, metadata !DIExpression()), !dbg !878
  br label %3, !dbg !879

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !880
  %5 = getelementptr inbounds %struct.nn_bipc, ptr %4, i32 0, i32 4, !dbg !880
  %6 = load ptr, ptr %5, align 8, !dbg !880
  %7 = icmp eq ptr %6, null, !dbg !880
  %8 = xor i1 %7, true, !dbg !880
  %9 = zext i1 %8 to i32, !dbg !880
  %10 = sext i32 %9 to i64, !dbg !880
  %11 = icmp ne i64 %10, 0, !dbg !880
  br i1 %11, label %12, label %15, !dbg !883

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !dbg !884
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.2, ptr noundef @.str.10, ptr noundef @.str.1, i32 noundef 304), !dbg !884
  call void @nn_err_abort() #8, !dbg !884
  unreachable, !dbg !884

15:                                               ; preds = %3
  br label %16, !dbg !883

16:                                               ; preds = %15
  %17 = call ptr @nn_alloc_(i64 noundef 1616), !dbg !886
  %18 = load ptr, ptr %2, align 8, !dbg !887
  %19 = getelementptr inbounds %struct.nn_bipc, ptr %18, i32 0, i32 4, !dbg !888
  store ptr %17, ptr %19, align 8, !dbg !889
  br label %20, !dbg !890

20:                                               ; preds = %16
  %21 = load ptr, ptr %2, align 8, !dbg !891
  %22 = getelementptr inbounds %struct.nn_bipc, ptr %21, i32 0, i32 4, !dbg !891
  %23 = load ptr, ptr %22, align 8, !dbg !891
  %24 = icmp ne ptr %23, null, !dbg !891
  %25 = xor i1 %24, true, !dbg !891
  %26 = zext i1 %25 to i32, !dbg !891
  %27 = sext i32 %26 to i64, !dbg !891
  %28 = icmp ne i64 %27, 0, !dbg !891
  br i1 %28, label %29, label %32, !dbg !894

29:                                               ; preds = %20
  %30 = load ptr, ptr @stderr, align 8, !dbg !895
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 308), !dbg !895
  call void @nn_err_abort() #8, !dbg !895
  unreachable, !dbg !895

32:                                               ; preds = %20
  br label %33, !dbg !894

33:                                               ; preds = %32
  %34 = load ptr, ptr %2, align 8, !dbg !897
  %35 = getelementptr inbounds %struct.nn_bipc, ptr %34, i32 0, i32 4, !dbg !898
  %36 = load ptr, ptr %35, align 8, !dbg !898
  %37 = load ptr, ptr %2, align 8, !dbg !899
  %38 = getelementptr inbounds %struct.nn_bipc, ptr %37, i32 0, i32 2, !dbg !900
  %39 = load ptr, ptr %2, align 8, !dbg !901
  %40 = getelementptr inbounds %struct.nn_bipc, ptr %39, i32 0, i32 0, !dbg !902
  call void @nn_aipc_init(ptr noundef %36, i32 noundef 2, ptr noundef %38, ptr noundef %40), !dbg !903
  %41 = load ptr, ptr %2, align 8, !dbg !904
  %42 = getelementptr inbounds %struct.nn_bipc, ptr %41, i32 0, i32 4, !dbg !905
  %43 = load ptr, ptr %42, align 8, !dbg !905
  %44 = load ptr, ptr %2, align 8, !dbg !906
  %45 = getelementptr inbounds %struct.nn_bipc, ptr %44, i32 0, i32 3, !dbg !907
  call void @nn_aipc_start(ptr noundef %43, ptr noundef %45), !dbg !908
  ret void, !dbg !909
}

declare void @nn_list_insert(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @nn_epbase_getaddr(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nounwind
declare i32 @unlink(ptr noundef) #6

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #7

declare ptr @nn_err_strerror(i32 noundef) #2

declare i32 @nn_usock_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @nn_usock_bind(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @nn_usock_listen(ptr noundef, i32 noundef) #2

declare void @nn_aipc_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @nn_aipc_start(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!444, !445, !446, !447, !448, !449, !450}
!llvm.ident = !{!451}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_bipc_epbase_vfptr", scope: !2, file: !21, line: 75, type: !62, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !391, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/transports/ipc/bipc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e3196819c803d3b3465ab665e2b781f9")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !6, line: 24, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!9 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!10 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!11 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!12 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!13 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!14 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!15 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!16 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!17 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!18 = !{!19, !370, !34, !263, !371, !33, !383}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_bipc", file: !21, line: 52, size: 5248, elements: !22)
!21 = !DIFile(filename: "./src/transports/ipc/bipc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e3196819c803d3b3465ab665e2b781f9")
!22 = !{!23, !55, !56, !74, !262, !369}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !20, file: !21, line: 55, baseType: !24, size: 640)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !25, line: 66, size: 640, elements: !26)
!25 = !DIFile(filename: "src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!26 = !{!27, !35, !36, !37, !38, !39, !42}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !24, file: !25, line: 67, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !25, line: 58, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !33, !33, !34}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !24, file: !25, line: 68, baseType: !33, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !24, file: !25, line: 69, baseType: !33, size: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !24, file: !25, line: 70, baseType: !34, size: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !24, file: !25, line: 71, baseType: !32, size: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !24, file: !25, line: 72, baseType: !40, size: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !25, line: 30, flags: DIFlagFwdDecl)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !24, file: !25, line: 73, baseType: !43, size: 320, offset: 320)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !25, line: 34, size: 320, elements: !44)
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !43, file: !25, line: 35, baseType: !32, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !43, file: !25, line: 36, baseType: !33, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !43, file: !25, line: 37, baseType: !34, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !43, file: !25, line: 38, baseType: !33, size: 32, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !43, file: !25, line: 39, baseType: !50, size: 64, offset: 256)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !51, line: 33, size: 64, elements: !52)
!51 = !DIFile(filename: "src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !50, file: !51, line: 34, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !20, file: !21, line: 56, baseType: !33, size: 32, offset: 640)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "epbase", scope: !20, file: !21, line: 60, baseType: !57, size: 128, offset: 704)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !58, line: 81, size: 128, elements: !59)
!58 = !DIFile(filename: "./src/transports/ipc/../../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
!59 = !{!60, !71}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !57, file: !58, line: 82, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase_vfptr", file: !58, line: 70, size: 128, elements: !64)
!64 = !{!65, !70}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !63, file: !58, line: 75, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !63, file: !58, line: 78, baseType: !66, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !57, file: !58, line: 83, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ep", file: !58, line: 83, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !20, file: !21, line: 63, baseType: !75, size: 4224, offset: 832)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_usock", file: !76, line: 29, size: 4224, elements: !77)
!76 = !DIFile(filename: "src/aio/usock_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "31b785bc46a858e5ba003f912abaeac8")
!77 = !{!78, !79, !80, !200, !201, !206, !220, !246, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !75, file: !76, line: 32, baseType: !24, size: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !75, file: !76, line: 33, baseType: !33, size: 32, offset: 640)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !75, file: !76, line: 36, baseType: !81, size: 64, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !83, line: 53, size: 1408, elements: !84)
!83 = !DIFile(filename: "src/aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!84 = !{!85, !121, !126, !127, !133, !160, !161, !187}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !82, file: !83, line: 54, baseType: !86, size: 320)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !87, line: 32, size: 320, elements: !88)
!87 = !DIFile(filename: "src/aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !86, file: !87, line: 36, baseType: !90, size: 320)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !91, line: 72, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !91, line: 67, size: 320, elements: !93)
!93 = !{!94, !114, !119}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !92, file: !91, line: 69, baseType: !95, size: 320)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !96, line: 22, size: 320, elements: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!97 = !{!98, !99, !100, !101, !102, !103, !105, !106}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !95, file: !96, line: 24, baseType: !33, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !95, file: !96, line: 25, baseType: !7, size: 32, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !95, file: !96, line: 26, baseType: !33, size: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !95, file: !96, line: 28, baseType: !7, size: 32, offset: 96)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !95, file: !96, line: 32, baseType: !33, size: 32, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !95, file: !96, line: 34, baseType: !104, size: 16, offset: 160)
!104 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !95, file: !96, line: 35, baseType: !104, size: 16, offset: 176)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !95, file: !96, line: 36, baseType: !107, size: 128, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !108, line: 55, baseType: !109)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !108, line: 51, size: 128, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !109, file: !108, line: 53, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !109, file: !108, line: 54, baseType: !112, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !92, file: !91, line: 70, baseType: !115, size: 320)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 320, elements: !117)
!116 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!117 = !{!118}
!118 = !DISubrange(count: 40)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !92, file: !91, line: 71, baseType: !120, size: 64)
!120 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !82, file: !83, line: 55, baseType: !122, size: 128, offset: 320)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !51, line: 37, size: 128, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !122, file: !51, line: 38, baseType: !54, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !122, file: !51, line: 39, baseType: !54, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !82, file: !83, line: 56, baseType: !50, size: 64, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !82, file: !83, line: 57, baseType: !128, size: 64, offset: 512)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !129, line: 25, size: 64, elements: !130)
!129 = !DIFile(filename: "src/aio/../utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!130 = !{!131, !132}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !128, file: !129, line: 26, baseType: !33, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !128, file: !129, line: 27, baseType: !33, size: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !82, file: !83, line: 58, baseType: !134, size: 320, offset: 576)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !135, line: 31, size: 320, elements: !136)
!135 = !DIFile(filename: "src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!136 = !{!137, !138, !139, !140, !148, !159}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !134, file: !135, line: 34, baseType: !33, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !134, file: !135, line: 37, baseType: !33, size: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !134, file: !135, line: 40, baseType: !33, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !134, file: !135, line: 43, baseType: !141, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !143, line: 36, size: 64, elements: !144)
!143 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!144 = !{!145, !146, !147}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !142, file: !143, line: 38, baseType: !33, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !142, file: !143, line: 39, baseType: !104, size: 16, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !142, file: !143, line: 40, baseType: !104, size: 16, offset: 48)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !134, file: !135, line: 52, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !135, line: 48, size: 128, elements: !151)
!151 = !{!152, !157, !158}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !150, file: !135, line: 49, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !135, line: 27, size: 32, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !154, file: !135, line: 28, baseType: !33, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !150, file: !135, line: 50, baseType: !33, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !135, line: 51, baseType: !33, size: 32, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !134, file: !135, line: 55, baseType: !33, size: 32, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !82, file: !83, line: 59, baseType: !154, size: 32, offset: 896)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !82, file: !83, line: 60, baseType: !162, size: 256, offset: 960)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !163, line: 37, size: 256, elements: !164)
!163 = !DIFile(filename: "src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!164 = !{!165, !176}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !162, file: !163, line: 38, baseType: !166, size: 128)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !167, line: 31, size: 128, elements: !168)
!167 = !DIFile(filename: "src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!168 = !{!169, !175}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !166, file: !167, line: 33, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !171, line: 27, baseType: !172)
!171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !173, line: 45, baseType: !174)
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!174 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !166, file: !167, line: 34, baseType: !170, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !162, file: !163, line: 39, baseType: !177, size: 128, offset: 128)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !178, line: 31, size: 128, elements: !179)
!178 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!179 = !{!180, !186}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !177, file: !178, line: 32, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !178, line: 26, size: 128, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !178, line: 27, baseType: !181, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !182, file: !178, line: 28, baseType: !181, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !177, file: !178, line: 33, baseType: !181, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !82, file: !83, line: 61, baseType: !188, size: 192, offset: 1216)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !189, line: 25, size: 192, elements: !190)
!189 = !DIFile(filename: "src/aio/../utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!190 = !{!191, !197, !198}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !188, file: !189, line: 27, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !194, line: 28, baseType: !195)
!194 = !DIFile(filename: "src/aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!195 = !DISubroutineType(types: !196)
!196 = !{null, !34}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !188, file: !189, line: 28, baseType: !34, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !188, file: !189, line: 29, baseType: !199, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !91, line: 27, baseType: !174)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !75, file: !76, line: 39, baseType: !33, size: 32, offset: 768)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "wfd", scope: !75, file: !76, line: 40, baseType: !202, size: 128, offset: 832)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_fd", file: !83, line: 40, size: 128, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !202, file: !83, line: 41, baseType: !32, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !202, file: !83, line: 42, baseType: !154, size: 32, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !75, file: !76, line: 59, baseType: !207, size: 320, offset: 960)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !75, file: !76, line: 43, size: 320, elements: !208)
!208 = !{!209, !214, !217, !218, !219}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !207, file: !76, line: 46, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !171, line: 24, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !173, line: 38, baseType: !213)
!213 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !207, file: !76, line: 47, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !216, line: 46, baseType: !174)
!216 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!217 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !207, file: !76, line: 50, baseType: !210, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "batch_len", scope: !207, file: !76, line: 53, baseType: !215, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "batch_pos", scope: !207, file: !76, line: 58, baseType: !215, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !75, file: !76, line: 69, baseType: !221, size: 832, offset: 1280)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !75, file: !76, line: 62, size: 832, elements: !222)
!222 = !{!223, !242}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !221, file: !76, line: 65, baseType: !224, size: 448)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !225, line: 259, size: 448, elements: !226)
!225 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!226 = !{!227, !228, !231, !238, !239, !240, !241}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !224, file: !225, line: 261, baseType: !34, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !224, file: !225, line: 262, baseType: !229, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !225, line: 33, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !173, line: 210, baseType: !7)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !224, file: !225, line: 264, baseType: !232, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !234, line: 26, size: 128, elements: !235)
!234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !233, file: !234, line: 28, baseType: !34, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !233, file: !234, line: 29, baseType: !215, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !224, file: !225, line: 265, baseType: !215, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !224, file: !225, line: 267, baseType: !34, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !224, file: !225, line: 268, baseType: !215, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !224, file: !225, line: 273, baseType: !33, size: 32, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !221, file: !76, line: 68, baseType: !243, size: 384, offset: 448)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 384, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 3)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "task_connecting", scope: !75, file: !76, line: 72, baseType: !247, size: 128, offset: 2112)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_task", file: !83, line: 48, size: 128, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !247, file: !83, line: 49, baseType: !32, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !247, file: !83, line: 50, baseType: !50, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "task_connected", scope: !75, file: !76, line: 73, baseType: !247, size: 128, offset: 2240)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "task_accept", scope: !75, file: !76, line: 74, baseType: !247, size: 128, offset: 2368)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "task_send", scope: !75, file: !76, line: 75, baseType: !247, size: 128, offset: 2496)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "task_recv", scope: !75, file: !76, line: 76, baseType: !247, size: 128, offset: 2624)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "task_stop", scope: !75, file: !76, line: 77, baseType: !247, size: 128, offset: 2752)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "event_established", scope: !75, file: !76, line: 80, baseType: !43, size: 320, offset: 2880)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "event_sent", scope: !75, file: !76, line: 81, baseType: !43, size: 320, offset: 3200)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "event_received", scope: !75, file: !76, line: 82, baseType: !43, size: 320, offset: 3520)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "event_error", scope: !75, file: !76, line: 83, baseType: !43, size: 320, offset: 3840)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "asock", scope: !75, file: !76, line: 87, baseType: !261, size: 64, offset: 4160)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aipc", scope: !20, file: !21, line: 66, baseType: !263, size: 64, offset: 5056)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_aipc", file: !265, line: 46, size: 12928, elements: !266)
!265 = !DIFile(filename: "./src/transports/ipc/aipc.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fade8dd90daf78b2e059775b2affb261")
!266 = !{!267, !268, !269, !270, !271, !276, !366, !367, !368}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !264, file: !265, line: 49, baseType: !24, size: 640)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !264, file: !265, line: 50, baseType: !33, size: 32, offset: 640)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !264, file: !265, line: 53, baseType: !75, size: 4224, offset: 704)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !264, file: !265, line: 56, baseType: !261, size: 64, offset: 4928)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "listener_owner", scope: !264, file: !265, line: 57, baseType: !272, size: 128, offset: 4992)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_owner", file: !25, line: 61, size: 128, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !272, file: !25, line: 62, baseType: !33, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !272, file: !25, line: 63, baseType: !32, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "sipc", scope: !264, file: !265, line: 60, baseType: !277, size: 7040, offset: 5120)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sipc", file: !278, line: 43, size: 7040, elements: !279)
!278 = !DIFile(filename: "./src/transports/ipc/sipc.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "c72c01549df9f1b312112846109e9bf8")
!279 = !{!280, !281, !282, !283, !354, !355, !356, !357, !361, !362, !363, !364, !365}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !277, file: !278, line: 46, baseType: !24, size: 640)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !277, file: !278, line: 47, baseType: !33, size: 32, offset: 640)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !277, file: !278, line: 50, baseType: !261, size: 64, offset: 704)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "streamhdr", scope: !277, file: !278, line: 53, baseType: !284, size: 3008, offset: 768)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_streamhdr", file: !285, line: 41, size: 3008, elements: !286)
!285 = !DIFile(filename: "./src/transports/ipc/../utils/streamhdr.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "7d060aeed02236eba444409cfc4451d2")
!286 = !{!287, !288, !289, !310, !311, !312, !349, !353}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !284, file: !285, line: 44, baseType: !24, size: 640)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !284, file: !285, line: 45, baseType: !33, size: 32, offset: 640)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !284, file: !285, line: 48, baseType: !290, size: 1664, offset: 704)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timer", file: !291, line: 32, size: 1664, elements: !292)
!291 = !DIFile(filename: "./src/transports/ipc/../utils/../../aio/timer.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "36b8c8892aa99fc49b85b12a9caf893a")
!292 = !{!293, !294, !295, !296, !297, !307, !308, !309}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !290, file: !291, line: 33, baseType: !24, size: 640)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !290, file: !291, line: 34, baseType: !33, size: 32, offset: 640)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "start_task", scope: !290, file: !291, line: 35, baseType: !247, size: 128, offset: 704)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "stop_task", scope: !290, file: !291, line: 36, baseType: !247, size: 128, offset: 832)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "wtimer", scope: !290, file: !291, line: 37, baseType: !298, size: 256, offset: 960)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_timer", file: !299, line: 37, size: 256, elements: !300)
!299 = !DIFile(filename: "src/aio/worker.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "2b691693adce9b61547df7808f294867")
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !298, file: !299, line: 38, baseType: !32, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !298, file: !299, line: 39, baseType: !303, size: 192, offset: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset_hndl", file: !163, line: 32, size: 192, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !303, file: !163, line: 33, baseType: !182, size: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !303, file: !163, line: 34, baseType: !170, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !290, file: !291, line: 38, baseType: !43, size: 320, offset: 1216)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !290, file: !291, line: 39, baseType: !81, size: 64, offset: 1536)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !290, file: !291, line: 40, baseType: !33, size: 32, offset: 1600)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !284, file: !285, line: 51, baseType: !261, size: 64, offset: 2368)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "usock_owner", scope: !284, file: !285, line: 54, baseType: !272, size: 128, offset: 2432)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !284, file: !285, line: 57, baseType: !313, size: 64, offset: 2560)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase", file: !58, line: 147, size: 1536, elements: !315)
!315 = !{!316, !317, !340, !341, !342, !343, !346, !347, !348}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !314, file: !58, line: 148, baseType: !24, size: 640)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !314, file: !58, line: 149, baseType: !318, size: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase_vfptr", file: !58, line: 134, size: 128, elements: !321)
!321 = !{!322, !339}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !320, file: !58, line: 138, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!33, !313, !326}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !328, line: 30, size: 512, elements: !329)
!328 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!329 = !{!330, !338}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !327, file: !328, line: 33, baseType: !331, size: 256)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !332, line: 39, size: 256, elements: !333)
!332 = !DIFile(filename: "src/aio/../utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !331, file: !332, line: 40, baseType: !335, size: 256)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 256, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !327, file: !328, line: 36, baseType: !331, size: 256, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !320, file: !58, line: 142, baseType: !323, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !58, line: 150, baseType: !211, size: 8, offset: 704)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !314, file: !58, line: 151, baseType: !211, size: 8, offset: 712)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !314, file: !58, line: 152, baseType: !211, size: 8, offset: 720)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !314, file: !58, line: 153, baseType: !344, size: 64, offset: 768)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !58, line: 39, flags: DIFlagFwdDecl)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !314, file: !58, line: 154, baseType: !34, size: 64, offset: 832)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !314, file: !58, line: 155, baseType: !43, size: 320, offset: 896)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !314, file: !58, line: 156, baseType: !43, size: 320, offset: 1216)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "protohdr", scope: !284, file: !285, line: 60, baseType: !350, size: 64, offset: 2624)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 64, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 8)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !284, file: !285, line: 63, baseType: !43, size: 320, offset: 2688)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "usock_owner", scope: !277, file: !278, line: 56, baseType: !272, size: 128, offset: 3776)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !277, file: !278, line: 59, baseType: !314, size: 1536, offset: 3904)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !277, file: !278, line: 62, baseType: !33, size: 32, offset: 5440)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "inhdr", scope: !277, file: !278, line: 65, baseType: !358, size: 72, offset: 5472)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 72, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 9)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "inmsg", scope: !277, file: !278, line: 68, baseType: !327, size: 512, offset: 5544)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !277, file: !278, line: 71, baseType: !33, size: 32, offset: 6080)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "outhdr", scope: !277, file: !278, line: 74, baseType: !358, size: 72, offset: 6112)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "outmsg", scope: !277, file: !278, line: 77, baseType: !327, size: 512, offset: 6184)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !277, file: !278, line: 80, baseType: !43, size: 320, offset: 6720)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "accepted", scope: !264, file: !265, line: 63, baseType: !43, size: 320, offset: 12160)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !264, file: !265, line: 64, baseType: !43, size: 320, offset: 12480)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !264, file: !265, line: 67, baseType: !182, size: 128, offset: 12800)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "aipcs", scope: !20, file: !21, line: 69, baseType: !177, size: 128, offset: 5120)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !373, line: 29, size: 880, elements: !374)
!373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!374 = !{!375, !379}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !372, file: !373, line: 31, baseType: !376, size: 16)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !377, line: 28, baseType: !378)
!377 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!378 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !372, file: !373, line: 32, baseType: !380, size: 864, offset: 16)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 864, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 108)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !225, line: 180, size: 128, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !384, file: !225, line: 182, baseType: !376, size: 16)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !384, file: !225, line: 183, baseType: !388, size: 112, offset: 16)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 112, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 14)
!391 = !{!0, !392, !397, !402, !407, !412, !417, !422, !427, !432, !437, !442}
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !21, line: 92, type: !394, isLocal: true, isDefinition: true)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 184, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 23)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !21, line: 92, type: !399, isLocal: true, isDefinition: true)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 224, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 28)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !21, line: 127, type: !404, isLocal: true, isDefinition: true)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 240, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 30)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !21, line: 127, type: !409, isLocal: true, isDefinition: true)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 272, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 34)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !21, line: 129, type: !414, isLocal: true, isDefinition: true)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 152, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 19)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !21, line: 175, type: !419, isLocal: true, isDefinition: true)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 408, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 51)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !21, line: 210, type: !424, isLocal: true, isDefinition: true)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 16, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 2)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !21, line: 244, type: !429, isLocal: true, isDefinition: true)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 192, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 24)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !21, line: 282, type: !434, isLocal: true, isDefinition: true)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 304, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 38)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !21, line: 289, type: !439, isLocal: true, isDefinition: true)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 136, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 17)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !21, line: 304, type: !414, isLocal: true, isDefinition: true)
!444 = !{i32 7, !"Dwarf Version", i32 5}
!445 = !{i32 2, !"Debug Info Version", i32 3}
!446 = !{i32 1, !"wchar_size", i32 4}
!447 = !{i32 8, !"PIC Level", i32 2}
!448 = !{i32 7, !"PIE Level", i32 2}
!449 = !{i32 7, !"uwtable", i32 2}
!450 = !{i32 7, !"frame-pointer", i32 2}
!451 = !{!"clang version 16.0.0"}
!452 = distinct !DISubprogram(name: "nn_bipc_stop", scope: !21, file: !21, line: 112, type: !67, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !453)
!453 = !{}
!454 = !DILocalVariable(name: "self", arg: 1, scope: !452, file: !21, line: 112, type: !69)
!455 = !DILocation(line: 112, column: 45, scope: !452)
!456 = !DILocalVariable(name: "bipc", scope: !452, file: !21, line: 114, type: !19)
!457 = !DILocation(line: 114, column: 21, scope: !452)
!458 = !DILocation(line: 116, column: 12, scope: !452)
!459 = !DILocation(line: 116, column: 10, scope: !452)
!460 = !DILocation(line: 118, column: 19, scope: !452)
!461 = !DILocation(line: 118, column: 25, scope: !452)
!462 = !DILocation(line: 118, column: 5, scope: !452)
!463 = !DILocation(line: 119, column: 1, scope: !452)
!464 = distinct !DISubprogram(name: "nn_bipc_destroy", scope: !21, file: !21, line: 121, type: !67, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !453)
!465 = !DILocalVariable(name: "self", arg: 1, scope: !464, file: !21, line: 121, type: !69)
!466 = !DILocation(line: 121, column: 48, scope: !464)
!467 = !DILocalVariable(name: "bipc", scope: !464, file: !21, line: 123, type: !19)
!468 = !DILocation(line: 123, column: 21, scope: !464)
!469 = !DILocation(line: 125, column: 12, scope: !464)
!470 = !DILocation(line: 125, column: 10, scope: !464)
!471 = !DILocation(line: 127, column: 5, scope: !464)
!472 = !DILocation(line: 127, column: 5, scope: !473)
!473 = distinct !DILexicalBlock(scope: !474, file: !21, line: 127, column: 5)
!474 = distinct !DILexicalBlock(scope: !464, file: !21, line: 127, column: 5)
!475 = !DILocation(line: 127, column: 5, scope: !474)
!476 = !DILocation(line: 127, column: 5, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !21, line: 127, column: 5)
!478 = !DILocation(line: 128, column: 20, scope: !464)
!479 = !DILocation(line: 128, column: 26, scope: !464)
!480 = !DILocation(line: 128, column: 5, scope: !464)
!481 = !DILocation(line: 129, column: 5, scope: !464)
!482 = !DILocation(line: 129, column: 5, scope: !483)
!483 = distinct !DILexicalBlock(scope: !484, file: !21, line: 129, column: 5)
!484 = distinct !DILexicalBlock(scope: !464, file: !21, line: 129, column: 5)
!485 = !DILocation(line: 129, column: 5, scope: !484)
!486 = !DILocation(line: 129, column: 5, scope: !487)
!487 = distinct !DILexicalBlock(scope: !483, file: !21, line: 129, column: 5)
!488 = !DILocation(line: 130, column: 21, scope: !464)
!489 = !DILocation(line: 130, column: 27, scope: !464)
!490 = !DILocation(line: 130, column: 5, scope: !464)
!491 = !DILocation(line: 131, column: 22, scope: !464)
!492 = !DILocation(line: 131, column: 28, scope: !464)
!493 = !DILocation(line: 131, column: 5, scope: !464)
!494 = !DILocation(line: 132, column: 19, scope: !464)
!495 = !DILocation(line: 132, column: 25, scope: !464)
!496 = !DILocation(line: 132, column: 5, scope: !464)
!497 = !DILocation(line: 134, column: 14, scope: !464)
!498 = !DILocation(line: 134, column: 5, scope: !464)
!499 = !DILocation(line: 135, column: 1, scope: !464)
!500 = distinct !DISubprogram(name: "nn_bipc_create", scope: !21, file: !21, line: 86, type: !501, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !453)
!501 = !DISubroutineType(types: !502)
!502 = !{!33, !34, !503}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!504 = !DILocalVariable(name: "hint", arg: 1, scope: !500, file: !21, line: 86, type: !34)
!505 = !DILocation(line: 86, column: 27, scope: !500)
!506 = !DILocalVariable(name: "epbase", arg: 2, scope: !500, file: !21, line: 86, type: !503)
!507 = !DILocation(line: 86, column: 52, scope: !500)
!508 = !DILocalVariable(name: "self", scope: !500, file: !21, line: 88, type: !19)
!509 = !DILocation(line: 88, column: 21, scope: !500)
!510 = !DILocation(line: 91, column: 12, scope: !500)
!511 = !DILocation(line: 91, column: 10, scope: !500)
!512 = !DILocation(line: 92, column: 5, scope: !500)
!513 = !DILocation(line: 92, column: 5, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !21, line: 92, column: 5)
!515 = distinct !DILexicalBlock(scope: !500, file: !21, line: 92, column: 5)
!516 = !DILocation(line: 92, column: 5, scope: !515)
!517 = !DILocation(line: 92, column: 5, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !21, line: 92, column: 5)
!519 = !DILocation(line: 95, column: 22, scope: !500)
!520 = !DILocation(line: 95, column: 28, scope: !500)
!521 = !DILocation(line: 95, column: 59, scope: !500)
!522 = !DILocation(line: 95, column: 5, scope: !500)
!523 = !DILocation(line: 96, column: 24, scope: !500)
!524 = !DILocation(line: 96, column: 30, scope: !500)
!525 = !DILocation(line: 97, column: 28, scope: !500)
!526 = !DILocation(line: 97, column: 34, scope: !500)
!527 = !DILocation(line: 97, column: 9, scope: !500)
!528 = !DILocation(line: 96, column: 5, scope: !500)
!529 = !DILocation(line: 98, column: 5, scope: !500)
!530 = !DILocation(line: 98, column: 11, scope: !500)
!531 = !DILocation(line: 98, column: 17, scope: !500)
!532 = !DILocation(line: 99, column: 21, scope: !500)
!533 = !DILocation(line: 99, column: 27, scope: !500)
!534 = !DILocation(line: 99, column: 54, scope: !500)
!535 = !DILocation(line: 99, column: 60, scope: !500)
!536 = !DILocation(line: 99, column: 5, scope: !500)
!537 = !DILocation(line: 100, column: 5, scope: !500)
!538 = !DILocation(line: 100, column: 11, scope: !500)
!539 = !DILocation(line: 100, column: 16, scope: !500)
!540 = !DILocation(line: 101, column: 20, scope: !500)
!541 = !DILocation(line: 101, column: 26, scope: !500)
!542 = !DILocation(line: 101, column: 5, scope: !500)
!543 = !DILocation(line: 104, column: 20, scope: !500)
!544 = !DILocation(line: 104, column: 26, scope: !500)
!545 = !DILocation(line: 104, column: 5, scope: !500)
!546 = !DILocation(line: 107, column: 16, scope: !500)
!547 = !DILocation(line: 107, column: 22, scope: !500)
!548 = !DILocation(line: 107, column: 6, scope: !500)
!549 = !DILocation(line: 107, column: 13, scope: !500)
!550 = !DILocation(line: 109, column: 5, scope: !500)
!551 = distinct !DISubprogram(name: "nn_bipc_handler", scope: !21, file: !21, line: 137, type: !30, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !453)
!552 = !DILocalVariable(name: "self", arg: 1, scope: !551, file: !21, line: 137, type: !32)
!553 = !DILocation(line: 137, column: 45, scope: !551)
!554 = !DILocalVariable(name: "src", arg: 2, scope: !551, file: !21, line: 137, type: !33)
!555 = !DILocation(line: 137, column: 55, scope: !551)
!556 = !DILocalVariable(name: "type", arg: 3, scope: !551, file: !21, line: 137, type: !33)
!557 = !DILocation(line: 137, column: 64, scope: !551)
!558 = !DILocalVariable(name: "srcptr", arg: 4, scope: !551, file: !21, line: 138, type: !34)
!559 = !DILocation(line: 138, column: 11, scope: !551)
!560 = !DILocalVariable(name: "bipc", scope: !551, file: !21, line: 140, type: !19)
!561 = !DILocation(line: 140, column: 21, scope: !551)
!562 = !DILocalVariable(name: "it", scope: !551, file: !21, line: 141, type: !181)
!563 = !DILocation(line: 141, column: 26, scope: !551)
!564 = !DILocalVariable(name: "aipc", scope: !551, file: !21, line: 142, type: !263)
!565 = !DILocation(line: 142, column: 21, scope: !551)
!566 = !DILocation(line: 144, column: 12, scope: !551)
!567 = !DILocation(line: 144, column: 10, scope: !551)
!568 = !DILocation(line: 149, column: 9, scope: !569)
!569 = distinct !DILexicalBlock(scope: !551, file: !21, line: 149, column: 9)
!570 = !DILocation(line: 0, scope: !569)
!571 = !DILocation(line: 149, column: 9, scope: !551)
!572 = !DILocation(line: 150, column: 23, scope: !573)
!573 = distinct !DILexicalBlock(scope: !569, file: !21, line: 149, column: 64)
!574 = !DILocation(line: 150, column: 29, scope: !573)
!575 = !DILocation(line: 150, column: 9, scope: !573)
!576 = !DILocation(line: 151, column: 9, scope: !573)
!577 = !DILocation(line: 151, column: 15, scope: !573)
!578 = !DILocation(line: 151, column: 21, scope: !573)
!579 = !DILocation(line: 152, column: 5, scope: !573)
!580 = !DILocation(line: 153, column: 9, scope: !581)
!581 = distinct !DILexicalBlock(scope: !551, file: !21, line: 153, column: 9)
!582 = !DILocation(line: 153, column: 9, scope: !551)
!583 = !DILocation(line: 154, column: 30, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !21, line: 154, column: 13)
!585 = distinct !DILexicalBlock(scope: !581, file: !21, line: 153, column: 63)
!586 = !DILocation(line: 154, column: 36, scope: !584)
!587 = !DILocation(line: 154, column: 14, scope: !584)
!588 = !DILocation(line: 154, column: 13, scope: !585)
!589 = !DILocation(line: 155, column: 13, scope: !584)
!590 = !DILocation(line: 156, column: 23, scope: !585)
!591 = !DILocation(line: 156, column: 29, scope: !585)
!592 = !DILocation(line: 156, column: 9, scope: !585)
!593 = !DILocation(line: 157, column: 18, scope: !585)
!594 = !DILocation(line: 157, column: 24, scope: !585)
!595 = !DILocation(line: 157, column: 9, scope: !585)
!596 = !DILocation(line: 158, column: 9, scope: !585)
!597 = !DILocation(line: 158, column: 15, scope: !585)
!598 = !DILocation(line: 158, column: 20, scope: !585)
!599 = !DILocation(line: 159, column: 25, scope: !585)
!600 = !DILocation(line: 159, column: 31, scope: !585)
!601 = !DILocation(line: 159, column: 9, scope: !585)
!602 = !DILocation(line: 160, column: 9, scope: !585)
!603 = !DILocation(line: 160, column: 15, scope: !585)
!604 = !DILocation(line: 160, column: 21, scope: !585)
!605 = !DILocation(line: 161, column: 5, scope: !585)
!606 = !DILocation(line: 162, column: 9, scope: !607)
!607 = distinct !DILexicalBlock(scope: !551, file: !21, line: 162, column: 9)
!608 = !DILocation(line: 162, column: 9, scope: !551)
!609 = !DILocation(line: 163, column: 31, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !21, line: 163, column: 12)
!611 = distinct !DILexicalBlock(scope: !607, file: !21, line: 162, column: 64)
!612 = !DILocation(line: 163, column: 37, scope: !610)
!613 = !DILocation(line: 163, column: 13, scope: !610)
!614 = !DILocation(line: 163, column: 12, scope: !611)
!615 = !DILocation(line: 164, column: 13, scope: !610)
!616 = !DILocation(line: 165, column: 35, scope: !617)
!617 = distinct !DILexicalBlock(scope: !611, file: !21, line: 165, column: 9)
!618 = !DILocation(line: 165, column: 41, scope: !617)
!619 = !DILocation(line: 165, column: 19, scope: !617)
!620 = !DILocation(line: 165, column: 17, scope: !617)
!621 = !DILocation(line: 165, column: 14, scope: !617)
!622 = !DILocation(line: 166, column: 15, scope: !623)
!623 = distinct !DILexicalBlock(scope: !617, file: !21, line: 165, column: 9)
!624 = !DILocation(line: 166, column: 35, scope: !623)
!625 = !DILocation(line: 166, column: 41, scope: !623)
!626 = !DILocation(line: 166, column: 21, scope: !623)
!627 = !DILocation(line: 166, column: 18, scope: !623)
!628 = !DILocation(line: 165, column: 9, scope: !617)
!629 = !DILocation(line: 168, column: 20, scope: !630)
!630 = distinct !DILexicalBlock(scope: !623, file: !21, line: 167, column: 53)
!631 = !DILocation(line: 168, column: 18, scope: !630)
!632 = !DILocation(line: 169, column: 27, scope: !630)
!633 = !DILocation(line: 169, column: 13, scope: !630)
!634 = !DILocation(line: 170, column: 9, scope: !630)
!635 = !DILocation(line: 167, column: 35, scope: !623)
!636 = !DILocation(line: 167, column: 41, scope: !623)
!637 = !DILocation(line: 167, column: 48, scope: !623)
!638 = !DILocation(line: 167, column: 20, scope: !623)
!639 = !DILocation(line: 167, column: 18, scope: !623)
!640 = !DILocation(line: 165, column: 9, scope: !623)
!641 = distinct !{!641, !628, !642, !643}
!642 = !DILocation(line: 170, column: 9, scope: !617)
!643 = !{!"llvm.loop.mustprogress"}
!644 = !DILocation(line: 171, column: 9, scope: !611)
!645 = !DILocation(line: 171, column: 15, scope: !611)
!646 = !DILocation(line: 171, column: 21, scope: !611)
!647 = !DILocation(line: 172, column: 9, scope: !611)
!648 = !DILocation(line: 174, column: 9, scope: !649)
!649 = distinct !DILexicalBlock(scope: !551, file: !21, line: 174, column: 9)
!650 = !DILocation(line: 174, column: 9, scope: !551)
!651 = !DILocation(line: 175, column: 9, scope: !652)
!652 = distinct !DILexicalBlock(scope: !649, file: !21, line: 174, column: 64)
!653 = !DILocation(line: 175, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !21, line: 175, column: 9)
!655 = distinct !DILexicalBlock(scope: !652, file: !21, line: 175, column: 9)
!656 = !DILocation(line: 0, scope: !654)
!657 = !DILocation(line: 175, column: 9, scope: !655)
!658 = !DILocation(line: 175, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !654, file: !21, line: 175, column: 9)
!660 = !DILocation(line: 176, column: 35, scope: !652)
!661 = !DILocation(line: 176, column: 14, scope: !652)
!662 = !DILocation(line: 177, column: 25, scope: !652)
!663 = !DILocation(line: 177, column: 31, scope: !652)
!664 = !DILocation(line: 177, column: 39, scope: !652)
!665 = !DILocation(line: 177, column: 45, scope: !652)
!666 = !DILocation(line: 177, column: 9, scope: !652)
!667 = !DILocation(line: 178, column: 23, scope: !652)
!668 = !DILocation(line: 178, column: 9, scope: !652)
!669 = !DILocation(line: 179, column: 18, scope: !652)
!670 = !DILocation(line: 179, column: 9, scope: !652)
!671 = !DILabel(scope: !652, name: "aipcs_stopping", file: !21, line: 183)
!672 = !DILocation(line: 183, column: 1, scope: !652)
!673 = !DILocation(line: 184, column: 29, scope: !674)
!674 = distinct !DILexicalBlock(scope: !652, file: !21, line: 184, column: 13)
!675 = !DILocation(line: 184, column: 35, scope: !674)
!676 = !DILocation(line: 184, column: 13, scope: !674)
!677 = !DILocation(line: 184, column: 13, scope: !652)
!678 = !DILocation(line: 185, column: 13, scope: !679)
!679 = distinct !DILexicalBlock(scope: !674, file: !21, line: 184, column: 43)
!680 = !DILocation(line: 185, column: 19, scope: !679)
!681 = !DILocation(line: 185, column: 25, scope: !679)
!682 = !DILocation(line: 186, column: 38, scope: !679)
!683 = !DILocation(line: 186, column: 44, scope: !679)
!684 = !DILocation(line: 186, column: 13, scope: !679)
!685 = !DILocation(line: 187, column: 33, scope: !679)
!686 = !DILocation(line: 187, column: 39, scope: !679)
!687 = !DILocation(line: 187, column: 13, scope: !679)
!688 = !DILocation(line: 188, column: 13, scope: !679)
!689 = !DILocation(line: 191, column: 9, scope: !652)
!690 = !DILocation(line: 194, column: 13, scope: !551)
!691 = !DILocation(line: 194, column: 19, scope: !551)
!692 = !DILocation(line: 194, column: 5, scope: !551)
!693 = !DILocation(line: 200, column: 17, scope: !694)
!694 = distinct !DILexicalBlock(scope: !551, file: !21, line: 194, column: 26)
!695 = !DILocation(line: 200, column: 9, scope: !694)
!696 = !DILocation(line: 203, column: 21, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !21, line: 200, column: 22)
!698 = !DILocation(line: 203, column: 13, scope: !697)
!699 = !DILocation(line: 205, column: 42, scope: !700)
!700 = distinct !DILexicalBlock(scope: !697, file: !21, line: 203, column: 27)
!701 = !DILocation(line: 205, column: 17, scope: !700)
!702 = !DILocation(line: 206, column: 42, scope: !700)
!703 = !DILocation(line: 206, column: 17, scope: !700)
!704 = !DILocation(line: 207, column: 17, scope: !700)
!705 = !DILocation(line: 207, column: 23, scope: !700)
!706 = !DILocation(line: 207, column: 29, scope: !700)
!707 = !DILocation(line: 208, column: 17, scope: !700)
!708 = !DILocation(line: 210, column: 17, scope: !700)
!709 = !DILocation(line: 210, column: 17, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !21, line: 210, column: 17)
!711 = distinct !DILexicalBlock(scope: !712, file: !21, line: 210, column: 17)
!712 = distinct !DILexicalBlock(scope: !700, file: !21, line: 210, column: 17)
!713 = !DILocation(line: 211, column: 13, scope: !700)
!714 = !DILocation(line: 214, column: 13, scope: !697)
!715 = !DILocation(line: 214, column: 13, scope: !716)
!716 = distinct !DILexicalBlock(scope: !717, file: !21, line: 214, column: 13)
!717 = distinct !DILexicalBlock(scope: !718, file: !21, line: 214, column: 13)
!718 = distinct !DILexicalBlock(scope: !697, file: !21, line: 214, column: 13)
!719 = !DILocation(line: 215, column: 9, scope: !697)
!720 = !DILocation(line: 222, column: 13, scope: !721)
!721 = distinct !DILexicalBlock(scope: !694, file: !21, line: 222, column: 13)
!722 = !DILocation(line: 222, column: 23, scope: !721)
!723 = !DILocation(line: 222, column: 29, scope: !721)
!724 = !DILocation(line: 222, column: 20, scope: !721)
!725 = !DILocation(line: 222, column: 13, scope: !694)
!726 = !DILocation(line: 223, column: 21, scope: !727)
!727 = distinct !DILexicalBlock(scope: !721, file: !21, line: 222, column: 35)
!728 = !DILocation(line: 223, column: 13, scope: !727)
!729 = !DILocation(line: 228, column: 34, scope: !730)
!730 = distinct !DILexicalBlock(scope: !727, file: !21, line: 223, column: 27)
!731 = !DILocation(line: 228, column: 40, scope: !730)
!732 = !DILocation(line: 228, column: 48, scope: !730)
!733 = !DILocation(line: 228, column: 54, scope: !730)
!734 = !DILocation(line: 228, column: 60, scope: !730)
!735 = !DILocation(line: 229, column: 35, scope: !730)
!736 = !DILocation(line: 229, column: 41, scope: !730)
!737 = !DILocation(line: 229, column: 21, scope: !730)
!738 = !DILocation(line: 228, column: 17, scope: !730)
!739 = !DILocation(line: 230, column: 17, scope: !730)
!740 = !DILocation(line: 230, column: 23, scope: !730)
!741 = !DILocation(line: 230, column: 28, scope: !730)
!742 = !DILocation(line: 233, column: 42, scope: !730)
!743 = !DILocation(line: 233, column: 17, scope: !730)
!744 = !DILocation(line: 235, column: 17, scope: !730)
!745 = !DILocation(line: 238, column: 17, scope: !730)
!746 = !DILocation(line: 238, column: 17, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !21, line: 238, column: 17)
!748 = distinct !DILexicalBlock(scope: !749, file: !21, line: 238, column: 17)
!749 = distinct !DILexicalBlock(scope: !730, file: !21, line: 238, column: 17)
!750 = !DILocation(line: 239, column: 13, scope: !730)
!751 = !DILocation(line: 240, column: 9, scope: !727)
!752 = !DILocation(line: 244, column: 9, scope: !694)
!753 = !DILocation(line: 244, column: 9, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !21, line: 244, column: 9)
!755 = distinct !DILexicalBlock(scope: !694, file: !21, line: 244, column: 9)
!756 = !DILocation(line: 244, column: 9, scope: !755)
!757 = !DILocation(line: 244, column: 9, scope: !758)
!758 = distinct !DILexicalBlock(scope: !754, file: !21, line: 244, column: 9)
!759 = !DILocation(line: 245, column: 34, scope: !694)
!760 = !DILocation(line: 245, column: 14, scope: !694)
!761 = !DILocation(line: 246, column: 17, scope: !694)
!762 = !DILocation(line: 246, column: 9, scope: !694)
!763 = !DILocation(line: 248, column: 27, scope: !764)
!764 = distinct !DILexicalBlock(scope: !694, file: !21, line: 246, column: 23)
!765 = !DILocation(line: 248, column: 13, scope: !764)
!766 = !DILocation(line: 249, column: 13, scope: !764)
!767 = !DILocation(line: 251, column: 29, scope: !764)
!768 = !DILocation(line: 251, column: 35, scope: !764)
!769 = !DILocation(line: 251, column: 43, scope: !764)
!770 = !DILocation(line: 251, column: 49, scope: !764)
!771 = !DILocation(line: 251, column: 13, scope: !764)
!772 = !DILocation(line: 252, column: 27, scope: !764)
!773 = !DILocation(line: 252, column: 13, scope: !764)
!774 = !DILocation(line: 253, column: 22, scope: !764)
!775 = !DILocation(line: 253, column: 13, scope: !764)
!776 = !DILocation(line: 254, column: 13, scope: !764)
!777 = !DILocation(line: 256, column: 13, scope: !764)
!778 = !DILocation(line: 256, column: 13, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !21, line: 256, column: 13)
!780 = distinct !DILexicalBlock(scope: !781, file: !21, line: 256, column: 13)
!781 = distinct !DILexicalBlock(scope: !764, file: !21, line: 256, column: 13)
!782 = !DILocation(line: 257, column: 9, scope: !764)
!783 = !DILocation(line: 263, column: 9, scope: !694)
!784 = !DILocation(line: 263, column: 9, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !21, line: 263, column: 9)
!786 = distinct !DILexicalBlock(scope: !787, file: !21, line: 263, column: 9)
!787 = distinct !DILexicalBlock(scope: !694, file: !21, line: 263, column: 9)
!788 = !DILocation(line: 264, column: 5, scope: !694)
!789 = !DILocation(line: 265, column: 1, scope: !551)
!790 = distinct !DISubprogram(name: "nn_bipc_start_listening", scope: !21, file: !21, line: 271, type: !791, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !453)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !19}
!793 = !DILocalVariable(name: "self", arg: 1, scope: !790, file: !21, line: 271, type: !19)
!794 = !DILocation(line: 271, column: 54, scope: !790)
!795 = !DILocalVariable(name: "rc", scope: !790, file: !21, line: 273, type: !33)
!796 = !DILocation(line: 273, column: 9, scope: !790)
!797 = !DILocalVariable(name: "ss", scope: !790, file: !21, line: 274, type: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !225, line: 193, size: 1024, elements: !799)
!799 = !{!800, !801, !805}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !798, file: !225, line: 195, baseType: !376, size: 16)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !798, file: !225, line: 196, baseType: !802, size: 944, offset: 16)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 944, elements: !803)
!803 = !{!804}
!804 = !DISubrange(count: 118)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !798, file: !225, line: 197, baseType: !174, size: 64, offset: 960)
!806 = !DILocation(line: 274, column: 29, scope: !790)
!807 = !DILocalVariable(name: "un", scope: !790, file: !21, line: 275, type: !371)
!808 = !DILocation(line: 275, column: 25, scope: !790)
!809 = !DILocalVariable(name: "addr", scope: !790, file: !21, line: 276, type: !810)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!812 = !DILocation(line: 276, column: 17, scope: !790)
!813 = !DILocation(line: 279, column: 32, scope: !790)
!814 = !DILocation(line: 279, column: 38, scope: !790)
!815 = !DILocation(line: 279, column: 12, scope: !790)
!816 = !DILocation(line: 279, column: 10, scope: !790)
!817 = !DILocation(line: 280, column: 5, scope: !790)
!818 = !DILocation(line: 281, column: 8, scope: !790)
!819 = !DILocation(line: 282, column: 5, scope: !790)
!820 = !DILocation(line: 282, column: 5, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !21, line: 282, column: 5)
!822 = distinct !DILexicalBlock(scope: !790, file: !21, line: 282, column: 5)
!823 = !DILocation(line: 282, column: 5, scope: !822)
!824 = !DILocation(line: 282, column: 5, scope: !825)
!825 = distinct !DILexicalBlock(scope: !821, file: !21, line: 282, column: 5)
!826 = !DILocation(line: 283, column: 8, scope: !790)
!827 = !DILocation(line: 283, column: 18, scope: !790)
!828 = !DILocation(line: 284, column: 14, scope: !790)
!829 = !DILocation(line: 284, column: 18, scope: !790)
!830 = !DILocation(line: 284, column: 28, scope: !790)
!831 = !DILocation(line: 284, column: 5, scope: !790)
!832 = !DILocation(line: 288, column: 18, scope: !790)
!833 = !DILocation(line: 288, column: 10, scope: !790)
!834 = !DILocation(line: 288, column: 8, scope: !790)
!835 = !DILocation(line: 289, column: 5, scope: !790)
!836 = !DILocation(line: 289, column: 5, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !21, line: 289, column: 5)
!838 = distinct !DILexicalBlock(scope: !790, file: !21, line: 289, column: 5)
!839 = !DILocation(line: 289, column: 5, scope: !838)
!840 = !DILocation(line: 289, column: 5, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !21, line: 289, column: 5)
!842 = !DILocation(line: 292, column: 27, scope: !790)
!843 = !DILocation(line: 292, column: 33, scope: !790)
!844 = !DILocation(line: 292, column: 10, scope: !790)
!845 = !DILocation(line: 292, column: 8, scope: !790)
!846 = !DILocation(line: 294, column: 5, scope: !790)
!847 = !DILocation(line: 294, column: 5, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !21, line: 294, column: 5)
!849 = distinct !DILexicalBlock(scope: !790, file: !21, line: 294, column: 5)
!850 = !DILocation(line: 294, column: 5, scope: !849)
!851 = !DILocation(line: 294, column: 5, scope: !852)
!852 = distinct !DILexicalBlock(scope: !848, file: !21, line: 294, column: 5)
!853 = !DILocation(line: 295, column: 26, scope: !790)
!854 = !DILocation(line: 295, column: 32, scope: !790)
!855 = !DILocation(line: 295, column: 10, scope: !790)
!856 = !DILocation(line: 295, column: 8, scope: !790)
!857 = !DILocation(line: 297, column: 5, scope: !790)
!858 = !DILocation(line: 297, column: 5, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !21, line: 297, column: 5)
!860 = distinct !DILexicalBlock(scope: !790, file: !21, line: 297, column: 5)
!861 = !DILocation(line: 297, column: 5, scope: !860)
!862 = !DILocation(line: 297, column: 5, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !21, line: 297, column: 5)
!864 = !DILocation(line: 298, column: 28, scope: !790)
!865 = !DILocation(line: 298, column: 34, scope: !790)
!866 = !DILocation(line: 298, column: 10, scope: !790)
!867 = !DILocation(line: 298, column: 8, scope: !790)
!868 = !DILocation(line: 299, column: 5, scope: !790)
!869 = !DILocation(line: 299, column: 5, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !21, line: 299, column: 5)
!871 = distinct !DILexicalBlock(scope: !790, file: !21, line: 299, column: 5)
!872 = !DILocation(line: 299, column: 5, scope: !871)
!873 = !DILocation(line: 299, column: 5, scope: !874)
!874 = distinct !DILexicalBlock(scope: !870, file: !21, line: 299, column: 5)
!875 = !DILocation(line: 300, column: 1, scope: !790)
!876 = distinct !DISubprogram(name: "nn_bipc_start_accepting", scope: !21, file: !21, line: 302, type: !791, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !453)
!877 = !DILocalVariable(name: "self", arg: 1, scope: !876, file: !21, line: 302, type: !19)
!878 = !DILocation(line: 302, column: 54, scope: !876)
!879 = !DILocation(line: 304, column: 5, scope: !876)
!880 = !DILocation(line: 304, column: 5, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !21, line: 304, column: 5)
!882 = distinct !DILexicalBlock(scope: !876, file: !21, line: 304, column: 5)
!883 = !DILocation(line: 304, column: 5, scope: !882)
!884 = !DILocation(line: 304, column: 5, scope: !885)
!885 = distinct !DILexicalBlock(scope: !881, file: !21, line: 304, column: 5)
!886 = !DILocation(line: 307, column: 18, scope: !876)
!887 = !DILocation(line: 307, column: 5, scope: !876)
!888 = !DILocation(line: 307, column: 11, scope: !876)
!889 = !DILocation(line: 307, column: 16, scope: !876)
!890 = !DILocation(line: 308, column: 5, scope: !876)
!891 = !DILocation(line: 308, column: 5, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !21, line: 308, column: 5)
!893 = distinct !DILexicalBlock(scope: !876, file: !21, line: 308, column: 5)
!894 = !DILocation(line: 308, column: 5, scope: !893)
!895 = !DILocation(line: 308, column: 5, scope: !896)
!896 = distinct !DILexicalBlock(scope: !892, file: !21, line: 308, column: 5)
!897 = !DILocation(line: 309, column: 19, scope: !876)
!898 = !DILocation(line: 309, column: 25, scope: !876)
!899 = !DILocation(line: 309, column: 50, scope: !876)
!900 = !DILocation(line: 309, column: 56, scope: !876)
!901 = !DILocation(line: 309, column: 65, scope: !876)
!902 = !DILocation(line: 309, column: 71, scope: !876)
!903 = !DILocation(line: 309, column: 5, scope: !876)
!904 = !DILocation(line: 312, column: 20, scope: !876)
!905 = !DILocation(line: 312, column: 26, scope: !876)
!906 = !DILocation(line: 312, column: 33, scope: !876)
!907 = !DILocation(line: 312, column: 39, scope: !876)
!908 = !DILocation(line: 312, column: 5, scope: !876)
!909 = !DILocation(line: 313, column: 1, scope: !876)
