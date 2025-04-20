; ModuleID = './src/protocols/survey/surveyor.c'
source_filename = "./src/protocols/survey/surveyor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_surveyor = type { %struct.nn_xsurveyor, %struct.nn_fsm, i32, i32, %struct.nn_timer, %struct.nn_msg, i32 }
%struct.nn_xsurveyor = type { %struct.nn_sockbase, %struct.nn_dist, %struct.nn_fq }
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_dist = type { i64, %struct.nn_list }
%struct.nn_list = type { ptr, ptr }
%struct.nn_fq = type { %struct.nn_priolist }
%struct.nn_priolist = type { [16 x %struct.nn_priolist_slot], i32 }
%struct.nn_priolist_slot = type { %struct.nn_list, ptr }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_timer = type { %struct.nn_fsm, i32, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_timer, %struct.nn_fsm_event, ptr, i32 }
%struct.nn_worker_task = type { ptr, %struct.nn_queue_item }
%struct.nn_worker_timer = type { ptr, %struct.nn_timerset_hndl }
%struct.nn_timerset_hndl = type { %struct.nn_list_item, i64 }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }

@nn_surveyor_socktype_struct = internal global %struct.nn_socktype { i32 1, i32 96, i32 0, ptr @nn_surveyor_create, ptr @nn_xsurveyor_ispeer, %struct.nn_list_item { ptr inttoptr (i64 -1 to ptr), ptr inttoptr (i64 -1 to ptr) } }, align 8, !dbg !0
@nn_surveyor_socktype = dso_local global ptr @nn_surveyor_socktype_struct, align 8, !dbg !296
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !314
@.str.1 = private unnamed_addr constant [34 x i8] c"./src/protocols/survey/surveyor.c\00", align 1, !dbg !319
@nn_surveyor_sockbase_vfptr = internal constant %struct.nn_sockbase_vfptr { ptr @nn_surveyor_stop, ptr @nn_surveyor_destroy, ptr @nn_xsurveyor_add, ptr @nn_xsurveyor_rm, ptr @nn_xsurveyor_in, ptr @nn_xsurveyor_out, ptr @nn_surveyor_events, ptr @nn_surveyor_send, ptr @nn_surveyor_recv, ptr @nn_surveyor_setopt, ptr @nn_surveyor_getopt }, align 8, !dbg !339
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !324
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !329
@.str.4 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !334
@.str.5 = private unnamed_addr constant [34 x i8] c"nn_chunkref_size (&msg->hdr) == 0\00", align 1, !dbg !341

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_surveyor_create(ptr noundef %0, ptr noundef %1) #0 !dbg !351 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !353, metadata !DIExpression()), !dbg !354
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !355, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata ptr %5, metadata !357, metadata !DIExpression()), !dbg !358
  %6 = call ptr @nn_alloc_(i64 noundef 800), !dbg !359
  store ptr %6, ptr %5, align 8, !dbg !360
  br label %7, !dbg !361

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !362
  %9 = icmp ne ptr %8, null, !dbg !362
  %10 = xor i1 %9, true, !dbg !362
  %11 = zext i1 %10 to i32, !dbg !362
  %12 = sext i32 %11 to i64, !dbg !362
  %13 = icmp ne i64 %12, 0, !dbg !362
  br i1 %13, label %14, label %17, !dbg !365

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !366
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 470), !dbg !366
  call void @nn_err_abort() #4, !dbg !366
  unreachable, !dbg !366

17:                                               ; preds = %7
  br label %18, !dbg !365

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !368
  %20 = load ptr, ptr %3, align 8, !dbg !369
  call void @nn_surveyor_init(ptr noundef %19, ptr noundef @nn_surveyor_sockbase_vfptr, ptr noundef %20), !dbg !370
  %21 = load ptr, ptr %5, align 8, !dbg !371
  %22 = getelementptr inbounds %struct.nn_surveyor, ptr %21, i32 0, i32 0, !dbg !372
  %23 = getelementptr inbounds %struct.nn_xsurveyor, ptr %22, i32 0, i32 0, !dbg !373
  %24 = load ptr, ptr %4, align 8, !dbg !374
  store ptr %23, ptr %24, align 8, !dbg !375
  ret i32 0, !dbg !376
}

declare i32 @nn_xsurveyor_ispeer(i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare ptr @nn_alloc_(i64 noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_surveyor_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !377 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !380, metadata !DIExpression()), !dbg !381
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !382, metadata !DIExpression()), !dbg !383
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !384, metadata !DIExpression()), !dbg !385
  %7 = load ptr, ptr %4, align 8, !dbg !386
  %8 = getelementptr inbounds %struct.nn_surveyor, ptr %7, i32 0, i32 0, !dbg !387
  %9 = load ptr, ptr %5, align 8, !dbg !388
  %10 = load ptr, ptr %6, align 8, !dbg !389
  call void @nn_xsurveyor_init(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !390
  %11 = load ptr, ptr %4, align 8, !dbg !391
  %12 = getelementptr inbounds %struct.nn_surveyor, ptr %11, i32 0, i32 1, !dbg !392
  %13 = load ptr, ptr %4, align 8, !dbg !393
  %14 = getelementptr inbounds %struct.nn_surveyor, ptr %13, i32 0, i32 0, !dbg !394
  %15 = getelementptr inbounds %struct.nn_xsurveyor, ptr %14, i32 0, i32 0, !dbg !395
  %16 = call ptr @nn_sockbase_getctx(ptr noundef %15), !dbg !396
  call void @nn_fsm_init_root(ptr noundef %12, ptr noundef @nn_surveyor_handler, ptr noundef %16), !dbg !397
  %17 = load ptr, ptr %4, align 8, !dbg !398
  %18 = getelementptr inbounds %struct.nn_surveyor, ptr %17, i32 0, i32 2, !dbg !399
  store i32 1, ptr %18, align 8, !dbg !400
  %19 = load ptr, ptr %4, align 8, !dbg !401
  %20 = getelementptr inbounds %struct.nn_surveyor, ptr %19, i32 0, i32 3, !dbg !402
  call void @nn_random_generate(ptr noundef %20, i64 noundef 4), !dbg !403
  %21 = load ptr, ptr %4, align 8, !dbg !404
  %22 = getelementptr inbounds %struct.nn_surveyor, ptr %21, i32 0, i32 4, !dbg !405
  %23 = load ptr, ptr %4, align 8, !dbg !406
  %24 = getelementptr inbounds %struct.nn_surveyor, ptr %23, i32 0, i32 1, !dbg !407
  call void @nn_timer_init(ptr noundef %22, i32 noundef 1, ptr noundef %24), !dbg !408
  %25 = load ptr, ptr %4, align 8, !dbg !409
  %26 = getelementptr inbounds %struct.nn_surveyor, ptr %25, i32 0, i32 5, !dbg !410
  call void @nn_msg_init(ptr noundef %26, i64 noundef 0), !dbg !411
  %27 = load ptr, ptr %4, align 8, !dbg !412
  %28 = getelementptr inbounds %struct.nn_surveyor, ptr %27, i32 0, i32 6, !dbg !413
  store i32 1000, ptr %28, align 8, !dbg !414
  %29 = load ptr, ptr %4, align 8, !dbg !415
  %30 = getelementptr inbounds %struct.nn_surveyor, ptr %29, i32 0, i32 1, !dbg !416
  call void @nn_fsm_start(ptr noundef %30), !dbg !417
  ret void, !dbg !418
}

declare void @nn_xsurveyor_init(ptr noundef, ptr noundef, ptr noundef) #1

declare void @nn_fsm_init_root(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_surveyor_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !419 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !420, metadata !DIExpression()), !dbg !421
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !422, metadata !DIExpression()), !dbg !423
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !424, metadata !DIExpression()), !dbg !425
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata ptr %9, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata ptr %10, metadata !430, metadata !DIExpression()), !dbg !431
  %11 = load ptr, ptr %5, align 8, !dbg !432
  %12 = icmp ne ptr %11, null, !dbg !432
  br i1 %12, label %13, label %16, !dbg !432

13:                                               ; preds = %4
  %14 = load ptr, ptr %5, align 8, !dbg !432
  %15 = getelementptr inbounds i8, ptr %14, i64 -432, !dbg !432
  br label %17, !dbg !432

16:                                               ; preds = %4
  br label %17, !dbg !432

17:                                               ; preds = %16, %13
  %18 = phi ptr [ %15, %13 ], [ null, %16 ], !dbg !432
  store ptr %18, ptr %10, align 8, !dbg !433
  %19 = load i32, ptr %6, align 4, !dbg !434
  %20 = icmp eq i32 %19, -2, !dbg !434
  br i1 %20, label %21, label %24, !dbg !434

21:                                               ; preds = %17
  %22 = load i32, ptr %7, align 4, !dbg !434
  %23 = icmp eq i32 %22, -3, !dbg !434
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i1 [ false, %17 ], [ %23, %21 ], !dbg !436
  %26 = zext i1 %25 to i32, !dbg !434
  %27 = sext i32 %26 to i64, !dbg !434
  %28 = icmp ne i64 %27, 0, !dbg !434
  br i1 %28, label %29, label %34, !dbg !437

29:                                               ; preds = %24
  %30 = load ptr, ptr %10, align 8, !dbg !438
  %31 = getelementptr inbounds %struct.nn_surveyor, ptr %30, i32 0, i32 4, !dbg !440
  call void @nn_timer_stop(ptr noundef %31), !dbg !441
  %32 = load ptr, ptr %10, align 8, !dbg !442
  %33 = getelementptr inbounds %struct.nn_surveyor, ptr %32, i32 0, i32 2, !dbg !443
  store i32 6, ptr %33, align 8, !dbg !444
  br label %34, !dbg !445

34:                                               ; preds = %29, %24
  %35 = load ptr, ptr %10, align 8, !dbg !446
  %36 = getelementptr inbounds %struct.nn_surveyor, ptr %35, i32 0, i32 2, !dbg !446
  %37 = load i32, ptr %36, align 8, !dbg !446
  %38 = icmp eq i32 %37, 6, !dbg !446
  %39 = zext i1 %38 to i32, !dbg !446
  %40 = sext i32 %39 to i64, !dbg !446
  %41 = icmp ne i64 %40, 0, !dbg !446
  br i1 %41, label %42, label %56, !dbg !448

42:                                               ; preds = %34
  %43 = load ptr, ptr %10, align 8, !dbg !449
  %44 = getelementptr inbounds %struct.nn_surveyor, ptr %43, i32 0, i32 4, !dbg !452
  %45 = call i32 @nn_timer_isidle(ptr noundef %44), !dbg !453
  %46 = icmp ne i32 %45, 0, !dbg !453
  br i1 %46, label %48, label %47, !dbg !454

47:                                               ; preds = %42
  br label %240, !dbg !455

48:                                               ; preds = %42
  %49 = load ptr, ptr %10, align 8, !dbg !456
  %50 = getelementptr inbounds %struct.nn_surveyor, ptr %49, i32 0, i32 2, !dbg !457
  store i32 1, ptr %50, align 8, !dbg !458
  %51 = load ptr, ptr %10, align 8, !dbg !459
  %52 = getelementptr inbounds %struct.nn_surveyor, ptr %51, i32 0, i32 1, !dbg !460
  call void @nn_fsm_stopped_noevent(ptr noundef %52), !dbg !461
  %53 = load ptr, ptr %10, align 8, !dbg !462
  %54 = getelementptr inbounds %struct.nn_surveyor, ptr %53, i32 0, i32 0, !dbg !463
  %55 = getelementptr inbounds %struct.nn_xsurveyor, ptr %54, i32 0, i32 0, !dbg !464
  call void @nn_sockbase_stopped(ptr noundef %55), !dbg !465
  br label %240, !dbg !466

56:                                               ; preds = %34
  %57 = load ptr, ptr %10, align 8, !dbg !467
  %58 = getelementptr inbounds %struct.nn_surveyor, ptr %57, i32 0, i32 2, !dbg !468
  %59 = load i32, ptr %58, align 8, !dbg !468
  switch i32 %59, label %235 [
    i32 1, label %60
    i32 2, label %79
    i32 3, label %126
    i32 4, label %160
    i32 5, label %216
  ], !dbg !469

60:                                               ; preds = %56
  %61 = load i32, ptr %6, align 4, !dbg !470
  switch i32 %61, label %73 [
    i32 -2, label %62
  ], !dbg !472

62:                                               ; preds = %60
  %63 = load i32, ptr %7, align 4, !dbg !473
  switch i32 %63, label %67 [
    i32 -2, label %64
  ], !dbg !475

64:                                               ; preds = %62
  %65 = load ptr, ptr %10, align 8, !dbg !476
  %66 = getelementptr inbounds %struct.nn_surveyor, ptr %65, i32 0, i32 2, !dbg !478
  store i32 2, ptr %66, align 8, !dbg !479
  br label %240, !dbg !480

67:                                               ; preds = %62
  br label %68, !dbg !481

68:                                               ; preds = %67
  %69 = load ptr, ptr @stderr, align 8, !dbg !482
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 341), !dbg !482
  call void @nn_err_abort() #4, !dbg !482
  unreachable, !dbg !482

71:                                               ; No predecessors!
  br label %72, !dbg !486

72:                                               ; preds = %71
  br label %73, !dbg !486

73:                                               ; preds = %60, %72
  br label %74, !dbg !487

74:                                               ; preds = %73
  %75 = load ptr, ptr @stderr, align 8, !dbg !488
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 345), !dbg !488
  call void @nn_err_abort() #4, !dbg !488
  unreachable, !dbg !488

