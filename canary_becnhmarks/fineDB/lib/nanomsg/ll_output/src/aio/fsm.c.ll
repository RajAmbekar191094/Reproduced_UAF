; ModuleID = './src/aio/fsm.c'
source_filename = "./src/aio/fsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_fsm_owner = type { i32, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [21 x i8] c"nn_fsm_isidle (self)\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [16 x i8] c"./src/aio/fsm.c\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [37 x i8] c"self->state == NN_FSM_STATE_STOPPING\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [9 x i8] c"type > 0\00", align 1, !dbg !22

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_event_init(ptr noundef %0) #0 !dbg !40 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !209, metadata !DIExpression()), !dbg !210
  %3 = load ptr, ptr %2, align 8, !dbg !211
  %4 = getelementptr inbounds %struct.nn_fsm_event, ptr %3, i32 0, i32 0, !dbg !212
  store ptr null, ptr %4, align 8, !dbg !213
  %5 = load ptr, ptr %2, align 8, !dbg !214
  %6 = getelementptr inbounds %struct.nn_fsm_event, ptr %5, i32 0, i32 1, !dbg !215
  store i32 -1, ptr %6, align 8, !dbg !216
  %7 = load ptr, ptr %2, align 8, !dbg !217
  %8 = getelementptr inbounds %struct.nn_fsm_event, ptr %7, i32 0, i32 2, !dbg !218
  store ptr null, ptr %8, align 8, !dbg !219
  %9 = load ptr, ptr %2, align 8, !dbg !220
  %10 = getelementptr inbounds %struct.nn_fsm_event, ptr %9, i32 0, i32 3, !dbg !221
  store i32 -1, ptr %10, align 8, !dbg !222
  %11 = load ptr, ptr %2, align 8, !dbg !223
  %12 = getelementptr inbounds %struct.nn_fsm_event, ptr %11, i32 0, i32 4, !dbg !224
  call void @nn_queue_item_init(ptr noundef %12), !dbg !225
  ret void, !dbg !226
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_queue_item_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_event_term(ptr noundef %0) #0 !dbg !227 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !228, metadata !DIExpression()), !dbg !229
  %3 = load ptr, ptr %2, align 8, !dbg !230
  %4 = getelementptr inbounds %struct.nn_fsm_event, ptr %3, i32 0, i32 4, !dbg !231
  call void @nn_queue_item_term(ptr noundef %4), !dbg !232
  ret void, !dbg !233
}

declare void @nn_queue_item_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_fsm_event_active(ptr noundef %0) #0 !dbg !234 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !237, metadata !DIExpression()), !dbg !238
  %3 = load ptr, ptr %2, align 8, !dbg !239
  %4 = getelementptr inbounds %struct.nn_fsm_event, ptr %3, i32 0, i32 4, !dbg !240
  %5 = call i32 @nn_queue_item_isinqueue(ptr noundef %4), !dbg !241
  ret i32 %5, !dbg !242
}

declare i32 @nn_queue_item_isinqueue(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_event_process(ptr noundef %0) #0 !dbg !243 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata ptr %3, metadata !246, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata ptr %4, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata ptr %5, metadata !250, metadata !DIExpression()), !dbg !251
  %6 = load ptr, ptr %2, align 8, !dbg !252
  %7 = getelementptr inbounds %struct.nn_fsm_event, ptr %6, i32 0, i32 1, !dbg !253
  %8 = load i32, ptr %7, align 8, !dbg !253
  store i32 %8, ptr %3, align 4, !dbg !254
  %9 = load ptr, ptr %2, align 8, !dbg !255
  %10 = getelementptr inbounds %struct.nn_fsm_event, ptr %9, i32 0, i32 3, !dbg !256
  %11 = load i32, ptr %10, align 8, !dbg !256
  store i32 %11, ptr %4, align 4, !dbg !257
  %12 = load ptr, ptr %2, align 8, !dbg !258
  %13 = getelementptr inbounds %struct.nn_fsm_event, ptr %12, i32 0, i32 2, !dbg !259
  %14 = load ptr, ptr %13, align 8, !dbg !259
  store ptr %14, ptr %5, align 8, !dbg !260
  %15 = load ptr, ptr %2, align 8, !dbg !261
  %16 = getelementptr inbounds %struct.nn_fsm_event, ptr %15, i32 0, i32 1, !dbg !262
  store i32 -1, ptr %16, align 8, !dbg !263
  %17 = load ptr, ptr %2, align 8, !dbg !264
  %18 = getelementptr inbounds %struct.nn_fsm_event, ptr %17, i32 0, i32 3, !dbg !265
  store i32 -1, ptr %18, align 8, !dbg !266
  %19 = load ptr, ptr %2, align 8, !dbg !267
  %20 = getelementptr inbounds %struct.nn_fsm_event, ptr %19, i32 0, i32 2, !dbg !268
  store ptr null, ptr %20, align 8, !dbg !269
  %21 = load ptr, ptr %2, align 8, !dbg !270
  %22 = getelementptr inbounds %struct.nn_fsm_event, ptr %21, i32 0, i32 0, !dbg !271
  %23 = load ptr, ptr %22, align 8, !dbg !271
  %24 = getelementptr inbounds %struct.nn_fsm, ptr %23, i32 0, i32 0, !dbg !272
  %25 = load ptr, ptr %24, align 8, !dbg !272
  %26 = load ptr, ptr %2, align 8, !dbg !273
  %27 = getelementptr inbounds %struct.nn_fsm_event, ptr %26, i32 0, i32 0, !dbg !274
  %28 = load ptr, ptr %27, align 8, !dbg !274
  %29 = load i32, ptr %3, align 4, !dbg !275
  %30 = load i32, ptr %4, align 4, !dbg !276
  %31 = load ptr, ptr %5, align 8, !dbg !277
  call void %25(ptr noundef %28, i32 noundef %29, i32 noundef %30, ptr noundef %31), !dbg !270
  ret void, !dbg !278
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_init_root(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !279 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !282, metadata !DIExpression()), !dbg !283
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !284, metadata !DIExpression()), !dbg !285
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !286, metadata !DIExpression()), !dbg !287
  %7 = load ptr, ptr %5, align 8, !dbg !288
  %8 = load ptr, ptr %4, align 8, !dbg !289
  %9 = getelementptr inbounds %struct.nn_fsm, ptr %8, i32 0, i32 0, !dbg !290
  store ptr %7, ptr %9, align 8, !dbg !291
  %10 = load ptr, ptr %4, align 8, !dbg !292
  %11 = getelementptr inbounds %struct.nn_fsm, ptr %10, i32 0, i32 1, !dbg !293
  store i32 1, ptr %11, align 8, !dbg !294
  %12 = load ptr, ptr %4, align 8, !dbg !295
  %13 = getelementptr inbounds %struct.nn_fsm, ptr %12, i32 0, i32 2, !dbg !296
  store i32 -1, ptr %13, align 4, !dbg !297
  %14 = load ptr, ptr %4, align 8, !dbg !298
  %15 = getelementptr inbounds %struct.nn_fsm, ptr %14, i32 0, i32 3, !dbg !299
  store ptr null, ptr %15, align 8, !dbg !300
  %16 = load ptr, ptr %4, align 8, !dbg !301
  %17 = getelementptr inbounds %struct.nn_fsm, ptr %16, i32 0, i32 4, !dbg !302
  store ptr null, ptr %17, align 8, !dbg !303
  %18 = load ptr, ptr %6, align 8, !dbg !304
  %19 = load ptr, ptr %4, align 8, !dbg !305
  %20 = getelementptr inbounds %struct.nn_fsm, ptr %19, i32 0, i32 5, !dbg !306
  store ptr %18, ptr %20, align 8, !dbg !307
  %21 = load ptr, ptr %4, align 8, !dbg !308
  %22 = getelementptr inbounds %struct.nn_fsm, ptr %21, i32 0, i32 6, !dbg !309
  call void @nn_fsm_event_init(ptr noundef %22), !dbg !310
  ret void, !dbg !311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !312 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !315, metadata !DIExpression()), !dbg !316
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !317, metadata !DIExpression()), !dbg !318
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !319, metadata !DIExpression()), !dbg !320
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !321, metadata !DIExpression()), !dbg !322
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !323, metadata !DIExpression()), !dbg !324
  %11 = load ptr, ptr %7, align 8, !dbg !325
  %12 = load ptr, ptr %6, align 8, !dbg !326
  %13 = getelementptr inbounds %struct.nn_fsm, ptr %12, i32 0, i32 0, !dbg !327
  store ptr %11, ptr %13, align 8, !dbg !328
  %14 = load ptr, ptr %6, align 8, !dbg !329
  %15 = getelementptr inbounds %struct.nn_fsm, ptr %14, i32 0, i32 1, !dbg !330
  store i32 1, ptr %15, align 8, !dbg !331
  %16 = load i32, ptr %8, align 4, !dbg !332
  %17 = load ptr, ptr %6, align 8, !dbg !333
  %18 = getelementptr inbounds %struct.nn_fsm, ptr %17, i32 0, i32 2, !dbg !334
  store i32 %16, ptr %18, align 4, !dbg !335
  %19 = load ptr, ptr %9, align 8, !dbg !336
  %20 = load ptr, ptr %6, align 8, !dbg !337
  %21 = getelementptr inbounds %struct.nn_fsm, ptr %20, i32 0, i32 3, !dbg !338
  store ptr %19, ptr %21, align 8, !dbg !339
  %22 = load ptr, ptr %10, align 8, !dbg !340
  %23 = load ptr, ptr %6, align 8, !dbg !341
  %24 = getelementptr inbounds %struct.nn_fsm, ptr %23, i32 0, i32 4, !dbg !342
  store ptr %22, ptr %24, align 8, !dbg !343
  %25 = load ptr, ptr %10, align 8, !dbg !344
  %26 = getelementptr inbounds %struct.nn_fsm, ptr %25, i32 0, i32 5, !dbg !345
  %27 = load ptr, ptr %26, align 8, !dbg !345
  %28 = load ptr, ptr %6, align 8, !dbg !346
  %29 = getelementptr inbounds %struct.nn_fsm, ptr %28, i32 0, i32 5, !dbg !347
  store ptr %27, ptr %29, align 8, !dbg !348
  %30 = load ptr, ptr %6, align 8, !dbg !349
  %31 = getelementptr inbounds %struct.nn_fsm, ptr %30, i32 0, i32 6, !dbg !350
  call void @nn_fsm_event_init(ptr noundef %31), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_term(ptr noundef %0) #0 !dbg !353 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !356, metadata !DIExpression()), !dbg !357
  br label %3, !dbg !358

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !359
  %5 = call i32 @nn_fsm_isidle(ptr noundef %4), !dbg !359
  %6 = icmp ne i32 %5, 0, !dbg !359
  %7 = xor i1 %6, true, !dbg !359
  %8 = zext i1 %7 to i32, !dbg !359
  %9 = sext i32 %8 to i64, !dbg !359
  %10 = icmp ne i64 %9, 0, !dbg !359
  br i1 %10, label %11, label %14, !dbg !362

