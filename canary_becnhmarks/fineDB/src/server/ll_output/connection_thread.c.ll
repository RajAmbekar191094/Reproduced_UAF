; ModuleID = 'connection_thread.c'
source_filename = "connection_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_thread_s = type { i64, ptr, i32, i32, ptr, ptr }
%struct.timeval = type { i64, i64 }
%struct.ydynabin_s = type { ptr, i64, i64, i64 }
%struct.finedb_s = type { i32, ptr, i32, i32, i64, ptr, i16 }
%struct.iovec = type { ptr, i64 }
%struct.msghdr = type { ptr, i32, ptr, i64, ptr, i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"connection_thread.c\00", align 1, !dbg !0
@__FUNCTION__.connection_thread_new = private unnamed_addr constant [22 x i8] c"connection_thread_new\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to create thread.\00", align 1, !dbg !13
@__FUNCTION__.connection_thread_execution = private unnamed_addr constant [28 x i8] c"connection_thread_execution\00", align 1, !dbg !18
@.str.2 = private unnamed_addr constant [13 x i8] c"Thread loop.\00", align 1, !dbg !23
@.str.3 = private unnamed_addr constant [23 x i8] c"inproc://writer_socket\00", align 1, !dbg !28
@.str.4 = private unnamed_addr constant [38 x i8] c"Unable to connect to writer's socket.\00", align 1, !dbg !33
@.str.5 = private unnamed_addr constant [24 x i8] c"inproc://threads_socket\00", align 1, !dbg !38
@.str.6 = private unnamed_addr constant [43 x i8] c"Unable to connect to main thread's socket.\00", align 1, !dbg !43
@.str.7 = private unnamed_addr constant [32 x i8] c"Process an incoming connection.\00", align 1, !dbg !48
@.str.8 = private unnamed_addr constant [26 x i8] c"Processing a new request.\00", align 1, !dbg !53
@.str.9 = private unnamed_addr constant [23 x i8] c"The socket was closed.\00", align 1, !dbg !58
@.str.10 = private unnamed_addr constant [46 x i8] c"---Req: '%x' - txn: %d - sync: %d - comp: %d\0A\00", align 1, !dbg !60
@.str.11 = private unnamed_addr constant [17 x i8] c"Bad command '%x'\00", align 1, !dbg !65
@.str.12 = private unnamed_addr constant [11 x i8] c"Command %x\00", align 1, !dbg !70
@.str.13 = private unnamed_addr constant [19 x i8] c"End of connection.\00", align 1, !dbg !75
@__FUNCTION__.connection_read_data = private unnamed_addr constant [21 x i8] c"connection_read_data\00", align 1, !dbg !80
@.str.14 = private unnamed_addr constant [34 x i8] c"Unable to set RCVTIMEO on socket.\00", align 1, !dbg !85
@.str.15 = private unnamed_addr constant [13 x i8] c"Socket error\00", align 1, !dbg !90
@.str.16 = private unnamed_addr constant [14 x i8] c"Socket closed\00", align 1, !dbg !92
@.str.17 = private unnamed_addr constant [39 x i8] c"Unable to remove RCVTIMEO from socket.\00", align 1, !dbg !97
@__FUNCTION__.connection_send_response = private unnamed_addr constant [25 x i8] c"connection_send_response\00", align 1, !dbg !102
@.str.18 = private unnamed_addr constant [20 x i8] c"Send response (%d).\00", align 1, !dbg !105
@.str.19 = private unnamed_addr constant [34 x i8] c"Unable to set SNDTIMEO on socket.\00", align 1, !dbg !107
@.str.20 = private unnamed_addr constant [25 x i8] c"Unable to send response.\00", align 1, !dbg !109
@.str.21 = private unnamed_addr constant [48 x i8] c"Unable to send the complete response (%d / %d).\00", align 1, !dbg !111
@.str.22 = private unnamed_addr constant [35 x i8] c"Too much data were sent (%d / %d).\00", align 1, !dbg !116
@.str.23 = private unnamed_addr constant [39 x i8] c"Unable to remove SNDTIMEO from socket.\00", align 1, !dbg !121
@.str.24 = private unnamed_addr constant [20 x i8] c"Sent %d bytes '%s'.\00", align 1, !dbg !123
@_commands = internal unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [9 x ptr] }> <{ ptr @command_ping, ptr @command_get, ptr @command_del, ptr @command_put, ptr @command_setdb, ptr @command_start, ptr @command_stop, [9 x ptr] zeroinitializer }>, align 16, !dbg !125

; Function Attrs: nounwind uwtable
define dso_local ptr @connection_thread_new(ptr noundef %0) local_unnamed_addr #0 !dbg !246 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !250, metadata !DIExpression()), !dbg !252
  %2 = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #11, !dbg !253
  call void @llvm.dbg.value(metadata ptr %2, metadata !251, metadata !DIExpression()), !dbg !252
  %3 = getelementptr inbounds %struct.tcp_thread_s, ptr %2, i64 0, i32 2, !dbg !254
  store i32 -1, ptr %3, align 8, !dbg !255, !tbaa !256
  %4 = getelementptr inbounds %struct.tcp_thread_s, ptr %2, i64 0, i32 1, !dbg !263
  store ptr %0, ptr %4, align 8, !dbg !264, !tbaa !265
  %5 = tail call i32 @pthread_create(ptr noundef %2, ptr noundef null, ptr noundef nonnull @connection_thread_execution, ptr noundef %2) #12, !dbg !266
  %6 = icmp eq i32 %5, 0, !dbg !266
  br i1 %6, label %9, label %7, !dbg !268

7:                                                ; preds = %1
  %8 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @__FUNCTION__.connection_thread_new, ptr noundef nonnull @.str.1) #12, !dbg !269
  tail call void @free(ptr noundef nonnull %2) #12, !dbg !271
  br label %12, !dbg !271

9:                                                ; preds = %1
  %10 = load i64, ptr %2, align 8, !dbg !272, !tbaa !273
  %11 = tail call i32 @pthread_detach(i64 noundef %10) #12, !dbg !274
  br label %12, !dbg !275

12:                                               ; preds = %7, %9
  %13 = phi ptr [ %2, %9 ], [ null, %7 ], !dbg !252
  ret ptr %13, !dbg !276
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !277 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !282 i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local ptr @connection_thread_execution(ptr noundef %0) #5 !dbg !304 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !306, metadata !DIExpression()), !dbg !324
  %2 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 78, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.2) #12, !dbg !325
  call void @llvm.dbg.value(metadata ptr %0, metadata !307, metadata !DIExpression()), !dbg !324
  %3 = tail call i32 @nn_socket(i32 noundef 1, i32 noundef 80) #12, !dbg !326
  %4 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 3, !dbg !328
  store i32 %3, ptr %4, align 4, !dbg !329, !tbaa !330
  %5 = icmp slt i32 %3, 0, !dbg !331
  br i1 %5, label %9, label %6, !dbg !332

6:                                                ; preds = %1
  %7 = tail call i32 @nn_connect(i32 noundef %3, ptr noundef nonnull @.str.3) #12, !dbg !333
  %8 = icmp slt i32 %7, 0, !dbg !334
  br i1 %8, label %9, label %11, !dbg !335

9:                                                ; preds = %6, %1
  %10 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 83, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.4) #12, !dbg !336
  tail call void @pthread_exit(ptr noundef null) #13, !dbg !338
  unreachable, !dbg !338

11:                                               ; preds = %6
  %12 = tail call i32 @nn_socket(i32 noundef 1, i32 noundef 81) #12, !dbg !339
  call void @llvm.dbg.value(metadata i32 %12, metadata !308, metadata !DIExpression()), !dbg !324
  %13 = icmp slt i32 %12, 0, !dbg !341
  br i1 %13, label %21, label %14, !dbg !342

14:                                               ; preds = %11
  %15 = tail call i32 @nn_connect(i32 noundef %12, ptr noundef nonnull @.str.5) #12, !dbg !343
  %16 = icmp slt i32 %15, 0, !dbg !344
  br i1 %16, label %21, label %17, !dbg !345

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5
  %20 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4
  br label %23, !dbg !346

21:                                               ; preds = %14, %11
  %22 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 89, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.6) #12, !dbg !348
  tail call void @pthread_exit(ptr noundef null) #13, !dbg !350
  unreachable, !dbg !350

23:                                               ; preds = %26, %17
  call void @llvm.dbg.value(metadata ptr null, metadata !309, metadata !DIExpression()), !dbg !351
  %24 = tail call i32 @nn_recv(i32 noundef %12, ptr noundef nonnull %18, i64 noundef 4, i32 noundef 0) #12, !dbg !352
  %25 = icmp slt i32 %24, 0, !dbg !353
  br i1 %25, label %26, label %27, !dbg !346

26:                                               ; preds = %23, %27, %84
  br label %23, !dbg !351, !llvm.loop !354

27:                                               ; preds = %23
  %28 = load i32, ptr %18, align 8, !dbg !357, !tbaa !256
  %29 = icmp slt i32 %28, 0, !dbg !358
  br i1 %29, label %26, label %30, !dbg !359