77:                                               ; No predecessors!
  br label %78, !dbg !492

78:                                               ; preds = %77
  br label %79, !dbg !492

79:                                               ; preds = %56, %78
  %80 = load i32, ptr %6, align 4, !dbg !493
  switch i32 %80, label %120 [
    i32 -2, label %81
  ], !dbg !494

81:                                               ; preds = %79
  %82 = load i32, ptr %7, align 4, !dbg !495
  switch i32 %82, label %114 [
    i32 1, label %83
  ], !dbg !497

83:                                               ; preds = %81
  %84 = load ptr, ptr %10, align 8, !dbg !498
  %85 = getelementptr inbounds %struct.nn_surveyor, ptr %84, i32 0, i32 0, !dbg !500
  %86 = getelementptr inbounds %struct.nn_xsurveyor, ptr %85, i32 0, i32 0, !dbg !501
  %87 = load ptr, ptr %10, align 8, !dbg !502
  %88 = getelementptr inbounds %struct.nn_surveyor, ptr %87, i32 0, i32 5, !dbg !503
  %89 = call i32 @nn_xsurveyor_send(ptr noundef %86, ptr noundef %88), !dbg !504
  store i32 %89, ptr %9, align 4, !dbg !505
  br label %90, !dbg !506

90:                                               ; preds = %83
  %91 = load i32, ptr %9, align 4, !dbg !507
  %92 = icmp eq i32 %91, 0, !dbg !507
  %93 = xor i1 %92, true, !dbg !507
  %94 = zext i1 %93 to i32, !dbg !507
  %95 = sext i32 %94 to i64, !dbg !507
  %96 = icmp ne i64 %95, 0, !dbg !507
  br i1 %96, label %97, label %105, !dbg !510

97:                                               ; preds = %90
  %98 = load ptr, ptr @stderr, align 8, !dbg !511
  %99 = load i32, ptr %9, align 4, !dbg !511
  %100 = sub nsw i32 0, %99, !dbg !511
  %101 = call ptr @nn_err_strerror(i32 noundef %100), !dbg !511
  %102 = load i32, ptr %9, align 4, !dbg !511
  %103 = sub nsw i32 0, %102, !dbg !511
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef @.str.4, ptr noundef %101, i32 noundef %103, ptr noundef @.str.1, i32 noundef 360), !dbg !511
  call void @nn_err_abort() #4, !dbg !511
  unreachable, !dbg !511

105:                                              ; preds = %90
  br label %106, !dbg !510

106:                                              ; preds = %105
  %107 = load ptr, ptr %10, align 8, !dbg !513
  %108 = getelementptr inbounds %struct.nn_surveyor, ptr %107, i32 0, i32 4, !dbg !514
  %109 = load ptr, ptr %10, align 8, !dbg !515
  %110 = getelementptr inbounds %struct.nn_surveyor, ptr %109, i32 0, i32 6, !dbg !516
  %111 = load i32, ptr %110, align 8, !dbg !516
  call void @nn_timer_start(ptr noundef %108, i32 noundef %111), !dbg !517
  %112 = load ptr, ptr %10, align 8, !dbg !518
  %113 = getelementptr inbounds %struct.nn_surveyor, ptr %112, i32 0, i32 2, !dbg !519
  store i32 3, ptr %113, align 8, !dbg !520
  br label %240, !dbg !521

114:                                              ; preds = %81
  br label %115, !dbg !522

115:                                              ; preds = %114
  %116 = load ptr, ptr @stderr, align 8, !dbg !523
  %117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 366), !dbg !523
  call void @nn_err_abort() #4, !dbg !523
  unreachable, !dbg !523

118:                                              ; No predecessors!
  br label %119, !dbg !527

119:                                              ; preds = %118
  br label %120, !dbg !527

120:                                              ; preds = %79, %119
  br label %121, !dbg !528

121:                                              ; preds = %120
  %122 = load ptr, ptr @stderr, align 8, !dbg !529
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 370), !dbg !529
  call void @nn_err_abort() #4, !dbg !529
  unreachable, !dbg !529

124:                                              ; No predecessors!
  br label %125, !dbg !533

125:                                              ; preds = %124
  br label %126, !dbg !533

126:                                              ; preds = %56, %125
  %127 = load i32, ptr %6, align 4, !dbg !534
  switch i32 %127, label %154 [
    i32 -2, label %128
    i32 1, label %141
  ], !dbg !535

128:                                              ; preds = %126
  %129 = load i32, ptr %7, align 4, !dbg !536
  switch i32 %129, label %135 [
    i32 2, label %130
  ], !dbg !538

130:                                              ; preds = %128
  %131 = load ptr, ptr %10, align 8, !dbg !539
  %132 = getelementptr inbounds %struct.nn_surveyor, ptr %131, i32 0, i32 4, !dbg !541
  call void @nn_timer_stop(ptr noundef %132), !dbg !542
  %133 = load ptr, ptr %10, align 8, !dbg !543
  %134 = getelementptr inbounds %struct.nn_surveyor, ptr %133, i32 0, i32 2, !dbg !544
  store i32 4, ptr %134, align 8, !dbg !545
  br label %240, !dbg !546

135:                                              ; preds = %128
  br label %136, !dbg !547

136:                                              ; preds = %135
  %137 = load ptr, ptr @stderr, align 8, !dbg !548
  %138 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 387), !dbg !548
  call void @nn_err_abort() #4, !dbg !548
  unreachable, !dbg !548

139:                                              ; No predecessors!
  br label %140, !dbg !552

140:                                              ; preds = %139
  br label %141, !dbg !552

141:                                              ; preds = %126, %140
  %142 = load i32, ptr %7, align 4, !dbg !553
  switch i32 %142, label %148 [
    i32 1, label %143
  ], !dbg !554

143:                                              ; preds = %141
  %144 = load ptr, ptr %10, align 8, !dbg !555
  %145 = getelementptr inbounds %struct.nn_surveyor, ptr %144, i32 0, i32 4, !dbg !557
  call void @nn_timer_stop(ptr noundef %145), !dbg !558
  %146 = load ptr, ptr %10, align 8, !dbg !559
  %147 = getelementptr inbounds %struct.nn_surveyor, ptr %146, i32 0, i32 2, !dbg !560
  store i32 5, ptr %147, align 8, !dbg !561
  br label %240, !dbg !562

148:                                              ; preds = %141
  br label %149, !dbg !563

149:                                              ; preds = %148
  %150 = load ptr, ptr @stderr, align 8, !dbg !564
  %151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 397), !dbg !564
  call void @nn_err_abort() #4, !dbg !564
  unreachable, !dbg !564

152:                                              ; No predecessors!
  br label %153, !dbg !568

153:                                              ; preds = %152
  br label %154, !dbg !568

154:                                              ; preds = %126, %153
  br label %155, !dbg !569

155:                                              ; preds = %154
  %156 = load ptr, ptr @stderr, align 8, !dbg !570
  %157 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 401), !dbg !570
  call void @nn_err_abort() #4, !dbg !570
  unreachable, !dbg !570

158:                                              ; No predecessors!
  br label %159, !dbg !574

159:                                              ; preds = %158
  br label %160, !dbg !574

160:                                              ; preds = %56, %159
  %161 = load i32, ptr %6, align 4, !dbg !575
  switch i32 %161, label %210 [
    i32 -2, label %162
    i32 1, label %171
  ], !dbg !576

162:                                              ; preds = %160
  %163 = load i32, ptr %7, align 4, !dbg !577
  switch i32 %163, label %165 [
    i32 2, label %164
  ], !dbg !579

164:                                              ; preds = %162
  br label %240, !dbg !580

165:                                              ; preds = %162
  br label %166, !dbg !582

166:                                              ; preds = %165
  %167 = load ptr, ptr @stderr, align 8, !dbg !583
  %168 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 417), !dbg !583
  call void @nn_err_abort() #4, !dbg !583
  unreachable, !dbg !583

169:                                              ; No predecessors!
  br label %170, !dbg !587

170:                                              ; preds = %169
  br label %171, !dbg !587

171:                                              ; preds = %160, %170
  %172 = load i32, ptr %7, align 4, !dbg !588
  switch i32 %172, label %204 [
    i32 2, label %173
  ], !dbg !589

173:                                              ; preds = %171
  %174 = load ptr, ptr %10, align 8, !dbg !590
  %175 = getelementptr inbounds %struct.nn_surveyor, ptr %174, i32 0, i32 0, !dbg !592
  %176 = getelementptr inbounds %struct.nn_xsurveyor, ptr %175, i32 0, i32 0, !dbg !593
  %177 = load ptr, ptr %10, align 8, !dbg !594
  %178 = getelementptr inbounds %struct.nn_surveyor, ptr %177, i32 0, i32 5, !dbg !595
  %179 = call i32 @nn_xsurveyor_send(ptr noundef %176, ptr noundef %178), !dbg !596
  store i32 %179, ptr %9, align 4, !dbg !597
  br label %180, !dbg !598

180:                                              ; preds = %173
  %181 = load i32, ptr %9, align 4, !dbg !599
  %182 = icmp eq i32 %181, 0, !dbg !599
  %183 = xor i1 %182, true, !dbg !599
  %184 = zext i1 %183 to i32, !dbg !599
  %185 = sext i32 %184 to i64, !dbg !599
  %186 = icmp ne i64 %185, 0, !dbg !599
  br i1 %186, label %187, label %195, !dbg !602

187:                                              ; preds = %180
  %188 = load ptr, ptr @stderr, align 8, !dbg !603
  %189 = load i32, ptr %9, align 4, !dbg !603
  %190 = sub nsw i32 0, %189, !dbg !603
  %191 = call ptr @nn_err_strerror(i32 noundef %190), !dbg !603
  %192 = load i32, ptr %9, align 4, !dbg !603
  %193 = sub nsw i32 0, %192, !dbg !603
  %194 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %188, ptr noundef @.str.4, ptr noundef %191, i32 noundef %193, ptr noundef @.str.1, i32 noundef 425), !dbg !603
  call void @nn_err_abort() #4, !dbg !603
  unreachable, !dbg !603

195:                                              ; preds = %180
  br label %196, !dbg !602

196:                                              ; preds = %195
  %197 = load ptr, ptr %10, align 8, !dbg !605
  %198 = getelementptr inbounds %struct.nn_surveyor, ptr %197, i32 0, i32 4, !dbg !606
  %199 = load ptr, ptr %10, align 8, !dbg !607
  %200 = getelementptr inbounds %struct.nn_surveyor, ptr %199, i32 0, i32 6, !dbg !608
  %201 = load i32, ptr %200, align 8, !dbg !608
  call void @nn_timer_start(ptr noundef %198, i32 noundef %201), !dbg !609
  %202 = load ptr, ptr %10, align 8, !dbg !610
  %203 = getelementptr inbounds %struct.nn_surveyor, ptr %202, i32 0, i32 2, !dbg !611
  store i32 3, ptr %203, align 8, !dbg !612
  br label %240, !dbg !613

204:                                              ; preds = %171
  br label %205, !dbg !614

205:                                              ; preds = %204
  %206 = load ptr, ptr @stderr, align 8, !dbg !615
  %207 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %206, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 430), !dbg !615
  call void @nn_err_abort() #4, !dbg !615
  unreachable, !dbg !615

208:                                              ; No predecessors!
  br label %209, !dbg !619

209:                                              ; preds = %208
  br label %210, !dbg !619

210:                                              ; preds = %160, %209
  br label %211, !dbg !620

211:                                              ; preds = %210
  %212 = load ptr, ptr @stderr, align 8, !dbg !621
  %213 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 434), !dbg !621
  call void @nn_err_abort() #4, !dbg !621
  unreachable, !dbg !621

214:                                              ; No predecessors!
  br label %215, !dbg !625

215:                                              ; preds = %214
  br label %216, !dbg !625

216:                                              ; preds = %56, %215
  %217 = load i32, ptr %6, align 4, !dbg !626
  switch i32 %217, label %229 [
    i32 1, label %218
  ], !dbg !627

218:                                              ; preds = %216
  %219 = load i32, ptr %7, align 4, !dbg !628
  switch i32 %219, label %223 [
    i32 2, label %220
  ], !dbg !630

220:                                              ; preds = %218
  %221 = load ptr, ptr %10, align 8, !dbg !631
  %222 = getelementptr inbounds %struct.nn_surveyor, ptr %221, i32 0, i32 2, !dbg !633
  store i32 2, ptr %222, align 8, !dbg !634
  br label %240, !dbg !635

223:                                              ; preds = %218
  br label %224, !dbg !636

224:                                              ; preds = %223
  %225 = load ptr, ptr @stderr, align 8, !dbg !637
  %226 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %225, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 450), !dbg !637
  call void @nn_err_abort() #4, !dbg !637
  unreachable, !dbg !637

227:                                              ; No predecessors!
  br label %228, !dbg !641

228:                                              ; preds = %227
  br label %229, !dbg !641

229:                                              ; preds = %216, %228
  br label %230, !dbg !642

230:                                              ; preds = %229
  %231 = load ptr, ptr @stderr, align 8, !dbg !643
  %232 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %231, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 454), !dbg !643
  call void @nn_err_abort() #4, !dbg !643
  unreachable, !dbg !643

233:                                              ; No predecessors!
  br label %234, !dbg !647

234:                                              ; preds = %233
  br label %235, !dbg !647

235:                                              ; preds = %56, %234
  br label %236, !dbg !648

