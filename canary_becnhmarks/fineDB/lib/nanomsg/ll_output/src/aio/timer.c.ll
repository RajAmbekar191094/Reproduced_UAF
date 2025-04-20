; ModuleID = './src/aio/timer.c'
source_filename = "./src/aio/timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_timer = type { %struct.nn_fsm, i32, %struct.nn_worker_task, %struct.nn_worker_task, %struct.nn_worker_timer, %struct.nn_fsm_event, ptr, i32 }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_worker_task = type { ptr, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_worker_timer = type { ptr, %struct.nn_timerset_hndl }
%struct.nn_timerset_hndl = type { %struct.nn_list_item, i64 }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [35 x i8] c"self->state == NN_TIMER_STATE_IDLE\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [18 x i8] c"./src/aio/timer.c\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [13 x i8] c"timeout >= 0\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [31 x i8] c"type == NN_WORKER_TASK_EXECUTE\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [20 x i8] c"timer->timeout >= 0\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [21 x i8] c"timer->timeout == -1\00", align 1, !dbg !37

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_timer_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !230 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !234, metadata !DIExpression()), !dbg !235
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !236, metadata !DIExpression()), !dbg !237
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !238, metadata !DIExpression()), !dbg !239
  %7 = load ptr, ptr %4, align 8, !dbg !240
  %8 = getelementptr inbounds %struct.nn_timer, ptr %7, i32 0, i32 0, !dbg !241
  %9 = load i32, ptr %5, align 4, !dbg !242
  %10 = load ptr, ptr %4, align 8, !dbg !243
  %11 = load ptr, ptr %6, align 8, !dbg !244
  call void @nn_fsm_init(ptr noundef %8, ptr noundef @nn_timer_handler, i32 noundef %9, ptr noundef %10, ptr noundef %11), !dbg !245
  %12 = load ptr, ptr %4, align 8, !dbg !246
  %13 = getelementptr inbounds %struct.nn_timer, ptr %12, i32 0, i32 1, !dbg !247
  store i32 1, ptr %13, align 8, !dbg !248
  %14 = load ptr, ptr %4, align 8, !dbg !249
  %15 = getelementptr inbounds %struct.nn_timer, ptr %14, i32 0, i32 2, !dbg !250
  %16 = load ptr, ptr %4, align 8, !dbg !251
  %17 = getelementptr inbounds %struct.nn_timer, ptr %16, i32 0, i32 0, !dbg !252
  call void @nn_worker_task_init(ptr noundef %15, ptr noundef %17), !dbg !253
  %18 = load ptr, ptr %4, align 8, !dbg !254
  %19 = getelementptr inbounds %struct.nn_timer, ptr %18, i32 0, i32 3, !dbg !255
  %20 = load ptr, ptr %4, align 8, !dbg !256
  %21 = getelementptr inbounds %struct.nn_timer, ptr %20, i32 0, i32 0, !dbg !257
  call void @nn_worker_task_init(ptr noundef %19, ptr noundef %21), !dbg !258
  %22 = load ptr, ptr %4, align 8, !dbg !259
  %23 = getelementptr inbounds %struct.nn_timer, ptr %22, i32 0, i32 4, !dbg !260
  %24 = load ptr, ptr %4, align 8, !dbg !261
  %25 = getelementptr inbounds %struct.nn_timer, ptr %24, i32 0, i32 0, !dbg !262
  call void @nn_worker_timer_init(ptr noundef %23, ptr noundef %25), !dbg !263
  %26 = load ptr, ptr %4, align 8, !dbg !264
  %27 = getelementptr inbounds %struct.nn_timer, ptr %26, i32 0, i32 5, !dbg !265
  call void @nn_fsm_event_init(ptr noundef %27), !dbg !266
  %28 = load ptr, ptr %4, align 8, !dbg !267
  %29 = getelementptr inbounds %struct.nn_timer, ptr %28, i32 0, i32 0, !dbg !268
  %30 = call ptr @nn_fsm_choose_worker(ptr noundef %29), !dbg !269
  %31 = load ptr, ptr %4, align 8, !dbg !270
  %32 = getelementptr inbounds %struct.nn_timer, ptr %31, i32 0, i32 6, !dbg !271
  store ptr %30, ptr %32, align 8, !dbg !272
  %33 = load ptr, ptr %4, align 8, !dbg !273
  %34 = getelementptr inbounds %struct.nn_timer, ptr %33, i32 0, i32 7, !dbg !274
  store i32 -1, ptr %34, align 8, !dbg !275
  ret void, !dbg !276
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_fsm_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_timer_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !277 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !278, metadata !DIExpression()), !dbg !279
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !280, metadata !DIExpression()), !dbg !281
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !282, metadata !DIExpression()), !dbg !283
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata ptr %9, metadata !286, metadata !DIExpression()), !dbg !287
  %10 = load ptr, ptr %5, align 8, !dbg !288
  %11 = icmp ne ptr %10, null, !dbg !288
  br i1 %11, label %12, label %15, !dbg !288

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8, !dbg !288
  %14 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !288
  br label %16, !dbg !288

15:                                               ; preds = %4
  br label %16, !dbg !288

16:                                               ; preds = %15, %12
  %17 = phi ptr [ %14, %12 ], [ null, %15 ], !dbg !288
  store ptr %17, ptr %9, align 8, !dbg !289
  %18 = load ptr, ptr %8, align 8, !dbg !290
  %19 = icmp eq ptr %18, null, !dbg !290
  br i1 %19, label %20, label %23, !dbg !290

20:                                               ; preds = %16
  %21 = load i32, ptr %7, align 4, !dbg !290
  %22 = icmp eq i32 %21, -3, !dbg !290
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i1 [ false, %16 ], [ %22, %20 ], !dbg !292
  %25 = zext i1 %24 to i32, !dbg !290
  %26 = sext i32 %25 to i64, !dbg !290
  %27 = icmp ne i64 %26, 0, !dbg !290
  br i1 %27, label %28, label %36, !dbg !293

28:                                               ; preds = %23
  %29 = load ptr, ptr %9, align 8, !dbg !294
  %30 = getelementptr inbounds %struct.nn_timer, ptr %29, i32 0, i32 6, !dbg !296
  %31 = load ptr, ptr %30, align 8, !dbg !296
  %32 = load ptr, ptr %9, align 8, !dbg !297
  %33 = getelementptr inbounds %struct.nn_timer, ptr %32, i32 0, i32 3, !dbg !298
  call void @nn_worker_execute(ptr noundef %31, ptr noundef %33), !dbg !299
  %34 = load ptr, ptr %9, align 8, !dbg !300
  %35 = getelementptr inbounds %struct.nn_timer, ptr %34, i32 0, i32 1, !dbg !301
  store i32 3, ptr %35, align 8, !dbg !302
  br label %184, !dbg !303

