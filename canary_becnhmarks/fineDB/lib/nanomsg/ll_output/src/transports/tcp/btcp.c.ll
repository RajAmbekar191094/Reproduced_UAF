; ModuleID = './src/transports/tcp/btcp.c'
source_filename = "./src/transports/tcp/btcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_epbase_vfptr = type { ptr, ptr }
%struct.nn_btcp = type { %struct.nn_fsm, i32, %struct.nn_epbase, %struct.nn_usock, ptr, %struct.nn_list }
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
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.nn_atcp = type { %struct.nn_fsm, i32, %struct.nn_usock, ptr, %struct.nn_fsm_owner, %struct.nn_stcp, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_list_item }
%struct.nn_fsm_owner = type { i32, ptr }
%struct.nn_stcp = type { %struct.nn_fsm, i32, ptr, %struct.nn_streamhdr, %struct.nn_fsm_owner, %struct.nn_pipebase, i32, [8 x i8], %struct.nn_msg, i32, [8 x i8], %struct.nn_msg, %struct.nn_fsm_event }
%struct.nn_streamhdr = type { %struct.nn_fsm, i32, %struct.nn_timer, ptr, %struct.nn_fsm_owner, ptr, [8 x i8], %struct.nn_fsm_event }
%struct.nn_timer = type { %struct.nn_fsm, i32, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_timer, %struct.nn_fsm_event, ptr, i32 }
%struct.nn_worker_timer = type { ptr, %struct.nn_timerset_hndl }
%struct.nn_timerset_hndl = type { %struct.nn_list_item, i64 }
%struct.nn_pipebase = type { %struct.nn_fsm, ptr, i8, i8, i8, ptr, ptr, %struct.nn_fsm_event, %struct.nn_fsm_event }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }
%struct.nn_list_item = type { ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }

@nn_btcp_epbase_vfptr = dso_local constant %struct.nn_epbase_vfptr { ptr @nn_btcp_stop, ptr @nn_btcp_destroy }, align 8, !dbg !0
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !421
@.str.1 = private unnamed_addr constant [28 x i8] c"./src/transports/tcp/btcp.c\00", align 1, !dbg !426
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !431
@.str.3 = private unnamed_addr constant [33 x i8] c"ipv4onlylen == sizeof (ipv4only)\00", align 1, !dbg !436
@.str.4 = private unnamed_addr constant [34 x i8] c"btcp->state == NN_BTCP_STATE_IDLE\00", align 1, !dbg !441
@.str.5 = private unnamed_addr constant [19 x i8] c"btcp->atcp == NULL\00", align 1, !dbg !446
@.str.6 = private unnamed_addr constant [51 x i8] c"src == NN_BTCP_SRC_ATCP && type == NN_ATCP_STOPPED\00", align 1, !dbg !451
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !456
@.str.8 = private unnamed_addr constant [24 x i8] c"src == NN_BTCP_SRC_ATCP\00", align 1, !dbg !461
@.str.9 = private unnamed_addr constant [4 x i8] c"pos\00", align 1, !dbg !466
@.str.10 = private unnamed_addr constant [8 x i8] c"rc >= 0\00", align 1, !dbg !469
@.str.11 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !472
@.str.12 = private unnamed_addr constant [19 x i8] c"self->atcp == NULL\00", align 1, !dbg !477

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_btcp_stop(ptr noundef %0) #0 !dbg !487 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !489, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata ptr %3, metadata !491, metadata !DIExpression()), !dbg !492
  %4 = load ptr, ptr %2, align 8, !dbg !493
  %5 = icmp ne ptr %4, null, !dbg !493
  br i1 %5, label %6, label %9, !dbg !493

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !493
  %8 = getelementptr inbounds i8, ptr %7, i64 -88, !dbg !493
  br label %10, !dbg !493

9:                                                ; preds = %1
  br label %10, !dbg !493

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !493
  store ptr %11, ptr %3, align 8, !dbg !494
  %12 = load ptr, ptr %3, align 8, !dbg !495
  %13 = getelementptr inbounds %struct.nn_btcp, ptr %12, i32 0, i32 0, !dbg !496
  call void @nn_fsm_stop(ptr noundef %13), !dbg !497
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_btcp_destroy(ptr noundef %0) #0 !dbg !499 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !500, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.declare(metadata ptr %3, metadata !502, metadata !DIExpression()), !dbg !503
  %4 = load ptr, ptr %2, align 8, !dbg !504
  %5 = icmp ne ptr %4, null, !dbg !504
  br i1 %5, label %6, label %9, !dbg !504

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !504
  %8 = getelementptr inbounds i8, ptr %7, i64 -88, !dbg !504
  br label %10, !dbg !504

9:                                                ; preds = %1
  br label %10, !dbg !504

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !504
  store ptr %11, ptr %3, align 8, !dbg !505
  br label %12, !dbg !506

12:                                               ; preds = %10
  %13 = load ptr, ptr %3, align 8, !dbg !507
  %14 = getelementptr inbounds %struct.nn_btcp, ptr %13, i32 0, i32 1, !dbg !507
  %15 = load i32, ptr %14, align 8, !dbg !507
  %16 = icmp eq i32 %15, 1, !dbg !507
  %17 = xor i1 %16, true, !dbg !507
  %18 = zext i1 %17 to i32, !dbg !507
  %19 = sext i32 %18 to i64, !dbg !507
  %20 = icmp ne i64 %19, 0, !dbg !507
  br i1 %20, label %21, label %24, !dbg !510

21:                                               ; preds = %12
  %22 = load ptr, ptr @stderr, align 8, !dbg !511
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 178), !dbg !511
  call void @nn_err_abort() #7, !dbg !511
  unreachable, !dbg !511

24:                                               ; preds = %12
  br label %25, !dbg !510

25:                                               ; preds = %24
  %26 = load ptr, ptr %3, align 8, !dbg !513
  %27 = getelementptr inbounds %struct.nn_btcp, ptr %26, i32 0, i32 5, !dbg !514
  call void @nn_list_term(ptr noundef %27), !dbg !515
  br label %28, !dbg !516

28:                                               ; preds = %25
  %29 = load ptr, ptr %3, align 8, !dbg !517
  %30 = getelementptr inbounds %struct.nn_btcp, ptr %29, i32 0, i32 4, !dbg !517
  %31 = load ptr, ptr %30, align 8, !dbg !517
  %32 = icmp eq ptr %31, null, !dbg !517
  %33 = xor i1 %32, true, !dbg !517
  %34 = zext i1 %33 to i32, !dbg !517
  %35 = sext i32 %34 to i64, !dbg !517
  %36 = icmp ne i64 %35, 0, !dbg !517
  br i1 %36, label %37, label %40, !dbg !520

37:                                               ; preds = %28
  %38 = load ptr, ptr @stderr, align 8, !dbg !521
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 180), !dbg !521
  call void @nn_err_abort() #7, !dbg !521
  unreachable, !dbg !521

40:                                               ; preds = %28
  br label %41, !dbg !520

