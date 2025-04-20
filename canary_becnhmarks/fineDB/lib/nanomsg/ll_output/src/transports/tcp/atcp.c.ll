; ModuleID = './src/transports/tcp/atcp.c'
source_filename = "./src/transports/tcp/atcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_atcp = type { %struct.nn_fsm, i32, %struct.nn_usock, ptr, %struct.nn_fsm_owner, %struct.nn_stcp, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_list_item }
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
%struct.nn_stcp = type { %struct.nn_fsm, i32, ptr, %struct.nn_streamhdr, %struct.nn_fsm_owner, %struct.nn_pipebase, i32, [8 x i8], %struct.nn_msg, i32, [8 x i8], %struct.nn_msg, %struct.nn_fsm_event }
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
@.str.1 = private unnamed_addr constant [34 x i8] c"self->state == NN_ATCP_STATE_IDLE\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [28 x i8] c"./src/transports/tcp/atcp.c\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [25 x i8] c"atcp->listener_owner.fsm\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !22

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_atcp_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !362 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !382, metadata !DIExpression()), !dbg !383
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !384, metadata !DIExpression()), !dbg !385
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !386, metadata !DIExpression()), !dbg !387
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !388, metadata !DIExpression()), !dbg !389
  %9 = load ptr, ptr %5, align 8, !dbg !390
  %10 = getelementptr inbounds %struct.nn_atcp, ptr %9, i32 0, i32 0, !dbg !391
  %11 = load i32, ptr %6, align 4, !dbg !392
  %12 = load ptr, ptr %5, align 8, !dbg !393
  %13 = load ptr, ptr %8, align 8, !dbg !394
  call void @nn_fsm_init(ptr noundef %10, ptr noundef @nn_atcp_handler, i32 noundef %11, ptr noundef %12, ptr noundef %13), !dbg !395
  %14 = load ptr, ptr %5, align 8, !dbg !396
  %15 = getelementptr inbounds %struct.nn_atcp, ptr %14, i32 0, i32 1, !dbg !397
  store i32 1, ptr %15, align 8, !dbg !398
  %16 = load ptr, ptr %5, align 8, !dbg !399
  %17 = getelementptr inbounds %struct.nn_atcp, ptr %16, i32 0, i32 2, !dbg !400
  %18 = load ptr, ptr %5, align 8, !dbg !401
  %19 = getelementptr inbounds %struct.nn_atcp, ptr %18, i32 0, i32 0, !dbg !402
  call void @nn_usock_init(ptr noundef %17, i32 noundef 1, ptr noundef %19), !dbg !403
  %20 = load ptr, ptr %5, align 8, !dbg !404
  %21 = getelementptr inbounds %struct.nn_atcp, ptr %20, i32 0, i32 3, !dbg !405
  store ptr null, ptr %21, align 8, !dbg !406
  %22 = load ptr, ptr %5, align 8, !dbg !407
  %23 = getelementptr inbounds %struct.nn_atcp, ptr %22, i32 0, i32 4, !dbg !408
  %24 = getelementptr inbounds %struct.nn_fsm_owner, ptr %23, i32 0, i32 0, !dbg !409
  store i32 -1, ptr %24, align 8, !dbg !410
  %25 = load ptr, ptr %5, align 8, !dbg !411
  %26 = getelementptr inbounds %struct.nn_atcp, ptr %25, i32 0, i32 4, !dbg !412
  %27 = getelementptr inbounds %struct.nn_fsm_owner, ptr %26, i32 0, i32 1, !dbg !413
  store ptr null, ptr %27, align 8, !dbg !414
  %28 = load ptr, ptr %5, align 8, !dbg !415
  %29 = getelementptr inbounds %struct.nn_atcp, ptr %28, i32 0, i32 5, !dbg !416
  %30 = load ptr, ptr %7, align 8, !dbg !417
  %31 = load ptr, ptr %5, align 8, !dbg !418
  %32 = getelementptr inbounds %struct.nn_atcp, ptr %31, i32 0, i32 0, !dbg !419
  call void @nn_stcp_init(ptr noundef %29, i32 noundef 2, ptr noundef %30, ptr noundef %32), !dbg !420
  %33 = load ptr, ptr %5, align 8, !dbg !421
  %34 = getelementptr inbounds %struct.nn_atcp, ptr %33, i32 0, i32 6, !dbg !422
  call void @nn_fsm_event_init(ptr noundef %34), !dbg !423
  %35 = load ptr, ptr %5, align 8, !dbg !424
  %36 = getelementptr inbounds %struct.nn_atcp, ptr %35, i32 0, i32 7, !dbg !425
  call void @nn_fsm_event_init(ptr noundef %36), !dbg !426
  %37 = load ptr, ptr %5, align 8, !dbg !427
  %38 = getelementptr inbounds %struct.nn_atcp, ptr %37, i32 0, i32 8, !dbg !428
  call void @nn_list_item_init(ptr noundef %38), !dbg !429
  ret void, !dbg !430
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_fsm_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_atcp_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !431 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !432, metadata !DIExpression()), !dbg !433
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !434, metadata !DIExpression()), !dbg !435
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !436, metadata !DIExpression()), !dbg !437
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !438, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.declare(metadata ptr %9, metadata !440, metadata !DIExpression()), !dbg !441
  %10 = load ptr, ptr %5, align 8, !dbg !442
  %11 = icmp ne ptr %10, null, !dbg !442
  br i1 %11, label %12, label %15, !dbg !442

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8, !dbg !442
  %14 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !442
  br label %16, !dbg !442

15:                                               ; preds = %4
  br label %16, !dbg !442

16:                                               ; preds = %15, %12
  %17 = phi ptr [ %14, %12 ], [ null, %15 ], !dbg !442
  store ptr %17, ptr %9, align 8, !dbg !443
  %18 = load i32, ptr %6, align 4, !dbg !444
  %19 = icmp eq i32 %18, -2, !dbg !444
  br i1 %19, label %20, label %23, !dbg !444

20:                                               ; preds = %16
  %21 = load i32, ptr %7, align 4, !dbg !444
  %22 = icmp eq i32 %21, -3, !dbg !444
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i1 [ false, %16 ], [ %22, %20 ], !dbg !446
  %25 = zext i1 %24 to i32, !dbg !444
  %26 = sext i32 %25 to i64, !dbg !444
  %27 = icmp ne i64 %26, 0, !dbg !444
  br i1 %27, label %28, label %33, !dbg !447

28:                                               ; preds = %23
  %29 = load ptr, ptr %9, align 8, !dbg !448
  %30 = getelementptr inbounds %struct.nn_atcp, ptr %29, i32 0, i32 5, !dbg !450
  call void @nn_stcp_stop(ptr noundef %30), !dbg !451
  %31 = load ptr, ptr %9, align 8, !dbg !452
  %32 = getelementptr inbounds %struct.nn_atcp, ptr %31, i32 0, i32 1, !dbg !453
  store i32 7, ptr %32, align 8, !dbg !454
  br label %33, !dbg !455

33:                                               ; preds = %28, %23
  %34 = load ptr, ptr %9, align 8, !dbg !456
  %35 = getelementptr inbounds %struct.nn_atcp, ptr %34, i32 0, i32 1, !dbg !456
  %36 = load i32, ptr %35, align 8, !dbg !456
  %37 = icmp eq i32 %36, 7, !dbg !456
  %38 = zext i1 %37 to i32, !dbg !456
  %39 = sext i32 %38 to i64, !dbg !456
  %40 = icmp ne i64 %39, 0, !dbg !456
  br i1 %40, label %41, label %52, !dbg !458

41:                                               ; preds = %33
  %42 = load ptr, ptr %9, align 8, !dbg !459
  %43 = getelementptr inbounds %struct.nn_atcp, ptr %42, i32 0, i32 5, !dbg !462
  %44 = call i32 @nn_stcp_isidle(ptr noundef %43), !dbg !463
  %45 = icmp ne i32 %44, 0, !dbg !463
  br i1 %45, label %47, label %46, !dbg !464

46:                                               ; preds = %41
  br label %245, !dbg !465

