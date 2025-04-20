; ModuleID = './src/transports/tcp/ctcp.c'
source_filename = "./src/transports/tcp/ctcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_epbase_vfptr = type { ptr, ptr }
%struct.nn_ctcp = type { %struct.nn_fsm, i32, %struct.nn_epbase, %struct.nn_usock, %struct.nn_backoff, %struct.nn_stcp, %struct.nn_dns, %struct.nn_dns_result }
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
%struct.nn_stcp = type { %struct.nn_fsm, i32, ptr, %struct.nn_streamhdr, %struct.nn_fsm_owner, %struct.nn_pipebase, i32, [8 x i8], %struct.nn_msg, i32, [8 x i8], %struct.nn_msg, %struct.nn_fsm_event }
%struct.nn_streamhdr = type { %struct.nn_fsm, i32, %struct.nn_timer, ptr, %struct.nn_fsm_owner, ptr, [8 x i8], %struct.nn_fsm_event }
%struct.nn_fsm_owner = type { i32, ptr }
%struct.nn_pipebase = type { %struct.nn_fsm, ptr, i8, i8, i8, ptr, ptr, %struct.nn_fsm_event, %struct.nn_fsm_event }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }
%struct.nn_dns = type { %struct.nn_fsm, i32, ptr, %struct.nn_fsm_event }
%struct.nn_dns_result = type { i32, %struct.sockaddr_storage, i64 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }

@nn_ctcp_epbase_vfptr = dso_local constant %struct.nn_epbase_vfptr { ptr @nn_ctcp_stop, ptr @nn_ctcp_destroy }, align 8, !dbg !0
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !439
@.str.1 = private unnamed_addr constant [28 x i8] c"./src/transports/tcp/ctcp.c\00", align 1, !dbg !444
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !449
@.str.3 = private unnamed_addr constant [33 x i8] c"ipv4onlylen == sizeof (ipv4only)\00", align 1, !dbg !454
@.str.4 = private unnamed_addr constant [29 x i8] c"sz == sizeof (reconnect_ivl)\00", align 1, !dbg !459
@.str.5 = private unnamed_addr constant [33 x i8] c"sz == sizeof (reconnect_ivl_max)\00", align 1, !dbg !464
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !466
@.str.7 = private unnamed_addr constant [4 x i8] c"end\00", align 1, !dbg !471
@.str.8 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !474
@.str.9 = private unnamed_addr constant [2 x i8] c"*\00", align 1, !dbg !479

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_ctcp_stop(ptr noundef %0) #0 !dbg !489 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata ptr %3, metadata !493, metadata !DIExpression()), !dbg !494
  %4 = load ptr, ptr %2, align 8, !dbg !495
  %5 = icmp ne ptr %4, null, !dbg !495
  br i1 %5, label %6, label %9, !dbg !495

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !495
  %8 = getelementptr inbounds i8, ptr %7, i64 -88, !dbg !495
  br label %10, !dbg !495

9:                                                ; preds = %1
  br label %10, !dbg !495

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !495
  store ptr %11, ptr %3, align 8, !dbg !496
  %12 = load ptr, ptr %3, align 8, !dbg !497
  %13 = getelementptr inbounds %struct.nn_ctcp, ptr %12, i32 0, i32 0, !dbg !498
  call void @nn_fsm_stop(ptr noundef %13), !dbg !499
  ret void, !dbg !500
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_ctcp_destroy(ptr noundef %0) #0 !dbg !501 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !502, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.declare(metadata ptr %3, metadata !504, metadata !DIExpression()), !dbg !505
  %4 = load ptr, ptr %2, align 8, !dbg !506
  %5 = icmp ne ptr %4, null, !dbg !506
  br i1 %5, label %6, label %9, !dbg !506

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !506
  %8 = getelementptr inbounds i8, ptr %7, i64 -88, !dbg !506
  br label %10, !dbg !506

