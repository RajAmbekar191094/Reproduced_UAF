; ModuleID = './src/transports/ipc/cipc.c'
source_filename = "./src/transports/ipc/cipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_epbase_vfptr = type { ptr, ptr }
%struct.nn_cipc = type { %struct.nn_fsm, i32, %struct.nn_epbase, %struct.nn_usock, %struct.nn_backoff, %struct.nn_sipc }
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
%struct.nn_backoff = type { %struct.nn_timer, i32, i32, i32 }
%struct.nn_timer = type { %struct.nn_fsm, i32, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_timer, %struct.nn_fsm_event, ptr, i32 }
%struct.nn_worker_timer = type { ptr, %struct.nn_timerset_hndl }
%struct.nn_timerset_hndl = type { %struct.nn_list_item, i64 }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sipc = type { %struct.nn_fsm, i32, ptr, %struct.nn_streamhdr, %struct.nn_fsm_owner, %struct.nn_pipebase, i32, [9 x i8], %struct.nn_msg, i32, [9 x i8], %struct.nn_msg, %struct.nn_fsm_event }
%struct.nn_streamhdr = type { %struct.nn_fsm, i32, %struct.nn_timer, ptr, %struct.nn_fsm_owner, ptr, [8 x i8], %struct.nn_fsm_event }
%struct.nn_fsm_owner = type { i32, ptr }
%struct.nn_pipebase = type { %struct.nn_fsm, ptr, i8, i8, i8, ptr, ptr, %struct.nn_fsm_event, %struct.nn_fsm_event }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.sockaddr_un = type { i16, [108 x i8] }

@nn_cipc_epbase_vfptr = dso_local constant %struct.nn_epbase_vfptr { ptr @nn_cipc_stop, ptr @nn_cipc_destroy }, align 8, !dbg !0
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !386
@.str.1 = private unnamed_addr constant [28 x i8] c"./src/transports/ipc/cipc.c\00", align 1, !dbg !391
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !396
@.str.3 = private unnamed_addr constant [29 x i8] c"sz == sizeof (reconnect_ivl)\00", align 1, !dbg !401
@.str.4 = private unnamed_addr constant [33 x i8] c"sz == sizeof (reconnect_ivl_max)\00", align 1, !dbg !406
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !411
@.str.6 = private unnamed_addr constant [38 x i8] c"strlen (addr) < sizeof (un->sun_path)\00", align 1, !dbg !416

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_cipc_stop(ptr noundef %0) #0 !dbg !429 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !431, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.declare(metadata ptr %3, metadata !433, metadata !DIExpression()), !dbg !434
  %4 = load ptr, ptr %2, align 8, !dbg !435
  %5 = icmp ne ptr %4, null, !dbg !435
  br i1 %5, label %6, label %9, !dbg !435

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !435
  %8 = getelementptr inbounds i8, ptr %7, i64 -88, !dbg !435
  br label %10, !dbg !435

9:                                                ; preds = %1
  br label %10, !dbg !435

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !435
  store ptr %11, ptr %3, align 8, !dbg !436
  %12 = load ptr, ptr %3, align 8, !dbg !437
  %13 = getelementptr inbounds %struct.nn_cipc, ptr %12, i32 0, i32 0, !dbg !438
  call void @nn_fsm_stop(ptr noundef %13), !dbg !439
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_cipc_destroy(ptr noundef %0) #0 !dbg !441 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !442, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.declare(metadata ptr %3, metadata !444, metadata !DIExpression()), !dbg !445
  %4 = load ptr, ptr %2, align 8, !dbg !446
  %5 = icmp ne ptr %4, null, !dbg !446
  br i1 %5, label %6, label %9, !dbg !446

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !446
  %8 = getelementptr inbounds i8, ptr %7, i64 -88, !dbg !446
  br label %10, !dbg !446

9:                                                ; preds = %1
  br label %10, !dbg !446

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !446
  store ptr %11, ptr %3, align 8, !dbg !447
  %12 = load ptr, ptr %3, align 8, !dbg !448
  %13 = getelementptr inbounds %struct.nn_cipc, ptr %12, i32 0, i32 5, !dbg !449
  call void @nn_sipc_term(ptr noundef %13), !dbg !450
  %14 = load ptr, ptr %3, align 8, !dbg !451
  %15 = getelementptr inbounds %struct.nn_cipc, ptr %14, i32 0, i32 4, !dbg !452
  call void @nn_backoff_term(ptr noundef %15), !dbg !453
  %16 = load ptr, ptr %3, align 8, !dbg !454
  %17 = getelementptr inbounds %struct.nn_cipc, ptr %16, i32 0, i32 3, !dbg !455
  call void @nn_usock_term(ptr noundef %17), !dbg !456
  %18 = load ptr, ptr %3, align 8, !dbg !457
  %19 = getelementptr inbounds %struct.nn_cipc, ptr %18, i32 0, i32 0, !dbg !458
  call void @nn_fsm_term(ptr noundef %19), !dbg !459
  %20 = load ptr, ptr %3, align 8, !dbg !460
  %21 = getelementptr inbounds %struct.nn_cipc, ptr %20, i32 0, i32 2, !dbg !461
  call void @nn_epbase_term(ptr noundef %21), !dbg !462
  %22 = load ptr, ptr %3, align 8, !dbg !463
  call void @nn_free(ptr noundef %22), !dbg !464
  ret void, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_cipc_create(ptr noundef %0, ptr noundef %1) #0 !dbg !466 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !470, metadata !DIExpression()), !dbg !471
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !472, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.declare(metadata ptr %5, metadata !474, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.declare(metadata ptr %6, metadata !476, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.declare(metadata ptr %7, metadata !478, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.declare(metadata ptr %8, metadata !480, metadata !DIExpression()), !dbg !481
  %9 = call ptr @nn_alloc_(i64 noundef 1736), !dbg !482
  store ptr %9, ptr %5, align 8, !dbg !483
  br label %10, !dbg !484

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !dbg !485
  %12 = icmp ne ptr %11, null, !dbg !485
  %13 = xor i1 %12, true, !dbg !485
  %14 = zext i1 %13 to i32, !dbg !485
  %15 = sext i32 %14 to i64, !dbg !485
  %16 = icmp ne i64 %15, 0, !dbg !485
  br i1 %16, label %17, label %20, !dbg !488

17:                                               ; preds = %10
  %18 = load ptr, ptr @stderr, align 8, !dbg !489
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 99), !dbg !489
  call void @nn_err_abort() #7, !dbg !489
  unreachable, !dbg !489

20:                                               ; preds = %10
  br label %21, !dbg !488

21:                                               ; preds = %20
  %22 = load ptr, ptr %5, align 8, !dbg !491
  %23 = getelementptr inbounds %struct.nn_cipc, ptr %22, i32 0, i32 2, !dbg !492
  %24 = load ptr, ptr %3, align 8, !dbg !493
  call void @nn_epbase_init(ptr noundef %23, ptr noundef @nn_cipc_epbase_vfptr, ptr noundef %24), !dbg !494
  %25 = load ptr, ptr %5, align 8, !dbg !495
  %26 = getelementptr inbounds %struct.nn_cipc, ptr %25, i32 0, i32 0, !dbg !496
  %27 = load ptr, ptr %5, align 8, !dbg !497
  %28 = getelementptr inbounds %struct.nn_cipc, ptr %27, i32 0, i32 2, !dbg !498
  %29 = call ptr @nn_epbase_getctx(ptr noundef %28), !dbg !499
  call void @nn_fsm_init_root(ptr noundef %26, ptr noundef @nn_cipc_handler, ptr noundef %29), !dbg !500
  %30 = load ptr, ptr %5, align 8, !dbg !501
  %31 = getelementptr inbounds %struct.nn_cipc, ptr %30, i32 0, i32 1, !dbg !502
  store i32 1, ptr %31, align 8, !dbg !503
  %32 = load ptr, ptr %5, align 8, !dbg !504
  %33 = getelementptr inbounds %struct.nn_cipc, ptr %32, i32 0, i32 3, !dbg !505
  %34 = load ptr, ptr %5, align 8, !dbg !506
  %35 = getelementptr inbounds %struct.nn_cipc, ptr %34, i32 0, i32 0, !dbg !507
  call void @nn_usock_init(ptr noundef %33, i32 noundef 1, ptr noundef %35), !dbg !508
  store i64 4, ptr %8, align 8, !dbg !509
  %36 = load ptr, ptr %5, align 8, !dbg !510
  %37 = getelementptr inbounds %struct.nn_cipc, ptr %36, i32 0, i32 2, !dbg !511
  call void @nn_epbase_getopt(ptr noundef %37, i32 noundef 0, i32 noundef 6, ptr noundef %6, ptr noundef %8), !dbg !512
  br label %38, !dbg !513

38:                                               ; preds = %21
  %39 = load i64, ptr %8, align 8, !dbg !514
  %40 = icmp eq i64 %39, 4, !dbg !514
  %41 = xor i1 %40, true, !dbg !514
  %42 = zext i1 %41 to i32, !dbg !514
  %43 = sext i32 %42 to i64, !dbg !514
  %44 = icmp ne i64 %43, 0, !dbg !514
  br i1 %44, label %45, label %48, !dbg !517

45:                                               ; preds = %38
  %46 = load ptr, ptr @stderr, align 8, !dbg !518
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 110), !dbg !518
  call void @nn_err_abort() #7, !dbg !518
  unreachable, !dbg !518

48:                                               ; preds = %38
  br label %49, !dbg !517

49:                                               ; preds = %48
  store i64 4, ptr %8, align 8, !dbg !520
  %50 = load ptr, ptr %5, align 8, !dbg !521
  %51 = getelementptr inbounds %struct.nn_cipc, ptr %50, i32 0, i32 2, !dbg !522
  call void @nn_epbase_getopt(ptr noundef %51, i32 noundef 0, i32 noundef 7, ptr noundef %7, ptr noundef %8), !dbg !523
  br label %52, !dbg !524

52:                                               ; preds = %49
  %53 = load i64, ptr %8, align 8, !dbg !525
  %54 = icmp eq i64 %53, 4, !dbg !525
  %55 = xor i1 %54, true, !dbg !525
  %56 = zext i1 %55 to i32, !dbg !525
  %57 = sext i32 %56 to i64, !dbg !525
  %58 = icmp ne i64 %57, 0, !dbg !525
  br i1 %58, label %59, label %62, !dbg !528

59:                                               ; preds = %52
  %60 = load ptr, ptr @stderr, align 8, !dbg !529
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 114), !dbg !529
  call void @nn_err_abort() #7, !dbg !529
  unreachable, !dbg !529

