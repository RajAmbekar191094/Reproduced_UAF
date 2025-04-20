; ModuleID = './src/transports/utils/streamhdr.c'
source_filename = "./src/transports/utils/streamhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_streamhdr = type { %struct.nn_fsm, i32, %struct.nn_timer, ptr, %struct.nn_fsm_owner, ptr, [8 x i8], %struct.nn_fsm_event }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_timer = type { %struct.nn_fsm, i32, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_timer, %struct.nn_fsm_event, ptr, i32 }
%struct.nn_worker_task = type { ptr, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_worker_timer = type { ptr, %struct.nn_timerset_hndl }
%struct.nn_timerset_hndl = type { %struct.nn_list_item, i64 }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_fsm_owner = type { i32, ptr }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_iovec = type { ptr, i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [39 x i8] c"self->state == NN_STREAMHDR_STATE_IDLE\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [35 x i8] c"./src/transports/utils/streamhdr.c\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [53 x i8] c"self->usock == NULL && self->usock_owner.fsm == NULL\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [24 x i8] c"sz == sizeof (protocol)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [9 x i8] c"\00SP\00\00\00\00\00\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [5 x i8] c"\00SP\00\00", align 1, !dbg !37

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_streamhdr_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !352 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !356, metadata !DIExpression()), !dbg !357
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !358, metadata !DIExpression()), !dbg !359
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !360, metadata !DIExpression()), !dbg !361
  %7 = load ptr, ptr %4, align 8, !dbg !362
  %8 = getelementptr inbounds %struct.nn_streamhdr, ptr %7, i32 0, i32 0, !dbg !363
  %9 = load i32, ptr %5, align 4, !dbg !364
  %10 = load ptr, ptr %4, align 8, !dbg !365
  %11 = load ptr, ptr %6, align 8, !dbg !366
  call void @nn_fsm_init(ptr noundef %8, ptr noundef @nn_streamhdr_handler, i32 noundef %9, ptr noundef %10, ptr noundef %11), !dbg !367
  %12 = load ptr, ptr %4, align 8, !dbg !368
  %13 = getelementptr inbounds %struct.nn_streamhdr, ptr %12, i32 0, i32 1, !dbg !369
  store i32 1, ptr %13, align 8, !dbg !370
  %14 = load ptr, ptr %4, align 8, !dbg !371
  %15 = getelementptr inbounds %struct.nn_streamhdr, ptr %14, i32 0, i32 2, !dbg !372
  %16 = load ptr, ptr %4, align 8, !dbg !373
  %17 = getelementptr inbounds %struct.nn_streamhdr, ptr %16, i32 0, i32 0, !dbg !374
  call void @nn_timer_init(ptr noundef %15, i32 noundef 2, ptr noundef %17), !dbg !375
  %18 = load ptr, ptr %4, align 8, !dbg !376
  %19 = getelementptr inbounds %struct.nn_streamhdr, ptr %18, i32 0, i32 7, !dbg !377
  call void @nn_fsm_event_init(ptr noundef %19), !dbg !378
  %20 = load ptr, ptr %4, align 8, !dbg !379
  %21 = getelementptr inbounds %struct.nn_streamhdr, ptr %20, i32 0, i32 3, !dbg !380
  store ptr null, ptr %21, align 8, !dbg !381
  %22 = load ptr, ptr %4, align 8, !dbg !382
  %23 = getelementptr inbounds %struct.nn_streamhdr, ptr %22, i32 0, i32 4, !dbg !383
  %24 = getelementptr inbounds %struct.nn_fsm_owner, ptr %23, i32 0, i32 0, !dbg !384
  store i32 -1, ptr %24, align 8, !dbg !385
  %25 = load ptr, ptr %4, align 8, !dbg !386
  %26 = getelementptr inbounds %struct.nn_streamhdr, ptr %25, i32 0, i32 4, !dbg !387
  %27 = getelementptr inbounds %struct.nn_fsm_owner, ptr %26, i32 0, i32 1, !dbg !388
  store ptr null, ptr %27, align 8, !dbg !389
  %28 = load ptr, ptr %4, align 8, !dbg !390
  %29 = getelementptr inbounds %struct.nn_streamhdr, ptr %28, i32 0, i32 5, !dbg !391
  store ptr null, ptr %29, align 8, !dbg !392
  ret void, !dbg !393
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_fsm_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_streamhdr_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !394 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.nn_iovec, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !395, metadata !DIExpression()), !dbg !396
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !397, metadata !DIExpression()), !dbg !398
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !399, metadata !DIExpression()), !dbg !400
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata ptr %9, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata ptr %10, metadata !405, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.declare(metadata ptr %11, metadata !412, metadata !DIExpression()), !dbg !413
  %12 = load ptr, ptr %5, align 8, !dbg !414
  %13 = icmp ne ptr %12, null, !dbg !414
  br i1 %13, label %14, label %17, !dbg !414

14:                                               ; preds = %4
  %15 = load ptr, ptr %5, align 8, !dbg !414
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !414
  br label %18, !dbg !414

17:                                               ; preds = %4
  br label %18, !dbg !414

18:                                               ; preds = %17, %14
  %19 = phi ptr [ %16, %14 ], [ null, %17 ], !dbg !414
  store ptr %19, ptr %9, align 8, !dbg !415
  %20 = load i32, ptr %6, align 4, !dbg !416
  %21 = icmp eq i32 %20, -2, !dbg !416
  br i1 %21, label %22, label %25, !dbg !416

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4, !dbg !416
  %24 = icmp eq i32 %23, -3, !dbg !416
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ], !dbg !418
  %27 = zext i1 %26 to i32, !dbg !416
  %28 = sext i32 %27 to i64, !dbg !416
  %29 = icmp ne i64 %28, 0, !dbg !416
  br i1 %29, label %30, label %35, !dbg !419

30:                                               ; preds = %25
  %31 = load ptr, ptr %9, align 8, !dbg !420
  %32 = getelementptr inbounds %struct.nn_streamhdr, ptr %31, i32 0, i32 2, !dbg !422
  call void @nn_timer_stop(ptr noundef %32), !dbg !423
  %33 = load ptr, ptr %9, align 8, !dbg !424
  %34 = getelementptr inbounds %struct.nn_streamhdr, ptr %33, i32 0, i32 1, !dbg !425
  store i32 7, ptr %34, align 8, !dbg !426
  br label %35, !dbg !427

35:                                               ; preds = %30, %25
  %36 = load ptr, ptr %9, align 8, !dbg !428
  %37 = getelementptr inbounds %struct.nn_streamhdr, ptr %36, i32 0, i32 1, !dbg !428
  %38 = load i32, ptr %37, align 8, !dbg !428
  %39 = icmp eq i32 %38, 7, !dbg !428
  %40 = zext i1 %39 to i32, !dbg !428
  %41 = sext i32 %40 to i64, !dbg !428
  %42 = icmp ne i64 %41, 0, !dbg !428
  br i1 %42, label %43, label %54, !dbg !430

43:                                               ; preds = %35
  %44 = load ptr, ptr %9, align 8, !dbg !431
  %45 = getelementptr inbounds %struct.nn_streamhdr, ptr %44, i32 0, i32 2, !dbg !434
  %46 = call i32 @nn_timer_isidle(ptr noundef %45), !dbg !435
  %47 = icmp ne i32 %46, 0, !dbg !435
  br i1 %47, label %49, label %48, !dbg !436

48:                                               ; preds = %43
  br label %273, !dbg !437

49:                                               ; preds = %43
  %50 = load ptr, ptr %9, align 8, !dbg !438
  %51 = getelementptr inbounds %struct.nn_streamhdr, ptr %50, i32 0, i32 1, !dbg !439
  store i32 1, ptr %51, align 8, !dbg !440
  %52 = load ptr, ptr %9, align 8, !dbg !441
  %53 = getelementptr inbounds %struct.nn_streamhdr, ptr %52, i32 0, i32 0, !dbg !442
  call void @nn_fsm_stopped(ptr noundef %53, i32 noundef 3), !dbg !443
  br label %273, !dbg !444

54:                                               ; preds = %35
  %55 = load ptr, ptr %9, align 8, !dbg !445
  %56 = getelementptr inbounds %struct.nn_streamhdr, ptr %55, i32 0, i32 1, !dbg !446
  %57 = load i32, ptr %56, align 8, !dbg !446
  switch i32 %57, label %268 [
    i32 1, label %58
    i32 2, label %87
    i32 3, label %130
    i32 4, label %191
    i32 5, label %227
    i32 6, label %263
  ], !dbg !447

58:                                               ; preds = %54
  %59 = load i32, ptr %6, align 4, !dbg !448
  switch i32 %59, label %81 [
    i32 -2, label %60
  ], !dbg !450

60:                                               ; preds = %58
  %61 = load i32, ptr %7, align 4, !dbg !451
  switch i32 %61, label %75 [
    i32 -2, label %62
  ], !dbg !453

62:                                               ; preds = %60
  %63 = load ptr, ptr %9, align 8, !dbg !454
  %64 = getelementptr inbounds %struct.nn_streamhdr, ptr %63, i32 0, i32 2, !dbg !456
  call void @nn_timer_start(ptr noundef %64, i32 noundef 1000), !dbg !457
  %65 = load ptr, ptr %9, align 8, !dbg !458
  %66 = getelementptr inbounds %struct.nn_streamhdr, ptr %65, i32 0, i32 6, !dbg !459
  %67 = getelementptr inbounds [8 x i8], ptr %66, i64 0, i64 0, !dbg !458
  %68 = getelementptr inbounds %struct.nn_iovec, ptr %10, i32 0, i32 0, !dbg !460
  store ptr %67, ptr %68, align 8, !dbg !461
  %69 = getelementptr inbounds %struct.nn_iovec, ptr %10, i32 0, i32 1, !dbg !462
  store i64 8, ptr %69, align 8, !dbg !463
  %70 = load ptr, ptr %9, align 8, !dbg !464
  %71 = getelementptr inbounds %struct.nn_streamhdr, ptr %70, i32 0, i32 3, !dbg !465
  %72 = load ptr, ptr %71, align 8, !dbg !465
  call void @nn_usock_send(ptr noundef %72, ptr noundef %10, i32 noundef 1), !dbg !466
  %73 = load ptr, ptr %9, align 8, !dbg !467
  %74 = getelementptr inbounds %struct.nn_streamhdr, ptr %73, i32 0, i32 1, !dbg !468
  store i32 2, ptr %74, align 8, !dbg !469
  br label %273, !dbg !470

75:                                               ; preds = %60
  br label %76, !dbg !471

76:                                               ; preds = %75
  %77 = load ptr, ptr @stderr, align 8, !dbg !472
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 152), !dbg !472
  call void @nn_err_abort() #6, !dbg !472
  unreachable, !dbg !472