9:                                                ; preds = %1
  br label %10, !dbg !506

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !506
  store ptr %11, ptr %3, align 8, !dbg !507
  %12 = load ptr, ptr %3, align 8, !dbg !508
  %13 = getelementptr inbounds %struct.nn_ctcp, ptr %12, i32 0, i32 6, !dbg !509
  call void @nn_dns_term(ptr noundef %13), !dbg !510
  %14 = load ptr, ptr %3, align 8, !dbg !511
  %15 = getelementptr inbounds %struct.nn_ctcp, ptr %14, i32 0, i32 5, !dbg !512
  call void @nn_stcp_term(ptr noundef %15), !dbg !513
  %16 = load ptr, ptr %3, align 8, !dbg !514
  %17 = getelementptr inbounds %struct.nn_ctcp, ptr %16, i32 0, i32 4, !dbg !515
  call void @nn_backoff_term(ptr noundef %17), !dbg !516
  %18 = load ptr, ptr %3, align 8, !dbg !517
  %19 = getelementptr inbounds %struct.nn_ctcp, ptr %18, i32 0, i32 3, !dbg !518
  call void @nn_usock_term(ptr noundef %19), !dbg !519
  %20 = load ptr, ptr %3, align 8, !dbg !520
  %21 = getelementptr inbounds %struct.nn_ctcp, ptr %20, i32 0, i32 0, !dbg !521
  call void @nn_fsm_term(ptr noundef %21), !dbg !522
  %22 = load ptr, ptr %3, align 8, !dbg !523
  %23 = getelementptr inbounds %struct.nn_ctcp, ptr %22, i32 0, i32 2, !dbg !524
  call void @nn_epbase_term(ptr noundef %23), !dbg !525
  %24 = load ptr, ptr %3, align 8, !dbg !526
  call void @nn_free(ptr noundef %24), !dbg !527
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_ctcp_create(ptr noundef %0, ptr noundef %1) #0 !dbg !529 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_storage, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !533, metadata !DIExpression()), !dbg !534
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata ptr %6, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata ptr %7, metadata !539, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.declare(metadata ptr %8, metadata !543, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.declare(metadata ptr %9, metadata !545, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata ptr %10, metadata !547, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.declare(metadata ptr %11, metadata !549, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.declare(metadata ptr %12, metadata !551, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.declare(metadata ptr %13, metadata !553, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata ptr %14, metadata !555, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata ptr %15, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.declare(metadata ptr %16, metadata !559, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.declare(metadata ptr %17, metadata !561, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.declare(metadata ptr %18, metadata !563, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.declare(metadata ptr %19, metadata !565, metadata !DIExpression()), !dbg !566
  %20 = call ptr @nn_alloc_(i64 noundef 2008), !dbg !567
  store ptr %20, ptr %16, align 8, !dbg !568
  br label %21, !dbg !569

21:                                               ; preds = %2
  %22 = load ptr, ptr %16, align 8, !dbg !570
  %23 = icmp ne ptr %22, null, !dbg !570
  %24 = xor i1 %23, true, !dbg !570
  %25 = zext i1 %24 to i32, !dbg !570
  %26 = sext i32 %25 to i64, !dbg !570
  %27 = icmp ne i64 %26, 0, !dbg !570
  br i1 %27, label %28, label %31, !dbg !573

28:                                               ; preds = %21
  %29 = load ptr, ptr @stderr, align 8, !dbg !574
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 126), !dbg !574
  call void @nn_err_abort() #8, !dbg !574
  unreachable, !dbg !574

31:                                               ; preds = %21
  br label %32, !dbg !573

32:                                               ; preds = %31
  %33 = load ptr, ptr %16, align 8, !dbg !576
  %34 = getelementptr inbounds %struct.nn_ctcp, ptr %33, i32 0, i32 2, !dbg !577
  %35 = load ptr, ptr %4, align 8, !dbg !578
  call void @nn_epbase_init(ptr noundef %34, ptr noundef @nn_ctcp_epbase_vfptr, ptr noundef %35), !dbg !579
  %36 = load ptr, ptr %16, align 8, !dbg !580
  %37 = getelementptr inbounds %struct.nn_ctcp, ptr %36, i32 0, i32 2, !dbg !581
  %38 = call ptr @nn_epbase_getaddr(ptr noundef %37), !dbg !582
  store ptr %38, ptr %7, align 8, !dbg !583
  %39 = load ptr, ptr %7, align 8, !dbg !584
  %40 = call i64 @strlen(ptr noundef %39) #9, !dbg !585
  store i64 %40, ptr %8, align 8, !dbg !586
  %41 = load ptr, ptr %7, align 8, !dbg !587
  %42 = load ptr, ptr %7, align 8, !dbg !588
  %43 = call i64 @strlen(ptr noundef %42) #9, !dbg !589
  %44 = getelementptr inbounds i8, ptr %41, i64 %43, !dbg !590
  store ptr %44, ptr %9, align 8, !dbg !591
  %45 = load ptr, ptr %7, align 8, !dbg !592
  %46 = call ptr @strrchr(ptr noundef %45, i32 noundef 58) #9, !dbg !593
  store ptr %46, ptr %10, align 8, !dbg !594
  %47 = load ptr, ptr %10, align 8, !dbg !595
  %48 = icmp ne ptr %47, null, !dbg !595
  %49 = xor i1 %48, true, !dbg !595
  %50 = zext i1 %49 to i32, !dbg !595
  %51 = sext i32 %50 to i64, !dbg !595
  %52 = icmp ne i64 %51, 0, !dbg !595
  br i1 %52, label %53, label %56, !dbg !597

53:                                               ; preds = %32
  %54 = load ptr, ptr %16, align 8, !dbg !598
  %55 = getelementptr inbounds %struct.nn_ctcp, ptr %54, i32 0, i32 2, !dbg !600
  call void @nn_epbase_term(ptr noundef %55), !dbg !601
  store i32 -22, ptr %3, align 4, !dbg !602
  br label %174, !dbg !602

56:                                               ; preds = %32
  %57 = load ptr, ptr %10, align 8, !dbg !603
  %58 = getelementptr inbounds i8, ptr %57, i32 1, !dbg !603
  store ptr %58, ptr %10, align 8, !dbg !603
  %59 = load ptr, ptr %10, align 8, !dbg !604
  %60 = load ptr, ptr %9, align 8, !dbg !605
  %61 = load ptr, ptr %10, align 8, !dbg !606
  %62 = ptrtoint ptr %60 to i64, !dbg !607
  %63 = ptrtoint ptr %61 to i64, !dbg !607
  %64 = sub i64 %62, %63, !dbg !607
  %65 = call i32 @nn_port_resolve(ptr noundef %59, i64 noundef %64), !dbg !608
  store i32 %65, ptr %6, align 4, !dbg !609
  %66 = load i32, ptr %6, align 4, !dbg !610
  %67 = icmp slt i32 %66, 0, !dbg !610
  %68 = zext i1 %67 to i32, !dbg !610
  %69 = sext i32 %68 to i64, !dbg !610
  %70 = icmp ne i64 %69, 0, !dbg !610
  br i1 %70, label %71, label %74, !dbg !612

71:                                               ; preds = %56
  %72 = load ptr, ptr %16, align 8, !dbg !613
  %73 = getelementptr inbounds %struct.nn_ctcp, ptr %72, i32 0, i32 2, !dbg !615
  call void @nn_epbase_term(ptr noundef %73), !dbg !616
  store i32 -22, ptr %3, align 4, !dbg !617
  br label %174, !dbg !617

74:                                               ; preds = %56
  %75 = load i32, ptr %6, align 4, !dbg !618
  store i32 %75, ptr %11, align 4, !dbg !619
  %76 = load ptr, ptr %7, align 8, !dbg !620
  %77 = call ptr @strchr(ptr noundef %76, i32 noundef 59) #9, !dbg !621
  store ptr %77, ptr %10, align 8, !dbg !622
  %78 = load ptr, ptr %10, align 8, !dbg !623
  %79 = icmp ne ptr %78, null, !dbg !623
  br i1 %79, label %80, label %108, !dbg !625

80:                                               ; preds = %74
  store i64 4, ptr %15, align 8, !dbg !626
  %81 = load ptr, ptr %16, align 8, !dbg !628
  %82 = getelementptr inbounds %struct.nn_ctcp, ptr %81, i32 0, i32 2, !dbg !629
  call void @nn_epbase_getopt(ptr noundef %82, i32 noundef 0, i32 noundef 14, ptr noundef %14, ptr noundef %15), !dbg !630
  br label %83, !dbg !631

83:                                               ; preds = %80
  %84 = load i64, ptr %15, align 8, !dbg !632
  %85 = icmp eq i64 %84, 4, !dbg !632
  %86 = xor i1 %85, true, !dbg !632
  %87 = zext i1 %86 to i32, !dbg !632
  %88 = sext i32 %87 to i64, !dbg !632
  %89 = icmp ne i64 %88, 0, !dbg !632
  br i1 %89, label %90, label %93, !dbg !635

90:                                               ; preds = %83
  %91 = load ptr, ptr @stderr, align 8, !dbg !636
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 156), !dbg !636
  call void @nn_err_abort() #8, !dbg !636
  unreachable, !dbg !636

93:                                               ; preds = %83
  br label %94, !dbg !635

94:                                               ; preds = %93
  %95 = load ptr, ptr %7, align 8, !dbg !638
  %96 = load ptr, ptr %10, align 8, !dbg !639
  %97 = load ptr, ptr %7, align 8, !dbg !640
  %98 = ptrtoint ptr %96 to i64, !dbg !641
  %99 = ptrtoint ptr %97 to i64, !dbg !641
  %100 = sub i64 %98, %99, !dbg !641
  %101 = call i32 @nn_iface_resolve(ptr noundef %95, i64 noundef %100, i32 noundef 1, ptr noundef %12, ptr noundef %13), !dbg !642
  store i32 %101, ptr %6, align 4, !dbg !643
  %102 = load i32, ptr %6, align 4, !dbg !644
  %103 = icmp slt i32 %102, 0, !dbg !646
  br i1 %103, label %104, label %107, !dbg !647

104:                                              ; preds = %94
  %105 = load ptr, ptr %16, align 8, !dbg !648
  %106 = getelementptr inbounds %struct.nn_ctcp, ptr %105, i32 0, i32 2, !dbg !650
  call void @nn_epbase_term(ptr noundef %106), !dbg !651
  store i32 -19, ptr %3, align 4, !dbg !652
  br label %174, !dbg !652

107:                                              ; preds = %94
  br label %108, !dbg !653

108:                                              ; preds = %107, %74
  %109 = load ptr, ptr %16, align 8, !dbg !654
  %110 = getelementptr inbounds %struct.nn_ctcp, ptr %109, i32 0, i32 0, !dbg !655
  %111 = load ptr, ptr %16, align 8, !dbg !656
  %112 = getelementptr inbounds %struct.nn_ctcp, ptr %111, i32 0, i32 2, !dbg !657
  %113 = call ptr @nn_epbase_getctx(ptr noundef %112), !dbg !658
  call void @nn_fsm_init_root(ptr noundef %110, ptr noundef @nn_ctcp_handler, ptr noundef %113), !dbg !659
  %114 = load ptr, ptr %16, align 8, !dbg !660
  %115 = getelementptr inbounds %struct.nn_ctcp, ptr %114, i32 0, i32 1, !dbg !661
  store i32 1, ptr %115, align 8, !dbg !662
  %116 = load ptr, ptr %16, align 8, !dbg !663
  %117 = getelementptr inbounds %struct.nn_ctcp, ptr %116, i32 0, i32 3, !dbg !664
  %118 = load ptr, ptr %16, align 8, !dbg !665
  %119 = getelementptr inbounds %struct.nn_ctcp, ptr %118, i32 0, i32 0, !dbg !666
  call void @nn_usock_init(ptr noundef %117, i32 noundef 1, ptr noundef %119), !dbg !667
  store i64 4, ptr %19, align 8, !dbg !668
  %120 = load ptr, ptr %16, align 8, !dbg !669
  %121 = getelementptr inbounds %struct.nn_ctcp, ptr %120, i32 0, i32 2, !dbg !670
  call void @nn_epbase_getopt(ptr noundef %121, i32 noundef 0, i32 noundef 6, ptr noundef %17, ptr noundef %19), !dbg !671
  br label %122, !dbg !672

122:                                              ; preds = %108
  %123 = load i64, ptr %19, align 8, !dbg !673
  %124 = icmp eq i64 %123, 4, !dbg !673
  %125 = xor i1 %124, true, !dbg !673
  %126 = zext i1 %125 to i32, !dbg !673
  %127 = sext i32 %126 to i64, !dbg !673
  %128 = icmp ne i64 %127, 0, !dbg !673
  br i1 %128, label %129, label %132, !dbg !676

129:                                              ; preds = %122
  %130 = load ptr, ptr @stderr, align 8, !dbg !677
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 174), !dbg !677
  call void @nn_err_abort() #8, !dbg !677
  unreachable, !dbg !677

132:                                              ; preds = %122
  br label %133, !dbg !676

133:                                              ; preds = %132
  store i64 4, ptr %19, align 8, !dbg !679
  %134 = load ptr, ptr %16, align 8, !dbg !680
  %135 = getelementptr inbounds %struct.nn_ctcp, ptr %134, i32 0, i32 2, !dbg !681
  call void @nn_epbase_getopt(ptr noundef %135, i32 noundef 0, i32 noundef 7, ptr noundef %18, ptr noundef %19), !dbg !682
  br label %136, !dbg !683

136:                                              ; preds = %133
  %137 = load i64, ptr %19, align 8, !dbg !684
  %138 = icmp eq i64 %137, 4, !dbg !684
  %139 = xor i1 %138, true, !dbg !684
  %140 = zext i1 %139 to i32, !dbg !684
  %141 = sext i32 %140 to i64, !dbg !684
  %142 = icmp ne i64 %141, 0, !dbg !684
  br i1 %142, label %143, label %146, !dbg !687

143:                                              ; preds = %136
  %144 = load ptr, ptr @stderr, align 8, !dbg !688
  %145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 178), !dbg !688
  call void @nn_err_abort() #8, !dbg !688
  unreachable, !dbg !688

146:                                              ; preds = %136
  br label %147, !dbg !687

147:                                              ; preds = %146
  %148 = load i32, ptr %18, align 4, !dbg !690
  %149 = icmp eq i32 %148, 0, !dbg !692
  br i1 %149, label %150, label %152, !dbg !693

150:                                              ; preds = %147
  %151 = load i32, ptr %17, align 4, !dbg !694
  store i32 %151, ptr %18, align 4, !dbg !695
  br label %152, !dbg !696

152:                                              ; preds = %150, %147
  %153 = load ptr, ptr %16, align 8, !dbg !697
  %154 = getelementptr inbounds %struct.nn_ctcp, ptr %153, i32 0, i32 4, !dbg !698
  %155 = load i32, ptr %17, align 4, !dbg !699
  %156 = load i32, ptr %18, align 4, !dbg !700
  %157 = load ptr, ptr %16, align 8, !dbg !701
  %158 = getelementptr inbounds %struct.nn_ctcp, ptr %157, i32 0, i32 0, !dbg !702
  call void @nn_backoff_init(ptr noundef %154, i32 noundef 2, i32 noundef %155, i32 noundef %156, ptr noundef %158), !dbg !703
  %159 = load ptr, ptr %16, align 8, !dbg !704
  %160 = getelementptr inbounds %struct.nn_ctcp, ptr %159, i32 0, i32 5, !dbg !705
  %161 = load ptr, ptr %16, align 8, !dbg !706
  %162 = getelementptr inbounds %struct.nn_ctcp, ptr %161, i32 0, i32 2, !dbg !707
  %163 = load ptr, ptr %16, align 8, !dbg !708
  %164 = getelementptr inbounds %struct.nn_ctcp, ptr %163, i32 0, i32 0, !dbg !709
  call void @nn_stcp_init(ptr noundef %160, i32 noundef 4, ptr noundef %162, ptr noundef %164), !dbg !710
  %165 = load ptr, ptr %16, align 8, !dbg !711
  %166 = getelementptr inbounds %struct.nn_ctcp, ptr %165, i32 0, i32 6, !dbg !712
  %167 = load ptr, ptr %16, align 8, !dbg !713
  %168 = getelementptr inbounds %struct.nn_ctcp, ptr %167, i32 0, i32 0, !dbg !714
  call void @nn_dns_init(ptr noundef %166, i32 noundef 3, ptr noundef %168), !dbg !715
  %169 = load ptr, ptr %16, align 8, !dbg !716
  %170 = getelementptr inbounds %struct.nn_ctcp, ptr %169, i32 0, i32 0, !dbg !717
  call void @nn_fsm_start(ptr noundef %170), !dbg !718
  %171 = load ptr, ptr %16, align 8, !dbg !719
  %172 = getelementptr inbounds %struct.nn_ctcp, ptr %171, i32 0, i32 2, !dbg !720
  %173 = load ptr, ptr %5, align 8, !dbg !721
  store ptr %172, ptr %173, align 8, !dbg !722
  store i32 0, ptr %3, align 4, !dbg !723
  br label %174, !dbg !723

174:                                              ; preds = %152, %104, %71, %53
  %175 = load i32, ptr %3, align 4, !dbg !724
  ret i32 %175, !dbg !724
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

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #4

declare void @nn_epbase_getopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @nn_iface_resolve(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @nn_fsm_init_root(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_ctcp_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !725 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !726, metadata !DIExpression()), !dbg !727
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !728, metadata !DIExpression()), !dbg !729
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !730, metadata !DIExpression()), !dbg !731
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !732, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.declare(metadata ptr %9, metadata !734, metadata !DIExpression()), !dbg !735
  %10 = load ptr, ptr %5, align 8, !dbg !736
  %11 = icmp ne ptr %10, null, !dbg !736
  br i1 %11, label %12, label %15, !dbg !736

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8, !dbg !736
  %14 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !736
  br label %16, !dbg !736

15:                                               ; preds = %4
  br label %16, !dbg !736

16:                                               ; preds = %15, %12
  %17 = phi ptr [ %14, %12 ], [ null, %15 ], !dbg !736
  store ptr %17, ptr %9, align 8, !dbg !737
  %18 = load i32, ptr %6, align 4, !dbg !738
  %19 = icmp eq i32 %18, -2, !dbg !738
  br i1 %19, label %20, label %23, !dbg !738

20:                                               ; preds = %16
  %21 = load i32, ptr %7, align 4, !dbg !738
  %22 = icmp eq i32 %21, -3, !dbg !738
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i1 [ false, %16 ], [ %22, %20 ], !dbg !740
  %25 = zext i1 %24 to i32, !dbg !738
  %26 = sext i32 %25 to i64, !dbg !738
  %27 = icmp ne i64 %26, 0, !dbg !738
  br i1 %27, label %28, label %33, !dbg !741

28:                                               ; preds = %23
  %29 = load ptr, ptr %9, align 8, !dbg !742
  %30 = getelementptr inbounds %struct.nn_ctcp, ptr %29, i32 0, i32 5, !dbg !744
  call void @nn_stcp_stop(ptr noundef %30), !dbg !745
  %31 = load ptr, ptr %9, align 8, !dbg !746
  %32 = getelementptr inbounds %struct.nn_ctcp, ptr %31, i32 0, i32 1, !dbg !747
  store i32 10, ptr %32, align 8, !dbg !748
  br label %33, !dbg !749

33:                                               ; preds = %28, %23
  %34 = load ptr, ptr %9, align 8, !dbg !750
  %35 = getelementptr inbounds %struct.nn_ctcp, ptr %34, i32 0, i32 1, !dbg !750
  %36 = load i32, ptr %35, align 8, !dbg !750
  %37 = icmp eq i32 %36, 10, !dbg !750
  %38 = zext i1 %37 to i32, !dbg !750
  %39 = sext i32 %38 to i64, !dbg !750
  %40 = icmp ne i64 %39, 0, !dbg !750
  br i1 %40, label %41, label %56, !dbg !752

41:                                               ; preds = %33
  %42 = load ptr, ptr %9, align 8, !dbg !753
  %43 = getelementptr inbounds %struct.nn_ctcp, ptr %42, i32 0, i32 5, !dbg !756
  %44 = call i32 @nn_stcp_isidle(ptr noundef %43), !dbg !757
  %45 = icmp ne i32 %44, 0, !dbg !757
  br i1 %45, label %47, label %46, !dbg !758

46:                                               ; preds = %41
  br label %301, !dbg !759

47:                                               ; preds = %41
  %48 = load ptr, ptr %9, align 8, !dbg !760
  %49 = getelementptr inbounds %struct.nn_ctcp, ptr %48, i32 0, i32 4, !dbg !761
  call void @nn_backoff_stop(ptr noundef %49), !dbg !762
  %50 = load ptr, ptr %9, align 8, !dbg !763
  %51 = getelementptr inbounds %struct.nn_ctcp, ptr %50, i32 0, i32 3, !dbg !764
  call void @nn_usock_stop(ptr noundef %51), !dbg !765
  %52 = load ptr, ptr %9, align 8, !dbg !766
  %53 = getelementptr inbounds %struct.nn_ctcp, ptr %52, i32 0, i32 6, !dbg !767
  call void @nn_dns_stop(ptr noundef %53), !dbg !768
  %54 = load ptr, ptr %9, align 8, !dbg !769
  %55 = getelementptr inbounds %struct.nn_ctcp, ptr %54, i32 0, i32 1, !dbg !770
  store i32 11, ptr %55, align 8, !dbg !771
  br label %56, !dbg !772

56:                                               ; preds = %47, %33
  %57 = load ptr, ptr %9, align 8, !dbg !773
  %58 = getelementptr inbounds %struct.nn_ctcp, ptr %57, i32 0, i32 1, !dbg !773
  %59 = load i32, ptr %58, align 8, !dbg !773
  %60 = icmp eq i32 %59, 11, !dbg !773
  %61 = zext i1 %60 to i32, !dbg !773
  %62 = sext i32 %61 to i64, !dbg !773
  %63 = icmp ne i64 %62, 0, !dbg !773
  br i1 %63, label %64, label %87, !dbg !775

64:                                               ; preds = %56
  %65 = load ptr, ptr %9, align 8, !dbg !776
  %66 = getelementptr inbounds %struct.nn_ctcp, ptr %65, i32 0, i32 4, !dbg !779
  %67 = call i32 @nn_backoff_isidle(ptr noundef %66), !dbg !780
  %68 = icmp ne i32 %67, 0, !dbg !780
  br i1 %68, label %69, label %79, !dbg !781

69:                                               ; preds = %64
  %70 = load ptr, ptr %9, align 8, !dbg !782
  %71 = getelementptr inbounds %struct.nn_ctcp, ptr %70, i32 0, i32 3, !dbg !783
  %72 = call i32 @nn_usock_isidle(ptr noundef %71), !dbg !784
  %73 = icmp ne i32 %72, 0, !dbg !784
  br i1 %73, label %74, label %79, !dbg !785

74:                                               ; preds = %69
  %75 = load ptr, ptr %9, align 8, !dbg !786
  %76 = getelementptr inbounds %struct.nn_ctcp, ptr %75, i32 0, i32 6, !dbg !787
  %77 = call i32 @nn_dns_isidle(ptr noundef %76), !dbg !788
  %78 = icmp ne i32 %77, 0, !dbg !788
  br i1 %78, label %80, label %79, !dbg !789

79:                                               ; preds = %74, %69, %64
  br label %301, !dbg !790

80:                                               ; preds = %74
  %81 = load ptr, ptr %9, align 8, !dbg !791
  %82 = getelementptr inbounds %struct.nn_ctcp, ptr %81, i32 0, i32 1, !dbg !792
  store i32 1, ptr %82, align 8, !dbg !793
  %83 = load ptr, ptr %9, align 8, !dbg !794
  %84 = getelementptr inbounds %struct.nn_ctcp, ptr %83, i32 0, i32 0, !dbg !795
  call void @nn_fsm_stopped_noevent(ptr noundef %84), !dbg !796
  %85 = load ptr, ptr %9, align 8, !dbg !797
  %86 = getelementptr inbounds %struct.nn_ctcp, ptr %85, i32 0, i32 2, !dbg !798
  call void @nn_epbase_stopped(ptr noundef %86), !dbg !799
  br label %301, !dbg !800

87:                                               ; preds = %56
  %88 = load ptr, ptr %9, align 8, !dbg !801
  %89 = getelementptr inbounds %struct.nn_ctcp, ptr %88, i32 0, i32 1, !dbg !802
  %90 = load i32, ptr %89, align 8, !dbg !802
  switch i32 %90, label %296 [
    i32 1, label %91
    i32 2, label %109
    i32 3, label %130
    i32 4, label %166
    i32 5, label %194
    i32 6, label %215
    i32 7, label %236
    i32 8, label %257
    i32 9, label %278
  ], !dbg !803

91:                                               ; preds = %87
  %92 = load i32, ptr %6, align 4, !dbg !804
  switch i32 %92, label %103 [
    i32 -2, label %93
  ], !dbg !806

93:                                               ; preds = %91
  %94 = load i32, ptr %7, align 4, !dbg !807
  switch i32 %94, label %97 [
    i32 -2, label %95
  ], !dbg !809

95:                                               ; preds = %93
  %96 = load ptr, ptr %9, align 8, !dbg !810
  call void @nn_ctcp_start_resolving(ptr noundef %96), !dbg !812
  br label %301, !dbg !813

97:                                               ; preds = %93
  br label %98, !dbg !814

98:                                               ; preds = %97
  %99 = load ptr, ptr @stderr, align 8, !dbg !815
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 268), !dbg !815
  call void @nn_err_abort() #8, !dbg !815
  unreachable, !dbg !815

101:                                              ; No predecessors!
  br label %102, !dbg !819

102:                                              ; preds = %101
  br label %103, !dbg !819

103:                                              ; preds = %91, %102
  br label %104, !dbg !820

104:                                              ; preds = %103
  %105 = load ptr, ptr @stderr, align 8, !dbg !821
  %106 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 272), !dbg !821
  call void @nn_err_abort() #8, !dbg !821
  unreachable, !dbg !821

107:                                              ; No predecessors!
  br label %108, !dbg !825

108:                                              ; preds = %107
  br label %109, !dbg !825

109:                                              ; preds = %87, %108
  %110 = load i32, ptr %6, align 4, !dbg !826
  switch i32 %110, label %124 [
    i32 3, label %111
  ], !dbg !827

111:                                              ; preds = %109
  %112 = load i32, ptr %7, align 4, !dbg !828
  switch i32 %112, label %118 [
    i32 1, label %113
  ], !dbg !830

113:                                              ; preds = %111
  %114 = load ptr, ptr %9, align 8, !dbg !831
  %115 = getelementptr inbounds %struct.nn_ctcp, ptr %114, i32 0, i32 6, !dbg !833
  call void @nn_dns_stop(ptr noundef %115), !dbg !834
  %116 = load ptr, ptr %9, align 8, !dbg !835
  %117 = getelementptr inbounds %struct.nn_ctcp, ptr %116, i32 0, i32 1, !dbg !836
  store i32 3, ptr %117, align 8, !dbg !837
  br label %301, !dbg !838

118:                                              ; preds = %111
  br label %119, !dbg !839

119:                                              ; preds = %118
  %120 = load ptr, ptr @stderr, align 8, !dbg !840
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 289), !dbg !840
  call void @nn_err_abort() #8, !dbg !840
  unreachable, !dbg !840

122:                                              ; No predecessors!
  br label %123, !dbg !844

123:                                              ; preds = %122
  br label %124, !dbg !844

124:                                              ; preds = %109, %123
  br label %125, !dbg !845

125:                                              ; preds = %124
  %126 = load ptr, ptr @stderr, align 8, !dbg !846
  %127 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 293), !dbg !846
  call void @nn_err_abort() #8, !dbg !846
  unreachable, !dbg !846

128:                                              ; No predecessors!
  br label %129, !dbg !850

129:                                              ; preds = %128
  br label %130, !dbg !850

130:                                              ; preds = %87, %129
  %131 = load i32, ptr %6, align 4, !dbg !851
  switch i32 %131, label %160 [
    i32 3, label %132
  ], !dbg !852

132:                                              ; preds = %130
  %133 = load i32, ptr %7, align 4, !dbg !853
  switch i32 %133, label %154 [
    i32 2, label %134
  ], !dbg !855

134:                                              ; preds = %132
  %135 = load ptr, ptr %9, align 8, !dbg !856
  %136 = getelementptr inbounds %struct.nn_ctcp, ptr %135, i32 0, i32 7, !dbg !859
  %137 = getelementptr inbounds %struct.nn_dns_result, ptr %136, i32 0, i32 0, !dbg !860
  %138 = load i32, ptr %137, align 8, !dbg !860
  %139 = icmp eq i32 %138, 0, !dbg !861
  br i1 %139, label %140, label %149, !dbg !862

