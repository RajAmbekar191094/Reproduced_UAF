; ModuleID = 'command_put.c'
source_filename = "command_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snappy_env = type { ptr, ptr, ptr }
%struct.tcp_thread_s = type { i64, ptr, i32, i32, ptr, ptr }
%struct.writer_msg_s = type { i32, ptr, %struct.ybin_s, %struct.ybin_s, i32 }
%struct.ybin_s = type { ptr, i64 }
%struct.finedb_s = type { i32, ptr, i32, i32, i64, ptr, i16 }

@.str = private unnamed_addr constant [14 x i8] c"command_put.c\00", align 1, !dbg !0
@__FUNCTION__.command_put = private unnamed_addr constant [12 x i8] c"command_put\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [12 x i8] c"PUT command\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [13 x i8] c"NAME : '%s'.\00", align 1, !dbg !16
@.str.3 = private unnamed_addr constant [13 x i8] c"DATA : '%s'.\00", align 1, !dbg !21
@.str.4 = private unnamed_addr constant [37 x i8] c"Unable to create Snappy environment.\00", align 1, !dbg !23
@.str.5 = private unnamed_addr constant [27 x i8] c"Unable to allocate memory.\00", align 1, !dbg !28
@.str.6 = private unnamed_addr constant [25 x i8] c"Unable to compress data.\00", align 1, !dbg !33
@.str.7 = private unnamed_addr constant [41 x i8] c"Unable to send message to writer thread.\00", align 1, !dbg !38
@.str.12 = private unnamed_addr constant [26 x i8] c"Data written to database.\00", align 1, !dbg !43
@.str.13 = private unnamed_addr constant [36 x i8] c"Unable to write data into database.\00", align 1, !dbg !48
@.str.15 = private unnamed_addr constant [15 x i8] c"PUT command %s\00", align 1, !dbg !53
@.str.16 = private unnamed_addr constant [3 x i8] c"OK\00", align 1, !dbg !58
@.str.17 = private unnamed_addr constant [7 x i8] c"failed\00", align 1, !dbg !63
@.str.18 = private unnamed_addr constant [10 x i8] c"PUT error\00", align 1, !dbg !68

; Function Attrs: nounwind uwtable
define dso_local i32 @command_put(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !142 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.snappy_env, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !195, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i32 %1, metadata !196, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i32 %2, metadata !197, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i32 %3, metadata !198, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata ptr %4, metadata !199, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i32 0, metadata !200, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i32 0, metadata !201, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata ptr null, metadata !213, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata ptr null, metadata !214, metadata !DIExpression()), !dbg !250
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10, !dbg !251
  call void @llvm.dbg.value(metadata ptr null, metadata !215, metadata !DIExpression()), !dbg !250
  store ptr null, ptr %6, align 8, !dbg !252, !tbaa !253
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10, !dbg !257
  call void @llvm.dbg.value(metadata ptr null, metadata !234, metadata !DIExpression()), !dbg !250
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %8, metadata !235, metadata !DIExpression()), !dbg !259
  %9 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 5, !dbg !260
  %10 = load ptr, ptr %9, align 8, !dbg !260, !tbaa !261
  call void @llvm.dbg.value(metadata ptr %10, metadata !243, metadata !DIExpression()), !dbg !250
  %11 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 25, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.1) #10, !dbg !265
  call void @llvm.dbg.value(metadata i32 %1, metadata !196, metadata !DIExpression()), !dbg !250
  %12 = tail call i32 @connection_read_data(ptr noundef %0, ptr noundef %4, i64 noundef 2) #10, !dbg !266
  %13 = icmp eq i32 %12, 1, !dbg !268
  br i1 %13, label %14, label %124, !dbg !269

14:                                               ; preds = %5
  %15 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef 2) #10, !dbg !270
  call void @llvm.dbg.value(metadata ptr %15, metadata !202, metadata !DIExpression()), !dbg !250
  %16 = load i16, ptr %15, align 2, !dbg !271, !tbaa !272
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  call void @llvm.dbg.value(metadata i16 %17, metadata !206, metadata !DIExpression()), !dbg !250
  %18 = zext i16 %17 to i64, !dbg !274
  %19 = tail call i32 @connection_read_data(ptr noundef nonnull %0, ptr noundef %4, i64 noundef %18) #10, !dbg !276
  %20 = icmp eq i32 %19, 1, !dbg !277
  br i1 %20, label %21, label %124, !dbg !278

21:                                               ; preds = %14
  %22 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef %18) #10, !dbg !279
  call void @llvm.dbg.value(metadata ptr %22, metadata !212, metadata !DIExpression()), !dbg !250
  %23 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %18) #11, !dbg !280
  call void @llvm.dbg.value(metadata ptr %23, metadata !213, metadata !DIExpression()), !dbg !250
  %24 = icmp eq ptr %23, null, !dbg !282
  br i1 %24, label %124, label %25, !dbg !283

25:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr align 1 %22, i64 %18, i1 false), !dbg !284
  %26 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 40, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.2, ptr noundef nonnull %23) #10, !dbg !285
  %27 = tail call i32 @connection_read_data(ptr noundef nonnull %0, ptr noundef %4, i64 noundef 4) #10, !dbg !286
  %28 = icmp eq i32 %27, 1, !dbg !288
  br i1 %28, label %29, label %126, !dbg !289

29:                                               ; preds = %25
  %30 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef 4) #10, !dbg !290
  call void @llvm.dbg.value(metadata ptr %30, metadata !207, metadata !DIExpression()), !dbg !250
  %31 = load i32, ptr %30, align 4, !dbg !291, !tbaa !292
  call void @llvm.dbg.value(metadata i32 %31, metadata !293, metadata !DIExpression()), !dbg !299
  %32 = tail call i32 @llvm.bswap.i32(i32 %31), !dbg !301
  call void @llvm.dbg.value(metadata i32 %32, metadata !211, metadata !DIExpression()), !dbg !250
  %33 = icmp eq i32 %31, 0, !dbg !302
  br i1 %33, label %44, label %34, !dbg !304

