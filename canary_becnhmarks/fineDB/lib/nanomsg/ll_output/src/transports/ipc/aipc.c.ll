; ModuleID = './src/transports/ipc/aipc.c'
source_filename = "./src/transports/ipc/aipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_aipc = type { %struct.nn_fsm, i32, %struct.nn_usock, ptr, %struct.nn_fsm_owner, %struct.nn_sipc, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_list_item }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_usock = type { %struct.nn_fsm, i32, ptr, i32, %struct.nn_worker_fd, %struct.anon, %struct.anon.0, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_fsm_event, ptr }
%struct.nn_worker_fd = type { ptr, %struct.nn_poller_hndl }
%struct.nn_poller_hndl = type { i32 }
%struct.anon = type { ptr, i64, ptr, i64, i64 }
%struct.anon.0 = type { %struct.msghdr, [3 x %struct.iovec] }
%struct.msghdr = type { ptr, i32, ptr, i64, ptr, i64, i32 }
%struct.iovec = type { ptr, i64 }
%struct.nn_worker_task = type { ptr, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_fsm_owner = type { i32, ptr }
%struct.nn_sipc = type { %struct.nn_fsm, i32, ptr, %struct.nn_streamhdr, %struct.nn_fsm_owner, %struct.nn_pipebase, i32, [9 x i8], %struct.nn_msg, i32, [9 x i8], %struct.nn_msg, %struct.nn_fsm_event }
%struct.nn_streamhdr = type { %struct.nn_fsm, i32, %struct.nn_timer, ptr, %struct.nn_fsm_owner, ptr, [8 x i8], %struct.nn_fsm_event }
%struct.nn_timer = type { %struct.nn_fsm, i32, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_timer, %struct.nn_fsm_event, ptr, i32 }
%struct.nn_worker_timer = type { ptr, %struct.nn_timerset_hndl }
%struct.nn_timerset_hndl = type { %struct.nn_list_item, i64 }
%struct.nn_pipebase = type { %struct.nn_fsm, ptr, i8, i8, i8, ptr, ptr, %struct.nn_fsm_event, %struct.nn_fsm_event }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_list_item = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [34 x i8] c"self->state == NN_AIPC_STATE_IDLE\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [28 x i8] c"./src/transports/ipc/aipc.c\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [25 x i8] c"aipc->listener_owner.fsm\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !22

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_aipc_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !365 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !385, metadata !DIExpression()), !dbg !386
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !387, metadata !DIExpression()), !dbg !388
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !389, metadata !DIExpression()), !dbg !390
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !391, metadata !DIExpression()), !dbg !392
  %9 = load ptr, ptr %5, align 8, !dbg !393
  %10 = getelementptr inbounds %struct.nn_aipc, ptr %9, i32 0, i32 0, !dbg !394
  %11 = load i32, ptr %6, align 4, !dbg !395
  %12 = load ptr, ptr %5, align 8, !dbg !396
  %13 = load ptr, ptr %8, align 8, !dbg !397
  call void @nn_fsm_init(ptr noundef %10, ptr noundef @nn_aipc_handler, i32 noundef %11, ptr noundef %12, ptr noundef %13), !dbg !398
  %14 = load ptr, ptr %5, align 8, !dbg !399
  %15 = getelementptr inbounds %struct.nn_aipc, ptr %14, i32 0, i32 1, !dbg !400
  store i32 1, ptr %15, align 8, !dbg !401
  %16 = load ptr, ptr %5, align 8, !dbg !402
  %17 = getelementptr inbounds %struct.nn_aipc, ptr %16, i32 0, i32 2, !dbg !403
  %18 = load ptr, ptr %5, align 8, !dbg !404
  %19 = getelementptr inbounds %struct.nn_aipc, ptr %18, i32 0, i32 0, !dbg !405
  call void @nn_usock_init(ptr noundef %17, i32 noundef 1, ptr noundef %19), !dbg !406
  %20 = load ptr, ptr %5, align 8, !dbg !407
  %21 = getelementptr inbounds %struct.nn_aipc, ptr %20, i32 0, i32 3, !dbg !408
  store ptr null, ptr %21, align 8, !dbg !409
  %22 = load ptr, ptr %5, align 8, !dbg !410
  %23 = getelementptr inbounds %struct.nn_aipc, ptr %22, i32 0, i32 4, !dbg !411
  %24 = getelementptr inbounds %struct.nn_fsm_owner, ptr %23, i32 0, i32 0, !dbg !412
  store i32 -1, ptr %24, align 8, !dbg !413
  %25 = load ptr, ptr %5, align 8, !dbg !414
  %26 = getelementptr inbounds %struct.nn_aipc, ptr %25, i32 0, i32 4, !dbg !415
  %27 = getelementptr inbounds %struct.nn_fsm_owner, ptr %26, i32 0, i32 1, !dbg !416
  store ptr null, ptr %27, align 8, !dbg !417
  %28 = load ptr, ptr %5, align 8, !dbg !418
  %29 = getelementptr inbounds %struct.nn_aipc, ptr %28, i32 0, i32 5, !dbg !419
  %30 = load ptr, ptr %7, align 8, !dbg !420
  %31 = load ptr, ptr %5, align 8, !dbg !421
  %32 = getelementptr inbounds %struct.nn_aipc, ptr %31, i32 0, i32 0, !dbg !422
  call void @nn_sipc_init(ptr noundef %29, i32 noundef 2, ptr noundef %30, ptr noundef %32), !dbg !423
  %33 = load ptr, ptr %5, align 8, !dbg !424
  %34 = getelementptr inbounds %struct.nn_aipc, ptr %33, i32 0, i32 6, !dbg !425
  call void @nn_fsm_event_init(ptr noundef %34), !dbg !426
  %35 = load ptr, ptr %5, align 8, !dbg !427
  %36 = getelementptr inbounds %struct.nn_aipc, ptr %35, i32 0, i32 7, !dbg !428
  call void @nn_fsm_event_init(ptr noundef %36), !dbg !429
  %37 = load ptr, ptr %5, align 8, !dbg !430
  %38 = getelementptr inbounds %struct.nn_aipc, ptr %37, i32 0, i32 8, !dbg !431
  call void @nn_list_item_init(ptr noundef %38), !dbg !432
  ret void, !dbg !433
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_fsm_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_aipc_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !434 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !435, metadata !DIExpression()), !dbg !436
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !437, metadata !DIExpression()), !dbg !438
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !439, metadata !DIExpression()), !dbg !440
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata ptr %9, metadata !443, metadata !DIExpression()), !dbg !444
  %10 = load ptr, ptr %5, align 8, !dbg !445
  %11 = icmp ne ptr %10, null, !dbg !445
  br i1 %11, label %12, label %15, !dbg !445

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8, !dbg !445
  %14 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !445
  br label %16, !dbg !445

15:                                               ; preds = %4
  br label %16, !dbg !445

16:                                               ; preds = %15, %12
  %17 = phi ptr [ %14, %12 ], [ null, %15 ], !dbg !445
  store ptr %17, ptr %9, align 8, !dbg !446
  %18 = load i32, ptr %6, align 4, !dbg !447
  %19 = icmp eq i32 %18, -2, !dbg !447
  br i1 %19, label %20, label %23, !dbg !447

20:                                               ; preds = %16
  %21 = load i32, ptr %7, align 4, !dbg !447
  %22 = icmp eq i32 %21, -3, !dbg !447
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i1 [ false, %16 ], [ %22, %20 ], !dbg !449
  %25 = zext i1 %24 to i32, !dbg !447
  %26 = sext i32 %25 to i64, !dbg !447
  %27 = icmp ne i64 %26, 0, !dbg !447
  br i1 %27, label %28, label %33, !dbg !450

28:                                               ; preds = %23
  %29 = load ptr, ptr %9, align 8, !dbg !451
  %30 = getelementptr inbounds %struct.nn_aipc, ptr %29, i32 0, i32 5, !dbg !453
  call void @nn_sipc_stop(ptr noundef %30), !dbg !454
  %31 = load ptr, ptr %9, align 8, !dbg !455
  %32 = getelementptr inbounds %struct.nn_aipc, ptr %31, i32 0, i32 1, !dbg !456
  store i32 7, ptr %32, align 8, !dbg !457
  br label %33, !dbg !458

33:                                               ; preds = %28, %23
  %34 = load ptr, ptr %9, align 8, !dbg !459
  %35 = getelementptr inbounds %struct.nn_aipc, ptr %34, i32 0, i32 1, !dbg !459
  %36 = load i32, ptr %35, align 8, !dbg !459
  %37 = icmp eq i32 %36, 7, !dbg !459
  %38 = zext i1 %37 to i32, !dbg !459
  %39 = sext i32 %38 to i64, !dbg !459
  %40 = icmp ne i64 %39, 0, !dbg !459
  br i1 %40, label %41, label %52, !dbg !461

41:                                               ; preds = %33
  %42 = load ptr, ptr %9, align 8, !dbg !462
  %43 = getelementptr inbounds %struct.nn_aipc, ptr %42, i32 0, i32 5, !dbg !465
  %44 = call i32 @nn_sipc_isidle(ptr noundef %43), !dbg !466
  %45 = icmp ne i32 %44, 0, !dbg !466
  br i1 %45, label %47, label %46, !dbg !467

46:                                               ; preds = %41
  br label %245, !dbg !468

47:                                               ; preds = %41
  %48 = load ptr, ptr %9, align 8, !dbg !469
  %49 = getelementptr inbounds %struct.nn_aipc, ptr %48, i32 0, i32 2, !dbg !470
  call void @nn_usock_stop(ptr noundef %49), !dbg !471
  %50 = load ptr, ptr %9, align 8, !dbg !472
  %51 = getelementptr inbounds %struct.nn_aipc, ptr %50, i32 0, i32 1, !dbg !473
  store i32 8, ptr %51, align 8, !dbg !474
  br label %52, !dbg !475

