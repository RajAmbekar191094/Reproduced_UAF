; ModuleID = 'encoder/macroblock.c'
source_filename = "encoder/macroblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_t = type { %struct.x264_param_t, [128 x ptr], i64, i32, i32, %struct.anon.2, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.x264_sps_t], ptr, [1 x %struct.x264_pps_t], ptr, i32, [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], ptr, [8 x i8], [2 x [64 x i32]], [2 x [64 x i16]], [2 x i32], %struct.x264_slice_header_t, [8 x i8], %struct.x264_cabac_t, %struct.anon.6, ptr, ptr, i32, [19 x ptr], i32, [19 x ptr], [2 x i32], %struct.anon.8, %struct.anon.9, ptr, %struct.anon.12, [7 x ptr], [7 x ptr], [12 x ptr], [12 x ptr], %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, i32, i32, float, float, float, i32, float, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.anon.2 = type { i32, [8 x %struct.x264_nal_t], i32, ptr, %struct.bs_s, i32 }
%struct.x264_nal_t = type { i32, i32, i32, ptr }
%struct.bs_s = type { ptr, ptr, ptr, i64, i32, i32 }
%struct.x264_sps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.3, i32, %struct.anon.4, i32 }
%struct.anon.3 = type { i32, i32, i32, i32 }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_pps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x ptr] }
%struct.x264_slice_header_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, [2 x [16 x %struct.anon.5]], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.5 = type { i32, i32 }
%struct.x264_cabac_t = type { i32, i32, i32, i32, ptr, ptr, ptr, [8 x i8], i32, [460 x i8] }
%struct.anon.6 = type { [67 x ptr], [67 x ptr], [340 x ptr], ptr, [18 x ptr], i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.8 = type { [16 x i16], [2 x [4 x i16]], [4 x [64 x i16]], [24 x [16 x i16]] }
%struct.anon.9 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [4 x i32], [16 x i32], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], [2 x ptr], [2 x [32 x ptr]], ptr, ptr, [2 x [3 x ptr]], ptr, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.anon.10, %struct.anon.11, i32, i32, i32, i32, i32, i32, i32, i32, [16 x [2 x i16]], [32 x [4 x i16]], [2 x i8], [16 x i8], [14 x i8] }
%struct.anon.10 = type { [384 x i8], [864 x i8], [256 x i8], [256 x i8], [3 x [64 x i16]], [15 x [16 x i16]], [4 x [64 x i16]], [16 x [16 x i16]], [4 x [4 x i32]], i32, [2 x [2 x i32]], i32, [3 x ptr], [3 x ptr], [3 x ptr], [2 x i32], [2 x [32 x [6 x ptr]]], [2 x [16 x ptr]], [3 x i32], [12 x i8] }
%struct.anon.11 = type { [48 x i8], [48 x i8], [2 x [48 x i8]], [2 x [48 x [2 x i16]]], [2 x [48 x [2 x i16]]], [48 x i8], [2 x [48 x [2 x i16]]], [2 x [48 x i8]], [2 x i16], i32, i32, [4 x i8] }
%struct.anon.12 = type { %struct.anon.13, [5 x i32], [5 x i64], [5 x double], [17 x i32], [5 x i64], [5 x double], [5 x double], [5 x double], [5 x double], [5 x double], [5 x [19 x i64]], [2 x [17 x i64]], [2 x i64], [2 x [2 x [32 x i64]]], [2 x i32], [2 x i32] }
%struct.anon.13 = type { i32, i32, i32, [19 x i32], i32, i32, i32, [2 x i32], [2 x [32 x i32]], [17 x i32], i32, i32, i32, [2 x i32], [3 x i64], double }
%struct.x264_pixel_function_t = type { [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [4 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [4 x ptr], [4 x ptr], ptr, ptr, [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_mc_functions_t = type { ptr, ptr, ptr, [10 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_dct_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_zigzag_function_t = type { ptr, ptr, ptr, ptr, ptr }
%struct.x264_quant_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr] }
%struct.x264_deblock_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_frame_t = type { i32, i32, i32, i64, i32, i32, i32, float, float, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x ptr], [4 x ptr], [4 x ptr], ptr, [4 x ptr], [4 x ptr], ptr, [2 x ptr], [2 x [17 x ptr]], [2 x [17 x ptr]], [2 x ptr], [2 x i32], [2 x [16 x i32]], [16 x i32], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x ptr]], ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.anon.14 = type { [64 x i16] }

@block_idx_xy_fenc = internal unnamed_addr constant [16 x i8] c"\00\04@D\08\0CHL\80\84\C0\C4\88\8C\C8\CC", align 16, !dbg !0
@block_idx_xy_fdec = internal unnamed_addr constant [16 x i16] [i16 0, i16 4, i16 128, i16 132, i16 8, i16 12, i16 136, i16 140, i16 256, i16 260, i16 384, i16 388, i16 264, i16 268, i16 392, i16 396], align 16, !dbg !182
@block_idx_x = internal unnamed_addr constant [16 x i8] c"\00\01\00\01\02\03\02\03\00\01\00\01\02\03\02\03", align 16, !dbg !188
@block_idx_y = internal unnamed_addr constant [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 16, !dbg !195
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 45, i32 46], align 16, !dbg !197
@x264_pred_i4x4_neighbors = internal unnamed_addr constant [12 x i8] c"\02\01\03\06\0B\0B\0B\06\01\01\02\00", align 1, !dbg !207
@x264_lambda2_tab = external local_unnamed_addr constant [52 x i32], align 16
@x264_dct8_weight2_tab = internal unnamed_addr constant [64 x i16] [i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201], align 16, !dbg !212
@block_idx_xy_1d = internal unnamed_addr constant [16 x i8] c"\00\01\04\05\02\03\06\07\08\09\0C\0D\0A\0B\0E\0F", align 16, !dbg !205

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_encode_i4x4(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !225 {
  %4 = alloca [4 x [4 x i16]], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1300, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i32 %1, metadata !1301, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i32 %2, metadata !1302, metadata !DIExpression()), !dbg !1306
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, !dbg !1307
  %6 = load ptr, ptr %5, align 8, !dbg !1308, !tbaa !1309
  %7 = sext i32 %1 to i64, !dbg !1313
  %8 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %7, !dbg !1313
  %9 = load i8, ptr %8, align 1, !dbg !1313, !tbaa !1314
  %10 = zext i8 %9 to i64, !dbg !1308
  %11 = getelementptr inbounds i8, ptr %6, i64 %10, !dbg !1308
  call void @llvm.dbg.value(metadata ptr %11, metadata !1303, metadata !DIExpression()), !dbg !1306
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !1315
  %13 = load ptr, ptr %12, align 8, !dbg !1316, !tbaa !1309
  %14 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %7, !dbg !1317
  %15 = load i16, ptr %14, align 2, !dbg !1317, !tbaa !1318
  %16 = zext i16 %15 to i64, !dbg !1316
  %17 = getelementptr inbounds i8, ptr %13, i64 %16, !dbg !1316
  call void @llvm.dbg.value(metadata ptr %17, metadata !1304, metadata !DIExpression()), !dbg !1306
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8, !dbg !1320
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1305, metadata !DIExpression()), !dbg !1320
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 63, !dbg !1321
  %19 = load i32, ptr %18, align 4, !dbg !1321, !tbaa !1323
  %20 = icmp eq i32 %19, 0, !dbg !1350
  br i1 %20, label %25, label %21, !dbg !1351

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3, !dbg !1352
  %23 = load ptr, ptr %22, align 8, !dbg !1352, !tbaa !1354
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %7, !dbg !1355
  tail call void %23(ptr noundef nonnull %24, ptr noundef %11, ptr noundef %17) #8, !dbg !1356
  br label %58, !dbg !1357

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, !dbg !1358
  %27 = load ptr, ptr %26, align 16, !dbg !1359, !tbaa !1360
  call void %27(ptr noundef nonnull %4, ptr noundef %11, ptr noundef %17) #8, !dbg !1361
  call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata ptr %4, metadata !1367, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 %2, metadata !1368, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 2, metadata !1369, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 1, metadata !1370, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 %1, metadata !1371, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i1 false, metadata !1372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1373
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 12, !dbg !1375
  %29 = load i32, ptr %28, align 16, !dbg !1375, !tbaa !1377
  %30 = icmp eq i32 %29, 0, !dbg !1378
  br i1 %30, label %32, label %31, !dbg !1379

31:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 0, metadata !1372, metadata !DIExpression()), !dbg !1373
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %2, i32 noundef 2, i32 noundef 1, i32 noundef %1) #8, !dbg !1380
  br label %42, !dbg !1380

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 1, !dbg !1381
  %34 = load ptr, ptr %33, align 8, !dbg !1381, !tbaa !1382
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24, i64 0, !dbg !1383
  %36 = load ptr, ptr %35, align 8, !dbg !1383, !tbaa !1309
  %37 = sext i32 %2 to i64, !dbg !1383
  %38 = getelementptr inbounds [16 x i16], ptr %36, i64 %37, !dbg !1383
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26, i64 0, !dbg !1384
  %40 = load ptr, ptr %39, align 8, !dbg !1384, !tbaa !1309
  %41 = getelementptr inbounds [16 x i16], ptr %40, i64 %37, !dbg !1384
  call void %34(ptr noundef nonnull %4, ptr noundef %38, ptr noundef %41) #8, !dbg !1385
  br label %42

42:                                               ; preds = %31, %32
  call void @llvm.dbg.value(metadata ptr %4, metadata !171, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !1386
  %43 = load <4 x i64>, ptr %4, align 16, !dbg !1389, !tbaa !1402
  %44 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %43), !dbg !1403
  %45 = icmp eq i64 %44, 0, !dbg !1404
  br i1 %45, label %56, label %46, !dbg !1405

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1, !dbg !1406
  %48 = load ptr, ptr %47, align 8, !dbg !1406, !tbaa !1408
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %7, !dbg !1409
  call void %48(ptr noundef nonnull %49, ptr noundef nonnull %4) #8, !dbg !1410
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 5, !dbg !1411
  %51 = load ptr, ptr %50, align 8, !dbg !1411, !tbaa !1412
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 20, !dbg !1413
  %53 = load ptr, ptr %52, align 16, !dbg !1414, !tbaa !1309
  call void %51(ptr noundef nonnull %4, ptr noundef %53, i32 noundef %2) #8, !dbg !1415
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, !dbg !1416
  %55 = load ptr, ptr %54, align 8, !dbg !1416, !tbaa !1417
  call void %55(ptr noundef %17, ptr noundef nonnull %4) #8, !dbg !1418
  br label %58, !dbg !1419

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %7, !dbg !1420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %57, i8 0, i64 32, i1 false), !dbg !1421
  br label %58

58:                                               ; preds = %46, %56, %21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8, !dbg !1422
  ret void, !dbg !1422
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_encode_i8x8(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1423 {
  %4 = alloca [8 x [8 x i16]], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1425, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i32 %1, metadata !1426, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i32 %2, metadata !1427, metadata !DIExpression()), !dbg !1433
  %5 = shl i32 %1, 3, !dbg !1434
  %6 = and i32 %5, 8, !dbg !1434
  call void @llvm.dbg.value(metadata i32 %6, metadata !1428, metadata !DIExpression()), !dbg !1433
  %7 = shl nsw i32 %1, 2, !dbg !1435
  %8 = and i32 %7, -8, !dbg !1435
  call void @llvm.dbg.value(metadata i32 %8, metadata !1429, metadata !DIExpression()), !dbg !1433
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, !dbg !1436
  %10 = load ptr, ptr %9, align 8, !dbg !1437, !tbaa !1309
  %11 = shl nsw i32 %8, 4, !dbg !1438
  %12 = or i32 %11, %6, !dbg !1439
  %13 = sext i32 %12 to i64, !dbg !1437
  %14 = getelementptr inbounds i8, ptr %10, i64 %13, !dbg !1437
  call void @llvm.dbg.value(metadata ptr %14, metadata !1430, metadata !DIExpression()), !dbg !1433
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !1440
  %16 = load ptr, ptr %15, align 8, !dbg !1441, !tbaa !1309
  %17 = shl nsw i32 %8, 5, !dbg !1442
  %18 = or i32 %17, %6, !dbg !1443
  %19 = sext i32 %18 to i64, !dbg !1441
  %20 = getelementptr inbounds i8, ptr %16, i64 %19, !dbg !1441
  call void @llvm.dbg.value(metadata ptr %20, metadata !1431, metadata !DIExpression()), !dbg !1433
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #8, !dbg !1444
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1432, metadata !DIExpression()), !dbg !1444
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 63, !dbg !1445
  %22 = load i32, ptr %21, align 4, !dbg !1445, !tbaa !1323
  %23 = icmp eq i32 %22, 0, !dbg !1447
  br i1 %23, label %29, label %24, !dbg !1448

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2, !dbg !1449
  %26 = load ptr, ptr %25, align 16, !dbg !1449, !tbaa !1451
  %27 = sext i32 %1 to i64, !dbg !1452
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 %27, !dbg !1452
  tail call void %26(ptr noundef nonnull %28, ptr noundef %14, ptr noundef %20) #8, !dbg !1453
  br label %57, !dbg !1454

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 6, !dbg !1455
  %31 = load ptr, ptr %30, align 16, !dbg !1455, !tbaa !1456
  call void %31(ptr noundef nonnull %4, ptr noundef %14, ptr noundef %20) #8, !dbg !1457
  call void @llvm.dbg.value(metadata ptr %0, metadata !1458, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata ptr %4, metadata !1463, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 %2, metadata !1464, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 1, metadata !1465, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 %1, metadata !1466, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i1 false, metadata !1467, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1468
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 12, !dbg !1470
  %33 = load i32, ptr %32, align 16, !dbg !1470, !tbaa !1377
  %34 = icmp eq i32 %33, 0, !dbg !1472
  br i1 %34, label %36, label %35, !dbg !1473

35:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 0, metadata !1467, metadata !DIExpression()), !dbg !1468
  call void @x264_quant_8x8_trellis(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %2, i32 noundef 1, i32 noundef %1) #8, !dbg !1474
  br label %46, !dbg !1474

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, !dbg !1475
  %38 = load ptr, ptr %37, align 8, !dbg !1476, !tbaa !1477
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 25, i64 0, !dbg !1478
  %40 = load ptr, ptr %39, align 8, !dbg !1478, !tbaa !1309
  %41 = sext i32 %2 to i64, !dbg !1478
  %42 = getelementptr inbounds [64 x i16], ptr %40, i64 %41, !dbg !1478
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 27, i64 0, !dbg !1479
  %44 = load ptr, ptr %43, align 8, !dbg !1479, !tbaa !1309
  %45 = getelementptr inbounds [64 x i16], ptr %44, i64 %41, !dbg !1479
  call void %38(ptr noundef nonnull %4, ptr noundef %42, ptr noundef %45) #8, !dbg !1480
  br label %46

46:                                               ; preds = %35, %36
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, !dbg !1481
  %48 = load ptr, ptr %47, align 16, !dbg !1482, !tbaa !1483
  %49 = sext i32 %1 to i64, !dbg !1484
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 %49, !dbg !1484
  call void %48(ptr noundef nonnull %50, ptr noundef nonnull %4) #8, !dbg !1485
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 4, !dbg !1486
  %52 = load ptr, ptr %51, align 8, !dbg !1486, !tbaa !1487
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 21, !dbg !1488
  %54 = load ptr, ptr %53, align 16, !dbg !1489, !tbaa !1309
  call void %52(ptr noundef nonnull %4, ptr noundef %54, i32 noundef %2) #8, !dbg !1490
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 7, !dbg !1491
  %56 = load ptr, ptr %55, align 8, !dbg !1491, !tbaa !1492
  call void %56(ptr noundef %20, ptr noundef nonnull %4) #8, !dbg !1493
  br label %57, !dbg !1494

57:                                               ; preds = %46, %24
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #8, !dbg !1494
  ret void, !dbg !1494
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_encode_8x8_chroma(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1495 {
  %4 = alloca [2 x [2 x i16]], align 16
  %5 = alloca [4 x [4 x [4 x i16]]], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1497, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 %1, metadata !1498, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 %2, metadata !1499, metadata !DIExpression()), !dbg !1525
  %6 = icmp eq i32 %1, 0, !dbg !1526
  br i1 %6, label %15, label %7, !dbg !1527

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !1528
  %9 = load i32, ptr %8, align 8, !dbg !1528, !tbaa !1529
  %10 = icmp eq i32 %9, 1, !dbg !1530
  br i1 %10, label %15, label %11, !dbg !1531

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 16, !dbg !1532
  %13 = load i32, ptr %12, align 8, !dbg !1532, !tbaa !1533
  %14 = icmp ne i32 %13, 0, !dbg !1531
  br label %15, !dbg !1531

15:                                               ; preds = %7, %11, %3
  %16 = phi i1 [ false, %3 ], [ true, %7 ], [ %14, %11 ], !dbg !1525
  call void @llvm.dbg.value(metadata i1 %16, metadata !1502, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1525
  call void @llvm.dbg.value(metadata i32 0, metadata !1501, metadata !DIExpression()), !dbg !1525
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 63
  call void @llvm.dbg.value(metadata i32 0, metadata !1501, metadata !DIExpression()), !dbg !1525
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2
  %20 = getelementptr inbounds [4 x [4 x i16]], ptr %5, i64 1
  %21 = getelementptr inbounds [4 x [4 x i16]], ptr %5, i64 2
  %22 = getelementptr inbounds [4 x [4 x i16]], ptr %5, i64 3
  %23 = getelementptr inbounds [2 x i16], ptr %4, i64 1
  %24 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  %25 = getelementptr inbounds [2 x i16], ptr %4, i64 1, i64 1
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 12
  %27 = add nsw i32 %1, 2
  %28 = zext i1 %6 to i32
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 1
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24, i64 %30
  %32 = sext i32 %2 to i64
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26, i64 %30
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 8
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 3
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 5
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 20, i64 %30
  %39 = srem i32 %2, 6
  %40 = sext i32 %39 to i64
  %41 = sdiv i32 %2, 6
  %42 = add nsw i32 %41, -5
  %43 = icmp sgt i32 %2, 35
  %44 = select i1 %43, i32 %42, i32 0
  %45 = select i1 %43, i32 0, i32 %42
  %46 = sub nsw i32 0, %45
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3
  br label %48, !dbg !1534

48:                                               ; preds = %15, %266
  %49 = phi i1 [ true, %15 ], [ false, %266 ]
  %50 = phi i64 [ 0, %15 ], [ 1, %266 ]
  call void @llvm.dbg.value(metadata i64 %50, metadata !1501, metadata !DIExpression()), !dbg !1525
  %51 = add nuw nsw i64 %50, 1, !dbg !1535
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, i64 %51, !dbg !1536
  %53 = load ptr, ptr %52, align 8, !dbg !1536, !tbaa !1309
  call void @llvm.dbg.value(metadata ptr %53, metadata !1503, metadata !DIExpression()), !dbg !1537
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 %51, !dbg !1538
  %55 = load ptr, ptr %54, align 8, !dbg !1538, !tbaa !1309
  call void @llvm.dbg.value(metadata ptr %55, metadata !1507, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 0, metadata !1508, metadata !DIExpression()), !dbg !1537
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8, !dbg !1539
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1509, metadata !DIExpression()), !dbg !1539
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #8, !dbg !1540
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1511, metadata !DIExpression()), !dbg !1540
  %56 = load i32, ptr %17, align 4, !dbg !1541, !tbaa !1323
  %57 = icmp eq i32 %56, 0, !dbg !1542
  br i1 %57, label %86, label %58, !dbg !1543

58:                                               ; preds = %48
  %59 = shl nuw nsw i64 %50, 2
  %60 = or i64 %59, 16
  call void @llvm.dbg.value(metadata i32 0, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 0, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 0, metadata !1514, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 0, metadata !1520, metadata !DIExpression()), !dbg !1544
  %61 = load ptr, ptr %18, align 8, !dbg !1545, !tbaa !1354
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %60, !dbg !1546
  call void %61(ptr noundef nonnull %62, ptr noundef %53, ptr noundef %55) #8, !dbg !1547
  %63 = load i16, ptr %62, align 16, !dbg !1548, !tbaa !1318
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 1, i64 %50, i64 0, !dbg !1549
  store i16 %63, ptr %64, align 2, !dbg !1550, !tbaa !1318
  store i16 0, ptr %62, align 16, !dbg !1551, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 1, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 1, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 4, metadata !1514, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 4, metadata !1520, metadata !DIExpression()), !dbg !1544
  %65 = load ptr, ptr %18, align 8, !dbg !1545, !tbaa !1354
  %66 = or i64 %59, 17, !dbg !1552
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %66, !dbg !1546
  %68 = getelementptr inbounds i8, ptr %53, i64 4, !dbg !1553
  %69 = getelementptr inbounds i8, ptr %55, i64 4, !dbg !1554
  call void %65(ptr noundef nonnull %67, ptr noundef nonnull %68, ptr noundef nonnull %69) #8, !dbg !1547
  %70 = load i16, ptr %67, align 16, !dbg !1548, !tbaa !1318
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 1, i64 %50, i64 1, !dbg !1549
  store i16 %70, ptr %71, align 2, !dbg !1550, !tbaa !1318
  store i16 0, ptr %67, align 16, !dbg !1551, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 2, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 2, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 64, metadata !1514, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 128, metadata !1520, metadata !DIExpression()), !dbg !1544
  %72 = load ptr, ptr %18, align 8, !dbg !1545, !tbaa !1354
  %73 = or i64 %59, 18, !dbg !1552
  %74 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %73, !dbg !1546
  %75 = getelementptr inbounds i8, ptr %53, i64 64, !dbg !1553
  %76 = getelementptr inbounds i8, ptr %55, i64 128, !dbg !1554
  call void %72(ptr noundef nonnull %74, ptr noundef nonnull %75, ptr noundef nonnull %76) #8, !dbg !1547
  %77 = load i16, ptr %74, align 16, !dbg !1548, !tbaa !1318
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 1, i64 %50, i64 2, !dbg !1549
  store i16 %77, ptr %78, align 2, !dbg !1550, !tbaa !1318
  store i16 0, ptr %74, align 16, !dbg !1551, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 3, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 3, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 68, metadata !1514, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 132, metadata !1520, metadata !DIExpression()), !dbg !1544
  %79 = load ptr, ptr %18, align 8, !dbg !1545, !tbaa !1354
  %80 = or i64 %59, 19, !dbg !1552
  %81 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %80, !dbg !1546
  %82 = getelementptr inbounds i8, ptr %53, i64 68, !dbg !1553
  %83 = getelementptr inbounds i8, ptr %55, i64 132, !dbg !1554
  call void %79(ptr noundef nonnull %81, ptr noundef nonnull %82, ptr noundef nonnull %83) #8, !dbg !1547
  %84 = load i16, ptr %81, align 16, !dbg !1548, !tbaa !1318
  %85 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 1, i64 %50, i64 3, !dbg !1549
  store i16 %84, ptr %85, align 2, !dbg !1550, !tbaa !1318
  store i16 0, ptr %81, align 16, !dbg !1551, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 4, metadata !1500, metadata !DIExpression()), !dbg !1525
  br label %266, !dbg !1555

86:                                               ; preds = %48
  %87 = load ptr, ptr %19, align 16, !dbg !1556, !tbaa !1557
  call void %87(ptr noundef nonnull %5, ptr noundef %53, ptr noundef %55) #8, !dbg !1558
  call void @llvm.dbg.value(metadata ptr %4, metadata !1559, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata ptr %5, metadata !1564, metadata !DIExpression()), !dbg !1569
  %88 = load i16, ptr %5, align 16, !dbg !1571, !tbaa !1318
  %89 = zext i16 %88 to i32, !dbg !1571
  %90 = load i16, ptr %20, align 16, !dbg !1572, !tbaa !1318
  %91 = zext i16 %90 to i32, !dbg !1572
  %92 = add nuw nsw i32 %91, %89, !dbg !1573
  call void @llvm.dbg.value(metadata i32 %92, metadata !1565, metadata !DIExpression()), !dbg !1569
  %93 = load i16, ptr %21, align 16, !dbg !1574, !tbaa !1318
  %94 = zext i16 %93 to i32, !dbg !1574
  %95 = load i16, ptr %22, align 16, !dbg !1575, !tbaa !1318
  %96 = zext i16 %95 to i32, !dbg !1575
  %97 = add nuw nsw i32 %96, %94, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %97, metadata !1566, metadata !DIExpression()), !dbg !1569
  %98 = sub nsw i32 %89, %91, !dbg !1577
  call void @llvm.dbg.value(metadata i32 %98, metadata !1567, metadata !DIExpression()), !dbg !1569
  %99 = sub nsw i32 %94, %96, !dbg !1578
  call void @llvm.dbg.value(metadata i32 %99, metadata !1568, metadata !DIExpression()), !dbg !1569
  %100 = add nuw nsw i32 %97, %92, !dbg !1579
  %101 = trunc i32 %100 to i16, !dbg !1580
  store i16 %101, ptr %4, align 16, !dbg !1581, !tbaa !1318
  %102 = add nsw i32 %99, %98, !dbg !1582
  %103 = trunc i32 %102 to i16, !dbg !1583
  store i16 %103, ptr %23, align 4, !dbg !1584, !tbaa !1318
  %104 = sub nsw i32 %92, %97, !dbg !1585
  %105 = trunc i32 %104 to i16, !dbg !1586
  store i16 %105, ptr %24, align 2, !dbg !1587, !tbaa !1318
  %106 = sub nsw i32 %98, %99, !dbg !1588
  %107 = trunc i32 %106 to i16, !dbg !1589
  store i16 %107, ptr %25, align 2, !dbg !1590, !tbaa !1318
  store i16 0, ptr %5, align 16, !dbg !1591, !tbaa !1318
  store i16 0, ptr %20, align 16, !dbg !1592, !tbaa !1318
  store i16 0, ptr %21, align 16, !dbg !1593, !tbaa !1318
  store i16 0, ptr %22, align 16, !dbg !1594, !tbaa !1318
  call void @llvm.dbg.value(metadata i32 0, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 0, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 0, metadata !1508, metadata !DIExpression()), !dbg !1537
  %108 = shl nuw nsw i64 %50, 2
  %109 = or i64 %108, 16
  call void @llvm.dbg.value(metadata i64 0, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 0, metadata !1508, metadata !DIExpression()), !dbg !1537
  %110 = load i32, ptr %26, align 16, !dbg !1595, !tbaa !1377
  %111 = icmp eq i32 %110, 0, !dbg !1600
  br i1 %111, label %113, label %112, !dbg !1601

112:                                              ; preds = %86
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %27, i32 noundef %2, i32 noundef 4, i32 noundef %28, i32 noundef 0) #8, !dbg !1602
  br label %119, !dbg !1602

113:                                              ; preds = %86
  %114 = load ptr, ptr %29, align 8, !dbg !1603, !tbaa !1382
  %115 = load ptr, ptr %31, align 8, !dbg !1604, !tbaa !1309
  %116 = getelementptr inbounds [16 x i16], ptr %115, i64 %32, !dbg !1604
  %117 = load ptr, ptr %33, align 8, !dbg !1605, !tbaa !1309
  %118 = getelementptr inbounds [16 x i16], ptr %117, i64 %32, !dbg !1605
  call void %114(ptr noundef nonnull %5, ptr noundef %116, ptr noundef %118) #8, !dbg !1606
  br label %119

119:                                              ; preds = %113, %112
  %120 = load ptr, ptr %34, align 8, !dbg !1607, !tbaa !1408
  %121 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %109, !dbg !1608
  call void %120(ptr noundef nonnull %121, ptr noundef nonnull %5) #8, !dbg !1609
  br i1 %16, label %122, label %125, !dbg !1610

122:                                              ; preds = %119
  %123 = load ptr, ptr %35, align 8, !dbg !1611, !tbaa !1613
  %124 = call i32 %123(ptr noundef nonnull %121) #8, !dbg !1614
  call void @llvm.dbg.value(metadata i32 %124, metadata !1508, metadata !DIExpression()), !dbg !1537
  br label %125, !dbg !1615

125:                                              ; preds = %119, %122
  %126 = phi i32 [ %124, %122 ], [ 0, %119 ], !dbg !1537
  call void @llvm.dbg.value(metadata i32 %126, metadata !1508, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i64 1, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 1, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 %126, metadata !1508, metadata !DIExpression()), !dbg !1537
  %127 = load i32, ptr %26, align 16, !dbg !1595, !tbaa !1377
  %128 = icmp eq i32 %127, 0, !dbg !1600
  br i1 %128, label %130, label %129, !dbg !1601

129:                                              ; preds = %125
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %20, i32 noundef %27, i32 noundef %2, i32 noundef 4, i32 noundef %28, i32 noundef 0) #8, !dbg !1602
  br label %136, !dbg !1602

130:                                              ; preds = %125
  %131 = load ptr, ptr %29, align 8, !dbg !1603, !tbaa !1382
  %132 = load ptr, ptr %31, align 8, !dbg !1604, !tbaa !1309
  %133 = getelementptr inbounds [16 x i16], ptr %132, i64 %32, !dbg !1604
  %134 = load ptr, ptr %33, align 8, !dbg !1605, !tbaa !1309
  %135 = getelementptr inbounds [16 x i16], ptr %134, i64 %32, !dbg !1605
  call void %131(ptr noundef nonnull %20, ptr noundef %133, ptr noundef %135) #8, !dbg !1606
  br label %136

136:                                              ; preds = %130, %129
  %137 = load ptr, ptr %34, align 8, !dbg !1607, !tbaa !1408
  %138 = or i64 %108, 17, !dbg !1616
  %139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %138, !dbg !1608
  call void %137(ptr noundef nonnull %139, ptr noundef nonnull %20) #8, !dbg !1609
  br i1 %16, label %140, label %144, !dbg !1610

140:                                              ; preds = %136
  %141 = load ptr, ptr %35, align 8, !dbg !1611, !tbaa !1613
  %142 = call i32 %141(ptr noundef nonnull %139) #8, !dbg !1614
  %143 = add nsw i32 %142, %126, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %143, metadata !1508, metadata !DIExpression()), !dbg !1537
  br label %144, !dbg !1615

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %143, %140 ], [ %126, %136 ], !dbg !1537
  call void @llvm.dbg.value(metadata i32 %145, metadata !1508, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i64 2, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 2, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 %145, metadata !1508, metadata !DIExpression()), !dbg !1537
  %146 = load i32, ptr %26, align 16, !dbg !1595, !tbaa !1377
  %147 = icmp eq i32 %146, 0, !dbg !1600
  br i1 %147, label %149, label %148, !dbg !1601

148:                                              ; preds = %144
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %21, i32 noundef %27, i32 noundef %2, i32 noundef 4, i32 noundef %28, i32 noundef 0) #8, !dbg !1602
  br label %155, !dbg !1602

149:                                              ; preds = %144
  %150 = load ptr, ptr %29, align 8, !dbg !1603, !tbaa !1382
  %151 = load ptr, ptr %31, align 8, !dbg !1604, !tbaa !1309
  %152 = getelementptr inbounds [16 x i16], ptr %151, i64 %32, !dbg !1604
  %153 = load ptr, ptr %33, align 8, !dbg !1605, !tbaa !1309
  %154 = getelementptr inbounds [16 x i16], ptr %153, i64 %32, !dbg !1605
  call void %150(ptr noundef nonnull %21, ptr noundef %152, ptr noundef %154) #8, !dbg !1606
  br label %155

155:                                              ; preds = %149, %148
  %156 = load ptr, ptr %34, align 8, !dbg !1607, !tbaa !1408
  %157 = or i64 %108, 18, !dbg !1616
  %158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %157, !dbg !1608
  call void %156(ptr noundef nonnull %158, ptr noundef nonnull %21) #8, !dbg !1609
  br i1 %16, label %159, label %163, !dbg !1610

159:                                              ; preds = %155
  %160 = load ptr, ptr %35, align 8, !dbg !1611, !tbaa !1613
  %161 = call i32 %160(ptr noundef nonnull %158) #8, !dbg !1614
  %162 = add nsw i32 %161, %145, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %162, metadata !1508, metadata !DIExpression()), !dbg !1537
  br label %163, !dbg !1615

163:                                              ; preds = %159, %155
  %164 = phi i32 [ %162, %159 ], [ %145, %155 ], !dbg !1537
  call void @llvm.dbg.value(metadata i32 %164, metadata !1508, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i64 3, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 3, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 %164, metadata !1508, metadata !DIExpression()), !dbg !1537
  %165 = load i32, ptr %26, align 16, !dbg !1595, !tbaa !1377
  %166 = icmp eq i32 %165, 0, !dbg !1600
  br i1 %166, label %168, label %167, !dbg !1601

167:                                              ; preds = %163
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %22, i32 noundef %27, i32 noundef %2, i32 noundef 4, i32 noundef %28, i32 noundef 0) #8, !dbg !1602
  br label %174, !dbg !1602

168:                                              ; preds = %163
  %169 = load ptr, ptr %29, align 8, !dbg !1603, !tbaa !1382
  %170 = load ptr, ptr %31, align 8, !dbg !1604, !tbaa !1309
  %171 = getelementptr inbounds [16 x i16], ptr %170, i64 %32, !dbg !1604
  %172 = load ptr, ptr %33, align 8, !dbg !1605, !tbaa !1309
  %173 = getelementptr inbounds [16 x i16], ptr %172, i64 %32, !dbg !1605
  call void %169(ptr noundef nonnull %22, ptr noundef %171, ptr noundef %173) #8, !dbg !1606
  br label %174

174:                                              ; preds = %168, %167
  %175 = load ptr, ptr %34, align 8, !dbg !1607, !tbaa !1408
  %176 = or i64 %108, 19, !dbg !1616
  %177 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %176, !dbg !1608
  call void %175(ptr noundef nonnull %177, ptr noundef nonnull %22) #8, !dbg !1609
  br i1 %16, label %178, label %182, !dbg !1610

178:                                              ; preds = %174
  %179 = load ptr, ptr %35, align 8, !dbg !1611, !tbaa !1613
  %180 = call i32 %179(ptr noundef nonnull %177) #8, !dbg !1614
  %181 = add nsw i32 %180, %164, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %181, metadata !1508, metadata !DIExpression()), !dbg !1537
  br label %182, !dbg !1615

182:                                              ; preds = %178, %174
  %183 = phi i32 [ %181, %178 ], [ %164, %174 ], !dbg !1537
  call void @llvm.dbg.value(metadata i32 %183, metadata !1508, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i64 4, metadata !1500, metadata !DIExpression()), !dbg !1525
  %184 = load i32, ptr %26, align 16, !dbg !1618, !tbaa !1377
  %185 = icmp eq i32 %184, 0, !dbg !1620
  br i1 %185, label %187, label %186, !dbg !1621

186:                                              ; preds = %182
  call void @x264_quant_dc_trellis(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %27, i32 noundef %2, i32 noundef 3, i32 noundef %28) #8, !dbg !1622
  br label %199, !dbg !1622

187:                                              ; preds = %182
  %188 = load ptr, ptr %36, align 8, !dbg !1623, !tbaa !1624
  %189 = load ptr, ptr %31, align 8, !dbg !1625, !tbaa !1309
  %190 = getelementptr inbounds [16 x i16], ptr %189, i64 %32, !dbg !1625
  %191 = load i16, ptr %190, align 2, !dbg !1625, !tbaa !1318
  %192 = lshr i16 %191, 1
  %193 = zext i16 %192 to i32
  %194 = load ptr, ptr %33, align 8, !dbg !1626, !tbaa !1309
  %195 = getelementptr inbounds [16 x i16], ptr %194, i64 %32, !dbg !1626
  %196 = load i16, ptr %195, align 2, !dbg !1626, !tbaa !1318
  %197 = zext i16 %196 to i32, !dbg !1626
  %198 = shl nuw nsw i32 %197, 1, !dbg !1627
  call void %188(ptr noundef nonnull %4, i32 noundef %193, i32 noundef %198) #8, !dbg !1628
  br label %199

199:                                              ; preds = %187, %186
  %200 = icmp slt i32 %183, 7
  %201 = select i1 %16, i1 %200, i1 false, !dbg !1629
  br i1 %201, label %215, label %202, !dbg !1629

202:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i64 0, metadata !1500, metadata !DIExpression()), !dbg !1525
  %203 = load ptr, ptr %37, align 8, !dbg !1631, !tbaa !1412
  %204 = load ptr, ptr %38, align 8, !dbg !1635, !tbaa !1309
  call void %203(ptr noundef nonnull %5, ptr noundef %204, i32 noundef %2) #8, !dbg !1636
  call void @llvm.dbg.value(metadata i64 1, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 1, metadata !1500, metadata !DIExpression()), !dbg !1525
  %205 = load ptr, ptr %37, align 8, !dbg !1631, !tbaa !1412
  %206 = load ptr, ptr %38, align 8, !dbg !1635, !tbaa !1309
  call void %205(ptr noundef nonnull %20, ptr noundef %206, i32 noundef %2) #8, !dbg !1636
  call void @llvm.dbg.value(metadata i64 2, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 2, metadata !1500, metadata !DIExpression()), !dbg !1525
  %207 = load ptr, ptr %37, align 8, !dbg !1631, !tbaa !1412
  %208 = load ptr, ptr %38, align 8, !dbg !1635, !tbaa !1309
  call void %207(ptr noundef nonnull %21, ptr noundef %208, i32 noundef %2) #8, !dbg !1636
  call void @llvm.dbg.value(metadata i64 3, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 3, metadata !1500, metadata !DIExpression()), !dbg !1525
  %209 = load ptr, ptr %37, align 8, !dbg !1631, !tbaa !1412
  %210 = load ptr, ptr %38, align 8, !dbg !1635, !tbaa !1309
  call void %209(ptr noundef nonnull %22, ptr noundef %210, i32 noundef %2) #8, !dbg !1636
  call void @llvm.dbg.value(metadata i64 4, metadata !1500, metadata !DIExpression()), !dbg !1525
  %211 = load i16, ptr %4, align 16, !dbg !1637, !tbaa !1318
  %212 = load i16, ptr %23, align 4, !dbg !1645, !tbaa !1318
  %213 = load i16, ptr %24, align 2, !dbg !1646, !tbaa !1318
  %214 = load i16, ptr %25, align 2, !dbg !1647, !tbaa !1318
  br label %228

215:                                              ; preds = %199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %121, i8 0, i64 128, i1 false), !dbg !1648
  call void @llvm.dbg.value(metadata ptr %4, metadata !171, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 8, metadata !172, metadata !DIExpression()), !dbg !1650
  %216 = load i64, ptr %4, align 16, !dbg !1653, !tbaa !1402
  %217 = icmp eq i64 %216, 0, !dbg !1655
  br i1 %217, label %218, label %220, !dbg !1656

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 1, i64 %50, !dbg !1657
  store i64 0, ptr %219, align 8, !dbg !1659
  br label %266, !dbg !1660

220:                                              ; preds = %215
  %221 = lshr i64 %216, 48, !dbg !1656
  %222 = trunc i64 %221 to i16, !dbg !1656
  %223 = lshr i64 %216, 16, !dbg !1656
  %224 = trunc i64 %223 to i16, !dbg !1656
  %225 = lshr i64 %216, 32, !dbg !1656
  %226 = trunc i64 %225 to i16, !dbg !1656
  %227 = trunc i64 %216 to i16, !dbg !1656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %5, i8 0, i64 128, i1 false), !dbg !1661
  br label %228, !dbg !1662

228:                                              ; preds = %202, %220
  %229 = phi i16 [ %214, %202 ], [ %222, %220 ], !dbg !1647
  %230 = phi i16 [ %213, %202 ], [ %224, %220 ], !dbg !1646
  %231 = phi i16 [ %212, %202 ], [ %226, %220 ], !dbg !1645
  %232 = phi i16 [ %211, %202 ], [ %227, %220 ], !dbg !1637
  %233 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 1, i64 %50, !dbg !1663
  call void @llvm.dbg.value(metadata ptr %233, metadata !1642, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata ptr %4, metadata !1643, metadata !DIExpression()), !dbg !1664
  store i16 %232, ptr %233, align 2, !dbg !1637, !tbaa !1318
  %234 = getelementptr inbounds i16, ptr %233, i64 1, !dbg !1645
  store i16 %231, ptr %234, align 2, !dbg !1645, !tbaa !1318
  %235 = getelementptr inbounds i16, ptr %233, i64 2, !dbg !1646
  store i16 %230, ptr %235, align 2, !dbg !1646, !tbaa !1318
  %236 = getelementptr inbounds i16, ptr %233, i64 3, !dbg !1647
  store i16 %229, ptr %236, align 2, !dbg !1647, !tbaa !1318
  %237 = load ptr, ptr %38, align 8, !dbg !1665, !tbaa !1309
  call void @llvm.dbg.value(metadata ptr %4, metadata !1666, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata ptr %5, metadata !1671, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata ptr %237, metadata !1672, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i32 %2, metadata !1673, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata !DIArgList(i16 %232, i16 %230), metadata !1674, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value)), !dbg !1680
  call void @llvm.dbg.value(metadata !DIArgList(i16 %231, i16 %229), metadata !1675, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value)), !dbg !1680
  call void @llvm.dbg.value(metadata !DIArgList(i16 %232, i16 %230), metadata !1676, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value)), !dbg !1680
  call void @llvm.dbg.value(metadata !DIArgList(i16 %231, i16 %229), metadata !1677, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value)), !dbg !1680
  %238 = getelementptr inbounds [4 x [4 x i32]], ptr %237, i64 %40, !dbg !1682
  %239 = load i32, ptr %238, align 4, !dbg !1682, !tbaa !1683
  call void @llvm.dbg.value(metadata i32 %239, metadata !1678, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i32 %42, metadata !1679, metadata !DIExpression()), !dbg !1680
  %240 = shl i32 %239, %44, !dbg !1684
  %241 = sext i16 %231 to i32, !dbg !1685
  call void @llvm.dbg.value(metadata !DIArgList(i32 %241, i16 %229), metadata !1675, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value)), !dbg !1680
  call void @llvm.dbg.value(metadata !DIArgList(i32 %241, i16 %229), metadata !1677, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value)), !dbg !1680
  %242 = sext i16 %229 to i32, !dbg !1686
  call void @llvm.dbg.value(metadata !DIArgList(i16 %231, i32 %242), metadata !1675, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1680
  call void @llvm.dbg.value(metadata !DIArgList(i16 %231, i32 %242), metadata !1677, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1680
  %243 = sub nsw i32 %241, %242, !dbg !1687
  call void @llvm.dbg.value(metadata i32 %243, metadata !1677, metadata !DIExpression()), !dbg !1680
  %244 = sext i16 %232 to i32, !dbg !1688
  call void @llvm.dbg.value(metadata !DIArgList(i32 %244, i16 %230), metadata !1674, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value)), !dbg !1680
  call void @llvm.dbg.value(metadata !DIArgList(i32 %244, i16 %230), metadata !1676, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value)), !dbg !1680
  %245 = sext i16 %230 to i32, !dbg !1689
  call void @llvm.dbg.value(metadata !DIArgList(i16 %232, i32 %245), metadata !1674, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1680
  call void @llvm.dbg.value(metadata !DIArgList(i16 %232, i32 %245), metadata !1676, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1680
  %246 = sub nsw i32 %244, %245, !dbg !1690
  call void @llvm.dbg.value(metadata i32 %246, metadata !1676, metadata !DIExpression()), !dbg !1680
  %247 = add nsw i32 %242, %241, !dbg !1691
  call void @llvm.dbg.value(metadata i32 %247, metadata !1675, metadata !DIExpression()), !dbg !1680
  %248 = add nsw i32 %245, %244, !dbg !1692
  call void @llvm.dbg.value(metadata i32 %248, metadata !1674, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i32 %45, metadata !1679, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i32 %240, metadata !1678, metadata !DIExpression()), !dbg !1680
  %249 = add nsw i32 %247, %248, !dbg !1693
  %250 = mul nsw i32 %240, %249, !dbg !1694
  %251 = ashr i32 %250, %46, !dbg !1695
  %252 = trunc i32 %251 to i16, !dbg !1696
  store i16 %252, ptr %5, align 16, !dbg !1697, !tbaa !1318
  %253 = sub nsw i32 %248, %247, !dbg !1698
  %254 = mul nsw i32 %240, %253, !dbg !1699
  %255 = ashr i32 %254, %46, !dbg !1700
  %256 = trunc i32 %255 to i16, !dbg !1701
  store i16 %256, ptr %20, align 16, !dbg !1702, !tbaa !1318
  %257 = add nsw i32 %243, %246, !dbg !1703
  %258 = mul nsw i32 %240, %257, !dbg !1704
  %259 = ashr i32 %258, %46, !dbg !1705
  %260 = trunc i32 %259 to i16, !dbg !1706
  store i16 %260, ptr %21, align 16, !dbg !1707, !tbaa !1318
  %261 = sub nsw i32 %246, %243, !dbg !1708
  %262 = mul nsw i32 %240, %261, !dbg !1709
  %263 = ashr i32 %262, %46, !dbg !1710
  %264 = trunc i32 %263 to i16, !dbg !1711
  store i16 %264, ptr %22, align 16, !dbg !1712, !tbaa !1318
  %265 = load ptr, ptr %47, align 8, !dbg !1713, !tbaa !1714
  call void %265(ptr noundef %55, ptr noundef nonnull %5) #8, !dbg !1715
  br label %266, !dbg !1555

266:                                              ; preds = %58, %228, %218
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #8, !dbg !1555
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %51, metadata !1501, metadata !DIExpression()), !dbg !1525
  br i1 %49, label %48, label %267, !dbg !1534, !llvm.loop !1716

267:                                              ; preds = %266
  %268 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 51, !dbg !1719
  call void @llvm.dbg.value(metadata i32 0, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 0, metadata !1500, metadata !DIExpression()), !dbg !1525
  %269 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 16, !dbg !1720
  call void @llvm.dbg.value(metadata ptr %269, metadata !171, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !1721
  %270 = load <4 x i64>, ptr %269, align 8, !dbg !1723, !tbaa !1402
  %271 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %270), !dbg !1725
  %272 = icmp ne i64 %271, 0, !dbg !1726
  call void @llvm.dbg.value(metadata i1 %272, metadata !1521, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1727
  %273 = zext i1 %272 to i8, !dbg !1728
  %274 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 9, !dbg !1729
  store i8 %273, ptr %274, align 1, !dbg !1730, !tbaa !1314
  call void @llvm.dbg.value(metadata i64 1, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 1, metadata !1500, metadata !DIExpression()), !dbg !1525
  %275 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 17, !dbg !1720
  call void @llvm.dbg.value(metadata ptr %275, metadata !171, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !1721
  %276 = load <4 x i64>, ptr %275, align 8, !dbg !1723, !tbaa !1402
  %277 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %276), !dbg !1725
  %278 = icmp ne i64 %277, 0, !dbg !1726
  call void @llvm.dbg.value(metadata i1 %278, metadata !1521, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1727
  %279 = zext i1 %278 to i8, !dbg !1728
  %280 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 10, !dbg !1729
  store i8 %279, ptr %280, align 1, !dbg !1730, !tbaa !1314
  %281 = or i64 %271, %277, !dbg !1731
  call void @llvm.dbg.value(metadata i64 2, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 2, metadata !1500, metadata !DIExpression()), !dbg !1525
  %282 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 18, !dbg !1720
  call void @llvm.dbg.value(metadata ptr %282, metadata !171, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !1721
  %283 = load <4 x i64>, ptr %282, align 8, !dbg !1723, !tbaa !1402
  %284 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %283), !dbg !1725
  %285 = icmp ne i64 %284, 0, !dbg !1726
  call void @llvm.dbg.value(metadata i1 %285, metadata !1521, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1727
  %286 = zext i1 %285 to i8, !dbg !1728
  %287 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 17, !dbg !1729
  store i8 %286, ptr %287, align 1, !dbg !1730, !tbaa !1314
  %288 = or i64 %281, %284, !dbg !1731
  call void @llvm.dbg.value(metadata i64 3, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 3, metadata !1500, metadata !DIExpression()), !dbg !1525
  %289 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 19, !dbg !1720
  call void @llvm.dbg.value(metadata ptr %289, metadata !171, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !1721
  %290 = load <4 x i64>, ptr %289, align 8, !dbg !1723, !tbaa !1402
  %291 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %290), !dbg !1725
  %292 = icmp ne i64 %291, 0, !dbg !1726
  call void @llvm.dbg.value(metadata i1 %292, metadata !1521, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1727
  %293 = zext i1 %292 to i8, !dbg !1728
  %294 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 18, !dbg !1729
  store i8 %293, ptr %294, align 1, !dbg !1730, !tbaa !1314
  %295 = or i64 %288, %291, !dbg !1731
  call void @llvm.dbg.value(metadata i64 4, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 4, metadata !1500, metadata !DIExpression()), !dbg !1525
  %296 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 20, !dbg !1720
  call void @llvm.dbg.value(metadata ptr %296, metadata !171, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !1721
  %297 = load <4 x i64>, ptr %296, align 8, !dbg !1723, !tbaa !1402
  %298 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %297), !dbg !1725
  %299 = icmp ne i64 %298, 0, !dbg !1726
  call void @llvm.dbg.value(metadata i1 %299, metadata !1521, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1727
  %300 = zext i1 %299 to i8, !dbg !1728
  %301 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 33, !dbg !1729
  store i8 %300, ptr %301, align 1, !dbg !1730, !tbaa !1314
  %302 = or i64 %295, %298, !dbg !1731
  call void @llvm.dbg.value(metadata i64 5, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 5, metadata !1500, metadata !DIExpression()), !dbg !1525
  %303 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 21, !dbg !1720
  call void @llvm.dbg.value(metadata ptr %303, metadata !171, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !1721
  %304 = load <4 x i64>, ptr %303, align 8, !dbg !1723, !tbaa !1402
  %305 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %304), !dbg !1725
  %306 = icmp ne i64 %305, 0, !dbg !1726
  call void @llvm.dbg.value(metadata i1 %306, metadata !1521, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1727
  %307 = zext i1 %306 to i8, !dbg !1728
  %308 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 34, !dbg !1729
  store i8 %307, ptr %308, align 1, !dbg !1730, !tbaa !1314
  %309 = or i64 %302, %305, !dbg !1731
  call void @llvm.dbg.value(metadata i64 6, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 6, metadata !1500, metadata !DIExpression()), !dbg !1525
  %310 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 22, !dbg !1720
  call void @llvm.dbg.value(metadata ptr %310, metadata !171, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !1721
  %311 = load <4 x i64>, ptr %310, align 8, !dbg !1723, !tbaa !1402
  %312 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %311), !dbg !1725
  %313 = icmp ne i64 %312, 0, !dbg !1726
  call void @llvm.dbg.value(metadata i1 %313, metadata !1521, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1727
  %314 = zext i1 %313 to i8, !dbg !1728
  %315 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 41, !dbg !1729
  store i8 %314, ptr %315, align 1, !dbg !1730, !tbaa !1314
  %316 = or i64 %309, %312, !dbg !1731
  call void @llvm.dbg.value(metadata i64 7, metadata !1500, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 7, metadata !1500, metadata !DIExpression()), !dbg !1525
  %317 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 23, !dbg !1720
  call void @llvm.dbg.value(metadata ptr %317, metadata !171, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !1721
  %318 = load <4 x i64>, ptr %317, align 8, !dbg !1723, !tbaa !1402
  %319 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %318), !dbg !1725
  %320 = icmp ne i64 %319, 0, !dbg !1726
  call void @llvm.dbg.value(metadata i1 %320, metadata !1521, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1727
  %321 = zext i1 %320 to i8, !dbg !1728
  %322 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 42, !dbg !1729
  store i8 %321, ptr %322, align 1, !dbg !1730, !tbaa !1314
  %323 = or i64 %316, %319, !dbg !1731
  %324 = icmp ne i64 %323, 0, !dbg !1731
  %325 = zext i1 %324 to i32, !dbg !1731
  store i32 %325, ptr %268, align 8, !dbg !1731, !tbaa !1732
  call void @llvm.dbg.value(metadata i64 8, metadata !1500, metadata !DIExpression()), !dbg !1525
  %326 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 1, !dbg !1733
  call void @llvm.dbg.value(metadata ptr %326, metadata !171, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i32 8, metadata !172, metadata !DIExpression()), !dbg !1734
  %327 = load i64, ptr %326, align 8, !dbg !1736, !tbaa !1402
  %328 = icmp ne i64 %327, 0, !dbg !1738
  %329 = zext i1 %328 to i8, !dbg !1733
  %330 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 45, !dbg !1739
  store i8 %329, ptr %330, align 1, !dbg !1740, !tbaa !1314
  %331 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 1, i64 1, !dbg !1741
  call void @llvm.dbg.value(metadata ptr %331, metadata !171, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i32 8, metadata !172, metadata !DIExpression()), !dbg !1742
  %332 = load i64, ptr %331, align 8, !dbg !1744, !tbaa !1402
  %333 = icmp ne i64 %332, 0, !dbg !1746
  %334 = zext i1 %333 to i8, !dbg !1741
  %335 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 46, !dbg !1747
  store i8 %334, ptr %335, align 1, !dbg !1748, !tbaa !1314
  br i1 %324, label %339, label %336, !dbg !1749

336:                                              ; preds = %267
  %337 = or i64 %332, %327, !dbg !1750
  %338 = icmp eq i64 %337, 0, !dbg !1750
  br i1 %338, label %341, label %339, !dbg !1753

339:                                              ; preds = %336, %267
  %340 = phi i32 [ 2, %267 ], [ 1, %336 ]
  store i32 %340, ptr %268, align 8, !dbg !1754, !tbaa !1732
  br label %341, !dbg !1755

341:                                              ; preds = %339, %336
  ret void, !dbg !1755
}

declare !dbg !1756 void @x264_quant_4x4_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !1761 void @x264_quant_dc_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_8x8_chroma(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1764 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1768, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i32 %1, metadata !1769, metadata !DIExpression()), !dbg !1771
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !1772
  %4 = load ptr, ptr %3, align 8, !dbg !1772, !tbaa !1773
  %5 = getelementptr inbounds %struct.x264_frame_t, ptr %4, i64 0, i32 10, i64 1, !dbg !1774
  %6 = load i32, ptr %5, align 4, !dbg !1774, !tbaa !1683
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 16, !dbg !1775
  %8 = load i32, ptr %7, align 16, !dbg !1775, !tbaa !1776
  %9 = shl i32 %6, %8, !dbg !1777
  call void @llvm.dbg.value(metadata i32 %9, metadata !1770, metadata !DIExpression()), !dbg !1771
  switch i32 %1, label %40 [
    i32 2, label %10
    i32 1, label %26
  ], !dbg !1778

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, i64 3, !dbg !1779
  %12 = load ptr, ptr %11, align 8, !dbg !1779, !tbaa !1309
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 1, !dbg !1782
  %14 = load ptr, ptr %13, align 8, !dbg !1782, !tbaa !1309
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13, i64 1, !dbg !1783
  %16 = load ptr, ptr %15, align 8, !dbg !1783, !tbaa !1309
  %17 = sext i32 %9 to i64, !dbg !1784
  %18 = sub nsw i64 0, %17, !dbg !1784
  %19 = getelementptr inbounds i8, ptr %16, i64 %18, !dbg !1784
  tail call void %12(ptr noundef %14, i32 noundef 32, ptr noundef %19, i32 noundef %9, i32 noundef 8) #8, !dbg !1779
  %20 = load ptr, ptr %11, align 8, !dbg !1785, !tbaa !1309
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 2, !dbg !1786
  %22 = load ptr, ptr %21, align 8, !dbg !1786, !tbaa !1309
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13, i64 2, !dbg !1787
  %24 = load ptr, ptr %23, align 16, !dbg !1787, !tbaa !1309
  %25 = getelementptr inbounds i8, ptr %24, i64 %18, !dbg !1788
  tail call void %20(ptr noundef %22, i32 noundef 32, ptr noundef %25, i32 noundef %9, i32 noundef 8) #8, !dbg !1785
  br label %49, !dbg !1789

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, i64 3, !dbg !1790
  %28 = load ptr, ptr %27, align 8, !dbg !1790, !tbaa !1309
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 1, !dbg !1793
  %30 = load ptr, ptr %29, align 8, !dbg !1793, !tbaa !1309
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13, i64 1, !dbg !1794
  %32 = load ptr, ptr %31, align 8, !dbg !1794, !tbaa !1309
  %33 = getelementptr inbounds i8, ptr %32, i64 -1, !dbg !1795
  tail call void %28(ptr noundef %30, i32 noundef 32, ptr noundef nonnull %33, i32 noundef %9, i32 noundef 8) #8, !dbg !1790
  %34 = load ptr, ptr %27, align 8, !dbg !1796, !tbaa !1309
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 2, !dbg !1797
  %36 = load ptr, ptr %35, align 8, !dbg !1797, !tbaa !1309
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13, i64 2, !dbg !1798
  %38 = load ptr, ptr %37, align 16, !dbg !1798, !tbaa !1309
  %39 = getelementptr inbounds i8, ptr %38, i64 -1, !dbg !1799
  tail call void %34(ptr noundef %36, i32 noundef 32, ptr noundef nonnull %39, i32 noundef %9, i32 noundef 8) #8, !dbg !1796
  br label %49, !dbg !1800

40:                                               ; preds = %2
  %41 = sext i32 %1 to i64, !dbg !1801
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %41, !dbg !1801
  %43 = load ptr, ptr %42, align 8, !dbg !1801, !tbaa !1309
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 1, !dbg !1803
  %45 = load ptr, ptr %44, align 8, !dbg !1803, !tbaa !1309
  tail call void %43(ptr noundef %45) #8, !dbg !1801
  %46 = load ptr, ptr %42, align 8, !dbg !1804, !tbaa !1309
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 2, !dbg !1805
  %48 = load ptr, ptr %47, align 8, !dbg !1805, !tbaa !1309
  tail call void %46(ptr noundef %48) #8, !dbg !1804
  br label %49

49:                                               ; preds = %26, %40, %10
  ret void, !dbg !1806
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_4x4(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !1807 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1811, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata ptr %1, metadata !1812, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i32 %2, metadata !1813, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i32 %3, metadata !1814, metadata !DIExpression()), !dbg !1817
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !1818
  %6 = load ptr, ptr %5, align 8, !dbg !1818, !tbaa !1773
  %7 = getelementptr inbounds %struct.x264_frame_t, ptr %6, i64 0, i32 10, !dbg !1819
  %8 = load i32, ptr %7, align 8, !dbg !1820, !tbaa !1683
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 16, !dbg !1821
  %10 = load i32, ptr %9, align 16, !dbg !1821, !tbaa !1776
  %11 = shl i32 %8, %10, !dbg !1822
  call void @llvm.dbg.value(metadata i32 %11, metadata !1815, metadata !DIExpression()), !dbg !1817
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13, !dbg !1823
  %13 = load ptr, ptr %12, align 16, !dbg !1824, !tbaa !1309
  %14 = sext i32 %2 to i64, !dbg !1825
  %15 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %14, !dbg !1825
  %16 = load i8, ptr %15, align 1, !dbg !1825, !tbaa !1314
  %17 = zext i8 %16 to i64, !dbg !1825
  %18 = shl nuw nsw i64 %17, 2, !dbg !1826
  %19 = getelementptr inbounds i8, ptr %13, i64 %18, !dbg !1827
  %20 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %14, !dbg !1828
  %21 = load i8, ptr %20, align 1, !dbg !1828, !tbaa !1314
  %22 = zext i8 %21 to i32, !dbg !1828
  %23 = shl i32 %11, 2, !dbg !1829
  %24 = mul i32 %23, %22, !dbg !1830
  %25 = sext i32 %24 to i64, !dbg !1831
  %26 = getelementptr inbounds i8, ptr %19, i64 %25, !dbg !1831
  call void @llvm.dbg.value(metadata ptr %26, metadata !1816, metadata !DIExpression()), !dbg !1817
  switch i32 %3, label %37 [
    i32 0, label %27
    i32 1, label %33
  ], !dbg !1832

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, i64 6, !dbg !1833
  %29 = load ptr, ptr %28, align 8, !dbg !1833, !tbaa !1309
  %30 = sext i32 %11 to i64, !dbg !1835
  %31 = sub nsw i64 0, %30, !dbg !1835
  %32 = getelementptr inbounds i8, ptr %26, i64 %31, !dbg !1835
  tail call void %29(ptr noundef %1, i32 noundef 32, ptr noundef %32, i32 noundef %11, i32 noundef 4) #8, !dbg !1833
  br label %41, !dbg !1833

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, i64 6, !dbg !1836
  %35 = load ptr, ptr %34, align 8, !dbg !1836, !tbaa !1309
  %36 = getelementptr inbounds i8, ptr %26, i64 -1, !dbg !1838
  tail call void %35(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %36, i32 noundef %11, i32 noundef 4) #8, !dbg !1836
  br label %41, !dbg !1836

37:                                               ; preds = %4
  %38 = sext i32 %3 to i64, !dbg !1839
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 51, i64 %38, !dbg !1839
  %40 = load ptr, ptr %39, align 8, !dbg !1839, !tbaa !1309
  tail call void %40(ptr noundef %1) #8, !dbg !1839
  br label %41

41:                                               ; preds = %33, %37, %27
  ret void, !dbg !1840
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_8x8(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !1841 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1845, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %1, metadata !1846, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 %2, metadata !1847, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 %3, metadata !1848, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %4, metadata !1849, metadata !DIExpression()), !dbg !1852
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !1853
  %7 = load ptr, ptr %6, align 8, !dbg !1853, !tbaa !1773
  %8 = getelementptr inbounds %struct.x264_frame_t, ptr %7, i64 0, i32 10, !dbg !1854
  %9 = load i32, ptr %8, align 8, !dbg !1855, !tbaa !1683
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 16, !dbg !1856
  %11 = load i32, ptr %10, align 16, !dbg !1856, !tbaa !1776
  %12 = shl i32 %9, %11, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %12, metadata !1850, metadata !DIExpression()), !dbg !1852
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13, !dbg !1858
  %14 = load ptr, ptr %13, align 16, !dbg !1859, !tbaa !1309
  %15 = shl i32 %2, 3, !dbg !1860
  %16 = and i32 %15, 8, !dbg !1860
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %14, i64 %17, !dbg !1861
  %19 = shl nsw i32 %2, 2, !dbg !1862
  %20 = and i32 %19, -8, !dbg !1862
  %21 = mul nsw i32 %12, %20, !dbg !1863
  %22 = sext i32 %21 to i64, !dbg !1864
  %23 = getelementptr inbounds i8, ptr %18, i64 %22, !dbg !1864
  call void @llvm.dbg.value(metadata ptr %23, metadata !1851, metadata !DIExpression()), !dbg !1852
  switch i32 %3, label %34 [
    i32 0, label %24
    i32 1, label %30
  ], !dbg !1865

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, i64 3, !dbg !1866
  %26 = load ptr, ptr %25, align 8, !dbg !1866, !tbaa !1309
  %27 = sext i32 %12 to i64, !dbg !1868
  %28 = sub nsw i64 0, %27, !dbg !1868
  %29 = getelementptr inbounds i8, ptr %23, i64 %28, !dbg !1868
  tail call void %26(ptr noundef %1, i32 noundef 32, ptr noundef %29, i32 noundef %12, i32 noundef 8) #8, !dbg !1866
  br label %38, !dbg !1866

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, i64 3, !dbg !1869
  %32 = load ptr, ptr %31, align 8, !dbg !1869, !tbaa !1309
  %33 = getelementptr inbounds i8, ptr %23, i64 -1, !dbg !1871
  tail call void %32(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %33, i32 noundef %12, i32 noundef 8) #8, !dbg !1869
  br label %38, !dbg !1869

34:                                               ; preds = %5
  %35 = sext i32 %3 to i64, !dbg !1872
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 50, i64 %35, !dbg !1872
  %37 = load ptr, ptr %36, align 8, !dbg !1872, !tbaa !1309
  tail call void %37(ptr noundef %1, ptr noundef %4) #8, !dbg !1872
  br label %38

38:                                               ; preds = %30, %34, %24
  ret void, !dbg !1873
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_16x16(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1874 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1876, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i32 %1, metadata !1877, metadata !DIExpression()), !dbg !1879
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !1880
  %4 = load ptr, ptr %3, align 8, !dbg !1880, !tbaa !1773
  %5 = getelementptr inbounds %struct.x264_frame_t, ptr %4, i64 0, i32 10, !dbg !1881
  %6 = load i32, ptr %5, align 8, !dbg !1882, !tbaa !1683
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 16, !dbg !1883
  %8 = load i32, ptr %7, align 16, !dbg !1883, !tbaa !1776
  %9 = shl i32 %6, %8, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %9, metadata !1878, metadata !DIExpression()), !dbg !1879
  switch i32 %1, label %28 [
    i32 0, label %10
    i32 1, label %20
  ], !dbg !1885

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, !dbg !1886
  %12 = load ptr, ptr %11, align 8, !dbg !1888, !tbaa !1309
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !1889
  %14 = load ptr, ptr %13, align 8, !dbg !1890, !tbaa !1309
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13, !dbg !1891
  %16 = load ptr, ptr %15, align 16, !dbg !1892, !tbaa !1309
  %17 = sext i32 %9 to i64, !dbg !1893
  %18 = sub nsw i64 0, %17, !dbg !1893
  %19 = getelementptr inbounds i8, ptr %16, i64 %18, !dbg !1893
  tail call void %12(ptr noundef %14, i32 noundef 32, ptr noundef %19, i32 noundef %9, i32 noundef 16) #8, !dbg !1888
  br label %34, !dbg !1888

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 5, !dbg !1894
  %22 = load ptr, ptr %21, align 16, !dbg !1894, !tbaa !1896
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !1897
  %24 = load ptr, ptr %23, align 8, !dbg !1898, !tbaa !1309
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13, !dbg !1899
  %26 = load ptr, ptr %25, align 16, !dbg !1900, !tbaa !1309
  %27 = getelementptr inbounds i8, ptr %26, i64 -1, !dbg !1901
  tail call void %22(ptr noundef %24, i32 noundef 32, ptr noundef nonnull %27, i32 noundef %9, i32 noundef 16) #8, !dbg !1902
  br label %34, !dbg !1902

28:                                               ; preds = %2
  %29 = sext i32 %1 to i64, !dbg !1903
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 48, i64 %29, !dbg !1903
  %31 = load ptr, ptr %30, align 8, !dbg !1903, !tbaa !1309
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !1904
  %33 = load ptr, ptr %32, align 8, !dbg !1905, !tbaa !1309
  tail call void %31(ptr noundef %33) #8, !dbg !1903
  br label %34

34:                                               ; preds = %20, %28, %10
  ret void, !dbg !1906
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_encode(ptr noundef %0) local_unnamed_addr #0 !dbg !1907 {
  %2 = alloca [16 x [4 x [4 x i16]]], align 16
  %3 = alloca [4 x [4 x i16]], align 16
  %4 = alloca [4 x i8], align 4
  %5 = alloca [33 x i8], align 16
  %6 = alloca [4 x [8 x [8 x i16]]], align 16
  %7 = alloca [16 x [4 x [4 x i16]]], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1911, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 0, metadata !1912, metadata !DIExpression()), !dbg !1991
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 58, !dbg !1992
  %9 = load i32, ptr %8, align 16, !dbg !1992, !tbaa !1993
  call void @llvm.dbg.value(metadata i32 %9, metadata !1913, metadata !DIExpression()), !dbg !1991
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !1994
  %11 = load i32, ptr %10, align 8, !dbg !1994, !tbaa !1529
  %12 = icmp eq i32 %11, 1, !dbg !1995
  br i1 %12, label %17, label %13, !dbg !1996

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 16, !dbg !1997
  %15 = load i32, ptr %14, align 8, !dbg !1997, !tbaa !1533
  %16 = icmp ne i32 %15, 0, !dbg !1996
  br label %17, !dbg !1996

17:                                               ; preds = %13, %1
  %18 = phi i1 [ true, %1 ], [ %16, %13 ]
  %19 = freeze i1 %18
  call void @llvm.dbg.value(metadata i1 %18, metadata !1914, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i32 0, metadata !1915, metadata !DIExpression()), !dbg !1991
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8, !dbg !1998
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1919, metadata !DIExpression()), !dbg !1999
  store i32 16843009, ptr %4, align 4, !dbg !1999
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 7, !dbg !2000
  %21 = load i32, ptr %20, align 4, !dbg !2000, !tbaa !2002
  %22 = icmp eq i32 %21, 0, !dbg !2003
  br i1 %22, label %44, label %23, !dbg !2004

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !2005
  %25 = load i32, ptr %24, align 8, !dbg !2005, !tbaa !2006
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 3, !dbg !2007
  %27 = load i32, ptr %26, align 4, !dbg !2007, !tbaa !2008
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 1, !dbg !2009
  %29 = load i32, ptr %28, align 4, !dbg !2009, !tbaa !2010
  %30 = add nsw i32 %29, %27, !dbg !2011
  %31 = icmp eq i32 %25, %30, !dbg !2012
  br i1 %31, label %32, label %44, !dbg !2013

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 32, !dbg !2014
  %34 = load ptr, ptr %33, align 16, !dbg !2014, !tbaa !2015
  %35 = sext i32 %27 to i64, !dbg !2014
  %36 = getelementptr inbounds i8, ptr %34, i64 %35, !dbg !2014
  %37 = load i8, ptr %36, align 1, !dbg !2014, !tbaa !1314
  switch i8 %37, label %44 [
    i8 6, label %38
    i8 18, label %38
  ], !dbg !2014

38:                                               ; preds = %32, %32
  call void @llvm.dbg.value(metadata i32 1, metadata !1915, metadata !DIExpression()), !dbg !1991
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 46, !dbg !2016
  %40 = load i32, ptr %39, align 8, !dbg !2016, !tbaa !2019
  switch i32 %40, label %44 [
    i32 6, label %42
    i32 18, label %41
  ], !dbg !2016

41:                                               ; preds = %38
  br label %42, !dbg !2020

42:                                               ; preds = %38, %41
  %43 = phi i32 [ 7, %41 ], [ 4, %38 ]
  store i32 %43, ptr %39, align 8, !dbg !2024, !tbaa !2019
  br label %44, !dbg !2025

44:                                               ; preds = %42, %38, %32, %23, %17
  %45 = phi i1 [ true, %23 ], [ true, %17 ], [ true, %32 ], [ false, %38 ], [ false, %42 ], !dbg !1991
  call void @llvm.dbg.value(metadata i32 poison, metadata !1915, metadata !DIExpression()), !dbg !1991
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 46, !dbg !2025
  %47 = load i32, ptr %46, align 8, !dbg !2025, !tbaa !2019
  switch i32 %47, label %589 [
    i32 6, label %48
    i32 18, label %105
    i32 2, label %120
    i32 1, label %382
    i32 0, label %490
  ], !dbg !2027

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata ptr %0, metadata !2028, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i16 poison, metadata !2036, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2043
  call void @llvm.dbg.value(metadata i32 poison, metadata !2041, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i32 poison, metadata !2042, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i32 poison, metadata !2031, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i16 poison, metadata !2036, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata i32 poison, metadata !2041, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 poison, metadata !2042, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 poison, metadata !2032, metadata !DIExpression()), !dbg !2033
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 55, !dbg !2047
  %50 = load i32, ptr %49, align 8, !dbg !2047, !tbaa !2049
  %51 = icmp eq i32 %50, 0, !dbg !2050
  br i1 %51, label %52, label %95, !dbg !2051

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 17, i64 1, !dbg !2052
  %54 = load i32, ptr %53, align 4, !dbg !2052, !tbaa !1683
  call void @llvm.dbg.value(metadata i32 %54, metadata !2041, metadata !DIExpression()), !dbg !2045
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 0, i64 12, i64 1, !dbg !2053
  %56 = load i16, ptr %55, align 2, !dbg !2053, !tbaa !1318
  call void @llvm.dbg.value(metadata i16 %56, metadata !2036, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2045
  %57 = sext i16 %56 to i32, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %57, metadata !2036, metadata !DIExpression()), !dbg !2045
  %58 = icmp sgt i32 %54, %57, !dbg !2054
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 18, i64 1, !dbg !2055
  %60 = load i32, ptr %59, align 4, !dbg !2055, !tbaa !1683
  call void @llvm.dbg.value(metadata i32 %60, metadata !2042, metadata !DIExpression()), !dbg !2045
  %61 = tail call i32 @llvm.smin.i32(i32 %57, i32 %60), !dbg !2056
  %62 = select i1 %58, i32 %54, i32 %61, !dbg !2056
  call void @llvm.dbg.value(metadata i32 %62, metadata !2032, metadata !DIExpression()), !dbg !2033
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 17, !dbg !2057
  %64 = load i32, ptr %63, align 4, !dbg !2058, !tbaa !1683
  call void @llvm.dbg.value(metadata i32 %64, metadata !2041, metadata !DIExpression()), !dbg !2043
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 0, i64 12, !dbg !2059
  %66 = load i16, ptr %65, align 4, !dbg !2059, !tbaa !1318
  call void @llvm.dbg.value(metadata i16 %66, metadata !2036, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2043
  %67 = sext i16 %66 to i32, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %67, metadata !2036, metadata !DIExpression()), !dbg !2043
  %68 = icmp sgt i32 %64, %67, !dbg !2060
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 18, !dbg !2061
  %70 = load i32, ptr %69, align 4, !dbg !2062, !tbaa !1683
  call void @llvm.dbg.value(metadata i32 %70, metadata !2042, metadata !DIExpression()), !dbg !2043
  %71 = tail call i32 @llvm.smin.i32(i32 %67, i32 %70), !dbg !2063
  %72 = select i1 %68, i32 %64, i32 %71, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %72, metadata !2031, metadata !DIExpression()), !dbg !2033
  %73 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, !dbg !2064
  %74 = load ptr, ptr %73, align 16, !dbg !2066, !tbaa !2067
  %75 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !2068
  %76 = load ptr, ptr %75, align 8, !dbg !2069, !tbaa !1309
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 16, !dbg !2070
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 18, !dbg !2071
  %79 = load i32, ptr %78, align 8, !dbg !2072, !tbaa !1683
  tail call void %74(ptr noundef %76, i32 noundef 32, ptr noundef nonnull %77, i32 noundef %79, i32 noundef %72, i32 noundef %62, i32 noundef 16, i32 noundef 16) #8, !dbg !2073
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 2, !dbg !2074
  %81 = load ptr, ptr %80, align 16, !dbg !2074, !tbaa !2075
  %82 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 1, !dbg !2076
  %83 = load ptr, ptr %82, align 8, !dbg !2076, !tbaa !1309
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 16, i64 0, i64 0, i64 4, !dbg !2077
  %85 = load ptr, ptr %84, align 8, !dbg !2077, !tbaa !1309
  %86 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 18, i64 1, !dbg !2078
  %87 = load i32, ptr %86, align 4, !dbg !2078, !tbaa !1683
  tail call void %81(ptr noundef %83, i32 noundef 32, ptr noundef %85, i32 noundef %87, i32 noundef %72, i32 noundef %62, i32 noundef 8, i32 noundef 8) #8, !dbg !2079
  %88 = load ptr, ptr %80, align 16, !dbg !2080, !tbaa !2075
  %89 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 2, !dbg !2081
  %90 = load ptr, ptr %89, align 8, !dbg !2081, !tbaa !1309
  %91 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 16, i64 0, i64 0, i64 5, !dbg !2082
  %92 = load ptr, ptr %91, align 8, !dbg !2082, !tbaa !1309
  %93 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 18, i64 2, !dbg !2083
  %94 = load i32, ptr %93, align 8, !dbg !2083, !tbaa !1683
  tail call void %88(ptr noundef %90, i32 noundef 32, ptr noundef %92, i32 noundef %94, i32 noundef %72, i32 noundef %62, i32 noundef 8, i32 noundef 8) #8, !dbg !2084
  br label %95, !dbg !2085

95:                                               ; preds = %48, %52
  call void @llvm.dbg.value(metadata ptr %0, metadata !2086, metadata !DIExpression()), !dbg !2089
  %96 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 50, !dbg !2091
  store i32 0, ptr %96, align 4, !dbg !2092, !tbaa !2093
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 51, !dbg !2094
  store i32 0, ptr %97, align 8, !dbg !2095, !tbaa !1732
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, !dbg !2096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %98, i8 0, i64 48, i1 false), !dbg !2097
  %99 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 34, !dbg !2098
  %100 = load ptr, ptr %99, align 16, !dbg !2098, !tbaa !2099
  %101 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !2100
  %102 = load i32, ptr %101, align 8, !dbg !2100, !tbaa !2006
  %103 = sext i32 %102 to i64, !dbg !2101
  %104 = getelementptr inbounds i16, ptr %100, i64 %103, !dbg !2101
  store i16 0, ptr %104, align 2, !dbg !2102, !tbaa !1318
  br label %1721, !dbg !2103

105:                                              ; preds = %44
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 55, !dbg !2104
  %107 = load i32, ptr %106, align 8, !dbg !2104, !tbaa !2049
  %108 = icmp eq i32 %107, 0, !dbg !2108
  br i1 %108, label %109, label %110, !dbg !2109

109:                                              ; preds = %105
  tail call void @x264_mb_mc(ptr noundef nonnull %0) #8, !dbg !2110
  br label %110, !dbg !2110

110:                                              ; preds = %109, %105
  call void @llvm.dbg.value(metadata ptr %0, metadata !2086, metadata !DIExpression()), !dbg !2111
  %111 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 50, !dbg !2113
  store i32 0, ptr %111, align 4, !dbg !2114, !tbaa !2093
  %112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 51, !dbg !2115
  store i32 0, ptr %112, align 8, !dbg !2116, !tbaa !1732
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, !dbg !2117
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %113, i8 0, i64 48, i1 false), !dbg !2118
  %114 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 34, !dbg !2119
  %115 = load ptr, ptr %114, align 16, !dbg !2119, !tbaa !2099
  %116 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !2120
  %117 = load i32, ptr %116, align 8, !dbg !2120, !tbaa !2006
  %118 = sext i32 %117 to i64, !dbg !2121
  %119 = getelementptr inbounds i16, ptr %115, i64 %118, !dbg !2121
  store i16 0, ptr %119, align 2, !dbg !2122, !tbaa !1318
  br label %1721, !dbg !2123

120:                                              ; preds = %44
  %121 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 52, !dbg !2124
  %122 = load i32, ptr %121, align 4, !dbg !2124, !tbaa !2125
  call void @llvm.dbg.value(metadata i32 %122, metadata !1921, metadata !DIExpression()), !dbg !2126
  %123 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 49, !dbg !2127
  store i32 0, ptr %123, align 16, !dbg !2128, !tbaa !2129
  %124 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 63, !dbg !2130
  %125 = load i32, ptr %124, align 4, !dbg !2130, !tbaa !1323
  %126 = icmp eq i32 %125, 0, !dbg !2132
  br i1 %126, label %159, label %127, !dbg !2133

127:                                              ; preds = %120
  call void @llvm.dbg.value(metadata ptr %0, metadata !1876, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %122, metadata !1877, metadata !DIExpression()), !dbg !2134
  %128 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !2136
  %129 = load ptr, ptr %128, align 8, !dbg !2136, !tbaa !1773
  %130 = getelementptr inbounds %struct.x264_frame_t, ptr %129, i64 0, i32 10, !dbg !2137
  %131 = load i32, ptr %130, align 8, !dbg !2138, !tbaa !1683
  %132 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 16, !dbg !2139
  %133 = load i32, ptr %132, align 16, !dbg !2139, !tbaa !1776
  %134 = shl i32 %131, %133, !dbg !2140
  call void @llvm.dbg.value(metadata i32 %134, metadata !1878, metadata !DIExpression()), !dbg !2134
  switch i32 %122, label %153 [
    i32 0, label %135
    i32 1, label %145
  ], !dbg !2141

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, !dbg !2142
  %137 = load ptr, ptr %136, align 8, !dbg !2143, !tbaa !1309
  %138 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !2144
  %139 = load ptr, ptr %138, align 8, !dbg !2145, !tbaa !1309
  %140 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13, !dbg !2146
  %141 = load ptr, ptr %140, align 16, !dbg !2147, !tbaa !1309
  %142 = sext i32 %134 to i64, !dbg !2148
  %143 = sub nsw i64 0, %142, !dbg !2148
  %144 = getelementptr inbounds i8, ptr %141, i64 %143, !dbg !2148
  tail call void %137(ptr noundef %139, i32 noundef 32, ptr noundef %144, i32 noundef %134, i32 noundef 16) #8, !dbg !2143
  br label %165, !dbg !2143

145:                                              ; preds = %127
  %146 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 5, !dbg !2149
  %147 = load ptr, ptr %146, align 16, !dbg !2149, !tbaa !1896
  %148 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !2150
  %149 = load ptr, ptr %148, align 8, !dbg !2151, !tbaa !1309
  %150 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13, !dbg !2152
  %151 = load ptr, ptr %150, align 16, !dbg !2153, !tbaa !1309
  %152 = getelementptr inbounds i8, ptr %151, i64 -1, !dbg !2154
  tail call void %147(ptr noundef %149, i32 noundef 32, ptr noundef nonnull %152, i32 noundef %134, i32 noundef 16) #8, !dbg !2155
  br label %165, !dbg !2155

153:                                              ; preds = %127
  %154 = sext i32 %122 to i64, !dbg !2156
  %155 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 48, i64 %154, !dbg !2156
  %156 = load ptr, ptr %155, align 8, !dbg !2156, !tbaa !1309
  %157 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !2157
  %158 = load ptr, ptr %157, align 8, !dbg !2158, !tbaa !1309
  tail call void %156(ptr noundef %158) #8, !dbg !2156
  br label %165

159:                                              ; preds = %120
  %160 = sext i32 %122 to i64, !dbg !2159
  %161 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 48, i64 %160, !dbg !2159
  %162 = load ptr, ptr %161, align 8, !dbg !2159, !tbaa !1309
  %163 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !2160
  %164 = load ptr, ptr %163, align 8, !dbg !2161, !tbaa !1309
  tail call void %162(ptr noundef %164) #8, !dbg !2159
  br label %165

165:                                              ; preds = %153, %145, %135, %159
  call void @llvm.dbg.value(metadata ptr %0, metadata !2162, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i32 %9, metadata !2165, metadata !DIExpression()), !dbg !2178
  %166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, !dbg !2180
  %167 = load ptr, ptr %166, align 8, !dbg !2181, !tbaa !1309
  call void @llvm.dbg.value(metadata ptr %167, metadata !2166, metadata !DIExpression()), !dbg !2178
  %168 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !2182
  %169 = load ptr, ptr %168, align 8, !dbg !2183, !tbaa !1309
  call void @llvm.dbg.value(metadata ptr %169, metadata !2167, metadata !DIExpression()), !dbg !2178
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #8, !dbg !2184
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2168, metadata !DIExpression()), !dbg !2184
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8, !dbg !2185
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2169, metadata !DIExpression()), !dbg !2185
  %170 = load i32, ptr %124, align 4, !dbg !2186, !tbaa !1323
  %171 = icmp eq i32 %170, 0, !dbg !2187
  br i1 %171, label %270, label %172, !dbg !2188

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 0, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 0, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %174 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %175 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 0, !dbg !2191
  tail call void %174(ptr noundef nonnull %175, ptr noundef %167, ptr noundef %169) #8, !dbg !2192
  %176 = load i16, ptr %175, align 16, !dbg !2193, !tbaa !1318
  store i16 %176, ptr %3, align 16, !dbg !2194, !tbaa !1318
  store i16 0, ptr %175, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 1, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 4, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 4, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %177 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %178 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 1, !dbg !2191
  %179 = getelementptr inbounds i8, ptr %167, i64 4, !dbg !2196
  %180 = getelementptr inbounds i8, ptr %169, i64 4, !dbg !2197
  tail call void %177(ptr noundef nonnull %178, ptr noundef nonnull %179, ptr noundef nonnull %180) #8, !dbg !2192
  %181 = load i16, ptr %178, align 16, !dbg !2193, !tbaa !1318
  %182 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 4, !dbg !2198
  store i16 %181, ptr %182, align 8, !dbg !2194, !tbaa !1318
  store i16 0, ptr %178, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 2, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 64, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 128, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %183 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %184 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 2, !dbg !2191
  %185 = getelementptr inbounds i8, ptr %167, i64 64, !dbg !2196
  %186 = getelementptr inbounds i8, ptr %169, i64 128, !dbg !2197
  tail call void %183(ptr noundef nonnull %184, ptr noundef nonnull %185, ptr noundef nonnull %186) #8, !dbg !2192
  %187 = load i16, ptr %184, align 16, !dbg !2193, !tbaa !1318
  %188 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 1, !dbg !2198
  store i16 %187, ptr %188, align 2, !dbg !2194, !tbaa !1318
  store i16 0, ptr %184, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 3, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 68, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 132, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %189 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %190 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 3, !dbg !2191
  %191 = getelementptr inbounds i8, ptr %167, i64 68, !dbg !2196
  %192 = getelementptr inbounds i8, ptr %169, i64 132, !dbg !2197
  tail call void %189(ptr noundef nonnull %190, ptr noundef nonnull %191, ptr noundef nonnull %192) #8, !dbg !2192
  %193 = load i16, ptr %190, align 16, !dbg !2193, !tbaa !1318
  %194 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 5, !dbg !2198
  store i16 %193, ptr %194, align 2, !dbg !2194, !tbaa !1318
  store i16 0, ptr %190, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 4, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 8, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 8, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %195 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %196 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 4, !dbg !2191
  %197 = getelementptr inbounds i8, ptr %167, i64 8, !dbg !2196
  %198 = getelementptr inbounds i8, ptr %169, i64 8, !dbg !2197
  tail call void %195(ptr noundef nonnull %196, ptr noundef nonnull %197, ptr noundef nonnull %198) #8, !dbg !2192
  %199 = load i16, ptr %196, align 16, !dbg !2193, !tbaa !1318
  %200 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 8, !dbg !2198
  store i16 %199, ptr %200, align 16, !dbg !2194, !tbaa !1318
  store i16 0, ptr %196, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 5, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 12, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 12, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %201 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %202 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 5, !dbg !2191
  %203 = getelementptr inbounds i8, ptr %167, i64 12, !dbg !2196
  %204 = getelementptr inbounds i8, ptr %169, i64 12, !dbg !2197
  tail call void %201(ptr noundef nonnull %202, ptr noundef nonnull %203, ptr noundef nonnull %204) #8, !dbg !2192
  %205 = load i16, ptr %202, align 16, !dbg !2193, !tbaa !1318
  %206 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 12, !dbg !2198
  store i16 %205, ptr %206, align 8, !dbg !2194, !tbaa !1318
  store i16 0, ptr %202, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 6, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 72, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 136, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %207 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %208 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 6, !dbg !2191
  %209 = getelementptr inbounds i8, ptr %167, i64 72, !dbg !2196
  %210 = getelementptr inbounds i8, ptr %169, i64 136, !dbg !2197
  tail call void %207(ptr noundef nonnull %208, ptr noundef nonnull %209, ptr noundef nonnull %210) #8, !dbg !2192
  %211 = load i16, ptr %208, align 16, !dbg !2193, !tbaa !1318
  %212 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 9, !dbg !2198
  store i16 %211, ptr %212, align 2, !dbg !2194, !tbaa !1318
  store i16 0, ptr %208, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 7, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 76, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 140, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %213 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %214 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 7, !dbg !2191
  %215 = getelementptr inbounds i8, ptr %167, i64 76, !dbg !2196
  %216 = getelementptr inbounds i8, ptr %169, i64 140, !dbg !2197
  tail call void %213(ptr noundef nonnull %214, ptr noundef nonnull %215, ptr noundef nonnull %216) #8, !dbg !2192
  %217 = load i16, ptr %214, align 16, !dbg !2193, !tbaa !1318
  %218 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 13, !dbg !2198
  store i16 %217, ptr %218, align 2, !dbg !2194, !tbaa !1318
  store i16 0, ptr %214, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 8, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 -128, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 256, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %219 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %220 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 8, !dbg !2191
  %221 = getelementptr inbounds i8, ptr %167, i64 128, !dbg !2196
  %222 = getelementptr inbounds i8, ptr %169, i64 256, !dbg !2197
  tail call void %219(ptr noundef nonnull %220, ptr noundef nonnull %221, ptr noundef nonnull %222) #8, !dbg !2192
  %223 = load i16, ptr %220, align 16, !dbg !2193, !tbaa !1318
  %224 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 2, !dbg !2198
  store i16 %223, ptr %224, align 4, !dbg !2194, !tbaa !1318
  store i16 0, ptr %220, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 9, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 -124, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 260, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %225 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %226 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 9, !dbg !2191
  %227 = getelementptr inbounds i8, ptr %167, i64 132, !dbg !2196
  %228 = getelementptr inbounds i8, ptr %169, i64 260, !dbg !2197
  tail call void %225(ptr noundef nonnull %226, ptr noundef nonnull %227, ptr noundef nonnull %228) #8, !dbg !2192
  %229 = load i16, ptr %226, align 16, !dbg !2193, !tbaa !1318
  %230 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 6, !dbg !2198
  store i16 %229, ptr %230, align 4, !dbg !2194, !tbaa !1318
  store i16 0, ptr %226, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 10, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 -64, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 384, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %231 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %232 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 10, !dbg !2191
  %233 = getelementptr inbounds i8, ptr %167, i64 192, !dbg !2196
  %234 = getelementptr inbounds i8, ptr %169, i64 384, !dbg !2197
  tail call void %231(ptr noundef nonnull %232, ptr noundef nonnull %233, ptr noundef nonnull %234) #8, !dbg !2192
  %235 = load i16, ptr %232, align 16, !dbg !2193, !tbaa !1318
  %236 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 3, !dbg !2198
  store i16 %235, ptr %236, align 2, !dbg !2194, !tbaa !1318
  store i16 0, ptr %232, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 11, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 -60, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 388, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %237 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %238 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 11, !dbg !2191
  %239 = getelementptr inbounds i8, ptr %167, i64 196, !dbg !2196
  %240 = getelementptr inbounds i8, ptr %169, i64 388, !dbg !2197
  tail call void %237(ptr noundef nonnull %238, ptr noundef nonnull %239, ptr noundef nonnull %240) #8, !dbg !2192
  %241 = load i16, ptr %238, align 16, !dbg !2193, !tbaa !1318
  %242 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 7, !dbg !2198
  store i16 %241, ptr %242, align 2, !dbg !2194, !tbaa !1318
  store i16 0, ptr %238, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 12, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 -120, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 264, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %243 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %244 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 12, !dbg !2191
  %245 = getelementptr inbounds i8, ptr %167, i64 136, !dbg !2196
  %246 = getelementptr inbounds i8, ptr %169, i64 264, !dbg !2197
  tail call void %243(ptr noundef nonnull %244, ptr noundef nonnull %245, ptr noundef nonnull %246) #8, !dbg !2192
  %247 = load i16, ptr %244, align 16, !dbg !2193, !tbaa !1318
  %248 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 10, !dbg !2198
  store i16 %247, ptr %248, align 4, !dbg !2194, !tbaa !1318
  store i16 0, ptr %244, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 13, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 -116, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 268, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %249 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %250 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 13, !dbg !2191
  %251 = getelementptr inbounds i8, ptr %167, i64 140, !dbg !2196
  %252 = getelementptr inbounds i8, ptr %169, i64 268, !dbg !2197
  tail call void %249(ptr noundef nonnull %250, ptr noundef nonnull %251, ptr noundef nonnull %252) #8, !dbg !2192
  %253 = load i16, ptr %250, align 16, !dbg !2193, !tbaa !1318
  %254 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 14, !dbg !2198
  store i16 %253, ptr %254, align 4, !dbg !2194, !tbaa !1318
  store i16 0, ptr %250, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 14, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 -56, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 392, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %255 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %256 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 14, !dbg !2191
  %257 = getelementptr inbounds i8, ptr %167, i64 200, !dbg !2196
  %258 = getelementptr inbounds i8, ptr %169, i64 392, !dbg !2197
  tail call void %255(ptr noundef nonnull %256, ptr noundef nonnull %257, ptr noundef nonnull %258) #8, !dbg !2192
  %259 = load i16, ptr %256, align 16, !dbg !2193, !tbaa !1318
  %260 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 11, !dbg !2198
  store i16 %259, ptr %260, align 2, !dbg !2194, !tbaa !1318
  store i16 0, ptr %256, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 15, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 -52, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  call void @llvm.dbg.value(metadata i16 396, metadata !2177, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %261 = load ptr, ptr %173, align 8, !dbg !2190, !tbaa !1354
  %262 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 15, !dbg !2191
  %263 = getelementptr inbounds i8, ptr %167, i64 204, !dbg !2196
  %264 = getelementptr inbounds i8, ptr %169, i64 396, !dbg !2197
  tail call void %261(ptr noundef nonnull %262, ptr noundef nonnull %263, ptr noundef nonnull %264) #8, !dbg !2192
  %265 = load i16, ptr %262, align 16, !dbg !2193, !tbaa !1318
  %266 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 15, !dbg !2198
  store i16 %265, ptr %266, align 2, !dbg !2194, !tbaa !1318
  store i16 0, ptr %262, align 16, !dbg !2195, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 16, metadata !2170, metadata !DIExpression()), !dbg !2178
  %267 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1, !dbg !2199
  %268 = load ptr, ptr %267, align 8, !dbg !2199, !tbaa !1408
  %269 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, !dbg !2200
  call void %268(ptr noundef nonnull %269, ptr noundef nonnull %3) #8, !dbg !2201
  br label %381, !dbg !2202

270:                                              ; preds = %165
  %271 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 4, !dbg !2203
  %272 = load ptr, ptr %271, align 16, !dbg !2203, !tbaa !2204
  call void %272(ptr noundef nonnull %2, ptr noundef %167, ptr noundef %169) #8, !dbg !2205
  call void @llvm.dbg.value(metadata i32 0, metadata !2170, metadata !DIExpression()), !dbg !2178
  %273 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 12
  %274 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 1
  %275 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24, i64 0
  %276 = sext i32 %9 to i64
  %277 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26, i64 0
  %278 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %279 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 5
  %280 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 20
  br label %281, !dbg !2206

281:                                              ; preds = %299, %270
  %282 = phi i64 [ 0, %270 ], [ %304, %299 ]
  call void @llvm.dbg.value(metadata i64 %282, metadata !2170, metadata !DIExpression()), !dbg !2178
  %283 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 %282, !dbg !2208
  %284 = load i16, ptr %283, align 16, !dbg !2208, !tbaa !1318
  %285 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_1d, i64 0, i64 %282, !dbg !2211
  %286 = load i8, ptr %285, align 1, !dbg !2211, !tbaa !1314
  %287 = zext i8 %286 to i64, !dbg !2212
  %288 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 %287, !dbg !2212
  store i16 %284, ptr %288, align 2, !dbg !2213, !tbaa !1318
  store i16 0, ptr %283, align 16, !dbg !2214, !tbaa !1318
  call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr %283, metadata !1367, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 %9, metadata !1368, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 1, metadata !1369, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 1, metadata !1370, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %282, metadata !1371, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i1 false, metadata !1372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2215
  %289 = load i32, ptr %273, align 16, !dbg !2217, !tbaa !1377
  %290 = icmp eq i32 %289, 0, !dbg !2218
  br i1 %290, label %293, label %291, !dbg !2219

291:                                              ; preds = %281
  call void @llvm.dbg.value(metadata i32 0, metadata !1372, metadata !DIExpression()), !dbg !2215
  %292 = trunc i64 %282 to i32, !dbg !2220
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %283, i32 noundef 0, i32 noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef %292) #8, !dbg !2220
  br label %299, !dbg !2220

293:                                              ; preds = %281
  %294 = load ptr, ptr %274, align 8, !dbg !2221, !tbaa !1382
  %295 = load ptr, ptr %275, align 8, !dbg !2222, !tbaa !1309
  %296 = getelementptr inbounds [16 x i16], ptr %295, i64 %276, !dbg !2222
  %297 = load ptr, ptr %277, align 8, !dbg !2223, !tbaa !1309
  %298 = getelementptr inbounds [16 x i16], ptr %297, i64 %276, !dbg !2223
  call void %294(ptr noundef nonnull %283, ptr noundef %296, ptr noundef %298) #8, !dbg !2224
  br label %299

299:                                              ; preds = %293, %291
  %300 = load ptr, ptr %278, align 8, !dbg !2225, !tbaa !1408
  %301 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %282, !dbg !2226
  call void %300(ptr noundef nonnull %301, ptr noundef nonnull %283) #8, !dbg !2227
  %302 = load ptr, ptr %279, align 8, !dbg !2228, !tbaa !1412
  %303 = load ptr, ptr %280, align 16, !dbg !2229, !tbaa !1309
  call void %302(ptr noundef nonnull %283, ptr noundef %303, i32 noundef %9) #8, !dbg !2230
  %304 = add nuw nsw i64 %282, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %304, metadata !2170, metadata !DIExpression()), !dbg !2178
  %305 = icmp eq i64 %304, 16, !dbg !2232
  br i1 %305, label %306, label %281, !dbg !2206, !llvm.loop !2233

306:                                              ; preds = %299
  %307 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 10, !dbg !2235
  %308 = load ptr, ptr %307, align 16, !dbg !2235, !tbaa !2236
  call void %308(ptr noundef nonnull %3) #8, !dbg !2237
  %309 = load i32, ptr %273, align 16, !dbg !2238, !tbaa !1377
  %310 = icmp eq i32 %309, 0, !dbg !2240
  br i1 %310, label %312, label %311, !dbg !2241

311:                                              ; preds = %306
  call void @x264_quant_dc_trellis(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0, i32 noundef %9, i32 noundef 0, i32 noundef 1) #8, !dbg !2242
  br label %325, !dbg !2242

312:                                              ; preds = %306
  %313 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 2, !dbg !2243
  %314 = load ptr, ptr %313, align 8, !dbg !2243, !tbaa !2244
  %315 = load ptr, ptr %275, align 16, !dbg !2245, !tbaa !1309
  %316 = getelementptr inbounds [16 x i16], ptr %315, i64 %276, !dbg !2245
  %317 = load i16, ptr %316, align 2, !dbg !2245, !tbaa !1318
  %318 = lshr i16 %317, 1
  %319 = zext i16 %318 to i32
  %320 = load ptr, ptr %277, align 16, !dbg !2246, !tbaa !1309
  %321 = getelementptr inbounds [16 x i16], ptr %320, i64 %276, !dbg !2246
  %322 = load i16, ptr %321, align 2, !dbg !2246, !tbaa !1318
  %323 = zext i16 %322 to i32, !dbg !2246
  %324 = shl nuw nsw i32 %323, 1, !dbg !2247
  call void %314(ptr noundef nonnull %3, i32 noundef %319, i32 noundef %324) #8, !dbg !2248
  br label %325

325:                                              ; preds = %312, %311
  %326 = load ptr, ptr %278, align 8, !dbg !2249, !tbaa !1408
  %327 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, !dbg !2250
  call void %326(ptr noundef nonnull %327, ptr noundef nonnull %3) #8, !dbg !2251
  %328 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 11, !dbg !2252
  %329 = load ptr, ptr %328, align 8, !dbg !2252, !tbaa !2253
  call void %329(ptr noundef nonnull %3) #8, !dbg !2254
  %330 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 6, !dbg !2255
  %331 = load ptr, ptr %330, align 8, !dbg !2255, !tbaa !2256
  %332 = load ptr, ptr %280, align 16, !dbg !2257, !tbaa !1309
  call void %331(ptr noundef nonnull %3, ptr noundef %332, i32 noundef %9) #8, !dbg !2258
  call void @llvm.dbg.value(metadata i64 0, metadata !2170, metadata !DIExpression()), !dbg !2178
  %333 = load i16, ptr %3, align 16, !dbg !2259, !tbaa !1318
  store i16 %333, ptr %2, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 1, metadata !2170, metadata !DIExpression()), !dbg !2178
  %334 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 1, !dbg !2259
  %335 = load i16, ptr %334, align 2, !dbg !2259, !tbaa !1318
  %336 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 1, !dbg !2264
  store i16 %335, ptr %336, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 2, metadata !2170, metadata !DIExpression()), !dbg !2178
  %337 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 4, !dbg !2259
  %338 = load i16, ptr %337, align 8, !dbg !2259, !tbaa !1318
  %339 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 2, !dbg !2264
  store i16 %338, ptr %339, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 3, metadata !2170, metadata !DIExpression()), !dbg !2178
  %340 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 5, !dbg !2259
  %341 = load i16, ptr %340, align 2, !dbg !2259, !tbaa !1318
  %342 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 3, !dbg !2264
  store i16 %341, ptr %342, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 4, metadata !2170, metadata !DIExpression()), !dbg !2178
  %343 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 2, !dbg !2259
  %344 = load i16, ptr %343, align 4, !dbg !2259, !tbaa !1318
  %345 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 4, !dbg !2264
  store i16 %344, ptr %345, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 5, metadata !2170, metadata !DIExpression()), !dbg !2178
  %346 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 3, !dbg !2259
  %347 = load i16, ptr %346, align 2, !dbg !2259, !tbaa !1318
  %348 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 5, !dbg !2264
  store i16 %347, ptr %348, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 6, metadata !2170, metadata !DIExpression()), !dbg !2178
  %349 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 6, !dbg !2259
  %350 = load i16, ptr %349, align 4, !dbg !2259, !tbaa !1318
  %351 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 6, !dbg !2264
  store i16 %350, ptr %351, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 7, metadata !2170, metadata !DIExpression()), !dbg !2178
  %352 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 7, !dbg !2259
  %353 = load i16, ptr %352, align 2, !dbg !2259, !tbaa !1318
  %354 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 7, !dbg !2264
  store i16 %353, ptr %354, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 8, metadata !2170, metadata !DIExpression()), !dbg !2178
  %355 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 8, !dbg !2259
  %356 = load i16, ptr %355, align 16, !dbg !2259, !tbaa !1318
  %357 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 8, !dbg !2264
  store i16 %356, ptr %357, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 9, metadata !2170, metadata !DIExpression()), !dbg !2178
  %358 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 9, !dbg !2259
  %359 = load i16, ptr %358, align 2, !dbg !2259, !tbaa !1318
  %360 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 9, !dbg !2264
  store i16 %359, ptr %360, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 10, metadata !2170, metadata !DIExpression()), !dbg !2178
  %361 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 12, !dbg !2259
  %362 = load i16, ptr %361, align 8, !dbg !2259, !tbaa !1318
  %363 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 10, !dbg !2264
  store i16 %362, ptr %363, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 11, metadata !2170, metadata !DIExpression()), !dbg !2178
  %364 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 13, !dbg !2259
  %365 = load i16, ptr %364, align 2, !dbg !2259, !tbaa !1318
  %366 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 11, !dbg !2264
  store i16 %365, ptr %366, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 12, metadata !2170, metadata !DIExpression()), !dbg !2178
  %367 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 10, !dbg !2259
  %368 = load i16, ptr %367, align 4, !dbg !2259, !tbaa !1318
  %369 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 12, !dbg !2264
  store i16 %368, ptr %369, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 13, metadata !2170, metadata !DIExpression()), !dbg !2178
  %370 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 11, !dbg !2259
  %371 = load i16, ptr %370, align 2, !dbg !2259, !tbaa !1318
  %372 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 13, !dbg !2264
  store i16 %371, ptr %372, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 14, metadata !2170, metadata !DIExpression()), !dbg !2178
  %373 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 14, !dbg !2259
  %374 = load i16, ptr %373, align 4, !dbg !2259, !tbaa !1318
  %375 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 14, !dbg !2264
  store i16 %374, ptr %375, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 15, metadata !2170, metadata !DIExpression()), !dbg !2178
  %376 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 15, !dbg !2259
  %377 = load i16, ptr %376, align 2, !dbg !2259, !tbaa !1318
  %378 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %2, i64 0, i64 15, !dbg !2264
  store i16 %377, ptr %378, align 16, !dbg !2263, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 16, metadata !2170, metadata !DIExpression()), !dbg !2178
  %379 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 5, !dbg !2265
  %380 = load ptr, ptr %379, align 8, !dbg !2265, !tbaa !2266
  call void %380(ptr noundef %169, ptr noundef nonnull %2) #8, !dbg !2267
  br label %381, !dbg !2268

381:                                              ; preds = %172, %325
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8, !dbg !2268
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #8, !dbg !2268
  br label %1237, !dbg !2269

382:                                              ; preds = %44
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %5) #8, !dbg !2270
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1924, metadata !DIExpression()), !dbg !2270
  %383 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 49, !dbg !2271
  store i32 1, ptr %383, align 16, !dbg !2272, !tbaa !2129
  %384 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 54, !dbg !2273
  %385 = load i32, ptr %384, align 4, !dbg !2273, !tbaa !2275
  %386 = icmp eq i32 %385, 0, !dbg !2276
  br i1 %386, label %406, label %387, !dbg !2277

387:                                              ; preds = %382
  %388 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, !dbg !2278
  %389 = load ptr, ptr %388, align 8, !dbg !2280, !tbaa !1309
  %390 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !2281
  %391 = load ptr, ptr %390, align 8, !dbg !2282, !tbaa !1309
  %392 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 3, !dbg !2283
  tail call void %389(ptr noundef %391, i32 noundef 32, ptr noundef nonnull %392, i32 noundef 16, i32 noundef 16) #8, !dbg !2280
  %393 = load i32, ptr %384, align 4, !dbg !2284, !tbaa !2275
  %394 = icmp eq i32 %393, 2, !dbg !2286
  br i1 %394, label %395, label %402, !dbg !2287

395:                                              ; preds = %387
  %396 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 10, !dbg !2288
  %397 = load ptr, ptr %396, align 8, !dbg !2288, !tbaa !2289
  %398 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, !dbg !2290
  %399 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 4, !dbg !2291
  %400 = tail call ptr %397(ptr noundef nonnull %398, ptr noundef nonnull %399, i64 noundef 384) #8, !dbg !2292
  %401 = load i32, ptr %384, align 4, !dbg !2293, !tbaa !2275
  br label %402, !dbg !2292

402:                                              ; preds = %387, %395
  %403 = phi i32 [ %393, %387 ], [ %401, %395 ], !dbg !2293
  %404 = freeze i32 %403, !dbg !2294
  %405 = icmp eq i32 %404, 0, !dbg !2294
  br i1 %405, label %406, label %407, !dbg !2294

406:                                              ; preds = %382, %402
  br label %407, !dbg !2294

407:                                              ; preds = %402, %406
  %408 = phi i64 [ 0, %406 ], [ 3, %402 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1916, metadata !DIExpression()), !dbg !1991
  %409 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14
  %410 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57
  %411 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 63
  %412 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37
  %413 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 16
  %414 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13
  %415 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, i64 3
  br label %416, !dbg !2295

416:                                              ; preds = %407, %471
  %417 = phi i64 [ %408, %407 ], [ %473, %471 ]
  call void @llvm.dbg.value(metadata i64 %417, metadata !1916, metadata !DIExpression()), !dbg !1991
  %418 = load ptr, ptr %409, align 8, !dbg !2296, !tbaa !1309
  %419 = trunc i64 %417 to i32, !dbg !2297
  %420 = shl i32 %419, 3, !dbg !2297
  %421 = and i32 %420, 8, !dbg !2297
  %422 = trunc i64 %417 to i32, !dbg !2298
  %423 = shl i32 %422, 7, !dbg !2298
  %424 = and i32 %423, 2147483392, !dbg !2298
  %425 = or i32 %421, %424, !dbg !2299
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds i8, ptr %418, i64 %426, !dbg !2296
  call void @llvm.dbg.value(metadata ptr %427, metadata !1930, metadata !DIExpression()), !dbg !2300
  %428 = shl nuw nsw i64 %417, 2, !dbg !2301
  %429 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %428, !dbg !2302
  %430 = load i32, ptr %429, align 16, !dbg !2302, !tbaa !1683
  %431 = sext i32 %430 to i64, !dbg !2303
  %432 = getelementptr inbounds [48 x i8], ptr %410, i64 0, i64 %431, !dbg !2303
  %433 = load i8, ptr %432, align 1, !dbg !2303, !tbaa !1314
  call void @llvm.dbg.value(metadata i8 %433, metadata !1934, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2300
  %434 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 24, i64 %417, !dbg !2304
  %435 = load i32, ptr %434, align 4, !dbg !2304, !tbaa !1683
  %436 = sext i8 %433 to i64, !dbg !2305
  %437 = getelementptr inbounds [12 x i8], ptr @x264_pred_i4x4_neighbors, i64 0, i64 %436, !dbg !2305
  %438 = load i8, ptr %437, align 1, !dbg !2305, !tbaa !1314
  %439 = zext i8 %438 to i32, !dbg !2305
  call void @x264_predict_8x8_filter(ptr noundef %427, ptr noundef nonnull %5, i32 noundef %435, i32 noundef %439) #8, !dbg !2306
  %440 = load i32, ptr %411, align 4, !dbg !2307, !tbaa !1323
  %441 = icmp eq i32 %440, 0, !dbg !2309
  br i1 %441, label %468, label %442, !dbg !2310

442:                                              ; preds = %416
  %443 = sext i8 %433 to i32, !dbg !2303
  call void @llvm.dbg.value(metadata i32 %443, metadata !1934, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata ptr %0, metadata !1845, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata ptr %427, metadata !1846, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %417, metadata !1847, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 %443, metadata !1848, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata ptr %5, metadata !1849, metadata !DIExpression()), !dbg !2311
  %444 = load ptr, ptr %412, align 8, !dbg !2313, !tbaa !1773
  %445 = getelementptr inbounds %struct.x264_frame_t, ptr %444, i64 0, i32 10, !dbg !2314
  %446 = load i32, ptr %445, align 8, !dbg !2315, !tbaa !1683
  %447 = load i32, ptr %413, align 16, !dbg !2316, !tbaa !1776
  %448 = shl i32 %446, %447, !dbg !2317
  call void @llvm.dbg.value(metadata i32 %448, metadata !1850, metadata !DIExpression()), !dbg !2311
  %449 = load ptr, ptr %414, align 16, !dbg !2318, !tbaa !1309
  %450 = zext i32 %421 to i64
  %451 = getelementptr inbounds i8, ptr %449, i64 %450, !dbg !2319
  %452 = trunc i64 %428 to i32, !dbg !2320
  %453 = and i32 %452, 2147483640, !dbg !2320
  %454 = mul nsw i32 %448, %453, !dbg !2321
  %455 = sext i32 %454 to i64, !dbg !2322
  %456 = getelementptr inbounds i8, ptr %451, i64 %455, !dbg !2322
  call void @llvm.dbg.value(metadata ptr %456, metadata !1851, metadata !DIExpression()), !dbg !2311
  switch i32 %443, label %465 [
    i32 0, label %457
    i32 1, label %462
  ], !dbg !2323

457:                                              ; preds = %442
  %458 = load ptr, ptr %415, align 8, !dbg !2324, !tbaa !1309
  %459 = sext i32 %448 to i64, !dbg !2325
  %460 = sub nsw i64 0, %459, !dbg !2325
  %461 = getelementptr inbounds i8, ptr %456, i64 %460, !dbg !2325
  call void %458(ptr noundef %427, i32 noundef 32, ptr noundef %461, i32 noundef %448, i32 noundef 8) #8, !dbg !2324
  br label %471, !dbg !2324

462:                                              ; preds = %442
  %463 = load ptr, ptr %415, align 8, !dbg !2326, !tbaa !1309
  %464 = getelementptr inbounds i8, ptr %456, i64 -1, !dbg !2327
  call void %463(ptr noundef %427, i32 noundef 32, ptr noundef nonnull %464, i32 noundef %448, i32 noundef 8) #8, !dbg !2326
  br label %471, !dbg !2326

465:                                              ; preds = %442
  %466 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 50, i64 %436, !dbg !2328
  %467 = load ptr, ptr %466, align 8, !dbg !2328, !tbaa !1309
  call void %467(ptr noundef %427, ptr noundef nonnull %5) #8, !dbg !2328
  br label %471

468:                                              ; preds = %416
  %469 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 50, i64 %436, !dbg !2329
  %470 = load ptr, ptr %469, align 8, !dbg !2329, !tbaa !1309
  call void %470(ptr noundef %427, ptr noundef nonnull %5) #8, !dbg !2329
  br label %471

471:                                              ; preds = %465, %462, %457, %468
  %472 = trunc i64 %417 to i32, !dbg !2330
  call void @x264_mb_encode_i8x8(ptr noundef nonnull %0, i32 noundef %472, i32 noundef %9), !dbg !2330
  %473 = add nuw nsw i64 %417, 1, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %473, metadata !1916, metadata !DIExpression()), !dbg !1991
  %474 = icmp eq i64 %473, 4, !dbg !2332
  br i1 %474, label %475, label %416, !dbg !2295, !llvm.loop !2333

475:                                              ; preds = %471
  call void @llvm.dbg.value(metadata i64 0, metadata !1916, metadata !DIExpression()), !dbg !1991
  %476 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 0, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %476, metadata !171, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 128, metadata !172, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2340
  %477 = call i32 asm "movq     ($1),    %mm0 \0Apor      8($1),   %mm0 \0Apor      16($1),  %mm0 \0Apor      24($1),  %mm0 \0Apor      32($1),  %mm0 \0Apor      40($1),  %mm0 \0Apor      48($1),  %mm0 \0Apor      56($1),  %mm0 \0Apor      64($1),  %mm0 \0Apor      72($1),  %mm0 \0Apor      80($1),  %mm0 \0Apor      88($1),  %mm0 \0Apor      96($1),  %mm0 \0Apor      104($1), %mm0 \0Apor      112($1), %mm0 \0Apor      120($1), %mm0 \0Apacksswb %mm0,   %mm0 \0Amovd     %mm0,   $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %476, ptr nonnull elementtype(%struct.anon.14) %476) #9, !dbg !2341, !srcloc !2342
  call void @llvm.dbg.value(metadata i32 %477, metadata !173, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 1, metadata !1916, metadata !DIExpression()), !dbg !1991
  %478 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 1, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %478, metadata !171, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2340
  %479 = call i32 asm "movq     ($1),    %mm0 \0Apor      8($1),   %mm0 \0Apor      16($1),  %mm0 \0Apor      24($1),  %mm0 \0Apor      32($1),  %mm0 \0Apor      40($1),  %mm0 \0Apor      48($1),  %mm0 \0Apor      56($1),  %mm0 \0Apor      64($1),  %mm0 \0Apor      72($1),  %mm0 \0Apor      80($1),  %mm0 \0Apor      88($1),  %mm0 \0Apor      96($1),  %mm0 \0Apor      104($1), %mm0 \0Apor      112($1), %mm0 \0Apor      120($1), %mm0 \0Apacksswb %mm0,   %mm0 \0Amovd     %mm0,   $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %478, ptr nonnull elementtype(%struct.anon.14) %478) #9, !dbg !2341, !srcloc !2342
  call void @llvm.dbg.value(metadata i32 %479, metadata !173, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 2, metadata !1916, metadata !DIExpression()), !dbg !1991
  %480 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 2, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %480, metadata !171, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2340
  %481 = call i32 asm "movq     ($1),    %mm0 \0Apor      8($1),   %mm0 \0Apor      16($1),  %mm0 \0Apor      24($1),  %mm0 \0Apor      32($1),  %mm0 \0Apor      40($1),  %mm0 \0Apor      48($1),  %mm0 \0Apor      56($1),  %mm0 \0Apor      64($1),  %mm0 \0Apor      72($1),  %mm0 \0Apor      80($1),  %mm0 \0Apor      88($1),  %mm0 \0Apor      96($1),  %mm0 \0Apor      104($1), %mm0 \0Apor      112($1), %mm0 \0Apor      120($1), %mm0 \0Apacksswb %mm0,   %mm0 \0Amovd     %mm0,   $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %480, ptr nonnull elementtype(%struct.anon.14) %480) #9, !dbg !2341, !srcloc !2342
  call void @llvm.dbg.value(metadata i32 %481, metadata !173, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 3, metadata !1916, metadata !DIExpression()), !dbg !1991
  %482 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 3, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %482, metadata !171, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2340
  %483 = call i32 asm "movq     ($1),    %mm0 \0Apor      8($1),   %mm0 \0Apor      16($1),  %mm0 \0Apor      24($1),  %mm0 \0Apor      32($1),  %mm0 \0Apor      40($1),  %mm0 \0Apor      48($1),  %mm0 \0Apor      56($1),  %mm0 \0Apor      64($1),  %mm0 \0Apor      72($1),  %mm0 \0Apor      80($1),  %mm0 \0Apor      88($1),  %mm0 \0Apor      96($1),  %mm0 \0Apor      104($1), %mm0 \0Apor      112($1), %mm0 \0Apor      120($1), %mm0 \0Apacksswb %mm0,   %mm0 \0Amovd     %mm0,   $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %482, ptr nonnull elementtype(%struct.anon.14) %482) #9, !dbg !2341, !srcloc !2342
  call void @llvm.dbg.value(metadata i32 %483, metadata !173, metadata !DIExpression()), !dbg !2340
  %484 = insertelement <4 x i32> poison, i32 %477, i64 0, !dbg !2343
  %485 = insertelement <4 x i32> %484, i32 %479, i64 1, !dbg !2343
  %486 = insertelement <4 x i32> %485, i32 %481, i64 2, !dbg !2343
  %487 = insertelement <4 x i32> %486, i32 %483, i64 3, !dbg !2343
  %488 = icmp ne <4 x i32> %487, zeroinitializer, !dbg !2343
  %489 = zext <4 x i1> %488 to <4 x i8>, !dbg !2335
  store <4 x i8> %489, ptr %4, align 4, !dbg !2344, !tbaa !1314
  call void @llvm.dbg.value(metadata i64 4, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %5) #8, !dbg !2345
  br label %1237, !dbg !2346

490:                                              ; preds = %44
  %491 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 49, !dbg !2347
  store i32 0, ptr %491, align 16, !dbg !2348, !tbaa !2129
  %492 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 54, !dbg !2349
  %493 = load i32, ptr %492, align 4, !dbg !2349, !tbaa !2275
  %494 = icmp eq i32 %493, 0, !dbg !2351
  br i1 %494, label %514, label %495, !dbg !2352

495:                                              ; preds = %490
  %496 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, !dbg !2353
  %497 = load ptr, ptr %496, align 8, !dbg !2355, !tbaa !1309
  %498 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !2356
  %499 = load ptr, ptr %498, align 8, !dbg !2357, !tbaa !1309
  %500 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 2, !dbg !2358
  tail call void %497(ptr noundef %499, i32 noundef 32, ptr noundef nonnull %500, i32 noundef 16, i32 noundef 16) #8, !dbg !2355
  %501 = load i32, ptr %492, align 4, !dbg !2359, !tbaa !2275
  %502 = icmp eq i32 %501, 2, !dbg !2361
  br i1 %502, label %503, label %510, !dbg !2362

503:                                              ; preds = %495
  %504 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 10, !dbg !2363
  %505 = load ptr, ptr %504, align 8, !dbg !2363, !tbaa !2289
  %506 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, !dbg !2364
  %507 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 5, !dbg !2365
  %508 = tail call ptr %505(ptr noundef nonnull %506, ptr noundef nonnull %507, i64 noundef 480) #8, !dbg !2366
  %509 = load i32, ptr %492, align 4, !dbg !2367, !tbaa !2275
  br label %510, !dbg !2366

510:                                              ; preds = %495, %503
  %511 = phi i32 [ %501, %495 ], [ %509, %503 ], !dbg !2367
  %512 = freeze i32 %511, !dbg !2368
  %513 = icmp eq i32 %512, 0, !dbg !2368
  br i1 %513, label %514, label %515, !dbg !2368

514:                                              ; preds = %490, %510
  br label %515, !dbg !2368

515:                                              ; preds = %510, %514
  %516 = phi i64 [ 0, %514 ], [ 15, %510 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1916, metadata !DIExpression()), !dbg !1991
  %517 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14
  %518 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57
  %519 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 63
  %520 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37
  %521 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 16
  %522 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13
  %523 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, i64 6
  br label %524, !dbg !2369

524:                                              ; preds = %515, %585
  %525 = phi i64 [ %516, %515 ], [ %587, %585 ]
  call void @llvm.dbg.value(metadata i64 %525, metadata !1916, metadata !DIExpression()), !dbg !1991
  %526 = load ptr, ptr %517, align 8, !dbg !2370, !tbaa !1309
  %527 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %525, !dbg !2371
  %528 = load i16, ptr %527, align 2, !dbg !2371, !tbaa !1318
  %529 = zext i16 %528 to i64, !dbg !2370
  %530 = getelementptr inbounds i8, ptr %526, i64 %529, !dbg !2370
  call void @llvm.dbg.value(metadata ptr %530, metadata !1935, metadata !DIExpression()), !dbg !2372
  %531 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %525, !dbg !2373
  %532 = load i32, ptr %531, align 4, !dbg !2373, !tbaa !1683
  %533 = sext i32 %532 to i64, !dbg !2374
  %534 = getelementptr inbounds [48 x i8], ptr %518, i64 0, i64 %533, !dbg !2374
  %535 = load i8, ptr %534, align 1, !dbg !2374, !tbaa !1314
  %536 = sext i8 %535 to i32, !dbg !2374
  call void @llvm.dbg.value(metadata i32 %536, metadata !1941, metadata !DIExpression()), !dbg !2372
  %537 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 25, i64 %525, !dbg !2375
  %538 = load i32, ptr %537, align 4, !dbg !2375, !tbaa !1683
  %539 = and i32 %538, 6, !dbg !2377
  %540 = icmp eq i32 %539, 2, !dbg !2378
  br i1 %540, label %541, label %547, !dbg !2379

541:                                              ; preds = %524
  %542 = getelementptr inbounds i8, ptr %530, i64 -29, !dbg !2380
  %543 = load i8, ptr %542, align 1, !dbg !2380, !tbaa !1314
  %544 = zext i8 %543 to i32, !dbg !2380
  %545 = mul nuw i32 %544, 16843009, !dbg !2381
  %546 = getelementptr inbounds i8, ptr %530, i64 -28, !dbg !2382
  store i32 %545, ptr %546, align 4, !dbg !2383, !tbaa !1683
  br label %547, !dbg !2384

547:                                              ; preds = %541, %524
  %548 = load i32, ptr %519, align 4, !dbg !2385, !tbaa !1323
  %549 = icmp eq i32 %548, 0, !dbg !2387
  br i1 %549, label %581, label %550, !dbg !2388

550:                                              ; preds = %547
  call void @llvm.dbg.value(metadata ptr %0, metadata !1811, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %530, metadata !1812, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 %525, metadata !1813, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 %536, metadata !1814, metadata !DIExpression()), !dbg !2389
  %551 = load ptr, ptr %520, align 8, !dbg !2391, !tbaa !1773
  %552 = getelementptr inbounds %struct.x264_frame_t, ptr %551, i64 0, i32 10, !dbg !2392
  %553 = load i32, ptr %552, align 8, !dbg !2393, !tbaa !1683
  %554 = load i32, ptr %521, align 16, !dbg !2394, !tbaa !1776
  %555 = shl i32 %553, %554, !dbg !2395
  call void @llvm.dbg.value(metadata i32 %555, metadata !1815, metadata !DIExpression()), !dbg !2389
  %556 = load ptr, ptr %522, align 16, !dbg !2396, !tbaa !1309
  %557 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %525, !dbg !2397
  %558 = load i8, ptr %557, align 1, !dbg !2397, !tbaa !1314
  %559 = zext i8 %558 to i64, !dbg !2397
  %560 = shl nuw nsw i64 %559, 2, !dbg !2398
  %561 = getelementptr inbounds i8, ptr %556, i64 %560, !dbg !2399
  %562 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %525, !dbg !2400
  %563 = load i8, ptr %562, align 1, !dbg !2400, !tbaa !1314
  %564 = zext i8 %563 to i32, !dbg !2400
  %565 = shl i32 %555, 2, !dbg !2401
  %566 = mul i32 %565, %564, !dbg !2402
  %567 = sext i32 %566 to i64, !dbg !2403
  %568 = getelementptr inbounds i8, ptr %561, i64 %567, !dbg !2403
  call void @llvm.dbg.value(metadata ptr %568, metadata !1816, metadata !DIExpression()), !dbg !2389
  switch i32 %536, label %577 [
    i32 0, label %569
    i32 1, label %574
  ], !dbg !2404

569:                                              ; preds = %550
  %570 = load ptr, ptr %523, align 8, !dbg !2405, !tbaa !1309
  %571 = sext i32 %555 to i64, !dbg !2406
  %572 = sub nsw i64 0, %571, !dbg !2406
  %573 = getelementptr inbounds i8, ptr %568, i64 %572, !dbg !2406
  tail call void %570(ptr noundef %530, i32 noundef 32, ptr noundef %573, i32 noundef %555, i32 noundef 4) #8, !dbg !2405
  br label %585, !dbg !2405

574:                                              ; preds = %550
  %575 = load ptr, ptr %523, align 8, !dbg !2407, !tbaa !1309
  %576 = getelementptr inbounds i8, ptr %568, i64 -1, !dbg !2408
  tail call void %575(ptr noundef %530, i32 noundef 32, ptr noundef nonnull %576, i32 noundef %555, i32 noundef 4) #8, !dbg !2407
  br label %585, !dbg !2407

577:                                              ; preds = %550
  %578 = sext i8 %535 to i64, !dbg !2409
  %579 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 51, i64 %578, !dbg !2409
  %580 = load ptr, ptr %579, align 8, !dbg !2409, !tbaa !1309
  tail call void %580(ptr noundef %530) #8, !dbg !2409
  br label %585

581:                                              ; preds = %547
  %582 = sext i8 %535 to i64, !dbg !2410
  %583 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 51, i64 %582, !dbg !2410
  %584 = load ptr, ptr %583, align 8, !dbg !2410, !tbaa !1309
  tail call void %584(ptr noundef %530) #8, !dbg !2410
  br label %585

585:                                              ; preds = %577, %574, %569, %581
  %586 = trunc i64 %525 to i32, !dbg !2411
  tail call void @x264_mb_encode_i4x4(ptr noundef nonnull %0, i32 noundef %586, i32 noundef %9), !dbg !2411
  %587 = add nuw nsw i64 %525, 1, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %587, metadata !1916, metadata !DIExpression()), !dbg !1991
  %588 = icmp eq i64 %587, 16, !dbg !2413
  br i1 %588, label %1237, label %524, !dbg !2369, !llvm.loop !2414

589:                                              ; preds = %44
  call void @llvm.dbg.value(metadata i32 0, metadata !1945, metadata !DIExpression()), !dbg !2416
  %590 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 55, !dbg !2417
  %591 = load i32, ptr %590, align 8, !dbg !2417, !tbaa !2049
  %592 = icmp eq i32 %591, 0, !dbg !2419
  br i1 %592, label %593, label %594, !dbg !2420

593:                                              ; preds = %589
  tail call void @x264_mb_mc(ptr noundef nonnull %0) #8, !dbg !2421
  br label %594, !dbg !2421

594:                                              ; preds = %593, %589
  %595 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 63, !dbg !2422
  %596 = load i32, ptr %595, align 4, !dbg !2422, !tbaa !1323
  %597 = icmp eq i32 %596, 0, !dbg !2423
  %598 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 49, !dbg !2424
  %599 = load i32, ptr %598, align 16, !dbg !2424, !tbaa !2129
  %600 = icmp eq i32 %599, 0, !dbg !2424
  br i1 %597, label %732, label %601, !dbg !2425

601:                                              ; preds = %594
  %602 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12
  %603 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14
  %604 = load ptr, ptr %602, align 8, !dbg !2426, !tbaa !1309
  %605 = load ptr, ptr %603, align 8, !dbg !2426, !tbaa !1309
  br i1 %600, label %638, label %606, !dbg !2427

606:                                              ; preds = %601
  %607 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !1942, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 0, metadata !1946, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i32 0, metadata !1953, metadata !DIExpression()), !dbg !2428
  %608 = load ptr, ptr %607, align 16, !dbg !2429, !tbaa !1451
  %609 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 0, !dbg !2430
  tail call void %608(ptr noundef nonnull %609, ptr noundef %604, ptr noundef %605) #8, !dbg !2431
  call void @llvm.dbg.value(metadata ptr %609, metadata !171, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 128, metadata !172, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2434
  %610 = tail call i32 asm "movq     ($1),    %mm0 \0Apor      8($1),   %mm0 \0Apor      16($1),  %mm0 \0Apor      24($1),  %mm0 \0Apor      32($1),  %mm0 \0Apor      40($1),  %mm0 \0Apor      48($1),  %mm0 \0Apor      56($1),  %mm0 \0Apor      64($1),  %mm0 \0Apor      72($1),  %mm0 \0Apor      80($1),  %mm0 \0Apor      88($1),  %mm0 \0Apor      96($1),  %mm0 \0Apor      104($1), %mm0 \0Apor      112($1), %mm0 \0Apor      120($1), %mm0 \0Apacksswb %mm0,   %mm0 \0Amovd     %mm0,   $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %609, ptr nonnull elementtype(%struct.anon.14) %609) #9, !dbg !2435, !srcloc !2342
  call void @llvm.dbg.value(metadata i32 %610, metadata !173, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i64 1, metadata !1942, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 8, metadata !1946, metadata !DIExpression()), !dbg !2428
  %611 = load ptr, ptr %607, align 16, !dbg !2429, !tbaa !1451
  %612 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 1, !dbg !2430
  %613 = load ptr, ptr %602, align 8, !dbg !2436, !tbaa !1309
  %614 = getelementptr inbounds i8, ptr %613, i64 8, !dbg !2437
  %615 = load ptr, ptr %603, align 8, !dbg !2438, !tbaa !1309
  %616 = getelementptr inbounds i8, ptr %615, i64 8, !dbg !2439
  tail call void %611(ptr noundef nonnull %612, ptr noundef nonnull %614, ptr noundef nonnull %616) #8, !dbg !2431
  call void @llvm.dbg.value(metadata ptr %612, metadata !171, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2434
  %617 = tail call i32 asm "movq     ($1),    %mm0 \0Apor      8($1),   %mm0 \0Apor      16($1),  %mm0 \0Apor      24($1),  %mm0 \0Apor      32($1),  %mm0 \0Apor      40($1),  %mm0 \0Apor      48($1),  %mm0 \0Apor      56($1),  %mm0 \0Apor      64($1),  %mm0 \0Apor      72($1),  %mm0 \0Apor      80($1),  %mm0 \0Apor      88($1),  %mm0 \0Apor      96($1),  %mm0 \0Apor      104($1), %mm0 \0Apor      112($1), %mm0 \0Apor      120($1), %mm0 \0Apacksswb %mm0,   %mm0 \0Amovd     %mm0,   $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %612, ptr nonnull elementtype(%struct.anon.14) %612) #9, !dbg !2435, !srcloc !2342
  call void @llvm.dbg.value(metadata i32 %617, metadata !173, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i64 2, metadata !1942, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 0, metadata !1946, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i32 8, metadata !1953, metadata !DIExpression()), !dbg !2428
  %618 = load ptr, ptr %607, align 16, !dbg !2429, !tbaa !1451
  %619 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 2, !dbg !2430
  %620 = load ptr, ptr %602, align 8, !dbg !2436, !tbaa !1309
  %621 = getelementptr inbounds i8, ptr %620, i64 128, !dbg !2440
  %622 = load ptr, ptr %603, align 8, !dbg !2438, !tbaa !1309
  %623 = getelementptr inbounds i8, ptr %622, i64 256, !dbg !2441
  tail call void %618(ptr noundef nonnull %619, ptr noundef nonnull %621, ptr noundef nonnull %623) #8, !dbg !2431
  call void @llvm.dbg.value(metadata ptr %619, metadata !171, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2434
  %624 = tail call i32 asm "movq     ($1),    %mm0 \0Apor      8($1),   %mm0 \0Apor      16($1),  %mm0 \0Apor      24($1),  %mm0 \0Apor      32($1),  %mm0 \0Apor      40($1),  %mm0 \0Apor      48($1),  %mm0 \0Apor      56($1),  %mm0 \0Apor      64($1),  %mm0 \0Apor      72($1),  %mm0 \0Apor      80($1),  %mm0 \0Apor      88($1),  %mm0 \0Apor      96($1),  %mm0 \0Apor      104($1), %mm0 \0Apor      112($1), %mm0 \0Apor      120($1), %mm0 \0Apacksswb %mm0,   %mm0 \0Amovd     %mm0,   $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %619, ptr nonnull elementtype(%struct.anon.14) %619) #9, !dbg !2435, !srcloc !2342
  call void @llvm.dbg.value(metadata i32 %624, metadata !173, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i64 3, metadata !1942, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 8, metadata !1946, metadata !DIExpression()), !dbg !2428
  %625 = load ptr, ptr %607, align 16, !dbg !2429, !tbaa !1451
  %626 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 3, !dbg !2430
  %627 = load ptr, ptr %602, align 8, !dbg !2436, !tbaa !1309
  %628 = getelementptr inbounds i8, ptr %627, i64 136, !dbg !2440
  %629 = load ptr, ptr %603, align 8, !dbg !2438, !tbaa !1309
  %630 = getelementptr inbounds i8, ptr %629, i64 264, !dbg !2441
  tail call void %625(ptr noundef nonnull %626, ptr noundef nonnull %628, ptr noundef nonnull %630) #8, !dbg !2431
  call void @llvm.dbg.value(metadata ptr %626, metadata !171, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2434
  %631 = tail call i32 asm "movq     ($1),    %mm0 \0Apor      8($1),   %mm0 \0Apor      16($1),  %mm0 \0Apor      24($1),  %mm0 \0Apor      32($1),  %mm0 \0Apor      40($1),  %mm0 \0Apor      48($1),  %mm0 \0Apor      56($1),  %mm0 \0Apor      64($1),  %mm0 \0Apor      72($1),  %mm0 \0Apor      80($1),  %mm0 \0Apor      88($1),  %mm0 \0Apor      96($1),  %mm0 \0Apor      104($1), %mm0 \0Apor      112($1), %mm0 \0Apor      120($1), %mm0 \0Apacksswb %mm0,   %mm0 \0Amovd     %mm0,   $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %626, ptr nonnull elementtype(%struct.anon.14) %626) #9, !dbg !2435, !srcloc !2342
  call void @llvm.dbg.value(metadata i32 %631, metadata !173, metadata !DIExpression()), !dbg !2434
  %632 = insertelement <4 x i32> poison, i32 %610, i64 0, !dbg !2442
  %633 = insertelement <4 x i32> %632, i32 %617, i64 1, !dbg !2442
  %634 = insertelement <4 x i32> %633, i32 %624, i64 2, !dbg !2442
  %635 = insertelement <4 x i32> %634, i32 %631, i64 3, !dbg !2442
  %636 = icmp ne <4 x i32> %635, zeroinitializer, !dbg !2442
  %637 = zext <4 x i1> %636 to <4 x i8>, !dbg !2443
  store <4 x i8> %637, ptr %4, align 4, !dbg !2444, !tbaa !1314
  call void @llvm.dbg.value(metadata i64 4, metadata !1942, metadata !DIExpression()), !dbg !2416
  br label %1237, !dbg !2445

638:                                              ; preds = %601
  %639 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !1944, metadata !DIExpression()), !dbg !2416
  %640 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %641 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 0, !dbg !2450
  tail call void %640(ptr noundef nonnull %641, ptr noundef %604, ptr noundef %605) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 1, metadata !1944, metadata !DIExpression()), !dbg !2416
  %642 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %643 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 1, !dbg !2450
  %644 = load ptr, ptr %602, align 8, !dbg !2452, !tbaa !1309
  %645 = getelementptr inbounds i8, ptr %644, i64 4, !dbg !2453
  %646 = load ptr, ptr %603, align 8, !dbg !2454, !tbaa !1309
  %647 = getelementptr inbounds i8, ptr %646, i64 4, !dbg !2455
  tail call void %642(ptr noundef nonnull %643, ptr noundef nonnull %645, ptr noundef nonnull %647) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 2, metadata !1944, metadata !DIExpression()), !dbg !2416
  %648 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %649 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 2, !dbg !2450
  %650 = load ptr, ptr %602, align 8, !dbg !2452, !tbaa !1309
  %651 = getelementptr inbounds i8, ptr %650, i64 64, !dbg !2453
  %652 = load ptr, ptr %603, align 8, !dbg !2454, !tbaa !1309
  %653 = getelementptr inbounds i8, ptr %652, i64 128, !dbg !2455
  tail call void %648(ptr noundef nonnull %649, ptr noundef nonnull %651, ptr noundef nonnull %653) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 3, metadata !1944, metadata !DIExpression()), !dbg !2416
  %654 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %655 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 3, !dbg !2450
  %656 = load ptr, ptr %602, align 8, !dbg !2452, !tbaa !1309
  %657 = getelementptr inbounds i8, ptr %656, i64 68, !dbg !2453
  %658 = load ptr, ptr %603, align 8, !dbg !2454, !tbaa !1309
  %659 = getelementptr inbounds i8, ptr %658, i64 132, !dbg !2455
  tail call void %654(ptr noundef nonnull %655, ptr noundef nonnull %657, ptr noundef nonnull %659) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 4, metadata !1944, metadata !DIExpression()), !dbg !2416
  %660 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %661 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 4, !dbg !2450
  %662 = load ptr, ptr %602, align 8, !dbg !2452, !tbaa !1309
  %663 = getelementptr inbounds i8, ptr %662, i64 8, !dbg !2453
  %664 = load ptr, ptr %603, align 8, !dbg !2454, !tbaa !1309
  %665 = getelementptr inbounds i8, ptr %664, i64 8, !dbg !2455
  tail call void %660(ptr noundef nonnull %661, ptr noundef nonnull %663, ptr noundef nonnull %665) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 5, metadata !1944, metadata !DIExpression()), !dbg !2416
  %666 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %667 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 5, !dbg !2450
  %668 = load ptr, ptr %602, align 8, !dbg !2452, !tbaa !1309
  %669 = getelementptr inbounds i8, ptr %668, i64 12, !dbg !2453
  %670 = load ptr, ptr %603, align 8, !dbg !2454, !tbaa !1309
  %671 = getelementptr inbounds i8, ptr %670, i64 12, !dbg !2455
  tail call void %666(ptr noundef nonnull %667, ptr noundef nonnull %669, ptr noundef nonnull %671) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 6, metadata !1944, metadata !DIExpression()), !dbg !2416
  %672 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %673 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 6, !dbg !2450
  %674 = load ptr, ptr %602, align 8, !dbg !2452, !tbaa !1309
  %675 = getelementptr inbounds i8, ptr %674, i64 72, !dbg !2453
  %676 = load ptr, ptr %603, align 8, !dbg !2454, !tbaa !1309
  %677 = getelementptr inbounds i8, ptr %676, i64 136, !dbg !2455
  tail call void %672(ptr noundef nonnull %673, ptr noundef nonnull %675, ptr noundef nonnull %677) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 7, metadata !1944, metadata !DIExpression()), !dbg !2416
  %678 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %679 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 7, !dbg !2450
  %680 = load ptr, ptr %602, align 8, !dbg !2452, !tbaa !1309
  %681 = getelementptr inbounds i8, ptr %680, i64 76, !dbg !2453
  %682 = load ptr, ptr %603, align 8, !dbg !2454, !tbaa !1309
  %683 = getelementptr inbounds i8, ptr %682, i64 140, !dbg !2455
  tail call void %678(ptr noundef nonnull %679, ptr noundef nonnull %681, ptr noundef nonnull %683) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 8, metadata !1944, metadata !DIExpression()), !dbg !2416
  %684 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %685 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 8, !dbg !2450
  %686 = load ptr, ptr %602, align 8, !dbg !2452, !tbaa !1309
  %687 = getelementptr inbounds i8, ptr %686, i64 128, !dbg !2453
  %688 = load ptr, ptr %603, align 8, !dbg !2454, !tbaa !1309
  %689 = getelementptr inbounds i8, ptr %688, i64 256, !dbg !2455
  tail call void %684(ptr noundef nonnull %685, ptr noundef nonnull %687, ptr noundef nonnull %689) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 9, metadata !1944, metadata !DIExpression()), !dbg !2416
  %690 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %691 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 9, !dbg !2450
  %692 = load ptr, ptr %602, align 8, !dbg !2452, !tbaa !1309
  %693 = getelementptr inbounds i8, ptr %692, i64 132, !dbg !2453
  %694 = load ptr, ptr %603, align 8, !dbg !2454, !tbaa !1309
  %695 = getelementptr inbounds i8, ptr %694, i64 260, !dbg !2455
  tail call void %690(ptr noundef nonnull %691, ptr noundef nonnull %693, ptr noundef nonnull %695) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 10, metadata !1944, metadata !DIExpression()), !dbg !2416
  %696 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %697 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 10, !dbg !2450
  %698 = load ptr, ptr %602, align 8, !dbg !2452, !tbaa !1309
  %699 = getelementptr inbounds i8, ptr %698, i64 192, !dbg !2453
  %700 = load ptr, ptr %603, align 8, !dbg !2454, !tbaa !1309
  %701 = getelementptr inbounds i8, ptr %700, i64 384, !dbg !2455
  tail call void %696(ptr noundef nonnull %697, ptr noundef nonnull %699, ptr noundef nonnull %701) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 11, metadata !1944, metadata !DIExpression()), !dbg !2416
  %702 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %703 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 11, !dbg !2450
  %704 = load ptr, ptr %602, align 8, !dbg !2452, !tbaa !1309
  %705 = getelementptr inbounds i8, ptr %704, i64 196, !dbg !2453
  %706 = load ptr, ptr %603, align 8, !dbg !2454, !tbaa !1309
  %707 = getelementptr inbounds i8, ptr %706, i64 388, !dbg !2455
  tail call void %702(ptr noundef nonnull %703, ptr noundef nonnull %705, ptr noundef nonnull %707) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 12, metadata !1944, metadata !DIExpression()), !dbg !2416
  %708 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %709 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 12, !dbg !2450
  %710 = load ptr, ptr %602, align 8, !dbg !2452, !tbaa !1309
  %711 = getelementptr inbounds i8, ptr %710, i64 136, !dbg !2453
  %712 = load ptr, ptr %603, align 8, !dbg !2454, !tbaa !1309
  %713 = getelementptr inbounds i8, ptr %712, i64 264, !dbg !2455
  tail call void %708(ptr noundef nonnull %709, ptr noundef nonnull %711, ptr noundef nonnull %713) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 13, metadata !1944, metadata !DIExpression()), !dbg !2416
  %714 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %715 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 13, !dbg !2450
  %716 = load ptr, ptr %602, align 8, !dbg !2452, !tbaa !1309
  %717 = getelementptr inbounds i8, ptr %716, i64 140, !dbg !2453
  %718 = load ptr, ptr %603, align 8, !dbg !2454, !tbaa !1309
  %719 = getelementptr inbounds i8, ptr %718, i64 268, !dbg !2455
  tail call void %714(ptr noundef nonnull %715, ptr noundef nonnull %717, ptr noundef nonnull %719) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 14, metadata !1944, metadata !DIExpression()), !dbg !2416
  %720 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %721 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 14, !dbg !2450
  %722 = load ptr, ptr %602, align 8, !dbg !2452, !tbaa !1309
  %723 = getelementptr inbounds i8, ptr %722, i64 200, !dbg !2453
  %724 = load ptr, ptr %603, align 8, !dbg !2454, !tbaa !1309
  %725 = getelementptr inbounds i8, ptr %724, i64 392, !dbg !2455
  tail call void %720(ptr noundef nonnull %721, ptr noundef nonnull %723, ptr noundef nonnull %725) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 15, metadata !1944, metadata !DIExpression()), !dbg !2416
  %726 = load ptr, ptr %639, align 8, !dbg !2446, !tbaa !1354
  %727 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 15, !dbg !2450
  %728 = load ptr, ptr %602, align 8, !dbg !2452, !tbaa !1309
  %729 = getelementptr inbounds i8, ptr %728, i64 204, !dbg !2453
  %730 = load ptr, ptr %603, align 8, !dbg !2454, !tbaa !1309
  %731 = getelementptr inbounds i8, ptr %730, i64 396, !dbg !2455
  tail call void %726(ptr noundef nonnull %727, ptr noundef nonnull %729, ptr noundef nonnull %731) #8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 16, metadata !1944, metadata !DIExpression()), !dbg !2416
  br label %1237, !dbg !2445

732:                                              ; preds = %594
  br i1 %600, label %929, label %733, !dbg !2456

733:                                              ; preds = %732
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #8, !dbg !2457
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1954, metadata !DIExpression()), !dbg !2457
  %734 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 12, !dbg !2458
  %735 = load i32, ptr %734, align 16, !dbg !2458, !tbaa !1377
  %736 = icmp eq i32 %735, 0, !dbg !2459
  %737 = and i1 %19, %736, !dbg !2460
  call void @llvm.dbg.value(metadata i1 %737, metadata !1914, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1991
  %738 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 8, !dbg !2461
  %739 = load ptr, ptr %738, align 16, !dbg !2461, !tbaa !2462
  %740 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, !dbg !2463
  %741 = load ptr, ptr %740, align 8, !dbg !2464, !tbaa !1309
  %742 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !2465
  %743 = load ptr, ptr %742, align 8, !dbg !2466, !tbaa !1309
  call void %739(ptr noundef nonnull %6, ptr noundef %741, ptr noundef %743) #8, !dbg !2467
  %744 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 13, !dbg !2468
  %745 = load i32, ptr %744, align 4, !dbg !2468, !tbaa !2469
  %746 = shl nsw i32 %745, 2, !dbg !2470
  %747 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 32, i64 1, !dbg !2471
  %748 = load i32, ptr %747, align 4, !dbg !2472, !tbaa !1683
  %749 = add i32 %748, %746, !dbg !2472
  store i32 %749, ptr %747, align 4, !dbg !2472, !tbaa !1683
  call void @llvm.dbg.value(metadata i32 0, metadata !1918, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 0, metadata !1945, metadata !DIExpression()), !dbg !2416
  %750 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 7
  %751 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1
  %752 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 1
  %753 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %754 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 25, i64 1
  %755 = sext i32 %9 to i64
  %756 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 27, i64 1
  %757 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %758 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 10
  call void @llvm.dbg.value(metadata i64 0, metadata !1918, metadata !DIExpression()), !dbg !1991
  %759 = icmp eq i32 %745, 0, !dbg !2473
  br i1 %759, label %762, label %760, !dbg !2475

760:                                              ; preds = %733
  %761 = load ptr, ptr %750, align 8, !dbg !2476, !tbaa !2477
  call void %761(ptr noundef nonnull %6, ptr noundef nonnull %751, ptr noundef nonnull %752, i32 noundef 64) #8, !dbg !2478
  br label %762, !dbg !2478

762:                                              ; preds = %760, %733
  call void @llvm.dbg.value(metadata ptr %0, metadata !1458, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata ptr %6, metadata !1463, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i32 %9, metadata !1464, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i64 0, metadata !1466, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i1 true, metadata !1467, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2479
  %763 = load i32, ptr %734, align 16, !dbg !2481, !tbaa !1377
  %764 = icmp eq i32 %763, 0, !dbg !2482
  br i1 %764, label %766, label %765, !dbg !2483

765:                                              ; preds = %762
  call void @llvm.dbg.value(metadata i32 1, metadata !1467, metadata !DIExpression()), !dbg !2479
  call void @x264_quant_8x8_trellis(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 1, i32 noundef %9, i32 noundef 0, i32 noundef 0) #8, !dbg !2484
  br label %772, !dbg !2484

766:                                              ; preds = %762
  %767 = load ptr, ptr %753, align 8, !dbg !2485, !tbaa !1477
  %768 = load ptr, ptr %754, align 8, !dbg !2486, !tbaa !1309
  %769 = getelementptr inbounds [64 x i16], ptr %768, i64 %755, !dbg !2486
  %770 = load ptr, ptr %756, align 8, !dbg !2487, !tbaa !1309
  %771 = getelementptr inbounds [64 x i16], ptr %770, i64 %755, !dbg !2487
  call void %767(ptr noundef nonnull %6, ptr noundef %769, ptr noundef %771) #8, !dbg !2488
  br label %772

772:                                              ; preds = %765, %766
  %773 = load ptr, ptr %757, align 16, !dbg !2489, !tbaa !1483
  %774 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 0, !dbg !2490
  call void %773(ptr noundef nonnull %774, ptr noundef nonnull %6) #8, !dbg !2491
  br i1 %737, label %775, label %780, !dbg !2492

775:                                              ; preds = %772
  %776 = load ptr, ptr %758, align 8, !dbg !2493, !tbaa !2494
  %777 = call i32 %776(ptr noundef nonnull %774) #8, !dbg !2495
  call void @llvm.dbg.value(metadata i32 %777, metadata !1959, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i32 %777, metadata !1945, metadata !DIExpression()), !dbg !2416
  %778 = icmp slt i32 %777, 4, !dbg !2497
  br i1 %778, label %779, label %784, !dbg !2499

779:                                              ; preds = %775
  store i8 0, ptr %4, align 4, !dbg !2500, !tbaa !1314
  br label %784, !dbg !2501

780:                                              ; preds = %772
  call void @llvm.dbg.value(metadata ptr %6, metadata !171, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 128, metadata !172, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2504
  %781 = call i32 asm "movq     ($1),    %mm0 \0Apor      8($1),   %mm0 \0Apor      16($1),  %mm0 \0Apor      24($1),  %mm0 \0Apor      32($1),  %mm0 \0Apor      40($1),  %mm0 \0Apor      48($1),  %mm0 \0Apor      56($1),  %mm0 \0Apor      64($1),  %mm0 \0Apor      72($1),  %mm0 \0Apor      80($1),  %mm0 \0Apor      88($1),  %mm0 \0Apor      96($1),  %mm0 \0Apor      104($1), %mm0 \0Apor      112($1), %mm0 \0Apor      120($1), %mm0 \0Apacksswb %mm0,   %mm0 \0Amovd     %mm0,   $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %6, ptr nonnull elementtype(%struct.anon.14) %6) #9, !dbg !2505, !srcloc !2342
  call void @llvm.dbg.value(metadata i32 %781, metadata !173, metadata !DIExpression()), !dbg !2504
  %782 = icmp ne i32 %781, 0, !dbg !2506
  %783 = zext i1 %782 to i8, !dbg !2507
  store i8 %783, ptr %4, align 4, !dbg !2508, !tbaa !1314
  br label %784

784:                                              ; preds = %775, %779, %780
  %785 = phi i8 [ %783, %780 ], [ 0, %779 ], [ 1, %775 ]
  %786 = phi i32 [ 0, %780 ], [ %777, %779 ], [ %777, %775 ], !dbg !2416
  call void @llvm.dbg.value(metadata i64 1, metadata !1918, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 %786, metadata !1945, metadata !DIExpression()), !dbg !2416
  %787 = load i32, ptr %744, align 4, !dbg !2509, !tbaa !2469
  %788 = icmp eq i32 %787, 0, !dbg !2473
  br i1 %788, label %792, label %789, !dbg !2475

789:                                              ; preds = %784
  %790 = load ptr, ptr %750, align 8, !dbg !2476, !tbaa !2477
  %791 = getelementptr inbounds [4 x [8 x [8 x i16]]], ptr %6, i64 0, i64 1, !dbg !2510
  call void %790(ptr noundef nonnull %791, ptr noundef nonnull %751, ptr noundef nonnull %752, i32 noundef 64) #8, !dbg !2478
  br label %792, !dbg !2478

792:                                              ; preds = %789, %784
  %793 = getelementptr inbounds [4 x [8 x [8 x i16]]], ptr %6, i64 0, i64 1, !dbg !2511
  call void @llvm.dbg.value(metadata ptr %0, metadata !1458, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata ptr %793, metadata !1463, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i32 %9, metadata !1464, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i64 1, metadata !1466, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i1 true, metadata !1467, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2479
  %794 = load i32, ptr %734, align 16, !dbg !2481, !tbaa !1377
  %795 = icmp eq i32 %794, 0, !dbg !2482
  br i1 %795, label %797, label %796, !dbg !2483

796:                                              ; preds = %792
  call void @llvm.dbg.value(metadata i32 1, metadata !1467, metadata !DIExpression()), !dbg !2479
  call void @x264_quant_8x8_trellis(ptr noundef nonnull %0, ptr noundef nonnull %793, i32 noundef 1, i32 noundef %9, i32 noundef 0, i32 noundef 1) #8, !dbg !2484
  br label %803, !dbg !2484

797:                                              ; preds = %792
  %798 = load ptr, ptr %753, align 8, !dbg !2485, !tbaa !1477
  %799 = load ptr, ptr %754, align 8, !dbg !2486, !tbaa !1309
  %800 = getelementptr inbounds [64 x i16], ptr %799, i64 %755, !dbg !2486
  %801 = load ptr, ptr %756, align 8, !dbg !2487, !tbaa !1309
  %802 = getelementptr inbounds [64 x i16], ptr %801, i64 %755, !dbg !2487
  call void %798(ptr noundef nonnull %793, ptr noundef %800, ptr noundef %802) #8, !dbg !2488
  br label %803

803:                                              ; preds = %797, %796
  %804 = load ptr, ptr %757, align 16, !dbg !2489, !tbaa !1483
  %805 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 1, !dbg !2490
  call void %804(ptr noundef nonnull %805, ptr noundef nonnull %793) #8, !dbg !2491
  br i1 %737, label %810, label %806, !dbg !2492

806:                                              ; preds = %803
  call void @llvm.dbg.value(metadata ptr %793, metadata !171, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 128, metadata !172, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2504
  %807 = call i32 asm "movq     ($1),    %mm0 \0Apor      8($1),   %mm0 \0Apor      16($1),  %mm0 \0Apor      24($1),  %mm0 \0Apor      32($1),  %mm0 \0Apor      40($1),  %mm0 \0Apor      48($1),  %mm0 \0Apor      56($1),  %mm0 \0Apor      64($1),  %mm0 \0Apor      72($1),  %mm0 \0Apor      80($1),  %mm0 \0Apor      88($1),  %mm0 \0Apor      96($1),  %mm0 \0Apor      104($1), %mm0 \0Apor      112($1), %mm0 \0Apor      120($1), %mm0 \0Apacksswb %mm0,   %mm0 \0Amovd     %mm0,   $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %793, ptr nonnull elementtype(%struct.anon.14) %793) #9, !dbg !2505, !srcloc !2342
  call void @llvm.dbg.value(metadata i32 %807, metadata !173, metadata !DIExpression()), !dbg !2504
  %808 = icmp ne i32 %807, 0, !dbg !2506
  %809 = zext i1 %808 to i8, !dbg !2507
  br label %815

810:                                              ; preds = %803
  %811 = load ptr, ptr %758, align 8, !dbg !2493, !tbaa !2494
  %812 = call i32 %811(ptr noundef nonnull %805) #8, !dbg !2495
  call void @llvm.dbg.value(metadata i32 %812, metadata !1959, metadata !DIExpression()), !dbg !2496
  %813 = add nsw i32 %812, %786, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %813, metadata !1945, metadata !DIExpression()), !dbg !2416
  %814 = icmp slt i32 %812, 4, !dbg !2497
  br i1 %814, label %815, label %819, !dbg !2499

815:                                              ; preds = %810, %806
  %816 = phi i8 [ %809, %806 ], [ 0, %810 ]
  %817 = phi i32 [ %786, %806 ], [ %813, %810 ]
  %818 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1, !dbg !2513
  store i8 %816, ptr %818, align 1, !dbg !2513, !tbaa !1314
  br label %819, !dbg !2509

819:                                              ; preds = %815, %810
  %820 = phi i8 [ 1, %810 ], [ %816, %815 ]
  %821 = phi i32 [ %813, %810 ], [ %817, %815 ], !dbg !2416
  call void @llvm.dbg.value(metadata i64 2, metadata !1918, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 %821, metadata !1945, metadata !DIExpression()), !dbg !2416
  %822 = load i32, ptr %744, align 4, !dbg !2509, !tbaa !2469
  %823 = icmp eq i32 %822, 0, !dbg !2473
  br i1 %823, label %827, label %824, !dbg !2475

824:                                              ; preds = %819
  %825 = load ptr, ptr %750, align 8, !dbg !2476, !tbaa !2477
  %826 = getelementptr inbounds [4 x [8 x [8 x i16]]], ptr %6, i64 0, i64 2, !dbg !2510
  call void %825(ptr noundef nonnull %826, ptr noundef nonnull %751, ptr noundef nonnull %752, i32 noundef 64) #8, !dbg !2478
  br label %827, !dbg !2478

827:                                              ; preds = %824, %819
  %828 = getelementptr inbounds [4 x [8 x [8 x i16]]], ptr %6, i64 0, i64 2, !dbg !2511
  call void @llvm.dbg.value(metadata ptr %0, metadata !1458, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata ptr %828, metadata !1463, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i32 %9, metadata !1464, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i64 2, metadata !1466, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i1 true, metadata !1467, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2479
  %829 = load i32, ptr %734, align 16, !dbg !2481, !tbaa !1377
  %830 = icmp eq i32 %829, 0, !dbg !2482
  br i1 %830, label %832, label %831, !dbg !2483

831:                                              ; preds = %827
  call void @llvm.dbg.value(metadata i32 1, metadata !1467, metadata !DIExpression()), !dbg !2479
  call void @x264_quant_8x8_trellis(ptr noundef nonnull %0, ptr noundef nonnull %828, i32 noundef 1, i32 noundef %9, i32 noundef 0, i32 noundef 2) #8, !dbg !2484
  br label %838, !dbg !2484

832:                                              ; preds = %827
  %833 = load ptr, ptr %753, align 8, !dbg !2485, !tbaa !1477
  %834 = load ptr, ptr %754, align 8, !dbg !2486, !tbaa !1309
  %835 = getelementptr inbounds [64 x i16], ptr %834, i64 %755, !dbg !2486
  %836 = load ptr, ptr %756, align 8, !dbg !2487, !tbaa !1309
  %837 = getelementptr inbounds [64 x i16], ptr %836, i64 %755, !dbg !2487
  call void %833(ptr noundef nonnull %828, ptr noundef %835, ptr noundef %837) #8, !dbg !2488
  br label %838

838:                                              ; preds = %832, %831
  %839 = load ptr, ptr %757, align 16, !dbg !2489, !tbaa !1483
  %840 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 2, !dbg !2490
  call void %839(ptr noundef nonnull %840, ptr noundef nonnull %828) #8, !dbg !2491
  br i1 %737, label %845, label %841, !dbg !2492

841:                                              ; preds = %838
  call void @llvm.dbg.value(metadata ptr %828, metadata !171, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 128, metadata !172, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2504
  %842 = call i32 asm "movq     ($1),    %mm0 \0Apor      8($1),   %mm0 \0Apor      16($1),  %mm0 \0Apor      24($1),  %mm0 \0Apor      32($1),  %mm0 \0Apor      40($1),  %mm0 \0Apor      48($1),  %mm0 \0Apor      56($1),  %mm0 \0Apor      64($1),  %mm0 \0Apor      72($1),  %mm0 \0Apor      80($1),  %mm0 \0Apor      88($1),  %mm0 \0Apor      96($1),  %mm0 \0Apor      104($1), %mm0 \0Apor      112($1), %mm0 \0Apor      120($1), %mm0 \0Apacksswb %mm0,   %mm0 \0Amovd     %mm0,   $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %828, ptr nonnull elementtype(%struct.anon.14) %828) #9, !dbg !2505, !srcloc !2342
  call void @llvm.dbg.value(metadata i32 %842, metadata !173, metadata !DIExpression()), !dbg !2504
  %843 = icmp ne i32 %842, 0, !dbg !2506
  %844 = zext i1 %843 to i8, !dbg !2507
  br label %850

845:                                              ; preds = %838
  %846 = load ptr, ptr %758, align 8, !dbg !2493, !tbaa !2494
  %847 = call i32 %846(ptr noundef nonnull %840) #8, !dbg !2495
  call void @llvm.dbg.value(metadata i32 %847, metadata !1959, metadata !DIExpression()), !dbg !2496
  %848 = add nsw i32 %847, %821, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %848, metadata !1945, metadata !DIExpression()), !dbg !2416
  %849 = icmp slt i32 %847, 4, !dbg !2497
  br i1 %849, label %850, label %854, !dbg !2499

850:                                              ; preds = %845, %841
  %851 = phi i8 [ %844, %841 ], [ 0, %845 ]
  %852 = phi i32 [ %821, %841 ], [ %848, %845 ]
  %853 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2, !dbg !2513
  store i8 %851, ptr %853, align 2, !dbg !2513, !tbaa !1314
  br label %854, !dbg !2509

854:                                              ; preds = %850, %845
  %855 = phi i8 [ 1, %845 ], [ %851, %850 ]
  %856 = phi i32 [ %848, %845 ], [ %852, %850 ], !dbg !2416
  call void @llvm.dbg.value(metadata i64 3, metadata !1918, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 %856, metadata !1945, metadata !DIExpression()), !dbg !2416
  %857 = load i32, ptr %744, align 4, !dbg !2509, !tbaa !2469
  %858 = icmp eq i32 %857, 0, !dbg !2473
  br i1 %858, label %862, label %859, !dbg !2475

859:                                              ; preds = %854
  %860 = load ptr, ptr %750, align 8, !dbg !2476, !tbaa !2477
  %861 = getelementptr inbounds [4 x [8 x [8 x i16]]], ptr %6, i64 0, i64 3, !dbg !2510
  call void %860(ptr noundef nonnull %861, ptr noundef nonnull %751, ptr noundef nonnull %752, i32 noundef 64) #8, !dbg !2478
  br label %862, !dbg !2478

862:                                              ; preds = %859, %854
  %863 = getelementptr inbounds [4 x [8 x [8 x i16]]], ptr %6, i64 0, i64 3, !dbg !2511
  call void @llvm.dbg.value(metadata ptr %0, metadata !1458, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata ptr %863, metadata !1463, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i32 %9, metadata !1464, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i64 3, metadata !1466, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i1 true, metadata !1467, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2479
  %864 = load i32, ptr %734, align 16, !dbg !2481, !tbaa !1377
  %865 = icmp eq i32 %864, 0, !dbg !2482
  br i1 %865, label %867, label %866, !dbg !2483

866:                                              ; preds = %862
  call void @llvm.dbg.value(metadata i32 1, metadata !1467, metadata !DIExpression()), !dbg !2479
  call void @x264_quant_8x8_trellis(ptr noundef nonnull %0, ptr noundef nonnull %863, i32 noundef 1, i32 noundef %9, i32 noundef 0, i32 noundef 3) #8, !dbg !2484
  br label %873, !dbg !2484

867:                                              ; preds = %862
  %868 = load ptr, ptr %753, align 8, !dbg !2485, !tbaa !1477
  %869 = load ptr, ptr %754, align 8, !dbg !2486, !tbaa !1309
  %870 = getelementptr inbounds [64 x i16], ptr %869, i64 %755, !dbg !2486
  %871 = load ptr, ptr %756, align 8, !dbg !2487, !tbaa !1309
  %872 = getelementptr inbounds [64 x i16], ptr %871, i64 %755, !dbg !2487
  call void %868(ptr noundef nonnull %863, ptr noundef %870, ptr noundef %872) #8, !dbg !2488
  br label %873

873:                                              ; preds = %867, %866
  %874 = load ptr, ptr %757, align 16, !dbg !2489, !tbaa !1483
  %875 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 3, !dbg !2490
  call void %874(ptr noundef nonnull %875, ptr noundef nonnull %863) #8, !dbg !2491
  br i1 %737, label %881, label %876, !dbg !2492

876:                                              ; preds = %873
  call void @llvm.dbg.value(metadata ptr %863, metadata !171, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 128, metadata !172, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2504
  %877 = call i32 asm "movq     ($1),    %mm0 \0Apor      8($1),   %mm0 \0Apor      16($1),  %mm0 \0Apor      24($1),  %mm0 \0Apor      32($1),  %mm0 \0Apor      40($1),  %mm0 \0Apor      48($1),  %mm0 \0Apor      56($1),  %mm0 \0Apor      64($1),  %mm0 \0Apor      72($1),  %mm0 \0Apor      80($1),  %mm0 \0Apor      88($1),  %mm0 \0Apor      96($1),  %mm0 \0Apor      104($1), %mm0 \0Apor      112($1), %mm0 \0Apor      120($1), %mm0 \0Apacksswb %mm0,   %mm0 \0Amovd     %mm0,   $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %863, ptr nonnull elementtype(%struct.anon.14) %863) #9, !dbg !2505, !srcloc !2342
  call void @llvm.dbg.value(metadata i32 %877, metadata !173, metadata !DIExpression()), !dbg !2504
  %878 = icmp ne i32 %877, 0, !dbg !2506
  %879 = zext i1 %878 to i8, !dbg !2507
  %880 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3, !dbg !2514
  store i8 %879, ptr %880, align 1, !dbg !2508, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 %856, metadata !1945, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i64 4, metadata !1918, metadata !DIExpression()), !dbg !1991
  br label %892, !dbg !2515

881:                                              ; preds = %873
  %882 = load ptr, ptr %758, align 8, !dbg !2493, !tbaa !2494
  %883 = call i32 %882(ptr noundef nonnull %875) #8, !dbg !2495
  call void @llvm.dbg.value(metadata i32 %883, metadata !1959, metadata !DIExpression()), !dbg !2496
  %884 = add nsw i32 %883, %856, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %884, metadata !1945, metadata !DIExpression()), !dbg !2416
  %885 = icmp slt i32 %883, 4, !dbg !2497
  br i1 %885, label %886, label %888, !dbg !2499

886:                                              ; preds = %881
  %887 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3, !dbg !2501
  store i8 0, ptr %887, align 1, !dbg !2500, !tbaa !1314
  br label %888, !dbg !2501

888:                                              ; preds = %886, %881
  %889 = phi i8 [ 0, %886 ], [ 1, %881 ]
  call void @llvm.dbg.value(metadata i32 %884, metadata !1945, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i64 4, metadata !1918, metadata !DIExpression()), !dbg !1991
  %890 = icmp slt i32 %884, 6, !dbg !2517
  %891 = select i1 %890, i1 %737, i1 false, !dbg !2515
  br i1 %891, label %898, label %892, !dbg !2515

892:                                              ; preds = %876, %888
  %893 = phi i8 [ %879, %876 ], [ %889, %888 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !1918, metadata !DIExpression()), !dbg !1991
  %894 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 4
  %895 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 21, i64 1
  %896 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 7
  call void @llvm.dbg.value(metadata i64 0, metadata !1918, metadata !DIExpression()), !dbg !1991
  %897 = icmp eq i8 %785, 0, !dbg !2518
  br i1 %897, label %904, label %899, !dbg !2523

898:                                              ; preds = %888
  store i32 0, ptr %4, align 4, !dbg !2524, !tbaa !1683
  br label %928, !dbg !2525

899:                                              ; preds = %892
  %900 = load ptr, ptr %894, align 8, !dbg !2526, !tbaa !1487
  %901 = load ptr, ptr %895, align 8, !dbg !2528, !tbaa !1309
  call void %900(ptr noundef nonnull %6, ptr noundef %901, i32 noundef %9) #8, !dbg !2529
  %902 = load ptr, ptr %896, align 8, !dbg !2530, !tbaa !1492
  %903 = load ptr, ptr %742, align 8, !dbg !2531, !tbaa !1309
  call void %902(ptr noundef %903, ptr noundef nonnull %6) #8, !dbg !2532
  br label %904, !dbg !2533

904:                                              ; preds = %892, %899
  call void @llvm.dbg.value(metadata i64 1, metadata !1918, metadata !DIExpression()), !dbg !1991
  %905 = icmp eq i8 %820, 0, !dbg !2518
  br i1 %905, label %912, label %906, !dbg !2523

906:                                              ; preds = %904
  %907 = load ptr, ptr %894, align 8, !dbg !2526, !tbaa !1487
  %908 = load ptr, ptr %895, align 8, !dbg !2528, !tbaa !1309
  call void %907(ptr noundef nonnull %793, ptr noundef %908, i32 noundef %9) #8, !dbg !2529
  %909 = load ptr, ptr %896, align 8, !dbg !2530, !tbaa !1492
  %910 = load ptr, ptr %742, align 8, !dbg !2531, !tbaa !1309
  %911 = getelementptr inbounds i8, ptr %910, i64 8, !dbg !2531
  call void %909(ptr noundef nonnull %911, ptr noundef nonnull %793) #8, !dbg !2532
  br label %912, !dbg !2533

912:                                              ; preds = %906, %904
  call void @llvm.dbg.value(metadata i64 2, metadata !1918, metadata !DIExpression()), !dbg !1991
  %913 = icmp eq i8 %855, 0, !dbg !2518
  br i1 %913, label %920, label %914, !dbg !2523

914:                                              ; preds = %912
  %915 = load ptr, ptr %894, align 8, !dbg !2526, !tbaa !1487
  %916 = load ptr, ptr %895, align 8, !dbg !2528, !tbaa !1309
  call void %915(ptr noundef nonnull %828, ptr noundef %916, i32 noundef %9) #8, !dbg !2529
  %917 = load ptr, ptr %896, align 8, !dbg !2530, !tbaa !1492
  %918 = load ptr, ptr %742, align 8, !dbg !2531, !tbaa !1309
  %919 = getelementptr inbounds i8, ptr %918, i64 256, !dbg !2531
  call void %917(ptr noundef nonnull %919, ptr noundef nonnull %828) #8, !dbg !2532
  br label %920, !dbg !2533

920:                                              ; preds = %914, %912
  call void @llvm.dbg.value(metadata i64 3, metadata !1918, metadata !DIExpression()), !dbg !1991
  %921 = icmp eq i8 %893, 0, !dbg !2518
  br i1 %921, label %928, label %922, !dbg !2523

922:                                              ; preds = %920
  %923 = load ptr, ptr %894, align 8, !dbg !2526, !tbaa !1487
  %924 = load ptr, ptr %895, align 8, !dbg !2528, !tbaa !1309
  call void %923(ptr noundef nonnull %863, ptr noundef %924, i32 noundef %9) #8, !dbg !2529
  %925 = load ptr, ptr %896, align 8, !dbg !2530, !tbaa !1492
  %926 = load ptr, ptr %742, align 8, !dbg !2531, !tbaa !1309
  %927 = getelementptr inbounds i8, ptr %926, i64 264, !dbg !2531
  call void %925(ptr noundef nonnull %927, ptr noundef nonnull %863) #8, !dbg !2532
  br label %928, !dbg !2533

928:                                              ; preds = %920, %922, %898
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #8, !dbg !2534
  br label %1237, !dbg !2535

929:                                              ; preds = %732
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #8, !dbg !2536
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1965, metadata !DIExpression()), !dbg !2536
  %930 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 4, !dbg !2537
  %931 = load ptr, ptr %930, align 16, !dbg !2537, !tbaa !2204
  %932 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, !dbg !2538
  %933 = load ptr, ptr %932, align 8, !dbg !2539, !tbaa !1309
  %934 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !2540
  %935 = load ptr, ptr %934, align 8, !dbg !2541, !tbaa !1309
  call void %931(ptr noundef nonnull %7, ptr noundef %933, ptr noundef %935) #8, !dbg !2542
  %936 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 13, !dbg !2543
  %937 = load i32, ptr %936, align 4, !dbg !2543, !tbaa !2469
  %938 = shl nsw i32 %937, 4, !dbg !2544
  %939 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 32, !dbg !2545
  %940 = load i32, ptr %939, align 16, !dbg !2546, !tbaa !1683
  %941 = add i32 %940, %938, !dbg !2546
  store i32 %941, ptr %939, align 16, !dbg !2546, !tbaa !1683
  call void @llvm.dbg.value(metadata i32 0, metadata !1942, metadata !DIExpression()), !dbg !2416
  %942 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 7
  %943 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30
  %944 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31
  %945 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 12
  %946 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 1
  %947 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24, i64 1
  %948 = sext i32 %9 to i64
  %949 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26, i64 1
  %950 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %951 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 9
  call void @llvm.dbg.value(metadata i32 0, metadata !1945, metadata !DIExpression()), !dbg !2416
  br label %952, !dbg !2547

952:                                              ; preds = %929, %1147
  %953 = phi i64 [ 0, %929 ], [ %1150, %1147 ]
  %954 = phi i32 [ 0, %929 ], [ %1149, %1147 ]
  call void @llvm.dbg.value(metadata i32 %954, metadata !1945, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i64 %953, metadata !1942, metadata !DIExpression()), !dbg !2416
  %955 = shl nsw i64 %953, 2
  call void @llvm.dbg.value(metadata i32 0, metadata !1969, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 0, metadata !1944, metadata !DIExpression()), !dbg !2416
  %956 = load i32, ptr %936, align 4, !dbg !2549, !tbaa !2469
  %957 = icmp eq i32 %956, 0, !dbg !2554
  br i1 %19, label %959, label %958

958:                                              ; preds = %952
  call void @llvm.dbg.value(metadata i32 poison, metadata !1969, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 0, metadata !1944, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i64 %955, metadata !1918, metadata !DIExpression()), !dbg !1991
  br i1 %957, label %963, label %960, !dbg !2555

959:                                              ; preds = %952
  call void @llvm.dbg.value(metadata i32 0, metadata !1969, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 0, metadata !1944, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i64 %955, metadata !1918, metadata !DIExpression()), !dbg !1991
  br i1 %957, label %1044, label %1041, !dbg !2555

960:                                              ; preds = %958
  %961 = load ptr, ptr %942, align 8, !dbg !2556, !tbaa !2477
  %962 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %955, !dbg !2557
  call void %961(ptr noundef nonnull %962, ptr noundef nonnull %943, ptr noundef nonnull %944, i32 noundef 16) #8, !dbg !2558
  br label %963, !dbg !2558

963:                                              ; preds = %960, %958
  %964 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %955, !dbg !2559
  call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %964, metadata !1367, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 %9, metadata !1368, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 2, metadata !1369, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 0, metadata !1370, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %955, metadata !1371, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i1 true, metadata !1372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2560
  %965 = load i32, ptr %945, align 16, !dbg !2562, !tbaa !1377
  %966 = icmp eq i32 %965, 0, !dbg !2563
  br i1 %966, label %969, label %967, !dbg !2564

967:                                              ; preds = %963
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2560
  %968 = trunc i64 %955 to i32, !dbg !2565
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %964, i32 noundef 1, i32 noundef %9, i32 noundef 2, i32 noundef 0, i32 noundef %968) #8, !dbg !2565
  br label %975, !dbg !2565

969:                                              ; preds = %963
  %970 = load ptr, ptr %946, align 8, !dbg !2566, !tbaa !1382
  %971 = load ptr, ptr %947, align 8, !dbg !2567, !tbaa !1309
  %972 = getelementptr inbounds [16 x i16], ptr %971, i64 %948, !dbg !2567
  %973 = load ptr, ptr %949, align 8, !dbg !2568, !tbaa !1309
  %974 = getelementptr inbounds [16 x i16], ptr %973, i64 %948, !dbg !2568
  call void %970(ptr noundef nonnull %964, ptr noundef %972, ptr noundef %974) #8, !dbg !2569
  br label %975

975:                                              ; preds = %969, %967
  %976 = load ptr, ptr %950, align 8, !dbg !2570, !tbaa !1408
  %977 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %955, !dbg !2571
  call void %976(ptr noundef nonnull %977, ptr noundef nonnull %964) #8, !dbg !2572
  call void @llvm.dbg.value(metadata i32 poison, metadata !1969, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 1, metadata !1944, metadata !DIExpression()), !dbg !2416
  %978 = or i64 %955, 1, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %978, metadata !1918, metadata !DIExpression()), !dbg !1991
  %979 = load i32, ptr %936, align 4, !dbg !2549, !tbaa !2469
  %980 = icmp eq i32 %979, 0, !dbg !2554
  br i1 %980, label %984, label %981, !dbg !2555

981:                                              ; preds = %975
  %982 = load ptr, ptr %942, align 8, !dbg !2556, !tbaa !2477
  %983 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %978, !dbg !2557
  call void %982(ptr noundef nonnull %983, ptr noundef nonnull %943, ptr noundef nonnull %944, i32 noundef 16) #8, !dbg !2558
  br label %984, !dbg !2558

984:                                              ; preds = %981, %975
  %985 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %978, !dbg !2559
  call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %985, metadata !1367, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 %9, metadata !1368, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 2, metadata !1369, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 0, metadata !1370, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %978, metadata !1371, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i1 true, metadata !1372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2560
  %986 = load i32, ptr %945, align 16, !dbg !2562, !tbaa !1377
  %987 = icmp eq i32 %986, 0, !dbg !2563
  br i1 %987, label %990, label %988, !dbg !2564

988:                                              ; preds = %984
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2560
  %989 = trunc i64 %978 to i32, !dbg !2565
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %985, i32 noundef 1, i32 noundef %9, i32 noundef 2, i32 noundef 0, i32 noundef %989) #8, !dbg !2565
  br label %996, !dbg !2565

990:                                              ; preds = %984
  %991 = load ptr, ptr %946, align 8, !dbg !2566, !tbaa !1382
  %992 = load ptr, ptr %947, align 8, !dbg !2567, !tbaa !1309
  %993 = getelementptr inbounds [16 x i16], ptr %992, i64 %948, !dbg !2567
  %994 = load ptr, ptr %949, align 8, !dbg !2568, !tbaa !1309
  %995 = getelementptr inbounds [16 x i16], ptr %994, i64 %948, !dbg !2568
  call void %991(ptr noundef nonnull %985, ptr noundef %993, ptr noundef %995) #8, !dbg !2569
  br label %996

996:                                              ; preds = %990, %988
  %997 = load ptr, ptr %950, align 8, !dbg !2570, !tbaa !1408
  %998 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %978, !dbg !2571
  call void %997(ptr noundef nonnull %998, ptr noundef nonnull %985) #8, !dbg !2572
  call void @llvm.dbg.value(metadata i32 poison, metadata !1969, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 2, metadata !1944, metadata !DIExpression()), !dbg !2416
  %999 = or i64 %955, 2, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %999, metadata !1918, metadata !DIExpression()), !dbg !1991
  %1000 = load i32, ptr %936, align 4, !dbg !2549, !tbaa !2469
  %1001 = icmp eq i32 %1000, 0, !dbg !2554
  br i1 %1001, label %1005, label %1002, !dbg !2555

1002:                                             ; preds = %996
  %1003 = load ptr, ptr %942, align 8, !dbg !2556, !tbaa !2477
  %1004 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %999, !dbg !2557
  call void %1003(ptr noundef nonnull %1004, ptr noundef nonnull %943, ptr noundef nonnull %944, i32 noundef 16) #8, !dbg !2558
  br label %1005, !dbg !2558

1005:                                             ; preds = %1002, %996
  %1006 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %999, !dbg !2559
  call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %1006, metadata !1367, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 %9, metadata !1368, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 2, metadata !1369, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 0, metadata !1370, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %999, metadata !1371, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i1 true, metadata !1372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2560
  %1007 = load i32, ptr %945, align 16, !dbg !2562, !tbaa !1377
  %1008 = icmp eq i32 %1007, 0, !dbg !2563
  br i1 %1008, label %1011, label %1009, !dbg !2564

1009:                                             ; preds = %1005
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2560
  %1010 = trunc i64 %999 to i32, !dbg !2565
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %1006, i32 noundef 1, i32 noundef %9, i32 noundef 2, i32 noundef 0, i32 noundef %1010) #8, !dbg !2565
  br label %1017, !dbg !2565

1011:                                             ; preds = %1005
  %1012 = load ptr, ptr %946, align 8, !dbg !2566, !tbaa !1382
  %1013 = load ptr, ptr %947, align 8, !dbg !2567, !tbaa !1309
  %1014 = getelementptr inbounds [16 x i16], ptr %1013, i64 %948, !dbg !2567
  %1015 = load ptr, ptr %949, align 8, !dbg !2568, !tbaa !1309
  %1016 = getelementptr inbounds [16 x i16], ptr %1015, i64 %948, !dbg !2568
  call void %1012(ptr noundef nonnull %1006, ptr noundef %1014, ptr noundef %1016) #8, !dbg !2569
  br label %1017

1017:                                             ; preds = %1011, %1009
  %1018 = load ptr, ptr %950, align 8, !dbg !2570, !tbaa !1408
  %1019 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %999, !dbg !2571
  call void %1018(ptr noundef nonnull %1019, ptr noundef nonnull %1006) #8, !dbg !2572
  call void @llvm.dbg.value(metadata i32 poison, metadata !1969, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 3, metadata !1944, metadata !DIExpression()), !dbg !2416
  %1020 = or i64 %955, 3, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %1020, metadata !1918, metadata !DIExpression()), !dbg !1991
  %1021 = load i32, ptr %936, align 4, !dbg !2549, !tbaa !2469
  %1022 = icmp eq i32 %1021, 0, !dbg !2554
  br i1 %1022, label %1026, label %1023, !dbg !2555

1023:                                             ; preds = %1017
  %1024 = load ptr, ptr %942, align 8, !dbg !2556, !tbaa !2477
  %1025 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %1020, !dbg !2557
  call void %1024(ptr noundef nonnull %1025, ptr noundef nonnull %943, ptr noundef nonnull %944, i32 noundef 16) #8, !dbg !2558
  br label %1026, !dbg !2558

1026:                                             ; preds = %1023, %1017
  %1027 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %1020, !dbg !2559
  call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %1027, metadata !1367, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 %9, metadata !1368, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 2, metadata !1369, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 0, metadata !1370, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %1020, metadata !1371, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i1 true, metadata !1372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2560
  %1028 = load i32, ptr %945, align 16, !dbg !2562, !tbaa !1377
  %1029 = icmp eq i32 %1028, 0, !dbg !2563
  br i1 %1029, label %1032, label %1030, !dbg !2564

1030:                                             ; preds = %1026
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2560
  %1031 = trunc i64 %1020 to i32, !dbg !2565
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %1027, i32 noundef 1, i32 noundef %9, i32 noundef 2, i32 noundef 0, i32 noundef %1031) #8, !dbg !2565
  br label %1038, !dbg !2565

1032:                                             ; preds = %1026
  %1033 = load ptr, ptr %946, align 8, !dbg !2566, !tbaa !1382
  %1034 = load ptr, ptr %947, align 8, !dbg !2567, !tbaa !1309
  %1035 = getelementptr inbounds [16 x i16], ptr %1034, i64 %948, !dbg !2567
  %1036 = load ptr, ptr %949, align 8, !dbg !2568, !tbaa !1309
  %1037 = getelementptr inbounds [16 x i16], ptr %1036, i64 %948, !dbg !2568
  call void %1033(ptr noundef nonnull %1027, ptr noundef %1035, ptr noundef %1037) #8, !dbg !2569
  br label %1038

1038:                                             ; preds = %1032, %1030
  %1039 = load ptr, ptr %950, align 8, !dbg !2570, !tbaa !1408
  %1040 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %1020, !dbg !2571
  call void %1039(ptr noundef nonnull %1040, ptr noundef nonnull %1027) #8, !dbg !2572
  call void @llvm.dbg.value(metadata i32 poison, metadata !1969, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 4, metadata !1944, metadata !DIExpression()), !dbg !2416
  br label %1147, !dbg !2574

1041:                                             ; preds = %959
  %1042 = load ptr, ptr %942, align 8, !dbg !2556, !tbaa !2477
  %1043 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %955, !dbg !2557
  call void %1042(ptr noundef nonnull %1043, ptr noundef nonnull %943, ptr noundef nonnull %944, i32 noundef 16) #8, !dbg !2558
  br label %1044, !dbg !2558

1044:                                             ; preds = %1041, %959
  %1045 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %955, !dbg !2559
  call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %1045, metadata !1367, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 %9, metadata !1368, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 2, metadata !1369, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 0, metadata !1370, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %955, metadata !1371, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i1 true, metadata !1372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2560
  %1046 = load i32, ptr %945, align 16, !dbg !2562, !tbaa !1377
  %1047 = icmp eq i32 %1046, 0, !dbg !2563
  br i1 %1047, label %1050, label %1048, !dbg !2564

1048:                                             ; preds = %1044
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2560
  %1049 = trunc i64 %955 to i32, !dbg !2565
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %1045, i32 noundef 1, i32 noundef %9, i32 noundef 2, i32 noundef 0, i32 noundef %1049) #8, !dbg !2565
  br label %1056, !dbg !2565

1050:                                             ; preds = %1044
  %1051 = load ptr, ptr %946, align 8, !dbg !2566, !tbaa !1382
  %1052 = load ptr, ptr %947, align 8, !dbg !2567, !tbaa !1309
  %1053 = getelementptr inbounds [16 x i16], ptr %1052, i64 %948, !dbg !2567
  %1054 = load ptr, ptr %949, align 8, !dbg !2568, !tbaa !1309
  %1055 = getelementptr inbounds [16 x i16], ptr %1054, i64 %948, !dbg !2568
  call void %1051(ptr noundef nonnull %1045, ptr noundef %1053, ptr noundef %1055) #8, !dbg !2569
  br label %1056

1056:                                             ; preds = %1048, %1050
  %1057 = load ptr, ptr %950, align 8, !dbg !2570, !tbaa !1408
  %1058 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %955, !dbg !2571
  call void %1057(ptr noundef nonnull %1058, ptr noundef nonnull %1045) #8, !dbg !2572
  %1059 = load ptr, ptr %951, align 8, !dbg !2575, !tbaa !2577
  %1060 = call i32 %1059(ptr noundef nonnull %1058) #8, !dbg !2578
  call void @llvm.dbg.value(metadata i32 %1060, metadata !1969, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 1, metadata !1944, metadata !DIExpression()), !dbg !2416
  %1061 = or i64 %955, 1, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %1061, metadata !1918, metadata !DIExpression()), !dbg !1991
  %1062 = load i32, ptr %936, align 4, !dbg !2549, !tbaa !2469
  %1063 = icmp eq i32 %1062, 0, !dbg !2554
  br i1 %1063, label %1067, label %1064, !dbg !2555

1064:                                             ; preds = %1056
  %1065 = load ptr, ptr %942, align 8, !dbg !2556, !tbaa !2477
  %1066 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %1061, !dbg !2557
  call void %1065(ptr noundef nonnull %1066, ptr noundef nonnull %943, ptr noundef nonnull %944, i32 noundef 16) #8, !dbg !2558
  br label %1067, !dbg !2558

1067:                                             ; preds = %1064, %1056
  %1068 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %1061, !dbg !2559
  call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %1068, metadata !1367, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 %9, metadata !1368, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 2, metadata !1369, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 0, metadata !1370, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %1061, metadata !1371, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i1 true, metadata !1372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2560
  %1069 = load i32, ptr %945, align 16, !dbg !2562, !tbaa !1377
  %1070 = icmp eq i32 %1069, 0, !dbg !2563
  br i1 %1070, label %1073, label %1071, !dbg !2564

1071:                                             ; preds = %1067
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2560
  %1072 = trunc i64 %1061 to i32, !dbg !2565
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %1068, i32 noundef 1, i32 noundef %9, i32 noundef 2, i32 noundef 0, i32 noundef %1072) #8, !dbg !2565
  br label %1079, !dbg !2565

1073:                                             ; preds = %1067
  %1074 = load ptr, ptr %946, align 8, !dbg !2566, !tbaa !1382
  %1075 = load ptr, ptr %947, align 8, !dbg !2567, !tbaa !1309
  %1076 = getelementptr inbounds [16 x i16], ptr %1075, i64 %948, !dbg !2567
  %1077 = load ptr, ptr %949, align 8, !dbg !2568, !tbaa !1309
  %1078 = getelementptr inbounds [16 x i16], ptr %1077, i64 %948, !dbg !2568
  call void %1074(ptr noundef nonnull %1068, ptr noundef %1076, ptr noundef %1078) #8, !dbg !2569
  br label %1079

1079:                                             ; preds = %1073, %1071
  %1080 = load ptr, ptr %950, align 8, !dbg !2570, !tbaa !1408
  %1081 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %1061, !dbg !2571
  call void %1080(ptr noundef nonnull %1081, ptr noundef nonnull %1068) #8, !dbg !2572
  %1082 = icmp slt i32 %1060, 7
  br i1 %1082, label %1083, label %1087, !dbg !2579

1083:                                             ; preds = %1079
  %1084 = load ptr, ptr %951, align 8, !dbg !2575, !tbaa !2577
  %1085 = call i32 %1084(ptr noundef nonnull %1081) #8, !dbg !2578
  %1086 = add nsw i32 %1085, %1060, !dbg !2580
  call void @llvm.dbg.value(metadata i32 %1086, metadata !1969, metadata !DIExpression()), !dbg !2548
  br label %1087, !dbg !2581

1087:                                             ; preds = %1083, %1079
  %1088 = phi i32 [ %1086, %1083 ], [ %1060, %1079 ], !dbg !2548
  call void @llvm.dbg.value(metadata i32 %1088, metadata !1969, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 2, metadata !1944, metadata !DIExpression()), !dbg !2416
  %1089 = or i64 %955, 2, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %1089, metadata !1918, metadata !DIExpression()), !dbg !1991
  %1090 = load i32, ptr %936, align 4, !dbg !2549, !tbaa !2469
  %1091 = icmp eq i32 %1090, 0, !dbg !2554
  br i1 %1091, label %1095, label %1092, !dbg !2555

1092:                                             ; preds = %1087
  %1093 = load ptr, ptr %942, align 8, !dbg !2556, !tbaa !2477
  %1094 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %1089, !dbg !2557
  call void %1093(ptr noundef nonnull %1094, ptr noundef nonnull %943, ptr noundef nonnull %944, i32 noundef 16) #8, !dbg !2558
  br label %1095, !dbg !2558

1095:                                             ; preds = %1092, %1087
  %1096 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %1089, !dbg !2559
  call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %1096, metadata !1367, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 %9, metadata !1368, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 2, metadata !1369, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 0, metadata !1370, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %1089, metadata !1371, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i1 true, metadata !1372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2560
  %1097 = load i32, ptr %945, align 16, !dbg !2562, !tbaa !1377
  %1098 = icmp eq i32 %1097, 0, !dbg !2563
  br i1 %1098, label %1101, label %1099, !dbg !2564

1099:                                             ; preds = %1095
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2560
  %1100 = trunc i64 %1089 to i32, !dbg !2565
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %1096, i32 noundef 1, i32 noundef %9, i32 noundef 2, i32 noundef 0, i32 noundef %1100) #8, !dbg !2565
  br label %1107, !dbg !2565

1101:                                             ; preds = %1095
  %1102 = load ptr, ptr %946, align 8, !dbg !2566, !tbaa !1382
  %1103 = load ptr, ptr %947, align 8, !dbg !2567, !tbaa !1309
  %1104 = getelementptr inbounds [16 x i16], ptr %1103, i64 %948, !dbg !2567
  %1105 = load ptr, ptr %949, align 8, !dbg !2568, !tbaa !1309
  %1106 = getelementptr inbounds [16 x i16], ptr %1105, i64 %948, !dbg !2568
  call void %1102(ptr noundef nonnull %1096, ptr noundef %1104, ptr noundef %1106) #8, !dbg !2569
  br label %1107

1107:                                             ; preds = %1101, %1099
  %1108 = load ptr, ptr %950, align 8, !dbg !2570, !tbaa !1408
  %1109 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %1089, !dbg !2571
  call void %1108(ptr noundef nonnull %1109, ptr noundef nonnull %1096) #8, !dbg !2572
  %1110 = icmp slt i32 %1088, 7
  br i1 %1110, label %1111, label %1115, !dbg !2579

1111:                                             ; preds = %1107
  %1112 = load ptr, ptr %951, align 8, !dbg !2575, !tbaa !2577
  %1113 = call i32 %1112(ptr noundef nonnull %1109) #8, !dbg !2578
  %1114 = add nsw i32 %1113, %1088, !dbg !2580
  call void @llvm.dbg.value(metadata i32 %1114, metadata !1969, metadata !DIExpression()), !dbg !2548
  br label %1115, !dbg !2581

1115:                                             ; preds = %1111, %1107
  %1116 = phi i32 [ %1114, %1111 ], [ %1088, %1107 ], !dbg !2548
  call void @llvm.dbg.value(metadata i32 %1116, metadata !1969, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 3, metadata !1944, metadata !DIExpression()), !dbg !2416
  %1117 = or i64 %955, 3, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %1117, metadata !1918, metadata !DIExpression()), !dbg !1991
  %1118 = load i32, ptr %936, align 4, !dbg !2549, !tbaa !2469
  %1119 = icmp eq i32 %1118, 0, !dbg !2554
  br i1 %1119, label %1123, label %1120, !dbg !2555

1120:                                             ; preds = %1115
  %1121 = load ptr, ptr %942, align 8, !dbg !2556, !tbaa !2477
  %1122 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %1117, !dbg !2557
  call void %1121(ptr noundef nonnull %1122, ptr noundef nonnull %943, ptr noundef nonnull %944, i32 noundef 16) #8, !dbg !2558
  br label %1123, !dbg !2558

1123:                                             ; preds = %1120, %1115
  %1124 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 %1117, !dbg !2559
  call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %1124, metadata !1367, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 %9, metadata !1368, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 2, metadata !1369, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 0, metadata !1370, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %1117, metadata !1371, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i1 true, metadata !1372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2560
  %1125 = load i32, ptr %945, align 16, !dbg !2562, !tbaa !1377
  %1126 = icmp eq i32 %1125, 0, !dbg !2563
  br i1 %1126, label %1129, label %1127, !dbg !2564

1127:                                             ; preds = %1123
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !2560
  %1128 = trunc i64 %1117 to i32, !dbg !2565
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %1124, i32 noundef 1, i32 noundef %9, i32 noundef 2, i32 noundef 0, i32 noundef %1128) #8, !dbg !2565
  br label %1135, !dbg !2565

1129:                                             ; preds = %1123
  %1130 = load ptr, ptr %946, align 8, !dbg !2566, !tbaa !1382
  %1131 = load ptr, ptr %947, align 8, !dbg !2567, !tbaa !1309
  %1132 = getelementptr inbounds [16 x i16], ptr %1131, i64 %948, !dbg !2567
  %1133 = load ptr, ptr %949, align 8, !dbg !2568, !tbaa !1309
  %1134 = getelementptr inbounds [16 x i16], ptr %1133, i64 %948, !dbg !2568
  call void %1130(ptr noundef nonnull %1124, ptr noundef %1132, ptr noundef %1134) #8, !dbg !2569
  br label %1135

1135:                                             ; preds = %1129, %1127
  %1136 = load ptr, ptr %950, align 8, !dbg !2570, !tbaa !1408
  %1137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %1117, !dbg !2571
  call void %1136(ptr noundef nonnull %1137, ptr noundef nonnull %1124) #8, !dbg !2572
  %1138 = icmp slt i32 %1116, 7
  br i1 %1138, label %1139, label %1147, !dbg !2579

1139:                                             ; preds = %1135
  %1140 = load ptr, ptr %951, align 8, !dbg !2575, !tbaa !2577
  %1141 = call i32 %1140(ptr noundef nonnull %1137) #8, !dbg !2578
  %1142 = add nsw i32 %1141, %1116, !dbg !2580
  call void @llvm.dbg.value(metadata i32 %1142, metadata !1969, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata !DIArgList(i32 %1142, i32 %954), metadata !1945, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !2416
  %1143 = icmp slt i32 %1142, 4, !dbg !2582
  %1144 = and i1 %1143, %19, !dbg !2584
  br i1 %1144, label %1145, label %1147, !dbg !2584

1145:                                             ; preds = %1139
  %1146 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 %953, !dbg !2585
  store i8 0, ptr %1146, align 1, !dbg !2586, !tbaa !1314
  br label %1147, !dbg !2585

1147:                                             ; preds = %1038, %1135, %1145, %1139
  %1148 = phi i32 [ %1142, %1145 ], [ %1142, %1139 ], [ %1116, %1135 ], [ 0, %1038 ]
  %1149 = add nsw i32 %1148, %954, !dbg !2574
  %1150 = add nuw nsw i64 %953, 1, !dbg !2587
  call void @llvm.dbg.value(metadata !DIArgList(i32 %1142, i32 %954), metadata !1945, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !2416
  call void @llvm.dbg.value(metadata i64 %1150, metadata !1942, metadata !DIExpression()), !dbg !2416
  %1151 = icmp eq i64 %1150, 4, !dbg !2588
  br i1 %1151, label %1152, label %952, !dbg !2547, !llvm.loop !2589

1152:                                             ; preds = %1147
  %1153 = icmp slt i32 %1149, 6, !dbg !2591
  %1154 = and i1 %1153, %19, !dbg !2593
  br i1 %1154, label %1161, label %1155, !dbg !2593

1155:                                             ; preds = %1152
  call void @llvm.dbg.value(metadata i32 0, metadata !1942, metadata !DIExpression()), !dbg !2416
  %1156 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 5
  %1157 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 20, i64 1
  %1158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !1942, metadata !DIExpression()), !dbg !2416
  %1159 = load i8, ptr %4, align 4, !dbg !2594, !tbaa !1314
  %1160 = icmp eq i8 %1159, 0, !dbg !2594
  br i1 %1160, label %1176, label %1162, !dbg !2599

1161:                                             ; preds = %1152
  store i32 0, ptr %4, align 4, !dbg !2600, !tbaa !1683
  br label %1236, !dbg !2601

1162:                                             ; preds = %1155
  call void @llvm.dbg.value(metadata i64 0, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1163 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1164 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1163(ptr noundef nonnull %7, ptr noundef %1164, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 1, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1165 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1166 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 1, !dbg !2608
  %1167 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1165(ptr noundef nonnull %1166, ptr noundef %1167, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 2, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1168 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1169 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 2, !dbg !2608
  %1170 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1168(ptr noundef nonnull %1169, ptr noundef %1170, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 3, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1171 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1172 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 3, !dbg !2608
  %1173 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1171(ptr noundef nonnull %1172, ptr noundef %1173, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 4, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1174 = load ptr, ptr %1158, align 8, !dbg !2609, !tbaa !1714
  %1175 = load ptr, ptr %934, align 8, !dbg !2610, !tbaa !1309
  call void %1174(ptr noundef %1175, ptr noundef nonnull %7) #8, !dbg !2611
  br label %1176, !dbg !2612

1176:                                             ; preds = %1155, %1162
  call void @llvm.dbg.value(metadata i64 1, metadata !1942, metadata !DIExpression()), !dbg !2416
  %1177 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1, !dbg !2594
  %1178 = load i8, ptr %1177, align 1, !dbg !2594, !tbaa !1314
  %1179 = icmp eq i8 %1178, 0, !dbg !2594
  br i1 %1179, label %1196, label %1180, !dbg !2599

1180:                                             ; preds = %1176
  call void @llvm.dbg.value(metadata i64 0, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1181 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1182 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 4, !dbg !2608
  %1183 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1181(ptr noundef nonnull %1182, ptr noundef %1183, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 1, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1184 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1185 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 5, !dbg !2608
  %1186 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1184(ptr noundef nonnull %1185, ptr noundef %1186, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 2, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1187 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1188 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 6, !dbg !2608
  %1189 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1187(ptr noundef nonnull %1188, ptr noundef %1189, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 3, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1190 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1191 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 7, !dbg !2608
  %1192 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1190(ptr noundef nonnull %1191, ptr noundef %1192, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 4, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1193 = load ptr, ptr %1158, align 8, !dbg !2609, !tbaa !1714
  %1194 = load ptr, ptr %934, align 8, !dbg !2610, !tbaa !1309
  %1195 = getelementptr inbounds i8, ptr %1194, i64 8, !dbg !2610
  call void %1193(ptr noundef nonnull %1195, ptr noundef nonnull %1182) #8, !dbg !2611
  br label %1196, !dbg !2612

1196:                                             ; preds = %1180, %1176
  call void @llvm.dbg.value(metadata i64 2, metadata !1942, metadata !DIExpression()), !dbg !2416
  %1197 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2, !dbg !2594
  %1198 = load i8, ptr %1197, align 2, !dbg !2594, !tbaa !1314
  %1199 = icmp eq i8 %1198, 0, !dbg !2594
  br i1 %1199, label %1216, label %1200, !dbg !2599

1200:                                             ; preds = %1196
  call void @llvm.dbg.value(metadata i64 0, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1201 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1202 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 8, !dbg !2608
  %1203 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1201(ptr noundef nonnull %1202, ptr noundef %1203, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 1, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1204 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1205 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 9, !dbg !2608
  %1206 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1204(ptr noundef nonnull %1205, ptr noundef %1206, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 2, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1207 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1208 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 10, !dbg !2608
  %1209 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1207(ptr noundef nonnull %1208, ptr noundef %1209, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 3, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1210 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1211 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 11, !dbg !2608
  %1212 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1210(ptr noundef nonnull %1211, ptr noundef %1212, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 4, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1213 = load ptr, ptr %1158, align 8, !dbg !2609, !tbaa !1714
  %1214 = load ptr, ptr %934, align 8, !dbg !2610, !tbaa !1309
  %1215 = getelementptr inbounds i8, ptr %1214, i64 256, !dbg !2610
  call void %1213(ptr noundef nonnull %1215, ptr noundef nonnull %1202) #8, !dbg !2611
  br label %1216, !dbg !2612

1216:                                             ; preds = %1200, %1196
  call void @llvm.dbg.value(metadata i64 3, metadata !1942, metadata !DIExpression()), !dbg !2416
  %1217 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3, !dbg !2594
  %1218 = load i8, ptr %1217, align 1, !dbg !2594, !tbaa !1314
  %1219 = icmp eq i8 %1218, 0, !dbg !2594
  br i1 %1219, label %1236, label %1220, !dbg !2599

1220:                                             ; preds = %1216
  call void @llvm.dbg.value(metadata i64 0, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1221 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1222 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 12, !dbg !2608
  %1223 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1221(ptr noundef nonnull %1222, ptr noundef %1223, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 1, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1224 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1225 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 13, !dbg !2608
  %1226 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1224(ptr noundef nonnull %1225, ptr noundef %1226, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 2, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1227 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1228 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 14, !dbg !2608
  %1229 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1227(ptr noundef nonnull %1228, ptr noundef %1229, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 3, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1230 = load ptr, ptr %1156, align 8, !dbg !2602, !tbaa !1412
  %1231 = getelementptr inbounds [16 x [4 x [4 x i16]]], ptr %7, i64 0, i64 15, !dbg !2608
  %1232 = load ptr, ptr %1157, align 8, !dbg !2606, !tbaa !1309
  call void %1230(ptr noundef nonnull %1231, ptr noundef %1232, i32 noundef %9) #8, !dbg !2607
  call void @llvm.dbg.value(metadata i64 4, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1233 = load ptr, ptr %1158, align 8, !dbg !2609, !tbaa !1714
  %1234 = load ptr, ptr %934, align 8, !dbg !2610, !tbaa !1309
  %1235 = getelementptr inbounds i8, ptr %1234, i64 264, !dbg !2610
  call void %1233(ptr noundef nonnull %1235, ptr noundef nonnull %1222) #8, !dbg !2611
  br label %1236, !dbg !2612

1236:                                             ; preds = %1216, %1220, %1161
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #8, !dbg !2613
  br label %1237

1237:                                             ; preds = %585, %606, %638, %1236, %928, %475, %381
  %1238 = load i32, ptr %46, align 8, !dbg !2445, !tbaa !2019
  %1239 = icmp ult i32 %1238, 4, !dbg !2445
  br i1 %1239, label %1240, label %1302, !dbg !2445

1240:                                             ; preds = %1237
  %1241 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 53, !dbg !2614
  %1242 = load i32, ptr %1241, align 16, !dbg !2614, !tbaa !2615
  call void @llvm.dbg.value(metadata i32 %1242, metadata !1973, metadata !DIExpression()), !dbg !2616
  %1243 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 63, !dbg !2617
  %1244 = load i32, ptr %1243, align 4, !dbg !2617, !tbaa !1323
  %1245 = icmp eq i32 %1244, 0, !dbg !2619
  br i1 %1245, label %1293, label %1246, !dbg !2620

1246:                                             ; preds = %1240
  call void @llvm.dbg.value(metadata ptr %0, metadata !1768, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 %1242, metadata !1769, metadata !DIExpression()), !dbg !2621
  %1247 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !2623
  %1248 = load ptr, ptr %1247, align 8, !dbg !2623, !tbaa !1773
  %1249 = getelementptr inbounds %struct.x264_frame_t, ptr %1248, i64 0, i32 10, i64 1, !dbg !2624
  %1250 = load i32, ptr %1249, align 4, !dbg !2624, !tbaa !1683
  %1251 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 16, !dbg !2625
  %1252 = load i32, ptr %1251, align 16, !dbg !2625, !tbaa !1776
  %1253 = shl i32 %1250, %1252, !dbg !2626
  call void @llvm.dbg.value(metadata i32 %1253, metadata !1770, metadata !DIExpression()), !dbg !2621
  switch i32 %1242, label %1284 [
    i32 2, label %1254
    i32 1, label %1270
  ], !dbg !2627

1254:                                             ; preds = %1246
  %1255 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, i64 3, !dbg !2628
  %1256 = load ptr, ptr %1255, align 8, !dbg !2628, !tbaa !1309
  %1257 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 1, !dbg !2629
  %1258 = load ptr, ptr %1257, align 8, !dbg !2629, !tbaa !1309
  %1259 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13, i64 1, !dbg !2630
  %1260 = load ptr, ptr %1259, align 8, !dbg !2630, !tbaa !1309
  %1261 = sext i32 %1253 to i64, !dbg !2631
  %1262 = sub nsw i64 0, %1261, !dbg !2631
  %1263 = getelementptr inbounds i8, ptr %1260, i64 %1262, !dbg !2631
  call void %1256(ptr noundef %1258, i32 noundef 32, ptr noundef %1263, i32 noundef %1253, i32 noundef 8) #8, !dbg !2628
  %1264 = load ptr, ptr %1255, align 8, !dbg !2632, !tbaa !1309
  %1265 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 2, !dbg !2633
  %1266 = load ptr, ptr %1265, align 8, !dbg !2633, !tbaa !1309
  %1267 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13, i64 2, !dbg !2634
  %1268 = load ptr, ptr %1267, align 16, !dbg !2634, !tbaa !1309
  %1269 = getelementptr inbounds i8, ptr %1268, i64 %1262, !dbg !2635
  call void %1264(ptr noundef %1266, i32 noundef 32, ptr noundef %1269, i32 noundef %1253, i32 noundef 8) #8, !dbg !2632
  br label %1302, !dbg !2636

1270:                                             ; preds = %1246
  %1271 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, i64 3, !dbg !2637
  %1272 = load ptr, ptr %1271, align 8, !dbg !2637, !tbaa !1309
  %1273 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 1, !dbg !2638
  %1274 = load ptr, ptr %1273, align 8, !dbg !2638, !tbaa !1309
  %1275 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13, i64 1, !dbg !2639
  %1276 = load ptr, ptr %1275, align 8, !dbg !2639, !tbaa !1309
  %1277 = getelementptr inbounds i8, ptr %1276, i64 -1, !dbg !2640
  call void %1272(ptr noundef %1274, i32 noundef 32, ptr noundef nonnull %1277, i32 noundef %1253, i32 noundef 8) #8, !dbg !2637
  %1278 = load ptr, ptr %1271, align 8, !dbg !2641, !tbaa !1309
  %1279 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 2, !dbg !2642
  %1280 = load ptr, ptr %1279, align 8, !dbg !2642, !tbaa !1309
  %1281 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 13, i64 2, !dbg !2643
  %1282 = load ptr, ptr %1281, align 16, !dbg !2643, !tbaa !1309
  %1283 = getelementptr inbounds i8, ptr %1282, i64 -1, !dbg !2644
  call void %1278(ptr noundef %1280, i32 noundef 32, ptr noundef nonnull %1283, i32 noundef %1253, i32 noundef 8) #8, !dbg !2641
  br label %1302, !dbg !2645

1284:                                             ; preds = %1246
  %1285 = sext i32 %1242 to i64, !dbg !2646
  %1286 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %1285, !dbg !2646
  %1287 = load ptr, ptr %1286, align 8, !dbg !2646, !tbaa !1309
  %1288 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 1, !dbg !2647
  %1289 = load ptr, ptr %1288, align 8, !dbg !2647, !tbaa !1309
  call void %1287(ptr noundef %1289) #8, !dbg !2646
  %1290 = load ptr, ptr %1286, align 8, !dbg !2648, !tbaa !1309
  %1291 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 2, !dbg !2649
  %1292 = load ptr, ptr %1291, align 8, !dbg !2649, !tbaa !1309
  call void %1290(ptr noundef %1292) #8, !dbg !2648
  br label %1302

1293:                                             ; preds = %1240
  %1294 = sext i32 %1242 to i64, !dbg !2650
  %1295 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %1294, !dbg !2650
  %1296 = load ptr, ptr %1295, align 8, !dbg !2650, !tbaa !1309
  %1297 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 1, !dbg !2652
  %1298 = load ptr, ptr %1297, align 8, !dbg !2652, !tbaa !1309
  call void %1296(ptr noundef %1298) #8, !dbg !2650
  %1299 = load ptr, ptr %1295, align 8, !dbg !2653, !tbaa !1309
  %1300 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 2, !dbg !2654
  %1301 = load ptr, ptr %1300, align 8, !dbg !2654, !tbaa !1309
  call void %1299(ptr noundef %1301) #8, !dbg !2653
  br label %1302

1302:                                             ; preds = %1284, %1270, %1254, %1237, %1293
  %1303 = load i32, ptr %46, align 8, !dbg !2655, !tbaa !2019
  %1304 = icmp ugt i32 %1303, 3, !dbg !2655
  %1305 = zext i1 %1304 to i32, !dbg !2655
  %1306 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 59, !dbg !2656
  %1307 = load i32, ptr %1306, align 4, !dbg !2656, !tbaa !2657
  call void @x264_mb_encode_8x8_chroma(ptr noundef nonnull %0, i32 noundef %1305, i32 noundef %1307), !dbg !2658
  %1308 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 50, !dbg !2659
  store i32 0, ptr %1308, align 4, !dbg !2660, !tbaa !2093
  %1309 = load i32, ptr %46, align 8, !dbg !2661, !tbaa !2019
  %1310 = icmp eq i32 %1309, 2, !dbg !2662
  br i1 %1310, label %1315, label %1311, !dbg !2663

1311:                                             ; preds = %1302
  call void @llvm.dbg.value(metadata i32 0, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1312 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 49
  call void @llvm.dbg.value(metadata i64 0, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1313 = load i8, ptr %4, align 4, !dbg !2664, !tbaa !1314
  %1314 = icmp eq i8 %1313, 0, !dbg !2664
  br i1 %1314, label %1468, label %1471, !dbg !2665

1315:                                             ; preds = %1302
  call void @llvm.dbg.value(metadata i64 0, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1316 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 0, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1316, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1317 = load <4 x i64>, ptr %1316, align 8, !dbg !2669, !tbaa !1402
  %1318 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1317), !dbg !2671
  %1319 = icmp ne i64 %1318, 0, !dbg !2672
  %1320 = zext i1 %1319 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1320, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1321 = zext i1 %1319 to i8, !dbg !2675
  %1322 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 12, !dbg !2676
  store i8 %1321, ptr %1322, align 1, !dbg !2677, !tbaa !1314
  %1323 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1324 = or i32 %1323, %1320, !dbg !2678
  store i32 %1324, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 1, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 1, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1325 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 1, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1325, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1326 = load <4 x i64>, ptr %1325, align 8, !dbg !2669, !tbaa !1402
  %1327 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1326), !dbg !2671
  %1328 = icmp ne i64 %1327, 0, !dbg !2672
  %1329 = zext i1 %1328 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1329, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1330 = zext i1 %1328 to i8, !dbg !2675
  %1331 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 13, !dbg !2676
  store i8 %1330, ptr %1331, align 1, !dbg !2677, !tbaa !1314
  %1332 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1333 = or i32 %1332, %1329, !dbg !2678
  store i32 %1333, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 2, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 2, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1334 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 2, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1334, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1335 = load <4 x i64>, ptr %1334, align 8, !dbg !2669, !tbaa !1402
  %1336 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1335), !dbg !2671
  %1337 = icmp ne i64 %1336, 0, !dbg !2672
  %1338 = zext i1 %1337 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1338, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1339 = zext i1 %1337 to i8, !dbg !2675
  %1340 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 20, !dbg !2676
  store i8 %1339, ptr %1340, align 1, !dbg !2677, !tbaa !1314
  %1341 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1342 = or i32 %1341, %1338, !dbg !2678
  store i32 %1342, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 3, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 3, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1343 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 3, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1343, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1344 = load <4 x i64>, ptr %1343, align 8, !dbg !2669, !tbaa !1402
  %1345 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1344), !dbg !2671
  %1346 = icmp ne i64 %1345, 0, !dbg !2672
  %1347 = zext i1 %1346 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1347, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1348 = zext i1 %1346 to i8, !dbg !2675
  %1349 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 21, !dbg !2676
  store i8 %1348, ptr %1349, align 1, !dbg !2677, !tbaa !1314
  %1350 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1351 = or i32 %1350, %1347, !dbg !2678
  store i32 %1351, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 4, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 4, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1352 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 4, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1352, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1353 = load <4 x i64>, ptr %1352, align 8, !dbg !2669, !tbaa !1402
  %1354 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1353), !dbg !2671
  %1355 = icmp ne i64 %1354, 0, !dbg !2672
  %1356 = zext i1 %1355 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1356, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1357 = zext i1 %1355 to i8, !dbg !2675
  %1358 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 14, !dbg !2676
  store i8 %1357, ptr %1358, align 1, !dbg !2677, !tbaa !1314
  %1359 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1360 = or i32 %1359, %1356, !dbg !2678
  store i32 %1360, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 5, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 5, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1361 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 5, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1361, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1362 = load <4 x i64>, ptr %1361, align 8, !dbg !2669, !tbaa !1402
  %1363 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1362), !dbg !2671
  %1364 = icmp ne i64 %1363, 0, !dbg !2672
  %1365 = zext i1 %1364 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1365, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1366 = zext i1 %1364 to i8, !dbg !2675
  %1367 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 15, !dbg !2676
  store i8 %1366, ptr %1367, align 1, !dbg !2677, !tbaa !1314
  %1368 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1369 = or i32 %1368, %1365, !dbg !2678
  store i32 %1369, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 6, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 6, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1370 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 6, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1370, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1371 = load <4 x i64>, ptr %1370, align 8, !dbg !2669, !tbaa !1402
  %1372 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1371), !dbg !2671
  %1373 = icmp ne i64 %1372, 0, !dbg !2672
  %1374 = zext i1 %1373 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1374, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1375 = zext i1 %1373 to i8, !dbg !2675
  %1376 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 22, !dbg !2676
  store i8 %1375, ptr %1376, align 1, !dbg !2677, !tbaa !1314
  %1377 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1378 = or i32 %1377, %1374, !dbg !2678
  store i32 %1378, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 7, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 7, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1379 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 7, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1379, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1380 = load <4 x i64>, ptr %1379, align 8, !dbg !2669, !tbaa !1402
  %1381 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1380), !dbg !2671
  %1382 = icmp ne i64 %1381, 0, !dbg !2672
  %1383 = zext i1 %1382 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1383, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1384 = zext i1 %1382 to i8, !dbg !2675
  %1385 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 23, !dbg !2676
  store i8 %1384, ptr %1385, align 1, !dbg !2677, !tbaa !1314
  %1386 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1387 = or i32 %1386, %1383, !dbg !2678
  store i32 %1387, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 8, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 8, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1388 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 8, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1388, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1389 = load <4 x i64>, ptr %1388, align 8, !dbg !2669, !tbaa !1402
  %1390 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1389), !dbg !2671
  %1391 = icmp ne i64 %1390, 0, !dbg !2672
  %1392 = zext i1 %1391 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1392, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1393 = zext i1 %1391 to i8, !dbg !2675
  %1394 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 28, !dbg !2676
  store i8 %1393, ptr %1394, align 1, !dbg !2677, !tbaa !1314
  %1395 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1396 = or i32 %1395, %1392, !dbg !2678
  store i32 %1396, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 9, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 9, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1397 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 9, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1397, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1398 = load <4 x i64>, ptr %1397, align 8, !dbg !2669, !tbaa !1402
  %1399 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1398), !dbg !2671
  %1400 = icmp ne i64 %1399, 0, !dbg !2672
  %1401 = zext i1 %1400 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1401, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1402 = zext i1 %1400 to i8, !dbg !2675
  %1403 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 29, !dbg !2676
  store i8 %1402, ptr %1403, align 1, !dbg !2677, !tbaa !1314
  %1404 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1405 = or i32 %1404, %1401, !dbg !2678
  store i32 %1405, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 10, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 10, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1406 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 10, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1406, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1407 = load <4 x i64>, ptr %1406, align 8, !dbg !2669, !tbaa !1402
  %1408 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1407), !dbg !2671
  %1409 = icmp ne i64 %1408, 0, !dbg !2672
  %1410 = zext i1 %1409 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1410, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1411 = zext i1 %1409 to i8, !dbg !2675
  %1412 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 36, !dbg !2676
  store i8 %1411, ptr %1412, align 1, !dbg !2677, !tbaa !1314
  %1413 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1414 = or i32 %1413, %1410, !dbg !2678
  store i32 %1414, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 11, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 11, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1415 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 11, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1415, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1416 = load <4 x i64>, ptr %1415, align 8, !dbg !2669, !tbaa !1402
  %1417 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1416), !dbg !2671
  %1418 = icmp ne i64 %1417, 0, !dbg !2672
  %1419 = zext i1 %1418 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1419, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1420 = zext i1 %1418 to i8, !dbg !2675
  %1421 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 37, !dbg !2676
  store i8 %1420, ptr %1421, align 1, !dbg !2677, !tbaa !1314
  %1422 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1423 = or i32 %1422, %1419, !dbg !2678
  store i32 %1423, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 12, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 12, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1424 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 12, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1424, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1425 = load <4 x i64>, ptr %1424, align 8, !dbg !2669, !tbaa !1402
  %1426 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1425), !dbg !2671
  %1427 = icmp ne i64 %1426, 0, !dbg !2672
  %1428 = zext i1 %1427 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1428, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1429 = zext i1 %1427 to i8, !dbg !2675
  %1430 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 30, !dbg !2676
  store i8 %1429, ptr %1430, align 1, !dbg !2677, !tbaa !1314
  %1431 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1432 = or i32 %1431, %1428, !dbg !2678
  store i32 %1432, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 13, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 13, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1433 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 13, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1433, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1434 = load <4 x i64>, ptr %1433, align 8, !dbg !2669, !tbaa !1402
  %1435 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1434), !dbg !2671
  %1436 = icmp ne i64 %1435, 0, !dbg !2672
  %1437 = zext i1 %1436 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1437, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1438 = zext i1 %1436 to i8, !dbg !2675
  %1439 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 31, !dbg !2676
  store i8 %1438, ptr %1439, align 1, !dbg !2677, !tbaa !1314
  %1440 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1441 = or i32 %1440, %1437, !dbg !2678
  store i32 %1441, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 14, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 14, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1442 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 14, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1442, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1443 = load <4 x i64>, ptr %1442, align 8, !dbg !2669, !tbaa !1402
  %1444 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1443), !dbg !2671
  %1445 = icmp ne i64 %1444, 0, !dbg !2672
  %1446 = zext i1 %1445 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1446, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1447 = zext i1 %1445 to i8, !dbg !2675
  %1448 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 38, !dbg !2676
  store i8 %1447, ptr %1448, align 1, !dbg !2677, !tbaa !1314
  %1449 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1450 = or i32 %1449, %1446, !dbg !2678
  store i32 %1450, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  call void @llvm.dbg.value(metadata i64 15, metadata !1916, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 15, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1451 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 15, !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1451, metadata !171, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2667
  %1452 = load <4 x i64>, ptr %1451, align 8, !dbg !2669, !tbaa !1402
  %1453 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1452), !dbg !2671
  %1454 = icmp ne i64 %1453, 0, !dbg !2672
  %1455 = zext i1 %1454 to i32, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1455, metadata !1976, metadata !DIExpression()), !dbg !2674
  %1456 = zext i1 %1454 to i8, !dbg !2675
  %1457 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 39, !dbg !2676
  store i8 %1456, ptr %1457, align 1, !dbg !2677, !tbaa !1314
  %1458 = load i32, ptr %1308, align 4, !dbg !2678, !tbaa !2093
  %1459 = or i32 %1458, %1455, !dbg !2678
  call void @llvm.dbg.value(metadata i64 16, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1460 = mul nsw i32 %1459, 15, !dbg !2679
  store i32 %1460, ptr %1308, align 4, !dbg !2679, !tbaa !2093
  %1461 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, !dbg !2680
  call void @llvm.dbg.value(metadata ptr %1461, metadata !171, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2681
  %1462 = load <4 x i64>, ptr %1461, align 8, !dbg !2683, !tbaa !1402
  %1463 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1462), !dbg !2685
  %1464 = icmp ne i64 %1463, 0, !dbg !2686
  %1465 = zext i1 %1464 to i8, !dbg !2680
  %1466 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 44, !dbg !2687
  store i8 %1465, ptr %1466, align 1, !dbg !2688, !tbaa !1314
  %1467 = select i1 %1464, i32 256, i32 0, !dbg !2689
  br label %1663, !dbg !2690

1468:                                             ; preds = %1311
  %1469 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 12, !dbg !2691
  store i16 0, ptr %1469, align 1, !dbg !2693, !tbaa !1318
  %1470 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 20, !dbg !2694
  store i16 0, ptr %1470, align 1, !dbg !2695, !tbaa !1318
  br label %1510, !dbg !2696

1471:                                             ; preds = %1311
  %1472 = load i32, ptr %1312, align 16, !dbg !2697, !tbaa !2129
  %1473 = icmp eq i32 %1472, 0, !dbg !2698
  br i1 %1473, label %1474, label %1504, !dbg !2699

1474:                                             ; preds = %1471
  call void @llvm.dbg.value(metadata i32 0, metadata !1990, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 0, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1475 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 0, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1475, metadata !171, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2705
  %1476 = load <4 x i64>, ptr %1475, align 8, !dbg !2707, !tbaa !1402
  %1477 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1476), !dbg !2709
  %1478 = icmp ne i64 %1477, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1478, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1479 = zext i1 %1478 to i8, !dbg !2711
  %1480 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 12, !dbg !2712
  store i8 %1479, ptr %1480, align 1, !dbg !2713, !tbaa !1314
  call void @llvm.dbg.value(metadata i1 %1478, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  call void @llvm.dbg.value(metadata i64 1, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1481 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 1, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1481, metadata !171, metadata !DIExpression()), !dbg !2705
  %1482 = load <4 x i64>, ptr %1481, align 8, !dbg !2707, !tbaa !1402
  %1483 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1482), !dbg !2709
  %1484 = icmp ne i64 %1483, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1484, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1485 = zext i1 %1484 to i8, !dbg !2711
  %1486 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 13, !dbg !2712
  store i8 %1485, ptr %1486, align 1, !dbg !2713, !tbaa !1314
  %1487 = or i64 %1477, %1483, !dbg !2714
  call void @llvm.dbg.value(metadata i1 poison, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  call void @llvm.dbg.value(metadata i64 2, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1488 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 2, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1488, metadata !171, metadata !DIExpression()), !dbg !2705
  %1489 = load <4 x i64>, ptr %1488, align 8, !dbg !2707, !tbaa !1402
  %1490 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1489), !dbg !2709
  %1491 = icmp ne i64 %1490, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1491, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1492 = zext i1 %1491 to i8, !dbg !2711
  %1493 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 20, !dbg !2712
  store i8 %1492, ptr %1493, align 1, !dbg !2713, !tbaa !1314
  %1494 = or i64 %1487, %1490, !dbg !2714
  call void @llvm.dbg.value(metadata i64 3, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1495 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 3, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1495, metadata !171, metadata !DIExpression()), !dbg !2705
  %1496 = load <4 x i64>, ptr %1495, align 8, !dbg !2707, !tbaa !1402
  %1497 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1496), !dbg !2709
  %1498 = icmp ne i64 %1497, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1498, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1499 = zext i1 %1498 to i8, !dbg !2711
  %1500 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 21, !dbg !2712
  store i8 %1499, ptr %1500, align 1, !dbg !2713, !tbaa !1314
  %1501 = or i64 %1494, %1497, !dbg !2714
  %1502 = icmp ne i64 %1501, 0, !dbg !2714
  %1503 = zext i1 %1502 to i32, !dbg !2714
  call void @llvm.dbg.value(metadata i32 %1503, metadata !1990, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 4, metadata !1917, metadata !DIExpression()), !dbg !1991
  store i32 %1503, ptr %1308, align 4, !dbg !2715, !tbaa !2093
  br label %1510

1504:                                             ; preds = %1471
  %1505 = zext i8 %1313 to i16, !dbg !2716
  %1506 = mul nuw i16 %1505, 257, !dbg !2718
  %1507 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 12, !dbg !2719
  store i16 %1506, ptr %1507, align 1, !dbg !2720, !tbaa !1318
  %1508 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 20, !dbg !2721
  store i16 %1506, ptr %1508, align 1, !dbg !2722, !tbaa !1318
  %1509 = zext i8 %1313 to i32, !dbg !2723
  store i32 %1509, ptr %1308, align 4, !dbg !2724, !tbaa !2093
  br label %1510, !dbg !2725

1510:                                             ; preds = %1468, %1474, %1504
  %1511 = phi i32 [ 0, %1468 ], [ %1503, %1474 ], [ %1509, %1504 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1512 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1, !dbg !2664
  %1513 = load i8, ptr %1512, align 1, !dbg !2664, !tbaa !1314
  %1514 = icmp eq i8 %1513, 0, !dbg !2664
  br i1 %1514, label %1557, label %1515, !dbg !2665

1515:                                             ; preds = %1510
  %1516 = load i32, ptr %1312, align 16, !dbg !2697, !tbaa !2129
  %1517 = icmp eq i32 %1516, 0, !dbg !2698
  br i1 %1517, label %1526, label %1518, !dbg !2699

1518:                                             ; preds = %1515
  %1519 = zext i8 %1513 to i16, !dbg !2716
  %1520 = mul nuw i16 %1519, 257, !dbg !2718
  %1521 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 14, !dbg !2719
  store i16 %1520, ptr %1521, align 1, !dbg !2720, !tbaa !1318
  %1522 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 22, !dbg !2721
  store i16 %1520, ptr %1522, align 1, !dbg !2722, !tbaa !1318
  %1523 = zext i8 %1513 to i32, !dbg !2723
  %1524 = shl nuw nsw i32 %1523, 1, !dbg !2726
  %1525 = or i32 %1511, %1524, !dbg !2724
  store i32 %1525, ptr %1308, align 4, !dbg !2724, !tbaa !2093
  br label %1560, !dbg !2725

1526:                                             ; preds = %1515
  call void @llvm.dbg.value(metadata i32 0, metadata !1990, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 0, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1527 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 4, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1527, metadata !171, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2705
  %1528 = load <4 x i64>, ptr %1527, align 8, !dbg !2707, !tbaa !1402
  %1529 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1528), !dbg !2709
  %1530 = icmp ne i64 %1529, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1530, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1531 = zext i1 %1530 to i8, !dbg !2711
  %1532 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 14, !dbg !2712
  store i8 %1531, ptr %1532, align 1, !dbg !2713, !tbaa !1314
  call void @llvm.dbg.value(metadata i1 %1530, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  call void @llvm.dbg.value(metadata i64 1, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1533 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 5, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1533, metadata !171, metadata !DIExpression()), !dbg !2705
  %1534 = load <4 x i64>, ptr %1533, align 8, !dbg !2707, !tbaa !1402
  %1535 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1534), !dbg !2709
  %1536 = icmp ne i64 %1535, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1536, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1537 = zext i1 %1536 to i8, !dbg !2711
  %1538 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 15, !dbg !2712
  store i8 %1537, ptr %1538, align 1, !dbg !2713, !tbaa !1314
  %1539 = or i64 %1529, %1535, !dbg !2714
  call void @llvm.dbg.value(metadata i1 poison, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  call void @llvm.dbg.value(metadata i64 2, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1540 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 6, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1540, metadata !171, metadata !DIExpression()), !dbg !2705
  %1541 = load <4 x i64>, ptr %1540, align 8, !dbg !2707, !tbaa !1402
  %1542 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1541), !dbg !2709
  %1543 = icmp ne i64 %1542, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1543, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1544 = zext i1 %1543 to i8, !dbg !2711
  %1545 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 22, !dbg !2712
  store i8 %1544, ptr %1545, align 1, !dbg !2713, !tbaa !1314
  %1546 = or i64 %1539, %1542, !dbg !2714
  call void @llvm.dbg.value(metadata i64 3, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1547 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 7, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1547, metadata !171, metadata !DIExpression()), !dbg !2705
  %1548 = load <4 x i64>, ptr %1547, align 8, !dbg !2707, !tbaa !1402
  %1549 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1548), !dbg !2709
  %1550 = icmp ne i64 %1549, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1550, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1551 = zext i1 %1550 to i8, !dbg !2711
  %1552 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 23, !dbg !2712
  store i8 %1551, ptr %1552, align 1, !dbg !2713, !tbaa !1314
  %1553 = or i64 %1546, %1549, !dbg !2714
  %1554 = icmp eq i64 %1553, 0, !dbg !2714
  call void @llvm.dbg.value(metadata i1 %1554, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  call void @llvm.dbg.value(metadata i64 4, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1555 = select i1 %1554, i32 0, i32 2, !dbg !2727
  %1556 = or i32 %1511, %1555, !dbg !2715
  store i32 %1556, ptr %1308, align 4, !dbg !2715, !tbaa !2093
  br label %1560

1557:                                             ; preds = %1510
  %1558 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 14, !dbg !2691
  store i16 0, ptr %1558, align 1, !dbg !2693, !tbaa !1318
  %1559 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 22, !dbg !2694
  store i16 0, ptr %1559, align 1, !dbg !2695, !tbaa !1318
  br label %1560, !dbg !2696

1560:                                             ; preds = %1557, %1526, %1518
  %1561 = phi i32 [ %1511, %1557 ], [ %1556, %1526 ], [ %1525, %1518 ]
  call void @llvm.dbg.value(metadata i64 2, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1562 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2, !dbg !2664
  %1563 = load i8, ptr %1562, align 2, !dbg !2664, !tbaa !1314
  %1564 = icmp eq i8 %1563, 0, !dbg !2664
  br i1 %1564, label %1607, label %1565, !dbg !2665

1565:                                             ; preds = %1560
  %1566 = load i32, ptr %1312, align 16, !dbg !2697, !tbaa !2129
  %1567 = icmp eq i32 %1566, 0, !dbg !2698
  br i1 %1567, label %1576, label %1568, !dbg !2699

1568:                                             ; preds = %1565
  %1569 = zext i8 %1563 to i16, !dbg !2716
  %1570 = mul nuw i16 %1569, 257, !dbg !2718
  %1571 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 28, !dbg !2719
  store i16 %1570, ptr %1571, align 1, !dbg !2720, !tbaa !1318
  %1572 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 36, !dbg !2721
  store i16 %1570, ptr %1572, align 1, !dbg !2722, !tbaa !1318
  %1573 = zext i8 %1563 to i32, !dbg !2723
  %1574 = shl nuw nsw i32 %1573, 2, !dbg !2726
  %1575 = or i32 %1561, %1574, !dbg !2724
  store i32 %1575, ptr %1308, align 4, !dbg !2724, !tbaa !2093
  br label %1610, !dbg !2725

1576:                                             ; preds = %1565
  call void @llvm.dbg.value(metadata i32 0, metadata !1990, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 0, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1577 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 8, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1577, metadata !171, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2705
  %1578 = load <4 x i64>, ptr %1577, align 8, !dbg !2707, !tbaa !1402
  %1579 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1578), !dbg !2709
  %1580 = icmp ne i64 %1579, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1580, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1581 = zext i1 %1580 to i8, !dbg !2711
  %1582 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 28, !dbg !2712
  store i8 %1581, ptr %1582, align 1, !dbg !2713, !tbaa !1314
  call void @llvm.dbg.value(metadata i1 %1580, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  call void @llvm.dbg.value(metadata i64 1, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1583 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 9, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1583, metadata !171, metadata !DIExpression()), !dbg !2705
  %1584 = load <4 x i64>, ptr %1583, align 8, !dbg !2707, !tbaa !1402
  %1585 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1584), !dbg !2709
  %1586 = icmp ne i64 %1585, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1586, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1587 = zext i1 %1586 to i8, !dbg !2711
  %1588 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 29, !dbg !2712
  store i8 %1587, ptr %1588, align 1, !dbg !2713, !tbaa !1314
  %1589 = or i64 %1579, %1585, !dbg !2714
  call void @llvm.dbg.value(metadata i1 poison, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  call void @llvm.dbg.value(metadata i64 2, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1590 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 10, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1590, metadata !171, metadata !DIExpression()), !dbg !2705
  %1591 = load <4 x i64>, ptr %1590, align 8, !dbg !2707, !tbaa !1402
  %1592 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1591), !dbg !2709
  %1593 = icmp ne i64 %1592, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1593, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1594 = zext i1 %1593 to i8, !dbg !2711
  %1595 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 36, !dbg !2712
  store i8 %1594, ptr %1595, align 1, !dbg !2713, !tbaa !1314
  %1596 = or i64 %1589, %1592, !dbg !2714
  call void @llvm.dbg.value(metadata i64 3, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1597 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 11, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1597, metadata !171, metadata !DIExpression()), !dbg !2705
  %1598 = load <4 x i64>, ptr %1597, align 8, !dbg !2707, !tbaa !1402
  %1599 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1598), !dbg !2709
  %1600 = icmp ne i64 %1599, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1600, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1601 = zext i1 %1600 to i8, !dbg !2711
  %1602 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 37, !dbg !2712
  store i8 %1601, ptr %1602, align 1, !dbg !2713, !tbaa !1314
  %1603 = or i64 %1596, %1599, !dbg !2714
  %1604 = icmp eq i64 %1603, 0, !dbg !2714
  call void @llvm.dbg.value(metadata i1 %1604, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  call void @llvm.dbg.value(metadata i64 4, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1605 = select i1 %1604, i32 0, i32 4, !dbg !2727
  %1606 = or i32 %1561, %1605, !dbg !2715
  store i32 %1606, ptr %1308, align 4, !dbg !2715, !tbaa !2093
  br label %1610

1607:                                             ; preds = %1560
  %1608 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 28, !dbg !2691
  store i16 0, ptr %1608, align 1, !dbg !2693, !tbaa !1318
  %1609 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 36, !dbg !2694
  store i16 0, ptr %1609, align 1, !dbg !2695, !tbaa !1318
  br label %1610, !dbg !2696

1610:                                             ; preds = %1607, %1576, %1568
  %1611 = phi i32 [ %1561, %1607 ], [ %1606, %1576 ], [ %1575, %1568 ]
  call void @llvm.dbg.value(metadata i64 3, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1612 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3, !dbg !2664
  %1613 = load i8, ptr %1612, align 1, !dbg !2664, !tbaa !1314
  %1614 = icmp eq i8 %1613, 0, !dbg !2664
  br i1 %1614, label %1657, label %1615, !dbg !2665

1615:                                             ; preds = %1610
  %1616 = load i32, ptr %1312, align 16, !dbg !2697, !tbaa !2129
  %1617 = icmp eq i32 %1616, 0, !dbg !2698
  br i1 %1617, label %1626, label %1618, !dbg !2699

1618:                                             ; preds = %1615
  %1619 = zext i8 %1613 to i16, !dbg !2716
  %1620 = mul nuw i16 %1619, 257, !dbg !2718
  %1621 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 30, !dbg !2719
  store i16 %1620, ptr %1621, align 1, !dbg !2720, !tbaa !1318
  %1622 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 38, !dbg !2721
  store i16 %1620, ptr %1622, align 1, !dbg !2722, !tbaa !1318
  %1623 = zext i8 %1613 to i32, !dbg !2723
  %1624 = shl nuw nsw i32 %1623, 3, !dbg !2726
  %1625 = or i32 %1611, %1624, !dbg !2724
  store i32 %1625, ptr %1308, align 4, !dbg !2724, !tbaa !2093
  br label %1660, !dbg !2725

1626:                                             ; preds = %1615
  call void @llvm.dbg.value(metadata i32 0, metadata !1990, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 0, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1627 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 12, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1627, metadata !171, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2705
  %1628 = load <4 x i64>, ptr %1627, align 8, !dbg !2707, !tbaa !1402
  %1629 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1628), !dbg !2709
  %1630 = icmp ne i64 %1629, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1630, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1631 = zext i1 %1630 to i8, !dbg !2711
  %1632 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 30, !dbg !2712
  store i8 %1631, ptr %1632, align 1, !dbg !2713, !tbaa !1314
  call void @llvm.dbg.value(metadata i1 %1630, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  call void @llvm.dbg.value(metadata i64 1, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1633 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 13, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1633, metadata !171, metadata !DIExpression()), !dbg !2705
  %1634 = load <4 x i64>, ptr %1633, align 8, !dbg !2707, !tbaa !1402
  %1635 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1634), !dbg !2709
  %1636 = icmp ne i64 %1635, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1636, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1637 = zext i1 %1636 to i8, !dbg !2711
  %1638 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 31, !dbg !2712
  store i8 %1637, ptr %1638, align 1, !dbg !2713, !tbaa !1314
  %1639 = or i64 %1629, %1635, !dbg !2714
  call void @llvm.dbg.value(metadata i1 poison, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  call void @llvm.dbg.value(metadata i64 2, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1640 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 14, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1640, metadata !171, metadata !DIExpression()), !dbg !2705
  %1641 = load <4 x i64>, ptr %1640, align 8, !dbg !2707, !tbaa !1402
  %1642 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1641), !dbg !2709
  %1643 = icmp ne i64 %1642, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1643, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1644 = zext i1 %1643 to i8, !dbg !2711
  %1645 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 38, !dbg !2712
  store i8 %1644, ptr %1645, align 1, !dbg !2713, !tbaa !1314
  %1646 = or i64 %1639, %1642, !dbg !2714
  call void @llvm.dbg.value(metadata i64 3, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1647 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 15, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1647, metadata !171, metadata !DIExpression()), !dbg !2705
  %1648 = load <4 x i64>, ptr %1647, align 8, !dbg !2707, !tbaa !1402
  %1649 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %1648), !dbg !2709
  %1650 = icmp ne i64 %1649, 0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %1650, metadata !1982, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  %1651 = zext i1 %1650 to i8, !dbg !2711
  %1652 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 39, !dbg !2712
  store i8 %1651, ptr %1652, align 1, !dbg !2713, !tbaa !1314
  %1653 = or i64 %1646, %1649, !dbg !2714
  %1654 = icmp eq i64 %1653, 0, !dbg !2714
  call void @llvm.dbg.value(metadata i1 %1654, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2700
  call void @llvm.dbg.value(metadata i64 4, metadata !1917, metadata !DIExpression()), !dbg !1991
  %1655 = select i1 %1654, i32 0, i32 8, !dbg !2727
  %1656 = or i32 %1611, %1655, !dbg !2715
  store i32 %1656, ptr %1308, align 4, !dbg !2715, !tbaa !2093
  br label %1660

1657:                                             ; preds = %1610
  %1658 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 30, !dbg !2691
  store i16 0, ptr %1658, align 1, !dbg !2693, !tbaa !1318
  %1659 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 38, !dbg !2694
  store i16 0, ptr %1659, align 1, !dbg !2695, !tbaa !1318
  br label %1660, !dbg !2696

1660:                                             ; preds = %1657, %1626, %1618
  %1661 = phi i32 [ %1611, %1657 ], [ %1656, %1626 ], [ %1625, %1618 ]
  call void @llvm.dbg.value(metadata i64 4, metadata !1916, metadata !DIExpression()), !dbg !1991
  %1662 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 44, !dbg !2728
  store i8 0, ptr %1662, align 1, !dbg !2729, !tbaa !1314
  br label %1663

1663:                                             ; preds = %1660, %1315
  %1664 = phi i32 [ %1661, %1660 ], [ %1460, %1315 ]
  %1665 = phi i32 [ 0, %1660 ], [ %1467, %1315 ]
  %1666 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23, !dbg !2730
  %1667 = load i32, ptr %1666, align 4, !dbg !2730, !tbaa !2732
  %1668 = icmp eq i32 %1667, 0, !dbg !2733
  br i1 %1668, label %1680, label %1669, !dbg !2734

1669:                                             ; preds = %1663
  %1670 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 45, !dbg !2735
  %1671 = load i8, ptr %1670, align 1, !dbg !2735, !tbaa !1314
  %1672 = zext i8 %1671 to i32, !dbg !2735
  %1673 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 46, !dbg !2737
  %1674 = load i8, ptr %1673, align 1, !dbg !2737, !tbaa !1314
  %1675 = zext i8 %1674 to i32, !dbg !2737
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !1912, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value)), !dbg !1991
  %1676 = shl nuw nsw i32 %1675, 10, !dbg !2689
  %1677 = shl nuw nsw i32 %1672, 9, !dbg !2689
  %1678 = or i32 %1677, %1665, !dbg !2689
  %1679 = or i32 %1678, %1676, !dbg !2689
  br label %1680, !dbg !2738

1680:                                             ; preds = %1669, %1663
  %1681 = phi i32 [ %1679, %1669 ], [ 0, %1663 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1912, metadata !DIExpression()), !dbg !1991
  %1682 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 51, !dbg !2739
  %1683 = load i32, ptr %1682, align 8, !dbg !2739, !tbaa !1732
  %1684 = shl i32 %1683, 4, !dbg !2740
  %1685 = or i32 %1684, %1681, !dbg !2741
  %1686 = or i32 %1685, %1664, !dbg !2742
  %1687 = trunc i32 %1686 to i16, !dbg !2743
  %1688 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 34, !dbg !2744
  %1689 = load ptr, ptr %1688, align 16, !dbg !2744, !tbaa !2099
  %1690 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !2745
  %1691 = load i32, ptr %1690, align 8, !dbg !2745, !tbaa !2006
  %1692 = sext i32 %1691 to i64, !dbg !2746
  %1693 = getelementptr inbounds i16, ptr %1689, i64 %1692, !dbg !2746
  store i16 %1687, ptr %1693, align 2, !dbg !2747, !tbaa !1318
  br i1 %45, label %1694, label %1721, !dbg !2748

1694:                                             ; preds = %1680
  %1695 = load i32, ptr %46, align 8, !dbg !2749, !tbaa !2019
  %1696 = icmp eq i32 %1695, 4, !dbg !2753
  br i1 %1696, label %1697, label %1715, !dbg !2754

1697:                                             ; preds = %1694
  %1698 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 47, !dbg !2755
  %1699 = load i32, ptr %1698, align 4, !dbg !2755, !tbaa !2756
  %1700 = icmp eq i32 %1699, 16, !dbg !2757
  %1701 = or i32 %1664, %1683
  %1702 = icmp eq i32 %1701, 0
  %1703 = select i1 %1700, i1 %1702, i1 false, !dbg !2758
  br i1 %1703, label %1704, label %1721, !dbg !2758

1704:                                             ; preds = %1697
  %1705 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 0, i64 12, !dbg !2759
  %1706 = load i32, ptr %1705, align 4, !dbg !2760, !tbaa !1683
  %1707 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 8, !dbg !2761
  %1708 = load i32, ptr %1707, align 16, !dbg !2762, !tbaa !1683
  %1709 = icmp eq i32 %1706, %1708, !dbg !2763
  br i1 %1709, label %1710, label %1721, !dbg !2764

1710:                                             ; preds = %1704
  %1711 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 12, !dbg !2765
  %1712 = load i8, ptr %1711, align 1, !dbg !2765, !tbaa !1314
  %1713 = icmp eq i8 %1712, 0, !dbg !2766
  br i1 %1713, label %1714, label %1721, !dbg !2767

1714:                                             ; preds = %1710
  store i32 6, ptr %46, align 8, !dbg !2768, !tbaa !2019
  br label %1721, !dbg !2770

1715:                                             ; preds = %1694
  %1716 = or i32 %1664, %1683
  %1717 = icmp eq i32 %1695, 7, !dbg !2772
  %1718 = icmp eq i32 %1716, 0
  %1719 = select i1 %1717, i1 %1718, i1 false, !dbg !2770
  br i1 %1719, label %1720, label %1721, !dbg !2770

1720:                                             ; preds = %1715
  store i32 18, ptr %46, align 8, !dbg !2773, !tbaa !2019
  br label %1721, !dbg !2775

1721:                                             ; preds = %1697, %1704, %1710, %1714, %1680, %1720, %1715, %110, %95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8, !dbg !2776
  ret void, !dbg !2776
}

declare !dbg !2777 void @x264_mb_mc(ptr noundef) local_unnamed_addr #4

declare !dbg !2778 void @x264_predict_8x8_filter(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_macroblock_probe_skip(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2781 {
  %3 = alloca [4 x [4 x [4 x i16]]], align 16
  %4 = alloca [2 x [2 x i16]], align 16
  %5 = alloca [16 x i16], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2785, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %1, metadata !2786, metadata !DIExpression()), !dbg !2807
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #8, !dbg !2808
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2787, metadata !DIExpression()), !dbg !2808
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8, !dbg !2809
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2788, metadata !DIExpression()), !dbg !2809
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8, !dbg !2810
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2789, metadata !DIExpression()), !dbg !2810
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 58, !dbg !2811
  %7 = load i32, ptr %6, align 16, !dbg !2811, !tbaa !1993
  call void @llvm.dbg.value(metadata i32 %7, metadata !2790, metadata !DIExpression()), !dbg !2807
  %8 = icmp eq i32 %1, 0, !dbg !2812
  br i1 %8, label %9, label %37, !dbg !2814

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 8, !dbg !2815
  %11 = load i16, ptr %10, align 16, !dbg !2817, !tbaa !1318
  %12 = sext i16 %11 to i32, !dbg !2817
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 17, !dbg !2818
  %14 = load i32, ptr %13, align 4, !dbg !2819, !tbaa !1683
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 18, !dbg !2820
  %16 = load i32, ptr %15, align 4, !dbg !2821, !tbaa !1683
  call void @llvm.dbg.value(metadata i32 %12, metadata !2036, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 %14, metadata !2041, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 %16, metadata !2042, metadata !DIExpression()), !dbg !2822
  %17 = icmp sgt i32 %14, %12, !dbg !2824
  %18 = tail call i32 @llvm.smin.i32(i32 %12, i32 %16), !dbg !2825
  %19 = select i1 %17, i32 %14, i32 %18, !dbg !2825
  call void @llvm.dbg.value(metadata i32 %19, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2807
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 8, i64 1, !dbg !2826
  %21 = load i16, ptr %20, align 2, !dbg !2826, !tbaa !1318
  %22 = sext i16 %21 to i32, !dbg !2826
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 17, i64 1, !dbg !2827
  %24 = load i32, ptr %23, align 4, !dbg !2827, !tbaa !1683
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 18, i64 1, !dbg !2828
  %26 = load i32, ptr %25, align 4, !dbg !2828, !tbaa !1683
  call void @llvm.dbg.value(metadata i32 %22, metadata !2036, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 %24, metadata !2041, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 %26, metadata !2042, metadata !DIExpression()), !dbg !2829
  %27 = icmp sgt i32 %24, %22, !dbg !2831
  %28 = tail call i32 @llvm.smin.i32(i32 %22, i32 %26), !dbg !2832
  %29 = select i1 %27, i32 %24, i32 %28, !dbg !2832
  call void @llvm.dbg.value(metadata i32 %29, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2807
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, !dbg !2833
  %31 = load ptr, ptr %30, align 16, !dbg !2834, !tbaa !2067
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !2835
  %33 = load ptr, ptr %32, align 8, !dbg !2836, !tbaa !1309
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 16, !dbg !2837
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 18, !dbg !2838
  %36 = load i32, ptr %35, align 8, !dbg !2839, !tbaa !1683
  tail call void %31(ptr noundef %33, i32 noundef 32, ptr noundef nonnull %34, i32 noundef %36, i32 noundef %19, i32 noundef %29, i32 noundef 16, i32 noundef 16) #8, !dbg !2840
  br label %37, !dbg !2841

37:                                               ; preds = %9, %2
  %38 = phi i32 [ undef, %2 ], [ %19, %9 ]
  %39 = phi i32 [ undef, %2 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata i32 %39, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %38, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2807
  call void @llvm.dbg.value(metadata i32 0, metadata !2794, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 0, metadata !2796, metadata !DIExpression()), !dbg !2807
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14
  call void @llvm.dbg.value(metadata i32 0, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 0, metadata !2794, metadata !DIExpression()), !dbg !2807
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 1
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24, i64 1
  %45 = sext i32 %7 to i64
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26, i64 1
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 9
  %49 = getelementptr inbounds [4 x [4 x [4 x i16]]], ptr %3, i64 0, i64 1
  %50 = getelementptr inbounds [4 x [4 x [4 x i16]]], ptr %3, i64 0, i64 2
  %51 = getelementptr inbounds [4 x [4 x [4 x i16]]], ptr %3, i64 0, i64 3
  br label %52, !dbg !2842

52:                                               ; preds = %37, %131
  %53 = phi i32 [ 0, %37 ], [ %132, %131 ]
  %54 = phi i32 [ 0, %37 ], [ %133, %131 ]
  call void @llvm.dbg.value(metadata i32 %53, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %54, metadata !2794, metadata !DIExpression()), !dbg !2807
  %55 = shl nuw nsw i32 %54, 3, !dbg !2843
  %56 = and i32 %55, 8, !dbg !2843
  %57 = lshr i32 %54, 1, !dbg !2844
  %58 = shl nuw nsw i32 %57, 7, !dbg !2845
  %59 = or i32 %56, %58, !dbg !2846
  call void @llvm.dbg.value(metadata i32 %59, metadata !2797, metadata !DIExpression()), !dbg !2847
  %60 = shl nuw nsw i32 %57, 8, !dbg !2848
  %61 = or i32 %56, %60, !dbg !2849
  call void @llvm.dbg.value(metadata i32 %61, metadata !2801, metadata !DIExpression()), !dbg !2847
  %62 = load ptr, ptr %40, align 16, !dbg !2850, !tbaa !1557
  %63 = load ptr, ptr %41, align 8, !dbg !2851, !tbaa !1309
  %64 = zext i32 %59 to i64, !dbg !2852
  %65 = getelementptr inbounds i8, ptr %63, i64 %64, !dbg !2852
  %66 = load ptr, ptr %42, align 8, !dbg !2853, !tbaa !1309
  %67 = zext i32 %61 to i64, !dbg !2854
  %68 = getelementptr inbounds i8, ptr %66, i64 %67, !dbg !2854
  call void %62(ptr noundef nonnull %3, ptr noundef %65, ptr noundef %68) #8, !dbg !2855
  call void @llvm.dbg.value(metadata i32 0, metadata !2795, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %53, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 0, metadata !2795, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %53, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 0, metadata !2795, metadata !DIExpression()), !dbg !2807
  %69 = load ptr, ptr %43, align 8, !dbg !2856, !tbaa !1382
  %70 = load ptr, ptr %44, align 8, !dbg !2860, !tbaa !1309
  %71 = getelementptr inbounds [16 x i16], ptr %70, i64 %45, !dbg !2860
  %72 = load ptr, ptr %46, align 8, !dbg !2861, !tbaa !1309
  %73 = getelementptr inbounds [16 x i16], ptr %72, i64 %45, !dbg !2861
  call void %69(ptr noundef nonnull %3, ptr noundef %71, ptr noundef %73) #8, !dbg !2862
  call void @llvm.dbg.value(metadata ptr %3, metadata !171, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2863
  %74 = load <4 x i64>, ptr %3, align 16, !dbg !2866, !tbaa !1402
  %75 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %74), !dbg !2868
  %76 = icmp eq i64 %75, 0, !dbg !2869
  br i1 %76, label %83, label %77, !dbg !2870

77:                                               ; preds = %52
  %78 = load ptr, ptr %47, align 8, !dbg !2871, !tbaa !1408
  call void %78(ptr noundef nonnull %5, ptr noundef nonnull %3) #8, !dbg !2872
  %79 = load ptr, ptr %48, align 8, !dbg !2873, !tbaa !2577
  %80 = call i32 %79(ptr noundef nonnull %5) #8, !dbg !2874
  %81 = add nsw i32 %80, %53, !dbg !2875
  call void @llvm.dbg.value(metadata i32 %81, metadata !2796, metadata !DIExpression()), !dbg !2807
  %82 = icmp sgt i32 %81, 5, !dbg !2876
  br i1 %82, label %272, label %83, !dbg !2878

83:                                               ; preds = %77, %52
  %84 = phi i32 [ %81, %77 ], [ %53, %52 ], !dbg !2879
  call void @llvm.dbg.value(metadata i32 %84, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 1, metadata !2795, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %84, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 1, metadata !2795, metadata !DIExpression()), !dbg !2807
  %85 = load ptr, ptr %43, align 8, !dbg !2856, !tbaa !1382
  %86 = load ptr, ptr %44, align 8, !dbg !2860, !tbaa !1309
  %87 = getelementptr inbounds [16 x i16], ptr %86, i64 %45, !dbg !2860
  %88 = load ptr, ptr %46, align 8, !dbg !2861, !tbaa !1309
  %89 = getelementptr inbounds [16 x i16], ptr %88, i64 %45, !dbg !2861
  call void %85(ptr noundef nonnull %49, ptr noundef %87, ptr noundef %89) #8, !dbg !2862
  call void @llvm.dbg.value(metadata ptr %49, metadata !171, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2863
  %90 = load <4 x i64>, ptr %49, align 16, !dbg !2866, !tbaa !1402
  %91 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %90), !dbg !2868
  %92 = icmp eq i64 %91, 0, !dbg !2869
  br i1 %92, label %99, label %93, !dbg !2870

93:                                               ; preds = %83
  %94 = load ptr, ptr %47, align 8, !dbg !2871, !tbaa !1408
  call void %94(ptr noundef nonnull %5, ptr noundef nonnull %49) #8, !dbg !2872
  %95 = load ptr, ptr %48, align 8, !dbg !2873, !tbaa !2577
  %96 = call i32 %95(ptr noundef nonnull %5) #8, !dbg !2874
  %97 = add nsw i32 %96, %84, !dbg !2875
  call void @llvm.dbg.value(metadata i32 %97, metadata !2796, metadata !DIExpression()), !dbg !2807
  %98 = icmp sgt i32 %97, 5, !dbg !2876
  br i1 %98, label %272, label %99, !dbg !2878

99:                                               ; preds = %93, %83
  %100 = phi i32 [ %97, %93 ], [ %84, %83 ], !dbg !2879
  call void @llvm.dbg.value(metadata i32 %100, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 2, metadata !2795, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %100, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 2, metadata !2795, metadata !DIExpression()), !dbg !2807
  %101 = load ptr, ptr %43, align 8, !dbg !2856, !tbaa !1382
  %102 = load ptr, ptr %44, align 8, !dbg !2860, !tbaa !1309
  %103 = getelementptr inbounds [16 x i16], ptr %102, i64 %45, !dbg !2860
  %104 = load ptr, ptr %46, align 8, !dbg !2861, !tbaa !1309
  %105 = getelementptr inbounds [16 x i16], ptr %104, i64 %45, !dbg !2861
  call void %101(ptr noundef nonnull %50, ptr noundef %103, ptr noundef %105) #8, !dbg !2862
  call void @llvm.dbg.value(metadata ptr %50, metadata !171, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2863
  %106 = load <4 x i64>, ptr %50, align 16, !dbg !2866, !tbaa !1402
  %107 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %106), !dbg !2868
  %108 = icmp eq i64 %107, 0, !dbg !2869
  br i1 %108, label %115, label %109, !dbg !2870

109:                                              ; preds = %99
  %110 = load ptr, ptr %47, align 8, !dbg !2871, !tbaa !1408
  call void %110(ptr noundef nonnull %5, ptr noundef nonnull %50) #8, !dbg !2872
  %111 = load ptr, ptr %48, align 8, !dbg !2873, !tbaa !2577
  %112 = call i32 %111(ptr noundef nonnull %5) #8, !dbg !2874
  %113 = add nsw i32 %112, %100, !dbg !2875
  call void @llvm.dbg.value(metadata i32 %113, metadata !2796, metadata !DIExpression()), !dbg !2807
  %114 = icmp sgt i32 %113, 5, !dbg !2876
  br i1 %114, label %272, label %115, !dbg !2878

115:                                              ; preds = %109, %99
  %116 = phi i32 [ %113, %109 ], [ %100, %99 ], !dbg !2879
  call void @llvm.dbg.value(metadata i32 %116, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 3, metadata !2795, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %116, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 3, metadata !2795, metadata !DIExpression()), !dbg !2807
  %117 = load ptr, ptr %43, align 8, !dbg !2856, !tbaa !1382
  %118 = load ptr, ptr %44, align 8, !dbg !2860, !tbaa !1309
  %119 = getelementptr inbounds [16 x i16], ptr %118, i64 %45, !dbg !2860
  %120 = load ptr, ptr %46, align 8, !dbg !2861, !tbaa !1309
  %121 = getelementptr inbounds [16 x i16], ptr %120, i64 %45, !dbg !2861
  call void %117(ptr noundef nonnull %51, ptr noundef %119, ptr noundef %121) #8, !dbg !2862
  call void @llvm.dbg.value(metadata ptr %51, metadata !171, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2863
  %122 = load <4 x i64>, ptr %51, align 16, !dbg !2866, !tbaa !1402
  %123 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %122), !dbg !2868
  %124 = icmp eq i64 %123, 0, !dbg !2869
  br i1 %124, label %131, label %125, !dbg !2870

125:                                              ; preds = %115
  %126 = load ptr, ptr %47, align 8, !dbg !2871, !tbaa !1408
  call void %126(ptr noundef nonnull %5, ptr noundef nonnull %51) #8, !dbg !2872
  %127 = load ptr, ptr %48, align 8, !dbg !2873, !tbaa !2577
  %128 = call i32 %127(ptr noundef nonnull %5) #8, !dbg !2874
  %129 = add nsw i32 %128, %116, !dbg !2875
  call void @llvm.dbg.value(metadata i32 %129, metadata !2796, metadata !DIExpression()), !dbg !2807
  %130 = icmp sgt i32 %129, 5, !dbg !2876
  br i1 %130, label %272, label %131, !dbg !2878

131:                                              ; preds = %125, %115
  %132 = phi i32 [ %129, %125 ], [ %116, %115 ], !dbg !2879
  call void @llvm.dbg.value(metadata i32 %132, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 4, metadata !2795, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %132, metadata !2796, metadata !DIExpression()), !dbg !2807
  %133 = add nuw nsw i32 %54, 1, !dbg !2880
  call void @llvm.dbg.value(metadata i32 %133, metadata !2794, metadata !DIExpression()), !dbg !2807
  %134 = icmp eq i32 %133, 4, !dbg !2881
  br i1 %134, label %135, label %52, !dbg !2842, !llvm.loop !2882

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 59, !dbg !2884
  %137 = load i32, ptr %136, align 4, !dbg !2884, !tbaa !2657
  call void @llvm.dbg.value(metadata i32 %137, metadata !2790, metadata !DIExpression()), !dbg !2807
  %138 = sext i32 %137 to i64, !dbg !2885
  %139 = getelementptr inbounds [52 x i32], ptr @x264_lambda2_tab, i64 0, i64 %138, !dbg !2885
  %140 = load i32, ptr %139, align 4, !dbg !2885, !tbaa !1683
  %141 = add nsw i32 %140, 32, !dbg !2886
  %142 = ashr i32 %141, 6, !dbg !2887
  call void @llvm.dbg.value(metadata i32 %142, metadata !2793, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 0, metadata !2792, metadata !DIExpression()), !dbg !2807
  %143 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 2
  %144 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 16
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 52, i32 1, i64 3
  %146 = getelementptr inbounds [2 x i16], ptr %4, i64 1
  %147 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  %148 = getelementptr inbounds [2 x i16], ptr %4, i64 1, i64 1
  %149 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 3
  %150 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24, i64 3
  %151 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26, i64 3
  %152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 8
  br label %153, !dbg !2888

153:                                              ; preds = %135, %269
  %154 = phi i1 [ true, %135 ], [ false, %269 ]
  %155 = phi i64 [ 0, %135 ], [ 1, %269 ]
  call void @llvm.dbg.value(metadata i64 %155, metadata !2792, metadata !DIExpression()), !dbg !2807
  %156 = add nuw nsw i64 %155, 1, !dbg !2889
  %157 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, i64 %156, !dbg !2890
  %158 = load ptr, ptr %157, align 8, !dbg !2890, !tbaa !1309
  call void @llvm.dbg.value(metadata ptr %158, metadata !2802, metadata !DIExpression()), !dbg !2891
  %159 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 %156, !dbg !2892
  %160 = load ptr, ptr %159, align 8, !dbg !2892, !tbaa !1309
  call void @llvm.dbg.value(metadata ptr %160, metadata !2806, metadata !DIExpression()), !dbg !2891
  br i1 %8, label %161, label %168, !dbg !2893

161:                                              ; preds = %153
  %162 = load ptr, ptr %143, align 16, !dbg !2894, !tbaa !2075
  %163 = or i64 %155, 4, !dbg !2897
  %164 = getelementptr inbounds [6 x ptr], ptr %144, i64 0, i64 %163, !dbg !2898
  %165 = load ptr, ptr %164, align 8, !dbg !2898, !tbaa !1309
  %166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 18, i64 %156, !dbg !2899
  %167 = load i32, ptr %166, align 4, !dbg !2899, !tbaa !1683
  call void %162(ptr noundef %160, i32 noundef 32, ptr noundef %165, i32 noundef %167, i32 noundef %38, i32 noundef %39, i32 noundef 8, i32 noundef 8) #8, !dbg !2900
  br label %168, !dbg !2901

168:                                              ; preds = %161, %153
  %169 = load ptr, ptr %145, align 8, !dbg !2902, !tbaa !1309
  %170 = call i32 %169(ptr noundef %160, i32 noundef 32, ptr noundef %158, i32 noundef 16) #8, !dbg !2902
  %171 = icmp slt i32 %170, %142, !dbg !2904
  br i1 %171, label %269, label %172, !dbg !2905

172:                                              ; preds = %168
  %173 = load ptr, ptr %40, align 16, !dbg !2906, !tbaa !1557
  call void %173(ptr noundef nonnull %3, ptr noundef %158, ptr noundef %160) #8, !dbg !2907
  call void @llvm.dbg.value(metadata ptr %4, metadata !1559, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata ptr %3, metadata !1564, metadata !DIExpression()), !dbg !2908
  %174 = load i16, ptr %3, align 16, !dbg !2910, !tbaa !1318
  %175 = zext i16 %174 to i32, !dbg !2910
  %176 = load i16, ptr %49, align 16, !dbg !2911, !tbaa !1318
  %177 = zext i16 %176 to i32, !dbg !2911
  %178 = add nuw nsw i32 %177, %175, !dbg !2912
  call void @llvm.dbg.value(metadata i32 %178, metadata !1565, metadata !DIExpression()), !dbg !2908
  %179 = load i16, ptr %50, align 16, !dbg !2913, !tbaa !1318
  %180 = zext i16 %179 to i32, !dbg !2913
  %181 = load i16, ptr %51, align 16, !dbg !2914, !tbaa !1318
  %182 = zext i16 %181 to i32, !dbg !2914
  %183 = add nuw nsw i32 %182, %180, !dbg !2915
  call void @llvm.dbg.value(metadata i32 %183, metadata !1566, metadata !DIExpression()), !dbg !2908
  %184 = sub nsw i32 %175, %177, !dbg !2916
  call void @llvm.dbg.value(metadata i32 %184, metadata !1567, metadata !DIExpression()), !dbg !2908
  %185 = sub nsw i32 %180, %182, !dbg !2917
  call void @llvm.dbg.value(metadata i32 %185, metadata !1568, metadata !DIExpression()), !dbg !2908
  %186 = add nuw nsw i32 %183, %178, !dbg !2918
  %187 = trunc i32 %186 to i16, !dbg !2919
  store i16 %187, ptr %4, align 16, !dbg !2920, !tbaa !1318
  %188 = add nsw i32 %185, %184, !dbg !2921
  %189 = trunc i32 %188 to i16, !dbg !2922
  store i16 %189, ptr %146, align 4, !dbg !2923, !tbaa !1318
  %190 = sub nsw i32 %178, %183, !dbg !2924
  %191 = trunc i32 %190 to i16, !dbg !2925
  store i16 %191, ptr %147, align 2, !dbg !2926, !tbaa !1318
  %192 = sub nsw i32 %184, %185, !dbg !2927
  %193 = trunc i32 %192 to i16, !dbg !2928
  store i16 %193, ptr %148, align 2, !dbg !2929, !tbaa !1318
  store i16 0, ptr %3, align 16, !dbg !2930, !tbaa !1318
  store i16 0, ptr %49, align 16, !dbg !2931, !tbaa !1318
  store i16 0, ptr %50, align 16, !dbg !2932, !tbaa !1318
  store i16 0, ptr %51, align 16, !dbg !2933, !tbaa !1318
  %194 = load ptr, ptr %149, align 8, !dbg !2934, !tbaa !1624
  %195 = load ptr, ptr %150, align 8, !dbg !2935, !tbaa !1309
  %196 = getelementptr inbounds [16 x i16], ptr %195, i64 %138, !dbg !2935
  %197 = load i16, ptr %196, align 2, !dbg !2935, !tbaa !1318
  %198 = lshr i16 %197, 1
  %199 = zext i16 %198 to i32
  %200 = load ptr, ptr %151, align 8, !dbg !2936, !tbaa !1309
  %201 = getelementptr inbounds [16 x i16], ptr %200, i64 %138, !dbg !2936
  %202 = load i16, ptr %201, align 2, !dbg !2936, !tbaa !1318
  %203 = zext i16 %202 to i32, !dbg !2936
  %204 = shl nuw nsw i32 %203, 1, !dbg !2937
  call void %194(ptr noundef nonnull %4, i32 noundef %199, i32 noundef %204) #8, !dbg !2938
  call void @llvm.dbg.value(metadata ptr %4, metadata !171, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i32 8, metadata !172, metadata !DIExpression()), !dbg !2939
  %205 = load i64, ptr %4, align 16, !dbg !2942, !tbaa !1402
  %206 = icmp eq i64 %205, 0, !dbg !2944
  br i1 %206, label %207, label %272, !dbg !2945

207:                                              ; preds = %172
  call void @llvm.dbg.value(metadata i32 0, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 0, metadata !2795, metadata !DIExpression()), !dbg !2807
  %208 = load ptr, ptr %43, align 8, !dbg !2946, !tbaa !1382
  %209 = load ptr, ptr %150, align 8, !dbg !2950, !tbaa !1309
  %210 = getelementptr inbounds [16 x i16], ptr %209, i64 %138, !dbg !2950
  %211 = load ptr, ptr %151, align 8, !dbg !2951, !tbaa !1309
  %212 = getelementptr inbounds [16 x i16], ptr %211, i64 %138, !dbg !2951
  call void %208(ptr noundef nonnull %3, ptr noundef %210, ptr noundef %212) #8, !dbg !2952
  call void @llvm.dbg.value(metadata ptr %3, metadata !171, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2953
  %213 = load <4 x i64>, ptr %3, align 16, !dbg !2956, !tbaa !1402
  %214 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %213), !dbg !2958
  %215 = icmp eq i64 %214, 0, !dbg !2959
  br i1 %215, label %221, label %216, !dbg !2960

216:                                              ; preds = %207
  %217 = load ptr, ptr %47, align 8, !dbg !2961, !tbaa !1408
  call void %217(ptr noundef nonnull %5, ptr noundef nonnull %3) #8, !dbg !2962
  %218 = load ptr, ptr %152, align 8, !dbg !2963, !tbaa !1613
  %219 = call i32 %218(ptr noundef nonnull %5) #8, !dbg !2964
  call void @llvm.dbg.value(metadata i32 %219, metadata !2796, metadata !DIExpression()), !dbg !2807
  %220 = icmp sgt i32 %219, 6, !dbg !2965
  br i1 %220, label %272, label %221, !dbg !2967

221:                                              ; preds = %216, %207
  %222 = phi i32 [ %219, %216 ], [ 0, %207 ], !dbg !2968
  call void @llvm.dbg.value(metadata i32 %222, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 1, metadata !2795, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %222, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 1, metadata !2795, metadata !DIExpression()), !dbg !2807
  %223 = load ptr, ptr %43, align 8, !dbg !2946, !tbaa !1382
  %224 = load ptr, ptr %150, align 8, !dbg !2950, !tbaa !1309
  %225 = getelementptr inbounds [16 x i16], ptr %224, i64 %138, !dbg !2950
  %226 = load ptr, ptr %151, align 8, !dbg !2951, !tbaa !1309
  %227 = getelementptr inbounds [16 x i16], ptr %226, i64 %138, !dbg !2951
  call void %223(ptr noundef nonnull %49, ptr noundef %225, ptr noundef %227) #8, !dbg !2952
  call void @llvm.dbg.value(metadata ptr %49, metadata !171, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2953
  %228 = load <4 x i64>, ptr %49, align 16, !dbg !2956, !tbaa !1402
  %229 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %228), !dbg !2958
  %230 = icmp eq i64 %229, 0, !dbg !2959
  br i1 %230, label %237, label %231, !dbg !2960

231:                                              ; preds = %221
  %232 = load ptr, ptr %47, align 8, !dbg !2961, !tbaa !1408
  call void %232(ptr noundef nonnull %5, ptr noundef nonnull %49) #8, !dbg !2962
  %233 = load ptr, ptr %152, align 8, !dbg !2963, !tbaa !1613
  %234 = call i32 %233(ptr noundef nonnull %5) #8, !dbg !2964
  %235 = add nsw i32 %234, %222, !dbg !2969
  call void @llvm.dbg.value(metadata i32 %235, metadata !2796, metadata !DIExpression()), !dbg !2807
  %236 = icmp sgt i32 %235, 6, !dbg !2965
  br i1 %236, label %272, label %237, !dbg !2967

237:                                              ; preds = %231, %221
  %238 = phi i32 [ %235, %231 ], [ %222, %221 ], !dbg !2968
  call void @llvm.dbg.value(metadata i32 %238, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 2, metadata !2795, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %238, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 2, metadata !2795, metadata !DIExpression()), !dbg !2807
  %239 = load ptr, ptr %43, align 8, !dbg !2946, !tbaa !1382
  %240 = load ptr, ptr %150, align 8, !dbg !2950, !tbaa !1309
  %241 = getelementptr inbounds [16 x i16], ptr %240, i64 %138, !dbg !2950
  %242 = load ptr, ptr %151, align 8, !dbg !2951, !tbaa !1309
  %243 = getelementptr inbounds [16 x i16], ptr %242, i64 %138, !dbg !2951
  call void %239(ptr noundef nonnull %50, ptr noundef %241, ptr noundef %243) #8, !dbg !2952
  call void @llvm.dbg.value(metadata ptr %50, metadata !171, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2953
  %244 = load <4 x i64>, ptr %50, align 16, !dbg !2956, !tbaa !1402
  %245 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %244), !dbg !2958
  %246 = icmp eq i64 %245, 0, !dbg !2959
  br i1 %246, label %253, label %247, !dbg !2960

247:                                              ; preds = %237
  %248 = load ptr, ptr %47, align 8, !dbg !2961, !tbaa !1408
  call void %248(ptr noundef nonnull %5, ptr noundef nonnull %50) #8, !dbg !2962
  %249 = load ptr, ptr %152, align 8, !dbg !2963, !tbaa !1613
  %250 = call i32 %249(ptr noundef nonnull %5) #8, !dbg !2964
  %251 = add nsw i32 %250, %238, !dbg !2969
  call void @llvm.dbg.value(metadata i32 %251, metadata !2796, metadata !DIExpression()), !dbg !2807
  %252 = icmp sgt i32 %251, 6, !dbg !2965
  br i1 %252, label %272, label %253, !dbg !2967

253:                                              ; preds = %247, %237
  %254 = phi i32 [ %251, %247 ], [ %238, %237 ], !dbg !2968
  call void @llvm.dbg.value(metadata i32 %254, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 3, metadata !2795, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %254, metadata !2796, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 3, metadata !2795, metadata !DIExpression()), !dbg !2807
  %255 = load ptr, ptr %43, align 8, !dbg !2946, !tbaa !1382
  %256 = load ptr, ptr %150, align 8, !dbg !2950, !tbaa !1309
  %257 = getelementptr inbounds [16 x i16], ptr %256, i64 %138, !dbg !2950
  %258 = load ptr, ptr %151, align 8, !dbg !2951, !tbaa !1309
  %259 = getelementptr inbounds [16 x i16], ptr %258, i64 %138, !dbg !2951
  call void %255(ptr noundef nonnull %51, ptr noundef %257, ptr noundef %259) #8, !dbg !2952
  call void @llvm.dbg.value(metadata ptr %51, metadata !171, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !2953
  %260 = load <4 x i64>, ptr %51, align 16, !dbg !2956, !tbaa !1402
  %261 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %260), !dbg !2958
  %262 = icmp eq i64 %261, 0, !dbg !2959
  br i1 %262, label %269, label %263, !dbg !2960

263:                                              ; preds = %253
  %264 = load ptr, ptr %47, align 8, !dbg !2961, !tbaa !1408
  call void %264(ptr noundef nonnull %5, ptr noundef nonnull %51) #8, !dbg !2962
  %265 = load ptr, ptr %152, align 8, !dbg !2963, !tbaa !1613
  %266 = call i32 %265(ptr noundef nonnull %5) #8, !dbg !2964
  %267 = add nsw i32 %266, %254, !dbg !2969
  call void @llvm.dbg.value(metadata i32 %267, metadata !2796, metadata !DIExpression()), !dbg !2807
  %268 = icmp sgt i32 %267, 6, !dbg !2965
  br i1 %268, label %272, label %269, !dbg !2967

269:                                              ; preds = %253, %263, %168
  call void @llvm.dbg.value(metadata i64 %156, metadata !2792, metadata !DIExpression()), !dbg !2807
  br i1 %154, label %153, label %270, !dbg !2888, !llvm.loop !2970

270:                                              ; preds = %269
  %271 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 55, !dbg !2972
  store i32 1, ptr %271, align 8, !dbg !2973, !tbaa !2049
  br label %272, !dbg !2974

272:                                              ; preds = %77, %93, %109, %125, %172, %216, %231, %247, %263, %270
  %273 = phi i32 [ 1, %270 ], [ 0, %263 ], [ 0, %247 ], [ 0, %231 ], [ 0, %216 ], [ 0, %172 ], [ 0, %125 ], [ 0, %109 ], [ 0, %93 ], [ 0, %77 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8, !dbg !2975
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8, !dbg !2975
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #8, !dbg !2975
  ret i32 %273, !dbg !2975
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @x264_noise_reduction_update(ptr nocapture noundef %0) local_unnamed_addr #5 !dbg !2976 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2978, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i32 0, metadata !2979, metadata !DIExpression()), !dbg !2987
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 17
  %3 = load i32, ptr %2, align 4, !tbaa !2988
  %4 = sext i32 %3 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !2979, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 0, metadata !2979, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i32 16, metadata !2981, metadata !DIExpression()), !dbg !2989
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 32, i64 0, !dbg !2990
  %6 = load i32, ptr %5, align 4, !dbg !2990, !tbaa !1683
  %7 = icmp ugt i32 %6, 262144, !dbg !2992
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 0
  %9 = load i32, ptr %8, align 4, !dbg !2989, !tbaa !1683
  br i1 %7, label %25, label %10, !dbg !2993

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 1
  %12 = load i32, ptr %11, align 4, !dbg !2994, !tbaa !1683
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 2
  %14 = load i32, ptr %13, align 4, !dbg !2994, !tbaa !1683
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 3
  %16 = load i32, ptr %15, align 4, !dbg !2994, !tbaa !1683
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 4
  %18 = load i32, ptr %17, align 4, !dbg !2994, !tbaa !1683
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 5
  %20 = load i32, ptr %19, align 4, !dbg !2994, !tbaa !1683
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 6
  %22 = load i32, ptr %21, align 4, !dbg !2994, !tbaa !1683
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 7
  %24 = load i32, ptr %23, align 4, !dbg !2994, !tbaa !1683
  br label %50, !dbg !2993

25:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i64 0, metadata !2980, metadata !DIExpression()), !dbg !2987
  %26 = lshr i32 %9, 1, !dbg !2997
  store i32 %26, ptr %8, align 4, !dbg !2997, !tbaa !1683
  call void @llvm.dbg.value(metadata i64 1, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 1, metadata !2980, metadata !DIExpression()), !dbg !2987
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 1, !dbg !3001
  call void @llvm.dbg.value(metadata i64 2, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 2, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 3, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 3, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 4, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 4, metadata !2980, metadata !DIExpression()), !dbg !2987
  %28 = load <4 x i32>, ptr %27, align 4, !dbg !2997, !tbaa !1683
  %29 = lshr <4 x i32> %28, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %29, ptr %27, align 4, !dbg !2997, !tbaa !1683
  call void @llvm.dbg.value(metadata i64 5, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 5, metadata !2980, metadata !DIExpression()), !dbg !2987
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 5, !dbg !3001
  call void @llvm.dbg.value(metadata i64 6, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 6, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 7, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 7, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 8, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 8, metadata !2980, metadata !DIExpression()), !dbg !2987
  %31 = load <4 x i32>, ptr %30, align 4, !dbg !2997, !tbaa !1683
  %32 = lshr <4 x i32> %31, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %32, ptr %30, align 4, !dbg !2997, !tbaa !1683
  call void @llvm.dbg.value(metadata i64 9, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 9, metadata !2980, metadata !DIExpression()), !dbg !2987
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 9, !dbg !3001
  call void @llvm.dbg.value(metadata i64 10, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 10, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 11, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 11, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 12, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 12, metadata !2980, metadata !DIExpression()), !dbg !2987
  %34 = load <4 x i32>, ptr %33, align 4, !dbg !2997, !tbaa !1683
  %35 = lshr <4 x i32> %34, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %35, ptr %33, align 4, !dbg !2997, !tbaa !1683
  call void @llvm.dbg.value(metadata i64 13, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 13, metadata !2980, metadata !DIExpression()), !dbg !2987
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 13, !dbg !3001
  call void @llvm.dbg.value(metadata i64 14, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 14, metadata !2980, metadata !DIExpression()), !dbg !2987
  %37 = load <2 x i32>, ptr %36, align 4, !dbg !2997, !tbaa !1683
  %38 = lshr <2 x i32> %37, <i32 1, i32 1>, !dbg !2997
  store <2 x i32> %38, ptr %36, align 4, !dbg !2997, !tbaa !1683
  call void @llvm.dbg.value(metadata i64 15, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 15, metadata !2980, metadata !DIExpression()), !dbg !2987
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 15, !dbg !3001
  %40 = load i32, ptr %39, align 4, !dbg !2997, !tbaa !1683
  %41 = lshr i32 %40, 1, !dbg !2997
  store i32 %41, ptr %39, align 4, !dbg !2997, !tbaa !1683
  call void @llvm.dbg.value(metadata i64 16, metadata !2980, metadata !DIExpression()), !dbg !2987
  %42 = lshr i32 %6, 1, !dbg !3002
  store i32 %42, ptr %5, align 4, !dbg !3002, !tbaa !1683
  %43 = extractelement <4 x i32> %29, i64 0, !dbg !3003
  %44 = extractelement <4 x i32> %29, i64 1, !dbg !3003
  %45 = extractelement <4 x i32> %29, i64 2, !dbg !3003
  %46 = extractelement <4 x i32> %29, i64 3, !dbg !3003
  %47 = extractelement <4 x i32> %32, i64 0, !dbg !3003
  %48 = extractelement <4 x i32> %32, i64 1, !dbg !3003
  %49 = extractelement <4 x i32> %32, i64 2, !dbg !3003
  br label %50, !dbg !3003

50:                                               ; preds = %10, %25
  %51 = phi i32 [ %49, %25 ], [ %24, %10 ], !dbg !2994
  %52 = phi i32 [ %48, %25 ], [ %22, %10 ], !dbg !2994
  %53 = phi i32 [ %47, %25 ], [ %20, %10 ], !dbg !2994
  %54 = phi i32 [ %46, %25 ], [ %18, %10 ], !dbg !2994
  %55 = phi i32 [ %45, %25 ], [ %16, %10 ], !dbg !2994
  %56 = phi i32 [ %44, %25 ], [ %14, %10 ], !dbg !2994
  %57 = phi i32 [ %43, %25 ], [ %12, %10 ], !dbg !2994
  %58 = phi i32 [ %26, %25 ], [ %9, %10 ], !dbg !2994
  %59 = phi i32 [ %42, %25 ], [ %6, %10 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !2980, metadata !DIExpression()), !dbg !2987
  %60 = zext i32 %59 to i64
  %61 = mul nsw i64 %60, %4
  call void @llvm.dbg.value(metadata i32 0, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 0, metadata !2980, metadata !DIExpression()), !dbg !2987
  %62 = lshr i32 %58, 1, !dbg !3004
  %63 = zext i32 %62 to i64, !dbg !2994
  %64 = add nsw i64 %61, %63, !dbg !3005
  %65 = zext i32 %58 to i64, !dbg !3006
  %66 = mul nuw nsw i64 %65, 800, !dbg !3007
  %67 = lshr i64 %66, 8, !dbg !3008
  %68 = add nuw nsw i64 %67, 1, !dbg !3009
  %69 = udiv i64 %64, %68, !dbg !3010
  %70 = trunc i64 %69 to i16, !dbg !3011
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 0, !dbg !3012
  store i16 %70, ptr %71, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 1, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 1, metadata !2980, metadata !DIExpression()), !dbg !2987
  %72 = lshr i32 %57, 1, !dbg !3004
  %73 = zext i32 %72 to i64, !dbg !2994
  %74 = add nsw i64 %61, %73, !dbg !3005
  %75 = zext i32 %57 to i64, !dbg !3006
  %76 = mul nuw nsw i64 %75, 320, !dbg !3007
  %77 = lshr i64 %76, 8, !dbg !3008
  %78 = add nuw nsw i64 %77, 1, !dbg !3009
  %79 = udiv i64 %74, %78, !dbg !3010
  %80 = trunc i64 %79 to i16, !dbg !3011
  %81 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 1, !dbg !3012
  store i16 %80, ptr %81, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 2, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 2, metadata !2980, metadata !DIExpression()), !dbg !2987
  %82 = lshr i32 %56, 1, !dbg !3004
  %83 = zext i32 %82 to i64, !dbg !2994
  %84 = add nsw i64 %61, %83, !dbg !3005
  %85 = zext i32 %56 to i64, !dbg !3006
  %86 = mul nuw nsw i64 %85, 800, !dbg !3007
  %87 = lshr i64 %86, 8, !dbg !3008
  %88 = add nuw nsw i64 %87, 1, !dbg !3009
  %89 = udiv i64 %84, %88, !dbg !3010
  %90 = trunc i64 %89 to i16, !dbg !3011
  %91 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 2, !dbg !3012
  store i16 %90, ptr %91, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 3, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 3, metadata !2980, metadata !DIExpression()), !dbg !2987
  %92 = lshr i32 %55, 1, !dbg !3004
  %93 = zext i32 %92 to i64, !dbg !2994
  %94 = add nsw i64 %61, %93, !dbg !3005
  %95 = zext i32 %55 to i64, !dbg !3006
  %96 = mul nuw nsw i64 %95, 320, !dbg !3007
  %97 = lshr i64 %96, 8, !dbg !3008
  %98 = add nuw nsw i64 %97, 1, !dbg !3009
  %99 = udiv i64 %94, %98, !dbg !3010
  %100 = trunc i64 %99 to i16, !dbg !3011
  %101 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 3, !dbg !3012
  store i16 %100, ptr %101, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 4, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 4, metadata !2980, metadata !DIExpression()), !dbg !2987
  %102 = lshr i32 %54, 1, !dbg !3004
  %103 = zext i32 %102 to i64, !dbg !2994
  %104 = add nsw i64 %61, %103, !dbg !3005
  %105 = zext i32 %54 to i64, !dbg !3006
  %106 = mul nuw nsw i64 %105, 320, !dbg !3007
  %107 = lshr i64 %106, 8, !dbg !3008
  %108 = add nuw nsw i64 %107, 1, !dbg !3009
  %109 = udiv i64 %104, %108, !dbg !3010
  %110 = trunc i64 %109 to i16, !dbg !3011
  %111 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 4, !dbg !3012
  store i16 %110, ptr %111, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 5, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 5, metadata !2980, metadata !DIExpression()), !dbg !2987
  %112 = lshr i32 %53, 1, !dbg !3004
  %113 = zext i32 %112 to i64, !dbg !2994
  %114 = add nsw i64 %61, %113, !dbg !3005
  %115 = lshr i32 %53, 1, !dbg !3008
  %116 = add nuw i32 %115, 1, !dbg !3009
  %117 = zext i32 %116 to i64, !dbg !3009
  %118 = udiv i64 %114, %117, !dbg !3010
  %119 = trunc i64 %118 to i16, !dbg !3011
  %120 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 5, !dbg !3012
  store i16 %119, ptr %120, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 6, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 6, metadata !2980, metadata !DIExpression()), !dbg !2987
  %121 = lshr i32 %52, 1, !dbg !3004
  %122 = zext i32 %121 to i64, !dbg !2994
  %123 = add nsw i64 %61, %122, !dbg !3005
  %124 = zext i32 %52 to i64, !dbg !3006
  %125 = mul nuw nsw i64 %124, 320, !dbg !3007
  %126 = lshr i64 %125, 8, !dbg !3008
  %127 = add nuw nsw i64 %126, 1, !dbg !3009
  %128 = udiv i64 %123, %127, !dbg !3010
  %129 = trunc i64 %128 to i16, !dbg !3011
  %130 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 6, !dbg !3012
  store i16 %129, ptr %130, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 7, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 7, metadata !2980, metadata !DIExpression()), !dbg !2987
  %131 = lshr i32 %51, 1, !dbg !3004
  %132 = zext i32 %131 to i64, !dbg !2994
  %133 = add nsw i64 %61, %132, !dbg !3005
  %134 = lshr i32 %51, 1, !dbg !3008
  %135 = add nuw i32 %134, 1, !dbg !3009
  %136 = zext i32 %135 to i64, !dbg !3009
  %137 = udiv i64 %133, %136, !dbg !3010
  %138 = trunc i64 %137 to i16, !dbg !3011
  %139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 7, !dbg !3012
  store i16 %138, ptr %139, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 8, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 8, metadata !2980, metadata !DIExpression()), !dbg !2987
  %140 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 8, !dbg !2994
  %141 = load i32, ptr %140, align 4, !dbg !2994, !tbaa !1683
  %142 = lshr i32 %141, 1, !dbg !3004
  %143 = zext i32 %142 to i64, !dbg !2994
  %144 = add nsw i64 %61, %143, !dbg !3005
  %145 = zext i32 %141 to i64, !dbg !3006
  %146 = mul nuw nsw i64 %145, 800, !dbg !3007
  %147 = lshr i64 %146, 8, !dbg !3008
  %148 = add nuw nsw i64 %147, 1, !dbg !3009
  %149 = udiv i64 %144, %148, !dbg !3010
  %150 = trunc i64 %149 to i16, !dbg !3011
  %151 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 8, !dbg !3012
  store i16 %150, ptr %151, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 9, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 9, metadata !2980, metadata !DIExpression()), !dbg !2987
  %152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 9, !dbg !2994
  %153 = load i32, ptr %152, align 4, !dbg !2994, !tbaa !1683
  %154 = lshr i32 %153, 1, !dbg !3004
  %155 = zext i32 %154 to i64, !dbg !2994
  %156 = add nsw i64 %61, %155, !dbg !3005
  %157 = zext i32 %153 to i64, !dbg !3006
  %158 = mul nuw nsw i64 %157, 320, !dbg !3007
  %159 = lshr i64 %158, 8, !dbg !3008
  %160 = add nuw nsw i64 %159, 1, !dbg !3009
  %161 = udiv i64 %156, %160, !dbg !3010
  %162 = trunc i64 %161 to i16, !dbg !3011
  %163 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 9, !dbg !3012
  store i16 %162, ptr %163, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 10, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 10, metadata !2980, metadata !DIExpression()), !dbg !2987
  %164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 10, !dbg !2994
  %165 = load i32, ptr %164, align 4, !dbg !2994, !tbaa !1683
  %166 = lshr i32 %165, 1, !dbg !3004
  %167 = zext i32 %166 to i64, !dbg !2994
  %168 = add nsw i64 %61, %167, !dbg !3005
  %169 = zext i32 %165 to i64, !dbg !3006
  %170 = mul nuw nsw i64 %169, 800, !dbg !3007
  %171 = lshr i64 %170, 8, !dbg !3008
  %172 = add nuw nsw i64 %171, 1, !dbg !3009
  %173 = udiv i64 %168, %172, !dbg !3010
  %174 = trunc i64 %173 to i16, !dbg !3011
  %175 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 10, !dbg !3012
  store i16 %174, ptr %175, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 11, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 11, metadata !2980, metadata !DIExpression()), !dbg !2987
  %176 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 11, !dbg !2994
  %177 = load i32, ptr %176, align 4, !dbg !2994, !tbaa !1683
  %178 = lshr i32 %177, 1, !dbg !3004
  %179 = zext i32 %178 to i64, !dbg !2994
  %180 = add nsw i64 %61, %179, !dbg !3005
  %181 = zext i32 %177 to i64, !dbg !3006
  %182 = mul nuw nsw i64 %181, 320, !dbg !3007
  %183 = lshr i64 %182, 8, !dbg !3008
  %184 = add nuw nsw i64 %183, 1, !dbg !3009
  %185 = udiv i64 %180, %184, !dbg !3010
  %186 = trunc i64 %185 to i16, !dbg !3011
  %187 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 11, !dbg !3012
  store i16 %186, ptr %187, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 12, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 12, metadata !2980, metadata !DIExpression()), !dbg !2987
  %188 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 12, !dbg !2994
  %189 = load i32, ptr %188, align 4, !dbg !2994, !tbaa !1683
  %190 = lshr i32 %189, 1, !dbg !3004
  %191 = zext i32 %190 to i64, !dbg !2994
  %192 = add nsw i64 %61, %191, !dbg !3005
  %193 = zext i32 %189 to i64, !dbg !3006
  %194 = mul nuw nsw i64 %193, 320, !dbg !3007
  %195 = lshr i64 %194, 8, !dbg !3008
  %196 = add nuw nsw i64 %195, 1, !dbg !3009
  %197 = udiv i64 %192, %196, !dbg !3010
  %198 = trunc i64 %197 to i16, !dbg !3011
  %199 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 12, !dbg !3012
  store i16 %198, ptr %199, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 13, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 13, metadata !2980, metadata !DIExpression()), !dbg !2987
  %200 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 13, !dbg !2994
  %201 = load i32, ptr %200, align 4, !dbg !2994, !tbaa !1683
  %202 = lshr i32 %201, 1, !dbg !3004
  %203 = zext i32 %202 to i64, !dbg !2994
  %204 = add nsw i64 %61, %203, !dbg !3005
  %205 = lshr i32 %201, 1, !dbg !3008
  %206 = add nuw i32 %205, 1, !dbg !3009
  %207 = zext i32 %206 to i64, !dbg !3009
  %208 = udiv i64 %204, %207, !dbg !3010
  %209 = trunc i64 %208 to i16, !dbg !3011
  %210 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 13, !dbg !3012
  store i16 %209, ptr %210, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 14, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 14, metadata !2980, metadata !DIExpression()), !dbg !2987
  %211 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 14, !dbg !2994
  %212 = load i32, ptr %211, align 4, !dbg !2994, !tbaa !1683
  %213 = lshr i32 %212, 1, !dbg !3004
  %214 = zext i32 %213 to i64, !dbg !2994
  %215 = add nsw i64 %61, %214, !dbg !3005
  %216 = zext i32 %212 to i64, !dbg !3006
  %217 = mul nuw nsw i64 %216, 320, !dbg !3007
  %218 = lshr i64 %217, 8, !dbg !3008
  %219 = add nuw nsw i64 %218, 1, !dbg !3009
  %220 = udiv i64 %215, %219, !dbg !3010
  %221 = trunc i64 %220 to i16, !dbg !3011
  %222 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 14, !dbg !3012
  store i16 %221, ptr %222, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 15, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 15, metadata !2980, metadata !DIExpression()), !dbg !2987
  %223 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 0, i64 15, !dbg !2994
  %224 = load i32, ptr %223, align 4, !dbg !2994, !tbaa !1683
  %225 = lshr i32 %224, 1, !dbg !3004
  %226 = zext i32 %225 to i64, !dbg !2994
  %227 = add nsw i64 %61, %226, !dbg !3005
  %228 = lshr i32 %224, 1, !dbg !3008
  %229 = add nuw i32 %228, 1, !dbg !3009
  %230 = zext i32 %229 to i64, !dbg !3009
  %231 = udiv i64 %227, %230, !dbg !3010
  %232 = trunc i64 %231 to i16, !dbg !3011
  %233 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 0, i64 15, !dbg !3012
  store i16 %232, ptr %233, align 2, !dbg !3013, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 16, metadata !2980, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 1, metadata !2979, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 1, metadata !2979, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i32 64, metadata !2981, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata ptr @x264_dct8_weight2_tab, metadata !2985, metadata !DIExpression()), !dbg !2989
  %234 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 32, i64 1, !dbg !2990
  %235 = load i32, ptr %234, align 4, !dbg !2990, !tbaa !1683
  %236 = icmp ugt i32 %235, 65536, !dbg !2992
  br i1 %236, label %237, label %288, !dbg !2993

237:                                              ; preds = %50
  %238 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 0, !dbg !3001
  %239 = load <4 x i32>, ptr %238, align 4, !dbg !2997, !tbaa !1683
  %240 = lshr <4 x i32> %239, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %240, ptr %238, align 4, !dbg !2997, !tbaa !1683
  %241 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 4, !dbg !3001
  %242 = load <4 x i32>, ptr %241, align 4, !dbg !2997, !tbaa !1683
  %243 = lshr <4 x i32> %242, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %243, ptr %241, align 4, !dbg !2997, !tbaa !1683
  %244 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 8, !dbg !3001
  %245 = load <4 x i32>, ptr %244, align 4, !dbg !2997, !tbaa !1683
  %246 = lshr <4 x i32> %245, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %246, ptr %244, align 4, !dbg !2997, !tbaa !1683
  %247 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 12, !dbg !3001
  %248 = load <4 x i32>, ptr %247, align 4, !dbg !2997, !tbaa !1683
  %249 = lshr <4 x i32> %248, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %249, ptr %247, align 4, !dbg !2997, !tbaa !1683
  %250 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 16, !dbg !3001
  %251 = load <4 x i32>, ptr %250, align 4, !dbg !2997, !tbaa !1683
  %252 = lshr <4 x i32> %251, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %252, ptr %250, align 4, !dbg !2997, !tbaa !1683
  %253 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 20, !dbg !3001
  %254 = load <4 x i32>, ptr %253, align 4, !dbg !2997, !tbaa !1683
  %255 = lshr <4 x i32> %254, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %255, ptr %253, align 4, !dbg !2997, !tbaa !1683
  %256 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 24, !dbg !3001
  %257 = load <4 x i32>, ptr %256, align 4, !dbg !2997, !tbaa !1683
  %258 = lshr <4 x i32> %257, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %258, ptr %256, align 4, !dbg !2997, !tbaa !1683
  %259 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 28, !dbg !3001
  %260 = load <4 x i32>, ptr %259, align 4, !dbg !2997, !tbaa !1683
  %261 = lshr <4 x i32> %260, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %261, ptr %259, align 4, !dbg !2997, !tbaa !1683
  %262 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 32, !dbg !3001
  %263 = load <4 x i32>, ptr %262, align 4, !dbg !2997, !tbaa !1683
  %264 = lshr <4 x i32> %263, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %264, ptr %262, align 4, !dbg !2997, !tbaa !1683
  %265 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 36, !dbg !3001
  %266 = load <4 x i32>, ptr %265, align 4, !dbg !2997, !tbaa !1683
  %267 = lshr <4 x i32> %266, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %267, ptr %265, align 4, !dbg !2997, !tbaa !1683
  %268 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 40, !dbg !3001
  %269 = load <4 x i32>, ptr %268, align 4, !dbg !2997, !tbaa !1683
  %270 = lshr <4 x i32> %269, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %270, ptr %268, align 4, !dbg !2997, !tbaa !1683
  %271 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 44, !dbg !3001
  %272 = load <4 x i32>, ptr %271, align 4, !dbg !2997, !tbaa !1683
  %273 = lshr <4 x i32> %272, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %273, ptr %271, align 4, !dbg !2997, !tbaa !1683
  %274 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 48, !dbg !3001
  %275 = load <4 x i32>, ptr %274, align 4, !dbg !2997, !tbaa !1683
  %276 = lshr <4 x i32> %275, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %276, ptr %274, align 4, !dbg !2997, !tbaa !1683
  %277 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 52, !dbg !3001
  %278 = load <4 x i32>, ptr %277, align 4, !dbg !2997, !tbaa !1683
  %279 = lshr <4 x i32> %278, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %279, ptr %277, align 4, !dbg !2997, !tbaa !1683
  %280 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 56, !dbg !3001
  %281 = load <4 x i32>, ptr %280, align 4, !dbg !2997, !tbaa !1683
  %282 = lshr <4 x i32> %281, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %282, ptr %280, align 4, !dbg !2997, !tbaa !1683
  %283 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 60, !dbg !3001
  %284 = load <4 x i32>, ptr %283, align 4, !dbg !2997, !tbaa !1683
  %285 = lshr <4 x i32> %284, <i32 1, i32 1, i32 1, i32 1>, !dbg !2997
  store <4 x i32> %285, ptr %283, align 4, !dbg !2997, !tbaa !1683
  %286 = load i32, ptr %234, align 4, !dbg !3002, !tbaa !1683
  %287 = lshr i32 %286, 1, !dbg !3002
  store i32 %287, ptr %234, align 4, !dbg !3002, !tbaa !1683
  br label %288, !dbg !3003

288:                                              ; preds = %237, %50
  %289 = phi i32 [ %287, %237 ], [ %235, %50 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !2980, metadata !DIExpression()), !dbg !2987
  %290 = zext i32 %289 to i64
  %291 = mul nsw i64 %290, %4
  call void @llvm.dbg.value(metadata i32 0, metadata !2980, metadata !DIExpression()), !dbg !2987
  br label %292, !dbg !3014

292:                                              ; preds = %292, %288
  %293 = phi i64 [ 0, %288 ], [ %309, %292 ]
  call void @llvm.dbg.value(metadata i64 %293, metadata !2980, metadata !DIExpression()), !dbg !2987
  %294 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1, i64 %293, !dbg !2994
  %295 = load i32, ptr %294, align 4, !dbg !2994, !tbaa !1683
  %296 = lshr i32 %295, 1, !dbg !3004
  %297 = zext i32 %296 to i64, !dbg !2994
  %298 = add nsw i64 %291, %297, !dbg !3005
  %299 = zext i32 %295 to i64, !dbg !3006
  %300 = getelementptr inbounds i16, ptr @x264_dct8_weight2_tab, i64 %293, !dbg !3015
  %301 = load i16, ptr %300, align 2, !dbg !3015, !tbaa !1318
  %302 = zext i16 %301 to i64, !dbg !3015
  %303 = mul nuw nsw i64 %302, %299, !dbg !3007
  %304 = lshr i64 %303, 8, !dbg !3008
  %305 = add nuw nsw i64 %304, 1, !dbg !3009
  %306 = udiv i64 %298, %305, !dbg !3010
  %307 = trunc i64 %306 to i16, !dbg !3011
  %308 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 1, i64 %293, !dbg !3012
  store i16 %307, ptr %308, align 2, !dbg !3013, !tbaa !1318
  %309 = add nuw nsw i64 %293, 1, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %309, metadata !2980, metadata !DIExpression()), !dbg !2987
  %310 = icmp eq i64 %309, 64, !dbg !3017
  br i1 %310, label %311, label %292, !dbg !3014, !llvm.loop !3018

311:                                              ; preds = %292
  call void @llvm.dbg.value(metadata i64 2, metadata !2979, metadata !DIExpression()), !dbg !2987
  ret void, !dbg !3020
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_encode_p8x8(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3021 {
  %3 = alloca [8 x [8 x i16]], align 16
  %4 = alloca [4 x [4 x [4 x i16]]], align 16
  %5 = alloca [4 x [4 x i16]], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3023, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 %1, metadata !3024, metadata !DIExpression()), !dbg !3048
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 58, !dbg !3049
  %7 = load i32, ptr %6, align 16, !dbg !3049, !tbaa !1993
  call void @llvm.dbg.value(metadata i32 %7, metadata !3025, metadata !DIExpression()), !dbg !3048
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, !dbg !3050
  %9 = load ptr, ptr %8, align 8, !dbg !3051, !tbaa !1309
  %10 = and i32 %1, 1, !dbg !3052
  %11 = shl nuw nsw i32 %10, 3, !dbg !3053
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %9, i64 %12, !dbg !3054
  %14 = ashr i32 %1, 1, !dbg !3055
  %15 = shl nsw i32 %14, 7, !dbg !3056
  %16 = sext i32 %15 to i64, !dbg !3057
  %17 = getelementptr inbounds i8, ptr %13, i64 %16, !dbg !3057
  call void @llvm.dbg.value(metadata ptr %17, metadata !3026, metadata !DIExpression()), !dbg !3048
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !3058
  %19 = load ptr, ptr %18, align 8, !dbg !3059, !tbaa !1309
  %20 = getelementptr inbounds i8, ptr %19, i64 %12, !dbg !3060
  %21 = shl nsw i32 %14, 8, !dbg !3061
  %22 = sext i32 %21 to i64, !dbg !3062
  %23 = getelementptr inbounds i8, ptr %20, i64 %22, !dbg !3062
  call void @llvm.dbg.value(metadata ptr %23, metadata !3027, metadata !DIExpression()), !dbg !3048
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !3063
  %25 = load i32, ptr %24, align 8, !dbg !3063, !tbaa !1529
  %26 = icmp eq i32 %25, 1, !dbg !3064
  br i1 %26, label %31, label %27, !dbg !3065

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 16, !dbg !3066
  %29 = load i32, ptr %28, align 8, !dbg !3066, !tbaa !1533
  %30 = icmp ne i32 %29, 0, !dbg !3065
  br label %31, !dbg !3065

31:                                               ; preds = %27, %2
  %32 = phi i1 [ true, %2 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i1 %32, metadata !3028, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  call void @llvm.dbg.value(metadata i32 0, metadata !3029, metadata !DIExpression()), !dbg !3048
  tail call void @x264_mb_mc_8x8(ptr noundef nonnull %0, i32 noundef %1) #8, !dbg !3067
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 63, !dbg !3068
  %34 = load i32, ptr %33, align 4, !dbg !3068, !tbaa !1323
  %35 = icmp eq i32 %34, 0, !dbg !3069
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 49, !dbg !3070
  %37 = load i32, ptr %36, align 16, !dbg !3070, !tbaa !2129
  %38 = icmp eq i32 %37, 0, !dbg !3070
  br i1 %35, label %143, label %39, !dbg !3071

39:                                               ; preds = %31
  br i1 %38, label %47, label %40, !dbg !3072

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2, !dbg !3073
  %42 = load ptr, ptr %41, align 16, !dbg !3073, !tbaa !1451
  %43 = sext i32 %1 to i64, !dbg !3076
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 %43, !dbg !3076
  tail call void %42(ptr noundef nonnull %44, ptr noundef %17, ptr noundef %23) #8, !dbg !3077
  call void @llvm.dbg.value(metadata ptr %44, metadata !171, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 128, metadata !172, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !3080
  %45 = tail call i32 asm "movq     ($1),    %mm0 \0Apor      8($1),   %mm0 \0Apor      16($1),  %mm0 \0Apor      24($1),  %mm0 \0Apor      32($1),  %mm0 \0Apor      40($1),  %mm0 \0Apor      48($1),  %mm0 \0Apor      56($1),  %mm0 \0Apor      64($1),  %mm0 \0Apor      72($1),  %mm0 \0Apor      80($1),  %mm0 \0Apor      88($1),  %mm0 \0Apor      96($1),  %mm0 \0Apor      104($1), %mm0 \0Apor      112($1), %mm0 \0Apor      120($1), %mm0 \0Apacksswb %mm0,   %mm0 \0Amovd     %mm0,   $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %44, ptr nonnull elementtype(%struct.anon.14) %44) #9, !dbg !3081, !srcloc !2342
  call void @llvm.dbg.value(metadata i32 %45, metadata !173, metadata !DIExpression()), !dbg !3080
  %46 = icmp ne i32 %45, 0, !dbg !3082
  call void @llvm.dbg.value(metadata i1 %46, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  br label %113, !dbg !3083

47:                                               ; preds = %39
  %48 = shl i32 %1, 2, !dbg !3084
  call void @llvm.dbg.value(metadata i32 %48, metadata !3031, metadata !DIExpression()), !dbg !3087
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  call void @llvm.dbg.value(metadata i32 %48, metadata !3031, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i32 0, metadata !3029, metadata !DIExpression()), !dbg !3048
  %50 = sext i32 %48 to i64, !dbg !3088
  call void @llvm.dbg.value(metadata i64 %50, metadata !3031, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i32 0, metadata !3029, metadata !DIExpression()), !dbg !3048
  %51 = load ptr, ptr %49, align 8, !dbg !3089, !tbaa !1354
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %50, !dbg !3092
  %53 = load ptr, ptr %8, align 8, !dbg !3093, !tbaa !1309
  %54 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %50, !dbg !3094
  %55 = load i8, ptr %54, align 4, !dbg !3094, !tbaa !1314
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds i8, ptr %53, i64 %56, !dbg !3095
  %58 = load ptr, ptr %18, align 8, !dbg !3096, !tbaa !1309
  %59 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %50, !dbg !3097
  %60 = load i16, ptr %59, align 8, !dbg !3097, !tbaa !1318
  %61 = zext i16 %60 to i64
  %62 = getelementptr inbounds i8, ptr %58, i64 %61, !dbg !3098
  tail call void %51(ptr noundef nonnull %52, ptr noundef %57, ptr noundef %62) #8, !dbg !3099
  call void @llvm.dbg.value(metadata ptr %52, metadata !171, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i1 poison, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  %63 = or i64 %50, 1, !dbg !3102
  call void @llvm.dbg.value(metadata i64 %63, metadata !3031, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %63, metadata !3031, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i1 poison, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  %64 = load ptr, ptr %49, align 8, !dbg !3089, !tbaa !1354
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %63, !dbg !3092
  %66 = load ptr, ptr %8, align 8, !dbg !3093, !tbaa !1309
  %67 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %63, !dbg !3094
  %68 = load i8, ptr %67, align 1, !dbg !3094, !tbaa !1314
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69, !dbg !3095
  %71 = load ptr, ptr %18, align 8, !dbg !3096, !tbaa !1309
  %72 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %63, !dbg !3097
  %73 = load i16, ptr %72, align 2, !dbg !3097, !tbaa !1318
  %74 = zext i16 %73 to i64
  %75 = getelementptr inbounds i8, ptr %71, i64 %74, !dbg !3098
  call void @llvm.dbg.value(metadata ptr %65, metadata !171, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i1 poison, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  %76 = or i64 %50, 2, !dbg !3102
  call void @llvm.dbg.value(metadata i64 %76, metadata !3031, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %76, metadata !3031, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i1 poison, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %76, !dbg !3092
  %78 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %76, !dbg !3094
  %79 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %76, !dbg !3097
  call void @llvm.dbg.value(metadata ptr %77, metadata !171, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i1 poison, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  %80 = or i64 %50, 3, !dbg !3102
  call void @llvm.dbg.value(metadata i64 %80, metadata !3031, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %80, metadata !3031, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i1 poison, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  %81 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %80, !dbg !3092
  %82 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %80, !dbg !3094
  %83 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %80, !dbg !3097
  call void @llvm.dbg.value(metadata ptr %81, metadata !171, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !3100
  %84 = load <4 x i64>, ptr %52, align 8, !dbg !3103, !tbaa !1402
  tail call void %64(ptr noundef nonnull %65, ptr noundef %70, ptr noundef %75) #8, !dbg !3099
  %85 = load <4 x i64>, ptr %65, align 8, !dbg !3103, !tbaa !1402
  %86 = load ptr, ptr %49, align 8, !dbg !3089, !tbaa !1354
  %87 = load ptr, ptr %8, align 8, !dbg !3093, !tbaa !1309
  %88 = load i8, ptr %78, align 2, !dbg !3094, !tbaa !1314
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds i8, ptr %87, i64 %89, !dbg !3095
  %91 = load ptr, ptr %18, align 8, !dbg !3096, !tbaa !1309
  %92 = load i16, ptr %79, align 4, !dbg !3097, !tbaa !1318
  %93 = zext i16 %92 to i64
  %94 = getelementptr inbounds i8, ptr %91, i64 %93, !dbg !3098
  tail call void %86(ptr noundef nonnull %77, ptr noundef %90, ptr noundef %94) #8, !dbg !3099
  %95 = load <4 x i64>, ptr %77, align 8, !dbg !3103, !tbaa !1402
  %96 = load ptr, ptr %49, align 8, !dbg !3089, !tbaa !1354
  %97 = load ptr, ptr %8, align 8, !dbg !3093, !tbaa !1309
  %98 = load i8, ptr %82, align 1, !dbg !3094, !tbaa !1314
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds i8, ptr %97, i64 %99, !dbg !3095
  %101 = load ptr, ptr %18, align 8, !dbg !3096, !tbaa !1309
  %102 = load i16, ptr %83, align 2, !dbg !3097, !tbaa !1318
  %103 = zext i16 %102 to i64
  %104 = getelementptr inbounds i8, ptr %101, i64 %103, !dbg !3098
  tail call void %96(ptr noundef nonnull %81, ptr noundef %100, ptr noundef %104) #8, !dbg !3099
  %105 = load <4 x i64>, ptr %81, align 8, !dbg !3103, !tbaa !1402
  %106 = shufflevector <4 x i64> %84, <4 x i64> %85, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !3103
  %107 = shufflevector <4 x i64> %95, <4 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !3103
  %108 = shufflevector <16 x i64> %106, <16 x i64> %107, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !3103
  %109 = shufflevector <4 x i64> %105, <4 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !3103
  %110 = shufflevector <16 x i64> %108, <16 x i64> %109, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>, !dbg !3103
  %111 = tail call i64 @llvm.vector.reduce.or.v16i64(<16 x i64> %110), !dbg !3105
  %112 = icmp ne i64 %111, 0, !dbg !3105
  call void @llvm.dbg.value(metadata i1 %112, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  call void @llvm.dbg.value(metadata i64 %80, metadata !3031, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3087
  br label %113

113:                                              ; preds = %47, %40
  %114 = phi i1 [ %46, %40 ], [ %112, %47 ]
  call void @llvm.dbg.value(metadata i1 %114, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  call void @llvm.dbg.value(metadata i32 0, metadata !3030, metadata !DIExpression()), !dbg !3048
  %115 = shl nuw nsw i32 %10, 2
  %116 = zext i32 %115 to i64
  %117 = shl nsw i32 %14, 6
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  %120 = add nsw i32 %1, 16
  call void @llvm.dbg.value(metadata i32 0, metadata !3030, metadata !DIExpression()), !dbg !3048
  %121 = sext i32 %120 to i64, !dbg !3106
  call void @llvm.dbg.value(metadata i64 0, metadata !3030, metadata !DIExpression()), !dbg !3048
  %122 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, i64 1, !dbg !3108
  %123 = load ptr, ptr %122, align 8, !dbg !3108, !tbaa !1309
  %124 = getelementptr inbounds i8, ptr %123, i64 %116, !dbg !3111
  %125 = getelementptr inbounds i8, ptr %124, i64 %118, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %125, metadata !3026, metadata !DIExpression()), !dbg !3048
  %126 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 1, !dbg !3113
  %127 = load ptr, ptr %126, align 8, !dbg !3113, !tbaa !1309
  %128 = getelementptr inbounds i8, ptr %127, i64 %116, !dbg !3114
  %129 = getelementptr inbounds i8, ptr %128, i64 %16, !dbg !3115
  call void @llvm.dbg.value(metadata ptr %129, metadata !3027, metadata !DIExpression()), !dbg !3048
  %130 = load ptr, ptr %119, align 8, !dbg !3116, !tbaa !1354
  %131 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %121, !dbg !3117
  tail call void %130(ptr noundef nonnull %131, ptr noundef %125, ptr noundef %129) #8, !dbg !3118
  store i16 0, ptr %131, align 16, !dbg !3119, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 1, metadata !3030, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i64 1, metadata !3030, metadata !DIExpression()), !dbg !3048
  %132 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, i64 2, !dbg !3108
  %133 = load ptr, ptr %132, align 8, !dbg !3108, !tbaa !1309
  %134 = getelementptr inbounds i8, ptr %133, i64 %116, !dbg !3111
  %135 = getelementptr inbounds i8, ptr %134, i64 %118, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %135, metadata !3026, metadata !DIExpression()), !dbg !3048
  %136 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 2, !dbg !3113
  %137 = load ptr, ptr %136, align 8, !dbg !3113, !tbaa !1309
  %138 = getelementptr inbounds i8, ptr %137, i64 %116, !dbg !3114
  %139 = getelementptr inbounds i8, ptr %138, i64 %16, !dbg !3115
  call void @llvm.dbg.value(metadata ptr %139, metadata !3027, metadata !DIExpression()), !dbg !3048
  %140 = load ptr, ptr %119, align 8, !dbg !3116, !tbaa !1354
  %141 = add nsw i64 %121, 4, !dbg !3120
  %142 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %141, !dbg !3117
  tail call void %140(ptr noundef nonnull %142, ptr noundef %135, ptr noundef %139) #8, !dbg !3118
  store i16 0, ptr %142, align 16, !dbg !3119, !tbaa !1318
  call void @llvm.dbg.value(metadata i64 2, metadata !3030, metadata !DIExpression()), !dbg !3048
  br label %366, !dbg !3121

143:                                              ; preds = %31
  %144 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 12
  br i1 %38, label %186, label %145, !dbg !3122

145:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #8, !dbg !3123
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3034, metadata !DIExpression()), !dbg !3123
  %146 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 6, !dbg !3124
  %147 = load ptr, ptr %146, align 16, !dbg !3124, !tbaa !1456
  call void %147(ptr noundef nonnull %3, ptr noundef %17, ptr noundef %23) #8, !dbg !3125
  call void @llvm.dbg.value(metadata ptr %0, metadata !1458, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata ptr %3, metadata !1463, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 %7, metadata !1464, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 %1, metadata !1466, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i1 true, metadata !1467, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3126
  %148 = load i32, ptr %144, align 16, !dbg !3128, !tbaa !1377
  %149 = icmp eq i32 %148, 0, !dbg !3129
  br i1 %149, label %151, label %150, !dbg !3130

150:                                              ; preds = %145
  call void @llvm.dbg.value(metadata i32 1, metadata !1467, metadata !DIExpression()), !dbg !3126
  call void @x264_quant_8x8_trellis(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %7, i32 noundef 0, i32 noundef %1) #8, !dbg !3131
  br label %161, !dbg !3131

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, !dbg !3132
  %153 = load ptr, ptr %152, align 8, !dbg !3133, !tbaa !1477
  %154 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 25, i64 1, !dbg !3134
  %155 = load ptr, ptr %154, align 8, !dbg !3134, !tbaa !1309
  %156 = sext i32 %7 to i64, !dbg !3134
  %157 = getelementptr inbounds [64 x i16], ptr %155, i64 %156, !dbg !3134
  %158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 27, i64 1, !dbg !3135
  %159 = load ptr, ptr %158, align 8, !dbg !3135, !tbaa !1309
  %160 = getelementptr inbounds [64 x i16], ptr %159, i64 %156, !dbg !3135
  call void %153(ptr noundef nonnull %3, ptr noundef %157, ptr noundef %160) #8, !dbg !3136
  br label %161

161:                                              ; preds = %150, %151
  %162 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, !dbg !3137
  %163 = load ptr, ptr %162, align 16, !dbg !3138, !tbaa !1483
  %164 = sext i32 %1 to i64, !dbg !3139
  %165 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 %164, !dbg !3139
  call void %163(ptr noundef nonnull %165, ptr noundef nonnull %3) #8, !dbg !3140
  br i1 %32, label %166, label %169, !dbg !3141

166:                                              ; preds = %161
  %167 = load i32, ptr %144, align 16, !dbg !3143, !tbaa !1377
  %168 = icmp eq i32 %167, 0, !dbg !3144
  br i1 %168, label %172, label %169, !dbg !3145

169:                                              ; preds = %166, %161
  call void @llvm.dbg.value(metadata ptr %3, metadata !171, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i32 128, metadata !172, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !3148
  %170 = call i32 asm "movq     ($1),    %mm0 \0Apor      8($1),   %mm0 \0Apor      16($1),  %mm0 \0Apor      24($1),  %mm0 \0Apor      32($1),  %mm0 \0Apor      40($1),  %mm0 \0Apor      48($1),  %mm0 \0Apor      56($1),  %mm0 \0Apor      64($1),  %mm0 \0Apor      72($1),  %mm0 \0Apor      80($1),  %mm0 \0Apor      88($1),  %mm0 \0Apor      96($1),  %mm0 \0Apor      104($1), %mm0 \0Apor      112($1), %mm0 \0Apor      120($1), %mm0 \0Apacksswb %mm0,   %mm0 \0Amovd     %mm0,   $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %3, ptr nonnull elementtype(%struct.anon.14) %3) #9, !dbg !3149, !srcloc !2342
  call void @llvm.dbg.value(metadata i32 %170, metadata !173, metadata !DIExpression()), !dbg !3148
  %171 = icmp eq i32 %170, 0, !dbg !3150
  call void @llvm.dbg.value(metadata i1 %171, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  call void @llvm.dbg.value(metadata i1 %176, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  br i1 %171, label %184, label %177, !dbg !3151

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 10, !dbg !3152
  %174 = load ptr, ptr %173, align 8, !dbg !3152, !tbaa !2494
  %175 = call i32 %174(ptr noundef nonnull %165) #8, !dbg !3153
  %176 = icmp sgt i32 %175, 3, !dbg !3154
  call void @llvm.dbg.value(metadata i1 %176, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  br i1 %176, label %177, label %184, !dbg !3151

177:                                              ; preds = %169, %172
  %178 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 4, !dbg !3155
  %179 = load ptr, ptr %178, align 8, !dbg !3155, !tbaa !1487
  %180 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 21, i64 1, !dbg !3158
  %181 = load ptr, ptr %180, align 8, !dbg !3158, !tbaa !1309
  call void %179(ptr noundef nonnull %3, ptr noundef %181, i32 noundef %7) #8, !dbg !3159
  %182 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 7, !dbg !3160
  %183 = load ptr, ptr %182, align 8, !dbg !3160, !tbaa !1492
  call void %183(ptr noundef %23, ptr noundef nonnull %3) #8, !dbg !3161
  br label %184, !dbg !3162

184:                                              ; preds = %169, %177, %172
  %185 = phi i1 [ false, %169 ], [ true, %177 ], [ false, %172 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #8, !dbg !3163
  br label %287, !dbg !3164

186:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #8, !dbg !3165
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3040, metadata !DIExpression()), !dbg !3165
  %187 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, !dbg !3166
  %188 = load ptr, ptr %187, align 16, !dbg !3166, !tbaa !1557
  call void %188(ptr noundef nonnull %4, ptr noundef %17, ptr noundef %23) #8, !dbg !3167
  call void @llvm.dbg.value(metadata i32 0, metadata !3038, metadata !DIExpression()), !dbg !3168
  %189 = shl nsw i32 %1, 2
  %190 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 1
  %191 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24, i64 1
  %192 = sext i32 %7 to i64
  %193 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26, i64 1
  call void @llvm.dbg.value(metadata i64 0, metadata !3038, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata ptr %4, metadata !1367, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 %7, metadata !1368, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 2, metadata !1369, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 0, metadata !1370, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata !DIArgList(i32 %1, i64 0), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3169
  call void @llvm.dbg.value(metadata i1 true, metadata !1372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3169
  %194 = load i32, ptr %144, align 16, !dbg !3173, !tbaa !1377
  %195 = icmp eq i32 %194, 0, !dbg !3174
  br i1 %195, label %197, label %196, !dbg !3175

196:                                              ; preds = %186
  call void @llvm.dbg.value(metadata i32 %189, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3169
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !3169
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %7, i32 noundef 2, i32 noundef 0, i32 noundef %189) #8, !dbg !3176
  br label %203, !dbg !3176

197:                                              ; preds = %186
  %198 = load ptr, ptr %190, align 8, !dbg !3177, !tbaa !1382
  %199 = load ptr, ptr %191, align 8, !dbg !3178, !tbaa !1309
  %200 = getelementptr inbounds [16 x i16], ptr %199, i64 %192, !dbg !3178
  %201 = load ptr, ptr %193, align 8, !dbg !3179, !tbaa !1309
  %202 = getelementptr inbounds [16 x i16], ptr %201, i64 %192, !dbg !3179
  call void %198(ptr noundef nonnull %4, ptr noundef %200, ptr noundef %202) #8, !dbg !3180
  br label %203

203:                                              ; preds = %196, %197
  call void @llvm.dbg.value(metadata i64 1, metadata !3038, metadata !DIExpression()), !dbg !3168
  %204 = getelementptr inbounds [4 x [4 x [4 x i16]]], ptr %4, i64 0, i64 1, !dbg !3181
  call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata ptr %204, metadata !1367, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 %7, metadata !1368, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 2, metadata !1369, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 0, metadata !1370, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata !DIArgList(i32 %1, i64 1), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3169
  call void @llvm.dbg.value(metadata i1 true, metadata !1372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3169
  %205 = load i32, ptr %144, align 16, !dbg !3173, !tbaa !1377
  %206 = icmp eq i32 %205, 0, !dbg !3174
  br i1 %206, label %209, label %207, !dbg !3175

207:                                              ; preds = %203
  call void @llvm.dbg.value(metadata !DIArgList(i32 %189, i64 1), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3169
  %208 = or i32 %189, 1, !dbg !3182
  call void @llvm.dbg.value(metadata i32 %189, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3169
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !3169
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %204, i32 noundef 1, i32 noundef %7, i32 noundef 2, i32 noundef 0, i32 noundef %208) #8, !dbg !3176
  br label %215, !dbg !3176

209:                                              ; preds = %203
  %210 = load ptr, ptr %190, align 8, !dbg !3177, !tbaa !1382
  %211 = load ptr, ptr %191, align 8, !dbg !3178, !tbaa !1309
  %212 = getelementptr inbounds [16 x i16], ptr %211, i64 %192, !dbg !3178
  %213 = load ptr, ptr %193, align 8, !dbg !3179, !tbaa !1309
  %214 = getelementptr inbounds [16 x i16], ptr %213, i64 %192, !dbg !3179
  call void %210(ptr noundef nonnull %204, ptr noundef %212, ptr noundef %214) #8, !dbg !3180
  br label %215

215:                                              ; preds = %209, %207
  call void @llvm.dbg.value(metadata i64 2, metadata !3038, metadata !DIExpression()), !dbg !3168
  %216 = getelementptr inbounds [4 x [4 x [4 x i16]]], ptr %4, i64 0, i64 2, !dbg !3181
  call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata ptr %216, metadata !1367, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 %7, metadata !1368, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 2, metadata !1369, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 0, metadata !1370, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata !DIArgList(i32 %1, i64 2), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3169
  call void @llvm.dbg.value(metadata i1 true, metadata !1372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3169
  %217 = load i32, ptr %144, align 16, !dbg !3173, !tbaa !1377
  %218 = icmp eq i32 %217, 0, !dbg !3174
  br i1 %218, label %221, label %219, !dbg !3175

219:                                              ; preds = %215
  call void @llvm.dbg.value(metadata !DIArgList(i32 %189, i64 2), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3169
  %220 = or i32 %189, 2, !dbg !3182
  call void @llvm.dbg.value(metadata i32 %189, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)), !dbg !3169
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !3169
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %216, i32 noundef 1, i32 noundef %7, i32 noundef 2, i32 noundef 0, i32 noundef %220) #8, !dbg !3176
  br label %227, !dbg !3176

221:                                              ; preds = %215
  %222 = load ptr, ptr %190, align 8, !dbg !3177, !tbaa !1382
  %223 = load ptr, ptr %191, align 8, !dbg !3178, !tbaa !1309
  %224 = getelementptr inbounds [16 x i16], ptr %223, i64 %192, !dbg !3178
  %225 = load ptr, ptr %193, align 8, !dbg !3179, !tbaa !1309
  %226 = getelementptr inbounds [16 x i16], ptr %225, i64 %192, !dbg !3179
  call void %222(ptr noundef nonnull %216, ptr noundef %224, ptr noundef %226) #8, !dbg !3180
  br label %227

227:                                              ; preds = %221, %219
  call void @llvm.dbg.value(metadata i64 3, metadata !3038, metadata !DIExpression()), !dbg !3168
  %228 = getelementptr inbounds [4 x [4 x [4 x i16]]], ptr %4, i64 0, i64 3, !dbg !3181
  call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata ptr %228, metadata !1367, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 %7, metadata !1368, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 2, metadata !1369, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 0, metadata !1370, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata !DIArgList(i32 %1, i64 3), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3169
  call void @llvm.dbg.value(metadata i1 true, metadata !1372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3169
  %229 = load i32, ptr %144, align 16, !dbg !3173, !tbaa !1377
  %230 = icmp eq i32 %229, 0, !dbg !3174
  br i1 %230, label %233, label %231, !dbg !3175

231:                                              ; preds = %227
  call void @llvm.dbg.value(metadata !DIArgList(i32 %189, i64 3), metadata !1371, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3169
  %232 = or i32 %189, 3, !dbg !3182
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 %232, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !3169
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %228, i32 noundef 1, i32 noundef %7, i32 noundef 2, i32 noundef 0, i32 noundef %232) #8, !dbg !3176
  br label %239, !dbg !3176

233:                                              ; preds = %227
  %234 = load ptr, ptr %190, align 8, !dbg !3177, !tbaa !1382
  %235 = load ptr, ptr %191, align 8, !dbg !3178, !tbaa !1309
  %236 = getelementptr inbounds [16 x i16], ptr %235, i64 %192, !dbg !3178
  %237 = load ptr, ptr %193, align 8, !dbg !3179, !tbaa !1309
  %238 = getelementptr inbounds [16 x i16], ptr %237, i64 %192, !dbg !3179
  call void %234(ptr noundef nonnull %228, ptr noundef %236, ptr noundef %238) #8, !dbg !3180
  br label %239

239:                                              ; preds = %233, %231
  call void @llvm.dbg.value(metadata i64 4, metadata !3038, metadata !DIExpression()), !dbg !3168
  %240 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  call void @llvm.dbg.value(metadata i32 0, metadata !3038, metadata !DIExpression()), !dbg !3168
  %241 = sext i32 %189 to i64, !dbg !3183
  call void @llvm.dbg.value(metadata i64 0, metadata !3038, metadata !DIExpression()), !dbg !3168
  %242 = load ptr, ptr %240, align 8, !dbg !3185, !tbaa !1408
  %243 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %241, !dbg !3187
  call void %242(ptr noundef nonnull %243, ptr noundef nonnull %4) #8, !dbg !3188
  call void @llvm.dbg.value(metadata i64 1, metadata !3038, metadata !DIExpression()), !dbg !3168
  %244 = load ptr, ptr %240, align 8, !dbg !3185, !tbaa !1408
  %245 = or i64 %241, 1, !dbg !3189
  %246 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %245, !dbg !3187
  call void %244(ptr noundef nonnull %246, ptr noundef nonnull %204) #8, !dbg !3188
  call void @llvm.dbg.value(metadata i64 2, metadata !3038, metadata !DIExpression()), !dbg !3168
  %247 = load ptr, ptr %240, align 8, !dbg !3185, !tbaa !1408
  %248 = or i64 %241, 2, !dbg !3189
  %249 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %248, !dbg !3187
  call void %247(ptr noundef nonnull %249, ptr noundef nonnull %216) #8, !dbg !3188
  call void @llvm.dbg.value(metadata i64 3, metadata !3038, metadata !DIExpression()), !dbg !3168
  %250 = load ptr, ptr %240, align 8, !dbg !3185, !tbaa !1408
  %251 = or i64 %241, 3, !dbg !3189
  %252 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %251, !dbg !3187
  call void %250(ptr noundef nonnull %252, ptr noundef nonnull %228) #8, !dbg !3188
  call void @llvm.dbg.value(metadata i64 4, metadata !3038, metadata !DIExpression()), !dbg !3168
  br i1 %32, label %253, label %269, !dbg !3190

253:                                              ; preds = %239
  call void @llvm.dbg.value(metadata i32 0, metadata !3041, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i32 0, metadata !3038, metadata !DIExpression()), !dbg !3168
  %254 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 9
  br label %255, !dbg !3192

255:                                              ; preds = %253, %255
  %256 = phi i64 [ 0, %253 ], [ %263, %255 ]
  %257 = phi i32 [ 0, %253 ], [ %262, %255 ]
  call void @llvm.dbg.value(metadata i32 %257, metadata !3041, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i64 %256, metadata !3038, metadata !DIExpression()), !dbg !3168
  %258 = load ptr, ptr %254, align 8, !dbg !3194, !tbaa !2577
  %259 = add nuw nsw i64 %256, %241, !dbg !3196
  %260 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %259, !dbg !3197
  %261 = call i32 %258(ptr noundef nonnull %260) #8, !dbg !3198
  %262 = add nsw i32 %261, %257, !dbg !3199
  call void @llvm.dbg.value(metadata i32 %262, metadata !3041, metadata !DIExpression()), !dbg !3191
  %263 = add nuw nsw i64 %256, 1, !dbg !3200
  call void @llvm.dbg.value(metadata i64 %263, metadata !3038, metadata !DIExpression()), !dbg !3168
  %264 = icmp ult i64 %256, 3, !dbg !3201
  %265 = icmp slt i32 %262, 4, !dbg !3202
  %266 = select i1 %264, i1 %265, i1 false, !dbg !3202
  br i1 %266, label %255, label %267, !dbg !3192, !llvm.loop !3203

267:                                              ; preds = %255
  %268 = icmp sgt i32 %262, 3, !dbg !3205
  call void @llvm.dbg.value(metadata i1 %268, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  call void @llvm.dbg.value(metadata i1 %271, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  br i1 %268, label %272, label %285, !dbg !3206

269:                                              ; preds = %239
  call void @llvm.dbg.value(metadata ptr %4, metadata !171, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32 128, metadata !172, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !3209
  %270 = call i32 asm "movq     ($1),    %mm0 \0Apor      8($1),   %mm0 \0Apor      16($1),  %mm0 \0Apor      24($1),  %mm0 \0Apor      32($1),  %mm0 \0Apor      40($1),  %mm0 \0Apor      48($1),  %mm0 \0Apor      56($1),  %mm0 \0Apor      64($1),  %mm0 \0Apor      72($1),  %mm0 \0Apor      80($1),  %mm0 \0Apor      88($1),  %mm0 \0Apor      96($1),  %mm0 \0Apor      104($1), %mm0 \0Apor      112($1), %mm0 \0Apor      120($1), %mm0 \0Apacksswb %mm0,   %mm0 \0Amovd     %mm0,   $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %4, ptr nonnull elementtype(%struct.anon.14) %4) #9, !dbg !3210, !srcloc !2342
  call void @llvm.dbg.value(metadata i32 %270, metadata !173, metadata !DIExpression()), !dbg !3209
  %271 = icmp eq i32 %270, 0, !dbg !3211
  call void @llvm.dbg.value(metadata i1 %271, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  br i1 %271, label %285, label %272, !dbg !3206

272:                                              ; preds = %267, %269
  %273 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 5
  %274 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 20, i64 1
  call void @llvm.dbg.value(metadata i64 0, metadata !3038, metadata !DIExpression()), !dbg !3168
  %275 = load ptr, ptr %273, align 8, !dbg !3212, !tbaa !1412
  %276 = load ptr, ptr %274, align 8, !dbg !3217, !tbaa !1309
  call void %275(ptr noundef nonnull %4, ptr noundef %276, i32 noundef %7) #8, !dbg !3218
  call void @llvm.dbg.value(metadata i64 1, metadata !3038, metadata !DIExpression()), !dbg !3168
  %277 = load ptr, ptr %273, align 8, !dbg !3212, !tbaa !1412
  %278 = load ptr, ptr %274, align 8, !dbg !3217, !tbaa !1309
  call void %277(ptr noundef nonnull %204, ptr noundef %278, i32 noundef %7) #8, !dbg !3218
  call void @llvm.dbg.value(metadata i64 2, metadata !3038, metadata !DIExpression()), !dbg !3168
  %279 = load ptr, ptr %273, align 8, !dbg !3212, !tbaa !1412
  %280 = load ptr, ptr %274, align 8, !dbg !3217, !tbaa !1309
  call void %279(ptr noundef nonnull %216, ptr noundef %280, i32 noundef %7) #8, !dbg !3218
  call void @llvm.dbg.value(metadata i64 3, metadata !3038, metadata !DIExpression()), !dbg !3168
  %281 = load ptr, ptr %273, align 8, !dbg !3212, !tbaa !1412
  %282 = load ptr, ptr %274, align 8, !dbg !3217, !tbaa !1309
  call void %281(ptr noundef nonnull %228, ptr noundef %282, i32 noundef %7) #8, !dbg !3218
  call void @llvm.dbg.value(metadata i64 4, metadata !3038, metadata !DIExpression()), !dbg !3168
  %283 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, !dbg !3219
  %284 = load ptr, ptr %283, align 8, !dbg !3219, !tbaa !1714
  call void %284(ptr noundef %23, ptr noundef nonnull %4) #8, !dbg !3220
  br label %285, !dbg !3221

285:                                              ; preds = %267, %272, %269
  %286 = phi i1 [ false, %267 ], [ true, %272 ], [ false, %269 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #8, !dbg !3222
  br label %287

287:                                              ; preds = %285, %184
  %288 = phi i1 [ %185, %184 ], [ %286, %285 ]
  call void @llvm.dbg.value(metadata i1 %288, metadata !3029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3048
  %289 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 59, !dbg !3223
  %290 = load i32, ptr %289, align 4, !dbg !3223, !tbaa !2657
  call void @llvm.dbg.value(metadata i32 %290, metadata !3025, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 0, metadata !3030, metadata !DIExpression()), !dbg !3048
  %291 = shl nuw nsw i32 %10, 2
  %292 = zext i32 %291 to i64
  %293 = shl nsw i32 %14, 6
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54
  %296 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 12
  %297 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 1
  %298 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24, i64 3
  %299 = sext i32 %290 to i64
  %300 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26, i64 3
  %301 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %302 = add nsw i32 %1, 16
  %303 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 5
  %304 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 20, i64 3
  %305 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1
  %306 = sext i32 %302 to i64, !dbg !3224
  call void @llvm.dbg.value(metadata i64 0, metadata !3030, metadata !DIExpression()), !dbg !3048
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8, !dbg !3225
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3044, metadata !DIExpression()), !dbg !3225
  %307 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, i64 1, !dbg !3226
  %308 = load ptr, ptr %307, align 8, !dbg !3226, !tbaa !1309
  %309 = getelementptr inbounds i8, ptr %308, i64 %292, !dbg !3227
  %310 = getelementptr inbounds i8, ptr %309, i64 %294, !dbg !3228
  call void @llvm.dbg.value(metadata ptr %310, metadata !3026, metadata !DIExpression()), !dbg !3048
  %311 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 1, !dbg !3229
  %312 = load ptr, ptr %311, align 8, !dbg !3229, !tbaa !1309
  %313 = getelementptr inbounds i8, ptr %312, i64 %292, !dbg !3230
  %314 = getelementptr inbounds i8, ptr %313, i64 %16, !dbg !3231
  call void @llvm.dbg.value(metadata ptr %314, metadata !3027, metadata !DIExpression()), !dbg !3048
  %315 = load ptr, ptr %295, align 16, !dbg !3232, !tbaa !1360
  call void %315(ptr noundef nonnull %5, ptr noundef %310, ptr noundef %314) #8, !dbg !3233
  store i16 0, ptr %5, align 16, !dbg !3234, !tbaa !1318
  %316 = load i32, ptr %296, align 16, !dbg !3235, !tbaa !1377
  %317 = icmp eq i32 %316, 0, !dbg !3237
  br i1 %317, label %319, label %318, !dbg !3238

318:                                              ; preds = %287
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 3, i32 noundef %290, i32 noundef 4, i32 noundef 0, i32 noundef 0) #8, !dbg !3239
  br label %325, !dbg !3239

319:                                              ; preds = %287
  %320 = load ptr, ptr %297, align 8, !dbg !3240, !tbaa !1382
  %321 = load ptr, ptr %298, align 8, !dbg !3241, !tbaa !1309
  %322 = getelementptr inbounds [16 x i16], ptr %321, i64 %299, !dbg !3241
  %323 = load ptr, ptr %300, align 8, !dbg !3242, !tbaa !1309
  %324 = getelementptr inbounds [16 x i16], ptr %323, i64 %299, !dbg !3242
  call void %320(ptr noundef nonnull %5, ptr noundef %322, ptr noundef %324) #8, !dbg !3243
  br label %325

325:                                              ; preds = %319, %318
  %326 = load ptr, ptr %301, align 8, !dbg !3244, !tbaa !1408
  %327 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %306, !dbg !3245
  call void %326(ptr noundef nonnull %327, ptr noundef nonnull %5) #8, !dbg !3246
  call void @llvm.dbg.value(metadata ptr %5, metadata !171, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !3247
  %328 = load <4 x i64>, ptr %5, align 16, !dbg !3250, !tbaa !1402
  %329 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %328), !dbg !3252
  %330 = icmp eq i64 %329, 0, !dbg !3253
  br i1 %330, label %335, label %331, !dbg !3254

331:                                              ; preds = %325
  %332 = load ptr, ptr %303, align 8, !dbg !3255, !tbaa !1412
  %333 = load ptr, ptr %304, align 8, !dbg !3257, !tbaa !1309
  call void %332(ptr noundef nonnull %5, ptr noundef %333, i32 noundef %290) #8, !dbg !3258
  %334 = load ptr, ptr %305, align 8, !dbg !3259, !tbaa !1417
  call void %334(ptr noundef %314, ptr noundef nonnull %5) #8, !dbg !3260
  br label %335, !dbg !3261

335:                                              ; preds = %331, %325
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8, !dbg !3262
  call void @llvm.dbg.value(metadata i64 1, metadata !3030, metadata !DIExpression()), !dbg !3048
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8, !dbg !3225
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3044, metadata !DIExpression()), !dbg !3225
  %336 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, i64 2, !dbg !3226
  %337 = load ptr, ptr %336, align 8, !dbg !3226, !tbaa !1309
  %338 = getelementptr inbounds i8, ptr %337, i64 %292, !dbg !3227
  %339 = getelementptr inbounds i8, ptr %338, i64 %294, !dbg !3228
  call void @llvm.dbg.value(metadata ptr %339, metadata !3026, metadata !DIExpression()), !dbg !3048
  %340 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 2, !dbg !3229
  %341 = load ptr, ptr %340, align 8, !dbg !3229, !tbaa !1309
  %342 = getelementptr inbounds i8, ptr %341, i64 %292, !dbg !3230
  %343 = getelementptr inbounds i8, ptr %342, i64 %16, !dbg !3231
  call void @llvm.dbg.value(metadata ptr %343, metadata !3027, metadata !DIExpression()), !dbg !3048
  %344 = load ptr, ptr %295, align 16, !dbg !3232, !tbaa !1360
  call void %344(ptr noundef nonnull %5, ptr noundef %339, ptr noundef %343) #8, !dbg !3233
  store i16 0, ptr %5, align 16, !dbg !3234, !tbaa !1318
  %345 = load i32, ptr %296, align 16, !dbg !3235, !tbaa !1377
  %346 = icmp eq i32 %345, 0, !dbg !3237
  br i1 %346, label %348, label %347, !dbg !3238

347:                                              ; preds = %335
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 3, i32 noundef %290, i32 noundef 4, i32 noundef 0, i32 noundef 0) #8, !dbg !3239
  br label %354, !dbg !3239

348:                                              ; preds = %335
  %349 = load ptr, ptr %297, align 8, !dbg !3240, !tbaa !1382
  %350 = load ptr, ptr %298, align 8, !dbg !3241, !tbaa !1309
  %351 = getelementptr inbounds [16 x i16], ptr %350, i64 %299, !dbg !3241
  %352 = load ptr, ptr %300, align 8, !dbg !3242, !tbaa !1309
  %353 = getelementptr inbounds [16 x i16], ptr %352, i64 %299, !dbg !3242
  call void %349(ptr noundef nonnull %5, ptr noundef %351, ptr noundef %353) #8, !dbg !3243
  br label %354

354:                                              ; preds = %348, %347
  %355 = load ptr, ptr %301, align 8, !dbg !3244, !tbaa !1408
  %356 = add nsw i64 %306, 4, !dbg !3263
  %357 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %356, !dbg !3245
  call void %355(ptr noundef nonnull %357, ptr noundef nonnull %5) #8, !dbg !3246
  call void @llvm.dbg.value(metadata ptr %5, metadata !171, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !3247
  %358 = load <4 x i64>, ptr %5, align 16, !dbg !3250, !tbaa !1402
  %359 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %358), !dbg !3252
  %360 = icmp eq i64 %359, 0, !dbg !3253
  br i1 %360, label %365, label %361, !dbg !3254

361:                                              ; preds = %354
  %362 = load ptr, ptr %303, align 8, !dbg !3255, !tbaa !1412
  %363 = load ptr, ptr %304, align 8, !dbg !3257, !tbaa !1309
  call void %362(ptr noundef nonnull %5, ptr noundef %363, i32 noundef %290) #8, !dbg !3258
  %364 = load ptr, ptr %305, align 8, !dbg !3259, !tbaa !1417
  call void %364(ptr noundef %343, ptr noundef nonnull %5) #8, !dbg !3260
  br label %365, !dbg !3261

365:                                              ; preds = %361, %354
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8, !dbg !3262
  call void @llvm.dbg.value(metadata i64 2, metadata !3030, metadata !DIExpression()), !dbg !3048
  br label %366, !dbg !3121

366:                                              ; preds = %113, %365
  %367 = phi i1 [ %288, %365 ], [ %114, %113 ]
  %368 = zext i1 %367 to i32, !dbg !3070
  call void @llvm.dbg.value(metadata i32 %368, metadata !3029, metadata !DIExpression()), !dbg !3048
  %369 = shl nuw i32 1, %1, !dbg !3121
  %370 = xor i32 %369, -1, !dbg !3264
  %371 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 50, !dbg !3265
  %372 = load i32, ptr %371, align 4, !dbg !3266, !tbaa !2093
  %373 = and i32 %372, %370, !dbg !3266
  %374 = shl nuw i32 %368, %1, !dbg !3267
  %375 = or i32 %373, %374, !dbg !3268
  store i32 %375, ptr %371, align 4, !dbg !3268, !tbaa !2093
  %376 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 51, !dbg !3269
  store i32 2, ptr %376, align 8, !dbg !3270, !tbaa !1732
  ret void, !dbg !3271
}

declare !dbg !3272 void @x264_mb_mc_8x8(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_encode_p4x4(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3273 {
  %3 = alloca [4 x [4 x i16]], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3275, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i32 %1, metadata !3276, metadata !DIExpression()), !dbg !3286
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 58, !dbg !3287
  %5 = load i32, ptr %4, align 16, !dbg !3287, !tbaa !1993
  call void @llvm.dbg.value(metadata i32 %5, metadata !3277, metadata !DIExpression()), !dbg !3286
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, !dbg !3288
  %7 = load ptr, ptr %6, align 8, !dbg !3289, !tbaa !1309
  %8 = sext i32 %1 to i64, !dbg !3290
  %9 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %8, !dbg !3290
  %10 = load i8, ptr %9, align 1, !dbg !3290, !tbaa !1314
  %11 = zext i8 %10 to i64, !dbg !3289
  %12 = getelementptr inbounds i8, ptr %7, i64 %11, !dbg !3289
  call void @llvm.dbg.value(metadata ptr %12, metadata !3278, metadata !DIExpression()), !dbg !3286
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !3291
  %14 = load ptr, ptr %13, align 8, !dbg !3292, !tbaa !1309
  %15 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %8, !dbg !3293
  %16 = load i16, ptr %15, align 2, !dbg !3293, !tbaa !1318
  %17 = zext i16 %16 to i64, !dbg !3292
  %18 = getelementptr inbounds i8, ptr %14, i64 %17, !dbg !3292
  call void @llvm.dbg.value(metadata ptr %18, metadata !3279, metadata !DIExpression()), !dbg !3286
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, !dbg !3294
  %20 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %8, !dbg !3295
  %21 = load i32, ptr %20, align 4, !dbg !3295, !tbaa !1683
  %22 = sext i32 %21 to i64, !dbg !3296
  %23 = getelementptr inbounds [48 x i8], ptr %19, i64 0, i64 %22, !dbg !3296
  %24 = load i8, ptr %23, align 1, !dbg !3296, !tbaa !1314
  call void @llvm.dbg.value(metadata i8 %24, metadata !3280, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !3286
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, !dbg !3297
  %26 = getelementptr inbounds [48 x [2 x i16]], ptr %25, i64 0, i64 %22, !dbg !3298
  %27 = load i16, ptr %26, align 4, !dbg !3298, !tbaa !1318
  %28 = sext i16 %27 to i32, !dbg !3298
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 17, !dbg !3299
  %30 = load i32, ptr %29, align 4, !dbg !3300, !tbaa !1683
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 18, !dbg !3301
  %32 = load i32, ptr %31, align 4, !dbg !3302, !tbaa !1683
  call void @llvm.dbg.value(metadata i32 %28, metadata !2036, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i32 %30, metadata !2041, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i32 %32, metadata !2042, metadata !DIExpression()), !dbg !3303
  %33 = icmp sgt i32 %30, %28, !dbg !3305
  %34 = tail call i32 @llvm.smin.i32(i32 %28, i32 %32), !dbg !3306
  %35 = select i1 %33, i32 %30, i32 %34, !dbg !3306
  call void @llvm.dbg.value(metadata i32 %35, metadata !3281, metadata !DIExpression()), !dbg !3286
  %36 = getelementptr inbounds [48 x [2 x i16]], ptr %25, i64 0, i64 %22, i64 1, !dbg !3307
  %37 = load i16, ptr %36, align 2, !dbg !3307, !tbaa !1318
  %38 = sext i16 %37 to i32, !dbg !3307
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 17, i64 1, !dbg !3308
  %40 = load i32, ptr %39, align 4, !dbg !3308, !tbaa !1683
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 18, i64 1, !dbg !3309
  %42 = load i32, ptr %41, align 4, !dbg !3309, !tbaa !1683
  call void @llvm.dbg.value(metadata i32 %38, metadata !2036, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 %40, metadata !2041, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 %42, metadata !2042, metadata !DIExpression()), !dbg !3310
  %43 = icmp sgt i32 %40, %38, !dbg !3312
  %44 = tail call i32 @llvm.smin.i32(i32 %38, i32 %42), !dbg !3313
  %45 = select i1 %43, i32 %40, i32 %44, !dbg !3313
  call void @llvm.dbg.value(metadata i32 %45, metadata !3282, metadata !DIExpression()), !dbg !3286
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, !dbg !3314
  %47 = load ptr, ptr %46, align 16, !dbg !3315, !tbaa !2067
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 16, !dbg !3316
  %49 = sext i8 %24 to i64, !dbg !3317
  %50 = getelementptr inbounds [32 x [6 x ptr]], ptr %48, i64 0, i64 %49, !dbg !3317
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 18, !dbg !3318
  %52 = load i32, ptr %51, align 8, !dbg !3319, !tbaa !1683
  %53 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %8, !dbg !3320
  %54 = load i8, ptr %53, align 1, !dbg !3320, !tbaa !1314
  %55 = zext i8 %54 to i32, !dbg !3320
  %56 = shl nuw nsw i32 %55, 4, !dbg !3321
  %57 = add nsw i32 %56, %35, !dbg !3322
  %58 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %8, !dbg !3323
  %59 = load i8, ptr %58, align 1, !dbg !3323, !tbaa !1314
  %60 = zext i8 %59 to i32, !dbg !3323
  %61 = shl nuw nsw i32 %60, 4, !dbg !3324
  %62 = add nsw i32 %61, %45, !dbg !3325
  tail call void %47(ptr noundef %18, i32 noundef 32, ptr noundef nonnull %50, i32 noundef %52, i32 noundef %57, i32 noundef %62, i32 noundef 4, i32 noundef 4) #8, !dbg !3326
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 63, !dbg !3327
  %64 = load i32, ptr %63, align 4, !dbg !3327, !tbaa !1323
  %65 = icmp eq i32 %64, 0, !dbg !3328
  br i1 %65, label %70, label %66, !dbg !3329

66:                                               ; preds = %2
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3, !dbg !3330
  %68 = load ptr, ptr %67, align 8, !dbg !3330, !tbaa !1354
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %8, !dbg !3331
  tail call void %68(ptr noundef nonnull %69, ptr noundef %12, ptr noundef %18) #8, !dbg !3332
  br label %102, !dbg !3332

70:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8, !dbg !3333
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3283, metadata !DIExpression()), !dbg !3333
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, !dbg !3334
  %72 = load ptr, ptr %71, align 16, !dbg !3335, !tbaa !1360
  call void %72(ptr noundef nonnull %3, ptr noundef %12, ptr noundef %18) #8, !dbg !3336
  call void @llvm.dbg.value(metadata ptr %0, metadata !1362, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata ptr %3, metadata !1367, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 %5, metadata !1368, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 2, metadata !1369, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 0, metadata !1370, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 %1, metadata !1371, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i1 true, metadata !1372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3337
  %73 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 12, !dbg !3339
  %74 = load i32, ptr %73, align 16, !dbg !3339, !tbaa !1377
  %75 = icmp eq i32 %74, 0, !dbg !3340
  br i1 %75, label %77, label %76, !dbg !3341

76:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i32 1, metadata !1372, metadata !DIExpression()), !dbg !3337
  call void @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %5, i32 noundef 2, i32 noundef 0, i32 noundef %1) #8, !dbg !3342
  br label %87, !dbg !3342

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 1, !dbg !3343
  %79 = load ptr, ptr %78, align 8, !dbg !3343, !tbaa !1382
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24, i64 1, !dbg !3344
  %81 = load ptr, ptr %80, align 8, !dbg !3344, !tbaa !1309
  %82 = sext i32 %5 to i64, !dbg !3344
  %83 = getelementptr inbounds [16 x i16], ptr %81, i64 %82, !dbg !3344
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26, i64 1, !dbg !3345
  %85 = load ptr, ptr %84, align 8, !dbg !3345, !tbaa !1309
  %86 = getelementptr inbounds [16 x i16], ptr %85, i64 %82, !dbg !3345
  call void %79(ptr noundef nonnull %3, ptr noundef %83, ptr noundef %86) #8, !dbg !3346
  br label %87

87:                                               ; preds = %76, %77
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1, !dbg !3347
  %89 = load ptr, ptr %88, align 8, !dbg !3347, !tbaa !1408
  %90 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %8, !dbg !3348
  call void %89(ptr noundef nonnull %90, ptr noundef nonnull %3) #8, !dbg !3349
  call void @llvm.dbg.value(metadata ptr %3, metadata !171, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 32, metadata !172, metadata !DIExpression()), !dbg !3350
  %91 = load <4 x i64>, ptr %3, align 16, !dbg !3353, !tbaa !1402
  %92 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %91), !dbg !3355
  %93 = icmp eq i64 %92, 0, !dbg !3356
  br i1 %93, label %101, label %94, !dbg !3357

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 5, !dbg !3358
  %96 = load ptr, ptr %95, align 8, !dbg !3358, !tbaa !1412
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 20, i64 1, !dbg !3360
  %98 = load ptr, ptr %97, align 8, !dbg !3360, !tbaa !1309
  call void %96(ptr noundef nonnull %3, ptr noundef %98, i32 noundef %5) #8, !dbg !3361
  %99 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, !dbg !3362
  %100 = load ptr, ptr %99, align 8, !dbg !3362, !tbaa !1417
  call void %100(ptr noundef %18, ptr noundef nonnull %3) #8, !dbg !3363
  br label %101, !dbg !3364

101:                                              ; preds = %94, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8, !dbg !3365
  br label %102

102:                                              ; preds = %101, %66
  ret void, !dbg !3366
}

declare !dbg !3367 void @x264_quant_8x8_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v16i64(<16 x i64>) #7

attributes #0 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!218, !219, !220, !221, !222, !223}
!llvm.ident = !{!224}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "block_idx_xy_fenc", scope: !2, file: !6, line: 231, type: !190, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !144, globals: !181, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "encoder/macroblock.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fba2b73a1b70a89b457d0f9c45eebbf5")
!4 = !{!5, !15, !22, !26, !34, !44, !57, !71, !85, !94, !116, !124}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cabac_ctx_block_cat_e", file: !6, line: 266, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./common/macroblock.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "0b0c175005b691009f3df3e457cfe9c0")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "DCT_LUMA_DC", value: 0)
!10 = !DIEnumerator(name: "DCT_LUMA_AC", value: 1)
!11 = !DIEnumerator(name: "DCT_LUMA_4x4", value: 2)
!12 = !DIEnumerator(name: "DCT_CHROMA_DC", value: 3)
!13 = !DIEnumerator(name: "DCT_CHROMA_AC", value: 4)
!14 = !DIEnumerator(name: "DCT_LUMA_8x8", value: 5)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cqm4_e", file: !16, line: 39, baseType: !7, size: 32, elements: !17)
!16 = !DIFile(filename: "./common/set.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "06164d1fd824dd844d17e97dd39e9ac3")
!17 = !{!18, !19, !20, !21}
!18 = !DIEnumerator(name: "CQM_4IY", value: 0)
!19 = !DIEnumerator(name: "CQM_4PY", value: 1)
!20 = !DIEnumerator(name: "CQM_4IC", value: 2)
!21 = !DIEnumerator(name: "CQM_4PC", value: 3)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cqm8_e", file: !16, line: 46, baseType: !7, size: 32, elements: !23)
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "CQM_8IY", value: 0)
!25 = !DIEnumerator(name: "CQM_8PY", value: 1)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "slice_type_e", file: !27, line: 148, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./common/common.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "4880b62cc871dca4002788746fbccb70")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "SLICE_TYPE_P", value: 0)
!30 = !DIEnumerator(name: "SLICE_TYPE_B", value: 1)
!31 = !DIEnumerator(name: "SLICE_TYPE_I", value: 2)
!32 = !DIEnumerator(name: "SLICE_TYPE_SP", value: 3)
!33 = !DIEnumerator(name: "SLICE_TYPE_SI", value: 4)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra_chroma_pred_e", file: !35, line: 30, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./common/predict.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "c7827bfe44f4a550b7080533457a8327")
!36 = !{!37, !38, !39, !40, !41, !42, !43}
!37 = !DIEnumerator(name: "I_PRED_CHROMA_DC", value: 0)
!38 = !DIEnumerator(name: "I_PRED_CHROMA_H", value: 1)
!39 = !DIEnumerator(name: "I_PRED_CHROMA_V", value: 2)
!40 = !DIEnumerator(name: "I_PRED_CHROMA_P", value: 3)
!41 = !DIEnumerator(name: "I_PRED_CHROMA_DC_LEFT", value: 4)
!42 = !DIEnumerator(name: "I_PRED_CHROMA_DC_TOP", value: 5)
!43 = !DIEnumerator(name: "I_PRED_CHROMA_DC_128", value: 6)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 30, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./common/pixel.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "aba138e44f0e52bc0158be0d182b79c1")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!47 = !DIEnumerator(name: "PIXEL_16x16", value: 0)
!48 = !DIEnumerator(name: "PIXEL_16x8", value: 1)
!49 = !DIEnumerator(name: "PIXEL_8x16", value: 2)
!50 = !DIEnumerator(name: "PIXEL_8x8", value: 3)
!51 = !DIEnumerator(name: "PIXEL_8x4", value: 4)
!52 = !DIEnumerator(name: "PIXEL_4x8", value: 5)
!53 = !DIEnumerator(name: "PIXEL_4x4", value: 6)
!54 = !DIEnumerator(name: "PIXEL_4x2", value: 7)
!55 = !DIEnumerator(name: "PIXEL_2x4", value: 8)
!56 = !DIEnumerator(name: "PIXEL_2x2", value: 9)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra4x4_pred_e", file: !35, line: 64, baseType: !7, size: 32, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!59 = !DIEnumerator(name: "I_PRED_4x4_V", value: 0)
!60 = !DIEnumerator(name: "I_PRED_4x4_H", value: 1)
!61 = !DIEnumerator(name: "I_PRED_4x4_DC", value: 2)
!62 = !DIEnumerator(name: "I_PRED_4x4_DDL", value: 3)
!63 = !DIEnumerator(name: "I_PRED_4x4_DDR", value: 4)
!64 = !DIEnumerator(name: "I_PRED_4x4_VR", value: 5)
!65 = !DIEnumerator(name: "I_PRED_4x4_HD", value: 6)
!66 = !DIEnumerator(name: "I_PRED_4x4_VL", value: 7)
!67 = !DIEnumerator(name: "I_PRED_4x4_HU", value: 8)
!68 = !DIEnumerator(name: "I_PRED_4x4_DC_LEFT", value: 9)
!69 = !DIEnumerator(name: "I_PRED_4x4_DC_TOP", value: 10)
!70 = !DIEnumerator(name: "I_PRED_4x4_DC_128", value: 11)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra8x8_pred_e", file: !35, line: 91, baseType: !7, size: 32, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!73 = !DIEnumerator(name: "I_PRED_8x8_V", value: 0)
!74 = !DIEnumerator(name: "I_PRED_8x8_H", value: 1)
!75 = !DIEnumerator(name: "I_PRED_8x8_DC", value: 2)
!76 = !DIEnumerator(name: "I_PRED_8x8_DDL", value: 3)
!77 = !DIEnumerator(name: "I_PRED_8x8_DDR", value: 4)
!78 = !DIEnumerator(name: "I_PRED_8x8_VR", value: 5)
!79 = !DIEnumerator(name: "I_PRED_8x8_HD", value: 6)
!80 = !DIEnumerator(name: "I_PRED_8x8_VL", value: 7)
!81 = !DIEnumerator(name: "I_PRED_8x8_HU", value: 8)
!82 = !DIEnumerator(name: "I_PRED_8x8_DC_LEFT", value: 9)
!83 = !DIEnumerator(name: "I_PRED_8x8_DC_TOP", value: 10)
!84 = !DIEnumerator(name: "I_PRED_8x8_DC_128", value: 11)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra16x16_pred_e", file: !35, line: 47, baseType: !7, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90, !91, !92, !93}
!87 = !DIEnumerator(name: "I_PRED_16x16_V", value: 0)
!88 = !DIEnumerator(name: "I_PRED_16x16_H", value: 1)
!89 = !DIEnumerator(name: "I_PRED_16x16_DC", value: 2)
!90 = !DIEnumerator(name: "I_PRED_16x16_P", value: 3)
!91 = !DIEnumerator(name: "I_PRED_16x16_DC_LEFT", value: 4)
!92 = !DIEnumerator(name: "I_PRED_16x16_DC_TOP", value: 5)
!93 = !DIEnumerator(name: "I_PRED_16x16_DC_128", value: 6)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_class_e", file: !6, line: 61, baseType: !7, size: 32, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!96 = !DIEnumerator(name: "I_4x4", value: 0)
!97 = !DIEnumerator(name: "I_8x8", value: 1)
!98 = !DIEnumerator(name: "I_16x16", value: 2)
!99 = !DIEnumerator(name: "I_PCM", value: 3)
!100 = !DIEnumerator(name: "P_L0", value: 4)
!101 = !DIEnumerator(name: "P_8x8", value: 5)
!102 = !DIEnumerator(name: "P_SKIP", value: 6)
!103 = !DIEnumerator(name: "B_DIRECT", value: 7)
!104 = !DIEnumerator(name: "B_L0_L0", value: 8)
!105 = !DIEnumerator(name: "B_L0_L1", value: 9)
!106 = !DIEnumerator(name: "B_L0_BI", value: 10)
!107 = !DIEnumerator(name: "B_L1_L0", value: 11)
!108 = !DIEnumerator(name: "B_L1_L1", value: 12)
!109 = !DIEnumerator(name: "B_L1_BI", value: 13)
!110 = !DIEnumerator(name: "B_BI_L0", value: 14)
!111 = !DIEnumerator(name: "B_BI_L1", value: 15)
!112 = !DIEnumerator(name: "B_BI_BI", value: 16)
!113 = !DIEnumerator(name: "B_8x8", value: 17)
!114 = !DIEnumerator(name: "B_SKIP", value: 18)
!115 = !DIEnumerator(name: "X264_MBTYPE_MAX", value: 19)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "macroblock_position_e", file: !6, line: 28, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123}
!118 = !DIEnumerator(name: "MB_LEFT", value: 1)
!119 = !DIEnumerator(name: "MB_TOP", value: 2)
!120 = !DIEnumerator(name: "MB_TOPRIGHT", value: 4)
!121 = !DIEnumerator(name: "MB_TOPLEFT", value: 8)
!122 = !DIEnumerator(name: "MB_PRIVATE", value: 16)
!123 = !DIEnumerator(name: "ALL_NEIGHBORS", value: 15)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_partition_e", file: !6, line: 125, baseType: !7, size: 32, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!126 = !DIEnumerator(name: "D_L0_4x4", value: 0)
!127 = !DIEnumerator(name: "D_L0_8x4", value: 1)
!128 = !DIEnumerator(name: "D_L0_4x8", value: 2)
!129 = !DIEnumerator(name: "D_L0_8x8", value: 3)
!130 = !DIEnumerator(name: "D_L1_4x4", value: 4)
!131 = !DIEnumerator(name: "D_L1_8x4", value: 5)
!132 = !DIEnumerator(name: "D_L1_4x8", value: 6)
!133 = !DIEnumerator(name: "D_L1_8x8", value: 7)
!134 = !DIEnumerator(name: "D_BI_4x4", value: 8)
!135 = !DIEnumerator(name: "D_BI_8x4", value: 9)
!136 = !DIEnumerator(name: "D_BI_4x8", value: 10)
!137 = !DIEnumerator(name: "D_BI_8x8", value: 11)
!138 = !DIEnumerator(name: "D_DIRECT_8x8", value: 12)
!139 = !DIEnumerator(name: "D_8x8", value: 13)
!140 = !DIEnumerator(name: "D_16x8", value: 14)
!141 = !DIEnumerator(name: "D_8x16", value: 15)
!142 = !DIEnumerator(name: "D_16x16", value: 16)
!143 = !DIEnumerator(name: "X264_PARTTYPE_MAX", value: 17)
!144 = !{!145, !151, !155, !159, !162}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !147, line: 25, baseType: !148)
!147 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !149, line: 39, baseType: !150)
!149 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!150 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !153, line: 26, baseType: !154)
!153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !149, line: 42, baseType: !7)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !153, line: 25, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !149, line: 40, baseType: !158)
!158 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !153, line: 27, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !149, line: 45, baseType: !161)
!161 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !165, file: !164, line: 124, size: 1024, elements: !176)
!164 = !DIFile(filename: "./common/x86/util.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "5f677273b03032461bc0acac3bce37d9")
!165 = distinct !DISubprogram(name: "array_non_zero_int_mmx", scope: !164, file: !164, line: 99, type: !166, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !170)
!166 = !DISubroutineType(types: !167)
!167 = !{!168, !169, !168}
!168 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!170 = !{!171, !172, !173}
!171 = !DILocalVariable(name: "v", arg: 1, scope: !165, file: !164, line: 99, type: !169)
!172 = !DILocalVariable(name: "i_count", arg: 2, scope: !165, file: !164, line: 99, type: !168)
!173 = !DILocalVariable(name: "nonzero", scope: !174, file: !164, line: 103, type: !168)
!174 = distinct !DILexicalBlock(scope: !175, file: !164, line: 102, column: 5)
!175 = distinct !DILexicalBlock(scope: !165, file: !164, line: 101, column: 8)
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !163, file: !164, line: 124, baseType: !178, size: 1024)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 1024, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 64)
!181 = !{!0, !182, !188, !195, !197, !203, !205, !207, !212, !216}
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "block_idx_xy_fdec", scope: !2, file: !6, line: 242, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 256, elements: !186)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!186 = !{!187}
!187 = !DISubrange(count: 16)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "block_idx_x", scope: !2, file: !6, line: 208, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 128, elements: !186)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !153, line: 24, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !149, line: 38, baseType: !194)
!194 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "block_idx_y", scope: !2, file: !6, line: 212, type: !190, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "x264_scan8", scope: !2, file: !27, line: 216, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 864, elements: !201)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!201 = !{!202}
!202 = !DISubrange(count: 27)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "block_idx_yx_1d", scope: !2, file: !6, line: 227, type: !190, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "block_idx_xy_1d", scope: !2, file: !6, line: 223, type: !190, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "x264_pred_i4x4_neighbors", scope: !2, file: !6, line: 40, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 96, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 12)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "x264_dct8_weight2_tab", scope: !2, file: !214, line: 73, type: !215, isLocal: true, isDefinition: true)
!214 = !DIFile(filename: "./common/dct.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "eb76275dd7785989f0d8a4ada39e3c74")
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 1024, elements: !179)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "x264_dct4_weight2_tab", scope: !2, file: !214, line: 59, type: !184, isLocal: true, isDefinition: true)
!218 = !{i32 7, !"Dwarf Version", i32 5}
!219 = !{i32 2, !"Debug Info Version", i32 3}
!220 = !{i32 1, !"wchar_size", i32 4}
!221 = !{i32 8, !"PIC Level", i32 2}
!222 = !{i32 7, !"PIE Level", i32 2}
!223 = !{i32 7, !"uwtable", i32 2}
!224 = !{!"clang version 16.0.0"}
!225 = distinct !DISubprogram(name: "x264_mb_encode_i4x4", scope: !3, file: !3, line: 93, type: !226, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1299)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !228, !168, !168}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !230, line: 42, baseType: !231)
!230 = !DIFile(filename: "./x264.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "9fe19a6136ab7ddd44a70d62bce62365")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !27, line: 250, size: 206080, elements: !232)
!232 = !{!233, !376, !380, !383, !384, !385, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !498, !500, !527, !529, !530, !537, !542, !546, !550, !554, !558, !559, !560, !561, !564, !566, !568, !608, !625, !784, !785, !786, !787, !791, !792, !793, !794, !809, !961, !965, !1020, !1028, !1029, !1035, !1037, !1105, !1165, !1216, !1237, !1279}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !231, file: !27, line: 253, baseType: !234, size: 4928)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !230, line: 295, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !230, line: 151, size: 4928, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !278, !280, !281, !282, !283, !285, !286, !300, !301, !302, !303, !304, !334, !373, !374, !375}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !235, file: !230, line: 154, baseType: !7, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !235, file: !230, line: 155, baseType: !168, size: 32, offset: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !235, file: !230, line: 156, baseType: !168, size: 32, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !235, file: !230, line: 159, baseType: !168, size: 32, offset: 96)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !235, file: !230, line: 160, baseType: !168, size: 32, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !235, file: !230, line: 161, baseType: !168, size: 32, offset: 160)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !235, file: !230, line: 162, baseType: !168, size: 32, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !235, file: !230, line: 163, baseType: !168, size: 32, offset: 224)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !235, file: !230, line: 180, baseType: !246, size: 288, offset: 256)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !230, line: 165, size: 288, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !256}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !246, file: !230, line: 168, baseType: !168, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !246, file: !230, line: 169, baseType: !168, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !246, file: !230, line: 171, baseType: !168, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !246, file: !230, line: 174, baseType: !168, size: 32, offset: 96)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !246, file: !230, line: 175, baseType: !168, size: 32, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !246, file: !230, line: 176, baseType: !168, size: 32, offset: 160)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !246, file: !230, line: 177, baseType: !168, size: 32, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !246, file: !230, line: 178, baseType: !168, size: 32, offset: 224)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !246, file: !230, line: 179, baseType: !168, size: 32, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !235, file: !230, line: 182, baseType: !168, size: 32, offset: 544)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !235, file: !230, line: 183, baseType: !168, size: 32, offset: 576)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !235, file: !230, line: 186, baseType: !168, size: 32, offset: 608)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !235, file: !230, line: 187, baseType: !168, size: 32, offset: 640)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !235, file: !230, line: 188, baseType: !168, size: 32, offset: 672)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !235, file: !230, line: 189, baseType: !168, size: 32, offset: 704)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "b_pre_scenecut", scope: !235, file: !230, line: 190, baseType: !168, size: 32, offset: 736)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !235, file: !230, line: 191, baseType: !168, size: 32, offset: 768)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !235, file: !230, line: 192, baseType: !168, size: 32, offset: 800)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !235, file: !230, line: 193, baseType: !168, size: 32, offset: 832)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "b_bframe_pyramid", scope: !235, file: !230, line: 194, baseType: !168, size: 32, offset: 864)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !235, file: !230, line: 196, baseType: !168, size: 32, offset: 896)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !235, file: !230, line: 197, baseType: !168, size: 32, offset: 928)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !235, file: !230, line: 198, baseType: !168, size: 32, offset: 960)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !235, file: !230, line: 200, baseType: !168, size: 32, offset: 992)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !235, file: !230, line: 201, baseType: !168, size: 32, offset: 1024)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !235, file: !230, line: 203, baseType: !168, size: 32, offset: 1056)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !235, file: !230, line: 205, baseType: !168, size: 32, offset: 1088)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !235, file: !230, line: 206, baseType: !276, size: 64, offset: 1152)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !235, file: !230, line: 207, baseType: !279, size: 128, offset: 1216)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 128, elements: !186)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !235, file: !230, line: 208, baseType: !279, size: 128, offset: 1344)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !235, file: !230, line: 209, baseType: !279, size: 128, offset: 1472)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !235, file: !230, line: 210, baseType: !279, size: 128, offset: 1600)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !235, file: !230, line: 211, baseType: !284, size: 512, offset: 1728)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 512, elements: !179)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !235, file: !230, line: 212, baseType: !284, size: 512, offset: 2240)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !235, file: !230, line: 215, baseType: !287, size: 64, offset: 2752)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !169, !168, !290, !292}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !294)
!294 = !{!295, !297, !298, !299}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !293, file: !296, baseType: !7, size: 32)
!296 = !DIFile(filename: "encoder/macroblock.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src")
!297 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !293, file: !296, baseType: !7, size: 32, offset: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !293, file: !296, baseType: !169, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !293, file: !296, baseType: !169, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !235, file: !230, line: 216, baseType: !169, size: 64, offset: 2816)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !235, file: !230, line: 217, baseType: !168, size: 32, offset: 2880)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !235, file: !230, line: 218, baseType: !168, size: 32, offset: 2912)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !235, file: !230, line: 219, baseType: !276, size: 64, offset: 2944)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !235, file: !230, line: 252, baseType: !305, size: 768, offset: 3008)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !230, line: 222, size: 768, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !327, !328, !332, !333}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !305, file: !230, line: 224, baseType: !7, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !305, file: !230, line: 225, baseType: !7, size: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !305, file: !230, line: 227, baseType: !168, size: 32, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !305, file: !230, line: 228, baseType: !168, size: 32, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !305, file: !230, line: 229, baseType: !168, size: 32, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_8x8_inference", scope: !305, file: !230, line: 230, baseType: !168, size: 32, offset: 160)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !305, file: !230, line: 231, baseType: !168, size: 32, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !305, file: !230, line: 233, baseType: !168, size: 32, offset: 224)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !305, file: !230, line: 234, baseType: !168, size: 32, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !305, file: !230, line: 235, baseType: !168, size: 32, offset: 288)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !305, file: !230, line: 236, baseType: !168, size: 32, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !305, file: !230, line: 237, baseType: !168, size: 32, offset: 352)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !305, file: !230, line: 238, baseType: !168, size: 32, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !305, file: !230, line: 239, baseType: !168, size: 32, offset: 416)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !305, file: !230, line: 240, baseType: !168, size: 32, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !305, file: !230, line: 241, baseType: !168, size: 32, offset: 480)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !305, file: !230, line: 242, baseType: !168, size: 32, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !305, file: !230, line: 243, baseType: !168, size: 32, offset: 544)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !305, file: !230, line: 244, baseType: !326, size: 32, offset: 576)
!326 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !305, file: !230, line: 245, baseType: !326, size: 32, offset: 608)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !305, file: !230, line: 248, baseType: !329, size: 64, offset: 640)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 64, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 2)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !305, file: !230, line: 250, baseType: !168, size: 32, offset: 704)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !305, file: !230, line: 251, baseType: !168, size: 32, offset: 736)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !235, file: !230, line: 289, baseType: !335, size: 1024, offset: 3776)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !230, line: 255, size: 1024, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !371, !372}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !335, file: !230, line: 257, baseType: !168, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !335, file: !230, line: 259, baseType: !168, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !335, file: !230, line: 260, baseType: !168, size: 32, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !335, file: !230, line: 261, baseType: !168, size: 32, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !335, file: !230, line: 262, baseType: !168, size: 32, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !335, file: !230, line: 264, baseType: !168, size: 32, offset: 160)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !335, file: !230, line: 265, baseType: !326, size: 32, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !335, file: !230, line: 266, baseType: !326, size: 32, offset: 224)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !335, file: !230, line: 267, baseType: !168, size: 32, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !335, file: !230, line: 268, baseType: !168, size: 32, offset: 288)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !335, file: !230, line: 269, baseType: !326, size: 32, offset: 320)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !335, file: !230, line: 270, baseType: !326, size: 32, offset: 352)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !335, file: !230, line: 271, baseType: !326, size: 32, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !335, file: !230, line: 273, baseType: !168, size: 32, offset: 416)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !335, file: !230, line: 274, baseType: !326, size: 32, offset: 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !335, file: !230, line: 277, baseType: !168, size: 32, offset: 480)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !335, file: !230, line: 278, baseType: !276, size: 64, offset: 512)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !335, file: !230, line: 279, baseType: !168, size: 32, offset: 576)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !335, file: !230, line: 280, baseType: !276, size: 64, offset: 640)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !335, file: !230, line: 283, baseType: !326, size: 32, offset: 704)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !335, file: !230, line: 284, baseType: !326, size: 32, offset: 736)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !335, file: !230, line: 285, baseType: !326, size: 32, offset: 768)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !335, file: !230, line: 286, baseType: !360, size: 64, offset: 832)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !230, line: 149, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 142, size: 256, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !362, file: !230, line: 144, baseType: !168, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !362, file: !230, line: 144, baseType: !168, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !362, file: !230, line: 145, baseType: !168, size: 32, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !362, file: !230, line: 146, baseType: !168, size: 32, offset: 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !362, file: !230, line: 147, baseType: !326, size: 32, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !362, file: !230, line: 148, baseType: !370, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !335, file: !230, line: 287, baseType: !168, size: 32, offset: 896)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !335, file: !230, line: 288, baseType: !276, size: 64, offset: 960)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !235, file: !230, line: 292, baseType: !168, size: 32, offset: 4800)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !235, file: !230, line: 293, baseType: !168, size: 32, offset: 4832)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !235, file: !230, line: 294, baseType: !168, size: 32, offset: 4864)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !231, file: !27, line: 255, baseType: !377, size: 8192, offset: 4928)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 8192, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !231, file: !27, line: 256, baseType: !381, size: 64, offset: 13120)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !382, line: 27, baseType: !161)
!382 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!383 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !231, file: !27, line: 257, baseType: !168, size: 32, offset: 13184)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !231, file: !27, line: 258, baseType: !168, size: 32, offset: 13216)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !231, file: !27, line: 269, baseType: !386, size: 2112, offset: 13248)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !27, line: 261, size: 2112, elements: !387)
!387 = !{!388, !389, !401, !402, !403, !417}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !386, file: !27, line: 263, baseType: !168, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !386, file: !27, line: 264, baseType: !390, size: 1536, offset: 64)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 1536, elements: !399)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !230, line: 399, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 391, size: 192, elements: !393)
!393 = !{!394, !395, !396, !397}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !392, file: !230, line: 393, baseType: !168, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !392, file: !230, line: 394, baseType: !168, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !392, file: !230, line: 397, baseType: !168, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !392, file: !230, line: 398, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!399 = !{!400}
!400 = !DISubrange(count: 8)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !386, file: !27, line: 265, baseType: !168, size: 32, offset: 1600)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !386, file: !27, line: 266, baseType: !398, size: 64, offset: 1664)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !386, file: !27, line: 267, baseType: !404, size: 320, offset: 1728)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !405, line: 49, baseType: !406)
!405 = !DIFile(filename: "./common/bs.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "2f46b0964798cffcc7898517b4d9922e")
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !405, line: 40, size: 320, elements: !407)
!407 = !{!408, !409, !410, !411, !415, !416}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !406, file: !405, line: 42, baseType: !398, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !406, file: !405, line: 43, baseType: !398, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !406, file: !405, line: 44, baseType: !398, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !406, file: !405, line: 46, baseType: !412, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !413, line: 87, baseType: !414)
!413 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!414 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !406, file: !405, line: 47, baseType: !168, size: 32, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !406, file: !405, line: 48, baseType: !168, size: 32, offset: 288)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !386, file: !27, line: 268, baseType: !168, size: 32, offset: 2048)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !231, file: !27, line: 274, baseType: !168, size: 32, offset: 15360)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_offset", scope: !231, file: !27, line: 276, baseType: !168, size: 32, offset: 15392)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !231, file: !27, line: 277, baseType: !168, size: 32, offset: 15424)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_msb", scope: !231, file: !27, line: 278, baseType: !168, size: 32, offset: 15456)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !231, file: !27, line: 279, baseType: !168, size: 32, offset: 15488)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !231, file: !27, line: 280, baseType: !168, size: 32, offset: 15520)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_num", scope: !231, file: !27, line: 282, baseType: !168, size: 32, offset: 15552)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !231, file: !27, line: 283, baseType: !168, size: 32, offset: 15584)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !231, file: !27, line: 284, baseType: !168, size: 32, offset: 15616)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !231, file: !27, line: 287, baseType: !428, size: 9920, offset: 15648)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 9920, elements: !496)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !16, line: 133, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 52, size: 9920, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !449, !450, !451, !452, !453, !454, !455, !456, !457, !464, !465, !495}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !430, file: !16, line: 54, baseType: !168, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !430, file: !16, line: 56, baseType: !168, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !430, file: !16, line: 57, baseType: !168, size: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !430, file: !16, line: 59, baseType: !168, size: 32, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !430, file: !16, line: 60, baseType: !168, size: 32, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !430, file: !16, line: 61, baseType: !168, size: 32, offset: 160)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !430, file: !16, line: 63, baseType: !168, size: 32, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !430, file: !16, line: 65, baseType: !168, size: 32, offset: 224)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !430, file: !16, line: 67, baseType: !168, size: 32, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !430, file: !16, line: 69, baseType: !168, size: 32, offset: 288)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !430, file: !16, line: 70, baseType: !168, size: 32, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !430, file: !16, line: 71, baseType: !168, size: 32, offset: 352)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !430, file: !16, line: 72, baseType: !168, size: 32, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !430, file: !16, line: 73, baseType: !446, size: 8192, offset: 416)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 8192, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !430, file: !16, line: 75, baseType: !168, size: 32, offset: 8608)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !430, file: !16, line: 76, baseType: !168, size: 32, offset: 8640)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !430, file: !16, line: 77, baseType: !168, size: 32, offset: 8672)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !430, file: !16, line: 78, baseType: !168, size: 32, offset: 8704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !430, file: !16, line: 79, baseType: !168, size: 32, offset: 8736)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !430, file: !16, line: 80, baseType: !168, size: 32, offset: 8768)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !430, file: !16, line: 81, baseType: !168, size: 32, offset: 8800)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !430, file: !16, line: 83, baseType: !168, size: 32, offset: 8832)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !430, file: !16, line: 90, baseType: !458, size: 128, offset: 8864)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !430, file: !16, line: 84, size: 128, elements: !459)
!459 = !{!460, !461, !462, !463}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !458, file: !16, line: 86, baseType: !168, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !458, file: !16, line: 87, baseType: !168, size: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !458, file: !16, line: 88, baseType: !168, size: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !458, file: !16, line: 89, baseType: !168, size: 32, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !430, file: !16, line: 92, baseType: !168, size: 32, offset: 8992)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !430, file: !16, line: 129, baseType: !466, size: 864, offset: 9024)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !430, file: !16, line: 93, size: 864, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !466, file: !16, line: 95, baseType: !168, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !466, file: !16, line: 96, baseType: !168, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !466, file: !16, line: 97, baseType: !168, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !466, file: !16, line: 99, baseType: !168, size: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !466, file: !16, line: 100, baseType: !168, size: 32, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !466, file: !16, line: 102, baseType: !168, size: 32, offset: 160)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !466, file: !16, line: 103, baseType: !168, size: 32, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !466, file: !16, line: 104, baseType: !168, size: 32, offset: 224)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !466, file: !16, line: 105, baseType: !168, size: 32, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !466, file: !16, line: 106, baseType: !168, size: 32, offset: 288)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !466, file: !16, line: 107, baseType: !168, size: 32, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !466, file: !16, line: 108, baseType: !168, size: 32, offset: 352)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !466, file: !16, line: 110, baseType: !168, size: 32, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !466, file: !16, line: 111, baseType: !168, size: 32, offset: 416)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !466, file: !16, line: 112, baseType: !168, size: 32, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !466, file: !16, line: 114, baseType: !168, size: 32, offset: 480)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !466, file: !16, line: 115, baseType: !168, size: 32, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !466, file: !16, line: 116, baseType: !168, size: 32, offset: 544)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !466, file: !16, line: 117, baseType: !168, size: 32, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !466, file: !16, line: 119, baseType: !168, size: 32, offset: 608)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !466, file: !16, line: 120, baseType: !168, size: 32, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !466, file: !16, line: 121, baseType: !168, size: 32, offset: 672)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !466, file: !16, line: 122, baseType: !168, size: 32, offset: 704)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !466, file: !16, line: 123, baseType: !168, size: 32, offset: 736)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !466, file: !16, line: 124, baseType: !168, size: 32, offset: 768)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !466, file: !16, line: 125, baseType: !168, size: 32, offset: 800)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !466, file: !16, line: 126, baseType: !168, size: 32, offset: 832)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !430, file: !16, line: 131, baseType: !168, size: 32, offset: 9888)
!496 = !{!497}
!497 = !DISubrange(count: 1)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !231, file: !27, line: 288, baseType: !499, size: 64, offset: 25600)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !231, file: !27, line: 289, baseType: !501, size: 960, offset: 25664)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 960, elements: !496)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !16, line: 165, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 135, size: 960, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !503, file: !16, line: 137, baseType: !168, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !503, file: !16, line: 138, baseType: !168, size: 32, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !503, file: !16, line: 140, baseType: !168, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !503, file: !16, line: 142, baseType: !168, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !503, file: !16, line: 143, baseType: !168, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !503, file: !16, line: 145, baseType: !168, size: 32, offset: 160)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !503, file: !16, line: 146, baseType: !168, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !503, file: !16, line: 148, baseType: !168, size: 32, offset: 224)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !503, file: !16, line: 149, baseType: !168, size: 32, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !503, file: !16, line: 151, baseType: !168, size: 32, offset: 288)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !503, file: !16, line: 152, baseType: !168, size: 32, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !503, file: !16, line: 154, baseType: !168, size: 32, offset: 352)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !503, file: !16, line: 156, baseType: !168, size: 32, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !503, file: !16, line: 157, baseType: !168, size: 32, offset: 416)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !503, file: !16, line: 158, baseType: !168, size: 32, offset: 448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !503, file: !16, line: 160, baseType: !168, size: 32, offset: 480)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !503, file: !16, line: 162, baseType: !168, size: 32, offset: 512)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !503, file: !16, line: 163, baseType: !523, size: 384, offset: 576)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 384, elements: !525)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!525 = !{!526}
!526 = !DISubrange(count: 6)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !231, file: !27, line: 290, baseType: !528, size: 64, offset: 26624)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !231, file: !27, line: 291, baseType: !168, size: 32, offset: 26688)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !231, file: !27, line: 294, baseType: !531, size: 256, offset: 26752)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 256, elements: !536)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 512, elements: !534)
!534 = !{!535, !535}
!535 = !DISubrange(count: 4)
!536 = !{!535}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !231, file: !27, line: 295, baseType: !538, size: 128, offset: 27008)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 128, elements: !330)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 2048, elements: !541)
!541 = !{!400, !400}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !231, file: !27, line: 297, baseType: !543, size: 256, offset: 27136)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 256, elements: !536)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 512, elements: !186)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !231, file: !27, line: 298, baseType: !547, size: 128, offset: 27392)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 128, elements: !330)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 2048, elements: !179)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !231, file: !27, line: 300, baseType: !551, size: 256, offset: 27520)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 256, elements: !536)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 256, elements: !186)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !231, file: !27, line: 301, baseType: !555, size: 128, offset: 27776)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 128, elements: !330)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 1024, elements: !179)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !231, file: !27, line: 302, baseType: !551, size: 256, offset: 27904)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !231, file: !27, line: 303, baseType: !555, size: 128, offset: 28160)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !231, file: !27, line: 305, baseType: !524, size: 64, offset: 28288)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !231, file: !27, line: 307, baseType: !562, size: 4096, align: 128, offset: 28416)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 4096, elements: !563)
!563 = !{!331, !180}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !231, file: !27, line: 308, baseType: !565, size: 2048, align: 128, offset: 32512)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 2048, elements: !563)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !231, file: !27, line: 309, baseType: !567, size: 64, offset: 34560)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 64, elements: !330)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !231, file: !27, line: 312, baseType: !569, size: 3072, offset: 34624)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !27, line: 209, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 159, size: 3072, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !600, !601, !602, !603, !604, !605, !606, !607}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !570, file: !27, line: 161, baseType: !499, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !570, file: !27, line: 162, baseType: !528, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !570, file: !27, line: 164, baseType: !168, size: 32, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !570, file: !27, line: 165, baseType: !168, size: 32, offset: 160)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !570, file: !27, line: 166, baseType: !168, size: 32, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !570, file: !27, line: 168, baseType: !168, size: 32, offset: 224)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !570, file: !27, line: 170, baseType: !168, size: 32, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !570, file: !27, line: 172, baseType: !168, size: 32, offset: 288)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !570, file: !27, line: 173, baseType: !168, size: 32, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !570, file: !27, line: 174, baseType: !168, size: 32, offset: 352)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !570, file: !27, line: 176, baseType: !168, size: 32, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !570, file: !27, line: 178, baseType: !168, size: 32, offset: 416)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !570, file: !27, line: 179, baseType: !168, size: 32, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !570, file: !27, line: 181, baseType: !329, size: 64, offset: 480)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !570, file: !27, line: 182, baseType: !168, size: 32, offset: 544)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !570, file: !27, line: 184, baseType: !168, size: 32, offset: 576)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !570, file: !27, line: 186, baseType: !168, size: 32, offset: 608)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !570, file: !27, line: 187, baseType: !168, size: 32, offset: 640)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !570, file: !27, line: 188, baseType: !168, size: 32, offset: 672)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !570, file: !27, line: 190, baseType: !168, size: 32, offset: 704)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !570, file: !27, line: 191, baseType: !168, size: 32, offset: 736)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !570, file: !27, line: 195, baseType: !594, size: 2048, offset: 768)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 2048, elements: !599)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !570, file: !27, line: 192, size: 64, elements: !596)
!596 = !{!597, !598}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !595, file: !27, line: 193, baseType: !168, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !595, file: !27, line: 194, baseType: !168, size: 32, offset: 32)
!599 = !{!331, !187}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !570, file: !27, line: 197, baseType: !168, size: 32, offset: 2816)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !570, file: !27, line: 199, baseType: !168, size: 32, offset: 2848)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !570, file: !27, line: 200, baseType: !168, size: 32, offset: 2880)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !570, file: !27, line: 201, baseType: !168, size: 32, offset: 2912)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !570, file: !27, line: 202, baseType: !168, size: 32, offset: 2944)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !570, file: !27, line: 205, baseType: !168, size: 32, offset: 2976)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !570, file: !27, line: 206, baseType: !168, size: 32, offset: 3008)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !570, file: !27, line: 207, baseType: !168, size: 32, offset: 3040)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !231, file: !27, line: 315, baseType: !609, size: 4096, offset: 37760)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !610, line: 46, baseType: !611)
!610 = !DIFile(filename: "./common/cabac.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fed287ee191b19e61654b41f7c57e583")
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !610, line: 27, size: 4096, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !621}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !611, file: !610, line: 30, baseType: !168, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !611, file: !610, line: 31, baseType: !168, size: 32, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !611, file: !610, line: 34, baseType: !168, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !611, file: !610, line: 35, baseType: !168, size: 32, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !611, file: !610, line: 37, baseType: !398, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !611, file: !610, line: 38, baseType: !398, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !611, file: !610, line: 39, baseType: !398, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !611, file: !610, line: 42, baseType: !168, size: 32, align: 128, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !611, file: !610, line: 45, baseType: !622, size: 3680, offset: 416)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 3680, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 460)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !231, file: !27, line: 340, baseType: !626, size: 31808, offset: 41856)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !27, line: 317, size: 31808, elements: !627)
!627 = !{!628, !769, !770, !774, !775, !777, !778, !779, !780, !781, !782, !783}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !626, file: !27, line: 320, baseType: !629, size: 4288)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 4288, elements: !767)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !632, line: 94, baseType: !633)
!632 = !DIFile(filename: "./common/frame.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "3ae200731644fdbac60ac7f8f3f9d2f1")
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !632, line: 31, size: 51648, elements: !634)
!634 = !{!635, !636, !637, !638, !641, !642, !643, !644, !645, !646, !647, !651, !652, !653, !654, !655, !656, !658, !660, !661, !662, !663, !664, !669, !673, !677, !680, !682, !683, !685, !686, !690, !691, !692, !695, !697, !698, !699, !700, !702, !703, !704, !705, !706, !707, !735}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !633, file: !632, line: 34, baseType: !168, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !633, file: !632, line: 35, baseType: !168, size: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !633, file: !632, line: 36, baseType: !168, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !633, file: !632, line: 37, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !147, line: 27, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !149, line: 44, baseType: !414)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !633, file: !632, line: 38, baseType: !168, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !633, file: !632, line: 39, baseType: !168, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !633, file: !632, line: 40, baseType: !168, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !633, file: !632, line: 41, baseType: !326, size: 32, offset: 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !633, file: !632, line: 42, baseType: !326, size: 32, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !633, file: !632, line: 45, baseType: !168, size: 32, offset: 352)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !633, file: !632, line: 46, baseType: !648, size: 96, offset: 384)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 96, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 3)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !633, file: !632, line: 47, baseType: !648, size: 96, offset: 480)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !633, file: !632, line: 48, baseType: !648, size: 96, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !633, file: !632, line: 49, baseType: !168, size: 32, offset: 672)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !633, file: !632, line: 50, baseType: !168, size: 32, offset: 704)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !633, file: !632, line: 51, baseType: !168, size: 32, offset: 736)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !633, file: !632, line: 52, baseType: !657, size: 192, offset: 768)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 192, elements: !649)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !633, file: !632, line: 53, baseType: !659, size: 256, offset: 960)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 256, elements: !536)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !633, file: !632, line: 54, baseType: !659, size: 256, offset: 1216)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !633, file: !632, line: 55, baseType: !155, size: 64, offset: 1472)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !633, file: !632, line: 59, baseType: !659, size: 256, offset: 1536)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !633, file: !632, line: 60, baseType: !659, size: 256, offset: 1792)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !633, file: !632, line: 63, baseType: !665, size: 64, offset: 2048)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !147, line: 24, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !149, line: 37, baseType: !668)
!668 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !633, file: !632, line: 64, baseType: !670, size: 128, offset: 2112)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 128, elements: !330)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 32, elements: !330)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !633, file: !632, line: 65, baseType: !674, size: 2176, offset: 2240)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 2176, elements: !675)
!675 = !{!331, !676}
!676 = !DISubrange(count: 17)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !633, file: !632, line: 66, baseType: !678, size: 2176, offset: 4416)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 2176, elements: !675)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !633, file: !632, line: 67, baseType: !681, size: 128, offset: 6592)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 128, elements: !330)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !633, file: !632, line: 68, baseType: !329, size: 64, offset: 6720)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !633, file: !632, line: 69, baseType: !684, size: 1024, offset: 6784)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 1024, elements: !599)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !633, file: !632, line: 70, baseType: !545, size: 512, offset: 7808)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !633, file: !632, line: 75, baseType: !687, size: 10368, offset: 8320)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 10368, elements: !688)
!688 = !{!689, !689}
!689 = !DISubrange(count: 18)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !633, file: !632, line: 76, baseType: !687, size: 10368, offset: 18688)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !633, file: !632, line: 77, baseType: !168, size: 32, offset: 29056)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !633, file: !632, line: 78, baseType: !693, size: 576, offset: 29088)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 576, elements: !694)
!694 = !{!689}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !633, file: !632, line: 79, baseType: !696, size: 20736, offset: 29696)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 20736, elements: !688)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !633, file: !632, line: 80, baseType: !679, size: 64, offset: 50432)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !633, file: !632, line: 81, baseType: !679, size: 64, offset: 50496)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_qp", scope: !633, file: !632, line: 82, baseType: !679, size: 64, offset: 50560)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !633, file: !632, line: 83, baseType: !701, size: 64, offset: 50624)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !633, file: !632, line: 84, baseType: !168, size: 32, offset: 50688)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !633, file: !632, line: 85, baseType: !155, size: 64, offset: 50752)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !633, file: !632, line: 86, baseType: !155, size: 64, offset: 50816)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !633, file: !632, line: 89, baseType: !168, size: 32, offset: 50880)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !633, file: !632, line: 90, baseType: !168, size: 32, offset: 50912)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !633, file: !632, line: 91, baseType: !708, size: 320, offset: 50944)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !382, line: 72, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !382, line: 67, size: 320, elements: !710)
!710 = !{!711, !730, !734}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !709, file: !382, line: 69, baseType: !712, size: 320)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !713, line: 22, size: 320, elements: !714)
!713 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !712, file: !713, line: 24, baseType: !168, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !712, file: !713, line: 25, baseType: !7, size: 32, offset: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !712, file: !713, line: 26, baseType: !168, size: 32, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !712, file: !713, line: 28, baseType: !7, size: 32, offset: 96)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !712, file: !713, line: 32, baseType: !168, size: 32, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !712, file: !713, line: 34, baseType: !150, size: 16, offset: 160)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !712, file: !713, line: 35, baseType: !150, size: 16, offset: 176)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !712, file: !713, line: 36, baseType: !723, size: 128, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !724, line: 55, baseType: !725)
!724 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !724, line: 51, size: 128, elements: !726)
!726 = !{!727, !729}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !725, file: !724, line: 53, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !725, file: !724, line: 54, baseType: !728, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !709, file: !382, line: 70, baseType: !731, size: 320)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 320, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 40)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !709, file: !382, line: 71, baseType: !414, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !633, file: !632, line: 92, baseType: !736, size: 384, offset: 51264)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !382, line: 80, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !382, line: 75, size: 384, elements: !738)
!738 = !{!739, !761, !765}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !737, file: !382, line: 77, baseType: !740, size: 384)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !724, line: 94, size: 384, elements: !741)
!741 = !{!742, !754, !755, !757, !758, !759, !760}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !740, file: !724, line: 96, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !744, line: 33, baseType: !745)
!744 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!745 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !744, line: 25, size: 64, elements: !746)
!746 = !{!747, !749}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !745, file: !744, line: 27, baseType: !748, size: 64)
!748 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !745, file: !744, line: 32, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !745, file: !744, line: 28, size: 64, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !750, file: !744, line: 30, baseType: !7, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !750, file: !744, line: 31, baseType: !7, size: 32, offset: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !740, file: !724, line: 97, baseType: !743, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !740, file: !724, line: 98, baseType: !756, size: 64, offset: 128)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !330)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !740, file: !724, line: 99, baseType: !756, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !740, file: !724, line: 100, baseType: !7, size: 32, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !740, file: !724, line: 101, baseType: !7, size: 32, offset: 288)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !740, file: !724, line: 102, baseType: !756, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !737, file: !382, line: 78, baseType: !762, size: 384)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 384, elements: !763)
!763 = !{!764}
!764 = !DISubrange(count: 48)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !737, file: !382, line: 79, baseType: !766, size: 64)
!766 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!767 = !{!768}
!768 = !DISubrange(count: 67)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !626, file: !27, line: 322, baseType: !629, size: 4288, offset: 4288)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !626, file: !27, line: 324, baseType: !771, size: 21760, offset: 8576)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 21760, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 340)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !626, file: !27, line: 326, baseType: !630, size: 64, offset: 30336)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !626, file: !27, line: 329, baseType: !776, size: 1152, offset: 30400)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 1152, elements: !694)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_idr", scope: !626, file: !27, line: 331, baseType: !168, size: 32, offset: 31552)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !626, file: !27, line: 333, baseType: !168, size: 32, offset: 31584)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !626, file: !27, line: 335, baseType: !168, size: 32, offset: 31616)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !626, file: !27, line: 336, baseType: !168, size: 32, offset: 31648)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !626, file: !27, line: 337, baseType: !168, size: 32, offset: 31680)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !626, file: !27, line: 338, baseType: !168, size: 32, offset: 31712)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !626, file: !27, line: 339, baseType: !168, size: 32, offset: 31744)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !231, file: !27, line: 343, baseType: !630, size: 64, offset: 73664)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !231, file: !27, line: 346, baseType: !630, size: 64, offset: 73728)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !231, file: !27, line: 349, baseType: !168, size: 32, offset: 73792)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !231, file: !27, line: 350, baseType: !788, size: 1216, offset: 73856)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 1216, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 19)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !231, file: !27, line: 351, baseType: !168, size: 32, offset: 75072)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !231, file: !27, line: 352, baseType: !788, size: 1216, offset: 75136)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !231, file: !27, line: 353, baseType: !329, size: 64, offset: 76352)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !231, file: !27, line: 365, baseType: !795, size: 10624, offset: 76416)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !27, line: 358, size: 10624, elements: !796)
!796 = !{!797, !799, !802, !805}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !795, file: !27, line: 360, baseType: !798, size: 256, align: 128)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 256, elements: !186)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !795, file: !27, line: 361, baseType: !800, size: 128, align: 128, offset: 256)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 128, elements: !801)
!801 = !{!331, !535}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !795, file: !27, line: 363, baseType: !803, size: 4096, align: 128, offset: 384)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 4096, elements: !804)
!804 = !{!535, !180}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !795, file: !27, line: 364, baseType: !806, size: 6144, align: 128, offset: 4480)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 6144, elements: !807)
!807 = !{!808, !187}
!808 = !DISubrange(count: 24)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !231, file: !27, line: 544, baseType: !810, size: 80128, offset: 87040)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !27, line: 368, size: 80128, elements: !811)
!811 = !{!812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !838, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !852, !856, !857, !858, !859, !860, !864, !865, !866, !869, !871, !872, !873, !875, !876, !877, !878, !879, !880, !881, !882, !923, !943, !944, !945, !946, !947, !948, !949, !950, !951, !954, !957, !959}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !810, file: !27, line: 370, baseType: !168, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !810, file: !27, line: 373, baseType: !168, size: 32, offset: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !810, file: !27, line: 374, baseType: !168, size: 32, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !810, file: !27, line: 375, baseType: !168, size: 32, offset: 96)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !810, file: !27, line: 378, baseType: !168, size: 32, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !810, file: !27, line: 379, baseType: !168, size: 32, offset: 160)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !810, file: !27, line: 380, baseType: !168, size: 32, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !810, file: !27, line: 381, baseType: !168, size: 32, offset: 224)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !810, file: !27, line: 382, baseType: !168, size: 32, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !810, file: !27, line: 385, baseType: !168, size: 32, offset: 288)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !810, file: !27, line: 386, baseType: !168, size: 32, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !810, file: !27, line: 387, baseType: !168, size: 32, offset: 352)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !810, file: !27, line: 388, baseType: !168, size: 32, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !810, file: !27, line: 389, baseType: !168, size: 32, offset: 416)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !810, file: !27, line: 390, baseType: !168, size: 32, offset: 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !810, file: !27, line: 391, baseType: !168, size: 32, offset: 480)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !810, file: !27, line: 393, baseType: !168, size: 32, offset: 512)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !810, file: !27, line: 396, baseType: !329, size: 64, offset: 544)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !810, file: !27, line: 397, baseType: !329, size: 64, offset: 608)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !810, file: !27, line: 400, baseType: !329, size: 64, offset: 672)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !810, file: !27, line: 401, baseType: !329, size: 64, offset: 736)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !810, file: !27, line: 403, baseType: !329, size: 64, offset: 800)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !810, file: !27, line: 404, baseType: !329, size: 64, offset: 864)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !810, file: !27, line: 407, baseType: !7, size: 32, offset: 928)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !810, file: !27, line: 408, baseType: !837, size: 128, offset: 960)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !536)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !810, file: !27, line: 409, baseType: !839, size: 512, offset: 1088)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !186)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !810, file: !27, line: 410, baseType: !168, size: 32, offset: 1600)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !810, file: !27, line: 411, baseType: !168, size: 32, offset: 1632)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !810, file: !27, line: 412, baseType: !168, size: 32, offset: 1664)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !810, file: !27, line: 413, baseType: !168, size: 32, offset: 1696)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !810, file: !27, line: 414, baseType: !168, size: 32, offset: 1728)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !810, file: !27, line: 415, baseType: !168, size: 32, offset: 1760)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !810, file: !27, line: 422, baseType: !665, size: 64, offset: 1792)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !810, file: !27, line: 423, baseType: !665, size: 64, offset: 1856)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !810, file: !27, line: 424, baseType: !145, size: 64, offset: 1920)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !810, file: !27, line: 425, baseType: !850, size: 64, offset: 1984)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 64, elements: !399)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !810, file: !27, line: 427, baseType: !853, size: 64, offset: 2048)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 192, elements: !855)
!855 = !{!808}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !810, file: !27, line: 428, baseType: !665, size: 64, offset: 2112)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !810, file: !27, line: 429, baseType: !670, size: 128, offset: 2176)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !810, file: !27, line: 430, baseType: !670, size: 128, offset: 2304)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !810, file: !27, line: 431, baseType: !681, size: 128, offset: 2432)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !810, file: !27, line: 432, baseType: !861, size: 4096, offset: 2560)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 4096, elements: !862)
!862 = !{!331, !863}
!863 = !DISubrange(count: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !810, file: !27, line: 433, baseType: !665, size: 64, offset: 6656)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !810, file: !27, line: 434, baseType: !665, size: 64, offset: 6720)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !810, file: !27, line: 435, baseType: !867, size: 384, offset: 6784)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 384, elements: !868)
!868 = !{!331, !650}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "nnz_backup", scope: !810, file: !27, line: 436, baseType: !870, size: 64, offset: 7168)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !810, file: !27, line: 439, baseType: !168, size: 32, offset: 7232)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !810, file: !27, line: 440, baseType: !168, size: 32, offset: 7264)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !810, file: !27, line: 441, baseType: !874, size: 128, offset: 7296)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 128, elements: !536)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !810, file: !27, line: 442, baseType: !168, size: 32, offset: 7424)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !810, file: !27, line: 444, baseType: !168, size: 32, offset: 7456)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !810, file: !27, line: 445, baseType: !168, size: 32, offset: 7488)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !810, file: !27, line: 447, baseType: !168, size: 32, offset: 7520)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !810, file: !27, line: 448, baseType: !168, size: 32, offset: 7552)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !810, file: !27, line: 454, baseType: !168, size: 32, offset: 7584)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !810, file: !27, line: 457, baseType: !168, size: 32, offset: 7616)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !810, file: !27, line: 498, baseType: !883, size: 57344, offset: 7680)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !810, file: !27, line: 459, size: 57344, elements: !884)
!884 = !{!885, !889, !893, !895, !896, !899, !903, !904, !907, !908, !909, !912, !913, !914, !915, !916, !917, !920, !922}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !883, file: !27, line: 464, baseType: !886, size: 3072, align: 128)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 3072, elements: !887)
!887 = !{!888}
!888 = !DISubrange(count: 384)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !883, file: !27, line: 465, baseType: !890, size: 6912, align: 128, offset: 3072)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 6912, elements: !891)
!891 = !{!892}
!892 = !DISubrange(count: 864)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !883, file: !27, line: 468, baseType: !894, size: 2048, align: 128, offset: 9984)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 2048, elements: !447)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !883, file: !27, line: 469, baseType: !894, size: 2048, align: 128, offset: 12032)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !883, file: !27, line: 470, baseType: !897, size: 3072, align: 128, offset: 14080)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 3072, elements: !898)
!898 = !{!650, !180}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !883, file: !27, line: 471, baseType: !900, size: 3840, align: 128, offset: 17152)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 3840, elements: !901)
!901 = !{!902, !187}
!902 = !DISubrange(count: 15)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !883, file: !27, line: 474, baseType: !803, size: 4096, align: 128, offset: 20992)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !883, file: !27, line: 475, baseType: !905, size: 4096, align: 128, offset: 25088)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 4096, elements: !906)
!906 = !{!187, !187}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd", scope: !883, file: !27, line: 478, baseType: !533, size: 512, offset: 29184)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_sum", scope: !883, file: !27, line: 479, baseType: !168, size: 32, offset: 29696)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d", scope: !883, file: !27, line: 480, baseType: !910, size: 128, offset: 29728)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 128, elements: !911)
!911 = !{!331, !331}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d_sum", scope: !883, file: !27, line: 481, baseType: !168, size: 32, offset: 29856)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !883, file: !27, line: 484, baseType: !657, size: 192, offset: 29888)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !883, file: !27, line: 486, baseType: !657, size: 192, offset: 30080)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !883, file: !27, line: 489, baseType: !657, size: 192, offset: 30272)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !883, file: !27, line: 492, baseType: !329, size: 64, offset: 30464)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !883, file: !27, line: 493, baseType: !918, size: 24576, offset: 30528)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 24576, elements: !919)
!919 = !{!331, !863, !526}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !883, file: !27, line: 494, baseType: !921, size: 2048, offset: 55104)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 2048, elements: !599)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !883, file: !27, line: 497, baseType: !648, size: 96, offset: 57152)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !810, file: !27, line: 526, baseType: !924, size: 12032, offset: 65024)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !810, file: !27, line: 501, size: 12032, elements: !925)
!925 = !{!926, !928, !930, !933, !936, !937, !938, !939, !940, !941, !942}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !924, file: !27, line: 504, baseType: !927, size: 384)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 384, elements: !763)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !924, file: !27, line: 507, baseType: !929, size: 384, offset: 384)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 384, elements: !763)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !924, file: !27, line: 510, baseType: !931, size: 768, align: 32, offset: 768)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 768, elements: !932)
!932 = !{!331, !764}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !924, file: !27, line: 513, baseType: !934, size: 3072, align: 128, offset: 1536)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 3072, elements: !935)
!935 = !{!331, !764, !331}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !924, file: !27, line: 514, baseType: !934, size: 3072, align: 64, offset: 4608)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !924, file: !27, line: 517, baseType: !927, size: 384, align: 32, offset: 7680)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !924, file: !27, line: 519, baseType: !934, size: 3072, align: 128, offset: 8064)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !924, file: !27, line: 520, baseType: !931, size: 768, align: 32, offset: 11136)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !924, file: !27, line: 521, baseType: !672, size: 32, align: 32, offset: 11904)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !924, file: !27, line: 524, baseType: !168, size: 32, offset: 11936)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !924, file: !27, line: 525, baseType: !168, size: 32, offset: 11968)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !810, file: !27, line: 529, baseType: !168, size: 32, offset: 77056)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !810, file: !27, line: 530, baseType: !168, size: 32, offset: 77088)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !810, file: !27, line: 531, baseType: !168, size: 32, offset: 77120)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !810, file: !27, line: 532, baseType: !168, size: 32, offset: 77152)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !810, file: !27, line: 533, baseType: !168, size: 32, offset: 77184)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !810, file: !27, line: 534, baseType: !168, size: 32, offset: 77216)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !810, file: !27, line: 535, baseType: !168, size: 32, offset: 77248)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !810, file: !27, line: 536, baseType: !168, size: 32, offset: 77280)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !810, file: !27, line: 539, baseType: !952, size: 512, offset: 77312)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 512, elements: !953)
!953 = !{!187, !331}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !810, file: !27, line: 540, baseType: !955, size: 2048, offset: 77824)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 2048, elements: !956)
!956 = !{!863, !535}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0_buf", scope: !810, file: !27, line: 542, baseType: !958, size: 16, offset: 79872)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 16, elements: !330)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !810, file: !27, line: 543, baseType: !960, size: 128, offset: 79888)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 128, elements: !186)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !231, file: !27, line: 547, baseType: !962, size: 64, offset: 167168)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !27, line: 248, baseType: !964)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !27, line: 248, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !231, file: !27, line: 604, baseType: !966, size: 23936, offset: 167232)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !27, line: 550, size: 23936, elements: !967)
!967 = !{!968, !993, !997, !999, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1011, !1013, !1015, !1018, !1019}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !966, file: !27, line: 579, baseType: !969, size: 3904)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !966, file: !27, line: 553, size: 3904, elements: !970)
!970 = !{!971, !972, !973, !974, !976, !977, !978, !979, !980, !982, !985, !986, !987, !988, !989, !991}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !969, file: !27, line: 556, baseType: !168, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !969, file: !27, line: 558, baseType: !168, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !969, file: !27, line: 560, baseType: !168, size: 32, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !969, file: !27, line: 562, baseType: !975, size: 608, offset: 96)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 608, elements: !789)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !969, file: !27, line: 563, baseType: !168, size: 32, offset: 704)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !969, file: !27, line: 564, baseType: !168, size: 32, offset: 736)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !969, file: !27, line: 565, baseType: !168, size: 32, offset: 768)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !969, file: !27, line: 566, baseType: !329, size: 64, offset: 800)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !969, file: !27, line: 567, baseType: !981, size: 2048, offset: 864)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 2048, elements: !862)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !969, file: !27, line: 568, baseType: !983, size: 544, offset: 2912)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 544, elements: !984)
!984 = !{!676}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !969, file: !27, line: 571, baseType: !168, size: 32, offset: 3456)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "i_inter_cost", scope: !969, file: !27, line: 572, baseType: !168, size: 32, offset: 3488)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "i_mbs_analysed", scope: !969, file: !27, line: 573, baseType: !168, size: 32, offset: 3520)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !969, file: !27, line: 575, baseType: !329, size: 64, offset: 3552)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !969, file: !27, line: 577, baseType: !990, size: 192, offset: 3648)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 192, elements: !649)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !969, file: !27, line: 578, baseType: !992, size: 64, offset: 3840)
!992 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !966, file: !27, line: 584, baseType: !994, size: 160, offset: 3904)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 160, elements: !995)
!995 = !{!996}
!996 = !DISubrange(count: 5)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_size", scope: !966, file: !27, line: 585, baseType: !998, size: 320, offset: 4096)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 320, elements: !995)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "f_slice_qp", scope: !966, file: !27, line: 586, baseType: !1000, size: 320, offset: 4416)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, size: 320, elements: !995)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !966, file: !27, line: 587, baseType: !983, size: 544, offset: 4736)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !966, file: !27, line: 589, baseType: !998, size: 320, offset: 5312)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !966, file: !27, line: 590, baseType: !1000, size: 320, offset: 5632)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !966, file: !27, line: 591, baseType: !1000, size: 320, offset: 5952)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !966, file: !27, line: 592, baseType: !1000, size: 320, offset: 6272)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !966, file: !27, line: 593, baseType: !1000, size: 320, offset: 6592)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !966, file: !27, line: 594, baseType: !1000, size: 320, offset: 6912)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !966, file: !27, line: 596, baseType: !1009, size: 6080, offset: 7232)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 6080, elements: !1010)
!1010 = !{!996, !790}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !966, file: !27, line: 597, baseType: !1012, size: 2176, offset: 13312)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 2176, elements: !675)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !966, file: !27, line: 598, baseType: !1014, size: 128, offset: 15488)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 128, elements: !330)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !966, file: !27, line: 599, baseType: !1016, size: 8192, offset: 15616)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 8192, elements: !1017)
!1017 = !{!331, !331, !863}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !966, file: !27, line: 601, baseType: !329, size: 64, offset: 23808)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !966, file: !27, line: 602, baseType: !329, size: 64, offset: 23872)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !231, file: !27, line: 607, baseType: !1021, size: 448, offset: 191168)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1022, size: 448, elements: !1026)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !35, line: 27, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !398}
!1026 = !{!1027}
!1027 = !DISubrange(count: 7)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !231, file: !27, line: 608, baseType: !1021, size: 448, offset: 191616)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !231, file: !27, line: 609, baseType: !1030, size: 768, offset: 192064)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1031, size: 768, elements: !210)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !35, line: 28, baseType: !1032)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !398, !398}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !231, file: !27, line: 610, baseType: !1036, size: 768, offset: 192832)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1022, size: 768, elements: !210)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !231, file: !27, line: 612, baseType: !1038, size: 8000, offset: 193600)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !45, line: 103, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 63, size: 8000, elements: !1040)
!1040 = !{!1041, !1047, !1048, !1049, !1050, !1052, !1053, !1054, !1055, !1061, !1067, !1068, !1073, !1078, !1083, !1087, !1088, !1089, !1090, !1091, !1096, !1100, !1101, !1102, !1103, !1104}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1039, file: !45, line: 65, baseType: !1042, size: 448)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 448, elements: !1026)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !45, line: 26, baseType: !1044)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!168, !398, !168, !398, !168}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1039, file: !45, line: 66, baseType: !1042, size: 448, offset: 448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1039, file: !45, line: 67, baseType: !1042, size: 448, offset: 896)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1039, file: !45, line: 68, baseType: !1042, size: 448, offset: 1344)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1039, file: !45, line: 69, baseType: !1051, size: 256, offset: 1792)
!1051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 256, elements: !536)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1039, file: !45, line: 70, baseType: !1042, size: 448, offset: 2048)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1039, file: !45, line: 71, baseType: !1042, size: 448, offset: 2496)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1039, file: !45, line: 72, baseType: !1042, size: 448, offset: 2944)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1039, file: !45, line: 73, baseType: !1056, size: 448, offset: 3392)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1057, size: 448, elements: !1026)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !45, line: 27, baseType: !1058)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !398, !398, !398, !398, !168, !679}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1039, file: !45, line: 74, baseType: !1062, size: 448, offset: 3840)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 448, elements: !1026)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !45, line: 28, baseType: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !398, !398, !398, !398, !398, !168, !679}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1039, file: !45, line: 75, baseType: !1042, size: 448, offset: 4288)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1039, file: !45, line: 77, baseType: !1069, size: 256, offset: 4736)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1070, size: 256, elements: !536)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!168, !398, !168, !151}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1039, file: !45, line: 78, baseType: !1074, size: 256, offset: 4992)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1075, size: 256, elements: !536)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!159, !398, !168}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1039, file: !45, line: 80, baseType: !1079, size: 64, offset: 5248)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !524, !168, !524, !168, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1039, file: !45, line: 82, baseType: !1084, size: 64, offset: 5312)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!326, !1082, !1082, !168}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1039, file: !45, line: 85, baseType: !1056, size: 448, offset: 5376)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1039, file: !45, line: 86, baseType: !1062, size: 448, offset: 5824)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1039, file: !45, line: 87, baseType: !1056, size: 448, offset: 6272)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1039, file: !45, line: 88, baseType: !1062, size: 448, offset: 6720)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1039, file: !45, line: 92, baseType: !1092, size: 448, offset: 7168)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1093, size: 448, elements: !1026)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!168, !679, !155, !168, !155, !145, !168, !168}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1039, file: !45, line: 97, baseType: !1097, size: 64, offset: 7616)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !398, !398, !679}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1039, file: !45, line: 98, baseType: !1097, size: 64, offset: 7680)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1039, file: !45, line: 99, baseType: !1097, size: 64, offset: 7744)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1039, file: !45, line: 100, baseType: !1097, size: 64, offset: 7808)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1039, file: !45, line: 101, baseType: !1097, size: 64, offset: 7872)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1039, file: !45, line: 102, baseType: !1097, size: 64, offset: 7936)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !231, file: !27, line: 613, baseType: !1106, size: 1792, offset: 201600)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !1107, line: 71, baseType: !1108)
!1107 = !DIFile(filename: "./common/mc.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "d49d7420aafa05a86bee506aef111ff0")
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1107, line: 31, size: 1792, elements: !1109)
!1109 = !{!1110, !1115, !1119, !1123, !1130, !1135, !1136, !1140, !1144, !1145, !1149, !1157, !1161}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1108, file: !1107, line: 33, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !398, !168, !1114, !168, !168, !168, !168, !168}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1108, file: !1107, line: 38, baseType: !1116, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!398, !398, !679, !1114, !168, !168, !168, !168, !168}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1108, file: !1107, line: 44, baseType: !1120, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !398, !168, !398, !168, !168, !168, !168, !168}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1108, file: !1107, line: 48, baseType: !1124, size: 640, offset: 192)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1125, size: 640, elements: !1128)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !398, !168, !398, !168, !398, !168, !168}
!1128 = !{!1129}
!1129 = !DISubrange(count: 10)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1108, file: !1107, line: 51, baseType: !1131, size: 448, offset: 832)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 448, elements: !1026)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !398, !168, !398, !168, !168}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1108, file: !1107, line: 52, baseType: !1132, size: 64, offset: 1280)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1108, file: !1107, line: 54, baseType: !1137, size: 64, offset: 1344)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !398, !168, !398, !168, !168, !168}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1108, file: !1107, line: 57, baseType: !1141, size: 64, offset: 1408)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !398, !398, !398, !398, !168, !168, !168}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1108, file: !1107, line: 61, baseType: !1132, size: 64, offset: 1472)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1108, file: !1107, line: 64, baseType: !1146, size: 64, offset: 1536)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !398, !168, !168}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1108, file: !1107, line: 66, baseType: !1150, size: 64, offset: 1600)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!169, !169, !1153, !1155}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1156, line: 46, baseType: !161)
!1156 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1108, file: !1107, line: 67, baseType: !1158, size: 64, offset: 1664)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !169, !168}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1108, file: !1107, line: 69, baseType: !1162, size: 64, offset: 1728)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !398, !398, !398, !398, !398, !168, !168, !168, !168}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !231, file: !27, line: 614, baseType: !1166, size: 768, offset: 203392)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !214, line: 112, baseType: !1167)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 89, size: 768, elements: !1168)
!1168 = !{!1169, !1175, !1179, !1185, !1189, !1190, !1191, !1197, !1201, !1207, !1211, !1215}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1167, file: !214, line: 94, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !1173, !398, !398}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 64, elements: !536)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1167, file: !214, line: 95, baseType: !1176, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !398, !1173}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1167, file: !214, line: 97, baseType: !1180, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !1183, !398, !398}
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 256, elements: !534)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1167, file: !214, line: 98, baseType: !1186, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !398, !1183}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1167, file: !214, line: 100, baseType: !1180, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1167, file: !214, line: 101, baseType: !1186, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1167, file: !214, line: 103, baseType: !1192, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !1195, !398, !398}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 128, elements: !399)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1167, file: !214, line: 104, baseType: !1198, size: 64, offset: 448)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !398, !1195}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1167, file: !214, line: 106, baseType: !1202, size: 64, offset: 512)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !1205, !398, !398}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 1024, elements: !541)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1167, file: !214, line: 107, baseType: !1208, size: 64, offset: 576)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !398, !1205}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1167, file: !214, line: 109, baseType: !1212, size: 64, offset: 640)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !1173}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1167, file: !214, line: 110, baseType: !1212, size: 64, offset: 704)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !231, file: !27, line: 615, baseType: !1217, size: 320, offset: 204160)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !214, line: 122, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 114, size: 320, elements: !1219)
!1219 = !{!1220, !1224, !1228, !1232, !1233}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1218, file: !214, line: 116, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !145, !1195}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1218, file: !214, line: 117, baseType: !1225, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !145, !1173}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1218, file: !214, line: 118, baseType: !1229, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null, !145, !524, !398}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1218, file: !214, line: 119, baseType: !1229, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1218, file: !214, line: 120, baseType: !1234, size: 64, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !145, !145}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !231, file: !27, line: 616, baseType: !1238, size: 1088, offset: 204480)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1239, line: 43, baseType: !1240)
!1239 = !DIFile(filename: "./common/quant.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fe7c19d3e69b65b38e52c43c47235f27")
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1239, line: 26, size: 1088, elements: !1241)
!1241 = !{!1242, !1246, !1250, !1254, !1258, !1262, !1266, !1267, !1271, !1275, !1276, !1277}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1240, file: !1239, line: 28, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !1195, !155, !155}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1240, file: !1239, line: 29, baseType: !1247, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !1173, !155, !155}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1240, file: !1239, line: 30, baseType: !1251, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !1173, !168, !168}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1240, file: !1239, line: 31, baseType: !1255, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !671, !168, !168}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1240, file: !1239, line: 33, baseType: !1259, size: 64, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !1195, !539, !168}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1240, file: !1239, line: 34, baseType: !1263, size: 64, offset: 320)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !1173, !532, !168}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1240, file: !1239, line: 35, baseType: !1263, size: 64, offset: 384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1240, file: !1239, line: 37, baseType: !1268, size: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !145, !151, !155, !168}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1240, file: !1239, line: 39, baseType: !1272, size: 64, offset: 512)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!168, !145}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1240, file: !1239, line: 40, baseType: !1272, size: 64, offset: 576)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1240, file: !1239, line: 41, baseType: !1272, size: 64, offset: 640)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1240, file: !1239, line: 42, baseType: !1278, size: 384, offset: 704)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1272, size: 384, elements: !525)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !231, file: !27, line: 617, baseType: !1280, size: 512, offset: 205568)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !632, line: 108, baseType: !1281)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !632, line: 98, size: 512, elements: !1282)
!1282 = !{!1283, !1288, !1289, !1290, !1291, !1296, !1297, !1298}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma", scope: !1281, file: !632, line: 100, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !632, line: 96, baseType: !1285)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !398, !168, !168, !168, !665}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma", scope: !1281, file: !632, line: 101, baseType: !1284, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma", scope: !1281, file: !632, line: 102, baseType: !1284, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma", scope: !1281, file: !632, line: 103, baseType: !1284, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma_intra", scope: !1281, file: !632, line: 104, baseType: !1292, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !632, line: 97, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !398, !168, !168, !168}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma_intra", scope: !1281, file: !632, line: 105, baseType: !1292, size: 64, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma_intra", scope: !1281, file: !632, line: 106, baseType: !1292, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma_intra", scope: !1281, file: !632, line: 107, baseType: !1292, size: 64, offset: 448)
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1305}
!1300 = !DILocalVariable(name: "h", arg: 1, scope: !225, file: !3, line: 93, type: !228)
!1301 = !DILocalVariable(name: "idx", arg: 2, scope: !225, file: !3, line: 93, type: !168)
!1302 = !DILocalVariable(name: "i_qp", arg: 3, scope: !225, file: !3, line: 93, type: !168)
!1303 = !DILocalVariable(name: "p_src", scope: !225, file: !3, line: 95, type: !398)
!1304 = !DILocalVariable(name: "p_dst", scope: !225, file: !3, line: 96, type: !398)
!1305 = !DILocalVariable(name: "dct4x4", scope: !225, file: !3, line: 97, type: !1184, align: 128)
!1306 = !DILocation(line: 0, scope: !225)
!1307 = !DILocation(line: 95, column: 33, scope: !225)
!1308 = !DILocation(line: 95, column: 23, scope: !225)
!1309 = !{!1310, !1310, i64 0}
!1310 = !{!"any pointer", !1311, i64 0}
!1311 = !{!"omnipotent char", !1312, i64 0}
!1312 = !{!"Simple C/C++ TBAA"}
!1313 = !DILocation(line: 95, column: 43, scope: !225)
!1314 = !{!1311, !1311, i64 0}
!1315 = !DILocation(line: 96, column: 33, scope: !225)
!1316 = !DILocation(line: 96, column: 23, scope: !225)
!1317 = !DILocation(line: 96, column: 43, scope: !225)
!1318 = !{!1319, !1319, i64 0}
!1319 = !{!"short", !1311, i64 0}
!1320 = !DILocation(line: 97, column: 5, scope: !225)
!1321 = !DILocation(line: 99, column: 15, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !225, file: !3, line: 99, column: 9)
!1323 = !{!1324, !1326, i64 20532}
!1324 = !{!"x264_t", !1325, i64 0, !1311, i64 616, !1331, i64 1640, !1326, i64 1648, !1326, i64 1652, !1332, i64 1656, !1326, i64 1920, !1326, i64 1924, !1326, i64 1928, !1326, i64 1932, !1326, i64 1936, !1326, i64 1940, !1326, i64 1944, !1326, i64 1948, !1326, i64 1952, !1311, i64 1956, !1310, i64 3200, !1311, i64 3208, !1310, i64 3328, !1326, i64 3336, !1311, i64 3344, !1311, i64 3376, !1311, i64 3392, !1311, i64 3424, !1311, i64 3440, !1311, i64 3472, !1311, i64 3488, !1311, i64 3520, !1310, i64 3536, !1311, i64 3552, !1311, i64 4064, !1311, i64 4320, !1334, i64 4328, !1335, i64 4720, !1336, i64 5232, !1310, i64 9208, !1310, i64 9216, !1326, i64 9224, !1311, i64 9232, !1326, i64 9384, !1311, i64 9392, !1311, i64 9544, !1337, i64 9552, !1338, i64 10880, !1310, i64 20896, !1341, i64 20904, !1311, i64 23896, !1311, i64 23952, !1311, i64 24008, !1311, i64 24104, !1344, i64 24200, !1345, i64 25200, !1346, i64 25424, !1347, i64 25520, !1348, i64 25560, !1349, i64 25696}
!1325 = !{!"x264_param_t", !1326, i64 0, !1326, i64 4, !1326, i64 8, !1326, i64 12, !1326, i64 16, !1326, i64 20, !1326, i64 24, !1326, i64 28, !1327, i64 32, !1326, i64 68, !1326, i64 72, !1326, i64 76, !1326, i64 80, !1326, i64 84, !1326, i64 88, !1326, i64 92, !1326, i64 96, !1326, i64 100, !1326, i64 104, !1326, i64 108, !1326, i64 112, !1326, i64 116, !1326, i64 120, !1326, i64 124, !1326, i64 128, !1326, i64 132, !1326, i64 136, !1310, i64 144, !1311, i64 152, !1311, i64 168, !1311, i64 184, !1311, i64 200, !1311, i64 216, !1311, i64 280, !1310, i64 344, !1310, i64 352, !1326, i64 360, !1326, i64 364, !1310, i64 368, !1328, i64 376, !1330, i64 472, !1326, i64 600, !1326, i64 604, !1326, i64 608}
!1326 = !{!"int", !1311, i64 0}
!1327 = !{!"", !1326, i64 0, !1326, i64 4, !1326, i64 8, !1326, i64 12, !1326, i64 16, !1326, i64 20, !1326, i64 24, !1326, i64 28, !1326, i64 32}
!1328 = !{!"", !1326, i64 0, !1326, i64 4, !1326, i64 8, !1326, i64 12, !1326, i64 16, !1326, i64 20, !1326, i64 24, !1326, i64 28, !1326, i64 32, !1326, i64 36, !1326, i64 40, !1326, i64 44, !1326, i64 48, !1326, i64 52, !1326, i64 56, !1326, i64 60, !1326, i64 64, !1326, i64 68, !1329, i64 72, !1329, i64 76, !1311, i64 80, !1326, i64 88, !1326, i64 92}
!1329 = !{!"float", !1311, i64 0}
!1330 = !{!"", !1326, i64 0, !1326, i64 4, !1326, i64 8, !1326, i64 12, !1326, i64 16, !1326, i64 20, !1329, i64 24, !1329, i64 28, !1326, i64 32, !1326, i64 36, !1329, i64 40, !1329, i64 44, !1329, i64 48, !1326, i64 52, !1329, i64 56, !1326, i64 60, !1310, i64 64, !1326, i64 72, !1310, i64 80, !1329, i64 88, !1329, i64 92, !1329, i64 96, !1310, i64 104, !1326, i64 112, !1310, i64 120}
!1331 = !{!"long", !1311, i64 0}
!1332 = !{!"", !1326, i64 0, !1311, i64 8, !1326, i64 200, !1310, i64 208, !1333, i64 216, !1326, i64 256}
!1333 = !{!"bs_s", !1310, i64 0, !1310, i64 8, !1310, i64 16, !1331, i64 24, !1326, i64 32, !1326, i64 36}
!1334 = !{!"", !1310, i64 0, !1310, i64 8, !1326, i64 16, !1326, i64 20, !1326, i64 24, !1326, i64 28, !1326, i64 32, !1326, i64 36, !1326, i64 40, !1326, i64 44, !1326, i64 48, !1326, i64 52, !1326, i64 56, !1311, i64 60, !1326, i64 68, !1326, i64 72, !1326, i64 76, !1326, i64 80, !1326, i64 84, !1326, i64 88, !1326, i64 92, !1311, i64 96, !1326, i64 352, !1326, i64 356, !1326, i64 360, !1326, i64 364, !1326, i64 368, !1326, i64 372, !1326, i64 376, !1326, i64 380}
!1335 = !{!"", !1326, i64 0, !1326, i64 4, !1326, i64 8, !1326, i64 12, !1310, i64 16, !1310, i64 24, !1310, i64 32, !1326, i64 48, !1311, i64 52}
!1336 = !{!"", !1311, i64 0, !1311, i64 536, !1311, i64 1072, !1310, i64 3792, !1311, i64 3800, !1326, i64 3944, !1326, i64 3948, !1326, i64 3952, !1326, i64 3956, !1326, i64 3960, !1326, i64 3964, !1326, i64 3968}
!1337 = !{!"", !1311, i64 0, !1311, i64 32, !1311, i64 48, !1311, i64 560}
!1338 = !{!"", !1326, i64 0, !1326, i64 4, !1326, i64 8, !1326, i64 12, !1326, i64 16, !1326, i64 20, !1326, i64 24, !1326, i64 28, !1326, i64 32, !1326, i64 36, !1326, i64 40, !1326, i64 44, !1326, i64 48, !1326, i64 52, !1326, i64 56, !1326, i64 60, !1326, i64 64, !1311, i64 68, !1311, i64 76, !1311, i64 84, !1311, i64 92, !1311, i64 100, !1311, i64 108, !1326, i64 116, !1311, i64 120, !1311, i64 136, !1326, i64 200, !1326, i64 204, !1326, i64 208, !1326, i64 212, !1326, i64 216, !1326, i64 220, !1310, i64 224, !1310, i64 232, !1310, i64 240, !1310, i64 248, !1310, i64 256, !1310, i64 264, !1311, i64 272, !1311, i64 288, !1311, i64 304, !1311, i64 320, !1310, i64 832, !1310, i64 840, !1311, i64 848, !1310, i64 896, !1326, i64 904, !1326, i64 908, !1311, i64 912, !1326, i64 928, !1326, i64 932, !1326, i64 936, !1326, i64 940, !1326, i64 944, !1326, i64 948, !1326, i64 952, !1339, i64 960, !1340, i64 8128, !1326, i64 9632, !1326, i64 9636, !1326, i64 9640, !1326, i64 9644, !1326, i64 9648, !1326, i64 9652, !1326, i64 9656, !1326, i64 9660, !1311, i64 9664, !1311, i64 9728, !1311, i64 9984, !1311, i64 9986}
!1339 = !{!"", !1311, i64 0, !1311, i64 384, !1311, i64 1248, !1311, i64 1504, !1311, i64 1760, !1311, i64 2144, !1311, i64 2624, !1311, i64 3136, !1311, i64 3648, !1326, i64 3712, !1311, i64 3716, !1326, i64 3732, !1311, i64 3736, !1311, i64 3760, !1311, i64 3784, !1311, i64 3808, !1311, i64 3816, !1311, i64 6888, !1311, i64 7144}
!1340 = !{!"", !1311, i64 0, !1311, i64 48, !1311, i64 96, !1311, i64 192, !1311, i64 576, !1311, i64 960, !1311, i64 1008, !1311, i64 1392, !1311, i64 1488, !1326, i64 1492, !1326, i64 1496}
!1341 = !{!"", !1342, i64 0, !1311, i64 488, !1311, i64 512, !1311, i64 552, !1311, i64 592, !1311, i64 664, !1311, i64 704, !1311, i64 744, !1311, i64 784, !1311, i64 824, !1311, i64 864, !1311, i64 904, !1311, i64 1664, !1311, i64 1936, !1311, i64 1952, !1311, i64 2976, !1311, i64 2984}
!1342 = !{!"", !1326, i64 0, !1326, i64 4, !1326, i64 8, !1311, i64 12, !1326, i64 88, !1326, i64 92, !1326, i64 96, !1311, i64 100, !1311, i64 108, !1311, i64 364, !1326, i64 432, !1326, i64 436, !1326, i64 440, !1311, i64 444, !1311, i64 456, !1343, i64 480}
!1343 = !{!"double", !1311, i64 0}
!1344 = !{!"", !1311, i64 0, !1311, i64 56, !1311, i64 112, !1311, i64 168, !1311, i64 224, !1311, i64 256, !1311, i64 312, !1311, i64 368, !1311, i64 424, !1311, i64 480, !1311, i64 536, !1311, i64 592, !1311, i64 624, !1310, i64 656, !1310, i64 664, !1311, i64 672, !1311, i64 728, !1311, i64 784, !1311, i64 840, !1311, i64 896, !1310, i64 952, !1310, i64 960, !1310, i64 968, !1310, i64 976, !1310, i64 984, !1310, i64 992}
!1345 = !{!"", !1310, i64 0, !1310, i64 8, !1310, i64 16, !1311, i64 24, !1311, i64 104, !1310, i64 160, !1310, i64 168, !1310, i64 176, !1310, i64 184, !1310, i64 192, !1310, i64 200, !1310, i64 208, !1310, i64 216}
!1346 = !{!"", !1310, i64 0, !1310, i64 8, !1310, i64 16, !1310, i64 24, !1310, i64 32, !1310, i64 40, !1310, i64 48, !1310, i64 56, !1310, i64 64, !1310, i64 72, !1310, i64 80, !1310, i64 88}
!1347 = !{!"", !1310, i64 0, !1310, i64 8, !1310, i64 16, !1310, i64 24, !1310, i64 32}
!1348 = !{!"", !1310, i64 0, !1310, i64 8, !1310, i64 16, !1310, i64 24, !1310, i64 32, !1310, i64 40, !1310, i64 48, !1310, i64 56, !1310, i64 64, !1310, i64 72, !1310, i64 80, !1311, i64 88}
!1349 = !{!"", !1310, i64 0, !1310, i64 8, !1310, i64 16, !1310, i64 24, !1310, i64 32, !1310, i64 40, !1310, i64 48, !1310, i64 56}
!1350 = !DILocation(line: 99, column: 9, scope: !1322)
!1351 = !DILocation(line: 99, column: 9, scope: !225)
!1352 = !DILocation(line: 101, column: 20, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 100, column: 5)
!1354 = !{!1324, !1310, i64 25544}
!1355 = !DILocation(line: 101, column: 29, scope: !1353)
!1356 = !DILocation(line: 101, column: 9, scope: !1353)
!1357 = !DILocation(line: 102, column: 9, scope: !1353)
!1358 = !DILocation(line: 105, column: 8, scope: !225)
!1359 = !DILocation(line: 105, column: 13, scope: !225)
!1360 = !{!1324, !1310, i64 25424}
!1361 = !DILocation(line: 105, column: 5, scope: !225)
!1362 = !DILocalVariable(name: "h", arg: 1, scope: !1363, file: !3, line: 75, type: !228)
!1363 = distinct !DISubprogram(name: "x264_quant_4x4", scope: !3, file: !3, line: 75, type: !1364, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1366)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !228, !1173, !168, !168, !168, !168}
!1366 = !{!1362, !1367, !1368, !1369, !1370, !1371, !1372}
!1367 = !DILocalVariable(name: "dct", arg: 2, scope: !1363, file: !3, line: 75, type: !1173)
!1368 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1363, file: !3, line: 75, type: !168)
!1369 = !DILocalVariable(name: "i_ctxBlockCat", arg: 4, scope: !1363, file: !3, line: 75, type: !168)
!1370 = !DILocalVariable(name: "b_intra", arg: 5, scope: !1363, file: !3, line: 75, type: !168)
!1371 = !DILocalVariable(name: "idx", arg: 6, scope: !1363, file: !3, line: 75, type: !168)
!1372 = !DILocalVariable(name: "i_quant_cat", scope: !1363, file: !3, line: 77, type: !168)
!1373 = !DILocation(line: 0, scope: !1363, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 107, column: 5, scope: !225)
!1375 = !DILocation(line: 78, column: 15, scope: !1376, inlinedAt: !1374)
!1376 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 78, column: 9)
!1377 = !{!1324, !1326, i64 10928}
!1378 = !DILocation(line: 78, column: 9, scope: !1376, inlinedAt: !1374)
!1379 = !DILocation(line: 78, column: 9, scope: !1363, inlinedAt: !1374)
!1380 = !DILocation(line: 79, column: 9, scope: !1376, inlinedAt: !1374)
!1381 = !DILocation(line: 81, column: 19, scope: !1376, inlinedAt: !1374)
!1382 = !{!1324, !1310, i64 25568}
!1383 = !DILocation(line: 81, column: 35, scope: !1376, inlinedAt: !1374)
!1384 = !DILocation(line: 81, column: 68, scope: !1376, inlinedAt: !1374)
!1385 = !DILocation(line: 81, column: 9, scope: !1376, inlinedAt: !1374)
!1386 = !DILocation(line: 0, scope: !165, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 109, column: 9, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !225, file: !3, line: 109, column: 9)
!1389 = !DILocation(line: 417, column: 19, scope: !1390, inlinedAt: !1401)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !6, line: 416, column: 13)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !6, line: 414, column: 13)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !6, line: 412, column: 8)
!1393 = distinct !DISubprogram(name: "array_non_zero_int_c", scope: !6, file: !6, line: 409, type: !166, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1394)
!1394 = !{!1395, !1396, !1397, !1399}
!1395 = !DILocalVariable(name: "v", arg: 1, scope: !1393, file: !6, line: 409, type: !169)
!1396 = !DILocalVariable(name: "i_count", arg: 2, scope: !1393, file: !6, line: 409, type: !168)
!1397 = !DILocalVariable(name: "x", scope: !1393, file: !6, line: 411, type: !1398)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1399 = !DILocalVariable(name: "i", scope: !1400, file: !6, line: 420, type: !168)
!1400 = distinct !DILexicalBlock(scope: !1390, file: !6, line: 419, column: 5)
!1401 = distinct !DILocation(line: 128, column: 17, scope: !175, inlinedAt: !1387)
!1402 = !{!1331, !1331, i64 0}
!1403 = !DILocation(line: 417, column: 33, scope: !1390, inlinedAt: !1401)
!1404 = !DILocation(line: 417, column: 17, scope: !1390, inlinedAt: !1401)
!1405 = !DILocation(line: 109, column: 9, scope: !225)
!1406 = !DILocation(line: 111, column: 20, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 110, column: 5)
!1408 = !{!1324, !1310, i64 25528}
!1409 = !DILocation(line: 111, column: 30, scope: !1407)
!1410 = !DILocation(line: 111, column: 9, scope: !1407)
!1411 = !DILocation(line: 112, column: 19, scope: !1407)
!1412 = !{!1324, !1310, i64 25600}
!1413 = !DILocation(line: 112, column: 43, scope: !1407)
!1414 = !DILocation(line: 112, column: 40, scope: !1407)
!1415 = !DILocation(line: 112, column: 9, scope: !1407)
!1416 = !DILocation(line: 115, column: 17, scope: !1407)
!1417 = !{!1324, !1310, i64 25432}
!1418 = !DILocation(line: 115, column: 9, scope: !1407)
!1419 = !DILocation(line: 116, column: 5, scope: !1407)
!1420 = !DILocation(line: 118, column: 17, scope: !1388)
!1421 = !DILocation(line: 118, column: 9, scope: !1388)
!1422 = !DILocation(line: 119, column: 1, scope: !225)
!1423 = distinct !DISubprogram(name: "x264_mb_encode_i8x8", scope: !3, file: !3, line: 121, type: !226, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432}
!1425 = !DILocalVariable(name: "h", arg: 1, scope: !1423, file: !3, line: 121, type: !228)
!1426 = !DILocalVariable(name: "idx", arg: 2, scope: !1423, file: !3, line: 121, type: !168)
!1427 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1423, file: !3, line: 121, type: !168)
!1428 = !DILocalVariable(name: "x", scope: !1423, file: !3, line: 123, type: !168)
!1429 = !DILocalVariable(name: "y", scope: !1423, file: !3, line: 124, type: !168)
!1430 = !DILocalVariable(name: "p_src", scope: !1423, file: !3, line: 125, type: !398)
!1431 = !DILocalVariable(name: "p_dst", scope: !1423, file: !3, line: 126, type: !398)
!1432 = !DILocalVariable(name: "dct8x8", scope: !1423, file: !3, line: 127, type: !1206, align: 128)
!1433 = !DILocation(line: 0, scope: !1423)
!1434 = !DILocation(line: 123, column: 15, scope: !1423)
!1435 = !DILocation(line: 124, column: 15, scope: !1423)
!1436 = !DILocation(line: 125, column: 33, scope: !1423)
!1437 = !DILocation(line: 125, column: 23, scope: !1423)
!1438 = !DILocation(line: 125, column: 46, scope: !1423)
!1439 = !DILocation(line: 125, column: 44, scope: !1423)
!1440 = !DILocation(line: 126, column: 33, scope: !1423)
!1441 = !DILocation(line: 126, column: 23, scope: !1423)
!1442 = !DILocation(line: 126, column: 46, scope: !1423)
!1443 = !DILocation(line: 126, column: 44, scope: !1423)
!1444 = !DILocation(line: 127, column: 5, scope: !1423)
!1445 = !DILocation(line: 129, column: 15, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 129, column: 9)
!1447 = !DILocation(line: 129, column: 9, scope: !1446)
!1448 = !DILocation(line: 129, column: 9, scope: !1423)
!1449 = !DILocation(line: 131, column: 20, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 130, column: 5)
!1451 = !{!1324, !1310, i64 25536}
!1452 = !DILocation(line: 131, column: 29, scope: !1450)
!1453 = !DILocation(line: 131, column: 9, scope: !1450)
!1454 = !DILocation(line: 132, column: 9, scope: !1450)
!1455 = !DILocation(line: 135, column: 13, scope: !1423)
!1456 = !{!1324, !1310, i64 25472}
!1457 = !DILocation(line: 135, column: 5, scope: !1423)
!1458 = !DILocalVariable(name: "h", arg: 1, scope: !1459, file: !3, line: 84, type: !228)
!1459 = distinct !DISubprogram(name: "x264_quant_8x8", scope: !3, file: !3, line: 84, type: !1460, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1462)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !228, !1195, !168, !168, !168}
!1462 = !{!1458, !1463, !1464, !1465, !1466, !1467}
!1463 = !DILocalVariable(name: "dct", arg: 2, scope: !1459, file: !3, line: 84, type: !1195)
!1464 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1459, file: !3, line: 84, type: !168)
!1465 = !DILocalVariable(name: "b_intra", arg: 4, scope: !1459, file: !3, line: 84, type: !168)
!1466 = !DILocalVariable(name: "idx", arg: 5, scope: !1459, file: !3, line: 84, type: !168)
!1467 = !DILocalVariable(name: "i_quant_cat", scope: !1459, file: !3, line: 86, type: !168)
!1468 = !DILocation(line: 0, scope: !1459, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 137, column: 5, scope: !1423)
!1470 = !DILocation(line: 87, column: 15, scope: !1471, inlinedAt: !1469)
!1471 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 87, column: 9)
!1472 = !DILocation(line: 87, column: 9, scope: !1471, inlinedAt: !1469)
!1473 = !DILocation(line: 87, column: 9, scope: !1459, inlinedAt: !1469)
!1474 = !DILocation(line: 88, column: 9, scope: !1471, inlinedAt: !1469)
!1475 = !DILocation(line: 90, column: 12, scope: !1471, inlinedAt: !1469)
!1476 = !DILocation(line: 90, column: 19, scope: !1471, inlinedAt: !1469)
!1477 = !{!1324, !1310, i64 25560}
!1478 = !DILocation(line: 90, column: 35, scope: !1471, inlinedAt: !1469)
!1479 = !DILocation(line: 90, column: 68, scope: !1471, inlinedAt: !1469)
!1480 = !DILocation(line: 90, column: 9, scope: !1471, inlinedAt: !1469)
!1481 = !DILocation(line: 139, column: 8, scope: !1423)
!1482 = !DILocation(line: 139, column: 16, scope: !1423)
!1483 = !{!1324, !1310, i64 25520}
!1484 = !DILocation(line: 139, column: 26, scope: !1423)
!1485 = !DILocation(line: 139, column: 5, scope: !1423)
!1486 = !DILocation(line: 140, column: 15, scope: !1423)
!1487 = !{!1324, !1310, i64 25592}
!1488 = !DILocation(line: 140, column: 39, scope: !1423)
!1489 = !DILocation(line: 140, column: 36, scope: !1423)
!1490 = !DILocation(line: 140, column: 5, scope: !1423)
!1491 = !DILocation(line: 141, column: 13, scope: !1423)
!1492 = !{!1324, !1310, i64 25480}
!1493 = !DILocation(line: 141, column: 5, scope: !1423)
!1494 = !DILocation(line: 142, column: 1, scope: !1423)
!1495 = distinct !DISubprogram(name: "x264_mb_encode_8x8_chroma", scope: !3, file: !3, line: 203, type: !226, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1502, !1503, !1507, !1508, !1509, !1511, !1514, !1520, !1521}
!1497 = !DILocalVariable(name: "h", arg: 1, scope: !1495, file: !3, line: 203, type: !228)
!1498 = !DILocalVariable(name: "b_inter", arg: 2, scope: !1495, file: !3, line: 203, type: !168)
!1499 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1495, file: !3, line: 203, type: !168)
!1500 = !DILocalVariable(name: "i", scope: !1495, file: !3, line: 205, type: !168)
!1501 = !DILocalVariable(name: "ch", scope: !1495, file: !3, line: 205, type: !168)
!1502 = !DILocalVariable(name: "b_decimate", scope: !1495, file: !3, line: 206, type: !168)
!1503 = !DILocalVariable(name: "p_src", scope: !1504, file: !3, line: 210, type: !398)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 209, column: 5)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 208, column: 5)
!1506 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 208, column: 5)
!1507 = !DILocalVariable(name: "p_dst", scope: !1504, file: !3, line: 211, type: !398)
!1508 = !DILocalVariable(name: "i_decimate_score", scope: !1504, file: !3, line: 212, type: !168)
!1509 = !DILocalVariable(name: "dct2x2", scope: !1504, file: !3, line: 214, type: !1510, align: 128)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 64, elements: !911)
!1511 = !DILocalVariable(name: "dct4x4", scope: !1504, file: !3, line: 215, type: !1512, align: 128)
!1512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 1024, elements: !1513)
!1513 = !{!535, !535, !535}
!1514 = !DILocalVariable(name: "oe", scope: !1515, file: !3, line: 221, type: !168)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 220, column: 13)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 219, column: 13)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 219, column: 13)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 218, column: 9)
!1519 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 217, column: 13)
!1520 = !DILocalVariable(name: "od", scope: !1515, file: !3, line: 222, type: !168)
!1521 = !DILocalVariable(name: "nz", scope: !1522, file: !3, line: 276, type: !168)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 275, column: 5)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 274, column: 5)
!1524 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 274, column: 5)
!1525 = !DILocation(line: 0, scope: !1495)
!1526 = !DILocation(line: 206, column: 22, scope: !1495)
!1527 = !DILocation(line: 206, column: 30, scope: !1495)
!1528 = !DILocation(line: 206, column: 40, scope: !1495)
!1529 = !{!1324, !1326, i64 4344}
!1530 = !DILocation(line: 206, column: 47, scope: !1495)
!1531 = !DILocation(line: 206, column: 63, scope: !1495)
!1532 = !DILocation(line: 206, column: 83, scope: !1495)
!1533 = !{!1324, !1326, i64 440}
!1534 = !DILocation(line: 208, column: 5, scope: !1506)
!1535 = !DILocation(line: 210, column: 45, scope: !1504)
!1536 = !DILocation(line: 210, column: 27, scope: !1504)
!1537 = !DILocation(line: 0, scope: !1504)
!1538 = !DILocation(line: 211, column: 27, scope: !1504)
!1539 = !DILocation(line: 214, column: 9, scope: !1504)
!1540 = !DILocation(line: 215, column: 9, scope: !1504)
!1541 = !DILocation(line: 217, column: 19, scope: !1519)
!1542 = !DILocation(line: 217, column: 13, scope: !1519)
!1543 = !DILocation(line: 217, column: 13, scope: !1504)
!1544 = !DILocation(line: 0, scope: !1515)
!1545 = !DILocation(line: 223, column: 28, scope: !1515)
!1546 = !DILocation(line: 223, column: 37, scope: !1515)
!1547 = !DILocation(line: 223, column: 17, scope: !1515)
!1548 = !DILocation(line: 224, column: 43, scope: !1515)
!1549 = !DILocation(line: 224, column: 17, scope: !1515)
!1550 = !DILocation(line: 224, column: 41, scope: !1515)
!1551 = !DILocation(line: 225, column: 46, scope: !1515)
!1552 = !DILocation(line: 223, column: 56, scope: !1515)
!1553 = !DILocation(line: 223, column: 69, scope: !1515)
!1554 = !DILocation(line: 223, column: 79, scope: !1515)
!1555 = !DILocation(line: 270, column: 5, scope: !1505)
!1556 = !DILocation(line: 230, column: 17, scope: !1504)
!1557 = !{!1324, !1310, i64 25440}
!1558 = !DILocation(line: 230, column: 9, scope: !1504)
!1559 = !DILocalVariable(name: "d", arg: 1, scope: !1560, file: !3, line: 59, type: !671)
!1560 = distinct !DISubprogram(name: "dct2x2dc", scope: !3, file: !3, line: 59, type: !1561, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !671, !1183}
!1563 = !{!1559, !1564, !1565, !1566, !1567, !1568}
!1564 = !DILocalVariable(name: "dct4x4", arg: 2, scope: !1560, file: !3, line: 59, type: !1183)
!1565 = !DILocalVariable(name: "d0", scope: !1560, file: !3, line: 61, type: !168)
!1566 = !DILocalVariable(name: "d1", scope: !1560, file: !3, line: 62, type: !168)
!1567 = !DILocalVariable(name: "d2", scope: !1560, file: !3, line: 63, type: !168)
!1568 = !DILocalVariable(name: "d3", scope: !1560, file: !3, line: 64, type: !168)
!1569 = !DILocation(line: 0, scope: !1560, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 231, column: 9, scope: !1504)
!1571 = !DILocation(line: 61, column: 14, scope: !1560, inlinedAt: !1570)
!1572 = !DILocation(line: 61, column: 32, scope: !1560, inlinedAt: !1570)
!1573 = !DILocation(line: 61, column: 30, scope: !1560, inlinedAt: !1570)
!1574 = !DILocation(line: 62, column: 14, scope: !1560, inlinedAt: !1570)
!1575 = !DILocation(line: 62, column: 32, scope: !1560, inlinedAt: !1570)
!1576 = !DILocation(line: 62, column: 30, scope: !1560, inlinedAt: !1570)
!1577 = !DILocation(line: 63, column: 30, scope: !1560, inlinedAt: !1570)
!1578 = !DILocation(line: 64, column: 30, scope: !1560, inlinedAt: !1570)
!1579 = !DILocation(line: 65, column: 18, scope: !1560, inlinedAt: !1570)
!1580 = !DILocation(line: 65, column: 15, scope: !1560, inlinedAt: !1570)
!1581 = !DILocation(line: 65, column: 13, scope: !1560, inlinedAt: !1570)
!1582 = !DILocation(line: 66, column: 18, scope: !1560, inlinedAt: !1570)
!1583 = !DILocation(line: 66, column: 15, scope: !1560, inlinedAt: !1570)
!1584 = !DILocation(line: 66, column: 13, scope: !1560, inlinedAt: !1570)
!1585 = !DILocation(line: 67, column: 18, scope: !1560, inlinedAt: !1570)
!1586 = !DILocation(line: 67, column: 15, scope: !1560, inlinedAt: !1570)
!1587 = !DILocation(line: 67, column: 13, scope: !1560, inlinedAt: !1570)
!1588 = !DILocation(line: 68, column: 18, scope: !1560, inlinedAt: !1570)
!1589 = !DILocation(line: 68, column: 15, scope: !1560, inlinedAt: !1570)
!1590 = !DILocation(line: 68, column: 13, scope: !1560, inlinedAt: !1570)
!1591 = !DILocation(line: 69, column: 21, scope: !1560, inlinedAt: !1570)
!1592 = !DILocation(line: 70, column: 21, scope: !1560, inlinedAt: !1570)
!1593 = !DILocation(line: 71, column: 21, scope: !1560, inlinedAt: !1570)
!1594 = !DILocation(line: 72, column: 21, scope: !1560, inlinedAt: !1570)
!1595 = !DILocation(line: 235, column: 23, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 235, column: 17)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 234, column: 9)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 233, column: 9)
!1599 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 233, column: 9)
!1600 = !DILocation(line: 235, column: 17, scope: !1596)
!1601 = !DILocation(line: 235, column: 17, scope: !1597)
!1602 = !DILocation(line: 236, column: 17, scope: !1596)
!1603 = !DILocation(line: 238, column: 27, scope: !1596)
!1604 = !DILocation(line: 238, column: 49, scope: !1596)
!1605 = !DILocation(line: 238, column: 86, scope: !1596)
!1606 = !DILocation(line: 238, column: 17, scope: !1596)
!1607 = !DILocation(line: 239, column: 24, scope: !1597)
!1608 = !DILocation(line: 239, column: 34, scope: !1597)
!1609 = !DILocation(line: 239, column: 13, scope: !1597)
!1610 = !DILocation(line: 241, column: 17, scope: !1597)
!1611 = !DILocation(line: 242, column: 47, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 241, column: 17)
!1613 = !{!1324, !1310, i64 25624}
!1614 = !DILocation(line: 242, column: 37, scope: !1612)
!1615 = !DILocation(line: 242, column: 17, scope: !1612)
!1616 = !DILocation(line: 239, column: 53, scope: !1597)
!1617 = !DILocation(line: 242, column: 34, scope: !1612)
!1618 = !DILocation(line: 245, column: 19, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 245, column: 13)
!1620 = !DILocation(line: 245, column: 13, scope: !1619)
!1621 = !DILocation(line: 245, column: 13, scope: !1504)
!1622 = !DILocation(line: 246, column: 13, scope: !1619)
!1623 = !DILocation(line: 248, column: 23, scope: !1619)
!1624 = !{!1324, !1310, i64 25584}
!1625 = !DILocation(line: 248, column: 45, scope: !1619)
!1626 = !DILocation(line: 248, column: 88, scope: !1619)
!1627 = !DILocation(line: 248, column: 128, scope: !1619)
!1628 = !DILocation(line: 248, column: 13, scope: !1619)
!1629 = !DILocation(line: 250, column: 24, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 250, column: 13)
!1631 = !DILocation(line: 264, column: 27, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 263, column: 13)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 263, column: 13)
!1634 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 262, column: 9)
!1635 = !DILocation(line: 264, column: 51, scope: !1632)
!1636 = !DILocation(line: 264, column: 17, scope: !1632)
!1637 = !DILocation(line: 33, column: 5, scope: !1638, inlinedAt: !1644)
!1638 = distinct !DISubprogram(name: "zigzag_scan_2x2_dc", scope: !3, file: !3, line: 31, type: !1639, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{null, !145, !671}
!1641 = !{!1642, !1643}
!1642 = !DILocalVariable(name: "level", arg: 1, scope: !1638, file: !3, line: 31, type: !145)
!1643 = !DILocalVariable(name: "dct", arg: 2, scope: !1638, file: !3, line: 31, type: !671)
!1644 = distinct !DILocation(line: 267, column: 9, scope: !1504)
!1645 = !DILocation(line: 34, column: 5, scope: !1638, inlinedAt: !1644)
!1646 = !DILocation(line: 35, column: 5, scope: !1638, inlinedAt: !1644)
!1647 = !DILocation(line: 36, column: 5, scope: !1638, inlinedAt: !1644)
!1648 = !DILocation(line: 253, column: 13, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 251, column: 9)
!1650 = !DILocation(line: 0, scope: !165, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 254, column: 18, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 254, column: 17)
!1653 = !DILocation(line: 413, column: 18, scope: !1392, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 128, column: 17, scope: !175, inlinedAt: !1651)
!1655 = !DILocation(line: 413, column: 17, scope: !1392, inlinedAt: !1654)
!1656 = !DILocation(line: 254, column: 17, scope: !1649)
!1657 = !DILocation(line: 256, column: 25, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 255, column: 13)
!1659 = !DILocation(line: 256, column: 17, scope: !1658)
!1660 = !DILocation(line: 257, column: 17, scope: !1658)
!1661 = !DILocation(line: 259, column: 13, scope: !1649)
!1662 = !DILocation(line: 260, column: 9, scope: !1649)
!1663 = !DILocation(line: 267, column: 29, scope: !1504)
!1664 = !DILocation(line: 0, scope: !1638, inlinedAt: !1644)
!1665 = !DILocation(line: 268, column: 46, scope: !1504)
!1666 = !DILocalVariable(name: "dct", arg: 1, scope: !1667, file: !3, line: 40, type: !671)
!1667 = distinct !DISubprogram(name: "idct_dequant_2x2_dc", scope: !3, file: !3, line: 40, type: !1668, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1670)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{null, !671, !1183, !532, !168}
!1670 = !{!1666, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679}
!1671 = !DILocalVariable(name: "dct4x4", arg: 2, scope: !1667, file: !3, line: 40, type: !1183)
!1672 = !DILocalVariable(name: "dequant_mf", arg: 3, scope: !1667, file: !3, line: 40, type: !532)
!1673 = !DILocalVariable(name: "i_qp", arg: 4, scope: !1667, file: !3, line: 40, type: !168)
!1674 = !DILocalVariable(name: "d0", scope: !1667, file: !3, line: 42, type: !168)
!1675 = !DILocalVariable(name: "d1", scope: !1667, file: !3, line: 43, type: !168)
!1676 = !DILocalVariable(name: "d2", scope: !1667, file: !3, line: 44, type: !168)
!1677 = !DILocalVariable(name: "d3", scope: !1667, file: !3, line: 45, type: !168)
!1678 = !DILocalVariable(name: "dmf", scope: !1667, file: !3, line: 46, type: !168)
!1679 = !DILocalVariable(name: "qbits", scope: !1667, file: !3, line: 47, type: !168)
!1680 = !DILocation(line: 0, scope: !1667, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 268, column: 9, scope: !1504)
!1682 = !DILocation(line: 46, column: 15, scope: !1667, inlinedAt: !1681)
!1683 = !{!1326, !1326, i64 0}
!1684 = !DILocation(line: 48, column: 9, scope: !1667, inlinedAt: !1681)
!1685 = !DILocation(line: 43, column: 14, scope: !1667, inlinedAt: !1681)
!1686 = !DILocation(line: 43, column: 26, scope: !1667, inlinedAt: !1681)
!1687 = !DILocation(line: 45, column: 24, scope: !1667, inlinedAt: !1681)
!1688 = !DILocation(line: 42, column: 14, scope: !1667, inlinedAt: !1681)
!1689 = !DILocation(line: 42, column: 26, scope: !1667, inlinedAt: !1681)
!1690 = !DILocation(line: 44, column: 24, scope: !1667, inlinedAt: !1681)
!1691 = !DILocation(line: 43, column: 24, scope: !1667, inlinedAt: !1681)
!1692 = !DILocation(line: 42, column: 24, scope: !1667, inlinedAt: !1681)
!1693 = !DILocation(line: 53, column: 27, scope: !1667, inlinedAt: !1681)
!1694 = !DILocation(line: 53, column: 33, scope: !1667, inlinedAt: !1681)
!1695 = !DILocation(line: 53, column: 39, scope: !1667, inlinedAt: !1681)
!1696 = !DILocation(line: 53, column: 23, scope: !1667, inlinedAt: !1681)
!1697 = !DILocation(line: 53, column: 21, scope: !1667, inlinedAt: !1681)
!1698 = !DILocation(line: 54, column: 27, scope: !1667, inlinedAt: !1681)
!1699 = !DILocation(line: 54, column: 33, scope: !1667, inlinedAt: !1681)
!1700 = !DILocation(line: 54, column: 39, scope: !1667, inlinedAt: !1681)
!1701 = !DILocation(line: 54, column: 23, scope: !1667, inlinedAt: !1681)
!1702 = !DILocation(line: 54, column: 21, scope: !1667, inlinedAt: !1681)
!1703 = !DILocation(line: 55, column: 27, scope: !1667, inlinedAt: !1681)
!1704 = !DILocation(line: 55, column: 33, scope: !1667, inlinedAt: !1681)
!1705 = !DILocation(line: 55, column: 39, scope: !1667, inlinedAt: !1681)
!1706 = !DILocation(line: 55, column: 23, scope: !1667, inlinedAt: !1681)
!1707 = !DILocation(line: 55, column: 21, scope: !1667, inlinedAt: !1681)
!1708 = !DILocation(line: 56, column: 27, scope: !1667, inlinedAt: !1681)
!1709 = !DILocation(line: 56, column: 33, scope: !1667, inlinedAt: !1681)
!1710 = !DILocation(line: 56, column: 39, scope: !1667, inlinedAt: !1681)
!1711 = !DILocation(line: 56, column: 23, scope: !1667, inlinedAt: !1681)
!1712 = !DILocation(line: 56, column: 21, scope: !1667, inlinedAt: !1681)
!1713 = !DILocation(line: 269, column: 17, scope: !1504)
!1714 = !{!1324, !1310, i64 25448}
!1715 = !DILocation(line: 269, column: 9, scope: !1504)
!1716 = distinct !{!1716, !1534, !1717, !1718}
!1717 = !DILocation(line: 270, column: 5, scope: !1506)
!1718 = !{!"llvm.loop.mustprogress"}
!1719 = !DILocation(line: 273, column: 11, scope: !1495)
!1720 = !DILocation(line: 276, column: 18, scope: !1522)
!1721 = !DILocation(line: 0, scope: !165, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 276, column: 18, scope: !1522)
!1723 = !DILocation(line: 417, column: 19, scope: !1390, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 128, column: 17, scope: !175, inlinedAt: !1722)
!1725 = !DILocation(line: 417, column: 33, scope: !1390, inlinedAt: !1724)
!1726 = !DILocation(line: 417, column: 17, scope: !1390, inlinedAt: !1724)
!1727 = !DILocation(line: 0, scope: !1522)
!1728 = !DILocation(line: 277, column: 56, scope: !1522)
!1729 = !DILocation(line: 277, column: 9, scope: !1522)
!1730 = !DILocation(line: 277, column: 54, scope: !1522)
!1731 = !DILocation(line: 278, column: 28, scope: !1522)
!1732 = !{!1324, !1326, i64 11816}
!1733 = !DILocation(line: 280, column: 50, scope: !1495)
!1734 = !DILocation(line: 0, scope: !165, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 280, column: 50, scope: !1495)
!1736 = !DILocation(line: 413, column: 18, scope: !1392, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 128, column: 17, scope: !175, inlinedAt: !1735)
!1738 = !DILocation(line: 413, column: 17, scope: !1392, inlinedAt: !1737)
!1739 = !DILocation(line: 280, column: 5, scope: !1495)
!1740 = !DILocation(line: 280, column: 48, scope: !1495)
!1741 = !DILocation(line: 281, column: 50, scope: !1495)
!1742 = !DILocation(line: 0, scope: !165, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 281, column: 50, scope: !1495)
!1744 = !DILocation(line: 413, column: 18, scope: !1392, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 128, column: 17, scope: !175, inlinedAt: !1743)
!1746 = !DILocation(line: 413, column: 17, scope: !1392, inlinedAt: !1745)
!1747 = !DILocation(line: 281, column: 5, scope: !1495)
!1748 = !DILocation(line: 281, column: 48, scope: !1495)
!1749 = !DILocation(line: 282, column: 9, scope: !1495)
!1750 = !DILocation(line: 284, column: 57, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 284, column: 14)
!1752 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 282, column: 9)
!1753 = !DILocation(line: 284, column: 14, scope: !1752)
!1754 = !DILocation(line: 0, scope: !1752)
!1755 = !DILocation(line: 287, column: 1, scope: !1495)
!1756 = !DISubprogram(name: "x264_quant_4x4_trellis", scope: !1757, file: !1757, line: 60, type: !1758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1760)
!1757 = !DIFile(filename: "encoder/macroblock.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "b95d2162aa3e341bcf44e69f8b376186")
!1758 = !DISubroutineType(types: !1759)
!1759 = !{null, !228, !1173, !168, !168, !168, !168, !168}
!1760 = !{}
!1761 = !DISubprogram(name: "x264_quant_dc_trellis", scope: !1757, file: !1757, line: 58, type: !1762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1760)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !228, !145, !168, !168, !168, !168}
!1764 = distinct !DISubprogram(name: "x264_predict_lossless_8x8_chroma", scope: !3, file: !3, line: 339, type: !1765, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1767)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{null, !228, !168}
!1767 = !{!1768, !1769, !1770}
!1768 = !DILocalVariable(name: "h", arg: 1, scope: !1764, file: !3, line: 339, type: !228)
!1769 = !DILocalVariable(name: "i_mode", arg: 2, scope: !1764, file: !3, line: 339, type: !168)
!1770 = !DILocalVariable(name: "stride", scope: !1764, file: !3, line: 341, type: !168)
!1771 = !DILocation(line: 0, scope: !1764)
!1772 = !DILocation(line: 341, column: 21, scope: !1764)
!1773 = !{!1324, !1310, i64 9208}
!1774 = !DILocation(line: 341, column: 18, scope: !1764)
!1775 = !DILocation(line: 341, column: 48, scope: !1764)
!1776 = !{!1324, !1326, i64 10944}
!1777 = !DILocation(line: 341, column: 39, scope: !1764)
!1778 = !DILocation(line: 342, column: 9, scope: !1764)
!1779 = !DILocation(line: 344, column: 9, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 343, column: 5)
!1781 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 342, column: 9)
!1782 = !DILocation(line: 344, column: 32, scope: !1780)
!1783 = !DILocation(line: 344, column: 66, scope: !1780)
!1784 = !DILocation(line: 344, column: 91, scope: !1780)
!1785 = !DILocation(line: 345, column: 9, scope: !1780)
!1786 = !DILocation(line: 345, column: 32, scope: !1780)
!1787 = !DILocation(line: 345, column: 66, scope: !1780)
!1788 = !DILocation(line: 345, column: 91, scope: !1780)
!1789 = !DILocation(line: 346, column: 5, scope: !1780)
!1790 = !DILocation(line: 349, column: 9, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 348, column: 5)
!1792 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 347, column: 14)
!1793 = !DILocation(line: 349, column: 32, scope: !1791)
!1794 = !DILocation(line: 349, column: 66, scope: !1791)
!1795 = !DILocation(line: 349, column: 91, scope: !1791)
!1796 = !DILocation(line: 350, column: 9, scope: !1791)
!1797 = !DILocation(line: 350, column: 32, scope: !1791)
!1798 = !DILocation(line: 350, column: 66, scope: !1791)
!1799 = !DILocation(line: 350, column: 91, scope: !1791)
!1800 = !DILocation(line: 351, column: 5, scope: !1791)
!1801 = !DILocation(line: 354, column: 9, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 353, column: 5)
!1803 = !DILocation(line: 354, column: 34, scope: !1802)
!1804 = !DILocation(line: 355, column: 9, scope: !1802)
!1805 = !DILocation(line: 355, column: 34, scope: !1802)
!1806 = !DILocation(line: 357, column: 1, scope: !1764)
!1807 = distinct !DISubprogram(name: "x264_predict_lossless_4x4", scope: !3, file: !3, line: 359, type: !1808, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1810)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{null, !228, !398, !168, !168}
!1810 = !{!1811, !1812, !1813, !1814, !1815, !1816}
!1811 = !DILocalVariable(name: "h", arg: 1, scope: !1807, file: !3, line: 359, type: !228)
!1812 = !DILocalVariable(name: "p_dst", arg: 2, scope: !1807, file: !3, line: 359, type: !398)
!1813 = !DILocalVariable(name: "idx", arg: 3, scope: !1807, file: !3, line: 359, type: !168)
!1814 = !DILocalVariable(name: "i_mode", arg: 4, scope: !1807, file: !3, line: 359, type: !168)
!1815 = !DILocalVariable(name: "stride", scope: !1807, file: !3, line: 361, type: !168)
!1816 = !DILocalVariable(name: "p_src", scope: !1807, file: !3, line: 362, type: !398)
!1817 = !DILocation(line: 0, scope: !1807)
!1818 = !DILocation(line: 361, column: 21, scope: !1807)
!1819 = !DILocation(line: 361, column: 27, scope: !1807)
!1820 = !DILocation(line: 361, column: 18, scope: !1807)
!1821 = !DILocation(line: 361, column: 48, scope: !1807)
!1822 = !DILocation(line: 361, column: 39, scope: !1807)
!1823 = !DILocation(line: 362, column: 32, scope: !1807)
!1824 = !DILocation(line: 362, column: 22, scope: !1807)
!1825 = !DILocation(line: 362, column: 50, scope: !1807)
!1826 = !DILocation(line: 362, column: 66, scope: !1807)
!1827 = !DILocation(line: 362, column: 48, scope: !1807)
!1828 = !DILocation(line: 362, column: 71, scope: !1807)
!1829 = !DILocation(line: 362, column: 87, scope: !1807)
!1830 = !DILocation(line: 362, column: 90, scope: !1807)
!1831 = !DILocation(line: 362, column: 69, scope: !1807)
!1832 = !DILocation(line: 364, column: 9, scope: !1807)
!1833 = !DILocation(line: 365, column: 9, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 364, column: 9)
!1835 = !DILocation(line: 365, column: 57, scope: !1834)
!1836 = !DILocation(line: 367, column: 9, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 366, column: 14)
!1838 = !DILocation(line: 367, column: 57, scope: !1837)
!1839 = !DILocation(line: 369, column: 9, scope: !1837)
!1840 = !DILocation(line: 370, column: 1, scope: !1807)
!1841 = distinct !DISubprogram(name: "x264_predict_lossless_8x8", scope: !3, file: !3, line: 372, type: !1842, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1844)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !228, !398, !168, !168, !398}
!1844 = !{!1845, !1846, !1847, !1848, !1849, !1850, !1851}
!1845 = !DILocalVariable(name: "h", arg: 1, scope: !1841, file: !3, line: 372, type: !228)
!1846 = !DILocalVariable(name: "p_dst", arg: 2, scope: !1841, file: !3, line: 372, type: !398)
!1847 = !DILocalVariable(name: "idx", arg: 3, scope: !1841, file: !3, line: 372, type: !168)
!1848 = !DILocalVariable(name: "i_mode", arg: 4, scope: !1841, file: !3, line: 372, type: !168)
!1849 = !DILocalVariable(name: "edge", arg: 5, scope: !1841, file: !3, line: 372, type: !398)
!1850 = !DILocalVariable(name: "stride", scope: !1841, file: !3, line: 374, type: !168)
!1851 = !DILocalVariable(name: "p_src", scope: !1841, file: !3, line: 375, type: !398)
!1852 = !DILocation(line: 0, scope: !1841)
!1853 = !DILocation(line: 374, column: 21, scope: !1841)
!1854 = !DILocation(line: 374, column: 27, scope: !1841)
!1855 = !DILocation(line: 374, column: 18, scope: !1841)
!1856 = !DILocation(line: 374, column: 48, scope: !1841)
!1857 = !DILocation(line: 374, column: 39, scope: !1841)
!1858 = !DILocation(line: 375, column: 32, scope: !1841)
!1859 = !DILocation(line: 375, column: 22, scope: !1841)
!1860 = !DILocation(line: 375, column: 57, scope: !1841)
!1861 = !DILocation(line: 375, column: 48, scope: !1841)
!1862 = !DILocation(line: 375, column: 70, scope: !1841)
!1863 = !DILocation(line: 375, column: 72, scope: !1841)
!1864 = !DILocation(line: 375, column: 60, scope: !1841)
!1865 = !DILocation(line: 377, column: 9, scope: !1841)
!1866 = !DILocation(line: 378, column: 9, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 377, column: 9)
!1868 = !DILocation(line: 378, column: 57, scope: !1867)
!1869 = !DILocation(line: 380, column: 9, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 379, column: 14)
!1871 = !DILocation(line: 380, column: 57, scope: !1870)
!1872 = !DILocation(line: 382, column: 9, scope: !1870)
!1873 = !DILocation(line: 383, column: 1, scope: !1841)
!1874 = distinct !DISubprogram(name: "x264_predict_lossless_16x16", scope: !3, file: !3, line: 385, type: !1765, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1875)
!1875 = !{!1876, !1877, !1878}
!1876 = !DILocalVariable(name: "h", arg: 1, scope: !1874, file: !3, line: 385, type: !228)
!1877 = !DILocalVariable(name: "i_mode", arg: 2, scope: !1874, file: !3, line: 385, type: !168)
!1878 = !DILocalVariable(name: "stride", scope: !1874, file: !3, line: 387, type: !168)
!1879 = !DILocation(line: 0, scope: !1874)
!1880 = !DILocation(line: 387, column: 21, scope: !1874)
!1881 = !DILocation(line: 387, column: 27, scope: !1874)
!1882 = !DILocation(line: 387, column: 18, scope: !1874)
!1883 = !DILocation(line: 387, column: 48, scope: !1874)
!1884 = !DILocation(line: 387, column: 39, scope: !1874)
!1885 = !DILocation(line: 388, column: 9, scope: !1874)
!1886 = !DILocation(line: 389, column: 15, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 388, column: 9)
!1888 = !DILocation(line: 389, column: 9, scope: !1887)
!1889 = !DILocation(line: 389, column: 44, scope: !1887)
!1890 = !DILocation(line: 389, column: 34, scope: !1887)
!1891 = !DILocation(line: 389, column: 78, scope: !1887)
!1892 = !DILocation(line: 389, column: 68, scope: !1887)
!1893 = !DILocation(line: 389, column: 93, scope: !1887)
!1894 = !DILocation(line: 391, column: 15, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 390, column: 14)
!1896 = !{!1324, !1310, i64 25360}
!1897 = !DILocation(line: 391, column: 47, scope: !1895)
!1898 = !DILocation(line: 391, column: 37, scope: !1895)
!1899 = !DILocation(line: 391, column: 81, scope: !1895)
!1900 = !DILocation(line: 391, column: 71, scope: !1895)
!1901 = !DILocation(line: 391, column: 96, scope: !1895)
!1902 = !DILocation(line: 391, column: 9, scope: !1895)
!1903 = !DILocation(line: 393, column: 9, scope: !1895)
!1904 = !DILocation(line: 393, column: 45, scope: !1895)
!1905 = !DILocation(line: 393, column: 35, scope: !1895)
!1906 = !DILocation(line: 394, column: 1, scope: !1874)
!1907 = distinct !DISubprogram(name: "x264_macroblock_encode", scope: !3, file: !3, line: 399, type: !1908, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !228}
!1910 = !{!1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1921, !1924, !1930, !1934, !1935, !1941, !1942, !1944, !1945, !1946, !1953, !1954, !1959, !1965, !1969, !1973, !1976, !1982, !1990}
!1911 = !DILocalVariable(name: "h", arg: 1, scope: !1907, file: !3, line: 399, type: !228)
!1912 = !DILocalVariable(name: "i_cbp_dc", scope: !1907, file: !3, line: 401, type: !168)
!1913 = !DILocalVariable(name: "i_qp", scope: !1907, file: !3, line: 402, type: !168)
!1914 = !DILocalVariable(name: "b_decimate", scope: !1907, file: !3, line: 403, type: !168)
!1915 = !DILocalVariable(name: "b_force_no_skip", scope: !1907, file: !3, line: 404, type: !168)
!1916 = !DILocalVariable(name: "i", scope: !1907, file: !3, line: 405, type: !168)
!1917 = !DILocalVariable(name: "j", scope: !1907, file: !3, line: 405, type: !168)
!1918 = !DILocalVariable(name: "idx", scope: !1907, file: !3, line: 405, type: !168)
!1919 = !DILocalVariable(name: "nnz8x8", scope: !1907, file: !3, line: 406, type: !1920)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 32, elements: !536)
!1921 = !DILocalVariable(name: "i_mode", scope: !1922, file: !3, line: 442, type: !200)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 441, column: 5)
!1923 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 440, column: 9)
!1924 = !DILocalVariable(name: "edge", scope: !1925, file: !3, line: 455, type: !1927, align: 128)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 454, column: 5)
!1926 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 453, column: 14)
!1927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 264, elements: !1928)
!1928 = !{!1929}
!1929 = !DISubrange(count: 33)
!1930 = !DILocalVariable(name: "p_dst", scope: !1931, file: !3, line: 467, type: !398)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 466, column: 9)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 465, column: 9)
!1933 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 465, column: 9)
!1934 = !DILocalVariable(name: "i_mode", scope: !1931, file: !3, line: 468, type: !168)
!1935 = !DILocalVariable(name: "p_dst", scope: !1936, file: !3, line: 494, type: !398)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 493, column: 9)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 492, column: 9)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 492, column: 9)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 482, column: 5)
!1940 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 481, column: 14)
!1941 = !DILocalVariable(name: "i_mode", scope: !1936, file: !3, line: 495, type: !168)
!1942 = !DILocalVariable(name: "i8x8", scope: !1943, file: !3, line: 510, type: !168)
!1943 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 509, column: 5)
!1944 = !DILocalVariable(name: "i4x4", scope: !1943, file: !3, line: 510, type: !168)
!1945 = !DILocalVariable(name: "i_decimate_mb", scope: !1943, file: !3, line: 511, type: !168)
!1946 = !DILocalVariable(name: "x", scope: !1947, file: !3, line: 522, type: !168)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 521, column: 17)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 520, column: 17)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 520, column: 17)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 519, column: 17)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 518, column: 9)
!1952 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 517, column: 13)
!1953 = !DILocalVariable(name: "y", scope: !1947, file: !3, line: 523, type: !168)
!1954 = !DILocalVariable(name: "dct8x8", scope: !1955, file: !3, line: 539, type: !1957, align: 128)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 538, column: 9)
!1956 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 537, column: 18)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 4096, elements: !1958)
!1958 = !{!535, !400, !400}
!1959 = !DILocalVariable(name: "i_decimate_8x8", scope: !1960, file: !3, line: 554, type: !168)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 553, column: 17)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 552, column: 21)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 545, column: 13)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 544, column: 13)
!1964 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 544, column: 13)
!1965 = !DILocalVariable(name: "dct4x4", scope: !1966, file: !3, line: 577, type: !1967, align: 128)
!1966 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 576, column: 9)
!1967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 4096, elements: !1968)
!1968 = !{!187, !535, !535}
!1969 = !DILocalVariable(name: "i_decimate_8x8", scope: !1970, file: !3, line: 583, type: !168)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 582, column: 13)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 581, column: 13)
!1972 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 581, column: 13)
!1973 = !DILocalVariable(name: "i_mode", scope: !1974, file: !3, line: 625, type: !200)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 624, column: 5)
!1975 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 623, column: 9)
!1976 = !DILocalVariable(name: "nz", scope: !1977, file: !3, line: 644, type: !168)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 643, column: 9)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !3, line: 642, column: 9)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 642, column: 9)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 641, column: 5)
!1981 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 640, column: 9)
!1982 = !DILocalVariable(name: "nz", scope: !1983, file: !3, line: 668, type: !168)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 667, column: 13)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 660, column: 22)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 655, column: 16)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 654, column: 9)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 653, column: 9)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 653, column: 9)
!1989 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 652, column: 5)
!1990 = !DILocalVariable(name: "cbp", scope: !1983, file: !3, line: 668, type: !168)
!1991 = !DILocation(line: 0, scope: !1907)
!1992 = !DILocation(line: 402, column: 22, scope: !1907)
!1993 = !{!1324, !1326, i64 20512}
!1994 = !DILocation(line: 403, column: 28, scope: !1907)
!1995 = !DILocation(line: 403, column: 35, scope: !1907)
!1996 = !DILocation(line: 403, column: 51, scope: !1907)
!1997 = !DILocation(line: 403, column: 71, scope: !1907)
!1998 = !DILocation(line: 406, column: 5, scope: !1907)
!1999 = !DILocation(line: 406, column: 13, scope: !1907)
!2000 = !DILocation(line: 408, column: 15, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 408, column: 9)
!2002 = !{!1324, !1326, i64 4364}
!2003 = !DILocation(line: 408, column: 9, scope: !2001)
!2004 = !DILocation(line: 409, column: 9, scope: !2001)
!2005 = !DILocation(line: 409, column: 18, scope: !2001)
!2006 = !{!1324, !1326, i64 10904}
!2007 = !DILocation(line: 409, column: 35, scope: !2001)
!2008 = !{!1324, !1326, i64 4348}
!2009 = !DILocation(line: 409, column: 54, scope: !2001)
!2010 = !{!1324, !1326, i64 10884}
!2011 = !DILocation(line: 409, column: 46, scope: !2001)
!2012 = !DILocation(line: 409, column: 26, scope: !2001)
!2013 = !DILocation(line: 410, column: 9, scope: !2001)
!2014 = !DILocation(line: 410, column: 12, scope: !2001)
!2015 = !{!1324, !1310, i64 11104}
!2016 = !DILocation(line: 416, column: 13, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 416, column: 13)
!2018 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 411, column: 5)
!2019 = !{!1324, !1326, i64 11784}
!2020 = !DILocation(line: 421, column: 17, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 420, column: 22)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 418, column: 17)
!2023 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 417, column: 9)
!2024 = !DILocation(line: 0, scope: !2022)
!2025 = !DILocation(line: 425, column: 15, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 425, column: 9)
!2027 = !DILocation(line: 425, column: 9, scope: !1907)
!2028 = !DILocalVariable(name: "h", arg: 1, scope: !2029, file: !3, line: 302, type: !228)
!2029 = distinct !DISubprogram(name: "x264_macroblock_encode_pskip", scope: !3, file: !3, line: 302, type: !1908, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2030)
!2030 = !{!2028, !2031, !2032}
!2031 = !DILocalVariable(name: "mvx", scope: !2029, file: !3, line: 304, type: !200)
!2032 = !DILocalVariable(name: "mvy", scope: !2029, file: !3, line: 306, type: !200)
!2033 = !DILocation(line: 0, scope: !2029, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 428, column: 9, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 426, column: 5)
!2036 = !DILocalVariable(name: "v", arg: 1, scope: !2037, file: !27, line: 108, type: !168)
!2037 = distinct !DISubprogram(name: "x264_clip3", scope: !27, file: !27, line: 108, type: !2038, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2040)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!168, !168, !168, !168}
!2040 = !{!2036, !2041, !2042}
!2041 = !DILocalVariable(name: "i_min", arg: 2, scope: !2037, file: !27, line: 108, type: !168)
!2042 = !DILocalVariable(name: "i_max", arg: 3, scope: !2037, file: !27, line: 108, type: !168)
!2043 = !DILocation(line: 0, scope: !2037, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 304, column: 21, scope: !2029, inlinedAt: !2034)
!2045 = !DILocation(line: 0, scope: !2037, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 306, column: 21, scope: !2029, inlinedAt: !2034)
!2047 = !DILocation(line: 310, column: 16, scope: !2048, inlinedAt: !2034)
!2048 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 310, column: 9)
!2049 = !{!1324, !1326, i64 11832}
!2050 = !DILocation(line: 310, column: 10, scope: !2048, inlinedAt: !2034)
!2051 = !DILocation(line: 310, column: 9, scope: !2029, inlinedAt: !2034)
!2052 = !DILocation(line: 307, column: 33, scope: !2029, inlinedAt: !2034)
!2053 = !DILocation(line: 306, column: 33, scope: !2029, inlinedAt: !2034)
!2054 = !DILocation(line: 110, column: 17, scope: !2037, inlinedAt: !2046)
!2055 = !DILocation(line: 307, column: 50, scope: !2029, inlinedAt: !2034)
!2056 = !DILocation(line: 110, column: 14, scope: !2037, inlinedAt: !2046)
!2057 = !DILocation(line: 305, column: 39, scope: !2029, inlinedAt: !2034)
!2058 = !DILocation(line: 305, column: 33, scope: !2029, inlinedAt: !2034)
!2059 = !DILocation(line: 304, column: 33, scope: !2029, inlinedAt: !2034)
!2060 = !DILocation(line: 110, column: 17, scope: !2037, inlinedAt: !2044)
!2061 = !DILocation(line: 305, column: 56, scope: !2029, inlinedAt: !2034)
!2062 = !DILocation(line: 305, column: 50, scope: !2029, inlinedAt: !2034)
!2063 = !DILocation(line: 110, column: 14, scope: !2037, inlinedAt: !2044)
!2064 = !DILocation(line: 312, column: 12, scope: !2065, inlinedAt: !2034)
!2065 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 311, column: 5)
!2066 = !DILocation(line: 312, column: 15, scope: !2065, inlinedAt: !2034)
!2067 = !{!1324, !1310, i64 25200}
!2068 = !DILocation(line: 312, column: 34, scope: !2065, inlinedAt: !2034)
!2069 = !DILocation(line: 312, column: 24, scope: !2065, inlinedAt: !2034)
!2070 = !DILocation(line: 313, column: 34, scope: !2065, inlinedAt: !2034)
!2071 = !DILocation(line: 313, column: 58, scope: !2065, inlinedAt: !2034)
!2072 = !DILocation(line: 313, column: 48, scope: !2065, inlinedAt: !2034)
!2073 = !DILocation(line: 312, column: 9, scope: !2065, inlinedAt: !2034)
!2074 = !DILocation(line: 316, column: 15, scope: !2065, inlinedAt: !2034)
!2075 = !{!1324, !1310, i64 25216}
!2076 = !DILocation(line: 316, column: 26, scope: !2065, inlinedAt: !2034)
!2077 = !DILocation(line: 317, column: 26, scope: !2065, inlinedAt: !2034)
!2078 = !DILocation(line: 317, column: 53, scope: !2065, inlinedAt: !2034)
!2079 = !DILocation(line: 316, column: 9, scope: !2065, inlinedAt: !2034)
!2080 = !DILocation(line: 320, column: 15, scope: !2065, inlinedAt: !2034)
!2081 = !DILocation(line: 320, column: 26, scope: !2065, inlinedAt: !2034)
!2082 = !DILocation(line: 321, column: 26, scope: !2065, inlinedAt: !2034)
!2083 = !DILocation(line: 321, column: 53, scope: !2065, inlinedAt: !2034)
!2084 = !DILocation(line: 320, column: 9, scope: !2065, inlinedAt: !2034)
!2085 = !DILocation(line: 323, column: 5, scope: !2065, inlinedAt: !2034)
!2086 = !DILocalVariable(name: "h", arg: 1, scope: !2087, file: !3, line: 289, type: !228)
!2087 = distinct !DISubprogram(name: "x264_macroblock_encode_skip", scope: !3, file: !3, line: 289, type: !1908, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2088)
!2088 = !{!2086}
!2089 = !DILocation(line: 0, scope: !2087, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 325, column: 5, scope: !2029, inlinedAt: !2034)
!2091 = !DILocation(line: 291, column: 11, scope: !2087, inlinedAt: !2090)
!2092 = !DILocation(line: 291, column: 22, scope: !2087, inlinedAt: !2090)
!2093 = !{!1324, !1326, i64 11812}
!2094 = !DILocation(line: 292, column: 11, scope: !2087, inlinedAt: !2090)
!2095 = !DILocation(line: 292, column: 24, scope: !2087, inlinedAt: !2090)
!2096 = !DILocation(line: 293, column: 25, scope: !2087, inlinedAt: !2090)
!2097 = !DILocation(line: 293, column: 5, scope: !2087, inlinedAt: !2090)
!2098 = !DILocation(line: 295, column: 11, scope: !2087, inlinedAt: !2090)
!2099 = !{!1324, !1310, i64 11120}
!2100 = !DILocation(line: 295, column: 21, scope: !2087, inlinedAt: !2090)
!2101 = !DILocation(line: 295, column: 5, scope: !2087, inlinedAt: !2090)
!2102 = !DILocation(line: 295, column: 30, scope: !2087, inlinedAt: !2090)
!2103 = !DILocation(line: 429, column: 9, scope: !2035)
!2104 = !DILocation(line: 434, column: 20, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 434, column: 13)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 432, column: 5)
!2107 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 431, column: 9)
!2108 = !DILocation(line: 434, column: 14, scope: !2105)
!2109 = !DILocation(line: 434, column: 13, scope: !2106)
!2110 = !DILocation(line: 435, column: 13, scope: !2105)
!2111 = !DILocation(line: 0, scope: !2087, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 436, column: 9, scope: !2106)
!2113 = !DILocation(line: 291, column: 11, scope: !2087, inlinedAt: !2112)
!2114 = !DILocation(line: 291, column: 22, scope: !2087, inlinedAt: !2112)
!2115 = !DILocation(line: 292, column: 11, scope: !2087, inlinedAt: !2112)
!2116 = !DILocation(line: 292, column: 24, scope: !2087, inlinedAt: !2112)
!2117 = !DILocation(line: 293, column: 25, scope: !2087, inlinedAt: !2112)
!2118 = !DILocation(line: 293, column: 5, scope: !2087, inlinedAt: !2112)
!2119 = !DILocation(line: 295, column: 11, scope: !2087, inlinedAt: !2112)
!2120 = !DILocation(line: 295, column: 21, scope: !2087, inlinedAt: !2112)
!2121 = !DILocation(line: 295, column: 5, scope: !2087, inlinedAt: !2112)
!2122 = !DILocation(line: 295, column: 30, scope: !2087, inlinedAt: !2112)
!2123 = !DILocation(line: 437, column: 9, scope: !2106)
!2124 = !DILocation(line: 442, column: 34, scope: !1922)
!2125 = !{!1324, !1326, i64 11820}
!2126 = !DILocation(line: 0, scope: !1922)
!2127 = !DILocation(line: 443, column: 15, scope: !1922)
!2128 = !DILocation(line: 443, column: 31, scope: !1922)
!2129 = !{!1324, !1326, i64 11808}
!2130 = !DILocation(line: 445, column: 19, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 445, column: 13)
!2132 = !DILocation(line: 445, column: 13, scope: !2131)
!2133 = !DILocation(line: 445, column: 13, scope: !1922)
!2134 = !DILocation(line: 0, scope: !1874, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 446, column: 13, scope: !2131)
!2136 = !DILocation(line: 387, column: 21, scope: !1874, inlinedAt: !2135)
!2137 = !DILocation(line: 387, column: 27, scope: !1874, inlinedAt: !2135)
!2138 = !DILocation(line: 387, column: 18, scope: !1874, inlinedAt: !2135)
!2139 = !DILocation(line: 387, column: 48, scope: !1874, inlinedAt: !2135)
!2140 = !DILocation(line: 387, column: 39, scope: !1874, inlinedAt: !2135)
!2141 = !DILocation(line: 388, column: 9, scope: !1874, inlinedAt: !2135)
!2142 = !DILocation(line: 389, column: 15, scope: !1887, inlinedAt: !2135)
!2143 = !DILocation(line: 389, column: 9, scope: !1887, inlinedAt: !2135)
!2144 = !DILocation(line: 389, column: 44, scope: !1887, inlinedAt: !2135)
!2145 = !DILocation(line: 389, column: 34, scope: !1887, inlinedAt: !2135)
!2146 = !DILocation(line: 389, column: 78, scope: !1887, inlinedAt: !2135)
!2147 = !DILocation(line: 389, column: 68, scope: !1887, inlinedAt: !2135)
!2148 = !DILocation(line: 389, column: 93, scope: !1887, inlinedAt: !2135)
!2149 = !DILocation(line: 391, column: 15, scope: !1895, inlinedAt: !2135)
!2150 = !DILocation(line: 391, column: 47, scope: !1895, inlinedAt: !2135)
!2151 = !DILocation(line: 391, column: 37, scope: !1895, inlinedAt: !2135)
!2152 = !DILocation(line: 391, column: 81, scope: !1895, inlinedAt: !2135)
!2153 = !DILocation(line: 391, column: 71, scope: !1895, inlinedAt: !2135)
!2154 = !DILocation(line: 391, column: 96, scope: !1895, inlinedAt: !2135)
!2155 = !DILocation(line: 391, column: 9, scope: !1895, inlinedAt: !2135)
!2156 = !DILocation(line: 393, column: 9, scope: !1895, inlinedAt: !2135)
!2157 = !DILocation(line: 393, column: 45, scope: !1895, inlinedAt: !2135)
!2158 = !DILocation(line: 393, column: 35, scope: !1895, inlinedAt: !2135)
!2159 = !DILocation(line: 448, column: 13, scope: !2131)
!2160 = !DILocation(line: 448, column: 49, scope: !2131)
!2161 = !DILocation(line: 448, column: 39, scope: !2131)
!2162 = !DILocalVariable(name: "h", arg: 1, scope: !2163, file: !3, line: 144, type: !228)
!2163 = distinct !DISubprogram(name: "x264_mb_encode_i16x16", scope: !3, file: !3, line: 144, type: !1765, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2164)
!2164 = !{!2162, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2177}
!2165 = !DILocalVariable(name: "i_qp", arg: 2, scope: !2163, file: !3, line: 144, type: !168)
!2166 = !DILocalVariable(name: "p_src", scope: !2163, file: !3, line: 146, type: !398)
!2167 = !DILocalVariable(name: "p_dst", scope: !2163, file: !3, line: 147, type: !398)
!2168 = !DILocalVariable(name: "dct4x4", scope: !2163, file: !3, line: 149, type: !1967, align: 128)
!2169 = !DILocalVariable(name: "dct_dc4x4", scope: !2163, file: !3, line: 150, type: !1184, align: 128)
!2170 = !DILocalVariable(name: "i", scope: !2163, file: !3, line: 152, type: !168)
!2171 = !DILocalVariable(name: "oe", scope: !2172, file: !3, line: 158, type: !168)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 157, column: 9)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 156, column: 9)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 156, column: 9)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 155, column: 5)
!2176 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 154, column: 9)
!2177 = !DILocalVariable(name: "od", scope: !2172, file: !3, line: 159, type: !168)
!2178 = !DILocation(line: 0, scope: !2163, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 451, column: 9, scope: !1922)
!2180 = !DILocation(line: 146, column: 33, scope: !2163, inlinedAt: !2179)
!2181 = !DILocation(line: 146, column: 23, scope: !2163, inlinedAt: !2179)
!2182 = !DILocation(line: 147, column: 33, scope: !2163, inlinedAt: !2179)
!2183 = !DILocation(line: 147, column: 23, scope: !2163, inlinedAt: !2179)
!2184 = !DILocation(line: 149, column: 5, scope: !2163, inlinedAt: !2179)
!2185 = !DILocation(line: 150, column: 5, scope: !2163, inlinedAt: !2179)
!2186 = !DILocation(line: 154, column: 15, scope: !2176, inlinedAt: !2179)
!2187 = !DILocation(line: 154, column: 9, scope: !2176, inlinedAt: !2179)
!2188 = !DILocation(line: 154, column: 9, scope: !2163, inlinedAt: !2179)
!2189 = !DILocation(line: 0, scope: !2172, inlinedAt: !2179)
!2190 = !DILocation(line: 160, column: 24, scope: !2172, inlinedAt: !2179)
!2191 = !DILocation(line: 160, column: 33, scope: !2172, inlinedAt: !2179)
!2192 = !DILocation(line: 160, column: 13, scope: !2172, inlinedAt: !2179)
!2193 = !DILocation(line: 161, column: 48, scope: !2172, inlinedAt: !2179)
!2194 = !DILocation(line: 161, column: 46, scope: !2172, inlinedAt: !2179)
!2195 = !DILocation(line: 162, column: 34, scope: !2172, inlinedAt: !2179)
!2196 = !DILocation(line: 160, column: 57, scope: !2172, inlinedAt: !2179)
!2197 = !DILocation(line: 160, column: 67, scope: !2172, inlinedAt: !2179)
!2198 = !DILocation(line: 161, column: 13, scope: !2172, inlinedAt: !2179)
!2199 = !DILocation(line: 164, column: 20, scope: !2175, inlinedAt: !2179)
!2200 = !DILocation(line: 164, column: 33, scope: !2175, inlinedAt: !2179)
!2201 = !DILocation(line: 164, column: 9, scope: !2175, inlinedAt: !2179)
!2202 = !DILocation(line: 165, column: 9, scope: !2175, inlinedAt: !2179)
!2203 = !DILocation(line: 168, column: 13, scope: !2163, inlinedAt: !2179)
!2204 = !{!1324, !1310, i64 25456}
!2205 = !DILocation(line: 168, column: 5, scope: !2163, inlinedAt: !2179)
!2206 = !DILocation(line: 169, column: 5, scope: !2207, inlinedAt: !2179)
!2207 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 169, column: 5)
!2208 = !DILocation(line: 172, column: 44, scope: !2209, inlinedAt: !2179)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 170, column: 5)
!2210 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 169, column: 5)
!2211 = !DILocation(line: 172, column: 22, scope: !2209, inlinedAt: !2179)
!2212 = !DILocation(line: 172, column: 9, scope: !2209, inlinedAt: !2179)
!2213 = !DILocation(line: 172, column: 42, scope: !2209, inlinedAt: !2179)
!2214 = !DILocation(line: 173, column: 25, scope: !2209, inlinedAt: !2179)
!2215 = !DILocation(line: 0, scope: !1363, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 176, column: 9, scope: !2209, inlinedAt: !2179)
!2217 = !DILocation(line: 78, column: 15, scope: !1376, inlinedAt: !2216)
!2218 = !DILocation(line: 78, column: 9, scope: !1376, inlinedAt: !2216)
!2219 = !DILocation(line: 78, column: 9, scope: !1363, inlinedAt: !2216)
!2220 = !DILocation(line: 79, column: 9, scope: !1376, inlinedAt: !2216)
!2221 = !DILocation(line: 81, column: 19, scope: !1376, inlinedAt: !2216)
!2222 = !DILocation(line: 81, column: 35, scope: !1376, inlinedAt: !2216)
!2223 = !DILocation(line: 81, column: 68, scope: !1376, inlinedAt: !2216)
!2224 = !DILocation(line: 81, column: 9, scope: !1376, inlinedAt: !2216)
!2225 = !DILocation(line: 178, column: 20, scope: !2209, inlinedAt: !2179)
!2226 = !DILocation(line: 178, column: 30, scope: !2209, inlinedAt: !2179)
!2227 = !DILocation(line: 178, column: 9, scope: !2209, inlinedAt: !2179)
!2228 = !DILocation(line: 179, column: 19, scope: !2209, inlinedAt: !2179)
!2229 = !DILocation(line: 179, column: 43, scope: !2209, inlinedAt: !2179)
!2230 = !DILocation(line: 179, column: 9, scope: !2209, inlinedAt: !2179)
!2231 = !DILocation(line: 169, column: 26, scope: !2210, inlinedAt: !2179)
!2232 = !DILocation(line: 169, column: 19, scope: !2210, inlinedAt: !2179)
!2233 = distinct !{!2233, !2206, !2234, !1718}
!2234 = !DILocation(line: 180, column: 5, scope: !2207, inlinedAt: !2179)
!2235 = !DILocation(line: 182, column: 13, scope: !2163, inlinedAt: !2179)
!2236 = !{!1324, !1310, i64 25504}
!2237 = !DILocation(line: 182, column: 5, scope: !2163, inlinedAt: !2179)
!2238 = !DILocation(line: 183, column: 15, scope: !2239, inlinedAt: !2179)
!2239 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 183, column: 9)
!2240 = !DILocation(line: 183, column: 9, scope: !2239, inlinedAt: !2179)
!2241 = !DILocation(line: 183, column: 9, scope: !2163, inlinedAt: !2179)
!2242 = !DILocation(line: 184, column: 9, scope: !2239, inlinedAt: !2179)
!2243 = !DILocation(line: 186, column: 19, scope: !2239, inlinedAt: !2179)
!2244 = !{!1324, !1310, i64 25576}
!2245 = !DILocation(line: 186, column: 44, scope: !2239, inlinedAt: !2179)
!2246 = !DILocation(line: 186, column: 79, scope: !2239, inlinedAt: !2179)
!2247 = !DILocation(line: 186, column: 111, scope: !2239, inlinedAt: !2179)
!2248 = !DILocation(line: 186, column: 9, scope: !2239, inlinedAt: !2179)
!2249 = !DILocation(line: 187, column: 16, scope: !2163, inlinedAt: !2179)
!2250 = !DILocation(line: 187, column: 29, scope: !2163, inlinedAt: !2179)
!2251 = !DILocation(line: 187, column: 5, scope: !2163, inlinedAt: !2179)
!2252 = !DILocation(line: 190, column: 13, scope: !2163, inlinedAt: !2179)
!2253 = !{!1324, !1310, i64 25512}
!2254 = !DILocation(line: 190, column: 5, scope: !2163, inlinedAt: !2179)
!2255 = !DILocation(line: 191, column: 15, scope: !2163, inlinedAt: !2179)
!2256 = !{!1324, !1310, i64 25608}
!2257 = !DILocation(line: 191, column: 42, scope: !2163, inlinedAt: !2179)
!2258 = !DILocation(line: 191, column: 5, scope: !2163, inlinedAt: !2179)
!2259 = !DILocation(line: 197, column: 27, scope: !2260, inlinedAt: !2179)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 195, column: 5)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 194, column: 5)
!2262 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 194, column: 5)
!2263 = !DILocation(line: 197, column: 25, scope: !2260, inlinedAt: !2179)
!2264 = !DILocation(line: 197, column: 9, scope: !2260, inlinedAt: !2179)
!2265 = !DILocation(line: 200, column: 13, scope: !2163, inlinedAt: !2179)
!2266 = !{!1324, !1310, i64 25464}
!2267 = !DILocation(line: 200, column: 5, scope: !2163, inlinedAt: !2179)
!2268 = !DILocation(line: 201, column: 1, scope: !2163, inlinedAt: !2179)
!2269 = !DILocation(line: 452, column: 5, scope: !1922)
!2270 = !DILocation(line: 455, column: 9, scope: !1925)
!2271 = !DILocation(line: 456, column: 15, scope: !1925)
!2272 = !DILocation(line: 456, column: 31, scope: !1925)
!2273 = !DILocation(line: 458, column: 19, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 458, column: 13)
!2275 = !{!1324, !1326, i64 11828}
!2276 = !DILocation(line: 458, column: 13, scope: !2274)
!2277 = !DILocation(line: 458, column: 13, scope: !1925)
!2278 = !DILocation(line: 460, column: 19, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 459, column: 9)
!2280 = !DILocation(line: 460, column: 13, scope: !2279)
!2281 = !DILocation(line: 460, column: 48, scope: !2279)
!2282 = !DILocation(line: 460, column: 38, scope: !2279)
!2283 = !DILocation(line: 460, column: 82, scope: !2279)
!2284 = !DILocation(line: 462, column: 23, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 462, column: 17)
!2286 = !DILocation(line: 462, column: 36, scope: !2285)
!2287 = !DILocation(line: 462, column: 17, scope: !2279)
!2288 = !DILocation(line: 463, column: 23, scope: !2285)
!2289 = !{!1324, !1310, i64 25400}
!2290 = !DILocation(line: 463, column: 46, scope: !2285)
!2291 = !DILocation(line: 463, column: 65, scope: !2285)
!2292 = !DILocation(line: 463, column: 17, scope: !2285)
!2293 = !DILocation(line: 465, column: 24, scope: !1933)
!2294 = !DILocation(line: 465, column: 18, scope: !1933)
!2295 = !DILocation(line: 465, column: 9, scope: !1933)
!2296 = !DILocation(line: 467, column: 32, scope: !1931)
!2297 = !DILocation(line: 467, column: 54, scope: !1931)
!2298 = !DILocation(line: 467, column: 66, scope: !1931)
!2299 = !DILocation(line: 467, column: 62, scope: !1931)
!2300 = !DILocation(line: 0, scope: !1931)
!2301 = !DILocation(line: 468, column: 74, scope: !1931)
!2302 = !DILocation(line: 468, column: 62, scope: !1931)
!2303 = !DILocation(line: 468, column: 31, scope: !1931)
!2304 = !DILocation(line: 469, column: 51, scope: !1931)
!2305 = !DILocation(line: 469, column: 74, scope: !1931)
!2306 = !DILocation(line: 469, column: 13, scope: !1931)
!2307 = !DILocation(line: 471, column: 23, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 471, column: 17)
!2309 = !DILocation(line: 471, column: 17, scope: !2308)
!2310 = !DILocation(line: 471, column: 17, scope: !1931)
!2311 = !DILocation(line: 0, scope: !1841, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 472, column: 17, scope: !2308)
!2313 = !DILocation(line: 374, column: 21, scope: !1841, inlinedAt: !2312)
!2314 = !DILocation(line: 374, column: 27, scope: !1841, inlinedAt: !2312)
!2315 = !DILocation(line: 374, column: 18, scope: !1841, inlinedAt: !2312)
!2316 = !DILocation(line: 374, column: 48, scope: !1841, inlinedAt: !2312)
!2317 = !DILocation(line: 374, column: 39, scope: !1841, inlinedAt: !2312)
!2318 = !DILocation(line: 375, column: 22, scope: !1841, inlinedAt: !2312)
!2319 = !DILocation(line: 375, column: 48, scope: !1841, inlinedAt: !2312)
!2320 = !DILocation(line: 375, column: 70, scope: !1841, inlinedAt: !2312)
!2321 = !DILocation(line: 375, column: 72, scope: !1841, inlinedAt: !2312)
!2322 = !DILocation(line: 375, column: 60, scope: !1841, inlinedAt: !2312)
!2323 = !DILocation(line: 377, column: 9, scope: !1841, inlinedAt: !2312)
!2324 = !DILocation(line: 378, column: 9, scope: !1867, inlinedAt: !2312)
!2325 = !DILocation(line: 378, column: 57, scope: !1867, inlinedAt: !2312)
!2326 = !DILocation(line: 380, column: 9, scope: !1870, inlinedAt: !2312)
!2327 = !DILocation(line: 380, column: 57, scope: !1870, inlinedAt: !2312)
!2328 = !DILocation(line: 382, column: 9, scope: !1870, inlinedAt: !2312)
!2329 = !DILocation(line: 474, column: 17, scope: !2308)
!2330 = !DILocation(line: 476, column: 13, scope: !1931)
!2331 = !DILocation(line: 465, column: 55, scope: !1932)
!2332 = !DILocation(line: 465, column: 49, scope: !1932)
!2333 = distinct !{!2333, !2295, !2334, !1718}
!2334 = !DILocation(line: 477, column: 9, scope: !1933)
!2335 = !DILocation(line: 479, column: 25, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !3, line: 478, column: 9)
!2337 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 478, column: 9)
!2338 = !DILocation(line: 0, scope: !165, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 479, column: 25, scope: !2336)
!2340 = !DILocation(line: 0, scope: !174, inlinedAt: !2339)
!2341 = !DILocation(line: 104, column: 9, scope: !174, inlinedAt: !2339)
!2342 = !{i64 708625, i64 708667, i64 708708, i64 708749, i64 708790, i64 708831, i64 708872, i64 708913, i64 708954, i64 708995, i64 709036, i64 709077, i64 709118, i64 709159, i64 709200, i64 709241, i64 709282, i64 709323}
!2343 = !DILocation(line: 126, column: 17, scope: !174, inlinedAt: !2339)
!2344 = !DILocation(line: 479, column: 23, scope: !2336)
!2345 = !DILocation(line: 480, column: 5, scope: !1926)
!2346 = !DILocation(line: 480, column: 5, scope: !1925)
!2347 = !DILocation(line: 483, column: 15, scope: !1939)
!2348 = !DILocation(line: 483, column: 31, scope: !1939)
!2349 = !DILocation(line: 485, column: 19, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 485, column: 13)
!2351 = !DILocation(line: 485, column: 13, scope: !2350)
!2352 = !DILocation(line: 485, column: 13, scope: !1939)
!2353 = !DILocation(line: 487, column: 19, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 486, column: 9)
!2355 = !DILocation(line: 487, column: 13, scope: !2354)
!2356 = !DILocation(line: 487, column: 48, scope: !2354)
!2357 = !DILocation(line: 487, column: 38, scope: !2354)
!2358 = !DILocation(line: 487, column: 82, scope: !2354)
!2359 = !DILocation(line: 489, column: 23, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 489, column: 17)
!2361 = !DILocation(line: 489, column: 36, scope: !2360)
!2362 = !DILocation(line: 489, column: 17, scope: !2354)
!2363 = !DILocation(line: 490, column: 23, scope: !2360)
!2364 = !DILocation(line: 490, column: 46, scope: !2360)
!2365 = !DILocation(line: 490, column: 65, scope: !2360)
!2366 = !DILocation(line: 490, column: 17, scope: !2360)
!2367 = !DILocation(line: 492, column: 24, scope: !1938)
!2368 = !DILocation(line: 492, column: 18, scope: !1938)
!2369 = !DILocation(line: 492, column: 9, scope: !1938)
!2370 = !DILocation(line: 494, column: 32, scope: !1936)
!2371 = !DILocation(line: 494, column: 52, scope: !1936)
!2372 = !DILocation(line: 0, scope: !1936)
!2373 = !DILocation(line: 495, column: 62, scope: !1936)
!2374 = !DILocation(line: 495, column: 31, scope: !1936)
!2375 = !DILocation(line: 497, column: 18, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 497, column: 17)
!2377 = !DILocation(line: 497, column: 40, scope: !2376)
!2378 = !DILocation(line: 497, column: 64, scope: !2376)
!2379 = !DILocation(line: 497, column: 17, scope: !1936)
!2380 = !DILocation(line: 499, column: 54, scope: !2376)
!2381 = !DILocation(line: 499, column: 75, scope: !2376)
!2382 = !DILocation(line: 499, column: 31, scope: !2376)
!2383 = !DILocation(line: 499, column: 52, scope: !2376)
!2384 = !DILocation(line: 499, column: 17, scope: !2376)
!2385 = !DILocation(line: 501, column: 23, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 501, column: 17)
!2387 = !DILocation(line: 501, column: 17, scope: !2386)
!2388 = !DILocation(line: 501, column: 17, scope: !1936)
!2389 = !DILocation(line: 0, scope: !1807, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 502, column: 17, scope: !2386)
!2391 = !DILocation(line: 361, column: 21, scope: !1807, inlinedAt: !2390)
!2392 = !DILocation(line: 361, column: 27, scope: !1807, inlinedAt: !2390)
!2393 = !DILocation(line: 361, column: 18, scope: !1807, inlinedAt: !2390)
!2394 = !DILocation(line: 361, column: 48, scope: !1807, inlinedAt: !2390)
!2395 = !DILocation(line: 361, column: 39, scope: !1807, inlinedAt: !2390)
!2396 = !DILocation(line: 362, column: 22, scope: !1807, inlinedAt: !2390)
!2397 = !DILocation(line: 362, column: 50, scope: !1807, inlinedAt: !2390)
!2398 = !DILocation(line: 362, column: 66, scope: !1807, inlinedAt: !2390)
!2399 = !DILocation(line: 362, column: 48, scope: !1807, inlinedAt: !2390)
!2400 = !DILocation(line: 362, column: 71, scope: !1807, inlinedAt: !2390)
!2401 = !DILocation(line: 362, column: 87, scope: !1807, inlinedAt: !2390)
!2402 = !DILocation(line: 362, column: 90, scope: !1807, inlinedAt: !2390)
!2403 = !DILocation(line: 362, column: 69, scope: !1807, inlinedAt: !2390)
!2404 = !DILocation(line: 364, column: 9, scope: !1807, inlinedAt: !2390)
!2405 = !DILocation(line: 365, column: 9, scope: !1834, inlinedAt: !2390)
!2406 = !DILocation(line: 365, column: 57, scope: !1834, inlinedAt: !2390)
!2407 = !DILocation(line: 367, column: 9, scope: !1837, inlinedAt: !2390)
!2408 = !DILocation(line: 367, column: 57, scope: !1837, inlinedAt: !2390)
!2409 = !DILocation(line: 369, column: 9, scope: !1837, inlinedAt: !2390)
!2410 = !DILocation(line: 504, column: 17, scope: !2386)
!2411 = !DILocation(line: 505, column: 13, scope: !1936)
!2412 = !DILocation(line: 492, column: 57, scope: !1937)
!2413 = !DILocation(line: 492, column: 50, scope: !1937)
!2414 = distinct !{!2414, !2369, !2415, !1718}
!2415 = !DILocation(line: 506, column: 9, scope: !1938)
!2416 = !DILocation(line: 0, scope: !1943)
!2417 = !DILocation(line: 514, column: 20, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 514, column: 13)
!2419 = !DILocation(line: 514, column: 14, scope: !2418)
!2420 = !DILocation(line: 514, column: 13, scope: !1943)
!2421 = !DILocation(line: 515, column: 13, scope: !2418)
!2422 = !DILocation(line: 517, column: 19, scope: !1952)
!2423 = !DILocation(line: 517, column: 13, scope: !1952)
!2424 = !DILocation(line: 0, scope: !1952)
!2425 = !DILocation(line: 517, column: 13, scope: !1943)
!2426 = !DILocation(line: 0, scope: !1950)
!2427 = !DILocation(line: 519, column: 17, scope: !1951)
!2428 = !DILocation(line: 0, scope: !1947)
!2429 = !DILocation(line: 524, column: 32, scope: !1947)
!2430 = !DILocation(line: 524, column: 41, scope: !1947)
!2431 = !DILocation(line: 524, column: 21, scope: !1947)
!2432 = !DILocation(line: 0, scope: !165, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 527, column: 36, scope: !1947)
!2434 = !DILocation(line: 0, scope: !174, inlinedAt: !2433)
!2435 = !DILocation(line: 104, column: 9, scope: !174, inlinedAt: !2433)
!2436 = !DILocation(line: 525, column: 41, scope: !1947)
!2437 = !DILocation(line: 525, column: 60, scope: !1947)
!2438 = !DILocation(line: 526, column: 41, scope: !1947)
!2439 = !DILocation(line: 526, column: 60, scope: !1947)
!2440 = !DILocation(line: 525, column: 62, scope: !1947)
!2441 = !DILocation(line: 526, column: 62, scope: !1947)
!2442 = !DILocation(line: 126, column: 17, scope: !174, inlinedAt: !2433)
!2443 = !DILocation(line: 527, column: 36, scope: !1947)
!2444 = !DILocation(line: 527, column: 34, scope: !1947)
!2445 = !DILocation(line: 623, column: 9, scope: !1975)
!2446 = !DILocation(line: 532, column: 32, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 531, column: 17)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 530, column: 17)
!2449 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 530, column: 17)
!2450 = !DILocation(line: 532, column: 41, scope: !2447)
!2451 = !DILocation(line: 532, column: 21, scope: !2447)
!2452 = !DILocation(line: 533, column: 41, scope: !2447)
!2453 = !DILocation(line: 533, column: 60, scope: !2447)
!2454 = !DILocation(line: 534, column: 41, scope: !2447)
!2455 = !DILocation(line: 534, column: 60, scope: !2447)
!2456 = !DILocation(line: 537, column: 18, scope: !1952)
!2457 = !DILocation(line: 539, column: 13, scope: !1955)
!2458 = !DILocation(line: 540, column: 34, scope: !1955)
!2459 = !DILocation(line: 540, column: 27, scope: !1955)
!2460 = !DILocation(line: 540, column: 24, scope: !1955)
!2461 = !DILocation(line: 541, column: 21, scope: !1955)
!2462 = !{!1324, !1310, i64 25488}
!2463 = !DILocation(line: 541, column: 54, scope: !1955)
!2464 = !DILocation(line: 541, column: 44, scope: !1955)
!2465 = !DILocation(line: 541, column: 75, scope: !1955)
!2466 = !DILocation(line: 541, column: 65, scope: !1955)
!2467 = !DILocation(line: 541, column: 13, scope: !1955)
!2468 = !DILocation(line: 542, column: 37, scope: !1955)
!2469 = !{!1324, !1326, i64 10932}
!2470 = !DILocation(line: 542, column: 55, scope: !1955)
!2471 = !DILocation(line: 542, column: 13, scope: !1955)
!2472 = !DILocation(line: 542, column: 28, scope: !1955)
!2473 = !DILocation(line: 546, column: 21, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 546, column: 21)
!2475 = !DILocation(line: 546, column: 21, scope: !1962)
!2476 = !DILocation(line: 547, column: 31, scope: !2474)
!2477 = !{!1324, !1310, i64 25616}
!2478 = !DILocation(line: 547, column: 21, scope: !2474)
!2479 = !DILocation(line: 0, scope: !1459, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 548, column: 17, scope: !1962)
!2481 = !DILocation(line: 87, column: 15, scope: !1471, inlinedAt: !2480)
!2482 = !DILocation(line: 87, column: 9, scope: !1471, inlinedAt: !2480)
!2483 = !DILocation(line: 87, column: 9, scope: !1459, inlinedAt: !2480)
!2484 = !DILocation(line: 88, column: 9, scope: !1471, inlinedAt: !2480)
!2485 = !DILocation(line: 90, column: 19, scope: !1471, inlinedAt: !2480)
!2486 = !DILocation(line: 90, column: 35, scope: !1471, inlinedAt: !2480)
!2487 = !DILocation(line: 90, column: 68, scope: !1471, inlinedAt: !2480)
!2488 = !DILocation(line: 90, column: 9, scope: !1471, inlinedAt: !2480)
!2489 = !DILocation(line: 550, column: 28, scope: !1962)
!2490 = !DILocation(line: 550, column: 38, scope: !1962)
!2491 = !DILocation(line: 550, column: 17, scope: !1962)
!2492 = !DILocation(line: 552, column: 21, scope: !1962)
!2493 = !DILocation(line: 554, column: 52, scope: !1960)
!2494 = !{!1324, !1310, i64 25640}
!2495 = !DILocation(line: 554, column: 42, scope: !1960)
!2496 = !DILocation(line: 0, scope: !1960)
!2497 = !DILocation(line: 556, column: 40, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 556, column: 25)
!2499 = !DILocation(line: 556, column: 25, scope: !1960)
!2500 = !DILocation(line: 557, column: 37, scope: !2498)
!2501 = !DILocation(line: 557, column: 25, scope: !2498)
!2502 = !DILocation(line: 0, scope: !165, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 560, column: 35, scope: !1961)
!2504 = !DILocation(line: 0, scope: !174, inlinedAt: !2503)
!2505 = !DILocation(line: 104, column: 9, scope: !174, inlinedAt: !2503)
!2506 = !DILocation(line: 126, column: 17, scope: !174, inlinedAt: !2503)
!2507 = !DILocation(line: 560, column: 35, scope: !1961)
!2508 = !DILocation(line: 560, column: 33, scope: !1961)
!2509 = !DILocation(line: 546, column: 27, scope: !2474)
!2510 = !DILocation(line: 547, column: 45, scope: !2474)
!2511 = !DILocation(line: 548, column: 36, scope: !1962)
!2512 = !DILocation(line: 555, column: 35, scope: !1960)
!2513 = !DILocation(line: 0, scope: !1961)
!2514 = !DILocation(line: 560, column: 21, scope: !1961)
!2515 = !DILocation(line: 563, column: 35, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 563, column: 17)
!2517 = !DILocation(line: 563, column: 31, scope: !2516)
!2518 = !DILocation(line: 568, column: 25, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 568, column: 25)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 567, column: 17)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 567, column: 17)
!2522 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 566, column: 13)
!2523 = !DILocation(line: 568, column: 25, scope: !2520)
!2524 = !DILocation(line: 564, column: 36, scope: !2516)
!2525 = !DILocation(line: 564, column: 17, scope: !2516)
!2526 = !DILocation(line: 570, column: 35, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 569, column: 21)
!2528 = !DILocation(line: 570, column: 61, scope: !2527)
!2529 = !DILocation(line: 570, column: 25, scope: !2527)
!2530 = !DILocation(line: 571, column: 33, scope: !2527)
!2531 = !DILocation(line: 571, column: 48, scope: !2527)
!2532 = !DILocation(line: 571, column: 25, scope: !2527)
!2533 = !DILocation(line: 572, column: 21, scope: !2527)
!2534 = !DILocation(line: 574, column: 9, scope: !1956)
!2535 = !DILocation(line: 574, column: 9, scope: !1955)
!2536 = !DILocation(line: 577, column: 13, scope: !1966)
!2537 = !DILocation(line: 578, column: 21, scope: !1966)
!2538 = !DILocation(line: 578, column: 53, scope: !1966)
!2539 = !DILocation(line: 578, column: 43, scope: !1966)
!2540 = !DILocation(line: 578, column: 74, scope: !1966)
!2541 = !DILocation(line: 578, column: 64, scope: !1966)
!2542 = !DILocation(line: 578, column: 13, scope: !1966)
!2543 = !DILocation(line: 579, column: 37, scope: !1966)
!2544 = !DILocation(line: 579, column: 55, scope: !1966)
!2545 = !DILocation(line: 579, column: 16, scope: !1966)
!2546 = !DILocation(line: 579, column: 28, scope: !1966)
!2547 = !DILocation(line: 581, column: 13, scope: !1972)
!2548 = !DILocation(line: 0, scope: !1970)
!2549 = !DILocation(line: 591, column: 31, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 591, column: 25)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 588, column: 17)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 587, column: 17)
!2553 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 587, column: 17)
!2554 = !DILocation(line: 591, column: 25, scope: !2550)
!2555 = !DILocation(line: 591, column: 25, scope: !2551)
!2556 = !DILocation(line: 592, column: 35, scope: !2550)
!2557 = !DILocation(line: 592, column: 49, scope: !2550)
!2558 = !DILocation(line: 592, column: 25, scope: !2550)
!2559 = !DILocation(line: 593, column: 40, scope: !2551)
!2560 = !DILocation(line: 0, scope: !1363, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 593, column: 21, scope: !2551)
!2562 = !DILocation(line: 78, column: 15, scope: !1376, inlinedAt: !2561)
!2563 = !DILocation(line: 78, column: 9, scope: !1376, inlinedAt: !2561)
!2564 = !DILocation(line: 78, column: 9, scope: !1363, inlinedAt: !2561)
!2565 = !DILocation(line: 79, column: 9, scope: !1376, inlinedAt: !2561)
!2566 = !DILocation(line: 81, column: 19, scope: !1376, inlinedAt: !2561)
!2567 = !DILocation(line: 81, column: 35, scope: !1376, inlinedAt: !2561)
!2568 = !DILocation(line: 81, column: 68, scope: !1376, inlinedAt: !2561)
!2569 = !DILocation(line: 81, column: 9, scope: !1376, inlinedAt: !2561)
!2570 = !DILocation(line: 595, column: 32, scope: !2551)
!2571 = !DILocation(line: 595, column: 42, scope: !2551)
!2572 = !DILocation(line: 595, column: 21, scope: !2551)
!2573 = !DILocation(line: 589, column: 36, scope: !2551)
!2574 = !DILocation(line: 602, column: 31, scope: !1970)
!2575 = !DILocation(line: 598, column: 53, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 597, column: 25)
!2577 = !{!1324, !1310, i64 25632}
!2578 = !DILocation(line: 598, column: 43, scope: !2576)
!2579 = !DILocation(line: 597, column: 36, scope: !2576)
!2580 = !DILocation(line: 598, column: 40, scope: !2576)
!2581 = !DILocation(line: 598, column: 25, scope: !2576)
!2582 = !DILocation(line: 603, column: 36, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 603, column: 21)
!2584 = !DILocation(line: 603, column: 40, scope: !2583)
!2585 = !DILocation(line: 604, column: 21, scope: !2583)
!2586 = !DILocation(line: 604, column: 34, scope: !2583)
!2587 = !DILocation(line: 581, column: 42, scope: !1971)
!2588 = !DILocation(line: 581, column: 33, scope: !1971)
!2589 = distinct !{!2589, !2547, !2590, !1718}
!2590 = !DILocation(line: 605, column: 13, scope: !1972)
!2591 = !DILocation(line: 607, column: 31, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 607, column: 17)
!2593 = !DILocation(line: 607, column: 35, scope: !2592)
!2594 = !DILocation(line: 612, column: 25, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 612, column: 25)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 611, column: 17)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 611, column: 17)
!2598 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 610, column: 13)
!2599 = !DILocation(line: 612, column: 25, scope: !2596)
!2600 = !DILocation(line: 608, column: 36, scope: !2592)
!2601 = !DILocation(line: 608, column: 17, scope: !2592)
!2602 = !DILocation(line: 615, column: 39, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 614, column: 25)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 614, column: 25)
!2605 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 613, column: 21)
!2606 = !DILocation(line: 615, column: 70, scope: !2603)
!2607 = !DILocation(line: 615, column: 29, scope: !2603)
!2608 = !DILocation(line: 615, column: 52, scope: !2603)
!2609 = !DILocation(line: 616, column: 33, scope: !2605)
!2610 = !DILocation(line: 616, column: 47, scope: !2605)
!2611 = !DILocation(line: 616, column: 25, scope: !2605)
!2612 = !DILocation(line: 617, column: 21, scope: !2605)
!2613 = !DILocation(line: 619, column: 9, scope: !1956)
!2614 = !DILocation(line: 625, column: 34, scope: !1974)
!2615 = !{!1324, !1326, i64 11824}
!2616 = !DILocation(line: 0, scope: !1974)
!2617 = !DILocation(line: 626, column: 19, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 626, column: 13)
!2619 = !DILocation(line: 626, column: 13, scope: !2618)
!2620 = !DILocation(line: 626, column: 13, scope: !1974)
!2621 = !DILocation(line: 0, scope: !1764, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 627, column: 13, scope: !2618)
!2623 = !DILocation(line: 341, column: 21, scope: !1764, inlinedAt: !2622)
!2624 = !DILocation(line: 341, column: 18, scope: !1764, inlinedAt: !2622)
!2625 = !DILocation(line: 341, column: 48, scope: !1764, inlinedAt: !2622)
!2626 = !DILocation(line: 341, column: 39, scope: !1764, inlinedAt: !2622)
!2627 = !DILocation(line: 342, column: 9, scope: !1764, inlinedAt: !2622)
!2628 = !DILocation(line: 344, column: 9, scope: !1780, inlinedAt: !2622)
!2629 = !DILocation(line: 344, column: 32, scope: !1780, inlinedAt: !2622)
!2630 = !DILocation(line: 344, column: 66, scope: !1780, inlinedAt: !2622)
!2631 = !DILocation(line: 344, column: 91, scope: !1780, inlinedAt: !2622)
!2632 = !DILocation(line: 345, column: 9, scope: !1780, inlinedAt: !2622)
!2633 = !DILocation(line: 345, column: 32, scope: !1780, inlinedAt: !2622)
!2634 = !DILocation(line: 345, column: 66, scope: !1780, inlinedAt: !2622)
!2635 = !DILocation(line: 345, column: 91, scope: !1780, inlinedAt: !2622)
!2636 = !DILocation(line: 346, column: 5, scope: !1780, inlinedAt: !2622)
!2637 = !DILocation(line: 349, column: 9, scope: !1791, inlinedAt: !2622)
!2638 = !DILocation(line: 349, column: 32, scope: !1791, inlinedAt: !2622)
!2639 = !DILocation(line: 349, column: 66, scope: !1791, inlinedAt: !2622)
!2640 = !DILocation(line: 349, column: 91, scope: !1791, inlinedAt: !2622)
!2641 = !DILocation(line: 350, column: 9, scope: !1791, inlinedAt: !2622)
!2642 = !DILocation(line: 350, column: 32, scope: !1791, inlinedAt: !2622)
!2643 = !DILocation(line: 350, column: 66, scope: !1791, inlinedAt: !2622)
!2644 = !DILocation(line: 350, column: 91, scope: !1791, inlinedAt: !2622)
!2645 = !DILocation(line: 351, column: 5, scope: !1791, inlinedAt: !2622)
!2646 = !DILocation(line: 354, column: 9, scope: !1802, inlinedAt: !2622)
!2647 = !DILocation(line: 354, column: 34, scope: !1802, inlinedAt: !2622)
!2648 = !DILocation(line: 355, column: 9, scope: !1802, inlinedAt: !2622)
!2649 = !DILocation(line: 355, column: 34, scope: !1802, inlinedAt: !2622)
!2650 = !DILocation(line: 630, column: 13, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 629, column: 9)
!2652 = !DILocation(line: 630, column: 38, scope: !2651)
!2653 = !DILocation(line: 631, column: 13, scope: !2651)
!2654 = !DILocation(line: 631, column: 38, scope: !2651)
!2655 = !DILocation(line: 636, column: 36, scope: !1907)
!2656 = !DILocation(line: 636, column: 68, scope: !1907)
!2657 = !{!1324, !1326, i64 20516}
!2658 = !DILocation(line: 636, column: 5, scope: !1907)
!2659 = !DILocation(line: 639, column: 11, scope: !1907)
!2660 = !DILocation(line: 639, column: 22, scope: !1907)
!2661 = !DILocation(line: 640, column: 15, scope: !1981)
!2662 = !DILocation(line: 640, column: 22, scope: !1981)
!2663 = !DILocation(line: 640, column: 9, scope: !1907)
!2664 = !DILocation(line: 655, column: 17, scope: !1985)
!2665 = !DILocation(line: 655, column: 16, scope: !1986)
!2666 = !DILocation(line: 644, column: 22, scope: !1977)
!2667 = !DILocation(line: 0, scope: !165, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 644, column: 22, scope: !1977)
!2669 = !DILocation(line: 417, column: 19, scope: !1390, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 128, column: 17, scope: !175, inlinedAt: !2668)
!2671 = !DILocation(line: 417, column: 33, scope: !1390, inlinedAt: !2670)
!2672 = !DILocation(line: 417, column: 17, scope: !1390, inlinedAt: !2670)
!2673 = !DILocation(line: 0, scope: !175, inlinedAt: !2668)
!2674 = !DILocation(line: 0, scope: !1977)
!2675 = !DILocation(line: 645, column: 57, scope: !1977)
!2676 = !DILocation(line: 645, column: 13, scope: !1977)
!2677 = !DILocation(line: 645, column: 55, scope: !1977)
!2678 = !DILocation(line: 646, column: 30, scope: !1977)
!2679 = !DILocation(line: 648, column: 26, scope: !1980)
!2680 = !DILocation(line: 649, column: 54, scope: !1980)
!2681 = !DILocation(line: 0, scope: !165, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 649, column: 54, scope: !1980)
!2683 = !DILocation(line: 417, column: 19, scope: !1390, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 128, column: 17, scope: !175, inlinedAt: !2682)
!2685 = !DILocation(line: 417, column: 33, scope: !1390, inlinedAt: !2684)
!2686 = !DILocation(line: 417, column: 17, scope: !1390, inlinedAt: !2684)
!2687 = !DILocation(line: 649, column: 9, scope: !1980)
!2688 = !DILocation(line: 649, column: 52, scope: !1980)
!2689 = !DILocation(line: 689, column: 42, scope: !1907)
!2690 = !DILocation(line: 650, column: 5, scope: !1980)
!2691 = !DILocation(line: 657, column: 30, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 656, column: 13)
!2693 = !DILocation(line: 657, column: 76, scope: !2692)
!2694 = !DILocation(line: 658, column: 30, scope: !2692)
!2695 = !DILocation(line: 658, column: 76, scope: !2692)
!2696 = !DILocation(line: 659, column: 13, scope: !2692)
!2697 = !DILocation(line: 660, column: 28, scope: !1984)
!2698 = !DILocation(line: 660, column: 22, scope: !1984)
!2699 = !DILocation(line: 660, column: 22, scope: !1985)
!2700 = !DILocation(line: 0, scope: !1983)
!2701 = !DILocation(line: 671, column: 26, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 670, column: 17)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 669, column: 17)
!2704 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 669, column: 17)
!2705 = !DILocation(line: 0, scope: !165, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 671, column: 26, scope: !2702)
!2707 = !DILocation(line: 417, column: 19, scope: !1390, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 128, column: 17, scope: !175, inlinedAt: !2706)
!2709 = !DILocation(line: 417, column: 33, scope: !1390, inlinedAt: !2708)
!2710 = !DILocation(line: 417, column: 17, scope: !1390, inlinedAt: !2708)
!2711 = !DILocation(line: 672, column: 69, scope: !2702)
!2712 = !DILocation(line: 672, column: 21, scope: !2702)
!2713 = !DILocation(line: 672, column: 67, scope: !2702)
!2714 = !DILocation(line: 673, column: 25, scope: !2702)
!2715 = !DILocation(line: 675, column: 34, scope: !1983)
!2716 = !DILocation(line: 662, column: 78, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 661, column: 13)
!2718 = !DILocation(line: 662, column: 88, scope: !2717)
!2719 = !DILocation(line: 662, column: 30, scope: !2717)
!2720 = !DILocation(line: 662, column: 76, scope: !2717)
!2721 = !DILocation(line: 663, column: 30, scope: !2717)
!2722 = !DILocation(line: 663, column: 76, scope: !2717)
!2723 = !DILocation(line: 664, column: 37, scope: !2717)
!2724 = !DILocation(line: 664, column: 34, scope: !2717)
!2725 = !DILocation(line: 665, column: 13, scope: !2717)
!2726 = !DILocation(line: 664, column: 47, scope: !2717)
!2727 = !DILocation(line: 675, column: 41, scope: !1983)
!2728 = !DILocation(line: 678, column: 9, scope: !1989)
!2729 = !DILocation(line: 678, column: 52, scope: !1989)
!2730 = !DILocation(line: 681, column: 18, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 681, column: 9)
!2732 = !{!1324, !1326, i64 124}
!2733 = !DILocation(line: 681, column: 9, scope: !2731)
!2734 = !DILocation(line: 681, column: 9, scope: !1907)
!2735 = !DILocation(line: 684, column: 20, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 682, column: 5)
!2737 = !DILocation(line: 685, column: 20, scope: !2736)
!2738 = !DILocation(line: 686, column: 5, scope: !2736)
!2739 = !DILocation(line: 689, column: 57, scope: !1907)
!2740 = !DILocation(line: 689, column: 70, scope: !1907)
!2741 = !DILocation(line: 689, column: 48, scope: !1907)
!2742 = !DILocation(line: 689, column: 76, scope: !1907)
!2743 = !DILocation(line: 689, column: 32, scope: !1907)
!2744 = !DILocation(line: 689, column: 11, scope: !1907)
!2745 = !DILocation(line: 689, column: 21, scope: !1907)
!2746 = !DILocation(line: 689, column: 5, scope: !1907)
!2747 = !DILocation(line: 689, column: 30, scope: !1907)
!2748 = !DILocation(line: 694, column: 9, scope: !1907)
!2749 = !DILocation(line: 696, column: 19, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 696, column: 13)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 695, column: 5)
!2752 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 694, column: 9)
!2753 = !DILocation(line: 696, column: 26, scope: !2750)
!2754 = !DILocation(line: 696, column: 34, scope: !2750)
!2755 = !DILocation(line: 696, column: 43, scope: !2750)
!2756 = !{!1324, !1326, i64 11788}
!2757 = !DILocation(line: 696, column: 55, scope: !2750)
!2758 = !DILocation(line: 696, column: 66, scope: !2750)
!2759 = !DILocation(line: 698, column: 25, scope: !2750)
!2760 = !DILocation(line: 698, column: 13, scope: !2750)
!2761 = !DILocation(line: 698, column: 85, scope: !2750)
!2762 = !DILocation(line: 698, column: 61, scope: !2750)
!2763 = !DILocation(line: 698, column: 58, scope: !2750)
!2764 = !DILocation(line: 699, column: 13, scope: !2750)
!2765 = !DILocation(line: 699, column: 16, scope: !2750)
!2766 = !DILocation(line: 699, column: 50, scope: !2750)
!2767 = !DILocation(line: 696, column: 13, scope: !2751)
!2768 = !DILocation(line: 701, column: 26, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 700, column: 9)
!2770 = !DILocation(line: 705, column: 38, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 705, column: 13)
!2772 = !DILocation(line: 705, column: 26, scope: !2771)
!2773 = !DILocation(line: 707, column: 26, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 706, column: 9)
!2775 = !DILocation(line: 708, column: 9, scope: !2774)
!2776 = !DILocation(line: 710, column: 1, scope: !1907)
!2777 = !DISubprogram(name: "x264_mb_mc", scope: !6, file: !6, line: 317, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1760)
!2778 = !DISubprogram(name: "x264_predict_8x8_filter", scope: !35, file: !35, line: 109, type: !2779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1760)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null, !398, !398, !168, !168}
!2781 = distinct !DISubprogram(name: "x264_macroblock_probe_skip", scope: !3, file: !3, line: 717, type: !2782, scopeLine: 718, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!168, !228, !168}
!2784 = !{!2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2801, !2802, !2806}
!2785 = !DILocalVariable(name: "h", arg: 1, scope: !2781, file: !3, line: 717, type: !228)
!2786 = !DILocalVariable(name: "b_bidir", arg: 2, scope: !2781, file: !3, line: 717, type: !168)
!2787 = !DILocalVariable(name: "dct4x4", scope: !2781, file: !3, line: 719, type: !1512, align: 128)
!2788 = !DILocalVariable(name: "dct2x2", scope: !2781, file: !3, line: 720, type: !1510, align: 128)
!2789 = !DILocalVariable(name: "dctscan", scope: !2781, file: !3, line: 721, type: !798, align: 128)
!2790 = !DILocalVariable(name: "i_qp", scope: !2781, file: !3, line: 723, type: !168)
!2791 = !DILocalVariable(name: "mvp", scope: !2781, file: !3, line: 724, type: !329)
!2792 = !DILocalVariable(name: "ch", scope: !2781, file: !3, line: 725, type: !168)
!2793 = !DILocalVariable(name: "thresh", scope: !2781, file: !3, line: 725, type: !168)
!2794 = !DILocalVariable(name: "i8x8", scope: !2781, file: !3, line: 727, type: !168)
!2795 = !DILocalVariable(name: "i4x4", scope: !2781, file: !3, line: 727, type: !168)
!2796 = !DILocalVariable(name: "i_decimate_mb", scope: !2781, file: !3, line: 728, type: !168)
!2797 = !DILocalVariable(name: "fenc_offset", scope: !2798, file: !3, line: 744, type: !168)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 743, column: 5)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 742, column: 5)
!2800 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 742, column: 5)
!2801 = !DILocalVariable(name: "fdec_offset", scope: !2798, file: !3, line: 745, type: !168)
!2802 = !DILocalVariable(name: "p_src", scope: !2803, file: !3, line: 768, type: !398)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 767, column: 5)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 766, column: 5)
!2805 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 766, column: 5)
!2806 = !DILocalVariable(name: "p_dst", scope: !2803, file: !3, line: 769, type: !398)
!2807 = !DILocation(line: 0, scope: !2781)
!2808 = !DILocation(line: 719, column: 5, scope: !2781)
!2809 = !DILocation(line: 720, column: 5, scope: !2781)
!2810 = !DILocation(line: 721, column: 5, scope: !2781)
!2811 = !DILocation(line: 723, column: 22, scope: !2781)
!2812 = !DILocation(line: 730, column: 10, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 730, column: 9)
!2814 = !DILocation(line: 730, column: 9, scope: !2781)
!2815 = !DILocation(line: 733, column: 42, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 731, column: 5)
!2817 = !DILocation(line: 733, column: 30, scope: !2816)
!2818 = !DILocation(line: 733, column: 61, scope: !2816)
!2819 = !DILocation(line: 733, column: 55, scope: !2816)
!2820 = !DILocation(line: 733, column: 78, scope: !2816)
!2821 = !DILocation(line: 733, column: 72, scope: !2816)
!2822 = !DILocation(line: 0, scope: !2037, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 733, column: 18, scope: !2816)
!2824 = !DILocation(line: 110, column: 17, scope: !2037, inlinedAt: !2823)
!2825 = !DILocation(line: 110, column: 14, scope: !2037, inlinedAt: !2823)
!2826 = !DILocation(line: 734, column: 30, scope: !2816)
!2827 = !DILocation(line: 734, column: 55, scope: !2816)
!2828 = !DILocation(line: 734, column: 72, scope: !2816)
!2829 = !DILocation(line: 0, scope: !2037, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 734, column: 18, scope: !2816)
!2831 = !DILocation(line: 110, column: 17, scope: !2037, inlinedAt: !2830)
!2832 = !DILocation(line: 110, column: 14, scope: !2037, inlinedAt: !2830)
!2833 = !DILocation(line: 737, column: 12, scope: !2816)
!2834 = !DILocation(line: 737, column: 15, scope: !2816)
!2835 = !DILocation(line: 737, column: 34, scope: !2816)
!2836 = !DILocation(line: 737, column: 24, scope: !2816)
!2837 = !DILocation(line: 738, column: 34, scope: !2816)
!2838 = !DILocation(line: 738, column: 58, scope: !2816)
!2839 = !DILocation(line: 738, column: 48, scope: !2816)
!2840 = !DILocation(line: 737, column: 9, scope: !2816)
!2841 = !DILocation(line: 740, column: 5, scope: !2816)
!2842 = !DILocation(line: 742, column: 5, scope: !2800)
!2843 = !DILocation(line: 744, column: 36, scope: !2798)
!2844 = !DILocation(line: 744, column: 47, scope: !2798)
!2845 = !DILocation(line: 744, column: 66, scope: !2798)
!2846 = !DILocation(line: 744, column: 40, scope: !2798)
!2847 = !DILocation(line: 0, scope: !2798)
!2848 = !DILocation(line: 745, column: 66, scope: !2798)
!2849 = !DILocation(line: 745, column: 40, scope: !2798)
!2850 = !DILocation(line: 747, column: 17, scope: !2798)
!2851 = !DILocation(line: 747, column: 37, scope: !2798)
!2852 = !DILocation(line: 747, column: 57, scope: !2798)
!2853 = !DILocation(line: 748, column: 37, scope: !2798)
!2854 = !DILocation(line: 748, column: 57, scope: !2798)
!2855 = !DILocation(line: 747, column: 9, scope: !2798)
!2856 = !DILocation(line: 752, column: 23, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 751, column: 9)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 750, column: 9)
!2859 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 750, column: 9)
!2860 = !DILocation(line: 752, column: 48, scope: !2857)
!2861 = !DILocation(line: 752, column: 77, scope: !2857)
!2862 = !DILocation(line: 752, column: 13, scope: !2857)
!2863 = !DILocation(line: 0, scope: !165, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 753, column: 18, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 753, column: 17)
!2866 = !DILocation(line: 417, column: 19, scope: !1390, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 128, column: 17, scope: !175, inlinedAt: !2864)
!2868 = !DILocation(line: 417, column: 33, scope: !1390, inlinedAt: !2867)
!2869 = !DILocation(line: 417, column: 17, scope: !1390, inlinedAt: !2867)
!2870 = !DILocation(line: 753, column: 17, scope: !2857)
!2871 = !DILocation(line: 755, column: 24, scope: !2857)
!2872 = !DILocation(line: 755, column: 13, scope: !2857)
!2873 = !DILocation(line: 756, column: 40, scope: !2857)
!2874 = !DILocation(line: 756, column: 30, scope: !2857)
!2875 = !DILocation(line: 756, column: 27, scope: !2857)
!2876 = !DILocation(line: 757, column: 31, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 757, column: 17)
!2878 = !DILocation(line: 757, column: 17, scope: !2857)
!2879 = !DILocation(line: 0, scope: !2800)
!2880 = !DILocation(line: 742, column: 53, scope: !2799)
!2881 = !DILocation(line: 742, column: 44, scope: !2799)
!2882 = distinct !{!2882, !2842, !2883, !1718}
!2883 = !DILocation(line: 760, column: 5, scope: !2800)
!2884 = !DILocation(line: 763, column: 18, scope: !2781)
!2885 = !DILocation(line: 764, column: 15, scope: !2781)
!2886 = !DILocation(line: 764, column: 38, scope: !2781)
!2887 = !DILocation(line: 764, column: 44, scope: !2781)
!2888 = !DILocation(line: 766, column: 5, scope: !2805)
!2889 = !DILocation(line: 768, column: 45, scope: !2803)
!2890 = !DILocation(line: 768, column: 27, scope: !2803)
!2891 = !DILocation(line: 0, scope: !2803)
!2892 = !DILocation(line: 769, column: 27, scope: !2803)
!2893 = !DILocation(line: 771, column: 13, scope: !2803)
!2894 = !DILocation(line: 773, column: 19, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 772, column: 9)
!2896 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 771, column: 13)
!2897 = !DILocation(line: 774, column: 54, scope: !2895)
!2898 = !DILocation(line: 774, column: 30, scope: !2895)
!2899 = !DILocation(line: 774, column: 60, scope: !2895)
!2900 = !DILocation(line: 773, column: 13, scope: !2895)
!2901 = !DILocation(line: 776, column: 9, scope: !2895)
!2902 = !DILocation(line: 780, column: 13, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 780, column: 13)
!2904 = !DILocation(line: 780, column: 78, scope: !2903)
!2905 = !DILocation(line: 780, column: 13, scope: !2803)
!2906 = !DILocation(line: 783, column: 17, scope: !2803)
!2907 = !DILocation(line: 783, column: 9, scope: !2803)
!2908 = !DILocation(line: 0, scope: !1560, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 786, column: 9, scope: !2803)
!2910 = !DILocation(line: 61, column: 14, scope: !1560, inlinedAt: !2909)
!2911 = !DILocation(line: 61, column: 32, scope: !1560, inlinedAt: !2909)
!2912 = !DILocation(line: 61, column: 30, scope: !1560, inlinedAt: !2909)
!2913 = !DILocation(line: 62, column: 14, scope: !1560, inlinedAt: !2909)
!2914 = !DILocation(line: 62, column: 32, scope: !1560, inlinedAt: !2909)
!2915 = !DILocation(line: 62, column: 30, scope: !1560, inlinedAt: !2909)
!2916 = !DILocation(line: 63, column: 30, scope: !1560, inlinedAt: !2909)
!2917 = !DILocation(line: 64, column: 30, scope: !1560, inlinedAt: !2909)
!2918 = !DILocation(line: 65, column: 18, scope: !1560, inlinedAt: !2909)
!2919 = !DILocation(line: 65, column: 15, scope: !1560, inlinedAt: !2909)
!2920 = !DILocation(line: 65, column: 13, scope: !1560, inlinedAt: !2909)
!2921 = !DILocation(line: 66, column: 18, scope: !1560, inlinedAt: !2909)
!2922 = !DILocation(line: 66, column: 15, scope: !1560, inlinedAt: !2909)
!2923 = !DILocation(line: 66, column: 13, scope: !1560, inlinedAt: !2909)
!2924 = !DILocation(line: 67, column: 18, scope: !1560, inlinedAt: !2909)
!2925 = !DILocation(line: 67, column: 15, scope: !1560, inlinedAt: !2909)
!2926 = !DILocation(line: 67, column: 13, scope: !1560, inlinedAt: !2909)
!2927 = !DILocation(line: 68, column: 18, scope: !1560, inlinedAt: !2909)
!2928 = !DILocation(line: 68, column: 15, scope: !1560, inlinedAt: !2909)
!2929 = !DILocation(line: 68, column: 13, scope: !1560, inlinedAt: !2909)
!2930 = !DILocation(line: 69, column: 21, scope: !1560, inlinedAt: !2909)
!2931 = !DILocation(line: 70, column: 21, scope: !1560, inlinedAt: !2909)
!2932 = !DILocation(line: 71, column: 21, scope: !1560, inlinedAt: !2909)
!2933 = !DILocation(line: 72, column: 21, scope: !1560, inlinedAt: !2909)
!2934 = !DILocation(line: 787, column: 19, scope: !2803)
!2935 = !DILocation(line: 787, column: 41, scope: !2803)
!2936 = !DILocation(line: 787, column: 76, scope: !2803)
!2937 = !DILocation(line: 787, column: 108, scope: !2803)
!2938 = !DILocation(line: 787, column: 9, scope: !2803)
!2939 = !DILocation(line: 0, scope: !165, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 788, column: 13, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 788, column: 13)
!2942 = !DILocation(line: 413, column: 18, scope: !1392, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 128, column: 17, scope: !175, inlinedAt: !2940)
!2944 = !DILocation(line: 413, column: 17, scope: !1392, inlinedAt: !2943)
!2945 = !DILocation(line: 788, column: 13, scope: !2803)
!2946 = !DILocation(line: 794, column: 23, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !3, line: 793, column: 9)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 792, column: 9)
!2949 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 792, column: 9)
!2950 = !DILocation(line: 794, column: 48, scope: !2947)
!2951 = !DILocation(line: 794, column: 77, scope: !2947)
!2952 = !DILocation(line: 794, column: 13, scope: !2947)
!2953 = !DILocation(line: 0, scope: !165, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 795, column: 18, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 795, column: 17)
!2956 = !DILocation(line: 417, column: 19, scope: !1390, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 128, column: 17, scope: !175, inlinedAt: !2954)
!2958 = !DILocation(line: 417, column: 33, scope: !1390, inlinedAt: !2957)
!2959 = !DILocation(line: 417, column: 17, scope: !1390, inlinedAt: !2957)
!2960 = !DILocation(line: 795, column: 17, scope: !2947)
!2961 = !DILocation(line: 797, column: 24, scope: !2947)
!2962 = !DILocation(line: 797, column: 13, scope: !2947)
!2963 = !DILocation(line: 798, column: 40, scope: !2947)
!2964 = !DILocation(line: 798, column: 30, scope: !2947)
!2965 = !DILocation(line: 799, column: 31, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 799, column: 17)
!2967 = !DILocation(line: 799, column: 17, scope: !2947)
!2968 = !DILocation(line: 0, scope: !2949)
!2969 = !DILocation(line: 798, column: 27, scope: !2947)
!2970 = distinct !{!2970, !2888, !2971, !1718}
!2971 = !DILocation(line: 802, column: 5, scope: !2805)
!2972 = !DILocation(line: 804, column: 11, scope: !2781)
!2973 = !DILocation(line: 804, column: 21, scope: !2781)
!2974 = !DILocation(line: 805, column: 5, scope: !2781)
!2975 = !DILocation(line: 806, column: 1, scope: !2781)
!2976 = distinct !DISubprogram(name: "x264_noise_reduction_update", scope: !3, file: !3, line: 813, type: !1908, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2977)
!2977 = !{!2978, !2979, !2980, !2981, !2985}
!2978 = !DILocalVariable(name: "h", arg: 1, scope: !2976, file: !3, line: 813, type: !228)
!2979 = !DILocalVariable(name: "cat", scope: !2976, file: !3, line: 815, type: !168)
!2980 = !DILocalVariable(name: "i", scope: !2976, file: !3, line: 815, type: !168)
!2981 = !DILocalVariable(name: "size", scope: !2982, file: !3, line: 818, type: !168)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 817, column: 5)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 816, column: 5)
!2984 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 816, column: 5)
!2985 = !DILocalVariable(name: "weight", scope: !2982, file: !3, line: 819, type: !2986)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!2987 = !DILocation(line: 0, scope: !2976)
!2988 = !{!1324, !1326, i64 444}
!2989 = !DILocation(line: 0, scope: !2982)
!2990 = !DILocation(line: 821, column: 13, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 821, column: 13)
!2992 = !DILocation(line: 821, column: 30, scope: !2991)
!2993 = !DILocation(line: 821, column: 13, scope: !2982)
!2994 = !DILocation(line: 831, column: 20, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 828, column: 9)
!2996 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 828, column: 9)
!2997 = !DILocation(line: 824, column: 44, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 823, column: 13)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 823, column: 13)
!3000 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 822, column: 9)
!3001 = !DILocation(line: 824, column: 17, scope: !2998)
!3002 = !DILocation(line: 825, column: 30, scope: !3000)
!3003 = !DILocation(line: 826, column: 9, scope: !3000)
!3004 = !DILocation(line: 831, column: 46, scope: !2995)
!3005 = !DILocation(line: 831, column: 18, scope: !2995)
!3006 = !DILocation(line: 832, column: 18, scope: !2995)
!3007 = !DILocation(line: 832, column: 55, scope: !2995)
!3008 = !DILocation(line: 832, column: 66, scope: !2995)
!3009 = !DILocation(line: 832, column: 71, scope: !2995)
!3010 = !DILocation(line: 832, column: 15, scope: !2995)
!3011 = !DILocation(line: 830, column: 17, scope: !2995)
!3012 = !DILocation(line: 829, column: 13, scope: !2995)
!3013 = !DILocation(line: 829, column: 34, scope: !2995)
!3014 = !DILocation(line: 828, column: 9, scope: !2996)
!3015 = !DILocation(line: 832, column: 57, scope: !2995)
!3016 = !DILocation(line: 828, column: 32, scope: !2995)
!3017 = !DILocation(line: 828, column: 23, scope: !2995)
!3018 = distinct !{!3018, !3014, !3019, !1718}
!3019 = !DILocation(line: 832, column: 74, scope: !2996)
!3020 = !DILocation(line: 834, column: 1, scope: !2976)
!3021 = distinct !DISubprogram(name: "x264_macroblock_encode_p8x8", scope: !3, file: !3, line: 840, type: !1765, scopeLine: 841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3022)
!3022 = !{!3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3034, !3038, !3040, !3041, !3044}
!3023 = !DILocalVariable(name: "h", arg: 1, scope: !3021, file: !3, line: 840, type: !228)
!3024 = !DILocalVariable(name: "i8", arg: 2, scope: !3021, file: !3, line: 840, type: !168)
!3025 = !DILocalVariable(name: "i_qp", scope: !3021, file: !3, line: 842, type: !168)
!3026 = !DILocalVariable(name: "p_fenc", scope: !3021, file: !3, line: 843, type: !398)
!3027 = !DILocalVariable(name: "p_fdec", scope: !3021, file: !3, line: 844, type: !398)
!3028 = !DILocalVariable(name: "b_decimate", scope: !3021, file: !3, line: 845, type: !168)
!3029 = !DILocalVariable(name: "nnz8x8", scope: !3021, file: !3, line: 846, type: !168)
!3030 = !DILocalVariable(name: "ch", scope: !3021, file: !3, line: 847, type: !168)
!3031 = !DILocalVariable(name: "i4", scope: !3032, file: !3, line: 853, type: !168)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 852, column: 5)
!3033 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 851, column: 9)
!3034 = !DILocalVariable(name: "dct8x8", scope: !3035, file: !3, line: 881, type: !1206, align: 128)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 880, column: 9)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 879, column: 13)
!3037 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 878, column: 5)
!3038 = !DILocalVariable(name: "i4", scope: !3039, file: !3, line: 899, type: !168)
!3039 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 898, column: 9)
!3040 = !DILocalVariable(name: "dct4x4", scope: !3039, file: !3, line: 900, type: !1512, align: 128)
!3041 = !DILocalVariable(name: "i_decimate_8x8", scope: !3042, file: !3, line: 910, type: !168)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 909, column: 13)
!3043 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 908, column: 17)
!3044 = !DILocalVariable(name: "dct4x4", scope: !3045, file: !3, line: 930, type: !1184, align: 128)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 929, column: 9)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 928, column: 9)
!3047 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 928, column: 9)
!3048 = !DILocation(line: 0, scope: !3021)
!3049 = !DILocation(line: 842, column: 22, scope: !3021)
!3050 = !DILocation(line: 843, column: 33, scope: !3021)
!3051 = !DILocation(line: 843, column: 23, scope: !3021)
!3052 = !DILocation(line: 843, column: 48, scope: !3021)
!3053 = !DILocation(line: 843, column: 51, scope: !3021)
!3054 = !DILocation(line: 843, column: 43, scope: !3021)
!3055 = !DILocation(line: 843, column: 59, scope: !3021)
!3056 = !DILocation(line: 843, column: 65, scope: !3021)
!3057 = !DILocation(line: 843, column: 54, scope: !3021)
!3058 = !DILocation(line: 844, column: 33, scope: !3021)
!3059 = !DILocation(line: 844, column: 23, scope: !3021)
!3060 = !DILocation(line: 844, column: 43, scope: !3021)
!3061 = !DILocation(line: 844, column: 65, scope: !3021)
!3062 = !DILocation(line: 844, column: 54, scope: !3021)
!3063 = !DILocation(line: 845, column: 28, scope: !3021)
!3064 = !DILocation(line: 845, column: 35, scope: !3021)
!3065 = !DILocation(line: 845, column: 51, scope: !3021)
!3066 = !DILocation(line: 845, column: 71, scope: !3021)
!3067 = !DILocation(line: 849, column: 5, scope: !3021)
!3068 = !DILocation(line: 851, column: 15, scope: !3033)
!3069 = !DILocation(line: 851, column: 9, scope: !3033)
!3070 = !DILocation(line: 0, scope: !3033)
!3071 = !DILocation(line: 851, column: 9, scope: !3021)
!3072 = !DILocation(line: 854, column: 13, scope: !3032)
!3073 = !DILocation(line: 856, column: 24, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 855, column: 9)
!3075 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 854, column: 13)
!3076 = !DILocation(line: 856, column: 33, scope: !3074)
!3077 = !DILocation(line: 856, column: 13, scope: !3074)
!3078 = !DILocation(line: 0, scope: !165, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 857, column: 22, scope: !3074)
!3080 = !DILocation(line: 0, scope: !174, inlinedAt: !3079)
!3081 = !DILocation(line: 104, column: 9, scope: !174, inlinedAt: !3079)
!3082 = !DILocation(line: 126, column: 17, scope: !174, inlinedAt: !3079)
!3083 = !DILocation(line: 858, column: 9, scope: !3074)
!3084 = !DILocation(line: 861, column: 25, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 861, column: 13)
!3086 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 860, column: 9)
!3087 = !DILocation(line: 0, scope: !3032)
!3088 = !DILocation(line: 861, column: 13, scope: !3085)
!3089 = !DILocation(line: 863, column: 28, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 862, column: 13)
!3091 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 861, column: 13)
!3092 = !DILocation(line: 863, column: 37, scope: !3090)
!3093 = !DILocation(line: 864, column: 37, scope: !3090)
!3094 = !DILocation(line: 864, column: 57, scope: !3090)
!3095 = !DILocation(line: 864, column: 56, scope: !3090)
!3096 = !DILocation(line: 865, column: 37, scope: !3090)
!3097 = !DILocation(line: 865, column: 57, scope: !3090)
!3098 = !DILocation(line: 865, column: 56, scope: !3090)
!3099 = !DILocation(line: 863, column: 17, scope: !3090)
!3100 = !DILocation(line: 0, scope: !165, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 866, column: 27, scope: !3090)
!3102 = !DILocation(line: 861, column: 44, scope: !3091)
!3103 = !DILocation(line: 417, column: 19, scope: !1390, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 128, column: 17, scope: !175, inlinedAt: !3101)
!3105 = !DILocation(line: 866, column: 24, scope: !3090)
!3106 = !DILocation(line: 869, column: 9, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 869, column: 9)
!3108 = !DILocation(line: 871, column: 22, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 870, column: 9)
!3110 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 869, column: 9)
!3111 = !DILocation(line: 871, column: 45, scope: !3109)
!3112 = !DILocation(line: 871, column: 56, scope: !3109)
!3113 = !DILocation(line: 872, column: 22, scope: !3109)
!3114 = !DILocation(line: 872, column: 45, scope: !3109)
!3115 = !DILocation(line: 872, column: 56, scope: !3109)
!3116 = !DILocation(line: 873, column: 24, scope: !3109)
!3117 = !DILocation(line: 873, column: 33, scope: !3109)
!3118 = !DILocation(line: 873, column: 13, scope: !3109)
!3119 = !DILocation(line: 874, column: 43, scope: !3109)
!3120 = !DILocation(line: 873, column: 53, scope: !3109)
!3121 = !DILocation(line: 950, column: 29, scope: !3021)
!3122 = !DILocation(line: 879, column: 13, scope: !3037)
!3123 = !DILocation(line: 881, column: 13, scope: !3035)
!3124 = !DILocation(line: 882, column: 21, scope: !3035)
!3125 = !DILocation(line: 882, column: 13, scope: !3035)
!3126 = !DILocation(line: 0, scope: !1459, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 883, column: 13, scope: !3035)
!3128 = !DILocation(line: 87, column: 15, scope: !1471, inlinedAt: !3127)
!3129 = !DILocation(line: 87, column: 9, scope: !1471, inlinedAt: !3127)
!3130 = !DILocation(line: 87, column: 9, scope: !1459, inlinedAt: !3127)
!3131 = !DILocation(line: 88, column: 9, scope: !1471, inlinedAt: !3127)
!3132 = !DILocation(line: 90, column: 12, scope: !1471, inlinedAt: !3127)
!3133 = !DILocation(line: 90, column: 19, scope: !1471, inlinedAt: !3127)
!3134 = !DILocation(line: 90, column: 35, scope: !1471, inlinedAt: !3127)
!3135 = !DILocation(line: 90, column: 68, scope: !1471, inlinedAt: !3127)
!3136 = !DILocation(line: 90, column: 9, scope: !1471, inlinedAt: !3127)
!3137 = !DILocation(line: 884, column: 16, scope: !3035)
!3138 = !DILocation(line: 884, column: 24, scope: !3035)
!3139 = !DILocation(line: 884, column: 34, scope: !3035)
!3140 = !DILocation(line: 884, column: 13, scope: !3035)
!3141 = !DILocation(line: 886, column: 28, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 886, column: 17)
!3143 = !DILocation(line: 886, column: 38, scope: !3142)
!3144 = !DILocation(line: 886, column: 32, scope: !3142)
!3145 = !DILocation(line: 886, column: 17, scope: !3035)
!3146 = !DILocation(line: 0, scope: !165, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 889, column: 26, scope: !3142)
!3148 = !DILocation(line: 0, scope: !174, inlinedAt: !3147)
!3149 = !DILocation(line: 104, column: 9, scope: !174, inlinedAt: !3147)
!3150 = !DILocation(line: 126, column: 17, scope: !174, inlinedAt: !3147)
!3151 = !DILocation(line: 891, column: 17, scope: !3035)
!3152 = !DILocation(line: 887, column: 41, scope: !3142)
!3153 = !DILocation(line: 887, column: 31, scope: !3142)
!3154 = !DILocation(line: 887, column: 28, scope: !3142)
!3155 = !DILocation(line: 893, column: 27, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 892, column: 13)
!3157 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 891, column: 17)
!3158 = !DILocation(line: 893, column: 48, scope: !3156)
!3159 = !DILocation(line: 893, column: 17, scope: !3156)
!3160 = !DILocation(line: 894, column: 25, scope: !3156)
!3161 = !DILocation(line: 894, column: 17, scope: !3156)
!3162 = !DILocation(line: 895, column: 13, scope: !3156)
!3163 = !DILocation(line: 896, column: 9, scope: !3036)
!3164 = !DILocation(line: 896, column: 9, scope: !3035)
!3165 = !DILocation(line: 900, column: 13, scope: !3039)
!3166 = !DILocation(line: 901, column: 21, scope: !3039)
!3167 = !DILocation(line: 901, column: 13, scope: !3039)
!3168 = !DILocation(line: 0, scope: !3039)
!3169 = !DILocation(line: 0, scope: !1363, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 903, column: 17, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 902, column: 13)
!3172 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 902, column: 13)
!3173 = !DILocation(line: 78, column: 15, scope: !1376, inlinedAt: !3170)
!3174 = !DILocation(line: 78, column: 9, scope: !1376, inlinedAt: !3170)
!3175 = !DILocation(line: 78, column: 9, scope: !1363, inlinedAt: !3170)
!3176 = !DILocation(line: 79, column: 9, scope: !1376, inlinedAt: !3170)
!3177 = !DILocation(line: 81, column: 19, scope: !1376, inlinedAt: !3170)
!3178 = !DILocation(line: 81, column: 35, scope: !1376, inlinedAt: !3170)
!3179 = !DILocation(line: 81, column: 68, scope: !1376, inlinedAt: !3170)
!3180 = !DILocation(line: 81, column: 9, scope: !1376, inlinedAt: !3170)
!3181 = !DILocation(line: 903, column: 36, scope: !3171)
!3182 = !DILocation(line: 903, column: 75, scope: !3171)
!3183 = !DILocation(line: 905, column: 13, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 905, column: 13)
!3185 = !DILocation(line: 906, column: 28, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 905, column: 13)
!3187 = !DILocation(line: 906, column: 38, scope: !3186)
!3188 = !DILocation(line: 906, column: 17, scope: !3186)
!3189 = !DILocation(line: 906, column: 57, scope: !3186)
!3190 = !DILocation(line: 908, column: 17, scope: !3039)
!3191 = !DILocation(line: 0, scope: !3042)
!3192 = !DILocation(line: 911, column: 17, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 911, column: 17)
!3194 = !DILocation(line: 912, column: 49, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 911, column: 17)
!3196 = !DILocation(line: 912, column: 86, scope: !3195)
!3197 = !DILocation(line: 912, column: 67, scope: !3195)
!3198 = !DILocation(line: 912, column: 39, scope: !3195)
!3199 = !DILocation(line: 912, column: 36, scope: !3195)
!3200 = !DILocation(line: 911, column: 62, scope: !3195)
!3201 = !DILocation(line: 911, column: 33, scope: !3195)
!3202 = !DILocation(line: 911, column: 37, scope: !3195)
!3203 = distinct !{!3203, !3192, !3204, !1718}
!3204 = !DILocation(line: 912, column: 91, scope: !3193)
!3205 = !DILocation(line: 913, column: 28, scope: !3042)
!3206 = !DILocation(line: 918, column: 17, scope: !3039)
!3207 = !DILocation(line: 0, scope: !165, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 916, column: 26, scope: !3043)
!3209 = !DILocation(line: 0, scope: !174, inlinedAt: !3208)
!3210 = !DILocation(line: 104, column: 9, scope: !174, inlinedAt: !3208)
!3211 = !DILocation(line: 126, column: 17, scope: !174, inlinedAt: !3208)
!3212 = !DILocation(line: 921, column: 31, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 920, column: 17)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 920, column: 17)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 919, column: 13)
!3216 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 918, column: 17)
!3217 = !DILocation(line: 921, column: 56, scope: !3213)
!3218 = !DILocation(line: 921, column: 21, scope: !3213)
!3219 = !DILocation(line: 922, column: 25, scope: !3215)
!3220 = !DILocation(line: 922, column: 17, scope: !3215)
!3221 = !DILocation(line: 923, column: 13, scope: !3215)
!3222 = !DILocation(line: 924, column: 9, scope: !3036)
!3223 = !DILocation(line: 926, column: 22, scope: !3037)
!3224 = !DILocation(line: 928, column: 9, scope: !3047)
!3225 = !DILocation(line: 930, column: 13, scope: !3045)
!3226 = !DILocation(line: 931, column: 22, scope: !3045)
!3227 = !DILocation(line: 931, column: 45, scope: !3045)
!3228 = !DILocation(line: 931, column: 56, scope: !3045)
!3229 = !DILocation(line: 932, column: 22, scope: !3045)
!3230 = !DILocation(line: 932, column: 45, scope: !3045)
!3231 = !DILocation(line: 932, column: 56, scope: !3045)
!3232 = !DILocation(line: 934, column: 21, scope: !3045)
!3233 = !DILocation(line: 934, column: 13, scope: !3045)
!3234 = !DILocation(line: 935, column: 26, scope: !3045)
!3235 = !DILocation(line: 937, column: 23, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 937, column: 17)
!3237 = !DILocation(line: 937, column: 17, scope: !3236)
!3238 = !DILocation(line: 937, column: 17, scope: !3045)
!3239 = !DILocation(line: 938, column: 17, scope: !3236)
!3240 = !DILocation(line: 940, column: 27, scope: !3236)
!3241 = !DILocation(line: 940, column: 46, scope: !3236)
!3242 = !DILocation(line: 940, column: 75, scope: !3236)
!3243 = !DILocation(line: 940, column: 17, scope: !3236)
!3244 = !DILocation(line: 942, column: 24, scope: !3045)
!3245 = !DILocation(line: 942, column: 34, scope: !3045)
!3246 = !DILocation(line: 942, column: 13, scope: !3045)
!3247 = !DILocation(line: 0, scope: !165, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 943, column: 17, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 943, column: 17)
!3250 = !DILocation(line: 417, column: 19, scope: !1390, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 128, column: 17, scope: !175, inlinedAt: !3248)
!3252 = !DILocation(line: 417, column: 33, scope: !1390, inlinedAt: !3251)
!3253 = !DILocation(line: 417, column: 17, scope: !1390, inlinedAt: !3251)
!3254 = !DILocation(line: 943, column: 17, scope: !3045)
!3255 = !DILocation(line: 945, column: 27, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 944, column: 13)
!3257 = !DILocation(line: 945, column: 48, scope: !3256)
!3258 = !DILocation(line: 945, column: 17, scope: !3256)
!3259 = !DILocation(line: 946, column: 25, scope: !3256)
!3260 = !DILocation(line: 946, column: 17, scope: !3256)
!3261 = !DILocation(line: 947, column: 13, scope: !3256)
!3262 = !DILocation(line: 948, column: 9, scope: !3046)
!3263 = !DILocation(line: 942, column: 54, scope: !3045)
!3264 = !DILocation(line: 950, column: 25, scope: !3021)
!3265 = !DILocation(line: 950, column: 11, scope: !3021)
!3266 = !DILocation(line: 950, column: 22, scope: !3021)
!3267 = !DILocation(line: 951, column: 32, scope: !3021)
!3268 = !DILocation(line: 951, column: 22, scope: !3021)
!3269 = !DILocation(line: 952, column: 11, scope: !3021)
!3270 = !DILocation(line: 952, column: 24, scope: !3021)
!3271 = !DILocation(line: 953, column: 1, scope: !3021)
!3272 = !DISubprogram(name: "x264_mb_mc_8x8", scope: !6, file: !6, line: 318, type: !1765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1760)
!3273 = distinct !DISubprogram(name: "x264_macroblock_encode_p4x4", scope: !3, file: !3, line: 958, type: !1765, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3274)
!3274 = !{!3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283}
!3275 = !DILocalVariable(name: "h", arg: 1, scope: !3273, file: !3, line: 958, type: !228)
!3276 = !DILocalVariable(name: "i4", arg: 2, scope: !3273, file: !3, line: 958, type: !168)
!3277 = !DILocalVariable(name: "i_qp", scope: !3273, file: !3, line: 960, type: !168)
!3278 = !DILocalVariable(name: "p_fenc", scope: !3273, file: !3, line: 961, type: !398)
!3279 = !DILocalVariable(name: "p_fdec", scope: !3273, file: !3, line: 962, type: !398)
!3280 = !DILocalVariable(name: "i_ref", scope: !3273, file: !3, line: 963, type: !200)
!3281 = !DILocalVariable(name: "mvx", scope: !3273, file: !3, line: 964, type: !200)
!3282 = !DILocalVariable(name: "mvy", scope: !3273, file: !3, line: 965, type: !200)
!3283 = !DILocalVariable(name: "dct4x4", scope: !3284, file: !3, line: 973, type: !1184, align: 128)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 972, column: 5)
!3285 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 969, column: 9)
!3286 = !DILocation(line: 0, scope: !3273)
!3287 = !DILocation(line: 960, column: 22, scope: !3273)
!3288 = !DILocation(line: 961, column: 34, scope: !3273)
!3289 = !DILocation(line: 961, column: 24, scope: !3273)
!3290 = !DILocation(line: 961, column: 44, scope: !3273)
!3291 = !DILocation(line: 962, column: 34, scope: !3273)
!3292 = !DILocation(line: 962, column: 24, scope: !3273)
!3293 = !DILocation(line: 962, column: 44, scope: !3273)
!3294 = !DILocation(line: 963, column: 35, scope: !3273)
!3295 = !DILocation(line: 963, column: 42, scope: !3273)
!3296 = !DILocation(line: 963, column: 23, scope: !3273)
!3297 = !DILocation(line: 964, column: 47, scope: !3273)
!3298 = !DILocation(line: 964, column: 35, scope: !3273)
!3299 = !DILocation(line: 964, column: 79, scope: !3273)
!3300 = !DILocation(line: 964, column: 73, scope: !3273)
!3301 = !DILocation(line: 964, column: 96, scope: !3273)
!3302 = !DILocation(line: 964, column: 90, scope: !3273)
!3303 = !DILocation(line: 0, scope: !2037, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 964, column: 23, scope: !3273)
!3305 = !DILocation(line: 110, column: 17, scope: !2037, inlinedAt: !3304)
!3306 = !DILocation(line: 110, column: 14, scope: !2037, inlinedAt: !3304)
!3307 = !DILocation(line: 965, column: 35, scope: !3273)
!3308 = !DILocation(line: 965, column: 73, scope: !3273)
!3309 = !DILocation(line: 965, column: 90, scope: !3273)
!3310 = !DILocation(line: 0, scope: !2037, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 965, column: 23, scope: !3273)
!3312 = !DILocation(line: 110, column: 17, scope: !2037, inlinedAt: !3311)
!3313 = !DILocation(line: 110, column: 14, scope: !2037, inlinedAt: !3311)
!3314 = !DILocation(line: 967, column: 8, scope: !3273)
!3315 = !DILocation(line: 967, column: 11, scope: !3273)
!3316 = !DILocation(line: 967, column: 51, scope: !3273)
!3317 = !DILocation(line: 967, column: 41, scope: !3273)
!3318 = !DILocation(line: 967, column: 79, scope: !3273)
!3319 = !DILocation(line: 967, column: 69, scope: !3273)
!3320 = !DILocation(line: 967, column: 102, scope: !3273)
!3321 = !DILocation(line: 967, column: 101, scope: !3273)
!3322 = !DILocation(line: 967, column: 96, scope: !3273)
!3323 = !DILocation(line: 967, column: 129, scope: !3273)
!3324 = !DILocation(line: 967, column: 128, scope: !3273)
!3325 = !DILocation(line: 967, column: 123, scope: !3273)
!3326 = !DILocation(line: 967, column: 5, scope: !3273)
!3327 = !DILocation(line: 969, column: 15, scope: !3285)
!3328 = !DILocation(line: 969, column: 9, scope: !3285)
!3329 = !DILocation(line: 969, column: 9, scope: !3273)
!3330 = !DILocation(line: 970, column: 20, scope: !3285)
!3331 = !DILocation(line: 970, column: 29, scope: !3285)
!3332 = !DILocation(line: 970, column: 9, scope: !3285)
!3333 = !DILocation(line: 973, column: 9, scope: !3284)
!3334 = !DILocation(line: 974, column: 12, scope: !3284)
!3335 = !DILocation(line: 974, column: 17, scope: !3284)
!3336 = !DILocation(line: 974, column: 9, scope: !3284)
!3337 = !DILocation(line: 0, scope: !1363, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 975, column: 9, scope: !3284)
!3339 = !DILocation(line: 78, column: 15, scope: !1376, inlinedAt: !3338)
!3340 = !DILocation(line: 78, column: 9, scope: !1376, inlinedAt: !3338)
!3341 = !DILocation(line: 78, column: 9, scope: !1363, inlinedAt: !3338)
!3342 = !DILocation(line: 79, column: 9, scope: !1376, inlinedAt: !3338)
!3343 = !DILocation(line: 81, column: 19, scope: !1376, inlinedAt: !3338)
!3344 = !DILocation(line: 81, column: 35, scope: !1376, inlinedAt: !3338)
!3345 = !DILocation(line: 81, column: 68, scope: !1376, inlinedAt: !3338)
!3346 = !DILocation(line: 81, column: 9, scope: !1376, inlinedAt: !3338)
!3347 = !DILocation(line: 976, column: 20, scope: !3284)
!3348 = !DILocation(line: 976, column: 30, scope: !3284)
!3349 = !DILocation(line: 976, column: 9, scope: !3284)
!3350 = !DILocation(line: 0, scope: !165, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 977, column: 13, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 977, column: 13)
!3353 = !DILocation(line: 417, column: 19, scope: !1390, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 128, column: 17, scope: !175, inlinedAt: !3351)
!3355 = !DILocation(line: 417, column: 33, scope: !1390, inlinedAt: !3354)
!3356 = !DILocation(line: 417, column: 17, scope: !1390, inlinedAt: !3354)
!3357 = !DILocation(line: 977, column: 13, scope: !3284)
!3358 = !DILocation(line: 979, column: 23, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 978, column: 9)
!3360 = !DILocation(line: 979, column: 44, scope: !3359)
!3361 = !DILocation(line: 979, column: 13, scope: !3359)
!3362 = !DILocation(line: 980, column: 21, scope: !3359)
!3363 = !DILocation(line: 980, column: 13, scope: !3359)
!3364 = !DILocation(line: 981, column: 9, scope: !3359)
!3365 = !DILocation(line: 982, column: 5, scope: !3285)
!3366 = !DILocation(line: 983, column: 1, scope: !3273)
!3367 = !DISubprogram(name: "x264_quant_8x8_trellis", scope: !1757, file: !1757, line: 62, type: !3368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1760)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{null, !228, !1195, !168, !168, !168, !168}