34:                                               ; preds = %29
  %35 = zext i32 %32 to i64, !dbg !305
  %36 = tail call i32 @connection_read_data(ptr noundef nonnull %0, ptr noundef %4, i64 noundef %35) #10, !dbg !308
  %37 = icmp eq i32 %36, 1, !dbg !309
  br i1 %37, label %38, label %126, !dbg !310

38:                                               ; preds = %34
  %39 = tail call ptr @ydynabin_forward(ptr noundef %4, i64 noundef %35) #10, !dbg !311
  call void @llvm.dbg.value(metadata ptr %39, metadata !212, metadata !DIExpression()), !dbg !250
  %40 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %35) #11, !dbg !312
  call void @llvm.dbg.value(metadata ptr %40, metadata !214, metadata !DIExpression()), !dbg !250
  %41 = icmp eq ptr %40, null, !dbg !314
  br i1 %41, label %126, label %42, !dbg !315

42:                                               ; preds = %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %40, ptr align 1 %39, i64 %35, i1 false), !dbg !316
  %43 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 54, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.3, ptr noundef nonnull %40) #10, !dbg !317
  br label %44, !dbg !318

44:                                               ; preds = %42, %29
  %45 = phi ptr [ %40, %42 ], [ null, %29 ], !dbg !250
  call void @llvm.dbg.value(metadata ptr %45, metadata !214, metadata !DIExpression()), !dbg !250
  %46 = icmp eq i32 %1, 0, !dbg !319
  br i1 %46, label %47, label %49, !dbg !321

47:                                               ; preds = %44
  %48 = tail call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #10, !dbg !322
  br label %49, !dbg !322

49:                                               ; preds = %47, %44
  %50 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #11, !dbg !323
  call void @llvm.dbg.value(metadata ptr %50, metadata !215, metadata !DIExpression()), !dbg !250
  store ptr %50, ptr %6, align 8, !dbg !325, !tbaa !253
  %51 = icmp eq ptr %50, null, !dbg !326
  br i1 %51, label %126, label %52, !dbg !327

52:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %50, metadata !215, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata ptr %50, metadata !215, metadata !DIExpression()), !dbg !250
  %53 = getelementptr inbounds %struct.writer_msg_s, ptr %50, i64 0, i32 2, !dbg !328
  %54 = tail call ptr @ybin_set(ptr noundef nonnull %53, ptr noundef nonnull %23, i64 noundef %18) #10, !dbg !329
  %55 = icmp eq i32 %2, 0, !dbg !330
  br i1 %55, label %60, label %56, !dbg !332

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata ptr %50, metadata !215, metadata !DIExpression()), !dbg !250
  %57 = getelementptr inbounds %struct.writer_msg_s, ptr %50, i64 0, i32 3, !dbg !333
  %58 = zext i32 %32 to i64, !dbg !335
  %59 = tail call ptr @ybin_set(ptr noundef nonnull %57, ptr noundef %45, i64 noundef %58) #10, !dbg !336
  br label %85, !dbg !337

60:                                               ; preds = %52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !dbg !338
  %61 = call i32 @snappy_init_env(ptr noundef nonnull %8) #10, !dbg !340
  %62 = icmp eq i32 %61, 0, !dbg !340
  br i1 %62, label %65, label %63, !dbg !342

63:                                               ; preds = %60
  %64 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 73, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.4) #10, !dbg !343
  br label %126, !dbg !345

65:                                               ; preds = %60
  %66 = zext i32 %32 to i64, !dbg !346
  %67 = call i64 @snappy_max_compressed_length(i64 noundef %66) #10, !dbg !346
  %68 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %67) #11, !dbg !346
  call void @llvm.dbg.value(metadata ptr %68, metadata !234, metadata !DIExpression()), !dbg !250
  %69 = icmp eq ptr %68, null, !dbg !348
  br i1 %69, label %70, label %72, !dbg !349

70:                                               ; preds = %65
  %71 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 77, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.5) #10, !dbg !350
  br label %126, !dbg !352

72:                                               ; preds = %65
  call void @llvm.dbg.value(metadata ptr %7, metadata !233, metadata !DIExpression(DW_OP_deref)), !dbg !250
  %73 = call i32 @snappy_compress(ptr noundef nonnull %8, ptr noundef %45, i64 noundef %66, ptr noundef nonnull %68, ptr noundef nonnull %7) #10, !dbg !353
  %74 = icmp eq i32 %73, 0, !dbg !353
  br i1 %74, label %77, label %75, !dbg !355

75:                                               ; preds = %72
  call void @free(ptr noundef nonnull %68) #10, !dbg !356
  call void @llvm.dbg.value(metadata ptr null, metadata !234, metadata !DIExpression()), !dbg !250
  %76 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.6) #10, !dbg !358
  br label %126, !dbg !359

77:                                               ; preds = %72
  %78 = load i64, ptr %7, align 8, !dbg !360, !tbaa !361
  call void @llvm.dbg.value(metadata i64 %78, metadata !233, metadata !DIExpression()), !dbg !250
  %79 = getelementptr inbounds i8, ptr %68, i64 %78, !dbg !362
  store i8 0, ptr %79, align 1, !dbg !363, !tbaa !364
  call void @snappy_free_env(ptr noundef nonnull %8) #10, !dbg !365
  call void @llvm.dbg.value(metadata ptr %50, metadata !215, metadata !DIExpression()), !dbg !250
  %80 = getelementptr inbounds %struct.writer_msg_s, ptr %50, i64 0, i32 3, !dbg !366
  %81 = load i64, ptr %7, align 8, !dbg !367, !tbaa !361
  call void @llvm.dbg.value(metadata i64 %81, metadata !233, metadata !DIExpression()), !dbg !250
  %82 = call ptr @ybin_set(ptr noundef nonnull %80, ptr noundef nonnull %68, i64 noundef %81) #10, !dbg !368
  %83 = icmp eq ptr %45, null, !dbg !369
  br i1 %83, label %85, label %84, !dbg !369

