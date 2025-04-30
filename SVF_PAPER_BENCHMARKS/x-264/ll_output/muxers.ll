; ModuleID = 'muxers.c'
source_filename = "muxers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, i32, i32, float, float, float, i32, float, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.yuv_input_t = type { ptr, i32, i32, i32 }
%struct.x264_picture_t = type { i32, i32, i64, %struct.x264_image_t }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.y4m_input_t = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.thread_input_t = type { ptr, ptr, ptr, %struct.x264_picture_t, i64, i32, i32, i32, ptr }
%struct.thread_input_arg_t = type { ptr, ptr, i32, i32 }
%struct.mkv_t = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i8 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !0
@stdin = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"YUV4MPEG2\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [4 x i8] c"420\00", align 1, !dbg !17
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Colorspace unhandled\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [44 x i8] c"Warning, this sequence might be interlaced\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [7 x i8] c"YSCSS=\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [8 x i8] c"420JPEG\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [9 x i8] c"420MPEG2\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [9 x i8] c"420PALDV\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [33 x i8] c"Unsupported extended colorspace\0A\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [33 x i8] c"yuv4mpeg: %ix%i@%i/%ifps, %i:%i\0A\00", align 1, !dbg !59
@.str.13 = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1, !dbg !61
@.str.14 = private unnamed_addr constant [32 x i8] c"Bad header magic (%08X <=> %s)\0A\00", align 1, !dbg !63
@.str.15 = private unnamed_addr constant [19 x i8] c"Bad frame header!\0A\00", align 1, !dbg !68
@p_read_frame = external local_unnamed_addr global ptr, align 8
@p_close_infile = external local_unnamed_addr global ptr, align 8
@p_get_frame_total = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1, !dbg !73
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"x264\00", align 1, !dbg !75
@.str.18 = private unnamed_addr constant [16 x i8] c"V_MPEG4/ISO/AVC\00", align 1, !dbg !80

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @open_file_yuv(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !169 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !319, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata ptr %1, metadata !320, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata ptr %2, metadata !321, metadata !DIExpression()), !dbg !331
  %4 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18, !dbg !332
  call void @llvm.dbg.value(metadata ptr %4, metadata !322, metadata !DIExpression()), !dbg !331
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 3, !dbg !333
  %6 = getelementptr inbounds %struct.yuv_input_t, ptr %4, i64 0, i32 1, !dbg !334
  %7 = load <2 x i32>, ptr %5, align 4, !dbg !333, !tbaa !335
  store <2 x i32> %7, ptr %6, align 8, !dbg !339, !tbaa !335
  %8 = getelementptr inbounds %struct.yuv_input_t, ptr %4, i64 0, i32 3, !dbg !340
  store i32 0, ptr %8, align 8, !dbg !341, !tbaa !342
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #19, !dbg !345
  %10 = icmp eq i32 %9, 0, !dbg !345
  br i1 %10, label %11, label %13, !dbg !347

11:                                               ; preds = %3
  %12 = load ptr, ptr @stdin, align 8, !dbg !348, !tbaa !349
  br label %15, !dbg !350

13:                                               ; preds = %3
  %14 = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.1), !dbg !351
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ], !dbg !352
  store ptr %16, ptr %4, align 8, !dbg !352, !tbaa !353
  %17 = icmp eq ptr %16, null, !dbg !354
  br i1 %17, label %19, label %18, !dbg !356

18:                                               ; preds = %15
  store ptr %4, ptr %1, align 8, !dbg !357, !tbaa !349
  br label %19, !dbg !358

19:                                               ; preds = %15, %18
  %20 = phi i32 [ 0, %18 ], [ -1, %15 ], !dbg !331
  ret i32 %20, !dbg !359
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !360 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !365 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !369 noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @get_frame_total_yuv(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !dbg !374 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !378, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i32 0, metadata !380, metadata !DIExpression()), !dbg !384
  %2 = load ptr, ptr %0, align 8, !dbg !385, !tbaa !353
  %3 = tail call i32 @fseeko64(ptr noundef %2, i64 noundef 0, i32 noundef 2), !dbg !386
  %4 = icmp eq i32 %3, 0, !dbg !386
  br i1 %4, label %5, label %20, !dbg !387

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !dbg !388, !tbaa !353
  %7 = tail call i64 @ftello64(ptr noundef %6), !dbg !389
  call void @llvm.dbg.value(metadata i64 %7, metadata !381, metadata !DIExpression()), !dbg !390
  %8 = load ptr, ptr %0, align 8, !dbg !391, !tbaa !353
  %9 = tail call i32 @fseeko64(ptr noundef %8, i64 noundef 0, i32 noundef 0), !dbg !392
  %10 = getelementptr inbounds %struct.yuv_input_t, ptr %0, i64 0, i32 1, !dbg !393
  %11 = load i32, ptr %10, align 8, !dbg !393, !tbaa !394
  %12 = getelementptr inbounds %struct.yuv_input_t, ptr %0, i64 0, i32 2, !dbg !395
  %13 = load i32, ptr %12, align 4, !dbg !395, !tbaa !396
  %14 = mul i32 %11, 3, !dbg !397
  %15 = mul i32 %14, %13, !dbg !398
  %16 = sdiv i32 %15, 2, !dbg !399
  %17 = sext i32 %16 to i64, !dbg !400
  %18 = udiv i64 %7, %17, !dbg !401
  %19 = trunc i64 %18 to i32, !dbg !402
  call void @llvm.dbg.value(metadata i32 %19, metadata !380, metadata !DIExpression()), !dbg !384
  br label %20, !dbg !403

20:                                               ; preds = %5, %1
  %21 = phi i32 [ 0, %1 ], [ %19, %5 ], !dbg !384
  call void @llvm.dbg.value(metadata i32 %21, metadata !380, metadata !DIExpression()), !dbg !384
  ret i32 %21, !dbg !404
}

; Function Attrs: nofree nounwind
declare !dbg !405 noundef i32 @fseeko64(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !408 noundef i64 @ftello64(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @read_frame_yuv(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !411 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !433, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata ptr %1, metadata !434, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 %2, metadata !435, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata ptr %1, metadata !436, metadata !DIExpression()), !dbg !437
  %4 = getelementptr inbounds %struct.yuv_input_t, ptr %1, i64 0, i32 3, !dbg !438
  %5 = load i32, ptr %4, align 8, !dbg !438, !tbaa !342
  %6 = icmp eq i32 %5, %2, !dbg !440
  br i1 %6, label %22, label %7, !dbg !441

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !dbg !442, !tbaa !353
  %9 = sext i32 %2 to i64, !dbg !444
  %10 = getelementptr inbounds %struct.yuv_input_t, ptr %1, i64 0, i32 1, !dbg !445
  %11 = load i32, ptr %10, align 8, !dbg !445, !tbaa !394
  %12 = sext i32 %11 to i64, !dbg !446
  %13 = getelementptr inbounds %struct.yuv_input_t, ptr %1, i64 0, i32 2, !dbg !447
  %14 = load i32, ptr %13, align 4, !dbg !447, !tbaa !396
  %15 = sext i32 %14 to i64, !dbg !448
  %16 = mul nsw i64 %9, 3, !dbg !449
  %17 = mul i64 %16, %12, !dbg !450
  %18 = mul i64 %17, %15, !dbg !451
  %19 = lshr i64 %18, 1, !dbg !452
  %20 = tail call i32 @fseeko64(ptr noundef %8, i64 noundef %19, i32 noundef 0), !dbg !453
  %21 = icmp eq i32 %20, 0, !dbg !453
  br i1 %21, label %22, label %58, !dbg !454

22:                                               ; preds = %7, %3
  %23 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 3, i32 3, !dbg !455
  %24 = load ptr, ptr %23, align 8, !dbg !457, !tbaa !349
  %25 = getelementptr inbounds %struct.yuv_input_t, ptr %1, i64 0, i32 1, !dbg !458
  %26 = load i32, ptr %25, align 8, !dbg !458, !tbaa !394
  %27 = getelementptr inbounds %struct.yuv_input_t, ptr %1, i64 0, i32 2, !dbg !459
  %28 = load i32, ptr %27, align 4, !dbg !459, !tbaa !396
  %29 = mul nsw i32 %28, %26, !dbg !460
  %30 = sext i32 %29 to i64, !dbg !461
  %31 = load ptr, ptr %1, align 8, !dbg !462, !tbaa !353
  %32 = tail call i64 @fread(ptr noundef %24, i64 noundef 1, i64 noundef %30, ptr noundef %31), !dbg !463
  %33 = icmp eq i64 %32, 0, !dbg !464
  br i1 %33, label %58, label %34, !dbg !465

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 3, i32 3, i64 1, !dbg !466
  %36 = load ptr, ptr %35, align 8, !dbg !466, !tbaa !349
  %37 = load i32, ptr %25, align 8, !dbg !467, !tbaa !394
  %38 = load i32, ptr %27, align 4, !dbg !468, !tbaa !396
  %39 = mul nsw i32 %38, %37, !dbg !469
  %40 = sdiv i32 %39, 4, !dbg !470
  %41 = sext i32 %40 to i64, !dbg !471
  %42 = load ptr, ptr %1, align 8, !dbg !472, !tbaa !353
  %43 = tail call i64 @fread(ptr noundef %36, i64 noundef 1, i64 noundef %41, ptr noundef %42), !dbg !473
  %44 = icmp eq i64 %43, 0, !dbg !474
  br i1 %44, label %58, label %45, !dbg !475

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 3, i32 3, i64 2, !dbg !476
  %47 = load ptr, ptr %46, align 8, !dbg !476, !tbaa !349
  %48 = load i32, ptr %25, align 8, !dbg !477, !tbaa !394
  %49 = load i32, ptr %27, align 4, !dbg !478, !tbaa !396
  %50 = mul nsw i32 %49, %48, !dbg !479
  %51 = sdiv i32 %50, 4, !dbg !480
  %52 = sext i32 %51 to i64, !dbg !481
  %53 = load ptr, ptr %1, align 8, !dbg !482, !tbaa !353
  %54 = tail call i64 @fread(ptr noundef %47, i64 noundef 1, i64 noundef %52, ptr noundef %53), !dbg !483
  %55 = icmp eq i64 %54, 0, !dbg !484
  br i1 %55, label %58, label %56, !dbg !485

56:                                               ; preds = %45
  %57 = add nsw i32 %2, 1, !dbg !486
  store i32 %57, ptr %4, align 8, !dbg !487, !tbaa !342
  br label %58, !dbg !488

58:                                               ; preds = %22, %34, %45, %7, %56
  %59 = phi i32 [ 0, %56 ], [ -1, %7 ], [ -1, %45 ], [ -1, %34 ], [ -1, %22 ], !dbg !437
  ret i32 %59, !dbg !489
}

; Function Attrs: nofree nounwind
declare !dbg !490 noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @close_file_yuv(ptr noundef %0) local_unnamed_addr #6 !dbg !495 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !497, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata ptr %0, metadata !498, metadata !DIExpression()), !dbg !499
  %2 = icmp eq ptr %0, null, !dbg !500
  br i1 %2, label %8, label %3, !dbg !502

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !dbg !503, !tbaa !353
  %5 = icmp eq ptr %4, null, !dbg !504
  br i1 %5, label %8, label %6, !dbg !505

6:                                                ; preds = %3
  %7 = tail call i32 @fclose(ptr noundef nonnull %4), !dbg !506
  tail call void @free(ptr noundef nonnull %0) #20, !dbg !507
  br label %8, !dbg !508

8:                                                ; preds = %1, %3, %6
  ret i32 0, !dbg !509
}

; Function Attrs: nofree nounwind
declare !dbg !510 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !513 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @open_file_y4m(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #6 !dbg !516 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [90 x i8], align 16
  %7 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !518, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata ptr %1, metadata !519, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata ptr %2, metadata !520, metadata !DIExpression()), !dbg !544
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20, !dbg !545
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20, !dbg !545
  call void @llvm.lifetime.start.p0(i64 90, ptr nonnull %6) #20, !dbg !546
  call void @llvm.dbg.declare(metadata ptr %6, metadata !525, metadata !DIExpression()), !dbg !547
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20, !dbg !548
  %8 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #18, !dbg !549
  call void @llvm.dbg.value(metadata ptr %8, metadata !532, metadata !DIExpression()), !dbg !544
  %9 = getelementptr inbounds %struct.y4m_input_t, ptr %8, i64 0, i32 3, !dbg !550
  store i32 0, ptr %9, align 8, !dbg !551, !tbaa !552
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #19, !dbg !554
  %11 = icmp eq i32 %10, 0, !dbg !554
  br i1 %11, label %12, label %14, !dbg !556

12:                                               ; preds = %3
  %13 = load ptr, ptr @stdin, align 8, !dbg !557, !tbaa !349
  br label %16, !dbg !558

14:                                               ; preds = %3
  %15 = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.1), !dbg !559
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ], !dbg !560
  store ptr %17, ptr %8, align 8, !dbg !560, !tbaa !561
  %18 = icmp eq ptr %17, null, !dbg !562
  br i1 %18, label %159, label %19, !dbg !564

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.y4m_input_t, ptr %8, i64 0, i32 5, !dbg !565
  store i32 6, ptr %20, align 8, !dbg !566, !tbaa !567
  call void @llvm.dbg.value(metadata i32 0, metadata !521, metadata !DIExpression()), !dbg !544
  br label %21, !dbg !568

21:                                               ; preds = %19, %30
  %22 = phi i64 [ 0, %19 ], [ %29, %30 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !521, metadata !DIExpression()), !dbg !544
  %23 = load ptr, ptr %8, align 8, !dbg !570, !tbaa !561
  %24 = tail call i32 @fgetc(ptr noundef %23), !dbg !573
  %25 = trunc i32 %24 to i8, !dbg !573
  %26 = getelementptr inbounds [90 x i8], ptr %6, i64 0, i64 %22, !dbg !574
  store i8 %25, ptr %26, align 1, !dbg !575, !tbaa !576
  %27 = and i32 %24, 255, !dbg !577
  %28 = icmp eq i32 %27, 10, !dbg !577
  %29 = add nuw i64 %22, 1, !dbg !579
  br i1 %28, label %32, label %30, !dbg !580

30:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 %29, metadata !521, metadata !DIExpression()), !dbg !544
  %31 = icmp eq i64 %29, 80, !dbg !581
  br i1 %31, label %159, label %21, !dbg !568, !llvm.loop !582

32:                                               ; preds = %21
  %33 = and i64 %29, 4294967295, !dbg !585
  %34 = getelementptr inbounds [90 x i8], ptr %6, i64 0, i64 %33, !dbg !585
  store i8 32, ptr %34, align 1, !dbg !587, !tbaa !576
  %35 = add nuw i64 %22, 2, !dbg !588
  %36 = and i64 %35, 4294967295, !dbg !589
  %37 = getelementptr inbounds [90 x i8], ptr %6, i64 0, i64 %36, !dbg !589
  store i8 0, ptr %37, align 1, !dbg !590, !tbaa !576
  %38 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %6, ptr noundef nonnull dereferenceable(9) @.str.2, i64 9), !dbg !591
  %39 = icmp eq i32 %38, 0, !dbg !591
  br i1 %39, label %40, label %159, !dbg !593

40:                                               ; preds = %32
  %41 = trunc i64 %22 to i32, !dbg !594
  %42 = add nuw nsw i32 %41, 1, !dbg !595
  %43 = zext i32 %42 to i64, !dbg !596
  %44 = getelementptr inbounds [90 x i8], ptr %6, i64 0, i64 %43, !dbg !596
  call void @llvm.dbg.value(metadata ptr %44, metadata !531, metadata !DIExpression()), !dbg !544
  %45 = getelementptr inbounds %struct.y4m_input_t, ptr %8, i64 0, i32 4, !dbg !597
  store i32 %42, ptr %45, align 4, !dbg !598, !tbaa !599
  call void @llvm.dbg.value(metadata ptr %6, metadata !529, metadata !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value)), !dbg !544
  %46 = icmp ugt i32 %41, 9, !dbg !600
  br i1 %46, label %47, label %144, !dbg !603

47:                                               ; preds = %40
  %48 = getelementptr inbounds [90 x i8], ptr %6, i64 0, i64 10, !dbg !604
  call void @llvm.dbg.value(metadata ptr %48, metadata !529, metadata !DIExpression()), !dbg !544
  %49 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8
  %50 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8, i32 1
  %51 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 9
  %52 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 10
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 4
  %54 = getelementptr inbounds %struct.y4m_input_t, ptr %8, i64 0, i32 2
  %55 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 3
  %56 = getelementptr inbounds %struct.y4m_input_t, ptr %8, i64 0, i32 1
  br label %57, !dbg !603

57:                                               ; preds = %47, %140
  %58 = phi ptr [ %48, %47 ], [ %142, %140 ]
  call void @llvm.dbg.value(metadata ptr %58, metadata !529, metadata !DIExpression()), !dbg !544
  %59 = load i8, ptr %58, align 1, !dbg !605, !tbaa !576
  %60 = icmp eq i8 %59, 32, !dbg !608
  br i1 %60, label %140, label %61, !dbg !609

61:                                               ; preds = %57
  %62 = sext i8 %59 to i32, !dbg !605
  %63 = getelementptr inbounds i8, ptr %58, i64 1, !dbg !610
  call void @llvm.dbg.value(metadata ptr %63, metadata !529, metadata !DIExpression()), !dbg !544
  switch i32 %62, label %140 [
    i32 87, label %64
    i32 72, label %68
    i32 67, label %72
    i32 73, label %80
    i32 70, label %87
    i32 65, label %101
    i32 88, label %121
  ], !dbg !611

64:                                               ; preds = %61
  call void @llvm.dbg.value(metadata ptr %7, metadata !530, metadata !DIExpression(DW_OP_deref)), !dbg !544
  %65 = call i64 @strtol(ptr noundef nonnull %63, ptr noundef nonnull %7, i32 noundef 10) #20, !dbg !612
  %66 = trunc i64 %65 to i32, !dbg !612
  store i32 %66, ptr %55, align 4, !dbg !614, !tbaa !615
  store i32 %66, ptr %56, align 8, !dbg !621, !tbaa !622
  %67 = load ptr, ptr %7, align 8, !dbg !623, !tbaa !349
  call void @llvm.dbg.value(metadata ptr %67, metadata !530, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata ptr %67, metadata !529, metadata !DIExpression()), !dbg !544
  br label %140, !dbg !624

68:                                               ; preds = %61
  call void @llvm.dbg.value(metadata ptr %7, metadata !530, metadata !DIExpression(DW_OP_deref)), !dbg !544
  %69 = call i64 @strtol(ptr noundef nonnull %63, ptr noundef nonnull %7, i32 noundef 10) #20, !dbg !625
  %70 = trunc i64 %69 to i32, !dbg !625
  store i32 %70, ptr %53, align 8, !dbg !626, !tbaa !627
  store i32 %70, ptr %54, align 4, !dbg !628, !tbaa !629
  %71 = load ptr, ptr %7, align 8, !dbg !630, !tbaa !349
  call void @llvm.dbg.value(metadata ptr %71, metadata !530, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata ptr %71, metadata !529, metadata !DIExpression()), !dbg !544
  br label %140, !dbg !631

72:                                               ; preds = %61
  %73 = call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.3, ptr noundef nonnull dereferenceable(1) %63, i64 noundef 3) #19, !dbg !632
  %74 = icmp eq i32 %73, 0, !dbg !632
  br i1 %74, label %78, label %75, !dbg !634

75:                                               ; preds = %72
  %76 = load ptr, ptr @stderr, align 8, !dbg !635, !tbaa !349
  %77 = call i64 @fwrite(ptr nonnull @.str.4, i64 21, i64 1, ptr %76) #21, !dbg !637
  br label %159, !dbg !638

78:                                               ; preds = %72
  %79 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %63, i32 noundef 32) #19, !dbg !639
  call void @llvm.dbg.value(metadata ptr %79, metadata !529, metadata !DIExpression()), !dbg !544
  br label %140, !dbg !640

80:                                               ; preds = %61
  %81 = getelementptr inbounds i8, ptr %58, i64 2, !dbg !641
  call void @llvm.dbg.value(metadata ptr %81, metadata !529, metadata !DIExpression()), !dbg !544
  %82 = load i8, ptr %63, align 1, !dbg !642, !tbaa !576
  %83 = icmp eq i8 %82, 112, !dbg !643
  br i1 %83, label %140, label %84, !dbg !643

84:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i32 1, metadata !524, metadata !DIExpression()), !dbg !544
  %85 = load ptr, ptr @stderr, align 8, !dbg !644, !tbaa !349
  %86 = call i64 @fwrite(ptr nonnull @.str.5, i64 43, i64 1, ptr %85) #21, !dbg !646
  br label %140, !dbg !647

87:                                               ; preds = %61
  call void @llvm.dbg.value(metadata ptr %4, metadata !522, metadata !DIExpression(DW_OP_deref)), !dbg !544
  call void @llvm.dbg.value(metadata ptr %5, metadata !523, metadata !DIExpression(DW_OP_deref)), !dbg !544
  %88 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %63, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, ptr noundef nonnull %5) #20, !dbg !648
  %89 = icmp eq i32 %88, 2, !dbg !650
  %90 = load i32, ptr %4, align 4
  call void @llvm.dbg.value(metadata i32 %90, metadata !522, metadata !DIExpression()), !dbg !544
  %91 = icmp ne i32 %90, 0
  %92 = select i1 %89, i1 %91, i1 false, !dbg !651
  %93 = load i32, ptr %5, align 4
  call void @llvm.dbg.value(metadata i32 %93, metadata !523, metadata !DIExpression()), !dbg !544
  %94 = icmp ne i32 %93, 0
  %95 = select i1 %92, i1 %94, i1 false, !dbg !651
  br i1 %95, label %96, label %99, !dbg !651