52:                                               ; preds = %47, %33
  %53 = load ptr, ptr %9, align 8, !dbg !476
  %54 = getelementptr inbounds %struct.nn_aipc, ptr %53, i32 0, i32 1, !dbg !476
  %55 = load i32, ptr %54, align 8, !dbg !476
  %56 = icmp eq i32 %55, 8, !dbg !476
  %57 = zext i1 %56 to i32, !dbg !476
  %58 = sext i32 %57 to i64, !dbg !476
  %59 = icmp ne i64 %58, 0, !dbg !476
  br i1 %59, label %60, label %105, !dbg !478

60:                                               ; preds = %52
  %61 = load ptr, ptr %9, align 8, !dbg !479
  %62 = getelementptr inbounds %struct.nn_aipc, ptr %61, i32 0, i32 2, !dbg !482
  %63 = call i32 @nn_usock_isidle(ptr noundef %62), !dbg !483
  %64 = icmp ne i32 %63, 0, !dbg !483
  br i1 %64, label %66, label %65, !dbg !484

65:                                               ; preds = %60
  br label %245, !dbg !485

66:                                               ; preds = %60
  %67 = load ptr, ptr %9, align 8, !dbg !486
  %68 = getelementptr inbounds %struct.nn_aipc, ptr %67, i32 0, i32 3, !dbg !488
  %69 = load ptr, ptr %68, align 8, !dbg !488
  %70 = icmp ne ptr %69, null, !dbg !486
  br i1 %70, label %71, label %100, !dbg !489

71:                                               ; preds = %66
  br label %72, !dbg !490

72:                                               ; preds = %71
  %73 = load ptr, ptr %9, align 8, !dbg !492
  %74 = getelementptr inbounds %struct.nn_aipc, ptr %73, i32 0, i32 4, !dbg !492
  %75 = getelementptr inbounds %struct.nn_fsm_owner, ptr %74, i32 0, i32 1, !dbg !492
  %76 = load ptr, ptr %75, align 8, !dbg !492
  %77 = icmp ne ptr %76, null, !dbg !492
  %78 = xor i1 %77, true, !dbg !492
  %79 = zext i1 %78 to i32, !dbg !492
  %80 = sext i32 %79 to i64, !dbg !492
  %81 = icmp ne i64 %80, 0, !dbg !492
  br i1 %81, label %82, label %85, !dbg !495

82:                                               ; preds = %72
  %83 = load ptr, ptr @stderr, align 8, !dbg !496
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 121), !dbg !496
  call void @nn_err_abort() #4, !dbg !496
  unreachable, !dbg !496

85:                                               ; preds = %72
  br label %86, !dbg !495

86:                                               ; preds = %85
  %87 = load ptr, ptr %9, align 8, !dbg !498
  %88 = getelementptr inbounds %struct.nn_aipc, ptr %87, i32 0, i32 3, !dbg !499
  %89 = load ptr, ptr %88, align 8, !dbg !499
  %90 = load ptr, ptr %9, align 8, !dbg !500
  %91 = getelementptr inbounds %struct.nn_aipc, ptr %90, i32 0, i32 4, !dbg !501
  call void @nn_usock_swap_owner(ptr noundef %89, ptr noundef %91), !dbg !502
  %92 = load ptr, ptr %9, align 8, !dbg !503
  %93 = getelementptr inbounds %struct.nn_aipc, ptr %92, i32 0, i32 3, !dbg !504
  store ptr null, ptr %93, align 8, !dbg !505
  %94 = load ptr, ptr %9, align 8, !dbg !506
  %95 = getelementptr inbounds %struct.nn_aipc, ptr %94, i32 0, i32 4, !dbg !507
  %96 = getelementptr inbounds %struct.nn_fsm_owner, ptr %95, i32 0, i32 0, !dbg !508
  store i32 1, ptr %96, align 8, !dbg !509
  %97 = load ptr, ptr %9, align 8, !dbg !510
  %98 = getelementptr inbounds %struct.nn_aipc, ptr %97, i32 0, i32 4, !dbg !511
  %99 = getelementptr inbounds %struct.nn_fsm_owner, ptr %98, i32 0, i32 1, !dbg !512
  store ptr null, ptr %99, align 8, !dbg !513
  br label %100, !dbg !514

100:                                              ; preds = %86, %66
  %101 = load ptr, ptr %9, align 8, !dbg !515
  %102 = getelementptr inbounds %struct.nn_aipc, ptr %101, i32 0, i32 1, !dbg !516
  store i32 1, ptr %102, align 8, !dbg !517
  %103 = load ptr, ptr %9, align 8, !dbg !518
  %104 = getelementptr inbounds %struct.nn_aipc, ptr %103, i32 0, i32 0, !dbg !519
  call void @nn_fsm_stopped(ptr noundef %104, i32 noundef 34233), !dbg !520
  br label %245, !dbg !521

105:                                              ; preds = %52
  %106 = load ptr, ptr %9, align 8, !dbg !522
  %107 = getelementptr inbounds %struct.nn_aipc, ptr %106, i32 0, i32 1, !dbg !523
  %108 = load i32, ptr %107, align 8, !dbg !523
  switch i32 %108, label %240 [
    i32 1, label %109
    i32 2, label %133
    i32 3, label %175
    i32 4, label %196
    i32 5, label %217
  ], !dbg !524

109:                                              ; preds = %105
  %110 = load i32, ptr %6, align 4, !dbg !525
  switch i32 %110, label %127 [
    i32 -2, label %111
  ], !dbg !527

111:                                              ; preds = %109
  %112 = load i32, ptr %7, align 4, !dbg !528
  switch i32 %112, label %121 [
    i32 -2, label %113
  ], !dbg !530

113:                                              ; preds = %111
  %114 = load ptr, ptr %9, align 8, !dbg !531
  %115 = getelementptr inbounds %struct.nn_aipc, ptr %114, i32 0, i32 2, !dbg !533
  %116 = load ptr, ptr %9, align 8, !dbg !534
  %117 = getelementptr inbounds %struct.nn_aipc, ptr %116, i32 0, i32 3, !dbg !535
  %118 = load ptr, ptr %117, align 8, !dbg !535
  call void @nn_usock_accept(ptr noundef %115, ptr noundef %118), !dbg !536
  %119 = load ptr, ptr %9, align 8, !dbg !537
  %120 = getelementptr inbounds %struct.nn_aipc, ptr %119, i32 0, i32 1, !dbg !538
  store i32 2, ptr %120, align 8, !dbg !539
  br label %245, !dbg !540

121:                                              ; preds = %111
  br label %122, !dbg !541

122:                                              ; preds = %121
  %123 = load ptr, ptr @stderr, align 8, !dbg !542
  %124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 148), !dbg !542
  call void @nn_err_abort() #4, !dbg !542
  unreachable, !dbg !542

125:                                              ; No predecessors!
  br label %126, !dbg !546

126:                                              ; preds = %125
  br label %127, !dbg !546

127:                                              ; preds = %109, %126
  br label %128, !dbg !547

128:                                              ; preds = %127
  %129 = load ptr, ptr @stderr, align 8, !dbg !548
  %130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 152), !dbg !548
  call void @nn_err_abort() #4, !dbg !548
  unreachable, !dbg !548

131:                                              ; No predecessors!
  br label %132, !dbg !552

132:                                              ; preds = %131
  br label %133, !dbg !552

133:                                              ; preds = %105, %132
  %134 = load i32, ptr %6, align 4, !dbg !553
  switch i32 %134, label %169 [
    i32 1, label %135
  ], !dbg !554

135:                                              ; preds = %133
  %136 = load i32, ptr %7, align 4, !dbg !555
  switch i32 %136, label %163 [
    i32 2, label %137
  ], !dbg !557

137:                                              ; preds = %135
  %138 = load ptr, ptr %9, align 8, !dbg !558
  %139 = getelementptr inbounds %struct.nn_aipc, ptr %138, i32 0, i32 3, !dbg !560
  %140 = load ptr, ptr %139, align 8, !dbg !560
  %141 = load ptr, ptr %9, align 8, !dbg !561
  %142 = getelementptr inbounds %struct.nn_aipc, ptr %141, i32 0, i32 4, !dbg !562
  call void @nn_usock_swap_owner(ptr noundef %140, ptr noundef %142), !dbg !563
  %143 = load ptr, ptr %9, align 8, !dbg !564
  %144 = getelementptr inbounds %struct.nn_aipc, ptr %143, i32 0, i32 3, !dbg !565
  store ptr null, ptr %144, align 8, !dbg !566
  %145 = load ptr, ptr %9, align 8, !dbg !567
  %146 = getelementptr inbounds %struct.nn_aipc, ptr %145, i32 0, i32 4, !dbg !568
  %147 = getelementptr inbounds %struct.nn_fsm_owner, ptr %146, i32 0, i32 0, !dbg !569
  store i32 -1, ptr %147, align 8, !dbg !570
  %148 = load ptr, ptr %9, align 8, !dbg !571
  %149 = getelementptr inbounds %struct.nn_aipc, ptr %148, i32 0, i32 4, !dbg !572
  %150 = getelementptr inbounds %struct.nn_fsm_owner, ptr %149, i32 0, i32 1, !dbg !573
  store ptr null, ptr %150, align 8, !dbg !574
  %151 = load ptr, ptr %9, align 8, !dbg !575
  %152 = getelementptr inbounds %struct.nn_aipc, ptr %151, i32 0, i32 0, !dbg !576
  %153 = load ptr, ptr %9, align 8, !dbg !577
  %154 = getelementptr inbounds %struct.nn_aipc, ptr %153, i32 0, i32 6, !dbg !578
  call void @nn_fsm_raise(ptr noundef %152, ptr noundef %154, i32 noundef 34231), !dbg !579
  %155 = load ptr, ptr %9, align 8, !dbg !580
  %156 = getelementptr inbounds %struct.nn_aipc, ptr %155, i32 0, i32 2, !dbg !581
  call void @nn_usock_activate(ptr noundef %156), !dbg !582
  %157 = load ptr, ptr %9, align 8, !dbg !583
  %158 = getelementptr inbounds %struct.nn_aipc, ptr %157, i32 0, i32 5, !dbg !584
  %159 = load ptr, ptr %9, align 8, !dbg !585
  %160 = getelementptr inbounds %struct.nn_aipc, ptr %159, i32 0, i32 2, !dbg !586
  call void @nn_sipc_start(ptr noundef %158, ptr noundef %160), !dbg !587
  %161 = load ptr, ptr %9, align 8, !dbg !588
  %162 = getelementptr inbounds %struct.nn_aipc, ptr %161, i32 0, i32 1, !dbg !589
  store i32 3, ptr %162, align 8, !dbg !590
  br label %245, !dbg !591