84:                                               ; preds = %77
  call void @free(ptr noundef nonnull %45) #10, !dbg !369
  br label %85, !dbg !369

85:                                               ; preds = %84, %77, %56
  %86 = phi ptr [ %45, %56 ], [ null, %77 ], [ null, %84 ], !dbg !250
  call void @llvm.dbg.value(metadata ptr %86, metadata !214, metadata !DIExpression()), !dbg !250
  br i1 %46, label %87, label %102, !dbg !370

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !372
  %89 = load ptr, ptr %88, align 8, !dbg !372, !tbaa !374
  %90 = icmp eq ptr %89, null, !dbg !375
  br i1 %90, label %93, label %91, !dbg !375

91:                                               ; preds = %87
  %92 = call noalias ptr @strdup(ptr noundef nonnull %89) #10, !dbg !376
  br label %93, !dbg !375

93:                                               ; preds = %87, %91
  %94 = phi ptr [ %92, %91 ], [ null, %87 ], !dbg !375
  call void @llvm.dbg.value(metadata ptr %50, metadata !215, metadata !DIExpression()), !dbg !250
  %95 = getelementptr inbounds %struct.writer_msg_s, ptr %50, i64 0, i32 1, !dbg !377
  store ptr %94, ptr %95, align 8, !dbg !378, !tbaa !379
  %96 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 3, !dbg !382
  %97 = load i32, ptr %96, align 4, !dbg !382, !tbaa !384
  call void @llvm.dbg.value(metadata ptr %6, metadata !215, metadata !DIExpression(DW_OP_deref)), !dbg !250
  %98 = call i32 @nn_send(i32 noundef %97, ptr noundef nonnull %6, i64 noundef 8, i32 noundef 0) #10, !dbg !385
  %99 = icmp slt i32 %98, 0, !dbg !386
  br i1 %99, label %100, label %137, !dbg !387

100:                                              ; preds = %93
  %101 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 94, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.7) #10, !dbg !388
  br label %126, !dbg !390

102:                                              ; preds = %85
  call void @llvm.dbg.value(metadata ptr %10, metadata !243, metadata !DIExpression()), !dbg !250
  %103 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 1, !dbg !391
  %104 = load ptr, ptr %103, align 8, !dbg !391, !tbaa !393
  %105 = getelementptr inbounds %struct.finedb_s, ptr %104, i64 0, i32 1, !dbg !394
  %106 = load ptr, ptr %105, align 8, !dbg !394, !tbaa !395
  %107 = getelementptr inbounds %struct.tcp_thread_s, ptr %0, i64 0, i32 4, !dbg !397
  %108 = load ptr, ptr %107, align 8, !dbg !397, !tbaa !374
  call void @llvm.dbg.value(metadata ptr %50, metadata !215, metadata !DIExpression()), !dbg !250
  %109 = getelementptr inbounds %struct.writer_msg_s, ptr %50, i64 0, i32 3, !dbg !398
  %110 = load ptr, ptr %53, align 8, !dbg !399
  %111 = getelementptr inbounds %struct.writer_msg_s, ptr %50, i64 0, i32 2, i32 1, !dbg !399
  %112 = load i64, ptr %111, align 8, !dbg !399
  %113 = call i32 @database_put(ptr noundef %106, ptr noundef %10, i32 noundef 0, ptr noundef %108, ptr %110, i64 %112, ptr noundef nonnull byval(%struct.ybin_s) align 8 %109) #10, !dbg !399
  %114 = icmp eq i32 %113, 1, !dbg !400
  br i1 %114, label %115, label %117, !dbg !401

115:                                              ; preds = %102
  %116 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 125, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.12) #10, !dbg !402
  call void @llvm.dbg.value(metadata i8 1, metadata !232, metadata !DIExpression()), !dbg !250
  br label %119, !dbg !404

117:                                              ; preds = %102
  %118 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.13) #10, !dbg !405
  call void @llvm.dbg.value(metadata i8 0, metadata !232, metadata !DIExpression()), !dbg !250
  br label %119

119:                                              ; preds = %115, %117
  %120 = phi i32 [ 1, %115 ], [ 6, %117 ], !dbg !250
  %121 = phi ptr [ @.str.16, %115 ], [ @.str.17, %117 ], !dbg !250
  call void @llvm.dbg.value(metadata i8 poison, metadata !232, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i8 poison, metadata !232, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.label(metadata !248), !dbg !407
  %122 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.15, ptr noundef nonnull %121) #10, !dbg !408
  %123 = call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef %120, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #10, !dbg !409
  br label %137, !dbg !410

124:                                              ; preds = %5, %14, %21
  call void @llvm.dbg.value(metadata ptr poison, metadata !214, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata ptr null, metadata !213, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.label(metadata !249), !dbg !411
  %125 = tail call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 142, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.18) #10, !dbg !412
  call void @llvm.dbg.value(metadata ptr null, metadata !213, metadata !DIExpression()), !dbg !250
  br label %131, !dbg !413