36:                                               ; preds = %23
  %37 = load ptr, ptr %9, align 8, !dbg !304
  %38 = getelementptr inbounds %struct.nn_timer, ptr %37, i32 0, i32 1, !dbg !304
  %39 = load i32, ptr %38, align 8, !dbg !304
  %40 = icmp eq i32 %39, 3, !dbg !304
  %41 = zext i1 %40 to i32, !dbg !304
  %42 = sext i32 %41 to i64, !dbg !304
  %43 = icmp ne i64 %42, 0, !dbg !304
  br i1 %43, label %44, label %72, !dbg !306

44:                                               ; preds = %36
  %45 = load ptr, ptr %8, align 8, !dbg !307
  %46 = load ptr, ptr %9, align 8, !dbg !310
  %47 = getelementptr inbounds %struct.nn_timer, ptr %46, i32 0, i32 3, !dbg !311
  %48 = icmp ne ptr %45, %47, !dbg !312
  br i1 %48, label %49, label %50, !dbg !313

49:                                               ; preds = %44
  br label %184, !dbg !314

50:                                               ; preds = %44
  br label %51, !dbg !315

51:                                               ; preds = %50
  %52 = load i32, ptr %7, align 4, !dbg !316
  %53 = icmp eq i32 %52, 1, !dbg !316
  %54 = xor i1 %53, true, !dbg !316
  %55 = zext i1 %54 to i32, !dbg !316
  %56 = sext i32 %55 to i64, !dbg !316
  %57 = icmp ne i64 %56, 0, !dbg !316
  br i1 %57, label %58, label %61, !dbg !319

58:                                               ; preds = %51
  %59 = load ptr, ptr @stderr, align 8, !dbg !320
  %60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 99), !dbg !320
  call void @nn_err_abort() #4, !dbg !320
  unreachable, !dbg !320

61:                                               ; preds = %51
  br label %62, !dbg !319

62:                                               ; preds = %61
  %63 = load ptr, ptr %9, align 8, !dbg !322
  %64 = getelementptr inbounds %struct.nn_timer, ptr %63, i32 0, i32 6, !dbg !323
  %65 = load ptr, ptr %64, align 8, !dbg !323
  %66 = load ptr, ptr %9, align 8, !dbg !324
  %67 = getelementptr inbounds %struct.nn_timer, ptr %66, i32 0, i32 4, !dbg !325
  call void @nn_worker_rm_timer(ptr noundef %65, ptr noundef %67), !dbg !326
  %68 = load ptr, ptr %9, align 8, !dbg !327
  %69 = getelementptr inbounds %struct.nn_timer, ptr %68, i32 0, i32 1, !dbg !328
  store i32 1, ptr %69, align 8, !dbg !329
  %70 = load ptr, ptr %9, align 8, !dbg !330
  %71 = getelementptr inbounds %struct.nn_timer, ptr %70, i32 0, i32 0, !dbg !331
  call void @nn_fsm_stopped(ptr noundef %71, i32 noundef 2), !dbg !332
  br label %184, !dbg !333

72:                                               ; preds = %36
  %73 = load ptr, ptr %9, align 8, !dbg !334
  %74 = getelementptr inbounds %struct.nn_timer, ptr %73, i32 0, i32 1, !dbg !335
  %75 = load i32, ptr %74, align 8, !dbg !335
  switch i32 %75, label %179 [
    i32 1, label %76
    i32 2, label %100
  ], !dbg !336

76:                                               ; preds = %72
  %77 = load ptr, ptr %8, align 8, !dbg !337
  %78 = icmp eq ptr %77, null, !dbg !340
  br i1 %78, label %79, label %95, !dbg !341

79:                                               ; preds = %76
  %80 = load i32, ptr %7, align 4, !dbg !342
  switch i32 %80, label %89 [
    i32 -2, label %81
  ], !dbg !344

81:                                               ; preds = %79
  %82 = load ptr, ptr %9, align 8, !dbg !345
  %83 = getelementptr inbounds %struct.nn_timer, ptr %82, i32 0, i32 6, !dbg !347
  %84 = load ptr, ptr %83, align 8, !dbg !347
  %85 = load ptr, ptr %9, align 8, !dbg !348
  %86 = getelementptr inbounds %struct.nn_timer, ptr %85, i32 0, i32 2, !dbg !349
  call void @nn_worker_execute(ptr noundef %84, ptr noundef %86), !dbg !350
  %87 = load ptr, ptr %9, align 8, !dbg !351
  %88 = getelementptr inbounds %struct.nn_timer, ptr %87, i32 0, i32 1, !dbg !352
  store i32 2, ptr %88, align 8, !dbg !353
  br label %184, !dbg !354

89:                                               ; preds = %79
  br label %90, !dbg !355

90:                                               ; preds = %89
  %91 = load ptr, ptr @stderr, align 8, !dbg !356
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 121), !dbg !356
  call void @nn_err_abort() #4, !dbg !356
  unreachable, !dbg !356

93:                                               ; No predecessors!
  br label %94, !dbg !360

94:                                               ; preds = %93
  br label %95, !dbg !361

95:                                               ; preds = %94, %76
  br label %96, !dbg !362

96:                                               ; preds = %95
  %97 = load ptr, ptr @stderr, align 8, !dbg !363
  %98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 124), !dbg !363
  call void @nn_err_abort() #4, !dbg !363
  unreachable, !dbg !363

99:                                               ; No predecessors!
  br label %100, !dbg !367

100:                                              ; preds = %72, %99
  %101 = load ptr, ptr %8, align 8, !dbg !368
  %102 = load ptr, ptr %9, align 8, !dbg !370
  %103 = getelementptr inbounds %struct.nn_timer, ptr %102, i32 0, i32 2, !dbg !371
  %104 = icmp eq ptr %101, %103, !dbg !372
  br i1 %104, label %105, label %142, !dbg !373

105:                                              ; preds = %100
  br label %106, !dbg !374

106:                                              ; preds = %105
  %107 = load i32, ptr %7, align 4, !dbg !376
  %108 = icmp eq i32 %107, 1, !dbg !376
  %109 = xor i1 %108, true, !dbg !376
  %110 = zext i1 %109 to i32, !dbg !376
  %111 = sext i32 %110 to i64, !dbg !376
  %112 = icmp ne i64 %111, 0, !dbg !376
  br i1 %112, label %113, label %116, !dbg !379