62:                                               ; preds = %52
  br label %63, !dbg !528

63:                                               ; preds = %62
  %64 = load i32, ptr %7, align 4, !dbg !531
  %65 = icmp eq i32 %64, 0, !dbg !533
  br i1 %65, label %66, label %68, !dbg !534

66:                                               ; preds = %63
  %67 = load i32, ptr %6, align 4, !dbg !535
  store i32 %67, ptr %7, align 4, !dbg !536
  br label %68, !dbg !537

68:                                               ; preds = %66, %63
  %69 = load ptr, ptr %5, align 8, !dbg !538
  %70 = getelementptr inbounds %struct.nn_cipc, ptr %69, i32 0, i32 4, !dbg !539
  %71 = load i32, ptr %6, align 4, !dbg !540
  %72 = load i32, ptr %7, align 4, !dbg !541
  %73 = load ptr, ptr %5, align 8, !dbg !542
  %74 = getelementptr inbounds %struct.nn_cipc, ptr %73, i32 0, i32 0, !dbg !543
  call void @nn_backoff_init(ptr noundef %70, i32 noundef 2, i32 noundef %71, i32 noundef %72, ptr noundef %74), !dbg !544
  %75 = load ptr, ptr %5, align 8, !dbg !545
  %76 = getelementptr inbounds %struct.nn_cipc, ptr %75, i32 0, i32 5, !dbg !546
  %77 = load ptr, ptr %5, align 8, !dbg !547
  %78 = getelementptr inbounds %struct.nn_cipc, ptr %77, i32 0, i32 2, !dbg !548
  %79 = load ptr, ptr %5, align 8, !dbg !549
  %80 = getelementptr inbounds %struct.nn_cipc, ptr %79, i32 0, i32 0, !dbg !550
  call void @nn_sipc_init(ptr noundef %76, i32 noundef 3, ptr noundef %78, ptr noundef %80), !dbg !551
  %81 = load ptr, ptr %5, align 8, !dbg !552
  %82 = getelementptr inbounds %struct.nn_cipc, ptr %81, i32 0, i32 0, !dbg !553
  call void @nn_fsm_start(ptr noundef %82), !dbg !554
  %83 = load ptr, ptr %5, align 8, !dbg !555
  %84 = getelementptr inbounds %struct.nn_cipc, ptr %83, i32 0, i32 2, !dbg !556
  %85 = load ptr, ptr %4, align 8, !dbg !557
  store ptr %84, ptr %85, align 8, !dbg !558
  ret i32 0, !dbg !559
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
define internal void @nn_cipc_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !560 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !561, metadata !DIExpression()), !dbg !562
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !563, metadata !DIExpression()), !dbg !564
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !565, metadata !DIExpression()), !dbg !566
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !567, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.declare(metadata ptr %9, metadata !569, metadata !DIExpression()), !dbg !570
  %10 = load ptr, ptr %5, align 8, !dbg !571
  %11 = icmp ne ptr %10, null, !dbg !571
  br i1 %11, label %12, label %15, !dbg !571

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8, !dbg !571
  %14 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !571
  br label %16, !dbg !571

15:                                               ; preds = %4
  br label %16, !dbg !571

16:                                               ; preds = %15, %12
  %17 = phi ptr [ %14, %12 ], [ null, %15 ], !dbg !571
  store ptr %17, ptr %9, align 8, !dbg !572
  %18 = load i32, ptr %6, align 4, !dbg !573
  %19 = icmp eq i32 %18, -2, !dbg !573
  br i1 %19, label %20, label %23, !dbg !573

20:                                               ; preds = %16
  %21 = load i32, ptr %7, align 4, !dbg !573
  %22 = icmp eq i32 %21, -3, !dbg !573
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i1 [ false, %16 ], [ %22, %20 ], !dbg !575
  %25 = zext i1 %24 to i32, !dbg !573
  %26 = sext i32 %25 to i64, !dbg !573
  %27 = icmp ne i64 %26, 0, !dbg !573
  br i1 %27, label %28, label %33, !dbg !576

28:                                               ; preds = %23
  %29 = load ptr, ptr %9, align 8, !dbg !577
  %30 = getelementptr inbounds %struct.nn_cipc, ptr %29, i32 0, i32 5, !dbg !579
  call void @nn_sipc_stop(ptr noundef %30), !dbg !580
  %31 = load ptr, ptr %9, align 8, !dbg !581
  %32 = getelementptr inbounds %struct.nn_cipc, ptr %31, i32 0, i32 1, !dbg !582
  store i32 8, ptr %32, align 8, !dbg !583
  br label %33, !dbg !584

33:                                               ; preds = %28, %23
  %34 = load ptr, ptr %9, align 8, !dbg !585
  %35 = getelementptr inbounds %struct.nn_cipc, ptr %34, i32 0, i32 1, !dbg !585
  %36 = load i32, ptr %35, align 8, !dbg !585
  %37 = icmp eq i32 %36, 8, !dbg !585
  %38 = zext i1 %37 to i32, !dbg !585
  %39 = sext i32 %38 to i64, !dbg !585
  %40 = icmp ne i64 %39, 0, !dbg !585
  br i1 %40, label %41, label %54, !dbg !587

41:                                               ; preds = %33
  %42 = load ptr, ptr %9, align 8, !dbg !588
  %43 = getelementptr inbounds %struct.nn_cipc, ptr %42, i32 0, i32 5, !dbg !591
  %44 = call i32 @nn_sipc_isidle(ptr noundef %43), !dbg !592
  %45 = icmp ne i32 %44, 0, !dbg !592
  br i1 %45, label %47, label %46, !dbg !593

46:                                               ; preds = %41
  br label %237, !dbg !594

47:                                               ; preds = %41
  %48 = load ptr, ptr %9, align 8, !dbg !595
  %49 = getelementptr inbounds %struct.nn_cipc, ptr %48, i32 0, i32 4, !dbg !596
  call void @nn_backoff_stop(ptr noundef %49), !dbg !597
  %50 = load ptr, ptr %9, align 8, !dbg !598
  %51 = getelementptr inbounds %struct.nn_cipc, ptr %50, i32 0, i32 3, !dbg !599
  call void @nn_usock_stop(ptr noundef %51), !dbg !600
  %52 = load ptr, ptr %9, align 8, !dbg !601
  %53 = getelementptr inbounds %struct.nn_cipc, ptr %52, i32 0, i32 1, !dbg !602
  store i32 9, ptr %53, align 8, !dbg !603
  br label %54, !dbg !604

54:                                               ; preds = %47, %33
  %55 = load ptr, ptr %9, align 8, !dbg !605
  %56 = getelementptr inbounds %struct.nn_cipc, ptr %55, i32 0, i32 1, !dbg !605
  %57 = load i32, ptr %56, align 8, !dbg !605
  %58 = icmp eq i32 %57, 9, !dbg !605
  %59 = zext i1 %58 to i32, !dbg !605
  %60 = sext i32 %59 to i64, !dbg !605
  %61 = icmp ne i64 %60, 0, !dbg !605
  br i1 %61, label %62, label %80, !dbg !607

62:                                               ; preds = %54
  %63 = load ptr, ptr %9, align 8, !dbg !608
  %64 = getelementptr inbounds %struct.nn_cipc, ptr %63, i32 0, i32 4, !dbg !611
  %65 = call i32 @nn_backoff_isidle(ptr noundef %64), !dbg !612
  %66 = icmp ne i32 %65, 0, !dbg !612
  br i1 %66, label %67, label %72, !dbg !613

67:                                               ; preds = %62
  %68 = load ptr, ptr %9, align 8, !dbg !614
  %69 = getelementptr inbounds %struct.nn_cipc, ptr %68, i32 0, i32 3, !dbg !615
  %70 = call i32 @nn_usock_isidle(ptr noundef %69), !dbg !616
  %71 = icmp ne i32 %70, 0, !dbg !616
  br i1 %71, label %73, label %72, !dbg !617

72:                                               ; preds = %67, %62
  br label %237, !dbg !618

73:                                               ; preds = %67
  %74 = load ptr, ptr %9, align 8, !dbg !619
  %75 = getelementptr inbounds %struct.nn_cipc, ptr %74, i32 0, i32 1, !dbg !620
  store i32 1, ptr %75, align 8, !dbg !621
  %76 = load ptr, ptr %9, align 8, !dbg !622
  %77 = getelementptr inbounds %struct.nn_cipc, ptr %76, i32 0, i32 0, !dbg !623
  call void @nn_fsm_stopped_noevent(ptr noundef %77), !dbg !624
  %78 = load ptr, ptr %9, align 8, !dbg !625
  %79 = getelementptr inbounds %struct.nn_cipc, ptr %78, i32 0, i32 2, !dbg !626
  call void @nn_epbase_stopped(ptr noundef %79), !dbg !627
  br label %237, !dbg !628

80:                                               ; preds = %54
  %81 = load ptr, ptr %9, align 8, !dbg !629
  %82 = getelementptr inbounds %struct.nn_cipc, ptr %81, i32 0, i32 1, !dbg !630
  %83 = load i32, ptr %82, align 8, !dbg !630
  switch i32 %83, label %232 [
    i32 1, label %84
    i32 2, label %102
    i32 3, label %130
    i32 4, label %151
    i32 5, label %172
    i32 6, label %193
    i32 7, label %214
  ], !dbg !631

