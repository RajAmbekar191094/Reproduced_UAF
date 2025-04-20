; ModuleID = './src/aio/worker.c'
source_filename = "./src/aio/worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_worker_fd = type { ptr, %struct.nn_poller_hndl }
%struct.nn_poller_hndl = type { i32 }
%struct.nn_worker = type { %struct.nn_mutex, %struct.nn_queue, %struct.nn_queue_item, %struct.nn_efd, %struct.nn_poller, %struct.nn_poller_hndl, %struct.nn_timerset, %struct.nn_thread }
%struct.nn_mutex = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.nn_queue = type { ptr, ptr }
%struct.nn_queue_item = type { ptr }
%struct.nn_efd = type { i32, i32 }
%struct.nn_poller = type { i32, i32, i32, ptr, ptr, i32 }
%struct.nn_timerset = type { %struct.nn_clock, %struct.nn_list }
%struct.nn_clock = type { i64, i64 }
%struct.nn_list = type { ptr, ptr }
%struct.nn_thread = type { ptr, ptr, i64 }
%struct.nn_worker_timer = type { ptr, %struct.nn_timerset_hndl }
%struct.nn_timerset_hndl = type { %struct.nn_list_item, i64 }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_worker_task = type { ptr, %struct.nn_queue_item }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [27 x i8] c"./src/aio/worker_posix.inc\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [23 x i8] c"pevent == NN_POLLER_IN\00", align 1, !dbg !17

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_fd_init(ptr noundef %0, ptr noundef %1) #0 !dbg !221 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !225, metadata !DIExpression()), !dbg !226
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !227, metadata !DIExpression()), !dbg !228
  %5 = load ptr, ptr %4, align 8, !dbg !229
  %6 = load ptr, ptr %3, align 8, !dbg !230
  %7 = getelementptr inbounds %struct.nn_worker_fd, ptr %6, i32 0, i32 0, !dbg !231
  store ptr %5, ptr %7, align 8, !dbg !232
  ret void, !dbg !233
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_fd_term(ptr noundef %0) #0 !dbg !234 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !237, metadata !DIExpression()), !dbg !238
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_add_fd(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !240 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !243, metadata !DIExpression()), !dbg !244
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !245, metadata !DIExpression()), !dbg !246
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !247, metadata !DIExpression()), !dbg !248
  %7 = load ptr, ptr %4, align 8, !dbg !249
  %8 = getelementptr inbounds %struct.nn_worker, ptr %7, i32 0, i32 4, !dbg !250
  %9 = load i32, ptr %5, align 4, !dbg !251
  %10 = load ptr, ptr %6, align 8, !dbg !252
  %11 = getelementptr inbounds %struct.nn_worker_fd, ptr %10, i32 0, i32 1, !dbg !253
  call void @nn_poller_add(ptr noundef %8, i32 noundef %9, ptr noundef %11), !dbg !254
  ret void, !dbg !255
}

declare void @nn_poller_add(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_rm_fd(ptr noundef %0, ptr noundef %1) #0 !dbg !256 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !259, metadata !DIExpression()), !dbg !260
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !261, metadata !DIExpression()), !dbg !262
  %5 = load ptr, ptr %3, align 8, !dbg !263
  %6 = getelementptr inbounds %struct.nn_worker, ptr %5, i32 0, i32 4, !dbg !264
  %7 = load ptr, ptr %4, align 8, !dbg !265
  %8 = getelementptr inbounds %struct.nn_worker_fd, ptr %7, i32 0, i32 1, !dbg !266
  call void @nn_poller_rm(ptr noundef %6, ptr noundef %8), !dbg !267
  ret void, !dbg !268
}

declare void @nn_poller_rm(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_set_in(ptr noundef %0, ptr noundef %1) #0 !dbg !269 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !270, metadata !DIExpression()), !dbg !271
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !272, metadata !DIExpression()), !dbg !273
  %5 = load ptr, ptr %3, align 8, !dbg !274
  %6 = getelementptr inbounds %struct.nn_worker, ptr %5, i32 0, i32 4, !dbg !275
  %7 = load ptr, ptr %4, align 8, !dbg !276
  %8 = getelementptr inbounds %struct.nn_worker_fd, ptr %7, i32 0, i32 1, !dbg !277
  call void @nn_poller_set_in(ptr noundef %6, ptr noundef %8), !dbg !278
  ret void, !dbg !279
}

declare void @nn_poller_set_in(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_reset_in(ptr noundef %0, ptr noundef %1) #0 !dbg !280 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !281, metadata !DIExpression()), !dbg !282
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !283, metadata !DIExpression()), !dbg !284
  %5 = load ptr, ptr %3, align 8, !dbg !285
  %6 = getelementptr inbounds %struct.nn_worker, ptr %5, i32 0, i32 4, !dbg !286
  %7 = load ptr, ptr %4, align 8, !dbg !287
  %8 = getelementptr inbounds %struct.nn_worker_fd, ptr %7, i32 0, i32 1, !dbg !288
  call void @nn_poller_reset_in(ptr noundef %6, ptr noundef %8), !dbg !289
  ret void, !dbg !290
}

declare void @nn_poller_reset_in(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_set_out(ptr noundef %0, ptr noundef %1) #0 !dbg !291 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !292, metadata !DIExpression()), !dbg !293
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !294, metadata !DIExpression()), !dbg !295
  %5 = load ptr, ptr %3, align 8, !dbg !296
  %6 = getelementptr inbounds %struct.nn_worker, ptr %5, i32 0, i32 4, !dbg !297
  %7 = load ptr, ptr %4, align 8, !dbg !298
  %8 = getelementptr inbounds %struct.nn_worker_fd, ptr %7, i32 0, i32 1, !dbg !299
  call void @nn_poller_set_out(ptr noundef %6, ptr noundef %8), !dbg !300
  ret void, !dbg !301
}

declare void @nn_poller_set_out(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_reset_out(ptr noundef %0, ptr noundef %1) #0 !dbg !302 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !303, metadata !DIExpression()), !dbg !304
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !305, metadata !DIExpression()), !dbg !306
  %5 = load ptr, ptr %3, align 8, !dbg !307
  %6 = getelementptr inbounds %struct.nn_worker, ptr %5, i32 0, i32 4, !dbg !308
  %7 = load ptr, ptr %4, align 8, !dbg !309
  %8 = getelementptr inbounds %struct.nn_worker_fd, ptr %7, i32 0, i32 1, !dbg !310
  call void @nn_poller_reset_out(ptr noundef %6, ptr noundef %8), !dbg !311
  ret void, !dbg !312
}

declare void @nn_poller_reset_out(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_add_timer(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !313 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !316, metadata !DIExpression()), !dbg !317
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !318, metadata !DIExpression()), !dbg !319
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !320, metadata !DIExpression()), !dbg !321
  %7 = load ptr, ptr %4, align 8, !dbg !322
  %8 = getelementptr inbounds %struct.nn_worker, ptr %7, i32 0, i32 6, !dbg !323
  %9 = load i32, ptr %5, align 4, !dbg !324
  %10 = load ptr, ptr %6, align 8, !dbg !325
  %11 = getelementptr inbounds %struct.nn_worker_timer, ptr %10, i32 0, i32 1, !dbg !326
  %12 = call i32 @nn_timerset_add(ptr noundef %8, i32 noundef %9, ptr noundef %11), !dbg !327
  ret void, !dbg !328
}

declare i32 @nn_timerset_add(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_rm_timer(ptr noundef %0, ptr noundef %1) #0 !dbg !329 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !332, metadata !DIExpression()), !dbg !333
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !334, metadata !DIExpression()), !dbg !335
  %5 = load ptr, ptr %3, align 8, !dbg !336
  %6 = getelementptr inbounds %struct.nn_worker, ptr %5, i32 0, i32 6, !dbg !337
  %7 = load ptr, ptr %4, align 8, !dbg !338
  %8 = getelementptr inbounds %struct.nn_worker_timer, ptr %7, i32 0, i32 1, !dbg !339
  %9 = call i32 @nn_timerset_rm(ptr noundef %6, ptr noundef %8), !dbg !340
  ret void, !dbg !341
}

declare i32 @nn_timerset_rm(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_task_init(ptr noundef %0, ptr noundef %1) #0 !dbg !342 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !345, metadata !DIExpression()), !dbg !346
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !347, metadata !DIExpression()), !dbg !348
  %5 = load ptr, ptr %4, align 8, !dbg !349
  %6 = load ptr, ptr %3, align 8, !dbg !350
  %7 = getelementptr inbounds %struct.nn_worker_task, ptr %6, i32 0, i32 0, !dbg !351
  store ptr %5, ptr %7, align 8, !dbg !352
  %8 = load ptr, ptr %3, align 8, !dbg !353
  %9 = getelementptr inbounds %struct.nn_worker_task, ptr %8, i32 0, i32 1, !dbg !354
  call void @nn_queue_item_init(ptr noundef %9), !dbg !355
  ret void, !dbg !356
}

declare void @nn_queue_item_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_task_term(ptr noundef %0) #0 !dbg !357 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !360, metadata !DIExpression()), !dbg !361
  %3 = load ptr, ptr %2, align 8, !dbg !362
  %4 = getelementptr inbounds %struct.nn_worker_task, ptr %3, i32 0, i32 1, !dbg !363
  call void @nn_queue_item_term(ptr noundef %4), !dbg !364
  ret void, !dbg !365
}

declare void @nn_queue_item_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_worker_init(ptr noundef %0) #0 !dbg !366 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !369, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata ptr %4, metadata !371, metadata !DIExpression()), !dbg !372
  %5 = load ptr, ptr %3, align 8, !dbg !373
  %6 = getelementptr inbounds %struct.nn_worker, ptr %5, i32 0, i32 3, !dbg !374
  %7 = call i32 @nn_efd_init(ptr noundef %6), !dbg !375
  store i32 %7, ptr %4, align 4, !dbg !376
  %8 = load i32, ptr %4, align 4, !dbg !377
  %9 = icmp slt i32 %8, 0, !dbg !379
  br i1 %9, label %10, label %12, !dbg !380