30:                                               ; preds = %27
  %31 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 100, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.7) #12, !dbg !360
  %32 = tail call ptr @ydynabin_new(ptr noundef null, i64 noundef 0, i32 noundef 0) #12, !dbg !361
  call void @llvm.dbg.value(metadata ptr %32, metadata !309, metadata !DIExpression()), !dbg !351
  br label %33, !dbg !362

33:                                               ; preds = %62, %30
  %34 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 109, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.8) #12, !dbg !363
  %35 = tail call i32 @connection_read_data(ptr noundef nonnull %0, ptr noundef %32, i64 noundef 1), !dbg !364
  %36 = icmp eq i32 %35, 1, !dbg !366
  br i1 %36, label %39, label %37, !dbg !367

37:                                               ; preds = %33
  %38 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 111, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.9) #12, !dbg !368
  br label %68, !dbg !370

39:                                               ; preds = %33
  %40 = tail call ptr @ydynabin_forward(ptr noundef %32, i64 noundef 1) #12, !dbg !371
  call void @llvm.dbg.value(metadata ptr %40, metadata !313, metadata !DIExpression()), !dbg !372
  %41 = load i8, ptr %40, align 1, !dbg !373, !tbaa !374
  %42 = and i8 %41, 15, !dbg !373
  call void @llvm.dbg.value(metadata i8 %42, metadata !318, metadata !DIExpression()), !dbg !372
  %43 = load ptr, ptr %19, align 8, !dbg !375, !tbaa !376
  %44 = icmp ne ptr %43, null, !dbg !377
  %45 = and i8 %41, 16, !dbg !378
  %46 = icmp ne i8 %45, 0, !dbg !378
  %47 = select i1 %44, i1 true, i1 %46, !dbg !378
  %48 = zext i1 %47 to i32, !dbg !379
  call void @llvm.dbg.value(metadata i32 %48, metadata !319, metadata !DIExpression()), !dbg !372
  %49 = zext i8 %41 to i32, !dbg !380
  %50 = lshr i32 %49, 6, !dbg !380
  %51 = and i32 %50, 1, !dbg !380
  call void @llvm.dbg.value(metadata i32 %51, metadata !320, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 poison, metadata !321, metadata !DIExpression()), !dbg !372
  %52 = zext i8 %42 to i32, !dbg !381
  %53 = zext i1 %44 to i32, !dbg !381
  %54 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 122, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.10, i32 noundef %52, i32 noundef %53, i32 noundef %48, i32 noundef %51) #12, !dbg !381
  %55 = zext i8 %42 to i64, !dbg !382
  %56 = getelementptr inbounds [16 x ptr], ptr @_commands, i64 0, i64 %55, !dbg !382
  %57 = load ptr, ptr %56, align 8, !dbg !382, !tbaa !384
  call void @llvm.dbg.value(metadata ptr %57, metadata !322, metadata !DIExpression()), !dbg !372
  %58 = icmp eq ptr %57, null, !dbg !385
  br i1 %58, label %59, label %62, !dbg !386

59:                                               ; preds = %39
  %60 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 125, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.11, i32 noundef %52) #12, !dbg !387
  %61 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0), !dbg !389
  br label %68, !dbg !390

62:                                               ; preds = %39
  %63 = lshr i32 %49, 5, !dbg !391
  %64 = and i32 %63, 1, !dbg !391
  call void @llvm.dbg.value(metadata i32 %64, metadata !321, metadata !DIExpression()), !dbg !372
  %65 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 129, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.12, i32 noundef %52) #12, !dbg !392
  %66 = tail call i32 %57(ptr noundef nonnull %0, i32 noundef %48, i32 noundef %51, i32 noundef %64, ptr noundef %32) #12, !dbg !393
  %67 = icmp eq i32 %66, 1, !dbg !395
  br i1 %67, label %33, label %68, !dbg !396

68:                                               ; preds = %62, %37, %59
  call void @llvm.dbg.label(metadata !323), !dbg !397
  %69 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 134, ptr noundef nonnull @__FUNCTION__.connection_thread_execution, ptr noundef nonnull @.str.13) #12, !dbg !398
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression()), !dbg !404
  %70 = load i32, ptr %18, align 8, !dbg !406, !tbaa !256
  %71 = icmp eq i32 %70, -1, !dbg !408
  br i1 %71, label %84, label %72, !dbg !409

72:                                               ; preds = %68
  %73 = load ptr, ptr %19, align 8, !dbg !410, !tbaa !376
  %74 = icmp eq ptr %73, null, !dbg !412
  br i1 %74, label %77, label %75, !dbg !413

75:                                               ; preds = %72
  tail call void @database_transaction_rollback(ptr noundef nonnull %73) #12, !dbg !414
  store ptr null, ptr %19, align 8, !dbg !416, !tbaa !376
  %76 = load i32, ptr %18, align 8, !dbg !417, !tbaa !256
  br label %77, !dbg !418

77:                                               ; preds = %75, %72
  %78 = phi i32 [ %76, %75 ], [ %70, %72 ], !dbg !417
  %79 = tail call i32 @shutdown(i32 noundef %78, i32 noundef 2) #12, !dbg !419
  store i32 -1, ptr %18, align 8, !dbg !420, !tbaa !256
  %80 = load ptr, ptr %20, align 8, !dbg !421, !tbaa !422
  %81 = icmp eq ptr %80, null, !dbg !421
  br i1 %81, label %83, label %82, !dbg !421

82:                                               ; preds = %77
  tail call void @free(ptr noundef nonnull %80) #12, !dbg !421
  br label %83, !dbg !421

83:                                               ; preds = %82, %77
  store ptr null, ptr %20, align 8, !dbg !421, !tbaa !422
  br label %84, !dbg !423

84:                                               ; preds = %68, %83
  tail call void @ydynabin_delete(ptr noundef %32) #12, !dbg !424
  br label %26, !dbg !425
}

declare !dbg !426 i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !431 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !434 i32 @pthread_detach(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @connection_thread_disconnect(ptr nocapture noundef %0) local_unnamed_addr #0 !dbg !400 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !399, metadata !DIExpression()), !dbg !437
  %2 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 2, !dbg !438
  %3 = load i32, ptr %2, align 8, !dbg !438, !tbaa !256
  %4 = icmp eq i32 %3, -1, !dbg !439
  br i1 %4, label %19, label %5, !dbg !440

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !441
  %7 = load ptr, ptr %6, align 8, !dbg !441, !tbaa !376
  %8 = icmp eq ptr %7, null, !dbg !442
  br i1 %8, label %11, label %9, !dbg !443

9:                                                ; preds = %5
  tail call void @database_transaction_rollback(ptr noundef nonnull %7) #12, !dbg !444
  store ptr null, ptr %6, align 8, !dbg !445, !tbaa !376
  %10 = load i32, ptr %2, align 8, !dbg !446, !tbaa !256
  br label %11, !dbg !447

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ %3, %5 ], !dbg !446
  %13 = tail call i32 @shutdown(i32 noundef %12, i32 noundef 2) #12, !dbg !448
  store i32 -1, ptr %2, align 8, !dbg !449, !tbaa !256
  %14 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !450
  %15 = load ptr, ptr %14, align 8, !dbg !450, !tbaa !422
  %16 = icmp eq ptr %15, null, !dbg !450
  br i1 %16, label %18, label %17, !dbg !450

17:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %15) #12, !dbg !450
  br label %18, !dbg !450

18:                                               ; preds = %11, %17
  store ptr null, ptr %14, align 8, !dbg !450, !tbaa !422
  br label %19, !dbg !451

19:                                               ; preds = %1, %18
  ret void, !dbg !451
}

declare !dbg !452 void @database_transaction_rollback(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !456 i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @connection_thread_push_socket(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !459 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !463, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata i32 %1, metadata !464, metadata !DIExpression()), !dbg !465
  store i32 %1, ptr %3, align 4, !tbaa !466
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression(DW_OP_deref)), !dbg !465
  %4 = call i32 @nn_send(i32 noundef %0, ptr noundef nonnull %3, i64 noundef 4, i32 noundef 0) #12, !dbg !467
  ret void, !dbg !468
}