41:                                               ; preds = %40
  %42 = load ptr, ptr %3, align 8, !dbg !523
  %43 = getelementptr inbounds %struct.nn_btcp, ptr %42, i32 0, i32 3, !dbg !524
  call void @nn_usock_term(ptr noundef %43), !dbg !525
  %44 = load ptr, ptr %3, align 8, !dbg !526
  %45 = getelementptr inbounds %struct.nn_btcp, ptr %44, i32 0, i32 2, !dbg !527
  call void @nn_epbase_term(ptr noundef %45), !dbg !528
  %46 = load ptr, ptr %3, align 8, !dbg !529
  %47 = getelementptr inbounds %struct.nn_btcp, ptr %46, i32 0, i32 0, !dbg !530
  call void @nn_fsm_term(ptr noundef %47), !dbg !531
  %48 = load ptr, ptr %3, align 8, !dbg !532
  call void @nn_free(ptr noundef %48), !dbg !533
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_btcp_create(ptr noundef %0, ptr noundef %1) #0 !dbg !535 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_storage, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !539, metadata !DIExpression()), !dbg !540
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !541, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.declare(metadata ptr %6, metadata !543, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.declare(metadata ptr %7, metadata !545, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata ptr %8, metadata !547, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.declare(metadata ptr %9, metadata !551, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.declare(metadata ptr %10, metadata !553, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata ptr %11, metadata !555, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata ptr %12, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.declare(metadata ptr %13, metadata !559, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.declare(metadata ptr %14, metadata !569, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.declare(metadata ptr %15, metadata !571, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.declare(metadata ptr %16, metadata !573, metadata !DIExpression()), !dbg !574
  %17 = call ptr @nn_alloc_(i64 noundef 656), !dbg !575
  store ptr %17, ptr %7, align 8, !dbg !576
  br label %18, !dbg !577

18:                                               ; preds = %2
  %19 = load ptr, ptr %7, align 8, !dbg !578
  %20 = icmp ne ptr %19, null, !dbg !578
  %21 = xor i1 %20, true, !dbg !578
  %22 = zext i1 %21 to i32, !dbg !578
  %23 = sext i32 %22 to i64, !dbg !578
  %24 = icmp ne i64 %23, 0, !dbg !578
  br i1 %24, label %25, label %28, !dbg !581

25:                                               ; preds = %18
  %26 = load ptr, ptr @stderr, align 8, !dbg !582
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 111), !dbg !582
  call void @nn_err_abort() #7, !dbg !582
  unreachable, !dbg !582

28:                                               ; preds = %18
  br label %29, !dbg !581

29:                                               ; preds = %28
  %30 = load ptr, ptr %7, align 8, !dbg !584
  %31 = getelementptr inbounds %struct.nn_btcp, ptr %30, i32 0, i32 2, !dbg !585
  %32 = load ptr, ptr %4, align 8, !dbg !586
  call void @nn_epbase_init(ptr noundef %31, ptr noundef @nn_btcp_epbase_vfptr, ptr noundef %32), !dbg !587
  %33 = load ptr, ptr %7, align 8, !dbg !588
  %34 = getelementptr inbounds %struct.nn_btcp, ptr %33, i32 0, i32 2, !dbg !589
  %35 = call ptr @nn_epbase_getaddr(ptr noundef %34), !dbg !590
  store ptr %35, ptr %8, align 8, !dbg !591
  %36 = load ptr, ptr %8, align 8, !dbg !592
  %37 = call i64 @strlen(ptr noundef %36) #8, !dbg !593
  store i64 %37, ptr %9, align 8, !dbg !594
  %38 = load ptr, ptr %8, align 8, !dbg !595
  %39 = load ptr, ptr %8, align 8, !dbg !596
  %40 = call i64 @strlen(ptr noundef %39) #8, !dbg !597
  %41 = getelementptr inbounds i8, ptr %38, i64 %40, !dbg !598
  store ptr %41, ptr %10, align 8, !dbg !599
  %42 = load ptr, ptr %8, align 8, !dbg !600
  %43 = call ptr @strrchr(ptr noundef %42, i32 noundef 58) #8, !dbg !601
  store ptr %43, ptr %11, align 8, !dbg !602
  %44 = load ptr, ptr %11, align 8, !dbg !603
  %45 = icmp ne ptr %44, null, !dbg !603
  %46 = xor i1 %45, true, !dbg !603
  %47 = zext i1 %46 to i32, !dbg !603
  %48 = sext i32 %47 to i64, !dbg !603
  %49 = icmp ne i64 %48, 0, !dbg !603
  br i1 %49, label %50, label %53, !dbg !605

50:                                               ; preds = %29
  %51 = load ptr, ptr %7, align 8, !dbg !606
  %52 = getelementptr inbounds %struct.nn_btcp, ptr %51, i32 0, i32 2, !dbg !608
  call void @nn_epbase_term(ptr noundef %52), !dbg !609
  store i32 -22, ptr %3, align 4, !dbg !610
  br label %125, !dbg !610

53:                                               ; preds = %29
  %54 = load ptr, ptr %11, align 8, !dbg !611
  %55 = getelementptr inbounds i8, ptr %54, i32 1, !dbg !611
  store ptr %55, ptr %11, align 8, !dbg !611
  %56 = load ptr, ptr %11, align 8, !dbg !612
  %57 = load ptr, ptr %10, align 8, !dbg !613
  %58 = load ptr, ptr %11, align 8, !dbg !614
  %59 = ptrtoint ptr %57 to i64, !dbg !615
  %60 = ptrtoint ptr %58 to i64, !dbg !615
  %61 = sub i64 %59, %60, !dbg !615
  %62 = call i32 @nn_port_resolve(ptr noundef %56, i64 noundef %61), !dbg !616
  store i32 %62, ptr %6, align 4, !dbg !617
  %63 = load i32, ptr %6, align 4, !dbg !618
  %64 = icmp slt i32 %63, 0, !dbg !618
  %65 = zext i1 %64 to i32, !dbg !618
  %66 = sext i32 %65 to i64, !dbg !618
  %67 = icmp ne i64 %66, 0, !dbg !618
  br i1 %67, label %68, label %71, !dbg !620

68:                                               ; preds = %53
  %69 = load ptr, ptr %7, align 8, !dbg !621
  %70 = getelementptr inbounds %struct.nn_btcp, ptr %69, i32 0, i32 2, !dbg !623
  call void @nn_epbase_term(ptr noundef %70), !dbg !624
  store i32 -22, ptr %3, align 4, !dbg !625
  br label %125, !dbg !625

71:                                               ; preds = %53
  %72 = load i32, ptr %6, align 4, !dbg !626
  store i32 %72, ptr %12, align 4, !dbg !627
  store i64 4, ptr %16, align 8, !dbg !628
  %73 = load ptr, ptr %7, align 8, !dbg !629
  %74 = getelementptr inbounds %struct.nn_btcp, ptr %73, i32 0, i32 2, !dbg !630
  call void @nn_epbase_getopt(ptr noundef %74, i32 noundef 0, i32 noundef 14, ptr noundef %15, ptr noundef %16), !dbg !631
  br label %75, !dbg !632

75:                                               ; preds = %71
  %76 = load i64, ptr %16, align 8, !dbg !633
  %77 = icmp eq i64 %76, 4, !dbg !633
  %78 = xor i1 %77, true, !dbg !633
  %79 = zext i1 %78 to i32, !dbg !633
  %80 = sext i32 %79 to i64, !dbg !633
  %81 = icmp ne i64 %80, 0, !dbg !633
  br i1 %81, label %82, label %85, !dbg !636

82:                                               ; preds = %75
  %83 = load ptr, ptr @stderr, align 8, !dbg !637
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 137), !dbg !637
  call void @nn_err_abort() #7, !dbg !637
  unreachable, !dbg !637

85:                                               ; preds = %75
  br label %86, !dbg !636

86:                                               ; preds = %85
  %87 = load ptr, ptr %8, align 8, !dbg !639
  %88 = load ptr, ptr %11, align 8, !dbg !640
  %89 = load ptr, ptr %8, align 8, !dbg !641
  %90 = ptrtoint ptr %88 to i64, !dbg !642
  %91 = ptrtoint ptr %89 to i64, !dbg !642
  %92 = sub i64 %90, %91, !dbg !642
  %93 = sub nsw i64 %92, 1, !dbg !643
  %94 = load i32, ptr %15, align 4, !dbg !644
  %95 = call i32 @nn_iface_resolve(ptr noundef %87, i64 noundef %93, i32 noundef %94, ptr noundef %13, ptr noundef %14), !dbg !645
  store i32 %95, ptr %6, align 4, !dbg !646
  %96 = load i32, ptr %6, align 4, !dbg !647
  %97 = icmp slt i32 %96, 0, !dbg !647
  %98 = zext i1 %97 to i32, !dbg !647
  %99 = sext i32 %98 to i64, !dbg !647
  %100 = icmp ne i64 %99, 0, !dbg !647
  br i1 %100, label %101, label %104, !dbg !649

101:                                              ; preds = %86
  %102 = load ptr, ptr %7, align 8, !dbg !650
  %103 = getelementptr inbounds %struct.nn_btcp, ptr %102, i32 0, i32 2, !dbg !652
  call void @nn_epbase_term(ptr noundef %103), !dbg !653
  store i32 -19, ptr %3, align 4, !dbg !654
  br label %125, !dbg !654

104:                                              ; preds = %86
  %105 = load ptr, ptr %7, align 8, !dbg !655
  %106 = getelementptr inbounds %struct.nn_btcp, ptr %105, i32 0, i32 0, !dbg !656
  %107 = load ptr, ptr %7, align 8, !dbg !657
  %108 = getelementptr inbounds %struct.nn_btcp, ptr %107, i32 0, i32 2, !dbg !658
  %109 = call ptr @nn_epbase_getctx(ptr noundef %108), !dbg !659
  call void @nn_fsm_init_root(ptr noundef %106, ptr noundef @nn_btcp_handler, ptr noundef %109), !dbg !660
  %110 = load ptr, ptr %7, align 8, !dbg !661
  %111 = getelementptr inbounds %struct.nn_btcp, ptr %110, i32 0, i32 1, !dbg !662
  store i32 1, ptr %111, align 8, !dbg !663
  %112 = load ptr, ptr %7, align 8, !dbg !664
  %113 = getelementptr inbounds %struct.nn_btcp, ptr %112, i32 0, i32 3, !dbg !665
  %114 = load ptr, ptr %7, align 8, !dbg !666
  %115 = getelementptr inbounds %struct.nn_btcp, ptr %114, i32 0, i32 0, !dbg !667
  call void @nn_usock_init(ptr noundef %113, i32 noundef 1, ptr noundef %115), !dbg !668
  %116 = load ptr, ptr %7, align 8, !dbg !669
  %117 = getelementptr inbounds %struct.nn_btcp, ptr %116, i32 0, i32 4, !dbg !670
  store ptr null, ptr %117, align 8, !dbg !671
  %118 = load ptr, ptr %7, align 8, !dbg !672
  %119 = getelementptr inbounds %struct.nn_btcp, ptr %118, i32 0, i32 5, !dbg !673
  call void @nn_list_init(ptr noundef %119), !dbg !674
  %120 = load ptr, ptr %7, align 8, !dbg !675
  %121 = getelementptr inbounds %struct.nn_btcp, ptr %120, i32 0, i32 0, !dbg !676
  call void @nn_fsm_start(ptr noundef %121), !dbg !677
  %122 = load ptr, ptr %7, align 8, !dbg !678
  %123 = getelementptr inbounds %struct.nn_btcp, ptr %122, i32 0, i32 2, !dbg !679
  %124 = load ptr, ptr %5, align 8, !dbg !680
  store ptr %123, ptr %124, align 8, !dbg !681
  store i32 0, ptr %3, align 4, !dbg !682
  br label %125, !dbg !682

125:                                              ; preds = %104, %101, %68, %50
  %126 = load i32, ptr %3, align 4, !dbg !683
  ret i32 %126, !dbg !683
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_epbase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @nn_epbase_getaddr(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #4

declare void @nn_epbase_term(ptr noundef) #2

declare i32 @nn_port_resolve(ptr noundef, i64 noundef) #2

declare void @nn_epbase_getopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @nn_iface_resolve(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @nn_fsm_init_root(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_btcp_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !684 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !685, metadata !DIExpression()), !dbg !686
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !687, metadata !DIExpression()), !dbg !688
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !689, metadata !DIExpression()), !dbg !690
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !691, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.declare(metadata ptr %9, metadata !693, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.declare(metadata ptr %10, metadata !695, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.declare(metadata ptr %11, metadata !697, metadata !DIExpression()), !dbg !698
  %12 = load ptr, ptr %5, align 8, !dbg !699
  %13 = icmp ne ptr %12, null, !dbg !699
  br i1 %13, label %14, label %17, !dbg !699

14:                                               ; preds = %4
  %15 = load ptr, ptr %5, align 8, !dbg !699
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !699
  br label %18, !dbg !699

17:                                               ; preds = %4
  br label %18, !dbg !699

18:                                               ; preds = %17, %14
  %19 = phi ptr [ %16, %14 ], [ null, %17 ], !dbg !699
  store ptr %19, ptr %9, align 8, !dbg !700
  %20 = load i32, ptr %6, align 4, !dbg !701
  %21 = icmp eq i32 %20, -2, !dbg !701
  br i1 %21, label %22, label %25, !dbg !701

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4, !dbg !701
  %24 = icmp eq i32 %23, -3, !dbg !701
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ], !dbg !703
  %27 = zext i1 %26 to i32, !dbg !701
  %28 = sext i32 %27 to i64, !dbg !701
  %29 = icmp ne i64 %28, 0, !dbg !701
  br i1 %29, label %30, label %36, !dbg !704

30:                                               ; preds = %25
  %31 = load ptr, ptr %9, align 8, !dbg !705
  %32 = getelementptr inbounds %struct.nn_btcp, ptr %31, i32 0, i32 4, !dbg !707
  %33 = load ptr, ptr %32, align 8, !dbg !707
  call void @nn_atcp_stop(ptr noundef %33), !dbg !708
  %34 = load ptr, ptr %9, align 8, !dbg !709
  %35 = getelementptr inbounds %struct.nn_btcp, ptr %34, i32 0, i32 1, !dbg !710
  store i32 3, ptr %35, align 8, !dbg !711
  br label %36, !dbg !712

36:                                               ; preds = %30, %25
  %37 = load ptr, ptr %9, align 8, !dbg !713
  %38 = getelementptr inbounds %struct.nn_btcp, ptr %37, i32 0, i32 1, !dbg !713
  %39 = load i32, ptr %38, align 8, !dbg !713
  %40 = icmp eq i32 %39, 3, !dbg !713
  %41 = zext i1 %40 to i32, !dbg !713
  %42 = sext i32 %41 to i64, !dbg !713
  %43 = icmp ne i64 %42, 0, !dbg !713
  br i1 %43, label %44, label %64, !dbg !715

44:                                               ; preds = %36
  %45 = load ptr, ptr %9, align 8, !dbg !716
  %46 = getelementptr inbounds %struct.nn_btcp, ptr %45, i32 0, i32 4, !dbg !719
  %47 = load ptr, ptr %46, align 8, !dbg !719
  %48 = call i32 @nn_atcp_isidle(ptr noundef %47), !dbg !720
  %49 = icmp ne i32 %48, 0, !dbg !720
  br i1 %49, label %51, label %50, !dbg !721

50:                                               ; preds = %44
  br label %241, !dbg !722

51:                                               ; preds = %44
  %52 = load ptr, ptr %9, align 8, !dbg !723
  %53 = getelementptr inbounds %struct.nn_btcp, ptr %52, i32 0, i32 4, !dbg !724
  %54 = load ptr, ptr %53, align 8, !dbg !724
  call void @nn_atcp_term(ptr noundef %54), !dbg !725
  %55 = load ptr, ptr %9, align 8, !dbg !726
  %56 = getelementptr inbounds %struct.nn_btcp, ptr %55, i32 0, i32 4, !dbg !727
  %57 = load ptr, ptr %56, align 8, !dbg !727
  call void @nn_free(ptr noundef %57), !dbg !728
  %58 = load ptr, ptr %9, align 8, !dbg !729
  %59 = getelementptr inbounds %struct.nn_btcp, ptr %58, i32 0, i32 4, !dbg !730
  store ptr null, ptr %59, align 8, !dbg !731
  %60 = load ptr, ptr %9, align 8, !dbg !732
  %61 = getelementptr inbounds %struct.nn_btcp, ptr %60, i32 0, i32 3, !dbg !733
  call void @nn_usock_stop(ptr noundef %61), !dbg !734
  %62 = load ptr, ptr %9, align 8, !dbg !735
  %63 = getelementptr inbounds %struct.nn_btcp, ptr %62, i32 0, i32 1, !dbg !736
  store i32 4, ptr %63, align 8, !dbg !737
  br label %64, !dbg !738

64:                                               ; preds = %51, %36
  %65 = load ptr, ptr %9, align 8, !dbg !739
  %66 = getelementptr inbounds %struct.nn_btcp, ptr %65, i32 0, i32 1, !dbg !739
  %67 = load i32, ptr %66, align 8, !dbg !739
  %68 = icmp eq i32 %67, 4, !dbg !739
  %69 = zext i1 %68 to i32, !dbg !739
  %70 = sext i32 %69 to i64, !dbg !739
  %71 = icmp ne i64 %70, 0, !dbg !739
  br i1 %71, label %72, label %106, !dbg !741

72:                                               ; preds = %64
  %73 = load ptr, ptr %9, align 8, !dbg !742
  %74 = getelementptr inbounds %struct.nn_btcp, ptr %73, i32 0, i32 3, !dbg !745
  %75 = call i32 @nn_usock_isidle(ptr noundef %74), !dbg !746
  %76 = icmp ne i32 %75, 0, !dbg !746
  br i1 %76, label %78, label %77, !dbg !747

77:                                               ; preds = %72
  br label %241, !dbg !748

78:                                               ; preds = %72
  %79 = load ptr, ptr %9, align 8, !dbg !749
  %80 = getelementptr inbounds %struct.nn_btcp, ptr %79, i32 0, i32 5, !dbg !751
  %81 = call ptr @nn_list_begin(ptr noundef %80), !dbg !752
  store ptr %81, ptr %10, align 8, !dbg !753
  br label %82, !dbg !754

82:                                               ; preds = %98, %78
  %83 = load ptr, ptr %10, align 8, !dbg !755
  %84 = load ptr, ptr %9, align 8, !dbg !757
  %85 = getelementptr inbounds %struct.nn_btcp, ptr %84, i32 0, i32 5, !dbg !758
  %86 = call ptr @nn_list_end(ptr noundef %85), !dbg !759
  %87 = icmp ne ptr %83, %86, !dbg !760
  br i1 %87, label %88, label %103, !dbg !761

88:                                               ; preds = %82
  %89 = load ptr, ptr %10, align 8, !dbg !762
  %90 = icmp ne ptr %89, null, !dbg !762
  br i1 %90, label %91, label %94, !dbg !762

91:                                               ; preds = %88
  %92 = load ptr, ptr %10, align 8, !dbg !762
  %93 = getelementptr inbounds i8, ptr %92, i64 -1592, !dbg !762
  br label %95, !dbg !762

94:                                               ; preds = %88
  br label %95, !dbg !762

95:                                               ; preds = %94, %91
  %96 = phi ptr [ %93, %91 ], [ null, %94 ], !dbg !762
  store ptr %96, ptr %11, align 8, !dbg !764
  %97 = load ptr, ptr %11, align 8, !dbg !765
  call void @nn_atcp_stop(ptr noundef %97), !dbg !766
  br label %98, !dbg !767

98:                                               ; preds = %95
  %99 = load ptr, ptr %9, align 8, !dbg !768
  %100 = getelementptr inbounds %struct.nn_btcp, ptr %99, i32 0, i32 5, !dbg !769
  %101 = load ptr, ptr %10, align 8, !dbg !770
  %102 = call ptr @nn_list_next(ptr noundef %100, ptr noundef %101), !dbg !771
  store ptr %102, ptr %10, align 8, !dbg !772
  br label %82, !dbg !773, !llvm.loop !774

103:                                              ; preds = %82
  %104 = load ptr, ptr %9, align 8, !dbg !777
  %105 = getelementptr inbounds %struct.nn_btcp, ptr %104, i32 0, i32 1, !dbg !778
  store i32 5, ptr %105, align 8, !dbg !779
  br label %140, !dbg !780

106:                                              ; preds = %64
  %107 = load ptr, ptr %9, align 8, !dbg !781
  %108 = getelementptr inbounds %struct.nn_btcp, ptr %107, i32 0, i32 1, !dbg !781
  %109 = load i32, ptr %108, align 8, !dbg !781
  %110 = icmp eq i32 %109, 5, !dbg !781
  %111 = zext i1 %110 to i32, !dbg !781
  %112 = sext i32 %111 to i64, !dbg !781
  %113 = icmp ne i64 %112, 0, !dbg !781
  br i1 %113, label %114, label %153, !dbg !783

114:                                              ; preds = %106
  br label %115, !dbg !784

115:                                              ; preds = %114
  %116 = load i32, ptr %6, align 4, !dbg !786
  %117 = icmp eq i32 %116, 2, !dbg !786
  br i1 %117, label %118, label %121, !dbg !786

118:                                              ; preds = %115
  %119 = load i32, ptr %7, align 4, !dbg !786
  %120 = icmp eq i32 %119, 34233, !dbg !786
  br label %121

121:                                              ; preds = %118, %115
  %122 = phi i1 [ false, %115 ], [ %120, %118 ], !dbg !789
  %123 = xor i1 %122, true, !dbg !786
  %124 = zext i1 %123 to i32, !dbg !786
  %125 = sext i32 %124 to i64, !dbg !786
  %126 = icmp ne i64 %125, 0, !dbg !786
  br i1 %126, label %127, label %130, !dbg !790

127:                                              ; preds = %121
  %128 = load ptr, ptr @stderr, align 8, !dbg !791
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 226), !dbg !791
  call void @nn_err_abort() #7, !dbg !791
  unreachable, !dbg !791

130:                                              ; preds = %121
  br label %131, !dbg !790

131:                                              ; preds = %130
  %132 = load ptr, ptr %8, align 8, !dbg !793
  store ptr %132, ptr %11, align 8, !dbg !794
  %133 = load ptr, ptr %9, align 8, !dbg !795
  %134 = getelementptr inbounds %struct.nn_btcp, ptr %133, i32 0, i32 5, !dbg !796
  %135 = load ptr, ptr %11, align 8, !dbg !797
  %136 = getelementptr inbounds %struct.nn_atcp, ptr %135, i32 0, i32 8, !dbg !798
  %137 = call ptr @nn_list_erase(ptr noundef %134, ptr noundef %136), !dbg !799
  %138 = load ptr, ptr %11, align 8, !dbg !800
  call void @nn_atcp_term(ptr noundef %138), !dbg !801
  %139 = load ptr, ptr %11, align 8, !dbg !802
  call void @nn_free(ptr noundef %139), !dbg !803
  br label %140, !dbg !803

140:                                              ; preds = %131, %103
  call void @llvm.dbg.label(metadata !804), !dbg !805
  %141 = load ptr, ptr %9, align 8, !dbg !806
  %142 = getelementptr inbounds %struct.nn_btcp, ptr %141, i32 0, i32 5, !dbg !808
  %143 = call i32 @nn_list_empty(ptr noundef %142), !dbg !809
  %144 = icmp ne i32 %143, 0, !dbg !809
  br i1 %144, label %145, label %152, !dbg !810

145:                                              ; preds = %140
  %146 = load ptr, ptr %9, align 8, !dbg !811
  %147 = getelementptr inbounds %struct.nn_btcp, ptr %146, i32 0, i32 1, !dbg !813
  store i32 1, ptr %147, align 8, !dbg !814
  %148 = load ptr, ptr %9, align 8, !dbg !815
  %149 = getelementptr inbounds %struct.nn_btcp, ptr %148, i32 0, i32 0, !dbg !816
  call void @nn_fsm_stopped_noevent(ptr noundef %149), !dbg !817
  %150 = load ptr, ptr %9, align 8, !dbg !818
  %151 = getelementptr inbounds %struct.nn_btcp, ptr %150, i32 0, i32 2, !dbg !819
  call void @nn_epbase_stopped(ptr noundef %151), !dbg !820
  br label %241, !dbg !821

152:                                              ; preds = %140
  br label %241, !dbg !822

153:                                              ; preds = %106
  %154 = load ptr, ptr %9, align 8, !dbg !823
  %155 = getelementptr inbounds %struct.nn_btcp, ptr %154, i32 0, i32 1, !dbg !824
  %156 = load i32, ptr %155, align 8, !dbg !824
  switch i32 %156, label %236 [
    i32 1, label %157
    i32 2, label %178
  ], !dbg !825

157:                                              ; preds = %153
  %158 = load i32, ptr %6, align 4, !dbg !826
  switch i32 %158, label %172 [
    i32 -2, label %159
  ], !dbg !828

159:                                              ; preds = %157
  %160 = load i32, ptr %7, align 4, !dbg !829
  switch i32 %160, label %166 [
    i32 -2, label %161
  ], !dbg !831

161:                                              ; preds = %159
  %162 = load ptr, ptr %9, align 8, !dbg !832
  call void @nn_btcp_start_listening(ptr noundef %162), !dbg !834
  %163 = load ptr, ptr %9, align 8, !dbg !835
  call void @nn_btcp_start_accepting(ptr noundef %163), !dbg !836
  %164 = load ptr, ptr %9, align 8, !dbg !837
  %165 = getelementptr inbounds %struct.nn_btcp, ptr %164, i32 0, i32 1, !dbg !838
  store i32 2, ptr %165, align 8, !dbg !839
  br label %241, !dbg !840

166:                                              ; preds = %159
  br label %167, !dbg !841

167:                                              ; preds = %166
  %168 = load ptr, ptr @stderr, align 8, !dbg !842
  %169 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef @.str.2, ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 261), !dbg !842
  call void @nn_err_abort() #7, !dbg !842
  unreachable, !dbg !842

170:                                              ; No predecessors!
  br label %171, !dbg !846

171:                                              ; preds = %170
  br label %172, !dbg !846

172:                                              ; preds = %157, %171
  br label %173, !dbg !847

173:                                              ; preds = %172
  %174 = load ptr, ptr @stderr, align 8, !dbg !848
  %175 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef @.str.2, ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 265), !dbg !848
  call void @nn_err_abort() #7, !dbg !848
  unreachable, !dbg !848

176:                                              ; No predecessors!
  br label %177, !dbg !852

177:                                              ; preds = %176
  br label %178, !dbg !852

178:                                              ; preds = %153, %177
  %179 = load ptr, ptr %8, align 8, !dbg !853
  %180 = load ptr, ptr %9, align 8, !dbg !855
  %181 = getelementptr inbounds %struct.nn_btcp, ptr %180, i32 0, i32 4, !dbg !856
  %182 = load ptr, ptr %181, align 8, !dbg !856
  %183 = icmp eq ptr %179, %182, !dbg !857
  br i1 %183, label %184, label %205, !dbg !858

184:                                              ; preds = %178
  %185 = load i32, ptr %7, align 4, !dbg !859
  switch i32 %185, label %199 [
    i32 34231, label %186
  ], !dbg !861

186:                                              ; preds = %184
  %187 = load ptr, ptr %9, align 8, !dbg !862
  %188 = getelementptr inbounds %struct.nn_btcp, ptr %187, i32 0, i32 5, !dbg !864
  %189 = load ptr, ptr %9, align 8, !dbg !865
  %190 = getelementptr inbounds %struct.nn_btcp, ptr %189, i32 0, i32 4, !dbg !866
  %191 = load ptr, ptr %190, align 8, !dbg !866
  %192 = getelementptr inbounds %struct.nn_atcp, ptr %191, i32 0, i32 8, !dbg !867
  %193 = load ptr, ptr %9, align 8, !dbg !868
  %194 = getelementptr inbounds %struct.nn_btcp, ptr %193, i32 0, i32 5, !dbg !869
  %195 = call ptr @nn_list_end(ptr noundef %194), !dbg !870
  call void @nn_list_insert(ptr noundef %188, ptr noundef %192, ptr noundef %195), !dbg !871
  %196 = load ptr, ptr %9, align 8, !dbg !872
  %197 = getelementptr inbounds %struct.nn_btcp, ptr %196, i32 0, i32 4, !dbg !873
  store ptr null, ptr %197, align 8, !dbg !874
  %198 = load ptr, ptr %9, align 8, !dbg !875
  call void @nn_btcp_start_accepting(ptr noundef %198), !dbg !876
  br label %241, !dbg !877

199:                                              ; preds = %184
  br label %200, !dbg !878

200:                                              ; preds = %199
  %201 = load ptr, ptr @stderr, align 8, !dbg !879
  %202 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef @.str.2, ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 289), !dbg !879
  call void @nn_err_abort() #7, !dbg !879
  unreachable, !dbg !879

203:                                              ; No predecessors!
  br label %204, !dbg !883

204:                                              ; preds = %203
  br label %205, !dbg !884

205:                                              ; preds = %204, %178
  br label %206, !dbg !885

206:                                              ; preds = %205
  %207 = load i32, ptr %6, align 4, !dbg !886
  %208 = icmp eq i32 %207, 2, !dbg !886
  %209 = xor i1 %208, true, !dbg !886
  %210 = zext i1 %209 to i32, !dbg !886
  %211 = sext i32 %210 to i64, !dbg !886
  %212 = icmp ne i64 %211, 0, !dbg !886
  br i1 %212, label %213, label %216, !dbg !889

213:                                              ; preds = %206
  %214 = load ptr, ptr @stderr, align 8, !dbg !890
  %215 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %214, ptr noundef @.str.2, ptr noundef @.str.8, ptr noundef @.str.1, i32 noundef 295), !dbg !890
  call void @nn_err_abort() #7, !dbg !890
  unreachable, !dbg !890

216:                                              ; preds = %206
  br label %217, !dbg !889

217:                                              ; preds = %216
  %218 = load ptr, ptr %8, align 8, !dbg !892
  store ptr %218, ptr %11, align 8, !dbg !893
  %219 = load i32, ptr %7, align 4, !dbg !894
  switch i32 %219, label %230 [
    i32 34232, label %220
    i32 34233, label %222
  ], !dbg !895

220:                                              ; preds = %217
  %221 = load ptr, ptr %11, align 8, !dbg !896
  call void @nn_atcp_stop(ptr noundef %221), !dbg !898
  br label %241, !dbg !899

222:                                              ; preds = %217
  %223 = load ptr, ptr %9, align 8, !dbg !900
  %224 = getelementptr inbounds %struct.nn_btcp, ptr %223, i32 0, i32 5, !dbg !901
  %225 = load ptr, ptr %11, align 8, !dbg !902
  %226 = getelementptr inbounds %struct.nn_atcp, ptr %225, i32 0, i32 8, !dbg !903
  %227 = call ptr @nn_list_erase(ptr noundef %224, ptr noundef %226), !dbg !904
  %228 = load ptr, ptr %11, align 8, !dbg !905
  call void @nn_atcp_term(ptr noundef %228), !dbg !906
  %229 = load ptr, ptr %11, align 8, !dbg !907
  call void @nn_free(ptr noundef %229), !dbg !908
  br label %241, !dbg !909

230:                                              ; preds = %217
  br label %231, !dbg !910

231:                                              ; preds = %230
  %232 = load ptr, ptr @stderr, align 8, !dbg !911
  %233 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef @.str.2, ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 307), !dbg !911
  call void @nn_err_abort() #7, !dbg !911
  unreachable, !dbg !911