84:                                               ; preds = %80
  %85 = load i32, ptr %6, align 4, !dbg !632
  switch i32 %85, label %96 [
    i32 -2, label %86
  ], !dbg !634

86:                                               ; preds = %84
  %87 = load i32, ptr %7, align 4, !dbg !635
  switch i32 %87, label %90 [
    i32 -2, label %88
  ], !dbg !637

88:                                               ; preds = %86
  %89 = load ptr, ptr %9, align 8, !dbg !638
  call void @nn_cipc_start_connecting(ptr noundef %89), !dbg !640
  br label %237, !dbg !641

90:                                               ; preds = %86
  br label %91, !dbg !642

91:                                               ; preds = %90
  %92 = load ptr, ptr @stderr, align 8, !dbg !643
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 200), !dbg !643
  call void @nn_err_abort() #7, !dbg !643
  unreachable, !dbg !643

94:                                               ; No predecessors!
  br label %95, !dbg !647

95:                                               ; preds = %94
  br label %96, !dbg !647

96:                                               ; preds = %84, %95
  br label %97, !dbg !648

97:                                               ; preds = %96
  %98 = load ptr, ptr @stderr, align 8, !dbg !649
  %99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 204), !dbg !649
  call void @nn_err_abort() #7, !dbg !649
  unreachable, !dbg !649

100:                                              ; No predecessors!
  br label %101, !dbg !653

101:                                              ; preds = %100
  br label %102, !dbg !653

102:                                              ; preds = %80, %101
  %103 = load i32, ptr %6, align 4, !dbg !654
  switch i32 %103, label %124 [
    i32 1, label %104
  ], !dbg !655

104:                                              ; preds = %102
  %105 = load i32, ptr %7, align 4, !dbg !656
  switch i32 %105, label %118 [
    i32 1, label %106
    i32 5, label %113
  ], !dbg !658

106:                                              ; preds = %104
  %107 = load ptr, ptr %9, align 8, !dbg !659
  %108 = getelementptr inbounds %struct.nn_cipc, ptr %107, i32 0, i32 5, !dbg !661
  %109 = load ptr, ptr %9, align 8, !dbg !662
  %110 = getelementptr inbounds %struct.nn_cipc, ptr %109, i32 0, i32 3, !dbg !663
  call void @nn_sipc_start(ptr noundef %108, ptr noundef %110), !dbg !664
  %111 = load ptr, ptr %9, align 8, !dbg !665
  %112 = getelementptr inbounds %struct.nn_cipc, ptr %111, i32 0, i32 1, !dbg !666
  store i32 3, ptr %112, align 8, !dbg !667
  br label %237, !dbg !668

113:                                              ; preds = %104
  %114 = load ptr, ptr %9, align 8, !dbg !669
  %115 = getelementptr inbounds %struct.nn_cipc, ptr %114, i32 0, i32 3, !dbg !670
  call void @nn_usock_stop(ptr noundef %115), !dbg !671
  %116 = load ptr, ptr %9, align 8, !dbg !672
  %117 = getelementptr inbounds %struct.nn_cipc, ptr %116, i32 0, i32 1, !dbg !673
  store i32 5, ptr %117, align 8, !dbg !674
  br label %237, !dbg !675

118:                                              ; preds = %104
  br label %119, !dbg !676

119:                                              ; preds = %118
  %120 = load ptr, ptr @stderr, align 8, !dbg !677
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 225), !dbg !677
  call void @nn_err_abort() #7, !dbg !677
  unreachable, !dbg !677

122:                                              ; No predecessors!
  br label %123, !dbg !681

123:                                              ; preds = %122
  br label %124, !dbg !681

124:                                              ; preds = %102, %123
  br label %125, !dbg !682

125:                                              ; preds = %124
  %126 = load ptr, ptr @stderr, align 8, !dbg !683
  %127 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 229), !dbg !683
  call void @nn_err_abort() #7, !dbg !683
  unreachable, !dbg !683

128:                                              ; No predecessors!
  br label %129, !dbg !687

129:                                              ; preds = %128
  br label %130, !dbg !687

130:                                              ; preds = %80, %129
  %131 = load i32, ptr %6, align 4, !dbg !688
  switch i32 %131, label %145 [
    i32 3, label %132
  ], !dbg !689

132:                                              ; preds = %130
  %133 = load i32, ptr %7, align 4, !dbg !690
  switch i32 %133, label %139 [
    i32 1, label %134
  ], !dbg !692

134:                                              ; preds = %132
  %135 = load ptr, ptr %9, align 8, !dbg !693
  %136 = getelementptr inbounds %struct.nn_cipc, ptr %135, i32 0, i32 5, !dbg !695
  call void @nn_sipc_stop(ptr noundef %136), !dbg !696
  %137 = load ptr, ptr %9, align 8, !dbg !697
  %138 = getelementptr inbounds %struct.nn_cipc, ptr %137, i32 0, i32 1, !dbg !698
  store i32 4, ptr %138, align 8, !dbg !699
  br label %237, !dbg !700

139:                                              ; preds = %132
  br label %140, !dbg !701

140:                                              ; preds = %139
  %141 = load ptr, ptr @stderr, align 8, !dbg !702
  %142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 246), !dbg !702
  call void @nn_err_abort() #7, !dbg !702
  unreachable, !dbg !702

143:                                              ; No predecessors!
  br label %144, !dbg !706

144:                                              ; preds = %143
  br label %145, !dbg !706

145:                                              ; preds = %130, %144
  br label %146, !dbg !707

146:                                              ; preds = %145
  %147 = load ptr, ptr @stderr, align 8, !dbg !708
  %148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %147, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 250), !dbg !708
  call void @nn_err_abort() #7, !dbg !708
  unreachable, !dbg !708

149:                                              ; No predecessors!
  br label %150, !dbg !712

150:                                              ; preds = %149
  br label %151, !dbg !712

151:                                              ; preds = %80, %150
  %152 = load i32, ptr %6, align 4, !dbg !713
  switch i32 %152, label %166 [
    i32 3, label %153
  ], !dbg !714

153:                                              ; preds = %151
  %154 = load i32, ptr %7, align 4, !dbg !715
  switch i32 %154, label %160 [
    i32 2, label %155
  ], !dbg !717

155:                                              ; preds = %153
  %156 = load ptr, ptr %9, align 8, !dbg !718
  %157 = getelementptr inbounds %struct.nn_cipc, ptr %156, i32 0, i32 3, !dbg !720
  call void @nn_usock_stop(ptr noundef %157), !dbg !721
  %158 = load ptr, ptr %9, align 8, !dbg !722
  %159 = getelementptr inbounds %struct.nn_cipc, ptr %158, i32 0, i32 1, !dbg !723
  store i32 5, ptr %159, align 8, !dbg !724
  br label %237, !dbg !725

160:                                              ; preds = %153
  br label %161, !dbg !726

161:                                              ; preds = %160
  %162 = load ptr, ptr @stderr, align 8, !dbg !727
  %163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 267), !dbg !727
  call void @nn_err_abort() #7, !dbg !727
  unreachable, !dbg !727

164:                                              ; No predecessors!
  br label %165, !dbg !731

165:                                              ; preds = %164
  br label %166, !dbg !731

166:                                              ; preds = %151, %165
  br label %167, !dbg !732

167:                                              ; preds = %166
  %168 = load ptr, ptr @stderr, align 8, !dbg !733
  %169 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 271), !dbg !733
  call void @nn_err_abort() #7, !dbg !733
  unreachable, !dbg !733

170:                                              ; No predecessors!
  br label %171, !dbg !737

171:                                              ; preds = %170
  br label %172, !dbg !737

172:                                              ; preds = %80, %171
  %173 = load i32, ptr %6, align 4, !dbg !738
  switch i32 %173, label %187 [
    i32 1, label %174
  ], !dbg !739

174:                                              ; preds = %172
  %175 = load i32, ptr %7, align 4, !dbg !740
  switch i32 %175, label %181 [
    i32 6, label %176
  ], !dbg !742

176:                                              ; preds = %174
  %177 = load ptr, ptr %9, align 8, !dbg !743
  %178 = getelementptr inbounds %struct.nn_cipc, ptr %177, i32 0, i32 4, !dbg !745
  call void @nn_backoff_start(ptr noundef %178), !dbg !746
  %179 = load ptr, ptr %9, align 8, !dbg !747
  %180 = getelementptr inbounds %struct.nn_cipc, ptr %179, i32 0, i32 1, !dbg !748
  store i32 6, ptr %180, align 8, !dbg !749
  br label %237, !dbg !750

181:                                              ; preds = %174
  br label %182, !dbg !751

182:                                              ; preds = %181
  %183 = load ptr, ptr @stderr, align 8, !dbg !752
  %184 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 288), !dbg !752
  call void @nn_err_abort() #7, !dbg !752
  unreachable, !dbg !752

185:                                              ; No predecessors!
  br label %186, !dbg !756

186:                                              ; preds = %185
  br label %187, !dbg !756

187:                                              ; preds = %172, %186
  br label %188, !dbg !757

188:                                              ; preds = %187
  %189 = load ptr, ptr @stderr, align 8, !dbg !758
  %190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %189, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 292), !dbg !758
  call void @nn_err_abort() #7, !dbg !758
  unreachable, !dbg !758

191:                                              ; No predecessors!
  br label %192, !dbg !762

192:                                              ; preds = %191
  br label %193, !dbg !762

193:                                              ; preds = %80, %192
  %194 = load i32, ptr %6, align 4, !dbg !763
  switch i32 %194, label %208 [
    i32 2, label %195
  ], !dbg !764