10:                                               ; preds = %1
  %11 = load i32, ptr %4, align 4, !dbg !381
  store i32 %11, ptr %2, align 4, !dbg !382
  br label %38, !dbg !382

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8, !dbg !383
  %14 = getelementptr inbounds %struct.nn_worker, ptr %13, i32 0, i32 0, !dbg !384
  call void @nn_mutex_init(ptr noundef %14), !dbg !385
  %15 = load ptr, ptr %3, align 8, !dbg !386
  %16 = getelementptr inbounds %struct.nn_worker, ptr %15, i32 0, i32 1, !dbg !387
  call void @nn_queue_init(ptr noundef %16), !dbg !388
  %17 = load ptr, ptr %3, align 8, !dbg !389
  %18 = getelementptr inbounds %struct.nn_worker, ptr %17, i32 0, i32 2, !dbg !390
  call void @nn_queue_item_init(ptr noundef %18), !dbg !391
  %19 = load ptr, ptr %3, align 8, !dbg !392
  %20 = getelementptr inbounds %struct.nn_worker, ptr %19, i32 0, i32 4, !dbg !393
  %21 = call i32 @nn_poller_init(ptr noundef %20), !dbg !394
  %22 = load ptr, ptr %3, align 8, !dbg !395
  %23 = getelementptr inbounds %struct.nn_worker, ptr %22, i32 0, i32 4, !dbg !396
  %24 = load ptr, ptr %3, align 8, !dbg !397
  %25 = getelementptr inbounds %struct.nn_worker, ptr %24, i32 0, i32 3, !dbg !398
  %26 = call i32 @nn_efd_getfd(ptr noundef %25), !dbg !399
  %27 = load ptr, ptr %3, align 8, !dbg !400
  %28 = getelementptr inbounds %struct.nn_worker, ptr %27, i32 0, i32 5, !dbg !401
  call void @nn_poller_add(ptr noundef %23, i32 noundef %26, ptr noundef %28), !dbg !402
  %29 = load ptr, ptr %3, align 8, !dbg !403
  %30 = getelementptr inbounds %struct.nn_worker, ptr %29, i32 0, i32 4, !dbg !404
  %31 = load ptr, ptr %3, align 8, !dbg !405
  %32 = getelementptr inbounds %struct.nn_worker, ptr %31, i32 0, i32 5, !dbg !406
  call void @nn_poller_set_in(ptr noundef %30, ptr noundef %32), !dbg !407
  %33 = load ptr, ptr %3, align 8, !dbg !408
  %34 = getelementptr inbounds %struct.nn_worker, ptr %33, i32 0, i32 6, !dbg !409
  call void @nn_timerset_init(ptr noundef %34), !dbg !410
  %35 = load ptr, ptr %3, align 8, !dbg !411
  %36 = getelementptr inbounds %struct.nn_worker, ptr %35, i32 0, i32 7, !dbg !412
  %37 = load ptr, ptr %3, align 8, !dbg !413
  call void @nn_thread_init(ptr noundef %36, ptr noundef @nn_worker_routine, ptr noundef %37), !dbg !414
  store i32 0, ptr %2, align 4, !dbg !415
  br label %38, !dbg !415

38:                                               ; preds = %12, %10
  %39 = load i32, ptr %2, align 4, !dbg !416
  ret i32 %39, !dbg !416
}

declare i32 @nn_efd_init(ptr noundef) #2

declare void @nn_mutex_init(ptr noundef) #2

declare void @nn_queue_init(ptr noundef) #2

declare i32 @nn_poller_init(ptr noundef) #2

declare i32 @nn_efd_getfd(ptr noundef) #2

declare void @nn_timerset_init(ptr noundef) #2

declare void @nn_thread_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_worker_routine(ptr noundef %0) #0 !dbg !417 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.nn_queue, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !418, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.declare(metadata ptr %3, metadata !420, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.declare(metadata ptr %4, metadata !422, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.declare(metadata ptr %5, metadata !424, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata ptr %6, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata ptr %7, metadata !428, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.declare(metadata ptr %8, metadata !431, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.declare(metadata ptr %9, metadata !433, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.declare(metadata ptr %10, metadata !435, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.declare(metadata ptr %11, metadata !437, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata ptr %12, metadata !439, metadata !DIExpression()), !dbg !440
  %13 = load ptr, ptr %2, align 8, !dbg !441
  store ptr %13, ptr %4, align 8, !dbg !442
  br label %14, !dbg !443

14:                                               ; preds = %1, %205
  %15 = load ptr, ptr %4, align 8, !dbg !444
  %16 = getelementptr inbounds %struct.nn_worker, ptr %15, i32 0, i32 4, !dbg !446
  %17 = load ptr, ptr %4, align 8, !dbg !447
  %18 = getelementptr inbounds %struct.nn_worker, ptr %17, i32 0, i32 6, !dbg !448
  %19 = call i32 @nn_timerset_timeout(ptr noundef %18), !dbg !449
  %20 = call i32 @nn_poller_wait(ptr noundef %16, i32 noundef %19), !dbg !450
  store i32 %20, ptr %3, align 4, !dbg !451
  br label %21, !dbg !452

21:                                               ; preds = %14
  %22 = load i32, ptr %3, align 4, !dbg !453
  %23 = icmp eq i32 %22, 0, !dbg !453
  %24 = xor i1 %23, true, !dbg !453
  %25 = zext i1 %24 to i32, !dbg !453
  %26 = sext i32 %25 to i64, !dbg !453
  %27 = icmp ne i64 %26, 0, !dbg !453
  br i1 %27, label %28, label %36, !dbg !456

28:                                               ; preds = %21
  %29 = load ptr, ptr @stderr, align 8, !dbg !457
  %30 = load i32, ptr %3, align 4, !dbg !457
  %31 = sub nsw i32 0, %30, !dbg !457
  %32 = call ptr @nn_err_strerror(i32 noundef %31), !dbg !457
  %33 = load i32, ptr %3, align 4, !dbg !457
  %34 = sub nsw i32 0, %33, !dbg !457
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str, ptr noundef %32, i32 noundef %34, ptr noundef @.str.1, i32 noundef 164), !dbg !457
  call void @nn_err_abort() #5, !dbg !457
  unreachable, !dbg !457

36:                                               ; preds = %21
  br label %37, !dbg !456

37:                                               ; preds = %36
  br label %38, !dbg !459

38:                                               ; preds = %37, %69
  %39 = load ptr, ptr %4, align 8, !dbg !460
  %40 = getelementptr inbounds %struct.nn_worker, ptr %39, i32 0, i32 6, !dbg !462
  %41 = call i32 @nn_timerset_event(ptr noundef %40, ptr noundef %7), !dbg !463
  store i32 %41, ptr %3, align 4, !dbg !464
  %42 = load i32, ptr %3, align 4, !dbg !465
  %43 = icmp eq i32 %42, -11, !dbg !467
  br i1 %43, label %44, label %45, !dbg !468

44:                                               ; preds = %38
  br label %90, !dbg !469

45:                                               ; preds = %38
  br label %46, !dbg !470

46:                                               ; preds = %45
  %47 = load i32, ptr %3, align 4, !dbg !471
  %48 = icmp eq i32 %47, 0, !dbg !471
  %49 = xor i1 %48, true, !dbg !471
  %50 = zext i1 %49 to i32, !dbg !471
  %51 = sext i32 %50 to i64, !dbg !471
  %52 = icmp ne i64 %51, 0, !dbg !471
  br i1 %52, label %53, label %61, !dbg !474

53:                                               ; preds = %46
  %54 = load ptr, ptr @stderr, align 8, !dbg !475
  %55 = load i32, ptr %3, align 4, !dbg !475
  %56 = sub nsw i32 0, %55, !dbg !475
  %57 = call ptr @nn_err_strerror(i32 noundef %56), !dbg !475
  %58 = load i32, ptr %3, align 4, !dbg !475
  %59 = sub nsw i32 0, %58, !dbg !475
  %60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef @.str, ptr noundef %57, i32 noundef %59, ptr noundef @.str.1, i32 noundef 171), !dbg !475
  call void @nn_err_abort() #5, !dbg !475
  unreachable, !dbg !475

61:                                               ; preds = %46
  br label %62, !dbg !474

62:                                               ; preds = %61
  %63 = load ptr, ptr %7, align 8, !dbg !477
  %64 = icmp ne ptr %63, null, !dbg !477
  br i1 %64, label %65, label %68, !dbg !477

65:                                               ; preds = %62
  %66 = load ptr, ptr %7, align 8, !dbg !477
  %67 = getelementptr inbounds i8, ptr %66, i64 -8, !dbg !477
  br label %69, !dbg !477

68:                                               ; preds = %62
  br label %69, !dbg !477

69:                                               ; preds = %68, %65
  %70 = phi ptr [ %67, %65 ], [ null, %68 ], !dbg !477
  store ptr %70, ptr %12, align 8, !dbg !478
  %71 = load ptr, ptr %12, align 8, !dbg !479
  %72 = getelementptr inbounds %struct.nn_worker_timer, ptr %71, i32 0, i32 0, !dbg !480
  %73 = load ptr, ptr %72, align 8, !dbg !480
  %74 = getelementptr inbounds %struct.nn_fsm, ptr %73, i32 0, i32 5, !dbg !481
  %75 = load ptr, ptr %74, align 8, !dbg !481
  call void @nn_ctx_enter(ptr noundef %75), !dbg !482
  %76 = load ptr, ptr %12, align 8, !dbg !483
  %77 = getelementptr inbounds %struct.nn_worker_timer, ptr %76, i32 0, i32 0, !dbg !484
  %78 = load ptr, ptr %77, align 8, !dbg !484
  %79 = getelementptr inbounds %struct.nn_fsm, ptr %78, i32 0, i32 0, !dbg !485
  %80 = load ptr, ptr %79, align 8, !dbg !485
  %81 = load ptr, ptr %12, align 8, !dbg !486
  %82 = getelementptr inbounds %struct.nn_worker_timer, ptr %81, i32 0, i32 0, !dbg !487
  %83 = load ptr, ptr %82, align 8, !dbg !487
  %84 = load ptr, ptr %12, align 8, !dbg !488
  call void %80(ptr noundef %83, i32 noundef -1, i32 noundef 1, ptr noundef %84), !dbg !483
  %85 = load ptr, ptr %12, align 8, !dbg !489
  %86 = getelementptr inbounds %struct.nn_worker_timer, ptr %85, i32 0, i32 0, !dbg !490
  %87 = load ptr, ptr %86, align 8, !dbg !490
  %88 = getelementptr inbounds %struct.nn_fsm, ptr %87, i32 0, i32 5, !dbg !491
  %89 = load ptr, ptr %88, align 8, !dbg !491
  call void @nn_ctx_leave(ptr noundef %89), !dbg !492
  br label %38, !dbg !459, !llvm.loop !493