declare !dbg !469 i32 @nn_send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !475 i32 @nn_socket(i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !476 i32 @nn_connect(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare !dbg !479 void @pthread_exit(ptr noundef) local_unnamed_addr #8

declare !dbg !480 i32 @nn_recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !483 ptr @ydynabin_new(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @connection_read_data(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !dbg !486 {
  %4 = alloca [8196 x i8], align 16
  %5 = alloca %struct.timeval, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !490, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr %1, metadata !491, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata i64 %2, metadata !492, metadata !DIExpression()), !dbg !511
  call void @llvm.lifetime.start.p0(i64 8196, ptr nonnull %4) #12, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %4, metadata !493, metadata !DIExpression()), !dbg !513
  %6 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 2, !dbg !514
  %7 = load i32, ptr %6, align 8, !dbg !514, !tbaa !256
  %8 = icmp slt i32 %7, 0, !dbg !516
  br i1 %8, label %53, label %9, !dbg !517

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ydynabin_s, ptr %1, i64 0, i32 1, !dbg !518
  %11 = load i64, ptr %10, align 8, !dbg !518, !tbaa !520
  %12 = icmp ult i64 %11, %2, !dbg !522
  br i1 %12, label %13, label %53, !dbg !523

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.timeval, ptr %5, i64 0, i32 1
  br label %16, !dbg !524

16:                                               ; preds = %13, %50
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %5, metadata !502, metadata !DIExpression()), !dbg !526
  %17 = load ptr, ptr %14, align 8, !dbg !527, !tbaa !265
  %18 = getelementptr inbounds %struct.finedb_s, ptr %17, i64 0, i32 6, !dbg !528
  %19 = load i16, ptr %18, align 8, !dbg !528, !tbaa !529
  %20 = zext i16 %19 to i64, !dbg !532
  store i64 %20, ptr %5, align 8, !dbg !533, !tbaa !534
  store i64 0, ptr %15, align 8, !dbg !536, !tbaa !537
  %21 = load i32, ptr %6, align 8, !dbg !538, !tbaa !256
  %22 = call i32 @setsockopt(i32 noundef %21, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %5, i32 noundef 16) #12, !dbg !540
  %23 = icmp slt i32 %22, 0, !dbg !541
  br i1 %23, label %24, label %26, !dbg !542

24:                                               ; preds = %16
  %25 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 157, ptr noundef nonnull @__FUNCTION__.connection_read_data, ptr noundef nonnull @.str.14) #12, !dbg !543
  br label %26, !dbg !543

26:                                               ; preds = %24, %16
  %27 = load i32, ptr %6, align 8, !dbg !544, !tbaa !256
  %28 = call i64 @recv(i32 noundef %27, ptr noundef nonnull %4, i64 noundef 8196, i32 noundef 0) #12, !dbg !546
  call void @llvm.dbg.value(metadata i64 %28, metadata !497, metadata !DIExpression()), !dbg !511
  %29 = icmp slt i64 %28, 0, !dbg !547
  br i1 %29, label %30, label %32, !dbg !548

30:                                               ; preds = %26
  %31 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 160, ptr noundef nonnull @__FUNCTION__.connection_read_data, ptr noundef nonnull @.str.15) #12, !dbg !549
  br label %48, !dbg !551

32:                                               ; preds = %26
  %33 = icmp eq i64 %28, 0, !dbg !552
  br i1 %33, label %34, label %39, !dbg !554

34:                                               ; preds = %32
  %35 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @__FUNCTION__.connection_read_data, ptr noundef nonnull @.str.16) #12, !dbg !555
  %36 = load i64, ptr %10, align 8, !dbg !557, !tbaa !520
  %37 = icmp ult i64 %36, %2, !dbg !559
  br i1 %37, label %48, label %38, !dbg !560

38:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12, !dbg !561
  br label %53

39:                                               ; preds = %32
  store i64 0, ptr %5, align 8, !dbg !562, !tbaa !534
  %40 = load i32, ptr %6, align 8, !dbg !563, !tbaa !256
  %41 = call i32 @setsockopt(i32 noundef %40, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %5, i32 noundef 16) #12, !dbg !565
  %42 = icmp slt i32 %41, 0, !dbg !566
  br i1 %42, label %43, label %45, !dbg !567

43:                                               ; preds = %39
  %44 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 172, ptr noundef nonnull @__FUNCTION__.connection_read_data, ptr noundef nonnull @.str.17) #12, !dbg !568
  br label %45, !dbg !568

45:                                               ; preds = %43, %39
  %46 = call i32 @ydynabin_expand(ptr noundef nonnull %1, ptr noundef nonnull %4, i64 noundef %28) #12, !dbg !569
  call void @llvm.dbg.value(metadata i32 %46, metadata !501, metadata !DIExpression()), !dbg !511
  %47 = icmp eq i32 %46, 1, !dbg !571
  br i1 %47, label %50, label %48, !dbg !511

48:                                               ; preds = %45, %30, %34
  %49 = phi i32 [ -13, %30 ], [ -104, %34 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12, !dbg !561
  br label %53

50:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12, !dbg !561
  %51 = load i64, ptr %10, align 8, !dbg !572, !tbaa !520
  %52 = icmp ult i64 %51, %2, !dbg !573
  br i1 %52, label %16, label %53, !dbg !524

53:                                               ; preds = %50, %38, %48, %9, %3
  %54 = phi i32 [ -104, %3 ], [ 1, %9 ], [ %49, %48 ], [ 1, %38 ], [ 1, %50 ], !dbg !511
  call void @llvm.lifetime.end.p0(i64 8196, ptr nonnull %4) #12, !dbg !574
  ret i32 %54, !dbg !574
}

declare !dbg !575 ptr @ydynabin_forward(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @connection_send_response(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 !dbg !578 {
  %7 = alloca i8, align 1
  %8 = alloca [3 x %struct.iovec], align 16
  %9 = alloca %struct.msghdr, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !583, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i32 %1, metadata !584, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i32 %2, metadata !585, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i32 %3, metadata !586, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata ptr %4, metadata !587, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i64 %5, metadata !588, metadata !DIExpression()), !dbg !617
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12, !dbg !618
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #12, !dbg !619
  call void @llvm.dbg.declare(metadata ptr %8, metadata !590, metadata !DIExpression()), !dbg !620
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #12, !dbg !621
  call void @llvm.dbg.declare(metadata ptr %9, metadata !599, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i64 1, metadata !613, metadata !DIExpression()), !dbg !617
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12, !dbg !623
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #12, !dbg !624
  call void @llvm.dbg.declare(metadata ptr %11, metadata !616, metadata !DIExpression()), !dbg !625
  %12 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 191, ptr noundef nonnull @__FUNCTION__.connection_send_response, ptr noundef nonnull @.str.18, i32 noundef %1) #12, !dbg !626
  store ptr null, ptr %9, align 8, !dbg !627, !tbaa !628
  %13 = getelementptr inbounds %struct.msghdr, ptr %9, i64 0, i32 1, !dbg !630
  store i32 0, ptr %13, align 8, !dbg !631, !tbaa !632
  %14 = getelementptr inbounds %struct.msghdr, ptr %9, i64 0, i32 2, !dbg !633
  store ptr %8, ptr %14, align 8, !dbg !634, !tbaa !635
  %15 = getelementptr inbounds %struct.msghdr, ptr %9, i64 0, i32 3, !dbg !636
  store i64 1, ptr %15, align 8, !dbg !637, !tbaa !638
  %16 = getelementptr inbounds %struct.msghdr, ptr %9, i64 0, i32 4, !dbg !639
  %17 = trunc i32 %1 to i8, !dbg !640
  call void @llvm.dbg.value(metadata i8 %17, metadata !589, metadata !DIExpression()), !dbg !617
  %18 = icmp eq i32 %2, 0, !dbg !641
  %19 = or i8 %17, 32, !dbg !643
  %20 = select i1 %18, i8 %17, i8 %19, !dbg !643
  %21 = icmp eq i32 %3, 0, !dbg !644
  %22 = or i8 %20, 64
  %23 = select i1 %21, i8 %20, i8 %22, !dbg !646
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %16, i8 0, i64 20, i1 false), !dbg !647
  store i8 %23, ptr %7, align 1, !dbg !617, !tbaa !374
  store ptr %7, ptr %8, align 16, !dbg !648, !tbaa !649
  %24 = getelementptr inbounds %struct.iovec, ptr %8, i64 0, i32 1, !dbg !651
  store i64 1, ptr %24, align 8, !dbg !652, !tbaa !653
  %25 = icmp eq ptr %4, null, !dbg !654
  br i1 %25, label %34, label %26, !dbg !656

26:                                               ; preds = %6
  %27 = trunc i64 %5 to i32, !dbg !657
  call void @llvm.dbg.value(metadata i32 %27, metadata !659, metadata !DIExpression()), !dbg !665
  %28 = call i32 @llvm.bswap.i32(i32 %27), !dbg !667
  call void @llvm.dbg.value(metadata i32 %28, metadata !615, metadata !DIExpression()), !dbg !617
  store i32 %28, ptr %10, align 4, !dbg !668, !tbaa !466
  %29 = getelementptr inbounds [3 x %struct.iovec], ptr %8, i64 0, i64 1, !dbg !669
  store ptr %10, ptr %29, align 16, !dbg !670, !tbaa !649
  %30 = getelementptr inbounds [3 x %struct.iovec], ptr %8, i64 0, i64 1, i32 1, !dbg !671
  store i64 4, ptr %30, align 8, !dbg !672, !tbaa !653
  %31 = getelementptr inbounds [3 x %struct.iovec], ptr %8, i64 0, i64 2, !dbg !673
  store ptr %4, ptr %31, align 16, !dbg !674, !tbaa !649
  %32 = getelementptr inbounds [3 x %struct.iovec], ptr %8, i64 0, i64 2, i32 1, !dbg !675
  store i64 %5, ptr %32, align 8, !dbg !676, !tbaa !653
  store i64 3, ptr %15, align 8, !dbg !677, !tbaa !638
  %33 = add i64 %5, 5, !dbg !678
  call void @llvm.dbg.value(metadata i64 %33, metadata !613, metadata !DIExpression()), !dbg !617
  br label %34, !dbg !679

