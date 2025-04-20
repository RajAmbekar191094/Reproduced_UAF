; ModuleID = './src/protocols/reqrep/req.c'
source_filename = "./src/protocols/reqrep/req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_req = type { %struct.nn_xreq, %struct.nn_fsm, i32, i32, %struct.nn_msg, %struct.nn_msg, %struct.nn_timer, i32 }
%struct.nn_xreq = type { %struct.nn_sockbase, %struct.nn_lb, %struct.nn_fq }
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_lb = type { %struct.nn_priolist }
%struct.nn_priolist = type { [16 x %struct.nn_priolist_slot], i32 }
%struct.nn_priolist_slot = type { %struct.nn_list, ptr }
%struct.nn_list = type { ptr, ptr }
%struct.nn_fq = type { %struct.nn_priolist }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }
%struct.nn_timer = type { %struct.nn_fsm, i32, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_timer, %struct.nn_fsm_event, ptr, i32 }
%struct.nn_worker_task = type { ptr, %struct.nn_queue_item }
%struct.nn_worker_timer = type { ptr, %struct.nn_timerset_hndl }
%struct.nn_timerset_hndl = type { %struct.nn_list_item, i64 }

@nn_req_socktype_struct = internal global %struct.nn_socktype { i32 1, i32 48, i32 0, ptr @nn_req_create, ptr @nn_xreq_ispeer, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !0
@nn_req_socktype = dso_local global ptr @nn_req_socktype_struct, align 8, !dbg !296
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !314
@.str.1 = private unnamed_addr constant [29 x i8] c"./src/protocols/reqrep/req.c\00", align 1, !dbg !319
@nn_req_sockbase_vfptr = internal constant %struct.nn_sockbase_vfptr { ptr @nn_req_stop, ptr @nn_req_destroy, ptr @nn_xreq_add, ptr @nn_xreq_rm, ptr @nn_req_in, ptr @nn_req_out, ptr @nn_req_events, ptr @nn_req_send, ptr @nn_req_recv, ptr @nn_req_setopt, ptr @nn_req_getopt }, align 8, !dbg !339
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !324
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !329
@.str.4 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !334
@.str.5 = private unnamed_addr constant [34 x i8] c"nn_chunkref_size (&msg->hdr) == 0\00", align 1, !dbg !341

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_req_create(ptr noundef %0, ptr noundef %1) #0 !dbg !354 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !356, metadata !DIExpression()), !dbg !357
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !358, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.declare(metadata ptr %5, metadata !360, metadata !DIExpression()), !dbg !361
  %6 = call ptr @nn_alloc_(i64 noundef 1232), !dbg !362
  store ptr %6, ptr %5, align 8, !dbg !363
  br label %7, !dbg !364

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !365
  %9 = icmp ne ptr %8, null, !dbg !365
  %10 = xor i1 %9, true, !dbg !365
  %11 = zext i1 %10 to i32, !dbg !365
  %12 = sext i32 %11 to i64, !dbg !365
  %13 = icmp ne i64 %12, 0, !dbg !365
  br i1 %13, label %14, label %17, !dbg !368

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !369
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 655), !dbg !369
  call void @nn_err_abort() #4, !dbg !369
  unreachable, !dbg !369

17:                                               ; preds = %7
  br label %18, !dbg !368

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !371
  %20 = load ptr, ptr %3, align 8, !dbg !372
  call void @nn_req_init(ptr noundef %19, ptr noundef @nn_req_sockbase_vfptr, ptr noundef %20), !dbg !373
  %21 = load ptr, ptr %5, align 8, !dbg !374
  %22 = getelementptr inbounds %struct.nn_req, ptr %21, i32 0, i32 0, !dbg !375
  %23 = getelementptr inbounds %struct.nn_xreq, ptr %22, i32 0, i32 0, !dbg !376
  %24 = load ptr, ptr %4, align 8, !dbg !377
  store ptr %23, ptr %24, align 8, !dbg !378
  ret i32 0, !dbg !379
}

declare i32 @nn_xreq_ispeer(i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare ptr @nn_alloc_(i64 noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_req_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !380 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !383, metadata !DIExpression()), !dbg !384
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !385, metadata !DIExpression()), !dbg !386
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !387, metadata !DIExpression()), !dbg !388
  %7 = load ptr, ptr %4, align 8, !dbg !389
  %8 = getelementptr inbounds %struct.nn_req, ptr %7, i32 0, i32 0, !dbg !390
  %9 = load ptr, ptr %5, align 8, !dbg !391
  %10 = load ptr, ptr %6, align 8, !dbg !392
  call void @nn_xreq_init(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !393
  %11 = load ptr, ptr %4, align 8, !dbg !394
  %12 = getelementptr inbounds %struct.nn_req, ptr %11, i32 0, i32 1, !dbg !395
  %13 = load ptr, ptr %4, align 8, !dbg !396
  %14 = getelementptr inbounds %struct.nn_req, ptr %13, i32 0, i32 0, !dbg !397
  %15 = getelementptr inbounds %struct.nn_xreq, ptr %14, i32 0, i32 0, !dbg !398
  %16 = call ptr @nn_sockbase_getctx(ptr noundef %15), !dbg !399
  call void @nn_fsm_init_root(ptr noundef %12, ptr noundef @nn_req_handler, ptr noundef %16), !dbg !400
  %17 = load ptr, ptr %4, align 8, !dbg !401
  %18 = getelementptr inbounds %struct.nn_req, ptr %17, i32 0, i32 2, !dbg !402
  store i32 1, ptr %18, align 8, !dbg !403
  %19 = load ptr, ptr %4, align 8, !dbg !404
  %20 = getelementptr inbounds %struct.nn_req, ptr %19, i32 0, i32 3, !dbg !405
  call void @nn_random_generate(ptr noundef %20, i64 noundef 4), !dbg !406
  %21 = load ptr, ptr %4, align 8, !dbg !407
  %22 = getelementptr inbounds %struct.nn_req, ptr %21, i32 0, i32 4, !dbg !408
  call void @nn_msg_init(ptr noundef %22, i64 noundef 0), !dbg !409
  %23 = load ptr, ptr %4, align 8, !dbg !410
  %24 = getelementptr inbounds %struct.nn_req, ptr %23, i32 0, i32 5, !dbg !411
  call void @nn_msg_init(ptr noundef %24, i64 noundef 0), !dbg !412
  %25 = load ptr, ptr %4, align 8, !dbg !413
  %26 = getelementptr inbounds %struct.nn_req, ptr %25, i32 0, i32 6, !dbg !414
  %27 = load ptr, ptr %4, align 8, !dbg !415
  %28 = getelementptr inbounds %struct.nn_req, ptr %27, i32 0, i32 1, !dbg !416
  call void @nn_timer_init(ptr noundef %26, i32 noundef 1, ptr noundef %28), !dbg !417
  %29 = load ptr, ptr %4, align 8, !dbg !418
  %30 = getelementptr inbounds %struct.nn_req, ptr %29, i32 0, i32 7, !dbg !419
  store i32 60000, ptr %30, align 8, !dbg !420
  %31 = load ptr, ptr %4, align 8, !dbg !421
  %32 = getelementptr inbounds %struct.nn_req, ptr %31, i32 0, i32 1, !dbg !422
  call void @nn_fsm_start(ptr noundef %32), !dbg !423
  ret void, !dbg !424
}

declare void @nn_xreq_init(ptr noundef, ptr noundef, ptr noundef) #1

declare void @nn_fsm_init_root(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_req_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !425 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !426, metadata !DIExpression()), !dbg !427
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !428, metadata !DIExpression()), !dbg !429
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !430, metadata !DIExpression()), !dbg !431
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata ptr %9, metadata !434, metadata !DIExpression()), !dbg !435
  %10 = load ptr, ptr %5, align 8, !dbg !436
  %11 = icmp ne ptr %10, null, !dbg !436
  br i1 %11, label %12, label %15, !dbg !436

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8, !dbg !436
  %14 = getelementptr inbounds i8, ptr %13, i64 -800, !dbg !436
  br label %16, !dbg !436

15:                                               ; preds = %4
  br label %16, !dbg !436

16:                                               ; preds = %15, %12
  %17 = phi ptr [ %14, %12 ], [ null, %15 ], !dbg !436
  store ptr %17, ptr %9, align 8, !dbg !437
  %18 = load i32, ptr %6, align 4, !dbg !438
  %19 = icmp eq i32 %18, -2, !dbg !438
  br i1 %19, label %20, label %23, !dbg !438

20:                                               ; preds = %16
  %21 = load i32, ptr %7, align 4, !dbg !438
  %22 = icmp eq i32 %21, -3, !dbg !438
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i1 [ false, %16 ], [ %22, %20 ], !dbg !440
  %25 = zext i1 %24 to i32, !dbg !438
  %26 = sext i32 %25 to i64, !dbg !438
  %27 = icmp ne i64 %26, 0, !dbg !438
  br i1 %27, label %28, label %33, !dbg !441

28:                                               ; preds = %23
  %29 = load ptr, ptr %9, align 8, !dbg !442
  %30 = getelementptr inbounds %struct.nn_req, ptr %29, i32 0, i32 6, !dbg !444
  call void @nn_timer_stop(ptr noundef %30), !dbg !445
  %31 = load ptr, ptr %9, align 8, !dbg !446
  %32 = getelementptr inbounds %struct.nn_req, ptr %31, i32 0, i32 2, !dbg !447
  store i32 9, ptr %32, align 8, !dbg !448
  br label %33, !dbg !449

33:                                               ; preds = %28, %23
  %34 = load ptr, ptr %9, align 8, !dbg !450
  %35 = getelementptr inbounds %struct.nn_req, ptr %34, i32 0, i32 2, !dbg !450
  %36 = load i32, ptr %35, align 8, !dbg !450
  %37 = icmp eq i32 %36, 9, !dbg !450
  %38 = zext i1 %37 to i32, !dbg !450
  %39 = sext i32 %38 to i64, !dbg !450
  %40 = icmp ne i64 %39, 0, !dbg !450
  br i1 %40, label %41, label %55, !dbg !452

41:                                               ; preds = %33
  %42 = load ptr, ptr %9, align 8, !dbg !453
  %43 = getelementptr inbounds %struct.nn_req, ptr %42, i32 0, i32 6, !dbg !456
  %44 = call i32 @nn_timer_isidle(ptr noundef %43), !dbg !457
  %45 = icmp ne i32 %44, 0, !dbg !457
  br i1 %45, label %47, label %46, !dbg !458

46:                                               ; preds = %41
  br label %270, !dbg !459

47:                                               ; preds = %41
  %48 = load ptr, ptr %9, align 8, !dbg !460
  %49 = getelementptr inbounds %struct.nn_req, ptr %48, i32 0, i32 2, !dbg !461
  store i32 1, ptr %49, align 8, !dbg !462
  %50 = load ptr, ptr %9, align 8, !dbg !463
  %51 = getelementptr inbounds %struct.nn_req, ptr %50, i32 0, i32 1, !dbg !464
  call void @nn_fsm_stopped_noevent(ptr noundef %51), !dbg !465
  %52 = load ptr, ptr %9, align 8, !dbg !466
  %53 = getelementptr inbounds %struct.nn_req, ptr %52, i32 0, i32 0, !dbg !467
  %54 = getelementptr inbounds %struct.nn_xreq, ptr %53, i32 0, i32 0, !dbg !468
  call void @nn_sockbase_stopped(ptr noundef %54), !dbg !469
  br label %270, !dbg !470

55:                                               ; preds = %33
  %56 = load ptr, ptr %9, align 8, !dbg !471
  %57 = getelementptr inbounds %struct.nn_req, ptr %56, i32 0, i32 2, !dbg !472
  %58 = load i32, ptr %57, align 8, !dbg !472
  switch i32 %58, label %265 [
    i32 1, label %59
    i32 2, label %78
    i32 3, label %96
    i32 4, label %119
    i32 5, label %158
    i32 6, label %187
    i32 7, label %214
    i32 8, label %244
  ], !dbg !473

59:                                               ; preds = %55
  %60 = load i32, ptr %6, align 4, !dbg !474
  switch i32 %60, label %72 [
    i32 -2, label %61
  ], !dbg !476

61:                                               ; preds = %59
  %62 = load i32, ptr %7, align 4, !dbg !477
  switch i32 %62, label %66 [
    i32 -2, label %63
  ], !dbg !479

63:                                               ; preds = %61
  %64 = load ptr, ptr %9, align 8, !dbg !480
  %65 = getelementptr inbounds %struct.nn_req, ptr %64, i32 0, i32 2, !dbg !482
  store i32 2, ptr %65, align 8, !dbg !483
  br label %270, !dbg !484

66:                                               ; preds = %61
  br label %67, !dbg !485

67:                                               ; preds = %66
  %68 = load ptr, ptr @stderr, align 8, !dbg !486
  %69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 399), !dbg !486
  call void @nn_err_abort() #4, !dbg !486
  unreachable, !dbg !486

70:                                               ; No predecessors!
  br label %71, !dbg !490

71:                                               ; preds = %70
  br label %72, !dbg !490

72:                                               ; preds = %59, %71
  br label %73, !dbg !491

73:                                               ; preds = %72
  %74 = load ptr, ptr @stderr, align 8, !dbg !492
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 403), !dbg !492
  call void @nn_err_abort() #4, !dbg !492
  unreachable, !dbg !492

76:                                               ; No predecessors!
  br label %77, !dbg !496

77:                                               ; preds = %76
  br label %78, !dbg !496

78:                                               ; preds = %55, %77
  %79 = load i32, ptr %6, align 4, !dbg !497
  switch i32 %79, label %90 [
    i32 -2, label %80
  ], !dbg !498

80:                                               ; preds = %78
  %81 = load i32, ptr %7, align 4, !dbg !499
  switch i32 %81, label %84 [
    i32 4, label %82
  ], !dbg !501

82:                                               ; preds = %80
  %83 = load ptr, ptr %9, align 8, !dbg !502
  call void @nn_req_action_send(ptr noundef %83), !dbg !504
  br label %270, !dbg !505

84:                                               ; preds = %80
  br label %85, !dbg !506

85:                                               ; preds = %84
  %86 = load ptr, ptr @stderr, align 8, !dbg !507
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 419), !dbg !507
  call void @nn_err_abort() #4, !dbg !507
  unreachable, !dbg !507

88:                                               ; No predecessors!
  br label %89, !dbg !511

89:                                               ; preds = %88
  br label %90, !dbg !511

90:                                               ; preds = %78, %89
  br label %91, !dbg !512

91:                                               ; preds = %90
  %92 = load ptr, ptr @stderr, align 8, !dbg !513
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 423), !dbg !513
  call void @nn_err_abort() #4, !dbg !513
  unreachable, !dbg !513

94:                                               ; No predecessors!
  br label %95, !dbg !517

95:                                               ; preds = %94
  br label %96, !dbg !517

96:                                               ; preds = %55, %95
  %97 = load i32, ptr %6, align 4, !dbg !518
  switch i32 %97, label %113 [
    i32 -2, label %98
  ], !dbg !519

98:                                               ; preds = %96
  %99 = load i32, ptr %7, align 4, !dbg !520
  switch i32 %99, label %107 [
    i32 3, label %100
    i32 4, label %102
  ], !dbg !522

100:                                              ; preds = %98
  %101 = load ptr, ptr %9, align 8, !dbg !523
  call void @nn_req_action_send(ptr noundef %101), !dbg !525
  br label %270, !dbg !526

102:                                              ; preds = %98
  %103 = load ptr, ptr %9, align 8, !dbg !527
  %104 = getelementptr inbounds %struct.nn_req, ptr %103, i32 0, i32 6, !dbg !528
  call void @nn_timer_stop(ptr noundef %104), !dbg !529
  %105 = load ptr, ptr %9, align 8, !dbg !530
  %106 = getelementptr inbounds %struct.nn_req, ptr %105, i32 0, i32 2, !dbg !531
  store i32 6, ptr %106, align 8, !dbg !532
  br label %270, !dbg !533

107:                                              ; preds = %98
  br label %108, !dbg !534

108:                                              ; preds = %107
  %109 = load ptr, ptr @stderr, align 8, !dbg !535
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 448), !dbg !535
  call void @nn_err_abort() #4, !dbg !535
  unreachable, !dbg !535

111:                                              ; No predecessors!
  br label %112, !dbg !539

112:                                              ; preds = %111
  br label %113, !dbg !539

113:                                              ; preds = %96, %112
  br label %114, !dbg !540

114:                                              ; preds = %113
  %115 = load ptr, ptr @stderr, align 8, !dbg !541
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 452), !dbg !541
  call void @nn_err_abort() #4, !dbg !541
  unreachable, !dbg !541

117:                                              ; No predecessors!
  br label %118, !dbg !545

118:                                              ; preds = %117
  br label %119, !dbg !545