47:                                               ; preds = %41
  %48 = load ptr, ptr %9, align 8, !dbg !466
  %49 = getelementptr inbounds %struct.nn_atcp, ptr %48, i32 0, i32 2, !dbg !467
  call void @nn_usock_stop(ptr noundef %49), !dbg !468
  %50 = load ptr, ptr %9, align 8, !dbg !469
  %51 = getelementptr inbounds %struct.nn_atcp, ptr %50, i32 0, i32 1, !dbg !470
  store i32 8, ptr %51, align 8, !dbg !471
  br label %52, !dbg !472

52:                                               ; preds = %47, %33
  %53 = load ptr, ptr %9, align 8, !dbg !473
  %54 = getelementptr inbounds %struct.nn_atcp, ptr %53, i32 0, i32 1, !dbg !473
  %55 = load i32, ptr %54, align 8, !dbg !473
  %56 = icmp eq i32 %55, 8, !dbg !473
  %57 = zext i1 %56 to i32, !dbg !473
  %58 = sext i32 %57 to i64, !dbg !473
  %59 = icmp ne i64 %58, 0, !dbg !473
  br i1 %59, label %60, label %105, !dbg !475

60:                                               ; preds = %52
  %61 = load ptr, ptr %9, align 8, !dbg !476
  %62 = getelementptr inbounds %struct.nn_atcp, ptr %61, i32 0, i32 2, !dbg !479
  %63 = call i32 @nn_usock_isidle(ptr noundef %62), !dbg !480
  %64 = icmp ne i32 %63, 0, !dbg !480
  br i1 %64, label %66, label %65, !dbg !481

65:                                               ; preds = %60
  br label %245, !dbg !482

66:                                               ; preds = %60
  %67 = load ptr, ptr %9, align 8, !dbg !483
  %68 = getelementptr inbounds %struct.nn_atcp, ptr %67, i32 0, i32 3, !dbg !485
  %69 = load ptr, ptr %68, align 8, !dbg !485
  %70 = icmp ne ptr %69, null, !dbg !483
  br i1 %70, label %71, label %100, !dbg !486

71:                                               ; preds = %66
  br label %72, !dbg !487

72:                                               ; preds = %71
  %73 = load ptr, ptr %9, align 8, !dbg !489
  %74 = getelementptr inbounds %struct.nn_atcp, ptr %73, i32 0, i32 4, !dbg !489
  %75 = getelementptr inbounds %struct.nn_fsm_owner, ptr %74, i32 0, i32 1, !dbg !489
  %76 = load ptr, ptr %75, align 8, !dbg !489
  %77 = icmp ne ptr %76, null, !dbg !489
  %78 = xor i1 %77, true, !dbg !489
  %79 = zext i1 %78 to i32, !dbg !489
  %80 = sext i32 %79 to i64, !dbg !489
  %81 = icmp ne i64 %80, 0, !dbg !489
  br i1 %81, label %82, label %85, !dbg !492

82:                                               ; preds = %72
  %83 = load ptr, ptr @stderr, align 8, !dbg !493
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 120), !dbg !493
  call void @nn_err_abort() #4, !dbg !493
  unreachable, !dbg !493

85:                                               ; preds = %72
  br label %86, !dbg !492

86:                                               ; preds = %85
  %87 = load ptr, ptr %9, align 8, !dbg !495
  %88 = getelementptr inbounds %struct.nn_atcp, ptr %87, i32 0, i32 3, !dbg !496
  %89 = load ptr, ptr %88, align 8, !dbg !496
  %90 = load ptr, ptr %9, align 8, !dbg !497
  %91 = getelementptr inbounds %struct.nn_atcp, ptr %90, i32 0, i32 4, !dbg !498
  call void @nn_usock_swap_owner(ptr noundef %89, ptr noundef %91), !dbg !499
  %92 = load ptr, ptr %9, align 8, !dbg !500
  %93 = getelementptr inbounds %struct.nn_atcp, ptr %92, i32 0, i32 3, !dbg !501
  store ptr null, ptr %93, align 8, !dbg !502
  %94 = load ptr, ptr %9, align 8, !dbg !503
  %95 = getelementptr inbounds %struct.nn_atcp, ptr %94, i32 0, i32 4, !dbg !504
  %96 = getelementptr inbounds %struct.nn_fsm_owner, ptr %95, i32 0, i32 0, !dbg !505
  store i32 -1, ptr %96, align 8, !dbg !506
  %97 = load ptr, ptr %9, align 8, !dbg !507
  %98 = getelementptr inbounds %struct.nn_atcp, ptr %97, i32 0, i32 4, !dbg !508
  %99 = getelementptr inbounds %struct.nn_fsm_owner, ptr %98, i32 0, i32 1, !dbg !509
  store ptr null, ptr %99, align 8, !dbg !510
  br label %100, !dbg !511

100:                                              ; preds = %86, %66
  %101 = load ptr, ptr %9, align 8, !dbg !512
  %102 = getelementptr inbounds %struct.nn_atcp, ptr %101, i32 0, i32 1, !dbg !513
  store i32 1, ptr %102, align 8, !dbg !514
  %103 = load ptr, ptr %9, align 8, !dbg !515
  %104 = getelementptr inbounds %struct.nn_atcp, ptr %103, i32 0, i32 0, !dbg !516
  call void @nn_fsm_stopped(ptr noundef %104, i32 noundef 34233), !dbg !517
  br label %245, !dbg !518

105:                                              ; preds = %52
  %106 = load ptr, ptr %9, align 8, !dbg !519
  %107 = getelementptr inbounds %struct.nn_atcp, ptr %106, i32 0, i32 1, !dbg !520
  %108 = load i32, ptr %107, align 8, !dbg !520
  switch i32 %108, label %240 [
    i32 1, label %109
    i32 2, label %133
    i32 3, label %175
    i32 4, label %196
    i32 5, label %217
  ], !dbg !521

109:                                              ; preds = %105
  %110 = load i32, ptr %6, align 4, !dbg !522
  switch i32 %110, label %127 [
    i32 -2, label %111
  ], !dbg !524

111:                                              ; preds = %109
  %112 = load i32, ptr %7, align 4, !dbg !525
  switch i32 %112, label %121 [
    i32 -2, label %113
  ], !dbg !527

113:                                              ; preds = %111
  %114 = load ptr, ptr %9, align 8, !dbg !528
  %115 = getelementptr inbounds %struct.nn_atcp, ptr %114, i32 0, i32 2, !dbg !530
  %116 = load ptr, ptr %9, align 8, !dbg !531
  %117 = getelementptr inbounds %struct.nn_atcp, ptr %116, i32 0, i32 3, !dbg !532
  %118 = load ptr, ptr %117, align 8, !dbg !532
  call void @nn_usock_accept(ptr noundef %115, ptr noundef %118), !dbg !533
  %119 = load ptr, ptr %9, align 8, !dbg !534
  %120 = getelementptr inbounds %struct.nn_atcp, ptr %119, i32 0, i32 1, !dbg !535
  store i32 2, ptr %120, align 8, !dbg !536
  br label %245, !dbg !537

121:                                              ; preds = %111
  br label %122, !dbg !538

122:                                              ; preds = %121
  %123 = load ptr, ptr @stderr, align 8, !dbg !539
  %124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 147), !dbg !539
  call void @nn_err_abort() #4, !dbg !539
  unreachable, !dbg !539

125:                                              ; No predecessors!
  br label %126, !dbg !543

126:                                              ; preds = %125
  br label %127, !dbg !543

127:                                              ; preds = %109, %126
  br label %128, !dbg !544

128:                                              ; preds = %127
  %129 = load ptr, ptr @stderr, align 8, !dbg !545
  %130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 151), !dbg !545
  call void @nn_err_abort() #4, !dbg !545
  unreachable, !dbg !545

131:                                              ; No predecessors!
  br label %132, !dbg !549

132:                                              ; preds = %131
  br label %133, !dbg !549

133:                                              ; preds = %105, %132
  %134 = load i32, ptr %6, align 4, !dbg !550
  switch i32 %134, label %169 [
    i32 1, label %135
  ], !dbg !551

135:                                              ; preds = %133
  %136 = load i32, ptr %7, align 4, !dbg !552
  switch i32 %136, label %163 [
    i32 2, label %137
  ], !dbg !554