11:                                               ; preds = %3
  %12 = load ptr, ptr @stderr, align 8, !dbg !363
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 93), !dbg !363
  call void @nn_err_abort() #4, !dbg !363
  unreachable, !dbg !363

14:                                               ; preds = %3
  br label %15, !dbg !362

15:                                               ; preds = %14
  %16 = load ptr, ptr %2, align 8, !dbg !365
  %17 = getelementptr inbounds %struct.nn_fsm, ptr %16, i32 0, i32 6, !dbg !366
  call void @nn_fsm_event_term(ptr noundef %17), !dbg !367
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_fsm_isidle(ptr noundef %0) #0 !dbg !369 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !372, metadata !DIExpression()), !dbg !373
  %3 = load ptr, ptr %2, align 8, !dbg !374
  %4 = getelementptr inbounds %struct.nn_fsm, ptr %3, i32 0, i32 1, !dbg !375
  %5 = load i32, ptr %4, align 8, !dbg !375
  %6 = icmp eq i32 %5, 1, !dbg !376
  br i1 %6, label %7, label %13, !dbg !377

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !378
  %9 = getelementptr inbounds %struct.nn_fsm, ptr %8, i32 0, i32 6, !dbg !379
  %10 = call i32 @nn_fsm_event_active(ptr noundef %9), !dbg !380
  %11 = icmp ne i32 %10, 0, !dbg !381
  %12 = xor i1 %11, true, !dbg !381
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i1 [ false, %1 ], [ %12, %7 ], !dbg !382
  %15 = zext i1 %14 to i64, !dbg !374
  %16 = select i1 %14, i32 1, i32 0, !dbg !374
  ret i32 %16, !dbg !383
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_start(ptr noundef %0) #0 !dbg !384 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !385, metadata !DIExpression()), !dbg !386
  br label %3, !dbg !387

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !388
  %5 = call i32 @nn_fsm_isidle(ptr noundef %4), !dbg !388
  %6 = icmp ne i32 %5, 0, !dbg !388
  %7 = xor i1 %6, true, !dbg !388
  %8 = zext i1 %7 to i32, !dbg !388
  %9 = sext i32 %8 to i64, !dbg !388
  %10 = icmp ne i64 %9, 0, !dbg !388
  br i1 %10, label %11, label %14, !dbg !391

11:                                               ; preds = %3
  %12 = load ptr, ptr @stderr, align 8, !dbg !392
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 99), !dbg !392
  call void @nn_err_abort() #4, !dbg !392
  unreachable, !dbg !392

14:                                               ; preds = %3
  br label %15, !dbg !391

15:                                               ; preds = %14
  %16 = load ptr, ptr %2, align 8, !dbg !394
  %17 = getelementptr inbounds %struct.nn_fsm, ptr %16, i32 0, i32 0, !dbg !395
  %18 = load ptr, ptr %17, align 8, !dbg !395
  %19 = load ptr, ptr %2, align 8, !dbg !396
  call void %18(ptr noundef %19, i32 noundef -2, i32 noundef -2, ptr noundef null), !dbg !394
  %20 = load ptr, ptr %2, align 8, !dbg !397
  %21 = getelementptr inbounds %struct.nn_fsm, ptr %20, i32 0, i32 1, !dbg !398
  store i32 2, ptr %21, align 8, !dbg !399
  ret void, !dbg !400
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_stop(ptr noundef %0) #0 !dbg !401 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !402, metadata !DIExpression()), !dbg !403
  %3 = load ptr, ptr %2, align 8, !dbg !404
  %4 = getelementptr inbounds %struct.nn_fsm, ptr %3, i32 0, i32 1, !dbg !406
  %5 = load i32, ptr %4, align 8, !dbg !406
  %6 = icmp ne i32 %5, 2, !dbg !407
  br i1 %6, label %7, label %8, !dbg !408

7:                                                ; preds = %1
  br label %15, !dbg !409

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !dbg !410
  %10 = getelementptr inbounds %struct.nn_fsm, ptr %9, i32 0, i32 1, !dbg !411
  store i32 3, ptr %10, align 8, !dbg !412
  %11 = load ptr, ptr %2, align 8, !dbg !413
  %12 = getelementptr inbounds %struct.nn_fsm, ptr %11, i32 0, i32 0, !dbg !414
  %13 = load ptr, ptr %12, align 8, !dbg !414
  %14 = load ptr, ptr %2, align 8, !dbg !415
  call void %13(ptr noundef %14, i32 noundef -2, i32 noundef -3, ptr noundef null), !dbg !413
  br label %15, !dbg !416