236:                                              ; preds = %235
  %237 = load ptr, ptr @stderr, align 8, !dbg !649
  %238 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %237, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 461), !dbg !649
  call void @nn_err_abort() #4, !dbg !649
  unreachable, !dbg !649

239:                                              ; No predecessors!
  br label %240, !dbg !653

240:                                              ; preds = %47, %48, %64, %106, %130, %143, %164, %196, %220, %239
  ret void, !dbg !654
}

declare ptr @nn_sockbase_getctx(ptr noundef) #1

declare void @nn_random_generate(ptr noundef, i64 noundef) #1

declare void @nn_timer_init(ptr noundef, i32 noundef, ptr noundef) #1

declare void @nn_msg_init(ptr noundef, i64 noundef) #1

declare void @nn_fsm_start(ptr noundef) #1

declare void @nn_timer_stop(ptr noundef) #1

declare i32 @nn_timer_isidle(ptr noundef) #1

declare void @nn_fsm_stopped_noevent(ptr noundef) #1

declare void @nn_sockbase_stopped(ptr noundef) #1

declare i32 @nn_xsurveyor_send(ptr noundef, ptr noundef) #1

declare ptr @nn_err_strerror(i32 noundef) #1

declare void @nn_timer_start(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_surveyor_stop(ptr noundef %0) #0 !dbg !655 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !656, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.declare(metadata ptr %3, metadata !658, metadata !DIExpression()), !dbg !659
  %4 = load ptr, ptr %2, align 8, !dbg !660
  %5 = icmp ne ptr %4, null, !dbg !660
  br i1 %5, label %6, label %9, !dbg !660

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !660
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !660
  br label %10, !dbg !660

9:                                                ; preds = %1
  br label %10, !dbg !660

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !660
  store ptr %11, ptr %3, align 8, !dbg !661
  %12 = load ptr, ptr %3, align 8, !dbg !662
  %13 = getelementptr inbounds %struct.nn_surveyor, ptr %12, i32 0, i32 1, !dbg !663
  call void @nn_fsm_stop(ptr noundef %13), !dbg !664
  ret void, !dbg !665
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_surveyor_destroy(ptr noundef %0) #0 !dbg !666 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !667, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.declare(metadata ptr %3, metadata !669, metadata !DIExpression()), !dbg !670
  %4 = load ptr, ptr %2, align 8, !dbg !671
  %5 = icmp ne ptr %4, null, !dbg !671
  br i1 %5, label %6, label %9, !dbg !671

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !671
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !671
  br label %10, !dbg !671

9:                                                ; preds = %1
  br label %10, !dbg !671

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !671
  store ptr %11, ptr %3, align 8, !dbg !672
  %12 = load ptr, ptr %3, align 8, !dbg !673
  call void @nn_surveyor_term(ptr noundef %12), !dbg !674
  %13 = load ptr, ptr %3, align 8, !dbg !675
  call void @nn_free(ptr noundef %13), !dbg !676
  ret void, !dbg !677
}

declare i32 @nn_xsurveyor_add(ptr noundef, ptr noundef) #1

declare void @nn_xsurveyor_rm(ptr noundef, ptr noundef) #1

declare void @nn_xsurveyor_in(ptr noundef, ptr noundef) #1

declare void @nn_xsurveyor_out(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_surveyor_events(ptr noundef %0) #0 !dbg !678 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.declare(metadata ptr %3, metadata !681, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.declare(metadata ptr %4, metadata !683, metadata !DIExpression()), !dbg !684
  %5 = load ptr, ptr %2, align 8, !dbg !685
  %6 = icmp ne ptr %5, null, !dbg !685
  br i1 %6, label %7, label %10, !dbg !685

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !685
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !685
  br label %11, !dbg !685

10:                                               ; preds = %1
  br label %11, !dbg !685

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !685
  store ptr %12, ptr %4, align 8, !dbg !686
  %13 = load ptr, ptr %4, align 8, !dbg !687
  %14 = getelementptr inbounds %struct.nn_surveyor, ptr %13, i32 0, i32 0, !dbg !688
  %15 = getelementptr inbounds %struct.nn_xsurveyor, ptr %14, i32 0, i32 0, !dbg !689
  %16 = call i32 @nn_xsurveyor_events(ptr noundef %15), !dbg !690
  store i32 %16, ptr %3, align 4, !dbg !691
  %17 = load ptr, ptr %4, align 8, !dbg !692
  %18 = call i32 @nn_surveyor_inprogress(ptr noundef %17), !dbg !694
  %19 = icmp ne i32 %18, 0, !dbg !694
  br i1 %19, label %23, label %20, !dbg !695

20:                                               ; preds = %11
  %21 = load i32, ptr %3, align 4, !dbg !696
  %22 = or i32 %21, 1, !dbg !696
  store i32 %22, ptr %3, align 4, !dbg !696
  br label %23, !dbg !697

23:                                               ; preds = %20, %11
  %24 = load i32, ptr %3, align 4, !dbg !698
  ret i32 %24, !dbg !699
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_surveyor_send(ptr noundef %0, ptr noundef %1) #0 !dbg !700 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !701, metadata !DIExpression()), !dbg !702
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !703, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.declare(metadata ptr %6, metadata !705, metadata !DIExpression()), !dbg !706
  %7 = load ptr, ptr %4, align 8, !dbg !707
  %8 = icmp ne ptr %7, null, !dbg !707
  br i1 %8, label %9, label %12, !dbg !707

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !707
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !707
  br label %13, !dbg !707

12:                                               ; preds = %2
  br label %13, !dbg !707

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !707
  store ptr %14, ptr %6, align 8, !dbg !708
  %15 = load ptr, ptr %6, align 8, !dbg !709
  %16 = getelementptr inbounds %struct.nn_surveyor, ptr %15, i32 0, i32 3, !dbg !710
  %17 = load i32, ptr %16, align 4, !dbg !711
  %18 = add i32 %17, 1, !dbg !711
  store i32 %18, ptr %16, align 4, !dbg !711
  br label %19, !dbg !712

19:                                               ; preds = %13
  %20 = load ptr, ptr %5, align 8, !dbg !713
  %21 = getelementptr inbounds %struct.nn_msg, ptr %20, i32 0, i32 0, !dbg !713
  %22 = call i64 @nn_chunkref_size(ptr noundef %21), !dbg !713
  %23 = icmp eq i64 %22, 0, !dbg !713
  %24 = xor i1 %23, true, !dbg !713
  %25 = zext i1 %24 to i32, !dbg !713
  %26 = sext i32 %25 to i64, !dbg !713
  %27 = icmp ne i64 %26, 0, !dbg !713
  br i1 %27, label %28, label %31, !dbg !716

28:                                               ; preds = %19
  %29 = load ptr, ptr @stderr, align 8, !dbg !717
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 194), !dbg !717
  call void @nn_err_abort() #4, !dbg !717
  unreachable, !dbg !717

31:                                               ; preds = %19
  br label %32, !dbg !716

32:                                               ; preds = %31
  %33 = load ptr, ptr %5, align 8, !dbg !719
  %34 = getelementptr inbounds %struct.nn_msg, ptr %33, i32 0, i32 0, !dbg !720
  call void @nn_chunkref_term(ptr noundef %34), !dbg !721
  %35 = load ptr, ptr %5, align 8, !dbg !722
  %36 = getelementptr inbounds %struct.nn_msg, ptr %35, i32 0, i32 0, !dbg !723
  call void @nn_chunkref_init(ptr noundef %36, i64 noundef 4), !dbg !724
  %37 = load ptr, ptr %5, align 8, !dbg !725
  %38 = getelementptr inbounds %struct.nn_msg, ptr %37, i32 0, i32 0, !dbg !726
  %39 = call ptr @nn_chunkref_data(ptr noundef %38), !dbg !727
  %40 = load ptr, ptr %6, align 8, !dbg !728
  %41 = getelementptr inbounds %struct.nn_surveyor, ptr %40, i32 0, i32 3, !dbg !729
  %42 = load i32, ptr %41, align 4, !dbg !729
  call void @nn_putl(ptr noundef %39, i32 noundef %42), !dbg !730
  %43 = load ptr, ptr %6, align 8, !dbg !731
  %44 = getelementptr inbounds %struct.nn_surveyor, ptr %43, i32 0, i32 5, !dbg !732
  call void @nn_msg_term(ptr noundef %44), !dbg !733
  %45 = load ptr, ptr %6, align 8, !dbg !734
  %46 = getelementptr inbounds %struct.nn_surveyor, ptr %45, i32 0, i32 5, !dbg !735
  %47 = load ptr, ptr %5, align 8, !dbg !736
  call void @nn_msg_mv(ptr noundef %46, ptr noundef %47), !dbg !737
  %48 = load ptr, ptr %5, align 8, !dbg !738
  call void @nn_msg_init(ptr noundef %48, i64 noundef 0), !dbg !739
  %49 = load ptr, ptr %6, align 8, !dbg !740
  %50 = call i32 @nn_surveyor_inprogress(ptr noundef %49), !dbg !740
  %51 = sext i32 %50 to i64, !dbg !740
  %52 = icmp ne i64 %51, 0, !dbg !740
  br i1 %52, label %53, label %64, !dbg !742

53:                                               ; preds = %32
  %54 = load ptr, ptr %6, align 8, !dbg !743
  %55 = getelementptr inbounds %struct.nn_surveyor, ptr %54, i32 0, i32 0, !dbg !746
  %56 = getelementptr inbounds %struct.nn_xsurveyor, ptr %55, i32 0, i32 0, !dbg !747
  %57 = call i32 @nn_xsurveyor_events(ptr noundef %56), !dbg !748
  %58 = and i32 %57, 2, !dbg !749
  %59 = icmp ne i32 %58, 0, !dbg !749
  br i1 %59, label %61, label %60, !dbg !750

60:                                               ; preds = %53
  store i32 -11, ptr %3, align 4, !dbg !751
  br label %67, !dbg !751

61:                                               ; preds = %53
  %62 = load ptr, ptr %6, align 8, !dbg !752
  %63 = getelementptr inbounds %struct.nn_surveyor, ptr %62, i32 0, i32 1, !dbg !753
  call void @nn_fsm_action(ptr noundef %63, i32 noundef 2), !dbg !754
  store i32 0, ptr %3, align 4, !dbg !755
  br label %67, !dbg !755

64:                                               ; preds = %32
  %65 = load ptr, ptr %6, align 8, !dbg !756
  %66 = getelementptr inbounds %struct.nn_surveyor, ptr %65, i32 0, i32 1, !dbg !757
  call void @nn_fsm_action(ptr noundef %66, i32 noundef 1), !dbg !758
  store i32 0, ptr %3, align 4, !dbg !759
  br label %67, !dbg !759