119:                                              ; preds = %55, %118
  %120 = load i32, ptr %6, align 4, !dbg !546
  switch i32 %120, label %152 [
    i32 -2, label %121
    i32 1, label %139
  ], !dbg !547

121:                                              ; preds = %119
  %122 = load i32, ptr %7, align 4, !dbg !548
  switch i32 %122, label %133 [
    i32 2, label %123
    i32 4, label %128
  ], !dbg !550

123:                                              ; preds = %121
  %124 = load ptr, ptr %9, align 8, !dbg !551
  %125 = getelementptr inbounds %struct.nn_req, ptr %124, i32 0, i32 6, !dbg !553
  call void @nn_timer_stop(ptr noundef %125), !dbg !554
  %126 = load ptr, ptr %9, align 8, !dbg !555
  %127 = getelementptr inbounds %struct.nn_req, ptr %126, i32 0, i32 2, !dbg !556
  store i32 7, ptr %127, align 8, !dbg !557
  br label %270, !dbg !558

128:                                              ; preds = %121
  %129 = load ptr, ptr %9, align 8, !dbg !559
  %130 = getelementptr inbounds %struct.nn_req, ptr %129, i32 0, i32 6, !dbg !560
  call void @nn_timer_stop(ptr noundef %130), !dbg !561
  %131 = load ptr, ptr %9, align 8, !dbg !562
  %132 = getelementptr inbounds %struct.nn_req, ptr %131, i32 0, i32 2, !dbg !563
  store i32 6, ptr %132, align 8, !dbg !564
  br label %270, !dbg !565

133:                                              ; preds = %121
  br label %134, !dbg !566

134:                                              ; preds = %133
  %135 = load ptr, ptr @stderr, align 8, !dbg !567
  %136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 480), !dbg !567
  call void @nn_err_abort() #4, !dbg !567
  unreachable, !dbg !567

137:                                              ; No predecessors!
  br label %138, !dbg !571

138:                                              ; preds = %137
  br label %139, !dbg !571

139:                                              ; preds = %119, %138
  %140 = load i32, ptr %7, align 4, !dbg !572
  switch i32 %140, label %146 [
    i32 1, label %141
  ], !dbg !573

141:                                              ; preds = %139
  %142 = load ptr, ptr %9, align 8, !dbg !574
  %143 = getelementptr inbounds %struct.nn_req, ptr %142, i32 0, i32 6, !dbg !576
  call void @nn_timer_stop(ptr noundef %143), !dbg !577
  %144 = load ptr, ptr %9, align 8, !dbg !578
  %145 = getelementptr inbounds %struct.nn_req, ptr %144, i32 0, i32 2, !dbg !579
  store i32 5, ptr %145, align 8, !dbg !580
  br label %270, !dbg !581

146:                                              ; preds = %139
  br label %147, !dbg !582

147:                                              ; preds = %146
  %148 = load ptr, ptr @stderr, align 8, !dbg !583
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 490), !dbg !583
  call void @nn_err_abort() #4, !dbg !583
  unreachable, !dbg !583

150:                                              ; No predecessors!
  br label %151, !dbg !587

151:                                              ; preds = %150
  br label %152, !dbg !587

152:                                              ; preds = %119, %151
  br label %153, !dbg !588

153:                                              ; preds = %152
  %154 = load ptr, ptr @stderr, align 8, !dbg !589
  %155 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 494), !dbg !589
  call void @nn_err_abort() #4, !dbg !589
  unreachable, !dbg !589

156:                                              ; No predecessors!
  br label %157, !dbg !593

157:                                              ; preds = %156
  br label %158, !dbg !593

158:                                              ; preds = %55, %157
  %159 = load i32, ptr %6, align 4, !dbg !594
  switch i32 %159, label %181 [
    i32 1, label %160
    i32 -2, label %170
  ], !dbg !595

160:                                              ; preds = %158
  %161 = load i32, ptr %7, align 4, !dbg !596
  switch i32 %161, label %164 [
    i32 2, label %162
  ], !dbg !598

162:                                              ; preds = %160
  %163 = load ptr, ptr %9, align 8, !dbg !599
  call void @nn_req_action_send(ptr noundef %163), !dbg !601
  br label %270, !dbg !602

164:                                              ; preds = %160
  br label %165, !dbg !603

165:                                              ; preds = %164
  %166 = load ptr, ptr @stderr, align 8, !dbg !604
  %167 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 511), !dbg !604
  call void @nn_err_abort() #4, !dbg !604
  unreachable, !dbg !604

168:                                              ; No predecessors!
  br label %169, !dbg !608

169:                                              ; preds = %168
  br label %170, !dbg !608

170:                                              ; preds = %158, %169
  %171 = load i32, ptr %7, align 4, !dbg !609
  switch i32 %171, label %175 [
    i32 4, label %172
  ], !dbg !610

172:                                              ; preds = %170
  %173 = load ptr, ptr %9, align 8, !dbg !611
  %174 = getelementptr inbounds %struct.nn_req, ptr %173, i32 0, i32 2, !dbg !613
  store i32 6, ptr %174, align 8, !dbg !614
  br label %270, !dbg !615

175:                                              ; preds = %170
  br label %176, !dbg !616

176:                                              ; preds = %175
  %177 = load ptr, ptr @stderr, align 8, !dbg !617
  %178 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 520), !dbg !617
  call void @nn_err_abort() #4, !dbg !617
  unreachable, !dbg !617

179:                                              ; No predecessors!
  br label %180, !dbg !621

180:                                              ; preds = %179
  br label %181, !dbg !621

181:                                              ; preds = %158, %180
  br label %182, !dbg !622

182:                                              ; preds = %181
  %183 = load ptr, ptr @stderr, align 8, !dbg !623
  %184 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 524), !dbg !623
  call void @nn_err_abort() #4, !dbg !623
  unreachable, !dbg !623

185:                                              ; No predecessors!
  br label %186, !dbg !627

186:                                              ; preds = %185
  br label %187, !dbg !627

187:                                              ; preds = %55, %186
  %188 = load i32, ptr %6, align 4, !dbg !628
  switch i32 %188, label %208 [
    i32 1, label %189
    i32 -2, label %199
  ], !dbg !629

189:                                              ; preds = %187
  %190 = load i32, ptr %7, align 4, !dbg !630
  switch i32 %190, label %193 [
    i32 2, label %191
  ], !dbg !632

191:                                              ; preds = %189
  %192 = load ptr, ptr %9, align 8, !dbg !633
  call void @nn_req_action_send(ptr noundef %192), !dbg !635
  br label %270, !dbg !636

193:                                              ; preds = %189
  br label %194, !dbg !637

194:                                              ; preds = %193
  %195 = load ptr, ptr @stderr, align 8, !dbg !638
  %196 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %195, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 540), !dbg !638
  call void @nn_err_abort() #4, !dbg !638
  unreachable, !dbg !638

197:                                              ; No predecessors!
  br label %198, !dbg !642

198:                                              ; preds = %197
  br label %199, !dbg !642

199:                                              ; preds = %187, %198
  %200 = load i32, ptr %7, align 4, !dbg !643
  switch i32 %200, label %202 [
    i32 4, label %201
  ], !dbg !644

201:                                              ; preds = %199
  br label %270, !dbg !645

202:                                              ; preds = %199
  br label %203, !dbg !647

203:                                              ; preds = %202
  %204 = load ptr, ptr @stderr, align 8, !dbg !648
  %205 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 548), !dbg !648
  call void @nn_err_abort() #4, !dbg !648
  unreachable, !dbg !648

206:                                              ; No predecessors!
  br label %207, !dbg !652

207:                                              ; preds = %206
  br label %208, !dbg !652

208:                                              ; preds = %187, %207
  br label %209, !dbg !653

209:                                              ; preds = %208
  %210 = load ptr, ptr @stderr, align 8, !dbg !654
  %211 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %210, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 552), !dbg !654
  call void @nn_err_abort() #4, !dbg !654
  unreachable, !dbg !654

212:                                              ; No predecessors!
  br label %213, !dbg !658

213:                                              ; preds = %212
  br label %214, !dbg !658

214:                                              ; preds = %55, %213
  %215 = load i32, ptr %6, align 4, !dbg !659
  switch i32 %215, label %238 [
    i32 1, label %216
    i32 -2, label %227
  ], !dbg !660

216:                                              ; preds = %214
  %217 = load i32, ptr %7, align 4, !dbg !661
  switch i32 %217, label %221 [
    i32 2, label %218
  ], !dbg !663

218:                                              ; preds = %216
  %219 = load ptr, ptr %9, align 8, !dbg !664
  %220 = getelementptr inbounds %struct.nn_req, ptr %219, i32 0, i32 2, !dbg !666
  store i32 8, ptr %220, align 8, !dbg !667
  br label %270, !dbg !668

221:                                              ; preds = %216
  br label %222, !dbg !669

222:                                              ; preds = %221
  %223 = load ptr, ptr @stderr, align 8, !dbg !670
  %224 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 569), !dbg !670
  call void @nn_err_abort() #4, !dbg !670
  unreachable, !dbg !670

225:                                              ; No predecessors!
  br label %226, !dbg !674

226:                                              ; preds = %225
  br label %227, !dbg !674

227:                                              ; preds = %214, %226
  %228 = load i32, ptr %7, align 4, !dbg !675
  switch i32 %228, label %232 [
    i32 4, label %229
  ], !dbg !676

229:                                              ; preds = %227
  %230 = load ptr, ptr %9, align 8, !dbg !677
  %231 = getelementptr inbounds %struct.nn_req, ptr %230, i32 0, i32 2, !dbg !679
  store i32 6, ptr %231, align 8, !dbg !680
  br label %270, !dbg !681

232:                                              ; preds = %227
  br label %233, !dbg !682

233:                                              ; preds = %232
  %234 = load ptr, ptr @stderr, align 8, !dbg !683
  %235 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %234, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 578), !dbg !683
  call void @nn_err_abort() #4, !dbg !683
  unreachable, !dbg !683

236:                                              ; No predecessors!
  br label %237, !dbg !687

237:                                              ; preds = %236
  br label %238, !dbg !687

238:                                              ; preds = %214, %237
  br label %239, !dbg !688

239:                                              ; preds = %238
  %240 = load ptr, ptr @stderr, align 8, !dbg !689
  %241 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %240, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 582), !dbg !689
  call void @nn_err_abort() #4, !dbg !689
  unreachable, !dbg !689

242:                                              ; No predecessors!
  br label %243, !dbg !693

243:                                              ; preds = %242
  br label %244, !dbg !693

244:                                              ; preds = %55, %243
  %245 = load i32, ptr %6, align 4, !dbg !694
  switch i32 %245, label %259 [
    i32 -2, label %246
  ], !dbg !695

246:                                              ; preds = %244
  %247 = load i32, ptr %7, align 4, !dbg !696
  switch i32 %247, label %253 [
    i32 5, label %248
    i32 4, label %251
  ], !dbg !698

248:                                              ; preds = %246
  %249 = load ptr, ptr %9, align 8, !dbg !699
  %250 = getelementptr inbounds %struct.nn_req, ptr %249, i32 0, i32 2, !dbg !701
  store i32 2, ptr %250, align 8, !dbg !702
  br label %270, !dbg !703

251:                                              ; preds = %246
  %252 = load ptr, ptr %9, align 8, !dbg !704
  call void @nn_req_action_send(ptr noundef %252), !dbg !705
  br label %270, !dbg !706

253:                                              ; preds = %246
  br label %254, !dbg !707

254:                                              ; preds = %253
  %255 = load ptr, ptr @stderr, align 8, !dbg !708
  %256 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %255, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 601), !dbg !708
  call void @nn_err_abort() #4, !dbg !708
  unreachable, !dbg !708

257:                                              ; No predecessors!
  br label %258, !dbg !712

258:                                              ; preds = %257
  br label %259, !dbg !712

259:                                              ; preds = %244, %258
  br label %260, !dbg !713

260:                                              ; preds = %259
  %261 = load ptr, ptr @stderr, align 8, !dbg !714
  %262 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %261, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 605), !dbg !714
  call void @nn_err_abort() #4, !dbg !714
  unreachable, !dbg !714

263:                                              ; No predecessors!
  br label %264, !dbg !718

264:                                              ; preds = %263
  br label %265, !dbg !718

265:                                              ; preds = %55, %264
  br label %266, !dbg !719

266:                                              ; preds = %265
  %267 = load ptr, ptr @stderr, align 8, !dbg !720
  %268 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %267, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 612), !dbg !720
  call void @nn_err_abort() #4, !dbg !720
  unreachable, !dbg !720

269:                                              ; No predecessors!
  br label %270, !dbg !724

270:                                              ; preds = %46, %47, %63, %82, %100, %102, %123, %128, %141, %162, %172, %191, %201, %218, %229, %248, %251, %269
  ret void, !dbg !725
}

declare ptr @nn_sockbase_getctx(ptr noundef) #1

declare void @nn_random_generate(ptr noundef, i64 noundef) #1

declare void @nn_msg_init(ptr noundef, i64 noundef) #1

declare void @nn_timer_init(ptr noundef, i32 noundef, ptr noundef) #1

declare void @nn_fsm_start(ptr noundef) #1

declare void @nn_timer_stop(ptr noundef) #1

declare i32 @nn_timer_isidle(ptr noundef) #1

declare void @nn_fsm_stopped_noevent(ptr noundef) #1

declare void @nn_sockbase_stopped(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_req_action_send(ptr noundef %0) #0 !dbg !726 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nn_msg, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !729, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.declare(metadata ptr %3, metadata !731, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.declare(metadata ptr %4, metadata !733, metadata !DIExpression()), !dbg !734
  %5 = load ptr, ptr %2, align 8, !dbg !735
  %6 = getelementptr inbounds %struct.nn_req, ptr %5, i32 0, i32 4, !dbg !736
  call void @nn_msg_cp(ptr noundef %4, ptr noundef %6), !dbg !737
  %7 = load ptr, ptr %2, align 8, !dbg !738
  %8 = getelementptr inbounds %struct.nn_req, ptr %7, i32 0, i32 0, !dbg !739
  %9 = getelementptr inbounds %struct.nn_xreq, ptr %8, i32 0, i32 0, !dbg !740
  %10 = call i32 @nn_xreq_send(ptr noundef %9, ptr noundef %4), !dbg !741
  store i32 %10, ptr %3, align 4, !dbg !742
  %11 = load i32, ptr %3, align 4, !dbg !743
  %12 = icmp eq i32 %11, -11, !dbg !743
  %13 = zext i1 %12 to i32, !dbg !743
  %14 = sext i32 %13 to i64, !dbg !743
  %15 = icmp ne i64 %14, 0, !dbg !743
  br i1 %15, label %16, label %19, !dbg !745

16:                                               ; preds = %1
  call void @nn_msg_term(ptr noundef %4), !dbg !746
  %17 = load ptr, ptr %2, align 8, !dbg !748
  %18 = getelementptr inbounds %struct.nn_req, ptr %17, i32 0, i32 2, !dbg !749
  store i32 3, ptr %18, align 8, !dbg !750
  br label %42, !dbg !751

19:                                               ; preds = %1
  %20 = load i32, ptr %3, align 4, !dbg !752
  %21 = icmp eq i32 %20, 0, !dbg !752
  %22 = zext i1 %21 to i32, !dbg !752
  %23 = sext i32 %22 to i64, !dbg !752
  %24 = icmp ne i64 %23, 0, !dbg !752
  br i1 %24, label %25, label %33, !dbg !754

25:                                               ; preds = %19
  %26 = load ptr, ptr %2, align 8, !dbg !755
  %27 = getelementptr inbounds %struct.nn_req, ptr %26, i32 0, i32 6, !dbg !757
  %28 = load ptr, ptr %2, align 8, !dbg !758
  %29 = getelementptr inbounds %struct.nn_req, ptr %28, i32 0, i32 7, !dbg !759
  %30 = load i32, ptr %29, align 8, !dbg !759
  call void @nn_timer_start(ptr noundef %27, i32 noundef %30), !dbg !760
  %31 = load ptr, ptr %2, align 8, !dbg !761
  %32 = getelementptr inbounds %struct.nn_req, ptr %31, i32 0, i32 2, !dbg !762
  store i32 4, ptr %32, align 8, !dbg !763
  br label %42, !dbg !764

33:                                               ; preds = %19
  br label %34, !dbg !765

34:                                               ; preds = %33
  %35 = load ptr, ptr @stderr, align 8, !dbg !766
  %36 = load i32, ptr %3, align 4, !dbg !766
  %37 = sub nsw i32 0, %36, !dbg !766
  %38 = call ptr @nn_err_strerror(i32 noundef %37), !dbg !766
  %39 = load i32, ptr %3, align 4, !dbg !766
  %40 = sub nsw i32 0, %39, !dbg !766
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.4, ptr noundef %38, i32 noundef %40, ptr noundef @.str.1, i32 noundef 647), !dbg !766
  call void @nn_err_abort() #4, !dbg !766
  unreachable, !dbg !766