15:                                               ; preds = %8, %7
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_stopped(ptr noundef %0, i32 noundef %1) #0 !dbg !417 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !420, metadata !DIExpression()), !dbg !421
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !422, metadata !DIExpression()), !dbg !423
  br label %5, !dbg !424

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !dbg !425
  %7 = getelementptr inbounds %struct.nn_fsm, ptr %6, i32 0, i32 1, !dbg !425
  %8 = load i32, ptr %7, align 8, !dbg !425
  %9 = icmp eq i32 %8, 3, !dbg !425
  %10 = xor i1 %9, true, !dbg !425
  %11 = zext i1 %10 to i32, !dbg !425
  %12 = sext i32 %11 to i64, !dbg !425
  %13 = icmp ne i64 %12, 0, !dbg !425
  br i1 %13, label %14, label %17, !dbg !428

14:                                               ; preds = %5
  %15 = load ptr, ptr @stderr, align 8, !dbg !429
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 122), !dbg !429
  call void @nn_err_abort() #4, !dbg !429
  unreachable, !dbg !429

17:                                               ; preds = %5
  br label %18, !dbg !428

18:                                               ; preds = %17
  %19 = load ptr, ptr %3, align 8, !dbg !431
  %20 = load ptr, ptr %3, align 8, !dbg !432
  %21 = getelementptr inbounds %struct.nn_fsm, ptr %20, i32 0, i32 6, !dbg !433
  %22 = load i32, ptr %4, align 4, !dbg !434
  call void @nn_fsm_raise(ptr noundef %19, ptr noundef %21, i32 noundef %22), !dbg !435
  %23 = load ptr, ptr %3, align 8, !dbg !436
  %24 = getelementptr inbounds %struct.nn_fsm, ptr %23, i32 0, i32 1, !dbg !437
  store i32 1, ptr %24, align 8, !dbg !438
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_raise(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !440 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !443, metadata !DIExpression()), !dbg !444
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !445, metadata !DIExpression()), !dbg !446
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !447, metadata !DIExpression()), !dbg !448
  %7 = load ptr, ptr %4, align 8, !dbg !449
  %8 = getelementptr inbounds %struct.nn_fsm, ptr %7, i32 0, i32 4, !dbg !450
  %9 = load ptr, ptr %8, align 8, !dbg !450
  %10 = load ptr, ptr %5, align 8, !dbg !451
  %11 = getelementptr inbounds %struct.nn_fsm_event, ptr %10, i32 0, i32 0, !dbg !452
  store ptr %9, ptr %11, align 8, !dbg !453
  %12 = load ptr, ptr %4, align 8, !dbg !454
  %13 = getelementptr inbounds %struct.nn_fsm, ptr %12, i32 0, i32 2, !dbg !455
  %14 = load i32, ptr %13, align 4, !dbg !455
  %15 = load ptr, ptr %5, align 8, !dbg !456
  %16 = getelementptr inbounds %struct.nn_fsm_event, ptr %15, i32 0, i32 1, !dbg !457
  store i32 %14, ptr %16, align 8, !dbg !458
  %17 = load ptr, ptr %4, align 8, !dbg !459
  %18 = getelementptr inbounds %struct.nn_fsm, ptr %17, i32 0, i32 3, !dbg !460
  %19 = load ptr, ptr %18, align 8, !dbg !460
  %20 = load ptr, ptr %5, align 8, !dbg !461
  %21 = getelementptr inbounds %struct.nn_fsm_event, ptr %20, i32 0, i32 2, !dbg !462
  store ptr %19, ptr %21, align 8, !dbg !463
  %22 = load i32, ptr %6, align 4, !dbg !464
  %23 = load ptr, ptr %5, align 8, !dbg !465
  %24 = getelementptr inbounds %struct.nn_fsm_event, ptr %23, i32 0, i32 3, !dbg !466
  store i32 %22, ptr %24, align 8, !dbg !467
  %25 = load ptr, ptr %4, align 8, !dbg !468
  %26 = getelementptr inbounds %struct.nn_fsm, ptr %25, i32 0, i32 5, !dbg !469
  %27 = load ptr, ptr %26, align 8, !dbg !469
  %28 = load ptr, ptr %5, align 8, !dbg !470
  call void @nn_ctx_raise(ptr noundef %27, ptr noundef %28), !dbg !471
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_stopped_noevent(ptr noundef %0) #0 !dbg !473 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !474, metadata !DIExpression()), !dbg !475
  br label %3, !dbg !476

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !477
  %5 = getelementptr inbounds %struct.nn_fsm, ptr %4, i32 0, i32 1, !dbg !477
  %6 = load i32, ptr %5, align 8, !dbg !477
  %7 = icmp eq i32 %6, 3, !dbg !477
  %8 = xor i1 %7, true, !dbg !477
  %9 = zext i1 %8 to i32, !dbg !477
  %10 = sext i32 %9 to i64, !dbg !477
  %11 = icmp ne i64 %10, 0, !dbg !477
  br i1 %11, label %12, label %15, !dbg !480

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !dbg !481
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 129), !dbg !481
  call void @nn_err_abort() #4, !dbg !481
  unreachable, !dbg !481

15:                                               ; preds = %3
  br label %16, !dbg !480

16:                                               ; preds = %15
  %17 = load ptr, ptr %2, align 8, !dbg !483
  %18 = getelementptr inbounds %struct.nn_fsm, ptr %17, i32 0, i32 1, !dbg !484
  store i32 1, ptr %18, align 8, !dbg !485
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_swap_owner(ptr noundef %0, ptr noundef %1) #0 !dbg !487 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !495, metadata !DIExpression()), !dbg !496
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !497, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.declare(metadata ptr %5, metadata !499, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.declare(metadata ptr %6, metadata !501, metadata !DIExpression()), !dbg !502
  %7 = load ptr, ptr %3, align 8, !dbg !503
  %8 = getelementptr inbounds %struct.nn_fsm, ptr %7, i32 0, i32 2, !dbg !504
  %9 = load i32, ptr %8, align 4, !dbg !504
  store i32 %9, ptr %5, align 4, !dbg !505
  %10 = load ptr, ptr %3, align 8, !dbg !506
  %11 = getelementptr inbounds %struct.nn_fsm, ptr %10, i32 0, i32 4, !dbg !507
  %12 = load ptr, ptr %11, align 8, !dbg !507
  store ptr %12, ptr %6, align 8, !dbg !508
  %13 = load ptr, ptr %4, align 8, !dbg !509
  %14 = getelementptr inbounds %struct.nn_fsm_owner, ptr %13, i32 0, i32 0, !dbg !510
  %15 = load i32, ptr %14, align 8, !dbg !510
  %16 = load ptr, ptr %3, align 8, !dbg !511
  %17 = getelementptr inbounds %struct.nn_fsm, ptr %16, i32 0, i32 2, !dbg !512
  store i32 %15, ptr %17, align 4, !dbg !513
  %18 = load ptr, ptr %4, align 8, !dbg !514
  %19 = getelementptr inbounds %struct.nn_fsm_owner, ptr %18, i32 0, i32 1, !dbg !515
  %20 = load ptr, ptr %19, align 8, !dbg !515
  %21 = load ptr, ptr %3, align 8, !dbg !516
  %22 = getelementptr inbounds %struct.nn_fsm, ptr %21, i32 0, i32 4, !dbg !517
  store ptr %20, ptr %22, align 8, !dbg !518
  %23 = load i32, ptr %5, align 4, !dbg !519
  %24 = load ptr, ptr %4, align 8, !dbg !520
  %25 = getelementptr inbounds %struct.nn_fsm_owner, ptr %24, i32 0, i32 0, !dbg !521
  store i32 %23, ptr %25, align 8, !dbg !522
  %26 = load ptr, ptr %6, align 8, !dbg !523
  %27 = load ptr, ptr %4, align 8, !dbg !524
  %28 = getelementptr inbounds %struct.nn_fsm_owner, ptr %27, i32 0, i32 1, !dbg !525
  store ptr %26, ptr %28, align 8, !dbg !526
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_fsm_choose_worker(ptr noundef %0) #0 !dbg !528 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !532, metadata !DIExpression()), !dbg !533
  %3 = load ptr, ptr %2, align 8, !dbg !534
  %4 = getelementptr inbounds %struct.nn_fsm, ptr %3, i32 0, i32 5, !dbg !535
  %5 = load ptr, ptr %4, align 8, !dbg !535
  %6 = call ptr @nn_ctx_choose_worker(ptr noundef %5), !dbg !536
  ret ptr %6, !dbg !537
}