163:                                              ; preds = %135
  br label %164, !dbg !592

164:                                              ; preds = %163
  %165 = load ptr, ptr @stderr, align 8, !dbg !593
  %166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 181), !dbg !593
  call void @nn_err_abort() #4, !dbg !593
  unreachable, !dbg !593

167:                                              ; No predecessors!
  br label %168, !dbg !597

168:                                              ; preds = %167
  br label %169, !dbg !597

169:                                              ; preds = %133, %168
  br label %170, !dbg !598

170:                                              ; preds = %169
  %171 = load ptr, ptr @stderr, align 8, !dbg !599
  %172 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 185), !dbg !599
  call void @nn_err_abort() #4, !dbg !599
  unreachable, !dbg !599

173:                                              ; No predecessors!
  br label %174, !dbg !603

174:                                              ; preds = %173
  br label %175, !dbg !603

175:                                              ; preds = %105, %174
  %176 = load i32, ptr %6, align 4, !dbg !604
  switch i32 %176, label %190 [
    i32 2, label %177
  ], !dbg !605

177:                                              ; preds = %175
  %178 = load i32, ptr %7, align 4, !dbg !606
  switch i32 %178, label %184 [
    i32 1, label %179
  ], !dbg !608

179:                                              ; preds = %177
  %180 = load ptr, ptr %9, align 8, !dbg !609
  %181 = getelementptr inbounds %struct.nn_aipc, ptr %180, i32 0, i32 5, !dbg !611
  call void @nn_sipc_stop(ptr noundef %181), !dbg !612
  %182 = load ptr, ptr %9, align 8, !dbg !613
  %183 = getelementptr inbounds %struct.nn_aipc, ptr %182, i32 0, i32 1, !dbg !614
  store i32 4, ptr %183, align 8, !dbg !615
  br label %245, !dbg !616

184:                                              ; preds = %177
  br label %185, !dbg !617

185:                                              ; preds = %184
  %186 = load ptr, ptr @stderr, align 8, !dbg !618
  %187 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 201), !dbg !618
  call void @nn_err_abort() #4, !dbg !618
  unreachable, !dbg !618

188:                                              ; No predecessors!
  br label %189, !dbg !622

189:                                              ; preds = %188
  br label %190, !dbg !622

190:                                              ; preds = %175, %189
  br label %191, !dbg !623

191:                                              ; preds = %190
  %192 = load ptr, ptr @stderr, align 8, !dbg !624
  %193 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %192, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 205), !dbg !624
  call void @nn_err_abort() #4, !dbg !624
  unreachable, !dbg !624

194:                                              ; No predecessors!
  br label %195, !dbg !628

195:                                              ; preds = %194
  br label %196, !dbg !628

196:                                              ; preds = %105, %195
  %197 = load i32, ptr %6, align 4, !dbg !629
  switch i32 %197, label %211 [
    i32 2, label %198
  ], !dbg !630

198:                                              ; preds = %196
  %199 = load i32, ptr %7, align 4, !dbg !631
  switch i32 %199, label %205 [
    i32 2, label %200
  ], !dbg !633

200:                                              ; preds = %198
  %201 = load ptr, ptr %9, align 8, !dbg !634
  %202 = getelementptr inbounds %struct.nn_aipc, ptr %201, i32 0, i32 2, !dbg !636
  call void @nn_usock_stop(ptr noundef %202), !dbg !637
  %203 = load ptr, ptr %9, align 8, !dbg !638
  %204 = getelementptr inbounds %struct.nn_aipc, ptr %203, i32 0, i32 1, !dbg !639
  store i32 5, ptr %204, align 8, !dbg !640
  br label %245, !dbg !641

205:                                              ; preds = %198
  br label %206, !dbg !642

206:                                              ; preds = %205
  %207 = load ptr, ptr @stderr, align 8, !dbg !643
  %208 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %207, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 221), !dbg !643
  call void @nn_err_abort() #4, !dbg !643
  unreachable, !dbg !643

209:                                              ; No predecessors!
  br label %210, !dbg !647

210:                                              ; preds = %209
  br label %211, !dbg !647

211:                                              ; preds = %196, %210
  br label %212, !dbg !648

212:                                              ; preds = %211
  %213 = load ptr, ptr @stderr, align 8, !dbg !649
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 225), !dbg !649
  call void @nn_err_abort() #4, !dbg !649
  unreachable, !dbg !649

215:                                              ; No predecessors!
  br label %216, !dbg !653

216:                                              ; preds = %215
  br label %217, !dbg !653

217:                                              ; preds = %105, %216
  %218 = load i32, ptr %6, align 4, !dbg !654
  switch i32 %218, label %234 [
    i32 1, label %219
  ], !dbg !655

219:                                              ; preds = %217
  %220 = load i32, ptr %7, align 4, !dbg !656
  switch i32 %220, label %228 [
    i32 6, label %221
  ], !dbg !658

221:                                              ; preds = %219
  %222 = load ptr, ptr %9, align 8, !dbg !659
  %223 = getelementptr inbounds %struct.nn_aipc, ptr %222, i32 0, i32 0, !dbg !661
  %224 = load ptr, ptr %9, align 8, !dbg !662
  %225 = getelementptr inbounds %struct.nn_aipc, ptr %224, i32 0, i32 7, !dbg !663
  call void @nn_fsm_raise(ptr noundef %223, ptr noundef %225, i32 noundef 34232), !dbg !664
  %226 = load ptr, ptr %9, align 8, !dbg !665
  %227 = getelementptr inbounds %struct.nn_aipc, ptr %226, i32 0, i32 1, !dbg !666
  store i32 6, ptr %227, align 8, !dbg !667
  br label %245, !dbg !668

228:                                              ; preds = %219
  br label %229, !dbg !669

229:                                              ; preds = %228
  %230 = load ptr, ptr @stderr, align 8, !dbg !670
  %231 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 241), !dbg !670
  call void @nn_err_abort() #4, !dbg !670
  unreachable, !dbg !670

232:                                              ; No predecessors!
  br label %233, !dbg !674

233:                                              ; preds = %232
  br label %234, !dbg !674

234:                                              ; preds = %217, %233
  br label %235, !dbg !675

235:                                              ; preds = %234
  %236 = load ptr, ptr @stderr, align 8, !dbg !676
  %237 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 245), !dbg !676
  call void @nn_err_abort() #4, !dbg !676
  unreachable, !dbg !676

238:                                              ; No predecessors!
  br label %239, !dbg !680

239:                                              ; preds = %238
  br label %240, !dbg !680

240:                                              ; preds = %105, %239
  br label %241, !dbg !681

241:                                              ; preds = %240
  %242 = load ptr, ptr @stderr, align 8, !dbg !682
  %243 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 252), !dbg !682
  call void @nn_err_abort() #4, !dbg !682
  unreachable, !dbg !682

244:                                              ; No predecessors!
  br label %245, !dbg !686

245:                                              ; preds = %46, %65, %100, %113, %137, %179, %200, %221, %244
  ret void, !dbg !687
}

declare void @nn_usock_init(ptr noundef, i32 noundef, ptr noundef) #2

declare void @nn_sipc_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @nn_fsm_event_init(ptr noundef) #2

declare void @nn_list_item_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_aipc_term(ptr noundef %0) #0 !dbg !688 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !691, metadata !DIExpression()), !dbg !692
  br label %3, !dbg !693

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !694
  %5 = getelementptr inbounds %struct.nn_aipc, ptr %4, i32 0, i32 1, !dbg !694
  %6 = load i32, ptr %5, align 8, !dbg !694
  %7 = icmp eq i32 %6, 1, !dbg !694
  %8 = xor i1 %7, true, !dbg !694
  %9 = zext i1 %8 to i32, !dbg !694
  %10 = sext i32 %9 to i64, !dbg !694
  %11 = icmp ne i64 %10, 0, !dbg !694
  br i1 %11, label %12, label %15, !dbg !697

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !dbg !698
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 63), !dbg !698
  call void @nn_err_abort() #4, !dbg !698
  unreachable, !dbg !698

15:                                               ; preds = %3
  br label %16, !dbg !697

16:                                               ; preds = %15
  %17 = load ptr, ptr %2, align 8, !dbg !700
  %18 = getelementptr inbounds %struct.nn_aipc, ptr %17, i32 0, i32 8, !dbg !701
  call void @nn_list_item_term(ptr noundef %18), !dbg !702
  %19 = load ptr, ptr %2, align 8, !dbg !703
  %20 = getelementptr inbounds %struct.nn_aipc, ptr %19, i32 0, i32 7, !dbg !704
  call void @nn_fsm_event_term(ptr noundef %20), !dbg !705
  %21 = load ptr, ptr %2, align 8, !dbg !706
  %22 = getelementptr inbounds %struct.nn_aipc, ptr %21, i32 0, i32 6, !dbg !707
  call void @nn_fsm_event_term(ptr noundef %22), !dbg !708
  %23 = load ptr, ptr %2, align 8, !dbg !709
  %24 = getelementptr inbounds %struct.nn_aipc, ptr %23, i32 0, i32 5, !dbg !710
  call void @nn_sipc_term(ptr noundef %24), !dbg !711
  %25 = load ptr, ptr %2, align 8, !dbg !712
  %26 = getelementptr inbounds %struct.nn_aipc, ptr %25, i32 0, i32 2, !dbg !713
  call void @nn_usock_term(ptr noundef %26), !dbg !714
  %27 = load ptr, ptr %2, align 8, !dbg !715
  %28 = getelementptr inbounds %struct.nn_aipc, ptr %27, i32 0, i32 0, !dbg !716
  call void @nn_fsm_term(ptr noundef %28), !dbg !717
  ret void, !dbg !718
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_list_item_term(ptr noundef) #2