137:                                              ; preds = %135
  %138 = load ptr, ptr %9, align 8, !dbg !555
  %139 = getelementptr inbounds %struct.nn_atcp, ptr %138, i32 0, i32 3, !dbg !557
  %140 = load ptr, ptr %139, align 8, !dbg !557
  %141 = load ptr, ptr %9, align 8, !dbg !558
  %142 = getelementptr inbounds %struct.nn_atcp, ptr %141, i32 0, i32 4, !dbg !559
  call void @nn_usock_swap_owner(ptr noundef %140, ptr noundef %142), !dbg !560
  %143 = load ptr, ptr %9, align 8, !dbg !561
  %144 = getelementptr inbounds %struct.nn_atcp, ptr %143, i32 0, i32 3, !dbg !562
  store ptr null, ptr %144, align 8, !dbg !563
  %145 = load ptr, ptr %9, align 8, !dbg !564
  %146 = getelementptr inbounds %struct.nn_atcp, ptr %145, i32 0, i32 4, !dbg !565
  %147 = getelementptr inbounds %struct.nn_fsm_owner, ptr %146, i32 0, i32 0, !dbg !566
  store i32 -1, ptr %147, align 8, !dbg !567
  %148 = load ptr, ptr %9, align 8, !dbg !568
  %149 = getelementptr inbounds %struct.nn_atcp, ptr %148, i32 0, i32 4, !dbg !569
  %150 = getelementptr inbounds %struct.nn_fsm_owner, ptr %149, i32 0, i32 1, !dbg !570
  store ptr null, ptr %150, align 8, !dbg !571
  %151 = load ptr, ptr %9, align 8, !dbg !572
  %152 = getelementptr inbounds %struct.nn_atcp, ptr %151, i32 0, i32 0, !dbg !573
  %153 = load ptr, ptr %9, align 8, !dbg !574
  %154 = getelementptr inbounds %struct.nn_atcp, ptr %153, i32 0, i32 6, !dbg !575
  call void @nn_fsm_raise(ptr noundef %152, ptr noundef %154, i32 noundef 34231), !dbg !576
  %155 = load ptr, ptr %9, align 8, !dbg !577
  %156 = getelementptr inbounds %struct.nn_atcp, ptr %155, i32 0, i32 2, !dbg !578
  call void @nn_usock_activate(ptr noundef %156), !dbg !579
  %157 = load ptr, ptr %9, align 8, !dbg !580
  %158 = getelementptr inbounds %struct.nn_atcp, ptr %157, i32 0, i32 5, !dbg !581
  %159 = load ptr, ptr %9, align 8, !dbg !582
  %160 = getelementptr inbounds %struct.nn_atcp, ptr %159, i32 0, i32 2, !dbg !583
  call void @nn_stcp_start(ptr noundef %158, ptr noundef %160), !dbg !584
  %161 = load ptr, ptr %9, align 8, !dbg !585
  %162 = getelementptr inbounds %struct.nn_atcp, ptr %161, i32 0, i32 1, !dbg !586
  store i32 3, ptr %162, align 8, !dbg !587
  br label %245, !dbg !588

163:                                              ; preds = %135
  br label %164, !dbg !589

164:                                              ; preds = %163
  %165 = load ptr, ptr @stderr, align 8, !dbg !590
  %166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 180), !dbg !590
  call void @nn_err_abort() #4, !dbg !590
  unreachable, !dbg !590

167:                                              ; No predecessors!
  br label %168, !dbg !594

168:                                              ; preds = %167
  br label %169, !dbg !594

169:                                              ; preds = %133, %168
  br label %170, !dbg !595

170:                                              ; preds = %169
  %171 = load ptr, ptr @stderr, align 8, !dbg !596
  %172 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 184), !dbg !596
  call void @nn_err_abort() #4, !dbg !596
  unreachable, !dbg !596

173:                                              ; No predecessors!
  br label %174, !dbg !600

174:                                              ; preds = %173
  br label %175, !dbg !600

175:                                              ; preds = %105, %174
  %176 = load i32, ptr %6, align 4, !dbg !601
  switch i32 %176, label %190 [
    i32 2, label %177
  ], !dbg !602

177:                                              ; preds = %175
  %178 = load i32, ptr %7, align 4, !dbg !603
  switch i32 %178, label %184 [
    i32 1, label %179
  ], !dbg !605

179:                                              ; preds = %177
  %180 = load ptr, ptr %9, align 8, !dbg !606
  %181 = getelementptr inbounds %struct.nn_atcp, ptr %180, i32 0, i32 5, !dbg !608
  call void @nn_stcp_stop(ptr noundef %181), !dbg !609
  %182 = load ptr, ptr %9, align 8, !dbg !610
  %183 = getelementptr inbounds %struct.nn_atcp, ptr %182, i32 0, i32 1, !dbg !611
  store i32 4, ptr %183, align 8, !dbg !612
  br label %245, !dbg !613

184:                                              ; preds = %177
  br label %185, !dbg !614

185:                                              ; preds = %184
  %186 = load ptr, ptr @stderr, align 8, !dbg !615
  %187 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 200), !dbg !615
  call void @nn_err_abort() #4, !dbg !615
  unreachable, !dbg !615

188:                                              ; No predecessors!
  br label %189, !dbg !619

189:                                              ; preds = %188
  br label %190, !dbg !619

190:                                              ; preds = %175, %189
  br label %191, !dbg !620

191:                                              ; preds = %190
  %192 = load ptr, ptr @stderr, align 8, !dbg !621
  %193 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %192, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 204), !dbg !621
  call void @nn_err_abort() #4, !dbg !621
  unreachable, !dbg !621

194:                                              ; No predecessors!
  br label %195, !dbg !625

195:                                              ; preds = %194
  br label %196, !dbg !625

196:                                              ; preds = %105, %195
  %197 = load i32, ptr %6, align 4, !dbg !626
  switch i32 %197, label %211 [
    i32 2, label %198
  ], !dbg !627

198:                                              ; preds = %196
  %199 = load i32, ptr %7, align 4, !dbg !628
  switch i32 %199, label %205 [
    i32 2, label %200
  ], !dbg !630

200:                                              ; preds = %198
  %201 = load ptr, ptr %9, align 8, !dbg !631
  %202 = getelementptr inbounds %struct.nn_atcp, ptr %201, i32 0, i32 2, !dbg !633
  call void @nn_usock_stop(ptr noundef %202), !dbg !634
  %203 = load ptr, ptr %9, align 8, !dbg !635
  %204 = getelementptr inbounds %struct.nn_atcp, ptr %203, i32 0, i32 1, !dbg !636
  store i32 5, ptr %204, align 8, !dbg !637
  br label %245, !dbg !638

205:                                              ; preds = %198
  br label %206, !dbg !639

206:                                              ; preds = %205
  %207 = load ptr, ptr @stderr, align 8, !dbg !640
  %208 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %207, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 220), !dbg !640
  call void @nn_err_abort() #4, !dbg !640
  unreachable, !dbg !640

209:                                              ; No predecessors!
  br label %210, !dbg !644

210:                                              ; preds = %209
  br label %211, !dbg !644

211:                                              ; preds = %196, %210
  br label %212, !dbg !645

212:                                              ; preds = %211
  %213 = load ptr, ptr @stderr, align 8, !dbg !646
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 224), !dbg !646
  call void @nn_err_abort() #4, !dbg !646
  unreachable, !dbg !646

215:                                              ; No predecessors!
  br label %216, !dbg !650

216:                                              ; preds = %215
  br label %217, !dbg !650

217:                                              ; preds = %105, %216
  %218 = load i32, ptr %6, align 4, !dbg !651
  switch i32 %218, label %234 [
    i32 1, label %219
  ], !dbg !652

219:                                              ; preds = %217
  %220 = load i32, ptr %7, align 4, !dbg !653
  switch i32 %220, label %228 [
    i32 6, label %221
  ], !dbg !655

221:                                              ; preds = %219
  %222 = load ptr, ptr %9, align 8, !dbg !656
  %223 = getelementptr inbounds %struct.nn_atcp, ptr %222, i32 0, i32 0, !dbg !658
  %224 = load ptr, ptr %9, align 8, !dbg !659
  %225 = getelementptr inbounds %struct.nn_atcp, ptr %224, i32 0, i32 7, !dbg !660
  call void @nn_fsm_raise(ptr noundef %223, ptr noundef %225, i32 noundef 34232), !dbg !661
  %226 = load ptr, ptr %9, align 8, !dbg !662
  %227 = getelementptr inbounds %struct.nn_atcp, ptr %226, i32 0, i32 1, !dbg !663
  store i32 6, ptr %227, align 8, !dbg !664
  br label %245, !dbg !665