195:                                              ; preds = %193
  %196 = load i32, ptr %7, align 4, !dbg !765
  switch i32 %196, label %202 [
    i32 1, label %197
  ], !dbg !767

197:                                              ; preds = %195
  %198 = load ptr, ptr %9, align 8, !dbg !768
  %199 = getelementptr inbounds %struct.nn_cipc, ptr %198, i32 0, i32 4, !dbg !770
  call void @nn_backoff_stop(ptr noundef %199), !dbg !771
  %200 = load ptr, ptr %9, align 8, !dbg !772
  %201 = getelementptr inbounds %struct.nn_cipc, ptr %200, i32 0, i32 1, !dbg !773
  store i32 7, ptr %201, align 8, !dbg !774
  br label %237, !dbg !775

202:                                              ; preds = %195
  br label %203, !dbg !776

203:                                              ; preds = %202
  %204 = load ptr, ptr @stderr, align 8, !dbg !777
  %205 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 310), !dbg !777
  call void @nn_err_abort() #7, !dbg !777
  unreachable, !dbg !777

206:                                              ; No predecessors!
  br label %207, !dbg !781

207:                                              ; preds = %206
  br label %208, !dbg !781

208:                                              ; preds = %193, %207
  br label %209, !dbg !782

209:                                              ; preds = %208
  %210 = load ptr, ptr @stderr, align 8, !dbg !783
  %211 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %210, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 314), !dbg !783
  call void @nn_err_abort() #7, !dbg !783
  unreachable, !dbg !783

212:                                              ; No predecessors!
  br label %213, !dbg !787

213:                                              ; preds = %212
  br label %214, !dbg !787

214:                                              ; preds = %80, %213
  %215 = load i32, ptr %6, align 4, !dbg !788
  switch i32 %215, label %226 [
    i32 2, label %216
  ], !dbg !789

216:                                              ; preds = %214
  %217 = load i32, ptr %7, align 4, !dbg !790
  switch i32 %217, label %220 [
    i32 2, label %218
  ], !dbg !792

218:                                              ; preds = %216
  %219 = load ptr, ptr %9, align 8, !dbg !793
  call void @nn_cipc_start_connecting(ptr noundef %219), !dbg !795
  br label %237, !dbg !796

220:                                              ; preds = %216
  br label %221, !dbg !797

221:                                              ; preds = %220
  %222 = load ptr, ptr @stderr, align 8, !dbg !798
  %223 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %222, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 330), !dbg !798
  call void @nn_err_abort() #7, !dbg !798
  unreachable, !dbg !798

224:                                              ; No predecessors!
  br label %225, !dbg !802

225:                                              ; preds = %224
  br label %226, !dbg !802

226:                                              ; preds = %214, %225
  br label %227, !dbg !803

227:                                              ; preds = %226
  %228 = load ptr, ptr @stderr, align 8, !dbg !804
  %229 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %228, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 334), !dbg !804
  call void @nn_err_abort() #7, !dbg !804
  unreachable, !dbg !804

230:                                              ; No predecessors!
  br label %231, !dbg !808

231:                                              ; preds = %230
  br label %232, !dbg !808

232:                                              ; preds = %80, %231
  br label %233, !dbg !809

233:                                              ; preds = %232
  %234 = load ptr, ptr @stderr, align 8, !dbg !810
  %235 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %234, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 341), !dbg !810
  call void @nn_err_abort() #7, !dbg !810
  unreachable, !dbg !810

236:                                              ; No predecessors!
  br label %237, !dbg !814

237:                                              ; preds = %46, %72, %73, %88, %106, %113, %134, %155, %176, %197, %218, %236
  ret void, !dbg !815
}

declare ptr @nn_epbase_getctx(ptr noundef) #2

declare void @nn_usock_init(ptr noundef, i32 noundef, ptr noundef) #2

declare void @nn_epbase_getopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @nn_backoff_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare void @nn_sipc_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @nn_fsm_start(ptr noundef) #2

declare void @nn_fsm_stop(ptr noundef) #2

declare void @nn_sipc_term(ptr noundef) #2

declare void @nn_backoff_term(ptr noundef) #2

declare void @nn_usock_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

declare void @nn_epbase_term(ptr noundef) #2

declare void @nn_free(ptr noundef) #2

declare void @nn_sipc_stop(ptr noundef) #2

declare i32 @nn_sipc_isidle(ptr noundef) #2

declare void @nn_backoff_stop(ptr noundef) #2

declare void @nn_usock_stop(ptr noundef) #2

declare i32 @nn_backoff_isidle(ptr noundef) #2

declare i32 @nn_usock_isidle(ptr noundef) #2

declare void @nn_fsm_stopped_noevent(ptr noundef) #2

declare void @nn_epbase_stopped(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_cipc_start_connecting(ptr noundef %0) #0 !dbg !816 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !819, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.declare(metadata ptr %3, metadata !821, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.declare(metadata ptr %4, metadata !823, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.declare(metadata ptr %5, metadata !833, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.declare(metadata ptr %6, metadata !835, metadata !DIExpression()), !dbg !838
  %7 = load ptr, ptr %2, align 8, !dbg !839
  %8 = getelementptr inbounds %struct.nn_cipc, ptr %7, i32 0, i32 3, !dbg !840
  %9 = call i32 @nn_usock_start(ptr noundef %8, i32 noundef 1, i32 noundef 1, i32 noundef 0), !dbg !841
  store i32 %9, ptr %3, align 4, !dbg !842
  %10 = load i32, ptr %3, align 4, !dbg !843
  %11 = icmp slt i32 %10, 0, !dbg !843
  %12 = zext i1 %11 to i32, !dbg !843
  %13 = sext i32 %12 to i64, !dbg !843
  %14 = icmp ne i64 %13, 0, !dbg !843
  br i1 %14, label %15, label %20, !dbg !845

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8, !dbg !846
  %17 = getelementptr inbounds %struct.nn_cipc, ptr %16, i32 0, i32 4, !dbg !848
  call void @nn_backoff_start(ptr noundef %17), !dbg !849
  %18 = load ptr, ptr %2, align 8, !dbg !850
  %19 = getelementptr inbounds %struct.nn_cipc, ptr %18, i32 0, i32 1, !dbg !851
  store i32 6, ptr %19, align 8, !dbg !852
  br label %47, !dbg !853

20:                                               ; preds = %1
  %21 = load ptr, ptr %2, align 8, !dbg !854
  %22 = getelementptr inbounds %struct.nn_cipc, ptr %21, i32 0, i32 2, !dbg !855
  %23 = call ptr @nn_epbase_getaddr(ptr noundef %22), !dbg !856
  store ptr %23, ptr %6, align 8, !dbg !857
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 128, i1 false), !dbg !858
  store ptr %4, ptr %5, align 8, !dbg !859
  br label %24, !dbg !860

24:                                               ; preds = %20
  %25 = load ptr, ptr %6, align 8, !dbg !861
  %26 = call i64 @strlen(ptr noundef %25) #8, !dbg !861
  %27 = icmp ult i64 %26, 108, !dbg !861
  %28 = xor i1 %27, true, !dbg !861
  %29 = zext i1 %28 to i32, !dbg !861
  %30 = sext i32 %29 to i64, !dbg !861
  %31 = icmp ne i64 %30, 0, !dbg !861
  br i1 %31, label %32, label %35, !dbg !864

32:                                               ; preds = %24
  %33 = load ptr, ptr @stderr, align 8, !dbg !865
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 368), !dbg !865
  call void @nn_err_abort() #7, !dbg !865
  unreachable, !dbg !865

35:                                               ; preds = %24
  br label %36, !dbg !864

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.sockaddr_storage, ptr %4, i32 0, i32 0, !dbg !867
  store i16 1, ptr %37, align 8, !dbg !868
  %38 = load ptr, ptr %5, align 8, !dbg !869
  %39 = getelementptr inbounds %struct.sockaddr_un, ptr %38, i32 0, i32 1, !dbg !870
  %40 = getelementptr inbounds [108 x i8], ptr %39, i64 0, i64 0, !dbg !869
  %41 = load ptr, ptr %6, align 8, !dbg !871
  %42 = call ptr @strncpy(ptr noundef %40, ptr noundef %41, i64 noundef 108) #9, !dbg !872
  %43 = load ptr, ptr %2, align 8, !dbg !873
  %44 = getelementptr inbounds %struct.nn_cipc, ptr %43, i32 0, i32 3, !dbg !874
  call void @nn_usock_connect(ptr noundef %44, ptr noundef %4, i64 noundef 110), !dbg !875
  %45 = load ptr, ptr %2, align 8, !dbg !876
  %46 = getelementptr inbounds %struct.nn_cipc, ptr %45, i32 0, i32 1, !dbg !877
  store i32 2, ptr %46, align 8, !dbg !878
  br label %47, !dbg !879

47:                                               ; preds = %36, %15
  ret void, !dbg !879
}

declare void @nn_sipc_start(ptr noundef, ptr noundef) #2

declare void @nn_backoff_start(ptr noundef) #2