34:                                               ; preds = %26, %6
  %35 = phi i64 [ %33, %26 ], [ 1, %6 ], !dbg !617
  call void @llvm.dbg.value(metadata i64 %35, metadata !613, metadata !DIExpression()), !dbg !617
  %36 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1, !dbg !680
  %37 = load ptr, ptr %36, align 8, !dbg !680, !tbaa !265
  %38 = getelementptr inbounds %struct.finedb_s, ptr %37, i64 0, i32 6, !dbg !681
  %39 = load i16, ptr %38, align 8, !dbg !681, !tbaa !529
  %40 = zext i16 %39 to i64, !dbg !682
  store i64 %40, ptr %11, align 8, !dbg !683, !tbaa !534
  %41 = getelementptr inbounds %struct.timeval, ptr %11, i64 0, i32 1, !dbg !684
  store i64 0, ptr %41, align 8, !dbg !685, !tbaa !537
  %42 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 2, !dbg !686
  %43 = load i32, ptr %42, align 8, !dbg !686, !tbaa !256
  %44 = call i32 @setsockopt(i32 noundef %43, i32 noundef 1, i32 noundef 21, ptr noundef nonnull %11, i32 noundef 16) #12, !dbg !688
  %45 = icmp slt i32 %44, 0, !dbg !689
  br i1 %45, label %46, label %48, !dbg !690

46:                                               ; preds = %34
  %47 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 221, ptr noundef nonnull @__FUNCTION__.connection_send_response, ptr noundef nonnull @.str.19) #12, !dbg !691
  br label %48, !dbg !691

48:                                               ; preds = %46, %34
  %49 = load i32, ptr %42, align 8, !dbg !692, !tbaa !256
  %50 = call i64 @sendmsg(i32 noundef %49, ptr noundef nonnull %9, i32 noundef 0) #12, !dbg !693
  call void @llvm.dbg.value(metadata i64 %50, metadata !614, metadata !DIExpression()), !dbg !617
  %51 = icmp slt i64 %50, 0, !dbg !694
  br i1 %51, label %52, label %54, !dbg !696

52:                                               ; preds = %48
  %53 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 225, ptr noundef nonnull @__FUNCTION__.connection_send_response, ptr noundef nonnull @.str.20) #12, !dbg !697
  br label %70, !dbg !699

54:                                               ; preds = %48
  %55 = icmp slt i64 %50, %35, !dbg !700
  br i1 %55, label %56, label %58, !dbg !702

56:                                               ; preds = %54
  %57 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 228, ptr noundef nonnull @__FUNCTION__.connection_send_response, ptr noundef nonnull @.str.21, i64 noundef %50, i64 noundef %35) #12, !dbg !703
  br label %70, !dbg !705

58:                                               ; preds = %54
  %59 = icmp sgt i64 %50, %35, !dbg !706
  br i1 %59, label %60, label %62, !dbg !708

60:                                               ; preds = %58
  %61 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 231, ptr noundef nonnull @__FUNCTION__.connection_send_response, ptr noundef nonnull @.str.22, i64 noundef %50, i64 noundef %35) #12, !dbg !709
  br label %70, !dbg !711

62:                                               ; preds = %58
  store i64 0, ptr %11, align 8, !dbg !712, !tbaa !534
  %63 = load i32, ptr %42, align 8, !dbg !713, !tbaa !256
  %64 = call i32 @setsockopt(i32 noundef %63, i32 noundef 1, i32 noundef 21, ptr noundef nonnull %11, i32 noundef 16) #12, !dbg !715
  %65 = icmp slt i32 %64, 0, !dbg !716
  br i1 %65, label %66, label %68, !dbg !717

66:                                               ; preds = %62
  %67 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 237, ptr noundef nonnull @__FUNCTION__.connection_send_response, ptr noundef nonnull @.str.23) #12, !dbg !718
  br label %68, !dbg !718

68:                                               ; preds = %66, %62
  %69 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 239, ptr noundef nonnull @__FUNCTION__.connection_send_response, ptr noundef nonnull @.str.24, i64 noundef %50, ptr noundef %4) #12, !dbg !719
  br label %70, !dbg !720