96:                                               ; preds = %87
  call void @llvm.dbg.value(metadata ptr %4, metadata !522, metadata !DIExpression(DW_OP_deref)), !dbg !544
  call void @llvm.dbg.value(metadata ptr %5, metadata !523, metadata !DIExpression(DW_OP_deref)), !dbg !544
  call void @x264_reduce_fraction(ptr noundef nonnull %4, ptr noundef nonnull %5) #20, !dbg !652
  %97 = load i32, ptr %4, align 4, !dbg !654, !tbaa !335
  call void @llvm.dbg.value(metadata i32 %97, metadata !522, metadata !DIExpression()), !dbg !544
  store i32 %97, ptr %51, align 4, !dbg !655, !tbaa !656
  %98 = load i32, ptr %5, align 4, !dbg !657, !tbaa !335
  call void @llvm.dbg.value(metadata i32 %98, metadata !523, metadata !DIExpression()), !dbg !544
  store i32 %98, ptr %52, align 8, !dbg !658, !tbaa !659
  br label %99, !dbg !660

99:                                               ; preds = %96, %87
  %100 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %63, i32 noundef 32) #19, !dbg !661
  call void @llvm.dbg.value(metadata ptr %100, metadata !529, metadata !DIExpression()), !dbg !544
  br label %140, !dbg !662

101:                                              ; preds = %61
  call void @llvm.dbg.value(metadata ptr %4, metadata !522, metadata !DIExpression(DW_OP_deref)), !dbg !544
  call void @llvm.dbg.value(metadata ptr %5, metadata !523, metadata !DIExpression(DW_OP_deref)), !dbg !544
  %102 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %63, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, ptr noundef nonnull %5) #20, !dbg !663
  %103 = icmp eq i32 %102, 2, !dbg !665
  %104 = load i32, ptr %4, align 4
  call void @llvm.dbg.value(metadata i32 %104, metadata !522, metadata !DIExpression()), !dbg !544
  %105 = icmp ne i32 %104, 0
  %106 = select i1 %103, i1 %105, i1 false, !dbg !666
  %107 = load i32, ptr %5, align 4
  call void @llvm.dbg.value(metadata i32 %107, metadata !523, metadata !DIExpression()), !dbg !544
  %108 = icmp ne i32 %107, 0
  %109 = select i1 %106, i1 %108, i1 false, !dbg !666
  br i1 %109, label %110, label %119, !dbg !666

110:                                              ; preds = %101
  %111 = load i32, ptr %50, align 4, !dbg !667, !tbaa !668
  %112 = icmp eq i32 %111, 0, !dbg !669
  br i1 %112, label %113, label %119, !dbg !670

113:                                              ; preds = %110
  %114 = load i32, ptr %49, align 8, !dbg !671, !tbaa !672
  %115 = icmp eq i32 %114, 0, !dbg !673
  br i1 %115, label %116, label %119, !dbg !674

116:                                              ; preds = %113
  call void @llvm.dbg.value(metadata ptr %4, metadata !522, metadata !DIExpression(DW_OP_deref)), !dbg !544
  call void @llvm.dbg.value(metadata ptr %5, metadata !523, metadata !DIExpression(DW_OP_deref)), !dbg !544
  call void @x264_reduce_fraction(ptr noundef nonnull %4, ptr noundef nonnull %5) #20, !dbg !675
  %117 = load i32, ptr %4, align 4, !dbg !677, !tbaa !335
  call void @llvm.dbg.value(metadata i32 %117, metadata !522, metadata !DIExpression()), !dbg !544
  store i32 %117, ptr %50, align 4, !dbg !678, !tbaa !668
  %118 = load i32, ptr %5, align 4, !dbg !679, !tbaa !335
  call void @llvm.dbg.value(metadata i32 %118, metadata !523, metadata !DIExpression()), !dbg !544
  store i32 %118, ptr %49, align 8, !dbg !680, !tbaa !672
  br label %119, !dbg !681

119:                                              ; preds = %116, %113, %110, %101
  %120 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %63, i32 noundef 32) #19, !dbg !682
  call void @llvm.dbg.value(metadata ptr %120, metadata !529, metadata !DIExpression()), !dbg !544
  br label %140, !dbg !683

121:                                              ; preds = %61
  %122 = call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.7, ptr noundef nonnull dereferenceable(1) %63, i64 noundef 6) #19, !dbg !684
  %123 = icmp eq i32 %122, 0, !dbg !684
  br i1 %123, label %124, label %137, !dbg !686

124:                                              ; preds = %121
  %125 = getelementptr inbounds i8, ptr %58, i64 7, !dbg !687
  call void @llvm.dbg.value(metadata ptr %125, metadata !529, metadata !DIExpression()), !dbg !544
  %126 = call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.8, ptr noundef nonnull dereferenceable(1) %125, i64 noundef 7) #19, !dbg !689
  %127 = icmp eq i32 %126, 0, !dbg !689
  br i1 %127, label %137, label %128, !dbg !691

128:                                              ; preds = %124
  %129 = call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.9, ptr noundef nonnull dereferenceable(1) %125, i64 noundef 8) #19, !dbg !692
  %130 = icmp eq i32 %129, 0, !dbg !692
  br i1 %130, label %137, label %131, !dbg !693

131:                                              ; preds = %128
  %132 = call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.10, ptr noundef nonnull dereferenceable(1) %125, i64 noundef 8) #19, !dbg !694
  %133 = icmp eq i32 %132, 0, !dbg !694
  br i1 %133, label %137, label %134, !dbg !695

134:                                              ; preds = %131
  %135 = load ptr, ptr @stderr, align 8, !dbg !696, !tbaa !349
  %136 = call i64 @fwrite(ptr nonnull @.str.11, i64 32, i64 1, ptr %135) #21, !dbg !698
  br label %159, !dbg !699

137:                                              ; preds = %124, %128, %131, %121
  %138 = phi ptr [ %63, %121 ], [ %125, %131 ], [ %125, %128 ], [ %125, %124 ], !dbg !700
  call void @llvm.dbg.value(metadata ptr %138, metadata !529, metadata !DIExpression()), !dbg !544
  %139 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %138, i32 noundef 32) #19, !dbg !701
  call void @llvm.dbg.value(metadata ptr %139, metadata !529, metadata !DIExpression()), !dbg !544
  br label %140, !dbg !702

140:                                              ; preds = %80, %64, %68, %78, %99, %119, %137, %61, %84, %57
  %141 = phi ptr [ %58, %57 ], [ %63, %61 ], [ %139, %137 ], [ %120, %119 ], [ %100, %99 ], [ %81, %84 ], [ %79, %78 ], [ %71, %68 ], [ %67, %64 ], [ %81, %80 ], !dbg !703
  call void @llvm.dbg.value(metadata ptr %141, metadata !529, metadata !DIExpression()), !dbg !544
  %142 = getelementptr inbounds i8, ptr %141, i64 1, !dbg !704
  call void @llvm.dbg.value(metadata ptr %142, metadata !529, metadata !DIExpression()), !dbg !544
  %143 = icmp ult ptr %142, %44, !dbg !600
  br i1 %143, label %57, label %144, !dbg !603, !llvm.loop !705

144:                                              ; preds = %140, %40
  %145 = load ptr, ptr @stderr, align 8, !dbg !707, !tbaa !349
  %146 = getelementptr inbounds %struct.y4m_input_t, ptr %8, i64 0, i32 1, !dbg !708
  %147 = load i32, ptr %146, align 8, !dbg !708, !tbaa !622
  %148 = getelementptr inbounds %struct.y4m_input_t, ptr %8, i64 0, i32 2, !dbg !709
  %149 = load i32, ptr %148, align 4, !dbg !709, !tbaa !629
  %150 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 9, !dbg !710
  %151 = load i32, ptr %150, align 4, !dbg !710, !tbaa !656
  %152 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 10, !dbg !711
  %153 = load i32, ptr %152, align 8, !dbg !711, !tbaa !659
  %154 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8, !dbg !712
  %155 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8, i32 1, !dbg !713
  %156 = load i32, ptr %155, align 4, !dbg !713, !tbaa !668
  %157 = load i32, ptr %154, align 8, !dbg !714, !tbaa !672
  %158 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.12, i32 noundef %147, i32 noundef %149, i32 noundef %151, i32 noundef %153, i32 noundef %156, i32 noundef %157) #21, !dbg !715
  store ptr %8, ptr %1, align 8, !dbg !716, !tbaa !349
  br label %159, !dbg !717

159:                                              ; preds = %30, %32, %16, %144, %134, %75
  %160 = phi i32 [ -1, %134 ], [ -1, %75 ], [ 0, %144 ], [ -1, %16 ], [ -1, %32 ], [ -1, %30 ], !dbg !544
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20, !dbg !718
  call void @llvm.lifetime.end.p0(i64 90, ptr nonnull %6) #20, !dbg !718
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20, !dbg !718
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20, !dbg !718
  ret i32 %160, !dbg !718
}

; Function Attrs: nofree nounwind
declare !dbg !719 noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !720 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !723 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !728 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !731 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !734 noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare !dbg !737 void @x264_reduce_fraction(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @get_frame_total_y4m(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !dbg !742 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !744, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata ptr %0, metadata !745, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i32 0, metadata !746, metadata !DIExpression()), !dbg !751
  %2 = load ptr, ptr %0, align 8, !dbg !752, !tbaa !561
  %3 = tail call i64 @ftello64(ptr noundef %2), !dbg !753
  call void @llvm.dbg.value(metadata i64 %3, metadata !747, metadata !DIExpression()), !dbg !751
  %4 = load ptr, ptr %0, align 8, !dbg !754, !tbaa !561
  %5 = tail call i32 @fseeko64(ptr noundef %4, i64 noundef 0, i32 noundef 2), !dbg !755
  %6 = icmp eq i32 %5, 0, !dbg !755
  br i1 %6, label %7, label %29, !dbg !756

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !dbg !757, !tbaa !561
  %9 = tail call i64 @ftello64(ptr noundef %8), !dbg !758
  call void @llvm.dbg.value(metadata i64 %9, metadata !748, metadata !DIExpression()), !dbg !759
  %10 = load ptr, ptr %0, align 8, !dbg !760, !tbaa !561
  %11 = tail call i32 @fseeko64(ptr noundef %10, i64 noundef %3, i32 noundef 0), !dbg !761
  %12 = getelementptr inbounds %struct.y4m_input_t, ptr %0, i64 0, i32 4, !dbg !762
  %13 = load i32, ptr %12, align 4, !dbg !762, !tbaa !599
  %14 = sext i32 %13 to i64, !dbg !763
  %15 = sub i64 %9, %14, !dbg !764
  %16 = getelementptr inbounds %struct.y4m_input_t, ptr %0, i64 0, i32 1, !dbg !765
  %17 = load i32, ptr %16, align 8, !dbg !765, !tbaa !622
  %18 = getelementptr inbounds %struct.y4m_input_t, ptr %0, i64 0, i32 2, !dbg !766
  %19 = load i32, ptr %18, align 4, !dbg !766, !tbaa !629
  %20 = mul i32 %17, 3, !dbg !767
  %21 = mul i32 %20, %19, !dbg !768
  %22 = sdiv i32 %21, 2, !dbg !769
  %23 = getelementptr inbounds %struct.y4m_input_t, ptr %0, i64 0, i32 5, !dbg !770
  %24 = load i32, ptr %23, align 8, !dbg !770, !tbaa !567
  %25 = add nsw i32 %22, %24, !dbg !771
  %26 = sext i32 %25 to i64, !dbg !772
  %27 = udiv i64 %15, %26, !dbg !773
  %28 = trunc i64 %27 to i32, !dbg !774
  call void @llvm.dbg.value(metadata i32 %28, metadata !746, metadata !DIExpression()), !dbg !751
  br label %29, !dbg !775

29:                                               ; preds = %7, %1
  %30 = phi i32 [ 0, %1 ], [ %28, %7 ], !dbg !751
  call void @llvm.dbg.value(metadata i32 %30, metadata !746, metadata !DIExpression()), !dbg !751
  ret i32 %30, !dbg !776
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @read_frame_y4m(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !777 {
  %4 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !779, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata ptr %1, metadata !780, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i32 %2, metadata !781, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i32 5, metadata !782, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i32 0, metadata !783, metadata !DIExpression()), !dbg !786
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20, !dbg !787
  call void @llvm.dbg.declare(metadata ptr %4, metadata !784, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata ptr %1, metadata !785, metadata !DIExpression()), !dbg !786
  %5 = getelementptr inbounds %struct.y4m_input_t, ptr %1, i64 0, i32 3, !dbg !789
  %6 = load i32, ptr %5, align 8, !dbg !789, !tbaa !552
  %7 = icmp eq i32 %6, %2, !dbg !791
  br i1 %7, label %29, label %8, !dbg !792

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !dbg !793, !tbaa !561
  %10 = sext i32 %2 to i64, !dbg !796
  %11 = getelementptr inbounds %struct.y4m_input_t, ptr %1, i64 0, i32 1, !dbg !797
  %12 = load i32, ptr %11, align 8, !dbg !797, !tbaa !622
  %13 = getelementptr inbounds %struct.y4m_input_t, ptr %1, i64 0, i32 2, !dbg !798
  %14 = load i32, ptr %13, align 4, !dbg !798, !tbaa !629
  %15 = mul i32 %12, 3, !dbg !799
  %16 = mul i32 %15, %14, !dbg !800
  %17 = sdiv i32 %16, 2, !dbg !801
  %18 = getelementptr inbounds %struct.y4m_input_t, ptr %1, i64 0, i32 5, !dbg !802
  %19 = load i32, ptr %18, align 8, !dbg !802, !tbaa !567
  %20 = add nsw i32 %17, %19, !dbg !803
  %21 = sext i32 %20 to i64, !dbg !804
  %22 = mul nsw i64 %21, %10, !dbg !805
  %23 = getelementptr inbounds %struct.y4m_input_t, ptr %1, i64 0, i32 4, !dbg !806
  %24 = load i32, ptr %23, align 4, !dbg !806, !tbaa !599
  %25 = sext i32 %24 to i64, !dbg !807
  %26 = add nsw i64 %22, %25, !dbg !808
  %27 = tail call i32 @fseeko64(ptr noundef %9, i64 noundef %26, i32 noundef 0), !dbg !809
  %28 = icmp eq i32 %27, 0, !dbg !809
  br i1 %28, label %29, label %90, !dbg !810

29:                                               ; preds = %8, %3
  %30 = load ptr, ptr %1, align 8, !dbg !811, !tbaa !561
  %31 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 5, ptr noundef %30), !dbg !813
  %32 = icmp eq i64 %31, 5, !dbg !814
  br i1 %32, label %33, label %90, !dbg !815

33:                                               ; preds = %29
  %34 = getelementptr inbounds [16 x i8], ptr %4, i64 0, i64 5, !dbg !816
  store i8 0, ptr %34, align 1, !dbg !817, !tbaa !576
  %35 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %4, ptr noundef nonnull dereferenceable(5) @.str.13, i64 5), !dbg !818
  %36 = icmp eq i32 %35, 0, !dbg !818
  br i1 %36, label %41, label %37, !dbg !820

37:                                               ; preds = %33
  %38 = load ptr, ptr @stderr, align 8, !dbg !821, !tbaa !349
  %39 = load i32, ptr %4, align 16, !dbg !823, !tbaa !335
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.14, i32 noundef %39, ptr noundef nonnull %4) #21, !dbg !824
  br label %90, !dbg !825

41:                                               ; preds = %33, %46
  %42 = phi i32 [ %47, %46 ], [ 0, %33 ]
  call void @llvm.dbg.value(metadata i32 %42, metadata !783, metadata !DIExpression()), !dbg !786
  %43 = load ptr, ptr %1, align 8, !dbg !826, !tbaa !561
  %44 = tail call i32 @fgetc(ptr noundef %43), !dbg !827
  %45 = icmp eq i32 %44, 10, !dbg !828
  br i1 %45, label %52, label %46, !dbg !829

46:                                               ; preds = %41
  %47 = add nuw nsw i32 %42, 1, !dbg !830
  call void @llvm.dbg.value(metadata i32 %47, metadata !783, metadata !DIExpression()), !dbg !786
  %48 = icmp eq i32 %47, 80, !dbg !831
  br i1 %48, label %49, label %41, !dbg !832, !llvm.loop !833

49:                                               ; preds = %46
  %50 = load ptr, ptr @stderr, align 8, !dbg !834, !tbaa !349
  %51 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 18, i64 1, ptr %50) #21, !dbg !837
  br label %90, !dbg !838

52:                                               ; preds = %41
  %53 = add nuw nsw i32 %42, 6, !dbg !839
  %54 = getelementptr inbounds %struct.y4m_input_t, ptr %1, i64 0, i32 5, !dbg !840
  store i32 %53, ptr %54, align 8, !dbg !841, !tbaa !567
  %55 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 3, i32 3, !dbg !842
  %56 = load ptr, ptr %55, align 8, !dbg !844, !tbaa !349
  %57 = getelementptr inbounds %struct.y4m_input_t, ptr %1, i64 0, i32 1, !dbg !845
  %58 = load i32, ptr %57, align 8, !dbg !845, !tbaa !622
  %59 = getelementptr inbounds %struct.y4m_input_t, ptr %1, i64 0, i32 2, !dbg !846
  %60 = load i32, ptr %59, align 4, !dbg !846, !tbaa !629
  %61 = mul nsw i32 %60, %58, !dbg !847
  %62 = sext i32 %61 to i64, !dbg !848
  %63 = load ptr, ptr %1, align 8, !dbg !849, !tbaa !561
  %64 = tail call i64 @fread(ptr noundef %56, i64 noundef 1, i64 noundef %62, ptr noundef %63), !dbg !850
  %65 = icmp eq i64 %64, 0, !dbg !851
  br i1 %65, label %90, label %66, !dbg !852

66:                                               ; preds = %52
  %67 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 3, i32 3, i64 1, !dbg !853
  %68 = load ptr, ptr %67, align 8, !dbg !853, !tbaa !349
  %69 = load i32, ptr %57, align 8, !dbg !854, !tbaa !622
  %70 = load i32, ptr %59, align 4, !dbg !855, !tbaa !629
  %71 = mul nsw i32 %70, %69, !dbg !856
  %72 = sdiv i32 %71, 4, !dbg !857
  %73 = sext i32 %72 to i64, !dbg !858
  %74 = load ptr, ptr %1, align 8, !dbg !859, !tbaa !561
  %75 = tail call i64 @fread(ptr noundef %68, i64 noundef 1, i64 noundef %73, ptr noundef %74), !dbg !860
  %76 = icmp eq i64 %75, 0, !dbg !861
  br i1 %76, label %90, label %77, !dbg !862

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 3, i32 3, i64 2, !dbg !863
  %79 = load ptr, ptr %78, align 8, !dbg !863, !tbaa !349
  %80 = load i32, ptr %57, align 8, !dbg !864, !tbaa !622
  %81 = load i32, ptr %59, align 4, !dbg !865, !tbaa !629
  %82 = mul nsw i32 %81, %80, !dbg !866
  %83 = sdiv i32 %82, 4, !dbg !867
  %84 = sext i32 %83 to i64, !dbg !868
  %85 = load ptr, ptr %1, align 8, !dbg !869, !tbaa !561
  %86 = tail call i64 @fread(ptr noundef %79, i64 noundef 1, i64 noundef %84, ptr noundef %85), !dbg !870
  %87 = icmp eq i64 %86, 0, !dbg !871
  br i1 %87, label %90, label %88, !dbg !872

88:                                               ; preds = %77
  %89 = add nsw i32 %2, 1, !dbg !873
  store i32 %89, ptr %5, align 8, !dbg !874, !tbaa !552
  br label %90, !dbg !875

90:                                               ; preds = %52, %66, %77, %29, %8, %88, %49, %37
  %91 = phi i32 [ -1, %37 ], [ -1, %49 ], [ 0, %88 ], [ -1, %8 ], [ -1, %29 ], [ -1, %77 ], [ -1, %66 ], [ -1, %52 ], !dbg !786
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20, !dbg !876
  ret i32 %91, !dbg !876
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_file_y4m(ptr noundef %0) local_unnamed_addr #6 !dbg !877 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !879, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata ptr %0, metadata !880, metadata !DIExpression()), !dbg !881
  %2 = icmp eq ptr %0, null, !dbg !882
  br i1 %2, label %8, label %3, !dbg !884

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !dbg !885, !tbaa !561
  %5 = icmp eq ptr %4, null, !dbg !886
  br i1 %5, label %8, label %6, !dbg !887

6:                                                ; preds = %3
  %7 = tail call i32 @fclose(ptr noundef nonnull %4), !dbg !888
  tail call void @free(ptr noundef nonnull %0) #20, !dbg !889
  br label %8, !dbg !890

8:                                                ; preds = %1, %3, %6
  ret i32 0, !dbg !891
}

; Function Attrs: nounwind uwtable
define dso_local i32 @open_file_thread(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 !dbg !892 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !894, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata ptr %1, metadata !895, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata ptr %2, metadata !896, metadata !DIExpression()), !dbg !922
  %4 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #18, !dbg !923
  call void @llvm.dbg.value(metadata ptr %4, metadata !897, metadata !DIExpression()), !dbg !922
  %5 = getelementptr inbounds %struct.thread_input_t, ptr %4, i64 0, i32 3, !dbg !924
  %6 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 3, !dbg !925
  %7 = load i32, ptr %6, align 4, !dbg !925, !tbaa !615
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 4, !dbg !926
  %9 = load i32, ptr %8, align 8, !dbg !926, !tbaa !627
  tail call void @x264_picture_alloc(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %7, i32 noundef %9) #20, !dbg !927
  %10 = load ptr, ptr @p_read_frame, align 8, !dbg !928, !tbaa !349
  store ptr %10, ptr %4, align 8, !dbg !929, !tbaa !930
  %11 = load ptr, ptr @p_close_infile, align 8, !dbg !935, !tbaa !349
  %12 = getelementptr inbounds %struct.thread_input_t, ptr %4, i64 0, i32 1, !dbg !936
  store ptr %11, ptr %12, align 8, !dbg !937, !tbaa !938
  %13 = load ptr, ptr %1, align 8, !dbg !939, !tbaa !349
  %14 = getelementptr inbounds %struct.thread_input_t, ptr %4, i64 0, i32 2, !dbg !940
  store ptr %13, ptr %14, align 8, !dbg !941, !tbaa !942
  %15 = getelementptr inbounds %struct.thread_input_t, ptr %4, i64 0, i32 7, !dbg !943
  store i32 0, ptr %15, align 8, !dbg !944, !tbaa !945
  %16 = getelementptr inbounds %struct.thread_input_t, ptr %4, i64 0, i32 5, !dbg !946
  store i32 -1, ptr %16, align 8, !dbg !947, !tbaa !948
  %17 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #18, !dbg !949
  %18 = getelementptr inbounds %struct.thread_input_t, ptr %4, i64 0, i32 8, !dbg !950
  store ptr %17, ptr %18, align 8, !dbg !951, !tbaa !952
  store ptr %4, ptr %17, align 8, !dbg !953, !tbaa !954
  %19 = getelementptr inbounds %struct.thread_input_arg_t, ptr %17, i64 0, i32 3, !dbg !956
  store i32 0, ptr %19, align 4, !dbg !957, !tbaa !958
  %20 = load ptr, ptr @p_get_frame_total, align 8, !dbg !959, !tbaa !349
  %21 = tail call i32 %20(ptr noundef %13) #20, !dbg !959
  %22 = getelementptr inbounds %struct.thread_input_t, ptr %4, i64 0, i32 6, !dbg !960
  store i32 %21, ptr %22, align 4, !dbg !961, !tbaa !962
  store ptr %4, ptr %1, align 8, !dbg !963, !tbaa !349
  ret i32 0, !dbg !964
}