90:                                               ; preds = %44
  br label %91, !dbg !495

91:                                               ; preds = %90, %175, %183
  %92 = load ptr, ptr %4, align 8, !dbg !496
  %93 = getelementptr inbounds %struct.nn_worker, ptr %92, i32 0, i32 4, !dbg !498
  %94 = call i32 @nn_poller_event(ptr noundef %93, ptr noundef %5, ptr noundef %6), !dbg !499
  store i32 %94, ptr %3, align 4, !dbg !500
  %95 = load i32, ptr %3, align 4, !dbg !501
  %96 = icmp eq i32 %95, -11, !dbg !501
  %97 = zext i1 %96 to i32, !dbg !501
  %98 = sext i32 %97 to i64, !dbg !501
  %99 = icmp ne i64 %98, 0, !dbg !501
  br i1 %99, label %100, label %101, !dbg !503

100:                                              ; preds = %91
  br label %205, !dbg !504

101:                                              ; preds = %91
  %102 = load ptr, ptr %6, align 8, !dbg !505
  %103 = load ptr, ptr %4, align 8, !dbg !507
  %104 = getelementptr inbounds %struct.nn_worker, ptr %103, i32 0, i32 5, !dbg !508
  %105 = icmp eq ptr %102, %104, !dbg !509
  br i1 %105, label %106, label %176, !dbg !510

106:                                              ; preds = %101
  br label %107, !dbg !511

107:                                              ; preds = %106
  %108 = load i32, ptr %5, align 4, !dbg !513
  %109 = icmp eq i32 %108, 1, !dbg !513
  %110 = xor i1 %109, true, !dbg !513
  %111 = zext i1 %110 to i32, !dbg !513
  %112 = sext i32 %111 to i64, !dbg !513
  %113 = icmp ne i64 %112, 0, !dbg !513
  br i1 %113, label %114, label %117, !dbg !516

114:                                              ; preds = %107
  %115 = load ptr, ptr @stderr, align 8, !dbg !517
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 188), !dbg !517
  call void @nn_err_abort() #5, !dbg !517
  unreachable, !dbg !517

117:                                              ; preds = %107
  br label %118, !dbg !516

118:                                              ; preds = %117
  %119 = load ptr, ptr %4, align 8, !dbg !519
  %120 = getelementptr inbounds %struct.nn_worker, ptr %119, i32 0, i32 0, !dbg !520
  call void @nn_mutex_lock(ptr noundef %120), !dbg !521
  %121 = load ptr, ptr %4, align 8, !dbg !522
  %122 = getelementptr inbounds %struct.nn_worker, ptr %121, i32 0, i32 3, !dbg !523
  call void @nn_efd_unsignal(ptr noundef %122), !dbg !524
  %123 = load ptr, ptr %4, align 8, !dbg !525
  %124 = getelementptr inbounds %struct.nn_worker, ptr %123, i32 0, i32 1, !dbg !526
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %124, i64 16, i1 false), !dbg !527
  %125 = load ptr, ptr %4, align 8, !dbg !528
  %126 = getelementptr inbounds %struct.nn_worker, ptr %125, i32 0, i32 1, !dbg !529
  call void @nn_queue_init(ptr noundef %126), !dbg !530
  %127 = load ptr, ptr %4, align 8, !dbg !531
  %128 = getelementptr inbounds %struct.nn_worker, ptr %127, i32 0, i32 0, !dbg !532
  call void @nn_mutex_unlock(ptr noundef %128), !dbg !533
  br label %129, !dbg !534

129:                                              ; preds = %118, %154
  %130 = call ptr @nn_queue_pop(ptr noundef %8), !dbg !535
  store ptr %130, ptr %9, align 8, !dbg !537
  %131 = load ptr, ptr %9, align 8, !dbg !538
  %132 = icmp ne ptr %131, null, !dbg !538
  %133 = xor i1 %132, true, !dbg !538
  %134 = zext i1 %133 to i32, !dbg !538
  %135 = sext i32 %134 to i64, !dbg !538
  %136 = icmp ne i64 %135, 0, !dbg !538
  br i1 %136, label %137, label %138, !dbg !540

137:                                              ; preds = %129
  br label %175, !dbg !541

138:                                              ; preds = %129
  %139 = load ptr, ptr %9, align 8, !dbg !542
  %140 = load ptr, ptr %4, align 8, !dbg !542
  %141 = getelementptr inbounds %struct.nn_worker, ptr %140, i32 0, i32 2, !dbg !542
  %142 = icmp eq ptr %139, %141, !dbg !542
  %143 = zext i1 %142 to i32, !dbg !542
  %144 = sext i32 %143 to i64, !dbg !542
  %145 = icmp ne i64 %144, 0, !dbg !542
  br i1 %145, label %146, label %147, !dbg !544

146:                                              ; preds = %138
  call void @nn_queue_term(ptr noundef %8), !dbg !545
  ret void, !dbg !547

147:                                              ; preds = %138
  %148 = load ptr, ptr %9, align 8, !dbg !548
  %149 = icmp ne ptr %148, null, !dbg !548
  br i1 %149, label %150, label %153, !dbg !548

150:                                              ; preds = %147
  %151 = load ptr, ptr %9, align 8, !dbg !548
  %152 = getelementptr inbounds i8, ptr %151, i64 -8, !dbg !548
  br label %154, !dbg !548

153:                                              ; preds = %147
  br label %154, !dbg !548

154:                                              ; preds = %153, %150
  %155 = phi ptr [ %152, %150 ], [ null, %153 ], !dbg !548
  store ptr %155, ptr %10, align 8, !dbg !549
  %156 = load ptr, ptr %10, align 8, !dbg !550
  %157 = getelementptr inbounds %struct.nn_worker_task, ptr %156, i32 0, i32 0, !dbg !551
  %158 = load ptr, ptr %157, align 8, !dbg !551
  %159 = getelementptr inbounds %struct.nn_fsm, ptr %158, i32 0, i32 5, !dbg !552
  %160 = load ptr, ptr %159, align 8, !dbg !552
  call void @nn_ctx_enter(ptr noundef %160), !dbg !553
  %161 = load ptr, ptr %10, align 8, !dbg !554
  %162 = getelementptr inbounds %struct.nn_worker_task, ptr %161, i32 0, i32 0, !dbg !555
  %163 = load ptr, ptr %162, align 8, !dbg !555
  %164 = getelementptr inbounds %struct.nn_fsm, ptr %163, i32 0, i32 0, !dbg !556
  %165 = load ptr, ptr %164, align 8, !dbg !556
  %166 = load ptr, ptr %10, align 8, !dbg !557
  %167 = getelementptr inbounds %struct.nn_worker_task, ptr %166, i32 0, i32 0, !dbg !558
  %168 = load ptr, ptr %167, align 8, !dbg !558
  %169 = load ptr, ptr %10, align 8, !dbg !559
  call void %165(ptr noundef %168, i32 noundef -1, i32 noundef 1, ptr noundef %169), !dbg !554
  %170 = load ptr, ptr %10, align 8, !dbg !560
  %171 = getelementptr inbounds %struct.nn_worker_task, ptr %170, i32 0, i32 0, !dbg !561
  %172 = load ptr, ptr %171, align 8, !dbg !561
  %173 = getelementptr inbounds %struct.nn_fsm, ptr %172, i32 0, i32 5, !dbg !562
  %174 = load ptr, ptr %173, align 8, !dbg !562
  call void @nn_ctx_leave(ptr noundef %174), !dbg !563
  br label %129, !dbg !534, !llvm.loop !564

175:                                              ; preds = %137
  call void @nn_queue_term(ptr noundef %8), !dbg !566
  br label %91, !dbg !567, !llvm.loop !568

176:                                              ; preds = %101
  %177 = load ptr, ptr %6, align 8, !dbg !570
  %178 = icmp ne ptr %177, null, !dbg !570
  br i1 %178, label %179, label %182, !dbg !570

179:                                              ; preds = %176
  %180 = load ptr, ptr %6, align 8, !dbg !570
  %181 = getelementptr inbounds i8, ptr %180, i64 -8, !dbg !570
  br label %183, !dbg !570

182:                                              ; preds = %176
  br label %183, !dbg !570