228:                                              ; preds = %219
  br label %229, !dbg !666

229:                                              ; preds = %228
  %230 = load ptr, ptr @stderr, align 8, !dbg !667
  %231 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 240), !dbg !667
  call void @nn_err_abort() #4, !dbg !667
  unreachable, !dbg !667

232:                                              ; No predecessors!
  br label %233, !dbg !671

233:                                              ; preds = %232
  br label %234, !dbg !671

234:                                              ; preds = %217, %233
  br label %235, !dbg !672

235:                                              ; preds = %234
  %236 = load ptr, ptr @stderr, align 8, !dbg !673
  %237 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 244), !dbg !673
  call void @nn_err_abort() #4, !dbg !673
  unreachable, !dbg !673

238:                                              ; No predecessors!
  br label %239, !dbg !677

239:                                              ; preds = %238
  br label %240, !dbg !677

240:                                              ; preds = %105, %239
  br label %241, !dbg !678

241:                                              ; preds = %240
  %242 = load ptr, ptr @stderr, align 8, !dbg !679
  %243 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 251), !dbg !679
  call void @nn_err_abort() #4, !dbg !679
  unreachable, !dbg !679

244:                                              ; No predecessors!
  br label %245, !dbg !683

245:                                              ; preds = %46, %65, %100, %113, %137, %179, %200, %221, %244
  ret void, !dbg !684
}

declare void @nn_usock_init(ptr noundef, i32 noundef, ptr noundef) #2

declare void @nn_stcp_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @nn_fsm_event_init(ptr noundef) #2

declare void @nn_list_item_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_atcp_term(ptr noundef %0) #0 !dbg !685 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !688, metadata !DIExpression()), !dbg !689
  br label %3, !dbg !690

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !691
  %5 = getelementptr inbounds %struct.nn_atcp, ptr %4, i32 0, i32 1, !dbg !691
  %6 = load i32, ptr %5, align 8, !dbg !691
  %7 = icmp eq i32 %6, 1, !dbg !691
  %8 = xor i1 %7, true, !dbg !691
  %9 = zext i1 %8 to i32, !dbg !691
  %10 = sext i32 %9 to i64, !dbg !691
  %11 = icmp ne i64 %10, 0, !dbg !691
  br i1 %11, label %12, label %15, !dbg !694

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !dbg !695
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 62), !dbg !695
  call void @nn_err_abort() #4, !dbg !695
  unreachable, !dbg !695

15:                                               ; preds = %3
  br label %16, !dbg !694

16:                                               ; preds = %15
  %17 = load ptr, ptr %2, align 8, !dbg !697
  %18 = getelementptr inbounds %struct.nn_atcp, ptr %17, i32 0, i32 8, !dbg !698
  call void @nn_list_item_term(ptr noundef %18), !dbg !699
  %19 = load ptr, ptr %2, align 8, !dbg !700
  %20 = getelementptr inbounds %struct.nn_atcp, ptr %19, i32 0, i32 7, !dbg !701
  call void @nn_fsm_event_term(ptr noundef %20), !dbg !702
  %21 = load ptr, ptr %2, align 8, !dbg !703
  %22 = getelementptr inbounds %struct.nn_atcp, ptr %21, i32 0, i32 6, !dbg !704
  call void @nn_fsm_event_term(ptr noundef %22), !dbg !705
  %23 = load ptr, ptr %2, align 8, !dbg !706
  %24 = getelementptr inbounds %struct.nn_atcp, ptr %23, i32 0, i32 5, !dbg !707
  call void @nn_stcp_term(ptr noundef %24), !dbg !708
  %25 = load ptr, ptr %2, align 8, !dbg !709
  %26 = getelementptr inbounds %struct.nn_atcp, ptr %25, i32 0, i32 2, !dbg !710
  call void @nn_usock_term(ptr noundef %26), !dbg !711
  %27 = load ptr, ptr %2, align 8, !dbg !712
  %28 = getelementptr inbounds %struct.nn_atcp, ptr %27, i32 0, i32 0, !dbg !713
  call void @nn_fsm_term(ptr noundef %28), !dbg !714
  ret void, !dbg !715
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_list_item_term(ptr noundef) #2

declare void @nn_fsm_event_term(ptr noundef) #2

declare void @nn_stcp_term(ptr noundef) #2

declare void @nn_usock_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_atcp_isidle(ptr noundef %0) #0 !dbg !716 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !719, metadata !DIExpression()), !dbg !720
  %3 = load ptr, ptr %2, align 8, !dbg !721
  %4 = getelementptr inbounds %struct.nn_atcp, ptr %3, i32 0, i32 0, !dbg !722
  %5 = call i32 @nn_fsm_isidle(ptr noundef %4), !dbg !723
  ret i32 %5, !dbg !724
}

declare i32 @nn_fsm_isidle(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_atcp_start(ptr noundef %0, ptr noundef %1) #0 !dbg !725 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !728, metadata !DIExpression()), !dbg !729
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !730, metadata !DIExpression()), !dbg !731
  br label %5, !dbg !732

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !dbg !733
  %7 = getelementptr inbounds %struct.nn_atcp, ptr %6, i32 0, i32 1, !dbg !733
  %8 = load i32, ptr %7, align 8, !dbg !733
  %9 = icmp eq i32 %8, 1, !dbg !733
  %10 = xor i1 %9, true, !dbg !733
  %11 = zext i1 %10 to i32, !dbg !733
  %12 = sext i32 %11 to i64, !dbg !733
  %13 = icmp ne i64 %12, 0, !dbg !733
  br i1 %13, label %14, label %17, !dbg !736

14:                                               ; preds = %5
  %15 = load ptr, ptr @stderr, align 8, !dbg !737
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 79), !dbg !737
  call void @nn_err_abort() #4, !dbg !737
  unreachable, !dbg !737

17:                                               ; preds = %5
  br label %18, !dbg !736

18:                                               ; preds = %17
  %19 = load ptr, ptr %4, align 8, !dbg !739
  %20 = load ptr, ptr %3, align 8, !dbg !740
  %21 = getelementptr inbounds %struct.nn_atcp, ptr %20, i32 0, i32 3, !dbg !741
  store ptr %19, ptr %21, align 8, !dbg !742
  %22 = load ptr, ptr %3, align 8, !dbg !743
  %23 = getelementptr inbounds %struct.nn_atcp, ptr %22, i32 0, i32 4, !dbg !744
  %24 = getelementptr inbounds %struct.nn_fsm_owner, ptr %23, i32 0, i32 0, !dbg !745
  store i32 3, ptr %24, align 8, !dbg !746
  %25 = load ptr, ptr %3, align 8, !dbg !747
  %26 = getelementptr inbounds %struct.nn_atcp, ptr %25, i32 0, i32 0, !dbg !748
  %27 = load ptr, ptr %3, align 8, !dbg !749
  %28 = getelementptr inbounds %struct.nn_atcp, ptr %27, i32 0, i32 4, !dbg !750
  %29 = getelementptr inbounds %struct.nn_fsm_owner, ptr %28, i32 0, i32 1, !dbg !751
  store ptr %26, ptr %29, align 8, !dbg !752
  %30 = load ptr, ptr %4, align 8, !dbg !753
  %31 = load ptr, ptr %3, align 8, !dbg !754
  %32 = getelementptr inbounds %struct.nn_atcp, ptr %31, i32 0, i32 4, !dbg !755
  call void @nn_usock_swap_owner(ptr noundef %30, ptr noundef %32), !dbg !756
  %33 = load ptr, ptr %3, align 8, !dbg !757
  %34 = getelementptr inbounds %struct.nn_atcp, ptr %33, i32 0, i32 0, !dbg !758
  call void @nn_fsm_start(ptr noundef %34), !dbg !759
  ret void, !dbg !760
}

declare void @nn_usock_swap_owner(ptr noundef, ptr noundef) #2

declare void @nn_fsm_start(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_atcp_stop(ptr noundef %0) #0 !dbg !761 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !762, metadata !DIExpression()), !dbg !763
  %3 = load ptr, ptr %2, align 8, !dbg !764
  %4 = getelementptr inbounds %struct.nn_atcp, ptr %3, i32 0, i32 0, !dbg !765
  call void @nn_fsm_stop(ptr noundef %4), !dbg !766
  ret void, !dbg !767
}