declare !dbg !965 void @x264_picture_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @get_frame_total_thread(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !968 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !970, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr %0, metadata !971, metadata !DIExpression()), !dbg !972
  %2 = getelementptr inbounds %struct.thread_input_t, ptr %0, i64 0, i32 6, !dbg !973
  %3 = load i32, ptr %2, align 4, !dbg !973, !tbaa !962
  ret i32 %3, !dbg !974
}

; Function Attrs: nounwind uwtable
define dso_local i32 @read_frame_thread(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 !dbg !975 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.x264_picture_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !977, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata ptr %1, metadata !978, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i32 %2, metadata !979, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata ptr %1, metadata !980, metadata !DIExpression()), !dbg !987
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20, !dbg !988
  call void @llvm.dbg.value(metadata i32 0, metadata !982, metadata !DIExpression()), !dbg !987
  %6 = getelementptr inbounds %struct.thread_input_t, ptr %1, i64 0, i32 5, !dbg !989
  %7 = load i32, ptr %6, align 8, !dbg !989, !tbaa !948
  %8 = icmp sgt i32 %7, -1, !dbg !991
  br i1 %8, label %9, label %19, !dbg !992

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.thread_input_t, ptr %1, i64 0, i32 4, !dbg !993
  %11 = load i64, ptr %10, align 8, !dbg !993, !tbaa !995
  call void @llvm.dbg.value(metadata ptr %4, metadata !981, metadata !DIExpression(DW_OP_deref)), !dbg !987
  %12 = call i32 @pthread_join(i64 noundef %11, ptr noundef nonnull %4) #20, !dbg !996
  %13 = getelementptr inbounds %struct.thread_input_t, ptr %1, i64 0, i32 8, !dbg !997
  %14 = load ptr, ptr %13, align 8, !dbg !997, !tbaa !952
  %15 = getelementptr inbounds %struct.thread_input_arg_t, ptr %14, i64 0, i32 3, !dbg !998
  %16 = load i32, ptr %15, align 4, !dbg !998, !tbaa !958
  call void @llvm.dbg.value(metadata i32 %16, metadata !982, metadata !DIExpression()), !dbg !987
  %17 = getelementptr inbounds %struct.thread_input_t, ptr %1, i64 0, i32 7, !dbg !999
  store i32 0, ptr %17, align 8, !dbg !1000, !tbaa !945
  %18 = load i32, ptr %6, align 8, !dbg !1001, !tbaa !948
  br label %19, !dbg !1002

19:                                               ; preds = %9, %3
  %20 = phi i32 [ %18, %9 ], [ %7, %3 ], !dbg !1001
  %21 = phi i32 [ %16, %9 ], [ 0, %3 ], !dbg !987
  call void @llvm.dbg.value(metadata i32 %21, metadata !982, metadata !DIExpression()), !dbg !987
  %22 = icmp eq i32 %20, %2, !dbg !1003
  br i1 %22, label %23, label %25, !dbg !1004

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5), !dbg !1005
  call void @llvm.dbg.declare(metadata ptr %5, metadata !983, metadata !DIExpression()), !dbg !1005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !dbg !1005, !tbaa.struct !1006
  %24 = getelementptr inbounds %struct.thread_input_t, ptr %1, i64 0, i32 3, !dbg !1005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %24, i64 72, i1 false), !dbg !1005, !tbaa.struct !1006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %24, ptr noundef nonnull align 8 dereferenceable(72) %5, i64 72, i1 false), !dbg !1005, !tbaa.struct !1006
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5), !dbg !1008
  br label %31, !dbg !1009

25:                                               ; preds = %19
  %26 = load ptr, ptr %1, align 8, !dbg !1010, !tbaa !930
  %27 = getelementptr inbounds %struct.thread_input_t, ptr %1, i64 0, i32 2, !dbg !1012
  %28 = load ptr, ptr %27, align 8, !dbg !1012, !tbaa !942
  %29 = call i32 %26(ptr noundef %0, ptr noundef %28, i32 noundef %2) #20, !dbg !1013
  %30 = or i32 %29, %21, !dbg !1014
  call void @llvm.dbg.value(metadata i32 %30, metadata !982, metadata !DIExpression()), !dbg !987
  br label %31

31:                                               ; preds = %25, %23
  %32 = phi i32 [ %21, %23 ], [ %30, %25 ], !dbg !987
  call void @llvm.dbg.value(metadata i32 %32, metadata !982, metadata !DIExpression()), !dbg !987
  %33 = getelementptr inbounds %struct.thread_input_t, ptr %1, i64 0, i32 6, !dbg !1015
  %34 = load i32, ptr %33, align 4, !dbg !1015, !tbaa !962
  %35 = icmp eq i32 %34, 0, !dbg !1017
  %36 = add nsw i32 %2, 1
  %37 = icmp slt i32 %36, %34
  %38 = select i1 %35, i1 true, i1 %37, !dbg !1018
  br i1 %38, label %39, label %48, !dbg !1018

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.thread_input_t, ptr %1, i64 0, i32 8, !dbg !1019
  %41 = load ptr, ptr %40, align 8, !dbg !1019, !tbaa !952
  %42 = getelementptr inbounds %struct.thread_input_arg_t, ptr %41, i64 0, i32 2, !dbg !1021
  store i32 %36, ptr %42, align 8, !dbg !1022, !tbaa !1023
  store i32 %36, ptr %6, align 8, !dbg !1024, !tbaa !948
  %43 = getelementptr inbounds %struct.thread_input_t, ptr %1, i64 0, i32 3, !dbg !1025
  %44 = getelementptr inbounds %struct.thread_input_arg_t, ptr %41, i64 0, i32 1, !dbg !1026
  store ptr %43, ptr %44, align 8, !dbg !1027, !tbaa !1028
  %45 = getelementptr inbounds %struct.thread_input_t, ptr %1, i64 0, i32 4, !dbg !1029
  %46 = call i32 @pthread_create(ptr noundef nonnull %45, ptr noundef null, ptr noundef nonnull @read_frame_thread_int, ptr noundef %41) #20, !dbg !1030
  %47 = getelementptr inbounds %struct.thread_input_t, ptr %1, i64 0, i32 7, !dbg !1031
  store i32 1, ptr %47, align 8, !dbg !1032, !tbaa !945
  br label %49, !dbg !1033

48:                                               ; preds = %31
  store i32 -1, ptr %6, align 8, !dbg !1034, !tbaa !948
  br label %49

49:                                               ; preds = %48, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20, !dbg !1035
  ret i32 %32, !dbg !1036
}

declare !dbg !1037 i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind
declare !dbg !1042 i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal void @read_frame_thread_int(ptr nocapture noundef %0) #6 !dbg !1061 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1067, metadata !DIExpression()), !dbg !1068
  %2 = load ptr, ptr %0, align 8, !dbg !1069, !tbaa !954
  %3 = load ptr, ptr %2, align 8, !dbg !1070, !tbaa !930
  %4 = getelementptr inbounds %struct.thread_input_arg_t, ptr %0, i64 0, i32 1, !dbg !1071
  %5 = load ptr, ptr %4, align 8, !dbg !1071, !tbaa !1028
  %6 = getelementptr inbounds %struct.thread_input_t, ptr %2, i64 0, i32 2, !dbg !1072
  %7 = load ptr, ptr %6, align 8, !dbg !1072, !tbaa !942
  %8 = getelementptr inbounds %struct.thread_input_arg_t, ptr %0, i64 0, i32 2, !dbg !1073
  %9 = load i32, ptr %8, align 8, !dbg !1073, !tbaa !1023
  %10 = tail call i32 %3(ptr noundef %5, ptr noundef %7, i32 noundef %9) #20, !dbg !1074
  %11 = getelementptr inbounds %struct.thread_input_arg_t, ptr %0, i64 0, i32 3, !dbg !1075
  store i32 %10, ptr %11, align 4, !dbg !1076, !tbaa !958
  ret void, !dbg !1077
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_file_thread(ptr noundef %0) local_unnamed_addr #6 !dbg !1078 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1080, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata ptr %0, metadata !1081, metadata !DIExpression()), !dbg !1082
  %2 = getelementptr inbounds %struct.thread_input_t, ptr %0, i64 0, i32 1, !dbg !1083
  %3 = load ptr, ptr %2, align 8, !dbg !1083, !tbaa !938
  %4 = getelementptr inbounds %struct.thread_input_t, ptr %0, i64 0, i32 2, !dbg !1084
  %5 = load ptr, ptr %4, align 8, !dbg !1084, !tbaa !942
  %6 = tail call i32 %3(ptr noundef %5) #20, !dbg !1085
  %7 = getelementptr inbounds %struct.thread_input_t, ptr %0, i64 0, i32 3, !dbg !1086
  tail call void @x264_picture_clean(ptr noundef nonnull %7) #20, !dbg !1087
  %8 = getelementptr inbounds %struct.thread_input_t, ptr %0, i64 0, i32 7, !dbg !1088
  %9 = load i32, ptr %8, align 8, !dbg !1088, !tbaa !945
  %10 = icmp eq i32 %9, 0, !dbg !1090
  br i1 %10, label %15, label %11, !dbg !1091

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.thread_input_t, ptr %0, i64 0, i32 4, !dbg !1092
  %13 = load i64, ptr %12, align 8, !dbg !1092, !tbaa !995
  %14 = tail call i32 @pthread_join(i64 noundef %13, ptr noundef null) #20, !dbg !1093
  br label %15, !dbg !1093

15:                                               ; preds = %11, %1
  %16 = getelementptr inbounds %struct.thread_input_t, ptr %0, i64 0, i32 8, !dbg !1094
  %17 = load ptr, ptr %16, align 8, !dbg !1094, !tbaa !952
  tail call void @free(ptr noundef %17) #20, !dbg !1095
  tail call void @free(ptr noundef nonnull %0) #20, !dbg !1096
  ret i32 0, !dbg !1097
}

declare !dbg !1098 void @x264_picture_clean(ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @open_file_bsf(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !1101 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1105, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %1, metadata !1106, metadata !DIExpression()), !dbg !1107
  %3 = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.16), !dbg !1108
  store ptr %3, ptr %1, align 8, !dbg !1110, !tbaa !349
  %4 = icmp eq ptr %3, null, !dbg !1111
  %5 = sext i1 %4 to i32, !dbg !1107
  ret i32 %5, !dbg !1112
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @set_param_bsf(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #13 !dbg !1113 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1117, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata ptr %1, metadata !1118, metadata !DIExpression()), !dbg !1119
  ret i32 0, !dbg !1120
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @write_nalu_bsf(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1121 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1125, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata ptr %1, metadata !1126, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i32 %2, metadata !1127, metadata !DIExpression()), !dbg !1128
  %4 = sext i32 %2 to i64, !dbg !1129
  %5 = tail call i64 @fwrite(ptr noundef %1, i64 noundef %4, i64 noundef 1, ptr noundef %0), !dbg !1131
  %6 = icmp eq i64 %5, 0, !dbg !1132
  %7 = select i1 %6, i32 -1, i32 %2, !dbg !1128
  ret i32 %7, !dbg !1133
}

; Function Attrs: nofree nounwind
declare !dbg !1134 noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @set_eop_bsf(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #13 !dbg !1140 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1144, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata ptr %1, metadata !1145, metadata !DIExpression()), !dbg !1146
  ret i32 0, !dbg !1147
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @close_file_bsf(ptr noundef %0) local_unnamed_addr #0 !dbg !1148 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1150, metadata !DIExpression()), !dbg !1151
  %2 = icmp eq ptr %0, null, !dbg !1152
  %3 = load ptr, ptr @stdout, align 8
  %4 = icmp eq ptr %3, %0
  %5 = select i1 %2, i1 true, i1 %4, !dbg !1154
  br i1 %5, label %8, label %6, !dbg !1154

6:                                                ; preds = %1
  %7 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1155
  br label %8, !dbg !1156

8:                                                ; preds = %1, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ], !dbg !1151
  ret i32 %9, !dbg !1157
}

; Function Attrs: nounwind uwtable
define dso_local i32 @open_file_mkv(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 !dbg !1158 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1160, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata ptr %1, metadata !1161, metadata !DIExpression()), !dbg !1184
  store ptr null, ptr %1, align 8, !dbg !1185, !tbaa !349
  %3 = tail call dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72), !dbg !1186
  call void @llvm.dbg.value(metadata ptr %3, metadata !1162, metadata !DIExpression()), !dbg !1184
  %4 = icmp eq ptr %3, null, !dbg !1187
  br i1 %4, label %10, label %5, !dbg !1189

5:                                                ; preds = %2
  %6 = tail call ptr @mk_createWriter(ptr noundef %0) #20, !dbg !1190
  store ptr %6, ptr %3, align 8, !dbg !1191, !tbaa !1192
  %7 = icmp eq ptr %6, null, !dbg !1194
  br i1 %7, label %8, label %9, !dbg !1196

8:                                                ; preds = %5
  tail call void @free(ptr noundef nonnull %3) #20, !dbg !1197
  br label %10, !dbg !1199

9:                                                ; preds = %5
  store ptr %3, ptr %1, align 8, !dbg !1200, !tbaa !349
  br label %10, !dbg !1201

10:                                               ; preds = %2, %9, %8
  %11 = phi i32 [ -1, %8 ], [ 0, %9 ], [ -1, %2 ], !dbg !1184
  ret i32 %11, !dbg !1202
}

declare !dbg !1203 ptr @mk_createWriter(ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @set_param_mkv(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !dbg !1206 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1208, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata ptr %1, metadata !1209, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata ptr %0, metadata !1210, metadata !DIExpression()), !dbg !1216
  %3 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 9, !dbg !1217
  %4 = load i32, ptr %3, align 4, !dbg !1217, !tbaa !656
  %5 = icmp sgt i32 %4, 0, !dbg !1219
  br i1 %5, label %6, label %13, !dbg !1220

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 10, !dbg !1221
  %8 = load i32, ptr %7, align 8, !dbg !1221, !tbaa !659
  %9 = sext i32 %8 to i64, !dbg !1223
  %10 = mul nsw i64 %9, 1000000000, !dbg !1224
  %11 = zext i32 %4 to i64
  %12 = sdiv i64 %10, %11, !dbg !1225
  br label %13, !dbg !1226

13:                                               ; preds = %2, %6
  %14 = phi i64 [ %12, %6 ], [ 0, %2 ], !dbg !1227
  %15 = phi i32 [ %4, %6 ], [ 1, %2 ], !dbg !1227
  %16 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 9, !dbg !1227
  store i64 %14, ptr %16, align 8, !dbg !1227
  %17 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 10, !dbg !1227
  store i32 %15, ptr %17, align 8, !dbg !1227
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 3, !dbg !1228
  %19 = load i32, ptr %18, align 4, !dbg !1228, !tbaa !615
  %20 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 5, !dbg !1229
  store i32 %19, ptr %20, align 8, !dbg !1230, !tbaa !1231
  %21 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 4, !dbg !1232
  %22 = load i32, ptr %21, align 8, !dbg !1232, !tbaa !627
  %23 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 6, !dbg !1233
  store i32 %22, ptr %23, align 4, !dbg !1234, !tbaa !1235
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 8, i32 1, !dbg !1236
  %25 = load i32, ptr %24, align 4, !dbg !1236, !tbaa !668
  %26 = icmp eq i32 %25, 0, !dbg !1238
  br i1 %26, label %38, label %27, !dbg !1239

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 8, !dbg !1240
  %29 = load i32, ptr %28, align 8, !dbg !1241, !tbaa !672
  %30 = icmp eq i32 %29, 0, !dbg !1242
  br i1 %30, label %38, label %31, !dbg !1243

31:                                               ; preds = %27
  %32 = sext i32 %19 to i64, !dbg !1244
  %33 = sext i32 %25 to i64, !dbg !1246
  %34 = mul nsw i64 %33, %32, !dbg !1247
  call void @llvm.dbg.value(metadata i64 %34, metadata !1211, metadata !DIExpression()), !dbg !1216
  %35 = sext i32 %22 to i64, !dbg !1248
  %36 = sext i32 %29 to i64, !dbg !1249
  %37 = mul nsw i64 %36, %35, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %37, metadata !1212, metadata !DIExpression()), !dbg !1216
  br label %41, !dbg !1251

38:                                               ; preds = %27, %13
  %39 = sext i32 %19 to i64, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %39, metadata !1211, metadata !DIExpression()), !dbg !1216
  %40 = sext i32 %22 to i64, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %40, metadata !1212, metadata !DIExpression()), !dbg !1216
  br label %41

41:                                               ; preds = %38, %31
  %42 = phi i64 [ %37, %31 ], [ %40, %38 ], !dbg !1255
  %43 = phi i64 [ %34, %31 ], [ %39, %38 ], !dbg !1255
  call void @llvm.dbg.value(metadata i64 %43, metadata !1211, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %42, metadata !1212, metadata !DIExpression()), !dbg !1216
  %44 = icmp sgt i64 %43, 0, !dbg !1256
  %45 = icmp sgt i64 %42, 0
  %46 = select i1 %44, i1 %45, i1 false, !dbg !1257
  br i1 %46, label %47, label %55, !dbg !1257

47:                                               ; preds = %41, %47
  %48 = phi i64 [ %49, %47 ], [ %43, %41 ]
  %49 = phi i64 [ %50, %47 ], [ %42, %41 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !1258, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i64 %48, metadata !1263, metadata !DIExpression()), !dbg !1266
  %50 = urem i64 %48, %49
  call void @llvm.dbg.value(metadata i64 %50, metadata !1264, metadata !DIExpression()), !dbg !1268
  %51 = icmp eq i64 %50, 0, !dbg !1269
  call void @llvm.dbg.value(metadata i64 poison, metadata !1258, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i64 poison, metadata !1263, metadata !DIExpression()), !dbg !1266
  br i1 %51, label %52, label %47

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i64 %49, metadata !1213, metadata !DIExpression()), !dbg !1271
  %53 = sdiv i64 %43, %49, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %53, metadata !1211, metadata !DIExpression()), !dbg !1216
  %54 = sdiv i64 %42, %49, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %54, metadata !1212, metadata !DIExpression()), !dbg !1216
  br label %55, !dbg !1274

55:                                               ; preds = %52, %41
  %56 = phi i64 [ %54, %52 ], [ %42, %41 ], !dbg !1216
  %57 = phi i64 [ %53, %52 ], [ %43, %41 ], !dbg !1216
  call void @llvm.dbg.value(metadata i64 %57, metadata !1211, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %56, metadata !1212, metadata !DIExpression()), !dbg !1216
  %58 = trunc i64 %57 to i32, !dbg !1275
  %59 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 7, !dbg !1276
  store i32 %58, ptr %59, align 8, !dbg !1277, !tbaa !1278
  %60 = trunc i64 %56 to i32, !dbg !1279
  %61 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 8, !dbg !1280
  store i32 %60, ptr %61, align 4, !dbg !1281, !tbaa !1282
  ret i32 0, !dbg !1283
}

; Function Attrs: nounwind uwtable
define dso_local i32 @write_nalu_mkv(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 !dbg !1284 {
  %4 = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1286, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata ptr %1, metadata !1287, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i32 %2, metadata !1288, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata ptr %0, metadata !1289, metadata !DIExpression()), !dbg !1294
  %5 = getelementptr inbounds i8, ptr %1, i64 4, !dbg !1295
  %6 = load i8, ptr %5, align 1, !dbg !1295, !tbaa !576
  %7 = and i8 %6, 31, !dbg !1296
  call void @llvm.dbg.value(metadata i8 %7, metadata !1290, metadata !DIExpression()), !dbg !1294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20, !dbg !1297
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1291, metadata !DIExpression()), !dbg !1298
  %8 = zext i8 %7 to i32, !dbg !1299
  switch i32 %8, label %59 [
    i32 7, label %9
    i32 8, label %20
    i32 1, label %31
    i32 5, label %31
    i32 6, label %31
  ], !dbg !1300

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 1, !dbg !1301
  %11 = load ptr, ptr %10, align 8, !dbg !1301, !tbaa !1304
  %12 = icmp eq ptr %11, null, !dbg !1305
  br i1 %12, label %13, label %59, !dbg !1306

13:                                               ; preds = %9
  %14 = add nsw i32 %2, -4, !dbg !1307
  %15 = sext i32 %14 to i64, !dbg !1309
  %16 = tail call noalias ptr @malloc(i64 noundef %15) #18, !dbg !1310
  store ptr %16, ptr %10, align 8, !dbg !1311, !tbaa !1304
  %17 = icmp eq ptr %16, null, !dbg !1312
  br i1 %17, label %137, label %18, !dbg !1314

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 3, !dbg !1315
  store i32 %14, ptr %19, align 8, !dbg !1316, !tbaa !1317
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr nonnull align 1 %5, i64 %15, i1 false), !dbg !1318
  br label %59, !dbg !1319

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 2, !dbg !1320
  %22 = load ptr, ptr %21, align 8, !dbg !1320, !tbaa !1322
  %23 = icmp eq ptr %22, null, !dbg !1323
  br i1 %23, label %24, label %59, !dbg !1324