126:                                              ; preds = %75, %70, %63, %100, %49, %38, %34, %25
  %127 = phi ptr [ %45, %75 ], [ %45, %70 ], [ %45, %63 ], [ %86, %100 ], [ %45, %49 ], [ null, %38 ], [ null, %34 ], [ null, %25 ]
  call void @llvm.dbg.value(metadata ptr %127, metadata !214, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata ptr %23, metadata !213, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.label(metadata !249), !dbg !411
  %128 = call i32 (i32, ptr, i32, ptr, ptr, ...) @ylog_write(i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 142, ptr noundef nonnull @__FUNCTION__.command_put, ptr noundef nonnull @.str.18) #10, !dbg !412
  call void @free(ptr noundef nonnull %23) #10, !dbg !414
  call void @llvm.dbg.value(metadata ptr null, metadata !213, metadata !DIExpression()), !dbg !250
  %129 = icmp eq ptr %127, null, !dbg !413
  br i1 %129, label %131, label %130, !dbg !413

130:                                              ; preds = %126
  call void @free(ptr noundef nonnull %127) #10, !dbg !413
  br label %131, !dbg !413

131:                                              ; preds = %124, %126, %130
  call void @llvm.dbg.value(metadata ptr null, metadata !214, metadata !DIExpression()), !dbg !250
  %132 = load ptr, ptr %6, align 8, !dbg !415, !tbaa !253
  call void @llvm.dbg.value(metadata ptr %132, metadata !215, metadata !DIExpression()), !dbg !250
  %133 = icmp eq ptr %132, null, !dbg !415
  br i1 %133, label %135, label %134, !dbg !415

134:                                              ; preds = %131
  call void @free(ptr noundef nonnull %132) #10, !dbg !415
  br label %135, !dbg !415

135:                                              ; preds = %131, %134
  call void @llvm.dbg.value(metadata ptr null, metadata !215, metadata !DIExpression()), !dbg !250
  store ptr null, ptr %6, align 8, !dbg !415, !tbaa !253
  %136 = call i32 @connection_send_response(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef null, i64 noundef 0) #10, !dbg !416
  br label %137, !dbg !417

137:                                              ; preds = %93, %135, %119
  %138 = phi i32 [ -5, %135 ], [ %123, %119 ], [ 1, %93 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10, !dbg !418
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10, !dbg !418
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10, !dbg !418
  ret i32 %138, !dbg !418
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !419 i32 @ylog_write(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !425 i32 @connection_read_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !428 ptr @ydynabin_forward(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !431 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !435 i32 @connection_send_response(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !441 ptr @ybin_set(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare !dbg !445 i32 @snappy_init_env(ptr noundef) local_unnamed_addr #3

declare !dbg !449 i64 @snappy_max_compressed_length(i64 noundef) local_unnamed_addr #3

declare !dbg !452 i32 @snappy_compress(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !456 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

declare !dbg !459 void @snappy_free_env(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !462 noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #8

declare !dbg !466 i32 @nn_send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !470 i32 @database_put(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr, i64, ptr noundef byval(%struct.ybin_s) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!73}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "command_put.c", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9da0ac82fe52607193c75654eb3eec33")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 14)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 96, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 12)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !11)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 13)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !18, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 37)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 27)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 25)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 41)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 26)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 36)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 15)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 3)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 7)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 10)
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, retainedTypes: !107, globals: !115, splitDebugInlining: false, nameTableKind: None)
!74 = !{!75, !81, !87, !96}
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !76, line: 45, baseType: !77, size: 32, elements: !78)
!76 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!77 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!78 = !{!79, !80}
!79 = !DIEnumerator(name: "YFALSE", value: 0)
!80 = !DIEnumerator(name: "YTRUE", value: 1)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writer_action_e", file: !82, line: 13, baseType: !77, size: 32, elements: !83)
!82 = !DIFile(filename: "./writer_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "3a724ae2321376421ad42c1087f049ab")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "WRITE_PUT", value: 0)
!85 = !DIEnumerator(name: "WRITE_DEL", value: 1)
!86 = !DIEnumerator(name: "WRITE_DROP", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ylog_priority_e", file: !88, line: 267, baseType: !77, size: 32, elements: !89)
!88 = !DIFile(filename: "../../lib/ylib/ylog.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0a4bfecb6867d4cb83bdff3f2b1d4b13")
!89 = !{!90, !91, !92, !93, !94, !95}
!90 = !DIEnumerator(name: "YLOG_DEBUG", value: 0)
!91 = !DIEnumerator(name: "YLOG_INFO", value: 1)
!92 = !DIEnumerator(name: "YLOG_NOTE", value: 2)
!93 = !DIEnumerator(name: "YLOG_WARN", value: 3)
!94 = !DIEnumerator(name: "YLOG_ERR", value: 4)
!95 = !DIEnumerator(name: "YLOG_CRIT", value: 5)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "protocol_response_e", file: !97, line: 108, baseType: !77, size: 32, elements: !98)
!97 = !DIFile(filename: "./protocol.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "90e12b9ba2bd5e3d7e691fccfd080d02")
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106}
!99 = !DIEnumerator(name: "RESP_ERR_UNDEFINED", value: 0)
!100 = !DIEnumerator(name: "RESP_OK", value: 1)
!101 = !DIEnumerator(name: "RESP_ERR_PROTOCOL", value: 2)
!102 = !DIEnumerator(name: "RESP_ERR_SERVER", value: 3)
!103 = !DIEnumerator(name: "RESP_ERR_FULL_DB", value: 4)
!104 = !DIEnumerator(name: "RESP_ERR_TOO_MANY_DB", value: 5)
!105 = !DIEnumerator(name: "RESP_ERR_BAD_NAME", value: 6)
!106 = !DIEnumerator(name: "RESP_ERR_TRANSACTION", value: 7)
!107 = !{!108, !109, !112}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 46, baseType: !111)
!110 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!111 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !113, line: 40, baseType: !114)
!113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!114 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!115 = !{!0, !7, !13, !16, !21, !23, !28, !33, !38, !116, !118, !123, !128, !43, !48, !130, !53, !58, !63, !68}
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !18, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 28)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 19)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !35, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 30)
!135 = !{i32 7, !"Dwarf Version", i32 5}
!136 = !{i32 2, !"Debug Info Version", i32 3}
!137 = !{i32 1, !"wchar_size", i32 4}
!138 = !{i32 8, !"PIC Level", i32 2}
!139 = !{i32 7, !"PIE Level", i32 2}
!140 = !{i32 7, !"uwtable", i32 2}
!141 = !{!"clang version 16.0.0"}
!142 = distinct !DISubprogram(name: "command_put", scope: !2, file: !2, line: 12, type: !143, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !194)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !148, !163, !163, !163, !185}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "yerr_t", file: !146, line: 23, baseType: !147)
!146 = !DIFile(filename: "../../lib/ylib/yerror.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "4851c124a64e017d0b9d8820f73f7100")
!147 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_thread_t", file: !150, line: 30, baseType: !151)
!150 = !DIFile(filename: "./connection_thread.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "285f9cd07088f6d468faef64cb1dc74b")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_thread_s", file: !150, line: 23, size: 320, elements: !152)
!152 = !{!153, !156, !177, !178, !179, !181}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !151, file: !150, line: 24, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !155, line: 27, baseType: !111)
!155 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!156 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !151, file: !150, line: 25, baseType: !157, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_t", file: !159, line: 49, baseType: !160)
!159 = !DIFile(filename: "./finedb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "349d81e48e8fe143f3d7a471f97edb42")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_s", file: !159, line: 41, size: 384, elements: !161)
!161 = !{!162, !164, !169, !170, !171, !172, !176}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !160, file: !159, line: 42, baseType: !163, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !76, line: 52, baseType: !75)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !160, file: !159, line: 43, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_env", file: !167, line: 197, baseType: !168)
!167 = !DIFile(filename: "../../lib/lmdb/lmdb.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "9ff9d4834608bdc966449cf81c779c6a")
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_env", file: !167, line: 197, flags: DIFlagFwdDecl)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !160, file: !159, line: 44, baseType: !147, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "threads_socket", scope: !160, file: !159, line: 45, baseType: !147, size: 32, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "writer_tid", scope: !160, file: !159, line: 46, baseType: !154, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_threads", scope: !160, file: !159, line: 47, baseType: !173, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "yvect_t", file: !174, line: 56, baseType: !175)
!174 = !DIFile(filename: "../../lib/ylib/yvect.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "73ac1eb655eaae5d93c48c36880d9ca2")
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !160, file: !159, line: 48, baseType: !114, size: 16, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !151, file: !150, line: 26, baseType: !147, size: 32, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "write_sock", scope: !151, file: !150, line: 27, baseType: !147, size: 32, offset: 160)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !151, file: !150, line: 28, baseType: !180, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "transaction", scope: !151, file: !150, line: 29, baseType: !182, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "MDB_txn", file: !167, line: 204, baseType: !184)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "MDB_txn", file: !167, line: 204, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "ydynabin_t", file: !187, line: 45, baseType: !188)
!187 = !DIFile(filename: "../../lib/ylib/ydynabin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e9b56a3dd8293288d1beb69b8bafd958")
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ydynabin_s", file: !187, line: 37, size: 256, elements: !189)
!189 = !{!190, !191, !192, !193}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !188, file: !187, line: 38, baseType: !108, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !188, file: !187, line: 39, baseType: !109, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !188, file: !187, line: 40, baseType: !109, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !188, file: !187, line: 41, baseType: !109, size: 64, offset: 192)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !206, !207, !211, !212, !213, !214, !215, !232, !233, !234, !235, !243, !244, !247, !248, !249}
!195 = !DILocalVariable(name: "thread", arg: 1, scope: !142, file: !2, line: 12, type: !148)
!196 = !DILocalVariable(name: "sync", arg: 2, scope: !142, file: !2, line: 12, type: !163)
!197 = !DILocalVariable(name: "compress", arg: 3, scope: !142, file: !2, line: 12, type: !163)
!198 = !DILocalVariable(name: "serialized", arg: 4, scope: !142, file: !2, line: 12, type: !163)
!199 = !DILocalVariable(name: "buff", arg: 5, scope: !142, file: !2, line: 12, type: !185)
!200 = !DILocalVariable(name: "create_only", scope: !142, file: !2, line: 13, type: !163)
!201 = !DILocalVariable(name: "update_only", scope: !142, file: !2, line: 13, type: !163)
!202 = !DILocalVariable(name: "pname_len", scope: !142, file: !2, line: 15, type: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !205, line: 25, baseType: !112)
!205 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!206 = !DILocalVariable(name: "name_len", scope: !142, file: !2, line: 15, type: !204)
!207 = !DILocalVariable(name: "pdata_len", scope: !142, file: !2, line: 16, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !205, line: 26, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !113, line: 42, baseType: !77)
!211 = !DILocalVariable(name: "data_len", scope: !142, file: !2, line: 16, type: !209)
!212 = !DILocalVariable(name: "ptr", scope: !142, file: !2, line: 17, type: !108)
!213 = !DILocalVariable(name: "name", scope: !142, file: !2, line: 17, type: !108)
!214 = !DILocalVariable(name: "data", scope: !142, file: !2, line: 17, type: !108)
!215 = !DILocalVariable(name: "msg", scope: !142, file: !2, line: 18, type: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "writer_msg_t", file: !82, line: 34, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writer_msg_s", file: !82, line: 28, size: 448, elements: !219)
!219 = !{!220, !222, !223, !230, !231}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !218, file: !82, line: 29, baseType: !221, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "writer_action_t", file: !82, line: 17, baseType: !81)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !218, file: !82, line: 30, baseType: !180, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !82, line: 31, baseType: !224, size: 128, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !225, line: 33, baseType: !226)
!225 = !DIFile(filename: "../../lib/ylib/ybin.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "7abd7d5e6afd31e8416cab6f0a6bf3b3")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !225, line: 27, size: 128, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !226, file: !225, line: 28, baseType: !108, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !226, file: !225, line: 29, baseType: !109, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !218, file: !82, line: 32, baseType: !224, size: 128, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "create_only", scope: !218, file: !82, line: 33, baseType: !163, size: 32, offset: 384)
!232 = !DILocalVariable(name: "answer", scope: !142, file: !2, line: 19, type: !4)
!233 = !DILocalVariable(name: "zip_len", scope: !142, file: !2, line: 20, type: !109)
!234 = !DILocalVariable(name: "zip_data", scope: !142, file: !2, line: 21, type: !180)
!235 = !DILocalVariable(name: "zip_env", scope: !142, file: !2, line: 22, type: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snappy_env", file: !237, line: 8, size: 192, elements: !238)
!237 = !DIFile(filename: "../../lib/snappy-c/snappy.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "cfb9bcda4cc85171bf9848efd16b1ae4")
!238 = !{!239, !241, !242}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !236, file: !237, line: 9, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !236, file: !237, line: 10, baseType: !108, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_output", scope: !236, file: !237, line: 11, baseType: !108, size: 64, offset: 128)
!243 = !DILocalVariable(name: "txn", scope: !142, file: !2, line: 23, type: !182)
!244 = !DILocalVariable(name: "data", scope: !245, file: !2, line: 102, type: !224)
!245 = distinct !DILexicalBlock(scope: !246, file: !2, line: 100, column: 19)
!246 = distinct !DILexicalBlock(scope: !142, file: !2, line: 100, column: 6)
!247 = !DILocalVariable(name: "rc", scope: !245, file: !2, line: 103, type: !147)
!248 = !DILabel(scope: !142, name: "end_of_process", file: !2, line: 137)
!249 = !DILabel(scope: !142, name: "error", file: !2, line: 141)
!250 = !DILocation(line: 0, scope: !142)
!251 = !DILocation(line: 18, column: 2, scope: !142)
!252 = !DILocation(line: 18, column: 16, scope: !142)
!253 = !{!254, !254, i64 0}
!254 = !{!"any pointer", !255, i64 0}
!255 = !{!"omnipotent char", !256, i64 0}
!256 = !{!"Simple C/C++ TBAA"}
!257 = !DILocation(line: 20, column: 2, scope: !142)
!258 = !DILocation(line: 22, column: 2, scope: !142)
!259 = !DILocation(line: 22, column: 20, scope: !142)
!260 = !DILocation(line: 23, column: 25, scope: !142)
!261 = !{!262, !254, i64 32}
!262 = !{!"tcp_thread_s", !263, i64 0, !254, i64 8, !264, i64 16, !264, i64 20, !254, i64 24, !254, i64 32}
!263 = !{!"long", !255, i64 0}
!264 = !{!"int", !255, i64 0}
!265 = !DILocation(line: 25, column: 2, scope: !142)
!266 = !DILocation(line: 29, column: 6, scope: !267)
!267 = distinct !DILexicalBlock(scope: !142, file: !2, line: 29, column: 6)
!268 = !DILocation(line: 29, column: 59, scope: !267)
!269 = !DILocation(line: 29, column: 6, scope: !142)
!270 = !DILocation(line: 31, column: 14, scope: !142)
!271 = !DILocation(line: 32, column: 13, scope: !142)
!272 = !{!273, !273, i64 0}
!273 = !{!"short", !255, i64 0}
!274 = !DILocation(line: 34, column: 41, scope: !275)
!275 = distinct !DILexicalBlock(scope: !142, file: !2, line: 34, column: 6)
!276 = !DILocation(line: 34, column: 6, scope: !275)
!277 = !DILocation(line: 34, column: 59, scope: !275)
!278 = !DILocation(line: 34, column: 6, scope: !142)
!279 = !DILocation(line: 36, column: 8, scope: !142)
!280 = !DILocation(line: 37, column: 14, scope: !281)
!281 = distinct !DILexicalBlock(scope: !142, file: !2, line: 37, column: 6)
!282 = !DILocation(line: 37, column: 41, scope: !281)
!283 = !DILocation(line: 37, column: 6, scope: !142)
!284 = !DILocation(line: 39, column: 2, scope: !142)
!285 = !DILocation(line: 40, column: 2, scope: !142)
!286 = !DILocation(line: 42, column: 6, scope: !287)
!287 = distinct !DILexicalBlock(scope: !142, file: !2, line: 42, column: 6)
!288 = !DILocation(line: 42, column: 59, scope: !287)
!289 = !DILocation(line: 42, column: 6, scope: !142)
!290 = !DILocation(line: 44, column: 14, scope: !142)
!291 = !DILocation(line: 45, column: 13, scope: !142)
!292 = !{!264, !264, i64 0}
!293 = !DILocalVariable(name: "__bsx", arg: 1, scope: !294, file: !295, line: 49, type: !210)
!294 = distinct !DISubprogram(name: "__bswap_32", scope: !295, file: !295, line: 49, type: !296, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !298)
!295 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!296 = !DISubroutineType(types: !297)
!297 = !{!210, !210}
!298 = !{!293}
!299 = !DILocation(line: 0, scope: !294, inlinedAt: !300)
!300 = distinct !DILocation(line: 45, column: 13, scope: !142)
!301 = !DILocation(line: 54, column: 10, scope: !294, inlinedAt: !300)
!302 = !DILocation(line: 47, column: 15, scope: !303)
!303 = distinct !DILexicalBlock(scope: !142, file: !2, line: 47, column: 6)
!304 = !DILocation(line: 47, column: 6, scope: !142)
!305 = !DILocation(line: 48, column: 42, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !2, line: 48, column: 7)
!307 = distinct !DILexicalBlock(scope: !303, file: !2, line: 47, column: 20)
!308 = !DILocation(line: 48, column: 7, scope: !306)
!309 = !DILocation(line: 48, column: 60, scope: !306)
!310 = !DILocation(line: 48, column: 7, scope: !307)
!311 = !DILocation(line: 50, column: 9, scope: !307)
!312 = !DILocation(line: 51, column: 15, scope: !313)
!313 = distinct !DILexicalBlock(scope: !307, file: !2, line: 51, column: 7)
!314 = !DILocation(line: 51, column: 42, scope: !313)
!315 = !DILocation(line: 51, column: 7, scope: !307)
!316 = !DILocation(line: 53, column: 3, scope: !307)
!317 = !DILocation(line: 54, column: 3, scope: !307)
!318 = !DILocation(line: 55, column: 2, scope: !307)
!319 = !DILocation(line: 58, column: 7, scope: !320)
!320 = distinct !DILexicalBlock(scope: !142, file: !2, line: 58, column: 6)
!321 = !DILocation(line: 58, column: 12, scope: !320)
!322 = !DILocation(line: 59, column: 3, scope: !320)
!323 = !DILocation(line: 62, column: 13, scope: !324)
!324 = distinct !DILexicalBlock(scope: !142, file: !2, line: 62, column: 6)
!325 = !DILocation(line: 62, column: 11, scope: !324)
!326 = !DILocation(line: 62, column: 44, scope: !324)
!327 = !DILocation(line: 62, column: 6, scope: !142)
!328 = !DILocation(line: 66, column: 17, scope: !142)
!329 = !DILocation(line: 66, column: 2, scope: !142)
!330 = !DILocation(line: 67, column: 6, scope: !331)
!331 = distinct !DILexicalBlock(scope: !142, file: !2, line: 67, column: 6)
!332 = !DILocation(line: 67, column: 6, scope: !142)
!333 = !DILocation(line: 68, column: 18, scope: !334)
!334 = distinct !DILexicalBlock(scope: !331, file: !2, line: 67, column: 16)
!335 = !DILocation(line: 68, column: 30, scope: !334)
!336 = !DILocation(line: 68, column: 3, scope: !334)
!337 = !DILocation(line: 69, column: 2, scope: !334)
!338 = !DILocation(line: 71, column: 3, scope: !339)
!339 = distinct !DILexicalBlock(scope: !331, file: !2, line: 69, column: 9)
!340 = !DILocation(line: 72, column: 7, scope: !341)
!341 = distinct !DILexicalBlock(scope: !339, file: !2, line: 72, column: 7)
!342 = !DILocation(line: 72, column: 7, scope: !339)
!343 = !DILocation(line: 73, column: 4, scope: !344)
!344 = distinct !DILexicalBlock(scope: !341, file: !2, line: 72, column: 34)
!345 = !DILocation(line: 74, column: 4, scope: !344)
!346 = !DILocation(line: 76, column: 19, scope: !347)
!347 = distinct !DILexicalBlock(scope: !339, file: !2, line: 76, column: 7)
!348 = !DILocation(line: 76, column: 68, scope: !347)
!349 = !DILocation(line: 76, column: 7, scope: !339)
!350 = !DILocation(line: 77, column: 4, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !2, line: 76, column: 77)
!352 = !DILocation(line: 78, column: 4, scope: !351)
!353 = !DILocation(line: 80, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !339, file: !2, line: 80, column: 7)
!355 = !DILocation(line: 80, column: 7, scope: !339)
!356 = !DILocation(line: 81, column: 4, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !2, line: 80, column: 70)
!358 = !DILocation(line: 82, column: 4, scope: !357)
!359 = !DILocation(line: 83, column: 4, scope: !357)
!360 = !DILocation(line: 85, column: 12, scope: !339)
!361 = !{!263, !263, i64 0}
!362 = !DILocation(line: 85, column: 3, scope: !339)
!363 = !DILocation(line: 85, column: 21, scope: !339)
!364 = !{!255, !255, i64 0}
!365 = !DILocation(line: 86, column: 3, scope: !339)
!366 = !DILocation(line: 87, column: 18, scope: !339)
!367 = !DILocation(line: 87, column: 34, scope: !339)
!368 = !DILocation(line: 87, column: 3, scope: !339)
!369 = !DILocation(line: 88, column: 3, scope: !339)
!370 = !DILocation(line: 90, column: 12, scope: !371)
!371 = distinct !DILexicalBlock(scope: !142, file: !2, line: 90, column: 6)
!372 = !DILocation(line: 92, column: 25, scope: !373)
!373 = distinct !DILexicalBlock(scope: !371, file: !2, line: 90, column: 29)
!374 = !{!262, !254, i64 24}
!375 = !DILocation(line: 92, column: 17, scope: !373)
!376 = !DILocation(line: 92, column: 34, scope: !373)
!377 = !DILocation(line: 92, column: 8, scope: !373)
!378 = !DILocation(line: 92, column: 15, scope: !373)
!379 = !{!380, !254, i64 8}
!380 = !{!"writer_msg_s", !255, i64 0, !254, i64 8, !381, i64 16, !381, i64 32, !255, i64 48}
!381 = !{!"ybin_s", !254, i64 0, !263, i64 8}
!382 = !DILocation(line: 93, column: 23, scope: !383)
!383 = distinct !DILexicalBlock(scope: !373, file: !2, line: 93, column: 7)
!384 = !{!262, !264, i64 20}
!385 = !DILocation(line: 93, column: 7, scope: !383)
!386 = !DILocation(line: 93, column: 57, scope: !383)
!387 = !DILocation(line: 93, column: 7, scope: !373)
!388 = !DILocation(line: 94, column: 4, scope: !389)
!389 = distinct !DILexicalBlock(scope: !383, file: !2, line: 93, column: 62)
!390 = !DILocation(line: 95, column: 4, scope: !389)
!391 = !DILocation(line: 124, column: 27, scope: !392)
!392 = distinct !DILexicalBlock(scope: !142, file: !2, line: 124, column: 6)
!393 = !{!262, !254, i64 8}
!394 = !DILocation(line: 124, column: 35, scope: !392)
!395 = !{!396, !254, i64 8}
!396 = !{!"finedb_s", !255, i64 0, !254, i64 8, !264, i64 16, !264, i64 20, !263, i64 24, !254, i64 32, !273, i64 40}
!397 = !DILocation(line: 124, column: 71, scope: !392)
!398 = !DILocation(line: 124, column: 95, scope: !392)
!399 = !DILocation(line: 124, column: 6, scope: !392)
!400 = !DILocation(line: 124, column: 101, scope: !392)
!401 = !DILocation(line: 124, column: 6, scope: !142)
!402 = !DILocation(line: 125, column: 3, scope: !403)
!403 = distinct !DILexicalBlock(scope: !392, file: !2, line: 124, column: 113)
!404 = !DILocation(line: 127, column: 2, scope: !403)
!405 = !DILocation(line: 128, column: 3, scope: !406)
!406 = distinct !DILexicalBlock(scope: !392, file: !2, line: 127, column: 9)
!407 = !DILocation(line: 137, column: 1, scope: !142)
!408 = !DILocation(line: 138, column: 2, scope: !142)
!409 = !DILocation(line: 139, column: 10, scope: !142)
!410 = !DILocation(line: 139, column: 2, scope: !142)
!411 = !DILocation(line: 141, column: 1, scope: !142)
!412 = !DILocation(line: 142, column: 2, scope: !142)
!413 = !DILocation(line: 144, column: 2, scope: !142)
!414 = !DILocation(line: 143, column: 2, scope: !142)
!415 = !DILocation(line: 145, column: 2, scope: !142)
!416 = !DILocation(line: 146, column: 2, scope: !142)
!417 = !DILocation(line: 147, column: 2, scope: !142)
!418 = !DILocation(line: 148, column: 1, scope: !142)
!419 = !DISubprogram(name: "ylog_write", scope: !88, file: !88, line: 385, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !424)
!420 = !DISubroutineType(types: !421)
!421 = !{!163, !422, !423, !147, !423, !423, null}
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "ylog_priority_t", file: !88, line: 278, baseType: !87)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!424 = !{}
!425 = !DISubprogram(name: "connection_read_data", scope: !150, file: !150, line: 94, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !424)
!426 = !DISubroutineType(types: !427)
!427 = !{!145, !148, !185, !109}
!428 = !DISubprogram(name: "ydynabin_forward", scope: !187, file: !187, line: 82, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !424)
!429 = !DISubroutineType(types: !430)
!430 = !{!108, !185, !109}
!431 = !DISubprogram(name: "calloc", scope: !432, file: !432, line: 543, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !424)
!432 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!433 = !DISubroutineType(types: !434)
!434 = !{!108, !109, !109}
!435 = !DISubprogram(name: "connection_send_response", scope: !150, file: !150, line: 107, type: !436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !424)
!436 = !DISubroutineType(types: !437)
!437 = !{!145, !148, !438, !163, !163, !439, !109}
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "protocol_response_t", file: !97, line: 117, baseType: !96)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!441 = !DISubprogram(name: "ybin_set", scope: !225, file: !225, line: 46, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !424)
!442 = !DISubroutineType(types: !443)
!443 = !{!444, !444, !108, !109}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!445 = !DISubprogram(name: "snappy_init_env", scope: !237, file: !237, line: 15, type: !446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !424)
!446 = !DISubroutineType(types: !447)
!447 = !{!147, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!449 = !DISubprogram(name: "snappy_max_compressed_length", scope: !237, file: !237, line: 34, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !424)
!450 = !DISubroutineType(types: !451)
!451 = !{!109, !109}
!452 = !DISubprogram(name: "snappy_compress", scope: !237, file: !237, line: 21, type: !453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !424)
!453 = !DISubroutineType(types: !454)
!454 = !{!147, !448, !423, !109, !180, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!456 = !DISubprogram(name: "free", scope: !432, file: !432, line: 555, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !424)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !108}
!459 = !DISubprogram(name: "snappy_free_env", scope: !237, file: !237, line: 17, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !424)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !448}
!462 = !DISubprogram(name: "strdup", scope: !463, file: !463, line: 187, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !424)
!463 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!464 = !DISubroutineType(types: !465)
!465 = !{!180, !423}
!466 = !DISubprogram(name: "nn_send", scope: !467, file: !467, line: 248, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !424)
!467 = !DIFile(filename: "../../include/nanomsg/nn.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "0c95956590725e5a1eedd7f7b192cc23")
!468 = !DISubroutineType(types: !469)
!469 = !{!147, !147, !439, !109, !147}
!470 = !DISubprogram(name: "database_put", scope: !471, file: !471, line: 60, type: !472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !424)
!471 = !DIFile(filename: "./database.h", directory: "/home/raj/FineDB/src/server", checksumkind: CSK_MD5, checksum: "e933d92e866140a8ca260943c439739b")
!472 = !DISubroutineType(types: !473)
!473 = !{!145, !165, !182, !163, !423, !224, !224}