declare ptr @nn_ctx_choose_worker(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_action(ptr noundef %0, i32 noundef %1) #0 !dbg !538 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !539, metadata !DIExpression()), !dbg !540
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !541, metadata !DIExpression()), !dbg !542
  br label %5, !dbg !543

5:                                                ; preds = %2
  %6 = load i32, ptr %4, align 4, !dbg !544
  %7 = icmp sgt i32 %6, 0, !dbg !544
  %8 = xor i1 %7, true, !dbg !544
  %9 = zext i1 %8 to i32, !dbg !544
  %10 = sext i32 %9 to i64, !dbg !544
  %11 = icmp ne i64 %10, 0, !dbg !544
  br i1 %11, label %12, label %15, !dbg !547

12:                                               ; preds = %5
  %13 = load ptr, ptr @stderr, align 8, !dbg !548
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 153), !dbg !548
  call void @nn_err_abort() #4, !dbg !548
  unreachable, !dbg !548

15:                                               ; preds = %5
  br label %16, !dbg !547

16:                                               ; preds = %15
  %17 = load ptr, ptr %3, align 8, !dbg !550
  %18 = getelementptr inbounds %struct.nn_fsm, ptr %17, i32 0, i32 0, !dbg !551
  %19 = load ptr, ptr %18, align 8, !dbg !551
  %20 = load ptr, ptr %3, align 8, !dbg !552
  %21 = load i32, ptr %4, align 4, !dbg !553
  call void %19(ptr noundef %20, i32 noundef -2, i32 noundef %21, ptr noundef null), !dbg !550
  ret void, !dbg !554
}

declare void @nn_ctx_raise(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_fsm_raiseto(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 !dbg !555 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !558, metadata !DIExpression()), !dbg !559
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !560, metadata !DIExpression()), !dbg !561
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !562, metadata !DIExpression()), !dbg !563
  store i32 %3, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !564, metadata !DIExpression()), !dbg !565
  store i32 %4, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !566, metadata !DIExpression()), !dbg !567
  store ptr %5, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !568, metadata !DIExpression()), !dbg !569
  %13 = load ptr, ptr %8, align 8, !dbg !570
  %14 = load ptr, ptr %9, align 8, !dbg !571
  %15 = getelementptr inbounds %struct.nn_fsm_event, ptr %14, i32 0, i32 0, !dbg !572
  store ptr %13, ptr %15, align 8, !dbg !573
  %16 = load i32, ptr %10, align 4, !dbg !574
  %17 = load ptr, ptr %9, align 8, !dbg !575
  %18 = getelementptr inbounds %struct.nn_fsm_event, ptr %17, i32 0, i32 1, !dbg !576
  store i32 %16, ptr %18, align 8, !dbg !577
  %19 = load ptr, ptr %12, align 8, !dbg !578
  %20 = load ptr, ptr %9, align 8, !dbg !579
  %21 = getelementptr inbounds %struct.nn_fsm_event, ptr %20, i32 0, i32 2, !dbg !580
  store ptr %19, ptr %21, align 8, !dbg !581
  %22 = load i32, ptr %11, align 4, !dbg !582
  %23 = load ptr, ptr %9, align 8, !dbg !583
  %24 = getelementptr inbounds %struct.nn_fsm_event, ptr %23, i32 0, i32 3, !dbg !584
  store i32 %22, ptr %24, align 8, !dbg !585
  %25 = load ptr, ptr %7, align 8, !dbg !586
  %26 = getelementptr inbounds %struct.nn_fsm, ptr %25, i32 0, i32 5, !dbg !587
  %27 = load ptr, ptr %26, align 8, !dbg !587
  %28 = load ptr, ptr %9, align 8, !dbg !588
  call void @nn_ctx_raiseto(ptr noundef %27, ptr noundef %28), !dbg !589
  ret void, !dbg !590
}