234:                                              ; No predecessors!
  br label %235, !dbg !915

235:                                              ; preds = %234
  br label %236, !dbg !915

236:                                              ; preds = %153, %235
  br label %237, !dbg !916

237:                                              ; preds = %236
  %238 = load ptr, ptr @stderr, align 8, !dbg !917
  %239 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %238, ptr noundef @.str.2, ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 314), !dbg !917
  call void @nn_err_abort() #7, !dbg !917
  unreachable, !dbg !917

240:                                              ; No predecessors!
  br label %241, !dbg !921

241:                                              ; preds = %50, %77, %145, %152, %161, %186, %220, %222, %240
  ret void, !dbg !922
}

declare ptr @nn_epbase_getctx(ptr noundef) #2

declare void @nn_usock_init(ptr noundef, i32 noundef, ptr noundef) #2

declare void @nn_list_init(ptr noundef) #2

declare void @nn_fsm_start(ptr noundef) #2

declare void @nn_fsm_stop(ptr noundef) #2

declare void @nn_list_term(ptr noundef) #2

declare void @nn_usock_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

declare void @nn_free(ptr noundef) #2

declare void @nn_atcp_stop(ptr noundef) #2

declare i32 @nn_atcp_isidle(ptr noundef) #2

declare void @nn_atcp_term(ptr noundef) #2

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
define internal void @nn_btcp_start_listening(ptr noundef %0) #0 !dbg !923 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i16, align 2
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !926, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.declare(metadata ptr %3, metadata !928, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.declare(metadata ptr %4, metadata !930, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.declare(metadata ptr %5, metadata !932, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.declare(metadata ptr %6, metadata !934, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.declare(metadata ptr %7, metadata !936, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.declare(metadata ptr %8, metadata !938, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.declare(metadata ptr %9, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata ptr %10, metadata !942, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.declare(metadata ptr %11, metadata !944, metadata !DIExpression()), !dbg !945
  %12 = load ptr, ptr %2, align 8, !dbg !946
  %13 = getelementptr inbounds %struct.nn_btcp, ptr %12, i32 0, i32 2, !dbg !947
  %14 = call ptr @nn_epbase_getaddr(ptr noundef %13), !dbg !948
  store ptr %14, ptr %8, align 8, !dbg !949
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 128, i1 false), !dbg !950
  %15 = load ptr, ptr %8, align 8, !dbg !951
  %16 = load ptr, ptr %8, align 8, !dbg !952
  %17 = call i64 @strlen(ptr noundef %16) #8, !dbg !953
  %18 = getelementptr inbounds i8, ptr %15, i64 %17, !dbg !954
  store ptr %18, ptr %9, align 8, !dbg !955
  %19 = load ptr, ptr %8, align 8, !dbg !956
  %20 = call ptr @strrchr(ptr noundef %19, i32 noundef 58) #8, !dbg !957
  store ptr %20, ptr %10, align 8, !dbg !958
  br label %21, !dbg !959

21:                                               ; preds = %1
  %22 = load ptr, ptr %10, align 8, !dbg !960
  %23 = icmp ne ptr %22, null, !dbg !960
  %24 = xor i1 %23, true, !dbg !960
  %25 = zext i1 %24 to i32, !dbg !960
  %26 = sext i32 %25 to i64, !dbg !960
  %27 = icmp ne i64 %26, 0, !dbg !960
  br i1 %27, label %28, label %31, !dbg !963

28:                                               ; preds = %21
  %29 = load ptr, ptr @stderr, align 8, !dbg !964
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.2, ptr noundef @.str.9, ptr noundef @.str.1, i32 noundef 341), !dbg !964
  call void @nn_err_abort() #7, !dbg !964
  unreachable, !dbg !964

31:                                               ; preds = %21
  br label %32, !dbg !963

32:                                               ; preds = %31
  %33 = load ptr, ptr %10, align 8, !dbg !966
  %34 = getelementptr inbounds i8, ptr %33, i32 1, !dbg !966
  store ptr %34, ptr %10, align 8, !dbg !966
  %35 = load ptr, ptr %10, align 8, !dbg !967
  %36 = load ptr, ptr %9, align 8, !dbg !968
  %37 = load ptr, ptr %10, align 8, !dbg !969
  %38 = ptrtoint ptr %36 to i64, !dbg !970
  %39 = ptrtoint ptr %37 to i64, !dbg !970
  %40 = sub i64 %38, %39, !dbg !970
  %41 = call i32 @nn_port_resolve(ptr noundef %35, i64 noundef %40), !dbg !971
  store i32 %41, ptr %3, align 4, !dbg !972
  br label %42, !dbg !973

42:                                               ; preds = %32
  %43 = load i32, ptr %3, align 4, !dbg !974
  %44 = icmp sge i32 %43, 0, !dbg !974
  %45 = xor i1 %44, true, !dbg !974
  %46 = zext i1 %45 to i32, !dbg !974
  %47 = sext i32 %46 to i64, !dbg !974
  %48 = icmp ne i64 %47, 0, !dbg !974
  br i1 %48, label %49, label %52, !dbg !977

49:                                               ; preds = %42
  %50 = load ptr, ptr @stderr, align 8, !dbg !978
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.2, ptr noundef @.str.10, ptr noundef @.str.1, i32 noundef 344), !dbg !978
  call void @nn_err_abort() #7, !dbg !978
  unreachable, !dbg !978

52:                                               ; preds = %42
  br label %53, !dbg !977

53:                                               ; preds = %52
  %54 = load i32, ptr %3, align 4, !dbg !980
  %55 = trunc i32 %54 to i16, !dbg !980
  store i16 %55, ptr %11, align 2, !dbg !981
  store i64 4, ptr %7, align 8, !dbg !982
  %56 = load ptr, ptr %2, align 8, !dbg !983
  %57 = getelementptr inbounds %struct.nn_btcp, ptr %56, i32 0, i32 2, !dbg !984
  call void @nn_epbase_getopt(ptr noundef %57, i32 noundef 0, i32 noundef 14, ptr noundef %6, ptr noundef %7), !dbg !985
  br label %58, !dbg !986

58:                                               ; preds = %53
  %59 = load i64, ptr %7, align 8, !dbg !987
  %60 = icmp eq i64 %59, 4, !dbg !987
  %61 = xor i1 %60, true, !dbg !987
  %62 = zext i1 %61 to i32, !dbg !987
  %63 = sext i32 %62 to i64, !dbg !987
  %64 = icmp ne i64 %63, 0, !dbg !987
  br i1 %64, label %65, label %68, !dbg !990

65:                                               ; preds = %58
  %66 = load ptr, ptr @stderr, align 8, !dbg !991
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 351), !dbg !991
  call void @nn_err_abort() #7, !dbg !991
  unreachable, !dbg !991

68:                                               ; preds = %58
  br label %69, !dbg !990

69:                                               ; preds = %68
  %70 = load ptr, ptr %8, align 8, !dbg !993
  %71 = load ptr, ptr %10, align 8, !dbg !994
  %72 = load ptr, ptr %8, align 8, !dbg !995
  %73 = ptrtoint ptr %71 to i64, !dbg !996
  %74 = ptrtoint ptr %72 to i64, !dbg !996
  %75 = sub i64 %73, %74, !dbg !996
  %76 = sub nsw i64 %75, 1, !dbg !997
  %77 = load i32, ptr %6, align 4, !dbg !998
  %78 = call i32 @nn_iface_resolve(ptr noundef %70, i64 noundef %76, i32 noundef %77, ptr noundef %4, ptr noundef %5), !dbg !999
  store i32 %78, ptr %3, align 4, !dbg !1000
  br label %79, !dbg !1001

79:                                               ; preds = %69
  %80 = load i32, ptr %3, align 4, !dbg !1002
  %81 = icmp eq i32 %80, 0, !dbg !1002
  %82 = xor i1 %81, true, !dbg !1002
  %83 = zext i1 %82 to i32, !dbg !1002
  %84 = sext i32 %83 to i64, !dbg !1002
  %85 = icmp ne i64 %84, 0, !dbg !1002
  br i1 %85, label %86, label %94, !dbg !1005

86:                                               ; preds = %79
  %87 = load ptr, ptr @stderr, align 8, !dbg !1006
  %88 = load i32, ptr %3, align 4, !dbg !1006
  %89 = sub nsw i32 0, %88, !dbg !1006
  %90 = call ptr @nn_err_strerror(i32 noundef %89), !dbg !1006
  %91 = load i32, ptr %3, align 4, !dbg !1006
  %92 = sub nsw i32 0, %91, !dbg !1006
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef @.str.11, ptr noundef %90, i32 noundef %92, ptr noundef @.str.1, i32 noundef 353), !dbg !1006
  call void @nn_err_abort() #7, !dbg !1006
  unreachable, !dbg !1006

94:                                               ; preds = %79
  br label %95, !dbg !1005

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.sockaddr_storage, ptr %4, i32 0, i32 0, !dbg !1008
  %97 = load i16, ptr %96, align 8, !dbg !1008
  %98 = zext i16 %97 to i32, !dbg !1010
  %99 = icmp eq i32 %98, 2, !dbg !1011
  br i1 %99, label %100, label %104, !dbg !1012

100:                                              ; preds = %95
  %101 = load i16, ptr %11, align 2, !dbg !1013
  %102 = call zeroext i16 @htons(i16 noundef zeroext %101) #9, !dbg !1015
  %103 = getelementptr inbounds %struct.sockaddr_in, ptr %4, i32 0, i32 1, !dbg !1016
  store i16 %102, ptr %103, align 2, !dbg !1017
  store i64 16, ptr %5, align 8, !dbg !1018
  br label %119, !dbg !1019

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.sockaddr_storage, ptr %4, i32 0, i32 0, !dbg !1020
  %106 = load i16, ptr %105, align 8, !dbg !1020
  %107 = zext i16 %106 to i32, !dbg !1022
  %108 = icmp eq i32 %107, 10, !dbg !1023
  br i1 %108, label %109, label %113, !dbg !1024

109:                                              ; preds = %104
  %110 = load i16, ptr %11, align 2, !dbg !1025
  %111 = call zeroext i16 @htons(i16 noundef zeroext %110) #9, !dbg !1027
  %112 = getelementptr inbounds %struct.sockaddr_in6, ptr %4, i32 0, i32 1, !dbg !1028
  store i16 %111, ptr %112, align 2, !dbg !1029
  store i64 28, ptr %5, align 8, !dbg !1030
  br label %118, !dbg !1031

113:                                              ; preds = %104
  br label %114, !dbg !1032

114:                                              ; preds = %113
  %115 = load ptr, ptr @stderr, align 8, !dbg !1033
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef @.str.2, ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 365), !dbg !1033
  call void @nn_err_abort() #7, !dbg !1033
  unreachable, !dbg !1033

117:                                              ; No predecessors!
  br label %118

118:                                              ; preds = %117, %109
  br label %119

119:                                              ; preds = %118, %100
  %120 = load ptr, ptr %2, align 8, !dbg !1037
  %121 = getelementptr inbounds %struct.nn_btcp, ptr %120, i32 0, i32 3, !dbg !1038
  %122 = getelementptr inbounds %struct.sockaddr_storage, ptr %4, i32 0, i32 0, !dbg !1039
  %123 = load i16, ptr %122, align 8, !dbg !1039
  %124 = zext i16 %123 to i32, !dbg !1040
  %125 = call i32 @nn_usock_start(ptr noundef %121, i32 noundef %124, i32 noundef 1, i32 noundef 0), !dbg !1041
  store i32 %125, ptr %3, align 4, !dbg !1042
  br label %126, !dbg !1043

126:                                              ; preds = %119
  %127 = load i32, ptr %3, align 4, !dbg !1044
  %128 = icmp eq i32 %127, 0, !dbg !1044
  %129 = xor i1 %128, true, !dbg !1044
  %130 = zext i1 %129 to i32, !dbg !1044
  %131 = sext i32 %130 to i64, !dbg !1044
  %132 = icmp ne i64 %131, 0, !dbg !1044
  br i1 %132, label %133, label %141, !dbg !1047

133:                                              ; preds = %126
  %134 = load ptr, ptr @stderr, align 8, !dbg !1048
  %135 = load i32, ptr %3, align 4, !dbg !1048
  %136 = sub nsw i32 0, %135, !dbg !1048
  %137 = call ptr @nn_err_strerror(i32 noundef %136), !dbg !1048
  %138 = load i32, ptr %3, align 4, !dbg !1048
  %139 = sub nsw i32 0, %138, !dbg !1048
  %140 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef @.str.11, ptr noundef %137, i32 noundef %139, ptr noundef @.str.1, i32 noundef 370), !dbg !1048
  call void @nn_err_abort() #7, !dbg !1048
  unreachable, !dbg !1048

