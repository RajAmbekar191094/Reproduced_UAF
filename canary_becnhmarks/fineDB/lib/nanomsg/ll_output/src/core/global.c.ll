; ModuleID = './src/core/global.c'
source_filename = "./src/core/global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_global = type { ptr, ptr, i64, i32, %struct.nn_list, %struct.nn_list, %struct.nn_pool }
%struct.nn_list = type { ptr, ptr }
%struct.nn_pool = type { %struct.nn_worker }
%struct.nn_worker = type { %struct.nn_mutex, %struct.nn_queue, %struct.nn_queue_item, %struct.nn_efd, %struct.nn_poller, %struct.nn_poller_hndl, %struct.nn_timerset, %struct.nn_thread }
%struct.nn_mutex = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.nn_queue = type { ptr, ptr }
%struct.nn_queue_item = type { ptr }
%struct.nn_efd = type { i32, i32 }
%struct.nn_poller = type { i32, i32, i32, ptr, ptr, i32 }
%struct.nn_poller_hndl = type { i32 }
%struct.nn_timerset = type { %struct.nn_clock, %struct.nn_list }
%struct.nn_clock = type { i64, i64 }
%struct.nn_thread = type { ptr, ptr, i64 }
%struct.nn_cmsghdr = type { i64, i32, i32 }
%struct.nn_msghdr = type { ptr, i32, ptr, i64 }
%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_transport = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.nn_list_item }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }
%struct.nn_iovec = type { ptr, i64 }

@self = internal global %struct.nn_global zeroinitializer, align 8, !dbg !0
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !379
@.str.1 = private unnamed_addr constant [20 x i8] c"./src/core/global.c\00", align 1, !dbg !385
@.str.2 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !390
@.str.3 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !395
@.str.4 = private unnamed_addr constant [8 x i8] c"rc == 0\00", align 1, !dbg !400
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !405
@nn_inproc = external global ptr, align 8
@nn_ipc = external global ptr, align 8
@nn_tcp = external global ptr, align 8
@nn_pair_socktype = external global ptr, align 8
@nn_xpair_socktype = external global ptr, align 8
@nn_pub_socktype = external global ptr, align 8
@nn_sub_socktype = external global ptr, align 8
@nn_rep_socktype = external global ptr, align 8
@nn_req_socktype = external global ptr, align 8
@nn_xrep_socktype = external global ptr, align 8
@nn_xreq_socktype = external global ptr, align 8
@nn_push_socktype = external global ptr, align 8
@nn_xpush_socktype = external global ptr, align 8
@nn_pull_socktype = external global ptr, align 8
@nn_xpull_socktype = external global ptr, align 8
@nn_respondent_socktype = external global ptr, align 8
@nn_surveyor_socktype = external global ptr, align 8
@nn_xrespondent_socktype = external global ptr, align 8
@nn_xsurveyor_socktype = external global ptr, align 8
@nn_bus_socktype = external global ptr, align 8
@nn_xbus_socktype = external global ptr, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"self.socks\00", align 1, !dbg !410

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_errno() #0 !dbg !433 {
  %1 = call i32 @nn_err_errno(), !dbg !437
  ret i32 %1, !dbg !438
}

declare i32 @nn_err_errno() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_strerror(i32 noundef %0) #0 !dbg !439 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !442, metadata !DIExpression()), !dbg !443
  %3 = load i32, ptr %2, align 4, !dbg !444
  %4 = call ptr @nn_err_strerror(i32 noundef %3), !dbg !445
  ret ptr %4, !dbg !446
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare ptr @nn_err_strerror(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_cmsg_nexthdr(ptr noundef %0, ptr noundef %1) #0 !dbg !447 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !465, metadata !DIExpression()), !dbg !466
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !467, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.declare(metadata ptr %6, metadata !469, metadata !DIExpression()), !dbg !470
  %7 = load ptr, ptr %5, align 8, !dbg !471
  %8 = getelementptr inbounds %struct.nn_cmsghdr, ptr %7, i32 0, i32 0, !dbg !472
  %9 = load i64, ptr %8, align 8, !dbg !472
  %10 = add i64 16, %9, !dbg !473
  store i64 %10, ptr %6, align 8, !dbg !474
  %11 = load ptr, ptr %5, align 8, !dbg !475
  %12 = load ptr, ptr %4, align 8, !dbg !477
  %13 = getelementptr inbounds %struct.nn_msghdr, ptr %12, i32 0, i32 2, !dbg !478
  %14 = load ptr, ptr %13, align 8, !dbg !478
  %15 = ptrtoint ptr %11 to i64, !dbg !479
  %16 = ptrtoint ptr %14 to i64, !dbg !479
  %17 = sub i64 %15, %16, !dbg !479
  %18 = load i64, ptr %6, align 8, !dbg !480
  %19 = add i64 %17, %18, !dbg !481
  %20 = load ptr, ptr %4, align 8, !dbg !482
  %21 = getelementptr inbounds %struct.nn_msghdr, ptr %20, i32 0, i32 3, !dbg !483
  %22 = load i64, ptr %21, align 8, !dbg !483
  %23 = icmp uge i64 %19, %22, !dbg !484
  br i1 %23, label %24, label %25, !dbg !485

24:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !486
  br label %29, !dbg !486

25:                                               ; preds = %2
  %26 = load ptr, ptr %5, align 8, !dbg !487
  %27 = load i64, ptr %6, align 8, !dbg !488
  %28 = getelementptr inbounds i8, ptr %26, i64 %27, !dbg !489
  store ptr %28, ptr %3, align 8, !dbg !490
  br label %29, !dbg !490

29:                                               ; preds = %25, %24
  %30 = load ptr, ptr %3, align 8, !dbg !491
  ret ptr %30, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_term() #0 !dbg !492 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !493, metadata !DIExpression()), !dbg !494
  call void @nn_glock_lock(), !dbg !495
  %2 = load i32, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 3), align 8, !dbg !496
  %3 = or i32 %2, 1, !dbg !496
  store i32 %3, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 3), align 8, !dbg !496
  %4 = load ptr, ptr @self, align 8, !dbg !497
  %5 = icmp ne ptr %4, null, !dbg !499
  br i1 %5, label %6, label %31, !dbg !500

6:                                                ; preds = %0
  %7 = load i64, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 2), align 8, !dbg !501
  %8 = icmp ne i64 %7, 0, !dbg !502
  br i1 %8, label %9, label %31, !dbg !503

9:                                                ; preds = %6
  store i32 0, ptr %1, align 4, !dbg !504
  br label %10, !dbg !507

10:                                               ; preds = %27, %9
  %11 = load i32, ptr %1, align 4, !dbg !508
  %12 = icmp ne i32 %11, 512, !dbg !510
  br i1 %12, label %13, label %30, !dbg !511

13:                                               ; preds = %10
  %14 = load ptr, ptr @self, align 8, !dbg !512
  %15 = load i32, ptr %1, align 4, !dbg !514
  %16 = sext i32 %15 to i64, !dbg !515
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16, !dbg !515
  %18 = load ptr, ptr %17, align 8, !dbg !515
  %19 = icmp ne ptr %18, null, !dbg !515
  br i1 %19, label %20, label %26, !dbg !516

20:                                               ; preds = %13
  %21 = load ptr, ptr @self, align 8, !dbg !517
  %22 = load i32, ptr %1, align 4, !dbg !518
  %23 = sext i32 %22 to i64, !dbg !519
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23, !dbg !519
  %25 = load ptr, ptr %24, align 8, !dbg !519
  call void @nn_sock_zombify(ptr noundef %25), !dbg !520
  br label %26, !dbg !520

26:                                               ; preds = %20, %13
  br label %27, !dbg !521

27:                                               ; preds = %26
  %28 = load i32, ptr %1, align 4, !dbg !522
  %29 = add nsw i32 %28, 1, !dbg !522
  store i32 %29, ptr %1, align 4, !dbg !522
  br label %10, !dbg !523, !llvm.loop !524

30:                                               ; preds = %10
  br label %31, !dbg !527

31:                                               ; preds = %30, %6, %0
  call void @nn_glock_unlock(), !dbg !528
  ret void, !dbg !529
}

declare void @nn_glock_lock() #1

declare void @nn_sock_zombify(ptr noundef) #1

declare void @nn_glock_unlock() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_allocmsg(i64 noundef %0, i32 noundef %1) #0 !dbg !530 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !533, metadata !DIExpression()), !dbg !534
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !535, metadata !DIExpression()), !dbg !536
  %5 = load i64, ptr %3, align 8, !dbg !537
  %6 = load i32, ptr %4, align 4, !dbg !538
  %7 = call ptr @nn_chunk_alloc(i64 noundef %5, i32 noundef %6), !dbg !539
  ret ptr %7, !dbg !540
}

declare ptr @nn_chunk_alloc(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_freemsg(ptr noundef %0) #0 !dbg !541 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !544, metadata !DIExpression()), !dbg !545
  %3 = load ptr, ptr %2, align 8, !dbg !546
  call void @nn_chunk_free(ptr noundef %3), !dbg !547
  ret i32 0, !dbg !548
}

declare void @nn_chunk_free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_socket(i32 noundef %0, i32 noundef %1) #0 !dbg !549 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !552, metadata !DIExpression()), !dbg !553
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !554, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.declare(metadata ptr %6, metadata !556, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.declare(metadata ptr %7, metadata !558, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.declare(metadata ptr %8, metadata !560, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.declare(metadata ptr %9, metadata !562, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.declare(metadata ptr %10, metadata !564, metadata !DIExpression()), !dbg !565
  call void @nn_glock_lock(), !dbg !566
  call void @nn_global_init(), !dbg !567
  %11 = load i32, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 3), align 8, !dbg !568
  %12 = and i32 %11, 1, !dbg !568
  %13 = sext i32 %12 to i64, !dbg !568
  %14 = icmp ne i64 %13, 0, !dbg !568
  br i1 %14, label %15, label %17, !dbg !570

15:                                               ; preds = %2
  call void @nn_global_term(), !dbg !571
  call void @nn_glock_unlock(), !dbg !573
  %16 = call ptr @__errno_location() #7, !dbg !574
  store i32 156384765, ptr %16, align 4, !dbg !575
  store i32 -1, ptr %3, align 4, !dbg !576
  br label %109, !dbg !576

17:                                               ; preds = %2
  %18 = load i32, ptr %4, align 4, !dbg !577
  %19 = icmp ne i32 %18, 1, !dbg !577
  br i1 %19, label %20, label %23, !dbg !577

20:                                               ; preds = %17
  %21 = load i32, ptr %4, align 4, !dbg !577
  %22 = icmp ne i32 %21, 2, !dbg !577
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ], !dbg !579
  %25 = zext i1 %24 to i32, !dbg !577
  %26 = sext i32 %25 to i64, !dbg !577
  %27 = icmp ne i64 %26, 0, !dbg !577
  br i1 %27, label %28, label %30, !dbg !580

28:                                               ; preds = %23
  call void @nn_global_term(), !dbg !581
  call void @nn_glock_unlock(), !dbg !583
  %29 = call ptr @__errno_location() #7, !dbg !584
  store i32 97, ptr %29, align 4, !dbg !585
  store i32 -1, ptr %3, align 4, !dbg !586
  br label %109, !dbg !586

30:                                               ; preds = %23
  %31 = load i64, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 2), align 8, !dbg !587
  %32 = icmp uge i64 %31, 512, !dbg !587
  %33 = zext i1 %32 to i32, !dbg !587
  %34 = sext i32 %33 to i64, !dbg !587
  %35 = icmp ne i64 %34, 0, !dbg !587
  br i1 %35, label %36, label %38, !dbg !589

36:                                               ; preds = %30
  call void @nn_global_term(), !dbg !590
  call void @nn_glock_unlock(), !dbg !592
  %37 = call ptr @__errno_location() #7, !dbg !593
  store i32 24, ptr %37, align 4, !dbg !594
  store i32 -1, ptr %3, align 4, !dbg !595
  br label %109, !dbg !595

38:                                               ; preds = %30
  %39 = load ptr, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 1), align 8, !dbg !596
  %40 = load i64, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 2), align 8, !dbg !597
  %41 = sub i64 512, %40, !dbg !598
  %42 = sub i64 %41, 1, !dbg !599
  %43 = getelementptr inbounds i16, ptr %39, i64 %42, !dbg !600
  %44 = load i16, ptr %43, align 2, !dbg !600
  %45 = zext i16 %44 to i32, !dbg !600
  store i32 %45, ptr %7, align 4, !dbg !601
  %46 = call ptr @nn_list_begin(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 5)), !dbg !602
  store ptr %46, ptr %8, align 8, !dbg !604
  br label %47, !dbg !605

47:                                               ; preds = %101, %38
  %48 = load ptr, ptr %8, align 8, !dbg !606
  %49 = call ptr @nn_list_end(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 5)), !dbg !608
  %50 = icmp ne ptr %48, %49, !dbg !609
  br i1 %50, label %51, label %104, !dbg !610

51:                                               ; preds = %47
  %52 = load ptr, ptr %8, align 8, !dbg !611
  %53 = icmp ne ptr %52, null, !dbg !611
  br i1 %53, label %54, label %57, !dbg !611

54:                                               ; preds = %51
  %55 = load ptr, ptr %8, align 8, !dbg !611
  %56 = getelementptr inbounds i8, ptr %55, i64 -32, !dbg !611
  br label %58, !dbg !611

57:                                               ; preds = %51
  br label %58, !dbg !611

58:                                               ; preds = %57, %54
  %59 = phi ptr [ %56, %54 ], [ null, %57 ], !dbg !611
  store ptr %59, ptr %9, align 8, !dbg !613
  %60 = load ptr, ptr %9, align 8, !dbg !614
  %61 = getelementptr inbounds %struct.nn_socktype, ptr %60, i32 0, i32 0, !dbg !616
  %62 = load i32, ptr %61, align 8, !dbg !616
  %63 = load i32, ptr %4, align 4, !dbg !617
  %64 = icmp eq i32 %62, %63, !dbg !618
  br i1 %64, label %65, label %100, !dbg !619

65:                                               ; preds = %58
  %66 = load ptr, ptr %9, align 8, !dbg !620
  %67 = getelementptr inbounds %struct.nn_socktype, ptr %66, i32 0, i32 1, !dbg !621
  %68 = load i32, ptr %67, align 4, !dbg !621
  %69 = load i32, ptr %5, align 4, !dbg !622
  %70 = icmp eq i32 %68, %69, !dbg !623
  br i1 %70, label %71, label %100, !dbg !624

71:                                               ; preds = %65
  %72 = call ptr @nn_alloc_(i64 noundef 344), !dbg !625
  store ptr %72, ptr %10, align 8, !dbg !627
  br label %73, !dbg !628

73:                                               ; preds = %71
  %74 = load ptr, ptr %10, align 8, !dbg !629
  %75 = icmp ne ptr %74, null, !dbg !629
  %76 = xor i1 %75, true, !dbg !629
  %77 = zext i1 %76 to i32, !dbg !629
  %78 = sext i32 %77 to i64, !dbg !629
  %79 = icmp ne i64 %78, 0, !dbg !629
  br i1 %79, label %80, label %83, !dbg !632

80:                                               ; preds = %73
  %81 = load ptr, ptr @stderr, align 8, !dbg !633
  %82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 359), !dbg !633
  call void @nn_err_abort() #8, !dbg !633
  unreachable, !dbg !633

83:                                               ; preds = %73
  br label %84, !dbg !632

84:                                               ; preds = %83
  %85 = load ptr, ptr %10, align 8, !dbg !635
  %86 = load ptr, ptr %9, align 8, !dbg !636
  %87 = call i32 @nn_sock_init(ptr noundef %85, ptr noundef %86), !dbg !637
  store i32 %87, ptr %6, align 4, !dbg !638
  %88 = load i32, ptr %6, align 4, !dbg !639
  %89 = icmp slt i32 %88, 0, !dbg !641
  br i1 %89, label %90, label %91, !dbg !642

90:                                               ; preds = %84
  br label %105, !dbg !643

91:                                               ; preds = %84
  %92 = load ptr, ptr %10, align 8, !dbg !644
  %93 = load ptr, ptr @self, align 8, !dbg !645
  %94 = load i32, ptr %7, align 4, !dbg !646
  %95 = sext i32 %94 to i64, !dbg !647
  %96 = getelementptr inbounds ptr, ptr %93, i64 %95, !dbg !647
  store ptr %92, ptr %96, align 8, !dbg !648
  %97 = load i64, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 2), align 8, !dbg !649
  %98 = add i64 %97, 1, !dbg !649
  store i64 %98, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 2), align 8, !dbg !649
  call void @nn_glock_unlock(), !dbg !650
  %99 = load i32, ptr %7, align 4, !dbg !651
  store i32 %99, ptr %3, align 4, !dbg !652
  br label %109, !dbg !652

100:                                              ; preds = %65, %58
  br label %101, !dbg !653

101:                                              ; preds = %100
  %102 = load ptr, ptr %8, align 8, !dbg !654
  %103 = call ptr @nn_list_next(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 5), ptr noundef %102), !dbg !655
  store ptr %103, ptr %8, align 8, !dbg !656
  br label %47, !dbg !657, !llvm.loop !658

104:                                              ; preds = %47
  store i32 -22, ptr %6, align 4, !dbg !660
  br label %105, !dbg !661

105:                                              ; preds = %104, %90
  call void @llvm.dbg.label(metadata !662), !dbg !663
  call void @nn_global_term(), !dbg !664
  call void @nn_glock_unlock(), !dbg !665
  %106 = load i32, ptr %6, align 4, !dbg !666
  %107 = sub nsw i32 0, %106, !dbg !667
  %108 = call ptr @__errno_location() #7, !dbg !668
  store i32 %107, ptr %108, align 4, !dbg !669
  store i32 -1, ptr %3, align 4, !dbg !670
  br label %109, !dbg !670

109:                                              ; preds = %105, %91, %36, %28, %15
  %110 = load i32, ptr %3, align 4, !dbg !671
  ret i32 %110, !dbg !671
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_global_init() #0 !dbg !672 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !673, metadata !DIExpression()), !dbg !674
  %2 = load ptr, ptr @self, align 8, !dbg !675
  %3 = icmp ne ptr %2, null, !dbg !677
  br i1 %3, label %4, label %5, !dbg !678

4:                                                ; preds = %0
  br label %83, !dbg !679

5:                                                ; preds = %0
  call void @nn_alloc_init(), !dbg !680
  call void (...) @nn_random_seed(), !dbg !681
  %6 = call ptr @nn_alloc_(i64 noundef 5120), !dbg !682
  store ptr %6, ptr @self, align 8, !dbg !683
  br label %7, !dbg !684

7:                                                ; preds = %5
  %8 = load ptr, ptr @self, align 8, !dbg !685
  %9 = icmp ne ptr %8, null, !dbg !685
  %10 = xor i1 %9, true, !dbg !685
  %11 = zext i1 %10 to i32, !dbg !685
  %12 = sext i32 %11 to i64, !dbg !685
  %13 = icmp ne i64 %12, 0, !dbg !685
  br i1 %13, label %14, label %17, !dbg !688

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !689
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 185), !dbg !689
  call void @nn_err_abort() #8, !dbg !689
  unreachable, !dbg !689

17:                                               ; preds = %7
  br label %18, !dbg !688

18:                                               ; preds = %17
  store i32 0, ptr %1, align 4, !dbg !691
  br label %19, !dbg !693

19:                                               ; preds = %27, %18
  %20 = load i32, ptr %1, align 4, !dbg !694
  %21 = icmp ne i32 %20, 512, !dbg !696
  br i1 %21, label %22, label %30, !dbg !697

22:                                               ; preds = %19
  %23 = load ptr, ptr @self, align 8, !dbg !698
  %24 = load i32, ptr %1, align 4, !dbg !699
  %25 = sext i32 %24 to i64, !dbg !700
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25, !dbg !700
  store ptr null, ptr %26, align 8, !dbg !701
  br label %27, !dbg !700

27:                                               ; preds = %22
  %28 = load i32, ptr %1, align 4, !dbg !702
  %29 = add nsw i32 %28, 1, !dbg !702
  store i32 %29, ptr %1, align 4, !dbg !702
  br label %19, !dbg !703, !llvm.loop !704

30:                                               ; preds = %19
  store i64 0, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 2), align 8, !dbg !706
  store i32 0, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 3), align 8, !dbg !707
  %31 = load ptr, ptr @self, align 8, !dbg !708
  %32 = getelementptr inbounds ptr, ptr %31, i64 512, !dbg !709
  store ptr %32, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 1), align 8, !dbg !710
  br label %33, !dbg !711

33:                                               ; preds = %30
  %34 = load ptr, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 1), align 8, !dbg !712
  %35 = icmp ne ptr %34, null, !dbg !712
  %36 = xor i1 %35, true, !dbg !712
  %37 = zext i1 %36 to i32, !dbg !712
  %38 = sext i32 %37 to i64, !dbg !712
  %39 = icmp ne i64 %38, 0, !dbg !712
  br i1 %39, label %40, label %43, !dbg !715

40:                                               ; preds = %33
  %41 = load ptr, ptr @stderr, align 8, !dbg !716
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 193), !dbg !716
  call void @nn_err_abort() #8, !dbg !716
  unreachable, !dbg !716

43:                                               ; preds = %33
  br label %44, !dbg !715

44:                                               ; preds = %43
  store i32 0, ptr %1, align 4, !dbg !718
  br label %45, !dbg !720

45:                                               ; preds = %57, %44
  %46 = load i32, ptr %1, align 4, !dbg !721
  %47 = icmp ne i32 %46, 512, !dbg !723
  br i1 %47, label %48, label %60, !dbg !724

48:                                               ; preds = %45
  %49 = load i32, ptr %1, align 4, !dbg !725
  %50 = sub nsw i32 512, %49, !dbg !726
  %51 = sub nsw i32 %50, 1, !dbg !727
  %52 = trunc i32 %51 to i16, !dbg !728
  %53 = load ptr, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 1), align 8, !dbg !729
  %54 = load i32, ptr %1, align 4, !dbg !730
  %55 = sext i32 %54 to i64, !dbg !731
  %56 = getelementptr inbounds i16, ptr %53, i64 %55, !dbg !731
  store i16 %52, ptr %56, align 2, !dbg !732
  br label %57, !dbg !731

57:                                               ; preds = %48
  %58 = load i32, ptr %1, align 4, !dbg !733
  %59 = add nsw i32 %58, 1, !dbg !733
  store i32 %59, ptr %1, align 4, !dbg !733
  br label %45, !dbg !734, !llvm.loop !735

60:                                               ; preds = %45
  call void @nn_list_init(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 4)), !dbg !737
  call void @nn_list_init(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 5)), !dbg !738
  %61 = load ptr, ptr @nn_inproc, align 8, !dbg !739
  call void @nn_global_add_transport(ptr noundef %61), !dbg !740
  %62 = load ptr, ptr @nn_ipc, align 8, !dbg !741
  call void @nn_global_add_transport(ptr noundef %62), !dbg !742
  %63 = load ptr, ptr @nn_tcp, align 8, !dbg !743
  call void @nn_global_add_transport(ptr noundef %63), !dbg !744
  %64 = load ptr, ptr @nn_pair_socktype, align 8, !dbg !745
  call void @nn_global_add_socktype(ptr noundef %64), !dbg !746
  %65 = load ptr, ptr @nn_xpair_socktype, align 8, !dbg !747
  call void @nn_global_add_socktype(ptr noundef %65), !dbg !748
  %66 = load ptr, ptr @nn_pub_socktype, align 8, !dbg !749
  call void @nn_global_add_socktype(ptr noundef %66), !dbg !750
  %67 = load ptr, ptr @nn_sub_socktype, align 8, !dbg !751
  call void @nn_global_add_socktype(ptr noundef %67), !dbg !752
  %68 = load ptr, ptr @nn_rep_socktype, align 8, !dbg !753
  call void @nn_global_add_socktype(ptr noundef %68), !dbg !754
  %69 = load ptr, ptr @nn_req_socktype, align 8, !dbg !755
  call void @nn_global_add_socktype(ptr noundef %69), !dbg !756
  %70 = load ptr, ptr @nn_xrep_socktype, align 8, !dbg !757
  call void @nn_global_add_socktype(ptr noundef %70), !dbg !758
  %71 = load ptr, ptr @nn_xreq_socktype, align 8, !dbg !759
  call void @nn_global_add_socktype(ptr noundef %71), !dbg !760
  %72 = load ptr, ptr @nn_push_socktype, align 8, !dbg !761
  call void @nn_global_add_socktype(ptr noundef %72), !dbg !762
  %73 = load ptr, ptr @nn_xpush_socktype, align 8, !dbg !763
  call void @nn_global_add_socktype(ptr noundef %73), !dbg !764
  %74 = load ptr, ptr @nn_pull_socktype, align 8, !dbg !765
  call void @nn_global_add_socktype(ptr noundef %74), !dbg !766
  %75 = load ptr, ptr @nn_xpull_socktype, align 8, !dbg !767
  call void @nn_global_add_socktype(ptr noundef %75), !dbg !768
  %76 = load ptr, ptr @nn_respondent_socktype, align 8, !dbg !769
  call void @nn_global_add_socktype(ptr noundef %76), !dbg !770
  %77 = load ptr, ptr @nn_surveyor_socktype, align 8, !dbg !771
  call void @nn_global_add_socktype(ptr noundef %77), !dbg !772
  %78 = load ptr, ptr @nn_xrespondent_socktype, align 8, !dbg !773
  call void @nn_global_add_socktype(ptr noundef %78), !dbg !774
  %79 = load ptr, ptr @nn_xsurveyor_socktype, align 8, !dbg !775
  call void @nn_global_add_socktype(ptr noundef %79), !dbg !776
  %80 = load ptr, ptr @nn_bus_socktype, align 8, !dbg !777
  call void @nn_global_add_socktype(ptr noundef %80), !dbg !778
  %81 = load ptr, ptr @nn_xbus_socktype, align 8, !dbg !779
  call void @nn_global_add_socktype(ptr noundef %81), !dbg !780
  %82 = call i32 @nn_pool_init(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 6)), !dbg !781
  br label %83, !dbg !782

83:                                               ; preds = %60, %4
  ret void, !dbg !782
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_global_term() #0 !dbg !783 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !784, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.declare(metadata ptr %2, metadata !786, metadata !DIExpression()), !dbg !787
  br label %3, !dbg !788

3:                                                ; preds = %0
  %4 = load ptr, ptr @self, align 8, !dbg !789
  %5 = icmp ne ptr %4, null, !dbg !789
  %6 = xor i1 %5, true, !dbg !789
  %7 = zext i1 %6 to i32, !dbg !789
  %8 = sext i32 %7 to i64, !dbg !789
  %9 = icmp ne i64 %8, 0, !dbg !789
  br i1 %9, label %10, label %13, !dbg !792

10:                                               ; preds = %3
  %11 = load ptr, ptr @stderr, align 8, !dbg !793
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.3, ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 241), !dbg !793
  call void @nn_err_abort() #8, !dbg !793
  unreachable, !dbg !793

13:                                               ; preds = %3
  br label %14, !dbg !792

14:                                               ; preds = %13
  %15 = load i64, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 2), align 8, !dbg !795
  %16 = icmp ugt i64 %15, 0, !dbg !797
  br i1 %16, label %17, label %18, !dbg !798

17:                                               ; preds = %14
  br label %54, !dbg !799

18:                                               ; preds = %14
  call void @nn_pool_term(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 6)), !dbg !800
  br label %19, !dbg !801

19:                                               ; preds = %41, %18
  %20 = call i32 @nn_list_empty(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 4)), !dbg !802
  %21 = icmp ne i32 %20, 0, !dbg !803
  %22 = xor i1 %21, true, !dbg !803
  br i1 %22, label %23, label %44, !dbg !801

23:                                               ; preds = %19
  %24 = call ptr @nn_list_begin(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 4)), !dbg !804
  store ptr %24, ptr %1, align 8, !dbg !806
  %25 = load ptr, ptr %1, align 8, !dbg !807
  %26 = icmp ne ptr %25, null, !dbg !807
  br i1 %26, label %27, label %30, !dbg !807