67:                                               ; preds = %64, %61, %60
  %68 = load i32, ptr %3, align 4, !dbg !760
  ret i32 %68, !dbg !760
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_surveyor_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !761 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !762, metadata !DIExpression()), !dbg !763
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !764, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.declare(metadata ptr %6, metadata !766, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.declare(metadata ptr %7, metadata !768, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.declare(metadata ptr %8, metadata !770, metadata !DIExpression()), !dbg !771
  %9 = load ptr, ptr %4, align 8, !dbg !772
  %10 = icmp ne ptr %9, null, !dbg !772
  br i1 %10, label %11, label %14, !dbg !772

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !dbg !772
  %13 = getelementptr inbounds i8, ptr %12, i64 0, !dbg !772
  br label %15, !dbg !772

14:                                               ; preds = %2
  br label %15, !dbg !772

15:                                               ; preds = %14, %11
  %16 = phi ptr [ %13, %11 ], [ null, %14 ], !dbg !772
  store ptr %16, ptr %7, align 8, !dbg !773
  %17 = load ptr, ptr %7, align 8, !dbg !774
  %18 = call i32 @nn_surveyor_inprogress(ptr noundef %17), !dbg !774
  %19 = icmp ne i32 %18, 0, !dbg !774
  %20 = xor i1 %19, true, !dbg !774
  %21 = zext i1 %20 to i32, !dbg !774
  %22 = sext i32 %21 to i64, !dbg !774
  %23 = icmp ne i64 %22, 0, !dbg !774
  br i1 %23, label %24, label %25, !dbg !776

24:                                               ; preds = %15
  store i32 -156384766, ptr %3, align 4, !dbg !777
  br label %84, !dbg !777

25:                                               ; preds = %15
  br label %26, !dbg !778

26:                                               ; preds = %25, %63, %77
  %27 = load ptr, ptr %7, align 8, !dbg !779
  %28 = getelementptr inbounds %struct.nn_surveyor, ptr %27, i32 0, i32 0, !dbg !781
  %29 = getelementptr inbounds %struct.nn_xsurveyor, ptr %28, i32 0, i32 0, !dbg !782
  %30 = load ptr, ptr %5, align 8, !dbg !783
  %31 = call i32 @nn_xsurveyor_recv(ptr noundef %29, ptr noundef %30), !dbg !784
  store i32 %31, ptr %6, align 4, !dbg !785
  %32 = load i32, ptr %6, align 4, !dbg !786
  %33 = icmp eq i32 %32, -11, !dbg !786
  %34 = zext i1 %33 to i32, !dbg !786
  %35 = sext i32 %34 to i64, !dbg !786
  %36 = icmp ne i64 %35, 0, !dbg !786
  br i1 %36, label %37, label %38, !dbg !788

37:                                               ; preds = %26
  store i32 -11, ptr %3, align 4, !dbg !789
  br label %84, !dbg !789

38:                                               ; preds = %26
  br label %39, !dbg !790

39:                                               ; preds = %38
  %40 = load i32, ptr %6, align 4, !dbg !791
  %41 = icmp eq i32 %40, 0, !dbg !791
  %42 = xor i1 %41, true, !dbg !791
  %43 = zext i1 %42 to i32, !dbg !791
  %44 = sext i32 %43 to i64, !dbg !791
  %45 = icmp ne i64 %44, 0, !dbg !791
  br i1 %45, label %46, label %54, !dbg !794

46:                                               ; preds = %39
  %47 = load ptr, ptr @stderr, align 8, !dbg !795
  %48 = load i32, ptr %6, align 4, !dbg !795
  %49 = sub nsw i32 0, %48, !dbg !795
  %50 = call ptr @nn_err_strerror(i32 noundef %49), !dbg !795
  %51 = load i32, ptr %6, align 4, !dbg !795
  %52 = sub nsw i32 0, %51, !dbg !795
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.4, ptr noundef %50, i32 noundef %52, ptr noundef @.str.1, i32 noundef 242), !dbg !795
  call void @nn_err_abort() #4, !dbg !795
  unreachable, !dbg !795

54:                                               ; preds = %39
  br label %55, !dbg !794

55:                                               ; preds = %54
  %56 = load ptr, ptr %5, align 8, !dbg !797
  %57 = getelementptr inbounds %struct.nn_msg, ptr %56, i32 0, i32 0, !dbg !797
  %58 = call i64 @nn_chunkref_size(ptr noundef %57), !dbg !797
  %59 = icmp ne i64 %58, 4, !dbg !797
  %60 = zext i1 %59 to i32, !dbg !797
  %61 = sext i32 %60 to i64, !dbg !797
  %62 = icmp ne i64 %61, 0, !dbg !797
  br i1 %62, label %63, label %64, !dbg !799

63:                                               ; preds = %55
  br label %26, !dbg !800, !llvm.loop !801

64:                                               ; preds = %55
  %65 = load ptr, ptr %5, align 8, !dbg !803
  %66 = getelementptr inbounds %struct.nn_msg, ptr %65, i32 0, i32 0, !dbg !804
  %67 = call ptr @nn_chunkref_data(ptr noundef %66), !dbg !805
  %68 = call i32 @nn_getl(ptr noundef %67), !dbg !806
  store i32 %68, ptr %8, align 4, !dbg !807
  %69 = load i32, ptr %8, align 4, !dbg !808
  %70 = load ptr, ptr %7, align 8, !dbg !808
  %71 = getelementptr inbounds %struct.nn_surveyor, ptr %70, i32 0, i32 3, !dbg !808
  %72 = load i32, ptr %71, align 4, !dbg !808
  %73 = icmp ne i32 %69, %72, !dbg !808
  %74 = zext i1 %73 to i32, !dbg !808
  %75 = sext i32 %74 to i64, !dbg !808
  %76 = icmp ne i64 %75, 0, !dbg !808
  br i1 %76, label %77, label %78, !dbg !810

77:                                               ; preds = %64
  br label %26, !dbg !811, !llvm.loop !801

78:                                               ; preds = %64
  %79 = load ptr, ptr %5, align 8, !dbg !812
  %80 = getelementptr inbounds %struct.nn_msg, ptr %79, i32 0, i32 0, !dbg !813
  call void @nn_chunkref_term(ptr noundef %80), !dbg !814
  %81 = load ptr, ptr %5, align 8, !dbg !815
  %82 = getelementptr inbounds %struct.nn_msg, ptr %81, i32 0, i32 0, !dbg !816
  call void @nn_chunkref_init(ptr noundef %82, i64 noundef 0), !dbg !817
  br label %83, !dbg !818

83:                                               ; preds = %78
  store i32 0, ptr %3, align 4, !dbg !819
  br label %84, !dbg !819

84:                                               ; preds = %83, %37, %24
  %85 = load i32, ptr %3, align 4, !dbg !820
  ret i32 %85, !dbg !820
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_surveyor_setopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !821 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !822, metadata !DIExpression()), !dbg !823
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !824, metadata !DIExpression()), !dbg !825
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !826, metadata !DIExpression()), !dbg !827
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !828, metadata !DIExpression()), !dbg !829
  store i64 %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !830, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.declare(metadata ptr %12, metadata !832, metadata !DIExpression()), !dbg !833
  %13 = load ptr, ptr %7, align 8, !dbg !834
  %14 = icmp ne ptr %13, null, !dbg !834
  br i1 %14, label %15, label %18, !dbg !834

15:                                               ; preds = %5
  %16 = load ptr, ptr %7, align 8, !dbg !834
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !834
  br label %19, !dbg !834

18:                                               ; preds = %5
  br label %19, !dbg !834

19:                                               ; preds = %18, %15
  %20 = phi ptr [ %17, %15 ], [ null, %18 ], !dbg !834
  store ptr %20, ptr %12, align 8, !dbg !835
  %21 = load i32, ptr %8, align 4, !dbg !836
  %22 = icmp ne i32 %21, 96, !dbg !838
  br i1 %22, label %23, label %24, !dbg !839

23:                                               ; preds = %19
  store i32 -92, ptr %6, align 4, !dbg !840
  br label %40, !dbg !840

24:                                               ; preds = %19
  %25 = load i32, ptr %9, align 4, !dbg !841
  %26 = icmp eq i32 %25, 1, !dbg !843
  br i1 %26, label %27, label %39, !dbg !844

27:                                               ; preds = %24
  %28 = load i64, ptr %11, align 8, !dbg !845
  %29 = icmp ne i64 %28, 4, !dbg !845
  %30 = zext i1 %29 to i32, !dbg !845
  %31 = sext i32 %30 to i64, !dbg !845
  %32 = icmp ne i64 %31, 0, !dbg !845
  br i1 %32, label %33, label %34, !dbg !848

33:                                               ; preds = %27
  store i32 -22, ptr %6, align 4, !dbg !849
  br label %40, !dbg !849

34:                                               ; preds = %27
  %35 = load ptr, ptr %10, align 8, !dbg !850
  %36 = load i32, ptr %35, align 4, !dbg !851
  %37 = load ptr, ptr %12, align 8, !dbg !852
  %38 = getelementptr inbounds %struct.nn_surveyor, ptr %37, i32 0, i32 6, !dbg !853
  store i32 %36, ptr %38, align 8, !dbg !854
  store i32 0, ptr %6, align 4, !dbg !855
  br label %40, !dbg !855

39:                                               ; preds = %24
  store i32 -92, ptr %6, align 4, !dbg !856
  br label %40, !dbg !856

40:                                               ; preds = %39, %34, %33, %23
  %41 = load i32, ptr %6, align 4, !dbg !857
  ret i32 %41, !dbg !857
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_surveyor_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !858 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !859, metadata !DIExpression()), !dbg !860
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !861, metadata !DIExpression()), !dbg !862
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !863, metadata !DIExpression()), !dbg !864
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !865, metadata !DIExpression()), !dbg !866
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !867, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.declare(metadata ptr %12, metadata !869, metadata !DIExpression()), !dbg !870
  %13 = load ptr, ptr %7, align 8, !dbg !871
  %14 = icmp ne ptr %13, null, !dbg !871
  br i1 %14, label %15, label %18, !dbg !871

15:                                               ; preds = %5
  %16 = load ptr, ptr %7, align 8, !dbg !871
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !871
  br label %19, !dbg !871

18:                                               ; preds = %5
  br label %19, !dbg !871

19:                                               ; preds = %18, %15
  %20 = phi ptr [ %17, %15 ], [ null, %18 ], !dbg !871
  store ptr %20, ptr %12, align 8, !dbg !872
  %21 = load i32, ptr %8, align 4, !dbg !873
  %22 = icmp ne i32 %21, 96, !dbg !875
  br i1 %22, label %23, label %24, !dbg !876

23:                                               ; preds = %19
  store i32 -92, ptr %6, align 4, !dbg !877
  br label %42, !dbg !877

24:                                               ; preds = %19
  %25 = load i32, ptr %9, align 4, !dbg !878
  %26 = icmp eq i32 %25, 1, !dbg !880
  br i1 %26, label %27, label %41, !dbg !881

27:                                               ; preds = %24
  %28 = load ptr, ptr %11, align 8, !dbg !882
  %29 = load i64, ptr %28, align 8, !dbg !882
  %30 = icmp ult i64 %29, 4, !dbg !882
  %31 = zext i1 %30 to i32, !dbg !882
  %32 = sext i32 %31 to i64, !dbg !882
  %33 = icmp ne i64 %32, 0, !dbg !882
  br i1 %33, label %34, label %35, !dbg !885

34:                                               ; preds = %27
  store i32 -22, ptr %6, align 4, !dbg !886
  br label %42, !dbg !886

35:                                               ; preds = %27
  %36 = load ptr, ptr %12, align 8, !dbg !887
  %37 = getelementptr inbounds %struct.nn_surveyor, ptr %36, i32 0, i32 6, !dbg !888
  %38 = load i32, ptr %37, align 8, !dbg !888
  %39 = load ptr, ptr %10, align 8, !dbg !889
  store i32 %38, ptr %39, align 4, !dbg !890
  %40 = load ptr, ptr %11, align 8, !dbg !891
  store i64 4, ptr %40, align 8, !dbg !892
  store i32 0, ptr %6, align 4, !dbg !893
  br label %42, !dbg !893

41:                                               ; preds = %24
  store i32 -92, ptr %6, align 4, !dbg !894
  br label %42, !dbg !894

42:                                               ; preds = %41, %35, %34, %23
  %43 = load i32, ptr %6, align 4, !dbg !895
  ret i32 %43, !dbg !895
}

declare void @nn_fsm_stop(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_surveyor_term(ptr noundef %0) #0 !dbg !896 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !899, metadata !DIExpression()), !dbg !900
  %3 = load ptr, ptr %2, align 8, !dbg !901
  %4 = getelementptr inbounds %struct.nn_surveyor, ptr %3, i32 0, i32 5, !dbg !902
  call void @nn_msg_term(ptr noundef %4), !dbg !903
  %5 = load ptr, ptr %2, align 8, !dbg !904
  %6 = getelementptr inbounds %struct.nn_surveyor, ptr %5, i32 0, i32 4, !dbg !905
  call void @nn_timer_term(ptr noundef %6), !dbg !906
  %7 = load ptr, ptr %2, align 8, !dbg !907
  %8 = getelementptr inbounds %struct.nn_surveyor, ptr %7, i32 0, i32 1, !dbg !908
  call void @nn_fsm_term(ptr noundef %8), !dbg !909
  %9 = load ptr, ptr %2, align 8, !dbg !910
  %10 = getelementptr inbounds %struct.nn_surveyor, ptr %9, i32 0, i32 0, !dbg !911
  call void @nn_xsurveyor_term(ptr noundef %10), !dbg !912
  ret void, !dbg !913
}

declare void @nn_free(ptr noundef) #1

declare void @nn_msg_term(ptr noundef) #1

declare void @nn_timer_term(ptr noundef) #1

declare void @nn_fsm_term(ptr noundef) #1

declare void @nn_xsurveyor_term(ptr noundef) #1