113:                                              ; preds = %106
  %114 = load ptr, ptr @stderr, align 8, !dbg !380
  %115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 131), !dbg !380
  call void @nn_err_abort() #4, !dbg !380
  unreachable, !dbg !380

116:                                              ; preds = %106
  br label %117, !dbg !379

117:                                              ; preds = %116
  br label %118, !dbg !382

118:                                              ; preds = %117
  %119 = load ptr, ptr %9, align 8, !dbg !383
  %120 = getelementptr inbounds %struct.nn_timer, ptr %119, i32 0, i32 7, !dbg !383
  %121 = load i32, ptr %120, align 8, !dbg !383
  %122 = icmp sge i32 %121, 0, !dbg !383
  %123 = xor i1 %122, true, !dbg !383
  %124 = zext i1 %123 to i32, !dbg !383
  %125 = sext i32 %124 to i64, !dbg !383
  %126 = icmp ne i64 %125, 0, !dbg !383
  br i1 %126, label %127, label %130, !dbg !386

127:                                              ; preds = %118
  %128 = load ptr, ptr @stderr, align 8, !dbg !387
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 132), !dbg !387
  call void @nn_err_abort() #4, !dbg !387
  unreachable, !dbg !387

130:                                              ; preds = %118
  br label %131, !dbg !386

131:                                              ; preds = %130
  %132 = load ptr, ptr %9, align 8, !dbg !389
  %133 = getelementptr inbounds %struct.nn_timer, ptr %132, i32 0, i32 6, !dbg !390
  %134 = load ptr, ptr %133, align 8, !dbg !390
  %135 = load ptr, ptr %9, align 8, !dbg !391
  %136 = getelementptr inbounds %struct.nn_timer, ptr %135, i32 0, i32 7, !dbg !392
  %137 = load i32, ptr %136, align 8, !dbg !392
  %138 = load ptr, ptr %9, align 8, !dbg !393
  %139 = getelementptr inbounds %struct.nn_timer, ptr %138, i32 0, i32 4, !dbg !394
  call void @nn_worker_add_timer(ptr noundef %134, i32 noundef %137, ptr noundef %139), !dbg !395
  %140 = load ptr, ptr %9, align 8, !dbg !396
  %141 = getelementptr inbounds %struct.nn_timer, ptr %140, i32 0, i32 7, !dbg !397
  store i32 -1, ptr %141, align 8, !dbg !398
  br label %184, !dbg !399

142:                                              ; preds = %100
  %143 = load ptr, ptr %8, align 8, !dbg !400
  %144 = load ptr, ptr %9, align 8, !dbg !402
  %145 = getelementptr inbounds %struct.nn_timer, ptr %144, i32 0, i32 4, !dbg !403
  %146 = icmp eq ptr %143, %145, !dbg !404
  br i1 %146, label %147, label %174, !dbg !405

147:                                              ; preds = %142
  %148 = load i32, ptr %7, align 4, !dbg !406
  switch i32 %148, label %168 [
    i32 1, label %149
  ], !dbg !408

149:                                              ; preds = %147
  br label %150, !dbg !409

150:                                              ; preds = %149
  %151 = load ptr, ptr %9, align 8, !dbg !411
  %152 = getelementptr inbounds %struct.nn_timer, ptr %151, i32 0, i32 7, !dbg !411
  %153 = load i32, ptr %152, align 8, !dbg !411
  %154 = icmp eq i32 %153, -1, !dbg !411
  %155 = xor i1 %154, true, !dbg !411
  %156 = zext i1 %155 to i32, !dbg !411
  %157 = sext i32 %156 to i64, !dbg !411
  %158 = icmp ne i64 %157, 0, !dbg !411
  br i1 %158, label %159, label %162, !dbg !414

159:                                              ; preds = %150
  %160 = load ptr, ptr @stderr, align 8, !dbg !415
  %161 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 143), !dbg !415
  call void @nn_err_abort() #4, !dbg !415
  unreachable, !dbg !415

162:                                              ; preds = %150
  br label %163, !dbg !414

163:                                              ; preds = %162
  %164 = load ptr, ptr %9, align 8, !dbg !417
  %165 = getelementptr inbounds %struct.nn_timer, ptr %164, i32 0, i32 0, !dbg !418
  %166 = load ptr, ptr %9, align 8, !dbg !419
  %167 = getelementptr inbounds %struct.nn_timer, ptr %166, i32 0, i32 5, !dbg !420
  call void @nn_fsm_raise(ptr noundef %165, ptr noundef %167, i32 noundef 1), !dbg !421
  br label %184, !dbg !422

168:                                              ; preds = %147
  br label %169, !dbg !423

169:                                              ; preds = %168
  %170 = load ptr, ptr @stderr, align 8, !dbg !424
  %171 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %170, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 148), !dbg !424
  call void @nn_err_abort() #4, !dbg !424
  unreachable, !dbg !424

172:                                              ; No predecessors!
  br label %173, !dbg !428

173:                                              ; preds = %172
  br label %174, !dbg !429

174:                                              ; preds = %173, %142
  br label %175, !dbg !430

175:                                              ; preds = %174
  %176 = load ptr, ptr @stderr, align 8, !dbg !431
  %177 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %176, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 151), !dbg !431
  call void @nn_err_abort() #4, !dbg !431
  unreachable, !dbg !431

178:                                              ; No predecessors!
  br label %179, !dbg !435

179:                                              ; preds = %72, %178
  br label %180, !dbg !436

180:                                              ; preds = %179
  %181 = load ptr, ptr @stderr, align 8, !dbg !437
  %182 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 157), !dbg !437
  call void @nn_err_abort() #4, !dbg !437
  unreachable, !dbg !437

183:                                              ; No predecessors!
  br label %184, !dbg !441

184:                                              ; preds = %28, %49, %62, %81, %131, %163, %183
  ret void, !dbg !442
}

declare void @nn_worker_task_init(ptr noundef, ptr noundef) #2

declare void @nn_worker_timer_init(ptr noundef, ptr noundef) #2

declare void @nn_fsm_event_init(ptr noundef) #2

declare ptr @nn_fsm_choose_worker(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_timer_term(ptr noundef %0) #0 !dbg !443 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !446, metadata !DIExpression()), !dbg !447
  br label %3, !dbg !448

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !449
  %5 = getelementptr inbounds %struct.nn_timer, ptr %4, i32 0, i32 1, !dbg !449
  %6 = load i32, ptr %5, align 8, !dbg !449
  %7 = icmp eq i32 %6, 1, !dbg !449
  %8 = xor i1 %7, true, !dbg !449
  %9 = zext i1 %8 to i32, !dbg !449
  %10 = sext i32 %9 to i64, !dbg !449
  %11 = icmp ne i64 %10, 0, !dbg !449
  br i1 %11, label %12, label %15, !dbg !452

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !dbg !453
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 53), !dbg !453
  call void @nn_err_abort() #4, !dbg !453
  unreachable, !dbg !453