declare void @nn_ctx_raiseto(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/aio/fsm.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "eeeec6f476ca9a9634f5ed9f3d7de0ee")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 21)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 16)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 37)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 9)
!27 = distinct !DICompileUnit(language: DW_LANG_C11, file: !28, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !29, globals: !31, splitDebugInlining: false, nameTableKind: None)
!28 = !DIFile(filename: "src/aio/fsm.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "eeeec6f476ca9a9634f5ed9f3d7de0ee")
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !{!0, !7, !12, !17, !22}
!32 = !{i32 7, !"Dwarf Version", i32 5}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 8, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 2}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 16.0.0"}
!40 = distinct !DISubprogram(name: "nn_fsm_event_init", scope: !2, file: !2, line: 34, type: !41, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !45, line: 34, size: 320, elements: !46)
!45 = !DIFile(filename: "./src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!46 = !{!47, !204, !205, !206, !207}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !44, file: !45, line: 35, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !45, line: 66, size: 640, elements: !50)
!50 = !{!51, !57, !58, !59, !60, !61, !203}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !49, file: !45, line: 67, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !45, line: 58, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !48, !56, !56, !30}
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !49, file: !45, line: 68, baseType: !56, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !49, file: !45, line: 69, baseType: !56, size: 32, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !49, file: !45, line: 70, baseType: !30, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !49, file: !45, line: 71, baseType: !48, size: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !49, file: !45, line: 72, baseType: !62, size: 64, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !64, line: 37, size: 704, elements: !65)
!64 = !DIFile(filename: "./src/aio/ctx.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "02553d3500c8d7bb20cd89fa252fe2c2")
!65 = !{!66, !102, !196, !197, !198}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !63, file: !64, line: 38, baseType: !67, size: 320)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !68, line: 32, size: 320, elements: !69)
!68 = !DIFile(filename: "./src/aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !67, file: !68, line: 36, baseType: !71, size: 320)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !72, line: 72, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !72, line: 67, size: 320, elements: !74)
!74 = !{!75, !96, !100}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !73, file: !72, line: 69, baseType: !76, size: 320)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !77, line: 22, size: 320, elements: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!78 = !{!79, !80, !82, !83, !84, !85, !87, !88}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !76, file: !77, line: 24, baseType: !56, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !76, file: !77, line: 25, baseType: !81, size: 32, offset: 32)
!81 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !76, file: !77, line: 26, baseType: !56, size: 32, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !76, file: !77, line: 28, baseType: !81, size: 32, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !76, file: !77, line: 32, baseType: !56, size: 32, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !76, file: !77, line: 34, baseType: !86, size: 16, offset: 160)
!86 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !76, file: !77, line: 35, baseType: !86, size: 16, offset: 176)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !76, file: !77, line: 36, baseType: !89, size: 128, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !90, line: 55, baseType: !91)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !90, line: 51, size: 128, elements: !92)
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !91, file: !90, line: 53, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !91, file: !90, line: 54, baseType: !94, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !73, file: !72, line: 70, baseType: !97, size: 320)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 40)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !73, file: !72, line: 71, baseType: !101, size: 64)
!101 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !63, file: !64, line: 39, baseType: !103, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pool", file: !105, line: 30, size: 1408, elements: !106)
!105 = !DIFile(filename: "./src/aio/pool.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a87eb417ecad65fee67523e01b3df661")
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !104, file: !105, line: 31, baseType: !108, size: 1408)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !109, line: 53, size: 1408, elements: !110)
!109 = !DIFile(filename: "./src/aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!110 = !{!111, !112, !122, !123, !129, !156, !157, !183}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !108, file: !109, line: 54, baseType: !67, size: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !108, file: !109, line: 55, baseType: !113, size: 128, offset: 320)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !114, line: 37, size: 128, elements: !115)
!114 = !DIFile(filename: "./src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!115 = !{!116, !121}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !113, file: !114, line: 38, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !114, line: 33, size: 64, elements: !119)
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !118, file: !114, line: 34, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !113, file: !114, line: 39, baseType: !117, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !108, file: !109, line: 56, baseType: !118, size: 64, offset: 448)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !108, file: !109, line: 57, baseType: !124, size: 64, offset: 512)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !125, line: 25, size: 64, elements: !126)
!125 = !DIFile(filename: "./src/aio/../utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !124, file: !125, line: 26, baseType: !56, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !124, file: !125, line: 27, baseType: !56, size: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !108, file: !109, line: 58, baseType: !130, size: 320, offset: 576)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !131, line: 31, size: 320, elements: !132)
!131 = !DIFile(filename: "./src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!132 = !{!133, !134, !135, !136, !144, !155}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !130, file: !131, line: 34, baseType: !56, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !130, file: !131, line: 37, baseType: !56, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !130, file: !131, line: 40, baseType: !56, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !130, file: !131, line: 43, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !139, line: 36, size: 64, elements: !140)
!139 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!140 = !{!141, !142, !143}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !138, file: !139, line: 38, baseType: !56, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !138, file: !139, line: 39, baseType: !86, size: 16, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !138, file: !139, line: 40, baseType: !86, size: 16, offset: 48)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !130, file: !131, line: 52, baseType: !145, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !131, line: 48, size: 128, elements: !147)
!147 = !{!148, !153, !154}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !146, file: !131, line: 49, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !131, line: 27, size: 32, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !150, file: !131, line: 28, baseType: !56, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !146, file: !131, line: 50, baseType: !56, size: 32, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !131, line: 51, baseType: !56, size: 32, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !130, file: !131, line: 55, baseType: !56, size: 32, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !108, file: !109, line: 59, baseType: !150, size: 32, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !108, file: !109, line: 60, baseType: !158, size: 256, offset: 960)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !159, line: 37, size: 256, elements: !160)
!159 = !DIFile(filename: "./src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!160 = !{!161, !172}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !158, file: !159, line: 38, baseType: !162, size: 128)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !163, line: 31, size: 128, elements: !164)
!163 = !DIFile(filename: "./src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!164 = !{!165, !171}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !162, file: !163, line: 33, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !167, line: 27, baseType: !168)
!167 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !169, line: 45, baseType: !170)
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!170 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !162, file: !163, line: 34, baseType: !166, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !158, file: !159, line: 39, baseType: !173, size: 128, offset: 128)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !174, line: 31, size: 128, elements: !175)
!174 = !DIFile(filename: "./src/aio/../utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!175 = !{!176, !182}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !173, file: !174, line: 32, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !174, line: 26, size: 128, elements: !179)
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !174, line: 27, baseType: !177, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !178, file: !174, line: 28, baseType: !177, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !173, file: !174, line: 33, baseType: !177, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !108, file: !109, line: 61, baseType: !184, size: 192, offset: 1216)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !185, line: 25, size: 192, elements: !186)
!185 = !DIFile(filename: "./src/aio/../utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!186 = !{!187, !193, !194}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !184, file: !185, line: 27, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !190, line: 28, baseType: !191)
!190 = !DIFile(filename: "./src/aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!191 = !DISubroutineType(types: !192)
!192 = !{null, !30}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !184, file: !185, line: 28, baseType: !30, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !184, file: !185, line: 29, baseType: !195, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !72, line: 27, baseType: !170)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !63, file: !64, line: 40, baseType: !113, size: 128, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "eventsto", scope: !63, file: !64, line: 41, baseType: !113, size: 128, offset: 512)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "onleave", scope: !63, file: !64, line: 42, baseType: !199, size: 64, offset: 640)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_ctx_onleave", file: !64, line: 35, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !62}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !49, file: !45, line: 73, baseType: !44, size: 320, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !44, file: !45, line: 36, baseType: !56, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !44, file: !45, line: 37, baseType: !30, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !44, file: !45, line: 38, baseType: !56, size: 32, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !44, file: !45, line: 39, baseType: !118, size: 64, offset: 256)
!208 = !{}
!209 = !DILocalVariable(name: "self", arg: 1, scope: !40, file: !2, line: 34, type: !43)
!210 = !DILocation(line: 34, column: 46, scope: !40)
!211 = !DILocation(line: 36, column: 5, scope: !40)
!212 = !DILocation(line: 36, column: 11, scope: !40)
!213 = !DILocation(line: 36, column: 15, scope: !40)
!214 = !DILocation(line: 37, column: 5, scope: !40)
!215 = !DILocation(line: 37, column: 11, scope: !40)
!216 = !DILocation(line: 37, column: 15, scope: !40)
!217 = !DILocation(line: 38, column: 5, scope: !40)
!218 = !DILocation(line: 38, column: 11, scope: !40)
!219 = !DILocation(line: 38, column: 18, scope: !40)
!220 = !DILocation(line: 39, column: 5, scope: !40)
!221 = !DILocation(line: 39, column: 11, scope: !40)
!222 = !DILocation(line: 39, column: 16, scope: !40)
!223 = !DILocation(line: 40, column: 26, scope: !40)
!224 = !DILocation(line: 40, column: 32, scope: !40)
!225 = !DILocation(line: 40, column: 5, scope: !40)
!226 = !DILocation(line: 41, column: 1, scope: !40)
!227 = distinct !DISubprogram(name: "nn_fsm_event_term", scope: !2, file: !2, line: 43, type: !41, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!228 = !DILocalVariable(name: "self", arg: 1, scope: !227, file: !2, line: 43, type: !43)
!229 = !DILocation(line: 43, column: 46, scope: !227)
!230 = !DILocation(line: 45, column: 26, scope: !227)
!231 = !DILocation(line: 45, column: 32, scope: !227)
!232 = !DILocation(line: 45, column: 5, scope: !227)
!233 = !DILocation(line: 46, column: 1, scope: !227)
!234 = distinct !DISubprogram(name: "nn_fsm_event_active", scope: !2, file: !2, line: 48, type: !235, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!235 = !DISubroutineType(types: !236)
!236 = !{!56, !43}
!237 = !DILocalVariable(name: "self", arg: 1, scope: !234, file: !2, line: 48, type: !43)
!238 = !DILocation(line: 48, column: 47, scope: !234)
!239 = !DILocation(line: 50, column: 38, scope: !234)
!240 = !DILocation(line: 50, column: 44, scope: !234)
!241 = !DILocation(line: 50, column: 12, scope: !234)
!242 = !DILocation(line: 50, column: 5, scope: !234)
!243 = distinct !DISubprogram(name: "nn_fsm_event_process", scope: !2, file: !2, line: 53, type: !41, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!244 = !DILocalVariable(name: "self", arg: 1, scope: !243, file: !2, line: 53, type: !43)
!245 = !DILocation(line: 53, column: 49, scope: !243)
!246 = !DILocalVariable(name: "src", scope: !243, file: !2, line: 55, type: !56)
!247 = !DILocation(line: 55, column: 9, scope: !243)
!248 = !DILocalVariable(name: "type", scope: !243, file: !2, line: 56, type: !56)
!249 = !DILocation(line: 56, column: 9, scope: !243)
!250 = !DILocalVariable(name: "srcptr", scope: !243, file: !2, line: 57, type: !30)
!251 = !DILocation(line: 57, column: 11, scope: !243)
!252 = !DILocation(line: 59, column: 11, scope: !243)
!253 = !DILocation(line: 59, column: 17, scope: !243)
!254 = !DILocation(line: 59, column: 9, scope: !243)
!255 = !DILocation(line: 60, column: 12, scope: !243)
!256 = !DILocation(line: 60, column: 18, scope: !243)
!257 = !DILocation(line: 60, column: 10, scope: !243)
!258 = !DILocation(line: 61, column: 14, scope: !243)
!259 = !DILocation(line: 61, column: 20, scope: !243)
!260 = !DILocation(line: 61, column: 12, scope: !243)
!261 = !DILocation(line: 62, column: 5, scope: !243)
!262 = !DILocation(line: 62, column: 11, scope: !243)
!263 = !DILocation(line: 62, column: 15, scope: !243)
!264 = !DILocation(line: 63, column: 5, scope: !243)
!265 = !DILocation(line: 63, column: 11, scope: !243)
!266 = !DILocation(line: 63, column: 16, scope: !243)
!267 = !DILocation(line: 64, column: 5, scope: !243)
!268 = !DILocation(line: 64, column: 11, scope: !243)
!269 = !DILocation(line: 64, column: 18, scope: !243)
!270 = !DILocation(line: 65, column: 5, scope: !243)
!271 = !DILocation(line: 65, column: 11, scope: !243)
!272 = !DILocation(line: 65, column: 16, scope: !243)
!273 = !DILocation(line: 65, column: 20, scope: !243)
!274 = !DILocation(line: 65, column: 26, scope: !243)
!275 = !DILocation(line: 65, column: 31, scope: !243)
!276 = !DILocation(line: 65, column: 36, scope: !243)
!277 = !DILocation(line: 65, column: 42, scope: !243)
!278 = !DILocation(line: 66, column: 1, scope: !243)
!279 = distinct !DISubprogram(name: "nn_fsm_init_root", scope: !2, file: !2, line: 68, type: !280, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !48, !52, !62}
!282 = !DILocalVariable(name: "self", arg: 1, scope: !279, file: !2, line: 68, type: !48)
!283 = !DILocation(line: 68, column: 39, scope: !279)
!284 = !DILocalVariable(name: "fn", arg: 2, scope: !279, file: !2, line: 68, type: !52)
!285 = !DILocation(line: 68, column: 55, scope: !279)
!286 = !DILocalVariable(name: "ctx", arg: 3, scope: !279, file: !2, line: 68, type: !62)
!287 = !DILocation(line: 68, column: 74, scope: !279)
!288 = !DILocation(line: 70, column: 16, scope: !279)
!289 = !DILocation(line: 70, column: 5, scope: !279)
!290 = !DILocation(line: 70, column: 11, scope: !279)
!291 = !DILocation(line: 70, column: 14, scope: !279)
!292 = !DILocation(line: 71, column: 5, scope: !279)
!293 = !DILocation(line: 71, column: 11, scope: !279)
!294 = !DILocation(line: 71, column: 17, scope: !279)
!295 = !DILocation(line: 72, column: 5, scope: !279)
!296 = !DILocation(line: 72, column: 11, scope: !279)
!297 = !DILocation(line: 72, column: 15, scope: !279)
!298 = !DILocation(line: 73, column: 5, scope: !279)
!299 = !DILocation(line: 73, column: 11, scope: !279)
!300 = !DILocation(line: 73, column: 18, scope: !279)
!301 = !DILocation(line: 74, column: 5, scope: !279)
!302 = !DILocation(line: 74, column: 11, scope: !279)
!303 = !DILocation(line: 74, column: 17, scope: !279)
!304 = !DILocation(line: 75, column: 17, scope: !279)
!305 = !DILocation(line: 75, column: 5, scope: !279)
!306 = !DILocation(line: 75, column: 11, scope: !279)
!307 = !DILocation(line: 75, column: 15, scope: !279)
!308 = !DILocation(line: 76, column: 25, scope: !279)
!309 = !DILocation(line: 76, column: 31, scope: !279)
!310 = !DILocation(line: 76, column: 5, scope: !279)
!311 = !DILocation(line: 77, column: 1, scope: !279)
!312 = distinct !DISubprogram(name: "nn_fsm_init", scope: !2, file: !2, line: 79, type: !313, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !48, !52, !56, !30, !48}
!315 = !DILocalVariable(name: "self", arg: 1, scope: !312, file: !2, line: 79, type: !48)
!316 = !DILocation(line: 79, column: 34, scope: !312)
!317 = !DILocalVariable(name: "fn", arg: 2, scope: !312, file: !2, line: 79, type: !52)
!318 = !DILocation(line: 79, column: 50, scope: !312)
!319 = !DILocalVariable(name: "src", arg: 3, scope: !312, file: !2, line: 79, type: !56)
!320 = !DILocation(line: 79, column: 58, scope: !312)
!321 = !DILocalVariable(name: "srcptr", arg: 4, scope: !312, file: !2, line: 79, type: !30)
!322 = !DILocation(line: 79, column: 69, scope: !312)
!323 = !DILocalVariable(name: "owner", arg: 5, scope: !312, file: !2, line: 80, type: !48)
!324 = !DILocation(line: 80, column: 20, scope: !312)
!325 = !DILocation(line: 82, column: 16, scope: !312)
!326 = !DILocation(line: 82, column: 5, scope: !312)
!327 = !DILocation(line: 82, column: 11, scope: !312)
!328 = !DILocation(line: 82, column: 14, scope: !312)
!329 = !DILocation(line: 83, column: 5, scope: !312)
!330 = !DILocation(line: 83, column: 11, scope: !312)
!331 = !DILocation(line: 83, column: 17, scope: !312)
!332 = !DILocation(line: 84, column: 17, scope: !312)
!333 = !DILocation(line: 84, column: 5, scope: !312)
!334 = !DILocation(line: 84, column: 11, scope: !312)
!335 = !DILocation(line: 84, column: 15, scope: !312)
!336 = !DILocation(line: 85, column: 20, scope: !312)
!337 = !DILocation(line: 85, column: 5, scope: !312)
!338 = !DILocation(line: 85, column: 11, scope: !312)
!339 = !DILocation(line: 85, column: 18, scope: !312)
!340 = !DILocation(line: 86, column: 19, scope: !312)
!341 = !DILocation(line: 86, column: 5, scope: !312)
!342 = !DILocation(line: 86, column: 11, scope: !312)
!343 = !DILocation(line: 86, column: 17, scope: !312)
!344 = !DILocation(line: 87, column: 17, scope: !312)
!345 = !DILocation(line: 87, column: 24, scope: !312)
!346 = !DILocation(line: 87, column: 5, scope: !312)
!347 = !DILocation(line: 87, column: 11, scope: !312)
!348 = !DILocation(line: 87, column: 15, scope: !312)
!349 = !DILocation(line: 88, column: 25, scope: !312)
!350 = !DILocation(line: 88, column: 31, scope: !312)
!351 = !DILocation(line: 88, column: 5, scope: !312)
!352 = !DILocation(line: 89, column: 1, scope: !312)
!353 = distinct !DISubprogram(name: "nn_fsm_term", scope: !2, file: !2, line: 91, type: !354, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !48}
!356 = !DILocalVariable(name: "self", arg: 1, scope: !353, file: !2, line: 91, type: !48)
!357 = !DILocation(line: 91, column: 34, scope: !353)
!358 = !DILocation(line: 93, column: 5, scope: !353)
!359 = !DILocation(line: 93, column: 5, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !2, line: 93, column: 5)
!361 = distinct !DILexicalBlock(scope: !353, file: !2, line: 93, column: 5)
!362 = !DILocation(line: 93, column: 5, scope: !361)
!363 = !DILocation(line: 93, column: 5, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !2, line: 93, column: 5)
!365 = !DILocation(line: 94, column: 25, scope: !353)
!366 = !DILocation(line: 94, column: 31, scope: !353)
!367 = !DILocation(line: 94, column: 5, scope: !353)
!368 = !DILocation(line: 95, column: 1, scope: !353)
!369 = distinct !DISubprogram(name: "nn_fsm_isidle", scope: !2, file: !2, line: 104, type: !370, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!370 = !DISubroutineType(types: !371)
!371 = !{!56, !48}
!372 = !DILocalVariable(name: "self", arg: 1, scope: !369, file: !2, line: 104, type: !48)
!373 = !DILocation(line: 104, column: 35, scope: !369)
!374 = !DILocation(line: 106, column: 12, scope: !369)
!375 = !DILocation(line: 106, column: 18, scope: !369)
!376 = !DILocation(line: 106, column: 24, scope: !369)
!377 = !DILocation(line: 106, column: 45, scope: !369)
!378 = !DILocation(line: 107, column: 32, scope: !369)
!379 = !DILocation(line: 107, column: 38, scope: !369)
!380 = !DILocation(line: 107, column: 10, scope: !369)
!381 = !DILocation(line: 107, column: 9, scope: !369)
!382 = !DILocation(line: 0, scope: !369)
!383 = !DILocation(line: 106, column: 5, scope: !369)
!384 = distinct !DISubprogram(name: "nn_fsm_start", scope: !2, file: !2, line: 97, type: !354, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!385 = !DILocalVariable(name: "self", arg: 1, scope: !384, file: !2, line: 97, type: !48)
!386 = !DILocation(line: 97, column: 35, scope: !384)
!387 = !DILocation(line: 99, column: 5, scope: !384)
!388 = !DILocation(line: 99, column: 5, scope: !389)
!389 = distinct !DILexicalBlock(scope: !390, file: !2, line: 99, column: 5)
!390 = distinct !DILexicalBlock(scope: !384, file: !2, line: 99, column: 5)
!391 = !DILocation(line: 99, column: 5, scope: !390)
!392 = !DILocation(line: 99, column: 5, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !2, line: 99, column: 5)
!394 = !DILocation(line: 100, column: 5, scope: !384)
!395 = !DILocation(line: 100, column: 11, scope: !384)
!396 = !DILocation(line: 100, column: 15, scope: !384)
!397 = !DILocation(line: 101, column: 5, scope: !384)
!398 = !DILocation(line: 101, column: 11, scope: !384)
!399 = !DILocation(line: 101, column: 17, scope: !384)
!400 = !DILocation(line: 102, column: 1, scope: !384)
!401 = distinct !DISubprogram(name: "nn_fsm_stop", scope: !2, file: !2, line: 110, type: !354, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!402 = !DILocalVariable(name: "self", arg: 1, scope: !401, file: !2, line: 110, type: !48)
!403 = !DILocation(line: 110, column: 34, scope: !401)
!404 = !DILocation(line: 113, column: 9, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !2, line: 113, column: 9)
!406 = !DILocation(line: 113, column: 15, scope: !405)
!407 = !DILocation(line: 113, column: 21, scope: !405)
!408 = !DILocation(line: 113, column: 9, scope: !401)
!409 = !DILocation(line: 114, column: 9, scope: !405)
!410 = !DILocation(line: 116, column: 5, scope: !401)
!411 = !DILocation(line: 116, column: 11, scope: !401)
!412 = !DILocation(line: 116, column: 17, scope: !401)
!413 = !DILocation(line: 117, column: 5, scope: !401)
!414 = !DILocation(line: 117, column: 11, scope: !401)
!415 = !DILocation(line: 117, column: 15, scope: !401)
!416 = !DILocation(line: 118, column: 1, scope: !401)
!417 = distinct !DISubprogram(name: "nn_fsm_stopped", scope: !2, file: !2, line: 120, type: !418, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !48, !56}
!420 = !DILocalVariable(name: "self", arg: 1, scope: !417, file: !2, line: 120, type: !48)
!421 = !DILocation(line: 120, column: 37, scope: !417)
!422 = !DILocalVariable(name: "type", arg: 2, scope: !417, file: !2, line: 120, type: !56)
!423 = !DILocation(line: 120, column: 47, scope: !417)
!424 = !DILocation(line: 122, column: 5, scope: !417)
!425 = !DILocation(line: 122, column: 5, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !2, line: 122, column: 5)
!427 = distinct !DILexicalBlock(scope: !417, file: !2, line: 122, column: 5)
!428 = !DILocation(line: 122, column: 5, scope: !427)
!429 = !DILocation(line: 122, column: 5, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !2, line: 122, column: 5)
!431 = !DILocation(line: 123, column: 19, scope: !417)
!432 = !DILocation(line: 123, column: 26, scope: !417)
!433 = !DILocation(line: 123, column: 32, scope: !417)
!434 = !DILocation(line: 123, column: 41, scope: !417)
!435 = !DILocation(line: 123, column: 5, scope: !417)
!436 = !DILocation(line: 124, column: 5, scope: !417)
!437 = !DILocation(line: 124, column: 11, scope: !417)
!438 = !DILocation(line: 124, column: 17, scope: !417)
!439 = !DILocation(line: 125, column: 1, scope: !417)
!440 = distinct !DISubprogram(name: "nn_fsm_raise", scope: !2, file: !2, line: 157, type: !441, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !48, !43, !56}
!443 = !DILocalVariable(name: "self", arg: 1, scope: !440, file: !2, line: 157, type: !48)
!444 = !DILocation(line: 157, column: 35, scope: !440)
!445 = !DILocalVariable(name: "event", arg: 2, scope: !440, file: !2, line: 157, type: !43)
!446 = !DILocation(line: 157, column: 62, scope: !440)
!447 = !DILocalVariable(name: "type", arg: 3, scope: !440, file: !2, line: 157, type: !56)
!448 = !DILocation(line: 157, column: 73, scope: !440)
!449 = !DILocation(line: 159, column: 18, scope: !440)
!450 = !DILocation(line: 159, column: 24, scope: !440)
!451 = !DILocation(line: 159, column: 5, scope: !440)
!452 = !DILocation(line: 159, column: 12, scope: !440)
!453 = !DILocation(line: 159, column: 16, scope: !440)
!454 = !DILocation(line: 160, column: 18, scope: !440)
!455 = !DILocation(line: 160, column: 24, scope: !440)
!456 = !DILocation(line: 160, column: 5, scope: !440)
!457 = !DILocation(line: 160, column: 12, scope: !440)
!458 = !DILocation(line: 160, column: 16, scope: !440)
!459 = !DILocation(line: 161, column: 21, scope: !440)
!460 = !DILocation(line: 161, column: 27, scope: !440)
!461 = !DILocation(line: 161, column: 5, scope: !440)
!462 = !DILocation(line: 161, column: 12, scope: !440)
!463 = !DILocation(line: 161, column: 19, scope: !440)
!464 = !DILocation(line: 162, column: 19, scope: !440)
!465 = !DILocation(line: 162, column: 5, scope: !440)
!466 = !DILocation(line: 162, column: 12, scope: !440)
!467 = !DILocation(line: 162, column: 17, scope: !440)
!468 = !DILocation(line: 163, column: 19, scope: !440)
!469 = !DILocation(line: 163, column: 25, scope: !440)
!470 = !DILocation(line: 163, column: 30, scope: !440)
!471 = !DILocation(line: 163, column: 5, scope: !440)
!472 = !DILocation(line: 164, column: 1, scope: !440)
!473 = distinct !DISubprogram(name: "nn_fsm_stopped_noevent", scope: !2, file: !2, line: 127, type: !354, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!474 = !DILocalVariable(name: "self", arg: 1, scope: !473, file: !2, line: 127, type: !48)
!475 = !DILocation(line: 127, column: 45, scope: !473)
!476 = !DILocation(line: 129, column: 5, scope: !473)
!477 = !DILocation(line: 129, column: 5, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !2, line: 129, column: 5)
!479 = distinct !DILexicalBlock(scope: !473, file: !2, line: 129, column: 5)
!480 = !DILocation(line: 129, column: 5, scope: !479)
!481 = !DILocation(line: 129, column: 5, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !2, line: 129, column: 5)
!483 = !DILocation(line: 130, column: 5, scope: !473)
!484 = !DILocation(line: 130, column: 11, scope: !473)
!485 = !DILocation(line: 130, column: 17, scope: !473)
!486 = !DILocation(line: 131, column: 1, scope: !473)
!487 = distinct !DISubprogram(name: "nn_fsm_swap_owner", scope: !2, file: !2, line: 133, type: !488, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !48, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_owner", file: !45, line: 61, size: 128, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !491, file: !45, line: 62, baseType: !56, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !491, file: !45, line: 63, baseType: !48, size: 64, offset: 64)
!495 = !DILocalVariable(name: "self", arg: 1, scope: !487, file: !2, line: 133, type: !48)
!496 = !DILocation(line: 133, column: 40, scope: !487)
!497 = !DILocalVariable(name: "owner", arg: 2, scope: !487, file: !2, line: 133, type: !490)
!498 = !DILocation(line: 133, column: 67, scope: !487)
!499 = !DILocalVariable(name: "oldsrc", scope: !487, file: !2, line: 135, type: !56)
!500 = !DILocation(line: 135, column: 9, scope: !487)
!501 = !DILocalVariable(name: "oldowner", scope: !487, file: !2, line: 136, type: !48)
!502 = !DILocation(line: 136, column: 20, scope: !487)
!503 = !DILocation(line: 138, column: 14, scope: !487)
!504 = !DILocation(line: 138, column: 20, scope: !487)
!505 = !DILocation(line: 138, column: 12, scope: !487)
!506 = !DILocation(line: 139, column: 16, scope: !487)
!507 = !DILocation(line: 139, column: 22, scope: !487)
!508 = !DILocation(line: 139, column: 14, scope: !487)
!509 = !DILocation(line: 140, column: 17, scope: !487)
!510 = !DILocation(line: 140, column: 24, scope: !487)
!511 = !DILocation(line: 140, column: 5, scope: !487)
!512 = !DILocation(line: 140, column: 11, scope: !487)
!513 = !DILocation(line: 140, column: 15, scope: !487)
!514 = !DILocation(line: 141, column: 19, scope: !487)
!515 = !DILocation(line: 141, column: 26, scope: !487)
!516 = !DILocation(line: 141, column: 5, scope: !487)
!517 = !DILocation(line: 141, column: 11, scope: !487)
!518 = !DILocation(line: 141, column: 17, scope: !487)
!519 = !DILocation(line: 142, column: 18, scope: !487)
!520 = !DILocation(line: 142, column: 5, scope: !487)
!521 = !DILocation(line: 142, column: 12, scope: !487)
!522 = !DILocation(line: 142, column: 16, scope: !487)
!523 = !DILocation(line: 143, column: 18, scope: !487)
!524 = !DILocation(line: 143, column: 5, scope: !487)
!525 = !DILocation(line: 143, column: 12, scope: !487)
!526 = !DILocation(line: 143, column: 16, scope: !487)
!527 = !DILocation(line: 144, column: 1, scope: !487)
!528 = distinct !DISubprogram(name: "nn_fsm_choose_worker", scope: !2, file: !2, line: 146, type: !529, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!529 = !DISubroutineType(types: !530)
!530 = !{!531, !48}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!532 = !DILocalVariable(name: "self", arg: 1, scope: !528, file: !2, line: 146, type: !48)
!533 = !DILocation(line: 146, column: 56, scope: !528)
!534 = !DILocation(line: 148, column: 34, scope: !528)
!535 = !DILocation(line: 148, column: 40, scope: !528)
!536 = !DILocation(line: 148, column: 12, scope: !528)
!537 = !DILocation(line: 148, column: 5, scope: !528)
!538 = distinct !DISubprogram(name: "nn_fsm_action", scope: !2, file: !2, line: 151, type: !418, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!539 = !DILocalVariable(name: "self", arg: 1, scope: !538, file: !2, line: 151, type: !48)
!540 = !DILocation(line: 151, column: 36, scope: !538)
!541 = !DILocalVariable(name: "type", arg: 2, scope: !538, file: !2, line: 151, type: !56)
!542 = !DILocation(line: 151, column: 46, scope: !538)
!543 = !DILocation(line: 153, column: 5, scope: !538)
!544 = !DILocation(line: 153, column: 5, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !2, line: 153, column: 5)
!546 = distinct !DILexicalBlock(scope: !538, file: !2, line: 153, column: 5)
!547 = !DILocation(line: 153, column: 5, scope: !546)
!548 = !DILocation(line: 153, column: 5, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !2, line: 153, column: 5)
!550 = !DILocation(line: 154, column: 5, scope: !538)
!551 = !DILocation(line: 154, column: 11, scope: !538)
!552 = !DILocation(line: 154, column: 15, scope: !538)
!553 = !DILocation(line: 154, column: 36, scope: !538)
!554 = !DILocation(line: 155, column: 1, scope: !538)
!555 = distinct !DISubprogram(name: "nn_fsm_raiseto", scope: !2, file: !2, line: 166, type: !556, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !208)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !48, !48, !43, !56, !56, !30}
!558 = !DILocalVariable(name: "self", arg: 1, scope: !555, file: !2, line: 166, type: !48)
!559 = !DILocation(line: 166, column: 37, scope: !555)
!560 = !DILocalVariable(name: "dst", arg: 2, scope: !555, file: !2, line: 166, type: !48)
!561 = !DILocation(line: 166, column: 58, scope: !555)
!562 = !DILocalVariable(name: "event", arg: 3, scope: !555, file: !2, line: 167, type: !43)
!563 = !DILocation(line: 167, column: 26, scope: !555)
!564 = !DILocalVariable(name: "src", arg: 4, scope: !555, file: !2, line: 167, type: !56)
!565 = !DILocation(line: 167, column: 37, scope: !555)
!566 = !DILocalVariable(name: "type", arg: 5, scope: !555, file: !2, line: 167, type: !56)
!567 = !DILocation(line: 167, column: 46, scope: !555)
!568 = !DILocalVariable(name: "srcptr", arg: 6, scope: !555, file: !2, line: 167, type: !30)
!569 = !DILocation(line: 167, column: 58, scope: !555)
!570 = !DILocation(line: 169, column: 18, scope: !555)
!571 = !DILocation(line: 169, column: 5, scope: !555)
!572 = !DILocation(line: 169, column: 12, scope: !555)
!573 = !DILocation(line: 169, column: 16, scope: !555)
!574 = !DILocation(line: 170, column: 18, scope: !555)
!575 = !DILocation(line: 170, column: 5, scope: !555)
!576 = !DILocation(line: 170, column: 12, scope: !555)
!577 = !DILocation(line: 170, column: 16, scope: !555)
!578 = !DILocation(line: 171, column: 21, scope: !555)
!579 = !DILocation(line: 171, column: 5, scope: !555)
!580 = !DILocation(line: 171, column: 12, scope: !555)
!581 = !DILocation(line: 171, column: 19, scope: !555)
!582 = !DILocation(line: 172, column: 19, scope: !555)
!583 = !DILocation(line: 172, column: 5, scope: !555)
!584 = !DILocation(line: 172, column: 12, scope: !555)
!585 = !DILocation(line: 172, column: 17, scope: !555)
!586 = !DILocation(line: 173, column: 21, scope: !555)
!587 = !DILocation(line: 173, column: 27, scope: !555)
!588 = !DILocation(line: 173, column: 32, scope: !555)
!589 = !DILocation(line: 173, column: 5, scope: !555)
!590 = !DILocation(line: 174, column: 1, scope: !555)