27:                                               ; preds = %23
  %28 = load ptr, ptr %1, align 8, !dbg !807
  %29 = getelementptr inbounds i8, ptr %28, i64 -56, !dbg !807
  br label %31, !dbg !807

30:                                               ; preds = %23
  br label %31, !dbg !807

31:                                               ; preds = %30, %27
  %32 = phi ptr [ %29, %27 ], [ null, %30 ], !dbg !807
  store ptr %32, ptr %2, align 8, !dbg !808
  %33 = load ptr, ptr %2, align 8, !dbg !809
  %34 = getelementptr inbounds %struct.nn_transport, ptr %33, i32 0, i32 3, !dbg !811
  %35 = load ptr, ptr %34, align 8, !dbg !811
  %36 = icmp ne ptr %35, null, !dbg !809
  br i1 %36, label %37, label %41, !dbg !812

37:                                               ; preds = %31
  %38 = load ptr, ptr %2, align 8, !dbg !813
  %39 = getelementptr inbounds %struct.nn_transport, ptr %38, i32 0, i32 3, !dbg !814
  %40 = load ptr, ptr %39, align 8, !dbg !814
  call void %40(), !dbg !813
  br label %41, !dbg !813

41:                                               ; preds = %37, %31
  %42 = load ptr, ptr %1, align 8, !dbg !815
  %43 = call ptr @nn_list_erase(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 4), ptr noundef %42), !dbg !816
  br label %19, !dbg !801, !llvm.loop !817

44:                                               ; preds = %19
  br label %45, !dbg !819

45:                                               ; preds = %49, %44
  %46 = call i32 @nn_list_empty(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 5)), !dbg !820
  %47 = icmp ne i32 %46, 0, !dbg !821
  %48 = xor i1 %47, true, !dbg !821
  br i1 %48, label %49, label %52, !dbg !819

49:                                               ; preds = %45
  %50 = call ptr @nn_list_begin(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 5)), !dbg !822
  %51 = call ptr @nn_list_erase(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 5), ptr noundef %50), !dbg !823
  br label %45, !dbg !819, !llvm.loop !824

52:                                               ; preds = %45
  call void @nn_list_term(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 5)), !dbg !826
  call void @nn_list_term(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 4)), !dbg !827
  %53 = load ptr, ptr @self, align 8, !dbg !828
  call void @nn_free(ptr noundef %53), !dbg !829
  store ptr null, ptr @self, align 8, !dbg !830
  call void @nn_alloc_term(), !dbg !831
  br label %54, !dbg !832

54:                                               ; preds = %52, %17
  ret void, !dbg !832
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #3

declare ptr @nn_list_begin(ptr noundef) #1

declare ptr @nn_list_end(ptr noundef) #1

declare ptr @nn_alloc_(i64 noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @nn_err_abort() #4

declare i32 @nn_sock_init(ptr noundef, ptr noundef) #1

declare ptr @nn_list_next(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_close(i32 noundef %0) #0 !dbg !833 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !834, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.declare(metadata ptr %4, metadata !836, metadata !DIExpression()), !dbg !837
  %5 = load ptr, ptr @self, align 8, !dbg !838
  %6 = icmp ne ptr %5, null, !dbg !838
  br i1 %6, label %7, label %15, !dbg !838

7:                                                ; preds = %1
  %8 = load ptr, ptr @self, align 8, !dbg !838
  %9 = load i32, ptr %3, align 4, !dbg !838
  %10 = sext i32 %9 to i64, !dbg !838
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10, !dbg !838
  %12 = load ptr, ptr %11, align 8, !dbg !838
  %13 = icmp ne ptr %12, null, !dbg !838
  %14 = xor i1 %13, true, !dbg !838
  br label %15, !dbg !838

15:                                               ; preds = %7, %1
  %16 = phi i1 [ true, %1 ], [ %14, %7 ]
  %17 = zext i1 %16 to i32, !dbg !838
  %18 = sext i32 %17 to i64, !dbg !838
  %19 = icmp ne i64 %18, 0, !dbg !838
  br i1 %19, label %20, label %22, !dbg !840

20:                                               ; preds = %15
  %21 = call ptr @__errno_location() #7, !dbg !841
  store i32 9, ptr %21, align 4, !dbg !841
  store i32 -1, ptr %2, align 4, !dbg !841
  br label %54, !dbg !841

22:                                               ; preds = %15
  call void @nn_glock_lock(), !dbg !843
  %23 = load ptr, ptr @self, align 8, !dbg !844
  %24 = load i32, ptr %3, align 4, !dbg !845
  %25 = sext i32 %24 to i64, !dbg !846
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25, !dbg !846
  %27 = load ptr, ptr %26, align 8, !dbg !846
  %28 = call i32 @nn_sock_term(ptr noundef %27), !dbg !847
  store i32 %28, ptr %4, align 4, !dbg !848
  %29 = load i32, ptr %4, align 4, !dbg !849
  %30 = icmp eq i32 %29, -4, !dbg !849
  %31 = zext i1 %30 to i32, !dbg !849
  %32 = sext i32 %31 to i64, !dbg !849
  %33 = icmp ne i64 %32, 0, !dbg !849
  br i1 %33, label %34, label %36, !dbg !851

34:                                               ; preds = %22
  %35 = call ptr @__errno_location() #7, !dbg !852
  store i32 4, ptr %35, align 4, !dbg !854
  store i32 -1, ptr %2, align 4, !dbg !855
  br label %54, !dbg !855

36:                                               ; preds = %22
  %37 = load ptr, ptr @self, align 8, !dbg !856
  %38 = load i32, ptr %3, align 4, !dbg !857
  %39 = sext i32 %38 to i64, !dbg !858
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39, !dbg !858
  %41 = load ptr, ptr %40, align 8, !dbg !858
  call void @nn_free(ptr noundef %41), !dbg !859
  %42 = load ptr, ptr @self, align 8, !dbg !860
  %43 = load i32, ptr %3, align 4, !dbg !861
  %44 = sext i32 %43 to i64, !dbg !862
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44, !dbg !862
  store ptr null, ptr %45, align 8, !dbg !863
  %46 = load i32, ptr %3, align 4, !dbg !864
  %47 = trunc i32 %46 to i16, !dbg !864
  %48 = load ptr, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 1), align 8, !dbg !865
  %49 = load i64, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 2), align 8, !dbg !866
  %50 = sub i64 512, %49, !dbg !867
  %51 = getelementptr inbounds i16, ptr %48, i64 %50, !dbg !868
  store i16 %47, ptr %51, align 2, !dbg !869
  %52 = load i64, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 2), align 8, !dbg !870
  %53 = add i64 %52, -1, !dbg !870
  store i64 %53, ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 2), align 8, !dbg !870
  call void @nn_global_term(), !dbg !871
  call void @nn_glock_unlock(), !dbg !872
  store i32 0, ptr %2, align 4, !dbg !873
  br label %54, !dbg !873

54:                                               ; preds = %36, %34, %20
  %55 = load i32, ptr %2, align 4, !dbg !874
  ret i32 %55, !dbg !874
}

declare i32 @nn_sock_term(ptr noundef) #1

declare void @nn_free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_setsockopt(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !875 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !878, metadata !DIExpression()), !dbg !879
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !880, metadata !DIExpression()), !dbg !881
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !882, metadata !DIExpression()), !dbg !883
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !884, metadata !DIExpression()), !dbg !885
  store i64 %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !886, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.declare(metadata ptr %12, metadata !888, metadata !DIExpression()), !dbg !889
  %13 = load ptr, ptr @self, align 8, !dbg !890
  %14 = icmp ne ptr %13, null, !dbg !890
  br i1 %14, label %15, label %23, !dbg !890

15:                                               ; preds = %5
  %16 = load ptr, ptr @self, align 8, !dbg !890
  %17 = load i32, ptr %7, align 4, !dbg !890
  %18 = sext i32 %17 to i64, !dbg !890
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18, !dbg !890
  %20 = load ptr, ptr %19, align 8, !dbg !890
  %21 = icmp ne ptr %20, null, !dbg !890
  %22 = xor i1 %21, true, !dbg !890
  br label %23, !dbg !890

23:                                               ; preds = %15, %5
  %24 = phi i1 [ true, %5 ], [ %22, %15 ]
  %25 = zext i1 %24 to i32, !dbg !890
  %26 = sext i32 %25 to i64, !dbg !890
  %27 = icmp ne i64 %26, 0, !dbg !890
  br i1 %27, label %28, label %30, !dbg !892

28:                                               ; preds = %23
  %29 = call ptr @__errno_location() #7, !dbg !893
  store i32 9, ptr %29, align 4, !dbg !893
  store i32 -1, ptr %6, align 4, !dbg !893
  br label %81, !dbg !893

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !dbg !895
  %32 = icmp ne ptr %31, null, !dbg !895
  br i1 %32, label %36, label %33, !dbg !895

33:                                               ; preds = %30
  %34 = load i64, ptr %11, align 8, !dbg !895
  %35 = icmp ne i64 %34, 0, !dbg !895
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ], !dbg !897
  %38 = zext i1 %37 to i32, !dbg !895
  %39 = sext i32 %38 to i64, !dbg !895
  %40 = icmp ne i64 %39, 0, !dbg !895
  br i1 %40, label %41, label %43, !dbg !898

41:                                               ; preds = %36
  %42 = call ptr @__errno_location() #7, !dbg !899
  store i32 14, ptr %42, align 4, !dbg !901
  store i32 -1, ptr %6, align 4, !dbg !902
  br label %81, !dbg !902

43:                                               ; preds = %36
  %44 = load ptr, ptr @self, align 8, !dbg !903
  %45 = load i32, ptr %7, align 4, !dbg !904
  %46 = sext i32 %45 to i64, !dbg !905
  %47 = getelementptr inbounds ptr, ptr %44, i64 %46, !dbg !905
  %48 = load ptr, ptr %47, align 8, !dbg !905
  %49 = load i32, ptr %8, align 4, !dbg !906
  %50 = load i32, ptr %9, align 4, !dbg !907
  %51 = load ptr, ptr %10, align 8, !dbg !908
  %52 = load i64, ptr %11, align 8, !dbg !909
  %53 = call i32 @nn_sock_setopt(ptr noundef %48, i32 noundef %49, i32 noundef %50, ptr noundef %51, i64 noundef %52), !dbg !910
  store i32 %53, ptr %12, align 4, !dbg !911
  %54 = load i32, ptr %12, align 4, !dbg !912
  %55 = icmp slt i32 %54, 0, !dbg !912
  %56 = zext i1 %55 to i32, !dbg !912
  %57 = sext i32 %56 to i64, !dbg !912
  %58 = icmp ne i64 %57, 0, !dbg !912
  br i1 %58, label %59, label %63, !dbg !914

59:                                               ; preds = %43
  %60 = load i32, ptr %12, align 4, !dbg !915
  %61 = sub nsw i32 0, %60, !dbg !917
  %62 = call ptr @__errno_location() #7, !dbg !918
  store i32 %61, ptr %62, align 4, !dbg !919
  store i32 -1, ptr %6, align 4, !dbg !920
  br label %81, !dbg !920

63:                                               ; preds = %43
  br label %64, !dbg !921

64:                                               ; preds = %63
  %65 = load i32, ptr %12, align 4, !dbg !922
  %66 = icmp eq i32 %65, 0, !dbg !922
  %67 = xor i1 %66, true, !dbg !922
  %68 = zext i1 %67 to i32, !dbg !922
  %69 = sext i32 %68 to i64, !dbg !922
  %70 = icmp ne i64 %69, 0, !dbg !922
  br i1 %70, label %71, label %79, !dbg !925

71:                                               ; preds = %64
  %72 = load ptr, ptr @stderr, align 8, !dbg !926
  %73 = load i32, ptr %12, align 4, !dbg !926
  %74 = sub nsw i32 0, %73, !dbg !926
  %75 = call ptr @nn_err_strerror(i32 noundef %74), !dbg !926
  %76 = load i32, ptr %12, align 4, !dbg !926
  %77 = sub nsw i32 0, %76, !dbg !926
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef @.str.2, ptr noundef %75, i32 noundef %77, ptr noundef @.str.1, i32 noundef 430), !dbg !926
  call void @nn_err_abort() #8, !dbg !926
  unreachable, !dbg !926

79:                                               ; preds = %64
  br label %80, !dbg !925

80:                                               ; preds = %79
  store i32 0, ptr %6, align 4, !dbg !928
  br label %81, !dbg !928

81:                                               ; preds = %80, %59, %41, %28
  %82 = load i32, ptr %6, align 4, !dbg !929
  ret i32 %82, !dbg !929
}

declare i32 @nn_sock_setopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_getsockopt(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !930 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  store i32 %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !933, metadata !DIExpression()), !dbg !934
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !935, metadata !DIExpression()), !dbg !936
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !937, metadata !DIExpression()), !dbg !938
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !939, metadata !DIExpression()), !dbg !940
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !941, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.declare(metadata ptr %12, metadata !943, metadata !DIExpression()), !dbg !944
  %13 = load ptr, ptr @self, align 8, !dbg !945
  %14 = icmp ne ptr %13, null, !dbg !945
  br i1 %14, label %15, label %23, !dbg !945

15:                                               ; preds = %5
  %16 = load ptr, ptr @self, align 8, !dbg !945
  %17 = load i32, ptr %7, align 4, !dbg !945
  %18 = sext i32 %17 to i64, !dbg !945
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18, !dbg !945
  %20 = load ptr, ptr %19, align 8, !dbg !945
  %21 = icmp ne ptr %20, null, !dbg !945
  %22 = xor i1 %21, true, !dbg !945
  br label %23, !dbg !945

23:                                               ; preds = %15, %5
  %24 = phi i1 [ true, %5 ], [ %22, %15 ]
  %25 = zext i1 %24 to i32, !dbg !945
  %26 = sext i32 %25 to i64, !dbg !945
  %27 = icmp ne i64 %26, 0, !dbg !945
  br i1 %27, label %28, label %30, !dbg !947

28:                                               ; preds = %23
  %29 = call ptr @__errno_location() #7, !dbg !948
  store i32 9, ptr %29, align 4, !dbg !948
  store i32 -1, ptr %6, align 4, !dbg !948
  br label %81, !dbg !948

30:                                               ; preds = %23
  %31 = load ptr, ptr %10, align 8, !dbg !950
  %32 = icmp ne ptr %31, null, !dbg !950
  br i1 %32, label %36, label %33, !dbg !950

33:                                               ; preds = %30
  %34 = load ptr, ptr %11, align 8, !dbg !950
  %35 = icmp ne ptr %34, null, !dbg !950
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ], !dbg !952
  %38 = zext i1 %37 to i32, !dbg !950
  %39 = sext i32 %38 to i64, !dbg !950
  %40 = icmp ne i64 %39, 0, !dbg !950
  br i1 %40, label %41, label %43, !dbg !953

41:                                               ; preds = %36
  %42 = call ptr @__errno_location() #7, !dbg !954
  store i32 14, ptr %42, align 4, !dbg !956
  store i32 -1, ptr %6, align 4, !dbg !957
  br label %81, !dbg !957

43:                                               ; preds = %36
  %44 = load ptr, ptr @self, align 8, !dbg !958
  %45 = load i32, ptr %7, align 4, !dbg !959
  %46 = sext i32 %45 to i64, !dbg !960
  %47 = getelementptr inbounds ptr, ptr %44, i64 %46, !dbg !960
  %48 = load ptr, ptr %47, align 8, !dbg !960
  %49 = load i32, ptr %8, align 4, !dbg !961
  %50 = load i32, ptr %9, align 4, !dbg !962
  %51 = load ptr, ptr %10, align 8, !dbg !963
  %52 = load ptr, ptr %11, align 8, !dbg !964
  %53 = call i32 @nn_sock_getopt(ptr noundef %48, i32 noundef %49, i32 noundef %50, ptr noundef %51, ptr noundef %52), !dbg !965
  store i32 %53, ptr %12, align 4, !dbg !966
  %54 = load i32, ptr %12, align 4, !dbg !967
  %55 = icmp slt i32 %54, 0, !dbg !967
  %56 = zext i1 %55 to i32, !dbg !967
  %57 = sext i32 %56 to i64, !dbg !967
  %58 = icmp ne i64 %57, 0, !dbg !967
  br i1 %58, label %59, label %63, !dbg !969

59:                                               ; preds = %43
  %60 = load i32, ptr %12, align 4, !dbg !970
  %61 = sub nsw i32 0, %60, !dbg !972
  %62 = call ptr @__errno_location() #7, !dbg !973
  store i32 %61, ptr %62, align 4, !dbg !974
  store i32 -1, ptr %6, align 4, !dbg !975
  br label %81, !dbg !975

63:                                               ; preds = %43
  br label %64, !dbg !976

64:                                               ; preds = %63
  %65 = load i32, ptr %12, align 4, !dbg !977
  %66 = icmp eq i32 %65, 0, !dbg !977
  %67 = xor i1 %66, true, !dbg !977
  %68 = zext i1 %67 to i32, !dbg !977
  %69 = sext i32 %68 to i64, !dbg !977
  %70 = icmp ne i64 %69, 0, !dbg !977
  br i1 %70, label %71, label %79, !dbg !980

71:                                               ; preds = %64
  %72 = load ptr, ptr @stderr, align 8, !dbg !981
  %73 = load i32, ptr %12, align 4, !dbg !981
  %74 = sub nsw i32 0, %73, !dbg !981
  %75 = call ptr @nn_err_strerror(i32 noundef %74), !dbg !981
  %76 = load i32, ptr %12, align 4, !dbg !981
  %77 = sub nsw i32 0, %76, !dbg !981
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef @.str.2, ptr noundef %75, i32 noundef %77, ptr noundef @.str.1, i32 noundef 452), !dbg !981
  call void @nn_err_abort() #8, !dbg !981
  unreachable, !dbg !981

79:                                               ; preds = %64
  br label %80, !dbg !980

80:                                               ; preds = %79
  store i32 0, ptr %6, align 4, !dbg !983
  br label %81, !dbg !983

81:                                               ; preds = %80, %59, %41, %28
  %82 = load i32, ptr %6, align 4, !dbg !984
  ret i32 %82, !dbg !984
}

declare i32 @nn_sock_getopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_bind(i32 noundef %0, ptr noundef %1) #0 !dbg !985 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !988, metadata !DIExpression()), !dbg !989
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !990, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.declare(metadata ptr %6, metadata !992, metadata !DIExpression()), !dbg !993
  %7 = load ptr, ptr @self, align 8, !dbg !994
  %8 = icmp ne ptr %7, null, !dbg !994
  br i1 %8, label %9, label %17, !dbg !994

9:                                                ; preds = %2
  %10 = load ptr, ptr @self, align 8, !dbg !994
  %11 = load i32, ptr %4, align 4, !dbg !994
  %12 = sext i32 %11 to i64, !dbg !994
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12, !dbg !994
  %14 = load ptr, ptr %13, align 8, !dbg !994
  %15 = icmp ne ptr %14, null, !dbg !994
  %16 = xor i1 %15, true, !dbg !994
  br label %17, !dbg !994

17:                                               ; preds = %9, %2
  %18 = phi i1 [ true, %2 ], [ %16, %9 ]
  %19 = zext i1 %18 to i32, !dbg !994
  %20 = sext i32 %19 to i64, !dbg !994
  %21 = icmp ne i64 %20, 0, !dbg !994
  br i1 %21, label %22, label %24, !dbg !996

22:                                               ; preds = %17
  %23 = call ptr @__errno_location() #7, !dbg !997
  store i32 9, ptr %23, align 4, !dbg !997
  store i32 -1, ptr %3, align 4, !dbg !997
  br label %36, !dbg !997

24:                                               ; preds = %17
  %25 = load i32, ptr %4, align 4, !dbg !999
  %26 = load ptr, ptr %5, align 8, !dbg !1000
  %27 = call i32 @nn_global_create_ep(i32 noundef %25, ptr noundef %26, i32 noundef 1), !dbg !1001
  store i32 %27, ptr %6, align 4, !dbg !1002
  %28 = load i32, ptr %6, align 4, !dbg !1003
  %29 = icmp slt i32 %28, 0, !dbg !1005
  br i1 %29, label %30, label %34, !dbg !1006

30:                                               ; preds = %24
  %31 = load i32, ptr %6, align 4, !dbg !1007
  %32 = sub nsw i32 0, %31, !dbg !1009
  %33 = call ptr @__errno_location() #7, !dbg !1010
  store i32 %32, ptr %33, align 4, !dbg !1011
  store i32 -1, ptr %3, align 4, !dbg !1012
  br label %36, !dbg !1012

34:                                               ; preds = %24
  %35 = load i32, ptr %6, align 4, !dbg !1013
  store i32 %35, ptr %3, align 4, !dbg !1014
  br label %36, !dbg !1014

36:                                               ; preds = %34, %30, %22
  %37 = load i32, ptr %3, align 4, !dbg !1015
  ret i32 %37, !dbg !1015
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_global_create_ep(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1016 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1019, metadata !DIExpression()), !dbg !1020
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1021, metadata !DIExpression()), !dbg !1022
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1023, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1025, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1027, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1029, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1031, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1033, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1035, metadata !DIExpression()), !dbg !1036
  %14 = load ptr, ptr %6, align 8, !dbg !1037
  %15 = icmp ne ptr %14, null, !dbg !1037
  br i1 %15, label %17, label %16, !dbg !1039

16:                                               ; preds = %3
  store i32 -22, ptr %4, align 4, !dbg !1040
  br label %100, !dbg !1040

17:                                               ; preds = %3
  %18 = load ptr, ptr %6, align 8, !dbg !1041
  %19 = call i64 @strlen(ptr noundef %18) #9, !dbg !1043
  %20 = icmp uge i64 %19, 128, !dbg !1044
  br i1 %20, label %21, label %22, !dbg !1045

21:                                               ; preds = %17
  store i32 -36, ptr %4, align 4, !dbg !1046
  br label %100, !dbg !1046

22:                                               ; preds = %17
  %23 = load ptr, ptr %6, align 8, !dbg !1047
  store ptr %23, ptr %9, align 8, !dbg !1048
  %24 = load ptr, ptr %6, align 8, !dbg !1049
  %25 = call ptr @strchr(ptr noundef %24, i32 noundef 58) #9, !dbg !1050
  store ptr %25, ptr %10, align 8, !dbg !1051
  %26 = load ptr, ptr %10, align 8, !dbg !1052
  %27 = icmp ne ptr %26, null, !dbg !1052
  br i1 %27, label %29, label %28, !dbg !1054

28:                                               ; preds = %22
  store i32 -22, ptr %4, align 4, !dbg !1055
  br label %100, !dbg !1055

29:                                               ; preds = %22
  %30 = load ptr, ptr %10, align 8, !dbg !1056
  %31 = getelementptr inbounds i8, ptr %30, i64 1, !dbg !1056
  %32 = load i8, ptr %31, align 1, !dbg !1056
  %33 = sext i8 %32 to i32, !dbg !1056
  %34 = icmp ne i32 %33, 47, !dbg !1058
  br i1 %34, label %41, label %35, !dbg !1059

35:                                               ; preds = %29
  %36 = load ptr, ptr %10, align 8, !dbg !1060
  %37 = getelementptr inbounds i8, ptr %36, i64 2, !dbg !1060
  %38 = load i8, ptr %37, align 1, !dbg !1060
  %39 = sext i8 %38 to i32, !dbg !1060
  %40 = icmp ne i32 %39, 47, !dbg !1061
  br i1 %40, label %41, label %42, !dbg !1062

41:                                               ; preds = %35, %29
  store i32 -22, ptr %4, align 4, !dbg !1063
  br label %100, !dbg !1063

42:                                               ; preds = %35
  %43 = load ptr, ptr %10, align 8, !dbg !1064
  %44 = load ptr, ptr %6, align 8, !dbg !1065
  %45 = ptrtoint ptr %43 to i64, !dbg !1066
  %46 = ptrtoint ptr %44 to i64, !dbg !1066
  %47 = sub i64 %45, %46, !dbg !1066
  store i64 %47, ptr %11, align 8, !dbg !1067
  %48 = load i64, ptr %11, align 8, !dbg !1068
  %49 = add i64 %48, 3, !dbg !1069
  %50 = load ptr, ptr %6, align 8, !dbg !1070
  %51 = getelementptr inbounds i8, ptr %50, i64 %49, !dbg !1070
  store ptr %51, ptr %6, align 8, !dbg !1070
  store ptr null, ptr %12, align 8, !dbg !1071
  call void @nn_glock_lock(), !dbg !1072
  %52 = call ptr @nn_list_begin(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 4)), !dbg !1073
  store ptr %52, ptr %13, align 8, !dbg !1075
  br label %53, !dbg !1076

53:                                               ; preds = %82, %42
  %54 = load ptr, ptr %13, align 8, !dbg !1077
  %55 = call ptr @nn_list_end(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 4)), !dbg !1079
  %56 = icmp ne ptr %54, %55, !dbg !1080
  br i1 %56, label %57, label %85, !dbg !1081

57:                                               ; preds = %53
  %58 = load ptr, ptr %13, align 8, !dbg !1082
  %59 = icmp ne ptr %58, null, !dbg !1082
  br i1 %59, label %60, label %63, !dbg !1082

60:                                               ; preds = %57
  %61 = load ptr, ptr %13, align 8, !dbg !1082
  %62 = getelementptr inbounds i8, ptr %61, i64 -56, !dbg !1082
  br label %64, !dbg !1082

63:                                               ; preds = %57
  br label %64, !dbg !1082

64:                                               ; preds = %63, %60
  %65 = phi ptr [ %62, %60 ], [ null, %63 ], !dbg !1082
  store ptr %65, ptr %12, align 8, !dbg !1084
  %66 = load ptr, ptr %12, align 8, !dbg !1085
  %67 = getelementptr inbounds %struct.nn_transport, ptr %66, i32 0, i32 0, !dbg !1087
  %68 = load ptr, ptr %67, align 8, !dbg !1087
  %69 = call i64 @strlen(ptr noundef %68) #9, !dbg !1088
  %70 = load i64, ptr %11, align 8, !dbg !1089
  %71 = icmp eq i64 %69, %70, !dbg !1090
  br i1 %71, label %72, label %81, !dbg !1091

72:                                               ; preds = %64
  %73 = load ptr, ptr %12, align 8, !dbg !1092
  %74 = getelementptr inbounds %struct.nn_transport, ptr %73, i32 0, i32 0, !dbg !1093
  %75 = load ptr, ptr %74, align 8, !dbg !1093
  %76 = load ptr, ptr %9, align 8, !dbg !1094
  %77 = load i64, ptr %11, align 8, !dbg !1095
  %78 = call i32 @memcmp(ptr noundef %75, ptr noundef %76, i64 noundef %77) #9, !dbg !1096
  %79 = icmp eq i32 %78, 0, !dbg !1097
  br i1 %79, label %80, label %81, !dbg !1098

80:                                               ; preds = %72
  br label %85, !dbg !1099

81:                                               ; preds = %72, %64
  store ptr null, ptr %12, align 8, !dbg !1100
  br label %82, !dbg !1101

82:                                               ; preds = %81
  %83 = load ptr, ptr %13, align 8, !dbg !1102
  %84 = call ptr @nn_list_next(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 4), ptr noundef %83), !dbg !1103
  store ptr %84, ptr %13, align 8, !dbg !1104
  br label %53, !dbg !1105, !llvm.loop !1106

85:                                               ; preds = %80, %53
  %86 = load ptr, ptr %12, align 8, !dbg !1108
  %87 = icmp ne ptr %86, null, !dbg !1108
  br i1 %87, label %89, label %88, !dbg !1110

88:                                               ; preds = %85
  call void @nn_glock_unlock(), !dbg !1111
  store i32 -93, ptr %4, align 4, !dbg !1113
  br label %100, !dbg !1113