24:                                               ; preds = %20
  %25 = add nsw i32 %2, -4, !dbg !1325
  %26 = sext i32 %25 to i64, !dbg !1327
  %27 = tail call noalias ptr @malloc(i64 noundef %26) #18, !dbg !1328
  store ptr %27, ptr %21, align 8, !dbg !1329, !tbaa !1322
  %28 = icmp eq ptr %27, null, !dbg !1330
  br i1 %28, label %137, label %29, !dbg !1332

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 4, !dbg !1333
  store i32 %25, ptr %30, align 4, !dbg !1334, !tbaa !1335
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr nonnull align 1 %5, i64 %26, i1 false), !dbg !1336
  br label %59, !dbg !1337

31:                                               ; preds = %3, %3, %3
  %32 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 12, !dbg !1338
  %33 = load i8, ptr %32, align 8, !dbg !1338, !tbaa !1340
  %34 = icmp eq i8 %33, 0, !dbg !1341
  br i1 %34, label %35, label %40, !dbg !1342

35:                                               ; preds = %31
  %36 = load ptr, ptr %0, align 8, !dbg !1343, !tbaa !1192
  %37 = tail call i32 @mk_startFrame(ptr noundef %36) #20, !dbg !1346
  %38 = icmp slt i32 %37, 0, !dbg !1347
  br i1 %38, label %137, label %39, !dbg !1348

39:                                               ; preds = %35
  store i8 1, ptr %32, align 8, !dbg !1349, !tbaa !1340
  br label %40, !dbg !1350

40:                                               ; preds = %39, %31
  %41 = add nsw i32 %2, -4, !dbg !1351
  call void @llvm.dbg.value(metadata i32 %41, metadata !1293, metadata !DIExpression()), !dbg !1294
  %42 = lshr i32 %41, 24, !dbg !1352
  %43 = trunc i32 %42 to i8, !dbg !1353
  store i8 %43, ptr %4, align 1, !dbg !1354, !tbaa !576
  %44 = lshr i32 %41, 16, !dbg !1355
  %45 = trunc i32 %44 to i8, !dbg !1356
  %46 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1, !dbg !1357
  store i8 %45, ptr %46, align 1, !dbg !1358, !tbaa !576
  %47 = lshr i32 %41, 8, !dbg !1359
  %48 = trunc i32 %47 to i8, !dbg !1360
  %49 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2, !dbg !1361
  store i8 %48, ptr %49, align 1, !dbg !1362, !tbaa !576
  %50 = trunc i32 %41 to i8, !dbg !1363
  %51 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3, !dbg !1364
  store i8 %50, ptr %51, align 1, !dbg !1365, !tbaa !576
  %52 = load ptr, ptr %0, align 8, !dbg !1366, !tbaa !1192
  %53 = call i32 @mk_addFrameData(ptr noundef %52, ptr noundef nonnull %4, i32 noundef 4) #20, !dbg !1368
  %54 = icmp slt i32 %53, 0, !dbg !1369
  br i1 %54, label %137, label %55, !dbg !1370

55:                                               ; preds = %40
  %56 = load ptr, ptr %0, align 8, !dbg !1371, !tbaa !1192
  %57 = call i32 @mk_addFrameData(ptr noundef %56, ptr noundef nonnull %5, i32 noundef %41) #20, !dbg !1372
  %58 = icmp slt i32 %57, 0, !dbg !1373
  br i1 %58, label %137, label %59, !dbg !1374

59:                                               ; preds = %3, %55, %20, %29, %9, %18
  %60 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 11, !dbg !1375
  %61 = load i32, ptr %60, align 4, !dbg !1375, !tbaa !1377
  %62 = icmp eq i32 %61, 0, !dbg !1378
  br i1 %62, label %63, label %136, !dbg !1379

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 2, !dbg !1380
  %65 = load ptr, ptr %64, align 8, !dbg !1380, !tbaa !1322
  %66 = icmp eq ptr %65, null, !dbg !1381
  br i1 %66, label %136, label %67, !dbg !1382

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 1, !dbg !1383
  %69 = load ptr, ptr %68, align 8, !dbg !1383, !tbaa !1304
  %70 = icmp eq ptr %69, null, !dbg !1384
  br i1 %70, label %136, label %71, !dbg !1385

71:                                               ; preds = %67
  call void @llvm.dbg.value(metadata ptr %0, metadata !1386, metadata !DIExpression()), !dbg !1394
  %72 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 5, !dbg !1396
  %73 = load i32, ptr %72, align 8, !dbg !1396, !tbaa !1231
  %74 = icmp eq i32 %73, 0, !dbg !1398
  br i1 %74, label %137, label %75, !dbg !1399

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 6, !dbg !1400
  %77 = load i32, ptr %76, align 4, !dbg !1400, !tbaa !1235
  %78 = icmp eq i32 %77, 0, !dbg !1401
  br i1 %78, label %137, label %79, !dbg !1402

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 7, !dbg !1403
  %81 = load i32, ptr %80, align 8, !dbg !1403, !tbaa !1278
  %82 = icmp eq i32 %81, 0, !dbg !1404
  br i1 %82, label %137, label %83, !dbg !1405

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 8, !dbg !1406
  %85 = load i32, ptr %84, align 4, !dbg !1406, !tbaa !1282
  %86 = icmp eq i32 %85, 0, !dbg !1407
  br i1 %86, label %137, label %87, !dbg !1408

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 3, !dbg !1409
  %89 = load i32, ptr %88, align 8, !dbg !1409, !tbaa !1317
  %90 = add nsw i32 %89, 11, !dbg !1410
  %91 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 4, !dbg !1411
  %92 = load i32, ptr %91, align 4, !dbg !1411, !tbaa !1335
  %93 = add nsw i32 %90, %92, !dbg !1412
  call void @llvm.dbg.value(metadata i32 %93, metadata !1393, metadata !DIExpression()), !dbg !1394
  %94 = sext i32 %93 to i64, !dbg !1413
  %95 = call noalias ptr @malloc(i64 noundef %94) #18, !dbg !1414
  call void @llvm.dbg.value(metadata ptr %95, metadata !1392, metadata !DIExpression()), !dbg !1394
  %96 = icmp eq ptr %95, null, !dbg !1415
  br i1 %96, label %137, label %97, !dbg !1417

97:                                               ; preds = %87
  store i8 1, ptr %95, align 1, !dbg !1418, !tbaa !576
  %98 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !1419
  %99 = load i8, ptr %98, align 1, !dbg !1419, !tbaa !576
  %100 = getelementptr inbounds i8, ptr %95, i64 1, !dbg !1420
  store i8 %99, ptr %100, align 1, !dbg !1421, !tbaa !576
  %101 = getelementptr inbounds i8, ptr %69, i64 2, !dbg !1422
  %102 = load i8, ptr %101, align 1, !dbg !1422, !tbaa !576
  %103 = getelementptr inbounds i8, ptr %95, i64 2, !dbg !1423
  store i8 %102, ptr %103, align 1, !dbg !1424, !tbaa !576
  %104 = getelementptr inbounds i8, ptr %69, i64 3, !dbg !1425
  %105 = load i8, ptr %104, align 1, !dbg !1425, !tbaa !576
  %106 = getelementptr inbounds i8, ptr %95, i64 3, !dbg !1426
  store i8 %105, ptr %106, align 1, !dbg !1427, !tbaa !576
  %107 = getelementptr inbounds i8, ptr %95, i64 4, !dbg !1428
  store i8 -1, ptr %107, align 1, !dbg !1429, !tbaa !576
  %108 = getelementptr inbounds i8, ptr %95, i64 5, !dbg !1430
  store i8 -31, ptr %108, align 1, !dbg !1431, !tbaa !576
  %109 = lshr i32 %89, 8, !dbg !1432
  %110 = trunc i32 %109 to i8, !dbg !1433
  %111 = getelementptr inbounds i8, ptr %95, i64 6, !dbg !1434
  store i8 %110, ptr %111, align 1, !dbg !1435, !tbaa !576
  %112 = trunc i32 %89 to i8, !dbg !1436
  %113 = getelementptr inbounds i8, ptr %95, i64 7, !dbg !1437
  store i8 %112, ptr %113, align 1, !dbg !1438, !tbaa !576
  %114 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !1439
  %115 = sext i32 %89 to i64, !dbg !1440
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %114, ptr nonnull align 1 %69, i64 %115, i1 false), !dbg !1441
  %116 = add nsw i32 %89, 8, !dbg !1442
  %117 = sext i32 %116 to i64, !dbg !1443
  %118 = getelementptr inbounds i8, ptr %95, i64 %117, !dbg !1443
  store i8 1, ptr %118, align 1, !dbg !1444, !tbaa !576
  %119 = lshr i32 %92, 8, !dbg !1445
  %120 = trunc i32 %119 to i8, !dbg !1446
  %121 = add nsw i32 %89, 9, !dbg !1447
  %122 = sext i32 %121 to i64, !dbg !1448
  %123 = getelementptr inbounds i8, ptr %95, i64 %122, !dbg !1448
  store i8 %120, ptr %123, align 1, !dbg !1449, !tbaa !576
  %124 = trunc i32 %92 to i8, !dbg !1450
  %125 = add nsw i32 %89, 10, !dbg !1451
  %126 = sext i32 %125 to i64, !dbg !1452
  %127 = getelementptr inbounds i8, ptr %95, i64 %126, !dbg !1452
  store i8 %124, ptr %127, align 1, !dbg !1453, !tbaa !576
  %128 = getelementptr inbounds i8, ptr %95, i64 11, !dbg !1454
  %129 = getelementptr inbounds i8, ptr %128, i64 %115, !dbg !1455
  %130 = sext i32 %92 to i64, !dbg !1456
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %129, ptr nonnull align 1 %65, i64 %130, i1 false), !dbg !1457
  %131 = load ptr, ptr %0, align 8, !dbg !1458, !tbaa !1192
  %132 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 9, !dbg !1459
  %133 = load i64, ptr %132, align 8, !dbg !1459, !tbaa !1460
  %134 = call i32 @mk_writeHeader(ptr noundef %131, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull %95, i32 noundef %93, i64 noundef %133, i64 noundef 50000, i32 noundef %73, i32 noundef %77, i32 noundef %81, i32 noundef %85) #20, !dbg !1461
  call void @llvm.dbg.value(metadata i32 %134, metadata !1391, metadata !DIExpression()), !dbg !1394
  call void @free(ptr noundef nonnull %95) #20, !dbg !1462
  store i32 1, ptr %60, align 4, !dbg !1463, !tbaa !1377
  %135 = icmp slt i32 %134, 0, !dbg !1464
  br i1 %135, label %137, label %136, !dbg !1465

136:                                              ; preds = %97, %67, %63, %59
  br label %137, !dbg !1466

137:                                              ; preds = %87, %71, %75, %79, %83, %97, %40, %55, %35, %24, %13, %136
  %138 = phi i32 [ %2, %136 ], [ -1, %13 ], [ -1, %24 ], [ -1, %35 ], [ -1, %55 ], [ -1, %40 ], [ -1, %97 ], [ -1, %83 ], [ -1, %79 ], [ -1, %75 ], [ -1, %71 ], [ -1, %87 ], !dbg !1294
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20, !dbg !1467
  ret i32 %138, !dbg !1467
}

declare !dbg !1468 i32 @mk_startFrame(ptr noundef) local_unnamed_addr #9

declare !dbg !1471 i32 @mk_addFrameData(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @set_eop_mkv(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 !dbg !1474 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1476, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata ptr %1, metadata !1477, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata ptr %0, metadata !1478, metadata !DIExpression()), !dbg !1480
  %3 = getelementptr inbounds %struct.x264_picture_t, ptr %1, i64 0, i32 2, !dbg !1481
  %4 = load i64, ptr %3, align 8, !dbg !1481, !tbaa !1482
  %5 = sitofp i64 %4 to double, !dbg !1483
  %6 = fmul fast double %5, 1.000000e+09, !dbg !1484
  %7 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 10, !dbg !1485
  %8 = load i32, ptr %7, align 8, !dbg !1485, !tbaa !1486
  %9 = sitofp i32 %8 to double, !dbg !1487
  %10 = fdiv fast double %6, %9, !dbg !1488
  %11 = fptosi double %10 to i64, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %11, metadata !1479, metadata !DIExpression()), !dbg !1480
  %12 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 12, !dbg !1490
  store i8 0, ptr %12, align 8, !dbg !1491, !tbaa !1340
  %13 = load ptr, ptr %0, align 8, !dbg !1492, !tbaa !1192
  %14 = load i32, ptr %1, align 8, !dbg !1493, !tbaa !1494
  %15 = icmp eq i32 %14, 1, !dbg !1495
  %16 = zext i1 %15 to i32, !dbg !1495
  %17 = tail call i32 @mk_setFrameFlags(ptr noundef %13, i64 noundef %11, i32 noundef %16) #20, !dbg !1496
  ret i32 %17, !dbg !1497
}

declare !dbg !1498 i32 @mk_setFrameFlags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @close_file_mkv(ptr nocapture noundef %0) local_unnamed_addr #6 !dbg !1501 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1503, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %0, metadata !1504, metadata !DIExpression()), !dbg !1506
  %2 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 1, !dbg !1507
  %3 = load ptr, ptr %2, align 8, !dbg !1507, !tbaa !1304
  %4 = icmp eq ptr %3, null, !dbg !1509
  br i1 %4, label %6, label %5, !dbg !1510

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #20, !dbg !1511
  br label %6, !dbg !1511

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.mkv_t, ptr %0, i64 0, i32 2, !dbg !1512
  %8 = load ptr, ptr %7, align 8, !dbg !1512, !tbaa !1322
  %9 = icmp eq ptr %8, null, !dbg !1514
  br i1 %9, label %11, label %10, !dbg !1515

10:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %8) #20, !dbg !1516
  br label %11, !dbg !1516

11:                                               ; preds = %10, %6
  %12 = load ptr, ptr %0, align 8, !dbg !1517, !tbaa !1192
  %13 = tail call i32 @mk_close(ptr noundef %12) #20, !dbg !1518
  call void @llvm.dbg.value(metadata i32 %13, metadata !1505, metadata !DIExpression()), !dbg !1506
  tail call void @free(ptr noundef nonnull %0) #20, !dbg !1519
  ret i32 %13, !dbg !1520
}

declare !dbg !1521 i32 @mk_close(ptr noundef) local_unnamed_addr #9