79:                                               ; No predecessors!
  br label %80, !dbg !476

80:                                               ; preds = %79
  br label %81, !dbg !476

81:                                               ; preds = %58, %80
  br label %82, !dbg !477

82:                                               ; preds = %81
  %83 = load ptr, ptr @stderr, align 8, !dbg !478
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 156), !dbg !478
  call void @nn_err_abort() #6, !dbg !478
  unreachable, !dbg !478

85:                                               ; No predecessors!
  br label %86, !dbg !482

86:                                               ; preds = %85
  br label %87, !dbg !482

87:                                               ; preds = %54, %86
  %88 = load i32, ptr %6, align 4, !dbg !483
  switch i32 %88, label %124 [
    i32 1, label %89
    i32 2, label %111
  ], !dbg !484

89:                                               ; preds = %87
  %90 = load i32, ptr %7, align 4, !dbg !485
  switch i32 %90, label %105 [
    i32 3, label %91
    i32 5, label %100
  ], !dbg !487

91:                                               ; preds = %89
  %92 = load ptr, ptr %9, align 8, !dbg !488
  %93 = getelementptr inbounds %struct.nn_streamhdr, ptr %92, i32 0, i32 3, !dbg !490
  %94 = load ptr, ptr %93, align 8, !dbg !490
  %95 = load ptr, ptr %9, align 8, !dbg !491
  %96 = getelementptr inbounds %struct.nn_streamhdr, ptr %95, i32 0, i32 6, !dbg !492
  %97 = getelementptr inbounds [8 x i8], ptr %96, i64 0, i64 0, !dbg !491
  call void @nn_usock_recv(ptr noundef %94, ptr noundef %97, i64 noundef 8), !dbg !493
  %98 = load ptr, ptr %9, align 8, !dbg !494
  %99 = getelementptr inbounds %struct.nn_streamhdr, ptr %98, i32 0, i32 1, !dbg !495
  store i32 3, ptr %99, align 8, !dbg !496
  br label %273, !dbg !497

100:                                              ; preds = %89
  %101 = load ptr, ptr %9, align 8, !dbg !498
  %102 = getelementptr inbounds %struct.nn_streamhdr, ptr %101, i32 0, i32 2, !dbg !499
  call void @nn_timer_stop(ptr noundef %102), !dbg !500
  %103 = load ptr, ptr %9, align 8, !dbg !501
  %104 = getelementptr inbounds %struct.nn_streamhdr, ptr %103, i32 0, i32 1, !dbg !502
  store i32 4, ptr %104, align 8, !dbg !503
  br label %273, !dbg !504

105:                                              ; preds = %89
  br label %106, !dbg !505

106:                                              ; preds = %105
  %107 = load ptr, ptr @stderr, align 8, !dbg !506
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 177), !dbg !506
  call void @nn_err_abort() #6, !dbg !506
  unreachable, !dbg !506

109:                                              ; No predecessors!
  br label %110, !dbg !510

110:                                              ; preds = %109
  br label %111, !dbg !510

111:                                              ; preds = %87, %110
  %112 = load i32, ptr %7, align 4, !dbg !511
  switch i32 %112, label %118 [
    i32 1, label %113
  ], !dbg !512

113:                                              ; preds = %111
  %114 = load ptr, ptr %9, align 8, !dbg !513
  %115 = getelementptr inbounds %struct.nn_streamhdr, ptr %114, i32 0, i32 2, !dbg !515
  call void @nn_timer_stop(ptr noundef %115), !dbg !516
  %116 = load ptr, ptr %9, align 8, !dbg !517
  %117 = getelementptr inbounds %struct.nn_streamhdr, ptr %116, i32 0, i32 1, !dbg !518
  store i32 4, ptr %117, align 8, !dbg !519
  br label %273, !dbg !520

118:                                              ; preds = %111
  br label %119, !dbg !521

119:                                              ; preds = %118
  %120 = load ptr, ptr @stderr, align 8, !dbg !522
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 187), !dbg !522
  call void @nn_err_abort() #6, !dbg !522
  unreachable, !dbg !522

122:                                              ; No predecessors!
  br label %123, !dbg !526

123:                                              ; preds = %122
  br label %124, !dbg !526

124:                                              ; preds = %87, %123
  br label %125, !dbg !527

125:                                              ; preds = %124
  %126 = load ptr, ptr @stderr, align 8, !dbg !528
  %127 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 191), !dbg !528
  call void @nn_err_abort() #6, !dbg !528
  unreachable, !dbg !528

128:                                              ; No predecessors!
  br label %129, !dbg !532

129:                                              ; preds = %128
  br label %130, !dbg !532

130:                                              ; preds = %54, %129
  %131 = load i32, ptr %6, align 4, !dbg !533
  switch i32 %131, label %185 [
    i32 1, label %132
    i32 2, label %172
  ], !dbg !534

132:                                              ; preds = %130
  %133 = load i32, ptr %7, align 4, !dbg !535
  switch i32 %133, label %166 [
    i32 4, label %134
    i32 5, label %160
  ], !dbg !537

134:                                              ; preds = %132
  %135 = load ptr, ptr %9, align 8, !dbg !538
  %136 = getelementptr inbounds %struct.nn_streamhdr, ptr %135, i32 0, i32 6, !dbg !541
  %137 = getelementptr inbounds [8 x i8], ptr %136, i64 0, i64 0, !dbg !538
  %138 = call i32 @memcmp(ptr noundef %137, ptr noundef @.str.7, i64 noundef 4) #7, !dbg !542
  %139 = icmp ne i32 %138, 0, !dbg !543
  br i1 %139, label %140, label %141, !dbg !544

140:                                              ; preds = %134
  br label %161, !dbg !545

141:                                              ; preds = %134
  %142 = load ptr, ptr %9, align 8, !dbg !546
  %143 = getelementptr inbounds %struct.nn_streamhdr, ptr %142, i32 0, i32 6, !dbg !547
  %144 = getelementptr inbounds [8 x i8], ptr %143, i64 0, i64 0, !dbg !546
  %145 = getelementptr inbounds i8, ptr %144, i64 4, !dbg !548
  %146 = call zeroext i16 @nn_gets(ptr noundef %145), !dbg !549
  %147 = zext i16 %146 to i32, !dbg !549
  store i32 %147, ptr %11, align 4, !dbg !550
  %148 = load ptr, ptr %9, align 8, !dbg !551
  %149 = getelementptr inbounds %struct.nn_streamhdr, ptr %148, i32 0, i32 5, !dbg !553
  %150 = load ptr, ptr %149, align 8, !dbg !553
  %151 = load i32, ptr %11, align 4, !dbg !554
  %152 = call i32 @nn_pipebase_ispeer(ptr noundef %150, i32 noundef %151), !dbg !555
  %153 = icmp ne i32 %152, 0, !dbg !555
  br i1 %153, label %155, label %154, !dbg !556

154:                                              ; preds = %141
  br label %161, !dbg !557

155:                                              ; preds = %141
  %156 = load ptr, ptr %9, align 8, !dbg !558
  %157 = getelementptr inbounds %struct.nn_streamhdr, ptr %156, i32 0, i32 2, !dbg !559
  call void @nn_timer_stop(ptr noundef %157), !dbg !560
  %158 = load ptr, ptr %9, align 8, !dbg !561
  %159 = getelementptr inbounds %struct.nn_streamhdr, ptr %158, i32 0, i32 1, !dbg !562
  store i32 5, ptr %159, align 8, !dbg !563
  br label %273, !dbg !564

160:                                              ; preds = %132
  br label %161, !dbg !564

161:                                              ; preds = %160, %154, %140
  call void @llvm.dbg.label(metadata !565), !dbg !566
  %162 = load ptr, ptr %9, align 8, !dbg !567
  %163 = getelementptr inbounds %struct.nn_streamhdr, ptr %162, i32 0, i32 2, !dbg !568
  call void @nn_timer_stop(ptr noundef %163), !dbg !569
  %164 = load ptr, ptr %9, align 8, !dbg !570
  %165 = getelementptr inbounds %struct.nn_streamhdr, ptr %164, i32 0, i32 1, !dbg !571
  store i32 4, ptr %165, align 8, !dbg !572
  br label %273, !dbg !573

166:                                              ; preds = %132
  br label %167, !dbg !574

167:                                              ; preds = %166
  %168 = load ptr, ptr @stderr, align 8, !dbg !575
  %169 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 220), !dbg !575
  call void @nn_err_abort() #6, !dbg !575
  unreachable, !dbg !575

170:                                              ; No predecessors!
  br label %171, !dbg !579

171:                                              ; preds = %170
  br label %172, !dbg !579

172:                                              ; preds = %130, %171
  %173 = load i32, ptr %7, align 4, !dbg !580
  switch i32 %173, label %179 [
    i32 1, label %174
  ], !dbg !581

174:                                              ; preds = %172
  %175 = load ptr, ptr %9, align 8, !dbg !582
  %176 = getelementptr inbounds %struct.nn_streamhdr, ptr %175, i32 0, i32 2, !dbg !584
  call void @nn_timer_stop(ptr noundef %176), !dbg !585
  %177 = load ptr, ptr %9, align 8, !dbg !586
  %178 = getelementptr inbounds %struct.nn_streamhdr, ptr %177, i32 0, i32 1, !dbg !587
  store i32 4, ptr %178, align 8, !dbg !588
  br label %273, !dbg !589

179:                                              ; preds = %172
  br label %180, !dbg !590

180:                                              ; preds = %179
  %181 = load ptr, ptr @stderr, align 8, !dbg !591
  %182 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 230), !dbg !591
  call void @nn_err_abort() #6, !dbg !591
  unreachable, !dbg !591

183:                                              ; No predecessors!
  br label %184, !dbg !595

184:                                              ; preds = %183
  br label %185, !dbg !595

185:                                              ; preds = %130, %184
  br label %186, !dbg !596

186:                                              ; preds = %185
  %187 = load ptr, ptr @stderr, align 8, !dbg !597
  %188 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %187, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 234), !dbg !597
  call void @nn_err_abort() #6, !dbg !597
  unreachable, !dbg !597

189:                                              ; No predecessors!
  br label %190, !dbg !601

190:                                              ; preds = %189
  br label %191, !dbg !601

191:                                              ; preds = %54, %190
  %192 = load i32, ptr %6, align 4, !dbg !602
  switch i32 %192, label %221 [
    i32 2, label %193
  ], !dbg !603

193:                                              ; preds = %191
  %194 = load i32, ptr %7, align 4, !dbg !604
  switch i32 %194, label %215 [
    i32 2, label %195
  ], !dbg !606