89:                                               ; preds = %85
  %90 = load ptr, ptr @self, align 8, !dbg !1114
  %91 = load i32, ptr %5, align 4, !dbg !1115
  %92 = sext i32 %91 to i64, !dbg !1116
  %93 = getelementptr inbounds ptr, ptr %90, i64 %92, !dbg !1116
  %94 = load ptr, ptr %93, align 8, !dbg !1116
  %95 = load ptr, ptr %12, align 8, !dbg !1117
  %96 = load i32, ptr %7, align 4, !dbg !1118
  %97 = load ptr, ptr %6, align 8, !dbg !1119
  %98 = call i32 @nn_sock_add_ep(ptr noundef %94, ptr noundef %95, i32 noundef %96, ptr noundef %97), !dbg !1120
  store i32 %98, ptr %8, align 4, !dbg !1121
  call void @nn_glock_unlock(), !dbg !1122
  %99 = load i32, ptr %8, align 4, !dbg !1123
  store i32 %99, ptr %4, align 4, !dbg !1124
  br label %100, !dbg !1124

100:                                              ; preds = %89, %88, %41, %28, %21, %16
  %101 = load i32, ptr %4, align 4, !dbg !1125
  ret i32 %101, !dbg !1125
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_connect(i32 noundef %0, ptr noundef %1) #0 !dbg !1126 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1127, metadata !DIExpression()), !dbg !1128
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1129, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1131, metadata !DIExpression()), !dbg !1132
  %7 = load ptr, ptr @self, align 8, !dbg !1133
  %8 = icmp ne ptr %7, null, !dbg !1133
  br i1 %8, label %9, label %17, !dbg !1133

9:                                                ; preds = %2
  %10 = load ptr, ptr @self, align 8, !dbg !1133
  %11 = load i32, ptr %4, align 4, !dbg !1133
  %12 = sext i32 %11 to i64, !dbg !1133
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12, !dbg !1133
  %14 = load ptr, ptr %13, align 8, !dbg !1133
  %15 = icmp ne ptr %14, null, !dbg !1133
  %16 = xor i1 %15, true, !dbg !1133
  br label %17, !dbg !1133

17:                                               ; preds = %9, %2
  %18 = phi i1 [ true, %2 ], [ %16, %9 ]
  %19 = zext i1 %18 to i32, !dbg !1133
  %20 = sext i32 %19 to i64, !dbg !1133
  %21 = icmp ne i64 %20, 0, !dbg !1133
  br i1 %21, label %22, label %24, !dbg !1135

22:                                               ; preds = %17
  %23 = call ptr @__errno_location() #7, !dbg !1136
  store i32 9, ptr %23, align 4, !dbg !1136
  store i32 -1, ptr %3, align 4, !dbg !1136
  br label %36, !dbg !1136

24:                                               ; preds = %17
  %25 = load i32, ptr %4, align 4, !dbg !1138
  %26 = load ptr, ptr %5, align 8, !dbg !1139
  %27 = call i32 @nn_global_create_ep(i32 noundef %25, ptr noundef %26, i32 noundef 0), !dbg !1140
  store i32 %27, ptr %6, align 4, !dbg !1141
  %28 = load i32, ptr %6, align 4, !dbg !1142
  %29 = icmp slt i32 %28, 0, !dbg !1144
  br i1 %29, label %30, label %34, !dbg !1145

30:                                               ; preds = %24
  %31 = load i32, ptr %6, align 4, !dbg !1146
  %32 = sub nsw i32 0, %31, !dbg !1148
  %33 = call ptr @__errno_location() #7, !dbg !1149
  store i32 %32, ptr %33, align 4, !dbg !1150
  store i32 -1, ptr %3, align 4, !dbg !1151
  br label %36, !dbg !1151

34:                                               ; preds = %24
  %35 = load i32, ptr %6, align 4, !dbg !1152
  store i32 %35, ptr %3, align 4, !dbg !1153
  br label %36, !dbg !1153

36:                                               ; preds = %34, %30, %22
  %37 = load i32, ptr %3, align 4, !dbg !1154
  ret i32 %37, !dbg !1154
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_shutdown(i32 noundef %0, i32 noundef %1) #0 !dbg !1155 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1156, metadata !DIExpression()), !dbg !1157
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1158, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1160, metadata !DIExpression()), !dbg !1161
  %7 = load ptr, ptr @self, align 8, !dbg !1162
  %8 = icmp ne ptr %7, null, !dbg !1162
  br i1 %8, label %9, label %17, !dbg !1162

9:                                                ; preds = %2
  %10 = load ptr, ptr @self, align 8, !dbg !1162
  %11 = load i32, ptr %4, align 4, !dbg !1162
  %12 = sext i32 %11 to i64, !dbg !1162
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12, !dbg !1162
  %14 = load ptr, ptr %13, align 8, !dbg !1162
  %15 = icmp ne ptr %14, null, !dbg !1162
  %16 = xor i1 %15, true, !dbg !1162
  br label %17, !dbg !1162

17:                                               ; preds = %9, %2
  %18 = phi i1 [ true, %2 ], [ %16, %9 ]
  %19 = zext i1 %18 to i32, !dbg !1162
  %20 = sext i32 %19 to i64, !dbg !1162
  %21 = icmp ne i64 %20, 0, !dbg !1162
  br i1 %21, label %22, label %24, !dbg !1164

22:                                               ; preds = %17
  %23 = call ptr @__errno_location() #7, !dbg !1165
  store i32 9, ptr %23, align 4, !dbg !1165
  store i32 -1, ptr %3, align 4, !dbg !1165
  br label %54, !dbg !1165

24:                                               ; preds = %17
  %25 = load ptr, ptr @self, align 8, !dbg !1167
  %26 = load i32, ptr %4, align 4, !dbg !1168
  %27 = sext i32 %26 to i64, !dbg !1169
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27, !dbg !1169
  %29 = load ptr, ptr %28, align 8, !dbg !1169
  %30 = load i32, ptr %5, align 4, !dbg !1170
  %31 = call i32 @nn_sock_rm_ep(ptr noundef %29, i32 noundef %30), !dbg !1171
  store i32 %31, ptr %6, align 4, !dbg !1172
  %32 = load i32, ptr %6, align 4, !dbg !1173
  %33 = icmp slt i32 %32, 0, !dbg !1173
  %34 = zext i1 %33 to i32, !dbg !1173
  %35 = sext i32 %34 to i64, !dbg !1173
  %36 = icmp ne i64 %35, 0, !dbg !1173
  br i1 %36, label %37, label %41, !dbg !1175

37:                                               ; preds = %24
  %38 = load i32, ptr %6, align 4, !dbg !1176
  %39 = sub nsw i32 0, %38, !dbg !1178
  %40 = call ptr @__errno_location() #7, !dbg !1179
  store i32 %39, ptr %40, align 4, !dbg !1180
  store i32 -1, ptr %3, align 4, !dbg !1181
  br label %54, !dbg !1181

41:                                               ; preds = %24
  br label %42, !dbg !1182

42:                                               ; preds = %41
  %43 = load i32, ptr %6, align 4, !dbg !1183
  %44 = icmp eq i32 %43, 0, !dbg !1183
  %45 = xor i1 %44, true, !dbg !1183
  %46 = zext i1 %45 to i32, !dbg !1183
  %47 = sext i32 %46 to i64, !dbg !1183
  %48 = icmp ne i64 %47, 0, !dbg !1183
  br i1 %48, label %49, label %52, !dbg !1186

49:                                               ; preds = %42
  %50 = load ptr, ptr @stderr, align 8, !dbg !1187
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 498), !dbg !1187
  call void @nn_err_abort() #8, !dbg !1187
  unreachable, !dbg !1187

52:                                               ; preds = %42
  br label %53, !dbg !1186

53:                                               ; preds = %52
  store i32 0, ptr %3, align 4, !dbg !1189
  br label %54, !dbg !1189

54:                                               ; preds = %53, %37, %22
  %55 = load i32, ptr %3, align 4, !dbg !1190
  ret i32 %55, !dbg !1190
}

declare i32 @nn_sock_rm_ep(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_send(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 !dbg !1191 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nn_msg, align 1
  %12 = alloca ptr, align 8
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1194, metadata !DIExpression()), !dbg !1195
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1196, metadata !DIExpression()), !dbg !1197
  store i64 %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1198, metadata !DIExpression()), !dbg !1199
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1200, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1202, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1204, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1206, metadata !DIExpression()), !dbg !1207
  %13 = load ptr, ptr @self, align 8, !dbg !1208
  %14 = icmp ne ptr %13, null, !dbg !1208
  br i1 %14, label %15, label %23, !dbg !1208

15:                                               ; preds = %4
  %16 = load ptr, ptr @self, align 8, !dbg !1208
  %17 = load i32, ptr %6, align 4, !dbg !1208
  %18 = sext i32 %17 to i64, !dbg !1208
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18, !dbg !1208
  %20 = load ptr, ptr %19, align 8, !dbg !1208
  %21 = icmp ne ptr %20, null, !dbg !1208
  %22 = xor i1 %21, true, !dbg !1208
  br label %23, !dbg !1208

23:                                               ; preds = %15, %4
  %24 = phi i1 [ true, %4 ], [ %22, %15 ]
  %25 = zext i1 %24 to i32, !dbg !1208
  %26 = sext i32 %25 to i64, !dbg !1208
  %27 = icmp ne i64 %26, 0, !dbg !1208
  br i1 %27, label %28, label %30, !dbg !1210

28:                                               ; preds = %23
  %29 = call ptr @__errno_location() #7, !dbg !1211
  store i32 9, ptr %29, align 4, !dbg !1211
  store i32 -1, ptr %5, align 4, !dbg !1211
  br label %86, !dbg !1211

30:                                               ; preds = %23
  %31 = load ptr, ptr %7, align 8, !dbg !1213
  %32 = icmp ne ptr %31, null, !dbg !1213
  br i1 %32, label %36, label %33, !dbg !1213

33:                                               ; preds = %30
  %34 = load i64, ptr %8, align 8, !dbg !1213
  %35 = icmp ne i64 %34, 0, !dbg !1213
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ], !dbg !1215
  %38 = zext i1 %37 to i32, !dbg !1213
  %39 = sext i32 %38 to i64, !dbg !1213
  %40 = icmp ne i64 %39, 0, !dbg !1213
  br i1 %40, label %41, label %43, !dbg !1216

41:                                               ; preds = %36
  %42 = call ptr @__errno_location() #7, !dbg !1217
  store i32 14, ptr %42, align 4, !dbg !1219
  store i32 -1, ptr %5, align 4, !dbg !1220
  br label %86, !dbg !1220

43:                                               ; preds = %36
  %44 = load i64, ptr %8, align 8, !dbg !1221
  %45 = icmp eq i64 %44, -1, !dbg !1223
  br i1 %45, label %46, label %60, !dbg !1224

46:                                               ; preds = %43
  %47 = load ptr, ptr %7, align 8, !dbg !1225
  %48 = load ptr, ptr %47, align 8, !dbg !1227
  store ptr %48, ptr %12, align 8, !dbg !1228
  %49 = load ptr, ptr %12, align 8, !dbg !1229
  %50 = icmp eq ptr %49, null, !dbg !1229
  %51 = zext i1 %50 to i32, !dbg !1229
  %52 = sext i32 %51 to i64, !dbg !1229
  %53 = icmp ne i64 %52, 0, !dbg !1229
  br i1 %53, label %54, label %56, !dbg !1231

54:                                               ; preds = %46
  %55 = call ptr @__errno_location() #7, !dbg !1232
  store i32 14, ptr %55, align 4, !dbg !1234
  store i32 -1, ptr %5, align 4, !dbg !1235
  br label %86, !dbg !1235

56:                                               ; preds = %46
  %57 = load ptr, ptr %12, align 8, !dbg !1236
  %58 = call i64 @nn_chunk_size(ptr noundef %57), !dbg !1237
  store i64 %58, ptr %8, align 8, !dbg !1238
  %59 = load ptr, ptr %12, align 8, !dbg !1239
  call void @nn_msg_init_chunk(ptr noundef %11, ptr noundef %59), !dbg !1240
  br label %66, !dbg !1241

60:                                               ; preds = %43
  %61 = load i64, ptr %8, align 8, !dbg !1242
  call void @nn_msg_init(ptr noundef %11, i64 noundef %61), !dbg !1244
  %62 = getelementptr inbounds %struct.nn_msg, ptr %11, i32 0, i32 1, !dbg !1245
  %63 = call ptr @nn_chunkref_data(ptr noundef %62), !dbg !1246
  %64 = load ptr, ptr %7, align 8, !dbg !1247
  %65 = load i64, ptr %8, align 8, !dbg !1248
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %64, i64 %65, i1 false), !dbg !1249
  br label %66

66:                                               ; preds = %60, %56
  %67 = load ptr, ptr @self, align 8, !dbg !1250
  %68 = load i32, ptr %6, align 4, !dbg !1251
  %69 = sext i32 %68 to i64, !dbg !1252
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69, !dbg !1252
  %71 = load ptr, ptr %70, align 8, !dbg !1252
  %72 = load i32, ptr %9, align 4, !dbg !1253
  %73 = call i32 @nn_sock_send(ptr noundef %71, ptr noundef %11, i32 noundef %72), !dbg !1254
  store i32 %73, ptr %10, align 4, !dbg !1255
  %74 = load i32, ptr %10, align 4, !dbg !1256
  %75 = icmp slt i32 %74, 0, !dbg !1256
  %76 = zext i1 %75 to i32, !dbg !1256
  %77 = sext i32 %76 to i64, !dbg !1256
  %78 = icmp ne i64 %77, 0, !dbg !1256
  br i1 %78, label %79, label %83, !dbg !1258

79:                                               ; preds = %66
  call void @nn_msg_term(ptr noundef %11), !dbg !1259
  %80 = load i32, ptr %10, align 4, !dbg !1261
  %81 = sub nsw i32 0, %80, !dbg !1262
  %82 = call ptr @__errno_location() #7, !dbg !1263
  store i32 %81, ptr %82, align 4, !dbg !1264
  store i32 -1, ptr %5, align 4, !dbg !1265
  br label %86, !dbg !1265

83:                                               ; preds = %66
  %84 = load i64, ptr %8, align 8, !dbg !1266
  %85 = trunc i64 %84 to i32, !dbg !1267
  store i32 %85, ptr %5, align 4, !dbg !1268
  br label %86, !dbg !1268

86:                                               ; preds = %83, %79, %54, %41, %28
  %87 = load i32, ptr %5, align 4, !dbg !1269
  ret i32 %87, !dbg !1269
}

declare i64 @nn_chunk_size(ptr noundef) #1

declare void @nn_msg_init_chunk(ptr noundef, ptr noundef) #1

declare void @nn_msg_init(ptr noundef, i64 noundef) #1

declare ptr @nn_chunkref_data(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @nn_sock_send(ptr noundef, ptr noundef, i32 noundef) #1

declare void @nn_msg_term(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_recv(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 !dbg !1270 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nn_msg, align 1
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1273, metadata !DIExpression()), !dbg !1274
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1275, metadata !DIExpression()), !dbg !1276
  store i64 %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1277, metadata !DIExpression()), !dbg !1278
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1279, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1281, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1283, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1285, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1287, metadata !DIExpression()), !dbg !1288
  %14 = load ptr, ptr @self, align 8, !dbg !1289
  %15 = icmp ne ptr %14, null, !dbg !1289
  br i1 %15, label %16, label %24, !dbg !1289

16:                                               ; preds = %4
  %17 = load ptr, ptr @self, align 8, !dbg !1289
  %18 = load i32, ptr %6, align 4, !dbg !1289
  %19 = sext i32 %18 to i64, !dbg !1289
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19, !dbg !1289
  %21 = load ptr, ptr %20, align 8, !dbg !1289
  %22 = icmp ne ptr %21, null, !dbg !1289
  %23 = xor i1 %22, true, !dbg !1289
  br label %24, !dbg !1289

24:                                               ; preds = %16, %4
  %25 = phi i1 [ true, %4 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32, !dbg !1289
  %27 = sext i32 %26 to i64, !dbg !1289
  %28 = icmp ne i64 %27, 0, !dbg !1289
  br i1 %28, label %29, label %31, !dbg !1291

29:                                               ; preds = %24
  %30 = call ptr @__errno_location() #7, !dbg !1292
  store i32 9, ptr %30, align 4, !dbg !1292
  store i32 -1, ptr %5, align 4, !dbg !1292
  br label %89, !dbg !1292

31:                                               ; preds = %24
  %32 = load ptr, ptr %7, align 8, !dbg !1294
  %33 = icmp ne ptr %32, null, !dbg !1294
  br i1 %33, label %37, label %34, !dbg !1294

34:                                               ; preds = %31
  %35 = load i64, ptr %8, align 8, !dbg !1294
  %36 = icmp ne i64 %35, 0, !dbg !1294
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i1 [ false, %31 ], [ %36, %34 ], !dbg !1296
  %39 = zext i1 %38 to i32, !dbg !1294
  %40 = sext i32 %39 to i64, !dbg !1294
  %41 = icmp ne i64 %40, 0, !dbg !1294
  br i1 %41, label %42, label %44, !dbg !1297

42:                                               ; preds = %37
  %43 = call ptr @__errno_location() #7, !dbg !1298
  store i32 14, ptr %43, align 4, !dbg !1300
  store i32 -1, ptr %5, align 4, !dbg !1301
  br label %89, !dbg !1301

44:                                               ; preds = %37
  %45 = load ptr, ptr @self, align 8, !dbg !1302
  %46 = load i32, ptr %6, align 4, !dbg !1303
  %47 = sext i32 %46 to i64, !dbg !1304
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47, !dbg !1304
  %49 = load ptr, ptr %48, align 8, !dbg !1304
  %50 = load i32, ptr %9, align 4, !dbg !1305
  %51 = call i32 @nn_sock_recv(ptr noundef %49, ptr noundef %11, i32 noundef %50), !dbg !1306
  store i32 %51, ptr %10, align 4, !dbg !1307
  %52 = load i32, ptr %10, align 4, !dbg !1308
  %53 = icmp slt i32 %52, 0, !dbg !1308
  %54 = zext i1 %53 to i32, !dbg !1308
  %55 = sext i32 %54 to i64, !dbg !1308
  %56 = icmp ne i64 %55, 0, !dbg !1308
  br i1 %56, label %57, label %61, !dbg !1310

57:                                               ; preds = %44
  %58 = load i32, ptr %10, align 4, !dbg !1311
  %59 = sub nsw i32 0, %58, !dbg !1313
  %60 = call ptr @__errno_location() #7, !dbg !1314
  store i32 %59, ptr %60, align 4, !dbg !1315
  store i32 -1, ptr %5, align 4, !dbg !1316
  br label %89, !dbg !1316

61:                                               ; preds = %44
  %62 = load i64, ptr %8, align 8, !dbg !1317
  %63 = icmp eq i64 %62, -1, !dbg !1319
  br i1 %63, label %64, label %71, !dbg !1320

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.nn_msg, ptr %11, i32 0, i32 1, !dbg !1321
  %66 = call ptr @nn_chunkref_getchunk(ptr noundef %65), !dbg !1323
  store ptr %66, ptr %13, align 8, !dbg !1324
  %67 = load ptr, ptr %13, align 8, !dbg !1325
  %68 = load ptr, ptr %7, align 8, !dbg !1326
  store ptr %67, ptr %68, align 8, !dbg !1327
  %69 = load ptr, ptr %13, align 8, !dbg !1328
  %70 = call i64 @nn_chunk_size(ptr noundef %69), !dbg !1329
  store i64 %70, ptr %12, align 8, !dbg !1330
  br label %86, !dbg !1331

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.nn_msg, ptr %11, i32 0, i32 1, !dbg !1332
  %73 = call i64 @nn_chunkref_size(ptr noundef %72), !dbg !1334
  store i64 %73, ptr %12, align 8, !dbg !1335
  %74 = load ptr, ptr %7, align 8, !dbg !1336
  %75 = getelementptr inbounds %struct.nn_msg, ptr %11, i32 0, i32 1, !dbg !1337
  %76 = call ptr @nn_chunkref_data(ptr noundef %75), !dbg !1338
  %77 = load i64, ptr %8, align 8, !dbg !1339
  %78 = load i64, ptr %12, align 8, !dbg !1340
  %79 = icmp ult i64 %77, %78, !dbg !1341
  br i1 %79, label %80, label %82, !dbg !1339

80:                                               ; preds = %71
  %81 = load i64, ptr %8, align 8, !dbg !1342
  br label %84, !dbg !1339

82:                                               ; preds = %71
  %83 = load i64, ptr %12, align 8, !dbg !1343
  br label %84, !dbg !1339

84:                                               ; preds = %82, %80
  %85 = phi i64 [ %81, %80 ], [ %83, %82 ], !dbg !1339
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %74, ptr align 1 %76, i64 %85, i1 false), !dbg !1344
  br label %86

86:                                               ; preds = %84, %64
  call void @nn_msg_term(ptr noundef %11), !dbg !1345
  %87 = load i64, ptr %12, align 8, !dbg !1346
  %88 = trunc i64 %87 to i32, !dbg !1347
  store i32 %88, ptr %5, align 4, !dbg !1348
  br label %89, !dbg !1348

89:                                               ; preds = %86, %57, %42, %29
  %90 = load i32, ptr %5, align 4, !dbg !1349
  ret i32 %90, !dbg !1349
}

declare i32 @nn_sock_recv(ptr noundef, ptr noundef, i32 noundef) #1

declare ptr @nn_chunkref_getchunk(ptr noundef) #1

declare i64 @nn_chunkref_size(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sendmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1350 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca %struct.nn_msg, align 1
  %13 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1353, metadata !DIExpression()), !dbg !1354
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1355, metadata !DIExpression()), !dbg !1356
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1357, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1359, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1361, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1363, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1365, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1367, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1369, metadata !DIExpression()), !dbg !1370
  %14 = load ptr, ptr @self, align 8, !dbg !1371
  %15 = icmp ne ptr %14, null, !dbg !1371
  br i1 %15, label %16, label %24, !dbg !1371

16:                                               ; preds = %3
  %17 = load ptr, ptr @self, align 8, !dbg !1371
  %18 = load i32, ptr %5, align 4, !dbg !1371
  %19 = sext i32 %18 to i64, !dbg !1371
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19, !dbg !1371
  %21 = load ptr, ptr %20, align 8, !dbg !1371
  %22 = icmp ne ptr %21, null, !dbg !1371
  %23 = xor i1 %22, true, !dbg !1371
  br label %24, !dbg !1371