15:                                               ; preds = %3
  br label %16, !dbg !452

16:                                               ; preds = %15
  %17 = load ptr, ptr %2, align 8, !dbg !455
  %18 = getelementptr inbounds %struct.nn_timer, ptr %17, i32 0, i32 5, !dbg !456
  call void @nn_fsm_event_term(ptr noundef %18), !dbg !457
  %19 = load ptr, ptr %2, align 8, !dbg !458
  %20 = getelementptr inbounds %struct.nn_timer, ptr %19, i32 0, i32 4, !dbg !459
  call void @nn_worker_timer_term(ptr noundef %20), !dbg !460
  %21 = load ptr, ptr %2, align 8, !dbg !461
  %22 = getelementptr inbounds %struct.nn_timer, ptr %21, i32 0, i32 3, !dbg !462
  call void @nn_worker_task_term(ptr noundef %22), !dbg !463
  %23 = load ptr, ptr %2, align 8, !dbg !464
  %24 = getelementptr inbounds %struct.nn_timer, ptr %23, i32 0, i32 2, !dbg !465
  call void @nn_worker_task_term(ptr noundef %24), !dbg !466
  %25 = load ptr, ptr %2, align 8, !dbg !467
  %26 = getelementptr inbounds %struct.nn_timer, ptr %25, i32 0, i32 0, !dbg !468
  call void @nn_fsm_term(ptr noundef %26), !dbg !469
  ret void, !dbg !470
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_fsm_event_term(ptr noundef) #2

declare void @nn_worker_timer_term(ptr noundef) #2

declare void @nn_worker_task_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_timer_isidle(ptr noundef %0) #0 !dbg !471 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !474, metadata !DIExpression()), !dbg !475
  %3 = load ptr, ptr %2, align 8, !dbg !476
  %4 = getelementptr inbounds %struct.nn_timer, ptr %3, i32 0, i32 0, !dbg !477
  %5 = call i32 @nn_fsm_isidle(ptr noundef %4), !dbg !478
  ret i32 %5, !dbg !479
}

declare i32 @nn_fsm_isidle(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_timer_start(ptr noundef %0, i32 noundef %1) #0 !dbg !480 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !483, metadata !DIExpression()), !dbg !484
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !485, metadata !DIExpression()), !dbg !486
  br label %5, !dbg !487

5:                                                ; preds = %2
  %6 = load i32, ptr %4, align 4, !dbg !488
  %7 = icmp sge i32 %6, 0, !dbg !488
  %8 = xor i1 %7, true, !dbg !488
  %9 = zext i1 %8 to i32, !dbg !488
  %10 = sext i32 %9 to i64, !dbg !488
  %11 = icmp ne i64 %10, 0, !dbg !488
  br i1 %11, label %12, label %15, !dbg !491

12:                                               ; preds = %5
  %13 = load ptr, ptr @stderr, align 8, !dbg !492
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 70), !dbg !492
  call void @nn_err_abort() #4, !dbg !492
  unreachable, !dbg !492

15:                                               ; preds = %5
  br label %16, !dbg !491

16:                                               ; preds = %15
  %17 = load i32, ptr %4, align 4, !dbg !494
  %18 = load ptr, ptr %3, align 8, !dbg !495
  %19 = getelementptr inbounds %struct.nn_timer, ptr %18, i32 0, i32 7, !dbg !496
  store i32 %17, ptr %19, align 8, !dbg !497
  %20 = load ptr, ptr %3, align 8, !dbg !498
  %21 = getelementptr inbounds %struct.nn_timer, ptr %20, i32 0, i32 0, !dbg !499
  call void @nn_fsm_start(ptr noundef %21), !dbg !500
  ret void, !dbg !501
}

declare void @nn_fsm_start(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_timer_stop(ptr noundef %0) #0 !dbg !502 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !503, metadata !DIExpression()), !dbg !504
  %3 = load ptr, ptr %2, align 8, !dbg !505
  %4 = getelementptr inbounds %struct.nn_timer, ptr %3, i32 0, i32 0, !dbg !506
  call void @nn_fsm_stop(ptr noundef %4), !dbg !507
  ret void, !dbg !508
}

declare void @nn_fsm_stop(ptr noundef) #2

declare void @nn_worker_execute(ptr noundef, ptr noundef) #2

declare void @nn_worker_rm_timer(ptr noundef, ptr noundef) #2

declare void @nn_fsm_stopped(ptr noundef, i32 noundef) #2

declare void @nn_worker_add_timer(ptr noundef, i32 noundef, ptr noundef) #2