42:                                               ; preds = %16, %25
  ret void, !dbg !770
}

declare void @nn_msg_cp(ptr noundef, ptr noundef) #1

declare i32 @nn_xreq_send(ptr noundef, ptr noundef) #1

declare void @nn_msg_term(ptr noundef) #1

declare void @nn_timer_start(ptr noundef, i32 noundef) #1

declare ptr @nn_err_strerror(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_req_stop(ptr noundef %0) #0 !dbg !771 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !772, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.declare(metadata ptr %3, metadata !774, metadata !DIExpression()), !dbg !775
  %4 = load ptr, ptr %2, align 8, !dbg !776
  %5 = icmp ne ptr %4, null, !dbg !776
  br i1 %5, label %6, label %9, !dbg !776

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !776
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !776
  br label %10, !dbg !776

9:                                                ; preds = %1
  br label %10, !dbg !776

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !776
  store ptr %11, ptr %3, align 8, !dbg !777
  %12 = load ptr, ptr %3, align 8, !dbg !778
  %13 = getelementptr inbounds %struct.nn_req, ptr %12, i32 0, i32 1, !dbg !779
  call void @nn_fsm_stop(ptr noundef %13), !dbg !780
  ret void, !dbg !781
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_req_destroy(ptr noundef %0) #0 !dbg !782 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !783, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.declare(metadata ptr %3, metadata !785, metadata !DIExpression()), !dbg !786
  %4 = load ptr, ptr %2, align 8, !dbg !787
  %5 = icmp ne ptr %4, null, !dbg !787
  br i1 %5, label %6, label %9, !dbg !787

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !787
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !787
  br label %10, !dbg !787

9:                                                ; preds = %1
  br label %10, !dbg !787

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !787
  store ptr %11, ptr %3, align 8, !dbg !788
  %12 = load ptr, ptr %3, align 8, !dbg !789
  call void @nn_req_term(ptr noundef %12), !dbg !790
  %13 = load ptr, ptr %3, align 8, !dbg !791
  call void @nn_free(ptr noundef %13), !dbg !792
  ret void, !dbg !793
}

declare i32 @nn_xreq_add(ptr noundef, ptr noundef) #1

declare void @nn_xreq_rm(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_req_in(ptr noundef %0, ptr noundef %1) #0 !dbg !794 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !795, metadata !DIExpression()), !dbg !796
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !797, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.declare(metadata ptr %5, metadata !799, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.declare(metadata ptr %6, metadata !801, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.declare(metadata ptr %7, metadata !803, metadata !DIExpression()), !dbg !804
  %8 = load ptr, ptr %3, align 8, !dbg !805
  %9 = icmp ne ptr %8, null, !dbg !805
  br i1 %9, label %10, label %13, !dbg !805

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !dbg !805
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !805
  br label %14, !dbg !805

13:                                               ; preds = %2
  br label %14, !dbg !805

14:                                               ; preds = %13, %10
  %15 = phi ptr [ %12, %10 ], [ null, %13 ], !dbg !805
  store ptr %15, ptr %6, align 8, !dbg !806
  %16 = load ptr, ptr %6, align 8, !dbg !807
  %17 = getelementptr inbounds %struct.nn_req, ptr %16, i32 0, i32 0, !dbg !808
  %18 = getelementptr inbounds %struct.nn_xreq, ptr %17, i32 0, i32 0, !dbg !809
  %19 = load ptr, ptr %4, align 8, !dbg !810
  call void @nn_xreq_in(ptr noundef %18, ptr noundef %19), !dbg !811
  br label %20, !dbg !812

20:                                               ; preds = %14, %58, %70, %86, %99
  %21 = load ptr, ptr %6, align 8, !dbg !813
  %22 = getelementptr inbounds %struct.nn_req, ptr %21, i32 0, i32 0, !dbg !815
  %23 = getelementptr inbounds %struct.nn_xreq, ptr %22, i32 0, i32 0, !dbg !816
  %24 = load ptr, ptr %6, align 8, !dbg !817
  %25 = getelementptr inbounds %struct.nn_req, ptr %24, i32 0, i32 5, !dbg !818
  %26 = call i32 @nn_xreq_recv(ptr noundef %23, ptr noundef %25), !dbg !819
  store i32 %26, ptr %5, align 4, !dbg !820
  %27 = load i32, ptr %5, align 4, !dbg !821
  %28 = icmp eq i32 %27, -11, !dbg !821
  %29 = zext i1 %28 to i32, !dbg !821
  %30 = sext i32 %29 to i64, !dbg !821
  %31 = icmp ne i64 %30, 0, !dbg !821
  br i1 %31, label %32, label %33, !dbg !823

32:                                               ; preds = %20
  br label %117, !dbg !824

33:                                               ; preds = %20
  br label %34, !dbg !825

34:                                               ; preds = %33
  %35 = load i32, ptr %5, align 4, !dbg !826
  %36 = icmp eq i32 %35, 0, !dbg !826
  %37 = xor i1 %36, true, !dbg !826
  %38 = zext i1 %37 to i32, !dbg !826
  %39 = sext i32 %38 to i64, !dbg !826
  %40 = icmp ne i64 %39, 0, !dbg !826
  br i1 %40, label %41, label %49, !dbg !829

41:                                               ; preds = %34
  %42 = load ptr, ptr @stderr, align 8, !dbg !830
  %43 = load i32, ptr %5, align 4, !dbg !830
  %44 = sub nsw i32 0, %43, !dbg !830
  %45 = call ptr @nn_err_strerror(i32 noundef %44), !dbg !830
  %46 = load i32, ptr %5, align 4, !dbg !830
  %47 = sub nsw i32 0, %46, !dbg !830
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.4, ptr noundef %45, i32 noundef %47, ptr noundef @.str.1, i32 noundef 199), !dbg !830
  call void @nn_err_abort() #4, !dbg !830
  unreachable, !dbg !830

49:                                               ; preds = %34
  br label %50, !dbg !829

50:                                               ; preds = %49
  %51 = load ptr, ptr %6, align 8, !dbg !832
  %52 = call i32 @nn_req_inprogress(ptr noundef %51), !dbg !832
  %53 = icmp ne i32 %52, 0, !dbg !832
  %54 = xor i1 %53, true, !dbg !832
  %55 = zext i1 %54 to i32, !dbg !832
  %56 = sext i32 %55 to i64, !dbg !832
  %57 = icmp ne i64 %56, 0, !dbg !832
  br i1 %57, label %58, label %61, !dbg !834

58:                                               ; preds = %50
  %59 = load ptr, ptr %6, align 8, !dbg !835
  %60 = getelementptr inbounds %struct.nn_req, ptr %59, i32 0, i32 5, !dbg !837
  call void @nn_msg_term(ptr noundef %60), !dbg !838
  br label %20, !dbg !839, !llvm.loop !840

61:                                               ; preds = %50
  %62 = load ptr, ptr %6, align 8, !dbg !842
  %63 = getelementptr inbounds %struct.nn_req, ptr %62, i32 0, i32 5, !dbg !842
  %64 = getelementptr inbounds %struct.nn_msg, ptr %63, i32 0, i32 0, !dbg !842
  %65 = call i64 @nn_chunkref_size(ptr noundef %64), !dbg !842
  %66 = icmp ne i64 %65, 4, !dbg !842
  %67 = zext i1 %66 to i32, !dbg !842
  %68 = sext i32 %67 to i64, !dbg !842
  %69 = icmp ne i64 %68, 0, !dbg !842
  br i1 %69, label %70, label %73, !dbg !844

70:                                               ; preds = %61
  %71 = load ptr, ptr %6, align 8, !dbg !845
  %72 = getelementptr inbounds %struct.nn_req, ptr %71, i32 0, i32 5, !dbg !847
  call void @nn_msg_term(ptr noundef %72), !dbg !848
  br label %20, !dbg !849, !llvm.loop !840

73:                                               ; preds = %61
  %74 = load ptr, ptr %6, align 8, !dbg !850
  %75 = getelementptr inbounds %struct.nn_req, ptr %74, i32 0, i32 5, !dbg !851
  %76 = getelementptr inbounds %struct.nn_msg, ptr %75, i32 0, i32 0, !dbg !852
  %77 = call ptr @nn_chunkref_data(ptr noundef %76), !dbg !853
  %78 = call i32 @nn_getl(ptr noundef %77), !dbg !854
  store i32 %78, ptr %7, align 4, !dbg !855
  %79 = load i32, ptr %7, align 4, !dbg !856
  %80 = and i32 %79, -2147483648, !dbg !856
  %81 = icmp ne i32 %80, 0, !dbg !856
  %82 = xor i1 %81, true, !dbg !856
  %83 = zext i1 %82 to i32, !dbg !856
  %84 = sext i32 %83 to i64, !dbg !856
  %85 = icmp ne i64 %84, 0, !dbg !856
  br i1 %85, label %86, label %89, !dbg !858

86:                                               ; preds = %73
  %87 = load ptr, ptr %6, align 8, !dbg !859
  %88 = getelementptr inbounds %struct.nn_req, ptr %87, i32 0, i32 5, !dbg !861
  call void @nn_msg_term(ptr noundef %88), !dbg !862
  br label %20, !dbg !863, !llvm.loop !840

89:                                               ; preds = %73
  %90 = load i32, ptr %7, align 4, !dbg !864
  %91 = load ptr, ptr %6, align 8, !dbg !864
  %92 = getelementptr inbounds %struct.nn_req, ptr %91, i32 0, i32 3, !dbg !864
  %93 = load i32, ptr %92, align 4, !dbg !864
  %94 = or i32 %93, -2147483648, !dbg !864
  %95 = icmp ne i32 %90, %94, !dbg !864
  %96 = zext i1 %95 to i32, !dbg !864
  %97 = sext i32 %96 to i64, !dbg !864
  %98 = icmp ne i64 %97, 0, !dbg !864
  br i1 %98, label %99, label %102, !dbg !866

99:                                               ; preds = %89
  %100 = load ptr, ptr %6, align 8, !dbg !867
  %101 = getelementptr inbounds %struct.nn_req, ptr %100, i32 0, i32 5, !dbg !869
  call void @nn_msg_term(ptr noundef %101), !dbg !870
  br label %20, !dbg !871, !llvm.loop !840

102:                                              ; preds = %89
  %103 = load ptr, ptr %6, align 8, !dbg !872
  %104 = getelementptr inbounds %struct.nn_req, ptr %103, i32 0, i32 5, !dbg !873
  %105 = getelementptr inbounds %struct.nn_msg, ptr %104, i32 0, i32 0, !dbg !874
  call void @nn_chunkref_term(ptr noundef %105), !dbg !875
  %106 = load ptr, ptr %6, align 8, !dbg !876
  %107 = getelementptr inbounds %struct.nn_req, ptr %106, i32 0, i32 5, !dbg !877
  %108 = getelementptr inbounds %struct.nn_msg, ptr %107, i32 0, i32 0, !dbg !878
  call void @nn_chunkref_init(ptr noundef %108, i64 noundef 0), !dbg !879
  %109 = load ptr, ptr %6, align 8, !dbg !880
  %110 = getelementptr inbounds %struct.nn_req, ptr %109, i32 0, i32 2, !dbg !882
  %111 = load i32, ptr %110, align 8, !dbg !882
  %112 = icmp eq i32 %111, 4, !dbg !883
  br i1 %112, label %113, label %116, !dbg !884

113:                                              ; preds = %102
  %114 = load ptr, ptr %6, align 8, !dbg !885
  %115 = getelementptr inbounds %struct.nn_req, ptr %114, i32 0, i32 1, !dbg !886
  call void @nn_fsm_action(ptr noundef %115, i32 noundef 2), !dbg !887
  br label %116, !dbg !887

116:                                              ; preds = %113, %102
  br label %117, !dbg !888

117:                                              ; preds = %116, %32
  ret void, !dbg !889
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_req_out(ptr noundef %0, ptr noundef %1) #0 !dbg !890 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !891, metadata !DIExpression()), !dbg !892
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !893, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.declare(metadata ptr %5, metadata !895, metadata !DIExpression()), !dbg !896
  %6 = load ptr, ptr %3, align 8, !dbg !897
  %7 = icmp ne ptr %6, null, !dbg !897
  br i1 %7, label %8, label %11, !dbg !897

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !dbg !897
  %10 = getelementptr inbounds i8, ptr %9, i64 0, !dbg !897
  br label %12, !dbg !897

11:                                               ; preds = %2
  br label %12, !dbg !897

12:                                               ; preds = %11, %8
  %13 = phi ptr [ %10, %8 ], [ null, %11 ], !dbg !897
  store ptr %13, ptr %5, align 8, !dbg !898
  %14 = load ptr, ptr %5, align 8, !dbg !899
  %15 = getelementptr inbounds %struct.nn_req, ptr %14, i32 0, i32 0, !dbg !900
  %16 = getelementptr inbounds %struct.nn_xreq, ptr %15, i32 0, i32 0, !dbg !901
  %17 = load ptr, ptr %4, align 8, !dbg !902
  call void @nn_xreq_out(ptr noundef %16, ptr noundef %17), !dbg !903
  %18 = load ptr, ptr %5, align 8, !dbg !904
  %19 = getelementptr inbounds %struct.nn_req, ptr %18, i32 0, i32 2, !dbg !906
  %20 = load i32, ptr %19, align 8, !dbg !906
  %21 = icmp eq i32 %20, 3, !dbg !907
  br i1 %21, label %22, label %25, !dbg !908

22:                                               ; preds = %12
  %23 = load ptr, ptr %5, align 8, !dbg !909
  %24 = getelementptr inbounds %struct.nn_req, ptr %23, i32 0, i32 1, !dbg !910
  call void @nn_fsm_action(ptr noundef %24, i32 noundef 3), !dbg !911
  br label %25, !dbg !911

25:                                               ; preds = %22, %12
  ret void, !dbg !912
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_req_events(ptr noundef %0) #0 !dbg !913 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !914, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.declare(metadata ptr %3, metadata !916, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.declare(metadata ptr %4, metadata !918, metadata !DIExpression()), !dbg !919
  %5 = load ptr, ptr %2, align 8, !dbg !920
  %6 = icmp ne ptr %5, null, !dbg !920
  br i1 %6, label %7, label %10, !dbg !920

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !920
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !920
  br label %11, !dbg !920

10:                                               ; preds = %1
  br label %11, !dbg !920

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !920
  store ptr %12, ptr %4, align 8, !dbg !921
  store i32 2, ptr %3, align 4, !dbg !922
  %13 = load ptr, ptr %4, align 8, !dbg !923
  %14 = getelementptr inbounds %struct.nn_req, ptr %13, i32 0, i32 2, !dbg !925
  %15 = load i32, ptr %14, align 8, !dbg !925
  %16 = icmp eq i32 %15, 8, !dbg !926
  br i1 %16, label %17, label %20, !dbg !927

17:                                               ; preds = %11
  %18 = load i32, ptr %3, align 4, !dbg !928
  %19 = or i32 %18, 1, !dbg !928
  store i32 %19, ptr %3, align 4, !dbg !928
  br label %20, !dbg !929

20:                                               ; preds = %17, %11
  %21 = load i32, ptr %3, align 4, !dbg !930
  ret i32 %21, !dbg !931
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_req_send(ptr noundef %0, ptr noundef %1) #0 !dbg !932 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !933, metadata !DIExpression()), !dbg !934
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !935, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.declare(metadata ptr %5, metadata !937, metadata !DIExpression()), !dbg !938
  %6 = load ptr, ptr %3, align 8, !dbg !939
  %7 = icmp ne ptr %6, null, !dbg !939
  br i1 %7, label %8, label %11, !dbg !939

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !dbg !939
  %10 = getelementptr inbounds i8, ptr %9, i64 0, !dbg !939
  br label %12, !dbg !939

11:                                               ; preds = %2
  br label %12, !dbg !939

12:                                               ; preds = %11, %8
  %13 = phi ptr [ %10, %8 ], [ null, %11 ], !dbg !939
  store ptr %13, ptr %5, align 8, !dbg !940
  %14 = load ptr, ptr %5, align 8, !dbg !941
  %15 = getelementptr inbounds %struct.nn_req, ptr %14, i32 0, i32 3, !dbg !942
  %16 = load i32, ptr %15, align 4, !dbg !943
  %17 = add i32 %16, 1, !dbg !943
  store i32 %17, ptr %15, align 4, !dbg !943
  br label %18, !dbg !944

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8, !dbg !945
  %20 = getelementptr inbounds %struct.nn_msg, ptr %19, i32 0, i32 0, !dbg !945
  %21 = call i64 @nn_chunkref_size(ptr noundef %20), !dbg !945
  %22 = icmp eq i64 %21, 0, !dbg !945
  %23 = xor i1 %22, true, !dbg !945
  %24 = zext i1 %23 to i32, !dbg !945
  %25 = sext i32 %24 to i64, !dbg !945
  %26 = icmp ne i64 %25, 0, !dbg !945
  br i1 %26, label %27, label %30, !dbg !948

27:                                               ; preds = %18
  %28 = load ptr, ptr @stderr, align 8, !dbg !949
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 280), !dbg !949
  call void @nn_err_abort() #4, !dbg !949
  unreachable, !dbg !949

30:                                               ; preds = %18
  br label %31, !dbg !948

31:                                               ; preds = %30
  %32 = load ptr, ptr %4, align 8, !dbg !951
  %33 = getelementptr inbounds %struct.nn_msg, ptr %32, i32 0, i32 0, !dbg !952
  call void @nn_chunkref_term(ptr noundef %33), !dbg !953
  %34 = load ptr, ptr %4, align 8, !dbg !954
  %35 = getelementptr inbounds %struct.nn_msg, ptr %34, i32 0, i32 0, !dbg !955
  call void @nn_chunkref_init(ptr noundef %35, i64 noundef 4), !dbg !956
  %36 = load ptr, ptr %4, align 8, !dbg !957
  %37 = getelementptr inbounds %struct.nn_msg, ptr %36, i32 0, i32 0, !dbg !958
  %38 = call ptr @nn_chunkref_data(ptr noundef %37), !dbg !959
  %39 = load ptr, ptr %5, align 8, !dbg !960
  %40 = getelementptr inbounds %struct.nn_req, ptr %39, i32 0, i32 3, !dbg !961
  %41 = load i32, ptr %40, align 4, !dbg !961
  %42 = or i32 %41, -2147483648, !dbg !962
  call void @nn_putl(ptr noundef %38, i32 noundef %42), !dbg !963
  %43 = load ptr, ptr %5, align 8, !dbg !964
  %44 = getelementptr inbounds %struct.nn_req, ptr %43, i32 0, i32 4, !dbg !965
  call void @nn_msg_term(ptr noundef %44), !dbg !966
  %45 = load ptr, ptr %5, align 8, !dbg !967
  %46 = getelementptr inbounds %struct.nn_req, ptr %45, i32 0, i32 4, !dbg !968
  %47 = load ptr, ptr %4, align 8, !dbg !969
  call void @nn_msg_mv(ptr noundef %46, ptr noundef %47), !dbg !970
  %48 = load ptr, ptr %5, align 8, !dbg !971
  %49 = getelementptr inbounds %struct.nn_req, ptr %48, i32 0, i32 1, !dbg !972
  call void @nn_fsm_action(ptr noundef %49, i32 noundef 4), !dbg !973
  ret i32 0, !dbg !974
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_req_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !975 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !976, metadata !DIExpression()), !dbg !977
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !978, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.declare(metadata ptr %6, metadata !980, metadata !DIExpression()), !dbg !981
  %7 = load ptr, ptr %4, align 8, !dbg !982
  %8 = icmp ne ptr %7, null, !dbg !982
  br i1 %8, label %9, label %12, !dbg !982

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !982
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !982
  br label %13, !dbg !982