24:                                               ; preds = %16, %3
  %25 = phi i1 [ true, %3 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32, !dbg !1371
  %27 = sext i32 %26 to i64, !dbg !1371
  %28 = icmp ne i64 %27, 0, !dbg !1371
  br i1 %28, label %29, label %31, !dbg !1373

29:                                               ; preds = %24
  %30 = call ptr @__errno_location() #7, !dbg !1374
  store i32 9, ptr %30, align 4, !dbg !1374
  store i32 -1, ptr %4, align 4, !dbg !1374
  br label %222, !dbg !1374

31:                                               ; preds = %24
  %32 = load ptr, ptr %6, align 8, !dbg !1376
  %33 = icmp ne ptr %32, null, !dbg !1376
  %34 = xor i1 %33, true, !dbg !1376
  %35 = zext i1 %34 to i32, !dbg !1376
  %36 = sext i32 %35 to i64, !dbg !1376
  %37 = icmp ne i64 %36, 0, !dbg !1376
  br i1 %37, label %38, label %40, !dbg !1378

38:                                               ; preds = %31
  %39 = call ptr @__errno_location() #7, !dbg !1379
  store i32 22, ptr %39, align 4, !dbg !1381
  store i32 -1, ptr %4, align 4, !dbg !1382
  br label %222, !dbg !1382

40:                                               ; preds = %31
  %41 = load ptr, ptr %6, align 8, !dbg !1383
  %42 = getelementptr inbounds %struct.nn_msghdr, ptr %41, i32 0, i32 1, !dbg !1383
  %43 = load i32, ptr %42, align 8, !dbg !1383
  %44 = icmp slt i32 %43, 0, !dbg !1383
  %45 = zext i1 %44 to i32, !dbg !1383
  %46 = sext i32 %45 to i64, !dbg !1383
  %47 = icmp ne i64 %46, 0, !dbg !1383
  br i1 %47, label %48, label %50, !dbg !1385

48:                                               ; preds = %40
  %49 = call ptr @__errno_location() #7, !dbg !1386
  store i32 90, ptr %49, align 4, !dbg !1388
  store i32 -1, ptr %4, align 4, !dbg !1389
  br label %222, !dbg !1389

50:                                               ; preds = %40
  %51 = load ptr, ptr %6, align 8, !dbg !1390
  %52 = getelementptr inbounds %struct.nn_msghdr, ptr %51, i32 0, i32 1, !dbg !1392
  %53 = load i32, ptr %52, align 8, !dbg !1392
  %54 = icmp eq i32 %53, 1, !dbg !1393
  br i1 %54, label %55, label %82, !dbg !1394

55:                                               ; preds = %50
  %56 = load ptr, ptr %6, align 8, !dbg !1395
  %57 = getelementptr inbounds %struct.nn_msghdr, ptr %56, i32 0, i32 0, !dbg !1396
  %58 = load ptr, ptr %57, align 8, !dbg !1396
  %59 = getelementptr inbounds %struct.nn_iovec, ptr %58, i64 0, !dbg !1395
  %60 = getelementptr inbounds %struct.nn_iovec, ptr %59, i32 0, i32 1, !dbg !1397
  %61 = load i64, ptr %60, align 8, !dbg !1397
  %62 = icmp eq i64 %61, -1, !dbg !1398
  br i1 %62, label %63, label %82, !dbg !1399

63:                                               ; preds = %55
  %64 = load ptr, ptr %6, align 8, !dbg !1400
  %65 = getelementptr inbounds %struct.nn_msghdr, ptr %64, i32 0, i32 0, !dbg !1402
  %66 = load ptr, ptr %65, align 8, !dbg !1402
  %67 = getelementptr inbounds %struct.nn_iovec, ptr %66, i64 0, !dbg !1400
  %68 = getelementptr inbounds %struct.nn_iovec, ptr %67, i32 0, i32 0, !dbg !1403
  %69 = load ptr, ptr %68, align 8, !dbg !1403
  %70 = load ptr, ptr %69, align 8, !dbg !1404
  store ptr %70, ptr %13, align 8, !dbg !1405
  %71 = load ptr, ptr %13, align 8, !dbg !1406
  %72 = icmp eq ptr %71, null, !dbg !1406
  %73 = zext i1 %72 to i32, !dbg !1406
  %74 = sext i32 %73 to i64, !dbg !1406
  %75 = icmp ne i64 %74, 0, !dbg !1406
  br i1 %75, label %76, label %78, !dbg !1408

76:                                               ; preds = %63
  %77 = call ptr @__errno_location() #7, !dbg !1409
  store i32 14, ptr %77, align 4, !dbg !1411
  store i32 -1, ptr %4, align 4, !dbg !1412
  br label %222, !dbg !1412

78:                                               ; preds = %63
  %79 = load ptr, ptr %13, align 8, !dbg !1413
  %80 = call i64 @nn_chunk_size(ptr noundef %79), !dbg !1414
  store i64 %80, ptr %9, align 8, !dbg !1415
  %81 = load ptr, ptr %13, align 8, !dbg !1416
  call void @nn_msg_init_chunk(ptr noundef %12, ptr noundef %81), !dbg !1417
  br label %178, !dbg !1418

82:                                               ; preds = %55, %50
  store i64 0, ptr %9, align 8, !dbg !1419
  store i32 0, ptr %10, align 4, !dbg !1421
  br label %83, !dbg !1423

83:                                               ; preds = %141, %82
  %84 = load i32, ptr %10, align 4, !dbg !1424
  %85 = load ptr, ptr %6, align 8, !dbg !1426
  %86 = getelementptr inbounds %struct.nn_msghdr, ptr %85, i32 0, i32 1, !dbg !1427
  %87 = load i32, ptr %86, align 8, !dbg !1427
  %88 = icmp ne i32 %84, %87, !dbg !1428
  br i1 %88, label %89, label %144, !dbg !1429

89:                                               ; preds = %83
  %90 = load ptr, ptr %6, align 8, !dbg !1430
  %91 = getelementptr inbounds %struct.nn_msghdr, ptr %90, i32 0, i32 0, !dbg !1432
  %92 = load ptr, ptr %91, align 8, !dbg !1432
  %93 = load i32, ptr %10, align 4, !dbg !1433
  %94 = sext i32 %93 to i64, !dbg !1430
  %95 = getelementptr inbounds %struct.nn_iovec, ptr %92, i64 %94, !dbg !1430
  store ptr %95, ptr %11, align 8, !dbg !1434
  %96 = load ptr, ptr %11, align 8, !dbg !1435
  %97 = getelementptr inbounds %struct.nn_iovec, ptr %96, i32 0, i32 1, !dbg !1435
  %98 = load i64, ptr %97, align 8, !dbg !1435
  %99 = icmp eq i64 %98, -1, !dbg !1435
  %100 = zext i1 %99 to i32, !dbg !1435
  %101 = sext i32 %100 to i64, !dbg !1435
  %102 = icmp ne i64 %101, 0, !dbg !1435
  br i1 %102, label %103, label %105, !dbg !1437

103:                                              ; preds = %89
  %104 = call ptr @__errno_location() #7, !dbg !1438
  store i32 22, ptr %104, align 4, !dbg !1440
  store i32 -1, ptr %4, align 4, !dbg !1441
  br label %222, !dbg !1441

105:                                              ; preds = %89
  %106 = load ptr, ptr %11, align 8, !dbg !1442
  %107 = getelementptr inbounds %struct.nn_iovec, ptr %106, i32 0, i32 0, !dbg !1442
  %108 = load ptr, ptr %107, align 8, !dbg !1442
  %109 = icmp ne ptr %108, null, !dbg !1442
  br i1 %109, label %115, label %110, !dbg !1442

110:                                              ; preds = %105
  %111 = load ptr, ptr %11, align 8, !dbg !1442
  %112 = getelementptr inbounds %struct.nn_iovec, ptr %111, i32 0, i32 1, !dbg !1442
  %113 = load i64, ptr %112, align 8, !dbg !1442
  %114 = icmp ne i64 %113, 0, !dbg !1442
  br label %115

115:                                              ; preds = %110, %105
  %116 = phi i1 [ false, %105 ], [ %114, %110 ], !dbg !1444
  %117 = zext i1 %116 to i32, !dbg !1442
  %118 = sext i32 %117 to i64, !dbg !1442
  %119 = icmp ne i64 %118, 0, !dbg !1442
  br i1 %119, label %120, label %122, !dbg !1445

120:                                              ; preds = %115
  %121 = call ptr @__errno_location() #7, !dbg !1446
  store i32 14, ptr %121, align 4, !dbg !1448
  store i32 -1, ptr %4, align 4, !dbg !1449
  br label %222, !dbg !1449

122:                                              ; preds = %115
  %123 = load i64, ptr %9, align 8, !dbg !1450
  %124 = load ptr, ptr %11, align 8, !dbg !1450
  %125 = getelementptr inbounds %struct.nn_iovec, ptr %124, i32 0, i32 1, !dbg !1450
  %126 = load i64, ptr %125, align 8, !dbg !1450
  %127 = add i64 %123, %126, !dbg !1450
  %128 = load i64, ptr %9, align 8, !dbg !1450
  %129 = icmp ult i64 %127, %128, !dbg !1450
  %130 = zext i1 %129 to i32, !dbg !1450
  %131 = sext i32 %130 to i64, !dbg !1450
  %132 = icmp ne i64 %131, 0, !dbg !1450
  br i1 %132, label %133, label %135, !dbg !1452

133:                                              ; preds = %122
  %134 = call ptr @__errno_location() #7, !dbg !1453
  store i32 22, ptr %134, align 4, !dbg !1455
  store i32 -1, ptr %4, align 4, !dbg !1456
  br label %222, !dbg !1456

135:                                              ; preds = %122
  %136 = load ptr, ptr %11, align 8, !dbg !1457
  %137 = getelementptr inbounds %struct.nn_iovec, ptr %136, i32 0, i32 1, !dbg !1458
  %138 = load i64, ptr %137, align 8, !dbg !1458
  %139 = load i64, ptr %9, align 8, !dbg !1459
  %140 = add i64 %139, %138, !dbg !1459
  store i64 %140, ptr %9, align 8, !dbg !1459
  br label %141, !dbg !1460

141:                                              ; preds = %135
  %142 = load i32, ptr %10, align 4, !dbg !1461
  %143 = add nsw i32 %142, 1, !dbg !1461
  store i32 %143, ptr %10, align 4, !dbg !1461
  br label %83, !dbg !1462, !llvm.loop !1463

144:                                              ; preds = %83
  %145 = load i64, ptr %9, align 8, !dbg !1465
  call void @nn_msg_init(ptr noundef %12, i64 noundef %145), !dbg !1466
  store i64 0, ptr %9, align 8, !dbg !1467
  store i32 0, ptr %10, align 4, !dbg !1468
  br label %146, !dbg !1470

146:                                              ; preds = %174, %144
  %147 = load i32, ptr %10, align 4, !dbg !1471
  %148 = load ptr, ptr %6, align 8, !dbg !1473
  %149 = getelementptr inbounds %struct.nn_msghdr, ptr %148, i32 0, i32 1, !dbg !1474
  %150 = load i32, ptr %149, align 8, !dbg !1474
  %151 = icmp ne i32 %147, %150, !dbg !1475
  br i1 %151, label %152, label %177, !dbg !1476

152:                                              ; preds = %146
  %153 = load ptr, ptr %6, align 8, !dbg !1477
  %154 = getelementptr inbounds %struct.nn_msghdr, ptr %153, i32 0, i32 0, !dbg !1479
  %155 = load ptr, ptr %154, align 8, !dbg !1479
  %156 = load i32, ptr %10, align 4, !dbg !1480
  %157 = sext i32 %156 to i64, !dbg !1477
  %158 = getelementptr inbounds %struct.nn_iovec, ptr %155, i64 %157, !dbg !1477
  store ptr %158, ptr %11, align 8, !dbg !1481
  %159 = getelementptr inbounds %struct.nn_msg, ptr %12, i32 0, i32 1, !dbg !1482
  %160 = call ptr @nn_chunkref_data(ptr noundef %159), !dbg !1483
  %161 = load i64, ptr %9, align 8, !dbg !1484
  %162 = getelementptr inbounds i8, ptr %160, i64 %161, !dbg !1485
  %163 = load ptr, ptr %11, align 8, !dbg !1486
  %164 = getelementptr inbounds %struct.nn_iovec, ptr %163, i32 0, i32 0, !dbg !1487
  %165 = load ptr, ptr %164, align 8, !dbg !1487
  %166 = load ptr, ptr %11, align 8, !dbg !1488
  %167 = getelementptr inbounds %struct.nn_iovec, ptr %166, i32 0, i32 1, !dbg !1489
  %168 = load i64, ptr %167, align 8, !dbg !1489
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %162, ptr align 1 %165, i64 %168, i1 false), !dbg !1490
  %169 = load ptr, ptr %11, align 8, !dbg !1491
  %170 = getelementptr inbounds %struct.nn_iovec, ptr %169, i32 0, i32 1, !dbg !1492
  %171 = load i64, ptr %170, align 8, !dbg !1492
  %172 = load i64, ptr %9, align 8, !dbg !1493
  %173 = add i64 %172, %171, !dbg !1493
  store i64 %173, ptr %9, align 8, !dbg !1493
  br label %174, !dbg !1494

174:                                              ; preds = %152
  %175 = load i32, ptr %10, align 4, !dbg !1495
  %176 = add nsw i32 %175, 1, !dbg !1495
  store i32 %176, ptr %10, align 4, !dbg !1495
  br label %146, !dbg !1496, !llvm.loop !1497

177:                                              ; preds = %146
  br label %178

178:                                              ; preds = %177, %78
  %179 = load ptr, ptr %6, align 8, !dbg !1499
  %180 = getelementptr inbounds %struct.nn_msghdr, ptr %179, i32 0, i32 2, !dbg !1501
  %181 = load ptr, ptr %180, align 8, !dbg !1501
  %182 = icmp ne ptr %181, null, !dbg !1499
  br i1 %182, label %183, label %202, !dbg !1502

183:                                              ; preds = %178
  %184 = load ptr, ptr %6, align 8, !dbg !1503
  %185 = getelementptr inbounds %struct.nn_msghdr, ptr %184, i32 0, i32 3, !dbg !1506
  %186 = load i64, ptr %185, align 8, !dbg !1506
  %187 = icmp eq i64 %186, -1, !dbg !1507
  br i1 %187, label %188, label %196, !dbg !1508

188:                                              ; preds = %183
  %189 = load ptr, ptr %6, align 8, !dbg !1509
  %190 = getelementptr inbounds %struct.nn_msghdr, ptr %189, i32 0, i32 2, !dbg !1511
  %191 = load ptr, ptr %190, align 8, !dbg !1511
  %192 = load ptr, ptr %191, align 8, !dbg !1512
  store ptr %192, ptr %13, align 8, !dbg !1513
  %193 = getelementptr inbounds %struct.nn_msg, ptr %12, i32 0, i32 0, !dbg !1514
  call void @nn_chunkref_term(ptr noundef %193), !dbg !1515
  %194 = getelementptr inbounds %struct.nn_msg, ptr %12, i32 0, i32 0, !dbg !1516
  %195 = load ptr, ptr %13, align 8, !dbg !1517
  call void @nn_chunkref_init_chunk(ptr noundef %194, ptr noundef %195), !dbg !1518
  br label %201, !dbg !1519

196:                                              ; preds = %183
  br label %197, !dbg !1520

197:                                              ; preds = %196
  %198 = load ptr, ptr @stderr, align 8, !dbg !1522
  %199 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %198, ptr noundef @.str.3, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 648), !dbg !1522
  call void @nn_err_abort() #8, !dbg !1522
  unreachable, !dbg !1522

200:                                              ; No predecessors!
  br label %201

201:                                              ; preds = %200, %188
  br label %202, !dbg !1526

202:                                              ; preds = %201, %178
  %203 = load ptr, ptr @self, align 8, !dbg !1527
  %204 = load i32, ptr %5, align 4, !dbg !1528
  %205 = sext i32 %204 to i64, !dbg !1529
  %206 = getelementptr inbounds ptr, ptr %203, i64 %205, !dbg !1529
  %207 = load ptr, ptr %206, align 8, !dbg !1529
  %208 = load i32, ptr %7, align 4, !dbg !1530
  %209 = call i32 @nn_sock_send(ptr noundef %207, ptr noundef %12, i32 noundef %208), !dbg !1531
  store i32 %209, ptr %8, align 4, !dbg !1532
  %210 = load i32, ptr %8, align 4, !dbg !1533
  %211 = icmp slt i32 %210, 0, !dbg !1533
  %212 = zext i1 %211 to i32, !dbg !1533
  %213 = sext i32 %212 to i64, !dbg !1533
  %214 = icmp ne i64 %213, 0, !dbg !1533
  br i1 %214, label %215, label %219, !dbg !1535

215:                                              ; preds = %202
  call void @nn_msg_term(ptr noundef %12), !dbg !1536
  %216 = load i32, ptr %8, align 4, !dbg !1538
  %217 = sub nsw i32 0, %216, !dbg !1539
  %218 = call ptr @__errno_location() #7, !dbg !1540
  store i32 %217, ptr %218, align 4, !dbg !1541
  store i32 -1, ptr %4, align 4, !dbg !1542
  br label %222, !dbg !1542

219:                                              ; preds = %202
  %220 = load i64, ptr %9, align 8, !dbg !1543
  %221 = trunc i64 %220 to i32, !dbg !1544
  store i32 %221, ptr %4, align 4, !dbg !1545
  br label %222, !dbg !1545

222:                                              ; preds = %219, %215, %133, %120, %103, %76, %48, %38, %29
  %223 = load i32, ptr %4, align 4, !dbg !1546
  ret i32 %223, !dbg !1546
}

declare void @nn_chunkref_term(ptr noundef) #1

declare void @nn_chunkref_init_chunk(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_recvmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1547 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nn_msg, align 1
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1551, metadata !DIExpression()), !dbg !1552
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1553, metadata !DIExpression()), !dbg !1554
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1555, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1557, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1559, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1561, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1563, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1565, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1567, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1569, metadata !DIExpression()), !dbg !1570
  %15 = load ptr, ptr @self, align 8, !dbg !1571
  %16 = icmp ne ptr %15, null, !dbg !1571
  br i1 %16, label %17, label %25, !dbg !1571

17:                                               ; preds = %3
  %18 = load ptr, ptr @self, align 8, !dbg !1571
  %19 = load i32, ptr %5, align 4, !dbg !1571
  %20 = sext i32 %19 to i64, !dbg !1571
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20, !dbg !1571
  %22 = load ptr, ptr %21, align 8, !dbg !1571
  %23 = icmp ne ptr %22, null, !dbg !1571
  %24 = xor i1 %23, true, !dbg !1571
  br label %25, !dbg !1571

25:                                               ; preds = %17, %3
  %26 = phi i1 [ true, %3 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32, !dbg !1571
  %28 = sext i32 %27 to i64, !dbg !1571
  %29 = icmp ne i64 %28, 0, !dbg !1571
  br i1 %29, label %30, label %32, !dbg !1573

30:                                               ; preds = %25
  %31 = call ptr @__errno_location() #7, !dbg !1574
  store i32 9, ptr %31, align 4, !dbg !1574
  store i32 -1, ptr %4, align 4, !dbg !1574
  br label %182, !dbg !1574

32:                                               ; preds = %25
  %33 = load ptr, ptr %6, align 8, !dbg !1576
  %34 = icmp ne ptr %33, null, !dbg !1576
  %35 = xor i1 %34, true, !dbg !1576
  %36 = zext i1 %35 to i32, !dbg !1576
  %37 = sext i32 %36 to i64, !dbg !1576
  %38 = icmp ne i64 %37, 0, !dbg !1576
  br i1 %38, label %39, label %41, !dbg !1578

39:                                               ; preds = %32
  %40 = call ptr @__errno_location() #7, !dbg !1579
  store i32 22, ptr %40, align 4, !dbg !1581
  store i32 -1, ptr %4, align 4, !dbg !1582
  br label %182, !dbg !1582

41:                                               ; preds = %32
  %42 = load ptr, ptr %6, align 8, !dbg !1583
  %43 = getelementptr inbounds %struct.nn_msghdr, ptr %42, i32 0, i32 1, !dbg !1583
  %44 = load i32, ptr %43, align 8, !dbg !1583
  %45 = icmp slt i32 %44, 0, !dbg !1583
  %46 = zext i1 %45 to i32, !dbg !1583
  %47 = sext i32 %46 to i64, !dbg !1583
  %48 = icmp ne i64 %47, 0, !dbg !1583
  br i1 %48, label %49, label %51, !dbg !1585

49:                                               ; preds = %41
  %50 = call ptr @__errno_location() #7, !dbg !1586
  store i32 90, ptr %50, align 4, !dbg !1588
  store i32 -1, ptr %4, align 4, !dbg !1589
  br label %182, !dbg !1589

51:                                               ; preds = %41
  %52 = load ptr, ptr @self, align 8, !dbg !1590
  %53 = load i32, ptr %5, align 4, !dbg !1591
  %54 = sext i32 %53 to i64, !dbg !1592
  %55 = getelementptr inbounds ptr, ptr %52, i64 %54, !dbg !1592
  %56 = load ptr, ptr %55, align 8, !dbg !1592
  %57 = load i32, ptr %7, align 4, !dbg !1593
  %58 = call i32 @nn_sock_recv(ptr noundef %56, ptr noundef %9, i32 noundef %57), !dbg !1594
  store i32 %58, ptr %8, align 4, !dbg !1595
  %59 = load i32, ptr %8, align 4, !dbg !1596
  %60 = icmp slt i32 %59, 0, !dbg !1596
  %61 = zext i1 %60 to i32, !dbg !1596
  %62 = sext i32 %61 to i64, !dbg !1596
  %63 = icmp ne i64 %62, 0, !dbg !1596
  br i1 %63, label %64, label %68, !dbg !1598

64:                                               ; preds = %51
  %65 = load i32, ptr %8, align 4, !dbg !1599
  %66 = sub nsw i32 0, %65, !dbg !1601
  %67 = call ptr @__errno_location() #7, !dbg !1602
  store i32 %66, ptr %67, align 4, !dbg !1603
  store i32 -1, ptr %4, align 4, !dbg !1604
  br label %182, !dbg !1604

68:                                               ; preds = %51
  %69 = load ptr, ptr %6, align 8, !dbg !1605
  %70 = getelementptr inbounds %struct.nn_msghdr, ptr %69, i32 0, i32 1, !dbg !1607
  %71 = load i32, ptr %70, align 8, !dbg !1607
  %72 = icmp eq i32 %71, 1, !dbg !1608
  br i1 %72, label %73, label %93, !dbg !1609

73:                                               ; preds = %68
  %74 = load ptr, ptr %6, align 8, !dbg !1610
  %75 = getelementptr inbounds %struct.nn_msghdr, ptr %74, i32 0, i32 0, !dbg !1611
  %76 = load ptr, ptr %75, align 8, !dbg !1611
  %77 = getelementptr inbounds %struct.nn_iovec, ptr %76, i64 0, !dbg !1610
  %78 = getelementptr inbounds %struct.nn_iovec, ptr %77, i32 0, i32 1, !dbg !1612
  %79 = load i64, ptr %78, align 8, !dbg !1612
  %80 = icmp eq i64 %79, -1, !dbg !1613
  br i1 %80, label %81, label %93, !dbg !1614

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.nn_msg, ptr %9, i32 0, i32 1, !dbg !1615
  %83 = call ptr @nn_chunkref_getchunk(ptr noundef %82), !dbg !1617
  store ptr %83, ptr %14, align 8, !dbg !1618
  %84 = load ptr, ptr %14, align 8, !dbg !1619
  %85 = load ptr, ptr %6, align 8, !dbg !1620
  %86 = getelementptr inbounds %struct.nn_msghdr, ptr %85, i32 0, i32 0, !dbg !1621
  %87 = load ptr, ptr %86, align 8, !dbg !1621
  %88 = getelementptr inbounds %struct.nn_iovec, ptr %87, i64 0, !dbg !1620
  %89 = getelementptr inbounds %struct.nn_iovec, ptr %88, i32 0, i32 0, !dbg !1622
  %90 = load ptr, ptr %89, align 8, !dbg !1622
  store ptr %84, ptr %90, align 8, !dbg !1623
  %91 = load ptr, ptr %14, align 8, !dbg !1624
  %92 = call i64 @nn_chunk_size(ptr noundef %91), !dbg !1625
  store i64 %92, ptr %11, align 8, !dbg !1626
  br label %156, !dbg !1627

93:                                               ; preds = %73, %68
  %94 = getelementptr inbounds %struct.nn_msg, ptr %9, i32 0, i32 1, !dbg !1628
  %95 = call ptr @nn_chunkref_data(ptr noundef %94), !dbg !1630
  store ptr %95, ptr %10, align 8, !dbg !1631
  %96 = getelementptr inbounds %struct.nn_msg, ptr %9, i32 0, i32 1, !dbg !1632
  %97 = call i64 @nn_chunkref_size(ptr noundef %96), !dbg !1633
  store i64 %97, ptr %11, align 8, !dbg !1634
  store i32 0, ptr %12, align 4, !dbg !1635
  br label %98, !dbg !1637

98:                                               ; preds = %150, %93
  %99 = load i32, ptr %12, align 4, !dbg !1638
  %100 = load ptr, ptr %6, align 8, !dbg !1640
  %101 = getelementptr inbounds %struct.nn_msghdr, ptr %100, i32 0, i32 1, !dbg !1641
  %102 = load i32, ptr %101, align 8, !dbg !1641
  %103 = icmp ne i32 %99, %102, !dbg !1642
  br i1 %103, label %104, label %153, !dbg !1643

104:                                              ; preds = %98
  %105 = load ptr, ptr %6, align 8, !dbg !1644
  %106 = getelementptr inbounds %struct.nn_msghdr, ptr %105, i32 0, i32 0, !dbg !1646
  %107 = load ptr, ptr %106, align 8, !dbg !1646
  %108 = load i32, ptr %12, align 4, !dbg !1647
  %109 = sext i32 %108 to i64, !dbg !1644
  %110 = getelementptr inbounds %struct.nn_iovec, ptr %107, i64 %109, !dbg !1644
  store ptr %110, ptr %13, align 8, !dbg !1648
  %111 = load ptr, ptr %13, align 8, !dbg !1649
  %112 = getelementptr inbounds %struct.nn_iovec, ptr %111, i32 0, i32 1, !dbg !1649
  %113 = load i64, ptr %112, align 8, !dbg !1649
  %114 = icmp eq i64 %113, -1, !dbg !1649
  %115 = zext i1 %114 to i32, !dbg !1649
  %116 = sext i32 %115 to i64, !dbg !1649
  %117 = icmp ne i64 %116, 0, !dbg !1649
  br i1 %117, label %118, label %120, !dbg !1651

118:                                              ; preds = %104
  call void @nn_msg_term(ptr noundef %9), !dbg !1652
  %119 = call ptr @__errno_location() #7, !dbg !1654
  store i32 22, ptr %119, align 4, !dbg !1655
  store i32 -1, ptr %4, align 4, !dbg !1656
  br label %182, !dbg !1656

120:                                              ; preds = %104
  %121 = load ptr, ptr %13, align 8, !dbg !1657
  %122 = getelementptr inbounds %struct.nn_iovec, ptr %121, i32 0, i32 1, !dbg !1659
  %123 = load i64, ptr %122, align 8, !dbg !1659
  %124 = load i64, ptr %11, align 8, !dbg !1660
  %125 = icmp ugt i64 %123, %124, !dbg !1661
  br i1 %125, label %126, label %132, !dbg !1662

126:                                              ; preds = %120
  %127 = load ptr, ptr %13, align 8, !dbg !1663
  %128 = getelementptr inbounds %struct.nn_iovec, ptr %127, i32 0, i32 0, !dbg !1665
  %129 = load ptr, ptr %128, align 8, !dbg !1665
  %130 = load ptr, ptr %10, align 8, !dbg !1666
  %131 = load i64, ptr %11, align 8, !dbg !1667
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %129, ptr align 1 %130, i64 %131, i1 false), !dbg !1668
  br label %153, !dbg !1669

132:                                              ; preds = %120
  %133 = load ptr, ptr %13, align 8, !dbg !1670
  %134 = getelementptr inbounds %struct.nn_iovec, ptr %133, i32 0, i32 0, !dbg !1671
  %135 = load ptr, ptr %134, align 8, !dbg !1671
  %136 = load ptr, ptr %10, align 8, !dbg !1672
  %137 = load ptr, ptr %13, align 8, !dbg !1673
  %138 = getelementptr inbounds %struct.nn_iovec, ptr %137, i32 0, i32 1, !dbg !1674
  %139 = load i64, ptr %138, align 8, !dbg !1674
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %135, ptr align 1 %136, i64 %139, i1 false), !dbg !1675
  %140 = load ptr, ptr %13, align 8, !dbg !1676
  %141 = getelementptr inbounds %struct.nn_iovec, ptr %140, i32 0, i32 1, !dbg !1677
  %142 = load i64, ptr %141, align 8, !dbg !1677
  %143 = load ptr, ptr %10, align 8, !dbg !1678
  %144 = getelementptr inbounds i8, ptr %143, i64 %142, !dbg !1678
  store ptr %144, ptr %10, align 8, !dbg !1678
  %145 = load ptr, ptr %13, align 8, !dbg !1679
  %146 = getelementptr inbounds %struct.nn_iovec, ptr %145, i32 0, i32 1, !dbg !1680
  %147 = load i64, ptr %146, align 8, !dbg !1680
  %148 = load i64, ptr %11, align 8, !dbg !1681
  %149 = sub i64 %148, %147, !dbg !1681
  store i64 %149, ptr %11, align 8, !dbg !1681
  br label %150, !dbg !1682

150:                                              ; preds = %132
  %151 = load i32, ptr %12, align 4, !dbg !1683
  %152 = add nsw i32 %151, 1, !dbg !1683
  store i32 %152, ptr %12, align 4, !dbg !1683
  br label %98, !dbg !1684, !llvm.loop !1685

153:                                              ; preds = %126, %98
  %154 = getelementptr inbounds %struct.nn_msg, ptr %9, i32 0, i32 1, !dbg !1687
  %155 = call i64 @nn_chunkref_size(ptr noundef %154), !dbg !1688
  store i64 %155, ptr %11, align 8, !dbg !1689
  br label %156

156:                                              ; preds = %153, %81
  %157 = load ptr, ptr %6, align 8, !dbg !1690
  %158 = getelementptr inbounds %struct.nn_msghdr, ptr %157, i32 0, i32 2, !dbg !1692
  %159 = load ptr, ptr %158, align 8, !dbg !1692
  %160 = icmp ne ptr %159, null, !dbg !1690
  br i1 %160, label %161, label %179, !dbg !1693

161:                                              ; preds = %156
  %162 = load ptr, ptr %6, align 8, !dbg !1694
  %163 = getelementptr inbounds %struct.nn_msghdr, ptr %162, i32 0, i32 3, !dbg !1697
  %164 = load i64, ptr %163, align 8, !dbg !1697
  %165 = icmp eq i64 %164, -1, !dbg !1698
  br i1 %165, label %166, label %173, !dbg !1699

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.nn_msg, ptr %9, i32 0, i32 0, !dbg !1700
  %168 = call ptr @nn_chunkref_getchunk(ptr noundef %167), !dbg !1702
  store ptr %168, ptr %14, align 8, !dbg !1703
  %169 = load ptr, ptr %14, align 8, !dbg !1704
  %170 = load ptr, ptr %6, align 8, !dbg !1705
  %171 = getelementptr inbounds %struct.nn_msghdr, ptr %170, i32 0, i32 2, !dbg !1706
  %172 = load ptr, ptr %171, align 8, !dbg !1706
  store ptr %169, ptr %172, align 8, !dbg !1707
  br label %178, !dbg !1708

173:                                              ; preds = %161
  br label %174, !dbg !1709

174:                                              ; preds = %173
  %175 = load ptr, ptr @stderr, align 8, !dbg !1711
  %176 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %175, ptr noundef @.str.3, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 730), !dbg !1711
  call void @nn_err_abort() #8, !dbg !1711
  unreachable, !dbg !1711

177:                                              ; No predecessors!
  br label %178

178:                                              ; preds = %177, %166
  br label %179, !dbg !1715

179:                                              ; preds = %178, %156
  call void @nn_msg_term(ptr noundef %9), !dbg !1716
  %180 = load i64, ptr %11, align 8, !dbg !1717
  %181 = trunc i64 %180 to i32, !dbg !1718
  store i32 %181, ptr %4, align 4, !dbg !1719
  br label %182, !dbg !1719

182:                                              ; preds = %179, %118, %64, %49, %39, %30
  %183 = load i32, ptr %4, align 4, !dbg !1720
  ret i32 %183, !dbg !1720
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_global_transport(i32 noundef %0) #0 !dbg !1721 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1724, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1726, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1728, metadata !DIExpression()), !dbg !1729
  store ptr null, ptr %3, align 8, !dbg !1730
  call void @nn_glock_lock(), !dbg !1731
  %5 = call ptr @nn_list_begin(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 4)), !dbg !1732
  store ptr %5, ptr %4, align 8, !dbg !1734
  br label %6, !dbg !1735

6:                                                ; preds = %26, %1
  %7 = load ptr, ptr %4, align 8, !dbg !1736
  %8 = call ptr @nn_list_end(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 4)), !dbg !1738
  %9 = icmp ne ptr %7, %8, !dbg !1739
  br i1 %9, label %10, label %29, !dbg !1740

10:                                               ; preds = %6
  %11 = load ptr, ptr %4, align 8, !dbg !1741
  %12 = icmp ne ptr %11, null, !dbg !1741
  br i1 %12, label %13, label %16, !dbg !1741

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 8, !dbg !1741
  %15 = getelementptr inbounds i8, ptr %14, i64 -56, !dbg !1741
  br label %17, !dbg !1741