declare void @nn_fsm_event_term(ptr noundef) #2

declare void @nn_sipc_term(ptr noundef) #2

declare void @nn_usock_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_aipc_isidle(ptr noundef %0) #0 !dbg !719 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !722, metadata !DIExpression()), !dbg !723
  %3 = load ptr, ptr %2, align 8, !dbg !724
  %4 = getelementptr inbounds %struct.nn_aipc, ptr %3, i32 0, i32 0, !dbg !725
  %5 = call i32 @nn_fsm_isidle(ptr noundef %4), !dbg !726
  ret i32 %5, !dbg !727
}

declare i32 @nn_fsm_isidle(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_aipc_start(ptr noundef %0, ptr noundef %1) #0 !dbg !728 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !731, metadata !DIExpression()), !dbg !732
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !733, metadata !DIExpression()), !dbg !734
  br label %5, !dbg !735

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !dbg !736
  %7 = getelementptr inbounds %struct.nn_aipc, ptr %6, i32 0, i32 1, !dbg !736
  %8 = load i32, ptr %7, align 8, !dbg !736
  %9 = icmp eq i32 %8, 1, !dbg !736
  %10 = xor i1 %9, true, !dbg !736
  %11 = zext i1 %10 to i32, !dbg !736
  %12 = sext i32 %11 to i64, !dbg !736
  %13 = icmp ne i64 %12, 0, !dbg !736
  br i1 %13, label %14, label %17, !dbg !739

14:                                               ; preds = %5
  %15 = load ptr, ptr @stderr, align 8, !dbg !740
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 80), !dbg !740
  call void @nn_err_abort() #4, !dbg !740
  unreachable, !dbg !740

17:                                               ; preds = %5
  br label %18, !dbg !739

18:                                               ; preds = %17
  %19 = load ptr, ptr %4, align 8, !dbg !742
  %20 = load ptr, ptr %3, align 8, !dbg !743
  %21 = getelementptr inbounds %struct.nn_aipc, ptr %20, i32 0, i32 3, !dbg !744
  store ptr %19, ptr %21, align 8, !dbg !745
  %22 = load ptr, ptr %3, align 8, !dbg !746
  %23 = getelementptr inbounds %struct.nn_aipc, ptr %22, i32 0, i32 4, !dbg !747
  %24 = getelementptr inbounds %struct.nn_fsm_owner, ptr %23, i32 0, i32 0, !dbg !748
  store i32 1, ptr %24, align 8, !dbg !749
  %25 = load ptr, ptr %3, align 8, !dbg !750
  %26 = getelementptr inbounds %struct.nn_aipc, ptr %25, i32 0, i32 0, !dbg !751
  %27 = load ptr, ptr %3, align 8, !dbg !752
  %28 = getelementptr inbounds %struct.nn_aipc, ptr %27, i32 0, i32 4, !dbg !753
  %29 = getelementptr inbounds %struct.nn_fsm_owner, ptr %28, i32 0, i32 1, !dbg !754
  store ptr %26, ptr %29, align 8, !dbg !755
  %30 = load ptr, ptr %4, align 8, !dbg !756
  %31 = load ptr, ptr %3, align 8, !dbg !757
  %32 = getelementptr inbounds %struct.nn_aipc, ptr %31, i32 0, i32 4, !dbg !758
  call void @nn_usock_swap_owner(ptr noundef %30, ptr noundef %32), !dbg !759
  %33 = load ptr, ptr %3, align 8, !dbg !760
  %34 = getelementptr inbounds %struct.nn_aipc, ptr %33, i32 0, i32 0, !dbg !761
  call void @nn_fsm_start(ptr noundef %34), !dbg !762
  ret void, !dbg !763
}

declare void @nn_usock_swap_owner(ptr noundef, ptr noundef) #2

declare void @nn_fsm_start(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_aipc_stop(ptr noundef %0) #0 !dbg !764 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !765, metadata !DIExpression()), !dbg !766
  %3 = load ptr, ptr %2, align 8, !dbg !767
  %4 = getelementptr inbounds %struct.nn_aipc, ptr %3, i32 0, i32 0, !dbg !768
  call void @nn_fsm_stop(ptr noundef %4), !dbg !769
  ret void, !dbg !770
}

declare void @nn_fsm_stop(ptr noundef) #2

declare void @nn_sipc_stop(ptr noundef) #2

declare i32 @nn_sipc_isidle(ptr noundef) #2

declare void @nn_usock_stop(ptr noundef) #2

declare i32 @nn_usock_isidle(ptr noundef) #2

declare void @nn_fsm_stopped(ptr noundef, i32 noundef) #2

declare void @nn_usock_accept(ptr noundef, ptr noundef) #2

declare void @nn_fsm_raise(ptr noundef, ptr noundef, i32 noundef) #2

declare void @nn_usock_activate(ptr noundef) #2