140:                                              ; preds = %134
  %141 = load ptr, ptr %9, align 8, !dbg !863
  %142 = load ptr, ptr %9, align 8, !dbg !865
  %143 = getelementptr inbounds %struct.nn_ctcp, ptr %142, i32 0, i32 7, !dbg !866
  %144 = getelementptr inbounds %struct.nn_dns_result, ptr %143, i32 0, i32 1, !dbg !867
  %145 = load ptr, ptr %9, align 8, !dbg !868
  %146 = getelementptr inbounds %struct.nn_ctcp, ptr %145, i32 0, i32 7, !dbg !869
  %147 = getelementptr inbounds %struct.nn_dns_result, ptr %146, i32 0, i32 2, !dbg !870
  %148 = load i64, ptr %147, align 8, !dbg !870
  call void @nn_ctcp_start_connecting(ptr noundef %141, ptr noundef %144, i64 noundef %148), !dbg !871
  br label %301, !dbg !872

149:                                              ; preds = %134
  %150 = load ptr, ptr %9, align 8, !dbg !873
  %151 = getelementptr inbounds %struct.nn_ctcp, ptr %150, i32 0, i32 4, !dbg !874
  call void @nn_backoff_start(ptr noundef %151), !dbg !875
  %152 = load ptr, ptr %9, align 8, !dbg !876
  %153 = getelementptr inbounds %struct.nn_ctcp, ptr %152, i32 0, i32 1, !dbg !877
  store i32 8, ptr %153, align 8, !dbg !878
  br label %301, !dbg !879

154:                                              ; preds = %132
  br label %155, !dbg !880

155:                                              ; preds = %154
  %156 = load ptr, ptr @stderr, align 8, !dbg !881
  %157 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 315), !dbg !881
  call void @nn_err_abort() #8, !dbg !881
  unreachable, !dbg !881

158:                                              ; No predecessors!
  br label %159, !dbg !885

159:                                              ; preds = %158
  br label %160, !dbg !885

160:                                              ; preds = %130, %159
  br label %161, !dbg !886

161:                                              ; preds = %160
  %162 = load ptr, ptr @stderr, align 8, !dbg !887
  %163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 319), !dbg !887
  call void @nn_err_abort() #8, !dbg !887
  unreachable, !dbg !887

164:                                              ; No predecessors!
  br label %165, !dbg !891

165:                                              ; preds = %164
  br label %166, !dbg !891

166:                                              ; preds = %87, %165
  %167 = load i32, ptr %6, align 4, !dbg !892
  switch i32 %167, label %188 [
    i32 1, label %168
  ], !dbg !893

168:                                              ; preds = %166
  %169 = load i32, ptr %7, align 4, !dbg !894
  switch i32 %169, label %182 [
    i32 1, label %170
    i32 5, label %177
  ], !dbg !896

170:                                              ; preds = %168
  %171 = load ptr, ptr %9, align 8, !dbg !897
  %172 = getelementptr inbounds %struct.nn_ctcp, ptr %171, i32 0, i32 5, !dbg !899
  %173 = load ptr, ptr %9, align 8, !dbg !900
  %174 = getelementptr inbounds %struct.nn_ctcp, ptr %173, i32 0, i32 3, !dbg !901
  call void @nn_stcp_start(ptr noundef %172, ptr noundef %174), !dbg !902
  %175 = load ptr, ptr %9, align 8, !dbg !903
  %176 = getelementptr inbounds %struct.nn_ctcp, ptr %175, i32 0, i32 1, !dbg !904
  store i32 5, ptr %176, align 8, !dbg !905
  br label %301, !dbg !906

177:                                              ; preds = %168
  %178 = load ptr, ptr %9, align 8, !dbg !907
  %179 = getelementptr inbounds %struct.nn_ctcp, ptr %178, i32 0, i32 3, !dbg !908
  call void @nn_usock_stop(ptr noundef %179), !dbg !909
  %180 = load ptr, ptr %9, align 8, !dbg !910
  %181 = getelementptr inbounds %struct.nn_ctcp, ptr %180, i32 0, i32 1, !dbg !911
  store i32 7, ptr %181, align 8, !dbg !912
  br label %301, !dbg !913

182:                                              ; preds = %168
  br label %183, !dbg !914

183:                                              ; preds = %182
  %184 = load ptr, ptr @stderr, align 8, !dbg !915
  %185 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %184, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 340), !dbg !915
  call void @nn_err_abort() #8, !dbg !915
  unreachable, !dbg !915

186:                                              ; No predecessors!
  br label %187, !dbg !919

187:                                              ; preds = %186
  br label %188, !dbg !919

188:                                              ; preds = %166, %187
  br label %189, !dbg !920

189:                                              ; preds = %188
  %190 = load ptr, ptr @stderr, align 8, !dbg !921
  %191 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %190, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 344), !dbg !921
  call void @nn_err_abort() #8, !dbg !921
  unreachable, !dbg !921

192:                                              ; No predecessors!
  br label %193, !dbg !925

193:                                              ; preds = %192
  br label %194, !dbg !925

194:                                              ; preds = %87, %193
  %195 = load i32, ptr %6, align 4, !dbg !926
  switch i32 %195, label %209 [
    i32 4, label %196
  ], !dbg !927

196:                                              ; preds = %194
  %197 = load i32, ptr %7, align 4, !dbg !928
  switch i32 %197, label %203 [
    i32 1, label %198
  ], !dbg !930

198:                                              ; preds = %196
  %199 = load ptr, ptr %9, align 8, !dbg !931
  %200 = getelementptr inbounds %struct.nn_ctcp, ptr %199, i32 0, i32 5, !dbg !933
  call void @nn_stcp_stop(ptr noundef %200), !dbg !934
  %201 = load ptr, ptr %9, align 8, !dbg !935
  %202 = getelementptr inbounds %struct.nn_ctcp, ptr %201, i32 0, i32 1, !dbg !936
  store i32 6, ptr %202, align 8, !dbg !937
  br label %301, !dbg !938

203:                                              ; preds = %196
  br label %204, !dbg !939

204:                                              ; preds = %203
  %205 = load ptr, ptr @stderr, align 8, !dbg !940
  %206 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 361), !dbg !940
  call void @nn_err_abort() #8, !dbg !940
  unreachable, !dbg !940

207:                                              ; No predecessors!
  br label %208, !dbg !944

208:                                              ; preds = %207
  br label %209, !dbg !944

209:                                              ; preds = %194, %208
  br label %210, !dbg !945

210:                                              ; preds = %209
  %211 = load ptr, ptr @stderr, align 8, !dbg !946
  %212 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %211, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 365), !dbg !946
  call void @nn_err_abort() #8, !dbg !946
  unreachable, !dbg !946

213:                                              ; No predecessors!
  br label %214, !dbg !950

214:                                              ; preds = %213
  br label %215, !dbg !950

215:                                              ; preds = %87, %214
  %216 = load i32, ptr %6, align 4, !dbg !951
  switch i32 %216, label %230 [
    i32 4, label %217
  ], !dbg !952

217:                                              ; preds = %215
  %218 = load i32, ptr %7, align 4, !dbg !953
  switch i32 %218, label %224 [
    i32 2, label %219
  ], !dbg !955

219:                                              ; preds = %217
  %220 = load ptr, ptr %9, align 8, !dbg !956
  %221 = getelementptr inbounds %struct.nn_ctcp, ptr %220, i32 0, i32 3, !dbg !958
  call void @nn_usock_stop(ptr noundef %221), !dbg !959
  %222 = load ptr, ptr %9, align 8, !dbg !960
  %223 = getelementptr inbounds %struct.nn_ctcp, ptr %222, i32 0, i32 1, !dbg !961
  store i32 7, ptr %223, align 8, !dbg !962
  br label %301, !dbg !963

224:                                              ; preds = %217
  br label %225, !dbg !964

225:                                              ; preds = %224
  %226 = load ptr, ptr @stderr, align 8, !dbg !965
  %227 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %226, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 382), !dbg !965
  call void @nn_err_abort() #8, !dbg !965
  unreachable, !dbg !965

228:                                              ; No predecessors!
  br label %229, !dbg !969

229:                                              ; preds = %228
  br label %230, !dbg !969

230:                                              ; preds = %215, %229
  br label %231, !dbg !970

231:                                              ; preds = %230
  %232 = load ptr, ptr @stderr, align 8, !dbg !971
  %233 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 386), !dbg !971
  call void @nn_err_abort() #8, !dbg !971
  unreachable, !dbg !971

234:                                              ; No predecessors!
  br label %235, !dbg !975

235:                                              ; preds = %234
  br label %236, !dbg !975

236:                                              ; preds = %87, %235
  %237 = load i32, ptr %6, align 4, !dbg !976
  switch i32 %237, label %251 [
    i32 1, label %238
  ], !dbg !977

238:                                              ; preds = %236
  %239 = load i32, ptr %7, align 4, !dbg !978
  switch i32 %239, label %245 [
    i32 6, label %240
  ], !dbg !980

240:                                              ; preds = %238
  %241 = load ptr, ptr %9, align 8, !dbg !981
  %242 = getelementptr inbounds %struct.nn_ctcp, ptr %241, i32 0, i32 4, !dbg !983
  call void @nn_backoff_start(ptr noundef %242), !dbg !984
  %243 = load ptr, ptr %9, align 8, !dbg !985
  %244 = getelementptr inbounds %struct.nn_ctcp, ptr %243, i32 0, i32 1, !dbg !986
  store i32 8, ptr %244, align 8, !dbg !987
  br label %301, !dbg !988

245:                                              ; preds = %238
  br label %246, !dbg !989

246:                                              ; preds = %245
  %247 = load ptr, ptr @stderr, align 8, !dbg !990
  %248 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %247, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 403), !dbg !990
  call void @nn_err_abort() #8, !dbg !990
  unreachable, !dbg !990

249:                                              ; No predecessors!
  br label %250, !dbg !994

250:                                              ; preds = %249
  br label %251, !dbg !994

251:                                              ; preds = %236, %250
  br label %252, !dbg !995

252:                                              ; preds = %251
  %253 = load ptr, ptr @stderr, align 8, !dbg !996
  %254 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %253, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 407), !dbg !996
  call void @nn_err_abort() #8, !dbg !996
  unreachable, !dbg !996

255:                                              ; No predecessors!
  br label %256, !dbg !1000

256:                                              ; preds = %255
  br label %257, !dbg !1000

257:                                              ; preds = %87, %256
  %258 = load i32, ptr %6, align 4, !dbg !1001
  switch i32 %258, label %272 [
    i32 2, label %259
  ], !dbg !1002

259:                                              ; preds = %257
  %260 = load i32, ptr %7, align 4, !dbg !1003
  switch i32 %260, label %266 [
    i32 1, label %261
  ], !dbg !1005

261:                                              ; preds = %259
  %262 = load ptr, ptr %9, align 8, !dbg !1006
  %263 = getelementptr inbounds %struct.nn_ctcp, ptr %262, i32 0, i32 4, !dbg !1008
  call void @nn_backoff_stop(ptr noundef %263), !dbg !1009
  %264 = load ptr, ptr %9, align 8, !dbg !1010
  %265 = getelementptr inbounds %struct.nn_ctcp, ptr %264, i32 0, i32 1, !dbg !1011
  store i32 9, ptr %265, align 8, !dbg !1012
  br label %301, !dbg !1013

266:                                              ; preds = %259
  br label %267, !dbg !1014

267:                                              ; preds = %266
  %268 = load ptr, ptr @stderr, align 8, !dbg !1015
  %269 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %268, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 425), !dbg !1015
  call void @nn_err_abort() #8, !dbg !1015
  unreachable, !dbg !1015

270:                                              ; No predecessors!
  br label %271, !dbg !1019

271:                                              ; preds = %270
  br label %272, !dbg !1019

272:                                              ; preds = %257, %271
  br label %273, !dbg !1020

273:                                              ; preds = %272
  %274 = load ptr, ptr @stderr, align 8, !dbg !1021
  %275 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %274, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 429), !dbg !1021
  call void @nn_err_abort() #8, !dbg !1021
  unreachable, !dbg !1021

276:                                              ; No predecessors!
  br label %277, !dbg !1025

277:                                              ; preds = %276
  br label %278, !dbg !1025

278:                                              ; preds = %87, %277
  %279 = load i32, ptr %6, align 4, !dbg !1026
  switch i32 %279, label %290 [
    i32 2, label %280
  ], !dbg !1027

280:                                              ; preds = %278
  %281 = load i32, ptr %7, align 4, !dbg !1028
  switch i32 %281, label %284 [
    i32 2, label %282
  ], !dbg !1030

282:                                              ; preds = %280
  %283 = load ptr, ptr %9, align 8, !dbg !1031
  call void @nn_ctcp_start_resolving(ptr noundef %283), !dbg !1033
  br label %301, !dbg !1034

284:                                              ; preds = %280
  br label %285, !dbg !1035

285:                                              ; preds = %284
  %286 = load ptr, ptr @stderr, align 8, !dbg !1036
  %287 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %286, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 445), !dbg !1036
  call void @nn_err_abort() #8, !dbg !1036
  unreachable, !dbg !1036

288:                                              ; No predecessors!
  br label %289, !dbg !1040

289:                                              ; preds = %288
  br label %290, !dbg !1040

290:                                              ; preds = %278, %289
  br label %291, !dbg !1041

291:                                              ; preds = %290
  %292 = load ptr, ptr @stderr, align 8, !dbg !1042
  %293 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %292, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 449), !dbg !1042
  call void @nn_err_abort() #8, !dbg !1042
  unreachable, !dbg !1042

294:                                              ; No predecessors!
  br label %295, !dbg !1046

295:                                              ; preds = %294
  br label %296, !dbg !1046

296:                                              ; preds = %87, %295
  br label %297, !dbg !1047

297:                                              ; preds = %296
  %298 = load ptr, ptr @stderr, align 8, !dbg !1048
  %299 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %298, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 456), !dbg !1048
  call void @nn_err_abort() #8, !dbg !1048
  unreachable, !dbg !1048

300:                                              ; No predecessors!
  br label %301, !dbg !1052

301:                                              ; preds = %46, %79, %80, %95, %113, %140, %149, %170, %177, %198, %219, %240, %261, %282, %300
  ret void, !dbg !1053
}

declare ptr @nn_epbase_getctx(ptr noundef) #2

declare void @nn_usock_init(ptr noundef, i32 noundef, ptr noundef) #2

declare void @nn_backoff_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare void @nn_stcp_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @nn_dns_init(ptr noundef, i32 noundef, ptr noundef) #2

declare void @nn_fsm_start(ptr noundef) #2

declare void @nn_fsm_stop(ptr noundef) #2

declare void @nn_dns_term(ptr noundef) #2

declare void @nn_stcp_term(ptr noundef) #2

declare void @nn_backoff_term(ptr noundef) #2

declare void @nn_usock_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

declare void @nn_free(ptr noundef) #2

declare void @nn_stcp_stop(ptr noundef) #2

declare i32 @nn_stcp_isidle(ptr noundef) #2

declare void @nn_backoff_stop(ptr noundef) #2

declare void @nn_usock_stop(ptr noundef) #2

declare void @nn_dns_stop(ptr noundef) #2

declare i32 @nn_backoff_isidle(ptr noundef) #2

declare i32 @nn_usock_isidle(ptr noundef) #2

declare i32 @nn_dns_isidle(ptr noundef) #2

declare void @nn_fsm_stopped_noevent(ptr noundef) #2