declare !dbg !1522 i32 @mk_writeHeader(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #15

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #16

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #17

attributes #0 = { nofree nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { mustprogress nofree nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind willreturn memory(argmem: read) }
attributes #17 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind }
attributes #21 = { cold }

!llvm.dbg.cu = !{!85}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "muxers.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "29443cea8e27dec2fce9a2e500018490")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 2)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 3)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 170, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 190, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 22)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 44)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 210, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 6)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 7)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 233, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 8)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 234, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 9)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 235, type: !49, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 33)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 246, type: !56, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !34, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 293, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 32)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 303, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 19)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 522, type: !19, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 849, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 5)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 849, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 16)
!85 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !86, globals: !161, splitDebugInlining: false, nameTableKind: None)
!86 = !{!87, !88, !90, !91, !96, !100, !158}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !89, line: 27, baseType: !87)
!89 = !DIFile(filename: "./muxers.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "ed3d03989a60e06598fb30a2be34ae15")
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !92, line: 27, baseType: !93)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !94, line: 45, baseType: !95)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!95 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !92, line: 26, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !94, line: 42, baseType: !99)
!99 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!105 = !{!106, !107, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !122, !124, !125, !126, !129, !131, !133, !137, !140, !142, !145, !148, !149, !150, !153, !154}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !103, file: !104, line: 51, baseType: !90, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !103, file: !104, line: 54, baseType: !108, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !103, file: !104, line: 55, baseType: !108, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !103, file: !104, line: 56, baseType: !108, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !103, file: !104, line: 57, baseType: !108, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !103, file: !104, line: 58, baseType: !108, size: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !103, file: !104, line: 59, baseType: !108, size: 64, offset: 384)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !103, file: !104, line: 60, baseType: !108, size: 64, offset: 448)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !103, file: !104, line: 61, baseType: !108, size: 64, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !103, file: !104, line: 64, baseType: !108, size: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !103, file: !104, line: 65, baseType: !108, size: 64, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !103, file: !104, line: 66, baseType: !108, size: 64, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !103, file: !104, line: 68, baseType: !120, size: 64, offset: 768)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !104, line: 36, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !103, file: !104, line: 70, baseType: !123, size: 64, offset: 832)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !103, file: !104, line: 72, baseType: !90, size: 32, offset: 896)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !103, file: !104, line: 73, baseType: !90, size: 32, offset: 928)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !103, file: !104, line: 74, baseType: !127, size: 64, offset: 960)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !94, line: 152, baseType: !128)
!128 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !103, file: !104, line: 77, baseType: !130, size: 16, offset: 1024)
!130 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !103, file: !104, line: 78, baseType: !132, size: 8, offset: 1040)
!132 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !103, file: !104, line: 79, baseType: !134, size: 8, offset: 1048)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 1)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !103, file: !104, line: 81, baseType: !138, size: 64, offset: 1088)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !104, line: 43, baseType: null)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !103, file: !104, line: 89, baseType: !141, size: 64, offset: 1152)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !94, line: 153, baseType: !128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !103, file: !104, line: 91, baseType: !143, size: 64, offset: 1216)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !104, line: 37, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !103, file: !104, line: 92, baseType: !146, size: 64, offset: 1280)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !104, line: 38, flags: DIFlagFwdDecl)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !103, file: !104, line: 93, baseType: !123, size: 64, offset: 1344)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !103, file: !104, line: 94, baseType: !87, size: 64, offset: 1408)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !103, file: !104, line: 95, baseType: !151, size: 64, offset: 1472)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 46, baseType: !95)
!152 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !103, file: !104, line: 96, baseType: !90, size: 32, offset: 1536)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !103, file: !104, line: 98, baseType: !155, size: 160, offset: 1568)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 20)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !159, line: 27, baseType: !160)
!159 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !94, line: 44, baseType: !128)
!161 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !54, !59, !61, !63, !68, !73, !75, !80}
!162 = !{i32 7, !"Dwarf Version", i32 5}
!163 = !{i32 2, !"Debug Info Version", i32 3}
!164 = !{i32 1, !"wchar_size", i32 4}
!165 = !{i32 8, !"PIC Level", i32 2}
!166 = !{i32 7, !"PIE Level", i32 2}
!167 = !{i32 7, !"uwtable", i32 2}
!168 = !{!"clang version 16.0.0"}
!169 = distinct !DISubprogram(name: "open_file_yuv", scope: !2, file: !2, line: 63, type: !170, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !318)
!170 = !DISubroutineType(types: !171)
!171 = !{!90, !108, !172, !173}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !175, line: 295, baseType: !176)
!175 = !DIFile(filename: "./x264.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "9fe19a6136ab7ddd44a70d62bce62365")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !175, line: 151, size: 4928, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !222, !223, !224, !225, !229, !230, !244, !245, !246, !247, !248, !276, !315, !316, !317}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !176, file: !175, line: 154, baseType: !99, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !176, file: !175, line: 155, baseType: !90, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !176, file: !175, line: 156, baseType: !90, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !176, file: !175, line: 159, baseType: !90, size: 32, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !176, file: !175, line: 160, baseType: !90, size: 32, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !176, file: !175, line: 161, baseType: !90, size: 32, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !176, file: !175, line: 162, baseType: !90, size: 32, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !176, file: !175, line: 163, baseType: !90, size: 32, offset: 224)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !176, file: !175, line: 180, baseType: !187, size: 288, offset: 256)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !175, line: 165, size: 288, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !197}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !187, file: !175, line: 168, baseType: !90, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !187, file: !175, line: 169, baseType: !90, size: 32, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !187, file: !175, line: 171, baseType: !90, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !187, file: !175, line: 174, baseType: !90, size: 32, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !187, file: !175, line: 175, baseType: !90, size: 32, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !187, file: !175, line: 176, baseType: !90, size: 32, offset: 160)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !187, file: !175, line: 177, baseType: !90, size: 32, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !187, file: !175, line: 178, baseType: !90, size: 32, offset: 224)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !187, file: !175, line: 179, baseType: !90, size: 32, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !176, file: !175, line: 182, baseType: !90, size: 32, offset: 544)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !176, file: !175, line: 183, baseType: !90, size: 32, offset: 576)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !176, file: !175, line: 186, baseType: !90, size: 32, offset: 608)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !176, file: !175, line: 187, baseType: !90, size: 32, offset: 640)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !176, file: !175, line: 188, baseType: !90, size: 32, offset: 672)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !176, file: !175, line: 189, baseType: !90, size: 32, offset: 704)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "b_pre_scenecut", scope: !176, file: !175, line: 190, baseType: !90, size: 32, offset: 736)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !176, file: !175, line: 191, baseType: !90, size: 32, offset: 768)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !176, file: !175, line: 192, baseType: !90, size: 32, offset: 800)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !176, file: !175, line: 193, baseType: !90, size: 32, offset: 832)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "b_bframe_pyramid", scope: !176, file: !175, line: 194, baseType: !90, size: 32, offset: 864)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !176, file: !175, line: 196, baseType: !90, size: 32, offset: 896)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !176, file: !175, line: 197, baseType: !90, size: 32, offset: 928)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !176, file: !175, line: 198, baseType: !90, size: 32, offset: 960)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !176, file: !175, line: 200, baseType: !90, size: 32, offset: 992)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !176, file: !175, line: 201, baseType: !90, size: 32, offset: 1024)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !176, file: !175, line: 203, baseType: !90, size: 32, offset: 1056)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !176, file: !175, line: 205, baseType: !90, size: 32, offset: 1088)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !176, file: !175, line: 206, baseType: !108, size: 64, offset: 1152)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !176, file: !175, line: 207, baseType: !218, size: 128, offset: 1216)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 128, elements: !83)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !92, line: 24, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !94, line: 38, baseType: !221)
!221 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !176, file: !175, line: 208, baseType: !218, size: 128, offset: 1344)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !176, file: !175, line: 209, baseType: !218, size: 128, offset: 1472)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !176, file: !175, line: 210, baseType: !218, size: 128, offset: 1600)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !176, file: !175, line: 211, baseType: !226, size: 512, offset: 1728)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 512, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !176, file: !175, line: 212, baseType: !226, size: 512, offset: 2240)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !176, file: !175, line: 215, baseType: !231, size: 64, offset: 2752)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !87, !90, !234, !236}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !238)
!238 = !{!239, !241, !242, !243}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !237, file: !240, baseType: !99, size: 32)
!240 = !DIFile(filename: "muxers.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src")
!241 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !237, file: !240, baseType: !99, size: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !237, file: !240, baseType: !87, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !237, file: !240, baseType: !87, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !176, file: !175, line: 216, baseType: !87, size: 64, offset: 2816)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !176, file: !175, line: 217, baseType: !90, size: 32, offset: 2880)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !176, file: !175, line: 218, baseType: !90, size: 32, offset: 2912)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !176, file: !175, line: 219, baseType: !108, size: 64, offset: 2944)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !176, file: !175, line: 252, baseType: !249, size: 768, offset: 3008)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !175, line: 222, size: 768, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !271, !272, !274, !275}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !249, file: !175, line: 224, baseType: !99, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !249, file: !175, line: 225, baseType: !99, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !249, file: !175, line: 227, baseType: !90, size: 32, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !249, file: !175, line: 228, baseType: !90, size: 32, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !249, file: !175, line: 229, baseType: !90, size: 32, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_8x8_inference", scope: !249, file: !175, line: 230, baseType: !90, size: 32, offset: 160)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !249, file: !175, line: 231, baseType: !90, size: 32, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !249, file: !175, line: 233, baseType: !90, size: 32, offset: 224)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !249, file: !175, line: 234, baseType: !90, size: 32, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !249, file: !175, line: 235, baseType: !90, size: 32, offset: 288)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !249, file: !175, line: 236, baseType: !90, size: 32, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !249, file: !175, line: 237, baseType: !90, size: 32, offset: 352)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !249, file: !175, line: 238, baseType: !90, size: 32, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !249, file: !175, line: 239, baseType: !90, size: 32, offset: 416)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !249, file: !175, line: 240, baseType: !90, size: 32, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !249, file: !175, line: 241, baseType: !90, size: 32, offset: 480)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !249, file: !175, line: 242, baseType: !90, size: 32, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !249, file: !175, line: 243, baseType: !90, size: 32, offset: 544)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !249, file: !175, line: 244, baseType: !270, size: 32, offset: 576)
!270 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !249, file: !175, line: 245, baseType: !270, size: 32, offset: 608)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !249, file: !175, line: 248, baseType: !273, size: 64, offset: 640)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 64, elements: !5)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !249, file: !175, line: 250, baseType: !90, size: 32, offset: 704)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !249, file: !175, line: 251, baseType: !90, size: 32, offset: 736)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !176, file: !175, line: 289, baseType: !277, size: 1024, offset: 3776)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !175, line: 255, size: 1024, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !313, !314}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !277, file: !175, line: 257, baseType: !90, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !277, file: !175, line: 259, baseType: !90, size: 32, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !277, file: !175, line: 260, baseType: !90, size: 32, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !277, file: !175, line: 261, baseType: !90, size: 32, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !277, file: !175, line: 262, baseType: !90, size: 32, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !277, file: !175, line: 264, baseType: !90, size: 32, offset: 160)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !277, file: !175, line: 265, baseType: !270, size: 32, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !277, file: !175, line: 266, baseType: !270, size: 32, offset: 224)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !277, file: !175, line: 267, baseType: !90, size: 32, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !277, file: !175, line: 268, baseType: !90, size: 32, offset: 288)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !277, file: !175, line: 269, baseType: !270, size: 32, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !277, file: !175, line: 270, baseType: !270, size: 32, offset: 352)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !277, file: !175, line: 271, baseType: !270, size: 32, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !277, file: !175, line: 273, baseType: !90, size: 32, offset: 416)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !277, file: !175, line: 274, baseType: !270, size: 32, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !277, file: !175, line: 277, baseType: !90, size: 32, offset: 480)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !277, file: !175, line: 278, baseType: !108, size: 64, offset: 512)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !277, file: !175, line: 279, baseType: !90, size: 32, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !277, file: !175, line: 280, baseType: !108, size: 64, offset: 640)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !277, file: !175, line: 283, baseType: !270, size: 32, offset: 704)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !277, file: !175, line: 284, baseType: !270, size: 32, offset: 736)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !277, file: !175, line: 285, baseType: !270, size: 32, offset: 768)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !277, file: !175, line: 286, baseType: !302, size: 64, offset: 832)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !175, line: 149, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 142, size: 256, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !304, file: !175, line: 144, baseType: !90, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !304, file: !175, line: 144, baseType: !90, size: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !304, file: !175, line: 145, baseType: !90, size: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !304, file: !175, line: 146, baseType: !90, size: 32, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !304, file: !175, line: 147, baseType: !270, size: 32, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !304, file: !175, line: 148, baseType: !312, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !277, file: !175, line: 287, baseType: !90, size: 32, offset: 896)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !277, file: !175, line: 288, baseType: !108, size: 64, offset: 960)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !176, file: !175, line: 292, baseType: !90, size: 32, offset: 4800)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !176, file: !175, line: 293, baseType: !90, size: 32, offset: 4832)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !176, file: !175, line: 294, baseType: !90, size: 32, offset: 4864)
!318 = !{!319, !320, !321, !322}
!319 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !169, file: !2, line: 63, type: !108)
!320 = !DILocalVariable(name: "p_handle", arg: 2, scope: !169, file: !2, line: 63, type: !172)
!321 = !DILocalVariable(name: "p_param", arg: 3, scope: !169, file: !2, line: 63, type: !173)
!322 = !DILocalVariable(name: "h", scope: !169, file: !2, line: 65, type: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "yuv_input_t", file: !2, line: 60, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 56, size: 192, elements: !326)
!326 = !{!327, !328, !329, !330}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "fh", scope: !325, file: !2, line: 57, baseType: !100, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !325, file: !2, line: 58, baseType: !90, size: 32, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !325, file: !2, line: 58, baseType: !90, size: 32, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next_frame", scope: !325, file: !2, line: 59, baseType: !90, size: 32, offset: 128)
!331 = !DILocation(line: 0, scope: !169)
!332 = !DILocation(line: 65, column: 22, scope: !169)
!333 = !DILocation(line: 66, column: 25, scope: !169)
!334 = !DILocation(line: 66, column: 8, scope: !169)
!335 = !{!336, !336, i64 0}
!336 = !{!"int", !337, i64 0}
!337 = !{!"omnipotent char", !338, i64 0}
!338 = !{!"Simple C/C++ TBAA"}
!339 = !DILocation(line: 66, column: 14, scope: !169)
!340 = !DILocation(line: 68, column: 8, scope: !169)
!341 = !DILocation(line: 68, column: 19, scope: !169)
!342 = !{!343, !336, i64 16}
!343 = !{!"", !344, i64 0, !336, i64 8, !336, i64 12, !336, i64 16}
!344 = !{!"any pointer", !337, i64 0}
!345 = !DILocation(line: 70, column: 10, scope: !346)
!346 = distinct !DILexicalBlock(scope: !169, file: !2, line: 70, column: 9)
!347 = !DILocation(line: 70, column: 9, scope: !169)
!348 = !DILocation(line: 71, column: 17, scope: !346)
!349 = !{!344, !344, i64 0}
!350 = !DILocation(line: 71, column: 9, scope: !346)
!351 = !DILocation(line: 73, column: 17, scope: !346)
!352 = !DILocation(line: 0, scope: !346)
!353 = !{!343, !344, i64 0}
!354 = !DILocation(line: 74, column: 15, scope: !355)
!355 = distinct !DILexicalBlock(scope: !169, file: !2, line: 74, column: 9)
!356 = !DILocation(line: 74, column: 9, scope: !169)
!357 = !DILocation(line: 77, column: 15, scope: !169)
!358 = !DILocation(line: 78, column: 5, scope: !169)
!359 = !DILocation(line: 79, column: 1, scope: !169)
!360 = !DISubprogram(name: "malloc", scope: !361, file: !361, line: 540, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!361 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!362 = !DISubroutineType(types: !363)
!363 = !{!87, !151}
!364 = !{}
!365 = !DISubprogram(name: "strcmp", scope: !366, file: !366, line: 156, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!366 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!367 = !DISubroutineType(types: !368)
!368 = !{!90, !234, !234}
!369 = !DISubprogram(name: "fopen", linkageName: "fopen64", scope: !370, file: !370, line: 270, type: !371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!370 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!371 = !DISubroutineType(types: !372)
!372 = !{!100, !373, !373}
!373 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !234)
!374 = distinct !DISubprogram(name: "get_frame_total_yuv", scope: !2, file: !2, line: 81, type: !375, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !377)
!375 = !DISubroutineType(types: !376)
!376 = !{!90, !88}
!377 = !{!378, !379, !380, !381}
!378 = !DILocalVariable(name: "handle", arg: 1, scope: !374, file: !2, line: 81, type: !88)
!379 = !DILocalVariable(name: "h", scope: !374, file: !2, line: 83, type: !323)
!380 = !DILocalVariable(name: "i_frame_total", scope: !374, file: !2, line: 84, type: !90)
!381 = !DILocalVariable(name: "i_size", scope: !382, file: !2, line: 88, type: !91)
!382 = distinct !DILexicalBlock(scope: !383, file: !2, line: 87, column: 5)
!383 = distinct !DILexicalBlock(scope: !374, file: !2, line: 86, column: 9)
!384 = !DILocation(line: 0, scope: !374)
!385 = !DILocation(line: 86, column: 20, scope: !383)
!386 = !DILocation(line: 86, column: 10, scope: !383)
!387 = !DILocation(line: 86, column: 9, scope: !374)
!388 = !DILocation(line: 88, column: 37, scope: !382)
!389 = !DILocation(line: 88, column: 27, scope: !382)
!390 = !DILocation(line: 0, scope: !382)
!391 = !DILocation(line: 89, column: 19, scope: !382)
!392 = !DILocation(line: 89, column: 9, scope: !382)
!393 = !DILocation(line: 90, column: 45, scope: !382)
!394 = !{!343, !336, i64 8}
!395 = !DILocation(line: 90, column: 56, scope: !382)
!396 = !{!343, !336, i64 12}
!397 = !DILocation(line: 90, column: 51, scope: !382)
!398 = !DILocation(line: 90, column: 63, scope: !382)
!399 = !DILocation(line: 90, column: 67, scope: !382)
!400 = !DILocation(line: 90, column: 40, scope: !382)
!401 = !DILocation(line: 90, column: 38, scope: !382)
!402 = !DILocation(line: 90, column: 25, scope: !382)
!403 = !DILocation(line: 91, column: 5, scope: !382)
!404 = !DILocation(line: 93, column: 5, scope: !374)
!405 = !DISubprogram(name: "fseeko", linkageName: "fseeko64", scope: !370, file: !370, line: 744, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!406 = !DISubroutineType(types: !407)
!407 = !{!90, !100, !141, !90}
!408 = !DISubprogram(name: "ftello", linkageName: "ftello64", scope: !370, file: !370, line: 747, type: !409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!409 = !DISubroutineType(types: !410)
!410 = !{!141, !100}
!411 = distinct !DISubprogram(name: "read_frame_yuv", scope: !2, file: !2, line: 96, type: !412, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !432)
!412 = !DISubroutineType(types: !413)
!413 = !{!90, !414, !88, !90}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !175, line: 354, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 342, size: 576, elements: !417)
!417 = !{!418, !419, !420, !421}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !416, file: !175, line: 346, baseType: !90, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !416, file: !175, line: 348, baseType: !90, size: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !416, file: !175, line: 350, baseType: !158, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !416, file: !175, line: 353, baseType: !422, size: 448, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !175, line: 340, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 333, size: 448, elements: !424)
!424 = !{!425, !426, !427, !429}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !423, file: !175, line: 335, baseType: !90, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !423, file: !175, line: 337, baseType: !90, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !423, file: !175, line: 338, baseType: !428, size: 128, offset: 64)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !20)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !423, file: !175, line: 339, baseType: !430, size: 256, offset: 192)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 256, elements: !20)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!432 = !{!433, !434, !435, !436}
!433 = !DILocalVariable(name: "p_pic", arg: 1, scope: !411, file: !2, line: 96, type: !414)
!434 = !DILocalVariable(name: "handle", arg: 2, scope: !411, file: !2, line: 96, type: !88)
!435 = !DILocalVariable(name: "i_frame", arg: 3, scope: !411, file: !2, line: 96, type: !90)
!436 = !DILocalVariable(name: "h", scope: !411, file: !2, line: 98, type: !323)
!437 = !DILocation(line: 0, scope: !411)
!438 = !DILocation(line: 100, column: 23, scope: !439)
!439 = distinct !DILexicalBlock(scope: !411, file: !2, line: 100, column: 9)
!440 = !DILocation(line: 100, column: 17, scope: !439)
!441 = !DILocation(line: 100, column: 9, scope: !411)
!442 = !DILocation(line: 101, column: 23, scope: !443)
!443 = distinct !DILexicalBlock(scope: !439, file: !2, line: 101, column: 13)
!444 = !DILocation(line: 101, column: 27, scope: !443)
!445 = !DILocation(line: 101, column: 50, scope: !443)
!446 = !DILocation(line: 101, column: 47, scope: !443)
!447 = !DILocation(line: 101, column: 61, scope: !443)
!448 = !DILocation(line: 101, column: 58, scope: !443)
!449 = !DILocation(line: 101, column: 45, scope: !443)
!450 = !DILocation(line: 101, column: 56, scope: !443)
!451 = !DILocation(line: 101, column: 68, scope: !443)
!452 = !DILocation(line: 101, column: 72, scope: !443)
!453 = !DILocation(line: 101, column: 13, scope: !443)
!454 = !DILocation(line: 101, column: 13, scope: !439)
!455 = !DILocation(line: 104, column: 27, scope: !456)
!456 = distinct !DILexicalBlock(scope: !411, file: !2, line: 104, column: 9)
!457 = !DILocation(line: 104, column: 16, scope: !456)
!458 = !DILocation(line: 104, column: 43, scope: !456)
!459 = !DILocation(line: 104, column: 54, scope: !456)
!460 = !DILocation(line: 104, column: 49, scope: !456)
!461 = !DILocation(line: 104, column: 40, scope: !456)
!462 = !DILocation(line: 104, column: 65, scope: !456)
!463 = !DILocation(line: 104, column: 9, scope: !456)
!464 = !DILocation(line: 104, column: 70, scope: !456)
!465 = !DILocation(line: 105, column: 13, scope: !456)
!466 = !DILocation(line: 105, column: 23, scope: !456)
!467 = !DILocation(line: 105, column: 50, scope: !456)
!468 = !DILocation(line: 105, column: 61, scope: !456)
!469 = !DILocation(line: 105, column: 56, scope: !456)
!470 = !DILocation(line: 105, column: 68, scope: !456)
!471 = !DILocation(line: 105, column: 47, scope: !456)
!472 = !DILocation(line: 105, column: 76, scope: !456)
!473 = !DILocation(line: 105, column: 16, scope: !456)
!474 = !DILocation(line: 105, column: 81, scope: !456)
!475 = !DILocation(line: 106, column: 13, scope: !456)
!476 = !DILocation(line: 106, column: 23, scope: !456)
!477 = !DILocation(line: 106, column: 50, scope: !456)
!478 = !DILocation(line: 106, column: 61, scope: !456)
!479 = !DILocation(line: 106, column: 56, scope: !456)
!480 = !DILocation(line: 106, column: 68, scope: !456)
!481 = !DILocation(line: 106, column: 47, scope: !456)
!482 = !DILocation(line: 106, column: 76, scope: !456)
!483 = !DILocation(line: 106, column: 16, scope: !456)
!484 = !DILocation(line: 106, column: 81, scope: !456)
!485 = !DILocation(line: 104, column: 9, scope: !411)
!486 = !DILocation(line: 109, column: 28, scope: !411)
!487 = !DILocation(line: 109, column: 19, scope: !411)
!488 = !DILocation(line: 111, column: 5, scope: !411)
!489 = !DILocation(line: 112, column: 1, scope: !411)
!490 = !DISubprogram(name: "fread", scope: !370, file: !370, line: 675, type: !491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!491 = !DISubroutineType(types: !492)
!492 = !{!95, !493, !151, !151, !494}
!493 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!494 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!495 = distinct !DISubprogram(name: "close_file_yuv", scope: !2, file: !2, line: 114, type: !375, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !496)
!496 = !{!497, !498}
!497 = !DILocalVariable(name: "handle", arg: 1, scope: !495, file: !2, line: 114, type: !88)
!498 = !DILocalVariable(name: "h", scope: !495, file: !2, line: 116, type: !323)
!499 = !DILocation(line: 0, scope: !495)
!500 = !DILocation(line: 117, column: 10, scope: !501)
!501 = distinct !DILexicalBlock(scope: !495, file: !2, line: 117, column: 9)
!502 = !DILocation(line: 117, column: 12, scope: !501)
!503 = !DILocation(line: 117, column: 19, scope: !501)
!504 = !DILocation(line: 117, column: 16, scope: !501)
!505 = !DILocation(line: 117, column: 9, scope: !495)
!506 = !DILocation(line: 119, column: 5, scope: !495)
!507 = !DILocation(line: 120, column: 5, scope: !495)
!508 = !DILocation(line: 121, column: 5, scope: !495)
!509 = !DILocation(line: 122, column: 1, scope: !495)
!510 = !DISubprogram(name: "fclose", scope: !370, file: !370, line: 178, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!511 = !DISubroutineType(types: !512)
!512 = !{!90, !100}
!513 = !DISubprogram(name: "free", scope: !361, file: !361, line: 555, type: !514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !87}
!516 = distinct !DISubprogram(name: "open_file_y4m", scope: !2, file: !2, line: 138, type: !170, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !517)
!517 = !{!518, !519, !520, !521, !522, !523, !524, !525, !529, !530, !531, !532}
!518 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !516, file: !2, line: 138, type: !108)
!519 = !DILocalVariable(name: "p_handle", arg: 2, scope: !516, file: !2, line: 138, type: !172)
!520 = !DILocalVariable(name: "p_param", arg: 3, scope: !516, file: !2, line: 138, type: !173)
!521 = !DILocalVariable(name: "i", scope: !516, file: !2, line: 140, type: !90)
!522 = !DILocalVariable(name: "n", scope: !516, file: !2, line: 140, type: !90)
!523 = !DILocalVariable(name: "d", scope: !516, file: !2, line: 140, type: !90)
!524 = !DILocalVariable(name: "interlaced", scope: !516, file: !2, line: 141, type: !90)
!525 = !DILocalVariable(name: "header", scope: !516, file: !2, line: 142, type: !526)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 720, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 90)
!529 = !DILocalVariable(name: "tokstart", scope: !516, file: !2, line: 143, type: !108)
!530 = !DILocalVariable(name: "tokend", scope: !516, file: !2, line: 143, type: !108)
!531 = !DILocalVariable(name: "header_end", scope: !516, file: !2, line: 143, type: !108)
!532 = !DILocalVariable(name: "h", scope: !516, file: !2, line: 144, type: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "y4m_input_t", file: !2, line: 131, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 125, size: 256, elements: !536)
!536 = !{!537, !538, !539, !540, !541, !542, !543}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "fh", scope: !535, file: !2, line: 126, baseType: !100, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !535, file: !2, line: 127, baseType: !90, size: 32, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !535, file: !2, line: 127, baseType: !90, size: 32, offset: 96)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next_frame", scope: !535, file: !2, line: 128, baseType: !90, size: 32, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "seq_header_len", scope: !535, file: !2, line: 129, baseType: !90, size: 32, offset: 160)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "frame_header_len", scope: !535, file: !2, line: 129, baseType: !90, size: 32, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "frame_size", scope: !535, file: !2, line: 130, baseType: !90, size: 32, offset: 224)
!544 = !DILocation(line: 0, scope: !516)
!545 = !DILocation(line: 140, column: 5, scope: !516)
!546 = !DILocation(line: 142, column: 5, scope: !516)
!547 = !DILocation(line: 142, column: 10, scope: !516)
!548 = !DILocation(line: 143, column: 5, scope: !516)
!549 = !DILocation(line: 144, column: 22, scope: !516)
!550 = !DILocation(line: 146, column: 8, scope: !516)
!551 = !DILocation(line: 146, column: 19, scope: !516)
!552 = !{!553, !336, i64 16}
!553 = !{!"", !344, i64 0, !336, i64 8, !336, i64 12, !336, i64 16, !336, i64 20, !336, i64 24, !336, i64 28}
!554 = !DILocation(line: 148, column: 10, scope: !555)
!555 = distinct !DILexicalBlock(scope: !516, file: !2, line: 148, column: 9)
!556 = !DILocation(line: 148, column: 9, scope: !516)
!557 = !DILocation(line: 149, column: 17, scope: !555)
!558 = !DILocation(line: 149, column: 9, scope: !555)
!559 = !DILocation(line: 151, column: 17, scope: !555)
!560 = !DILocation(line: 0, scope: !555)
!561 = !{!553, !344, i64 0}
!562 = !DILocation(line: 152, column: 15, scope: !563)
!563 = distinct !DILexicalBlock(scope: !516, file: !2, line: 152, column: 9)
!564 = !DILocation(line: 152, column: 9, scope: !516)
!565 = !DILocation(line: 155, column: 8, scope: !516)
!566 = !DILocation(line: 155, column: 25, scope: !516)
!567 = !{!553, !336, i64 24}
!568 = !DILocation(line: 158, column: 5, scope: !569)
!569 = distinct !DILexicalBlock(scope: !516, file: !2, line: 158, column: 5)
!570 = !DILocation(line: 160, column: 30, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !2, line: 159, column: 5)
!572 = distinct !DILexicalBlock(scope: !569, file: !2, line: 158, column: 5)
!573 = !DILocation(line: 160, column: 21, scope: !571)
!574 = !DILocation(line: 160, column: 9, scope: !571)
!575 = !DILocation(line: 160, column: 19, scope: !571)
!576 = !{!337, !337, i64 0}
!577 = !DILocation(line: 161, column: 23, scope: !578)
!578 = distinct !DILexicalBlock(scope: !571, file: !2, line: 161, column: 13)
!579 = !DILocation(line: 0, scope: !572)
!580 = !DILocation(line: 161, column: 13, scope: !571)
!581 = !DILocation(line: 158, column: 16, scope: !572)
!582 = distinct !{!582, !568, !583, !584}
!583 = !DILocation(line: 169, column: 5, scope: !569)
!584 = !{!"llvm.loop.mustprogress"}
!585 = !DILocation(line: 165, column: 13, scope: !586)
!586 = distinct !DILexicalBlock(scope: !578, file: !2, line: 162, column: 9)
!587 = !DILocation(line: 165, column: 25, scope: !586)
!588 = !DILocation(line: 166, column: 21, scope: !586)
!589 = !DILocation(line: 166, column: 13, scope: !586)
!590 = !DILocation(line: 166, column: 25, scope: !586)
!591 = !DILocation(line: 170, column: 33, scope: !592)
!592 = distinct !DILexicalBlock(scope: !516, file: !2, line: 170, column: 9)
!593 = !DILocation(line: 170, column: 9, scope: !516)
!594 = !DILocation(line: 165, column: 21, scope: !586)
!595 = !DILocation(line: 174, column: 27, scope: !516)
!596 = !DILocation(line: 174, column: 19, scope: !516)
!597 = !DILocation(line: 175, column: 8, scope: !516)
!598 = !DILocation(line: 175, column: 23, scope: !516)
!599 = !{!553, !336, i64 20}
!600 = !DILocation(line: 176, column: 60, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !2, line: 176, column: 5)
!602 = distinct !DILexicalBlock(scope: !516, file: !2, line: 176, column: 5)
!603 = !DILocation(line: 176, column: 5, scope: !602)
!604 = !DILocation(line: 176, column: 22, scope: !602)
!605 = !DILocation(line: 178, column: 12, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !2, line: 178, column: 12)
!607 = distinct !DILexicalBlock(scope: !601, file: !2, line: 177, column: 5)
!608 = !DILocation(line: 178, column: 21, scope: !606)
!609 = !DILocation(line: 178, column: 12, scope: !607)
!610 = !DILocation(line: 179, column: 25, scope: !607)
!611 = !DILocation(line: 179, column: 9, scope: !607)
!612 = !DILocation(line: 182, column: 43, scope: !613)
!613 = distinct !DILexicalBlock(scope: !607, file: !2, line: 180, column: 9)
!614 = !DILocation(line: 182, column: 41, scope: !613)
!615 = !{!616, !336, i64 12}
!616 = !{!"x264_param_t", !336, i64 0, !336, i64 4, !336, i64 8, !336, i64 12, !336, i64 16, !336, i64 20, !336, i64 24, !336, i64 28, !617, i64 32, !336, i64 68, !336, i64 72, !336, i64 76, !336, i64 80, !336, i64 84, !336, i64 88, !336, i64 92, !336, i64 96, !336, i64 100, !336, i64 104, !336, i64 108, !336, i64 112, !336, i64 116, !336, i64 120, !336, i64 124, !336, i64 128, !336, i64 132, !336, i64 136, !344, i64 144, !337, i64 152, !337, i64 168, !337, i64 184, !337, i64 200, !337, i64 216, !337, i64 280, !344, i64 344, !344, i64 352, !336, i64 360, !336, i64 364, !344, i64 368, !618, i64 376, !620, i64 472, !336, i64 600, !336, i64 604, !336, i64 608}
!617 = !{!"", !336, i64 0, !336, i64 4, !336, i64 8, !336, i64 12, !336, i64 16, !336, i64 20, !336, i64 24, !336, i64 28, !336, i64 32}
!618 = !{!"", !336, i64 0, !336, i64 4, !336, i64 8, !336, i64 12, !336, i64 16, !336, i64 20, !336, i64 24, !336, i64 28, !336, i64 32, !336, i64 36, !336, i64 40, !336, i64 44, !336, i64 48, !336, i64 52, !336, i64 56, !336, i64 60, !336, i64 64, !336, i64 68, !619, i64 72, !619, i64 76, !337, i64 80, !336, i64 88, !336, i64 92}
!619 = !{!"float", !337, i64 0}
!620 = !{!"", !336, i64 0, !336, i64 4, !336, i64 8, !336, i64 12, !336, i64 16, !336, i64 20, !619, i64 24, !619, i64 28, !336, i64 32, !336, i64 36, !619, i64 40, !619, i64 44, !619, i64 48, !336, i64 52, !619, i64 56, !336, i64 60, !344, i64 64, !336, i64 72, !344, i64 80, !619, i64 88, !619, i64 92, !619, i64 96, !344, i64 104, !336, i64 112, !344, i64 120}
!621 = !DILocation(line: 182, column: 22, scope: !613)
!622 = !{!553, !336, i64 8}
!623 = !DILocation(line: 183, column: 22, scope: !613)
!624 = !DILocation(line: 184, column: 13, scope: !613)
!625 = !DILocation(line: 186, column: 45, scope: !613)
!626 = !DILocation(line: 186, column: 43, scope: !613)
!627 = !{!616, !336, i64 16}
!628 = !DILocation(line: 186, column: 23, scope: !613)
!629 = !{!553, !336, i64 12}
!630 = !DILocation(line: 187, column: 22, scope: !613)
!631 = !DILocation(line: 188, column: 13, scope: !613)
!632 = !DILocation(line: 190, column: 17, scope: !633)
!633 = distinct !DILexicalBlock(scope: !613, file: !2, line: 190, column: 17)
!634 = !DILocation(line: 190, column: 17, scope: !613)
!635 = !DILocation(line: 192, column: 25, scope: !636)
!636 = distinct !DILexicalBlock(scope: !633, file: !2, line: 191, column: 13)
!637 = !DILocation(line: 192, column: 17, scope: !636)
!638 = !DILocation(line: 193, column: 17, scope: !636)
!639 = !DILocation(line: 195, column: 24, scope: !613)
!640 = !DILocation(line: 196, column: 13, scope: !613)
!641 = !DILocation(line: 198, column: 29, scope: !613)
!642 = !DILocation(line: 198, column: 20, scope: !613)
!643 = !DILocation(line: 198, column: 13, scope: !613)
!644 = !DILocation(line: 206, column: 25, scope: !645)
!645 = distinct !DILexicalBlock(scope: !613, file: !2, line: 199, column: 13)
!646 = !DILocation(line: 206, column: 17, scope: !645)
!647 = !DILocation(line: 207, column: 13, scope: !645)
!648 = !DILocation(line: 210, column: 17, scope: !649)
!649 = distinct !DILexicalBlock(scope: !613, file: !2, line: 210, column: 17)
!650 = !DILocation(line: 210, column: 51, scope: !649)
!651 = !DILocation(line: 210, column: 56, scope: !649)
!652 = !DILocation(line: 212, column: 17, scope: !653)
!653 = distinct !DILexicalBlock(scope: !649, file: !2, line: 211, column: 13)
!654 = !DILocation(line: 213, column: 38, scope: !653)
!655 = !DILocation(line: 213, column: 36, scope: !653)
!656 = !{!616, !336, i64 68}
!657 = !DILocation(line: 214, column: 38, scope: !653)
!658 = !DILocation(line: 214, column: 36, scope: !653)
!659 = !{!616, !336, i64 72}
!660 = !DILocation(line: 215, column: 13, scope: !653)
!661 = !DILocation(line: 216, column: 24, scope: !613)
!662 = !DILocation(line: 217, column: 13, scope: !613)
!663 = !DILocation(line: 220, column: 17, scope: !664)
!664 = distinct !DILexicalBlock(scope: !613, file: !2, line: 220, column: 17)
!665 = !DILocation(line: 220, column: 51, scope: !664)
!666 = !DILocation(line: 220, column: 56, scope: !664)
!667 = !DILocation(line: 220, column: 83, scope: !664)
!668 = !{!616, !336, i64 36}
!669 = !DILocation(line: 220, column: 70, scope: !664)
!670 = !DILocation(line: 220, column: 95, scope: !664)
!671 = !DILocation(line: 220, column: 112, scope: !664)
!672 = !{!616, !336, i64 32}
!673 = !DILocation(line: 220, column: 99, scope: !664)
!674 = !DILocation(line: 220, column: 17, scope: !613)
!675 = !DILocation(line: 222, column: 17, scope: !676)
!676 = distinct !DILexicalBlock(scope: !664, file: !2, line: 221, column: 13)
!677 = !DILocation(line: 223, column: 44, scope: !676)
!678 = !DILocation(line: 223, column: 42, scope: !676)
!679 = !DILocation(line: 224, column: 45, scope: !676)
!680 = !DILocation(line: 224, column: 43, scope: !676)
!681 = !DILocation(line: 225, column: 13, scope: !676)
!682 = !DILocation(line: 226, column: 24, scope: !613)
!683 = !DILocation(line: 227, column: 13, scope: !613)
!684 = !DILocation(line: 229, column: 18, scope: !685)
!685 = distinct !DILexicalBlock(scope: !613, file: !2, line: 229, column: 17)
!686 = !DILocation(line: 229, column: 17, scope: !613)
!687 = !DILocation(line: 232, column: 26, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !2, line: 230, column: 13)
!689 = !DILocation(line: 233, column: 21, scope: !690)
!690 = distinct !DILexicalBlock(scope: !688, file: !2, line: 233, column: 21)
!691 = !DILocation(line: 233, column: 51, scope: !690)
!692 = !DILocation(line: 234, column: 21, scope: !690)
!693 = !DILocation(line: 234, column: 52, scope: !690)
!694 = !DILocation(line: 235, column: 21, scope: !690)
!695 = !DILocation(line: 233, column: 21, scope: !688)
!696 = !DILocation(line: 237, column: 29, scope: !697)
!697 = distinct !DILexicalBlock(scope: !690, file: !2, line: 236, column: 17)
!698 = !DILocation(line: 237, column: 21, scope: !697)
!699 = !DILocation(line: 238, column: 21, scope: !697)
!700 = !DILocation(line: 0, scope: !607)
!701 = !DILocation(line: 241, column: 24, scope: !613)
!702 = !DILocation(line: 242, column: 13, scope: !613)
!703 = !DILocation(line: 0, scope: !602)
!704 = !DILocation(line: 176, column: 82, scope: !601)
!705 = distinct !{!705, !603, !706, !584}
!706 = !DILocation(line: 244, column: 5, scope: !602)
!707 = !DILocation(line: 246, column: 13, scope: !516)
!708 = !DILocation(line: 247, column: 16, scope: !516)
!709 = !DILocation(line: 247, column: 26, scope: !516)
!710 = !DILocation(line: 247, column: 43, scope: !516)
!711 = !DILocation(line: 247, column: 63, scope: !516)
!712 = !DILocation(line: 248, column: 22, scope: !516)
!713 = !DILocation(line: 248, column: 26, scope: !516)
!714 = !DILocation(line: 248, column: 52, scope: !516)
!715 = !DILocation(line: 246, column: 5, scope: !516)
!716 = !DILocation(line: 250, column: 15, scope: !516)
!717 = !DILocation(line: 251, column: 5, scope: !516)
!718 = !DILocation(line: 252, column: 1, scope: !516)
!719 = !DISubprogram(name: "fgetc", scope: !370, file: !370, line: 513, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!720 = !DISubprogram(name: "strncmp", scope: !366, file: !366, line: 159, type: !721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!721 = !DISubroutineType(types: !722)
!722 = !{!90, !234, !234, !151}
!723 = !DISubprogram(name: "strtol", scope: !361, file: !361, line: 177, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!724 = !DISubroutineType(types: !725)
!725 = !{!128, !373, !726, !90}
!726 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!728 = !DISubprogram(name: "fprintf", scope: !370, file: !370, line: 350, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!729 = !DISubroutineType(types: !730)
!730 = !{!90, !494, !373, null}
!731 = !DISubprogram(name: "strchr", scope: !366, file: !366, line: 246, type: !732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!732 = !DISubroutineType(types: !733)
!733 = !{!108, !234, !90}
!734 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !370, file: !370, line: 439, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!735 = !DISubroutineType(types: !736)
!736 = !{!90, !373, !373, null}
!737 = !DISubprogram(name: "x264_reduce_fraction", scope: !738, file: !738, line: 101, type: !739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!738 = !DIFile(filename: "./common/common.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "4880b62cc871dca4002788746fbccb70")
!739 = !DISubroutineType(types: !740)
!740 = !{null, !741, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!742 = distinct !DISubprogram(name: "get_frame_total_y4m", scope: !2, file: !2, line: 255, type: !375, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !743)
!743 = !{!744, !745, !746, !747, !748}
!744 = !DILocalVariable(name: "handle", arg: 1, scope: !742, file: !2, line: 255, type: !88)
!745 = !DILocalVariable(name: "h", scope: !742, file: !2, line: 257, type: !533)
!746 = !DILocalVariable(name: "i_frame_total", scope: !742, file: !2, line: 258, type: !90)
!747 = !DILocalVariable(name: "init_pos", scope: !742, file: !2, line: 259, type: !91)
!748 = !DILocalVariable(name: "i_size", scope: !749, file: !2, line: 263, type: !91)
!749 = distinct !DILexicalBlock(scope: !750, file: !2, line: 262, column: 5)
!750 = distinct !DILexicalBlock(scope: !742, file: !2, line: 261, column: 9)
!751 = !DILocation(line: 0, scope: !742)
!752 = !DILocation(line: 259, column: 43, scope: !742)
!753 = !DILocation(line: 259, column: 34, scope: !742)
!754 = !DILocation(line: 261, column: 20, scope: !750)
!755 = !DILocation(line: 261, column: 10, scope: !750)
!756 = !DILocation(line: 261, column: 9, scope: !742)
!757 = !DILocation(line: 263, column: 37, scope: !749)
!758 = !DILocation(line: 263, column: 27, scope: !749)
!759 = !DILocation(line: 0, scope: !749)
!760 = !DILocation(line: 264, column: 19, scope: !749)
!761 = !DILocation(line: 264, column: 9, scope: !749)
!762 = !DILocation(line: 265, column: 44, scope: !749)
!763 = !DILocation(line: 265, column: 41, scope: !749)
!764 = !DILocation(line: 265, column: 39, scope: !749)
!765 = !DILocation(line: 266, column: 38, scope: !749)
!766 = !DILocation(line: 266, column: 47, scope: !749)
!767 = !DILocation(line: 266, column: 43, scope: !749)
!768 = !DILocation(line: 266, column: 33, scope: !749)
!769 = !DILocation(line: 266, column: 54, scope: !749)
!770 = !DILocation(line: 266, column: 60, scope: !749)
!771 = !DILocation(line: 266, column: 56, scope: !749)
!772 = !DILocation(line: 266, column: 31, scope: !749)
!773 = !DILocation(line: 265, column: 60, scope: !749)
!774 = !DILocation(line: 265, column: 25, scope: !749)
!775 = !DILocation(line: 267, column: 5, scope: !749)
!776 = !DILocation(line: 269, column: 5, scope: !742)
!777 = distinct !DISubprogram(name: "read_frame_y4m", scope: !2, file: !2, line: 272, type: !412, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !778)
!778 = !{!779, !780, !781, !782, !783, !784, !785}
!779 = !DILocalVariable(name: "p_pic", arg: 1, scope: !777, file: !2, line: 272, type: !414)
!780 = !DILocalVariable(name: "handle", arg: 2, scope: !777, file: !2, line: 272, type: !88)
!781 = !DILocalVariable(name: "i_frame", arg: 3, scope: !777, file: !2, line: 272, type: !90)
!782 = !DILocalVariable(name: "slen", scope: !777, file: !2, line: 274, type: !90)
!783 = !DILocalVariable(name: "i", scope: !777, file: !2, line: 275, type: !90)
!784 = !DILocalVariable(name: "header", scope: !777, file: !2, line: 276, type: !82)
!785 = !DILocalVariable(name: "h", scope: !777, file: !2, line: 277, type: !533)
!786 = !DILocation(line: 0, scope: !777)
!787 = !DILocation(line: 276, column: 5, scope: !777)
!788 = !DILocation(line: 276, column: 18, scope: !777)
!789 = !DILocation(line: 279, column: 23, scope: !790)
!790 = distinct !DILexicalBlock(scope: !777, file: !2, line: 279, column: 9)
!791 = !DILocation(line: 279, column: 17, scope: !790)
!792 = !DILocation(line: 279, column: 9, scope: !777)
!793 = !DILocation(line: 281, column: 22, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !2, line: 281, column: 13)
!795 = distinct !DILexicalBlock(scope: !790, file: !2, line: 280, column: 5)
!796 = !DILocation(line: 281, column: 26, scope: !794)
!797 = !DILocation(line: 281, column: 51, scope: !794)
!798 = !DILocation(line: 281, column: 60, scope: !794)
!799 = !DILocation(line: 281, column: 56, scope: !794)
!800 = !DILocation(line: 281, column: 46, scope: !794)
!801 = !DILocation(line: 281, column: 67, scope: !794)
!802 = !DILocation(line: 281, column: 73, scope: !794)
!803 = !DILocation(line: 281, column: 69, scope: !794)
!804 = !DILocation(line: 281, column: 44, scope: !794)
!805 = !DILocation(line: 281, column: 43, scope: !794)
!806 = !DILocation(line: 282, column: 24, scope: !794)
!807 = !DILocation(line: 282, column: 21, scope: !794)
!808 = !DILocation(line: 282, column: 19, scope: !794)
!809 = !DILocation(line: 281, column: 13, scope: !794)
!810 = !DILocation(line: 281, column: 13, scope: !795)
!811 = !DILocation(line: 287, column: 35, scope: !812)
!812 = distinct !DILexicalBlock(scope: !777, file: !2, line: 287, column: 9)
!813 = !DILocation(line: 287, column: 9, scope: !812)
!814 = !DILocation(line: 287, column: 39, scope: !812)
!815 = !DILocation(line: 287, column: 9, scope: !777)
!816 = !DILocation(line: 290, column: 5, scope: !777)
!817 = !DILocation(line: 290, column: 18, scope: !777)
!818 = !DILocation(line: 291, column: 9, scope: !819)
!819 = distinct !DILexicalBlock(scope: !777, file: !2, line: 291, column: 9)
!820 = !DILocation(line: 291, column: 9, scope: !777)
!821 = !DILocation(line: 293, column: 17, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !2, line: 292, column: 5)
!823 = !DILocation(line: 294, column: 17, scope: !822)
!824 = !DILocation(line: 293, column: 9, scope: !822)
!825 = !DILocation(line: 295, column: 9, scope: !822)
!826 = !DILocation(line: 299, column: 43, scope: !777)
!827 = !DILocation(line: 299, column: 34, scope: !777)
!828 = !DILocation(line: 299, column: 47, scope: !777)
!829 = !DILocation(line: 299, column: 5, scope: !777)
!830 = !DILocation(line: 300, column: 10, scope: !777)
!831 = !DILocation(line: 299, column: 13, scope: !777)
!832 = !DILocation(line: 299, column: 31, scope: !777)
!833 = distinct !{!833, !829, !830, !584}
!834 = !DILocation(line: 303, column: 17, scope: !835)
!835 = distinct !DILexicalBlock(scope: !836, file: !2, line: 302, column: 5)
!836 = distinct !DILexicalBlock(scope: !777, file: !2, line: 301, column: 9)
!837 = !DILocation(line: 303, column: 9, scope: !835)
!838 = !DILocation(line: 304, column: 9, scope: !835)
!839 = !DILocation(line: 306, column: 33, scope: !777)
!840 = !DILocation(line: 306, column: 8, scope: !777)
!841 = !DILocation(line: 306, column: 25, scope: !777)
!842 = !DILocation(line: 308, column: 26, scope: !843)
!843 = distinct !DILexicalBlock(scope: !777, file: !2, line: 308, column: 9)
!844 = !DILocation(line: 308, column: 15, scope: !843)
!845 = !DILocation(line: 308, column: 42, scope: !843)
!846 = !DILocation(line: 308, column: 51, scope: !843)
!847 = !DILocation(line: 308, column: 47, scope: !843)
!848 = !DILocation(line: 308, column: 39, scope: !843)
!849 = !DILocation(line: 308, column: 62, scope: !843)
!850 = !DILocation(line: 308, column: 9, scope: !843)
!851 = !DILocation(line: 308, column: 66, scope: !843)
!852 = !DILocation(line: 309, column: 9, scope: !843)
!853 = !DILocation(line: 309, column: 18, scope: !843)
!854 = !DILocation(line: 309, column: 45, scope: !843)
!855 = !DILocation(line: 309, column: 56, scope: !843)
!856 = !DILocation(line: 309, column: 51, scope: !843)
!857 = !DILocation(line: 309, column: 63, scope: !843)
!858 = !DILocation(line: 309, column: 42, scope: !843)
!859 = !DILocation(line: 309, column: 71, scope: !843)
!860 = !DILocation(line: 309, column: 12, scope: !843)
!861 = !DILocation(line: 309, column: 75, scope: !843)
!862 = !DILocation(line: 310, column: 9, scope: !843)
!863 = !DILocation(line: 310, column: 18, scope: !843)
!864 = !DILocation(line: 310, column: 45, scope: !843)
!865 = !DILocation(line: 310, column: 56, scope: !843)
!866 = !DILocation(line: 310, column: 51, scope: !843)
!867 = !DILocation(line: 310, column: 63, scope: !843)
!868 = !DILocation(line: 310, column: 42, scope: !843)
!869 = !DILocation(line: 310, column: 71, scope: !843)
!870 = !DILocation(line: 310, column: 12, scope: !843)
!871 = !DILocation(line: 310, column: 75, scope: !843)
!872 = !DILocation(line: 308, column: 9, scope: !777)
!873 = !DILocation(line: 313, column: 28, scope: !777)
!874 = !DILocation(line: 313, column: 19, scope: !777)
!875 = !DILocation(line: 315, column: 5, scope: !777)
!876 = !DILocation(line: 316, column: 1, scope: !777)
!877 = distinct !DISubprogram(name: "close_file_y4m", scope: !2, file: !2, line: 318, type: !375, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !878)
!878 = !{!879, !880}
!879 = !DILocalVariable(name: "handle", arg: 1, scope: !877, file: !2, line: 318, type: !88)
!880 = !DILocalVariable(name: "h", scope: !877, file: !2, line: 320, type: !533)
!881 = !DILocation(line: 0, scope: !877)
!882 = !DILocation(line: 321, column: 10, scope: !883)
!883 = distinct !DILexicalBlock(scope: !877, file: !2, line: 321, column: 9)
!884 = !DILocation(line: 321, column: 12, scope: !883)
!885 = !DILocation(line: 321, column: 19, scope: !883)
!886 = !DILocation(line: 321, column: 16, scope: !883)
!887 = !DILocation(line: 321, column: 9, scope: !877)
!888 = !DILocation(line: 323, column: 5, scope: !877)
!889 = !DILocation(line: 324, column: 5, scope: !877)
!890 = !DILocation(line: 325, column: 5, scope: !877)
!891 = !DILocation(line: 326, column: 1, scope: !877)
!892 = distinct !DISubprogram(name: "open_file_thread", scope: !2, file: !2, line: 441, type: !170, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !893)
!893 = !{!894, !895, !896, !897}
!894 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !892, file: !2, line: 441, type: !108)
!895 = !DILocalVariable(name: "p_handle", arg: 2, scope: !892, file: !2, line: 441, type: !172)
!896 = !DILocalVariable(name: "p_param", arg: 3, scope: !892, file: !2, line: 441, type: !173)
!897 = !DILocalVariable(name: "h", scope: !892, file: !2, line: 443, type: !898)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_input_t", file: !2, line: 432, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 422, size: 1024, elements: !901)
!901 = !{!902, !904, !906, !907, !908, !911, !912, !913, !914}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "p_read_frame", scope: !900, file: !2, line: 423, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "p_close_infile", scope: !900, file: !2, line: 424, baseType: !905, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "p_handle", scope: !900, file: !2, line: 425, baseType: !88, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !900, file: !2, line: 426, baseType: !415, size: 576, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !900, file: !2, line: 427, baseType: !909, size: 64, offset: 768)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !910, line: 27, baseType: !95)
!910 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!911 = !DIDerivedType(tag: DW_TAG_member, name: "next_frame", scope: !900, file: !2, line: 428, baseType: !90, size: 32, offset: 832)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "frame_total", scope: !900, file: !2, line: 429, baseType: !90, size: 32, offset: 864)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "in_progress", scope: !900, file: !2, line: 430, baseType: !90, size: 32, offset: 896)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "next_args", scope: !900, file: !2, line: 431, baseType: !915, size: 64, offset: 960)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_input_arg_t", file: !2, line: 434, size: 192, elements: !917)
!917 = !{!918, !919, !920, !921}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !916, file: !2, line: 435, baseType: !898, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !916, file: !2, line: 436, baseType: !414, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !916, file: !2, line: 437, baseType: !90, size: 32, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !916, file: !2, line: 438, baseType: !90, size: 32, offset: 160)
!922 = !DILocation(line: 0, scope: !892)
!923 = !DILocation(line: 443, column: 25, scope: !892)
!924 = !DILocation(line: 444, column: 29, scope: !892)
!925 = !DILocation(line: 444, column: 58, scope: !892)
!926 = !DILocation(line: 444, column: 76, scope: !892)
!927 = !DILocation(line: 444, column: 5, scope: !892)
!928 = !DILocation(line: 445, column: 23, scope: !892)
!929 = !DILocation(line: 445, column: 21, scope: !892)
!930 = !{!931, !344, i64 0}
!931 = !{!"", !344, i64 0, !344, i64 8, !344, i64 16, !932, i64 24, !933, i64 96, !336, i64 104, !336, i64 108, !336, i64 112, !344, i64 120}
!932 = !{!"", !336, i64 0, !336, i64 4, !933, i64 8, !934, i64 16}
!933 = !{!"long", !337, i64 0}
!934 = !{!"", !336, i64 0, !336, i64 4, !337, i64 8, !337, i64 24}
!935 = !DILocation(line: 446, column: 25, scope: !892)
!936 = !DILocation(line: 446, column: 8, scope: !892)
!937 = !DILocation(line: 446, column: 23, scope: !892)
!938 = !{!931, !344, i64 8}
!939 = !DILocation(line: 447, column: 19, scope: !892)
!940 = !DILocation(line: 447, column: 8, scope: !892)
!941 = !DILocation(line: 447, column: 17, scope: !892)
!942 = !{!931, !344, i64 16}
!943 = !DILocation(line: 448, column: 8, scope: !892)
!944 = !DILocation(line: 448, column: 20, scope: !892)
!945 = !{!931, !336, i64 112}
!946 = !DILocation(line: 449, column: 8, scope: !892)
!947 = !DILocation(line: 449, column: 19, scope: !892)
!948 = !{!931, !336, i64 104}
!949 = !DILocation(line: 450, column: 20, scope: !892)
!950 = !DILocation(line: 450, column: 8, scope: !892)
!951 = !DILocation(line: 450, column: 18, scope: !892)
!952 = !{!931, !344, i64 120}
!953 = !DILocation(line: 451, column: 21, scope: !892)
!954 = !{!955, !344, i64 0}
!955 = !{!"thread_input_arg_t", !344, i64 0, !344, i64 8, !336, i64 16, !336, i64 20}
!956 = !DILocation(line: 452, column: 19, scope: !892)
!957 = !DILocation(line: 452, column: 26, scope: !892)
!958 = !{!955, !336, i64 20}
!959 = !DILocation(line: 453, column: 22, scope: !892)
!960 = !DILocation(line: 453, column: 8, scope: !892)
!961 = !DILocation(line: 453, column: 20, scope: !892)
!962 = !{!931, !336, i64 108}
!963 = !DILocation(line: 455, column: 15, scope: !892)
!964 = !DILocation(line: 456, column: 5, scope: !892)
!965 = !DISubprogram(name: "x264_picture_alloc", scope: !175, file: !175, line: 358, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !414, !90, !90, !90}
!968 = distinct !DISubprogram(name: "get_frame_total_thread", scope: !2, file: !2, line: 459, type: !375, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !969)
!969 = !{!970, !971}
!970 = !DILocalVariable(name: "handle", arg: 1, scope: !968, file: !2, line: 459, type: !88)
!971 = !DILocalVariable(name: "h", scope: !968, file: !2, line: 461, type: !898)
!972 = !DILocation(line: 0, scope: !968)
!973 = !DILocation(line: 462, column: 15, scope: !968)
!974 = !DILocation(line: 462, column: 5, scope: !968)
!975 = distinct !DISubprogram(name: "read_frame_thread", scope: !2, file: !2, line: 470, type: !412, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !976)
!976 = !{!977, !978, !979, !980, !981, !982, !983}
!977 = !DILocalVariable(name: "p_pic", arg: 1, scope: !975, file: !2, line: 470, type: !414)
!978 = !DILocalVariable(name: "handle", arg: 2, scope: !975, file: !2, line: 470, type: !88)
!979 = !DILocalVariable(name: "i_frame", arg: 3, scope: !975, file: !2, line: 470, type: !90)
!980 = !DILocalVariable(name: "h", scope: !975, file: !2, line: 472, type: !898)
!981 = !DILocalVariable(name: "stuff", scope: !975, file: !2, line: 473, type: !87)
!982 = !DILocalVariable(name: "ret", scope: !975, file: !2, line: 474, type: !90)
!983 = !DILocalVariable(name: "t", scope: !984, file: !2, line: 485, type: !415)
!984 = distinct !DILexicalBlock(scope: !985, file: !2, line: 485, column: 9)
!985 = distinct !DILexicalBlock(scope: !986, file: !2, line: 484, column: 5)
!986 = distinct !DILexicalBlock(scope: !975, file: !2, line: 483, column: 9)
!987 = !DILocation(line: 0, scope: !975)
!988 = !DILocation(line: 473, column: 5, scope: !975)
!989 = !DILocation(line: 476, column: 12, scope: !990)
!990 = distinct !DILexicalBlock(scope: !975, file: !2, line: 476, column: 9)
!991 = !DILocation(line: 476, column: 23, scope: !990)
!992 = !DILocation(line: 476, column: 9, scope: !975)
!993 = !DILocation(line: 478, column: 31, scope: !994)
!994 = distinct !DILexicalBlock(scope: !990, file: !2, line: 477, column: 5)
!995 = !{!931, !933, i64 96}
!996 = !DILocation(line: 478, column: 9, scope: !994)
!997 = !DILocation(line: 479, column: 19, scope: !994)
!998 = !DILocation(line: 479, column: 30, scope: !994)
!999 = !DILocation(line: 480, column: 12, scope: !994)
!1000 = !DILocation(line: 480, column: 24, scope: !994)
!1001 = !DILocation(line: 483, column: 12, scope: !986)
!1002 = !DILocation(line: 481, column: 5, scope: !994)
!1003 = !DILocation(line: 483, column: 23, scope: !986)
!1004 = !DILocation(line: 483, column: 9, scope: !975)
!1005 = !DILocation(line: 485, column: 9, scope: !984)
!1006 = !{i64 0, i64 4, !335, i64 4, i64 4, !335, i64 8, i64 8, !1007, i64 16, i64 4, !335, i64 20, i64 4, !335, i64 24, i64 16, !576, i64 40, i64 32, !576}
!1007 = !{!933, !933, i64 0}
!1008 = !DILocation(line: 485, column: 9, scope: !985)
!1009 = !DILocation(line: 486, column: 5, scope: !985)
!1010 = !DILocation(line: 489, column: 19, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !986, file: !2, line: 488, column: 5)
!1012 = !DILocation(line: 489, column: 43, scope: !1011)
!1013 = !DILocation(line: 489, column: 16, scope: !1011)
!1014 = !DILocation(line: 489, column: 13, scope: !1011)
!1015 = !DILocation(line: 492, column: 13, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !975, file: !2, line: 492, column: 9)
!1017 = !DILocation(line: 492, column: 10, scope: !1016)
!1018 = !DILocation(line: 492, column: 25, scope: !1016)
!1019 = !DILocation(line: 495, column: 12, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 493, column: 5)
!1021 = !DILocation(line: 495, column: 23, scope: !1020)
!1022 = !DILocation(line: 495, column: 31, scope: !1020)
!1023 = !{!955, !336, i64 16}
!1024 = !DILocation(line: 494, column: 23, scope: !1020)
!1025 = !DILocation(line: 496, column: 33, scope: !1020)
!1026 = !DILocation(line: 496, column: 23, scope: !1020)
!1027 = !DILocation(line: 496, column: 27, scope: !1020)
!1028 = !{!955, !344, i64 8}
!1029 = !DILocation(line: 497, column: 34, scope: !1020)
!1030 = !DILocation(line: 497, column: 9, scope: !1020)
!1031 = !DILocation(line: 498, column: 12, scope: !1020)
!1032 = !DILocation(line: 498, column: 24, scope: !1020)
!1033 = !DILocation(line: 499, column: 5, scope: !1020)
!1034 = !DILocation(line: 501, column: 23, scope: !1016)
!1035 = !DILocation(line: 504, column: 1, scope: !975)
!1036 = !DILocation(line: 503, column: 5, scope: !975)
!1037 = !DISubprogram(name: "pthread_join", scope: !1038, file: !1038, line: 219, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!1038 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!90, !909, !1041}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1042 = !DISubprogram(name: "pthread_create", scope: !1038, file: !1038, line: 202, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!90, !1045, !1047, !1058, !493}
!1045 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1048)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !910, line: 62, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !910, line: 56, size: 448, elements: !1052)
!1052 = !{!1053, !1057}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1051, file: !910, line: 58, baseType: !1054, size: 448)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1055)
!1055 = !{!1056}
!1056 = !DISubrange(count: 56)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1051, file: !910, line: 59, baseType: !128, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!87, !87}
!1061 = distinct !DISubprogram(name: "read_frame_thread_int", scope: !2, file: !2, line: 465, type: !1062, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1066)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !1064}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_input_arg_t", file: !2, line: 439, baseType: !916)
!1066 = !{!1067}
!1067 = !DILocalVariable(name: "i", arg: 1, scope: !1061, file: !2, line: 465, type: !1064)
!1068 = !DILocation(line: 0, scope: !1061)
!1069 = !DILocation(line: 467, column: 20, scope: !1061)
!1070 = !DILocation(line: 467, column: 23, scope: !1061)
!1071 = !DILocation(line: 467, column: 40, scope: !1061)
!1072 = !DILocation(line: 467, column: 51, scope: !1061)
!1073 = !DILocation(line: 467, column: 64, scope: !1061)
!1074 = !DILocation(line: 467, column: 17, scope: !1061)
!1075 = !DILocation(line: 467, column: 8, scope: !1061)
!1076 = !DILocation(line: 467, column: 15, scope: !1061)
!1077 = !DILocation(line: 468, column: 1, scope: !1061)
!1078 = distinct !DISubprogram(name: "close_file_thread", scope: !2, file: !2, line: 506, type: !375, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1079)
!1079 = !{!1080, !1081}
!1080 = !DILocalVariable(name: "handle", arg: 1, scope: !1078, file: !2, line: 506, type: !88)
!1081 = !DILocalVariable(name: "h", scope: !1078, file: !2, line: 508, type: !898)
!1082 = !DILocation(line: 0, scope: !1078)
!1083 = !DILocation(line: 509, column: 8, scope: !1078)
!1084 = !DILocation(line: 509, column: 27, scope: !1078)
!1085 = !DILocation(line: 509, column: 5, scope: !1078)
!1086 = !DILocation(line: 510, column: 29, scope: !1078)
!1087 = !DILocation(line: 510, column: 5, scope: !1078)
!1088 = !DILocation(line: 511, column: 12, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 511, column: 9)
!1090 = !DILocation(line: 511, column: 9, scope: !1089)
!1091 = !DILocation(line: 511, column: 9, scope: !1078)
!1092 = !DILocation(line: 512, column: 31, scope: !1089)
!1093 = !DILocation(line: 512, column: 9, scope: !1089)
!1094 = !DILocation(line: 513, column: 14, scope: !1078)
!1095 = !DILocation(line: 513, column: 5, scope: !1078)
!1096 = !DILocation(line: 514, column: 5, scope: !1078)
!1097 = !DILocation(line: 515, column: 5, scope: !1078)
!1098 = !DISubprogram(name: "x264_picture_clean", scope: !175, file: !175, line: 363, type: !1099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !414}
!1101 = distinct !DISubprogram(name: "open_file_bsf", scope: !2, file: !2, line: 520, type: !1102, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1104)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!90, !108, !172}
!1104 = !{!1105, !1106}
!1105 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !1101, file: !2, line: 520, type: !108)
!1106 = !DILocalVariable(name: "p_handle", arg: 2, scope: !1101, file: !2, line: 520, type: !172)
!1107 = !DILocation(line: 0, scope: !1101)
!1108 = !DILocation(line: 522, column: 22, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 522, column: 9)
!1110 = !DILocation(line: 522, column: 20, scope: !1109)
!1111 = !DILocation(line: 522, column: 50, scope: !1109)
!1112 = !DILocation(line: 526, column: 1, scope: !1101)
!1113 = distinct !DISubprogram(name: "set_param_bsf", scope: !2, file: !2, line: 528, type: !1114, scopeLine: 529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1116)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!90, !88, !173}
!1116 = !{!1117, !1118}
!1117 = !DILocalVariable(name: "handle", arg: 1, scope: !1113, file: !2, line: 528, type: !88)
!1118 = !DILocalVariable(name: "p_param", arg: 2, scope: !1113, file: !2, line: 528, type: !173)
!1119 = !DILocation(line: 0, scope: !1113)
!1120 = !DILocation(line: 530, column: 5, scope: !1113)
!1121 = distinct !DISubprogram(name: "write_nalu_bsf", scope: !2, file: !2, line: 533, type: !1122, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1124)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!90, !88, !431, !90}
!1124 = !{!1125, !1126, !1127}
!1125 = !DILocalVariable(name: "handle", arg: 1, scope: !1121, file: !2, line: 533, type: !88)
!1126 = !DILocalVariable(name: "p_nalu", arg: 2, scope: !1121, file: !2, line: 533, type: !431)
!1127 = !DILocalVariable(name: "i_size", arg: 3, scope: !1121, file: !2, line: 533, type: !90)
!1128 = !DILocation(line: 0, scope: !1121)
!1129 = !DILocation(line: 535, column: 24, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 535, column: 9)
!1131 = !DILocation(line: 535, column: 9, scope: !1130)
!1132 = !DILocation(line: 535, column: 51, scope: !1130)
!1133 = !DILocation(line: 538, column: 1, scope: !1121)
!1134 = !DISubprogram(name: "fwrite", scope: !370, file: !370, line: 681, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!95, !1137, !151, !151, !494}
!1137 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1138)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1140 = distinct !DISubprogram(name: "set_eop_bsf", scope: !2, file: !2, line: 540, type: !1141, scopeLine: 541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1143)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!90, !88, !414}
!1143 = !{!1144, !1145}
!1144 = !DILocalVariable(name: "handle", arg: 1, scope: !1140, file: !2, line: 540, type: !88)
!1145 = !DILocalVariable(name: "p_picture", arg: 2, scope: !1140, file: !2, line: 540, type: !414)
!1146 = !DILocation(line: 0, scope: !1140)
!1147 = !DILocation(line: 542, column: 5, scope: !1140)
!1148 = distinct !DISubprogram(name: "close_file_bsf", scope: !2, file: !2, line: 545, type: !375, scopeLine: 546, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1149)
!1149 = !{!1150}
!1150 = !DILocalVariable(name: "handle", arg: 1, scope: !1148, file: !2, line: 545, type: !88)
!1151 = !DILocation(line: 0, scope: !1148)
!1152 = !DILocation(line: 547, column: 17, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 547, column: 9)
!1154 = !DILocation(line: 547, column: 26, scope: !1153)
!1155 = !DILocation(line: 550, column: 12, scope: !1148)
!1156 = !DILocation(line: 550, column: 5, scope: !1148)
!1157 = !DILocation(line: 551, column: 1, scope: !1148)
!1158 = distinct !DISubprogram(name: "open_file_mkv", scope: !2, file: !2, line: 861, type: !1102, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1159)
!1159 = !{!1160, !1161, !1162}
!1160 = !DILocalVariable(name: "psz_filename", arg: 1, scope: !1158, file: !2, line: 861, type: !108)
!1161 = !DILocalVariable(name: "p_handle", arg: 2, scope: !1158, file: !2, line: 861, type: !172)
!1162 = !DILocalVariable(name: "p_mkv", scope: !1158, file: !2, line: 863, type: !1163)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "mkv_t", file: !2, line: 813, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 799, size: 576, elements: !1166)
!1166 = !{!1167, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !1165, file: !2, line: 801, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "mk_Writer", file: !1170, line: 24, baseType: !1171)
!1170 = !DIFile(filename: "./matroska.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "9c5d0a3c9bb78602e48a8524a1154b90")
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "mk_Writer", file: !1170, line: 24, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !1165, file: !2, line: 803, baseType: !431, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !1165, file: !2, line: 803, baseType: !431, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sps_len", scope: !1165, file: !2, line: 804, baseType: !90, size: 32, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pps_len", scope: !1165, file: !2, line: 804, baseType: !90, size: 32, offset: 224)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1165, file: !2, line: 806, baseType: !90, size: 32, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1165, file: !2, line: 806, baseType: !90, size: 32, offset: 288)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "d_width", scope: !1165, file: !2, line: 806, baseType: !90, size: 32, offset: 320)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "d_height", scope: !1165, file: !2, line: 806, baseType: !90, size: 32, offset: 352)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "frame_duration", scope: !1165, file: !2, line: 808, baseType: !158, size: 64, offset: 384)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "fps_num", scope: !1165, file: !2, line: 809, baseType: !90, size: 32, offset: 448)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "b_header_written", scope: !1165, file: !2, line: 811, baseType: !90, size: 32, offset: 480)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "b_writing_frame", scope: !1165, file: !2, line: 812, baseType: !4, size: 8, offset: 512)
!1184 = !DILocation(line: 0, scope: !1158)
!1185 = !DILocation(line: 865, column: 15, scope: !1158)
!1186 = !DILocation(line: 867, column: 14, scope: !1158)
!1187 = !DILocation(line: 868, column: 15, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 868, column: 9)
!1189 = !DILocation(line: 868, column: 9, scope: !1158)
!1190 = !DILocation(line: 873, column: 16, scope: !1158)
!1191 = !DILocation(line: 873, column: 14, scope: !1158)
!1192 = !{!1193, !344, i64 0}
!1193 = !{!"", !344, i64 0, !344, i64 8, !344, i64 16, !336, i64 24, !336, i64 28, !336, i64 32, !336, i64 36, !336, i64 40, !336, i64 44, !933, i64 48, !336, i64 56, !336, i64 60, !337, i64 64}
!1194 = !DILocation(line: 874, column: 18, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 874, column: 9)
!1196 = !DILocation(line: 874, column: 9, scope: !1158)
!1197 = !DILocation(line: 876, column: 9, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 875, column: 5)
!1199 = !DILocation(line: 877, column: 9, scope: !1198)
!1200 = !DILocation(line: 880, column: 15, scope: !1158)
!1201 = !DILocation(line: 882, column: 5, scope: !1158)
!1202 = !DILocation(line: 883, column: 1, scope: !1158)
!1203 = !DISubprogram(name: "mk_createWriter", scope: !1170, file: !1170, line: 26, type: !1204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!1168, !234}
!1206 = distinct !DISubprogram(name: "set_param_mkv", scope: !2, file: !2, line: 885, type: !1114, scopeLine: 886, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1207)
!1207 = !{!1208, !1209, !1210, !1211, !1212, !1213}
!1208 = !DILocalVariable(name: "handle", arg: 1, scope: !1206, file: !2, line: 885, type: !88)
!1209 = !DILocalVariable(name: "p_param", arg: 2, scope: !1206, file: !2, line: 885, type: !173)
!1210 = !DILocalVariable(name: "p_mkv", scope: !1206, file: !2, line: 887, type: !1163)
!1211 = !DILocalVariable(name: "dw", scope: !1206, file: !2, line: 888, type: !158)
!1212 = !DILocalVariable(name: "dh", scope: !1206, file: !2, line: 888, type: !158)
!1213 = !DILocalVariable(name: "x", scope: !1214, file: !2, line: 918, type: !158)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 917, column: 5)
!1215 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 916, column: 9)
!1216 = !DILocation(line: 0, scope: !1206)
!1217 = !DILocation(line: 890, column: 18, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 890, column: 9)
!1219 = !DILocation(line: 890, column: 28, scope: !1218)
!1220 = !DILocation(line: 890, column: 9, scope: !1206)
!1221 = !DILocation(line: 892, column: 51, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 891, column: 5)
!1223 = !DILocation(line: 892, column: 33, scope: !1222)
!1224 = !DILocation(line: 892, column: 61, scope: !1222)
!1225 = !DILocation(line: 893, column: 53, scope: !1222)
!1226 = !DILocation(line: 895, column: 5, scope: !1222)
!1227 = !DILocation(line: 0, scope: !1218)
!1228 = !DILocation(line: 902, column: 29, scope: !1206)
!1229 = !DILocation(line: 902, column: 12, scope: !1206)
!1230 = !DILocation(line: 902, column: 18, scope: !1206)
!1231 = !{!1193, !336, i64 32}
!1232 = !DILocation(line: 903, column: 30, scope: !1206)
!1233 = !DILocation(line: 903, column: 12, scope: !1206)
!1234 = !DILocation(line: 903, column: 19, scope: !1206)
!1235 = !{!1193, !336, i64 36}
!1236 = !DILocation(line: 905, column: 22, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 905, column: 9)
!1238 = !DILocation(line: 905, column: 9, scope: !1237)
!1239 = !DILocation(line: 905, column: 34, scope: !1237)
!1240 = !DILocation(line: 905, column: 18, scope: !1237)
!1241 = !DILocation(line: 905, column: 50, scope: !1237)
!1242 = !DILocation(line: 905, column: 37, scope: !1237)
!1243 = !DILocation(line: 905, column: 9, scope: !1206)
!1244 = !DILocation(line: 907, column: 14, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 906, column: 5)
!1246 = !DILocation(line: 907, column: 43, scope: !1245)
!1247 = !DILocation(line: 907, column: 41, scope: !1245)
!1248 = !DILocation(line: 908, column: 14, scope: !1245)
!1249 = !DILocation(line: 908, column: 43, scope: !1245)
!1250 = !DILocation(line: 908, column: 41, scope: !1245)
!1251 = !DILocation(line: 909, column: 5, scope: !1245)
!1252 = !DILocation(line: 912, column: 14, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 911, column: 5)
!1254 = !DILocation(line: 913, column: 14, scope: !1253)
!1255 = !DILocation(line: 0, scope: !1237)
!1256 = !DILocation(line: 916, column: 12, scope: !1215)
!1257 = !DILocation(line: 916, column: 16, scope: !1215)
!1258 = !DILocalVariable(name: "b", arg: 2, scope: !1259, file: !2, line: 44, type: !158)
!1259 = distinct !DISubprogram(name: "gcd", scope: !2, file: !2, line: 44, type: !1260, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1262)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!158, !158, !158}
!1262 = !{!1263, !1258, !1264}
!1263 = !DILocalVariable(name: "a", arg: 1, scope: !1259, file: !2, line: 44, type: !158)
!1264 = !DILocalVariable(name: "c", scope: !1265, file: !2, line: 48, type: !158)
!1265 = distinct !DILexicalBlock(scope: !1259, file: !2, line: 47, column: 5)
!1266 = !DILocation(line: 0, scope: !1259, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 918, column: 21, scope: !1214)
!1268 = !DILocation(line: 0, scope: !1265, inlinedAt: !1267)
!1269 = !DILocation(line: 49, column: 14, scope: !1270, inlinedAt: !1267)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 49, column: 13)
!1271 = !DILocation(line: 0, scope: !1214)
!1272 = !DILocation(line: 919, column: 12, scope: !1214)
!1273 = !DILocation(line: 920, column: 12, scope: !1214)
!1274 = !DILocation(line: 921, column: 5, scope: !1214)
!1275 = !DILocation(line: 923, column: 22, scope: !1206)
!1276 = !DILocation(line: 923, column: 12, scope: !1206)
!1277 = !DILocation(line: 923, column: 20, scope: !1206)
!1278 = !{!1193, !336, i64 40}
!1279 = !DILocation(line: 924, column: 23, scope: !1206)
!1280 = !DILocation(line: 924, column: 12, scope: !1206)
!1281 = !DILocation(line: 924, column: 21, scope: !1206)
!1282 = !{!1193, !336, i64 44}
!1283 = !DILocation(line: 926, column: 5, scope: !1206)
!1284 = distinct !DISubprogram(name: "write_nalu_mkv", scope: !2, file: !2, line: 929, type: !1122, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1293}
!1286 = !DILocalVariable(name: "handle", arg: 1, scope: !1284, file: !2, line: 929, type: !88)
!1287 = !DILocalVariable(name: "p_nalu", arg: 2, scope: !1284, file: !2, line: 929, type: !431)
!1288 = !DILocalVariable(name: "i_size", arg: 3, scope: !1284, file: !2, line: 929, type: !90)
!1289 = !DILocalVariable(name: "p_mkv", scope: !1284, file: !2, line: 931, type: !1163)
!1290 = !DILocalVariable(name: "type", scope: !1284, file: !2, line: 932, type: !219)
!1291 = !DILocalVariable(name: "dsize", scope: !1284, file: !2, line: 933, type: !1292)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 32, elements: !20)
!1293 = !DILocalVariable(name: "psize", scope: !1284, file: !2, line: 934, type: !90)
!1294 = !DILocation(line: 0, scope: !1284)
!1295 = !DILocation(line: 932, column: 20, scope: !1284)
!1296 = !DILocation(line: 932, column: 30, scope: !1284)
!1297 = !DILocation(line: 933, column: 5, scope: !1284)
!1298 = !DILocation(line: 933, column: 13, scope: !1284)
!1299 = !DILocation(line: 936, column: 13, scope: !1284)
!1300 = !DILocation(line: 936, column: 5, scope: !1284)
!1301 = !DILocation(line: 940, column: 21, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 940, column: 13)
!1303 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 937, column: 5)
!1304 = !{!1193, !344, i64 8}
!1305 = !DILocation(line: 940, column: 14, scope: !1302)
!1306 = !DILocation(line: 940, column: 13, scope: !1303)
!1307 = !DILocation(line: 942, column: 40, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 941, column: 9)
!1309 = !DILocation(line: 942, column: 33, scope: !1308)
!1310 = !DILocation(line: 942, column: 26, scope: !1308)
!1311 = !DILocation(line: 942, column: 24, scope: !1308)
!1312 = !DILocation(line: 943, column: 28, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 943, column: 17)
!1314 = !DILocation(line: 943, column: 17, scope: !1308)
!1315 = !DILocation(line: 945, column: 20, scope: !1308)
!1316 = !DILocation(line: 945, column: 28, scope: !1308)
!1317 = !{!1193, !336, i64 24}
!1318 = !DILocation(line: 946, column: 13, scope: !1308)
!1319 = !DILocation(line: 947, column: 9, scope: !1308)
!1320 = !DILocation(line: 952, column: 21, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 952, column: 13)
!1322 = !{!1193, !344, i64 16}
!1323 = !DILocation(line: 952, column: 14, scope: !1321)
!1324 = !DILocation(line: 952, column: 13, scope: !1303)
!1325 = !DILocation(line: 954, column: 40, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 953, column: 9)
!1327 = !DILocation(line: 954, column: 33, scope: !1326)
!1328 = !DILocation(line: 954, column: 26, scope: !1326)
!1329 = !DILocation(line: 954, column: 24, scope: !1326)
!1330 = !DILocation(line: 955, column: 28, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 955, column: 17)
!1332 = !DILocation(line: 955, column: 17, scope: !1326)
!1333 = !DILocation(line: 957, column: 20, scope: !1326)
!1334 = !DILocation(line: 957, column: 28, scope: !1326)
!1335 = !{!1193, !336, i64 28}
!1336 = !DILocation(line: 958, column: 13, scope: !1326)
!1337 = !DILocation(line: 959, column: 9, scope: !1326)
!1338 = !DILocation(line: 966, column: 21, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 966, column: 13)
!1340 = !{!1193, !337, i64 64}
!1341 = !DILocation(line: 966, column: 14, scope: !1339)
!1342 = !DILocation(line: 966, column: 13, scope: !1303)
!1343 = !DILocation(line: 968, column: 38, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 968, column: 17)
!1345 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 967, column: 9)
!1346 = !DILocation(line: 968, column: 17, scope: !1344)
!1347 = !DILocation(line: 968, column: 41, scope: !1344)
!1348 = !DILocation(line: 968, column: 17, scope: !1345)
!1349 = !DILocation(line: 970, column: 36, scope: !1345)
!1350 = !DILocation(line: 971, column: 9, scope: !1345)
!1351 = !DILocation(line: 972, column: 24, scope: !1303)
!1352 = !DILocation(line: 973, column: 26, scope: !1303)
!1353 = !DILocation(line: 973, column: 20, scope: !1303)
!1354 = !DILocation(line: 973, column: 18, scope: !1303)
!1355 = !DILocation(line: 974, column: 26, scope: !1303)
!1356 = !DILocation(line: 974, column: 20, scope: !1303)
!1357 = !DILocation(line: 974, column: 9, scope: !1303)
!1358 = !DILocation(line: 974, column: 18, scope: !1303)
!1359 = !DILocation(line: 975, column: 26, scope: !1303)
!1360 = !DILocation(line: 975, column: 20, scope: !1303)
!1361 = !DILocation(line: 975, column: 9, scope: !1303)
!1362 = !DILocation(line: 975, column: 18, scope: !1303)
!1363 = !DILocation(line: 976, column: 20, scope: !1303)
!1364 = !DILocation(line: 976, column: 9, scope: !1303)
!1365 = !DILocation(line: 976, column: 18, scope: !1303)
!1366 = !DILocation(line: 977, column: 36, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 977, column: 13)
!1368 = !DILocation(line: 977, column: 13, scope: !1367)
!1369 = !DILocation(line: 977, column: 49, scope: !1367)
!1370 = !DILocation(line: 977, column: 53, scope: !1367)
!1371 = !DILocation(line: 978, column: 36, scope: !1367)
!1372 = !DILocation(line: 978, column: 13, scope: !1367)
!1373 = !DILocation(line: 978, column: 63, scope: !1367)
!1374 = !DILocation(line: 977, column: 13, scope: !1303)
!1375 = !DILocation(line: 986, column: 17, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 986, column: 9)
!1377 = !{!1193, !336, i64 60}
!1378 = !DILocation(line: 986, column: 10, scope: !1376)
!1379 = !DILocation(line: 986, column: 34, scope: !1376)
!1380 = !DILocation(line: 986, column: 44, scope: !1376)
!1381 = !DILocation(line: 986, column: 37, scope: !1376)
!1382 = !DILocation(line: 986, column: 48, scope: !1376)
!1383 = !DILocation(line: 986, column: 58, scope: !1376)
!1384 = !DILocation(line: 986, column: 51, scope: !1376)
!1385 = !DILocation(line: 986, column: 62, scope: !1376)
!1386 = !DILocalVariable(name: "p_mkv", arg: 1, scope: !1387, file: !2, line: 815, type: !1163)
!1387 = distinct !DISubprogram(name: "write_header_mkv", scope: !2, file: !2, line: 815, type: !1388, scopeLine: 816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1390)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!90, !1163}
!1390 = !{!1386, !1391, !1392, !1393}
!1391 = !DILocalVariable(name: "ret", scope: !1387, file: !2, line: 817, type: !90)
!1392 = !DILocalVariable(name: "avcC", scope: !1387, file: !2, line: 818, type: !431)
!1393 = !DILocalVariable(name: "avcC_len", scope: !1387, file: !2, line: 819, type: !90)
!1394 = !DILocation(line: 0, scope: !1387, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 987, column: 9, scope: !1376)
!1396 = !DILocation(line: 822, column: 16, scope: !1397, inlinedAt: !1395)
!1397 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 821, column: 9)
!1398 = !DILocation(line: 822, column: 22, scope: !1397, inlinedAt: !1395)
!1399 = !DILocation(line: 822, column: 27, scope: !1397, inlinedAt: !1395)
!1400 = !DILocation(line: 822, column: 37, scope: !1397, inlinedAt: !1395)
!1401 = !DILocation(line: 822, column: 44, scope: !1397, inlinedAt: !1395)
!1402 = !DILocation(line: 822, column: 49, scope: !1397, inlinedAt: !1395)
!1403 = !DILocation(line: 823, column: 16, scope: !1397, inlinedAt: !1395)
!1404 = !DILocation(line: 823, column: 24, scope: !1397, inlinedAt: !1395)
!1405 = !DILocation(line: 823, column: 29, scope: !1397, inlinedAt: !1395)
!1406 = !DILocation(line: 823, column: 39, scope: !1397, inlinedAt: !1395)
!1407 = !DILocation(line: 823, column: 48, scope: !1397, inlinedAt: !1395)
!1408 = !DILocation(line: 821, column: 9, scope: !1387, inlinedAt: !1395)
!1409 = !DILocation(line: 826, column: 35, scope: !1387, inlinedAt: !1395)
!1410 = !DILocation(line: 826, column: 47, scope: !1387, inlinedAt: !1395)
!1411 = !DILocation(line: 826, column: 60, scope: !1387, inlinedAt: !1395)
!1412 = !DILocation(line: 826, column: 51, scope: !1387, inlinedAt: !1395)
!1413 = !DILocation(line: 827, column: 19, scope: !1387, inlinedAt: !1395)
!1414 = !DILocation(line: 827, column: 12, scope: !1387, inlinedAt: !1395)
!1415 = !DILocation(line: 828, column: 14, scope: !1416, inlinedAt: !1395)
!1416 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 828, column: 9)
!1417 = !DILocation(line: 828, column: 9, scope: !1387, inlinedAt: !1395)
!1418 = !DILocation(line: 831, column: 13, scope: !1387, inlinedAt: !1395)
!1419 = !DILocation(line: 832, column: 15, scope: !1387, inlinedAt: !1395)
!1420 = !DILocation(line: 832, column: 5, scope: !1387, inlinedAt: !1395)
!1421 = !DILocation(line: 832, column: 13, scope: !1387, inlinedAt: !1395)
!1422 = !DILocation(line: 833, column: 15, scope: !1387, inlinedAt: !1395)
!1423 = !DILocation(line: 833, column: 5, scope: !1387, inlinedAt: !1395)
!1424 = !DILocation(line: 833, column: 13, scope: !1387, inlinedAt: !1395)
!1425 = !DILocation(line: 834, column: 15, scope: !1387, inlinedAt: !1395)
!1426 = !DILocation(line: 834, column: 5, scope: !1387, inlinedAt: !1395)
!1427 = !DILocation(line: 834, column: 13, scope: !1387, inlinedAt: !1395)
!1428 = !DILocation(line: 835, column: 5, scope: !1387, inlinedAt: !1395)
!1429 = !DILocation(line: 835, column: 13, scope: !1387, inlinedAt: !1395)
!1430 = !DILocation(line: 836, column: 5, scope: !1387, inlinedAt: !1395)
!1431 = !DILocation(line: 836, column: 13, scope: !1387, inlinedAt: !1395)
!1432 = !DILocation(line: 838, column: 30, scope: !1387, inlinedAt: !1395)
!1433 = !DILocation(line: 838, column: 15, scope: !1387, inlinedAt: !1395)
!1434 = !DILocation(line: 838, column: 5, scope: !1387, inlinedAt: !1395)
!1435 = !DILocation(line: 838, column: 13, scope: !1387, inlinedAt: !1395)
!1436 = !DILocation(line: 839, column: 15, scope: !1387, inlinedAt: !1395)
!1437 = !DILocation(line: 839, column: 5, scope: !1387, inlinedAt: !1395)
!1438 = !DILocation(line: 839, column: 13, scope: !1387, inlinedAt: !1395)
!1439 = !DILocation(line: 841, column: 16, scope: !1387, inlinedAt: !1395)
!1440 = !DILocation(line: 841, column: 32, scope: !1387, inlinedAt: !1395)
!1441 = !DILocation(line: 841, column: 5, scope: !1387, inlinedAt: !1395)
!1442 = !DILocation(line: 843, column: 11, scope: !1387, inlinedAt: !1395)
!1443 = !DILocation(line: 843, column: 5, scope: !1387, inlinedAt: !1395)
!1444 = !DILocation(line: 843, column: 28, scope: !1387, inlinedAt: !1395)
!1445 = !DILocation(line: 844, column: 45, scope: !1387, inlinedAt: !1395)
!1446 = !DILocation(line: 844, column: 30, scope: !1387, inlinedAt: !1395)
!1447 = !DILocation(line: 844, column: 11, scope: !1387, inlinedAt: !1395)
!1448 = !DILocation(line: 844, column: 5, scope: !1387, inlinedAt: !1395)
!1449 = !DILocation(line: 844, column: 28, scope: !1387, inlinedAt: !1395)
!1450 = !DILocation(line: 845, column: 31, scope: !1387, inlinedAt: !1395)
!1451 = !DILocation(line: 845, column: 12, scope: !1387, inlinedAt: !1395)
!1452 = !DILocation(line: 845, column: 5, scope: !1387, inlinedAt: !1395)
!1453 = !DILocation(line: 845, column: 29, scope: !1387, inlinedAt: !1395)
!1454 = !DILocation(line: 847, column: 17, scope: !1387, inlinedAt: !1395)
!1455 = !DILocation(line: 847, column: 20, scope: !1387, inlinedAt: !1395)
!1456 = !DILocation(line: 847, column: 49, scope: !1387, inlinedAt: !1395)
!1457 = !DILocation(line: 847, column: 5, scope: !1387, inlinedAt: !1395)
!1458 = !DILocation(line: 849, column: 34, scope: !1387, inlinedAt: !1395)
!1459 = !DILocation(line: 850, column: 50, scope: !1387, inlinedAt: !1395)
!1460 = !{!1193, !933, i64 48}
!1461 = !DILocation(line: 849, column: 11, scope: !1387, inlinedAt: !1395)
!1462 = !DILocation(line: 854, column: 5, scope: !1387, inlinedAt: !1395)
!1463 = !DILocation(line: 856, column: 29, scope: !1387, inlinedAt: !1395)
!1464 = !DILocation(line: 987, column: 33, scope: !1376)
!1465 = !DILocation(line: 986, column: 9, scope: !1284)
!1466 = !DILocation(line: 990, column: 5, scope: !1284)
!1467 = !DILocation(line: 991, column: 1, scope: !1284)
!1468 = !DISubprogram(name: "mk_startFrame", scope: !1170, file: !1170, line: 36, type: !1469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!90, !1168}
!1471 = !DISubprogram(name: "mk_addFrameData", scope: !1170, file: !1170, line: 37, type: !1472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!90, !1168, !1138, !99}
!1474 = distinct !DISubprogram(name: "set_eop_mkv", scope: !2, file: !2, line: 993, type: !1141, scopeLine: 994, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1475)
!1475 = !{!1476, !1477, !1478, !1479}
!1476 = !DILocalVariable(name: "handle", arg: 1, scope: !1474, file: !2, line: 993, type: !88)
!1477 = !DILocalVariable(name: "p_picture", arg: 2, scope: !1474, file: !2, line: 993, type: !414)
!1478 = !DILocalVariable(name: "p_mkv", scope: !1474, file: !2, line: 995, type: !1163)
!1479 = !DILocalVariable(name: "i_stamp", scope: !1474, file: !2, line: 996, type: !158)
!1480 = !DILocation(line: 0, scope: !1474)
!1481 = !DILocation(line: 996, column: 44, scope: !1474)
!1482 = !{!932, !933, i64 8}
!1483 = !DILocation(line: 996, column: 33, scope: !1474)
!1484 = !DILocation(line: 996, column: 50, scope: !1474)
!1485 = !DILocation(line: 996, column: 65, scope: !1474)
!1486 = !{!1193, !336, i64 56}
!1487 = !DILocation(line: 996, column: 58, scope: !1474)
!1488 = !DILocation(line: 996, column: 56, scope: !1474)
!1489 = !DILocation(line: 996, column: 23, scope: !1474)
!1490 = !DILocation(line: 998, column: 12, scope: !1474)
!1491 = !DILocation(line: 998, column: 28, scope: !1474)
!1492 = !DILocation(line: 1000, column: 37, scope: !1474)
!1493 = !DILocation(line: 1001, column: 41, scope: !1474)
!1494 = !{!932, !336, i64 0}
!1495 = !DILocation(line: 1001, column: 48, scope: !1474)
!1496 = !DILocation(line: 1000, column: 12, scope: !1474)
!1497 = !DILocation(line: 1000, column: 5, scope: !1474)
!1498 = !DISubprogram(name: "mk_setFrameFlags", scope: !1170, file: !1170, line: 38, type: !1499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!90, !1168, !158, !90}
!1501 = distinct !DISubprogram(name: "close_file_mkv", scope: !2, file: !2, line: 1004, type: !375, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DILocalVariable(name: "handle", arg: 1, scope: !1501, file: !2, line: 1004, type: !88)
!1504 = !DILocalVariable(name: "p_mkv", scope: !1501, file: !2, line: 1006, type: !1163)
!1505 = !DILocalVariable(name: "ret", scope: !1501, file: !2, line: 1007, type: !90)
!1506 = !DILocation(line: 0, scope: !1501)
!1507 = !DILocation(line: 1009, column: 16, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1501, file: !2, line: 1009, column: 9)
!1509 = !DILocation(line: 1009, column: 9, scope: !1508)
!1510 = !DILocation(line: 1009, column: 9, scope: !1501)
!1511 = !DILocation(line: 1010, column: 9, scope: !1508)
!1512 = !DILocation(line: 1011, column: 16, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1501, file: !2, line: 1011, column: 9)
!1514 = !DILocation(line: 1011, column: 9, scope: !1513)
!1515 = !DILocation(line: 1011, column: 9, scope: !1501)
!1516 = !DILocation(line: 1012, column: 9, scope: !1513)
!1517 = !DILocation(line: 1014, column: 27, scope: !1501)
!1518 = !DILocation(line: 1014, column: 11, scope: !1501)
!1519 = !DILocation(line: 1016, column: 5, scope: !1501)
!1520 = !DILocation(line: 1018, column: 5, scope: !1501)
!1521 = !DISubprogram(name: "mk_close", scope: !1170, file: !1170, line: 39, type: !1469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!1522 = !DISubprogram(name: "mk_writeHeader", scope: !1170, file: !1170, line: 28, type: !1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !364)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!90, !1168, !234, !234, !1138, !99, !158, !158, !99, !99, !99, !99}