declare void @nn_sipc_start(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!357, !358, !359, !360, !361, !362, !363}
!llvm.ident = !{!364}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/transports/ipc/aipc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "106d58cc4c17654080de296b0a0a6267")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 34)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 28)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 25)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 2)
!27 = distinct !DICompileUnit(language: DW_LANG_C11, file: !28, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !29, globals: !356, splitDebugInlining: false, nameTableKind: None)
!28 = !DIFile(filename: "src/transports/ipc/aipc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "106d58cc4c17654080de296b0a0a6267")
!29 = !{!30, !355}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_aipc", file: !32, line: 46, size: 12928, elements: !33)
!32 = !DIFile(filename: "./src/transports/ipc/aipc.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fade8dd90daf78b2e059775b2affb261")
!33 = !{!34, !66, !67, !255, !256, !261, !352, !353, !354}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !31, file: !32, line: 49, baseType: !35, size: 640)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !36, line: 66, size: 640, elements: !37)
!36 = !DIFile(filename: "src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!37 = !{!38, !46, !47, !48, !49, !50, !53}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !35, file: !36, line: 67, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !36, line: 58, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !44, !44, !45}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !35, file: !36, line: 68, baseType: !44, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !35, file: !36, line: 69, baseType: !44, size: 32, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !35, file: !36, line: 70, baseType: !45, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !35, file: !36, line: 71, baseType: !43, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !35, file: !36, line: 72, baseType: !51, size: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !36, line: 30, flags: DIFlagFwdDecl)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !35, file: !36, line: 73, baseType: !54, size: 320, offset: 320)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !36, line: 34, size: 320, elements: !55)
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !54, file: !36, line: 35, baseType: !43, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !54, file: !36, line: 36, baseType: !44, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !54, file: !36, line: 37, baseType: !45, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !36, line: 38, baseType: !44, size: 32, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !54, file: !36, line: 39, baseType: !61, size: 64, offset: 256)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !62, line: 33, size: 64, elements: !63)
!62 = !DIFile(filename: "src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !61, file: !62, line: 34, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !31, file: !32, line: 50, baseType: !44, size: 32, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !31, file: !32, line: 53, baseType: !68, size: 4224, offset: 704)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_usock", file: !69, line: 29, size: 4224, elements: !70)
!69 = !DIFile(filename: "src/aio/usock_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "31b785bc46a858e5ba003f912abaeac8")
!70 = !{!71, !72, !73, !193, !194, !199, !213, !239, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !68, file: !69, line: 32, baseType: !35, size: 640)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !68, file: !69, line: 33, baseType: !44, size: 32, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !68, file: !69, line: 36, baseType: !74, size: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !76, line: 53, size: 1408, elements: !77)
!76 = !DIFile(filename: "src/aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!77 = !{!78, !114, !119, !120, !126, !153, !154, !180}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !75, file: !76, line: 54, baseType: !79, size: 320)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !80, line: 32, size: 320, elements: !81)
!80 = !DIFile(filename: "src/aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !79, file: !80, line: 36, baseType: !83, size: 320)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !84, line: 72, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !84, line: 67, size: 320, elements: !86)
!86 = !{!87, !108, !112}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !85, file: !84, line: 69, baseType: !88, size: 320)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !89, line: 22, size: 320, elements: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!90 = !{!91, !92, !94, !95, !96, !97, !99, !100}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !88, file: !89, line: 24, baseType: !44, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !88, file: !89, line: 25, baseType: !93, size: 32, offset: 32)
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !88, file: !89, line: 26, baseType: !44, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !88, file: !89, line: 28, baseType: !93, size: 32, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !88, file: !89, line: 32, baseType: !44, size: 32, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !88, file: !89, line: 34, baseType: !98, size: 16, offset: 160)
!98 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !88, file: !89, line: 35, baseType: !98, size: 16, offset: 176)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !88, file: !89, line: 36, baseType: !101, size: 128, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !102, line: 55, baseType: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !102, line: 51, size: 128, elements: !104)
!104 = !{!105, !107}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !103, file: !102, line: 53, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !103, file: !102, line: 54, baseType: !106, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !85, file: !84, line: 70, baseType: !109, size: 320)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 40)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !85, file: !84, line: 71, baseType: !113, size: 64)
!113 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !75, file: !76, line: 55, baseType: !115, size: 128, offset: 320)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !62, line: 37, size: 128, elements: !116)
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !115, file: !62, line: 38, baseType: !65, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !115, file: !62, line: 39, baseType: !65, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !75, file: !76, line: 56, baseType: !61, size: 64, offset: 448)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !75, file: !76, line: 57, baseType: !121, size: 64, offset: 512)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !122, line: 25, size: 64, elements: !123)
!122 = !DIFile(filename: "src/aio/../utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !121, file: !122, line: 26, baseType: !44, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !121, file: !122, line: 27, baseType: !44, size: 32, offset: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !75, file: !76, line: 58, baseType: !127, size: 320, offset: 576)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !128, line: 31, size: 320, elements: !129)
!128 = !DIFile(filename: "src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!129 = !{!130, !131, !132, !133, !141, !152}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !127, file: !128, line: 34, baseType: !44, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !127, file: !128, line: 37, baseType: !44, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !127, file: !128, line: 40, baseType: !44, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !127, file: !128, line: 43, baseType: !134, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !136, line: 36, size: 64, elements: !137)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!137 = !{!138, !139, !140}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !135, file: !136, line: 38, baseType: !44, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !135, file: !136, line: 39, baseType: !98, size: 16, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !135, file: !136, line: 40, baseType: !98, size: 16, offset: 48)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !127, file: !128, line: 52, baseType: !142, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !128, line: 48, size: 128, elements: !144)
!144 = !{!145, !150, !151}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !143, file: !128, line: 49, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !128, line: 27, size: 32, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !147, file: !128, line: 28, baseType: !44, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !143, file: !128, line: 50, baseType: !44, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !143, file: !128, line: 51, baseType: !44, size: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !127, file: !128, line: 55, baseType: !44, size: 32, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !75, file: !76, line: 59, baseType: !147, size: 32, offset: 896)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !75, file: !76, line: 60, baseType: !155, size: 256, offset: 960)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !156, line: 37, size: 256, elements: !157)
!156 = !DIFile(filename: "src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!157 = !{!158, !169}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !155, file: !156, line: 38, baseType: !159, size: 128)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !160, line: 31, size: 128, elements: !161)
!160 = !DIFile(filename: "src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!161 = !{!162, !168}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !159, file: !160, line: 33, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !164, line: 27, baseType: !165)
!164 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !166, line: 45, baseType: !167)
!166 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!167 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !159, file: !160, line: 34, baseType: !163, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !155, file: !156, line: 39, baseType: !170, size: 128, offset: 128)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !171, line: 31, size: 128, elements: !172)
!171 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!172 = !{!173, !179}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !170, file: !171, line: 32, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !171, line: 26, size: 128, elements: !176)
!176 = !{!177, !178}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !171, line: 27, baseType: !174, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !175, file: !171, line: 28, baseType: !174, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !170, file: !171, line: 33, baseType: !174, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !75, file: !76, line: 61, baseType: !181, size: 192, offset: 1216)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !182, line: 25, size: 192, elements: !183)
!182 = !DIFile(filename: "src/aio/../utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!183 = !{!184, !190, !191}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !181, file: !182, line: 27, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !187, line: 28, baseType: !188)
!187 = !DIFile(filename: "src/aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!188 = !DISubroutineType(types: !189)
!189 = !{null, !45}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !181, file: !182, line: 28, baseType: !45, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !181, file: !182, line: 29, baseType: !192, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !84, line: 27, baseType: !167)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !68, file: !69, line: 39, baseType: !44, size: 32, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "wfd", scope: !68, file: !69, line: 40, baseType: !195, size: 128, offset: 832)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_fd", file: !76, line: 40, size: 128, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !195, file: !76, line: 41, baseType: !43, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !195, file: !76, line: 42, baseType: !147, size: 32, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !68, file: !69, line: 59, baseType: !200, size: 320, offset: 960)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !68, file: !69, line: 43, size: 320, elements: !201)
!201 = !{!202, !207, !210, !211, !212}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !200, file: !69, line: 46, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !164, line: 24, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !166, line: 38, baseType: !206)
!206 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !200, file: !69, line: 47, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !209, line: 46, baseType: !167)
!209 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!210 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !200, file: !69, line: 50, baseType: !203, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "batch_len", scope: !200, file: !69, line: 53, baseType: !208, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "batch_pos", scope: !200, file: !69, line: 58, baseType: !208, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !68, file: !69, line: 69, baseType: !214, size: 832, offset: 1280)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !68, file: !69, line: 62, size: 832, elements: !215)
!215 = !{!216, !235}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !214, file: !69, line: 65, baseType: !217, size: 448)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !218, line: 259, size: 448, elements: !219)
!218 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!219 = !{!220, !221, !224, !231, !232, !233, !234}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !217, file: !218, line: 261, baseType: !45, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !217, file: !218, line: 262, baseType: !222, size: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !218, line: 33, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !166, line: 210, baseType: !93)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !217, file: !218, line: 264, baseType: !225, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !227, line: 26, size: 128, elements: !228)
!227 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !226, file: !227, line: 28, baseType: !45, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !226, file: !227, line: 29, baseType: !208, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !217, file: !218, line: 265, baseType: !208, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !217, file: !218, line: 267, baseType: !45, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !217, file: !218, line: 268, baseType: !208, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !217, file: !218, line: 273, baseType: !44, size: 32, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !214, file: !69, line: 68, baseType: !236, size: 384, offset: 448)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 384, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 3)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "task_connecting", scope: !68, file: !69, line: 72, baseType: !240, size: 128, offset: 2112)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_task", file: !76, line: 48, size: 128, elements: !241)
!241 = !{!242, !243}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !240, file: !76, line: 49, baseType: !43, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !240, file: !76, line: 50, baseType: !61, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "task_connected", scope: !68, file: !69, line: 73, baseType: !240, size: 128, offset: 2240)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "task_accept", scope: !68, file: !69, line: 74, baseType: !240, size: 128, offset: 2368)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "task_send", scope: !68, file: !69, line: 75, baseType: !240, size: 128, offset: 2496)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "task_recv", scope: !68, file: !69, line: 76, baseType: !240, size: 128, offset: 2624)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "task_stop", scope: !68, file: !69, line: 77, baseType: !240, size: 128, offset: 2752)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "event_established", scope: !68, file: !69, line: 80, baseType: !54, size: 320, offset: 2880)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "event_sent", scope: !68, file: !69, line: 81, baseType: !54, size: 320, offset: 3200)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "event_received", scope: !68, file: !69, line: 82, baseType: !54, size: 320, offset: 3520)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "event_error", scope: !68, file: !69, line: 83, baseType: !54, size: 320, offset: 3840)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "asock", scope: !68, file: !69, line: 87, baseType: !254, size: 64, offset: 4160)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !31, file: !32, line: 56, baseType: !254, size: 64, offset: 4928)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "listener_owner", scope: !31, file: !32, line: 57, baseType: !257, size: 128, offset: 4992)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_owner", file: !36, line: 61, size: 128, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !257, file: !36, line: 62, baseType: !44, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !257, file: !36, line: 63, baseType: !43, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sipc", scope: !31, file: !32, line: 60, baseType: !262, size: 7040, offset: 5120)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sipc", file: !263, line: 43, size: 7040, elements: !264)
!263 = !DIFile(filename: "./src/transports/ipc/sipc.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "c72c01549df9f1b312112846109e9bf8")
!264 = !{!265, !266, !267, !268, !340, !341, !342, !343, !347, !348, !349, !350, !351}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !262, file: !263, line: 46, baseType: !35, size: 640)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !262, file: !263, line: 47, baseType: !44, size: 32, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !262, file: !263, line: 50, baseType: !254, size: 64, offset: 704)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "streamhdr", scope: !262, file: !263, line: 53, baseType: !269, size: 3008, offset: 768)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_streamhdr", file: !270, line: 41, size: 3008, elements: !271)
!270 = !DIFile(filename: "./src/transports/ipc/../utils/streamhdr.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "7d060aeed02236eba444409cfc4451d2")
!271 = !{!272, !273, !274, !295, !296, !297, !335, !339}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !269, file: !270, line: 44, baseType: !35, size: 640)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !270, line: 45, baseType: !44, size: 32, offset: 640)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !269, file: !270, line: 48, baseType: !275, size: 1664, offset: 704)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timer", file: !276, line: 32, size: 1664, elements: !277)
!276 = !DIFile(filename: "./src/transports/ipc/../utils/../../aio/timer.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "36b8c8892aa99fc49b85b12a9caf893a")
!277 = !{!278, !279, !280, !281, !282, !292, !293, !294}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !275, file: !276, line: 33, baseType: !35, size: 640)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !275, file: !276, line: 34, baseType: !44, size: 32, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "start_task", scope: !275, file: !276, line: 35, baseType: !240, size: 128, offset: 704)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "stop_task", scope: !275, file: !276, line: 36, baseType: !240, size: 128, offset: 832)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "wtimer", scope: !275, file: !276, line: 37, baseType: !283, size: 256, offset: 960)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_timer", file: !284, line: 37, size: 256, elements: !285)
!284 = !DIFile(filename: "src/aio/worker.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "2b691693adce9b61547df7808f294867")
!285 = !{!286, !287}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !283, file: !284, line: 38, baseType: !43, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !283, file: !284, line: 39, baseType: !288, size: 192, offset: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset_hndl", file: !156, line: 32, size: 192, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !288, file: !156, line: 33, baseType: !175, size: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !288, file: !156, line: 34, baseType: !163, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !275, file: !276, line: 38, baseType: !54, size: 320, offset: 1216)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !275, file: !276, line: 39, baseType: !74, size: 64, offset: 1536)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !275, file: !276, line: 40, baseType: !44, size: 32, offset: 1600)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !269, file: !270, line: 51, baseType: !254, size: 64, offset: 2368)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "usock_owner", scope: !269, file: !270, line: 54, baseType: !257, size: 128, offset: 2432)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !269, file: !270, line: 57, baseType: !298, size: 64, offset: 2560)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase", file: !300, line: 147, size: 1536, elements: !301)
!300 = !DIFile(filename: "./src/transports/ipc/../../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
!301 = !{!302, !303, !326, !327, !328, !329, !332, !333, !334}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !299, file: !300, line: 148, baseType: !35, size: 640)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !299, file: !300, line: 149, baseType: !304, size: 64, offset: 640)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase_vfptr", file: !300, line: 134, size: 128, elements: !307)
!307 = !{!308, !325}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !306, file: !300, line: 138, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!44, !298, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !314, line: 30, size: 512, elements: !315)
!314 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!315 = !{!316, !324}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !313, file: !314, line: 33, baseType: !317, size: 256)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !318, line: 39, size: 256, elements: !319)
!318 = !DIFile(filename: "src/aio/../utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !317, file: !318, line: 40, baseType: !321, size: 256)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 256, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !313, file: !314, line: 36, baseType: !317, size: 256, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !306, file: !300, line: 142, baseType: !309, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !299, file: !300, line: 150, baseType: !204, size: 8, offset: 704)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !299, file: !300, line: 151, baseType: !204, size: 8, offset: 712)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !299, file: !300, line: 152, baseType: !204, size: 8, offset: 720)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !299, file: !300, line: 153, baseType: !330, size: 64, offset: 768)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !300, line: 39, flags: DIFlagFwdDecl)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !299, file: !300, line: 154, baseType: !45, size: 64, offset: 832)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !299, file: !300, line: 155, baseType: !54, size: 320, offset: 896)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !299, file: !300, line: 156, baseType: !54, size: 320, offset: 1216)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "protohdr", scope: !269, file: !270, line: 60, baseType: !336, size: 64, offset: 2624)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 64, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 8)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !269, file: !270, line: 63, baseType: !54, size: 320, offset: 2688)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "usock_owner", scope: !262, file: !263, line: 56, baseType: !257, size: 128, offset: 3776)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !262, file: !263, line: 59, baseType: !299, size: 1536, offset: 3904)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !262, file: !263, line: 62, baseType: !44, size: 32, offset: 5440)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "inhdr", scope: !262, file: !263, line: 65, baseType: !344, size: 72, offset: 5472)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 72, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 9)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "inmsg", scope: !262, file: !263, line: 68, baseType: !313, size: 512, offset: 5544)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !262, file: !263, line: 71, baseType: !44, size: 32, offset: 6080)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "outhdr", scope: !262, file: !263, line: 74, baseType: !344, size: 72, offset: 6112)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "outmsg", scope: !262, file: !263, line: 77, baseType: !313, size: 512, offset: 6184)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !262, file: !263, line: 80, baseType: !54, size: 320, offset: 6720)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "accepted", scope: !31, file: !32, line: 63, baseType: !54, size: 320, offset: 12160)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !31, file: !32, line: 64, baseType: !54, size: 320, offset: 12480)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !31, file: !32, line: 67, baseType: !175, size: 128, offset: 12800)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!356 = !{!0, !7, !12, !17, !22}
!357 = !{i32 7, !"Dwarf Version", i32 5}
!358 = !{i32 2, !"Debug Info Version", i32 3}
!359 = !{i32 1, !"wchar_size", i32 4}
!360 = !{i32 8, !"PIC Level", i32 2}
!361 = !{i32 7, !"PIE Level", i32 2}
!362 = !{i32 7, !"uwtable", i32 2}
!363 = !{i32 7, !"frame-pointer", i32 2}
!364 = !{!"clang version 16.0.0"}
!365 = distinct !DISubprogram(name: "nn_aipc_init", scope: !2, file: !2, line: 46, type: !366, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !384)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !30, !44, !368, !43}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !300, line: 81, size: 128, elements: !370)
!370 = !{!371, !381}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !369, file: !300, line: 82, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase_vfptr", file: !300, line: 70, size: 128, elements: !375)
!375 = !{!376, !380}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !374, file: !300, line: 75, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !368}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !374, file: !300, line: 78, baseType: !377, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !369, file: !300, line: 83, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ep", file: !300, line: 83, flags: DIFlagFwdDecl)
!384 = !{}
!385 = !DILocalVariable(name: "self", arg: 1, scope: !365, file: !2, line: 46, type: !30)
!386 = !DILocation(line: 46, column: 36, scope: !365)
!387 = !DILocalVariable(name: "src", arg: 2, scope: !365, file: !2, line: 46, type: !44)
!388 = !DILocation(line: 46, column: 46, scope: !365)
!389 = !DILocalVariable(name: "epbase", arg: 3, scope: !365, file: !2, line: 47, type: !368)
!390 = !DILocation(line: 47, column: 23, scope: !365)
!391 = !DILocalVariable(name: "owner", arg: 4, scope: !365, file: !2, line: 47, type: !43)
!392 = !DILocation(line: 47, column: 46, scope: !365)
!393 = !DILocation(line: 49, column: 19, scope: !365)
!394 = !DILocation(line: 49, column: 25, scope: !365)
!395 = !DILocation(line: 49, column: 47, scope: !365)
!396 = !DILocation(line: 49, column: 52, scope: !365)
!397 = !DILocation(line: 49, column: 58, scope: !365)
!398 = !DILocation(line: 49, column: 5, scope: !365)
!399 = !DILocation(line: 50, column: 5, scope: !365)
!400 = !DILocation(line: 50, column: 11, scope: !365)
!401 = !DILocation(line: 50, column: 17, scope: !365)
!402 = !DILocation(line: 51, column: 21, scope: !365)
!403 = !DILocation(line: 51, column: 27, scope: !365)
!404 = !DILocation(line: 51, column: 54, scope: !365)
!405 = !DILocation(line: 51, column: 60, scope: !365)
!406 = !DILocation(line: 51, column: 5, scope: !365)
!407 = !DILocation(line: 52, column: 5, scope: !365)
!408 = !DILocation(line: 52, column: 11, scope: !365)
!409 = !DILocation(line: 52, column: 20, scope: !365)
!410 = !DILocation(line: 53, column: 5, scope: !365)
!411 = !DILocation(line: 53, column: 11, scope: !365)
!412 = !DILocation(line: 53, column: 26, scope: !365)
!413 = !DILocation(line: 53, column: 30, scope: !365)
!414 = !DILocation(line: 54, column: 5, scope: !365)
!415 = !DILocation(line: 54, column: 11, scope: !365)
!416 = !DILocation(line: 54, column: 26, scope: !365)
!417 = !DILocation(line: 54, column: 30, scope: !365)
!418 = !DILocation(line: 55, column: 20, scope: !365)
!419 = !DILocation(line: 55, column: 26, scope: !365)
!420 = !DILocation(line: 55, column: 50, scope: !365)
!421 = !DILocation(line: 55, column: 59, scope: !365)
!422 = !DILocation(line: 55, column: 65, scope: !365)
!423 = !DILocation(line: 55, column: 5, scope: !365)
!424 = !DILocation(line: 56, column: 25, scope: !365)
!425 = !DILocation(line: 56, column: 31, scope: !365)
!426 = !DILocation(line: 56, column: 5, scope: !365)
!427 = !DILocation(line: 57, column: 25, scope: !365)
!428 = !DILocation(line: 57, column: 31, scope: !365)
!429 = !DILocation(line: 57, column: 5, scope: !365)
!430 = !DILocation(line: 58, column: 25, scope: !365)
!431 = !DILocation(line: 58, column: 31, scope: !365)
!432 = !DILocation(line: 58, column: 5, scope: !365)
!433 = !DILocation(line: 59, column: 1, scope: !365)
!434 = distinct !DISubprogram(name: "nn_aipc_handler", scope: !2, file: !2, line: 97, type: !41, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !384)
!435 = !DILocalVariable(name: "self", arg: 1, scope: !434, file: !2, line: 97, type: !43)
!436 = !DILocation(line: 97, column: 45, scope: !434)
!437 = !DILocalVariable(name: "src", arg: 2, scope: !434, file: !2, line: 97, type: !44)
!438 = !DILocation(line: 97, column: 55, scope: !434)
!439 = !DILocalVariable(name: "type", arg: 3, scope: !434, file: !2, line: 97, type: !44)
!440 = !DILocation(line: 97, column: 64, scope: !434)
!441 = !DILocalVariable(name: "srcptr", arg: 4, scope: !434, file: !2, line: 98, type: !45)
!442 = !DILocation(line: 98, column: 11, scope: !434)
!443 = !DILocalVariable(name: "aipc", scope: !434, file: !2, line: 100, type: !30)
!444 = !DILocation(line: 100, column: 21, scope: !434)
!445 = !DILocation(line: 102, column: 12, scope: !434)
!446 = !DILocation(line: 102, column: 10, scope: !434)
!447 = !DILocation(line: 107, column: 9, scope: !448)
!448 = distinct !DILexicalBlock(scope: !434, file: !2, line: 107, column: 9)
!449 = !DILocation(line: 0, scope: !448)
!450 = !DILocation(line: 107, column: 9, scope: !434)
!451 = !DILocation(line: 108, column: 24, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !2, line: 107, column: 64)
!453 = !DILocation(line: 108, column: 30, scope: !452)
!454 = !DILocation(line: 108, column: 9, scope: !452)
!455 = !DILocation(line: 109, column: 9, scope: !452)
!456 = !DILocation(line: 109, column: 15, scope: !452)
!457 = !DILocation(line: 109, column: 21, scope: !452)
!458 = !DILocation(line: 110, column: 5, scope: !452)
!459 = !DILocation(line: 111, column: 9, scope: !460)
!460 = distinct !DILexicalBlock(scope: !434, file: !2, line: 111, column: 9)
!461 = !DILocation(line: 111, column: 9, scope: !434)
!462 = !DILocation(line: 112, column: 31, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !2, line: 112, column: 13)
!464 = distinct !DILexicalBlock(scope: !460, file: !2, line: 111, column: 69)
!465 = !DILocation(line: 112, column: 37, scope: !463)
!466 = !DILocation(line: 112, column: 14, scope: !463)
!467 = !DILocation(line: 112, column: 13, scope: !464)
!468 = !DILocation(line: 113, column: 13, scope: !463)
!469 = !DILocation(line: 114, column: 25, scope: !464)
!470 = !DILocation(line: 114, column: 31, scope: !464)
!471 = !DILocation(line: 114, column: 9, scope: !464)
!472 = !DILocation(line: 115, column: 9, scope: !464)
!473 = !DILocation(line: 115, column: 15, scope: !464)
!474 = !DILocation(line: 115, column: 21, scope: !464)
!475 = !DILocation(line: 116, column: 5, scope: !464)
!476 = !DILocation(line: 117, column: 9, scope: !477)
!477 = distinct !DILexicalBlock(scope: !434, file: !2, line: 117, column: 9)
!478 = !DILocation(line: 117, column: 9, scope: !434)
!479 = !DILocation(line: 118, column: 32, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !2, line: 118, column: 13)
!481 = distinct !DILexicalBlock(scope: !477, file: !2, line: 117, column: 58)
!482 = !DILocation(line: 118, column: 38, scope: !480)
!483 = !DILocation(line: 118, column: 14, scope: !480)
!484 = !DILocation(line: 118, column: 13, scope: !481)
!485 = !DILocation(line: 119, column: 13, scope: !480)
!486 = !DILocation(line: 120, column: 12, scope: !487)
!487 = distinct !DILexicalBlock(scope: !481, file: !2, line: 120, column: 12)
!488 = !DILocation(line: 120, column: 18, scope: !487)
!489 = !DILocation(line: 120, column: 12, scope: !481)
!490 = !DILocation(line: 121, column: 13, scope: !491)
!491 = distinct !DILexicalBlock(scope: !487, file: !2, line: 120, column: 28)
!492 = !DILocation(line: 121, column: 13, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !2, line: 121, column: 13)
!494 = distinct !DILexicalBlock(scope: !491, file: !2, line: 121, column: 13)
!495 = !DILocation(line: 121, column: 13, scope: !494)
!496 = !DILocation(line: 121, column: 13, scope: !497)
!497 = distinct !DILexicalBlock(scope: !493, file: !2, line: 121, column: 13)
!498 = !DILocation(line: 122, column: 34, scope: !491)
!499 = !DILocation(line: 122, column: 40, scope: !491)
!500 = !DILocation(line: 122, column: 51, scope: !491)
!501 = !DILocation(line: 122, column: 57, scope: !491)
!502 = !DILocation(line: 122, column: 13, scope: !491)
!503 = !DILocation(line: 123, column: 13, scope: !491)
!504 = !DILocation(line: 123, column: 19, scope: !491)
!505 = !DILocation(line: 123, column: 28, scope: !491)
!506 = !DILocation(line: 124, column: 13, scope: !491)
!507 = !DILocation(line: 124, column: 19, scope: !491)
!508 = !DILocation(line: 124, column: 34, scope: !491)
!509 = !DILocation(line: 124, column: 38, scope: !491)
!510 = !DILocation(line: 125, column: 13, scope: !491)
!511 = !DILocation(line: 125, column: 19, scope: !491)
!512 = !DILocation(line: 125, column: 34, scope: !491)
!513 = !DILocation(line: 125, column: 38, scope: !491)
!514 = !DILocation(line: 126, column: 9, scope: !491)
!515 = !DILocation(line: 127, column: 9, scope: !481)
!516 = !DILocation(line: 127, column: 15, scope: !481)
!517 = !DILocation(line: 127, column: 21, scope: !481)
!518 = !DILocation(line: 128, column: 26, scope: !481)
!519 = !DILocation(line: 128, column: 32, scope: !481)
!520 = !DILocation(line: 128, column: 9, scope: !481)
!521 = !DILocation(line: 129, column: 9, scope: !481)
!522 = !DILocation(line: 132, column: 13, scope: !434)
!523 = !DILocation(line: 132, column: 19, scope: !434)
!524 = !DILocation(line: 132, column: 5, scope: !434)
!525 = !DILocation(line: 139, column: 17, scope: !526)
!526 = distinct !DILexicalBlock(scope: !434, file: !2, line: 132, column: 26)
!527 = !DILocation(line: 139, column: 9, scope: !526)
!528 = !DILocation(line: 142, column: 21, scope: !529)
!529 = distinct !DILexicalBlock(scope: !526, file: !2, line: 139, column: 22)
!530 = !DILocation(line: 142, column: 13, scope: !529)
!531 = !DILocation(line: 144, column: 35, scope: !532)
!532 = distinct !DILexicalBlock(scope: !529, file: !2, line: 142, column: 27)
!533 = !DILocation(line: 144, column: 41, scope: !532)
!534 = !DILocation(line: 144, column: 48, scope: !532)
!535 = !DILocation(line: 144, column: 54, scope: !532)
!536 = !DILocation(line: 144, column: 17, scope: !532)
!537 = !DILocation(line: 145, column: 17, scope: !532)
!538 = !DILocation(line: 145, column: 23, scope: !532)
!539 = !DILocation(line: 145, column: 29, scope: !532)
!540 = !DILocation(line: 146, column: 17, scope: !532)
!541 = !DILocation(line: 148, column: 17, scope: !532)
!542 = !DILocation(line: 148, column: 17, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !2, line: 148, column: 17)
!544 = distinct !DILexicalBlock(scope: !545, file: !2, line: 148, column: 17)
!545 = distinct !DILexicalBlock(scope: !532, file: !2, line: 148, column: 17)
!546 = !DILocation(line: 149, column: 13, scope: !532)
!547 = !DILocation(line: 152, column: 13, scope: !529)
!548 = !DILocation(line: 152, column: 13, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !2, line: 152, column: 13)
!550 = distinct !DILexicalBlock(scope: !551, file: !2, line: 152, column: 13)
!551 = distinct !DILexicalBlock(scope: !529, file: !2, line: 152, column: 13)
!552 = !DILocation(line: 153, column: 9, scope: !529)
!553 = !DILocation(line: 160, column: 17, scope: !526)
!554 = !DILocation(line: 160, column: 9, scope: !526)
!555 = !DILocation(line: 163, column: 21, scope: !556)
!556 = distinct !DILexicalBlock(scope: !526, file: !2, line: 160, column: 22)
!557 = !DILocation(line: 163, column: 13, scope: !556)
!558 = !DILocation(line: 167, column: 38, scope: !559)
!559 = distinct !DILexicalBlock(scope: !556, file: !2, line: 163, column: 27)
!560 = !DILocation(line: 167, column: 44, scope: !559)
!561 = !DILocation(line: 167, column: 55, scope: !559)
!562 = !DILocation(line: 167, column: 61, scope: !559)
!563 = !DILocation(line: 167, column: 17, scope: !559)
!564 = !DILocation(line: 168, column: 17, scope: !559)
!565 = !DILocation(line: 168, column: 23, scope: !559)
!566 = !DILocation(line: 168, column: 32, scope: !559)
!567 = !DILocation(line: 169, column: 17, scope: !559)
!568 = !DILocation(line: 169, column: 23, scope: !559)
!569 = !DILocation(line: 169, column: 38, scope: !559)
!570 = !DILocation(line: 169, column: 42, scope: !559)
!571 = !DILocation(line: 170, column: 17, scope: !559)
!572 = !DILocation(line: 170, column: 23, scope: !559)
!573 = !DILocation(line: 170, column: 38, scope: !559)
!574 = !DILocation(line: 170, column: 42, scope: !559)
!575 = !DILocation(line: 171, column: 32, scope: !559)
!576 = !DILocation(line: 171, column: 38, scope: !559)
!577 = !DILocation(line: 171, column: 44, scope: !559)
!578 = !DILocation(line: 171, column: 50, scope: !559)
!579 = !DILocation(line: 171, column: 17, scope: !559)
!580 = !DILocation(line: 174, column: 37, scope: !559)
!581 = !DILocation(line: 174, column: 43, scope: !559)
!582 = !DILocation(line: 174, column: 17, scope: !559)
!583 = !DILocation(line: 175, column: 33, scope: !559)
!584 = !DILocation(line: 175, column: 39, scope: !559)
!585 = !DILocation(line: 175, column: 46, scope: !559)
!586 = !DILocation(line: 175, column: 52, scope: !559)
!587 = !DILocation(line: 175, column: 17, scope: !559)
!588 = !DILocation(line: 176, column: 17, scope: !559)
!589 = !DILocation(line: 176, column: 23, scope: !559)
!590 = !DILocation(line: 176, column: 29, scope: !559)
!591 = !DILocation(line: 178, column: 17, scope: !559)
!592 = !DILocation(line: 181, column: 17, scope: !559)
!593 = !DILocation(line: 181, column: 17, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !2, line: 181, column: 17)
!595 = distinct !DILexicalBlock(scope: !596, file: !2, line: 181, column: 17)
!596 = distinct !DILexicalBlock(scope: !559, file: !2, line: 181, column: 17)
!597 = !DILocation(line: 182, column: 13, scope: !559)
!598 = !DILocation(line: 185, column: 13, scope: !556)
!599 = !DILocation(line: 185, column: 13, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !2, line: 185, column: 13)
!601 = distinct !DILexicalBlock(scope: !602, file: !2, line: 185, column: 13)
!602 = distinct !DILexicalBlock(scope: !556, file: !2, line: 185, column: 13)
!603 = !DILocation(line: 186, column: 9, scope: !556)
!604 = !DILocation(line: 192, column: 17, scope: !526)
!605 = !DILocation(line: 192, column: 9, scope: !526)
!606 = !DILocation(line: 195, column: 21, scope: !607)
!607 = distinct !DILexicalBlock(scope: !526, file: !2, line: 192, column: 22)
!608 = !DILocation(line: 195, column: 13, scope: !607)
!609 = !DILocation(line: 197, column: 32, scope: !610)
!610 = distinct !DILexicalBlock(scope: !607, file: !2, line: 195, column: 27)
!611 = !DILocation(line: 197, column: 38, scope: !610)
!612 = !DILocation(line: 197, column: 17, scope: !610)
!613 = !DILocation(line: 198, column: 17, scope: !610)
!614 = !DILocation(line: 198, column: 23, scope: !610)
!615 = !DILocation(line: 198, column: 29, scope: !610)
!616 = !DILocation(line: 199, column: 17, scope: !610)
!617 = !DILocation(line: 201, column: 17, scope: !610)
!618 = !DILocation(line: 201, column: 17, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !2, line: 201, column: 17)
!620 = distinct !DILexicalBlock(scope: !621, file: !2, line: 201, column: 17)
!621 = distinct !DILexicalBlock(scope: !610, file: !2, line: 201, column: 17)
!622 = !DILocation(line: 202, column: 13, scope: !610)
!623 = !DILocation(line: 205, column: 13, scope: !607)
!624 = !DILocation(line: 205, column: 13, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !2, line: 205, column: 13)
!626 = distinct !DILexicalBlock(scope: !627, file: !2, line: 205, column: 13)
!627 = distinct !DILexicalBlock(scope: !607, file: !2, line: 205, column: 13)
!628 = !DILocation(line: 206, column: 9, scope: !607)
!629 = !DILocation(line: 212, column: 17, scope: !526)
!630 = !DILocation(line: 212, column: 9, scope: !526)
!631 = !DILocation(line: 215, column: 21, scope: !632)
!632 = distinct !DILexicalBlock(scope: !526, file: !2, line: 212, column: 22)
!633 = !DILocation(line: 215, column: 13, scope: !632)
!634 = !DILocation(line: 217, column: 33, scope: !635)
!635 = distinct !DILexicalBlock(scope: !632, file: !2, line: 215, column: 27)
!636 = !DILocation(line: 217, column: 39, scope: !635)
!637 = !DILocation(line: 217, column: 17, scope: !635)
!638 = !DILocation(line: 218, column: 17, scope: !635)
!639 = !DILocation(line: 218, column: 23, scope: !635)
!640 = !DILocation(line: 218, column: 29, scope: !635)
!641 = !DILocation(line: 219, column: 17, scope: !635)
!642 = !DILocation(line: 221, column: 17, scope: !635)
!643 = !DILocation(line: 221, column: 17, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !2, line: 221, column: 17)
!645 = distinct !DILexicalBlock(scope: !646, file: !2, line: 221, column: 17)
!646 = distinct !DILexicalBlock(scope: !635, file: !2, line: 221, column: 17)
!647 = !DILocation(line: 222, column: 13, scope: !635)
!648 = !DILocation(line: 225, column: 13, scope: !632)
!649 = !DILocation(line: 225, column: 13, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !2, line: 225, column: 13)
!651 = distinct !DILexicalBlock(scope: !652, file: !2, line: 225, column: 13)
!652 = distinct !DILexicalBlock(scope: !632, file: !2, line: 225, column: 13)
!653 = !DILocation(line: 226, column: 9, scope: !632)
!654 = !DILocation(line: 232, column: 17, scope: !526)
!655 = !DILocation(line: 232, column: 9, scope: !526)
!656 = !DILocation(line: 235, column: 21, scope: !657)
!657 = distinct !DILexicalBlock(scope: !526, file: !2, line: 232, column: 22)
!658 = !DILocation(line: 235, column: 13, scope: !657)
!659 = !DILocation(line: 237, column: 32, scope: !660)
!660 = distinct !DILexicalBlock(scope: !657, file: !2, line: 235, column: 27)
!661 = !DILocation(line: 237, column: 38, scope: !660)
!662 = !DILocation(line: 237, column: 44, scope: !660)
!663 = !DILocation(line: 237, column: 50, scope: !660)
!664 = !DILocation(line: 237, column: 17, scope: !660)
!665 = !DILocation(line: 238, column: 17, scope: !660)
!666 = !DILocation(line: 238, column: 23, scope: !660)
!667 = !DILocation(line: 238, column: 29, scope: !660)
!668 = !DILocation(line: 239, column: 17, scope: !660)
!669 = !DILocation(line: 241, column: 17, scope: !660)
!670 = !DILocation(line: 241, column: 17, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !2, line: 241, column: 17)
!672 = distinct !DILexicalBlock(scope: !673, file: !2, line: 241, column: 17)
!673 = distinct !DILexicalBlock(scope: !660, file: !2, line: 241, column: 17)
!674 = !DILocation(line: 242, column: 13, scope: !660)
!675 = !DILocation(line: 245, column: 13, scope: !657)
!676 = !DILocation(line: 245, column: 13, scope: !677)
!677 = distinct !DILexicalBlock(scope: !678, file: !2, line: 245, column: 13)
!678 = distinct !DILexicalBlock(scope: !679, file: !2, line: 245, column: 13)
!679 = distinct !DILexicalBlock(scope: !657, file: !2, line: 245, column: 13)
!680 = !DILocation(line: 246, column: 9, scope: !657)
!681 = !DILocation(line: 252, column: 9, scope: !526)
!682 = !DILocation(line: 252, column: 9, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !2, line: 252, column: 9)
!684 = distinct !DILexicalBlock(scope: !685, file: !2, line: 252, column: 9)
!685 = distinct !DILexicalBlock(scope: !526, file: !2, line: 252, column: 9)
!686 = !DILocation(line: 253, column: 5, scope: !526)
!687 = !DILocation(line: 254, column: 1, scope: !434)
!688 = distinct !DISubprogram(name: "nn_aipc_term", scope: !2, file: !2, line: 61, type: !689, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !384)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !30}
!691 = !DILocalVariable(name: "self", arg: 1, scope: !688, file: !2, line: 61, type: !30)
!692 = !DILocation(line: 61, column: 36, scope: !688)
!693 = !DILocation(line: 63, column: 5, scope: !688)
!694 = !DILocation(line: 63, column: 5, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !2, line: 63, column: 5)
!696 = distinct !DILexicalBlock(scope: !688, file: !2, line: 63, column: 5)
!697 = !DILocation(line: 63, column: 5, scope: !696)
!698 = !DILocation(line: 63, column: 5, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !2, line: 63, column: 5)
!700 = !DILocation(line: 65, column: 25, scope: !688)
!701 = !DILocation(line: 65, column: 31, scope: !688)
!702 = !DILocation(line: 65, column: 5, scope: !688)
!703 = !DILocation(line: 66, column: 25, scope: !688)
!704 = !DILocation(line: 66, column: 31, scope: !688)
!705 = !DILocation(line: 66, column: 5, scope: !688)
!706 = !DILocation(line: 67, column: 25, scope: !688)
!707 = !DILocation(line: 67, column: 31, scope: !688)
!708 = !DILocation(line: 67, column: 5, scope: !688)
!709 = !DILocation(line: 68, column: 20, scope: !688)
!710 = !DILocation(line: 68, column: 26, scope: !688)
!711 = !DILocation(line: 68, column: 5, scope: !688)
!712 = !DILocation(line: 69, column: 21, scope: !688)
!713 = !DILocation(line: 69, column: 27, scope: !688)
!714 = !DILocation(line: 69, column: 5, scope: !688)
!715 = !DILocation(line: 70, column: 19, scope: !688)
!716 = !DILocation(line: 70, column: 25, scope: !688)
!717 = !DILocation(line: 70, column: 5, scope: !688)
!718 = !DILocation(line: 71, column: 1, scope: !688)
!719 = distinct !DISubprogram(name: "nn_aipc_isidle", scope: !2, file: !2, line: 73, type: !720, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !384)
!720 = !DISubroutineType(types: !721)
!721 = !{!44, !30}
!722 = !DILocalVariable(name: "self", arg: 1, scope: !719, file: !2, line: 73, type: !30)
!723 = !DILocation(line: 73, column: 37, scope: !719)
!724 = !DILocation(line: 75, column: 28, scope: !719)
!725 = !DILocation(line: 75, column: 34, scope: !719)
!726 = !DILocation(line: 75, column: 12, scope: !719)
!727 = !DILocation(line: 75, column: 5, scope: !719)
!728 = distinct !DISubprogram(name: "nn_aipc_start", scope: !2, file: !2, line: 78, type: !729, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !384)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !30, !254}
!731 = !DILocalVariable(name: "self", arg: 1, scope: !728, file: !2, line: 78, type: !30)
!732 = !DILocation(line: 78, column: 37, scope: !728)
!733 = !DILocalVariable(name: "listener", arg: 2, scope: !728, file: !2, line: 78, type: !254)
!734 = !DILocation(line: 78, column: 60, scope: !728)
!735 = !DILocation(line: 80, column: 5, scope: !728)
!736 = !DILocation(line: 80, column: 5, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !2, line: 80, column: 5)
!738 = distinct !DILexicalBlock(scope: !728, file: !2, line: 80, column: 5)
!739 = !DILocation(line: 80, column: 5, scope: !738)
!740 = !DILocation(line: 80, column: 5, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !2, line: 80, column: 5)
!742 = !DILocation(line: 83, column: 22, scope: !728)
!743 = !DILocation(line: 83, column: 5, scope: !728)
!744 = !DILocation(line: 83, column: 11, scope: !728)
!745 = !DILocation(line: 83, column: 20, scope: !728)
!746 = !DILocation(line: 84, column: 5, scope: !728)
!747 = !DILocation(line: 84, column: 11, scope: !728)
!748 = !DILocation(line: 84, column: 26, scope: !728)
!749 = !DILocation(line: 84, column: 30, scope: !728)
!750 = !DILocation(line: 85, column: 33, scope: !728)
!751 = !DILocation(line: 85, column: 39, scope: !728)
!752 = !DILocation(line: 85, column: 5, scope: !728)
!753 = !DILocation(line: 85, column: 11, scope: !728)
!754 = !DILocation(line: 85, column: 26, scope: !728)
!755 = !DILocation(line: 85, column: 30, scope: !728)
!756 = !DILocation(line: 86, column: 26, scope: !728)
!757 = !DILocation(line: 86, column: 37, scope: !728)
!758 = !DILocation(line: 86, column: 43, scope: !728)
!759 = !DILocation(line: 86, column: 5, scope: !728)
!760 = !DILocation(line: 89, column: 20, scope: !728)
!761 = !DILocation(line: 89, column: 26, scope: !728)
!762 = !DILocation(line: 89, column: 5, scope: !728)
!763 = !DILocation(line: 90, column: 1, scope: !728)
!764 = distinct !DISubprogram(name: "nn_aipc_stop", scope: !2, file: !2, line: 92, type: !689, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !384)
!765 = !DILocalVariable(name: "self", arg: 1, scope: !764, file: !2, line: 92, type: !30)
!766 = !DILocation(line: 92, column: 36, scope: !764)
!767 = !DILocation(line: 94, column: 19, scope: !764)
!768 = !DILocation(line: 94, column: 25, scope: !764)
!769 = !DILocation(line: 94, column: 5, scope: !764)
!770 = !DILocation(line: 95, column: 1, scope: !764)