141:                                              ; preds = %126
  br label %142, !dbg !1047

142:                                              ; preds = %141
  %143 = load ptr, ptr %2, align 8, !dbg !1050
  %144 = getelementptr inbounds %struct.nn_btcp, ptr %143, i32 0, i32 3, !dbg !1051
  %145 = load i64, ptr %5, align 8, !dbg !1052
  %146 = call i32 @nn_usock_bind(ptr noundef %144, ptr noundef %4, i64 noundef %145), !dbg !1053
  store i32 %146, ptr %3, align 4, !dbg !1054
  br label %147, !dbg !1055

147:                                              ; preds = %142
  %148 = load i32, ptr %3, align 4, !dbg !1056
  %149 = icmp eq i32 %148, 0, !dbg !1056
  %150 = xor i1 %149, true, !dbg !1056
  %151 = zext i1 %150 to i32, !dbg !1056
  %152 = sext i32 %151 to i64, !dbg !1056
  %153 = icmp ne i64 %152, 0, !dbg !1056
  br i1 %153, label %154, label %162, !dbg !1059

154:                                              ; preds = %147
  %155 = load ptr, ptr @stderr, align 8, !dbg !1060
  %156 = load i32, ptr %3, align 4, !dbg !1060
  %157 = sub nsw i32 0, %156, !dbg !1060
  %158 = call ptr @nn_err_strerror(i32 noundef %157), !dbg !1060
  %159 = load i32, ptr %3, align 4, !dbg !1060
  %160 = sub nsw i32 0, %159, !dbg !1060
  %161 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef @.str.11, ptr noundef %158, i32 noundef %160, ptr noundef @.str.1, i32 noundef 372), !dbg !1060
  call void @nn_err_abort() #7, !dbg !1060
  unreachable, !dbg !1060

162:                                              ; preds = %147
  br label %163, !dbg !1059

163:                                              ; preds = %162
  %164 = load ptr, ptr %2, align 8, !dbg !1062
  %165 = getelementptr inbounds %struct.nn_btcp, ptr %164, i32 0, i32 3, !dbg !1063
  %166 = call i32 @nn_usock_listen(ptr noundef %165, i32 noundef 100), !dbg !1064
  store i32 %166, ptr %3, align 4, !dbg !1065
  br label %167, !dbg !1066

167:                                              ; preds = %163
  %168 = load i32, ptr %3, align 4, !dbg !1067
  %169 = icmp eq i32 %168, 0, !dbg !1067
  %170 = xor i1 %169, true, !dbg !1067
  %171 = zext i1 %170 to i32, !dbg !1067
  %172 = sext i32 %171 to i64, !dbg !1067
  %173 = icmp ne i64 %172, 0, !dbg !1067
  br i1 %173, label %174, label %182, !dbg !1070

174:                                              ; preds = %167
  %175 = load ptr, ptr @stderr, align 8, !dbg !1071
  %176 = load i32, ptr %3, align 4, !dbg !1071
  %177 = sub nsw i32 0, %176, !dbg !1071
  %178 = call ptr @nn_err_strerror(i32 noundef %177), !dbg !1071
  %179 = load i32, ptr %3, align 4, !dbg !1071
  %180 = sub nsw i32 0, %179, !dbg !1071
  %181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %175, ptr noundef @.str.11, ptr noundef %178, i32 noundef %180, ptr noundef @.str.1, i32 noundef 374), !dbg !1071
  call void @nn_err_abort() #7, !dbg !1071
  unreachable, !dbg !1071

182:                                              ; preds = %167
  br label %183, !dbg !1070