195:                                              ; preds = %193
  %196 = load ptr, ptr %9, align 8, !dbg !607
  %197 = getelementptr inbounds %struct.nn_streamhdr, ptr %196, i32 0, i32 3, !dbg !609
  %198 = load ptr, ptr %197, align 8, !dbg !609
  %199 = load ptr, ptr %9, align 8, !dbg !610
  %200 = getelementptr inbounds %struct.nn_streamhdr, ptr %199, i32 0, i32 4, !dbg !611
  call void @nn_usock_swap_owner(ptr noundef %198, ptr noundef %200), !dbg !612
  %201 = load ptr, ptr %9, align 8, !dbg !613
  %202 = getelementptr inbounds %struct.nn_streamhdr, ptr %201, i32 0, i32 3, !dbg !614
  store ptr null, ptr %202, align 8, !dbg !615
  %203 = load ptr, ptr %9, align 8, !dbg !616
  %204 = getelementptr inbounds %struct.nn_streamhdr, ptr %203, i32 0, i32 4, !dbg !617
  %205 = getelementptr inbounds %struct.nn_fsm_owner, ptr %204, i32 0, i32 0, !dbg !618
  store i32 -1, ptr %205, align 8, !dbg !619
  %206 = load ptr, ptr %9, align 8, !dbg !620
  %207 = getelementptr inbounds %struct.nn_streamhdr, ptr %206, i32 0, i32 4, !dbg !621
  %208 = getelementptr inbounds %struct.nn_fsm_owner, ptr %207, i32 0, i32 1, !dbg !622
  store ptr null, ptr %208, align 8, !dbg !623
  %209 = load ptr, ptr %9, align 8, !dbg !624
  %210 = getelementptr inbounds %struct.nn_streamhdr, ptr %209, i32 0, i32 1, !dbg !625
  store i32 6, ptr %210, align 8, !dbg !626
  %211 = load ptr, ptr %9, align 8, !dbg !627
  %212 = getelementptr inbounds %struct.nn_streamhdr, ptr %211, i32 0, i32 0, !dbg !628
  %213 = load ptr, ptr %9, align 8, !dbg !629
  %214 = getelementptr inbounds %struct.nn_streamhdr, ptr %213, i32 0, i32 7, !dbg !630
  call void @nn_fsm_raise(ptr noundef %212, ptr noundef %214, i32 noundef 2), !dbg !631
  br label %273, !dbg !632

215:                                              ; preds = %193
  br label %216, !dbg !633

216:                                              ; preds = %215
  %217 = load ptr, ptr @stderr, align 8, !dbg !634
  %218 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %217, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 255), !dbg !634
  call void @nn_err_abort() #6, !dbg !634
  unreachable, !dbg !634

219:                                              ; No predecessors!
  br label %220, !dbg !638

220:                                              ; preds = %219
  br label %221, !dbg !638

221:                                              ; preds = %191, %220
  br label %222, !dbg !639

222:                                              ; preds = %221
  %223 = load ptr, ptr @stderr, align 8, !dbg !640
  %224 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 259), !dbg !640
  call void @nn_err_abort() #6, !dbg !640
  unreachable, !dbg !640

225:                                              ; No predecessors!
  br label %226, !dbg !644

226:                                              ; preds = %225
  br label %227, !dbg !644

227:                                              ; preds = %54, %226
  %228 = load i32, ptr %6, align 4, !dbg !645
  switch i32 %228, label %257 [
    i32 2, label %229
  ], !dbg !646

229:                                              ; preds = %227
  %230 = load i32, ptr %7, align 4, !dbg !647
  switch i32 %230, label %251 [
    i32 2, label %231
  ], !dbg !649

231:                                              ; preds = %229
  %232 = load ptr, ptr %9, align 8, !dbg !650
  %233 = getelementptr inbounds %struct.nn_streamhdr, ptr %232, i32 0, i32 3, !dbg !652
  %234 = load ptr, ptr %233, align 8, !dbg !652
  %235 = load ptr, ptr %9, align 8, !dbg !653
  %236 = getelementptr inbounds %struct.nn_streamhdr, ptr %235, i32 0, i32 4, !dbg !654
  call void @nn_usock_swap_owner(ptr noundef %234, ptr noundef %236), !dbg !655
  %237 = load ptr, ptr %9, align 8, !dbg !656
  %238 = getelementptr inbounds %struct.nn_streamhdr, ptr %237, i32 0, i32 3, !dbg !657
  store ptr null, ptr %238, align 8, !dbg !658
  %239 = load ptr, ptr %9, align 8, !dbg !659
  %240 = getelementptr inbounds %struct.nn_streamhdr, ptr %239, i32 0, i32 4, !dbg !660
  %241 = getelementptr inbounds %struct.nn_fsm_owner, ptr %240, i32 0, i32 0, !dbg !661
  store i32 -1, ptr %241, align 8, !dbg !662
  %242 = load ptr, ptr %9, align 8, !dbg !663
  %243 = getelementptr inbounds %struct.nn_streamhdr, ptr %242, i32 0, i32 4, !dbg !664
  %244 = getelementptr inbounds %struct.nn_fsm_owner, ptr %243, i32 0, i32 1, !dbg !665
  store ptr null, ptr %244, align 8, !dbg !666
  %245 = load ptr, ptr %9, align 8, !dbg !667
  %246 = getelementptr inbounds %struct.nn_streamhdr, ptr %245, i32 0, i32 1, !dbg !668
  store i32 6, ptr %246, align 8, !dbg !669
  %247 = load ptr, ptr %9, align 8, !dbg !670
  %248 = getelementptr inbounds %struct.nn_streamhdr, ptr %247, i32 0, i32 0, !dbg !671
  %249 = load ptr, ptr %9, align 8, !dbg !672
  %250 = getelementptr inbounds %struct.nn_streamhdr, ptr %249, i32 0, i32 7, !dbg !673
  call void @nn_fsm_raise(ptr noundef %248, ptr noundef %250, i32 noundef 1), !dbg !674
  br label %273, !dbg !675

251:                                              ; preds = %229
  br label %252, !dbg !676

252:                                              ; preds = %251
  %253 = load ptr, ptr @stderr, align 8, !dbg !677
  %254 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %253, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 280), !dbg !677
  call void @nn_err_abort() #6, !dbg !677
  unreachable, !dbg !677

255:                                              ; No predecessors!
  br label %256, !dbg !681

256:                                              ; preds = %255
  br label %257, !dbg !681

257:                                              ; preds = %227, %256
  br label %258, !dbg !682

258:                                              ; preds = %257
  %259 = load ptr, ptr @stderr, align 8, !dbg !683
  %260 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %259, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 284), !dbg !683
  call void @nn_err_abort() #6, !dbg !683
  unreachable, !dbg !683

261:                                              ; No predecessors!
  br label %262, !dbg !687

262:                                              ; preds = %261
  br label %263, !dbg !687

263:                                              ; preds = %54, %262
  br label %264, !dbg !688

264:                                              ; preds = %263
  %265 = load ptr, ptr @stderr, align 8, !dbg !689
  %266 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %265, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 293), !dbg !689
  call void @nn_err_abort() #6, !dbg !689
  unreachable, !dbg !689

267:                                              ; No predecessors!
  br label %268, !dbg !693

268:                                              ; preds = %54, %267
  br label %269, !dbg !694

269:                                              ; preds = %268
  %270 = load ptr, ptr @stderr, align 8, !dbg !695
  %271 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %270, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 299), !dbg !695
  call void @nn_err_abort() #6, !dbg !695
  unreachable, !dbg !695

272:                                              ; No predecessors!
  br label %273, !dbg !699

273:                                              ; preds = %48, %49, %62, %91, %100, %113, %155, %161, %174, %195, %231, %272
  ret void, !dbg !700
}

declare void @nn_timer_init(ptr noundef, i32 noundef, ptr noundef) #2

declare void @nn_fsm_event_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_streamhdr_term(ptr noundef %0) #0 !dbg !701 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !704, metadata !DIExpression()), !dbg !705
  br label %3, !dbg !706

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !707
  %5 = getelementptr inbounds %struct.nn_streamhdr, ptr %4, i32 0, i32 1, !dbg !707
  %6 = load i32, ptr %5, align 8, !dbg !707
  %7 = icmp eq i32 %6, 1, !dbg !707
  %8 = xor i1 %7, true, !dbg !707
  %9 = zext i1 %8 to i32, !dbg !707
  %10 = sext i32 %9 to i64, !dbg !707
  %11 = icmp ne i64 %10, 0, !dbg !707
  br i1 %11, label %12, label %15, !dbg !710

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !dbg !711
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 66), !dbg !711
  call void @nn_err_abort() #6, !dbg !711
  unreachable, !dbg !711

15:                                               ; preds = %3
  br label %16, !dbg !710

16:                                               ; preds = %15
  %17 = load ptr, ptr %2, align 8, !dbg !713
  %18 = getelementptr inbounds %struct.nn_streamhdr, ptr %17, i32 0, i32 7, !dbg !714
  call void @nn_fsm_event_term(ptr noundef %18), !dbg !715
  %19 = load ptr, ptr %2, align 8, !dbg !716
  %20 = getelementptr inbounds %struct.nn_streamhdr, ptr %19, i32 0, i32 2, !dbg !717
  call void @nn_timer_term(ptr noundef %20), !dbg !718
  %21 = load ptr, ptr %2, align 8, !dbg !719
  %22 = getelementptr inbounds %struct.nn_streamhdr, ptr %21, i32 0, i32 0, !dbg !720
  call void @nn_fsm_term(ptr noundef %22), !dbg !721
  ret void, !dbg !722
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_fsm_event_term(ptr noundef) #2

declare void @nn_timer_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_streamhdr_isidle(ptr noundef %0) #0 !dbg !723 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !726, metadata !DIExpression()), !dbg !727
  %3 = load ptr, ptr %2, align 8, !dbg !728
  %4 = getelementptr inbounds %struct.nn_streamhdr, ptr %3, i32 0, i32 0, !dbg !729
  %5 = call i32 @nn_fsm_isidle(ptr noundef %4), !dbg !730
  ret i32 %5, !dbg !731
}