12:                                               ; preds = %2
  br label %13, !dbg !982

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !982
  store ptr %14, ptr %6, align 8, !dbg !983
  %15 = load ptr, ptr %6, align 8, !dbg !984
  %16 = call i32 @nn_req_inprogress(ptr noundef %15), !dbg !984
  %17 = icmp ne i32 %16, 0, !dbg !984
  %18 = xor i1 %17, true, !dbg !984
  %19 = zext i1 %18 to i32, !dbg !984
  %20 = sext i32 %19 to i64, !dbg !984
  %21 = icmp ne i64 %20, 0, !dbg !984
  br i1 %21, label %22, label %23, !dbg !986

22:                                               ; preds = %13
  store i32 -156384766, ptr %3, align 4, !dbg !987
  br label %40, !dbg !987

23:                                               ; preds = %13
  %24 = load ptr, ptr %6, align 8, !dbg !988
  %25 = getelementptr inbounds %struct.nn_req, ptr %24, i32 0, i32 2, !dbg !988
  %26 = load i32, ptr %25, align 8, !dbg !988
  %27 = icmp ne i32 %26, 8, !dbg !988
  %28 = zext i1 %27 to i32, !dbg !988
  %29 = sext i32 %28 to i64, !dbg !988
  %30 = icmp ne i64 %29, 0, !dbg !988
  br i1 %30, label %31, label %32, !dbg !990

31:                                               ; preds = %23
  store i32 -11, ptr %3, align 4, !dbg !991
  br label %40, !dbg !991

32:                                               ; preds = %23
  %33 = load ptr, ptr %5, align 8, !dbg !992
  %34 = load ptr, ptr %6, align 8, !dbg !993
  %35 = getelementptr inbounds %struct.nn_req, ptr %34, i32 0, i32 5, !dbg !994
  call void @nn_msg_mv(ptr noundef %33, ptr noundef %35), !dbg !995
  %36 = load ptr, ptr %6, align 8, !dbg !996
  %37 = getelementptr inbounds %struct.nn_req, ptr %36, i32 0, i32 5, !dbg !997
  call void @nn_msg_init(ptr noundef %37, i64 noundef 0), !dbg !998
  %38 = load ptr, ptr %6, align 8, !dbg !999
  %39 = getelementptr inbounds %struct.nn_req, ptr %38, i32 0, i32 1, !dbg !1000
  call void @nn_fsm_action(ptr noundef %39, i32 noundef 5), !dbg !1001
  store i32 0, ptr %3, align 4, !dbg !1002
  br label %40, !dbg !1002

40:                                               ; preds = %32, %31, %22
  %41 = load i32, ptr %3, align 4, !dbg !1003
  ret i32 %41, !dbg !1003
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_req_setopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !1004 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1005, metadata !DIExpression()), !dbg !1006
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1007, metadata !DIExpression()), !dbg !1008
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1009, metadata !DIExpression()), !dbg !1010
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1011, metadata !DIExpression()), !dbg !1012
  store i64 %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1013, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1015, metadata !DIExpression()), !dbg !1016
  %13 = load ptr, ptr %7, align 8, !dbg !1017
  %14 = icmp ne ptr %13, null, !dbg !1017
  br i1 %14, label %15, label %18, !dbg !1017

15:                                               ; preds = %5
  %16 = load ptr, ptr %7, align 8, !dbg !1017
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !1017
  br label %19, !dbg !1017

18:                                               ; preds = %5
  br label %19, !dbg !1017

19:                                               ; preds = %18, %15
  %20 = phi ptr [ %17, %15 ], [ null, %18 ], !dbg !1017
  store ptr %20, ptr %12, align 8, !dbg !1018
  %21 = load i32, ptr %8, align 4, !dbg !1019
  %22 = icmp ne i32 %21, 48, !dbg !1021
  br i1 %22, label %23, label %24, !dbg !1022

23:                                               ; preds = %19
  store i32 -92, ptr %6, align 4, !dbg !1023
  br label %40, !dbg !1023

24:                                               ; preds = %19
  %25 = load i32, ptr %9, align 4, !dbg !1024
  %26 = icmp eq i32 %25, 1, !dbg !1026
  br i1 %26, label %27, label %39, !dbg !1027

27:                                               ; preds = %24
  %28 = load i64, ptr %11, align 8, !dbg !1028
  %29 = icmp ne i64 %28, 4, !dbg !1028
  %30 = zext i1 %29 to i32, !dbg !1028
  %31 = sext i32 %30 to i64, !dbg !1028
  %32 = icmp ne i64 %31, 0, !dbg !1028
  br i1 %32, label %33, label %34, !dbg !1031

33:                                               ; preds = %27
  store i32 -22, ptr %6, align 4, !dbg !1032
  br label %40, !dbg !1032

34:                                               ; preds = %27
  %35 = load ptr, ptr %10, align 8, !dbg !1033
  %36 = load i32, ptr %35, align 4, !dbg !1034
  %37 = load ptr, ptr %12, align 8, !dbg !1035
  %38 = getelementptr inbounds %struct.nn_req, ptr %37, i32 0, i32 7, !dbg !1036
  store i32 %36, ptr %38, align 8, !dbg !1037
  store i32 0, ptr %6, align 4, !dbg !1038
  br label %40, !dbg !1038

39:                                               ; preds = %24
  store i32 -92, ptr %6, align 4, !dbg !1039
  br label %40, !dbg !1039

40:                                               ; preds = %39, %34, %33, %23
  %41 = load i32, ptr %6, align 4, !dbg !1040
  ret i32 %41, !dbg !1040
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_req_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !1041 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1042, metadata !DIExpression()), !dbg !1043
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1044, metadata !DIExpression()), !dbg !1045
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1046, metadata !DIExpression()), !dbg !1047
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1048, metadata !DIExpression()), !dbg !1049
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1050, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1052, metadata !DIExpression()), !dbg !1053
  %13 = load ptr, ptr %7, align 8, !dbg !1054
  %14 = icmp ne ptr %13, null, !dbg !1054
  br i1 %14, label %15, label %18, !dbg !1054

15:                                               ; preds = %5
  %16 = load ptr, ptr %7, align 8, !dbg !1054
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !1054
  br label %19, !dbg !1054

18:                                               ; preds = %5
  br label %19, !dbg !1054

19:                                               ; preds = %18, %15
  %20 = phi ptr [ %17, %15 ], [ null, %18 ], !dbg !1054
  store ptr %20, ptr %12, align 8, !dbg !1055
  %21 = load i32, ptr %8, align 4, !dbg !1056
  %22 = icmp ne i32 %21, 48, !dbg !1058
  br i1 %22, label %23, label %24, !dbg !1059

23:                                               ; preds = %19
  store i32 -92, ptr %6, align 4, !dbg !1060
  br label %42, !dbg !1060

24:                                               ; preds = %19
  %25 = load i32, ptr %9, align 4, !dbg !1061
  %26 = icmp eq i32 %25, 1, !dbg !1063
  br i1 %26, label %27, label %41, !dbg !1064

27:                                               ; preds = %24
  %28 = load ptr, ptr %11, align 8, !dbg !1065
  %29 = load i64, ptr %28, align 8, !dbg !1065
  %30 = icmp ult i64 %29, 4, !dbg !1065
  %31 = zext i1 %30 to i32, !dbg !1065
  %32 = sext i32 %31 to i64, !dbg !1065
  %33 = icmp ne i64 %32, 0, !dbg !1065
  br i1 %33, label %34, label %35, !dbg !1068

34:                                               ; preds = %27
  store i32 -22, ptr %6, align 4, !dbg !1069
  br label %42, !dbg !1069

35:                                               ; preds = %27
  %36 = load ptr, ptr %12, align 8, !dbg !1070
  %37 = getelementptr inbounds %struct.nn_req, ptr %36, i32 0, i32 7, !dbg !1071
  %38 = load i32, ptr %37, align 8, !dbg !1071
  %39 = load ptr, ptr %10, align 8, !dbg !1072
  store i32 %38, ptr %39, align 4, !dbg !1073
  %40 = load ptr, ptr %11, align 8, !dbg !1074
  store i64 4, ptr %40, align 8, !dbg !1075
  store i32 0, ptr %6, align 4, !dbg !1076
  br label %42, !dbg !1076

41:                                               ; preds = %24
  store i32 -92, ptr %6, align 4, !dbg !1077
  br label %42, !dbg !1077

42:                                               ; preds = %41, %35, %34, %23
  %43 = load i32, ptr %6, align 4, !dbg !1078
  ret i32 %43, !dbg !1078
}

declare void @nn_fsm_stop(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_req_term(ptr noundef %0) #0 !dbg !1079 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1080, metadata !DIExpression()), !dbg !1081
  %3 = load ptr, ptr %2, align 8, !dbg !1082
  %4 = getelementptr inbounds %struct.nn_req, ptr %3, i32 0, i32 6, !dbg !1083
  call void @nn_timer_term(ptr noundef %4), !dbg !1084
  %5 = load ptr, ptr %2, align 8, !dbg !1085
  %6 = getelementptr inbounds %struct.nn_req, ptr %5, i32 0, i32 5, !dbg !1086
  call void @nn_msg_term(ptr noundef %6), !dbg !1087
  %7 = load ptr, ptr %2, align 8, !dbg !1088
  %8 = getelementptr inbounds %struct.nn_req, ptr %7, i32 0, i32 4, !dbg !1089
  call void @nn_msg_term(ptr noundef %8), !dbg !1090
  %9 = load ptr, ptr %2, align 8, !dbg !1091
  %10 = getelementptr inbounds %struct.nn_req, ptr %9, i32 0, i32 1, !dbg !1092
  call void @nn_fsm_term(ptr noundef %10), !dbg !1093
  %11 = load ptr, ptr %2, align 8, !dbg !1094
  %12 = getelementptr inbounds %struct.nn_req, ptr %11, i32 0, i32 0, !dbg !1095
  call void @nn_xreq_term(ptr noundef %12), !dbg !1096
  ret void, !dbg !1097
}

declare void @nn_free(ptr noundef) #1

declare void @nn_timer_term(ptr noundef) #1

declare void @nn_fsm_term(ptr noundef) #1

declare void @nn_xreq_term(ptr noundef) #1

declare void @nn_xreq_in(ptr noundef, ptr noundef) #1