183:                                              ; preds = %182
  ret void, !dbg !1073
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_btcp_start_accepting(ptr noundef %0) #0 !dbg !1074 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1075, metadata !DIExpression()), !dbg !1076
  br label %3, !dbg !1077

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !1078
  %5 = getelementptr inbounds %struct.nn_btcp, ptr %4, i32 0, i32 4, !dbg !1078
  %6 = load ptr, ptr %5, align 8, !dbg !1078
  %7 = icmp eq ptr %6, null, !dbg !1078
  %8 = xor i1 %7, true, !dbg !1078
  %9 = zext i1 %8 to i32, !dbg !1078
  %10 = sext i32 %9 to i64, !dbg !1078
  %11 = icmp ne i64 %10, 0, !dbg !1078
  br i1 %11, label %12, label %15, !dbg !1081

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !dbg !1082
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.2, ptr noundef @.str.12, ptr noundef @.str.1, i32 noundef 379), !dbg !1082
  call void @nn_err_abort() #7, !dbg !1082
  unreachable, !dbg !1082

15:                                               ; preds = %3
  br label %16, !dbg !1081

16:                                               ; preds = %15
  %17 = call ptr @nn_alloc_(i64 noundef 1608), !dbg !1084
  %18 = load ptr, ptr %2, align 8, !dbg !1085
  %19 = getelementptr inbounds %struct.nn_btcp, ptr %18, i32 0, i32 4, !dbg !1086
  store ptr %17, ptr %19, align 8, !dbg !1087
  br label %20, !dbg !1088

20:                                               ; preds = %16
  %21 = load ptr, ptr %2, align 8, !dbg !1089
  %22 = getelementptr inbounds %struct.nn_btcp, ptr %21, i32 0, i32 4, !dbg !1089
  %23 = load ptr, ptr %22, align 8, !dbg !1089
  %24 = icmp ne ptr %23, null, !dbg !1089
  %25 = xor i1 %24, true, !dbg !1089
  %26 = zext i1 %25 to i32, !dbg !1089
  %27 = sext i32 %26 to i64, !dbg !1089
  %28 = icmp ne i64 %27, 0, !dbg !1089
  br i1 %28, label %29, label %32, !dbg !1092

29:                                               ; preds = %20
  %30 = load ptr, ptr @stderr, align 8, !dbg !1093
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 383), !dbg !1093
  call void @nn_err_abort() #7, !dbg !1093
  unreachable, !dbg !1093

32:                                               ; preds = %20
  br label %33, !dbg !1092

33:                                               ; preds = %32
  %34 = load ptr, ptr %2, align 8, !dbg !1095
  %35 = getelementptr inbounds %struct.nn_btcp, ptr %34, i32 0, i32 4, !dbg !1096
  %36 = load ptr, ptr %35, align 8, !dbg !1096
  %37 = load ptr, ptr %2, align 8, !dbg !1097
  %38 = getelementptr inbounds %struct.nn_btcp, ptr %37, i32 0, i32 2, !dbg !1098
  %39 = load ptr, ptr %2, align 8, !dbg !1099
  %40 = getelementptr inbounds %struct.nn_btcp, ptr %39, i32 0, i32 0, !dbg !1100
  call void @nn_atcp_init(ptr noundef %36, i32 noundef 2, ptr noundef %38, ptr noundef %40), !dbg !1101
  %41 = load ptr, ptr %2, align 8, !dbg !1102
  %42 = getelementptr inbounds %struct.nn_btcp, ptr %41, i32 0, i32 4, !dbg !1103
  %43 = load ptr, ptr %42, align 8, !dbg !1103
  %44 = load ptr, ptr %2, align 8, !dbg !1104
  %45 = getelementptr inbounds %struct.nn_btcp, ptr %44, i32 0, i32 3, !dbg !1105
  call void @nn_atcp_start(ptr noundef %43, ptr noundef %45), !dbg !1106
  ret void, !dbg !1107
}