declare i32 @nn_fsm_isidle(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_streamhdr_start(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !732 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !735, metadata !DIExpression()), !dbg !736
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !737, metadata !DIExpression()), !dbg !738
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !739, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.declare(metadata ptr %7, metadata !741, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.declare(metadata ptr %8, metadata !743, metadata !DIExpression()), !dbg !744
  br label %9, !dbg !745

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 8, !dbg !746
  %11 = getelementptr inbounds %struct.nn_streamhdr, ptr %10, i32 0, i32 3, !dbg !746
  %12 = load ptr, ptr %11, align 8, !dbg !746
  %13 = icmp eq ptr %12, null, !dbg !746
  br i1 %13, label %14, label %20, !dbg !746

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8, !dbg !746
  %16 = getelementptr inbounds %struct.nn_streamhdr, ptr %15, i32 0, i32 4, !dbg !746
  %17 = getelementptr inbounds %struct.nn_fsm_owner, ptr %16, i32 0, i32 1, !dbg !746
  %18 = load ptr, ptr %17, align 8, !dbg !746
  %19 = icmp eq ptr %18, null, !dbg !746
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi i1 [ false, %9 ], [ %19, %14 ], !dbg !749
  %22 = xor i1 %21, true, !dbg !746
  %23 = zext i1 %22 to i32, !dbg !746
  %24 = sext i32 %23 to i64, !dbg !746
  %25 = icmp ne i64 %24, 0, !dbg !746
  br i1 %25, label %26, label %29, !dbg !750

26:                                               ; preds = %20
  %27 = load ptr, ptr @stderr, align 8, !dbg !751
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 85), !dbg !751
  call void @nn_err_abort() #6, !dbg !751
  unreachable, !dbg !751

29:                                               ; preds = %20
  br label %30, !dbg !750

30:                                               ; preds = %29
  %31 = load ptr, ptr %4, align 8, !dbg !753
  %32 = getelementptr inbounds %struct.nn_streamhdr, ptr %31, i32 0, i32 4, !dbg !754
  %33 = getelementptr inbounds %struct.nn_fsm_owner, ptr %32, i32 0, i32 0, !dbg !755
  store i32 1, ptr %33, align 8, !dbg !756
  %34 = load ptr, ptr %4, align 8, !dbg !757
  %35 = getelementptr inbounds %struct.nn_streamhdr, ptr %34, i32 0, i32 0, !dbg !758
  %36 = load ptr, ptr %4, align 8, !dbg !759
  %37 = getelementptr inbounds %struct.nn_streamhdr, ptr %36, i32 0, i32 4, !dbg !760
  %38 = getelementptr inbounds %struct.nn_fsm_owner, ptr %37, i32 0, i32 1, !dbg !761
  store ptr %35, ptr %38, align 8, !dbg !762
  %39 = load ptr, ptr %5, align 8, !dbg !763
  %40 = load ptr, ptr %4, align 8, !dbg !764
  %41 = getelementptr inbounds %struct.nn_streamhdr, ptr %40, i32 0, i32 4, !dbg !765
  call void @nn_usock_swap_owner(ptr noundef %39, ptr noundef %41), !dbg !766
  %42 = load ptr, ptr %5, align 8, !dbg !767
  %43 = load ptr, ptr %4, align 8, !dbg !768
  %44 = getelementptr inbounds %struct.nn_streamhdr, ptr %43, i32 0, i32 3, !dbg !769
  store ptr %42, ptr %44, align 8, !dbg !770
  %45 = load ptr, ptr %6, align 8, !dbg !771
  %46 = load ptr, ptr %4, align 8, !dbg !772
  %47 = getelementptr inbounds %struct.nn_streamhdr, ptr %46, i32 0, i32 5, !dbg !773
  store ptr %45, ptr %47, align 8, !dbg !774
  store i64 4, ptr %7, align 8, !dbg !775
  %48 = load ptr, ptr %6, align 8, !dbg !776
  call void @nn_pipebase_getopt(ptr noundef %48, i32 noundef 0, i32 noundef 13, ptr noundef %8, ptr noundef %7), !dbg !777
  br label %49, !dbg !778

49:                                               ; preds = %30
  %50 = load i64, ptr %7, align 8, !dbg !779
  %51 = icmp eq i64 %50, 4, !dbg !779
  %52 = xor i1 %51, true, !dbg !779
  %53 = zext i1 %52 to i32, !dbg !779
  %54 = sext i32 %53 to i64, !dbg !779
  %55 = icmp ne i64 %54, 0, !dbg !779
  br i1 %55, label %56, label %59, !dbg !782

56:                                               ; preds = %49
  %57 = load ptr, ptr @stderr, align 8, !dbg !783
  %58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 95), !dbg !783
  call void @nn_err_abort() #6, !dbg !783
  unreachable, !dbg !783

59:                                               ; preds = %49
  br label %60, !dbg !782

60:                                               ; preds = %59
  %61 = load ptr, ptr %4, align 8, !dbg !785
  %62 = getelementptr inbounds %struct.nn_streamhdr, ptr %61, i32 0, i32 6, !dbg !786
  %63 = getelementptr inbounds [8 x i8], ptr %62, i64 0, i64 0, !dbg !787
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %63, ptr align 1 @.str.5, i64 8, i1 false), !dbg !787
  %64 = load ptr, ptr %4, align 8, !dbg !788
  %65 = getelementptr inbounds %struct.nn_streamhdr, ptr %64, i32 0, i32 6, !dbg !789
  %66 = getelementptr inbounds [8 x i8], ptr %65, i64 0, i64 0, !dbg !788
  %67 = getelementptr inbounds i8, ptr %66, i64 4, !dbg !790
  %68 = load i32, ptr %8, align 4, !dbg !791
  %69 = trunc i32 %68 to i16, !dbg !792
  call void @nn_puts(ptr noundef %67, i16 noundef zeroext %69), !dbg !793
  %70 = load ptr, ptr %4, align 8, !dbg !794
  %71 = getelementptr inbounds %struct.nn_streamhdr, ptr %70, i32 0, i32 0, !dbg !795
  call void @nn_fsm_start(ptr noundef %71), !dbg !796
  ret void, !dbg !797
}

declare void @nn_usock_swap_owner(ptr noundef, ptr noundef) #2

declare void @nn_pipebase_getopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @nn_puts(ptr noundef, i16 noundef zeroext) #2

declare void @nn_fsm_start(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_streamhdr_stop(ptr noundef %0) #0 !dbg !798 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !799, metadata !DIExpression()), !dbg !800
  %3 = load ptr, ptr %2, align 8, !dbg !801
  %4 = getelementptr inbounds %struct.nn_streamhdr, ptr %3, i32 0, i32 0, !dbg !802
  call void @nn_fsm_stop(ptr noundef %4), !dbg !803
  ret void, !dbg !804
}

declare void @nn_fsm_stop(ptr noundef) #2

declare void @nn_timer_stop(ptr noundef) #2

declare i32 @nn_timer_isidle(ptr noundef) #2

declare void @nn_fsm_stopped(ptr noundef, i32 noundef) #2

declare void @nn_timer_start(ptr noundef, i32 noundef) #2

declare void @nn_usock_send(ptr noundef, ptr noundef, i32 noundef) #2