declare void @nn_epbase_stopped(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_ctcp_start_resolving(ptr noundef %0) #0 !dbg !1054 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1057, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1059, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1065, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1067, metadata !DIExpression()), !dbg !1068
  %8 = load ptr, ptr %2, align 8, !dbg !1069
  %9 = getelementptr inbounds %struct.nn_ctcp, ptr %8, i32 0, i32 2, !dbg !1070
  %10 = call ptr @nn_epbase_getaddr(ptr noundef %9), !dbg !1071
  store ptr %10, ptr %3, align 8, !dbg !1072
  %11 = load ptr, ptr %3, align 8, !dbg !1073
  %12 = call ptr @strchr(ptr noundef %11, i32 noundef 59) #9, !dbg !1074
  store ptr %12, ptr %4, align 8, !dbg !1075
  %13 = load ptr, ptr %4, align 8, !dbg !1076
  %14 = icmp ne ptr %13, null, !dbg !1076
  br i1 %14, label %17, label %15, !dbg !1078

15:                                               ; preds = %1
  %16 = load ptr, ptr %3, align 8, !dbg !1079
  store ptr %16, ptr %4, align 8, !dbg !1080
  br label %20, !dbg !1081

17:                                               ; preds = %1
  %18 = load ptr, ptr %4, align 8, !dbg !1082
  %19 = getelementptr inbounds i8, ptr %18, i32 1, !dbg !1082
  store ptr %19, ptr %4, align 8, !dbg !1082
  br label %20

20:                                               ; preds = %17, %15
  %21 = load ptr, ptr %3, align 8, !dbg !1083
  %22 = call ptr @strrchr(ptr noundef %21, i32 noundef 58) #9, !dbg !1084
  store ptr %22, ptr %5, align 8, !dbg !1085
  br label %23, !dbg !1086

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 8, !dbg !1087
  %25 = icmp ne ptr %24, null, !dbg !1087
  %26 = xor i1 %25, true, !dbg !1087
  %27 = zext i1 %26 to i32, !dbg !1087
  %28 = sext i32 %27 to i64, !dbg !1087
  %29 = icmp ne i64 %28, 0, !dbg !1087
  br i1 %29, label %30, label %33, !dbg !1090

30:                                               ; preds = %23
  %31 = load ptr, ptr @stderr, align 8, !dbg !1091
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.2, ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 480), !dbg !1091
  call void @nn_err_abort() #8, !dbg !1091
  unreachable, !dbg !1091

33:                                               ; preds = %23
  br label %34, !dbg !1090

34:                                               ; preds = %33
  store i64 4, ptr %7, align 8, !dbg !1093
  %35 = load ptr, ptr %2, align 8, !dbg !1094
  %36 = getelementptr inbounds %struct.nn_ctcp, ptr %35, i32 0, i32 2, !dbg !1095
  call void @nn_epbase_getopt(ptr noundef %36, i32 noundef 0, i32 noundef 14, ptr noundef %6, ptr noundef %7), !dbg !1096
  br label %37, !dbg !1097

37:                                               ; preds = %34
  %38 = load i64, ptr %7, align 8, !dbg !1098
  %39 = icmp eq i64 %38, 4, !dbg !1098
  %40 = xor i1 %39, true, !dbg !1098
  %41 = zext i1 %40 to i32, !dbg !1098
  %42 = sext i32 %41 to i64, !dbg !1098
  %43 = icmp ne i64 %42, 0, !dbg !1098
  br i1 %43, label %44, label %47, !dbg !1101

44:                                               ; preds = %37
  %45 = load ptr, ptr @stderr, align 8, !dbg !1102
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 486), !dbg !1102
  call void @nn_err_abort() #8, !dbg !1102
  unreachable, !dbg !1102

47:                                               ; preds = %37
  br label %48, !dbg !1101

48:                                               ; preds = %47
  %49 = load ptr, ptr %2, align 8, !dbg !1104
  %50 = getelementptr inbounds %struct.nn_ctcp, ptr %49, i32 0, i32 6, !dbg !1105
  %51 = load ptr, ptr %4, align 8, !dbg !1106
  %52 = load ptr, ptr %5, align 8, !dbg !1107
  %53 = load ptr, ptr %4, align 8, !dbg !1108
  %54 = ptrtoint ptr %52 to i64, !dbg !1109
  %55 = ptrtoint ptr %53 to i64, !dbg !1109
  %56 = sub i64 %54, %55, !dbg !1109
  %57 = load i32, ptr %6, align 4, !dbg !1110
  %58 = load ptr, ptr %2, align 8, !dbg !1111
  %59 = getelementptr inbounds %struct.nn_ctcp, ptr %58, i32 0, i32 7, !dbg !1112
  call void @nn_dns_start(ptr noundef %50, ptr noundef %51, i64 noundef %56, i32 noundef %57, ptr noundef %59), !dbg !1113
  %60 = load ptr, ptr %2, align 8, !dbg !1114
  %61 = getelementptr inbounds %struct.nn_ctcp, ptr %60, i32 0, i32 1, !dbg !1115
  store i32 2, ptr %61, align 8, !dbg !1116
  ret void, !dbg !1117
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_ctcp_start_connecting(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1118 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr_storage, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1122, metadata !DIExpression()), !dbg !1123
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1124, metadata !DIExpression()), !dbg !1125
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1126, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1128, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1130, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1132, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1134, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1136, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1138, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1140, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1142, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1144, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1146, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1148, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1150, metadata !DIExpression()), !dbg !1151
  %19 = load ptr, ptr %4, align 8, !dbg !1152
  %20 = getelementptr inbounds %struct.nn_ctcp, ptr %19, i32 0, i32 2, !dbg !1153
  %21 = call ptr @nn_epbase_getaddr(ptr noundef %20), !dbg !1154
  store ptr %21, ptr %12, align 8, !dbg !1155
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 128, i1 false), !dbg !1156
  %22 = load ptr, ptr %12, align 8, !dbg !1157
  %23 = load ptr, ptr %12, align 8, !dbg !1158
  %24 = call i64 @strlen(ptr noundef %23) #9, !dbg !1159
  %25 = getelementptr inbounds i8, ptr %22, i64 %24, !dbg !1160
  store ptr %25, ptr %13, align 8, !dbg !1161
  %26 = load ptr, ptr %12, align 8, !dbg !1162
  %27 = call ptr @strrchr(ptr noundef %26, i32 noundef 58) #9, !dbg !1163
  store ptr %27, ptr %14, align 8, !dbg !1164
  %28 = load ptr, ptr %14, align 8, !dbg !1165
  %29 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !1166
  %30 = load ptr, ptr %13, align 8, !dbg !1167
  %31 = load ptr, ptr %14, align 8, !dbg !1168
  %32 = ptrtoint ptr %30 to i64, !dbg !1169
  %33 = ptrtoint ptr %31 to i64, !dbg !1169
  %34 = sub i64 %32, %33, !dbg !1169
  %35 = sub nsw i64 %34, 1, !dbg !1170
  %36 = call i32 @nn_port_resolve(ptr noundef %29, i64 noundef %35), !dbg !1171
  store i32 %36, ptr %7, align 4, !dbg !1172
  br label %37, !dbg !1173

37:                                               ; preds = %3
  %38 = load i32, ptr %7, align 4, !dbg !1174
  %39 = icmp sgt i32 %38, 0, !dbg !1174
  %40 = xor i1 %39, true, !dbg !1174
  %41 = zext i1 %40 to i32, !dbg !1174
  %42 = sext i32 %41 to i64, !dbg !1174
  %43 = icmp ne i64 %42, 0, !dbg !1174
  br i1 %43, label %44, label %52, !dbg !1177

44:                                               ; preds = %37
  %45 = load ptr, ptr @stderr, align 8, !dbg !1178
  %46 = load i32, ptr %7, align 4, !dbg !1178
  %47 = sub nsw i32 0, %46, !dbg !1178
  %48 = call ptr @nn_err_strerror(i32 noundef %47), !dbg !1178
  %49 = load i32, ptr %7, align 4, !dbg !1178
  %50 = sub nsw i32 0, %49, !dbg !1178
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.8, ptr noundef %48, i32 noundef %50, ptr noundef @.str.1, i32 noundef 518), !dbg !1178
  call void @nn_err_abort() #8, !dbg !1178
  unreachable, !dbg !1178

52:                                               ; preds = %37
  br label %53, !dbg !1177

53:                                               ; preds = %52
  %54 = load i32, ptr %7, align 4, !dbg !1180
  %55 = trunc i32 %54 to i16, !dbg !1180
  store i16 %55, ptr %16, align 2, !dbg !1181
  store i64 4, ptr %18, align 8, !dbg !1182
  %56 = load ptr, ptr %4, align 8, !dbg !1183
  %57 = getelementptr inbounds %struct.nn_ctcp, ptr %56, i32 0, i32 2, !dbg !1184
  call void @nn_epbase_getopt(ptr noundef %57, i32 noundef 0, i32 noundef 14, ptr noundef %17, ptr noundef %18), !dbg !1185
  br label %58, !dbg !1186

58:                                               ; preds = %53
  %59 = load i64, ptr %18, align 8, !dbg !1187
  %60 = icmp eq i64 %59, 4, !dbg !1187
  %61 = xor i1 %60, true, !dbg !1187
  %62 = zext i1 %61 to i32, !dbg !1187
  %63 = sext i32 %62 to i64, !dbg !1187
  %64 = icmp ne i64 %63, 0, !dbg !1187
  br i1 %64, label %65, label %68, !dbg !1190

65:                                               ; preds = %58
  %66 = load ptr, ptr @stderr, align 8, !dbg !1191
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 525), !dbg !1191
  call void @nn_err_abort() #8, !dbg !1191
  unreachable, !dbg !1191

68:                                               ; preds = %58
  br label %69, !dbg !1190

69:                                               ; preds = %68
  %70 = load ptr, ptr %12, align 8, !dbg !1193
  %71 = call ptr @strchr(ptr noundef %70, i32 noundef 59) #9, !dbg !1194
  store ptr %71, ptr %15, align 8, !dbg !1195
  call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 128, i1 false), !dbg !1196
  %72 = load ptr, ptr %15, align 8, !dbg !1197
  %73 = icmp ne ptr %72, null, !dbg !1197
  br i1 %73, label %74, label %83, !dbg !1199

74:                                               ; preds = %69
  %75 = load ptr, ptr %12, align 8, !dbg !1200
  %76 = load ptr, ptr %15, align 8, !dbg !1201
  %77 = load ptr, ptr %12, align 8, !dbg !1202
  %78 = ptrtoint ptr %76 to i64, !dbg !1203
  %79 = ptrtoint ptr %77 to i64, !dbg !1203
  %80 = sub i64 %78, %79, !dbg !1203
  %81 = load i32, ptr %17, align 4, !dbg !1204
  %82 = call i32 @nn_iface_resolve(ptr noundef %75, i64 noundef %80, i32 noundef %81, ptr noundef %10, ptr noundef %11), !dbg !1205
  store i32 %82, ptr %7, align 4, !dbg !1206
  br label %86, !dbg !1207

83:                                               ; preds = %69
  %84 = load i32, ptr %17, align 4, !dbg !1208
  %85 = call i32 @nn_iface_resolve(ptr noundef @.str.9, i64 noundef 1, i32 noundef %84, ptr noundef %10, ptr noundef %11), !dbg !1209
  store i32 %85, ptr %7, align 4, !dbg !1210
  br label %86

86:                                               ; preds = %83, %74
  br label %87, !dbg !1211

87:                                               ; preds = %86
  %88 = load i32, ptr %7, align 4, !dbg !1212
  %89 = icmp eq i32 %88, 0, !dbg !1212
  %90 = xor i1 %89, true, !dbg !1212
  %91 = zext i1 %90 to i32, !dbg !1212
  %92 = sext i32 %91 to i64, !dbg !1212
  %93 = icmp ne i64 %92, 0, !dbg !1212
  br i1 %93, label %94, label %102, !dbg !1215

94:                                               ; preds = %87
  %95 = load ptr, ptr @stderr, align 8, !dbg !1216
  %96 = load i32, ptr %7, align 4, !dbg !1216
  %97 = sub nsw i32 0, %96, !dbg !1216
  %98 = call ptr @nn_err_strerror(i32 noundef %97), !dbg !1216
  %99 = load i32, ptr %7, align 4, !dbg !1216
  %100 = sub nsw i32 0, %99, !dbg !1216
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.8, ptr noundef %98, i32 noundef %100, ptr noundef @.str.1, i32 noundef 535), !dbg !1216
  call void @nn_err_abort() #8, !dbg !1216
  unreachable, !dbg !1216

102:                                              ; preds = %87
  br label %103, !dbg !1215

103:                                              ; preds = %102
  %104 = load ptr, ptr %5, align 8, !dbg !1218
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %104, i64 128, i1 false), !dbg !1219
  %105 = load i64, ptr %6, align 8, !dbg !1220
  store i64 %105, ptr %9, align 8, !dbg !1221
  %106 = getelementptr inbounds %struct.sockaddr_storage, ptr %8, i32 0, i32 0, !dbg !1222
  %107 = load i16, ptr %106, align 8, !dbg !1222
  %108 = zext i16 %107 to i32, !dbg !1224
  %109 = icmp eq i32 %108, 2, !dbg !1225
  br i1 %109, label %110, label %114, !dbg !1226

110:                                              ; preds = %103
  %111 = load i16, ptr %16, align 2, !dbg !1227
  %112 = call zeroext i16 @htons(i16 noundef zeroext %111) #10, !dbg !1228
  %113 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i32 0, i32 1, !dbg !1229
  store i16 %112, ptr %113, align 2, !dbg !1230
  br label %129, !dbg !1231

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.sockaddr_storage, ptr %8, i32 0, i32 0, !dbg !1232
  %116 = load i16, ptr %115, align 8, !dbg !1232
  %117 = zext i16 %116 to i32, !dbg !1234
  %118 = icmp eq i32 %117, 10, !dbg !1235
  br i1 %118, label %119, label %123, !dbg !1236

119:                                              ; preds = %114
  %120 = load i16, ptr %16, align 2, !dbg !1237
  %121 = call zeroext i16 @htons(i16 noundef zeroext %120) #10, !dbg !1238
  %122 = getelementptr inbounds %struct.sockaddr_in6, ptr %8, i32 0, i32 1, !dbg !1239
  store i16 %121, ptr %122, align 2, !dbg !1240
  br label %128, !dbg !1241

123:                                              ; preds = %114
  br label %124, !dbg !1242

124:                                              ; preds = %123
  %125 = load ptr, ptr @stderr, align 8, !dbg !1243
  %126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef @.str.2, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 545), !dbg !1243
  call void @nn_err_abort() #8, !dbg !1243
  unreachable, !dbg !1243

127:                                              ; No predecessors!
  br label %128

128:                                              ; preds = %127, %119
  br label %129

129:                                              ; preds = %128, %110
  %130 = load ptr, ptr %4, align 8, !dbg !1247
  %131 = getelementptr inbounds %struct.nn_ctcp, ptr %130, i32 0, i32 3, !dbg !1248
  %132 = getelementptr inbounds %struct.sockaddr_storage, ptr %8, i32 0, i32 0, !dbg !1249
  %133 = load i16, ptr %132, align 8, !dbg !1249
  %134 = zext i16 %133 to i32, !dbg !1250
  %135 = call i32 @nn_usock_start(ptr noundef %131, i32 noundef %134, i32 noundef 1, i32 noundef 0), !dbg !1251
  store i32 %135, ptr %7, align 4, !dbg !1252
  %136 = load i32, ptr %7, align 4, !dbg !1253
  %137 = icmp slt i32 %136, 0, !dbg !1253
  %138 = zext i1 %137 to i32, !dbg !1253
  %139 = sext i32 %138 to i64, !dbg !1253
  %140 = icmp ne i64 %139, 0, !dbg !1253
  br i1 %140, label %141, label %146, !dbg !1255

141:                                              ; preds = %129
  %142 = load ptr, ptr %4, align 8, !dbg !1256
  %143 = getelementptr inbounds %struct.nn_ctcp, ptr %142, i32 0, i32 4, !dbg !1258
  call void @nn_backoff_start(ptr noundef %143), !dbg !1259
  %144 = load ptr, ptr %4, align 8, !dbg !1260
  %145 = getelementptr inbounds %struct.nn_ctcp, ptr %144, i32 0, i32 1, !dbg !1261
  store i32 8, ptr %145, align 8, !dbg !1262
  br label %173, !dbg !1263

146:                                              ; preds = %129
  %147 = load ptr, ptr %4, align 8, !dbg !1264
  %148 = getelementptr inbounds %struct.nn_ctcp, ptr %147, i32 0, i32 3, !dbg !1265
  %149 = load i64, ptr %11, align 8, !dbg !1266
  %150 = call i32 @nn_usock_bind(ptr noundef %148, ptr noundef %10, i64 noundef %149), !dbg !1267
  store i32 %150, ptr %7, align 4, !dbg !1268
  br label %151, !dbg !1269