declare void @nn_fsm_stop(ptr noundef) #2

declare void @nn_stcp_stop(ptr noundef) #2

declare i32 @nn_stcp_isidle(ptr noundef) #2

declare void @nn_usock_stop(ptr noundef) #2

declare i32 @nn_usock_isidle(ptr noundef) #2

declare void @nn_fsm_stopped(ptr noundef, i32 noundef) #2

declare void @nn_usock_accept(ptr noundef, ptr noundef) #2

declare void @nn_fsm_raise(ptr noundef, ptr noundef, i32 noundef) #2

declare void @nn_usock_activate(ptr noundef) #2

declare void @nn_stcp_start(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!354, !355, !356, !357, !358, !359, !360}
!llvm.ident = !{!361}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/transports/tcp/atcp.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "77546c1430c3b180acdcb56433790924")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 34)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 28)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 25)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 2)
!27 = distinct !DICompileUnit(language: DW_LANG_C11, file: !28, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !29, globals: !353, splitDebugInlining: false, nameTableKind: None)
!28 = !DIFile(filename: "src/transports/tcp/atcp.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "77546c1430c3b180acdcb56433790924")
!29 = !{!30, !352}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_atcp", file: !32, line: 44, size: 12864, elements: !33)
!32 = !DIFile(filename: "./src/transports/tcp/atcp.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b417eb1b29da82fff98b8dac33745c14")
!33 = !{!34, !66, !67, !255, !256, !261, !349, !350, !351}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !31, file: !32, line: 47, baseType: !35, size: 640)
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
!66 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !31, file: !32, line: 48, baseType: !44, size: 32, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !31, file: !32, line: 51, baseType: !68, size: 4224, offset: 704)
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
!255 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !31, file: !32, line: 54, baseType: !254, size: 64, offset: 4928)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "listener_owner", scope: !31, file: !32, line: 55, baseType: !257, size: 128, offset: 4992)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_owner", file: !36, line: 61, size: 128, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !257, file: !36, line: 62, baseType: !44, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !257, file: !36, line: 63, baseType: !43, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "stcp", scope: !31, file: !32, line: 58, baseType: !262, size: 6976, offset: 5120)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_stcp", file: !263, line: 41, size: 6976, elements: !264)
!263 = !DIFile(filename: "./src/transports/tcp/stcp.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "f6f65c8822f9985e9560a60ac94ab206")
!264 = !{!265, !266, !267, !268, !340, !341, !342, !343, !344, !345, !346, !347, !348}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !262, file: !263, line: 44, baseType: !35, size: 640)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !262, file: !263, line: 45, baseType: !44, size: 32, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !262, file: !263, line: 48, baseType: !254, size: 64, offset: 704)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "streamhdr", scope: !262, file: !263, line: 51, baseType: !269, size: 3008, offset: 768)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_streamhdr", file: !270, line: 41, size: 3008, elements: !271)
!270 = !DIFile(filename: "./src/transports/tcp/../utils/streamhdr.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "7d060aeed02236eba444409cfc4451d2")
!271 = !{!272, !273, !274, !295, !296, !297, !335, !339}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !269, file: !270, line: 44, baseType: !35, size: 640)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !270, line: 45, baseType: !44, size: 32, offset: 640)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !269, file: !270, line: 48, baseType: !275, size: 1664, offset: 704)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timer", file: !276, line: 32, size: 1664, elements: !277)
!276 = !DIFile(filename: "./src/transports/tcp/../utils/../../aio/timer.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "36b8c8892aa99fc49b85b12a9caf893a")
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
!300 = !DIFile(filename: "./src/transports/tcp/../../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
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
!340 = !DIDerivedType(tag: DW_TAG_member, name: "usock_owner", scope: !262, file: !263, line: 54, baseType: !257, size: 128, offset: 3776)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !262, file: !263, line: 57, baseType: !299, size: 1536, offset: 3904)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !262, file: !263, line: 60, baseType: !44, size: 32, offset: 5440)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "inhdr", scope: !262, file: !263, line: 63, baseType: !336, size: 64, offset: 5472)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "inmsg", scope: !262, file: !263, line: 66, baseType: !313, size: 512, offset: 5536)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !262, file: !263, line: 69, baseType: !44, size: 32, offset: 6048)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "outhdr", scope: !262, file: !263, line: 72, baseType: !336, size: 64, offset: 6080)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "outmsg", scope: !262, file: !263, line: 75, baseType: !313, size: 512, offset: 6144)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !262, file: !263, line: 78, baseType: !54, size: 320, offset: 6656)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "accepted", scope: !31, file: !32, line: 61, baseType: !54, size: 320, offset: 12096)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !31, file: !32, line: 62, baseType: !54, size: 320, offset: 12416)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !31, file: !32, line: 65, baseType: !175, size: 128, offset: 12736)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!353 = !{!0, !7, !12, !17, !22}
!354 = !{i32 7, !"Dwarf Version", i32 5}
!355 = !{i32 2, !"Debug Info Version", i32 3}
!356 = !{i32 1, !"wchar_size", i32 4}
!357 = !{i32 8, !"PIC Level", i32 2}
!358 = !{i32 7, !"PIE Level", i32 2}
!359 = !{i32 7, !"uwtable", i32 2}
!360 = !{i32 7, !"frame-pointer", i32 2}
!361 = !{!"clang version 16.0.0"}
!362 = distinct !DISubprogram(name: "nn_atcp_init", scope: !2, file: !2, line: 45, type: !363, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !381)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !30, !44, !365, !43}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !300, line: 81, size: 128, elements: !367)
!367 = !{!368, !378}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !366, file: !300, line: 82, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase_vfptr", file: !300, line: 70, size: 128, elements: !372)
!372 = !{!373, !377}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !371, file: !300, line: 75, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !365}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !371, file: !300, line: 78, baseType: !374, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !366, file: !300, line: 83, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ep", file: !300, line: 83, flags: DIFlagFwdDecl)
!381 = !{}
!382 = !DILocalVariable(name: "self", arg: 1, scope: !362, file: !2, line: 45, type: !30)
!383 = !DILocation(line: 45, column: 36, scope: !362)
!384 = !DILocalVariable(name: "src", arg: 2, scope: !362, file: !2, line: 45, type: !44)
!385 = !DILocation(line: 45, column: 46, scope: !362)
!386 = !DILocalVariable(name: "epbase", arg: 3, scope: !362, file: !2, line: 46, type: !365)
!387 = !DILocation(line: 46, column: 23, scope: !362)
!388 = !DILocalVariable(name: "owner", arg: 4, scope: !362, file: !2, line: 46, type: !43)
!389 = !DILocation(line: 46, column: 46, scope: !362)
!390 = !DILocation(line: 48, column: 19, scope: !362)
!391 = !DILocation(line: 48, column: 25, scope: !362)
!392 = !DILocation(line: 48, column: 47, scope: !362)
!393 = !DILocation(line: 48, column: 52, scope: !362)
!394 = !DILocation(line: 48, column: 58, scope: !362)
!395 = !DILocation(line: 48, column: 5, scope: !362)
!396 = !DILocation(line: 49, column: 5, scope: !362)
!397 = !DILocation(line: 49, column: 11, scope: !362)
!398 = !DILocation(line: 49, column: 17, scope: !362)
!399 = !DILocation(line: 50, column: 21, scope: !362)
!400 = !DILocation(line: 50, column: 27, scope: !362)
!401 = !DILocation(line: 50, column: 54, scope: !362)
!402 = !DILocation(line: 50, column: 60, scope: !362)
!403 = !DILocation(line: 50, column: 5, scope: !362)
!404 = !DILocation(line: 51, column: 5, scope: !362)
!405 = !DILocation(line: 51, column: 11, scope: !362)
!406 = !DILocation(line: 51, column: 20, scope: !362)
!407 = !DILocation(line: 52, column: 5, scope: !362)
!408 = !DILocation(line: 52, column: 11, scope: !362)
!409 = !DILocation(line: 52, column: 26, scope: !362)
!410 = !DILocation(line: 52, column: 30, scope: !362)
!411 = !DILocation(line: 53, column: 5, scope: !362)
!412 = !DILocation(line: 53, column: 11, scope: !362)
!413 = !DILocation(line: 53, column: 26, scope: !362)
!414 = !DILocation(line: 53, column: 30, scope: !362)
!415 = !DILocation(line: 54, column: 20, scope: !362)
!416 = !DILocation(line: 54, column: 26, scope: !362)
!417 = !DILocation(line: 54, column: 50, scope: !362)
!418 = !DILocation(line: 54, column: 59, scope: !362)
!419 = !DILocation(line: 54, column: 65, scope: !362)
!420 = !DILocation(line: 54, column: 5, scope: !362)
!421 = !DILocation(line: 55, column: 25, scope: !362)
!422 = !DILocation(line: 55, column: 31, scope: !362)
!423 = !DILocation(line: 55, column: 5, scope: !362)
!424 = !DILocation(line: 56, column: 25, scope: !362)
!425 = !DILocation(line: 56, column: 31, scope: !362)
!426 = !DILocation(line: 56, column: 5, scope: !362)
!427 = !DILocation(line: 57, column: 25, scope: !362)
!428 = !DILocation(line: 57, column: 31, scope: !362)
!429 = !DILocation(line: 57, column: 5, scope: !362)
!430 = !DILocation(line: 58, column: 1, scope: !362)
!431 = distinct !DISubprogram(name: "nn_atcp_handler", scope: !2, file: !2, line: 96, type: !41, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !27, retainedNodes: !381)
!432 = !DILocalVariable(name: "self", arg: 1, scope: !431, file: !2, line: 96, type: !43)
!433 = !DILocation(line: 96, column: 45, scope: !431)
!434 = !DILocalVariable(name: "src", arg: 2, scope: !431, file: !2, line: 96, type: !44)
!435 = !DILocation(line: 96, column: 55, scope: !431)
!436 = !DILocalVariable(name: "type", arg: 3, scope: !431, file: !2, line: 96, type: !44)
!437 = !DILocation(line: 96, column: 64, scope: !431)
!438 = !DILocalVariable(name: "srcptr", arg: 4, scope: !431, file: !2, line: 97, type: !45)
!439 = !DILocation(line: 97, column: 11, scope: !431)
!440 = !DILocalVariable(name: "atcp", scope: !431, file: !2, line: 99, type: !30)
!441 = !DILocation(line: 99, column: 21, scope: !431)
!442 = !DILocation(line: 101, column: 12, scope: !431)
!443 = !DILocation(line: 101, column: 10, scope: !431)
!444 = !DILocation(line: 106, column: 9, scope: !445)
!445 = distinct !DILexicalBlock(scope: !431, file: !2, line: 106, column: 9)
!446 = !DILocation(line: 0, scope: !445)
!447 = !DILocation(line: 106, column: 9, scope: !431)
!448 = !DILocation(line: 107, column: 24, scope: !449)
!449 = distinct !DILexicalBlock(scope: !445, file: !2, line: 106, column: 64)
!450 = !DILocation(line: 107, column: 30, scope: !449)
!451 = !DILocation(line: 107, column: 9, scope: !449)
!452 = !DILocation(line: 108, column: 9, scope: !449)
!453 = !DILocation(line: 108, column: 15, scope: !449)
!454 = !DILocation(line: 108, column: 21, scope: !449)
!455 = !DILocation(line: 109, column: 5, scope: !449)
!456 = !DILocation(line: 110, column: 9, scope: !457)
!457 = distinct !DILexicalBlock(scope: !431, file: !2, line: 110, column: 9)
!458 = !DILocation(line: 110, column: 9, scope: !431)
!459 = !DILocation(line: 111, column: 31, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !2, line: 111, column: 13)
!461 = distinct !DILexicalBlock(scope: !457, file: !2, line: 110, column: 69)
!462 = !DILocation(line: 111, column: 37, scope: !460)
!463 = !DILocation(line: 111, column: 14, scope: !460)
!464 = !DILocation(line: 111, column: 13, scope: !461)
!465 = !DILocation(line: 112, column: 13, scope: !460)
!466 = !DILocation(line: 113, column: 25, scope: !461)
!467 = !DILocation(line: 113, column: 31, scope: !461)
!468 = !DILocation(line: 113, column: 9, scope: !461)
!469 = !DILocation(line: 114, column: 9, scope: !461)
!470 = !DILocation(line: 114, column: 15, scope: !461)
!471 = !DILocation(line: 114, column: 21, scope: !461)
!472 = !DILocation(line: 115, column: 5, scope: !461)
!473 = !DILocation(line: 116, column: 9, scope: !474)
!474 = distinct !DILexicalBlock(scope: !431, file: !2, line: 116, column: 9)
!475 = !DILocation(line: 116, column: 9, scope: !431)
!476 = !DILocation(line: 117, column: 32, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !2, line: 117, column: 13)
!478 = distinct !DILexicalBlock(scope: !474, file: !2, line: 116, column: 58)
!479 = !DILocation(line: 117, column: 38, scope: !477)
!480 = !DILocation(line: 117, column: 14, scope: !477)
!481 = !DILocation(line: 117, column: 13, scope: !478)
!482 = !DILocation(line: 118, column: 13, scope: !477)
!483 = !DILocation(line: 119, column: 12, scope: !484)
!484 = distinct !DILexicalBlock(scope: !478, file: !2, line: 119, column: 12)
!485 = !DILocation(line: 119, column: 18, scope: !484)
!486 = !DILocation(line: 119, column: 12, scope: !478)
!487 = !DILocation(line: 120, column: 13, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !2, line: 119, column: 28)
!489 = !DILocation(line: 120, column: 13, scope: !490)
!490 = distinct !DILexicalBlock(scope: !491, file: !2, line: 120, column: 13)
!491 = distinct !DILexicalBlock(scope: !488, file: !2, line: 120, column: 13)
!492 = !DILocation(line: 120, column: 13, scope: !491)
!493 = !DILocation(line: 120, column: 13, scope: !494)
!494 = distinct !DILexicalBlock(scope: !490, file: !2, line: 120, column: 13)
!495 = !DILocation(line: 121, column: 34, scope: !488)
!496 = !DILocation(line: 121, column: 40, scope: !488)
!497 = !DILocation(line: 121, column: 51, scope: !488)
!498 = !DILocation(line: 121, column: 57, scope: !488)
!499 = !DILocation(line: 121, column: 13, scope: !488)
!500 = !DILocation(line: 122, column: 13, scope: !488)
!501 = !DILocation(line: 122, column: 19, scope: !488)
!502 = !DILocation(line: 122, column: 28, scope: !488)
!503 = !DILocation(line: 123, column: 13, scope: !488)
!504 = !DILocation(line: 123, column: 19, scope: !488)
!505 = !DILocation(line: 123, column: 34, scope: !488)
!506 = !DILocation(line: 123, column: 38, scope: !488)
!507 = !DILocation(line: 124, column: 13, scope: !488)
!508 = !DILocation(line: 124, column: 19, scope: !488)
!509 = !DILocation(line: 124, column: 34, scope: !488)
!510 = !DILocation(line: 124, column: 38, scope: !488)
!511 = !DILocation(line: 125, column: 9, scope: !488)
!512 = !DILocation(line: 126, column: 9, scope: !478)
!513 = !DILocation(line: 126, column: 15, scope: !478)
!514 = !DILocation(line: 126, column: 21, scope: !478)
!515 = !DILocation(line: 127, column: 26, scope: !478)
!516 = !DILocation(line: 127, column: 32, scope: !478)
!517 = !DILocation(line: 127, column: 9, scope: !478)
!518 = !DILocation(line: 128, column: 9, scope: !478)
!519 = !DILocation(line: 131, column: 13, scope: !431)
!520 = !DILocation(line: 131, column: 19, scope: !431)
!521 = !DILocation(line: 131, column: 5, scope: !431)
!522 = !DILocation(line: 138, column: 17, scope: !523)
!523 = distinct !DILexicalBlock(scope: !431, file: !2, line: 131, column: 26)
!524 = !DILocation(line: 138, column: 9, scope: !523)
!525 = !DILocation(line: 141, column: 21, scope: !526)
!526 = distinct !DILexicalBlock(scope: !523, file: !2, line: 138, column: 22)
!527 = !DILocation(line: 141, column: 13, scope: !526)
!528 = !DILocation(line: 143, column: 35, scope: !529)
!529 = distinct !DILexicalBlock(scope: !526, file: !2, line: 141, column: 27)
!530 = !DILocation(line: 143, column: 41, scope: !529)
!531 = !DILocation(line: 143, column: 48, scope: !529)
!532 = !DILocation(line: 143, column: 54, scope: !529)
!533 = !DILocation(line: 143, column: 17, scope: !529)
!534 = !DILocation(line: 144, column: 17, scope: !529)
!535 = !DILocation(line: 144, column: 23, scope: !529)
!536 = !DILocation(line: 144, column: 29, scope: !529)
!537 = !DILocation(line: 145, column: 17, scope: !529)
!538 = !DILocation(line: 147, column: 17, scope: !529)
!539 = !DILocation(line: 147, column: 17, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !2, line: 147, column: 17)
!541 = distinct !DILexicalBlock(scope: !542, file: !2, line: 147, column: 17)
!542 = distinct !DILexicalBlock(scope: !529, file: !2, line: 147, column: 17)
!543 = !DILocation(line: 148, column: 13, scope: !529)
!544 = !DILocation(line: 151, column: 13, scope: !526)
!545 = !DILocation(line: 151, column: 13, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !2, line: 151, column: 13)
!547 = distinct !DILexicalBlock(scope: !548, file: !2, line: 151, column: 13)
!548 = distinct !DILexicalBlock(scope: !526, file: !2, line: 151, column: 13)
!549 = !DILocation(line: 152, column: 9, scope: !526)
!550 = !DILocation(line: 159, column: 17, scope: !523)
!551 = !DILocation(line: 159, column: 9, scope: !523)
!552 = !DILocation(line: 162, column: 21, scope: !553)
!553 = distinct !DILexicalBlock(scope: !523, file: !2, line: 159, column: 22)
!554 = !DILocation(line: 162, column: 13, scope: !553)
!555 = !DILocation(line: 166, column: 38, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !2, line: 162, column: 27)
!557 = !DILocation(line: 166, column: 44, scope: !556)
!558 = !DILocation(line: 166, column: 55, scope: !556)
!559 = !DILocation(line: 166, column: 61, scope: !556)
!560 = !DILocation(line: 166, column: 17, scope: !556)
!561 = !DILocation(line: 167, column: 17, scope: !556)
!562 = !DILocation(line: 167, column: 23, scope: !556)
!563 = !DILocation(line: 167, column: 32, scope: !556)
!564 = !DILocation(line: 168, column: 17, scope: !556)
!565 = !DILocation(line: 168, column: 23, scope: !556)
!566 = !DILocation(line: 168, column: 38, scope: !556)
!567 = !DILocation(line: 168, column: 42, scope: !556)
!568 = !DILocation(line: 169, column: 17, scope: !556)
!569 = !DILocation(line: 169, column: 23, scope: !556)
!570 = !DILocation(line: 169, column: 38, scope: !556)
!571 = !DILocation(line: 169, column: 42, scope: !556)
!572 = !DILocation(line: 170, column: 32, scope: !556)
!573 = !DILocation(line: 170, column: 38, scope: !556)
!574 = !DILocation(line: 170, column: 44, scope: !556)
!575 = !DILocation(line: 170, column: 50, scope: !556)
!576 = !DILocation(line: 170, column: 17, scope: !556)
!577 = !DILocation(line: 173, column: 37, scope: !556)
!578 = !DILocation(line: 173, column: 43, scope: !556)
!579 = !DILocation(line: 173, column: 17, scope: !556)
!580 = !DILocation(line: 174, column: 33, scope: !556)
!581 = !DILocation(line: 174, column: 39, scope: !556)
!582 = !DILocation(line: 174, column: 46, scope: !556)
!583 = !DILocation(line: 174, column: 52, scope: !556)
!584 = !DILocation(line: 174, column: 17, scope: !556)
!585 = !DILocation(line: 175, column: 17, scope: !556)
!586 = !DILocation(line: 175, column: 23, scope: !556)
!587 = !DILocation(line: 175, column: 29, scope: !556)
!588 = !DILocation(line: 177, column: 17, scope: !556)
!589 = !DILocation(line: 180, column: 17, scope: !556)
!590 = !DILocation(line: 180, column: 17, scope: !591)
!591 = distinct !DILexicalBlock(scope: !592, file: !2, line: 180, column: 17)
!592 = distinct !DILexicalBlock(scope: !593, file: !2, line: 180, column: 17)
!593 = distinct !DILexicalBlock(scope: !556, file: !2, line: 180, column: 17)
!594 = !DILocation(line: 181, column: 13, scope: !556)
!595 = !DILocation(line: 184, column: 13, scope: !553)
!596 = !DILocation(line: 184, column: 13, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !2, line: 184, column: 13)
!598 = distinct !DILexicalBlock(scope: !599, file: !2, line: 184, column: 13)
!599 = distinct !DILexicalBlock(scope: !553, file: !2, line: 184, column: 13)
!600 = !DILocation(line: 185, column: 9, scope: !553)
!601 = !DILocation(line: 191, column: 17, scope: !523)
!602 = !DILocation(line: 191, column: 9, scope: !523)
!603 = !DILocation(line: 194, column: 21, scope: !604)
!604 = distinct !DILexicalBlock(scope: !523, file: !2, line: 191, column: 22)
!605 = !DILocation(line: 194, column: 13, scope: !604)
!606 = !DILocation(line: 196, column: 32, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !2, line: 194, column: 27)
!608 = !DILocation(line: 196, column: 38, scope: !607)
!609 = !DILocation(line: 196, column: 17, scope: !607)
!610 = !DILocation(line: 197, column: 17, scope: !607)
!611 = !DILocation(line: 197, column: 23, scope: !607)
!612 = !DILocation(line: 197, column: 29, scope: !607)
!613 = !DILocation(line: 198, column: 17, scope: !607)
!614 = !DILocation(line: 200, column: 17, scope: !607)
!615 = !DILocation(line: 200, column: 17, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !2, line: 200, column: 17)
!617 = distinct !DILexicalBlock(scope: !618, file: !2, line: 200, column: 17)
!618 = distinct !DILexicalBlock(scope: !607, file: !2, line: 200, column: 17)
!619 = !DILocation(line: 201, column: 13, scope: !607)
!620 = !DILocation(line: 204, column: 13, scope: !604)
!621 = !DILocation(line: 204, column: 13, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !2, line: 204, column: 13)
!623 = distinct !DILexicalBlock(scope: !624, file: !2, line: 204, column: 13)
!624 = distinct !DILexicalBlock(scope: !604, file: !2, line: 204, column: 13)
!625 = !DILocation(line: 205, column: 9, scope: !604)
!626 = !DILocation(line: 211, column: 17, scope: !523)
!627 = !DILocation(line: 211, column: 9, scope: !523)
!628 = !DILocation(line: 214, column: 21, scope: !629)
!629 = distinct !DILexicalBlock(scope: !523, file: !2, line: 211, column: 22)
!630 = !DILocation(line: 214, column: 13, scope: !629)
!631 = !DILocation(line: 216, column: 33, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !2, line: 214, column: 27)
!633 = !DILocation(line: 216, column: 39, scope: !632)
!634 = !DILocation(line: 216, column: 17, scope: !632)
!635 = !DILocation(line: 217, column: 17, scope: !632)
!636 = !DILocation(line: 217, column: 23, scope: !632)
!637 = !DILocation(line: 217, column: 29, scope: !632)
!638 = !DILocation(line: 218, column: 17, scope: !632)
!639 = !DILocation(line: 220, column: 17, scope: !632)
!640 = !DILocation(line: 220, column: 17, scope: !641)
!641 = distinct !DILexicalBlock(scope: !642, file: !2, line: 220, column: 17)
!642 = distinct !DILexicalBlock(scope: !643, file: !2, line: 220, column: 17)
!643 = distinct !DILexicalBlock(scope: !632, file: !2, line: 220, column: 17)
!644 = !DILocation(line: 221, column: 13, scope: !632)
!645 = !DILocation(line: 224, column: 13, scope: !629)
!646 = !DILocation(line: 224, column: 13, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !2, line: 224, column: 13)
!648 = distinct !DILexicalBlock(scope: !649, file: !2, line: 224, column: 13)
!649 = distinct !DILexicalBlock(scope: !629, file: !2, line: 224, column: 13)
!650 = !DILocation(line: 225, column: 9, scope: !629)
!651 = !DILocation(line: 231, column: 17, scope: !523)
!652 = !DILocation(line: 231, column: 9, scope: !523)
!653 = !DILocation(line: 234, column: 21, scope: !654)
!654 = distinct !DILexicalBlock(scope: !523, file: !2, line: 231, column: 22)
!655 = !DILocation(line: 234, column: 13, scope: !654)
!656 = !DILocation(line: 236, column: 32, scope: !657)
!657 = distinct !DILexicalBlock(scope: !654, file: !2, line: 234, column: 27)
!658 = !DILocation(line: 236, column: 38, scope: !657)
!659 = !DILocation(line: 236, column: 44, scope: !657)
!660 = !DILocation(line: 236, column: 50, scope: !657)
!661 = !DILocation(line: 236, column: 17, scope: !657)
!662 = !DILocation(line: 237, column: 17, scope: !657)
!663 = !DILocation(line: 237, column: 23, scope: !657)
!664 = !DILocation(line: 237, column: 29, scope: !657)
!665 = !DILocation(line: 238, column: 17, scope: !657)
!666 = !DILocation(line: 240, column: 17, scope: !657)
!667 = !DILocation(line: 240, column: 17, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !2, line: 240, column: 17)
!669 = distinct !DILexicalBlock(scope: !670, file: !2, line: 240, column: 17)
!670 = distinct !DILexicalBlock(scope: !657, file: !2, line: 240, column: 17)
!671 = !DILocation(line: 241, column: 13, scope: !657)
!672 = !DILocation(line: 244, column: 13, scope: !654)
!673 = !DILocation(line: 244, column: 13, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !2, line: 244, column: 13)
!675 = distinct !DILexicalBlock(scope: !676, file: !2, line: 244, column: 13)
!676 = distinct !DILexicalBlock(scope: !654, file: !2, line: 244, column: 13)
!677 = !DILocation(line: 245, column: 9, scope: !654)
!678 = !DILocation(line: 251, column: 9, scope: !523)
!679 = !DILocation(line: 251, column: 9, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !2, line: 251, column: 9)
!681 = distinct !DILexicalBlock(scope: !682, file: !2, line: 251, column: 9)
!682 = distinct !DILexicalBlock(scope: !523, file: !2, line: 251, column: 9)
!683 = !DILocation(line: 252, column: 5, scope: !523)
!684 = !DILocation(line: 253, column: 1, scope: !431)
!685 = distinct !DISubprogram(name: "nn_atcp_term", scope: !2, file: !2, line: 60, type: !686, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !381)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !30}
!688 = !DILocalVariable(name: "self", arg: 1, scope: !685, file: !2, line: 60, type: !30)
!689 = !DILocation(line: 60, column: 36, scope: !685)
!690 = !DILocation(line: 62, column: 5, scope: !685)
!691 = !DILocation(line: 62, column: 5, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !2, line: 62, column: 5)
!693 = distinct !DILexicalBlock(scope: !685, file: !2, line: 62, column: 5)
!694 = !DILocation(line: 62, column: 5, scope: !693)
!695 = !DILocation(line: 62, column: 5, scope: !696)
!696 = distinct !DILexicalBlock(scope: !692, file: !2, line: 62, column: 5)
!697 = !DILocation(line: 64, column: 25, scope: !685)
!698 = !DILocation(line: 64, column: 31, scope: !685)
!699 = !DILocation(line: 64, column: 5, scope: !685)
!700 = !DILocation(line: 65, column: 25, scope: !685)
!701 = !DILocation(line: 65, column: 31, scope: !685)
!702 = !DILocation(line: 65, column: 5, scope: !685)
!703 = !DILocation(line: 66, column: 25, scope: !685)
!704 = !DILocation(line: 66, column: 31, scope: !685)
!705 = !DILocation(line: 66, column: 5, scope: !685)
!706 = !DILocation(line: 67, column: 20, scope: !685)
!707 = !DILocation(line: 67, column: 26, scope: !685)
!708 = !DILocation(line: 67, column: 5, scope: !685)
!709 = !DILocation(line: 68, column: 21, scope: !685)
!710 = !DILocation(line: 68, column: 27, scope: !685)
!711 = !DILocation(line: 68, column: 5, scope: !685)
!712 = !DILocation(line: 69, column: 19, scope: !685)
!713 = !DILocation(line: 69, column: 25, scope: !685)
!714 = !DILocation(line: 69, column: 5, scope: !685)
!715 = !DILocation(line: 70, column: 1, scope: !685)
!716 = distinct !DISubprogram(name: "nn_atcp_isidle", scope: !2, file: !2, line: 72, type: !717, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !381)
!717 = !DISubroutineType(types: !718)
!718 = !{!44, !30}
!719 = !DILocalVariable(name: "self", arg: 1, scope: !716, file: !2, line: 72, type: !30)
!720 = !DILocation(line: 72, column: 37, scope: !716)
!721 = !DILocation(line: 74, column: 28, scope: !716)
!722 = !DILocation(line: 74, column: 34, scope: !716)
!723 = !DILocation(line: 74, column: 12, scope: !716)
!724 = !DILocation(line: 74, column: 5, scope: !716)
!725 = distinct !DISubprogram(name: "nn_atcp_start", scope: !2, file: !2, line: 77, type: !726, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !381)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !30, !254}
!728 = !DILocalVariable(name: "self", arg: 1, scope: !725, file: !2, line: 77, type: !30)
!729 = !DILocation(line: 77, column: 37, scope: !725)
!730 = !DILocalVariable(name: "listener", arg: 2, scope: !725, file: !2, line: 77, type: !254)
!731 = !DILocation(line: 77, column: 60, scope: !725)
!732 = !DILocation(line: 79, column: 5, scope: !725)
!733 = !DILocation(line: 79, column: 5, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !2, line: 79, column: 5)
!735 = distinct !DILexicalBlock(scope: !725, file: !2, line: 79, column: 5)
!736 = !DILocation(line: 79, column: 5, scope: !735)
!737 = !DILocation(line: 79, column: 5, scope: !738)
!738 = distinct !DILexicalBlock(scope: !734, file: !2, line: 79, column: 5)
!739 = !DILocation(line: 82, column: 22, scope: !725)
!740 = !DILocation(line: 82, column: 5, scope: !725)
!741 = !DILocation(line: 82, column: 11, scope: !725)
!742 = !DILocation(line: 82, column: 20, scope: !725)
!743 = !DILocation(line: 83, column: 5, scope: !725)
!744 = !DILocation(line: 83, column: 11, scope: !725)
!745 = !DILocation(line: 83, column: 26, scope: !725)
!746 = !DILocation(line: 83, column: 30, scope: !725)
!747 = !DILocation(line: 84, column: 33, scope: !725)
!748 = !DILocation(line: 84, column: 39, scope: !725)
!749 = !DILocation(line: 84, column: 5, scope: !725)
!750 = !DILocation(line: 84, column: 11, scope: !725)
!751 = !DILocation(line: 84, column: 26, scope: !725)
!752 = !DILocation(line: 84, column: 30, scope: !725)
!753 = !DILocation(line: 85, column: 26, scope: !725)
!754 = !DILocation(line: 85, column: 37, scope: !725)
!755 = !DILocation(line: 85, column: 43, scope: !725)
!756 = !DILocation(line: 85, column: 5, scope: !725)
!757 = !DILocation(line: 88, column: 20, scope: !725)
!758 = !DILocation(line: 88, column: 26, scope: !725)
!759 = !DILocation(line: 88, column: 5, scope: !725)
!760 = !DILocation(line: 89, column: 1, scope: !725)
!761 = distinct !DISubprogram(name: "nn_atcp_stop", scope: !2, file: !2, line: 91, type: !686, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !381)
!762 = !DILocalVariable(name: "self", arg: 1, scope: !761, file: !2, line: 91, type: !30)
!763 = !DILocation(line: 91, column: 36, scope: !761)
!764 = !DILocation(line: 93, column: 19, scope: !761)
!765 = !DILocation(line: 93, column: 25, scope: !761)
!766 = !DILocation(line: 93, column: 5, scope: !761)
!767 = !DILocation(line: 94, column: 1, scope: !761)