declare void @nn_list_insert(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare ptr @nn_err_strerror(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #6

declare i32 @nn_usock_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @nn_usock_bind(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @nn_usock_listen(ptr noundef, i32 noundef) #2

declare void @nn_atcp_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @nn_atcp_start(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!479, !480, !481, !482, !483, !484, !485}
!llvm.ident = !{!486}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_btcp_epbase_vfptr", scope: !2, file: !21, line: 84, type: !62, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !420, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/transports/tcp/btcp.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "f272e1eea37bd94667228f316d28abba")
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
!18 = !{!19, !367, !34, !263, !33, !368, !389, !412, !215}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_btcp", file: !21, line: 61, size: 5248, elements: !22)
!21 = !DIFile(filename: "./src/transports/tcp/btcp.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "f272e1eea37bd94667228f316d28abba")
!22 = !{!23, !55, !56, !74, !262, !366}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !20, file: !21, line: 64, baseType: !24, size: 640)
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
!55 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !20, file: !21, line: 65, baseType: !33, size: 32, offset: 640)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "epbase", scope: !20, file: !21, line: 69, baseType: !57, size: 128, offset: 704)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !58, line: 81, size: 128, elements: !59)
!58 = !DIFile(filename: "./src/transports/tcp/../../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
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
!74 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !20, file: !21, line: 72, baseType: !75, size: 4224, offset: 832)
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
!262 = !DIDerivedType(tag: DW_TAG_member, name: "atcp", scope: !20, file: !21, line: 75, baseType: !263, size: 64, offset: 5056)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_atcp", file: !265, line: 44, size: 12864, elements: !266)
!265 = !DIFile(filename: "./src/transports/tcp/atcp.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b417eb1b29da82fff98b8dac33745c14")
!266 = !{!267, !268, !269, !270, !271, !276, !363, !364, !365}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !264, file: !265, line: 47, baseType: !24, size: 640)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !264, file: !265, line: 48, baseType: !33, size: 32, offset: 640)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !264, file: !265, line: 51, baseType: !75, size: 4224, offset: 704)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !264, file: !265, line: 54, baseType: !261, size: 64, offset: 4928)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "listener_owner", scope: !264, file: !265, line: 55, baseType: !272, size: 128, offset: 4992)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_owner", file: !25, line: 61, size: 128, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !272, file: !25, line: 62, baseType: !33, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !272, file: !25, line: 63, baseType: !32, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "stcp", scope: !264, file: !265, line: 58, baseType: !277, size: 6976, offset: 5120)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_stcp", file: !278, line: 41, size: 6976, elements: !279)
!278 = !DIFile(filename: "./src/transports/tcp/stcp.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "f6f65c8822f9985e9560a60ac94ab206")
!279 = !{!280, !281, !282, !283, !354, !355, !356, !357, !358, !359, !360, !361, !362}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !277, file: !278, line: 44, baseType: !24, size: 640)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !277, file: !278, line: 45, baseType: !33, size: 32, offset: 640)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !277, file: !278, line: 48, baseType: !261, size: 64, offset: 704)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "streamhdr", scope: !277, file: !278, line: 51, baseType: !284, size: 3008, offset: 768)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_streamhdr", file: !285, line: 41, size: 3008, elements: !286)
!285 = !DIFile(filename: "./src/transports/tcp/../utils/streamhdr.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "7d060aeed02236eba444409cfc4451d2")
!286 = !{!287, !288, !289, !310, !311, !312, !349, !353}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !284, file: !285, line: 44, baseType: !24, size: 640)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !284, file: !285, line: 45, baseType: !33, size: 32, offset: 640)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !284, file: !285, line: 48, baseType: !290, size: 1664, offset: 704)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timer", file: !291, line: 32, size: 1664, elements: !292)
!291 = !DIFile(filename: "./src/transports/tcp/../utils/../../aio/timer.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "36b8c8892aa99fc49b85b12a9caf893a")
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
!354 = !DIDerivedType(tag: DW_TAG_member, name: "usock_owner", scope: !277, file: !278, line: 54, baseType: !272, size: 128, offset: 3776)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !277, file: !278, line: 57, baseType: !314, size: 1536, offset: 3904)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !277, file: !278, line: 60, baseType: !33, size: 32, offset: 5440)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "inhdr", scope: !277, file: !278, line: 63, baseType: !350, size: 64, offset: 5472)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "inmsg", scope: !277, file: !278, line: 66, baseType: !327, size: 512, offset: 5536)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !277, file: !278, line: 69, baseType: !33, size: 32, offset: 6048)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "outhdr", scope: !277, file: !278, line: 72, baseType: !350, size: 64, offset: 6080)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "outmsg", scope: !277, file: !278, line: 75, baseType: !327, size: 512, offset: 6144)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !277, file: !278, line: 78, baseType: !43, size: 320, offset: 6656)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "accepted", scope: !264, file: !265, line: 61, baseType: !43, size: 320, offset: 12096)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !264, file: !265, line: 62, baseType: !43, size: 320, offset: 12416)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !264, file: !265, line: 65, baseType: !182, size: 128, offset: 12736)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "atcps", scope: !20, file: !21, line: 78, baseType: !177, size: 128, offset: 5120)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !370, line: 245, size: 128, elements: !371)
!370 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!371 = !{!372, !376, !380, !387}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !369, file: !370, line: 247, baseType: !373, size: 16)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !374, line: 28, baseType: !375)
!374 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!375 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !369, file: !370, line: 248, baseType: !377, size: 16, offset: 16)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !370, line: 123, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !171, line: 25, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !173, line: 40, baseType: !375)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !369, file: !370, line: 249, baseType: !381, size: 32, offset: 32)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !370, line: 31, size: 32, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !381, file: !370, line: 33, baseType: !384, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !370, line: 30, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !171, line: 26, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !173, line: 42, baseType: !7)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !369, file: !370, line: 252, baseType: !388, size: 64, offset: 64)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 64, elements: !351)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !370, line: 260, size: 224, elements: !391)
!391 = !{!392, !393, !394, !395, !411}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !390, file: !370, line: 262, baseType: !373, size: 16)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !390, file: !370, line: 263, baseType: !377, size: 16, offset: 16)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !390, file: !370, line: 264, baseType: !385, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !390, file: !370, line: 265, baseType: !396, size: 128, offset: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !370, line: 219, size: 128, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !396, file: !370, line: 226, baseType: !399, size: 128)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !370, line: 221, size: 128, elements: !400)
!400 = !{!401, !405, !407}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !399, file: !370, line: 223, baseType: !402, size: 128)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 128, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 16)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !399, file: !370, line: 224, baseType: !406, size: 128)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 128, elements: !351)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !399, file: !370, line: 225, baseType: !408, size: 128)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 128, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 4)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !390, file: !370, line: 266, baseType: !385, size: 32, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !225, line: 180, size: 128, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !413, file: !225, line: 182, baseType: !373, size: 16)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !413, file: !225, line: 183, baseType: !417, size: 112, offset: 16)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 112, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 14)
!420 = !{!0, !421, !426, !431, !436, !441, !446, !451, !456, !461, !466, !469, !472, !477}
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !21, line: 111, type: !423, isLocal: true, isDefinition: true)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 184, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 23)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !21, line: 111, type: !428, isLocal: true, isDefinition: true)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 224, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 28)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !21, line: 137, type: !433, isLocal: true, isDefinition: true)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 240, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 30)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !21, line: 137, type: !438, isLocal: true, isDefinition: true)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 264, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 33)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !21, line: 178, type: !443, isLocal: true, isDefinition: true)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 272, elements: !444)
!444 = !{!445}
!445 = !DISubrange(count: 34)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !21, line: 180, type: !448, isLocal: true, isDefinition: true)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 152, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 19)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !21, line: 226, type: !453, isLocal: true, isDefinition: true)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 408, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 51)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !21, line: 261, type: !458, isLocal: true, isDefinition: true)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 16, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 2)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !21, line: 295, type: !463, isLocal: true, isDefinition: true)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 192, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 24)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !21, line: 341, type: !468, isLocal: true, isDefinition: true)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 32, elements: !409)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !21, line: 344, type: !471, isLocal: true, isDefinition: true)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 64, elements: !351)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !21, line: 353, type: !474, isLocal: true, isDefinition: true)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 136, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 17)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !21, line: 379, type: !448, isLocal: true, isDefinition: true)
!479 = !{i32 7, !"Dwarf Version", i32 5}
!480 = !{i32 2, !"Debug Info Version", i32 3}
!481 = !{i32 1, !"wchar_size", i32 4}
!482 = !{i32 8, !"PIC Level", i32 2}
!483 = !{i32 7, !"PIE Level", i32 2}
!484 = !{i32 7, !"uwtable", i32 2}
!485 = !{i32 7, !"frame-pointer", i32 2}
!486 = !{!"clang version 16.0.0"}
!487 = distinct !DISubprogram(name: "nn_btcp_stop", scope: !21, file: !21, line: 163, type: !67, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!488 = !{}
!489 = !DILocalVariable(name: "self", arg: 1, scope: !487, file: !21, line: 163, type: !69)
!490 = !DILocation(line: 163, column: 45, scope: !487)
!491 = !DILocalVariable(name: "btcp", scope: !487, file: !21, line: 165, type: !19)
!492 = !DILocation(line: 165, column: 21, scope: !487)
!493 = !DILocation(line: 167, column: 12, scope: !487)
!494 = !DILocation(line: 167, column: 10, scope: !487)
!495 = !DILocation(line: 169, column: 19, scope: !487)
!496 = !DILocation(line: 169, column: 25, scope: !487)
!497 = !DILocation(line: 169, column: 5, scope: !487)
!498 = !DILocation(line: 170, column: 1, scope: !487)
!499 = distinct !DISubprogram(name: "nn_btcp_destroy", scope: !21, file: !21, line: 172, type: !67, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!500 = !DILocalVariable(name: "self", arg: 1, scope: !499, file: !21, line: 172, type: !69)
!501 = !DILocation(line: 172, column: 48, scope: !499)
!502 = !DILocalVariable(name: "btcp", scope: !499, file: !21, line: 174, type: !19)
!503 = !DILocation(line: 174, column: 21, scope: !499)
!504 = !DILocation(line: 176, column: 12, scope: !499)
!505 = !DILocation(line: 176, column: 10, scope: !499)
!506 = !DILocation(line: 178, column: 5, scope: !499)
!507 = !DILocation(line: 178, column: 5, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !21, line: 178, column: 5)
!509 = distinct !DILexicalBlock(scope: !499, file: !21, line: 178, column: 5)
!510 = !DILocation(line: 178, column: 5, scope: !509)
!511 = !DILocation(line: 178, column: 5, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !21, line: 178, column: 5)
!513 = !DILocation(line: 179, column: 20, scope: !499)
!514 = !DILocation(line: 179, column: 26, scope: !499)
!515 = !DILocation(line: 179, column: 5, scope: !499)
!516 = !DILocation(line: 180, column: 5, scope: !499)
!517 = !DILocation(line: 180, column: 5, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !21, line: 180, column: 5)
!519 = distinct !DILexicalBlock(scope: !499, file: !21, line: 180, column: 5)
!520 = !DILocation(line: 180, column: 5, scope: !519)
!521 = !DILocation(line: 180, column: 5, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !21, line: 180, column: 5)
!523 = !DILocation(line: 181, column: 21, scope: !499)
!524 = !DILocation(line: 181, column: 27, scope: !499)
!525 = !DILocation(line: 181, column: 5, scope: !499)
!526 = !DILocation(line: 182, column: 22, scope: !499)
!527 = !DILocation(line: 182, column: 28, scope: !499)
!528 = !DILocation(line: 182, column: 5, scope: !499)
!529 = !DILocation(line: 183, column: 19, scope: !499)
!530 = !DILocation(line: 183, column: 25, scope: !499)
!531 = !DILocation(line: 183, column: 5, scope: !499)
!532 = !DILocation(line: 185, column: 14, scope: !499)
!533 = !DILocation(line: 185, column: 5, scope: !499)
!534 = !DILocation(line: 186, column: 1, scope: !499)
!535 = distinct !DISubprogram(name: "nn_btcp_create", scope: !21, file: !21, line: 95, type: !536, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !488)
!536 = !DISubroutineType(types: !537)
!537 = !{!33, !34, !538}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!539 = !DILocalVariable(name: "hint", arg: 1, scope: !535, file: !21, line: 95, type: !34)
!540 = !DILocation(line: 95, column: 27, scope: !535)
!541 = !DILocalVariable(name: "epbase", arg: 2, scope: !535, file: !21, line: 95, type: !538)
!542 = !DILocation(line: 95, column: 52, scope: !535)
!543 = !DILocalVariable(name: "rc", scope: !535, file: !21, line: 97, type: !33)
!544 = !DILocation(line: 97, column: 9, scope: !535)
!545 = !DILocalVariable(name: "self", scope: !535, file: !21, line: 98, type: !19)
!546 = !DILocation(line: 98, column: 21, scope: !535)
!547 = !DILocalVariable(name: "addr", scope: !535, file: !21, line: 99, type: !548)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!550 = !DILocation(line: 99, column: 17, scope: !535)
!551 = !DILocalVariable(name: "addrlen", scope: !535, file: !21, line: 100, type: !215)
!552 = !DILocation(line: 100, column: 12, scope: !535)
!553 = !DILocalVariable(name: "end", scope: !535, file: !21, line: 101, type: !548)
!554 = !DILocation(line: 101, column: 17, scope: !535)
!555 = !DILocalVariable(name: "pos", scope: !535, file: !21, line: 102, type: !548)
!556 = !DILocation(line: 102, column: 17, scope: !535)
!557 = !DILocalVariable(name: "port", scope: !535, file: !21, line: 103, type: !33)
!558 = !DILocation(line: 103, column: 9, scope: !535)
!559 = !DILocalVariable(name: "ss", scope: !535, file: !21, line: 104, type: !560)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !225, line: 193, size: 1024, elements: !561)
!561 = !{!562, !563, !567}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !560, file: !225, line: 195, baseType: !373, size: 16)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !560, file: !225, line: 196, baseType: !564, size: 944, offset: 16)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 944, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 118)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !560, file: !225, line: 197, baseType: !174, size: 64, offset: 960)
!568 = !DILocation(line: 104, column: 29, scope: !535)
!569 = !DILocalVariable(name: "sslen", scope: !535, file: !21, line: 105, type: !215)
!570 = !DILocation(line: 105, column: 12, scope: !535)
!571 = !DILocalVariable(name: "ipv4only", scope: !535, file: !21, line: 106, type: !33)
!572 = !DILocation(line: 106, column: 9, scope: !535)
!573 = !DILocalVariable(name: "ipv4onlylen", scope: !535, file: !21, line: 107, type: !215)
!574 = !DILocation(line: 107, column: 12, scope: !535)
!575 = !DILocation(line: 110, column: 12, scope: !535)
!576 = !DILocation(line: 110, column: 10, scope: !535)
!577 = !DILocation(line: 111, column: 5, scope: !535)
!578 = !DILocation(line: 111, column: 5, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !21, line: 111, column: 5)
!580 = distinct !DILexicalBlock(scope: !535, file: !21, line: 111, column: 5)
!581 = !DILocation(line: 111, column: 5, scope: !580)
!582 = !DILocation(line: 111, column: 5, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !21, line: 111, column: 5)
!584 = !DILocation(line: 114, column: 22, scope: !535)
!585 = !DILocation(line: 114, column: 28, scope: !535)
!586 = !DILocation(line: 114, column: 59, scope: !535)
!587 = !DILocation(line: 114, column: 5, scope: !535)
!588 = !DILocation(line: 115, column: 32, scope: !535)
!589 = !DILocation(line: 115, column: 38, scope: !535)
!590 = !DILocation(line: 115, column: 12, scope: !535)
!591 = !DILocation(line: 115, column: 10, scope: !535)
!592 = !DILocation(line: 116, column: 23, scope: !535)
!593 = !DILocation(line: 116, column: 15, scope: !535)
!594 = !DILocation(line: 116, column: 13, scope: !535)
!595 = !DILocation(line: 119, column: 11, scope: !535)
!596 = !DILocation(line: 119, column: 26, scope: !535)
!597 = !DILocation(line: 119, column: 18, scope: !535)
!598 = !DILocation(line: 119, column: 16, scope: !535)
!599 = !DILocation(line: 119, column: 9, scope: !535)
!600 = !DILocation(line: 120, column: 20, scope: !535)
!601 = !DILocation(line: 120, column: 11, scope: !535)
!602 = !DILocation(line: 120, column: 9, scope: !535)
!603 = !DILocation(line: 121, column: 9, scope: !604)
!604 = distinct !DILexicalBlock(scope: !535, file: !21, line: 121, column: 9)
!605 = !DILocation(line: 121, column: 9, scope: !535)
!606 = !DILocation(line: 122, column: 26, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !21, line: 121, column: 25)
!608 = !DILocation(line: 122, column: 32, scope: !607)
!609 = !DILocation(line: 122, column: 9, scope: !607)
!610 = !DILocation(line: 123, column: 9, scope: !607)
!611 = !DILocation(line: 125, column: 5, scope: !535)
!612 = !DILocation(line: 126, column: 27, scope: !535)
!613 = !DILocation(line: 126, column: 32, scope: !535)
!614 = !DILocation(line: 126, column: 38, scope: !535)
!615 = !DILocation(line: 126, column: 36, scope: !535)
!616 = !DILocation(line: 126, column: 10, scope: !535)
!617 = !DILocation(line: 126, column: 8, scope: !535)
!618 = !DILocation(line: 127, column: 9, scope: !619)
!619 = distinct !DILexicalBlock(scope: !535, file: !21, line: 127, column: 9)
!620 = !DILocation(line: 127, column: 9, scope: !535)
!621 = !DILocation(line: 128, column: 26, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !21, line: 127, column: 27)
!623 = !DILocation(line: 128, column: 32, scope: !622)
!624 = !DILocation(line: 128, column: 9, scope: !622)
!625 = !DILocation(line: 129, column: 9, scope: !622)
!626 = !DILocation(line: 131, column: 12, scope: !535)
!627 = !DILocation(line: 131, column: 10, scope: !535)
!628 = !DILocation(line: 134, column: 17, scope: !535)
!629 = !DILocation(line: 135, column: 24, scope: !535)
!630 = !DILocation(line: 135, column: 30, scope: !535)
!631 = !DILocation(line: 135, column: 5, scope: !535)
!632 = !DILocation(line: 137, column: 5, scope: !535)
!633 = !DILocation(line: 137, column: 5, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !21, line: 137, column: 5)
!635 = distinct !DILexicalBlock(scope: !535, file: !21, line: 137, column: 5)
!636 = !DILocation(line: 137, column: 5, scope: !635)
!637 = !DILocation(line: 137, column: 5, scope: !638)
!638 = distinct !DILexicalBlock(scope: !634, file: !21, line: 137, column: 5)
!639 = !DILocation(line: 140, column: 28, scope: !535)
!640 = !DILocation(line: 140, column: 34, scope: !535)
!641 = !DILocation(line: 140, column: 40, scope: !535)
!642 = !DILocation(line: 140, column: 38, scope: !535)
!643 = !DILocation(line: 140, column: 45, scope: !535)
!644 = !DILocation(line: 140, column: 50, scope: !535)
!645 = !DILocation(line: 140, column: 10, scope: !535)
!646 = !DILocation(line: 140, column: 8, scope: !535)
!647 = !DILocation(line: 141, column: 9, scope: !648)
!648 = distinct !DILexicalBlock(scope: !535, file: !21, line: 141, column: 9)
!649 = !DILocation(line: 141, column: 9, scope: !535)
!650 = !DILocation(line: 142, column: 26, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !21, line: 141, column: 27)
!652 = !DILocation(line: 142, column: 32, scope: !651)
!653 = !DILocation(line: 142, column: 9, scope: !651)
!654 = !DILocation(line: 143, column: 9, scope: !651)
!655 = !DILocation(line: 147, column: 24, scope: !535)
!656 = !DILocation(line: 147, column: 30, scope: !535)
!657 = !DILocation(line: 148, column: 28, scope: !535)
!658 = !DILocation(line: 148, column: 34, scope: !535)
!659 = !DILocation(line: 148, column: 9, scope: !535)
!660 = !DILocation(line: 147, column: 5, scope: !535)
!661 = !DILocation(line: 149, column: 5, scope: !535)
!662 = !DILocation(line: 149, column: 11, scope: !535)
!663 = !DILocation(line: 149, column: 17, scope: !535)
!664 = !DILocation(line: 150, column: 21, scope: !535)
!665 = !DILocation(line: 150, column: 27, scope: !535)
!666 = !DILocation(line: 150, column: 54, scope: !535)
!667 = !DILocation(line: 150, column: 60, scope: !535)
!668 = !DILocation(line: 150, column: 5, scope: !535)
!669 = !DILocation(line: 151, column: 5, scope: !535)
!670 = !DILocation(line: 151, column: 11, scope: !535)
!671 = !DILocation(line: 151, column: 16, scope: !535)
!672 = !DILocation(line: 152, column: 20, scope: !535)
!673 = !DILocation(line: 152, column: 26, scope: !535)
!674 = !DILocation(line: 152, column: 5, scope: !535)
!675 = !DILocation(line: 155, column: 20, scope: !535)
!676 = !DILocation(line: 155, column: 26, scope: !535)
!677 = !DILocation(line: 155, column: 5, scope: !535)
!678 = !DILocation(line: 158, column: 16, scope: !535)
!679 = !DILocation(line: 158, column: 22, scope: !535)
!680 = !DILocation(line: 158, column: 6, scope: !535)
!681 = !DILocation(line: 158, column: 13, scope: !535)
!682 = !DILocation(line: 160, column: 5, scope: !535)
!683 = !DILocation(line: 161, column: 1, scope: !535)
!684 = distinct !DISubprogram(name: "nn_btcp_handler", scope: !21, file: !21, line: 188, type: !30, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!685 = !DILocalVariable(name: "self", arg: 1, scope: !684, file: !21, line: 188, type: !32)
!686 = !DILocation(line: 188, column: 45, scope: !684)
!687 = !DILocalVariable(name: "src", arg: 2, scope: !684, file: !21, line: 188, type: !33)
!688 = !DILocation(line: 188, column: 55, scope: !684)
!689 = !DILocalVariable(name: "type", arg: 3, scope: !684, file: !21, line: 188, type: !33)
!690 = !DILocation(line: 188, column: 64, scope: !684)
!691 = !DILocalVariable(name: "srcptr", arg: 4, scope: !684, file: !21, line: 189, type: !34)
!692 = !DILocation(line: 189, column: 11, scope: !684)
!693 = !DILocalVariable(name: "btcp", scope: !684, file: !21, line: 191, type: !19)
!694 = !DILocation(line: 191, column: 21, scope: !684)
!695 = !DILocalVariable(name: "it", scope: !684, file: !21, line: 192, type: !181)
!696 = !DILocation(line: 192, column: 26, scope: !684)
!697 = !DILocalVariable(name: "atcp", scope: !684, file: !21, line: 193, type: !263)
!698 = !DILocation(line: 193, column: 21, scope: !684)
!699 = !DILocation(line: 195, column: 12, scope: !684)
!700 = !DILocation(line: 195, column: 10, scope: !684)
!701 = !DILocation(line: 200, column: 9, scope: !702)
!702 = distinct !DILexicalBlock(scope: !684, file: !21, line: 200, column: 9)
!703 = !DILocation(line: 0, scope: !702)
!704 = !DILocation(line: 200, column: 9, scope: !684)
!705 = !DILocation(line: 201, column: 23, scope: !706)
!706 = distinct !DILexicalBlock(scope: !702, file: !21, line: 200, column: 64)
!707 = !DILocation(line: 201, column: 29, scope: !706)
!708 = !DILocation(line: 201, column: 9, scope: !706)
!709 = !DILocation(line: 202, column: 9, scope: !706)
!710 = !DILocation(line: 202, column: 15, scope: !706)
!711 = !DILocation(line: 202, column: 21, scope: !706)
!712 = !DILocation(line: 203, column: 5, scope: !706)
!713 = !DILocation(line: 204, column: 9, scope: !714)
!714 = distinct !DILexicalBlock(scope: !684, file: !21, line: 204, column: 9)
!715 = !DILocation(line: 204, column: 9, scope: !684)
!716 = !DILocation(line: 205, column: 30, scope: !717)
!717 = distinct !DILexicalBlock(scope: !718, file: !21, line: 205, column: 13)
!718 = distinct !DILexicalBlock(scope: !714, file: !21, line: 204, column: 63)
!719 = !DILocation(line: 205, column: 36, scope: !717)
!720 = !DILocation(line: 205, column: 14, scope: !717)
!721 = !DILocation(line: 205, column: 13, scope: !718)
!722 = !DILocation(line: 206, column: 13, scope: !717)
!723 = !DILocation(line: 207, column: 23, scope: !718)
!724 = !DILocation(line: 207, column: 29, scope: !718)
!725 = !DILocation(line: 207, column: 9, scope: !718)
!726 = !DILocation(line: 208, column: 18, scope: !718)
!727 = !DILocation(line: 208, column: 24, scope: !718)
!728 = !DILocation(line: 208, column: 9, scope: !718)
!729 = !DILocation(line: 209, column: 9, scope: !718)
!730 = !DILocation(line: 209, column: 15, scope: !718)
!731 = !DILocation(line: 209, column: 20, scope: !718)
!732 = !DILocation(line: 210, column: 25, scope: !718)
!733 = !DILocation(line: 210, column: 31, scope: !718)
!734 = !DILocation(line: 210, column: 9, scope: !718)
!735 = !DILocation(line: 211, column: 9, scope: !718)
!736 = !DILocation(line: 211, column: 15, scope: !718)
!737 = !DILocation(line: 211, column: 21, scope: !718)
!738 = !DILocation(line: 212, column: 5, scope: !718)
!739 = !DILocation(line: 213, column: 9, scope: !740)
!740 = distinct !DILexicalBlock(scope: !684, file: !21, line: 213, column: 9)
!741 = !DILocation(line: 213, column: 9, scope: !684)
!742 = !DILocation(line: 214, column: 31, scope: !743)
!743 = distinct !DILexicalBlock(scope: !744, file: !21, line: 214, column: 12)
!744 = distinct !DILexicalBlock(scope: !740, file: !21, line: 213, column: 64)
!745 = !DILocation(line: 214, column: 37, scope: !743)
!746 = !DILocation(line: 214, column: 13, scope: !743)
!747 = !DILocation(line: 214, column: 12, scope: !744)
!748 = !DILocation(line: 215, column: 13, scope: !743)
!749 = !DILocation(line: 216, column: 35, scope: !750)
!750 = distinct !DILexicalBlock(scope: !744, file: !21, line: 216, column: 9)
!751 = !DILocation(line: 216, column: 41, scope: !750)
!752 = !DILocation(line: 216, column: 19, scope: !750)
!753 = !DILocation(line: 216, column: 17, scope: !750)
!754 = !DILocation(line: 216, column: 14, scope: !750)
!755 = !DILocation(line: 217, column: 15, scope: !756)
!756 = distinct !DILexicalBlock(scope: !750, file: !21, line: 216, column: 9)
!757 = !DILocation(line: 217, column: 35, scope: !756)
!758 = !DILocation(line: 217, column: 41, scope: !756)
!759 = !DILocation(line: 217, column: 21, scope: !756)
!760 = !DILocation(line: 217, column: 18, scope: !756)
!761 = !DILocation(line: 216, column: 9, scope: !750)
!762 = !DILocation(line: 219, column: 20, scope: !763)
!763 = distinct !DILexicalBlock(scope: !756, file: !21, line: 218, column: 53)
!764 = !DILocation(line: 219, column: 18, scope: !763)
!765 = !DILocation(line: 220, column: 27, scope: !763)
!766 = !DILocation(line: 220, column: 13, scope: !763)
!767 = !DILocation(line: 221, column: 9, scope: !763)
!768 = !DILocation(line: 218, column: 35, scope: !756)
!769 = !DILocation(line: 218, column: 41, scope: !756)
!770 = !DILocation(line: 218, column: 48, scope: !756)
!771 = !DILocation(line: 218, column: 20, scope: !756)
!772 = !DILocation(line: 218, column: 18, scope: !756)
!773 = !DILocation(line: 216, column: 9, scope: !756)
!774 = distinct !{!774, !761, !775, !776}
!775 = !DILocation(line: 221, column: 9, scope: !750)
!776 = !{!"llvm.loop.mustprogress"}
!777 = !DILocation(line: 222, column: 9, scope: !744)
!778 = !DILocation(line: 222, column: 15, scope: !744)
!779 = !DILocation(line: 222, column: 21, scope: !744)
!780 = !DILocation(line: 223, column: 9, scope: !744)
!781 = !DILocation(line: 225, column: 9, scope: !782)
!782 = distinct !DILexicalBlock(scope: !684, file: !21, line: 225, column: 9)
!783 = !DILocation(line: 225, column: 9, scope: !684)
!784 = !DILocation(line: 226, column: 9, scope: !785)
!785 = distinct !DILexicalBlock(scope: !782, file: !21, line: 225, column: 64)
!786 = !DILocation(line: 226, column: 9, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !21, line: 226, column: 9)
!788 = distinct !DILexicalBlock(scope: !785, file: !21, line: 226, column: 9)
!789 = !DILocation(line: 0, scope: !787)
!790 = !DILocation(line: 226, column: 9, scope: !788)
!791 = !DILocation(line: 226, column: 9, scope: !792)
!792 = distinct !DILexicalBlock(scope: !787, file: !21, line: 226, column: 9)
!793 = !DILocation(line: 227, column: 35, scope: !785)
!794 = !DILocation(line: 227, column: 14, scope: !785)
!795 = !DILocation(line: 228, column: 25, scope: !785)
!796 = !DILocation(line: 228, column: 31, scope: !785)
!797 = !DILocation(line: 228, column: 39, scope: !785)
!798 = !DILocation(line: 228, column: 45, scope: !785)
!799 = !DILocation(line: 228, column: 9, scope: !785)
!800 = !DILocation(line: 229, column: 23, scope: !785)
!801 = !DILocation(line: 229, column: 9, scope: !785)
!802 = !DILocation(line: 230, column: 18, scope: !785)
!803 = !DILocation(line: 230, column: 9, scope: !785)
!804 = !DILabel(scope: !785, name: "atcps_stopping", file: !21, line: 234)
!805 = !DILocation(line: 234, column: 1, scope: !785)
!806 = !DILocation(line: 235, column: 29, scope: !807)
!807 = distinct !DILexicalBlock(scope: !785, file: !21, line: 235, column: 13)
!808 = !DILocation(line: 235, column: 35, scope: !807)
!809 = !DILocation(line: 235, column: 13, scope: !807)
!810 = !DILocation(line: 235, column: 13, scope: !785)
!811 = !DILocation(line: 236, column: 13, scope: !812)
!812 = distinct !DILexicalBlock(scope: !807, file: !21, line: 235, column: 43)
!813 = !DILocation(line: 236, column: 19, scope: !812)
!814 = !DILocation(line: 236, column: 25, scope: !812)
!815 = !DILocation(line: 237, column: 38, scope: !812)
!816 = !DILocation(line: 237, column: 44, scope: !812)
!817 = !DILocation(line: 237, column: 13, scope: !812)
!818 = !DILocation(line: 238, column: 33, scope: !812)
!819 = !DILocation(line: 238, column: 39, scope: !812)
!820 = !DILocation(line: 238, column: 13, scope: !812)
!821 = !DILocation(line: 239, column: 13, scope: !812)
!822 = !DILocation(line: 242, column: 9, scope: !785)
!823 = !DILocation(line: 245, column: 13, scope: !684)
!824 = !DILocation(line: 245, column: 19, scope: !684)
!825 = !DILocation(line: 245, column: 5, scope: !684)
!826 = !DILocation(line: 251, column: 17, scope: !827)
!827 = distinct !DILexicalBlock(scope: !684, file: !21, line: 245, column: 26)
!828 = !DILocation(line: 251, column: 9, scope: !827)
!829 = !DILocation(line: 254, column: 21, scope: !830)
!830 = distinct !DILexicalBlock(scope: !827, file: !21, line: 251, column: 22)
!831 = !DILocation(line: 254, column: 13, scope: !830)
!832 = !DILocation(line: 256, column: 42, scope: !833)
!833 = distinct !DILexicalBlock(scope: !830, file: !21, line: 254, column: 27)
!834 = !DILocation(line: 256, column: 17, scope: !833)
!835 = !DILocation(line: 257, column: 42, scope: !833)
!836 = !DILocation(line: 257, column: 17, scope: !833)
!837 = !DILocation(line: 258, column: 17, scope: !833)
!838 = !DILocation(line: 258, column: 23, scope: !833)
!839 = !DILocation(line: 258, column: 29, scope: !833)
!840 = !DILocation(line: 259, column: 17, scope: !833)
!841 = !DILocation(line: 261, column: 17, scope: !833)
!842 = !DILocation(line: 261, column: 17, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !21, line: 261, column: 17)
!844 = distinct !DILexicalBlock(scope: !845, file: !21, line: 261, column: 17)
!845 = distinct !DILexicalBlock(scope: !833, file: !21, line: 261, column: 17)
!846 = !DILocation(line: 262, column: 13, scope: !833)
!847 = !DILocation(line: 265, column: 13, scope: !830)
!848 = !DILocation(line: 265, column: 13, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !21, line: 265, column: 13)
!850 = distinct !DILexicalBlock(scope: !851, file: !21, line: 265, column: 13)
!851 = distinct !DILexicalBlock(scope: !830, file: !21, line: 265, column: 13)
!852 = !DILocation(line: 266, column: 9, scope: !830)
!853 = !DILocation(line: 273, column: 13, scope: !854)
!854 = distinct !DILexicalBlock(scope: !827, file: !21, line: 273, column: 13)
!855 = !DILocation(line: 273, column: 23, scope: !854)
!856 = !DILocation(line: 273, column: 29, scope: !854)
!857 = !DILocation(line: 273, column: 20, scope: !854)
!858 = !DILocation(line: 273, column: 13, scope: !827)
!859 = !DILocation(line: 274, column: 21, scope: !860)
!860 = distinct !DILexicalBlock(scope: !854, file: !21, line: 273, column: 35)
!861 = !DILocation(line: 274, column: 13, scope: !860)
!862 = !DILocation(line: 279, column: 34, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !21, line: 274, column: 27)
!864 = !DILocation(line: 279, column: 40, scope: !863)
!865 = !DILocation(line: 279, column: 48, scope: !863)
!866 = !DILocation(line: 279, column: 54, scope: !863)
!867 = !DILocation(line: 279, column: 60, scope: !863)
!868 = !DILocation(line: 280, column: 35, scope: !863)
!869 = !DILocation(line: 280, column: 41, scope: !863)
!870 = !DILocation(line: 280, column: 21, scope: !863)
!871 = !DILocation(line: 279, column: 17, scope: !863)
!872 = !DILocation(line: 281, column: 17, scope: !863)
!873 = !DILocation(line: 281, column: 23, scope: !863)
!874 = !DILocation(line: 281, column: 28, scope: !863)
!875 = !DILocation(line: 284, column: 42, scope: !863)
!876 = !DILocation(line: 284, column: 17, scope: !863)
!877 = !DILocation(line: 286, column: 17, scope: !863)
!878 = !DILocation(line: 289, column: 17, scope: !863)
!879 = !DILocation(line: 289, column: 17, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !21, line: 289, column: 17)
!881 = distinct !DILexicalBlock(scope: !882, file: !21, line: 289, column: 17)
!882 = distinct !DILexicalBlock(scope: !863, file: !21, line: 289, column: 17)
!883 = !DILocation(line: 290, column: 13, scope: !863)
!884 = !DILocation(line: 291, column: 9, scope: !860)
!885 = !DILocation(line: 295, column: 9, scope: !827)
!886 = !DILocation(line: 295, column: 9, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !21, line: 295, column: 9)
!888 = distinct !DILexicalBlock(scope: !827, file: !21, line: 295, column: 9)
!889 = !DILocation(line: 295, column: 9, scope: !888)
!890 = !DILocation(line: 295, column: 9, scope: !891)
!891 = distinct !DILexicalBlock(scope: !887, file: !21, line: 295, column: 9)
!892 = !DILocation(line: 296, column: 34, scope: !827)
!893 = !DILocation(line: 296, column: 14, scope: !827)
!894 = !DILocation(line: 297, column: 17, scope: !827)
!895 = !DILocation(line: 297, column: 9, scope: !827)
!896 = !DILocation(line: 299, column: 27, scope: !897)
!897 = distinct !DILexicalBlock(scope: !827, file: !21, line: 297, column: 23)
!898 = !DILocation(line: 299, column: 13, scope: !897)
!899 = !DILocation(line: 300, column: 13, scope: !897)
!900 = !DILocation(line: 302, column: 29, scope: !897)
!901 = !DILocation(line: 302, column: 35, scope: !897)
!902 = !DILocation(line: 302, column: 43, scope: !897)
!903 = !DILocation(line: 302, column: 49, scope: !897)
!904 = !DILocation(line: 302, column: 13, scope: !897)
!905 = !DILocation(line: 303, column: 27, scope: !897)
!906 = !DILocation(line: 303, column: 13, scope: !897)
!907 = !DILocation(line: 304, column: 22, scope: !897)
!908 = !DILocation(line: 304, column: 13, scope: !897)
!909 = !DILocation(line: 305, column: 13, scope: !897)
!910 = !DILocation(line: 307, column: 13, scope: !897)
!911 = !DILocation(line: 307, column: 13, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !21, line: 307, column: 13)
!913 = distinct !DILexicalBlock(scope: !914, file: !21, line: 307, column: 13)
!914 = distinct !DILexicalBlock(scope: !897, file: !21, line: 307, column: 13)
!915 = !DILocation(line: 308, column: 9, scope: !897)
!916 = !DILocation(line: 314, column: 9, scope: !827)
!917 = !DILocation(line: 314, column: 9, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !21, line: 314, column: 9)
!919 = distinct !DILexicalBlock(scope: !920, file: !21, line: 314, column: 9)
!920 = distinct !DILexicalBlock(scope: !827, file: !21, line: 314, column: 9)
!921 = !DILocation(line: 315, column: 5, scope: !827)
!922 = !DILocation(line: 316, column: 1, scope: !684)
!923 = distinct !DISubprogram(name: "nn_btcp_start_listening", scope: !21, file: !21, line: 322, type: !924, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !19}
!926 = !DILocalVariable(name: "self", arg: 1, scope: !923, file: !21, line: 322, type: !19)
!927 = !DILocation(line: 322, column: 54, scope: !923)
!928 = !DILocalVariable(name: "rc", scope: !923, file: !21, line: 324, type: !33)
!929 = !DILocation(line: 324, column: 9, scope: !923)
!930 = !DILocalVariable(name: "ss", scope: !923, file: !21, line: 325, type: !560)
!931 = !DILocation(line: 325, column: 29, scope: !923)
!932 = !DILocalVariable(name: "sslen", scope: !923, file: !21, line: 326, type: !215)
!933 = !DILocation(line: 326, column: 12, scope: !923)
!934 = !DILocalVariable(name: "ipv4only", scope: !923, file: !21, line: 327, type: !33)
!935 = !DILocation(line: 327, column: 9, scope: !923)
!936 = !DILocalVariable(name: "ipv4onlylen", scope: !923, file: !21, line: 328, type: !215)
!937 = !DILocation(line: 328, column: 12, scope: !923)
!938 = !DILocalVariable(name: "addr", scope: !923, file: !21, line: 329, type: !548)
!939 = !DILocation(line: 329, column: 17, scope: !923)
!940 = !DILocalVariable(name: "end", scope: !923, file: !21, line: 330, type: !548)
!941 = !DILocation(line: 330, column: 17, scope: !923)
!942 = !DILocalVariable(name: "pos", scope: !923, file: !21, line: 331, type: !548)
!943 = !DILocation(line: 331, column: 17, scope: !923)
!944 = !DILocalVariable(name: "port", scope: !923, file: !21, line: 332, type: !378)
!945 = !DILocation(line: 332, column: 14, scope: !923)
!946 = !DILocation(line: 335, column: 32, scope: !923)
!947 = !DILocation(line: 335, column: 38, scope: !923)
!948 = !DILocation(line: 335, column: 12, scope: !923)
!949 = !DILocation(line: 335, column: 10, scope: !923)
!950 = !DILocation(line: 336, column: 5, scope: !923)
!951 = !DILocation(line: 339, column: 11, scope: !923)
!952 = !DILocation(line: 339, column: 26, scope: !923)
!953 = !DILocation(line: 339, column: 18, scope: !923)
!954 = !DILocation(line: 339, column: 16, scope: !923)
!955 = !DILocation(line: 339, column: 9, scope: !923)
!956 = !DILocation(line: 340, column: 20, scope: !923)
!957 = !DILocation(line: 340, column: 11, scope: !923)
!958 = !DILocation(line: 340, column: 9, scope: !923)
!959 = !DILocation(line: 341, column: 5, scope: !923)
!960 = !DILocation(line: 341, column: 5, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !21, line: 341, column: 5)
!962 = distinct !DILexicalBlock(scope: !923, file: !21, line: 341, column: 5)
!963 = !DILocation(line: 341, column: 5, scope: !962)
!964 = !DILocation(line: 341, column: 5, scope: !965)
!965 = distinct !DILexicalBlock(scope: !961, file: !21, line: 341, column: 5)
!966 = !DILocation(line: 342, column: 5, scope: !923)
!967 = !DILocation(line: 343, column: 27, scope: !923)
!968 = !DILocation(line: 343, column: 32, scope: !923)
!969 = !DILocation(line: 343, column: 38, scope: !923)
!970 = !DILocation(line: 343, column: 36, scope: !923)
!971 = !DILocation(line: 343, column: 10, scope: !923)
!972 = !DILocation(line: 343, column: 8, scope: !923)
!973 = !DILocation(line: 344, column: 5, scope: !923)
!974 = !DILocation(line: 344, column: 5, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !21, line: 344, column: 5)
!976 = distinct !DILexicalBlock(scope: !923, file: !21, line: 344, column: 5)
!977 = !DILocation(line: 344, column: 5, scope: !976)
!978 = !DILocation(line: 344, column: 5, scope: !979)
!979 = distinct !DILexicalBlock(scope: !975, file: !21, line: 344, column: 5)
!980 = !DILocation(line: 345, column: 12, scope: !923)
!981 = !DILocation(line: 345, column: 10, scope: !923)
!982 = !DILocation(line: 348, column: 17, scope: !923)
!983 = !DILocation(line: 349, column: 24, scope: !923)
!984 = !DILocation(line: 349, column: 30, scope: !923)
!985 = !DILocation(line: 349, column: 5, scope: !923)
!986 = !DILocation(line: 351, column: 5, scope: !923)
!987 = !DILocation(line: 351, column: 5, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !21, line: 351, column: 5)
!989 = distinct !DILexicalBlock(scope: !923, file: !21, line: 351, column: 5)
!990 = !DILocation(line: 351, column: 5, scope: !989)
!991 = !DILocation(line: 351, column: 5, scope: !992)
!992 = distinct !DILexicalBlock(scope: !988, file: !21, line: 351, column: 5)
!993 = !DILocation(line: 352, column: 28, scope: !923)
!994 = !DILocation(line: 352, column: 34, scope: !923)
!995 = !DILocation(line: 352, column: 40, scope: !923)
!996 = !DILocation(line: 352, column: 38, scope: !923)
!997 = !DILocation(line: 352, column: 45, scope: !923)
!998 = !DILocation(line: 352, column: 50, scope: !923)
!999 = !DILocation(line: 352, column: 10, scope: !923)
!1000 = !DILocation(line: 352, column: 8, scope: !923)
!1001 = !DILocation(line: 353, column: 5, scope: !923)
!1002 = !DILocation(line: 353, column: 5, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !21, line: 353, column: 5)
!1004 = distinct !DILexicalBlock(scope: !923, file: !21, line: 353, column: 5)
!1005 = !DILocation(line: 353, column: 5, scope: !1004)
!1006 = !DILocation(line: 353, column: 5, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !21, line: 353, column: 5)
!1008 = !DILocation(line: 356, column: 12, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !923, file: !21, line: 356, column: 9)
!1010 = !DILocation(line: 356, column: 9, scope: !1009)
!1011 = !DILocation(line: 356, column: 22, scope: !1009)
!1012 = !DILocation(line: 356, column: 9, scope: !923)
!1013 = !DILocation(line: 357, column: 56, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !21, line: 356, column: 34)
!1015 = !DILocation(line: 357, column: 49, scope: !1014)
!1016 = !DILocation(line: 357, column: 38, scope: !1014)
!1017 = !DILocation(line: 357, column: 47, scope: !1014)
!1018 = !DILocation(line: 358, column: 15, scope: !1014)
!1019 = !DILocation(line: 359, column: 5, scope: !1014)
!1020 = !DILocation(line: 360, column: 17, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1009, file: !21, line: 360, column: 14)
!1022 = !DILocation(line: 360, column: 14, scope: !1021)
!1023 = !DILocation(line: 360, column: 27, scope: !1021)
!1024 = !DILocation(line: 360, column: 14, scope: !1009)
!1025 = !DILocation(line: 361, column: 58, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1021, file: !21, line: 360, column: 40)
!1027 = !DILocation(line: 361, column: 51, scope: !1026)
!1028 = !DILocation(line: 361, column: 39, scope: !1026)
!1029 = !DILocation(line: 361, column: 49, scope: !1026)
!1030 = !DILocation(line: 362, column: 15, scope: !1026)
!1031 = !DILocation(line: 363, column: 5, scope: !1026)
!1032 = !DILocation(line: 365, column: 9, scope: !1021)
!1033 = !DILocation(line: 365, column: 9, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !21, line: 365, column: 9)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !21, line: 365, column: 9)
!1036 = distinct !DILexicalBlock(scope: !1021, file: !21, line: 365, column: 9)
!1037 = !DILocation(line: 368, column: 27, scope: !923)
!1038 = !DILocation(line: 368, column: 33, scope: !923)
!1039 = !DILocation(line: 368, column: 43, scope: !923)
!1040 = !DILocation(line: 368, column: 40, scope: !923)
!1041 = !DILocation(line: 368, column: 10, scope: !923)
!1042 = !DILocation(line: 368, column: 8, scope: !923)
!1043 = !DILocation(line: 370, column: 5, scope: !923)
!1044 = !DILocation(line: 370, column: 5, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !21, line: 370, column: 5)
!1046 = distinct !DILexicalBlock(scope: !923, file: !21, line: 370, column: 5)
!1047 = !DILocation(line: 370, column: 5, scope: !1046)
!1048 = !DILocation(line: 370, column: 5, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !21, line: 370, column: 5)
!1050 = !DILocation(line: 371, column: 26, scope: !923)
!1051 = !DILocation(line: 371, column: 32, scope: !923)
!1052 = !DILocation(line: 371, column: 72, scope: !923)
!1053 = !DILocation(line: 371, column: 10, scope: !923)
!1054 = !DILocation(line: 371, column: 8, scope: !923)
!1055 = !DILocation(line: 372, column: 5, scope: !923)
!1056 = !DILocation(line: 372, column: 5, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !21, line: 372, column: 5)
!1058 = distinct !DILexicalBlock(scope: !923, file: !21, line: 372, column: 5)
!1059 = !DILocation(line: 372, column: 5, scope: !1058)
!1060 = !DILocation(line: 372, column: 5, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1057, file: !21, line: 372, column: 5)
!1062 = !DILocation(line: 373, column: 28, scope: !923)
!1063 = !DILocation(line: 373, column: 34, scope: !923)
!1064 = !DILocation(line: 373, column: 10, scope: !923)
!1065 = !DILocation(line: 373, column: 8, scope: !923)
!1066 = !DILocation(line: 374, column: 5, scope: !923)
!1067 = !DILocation(line: 374, column: 5, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !21, line: 374, column: 5)
!1069 = distinct !DILexicalBlock(scope: !923, file: !21, line: 374, column: 5)
!1070 = !DILocation(line: 374, column: 5, scope: !1069)
!1071 = !DILocation(line: 374, column: 5, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !21, line: 374, column: 5)
!1073 = !DILocation(line: 375, column: 1, scope: !923)
!1074 = distinct !DISubprogram(name: "nn_btcp_start_accepting", scope: !21, file: !21, line: 377, type: !924, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!1075 = !DILocalVariable(name: "self", arg: 1, scope: !1074, file: !21, line: 377, type: !19)
!1076 = !DILocation(line: 377, column: 54, scope: !1074)
!1077 = !DILocation(line: 379, column: 5, scope: !1074)
!1078 = !DILocation(line: 379, column: 5, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !21, line: 379, column: 5)
!1080 = distinct !DILexicalBlock(scope: !1074, file: !21, line: 379, column: 5)
!1081 = !DILocation(line: 379, column: 5, scope: !1080)
!1082 = !DILocation(line: 379, column: 5, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !21, line: 379, column: 5)
!1084 = !DILocation(line: 382, column: 18, scope: !1074)
!1085 = !DILocation(line: 382, column: 5, scope: !1074)
!1086 = !DILocation(line: 382, column: 11, scope: !1074)
!1087 = !DILocation(line: 382, column: 16, scope: !1074)
!1088 = !DILocation(line: 383, column: 5, scope: !1074)
!1089 = !DILocation(line: 383, column: 5, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !21, line: 383, column: 5)
!1091 = distinct !DILexicalBlock(scope: !1074, file: !21, line: 383, column: 5)
!1092 = !DILocation(line: 383, column: 5, scope: !1091)
!1093 = !DILocation(line: 383, column: 5, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !21, line: 383, column: 5)
!1095 = !DILocation(line: 384, column: 19, scope: !1074)
!1096 = !DILocation(line: 384, column: 25, scope: !1074)
!1097 = !DILocation(line: 384, column: 50, scope: !1074)
!1098 = !DILocation(line: 384, column: 56, scope: !1074)
!1099 = !DILocation(line: 384, column: 65, scope: !1074)
!1100 = !DILocation(line: 384, column: 71, scope: !1074)
!1101 = !DILocation(line: 384, column: 5, scope: !1074)
!1102 = !DILocation(line: 387, column: 20, scope: !1074)
!1103 = !DILocation(line: 387, column: 26, scope: !1074)
!1104 = !DILocation(line: 387, column: 33, scope: !1074)
!1105 = !DILocation(line: 387, column: 39, scope: !1074)
!1106 = !DILocation(line: 387, column: 5, scope: !1074)
!1107 = !DILocation(line: 388, column: 1, scope: !1074)