183:                                              ; preds = %182, %179
  %184 = phi ptr [ %181, %179 ], [ null, %182 ], !dbg !570
  store ptr %184, ptr %11, align 8, !dbg !571
  %185 = load ptr, ptr %11, align 8, !dbg !572
  %186 = getelementptr inbounds %struct.nn_worker_fd, ptr %185, i32 0, i32 0, !dbg !573
  %187 = load ptr, ptr %186, align 8, !dbg !573
  %188 = getelementptr inbounds %struct.nn_fsm, ptr %187, i32 0, i32 5, !dbg !574
  %189 = load ptr, ptr %188, align 8, !dbg !574
  call void @nn_ctx_enter(ptr noundef %189), !dbg !575
  %190 = load ptr, ptr %11, align 8, !dbg !576
  %191 = getelementptr inbounds %struct.nn_worker_fd, ptr %190, i32 0, i32 0, !dbg !577
  %192 = load ptr, ptr %191, align 8, !dbg !577
  %193 = getelementptr inbounds %struct.nn_fsm, ptr %192, i32 0, i32 0, !dbg !578
  %194 = load ptr, ptr %193, align 8, !dbg !578
  %195 = load ptr, ptr %11, align 8, !dbg !579
  %196 = getelementptr inbounds %struct.nn_worker_fd, ptr %195, i32 0, i32 0, !dbg !580
  %197 = load ptr, ptr %196, align 8, !dbg !580
  %198 = load i32, ptr %5, align 4, !dbg !581
  %199 = load ptr, ptr %11, align 8, !dbg !582
  call void %194(ptr noundef %197, i32 noundef -1, i32 noundef %198, ptr noundef %199), !dbg !576
  %200 = load ptr, ptr %11, align 8, !dbg !583
  %201 = getelementptr inbounds %struct.nn_worker_fd, ptr %200, i32 0, i32 0, !dbg !584
  %202 = load ptr, ptr %201, align 8, !dbg !584
  %203 = getelementptr inbounds %struct.nn_fsm, ptr %202, i32 0, i32 5, !dbg !585
  %204 = load ptr, ptr %203, align 8, !dbg !585
  call void @nn_ctx_leave(ptr noundef %204), !dbg !586
  br label %91, !dbg !495, !llvm.loop !568

205:                                              ; preds = %100
  br label %14, !dbg !443, !llvm.loop !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_term(ptr noundef %0) #0 !dbg !589 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !592, metadata !DIExpression()), !dbg !593
  %3 = load ptr, ptr %2, align 8, !dbg !594
  %4 = getelementptr inbounds %struct.nn_worker, ptr %3, i32 0, i32 0, !dbg !595
  call void @nn_mutex_lock(ptr noundef %4), !dbg !596
  %5 = load ptr, ptr %2, align 8, !dbg !597
  %6 = getelementptr inbounds %struct.nn_worker, ptr %5, i32 0, i32 1, !dbg !598
  %7 = load ptr, ptr %2, align 8, !dbg !599
  %8 = getelementptr inbounds %struct.nn_worker, ptr %7, i32 0, i32 2, !dbg !600
  call void @nn_queue_push(ptr noundef %6, ptr noundef %8), !dbg !601
  %9 = load ptr, ptr %2, align 8, !dbg !602
  %10 = getelementptr inbounds %struct.nn_worker, ptr %9, i32 0, i32 3, !dbg !603
  call void @nn_efd_signal(ptr noundef %10), !dbg !604
  %11 = load ptr, ptr %2, align 8, !dbg !605
  %12 = getelementptr inbounds %struct.nn_worker, ptr %11, i32 0, i32 0, !dbg !606
  call void @nn_mutex_unlock(ptr noundef %12), !dbg !607
  %13 = load ptr, ptr %2, align 8, !dbg !608
  %14 = getelementptr inbounds %struct.nn_worker, ptr %13, i32 0, i32 7, !dbg !609
  call void @nn_thread_term(ptr noundef %14), !dbg !610
  %15 = load ptr, ptr %2, align 8, !dbg !611
  %16 = getelementptr inbounds %struct.nn_worker, ptr %15, i32 0, i32 6, !dbg !612
  call void @nn_timerset_term(ptr noundef %16), !dbg !613
  %17 = load ptr, ptr %2, align 8, !dbg !614
  %18 = getelementptr inbounds %struct.nn_worker, ptr %17, i32 0, i32 4, !dbg !615
  call void @nn_poller_term(ptr noundef %18), !dbg !616
  %19 = load ptr, ptr %2, align 8, !dbg !617
  %20 = getelementptr inbounds %struct.nn_worker, ptr %19, i32 0, i32 3, !dbg !618
  call void @nn_efd_term(ptr noundef %20), !dbg !619
  %21 = load ptr, ptr %2, align 8, !dbg !620
  %22 = getelementptr inbounds %struct.nn_worker, ptr %21, i32 0, i32 2, !dbg !621
  call void @nn_queue_item_term(ptr noundef %22), !dbg !622
  %23 = load ptr, ptr %2, align 8, !dbg !623
  %24 = getelementptr inbounds %struct.nn_worker, ptr %23, i32 0, i32 1, !dbg !624
  call void @nn_queue_term(ptr noundef %24), !dbg !625
  %25 = load ptr, ptr %2, align 8, !dbg !626
  %26 = getelementptr inbounds %struct.nn_worker, ptr %25, i32 0, i32 0, !dbg !627
  call void @nn_mutex_term(ptr noundef %26), !dbg !628
  ret void, !dbg !629
}

declare void @nn_mutex_lock(ptr noundef) #2

declare void @nn_queue_push(ptr noundef, ptr noundef) #2

declare void @nn_efd_signal(ptr noundef) #2

declare void @nn_mutex_unlock(ptr noundef) #2

declare void @nn_thread_term(ptr noundef) #2

declare void @nn_timerset_term(ptr noundef) #2

declare void @nn_poller_term(ptr noundef) #2

declare void @nn_efd_term(ptr noundef) #2

declare void @nn_queue_term(ptr noundef) #2

declare void @nn_mutex_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_execute(ptr noundef %0, ptr noundef %1) #0 !dbg !630 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !633, metadata !DIExpression()), !dbg !634
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !635, metadata !DIExpression()), !dbg !636
  %5 = load ptr, ptr %3, align 8, !dbg !637
  %6 = getelementptr inbounds %struct.nn_worker, ptr %5, i32 0, i32 0, !dbg !638
  call void @nn_mutex_lock(ptr noundef %6), !dbg !639
  %7 = load ptr, ptr %3, align 8, !dbg !640
  %8 = getelementptr inbounds %struct.nn_worker, ptr %7, i32 0, i32 1, !dbg !641
  %9 = load ptr, ptr %4, align 8, !dbg !642
  %10 = getelementptr inbounds %struct.nn_worker_task, ptr %9, i32 0, i32 1, !dbg !643
  call void @nn_queue_push(ptr noundef %8, ptr noundef %10), !dbg !644
  %11 = load ptr, ptr %3, align 8, !dbg !645
  %12 = getelementptr inbounds %struct.nn_worker, ptr %11, i32 0, i32 3, !dbg !646
  call void @nn_efd_signal(ptr noundef %12), !dbg !647
  %13 = load ptr, ptr %3, align 8, !dbg !648
  %14 = getelementptr inbounds %struct.nn_worker, ptr %13, i32 0, i32 0, !dbg !649
  call void @nn_mutex_unlock(ptr noundef %14), !dbg !650
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_timer_init(ptr noundef %0, ptr noundef %1) #0 !dbg !652 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !656, metadata !DIExpression()), !dbg !657
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !658, metadata !DIExpression()), !dbg !659
  %5 = load ptr, ptr %4, align 8, !dbg !660
  %6 = load ptr, ptr %3, align 8, !dbg !661
  %7 = getelementptr inbounds %struct.nn_worker_timer, ptr %6, i32 0, i32 0, !dbg !662
  store ptr %5, ptr %7, align 8, !dbg !663
  %8 = load ptr, ptr %3, align 8, !dbg !664
  %9 = getelementptr inbounds %struct.nn_worker_timer, ptr %8, i32 0, i32 1, !dbg !665
  call void @nn_timerset_hndl_init(ptr noundef %9), !dbg !666
  ret void, !dbg !667
}

declare void @nn_timerset_hndl_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_timer_term(ptr noundef %0) #0 !dbg !668 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !671, metadata !DIExpression()), !dbg !672
  %3 = load ptr, ptr %2, align 8, !dbg !673
  %4 = getelementptr inbounds %struct.nn_worker_timer, ptr %3, i32 0, i32 1, !dbg !674
  call void @nn_timerset_hndl_term(ptr noundef %4), !dbg !675
  ret void, !dbg !676
}

declare void @nn_timerset_hndl_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_worker_timer_isactive(ptr noundef %0) #0 !dbg !677 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !680, metadata !DIExpression()), !dbg !681
  %3 = load ptr, ptr %2, align 8, !dbg !682
  %4 = getelementptr inbounds %struct.nn_worker_timer, ptr %3, i32 0, i32 1, !dbg !683
  %5 = call i32 @nn_timerset_hndl_isactive(ptr noundef %4), !dbg !684
  ret i32 %5, !dbg !685
}

declare i32 @nn_timerset_hndl_isactive(ptr noundef) #2

declare i32 @nn_poller_wait(ptr noundef, i32 noundef) #2