declare i32 @nn_xsurveyor_events(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_surveyor_inprogress(ptr noundef %0) #0 !dbg !914 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !917, metadata !DIExpression()), !dbg !918
  %3 = load ptr, ptr %2, align 8, !dbg !919
  %4 = getelementptr inbounds %struct.nn_surveyor, ptr %3, i32 0, i32 2, !dbg !920
  %5 = load i32, ptr %4, align 8, !dbg !920
  %6 = icmp eq i32 %5, 1, !dbg !921
  br i1 %6, label %17, label %7, !dbg !922

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !923
  %9 = getelementptr inbounds %struct.nn_surveyor, ptr %8, i32 0, i32 2, !dbg !924
  %10 = load i32, ptr %9, align 8, !dbg !924
  %11 = icmp eq i32 %10, 2, !dbg !925
  br i1 %11, label %17, label %12, !dbg !926

12:                                               ; preds = %7
  %13 = load ptr, ptr %2, align 8, !dbg !927
  %14 = getelementptr inbounds %struct.nn_surveyor, ptr %13, i32 0, i32 2, !dbg !928
  %15 = load i32, ptr %14, align 8, !dbg !928
  %16 = icmp eq i32 %15, 6, !dbg !929
  br label %17, !dbg !926

17:                                               ; preds = %12, %7, %1
  %18 = phi i1 [ true, %7 ], [ true, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i64, !dbg !919
  %20 = select i1 %18, i32 0, i32 1, !dbg !919
  ret i32 %20, !dbg !930
}

declare i64 @nn_chunkref_size(ptr noundef) #1

declare void @nn_chunkref_term(ptr noundef) #1

declare void @nn_chunkref_init(ptr noundef, i64 noundef) #1

declare void @nn_putl(ptr noundef, i32 noundef) #1

declare ptr @nn_chunkref_data(ptr noundef) #1

declare void @nn_msg_mv(ptr noundef, ptr noundef) #1

declare void @nn_fsm_action(ptr noundef, i32 noundef) #1

declare i32 @nn_xsurveyor_recv(ptr noundef, ptr noundef) #1

declare i32 @nn_getl(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!343, !344, !345, !346, !347, !348, !349}
!llvm.ident = !{!350}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_surveyor_socktype_struct", scope: !2, file: !7, line: 477, type: !299, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !295, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/protocols/survey/surveyor.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8e03d99de80aebdd81e5a71ba2ee1941")
!4 = !{!5, !293, !32, !294}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_surveyor", file: !7, line: 57, size: 6400, elements: !8)
!7 = !DIFile(filename: "./src/protocols/survey/surveyor.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8e03d99de80aebdd81e5a71ba2ee1941")
!8 = !{!9, !125, !155, !156, !160, !291, !292}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "xsurveyor", scope: !6, file: !7, line: 60, baseType: !10, size: 3456)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_xsurveyor", file: !11, line: 39, size: 3456, elements: !12)
!11 = !DIFile(filename: "./src/protocols/survey/xsurveyor.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "39d817f0e27772e0ca18c7c7ec6f6c26")
!12 = !{!13, !86, !102}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !10, file: !11, line: 42, baseType: !14, size: 128)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !15, line: 123, size: 128, elements: !16)
!15 = !DIFile(filename: "./src/protocols/survey/../../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
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
!86 = !DIDerivedType(tag: DW_TAG_member, name: "outpipes", scope: !10, file: !11, line: 45, baseType: !87, size: 192, offset: 128)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_dist", file: !88, line: 37, size: 192, elements: !89)
!88 = !DIFile(filename: "./src/protocols/survey/../utils/dist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8b675b0838905739d217dd53d5a3b3af")
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !87, file: !88, line: 38, baseType: !74, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !87, file: !88, line: 39, baseType: !92, size: 128, offset: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !93, line: 31, size: 128, elements: !94)
!93 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!94 = !{!95, !101}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !92, file: !93, line: 32, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !93, line: 26, size: 128, elements: !98)
!98 = !{!99, !100}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !93, line: 27, baseType: !96, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !97, file: !93, line: 28, baseType: !96, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !92, file: !93, line: 33, baseType: !96, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "inpipes", scope: !10, file: !11, line: 48, baseType: !103, size: 3136, offset: 320)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fq", file: !104, line: 37, size: 3136, elements: !105)
!104 = !DIFile(filename: "./src/protocols/survey/../utils/fq.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "342bacd48eb65b84f809ed6b86c6514c")
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "priolist", scope: !103, file: !104, line: 38, baseType: !107, size: 3136)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist", file: !108, line: 45, size: 3136, elements: !109)
!108 = !DIFile(filename: "./src/protocols/survey/../utils/priolist.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "e7a7c69c9c81fe3b1beae760b1a28137")
!109 = !{!110, !124}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !107, file: !108, line: 46, baseType: !111, size: 3072)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 3072, elements: !122)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_slot", file: !108, line: 40, size: 192, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !112, file: !108, line: 41, baseType: !92, size: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !112, file: !108, line: 42, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_priolist_data", file: !108, line: 34, size: 256, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !117, file: !108, line: 35, baseType: !33, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !117, file: !108, line: 36, baseType: !32, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !117, file: !108, line: 37, baseType: !97, size: 128, offset: 128)
!122 = !{!123}
!123 = !DISubrange(count: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !107, file: !108, line: 47, baseType: !32, size: 32, offset: 3072)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !6, file: !7, line: 63, baseType: !126, size: 640, offset: 3456)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !127, line: 66, size: 640, elements: !128)
!127 = !DIFile(filename: "./src/protocols/survey/../../aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!128 = !{!129, !135, !136, !137, !138, !139, !142}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !126, file: !127, line: 67, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !127, line: 58, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !134, !32, !32, !81}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !126, file: !127, line: 68, baseType: !32, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !126, file: !127, line: 69, baseType: !32, size: 32, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !126, file: !127, line: 70, baseType: !81, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !126, file: !127, line: 71, baseType: !134, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !126, file: !127, line: 72, baseType: !140, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !15, line: 32, flags: DIFlagFwdDecl)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !126, file: !127, line: 73, baseType: !143, size: 320, offset: 320)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !127, line: 34, size: 320, elements: !144)
!144 = !{!145, !146, !147, !148, !149}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !143, file: !127, line: 35, baseType: !134, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !143, file: !127, line: 36, baseType: !32, size: 32, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !143, file: !127, line: 37, baseType: !81, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !127, line: 38, baseType: !32, size: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !143, file: !127, line: 39, baseType: !150, size: 64, offset: 256)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !151, line: 33, size: 64, elements: !152)
!151 = !DIFile(filename: "./src/protocols/survey/../../aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !151, line: 34, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6, file: !7, line: 64, baseType: !32, size: 32, offset: 4096)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "surveyid", scope: !6, file: !7, line: 67, baseType: !157, size: 32, offset: 4128)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !60, line: 26, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !62, line: 42, baseType: !159)
!159 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !6, file: !7, line: 70, baseType: !161, size: 1664, offset: 4160)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timer", file: !162, line: 32, size: 1664, elements: !163)
!162 = !DIFile(filename: "./src/protocols/survey/../../aio/timer.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "36b8c8892aa99fc49b85b12a9caf893a")
!163 = !{!164, !165, !166, !172, !173, !186, !187, !290}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !161, file: !162, line: 33, baseType: !126, size: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !161, file: !162, line: 34, baseType: !32, size: 32, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "start_task", scope: !161, file: !162, line: 35, baseType: !167, size: 128, offset: 704)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_task", file: !168, line: 48, size: 128, elements: !169)
!168 = !DIFile(filename: "./src/protocols/survey/../../aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !167, file: !168, line: 49, baseType: !134, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !167, file: !168, line: 50, baseType: !150, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "stop_task", scope: !161, file: !162, line: 36, baseType: !167, size: 128, offset: 832)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "wtimer", scope: !161, file: !162, line: 37, baseType: !174, size: 256, offset: 960)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_timer", file: !175, line: 37, size: 256, elements: !176)
!175 = !DIFile(filename: "./src/protocols/survey/../../aio/worker.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "2b691693adce9b61547df7808f294867")
!176 = !{!177, !178}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !174, file: !175, line: 38, baseType: !134, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !174, file: !175, line: 39, baseType: !179, size: 192, offset: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset_hndl", file: !180, line: 32, size: 192, elements: !181)
!180 = !DIFile(filename: "./src/protocols/survey/../../aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !179, file: !180, line: 33, baseType: !97, size: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !179, file: !180, line: 34, baseType: !184, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !60, line: 27, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !62, line: 45, baseType: !76)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !161, file: !162, line: 38, baseType: !143, size: 320, offset: 1216)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !161, file: !162, line: 39, baseType: !188, size: 64, offset: 1536)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !168, line: 53, size: 1408, elements: !190)
!190 = !{!191, !227, !232, !233, !239, !266, !267, !277}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !189, file: !168, line: 54, baseType: !192, size: 320)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !193, line: 32, size: 320, elements: !194)
!193 = !DIFile(filename: "./src/protocols/survey/../../aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !192, file: !193, line: 36, baseType: !196, size: 320)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !197, line: 72, baseType: !198)
!197 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !197, line: 67, size: 320, elements: !199)
!199 = !{!200, !220, !225}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !198, file: !197, line: 69, baseType: !201, size: 320)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !202, line: 22, size: 320, elements: !203)
!202 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!203 = !{!204, !205, !206, !207, !208, !209, !211, !212}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !201, file: !202, line: 24, baseType: !32, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !201, file: !202, line: 25, baseType: !159, size: 32, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !201, file: !202, line: 26, baseType: !32, size: 32, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !201, file: !202, line: 28, baseType: !159, size: 32, offset: 96)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !201, file: !202, line: 32, baseType: !32, size: 32, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !201, file: !202, line: 34, baseType: !210, size: 16, offset: 160)
!210 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !201, file: !202, line: 35, baseType: !210, size: 16, offset: 176)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !201, file: !202, line: 36, baseType: !213, size: 128, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !214, line: 55, baseType: !215)
!214 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !214, line: 51, size: 128, elements: !216)
!216 = !{!217, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !215, file: !214, line: 53, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !215, file: !214, line: 54, baseType: !218, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !198, file: !197, line: 70, baseType: !221, size: 320)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 320, elements: !223)
!222 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!223 = !{!224}
!224 = !DISubrange(count: 40)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !198, file: !197, line: 71, baseType: !226, size: 64)
!226 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !189, file: !168, line: 55, baseType: !228, size: 128, offset: 320)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !151, line: 37, size: 128, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !228, file: !151, line: 38, baseType: !154, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !228, file: !151, line: 39, baseType: !154, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !189, file: !168, line: 56, baseType: !150, size: 64, offset: 448)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !189, file: !168, line: 57, baseType: !234, size: 64, offset: 512)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !235, line: 25, size: 64, elements: !236)
!235 = !DIFile(filename: "src/utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !234, file: !235, line: 26, baseType: !32, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !234, file: !235, line: 27, baseType: !32, size: 32, offset: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !189, file: !168, line: 58, baseType: !240, size: 320, offset: 576)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !241, line: 31, size: 320, elements: !242)
!241 = !DIFile(filename: "./src/protocols/survey/../../aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!242 = !{!243, !244, !245, !246, !254, !265}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !240, file: !241, line: 34, baseType: !32, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !240, file: !241, line: 37, baseType: !32, size: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !240, file: !241, line: 40, baseType: !32, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !240, file: !241, line: 43, baseType: !247, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !249, line: 36, size: 64, elements: !250)
!249 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!250 = !{!251, !252, !253}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !248, file: !249, line: 38, baseType: !32, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !248, file: !249, line: 39, baseType: !210, size: 16, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !248, file: !249, line: 40, baseType: !210, size: 16, offset: 48)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !240, file: !241, line: 52, baseType: !255, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !241, line: 48, size: 128, elements: !257)
!257 = !{!258, !263, !264}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !256, file: !241, line: 49, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !241, line: 27, size: 32, elements: !261)
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !260, file: !241, line: 28, baseType: !32, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !256, file: !241, line: 50, baseType: !32, size: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !241, line: 51, baseType: !32, size: 32, offset: 96)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !240, file: !241, line: 55, baseType: !32, size: 32, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !189, file: !168, line: 59, baseType: !260, size: 32, offset: 896)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !189, file: !168, line: 60, baseType: !268, size: 256, offset: 960)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !180, line: 37, size: 256, elements: !269)
!269 = !{!270, !276}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !268, file: !180, line: 38, baseType: !271, size: 128)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !272, line: 31, size: 128, elements: !273)
!272 = !DIFile(filename: "./src/protocols/survey/../../aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !271, file: !272, line: 33, baseType: !184, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !271, file: !272, line: 34, baseType: !184, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !268, file: !180, line: 39, baseType: !92, size: 128, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !189, file: !168, line: 61, baseType: !278, size: 192, offset: 1216)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !279, line: 25, size: 192, elements: !280)
!279 = !DIFile(filename: "src/utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!280 = !{!281, !287, !288}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !278, file: !279, line: 27, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !284, line: 28, baseType: !285)
!284 = !DIFile(filename: "./src/protocols/survey/../../aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!285 = !DISubroutineType(types: !286)
!286 = !{null, !81}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !278, file: !279, line: 28, baseType: !81, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !278, file: !279, line: 29, baseType: !289, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !197, line: 27, baseType: !76)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !161, file: !162, line: 40, baseType: !32, size: 32, offset: 1600)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tosend", scope: !6, file: !7, line: 73, baseType: !50, size: 512, offset: 5824)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !6, file: !7, line: 76, baseType: !32, size: 32, offset: 6336)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!295 = !{!296, !0, !314, !319, !324, !329, !334, !339, !341}
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "nn_surveyor_socktype", scope: !2, file: !7, line: 486, type: !298, isLocal: false, isDefinition: true)
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
!313 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !299, file: !15, line: 183, baseType: !97, size: 128, offset: 256)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !7, line: 470, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 184, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 23)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !7, line: 470, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 272, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 34)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !7, line: 341, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 240, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 30)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !7, line: 341, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 16, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 2)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !7, line: 360, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 136, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 17)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "nn_surveyor_sockbase_vfptr", scope: !2, file: !7, line: 97, type: !19, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !7, line: 194, type: !321, isLocal: true, isDefinition: true)
!343 = !{i32 7, !"Dwarf Version", i32 5}
!344 = !{i32 2, !"Debug Info Version", i32 3}
!345 = !{i32 1, !"wchar_size", i32 4}
!346 = !{i32 8, !"PIC Level", i32 2}
!347 = !{i32 7, !"PIE Level", i32 2}
!348 = !{i32 7, !"uwtable", i32 2}
!349 = !{i32 7, !"frame-pointer", i32 2}
!350 = !{!"clang version 16.0.0"}
!351 = distinct !DISubprogram(name: "nn_surveyor_create", scope: !7, file: !7, line: 465, type: !306, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!352 = !{}
!353 = !DILocalVariable(name: "hint", arg: 1, scope: !351, file: !7, line: 465, type: !81)
!354 = !DILocation(line: 465, column: 38, scope: !351)
!355 = !DILocalVariable(name: "sockbase", arg: 2, scope: !351, file: !7, line: 465, type: !308)
!356 = !DILocation(line: 465, column: 65, scope: !351)
!357 = !DILocalVariable(name: "self", scope: !351, file: !7, line: 467, type: !5)
!358 = !DILocation(line: 467, column: 25, scope: !351)
!359 = !DILocation(line: 469, column: 12, scope: !351)
!360 = !DILocation(line: 469, column: 10, scope: !351)
!361 = !DILocation(line: 470, column: 5, scope: !351)
!362 = !DILocation(line: 470, column: 5, scope: !363)
!363 = distinct !DILexicalBlock(scope: !364, file: !7, line: 470, column: 5)
!364 = distinct !DILexicalBlock(scope: !351, file: !7, line: 470, column: 5)
!365 = !DILocation(line: 470, column: 5, scope: !364)
!366 = !DILocation(line: 470, column: 5, scope: !367)
!367 = distinct !DILexicalBlock(scope: !363, file: !7, line: 470, column: 5)
!368 = !DILocation(line: 471, column: 23, scope: !351)
!369 = !DILocation(line: 471, column: 58, scope: !351)
!370 = !DILocation(line: 471, column: 5, scope: !351)
!371 = !DILocation(line: 472, column: 18, scope: !351)
!372 = !DILocation(line: 472, column: 24, scope: !351)
!373 = !DILocation(line: 472, column: 34, scope: !351)
!374 = !DILocation(line: 472, column: 6, scope: !351)
!375 = !DILocation(line: 472, column: 15, scope: !351)
!376 = !DILocation(line: 474, column: 5, scope: !351)
!377 = distinct !DISubprogram(name: "nn_surveyor_init", scope: !7, file: !7, line: 111, type: !378, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !5, !18, !81}
!380 = !DILocalVariable(name: "self", arg: 1, scope: !377, file: !7, line: 111, type: !5)
!381 = !DILocation(line: 111, column: 51, scope: !377)
!382 = !DILocalVariable(name: "vfptr", arg: 2, scope: !377, file: !7, line: 112, type: !18)
!383 = !DILocation(line: 112, column: 37, scope: !377)
!384 = !DILocalVariable(name: "hint", arg: 3, scope: !377, file: !7, line: 112, type: !81)
!385 = !DILocation(line: 112, column: 50, scope: !377)
!386 = !DILocation(line: 114, column: 25, scope: !377)
!387 = !DILocation(line: 114, column: 31, scope: !377)
!388 = !DILocation(line: 114, column: 42, scope: !377)
!389 = !DILocation(line: 114, column: 49, scope: !377)
!390 = !DILocation(line: 114, column: 5, scope: !377)
!391 = !DILocation(line: 115, column: 24, scope: !377)
!392 = !DILocation(line: 115, column: 30, scope: !377)
!393 = !DILocation(line: 116, column: 30, scope: !377)
!394 = !DILocation(line: 116, column: 36, scope: !377)
!395 = !DILocation(line: 116, column: 46, scope: !377)
!396 = !DILocation(line: 116, column: 9, scope: !377)
!397 = !DILocation(line: 115, column: 5, scope: !377)
!398 = !DILocation(line: 117, column: 5, scope: !377)
!399 = !DILocation(line: 117, column: 11, scope: !377)
!400 = !DILocation(line: 117, column: 17, scope: !377)
!401 = !DILocation(line: 121, column: 26, scope: !377)
!402 = !DILocation(line: 121, column: 32, scope: !377)
!403 = !DILocation(line: 121, column: 5, scope: !377)
!404 = !DILocation(line: 123, column: 21, scope: !377)
!405 = !DILocation(line: 123, column: 27, scope: !377)
!406 = !DILocation(line: 123, column: 67, scope: !377)
!407 = !DILocation(line: 123, column: 73, scope: !377)
!408 = !DILocation(line: 123, column: 5, scope: !377)
!409 = !DILocation(line: 124, column: 19, scope: !377)
!410 = !DILocation(line: 124, column: 25, scope: !377)
!411 = !DILocation(line: 124, column: 5, scope: !377)
!412 = !DILocation(line: 125, column: 5, scope: !377)
!413 = !DILocation(line: 125, column: 11, scope: !377)
!414 = !DILocation(line: 125, column: 20, scope: !377)
!415 = !DILocation(line: 128, column: 20, scope: !377)
!416 = !DILocation(line: 128, column: 26, scope: !377)
!417 = !DILocation(line: 128, column: 5, scope: !377)
!418 = !DILocation(line: 129, column: 1, scope: !377)
!419 = distinct !DISubprogram(name: "nn_surveyor_handler", scope: !7, file: !7, line: 302, type: !132, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!420 = !DILocalVariable(name: "self", arg: 1, scope: !419, file: !7, line: 302, type: !134)
!421 = !DILocation(line: 302, column: 49, scope: !419)
!422 = !DILocalVariable(name: "src", arg: 2, scope: !419, file: !7, line: 302, type: !32)
!423 = !DILocation(line: 302, column: 59, scope: !419)
!424 = !DILocalVariable(name: "type", arg: 3, scope: !419, file: !7, line: 302, type: !32)
!425 = !DILocation(line: 302, column: 68, scope: !419)
!426 = !DILocalVariable(name: "srcptr", arg: 4, scope: !419, file: !7, line: 303, type: !81)
!427 = !DILocation(line: 303, column: 11, scope: !419)
!428 = !DILocalVariable(name: "rc", scope: !419, file: !7, line: 305, type: !32)
!429 = !DILocation(line: 305, column: 9, scope: !419)
!430 = !DILocalVariable(name: "surveyor", scope: !419, file: !7, line: 306, type: !5)
!431 = !DILocation(line: 306, column: 25, scope: !419)
!432 = !DILocation(line: 308, column: 16, scope: !419)
!433 = !DILocation(line: 308, column: 14, scope: !419)
!434 = !DILocation(line: 313, column: 9, scope: !435)
!435 = distinct !DILexicalBlock(scope: !419, file: !7, line: 313, column: 9)
!436 = !DILocation(line: 0, scope: !435)
!437 = !DILocation(line: 313, column: 9, scope: !419)
!438 = !DILocation(line: 314, column: 25, scope: !439)
!439 = distinct !DILexicalBlock(scope: !435, file: !7, line: 313, column: 63)
!440 = !DILocation(line: 314, column: 35, scope: !439)
!441 = !DILocation(line: 314, column: 9, scope: !439)
!442 = !DILocation(line: 315, column: 9, scope: !439)
!443 = !DILocation(line: 315, column: 19, scope: !439)
!444 = !DILocation(line: 315, column: 25, scope: !439)
!445 = !DILocation(line: 316, column: 5, scope: !439)
!446 = !DILocation(line: 317, column: 9, scope: !447)
!447 = distinct !DILexicalBlock(scope: !419, file: !7, line: 317, column: 9)
!448 = !DILocation(line: 317, column: 9, scope: !419)
!449 = !DILocation(line: 318, column: 32, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !7, line: 318, column: 13)
!451 = distinct !DILexicalBlock(scope: !447, file: !7, line: 317, column: 66)
!452 = !DILocation(line: 318, column: 42, scope: !450)
!453 = !DILocation(line: 318, column: 14, scope: !450)
!454 = !DILocation(line: 318, column: 13, scope: !451)
!455 = !DILocation(line: 319, column: 13, scope: !450)
!456 = !DILocation(line: 320, column: 9, scope: !451)
!457 = !DILocation(line: 320, column: 19, scope: !451)
!458 = !DILocation(line: 320, column: 25, scope: !451)
!459 = !DILocation(line: 321, column: 34, scope: !451)
!460 = !DILocation(line: 321, column: 44, scope: !451)
!461 = !DILocation(line: 321, column: 9, scope: !451)
!462 = !DILocation(line: 322, column: 31, scope: !451)
!463 = !DILocation(line: 322, column: 41, scope: !451)
!464 = !DILocation(line: 322, column: 51, scope: !451)
!465 = !DILocation(line: 322, column: 9, scope: !451)
!466 = !DILocation(line: 323, column: 9, scope: !451)
!467 = !DILocation(line: 326, column: 13, scope: !419)
!468 = !DILocation(line: 326, column: 23, scope: !419)
!469 = !DILocation(line: 326, column: 5, scope: !419)
!470 = !DILocation(line: 333, column: 17, scope: !471)
!471 = distinct !DILexicalBlock(scope: !419, file: !7, line: 326, column: 30)
!472 = !DILocation(line: 333, column: 9, scope: !471)
!473 = !DILocation(line: 336, column: 21, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !7, line: 333, column: 22)
!475 = !DILocation(line: 336, column: 13, scope: !474)
!476 = !DILocation(line: 338, column: 17, scope: !477)
!477 = distinct !DILexicalBlock(scope: !474, file: !7, line: 336, column: 27)
!478 = !DILocation(line: 338, column: 27, scope: !477)
!479 = !DILocation(line: 338, column: 33, scope: !477)
!480 = !DILocation(line: 339, column: 17, scope: !477)
!481 = !DILocation(line: 341, column: 17, scope: !477)
!482 = !DILocation(line: 341, column: 17, scope: !483)
!483 = distinct !DILexicalBlock(scope: !484, file: !7, line: 341, column: 17)
!484 = distinct !DILexicalBlock(scope: !485, file: !7, line: 341, column: 17)
!485 = distinct !DILexicalBlock(scope: !477, file: !7, line: 341, column: 17)
!486 = !DILocation(line: 342, column: 13, scope: !477)
!487 = !DILocation(line: 345, column: 13, scope: !474)
!488 = !DILocation(line: 345, column: 13, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !7, line: 345, column: 13)
!490 = distinct !DILexicalBlock(scope: !491, file: !7, line: 345, column: 13)
!491 = distinct !DILexicalBlock(scope: !474, file: !7, line: 345, column: 13)
!492 = !DILocation(line: 346, column: 9, scope: !474)
!493 = !DILocation(line: 353, column: 17, scope: !471)
!494 = !DILocation(line: 353, column: 9, scope: !471)
!495 = !DILocation(line: 356, column: 21, scope: !496)
!496 = distinct !DILexicalBlock(scope: !471, file: !7, line: 353, column: 22)
!497 = !DILocation(line: 356, column: 13, scope: !496)
!498 = !DILocation(line: 358, column: 42, scope: !499)
!499 = distinct !DILexicalBlock(scope: !496, file: !7, line: 356, column: 27)
!500 = !DILocation(line: 358, column: 52, scope: !499)
!501 = !DILocation(line: 358, column: 62, scope: !499)
!502 = !DILocation(line: 359, column: 22, scope: !499)
!503 = !DILocation(line: 359, column: 32, scope: !499)
!504 = !DILocation(line: 358, column: 22, scope: !499)
!505 = !DILocation(line: 358, column: 20, scope: !499)
!506 = !DILocation(line: 360, column: 17, scope: !499)
!507 = !DILocation(line: 360, column: 17, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !7, line: 360, column: 17)
!509 = distinct !DILexicalBlock(scope: !499, file: !7, line: 360, column: 17)
!510 = !DILocation(line: 360, column: 17, scope: !509)
!511 = !DILocation(line: 360, column: 17, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !7, line: 360, column: 17)
!513 = !DILocation(line: 361, column: 34, scope: !499)
!514 = !DILocation(line: 361, column: 44, scope: !499)
!515 = !DILocation(line: 361, column: 51, scope: !499)
!516 = !DILocation(line: 361, column: 61, scope: !499)
!517 = !DILocation(line: 361, column: 17, scope: !499)
!518 = !DILocation(line: 362, column: 17, scope: !499)
!519 = !DILocation(line: 362, column: 27, scope: !499)
!520 = !DILocation(line: 362, column: 33, scope: !499)
!521 = !DILocation(line: 363, column: 17, scope: !499)
!522 = !DILocation(line: 366, column: 17, scope: !499)
!523 = !DILocation(line: 366, column: 17, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !7, line: 366, column: 17)
!525 = distinct !DILexicalBlock(scope: !526, file: !7, line: 366, column: 17)
!526 = distinct !DILexicalBlock(scope: !499, file: !7, line: 366, column: 17)
!527 = !DILocation(line: 367, column: 13, scope: !499)
!528 = !DILocation(line: 370, column: 13, scope: !496)
!529 = !DILocation(line: 370, column: 13, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !7, line: 370, column: 13)
!531 = distinct !DILexicalBlock(scope: !532, file: !7, line: 370, column: 13)
!532 = distinct !DILexicalBlock(scope: !496, file: !7, line: 370, column: 13)
!533 = !DILocation(line: 371, column: 9, scope: !496)
!534 = !DILocation(line: 378, column: 17, scope: !471)
!535 = !DILocation(line: 378, column: 9, scope: !471)
!536 = !DILocation(line: 381, column: 21, scope: !537)
!537 = distinct !DILexicalBlock(scope: !471, file: !7, line: 378, column: 22)
!538 = !DILocation(line: 381, column: 13, scope: !537)
!539 = !DILocation(line: 383, column: 33, scope: !540)
!540 = distinct !DILexicalBlock(scope: !537, file: !7, line: 381, column: 27)
!541 = !DILocation(line: 383, column: 43, scope: !540)
!542 = !DILocation(line: 383, column: 17, scope: !540)
!543 = !DILocation(line: 384, column: 17, scope: !540)
!544 = !DILocation(line: 384, column: 27, scope: !540)
!545 = !DILocation(line: 384, column: 33, scope: !540)
!546 = !DILocation(line: 385, column: 17, scope: !540)
!547 = !DILocation(line: 387, column: 17, scope: !540)
!548 = !DILocation(line: 387, column: 17, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !7, line: 387, column: 17)
!550 = distinct !DILexicalBlock(scope: !551, file: !7, line: 387, column: 17)
!551 = distinct !DILexicalBlock(scope: !540, file: !7, line: 387, column: 17)
!552 = !DILocation(line: 388, column: 13, scope: !540)
!553 = !DILocation(line: 391, column: 21, scope: !537)
!554 = !DILocation(line: 391, column: 13, scope: !537)
!555 = !DILocation(line: 393, column: 33, scope: !556)
!556 = distinct !DILexicalBlock(scope: !537, file: !7, line: 391, column: 27)
!557 = !DILocation(line: 393, column: 43, scope: !556)
!558 = !DILocation(line: 393, column: 17, scope: !556)
!559 = !DILocation(line: 394, column: 17, scope: !556)
!560 = !DILocation(line: 394, column: 27, scope: !556)
!561 = !DILocation(line: 394, column: 33, scope: !556)
!562 = !DILocation(line: 395, column: 17, scope: !556)
!563 = !DILocation(line: 397, column: 17, scope: !556)
!564 = !DILocation(line: 397, column: 17, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !7, line: 397, column: 17)
!566 = distinct !DILexicalBlock(scope: !567, file: !7, line: 397, column: 17)
!567 = distinct !DILexicalBlock(scope: !556, file: !7, line: 397, column: 17)
!568 = !DILocation(line: 398, column: 13, scope: !556)
!569 = !DILocation(line: 401, column: 13, scope: !537)
!570 = !DILocation(line: 401, column: 13, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !7, line: 401, column: 13)
!572 = distinct !DILexicalBlock(scope: !573, file: !7, line: 401, column: 13)
!573 = distinct !DILexicalBlock(scope: !537, file: !7, line: 401, column: 13)
!574 = !DILocation(line: 402, column: 9, scope: !537)
!575 = !DILocation(line: 410, column: 17, scope: !471)
!576 = !DILocation(line: 410, column: 9, scope: !471)
!577 = !DILocation(line: 413, column: 21, scope: !578)
!578 = distinct !DILexicalBlock(scope: !471, file: !7, line: 410, column: 22)
!579 = !DILocation(line: 413, column: 13, scope: !578)
!580 = !DILocation(line: 415, column: 17, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !7, line: 413, column: 27)
!582 = !DILocation(line: 417, column: 17, scope: !581)
!583 = !DILocation(line: 417, column: 17, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !7, line: 417, column: 17)
!585 = distinct !DILexicalBlock(scope: !586, file: !7, line: 417, column: 17)
!586 = distinct !DILexicalBlock(scope: !581, file: !7, line: 417, column: 17)
!587 = !DILocation(line: 418, column: 13, scope: !581)
!588 = !DILocation(line: 421, column: 21, scope: !578)
!589 = !DILocation(line: 421, column: 13, scope: !578)
!590 = !DILocation(line: 423, column: 42, scope: !591)
!591 = distinct !DILexicalBlock(scope: !578, file: !7, line: 421, column: 27)
!592 = !DILocation(line: 423, column: 52, scope: !591)
!593 = !DILocation(line: 423, column: 62, scope: !591)
!594 = !DILocation(line: 424, column: 22, scope: !591)
!595 = !DILocation(line: 424, column: 32, scope: !591)
!596 = !DILocation(line: 423, column: 22, scope: !591)
!597 = !DILocation(line: 423, column: 20, scope: !591)
!598 = !DILocation(line: 425, column: 17, scope: !591)
!599 = !DILocation(line: 425, column: 17, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !7, line: 425, column: 17)
!601 = distinct !DILexicalBlock(scope: !591, file: !7, line: 425, column: 17)
!602 = !DILocation(line: 425, column: 17, scope: !601)
!603 = !DILocation(line: 425, column: 17, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !7, line: 425, column: 17)
!605 = !DILocation(line: 426, column: 34, scope: !591)
!606 = !DILocation(line: 426, column: 44, scope: !591)
!607 = !DILocation(line: 426, column: 51, scope: !591)
!608 = !DILocation(line: 426, column: 61, scope: !591)
!609 = !DILocation(line: 426, column: 17, scope: !591)
!610 = !DILocation(line: 427, column: 17, scope: !591)
!611 = !DILocation(line: 427, column: 27, scope: !591)
!612 = !DILocation(line: 427, column: 33, scope: !591)
!613 = !DILocation(line: 428, column: 17, scope: !591)
!614 = !DILocation(line: 430, column: 17, scope: !591)
!615 = !DILocation(line: 430, column: 17, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !7, line: 430, column: 17)
!617 = distinct !DILexicalBlock(scope: !618, file: !7, line: 430, column: 17)
!618 = distinct !DILexicalBlock(scope: !591, file: !7, line: 430, column: 17)
!619 = !DILocation(line: 431, column: 13, scope: !591)
!620 = !DILocation(line: 434, column: 13, scope: !578)
!621 = !DILocation(line: 434, column: 13, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !7, line: 434, column: 13)
!623 = distinct !DILexicalBlock(scope: !624, file: !7, line: 434, column: 13)
!624 = distinct !DILexicalBlock(scope: !578, file: !7, line: 434, column: 13)
!625 = !DILocation(line: 435, column: 9, scope: !578)
!626 = !DILocation(line: 442, column: 17, scope: !471)
!627 = !DILocation(line: 442, column: 9, scope: !471)
!628 = !DILocation(line: 445, column: 21, scope: !629)
!629 = distinct !DILexicalBlock(scope: !471, file: !7, line: 442, column: 22)
!630 = !DILocation(line: 445, column: 13, scope: !629)
!631 = !DILocation(line: 447, column: 17, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !7, line: 445, column: 27)
!633 = !DILocation(line: 447, column: 27, scope: !632)
!634 = !DILocation(line: 447, column: 33, scope: !632)
!635 = !DILocation(line: 448, column: 17, scope: !632)
!636 = !DILocation(line: 450, column: 17, scope: !632)
!637 = !DILocation(line: 450, column: 17, scope: !638)
!638 = distinct !DILexicalBlock(scope: !639, file: !7, line: 450, column: 17)
!639 = distinct !DILexicalBlock(scope: !640, file: !7, line: 450, column: 17)
!640 = distinct !DILexicalBlock(scope: !632, file: !7, line: 450, column: 17)
!641 = !DILocation(line: 451, column: 13, scope: !632)
!642 = !DILocation(line: 454, column: 13, scope: !629)
!643 = !DILocation(line: 454, column: 13, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !7, line: 454, column: 13)
!645 = distinct !DILexicalBlock(scope: !646, file: !7, line: 454, column: 13)
!646 = distinct !DILexicalBlock(scope: !629, file: !7, line: 454, column: 13)
!647 = !DILocation(line: 455, column: 9, scope: !629)
!648 = !DILocation(line: 461, column: 9, scope: !471)
!649 = !DILocation(line: 461, column: 9, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !7, line: 461, column: 9)
!651 = distinct !DILexicalBlock(scope: !652, file: !7, line: 461, column: 9)
!652 = distinct !DILexicalBlock(scope: !471, file: !7, line: 461, column: 9)
!653 = !DILocation(line: 462, column: 5, scope: !471)
!654 = !DILocation(line: 463, column: 1, scope: !419)
!655 = distinct !DISubprogram(name: "nn_surveyor_stop", scope: !7, file: !7, line: 139, type: !24, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!656 = !DILocalVariable(name: "self", arg: 1, scope: !655, file: !7, line: 139, type: !26)
!657 = !DILocation(line: 139, column: 44, scope: !655)
!658 = !DILocalVariable(name: "surveyor", scope: !655, file: !7, line: 141, type: !5)
!659 = !DILocation(line: 141, column: 25, scope: !655)
!660 = !DILocation(line: 143, column: 16, scope: !655)
!661 = !DILocation(line: 143, column: 14, scope: !655)
!662 = !DILocation(line: 145, column: 19, scope: !655)
!663 = !DILocation(line: 145, column: 29, scope: !655)
!664 = !DILocation(line: 145, column: 5, scope: !655)
!665 = !DILocation(line: 146, column: 1, scope: !655)
!666 = distinct !DISubprogram(name: "nn_surveyor_destroy", scope: !7, file: !7, line: 148, type: !24, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!667 = !DILocalVariable(name: "self", arg: 1, scope: !666, file: !7, line: 148, type: !26)
!668 = !DILocation(line: 148, column: 47, scope: !666)
!669 = !DILocalVariable(name: "surveyor", scope: !666, file: !7, line: 150, type: !5)
!670 = !DILocation(line: 150, column: 25, scope: !666)
!671 = !DILocation(line: 152, column: 16, scope: !666)
!672 = !DILocation(line: 152, column: 14, scope: !666)
!673 = !DILocation(line: 154, column: 23, scope: !666)
!674 = !DILocation(line: 154, column: 5, scope: !666)
!675 = !DILocation(line: 155, column: 14, scope: !666)
!676 = !DILocation(line: 155, column: 5, scope: !666)
!677 = !DILocation(line: 156, column: 1, scope: !666)
!678 = distinct !DISubprogram(name: "nn_surveyor_events", scope: !7, file: !7, line: 166, type: !43, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!679 = !DILocalVariable(name: "self", arg: 1, scope: !678, file: !7, line: 166, type: !26)
!680 = !DILocation(line: 166, column: 52, scope: !678)
!681 = !DILocalVariable(name: "rc", scope: !678, file: !7, line: 168, type: !32)
!682 = !DILocation(line: 168, column: 9, scope: !678)
!683 = !DILocalVariable(name: "surveyor", scope: !678, file: !7, line: 169, type: !5)
!684 = !DILocation(line: 169, column: 25, scope: !678)
!685 = !DILocation(line: 171, column: 16, scope: !678)
!686 = !DILocation(line: 171, column: 14, scope: !678)
!687 = !DILocation(line: 174, column: 32, scope: !678)
!688 = !DILocation(line: 174, column: 42, scope: !678)
!689 = !DILocation(line: 174, column: 52, scope: !678)
!690 = !DILocation(line: 174, column: 10, scope: !678)
!691 = !DILocation(line: 174, column: 8, scope: !678)
!692 = !DILocation(line: 178, column: 34, scope: !693)
!693 = distinct !DILexicalBlock(scope: !678, file: !7, line: 178, column: 9)
!694 = !DILocation(line: 178, column: 10, scope: !693)
!695 = !DILocation(line: 178, column: 9, scope: !678)
!696 = !DILocation(line: 179, column: 12, scope: !693)
!697 = !DILocation(line: 179, column: 9, scope: !693)
!698 = !DILocation(line: 181, column: 12, scope: !678)
!699 = !DILocation(line: 181, column: 5, scope: !678)
!700 = distinct !DISubprogram(name: "nn_surveyor_send", scope: !7, file: !7, line: 184, type: !47, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!701 = !DILocalVariable(name: "self", arg: 1, scope: !700, file: !7, line: 184, type: !26)
!702 = !DILocation(line: 184, column: 50, scope: !700)
!703 = !DILocalVariable(name: "msg", arg: 2, scope: !700, file: !7, line: 184, type: !49)
!704 = !DILocation(line: 184, column: 71, scope: !700)
!705 = !DILocalVariable(name: "surveyor", scope: !700, file: !7, line: 186, type: !5)
!706 = !DILocation(line: 186, column: 25, scope: !700)
!707 = !DILocation(line: 188, column: 16, scope: !700)
!708 = !DILocation(line: 188, column: 14, scope: !700)
!709 = !DILocation(line: 191, column: 7, scope: !700)
!710 = !DILocation(line: 191, column: 17, scope: !700)
!711 = !DILocation(line: 191, column: 5, scope: !700)
!712 = !DILocation(line: 194, column: 5, scope: !700)
!713 = !DILocation(line: 194, column: 5, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !7, line: 194, column: 5)
!715 = distinct !DILexicalBlock(scope: !700, file: !7, line: 194, column: 5)
!716 = !DILocation(line: 194, column: 5, scope: !715)
!717 = !DILocation(line: 194, column: 5, scope: !718)
!718 = distinct !DILexicalBlock(scope: !714, file: !7, line: 194, column: 5)
!719 = !DILocation(line: 195, column: 24, scope: !700)
!720 = !DILocation(line: 195, column: 29, scope: !700)
!721 = !DILocation(line: 195, column: 5, scope: !700)
!722 = !DILocation(line: 196, column: 24, scope: !700)
!723 = !DILocation(line: 196, column: 29, scope: !700)
!724 = !DILocation(line: 196, column: 5, scope: !700)
!725 = !DILocation(line: 197, column: 33, scope: !700)
!726 = !DILocation(line: 197, column: 38, scope: !700)
!727 = !DILocation(line: 197, column: 14, scope: !700)
!728 = !DILocation(line: 197, column: 44, scope: !700)
!729 = !DILocation(line: 197, column: 54, scope: !700)
!730 = !DILocation(line: 197, column: 5, scope: !700)
!731 = !DILocation(line: 200, column: 19, scope: !700)
!732 = !DILocation(line: 200, column: 29, scope: !700)
!733 = !DILocation(line: 200, column: 5, scope: !700)
!734 = !DILocation(line: 201, column: 17, scope: !700)
!735 = !DILocation(line: 201, column: 27, scope: !700)
!736 = !DILocation(line: 201, column: 35, scope: !700)
!737 = !DILocation(line: 201, column: 5, scope: !700)
!738 = !DILocation(line: 202, column: 18, scope: !700)
!739 = !DILocation(line: 202, column: 5, scope: !700)
!740 = !DILocation(line: 205, column: 9, scope: !741)
!741 = distinct !DILexicalBlock(scope: !700, file: !7, line: 205, column: 9)
!742 = !DILocation(line: 205, column: 9, scope: !700)
!743 = !DILocation(line: 208, column: 37, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !7, line: 208, column: 13)
!745 = distinct !DILexicalBlock(scope: !741, file: !7, line: 205, column: 54)
!746 = !DILocation(line: 208, column: 47, scope: !744)
!747 = !DILocation(line: 208, column: 57, scope: !744)
!748 = !DILocation(line: 208, column: 15, scope: !744)
!749 = !DILocation(line: 208, column: 67, scope: !744)
!750 = !DILocation(line: 208, column: 13, scope: !745)
!751 = !DILocation(line: 210, column: 13, scope: !744)
!752 = !DILocation(line: 213, column: 25, scope: !745)
!753 = !DILocation(line: 213, column: 35, scope: !745)
!754 = !DILocation(line: 213, column: 9, scope: !745)
!755 = !DILocation(line: 215, column: 9, scope: !745)
!756 = !DILocation(line: 219, column: 21, scope: !700)
!757 = !DILocation(line: 219, column: 31, scope: !700)
!758 = !DILocation(line: 219, column: 5, scope: !700)
!759 = !DILocation(line: 221, column: 5, scope: !700)
!760 = !DILocation(line: 222, column: 1, scope: !700)
!761 = distinct !DISubprogram(name: "nn_surveyor_recv", scope: !7, file: !7, line: 224, type: !47, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!762 = !DILocalVariable(name: "self", arg: 1, scope: !761, file: !7, line: 224, type: !26)
!763 = !DILocation(line: 224, column: 50, scope: !761)
!764 = !DILocalVariable(name: "msg", arg: 2, scope: !761, file: !7, line: 224, type: !49)
!765 = !DILocation(line: 224, column: 71, scope: !761)
!766 = !DILocalVariable(name: "rc", scope: !761, file: !7, line: 226, type: !32)
!767 = !DILocation(line: 226, column: 9, scope: !761)
!768 = !DILocalVariable(name: "surveyor", scope: !761, file: !7, line: 227, type: !5)
!769 = !DILocation(line: 227, column: 25, scope: !761)
!770 = !DILocalVariable(name: "surveyid", scope: !761, file: !7, line: 228, type: !157)
!771 = !DILocation(line: 228, column: 14, scope: !761)
!772 = !DILocation(line: 230, column: 16, scope: !761)
!773 = !DILocation(line: 230, column: 14, scope: !761)
!774 = !DILocation(line: 233, column: 9, scope: !775)
!775 = distinct !DILexicalBlock(scope: !761, file: !7, line: 233, column: 9)
!776 = !DILocation(line: 233, column: 9, scope: !761)
!777 = !DILocation(line: 234, column: 8, scope: !775)
!778 = !DILocation(line: 236, column: 5, scope: !761)
!779 = !DILocation(line: 239, column: 34, scope: !780)
!780 = distinct !DILexicalBlock(scope: !761, file: !7, line: 236, column: 15)
!781 = !DILocation(line: 239, column: 44, scope: !780)
!782 = !DILocation(line: 239, column: 54, scope: !780)
!783 = !DILocation(line: 239, column: 64, scope: !780)
!784 = !DILocation(line: 239, column: 14, scope: !780)
!785 = !DILocation(line: 239, column: 12, scope: !780)
!786 = !DILocation(line: 240, column: 13, scope: !787)
!787 = distinct !DILexicalBlock(scope: !780, file: !7, line: 240, column: 13)
!788 = !DILocation(line: 240, column: 13, scope: !780)
!789 = !DILocation(line: 241, column: 13, scope: !787)
!790 = !DILocation(line: 242, column: 9, scope: !780)
!791 = !DILocation(line: 242, column: 9, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !7, line: 242, column: 9)
!793 = distinct !DILexicalBlock(scope: !780, file: !7, line: 242, column: 9)
!794 = !DILocation(line: 242, column: 9, scope: !793)
!795 = !DILocation(line: 242, column: 9, scope: !796)
!796 = distinct !DILexicalBlock(scope: !792, file: !7, line: 242, column: 9)
!797 = !DILocation(line: 246, column: 13, scope: !798)
!798 = distinct !DILexicalBlock(scope: !780, file: !7, line: 246, column: 13)
!799 = !DILocation(line: 246, column: 13, scope: !780)
!800 = !DILocation(line: 247, column: 13, scope: !798)
!801 = distinct !{!801, !778, !802}
!802 = !DILocation(line: 256, column: 5, scope: !761)
!803 = !DILocation(line: 248, column: 48, scope: !780)
!804 = !DILocation(line: 248, column: 53, scope: !780)
!805 = !DILocation(line: 248, column: 29, scope: !780)
!806 = !DILocation(line: 248, column: 20, scope: !780)
!807 = !DILocation(line: 248, column: 18, scope: !780)
!808 = !DILocation(line: 249, column: 13, scope: !809)
!809 = distinct !DILexicalBlock(scope: !780, file: !7, line: 249, column: 13)
!810 = !DILocation(line: 249, column: 13, scope: !780)
!811 = !DILocation(line: 250, column: 13, scope: !809)
!812 = !DILocation(line: 253, column: 28, scope: !780)
!813 = !DILocation(line: 253, column: 33, scope: !780)
!814 = !DILocation(line: 253, column: 9, scope: !780)
!815 = !DILocation(line: 254, column: 28, scope: !780)
!816 = !DILocation(line: 254, column: 33, scope: !780)
!817 = !DILocation(line: 254, column: 9, scope: !780)
!818 = !DILocation(line: 255, column: 9, scope: !780)
!819 = !DILocation(line: 258, column: 5, scope: !761)
!820 = !DILocation(line: 259, column: 1, scope: !761)
!821 = distinct !DISubprogram(name: "nn_surveyor_setopt", scope: !7, file: !7, line: 261, type: !70, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!822 = !DILocalVariable(name: "self", arg: 1, scope: !821, file: !7, line: 261, type: !26)
!823 = !DILocation(line: 261, column: 52, scope: !821)
!824 = !DILocalVariable(name: "level", arg: 2, scope: !821, file: !7, line: 261, type: !32)
!825 = !DILocation(line: 261, column: 62, scope: !821)
!826 = !DILocalVariable(name: "option", arg: 3, scope: !821, file: !7, line: 261, type: !32)
!827 = !DILocation(line: 261, column: 73, scope: !821)
!828 = !DILocalVariable(name: "optval", arg: 4, scope: !821, file: !7, line: 262, type: !72)
!829 = !DILocation(line: 262, column: 17, scope: !821)
!830 = !DILocalVariable(name: "optvallen", arg: 5, scope: !821, file: !7, line: 262, type: !74)
!831 = !DILocation(line: 262, column: 32, scope: !821)
!832 = !DILocalVariable(name: "surveyor", scope: !821, file: !7, line: 264, type: !5)
!833 = !DILocation(line: 264, column: 25, scope: !821)
!834 = !DILocation(line: 266, column: 16, scope: !821)
!835 = !DILocation(line: 266, column: 14, scope: !821)
!836 = !DILocation(line: 268, column: 9, scope: !837)
!837 = distinct !DILexicalBlock(scope: !821, file: !7, line: 268, column: 9)
!838 = !DILocation(line: 268, column: 15, scope: !837)
!839 = !DILocation(line: 268, column: 9, scope: !821)
!840 = !DILocation(line: 269, column: 9, scope: !837)
!841 = !DILocation(line: 271, column: 9, scope: !842)
!842 = distinct !DILexicalBlock(scope: !821, file: !7, line: 271, column: 9)
!843 = !DILocation(line: 271, column: 16, scope: !842)
!844 = !DILocation(line: 271, column: 9, scope: !821)
!845 = !DILocation(line: 272, column: 13, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !7, line: 272, column: 13)
!847 = distinct !DILexicalBlock(scope: !842, file: !7, line: 271, column: 41)
!848 = !DILocation(line: 272, column: 13, scope: !847)
!849 = !DILocation(line: 273, column: 13, scope: !846)
!850 = !DILocation(line: 274, column: 38, scope: !847)
!851 = !DILocation(line: 274, column: 30, scope: !847)
!852 = !DILocation(line: 274, column: 9, scope: !847)
!853 = !DILocation(line: 274, column: 19, scope: !847)
!854 = !DILocation(line: 274, column: 28, scope: !847)
!855 = !DILocation(line: 275, column: 9, scope: !847)
!856 = !DILocation(line: 278, column: 5, scope: !821)
!857 = !DILocation(line: 279, column: 1, scope: !821)
!858 = distinct !DISubprogram(name: "nn_surveyor_getopt", scope: !7, file: !7, line: 281, type: !79, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!859 = !DILocalVariable(name: "self", arg: 1, scope: !858, file: !7, line: 281, type: !26)
!860 = !DILocation(line: 281, column: 52, scope: !858)
!861 = !DILocalVariable(name: "level", arg: 2, scope: !858, file: !7, line: 281, type: !32)
!862 = !DILocation(line: 281, column: 62, scope: !858)
!863 = !DILocalVariable(name: "option", arg: 3, scope: !858, file: !7, line: 281, type: !32)
!864 = !DILocation(line: 281, column: 73, scope: !858)
!865 = !DILocalVariable(name: "optval", arg: 4, scope: !858, file: !7, line: 282, type: !81)
!866 = !DILocation(line: 282, column: 11, scope: !858)
!867 = !DILocalVariable(name: "optvallen", arg: 5, scope: !858, file: !7, line: 282, type: !82)
!868 = !DILocation(line: 282, column: 27, scope: !858)
!869 = !DILocalVariable(name: "surveyor", scope: !858, file: !7, line: 284, type: !5)
!870 = !DILocation(line: 284, column: 25, scope: !858)
!871 = !DILocation(line: 286, column: 16, scope: !858)
!872 = !DILocation(line: 286, column: 14, scope: !858)
!873 = !DILocation(line: 288, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !858, file: !7, line: 288, column: 9)
!875 = !DILocation(line: 288, column: 15, scope: !874)
!876 = !DILocation(line: 288, column: 9, scope: !858)
!877 = !DILocation(line: 289, column: 9, scope: !874)
!878 = !DILocation(line: 291, column: 9, scope: !879)
!879 = distinct !DILexicalBlock(scope: !858, file: !7, line: 291, column: 9)
!880 = !DILocation(line: 291, column: 16, scope: !879)
!881 = !DILocation(line: 291, column: 9, scope: !858)
!882 = !DILocation(line: 292, column: 13, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !7, line: 292, column: 13)
!884 = distinct !DILexicalBlock(scope: !879, file: !7, line: 291, column: 41)
!885 = !DILocation(line: 292, column: 13, scope: !884)
!886 = !DILocation(line: 293, column: 13, scope: !883)
!887 = !DILocation(line: 294, column: 26, scope: !884)
!888 = !DILocation(line: 294, column: 36, scope: !884)
!889 = !DILocation(line: 294, column: 17, scope: !884)
!890 = !DILocation(line: 294, column: 24, scope: !884)
!891 = !DILocation(line: 295, column: 10, scope: !884)
!892 = !DILocation(line: 295, column: 20, scope: !884)
!893 = !DILocation(line: 296, column: 9, scope: !884)
!894 = !DILocation(line: 299, column: 5, scope: !858)
!895 = !DILocation(line: 300, column: 1, scope: !858)
!896 = distinct !DISubprogram(name: "nn_surveyor_term", scope: !7, file: !7, line: 131, type: !897, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !5}
!899 = !DILocalVariable(name: "self", arg: 1, scope: !896, file: !7, line: 131, type: !5)
!900 = !DILocation(line: 131, column: 51, scope: !896)
!901 = !DILocation(line: 133, column: 19, scope: !896)
!902 = !DILocation(line: 133, column: 25, scope: !896)
!903 = !DILocation(line: 133, column: 5, scope: !896)
!904 = !DILocation(line: 134, column: 21, scope: !896)
!905 = !DILocation(line: 134, column: 27, scope: !896)
!906 = !DILocation(line: 134, column: 5, scope: !896)
!907 = !DILocation(line: 135, column: 19, scope: !896)
!908 = !DILocation(line: 135, column: 25, scope: !896)
!909 = !DILocation(line: 135, column: 5, scope: !896)
!910 = !DILocation(line: 136, column: 25, scope: !896)
!911 = !DILocation(line: 136, column: 31, scope: !896)
!912 = !DILocation(line: 136, column: 5, scope: !896)
!913 = !DILocation(line: 137, column: 1, scope: !896)
!914 = distinct !DISubprogram(name: "nn_surveyor_inprogress", scope: !7, file: !7, line: 158, type: !915, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !352)
!915 = !DISubroutineType(types: !916)
!916 = !{!32, !5}
!917 = !DILocalVariable(name: "self", arg: 1, scope: !914, file: !7, line: 158, type: !5)
!918 = !DILocation(line: 158, column: 56, scope: !914)
!919 = !DILocation(line: 161, column: 12, scope: !914)
!920 = !DILocation(line: 161, column: 18, scope: !914)
!921 = !DILocation(line: 161, column: 24, scope: !914)
!922 = !DILocation(line: 161, column: 50, scope: !914)
!923 = !DILocation(line: 162, column: 9, scope: !914)
!924 = !DILocation(line: 162, column: 15, scope: !914)
!925 = !DILocation(line: 162, column: 21, scope: !914)
!926 = !DILocation(line: 162, column: 50, scope: !914)
!927 = !DILocation(line: 163, column: 9, scope: !914)
!928 = !DILocation(line: 163, column: 15, scope: !914)
!929 = !DILocation(line: 163, column: 21, scope: !914)
!930 = !DILocation(line: 161, column: 5, scope: !914)