declare i32 @nn_usock_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare ptr @nn_epbase_getaddr(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #6

declare void @nn_usock_connect(ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!421, !422, !423, !424, !425, !426, !427}
!llvm.ident = !{!428}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_cipc_epbase_vfptr", scope: !2, file: !21, line: 80, type: !62, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !385, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/transports/ipc/cipc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8f0343eb0662f322d97f23320e921fd5")
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
!18 = !{!19, !364, !365, !377}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_cipc", file: !21, line: 56, size: 13888, elements: !22)
!21 = !DIFile(filename: "./src/transports/ipc/cipc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8f0343eb0662f322d97f23320e921fd5")
!22 = !{!23, !55, !56, !74, !262, !290}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !20, file: !21, line: 59, baseType: !24, size: 640)
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
!55 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !20, file: !21, line: 60, baseType: !33, size: 32, offset: 640)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "epbase", scope: !20, file: !21, line: 64, baseType: !57, size: 128, offset: 704)
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
!74 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !20, file: !21, line: 67, baseType: !75, size: 4224, offset: 832)
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
!262 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !20, file: !21, line: 70, baseType: !263, size: 1792, offset: 5056)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_backoff", file: !264, line: 34, size: 1792, elements: !265)
!264 = !DIFile(filename: "./src/transports/ipc/../utils/backoff.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ce08b6a806388576feacec378191aabb")
!265 = !{!266, !287, !288, !289}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !263, file: !264, line: 35, baseType: !267, size: 1664)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timer", file: !268, line: 32, size: 1664, elements: !269)
!268 = !DIFile(filename: "./src/transports/ipc/../utils/../../aio/timer.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "36b8c8892aa99fc49b85b12a9caf893a")
!269 = !{!270, !271, !272, !273, !274, !284, !285, !286}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !267, file: !268, line: 33, baseType: !24, size: 640)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !267, file: !268, line: 34, baseType: !33, size: 32, offset: 640)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "start_task", scope: !267, file: !268, line: 35, baseType: !247, size: 128, offset: 704)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "stop_task", scope: !267, file: !268, line: 36, baseType: !247, size: 128, offset: 832)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "wtimer", scope: !267, file: !268, line: 37, baseType: !275, size: 256, offset: 960)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_timer", file: !276, line: 37, size: 256, elements: !277)
!276 = !DIFile(filename: "src/aio/worker.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "2b691693adce9b61547df7808f294867")
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !275, file: !276, line: 38, baseType: !32, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !275, file: !276, line: 39, baseType: !280, size: 192, offset: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset_hndl", file: !163, line: 32, size: 192, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !280, file: !163, line: 33, baseType: !182, size: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !280, file: !163, line: 34, baseType: !170, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !267, file: !268, line: 38, baseType: !43, size: 320, offset: 1216)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !267, file: !268, line: 39, baseType: !81, size: 64, offset: 1536)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !267, file: !268, line: 40, baseType: !33, size: 32, offset: 1600)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "minivl", scope: !263, file: !264, line: 36, baseType: !33, size: 32, offset: 1664)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "maxivl", scope: !263, file: !264, line: 37, baseType: !33, size: 32, offset: 1696)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !263, file: !264, line: 38, baseType: !33, size: 32, offset: 1728)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "sipc", scope: !20, file: !21, line: 74, baseType: !291, size: 7040, offset: 6848)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sipc", file: !292, line: 43, size: 7040, elements: !293)
!292 = !DIFile(filename: "./src/transports/ipc/sipc.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "c72c01549df9f1b312112846109e9bf8")
!293 = !{!294, !295, !296, !297, !352, !353, !354, !355, !359, !360, !361, !362, !363}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !291, file: !292, line: 46, baseType: !24, size: 640)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !292, line: 47, baseType: !33, size: 32, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !291, file: !292, line: 50, baseType: !261, size: 64, offset: 704)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "streamhdr", scope: !291, file: !292, line: 53, baseType: !298, size: 3008, offset: 768)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_streamhdr", file: !299, line: 41, size: 3008, elements: !300)
!299 = !DIFile(filename: "./src/transports/ipc/../utils/streamhdr.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "7d060aeed02236eba444409cfc4451d2")
!300 = !{!301, !302, !303, !304, !305, !310, !347, !351}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !298, file: !299, line: 44, baseType: !24, size: 640)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !298, file: !299, line: 45, baseType: !33, size: 32, offset: 640)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !298, file: !299, line: 48, baseType: !267, size: 1664, offset: 704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !298, file: !299, line: 51, baseType: !261, size: 64, offset: 2368)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "usock_owner", scope: !298, file: !299, line: 54, baseType: !306, size: 128, offset: 2432)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_owner", file: !25, line: 61, size: 128, elements: !307)
!307 = !{!308, !309}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !306, file: !25, line: 62, baseType: !33, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !306, file: !25, line: 63, baseType: !32, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !298, file: !299, line: 57, baseType: !311, size: 64, offset: 2560)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase", file: !58, line: 147, size: 1536, elements: !313)
!313 = !{!314, !315, !338, !339, !340, !341, !344, !345, !346}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !312, file: !58, line: 148, baseType: !24, size: 640)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !312, file: !58, line: 149, baseType: !316, size: 64, offset: 640)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase_vfptr", file: !58, line: 134, size: 128, elements: !319)
!319 = !{!320, !337}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !318, file: !58, line: 138, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!33, !311, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !326, line: 30, size: 512, elements: !327)
!326 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!327 = !{!328, !336}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !325, file: !326, line: 33, baseType: !329, size: 256)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !330, line: 39, size: 256, elements: !331)
!330 = !DIFile(filename: "src/aio/../utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !329, file: !330, line: 40, baseType: !333, size: 256)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 256, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !325, file: !326, line: 36, baseType: !329, size: 256, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !318, file: !58, line: 142, baseType: !321, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !312, file: !58, line: 150, baseType: !211, size: 8, offset: 704)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !312, file: !58, line: 151, baseType: !211, size: 8, offset: 712)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !312, file: !58, line: 152, baseType: !211, size: 8, offset: 720)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !312, file: !58, line: 153, baseType: !342, size: 64, offset: 768)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !58, line: 39, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !312, file: !58, line: 154, baseType: !34, size: 64, offset: 832)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !312, file: !58, line: 155, baseType: !43, size: 320, offset: 896)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !312, file: !58, line: 156, baseType: !43, size: 320, offset: 1216)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "protohdr", scope: !298, file: !299, line: 60, baseType: !348, size: 64, offset: 2624)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 64, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 8)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !298, file: !299, line: 63, baseType: !43, size: 320, offset: 2688)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "usock_owner", scope: !291, file: !292, line: 56, baseType: !306, size: 128, offset: 3776)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !291, file: !292, line: 59, baseType: !312, size: 1536, offset: 3904)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !291, file: !292, line: 62, baseType: !33, size: 32, offset: 5440)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "inhdr", scope: !291, file: !292, line: 65, baseType: !356, size: 72, offset: 5472)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 72, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 9)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "inmsg", scope: !291, file: !292, line: 68, baseType: !325, size: 512, offset: 5544)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !291, file: !292, line: 71, baseType: !33, size: 32, offset: 6080)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "outhdr", scope: !291, file: !292, line: 74, baseType: !356, size: 72, offset: 6112)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "outmsg", scope: !291, file: !292, line: 77, baseType: !325, size: 512, offset: 6184)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !291, file: !292, line: 80, baseType: !43, size: 320, offset: 6720)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !367, line: 29, size: 880, elements: !368)
!367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!368 = !{!369, !373}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !366, file: !367, line: 31, baseType: !370, size: 16)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !371, line: 28, baseType: !372)
!371 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!372 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !366, file: !367, line: 32, baseType: !374, size: 864, offset: 16)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 864, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 108)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !225, line: 180, size: 128, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !378, file: !225, line: 182, baseType: !370, size: 16)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !378, file: !225, line: 183, baseType: !382, size: 112, offset: 16)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 112, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 14)
!385 = !{!0, !386, !391, !396, !401, !406, !411, !416}
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !21, line: 99, type: !388, isLocal: true, isDefinition: true)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 184, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 23)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !21, line: 99, type: !393, isLocal: true, isDefinition: true)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 224, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 28)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !21, line: 110, type: !398, isLocal: true, isDefinition: true)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 240, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 30)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !21, line: 110, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 232, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 29)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !21, line: 114, type: !408, isLocal: true, isDefinition: true)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 264, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 33)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !21, line: 200, type: !413, isLocal: true, isDefinition: true)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 16, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 2)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !21, line: 368, type: !418, isLocal: true, isDefinition: true)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 304, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 38)
!421 = !{i32 7, !"Dwarf Version", i32 5}
!422 = !{i32 2, !"Debug Info Version", i32 3}
!423 = !{i32 1, !"wchar_size", i32 4}
!424 = !{i32 8, !"PIC Level", i32 2}
!425 = !{i32 7, !"PIE Level", i32 2}
!426 = !{i32 7, !"uwtable", i32 2}
!427 = !{i32 7, !"frame-pointer", i32 2}
!428 = !{!"clang version 16.0.0"}
!429 = distinct !DISubprogram(name: "nn_cipc_stop", scope: !21, file: !21, line: 130, type: !67, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!430 = !{}
!431 = !DILocalVariable(name: "self", arg: 1, scope: !429, file: !21, line: 130, type: !69)
!432 = !DILocation(line: 130, column: 45, scope: !429)
!433 = !DILocalVariable(name: "cipc", scope: !429, file: !21, line: 132, type: !19)
!434 = !DILocation(line: 132, column: 21, scope: !429)
!435 = !DILocation(line: 134, column: 12, scope: !429)
!436 = !DILocation(line: 134, column: 10, scope: !429)
!437 = !DILocation(line: 136, column: 19, scope: !429)
!438 = !DILocation(line: 136, column: 25, scope: !429)
!439 = !DILocation(line: 136, column: 5, scope: !429)
!440 = !DILocation(line: 137, column: 1, scope: !429)
!441 = distinct !DISubprogram(name: "nn_cipc_destroy", scope: !21, file: !21, line: 139, type: !67, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!442 = !DILocalVariable(name: "self", arg: 1, scope: !441, file: !21, line: 139, type: !69)
!443 = !DILocation(line: 139, column: 48, scope: !441)
!444 = !DILocalVariable(name: "cipc", scope: !441, file: !21, line: 141, type: !19)
!445 = !DILocation(line: 141, column: 21, scope: !441)
!446 = !DILocation(line: 143, column: 12, scope: !441)
!447 = !DILocation(line: 143, column: 10, scope: !441)
!448 = !DILocation(line: 145, column: 20, scope: !441)
!449 = !DILocation(line: 145, column: 26, scope: !441)
!450 = !DILocation(line: 145, column: 5, scope: !441)
!451 = !DILocation(line: 146, column: 23, scope: !441)
!452 = !DILocation(line: 146, column: 29, scope: !441)
!453 = !DILocation(line: 146, column: 5, scope: !441)
!454 = !DILocation(line: 147, column: 21, scope: !441)
!455 = !DILocation(line: 147, column: 27, scope: !441)
!456 = !DILocation(line: 147, column: 5, scope: !441)
!457 = !DILocation(line: 148, column: 19, scope: !441)
!458 = !DILocation(line: 148, column: 25, scope: !441)
!459 = !DILocation(line: 148, column: 5, scope: !441)
!460 = !DILocation(line: 149, column: 22, scope: !441)
!461 = !DILocation(line: 149, column: 28, scope: !441)
!462 = !DILocation(line: 149, column: 5, scope: !441)
!463 = !DILocation(line: 151, column: 14, scope: !441)
!464 = !DILocation(line: 151, column: 5, scope: !441)
!465 = !DILocation(line: 152, column: 1, scope: !441)
!466 = distinct !DISubprogram(name: "nn_cipc_create", scope: !21, file: !21, line: 90, type: !467, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !430)
!467 = !DISubroutineType(types: !468)
!468 = !{!33, !34, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!470 = !DILocalVariable(name: "hint", arg: 1, scope: !466, file: !21, line: 90, type: !34)
!471 = !DILocation(line: 90, column: 27, scope: !466)
!472 = !DILocalVariable(name: "epbase", arg: 2, scope: !466, file: !21, line: 90, type: !469)
!473 = !DILocation(line: 90, column: 52, scope: !466)
!474 = !DILocalVariable(name: "self", scope: !466, file: !21, line: 92, type: !19)
!475 = !DILocation(line: 92, column: 21, scope: !466)
!476 = !DILocalVariable(name: "reconnect_ivl", scope: !466, file: !21, line: 93, type: !33)
!477 = !DILocation(line: 93, column: 9, scope: !466)
!478 = !DILocalVariable(name: "reconnect_ivl_max", scope: !466, file: !21, line: 94, type: !33)
!479 = !DILocation(line: 94, column: 9, scope: !466)
!480 = !DILocalVariable(name: "sz", scope: !466, file: !21, line: 95, type: !215)
!481 = !DILocation(line: 95, column: 12, scope: !466)
!482 = !DILocation(line: 98, column: 12, scope: !466)
!483 = !DILocation(line: 98, column: 10, scope: !466)
!484 = !DILocation(line: 99, column: 5, scope: !466)
!485 = !DILocation(line: 99, column: 5, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !21, line: 99, column: 5)
!487 = distinct !DILexicalBlock(scope: !466, file: !21, line: 99, column: 5)
!488 = !DILocation(line: 99, column: 5, scope: !487)
!489 = !DILocation(line: 99, column: 5, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !21, line: 99, column: 5)
!491 = !DILocation(line: 102, column: 22, scope: !466)
!492 = !DILocation(line: 102, column: 28, scope: !466)
!493 = !DILocation(line: 102, column: 59, scope: !466)
!494 = !DILocation(line: 102, column: 5, scope: !466)
!495 = !DILocation(line: 103, column: 24, scope: !466)
!496 = !DILocation(line: 103, column: 30, scope: !466)
!497 = !DILocation(line: 104, column: 28, scope: !466)
!498 = !DILocation(line: 104, column: 34, scope: !466)
!499 = !DILocation(line: 104, column: 9, scope: !466)
!500 = !DILocation(line: 103, column: 5, scope: !466)
!501 = !DILocation(line: 105, column: 5, scope: !466)
!502 = !DILocation(line: 105, column: 11, scope: !466)
!503 = !DILocation(line: 105, column: 17, scope: !466)
!504 = !DILocation(line: 106, column: 21, scope: !466)
!505 = !DILocation(line: 106, column: 27, scope: !466)
!506 = !DILocation(line: 106, column: 54, scope: !466)
!507 = !DILocation(line: 106, column: 60, scope: !466)
!508 = !DILocation(line: 106, column: 5, scope: !466)
!509 = !DILocation(line: 107, column: 8, scope: !466)
!510 = !DILocation(line: 108, column: 24, scope: !466)
!511 = !DILocation(line: 108, column: 30, scope: !466)
!512 = !DILocation(line: 108, column: 5, scope: !466)
!513 = !DILocation(line: 110, column: 5, scope: !466)
!514 = !DILocation(line: 110, column: 5, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !21, line: 110, column: 5)
!516 = distinct !DILexicalBlock(scope: !466, file: !21, line: 110, column: 5)
!517 = !DILocation(line: 110, column: 5, scope: !516)
!518 = !DILocation(line: 110, column: 5, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !21, line: 110, column: 5)
!520 = !DILocation(line: 111, column: 8, scope: !466)
!521 = !DILocation(line: 112, column: 24, scope: !466)
!522 = !DILocation(line: 112, column: 30, scope: !466)
!523 = !DILocation(line: 112, column: 5, scope: !466)
!524 = !DILocation(line: 114, column: 5, scope: !466)
!525 = !DILocation(line: 114, column: 5, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !21, line: 114, column: 5)
!527 = distinct !DILexicalBlock(scope: !466, file: !21, line: 114, column: 5)
!528 = !DILocation(line: 114, column: 5, scope: !527)
!529 = !DILocation(line: 114, column: 5, scope: !530)
!530 = distinct !DILexicalBlock(scope: !526, file: !21, line: 114, column: 5)
!531 = !DILocation(line: 115, column: 9, scope: !532)
!532 = distinct !DILexicalBlock(scope: !466, file: !21, line: 115, column: 9)
!533 = !DILocation(line: 115, column: 27, scope: !532)
!534 = !DILocation(line: 115, column: 9, scope: !466)
!535 = !DILocation(line: 116, column: 29, scope: !532)
!536 = !DILocation(line: 116, column: 27, scope: !532)
!537 = !DILocation(line: 116, column: 9, scope: !532)
!538 = !DILocation(line: 117, column: 23, scope: !466)
!539 = !DILocation(line: 117, column: 29, scope: !466)
!540 = !DILocation(line: 118, column: 9, scope: !466)
!541 = !DILocation(line: 118, column: 24, scope: !466)
!542 = !DILocation(line: 118, column: 44, scope: !466)
!543 = !DILocation(line: 118, column: 50, scope: !466)
!544 = !DILocation(line: 117, column: 5, scope: !466)
!545 = !DILocation(line: 119, column: 20, scope: !466)
!546 = !DILocation(line: 119, column: 26, scope: !466)
!547 = !DILocation(line: 119, column: 51, scope: !466)
!548 = !DILocation(line: 119, column: 57, scope: !466)
!549 = !DILocation(line: 119, column: 66, scope: !466)
!550 = !DILocation(line: 119, column: 72, scope: !466)
!551 = !DILocation(line: 119, column: 5, scope: !466)
!552 = !DILocation(line: 122, column: 20, scope: !466)
!553 = !DILocation(line: 122, column: 26, scope: !466)
!554 = !DILocation(line: 122, column: 5, scope: !466)
!555 = !DILocation(line: 125, column: 16, scope: !466)
!556 = !DILocation(line: 125, column: 22, scope: !466)
!557 = !DILocation(line: 125, column: 6, scope: !466)
!558 = !DILocation(line: 125, column: 13, scope: !466)
!559 = !DILocation(line: 127, column: 5, scope: !466)
!560 = distinct !DISubprogram(name: "nn_cipc_handler", scope: !21, file: !21, line: 154, type: !30, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!561 = !DILocalVariable(name: "self", arg: 1, scope: !560, file: !21, line: 154, type: !32)
!562 = !DILocation(line: 154, column: 45, scope: !560)
!563 = !DILocalVariable(name: "src", arg: 2, scope: !560, file: !21, line: 154, type: !33)
!564 = !DILocation(line: 154, column: 55, scope: !560)
!565 = !DILocalVariable(name: "type", arg: 3, scope: !560, file: !21, line: 154, type: !33)
!566 = !DILocation(line: 154, column: 64, scope: !560)
!567 = !DILocalVariable(name: "srcptr", arg: 4, scope: !560, file: !21, line: 155, type: !34)
!568 = !DILocation(line: 155, column: 11, scope: !560)
!569 = !DILocalVariable(name: "cipc", scope: !560, file: !21, line: 157, type: !19)
!570 = !DILocation(line: 157, column: 21, scope: !560)
!571 = !DILocation(line: 159, column: 12, scope: !560)
!572 = !DILocation(line: 159, column: 10, scope: !560)
!573 = !DILocation(line: 164, column: 9, scope: !574)
!574 = distinct !DILexicalBlock(scope: !560, file: !21, line: 164, column: 9)
!575 = !DILocation(line: 0, scope: !574)
!576 = !DILocation(line: 164, column: 9, scope: !560)
!577 = !DILocation(line: 165, column: 24, scope: !578)
!578 = distinct !DILexicalBlock(scope: !574, file: !21, line: 164, column: 64)
!579 = !DILocation(line: 165, column: 30, scope: !578)
!580 = !DILocation(line: 165, column: 9, scope: !578)
!581 = !DILocation(line: 166, column: 9, scope: !578)
!582 = !DILocation(line: 166, column: 15, scope: !578)
!583 = !DILocation(line: 166, column: 21, scope: !578)
!584 = !DILocation(line: 167, column: 5, scope: !578)
!585 = !DILocation(line: 168, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !560, file: !21, line: 168, column: 9)
!587 = !DILocation(line: 168, column: 9, scope: !560)
!588 = !DILocation(line: 169, column: 31, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !21, line: 169, column: 13)
!590 = distinct !DILexicalBlock(scope: !586, file: !21, line: 168, column: 69)
!591 = !DILocation(line: 169, column: 37, scope: !589)
!592 = !DILocation(line: 169, column: 14, scope: !589)
!593 = !DILocation(line: 169, column: 13, scope: !590)
!594 = !DILocation(line: 170, column: 13, scope: !589)
!595 = !DILocation(line: 171, column: 27, scope: !590)
!596 = !DILocation(line: 171, column: 33, scope: !590)
!597 = !DILocation(line: 171, column: 9, scope: !590)
!598 = !DILocation(line: 172, column: 25, scope: !590)
!599 = !DILocation(line: 172, column: 31, scope: !590)
!600 = !DILocation(line: 172, column: 9, scope: !590)
!601 = !DILocation(line: 173, column: 9, scope: !590)
!602 = !DILocation(line: 173, column: 15, scope: !590)
!603 = !DILocation(line: 173, column: 21, scope: !590)
!604 = !DILocation(line: 174, column: 5, scope: !590)
!605 = !DILocation(line: 175, column: 9, scope: !606)
!606 = distinct !DILexicalBlock(scope: !560, file: !21, line: 175, column: 9)
!607 = !DILocation(line: 175, column: 9, scope: !560)
!608 = !DILocation(line: 176, column: 34, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !21, line: 176, column: 13)
!610 = distinct !DILexicalBlock(scope: !606, file: !21, line: 175, column: 58)
!611 = !DILocation(line: 176, column: 40, scope: !609)
!612 = !DILocation(line: 176, column: 14, scope: !609)
!613 = !DILocation(line: 176, column: 47, scope: !609)
!614 = !DILocation(line: 177, column: 34, scope: !609)
!615 = !DILocation(line: 177, column: 40, scope: !609)
!616 = !DILocation(line: 177, column: 16, scope: !609)
!617 = !DILocation(line: 176, column: 13, scope: !610)
!618 = !DILocation(line: 178, column: 13, scope: !609)
!619 = !DILocation(line: 179, column: 9, scope: !610)
!620 = !DILocation(line: 179, column: 15, scope: !610)
!621 = !DILocation(line: 179, column: 21, scope: !610)
!622 = !DILocation(line: 180, column: 34, scope: !610)
!623 = !DILocation(line: 180, column: 40, scope: !610)
!624 = !DILocation(line: 180, column: 9, scope: !610)
!625 = !DILocation(line: 181, column: 29, scope: !610)
!626 = !DILocation(line: 181, column: 35, scope: !610)
!627 = !DILocation(line: 181, column: 9, scope: !610)
!628 = !DILocation(line: 182, column: 9, scope: !610)
!629 = !DILocation(line: 185, column: 13, scope: !560)
!630 = !DILocation(line: 185, column: 19, scope: !560)
!631 = !DILocation(line: 185, column: 5, scope: !560)
!632 = !DILocation(line: 192, column: 17, scope: !633)
!633 = distinct !DILexicalBlock(scope: !560, file: !21, line: 185, column: 26)
!634 = !DILocation(line: 192, column: 9, scope: !633)
!635 = !DILocation(line: 195, column: 21, scope: !636)
!636 = distinct !DILexicalBlock(scope: !633, file: !21, line: 192, column: 22)
!637 = !DILocation(line: 195, column: 13, scope: !636)
!638 = !DILocation(line: 197, column: 43, scope: !639)
!639 = distinct !DILexicalBlock(scope: !636, file: !21, line: 195, column: 27)
!640 = !DILocation(line: 197, column: 17, scope: !639)
!641 = !DILocation(line: 198, column: 17, scope: !639)
!642 = !DILocation(line: 200, column: 17, scope: !639)
!643 = !DILocation(line: 200, column: 17, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !21, line: 200, column: 17)
!645 = distinct !DILexicalBlock(scope: !646, file: !21, line: 200, column: 17)
!646 = distinct !DILexicalBlock(scope: !639, file: !21, line: 200, column: 17)
!647 = !DILocation(line: 201, column: 13, scope: !639)
!648 = !DILocation(line: 204, column: 13, scope: !636)
!649 = !DILocation(line: 204, column: 13, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !21, line: 204, column: 13)
!651 = distinct !DILexicalBlock(scope: !652, file: !21, line: 204, column: 13)
!652 = distinct !DILexicalBlock(scope: !636, file: !21, line: 204, column: 13)
!653 = !DILocation(line: 205, column: 9, scope: !636)
!654 = !DILocation(line: 212, column: 17, scope: !633)
!655 = !DILocation(line: 212, column: 9, scope: !633)
!656 = !DILocation(line: 215, column: 21, scope: !657)
!657 = distinct !DILexicalBlock(scope: !633, file: !21, line: 212, column: 22)
!658 = !DILocation(line: 215, column: 13, scope: !657)
!659 = !DILocation(line: 217, column: 33, scope: !660)
!660 = distinct !DILexicalBlock(scope: !657, file: !21, line: 215, column: 27)
!661 = !DILocation(line: 217, column: 39, scope: !660)
!662 = !DILocation(line: 217, column: 46, scope: !660)
!663 = !DILocation(line: 217, column: 52, scope: !660)
!664 = !DILocation(line: 217, column: 17, scope: !660)
!665 = !DILocation(line: 218, column: 17, scope: !660)
!666 = !DILocation(line: 218, column: 23, scope: !660)
!667 = !DILocation(line: 218, column: 29, scope: !660)
!668 = !DILocation(line: 219, column: 17, scope: !660)
!669 = !DILocation(line: 221, column: 33, scope: !660)
!670 = !DILocation(line: 221, column: 39, scope: !660)
!671 = !DILocation(line: 221, column: 17, scope: !660)
!672 = !DILocation(line: 222, column: 17, scope: !660)
!673 = !DILocation(line: 222, column: 23, scope: !660)
!674 = !DILocation(line: 222, column: 29, scope: !660)
!675 = !DILocation(line: 223, column: 17, scope: !660)
!676 = !DILocation(line: 225, column: 17, scope: !660)
!677 = !DILocation(line: 225, column: 17, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !21, line: 225, column: 17)
!679 = distinct !DILexicalBlock(scope: !680, file: !21, line: 225, column: 17)
!680 = distinct !DILexicalBlock(scope: !660, file: !21, line: 225, column: 17)
!681 = !DILocation(line: 226, column: 13, scope: !660)
!682 = !DILocation(line: 229, column: 13, scope: !657)
!683 = !DILocation(line: 229, column: 13, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !21, line: 229, column: 13)
!685 = distinct !DILexicalBlock(scope: !686, file: !21, line: 229, column: 13)
!686 = distinct !DILexicalBlock(scope: !657, file: !21, line: 229, column: 13)
!687 = !DILocation(line: 230, column: 9, scope: !657)
!688 = !DILocation(line: 237, column: 17, scope: !633)
!689 = !DILocation(line: 237, column: 9, scope: !633)
!690 = !DILocation(line: 240, column: 21, scope: !691)
!691 = distinct !DILexicalBlock(scope: !633, file: !21, line: 237, column: 22)
!692 = !DILocation(line: 240, column: 13, scope: !691)
!693 = !DILocation(line: 242, column: 32, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !21, line: 240, column: 27)
!695 = !DILocation(line: 242, column: 38, scope: !694)
!696 = !DILocation(line: 242, column: 17, scope: !694)
!697 = !DILocation(line: 243, column: 17, scope: !694)
!698 = !DILocation(line: 243, column: 23, scope: !694)
!699 = !DILocation(line: 243, column: 29, scope: !694)
!700 = !DILocation(line: 244, column: 17, scope: !694)
!701 = !DILocation(line: 246, column: 17, scope: !694)
!702 = !DILocation(line: 246, column: 17, scope: !703)
!703 = distinct !DILexicalBlock(scope: !704, file: !21, line: 246, column: 17)
!704 = distinct !DILexicalBlock(scope: !705, file: !21, line: 246, column: 17)
!705 = distinct !DILexicalBlock(scope: !694, file: !21, line: 246, column: 17)
!706 = !DILocation(line: 247, column: 13, scope: !694)
!707 = !DILocation(line: 250, column: 13, scope: !691)
!708 = !DILocation(line: 250, column: 13, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !21, line: 250, column: 13)
!710 = distinct !DILexicalBlock(scope: !711, file: !21, line: 250, column: 13)
!711 = distinct !DILexicalBlock(scope: !691, file: !21, line: 250, column: 13)
!712 = !DILocation(line: 251, column: 9, scope: !691)
!713 = !DILocation(line: 258, column: 17, scope: !633)
!714 = !DILocation(line: 258, column: 9, scope: !633)
!715 = !DILocation(line: 261, column: 21, scope: !716)
!716 = distinct !DILexicalBlock(scope: !633, file: !21, line: 258, column: 22)
!717 = !DILocation(line: 261, column: 13, scope: !716)
!718 = !DILocation(line: 263, column: 33, scope: !719)
!719 = distinct !DILexicalBlock(scope: !716, file: !21, line: 261, column: 27)
!720 = !DILocation(line: 263, column: 39, scope: !719)
!721 = !DILocation(line: 263, column: 17, scope: !719)
!722 = !DILocation(line: 264, column: 17, scope: !719)
!723 = !DILocation(line: 264, column: 23, scope: !719)
!724 = !DILocation(line: 264, column: 29, scope: !719)
!725 = !DILocation(line: 265, column: 17, scope: !719)
!726 = !DILocation(line: 267, column: 17, scope: !719)
!727 = !DILocation(line: 267, column: 17, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !21, line: 267, column: 17)
!729 = distinct !DILexicalBlock(scope: !730, file: !21, line: 267, column: 17)
!730 = distinct !DILexicalBlock(scope: !719, file: !21, line: 267, column: 17)
!731 = !DILocation(line: 268, column: 13, scope: !719)
!732 = !DILocation(line: 271, column: 13, scope: !716)
!733 = !DILocation(line: 271, column: 13, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !21, line: 271, column: 13)
!735 = distinct !DILexicalBlock(scope: !736, file: !21, line: 271, column: 13)
!736 = distinct !DILexicalBlock(scope: !716, file: !21, line: 271, column: 13)
!737 = !DILocation(line: 272, column: 9, scope: !716)
!738 = !DILocation(line: 279, column: 17, scope: !633)
!739 = !DILocation(line: 279, column: 9, scope: !633)
!740 = !DILocation(line: 282, column: 21, scope: !741)
!741 = distinct !DILexicalBlock(scope: !633, file: !21, line: 279, column: 22)
!742 = !DILocation(line: 282, column: 13, scope: !741)
!743 = !DILocation(line: 284, column: 36, scope: !744)
!744 = distinct !DILexicalBlock(scope: !741, file: !21, line: 282, column: 27)
!745 = !DILocation(line: 284, column: 42, scope: !744)
!746 = !DILocation(line: 284, column: 17, scope: !744)
!747 = !DILocation(line: 285, column: 17, scope: !744)
!748 = !DILocation(line: 285, column: 23, scope: !744)
!749 = !DILocation(line: 285, column: 29, scope: !744)
!750 = !DILocation(line: 286, column: 17, scope: !744)
!751 = !DILocation(line: 288, column: 17, scope: !744)
!752 = !DILocation(line: 288, column: 17, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !21, line: 288, column: 17)
!754 = distinct !DILexicalBlock(scope: !755, file: !21, line: 288, column: 17)
!755 = distinct !DILexicalBlock(scope: !744, file: !21, line: 288, column: 17)
!756 = !DILocation(line: 289, column: 13, scope: !744)
!757 = !DILocation(line: 292, column: 13, scope: !741)
!758 = !DILocation(line: 292, column: 13, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !21, line: 292, column: 13)
!760 = distinct !DILexicalBlock(scope: !761, file: !21, line: 292, column: 13)
!761 = distinct !DILexicalBlock(scope: !741, file: !21, line: 292, column: 13)
!762 = !DILocation(line: 293, column: 9, scope: !741)
!763 = !DILocation(line: 301, column: 17, scope: !633)
!764 = !DILocation(line: 301, column: 9, scope: !633)
!765 = !DILocation(line: 304, column: 21, scope: !766)
!766 = distinct !DILexicalBlock(scope: !633, file: !21, line: 301, column: 22)
!767 = !DILocation(line: 304, column: 13, scope: !766)
!768 = !DILocation(line: 306, column: 35, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !21, line: 304, column: 27)
!770 = !DILocation(line: 306, column: 41, scope: !769)
!771 = !DILocation(line: 306, column: 17, scope: !769)
!772 = !DILocation(line: 307, column: 17, scope: !769)
!773 = !DILocation(line: 307, column: 23, scope: !769)
!774 = !DILocation(line: 307, column: 29, scope: !769)
!775 = !DILocation(line: 308, column: 17, scope: !769)
!776 = !DILocation(line: 310, column: 17, scope: !769)
!777 = !DILocation(line: 310, column: 17, scope: !778)
!778 = distinct !DILexicalBlock(scope: !779, file: !21, line: 310, column: 17)
!779 = distinct !DILexicalBlock(scope: !780, file: !21, line: 310, column: 17)
!780 = distinct !DILexicalBlock(scope: !769, file: !21, line: 310, column: 17)
!781 = !DILocation(line: 311, column: 13, scope: !769)
!782 = !DILocation(line: 314, column: 13, scope: !766)
!783 = !DILocation(line: 314, column: 13, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !21, line: 314, column: 13)
!785 = distinct !DILexicalBlock(scope: !786, file: !21, line: 314, column: 13)
!786 = distinct !DILexicalBlock(scope: !766, file: !21, line: 314, column: 13)
!787 = !DILocation(line: 315, column: 9, scope: !766)
!788 = !DILocation(line: 322, column: 17, scope: !633)
!789 = !DILocation(line: 322, column: 9, scope: !633)
!790 = !DILocation(line: 325, column: 21, scope: !791)
!791 = distinct !DILexicalBlock(scope: !633, file: !21, line: 322, column: 22)
!792 = !DILocation(line: 325, column: 13, scope: !791)
!793 = !DILocation(line: 327, column: 43, scope: !794)
!794 = distinct !DILexicalBlock(scope: !791, file: !21, line: 325, column: 27)
!795 = !DILocation(line: 327, column: 17, scope: !794)
!796 = !DILocation(line: 328, column: 17, scope: !794)
!797 = !DILocation(line: 330, column: 17, scope: !794)
!798 = !DILocation(line: 330, column: 17, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !21, line: 330, column: 17)
!800 = distinct !DILexicalBlock(scope: !801, file: !21, line: 330, column: 17)
!801 = distinct !DILexicalBlock(scope: !794, file: !21, line: 330, column: 17)
!802 = !DILocation(line: 331, column: 13, scope: !794)
!803 = !DILocation(line: 334, column: 13, scope: !791)
!804 = !DILocation(line: 334, column: 13, scope: !805)
!805 = distinct !DILexicalBlock(scope: !806, file: !21, line: 334, column: 13)
!806 = distinct !DILexicalBlock(scope: !807, file: !21, line: 334, column: 13)
!807 = distinct !DILexicalBlock(scope: !791, file: !21, line: 334, column: 13)
!808 = !DILocation(line: 335, column: 9, scope: !791)
!809 = !DILocation(line: 341, column: 9, scope: !633)
!810 = !DILocation(line: 341, column: 9, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !21, line: 341, column: 9)
!812 = distinct !DILexicalBlock(scope: !813, file: !21, line: 341, column: 9)
!813 = distinct !DILexicalBlock(scope: !633, file: !21, line: 341, column: 9)
!814 = !DILocation(line: 342, column: 5, scope: !633)
!815 = !DILocation(line: 343, column: 1, scope: !560)
!816 = distinct !DISubprogram(name: "nn_cipc_start_connecting", scope: !21, file: !21, line: 349, type: !817, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !19}
!819 = !DILocalVariable(name: "self", arg: 1, scope: !816, file: !21, line: 349, type: !19)
!820 = !DILocation(line: 349, column: 55, scope: !816)
!821 = !DILocalVariable(name: "rc", scope: !816, file: !21, line: 351, type: !33)
!822 = !DILocation(line: 351, column: 9, scope: !816)
!823 = !DILocalVariable(name: "ss", scope: !816, file: !21, line: 352, type: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !225, line: 193, size: 1024, elements: !825)
!825 = !{!826, !827, !831}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !824, file: !225, line: 195, baseType: !370, size: 16)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !824, file: !225, line: 196, baseType: !828, size: 944, offset: 16)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 944, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 118)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !824, file: !225, line: 197, baseType: !174, size: 64, offset: 960)
!832 = !DILocation(line: 352, column: 29, scope: !816)
!833 = !DILocalVariable(name: "un", scope: !816, file: !21, line: 353, type: !365)
!834 = !DILocation(line: 353, column: 25, scope: !816)
!835 = !DILocalVariable(name: "addr", scope: !816, file: !21, line: 354, type: !836)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!838 = !DILocation(line: 354, column: 17, scope: !816)
!839 = !DILocation(line: 357, column: 27, scope: !816)
!840 = !DILocation(line: 357, column: 33, scope: !816)
!841 = !DILocation(line: 357, column: 10, scope: !816)
!842 = !DILocation(line: 357, column: 8, scope: !816)
!843 = !DILocation(line: 358, column: 9, scope: !844)
!844 = distinct !DILexicalBlock(scope: !816, file: !21, line: 358, column: 9)
!845 = !DILocation(line: 358, column: 9, scope: !816)
!846 = !DILocation(line: 359, column: 28, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !21, line: 358, column: 27)
!848 = !DILocation(line: 359, column: 34, scope: !847)
!849 = !DILocation(line: 359, column: 9, scope: !847)
!850 = !DILocation(line: 360, column: 9, scope: !847)
!851 = !DILocation(line: 360, column: 15, scope: !847)
!852 = !DILocation(line: 360, column: 21, scope: !847)
!853 = !DILocation(line: 361, column: 9, scope: !847)
!854 = !DILocation(line: 365, column: 32, scope: !816)
!855 = !DILocation(line: 365, column: 38, scope: !816)
!856 = !DILocation(line: 365, column: 12, scope: !816)
!857 = !DILocation(line: 365, column: 10, scope: !816)
!858 = !DILocation(line: 366, column: 5, scope: !816)
!859 = !DILocation(line: 367, column: 8, scope: !816)
!860 = !DILocation(line: 368, column: 5, scope: !816)
!861 = !DILocation(line: 368, column: 5, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !21, line: 368, column: 5)
!863 = distinct !DILexicalBlock(scope: !816, file: !21, line: 368, column: 5)
!864 = !DILocation(line: 368, column: 5, scope: !863)
!865 = !DILocation(line: 368, column: 5, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !21, line: 368, column: 5)
!867 = !DILocation(line: 369, column: 8, scope: !816)
!868 = !DILocation(line: 369, column: 18, scope: !816)
!869 = !DILocation(line: 370, column: 14, scope: !816)
!870 = !DILocation(line: 370, column: 18, scope: !816)
!871 = !DILocation(line: 370, column: 28, scope: !816)
!872 = !DILocation(line: 370, column: 5, scope: !816)
!873 = !DILocation(line: 373, column: 24, scope: !816)
!874 = !DILocation(line: 373, column: 30, scope: !816)
!875 = !DILocation(line: 373, column: 5, scope: !816)
!876 = !DILocation(line: 375, column: 5, scope: !816)
!877 = !DILocation(line: 375, column: 11, scope: !816)
!878 = !DILocation(line: 375, column: 18, scope: !816)
!879 = !DILocation(line: 376, column: 1, scope: !816)