declare void @nn_fsm_raise(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!42}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/aio/timer.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "0fff62ba15d7b4e8f550695c2dd68708")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 35)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 18)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 13)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 31)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 2)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 20)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 21)
!42 = distinct !DICompileUnit(language: DW_LANG_C11, file: !43, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !44, globals: !221, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "src/aio/timer.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "0fff62ba15d7b4e8f550695c2dd68708")
!44 = !{!45, !220, !60}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timer", file: !47, line: 32, size: 1664, elements: !48)
!47 = !DIFile(filename: "./src/aio/timer.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "36b8c8892aa99fc49b85b12a9caf893a")
!48 = !{!49, !81, !82, !88, !89, !111, !112, !219}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !46, file: !47, line: 33, baseType: !50, size: 640)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !51, line: 66, size: 640, elements: !52)
!51 = !DIFile(filename: "./src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!52 = !{!53, !61, !62, !63, !64, !65, !68}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !50, file: !51, line: 67, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !51, line: 58, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58, !59, !59, !60}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !50, file: !51, line: 68, baseType: !59, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !50, file: !51, line: 69, baseType: !59, size: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !50, file: !51, line: 70, baseType: !60, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !50, file: !51, line: 71, baseType: !58, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !50, file: !51, line: 72, baseType: !66, size: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !51, line: 30, flags: DIFlagFwdDecl)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !50, file: !51, line: 73, baseType: !69, size: 320, offset: 320)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !51, line: 34, size: 320, elements: !70)
!70 = !{!71, !72, !73, !74, !75}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !69, file: !51, line: 35, baseType: !58, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !69, file: !51, line: 36, baseType: !59, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !69, file: !51, line: 37, baseType: !60, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !51, line: 38, baseType: !59, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !69, file: !51, line: 39, baseType: !76, size: 64, offset: 256)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !77, line: 33, size: 64, elements: !78)
!77 = !DIFile(filename: "./src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !76, file: !77, line: 34, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !46, file: !47, line: 34, baseType: !59, size: 32, offset: 640)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "start_task", scope: !46, file: !47, line: 35, baseType: !83, size: 128, offset: 704)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_task", file: !84, line: 48, size: 128, elements: !85)
!84 = !DIFile(filename: "./src/aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !83, file: !84, line: 49, baseType: !58, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !83, file: !84, line: 50, baseType: !76, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "stop_task", scope: !46, file: !47, line: 36, baseType: !83, size: 128, offset: 832)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "wtimer", scope: !46, file: !47, line: 37, baseType: !90, size: 256, offset: 960)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_timer", file: !91, line: 37, size: 256, elements: !92)
!91 = !DIFile(filename: "./src/aio/worker.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "2b691693adce9b61547df7808f294867")
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !90, file: !91, line: 38, baseType: !58, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !90, file: !91, line: 39, baseType: !95, size: 192, offset: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset_hndl", file: !96, line: 32, size: 192, elements: !97)
!96 = !DIFile(filename: "./src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!97 = !{!98, !105}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !95, file: !96, line: 33, baseType: !99, size: 128)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !100, line: 26, size: 128, elements: !101)
!100 = !DIFile(filename: "./src/aio/../utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!101 = !{!102, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !99, file: !100, line: 27, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !99, file: !100, line: 28, baseType: !103, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !95, file: !96, line: 34, baseType: !106, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !107, line: 27, baseType: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !109, line: 45, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!110 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !46, file: !47, line: 38, baseType: !69, size: 320, offset: 1216)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !46, file: !47, line: 39, baseType: !113, size: 64, offset: 1536)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !84, line: 53, size: 1408, elements: !115)
!115 = !{!116, !152, !157, !158, !164, !191, !192, !206}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !114, file: !84, line: 54, baseType: !117, size: 320)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !118, line: 32, size: 320, elements: !119)
!118 = !DIFile(filename: "./src/aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !117, file: !118, line: 36, baseType: !121, size: 320)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !122, line: 72, baseType: !123)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !122, line: 67, size: 320, elements: !124)
!124 = !{!125, !146, !150}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !123, file: !122, line: 69, baseType: !126, size: 320)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !127, line: 22, size: 320, elements: !128)
!127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!128 = !{!129, !130, !132, !133, !134, !135, !137, !138}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !126, file: !127, line: 24, baseType: !59, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !126, file: !127, line: 25, baseType: !131, size: 32, offset: 32)
!131 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !126, file: !127, line: 26, baseType: !59, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !126, file: !127, line: 28, baseType: !131, size: 32, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !126, file: !127, line: 32, baseType: !59, size: 32, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !126, file: !127, line: 34, baseType: !136, size: 16, offset: 160)
!136 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !126, file: !127, line: 35, baseType: !136, size: 16, offset: 176)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !126, file: !127, line: 36, baseType: !139, size: 128, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !140, line: 55, baseType: !141)
!140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !140, line: 51, size: 128, elements: !142)
!142 = !{!143, !145}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !141, file: !140, line: 53, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !141, file: !140, line: 54, baseType: !144, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !123, file: !122, line: 70, baseType: !147, size: 320)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 40)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !123, file: !122, line: 71, baseType: !151, size: 64)
!151 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !114, file: !84, line: 55, baseType: !153, size: 128, offset: 320)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !77, line: 37, size: 128, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !153, file: !77, line: 38, baseType: !80, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !153, file: !77, line: 39, baseType: !80, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !114, file: !84, line: 56, baseType: !76, size: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !114, file: !84, line: 57, baseType: !159, size: 64, offset: 512)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !160, line: 25, size: 64, elements: !161)
!160 = !DIFile(filename: "./src/aio/../utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !159, file: !160, line: 26, baseType: !59, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !159, file: !160, line: 27, baseType: !59, size: 32, offset: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !114, file: !84, line: 58, baseType: !165, size: 320, offset: 576)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !166, line: 31, size: 320, elements: !167)
!166 = !DIFile(filename: "./src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!167 = !{!168, !169, !170, !171, !179, !190}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !165, file: !166, line: 34, baseType: !59, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !165, file: !166, line: 37, baseType: !59, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !165, file: !166, line: 40, baseType: !59, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !165, file: !166, line: 43, baseType: !172, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !174, line: 36, size: 64, elements: !175)
!174 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!175 = !{!176, !177, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !173, file: !174, line: 38, baseType: !59, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !173, file: !174, line: 39, baseType: !136, size: 16, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !173, file: !174, line: 40, baseType: !136, size: 16, offset: 48)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !165, file: !166, line: 52, baseType: !180, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !166, line: 48, size: 128, elements: !182)
!182 = !{!183, !188, !189}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !181, file: !166, line: 49, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !166, line: 27, size: 32, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !185, file: !166, line: 28, baseType: !59, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !181, file: !166, line: 50, baseType: !59, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !166, line: 51, baseType: !59, size: 32, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !165, file: !166, line: 55, baseType: !59, size: 32, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !114, file: !84, line: 59, baseType: !185, size: 32, offset: 896)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !114, file: !84, line: 60, baseType: !193, size: 256, offset: 960)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !96, line: 37, size: 256, elements: !194)
!194 = !{!195, !201}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !193, file: !96, line: 38, baseType: !196, size: 128)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !197, line: 31, size: 128, elements: !198)
!197 = !DIFile(filename: "./src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !196, file: !197, line: 33, baseType: !106, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !196, file: !197, line: 34, baseType: !106, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !193, file: !96, line: 39, baseType: !202, size: 128, offset: 128)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !100, line: 31, size: 128, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !202, file: !100, line: 32, baseType: !103, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !202, file: !100, line: 33, baseType: !103, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !114, file: !84, line: 61, baseType: !207, size: 192, offset: 1216)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !208, line: 25, size: 192, elements: !209)
!208 = !DIFile(filename: "./src/aio/../utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!209 = !{!210, !216, !217}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !207, file: !208, line: 27, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !213, line: 28, baseType: !214)
!213 = !DIFile(filename: "./src/aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!214 = !DISubroutineType(types: !215)
!215 = !{null, !60}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !207, file: !208, line: 28, baseType: !60, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !207, file: !208, line: 29, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !122, line: 27, baseType: !110)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !46, file: !47, line: 40, baseType: !59, size: 32, offset: 1600)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!221 = !{!0, !7, !12, !17, !22, !27, !32, !37}
!222 = !{i32 7, !"Dwarf Version", i32 5}
!223 = !{i32 2, !"Debug Info Version", i32 3}
!224 = !{i32 1, !"wchar_size", i32 4}
!225 = !{i32 8, !"PIC Level", i32 2}
!226 = !{i32 7, !"PIE Level", i32 2}
!227 = !{i32 7, !"uwtable", i32 2}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 16.0.0"}
!230 = distinct !DISubprogram(name: "nn_timer_init", scope: !2, file: !2, line: 39, type: !231, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !45, !59, !58}
!233 = !{}
!234 = !DILocalVariable(name: "self", arg: 1, scope: !230, file: !2, line: 39, type: !45)
!235 = !DILocation(line: 39, column: 38, scope: !230)
!236 = !DILocalVariable(name: "src", arg: 2, scope: !230, file: !2, line: 39, type: !59)
!237 = !DILocation(line: 39, column: 48, scope: !230)
!238 = !DILocalVariable(name: "owner", arg: 3, scope: !230, file: !2, line: 39, type: !58)
!239 = !DILocation(line: 39, column: 68, scope: !230)
!240 = !DILocation(line: 41, column: 19, scope: !230)
!241 = !DILocation(line: 41, column: 25, scope: !230)
!242 = !DILocation(line: 41, column: 48, scope: !230)
!243 = !DILocation(line: 41, column: 53, scope: !230)
!244 = !DILocation(line: 41, column: 59, scope: !230)
!245 = !DILocation(line: 41, column: 5, scope: !230)
!246 = !DILocation(line: 42, column: 5, scope: !230)
!247 = !DILocation(line: 42, column: 11, scope: !230)
!248 = !DILocation(line: 42, column: 17, scope: !230)
!249 = !DILocation(line: 43, column: 27, scope: !230)
!250 = !DILocation(line: 43, column: 33, scope: !230)
!251 = !DILocation(line: 43, column: 46, scope: !230)
!252 = !DILocation(line: 43, column: 52, scope: !230)
!253 = !DILocation(line: 43, column: 5, scope: !230)
!254 = !DILocation(line: 44, column: 27, scope: !230)
!255 = !DILocation(line: 44, column: 33, scope: !230)
!256 = !DILocation(line: 44, column: 45, scope: !230)
!257 = !DILocation(line: 44, column: 51, scope: !230)
!258 = !DILocation(line: 44, column: 5, scope: !230)
!259 = !DILocation(line: 45, column: 28, scope: !230)
!260 = !DILocation(line: 45, column: 34, scope: !230)
!261 = !DILocation(line: 45, column: 43, scope: !230)
!262 = !DILocation(line: 45, column: 49, scope: !230)
!263 = !DILocation(line: 45, column: 5, scope: !230)
!264 = !DILocation(line: 46, column: 25, scope: !230)
!265 = !DILocation(line: 46, column: 31, scope: !230)
!266 = !DILocation(line: 46, column: 5, scope: !230)
!267 = !DILocation(line: 47, column: 43, scope: !230)
!268 = !DILocation(line: 47, column: 49, scope: !230)
!269 = !DILocation(line: 47, column: 20, scope: !230)
!270 = !DILocation(line: 47, column: 5, scope: !230)
!271 = !DILocation(line: 47, column: 11, scope: !230)
!272 = !DILocation(line: 47, column: 18, scope: !230)
!273 = !DILocation(line: 48, column: 5, scope: !230)
!274 = !DILocation(line: 48, column: 11, scope: !230)
!275 = !DILocation(line: 48, column: 19, scope: !230)
!276 = !DILocation(line: 49, column: 1, scope: !230)
!277 = distinct !DISubprogram(name: "nn_timer_handler", scope: !2, file: !2, line: 81, type: !56, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !42, retainedNodes: !233)
!278 = !DILocalVariable(name: "self", arg: 1, scope: !277, file: !2, line: 81, type: !58)
!279 = !DILocation(line: 81, column: 46, scope: !277)
!280 = !DILocalVariable(name: "src", arg: 2, scope: !277, file: !2, line: 81, type: !59)
!281 = !DILocation(line: 81, column: 56, scope: !277)
!282 = !DILocalVariable(name: "type", arg: 3, scope: !277, file: !2, line: 81, type: !59)
!283 = !DILocation(line: 81, column: 65, scope: !277)
!284 = !DILocalVariable(name: "srcptr", arg: 4, scope: !277, file: !2, line: 82, type: !60)
!285 = !DILocation(line: 82, column: 11, scope: !277)
!286 = !DILocalVariable(name: "timer", scope: !277, file: !2, line: 84, type: !45)
!287 = !DILocation(line: 84, column: 22, scope: !277)
!288 = !DILocation(line: 86, column: 13, scope: !277)
!289 = !DILocation(line: 86, column: 11, scope: !277)
!290 = !DILocation(line: 91, column: 9, scope: !291)
!291 = distinct !DILexicalBlock(scope: !277, file: !2, line: 91, column: 9)
!292 = !DILocation(line: 0, scope: !291)
!293 = !DILocation(line: 91, column: 9, scope: !277)
!294 = !DILocation(line: 92, column: 28, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !2, line: 91, column: 58)
!296 = !DILocation(line: 92, column: 35, scope: !295)
!297 = !DILocation(line: 92, column: 44, scope: !295)
!298 = !DILocation(line: 92, column: 51, scope: !295)
!299 = !DILocation(line: 92, column: 9, scope: !295)
!300 = !DILocation(line: 93, column: 9, scope: !295)
!301 = !DILocation(line: 93, column: 16, scope: !295)
!302 = !DILocation(line: 93, column: 22, scope: !295)
!303 = !DILocation(line: 94, column: 9, scope: !295)
!304 = !DILocation(line: 96, column: 9, scope: !305)
!305 = distinct !DILexicalBlock(scope: !277, file: !2, line: 96, column: 9)
!306 = !DILocation(line: 96, column: 9, scope: !277)
!307 = !DILocation(line: 97, column: 13, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !2, line: 97, column: 13)
!309 = distinct !DILexicalBlock(scope: !305, file: !2, line: 96, column: 60)
!310 = !DILocation(line: 97, column: 24, scope: !308)
!311 = !DILocation(line: 97, column: 31, scope: !308)
!312 = !DILocation(line: 97, column: 20, scope: !308)
!313 = !DILocation(line: 97, column: 13, scope: !309)
!314 = !DILocation(line: 98, column: 13, scope: !308)
!315 = !DILocation(line: 99, column: 9, scope: !309)
!316 = !DILocation(line: 99, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !2, line: 99, column: 9)
!318 = distinct !DILexicalBlock(scope: !309, file: !2, line: 99, column: 9)
!319 = !DILocation(line: 99, column: 9, scope: !318)
!320 = !DILocation(line: 99, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !2, line: 99, column: 9)
!322 = !DILocation(line: 100, column: 29, scope: !309)
!323 = !DILocation(line: 100, column: 36, scope: !309)
!324 = !DILocation(line: 100, column: 45, scope: !309)
!325 = !DILocation(line: 100, column: 52, scope: !309)
!326 = !DILocation(line: 100, column: 9, scope: !309)
!327 = !DILocation(line: 101, column: 9, scope: !309)
!328 = !DILocation(line: 101, column: 16, scope: !309)
!329 = !DILocation(line: 101, column: 22, scope: !309)
!330 = !DILocation(line: 102, column: 26, scope: !309)
!331 = !DILocation(line: 102, column: 33, scope: !309)
!332 = !DILocation(line: 102, column: 9, scope: !309)
!333 = !DILocation(line: 103, column: 9, scope: !309)
!334 = !DILocation(line: 106, column: 13, scope: !277)
!335 = !DILocation(line: 106, column: 20, scope: !277)
!336 = !DILocation(line: 106, column: 5, scope: !277)
!337 = !DILocation(line: 112, column: 13, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !2, line: 112, column: 13)
!339 = distinct !DILexicalBlock(scope: !277, file: !2, line: 106, column: 27)
!340 = !DILocation(line: 112, column: 20, scope: !338)
!341 = !DILocation(line: 112, column: 13, scope: !339)
!342 = !DILocation(line: 113, column: 21, scope: !343)
!343 = distinct !DILexicalBlock(scope: !338, file: !2, line: 112, column: 29)
!344 = !DILocation(line: 113, column: 13, scope: !343)
!345 = !DILocation(line: 117, column: 36, scope: !346)
!346 = distinct !DILexicalBlock(scope: !343, file: !2, line: 113, column: 27)
!347 = !DILocation(line: 117, column: 43, scope: !346)
!348 = !DILocation(line: 117, column: 52, scope: !346)
!349 = !DILocation(line: 117, column: 59, scope: !346)
!350 = !DILocation(line: 117, column: 17, scope: !346)
!351 = !DILocation(line: 118, column: 17, scope: !346)
!352 = !DILocation(line: 118, column: 24, scope: !346)
!353 = !DILocation(line: 118, column: 30, scope: !346)
!354 = !DILocation(line: 119, column: 17, scope: !346)
!355 = !DILocation(line: 121, column: 17, scope: !346)
!356 = !DILocation(line: 121, column: 17, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !2, line: 121, column: 17)
!358 = distinct !DILexicalBlock(scope: !359, file: !2, line: 121, column: 17)
!359 = distinct !DILexicalBlock(scope: !346, file: !2, line: 121, column: 17)
!360 = !DILocation(line: 122, column: 13, scope: !346)
!361 = !DILocation(line: 123, column: 9, scope: !343)
!362 = !DILocation(line: 124, column: 9, scope: !339)
!363 = !DILocation(line: 124, column: 9, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 124, column: 9)
!365 = distinct !DILexicalBlock(scope: !366, file: !2, line: 124, column: 9)
!366 = distinct !DILexicalBlock(scope: !339, file: !2, line: 124, column: 9)
!367 = !DILocation(line: 124, column: 9, scope: !366)
!368 = !DILocation(line: 130, column: 13, scope: !369)
!369 = distinct !DILexicalBlock(scope: !339, file: !2, line: 130, column: 13)
!370 = !DILocation(line: 130, column: 24, scope: !369)
!371 = !DILocation(line: 130, column: 31, scope: !369)
!372 = !DILocation(line: 130, column: 20, scope: !369)
!373 = !DILocation(line: 130, column: 13, scope: !339)
!374 = !DILocation(line: 131, column: 13, scope: !375)
!375 = distinct !DILexicalBlock(scope: !369, file: !2, line: 130, column: 43)
!376 = !DILocation(line: 131, column: 13, scope: !377)
!377 = distinct !DILexicalBlock(scope: !378, file: !2, line: 131, column: 13)
!378 = distinct !DILexicalBlock(scope: !375, file: !2, line: 131, column: 13)
!379 = !DILocation(line: 131, column: 13, scope: !378)
!380 = !DILocation(line: 131, column: 13, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !2, line: 131, column: 13)
!382 = !DILocation(line: 132, column: 13, scope: !375)
!383 = !DILocation(line: 132, column: 13, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !2, line: 132, column: 13)
!385 = distinct !DILexicalBlock(scope: !375, file: !2, line: 132, column: 13)
!386 = !DILocation(line: 132, column: 13, scope: !385)
!387 = !DILocation(line: 132, column: 13, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !2, line: 132, column: 13)
!389 = !DILocation(line: 133, column: 34, scope: !375)
!390 = !DILocation(line: 133, column: 41, scope: !375)
!391 = !DILocation(line: 133, column: 49, scope: !375)
!392 = !DILocation(line: 133, column: 56, scope: !375)
!393 = !DILocation(line: 134, column: 18, scope: !375)
!394 = !DILocation(line: 134, column: 25, scope: !375)
!395 = !DILocation(line: 133, column: 13, scope: !375)
!396 = !DILocation(line: 135, column: 13, scope: !375)
!397 = !DILocation(line: 135, column: 20, scope: !375)
!398 = !DILocation(line: 135, column: 28, scope: !375)
!399 = !DILocation(line: 136, column: 13, scope: !375)
!400 = !DILocation(line: 138, column: 13, scope: !401)
!401 = distinct !DILexicalBlock(scope: !339, file: !2, line: 138, column: 13)
!402 = !DILocation(line: 138, column: 24, scope: !401)
!403 = !DILocation(line: 138, column: 31, scope: !401)
!404 = !DILocation(line: 138, column: 20, scope: !401)
!405 = !DILocation(line: 138, column: 13, scope: !339)
!406 = !DILocation(line: 139, column: 21, scope: !407)
!407 = distinct !DILexicalBlock(scope: !401, file: !2, line: 138, column: 39)
!408 = !DILocation(line: 139, column: 13, scope: !407)
!409 = !DILocation(line: 143, column: 17, scope: !410)
!410 = distinct !DILexicalBlock(scope: !407, file: !2, line: 139, column: 27)
!411 = !DILocation(line: 143, column: 17, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !2, line: 143, column: 17)
!413 = distinct !DILexicalBlock(scope: !410, file: !2, line: 143, column: 17)
!414 = !DILocation(line: 143, column: 17, scope: !413)
!415 = !DILocation(line: 143, column: 17, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !2, line: 143, column: 17)
!417 = !DILocation(line: 144, column: 32, scope: !410)
!418 = !DILocation(line: 144, column: 39, scope: !410)
!419 = !DILocation(line: 144, column: 45, scope: !410)
!420 = !DILocation(line: 144, column: 52, scope: !410)
!421 = !DILocation(line: 144, column: 17, scope: !410)
!422 = !DILocation(line: 145, column: 17, scope: !410)
!423 = !DILocation(line: 148, column: 17, scope: !410)
!424 = !DILocation(line: 148, column: 17, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !2, line: 148, column: 17)
!426 = distinct !DILexicalBlock(scope: !427, file: !2, line: 148, column: 17)
!427 = distinct !DILexicalBlock(scope: !410, file: !2, line: 148, column: 17)
!428 = !DILocation(line: 149, column: 13, scope: !410)
!429 = !DILocation(line: 150, column: 9, scope: !407)
!430 = !DILocation(line: 151, column: 9, scope: !339)
!431 = !DILocation(line: 151, column: 9, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !2, line: 151, column: 9)
!433 = distinct !DILexicalBlock(scope: !434, file: !2, line: 151, column: 9)
!434 = distinct !DILexicalBlock(scope: !339, file: !2, line: 151, column: 9)
!435 = !DILocation(line: 151, column: 9, scope: !434)
!436 = !DILocation(line: 157, column: 9, scope: !339)
!437 = !DILocation(line: 157, column: 9, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !2, line: 157, column: 9)
!439 = distinct !DILexicalBlock(scope: !440, file: !2, line: 157, column: 9)
!440 = distinct !DILexicalBlock(scope: !339, file: !2, line: 157, column: 9)
!441 = !DILocation(line: 158, column: 5, scope: !339)
!442 = !DILocation(line: 159, column: 1, scope: !277)
!443 = distinct !DISubprogram(name: "nn_timer_term", scope: !2, file: !2, line: 51, type: !444, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !233)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !45}
!446 = !DILocalVariable(name: "self", arg: 1, scope: !443, file: !2, line: 51, type: !45)
!447 = !DILocation(line: 51, column: 38, scope: !443)
!448 = !DILocation(line: 53, column: 5, scope: !443)
!449 = !DILocation(line: 53, column: 5, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !2, line: 53, column: 5)
!451 = distinct !DILexicalBlock(scope: !443, file: !2, line: 53, column: 5)
!452 = !DILocation(line: 53, column: 5, scope: !451)
!453 = !DILocation(line: 53, column: 5, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !2, line: 53, column: 5)
!455 = !DILocation(line: 55, column: 25, scope: !443)
!456 = !DILocation(line: 55, column: 31, scope: !443)
!457 = !DILocation(line: 55, column: 5, scope: !443)
!458 = !DILocation(line: 56, column: 28, scope: !443)
!459 = !DILocation(line: 56, column: 34, scope: !443)
!460 = !DILocation(line: 56, column: 5, scope: !443)
!461 = !DILocation(line: 57, column: 27, scope: !443)
!462 = !DILocation(line: 57, column: 33, scope: !443)
!463 = !DILocation(line: 57, column: 5, scope: !443)
!464 = !DILocation(line: 58, column: 27, scope: !443)
!465 = !DILocation(line: 58, column: 33, scope: !443)
!466 = !DILocation(line: 58, column: 5, scope: !443)
!467 = !DILocation(line: 59, column: 19, scope: !443)
!468 = !DILocation(line: 59, column: 25, scope: !443)
!469 = !DILocation(line: 59, column: 5, scope: !443)
!470 = !DILocation(line: 60, column: 1, scope: !443)
!471 = distinct !DISubprogram(name: "nn_timer_isidle", scope: !2, file: !2, line: 62, type: !472, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !233)
!472 = !DISubroutineType(types: !473)
!473 = !{!59, !45}
!474 = !DILocalVariable(name: "self", arg: 1, scope: !471, file: !2, line: 62, type: !45)
!475 = !DILocation(line: 62, column: 39, scope: !471)
!476 = !DILocation(line: 64, column: 29, scope: !471)
!477 = !DILocation(line: 64, column: 35, scope: !471)
!478 = !DILocation(line: 64, column: 13, scope: !471)
!479 = !DILocation(line: 64, column: 6, scope: !471)
!480 = distinct !DISubprogram(name: "nn_timer_start", scope: !2, file: !2, line: 67, type: !481, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !233)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !45, !59}
!483 = !DILocalVariable(name: "self", arg: 1, scope: !480, file: !2, line: 67, type: !45)
!484 = !DILocation(line: 67, column: 39, scope: !480)
!485 = !DILocalVariable(name: "timeout", arg: 2, scope: !480, file: !2, line: 67, type: !59)
!486 = !DILocation(line: 67, column: 49, scope: !480)
!487 = !DILocation(line: 70, column: 5, scope: !480)
!488 = !DILocation(line: 70, column: 5, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !2, line: 70, column: 5)
!490 = distinct !DILexicalBlock(scope: !480, file: !2, line: 70, column: 5)
!491 = !DILocation(line: 70, column: 5, scope: !490)
!492 = !DILocation(line: 70, column: 5, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !2, line: 70, column: 5)
!494 = !DILocation(line: 72, column: 21, scope: !480)
!495 = !DILocation(line: 72, column: 5, scope: !480)
!496 = !DILocation(line: 72, column: 11, scope: !480)
!497 = !DILocation(line: 72, column: 19, scope: !480)
!498 = !DILocation(line: 73, column: 20, scope: !480)
!499 = !DILocation(line: 73, column: 26, scope: !480)
!500 = !DILocation(line: 73, column: 5, scope: !480)
!501 = !DILocation(line: 74, column: 1, scope: !480)
!502 = distinct !DISubprogram(name: "nn_timer_stop", scope: !2, file: !2, line: 76, type: !444, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !233)
!503 = !DILocalVariable(name: "self", arg: 1, scope: !502, file: !2, line: 76, type: !45)
!504 = !DILocation(line: 76, column: 38, scope: !502)
!505 = !DILocation(line: 78, column: 19, scope: !502)
!506 = !DILocation(line: 78, column: 25, scope: !502)
!507 = !DILocation(line: 78, column: 5, scope: !502)
!508 = !DILocation(line: 79, column: 1, scope: !502)