declare i32 @nn_timerset_timeout(ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare ptr @nn_err_strerror(i32 noundef) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare i32 @nn_timerset_event(ptr noundef, ptr noundef) #2

declare void @nn_ctx_enter(ptr noundef) #2

declare void @nn_ctx_leave(ptr noundef) #2

declare i32 @nn_poller_event(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_efd_unsignal(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @nn_queue_pop(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!22}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/aio/worker_posix.inc", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3272be1afd51c361b5aa7a9ceff9f1cb")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 27)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 30)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 23)
!22 = distinct !DICompileUnit(language: DW_LANG_C11, file: !23, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !24, globals: !212, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "src/aio/worker.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b3d7b7ad6824c5e0d3bb4bc5ac4c8c06")
!24 = !{!25, !43, !151, !201, !202, !207}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !27, line: 53, size: 1408, elements: !28)
!27 = !DIFile(filename: "./src/aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!28 = !{!29, !66, !76, !77, !83, !110, !111, !137}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !26, file: !27, line: 54, baseType: !30, size: 320)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !31, line: 32, size: 320, elements: !32)
!31 = !DIFile(filename: "./src/aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !30, file: !31, line: 36, baseType: !34, size: 320)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !35, line: 72, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!36 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !35, line: 67, size: 320, elements: !37)
!37 = !{!38, !60, !64}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !36, file: !35, line: 69, baseType: !39, size: 320)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !40, line: 22, size: 320, elements: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!41 = !{!42, !44, !46, !47, !48, !49, !51, !52}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !39, file: !40, line: 24, baseType: !43, size: 32)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !39, file: !40, line: 25, baseType: !45, size: 32, offset: 32)
!45 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !39, file: !40, line: 26, baseType: !43, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !39, file: !40, line: 28, baseType: !45, size: 32, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !39, file: !40, line: 32, baseType: !43, size: 32, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !39, file: !40, line: 34, baseType: !50, size: 16, offset: 160)
!50 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !39, file: !40, line: 35, baseType: !50, size: 16, offset: 176)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !39, file: !40, line: 36, baseType: !53, size: 128, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !54, line: 55, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !54, line: 51, size: 128, elements: !56)
!56 = !{!57, !59}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !55, file: !54, line: 53, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !55, file: !54, line: 54, baseType: !58, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !36, file: !35, line: 70, baseType: !61, size: 320)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 40)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !36, file: !35, line: 71, baseType: !65, size: 64)
!65 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !26, file: !27, line: 55, baseType: !67, size: 128, offset: 320)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !68, line: 37, size: 128, elements: !69)
!68 = !DIFile(filename: "./src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!69 = !{!70, !75}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !67, file: !68, line: 38, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !68, line: 33, size: 64, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !72, file: !68, line: 34, baseType: !71, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !67, file: !68, line: 39, baseType: !71, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !26, file: !27, line: 56, baseType: !72, size: 64, offset: 448)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !26, file: !27, line: 57, baseType: !78, size: 64, offset: 512)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !79, line: 25, size: 64, elements: !80)
!79 = !DIFile(filename: "./src/aio/../utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !78, file: !79, line: 26, baseType: !43, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !78, file: !79, line: 27, baseType: !43, size: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !26, file: !27, line: 58, baseType: !84, size: 320, offset: 576)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !85, line: 31, size: 320, elements: !86)
!85 = !DIFile(filename: "./src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!86 = !{!87, !88, !89, !90, !98, !109}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !84, file: !85, line: 34, baseType: !43, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !84, file: !85, line: 37, baseType: !43, size: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !84, file: !85, line: 40, baseType: !43, size: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !84, file: !85, line: 43, baseType: !91, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !93, line: 36, size: 64, elements: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!94 = !{!95, !96, !97}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !92, file: !93, line: 38, baseType: !43, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !92, file: !93, line: 39, baseType: !50, size: 16, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !92, file: !93, line: 40, baseType: !50, size: 16, offset: 48)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !84, file: !85, line: 52, baseType: !99, size: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !85, line: 48, size: 128, elements: !101)
!101 = !{!102, !107, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !100, file: !85, line: 49, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !85, line: 27, size: 32, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !104, file: !85, line: 28, baseType: !43, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !100, file: !85, line: 50, baseType: !43, size: 32, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !85, line: 51, baseType: !43, size: 32, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !84, file: !85, line: 55, baseType: !43, size: 32, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !26, file: !27, line: 59, baseType: !104, size: 32, offset: 896)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !26, file: !27, line: 60, baseType: !112, size: 256, offset: 960)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !113, line: 37, size: 256, elements: !114)
!113 = !DIFile(filename: "./src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!114 = !{!115, !126}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !112, file: !113, line: 38, baseType: !116, size: 128)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !117, line: 31, size: 128, elements: !118)
!117 = !DIFile(filename: "./src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!118 = !{!119, !125}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !116, file: !117, line: 33, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !121, line: 27, baseType: !122)
!121 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !123, line: 45, baseType: !124)
!123 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!124 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !116, file: !117, line: 34, baseType: !120, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !112, file: !113, line: 39, baseType: !127, size: 128, offset: 128)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !128, line: 31, size: 128, elements: !129)
!128 = !DIFile(filename: "./src/aio/../utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!129 = !{!130, !136}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !127, file: !128, line: 32, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !128, line: 26, size: 128, elements: !133)
!133 = !{!134, !135}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !128, line: 27, baseType: !131, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !128, line: 28, baseType: !131, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !127, file: !128, line: 33, baseType: !131, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !26, file: !27, line: 61, baseType: !138, size: 192, offset: 1216)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !139, line: 25, size: 192, elements: !140)
!139 = !DIFile(filename: "./src/aio/../utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!140 = !{!141, !148, !149}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !138, file: !139, line: 27, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !144, line: 28, baseType: !145)
!144 = !DIFile(filename: "./src/aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!145 = !DISubroutineType(types: !146)
!146 = !{null, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !138, file: !139, line: 28, baseType: !147, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !138, file: !139, line: 29, baseType: !150, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !35, line: 27, baseType: !124)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_timer", file: !153, line: 37, size: 256, elements: !154)
!153 = !DIFile(filename: "./src/aio/worker.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "2b691693adce9b61547df7808f294867")
!154 = !{!155, !196}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !152, file: !153, line: 38, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !158, line: 66, size: 640, elements: !159)
!158 = !DIFile(filename: "./src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!159 = !{!160, !165, !166, !167, !168, !169, !188}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !157, file: !158, line: 67, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !158, line: 58, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !156, !43, !43, !147}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !157, file: !158, line: 68, baseType: !43, size: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !157, file: !158, line: 69, baseType: !43, size: 32, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !157, file: !158, line: 70, baseType: !147, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !157, file: !158, line: 71, baseType: !156, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !157, file: !158, line: 72, baseType: !170, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !172, line: 37, size: 704, elements: !173)
!172 = !DIFile(filename: "./src/aio/ctx.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "02553d3500c8d7bb20cd89fa252fe2c2")
!173 = !{!174, !175, !181, !182, !183}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !171, file: !172, line: 38, baseType: !30, size: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !171, file: !172, line: 39, baseType: !176, size: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pool", file: !178, line: 30, size: 1408, elements: !179)
!178 = !DIFile(filename: "./src/aio/pool.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a87eb417ecad65fee67523e01b3df661")
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !177, file: !178, line: 31, baseType: !26, size: 1408)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !171, file: !172, line: 40, baseType: !67, size: 128, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "eventsto", scope: !171, file: !172, line: 41, baseType: !67, size: 128, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "onleave", scope: !171, file: !172, line: 42, baseType: !184, size: 64, offset: 640)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_ctx_onleave", file: !172, line: 35, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !170}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !157, file: !158, line: 73, baseType: !189, size: 320, offset: 320)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !158, line: 34, size: 320, elements: !190)
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !189, file: !158, line: 35, baseType: !156, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !189, file: !158, line: 36, baseType: !43, size: 32, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !189, file: !158, line: 37, baseType: !147, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !189, file: !158, line: 38, baseType: !43, size: 32, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !189, file: !158, line: 39, baseType: !72, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !152, file: !153, line: 39, baseType: !197, size: 192, offset: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset_hndl", file: !113, line: 32, size: 192, elements: !198)
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !197, file: !113, line: 33, baseType: !132, size: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !197, file: !113, line: 34, baseType: !120, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_task", file: !27, line: 48, size: 128, elements: !204)
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !203, file: !27, line: 49, baseType: !156, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !203, file: !27, line: 50, baseType: !72, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker_fd", file: !27, line: 40, size: 128, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !208, file: !27, line: 41, baseType: !156, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !208, file: !27, line: 42, baseType: !104, size: 32, offset: 64)
!212 = !{!0, !7, !12, !17}
!213 = !{i32 7, !"Dwarf Version", i32 5}
!214 = !{i32 2, !"Debug Info Version", i32 3}
!215 = !{i32 1, !"wchar_size", i32 4}
!216 = !{i32 8, !"PIC Level", i32 2}
!217 = !{i32 7, !"PIE Level", i32 2}
!218 = !{i32 7, !"uwtable", i32 2}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 16.0.0"}
!221 = distinct !DISubprogram(name: "nn_worker_fd_init", scope: !2, file: !2, line: 32, type: !222, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !207, !156}
!224 = !{}
!225 = !DILocalVariable(name: "self", arg: 1, scope: !221, file: !2, line: 32, type: !207)
!226 = !DILocation(line: 32, column: 46, scope: !221)
!227 = !DILocalVariable(name: "owner", arg: 2, scope: !221, file: !2, line: 32, type: !156)
!228 = !DILocation(line: 32, column: 67, scope: !221)
!229 = !DILocation(line: 34, column: 19, scope: !221)
!230 = !DILocation(line: 34, column: 5, scope: !221)
!231 = !DILocation(line: 34, column: 11, scope: !221)
!232 = !DILocation(line: 34, column: 17, scope: !221)
!233 = !DILocation(line: 35, column: 1, scope: !221)
!234 = distinct !DISubprogram(name: "nn_worker_fd_term", scope: !2, file: !2, line: 37, type: !235, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !207}
!237 = !DILocalVariable(name: "self", arg: 1, scope: !234, file: !2, line: 37, type: !207)
!238 = !DILocation(line: 37, column: 46, scope: !234)
!239 = !DILocation(line: 39, column: 1, scope: !234)
!240 = distinct !DISubprogram(name: "nn_worker_add_fd", scope: !2, file: !2, line: 41, type: !241, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !25, !43, !207}
!243 = !DILocalVariable(name: "self", arg: 1, scope: !240, file: !2, line: 41, type: !25)
!244 = !DILocation(line: 41, column: 42, scope: !240)
!245 = !DILocalVariable(name: "s", arg: 2, scope: !240, file: !2, line: 41, type: !43)
!246 = !DILocation(line: 41, column: 52, scope: !240)
!247 = !DILocalVariable(name: "fd", arg: 3, scope: !240, file: !2, line: 41, type: !207)
!248 = !DILocation(line: 41, column: 76, scope: !240)
!249 = !DILocation(line: 43, column: 42, scope: !240)
!250 = !DILocation(line: 43, column: 49, scope: !240)
!251 = !DILocation(line: 43, column: 57, scope: !240)
!252 = !DILocation(line: 43, column: 61, scope: !240)
!253 = !DILocation(line: 43, column: 65, scope: !240)
!254 = !DILocation(line: 43, column: 5, scope: !240)
!255 = !DILocation(line: 44, column: 1, scope: !240)
!256 = distinct !DISubprogram(name: "nn_worker_rm_fd", scope: !2, file: !2, line: 46, type: !257, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !25, !207}
!259 = !DILocalVariable(name: "self", arg: 1, scope: !256, file: !2, line: 46, type: !25)
!260 = !DILocation(line: 46, column: 41, scope: !256)
!261 = !DILocalVariable(name: "fd", arg: 2, scope: !256, file: !2, line: 46, type: !207)
!262 = !DILocation(line: 46, column: 68, scope: !256)
!263 = !DILocation(line: 48, column: 41, scope: !256)
!264 = !DILocation(line: 48, column: 48, scope: !256)
!265 = !DILocation(line: 48, column: 57, scope: !256)
!266 = !DILocation(line: 48, column: 61, scope: !256)
!267 = !DILocation(line: 48, column: 5, scope: !256)
!268 = !DILocation(line: 49, column: 1, scope: !256)
!269 = distinct !DISubprogram(name: "nn_worker_set_in", scope: !2, file: !2, line: 51, type: !257, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!270 = !DILocalVariable(name: "self", arg: 1, scope: !269, file: !2, line: 51, type: !25)
!271 = !DILocation(line: 51, column: 42, scope: !269)
!272 = !DILocalVariable(name: "fd", arg: 2, scope: !269, file: !2, line: 51, type: !207)
!273 = !DILocation(line: 51, column: 69, scope: !269)
!274 = !DILocation(line: 53, column: 45, scope: !269)
!275 = !DILocation(line: 53, column: 52, scope: !269)
!276 = !DILocation(line: 53, column: 61, scope: !269)
!277 = !DILocation(line: 53, column: 65, scope: !269)
!278 = !DILocation(line: 53, column: 5, scope: !269)
!279 = !DILocation(line: 54, column: 1, scope: !269)
!280 = distinct !DISubprogram(name: "nn_worker_reset_in", scope: !2, file: !2, line: 56, type: !257, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!281 = !DILocalVariable(name: "self", arg: 1, scope: !280, file: !2, line: 56, type: !25)
!282 = !DILocation(line: 56, column: 44, scope: !280)
!283 = !DILocalVariable(name: "fd", arg: 2, scope: !280, file: !2, line: 56, type: !207)
!284 = !DILocation(line: 56, column: 71, scope: !280)
!285 = !DILocation(line: 58, column: 47, scope: !280)
!286 = !DILocation(line: 58, column: 54, scope: !280)
!287 = !DILocation(line: 58, column: 63, scope: !280)
!288 = !DILocation(line: 58, column: 67, scope: !280)
!289 = !DILocation(line: 58, column: 5, scope: !280)
!290 = !DILocation(line: 59, column: 1, scope: !280)
!291 = distinct !DISubprogram(name: "nn_worker_set_out", scope: !2, file: !2, line: 61, type: !257, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!292 = !DILocalVariable(name: "self", arg: 1, scope: !291, file: !2, line: 61, type: !25)
!293 = !DILocation(line: 61, column: 43, scope: !291)
!294 = !DILocalVariable(name: "fd", arg: 2, scope: !291, file: !2, line: 61, type: !207)
!295 = !DILocation(line: 61, column: 70, scope: !291)
!296 = !DILocation(line: 63, column: 46, scope: !291)
!297 = !DILocation(line: 63, column: 53, scope: !291)
!298 = !DILocation(line: 63, column: 62, scope: !291)
!299 = !DILocation(line: 63, column: 66, scope: !291)
!300 = !DILocation(line: 63, column: 5, scope: !291)
!301 = !DILocation(line: 64, column: 1, scope: !291)
!302 = distinct !DISubprogram(name: "nn_worker_reset_out", scope: !2, file: !2, line: 66, type: !257, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!303 = !DILocalVariable(name: "self", arg: 1, scope: !302, file: !2, line: 66, type: !25)
!304 = !DILocation(line: 66, column: 45, scope: !302)
!305 = !DILocalVariable(name: "fd", arg: 2, scope: !302, file: !2, line: 66, type: !207)
!306 = !DILocation(line: 66, column: 72, scope: !302)
!307 = !DILocation(line: 68, column: 48, scope: !302)
!308 = !DILocation(line: 68, column: 55, scope: !302)
!309 = !DILocation(line: 68, column: 64, scope: !302)
!310 = !DILocation(line: 68, column: 68, scope: !302)
!311 = !DILocation(line: 68, column: 5, scope: !302)
!312 = !DILocation(line: 69, column: 1, scope: !302)
!313 = distinct !DISubprogram(name: "nn_worker_add_timer", scope: !2, file: !2, line: 71, type: !314, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !25, !43, !151}
!316 = !DILocalVariable(name: "self", arg: 1, scope: !313, file: !2, line: 71, type: !25)
!317 = !DILocation(line: 71, column: 45, scope: !313)
!318 = !DILocalVariable(name: "timeout", arg: 2, scope: !313, file: !2, line: 71, type: !43)
!319 = !DILocation(line: 71, column: 55, scope: !313)
!320 = !DILocalVariable(name: "timer", arg: 3, scope: !313, file: !2, line: 72, type: !151)
!321 = !DILocation(line: 72, column: 29, scope: !313)
!322 = !DILocation(line: 74, column: 44, scope: !313)
!323 = !DILocation(line: 74, column: 51, scope: !313)
!324 = !DILocation(line: 74, column: 61, scope: !313)
!325 = !DILocation(line: 75, column: 10, scope: !313)
!326 = !DILocation(line: 75, column: 17, scope: !313)
!327 = !DILocation(line: 74, column: 5, scope: !313)
!328 = !DILocation(line: 76, column: 1, scope: !313)
!329 = distinct !DISubprogram(name: "nn_worker_rm_timer", scope: !2, file: !2, line: 78, type: !330, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !25, !151}
!332 = !DILocalVariable(name: "self", arg: 1, scope: !329, file: !2, line: 78, type: !25)
!333 = !DILocation(line: 78, column: 44, scope: !329)
!334 = !DILocalVariable(name: "timer", arg: 2, scope: !329, file: !2, line: 78, type: !151)
!335 = !DILocation(line: 78, column: 74, scope: !329)
!336 = !DILocation(line: 80, column: 43, scope: !329)
!337 = !DILocation(line: 80, column: 50, scope: !329)
!338 = !DILocation(line: 80, column: 61, scope: !329)
!339 = !DILocation(line: 80, column: 68, scope: !329)
!340 = !DILocation(line: 80, column: 5, scope: !329)
!341 = !DILocation(line: 81, column: 1, scope: !329)
!342 = distinct !DISubprogram(name: "nn_worker_task_init", scope: !2, file: !2, line: 83, type: !343, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !202, !156}
!345 = !DILocalVariable(name: "self", arg: 1, scope: !342, file: !2, line: 83, type: !202)
!346 = !DILocation(line: 83, column: 50, scope: !342)
!347 = !DILocalVariable(name: "owner", arg: 2, scope: !342, file: !2, line: 83, type: !156)
!348 = !DILocation(line: 83, column: 71, scope: !342)
!349 = !DILocation(line: 85, column: 19, scope: !342)
!350 = !DILocation(line: 85, column: 5, scope: !342)
!351 = !DILocation(line: 85, column: 11, scope: !342)
!352 = !DILocation(line: 85, column: 17, scope: !342)
!353 = !DILocation(line: 86, column: 26, scope: !342)
!354 = !DILocation(line: 86, column: 32, scope: !342)
!355 = !DILocation(line: 86, column: 5, scope: !342)
!356 = !DILocation(line: 87, column: 1, scope: !342)
!357 = distinct !DISubprogram(name: "nn_worker_task_term", scope: !2, file: !2, line: 89, type: !358, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !202}
!360 = !DILocalVariable(name: "self", arg: 1, scope: !357, file: !2, line: 89, type: !202)
!361 = !DILocation(line: 89, column: 50, scope: !357)
!362 = !DILocation(line: 91, column: 26, scope: !357)
!363 = !DILocation(line: 91, column: 32, scope: !357)
!364 = !DILocation(line: 91, column: 5, scope: !357)
!365 = !DILocation(line: 92, column: 1, scope: !357)
!366 = distinct !DISubprogram(name: "nn_worker_init", scope: !2, file: !2, line: 94, type: !367, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!367 = !DISubroutineType(types: !368)
!368 = !{!43, !25}
!369 = !DILocalVariable(name: "self", arg: 1, scope: !366, file: !2, line: 94, type: !25)
!370 = !DILocation(line: 94, column: 39, scope: !366)
!371 = !DILocalVariable(name: "rc", scope: !366, file: !2, line: 96, type: !43)
!372 = !DILocation(line: 96, column: 9, scope: !366)
!373 = !DILocation(line: 98, column: 24, scope: !366)
!374 = !DILocation(line: 98, column: 30, scope: !366)
!375 = !DILocation(line: 98, column: 10, scope: !366)
!376 = !DILocation(line: 98, column: 8, scope: !366)
!377 = !DILocation(line: 99, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !366, file: !2, line: 99, column: 9)
!379 = !DILocation(line: 99, column: 12, scope: !378)
!380 = !DILocation(line: 99, column: 9, scope: !366)
!381 = !DILocation(line: 100, column: 16, scope: !378)
!382 = !DILocation(line: 100, column: 9, scope: !378)
!383 = !DILocation(line: 102, column: 21, scope: !366)
!384 = !DILocation(line: 102, column: 27, scope: !366)
!385 = !DILocation(line: 102, column: 5, scope: !366)
!386 = !DILocation(line: 103, column: 21, scope: !366)
!387 = !DILocation(line: 103, column: 27, scope: !366)
!388 = !DILocation(line: 103, column: 5, scope: !366)
!389 = !DILocation(line: 104, column: 26, scope: !366)
!390 = !DILocation(line: 104, column: 32, scope: !366)
!391 = !DILocation(line: 104, column: 5, scope: !366)
!392 = !DILocation(line: 105, column: 22, scope: !366)
!393 = !DILocation(line: 105, column: 28, scope: !366)
!394 = !DILocation(line: 105, column: 5, scope: !366)
!395 = !DILocation(line: 106, column: 21, scope: !366)
!396 = !DILocation(line: 106, column: 27, scope: !366)
!397 = !DILocation(line: 106, column: 50, scope: !366)
!398 = !DILocation(line: 106, column: 56, scope: !366)
!399 = !DILocation(line: 106, column: 35, scope: !366)
!400 = !DILocation(line: 106, column: 63, scope: !366)
!401 = !DILocation(line: 106, column: 69, scope: !366)
!402 = !DILocation(line: 106, column: 5, scope: !366)
!403 = !DILocation(line: 107, column: 24, scope: !366)
!404 = !DILocation(line: 107, column: 30, scope: !366)
!405 = !DILocation(line: 107, column: 39, scope: !366)
!406 = !DILocation(line: 107, column: 45, scope: !366)
!407 = !DILocation(line: 107, column: 5, scope: !366)
!408 = !DILocation(line: 108, column: 24, scope: !366)
!409 = !DILocation(line: 108, column: 30, scope: !366)
!410 = !DILocation(line: 108, column: 5, scope: !366)
!411 = !DILocation(line: 109, column: 22, scope: !366)
!412 = !DILocation(line: 109, column: 28, scope: !366)
!413 = !DILocation(line: 109, column: 55, scope: !366)
!414 = !DILocation(line: 109, column: 5, scope: !366)
!415 = !DILocation(line: 111, column: 5, scope: !366)
!416 = !DILocation(line: 112, column: 1, scope: !366)
!417 = distinct !DISubprogram(name: "nn_worker_routine", scope: !2, file: !2, line: 142, type: !145, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !224)
!418 = !DILocalVariable(name: "arg", arg: 1, scope: !417, file: !2, line: 142, type: !147)
!419 = !DILocation(line: 142, column: 38, scope: !417)
!420 = !DILocalVariable(name: "rc", scope: !417, file: !2, line: 144, type: !43)
!421 = !DILocation(line: 144, column: 9, scope: !417)
!422 = !DILocalVariable(name: "self", scope: !417, file: !2, line: 145, type: !25)
!423 = !DILocation(line: 145, column: 23, scope: !417)
!424 = !DILocalVariable(name: "pevent", scope: !417, file: !2, line: 146, type: !43)
!425 = !DILocation(line: 146, column: 9, scope: !417)
!426 = !DILocalVariable(name: "phndl", scope: !417, file: !2, line: 147, type: !103)
!427 = !DILocation(line: 147, column: 28, scope: !417)
!428 = !DILocalVariable(name: "thndl", scope: !417, file: !2, line: 148, type: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!430 = !DILocation(line: 148, column: 30, scope: !417)
!431 = !DILocalVariable(name: "tasks", scope: !417, file: !2, line: 149, type: !67)
!432 = !DILocation(line: 149, column: 21, scope: !417)
!433 = !DILocalVariable(name: "item", scope: !417, file: !2, line: 150, type: !71)
!434 = !DILocation(line: 150, column: 27, scope: !417)
!435 = !DILocalVariable(name: "task", scope: !417, file: !2, line: 151, type: !202)
!436 = !DILocation(line: 151, column: 28, scope: !417)
!437 = !DILocalVariable(name: "fd", scope: !417, file: !2, line: 152, type: !207)
!438 = !DILocation(line: 152, column: 26, scope: !417)
!439 = !DILocalVariable(name: "timer", scope: !417, file: !2, line: 153, type: !151)
!440 = !DILocation(line: 153, column: 29, scope: !417)
!441 = !DILocation(line: 155, column: 32, scope: !417)
!442 = !DILocation(line: 155, column: 10, scope: !417)
!443 = !DILocation(line: 159, column: 5, scope: !417)
!444 = !DILocation(line: 162, column: 31, scope: !445)
!445 = distinct !DILexicalBlock(scope: !417, file: !2, line: 159, column: 15)
!446 = !DILocation(line: 162, column: 37, scope: !445)
!447 = !DILocation(line: 163, column: 35, scope: !445)
!448 = !DILocation(line: 163, column: 41, scope: !445)
!449 = !DILocation(line: 163, column: 13, scope: !445)
!450 = !DILocation(line: 162, column: 14, scope: !445)
!451 = !DILocation(line: 162, column: 12, scope: !445)
!452 = !DILocation(line: 164, column: 9, scope: !445)
!453 = !DILocation(line: 164, column: 9, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !2, line: 164, column: 9)
!455 = distinct !DILexicalBlock(scope: !445, file: !2, line: 164, column: 9)
!456 = !DILocation(line: 164, column: 9, scope: !455)
!457 = !DILocation(line: 164, column: 9, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !2, line: 164, column: 9)
!459 = !DILocation(line: 167, column: 9, scope: !445)
!460 = !DILocation(line: 168, column: 38, scope: !461)
!461 = distinct !DILexicalBlock(scope: !445, file: !2, line: 167, column: 19)
!462 = !DILocation(line: 168, column: 44, scope: !461)
!463 = !DILocation(line: 168, column: 18, scope: !461)
!464 = !DILocation(line: 168, column: 16, scope: !461)
!465 = !DILocation(line: 169, column: 17, scope: !466)
!466 = distinct !DILexicalBlock(scope: !461, file: !2, line: 169, column: 17)
!467 = !DILocation(line: 169, column: 20, scope: !466)
!468 = !DILocation(line: 169, column: 17, scope: !461)
!469 = !DILocation(line: 170, column: 17, scope: !466)
!470 = !DILocation(line: 171, column: 13, scope: !461)
!471 = !DILocation(line: 171, column: 13, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !2, line: 171, column: 13)
!473 = distinct !DILexicalBlock(scope: !461, file: !2, line: 171, column: 13)
!474 = !DILocation(line: 171, column: 13, scope: !473)
!475 = !DILocation(line: 171, column: 13, scope: !476)
!476 = distinct !DILexicalBlock(scope: !472, file: !2, line: 171, column: 13)
!477 = !DILocation(line: 172, column: 21, scope: !461)
!478 = !DILocation(line: 172, column: 19, scope: !461)
!479 = !DILocation(line: 173, column: 27, scope: !461)
!480 = !DILocation(line: 173, column: 34, scope: !461)
!481 = !DILocation(line: 173, column: 41, scope: !461)
!482 = !DILocation(line: 173, column: 13, scope: !461)
!483 = !DILocation(line: 174, column: 13, scope: !461)
!484 = !DILocation(line: 174, column: 20, scope: !461)
!485 = !DILocation(line: 174, column: 27, scope: !461)
!486 = !DILocation(line: 174, column: 31, scope: !461)
!487 = !DILocation(line: 174, column: 38, scope: !461)
!488 = !DILocation(line: 174, column: 74, scope: !461)
!489 = !DILocation(line: 175, column: 27, scope: !461)
!490 = !DILocation(line: 175, column: 34, scope: !461)
!491 = !DILocation(line: 175, column: 41, scope: !461)
!492 = !DILocation(line: 175, column: 13, scope: !461)
!493 = distinct !{!493, !459, !494}
!494 = !DILocation(line: 176, column: 9, scope: !445)
!495 = !DILocation(line: 179, column: 9, scope: !445)
!496 = !DILocation(line: 182, column: 36, scope: !497)
!497 = distinct !DILexicalBlock(scope: !445, file: !2, line: 179, column: 19)
!498 = !DILocation(line: 182, column: 42, scope: !497)
!499 = !DILocation(line: 182, column: 18, scope: !497)
!500 = !DILocation(line: 182, column: 16, scope: !497)
!501 = !DILocation(line: 183, column: 17, scope: !502)
!502 = distinct !DILexicalBlock(scope: !497, file: !2, line: 183, column: 17)
!503 = !DILocation(line: 183, column: 17, scope: !497)
!504 = !DILocation(line: 184, column: 17, scope: !502)
!505 = !DILocation(line: 187, column: 17, scope: !506)
!506 = distinct !DILexicalBlock(scope: !497, file: !2, line: 187, column: 17)
!507 = !DILocation(line: 187, column: 27, scope: !506)
!508 = !DILocation(line: 187, column: 33, scope: !506)
!509 = !DILocation(line: 187, column: 23, scope: !506)
!510 = !DILocation(line: 187, column: 17, scope: !497)
!511 = !DILocation(line: 188, column: 17, scope: !512)
!512 = distinct !DILexicalBlock(scope: !506, file: !2, line: 187, column: 43)
!513 = !DILocation(line: 188, column: 17, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !2, line: 188, column: 17)
!515 = distinct !DILexicalBlock(scope: !512, file: !2, line: 188, column: 17)
!516 = !DILocation(line: 188, column: 17, scope: !515)
!517 = !DILocation(line: 188, column: 17, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !2, line: 188, column: 17)
!519 = !DILocation(line: 194, column: 33, scope: !512)
!520 = !DILocation(line: 194, column: 39, scope: !512)
!521 = !DILocation(line: 194, column: 17, scope: !512)
!522 = !DILocation(line: 195, column: 35, scope: !512)
!523 = !DILocation(line: 195, column: 41, scope: !512)
!524 = !DILocation(line: 195, column: 17, scope: !512)
!525 = !DILocation(line: 196, column: 34, scope: !512)
!526 = !DILocation(line: 196, column: 40, scope: !512)
!527 = !DILocation(line: 196, column: 17, scope: !512)
!528 = !DILocation(line: 197, column: 33, scope: !512)
!529 = !DILocation(line: 197, column: 39, scope: !512)
!530 = !DILocation(line: 197, column: 17, scope: !512)
!531 = !DILocation(line: 198, column: 35, scope: !512)
!532 = !DILocation(line: 198, column: 41, scope: !512)
!533 = !DILocation(line: 198, column: 17, scope: !512)
!534 = !DILocation(line: 200, column: 17, scope: !512)
!535 = !DILocation(line: 203, column: 28, scope: !536)
!536 = distinct !DILexicalBlock(scope: !512, file: !2, line: 200, column: 27)
!537 = !DILocation(line: 203, column: 26, scope: !536)
!538 = !DILocation(line: 204, column: 25, scope: !539)
!539 = distinct !DILexicalBlock(scope: !536, file: !2, line: 204, column: 25)
!540 = !DILocation(line: 204, column: 25, scope: !536)
!541 = !DILocation(line: 205, column: 25, scope: !539)
!542 = !DILocation(line: 208, column: 25, scope: !543)
!543 = distinct !DILexicalBlock(scope: !536, file: !2, line: 208, column: 25)
!544 = !DILocation(line: 208, column: 25, scope: !536)
!545 = !DILocation(line: 209, column: 25, scope: !546)
!546 = distinct !DILexicalBlock(scope: !543, file: !2, line: 208, column: 56)
!547 = !DILocation(line: 210, column: 25, scope: !546)
!548 = !DILocation(line: 215, column: 28, scope: !536)
!549 = !DILocation(line: 215, column: 26, scope: !536)
!550 = !DILocation(line: 216, column: 35, scope: !536)
!551 = !DILocation(line: 216, column: 41, scope: !536)
!552 = !DILocation(line: 216, column: 48, scope: !536)
!553 = !DILocation(line: 216, column: 21, scope: !536)
!554 = !DILocation(line: 217, column: 21, scope: !536)
!555 = !DILocation(line: 217, column: 27, scope: !536)
!556 = !DILocation(line: 217, column: 34, scope: !536)
!557 = !DILocation(line: 217, column: 38, scope: !536)
!558 = !DILocation(line: 217, column: 44, scope: !536)
!559 = !DILocation(line: 218, column: 49, scope: !536)
!560 = !DILocation(line: 219, column: 35, scope: !536)
!561 = !DILocation(line: 219, column: 41, scope: !536)
!562 = !DILocation(line: 219, column: 48, scope: !536)
!563 = !DILocation(line: 219, column: 21, scope: !536)
!564 = distinct !{!564, !534, !565}
!565 = !DILocation(line: 220, column: 17, scope: !512)
!566 = !DILocation(line: 221, column: 17, scope: !512)
!567 = !DILocation(line: 222, column: 17, scope: !512)
!568 = distinct !{!568, !495, !569}
!569 = !DILocation(line: 230, column: 9, scope: !445)
!570 = !DILocation(line: 226, column: 18, scope: !497)
!571 = !DILocation(line: 226, column: 16, scope: !497)
!572 = !DILocation(line: 227, column: 27, scope: !497)
!573 = !DILocation(line: 227, column: 31, scope: !497)
!574 = !DILocation(line: 227, column: 38, scope: !497)
!575 = !DILocation(line: 227, column: 13, scope: !497)
!576 = !DILocation(line: 228, column: 13, scope: !497)
!577 = !DILocation(line: 228, column: 17, scope: !497)
!578 = !DILocation(line: 228, column: 24, scope: !497)
!579 = !DILocation(line: 228, column: 28, scope: !497)
!580 = !DILocation(line: 228, column: 32, scope: !497)
!581 = !DILocation(line: 228, column: 43, scope: !497)
!582 = !DILocation(line: 228, column: 51, scope: !497)
!583 = !DILocation(line: 229, column: 27, scope: !497)
!584 = !DILocation(line: 229, column: 31, scope: !497)
!585 = !DILocation(line: 229, column: 38, scope: !497)
!586 = !DILocation(line: 229, column: 13, scope: !497)
!587 = distinct !{!587, !443, !588}
!588 = !DILocation(line: 231, column: 5, scope: !417)
!589 = distinct !DISubprogram(name: "nn_worker_term", scope: !2, file: !2, line: 114, type: !590, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !25}
!592 = !DILocalVariable(name: "self", arg: 1, scope: !589, file: !2, line: 114, type: !25)
!593 = !DILocation(line: 114, column: 40, scope: !589)
!594 = !DILocation(line: 117, column: 21, scope: !589)
!595 = !DILocation(line: 117, column: 27, scope: !589)
!596 = !DILocation(line: 117, column: 5, scope: !589)
!597 = !DILocation(line: 118, column: 21, scope: !589)
!598 = !DILocation(line: 118, column: 27, scope: !589)
!599 = !DILocation(line: 118, column: 35, scope: !589)
!600 = !DILocation(line: 118, column: 41, scope: !589)
!601 = !DILocation(line: 118, column: 5, scope: !589)
!602 = !DILocation(line: 119, column: 21, scope: !589)
!603 = !DILocation(line: 119, column: 27, scope: !589)
!604 = !DILocation(line: 119, column: 5, scope: !589)
!605 = !DILocation(line: 120, column: 23, scope: !589)
!606 = !DILocation(line: 120, column: 29, scope: !589)
!607 = !DILocation(line: 120, column: 5, scope: !589)
!608 = !DILocation(line: 123, column: 22, scope: !589)
!609 = !DILocation(line: 123, column: 28, scope: !589)
!610 = !DILocation(line: 123, column: 5, scope: !589)
!611 = !DILocation(line: 126, column: 24, scope: !589)
!612 = !DILocation(line: 126, column: 30, scope: !589)
!613 = !DILocation(line: 126, column: 5, scope: !589)
!614 = !DILocation(line: 127, column: 22, scope: !589)
!615 = !DILocation(line: 127, column: 28, scope: !589)
!616 = !DILocation(line: 127, column: 5, scope: !589)
!617 = !DILocation(line: 128, column: 19, scope: !589)
!618 = !DILocation(line: 128, column: 25, scope: !589)
!619 = !DILocation(line: 128, column: 5, scope: !589)
!620 = !DILocation(line: 129, column: 26, scope: !589)
!621 = !DILocation(line: 129, column: 32, scope: !589)
!622 = !DILocation(line: 129, column: 5, scope: !589)
!623 = !DILocation(line: 130, column: 21, scope: !589)
!624 = !DILocation(line: 130, column: 27, scope: !589)
!625 = !DILocation(line: 130, column: 5, scope: !589)
!626 = !DILocation(line: 131, column: 21, scope: !589)
!627 = !DILocation(line: 131, column: 27, scope: !589)
!628 = !DILocation(line: 131, column: 5, scope: !589)
!629 = !DILocation(line: 132, column: 1, scope: !589)
!630 = distinct !DISubprogram(name: "nn_worker_execute", scope: !2, file: !2, line: 134, type: !631, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !25, !202}
!633 = !DILocalVariable(name: "self", arg: 1, scope: !630, file: !2, line: 134, type: !25)
!634 = !DILocation(line: 134, column: 43, scope: !630)
!635 = !DILocalVariable(name: "task", arg: 2, scope: !630, file: !2, line: 134, type: !202)
!636 = !DILocation(line: 134, column: 72, scope: !630)
!637 = !DILocation(line: 136, column: 21, scope: !630)
!638 = !DILocation(line: 136, column: 27, scope: !630)
!639 = !DILocation(line: 136, column: 5, scope: !630)
!640 = !DILocation(line: 137, column: 21, scope: !630)
!641 = !DILocation(line: 137, column: 27, scope: !630)
!642 = !DILocation(line: 137, column: 35, scope: !630)
!643 = !DILocation(line: 137, column: 41, scope: !630)
!644 = !DILocation(line: 137, column: 5, scope: !630)
!645 = !DILocation(line: 138, column: 21, scope: !630)
!646 = !DILocation(line: 138, column: 27, scope: !630)
!647 = !DILocation(line: 138, column: 5, scope: !630)
!648 = !DILocation(line: 139, column: 23, scope: !630)
!649 = !DILocation(line: 139, column: 29, scope: !630)
!650 = !DILocation(line: 139, column: 5, scope: !630)
!651 = !DILocation(line: 140, column: 1, scope: !630)
!652 = distinct !DISubprogram(name: "nn_worker_timer_init", scope: !653, file: !653, line: 31, type: !654, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!653 = !DIFile(filename: "./src/aio/worker.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b3d7b7ad6824c5e0d3bb4bc5ac4c8c06")
!654 = !DISubroutineType(types: !655)
!655 = !{null, !151, !156}
!656 = !DILocalVariable(name: "self", arg: 1, scope: !652, file: !653, line: 31, type: !151)
!657 = !DILocation(line: 31, column: 52, scope: !652)
!658 = !DILocalVariable(name: "owner", arg: 2, scope: !652, file: !653, line: 31, type: !156)
!659 = !DILocation(line: 31, column: 73, scope: !652)
!660 = !DILocation(line: 33, column: 19, scope: !652)
!661 = !DILocation(line: 33, column: 5, scope: !652)
!662 = !DILocation(line: 33, column: 11, scope: !652)
!663 = !DILocation(line: 33, column: 17, scope: !652)
!664 = !DILocation(line: 34, column: 29, scope: !652)
!665 = !DILocation(line: 34, column: 35, scope: !652)
!666 = !DILocation(line: 34, column: 5, scope: !652)
!667 = !DILocation(line: 35, column: 1, scope: !652)
!668 = distinct !DISubprogram(name: "nn_worker_timer_term", scope: !653, file: !653, line: 37, type: !669, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !151}
!671 = !DILocalVariable(name: "self", arg: 1, scope: !668, file: !653, line: 37, type: !151)
!672 = !DILocation(line: 37, column: 52, scope: !668)
!673 = !DILocation(line: 39, column: 29, scope: !668)
!674 = !DILocation(line: 39, column: 35, scope: !668)
!675 = !DILocation(line: 39, column: 5, scope: !668)
!676 = !DILocation(line: 40, column: 1, scope: !668)
!677 = distinct !DISubprogram(name: "nn_worker_timer_isactive", scope: !653, file: !653, line: 42, type: !678, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !224)
!678 = !DISubroutineType(types: !679)
!679 = !{!43, !151}
!680 = !DILocalVariable(name: "self", arg: 1, scope: !677, file: !653, line: 42, type: !151)
!681 = !DILocation(line: 42, column: 55, scope: !677)
!682 = !DILocation(line: 44, column: 40, scope: !677)
!683 = !DILocation(line: 44, column: 46, scope: !677)
!684 = !DILocation(line: 44, column: 12, scope: !677)
!685 = !DILocation(line: 44, column: 5, scope: !677)