70:                                               ; preds = %68, %60, %56, %52
  %71 = phi i32 [ -5, %52 ], [ -5, %56 ], [ -5, %60 ], [ 1, %68 ], !dbg !617
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #12, !dbg !721
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12, !dbg !721
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #12, !dbg !721
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #12, !dbg !721
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12, !dbg !721
  ret i32 %71, !dbg !721
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare !dbg !722 void @ydynabin_delete(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !725 i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !728 i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !731 i32 @ydynabin_expand(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare !dbg !734 i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @command_ping(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #6

declare i32 @command_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #6

declare i32 @command_del(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #6

declare i32 @command_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #6

declare i32 @command_setdb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #6

declare i32 @command_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #6

declare i32 @command_stop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.dbg.cu = !{!127}
!llvm.module.flags = !{!239, !240, !241, !242, !243, !244}
!llvm.ident = !{!245}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "connection_thread.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d5b8816e925b284004cff38d62711b09")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 20)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 176, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 22)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 25)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 224, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 28)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 13)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 23)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 38)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 24)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 43)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 32)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 26)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !30, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 46)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 17)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 11)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 19)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 168, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 21)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 34)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !25, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 14)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 39)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 191, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !16)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 191, type: !3, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 221, type: !87, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 225, type: !15, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 228, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 48)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 35)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !99, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !3, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "_commands", scope: !127, file: !2, line: 15, type: !220, isLocal: true, isDefinition: true)
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !128, retainedTypes: !167, globals: !219, splitDebugInlining: false, nameTableKind: None)
!128 = !{!129, !135, !144, !150, !157}
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !130, line: 45, baseType: !131, size: 32, elements: !132)
!130 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!131 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!132 = !{!133, !134}
!133 = !DIEnumerator(name: "YFALSE", value: 0)
!134 = !DIEnumerator(name: "YTRUE", value: 1)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !136, line: 267, baseType: !131, size: 32, elements: !137)
!136 = !DIFile(filename: "../../lib/ylib/ylog.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!137 = !{!138, !139, !140, !141, !142, !143}
!138 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!139 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!140 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!141 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!142 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!143 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !145, line: 41, baseType: !131, size: 32, elements: !146)
!145 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "619dab7fd722af1ca0fa7f4b6fd4f842")
!146 = !{!147, !148, !149}
!147 = !DIEnumerator(name: "SHUT_RD", value: 0)
!148 = !DIEnumerator(name: "SHUT_WR", value: 1)
!149 = !DIEnumerator(name: "SHUT_RDWR", value: 2)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol_option_e", file: !151, line: 88, baseType: !131, size: 32, elements: !152)
!151 = !DIFile(filename: "./protocol.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "90e12b9ba2bd5e3d7e691fccfd080d02")
!152 = !{!153, !154, !155, !156}
!153 = !DIEnumerator(name: "PROTO_OPT_SYNC", value: 16)
!154 = !DIEnumerator(name: "PROTO_OPT_SERIALIZED", value: 32)
!155 = !DIEnumerator(name: "PROTO_OPT_COMPRESSED", value: 64)
!156 = !DIEnumerator(name: "PROTO_OPT_SERVTOSERV", value: 128)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol_response_e", file: !151, line: 108, baseType: !131, size: 32, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166}
!159 = !DIEnumerator(name: "RESP_ERR_UNDEFINED", value: 0)
!160 = !DIEnumerator(name: "RESP_OK", value: 1)
!161 = !DIEnumerator(name: "RESP_ERR_PROTOCOL", value: 2)
!162 = !DIEnumerator(name: "RESP_ERR_SERVER", value: 3)
!163 = !DIEnumerator(name: "RESP_ERR_FULL_DB", value: 4)
!164 = !DIEnumerator(name: "RESP_ERR_TOO_MANY_DB", value: 5)
!165 = !DIEnumerator(name: "RESP_ERR_BAD_NAME", value: 6)
!166 = !DIEnumerator(name: "RESP_ERR_TRANSACTION", value: 7)
!167 = !{!168, !169, !209, !211, !212, !216}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !171, line: 30, baseType: !172)
!171 = !DIFile(filename: "./connection_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "285f9cd07088f6d468faef64cb1dc74b")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !171, line: 23, size: 320, elements: !173)
!173 = !{!174, !178, !201, !202, !203, !205}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !172, file: !171, line: 24, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !176, line: 27, baseType: !177)
!176 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!177 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !172, file: !171, line: 25, baseType: !179, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !181, line: 49, baseType: !182)
!181 = !DIFile(filename: "./finedb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "349d81e48e8fe143f3d7a471f97edb42")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !181, line: 41, size: 384, elements: !183)
!183 = !{!184, !186, !191, !193, !194, !195, !199}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !182, file: !181, line: 42, baseType: !185, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !130, line: 52, baseType: !129)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !182, file: !181, line: 43, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_env", file: !189, line: 197, baseType: !190)
!189 = !DIFile(filename: "../../lib/lmdb/lmdb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9ff9d4834608bdc966449cf81c779c6a")
!190 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_env", file: !189, line: 197, flags: DIFlagFwdDecl)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !182, file: !181, line: 44, baseType: !192, size: 32, offset: 128)
!192 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !182, file: !181, line: 45, baseType: !192, size: 32, offset: 160)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !182, file: !181, line: 46, baseType: !175, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !182, file: !181, line: 47, baseType: !196, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_t", file: !197, line: 56, baseType: !198)
!197 = !DIFile(filename: "../../lib/ylib/yvect.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "73ac1eb655eaae5d93c48c36880d9ca2")
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !182, file: !181, line: 48, baseType: !200, size: 16, offset: 320)
!200 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !172, file: !171, line: 26, baseType: !192, size: 32, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !172, file: !171, line: 27, baseType: !192, size: 32, offset: 160)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !172, file: !171, line: 28, baseType: !204, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !172, file: !171, line: 29, baseType: !206, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_txn", file: !189, line: 204, baseType: !208)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_txn", file: !189, line: 204, flags: DIFlagFwdDecl)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !210, line: 46, baseType: !177)
!210 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!211 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !213, line: 115, baseType: !214)
!213 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !215, line: 204, baseType: !204)
!215 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !217, line: 26, baseType: !218)
!217 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !215, line: 42, baseType: !131)
!219 = !{!0, !7, !13, !18, !23, !28, !33, !38, !43, !48, !53, !58, !60, !65, !70, !75, !80, !85, !90, !92, !97, !102, !105, !107, !109, !111, !116, !121, !123, !125}
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 1024, elements: !237)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "command_handler_t", file: !222, line: 19, baseType: !223)
!222 = !DIFile(filename: "./command.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "87e91f1361a7d18a8e85eefadb7c868e")
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!226, !169, !185, !185, !185, !228}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !227, line: 23, baseType: !192)
!227 = !DIFile(filename: "../../lib/ylib/yerror.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !230, line: 45, baseType: !231)
!230 = !DIFile(filename: "../../lib/ylib/ydynabin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e9b56a3dd8293288d1beb69b8bafd958")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !230, line: 37, size: 256, elements: !232)
!232 = !{!233, !234, !235, !236}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !231, file: !230, line: 38, baseType: !168, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !231, file: !230, line: 39, baseType: !209, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !231, file: !230, line: 40, baseType: !209, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !231, file: !230, line: 41, baseType: !209, size: 64, offset: 192)
!237 = !{!238}
!238 = !DISubrange(count: 16)
!239 = !{i32 7, !"Dwarf Version", i32 5}
!240 = !{i32 2, !"Debug Info Version", i32 3}
!241 = !{i32 1, !"wchar_size", i32 4}
!242 = !{i32 8, !"PIC Level", i32 2}
!243 = !{i32 7, !"PIE Level", i32 2}
!244 = !{i32 7, !"uwtable", i32 2}
!245 = !{!"clang version 16.0.0"}
!246 = distinct !DISubprogram(name: "connection_thread_new", scope: !2, file: !2, line: 35, type: !247, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !249)
!247 = !DISubroutineType(types: !248)
!248 = !{!169, !179}
!249 = !{!250, !251}
!250 = !DILocalVariable(name: "finedb", arg: 1, scope: !246, file: !2, line: 35, type: !179)
!251 = !DILocalVariable(name: "thread", scope: !246, file: !2, line: 36, type: !169)
!252 = !DILocation(line: 0, scope: !246)
!253 = !DILocation(line: 39, column: 11, scope: !246)
!254 = !DILocation(line: 40, column: 10, scope: !246)
!255 = !DILocation(line: 40, column: 13, scope: !246)
!256 = !{!257, !262, i64 16}
!257 = !{!"tcp_thread_s", !258, i64 0, !261, i64 8, !262, i64 16, !262, i64 20, !261, i64 24, !261, i64 32}
!258 = !{!"long", !259, i64 0}
!259 = !{!"omnipotent char", !260, i64 0}
!260 = !{!"Simple C/C++ TBAA"}
!261 = !{!"any pointer", !259, i64 0}
!262 = !{!"int", !259, i64 0}
!263 = !DILocation(line: 41, column: 10, scope: !246)
!264 = !DILocation(line: 41, column: 17, scope: !246)
!265 = !{!257, !261, i64 8}
!266 = !DILocation(line: 43, column: 6, scope: !267)
!267 = distinct !DILexicalBlock(scope: !246, file: !2, line: 43, column: 6)
!268 = !DILocation(line: 43, column: 6, scope: !246)
!269 = !DILocation(line: 45, column: 3, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !2, line: 44, column: 15)
!271 = !DILocation(line: 46, column: 3, scope: !270)
!272 = !DILocation(line: 49, column: 25, scope: !246)
!273 = !{!257, !258, i64 0}
!274 = !DILocation(line: 49, column: 2, scope: !246)
!275 = !DILocation(line: 50, column: 2, scope: !246)
!276 = !DILocation(line: 51, column: 1, scope: !246)
!277 = !DISubprogram(name: "calloc", scope: !278, file: !278, line: 543, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!278 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!279 = !DISubroutineType(types: !280)
!280 = !{!168, !209, !209}
!281 = !{}
!282 = !DISubprogram(name: "pthread_create", scope: !283, file: !283, line: 202, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!283 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!284 = !DISubroutineType(types: !285)
!285 = !{!192, !286, !288, !300, !303}
!286 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !176, line: 62, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !176, line: 56, size: 448, elements: !293)
!293 = !{!294, !298}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !292, file: !176, line: 58, baseType: !295, size: 448)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 56)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !292, file: !176, line: 59, baseType: !299, size: 64)
!299 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!168, !168}
!303 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!304 = distinct !DISubprogram(name: "connection_thread_execution", scope: !2, file: !2, line: 74, type: !301, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !305)
!305 = !{!306, !307, !308, !309, !313, !318, !319, !320, !321, !322, !323}
!306 = !DILocalVariable(name: "param", arg: 1, scope: !304, file: !2, line: 74, type: !168)
!307 = !DILocalVariable(name: "thread", scope: !304, file: !2, line: 75, type: !169)
!308 = !DILocalVariable(name: "incoming_socket", scope: !304, file: !2, line: 76, type: !192)
!309 = !DILocalVariable(name: "buff", scope: !310, file: !2, line: 94, type: !228)
!310 = distinct !DILexicalBlock(scope: !311, file: !2, line: 93, column: 13)
!311 = distinct !DILexicalBlock(scope: !312, file: !2, line: 93, column: 2)
!312 = distinct !DILexicalBlock(scope: !304, file: !2, line: 93, column: 2)
!313 = !DILocalVariable(name: "request", scope: !314, file: !2, line: 105, type: !317)
!314 = distinct !DILexicalBlock(scope: !315, file: !2, line: 104, column: 14)
!315 = distinct !DILexicalBlock(scope: !316, file: !2, line: 104, column: 3)
!316 = distinct !DILexicalBlock(scope: !310, file: !2, line: 104, column: 3)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!318 = !DILocalVariable(name: "command", scope: !314, file: !2, line: 105, type: !211)
!319 = !DILocalVariable(name: "sync", scope: !314, file: !2, line: 106, type: !185)
!320 = !DILocalVariable(name: "compress", scope: !314, file: !2, line: 106, type: !185)
!321 = !DILocalVariable(name: "serialized", scope: !314, file: !2, line: 106, type: !185)
!322 = !DILocalVariable(name: "func", scope: !314, file: !2, line: 107, type: !221)
!323 = !DILabel(scope: !310, name: "end_of_connection", file: !2, line: 133)
!324 = !DILocation(line: 0, scope: !304)
!325 = !DILocation(line: 78, column: 2, scope: !304)
!326 = !DILocation(line: 81, column: 28, scope: !327)
!327 = distinct !DILexicalBlock(scope: !304, file: !2, line: 81, column: 6)
!328 = !DILocation(line: 81, column: 15, scope: !327)
!329 = !DILocation(line: 81, column: 26, scope: !327)
!330 = !{!257, !262, i64 20}
!331 = !DILocation(line: 81, column: 55, scope: !327)
!332 = !DILocation(line: 81, column: 59, scope: !327)
!333 = !DILocation(line: 82, column: 6, scope: !327)
!334 = !DILocation(line: 82, column: 61, scope: !327)
!335 = !DILocation(line: 81, column: 6, scope: !304)
!336 = !DILocation(line: 83, column: 3, scope: !337)
!337 = distinct !DILexicalBlock(scope: !327, file: !2, line: 82, column: 66)
!338 = !DILocation(line: 84, column: 3, scope: !337)
!339 = !DILocation(line: 87, column: 25, scope: !340)
!340 = distinct !DILexicalBlock(scope: !304, file: !2, line: 87, column: 6)
!341 = !DILocation(line: 87, column: 52, scope: !340)
!342 = !DILocation(line: 87, column: 56, scope: !340)
!343 = !DILocation(line: 88, column: 6, scope: !340)
!344 = !DILocation(line: 88, column: 59, scope: !340)
!345 = !DILocation(line: 87, column: 6, scope: !304)
!346 = !DILocation(line: 97, column: 65, scope: !347)
!347 = distinct !DILexicalBlock(scope: !310, file: !2, line: 97, column: 7)
!348 = !DILocation(line: 89, column: 3, scope: !349)
!349 = distinct !DILexicalBlock(scope: !340, file: !2, line: 88, column: 64)
!350 = !DILocation(line: 90, column: 3, scope: !349)
!351 = !DILocation(line: 0, scope: !310)
!352 = !DILocation(line: 97, column: 7, scope: !347)
!353 = !DILocation(line: 97, column: 61, scope: !347)
!354 = distinct !{!354, !355, !356}
!355 = !DILocation(line: 93, column: 2, scope: !312)
!356 = !DILocation(line: 137, column: 2, scope: !312)
!357 = !DILocation(line: 98, column: 15, scope: !347)
!358 = !DILocation(line: 98, column: 18, scope: !347)
!359 = !DILocation(line: 97, column: 7, scope: !310)
!360 = !DILocation(line: 100, column: 3, scope: !310)
!361 = !DILocation(line: 102, column: 10, scope: !310)
!362 = !DILocation(line: 104, column: 3, scope: !310)
!363 = !DILocation(line: 109, column: 4, scope: !314)
!364 = !DILocation(line: 110, column: 8, scope: !365)
!365 = distinct !DILexicalBlock(scope: !314, file: !2, line: 110, column: 8)
!366 = !DILocation(line: 110, column: 46, scope: !365)
!367 = !DILocation(line: 110, column: 8, scope: !314)
!368 = !DILocation(line: 111, column: 5, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !2, line: 110, column: 58)
!370 = !DILocation(line: 112, column: 5, scope: !369)
!371 = !DILocation(line: 115, column: 14, scope: !314)
!372 = !DILocation(line: 0, scope: !314)
!373 = !DILocation(line: 116, column: 14, scope: !314)
!374 = !{!259, !259, i64 0}
!375 = !DILocation(line: 117, column: 20, scope: !314)
!376 = !{!257, !261, i64 32}
!377 = !DILocation(line: 117, column: 12, scope: !314)
!378 = !DILocation(line: 117, column: 32, scope: !314)
!379 = !DILocation(line: 117, column: 11, scope: !314)
!380 = !DILocation(line: 118, column: 15, scope: !314)
!381 = !DILocation(line: 120, column: 4, scope: !314)
!382 = !DILocation(line: 124, column: 17, scope: !383)
!383 = distinct !DILexicalBlock(scope: !314, file: !2, line: 124, column: 8)
!384 = !{!261, !261, i64 0}
!385 = !DILocation(line: 124, column: 15, scope: !383)
!386 = !DILocation(line: 124, column: 8, scope: !314)
!387 = !DILocation(line: 125, column: 5, scope: !388)
!388 = distinct !DILexicalBlock(scope: !383, file: !2, line: 124, column: 38)
!389 = !DILocation(line: 126, column: 5, scope: !388)
!390 = !DILocation(line: 127, column: 5, scope: !388)
!391 = !DILocation(line: 119, column: 17, scope: !314)
!392 = !DILocation(line: 129, column: 4, scope: !314)
!393 = !DILocation(line: 130, column: 8, scope: !394)
!394 = distinct !DILexicalBlock(scope: !314, file: !2, line: 130, column: 8)
!395 = !DILocation(line: 130, column: 55, scope: !394)
!396 = !DILocation(line: 0, scope: !315)
!397 = !DILocation(line: 133, column: 1, scope: !310)
!398 = !DILocation(line: 134, column: 3, scope: !310)
!399 = !DILocalVariable(name: "thread", arg: 1, scope: !400, file: !2, line: 54, type: !169)
!400 = distinct !DISubprogram(name: "connection_thread_disconnect", scope: !2, file: !2, line: 54, type: !401, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !403)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !169}
!403 = !{!399}
!404 = !DILocation(line: 0, scope: !400, inlinedAt: !405)
!405 = distinct !DILocation(line: 135, column: 3, scope: !310)
!406 = !DILocation(line: 55, column: 14, scope: !407, inlinedAt: !405)
!407 = distinct !DILexicalBlock(scope: !400, file: !2, line: 55, column: 6)
!408 = !DILocation(line: 55, column: 17, scope: !407, inlinedAt: !405)
!409 = !DILocation(line: 55, column: 6, scope: !400, inlinedAt: !405)
!410 = !DILocation(line: 57, column: 14, scope: !411, inlinedAt: !405)
!411 = distinct !DILexicalBlock(scope: !400, file: !2, line: 57, column: 6)
!412 = !DILocation(line: 57, column: 6, scope: !411, inlinedAt: !405)
!413 = !DILocation(line: 57, column: 6, scope: !400, inlinedAt: !405)
!414 = !DILocation(line: 58, column: 3, scope: !415, inlinedAt: !405)
!415 = distinct !DILexicalBlock(scope: !411, file: !2, line: 57, column: 27)
!416 = !DILocation(line: 59, column: 23, scope: !415, inlinedAt: !405)
!417 = !DILocation(line: 61, column: 19, scope: !400, inlinedAt: !405)
!418 = !DILocation(line: 60, column: 2, scope: !415, inlinedAt: !405)
!419 = !DILocation(line: 61, column: 2, scope: !400, inlinedAt: !405)
!420 = !DILocation(line: 62, column: 13, scope: !400, inlinedAt: !405)
!421 = !DILocation(line: 63, column: 2, scope: !400, inlinedAt: !405)
!422 = !{!257, !261, i64 24}
!423 = !DILocation(line: 64, column: 1, scope: !400, inlinedAt: !405)
!424 = !DILocation(line: 136, column: 3, scope: !310)
!425 = !DILocation(line: 137, column: 2, scope: !311)
!426 = !DISubprogram(name: "ylog_write", scope: !136, file: !136, line: 385, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!427 = !DISubroutineType(types: !428)
!428 = !{!185, !429, !430, !192, !430, !430, null}
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !136, line: 278, baseType: !135)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!431 = !DISubprogram(name: "free", scope: !278, file: !278, line: 555, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !168}
!434 = !DISubprogram(name: "pthread_detach", scope: !283, file: !283, line: 269, type: !435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!435 = !DISubroutineType(types: !436)
!436 = !{!192, !175}
!437 = !DILocation(line: 0, scope: !400)
!438 = !DILocation(line: 55, column: 14, scope: !407)
!439 = !DILocation(line: 55, column: 17, scope: !407)
!440 = !DILocation(line: 55, column: 6, scope: !400)
!441 = !DILocation(line: 57, column: 14, scope: !411)
!442 = !DILocation(line: 57, column: 6, scope: !411)
!443 = !DILocation(line: 57, column: 6, scope: !400)
!444 = !DILocation(line: 58, column: 3, scope: !415)
!445 = !DILocation(line: 59, column: 23, scope: !415)
!446 = !DILocation(line: 61, column: 19, scope: !400)
!447 = !DILocation(line: 60, column: 2, scope: !415)
!448 = !DILocation(line: 61, column: 2, scope: !400)
!449 = !DILocation(line: 62, column: 13, scope: !400)
!450 = !DILocation(line: 63, column: 2, scope: !400)
!451 = !DILocation(line: 64, column: 1, scope: !400)
!452 = !DISubprogram(name: "database_transaction_rollback", scope: !453, file: !453, line: 48, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!453 = !DIFile(filename: "./database.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e933d92e866140a8ca260943c439739b")
!454 = !DISubroutineType(types: !455)
!455 = !{null, !206}
!456 = !DISubprogram(name: "shutdown", scope: !145, file: !145, line: 324, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!457 = !DISubroutineType(types: !458)
!458 = !{!192, !192, !192}
!459 = distinct !DISubprogram(name: "connection_thread_push_socket", scope: !2, file: !2, line: 67, type: !460, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !192, !192}
!462 = !{!463, !464}
!463 = !DILocalVariable(name: "threads_socket", arg: 1, scope: !459, file: !2, line: 67, type: !192)
!464 = !DILocalVariable(name: "fd", arg: 2, scope: !459, file: !2, line: 67, type: !192)
!465 = !DILocation(line: 0, scope: !459)
!466 = !{!262, !262, i64 0}
!467 = !DILocation(line: 69, column: 2, scope: !459)
!468 = !DILocation(line: 70, column: 1, scope: !459)
!469 = !DISubprogram(name: "nn_send", scope: !470, file: !470, line: 248, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!470 = !DIFile(filename: "../../include/nanomsg/nn.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0c95956590725e5a1eedd7f7b192cc23")
!471 = !DISubroutineType(types: !472)
!472 = !{!192, !192, !473, !209, !192}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!475 = !DISubprogram(name: "nn_socket", scope: !470, file: !470, line: 239, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!476 = !DISubprogram(name: "nn_connect", scope: !470, file: !470, line: 246, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!477 = !DISubroutineType(types: !478)
!478 = !{!192, !192, !430}
!479 = !DISubprogram(name: "pthread_exit", scope: !283, file: !283, line: 211, type: !432, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !281)
!480 = !DISubprogram(name: "nn_recv", scope: !470, file: !470, line: 249, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!481 = !DISubroutineType(types: !482)
!482 = !{!192, !192, !168, !209, !192}
!483 = !DISubprogram(name: "ydynabin_new", scope: !230, file: !230, line: 56, type: !484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!484 = !DISubroutineType(types: !485)
!485 = !{!228, !168, !209, !185}
!486 = distinct !DISubprogram(name: "connection_read_data", scope: !2, file: !2, line: 142, type: !487, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !489)
!487 = !DISubroutineType(types: !488)
!488 = !{!226, !169, !228, !209}
!489 = !{!490, !491, !492, !493, !497, !501, !502}
!490 = !DILocalVariable(name: "thread", arg: 1, scope: !486, file: !2, line: 142, type: !169)
!491 = !DILocalVariable(name: "container", arg: 2, scope: !486, file: !2, line: 142, type: !228)
!492 = !DILocalVariable(name: "size", arg: 3, scope: !486, file: !2, line: 142, type: !209)
!493 = !DILocalVariable(name: "buff", scope: !486, file: !2, line: 143, type: !494)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65568, elements: !495)
!495 = !{!496}
!496 = !DISubrange(count: 8196)
!497 = !DILocalVariable(name: "bufsz", scope: !486, file: !2, line: 144, type: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !499, line: 220, baseType: !500)
!499 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !215, line: 194, baseType: !299)
!501 = !DILocalVariable(name: "dynaerr", scope: !486, file: !2, line: 145, type: !226)
!502 = !DILocalVariable(name: "tv", scope: !503, file: !2, line: 153, type: !504)
!503 = distinct !DILexicalBlock(scope: !486, file: !2, line: 151, column: 32)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !505, line: 8, size: 128, elements: !506)
!505 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!506 = !{!507, !509}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !504, file: !505, line: 14, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !215, line: 160, baseType: !299)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !504, file: !505, line: 15, baseType: !510, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !215, line: 162, baseType: !299)
!511 = !DILocation(line: 0, scope: !486)
!512 = !DILocation(line: 143, column: 2, scope: !486)
!513 = !DILocation(line: 143, column: 7, scope: !486)
!514 = !DILocation(line: 147, column: 14, scope: !515)
!515 = distinct !DILexicalBlock(scope: !486, file: !2, line: 147, column: 6)
!516 = !DILocation(line: 147, column: 17, scope: !515)
!517 = !DILocation(line: 147, column: 6, scope: !486)
!518 = !DILocation(line: 149, column: 17, scope: !519)
!519 = distinct !DILexicalBlock(scope: !486, file: !2, line: 149, column: 6)
!520 = !{!521, !258, i64 8}
!521 = !{!"ydynabin_s", !261, i64 0, !258, i64 8, !258, i64 16, !258, i64 24}
!522 = !DILocation(line: 149, column: 21, scope: !519)
!523 = !DILocation(line: 149, column: 6, scope: !486)
!524 = !DILocation(line: 151, column: 2, scope: !486)
!525 = !DILocation(line: 153, column: 3, scope: !503)
!526 = !DILocation(line: 153, column: 18, scope: !503)
!527 = !DILocation(line: 154, column: 23, scope: !503)
!528 = !DILocation(line: 154, column: 31, scope: !503)
!529 = !{!530, !531, i64 40}
!530 = !{!"finedb_s", !259, i64 0, !261, i64 8, !262, i64 16, !262, i64 20, !258, i64 24, !261, i64 32, !531, i64 40}
!531 = !{!"short", !259, i64 0}
!532 = !DILocation(line: 154, column: 15, scope: !503)
!533 = !DILocation(line: 154, column: 13, scope: !503)
!534 = !{!535, !258, i64 0}
!535 = !{!"timeval", !258, i64 0, !258, i64 8}
!536 = !DILocation(line: 155, column: 14, scope: !503)
!537 = !{!535, !258, i64 8}
!538 = !DILocation(line: 156, column: 26, scope: !539)
!539 = distinct !DILexicalBlock(scope: !503, file: !2, line: 156, column: 7)
!540 = !DILocation(line: 156, column: 7, scope: !539)
!541 = !DILocation(line: 156, column: 79, scope: !539)
!542 = !DILocation(line: 156, column: 7, scope: !503)
!543 = !DILocation(line: 157, column: 4, scope: !539)
!544 = !DILocation(line: 159, column: 29, scope: !545)
!545 = distinct !DILexicalBlock(scope: !503, file: !2, line: 159, column: 7)
!546 = !DILocation(line: 159, column: 16, scope: !545)
!547 = !DILocation(line: 159, column: 49, scope: !545)
!548 = !DILocation(line: 159, column: 7, scope: !503)
!549 = !DILocation(line: 160, column: 4, scope: !550)
!550 = distinct !DILexicalBlock(scope: !545, file: !2, line: 159, column: 54)
!551 = !DILocation(line: 161, column: 4, scope: !550)
!552 = !DILocation(line: 163, column: 13, scope: !553)
!553 = distinct !DILexicalBlock(scope: !503, file: !2, line: 163, column: 7)
!554 = !DILocation(line: 163, column: 7, scope: !503)
!555 = !DILocation(line: 164, column: 4, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !2, line: 163, column: 19)
!557 = !DILocation(line: 165, column: 19, scope: !558)
!558 = distinct !DILexicalBlock(scope: !556, file: !2, line: 165, column: 8)
!559 = !DILocation(line: 165, column: 23, scope: !558)
!560 = !DILocation(line: 0, scope: !556)
!561 = !DILocation(line: 176, column: 2, scope: !486)
!562 = !DILocation(line: 170, column: 13, scope: !503)
!563 = !DILocation(line: 171, column: 26, scope: !564)
!564 = distinct !DILexicalBlock(scope: !503, file: !2, line: 171, column: 7)
!565 = !DILocation(line: 171, column: 7, scope: !564)
!566 = !DILocation(line: 171, column: 79, scope: !564)
!567 = !DILocation(line: 171, column: 7, scope: !503)
!568 = !DILocation(line: 172, column: 4, scope: !564)
!569 = !DILocation(line: 174, column: 18, scope: !570)
!570 = distinct !DILexicalBlock(scope: !503, file: !2, line: 174, column: 7)
!571 = !DILocation(line: 174, column: 67, scope: !570)
!572 = !DILocation(line: 151, column: 20, scope: !486)
!573 = !DILocation(line: 151, column: 24, scope: !486)
!574 = !DILocation(line: 178, column: 1, scope: !486)
!575 = !DISubprogram(name: "ydynabin_forward", scope: !230, file: !230, line: 82, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!576 = !DISubroutineType(types: !577)
!577 = !{!168, !228, !209}
!578 = distinct !DISubprogram(name: "connection_send_response", scope: !2, file: !2, line: 181, type: !579, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !582)
!579 = !DISubroutineType(types: !580)
!580 = !{!226, !169, !581, !185, !185, !473, !209}
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_response_t", file: !151, line: 117, baseType: !157)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !599, !613, !614, !615, !616}
!583 = !DILocalVariable(name: "thread", arg: 1, scope: !578, file: !2, line: 181, type: !169)
!584 = !DILocalVariable(name: "code", arg: 2, scope: !578, file: !2, line: 181, type: !581)
!585 = !DILocalVariable(name: "serialized", arg: 3, scope: !578, file: !2, line: 182, type: !185)
!586 = !DILocalVariable(name: "compressed", arg: 4, scope: !578, file: !2, line: 182, type: !185)
!587 = !DILocalVariable(name: "data", arg: 5, scope: !578, file: !2, line: 183, type: !473)
!588 = !DILocalVariable(name: "data_len", arg: 6, scope: !578, file: !2, line: 183, type: !209)
!589 = !DILocalVariable(name: "code_byte", scope: !578, file: !2, line: 184, type: !211)
!590 = !DILocalVariable(name: "iov", scope: !578, file: !2, line: 185, type: !591)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 384, elements: !597)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !593, line: 26, size: 128, elements: !594)
!593 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !592, file: !593, line: 28, baseType: !168, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !592, file: !593, line: 29, baseType: !209, size: 64, offset: 64)
!597 = !{!598}
!598 = !DISubrange(count: 3)
!599 = !DILocalVariable(name: "mh", scope: !578, file: !2, line: 186, type: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !601, line: 259, size: 448, elements: !602)
!601 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!602 = !{!603, !604, !607, !609, !610, !611, !612}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !600, file: !601, line: 261, baseType: !168, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !600, file: !601, line: 262, baseType: !605, size: 32, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !499, line: 274, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !215, line: 210, baseType: !131)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !600, file: !601, line: 264, baseType: !608, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !600, file: !601, line: 265, baseType: !209, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !600, file: !601, line: 267, baseType: !168, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !600, file: !601, line: 268, baseType: !209, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !600, file: !601, line: 273, baseType: !192, size: 32, offset: 384)
!613 = !DILocalVariable(name: "expected", scope: !578, file: !2, line: 187, type: !498)
!614 = !DILocalVariable(name: "rc", scope: !578, file: !2, line: 187, type: !498)
!615 = !DILocalVariable(name: "data_nlen", scope: !578, file: !2, line: 188, type: !216)
!616 = !DILocalVariable(name: "tv", scope: !578, file: !2, line: 189, type: !504)
!617 = !DILocation(line: 0, scope: !578)
!618 = !DILocation(line: 184, column: 2, scope: !578)
!619 = !DILocation(line: 185, column: 2, scope: !578)
!620 = !DILocation(line: 185, column: 15, scope: !578)
!621 = !DILocation(line: 186, column: 2, scope: !578)
!622 = !DILocation(line: 186, column: 16, scope: !578)
!623 = !DILocation(line: 188, column: 2, scope: !578)
!624 = !DILocation(line: 189, column: 2, scope: !578)
!625 = !DILocation(line: 189, column: 17, scope: !578)
!626 = !DILocation(line: 191, column: 2, scope: !578)
!627 = !DILocation(line: 192, column: 14, scope: !578)
!628 = !{!629, !261, i64 0}
!629 = !{!"msghdr", !261, i64 0, !262, i64 8, !261, i64 16, !258, i64 24, !261, i64 32, !258, i64 40, !262, i64 48}
!630 = !DILocation(line: 193, column: 5, scope: !578)
!631 = !DILocation(line: 193, column: 17, scope: !578)
!632 = !{!629, !262, i64 8}
!633 = !DILocation(line: 194, column: 5, scope: !578)
!634 = !DILocation(line: 194, column: 13, scope: !578)
!635 = !{!629, !261, i64 16}
!636 = !DILocation(line: 195, column: 5, scope: !578)
!637 = !DILocation(line: 195, column: 16, scope: !578)
!638 = !{!629, !258, i64 24}
!639 = !DILocation(line: 196, column: 5, scope: !578)
!640 = !DILocation(line: 200, column: 14, scope: !578)
!641 = !DILocation(line: 201, column: 6, scope: !642)
!642 = distinct !DILexicalBlock(scope: !578, file: !2, line: 201, column: 6)
!643 = !DILocation(line: 201, column: 6, scope: !578)
!644 = !DILocation(line: 203, column: 6, scope: !645)
!645 = distinct !DILexicalBlock(scope: !578, file: !2, line: 203, column: 6)
!646 = !DILocation(line: 203, column: 6, scope: !578)
!647 = !DILocation(line: 197, column: 20, scope: !578)
!648 = !DILocation(line: 205, column: 18, scope: !578)
!649 = !{!650, !261, i64 0}
!650 = !{!"iovec", !261, i64 0, !258, i64 8}
!651 = !DILocation(line: 206, column: 9, scope: !578)
!652 = !DILocation(line: 206, column: 17, scope: !578)
!653 = !{!650, !258, i64 8}
!654 = !DILocation(line: 208, column: 11, scope: !655)
!655 = distinct !DILexicalBlock(scope: !578, file: !2, line: 208, column: 6)
!656 = !DILocation(line: 208, column: 6, scope: !578)
!657 = !DILocation(line: 209, column: 15, scope: !658)
!658 = distinct !DILexicalBlock(scope: !655, file: !2, line: 208, column: 20)
!659 = !DILocalVariable(name: "__bsx", arg: 1, scope: !660, file: !661, line: 49, type: !218)
!660 = distinct !DISubprogram(name: "__bswap_32", scope: !661, file: !661, line: 49, type: !662, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !664)
!661 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!662 = !DISubroutineType(types: !663)
!663 = !{!218, !218}
!664 = !{!659}
!665 = !DILocation(line: 0, scope: !660, inlinedAt: !666)
!666 = distinct !DILocation(line: 209, column: 15, scope: !658)
!667 = !DILocation(line: 54, column: 10, scope: !660, inlinedAt: !666)
!668 = !DILocation(line: 209, column: 13, scope: !658)
!669 = !DILocation(line: 210, column: 3, scope: !658)
!670 = !DILocation(line: 210, column: 19, scope: !658)
!671 = !DILocation(line: 211, column: 10, scope: !658)
!672 = !DILocation(line: 211, column: 18, scope: !658)
!673 = !DILocation(line: 212, column: 3, scope: !658)
!674 = !DILocation(line: 212, column: 19, scope: !658)
!675 = !DILocation(line: 213, column: 10, scope: !658)
!676 = !DILocation(line: 213, column: 18, scope: !658)
!677 = !DILocation(line: 214, column: 17, scope: !658)
!678 = !DILocation(line: 215, column: 12, scope: !658)
!679 = !DILocation(line: 216, column: 2, scope: !658)
!680 = !DILocation(line: 218, column: 22, scope: !578)
!681 = !DILocation(line: 218, column: 30, scope: !578)
!682 = !DILocation(line: 218, column: 14, scope: !578)
!683 = !DILocation(line: 218, column: 12, scope: !578)
!684 = !DILocation(line: 219, column: 5, scope: !578)
!685 = !DILocation(line: 219, column: 13, scope: !578)
!686 = !DILocation(line: 220, column: 25, scope: !687)
!687 = distinct !DILexicalBlock(scope: !578, file: !2, line: 220, column: 6)
!688 = !DILocation(line: 220, column: 6, scope: !687)
!689 = !DILocation(line: 220, column: 78, scope: !687)
!690 = !DILocation(line: 220, column: 6, scope: !578)
!691 = !DILocation(line: 221, column: 3, scope: !687)
!692 = !DILocation(line: 223, column: 23, scope: !578)
!693 = !DILocation(line: 223, column: 7, scope: !578)
!694 = !DILocation(line: 224, column: 9, scope: !695)
!695 = distinct !DILexicalBlock(scope: !578, file: !2, line: 224, column: 6)
!696 = !DILocation(line: 224, column: 6, scope: !578)
!697 = !DILocation(line: 225, column: 3, scope: !698)
!698 = distinct !DILexicalBlock(scope: !695, file: !2, line: 224, column: 14)
!699 = !DILocation(line: 226, column: 3, scope: !698)
!700 = !DILocation(line: 227, column: 16, scope: !701)
!701 = distinct !DILexicalBlock(scope: !695, file: !2, line: 227, column: 13)
!702 = !DILocation(line: 227, column: 13, scope: !695)
!703 = !DILocation(line: 228, column: 3, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !2, line: 227, column: 28)
!705 = !DILocation(line: 229, column: 3, scope: !704)
!706 = !DILocation(line: 230, column: 16, scope: !707)
!707 = distinct !DILexicalBlock(scope: !701, file: !2, line: 230, column: 13)
!708 = !DILocation(line: 230, column: 13, scope: !701)
!709 = !DILocation(line: 231, column: 3, scope: !710)
!710 = distinct !DILexicalBlock(scope: !707, file: !2, line: 230, column: 28)
!711 = !DILocation(line: 232, column: 3, scope: !710)
!712 = !DILocation(line: 235, column: 12, scope: !578)
!713 = !DILocation(line: 236, column: 25, scope: !714)
!714 = distinct !DILexicalBlock(scope: !578, file: !2, line: 236, column: 6)
!715 = !DILocation(line: 236, column: 6, scope: !714)
!716 = !DILocation(line: 236, column: 78, scope: !714)
!717 = !DILocation(line: 236, column: 6, scope: !578)
!718 = !DILocation(line: 237, column: 3, scope: !714)
!719 = !DILocation(line: 239, column: 2, scope: !578)
!720 = !DILocation(line: 240, column: 2, scope: !578)
!721 = !DILocation(line: 241, column: 1, scope: !578)
!722 = !DISubprogram(name: "ydynabin_delete", scope: !230, file: !230, line: 63, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !228}
!725 = !DISubprogram(name: "setsockopt", scope: !145, file: !145, line: 277, type: !726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!726 = !DISubroutineType(types: !727)
!727 = !{!192, !192, !192, !192, !473, !605}
!728 = !DISubprogram(name: "recv", scope: !145, file: !145, line: 145, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!729 = !DISubroutineType(types: !730)
!730 = !{!498, !192, !168, !209, !192}
!731 = !DISubprogram(name: "ydynabin_expand", scope: !230, file: !230, line: 73, type: !732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!732 = !DISubroutineType(types: !733)
!733 = !{!226, !228, !168, !209}
!734 = !DISubprogram(name: "sendmsg", scope: !145, file: !145, line: 174, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!735 = !DISubroutineType(types: !736)
!736 = !{!498, !192, !737, !192}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