16:                                               ; preds = %10
  br label %17, !dbg !1741

17:                                               ; preds = %16, %13
  %18 = phi ptr [ %15, %13 ], [ null, %16 ], !dbg !1741
  store ptr %18, ptr %3, align 8, !dbg !1743
  %19 = load ptr, ptr %3, align 8, !dbg !1744
  %20 = getelementptr inbounds %struct.nn_transport, ptr %19, i32 0, i32 1, !dbg !1746
  %21 = load i32, ptr %20, align 8, !dbg !1746
  %22 = load i32, ptr %2, align 4, !dbg !1747
  %23 = icmp eq i32 %21, %22, !dbg !1748
  br i1 %23, label %24, label %25, !dbg !1749

24:                                               ; preds = %17
  br label %29, !dbg !1750

25:                                               ; preds = %17
  store ptr null, ptr %3, align 8, !dbg !1751
  br label %26, !dbg !1752

26:                                               ; preds = %25
  %27 = load ptr, ptr %4, align 8, !dbg !1753
  %28 = call ptr @nn_list_next(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 4), ptr noundef %27), !dbg !1754
  store ptr %28, ptr %4, align 8, !dbg !1755
  br label %6, !dbg !1756, !llvm.loop !1757

29:                                               ; preds = %24, %6
  call void @nn_glock_unlock(), !dbg !1759
  %30 = load ptr, ptr %3, align 8, !dbg !1760
  ret ptr %30, !dbg !1761
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_global_getpool() #0 !dbg !1762 {
  ret ptr getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 6), !dbg !1765
}

declare void @nn_alloc_init() #1

declare void @nn_random_seed(...) #1

declare void @nn_list_init(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_global_add_transport(ptr noundef %0) #0 !dbg !1766 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1769, metadata !DIExpression()), !dbg !1770
  %3 = load ptr, ptr %2, align 8, !dbg !1771
  %4 = getelementptr inbounds %struct.nn_transport, ptr %3, i32 0, i32 2, !dbg !1773
  %5 = load ptr, ptr %4, align 8, !dbg !1773
  %6 = icmp ne ptr %5, null, !dbg !1771
  br i1 %6, label %7, label %11, !dbg !1774

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !1775
  %9 = getelementptr inbounds %struct.nn_transport, ptr %8, i32 0, i32 2, !dbg !1776
  %10 = load ptr, ptr %9, align 8, !dbg !1776
  call void %10(), !dbg !1775
  br label %11, !dbg !1775

11:                                               ; preds = %7, %1
  %12 = load ptr, ptr %2, align 8, !dbg !1777
  %13 = getelementptr inbounds %struct.nn_transport, ptr %12, i32 0, i32 7, !dbg !1778
  %14 = call ptr @nn_list_end(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 4)), !dbg !1779
  call void @nn_list_insert(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 4), ptr noundef %13, ptr noundef %14), !dbg !1780
  ret void, !dbg !1781
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_global_add_socktype(ptr noundef %0) #0 !dbg !1782 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1785, metadata !DIExpression()), !dbg !1786
  %3 = load ptr, ptr %2, align 8, !dbg !1787
  %4 = getelementptr inbounds %struct.nn_socktype, ptr %3, i32 0, i32 5, !dbg !1788
  %5 = call ptr @nn_list_end(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 5)), !dbg !1789
  call void @nn_list_insert(ptr noundef getelementptr inbounds (%struct.nn_global, ptr @self, i32 0, i32 5), ptr noundef %4, ptr noundef %5), !dbg !1790
  ret void, !dbg !1791
}

declare i32 @nn_pool_init(ptr noundef) #1

declare void @nn_list_insert(ptr noundef, ptr noundef, ptr noundef) #1

declare void @nn_pool_term(ptr noundef) #1

declare i32 @nn_list_empty(ptr noundef) #1

declare ptr @nn_list_erase(ptr noundef, ptr noundef) #1

declare void @nn_list_term(ptr noundef) #1

declare void @nn_alloc_term() #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #6