151:                                              ; preds = %146
  %152 = load i32, ptr %7, align 4, !dbg !1270
  %153 = icmp eq i32 %152, 0, !dbg !1270
  %154 = xor i1 %153, true, !dbg !1270
  %155 = zext i1 %154 to i32, !dbg !1270
  %156 = sext i32 %155 to i64, !dbg !1270
  %157 = icmp ne i64 %156, 0, !dbg !1270
  br i1 %157, label %158, label %166, !dbg !1273

158:                                              ; preds = %151
  %159 = load ptr, ptr @stderr, align 8, !dbg !1274
  %160 = load i32, ptr %7, align 4, !dbg !1274
  %161 = sub nsw i32 0, %160, !dbg !1274
  %162 = call ptr @nn_err_strerror(i32 noundef %161), !dbg !1274
  %163 = load i32, ptr %7, align 4, !dbg !1274
  %164 = sub nsw i32 0, %163, !dbg !1274
  %165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef @.str.8, ptr noundef %162, i32 noundef %164, ptr noundef @.str.1, i32 noundef 557), !dbg !1274
  call void @nn_err_abort() #8, !dbg !1274
  unreachable, !dbg !1274

166:                                              ; preds = %151
  br label %167, !dbg !1273

167:                                              ; preds = %166
  %168 = load ptr, ptr %4, align 8, !dbg !1276
  %169 = getelementptr inbounds %struct.nn_ctcp, ptr %168, i32 0, i32 3, !dbg !1277
  %170 = load i64, ptr %9, align 8, !dbg !1278
  call void @nn_usock_connect(ptr noundef %169, ptr noundef %8, i64 noundef %170), !dbg !1279
  %171 = load ptr, ptr %4, align 8, !dbg !1280
  %172 = getelementptr inbounds %struct.nn_ctcp, ptr %171, i32 0, i32 1, !dbg !1281
  store i32 4, ptr %172, align 8, !dbg !1282
  br label %173, !dbg !1283

173:                                              ; preds = %167, %141
  ret void, !dbg !1283
}

declare void @nn_backoff_start(ptr noundef) #2

declare void @nn_stcp_start(ptr noundef, ptr noundef) #2