declare void @nn_usock_recv(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

declare zeroext i16 @nn_gets(ptr noundef) #2

declare i32 @nn_pipebase_ispeer(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare void @nn_fsm_raise(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!42}
!llvm.module.flags = !{!344, !345, !346, !347, !348, !349, !350}
!llvm.ident = !{!351}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/transports/utils/streamhdr.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "46808a1b89bd0035c15152a1086fe504")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 39)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 35)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 53)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 24)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 9)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 2)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 5)
!42 = distinct !DICompileUnit(language: DW_LANG_C11, file: !43, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !44, globals: !343, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "src/transports/utils/streamhdr.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "46808a1b89bd0035c15152a1086fe504")
!44 = !{!45, !46, !51, !342}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !47, line: 25, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !49, line: 40, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_streamhdr", file: !53, line: 41, size: 3008, elements: !54)
!53 = !DIFile(filename: "./src/transports/utils/streamhdr.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "7d060aeed02236eba444409cfc4451d2")
!54 = !{!55, !86, !87, !229, !294, !299, !337, !341}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !52, file: !53, line: 44, baseType: !56, size: 640)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !57, line: 66, size: 640, elements: !58)
!57 = !DIFile(filename: "src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!58 = !{!59, !66, !67, !68, !69, !70, !73}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !56, file: !57, line: 67, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !57, line: 58, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64, !65, !65, !45}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !56, file: !57, line: 68, baseType: !65, size: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !56, file: !57, line: 69, baseType: !65, size: 32, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !56, file: !57, line: 70, baseType: !45, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !56, file: !57, line: 71, baseType: !64, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !56, file: !57, line: 72, baseType: !71, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !57, line: 30, flags: DIFlagFwdDecl)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !56, file: !57, line: 73, baseType: !74, size: 320, offset: 320)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !57, line: 34, size: 320, elements: !75)
!75 = !{!76, !77, !78, !79, !80}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !74, file: !57, line: 35, baseType: !64, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !74, file: !57, line: 36, baseType: !65, size: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !74, file: !57, line: 37, baseType: !45, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !74, file: !57, line: 38, baseType: !65, size: 32, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !74, file: !57, line: 39, baseType: !81, size: 64, offset: 256)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !82, line: 33, size: 64, elements: !83)
!82 = !DIFile(filename: "src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !81, file: !82, line: 34, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !52, file: !53, line: 45, baseType: !65, size: 32, offset: 640)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !52, file: !53, line: 48, baseType: !88, size: 1664, offset: 704)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timer", file: !89, line: 32, size: 1664, elements: !90)
!89 = !DIFile(filename: "./src/transports/utils/../../aio/timer.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "36b8c8892aa99fc49b85b12a9caf893a")
!90 = !{!91, !92, !93, !99, !100, !120, !121, !228}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !88, file: !89, line: 33, baseType: !56, size: 640)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !88, file: !89, line: 34, baseType: !65, size: 32, offset: 640)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "start_task", scope: !88, file: !89, line: 35, baseType: !94, size: 128, offset: 704)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_task", file: !95, line: 48, size: 128, elements: !96)
!95 = !DIFile(filename: "src/aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !94, file: !95, line: 49, baseType: !64, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !94, file: !95, line: 50, baseType: !81, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "stop_task", scope: !88, file: !89, line: 36, baseType: !94, size: 128, offset: 832)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "wtimer", scope: !88, file: !89, line: 37, baseType: !101, size: 256, offset: 960)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_timer", file: !102, line: 37, size: 256, elements: !103)
!102 = !DIFile(filename: "src/aio/worker.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "2b691693adce9b61547df7808f294867")
!103 = !{!104, !105}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !101, file: !102, line: 38, baseType: !64, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !101, file: !102, line: 39, baseType: !106, size: 192, offset: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset_hndl", file: !107, line: 32, size: 192, elements: !108)
!107 = !DIFile(filename: "src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!108 = !{!109, !116}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !106, file: !107, line: 33, baseType: !110, size: 128)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !111, line: 26, size: 128, elements: !112)
!111 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!112 = !{!113, !115}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !111, line: 27, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !110, file: !111, line: 28, baseType: !114, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !106, file: !107, line: 34, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !47, line: 27, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !49, line: 45, baseType: !119)
!119 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !88, file: !89, line: 38, baseType: !74, size: 320, offset: 1216)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !88, file: !89, line: 39, baseType: !122, size: 64, offset: 1536)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !95, line: 53, size: 1408, elements: !124)
!124 = !{!125, !161, !166, !167, !173, !200, !201, !215}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !123, file: !95, line: 54, baseType: !126, size: 320)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !127, line: 32, size: 320, elements: !128)
!127 = !DIFile(filename: "src/aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !126, file: !127, line: 36, baseType: !130, size: 320)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !131, line: 72, baseType: !132)
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!132 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !131, line: 67, size: 320, elements: !133)
!133 = !{!134, !155, !159}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !132, file: !131, line: 69, baseType: !135, size: 320)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !136, line: 22, size: 320, elements: !137)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!137 = !{!138, !139, !141, !142, !143, !144, !146, !147}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !135, file: !136, line: 24, baseType: !65, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !135, file: !136, line: 25, baseType: !140, size: 32, offset: 32)
!140 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !135, file: !136, line: 26, baseType: !65, size: 32, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !135, file: !136, line: 28, baseType: !140, size: 32, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !135, file: !136, line: 32, baseType: !65, size: 32, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !135, file: !136, line: 34, baseType: !145, size: 16, offset: 160)
!145 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !135, file: !136, line: 35, baseType: !145, size: 16, offset: 176)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !135, file: !136, line: 36, baseType: !148, size: 128, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !149, line: 55, baseType: !150)
!149 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !149, line: 51, size: 128, elements: !151)
!151 = !{!152, !154}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !150, file: !149, line: 53, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !150, file: !149, line: 54, baseType: !153, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !132, file: !131, line: 70, baseType: !156, size: 320)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 40)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !132, file: !131, line: 71, baseType: !160, size: 64)
!160 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !123, file: !95, line: 55, baseType: !162, size: 128, offset: 320)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !82, line: 37, size: 128, elements: !163)
!163 = !{!164, !165}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !162, file: !82, line: 38, baseType: !85, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !162, file: !82, line: 39, baseType: !85, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !123, file: !95, line: 56, baseType: !81, size: 64, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !123, file: !95, line: 57, baseType: !168, size: 64, offset: 512)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !169, line: 25, size: 64, elements: !170)
!169 = !DIFile(filename: "src/aio/../utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !168, file: !169, line: 26, baseType: !65, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !168, file: !169, line: 27, baseType: !65, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !123, file: !95, line: 58, baseType: !174, size: 320, offset: 576)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !175, line: 31, size: 320, elements: !176)
!175 = !DIFile(filename: "src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!176 = !{!177, !178, !179, !180, !188, !199}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !174, file: !175, line: 34, baseType: !65, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !174, file: !175, line: 37, baseType: !65, size: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !174, file: !175, line: 40, baseType: !65, size: 32, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !174, file: !175, line: 43, baseType: !181, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !183, line: 36, size: 64, elements: !184)
!183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!184 = !{!185, !186, !187}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !182, file: !183, line: 38, baseType: !65, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !182, file: !183, line: 39, baseType: !145, size: 16, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !182, file: !183, line: 40, baseType: !145, size: 16, offset: 48)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !174, file: !175, line: 52, baseType: !189, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !175, line: 48, size: 128, elements: !191)
!191 = !{!192, !197, !198}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !190, file: !175, line: 49, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !175, line: 27, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !194, file: !175, line: 28, baseType: !65, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !190, file: !175, line: 50, baseType: !65, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !175, line: 51, baseType: !65, size: 32, offset: 96)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !174, file: !175, line: 55, baseType: !65, size: 32, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !123, file: !95, line: 59, baseType: !194, size: 32, offset: 896)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !123, file: !95, line: 60, baseType: !202, size: 256, offset: 960)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !107, line: 37, size: 256, elements: !203)
!203 = !{!204, !210}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !202, file: !107, line: 38, baseType: !205, size: 128)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !206, line: 31, size: 128, elements: !207)
!206 = !DIFile(filename: "src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !205, file: !206, line: 33, baseType: !117, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !205, file: !206, line: 34, baseType: !117, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !202, file: !107, line: 39, baseType: !211, size: 128, offset: 128)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !111, line: 31, size: 128, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !211, file: !111, line: 32, baseType: !114, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !211, file: !111, line: 33, baseType: !114, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !123, file: !95, line: 61, baseType: !216, size: 192, offset: 1216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !217, line: 25, size: 192, elements: !218)
!217 = !DIFile(filename: "src/aio/../utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!218 = !{!219, !225, !226}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !216, file: !217, line: 27, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !222, line: 28, baseType: !223)
!222 = !DIFile(filename: "src/aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!223 = !DISubroutineType(types: !224)
!224 = !{null, !45}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !216, file: !217, line: 28, baseType: !45, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !216, file: !217, line: 29, baseType: !227, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !131, line: 27, baseType: !119)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !88, file: !89, line: 40, baseType: !65, size: 32, offset: 1600)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "usock", scope: !52, file: !53, line: 51, baseType: !230, size: 64, offset: 2368)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_usock", file: !232, line: 29, size: 4224, elements: !233)
!232 = !DIFile(filename: "src/aio/usock_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "31b785bc46a858e5ba003f912abaeac8")
!233 = !{!234, !235, !236, !237, !238, !243, !257, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !231, file: !232, line: 32, baseType: !56, size: 640)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !231, file: !232, line: 33, baseType: !65, size: 32, offset: 640)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !231, file: !232, line: 36, baseType: !122, size: 64, offset: 704)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !231, file: !232, line: 39, baseType: !65, size: 32, offset: 768)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "wfd", scope: !231, file: !232, line: 40, baseType: !239, size: 128, offset: 832)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_fd", file: !95, line: 40, size: 128, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !239, file: !95, line: 41, baseType: !64, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !239, file: !95, line: 42, baseType: !194, size: 32, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !231, file: !232, line: 59, baseType: !244, size: 320, offset: 960)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !232, line: 43, size: 320, elements: !245)
!245 = !{!246, !251, !254, !255, !256}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !244, file: !232, line: 46, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !47, line: 24, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !49, line: 38, baseType: !250)
!250 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !244, file: !232, line: 47, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !253, line: 46, baseType: !119)
!253 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!254 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !244, file: !232, line: 50, baseType: !247, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "batch_len", scope: !244, file: !232, line: 53, baseType: !252, size: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "batch_pos", scope: !244, file: !232, line: 58, baseType: !252, size: 64, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !231, file: !232, line: 69, baseType: !258, size: 832, offset: 1280)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !232, line: 62, size: 832, elements: !259)
!259 = !{!260, !279}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !258, file: !232, line: 65, baseType: !261, size: 448)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !262, line: 259, size: 448, elements: !263)
!262 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!263 = !{!264, !265, !268, !275, !276, !277, !278}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !261, file: !262, line: 261, baseType: !45, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !261, file: !262, line: 262, baseType: !266, size: 32, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !262, line: 33, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !49, line: 210, baseType: !140)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !261, file: !262, line: 264, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !271, line: 26, size: 128, elements: !272)
!271 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!272 = !{!273, !274}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !270, file: !271, line: 28, baseType: !45, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !270, file: !271, line: 29, baseType: !252, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !261, file: !262, line: 265, baseType: !252, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !261, file: !262, line: 267, baseType: !45, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !261, file: !262, line: 268, baseType: !252, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !261, file: !262, line: 273, baseType: !65, size: 32, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !258, file: !232, line: 68, baseType: !280, size: 384, offset: 448)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 384, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 3)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "task_connecting", scope: !231, file: !232, line: 72, baseType: !94, size: 128, offset: 2112)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "task_connected", scope: !231, file: !232, line: 73, baseType: !94, size: 128, offset: 2240)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "task_accept", scope: !231, file: !232, line: 74, baseType: !94, size: 128, offset: 2368)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "task_send", scope: !231, file: !232, line: 75, baseType: !94, size: 128, offset: 2496)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "task_recv", scope: !231, file: !232, line: 76, baseType: !94, size: 128, offset: 2624)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "task_stop", scope: !231, file: !232, line: 77, baseType: !94, size: 128, offset: 2752)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "event_established", scope: !231, file: !232, line: 80, baseType: !74, size: 320, offset: 2880)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "event_sent", scope: !231, file: !232, line: 81, baseType: !74, size: 320, offset: 3200)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "event_received", scope: !231, file: !232, line: 82, baseType: !74, size: 320, offset: 3520)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "event_error", scope: !231, file: !232, line: 83, baseType: !74, size: 320, offset: 3840)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "asock", scope: !231, file: !232, line: 87, baseType: !230, size: 64, offset: 4160)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "usock_owner", scope: !52, file: !53, line: 54, baseType: !295, size: 128, offset: 2432)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_owner", file: !57, line: 61, size: 128, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !295, file: !57, line: 62, baseType: !65, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !295, file: !57, line: 63, baseType: !64, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !52, file: !53, line: 57, baseType: !300, size: 64, offset: 2560)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase", file: !302, line: 147, size: 1536, elements: !303)
!302 = !DIFile(filename: "./src/transports/utils/../../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
!303 = !{!304, !305, !328, !329, !330, !331, !334, !335, !336}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !301, file: !302, line: 148, baseType: !56, size: 640)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !301, file: !302, line: 149, baseType: !306, size: 64, offset: 640)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase_vfptr", file: !302, line: 134, size: 128, elements: !309)
!309 = !{!310, !327}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !308, file: !302, line: 138, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!65, !300, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !316, line: 30, size: 512, elements: !317)
!316 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!317 = !{!318, !326}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !315, file: !316, line: 33, baseType: !319, size: 256)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !320, line: 39, size: 256, elements: !321)
!320 = !DIFile(filename: "src/aio/../utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !319, file: !320, line: 40, baseType: !323, size: 256)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 256, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !315, file: !316, line: 36, baseType: !319, size: 256, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !308, file: !302, line: 142, baseType: !311, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !302, line: 150, baseType: !248, size: 8, offset: 704)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !301, file: !302, line: 151, baseType: !248, size: 8, offset: 712)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !301, file: !302, line: 152, baseType: !248, size: 8, offset: 720)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !301, file: !302, line: 153, baseType: !332, size: 64, offset: 768)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !302, line: 39, flags: DIFlagFwdDecl)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !301, file: !302, line: 154, baseType: !45, size: 64, offset: 832)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !301, file: !302, line: 155, baseType: !74, size: 320, offset: 896)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !301, file: !302, line: 156, baseType: !74, size: 320, offset: 1216)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "protohdr", scope: !52, file: !53, line: 60, baseType: !338, size: 64, offset: 2624)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 64, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 8)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !52, file: !53, line: 63, baseType: !74, size: 320, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!343 = !{!0, !7, !12, !17, !22, !27, !32, !37}
!344 = !{i32 7, !"Dwarf Version", i32 5}
!345 = !{i32 2, !"Debug Info Version", i32 3}
!346 = !{i32 1, !"wchar_size", i32 4}
!347 = !{i32 8, !"PIC Level", i32 2}
!348 = !{i32 7, !"PIE Level", i32 2}
!349 = !{i32 7, !"uwtable", i32 2}
!350 = !{i32 7, !"frame-pointer", i32 2}
!351 = !{!"clang version 16.0.0"}
!352 = distinct !DISubprogram(name: "nn_streamhdr_init", scope: !2, file: !2, line: 50, type: !353, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !355)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !51, !65, !64}
!355 = !{}
!356 = !DILocalVariable(name: "self", arg: 1, scope: !352, file: !2, line: 50, type: !51)
!357 = !DILocation(line: 50, column: 46, scope: !352)
!358 = !DILocalVariable(name: "src", arg: 2, scope: !352, file: !2, line: 50, type: !65)
!359 = !DILocation(line: 50, column: 56, scope: !352)
!360 = !DILocalVariable(name: "owner", arg: 3, scope: !352, file: !2, line: 51, type: !64)
!361 = !DILocation(line: 51, column: 20, scope: !352)
!362 = !DILocation(line: 53, column: 19, scope: !352)
!363 = !DILocation(line: 53, column: 25, scope: !352)
!364 = !DILocation(line: 53, column: 52, scope: !352)
!365 = !DILocation(line: 53, column: 57, scope: !352)
!366 = !DILocation(line: 53, column: 63, scope: !352)
!367 = !DILocation(line: 53, column: 5, scope: !352)
!368 = !DILocation(line: 54, column: 5, scope: !352)
!369 = !DILocation(line: 54, column: 11, scope: !352)
!370 = !DILocation(line: 54, column: 17, scope: !352)
!371 = !DILocation(line: 55, column: 21, scope: !352)
!372 = !DILocation(line: 55, column: 27, scope: !352)
!373 = !DILocation(line: 55, column: 59, scope: !352)
!374 = !DILocation(line: 55, column: 65, scope: !352)
!375 = !DILocation(line: 55, column: 5, scope: !352)
!376 = !DILocation(line: 56, column: 25, scope: !352)
!377 = !DILocation(line: 56, column: 31, scope: !352)
!378 = !DILocation(line: 56, column: 5, scope: !352)
!379 = !DILocation(line: 58, column: 5, scope: !352)
!380 = !DILocation(line: 58, column: 11, scope: !352)
!381 = !DILocation(line: 58, column: 17, scope: !352)
!382 = !DILocation(line: 59, column: 5, scope: !352)
!383 = !DILocation(line: 59, column: 11, scope: !352)
!384 = !DILocation(line: 59, column: 23, scope: !352)
!385 = !DILocation(line: 59, column: 27, scope: !352)
!386 = !DILocation(line: 60, column: 5, scope: !352)
!387 = !DILocation(line: 60, column: 11, scope: !352)
!388 = !DILocation(line: 60, column: 23, scope: !352)
!389 = !DILocation(line: 60, column: 27, scope: !352)
!390 = !DILocation(line: 61, column: 5, scope: !352)
!391 = !DILocation(line: 61, column: 11, scope: !352)
!392 = !DILocation(line: 61, column: 20, scope: !352)
!393 = !DILocation(line: 62, column: 1, scope: !352)
!394 = distinct !DISubprogram(name: "nn_streamhdr_handler", scope: !2, file: !2, line: 110, type: !62, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !42, retainedNodes: !355)
!395 = !DILocalVariable(name: "self", arg: 1, scope: !394, file: !2, line: 110, type: !64)
!396 = !DILocation(line: 110, column: 50, scope: !394)
!397 = !DILocalVariable(name: "src", arg: 2, scope: !394, file: !2, line: 110, type: !65)
!398 = !DILocation(line: 110, column: 60, scope: !394)
!399 = !DILocalVariable(name: "type", arg: 3, scope: !394, file: !2, line: 110, type: !65)
!400 = !DILocation(line: 110, column: 69, scope: !394)
!401 = !DILocalVariable(name: "srcptr", arg: 4, scope: !394, file: !2, line: 111, type: !45)
!402 = !DILocation(line: 111, column: 11, scope: !394)
!403 = !DILocalVariable(name: "streamhdr", scope: !394, file: !2, line: 113, type: !51)
!404 = !DILocation(line: 113, column: 26, scope: !394)
!405 = !DILocalVariable(name: "iovec", scope: !394, file: !2, line: 114, type: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_iovec", file: !407, line: 165, size: 128, elements: !408)
!407 = !DIFile(filename: "src/nn.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "0c95956590725e5a1eedd7f7b192cc23")
!408 = !{!409, !410}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !406, file: !407, line: 166, baseType: !45, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !406, file: !407, line: 167, baseType: !252, size: 64, offset: 64)
!411 = !DILocation(line: 114, column: 21, scope: !394)
!412 = !DILocalVariable(name: "protocol", scope: !394, file: !2, line: 115, type: !65)
!413 = !DILocation(line: 115, column: 9, scope: !394)
!414 = !DILocation(line: 117, column: 17, scope: !394)
!415 = !DILocation(line: 117, column: 15, scope: !394)
!416 = !DILocation(line: 122, column: 9, scope: !417)
!417 = distinct !DILexicalBlock(scope: !394, file: !2, line: 122, column: 9)
!418 = !DILocation(line: 0, scope: !417)
!419 = !DILocation(line: 122, column: 9, scope: !394)
!420 = !DILocation(line: 123, column: 25, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !2, line: 122, column: 64)
!422 = !DILocation(line: 123, column: 36, scope: !421)
!423 = !DILocation(line: 123, column: 9, scope: !421)
!424 = !DILocation(line: 124, column: 9, scope: !421)
!425 = !DILocation(line: 124, column: 20, scope: !421)
!426 = !DILocation(line: 124, column: 26, scope: !421)
!427 = !DILocation(line: 125, column: 5, scope: !421)
!428 = !DILocation(line: 126, column: 9, scope: !429)
!429 = distinct !DILexicalBlock(scope: !394, file: !2, line: 126, column: 9)
!430 = !DILocation(line: 126, column: 9, scope: !394)
!431 = !DILocation(line: 127, column: 32, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !2, line: 127, column: 13)
!433 = distinct !DILexicalBlock(scope: !429, file: !2, line: 126, column: 68)
!434 = !DILocation(line: 127, column: 43, scope: !432)
!435 = !DILocation(line: 127, column: 14, scope: !432)
!436 = !DILocation(line: 127, column: 13, scope: !433)
!437 = !DILocation(line: 128, column: 13, scope: !432)
!438 = !DILocation(line: 129, column: 9, scope: !433)
!439 = !DILocation(line: 129, column: 20, scope: !433)
!440 = !DILocation(line: 129, column: 26, scope: !433)
!441 = !DILocation(line: 130, column: 26, scope: !433)
!442 = !DILocation(line: 130, column: 37, scope: !433)
!443 = !DILocation(line: 130, column: 9, scope: !433)
!444 = !DILocation(line: 131, column: 9, scope: !433)
!445 = !DILocation(line: 134, column: 13, scope: !394)
!446 = !DILocation(line: 134, column: 24, scope: !394)
!447 = !DILocation(line: 134, column: 5, scope: !394)
!448 = !DILocation(line: 140, column: 17, scope: !449)
!449 = distinct !DILexicalBlock(scope: !394, file: !2, line: 134, column: 31)
!450 = !DILocation(line: 140, column: 9, scope: !449)
!451 = !DILocation(line: 143, column: 21, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !2, line: 140, column: 22)
!453 = !DILocation(line: 143, column: 13, scope: !452)
!454 = !DILocation(line: 145, column: 34, scope: !455)
!455 = distinct !DILexicalBlock(scope: !452, file: !2, line: 143, column: 27)
!456 = !DILocation(line: 145, column: 45, scope: !455)
!457 = !DILocation(line: 145, column: 17, scope: !455)
!458 = !DILocation(line: 146, column: 34, scope: !455)
!459 = !DILocation(line: 146, column: 45, scope: !455)
!460 = !DILocation(line: 146, column: 23, scope: !455)
!461 = !DILocation(line: 146, column: 32, scope: !455)
!462 = !DILocation(line: 147, column: 23, scope: !455)
!463 = !DILocation(line: 147, column: 31, scope: !455)
!464 = !DILocation(line: 148, column: 32, scope: !455)
!465 = !DILocation(line: 148, column: 43, scope: !455)
!466 = !DILocation(line: 148, column: 17, scope: !455)
!467 = !DILocation(line: 149, column: 17, scope: !455)
!468 = !DILocation(line: 149, column: 28, scope: !455)
!469 = !DILocation(line: 149, column: 34, scope: !455)
!470 = !DILocation(line: 150, column: 17, scope: !455)
!471 = !DILocation(line: 152, column: 17, scope: !455)
!472 = !DILocation(line: 152, column: 17, scope: !473)
!473 = distinct !DILexicalBlock(scope: !474, file: !2, line: 152, column: 17)
!474 = distinct !DILexicalBlock(scope: !475, file: !2, line: 152, column: 17)
!475 = distinct !DILexicalBlock(scope: !455, file: !2, line: 152, column: 17)
!476 = !DILocation(line: 153, column: 13, scope: !455)
!477 = !DILocation(line: 156, column: 13, scope: !452)
!478 = !DILocation(line: 156, column: 13, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !2, line: 156, column: 13)
!480 = distinct !DILexicalBlock(scope: !481, file: !2, line: 156, column: 13)
!481 = distinct !DILexicalBlock(scope: !452, file: !2, line: 156, column: 13)
!482 = !DILocation(line: 157, column: 9, scope: !452)
!483 = !DILocation(line: 163, column: 17, scope: !449)
!484 = !DILocation(line: 163, column: 9, scope: !449)
!485 = !DILocation(line: 166, column: 21, scope: !486)
!486 = distinct !DILexicalBlock(scope: !449, file: !2, line: 163, column: 22)
!487 = !DILocation(line: 166, column: 13, scope: !486)
!488 = !DILocation(line: 168, column: 32, scope: !489)
!489 = distinct !DILexicalBlock(scope: !486, file: !2, line: 166, column: 27)
!490 = !DILocation(line: 168, column: 43, scope: !489)
!491 = !DILocation(line: 168, column: 50, scope: !489)
!492 = !DILocation(line: 168, column: 61, scope: !489)
!493 = !DILocation(line: 168, column: 17, scope: !489)
!494 = !DILocation(line: 170, column: 17, scope: !489)
!495 = !DILocation(line: 170, column: 28, scope: !489)
!496 = !DILocation(line: 170, column: 34, scope: !489)
!497 = !DILocation(line: 171, column: 17, scope: !489)
!498 = !DILocation(line: 173, column: 33, scope: !489)
!499 = !DILocation(line: 173, column: 44, scope: !489)
!500 = !DILocation(line: 173, column: 17, scope: !489)
!501 = !DILocation(line: 174, column: 17, scope: !489)
!502 = !DILocation(line: 174, column: 28, scope: !489)
!503 = !DILocation(line: 174, column: 34, scope: !489)
!504 = !DILocation(line: 175, column: 17, scope: !489)
!505 = !DILocation(line: 177, column: 17, scope: !489)
!506 = !DILocation(line: 177, column: 17, scope: !507)
!507 = distinct !DILexicalBlock(scope: !508, file: !2, line: 177, column: 17)
!508 = distinct !DILexicalBlock(scope: !509, file: !2, line: 177, column: 17)
!509 = distinct !DILexicalBlock(scope: !489, file: !2, line: 177, column: 17)
!510 = !DILocation(line: 178, column: 13, scope: !489)
!511 = !DILocation(line: 181, column: 21, scope: !486)
!512 = !DILocation(line: 181, column: 13, scope: !486)
!513 = !DILocation(line: 183, column: 33, scope: !514)
!514 = distinct !DILexicalBlock(scope: !486, file: !2, line: 181, column: 27)
!515 = !DILocation(line: 183, column: 44, scope: !514)
!516 = !DILocation(line: 183, column: 17, scope: !514)
!517 = !DILocation(line: 184, column: 17, scope: !514)
!518 = !DILocation(line: 184, column: 28, scope: !514)
!519 = !DILocation(line: 184, column: 34, scope: !514)
!520 = !DILocation(line: 185, column: 17, scope: !514)
!521 = !DILocation(line: 187, column: 17, scope: !514)
!522 = !DILocation(line: 187, column: 17, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !2, line: 187, column: 17)
!524 = distinct !DILexicalBlock(scope: !525, file: !2, line: 187, column: 17)
!525 = distinct !DILexicalBlock(scope: !514, file: !2, line: 187, column: 17)
!526 = !DILocation(line: 188, column: 13, scope: !514)
!527 = !DILocation(line: 191, column: 13, scope: !486)
!528 = !DILocation(line: 191, column: 13, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !2, line: 191, column: 13)
!530 = distinct !DILexicalBlock(scope: !531, file: !2, line: 191, column: 13)
!531 = distinct !DILexicalBlock(scope: !486, file: !2, line: 191, column: 13)
!532 = !DILocation(line: 192, column: 9, scope: !486)
!533 = !DILocation(line: 198, column: 17, scope: !449)
!534 = !DILocation(line: 198, column: 9, scope: !449)
!535 = !DILocation(line: 201, column: 21, scope: !536)
!536 = distinct !DILexicalBlock(scope: !449, file: !2, line: 198, column: 22)
!537 = !DILocation(line: 201, column: 13, scope: !536)
!538 = !DILocation(line: 206, column: 29, scope: !539)
!539 = distinct !DILexicalBlock(scope: !540, file: !2, line: 206, column: 21)
!540 = distinct !DILexicalBlock(scope: !536, file: !2, line: 201, column: 27)
!541 = !DILocation(line: 206, column: 40, scope: !539)
!542 = !DILocation(line: 206, column: 21, scope: !539)
!543 = !DILocation(line: 206, column: 63, scope: !539)
!544 = !DILocation(line: 206, column: 21, scope: !540)
!545 = !DILocation(line: 207, column: 21, scope: !539)
!546 = !DILocation(line: 208, column: 37, scope: !540)
!547 = !DILocation(line: 208, column: 48, scope: !540)
!548 = !DILocation(line: 208, column: 57, scope: !540)
!549 = !DILocation(line: 208, column: 28, scope: !540)
!550 = !DILocation(line: 208, column: 26, scope: !540)
!551 = !DILocation(line: 209, column: 42, scope: !552)
!552 = distinct !DILexicalBlock(scope: !540, file: !2, line: 209, column: 21)
!553 = !DILocation(line: 209, column: 53, scope: !552)
!554 = !DILocation(line: 209, column: 63, scope: !552)
!555 = !DILocation(line: 209, column: 22, scope: !552)
!556 = !DILocation(line: 209, column: 21, scope: !540)
!557 = !DILocation(line: 210, column: 21, scope: !552)
!558 = !DILocation(line: 211, column: 33, scope: !540)
!559 = !DILocation(line: 211, column: 44, scope: !540)
!560 = !DILocation(line: 211, column: 17, scope: !540)
!561 = !DILocation(line: 212, column: 17, scope: !540)
!562 = !DILocation(line: 212, column: 28, scope: !540)
!563 = !DILocation(line: 212, column: 34, scope: !540)
!564 = !DILocation(line: 213, column: 17, scope: !540)
!565 = !DILabel(scope: !540, name: "invalidhdr", file: !2, line: 215)
!566 = !DILocation(line: 215, column: 1, scope: !540)
!567 = !DILocation(line: 216, column: 33, scope: !540)
!568 = !DILocation(line: 216, column: 44, scope: !540)
!569 = !DILocation(line: 216, column: 17, scope: !540)
!570 = !DILocation(line: 217, column: 17, scope: !540)
!571 = !DILocation(line: 217, column: 28, scope: !540)
!572 = !DILocation(line: 217, column: 34, scope: !540)
!573 = !DILocation(line: 218, column: 17, scope: !540)
!574 = !DILocation(line: 220, column: 17, scope: !540)
!575 = !DILocation(line: 220, column: 17, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !2, line: 220, column: 17)
!577 = distinct !DILexicalBlock(scope: !578, file: !2, line: 220, column: 17)
!578 = distinct !DILexicalBlock(scope: !540, file: !2, line: 220, column: 17)
!579 = !DILocation(line: 221, column: 13, scope: !540)
!580 = !DILocation(line: 224, column: 21, scope: !536)
!581 = !DILocation(line: 224, column: 13, scope: !536)
!582 = !DILocation(line: 226, column: 33, scope: !583)
!583 = distinct !DILexicalBlock(scope: !536, file: !2, line: 224, column: 27)
!584 = !DILocation(line: 226, column: 44, scope: !583)
!585 = !DILocation(line: 226, column: 17, scope: !583)
!586 = !DILocation(line: 227, column: 17, scope: !583)
!587 = !DILocation(line: 227, column: 28, scope: !583)
!588 = !DILocation(line: 227, column: 34, scope: !583)
!589 = !DILocation(line: 228, column: 17, scope: !583)
!590 = !DILocation(line: 230, column: 17, scope: !583)
!591 = !DILocation(line: 230, column: 17, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !2, line: 230, column: 17)
!593 = distinct !DILexicalBlock(scope: !594, file: !2, line: 230, column: 17)
!594 = distinct !DILexicalBlock(scope: !583, file: !2, line: 230, column: 17)
!595 = !DILocation(line: 231, column: 13, scope: !583)
!596 = !DILocation(line: 234, column: 13, scope: !536)
!597 = !DILocation(line: 234, column: 13, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !2, line: 234, column: 13)
!599 = distinct !DILexicalBlock(scope: !600, file: !2, line: 234, column: 13)
!600 = distinct !DILexicalBlock(scope: !536, file: !2, line: 234, column: 13)
!601 = !DILocation(line: 235, column: 9, scope: !536)
!602 = !DILocation(line: 241, column: 17, scope: !449)
!603 = !DILocation(line: 241, column: 9, scope: !449)
!604 = !DILocation(line: 244, column: 21, scope: !605)
!605 = distinct !DILexicalBlock(scope: !449, file: !2, line: 241, column: 22)
!606 = !DILocation(line: 244, column: 13, scope: !605)
!607 = !DILocation(line: 246, column: 38, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !2, line: 244, column: 27)
!609 = !DILocation(line: 246, column: 49, scope: !608)
!610 = !DILocation(line: 246, column: 57, scope: !608)
!611 = !DILocation(line: 246, column: 68, scope: !608)
!612 = !DILocation(line: 246, column: 17, scope: !608)
!613 = !DILocation(line: 247, column: 17, scope: !608)
!614 = !DILocation(line: 247, column: 28, scope: !608)
!615 = !DILocation(line: 247, column: 34, scope: !608)
!616 = !DILocation(line: 248, column: 17, scope: !608)
!617 = !DILocation(line: 248, column: 28, scope: !608)
!618 = !DILocation(line: 248, column: 40, scope: !608)
!619 = !DILocation(line: 248, column: 44, scope: !608)
!620 = !DILocation(line: 249, column: 17, scope: !608)
!621 = !DILocation(line: 249, column: 28, scope: !608)
!622 = !DILocation(line: 249, column: 40, scope: !608)
!623 = !DILocation(line: 249, column: 44, scope: !608)
!624 = !DILocation(line: 250, column: 17, scope: !608)
!625 = !DILocation(line: 250, column: 28, scope: !608)
!626 = !DILocation(line: 250, column: 34, scope: !608)
!627 = !DILocation(line: 251, column: 32, scope: !608)
!628 = !DILocation(line: 251, column: 43, scope: !608)
!629 = !DILocation(line: 251, column: 49, scope: !608)
!630 = !DILocation(line: 251, column: 60, scope: !608)
!631 = !DILocation(line: 251, column: 17, scope: !608)
!632 = !DILocation(line: 253, column: 17, scope: !608)
!633 = !DILocation(line: 255, column: 17, scope: !608)
!634 = !DILocation(line: 255, column: 17, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !2, line: 255, column: 17)
!636 = distinct !DILexicalBlock(scope: !637, file: !2, line: 255, column: 17)
!637 = distinct !DILexicalBlock(scope: !608, file: !2, line: 255, column: 17)
!638 = !DILocation(line: 256, column: 13, scope: !608)
!639 = !DILocation(line: 259, column: 13, scope: !605)
!640 = !DILocation(line: 259, column: 13, scope: !641)
!641 = distinct !DILexicalBlock(scope: !642, file: !2, line: 259, column: 13)
!642 = distinct !DILexicalBlock(scope: !643, file: !2, line: 259, column: 13)
!643 = distinct !DILexicalBlock(scope: !605, file: !2, line: 259, column: 13)
!644 = !DILocation(line: 260, column: 9, scope: !605)
!645 = !DILocation(line: 266, column: 17, scope: !449)
!646 = !DILocation(line: 266, column: 9, scope: !449)
!647 = !DILocation(line: 269, column: 21, scope: !648)
!648 = distinct !DILexicalBlock(scope: !449, file: !2, line: 266, column: 22)
!649 = !DILocation(line: 269, column: 13, scope: !648)
!650 = !DILocation(line: 271, column: 38, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !2, line: 269, column: 27)
!652 = !DILocation(line: 271, column: 49, scope: !651)
!653 = !DILocation(line: 271, column: 57, scope: !651)
!654 = !DILocation(line: 271, column: 68, scope: !651)
!655 = !DILocation(line: 271, column: 17, scope: !651)
!656 = !DILocation(line: 272, column: 17, scope: !651)
!657 = !DILocation(line: 272, column: 28, scope: !651)
!658 = !DILocation(line: 272, column: 34, scope: !651)
!659 = !DILocation(line: 273, column: 17, scope: !651)
!660 = !DILocation(line: 273, column: 28, scope: !651)
!661 = !DILocation(line: 273, column: 40, scope: !651)
!662 = !DILocation(line: 273, column: 44, scope: !651)
!663 = !DILocation(line: 274, column: 17, scope: !651)
!664 = !DILocation(line: 274, column: 28, scope: !651)
!665 = !DILocation(line: 274, column: 40, scope: !651)
!666 = !DILocation(line: 274, column: 44, scope: !651)
!667 = !DILocation(line: 275, column: 17, scope: !651)
!668 = !DILocation(line: 275, column: 28, scope: !651)
!669 = !DILocation(line: 275, column: 34, scope: !651)
!670 = !DILocation(line: 276, column: 32, scope: !651)
!671 = !DILocation(line: 276, column: 43, scope: !651)
!672 = !DILocation(line: 276, column: 49, scope: !651)
!673 = !DILocation(line: 276, column: 60, scope: !651)
!674 = !DILocation(line: 276, column: 17, scope: !651)
!675 = !DILocation(line: 278, column: 17, scope: !651)
!676 = !DILocation(line: 280, column: 17, scope: !651)
!677 = !DILocation(line: 280, column: 17, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !2, line: 280, column: 17)
!679 = distinct !DILexicalBlock(scope: !680, file: !2, line: 280, column: 17)
!680 = distinct !DILexicalBlock(scope: !651, file: !2, line: 280, column: 17)
!681 = !DILocation(line: 281, column: 13, scope: !651)
!682 = !DILocation(line: 284, column: 13, scope: !648)
!683 = !DILocation(line: 284, column: 13, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !2, line: 284, column: 13)
!685 = distinct !DILexicalBlock(scope: !686, file: !2, line: 284, column: 13)
!686 = distinct !DILexicalBlock(scope: !648, file: !2, line: 284, column: 13)
!687 = !DILocation(line: 285, column: 9, scope: !648)
!688 = !DILocation(line: 293, column: 9, scope: !449)
!689 = !DILocation(line: 293, column: 9, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !2, line: 293, column: 9)
!691 = distinct !DILexicalBlock(scope: !692, file: !2, line: 293, column: 9)
!692 = distinct !DILexicalBlock(scope: !449, file: !2, line: 293, column: 9)
!693 = !DILocation(line: 293, column: 9, scope: !692)
!694 = !DILocation(line: 299, column: 9, scope: !449)
!695 = !DILocation(line: 299, column: 9, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !2, line: 299, column: 9)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 299, column: 9)
!698 = distinct !DILexicalBlock(scope: !449, file: !2, line: 299, column: 9)
!699 = !DILocation(line: 300, column: 5, scope: !449)
!700 = !DILocation(line: 301, column: 1, scope: !394)
!701 = distinct !DISubprogram(name: "nn_streamhdr_term", scope: !2, file: !2, line: 64, type: !702, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !355)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !51}
!704 = !DILocalVariable(name: "self", arg: 1, scope: !701, file: !2, line: 64, type: !51)
!705 = !DILocation(line: 64, column: 46, scope: !701)
!706 = !DILocation(line: 66, column: 5, scope: !701)
!707 = !DILocation(line: 66, column: 5, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !2, line: 66, column: 5)
!709 = distinct !DILexicalBlock(scope: !701, file: !2, line: 66, column: 5)
!710 = !DILocation(line: 66, column: 5, scope: !709)
!711 = !DILocation(line: 66, column: 5, scope: !712)
!712 = distinct !DILexicalBlock(scope: !708, file: !2, line: 66, column: 5)
!713 = !DILocation(line: 68, column: 25, scope: !701)
!714 = !DILocation(line: 68, column: 31, scope: !701)
!715 = !DILocation(line: 68, column: 5, scope: !701)
!716 = !DILocation(line: 69, column: 21, scope: !701)
!717 = !DILocation(line: 69, column: 27, scope: !701)
!718 = !DILocation(line: 69, column: 5, scope: !701)
!719 = !DILocation(line: 70, column: 19, scope: !701)
!720 = !DILocation(line: 70, column: 25, scope: !701)
!721 = !DILocation(line: 70, column: 5, scope: !701)
!722 = !DILocation(line: 71, column: 1, scope: !701)
!723 = distinct !DISubprogram(name: "nn_streamhdr_isidle", scope: !2, file: !2, line: 73, type: !724, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !355)
!724 = !DISubroutineType(types: !725)
!725 = !{!65, !51}
!726 = !DILocalVariable(name: "self", arg: 1, scope: !723, file: !2, line: 73, type: !51)
!727 = !DILocation(line: 73, column: 47, scope: !723)
!728 = !DILocation(line: 75, column: 28, scope: !723)
!729 = !DILocation(line: 75, column: 34, scope: !723)
!730 = !DILocation(line: 75, column: 12, scope: !723)
!731 = !DILocation(line: 75, column: 5, scope: !723)
!732 = distinct !DISubprogram(name: "nn_streamhdr_start", scope: !2, file: !2, line: 78, type: !733, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !355)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !51, !230, !300}
!735 = !DILocalVariable(name: "self", arg: 1, scope: !732, file: !2, line: 78, type: !51)
!736 = !DILocation(line: 78, column: 47, scope: !732)
!737 = !DILocalVariable(name: "usock", arg: 2, scope: !732, file: !2, line: 78, type: !230)
!738 = !DILocation(line: 78, column: 70, scope: !732)
!739 = !DILocalVariable(name: "pipebase", arg: 3, scope: !732, file: !2, line: 79, type: !300)
!740 = !DILocation(line: 79, column: 25, scope: !732)
!741 = !DILocalVariable(name: "sz", scope: !732, file: !2, line: 81, type: !252)
!742 = !DILocation(line: 81, column: 12, scope: !732)
!743 = !DILocalVariable(name: "protocol", scope: !732, file: !2, line: 82, type: !65)
!744 = !DILocation(line: 82, column: 9, scope: !732)
!745 = !DILocation(line: 85, column: 5, scope: !732)
!746 = !DILocation(line: 85, column: 5, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !2, line: 85, column: 5)
!748 = distinct !DILexicalBlock(scope: !732, file: !2, line: 85, column: 5)
!749 = !DILocation(line: 0, scope: !747)
!750 = !DILocation(line: 85, column: 5, scope: !748)
!751 = !DILocation(line: 85, column: 5, scope: !752)
!752 = distinct !DILexicalBlock(scope: !747, file: !2, line: 85, column: 5)
!753 = !DILocation(line: 86, column: 5, scope: !732)
!754 = !DILocation(line: 86, column: 11, scope: !732)
!755 = !DILocation(line: 86, column: 23, scope: !732)
!756 = !DILocation(line: 86, column: 27, scope: !732)
!757 = !DILocation(line: 87, column: 30, scope: !732)
!758 = !DILocation(line: 87, column: 36, scope: !732)
!759 = !DILocation(line: 87, column: 5, scope: !732)
!760 = !DILocation(line: 87, column: 11, scope: !732)
!761 = !DILocation(line: 87, column: 23, scope: !732)
!762 = !DILocation(line: 87, column: 27, scope: !732)
!763 = !DILocation(line: 88, column: 26, scope: !732)
!764 = !DILocation(line: 88, column: 34, scope: !732)
!765 = !DILocation(line: 88, column: 40, scope: !732)
!766 = !DILocation(line: 88, column: 5, scope: !732)
!767 = !DILocation(line: 89, column: 19, scope: !732)
!768 = !DILocation(line: 89, column: 5, scope: !732)
!769 = !DILocation(line: 89, column: 11, scope: !732)
!770 = !DILocation(line: 89, column: 17, scope: !732)
!771 = !DILocation(line: 90, column: 22, scope: !732)
!772 = !DILocation(line: 90, column: 5, scope: !732)
!773 = !DILocation(line: 90, column: 11, scope: !732)
!774 = !DILocation(line: 90, column: 20, scope: !732)
!775 = !DILocation(line: 93, column: 8, scope: !732)
!776 = !DILocation(line: 94, column: 25, scope: !732)
!777 = !DILocation(line: 94, column: 5, scope: !732)
!778 = !DILocation(line: 95, column: 5, scope: !732)
!779 = !DILocation(line: 95, column: 5, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !2, line: 95, column: 5)
!781 = distinct !DILexicalBlock(scope: !732, file: !2, line: 95, column: 5)
!782 = !DILocation(line: 95, column: 5, scope: !781)
!783 = !DILocation(line: 95, column: 5, scope: !784)
!784 = distinct !DILexicalBlock(scope: !780, file: !2, line: 95, column: 5)
!785 = !DILocation(line: 98, column: 13, scope: !732)
!786 = !DILocation(line: 98, column: 19, scope: !732)
!787 = !DILocation(line: 98, column: 5, scope: !732)
!788 = !DILocation(line: 99, column: 14, scope: !732)
!789 = !DILocation(line: 99, column: 20, scope: !732)
!790 = !DILocation(line: 99, column: 29, scope: !732)
!791 = !DILocation(line: 99, column: 45, scope: !732)
!792 = !DILocation(line: 99, column: 34, scope: !732)
!793 = !DILocation(line: 99, column: 5, scope: !732)
!794 = !DILocation(line: 102, column: 20, scope: !732)
!795 = !DILocation(line: 102, column: 26, scope: !732)
!796 = !DILocation(line: 102, column: 5, scope: !732)
!797 = !DILocation(line: 103, column: 1, scope: !732)
!798 = distinct !DISubprogram(name: "nn_streamhdr_stop", scope: !2, file: !2, line: 105, type: !702, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !355)
!799 = !DILocalVariable(name: "self", arg: 1, scope: !798, file: !2, line: 105, type: !51)
!800 = !DILocation(line: 105, column: 46, scope: !798)
!801 = !DILocation(line: 107, column: 19, scope: !798)
!802 = !DILocation(line: 107, column: 25, scope: !798)
!803 = !DILocation(line: 107, column: 5, scope: !798)
!804 = !DILocation(line: 108, column: 1, scope: !798)