declare i32 @nn_sock_add_ep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { noreturn }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!425, !426, !427, !428, !429, !430, !431}
!llvm.ident = !{!432}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "self", scope: !2, file: !381, line: 120, type: !415, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !378, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/core/global.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "5d185dd65d2efc8dd8f75197f182719b")
!4 = !{!5, !11, !22, !321, !20, !16, !322, !33, !323, !374}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_cmsghdr", file: !13, line: 177, size: 128, elements: !14)
!13 = !DIFile(filename: "./src/core/../nn.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "0c95956590725e5a1eedd7f7b192cc23")
!14 = !{!15, !19, !21}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "cmsg_len", scope: !12, file: !13, line: 178, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 46, baseType: !18)
!17 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!18 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "cmsg_level", scope: !12, file: !13, line: 179, baseType: !20, size: 32, offset: 64)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cmsg_type", scope: !12, file: !13, line: 180, baseType: !20, size: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !24, line: 160, size: 384, elements: !25)
!24 = !DIFile(filename: "./src/core/../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!25 = !{!26, !27, !28, !29, !316, !320}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !23, file: !24, line: 163, baseType: !20, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !23, file: !24, line: 164, baseType: !20, size: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !23, file: !24, line: 167, baseType: !20, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !23, file: !24, line: 173, baseType: !30, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{!20, !33, !34}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !24, line: 123, size: 128, elements: !37)
!37 = !{!38, !93}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !36, file: !24, line: 124, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase_vfptr", file: !24, line: 84, size: 704, elements: !42)
!42 = !{!43, !47, !48, !54, !58, !59, !60, !64, !81, !82, !88}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !41, file: !24, line: 87, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !35}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !41, file: !24, line: 90, baseType: !44, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !41, file: !24, line: 97, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!20, !35, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !24, line: 56, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !41, file: !24, line: 98, baseType: !55, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !35, !52}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !41, file: !24, line: 99, baseType: !55, size: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !41, file: !24, line: 100, baseType: !55, size: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !41, file: !24, line: 104, baseType: !61, size: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!20, !35}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !41, file: !24, line: 108, baseType: !65, size: 64, offset: 448)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!20, !35, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !70, line: 30, size: 512, elements: !71)
!70 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!71 = !{!72, !80}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !69, file: !70, line: 33, baseType: !73, size: 256)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !74, line: 39, size: 256, elements: !75)
!74 = !DIFile(filename: "src/aio/../utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !73, file: !74, line: 40, baseType: !77, size: 256)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !69, file: !70, line: 36, baseType: !73, size: 256, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !41, file: !24, line: 112, baseType: !65, size: 64, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !41, file: !24, line: 115, baseType: !83, size: 64, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!20, !35, !20, !20, !86, !16}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !41, file: !24, line: 119, baseType: !89, size: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!20, !35, !20, !20, !33, !92}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !36, file: !24, line: 125, baseType: !94, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !96, line: 42, size: 2752, elements: !97)
!96 = !DIFile(filename: "./src/core/sock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "81758969b613e986f7c84ae94c8bce2a")
!97 = !{!98, !260, !261, !262, !263, !264, !265, !266, !267, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !95, file: !96, line: 45, baseType: !99, size: 640)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !100, line: 66, size: 640, elements: !101)
!100 = !DIFile(filename: "src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!101 = !{!102, !108, !109, !110, !111, !112, !252}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !99, file: !100, line: 67, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !100, line: 58, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107, !20, !20, !33}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !99, file: !100, line: 68, baseType: !20, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !99, file: !100, line: 69, baseType: !20, size: 32, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !99, file: !100, line: 70, baseType: !33, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !99, file: !100, line: 71, baseType: !107, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !99, file: !100, line: 72, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !115, line: 37, size: 704, elements: !116)
!115 = !DIFile(filename: "./src/core/../aio/ctx.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "02553d3500c8d7bb20cd89fa252fe2c2")
!116 = !{!117, !154, !245, !246, !247}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !114, file: !115, line: 38, baseType: !118, size: 320)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !119, line: 32, size: 320, elements: !120)
!119 = !DIFile(filename: "src/aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !118, file: !119, line: 36, baseType: !122, size: 320)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !123, line: 72, baseType: !124)
!123 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!124 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !123, line: 67, size: 320, elements: !125)
!125 = !{!126, !147, !152}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !124, file: !123, line: 69, baseType: !127, size: 320)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !128, line: 22, size: 320, elements: !129)
!128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!129 = !{!130, !131, !133, !134, !135, !136, !138, !139}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !127, file: !128, line: 24, baseType: !20, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !127, file: !128, line: 25, baseType: !132, size: 32, offset: 32)
!132 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !127, file: !128, line: 26, baseType: !20, size: 32, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !127, file: !128, line: 28, baseType: !132, size: 32, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !127, file: !128, line: 32, baseType: !20, size: 32, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !127, file: !128, line: 34, baseType: !137, size: 16, offset: 160)
!137 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !127, file: !128, line: 35, baseType: !137, size: 16, offset: 176)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !127, file: !128, line: 36, baseType: !140, size: 128, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !141, line: 55, baseType: !142)
!141 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !141, line: 51, size: 128, elements: !143)
!143 = !{!144, !146}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !142, file: !141, line: 53, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !142, file: !141, line: 54, baseType: !145, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !124, file: !123, line: 70, baseType: !148, size: 320)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 320, elements: !150)
!149 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!150 = !{!151}
!151 = !DISubrange(count: 40)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !124, file: !123, line: 71, baseType: !153, size: 64)
!153 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !114, file: !115, line: 39, baseType: !155, size: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pool", file: !157, line: 30, size: 1408, elements: !158)
!157 = !DIFile(filename: "src/aio/pool.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a87eb417ecad65fee67523e01b3df661")
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !156, file: !157, line: 31, baseType: !160, size: 1408)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !161, line: 53, size: 1408, elements: !162)
!161 = !DIFile(filename: "src/aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!162 = !{!163, !164, !174, !175, !181, !208, !209, !232}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !160, file: !161, line: 54, baseType: !118, size: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !160, file: !161, line: 55, baseType: !165, size: 128, offset: 320)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !166, line: 37, size: 128, elements: !167)
!166 = !DIFile(filename: "src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!167 = !{!168, !173}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !165, file: !166, line: 38, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !166, line: 33, size: 64, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !166, line: 34, baseType: !169, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !165, file: !166, line: 39, baseType: !169, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !160, file: !161, line: 56, baseType: !170, size: 64, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !160, file: !161, line: 57, baseType: !176, size: 64, offset: 512)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !177, line: 25, size: 64, elements: !178)
!177 = !DIFile(filename: "src/aio/../utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !176, file: !177, line: 26, baseType: !20, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !176, file: !177, line: 27, baseType: !20, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !160, file: !161, line: 58, baseType: !182, size: 320, offset: 576)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !183, line: 31, size: 320, elements: !184)
!183 = !DIFile(filename: "src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!184 = !{!185, !186, !187, !188, !196, !207}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !182, file: !183, line: 34, baseType: !20, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !182, file: !183, line: 37, baseType: !20, size: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !182, file: !183, line: 40, baseType: !20, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !182, file: !183, line: 43, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !191, line: 36, size: 64, elements: !192)
!191 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!192 = !{!193, !194, !195}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !190, file: !191, line: 38, baseType: !20, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !190, file: !191, line: 39, baseType: !137, size: 16, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !190, file: !191, line: 40, baseType: !137, size: 16, offset: 48)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !182, file: !183, line: 52, baseType: !197, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !183, line: 48, size: 128, elements: !199)
!199 = !{!200, !205, !206}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !198, file: !183, line: 49, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !183, line: 27, size: 32, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !202, file: !183, line: 28, baseType: !20, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !198, file: !183, line: 50, baseType: !20, size: 32, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !183, line: 51, baseType: !20, size: 32, offset: 96)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !182, file: !183, line: 55, baseType: !20, size: 32, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !160, file: !161, line: 59, baseType: !202, size: 32, offset: 896)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !160, file: !161, line: 60, baseType: !210, size: 256, offset: 960)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !211, line: 37, size: 256, elements: !212)
!211 = !DIFile(filename: "src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!212 = !{!213, !221}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !210, file: !211, line: 38, baseType: !214, size: 128)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !215, line: 31, size: 128, elements: !216)
!215 = !DIFile(filename: "src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!216 = !{!217, !220}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !214, file: !215, line: 33, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !18)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !214, file: !215, line: 34, baseType: !218, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !210, file: !211, line: 39, baseType: !222, size: 128, offset: 128)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !223, line: 31, size: 128, elements: !224)
!223 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!224 = !{!225, !231}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !222, file: !223, line: 32, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !223, line: 26, size: 128, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !227, file: !223, line: 27, baseType: !226, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !227, file: !223, line: 28, baseType: !226, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !222, file: !223, line: 33, baseType: !226, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !160, file: !161, line: 61, baseType: !233, size: 192, offset: 1216)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !234, line: 25, size: 192, elements: !235)
!234 = !DIFile(filename: "src/aio/../utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!235 = !{!236, !242, !243}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !233, file: !234, line: 27, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !239, line: 28, baseType: !240)
!239 = !DIFile(filename: "src/aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!240 = !DISubroutineType(types: !241)
!241 = !{null, !33}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !233, file: !234, line: 28, baseType: !33, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !233, file: !234, line: 29, baseType: !244, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !123, line: 27, baseType: !18)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !114, file: !115, line: 40, baseType: !165, size: 128, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "eventsto", scope: !114, file: !115, line: 41, baseType: !165, size: 128, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "onleave", scope: !114, file: !115, line: 42, baseType: !248, size: 64, offset: 640)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_ctx_onleave", file: !115, line: 35, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !113}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !99, file: !100, line: 73, baseType: !253, size: 320, offset: 320)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !100, line: 34, size: 320, elements: !254)
!254 = !{!255, !256, !257, !258, !259}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !253, file: !100, line: 35, baseType: !107, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !253, file: !100, line: 36, baseType: !20, size: 32, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !253, file: !100, line: 37, baseType: !33, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !253, file: !100, line: 38, baseType: !20, size: 32, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !253, file: !100, line: 39, baseType: !170, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !95, file: !96, line: 46, baseType: !20, size: 32, offset: 640)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !95, file: !96, line: 49, baseType: !35, size: 64, offset: 704)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "socktype", scope: !95, file: !96, line: 52, baseType: !22, size: 64, offset: 768)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !95, file: !96, line: 54, baseType: !20, size: 32, offset: 832)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !95, file: !96, line: 56, baseType: !114, size: 704, offset: 896)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "sndfd", scope: !95, file: !96, line: 57, baseType: !176, size: 64, offset: 1600)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rcvfd", scope: !95, file: !96, line: 58, baseType: !176, size: 64, offset: 1664)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "termsem", scope: !95, file: !96, line: 59, baseType: !268, size: 256, offset: 1728)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sem", file: !269, line: 64, size: 256, elements: !270)
!269 = !DIFile(filename: "src/aio/../utils/sem.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "925a3ae06fa6fbb251fb87fc0fbd3a0b")
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !268, file: !269, line: 65, baseType: !272, size: 256)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !273, line: 39, baseType: !274)
!273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!274 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !273, line: 35, size: 256, elements: !275)
!275 = !{!276, !278}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !274, file: !273, line: 37, baseType: !277, size: 256)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, elements: !78)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !274, file: !273, line: 38, baseType: !153, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !95, file: !96, line: 63, baseType: !214, size: 128, offset: 1984)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !95, file: !96, line: 66, baseType: !222, size: 128, offset: 2112)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !95, file: !96, line: 69, baseType: !20, size: 32, offset: 2240)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "linger", scope: !95, file: !96, line: 72, baseType: !20, size: 32, offset: 2272)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !95, file: !96, line: 73, baseType: !20, size: 32, offset: 2304)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !95, file: !96, line: 74, baseType: !20, size: 32, offset: 2336)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sndtimeo", scope: !95, file: !96, line: 75, baseType: !20, size: 32, offset: 2368)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "rcvtimeo", scope: !95, file: !96, line: 76, baseType: !20, size: 32, offset: 2400)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_ivl", scope: !95, file: !96, line: 77, baseType: !20, size: 32, offset: 2432)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_ivl_max", scope: !95, file: !96, line: 78, baseType: !20, size: 32, offset: 2464)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sndprio", scope: !95, file: !96, line: 79, baseType: !20, size: 32, offset: 2496)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4only", scope: !95, file: !96, line: 80, baseType: !20, size: 32, offset: 2528)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "optsets", scope: !95, file: !96, line: 83, baseType: !292, size: 192, offset: 2560)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 192, elements: !314)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset", file: !295, line: 56, size: 64, elements: !296)
!295 = !DIFile(filename: "./src/core/../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !294, file: !295, line: 57, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset_vfptr", file: !295, line: 48, size: 192, elements: !301)
!301 = !{!302, !306, !310}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !300, file: !295, line: 49, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !293}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !300, file: !295, line: 50, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!20, !293, !20, !86, !16}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !300, file: !295, line: 52, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!20, !293, !20, !33, !92}
!314 = !{!315}
!315 = !DISubrange(count: 3)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !23, file: !24, line: 179, baseType: !317, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!20, !20}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !23, file: !24, line: 183, baseType: !227, size: 128, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_transport", file: !295, line: 190, size: 576, elements: !325)
!325 = !{!326, !329, !330, !334, !335, !368, !369, !373}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !324, file: !295, line: 194, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !324, file: !295, line: 197, baseType: !20, size: 32, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !324, file: !295, line: 204, baseType: !331, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{null}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "term", scope: !324, file: !295, line: 205, baseType: !331, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !324, file: !295, line: 213, baseType: !336, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!20, !33, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !295, line: 81, size: 128, elements: !342)
!342 = !{!343, !353}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !341, file: !295, line: 82, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase_vfptr", file: !295, line: 70, size: 128, elements: !347)
!347 = !{!348, !352}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !346, file: !295, line: 75, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !340}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !346, file: !295, line: 78, baseType: !349, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !341, file: !295, line: 83, baseType: !354, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ep", file: !356, line: 35, size: 2112, elements: !357)
!356 = !DIFile(filename: "./src/core/ep.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3cb96b08ce030ea933432a57e3a52863")
!357 = !{!358, !359, !360, !361, !362, !363, !364}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !355, file: !356, line: 36, baseType: !99, size: 640)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !355, file: !356, line: 37, baseType: !20, size: 32, offset: 640)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "epbase", scope: !355, file: !356, line: 38, baseType: !340, size: 64, offset: 704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !355, file: !356, line: 39, baseType: !94, size: 64, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !355, file: !356, line: 40, baseType: !20, size: 32, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !355, file: !356, line: 41, baseType: !227, size: 128, offset: 896)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !355, file: !356, line: 42, baseType: !365, size: 1032, offset: 1024)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 1032, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 129)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !324, file: !295, line: 214, baseType: !336, size: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "optset", scope: !324, file: !295, line: 219, baseType: !370, size: 64, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!293}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !324, file: !295, line: 223, baseType: !227, size: 128, offset: 448)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 25, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !9, line: 40, baseType: !377)
!377 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!378 = !{!379, !385, !390, !395, !400, !405, !0, !410}
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !381, line: 359, type: !382, isLocal: true, isDefinition: true)
!381 = !DIFile(filename: "./src/core/global.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "5d185dd65d2efc8dd8f75197f182719b")
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 184, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 23)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !381, line: 359, type: !387, isLocal: true, isDefinition: true)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 160, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 20)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !381, line: 430, type: !392, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 136, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 17)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !381, line: 498, type: !397, isLocal: true, isDefinition: true)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 240, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 30)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !381, line: 498, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 64, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 8)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !381, line: 648, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 16, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 2)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !381, line: 241, type: !412, isLocal: true, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 88, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 11)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_global", file: !381, line: 92, size: 1920, elements: !416)
!416 = !{!417, !419, !420, !421, !422, !423, !424}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "socks", scope: !415, file: !381, line: 98, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !415, file: !381, line: 101, baseType: !374, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "nsocks", scope: !415, file: !381, line: 104, baseType: !16, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !415, file: !381, line: 107, baseType: !20, size: 32, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "transports", scope: !415, file: !381, line: 110, baseType: !222, size: 128, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "socktypes", scope: !415, file: !381, line: 113, baseType: !222, size: 128, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !415, file: !381, line: 116, baseType: !156, size: 1408, offset: 512)
!425 = !{i32 7, !"Dwarf Version", i32 5}
!426 = !{i32 2, !"Debug Info Version", i32 3}
!427 = !{i32 1, !"wchar_size", i32 4}
!428 = !{i32 8, !"PIC Level", i32 2}
!429 = !{i32 7, !"PIE Level", i32 2}
!430 = !{i32 7, !"uwtable", i32 2}
!431 = !{i32 7, !"frame-pointer", i32 2}
!432 = !{!"clang version 16.0.0"}
!433 = distinct !DISubprogram(name: "nn_errno", scope: !381, file: !381, line: 134, type: !434, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!434 = !DISubroutineType(types: !435)
!435 = !{!20}
!436 = !{}
!437 = !DILocation(line: 136, column: 12, scope: !433)
!438 = !DILocation(line: 136, column: 5, scope: !433)
!439 = distinct !DISubprogram(name: "nn_strerror", scope: !381, file: !381, line: 139, type: !440, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!440 = !DISubroutineType(types: !441)
!441 = !{!327, !20}
!442 = !DILocalVariable(name: "errnum", arg: 1, scope: !439, file: !381, line: 139, type: !20)
!443 = !DILocation(line: 139, column: 30, scope: !439)
!444 = !DILocation(line: 141, column: 29, scope: !439)
!445 = !DILocation(line: 141, column: 12, scope: !439)
!446 = !DILocation(line: 141, column: 5, scope: !439)
!447 = distinct !DISubprogram(name: "nn_cmsg_nexthdr", scope: !381, file: !381, line: 144, type: !448, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!448 = !DISubroutineType(types: !449)
!449 = !{!11, !450, !463}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msghdr", file: !13, line: 170, size: 256, elements: !453)
!453 = !{!454, !460, !461, !462}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !452, file: !13, line: 171, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_iovec", file: !13, line: 165, size: 128, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !456, file: !13, line: 166, baseType: !33, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !456, file: !13, line: 167, baseType: !16, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !452, file: !13, line: 172, baseType: !20, size: 32, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !452, file: !13, line: 173, baseType: !33, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !452, file: !13, line: 174, baseType: !16, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!465 = !DILocalVariable(name: "mhdr", arg: 1, scope: !447, file: !381, line: 144, type: !450)
!466 = !DILocation(line: 144, column: 61, scope: !447)
!467 = !DILocalVariable(name: "cmsg", arg: 2, scope: !447, file: !381, line: 145, type: !463)
!468 = !DILocation(line: 145, column: 30, scope: !447)
!469 = !DILocalVariable(name: "sz", scope: !447, file: !381, line: 147, type: !16)
!470 = !DILocation(line: 147, column: 12, scope: !447)
!471 = !DILocation(line: 149, column: 39, scope: !447)
!472 = !DILocation(line: 149, column: 45, scope: !447)
!473 = !DILocation(line: 149, column: 37, scope: !447)
!474 = !DILocation(line: 149, column: 8, scope: !447)
!475 = !DILocation(line: 150, column: 21, scope: !476)
!476 = distinct !DILexicalBlock(scope: !447, file: !381, line: 150, column: 9)
!477 = !DILocation(line: 150, column: 41, scope: !476)
!478 = !DILocation(line: 150, column: 47, scope: !476)
!479 = !DILocation(line: 150, column: 27, scope: !476)
!480 = !DILocation(line: 150, column: 62, scope: !476)
!481 = !DILocation(line: 150, column: 60, scope: !476)
!482 = !DILocation(line: 151, column: 12, scope: !476)
!483 = !DILocation(line: 151, column: 18, scope: !476)
!484 = !DILocation(line: 150, column: 65, scope: !476)
!485 = !DILocation(line: 150, column: 9, scope: !447)
!486 = !DILocation(line: 152, column: 9, scope: !476)
!487 = !DILocation(line: 153, column: 46, scope: !447)
!488 = !DILocation(line: 153, column: 54, scope: !447)
!489 = !DILocation(line: 153, column: 52, scope: !447)
!490 = !DILocation(line: 153, column: 5, scope: !447)
!491 = !DILocation(line: 154, column: 1, scope: !447)
!492 = distinct !DISubprogram(name: "nn_term", scope: !381, file: !381, line: 280, type: !332, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!493 = !DILocalVariable(name: "i", scope: !492, file: !381, line: 282, type: !20)
!494 = !DILocation(line: 282, column: 9, scope: !492)
!495 = !DILocation(line: 284, column: 5, scope: !492)
!496 = !DILocation(line: 287, column: 16, scope: !492)
!497 = !DILocation(line: 290, column: 14, scope: !498)
!498 = distinct !DILexicalBlock(scope: !492, file: !381, line: 290, column: 9)
!499 = !DILocation(line: 290, column: 9, scope: !498)
!500 = !DILocation(line: 290, column: 20, scope: !498)
!501 = !DILocation(line: 290, column: 28, scope: !498)
!502 = !DILocation(line: 290, column: 23, scope: !498)
!503 = !DILocation(line: 290, column: 9, scope: !492)
!504 = !DILocation(line: 291, column: 16, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !381, line: 291, column: 9)
!506 = distinct !DILexicalBlock(scope: !498, file: !381, line: 290, column: 36)
!507 = !DILocation(line: 291, column: 14, scope: !505)
!508 = !DILocation(line: 291, column: 21, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !381, line: 291, column: 9)
!510 = !DILocation(line: 291, column: 23, scope: !509)
!511 = !DILocation(line: 291, column: 9, scope: !505)
!512 = !DILocation(line: 292, column: 22, scope: !513)
!513 = distinct !DILexicalBlock(scope: !509, file: !381, line: 292, column: 17)
!514 = !DILocation(line: 292, column: 29, scope: !513)
!515 = !DILocation(line: 292, column: 17, scope: !513)
!516 = !DILocation(line: 292, column: 17, scope: !509)
!517 = !DILocation(line: 293, column: 39, scope: !513)
!518 = !DILocation(line: 293, column: 46, scope: !513)
!519 = !DILocation(line: 293, column: 34, scope: !513)
!520 = !DILocation(line: 293, column: 17, scope: !513)
!521 = !DILocation(line: 292, column: 30, scope: !513)
!522 = !DILocation(line: 291, column: 42, scope: !509)
!523 = !DILocation(line: 291, column: 9, scope: !509)
!524 = distinct !{!524, !511, !525, !526}
!525 = !DILocation(line: 293, column: 48, scope: !505)
!526 = !{!"llvm.loop.mustprogress"}
!527 = !DILocation(line: 294, column: 5, scope: !506)
!528 = !DILocation(line: 296, column: 5, scope: !492)
!529 = !DILocation(line: 297, column: 1, scope: !492)
!530 = distinct !DISubprogram(name: "nn_allocmsg", scope: !381, file: !381, line: 299, type: !531, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!531 = !DISubroutineType(types: !532)
!532 = !{!33, !16, !20}
!533 = !DILocalVariable(name: "size", arg: 1, scope: !530, file: !381, line: 299, type: !16)
!534 = !DILocation(line: 299, column: 27, scope: !530)
!535 = !DILocalVariable(name: "type", arg: 2, scope: !530, file: !381, line: 299, type: !20)
!536 = !DILocation(line: 299, column: 37, scope: !530)
!537 = !DILocation(line: 301, column: 28, scope: !530)
!538 = !DILocation(line: 301, column: 34, scope: !530)
!539 = !DILocation(line: 301, column: 12, scope: !530)
!540 = !DILocation(line: 301, column: 5, scope: !530)
!541 = distinct !DISubprogram(name: "nn_freemsg", scope: !381, file: !381, line: 304, type: !542, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!542 = !DISubroutineType(types: !543)
!543 = !{!20, !33}
!544 = !DILocalVariable(name: "msg", arg: 1, scope: !541, file: !381, line: 304, type: !33)
!545 = !DILocation(line: 304, column: 23, scope: !541)
!546 = !DILocation(line: 306, column: 20, scope: !541)
!547 = !DILocation(line: 306, column: 5, scope: !541)
!548 = !DILocation(line: 307, column: 5, scope: !541)
!549 = distinct !DISubprogram(name: "nn_socket", scope: !381, file: !381, line: 310, type: !550, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!550 = !DISubroutineType(types: !551)
!551 = !{!20, !20, !20}
!552 = !DILocalVariable(name: "domain", arg: 1, scope: !549, file: !381, line: 310, type: !20)
!553 = !DILocation(line: 310, column: 20, scope: !549)
!554 = !DILocalVariable(name: "protocol", arg: 2, scope: !549, file: !381, line: 310, type: !20)
!555 = !DILocation(line: 310, column: 32, scope: !549)
!556 = !DILocalVariable(name: "rc", scope: !549, file: !381, line: 312, type: !20)
!557 = !DILocation(line: 312, column: 9, scope: !549)
!558 = !DILocalVariable(name: "s", scope: !549, file: !381, line: 313, type: !20)
!559 = !DILocation(line: 313, column: 9, scope: !549)
!560 = !DILocalVariable(name: "it", scope: !549, file: !381, line: 314, type: !226)
!561 = !DILocation(line: 314, column: 26, scope: !549)
!562 = !DILocalVariable(name: "socktype", scope: !549, file: !381, line: 315, type: !22)
!563 = !DILocation(line: 315, column: 25, scope: !549)
!564 = !DILocalVariable(name: "sock", scope: !549, file: !381, line: 316, type: !94)
!565 = !DILocation(line: 316, column: 21, scope: !549)
!566 = !DILocation(line: 318, column: 5, scope: !549)
!567 = !DILocation(line: 321, column: 5, scope: !549)
!568 = !DILocation(line: 324, column: 9, scope: !569)
!569 = distinct !DILexicalBlock(scope: !549, file: !381, line: 324, column: 9)
!570 = !DILocation(line: 324, column: 9, scope: !549)
!571 = !DILocation(line: 325, column: 9, scope: !572)
!572 = distinct !DILexicalBlock(scope: !569, file: !381, line: 324, column: 52)
!573 = !DILocation(line: 326, column: 9, scope: !572)
!574 = !DILocation(line: 327, column: 9, scope: !572)
!575 = !DILocation(line: 327, column: 15, scope: !572)
!576 = !DILocation(line: 328, column: 9, scope: !572)
!577 = !DILocation(line: 332, column: 9, scope: !578)
!578 = distinct !DILexicalBlock(scope: !549, file: !381, line: 332, column: 9)
!579 = !DILocation(line: 0, scope: !578)
!580 = !DILocation(line: 332, column: 9, scope: !549)
!581 = !DILocation(line: 333, column: 9, scope: !582)
!582 = distinct !DILexicalBlock(scope: !578, file: !381, line: 332, column: 59)
!583 = !DILocation(line: 334, column: 9, scope: !582)
!584 = !DILocation(line: 335, column: 9, scope: !582)
!585 = !DILocation(line: 335, column: 15, scope: !582)
!586 = !DILocation(line: 336, column: 9, scope: !582)
!587 = !DILocation(line: 340, column: 9, scope: !588)
!588 = distinct !DILexicalBlock(scope: !549, file: !381, line: 340, column: 9)
!589 = !DILocation(line: 340, column: 9, scope: !549)
!590 = !DILocation(line: 341, column: 9, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !381, line: 340, column: 50)
!592 = !DILocation(line: 342, column: 9, scope: !591)
!593 = !DILocation(line: 343, column: 9, scope: !591)
!594 = !DILocation(line: 343, column: 15, scope: !591)
!595 = !DILocation(line: 344, column: 9, scope: !591)
!596 = !DILocation(line: 348, column: 14, scope: !549)
!597 = !DILocation(line: 348, column: 44, scope: !549)
!598 = !DILocation(line: 348, column: 37, scope: !549)
!599 = !DILocation(line: 348, column: 51, scope: !549)
!600 = !DILocation(line: 348, column: 9, scope: !549)
!601 = !DILocation(line: 348, column: 7, scope: !549)
!602 = !DILocation(line: 351, column: 15, scope: !603)
!603 = distinct !DILexicalBlock(scope: !549, file: !381, line: 351, column: 5)
!604 = !DILocation(line: 351, column: 13, scope: !603)
!605 = !DILocation(line: 351, column: 10, scope: !603)
!606 = !DILocation(line: 352, column: 11, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !381, line: 351, column: 5)
!608 = !DILocation(line: 352, column: 17, scope: !607)
!609 = !DILocation(line: 352, column: 14, scope: !607)
!610 = !DILocation(line: 351, column: 5, scope: !603)
!611 = !DILocation(line: 354, column: 20, scope: !612)
!612 = distinct !DILexicalBlock(scope: !607, file: !381, line: 353, column: 52)
!613 = !DILocation(line: 354, column: 18, scope: !612)
!614 = !DILocation(line: 355, column: 13, scope: !615)
!615 = distinct !DILexicalBlock(scope: !612, file: !381, line: 355, column: 13)
!616 = !DILocation(line: 355, column: 23, scope: !615)
!617 = !DILocation(line: 355, column: 33, scope: !615)
!618 = !DILocation(line: 355, column: 30, scope: !615)
!619 = !DILocation(line: 355, column: 40, scope: !615)
!620 = !DILocation(line: 355, column: 43, scope: !615)
!621 = !DILocation(line: 355, column: 53, scope: !615)
!622 = !DILocation(line: 355, column: 65, scope: !615)
!623 = !DILocation(line: 355, column: 62, scope: !615)
!624 = !DILocation(line: 355, column: 13, scope: !612)
!625 = !DILocation(line: 358, column: 20, scope: !626)
!626 = distinct !DILexicalBlock(scope: !615, file: !381, line: 355, column: 75)
!627 = !DILocation(line: 358, column: 18, scope: !626)
!628 = !DILocation(line: 359, column: 13, scope: !626)
!629 = !DILocation(line: 359, column: 13, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !381, line: 359, column: 13)
!631 = distinct !DILexicalBlock(scope: !626, file: !381, line: 359, column: 13)
!632 = !DILocation(line: 359, column: 13, scope: !631)
!633 = !DILocation(line: 359, column: 13, scope: !634)
!634 = distinct !DILexicalBlock(scope: !630, file: !381, line: 359, column: 13)
!635 = !DILocation(line: 360, column: 32, scope: !626)
!636 = !DILocation(line: 360, column: 38, scope: !626)
!637 = !DILocation(line: 360, column: 18, scope: !626)
!638 = !DILocation(line: 360, column: 16, scope: !626)
!639 = !DILocation(line: 361, column: 17, scope: !640)
!640 = distinct !DILexicalBlock(scope: !626, file: !381, line: 361, column: 17)
!641 = !DILocation(line: 361, column: 20, scope: !640)
!642 = !DILocation(line: 361, column: 17, scope: !626)
!643 = !DILocation(line: 362, column: 17, scope: !640)
!644 = !DILocation(line: 365, column: 30, scope: !626)
!645 = !DILocation(line: 365, column: 18, scope: !626)
!646 = !DILocation(line: 365, column: 25, scope: !626)
!647 = !DILocation(line: 365, column: 13, scope: !626)
!648 = !DILocation(line: 365, column: 28, scope: !626)
!649 = !DILocation(line: 366, column: 13, scope: !626)
!650 = !DILocation(line: 367, column: 13, scope: !626)
!651 = !DILocation(line: 368, column: 20, scope: !626)
!652 = !DILocation(line: 368, column: 13, scope: !626)
!653 = !DILocation(line: 370, column: 5, scope: !612)
!654 = !DILocation(line: 353, column: 47, scope: !607)
!655 = !DILocation(line: 353, column: 16, scope: !607)
!656 = !DILocation(line: 353, column: 14, scope: !607)
!657 = !DILocation(line: 351, column: 5, scope: !607)
!658 = distinct !{!658, !610, !659, !526}
!659 = !DILocation(line: 370, column: 5, scope: !603)
!660 = !DILocation(line: 371, column: 8, scope: !549)
!661 = !DILocation(line: 371, column: 5, scope: !549)
!662 = !DILabel(scope: !549, name: "error", file: !381, line: 374)
!663 = !DILocation(line: 374, column: 1, scope: !549)
!664 = !DILocation(line: 375, column: 5, scope: !549)
!665 = !DILocation(line: 376, column: 5, scope: !549)
!666 = !DILocation(line: 377, column: 14, scope: !549)
!667 = !DILocation(line: 377, column: 13, scope: !549)
!668 = !DILocation(line: 377, column: 5, scope: !549)
!669 = !DILocation(line: 377, column: 11, scope: !549)
!670 = !DILocation(line: 378, column: 5, scope: !549)
!671 = !DILocation(line: 379, column: 1, scope: !549)
!672 = distinct !DISubprogram(name: "nn_global_init", scope: !381, file: !381, line: 156, type: !332, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!673 = !DILocalVariable(name: "i", scope: !672, file: !381, line: 158, type: !20)
!674 = !DILocation(line: 158, column: 9, scope: !672)
!675 = !DILocation(line: 165, column: 14, scope: !676)
!676 = distinct !DILexicalBlock(scope: !672, file: !381, line: 165, column: 9)
!677 = !DILocation(line: 165, column: 9, scope: !676)
!678 = !DILocation(line: 165, column: 9, scope: !672)
!679 = !DILocation(line: 166, column: 9, scope: !676)
!680 = !DILocation(line: 177, column: 5, scope: !672)
!681 = !DILocation(line: 180, column: 5, scope: !672)
!682 = !DILocation(line: 183, column: 18, scope: !672)
!683 = !DILocation(line: 183, column: 16, scope: !672)
!684 = !DILocation(line: 185, column: 5, scope: !672)
!685 = !DILocation(line: 185, column: 5, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !381, line: 185, column: 5)
!687 = distinct !DILexicalBlock(scope: !672, file: !381, line: 185, column: 5)
!688 = !DILocation(line: 185, column: 5, scope: !687)
!689 = !DILocation(line: 185, column: 5, scope: !690)
!690 = distinct !DILexicalBlock(scope: !686, file: !381, line: 185, column: 5)
!691 = !DILocation(line: 186, column: 12, scope: !692)
!692 = distinct !DILexicalBlock(scope: !672, file: !381, line: 186, column: 5)
!693 = !DILocation(line: 186, column: 10, scope: !692)
!694 = !DILocation(line: 186, column: 17, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !381, line: 186, column: 5)
!696 = !DILocation(line: 186, column: 19, scope: !695)
!697 = !DILocation(line: 186, column: 5, scope: !692)
!698 = !DILocation(line: 187, column: 14, scope: !695)
!699 = !DILocation(line: 187, column: 21, scope: !695)
!700 = !DILocation(line: 187, column: 9, scope: !695)
!701 = !DILocation(line: 187, column: 24, scope: !695)
!702 = !DILocation(line: 186, column: 38, scope: !695)
!703 = !DILocation(line: 186, column: 5, scope: !695)
!704 = distinct !{!704, !697, !705, !526}
!705 = !DILocation(line: 187, column: 26, scope: !692)
!706 = !DILocation(line: 188, column: 17, scope: !672)
!707 = !DILocation(line: 189, column: 16, scope: !672)
!708 = !DILocation(line: 192, column: 37, scope: !672)
!709 = !DILocation(line: 192, column: 43, scope: !672)
!710 = !DILocation(line: 192, column: 17, scope: !672)
!711 = !DILocation(line: 193, column: 5, scope: !672)
!712 = !DILocation(line: 193, column: 5, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !381, line: 193, column: 5)
!714 = distinct !DILexicalBlock(scope: !672, file: !381, line: 193, column: 5)
!715 = !DILocation(line: 193, column: 5, scope: !714)
!716 = !DILocation(line: 193, column: 5, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !381, line: 193, column: 5)
!718 = !DILocation(line: 194, column: 12, scope: !719)
!719 = distinct !DILexicalBlock(scope: !672, file: !381, line: 194, column: 5)
!720 = !DILocation(line: 194, column: 10, scope: !719)
!721 = !DILocation(line: 194, column: 17, scope: !722)
!722 = distinct !DILexicalBlock(scope: !719, file: !381, line: 194, column: 5)
!723 = !DILocation(line: 194, column: 19, scope: !722)
!724 = !DILocation(line: 194, column: 5, scope: !719)
!725 = !DILocation(line: 195, column: 44, scope: !722)
!726 = !DILocation(line: 195, column: 42, scope: !722)
!727 = !DILocation(line: 195, column: 46, scope: !722)
!728 = !DILocation(line: 195, column: 27, scope: !722)
!729 = !DILocation(line: 195, column: 14, scope: !722)
!730 = !DILocation(line: 195, column: 22, scope: !722)
!731 = !DILocation(line: 195, column: 9, scope: !722)
!732 = !DILocation(line: 195, column: 25, scope: !722)
!733 = !DILocation(line: 194, column: 38, scope: !722)
!734 = !DILocation(line: 194, column: 5, scope: !722)
!735 = distinct !{!735, !724, !736, !526}
!736 = !DILocation(line: 195, column: 48, scope: !719)
!737 = !DILocation(line: 198, column: 5, scope: !672)
!738 = !DILocation(line: 199, column: 5, scope: !672)
!739 = !DILocation(line: 202, column: 30, scope: !672)
!740 = !DILocation(line: 202, column: 5, scope: !672)
!741 = !DILocation(line: 204, column: 30, scope: !672)
!742 = !DILocation(line: 204, column: 5, scope: !672)
!743 = !DILocation(line: 206, column: 30, scope: !672)
!744 = !DILocation(line: 206, column: 5, scope: !672)
!745 = !DILocation(line: 209, column: 29, scope: !672)
!746 = !DILocation(line: 209, column: 5, scope: !672)
!747 = !DILocation(line: 210, column: 29, scope: !672)
!748 = !DILocation(line: 210, column: 5, scope: !672)
!749 = !DILocation(line: 211, column: 29, scope: !672)
!750 = !DILocation(line: 211, column: 5, scope: !672)
!751 = !DILocation(line: 212, column: 29, scope: !672)
!752 = !DILocation(line: 212, column: 5, scope: !672)
!753 = !DILocation(line: 213, column: 29, scope: !672)
!754 = !DILocation(line: 213, column: 5, scope: !672)
!755 = !DILocation(line: 214, column: 29, scope: !672)
!756 = !DILocation(line: 214, column: 5, scope: !672)
!757 = !DILocation(line: 215, column: 29, scope: !672)
!758 = !DILocation(line: 215, column: 5, scope: !672)
!759 = !DILocation(line: 216, column: 29, scope: !672)
!760 = !DILocation(line: 216, column: 5, scope: !672)
!761 = !DILocation(line: 217, column: 29, scope: !672)
!762 = !DILocation(line: 217, column: 5, scope: !672)
!763 = !DILocation(line: 218, column: 29, scope: !672)
!764 = !DILocation(line: 218, column: 5, scope: !672)
!765 = !DILocation(line: 219, column: 29, scope: !672)
!766 = !DILocation(line: 219, column: 5, scope: !672)
!767 = !DILocation(line: 220, column: 29, scope: !672)
!768 = !DILocation(line: 220, column: 5, scope: !672)
!769 = !DILocation(line: 221, column: 29, scope: !672)
!770 = !DILocation(line: 221, column: 5, scope: !672)
!771 = !DILocation(line: 222, column: 29, scope: !672)
!772 = !DILocation(line: 222, column: 5, scope: !672)
!773 = !DILocation(line: 223, column: 29, scope: !672)
!774 = !DILocation(line: 223, column: 5, scope: !672)
!775 = !DILocation(line: 224, column: 29, scope: !672)
!776 = !DILocation(line: 224, column: 5, scope: !672)
!777 = !DILocation(line: 225, column: 29, scope: !672)
!778 = !DILocation(line: 225, column: 5, scope: !672)
!779 = !DILocation(line: 226, column: 29, scope: !672)
!780 = !DILocation(line: 226, column: 5, scope: !672)
!781 = !DILocation(line: 229, column: 5, scope: !672)
!782 = !DILocation(line: 230, column: 1, scope: !672)
!783 = distinct !DISubprogram(name: "nn_global_term", scope: !381, file: !381, line: 232, type: !332, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!784 = !DILocalVariable(name: "it", scope: !783, file: !381, line: 237, type: !226)
!785 = !DILocation(line: 237, column: 26, scope: !783)
!786 = !DILocalVariable(name: "tp", scope: !783, file: !381, line: 238, type: !323)
!787 = !DILocation(line: 238, column: 26, scope: !783)
!788 = !DILocation(line: 241, column: 5, scope: !783)
!789 = !DILocation(line: 241, column: 5, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !381, line: 241, column: 5)
!791 = distinct !DILexicalBlock(scope: !783, file: !381, line: 241, column: 5)
!792 = !DILocation(line: 241, column: 5, scope: !791)
!793 = !DILocation(line: 241, column: 5, scope: !794)
!794 = distinct !DILexicalBlock(scope: !790, file: !381, line: 241, column: 5)
!795 = !DILocation(line: 242, column: 14, scope: !796)
!796 = distinct !DILexicalBlock(scope: !783, file: !381, line: 242, column: 9)
!797 = !DILocation(line: 242, column: 21, scope: !796)
!798 = !DILocation(line: 242, column: 9, scope: !783)
!799 = !DILocation(line: 243, column: 9, scope: !796)
!800 = !DILocation(line: 246, column: 5, scope: !783)
!801 = !DILocation(line: 249, column: 5, scope: !783)
!802 = !DILocation(line: 249, column: 13, scope: !783)
!803 = !DILocation(line: 249, column: 12, scope: !783)
!804 = !DILocation(line: 250, column: 14, scope: !805)
!805 = distinct !DILexicalBlock(scope: !783, file: !381, line: 249, column: 47)
!806 = !DILocation(line: 250, column: 12, scope: !805)
!807 = !DILocation(line: 251, column: 14, scope: !805)
!808 = !DILocation(line: 251, column: 12, scope: !805)
!809 = !DILocation(line: 252, column: 13, scope: !810)
!810 = distinct !DILexicalBlock(scope: !805, file: !381, line: 252, column: 13)
!811 = !DILocation(line: 252, column: 17, scope: !810)
!812 = !DILocation(line: 252, column: 13, scope: !805)
!813 = !DILocation(line: 253, column: 13, scope: !810)
!814 = !DILocation(line: 253, column: 17, scope: !810)
!815 = !DILocation(line: 254, column: 42, scope: !805)
!816 = !DILocation(line: 254, column: 9, scope: !805)
!817 = distinct !{!817, !801, !818, !526}
!818 = !DILocation(line: 255, column: 5, scope: !783)
!819 = !DILocation(line: 259, column: 5, scope: !783)
!820 = !DILocation(line: 259, column: 13, scope: !783)
!821 = !DILocation(line: 259, column: 12, scope: !783)
!822 = !DILocation(line: 260, column: 41, scope: !783)
!823 = !DILocation(line: 260, column: 9, scope: !783)
!824 = distinct !{!824, !819, !825, !526}
!825 = !DILocation(line: 260, column: 72, scope: !783)
!826 = !DILocation(line: 263, column: 5, scope: !783)
!827 = !DILocation(line: 264, column: 5, scope: !783)
!828 = !DILocation(line: 265, column: 19, scope: !783)
!829 = !DILocation(line: 265, column: 5, scope: !783)
!830 = !DILocation(line: 268, column: 16, scope: !783)
!831 = !DILocation(line: 271, column: 5, scope: !783)
!832 = !DILocation(line: 278, column: 1, scope: !783)
!833 = distinct !DISubprogram(name: "nn_close", scope: !381, file: !381, line: 381, type: !318, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!834 = !DILocalVariable(name: "s", arg: 1, scope: !833, file: !381, line: 381, type: !20)
!835 = !DILocation(line: 381, column: 19, scope: !833)
!836 = !DILocalVariable(name: "rc", scope: !833, file: !381, line: 383, type: !20)
!837 = !DILocation(line: 383, column: 9, scope: !833)
!838 = !DILocation(line: 385, column: 5, scope: !839)
!839 = distinct !DILexicalBlock(scope: !833, file: !381, line: 385, column: 5)
!840 = !DILocation(line: 385, column: 5, scope: !833)
!841 = !DILocation(line: 385, column: 5, scope: !842)
!842 = distinct !DILexicalBlock(scope: !839, file: !381, line: 385, column: 5)
!843 = !DILocation(line: 389, column: 5, scope: !833)
!844 = !DILocation(line: 392, column: 29, scope: !833)
!845 = !DILocation(line: 392, column: 36, scope: !833)
!846 = !DILocation(line: 392, column: 24, scope: !833)
!847 = !DILocation(line: 392, column: 10, scope: !833)
!848 = !DILocation(line: 392, column: 8, scope: !833)
!849 = !DILocation(line: 393, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !833, file: !381, line: 393, column: 9)
!851 = !DILocation(line: 393, column: 9, scope: !833)
!852 = !DILocation(line: 394, column: 9, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !381, line: 393, column: 33)
!854 = !DILocation(line: 394, column: 15, scope: !853)
!855 = !DILocation(line: 395, column: 9, scope: !853)
!856 = !DILocation(line: 400, column: 19, scope: !833)
!857 = !DILocation(line: 400, column: 26, scope: !833)
!858 = !DILocation(line: 400, column: 14, scope: !833)
!859 = !DILocation(line: 400, column: 5, scope: !833)
!860 = !DILocation(line: 401, column: 10, scope: !833)
!861 = !DILocation(line: 401, column: 17, scope: !833)
!862 = !DILocation(line: 401, column: 5, scope: !833)
!863 = !DILocation(line: 401, column: 20, scope: !833)
!864 = !DILocation(line: 402, column: 50, scope: !833)
!865 = !DILocation(line: 402, column: 10, scope: !833)
!866 = !DILocation(line: 402, column: 40, scope: !833)
!867 = !DILocation(line: 402, column: 33, scope: !833)
!868 = !DILocation(line: 402, column: 5, scope: !833)
!869 = !DILocation(line: 402, column: 48, scope: !833)
!870 = !DILocation(line: 403, column: 5, scope: !833)
!871 = !DILocation(line: 406, column: 5, scope: !833)
!872 = !DILocation(line: 408, column: 5, scope: !833)
!873 = !DILocation(line: 410, column: 5, scope: !833)
!874 = !DILocation(line: 411, column: 1, scope: !833)
!875 = distinct !DISubprogram(name: "nn_setsockopt", scope: !381, file: !381, line: 413, type: !876, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!876 = !DISubroutineType(types: !877)
!877 = !{!20, !20, !20, !20, !86, !16}
!878 = !DILocalVariable(name: "s", arg: 1, scope: !875, file: !381, line: 413, type: !20)
!879 = !DILocation(line: 413, column: 24, scope: !875)
!880 = !DILocalVariable(name: "level", arg: 2, scope: !875, file: !381, line: 413, type: !20)
!881 = !DILocation(line: 413, column: 31, scope: !875)
!882 = !DILocalVariable(name: "option", arg: 3, scope: !875, file: !381, line: 413, type: !20)
!883 = !DILocation(line: 413, column: 42, scope: !875)
!884 = !DILocalVariable(name: "optval", arg: 4, scope: !875, file: !381, line: 413, type: !86)
!885 = !DILocation(line: 413, column: 62, scope: !875)
!886 = !DILocalVariable(name: "optvallen", arg: 5, scope: !875, file: !381, line: 414, type: !16)
!887 = !DILocation(line: 414, column: 12, scope: !875)
!888 = !DILocalVariable(name: "rc", scope: !875, file: !381, line: 416, type: !20)
!889 = !DILocation(line: 416, column: 9, scope: !875)
!890 = !DILocation(line: 418, column: 5, scope: !891)
!891 = distinct !DILexicalBlock(scope: !875, file: !381, line: 418, column: 5)
!892 = !DILocation(line: 418, column: 5, scope: !875)
!893 = !DILocation(line: 418, column: 5, scope: !894)
!894 = distinct !DILexicalBlock(scope: !891, file: !381, line: 418, column: 5)
!895 = !DILocation(line: 420, column: 9, scope: !896)
!896 = distinct !DILexicalBlock(scope: !875, file: !381, line: 420, column: 9)
!897 = !DILocation(line: 0, scope: !896)
!898 = !DILocation(line: 420, column: 9, scope: !875)
!899 = !DILocation(line: 421, column: 9, scope: !900)
!900 = distinct !DILexicalBlock(scope: !896, file: !381, line: 420, column: 41)
!901 = !DILocation(line: 421, column: 15, scope: !900)
!902 = !DILocation(line: 422, column: 9, scope: !900)
!903 = !DILocation(line: 425, column: 31, scope: !875)
!904 = !DILocation(line: 425, column: 38, scope: !875)
!905 = !DILocation(line: 425, column: 26, scope: !875)
!906 = !DILocation(line: 425, column: 42, scope: !875)
!907 = !DILocation(line: 425, column: 49, scope: !875)
!908 = !DILocation(line: 425, column: 57, scope: !875)
!909 = !DILocation(line: 425, column: 65, scope: !875)
!910 = !DILocation(line: 425, column: 10, scope: !875)
!911 = !DILocation(line: 425, column: 8, scope: !875)
!912 = !DILocation(line: 426, column: 9, scope: !913)
!913 = distinct !DILexicalBlock(scope: !875, file: !381, line: 426, column: 9)
!914 = !DILocation(line: 426, column: 9, scope: !875)
!915 = !DILocation(line: 427, column: 18, scope: !916)
!916 = distinct !DILexicalBlock(scope: !913, file: !381, line: 426, column: 27)
!917 = !DILocation(line: 427, column: 17, scope: !916)
!918 = !DILocation(line: 427, column: 9, scope: !916)
!919 = !DILocation(line: 427, column: 15, scope: !916)
!920 = !DILocation(line: 428, column: 9, scope: !916)
!921 = !DILocation(line: 430, column: 5, scope: !875)
!922 = !DILocation(line: 430, column: 5, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !381, line: 430, column: 5)
!924 = distinct !DILexicalBlock(scope: !875, file: !381, line: 430, column: 5)
!925 = !DILocation(line: 430, column: 5, scope: !924)
!926 = !DILocation(line: 430, column: 5, scope: !927)
!927 = distinct !DILexicalBlock(scope: !923, file: !381, line: 430, column: 5)
!928 = !DILocation(line: 432, column: 5, scope: !875)
!929 = !DILocation(line: 433, column: 1, scope: !875)
!930 = distinct !DISubprogram(name: "nn_getsockopt", scope: !381, file: !381, line: 435, type: !931, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!931 = !DISubroutineType(types: !932)
!932 = !{!20, !20, !20, !20, !33, !92}
!933 = !DILocalVariable(name: "s", arg: 1, scope: !930, file: !381, line: 435, type: !20)
!934 = !DILocation(line: 435, column: 24, scope: !930)
!935 = !DILocalVariable(name: "level", arg: 2, scope: !930, file: !381, line: 435, type: !20)
!936 = !DILocation(line: 435, column: 31, scope: !930)
!937 = !DILocalVariable(name: "option", arg: 3, scope: !930, file: !381, line: 435, type: !20)
!938 = !DILocation(line: 435, column: 42, scope: !930)
!939 = !DILocalVariable(name: "optval", arg: 4, scope: !930, file: !381, line: 435, type: !33)
!940 = !DILocation(line: 435, column: 56, scope: !930)
!941 = !DILocalVariable(name: "optvallen", arg: 5, scope: !930, file: !381, line: 436, type: !92)
!942 = !DILocation(line: 436, column: 13, scope: !930)
!943 = !DILocalVariable(name: "rc", scope: !930, file: !381, line: 438, type: !20)
!944 = !DILocation(line: 438, column: 9, scope: !930)
!945 = !DILocation(line: 440, column: 5, scope: !946)
!946 = distinct !DILexicalBlock(scope: !930, file: !381, line: 440, column: 5)
!947 = !DILocation(line: 440, column: 5, scope: !930)
!948 = !DILocation(line: 440, column: 5, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !381, line: 440, column: 5)
!950 = !DILocation(line: 442, column: 9, scope: !951)
!951 = distinct !DILexicalBlock(scope: !930, file: !381, line: 442, column: 9)
!952 = !DILocation(line: 0, scope: !951)
!953 = !DILocation(line: 442, column: 9, scope: !930)
!954 = !DILocation(line: 443, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !951, file: !381, line: 442, column: 41)
!956 = !DILocation(line: 443, column: 15, scope: !955)
!957 = !DILocation(line: 444, column: 9, scope: !955)
!958 = !DILocation(line: 447, column: 31, scope: !930)
!959 = !DILocation(line: 447, column: 38, scope: !930)
!960 = !DILocation(line: 447, column: 26, scope: !930)
!961 = !DILocation(line: 447, column: 42, scope: !930)
!962 = !DILocation(line: 447, column: 49, scope: !930)
!963 = !DILocation(line: 447, column: 57, scope: !930)
!964 = !DILocation(line: 447, column: 65, scope: !930)
!965 = !DILocation(line: 447, column: 10, scope: !930)
!966 = !DILocation(line: 447, column: 8, scope: !930)
!967 = !DILocation(line: 448, column: 9, scope: !968)
!968 = distinct !DILexicalBlock(scope: !930, file: !381, line: 448, column: 9)
!969 = !DILocation(line: 448, column: 9, scope: !930)
!970 = !DILocation(line: 449, column: 18, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !381, line: 448, column: 27)
!972 = !DILocation(line: 449, column: 17, scope: !971)
!973 = !DILocation(line: 449, column: 9, scope: !971)
!974 = !DILocation(line: 449, column: 15, scope: !971)
!975 = !DILocation(line: 450, column: 9, scope: !971)
!976 = !DILocation(line: 452, column: 5, scope: !930)
!977 = !DILocation(line: 452, column: 5, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !381, line: 452, column: 5)
!979 = distinct !DILexicalBlock(scope: !930, file: !381, line: 452, column: 5)
!980 = !DILocation(line: 452, column: 5, scope: !979)
!981 = !DILocation(line: 452, column: 5, scope: !982)
!982 = distinct !DILexicalBlock(scope: !978, file: !381, line: 452, column: 5)
!983 = !DILocation(line: 454, column: 5, scope: !930)
!984 = !DILocation(line: 455, column: 1, scope: !930)
!985 = distinct !DISubprogram(name: "nn_bind", scope: !381, file: !381, line: 457, type: !986, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!986 = !DISubroutineType(types: !987)
!987 = !{!20, !20, !327}
!988 = !DILocalVariable(name: "s", arg: 1, scope: !985, file: !381, line: 457, type: !20)
!989 = !DILocation(line: 457, column: 18, scope: !985)
!990 = !DILocalVariable(name: "addr", arg: 2, scope: !985, file: !381, line: 457, type: !327)
!991 = !DILocation(line: 457, column: 33, scope: !985)
!992 = !DILocalVariable(name: "rc", scope: !985, file: !381, line: 459, type: !20)
!993 = !DILocation(line: 459, column: 9, scope: !985)
!994 = !DILocation(line: 461, column: 5, scope: !995)
!995 = distinct !DILexicalBlock(scope: !985, file: !381, line: 461, column: 5)
!996 = !DILocation(line: 461, column: 5, scope: !985)
!997 = !DILocation(line: 461, column: 5, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !381, line: 461, column: 5)
!999 = !DILocation(line: 463, column: 31, scope: !985)
!1000 = !DILocation(line: 463, column: 34, scope: !985)
!1001 = !DILocation(line: 463, column: 10, scope: !985)
!1002 = !DILocation(line: 463, column: 8, scope: !985)
!1003 = !DILocation(line: 464, column: 9, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !985, file: !381, line: 464, column: 9)
!1005 = !DILocation(line: 464, column: 12, scope: !1004)
!1006 = !DILocation(line: 464, column: 9, scope: !985)
!1007 = !DILocation(line: 465, column: 18, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !381, line: 464, column: 17)
!1009 = !DILocation(line: 465, column: 17, scope: !1008)
!1010 = !DILocation(line: 465, column: 9, scope: !1008)
!1011 = !DILocation(line: 465, column: 15, scope: !1008)
!1012 = !DILocation(line: 466, column: 9, scope: !1008)
!1013 = !DILocation(line: 469, column: 12, scope: !985)
!1014 = !DILocation(line: 469, column: 5, scope: !985)
!1015 = !DILocation(line: 470, column: 1, scope: !985)
!1016 = distinct !DISubprogram(name: "nn_global_create_ep", scope: !381, file: !381, line: 754, type: !1017, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!20, !20, !327, !20}
!1019 = !DILocalVariable(name: "s", arg: 1, scope: !1016, file: !381, line: 754, type: !20)
!1020 = !DILocation(line: 754, column: 37, scope: !1016)
!1021 = !DILocalVariable(name: "addr", arg: 2, scope: !1016, file: !381, line: 754, type: !327)
!1022 = !DILocation(line: 754, column: 52, scope: !1016)
!1023 = !DILocalVariable(name: "bind", arg: 3, scope: !1016, file: !381, line: 754, type: !20)
!1024 = !DILocation(line: 754, column: 62, scope: !1016)
!1025 = !DILocalVariable(name: "rc", scope: !1016, file: !381, line: 756, type: !20)
!1026 = !DILocation(line: 756, column: 9, scope: !1016)
!1027 = !DILocalVariable(name: "proto", scope: !1016, file: !381, line: 757, type: !327)
!1028 = !DILocation(line: 757, column: 17, scope: !1016)
!1029 = !DILocalVariable(name: "delim", scope: !1016, file: !381, line: 758, type: !327)
!1030 = !DILocation(line: 758, column: 17, scope: !1016)
!1031 = !DILocalVariable(name: "protosz", scope: !1016, file: !381, line: 759, type: !16)
!1032 = !DILocation(line: 759, column: 12, scope: !1016)
!1033 = !DILocalVariable(name: "tp", scope: !1016, file: !381, line: 760, type: !323)
!1034 = !DILocation(line: 760, column: 26, scope: !1016)
!1035 = !DILocalVariable(name: "it", scope: !1016, file: !381, line: 761, type: !226)
!1036 = !DILocation(line: 761, column: 26, scope: !1016)
!1037 = !DILocation(line: 764, column: 10, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1016, file: !381, line: 764, column: 9)
!1039 = !DILocation(line: 764, column: 9, scope: !1016)
!1040 = !DILocation(line: 765, column: 9, scope: !1038)
!1041 = !DILocation(line: 766, column: 17, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1016, file: !381, line: 766, column: 9)
!1043 = !DILocation(line: 766, column: 9, scope: !1042)
!1044 = !DILocation(line: 766, column: 23, scope: !1042)
!1045 = !DILocation(line: 766, column: 9, scope: !1016)
!1046 = !DILocation(line: 767, column: 9, scope: !1042)
!1047 = !DILocation(line: 770, column: 13, scope: !1016)
!1048 = !DILocation(line: 770, column: 11, scope: !1016)
!1049 = !DILocation(line: 771, column: 21, scope: !1016)
!1050 = !DILocation(line: 771, column: 13, scope: !1016)
!1051 = !DILocation(line: 771, column: 11, scope: !1016)
!1052 = !DILocation(line: 772, column: 10, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1016, file: !381, line: 772, column: 9)
!1054 = !DILocation(line: 772, column: 9, scope: !1016)
!1055 = !DILocation(line: 773, column: 9, scope: !1053)
!1056 = !DILocation(line: 774, column: 9, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1016, file: !381, line: 774, column: 9)
!1058 = !DILocation(line: 774, column: 19, scope: !1057)
!1059 = !DILocation(line: 774, column: 26, scope: !1057)
!1060 = !DILocation(line: 774, column: 29, scope: !1057)
!1061 = !DILocation(line: 774, column: 39, scope: !1057)
!1062 = !DILocation(line: 774, column: 9, scope: !1016)
!1063 = !DILocation(line: 775, column: 9, scope: !1057)
!1064 = !DILocation(line: 776, column: 15, scope: !1016)
!1065 = !DILocation(line: 776, column: 23, scope: !1016)
!1066 = !DILocation(line: 776, column: 21, scope: !1016)
!1067 = !DILocation(line: 776, column: 13, scope: !1016)
!1068 = !DILocation(line: 777, column: 13, scope: !1016)
!1069 = !DILocation(line: 777, column: 21, scope: !1016)
!1070 = !DILocation(line: 777, column: 10, scope: !1016)
!1071 = !DILocation(line: 780, column: 8, scope: !1016)
!1072 = !DILocation(line: 781, column: 5, scope: !1016)
!1073 = !DILocation(line: 782, column: 15, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1016, file: !381, line: 782, column: 5)
!1075 = !DILocation(line: 782, column: 13, scope: !1074)
!1076 = !DILocation(line: 782, column: 10, scope: !1074)
!1077 = !DILocation(line: 783, column: 11, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !381, line: 782, column: 5)
!1079 = !DILocation(line: 783, column: 17, scope: !1078)
!1080 = !DILocation(line: 783, column: 14, scope: !1078)
!1081 = !DILocation(line: 782, column: 5, scope: !1074)
!1082 = !DILocation(line: 785, column: 14, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !381, line: 784, column: 53)
!1084 = !DILocation(line: 785, column: 12, scope: !1083)
!1085 = !DILocation(line: 786, column: 21, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1083, file: !381, line: 786, column: 13)
!1087 = !DILocation(line: 786, column: 25, scope: !1086)
!1088 = !DILocation(line: 786, column: 13, scope: !1086)
!1089 = !DILocation(line: 786, column: 34, scope: !1086)
!1090 = !DILocation(line: 786, column: 31, scope: !1086)
!1091 = !DILocation(line: 786, column: 42, scope: !1086)
!1092 = !DILocation(line: 787, column: 23, scope: !1086)
!1093 = !DILocation(line: 787, column: 27, scope: !1086)
!1094 = !DILocation(line: 787, column: 33, scope: !1086)
!1095 = !DILocation(line: 787, column: 40, scope: !1086)
!1096 = !DILocation(line: 787, column: 15, scope: !1086)
!1097 = !DILocation(line: 787, column: 49, scope: !1086)
!1098 = !DILocation(line: 786, column: 13, scope: !1083)
!1099 = !DILocation(line: 788, column: 13, scope: !1086)
!1100 = !DILocation(line: 789, column: 12, scope: !1083)
!1101 = !DILocation(line: 790, column: 5, scope: !1083)
!1102 = !DILocation(line: 784, column: 48, scope: !1078)
!1103 = !DILocation(line: 784, column: 16, scope: !1078)
!1104 = !DILocation(line: 784, column: 14, scope: !1078)
!1105 = !DILocation(line: 782, column: 5, scope: !1078)
!1106 = distinct !{!1106, !1081, !1107, !526}
!1107 = !DILocation(line: 790, column: 5, scope: !1074)
!1108 = !DILocation(line: 793, column: 10, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1016, file: !381, line: 793, column: 9)
!1110 = !DILocation(line: 793, column: 9, scope: !1016)
!1111 = !DILocation(line: 794, column: 9, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !381, line: 793, column: 14)
!1113 = !DILocation(line: 795, column: 9, scope: !1112)
!1114 = !DILocation(line: 799, column: 31, scope: !1016)
!1115 = !DILocation(line: 799, column: 38, scope: !1016)
!1116 = !DILocation(line: 799, column: 26, scope: !1016)
!1117 = !DILocation(line: 799, column: 42, scope: !1016)
!1118 = !DILocation(line: 799, column: 46, scope: !1016)
!1119 = !DILocation(line: 799, column: 52, scope: !1016)
!1120 = !DILocation(line: 799, column: 10, scope: !1016)
!1121 = !DILocation(line: 799, column: 8, scope: !1016)
!1122 = !DILocation(line: 800, column: 5, scope: !1016)
!1123 = !DILocation(line: 801, column: 12, scope: !1016)
!1124 = !DILocation(line: 801, column: 5, scope: !1016)
!1125 = !DILocation(line: 802, column: 1, scope: !1016)
!1126 = distinct !DISubprogram(name: "nn_connect", scope: !381, file: !381, line: 472, type: !986, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!1127 = !DILocalVariable(name: "s", arg: 1, scope: !1126, file: !381, line: 472, type: !20)
!1128 = !DILocation(line: 472, column: 21, scope: !1126)
!1129 = !DILocalVariable(name: "addr", arg: 2, scope: !1126, file: !381, line: 472, type: !327)
!1130 = !DILocation(line: 472, column: 36, scope: !1126)
!1131 = !DILocalVariable(name: "rc", scope: !1126, file: !381, line: 474, type: !20)
!1132 = !DILocation(line: 474, column: 9, scope: !1126)
!1133 = !DILocation(line: 476, column: 5, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1126, file: !381, line: 476, column: 5)
!1135 = !DILocation(line: 476, column: 5, scope: !1126)
!1136 = !DILocation(line: 476, column: 5, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !381, line: 476, column: 5)
!1138 = !DILocation(line: 478, column: 31, scope: !1126)
!1139 = !DILocation(line: 478, column: 34, scope: !1126)
!1140 = !DILocation(line: 478, column: 10, scope: !1126)
!1141 = !DILocation(line: 478, column: 8, scope: !1126)
!1142 = !DILocation(line: 479, column: 9, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1126, file: !381, line: 479, column: 9)
!1144 = !DILocation(line: 479, column: 12, scope: !1143)
!1145 = !DILocation(line: 479, column: 9, scope: !1126)
!1146 = !DILocation(line: 480, column: 18, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !381, line: 479, column: 17)
!1148 = !DILocation(line: 480, column: 17, scope: !1147)
!1149 = !DILocation(line: 480, column: 9, scope: !1147)
!1150 = !DILocation(line: 480, column: 15, scope: !1147)
!1151 = !DILocation(line: 481, column: 9, scope: !1147)
!1152 = !DILocation(line: 484, column: 12, scope: !1126)
!1153 = !DILocation(line: 484, column: 5, scope: !1126)
!1154 = !DILocation(line: 485, column: 1, scope: !1126)
!1155 = distinct !DISubprogram(name: "nn_shutdown", scope: !381, file: !381, line: 487, type: !550, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!1156 = !DILocalVariable(name: "s", arg: 1, scope: !1155, file: !381, line: 487, type: !20)
!1157 = !DILocation(line: 487, column: 22, scope: !1155)
!1158 = !DILocalVariable(name: "how", arg: 2, scope: !1155, file: !381, line: 487, type: !20)
!1159 = !DILocation(line: 487, column: 29, scope: !1155)
!1160 = !DILocalVariable(name: "rc", scope: !1155, file: !381, line: 489, type: !20)
!1161 = !DILocation(line: 489, column: 9, scope: !1155)
!1162 = !DILocation(line: 491, column: 5, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1155, file: !381, line: 491, column: 5)
!1164 = !DILocation(line: 491, column: 5, scope: !1155)
!1165 = !DILocation(line: 491, column: 5, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1163, file: !381, line: 491, column: 5)
!1167 = !DILocation(line: 493, column: 30, scope: !1155)
!1168 = !DILocation(line: 493, column: 37, scope: !1155)
!1169 = !DILocation(line: 493, column: 25, scope: !1155)
!1170 = !DILocation(line: 493, column: 41, scope: !1155)
!1171 = !DILocation(line: 493, column: 10, scope: !1155)
!1172 = !DILocation(line: 493, column: 8, scope: !1155)
!1173 = !DILocation(line: 494, column: 9, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1155, file: !381, line: 494, column: 9)
!1175 = !DILocation(line: 494, column: 9, scope: !1155)
!1176 = !DILocation(line: 495, column: 18, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !381, line: 494, column: 27)
!1178 = !DILocation(line: 495, column: 17, scope: !1177)
!1179 = !DILocation(line: 495, column: 9, scope: !1177)
!1180 = !DILocation(line: 495, column: 15, scope: !1177)
!1181 = !DILocation(line: 496, column: 9, scope: !1177)
!1182 = !DILocation(line: 498, column: 5, scope: !1155)
!1183 = !DILocation(line: 498, column: 5, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !381, line: 498, column: 5)
!1185 = distinct !DILexicalBlock(scope: !1155, file: !381, line: 498, column: 5)
!1186 = !DILocation(line: 498, column: 5, scope: !1185)
!1187 = !DILocation(line: 498, column: 5, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1184, file: !381, line: 498, column: 5)
!1189 = !DILocation(line: 500, column: 5, scope: !1155)
!1190 = !DILocation(line: 501, column: 1, scope: !1155)
!1191 = distinct !DISubprogram(name: "nn_send", scope: !381, file: !381, line: 503, type: !1192, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!20, !20, !86, !16, !20}
!1194 = !DILocalVariable(name: "s", arg: 1, scope: !1191, file: !381, line: 503, type: !20)
!1195 = !DILocation(line: 503, column: 18, scope: !1191)
!1196 = !DILocalVariable(name: "buf", arg: 2, scope: !1191, file: !381, line: 503, type: !86)
!1197 = !DILocation(line: 503, column: 33, scope: !1191)
!1198 = !DILocalVariable(name: "len", arg: 3, scope: !1191, file: !381, line: 503, type: !16)
!1199 = !DILocation(line: 503, column: 45, scope: !1191)
!1200 = !DILocalVariable(name: "flags", arg: 4, scope: !1191, file: !381, line: 503, type: !20)
!1201 = !DILocation(line: 503, column: 54, scope: !1191)
!1202 = !DILocalVariable(name: "rc", scope: !1191, file: !381, line: 505, type: !20)
!1203 = !DILocation(line: 505, column: 9, scope: !1191)
!1204 = !DILocalVariable(name: "msg", scope: !1191, file: !381, line: 506, type: !69)
!1205 = !DILocation(line: 506, column: 19, scope: !1191)
!1206 = !DILocalVariable(name: "chunk", scope: !1191, file: !381, line: 507, type: !33)
!1207 = !DILocation(line: 507, column: 11, scope: !1191)
!1208 = !DILocation(line: 509, column: 5, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1191, file: !381, line: 509, column: 5)
!1210 = !DILocation(line: 509, column: 5, scope: !1191)
!1211 = !DILocation(line: 509, column: 5, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1209, file: !381, line: 509, column: 5)
!1213 = !DILocation(line: 511, column: 9, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1191, file: !381, line: 511, column: 9)
!1215 = !DILocation(line: 0, scope: !1214)
!1216 = !DILocation(line: 511, column: 9, scope: !1191)
!1217 = !DILocation(line: 512, column: 9, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !381, line: 511, column: 32)
!1219 = !DILocation(line: 512, column: 15, scope: !1218)
!1220 = !DILocation(line: 513, column: 9, scope: !1218)
!1221 = !DILocation(line: 517, column: 9, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1191, file: !381, line: 517, column: 9)
!1223 = !DILocation(line: 517, column: 13, scope: !1222)
!1224 = !DILocation(line: 517, column: 9, scope: !1191)
!1225 = !DILocation(line: 518, column: 27, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !381, line: 517, column: 24)
!1227 = !DILocation(line: 518, column: 17, scope: !1226)
!1228 = !DILocation(line: 518, column: 15, scope: !1226)
!1229 = !DILocation(line: 519, column: 13, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !381, line: 519, column: 13)
!1231 = !DILocation(line: 519, column: 13, scope: !1226)
!1232 = !DILocation(line: 520, column: 13, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1230, file: !381, line: 519, column: 38)
!1234 = !DILocation(line: 520, column: 19, scope: !1233)
!1235 = !DILocation(line: 521, column: 13, scope: !1233)
!1236 = !DILocation(line: 523, column: 30, scope: !1226)
!1237 = !DILocation(line: 523, column: 15, scope: !1226)
!1238 = !DILocation(line: 523, column: 13, scope: !1226)
!1239 = !DILocation(line: 524, column: 34, scope: !1226)
!1240 = !DILocation(line: 524, column: 9, scope: !1226)
!1241 = !DILocation(line: 525, column: 5, scope: !1226)
!1242 = !DILocation(line: 527, column: 28, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1222, file: !381, line: 526, column: 10)
!1244 = !DILocation(line: 527, column: 9, scope: !1243)
!1245 = !DILocation(line: 528, column: 40, scope: !1243)
!1246 = !DILocation(line: 528, column: 17, scope: !1243)
!1247 = !DILocation(line: 528, column: 47, scope: !1243)
!1248 = !DILocation(line: 528, column: 52, scope: !1243)
!1249 = !DILocation(line: 528, column: 9, scope: !1243)
!1250 = !DILocation(line: 532, column: 29, scope: !1191)
!1251 = !DILocation(line: 532, column: 36, scope: !1191)
!1252 = !DILocation(line: 532, column: 24, scope: !1191)
!1253 = !DILocation(line: 532, column: 46, scope: !1191)
!1254 = !DILocation(line: 532, column: 10, scope: !1191)
!1255 = !DILocation(line: 532, column: 8, scope: !1191)
!1256 = !DILocation(line: 533, column: 9, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1191, file: !381, line: 533, column: 9)
!1258 = !DILocation(line: 533, column: 9, scope: !1191)
!1259 = !DILocation(line: 534, column: 9, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1257, file: !381, line: 533, column: 27)
!1261 = !DILocation(line: 535, column: 18, scope: !1260)
!1262 = !DILocation(line: 535, column: 17, scope: !1260)
!1263 = !DILocation(line: 535, column: 9, scope: !1260)
!1264 = !DILocation(line: 535, column: 15, scope: !1260)
!1265 = !DILocation(line: 536, column: 9, scope: !1260)
!1266 = !DILocation(line: 539, column: 18, scope: !1191)
!1267 = !DILocation(line: 539, column: 12, scope: !1191)
!1268 = !DILocation(line: 539, column: 5, scope: !1191)
!1269 = !DILocation(line: 540, column: 1, scope: !1191)
!1270 = distinct !DISubprogram(name: "nn_recv", scope: !381, file: !381, line: 542, type: !1271, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!20, !20, !33, !16, !20}
!1273 = !DILocalVariable(name: "s", arg: 1, scope: !1270, file: !381, line: 542, type: !20)
!1274 = !DILocation(line: 542, column: 18, scope: !1270)
!1275 = !DILocalVariable(name: "buf", arg: 2, scope: !1270, file: !381, line: 542, type: !33)
!1276 = !DILocation(line: 542, column: 27, scope: !1270)
!1277 = !DILocalVariable(name: "len", arg: 3, scope: !1270, file: !381, line: 542, type: !16)
!1278 = !DILocation(line: 542, column: 39, scope: !1270)
!1279 = !DILocalVariable(name: "flags", arg: 4, scope: !1270, file: !381, line: 542, type: !20)
!1280 = !DILocation(line: 542, column: 48, scope: !1270)
!1281 = !DILocalVariable(name: "rc", scope: !1270, file: !381, line: 544, type: !20)
!1282 = !DILocation(line: 544, column: 9, scope: !1270)
!1283 = !DILocalVariable(name: "msg", scope: !1270, file: !381, line: 545, type: !69)
!1284 = !DILocation(line: 545, column: 19, scope: !1270)
!1285 = !DILocalVariable(name: "sz", scope: !1270, file: !381, line: 546, type: !16)
!1286 = !DILocation(line: 546, column: 12, scope: !1270)
!1287 = !DILocalVariable(name: "chunk", scope: !1270, file: !381, line: 547, type: !33)
!1288 = !DILocation(line: 547, column: 11, scope: !1270)
!1289 = !DILocation(line: 549, column: 5, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1270, file: !381, line: 549, column: 5)
!1291 = !DILocation(line: 549, column: 5, scope: !1270)
!1292 = !DILocation(line: 549, column: 5, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1290, file: !381, line: 549, column: 5)
!1294 = !DILocation(line: 551, column: 9, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1270, file: !381, line: 551, column: 9)
!1296 = !DILocation(line: 0, scope: !1295)
!1297 = !DILocation(line: 551, column: 9, scope: !1270)
!1298 = !DILocation(line: 552, column: 9, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1295, file: !381, line: 551, column: 32)
!1300 = !DILocation(line: 552, column: 15, scope: !1299)
!1301 = !DILocation(line: 553, column: 9, scope: !1299)
!1302 = !DILocation(line: 556, column: 29, scope: !1270)
!1303 = !DILocation(line: 556, column: 36, scope: !1270)
!1304 = !DILocation(line: 556, column: 24, scope: !1270)
!1305 = !DILocation(line: 556, column: 46, scope: !1270)
!1306 = !DILocation(line: 556, column: 10, scope: !1270)
!1307 = !DILocation(line: 556, column: 8, scope: !1270)
!1308 = !DILocation(line: 557, column: 9, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1270, file: !381, line: 557, column: 9)
!1310 = !DILocation(line: 557, column: 9, scope: !1270)
!1311 = !DILocation(line: 558, column: 18, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !381, line: 557, column: 27)
!1313 = !DILocation(line: 558, column: 17, scope: !1312)
!1314 = !DILocation(line: 558, column: 9, scope: !1312)
!1315 = !DILocation(line: 558, column: 15, scope: !1312)
!1316 = !DILocation(line: 559, column: 9, scope: !1312)
!1317 = !DILocation(line: 562, column: 9, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1270, file: !381, line: 562, column: 9)
!1319 = !DILocation(line: 562, column: 13, scope: !1318)
!1320 = !DILocation(line: 562, column: 9, scope: !1270)
!1321 = !DILocation(line: 563, column: 44, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !381, line: 562, column: 24)
!1323 = !DILocation(line: 563, column: 17, scope: !1322)
!1324 = !DILocation(line: 563, column: 15, scope: !1322)
!1325 = !DILocation(line: 564, column: 25, scope: !1322)
!1326 = !DILocation(line: 564, column: 19, scope: !1322)
!1327 = !DILocation(line: 564, column: 23, scope: !1322)
!1328 = !DILocation(line: 565, column: 29, scope: !1322)
!1329 = !DILocation(line: 565, column: 14, scope: !1322)
!1330 = !DILocation(line: 565, column: 12, scope: !1322)
!1331 = !DILocation(line: 566, column: 5, scope: !1322)
!1332 = !DILocation(line: 568, column: 37, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1318, file: !381, line: 567, column: 10)
!1334 = !DILocation(line: 568, column: 14, scope: !1333)
!1335 = !DILocation(line: 568, column: 12, scope: !1333)
!1336 = !DILocation(line: 569, column: 17, scope: !1333)
!1337 = !DILocation(line: 569, column: 45, scope: !1333)
!1338 = !DILocation(line: 569, column: 22, scope: !1333)
!1339 = !DILocation(line: 569, column: 52, scope: !1333)
!1340 = !DILocation(line: 569, column: 58, scope: !1333)
!1341 = !DILocation(line: 569, column: 56, scope: !1333)
!1342 = !DILocation(line: 569, column: 63, scope: !1333)
!1343 = !DILocation(line: 569, column: 69, scope: !1333)
!1344 = !DILocation(line: 569, column: 9, scope: !1333)
!1345 = !DILocation(line: 571, column: 5, scope: !1270)
!1346 = !DILocation(line: 573, column: 18, scope: !1270)
!1347 = !DILocation(line: 573, column: 12, scope: !1270)
!1348 = !DILocation(line: 573, column: 5, scope: !1270)
!1349 = !DILocation(line: 574, column: 1, scope: !1270)
!1350 = distinct !DISubprogram(name: "nn_sendmsg", scope: !381, file: !381, line: 576, type: !1351, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!20, !20, !450, !20}
!1353 = !DILocalVariable(name: "s", arg: 1, scope: !1350, file: !381, line: 576, type: !20)
!1354 = !DILocation(line: 576, column: 21, scope: !1350)
!1355 = !DILocalVariable(name: "msghdr", arg: 2, scope: !1350, file: !381, line: 576, type: !450)
!1356 = !DILocation(line: 576, column: 48, scope: !1350)
!1357 = !DILocalVariable(name: "flags", arg: 3, scope: !1350, file: !381, line: 576, type: !20)
!1358 = !DILocation(line: 576, column: 60, scope: !1350)
!1359 = !DILocalVariable(name: "rc", scope: !1350, file: !381, line: 578, type: !20)
!1360 = !DILocation(line: 578, column: 9, scope: !1350)
!1361 = !DILocalVariable(name: "sz", scope: !1350, file: !381, line: 579, type: !16)
!1362 = !DILocation(line: 579, column: 12, scope: !1350)
!1363 = !DILocalVariable(name: "i", scope: !1350, file: !381, line: 580, type: !20)
!1364 = !DILocation(line: 580, column: 9, scope: !1350)
!1365 = !DILocalVariable(name: "iov", scope: !1350, file: !381, line: 581, type: !455)
!1366 = !DILocation(line: 581, column: 22, scope: !1350)
!1367 = !DILocalVariable(name: "msg", scope: !1350, file: !381, line: 582, type: !69)
!1368 = !DILocation(line: 582, column: 19, scope: !1350)
!1369 = !DILocalVariable(name: "chunk", scope: !1350, file: !381, line: 583, type: !33)
!1370 = !DILocation(line: 583, column: 11, scope: !1350)
!1371 = !DILocation(line: 585, column: 5, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1350, file: !381, line: 585, column: 5)
!1373 = !DILocation(line: 585, column: 5, scope: !1350)
!1374 = !DILocation(line: 585, column: 5, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !381, line: 585, column: 5)
!1376 = !DILocation(line: 587, column: 9, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1350, file: !381, line: 587, column: 9)
!1378 = !DILocation(line: 587, column: 9, scope: !1350)
!1379 = !DILocation(line: 588, column: 9, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !381, line: 587, column: 28)
!1381 = !DILocation(line: 588, column: 15, scope: !1380)
!1382 = !DILocation(line: 589, column: 9, scope: !1380)
!1383 = !DILocation(line: 592, column: 9, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1350, file: !381, line: 592, column: 9)
!1385 = !DILocation(line: 592, column: 9, scope: !1350)
!1386 = !DILocation(line: 593, column: 9, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1384, file: !381, line: 592, column: 43)
!1388 = !DILocation(line: 593, column: 15, scope: !1387)
!1389 = !DILocation(line: 594, column: 9, scope: !1387)
!1390 = !DILocation(line: 597, column: 9, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1350, file: !381, line: 597, column: 9)
!1392 = !DILocation(line: 597, column: 17, scope: !1391)
!1393 = !DILocation(line: 597, column: 28, scope: !1391)
!1394 = !DILocation(line: 597, column: 33, scope: !1391)
!1395 = !DILocation(line: 597, column: 36, scope: !1391)
!1396 = !DILocation(line: 597, column: 44, scope: !1391)
!1397 = !DILocation(line: 597, column: 56, scope: !1391)
!1398 = !DILocation(line: 597, column: 64, scope: !1391)
!1399 = !DILocation(line: 597, column: 9, scope: !1350)
!1400 = !DILocation(line: 598, column: 27, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1391, file: !381, line: 597, column: 75)
!1402 = !DILocation(line: 598, column: 35, scope: !1401)
!1403 = !DILocation(line: 598, column: 47, scope: !1401)
!1404 = !DILocation(line: 598, column: 17, scope: !1401)
!1405 = !DILocation(line: 598, column: 15, scope: !1401)
!1406 = !DILocation(line: 599, column: 13, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1401, file: !381, line: 599, column: 13)
!1408 = !DILocation(line: 599, column: 13, scope: !1401)
!1409 = !DILocation(line: 600, column: 13, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1407, file: !381, line: 599, column: 38)
!1411 = !DILocation(line: 600, column: 19, scope: !1410)
!1412 = !DILocation(line: 601, column: 13, scope: !1410)
!1413 = !DILocation(line: 603, column: 29, scope: !1401)
!1414 = !DILocation(line: 603, column: 14, scope: !1401)
!1415 = !DILocation(line: 603, column: 12, scope: !1401)
!1416 = !DILocation(line: 604, column: 34, scope: !1401)
!1417 = !DILocation(line: 604, column: 9, scope: !1401)
!1418 = !DILocation(line: 605, column: 5, scope: !1401)
!1419 = !DILocation(line: 609, column: 12, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1391, file: !381, line: 606, column: 10)
!1421 = !DILocation(line: 610, column: 16, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1420, file: !381, line: 610, column: 9)
!1423 = !DILocation(line: 610, column: 14, scope: !1422)
!1424 = !DILocation(line: 610, column: 21, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1422, file: !381, line: 610, column: 9)
!1426 = !DILocation(line: 610, column: 26, scope: !1425)
!1427 = !DILocation(line: 610, column: 34, scope: !1425)
!1428 = !DILocation(line: 610, column: 23, scope: !1425)
!1429 = !DILocation(line: 610, column: 9, scope: !1422)
!1430 = !DILocation(line: 611, column: 20, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1425, file: !381, line: 610, column: 51)
!1432 = !DILocation(line: 611, column: 28, scope: !1431)
!1433 = !DILocation(line: 611, column: 37, scope: !1431)
!1434 = !DILocation(line: 611, column: 17, scope: !1431)
!1435 = !DILocation(line: 612, column: 17, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1431, file: !381, line: 612, column: 17)
!1437 = !DILocation(line: 612, column: 17, scope: !1431)
!1438 = !DILocation(line: 613, column: 16, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1436, file: !381, line: 612, column: 51)
!1440 = !DILocation(line: 613, column: 22, scope: !1439)
!1441 = !DILocation(line: 614, column: 16, scope: !1439)
!1442 = !DILocation(line: 616, column: 17, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1431, file: !381, line: 616, column: 17)
!1444 = !DILocation(line: 0, scope: !1443)
!1445 = !DILocation(line: 616, column: 17, scope: !1431)
!1446 = !DILocation(line: 617, column: 17, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !381, line: 616, column: 59)
!1448 = !DILocation(line: 617, column: 23, scope: !1447)
!1449 = !DILocation(line: 618, column: 17, scope: !1447)
!1450 = !DILocation(line: 620, column: 17, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1431, file: !381, line: 620, column: 17)
!1452 = !DILocation(line: 620, column: 17, scope: !1431)
!1453 = !DILocation(line: 621, column: 17, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1451, file: !381, line: 620, column: 51)
!1455 = !DILocation(line: 621, column: 23, scope: !1454)
!1456 = !DILocation(line: 622, column: 17, scope: !1454)
!1457 = !DILocation(line: 624, column: 19, scope: !1431)
!1458 = !DILocation(line: 624, column: 24, scope: !1431)
!1459 = !DILocation(line: 624, column: 16, scope: !1431)
!1460 = !DILocation(line: 625, column: 9, scope: !1431)
!1461 = !DILocation(line: 610, column: 46, scope: !1425)
!1462 = !DILocation(line: 610, column: 9, scope: !1425)
!1463 = distinct !{!1463, !1429, !1464, !526}
!1464 = !DILocation(line: 625, column: 9, scope: !1422)
!1465 = !DILocation(line: 628, column: 28, scope: !1420)
!1466 = !DILocation(line: 628, column: 9, scope: !1420)
!1467 = !DILocation(line: 629, column: 12, scope: !1420)
!1468 = !DILocation(line: 630, column: 16, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1420, file: !381, line: 630, column: 9)
!1470 = !DILocation(line: 630, column: 14, scope: !1469)
!1471 = !DILocation(line: 630, column: 21, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1469, file: !381, line: 630, column: 9)
!1473 = !DILocation(line: 630, column: 26, scope: !1472)
!1474 = !DILocation(line: 630, column: 34, scope: !1472)
!1475 = !DILocation(line: 630, column: 23, scope: !1472)
!1476 = !DILocation(line: 630, column: 9, scope: !1469)
!1477 = !DILocation(line: 631, column: 20, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1472, file: !381, line: 630, column: 51)
!1479 = !DILocation(line: 631, column: 28, scope: !1478)
!1480 = !DILocation(line: 631, column: 37, scope: !1478)
!1481 = !DILocation(line: 631, column: 17, scope: !1478)
!1482 = !DILocation(line: 632, column: 56, scope: !1478)
!1483 = !DILocation(line: 632, column: 33, scope: !1478)
!1484 = !DILocation(line: 632, column: 65, scope: !1478)
!1485 = !DILocation(line: 632, column: 63, scope: !1478)
!1486 = !DILocation(line: 633, column: 17, scope: !1478)
!1487 = !DILocation(line: 633, column: 22, scope: !1478)
!1488 = !DILocation(line: 633, column: 32, scope: !1478)
!1489 = !DILocation(line: 633, column: 37, scope: !1478)
!1490 = !DILocation(line: 632, column: 13, scope: !1478)
!1491 = !DILocation(line: 634, column: 19, scope: !1478)
!1492 = !DILocation(line: 634, column: 24, scope: !1478)
!1493 = !DILocation(line: 634, column: 16, scope: !1478)
!1494 = !DILocation(line: 635, column: 9, scope: !1478)
!1495 = !DILocation(line: 630, column: 46, scope: !1472)
!1496 = !DILocation(line: 630, column: 9, scope: !1472)
!1497 = distinct !{!1497, !1476, !1498, !526}
!1498 = !DILocation(line: 635, column: 9, scope: !1469)
!1499 = !DILocation(line: 639, column: 9, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1350, file: !381, line: 639, column: 9)
!1501 = !DILocation(line: 639, column: 17, scope: !1500)
!1502 = !DILocation(line: 639, column: 9, scope: !1350)
!1503 = !DILocation(line: 640, column: 13, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !381, line: 640, column: 13)
!1505 = distinct !DILexicalBlock(scope: !1500, file: !381, line: 639, column: 30)
!1506 = !DILocation(line: 640, column: 21, scope: !1504)
!1507 = !DILocation(line: 640, column: 36, scope: !1504)
!1508 = !DILocation(line: 640, column: 13, scope: !1505)
!1509 = !DILocation(line: 641, column: 32, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1504, file: !381, line: 640, column: 47)
!1511 = !DILocation(line: 641, column: 40, scope: !1510)
!1512 = !DILocation(line: 641, column: 21, scope: !1510)
!1513 = !DILocation(line: 641, column: 19, scope: !1510)
!1514 = !DILocation(line: 642, column: 36, scope: !1510)
!1515 = !DILocation(line: 642, column: 13, scope: !1510)
!1516 = !DILocation(line: 643, column: 42, scope: !1510)
!1517 = !DILocation(line: 643, column: 47, scope: !1510)
!1518 = !DILocation(line: 643, column: 13, scope: !1510)
!1519 = !DILocation(line: 644, column: 9, scope: !1510)
!1520 = !DILocation(line: 648, column: 13, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1504, file: !381, line: 645, column: 14)
!1522 = !DILocation(line: 648, column: 13, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !381, line: 648, column: 13)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !381, line: 648, column: 13)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !381, line: 648, column: 13)
!1526 = !DILocation(line: 650, column: 5, scope: !1505)
!1527 = !DILocation(line: 653, column: 29, scope: !1350)
!1528 = !DILocation(line: 653, column: 36, scope: !1350)
!1529 = !DILocation(line: 653, column: 24, scope: !1350)
!1530 = !DILocation(line: 653, column: 46, scope: !1350)
!1531 = !DILocation(line: 653, column: 10, scope: !1350)
!1532 = !DILocation(line: 653, column: 8, scope: !1350)
!1533 = !DILocation(line: 654, column: 9, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1350, file: !381, line: 654, column: 9)
!1535 = !DILocation(line: 654, column: 9, scope: !1350)
!1536 = !DILocation(line: 655, column: 9, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !381, line: 654, column: 27)
!1538 = !DILocation(line: 656, column: 18, scope: !1537)
!1539 = !DILocation(line: 656, column: 17, scope: !1537)
!1540 = !DILocation(line: 656, column: 9, scope: !1537)
!1541 = !DILocation(line: 656, column: 15, scope: !1537)
!1542 = !DILocation(line: 657, column: 9, scope: !1537)
!1543 = !DILocation(line: 660, column: 18, scope: !1350)
!1544 = !DILocation(line: 660, column: 12, scope: !1350)
!1545 = !DILocation(line: 660, column: 5, scope: !1350)
!1546 = !DILocation(line: 661, column: 1, scope: !1350)
!1547 = distinct !DISubprogram(name: "nn_recvmsg", scope: !381, file: !381, line: 663, type: !1548, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!20, !20, !1550, !20}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!1551 = !DILocalVariable(name: "s", arg: 1, scope: !1547, file: !381, line: 663, type: !20)
!1552 = !DILocation(line: 663, column: 21, scope: !1547)
!1553 = !DILocalVariable(name: "msghdr", arg: 2, scope: !1547, file: !381, line: 663, type: !1550)
!1554 = !DILocation(line: 663, column: 42, scope: !1547)
!1555 = !DILocalVariable(name: "flags", arg: 3, scope: !1547, file: !381, line: 663, type: !20)
!1556 = !DILocation(line: 663, column: 54, scope: !1547)
!1557 = !DILocalVariable(name: "rc", scope: !1547, file: !381, line: 665, type: !20)
!1558 = !DILocation(line: 665, column: 9, scope: !1547)
!1559 = !DILocalVariable(name: "msg", scope: !1547, file: !381, line: 666, type: !69)
!1560 = !DILocation(line: 666, column: 19, scope: !1547)
!1561 = !DILocalVariable(name: "data", scope: !1547, file: !381, line: 667, type: !5)
!1562 = !DILocation(line: 667, column: 14, scope: !1547)
!1563 = !DILocalVariable(name: "sz", scope: !1547, file: !381, line: 668, type: !16)
!1564 = !DILocation(line: 668, column: 12, scope: !1547)
!1565 = !DILocalVariable(name: "i", scope: !1547, file: !381, line: 669, type: !20)
!1566 = !DILocation(line: 669, column: 9, scope: !1547)
!1567 = !DILocalVariable(name: "iov", scope: !1547, file: !381, line: 670, type: !455)
!1568 = !DILocation(line: 670, column: 22, scope: !1547)
!1569 = !DILocalVariable(name: "chunk", scope: !1547, file: !381, line: 671, type: !33)
!1570 = !DILocation(line: 671, column: 11, scope: !1547)
!1571 = !DILocation(line: 673, column: 5, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1547, file: !381, line: 673, column: 5)
!1573 = !DILocation(line: 673, column: 5, scope: !1547)
!1574 = !DILocation(line: 673, column: 5, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1572, file: !381, line: 673, column: 5)
!1576 = !DILocation(line: 675, column: 9, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1547, file: !381, line: 675, column: 9)
!1578 = !DILocation(line: 675, column: 9, scope: !1547)
!1579 = !DILocation(line: 676, column: 9, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1577, file: !381, line: 675, column: 28)
!1581 = !DILocation(line: 676, column: 15, scope: !1580)
!1582 = !DILocation(line: 677, column: 9, scope: !1580)
!1583 = !DILocation(line: 680, column: 9, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1547, file: !381, line: 680, column: 9)
!1585 = !DILocation(line: 680, column: 9, scope: !1547)
!1586 = !DILocation(line: 681, column: 9, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1584, file: !381, line: 680, column: 43)
!1588 = !DILocation(line: 681, column: 15, scope: !1587)
!1589 = !DILocation(line: 682, column: 9, scope: !1587)
!1590 = !DILocation(line: 686, column: 29, scope: !1547)
!1591 = !DILocation(line: 686, column: 36, scope: !1547)
!1592 = !DILocation(line: 686, column: 24, scope: !1547)
!1593 = !DILocation(line: 686, column: 46, scope: !1547)
!1594 = !DILocation(line: 686, column: 10, scope: !1547)
!1595 = !DILocation(line: 686, column: 8, scope: !1547)
!1596 = !DILocation(line: 687, column: 9, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1547, file: !381, line: 687, column: 9)
!1598 = !DILocation(line: 687, column: 9, scope: !1547)
!1599 = !DILocation(line: 688, column: 18, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1597, file: !381, line: 687, column: 27)
!1601 = !DILocation(line: 688, column: 17, scope: !1600)
!1602 = !DILocation(line: 688, column: 9, scope: !1600)
!1603 = !DILocation(line: 688, column: 15, scope: !1600)
!1604 = !DILocation(line: 689, column: 9, scope: !1600)
!1605 = !DILocation(line: 692, column: 9, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1547, file: !381, line: 692, column: 9)
!1607 = !DILocation(line: 692, column: 17, scope: !1606)
!1608 = !DILocation(line: 692, column: 28, scope: !1606)
!1609 = !DILocation(line: 692, column: 33, scope: !1606)
!1610 = !DILocation(line: 692, column: 36, scope: !1606)
!1611 = !DILocation(line: 692, column: 44, scope: !1606)
!1612 = !DILocation(line: 692, column: 56, scope: !1606)
!1613 = !DILocation(line: 692, column: 64, scope: !1606)
!1614 = !DILocation(line: 692, column: 9, scope: !1547)
!1615 = !DILocation(line: 693, column: 44, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1606, file: !381, line: 692, column: 75)
!1617 = !DILocation(line: 693, column: 17, scope: !1616)
!1618 = !DILocation(line: 693, column: 15, scope: !1616)
!1619 = !DILocation(line: 694, column: 52, scope: !1616)
!1620 = !DILocation(line: 694, column: 20, scope: !1616)
!1621 = !DILocation(line: 694, column: 28, scope: !1616)
!1622 = !DILocation(line: 694, column: 40, scope: !1616)
!1623 = !DILocation(line: 694, column: 50, scope: !1616)
!1624 = !DILocation(line: 695, column: 29, scope: !1616)
!1625 = !DILocation(line: 695, column: 14, scope: !1616)
!1626 = !DILocation(line: 695, column: 12, scope: !1616)
!1627 = !DILocation(line: 696, column: 5, scope: !1616)
!1628 = !DILocation(line: 700, column: 39, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1606, file: !381, line: 697, column: 10)
!1630 = !DILocation(line: 700, column: 16, scope: !1629)
!1631 = !DILocation(line: 700, column: 14, scope: !1629)
!1632 = !DILocation(line: 701, column: 37, scope: !1629)
!1633 = !DILocation(line: 701, column: 14, scope: !1629)
!1634 = !DILocation(line: 701, column: 12, scope: !1629)
!1635 = !DILocation(line: 702, column: 16, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1629, file: !381, line: 702, column: 9)
!1637 = !DILocation(line: 702, column: 14, scope: !1636)
!1638 = !DILocation(line: 702, column: 21, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1636, file: !381, line: 702, column: 9)
!1640 = !DILocation(line: 702, column: 26, scope: !1639)
!1641 = !DILocation(line: 702, column: 34, scope: !1639)
!1642 = !DILocation(line: 702, column: 23, scope: !1639)
!1643 = !DILocation(line: 702, column: 9, scope: !1636)
!1644 = !DILocation(line: 703, column: 20, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1639, file: !381, line: 702, column: 51)
!1646 = !DILocation(line: 703, column: 28, scope: !1645)
!1647 = !DILocation(line: 703, column: 37, scope: !1645)
!1648 = !DILocation(line: 703, column: 17, scope: !1645)
!1649 = !DILocation(line: 704, column: 17, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1645, file: !381, line: 704, column: 17)
!1651 = !DILocation(line: 704, column: 17, scope: !1645)
!1652 = !DILocation(line: 705, column: 17, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1650, file: !381, line: 704, column: 51)
!1654 = !DILocation(line: 706, column: 17, scope: !1653)
!1655 = !DILocation(line: 706, column: 23, scope: !1653)
!1656 = !DILocation(line: 707, column: 17, scope: !1653)
!1657 = !DILocation(line: 709, column: 17, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1645, file: !381, line: 709, column: 17)
!1659 = !DILocation(line: 709, column: 22, scope: !1658)
!1660 = !DILocation(line: 709, column: 32, scope: !1658)
!1661 = !DILocation(line: 709, column: 30, scope: !1658)
!1662 = !DILocation(line: 709, column: 17, scope: !1645)
!1663 = !DILocation(line: 710, column: 25, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1658, file: !381, line: 709, column: 36)
!1665 = !DILocation(line: 710, column: 30, scope: !1664)
!1666 = !DILocation(line: 710, column: 40, scope: !1664)
!1667 = !DILocation(line: 710, column: 46, scope: !1664)
!1668 = !DILocation(line: 710, column: 17, scope: !1664)
!1669 = !DILocation(line: 711, column: 17, scope: !1664)
!1670 = !DILocation(line: 713, column: 21, scope: !1645)
!1671 = !DILocation(line: 713, column: 26, scope: !1645)
!1672 = !DILocation(line: 713, column: 36, scope: !1645)
!1673 = !DILocation(line: 713, column: 42, scope: !1645)
!1674 = !DILocation(line: 713, column: 47, scope: !1645)
!1675 = !DILocation(line: 713, column: 13, scope: !1645)
!1676 = !DILocation(line: 714, column: 21, scope: !1645)
!1677 = !DILocation(line: 714, column: 26, scope: !1645)
!1678 = !DILocation(line: 714, column: 18, scope: !1645)
!1679 = !DILocation(line: 715, column: 19, scope: !1645)
!1680 = !DILocation(line: 715, column: 24, scope: !1645)
!1681 = !DILocation(line: 715, column: 16, scope: !1645)
!1682 = !DILocation(line: 716, column: 9, scope: !1645)
!1683 = !DILocation(line: 702, column: 46, scope: !1639)
!1684 = !DILocation(line: 702, column: 9, scope: !1639)
!1685 = distinct !{!1685, !1643, !1686, !526}
!1686 = !DILocation(line: 716, column: 9, scope: !1636)
!1687 = !DILocation(line: 717, column: 37, scope: !1629)
!1688 = !DILocation(line: 717, column: 14, scope: !1629)
!1689 = !DILocation(line: 717, column: 12, scope: !1629)
!1690 = !DILocation(line: 721, column: 9, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1547, file: !381, line: 721, column: 9)
!1692 = !DILocation(line: 721, column: 17, scope: !1691)
!1693 = !DILocation(line: 721, column: 9, scope: !1547)
!1694 = !DILocation(line: 722, column: 13, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !381, line: 722, column: 13)
!1696 = distinct !DILexicalBlock(scope: !1691, file: !381, line: 721, column: 30)
!1697 = !DILocation(line: 722, column: 21, scope: !1695)
!1698 = !DILocation(line: 722, column: 36, scope: !1695)
!1699 = !DILocation(line: 722, column: 13, scope: !1696)
!1700 = !DILocation(line: 723, column: 48, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1695, file: !381, line: 722, column: 47)
!1702 = !DILocation(line: 723, column: 21, scope: !1701)
!1703 = !DILocation(line: 723, column: 19, scope: !1701)
!1704 = !DILocation(line: 724, column: 47, scope: !1701)
!1705 = !DILocation(line: 724, column: 24, scope: !1701)
!1706 = !DILocation(line: 724, column: 32, scope: !1701)
!1707 = !DILocation(line: 724, column: 45, scope: !1701)
!1708 = !DILocation(line: 725, column: 9, scope: !1701)
!1709 = !DILocation(line: 730, column: 13, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1695, file: !381, line: 726, column: 14)
!1711 = !DILocation(line: 730, column: 13, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !381, line: 730, column: 13)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !381, line: 730, column: 13)
!1714 = distinct !DILexicalBlock(scope: !1710, file: !381, line: 730, column: 13)
!1715 = !DILocation(line: 732, column: 5, scope: !1696)
!1716 = !DILocation(line: 734, column: 5, scope: !1547)
!1717 = !DILocation(line: 736, column: 18, scope: !1547)
!1718 = !DILocation(line: 736, column: 12, scope: !1547)
!1719 = !DILocation(line: 736, column: 5, scope: !1547)
!1720 = !DILocation(line: 737, column: 1, scope: !1547)
!1721 = distinct !DISubprogram(name: "nn_global_transport", scope: !381, file: !381, line: 804, type: !1722, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!323, !20}
!1724 = !DILocalVariable(name: "id", arg: 1, scope: !1721, file: !381, line: 804, type: !20)
!1725 = !DILocation(line: 804, column: 47, scope: !1721)
!1726 = !DILocalVariable(name: "tp", scope: !1721, file: !381, line: 806, type: !323)
!1727 = !DILocation(line: 806, column: 26, scope: !1721)
!1728 = !DILocalVariable(name: "it", scope: !1721, file: !381, line: 807, type: !226)
!1729 = !DILocation(line: 807, column: 26, scope: !1721)
!1730 = !DILocation(line: 810, column: 8, scope: !1721)
!1731 = !DILocation(line: 811, column: 5, scope: !1721)
!1732 = !DILocation(line: 812, column: 15, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1721, file: !381, line: 812, column: 5)
!1734 = !DILocation(line: 812, column: 13, scope: !1733)
!1735 = !DILocation(line: 812, column: 10, scope: !1733)
!1736 = !DILocation(line: 813, column: 11, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1733, file: !381, line: 812, column: 5)
!1738 = !DILocation(line: 813, column: 17, scope: !1737)
!1739 = !DILocation(line: 813, column: 14, scope: !1737)
!1740 = !DILocation(line: 812, column: 5, scope: !1733)
!1741 = !DILocation(line: 815, column: 14, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1737, file: !381, line: 814, column: 53)
!1743 = !DILocation(line: 815, column: 12, scope: !1742)
!1744 = !DILocation(line: 816, column: 13, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1742, file: !381, line: 816, column: 13)
!1746 = !DILocation(line: 816, column: 17, scope: !1745)
!1747 = !DILocation(line: 816, column: 23, scope: !1745)
!1748 = !DILocation(line: 816, column: 20, scope: !1745)
!1749 = !DILocation(line: 816, column: 13, scope: !1742)
!1750 = !DILocation(line: 817, column: 13, scope: !1745)
!1751 = !DILocation(line: 818, column: 12, scope: !1742)
!1752 = !DILocation(line: 819, column: 5, scope: !1742)
!1753 = !DILocation(line: 814, column: 48, scope: !1737)
!1754 = !DILocation(line: 814, column: 16, scope: !1737)
!1755 = !DILocation(line: 814, column: 14, scope: !1737)
!1756 = !DILocation(line: 812, column: 5, scope: !1737)
!1757 = distinct !{!1757, !1740, !1758, !526}
!1758 = !DILocation(line: 819, column: 5, scope: !1733)
!1759 = !DILocation(line: 820, column: 5, scope: !1721)
!1760 = !DILocation(line: 822, column: 12, scope: !1721)
!1761 = !DILocation(line: 822, column: 5, scope: !1721)
!1762 = distinct !DISubprogram(name: "nn_global_getpool", scope: !381, file: !381, line: 825, type: !1763, scopeLine: 826, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !436)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!155}
!1765 = !DILocation(line: 827, column: 5, scope: !1762)
!1766 = distinct !DISubprogram(name: "nn_global_add_transport", scope: !381, file: !381, line: 739, type: !1767, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !323}
!1769 = !DILocalVariable(name: "transport", arg: 1, scope: !1766, file: !381, line: 739, type: !323)
!1770 = !DILocation(line: 739, column: 59, scope: !1766)
!1771 = !DILocation(line: 741, column: 9, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1766, file: !381, line: 741, column: 9)
!1773 = !DILocation(line: 741, column: 20, scope: !1772)
!1774 = !DILocation(line: 741, column: 9, scope: !1766)
!1775 = !DILocation(line: 742, column: 9, scope: !1772)
!1776 = !DILocation(line: 742, column: 20, scope: !1772)
!1777 = !DILocation(line: 743, column: 40, scope: !1766)
!1778 = !DILocation(line: 743, column: 51, scope: !1766)
!1779 = !DILocation(line: 744, column: 9, scope: !1766)
!1780 = !DILocation(line: 743, column: 5, scope: !1766)
!1781 = !DILocation(line: 746, column: 1, scope: !1766)
!1782 = distinct !DISubprogram(name: "nn_global_add_socktype", scope: !381, file: !381, line: 748, type: !1783, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !436)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{null, !22}
!1785 = !DILocalVariable(name: "socktype", arg: 1, scope: !1782, file: !381, line: 748, type: !22)
!1786 = !DILocation(line: 748, column: 57, scope: !1782)
!1787 = !DILocation(line: 750, column: 39, scope: !1782)
!1788 = !DILocation(line: 750, column: 49, scope: !1782)
!1789 = !DILocation(line: 751, column: 9, scope: !1782)
!1790 = !DILocation(line: 750, column: 5, scope: !1782)
!1791 = !DILocation(line: 752, column: 1, scope: !1782)