declare void @nn_dns_start(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare ptr @nn_err_strerror(i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #7

declare i32 @nn_usock_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @nn_usock_bind(ptr noundef, ptr noundef, i64 noundef) #2

declare void @nn_usock_connect(ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!481, !482, !483, !484, !485, !486, !487}
!llvm.ident = !{!488}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_ctcp_epbase_vfptr", scope: !2, file: !21, line: 95, type: !62, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !438, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/transports/tcp/ctcp.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "882c0ae565243967bf171a0634c1912f")
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
!18 = !{!19, !388, !33, !389, !407, !430}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctcp", file: !21, line: 66, size: 16064, elements: !22)
!21 = !DIFile(filename: "./src/transports/tcp/ctcp.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "882c0ae565243967bf171a0634c1912f")
!22 = !{!23, !55, !56, !74, !262, !290, !361, !387}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !20, file: !21, line: 69, baseType: !24, size: 640)
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
!55 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !20, file: !21, line: 70, baseType: !33, size: 32, offset: 640)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "epbase", scope: !20, file: !21, line: 74, baseType: !57, size: 128, offset: 704)
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
!74 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !20, file: !21, line: 77, baseType: !75, size: 4224, offset: 832)
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
!262 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !20, file: !21, line: 80, baseType: !263, size: 1792, offset: 5056)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_backoff", file: !264, line: 34, size: 1792, elements: !265)
!264 = !DIFile(filename: "./src/transports/tcp/../utils/backoff.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ce08b6a806388576feacec378191aabb")
!265 = !{!266, !287, !288, !289}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !263, file: !264, line: 35, baseType: !267, size: 1664)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timer", file: !268, line: 32, size: 1664, elements: !269)
!268 = !DIFile(filename: "./src/transports/tcp/../utils/../../aio/timer.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "36b8c8892aa99fc49b85b12a9caf893a")
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
!290 = !DIDerivedType(tag: DW_TAG_member, name: "stcp", scope: !20, file: !21, line: 84, baseType: !291, size: 6976, offset: 6848)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_stcp", file: !292, line: 41, size: 6976, elements: !293)
!292 = !DIFile(filename: "./src/transports/tcp/stcp.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "f6f65c8822f9985e9560a60ac94ab206")
!293 = !{!294, !295, !296, !297, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !291, file: !292, line: 44, baseType: !24, size: 640)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !292, line: 45, baseType: !33, size: 32, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !291, file: !292, line: 48, baseType: !261, size: 64, offset: 704)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "streamhdr", scope: !291, file: !292, line: 51, baseType: !298, size: 3008, offset: 768)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_streamhdr", file: !299, line: 41, size: 3008, elements: !300)
!299 = !DIFile(filename: "./src/transports/tcp/../utils/streamhdr.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "7d060aeed02236eba444409cfc4451d2")
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
!352 = !DIDerivedType(tag: DW_TAG_member, name: "usock_owner", scope: !291, file: !292, line: 54, baseType: !306, size: 128, offset: 3776)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !291, file: !292, line: 57, baseType: !312, size: 1536, offset: 3904)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !291, file: !292, line: 60, baseType: !33, size: 32, offset: 5440)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "inhdr", scope: !291, file: !292, line: 63, baseType: !348, size: 64, offset: 5472)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "inmsg", scope: !291, file: !292, line: 66, baseType: !325, size: 512, offset: 5536)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !291, file: !292, line: 69, baseType: !33, size: 32, offset: 6048)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "outhdr", scope: !291, file: !292, line: 72, baseType: !348, size: 64, offset: 6080)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "outmsg", scope: !291, file: !292, line: 75, baseType: !325, size: 512, offset: 6144)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !291, file: !292, line: 78, baseType: !43, size: 320, offset: 6656)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "dns", scope: !20, file: !21, line: 88, baseType: !362, size: 1088, offset: 13824)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_dns", file: !363, line: 29, size: 1088, elements: !364)
!363 = !DIFile(filename: "./src/transports/tcp/../utils/dns_getaddrinfo.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a015ef2cc10793d51c95bab5cc36a226")
!364 = !{!365, !366, !367, !386}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !362, file: !363, line: 30, baseType: !24, size: 640)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !362, file: !363, line: 31, baseType: !33, size: 32, offset: 640)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !362, file: !363, line: 32, baseType: !368, size: 64, offset: 704)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_dns_result", file: !370, line: 40, size: 1152, elements: !371)
!370 = !DIFile(filename: "./src/transports/tcp/../utils/dns.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "76a00e05d3a52d3969672216fa33910b")
!371 = !{!372, !373, !385}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !369, file: !370, line: 41, baseType: !33, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !369, file: !370, line: 42, baseType: !374, size: 1024, offset: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !225, line: 193, size: 1024, elements: !375)
!375 = !{!376, !380, !384}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !374, file: !225, line: 195, baseType: !377, size: 16)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !378, line: 28, baseType: !379)
!378 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!379 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !374, file: !225, line: 196, baseType: !381, size: 944, offset: 16)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 944, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 118)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !374, file: !225, line: 197, baseType: !174, size: 64, offset: 960)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "addrlen", scope: !369, file: !370, line: 43, baseType: !215, size: 64, offset: 1088)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !362, file: !363, line: 33, baseType: !43, size: 320, offset: 768)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "dns_result", scope: !20, file: !21, line: 89, baseType: !369, size: 1152, offset: 14912)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !391, line: 245, size: 128, elements: !392)
!391 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!392 = !{!393, !394, !398, !405}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !390, file: !391, line: 247, baseType: !377, size: 16)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !390, file: !391, line: 248, baseType: !395, size: 16, offset: 16)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !391, line: 123, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !171, line: 25, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !173, line: 40, baseType: !379)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !390, file: !391, line: 249, baseType: !399, size: 32, offset: 32)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !391, line: 31, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !399, file: !391, line: 33, baseType: !402, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !391, line: 30, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !171, line: 26, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !173, line: 42, baseType: !7)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !390, file: !391, line: 252, baseType: !406, size: 64, offset: 64)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 64, elements: !349)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !391, line: 260, size: 224, elements: !409)
!409 = !{!410, !411, !412, !413, !429}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !408, file: !391, line: 262, baseType: !377, size: 16)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !408, file: !391, line: 263, baseType: !395, size: 16, offset: 16)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !408, file: !391, line: 264, baseType: !403, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !408, file: !391, line: 265, baseType: !414, size: 128, offset: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !391, line: 219, size: 128, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !414, file: !391, line: 226, baseType: !417, size: 128)
!417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !391, line: 221, size: 128, elements: !418)
!418 = !{!419, !423, !425}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !417, file: !391, line: 223, baseType: !420, size: 128)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 128, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 16)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !417, file: !391, line: 224, baseType: !424, size: 128)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 128, elements: !349)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !417, file: !391, line: 225, baseType: !426, size: 128)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 128, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 4)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !408, file: !391, line: 266, baseType: !403, size: 32, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !225, line: 180, size: 128, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !431, file: !225, line: 182, baseType: !377, size: 16)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !431, file: !225, line: 183, baseType: !435, size: 112, offset: 16)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 112, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 14)
!438 = !{!0, !439, !444, !449, !454, !459, !464, !466, !471, !474, !479}
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !21, line: 126, type: !441, isLocal: true, isDefinition: true)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 184, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 23)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !21, line: 126, type: !446, isLocal: true, isDefinition: true)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 224, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 28)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !21, line: 156, type: !451, isLocal: true, isDefinition: true)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 240, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 30)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !21, line: 156, type: !456, isLocal: true, isDefinition: true)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 264, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 33)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !21, line: 174, type: !461, isLocal: true, isDefinition: true)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 232, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 29)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !21, line: 178, type: !456, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !21, line: 268, type: !468, isLocal: true, isDefinition: true)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 16, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 2)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !21, line: 480, type: !473, isLocal: true, isDefinition: true)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 32, elements: !427)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !21, line: 518, type: !476, isLocal: true, isDefinition: true)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 136, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 17)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !21, line: 534, type: !468, isLocal: true, isDefinition: true)
!481 = !{i32 7, !"Dwarf Version", i32 5}
!482 = !{i32 2, !"Debug Info Version", i32 3}
!483 = !{i32 1, !"wchar_size", i32 4}
!484 = !{i32 8, !"PIC Level", i32 2}
!485 = !{i32 7, !"PIE Level", i32 2}
!486 = !{i32 7, !"uwtable", i32 2}
!487 = !{i32 7, !"frame-pointer", i32 2}
!488 = !{!"clang version 16.0.0"}
!489 = distinct !DISubprogram(name: "nn_ctcp_stop", scope: !21, file: !21, line: 195, type: !67, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !490)
!490 = !{}
!491 = !DILocalVariable(name: "self", arg: 1, scope: !489, file: !21, line: 195, type: !69)
!492 = !DILocation(line: 195, column: 45, scope: !489)
!493 = !DILocalVariable(name: "ctcp", scope: !489, file: !21, line: 197, type: !19)
!494 = !DILocation(line: 197, column: 21, scope: !489)
!495 = !DILocation(line: 199, column: 12, scope: !489)
!496 = !DILocation(line: 199, column: 10, scope: !489)
!497 = !DILocation(line: 201, column: 19, scope: !489)
!498 = !DILocation(line: 201, column: 25, scope: !489)
!499 = !DILocation(line: 201, column: 5, scope: !489)
!500 = !DILocation(line: 202, column: 1, scope: !489)
!501 = distinct !DISubprogram(name: "nn_ctcp_destroy", scope: !21, file: !21, line: 204, type: !67, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !490)
!502 = !DILocalVariable(name: "self", arg: 1, scope: !501, file: !21, line: 204, type: !69)
!503 = !DILocation(line: 204, column: 48, scope: !501)
!504 = !DILocalVariable(name: "ctcp", scope: !501, file: !21, line: 206, type: !19)
!505 = !DILocation(line: 206, column: 21, scope: !501)
!506 = !DILocation(line: 208, column: 12, scope: !501)
!507 = !DILocation(line: 208, column: 10, scope: !501)
!508 = !DILocation(line: 210, column: 19, scope: !501)
!509 = !DILocation(line: 210, column: 25, scope: !501)
!510 = !DILocation(line: 210, column: 5, scope: !501)
!511 = !DILocation(line: 211, column: 20, scope: !501)
!512 = !DILocation(line: 211, column: 26, scope: !501)
!513 = !DILocation(line: 211, column: 5, scope: !501)
!514 = !DILocation(line: 212, column: 23, scope: !501)
!515 = !DILocation(line: 212, column: 29, scope: !501)
!516 = !DILocation(line: 212, column: 5, scope: !501)
!517 = !DILocation(line: 213, column: 21, scope: !501)
!518 = !DILocation(line: 213, column: 27, scope: !501)
!519 = !DILocation(line: 213, column: 5, scope: !501)
!520 = !DILocation(line: 214, column: 19, scope: !501)
!521 = !DILocation(line: 214, column: 25, scope: !501)
!522 = !DILocation(line: 214, column: 5, scope: !501)
!523 = !DILocation(line: 215, column: 22, scope: !501)
!524 = !DILocation(line: 215, column: 28, scope: !501)
!525 = !DILocation(line: 215, column: 5, scope: !501)
!526 = !DILocation(line: 217, column: 14, scope: !501)
!527 = !DILocation(line: 217, column: 5, scope: !501)
!528 = !DILocation(line: 218, column: 1, scope: !501)
!529 = distinct !DISubprogram(name: "nn_ctcp_create", scope: !21, file: !21, line: 107, type: !530, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !490)
!530 = !DISubroutineType(types: !531)
!531 = !{!33, !34, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!533 = !DILocalVariable(name: "hint", arg: 1, scope: !529, file: !21, line: 107, type: !34)
!534 = !DILocation(line: 107, column: 27, scope: !529)
!535 = !DILocalVariable(name: "epbase", arg: 2, scope: !529, file: !21, line: 107, type: !532)
!536 = !DILocation(line: 107, column: 52, scope: !529)
!537 = !DILocalVariable(name: "rc", scope: !529, file: !21, line: 109, type: !33)
!538 = !DILocation(line: 109, column: 9, scope: !529)
!539 = !DILocalVariable(name: "addr", scope: !529, file: !21, line: 110, type: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!542 = !DILocation(line: 110, column: 17, scope: !529)
!543 = !DILocalVariable(name: "addrlen", scope: !529, file: !21, line: 111, type: !215)
!544 = !DILocation(line: 111, column: 12, scope: !529)
!545 = !DILocalVariable(name: "end", scope: !529, file: !21, line: 112, type: !540)
!546 = !DILocation(line: 112, column: 17, scope: !529)
!547 = !DILocalVariable(name: "pos", scope: !529, file: !21, line: 113, type: !540)
!548 = !DILocation(line: 113, column: 17, scope: !529)
!549 = !DILocalVariable(name: "port", scope: !529, file: !21, line: 114, type: !33)
!550 = !DILocation(line: 114, column: 9, scope: !529)
!551 = !DILocalVariable(name: "ss", scope: !529, file: !21, line: 115, type: !374)
!552 = !DILocation(line: 115, column: 29, scope: !529)
!553 = !DILocalVariable(name: "sslen", scope: !529, file: !21, line: 116, type: !215)
!554 = !DILocation(line: 116, column: 12, scope: !529)
!555 = !DILocalVariable(name: "ipv4only", scope: !529, file: !21, line: 117, type: !33)
!556 = !DILocation(line: 117, column: 9, scope: !529)
!557 = !DILocalVariable(name: "ipv4onlylen", scope: !529, file: !21, line: 118, type: !215)
!558 = !DILocation(line: 118, column: 12, scope: !529)
!559 = !DILocalVariable(name: "self", scope: !529, file: !21, line: 119, type: !19)
!560 = !DILocation(line: 119, column: 21, scope: !529)
!561 = !DILocalVariable(name: "reconnect_ivl", scope: !529, file: !21, line: 120, type: !33)
!562 = !DILocation(line: 120, column: 9, scope: !529)
!563 = !DILocalVariable(name: "reconnect_ivl_max", scope: !529, file: !21, line: 121, type: !33)
!564 = !DILocation(line: 121, column: 9, scope: !529)
!565 = !DILocalVariable(name: "sz", scope: !529, file: !21, line: 122, type: !215)
!566 = !DILocation(line: 122, column: 12, scope: !529)
!567 = !DILocation(line: 125, column: 12, scope: !529)
!568 = !DILocation(line: 125, column: 10, scope: !529)
!569 = !DILocation(line: 126, column: 5, scope: !529)
!570 = !DILocation(line: 126, column: 5, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !21, line: 126, column: 5)
!572 = distinct !DILexicalBlock(scope: !529, file: !21, line: 126, column: 5)
!573 = !DILocation(line: 126, column: 5, scope: !572)
!574 = !DILocation(line: 126, column: 5, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !21, line: 126, column: 5)
!576 = !DILocation(line: 129, column: 22, scope: !529)
!577 = !DILocation(line: 129, column: 28, scope: !529)
!578 = !DILocation(line: 129, column: 59, scope: !529)
!579 = !DILocation(line: 129, column: 5, scope: !529)
!580 = !DILocation(line: 130, column: 32, scope: !529)
!581 = !DILocation(line: 130, column: 38, scope: !529)
!582 = !DILocation(line: 130, column: 12, scope: !529)
!583 = !DILocation(line: 130, column: 10, scope: !529)
!584 = !DILocation(line: 131, column: 23, scope: !529)
!585 = !DILocation(line: 131, column: 15, scope: !529)
!586 = !DILocation(line: 131, column: 13, scope: !529)
!587 = !DILocation(line: 134, column: 11, scope: !529)
!588 = !DILocation(line: 134, column: 26, scope: !529)
!589 = !DILocation(line: 134, column: 18, scope: !529)
!590 = !DILocation(line: 134, column: 16, scope: !529)
!591 = !DILocation(line: 134, column: 9, scope: !529)
!592 = !DILocation(line: 135, column: 20, scope: !529)
!593 = !DILocation(line: 135, column: 11, scope: !529)
!594 = !DILocation(line: 135, column: 9, scope: !529)
!595 = !DILocation(line: 136, column: 9, scope: !596)
!596 = distinct !DILexicalBlock(scope: !529, file: !21, line: 136, column: 9)
!597 = !DILocation(line: 136, column: 9, scope: !529)
!598 = !DILocation(line: 137, column: 26, scope: !599)
!599 = distinct !DILexicalBlock(scope: !596, file: !21, line: 136, column: 25)
!600 = !DILocation(line: 137, column: 32, scope: !599)
!601 = !DILocation(line: 137, column: 9, scope: !599)
!602 = !DILocation(line: 138, column: 9, scope: !599)
!603 = !DILocation(line: 140, column: 5, scope: !529)
!604 = !DILocation(line: 141, column: 27, scope: !529)
!605 = !DILocation(line: 141, column: 32, scope: !529)
!606 = !DILocation(line: 141, column: 38, scope: !529)
!607 = !DILocation(line: 141, column: 36, scope: !529)
!608 = !DILocation(line: 141, column: 10, scope: !529)
!609 = !DILocation(line: 141, column: 8, scope: !529)
!610 = !DILocation(line: 142, column: 9, scope: !611)
!611 = distinct !DILexicalBlock(scope: !529, file: !21, line: 142, column: 9)
!612 = !DILocation(line: 142, column: 9, scope: !529)
!613 = !DILocation(line: 143, column: 26, scope: !614)
!614 = distinct !DILexicalBlock(scope: !611, file: !21, line: 142, column: 27)
!615 = !DILocation(line: 143, column: 32, scope: !614)
!616 = !DILocation(line: 143, column: 9, scope: !614)
!617 = !DILocation(line: 144, column: 9, scope: !614)
!618 = !DILocation(line: 146, column: 12, scope: !529)
!619 = !DILocation(line: 146, column: 10, scope: !529)
!620 = !DILocation(line: 149, column: 19, scope: !529)
!621 = !DILocation(line: 149, column: 11, scope: !529)
!622 = !DILocation(line: 149, column: 9, scope: !529)
!623 = !DILocation(line: 150, column: 9, scope: !624)
!624 = distinct !DILexicalBlock(scope: !529, file: !21, line: 150, column: 9)
!625 = !DILocation(line: 150, column: 9, scope: !529)
!626 = !DILocation(line: 153, column: 21, scope: !627)
!627 = distinct !DILexicalBlock(scope: !624, file: !21, line: 150, column: 14)
!628 = !DILocation(line: 154, column: 28, scope: !627)
!629 = !DILocation(line: 154, column: 34, scope: !627)
!630 = !DILocation(line: 154, column: 9, scope: !627)
!631 = !DILocation(line: 156, column: 9, scope: !627)
!632 = !DILocation(line: 156, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !21, line: 156, column: 9)
!634 = distinct !DILexicalBlock(scope: !627, file: !21, line: 156, column: 9)
!635 = !DILocation(line: 156, column: 9, scope: !634)
!636 = !DILocation(line: 156, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !633, file: !21, line: 156, column: 9)
!638 = !DILocation(line: 159, column: 32, scope: !627)
!639 = !DILocation(line: 159, column: 38, scope: !627)
!640 = !DILocation(line: 159, column: 44, scope: !627)
!641 = !DILocation(line: 159, column: 42, scope: !627)
!642 = !DILocation(line: 159, column: 14, scope: !627)
!643 = !DILocation(line: 159, column: 12, scope: !627)
!644 = !DILocation(line: 160, column: 13, scope: !645)
!645 = distinct !DILexicalBlock(scope: !627, file: !21, line: 160, column: 13)
!646 = !DILocation(line: 160, column: 16, scope: !645)
!647 = !DILocation(line: 160, column: 13, scope: !627)
!648 = !DILocation(line: 161, column: 30, scope: !649)
!649 = distinct !DILexicalBlock(scope: !645, file: !21, line: 160, column: 21)
!650 = !DILocation(line: 161, column: 36, scope: !649)
!651 = !DILocation(line: 161, column: 13, scope: !649)
!652 = !DILocation(line: 162, column: 13, scope: !649)
!653 = !DILocation(line: 164, column: 5, scope: !627)
!654 = !DILocation(line: 167, column: 24, scope: !529)
!655 = !DILocation(line: 167, column: 30, scope: !529)
!656 = !DILocation(line: 168, column: 28, scope: !529)
!657 = !DILocation(line: 168, column: 34, scope: !529)
!658 = !DILocation(line: 168, column: 9, scope: !529)
!659 = !DILocation(line: 167, column: 5, scope: !529)
!660 = !DILocation(line: 169, column: 5, scope: !529)
!661 = !DILocation(line: 169, column: 11, scope: !529)
!662 = !DILocation(line: 169, column: 17, scope: !529)
!663 = !DILocation(line: 170, column: 21, scope: !529)
!664 = !DILocation(line: 170, column: 27, scope: !529)
!665 = !DILocation(line: 170, column: 54, scope: !529)
!666 = !DILocation(line: 170, column: 60, scope: !529)
!667 = !DILocation(line: 170, column: 5, scope: !529)
!668 = !DILocation(line: 171, column: 8, scope: !529)
!669 = !DILocation(line: 172, column: 24, scope: !529)
!670 = !DILocation(line: 172, column: 30, scope: !529)
!671 = !DILocation(line: 172, column: 5, scope: !529)
!672 = !DILocation(line: 174, column: 5, scope: !529)
!673 = !DILocation(line: 174, column: 5, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !21, line: 174, column: 5)
!675 = distinct !DILexicalBlock(scope: !529, file: !21, line: 174, column: 5)
!676 = !DILocation(line: 174, column: 5, scope: !675)
!677 = !DILocation(line: 174, column: 5, scope: !678)
!678 = distinct !DILexicalBlock(scope: !674, file: !21, line: 174, column: 5)
!679 = !DILocation(line: 175, column: 8, scope: !529)
!680 = !DILocation(line: 176, column: 24, scope: !529)
!681 = !DILocation(line: 176, column: 30, scope: !529)
!682 = !DILocation(line: 176, column: 5, scope: !529)
!683 = !DILocation(line: 178, column: 5, scope: !529)
!684 = !DILocation(line: 178, column: 5, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !21, line: 178, column: 5)
!686 = distinct !DILexicalBlock(scope: !529, file: !21, line: 178, column: 5)
!687 = !DILocation(line: 178, column: 5, scope: !686)
!688 = !DILocation(line: 178, column: 5, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !21, line: 178, column: 5)
!690 = !DILocation(line: 179, column: 9, scope: !691)
!691 = distinct !DILexicalBlock(scope: !529, file: !21, line: 179, column: 9)
!692 = !DILocation(line: 179, column: 27, scope: !691)
!693 = !DILocation(line: 179, column: 9, scope: !529)
!694 = !DILocation(line: 180, column: 29, scope: !691)
!695 = !DILocation(line: 180, column: 27, scope: !691)
!696 = !DILocation(line: 180, column: 9, scope: !691)
!697 = !DILocation(line: 181, column: 23, scope: !529)
!698 = !DILocation(line: 181, column: 29, scope: !529)
!699 = !DILocation(line: 182, column: 9, scope: !529)
!700 = !DILocation(line: 182, column: 24, scope: !529)
!701 = !DILocation(line: 182, column: 44, scope: !529)
!702 = !DILocation(line: 182, column: 50, scope: !529)
!703 = !DILocation(line: 181, column: 5, scope: !529)
!704 = !DILocation(line: 183, column: 20, scope: !529)
!705 = !DILocation(line: 183, column: 26, scope: !529)
!706 = !DILocation(line: 183, column: 51, scope: !529)
!707 = !DILocation(line: 183, column: 57, scope: !529)
!708 = !DILocation(line: 183, column: 66, scope: !529)
!709 = !DILocation(line: 183, column: 72, scope: !529)
!710 = !DILocation(line: 183, column: 5, scope: !529)
!711 = !DILocation(line: 184, column: 19, scope: !529)
!712 = !DILocation(line: 184, column: 25, scope: !529)
!713 = !DILocation(line: 184, column: 48, scope: !529)
!714 = !DILocation(line: 184, column: 54, scope: !529)
!715 = !DILocation(line: 184, column: 5, scope: !529)
!716 = !DILocation(line: 187, column: 20, scope: !529)
!717 = !DILocation(line: 187, column: 26, scope: !529)
!718 = !DILocation(line: 187, column: 5, scope: !529)
!719 = !DILocation(line: 190, column: 16, scope: !529)
!720 = !DILocation(line: 190, column: 22, scope: !529)
!721 = !DILocation(line: 190, column: 6, scope: !529)
!722 = !DILocation(line: 190, column: 13, scope: !529)
!723 = !DILocation(line: 192, column: 5, scope: !529)
!724 = !DILocation(line: 193, column: 1, scope: !529)
!725 = distinct !DISubprogram(name: "nn_ctcp_handler", scope: !21, file: !21, line: 220, type: !30, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !490)
!726 = !DILocalVariable(name: "self", arg: 1, scope: !725, file: !21, line: 220, type: !32)
!727 = !DILocation(line: 220, column: 45, scope: !725)
!728 = !DILocalVariable(name: "src", arg: 2, scope: !725, file: !21, line: 220, type: !33)
!729 = !DILocation(line: 220, column: 55, scope: !725)
!730 = !DILocalVariable(name: "type", arg: 3, scope: !725, file: !21, line: 220, type: !33)
!731 = !DILocation(line: 220, column: 64, scope: !725)
!732 = !DILocalVariable(name: "srcptr", arg: 4, scope: !725, file: !21, line: 221, type: !34)
!733 = !DILocation(line: 221, column: 11, scope: !725)
!734 = !DILocalVariable(name: "ctcp", scope: !725, file: !21, line: 223, type: !19)
!735 = !DILocation(line: 223, column: 21, scope: !725)
!736 = !DILocation(line: 225, column: 12, scope: !725)
!737 = !DILocation(line: 225, column: 10, scope: !725)
!738 = !DILocation(line: 230, column: 9, scope: !739)
!739 = distinct !DILexicalBlock(scope: !725, file: !21, line: 230, column: 9)
!740 = !DILocation(line: 0, scope: !739)
!741 = !DILocation(line: 230, column: 9, scope: !725)
!742 = !DILocation(line: 231, column: 24, scope: !743)
!743 = distinct !DILexicalBlock(scope: !739, file: !21, line: 230, column: 64)
!744 = !DILocation(line: 231, column: 30, scope: !743)
!745 = !DILocation(line: 231, column: 9, scope: !743)
!746 = !DILocation(line: 232, column: 9, scope: !743)
!747 = !DILocation(line: 232, column: 15, scope: !743)
!748 = !DILocation(line: 232, column: 21, scope: !743)
!749 = !DILocation(line: 233, column: 5, scope: !743)
!750 = !DILocation(line: 234, column: 9, scope: !751)
!751 = distinct !DILexicalBlock(scope: !725, file: !21, line: 234, column: 9)
!752 = !DILocation(line: 234, column: 9, scope: !725)
!753 = !DILocation(line: 235, column: 31, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !21, line: 235, column: 13)
!755 = distinct !DILexicalBlock(scope: !751, file: !21, line: 234, column: 69)
!756 = !DILocation(line: 235, column: 37, scope: !754)
!757 = !DILocation(line: 235, column: 14, scope: !754)
!758 = !DILocation(line: 235, column: 13, scope: !755)
!759 = !DILocation(line: 236, column: 13, scope: !754)
!760 = !DILocation(line: 237, column: 27, scope: !755)
!761 = !DILocation(line: 237, column: 33, scope: !755)
!762 = !DILocation(line: 237, column: 9, scope: !755)
!763 = !DILocation(line: 238, column: 25, scope: !755)
!764 = !DILocation(line: 238, column: 31, scope: !755)
!765 = !DILocation(line: 238, column: 9, scope: !755)
!766 = !DILocation(line: 239, column: 23, scope: !755)
!767 = !DILocation(line: 239, column: 29, scope: !755)
!768 = !DILocation(line: 239, column: 9, scope: !755)
!769 = !DILocation(line: 240, column: 9, scope: !755)
!770 = !DILocation(line: 240, column: 15, scope: !755)
!771 = !DILocation(line: 240, column: 21, scope: !755)
!772 = !DILocation(line: 241, column: 5, scope: !755)
!773 = !DILocation(line: 242, column: 9, scope: !774)
!774 = distinct !DILexicalBlock(scope: !725, file: !21, line: 242, column: 9)
!775 = !DILocation(line: 242, column: 9, scope: !725)
!776 = !DILocation(line: 243, column: 34, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !21, line: 243, column: 13)
!778 = distinct !DILexicalBlock(scope: !774, file: !21, line: 242, column: 58)
!779 = !DILocation(line: 243, column: 40, scope: !777)
!780 = !DILocation(line: 243, column: 14, scope: !777)
!781 = !DILocation(line: 243, column: 47, scope: !777)
!782 = !DILocation(line: 244, column: 34, scope: !777)
!783 = !DILocation(line: 244, column: 40, scope: !777)
!784 = !DILocation(line: 244, column: 16, scope: !777)
!785 = !DILocation(line: 244, column: 47, scope: !777)
!786 = !DILocation(line: 245, column: 32, scope: !777)
!787 = !DILocation(line: 245, column: 38, scope: !777)
!788 = !DILocation(line: 245, column: 16, scope: !777)
!789 = !DILocation(line: 243, column: 13, scope: !778)
!790 = !DILocation(line: 246, column: 13, scope: !777)
!791 = !DILocation(line: 247, column: 9, scope: !778)
!792 = !DILocation(line: 247, column: 15, scope: !778)
!793 = !DILocation(line: 247, column: 21, scope: !778)
!794 = !DILocation(line: 248, column: 34, scope: !778)
!795 = !DILocation(line: 248, column: 40, scope: !778)
!796 = !DILocation(line: 248, column: 9, scope: !778)
!797 = !DILocation(line: 249, column: 29, scope: !778)
!798 = !DILocation(line: 249, column: 35, scope: !778)
!799 = !DILocation(line: 249, column: 9, scope: !778)
!800 = !DILocation(line: 250, column: 9, scope: !778)
!801 = !DILocation(line: 253, column: 13, scope: !725)
!802 = !DILocation(line: 253, column: 19, scope: !725)
!803 = !DILocation(line: 253, column: 5, scope: !725)
!804 = !DILocation(line: 260, column: 17, scope: !805)
!805 = distinct !DILexicalBlock(scope: !725, file: !21, line: 253, column: 26)
!806 = !DILocation(line: 260, column: 9, scope: !805)
!807 = !DILocation(line: 263, column: 21, scope: !808)
!808 = distinct !DILexicalBlock(scope: !805, file: !21, line: 260, column: 22)
!809 = !DILocation(line: 263, column: 13, scope: !808)
!810 = !DILocation(line: 265, column: 42, scope: !811)
!811 = distinct !DILexicalBlock(scope: !808, file: !21, line: 263, column: 27)
!812 = !DILocation(line: 265, column: 17, scope: !811)
!813 = !DILocation(line: 266, column: 17, scope: !811)
!814 = !DILocation(line: 268, column: 17, scope: !811)
!815 = !DILocation(line: 268, column: 17, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !21, line: 268, column: 17)
!817 = distinct !DILexicalBlock(scope: !818, file: !21, line: 268, column: 17)
!818 = distinct !DILexicalBlock(scope: !811, file: !21, line: 268, column: 17)
!819 = !DILocation(line: 269, column: 13, scope: !811)
!820 = !DILocation(line: 272, column: 13, scope: !808)
!821 = !DILocation(line: 272, column: 13, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !21, line: 272, column: 13)
!823 = distinct !DILexicalBlock(scope: !824, file: !21, line: 272, column: 13)
!824 = distinct !DILexicalBlock(scope: !808, file: !21, line: 272, column: 13)
!825 = !DILocation(line: 273, column: 9, scope: !808)
!826 = !DILocation(line: 280, column: 17, scope: !805)
!827 = !DILocation(line: 280, column: 9, scope: !805)
!828 = !DILocation(line: 283, column: 21, scope: !829)
!829 = distinct !DILexicalBlock(scope: !805, file: !21, line: 280, column: 22)
!830 = !DILocation(line: 283, column: 13, scope: !829)
!831 = !DILocation(line: 285, column: 31, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !21, line: 283, column: 27)
!833 = !DILocation(line: 285, column: 37, scope: !832)
!834 = !DILocation(line: 285, column: 17, scope: !832)
!835 = !DILocation(line: 286, column: 17, scope: !832)
!836 = !DILocation(line: 286, column: 23, scope: !832)
!837 = !DILocation(line: 286, column: 29, scope: !832)
!838 = !DILocation(line: 287, column: 17, scope: !832)
!839 = !DILocation(line: 289, column: 17, scope: !832)
!840 = !DILocation(line: 289, column: 17, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !21, line: 289, column: 17)
!842 = distinct !DILexicalBlock(scope: !843, file: !21, line: 289, column: 17)
!843 = distinct !DILexicalBlock(scope: !832, file: !21, line: 289, column: 17)
!844 = !DILocation(line: 290, column: 13, scope: !832)
!845 = !DILocation(line: 293, column: 13, scope: !829)
!846 = !DILocation(line: 293, column: 13, scope: !847)
!847 = distinct !DILexicalBlock(scope: !848, file: !21, line: 293, column: 13)
!848 = distinct !DILexicalBlock(scope: !849, file: !21, line: 293, column: 13)
!849 = distinct !DILexicalBlock(scope: !829, file: !21, line: 293, column: 13)
!850 = !DILocation(line: 294, column: 9, scope: !829)
!851 = !DILocation(line: 301, column: 17, scope: !805)
!852 = !DILocation(line: 301, column: 9, scope: !805)
!853 = !DILocation(line: 304, column: 21, scope: !854)
!854 = distinct !DILexicalBlock(scope: !805, file: !21, line: 301, column: 22)
!855 = !DILocation(line: 304, column: 13, scope: !854)
!856 = !DILocation(line: 306, column: 21, scope: !857)
!857 = distinct !DILexicalBlock(scope: !858, file: !21, line: 306, column: 21)
!858 = distinct !DILexicalBlock(scope: !854, file: !21, line: 304, column: 27)
!859 = !DILocation(line: 306, column: 27, scope: !857)
!860 = !DILocation(line: 306, column: 38, scope: !857)
!861 = !DILocation(line: 306, column: 44, scope: !857)
!862 = !DILocation(line: 306, column: 21, scope: !858)
!863 = !DILocation(line: 307, column: 47, scope: !864)
!864 = distinct !DILexicalBlock(scope: !857, file: !21, line: 306, column: 50)
!865 = !DILocation(line: 307, column: 54, scope: !864)
!866 = !DILocation(line: 307, column: 60, scope: !864)
!867 = !DILocation(line: 307, column: 71, scope: !864)
!868 = !DILocation(line: 308, column: 25, scope: !864)
!869 = !DILocation(line: 308, column: 31, scope: !864)
!870 = !DILocation(line: 308, column: 42, scope: !864)
!871 = !DILocation(line: 307, column: 21, scope: !864)
!872 = !DILocation(line: 309, column: 21, scope: !864)
!873 = !DILocation(line: 311, column: 36, scope: !858)
!874 = !DILocation(line: 311, column: 42, scope: !858)
!875 = !DILocation(line: 311, column: 17, scope: !858)
!876 = !DILocation(line: 312, column: 17, scope: !858)
!877 = !DILocation(line: 312, column: 23, scope: !858)
!878 = !DILocation(line: 312, column: 29, scope: !858)
!879 = !DILocation(line: 313, column: 17, scope: !858)
!880 = !DILocation(line: 315, column: 17, scope: !858)
!881 = !DILocation(line: 315, column: 17, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !21, line: 315, column: 17)
!883 = distinct !DILexicalBlock(scope: !884, file: !21, line: 315, column: 17)
!884 = distinct !DILexicalBlock(scope: !858, file: !21, line: 315, column: 17)
!885 = !DILocation(line: 316, column: 13, scope: !858)
!886 = !DILocation(line: 319, column: 13, scope: !854)
!887 = !DILocation(line: 319, column: 13, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !21, line: 319, column: 13)
!889 = distinct !DILexicalBlock(scope: !890, file: !21, line: 319, column: 13)
!890 = distinct !DILexicalBlock(scope: !854, file: !21, line: 319, column: 13)
!891 = !DILocation(line: 320, column: 9, scope: !854)
!892 = !DILocation(line: 327, column: 17, scope: !805)
!893 = !DILocation(line: 327, column: 9, scope: !805)
!894 = !DILocation(line: 330, column: 21, scope: !895)
!895 = distinct !DILexicalBlock(scope: !805, file: !21, line: 327, column: 22)
!896 = !DILocation(line: 330, column: 13, scope: !895)
!897 = !DILocation(line: 332, column: 33, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !21, line: 330, column: 27)
!899 = !DILocation(line: 332, column: 39, scope: !898)
!900 = !DILocation(line: 332, column: 46, scope: !898)
!901 = !DILocation(line: 332, column: 52, scope: !898)
!902 = !DILocation(line: 332, column: 17, scope: !898)
!903 = !DILocation(line: 333, column: 17, scope: !898)
!904 = !DILocation(line: 333, column: 23, scope: !898)
!905 = !DILocation(line: 333, column: 29, scope: !898)
!906 = !DILocation(line: 334, column: 17, scope: !898)
!907 = !DILocation(line: 336, column: 33, scope: !898)
!908 = !DILocation(line: 336, column: 39, scope: !898)
!909 = !DILocation(line: 336, column: 17, scope: !898)
!910 = !DILocation(line: 337, column: 17, scope: !898)
!911 = !DILocation(line: 337, column: 23, scope: !898)
!912 = !DILocation(line: 337, column: 29, scope: !898)
!913 = !DILocation(line: 338, column: 17, scope: !898)
!914 = !DILocation(line: 340, column: 17, scope: !898)
!915 = !DILocation(line: 340, column: 17, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !21, line: 340, column: 17)
!917 = distinct !DILexicalBlock(scope: !918, file: !21, line: 340, column: 17)
!918 = distinct !DILexicalBlock(scope: !898, file: !21, line: 340, column: 17)
!919 = !DILocation(line: 341, column: 13, scope: !898)
!920 = !DILocation(line: 344, column: 13, scope: !895)
!921 = !DILocation(line: 344, column: 13, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !21, line: 344, column: 13)
!923 = distinct !DILexicalBlock(scope: !924, file: !21, line: 344, column: 13)
!924 = distinct !DILexicalBlock(scope: !895, file: !21, line: 344, column: 13)
!925 = !DILocation(line: 345, column: 9, scope: !895)
!926 = !DILocation(line: 352, column: 17, scope: !805)
!927 = !DILocation(line: 352, column: 9, scope: !805)
!928 = !DILocation(line: 355, column: 21, scope: !929)
!929 = distinct !DILexicalBlock(scope: !805, file: !21, line: 352, column: 22)
!930 = !DILocation(line: 355, column: 13, scope: !929)
!931 = !DILocation(line: 357, column: 32, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !21, line: 355, column: 27)
!933 = !DILocation(line: 357, column: 38, scope: !932)
!934 = !DILocation(line: 357, column: 17, scope: !932)
!935 = !DILocation(line: 358, column: 17, scope: !932)
!936 = !DILocation(line: 358, column: 23, scope: !932)
!937 = !DILocation(line: 358, column: 29, scope: !932)
!938 = !DILocation(line: 359, column: 17, scope: !932)
!939 = !DILocation(line: 361, column: 17, scope: !932)
!940 = !DILocation(line: 361, column: 17, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !21, line: 361, column: 17)
!942 = distinct !DILexicalBlock(scope: !943, file: !21, line: 361, column: 17)
!943 = distinct !DILexicalBlock(scope: !932, file: !21, line: 361, column: 17)
!944 = !DILocation(line: 362, column: 13, scope: !932)
!945 = !DILocation(line: 365, column: 13, scope: !929)
!946 = !DILocation(line: 365, column: 13, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !21, line: 365, column: 13)
!948 = distinct !DILexicalBlock(scope: !949, file: !21, line: 365, column: 13)
!949 = distinct !DILexicalBlock(scope: !929, file: !21, line: 365, column: 13)
!950 = !DILocation(line: 366, column: 9, scope: !929)
!951 = !DILocation(line: 373, column: 17, scope: !805)
!952 = !DILocation(line: 373, column: 9, scope: !805)
!953 = !DILocation(line: 376, column: 21, scope: !954)
!954 = distinct !DILexicalBlock(scope: !805, file: !21, line: 373, column: 22)
!955 = !DILocation(line: 376, column: 13, scope: !954)
!956 = !DILocation(line: 378, column: 33, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !21, line: 376, column: 27)
!958 = !DILocation(line: 378, column: 39, scope: !957)
!959 = !DILocation(line: 378, column: 17, scope: !957)
!960 = !DILocation(line: 379, column: 17, scope: !957)
!961 = !DILocation(line: 379, column: 23, scope: !957)
!962 = !DILocation(line: 379, column: 29, scope: !957)
!963 = !DILocation(line: 380, column: 17, scope: !957)
!964 = !DILocation(line: 382, column: 17, scope: !957)
!965 = !DILocation(line: 382, column: 17, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !21, line: 382, column: 17)
!967 = distinct !DILexicalBlock(scope: !968, file: !21, line: 382, column: 17)
!968 = distinct !DILexicalBlock(scope: !957, file: !21, line: 382, column: 17)
!969 = !DILocation(line: 383, column: 13, scope: !957)
!970 = !DILocation(line: 386, column: 13, scope: !954)
!971 = !DILocation(line: 386, column: 13, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !21, line: 386, column: 13)
!973 = distinct !DILexicalBlock(scope: !974, file: !21, line: 386, column: 13)
!974 = distinct !DILexicalBlock(scope: !954, file: !21, line: 386, column: 13)
!975 = !DILocation(line: 387, column: 9, scope: !954)
!976 = !DILocation(line: 394, column: 17, scope: !805)
!977 = !DILocation(line: 394, column: 9, scope: !805)
!978 = !DILocation(line: 397, column: 21, scope: !979)
!979 = distinct !DILexicalBlock(scope: !805, file: !21, line: 394, column: 22)
!980 = !DILocation(line: 397, column: 13, scope: !979)
!981 = !DILocation(line: 399, column: 36, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !21, line: 397, column: 27)
!983 = !DILocation(line: 399, column: 42, scope: !982)
!984 = !DILocation(line: 399, column: 17, scope: !982)
!985 = !DILocation(line: 400, column: 17, scope: !982)
!986 = !DILocation(line: 400, column: 23, scope: !982)
!987 = !DILocation(line: 400, column: 29, scope: !982)
!988 = !DILocation(line: 401, column: 17, scope: !982)
!989 = !DILocation(line: 403, column: 17, scope: !982)
!990 = !DILocation(line: 403, column: 17, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !21, line: 403, column: 17)
!992 = distinct !DILexicalBlock(scope: !993, file: !21, line: 403, column: 17)
!993 = distinct !DILexicalBlock(scope: !982, file: !21, line: 403, column: 17)
!994 = !DILocation(line: 404, column: 13, scope: !982)
!995 = !DILocation(line: 407, column: 13, scope: !979)
!996 = !DILocation(line: 407, column: 13, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !21, line: 407, column: 13)
!998 = distinct !DILexicalBlock(scope: !999, file: !21, line: 407, column: 13)
!999 = distinct !DILexicalBlock(scope: !979, file: !21, line: 407, column: 13)
!1000 = !DILocation(line: 408, column: 9, scope: !979)
!1001 = !DILocation(line: 416, column: 17, scope: !805)
!1002 = !DILocation(line: 416, column: 9, scope: !805)
!1003 = !DILocation(line: 419, column: 21, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !805, file: !21, line: 416, column: 22)
!1005 = !DILocation(line: 419, column: 13, scope: !1004)
!1006 = !DILocation(line: 421, column: 35, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !21, line: 419, column: 27)
!1008 = !DILocation(line: 421, column: 41, scope: !1007)
!1009 = !DILocation(line: 421, column: 17, scope: !1007)
!1010 = !DILocation(line: 422, column: 17, scope: !1007)
!1011 = !DILocation(line: 422, column: 23, scope: !1007)
!1012 = !DILocation(line: 422, column: 29, scope: !1007)
!1013 = !DILocation(line: 423, column: 17, scope: !1007)
!1014 = !DILocation(line: 425, column: 17, scope: !1007)
!1015 = !DILocation(line: 425, column: 17, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !21, line: 425, column: 17)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !21, line: 425, column: 17)
!1018 = distinct !DILexicalBlock(scope: !1007, file: !21, line: 425, column: 17)
!1019 = !DILocation(line: 426, column: 13, scope: !1007)
!1020 = !DILocation(line: 429, column: 13, scope: !1004)
!1021 = !DILocation(line: 429, column: 13, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !21, line: 429, column: 13)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !21, line: 429, column: 13)
!1024 = distinct !DILexicalBlock(scope: !1004, file: !21, line: 429, column: 13)
!1025 = !DILocation(line: 430, column: 9, scope: !1004)
!1026 = !DILocation(line: 437, column: 17, scope: !805)
!1027 = !DILocation(line: 437, column: 9, scope: !805)
!1028 = !DILocation(line: 440, column: 21, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !805, file: !21, line: 437, column: 22)
!1030 = !DILocation(line: 440, column: 13, scope: !1029)
!1031 = !DILocation(line: 442, column: 42, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !21, line: 440, column: 27)
!1033 = !DILocation(line: 442, column: 17, scope: !1032)
!1034 = !DILocation(line: 443, column: 17, scope: !1032)
!1035 = !DILocation(line: 445, column: 17, scope: !1032)
!1036 = !DILocation(line: 445, column: 17, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !21, line: 445, column: 17)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !21, line: 445, column: 17)
!1039 = distinct !DILexicalBlock(scope: !1032, file: !21, line: 445, column: 17)
!1040 = !DILocation(line: 446, column: 13, scope: !1032)
!1041 = !DILocation(line: 449, column: 13, scope: !1029)
!1042 = !DILocation(line: 449, column: 13, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !21, line: 449, column: 13)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !21, line: 449, column: 13)
!1045 = distinct !DILexicalBlock(scope: !1029, file: !21, line: 449, column: 13)
!1046 = !DILocation(line: 450, column: 9, scope: !1029)
!1047 = !DILocation(line: 456, column: 9, scope: !805)
!1048 = !DILocation(line: 456, column: 9, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !21, line: 456, column: 9)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !21, line: 456, column: 9)
!1051 = distinct !DILexicalBlock(scope: !805, file: !21, line: 456, column: 9)
!1052 = !DILocation(line: 457, column: 5, scope: !805)
!1053 = !DILocation(line: 458, column: 1, scope: !725)
!1054 = distinct !DISubprogram(name: "nn_ctcp_start_resolving", scope: !21, file: !21, line: 464, type: !1055, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !490)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !19}
!1057 = !DILocalVariable(name: "self", arg: 1, scope: !1054, file: !21, line: 464, type: !19)
!1058 = !DILocation(line: 464, column: 54, scope: !1054)
!1059 = !DILocalVariable(name: "addr", scope: !1054, file: !21, line: 466, type: !540)
!1060 = !DILocation(line: 466, column: 17, scope: !1054)
!1061 = !DILocalVariable(name: "begin", scope: !1054, file: !21, line: 467, type: !540)
!1062 = !DILocation(line: 467, column: 17, scope: !1054)
!1063 = !DILocalVariable(name: "end", scope: !1054, file: !21, line: 468, type: !540)
!1064 = !DILocation(line: 468, column: 17, scope: !1054)
!1065 = !DILocalVariable(name: "ipv4only", scope: !1054, file: !21, line: 469, type: !33)
!1066 = !DILocation(line: 469, column: 9, scope: !1054)
!1067 = !DILocalVariable(name: "ipv4onlylen", scope: !1054, file: !21, line: 470, type: !215)
!1068 = !DILocation(line: 470, column: 12, scope: !1054)
!1069 = !DILocation(line: 473, column: 32, scope: !1054)
!1070 = !DILocation(line: 473, column: 38, scope: !1054)
!1071 = !DILocation(line: 473, column: 12, scope: !1054)
!1072 = !DILocation(line: 473, column: 10, scope: !1054)
!1073 = !DILocation(line: 474, column: 21, scope: !1054)
!1074 = !DILocation(line: 474, column: 13, scope: !1054)
!1075 = !DILocation(line: 474, column: 11, scope: !1054)
!1076 = !DILocation(line: 475, column: 10, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1054, file: !21, line: 475, column: 9)
!1078 = !DILocation(line: 475, column: 9, scope: !1054)
!1079 = !DILocation(line: 476, column: 17, scope: !1077)
!1080 = !DILocation(line: 476, column: 15, scope: !1077)
!1081 = !DILocation(line: 476, column: 9, scope: !1077)
!1082 = !DILocation(line: 478, column: 9, scope: !1077)
!1083 = !DILocation(line: 479, column: 20, scope: !1054)
!1084 = !DILocation(line: 479, column: 11, scope: !1054)
!1085 = !DILocation(line: 479, column: 9, scope: !1054)
!1086 = !DILocation(line: 480, column: 5, scope: !1054)
!1087 = !DILocation(line: 480, column: 5, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !21, line: 480, column: 5)
!1089 = distinct !DILexicalBlock(scope: !1054, file: !21, line: 480, column: 5)
!1090 = !DILocation(line: 480, column: 5, scope: !1089)
!1091 = !DILocation(line: 480, column: 5, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !21, line: 480, column: 5)
!1093 = !DILocation(line: 483, column: 17, scope: !1054)
!1094 = !DILocation(line: 484, column: 24, scope: !1054)
!1095 = !DILocation(line: 484, column: 30, scope: !1054)
!1096 = !DILocation(line: 484, column: 5, scope: !1054)
!1097 = !DILocation(line: 486, column: 5, scope: !1054)
!1098 = !DILocation(line: 486, column: 5, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !21, line: 486, column: 5)
!1100 = distinct !DILexicalBlock(scope: !1054, file: !21, line: 486, column: 5)
!1101 = !DILocation(line: 486, column: 5, scope: !1100)
!1102 = !DILocation(line: 486, column: 5, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !21, line: 486, column: 5)
!1104 = !DILocation(line: 489, column: 20, scope: !1054)
!1105 = !DILocation(line: 489, column: 26, scope: !1054)
!1106 = !DILocation(line: 489, column: 31, scope: !1054)
!1107 = !DILocation(line: 489, column: 38, scope: !1054)
!1108 = !DILocation(line: 489, column: 44, scope: !1054)
!1109 = !DILocation(line: 489, column: 42, scope: !1054)
!1110 = !DILocation(line: 489, column: 51, scope: !1054)
!1111 = !DILocation(line: 489, column: 62, scope: !1054)
!1112 = !DILocation(line: 489, column: 68, scope: !1054)
!1113 = !DILocation(line: 489, column: 5, scope: !1054)
!1114 = !DILocation(line: 491, column: 5, scope: !1054)
!1115 = !DILocation(line: 491, column: 11, scope: !1054)
!1116 = !DILocation(line: 491, column: 17, scope: !1054)
!1117 = !DILocation(line: 492, column: 1, scope: !1054)
!1118 = distinct !DISubprogram(name: "nn_ctcp_start_connecting", scope: !21, file: !21, line: 494, type: !1119, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !490)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !19, !1121, !215}
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!1122 = !DILocalVariable(name: "self", arg: 1, scope: !1118, file: !21, line: 494, type: !19)
!1123 = !DILocation(line: 494, column: 55, scope: !1118)
!1124 = !DILocalVariable(name: "ss", arg: 2, scope: !1118, file: !21, line: 495, type: !1121)
!1125 = !DILocation(line: 495, column: 30, scope: !1118)
!1126 = !DILocalVariable(name: "sslen", arg: 3, scope: !1118, file: !21, line: 495, type: !215)
!1127 = !DILocation(line: 495, column: 41, scope: !1118)
!1128 = !DILocalVariable(name: "rc", scope: !1118, file: !21, line: 497, type: !33)
!1129 = !DILocation(line: 497, column: 9, scope: !1118)
!1130 = !DILocalVariable(name: "remote", scope: !1118, file: !21, line: 498, type: !374)
!1131 = !DILocation(line: 498, column: 29, scope: !1118)
!1132 = !DILocalVariable(name: "remotelen", scope: !1118, file: !21, line: 499, type: !215)
!1133 = !DILocation(line: 499, column: 12, scope: !1118)
!1134 = !DILocalVariable(name: "local", scope: !1118, file: !21, line: 500, type: !374)
!1135 = !DILocation(line: 500, column: 29, scope: !1118)
!1136 = !DILocalVariable(name: "locallen", scope: !1118, file: !21, line: 501, type: !215)
!1137 = !DILocation(line: 501, column: 12, scope: !1118)
!1138 = !DILocalVariable(name: "addr", scope: !1118, file: !21, line: 502, type: !540)
!1139 = !DILocation(line: 502, column: 17, scope: !1118)
!1140 = !DILocalVariable(name: "end", scope: !1118, file: !21, line: 503, type: !540)
!1141 = !DILocation(line: 503, column: 17, scope: !1118)
!1142 = !DILocalVariable(name: "colon", scope: !1118, file: !21, line: 504, type: !540)
!1143 = !DILocation(line: 504, column: 17, scope: !1118)
!1144 = !DILocalVariable(name: "semicolon", scope: !1118, file: !21, line: 505, type: !540)
!1145 = !DILocation(line: 505, column: 17, scope: !1118)
!1146 = !DILocalVariable(name: "port", scope: !1118, file: !21, line: 506, type: !396)
!1147 = !DILocation(line: 506, column: 14, scope: !1118)
!1148 = !DILocalVariable(name: "ipv4only", scope: !1118, file: !21, line: 507, type: !33)
!1149 = !DILocation(line: 507, column: 9, scope: !1118)
!1150 = !DILocalVariable(name: "ipv4onlylen", scope: !1118, file: !21, line: 508, type: !215)
!1151 = !DILocation(line: 508, column: 12, scope: !1118)
!1152 = !DILocation(line: 511, column: 32, scope: !1118)
!1153 = !DILocation(line: 511, column: 38, scope: !1118)
!1154 = !DILocation(line: 511, column: 12, scope: !1118)
!1155 = !DILocation(line: 511, column: 10, scope: !1118)
!1156 = !DILocation(line: 512, column: 5, scope: !1118)
!1157 = !DILocation(line: 515, column: 11, scope: !1118)
!1158 = !DILocation(line: 515, column: 26, scope: !1118)
!1159 = !DILocation(line: 515, column: 18, scope: !1118)
!1160 = !DILocation(line: 515, column: 16, scope: !1118)
!1161 = !DILocation(line: 515, column: 9, scope: !1118)
!1162 = !DILocation(line: 516, column: 22, scope: !1118)
!1163 = !DILocation(line: 516, column: 13, scope: !1118)
!1164 = !DILocation(line: 516, column: 11, scope: !1118)
!1165 = !DILocation(line: 517, column: 27, scope: !1118)
!1166 = !DILocation(line: 517, column: 33, scope: !1118)
!1167 = !DILocation(line: 517, column: 38, scope: !1118)
!1168 = !DILocation(line: 517, column: 44, scope: !1118)
!1169 = !DILocation(line: 517, column: 42, scope: !1118)
!1170 = !DILocation(line: 517, column: 50, scope: !1118)
!1171 = !DILocation(line: 517, column: 10, scope: !1118)
!1172 = !DILocation(line: 517, column: 8, scope: !1118)
!1173 = !DILocation(line: 518, column: 5, scope: !1118)
!1174 = !DILocation(line: 518, column: 5, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !21, line: 518, column: 5)
!1176 = distinct !DILexicalBlock(scope: !1118, file: !21, line: 518, column: 5)
!1177 = !DILocation(line: 518, column: 5, scope: !1176)
!1178 = !DILocation(line: 518, column: 5, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !21, line: 518, column: 5)
!1180 = !DILocation(line: 519, column: 12, scope: !1118)
!1181 = !DILocation(line: 519, column: 10, scope: !1118)
!1182 = !DILocation(line: 522, column: 17, scope: !1118)
!1183 = !DILocation(line: 523, column: 24, scope: !1118)
!1184 = !DILocation(line: 523, column: 30, scope: !1118)
!1185 = !DILocation(line: 523, column: 5, scope: !1118)
!1186 = !DILocation(line: 525, column: 5, scope: !1118)
!1187 = !DILocation(line: 525, column: 5, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !21, line: 525, column: 5)
!1189 = distinct !DILexicalBlock(scope: !1118, file: !21, line: 525, column: 5)
!1190 = !DILocation(line: 525, column: 5, scope: !1189)
!1191 = !DILocation(line: 525, column: 5, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1188, file: !21, line: 525, column: 5)
!1193 = !DILocation(line: 528, column: 25, scope: !1118)
!1194 = !DILocation(line: 528, column: 17, scope: !1118)
!1195 = !DILocation(line: 528, column: 15, scope: !1118)
!1196 = !DILocation(line: 529, column: 5, scope: !1118)
!1197 = !DILocation(line: 530, column: 9, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1118, file: !21, line: 530, column: 9)
!1199 = !DILocation(line: 530, column: 9, scope: !1118)
!1200 = !DILocation(line: 531, column: 32, scope: !1198)
!1201 = !DILocation(line: 531, column: 38, scope: !1198)
!1202 = !DILocation(line: 531, column: 50, scope: !1198)
!1203 = !DILocation(line: 531, column: 48, scope: !1198)
!1204 = !DILocation(line: 531, column: 56, scope: !1198)
!1205 = !DILocation(line: 531, column: 14, scope: !1198)
!1206 = !DILocation(line: 531, column: 12, scope: !1198)
!1207 = !DILocation(line: 531, column: 9, scope: !1198)
!1208 = !DILocation(line: 534, column: 40, scope: !1198)
!1209 = !DILocation(line: 534, column: 14, scope: !1198)
!1210 = !DILocation(line: 534, column: 12, scope: !1198)
!1211 = !DILocation(line: 535, column: 5, scope: !1118)
!1212 = !DILocation(line: 535, column: 5, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !21, line: 535, column: 5)
!1214 = distinct !DILexicalBlock(scope: !1118, file: !21, line: 535, column: 5)
!1215 = !DILocation(line: 535, column: 5, scope: !1214)
!1216 = !DILocation(line: 535, column: 5, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !21, line: 535, column: 5)
!1218 = !DILocation(line: 538, column: 15, scope: !1118)
!1219 = !DILocation(line: 538, column: 14, scope: !1118)
!1220 = !DILocation(line: 539, column: 17, scope: !1118)
!1221 = !DILocation(line: 539, column: 15, scope: !1118)
!1222 = !DILocation(line: 540, column: 16, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1118, file: !21, line: 540, column: 9)
!1224 = !DILocation(line: 540, column: 9, scope: !1223)
!1225 = !DILocation(line: 540, column: 26, scope: !1223)
!1226 = !DILocation(line: 540, column: 9, scope: !1118)
!1227 = !DILocation(line: 541, column: 60, scope: !1223)
!1228 = !DILocation(line: 541, column: 53, scope: !1223)
!1229 = !DILocation(line: 541, column: 42, scope: !1223)
!1230 = !DILocation(line: 541, column: 51, scope: !1223)
!1231 = !DILocation(line: 541, column: 9, scope: !1223)
!1232 = !DILocation(line: 542, column: 21, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1223, file: !21, line: 542, column: 14)
!1234 = !DILocation(line: 542, column: 14, scope: !1233)
!1235 = !DILocation(line: 542, column: 31, scope: !1233)
!1236 = !DILocation(line: 542, column: 14, scope: !1223)
!1237 = !DILocation(line: 543, column: 62, scope: !1233)
!1238 = !DILocation(line: 543, column: 55, scope: !1233)
!1239 = !DILocation(line: 543, column: 43, scope: !1233)
!1240 = !DILocation(line: 543, column: 53, scope: !1233)
!1241 = !DILocation(line: 543, column: 9, scope: !1233)
!1242 = !DILocation(line: 545, column: 9, scope: !1233)
!1243 = !DILocation(line: 545, column: 9, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !21, line: 545, column: 9)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !21, line: 545, column: 9)
!1246 = distinct !DILexicalBlock(scope: !1233, file: !21, line: 545, column: 9)
!1247 = !DILocation(line: 548, column: 27, scope: !1118)
!1248 = !DILocation(line: 548, column: 33, scope: !1118)
!1249 = !DILocation(line: 548, column: 47, scope: !1118)
!1250 = !DILocation(line: 548, column: 40, scope: !1118)
!1251 = !DILocation(line: 548, column: 10, scope: !1118)
!1252 = !DILocation(line: 548, column: 8, scope: !1118)
!1253 = !DILocation(line: 549, column: 9, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1118, file: !21, line: 549, column: 9)
!1255 = !DILocation(line: 549, column: 9, scope: !1118)
!1256 = !DILocation(line: 550, column: 28, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !21, line: 549, column: 27)
!1258 = !DILocation(line: 550, column: 34, scope: !1257)
!1259 = !DILocation(line: 550, column: 9, scope: !1257)
!1260 = !DILocation(line: 551, column: 9, scope: !1257)
!1261 = !DILocation(line: 551, column: 15, scope: !1257)
!1262 = !DILocation(line: 551, column: 21, scope: !1257)
!1263 = !DILocation(line: 552, column: 9, scope: !1257)
!1264 = !DILocation(line: 556, column: 26, scope: !1118)
!1265 = !DILocation(line: 556, column: 32, scope: !1118)
!1266 = !DILocation(line: 556, column: 66, scope: !1118)
!1267 = !DILocation(line: 556, column: 10, scope: !1118)
!1268 = !DILocation(line: 556, column: 8, scope: !1118)
!1269 = !DILocation(line: 557, column: 5, scope: !1118)
!1270 = !DILocation(line: 557, column: 5, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !21, line: 557, column: 5)
!1272 = distinct !DILexicalBlock(scope: !1118, file: !21, line: 557, column: 5)
!1273 = !DILocation(line: 557, column: 5, scope: !1272)
!1274 = !DILocation(line: 557, column: 5, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1271, file: !21, line: 557, column: 5)
!1276 = !DILocation(line: 560, column: 24, scope: !1118)
!1277 = !DILocation(line: 560, column: 30, scope: !1118)
!1278 = !DILocation(line: 560, column: 65, scope: !1118)
!1279 = !DILocation(line: 560, column: 5, scope: !1118)
!1280 = !DILocation(line: 561, column: 5, scope: !1118)
!1281 = !DILocation(line: 561, column: 11, scope: !1118)
!1282 = !DILocation(line: 561, column: 17, scope: !1118)
!1283 = !DILocation(line: 562, column: 1, scope: !1118)