declare i32 @nn_xreq_recv(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_req_inprogress(ptr noundef %0) #0 !dbg !1098 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1101, metadata !DIExpression()), !dbg !1102
  %3 = load ptr, ptr %2, align 8, !dbg !1103
  %4 = getelementptr inbounds %struct.nn_req, ptr %3, i32 0, i32 2, !dbg !1104
  %5 = load i32, ptr %4, align 8, !dbg !1104
  %6 = icmp eq i32 %5, 1, !dbg !1105
  br i1 %6, label %17, label %7, !dbg !1106

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !1107
  %9 = getelementptr inbounds %struct.nn_req, ptr %8, i32 0, i32 2, !dbg !1108
  %10 = load i32, ptr %9, align 8, !dbg !1108
  %11 = icmp eq i32 %10, 2, !dbg !1109
  br i1 %11, label %17, label %12, !dbg !1110

12:                                               ; preds = %7
  %13 = load ptr, ptr %2, align 8, !dbg !1111
  %14 = getelementptr inbounds %struct.nn_req, ptr %13, i32 0, i32 2, !dbg !1112
  %15 = load i32, ptr %14, align 8, !dbg !1112
  %16 = icmp eq i32 %15, 9, !dbg !1113
  br label %17, !dbg !1110

17:                                               ; preds = %12, %7, %1
  %18 = phi i1 [ true, %7 ], [ true, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i64, !dbg !1103
  %20 = select i1 %18, i32 0, i32 1, !dbg !1103
  ret i32 %20, !dbg !1114
}

declare i64 @nn_chunkref_size(ptr noundef) #1

declare i32 @nn_getl(ptr noundef) #1

declare ptr @nn_chunkref_data(ptr noundef) #1

declare void @nn_chunkref_term(ptr noundef) #1

declare void @nn_chunkref_init(ptr noundef, i64 noundef) #1

declare void @nn_fsm_action(ptr noundef, i32 noundef) #1

declare void @nn_xreq_out(ptr noundef, ptr noundef) #1

declare void @nn_putl(ptr noundef, i32 noundef) #1

declare void @nn_msg_mv(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!346, !347, !348, !349, !350, !351, !352}
!llvm.ident = !{!353}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_req_socktype_struct", scope: !2, file: !7, line: 662, type: !299, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !295, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/protocols/reqrep/req.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3fc0a639fd0fd0decd51ff1d747131c9")
!4 = !{!5, !293, !32, !294}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_req", file: !7, line: 64, size: 9856, elements: !8)
!7 = !DIFile(filename: "./src/protocols/reqrep/req.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3fc0a639fd0fd0decd51ff1d747131c9")
!8 = !{!9, !124, !154, !155, !159, !160, !161, !292}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "xreq", scope: !6, file: !7, line: 67, baseType: !10, size: 6400)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xreq", file: !11, line: 31, size: 6400, elements: !12)
!11 = !DIFile(filename: "./src/protocols/reqrep/xreq.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "d37700c5acb0e83007a808d09ccb4f66")
!12 = !{!13, !86, !119}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !10, file: !11, line: 32, baseType: !14, size: 128)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !15, line: 123, size: 128, elements: !16)
!15 = !DIFile(filename: "./src/protocols/reqrep/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!16 = !{!17, !83}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !14, file: !15, line: 124, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase_vfptr", file: !15, line: 84, size: 704, elements: !21)
!21 = !{!22, !27, !28, !35, !39, !40, !41, !45, !67, !68, !77}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !20, file: !15, line: 87, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !20, file: !15, line: 90, baseType: !23, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !20, file: !15, line: 97, baseType: !29, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !26, !33}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !15, line: 56, flags: DIFlagFwdDecl)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !20, file: !15, line: 98, baseType: !36, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !26, !33}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !20, file: !15, line: 99, baseType: !36, size: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !20, file: !15, line: 100, baseType: !36, size: 64, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !20, file: !15, line: 104, baseType: !42, size: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!32, !26}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !20, file: !15, line: 108, baseType: !46, size: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!32, !26, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !51, line: 30, size: 512, elements: !52)
!51 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!52 = !{!53, !66}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !50, file: !51, line: 33, baseType: !54, size: 256)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !55, line: 39, size: 256, elements: !56)
!55 = !DIFile(filename: "src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !54, file: !55, line: 40, baseType: !58, size: 256)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !60, line: 24, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !62, line: 38, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!65}
!65 = !DISubrange(count: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !50, file: !51, line: 36, baseType: !54, size: 256, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !20, file: !15, line: 112, baseType: !46, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !20, file: !15, line: 115, baseType: !69, size: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!32, !26, !32, !32, !72, !74}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!76 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !20, file: !15, line: 119, baseType: !78, size: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!32, !26, !32, !32, !81, !82}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !14, file: !15, line: 125, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !15, line: 125, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "lb", scope: !10, file: !11, line: 33, baseType: !87, size: 3136, offset: 128)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_lb", file: !88, line: 36, size: 3136, elements: !89)
!88 = !DIFile(filename: "./src/protocols/reqrep/../utils/lb.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "6c310e327bfaa067523d8902ab9b4696")
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !87, file: !88, line: 37, baseType: !91, size: 3136)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist", file: !92, line: 45, size: 3136, elements: !93)
!92 = !DIFile(filename: "./src/protocols/reqrep/../utils/priolist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e7a7c69c9c81fe3b1beae760b1a28137")
!93 = !{!94, !118}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !91, file: !92, line: 46, baseType: !95, size: 3072)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 3072, elements: !116)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_slot", file: !92, line: 40, size: 192, elements: !97)
!97 = !{!98, !109}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !96, file: !92, line: 41, baseType: !99, size: 128)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !100, line: 31, size: 128, elements: !101)
!100 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!101 = !{!102, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !99, file: !100, line: 32, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !100, line: 26, size: 128, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !100, line: 27, baseType: !103, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !104, file: !100, line: 28, baseType: !103, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !99, file: !100, line: 33, baseType: !103, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !96, file: !92, line: 42, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_data", file: !92, line: 34, size: 256, elements: !112)
!112 = !{!113, !114, !115}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !111, file: !92, line: 35, baseType: !33, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !111, file: !92, line: 36, baseType: !32, size: 32, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !111, file: !92, line: 37, baseType: !104, size: 128, offset: 128)
!116 = !{!117}
!117 = !DISubrange(count: 16)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !91, file: !92, line: 47, baseType: !32, size: 32, offset: 3072)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !10, file: !11, line: 34, baseType: !120, size: 3136, offset: 3264)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq", file: !121, line: 37, size: 3136, elements: !122)
!121 = !DIFile(filename: "./src/protocols/reqrep/../utils/fq.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "342bacd48eb65b84f809ed6b86c6514c")
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !120, file: !121, line: 38, baseType: !91, size: 3136)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !6, file: !7, line: 70, baseType: !125, size: 640, offset: 6400)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !126, line: 66, size: 640, elements: !127)
!126 = !DIFile(filename: "./src/protocols/reqrep/../../aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!127 = !{!128, !134, !135, !136, !137, !138, !141}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !125, file: !126, line: 67, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !126, line: 58, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !133, !32, !32, !81}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !125, file: !126, line: 68, baseType: !32, size: 32, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !125, file: !126, line: 69, baseType: !32, size: 32, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !125, file: !126, line: 70, baseType: !81, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !125, file: !126, line: 71, baseType: !133, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !125, file: !126, line: 72, baseType: !139, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !15, line: 32, flags: DIFlagFwdDecl)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !125, file: !126, line: 73, baseType: !142, size: 320, offset: 320)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !126, line: 34, size: 320, elements: !143)
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !142, file: !126, line: 35, baseType: !133, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !142, file: !126, line: 36, baseType: !32, size: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !142, file: !126, line: 37, baseType: !81, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !126, line: 38, baseType: !32, size: 32, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !142, file: !126, line: 39, baseType: !149, size: 64, offset: 256)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !150, line: 33, size: 64, elements: !151)
!150 = !DIFile(filename: "./src/protocols/reqrep/../../aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !150, line: 34, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6, file: !7, line: 71, baseType: !32, size: 32, offset: 7040)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reqid", scope: !6, file: !7, line: 75, baseType: !156, size: 32, offset: 7072)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !60, line: 26, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !62, line: 42, baseType: !158)
!158 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !6, file: !7, line: 78, baseType: !50, size: 512, offset: 7104)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !6, file: !7, line: 81, baseType: !50, size: 512, offset: 7616)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !6, file: !7, line: 84, baseType: !162, size: 1664, offset: 8128)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timer", file: !163, line: 32, size: 1664, elements: !164)
!163 = !DIFile(filename: "./src/protocols/reqrep/../../aio/timer.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "36b8c8892aa99fc49b85b12a9caf893a")
!164 = !{!165, !166, !167, !173, !174, !187, !188, !291}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !162, file: !163, line: 33, baseType: !125, size: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !162, file: !163, line: 34, baseType: !32, size: 32, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "start_task", scope: !162, file: !163, line: 35, baseType: !168, size: 128, offset: 704)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_task", file: !169, line: 48, size: 128, elements: !170)
!169 = !DIFile(filename: "./src/protocols/reqrep/../../aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !168, file: !169, line: 49, baseType: !133, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !168, file: !169, line: 50, baseType: !149, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "stop_task", scope: !162, file: !163, line: 36, baseType: !168, size: 128, offset: 832)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "wtimer", scope: !162, file: !163, line: 37, baseType: !175, size: 256, offset: 960)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_timer", file: !176, line: 37, size: 256, elements: !177)
!176 = !DIFile(filename: "./src/protocols/reqrep/../../aio/worker.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "2b691693adce9b61547df7808f294867")
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !175, file: !176, line: 38, baseType: !133, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !175, file: !176, line: 39, baseType: !180, size: 192, offset: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset_hndl", file: !181, line: 32, size: 192, elements: !182)
!181 = !DIFile(filename: "./src/protocols/reqrep/../../aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !180, file: !181, line: 33, baseType: !104, size: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !180, file: !181, line: 34, baseType: !185, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !60, line: 27, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !62, line: 45, baseType: !76)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !162, file: !163, line: 38, baseType: !142, size: 320, offset: 1216)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !162, file: !163, line: 39, baseType: !189, size: 64, offset: 1536)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !169, line: 53, size: 1408, elements: !191)
!191 = !{!192, !228, !233, !234, !240, !267, !268, !278}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !190, file: !169, line: 54, baseType: !193, size: 320)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !194, line: 32, size: 320, elements: !195)
!194 = !DIFile(filename: "./src/protocols/reqrep/../../aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !193, file: !194, line: 36, baseType: !197, size: 320)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !198, line: 72, baseType: !199)
!198 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !198, line: 67, size: 320, elements: !200)
!200 = !{!201, !221, !226}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !199, file: !198, line: 69, baseType: !202, size: 320)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !203, line: 22, size: 320, elements: !204)
!203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!204 = !{!205, !206, !207, !208, !209, !210, !212, !213}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !202, file: !203, line: 24, baseType: !32, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !202, file: !203, line: 25, baseType: !158, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !202, file: !203, line: 26, baseType: !32, size: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !202, file: !203, line: 28, baseType: !158, size: 32, offset: 96)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !202, file: !203, line: 32, baseType: !32, size: 32, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !202, file: !203, line: 34, baseType: !211, size: 16, offset: 160)
!211 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !202, file: !203, line: 35, baseType: !211, size: 16, offset: 176)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !202, file: !203, line: 36, baseType: !214, size: 128, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !215, line: 55, baseType: !216)
!215 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !215, line: 51, size: 128, elements: !217)
!217 = !{!218, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !216, file: !215, line: 53, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !216, file: !215, line: 54, baseType: !219, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !199, file: !198, line: 70, baseType: !222, size: 320)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 320, elements: !224)
!223 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!224 = !{!225}
!225 = !DISubrange(count: 40)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !199, file: !198, line: 71, baseType: !227, size: 64)
!227 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !190, file: !169, line: 55, baseType: !229, size: 128, offset: 320)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !150, line: 37, size: 128, elements: !230)
!230 = !{!231, !232}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !229, file: !150, line: 38, baseType: !153, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !229, file: !150, line: 39, baseType: !153, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !190, file: !169, line: 56, baseType: !149, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !190, file: !169, line: 57, baseType: !235, size: 64, offset: 512)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !236, line: 25, size: 64, elements: !237)
!236 = !DIFile(filename: "src/utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !235, file: !236, line: 26, baseType: !32, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !235, file: !236, line: 27, baseType: !32, size: 32, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !190, file: !169, line: 58, baseType: !241, size: 320, offset: 576)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !242, line: 31, size: 320, elements: !243)
!242 = !DIFile(filename: "./src/protocols/reqrep/../../aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!243 = !{!244, !245, !246, !247, !255, !266}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !241, file: !242, line: 34, baseType: !32, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !241, file: !242, line: 37, baseType: !32, size: 32, offset: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !241, file: !242, line: 40, baseType: !32, size: 32, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !241, file: !242, line: 43, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !250, line: 36, size: 64, elements: !251)
!250 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!251 = !{!252, !253, !254}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !249, file: !250, line: 38, baseType: !32, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !249, file: !250, line: 39, baseType: !211, size: 16, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !249, file: !250, line: 40, baseType: !211, size: 16, offset: 48)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !241, file: !242, line: 52, baseType: !256, size: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !242, line: 48, size: 128, elements: !258)
!258 = !{!259, !264, !265}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !257, file: !242, line: 49, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !242, line: 27, size: 32, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !261, file: !242, line: 28, baseType: !32, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !257, file: !242, line: 50, baseType: !32, size: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !242, line: 51, baseType: !32, size: 32, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !241, file: !242, line: 55, baseType: !32, size: 32, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !190, file: !169, line: 59, baseType: !261, size: 32, offset: 896)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !190, file: !169, line: 60, baseType: !269, size: 256, offset: 960)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !181, line: 37, size: 256, elements: !270)
!270 = !{!271, !277}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !269, file: !181, line: 38, baseType: !272, size: 128)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !273, line: 31, size: 128, elements: !274)
!273 = !DIFile(filename: "./src/protocols/reqrep/../../aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !272, file: !273, line: 33, baseType: !185, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !272, file: !273, line: 34, baseType: !185, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !269, file: !181, line: 39, baseType: !99, size: 128, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !190, file: !169, line: 61, baseType: !279, size: 192, offset: 1216)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !280, line: 25, size: 192, elements: !281)
!280 = !DIFile(filename: "src/utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!281 = !{!282, !288, !289}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !279, file: !280, line: 27, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !285, line: 28, baseType: !286)
!285 = !DIFile(filename: "./src/protocols/reqrep/../../aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!286 = !DISubroutineType(types: !287)
!287 = !{null, !81}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !279, file: !280, line: 28, baseType: !81, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !279, file: !280, line: 29, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !198, line: 27, baseType: !76)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !162, file: !163, line: 40, baseType: !32, size: 32, offset: 1600)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "resend_ivl", scope: !6, file: !7, line: 87, baseType: !32, size: 32, offset: 9792)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!295 = !{!296, !0, !314, !319, !324, !329, !334, !339, !341}
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "nn_req_socktype", scope: !2, file: !7, line: 671, type: !298, isLocal: false, isDefinition: true)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !15, line: 160, size: 384, elements: !300)
!300 = !{!301, !302, !303, !304, !309, !313}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !299, file: !15, line: 163, baseType: !32, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !299, file: !15, line: 164, baseType: !32, size: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !15, line: 167, baseType: !32, size: 32, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !299, file: !15, line: 173, baseType: !305, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!32, !81, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !299, file: !15, line: 179, baseType: !310, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!32, !32}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !299, file: !15, line: 183, baseType: !104, size: 128, offset: 256)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !7, line: 655, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 184, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 23)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !7, line: 655, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 232, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 29)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !7, line: 399, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 240, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 30)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !7, line: 399, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 16, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 2)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !7, line: 647, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 136, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 17)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "nn_req_sockbase_vfptr", scope: !2, file: !7, line: 111, type: !19, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !7, line: 280, type: !343, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 272, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 34)
!346 = !{i32 7, !"Dwarf Version", i32 5}
!347 = !{i32 2, !"Debug Info Version", i32 3}
!348 = !{i32 1, !"wchar_size", i32 4}
!349 = !{i32 8, !"PIC Level", i32 2}
!350 = !{i32 7, !"PIE Level", i32 2}
!351 = !{i32 7, !"uwtable", i32 2}
!352 = !{i32 7, !"frame-pointer", i32 2}
!353 = !{!"clang version 16.0.0"}
!354 = distinct !DISubprogram(name: "nn_req_create", scope: !7, file: !7, line: 650, type: !306, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!355 = !{}
!356 = !DILocalVariable(name: "hint", arg: 1, scope: !354, file: !7, line: 650, type: !81)
!357 = !DILocation(line: 650, column: 33, scope: !354)
!358 = !DILocalVariable(name: "sockbase", arg: 2, scope: !354, file: !7, line: 650, type: !308)
!359 = !DILocation(line: 650, column: 60, scope: !354)
!360 = !DILocalVariable(name: "self", scope: !354, file: !7, line: 652, type: !5)
!361 = !DILocation(line: 652, column: 20, scope: !354)
!362 = !DILocation(line: 654, column: 12, scope: !354)
!363 = !DILocation(line: 654, column: 10, scope: !354)
!364 = !DILocation(line: 655, column: 5, scope: !354)
!365 = !DILocation(line: 655, column: 5, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !7, line: 655, column: 5)
!367 = distinct !DILexicalBlock(scope: !354, file: !7, line: 655, column: 5)
!368 = !DILocation(line: 655, column: 5, scope: !367)
!369 = !DILocation(line: 655, column: 5, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !7, line: 655, column: 5)
!371 = !DILocation(line: 656, column: 18, scope: !354)
!372 = !DILocation(line: 656, column: 48, scope: !354)
!373 = !DILocation(line: 656, column: 5, scope: !354)
!374 = !DILocation(line: 657, column: 18, scope: !354)
!375 = !DILocation(line: 657, column: 24, scope: !354)
!376 = !DILocation(line: 657, column: 29, scope: !354)
!377 = !DILocation(line: 657, column: 6, scope: !354)
!378 = !DILocation(line: 657, column: 15, scope: !354)
!379 = !DILocation(line: 659, column: 5, scope: !354)
!380 = distinct !DISubprogram(name: "nn_req_init", scope: !7, file: !7, line: 125, type: !381, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !5, !18, !81}
!383 = !DILocalVariable(name: "self", arg: 1, scope: !380, file: !7, line: 125, type: !5)
!384 = !DILocation(line: 125, column: 41, scope: !380)
!385 = !DILocalVariable(name: "vfptr", arg: 2, scope: !380, file: !7, line: 126, type: !18)
!386 = !DILocation(line: 126, column: 37, scope: !380)
!387 = !DILocalVariable(name: "hint", arg: 3, scope: !380, file: !7, line: 126, type: !81)
!388 = !DILocation(line: 126, column: 50, scope: !380)
!389 = !DILocation(line: 128, column: 20, scope: !380)
!390 = !DILocation(line: 128, column: 26, scope: !380)
!391 = !DILocation(line: 128, column: 32, scope: !380)
!392 = !DILocation(line: 128, column: 39, scope: !380)
!393 = !DILocation(line: 128, column: 5, scope: !380)
!394 = !DILocation(line: 129, column: 24, scope: !380)
!395 = !DILocation(line: 129, column: 30, scope: !380)
!396 = !DILocation(line: 130, column: 30, scope: !380)
!397 = !DILocation(line: 130, column: 36, scope: !380)
!398 = !DILocation(line: 130, column: 41, scope: !380)
!399 = !DILocation(line: 130, column: 9, scope: !380)
!400 = !DILocation(line: 129, column: 5, scope: !380)
!401 = !DILocation(line: 131, column: 5, scope: !380)
!402 = !DILocation(line: 131, column: 11, scope: !380)
!403 = !DILocation(line: 131, column: 17, scope: !380)
!404 = !DILocation(line: 135, column: 26, scope: !380)
!405 = !DILocation(line: 135, column: 32, scope: !380)
!406 = !DILocation(line: 135, column: 5, scope: !380)
!407 = !DILocation(line: 137, column: 19, scope: !380)
!408 = !DILocation(line: 137, column: 25, scope: !380)
!409 = !DILocation(line: 137, column: 5, scope: !380)
!410 = !DILocation(line: 138, column: 19, scope: !380)
!411 = !DILocation(line: 138, column: 25, scope: !380)
!412 = !DILocation(line: 138, column: 5, scope: !380)
!413 = !DILocation(line: 139, column: 21, scope: !380)
!414 = !DILocation(line: 139, column: 27, scope: !380)
!415 = !DILocation(line: 139, column: 60, scope: !380)
!416 = !DILocation(line: 139, column: 66, scope: !380)
!417 = !DILocation(line: 139, column: 5, scope: !380)
!418 = !DILocation(line: 140, column: 5, scope: !380)
!419 = !DILocation(line: 140, column: 11, scope: !380)
!420 = !DILocation(line: 140, column: 22, scope: !380)
!421 = !DILocation(line: 143, column: 20, scope: !380)
!422 = !DILocation(line: 143, column: 26, scope: !380)
!423 = !DILocation(line: 143, column: 5, scope: !380)
!424 = !DILocation(line: 144, column: 1, scope: !380)
!425 = distinct !DISubprogram(name: "nn_req_handler", scope: !7, file: !7, line: 360, type: !131, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!426 = !DILocalVariable(name: "self", arg: 1, scope: !425, file: !7, line: 360, type: !133)
!427 = !DILocation(line: 360, column: 44, scope: !425)
!428 = !DILocalVariable(name: "src", arg: 2, scope: !425, file: !7, line: 360, type: !32)
!429 = !DILocation(line: 360, column: 54, scope: !425)
!430 = !DILocalVariable(name: "type", arg: 3, scope: !425, file: !7, line: 360, type: !32)
!431 = !DILocation(line: 360, column: 63, scope: !425)
!432 = !DILocalVariable(name: "srcptr", arg: 4, scope: !425, file: !7, line: 361, type: !81)
!433 = !DILocation(line: 361, column: 11, scope: !425)
!434 = !DILocalVariable(name: "req", scope: !425, file: !7, line: 363, type: !5)
!435 = !DILocation(line: 363, column: 20, scope: !425)
!436 = !DILocation(line: 365, column: 11, scope: !425)
!437 = !DILocation(line: 365, column: 9, scope: !425)
!438 = !DILocation(line: 370, column: 9, scope: !439)
!439 = distinct !DILexicalBlock(scope: !425, file: !7, line: 370, column: 9)
!440 = !DILocation(line: 0, scope: !439)
!441 = !DILocation(line: 370, column: 9, scope: !425)
!442 = !DILocation(line: 371, column: 25, scope: !443)
!443 = distinct !DILexicalBlock(scope: !439, file: !7, line: 370, column: 64)
!444 = !DILocation(line: 371, column: 30, scope: !443)
!445 = !DILocation(line: 371, column: 9, scope: !443)
!446 = !DILocation(line: 372, column: 9, scope: !443)
!447 = !DILocation(line: 372, column: 14, scope: !443)
!448 = !DILocation(line: 372, column: 20, scope: !443)
!449 = !DILocation(line: 373, column: 5, scope: !443)
!450 = !DILocation(line: 374, column: 9, scope: !451)
!451 = distinct !DILexicalBlock(scope: !425, file: !7, line: 374, column: 9)
!452 = !DILocation(line: 374, column: 9, scope: !425)
!453 = !DILocation(line: 375, column: 32, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !7, line: 375, column: 13)
!455 = distinct !DILexicalBlock(scope: !451, file: !7, line: 374, column: 56)
!456 = !DILocation(line: 375, column: 37, scope: !454)
!457 = !DILocation(line: 375, column: 14, scope: !454)
!458 = !DILocation(line: 375, column: 13, scope: !455)
!459 = !DILocation(line: 376, column: 13, scope: !454)
!460 = !DILocation(line: 377, column: 9, scope: !455)
!461 = !DILocation(line: 377, column: 14, scope: !455)
!462 = !DILocation(line: 377, column: 20, scope: !455)
!463 = !DILocation(line: 378, column: 34, scope: !455)
!464 = !DILocation(line: 378, column: 39, scope: !455)
!465 = !DILocation(line: 378, column: 9, scope: !455)
!466 = !DILocation(line: 379, column: 31, scope: !455)
!467 = !DILocation(line: 379, column: 36, scope: !455)
!468 = !DILocation(line: 379, column: 41, scope: !455)
!469 = !DILocation(line: 379, column: 9, scope: !455)
!470 = !DILocation(line: 380, column: 9, scope: !455)
!471 = !DILocation(line: 383, column: 13, scope: !425)
!472 = !DILocation(line: 383, column: 18, scope: !425)
!473 = !DILocation(line: 383, column: 5, scope: !425)
!474 = !DILocation(line: 391, column: 17, scope: !475)
!475 = distinct !DILexicalBlock(scope: !425, file: !7, line: 383, column: 25)
!476 = !DILocation(line: 391, column: 9, scope: !475)
!477 = !DILocation(line: 394, column: 21, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !7, line: 391, column: 22)
!479 = !DILocation(line: 394, column: 13, scope: !478)
!480 = !DILocation(line: 396, column: 17, scope: !481)
!481 = distinct !DILexicalBlock(scope: !478, file: !7, line: 394, column: 27)
!482 = !DILocation(line: 396, column: 22, scope: !481)
!483 = !DILocation(line: 396, column: 28, scope: !481)
!484 = !DILocation(line: 397, column: 17, scope: !481)
!485 = !DILocation(line: 399, column: 17, scope: !481)
!486 = !DILocation(line: 399, column: 17, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !7, line: 399, column: 17)
!488 = distinct !DILexicalBlock(scope: !489, file: !7, line: 399, column: 17)
!489 = distinct !DILexicalBlock(scope: !481, file: !7, line: 399, column: 17)
!490 = !DILocation(line: 400, column: 13, scope: !481)
!491 = !DILocation(line: 403, column: 13, scope: !478)
!492 = !DILocation(line: 403, column: 13, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !7, line: 403, column: 13)
!494 = distinct !DILexicalBlock(scope: !495, file: !7, line: 403, column: 13)
!495 = distinct !DILexicalBlock(scope: !478, file: !7, line: 403, column: 13)
!496 = !DILocation(line: 404, column: 9, scope: !478)
!497 = !DILocation(line: 411, column: 17, scope: !475)
!498 = !DILocation(line: 411, column: 9, scope: !475)
!499 = !DILocation(line: 414, column: 21, scope: !500)
!500 = distinct !DILexicalBlock(scope: !475, file: !7, line: 411, column: 22)
!501 = !DILocation(line: 414, column: 13, scope: !500)
!502 = !DILocation(line: 416, column: 37, scope: !503)
!503 = distinct !DILexicalBlock(scope: !500, file: !7, line: 414, column: 27)
!504 = !DILocation(line: 416, column: 17, scope: !503)
!505 = !DILocation(line: 417, column: 17, scope: !503)
!506 = !DILocation(line: 419, column: 17, scope: !503)
!507 = !DILocation(line: 419, column: 17, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !7, line: 419, column: 17)
!509 = distinct !DILexicalBlock(scope: !510, file: !7, line: 419, column: 17)
!510 = distinct !DILexicalBlock(scope: !503, file: !7, line: 419, column: 17)
!511 = !DILocation(line: 420, column: 13, scope: !503)
!512 = !DILocation(line: 423, column: 13, scope: !500)
!513 = !DILocation(line: 423, column: 13, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !7, line: 423, column: 13)
!515 = distinct !DILexicalBlock(scope: !516, file: !7, line: 423, column: 13)
!516 = distinct !DILexicalBlock(scope: !500, file: !7, line: 423, column: 13)
!517 = !DILocation(line: 424, column: 9, scope: !500)
!518 = !DILocation(line: 433, column: 17, scope: !475)
!519 = !DILocation(line: 433, column: 9, scope: !475)
!520 = !DILocation(line: 436, column: 21, scope: !521)
!521 = distinct !DILexicalBlock(scope: !475, file: !7, line: 433, column: 22)
!522 = !DILocation(line: 436, column: 13, scope: !521)
!523 = !DILocation(line: 438, column: 37, scope: !524)
!524 = distinct !DILexicalBlock(scope: !521, file: !7, line: 436, column: 27)
!525 = !DILocation(line: 438, column: 17, scope: !524)
!526 = !DILocation(line: 439, column: 17, scope: !524)
!527 = !DILocation(line: 444, column: 33, scope: !524)
!528 = !DILocation(line: 444, column: 38, scope: !524)
!529 = !DILocation(line: 444, column: 17, scope: !524)
!530 = !DILocation(line: 445, column: 17, scope: !524)
!531 = !DILocation(line: 445, column: 22, scope: !524)
!532 = !DILocation(line: 445, column: 28, scope: !524)
!533 = !DILocation(line: 446, column: 17, scope: !524)
!534 = !DILocation(line: 448, column: 17, scope: !524)
!535 = !DILocation(line: 448, column: 17, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !7, line: 448, column: 17)
!537 = distinct !DILexicalBlock(scope: !538, file: !7, line: 448, column: 17)
!538 = distinct !DILexicalBlock(scope: !524, file: !7, line: 448, column: 17)
!539 = !DILocation(line: 449, column: 13, scope: !524)
!540 = !DILocation(line: 452, column: 13, scope: !521)
!541 = !DILocation(line: 452, column: 13, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !7, line: 452, column: 13)
!543 = distinct !DILexicalBlock(scope: !544, file: !7, line: 452, column: 13)
!544 = distinct !DILexicalBlock(scope: !521, file: !7, line: 452, column: 13)
!545 = !DILocation(line: 453, column: 9, scope: !521)
!546 = !DILocation(line: 460, column: 17, scope: !475)
!547 = !DILocation(line: 460, column: 9, scope: !475)
!548 = !DILocation(line: 463, column: 21, scope: !549)
!549 = distinct !DILexicalBlock(scope: !475, file: !7, line: 460, column: 22)
!550 = !DILocation(line: 463, column: 13, scope: !549)
!551 = !DILocation(line: 467, column: 33, scope: !552)
!552 = distinct !DILexicalBlock(scope: !549, file: !7, line: 463, column: 27)
!553 = !DILocation(line: 467, column: 38, scope: !552)
!554 = !DILocation(line: 467, column: 17, scope: !552)
!555 = !DILocation(line: 468, column: 17, scope: !552)
!556 = !DILocation(line: 468, column: 22, scope: !552)
!557 = !DILocation(line: 468, column: 28, scope: !552)
!558 = !DILocation(line: 469, column: 17, scope: !552)
!559 = !DILocation(line: 475, column: 33, scope: !552)
!560 = !DILocation(line: 475, column: 38, scope: !552)
!561 = !DILocation(line: 475, column: 17, scope: !552)
!562 = !DILocation(line: 476, column: 17, scope: !552)
!563 = !DILocation(line: 476, column: 22, scope: !552)
!564 = !DILocation(line: 476, column: 28, scope: !552)
!565 = !DILocation(line: 477, column: 17, scope: !552)
!566 = !DILocation(line: 480, column: 17, scope: !552)
!567 = !DILocation(line: 480, column: 17, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !7, line: 480, column: 17)
!569 = distinct !DILexicalBlock(scope: !570, file: !7, line: 480, column: 17)
!570 = distinct !DILexicalBlock(scope: !552, file: !7, line: 480, column: 17)
!571 = !DILocation(line: 481, column: 13, scope: !552)
!572 = !DILocation(line: 484, column: 21, scope: !549)
!573 = !DILocation(line: 484, column: 13, scope: !549)
!574 = !DILocation(line: 486, column: 33, scope: !575)
!575 = distinct !DILexicalBlock(scope: !549, file: !7, line: 484, column: 27)
!576 = !DILocation(line: 486, column: 38, scope: !575)
!577 = !DILocation(line: 486, column: 17, scope: !575)
!578 = !DILocation(line: 487, column: 17, scope: !575)
!579 = !DILocation(line: 487, column: 22, scope: !575)
!580 = !DILocation(line: 487, column: 28, scope: !575)
!581 = !DILocation(line: 488, column: 17, scope: !575)
!582 = !DILocation(line: 490, column: 17, scope: !575)
!583 = !DILocation(line: 490, column: 17, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !7, line: 490, column: 17)
!585 = distinct !DILexicalBlock(scope: !586, file: !7, line: 490, column: 17)
!586 = distinct !DILexicalBlock(scope: !575, file: !7, line: 490, column: 17)
!587 = !DILocation(line: 491, column: 13, scope: !575)
!588 = !DILocation(line: 494, column: 13, scope: !549)
!589 = !DILocation(line: 494, column: 13, scope: !590)
!590 = distinct !DILexicalBlock(scope: !591, file: !7, line: 494, column: 13)
!591 = distinct !DILexicalBlock(scope: !592, file: !7, line: 494, column: 13)
!592 = distinct !DILexicalBlock(scope: !549, file: !7, line: 494, column: 13)
!593 = !DILocation(line: 495, column: 9, scope: !549)
!594 = !DILocation(line: 503, column: 17, scope: !475)
!595 = !DILocation(line: 503, column: 9, scope: !475)
!596 = !DILocation(line: 506, column: 21, scope: !597)
!597 = distinct !DILexicalBlock(scope: !475, file: !7, line: 503, column: 22)
!598 = !DILocation(line: 506, column: 13, scope: !597)
!599 = !DILocation(line: 508, column: 37, scope: !600)
!600 = distinct !DILexicalBlock(scope: !597, file: !7, line: 506, column: 27)
!601 = !DILocation(line: 508, column: 17, scope: !600)
!602 = !DILocation(line: 509, column: 17, scope: !600)
!603 = !DILocation(line: 511, column: 17, scope: !600)
!604 = !DILocation(line: 511, column: 17, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !7, line: 511, column: 17)
!606 = distinct !DILexicalBlock(scope: !607, file: !7, line: 511, column: 17)
!607 = distinct !DILexicalBlock(scope: !600, file: !7, line: 511, column: 17)
!608 = !DILocation(line: 512, column: 13, scope: !600)
!609 = !DILocation(line: 515, column: 21, scope: !597)
!610 = !DILocation(line: 515, column: 13, scope: !597)
!611 = !DILocation(line: 517, column: 17, scope: !612)
!612 = distinct !DILexicalBlock(scope: !597, file: !7, line: 515, column: 27)
!613 = !DILocation(line: 517, column: 22, scope: !612)
!614 = !DILocation(line: 517, column: 28, scope: !612)
!615 = !DILocation(line: 518, column: 17, scope: !612)
!616 = !DILocation(line: 520, column: 17, scope: !612)
!617 = !DILocation(line: 520, column: 17, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !7, line: 520, column: 17)
!619 = distinct !DILexicalBlock(scope: !620, file: !7, line: 520, column: 17)
!620 = distinct !DILexicalBlock(scope: !612, file: !7, line: 520, column: 17)
!621 = !DILocation(line: 521, column: 13, scope: !612)
!622 = !DILocation(line: 524, column: 13, scope: !597)
!623 = !DILocation(line: 524, column: 13, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !7, line: 524, column: 13)
!625 = distinct !DILexicalBlock(scope: !626, file: !7, line: 524, column: 13)
!626 = distinct !DILexicalBlock(scope: !597, file: !7, line: 524, column: 13)
!627 = !DILocation(line: 525, column: 9, scope: !597)
!628 = !DILocation(line: 532, column: 17, scope: !475)
!629 = !DILocation(line: 532, column: 9, scope: !475)
!630 = !DILocation(line: 535, column: 21, scope: !631)
!631 = distinct !DILexicalBlock(scope: !475, file: !7, line: 532, column: 22)
!632 = !DILocation(line: 535, column: 13, scope: !631)
!633 = !DILocation(line: 537, column: 37, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !7, line: 535, column: 27)
!635 = !DILocation(line: 537, column: 17, scope: !634)
!636 = !DILocation(line: 538, column: 17, scope: !634)
!637 = !DILocation(line: 540, column: 17, scope: !634)
!638 = !DILocation(line: 540, column: 17, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !7, line: 540, column: 17)
!640 = distinct !DILexicalBlock(scope: !641, file: !7, line: 540, column: 17)
!641 = distinct !DILexicalBlock(scope: !634, file: !7, line: 540, column: 17)
!642 = !DILocation(line: 541, column: 13, scope: !634)
!643 = !DILocation(line: 544, column: 22, scope: !631)
!644 = !DILocation(line: 544, column: 14, scope: !631)
!645 = !DILocation(line: 546, column: 18, scope: !646)
!646 = distinct !DILexicalBlock(scope: !631, file: !7, line: 544, column: 28)
!647 = !DILocation(line: 548, column: 18, scope: !646)
!648 = !DILocation(line: 548, column: 18, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !7, line: 548, column: 18)
!650 = distinct !DILexicalBlock(scope: !651, file: !7, line: 548, column: 18)
!651 = distinct !DILexicalBlock(scope: !646, file: !7, line: 548, column: 18)
!652 = !DILocation(line: 549, column: 14, scope: !646)
!653 = !DILocation(line: 552, column: 13, scope: !631)
!654 = !DILocation(line: 552, column: 13, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !7, line: 552, column: 13)
!656 = distinct !DILexicalBlock(scope: !657, file: !7, line: 552, column: 13)
!657 = distinct !DILexicalBlock(scope: !631, file: !7, line: 552, column: 13)
!658 = !DILocation(line: 553, column: 9, scope: !631)
!659 = !DILocation(line: 560, column: 17, scope: !475)
!660 = !DILocation(line: 560, column: 9, scope: !475)
!661 = !DILocation(line: 564, column: 21, scope: !662)
!662 = distinct !DILexicalBlock(scope: !475, file: !7, line: 560, column: 22)
!663 = !DILocation(line: 564, column: 13, scope: !662)
!664 = !DILocation(line: 566, column: 17, scope: !665)
!665 = distinct !DILexicalBlock(scope: !662, file: !7, line: 564, column: 27)
!666 = !DILocation(line: 566, column: 22, scope: !665)
!667 = !DILocation(line: 566, column: 28, scope: !665)
!668 = !DILocation(line: 567, column: 17, scope: !665)
!669 = !DILocation(line: 569, column: 17, scope: !665)
!670 = !DILocation(line: 569, column: 17, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !7, line: 569, column: 17)
!672 = distinct !DILexicalBlock(scope: !673, file: !7, line: 569, column: 17)
!673 = distinct !DILexicalBlock(scope: !665, file: !7, line: 569, column: 17)
!674 = !DILocation(line: 570, column: 13, scope: !665)
!675 = !DILocation(line: 573, column: 21, scope: !662)
!676 = !DILocation(line: 573, column: 13, scope: !662)
!677 = !DILocation(line: 575, column: 17, scope: !678)
!678 = distinct !DILexicalBlock(scope: !662, file: !7, line: 573, column: 27)
!679 = !DILocation(line: 575, column: 22, scope: !678)
!680 = !DILocation(line: 575, column: 28, scope: !678)
!681 = !DILocation(line: 576, column: 17, scope: !678)
!682 = !DILocation(line: 578, column: 17, scope: !678)
!683 = !DILocation(line: 578, column: 17, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !7, line: 578, column: 17)
!685 = distinct !DILexicalBlock(scope: !686, file: !7, line: 578, column: 17)
!686 = distinct !DILexicalBlock(scope: !678, file: !7, line: 578, column: 17)
!687 = !DILocation(line: 579, column: 13, scope: !678)
!688 = !DILocation(line: 582, column: 13, scope: !662)
!689 = !DILocation(line: 582, column: 13, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !7, line: 582, column: 13)
!691 = distinct !DILexicalBlock(scope: !692, file: !7, line: 582, column: 13)
!692 = distinct !DILexicalBlock(scope: !662, file: !7, line: 582, column: 13)
!693 = !DILocation(line: 583, column: 9, scope: !662)
!694 = !DILocation(line: 590, column: 17, scope: !475)
!695 = !DILocation(line: 590, column: 9, scope: !475)
!696 = !DILocation(line: 593, column: 22, scope: !697)
!697 = distinct !DILexicalBlock(scope: !475, file: !7, line: 590, column: 22)
!698 = !DILocation(line: 593, column: 14, scope: !697)
!699 = !DILocation(line: 595, column: 18, scope: !700)
!700 = distinct !DILexicalBlock(scope: !697, file: !7, line: 593, column: 28)
!701 = !DILocation(line: 595, column: 23, scope: !700)
!702 = !DILocation(line: 595, column: 29, scope: !700)
!703 = !DILocation(line: 596, column: 18, scope: !700)
!704 = !DILocation(line: 598, column: 38, scope: !700)
!705 = !DILocation(line: 598, column: 18, scope: !700)
!706 = !DILocation(line: 599, column: 18, scope: !700)
!707 = !DILocation(line: 601, column: 18, scope: !700)
!708 = !DILocation(line: 601, column: 18, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !7, line: 601, column: 18)
!710 = distinct !DILexicalBlock(scope: !711, file: !7, line: 601, column: 18)
!711 = distinct !DILexicalBlock(scope: !700, file: !7, line: 601, column: 18)
!712 = !DILocation(line: 602, column: 14, scope: !700)
!713 = !DILocation(line: 605, column: 13, scope: !697)
!714 = !DILocation(line: 605, column: 13, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !7, line: 605, column: 13)
!716 = distinct !DILexicalBlock(scope: !717, file: !7, line: 605, column: 13)
!717 = distinct !DILexicalBlock(scope: !697, file: !7, line: 605, column: 13)
!718 = !DILocation(line: 606, column: 9, scope: !697)
!719 = !DILocation(line: 612, column: 9, scope: !475)
!720 = !DILocation(line: 612, column: 9, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !7, line: 612, column: 9)
!722 = distinct !DILexicalBlock(scope: !723, file: !7, line: 612, column: 9)
!723 = distinct !DILexicalBlock(scope: !475, file: !7, line: 612, column: 9)
!724 = !DILocation(line: 613, column: 5, scope: !475)
!725 = !DILocation(line: 614, column: 1, scope: !425)
!726 = distinct !DISubprogram(name: "nn_req_action_send", scope: !7, file: !7, line: 620, type: !727, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !5}
!729 = !DILocalVariable(name: "self", arg: 1, scope: !726, file: !7, line: 620, type: !5)
!730 = !DILocation(line: 620, column: 48, scope: !726)
!731 = !DILocalVariable(name: "rc", scope: !726, file: !7, line: 622, type: !32)
!732 = !DILocation(line: 622, column: 9, scope: !726)
!733 = !DILocalVariable(name: "msg", scope: !726, file: !7, line: 623, type: !50)
!734 = !DILocation(line: 623, column: 19, scope: !726)
!735 = !DILocation(line: 626, column: 23, scope: !726)
!736 = !DILocation(line: 626, column: 29, scope: !726)
!737 = !DILocation(line: 626, column: 5, scope: !726)
!738 = !DILocation(line: 627, column: 25, scope: !726)
!739 = !DILocation(line: 627, column: 31, scope: !726)
!740 = !DILocation(line: 627, column: 36, scope: !726)
!741 = !DILocation(line: 627, column: 10, scope: !726)
!742 = !DILocation(line: 627, column: 8, scope: !726)
!743 = !DILocation(line: 631, column: 9, scope: !744)
!744 = distinct !DILexicalBlock(scope: !726, file: !7, line: 631, column: 9)
!745 = !DILocation(line: 631, column: 9, scope: !726)
!746 = !DILocation(line: 632, column: 9, scope: !747)
!747 = distinct !DILexicalBlock(scope: !744, file: !7, line: 631, column: 34)
!748 = !DILocation(line: 633, column: 9, scope: !747)
!749 = !DILocation(line: 633, column: 15, scope: !747)
!750 = !DILocation(line: 633, column: 21, scope: !747)
!751 = !DILocation(line: 634, column: 9, scope: !747)
!752 = !DILocation(line: 640, column: 9, scope: !753)
!753 = distinct !DILexicalBlock(scope: !726, file: !7, line: 640, column: 9)
!754 = !DILocation(line: 640, column: 9, scope: !726)
!755 = !DILocation(line: 641, column: 26, scope: !756)
!756 = distinct !DILexicalBlock(scope: !753, file: !7, line: 640, column: 28)
!757 = !DILocation(line: 641, column: 32, scope: !756)
!758 = !DILocation(line: 641, column: 39, scope: !756)
!759 = !DILocation(line: 641, column: 45, scope: !756)
!760 = !DILocation(line: 641, column: 9, scope: !756)
!761 = !DILocation(line: 642, column: 9, scope: !756)
!762 = !DILocation(line: 642, column: 15, scope: !756)
!763 = !DILocation(line: 642, column: 21, scope: !756)
!764 = !DILocation(line: 643, column: 9, scope: !756)
!765 = !DILocation(line: 647, column: 5, scope: !726)
!766 = !DILocation(line: 647, column: 5, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !7, line: 647, column: 5)
!768 = distinct !DILexicalBlock(scope: !769, file: !7, line: 647, column: 5)
!769 = distinct !DILexicalBlock(scope: !726, file: !7, line: 647, column: 5)
!770 = !DILocation(line: 648, column: 1, scope: !726)
!771 = distinct !DISubprogram(name: "nn_req_stop", scope: !7, file: !7, line: 155, type: !24, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!772 = !DILocalVariable(name: "self", arg: 1, scope: !771, file: !7, line: 155, type: !26)
!773 = !DILocation(line: 155, column: 46, scope: !771)
!774 = !DILocalVariable(name: "req", scope: !771, file: !7, line: 157, type: !5)
!775 = !DILocation(line: 157, column: 20, scope: !771)
!776 = !DILocation(line: 159, column: 11, scope: !771)
!777 = !DILocation(line: 159, column: 9, scope: !771)
!778 = !DILocation(line: 161, column: 19, scope: !771)
!779 = !DILocation(line: 161, column: 24, scope: !771)
!780 = !DILocation(line: 161, column: 5, scope: !771)
!781 = !DILocation(line: 162, column: 1, scope: !771)
!782 = distinct !DISubprogram(name: "nn_req_destroy", scope: !7, file: !7, line: 164, type: !24, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!783 = !DILocalVariable(name: "self", arg: 1, scope: !782, file: !7, line: 164, type: !26)
!784 = !DILocation(line: 164, column: 49, scope: !782)
!785 = !DILocalVariable(name: "req", scope: !782, file: !7, line: 166, type: !5)
!786 = !DILocation(line: 166, column: 20, scope: !782)
!787 = !DILocation(line: 168, column: 11, scope: !782)
!788 = !DILocation(line: 168, column: 9, scope: !782)
!789 = !DILocation(line: 170, column: 18, scope: !782)
!790 = !DILocation(line: 170, column: 5, scope: !782)
!791 = !DILocation(line: 171, column: 14, scope: !782)
!792 = !DILocation(line: 171, column: 5, scope: !782)
!793 = !DILocation(line: 172, column: 1, scope: !782)
!794 = distinct !DISubprogram(name: "nn_req_in", scope: !7, file: !7, line: 182, type: !37, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!795 = !DILocalVariable(name: "self", arg: 1, scope: !794, file: !7, line: 182, type: !26)
!796 = !DILocation(line: 182, column: 44, scope: !794)
!797 = !DILocalVariable(name: "pipe", arg: 2, scope: !794, file: !7, line: 182, type: !33)
!798 = !DILocation(line: 182, column: 66, scope: !794)
!799 = !DILocalVariable(name: "rc", scope: !794, file: !7, line: 184, type: !32)
!800 = !DILocation(line: 184, column: 9, scope: !794)
!801 = !DILocalVariable(name: "req", scope: !794, file: !7, line: 185, type: !5)
!802 = !DILocation(line: 185, column: 20, scope: !794)
!803 = !DILocalVariable(name: "reqid", scope: !794, file: !7, line: 186, type: !156)
!804 = !DILocation(line: 186, column: 14, scope: !794)
!805 = !DILocation(line: 188, column: 11, scope: !794)
!806 = !DILocation(line: 188, column: 9, scope: !794)
!807 = !DILocation(line: 191, column: 18, scope: !794)
!808 = !DILocation(line: 191, column: 23, scope: !794)
!809 = !DILocation(line: 191, column: 28, scope: !794)
!810 = !DILocation(line: 191, column: 38, scope: !794)
!811 = !DILocation(line: 191, column: 5, scope: !794)
!812 = !DILocation(line: 193, column: 5, scope: !794)
!813 = !DILocation(line: 196, column: 29, scope: !814)
!814 = distinct !DILexicalBlock(scope: !794, file: !7, line: 193, column: 15)
!815 = !DILocation(line: 196, column: 34, scope: !814)
!816 = !DILocation(line: 196, column: 39, scope: !814)
!817 = !DILocation(line: 196, column: 50, scope: !814)
!818 = !DILocation(line: 196, column: 55, scope: !814)
!819 = !DILocation(line: 196, column: 14, scope: !814)
!820 = !DILocation(line: 196, column: 12, scope: !814)
!821 = !DILocation(line: 197, column: 13, scope: !822)
!822 = distinct !DILexicalBlock(scope: !814, file: !7, line: 197, column: 13)
!823 = !DILocation(line: 197, column: 13, scope: !814)
!824 = !DILocation(line: 198, column: 13, scope: !822)
!825 = !DILocation(line: 199, column: 9, scope: !814)
!826 = !DILocation(line: 199, column: 9, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !7, line: 199, column: 9)
!828 = distinct !DILexicalBlock(scope: !814, file: !7, line: 199, column: 9)
!829 = !DILocation(line: 199, column: 9, scope: !828)
!830 = !DILocation(line: 199, column: 9, scope: !831)
!831 = distinct !DILexicalBlock(scope: !827, file: !7, line: 199, column: 9)
!832 = !DILocation(line: 202, column: 13, scope: !833)
!833 = distinct !DILexicalBlock(scope: !814, file: !7, line: 202, column: 13)
!834 = !DILocation(line: 202, column: 13, scope: !814)
!835 = !DILocation(line: 203, column: 27, scope: !836)
!836 = distinct !DILexicalBlock(scope: !833, file: !7, line: 202, column: 49)
!837 = !DILocation(line: 203, column: 32, scope: !836)
!838 = !DILocation(line: 203, column: 13, scope: !836)
!839 = !DILocation(line: 204, column: 13, scope: !836)
!840 = distinct !{!840, !812, !841}
!841 = !DILocation(line: 235, column: 5, scope: !794)
!842 = !DILocation(line: 208, column: 13, scope: !843)
!843 = distinct !DILexicalBlock(scope: !814, file: !7, line: 208, column: 13)
!844 = !DILocation(line: 208, column: 13, scope: !814)
!845 = !DILocation(line: 209, column: 27, scope: !846)
!846 = distinct !DILexicalBlock(scope: !843, file: !7, line: 208, column: 80)
!847 = !DILocation(line: 209, column: 32, scope: !846)
!848 = !DILocation(line: 209, column: 13, scope: !846)
!849 = !DILocation(line: 210, column: 13, scope: !846)
!850 = !DILocation(line: 214, column: 45, scope: !814)
!851 = !DILocation(line: 214, column: 50, scope: !814)
!852 = !DILocation(line: 214, column: 56, scope: !814)
!853 = !DILocation(line: 214, column: 26, scope: !814)
!854 = !DILocation(line: 214, column: 17, scope: !814)
!855 = !DILocation(line: 214, column: 15, scope: !814)
!856 = !DILocation(line: 215, column: 13, scope: !857)
!857 = distinct !DILexicalBlock(scope: !814, file: !7, line: 215, column: 13)
!858 = !DILocation(line: 215, column: 13, scope: !814)
!859 = !DILocation(line: 216, column: 27, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !7, line: 215, column: 46)
!861 = !DILocation(line: 216, column: 32, scope: !860)
!862 = !DILocation(line: 216, column: 13, scope: !860)
!863 = !DILocation(line: 217, column: 13, scope: !860)
!864 = !DILocation(line: 219, column: 13, scope: !865)
!865 = distinct !DILexicalBlock(scope: !814, file: !7, line: 219, column: 13)
!866 = !DILocation(line: 219, column: 13, scope: !814)
!867 = !DILocation(line: 220, column: 27, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !7, line: 219, column: 59)
!869 = !DILocation(line: 220, column: 32, scope: !868)
!870 = !DILocation(line: 220, column: 13, scope: !868)
!871 = !DILocation(line: 221, column: 13, scope: !868)
!872 = !DILocation(line: 225, column: 28, scope: !814)
!873 = !DILocation(line: 225, column: 33, scope: !814)
!874 = !DILocation(line: 225, column: 39, scope: !814)
!875 = !DILocation(line: 225, column: 9, scope: !814)
!876 = !DILocation(line: 226, column: 28, scope: !814)
!877 = !DILocation(line: 226, column: 33, scope: !814)
!878 = !DILocation(line: 226, column: 39, scope: !814)
!879 = !DILocation(line: 226, column: 9, scope: !814)
!880 = !DILocation(line: 231, column: 13, scope: !881)
!881 = distinct !DILexicalBlock(scope: !814, file: !7, line: 231, column: 13)
!882 = !DILocation(line: 231, column: 18, scope: !881)
!883 = !DILocation(line: 231, column: 24, scope: !881)
!884 = !DILocation(line: 231, column: 13, scope: !814)
!885 = !DILocation(line: 232, column: 29, scope: !881)
!886 = !DILocation(line: 232, column: 34, scope: !881)
!887 = !DILocation(line: 232, column: 13, scope: !881)
!888 = !DILocation(line: 234, column: 9, scope: !814)
!889 = !DILocation(line: 236, column: 1, scope: !794)
!890 = distinct !DISubprogram(name: "nn_req_out", scope: !7, file: !7, line: 238, type: !37, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!891 = !DILocalVariable(name: "self", arg: 1, scope: !890, file: !7, line: 238, type: !26)
!892 = !DILocation(line: 238, column: 45, scope: !890)
!893 = !DILocalVariable(name: "pipe", arg: 2, scope: !890, file: !7, line: 238, type: !33)
!894 = !DILocation(line: 238, column: 67, scope: !890)
!895 = !DILocalVariable(name: "req", scope: !890, file: !7, line: 240, type: !5)
!896 = !DILocation(line: 240, column: 20, scope: !890)
!897 = !DILocation(line: 242, column: 11, scope: !890)
!898 = !DILocation(line: 242, column: 9, scope: !890)
!899 = !DILocation(line: 245, column: 19, scope: !890)
!900 = !DILocation(line: 245, column: 24, scope: !890)
!901 = !DILocation(line: 245, column: 29, scope: !890)
!902 = !DILocation(line: 245, column: 39, scope: !890)
!903 = !DILocation(line: 245, column: 5, scope: !890)
!904 = !DILocation(line: 248, column: 9, scope: !905)
!905 = distinct !DILexicalBlock(scope: !890, file: !7, line: 248, column: 9)
!906 = !DILocation(line: 248, column: 14, scope: !905)
!907 = !DILocation(line: 248, column: 20, scope: !905)
!908 = !DILocation(line: 248, column: 9, scope: !890)
!909 = !DILocation(line: 249, column: 25, scope: !905)
!910 = !DILocation(line: 249, column: 30, scope: !905)
!911 = !DILocation(line: 249, column: 9, scope: !905)
!912 = !DILocation(line: 250, column: 1, scope: !890)
!913 = distinct !DISubprogram(name: "nn_req_events", scope: !7, file: !7, line: 252, type: !43, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!914 = !DILocalVariable(name: "self", arg: 1, scope: !913, file: !7, line: 252, type: !26)
!915 = !DILocation(line: 252, column: 47, scope: !913)
!916 = !DILocalVariable(name: "rc", scope: !913, file: !7, line: 254, type: !32)
!917 = !DILocation(line: 254, column: 9, scope: !913)
!918 = !DILocalVariable(name: "req", scope: !913, file: !7, line: 255, type: !5)
!919 = !DILocation(line: 255, column: 20, scope: !913)
!920 = !DILocation(line: 257, column: 11, scope: !913)
!921 = !DILocation(line: 257, column: 9, scope: !913)
!922 = !DILocation(line: 261, column: 8, scope: !913)
!923 = !DILocation(line: 264, column: 9, scope: !924)
!924 = distinct !DILexicalBlock(scope: !913, file: !7, line: 264, column: 9)
!925 = !DILocation(line: 264, column: 14, scope: !924)
!926 = !DILocation(line: 264, column: 20, scope: !924)
!927 = !DILocation(line: 264, column: 9, scope: !913)
!928 = !DILocation(line: 265, column: 12, scope: !924)
!929 = !DILocation(line: 265, column: 9, scope: !924)
!930 = !DILocation(line: 267, column: 12, scope: !913)
!931 = !DILocation(line: 267, column: 5, scope: !913)
!932 = distinct !DISubprogram(name: "nn_req_send", scope: !7, file: !7, line: 270, type: !47, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!933 = !DILocalVariable(name: "self", arg: 1, scope: !932, file: !7, line: 270, type: !26)
!934 = !DILocation(line: 270, column: 45, scope: !932)
!935 = !DILocalVariable(name: "msg", arg: 2, scope: !932, file: !7, line: 270, type: !49)
!936 = !DILocation(line: 270, column: 66, scope: !932)
!937 = !DILocalVariable(name: "req", scope: !932, file: !7, line: 272, type: !5)
!938 = !DILocation(line: 272, column: 20, scope: !932)
!939 = !DILocation(line: 274, column: 11, scope: !932)
!940 = !DILocation(line: 274, column: 9, scope: !932)
!941 = !DILocation(line: 279, column: 7, scope: !932)
!942 = !DILocation(line: 279, column: 12, scope: !932)
!943 = !DILocation(line: 279, column: 5, scope: !932)
!944 = !DILocation(line: 280, column: 5, scope: !932)
!945 = !DILocation(line: 280, column: 5, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !7, line: 280, column: 5)
!947 = distinct !DILexicalBlock(scope: !932, file: !7, line: 280, column: 5)
!948 = !DILocation(line: 280, column: 5, scope: !947)
!949 = !DILocation(line: 280, column: 5, scope: !950)
!950 = distinct !DILexicalBlock(scope: !946, file: !7, line: 280, column: 5)
!951 = !DILocation(line: 281, column: 24, scope: !932)
!952 = !DILocation(line: 281, column: 29, scope: !932)
!953 = !DILocation(line: 281, column: 5, scope: !932)
!954 = !DILocation(line: 282, column: 24, scope: !932)
!955 = !DILocation(line: 282, column: 29, scope: !932)
!956 = !DILocation(line: 282, column: 5, scope: !932)
!957 = !DILocation(line: 283, column: 33, scope: !932)
!958 = !DILocation(line: 283, column: 38, scope: !932)
!959 = !DILocation(line: 283, column: 14, scope: !932)
!960 = !DILocation(line: 283, column: 44, scope: !932)
!961 = !DILocation(line: 283, column: 49, scope: !932)
!962 = !DILocation(line: 283, column: 55, scope: !932)
!963 = !DILocation(line: 283, column: 5, scope: !932)
!964 = !DILocation(line: 286, column: 19, scope: !932)
!965 = !DILocation(line: 286, column: 24, scope: !932)
!966 = !DILocation(line: 286, column: 5, scope: !932)
!967 = !DILocation(line: 287, column: 17, scope: !932)
!968 = !DILocation(line: 287, column: 22, scope: !932)
!969 = !DILocation(line: 287, column: 31, scope: !932)
!970 = !DILocation(line: 287, column: 5, scope: !932)
!971 = !DILocation(line: 290, column: 21, scope: !932)
!972 = !DILocation(line: 290, column: 26, scope: !932)
!973 = !DILocation(line: 290, column: 5, scope: !932)
!974 = !DILocation(line: 292, column: 5, scope: !932)
!975 = distinct !DISubprogram(name: "nn_req_recv", scope: !7, file: !7, line: 295, type: !47, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!976 = !DILocalVariable(name: "self", arg: 1, scope: !975, file: !7, line: 295, type: !26)
!977 = !DILocation(line: 295, column: 45, scope: !975)
!978 = !DILocalVariable(name: "msg", arg: 2, scope: !975, file: !7, line: 295, type: !49)
!979 = !DILocation(line: 295, column: 66, scope: !975)
!980 = !DILocalVariable(name: "req", scope: !975, file: !7, line: 297, type: !5)
!981 = !DILocation(line: 297, column: 20, scope: !975)
!982 = !DILocation(line: 299, column: 11, scope: !975)
!983 = !DILocation(line: 299, column: 9, scope: !975)
!984 = !DILocation(line: 302, column: 9, scope: !985)
!985 = distinct !DILexicalBlock(scope: !975, file: !7, line: 302, column: 9)
!986 = !DILocation(line: 302, column: 9, scope: !975)
!987 = !DILocation(line: 303, column: 9, scope: !985)
!988 = !DILocation(line: 306, column: 9, scope: !989)
!989 = distinct !DILexicalBlock(scope: !975, file: !7, line: 306, column: 9)
!990 = !DILocation(line: 306, column: 9, scope: !975)
!991 = !DILocation(line: 307, column: 9, scope: !989)
!992 = !DILocation(line: 310, column: 16, scope: !975)
!993 = !DILocation(line: 310, column: 22, scope: !975)
!994 = !DILocation(line: 310, column: 27, scope: !975)
!995 = !DILocation(line: 310, column: 5, scope: !975)
!996 = !DILocation(line: 311, column: 19, scope: !975)
!997 = !DILocation(line: 311, column: 24, scope: !975)
!998 = !DILocation(line: 311, column: 5, scope: !975)
!999 = !DILocation(line: 314, column: 21, scope: !975)
!1000 = !DILocation(line: 314, column: 26, scope: !975)
!1001 = !DILocation(line: 314, column: 5, scope: !975)
!1002 = !DILocation(line: 316, column: 5, scope: !975)
!1003 = !DILocation(line: 317, column: 1, scope: !975)
!1004 = distinct !DISubprogram(name: "nn_req_setopt", scope: !7, file: !7, line: 319, type: !70, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!1005 = !DILocalVariable(name: "self", arg: 1, scope: !1004, file: !7, line: 319, type: !26)
!1006 = !DILocation(line: 319, column: 47, scope: !1004)
!1007 = !DILocalVariable(name: "level", arg: 2, scope: !1004, file: !7, line: 319, type: !32)
!1008 = !DILocation(line: 319, column: 57, scope: !1004)
!1009 = !DILocalVariable(name: "option", arg: 3, scope: !1004, file: !7, line: 319, type: !32)
!1010 = !DILocation(line: 319, column: 68, scope: !1004)
!1011 = !DILocalVariable(name: "optval", arg: 4, scope: !1004, file: !7, line: 320, type: !72)
!1012 = !DILocation(line: 320, column: 21, scope: !1004)
!1013 = !DILocalVariable(name: "optvallen", arg: 5, scope: !1004, file: !7, line: 320, type: !74)
!1014 = !DILocation(line: 320, column: 36, scope: !1004)
!1015 = !DILocalVariable(name: "req", scope: !1004, file: !7, line: 322, type: !5)
!1016 = !DILocation(line: 322, column: 20, scope: !1004)
!1017 = !DILocation(line: 324, column: 11, scope: !1004)
!1018 = !DILocation(line: 324, column: 9, scope: !1004)
!1019 = !DILocation(line: 326, column: 9, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1004, file: !7, line: 326, column: 9)
!1021 = !DILocation(line: 326, column: 15, scope: !1020)
!1022 = !DILocation(line: 326, column: 9, scope: !1004)
!1023 = !DILocation(line: 327, column: 9, scope: !1020)
!1024 = !DILocation(line: 329, column: 9, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1004, file: !7, line: 329, column: 9)
!1026 = !DILocation(line: 329, column: 16, scope: !1025)
!1027 = !DILocation(line: 329, column: 9, scope: !1004)
!1028 = !DILocation(line: 330, column: 13, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !7, line: 330, column: 13)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !7, line: 329, column: 38)
!1031 = !DILocation(line: 330, column: 13, scope: !1030)
!1032 = !DILocation(line: 331, column: 13, scope: !1029)
!1033 = !DILocation(line: 332, column: 35, scope: !1030)
!1034 = !DILocation(line: 332, column: 27, scope: !1030)
!1035 = !DILocation(line: 332, column: 9, scope: !1030)
!1036 = !DILocation(line: 332, column: 14, scope: !1030)
!1037 = !DILocation(line: 332, column: 25, scope: !1030)
!1038 = !DILocation(line: 333, column: 9, scope: !1030)
!1039 = !DILocation(line: 336, column: 5, scope: !1004)
!1040 = !DILocation(line: 337, column: 1, scope: !1004)
!1041 = distinct !DISubprogram(name: "nn_req_getopt", scope: !7, file: !7, line: 339, type: !79, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!1042 = !DILocalVariable(name: "self", arg: 1, scope: !1041, file: !7, line: 339, type: !26)
!1043 = !DILocation(line: 339, column: 47, scope: !1041)
!1044 = !DILocalVariable(name: "level", arg: 2, scope: !1041, file: !7, line: 339, type: !32)
!1045 = !DILocation(line: 339, column: 57, scope: !1041)
!1046 = !DILocalVariable(name: "option", arg: 3, scope: !1041, file: !7, line: 339, type: !32)
!1047 = !DILocation(line: 339, column: 68, scope: !1041)
!1048 = !DILocalVariable(name: "optval", arg: 4, scope: !1041, file: !7, line: 340, type: !81)
!1049 = !DILocation(line: 340, column: 15, scope: !1041)
!1050 = !DILocalVariable(name: "optvallen", arg: 5, scope: !1041, file: !7, line: 340, type: !82)
!1051 = !DILocation(line: 340, column: 31, scope: !1041)
!1052 = !DILocalVariable(name: "req", scope: !1041, file: !7, line: 342, type: !5)
!1053 = !DILocation(line: 342, column: 20, scope: !1041)
!1054 = !DILocation(line: 344, column: 11, scope: !1041)
!1055 = !DILocation(line: 344, column: 9, scope: !1041)
!1056 = !DILocation(line: 346, column: 9, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1041, file: !7, line: 346, column: 9)
!1058 = !DILocation(line: 346, column: 15, scope: !1057)
!1059 = !DILocation(line: 346, column: 9, scope: !1041)
!1060 = !DILocation(line: 347, column: 9, scope: !1057)
!1061 = !DILocation(line: 349, column: 9, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1041, file: !7, line: 349, column: 9)
!1063 = !DILocation(line: 349, column: 16, scope: !1062)
!1064 = !DILocation(line: 349, column: 9, scope: !1041)
!1065 = !DILocation(line: 350, column: 13, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !7, line: 350, column: 13)
!1067 = distinct !DILexicalBlock(scope: !1062, file: !7, line: 349, column: 38)
!1068 = !DILocation(line: 350, column: 13, scope: !1067)
!1069 = !DILocation(line: 351, column: 13, scope: !1066)
!1070 = !DILocation(line: 352, column: 26, scope: !1067)
!1071 = !DILocation(line: 352, column: 31, scope: !1067)
!1072 = !DILocation(line: 352, column: 17, scope: !1067)
!1073 = !DILocation(line: 352, column: 24, scope: !1067)
!1074 = !DILocation(line: 353, column: 10, scope: !1067)
!1075 = !DILocation(line: 353, column: 20, scope: !1067)
!1076 = !DILocation(line: 354, column: 9, scope: !1067)
!1077 = !DILocation(line: 357, column: 5, scope: !1041)
!1078 = !DILocation(line: 358, column: 1, scope: !1041)
!1079 = distinct !DISubprogram(name: "nn_req_term", scope: !7, file: !7, line: 146, type: !727, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!1080 = !DILocalVariable(name: "self", arg: 1, scope: !1079, file: !7, line: 146, type: !5)
!1081 = !DILocation(line: 146, column: 41, scope: !1079)
!1082 = !DILocation(line: 148, column: 21, scope: !1079)
!1083 = !DILocation(line: 148, column: 27, scope: !1079)
!1084 = !DILocation(line: 148, column: 5, scope: !1079)
!1085 = !DILocation(line: 149, column: 19, scope: !1079)
!1086 = !DILocation(line: 149, column: 25, scope: !1079)
!1087 = !DILocation(line: 149, column: 5, scope: !1079)
!1088 = !DILocation(line: 150, column: 19, scope: !1079)
!1089 = !DILocation(line: 150, column: 25, scope: !1079)
!1090 = !DILocation(line: 150, column: 5, scope: !1079)
!1091 = !DILocation(line: 151, column: 19, scope: !1079)
!1092 = !DILocation(line: 151, column: 25, scope: !1079)
!1093 = !DILocation(line: 151, column: 5, scope: !1079)
!1094 = !DILocation(line: 152, column: 20, scope: !1079)
!1095 = !DILocation(line: 152, column: 26, scope: !1079)
!1096 = !DILocation(line: 152, column: 5, scope: !1079)
!1097 = !DILocation(line: 153, column: 1, scope: !1079)
!1098 = distinct !DISubprogram(name: "nn_req_inprogress", scope: !7, file: !7, line: 174, type: !1099, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!32, !5}
!1101 = !DILocalVariable(name: "self", arg: 1, scope: !1098, file: !7, line: 174, type: !5)
!1102 = !DILocation(line: 174, column: 46, scope: !1098)
!1103 = !DILocation(line: 177, column: 12, scope: !1098)
!1104 = !DILocation(line: 177, column: 18, scope: !1098)
!1105 = !DILocation(line: 177, column: 24, scope: !1098)
!1106 = !DILocation(line: 177, column: 45, scope: !1098)
!1107 = !DILocation(line: 178, column: 9, scope: !1098)
!1108 = !DILocation(line: 178, column: 15, scope: !1098)
!1109 = !DILocation(line: 178, column: 21, scope: !1098)
!1110 = !DILocation(line: 178, column: 45, scope: !1098)
!1111 = !DILocation(line: 179, column: 9, scope: !1098)
!1112 = !DILocation(line: 179, column: 15, scope: !1098)
!1113 = !DILocation(line: 179, column: 21, scope: !1098)
!1114 = !DILocation(line: 177, column: 5, scope: !1098)
