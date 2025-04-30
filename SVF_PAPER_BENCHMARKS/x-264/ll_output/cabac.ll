; ModuleID = 'encoder/cabac.c'
source_filename = "encoder/cabac.c"
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

@x264_mb_pred_mode4x4_fix = internal unnamed_addr constant [13 x i8] c"\FF\00\01\02\03\04\05\06\07\08\02\02\02", align 1, !dbg !0
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 45, i32 46], align 16, !dbg !1245
@x264_mb_partition_listX_table = internal unnamed_addr constant [2 x [17 x i8]] [[17 x i8] c"\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\00", [17 x i8] c"\00\00\00\00\01\01\01\01\01\01\01\01\00\00\00\00\00"], align 16, !dbg !1285
@x264_mb_type_list0_table = internal unnamed_addr constant [19 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\01\01", [2 x i8] zeroinitializer, [2 x i8] c"\01\01", [2 x i8] zeroinitializer, [2 x i8] c"\01\01", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\00\01", [2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\01\01", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], align 16, !dbg !1288
@x264_mb_type_list1_table = internal unnamed_addr constant [19 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\00\01", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\01\01", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\01\01", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], align 16, !dbg !1292
@x264_cabac_mb_type.i_mb_len = internal unnamed_addr constant [27 x i32] [i32 6, i32 6, i32 3, i32 6, i32 6, i32 0, i32 7, i32 7, i32 0, i32 6, i32 6, i32 0, i32 6, i32 6, i32 3, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7, i32 6], align 16, !dbg !112
@x264_cabac_mb_type.i_mb_bits = internal unnamed_addr constant [27 x [7 x i32]] [[7 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0], [7 x i32] [i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0], [7 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0], [7 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0], [7 x i32] zeroinitializer, [7 x i32] [i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1], [7 x i32] zeroinitializer, [7 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0], [7 x i32] zeroinitializer, [7 x i32] [i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0], [7 x i32] [i32 1, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0], [7 x i32] [i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0], [7 x i32] [i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1], [7 x i32] zeroinitializer, [7 x i32] [i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0], [7 x i32] [i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 1], [7 x i32] zeroinitializer, [7 x i32] [i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 0], [7 x i32] [i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1], [7 x i32] zeroinitializer, [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1], [7 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0]], align 16, !dbg !1233
@.str = private unnamed_addr constant [63 x i8] c"unknown SLICE_TYPE unsupported in x264_macroblock_write_cabac\0A\00", align 1, !dbg !1237
@x264_mb_pred_mode16x16_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\02\02\02", align 1, !dbg !1242
@block_idx_x = internal unnamed_addr constant [16 x i8] c"\00\01\00\01\02\03\02\03\00\01\00\01\02\03\02\03", align 16, !dbg !1269
@block_idx_y = internal unnamed_addr constant [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 16, !dbg !1272
@x264_cabac_mb_mvd_cpn.ctxes = internal unnamed_addr constant [9 x i8] c"\00\03\04\05\06\06\06\06\06", align 1, !dbg !1249
@x264_cabac_mb_sub_b_partition.part_bits = internal unnamed_addr constant [12 x [7 x i8]] [[7 x i8] c"\06\01\01\01\00\01\01", [7 x i8] c"\05\01\01\00\00\01\00", [7 x i8] c"\05\01\01\00\01\00\00", [7 x i8] c"\03\01\00\00\00\00\00", [7 x i8] c"\05\01\01\01\01\00\00", [7 x i8] c"\05\01\01\00\01\01\00", [7 x i8] c"\06\01\01\01\00\00\00", [7 x i8] c"\03\01\00\01\00\00\00", [7 x i8] c"\05\01\01\01\01\01\00", [7 x i8] c"\06\01\01\01\00\00\01", [7 x i8] c"\06\01\01\01\00\01\00", [7 x i8] c"\05\01\01\00\00\00\00"], align 16, !dbg !1274
@x264_mb_transform_8x8_allowed.partition_tab = internal unnamed_addr constant [19 x i8] c"\00\00\00\00\01\02\00\02\01\01\01\01\01\01\01\01\01\02\00", align 16, !dbg !1294
@significant_coeff_flag_offset = internal unnamed_addr constant [2 x [6 x i16]] [[6 x i16] [i16 105, i16 120, i16 134, i16 149, i16 152, i16 402], [6 x i16] [i16 277, i16 292, i16 306, i16 321, i16 324, i16 436]], align 16, !dbg !1304
@last_coeff_flag_offset = internal unnamed_addr constant [2 x [6 x i16]] [[6 x i16] [i16 166, i16 181, i16 195, i16 210, i16 213, i16 417], [6 x i16] [i16 338, i16 353, i16 367, i16 382, i16 385, i16 451]], align 16, !dbg !1309
@coeff_abs_level_m1_offset = internal unnamed_addr constant [6 x i16] [i16 227, i16 237, i16 247, i16 257, i16 266, i16 426], align 2, !dbg !1311
@significant_coeff_flag_offset_8x8 = internal unnamed_addr constant [2 x [63 x i8]] [[63 x i8] c"\00\01\02\03\04\05\05\04\04\03\03\04\04\04\05\05\04\04\04\04\03\03\06\07\07\07\08\09\0A\09\08\07\07\06\0B\0C\0D\0B\06\07\08\09\0E\0A\09\08\06\0B\0C\0D\0B\06\09\0E\0A\09\0B\0C\0D\0B\0E\0A\0C", [63 x i8] c"\00\01\01\02\02\03\03\04\05\06\07\07\07\08\04\05\06\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0D\0D\09\09\0A\0A\08\0D\0D\09\09\0A\0A\0E\0E\0E\0E\0E"], align 16, !dbg !1314
@last_coeff_flag_offset_8x8 = internal unnamed_addr constant [63 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\06\06\06\06\07\07\07\07\08\08\08", align 16, !dbg !1318
@coeff_abs_level1_ctx = internal unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0], align 16, !dbg !1321
@coeff_abs_levelgt1_ctx = internal unnamed_addr constant [8 x i32] [i32 5, i32 5, i32 5, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !1324
@coeff_abs_level_transition = internal unnamed_addr constant [2 x [8 x i8]] [[8 x i8] c"\01\02\03\03\04\05\06\07", [8 x i8] c"\04\04\04\04\05\06\07\07"], align 16, !dbg !1326

; Function Attrs: nounwind uwtable
define dso_local void @x264_cabac_mb_skip(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1341 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1345, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i32 %1, metadata !1346, metadata !DIExpression()), !dbg !1348
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 27, !dbg !1349
  %4 = load i32, ptr %3, align 4, !dbg !1349, !tbaa !1350
  %5 = icmp ne i32 %4, 6, !dbg !1380
  %6 = icmp ne i32 %4, 18, !dbg !1380
  %7 = and i1 %5, %6, !dbg !1380
  %8 = icmp sgt i32 %4, -1, !dbg !1380
  %9 = and i1 %8, %7, !dbg !1380
  %10 = zext i1 %9 to i32, !dbg !1380
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 26, !dbg !1381
  %12 = load i32, ptr %11, align 8, !dbg !1381, !tbaa !1382
  %13 = icmp ne i32 %12, 6, !dbg !1383
  %14 = icmp ne i32 %12, 18, !dbg !1383
  %15 = and i1 %13, %14, !dbg !1383
  %16 = icmp sgt i32 %12, -1, !dbg !1383
  %17 = and i1 %16, %15, !dbg !1383
  %18 = zext i1 %17 to i32, !dbg !1383
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !1384
  %20 = load i32, ptr %19, align 8, !dbg !1384, !tbaa !1385
  %21 = icmp eq i32 %20, 0, !dbg !1386
  %22 = select i1 %21, i32 11, i32 24, !dbg !1387
  %23 = add nuw nsw i32 %22, %10, !dbg !1388
  %24 = add nuw nsw i32 %23, %18, !dbg !1389
  call void @llvm.dbg.value(metadata i32 %24, metadata !1347, metadata !DIExpression()), !dbg !1348
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, !dbg !1390
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %25, i32 noundef %24, i32 noundef %1) #8, !dbg !1391
  ret void, !dbg !1392
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1393 void @x264_cabac_encode_decision_asm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_write_cabac(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1397 {
  %3 = alloca [2 x i16], align 4
  %4 = alloca [2 x i16], align 4
  %5 = alloca [2 x i16], align 4
  %6 = alloca [2 x i16], align 4
  %7 = alloca [2 x i16], align 4
  %8 = alloca [2 x [2 x i32]], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1399, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata ptr %1, metadata !1400, metadata !DIExpression()), !dbg !1426
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 46, !dbg !1427
  %10 = load i32, ptr %9, align 8, !dbg !1427, !tbaa !1428
  call void @llvm.dbg.value(metadata i32 %10, metadata !1401, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata ptr %1, metadata !1429, metadata !DIExpression()), !dbg !1434
  %11 = getelementptr inbounds %struct.x264_cabac_t, ptr %1, i64 0, i32 5, !dbg !1436
  %12 = load ptr, ptr %11, align 8, !dbg !1436, !tbaa !1437
  %13 = getelementptr inbounds %struct.x264_cabac_t, ptr %1, i64 0, i32 4, !dbg !1438
  %14 = load ptr, ptr %13, align 16, !dbg !1438, !tbaa !1439
  %15 = ptrtoint ptr %12 to i64, !dbg !1440
  %16 = ptrtoint ptr %14 to i64, !dbg !1440
  %17 = sub i64 %16, %15, !dbg !1440
  %18 = getelementptr inbounds %struct.x264_cabac_t, ptr %1, i64 0, i32 3, !dbg !1441
  %19 = load i32, ptr %18, align 4, !dbg !1441, !tbaa !1442
  %20 = getelementptr inbounds %struct.x264_cabac_t, ptr %1, i64 0, i32 2, !dbg !1443
  %21 = load i32, ptr %20, align 8, !dbg !1443, !tbaa !1444
  %22 = trunc i64 %17 to i32, !dbg !1445
  %23 = sub i32 %22, %19, !dbg !1445
  %24 = shl i32 %23, 3, !dbg !1445
  %25 = sub i32 %24, %21, !dbg !1445
  call void @llvm.dbg.value(metadata !DIArgList(i32 %19, i32 %21, i64 %15, i64 %16), metadata !1404, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1426
  call void @llvm.dbg.value(metadata ptr %0, metadata !1213, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata ptr %1, metadata !1214, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32 %10, metadata !1215, metadata !DIExpression()), !dbg !1446
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 7, !dbg !1448
  %27 = load i32, ptr %26, align 4, !dbg !1448, !tbaa !1450
  %28 = icmp eq i32 %27, 0, !dbg !1451
  br i1 %28, label %51, label %29, !dbg !1452

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 5, !dbg !1453
  %31 = load i32, ptr %30, align 4, !dbg !1453, !tbaa !1454
  %32 = and i32 %31, 1, !dbg !1455
  %33 = icmp eq i32 %32, 0, !dbg !1455
  br i1 %33, label %45, label %34, !dbg !1456

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 32, !dbg !1457
  %36 = load ptr, ptr %35, align 16, !dbg !1457, !tbaa !1458
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !1457
  %38 = load i32, ptr %37, align 8, !dbg !1457, !tbaa !1459
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 1, !dbg !1457
  %40 = load i32, ptr %39, align 4, !dbg !1457, !tbaa !1460
  %41 = sub nsw i32 %38, %40, !dbg !1457
  %42 = sext i32 %41 to i64, !dbg !1457
  %43 = getelementptr inbounds i8, ptr %36, i64 %42, !dbg !1457
  %44 = load i8, ptr %43, align 1, !dbg !1457, !tbaa !1461
  switch i8 %44, label %51 [
    i8 6, label %45
    i8 18, label %45
  ], !dbg !1457

45:                                               ; preds = %34, %34, %29
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 10, !dbg !1462
  %47 = load i32, ptr %46, align 8, !dbg !1462, !tbaa !1464
  %48 = add nsw i32 %47, 70, !dbg !1465
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 16, !dbg !1466
  %50 = load i32, ptr %49, align 16, !dbg !1466, !tbaa !1467
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef %48, i32 noundef %50) #8, !dbg !1468
  br label %51, !dbg !1469

51:                                               ; preds = %45, %34, %2
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !1470
  %53 = load i32, ptr %52, align 8, !dbg !1470, !tbaa !1385
  switch i32 %53, label %130 [
    i32 2, label %54
    i32 0, label %65
    i32 1, label %74
  ], !dbg !1471

54:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 0, metadata !1217, metadata !DIExpression()), !dbg !1472
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 27, !dbg !1473
  %56 = load i32, ptr %55, align 4, !dbg !1473, !tbaa !1350
  %57 = icmp sgt i32 %56, 0, !dbg !1475
  %58 = zext i1 %57 to i32, !dbg !1475
  call void @llvm.dbg.value(metadata i32 %58, metadata !1217, metadata !DIExpression()), !dbg !1472
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 26, !dbg !1476
  %60 = load i32, ptr %59, align 8, !dbg !1476, !tbaa !1382
  %61 = icmp slt i32 %60, 1, !dbg !1478
  %62 = select i1 %57, i32 2, i32 1, !dbg !1478
  %63 = select i1 %61, i32 %58, i32 %62, !dbg !1478
  call void @llvm.dbg.value(metadata i32 %63, metadata !1217, metadata !DIExpression()), !dbg !1472
  %64 = add nuw nsw i32 %63, 3, !dbg !1479
  tail call fastcc void @x264_cabac_mb_type_intra(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %10, i32 noundef %64, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10), !dbg !1480
  br label %131, !dbg !1481

65:                                               ; preds = %51
  switch i32 %10, label %73 [
    i32 4, label %66
    i32 5, label %72
  ], !dbg !1482

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 47, !dbg !1484
  %68 = load i32, ptr %67, align 4, !dbg !1484, !tbaa !1488
  switch i32 %68, label %379 [
    i32 16, label %69
    i32 14, label %70
    i32 15, label %71
  ], !dbg !1489

69:                                               ; preds = %66
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 14, i32 noundef 0) #8, !dbg !1490
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 15, i32 noundef 0) #8, !dbg !1492
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 16, i32 noundef 0) #8, !dbg !1493
  br label %379, !dbg !1494

70:                                               ; preds = %66
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 14, i32 noundef 0) #8, !dbg !1495
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 15, i32 noundef 1) #8, !dbg !1498
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 17, i32 noundef 1) #8, !dbg !1499
  br label %379, !dbg !1500

71:                                               ; preds = %66
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 14, i32 noundef 0) #8, !dbg !1501
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 15, i32 noundef 1) #8, !dbg !1504
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 17, i32 noundef 0) #8, !dbg !1505
  br label %379, !dbg !1506

72:                                               ; preds = %65
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 14, i32 noundef 0) #8, !dbg !1507
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 15, i32 noundef 0) #8, !dbg !1510
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 16, i32 noundef 1) #8, !dbg !1511
  br label %401, !dbg !1512

73:                                               ; preds = %65
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 14, i32 noundef 1) #8, !dbg !1513
  tail call fastcc void @x264_cabac_mb_type_intra(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %10, i32 noundef 17, i32 noundef 18, i32 noundef 19, i32 noundef 19, i32 noundef 20, i32 noundef 20), !dbg !1515
  br label %131

74:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 0, metadata !1220, metadata !DIExpression()), !dbg !1516
  %75 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 27, !dbg !1517
  %76 = load i32, ptr %75, align 4, !dbg !1517, !tbaa !1350
  %77 = icmp slt i32 %76, 0, !dbg !1519
  %78 = icmp eq i32 %76, 18
  %79 = or i1 %77, %78, !dbg !1520
  %80 = icmp eq i32 %76, 7
  %81 = or i1 %80, %79, !dbg !1520
  %82 = xor i1 %81, true, !dbg !1520
  %83 = zext i1 %82 to i32, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %83, metadata !1220, metadata !DIExpression()), !dbg !1516
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 26, !dbg !1521
  %85 = load i32, ptr %84, align 8, !dbg !1521, !tbaa !1382
  %86 = icmp slt i32 %85, 0, !dbg !1523
  %87 = icmp eq i32 %85, 18
  %88 = or i1 %86, %87, !dbg !1524
  %89 = icmp eq i32 %85, 7
  %90 = or i1 %89, %88, !dbg !1524
  %91 = select i1 %81, i32 1, i32 2, !dbg !1524
  %92 = select i1 %90, i32 %83, i32 %91, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %92, metadata !1220, metadata !DIExpression()), !dbg !1516
  switch i32 %10, label %97 [
    i32 7, label %93
    i32 17, label %95
  ], !dbg !1525

93:                                               ; preds = %74
  %94 = add nuw nsw i32 %92, 27, !dbg !1526
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef %94, i32 noundef 0) #8, !dbg !1528
  br label %1119, !dbg !1512

95:                                               ; preds = %74
  %96 = add nuw nsw i32 %92, 27, !dbg !1529
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef %96, i32 noundef 1) #8, !dbg !1531
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 30, i32 noundef 1) #8, !dbg !1532
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 31, i32 noundef 1) #8, !dbg !1533
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 32, i32 noundef 1) #8, !dbg !1534
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 32, i32 noundef 1) #8, !dbg !1535
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 32, i32 noundef 1) #8, !dbg !1536
  br label %560, !dbg !1512

97:                                               ; preds = %74
  %98 = icmp ult i32 %10, 4, !dbg !1537
  br i1 %98, label %99, label %101, !dbg !1537

99:                                               ; preds = %97
  %100 = add nuw nsw i32 %92, 27, !dbg !1538
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef %100, i32 noundef 1) #8, !dbg !1540
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 30, i32 noundef 1) #8, !dbg !1541
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 31, i32 noundef 1) #8, !dbg !1542
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 32, i32 noundef 1) #8, !dbg !1543
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 32, i32 noundef 0) #8, !dbg !1544
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 32, i32 noundef 1) #8, !dbg !1545
  tail call fastcc void @x264_cabac_mb_type_intra(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %10, i32 noundef 32, i32 noundef 33, i32 noundef 34, i32 noundef 34, i32 noundef 35, i32 noundef 35), !dbg !1546
  br label %131, !dbg !1547

101:                                              ; preds = %97
  %102 = mul i32 %10, 3, !dbg !1548
  %103 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 47, !dbg !1549
  %104 = load i32, ptr %103, align 4, !dbg !1549, !tbaa !1488
  %105 = add i32 %102, -38, !dbg !1550
  %106 = add i32 %105, %104, !dbg !1550
  call void @llvm.dbg.value(metadata i32 %106, metadata !1224, metadata !DIExpression()), !dbg !1551
  %107 = add nuw nsw i32 %92, 27, !dbg !1552
  %108 = sext i32 %106 to i64, !dbg !1553
  %109 = getelementptr inbounds [27 x [7 x i32]], ptr @x264_cabac_mb_type.i_mb_bits, i64 0, i64 %108, !dbg !1553
  %110 = load i32, ptr %109, align 4, !dbg !1553, !tbaa !1554
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef %107, i32 noundef %110) #8, !dbg !1555
  %111 = getelementptr inbounds [27 x [7 x i32]], ptr @x264_cabac_mb_type.i_mb_bits, i64 0, i64 %108, i64 1, !dbg !1556
  %112 = load i32, ptr %111, align 4, !dbg !1556, !tbaa !1554
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef 30, i32 noundef %112) #8, !dbg !1557
  %113 = sub nsw i32 32, %112, !dbg !1558
  %114 = getelementptr inbounds [27 x [7 x i32]], ptr @x264_cabac_mb_type.i_mb_bits, i64 0, i64 %108, i64 2, !dbg !1559
  %115 = load i32, ptr %114, align 4, !dbg !1559, !tbaa !1554
  tail call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef %113, i32 noundef %115) #8, !dbg !1560
  call void @llvm.dbg.value(metadata i32 3, metadata !1229, metadata !DIExpression()), !dbg !1551
  %116 = lshr i64 124630747, %108, !dbg !1561
  %117 = and i64 %116, 1, !dbg !1561
  %118 = icmp eq i64 %117, 0, !dbg !1561
  br i1 %118, label %377, label %119, !dbg !1564

119:                                              ; preds = %101
  %120 = getelementptr inbounds [27 x i32], ptr @x264_cabac_mb_type.i_mb_len, i64 0, i64 %108
  %121 = load i32, ptr %120, align 4, !tbaa !1554
  %122 = tail call i32 @llvm.smax.i32(i32 %121, i32 4), !dbg !1564
  %123 = zext i32 %122 to i64, !dbg !1561
  br label %124, !dbg !1564

124:                                              ; preds = %124, %119
  %125 = phi i64 [ 3, %119 ], [ %128, %124 ]
  call void @llvm.dbg.value(metadata i64 %125, metadata !1229, metadata !DIExpression()), !dbg !1551
  %126 = getelementptr inbounds [27 x [7 x i32]], ptr @x264_cabac_mb_type.i_mb_bits, i64 0, i64 %108, i64 %125, !dbg !1565
  %127 = load i32, ptr %126, align 4, !dbg !1565, !tbaa !1554
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef 32, i32 noundef %127) #8, !dbg !1566
  %128 = add nuw nsw i64 %125, 1, !dbg !1567
  call void @llvm.dbg.value(metadata i64 %128, metadata !1229, metadata !DIExpression()), !dbg !1551
  %129 = icmp eq i64 %128, %123, !dbg !1561
  br i1 %129, label %131, label %124, !dbg !1564, !llvm.loop !1568

130:                                              ; preds = %51
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str) #8, !dbg !1571
  br label %131

131:                                              ; preds = %124, %54, %73, %99, %130
  %132 = icmp eq i32 %10, 3, !dbg !1573
  br i1 %132, label %133, label %262, !dbg !1575

133:                                              ; preds = %131
  call void @llvm.dbg.value(metadata ptr %1, metadata !1429, metadata !DIExpression()), !dbg !1576
  %134 = load ptr, ptr %11, align 8, !dbg !1579, !tbaa !1437
  %135 = load ptr, ptr %13, align 16, !dbg !1580, !tbaa !1439
  %136 = ptrtoint ptr %134 to i64, !dbg !1581
  %137 = ptrtoint ptr %135 to i64, !dbg !1581
  %138 = sub i64 %136, %137, !dbg !1581
  %139 = load i32, ptr %18, align 4, !dbg !1582, !tbaa !1442
  %140 = load i32, ptr %20, align 8, !dbg !1583, !tbaa !1444
  %141 = trunc i64 %138 to i32, !dbg !1584
  %142 = add i32 %139, %141, !dbg !1584
  %143 = shl i32 %142, 3, !dbg !1584
  %144 = add i32 %143, %140, !dbg !1584
  call void @llvm.dbg.value(metadata i32 %144, metadata !1405, metadata !DIExpression()), !dbg !1426
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, !dbg !1585
  %146 = load i32, ptr %145, align 8, !dbg !1586, !tbaa !1587
  %147 = add i32 %146, %25, !dbg !1588
  %148 = add i32 %147, %144, !dbg !1586
  store i32 %148, ptr %145, align 8, !dbg !1586, !tbaa !1587
  %149 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, !dbg !1589
  %150 = load ptr, ptr %149, align 8, !dbg !1590, !tbaa !1591
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %134, ptr noundef nonnull align 1 dereferenceable(256) %150, i64 256, i1 false), !dbg !1592
  %151 = load ptr, ptr %11, align 8, !dbg !1593, !tbaa !1437
  %152 = getelementptr inbounds i8, ptr %151, i64 256, !dbg !1593
  store ptr %152, ptr %11, align 8, !dbg !1593, !tbaa !1437
  call void @llvm.dbg.value(metadata i32 0, metadata !1403, metadata !DIExpression()), !dbg !1426
  %153 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, i64 1
  call void @llvm.dbg.value(metadata i64 0, metadata !1403, metadata !DIExpression()), !dbg !1426
  %154 = load ptr, ptr %153, align 8, !dbg !1594, !tbaa !1591
  %155 = load i64, ptr %154, align 1, !dbg !1597
  store i64 %155, ptr %152, align 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 1, metadata !1403, metadata !DIExpression()), !dbg !1426
  %156 = load ptr, ptr %11, align 8, !dbg !1598, !tbaa !1437
  %157 = getelementptr inbounds i8, ptr %156, i64 8, !dbg !1599
  %158 = load ptr, ptr %153, align 8, !dbg !1594, !tbaa !1591
  %159 = getelementptr inbounds i8, ptr %158, i64 16, !dbg !1600
  %160 = load i64, ptr %159, align 1, !dbg !1597
  store i64 %160, ptr %157, align 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 2, metadata !1403, metadata !DIExpression()), !dbg !1426
  %161 = load ptr, ptr %11, align 8, !dbg !1598, !tbaa !1437
  %162 = getelementptr inbounds i8, ptr %161, i64 16, !dbg !1599
  %163 = load ptr, ptr %153, align 8, !dbg !1594, !tbaa !1591
  %164 = getelementptr inbounds i8, ptr %163, i64 32, !dbg !1600
  %165 = load i64, ptr %164, align 1, !dbg !1597
  store i64 %165, ptr %162, align 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 3, metadata !1403, metadata !DIExpression()), !dbg !1426
  %166 = load ptr, ptr %11, align 8, !dbg !1598, !tbaa !1437
  %167 = getelementptr inbounds i8, ptr %166, i64 24, !dbg !1599
  %168 = load ptr, ptr %153, align 8, !dbg !1594, !tbaa !1591
  %169 = getelementptr inbounds i8, ptr %168, i64 48, !dbg !1600
  %170 = load i64, ptr %169, align 1, !dbg !1597
  store i64 %170, ptr %167, align 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 4, metadata !1403, metadata !DIExpression()), !dbg !1426
  %171 = load ptr, ptr %11, align 8, !dbg !1598, !tbaa !1437
  %172 = getelementptr inbounds i8, ptr %171, i64 32, !dbg !1599
  %173 = load ptr, ptr %153, align 8, !dbg !1594, !tbaa !1591
  %174 = getelementptr inbounds i8, ptr %173, i64 64, !dbg !1600
  %175 = load i64, ptr %174, align 1, !dbg !1597
  store i64 %175, ptr %172, align 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 5, metadata !1403, metadata !DIExpression()), !dbg !1426
  %176 = load ptr, ptr %11, align 8, !dbg !1598, !tbaa !1437
  %177 = getelementptr inbounds i8, ptr %176, i64 40, !dbg !1599
  %178 = load ptr, ptr %153, align 8, !dbg !1594, !tbaa !1591
  %179 = getelementptr inbounds i8, ptr %178, i64 80, !dbg !1600
  %180 = load i64, ptr %179, align 1, !dbg !1597
  store i64 %180, ptr %177, align 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 6, metadata !1403, metadata !DIExpression()), !dbg !1426
  %181 = load ptr, ptr %11, align 8, !dbg !1598, !tbaa !1437
  %182 = getelementptr inbounds i8, ptr %181, i64 48, !dbg !1599
  %183 = load ptr, ptr %153, align 8, !dbg !1594, !tbaa !1591
  %184 = getelementptr inbounds i8, ptr %183, i64 96, !dbg !1600
  %185 = load i64, ptr %184, align 1, !dbg !1597
  store i64 %185, ptr %182, align 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 7, metadata !1403, metadata !DIExpression()), !dbg !1426
  %186 = load ptr, ptr %11, align 8, !dbg !1598, !tbaa !1437
  %187 = getelementptr inbounds i8, ptr %186, i64 56, !dbg !1599
  %188 = load ptr, ptr %153, align 8, !dbg !1594, !tbaa !1591
  %189 = getelementptr inbounds i8, ptr %188, i64 112, !dbg !1600
  %190 = load i64, ptr %189, align 1, !dbg !1597
  store i64 %190, ptr %187, align 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 8, metadata !1403, metadata !DIExpression()), !dbg !1426
  %191 = load ptr, ptr %11, align 8, !dbg !1601, !tbaa !1437
  %192 = getelementptr inbounds i8, ptr %191, i64 64, !dbg !1601
  store ptr %192, ptr %11, align 8, !dbg !1601, !tbaa !1437
  call void @llvm.dbg.value(metadata i32 0, metadata !1403, metadata !DIExpression()), !dbg !1426
  %193 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, i64 2
  call void @llvm.dbg.value(metadata i64 0, metadata !1403, metadata !DIExpression()), !dbg !1426
  %194 = load ptr, ptr %193, align 8, !dbg !1602, !tbaa !1591
  %195 = load i64, ptr %194, align 1, !dbg !1605
  store i64 %195, ptr %192, align 1, !dbg !1605
  call void @llvm.dbg.value(metadata i64 1, metadata !1403, metadata !DIExpression()), !dbg !1426
  %196 = load ptr, ptr %11, align 8, !dbg !1606, !tbaa !1437
  %197 = getelementptr inbounds i8, ptr %196, i64 8, !dbg !1607
  %198 = load ptr, ptr %193, align 8, !dbg !1602, !tbaa !1591
  %199 = getelementptr inbounds i8, ptr %198, i64 16, !dbg !1608
  %200 = load i64, ptr %199, align 1, !dbg !1605
  store i64 %200, ptr %197, align 1, !dbg !1605
  call void @llvm.dbg.value(metadata i64 2, metadata !1403, metadata !DIExpression()), !dbg !1426
  %201 = load ptr, ptr %11, align 8, !dbg !1606, !tbaa !1437
  %202 = getelementptr inbounds i8, ptr %201, i64 16, !dbg !1607
  %203 = load ptr, ptr %193, align 8, !dbg !1602, !tbaa !1591
  %204 = getelementptr inbounds i8, ptr %203, i64 32, !dbg !1608
  %205 = load i64, ptr %204, align 1, !dbg !1605
  store i64 %205, ptr %202, align 1, !dbg !1605
  call void @llvm.dbg.value(metadata i64 3, metadata !1403, metadata !DIExpression()), !dbg !1426
  %206 = load ptr, ptr %11, align 8, !dbg !1606, !tbaa !1437
  %207 = getelementptr inbounds i8, ptr %206, i64 24, !dbg !1607
  %208 = load ptr, ptr %193, align 8, !dbg !1602, !tbaa !1591
  %209 = getelementptr inbounds i8, ptr %208, i64 48, !dbg !1608
  %210 = load i64, ptr %209, align 1, !dbg !1605
  store i64 %210, ptr %207, align 1, !dbg !1605
  call void @llvm.dbg.value(metadata i64 4, metadata !1403, metadata !DIExpression()), !dbg !1426
  %211 = load ptr, ptr %11, align 8, !dbg !1606, !tbaa !1437
  %212 = getelementptr inbounds i8, ptr %211, i64 32, !dbg !1607
  %213 = load ptr, ptr %193, align 8, !dbg !1602, !tbaa !1591
  %214 = getelementptr inbounds i8, ptr %213, i64 64, !dbg !1608
  %215 = load i64, ptr %214, align 1, !dbg !1605
  store i64 %215, ptr %212, align 1, !dbg !1605
  call void @llvm.dbg.value(metadata i64 5, metadata !1403, metadata !DIExpression()), !dbg !1426
  %216 = load ptr, ptr %11, align 8, !dbg !1606, !tbaa !1437
  %217 = getelementptr inbounds i8, ptr %216, i64 40, !dbg !1607
  %218 = load ptr, ptr %193, align 8, !dbg !1602, !tbaa !1591
  %219 = getelementptr inbounds i8, ptr %218, i64 80, !dbg !1608
  %220 = load i64, ptr %219, align 1, !dbg !1605
  store i64 %220, ptr %217, align 1, !dbg !1605
  call void @llvm.dbg.value(metadata i64 6, metadata !1403, metadata !DIExpression()), !dbg !1426
  %221 = load ptr, ptr %11, align 8, !dbg !1606, !tbaa !1437
  %222 = getelementptr inbounds i8, ptr %221, i64 48, !dbg !1607
  %223 = load ptr, ptr %193, align 8, !dbg !1602, !tbaa !1591
  %224 = getelementptr inbounds i8, ptr %223, i64 96, !dbg !1608
  %225 = load i64, ptr %224, align 1, !dbg !1605
  store i64 %225, ptr %222, align 1, !dbg !1605
  call void @llvm.dbg.value(metadata i64 7, metadata !1403, metadata !DIExpression()), !dbg !1426
  %226 = load ptr, ptr %11, align 8, !dbg !1606, !tbaa !1437
  %227 = getelementptr inbounds i8, ptr %226, i64 56, !dbg !1607
  %228 = load ptr, ptr %193, align 8, !dbg !1602, !tbaa !1591
  %229 = getelementptr inbounds i8, ptr %228, i64 112, !dbg !1608
  %230 = load i64, ptr %229, align 1, !dbg !1605
  store i64 %230, ptr %227, align 1, !dbg !1605
  call void @llvm.dbg.value(metadata i64 8, metadata !1403, metadata !DIExpression()), !dbg !1426
  %231 = load ptr, ptr %11, align 8, !dbg !1609, !tbaa !1437
  %232 = getelementptr inbounds i8, ptr %231, i64 64, !dbg !1609
  store ptr %232, ptr %11, align 8, !dbg !1609, !tbaa !1437
  store <4 x i32> <i32 0, i32 510, i32 -1, i32 0>, ptr %1, align 16, !dbg !1610, !tbaa !1554
  %233 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, !dbg !1611
  %234 = load ptr, ptr %233, align 8, !dbg !1612, !tbaa !1591
  %235 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !1613
  %236 = load ptr, ptr %235, align 8, !dbg !1614, !tbaa !1591
  %237 = load ptr, ptr %149, align 8, !dbg !1615, !tbaa !1591
  tail call void %234(ptr noundef %236, i32 noundef 32, ptr noundef %237, i32 noundef 16, i32 noundef 16) #8, !dbg !1612
  %238 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, i64 3, !dbg !1616
  %239 = load ptr, ptr %238, align 8, !dbg !1616, !tbaa !1591
  %240 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 1, !dbg !1617
  %241 = load ptr, ptr %240, align 8, !dbg !1617, !tbaa !1591
  %242 = load ptr, ptr %153, align 8, !dbg !1618, !tbaa !1591
  tail call void %239(ptr noundef %241, i32 noundef 32, ptr noundef %242, i32 noundef 16, i32 noundef 8) #8, !dbg !1616
  %243 = load ptr, ptr %238, align 8, !dbg !1619, !tbaa !1591
  %244 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 2, !dbg !1620
  %245 = load ptr, ptr %244, align 8, !dbg !1620, !tbaa !1591
  %246 = load ptr, ptr %193, align 8, !dbg !1621, !tbaa !1591
  tail call void %243(ptr noundef %245, i32 noundef 32, ptr noundef %246, i32 noundef 16, i32 noundef 8) #8, !dbg !1619
  call void @llvm.dbg.value(metadata ptr %1, metadata !1429, metadata !DIExpression()), !dbg !1622
  %247 = load ptr, ptr %11, align 8, !dbg !1624, !tbaa !1437
  %248 = load ptr, ptr %13, align 16, !dbg !1625, !tbaa !1439
  %249 = ptrtoint ptr %247 to i64, !dbg !1626
  %250 = ptrtoint ptr %248 to i64, !dbg !1626
  %251 = sub i64 %249, %250, !dbg !1626
  %252 = load i32, ptr %18, align 4, !dbg !1627, !tbaa !1442
  %253 = load i32, ptr %20, align 8, !dbg !1628, !tbaa !1444
  %254 = trunc i64 %251 to i32, !dbg !1629
  %255 = add i32 %252, %254, !dbg !1629
  %256 = shl i32 %255, 3, !dbg !1629
  %257 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 1, !dbg !1630
  %258 = load i32, ptr %257, align 4, !dbg !1631, !tbaa !1632
  %259 = sub i32 %253, %144, !dbg !1629
  %260 = add i32 %259, %258, !dbg !1633
  %261 = add i32 %260, %256, !dbg !1631
  store i32 %261, ptr %257, align 4, !dbg !1631, !tbaa !1632
  br label %1585, !dbg !1634

262:                                              ; preds = %131
  %263 = icmp eq i32 %10, 1, !dbg !1635
  %264 = icmp eq i32 %10, 2, !dbg !1635
  %265 = icmp ult i32 %10, 3, !dbg !1635
  br i1 %265, label %266, label %377, !dbg !1635

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 18, !dbg !1636
  %268 = load ptr, ptr %267, align 16, !dbg !1636, !tbaa !1638
  %269 = getelementptr inbounds %struct.x264_pps_t, ptr %268, i64 0, i32 15, !dbg !1639
  %270 = load i32, ptr %269, align 4, !dbg !1639, !tbaa !1640
  %271 = icmp ne i32 %270, 0, !dbg !1642
  %272 = icmp ne i32 %10, 2
  %273 = select i1 %271, i1 %272, i1 false, !dbg !1643
  br i1 %273, label %274, label %280, !dbg !1643

274:                                              ; preds = %266
  %275 = getelementptr i8, ptr %0, i64 11808, !dbg !1644
  %276 = load i32, ptr %275, align 16, !dbg !1644, !tbaa !1645
  %277 = getelementptr i8, ptr %0, i64 20500, !dbg !1644
  %278 = load i32, ptr %277, align 4, !dbg !1644, !tbaa !1646
  call void @llvm.dbg.value(metadata ptr undef, metadata !1647, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata ptr %1, metadata !1650, metadata !DIExpression()), !dbg !1652
  %279 = add nsw i32 %278, 399, !dbg !1654
  call void @llvm.dbg.value(metadata i32 %279, metadata !1651, metadata !DIExpression()), !dbg !1652
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %279, i32 noundef %276) #8, !dbg !1655
  br label %281, !dbg !1656

280:                                              ; preds = %266
  br i1 %272, label %281, label %330, !dbg !1656

281:                                              ; preds = %274, %280
  %282 = select i1 %263, i64 4, i64 1, !dbg !1657
  call void @llvm.dbg.value(metadata i32 poison, metadata !1406, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i32 0, metadata !1403, metadata !DIExpression()), !dbg !1426
  %283 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57
  br label %284, !dbg !1659

284:                                              ; preds = %281, %327
  %285 = phi i64 [ 0, %281 ], [ %328, %327 ]
  call void @llvm.dbg.value(metadata i64 %285, metadata !1403, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata ptr %0, metadata !1660, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %285, metadata !1665, metadata !DIExpression()), !dbg !1669
  %286 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %285, !dbg !1671
  %287 = load i32, ptr %286, align 4, !dbg !1671, !tbaa !1554
  %288 = add nsw i32 %287, -1, !dbg !1672
  %289 = sext i32 %288 to i64, !dbg !1673
  %290 = getelementptr inbounds [48 x i8], ptr %283, i64 0, i64 %289, !dbg !1673
  %291 = load i8, ptr %290, align 1, !dbg !1673, !tbaa !1461
  %292 = sext i8 %291 to i64, !dbg !1673
  call void @llvm.dbg.value(metadata i8 %291, metadata !1666, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1669
  %293 = add nsw i32 %287, -8, !dbg !1674
  %294 = sext i32 %293 to i64, !dbg !1675
  %295 = getelementptr inbounds [48 x i8], ptr %283, i64 0, i64 %294, !dbg !1675
  %296 = load i8, ptr %295, align 1, !dbg !1675, !tbaa !1461
  %297 = sext i8 %296 to i64, !dbg !1675
  call void @llvm.dbg.value(metadata i8 %296, metadata !1667, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1669
  %298 = add nsw i64 %292, 1, !dbg !1676
  %299 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %298, !dbg !1676
  %300 = load i8, ptr %299, align 1, !dbg !1676, !tbaa !1461
  %301 = add nsw i64 %297, 1, !dbg !1676
  %302 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %301, !dbg !1676
  %303 = load i8, ptr %302, align 1, !dbg !1676, !tbaa !1461
  %304 = tail call i8 @llvm.smin.i8(i8 %300, i8 %303), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %304, metadata !1668, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1669
  %305 = icmp slt i8 %304, 0, !dbg !1677
  %306 = select i1 %305, i8 2, i8 %304, !dbg !1679
  %307 = zext i8 %306 to i32, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %307, metadata !1411, metadata !DIExpression()), !dbg !1680
  %308 = sext i32 %287 to i64, !dbg !1681
  %309 = getelementptr inbounds [48 x i8], ptr %283, i64 0, i64 %308, !dbg !1681
  %310 = load i8, ptr %309, align 1, !dbg !1681, !tbaa !1461
  %311 = sext i8 %310 to i64, !dbg !1681
  %312 = add nsw i64 %311, 1, !dbg !1681
  %313 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %312, !dbg !1681
  %314 = load i8, ptr %313, align 1, !dbg !1681, !tbaa !1461
  %315 = sext i8 %314 to i32, !dbg !1681
  call void @llvm.dbg.value(metadata i32 %315, metadata !1415, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata ptr %1, metadata !1682, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i32 %307, metadata !1685, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i32 %315, metadata !1686, metadata !DIExpression()), !dbg !1687
  %316 = icmp eq i32 %307, %315, !dbg !1689
  br i1 %316, label %317, label %318, !dbg !1691

317:                                              ; preds = %284
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef 68, i32 noundef 1) #8, !dbg !1692
  br label %327, !dbg !1694

318:                                              ; preds = %284
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef 68, i32 noundef 0) #8, !dbg !1695
  %319 = icmp sgt i32 %315, %307, !dbg !1697
  %320 = sext i1 %319 to i32, !dbg !1699
  %321 = add nsw i32 %320, %315, !dbg !1699
  call void @llvm.dbg.value(metadata i32 %321, metadata !1686, metadata !DIExpression()), !dbg !1687
  %322 = and i32 %321, 1, !dbg !1700
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef 69, i32 noundef %322) #8, !dbg !1701
  %323 = lshr i32 %321, 1, !dbg !1702
  %324 = and i32 %323, 1, !dbg !1703
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef 69, i32 noundef %324) #8, !dbg !1704
  %325 = lshr i32 %321, 2, !dbg !1705
  %326 = and i32 %325, 1, !dbg !1706
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef 69, i32 noundef %326) #8, !dbg !1707
  br label %327

327:                                              ; preds = %317, %318
  %328 = add i64 %285, %282, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %328, metadata !1403, metadata !DIExpression()), !dbg !1426
  %329 = icmp ult i64 %328, 16, !dbg !1709
  br i1 %329, label %284, label %330, !dbg !1659, !llvm.loop !1710

330:                                              ; preds = %327, %280
  call void @llvm.dbg.value(metadata ptr %0, metadata !1712, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata ptr %1, metadata !1715, metadata !DIExpression()), !dbg !1718
  %331 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 53, !dbg !1720
  %332 = load i32, ptr %331, align 16, !dbg !1720, !tbaa !1721
  %333 = sext i32 %332 to i64, !dbg !1722
  call void @llvm.dbg.value(metadata i8 poison, metadata !1716, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1718
  call void @llvm.dbg.value(metadata i32 0, metadata !1717, metadata !DIExpression()), !dbg !1718
  %334 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 23, !dbg !1723
  %335 = load i32, ptr %334, align 4, !dbg !1723, !tbaa !1725
  %336 = and i32 %335, 1, !dbg !1726
  %337 = icmp eq i32 %336, 0, !dbg !1726
  br i1 %337, label %349, label %338, !dbg !1727

338:                                              ; preds = %330
  %339 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 37, !dbg !1728
  %340 = load ptr, ptr %339, align 8, !dbg !1728, !tbaa !1729
  %341 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !1730
  %342 = load i32, ptr %341, align 8, !dbg !1730, !tbaa !1459
  %343 = add nsw i32 %342, -1, !dbg !1731
  %344 = sext i32 %343 to i64, !dbg !1732
  %345 = getelementptr inbounds i8, ptr %340, i64 %344, !dbg !1732
  %346 = load i8, ptr %345, align 1, !dbg !1732, !tbaa !1461
  %347 = icmp ne i8 %346, 0, !dbg !1733
  %348 = zext i1 %347 to i32, !dbg !1734
  br label %349, !dbg !1734

349:                                              ; preds = %338, %330
  %350 = phi i32 [ 0, %330 ], [ %348, %338 ], !dbg !1718
  call void @llvm.dbg.value(metadata i32 %350, metadata !1717, metadata !DIExpression()), !dbg !1718
  %351 = and i32 %335, 2, !dbg !1735
  %352 = icmp eq i32 %351, 0, !dbg !1735
  br i1 %352, label %364, label %353, !dbg !1737

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 37, !dbg !1738
  %355 = load ptr, ptr %354, align 8, !dbg !1738, !tbaa !1729
  %356 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 31, !dbg !1739
  %357 = load i32, ptr %356, align 4, !dbg !1739, !tbaa !1740
  %358 = sext i32 %357 to i64, !dbg !1741
  %359 = getelementptr inbounds i8, ptr %355, i64 %358, !dbg !1741
  %360 = load i8, ptr %359, align 1, !dbg !1741, !tbaa !1461
  %361 = icmp ne i8 %360, 0, !dbg !1742
  %362 = zext i1 %361 to i32, !dbg !1743
  %363 = add nuw nsw i32 %350, %362, !dbg !1743
  br label %364, !dbg !1743

364:                                              ; preds = %353, %349
  %365 = phi i32 [ %350, %349 ], [ %363, %353 ], !dbg !1718
  call void @llvm.dbg.value(metadata i32 %365, metadata !1717, metadata !DIExpression()), !dbg !1718
  %366 = add nuw nsw i32 %365, 64, !dbg !1744
  %367 = add nsw i64 %333, -1, !dbg !1745
  %368 = icmp ult i64 %367, 3, !dbg !1745
  %369 = zext i1 %368 to i32, !dbg !1745
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %366, i32 noundef %369) #8, !dbg !1746
  br i1 %368, label %370, label %1119, !dbg !1747

370:                                              ; preds = %364
  %371 = and i32 %332, -2, !dbg !1748
  %372 = icmp eq i32 %371, 2, !dbg !1748
  %373 = zext i1 %372 to i32, !dbg !1748
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef 67, i32 noundef %373) #8, !dbg !1751
  br i1 %372, label %374, label %1119, !dbg !1752

374:                                              ; preds = %370
  %375 = icmp eq i32 %332, 3, !dbg !1753
  %376 = zext i1 %375 to i32, !dbg !1753
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef 67, i32 noundef %376) #8, !dbg !1756
  br label %1119, !dbg !1757

377:                                              ; preds = %101, %262
  %378 = phi i1 [ %264, %262 ], [ false, %101 ]
  switch i32 %10, label %752 [
    i32 4, label %379
    i32 5, label %401
    i32 17, label %560
    i32 7, label %1119
  ], !dbg !1512

379:                                              ; preds = %71, %70, %69, %66, %377
  %380 = phi i1 [ %378, %377 ], [ false, %66 ], [ false, %69 ], [ false, %70 ], [ false, %71 ]
  %381 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 47, !dbg !1758
  %382 = load i32, ptr %381, align 4, !dbg !1758, !tbaa !1488
  switch i32 %382, label %1119 [
    i32 16, label %383
    i32 14, label %389
    i32 15, label %395
  ], !dbg !1761

383:                                              ; preds = %379
  %384 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15, !dbg !1762
  %385 = load i32, ptr %384, align 16, !dbg !1765, !tbaa !1554
  %386 = icmp sgt i32 %385, 1, !dbg !1766
  br i1 %386, label %387, label %388, !dbg !1767

387:                                              ; preds = %383
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 0), !dbg !1768
  br label %388, !dbg !1770

388:                                              ; preds = %387, %383
  tail call fastcc void @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4), !dbg !1771
  br label %1119, !dbg !1772

389:                                              ; preds = %379
  %390 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15, !dbg !1773
  %391 = load i32, ptr %390, align 16, !dbg !1777, !tbaa !1554
  %392 = icmp sgt i32 %391, 1, !dbg !1778
  br i1 %392, label %393, label %394, !dbg !1779

393:                                              ; preds = %389
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 0), !dbg !1780
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 8), !dbg !1782
  br label %394, !dbg !1783

394:                                              ; preds = %393, %389
  tail call fastcc void @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2), !dbg !1784
  tail call fastcc void @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 8, i32 noundef 4, i32 noundef 2), !dbg !1785
  br label %1119, !dbg !1786

395:                                              ; preds = %379
  %396 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15, !dbg !1787
  %397 = load i32, ptr %396, align 16, !dbg !1791, !tbaa !1554
  %398 = icmp sgt i32 %397, 1, !dbg !1792
  br i1 %398, label %399, label %400, !dbg !1793

399:                                              ; preds = %395
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 0), !dbg !1794
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 4), !dbg !1796
  br label %400, !dbg !1797

400:                                              ; preds = %399, %395
  tail call fastcc void @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4), !dbg !1798
  tail call fastcc void @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 4, i32 noundef 2, i32 noundef 4), !dbg !1799
  br label %1119, !dbg !1800

401:                                              ; preds = %72, %377
  %402 = phi i1 [ false, %72 ], [ %378, %377 ]
  %403 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, !dbg !1801
  %404 = load i32, ptr %403, align 16, !dbg !1803, !tbaa !1554
  tail call fastcc void @x264_cabac_mb_sub_p_partition(ptr noundef %1, i32 noundef %404), !dbg !1804
  %405 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 1, !dbg !1805
  %406 = load i32, ptr %405, align 4, !dbg !1805, !tbaa !1554
  tail call fastcc void @x264_cabac_mb_sub_p_partition(ptr noundef %1, i32 noundef %406), !dbg !1806
  %407 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 2, !dbg !1807
  %408 = load i32, ptr %407, align 8, !dbg !1807, !tbaa !1554
  tail call fastcc void @x264_cabac_mb_sub_p_partition(ptr noundef %1, i32 noundef %408), !dbg !1808
  %409 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 3, !dbg !1809
  %410 = load i32, ptr %409, align 4, !dbg !1809, !tbaa !1554
  tail call fastcc void @x264_cabac_mb_sub_p_partition(ptr noundef %1, i32 noundef %410), !dbg !1810
  %411 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15, !dbg !1811
  %412 = load i32, ptr %411, align 16, !dbg !1813, !tbaa !1554
  %413 = icmp sgt i32 %412, 1, !dbg !1814
  br i1 %413, label %414, label %559, !dbg !1815

414:                                              ; preds = %401
  call void @llvm.dbg.value(metadata ptr %0, metadata !1816, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata ptr %1, metadata !1821, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i32 0, metadata !1822, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i32 0, metadata !1823, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i32 12, metadata !1824, metadata !DIExpression()), !dbg !1829
  %415 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 11, !dbg !1832
  %416 = load i8, ptr %415, align 1, !dbg !1832, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %416, metadata !1825, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1829
  %417 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 4, !dbg !1833
  %418 = load i8, ptr %417, align 1, !dbg !1833, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %418, metadata !1826, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1829
  %419 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 12, !dbg !1834
  %420 = load i8, ptr %419, align 1, !dbg !1834, !tbaa !1461
  %421 = zext i8 %420 to i32, !dbg !1834
  call void @llvm.dbg.value(metadata i32 %421, metadata !1827, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !1829
  %422 = icmp sgt i8 %416, 0, !dbg !1835
  br i1 %422, label %423, label %428, !dbg !1837

423:                                              ; preds = %414
  %424 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 11, !dbg !1838
  %425 = load i8, ptr %424, align 1, !dbg !1838, !tbaa !1461
  %426 = icmp eq i8 %425, 0, !dbg !1838
  %427 = zext i1 %426 to i32, !dbg !1839
  br label %428, !dbg !1839

428:                                              ; preds = %423, %414
  %429 = phi i32 [ 0, %414 ], [ %427, %423 ], !dbg !1829
  call void @llvm.dbg.value(metadata i32 %429, metadata !1828, metadata !DIExpression()), !dbg !1829
  %430 = icmp sgt i8 %418, 0, !dbg !1840
  br i1 %430, label %431, label %437, !dbg !1842

431:                                              ; preds = %428
  %432 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 4, !dbg !1843
  %433 = load i8, ptr %432, align 1, !dbg !1843, !tbaa !1461
  %434 = icmp eq i8 %433, 0, !dbg !1843
  %435 = or i32 %429, 2
  %436 = select i1 %434, i32 %435, i32 %429, !dbg !1844
  br label %437, !dbg !1844

437:                                              ; preds = %431, %428
  %438 = phi i32 [ %429, %428 ], [ %436, %431 ], !dbg !1829
  call void @llvm.dbg.value(metadata i32 %438, metadata !1828, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i32 %421, metadata !1827, metadata !DIExpression()), !dbg !1829
  %439 = icmp sgt i8 %420, 0, !dbg !1845
  br i1 %439, label %440, label %448, !dbg !1846

440:                                              ; preds = %437, %440
  %441 = phi i32 [ %445, %440 ], [ %438, %437 ]
  %442 = phi i32 [ %446, %440 ], [ %421, %437 ]
  call void @llvm.dbg.value(metadata i32 %441, metadata !1828, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i32 %442, metadata !1827, metadata !DIExpression()), !dbg !1829
  %443 = add nuw nsw i32 %441, 54, !dbg !1847
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %443, i32 noundef 1) #8, !dbg !1849
  %444 = icmp ult i32 %441, 4, !dbg !1850
  %445 = select i1 %444, i32 4, i32 5
  call void @llvm.dbg.value(metadata i32 %445, metadata !1828, metadata !DIExpression()), !dbg !1829
  %446 = add nsw i32 %442, -1, !dbg !1852
  call void @llvm.dbg.value(metadata i32 %446, metadata !1827, metadata !DIExpression()), !dbg !1829
  %447 = icmp ugt i32 %442, 1, !dbg !1845
  br i1 %447, label %440, label %448, !dbg !1846, !llvm.loop !1853

448:                                              ; preds = %440, %437
  %449 = phi i32 [ %438, %437 ], [ %445, %440 ], !dbg !1829
  %450 = add nuw nsw i32 %449, 54, !dbg !1855
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %450, i32 noundef 0) #8, !dbg !1856
  call void @llvm.dbg.value(metadata ptr %0, metadata !1816, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata ptr %1, metadata !1821, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i32 0, metadata !1822, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i32 4, metadata !1823, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i32 14, metadata !1824, metadata !DIExpression()), !dbg !1857
  %451 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 13, !dbg !1859
  %452 = load i8, ptr %451, align 1, !dbg !1859, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %452, metadata !1825, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1857
  %453 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 6, !dbg !1860
  %454 = load i8, ptr %453, align 1, !dbg !1860, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %454, metadata !1826, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1857
  %455 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 14, !dbg !1861
  %456 = load i8, ptr %455, align 1, !dbg !1861, !tbaa !1461
  %457 = zext i8 %456 to i32, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %457, metadata !1827, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !1857
  %458 = icmp sgt i8 %452, 0, !dbg !1862
  br i1 %458, label %459, label %464, !dbg !1863

459:                                              ; preds = %448
  %460 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 13, !dbg !1864
  %461 = load i8, ptr %460, align 1, !dbg !1864, !tbaa !1461
  %462 = icmp eq i8 %461, 0, !dbg !1864
  %463 = zext i1 %462 to i32, !dbg !1865
  br label %464, !dbg !1865

464:                                              ; preds = %459, %448
  %465 = phi i32 [ 0, %448 ], [ %463, %459 ], !dbg !1857
  call void @llvm.dbg.value(metadata i32 %465, metadata !1828, metadata !DIExpression()), !dbg !1857
  %466 = icmp sgt i8 %454, 0, !dbg !1866
  br i1 %466, label %467, label %473, !dbg !1867

467:                                              ; preds = %464
  %468 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 6, !dbg !1868
  %469 = load i8, ptr %468, align 1, !dbg !1868, !tbaa !1461
  %470 = icmp eq i8 %469, 0, !dbg !1868
  %471 = or i32 %465, 2
  %472 = select i1 %470, i32 %471, i32 %465, !dbg !1869
  br label %473, !dbg !1869

473:                                              ; preds = %467, %464
  %474 = phi i32 [ %465, %464 ], [ %472, %467 ], !dbg !1857
  call void @llvm.dbg.value(metadata i32 %474, metadata !1828, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i32 %457, metadata !1827, metadata !DIExpression()), !dbg !1857
  %475 = icmp sgt i8 %456, 0, !dbg !1870
  br i1 %475, label %476, label %484, !dbg !1871

476:                                              ; preds = %473, %476
  %477 = phi i32 [ %481, %476 ], [ %474, %473 ]
  %478 = phi i32 [ %482, %476 ], [ %457, %473 ]
  call void @llvm.dbg.value(metadata i32 %477, metadata !1828, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i32 %478, metadata !1827, metadata !DIExpression()), !dbg !1857
  %479 = add nuw nsw i32 %477, 54, !dbg !1872
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %479, i32 noundef 1) #8, !dbg !1873
  %480 = icmp ult i32 %477, 4, !dbg !1874
  %481 = select i1 %480, i32 4, i32 5
  call void @llvm.dbg.value(metadata i32 %481, metadata !1828, metadata !DIExpression()), !dbg !1857
  %482 = add nsw i32 %478, -1, !dbg !1875
  call void @llvm.dbg.value(metadata i32 %482, metadata !1827, metadata !DIExpression()), !dbg !1857
  %483 = icmp ugt i32 %478, 1, !dbg !1870
  br i1 %483, label %476, label %484, !dbg !1871, !llvm.loop !1876

484:                                              ; preds = %476, %473
  %485 = phi i32 [ %474, %473 ], [ %481, %476 ], !dbg !1857
  %486 = add nuw nsw i32 %485, 54, !dbg !1878
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %486, i32 noundef 0) #8, !dbg !1879
  call void @llvm.dbg.value(metadata ptr %0, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata ptr %1, metadata !1821, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 0, metadata !1822, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 8, metadata !1823, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 28, metadata !1824, metadata !DIExpression()), !dbg !1880
  %487 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 27, !dbg !1882
  %488 = load i8, ptr %487, align 1, !dbg !1882, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %488, metadata !1825, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1880
  %489 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 20, !dbg !1883
  %490 = load i8, ptr %489, align 1, !dbg !1883, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %490, metadata !1826, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1880
  %491 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 28, !dbg !1884
  %492 = load i8, ptr %491, align 1, !dbg !1884, !tbaa !1461
  %493 = zext i8 %492 to i32, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %493, metadata !1827, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !1880
  %494 = icmp sgt i8 %488, 0, !dbg !1885
  br i1 %494, label %495, label %500, !dbg !1886

495:                                              ; preds = %484
  %496 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 27, !dbg !1887
  %497 = load i8, ptr %496, align 1, !dbg !1887, !tbaa !1461
  %498 = icmp eq i8 %497, 0, !dbg !1887
  %499 = zext i1 %498 to i32, !dbg !1888
  br label %500, !dbg !1888

500:                                              ; preds = %495, %484
  %501 = phi i32 [ 0, %484 ], [ %499, %495 ], !dbg !1880
  call void @llvm.dbg.value(metadata i32 %501, metadata !1828, metadata !DIExpression()), !dbg !1880
  %502 = icmp sgt i8 %490, 0, !dbg !1889
  br i1 %502, label %503, label %509, !dbg !1890

503:                                              ; preds = %500
  %504 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 20, !dbg !1891
  %505 = load i8, ptr %504, align 1, !dbg !1891, !tbaa !1461
  %506 = icmp eq i8 %505, 0, !dbg !1891
  %507 = or i32 %501, 2
  %508 = select i1 %506, i32 %507, i32 %501, !dbg !1892
  br label %509, !dbg !1892

509:                                              ; preds = %503, %500
  %510 = phi i32 [ %501, %500 ], [ %508, %503 ], !dbg !1880
  call void @llvm.dbg.value(metadata i32 %510, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 %493, metadata !1827, metadata !DIExpression()), !dbg !1880
  %511 = icmp sgt i8 %492, 0, !dbg !1893
  br i1 %511, label %512, label %520, !dbg !1894

512:                                              ; preds = %509, %512
  %513 = phi i32 [ %517, %512 ], [ %510, %509 ]
  %514 = phi i32 [ %518, %512 ], [ %493, %509 ]
  call void @llvm.dbg.value(metadata i32 %513, metadata !1828, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 %514, metadata !1827, metadata !DIExpression()), !dbg !1880
  %515 = add nuw nsw i32 %513, 54, !dbg !1895
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %515, i32 noundef 1) #8, !dbg !1896
  %516 = icmp ult i32 %513, 4, !dbg !1897
  %517 = select i1 %516, i32 4, i32 5
  call void @llvm.dbg.value(metadata i32 %517, metadata !1828, metadata !DIExpression()), !dbg !1880
  %518 = add nsw i32 %514, -1, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %518, metadata !1827, metadata !DIExpression()), !dbg !1880
  %519 = icmp ugt i32 %514, 1, !dbg !1893
  br i1 %519, label %512, label %520, !dbg !1894, !llvm.loop !1899

520:                                              ; preds = %512, %509
  %521 = phi i32 [ %510, %509 ], [ %517, %512 ], !dbg !1880
  %522 = add nuw nsw i32 %521, 54, !dbg !1901
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %522, i32 noundef 0) #8, !dbg !1902
  call void @llvm.dbg.value(metadata ptr %0, metadata !1816, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %1, metadata !1821, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 0, metadata !1822, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 12, metadata !1823, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 30, metadata !1824, metadata !DIExpression()), !dbg !1903
  %523 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 29, !dbg !1905
  %524 = load i8, ptr %523, align 1, !dbg !1905, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %524, metadata !1825, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1903
  %525 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 22, !dbg !1906
  %526 = load i8, ptr %525, align 1, !dbg !1906, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %526, metadata !1826, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1903
  %527 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 30, !dbg !1907
  %528 = load i8, ptr %527, align 1, !dbg !1907, !tbaa !1461
  %529 = zext i8 %528 to i32, !dbg !1907
  call void @llvm.dbg.value(metadata i32 %529, metadata !1827, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !1903
  %530 = icmp sgt i8 %524, 0, !dbg !1908
  br i1 %530, label %531, label %536, !dbg !1909

531:                                              ; preds = %520
  %532 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 29, !dbg !1910
  %533 = load i8, ptr %532, align 1, !dbg !1910, !tbaa !1461
  %534 = icmp eq i8 %533, 0, !dbg !1910
  %535 = zext i1 %534 to i32, !dbg !1911
  br label %536, !dbg !1911

536:                                              ; preds = %531, %520
  %537 = phi i32 [ 0, %520 ], [ %535, %531 ], !dbg !1903
  call void @llvm.dbg.value(metadata i32 %537, metadata !1828, metadata !DIExpression()), !dbg !1903
  %538 = icmp sgt i8 %526, 0, !dbg !1912
  br i1 %538, label %539, label %545, !dbg !1913

539:                                              ; preds = %536
  %540 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 22, !dbg !1914
  %541 = load i8, ptr %540, align 1, !dbg !1914, !tbaa !1461
  %542 = icmp eq i8 %541, 0, !dbg !1914
  %543 = or i32 %537, 2
  %544 = select i1 %542, i32 %543, i32 %537, !dbg !1915
  br label %545, !dbg !1915

545:                                              ; preds = %539, %536
  %546 = phi i32 [ %537, %536 ], [ %544, %539 ], !dbg !1903
  call void @llvm.dbg.value(metadata i32 %546, metadata !1828, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 %529, metadata !1827, metadata !DIExpression()), !dbg !1903
  %547 = icmp sgt i8 %528, 0, !dbg !1916
  br i1 %547, label %548, label %556, !dbg !1917

548:                                              ; preds = %545, %548
  %549 = phi i32 [ %553, %548 ], [ %546, %545 ]
  %550 = phi i32 [ %554, %548 ], [ %529, %545 ]
  call void @llvm.dbg.value(metadata i32 %549, metadata !1828, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 %550, metadata !1827, metadata !DIExpression()), !dbg !1903
  %551 = add nuw nsw i32 %549, 54, !dbg !1918
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %551, i32 noundef 1) #8, !dbg !1919
  %552 = icmp ult i32 %549, 4, !dbg !1920
  %553 = select i1 %552, i32 4, i32 5
  call void @llvm.dbg.value(metadata i32 %553, metadata !1828, metadata !DIExpression()), !dbg !1903
  %554 = add nsw i32 %550, -1, !dbg !1921
  call void @llvm.dbg.value(metadata i32 %554, metadata !1827, metadata !DIExpression()), !dbg !1903
  %555 = icmp ugt i32 %550, 1, !dbg !1916
  br i1 %555, label %548, label %556, !dbg !1917, !llvm.loop !1922

556:                                              ; preds = %548, %545
  %557 = phi i32 [ %546, %545 ], [ %553, %548 ], !dbg !1903
  %558 = add nuw nsw i32 %557, 54, !dbg !1924
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %558, i32 noundef 0) #8, !dbg !1925
  br label %559, !dbg !1926

559:                                              ; preds = %556, %401
  call void @llvm.dbg.value(metadata i32 0, metadata !1403, metadata !DIExpression()), !dbg !1426
  tail call fastcc void @x264_cabac_mb8x8_mvd(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0), !dbg !1927
  call void @llvm.dbg.value(metadata i32 1, metadata !1403, metadata !DIExpression()), !dbg !1426
  tail call fastcc void @x264_cabac_mb8x8_mvd(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 1), !dbg !1927
  call void @llvm.dbg.value(metadata i32 2, metadata !1403, metadata !DIExpression()), !dbg !1426
  tail call fastcc void @x264_cabac_mb8x8_mvd(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 2), !dbg !1927
  call void @llvm.dbg.value(metadata i32 3, metadata !1403, metadata !DIExpression()), !dbg !1426
  tail call fastcc void @x264_cabac_mb8x8_mvd(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 3), !dbg !1927
  call void @llvm.dbg.value(metadata i32 4, metadata !1403, metadata !DIExpression()), !dbg !1426
  br label %1119, !dbg !1930

560:                                              ; preds = %95, %377
  %561 = phi i1 [ false, %95 ], [ %378, %377 ]
  %562 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, !dbg !1932
  %563 = load i32, ptr %562, align 16, !dbg !1934, !tbaa !1554
  tail call fastcc void @x264_cabac_mb_sub_b_partition(ptr noundef %1, i32 noundef %563), !dbg !1935
  %564 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 1, !dbg !1936
  %565 = load i32, ptr %564, align 4, !dbg !1936, !tbaa !1554
  tail call fastcc void @x264_cabac_mb_sub_b_partition(ptr noundef %1, i32 noundef %565), !dbg !1937
  %566 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 2, !dbg !1938
  %567 = load i32, ptr %566, align 8, !dbg !1938, !tbaa !1554
  tail call fastcc void @x264_cabac_mb_sub_b_partition(ptr noundef %1, i32 noundef %567), !dbg !1939
  %568 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 3, !dbg !1940
  %569 = load i32, ptr %568, align 4, !dbg !1940, !tbaa !1554
  tail call fastcc void @x264_cabac_mb_sub_b_partition(ptr noundef %1, i32 noundef %569), !dbg !1941
  call void @llvm.dbg.value(metadata i32 0, metadata !1402, metadata !DIExpression()), !dbg !1426
  %570 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15, i64 1
  %571 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15
  %572 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 11
  %573 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 4
  %574 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 13
  %575 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 6
  %576 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 27
  %577 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 20
  %578 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 29
  %579 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 22
  br label %580, !dbg !1942

580:                                              ; preds = %560, %750
  %581 = phi i1 [ true, %560 ], [ false, %750 ]
  %582 = phi i64 [ 0, %560 ], [ 1, %750 ]
  call void @llvm.dbg.value(metadata i64 %582, metadata !1402, metadata !DIExpression()), !dbg !1426
  %583 = select i1 %581, ptr %571, ptr %570, !dbg !1944
  %584 = load i32, ptr %583, align 4, !dbg !1944, !tbaa !1554
  %585 = icmp eq i32 %584, 1, !dbg !1948
  br i1 %585, label %750, label %586, !dbg !1949

586:                                              ; preds = %580
  call void @llvm.dbg.value(metadata i64 0, metadata !1403, metadata !DIExpression()), !dbg !1426
  %587 = load i32, ptr %562, align 4, !dbg !1950, !tbaa !1554
  %588 = sext i32 %587 to i64, !dbg !1954
  %589 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 %582, i64 %588, !dbg !1954
  %590 = load i8, ptr %589, align 1, !dbg !1954, !tbaa !1461
  %591 = icmp eq i8 %590, 0, !dbg !1954
  br i1 %591, label %627, label %592, !dbg !1955

592:                                              ; preds = %586
  call void @llvm.dbg.value(metadata ptr %0, metadata !1816, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata ptr %1, metadata !1821, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %582, metadata !1822, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 0, metadata !1823, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 12, metadata !1824, metadata !DIExpression()), !dbg !1956
  %593 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %582, i64 11, !dbg !1958
  %594 = load i8, ptr %593, align 1, !dbg !1958, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %594, metadata !1825, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1956
  %595 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %582, i64 4, !dbg !1959
  %596 = load i8, ptr %595, align 1, !dbg !1959, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %596, metadata !1826, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1956
  %597 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %582, i64 12, !dbg !1960
  %598 = load i8, ptr %597, align 1, !dbg !1960, !tbaa !1461
  %599 = zext i8 %598 to i32, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %599, metadata !1827, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !1956
  %600 = icmp sgt i8 %594, 0, !dbg !1961
  br i1 %600, label %601, label %605, !dbg !1962

601:                                              ; preds = %592
  %602 = load i8, ptr %572, align 1, !dbg !1963, !tbaa !1461
  %603 = icmp eq i8 %602, 0, !dbg !1963
  %604 = zext i1 %603 to i32, !dbg !1964
  br label %605, !dbg !1964

605:                                              ; preds = %601, %592
  %606 = phi i32 [ 0, %592 ], [ %604, %601 ], !dbg !1956
  call void @llvm.dbg.value(metadata i32 %606, metadata !1828, metadata !DIExpression()), !dbg !1956
  %607 = icmp sgt i8 %596, 0, !dbg !1965
  br i1 %607, label %608, label %613, !dbg !1966

608:                                              ; preds = %605
  %609 = load i8, ptr %573, align 1, !dbg !1967, !tbaa !1461
  %610 = icmp eq i8 %609, 0, !dbg !1967
  %611 = or i32 %606, 2
  %612 = select i1 %610, i32 %611, i32 %606, !dbg !1968
  br label %613, !dbg !1968

613:                                              ; preds = %608, %605
  %614 = phi i32 [ %606, %605 ], [ %612, %608 ], !dbg !1956
  call void @llvm.dbg.value(metadata i32 %614, metadata !1828, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 %599, metadata !1827, metadata !DIExpression()), !dbg !1956
  %615 = icmp sgt i8 %598, 0, !dbg !1969
  br i1 %615, label %616, label %624, !dbg !1970

616:                                              ; preds = %613, %616
  %617 = phi i32 [ %621, %616 ], [ %614, %613 ]
  %618 = phi i32 [ %622, %616 ], [ %599, %613 ]
  call void @llvm.dbg.value(metadata i32 %617, metadata !1828, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 %618, metadata !1827, metadata !DIExpression()), !dbg !1956
  %619 = add nuw nsw i32 %617, 54, !dbg !1971
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %619, i32 noundef 1) #8, !dbg !1972
  %620 = icmp ult i32 %617, 4, !dbg !1973
  %621 = select i1 %620, i32 4, i32 5
  call void @llvm.dbg.value(metadata i32 %621, metadata !1828, metadata !DIExpression()), !dbg !1956
  %622 = add nsw i32 %618, -1, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %622, metadata !1827, metadata !DIExpression()), !dbg !1956
  %623 = icmp ugt i32 %618, 1, !dbg !1969
  br i1 %623, label %616, label %624, !dbg !1970, !llvm.loop !1975

624:                                              ; preds = %616, %613
  %625 = phi i32 [ %614, %613 ], [ %621, %616 ], !dbg !1956
  %626 = add nuw nsw i32 %625, 54, !dbg !1977
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %626, i32 noundef 0) #8, !dbg !1978
  br label %627, !dbg !1979

627:                                              ; preds = %586, %624
  call void @llvm.dbg.value(metadata i64 1, metadata !1403, metadata !DIExpression()), !dbg !1426
  %628 = load i32, ptr %564, align 4, !dbg !1950, !tbaa !1554
  %629 = sext i32 %628 to i64, !dbg !1954
  %630 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 %582, i64 %629, !dbg !1954
  %631 = load i8, ptr %630, align 1, !dbg !1954, !tbaa !1461
  %632 = icmp eq i8 %631, 0, !dbg !1954
  br i1 %632, label %668, label %633, !dbg !1955

633:                                              ; preds = %627
  call void @llvm.dbg.value(metadata ptr %0, metadata !1816, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata ptr %1, metadata !1821, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %582, metadata !1822, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 4, metadata !1823, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 14, metadata !1824, metadata !DIExpression()), !dbg !1956
  %634 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %582, i64 13, !dbg !1958
  %635 = load i8, ptr %634, align 1, !dbg !1958, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %635, metadata !1825, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1956
  %636 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %582, i64 6, !dbg !1959
  %637 = load i8, ptr %636, align 1, !dbg !1959, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %637, metadata !1826, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1956
  %638 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %582, i64 14, !dbg !1960
  %639 = load i8, ptr %638, align 1, !dbg !1960, !tbaa !1461
  %640 = zext i8 %639 to i32, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %640, metadata !1827, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !1956
  %641 = icmp sgt i8 %635, 0, !dbg !1961
  br i1 %641, label %642, label %646, !dbg !1962

642:                                              ; preds = %633
  %643 = load i8, ptr %574, align 1, !dbg !1963, !tbaa !1461
  %644 = icmp eq i8 %643, 0, !dbg !1963
  %645 = zext i1 %644 to i32, !dbg !1964
  br label %646, !dbg !1964

646:                                              ; preds = %642, %633
  %647 = phi i32 [ 0, %633 ], [ %645, %642 ], !dbg !1956
  call void @llvm.dbg.value(metadata i32 %647, metadata !1828, metadata !DIExpression()), !dbg !1956
  %648 = icmp sgt i8 %637, 0, !dbg !1965
  br i1 %648, label %649, label %654, !dbg !1966

649:                                              ; preds = %646
  %650 = load i8, ptr %575, align 1, !dbg !1967, !tbaa !1461
  %651 = icmp eq i8 %650, 0, !dbg !1967
  %652 = or i32 %647, 2
  %653 = select i1 %651, i32 %652, i32 %647, !dbg !1968
  br label %654, !dbg !1968

654:                                              ; preds = %649, %646
  %655 = phi i32 [ %647, %646 ], [ %653, %649 ], !dbg !1956
  call void @llvm.dbg.value(metadata i32 %655, metadata !1828, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 %640, metadata !1827, metadata !DIExpression()), !dbg !1956
  %656 = icmp sgt i8 %639, 0, !dbg !1969
  br i1 %656, label %657, label %665, !dbg !1970

657:                                              ; preds = %654, %657
  %658 = phi i32 [ %662, %657 ], [ %655, %654 ]
  %659 = phi i32 [ %663, %657 ], [ %640, %654 ]
  call void @llvm.dbg.value(metadata i32 %658, metadata !1828, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 %659, metadata !1827, metadata !DIExpression()), !dbg !1956
  %660 = add nuw nsw i32 %658, 54, !dbg !1971
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %660, i32 noundef 1) #8, !dbg !1972
  %661 = icmp ult i32 %658, 4, !dbg !1973
  %662 = select i1 %661, i32 4, i32 5
  call void @llvm.dbg.value(metadata i32 %662, metadata !1828, metadata !DIExpression()), !dbg !1956
  %663 = add nsw i32 %659, -1, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %663, metadata !1827, metadata !DIExpression()), !dbg !1956
  %664 = icmp ugt i32 %659, 1, !dbg !1969
  br i1 %664, label %657, label %665, !dbg !1970, !llvm.loop !1975

665:                                              ; preds = %657, %654
  %666 = phi i32 [ %655, %654 ], [ %662, %657 ], !dbg !1956
  %667 = add nuw nsw i32 %666, 54, !dbg !1977
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %667, i32 noundef 0) #8, !dbg !1978
  br label %668, !dbg !1979

668:                                              ; preds = %665, %627
  call void @llvm.dbg.value(metadata i64 2, metadata !1403, metadata !DIExpression()), !dbg !1426
  %669 = load i32, ptr %566, align 4, !dbg !1950, !tbaa !1554
  %670 = sext i32 %669 to i64, !dbg !1954
  %671 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 %582, i64 %670, !dbg !1954
  %672 = load i8, ptr %671, align 1, !dbg !1954, !tbaa !1461
  %673 = icmp eq i8 %672, 0, !dbg !1954
  br i1 %673, label %709, label %674, !dbg !1955

674:                                              ; preds = %668
  call void @llvm.dbg.value(metadata ptr %0, metadata !1816, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata ptr %1, metadata !1821, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %582, metadata !1822, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 8, metadata !1823, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 28, metadata !1824, metadata !DIExpression()), !dbg !1956
  %675 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %582, i64 27, !dbg !1958
  %676 = load i8, ptr %675, align 1, !dbg !1958, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %676, metadata !1825, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1956
  %677 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %582, i64 20, !dbg !1959
  %678 = load i8, ptr %677, align 1, !dbg !1959, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %678, metadata !1826, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1956
  %679 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %582, i64 28, !dbg !1960
  %680 = load i8, ptr %679, align 1, !dbg !1960, !tbaa !1461
  %681 = zext i8 %680 to i32, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %681, metadata !1827, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !1956
  %682 = icmp sgt i8 %676, 0, !dbg !1961
  br i1 %682, label %683, label %687, !dbg !1962

683:                                              ; preds = %674
  %684 = load i8, ptr %576, align 1, !dbg !1963, !tbaa !1461
  %685 = icmp eq i8 %684, 0, !dbg !1963
  %686 = zext i1 %685 to i32, !dbg !1964
  br label %687, !dbg !1964

687:                                              ; preds = %683, %674
  %688 = phi i32 [ 0, %674 ], [ %686, %683 ], !dbg !1956
  call void @llvm.dbg.value(metadata i32 %688, metadata !1828, metadata !DIExpression()), !dbg !1956
  %689 = icmp sgt i8 %678, 0, !dbg !1965
  br i1 %689, label %690, label %695, !dbg !1966

690:                                              ; preds = %687
  %691 = load i8, ptr %577, align 1, !dbg !1967, !tbaa !1461
  %692 = icmp eq i8 %691, 0, !dbg !1967
  %693 = or i32 %688, 2
  %694 = select i1 %692, i32 %693, i32 %688, !dbg !1968
  br label %695, !dbg !1968

695:                                              ; preds = %690, %687
  %696 = phi i32 [ %688, %687 ], [ %694, %690 ], !dbg !1956
  call void @llvm.dbg.value(metadata i32 %696, metadata !1828, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 %681, metadata !1827, metadata !DIExpression()), !dbg !1956
  %697 = icmp sgt i8 %680, 0, !dbg !1969
  br i1 %697, label %698, label %706, !dbg !1970

698:                                              ; preds = %695, %698
  %699 = phi i32 [ %703, %698 ], [ %696, %695 ]
  %700 = phi i32 [ %704, %698 ], [ %681, %695 ]
  call void @llvm.dbg.value(metadata i32 %699, metadata !1828, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 %700, metadata !1827, metadata !DIExpression()), !dbg !1956
  %701 = add nuw nsw i32 %699, 54, !dbg !1971
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %701, i32 noundef 1) #8, !dbg !1972
  %702 = icmp ult i32 %699, 4, !dbg !1973
  %703 = select i1 %702, i32 4, i32 5
  call void @llvm.dbg.value(metadata i32 %703, metadata !1828, metadata !DIExpression()), !dbg !1956
  %704 = add nsw i32 %700, -1, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %704, metadata !1827, metadata !DIExpression()), !dbg !1956
  %705 = icmp ugt i32 %700, 1, !dbg !1969
  br i1 %705, label %698, label %706, !dbg !1970, !llvm.loop !1975

706:                                              ; preds = %698, %695
  %707 = phi i32 [ %696, %695 ], [ %703, %698 ], !dbg !1956
  %708 = add nuw nsw i32 %707, 54, !dbg !1977
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %708, i32 noundef 0) #8, !dbg !1978
  br label %709, !dbg !1979

709:                                              ; preds = %706, %668
  call void @llvm.dbg.value(metadata i64 3, metadata !1403, metadata !DIExpression()), !dbg !1426
  %710 = load i32, ptr %568, align 4, !dbg !1950, !tbaa !1554
  %711 = sext i32 %710 to i64, !dbg !1954
  %712 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 %582, i64 %711, !dbg !1954
  %713 = load i8, ptr %712, align 1, !dbg !1954, !tbaa !1461
  %714 = icmp eq i8 %713, 0, !dbg !1954
  br i1 %714, label %750, label %715, !dbg !1955

715:                                              ; preds = %709
  call void @llvm.dbg.value(metadata ptr %0, metadata !1816, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata ptr %1, metadata !1821, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %582, metadata !1822, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 12, metadata !1823, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 30, metadata !1824, metadata !DIExpression()), !dbg !1956
  %716 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %582, i64 29, !dbg !1958
  %717 = load i8, ptr %716, align 1, !dbg !1958, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %717, metadata !1825, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1956
  %718 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %582, i64 22, !dbg !1959
  %719 = load i8, ptr %718, align 1, !dbg !1959, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %719, metadata !1826, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1956
  %720 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %582, i64 30, !dbg !1960
  %721 = load i8, ptr %720, align 1, !dbg !1960, !tbaa !1461
  %722 = zext i8 %721 to i32, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %722, metadata !1827, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !1956
  %723 = icmp sgt i8 %717, 0, !dbg !1961
  br i1 %723, label %724, label %728, !dbg !1962

724:                                              ; preds = %715
  %725 = load i8, ptr %578, align 1, !dbg !1963, !tbaa !1461
  %726 = icmp eq i8 %725, 0, !dbg !1963
  %727 = zext i1 %726 to i32, !dbg !1964
  br label %728, !dbg !1964

728:                                              ; preds = %724, %715
  %729 = phi i32 [ 0, %715 ], [ %727, %724 ], !dbg !1956
  call void @llvm.dbg.value(metadata i32 %729, metadata !1828, metadata !DIExpression()), !dbg !1956
  %730 = icmp sgt i8 %719, 0, !dbg !1965
  br i1 %730, label %731, label %736, !dbg !1966

731:                                              ; preds = %728
  %732 = load i8, ptr %579, align 1, !dbg !1967, !tbaa !1461
  %733 = icmp eq i8 %732, 0, !dbg !1967
  %734 = or i32 %729, 2
  %735 = select i1 %733, i32 %734, i32 %729, !dbg !1968
  br label %736, !dbg !1968

736:                                              ; preds = %731, %728
  %737 = phi i32 [ %729, %728 ], [ %735, %731 ], !dbg !1956
  call void @llvm.dbg.value(metadata i32 %737, metadata !1828, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 %722, metadata !1827, metadata !DIExpression()), !dbg !1956
  %738 = icmp sgt i8 %721, 0, !dbg !1969
  br i1 %738, label %739, label %747, !dbg !1970

739:                                              ; preds = %736, %739
  %740 = phi i32 [ %744, %739 ], [ %737, %736 ]
  %741 = phi i32 [ %745, %739 ], [ %722, %736 ]
  call void @llvm.dbg.value(metadata i32 %740, metadata !1828, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 %741, metadata !1827, metadata !DIExpression()), !dbg !1956
  %742 = add nuw nsw i32 %740, 54, !dbg !1971
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %742, i32 noundef 1) #8, !dbg !1972
  %743 = icmp ult i32 %740, 4, !dbg !1973
  %744 = select i1 %743, i32 4, i32 5
  call void @llvm.dbg.value(metadata i32 %744, metadata !1828, metadata !DIExpression()), !dbg !1956
  %745 = add nsw i32 %741, -1, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %745, metadata !1827, metadata !DIExpression()), !dbg !1956
  %746 = icmp ugt i32 %741, 1, !dbg !1969
  br i1 %746, label %739, label %747, !dbg !1970, !llvm.loop !1975

747:                                              ; preds = %739, %736
  %748 = phi i32 [ %737, %736 ], [ %744, %739 ], !dbg !1956
  %749 = add nuw nsw i32 %748, 54, !dbg !1977
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %749, i32 noundef 0) #8, !dbg !1978
  br label %750, !dbg !1979

750:                                              ; preds = %709, %747, %580
  call void @llvm.dbg.value(metadata i64 %582, metadata !1402, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1426
  br i1 %581, label %580, label %751, !dbg !1942, !llvm.loop !1980

751:                                              ; preds = %750
  call void @llvm.dbg.value(metadata i32 0, metadata !1403, metadata !DIExpression()), !dbg !1426
  tail call fastcc void @x264_cabac_mb8x8_mvd(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0), !dbg !1982
  call void @llvm.dbg.value(metadata i32 1, metadata !1403, metadata !DIExpression()), !dbg !1426
  tail call fastcc void @x264_cabac_mb8x8_mvd(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 1), !dbg !1982
  call void @llvm.dbg.value(metadata i32 2, metadata !1403, metadata !DIExpression()), !dbg !1426
  tail call fastcc void @x264_cabac_mb8x8_mvd(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 2), !dbg !1982
  call void @llvm.dbg.value(metadata i32 3, metadata !1403, metadata !DIExpression()), !dbg !1426
  tail call fastcc void @x264_cabac_mb8x8_mvd(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 3), !dbg !1982
  call void @llvm.dbg.value(metadata i32 0, metadata !1403, metadata !DIExpression()), !dbg !1426
  tail call fastcc void @x264_cabac_mb8x8_mvd(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 0), !dbg !1985
  call void @llvm.dbg.value(metadata i32 1, metadata !1403, metadata !DIExpression()), !dbg !1426
  tail call fastcc void @x264_cabac_mb8x8_mvd(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 1), !dbg !1985
  call void @llvm.dbg.value(metadata i32 2, metadata !1403, metadata !DIExpression()), !dbg !1426
  tail call fastcc void @x264_cabac_mb8x8_mvd(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 2), !dbg !1985
  call void @llvm.dbg.value(metadata i32 3, metadata !1403, metadata !DIExpression()), !dbg !1426
  tail call fastcc void @x264_cabac_mb8x8_mvd(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 3), !dbg !1985
  call void @llvm.dbg.value(metadata i32 4, metadata !1403, metadata !DIExpression()), !dbg !1426
  br label %1119, !dbg !1930

752:                                              ; preds = %377
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !1988
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1416, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i32 0, metadata !1403, metadata !DIExpression()), !dbg !1426
  %753 = sext i32 %10 to i64
  call void @llvm.dbg.value(metadata i64 0, metadata !1403, metadata !DIExpression()), !dbg !1426
  %754 = getelementptr inbounds [19 x [2 x i8]], ptr @x264_mb_type_list0_table, i64 0, i64 %753, i64 0, !dbg !1990
  %755 = getelementptr inbounds [19 x [2 x i8]], ptr @x264_mb_type_list1_table, i64 0, i64 %753, i64 0, !dbg !1994
  %756 = getelementptr inbounds [2 x [2 x i32]], ptr %8, i64 0, i64 1, i64 0, !dbg !1995
  call void @llvm.dbg.value(metadata i64 1, metadata !1403, metadata !DIExpression()), !dbg !1426
  %757 = load <2 x i8>, ptr %754, align 2, !dbg !1990, !tbaa !1461
  %758 = zext <2 x i8> %757 to <2 x i32>, !dbg !1990
  store <2 x i32> %758, ptr %8, align 16, !dbg !1996, !tbaa !1554
  %759 = load <2 x i8>, ptr %755, align 2, !dbg !1994, !tbaa !1461
  %760 = zext <2 x i8> %759 to <2 x i32>, !dbg !1994
  store <2 x i32> %760, ptr %756, align 8, !dbg !1997, !tbaa !1554
  call void @llvm.dbg.value(metadata i64 2, metadata !1403, metadata !DIExpression()), !dbg !1426
  %761 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15
  %762 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15, i64 1
  call void @llvm.dbg.value(metadata i32 0, metadata !1402, metadata !DIExpression()), !dbg !1426
  %763 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 47
  %764 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 11
  %765 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 4
  %766 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 13
  %767 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 6
  %768 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 27
  %769 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 20
  br label %776, !dbg !1998

770:                                              ; preds = %973
  call void @llvm.dbg.value(metadata i32 0, metadata !1402, metadata !DIExpression()), !dbg !1426
  %771 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  %772 = getelementptr inbounds [2 x i16], ptr %3, i64 0, i64 1
  %773 = getelementptr inbounds [2 x i16], ptr %6, i64 0, i64 1
  %774 = getelementptr inbounds [2 x i16], ptr %5, i64 0, i64 1
  %775 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  br label %974, !dbg !1999

776:                                              ; preds = %752, %973
  %777 = phi i1 [ true, %752 ], [ false, %973 ]
  %778 = phi i64 [ 0, %752 ], [ 1, %973 ]
  call void @llvm.dbg.value(metadata i64 %778, metadata !1402, metadata !DIExpression()), !dbg !1426
  %779 = select i1 %777, ptr %761, ptr %762, !dbg !2001
  %780 = load i32, ptr %779, align 4, !dbg !2001, !tbaa !1554
  call void @llvm.dbg.value(metadata i32 %780, metadata !1422, metadata !DIExpression()), !dbg !2002
  %781 = icmp sgt i32 %780, 1, !dbg !2003
  br i1 %781, label %782, label %973, !dbg !2005

782:                                              ; preds = %776
  %783 = load i32, ptr %763, align 4, !dbg !2006, !tbaa !1488
  switch i32 %783, label %973 [
    i32 16, label %784
    i32 14, label %820
    i32 15, label %895
  ], !dbg !2009

784:                                              ; preds = %782
  %785 = getelementptr inbounds [2 x [2 x i32]], ptr %8, i64 0, i64 %778, !dbg !2010
  %786 = load i32, ptr %785, align 8, !dbg !2010, !tbaa !1554
  %787 = icmp eq i32 %786, 0, !dbg !2010
  br i1 %787, label %973, label %788, !dbg !2013

788:                                              ; preds = %784
  call void @llvm.dbg.value(metadata ptr %0, metadata !1816, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata ptr %1, metadata !1821, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i64 %778, metadata !1822, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32 0, metadata !1823, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32 12, metadata !1824, metadata !DIExpression()), !dbg !2014
  %789 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %778, i64 11, !dbg !2016
  %790 = load i8, ptr %789, align 1, !dbg !2016, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %790, metadata !1825, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2014
  %791 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %778, i64 4, !dbg !2017
  %792 = load i8, ptr %791, align 1, !dbg !2017, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %792, metadata !1826, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2014
  %793 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %778, i64 12, !dbg !2018
  %794 = load i8, ptr %793, align 1, !dbg !2018, !tbaa !1461
  %795 = zext i8 %794 to i32, !dbg !2018
  call void @llvm.dbg.value(metadata i32 %795, metadata !1827, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !2014
  %796 = icmp sgt i8 %790, 0, !dbg !2019
  br i1 %796, label %797, label %801, !dbg !2020

797:                                              ; preds = %788
  %798 = load i8, ptr %764, align 1, !dbg !2021, !tbaa !1461
  %799 = icmp eq i8 %798, 0, !dbg !2021
  %800 = zext i1 %799 to i32, !dbg !2022
  br label %801, !dbg !2022

801:                                              ; preds = %797, %788
  %802 = phi i32 [ 0, %788 ], [ %800, %797 ], !dbg !2014
  call void @llvm.dbg.value(metadata i32 %802, metadata !1828, metadata !DIExpression()), !dbg !2014
  %803 = icmp sgt i8 %792, 0, !dbg !2023
  br i1 %803, label %804, label %809, !dbg !2024

804:                                              ; preds = %801
  %805 = load i8, ptr %765, align 1, !dbg !2025, !tbaa !1461
  %806 = icmp eq i8 %805, 0, !dbg !2025
  %807 = or i32 %802, 2
  %808 = select i1 %806, i32 %807, i32 %802, !dbg !2026
  br label %809, !dbg !2026

809:                                              ; preds = %804, %801
  %810 = phi i32 [ %802, %801 ], [ %808, %804 ], !dbg !2014
  call void @llvm.dbg.value(metadata i32 %810, metadata !1828, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32 %795, metadata !1827, metadata !DIExpression()), !dbg !2014
  %811 = icmp sgt i8 %794, 0, !dbg !2027
  br i1 %811, label %812, label %970, !dbg !2028

812:                                              ; preds = %809, %812
  %813 = phi i32 [ %817, %812 ], [ %810, %809 ]
  %814 = phi i32 [ %818, %812 ], [ %795, %809 ]
  call void @llvm.dbg.value(metadata i32 %813, metadata !1828, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32 %814, metadata !1827, metadata !DIExpression()), !dbg !2014
  %815 = add nuw nsw i32 %813, 54, !dbg !2029
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %815, i32 noundef 1) #8, !dbg !2030
  %816 = icmp ult i32 %813, 4, !dbg !2031
  %817 = select i1 %816, i32 4, i32 5
  call void @llvm.dbg.value(metadata i32 %817, metadata !1828, metadata !DIExpression()), !dbg !2014
  %818 = add nsw i32 %814, -1, !dbg !2032
  call void @llvm.dbg.value(metadata i32 %818, metadata !1827, metadata !DIExpression()), !dbg !2014
  %819 = icmp ugt i32 %814, 1, !dbg !2027
  br i1 %819, label %812, label %970, !dbg !2028, !llvm.loop !2033

820:                                              ; preds = %782
  %821 = getelementptr inbounds [2 x [2 x i32]], ptr %8, i64 0, i64 %778, !dbg !2035
  %822 = load i32, ptr %821, align 8, !dbg !2035, !tbaa !1554
  %823 = icmp eq i32 %822, 0, !dbg !2035
  br i1 %823, label %859, label %824, !dbg !2039

824:                                              ; preds = %820
  call void @llvm.dbg.value(metadata ptr %0, metadata !1816, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata ptr %1, metadata !1821, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i64 %778, metadata !1822, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 0, metadata !1823, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 12, metadata !1824, metadata !DIExpression()), !dbg !2040
  %825 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %778, i64 11, !dbg !2042
  %826 = load i8, ptr %825, align 1, !dbg !2042, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %826, metadata !1825, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2040
  %827 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %778, i64 4, !dbg !2043
  %828 = load i8, ptr %827, align 1, !dbg !2043, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %828, metadata !1826, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2040
  %829 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %778, i64 12, !dbg !2044
  %830 = load i8, ptr %829, align 1, !dbg !2044, !tbaa !1461
  %831 = zext i8 %830 to i32, !dbg !2044
  call void @llvm.dbg.value(metadata i32 %831, metadata !1827, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !2040
  %832 = icmp sgt i8 %826, 0, !dbg !2045
  br i1 %832, label %833, label %837, !dbg !2046

833:                                              ; preds = %824
  %834 = load i8, ptr %764, align 1, !dbg !2047, !tbaa !1461
  %835 = icmp eq i8 %834, 0, !dbg !2047
  %836 = zext i1 %835 to i32, !dbg !2048
  br label %837, !dbg !2048

837:                                              ; preds = %833, %824
  %838 = phi i32 [ 0, %824 ], [ %836, %833 ], !dbg !2040
  call void @llvm.dbg.value(metadata i32 %838, metadata !1828, metadata !DIExpression()), !dbg !2040
  %839 = icmp sgt i8 %828, 0, !dbg !2049
  br i1 %839, label %840, label %845, !dbg !2050

840:                                              ; preds = %837
  %841 = load i8, ptr %765, align 1, !dbg !2051, !tbaa !1461
  %842 = icmp eq i8 %841, 0, !dbg !2051
  %843 = or i32 %838, 2
  %844 = select i1 %842, i32 %843, i32 %838, !dbg !2052
  br label %845, !dbg !2052

845:                                              ; preds = %840, %837
  %846 = phi i32 [ %838, %837 ], [ %844, %840 ], !dbg !2040
  call void @llvm.dbg.value(metadata i32 %846, metadata !1828, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %831, metadata !1827, metadata !DIExpression()), !dbg !2040
  %847 = icmp sgt i8 %830, 0, !dbg !2053
  br i1 %847, label %848, label %856, !dbg !2054

848:                                              ; preds = %845, %848
  %849 = phi i32 [ %853, %848 ], [ %846, %845 ]
  %850 = phi i32 [ %854, %848 ], [ %831, %845 ]
  call void @llvm.dbg.value(metadata i32 %849, metadata !1828, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %850, metadata !1827, metadata !DIExpression()), !dbg !2040
  %851 = add nuw nsw i32 %849, 54, !dbg !2055
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %851, i32 noundef 1) #8, !dbg !2056
  %852 = icmp ult i32 %849, 4, !dbg !2057
  %853 = select i1 %852, i32 4, i32 5
  call void @llvm.dbg.value(metadata i32 %853, metadata !1828, metadata !DIExpression()), !dbg !2040
  %854 = add nsw i32 %850, -1, !dbg !2058
  call void @llvm.dbg.value(metadata i32 %854, metadata !1827, metadata !DIExpression()), !dbg !2040
  %855 = icmp ugt i32 %850, 1, !dbg !2053
  br i1 %855, label %848, label %856, !dbg !2054, !llvm.loop !2059

856:                                              ; preds = %848, %845
  %857 = phi i32 [ %846, %845 ], [ %853, %848 ], !dbg !2040
  %858 = add nuw nsw i32 %857, 54, !dbg !2061
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %858, i32 noundef 0) #8, !dbg !2062
  br label %859, !dbg !2063

859:                                              ; preds = %856, %820
  %860 = getelementptr inbounds [2 x [2 x i32]], ptr %8, i64 0, i64 %778, i64 1, !dbg !2064
  %861 = load i32, ptr %860, align 4, !dbg !2064, !tbaa !1554
  %862 = icmp eq i32 %861, 0, !dbg !2064
  br i1 %862, label %973, label %863, !dbg !2066

863:                                              ; preds = %859
  call void @llvm.dbg.value(metadata ptr %0, metadata !1816, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata ptr %1, metadata !1821, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %778, metadata !1822, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 8, metadata !1823, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 28, metadata !1824, metadata !DIExpression()), !dbg !2067
  %864 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %778, i64 27, !dbg !2069
  %865 = load i8, ptr %864, align 1, !dbg !2069, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %865, metadata !1825, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2067
  %866 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %778, i64 20, !dbg !2070
  %867 = load i8, ptr %866, align 1, !dbg !2070, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %867, metadata !1826, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2067
  %868 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %778, i64 28, !dbg !2071
  %869 = load i8, ptr %868, align 1, !dbg !2071, !tbaa !1461
  %870 = zext i8 %869 to i32, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %870, metadata !1827, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !2067
  %871 = icmp sgt i8 %865, 0, !dbg !2072
  br i1 %871, label %872, label %876, !dbg !2073

872:                                              ; preds = %863
  %873 = load i8, ptr %768, align 1, !dbg !2074, !tbaa !1461
  %874 = icmp eq i8 %873, 0, !dbg !2074
  %875 = zext i1 %874 to i32, !dbg !2075
  br label %876, !dbg !2075

876:                                              ; preds = %872, %863
  %877 = phi i32 [ 0, %863 ], [ %875, %872 ], !dbg !2067
  call void @llvm.dbg.value(metadata i32 %877, metadata !1828, metadata !DIExpression()), !dbg !2067
  %878 = icmp sgt i8 %867, 0, !dbg !2076
  br i1 %878, label %879, label %884, !dbg !2077

879:                                              ; preds = %876
  %880 = load i8, ptr %769, align 1, !dbg !2078, !tbaa !1461
  %881 = icmp eq i8 %880, 0, !dbg !2078
  %882 = or i32 %877, 2
  %883 = select i1 %881, i32 %882, i32 %877, !dbg !2079
  br label %884, !dbg !2079

884:                                              ; preds = %879, %876
  %885 = phi i32 [ %877, %876 ], [ %883, %879 ], !dbg !2067
  call void @llvm.dbg.value(metadata i32 %885, metadata !1828, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %870, metadata !1827, metadata !DIExpression()), !dbg !2067
  %886 = icmp sgt i8 %869, 0, !dbg !2080
  br i1 %886, label %887, label %970, !dbg !2081

887:                                              ; preds = %884, %887
  %888 = phi i32 [ %892, %887 ], [ %885, %884 ]
  %889 = phi i32 [ %893, %887 ], [ %870, %884 ]
  call void @llvm.dbg.value(metadata i32 %888, metadata !1828, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %889, metadata !1827, metadata !DIExpression()), !dbg !2067
  %890 = add nuw nsw i32 %888, 54, !dbg !2082
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %890, i32 noundef 1) #8, !dbg !2083
  %891 = icmp ult i32 %888, 4, !dbg !2084
  %892 = select i1 %891, i32 4, i32 5
  call void @llvm.dbg.value(metadata i32 %892, metadata !1828, metadata !DIExpression()), !dbg !2067
  %893 = add nsw i32 %889, -1, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %893, metadata !1827, metadata !DIExpression()), !dbg !2067
  %894 = icmp ugt i32 %889, 1, !dbg !2080
  br i1 %894, label %887, label %970, !dbg !2081, !llvm.loop !2086

895:                                              ; preds = %782
  %896 = getelementptr inbounds [2 x [2 x i32]], ptr %8, i64 0, i64 %778, !dbg !2088
  %897 = load i32, ptr %896, align 8, !dbg !2088, !tbaa !1554
  %898 = icmp eq i32 %897, 0, !dbg !2088
  br i1 %898, label %934, label %899, !dbg !2092

899:                                              ; preds = %895
  call void @llvm.dbg.value(metadata ptr %0, metadata !1816, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata ptr %1, metadata !1821, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %778, metadata !1822, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 0, metadata !1823, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 12, metadata !1824, metadata !DIExpression()), !dbg !2093
  %900 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %778, i64 11, !dbg !2095
  %901 = load i8, ptr %900, align 1, !dbg !2095, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %901, metadata !1825, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2093
  %902 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %778, i64 4, !dbg !2096
  %903 = load i8, ptr %902, align 1, !dbg !2096, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %903, metadata !1826, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2093
  %904 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %778, i64 12, !dbg !2097
  %905 = load i8, ptr %904, align 1, !dbg !2097, !tbaa !1461
  %906 = zext i8 %905 to i32, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %906, metadata !1827, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !2093
  %907 = icmp sgt i8 %901, 0, !dbg !2098
  br i1 %907, label %908, label %912, !dbg !2099

908:                                              ; preds = %899
  %909 = load i8, ptr %764, align 1, !dbg !2100, !tbaa !1461
  %910 = icmp eq i8 %909, 0, !dbg !2100
  %911 = zext i1 %910 to i32, !dbg !2101
  br label %912, !dbg !2101

912:                                              ; preds = %908, %899
  %913 = phi i32 [ 0, %899 ], [ %911, %908 ], !dbg !2093
  call void @llvm.dbg.value(metadata i32 %913, metadata !1828, metadata !DIExpression()), !dbg !2093
  %914 = icmp sgt i8 %903, 0, !dbg !2102
  br i1 %914, label %915, label %920, !dbg !2103

915:                                              ; preds = %912
  %916 = load i8, ptr %765, align 1, !dbg !2104, !tbaa !1461
  %917 = icmp eq i8 %916, 0, !dbg !2104
  %918 = or i32 %913, 2
  %919 = select i1 %917, i32 %918, i32 %913, !dbg !2105
  br label %920, !dbg !2105

920:                                              ; preds = %915, %912
  %921 = phi i32 [ %913, %912 ], [ %919, %915 ], !dbg !2093
  call void @llvm.dbg.value(metadata i32 %921, metadata !1828, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 %906, metadata !1827, metadata !DIExpression()), !dbg !2093
  %922 = icmp sgt i8 %905, 0, !dbg !2106
  br i1 %922, label %923, label %931, !dbg !2107

923:                                              ; preds = %920, %923
  %924 = phi i32 [ %928, %923 ], [ %921, %920 ]
  %925 = phi i32 [ %929, %923 ], [ %906, %920 ]
  call void @llvm.dbg.value(metadata i32 %924, metadata !1828, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 %925, metadata !1827, metadata !DIExpression()), !dbg !2093
  %926 = add nuw nsw i32 %924, 54, !dbg !2108
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %926, i32 noundef 1) #8, !dbg !2109
  %927 = icmp ult i32 %924, 4, !dbg !2110
  %928 = select i1 %927, i32 4, i32 5
  call void @llvm.dbg.value(metadata i32 %928, metadata !1828, metadata !DIExpression()), !dbg !2093
  %929 = add nsw i32 %925, -1, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %929, metadata !1827, metadata !DIExpression()), !dbg !2093
  %930 = icmp ugt i32 %925, 1, !dbg !2106
  br i1 %930, label %923, label %931, !dbg !2107, !llvm.loop !2112

931:                                              ; preds = %923, %920
  %932 = phi i32 [ %921, %920 ], [ %928, %923 ], !dbg !2093
  %933 = add nuw nsw i32 %932, 54, !dbg !2114
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %933, i32 noundef 0) #8, !dbg !2115
  br label %934, !dbg !2116

934:                                              ; preds = %931, %895
  %935 = getelementptr inbounds [2 x [2 x i32]], ptr %8, i64 0, i64 %778, i64 1, !dbg !2117
  %936 = load i32, ptr %935, align 4, !dbg !2117, !tbaa !1554
  %937 = icmp eq i32 %936, 0, !dbg !2117
  br i1 %937, label %973, label %938, !dbg !2119

938:                                              ; preds = %934
  call void @llvm.dbg.value(metadata ptr %0, metadata !1816, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata ptr %1, metadata !1821, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %778, metadata !1822, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 4, metadata !1823, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 14, metadata !1824, metadata !DIExpression()), !dbg !2120
  %939 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %778, i64 13, !dbg !2122
  %940 = load i8, ptr %939, align 1, !dbg !2122, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %940, metadata !1825, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2120
  %941 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %778, i64 6, !dbg !2123
  %942 = load i8, ptr %941, align 1, !dbg !2123, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %942, metadata !1826, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2120
  %943 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %778, i64 14, !dbg !2124
  %944 = load i8, ptr %943, align 1, !dbg !2124, !tbaa !1461
  %945 = zext i8 %944 to i32, !dbg !2124
  call void @llvm.dbg.value(metadata i32 %945, metadata !1827, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !2120
  %946 = icmp sgt i8 %940, 0, !dbg !2125
  br i1 %946, label %947, label %951, !dbg !2126

947:                                              ; preds = %938
  %948 = load i8, ptr %766, align 1, !dbg !2127, !tbaa !1461
  %949 = icmp eq i8 %948, 0, !dbg !2127
  %950 = zext i1 %949 to i32, !dbg !2128
  br label %951, !dbg !2128

951:                                              ; preds = %947, %938
  %952 = phi i32 [ 0, %938 ], [ %950, %947 ], !dbg !2120
  call void @llvm.dbg.value(metadata i32 %952, metadata !1828, metadata !DIExpression()), !dbg !2120
  %953 = icmp sgt i8 %942, 0, !dbg !2129
  br i1 %953, label %954, label %959, !dbg !2130

954:                                              ; preds = %951
  %955 = load i8, ptr %767, align 1, !dbg !2131, !tbaa !1461
  %956 = icmp eq i8 %955, 0, !dbg !2131
  %957 = or i32 %952, 2
  %958 = select i1 %956, i32 %957, i32 %952, !dbg !2132
  br label %959, !dbg !2132

959:                                              ; preds = %954, %951
  %960 = phi i32 [ %952, %951 ], [ %958, %954 ], !dbg !2120
  call void @llvm.dbg.value(metadata i32 %960, metadata !1828, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 %945, metadata !1827, metadata !DIExpression()), !dbg !2120
  %961 = icmp sgt i8 %944, 0, !dbg !2133
  br i1 %961, label %962, label %970, !dbg !2134

962:                                              ; preds = %959, %962
  %963 = phi i32 [ %967, %962 ], [ %960, %959 ]
  %964 = phi i32 [ %968, %962 ], [ %945, %959 ]
  call void @llvm.dbg.value(metadata i32 %963, metadata !1828, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 %964, metadata !1827, metadata !DIExpression()), !dbg !2120
  %965 = add nuw nsw i32 %963, 54, !dbg !2135
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %965, i32 noundef 1) #8, !dbg !2136
  %966 = icmp ult i32 %963, 4, !dbg !2137
  %967 = select i1 %966, i32 4, i32 5
  call void @llvm.dbg.value(metadata i32 %967, metadata !1828, metadata !DIExpression()), !dbg !2120
  %968 = add nsw i32 %964, -1, !dbg !2138
  call void @llvm.dbg.value(metadata i32 %968, metadata !1827, metadata !DIExpression()), !dbg !2120
  %969 = icmp ugt i32 %964, 1, !dbg !2133
  br i1 %969, label %962, label %970, !dbg !2134, !llvm.loop !2139

970:                                              ; preds = %962, %887, %812, %959, %884, %809
  %971 = phi i32 [ %810, %809 ], [ %885, %884 ], [ %960, %959 ], [ %817, %812 ], [ %892, %887 ], [ %967, %962 ]
  %972 = add nuw nsw i32 %971, 54, !dbg !2141
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %972, i32 noundef 0) #8, !dbg !2141
  br label %973, !dbg !1998

973:                                              ; preds = %970, %782, %784, %934, %859, %776
  call void @llvm.dbg.value(metadata i64 %778, metadata !1402, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1426
  br i1 %777, label %776, label %770, !dbg !1998, !llvm.loop !2142

974:                                              ; preds = %770, %1117
  %975 = phi i1 [ true, %770 ], [ false, %1117 ]
  %976 = phi i64 [ 0, %770 ], [ 1, %1117 ]
  call void @llvm.dbg.value(metadata i64 %976, metadata !1402, metadata !DIExpression()), !dbg !1426
  %977 = load i32, ptr %763, align 4, !dbg !2144, !tbaa !1488
  switch i32 %977, label %1117 [
    i32 16, label %978
    i32 14, label %1009
    i32 15, label %1063
  ], !dbg !2148

978:                                              ; preds = %974
  %979 = getelementptr inbounds [2 x [2 x i32]], ptr %8, i64 0, i64 %976, !dbg !2149
  %980 = load i32, ptr %979, align 8, !dbg !2149, !tbaa !1554
  %981 = icmp eq i32 %980, 0, !dbg !2149
  br i1 %981, label %1117, label %982, !dbg !2152

982:                                              ; preds = %978
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata ptr %1, metadata !2156, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i64 %976, metadata !2157, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i32 0, metadata !2158, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i32 4, metadata !2159, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i32 4, metadata !2160, metadata !DIExpression()), !dbg !2164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8, !dbg !2166
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2161, metadata !DIExpression()), !dbg !2166
  %983 = trunc i64 %976 to i32, !dbg !2167
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %983, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %7) #8, !dbg !2167
  %984 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %976, i64 12, !dbg !2168
  %985 = load i16, ptr %984, align 4, !dbg !2168, !tbaa !2169
  %986 = sext i16 %985 to i32, !dbg !2168
  %987 = load i16, ptr %7, align 4, !dbg !2171, !tbaa !2169
  %988 = sext i16 %987 to i32, !dbg !2171
  %989 = sub nsw i32 %986, %988, !dbg !2172
  call void @llvm.dbg.value(metadata i32 %989, metadata !2162, metadata !DIExpression()), !dbg !2164
  %990 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %976, i64 12, i64 1, !dbg !2173
  %991 = load i16, ptr %990, align 2, !dbg !2173, !tbaa !2169
  %992 = sext i16 %991 to i32, !dbg !2173
  %993 = load i16, ptr %775, align 2, !dbg !2174, !tbaa !2169
  %994 = sext i16 %993 to i32, !dbg !2174
  %995 = sub nsw i32 %992, %994, !dbg !2175
  call void @llvm.dbg.value(metadata i32 %995, metadata !2163, metadata !DIExpression()), !dbg !2164
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %983, i32 noundef 0, i32 noundef 0, i32 noundef %989), !dbg !2176
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %983, i32 noundef 0, i32 noundef 1, i32 noundef %995), !dbg !2177
  call void @llvm.dbg.value(metadata i32 %989, metadata !2178, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i32 %995, metadata !2183, metadata !DIExpression()), !dbg !2184
  %996 = and i32 %989, 65535, !dbg !2186
  %997 = shl i32 %995, 16, !dbg !2187
  %998 = or i32 %997, %996, !dbg !2188
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8 0, metadata !2194, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2200
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2200
  call void @llvm.dbg.value(metadata i32 4, metadata !2196, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 4, metadata !2197, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %976, metadata !2198, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 %998, metadata !2199, metadata !DIExpression()), !dbg !2200
  %999 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %976, i64 12, !dbg !2202
  call void @llvm.dbg.value(metadata ptr %999, metadata !2203, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i32 4, metadata !2208, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i32 4, metadata !2209, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i32 %998, metadata !2210, metadata !DIExpression()), !dbg !2216
  %1000 = zext i32 %998 to i64, !dbg !2218
  %1001 = mul nuw i64 %1000, 4294967297, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %1001, metadata !2213, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2216
  store i64 %1001, ptr %999, align 8, !dbg !2221, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2212, metadata !DIExpression()), !dbg !2216
  %1002 = getelementptr inbounds i64, ptr %999, i64 1, !dbg !2227
  store i64 %1001, ptr %1002, align 8, !dbg !2221, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2216
  %1003 = getelementptr inbounds i64, ptr %999, i64 4, !dbg !2227
  store i64 %1001, ptr %1003, align 8, !dbg !2221, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2212, metadata !DIExpression()), !dbg !2216
  %1004 = getelementptr inbounds i64, ptr %999, i64 5, !dbg !2227
  store i64 %1001, ptr %1004, align 8, !dbg !2221, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 2, metadata !2211, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2216
  %1005 = getelementptr inbounds i64, ptr %999, i64 8, !dbg !2227
  store i64 %1001, ptr %1005, align 8, !dbg !2221, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2212, metadata !DIExpression()), !dbg !2216
  %1006 = getelementptr inbounds i64, ptr %999, i64 9, !dbg !2227
  store i64 %1001, ptr %1006, align 8, !dbg !2221, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 3, metadata !2211, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2216
  %1007 = getelementptr inbounds i64, ptr %999, i64 12, !dbg !2227
  store i64 %1001, ptr %1007, align 8, !dbg !2221, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2212, metadata !DIExpression()), !dbg !2216
  %1008 = getelementptr inbounds i64, ptr %999, i64 13, !dbg !2227
  store i64 %1001, ptr %1008, align 8, !dbg !2221, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 2, metadata !2212, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i64 4, metadata !2211, metadata !DIExpression()), !dbg !2216
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8, !dbg !2228
  br label %1117, !dbg !2229

1009:                                             ; preds = %974
  %1010 = getelementptr inbounds [2 x [2 x i32]], ptr %8, i64 0, i64 %976, !dbg !2230
  %1011 = load i32, ptr %1010, align 8, !dbg !2230, !tbaa !1554
  %1012 = icmp eq i32 %1011, 0, !dbg !2230
  br i1 %1012, label %1036, label %1013, !dbg !2234

1013:                                             ; preds = %1009
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata ptr %1, metadata !2156, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i64 %976, metadata !2157, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i32 0, metadata !2158, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i32 4, metadata !2159, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i32 2, metadata !2160, metadata !DIExpression()), !dbg !2235
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8, !dbg !2237
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2161, metadata !DIExpression()), !dbg !2237
  %1014 = trunc i64 %976 to i32, !dbg !2238
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %1014, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %6) #8, !dbg !2238
  %1015 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %976, i64 12, !dbg !2239
  %1016 = load i16, ptr %1015, align 4, !dbg !2239, !tbaa !2169
  %1017 = sext i16 %1016 to i32, !dbg !2239
  %1018 = load i16, ptr %6, align 4, !dbg !2240, !tbaa !2169
  %1019 = sext i16 %1018 to i32, !dbg !2240
  %1020 = sub nsw i32 %1017, %1019, !dbg !2241
  call void @llvm.dbg.value(metadata i32 %1020, metadata !2162, metadata !DIExpression()), !dbg !2235
  %1021 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %976, i64 12, i64 1, !dbg !2242
  %1022 = load i16, ptr %1021, align 2, !dbg !2242, !tbaa !2169
  %1023 = sext i16 %1022 to i32, !dbg !2242
  %1024 = load i16, ptr %773, align 2, !dbg !2243, !tbaa !2169
  %1025 = sext i16 %1024 to i32, !dbg !2243
  %1026 = sub nsw i32 %1023, %1025, !dbg !2244
  call void @llvm.dbg.value(metadata i32 %1026, metadata !2163, metadata !DIExpression()), !dbg !2235
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %1014, i32 noundef 0, i32 noundef 0, i32 noundef %1020), !dbg !2245
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %1014, i32 noundef 0, i32 noundef 1, i32 noundef %1026), !dbg !2246
  call void @llvm.dbg.value(metadata i32 %1020, metadata !2178, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i32 %1026, metadata !2183, metadata !DIExpression()), !dbg !2247
  %1027 = and i32 %1020, 65535, !dbg !2249
  %1028 = shl i32 %1026, 16, !dbg !2250
  %1029 = or i32 %1028, %1027, !dbg !2251
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 0, metadata !2194, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2252
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2252
  call void @llvm.dbg.value(metadata i32 4, metadata !2196, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 2, metadata !2197, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %976, metadata !2198, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 %1029, metadata !2199, metadata !DIExpression()), !dbg !2252
  %1030 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %976, i64 12, !dbg !2254
  call void @llvm.dbg.value(metadata ptr %1030, metadata !2203, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 4, metadata !2208, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 2, metadata !2209, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 %1029, metadata !2210, metadata !DIExpression()), !dbg !2255
  %1031 = zext i32 %1029 to i64, !dbg !2257
  %1032 = mul nuw i64 %1031, 4294967297, !dbg !2258
  call void @llvm.dbg.value(metadata i64 %1032, metadata !2213, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2255
  store i64 %1032, ptr %1030, align 8, !dbg !2260, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2212, metadata !DIExpression()), !dbg !2255
  %1033 = getelementptr inbounds i64, ptr %1030, i64 1, !dbg !2261
  store i64 %1032, ptr %1033, align 8, !dbg !2260, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2255
  %1034 = getelementptr inbounds i64, ptr %1030, i64 4, !dbg !2261
  store i64 %1032, ptr %1034, align 8, !dbg !2260, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2212, metadata !DIExpression()), !dbg !2255
  %1035 = getelementptr inbounds i64, ptr %1030, i64 5, !dbg !2261
  store i64 %1032, ptr %1035, align 8, !dbg !2260, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 2, metadata !2212, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i64 2, metadata !2211, metadata !DIExpression()), !dbg !2255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8, !dbg !2262
  br label %1036, !dbg !2263

1036:                                             ; preds = %1013, %1009
  %1037 = getelementptr inbounds [2 x [2 x i32]], ptr %8, i64 0, i64 %976, i64 1, !dbg !2264
  %1038 = load i32, ptr %1037, align 4, !dbg !2264, !tbaa !1554
  %1039 = icmp eq i32 %1038, 0, !dbg !2264
  br i1 %1039, label %1117, label %1040, !dbg !2266

1040:                                             ; preds = %1036
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata ptr %1, metadata !2156, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %976, metadata !2157, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 8, metadata !2158, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 4, metadata !2159, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 2, metadata !2160, metadata !DIExpression()), !dbg !2267
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8, !dbg !2269
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2161, metadata !DIExpression()), !dbg !2269
  %1041 = trunc i64 %976 to i32, !dbg !2270
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %1041, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %5) #8, !dbg !2270
  %1042 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %976, i64 28, !dbg !2271
  %1043 = load i16, ptr %1042, align 4, !dbg !2271, !tbaa !2169
  %1044 = sext i16 %1043 to i32, !dbg !2271
  %1045 = load i16, ptr %5, align 4, !dbg !2272, !tbaa !2169
  %1046 = sext i16 %1045 to i32, !dbg !2272
  %1047 = sub nsw i32 %1044, %1046, !dbg !2273
  call void @llvm.dbg.value(metadata i32 %1047, metadata !2162, metadata !DIExpression()), !dbg !2267
  %1048 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %976, i64 28, i64 1, !dbg !2274
  %1049 = load i16, ptr %1048, align 2, !dbg !2274, !tbaa !2169
  %1050 = sext i16 %1049 to i32, !dbg !2274
  %1051 = load i16, ptr %774, align 2, !dbg !2275, !tbaa !2169
  %1052 = sext i16 %1051 to i32, !dbg !2275
  %1053 = sub nsw i32 %1050, %1052, !dbg !2276
  call void @llvm.dbg.value(metadata i32 %1053, metadata !2163, metadata !DIExpression()), !dbg !2267
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %1041, i32 noundef 8, i32 noundef 0, i32 noundef %1047), !dbg !2277
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %1041, i32 noundef 8, i32 noundef 1, i32 noundef %1053), !dbg !2278
  call void @llvm.dbg.value(metadata i32 %1047, metadata !2178, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i32 %1053, metadata !2183, metadata !DIExpression()), !dbg !2279
  %1054 = and i32 %1047, 65535, !dbg !2281
  %1055 = shl i32 %1053, 16, !dbg !2282
  %1056 = or i32 %1055, %1054, !dbg !2283
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8 0, metadata !2194, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2284
  call void @llvm.dbg.value(metadata i8 2, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2284
  call void @llvm.dbg.value(metadata i32 4, metadata !2196, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 2, metadata !2197, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i64 %976, metadata !2198, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 %1056, metadata !2199, metadata !DIExpression()), !dbg !2284
  %1057 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %976, i64 28, !dbg !2286
  call void @llvm.dbg.value(metadata ptr %1057, metadata !2203, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 4, metadata !2208, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 2, metadata !2209, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %1056, metadata !2210, metadata !DIExpression()), !dbg !2287
  %1058 = zext i32 %1056 to i64, !dbg !2289
  %1059 = mul nuw i64 %1058, 4294967297, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %1059, metadata !2213, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2287
  store i64 %1059, ptr %1057, align 8, !dbg !2292, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2212, metadata !DIExpression()), !dbg !2287
  %1060 = getelementptr inbounds i64, ptr %1057, i64 1, !dbg !2293
  store i64 %1059, ptr %1060, align 8, !dbg !2292, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2287
  %1061 = getelementptr inbounds i64, ptr %1057, i64 4, !dbg !2293
  store i64 %1059, ptr %1061, align 8, !dbg !2292, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2212, metadata !DIExpression()), !dbg !2287
  %1062 = getelementptr inbounds i64, ptr %1057, i64 5, !dbg !2293
  store i64 %1059, ptr %1062, align 8, !dbg !2292, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 2, metadata !2212, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i64 2, metadata !2211, metadata !DIExpression()), !dbg !2287
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8, !dbg !2294
  br label %1117, !dbg !2295

1063:                                             ; preds = %974
  %1064 = getelementptr inbounds [2 x [2 x i32]], ptr %8, i64 0, i64 %976, !dbg !2296
  %1065 = load i32, ptr %1064, align 8, !dbg !2296, !tbaa !1554
  %1066 = icmp eq i32 %1065, 0, !dbg !2296
  br i1 %1066, label %1090, label %1067, !dbg !2300

1067:                                             ; preds = %1063
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata ptr %1, metadata !2156, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i64 %976, metadata !2157, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 0, metadata !2158, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 2, metadata !2159, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 4, metadata !2160, metadata !DIExpression()), !dbg !2301
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8, !dbg !2303
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2161, metadata !DIExpression()), !dbg !2303
  %1068 = trunc i64 %976 to i32, !dbg !2304
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %1068, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %4) #8, !dbg !2304
  %1069 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %976, i64 12, !dbg !2305
  %1070 = load i16, ptr %1069, align 4, !dbg !2305, !tbaa !2169
  %1071 = sext i16 %1070 to i32, !dbg !2305
  %1072 = load i16, ptr %4, align 4, !dbg !2306, !tbaa !2169
  %1073 = sext i16 %1072 to i32, !dbg !2306
  %1074 = sub nsw i32 %1071, %1073, !dbg !2307
  call void @llvm.dbg.value(metadata i32 %1074, metadata !2162, metadata !DIExpression()), !dbg !2301
  %1075 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %976, i64 12, i64 1, !dbg !2308
  %1076 = load i16, ptr %1075, align 2, !dbg !2308, !tbaa !2169
  %1077 = sext i16 %1076 to i32, !dbg !2308
  %1078 = load i16, ptr %771, align 2, !dbg !2309, !tbaa !2169
  %1079 = sext i16 %1078 to i32, !dbg !2309
  %1080 = sub nsw i32 %1077, %1079, !dbg !2310
  call void @llvm.dbg.value(metadata i32 %1080, metadata !2163, metadata !DIExpression()), !dbg !2301
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %1068, i32 noundef 0, i32 noundef 0, i32 noundef %1074), !dbg !2311
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %1068, i32 noundef 0, i32 noundef 1, i32 noundef %1080), !dbg !2312
  call void @llvm.dbg.value(metadata i32 %1074, metadata !2178, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i32 %1080, metadata !2183, metadata !DIExpression()), !dbg !2313
  %1081 = and i32 %1074, 65535, !dbg !2315
  %1082 = shl i32 %1080, 16, !dbg !2316
  %1083 = or i32 %1082, %1081, !dbg !2317
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 0, metadata !2194, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2318
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2318
  call void @llvm.dbg.value(metadata i32 2, metadata !2196, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i32 4, metadata !2197, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %976, metadata !2198, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i32 %1083, metadata !2199, metadata !DIExpression()), !dbg !2318
  %1084 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %976, i64 12, !dbg !2320
  call void @llvm.dbg.value(metadata ptr %1084, metadata !2203, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i32 2, metadata !2208, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i32 4, metadata !2209, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i32 %1083, metadata !2210, metadata !DIExpression()), !dbg !2321
  %1085 = zext i32 %1083 to i64, !dbg !2323
  %1086 = mul nuw i64 %1085, 4294967297, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %1086, metadata !2213, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2321
  store i64 %1086, ptr %1084, align 8, !dbg !2326, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !2321
  %1087 = getelementptr inbounds i64, ptr %1084, i64 4, !dbg !2327
  store i64 %1086, ptr %1087, align 8, !dbg !2326, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 2, metadata !2211, metadata !DIExpression()), !dbg !2321
  %1088 = getelementptr inbounds i64, ptr %1084, i64 8, !dbg !2327
  store i64 %1086, ptr %1088, align 8, !dbg !2326, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 3, metadata !2211, metadata !DIExpression()), !dbg !2321
  %1089 = getelementptr inbounds i64, ptr %1084, i64 12, !dbg !2327
  store i64 %1086, ptr %1089, align 8, !dbg !2326, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2212, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i64 4, metadata !2211, metadata !DIExpression()), !dbg !2321
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8, !dbg !2328
  br label %1090, !dbg !2329

1090:                                             ; preds = %1067, %1063
  %1091 = getelementptr inbounds [2 x [2 x i32]], ptr %8, i64 0, i64 %976, i64 1, !dbg !2330
  %1092 = load i32, ptr %1091, align 4, !dbg !2330, !tbaa !1554
  %1093 = icmp eq i32 %1092, 0, !dbg !2330
  br i1 %1093, label %1117, label %1094, !dbg !2332

1094:                                             ; preds = %1090
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata ptr %1, metadata !2156, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i64 %976, metadata !2157, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i32 4, metadata !2158, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i32 2, metadata !2159, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i32 4, metadata !2160, metadata !DIExpression()), !dbg !2333
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8, !dbg !2335
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2161, metadata !DIExpression()), !dbg !2335
  %1095 = trunc i64 %976 to i32, !dbg !2336
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %1095, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %3) #8, !dbg !2336
  %1096 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %976, i64 14, !dbg !2337
  %1097 = load i16, ptr %1096, align 4, !dbg !2337, !tbaa !2169
  %1098 = sext i16 %1097 to i32, !dbg !2337
  %1099 = load i16, ptr %3, align 4, !dbg !2338, !tbaa !2169
  %1100 = sext i16 %1099 to i32, !dbg !2338
  %1101 = sub nsw i32 %1098, %1100, !dbg !2339
  call void @llvm.dbg.value(metadata i32 %1101, metadata !2162, metadata !DIExpression()), !dbg !2333
  %1102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %976, i64 14, i64 1, !dbg !2340
  %1103 = load i16, ptr %1102, align 2, !dbg !2340, !tbaa !2169
  %1104 = sext i16 %1103 to i32, !dbg !2340
  %1105 = load i16, ptr %772, align 2, !dbg !2341, !tbaa !2169
  %1106 = sext i16 %1105 to i32, !dbg !2341
  %1107 = sub nsw i32 %1104, %1106, !dbg !2342
  call void @llvm.dbg.value(metadata i32 %1107, metadata !2163, metadata !DIExpression()), !dbg !2333
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %1095, i32 noundef 4, i32 noundef 0, i32 noundef %1101), !dbg !2343
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %1095, i32 noundef 4, i32 noundef 1, i32 noundef %1107), !dbg !2344
  call void @llvm.dbg.value(metadata i32 %1101, metadata !2178, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %1107, metadata !2183, metadata !DIExpression()), !dbg !2345
  %1108 = and i32 %1101, 65535, !dbg !2347
  %1109 = shl i32 %1107, 16, !dbg !2348
  %1110 = or i32 %1109, %1108, !dbg !2349
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i8 2, metadata !2194, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2350
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2350
  call void @llvm.dbg.value(metadata i32 2, metadata !2196, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i32 4, metadata !2197, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i64 %976, metadata !2198, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i32 %1110, metadata !2199, metadata !DIExpression()), !dbg !2350
  %1111 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %976, i64 14, !dbg !2352
  call void @llvm.dbg.value(metadata ptr %1111, metadata !2203, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i32 2, metadata !2208, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i32 4, metadata !2209, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i32 %1110, metadata !2210, metadata !DIExpression()), !dbg !2353
  %1112 = zext i32 %1110 to i64, !dbg !2355
  %1113 = mul nuw i64 %1112, 4294967297, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %1113, metadata !2213, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2353
  store i64 %1113, ptr %1111, align 8, !dbg !2358, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !2353
  %1114 = getelementptr inbounds i64, ptr %1111, i64 4, !dbg !2359
  store i64 %1113, ptr %1114, align 8, !dbg !2358, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 2, metadata !2211, metadata !DIExpression()), !dbg !2353
  %1115 = getelementptr inbounds i64, ptr %1111, i64 8, !dbg !2359
  store i64 %1113, ptr %1115, align 8, !dbg !2358, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 3, metadata !2211, metadata !DIExpression()), !dbg !2353
  %1116 = getelementptr inbounds i64, ptr %1111, i64 12, !dbg !2359
  store i64 %1113, ptr %1116, align 8, !dbg !2358, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2212, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 4, metadata !2211, metadata !DIExpression()), !dbg !2353
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8, !dbg !2360
  br label %1117, !dbg !2361

1117:                                             ; preds = %974, %982, %978, %1094, %1090, %1036, %1040
  call void @llvm.dbg.value(metadata i64 %976, metadata !1402, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1426
  br i1 %975, label %974, label %1118, !dbg !1999, !llvm.loop !2362

1118:                                             ; preds = %1117
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !2364
  br label %1119, !dbg !2365

1119:                                             ; preds = %93, %751, %559, %374, %370, %364, %377, %379, %394, %400, %388, %1118
  %1120 = phi i1 [ %378, %377 ], [ %380, %379 ], [ %380, %394 ], [ %380, %400 ], [ %380, %388 ], [ %378, %1118 ], [ %264, %364 ], [ %264, %370 ], [ %264, %374 ], [ %402, %559 ], [ %561, %751 ], [ false, %93 ]
  call void @llvm.dbg.value(metadata ptr %1, metadata !1429, metadata !DIExpression()), !dbg !2366
  %1121 = load ptr, ptr %11, align 8, !dbg !1930, !tbaa !1437
  %1122 = load ptr, ptr %13, align 16, !dbg !2367, !tbaa !1439
  %1123 = ptrtoint ptr %1121 to i64, !dbg !2368
  %1124 = ptrtoint ptr %1122 to i64, !dbg !2368
  %1125 = sub i64 %1123, %1124, !dbg !2368
  %1126 = load i32, ptr %18, align 4, !dbg !2369, !tbaa !1442
  %1127 = load i32, ptr %20, align 8, !dbg !2370, !tbaa !1444
  %1128 = trunc i64 %1125 to i32, !dbg !2371
  %1129 = add i32 %1126, %1128, !dbg !2371
  %1130 = shl i32 %1129, 3, !dbg !2371
  %1131 = add i32 %1130, %1127, !dbg !2371
  call void @llvm.dbg.value(metadata i32 %1131, metadata !1405, metadata !DIExpression()), !dbg !1426
  %1132 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, !dbg !2372
  %1133 = load i32, ptr %1132, align 8, !dbg !2373, !tbaa !1587
  %1134 = add i32 %1133, %25, !dbg !2374
  %1135 = add i32 %1134, %1131, !dbg !2373
  store i32 %1135, ptr %1132, align 8, !dbg !2373, !tbaa !1587
  br i1 %1120, label %1256, label %1136, !dbg !2375

1136:                                             ; preds = %1119
  call void @llvm.dbg.value(metadata ptr %0, metadata !2376, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata ptr %1, metadata !2379, metadata !DIExpression()), !dbg !2383
  %1137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 50, !dbg !2387
  %1138 = load i32, ptr %1137, align 4, !dbg !2387, !tbaa !2388
  call void @llvm.dbg.value(metadata i32 %1138, metadata !2380, metadata !DIExpression()), !dbg !2383
  %1139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 23, !dbg !2389
  %1140 = load i32, ptr %1139, align 4, !dbg !2389, !tbaa !1725
  %1141 = and i32 %1140, 1, !dbg !2390
  %1142 = icmp eq i32 %1141, 0, !dbg !2390
  br i1 %1142, label %1153, label %1143, !dbg !2391

1143:                                             ; preds = %1136
  %1144 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 34, !dbg !2392
  %1145 = load ptr, ptr %1144, align 16, !dbg !2392, !tbaa !2393
  %1146 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !2394
  %1147 = load i32, ptr %1146, align 8, !dbg !2394, !tbaa !1459
  %1148 = add nsw i32 %1147, -1, !dbg !2395
  %1149 = sext i32 %1148 to i64, !dbg !2396
  %1150 = getelementptr inbounds i16, ptr %1145, i64 %1149, !dbg !2396
  %1151 = load i16, ptr %1150, align 2, !dbg !2396, !tbaa !2169
  %1152 = zext i16 %1151 to i32, !dbg !2396
  br label %1153, !dbg !2391

1153:                                             ; preds = %1143, %1136
  %1154 = phi i32 [ %1152, %1143 ], [ -1, %1136 ], !dbg !2391
  call void @llvm.dbg.value(metadata i32 %1154, metadata !2381, metadata !DIExpression()), !dbg !2383
  %1155 = and i32 %1140, 2, !dbg !2397
  %1156 = icmp eq i32 %1155, 0, !dbg !2397
  br i1 %1156, label %1166, label %1157, !dbg !2398

1157:                                             ; preds = %1153
  %1158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 34, !dbg !2399
  %1159 = load ptr, ptr %1158, align 16, !dbg !2399, !tbaa !2393
  %1160 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 31, !dbg !2400
  %1161 = load i32, ptr %1160, align 4, !dbg !2400, !tbaa !1740
  %1162 = sext i32 %1161 to i64, !dbg !2401
  %1163 = getelementptr inbounds i16, ptr %1159, i64 %1162, !dbg !2401
  %1164 = load i16, ptr %1163, align 2, !dbg !2401, !tbaa !2169
  %1165 = zext i16 %1164 to i32, !dbg !2401
  br label %1166, !dbg !2398

1166:                                             ; preds = %1153, %1157
  %1167 = phi i32 [ %1165, %1157 ], [ -1, %1153 ], !dbg !2398
  call void @llvm.dbg.value(metadata i32 %1167, metadata !2382, metadata !DIExpression()), !dbg !2383
  %1168 = shl i32 %1154, 30, !dbg !2402
  %1169 = ashr i32 %1168, 31, !dbg !2402
  %1170 = add nsw i32 %1169, 76, !dbg !2403
  %1171 = lshr i32 %1167, 1, !dbg !2404
  %1172 = and i32 %1171, 2, !dbg !2405
  %1173 = sub nuw nsw i32 %1170, %1172, !dbg !2406
  %1174 = and i32 %1138, 1, !dbg !2407
  call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef %1173, i32 noundef %1174) #8, !dbg !2408
  %1175 = lshr i32 %1167, 2, !dbg !2409
  %1176 = and i32 %1175, 2, !dbg !2410
  %1177 = or i32 %1174, %1176, !dbg !2411
  %1178 = sub nuw nsw i32 76, %1177, !dbg !2411
  %1179 = load i32, ptr %1137, align 4, !dbg !2412, !tbaa !2388
  %1180 = lshr i32 %1179, 1, !dbg !2413
  %1181 = and i32 %1180, 1, !dbg !2414
  call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef %1178, i32 noundef %1181) #8, !dbg !2415
  %1182 = shl i32 %1154, 28, !dbg !2416
  %1183 = ashr i32 %1182, 31, !dbg !2416
  %1184 = shl i32 %1138, 1, !dbg !2417
  %1185 = and i32 %1184, 2, !dbg !2418
  %1186 = sub nuw nsw i32 76, %1185, !dbg !2419
  %1187 = add nsw i32 %1186, %1183, !dbg !2420
  %1188 = load i32, ptr %1137, align 4, !dbg !2421, !tbaa !2388
  %1189 = lshr i32 %1188, 2, !dbg !2422
  %1190 = and i32 %1189, 1, !dbg !2423
  call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef %1187, i32 noundef %1190) #8, !dbg !2424
  %1191 = shl i32 %1138, 29, !dbg !2425
  %1192 = ashr i32 %1191, 31, !dbg !2425
  %1193 = and i32 %1138, 2, !dbg !2426
  %1194 = sub nuw nsw i32 76, %1193, !dbg !2427
  %1195 = add nsw i32 %1194, %1192, !dbg !2428
  %1196 = load i32, ptr %1137, align 4, !dbg !2429, !tbaa !2388
  %1197 = lshr i32 %1196, 3, !dbg !2430
  %1198 = and i32 %1197, 1, !dbg !2431
  call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef %1195, i32 noundef %1198) #8, !dbg !2432
  call void @llvm.dbg.value(metadata ptr %0, metadata !2433, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata ptr %1, metadata !2436, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 -1, metadata !2437, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 -1, metadata !2438, metadata !DIExpression()), !dbg !2440
  %1199 = load i32, ptr %1139, align 4, !dbg !2442, !tbaa !1725
  %1200 = and i32 %1199, 1, !dbg !2444
  %1201 = icmp eq i32 %1200, 0, !dbg !2444
  br i1 %1201, label %1214, label %1202, !dbg !2445

1202:                                             ; preds = %1166
  %1203 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 34, !dbg !2446
  %1204 = load ptr, ptr %1203, align 16, !dbg !2446, !tbaa !2393
  %1205 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !2448
  %1206 = load i32, ptr %1205, align 8, !dbg !2448, !tbaa !1459
  %1207 = add nsw i32 %1206, -1, !dbg !2449
  %1208 = sext i32 %1207 to i64, !dbg !2450
  %1209 = getelementptr inbounds i16, ptr %1204, i64 %1208, !dbg !2450
  %1210 = load i16, ptr %1209, align 2, !dbg !2450, !tbaa !2169
  %1211 = lshr i16 %1210, 4, !dbg !2451
  %1212 = and i16 %1211, 3, !dbg !2452
  %1213 = zext i16 %1212 to i32, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %1213, metadata !2437, metadata !DIExpression()), !dbg !2440
  br label %1214, !dbg !2453

1214:                                             ; preds = %1202, %1166
  %1215 = phi i32 [ %1213, %1202 ], [ -1, %1166 ], !dbg !2440
  call void @llvm.dbg.value(metadata i32 %1215, metadata !2437, metadata !DIExpression()), !dbg !2440
  %1216 = and i32 %1199, 2, !dbg !2454
  %1217 = icmp eq i32 %1216, 0, !dbg !2454
  br i1 %1217, label %1218, label %1221, !dbg !2456

1218:                                             ; preds = %1214
  call void @llvm.dbg.value(metadata i32 -1, metadata !2438, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 0, metadata !2439, metadata !DIExpression()), !dbg !2440
  %1219 = icmp sgt i32 %1215, 0, !dbg !2457
  %1220 = zext i1 %1219 to i32, !dbg !2459
  call void @llvm.dbg.value(metadata i32 %1220, metadata !2439, metadata !DIExpression()), !dbg !2440
  br label %1238, !dbg !2460

1221:                                             ; preds = %1214
  %1222 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 34, !dbg !2461
  %1223 = load ptr, ptr %1222, align 16, !dbg !2461, !tbaa !2393
  %1224 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 31, !dbg !2463
  %1225 = load i32, ptr %1224, align 4, !dbg !2463, !tbaa !1740
  %1226 = sext i32 %1225 to i64, !dbg !2464
  %1227 = getelementptr inbounds i16, ptr %1223, i64 %1226, !dbg !2464
  %1228 = load i16, ptr %1227, align 2, !dbg !2464, !tbaa !2169
  %1229 = freeze i16 %1228, !dbg !2465
  %1230 = lshr i16 %1229, 4, !dbg !2465
  %1231 = and i16 %1230, 3, !dbg !2466
  %1232 = zext i16 %1231 to i32, !dbg !2466
  call void @llvm.dbg.value(metadata i32 %1232, metadata !2438, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 0, metadata !2439, metadata !DIExpression()), !dbg !2440
  %1233 = icmp sgt i32 %1215, 0, !dbg !2457
  %1234 = zext i1 %1233 to i32, !dbg !2459
  call void @llvm.dbg.value(metadata i32 %1234, metadata !2439, metadata !DIExpression()), !dbg !2440
  %1235 = icmp eq i16 %1231, 0, !dbg !2467
  %1236 = or i32 %1234, 2, !dbg !2460
  %1237 = select i1 %1235, i32 %1234, i32 %1236, !dbg !2460
  br label %1238, !dbg !2460

1238:                                             ; preds = %1221, %1218
  %1239 = phi i32 [ -1, %1218 ], [ %1232, %1221 ]
  %1240 = phi i32 [ %1220, %1218 ], [ %1237, %1221 ]
  call void @llvm.dbg.value(metadata i32 %1240, metadata !2439, metadata !DIExpression()), !dbg !2440
  %1241 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 51, !dbg !2469
  %1242 = load i32, ptr %1241, align 8, !dbg !2469, !tbaa !2471
  %1243 = icmp eq i32 %1242, 0, !dbg !2472
  %1244 = add nuw nsw i32 %1240, 77, !dbg !2473
  br i1 %1243, label %1245, label %1246, !dbg !2474

1245:                                             ; preds = %1238
  call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef %1244, i32 noundef 0) #8, !dbg !2475
  br label %1256, !dbg !2477

1246:                                             ; preds = %1238
  call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef %1244, i32 noundef 1) #8, !dbg !2478
  call void @llvm.dbg.value(metadata i32 4, metadata !2439, metadata !DIExpression()), !dbg !2440
  %1247 = icmp eq i32 %1215, 2, !dbg !2480
  %1248 = select i1 %1247, i32 5, i32 4, !dbg !2482
  call void @llvm.dbg.value(metadata i32 %1248, metadata !2439, metadata !DIExpression()), !dbg !2440
  %1249 = icmp eq i32 %1239, 2, !dbg !2483
  %1250 = or i32 %1248, 2, !dbg !2485
  %1251 = select i1 %1249, i32 %1250, i32 %1248, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %1251, metadata !2439, metadata !DIExpression()), !dbg !2440
  %1252 = add nuw nsw i32 %1251, 77, !dbg !2486
  %1253 = load i32, ptr %1241, align 8, !dbg !2487, !tbaa !2471
  %1254 = icmp sgt i32 %1253, 1, !dbg !2488
  %1255 = zext i1 %1254 to i32, !dbg !2488
  call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef %1252, i32 noundef %1255) #8, !dbg !2489
  br label %1256

1256:                                             ; preds = %1246, %1245, %1119
  call void @llvm.dbg.value(metadata ptr %0, metadata !1300, metadata !DIExpression()), !dbg !2490
  %1257 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 18, !dbg !2493
  %1258 = load ptr, ptr %1257, align 16, !dbg !2493, !tbaa !1638
  %1259 = getelementptr inbounds %struct.x264_pps_t, ptr %1258, i64 0, i32 15, !dbg !2495
  %1260 = load i32, ptr %1259, align 4, !dbg !2495, !tbaa !1640
  %1261 = icmp eq i32 %1260, 0, !dbg !2496
  br i1 %1261, label %1336, label %1262, !dbg !2497

1262:                                             ; preds = %1256
  %1263 = load i32, ptr %9, align 8, !dbg !2498, !tbaa !1428
  %1264 = sext i32 %1263 to i64, !dbg !2499
  call void @llvm.dbg.value(metadata i8 poison, metadata !1301, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2490
  %1265 = lshr i64 393055, %1264, !dbg !2500
  %1266 = and i64 %1265, 1, !dbg !2500
  %1267 = icmp eq i64 %1266, 0, !dbg !2500
  br i1 %1267, label %1272, label %1268, !dbg !2502

1268:                                             ; preds = %1262
  %1269 = getelementptr inbounds [19 x i8], ptr @x264_mb_transform_8x8_allowed.partition_tab, i64 0, i64 %1264, !dbg !2499
  %1270 = load i8, ptr %1269, align 1, !dbg !2499, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %1270, metadata !1301, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2490
  %1271 = zext i8 %1270 to i32, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %1271, metadata !1301, metadata !DIExpression()), !dbg !2490
  br label %1323, !dbg !2503

1272:                                             ; preds = %1262
  switch i32 %1263, label %1300 [
    i32 7, label %1273
    i32 5, label %1278
  ], !dbg !2504

1273:                                             ; preds = %1272
  %1274 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 16, !dbg !2505
  %1275 = load ptr, ptr %1274, align 16, !dbg !2505, !tbaa !2507
  %1276 = getelementptr inbounds %struct.x264_sps_t, ptr %1275, i64 0, i32 20, !dbg !2508
  %1277 = load i32, ptr %1276, align 4, !dbg !2508, !tbaa !2509
  br label %1323, !dbg !2513

1278:                                             ; preds = %1272
  %1279 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 1, !dbg !2514
  %1280 = load i32, ptr %1279, align 4, !dbg !2514, !tbaa !2518
  %1281 = and i32 %1280, 32, !dbg !2519
  %1282 = icmp eq i32 %1281, 0, !dbg !2519
  br i1 %1282, label %1326, label %1283, !dbg !2520

1283:                                             ; preds = %1278
  call void @llvm.dbg.value(metadata i64 0, metadata !1302, metadata !DIExpression()), !dbg !2490
  %1284 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 0, !dbg !2521
  %1285 = load i32, ptr %1284, align 4, !dbg !2521, !tbaa !1554
  %1286 = icmp eq i32 %1285, 3, !dbg !2525
  call void @llvm.dbg.value(metadata i64 0, metadata !1302, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2490
  br i1 %1286, label %1287, label %1336, !dbg !2526

1287:                                             ; preds = %1283
  call void @llvm.dbg.value(metadata i64 1, metadata !1302, metadata !DIExpression()), !dbg !2490
  %1288 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 1, !dbg !2521
  %1289 = load i32, ptr %1288, align 4, !dbg !2521, !tbaa !1554
  %1290 = icmp eq i32 %1289, 3, !dbg !2525
  call void @llvm.dbg.value(metadata i64 1, metadata !1302, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2490
  br i1 %1290, label %1291, label %1336, !dbg !2526

1291:                                             ; preds = %1287
  call void @llvm.dbg.value(metadata i64 2, metadata !1302, metadata !DIExpression()), !dbg !2490
  %1292 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 2, !dbg !2521
  %1293 = load i32, ptr %1292, align 4, !dbg !2521, !tbaa !1554
  %1294 = icmp eq i32 %1293, 3, !dbg !2525
  call void @llvm.dbg.value(metadata i64 2, metadata !1302, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2490
  br i1 %1294, label %1295, label %1336, !dbg !2526

1295:                                             ; preds = %1291
  call void @llvm.dbg.value(metadata i64 3, metadata !1302, metadata !DIExpression()), !dbg !2490
  %1296 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 3, !dbg !2521
  %1297 = load i32, ptr %1296, align 4, !dbg !2521, !tbaa !1554
  %1298 = icmp eq i32 %1297, 3, !dbg !2525
  call void @llvm.dbg.value(metadata i64 3, metadata !1302, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2490
  %1299 = zext i1 %1298 to i32, !dbg !2526
  br label %1323, !dbg !2526

1300:                                             ; preds = %1272
  %1301 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 16, !dbg !2527
  %1302 = load ptr, ptr %1301, align 16, !dbg !2527, !tbaa !2507
  %1303 = getelementptr inbounds %struct.x264_sps_t, ptr %1302, i64 0, i32 20, !dbg !2530
  %1304 = load i32, ptr %1303, align 4, !dbg !2530, !tbaa !2509
  %1305 = icmp eq i32 %1304, 0, !dbg !2531
  br i1 %1305, label %1306, label %1326, !dbg !2532

1306:                                             ; preds = %1300
  call void @llvm.dbg.value(metadata i64 0, metadata !1302, metadata !DIExpression()), !dbg !2490
  %1307 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 0, !dbg !2533
  %1308 = load i32, ptr %1307, align 4, !dbg !2533, !tbaa !1554
  %1309 = icmp eq i32 %1308, 12, !dbg !2537
  call void @llvm.dbg.value(metadata i64 0, metadata !1302, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2490
  br i1 %1309, label %1336, label %1310, !dbg !2538

1310:                                             ; preds = %1306
  call void @llvm.dbg.value(metadata i64 1, metadata !1302, metadata !DIExpression()), !dbg !2490
  %1311 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 1, !dbg !2533
  %1312 = load i32, ptr %1311, align 4, !dbg !2533, !tbaa !1554
  %1313 = icmp eq i32 %1312, 12, !dbg !2537
  call void @llvm.dbg.value(metadata i64 1, metadata !1302, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2490
  br i1 %1313, label %1336, label %1314, !dbg !2538

1314:                                             ; preds = %1310
  call void @llvm.dbg.value(metadata i64 2, metadata !1302, metadata !DIExpression()), !dbg !2490
  %1315 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 2, !dbg !2533
  %1316 = load i32, ptr %1315, align 4, !dbg !2533, !tbaa !1554
  %1317 = icmp eq i32 %1316, 12, !dbg !2537
  call void @llvm.dbg.value(metadata i64 2, metadata !1302, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2490
  br i1 %1317, label %1336, label %1318, !dbg !2538

1318:                                             ; preds = %1314
  call void @llvm.dbg.value(metadata i64 3, metadata !1302, metadata !DIExpression()), !dbg !2490
  %1319 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 3, !dbg !2533
  %1320 = load i32, ptr %1319, align 4, !dbg !2533, !tbaa !1554
  %1321 = icmp ne i32 %1320, 12, !dbg !2537
  call void @llvm.dbg.value(metadata i64 3, metadata !1302, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2490
  %1322 = zext i1 %1321 to i32, !dbg !2538
  br label %1323, !dbg !2538

1323:                                             ; preds = %1268, %1273, %1295, %1318
  %1324 = phi i32 [ %1271, %1268 ], [ %1277, %1273 ], [ %1299, %1295 ], [ %1322, %1318 ], !dbg !2490
  %1325 = icmp eq i32 %1324, 0, !dbg !2539
  br i1 %1325, label %1336, label %1326, !dbg !2540

1326:                                             ; preds = %1300, %1278, %1323
  %1327 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 50, !dbg !2541
  %1328 = load i32, ptr %1327, align 4, !dbg !2541, !tbaa !2388
  %1329 = icmp eq i32 %1328, 0, !dbg !2542
  br i1 %1329, label %1336, label %1330, !dbg !2543

1330:                                             ; preds = %1326
  %1331 = getelementptr i8, ptr %0, i64 11808, !dbg !2544
  %1332 = load i32, ptr %1331, align 16, !dbg !2544, !tbaa !1645
  %1333 = getelementptr i8, ptr %0, i64 20500, !dbg !2544
  %1334 = load i32, ptr %1333, align 4, !dbg !2544, !tbaa !1646
  call void @llvm.dbg.value(metadata ptr undef, metadata !1647, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %1, metadata !1650, metadata !DIExpression()), !dbg !2546
  %1335 = add nsw i32 %1334, 399, !dbg !2548
  call void @llvm.dbg.value(metadata i32 %1335, metadata !1651, metadata !DIExpression()), !dbg !2546
  call void @x264_cabac_encode_decision_asm(ptr noundef nonnull %1, i32 noundef %1335, i32 noundef %1332) #8, !dbg !2549
  br label %1336, !dbg !2550

1336:                                             ; preds = %1291, %1287, %1283, %1314, %1310, %1306, %1256, %1330, %1326, %1323
  %1337 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 50, !dbg !2551
  %1338 = load i32, ptr %1337, align 4, !dbg !2551, !tbaa !2388
  %1339 = icmp sgt i32 %1338, 0, !dbg !2553
  br i1 %1339, label %1345, label %1340, !dbg !2554

1340:                                             ; preds = %1336
  %1341 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 51, !dbg !2555
  %1342 = load i32, ptr %1341, align 8, !dbg !2555, !tbaa !2471
  %1343 = icmp sgt i32 %1342, 0, !dbg !2556
  %1344 = or i1 %1120, %1343, !dbg !2557
  br i1 %1344, label %1345, label %1569, !dbg !2557

1345:                                             ; preds = %1340, %1336
  call void @llvm.dbg.value(metadata ptr %0, metadata !2558, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata ptr %1, metadata !2561, metadata !DIExpression()), !dbg !2568
  %1346 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 30, !dbg !2571
  %1347 = load i32, ptr %1346, align 8, !dbg !2571, !tbaa !2572
  call void @llvm.dbg.value(metadata i32 %1347, metadata !2562, metadata !DIExpression()), !dbg !2568
  %1348 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 58, !dbg !2573
  %1349 = load i32, ptr %1348, align 16, !dbg !2573, !tbaa !2574
  %1350 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 60, !dbg !2575
  %1351 = load i32, ptr %1350, align 8, !dbg !2575, !tbaa !2576
  %1352 = sub nsw i32 %1349, %1351, !dbg !2577
  call void @llvm.dbg.value(metadata i32 %1352, metadata !2563, metadata !DIExpression()), !dbg !2568
  %1353 = load i32, ptr %9, align 8, !dbg !2578, !tbaa !1428
  %1354 = icmp eq i32 %1353, 2, !dbg !2580
  br i1 %1354, label %1355, label %1365, !dbg !2581

1355:                                             ; preds = %1345
  %1356 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 34, !dbg !2582
  %1357 = load ptr, ptr %1356, align 16, !dbg !2582, !tbaa !2393
  %1358 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !2583
  %1359 = load i32, ptr %1358, align 8, !dbg !2583, !tbaa !1459
  %1360 = sext i32 %1359 to i64, !dbg !2584
  %1361 = getelementptr inbounds i16, ptr %1357, i64 %1360, !dbg !2584
  %1362 = load i16, ptr %1361, align 2, !dbg !2584, !tbaa !2169
  %1363 = icmp eq i16 %1362, 0, !dbg !2584
  br i1 %1363, label %1364, label %1365, !dbg !2585

1364:                                             ; preds = %1355
  store i32 %1351, ptr %1348, align 16, !dbg !2586, !tbaa !2574
  call void @llvm.dbg.value(metadata i32 0, metadata !2563, metadata !DIExpression()), !dbg !2568
  br label %1365, !dbg !2588

1365:                                             ; preds = %1364, %1355, %1345
  %1366 = phi i32 [ %1352, %1355 ], [ 0, %1364 ], [ %1352, %1345 ], !dbg !2568
  call void @llvm.dbg.value(metadata i32 %1366, metadata !2563, metadata !DIExpression()), !dbg !2568
  %1367 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 61, !dbg !2589
  %1368 = load i32, ptr %1367, align 4, !dbg !2589, !tbaa !2591
  %1369 = icmp eq i32 %1368, 0, !dbg !2592
  br i1 %1369, label %1384, label %1370, !dbg !2593

1370:                                             ; preds = %1365
  %1371 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 32, !dbg !2594
  %1372 = load ptr, ptr %1371, align 16, !dbg !2594, !tbaa !1458
  %1373 = sext i32 %1347 to i64, !dbg !2595
  %1374 = getelementptr inbounds i8, ptr %1372, i64 %1373, !dbg !2595
  %1375 = load i8, ptr %1374, align 1, !dbg !2595, !tbaa !1461
  %1376 = icmp eq i8 %1375, 2, !dbg !2596
  br i1 %1376, label %1385, label %1377, !dbg !2597

1377:                                             ; preds = %1370
  %1378 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 34, !dbg !2598
  %1379 = load ptr, ptr %1378, align 16, !dbg !2598, !tbaa !2393
  %1380 = getelementptr inbounds i16, ptr %1379, i64 %1373, !dbg !2599
  %1381 = load i16, ptr %1380, align 2, !dbg !2599, !tbaa !2169
  %1382 = and i16 %1381, 63, !dbg !2600
  %1383 = icmp eq i16 %1382, 0, !dbg !2600
  br i1 %1383, label %1384, label %1385, !dbg !2601

1384:                                             ; preds = %1377, %1365
  call void @llvm.dbg.value(metadata i32 0, metadata !2564, metadata !DIExpression()), !dbg !2568
  br label %1385

1385:                                             ; preds = %1384, %1377, %1370
  %1386 = phi i32 [ 0, %1384 ], [ 1, %1377 ], [ 1, %1370 ], !dbg !2602
  call void @llvm.dbg.value(metadata i32 %1386, metadata !2564, metadata !DIExpression()), !dbg !2568
  %1387 = icmp eq i32 %1366, 0, !dbg !2603
  br i1 %1387, label %1408, label %1388, !dbg !2604

1388:                                             ; preds = %1385
  %1389 = icmp slt i32 %1366, 1, !dbg !2605
  %1390 = mul nsw i32 %1366, -2, !dbg !2606
  %1391 = shl nsw i32 %1366, 1, !dbg !2606
  %1392 = add nsw i32 %1391, -1, !dbg !2606
  %1393 = select i1 %1389, i32 %1390, i32 %1392, !dbg !2606
  call void @llvm.dbg.value(metadata i32 %1393, metadata !2565, metadata !DIExpression()), !dbg !2607
  %1394 = icmp sgt i32 %1393, 50, !dbg !2608
  %1395 = icmp ne i32 %1393, 52
  %1396 = and i1 %1394, %1395, !dbg !2610
  %1397 = sub nsw i32 103, %1393, !dbg !2610
  %1398 = select i1 %1396, i32 %1397, i32 %1393, !dbg !2610
  call void @llvm.dbg.value(metadata i32 %1386, metadata !2564, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i32 %1398, metadata !2565, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2607
  %1399 = icmp eq i32 %1398, 0, !dbg !2611
  br i1 %1399, label %1408, label %1400, !dbg !2611

1400:                                             ; preds = %1388, %1400
  %1401 = phi i32 [ %1403, %1400 ], [ %1398, %1388 ]
  %1402 = phi i32 [ %1406, %1400 ], [ %1386, %1388 ]
  call void @llvm.dbg.value(metadata i32 %1401, metadata !2565, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 %1402, metadata !2564, metadata !DIExpression()), !dbg !2568
  %1403 = add nsw i32 %1401, -1, !dbg !2612
  call void @llvm.dbg.value(metadata i32 %1403, metadata !2565, metadata !DIExpression()), !dbg !2607
  %1404 = add nuw nsw i32 %1402, 60, !dbg !2613
  call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %1404, i32 noundef 1) #8, !dbg !2615
  %1405 = icmp ult i32 %1402, 2, !dbg !2616
  %1406 = select i1 %1405, i32 2, i32 3
  call void @llvm.dbg.value(metadata i32 %1406, metadata !2564, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i32 %1403, metadata !2565, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2607
  %1407 = icmp eq i32 %1403, 0, !dbg !2611
  br i1 %1407, label %1408, label %1400, !dbg !2611, !llvm.loop !2618

1408:                                             ; preds = %1400, %1385, %1388
  %1409 = phi i32 [ %1386, %1385 ], [ %1386, %1388 ], [ %1406, %1400 ], !dbg !2620
  call void @llvm.dbg.value(metadata i32 %1409, metadata !2564, metadata !DIExpression()), !dbg !2568
  %1410 = add nuw nsw i32 %1409, 60, !dbg !2621
  call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %1410, i32 noundef 0) #8, !dbg !2622
  br i1 %1120, label %1411, label %1432, !dbg !2623

1411:                                             ; preds = %1408
  %1412 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, !dbg !2624
  call fastcc void @block_residual_write_cabac(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 24, ptr noundef nonnull %1412, i32 noundef 16), !dbg !2627
  %1413 = load i32, ptr %1337, align 4, !dbg !2628, !tbaa !2388
  %1414 = icmp eq i32 %1413, 0, !dbg !2630
  br i1 %1414, label %1547, label %1415, !dbg !2631

1415:                                             ; preds = %1411
  call void @llvm.dbg.value(metadata i64 0, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1416 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 0, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %1416, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 1, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1417 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 1, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %1417, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 2, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1418 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 2, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %1418, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 3, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1419 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 3, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %1419, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 4, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1420 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 4, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %1420, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 5, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1421 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 5, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 5, ptr noundef nonnull %1421, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 6, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1422 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 6, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %1422, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 7, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1423 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 7, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %1423, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 8, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1424 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 8, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %1424, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 9, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1425 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 9, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 9, ptr noundef nonnull %1425, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 10, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1426 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 10, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 10, ptr noundef nonnull %1426, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 11, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1427 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 11, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 11, ptr noundef nonnull %1427, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 12, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1428 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 12, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 12, ptr noundef nonnull %1428, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 13, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1429 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 13, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 13, ptr noundef nonnull %1429, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 14, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1430 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 14, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 14, ptr noundef nonnull %1430, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 15, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1431 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 15, i64 1, !dbg !2632
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 15, ptr noundef nonnull %1431, i32 noundef 15), !dbg !2635
  call void @llvm.dbg.value(metadata i64 16, metadata !1403, metadata !DIExpression()), !dbg !1426
  br label %1547, !dbg !2636

1432:                                             ; preds = %1408
  %1433 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 49, !dbg !2638
  %1434 = load i32, ptr %1433, align 16, !dbg !2638, !tbaa !1645
  %1435 = icmp eq i32 %1434, 0, !dbg !2640
  call void @llvm.dbg.value(metadata i64 0, metadata !1403, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i64 0, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1436 = load i32, ptr %1337, align 4, !dbg !2641, !tbaa !2388
  %1437 = and i32 %1436, 1, !dbg !2641
  %1438 = icmp eq i32 %1437, 0, !dbg !2641
  br i1 %1435, label %1440, label %1439, !dbg !2642

1439:                                             ; preds = %1432
  br i1 %1438, label %1444, label %1441, !dbg !2643

1440:                                             ; preds = %1432
  br i1 %1438, label %1482, label %1464, !dbg !2647

1441:                                             ; preds = %1439
  %1442 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 0, !dbg !2651
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %1442, i32 noundef 64), !dbg !2653
  %1443 = load i32, ptr %1337, align 4, !dbg !2654, !tbaa !2388
  br label %1444, !dbg !2653

1444:                                             ; preds = %1439, %1441
  %1445 = phi i32 [ %1436, %1439 ], [ %1443, %1441 ], !dbg !2654
  call void @llvm.dbg.value(metadata i64 1, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1446 = and i32 %1445, 2, !dbg !2655
  %1447 = icmp eq i32 %1446, 0, !dbg !2655
  br i1 %1447, label %1451, label %1448, !dbg !2643

1448:                                             ; preds = %1444
  %1449 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 1, !dbg !2651
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %1449, i32 noundef 64), !dbg !2653
  %1450 = load i32, ptr %1337, align 4, !dbg !2654, !tbaa !2388
  br label %1451, !dbg !2653

1451:                                             ; preds = %1448, %1444
  %1452 = phi i32 [ %1450, %1448 ], [ %1445, %1444 ], !dbg !2654
  call void @llvm.dbg.value(metadata i64 2, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1453 = and i32 %1452, 4, !dbg !2655
  %1454 = icmp eq i32 %1453, 0, !dbg !2655
  br i1 %1454, label %1458, label %1455, !dbg !2643

1455:                                             ; preds = %1451
  %1456 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 2, !dbg !2651
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %1456, i32 noundef 64), !dbg !2653
  %1457 = load i32, ptr %1337, align 4, !dbg !2654, !tbaa !2388
  br label %1458, !dbg !2653

1458:                                             ; preds = %1455, %1451
  %1459 = phi i32 [ %1457, %1455 ], [ %1452, %1451 ], !dbg !2654
  call void @llvm.dbg.value(metadata i64 3, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1460 = and i32 %1459, 8, !dbg !2655
  %1461 = icmp eq i32 %1460, 0, !dbg !2655
  br i1 %1461, label %1547, label %1462, !dbg !2643

1462:                                             ; preds = %1458
  %1463 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 3, !dbg !2651
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 5, i32 noundef 3, ptr noundef nonnull %1463, i32 noundef 64), !dbg !2653
  br label %1547, !dbg !2653

1464:                                             ; preds = %1440
  %1465 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 0, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %1465, i32 noundef 16), !dbg !2658
  %1466 = load i32, ptr %1337, align 4, !dbg !2659, !tbaa !2388
  %1467 = and i32 %1466, 1, !dbg !2660
  call void @llvm.dbg.value(metadata i64 1, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1468 = icmp eq i32 %1467, 0, !dbg !2660
  br i1 %1468, label %1482, label %1469, !dbg !2647

1469:                                             ; preds = %1464
  %1470 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 1, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %1470, i32 noundef 16), !dbg !2658
  %1471 = load i32, ptr %1337, align 4, !dbg !2659, !tbaa !2388
  %1472 = and i32 %1471, 1, !dbg !2660
  call void @llvm.dbg.value(metadata i64 2, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1473 = icmp eq i32 %1472, 0, !dbg !2660
  br i1 %1473, label %1482, label %1474, !dbg !2647

1474:                                             ; preds = %1469
  %1475 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 2, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %1475, i32 noundef 16), !dbg !2658
  %1476 = load i32, ptr %1337, align 4, !dbg !2659, !tbaa !2388
  %1477 = and i32 %1476, 1, !dbg !2660
  call void @llvm.dbg.value(metadata i64 3, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1478 = icmp eq i32 %1477, 0, !dbg !2660
  br i1 %1478, label %1482, label %1479, !dbg !2647

1479:                                             ; preds = %1474
  %1480 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 3, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 3, ptr noundef nonnull %1480, i32 noundef 16), !dbg !2658
  %1481 = load i32, ptr %1337, align 4, !dbg !2659, !tbaa !2388
  br label %1482, !dbg !2658

1482:                                             ; preds = %1440, %1464, %1469, %1479, %1474
  %1483 = phi i32 [ %1481, %1479 ], [ %1476, %1474 ], [ %1471, %1469 ], [ %1466, %1464 ], [ %1436, %1440 ], !dbg !2659
  call void @llvm.dbg.value(metadata i64 4, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1484 = and i32 %1483, 2, !dbg !2660
  %1485 = icmp eq i32 %1484, 0, !dbg !2660
  br i1 %1485, label %1504, label %1486, !dbg !2647

1486:                                             ; preds = %1482
  %1487 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 4, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %1487, i32 noundef 16), !dbg !2658
  %1488 = load i32, ptr %1337, align 4, !dbg !2659, !tbaa !2388
  %1489 = and i32 %1488, 2, !dbg !2660
  call void @llvm.dbg.value(metadata i64 5, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1490 = icmp eq i32 %1489, 0, !dbg !2660
  br i1 %1490, label %1504, label %1491, !dbg !2647

1491:                                             ; preds = %1486
  %1492 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 5, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 5, ptr noundef nonnull %1492, i32 noundef 16), !dbg !2658
  %1493 = load i32, ptr %1337, align 4, !dbg !2659, !tbaa !2388
  %1494 = and i32 %1493, 2, !dbg !2660
  call void @llvm.dbg.value(metadata i64 6, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1495 = icmp eq i32 %1494, 0, !dbg !2660
  br i1 %1495, label %1504, label %1496, !dbg !2647

1496:                                             ; preds = %1491
  %1497 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 6, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 6, ptr noundef nonnull %1497, i32 noundef 16), !dbg !2658
  %1498 = load i32, ptr %1337, align 4, !dbg !2659, !tbaa !2388
  %1499 = and i32 %1498, 2, !dbg !2660
  call void @llvm.dbg.value(metadata i64 7, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1500 = icmp eq i32 %1499, 0, !dbg !2660
  br i1 %1500, label %1504, label %1501, !dbg !2647

1501:                                             ; preds = %1496
  %1502 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 7, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 7, ptr noundef nonnull %1502, i32 noundef 16), !dbg !2658
  %1503 = load i32, ptr %1337, align 4, !dbg !2659, !tbaa !2388
  br label %1504, !dbg !2658

1504:                                             ; preds = %1482, %1486, %1491, %1501, %1496
  %1505 = phi i32 [ %1503, %1501 ], [ %1498, %1496 ], [ %1493, %1491 ], [ %1488, %1486 ], [ %1483, %1482 ], !dbg !2659
  call void @llvm.dbg.value(metadata i64 8, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1506 = and i32 %1505, 4, !dbg !2660
  %1507 = icmp eq i32 %1506, 0, !dbg !2660
  br i1 %1507, label %1526, label %1508, !dbg !2647

1508:                                             ; preds = %1504
  %1509 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 8, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %1509, i32 noundef 16), !dbg !2658
  %1510 = load i32, ptr %1337, align 4, !dbg !2659, !tbaa !2388
  %1511 = and i32 %1510, 4, !dbg !2660
  call void @llvm.dbg.value(metadata i64 9, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1512 = icmp eq i32 %1511, 0, !dbg !2660
  br i1 %1512, label %1526, label %1513, !dbg !2647

1513:                                             ; preds = %1508
  %1514 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 9, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 9, ptr noundef nonnull %1514, i32 noundef 16), !dbg !2658
  %1515 = load i32, ptr %1337, align 4, !dbg !2659, !tbaa !2388
  %1516 = and i32 %1515, 4, !dbg !2660
  call void @llvm.dbg.value(metadata i64 10, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1517 = icmp eq i32 %1516, 0, !dbg !2660
  br i1 %1517, label %1526, label %1518, !dbg !2647

1518:                                             ; preds = %1513
  %1519 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 10, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 10, ptr noundef nonnull %1519, i32 noundef 16), !dbg !2658
  %1520 = load i32, ptr %1337, align 4, !dbg !2659, !tbaa !2388
  %1521 = and i32 %1520, 4, !dbg !2660
  call void @llvm.dbg.value(metadata i64 11, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1522 = icmp eq i32 %1521, 0, !dbg !2660
  br i1 %1522, label %1526, label %1523, !dbg !2647

1523:                                             ; preds = %1518
  %1524 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 11, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 11, ptr noundef nonnull %1524, i32 noundef 16), !dbg !2658
  %1525 = load i32, ptr %1337, align 4, !dbg !2659, !tbaa !2388
  br label %1526, !dbg !2658

1526:                                             ; preds = %1504, %1508, %1513, %1523, %1518
  %1527 = phi i32 [ %1525, %1523 ], [ %1520, %1518 ], [ %1515, %1513 ], [ %1510, %1508 ], [ %1505, %1504 ], !dbg !2659
  call void @llvm.dbg.value(metadata i64 12, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1528 = and i32 %1527, 8, !dbg !2660
  %1529 = icmp eq i32 %1528, 0, !dbg !2660
  br i1 %1529, label %1547, label %1530, !dbg !2647

1530:                                             ; preds = %1526
  %1531 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 12, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 12, ptr noundef nonnull %1531, i32 noundef 16), !dbg !2658
  %1532 = load i32, ptr %1337, align 4, !dbg !2659, !tbaa !2388
  %1533 = and i32 %1532, 8, !dbg !2660
  call void @llvm.dbg.value(metadata i64 13, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1534 = icmp eq i32 %1533, 0, !dbg !2660
  br i1 %1534, label %1547, label %1535, !dbg !2647

1535:                                             ; preds = %1530
  %1536 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 13, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 13, ptr noundef nonnull %1536, i32 noundef 16), !dbg !2658
  %1537 = load i32, ptr %1337, align 4, !dbg !2659, !tbaa !2388
  %1538 = and i32 %1537, 8, !dbg !2660
  call void @llvm.dbg.value(metadata i64 14, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1539 = icmp eq i32 %1538, 0, !dbg !2660
  br i1 %1539, label %1547, label %1540, !dbg !2647

1540:                                             ; preds = %1535
  %1541 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 14, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 14, ptr noundef nonnull %1541, i32 noundef 16), !dbg !2658
  %1542 = load i32, ptr %1337, align 4, !dbg !2659, !tbaa !2388
  %1543 = and i32 %1542, 8, !dbg !2660
  call void @llvm.dbg.value(metadata i64 15, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1544 = icmp eq i32 %1543, 0, !dbg !2660
  br i1 %1544, label %1547, label %1545, !dbg !2647

1545:                                             ; preds = %1540
  %1546 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 15, !dbg !2656
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, i32 noundef 15, ptr noundef nonnull %1546, i32 noundef 16), !dbg !2658
  br label %1547, !dbg !2658

1547:                                             ; preds = %1526, %1530, %1535, %1540, %1545, %1458, %1462, %1415, %1411
  %1548 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 51, !dbg !2636
  %1549 = load i32, ptr %1548, align 8, !dbg !2636, !tbaa !2471
  %1550 = and i32 %1549, 3, !dbg !2661
  %1551 = icmp eq i32 %1550, 0, !dbg !2661
  br i1 %1551, label %1556, label %1552, !dbg !2662

1552:                                             ; preds = %1547
  %1553 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 1, !dbg !2663
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 3, i32 noundef 25, ptr noundef nonnull %1553, i32 noundef 4), !dbg !2665
  %1554 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 1, i64 1, !dbg !2666
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 3, i32 noundef 26, ptr noundef nonnull %1554, i32 noundef 4), !dbg !2667
  %1555 = load i32, ptr %1548, align 8, !dbg !2668, !tbaa !2471
  br label %1556, !dbg !2670

1556:                                             ; preds = %1552, %1547
  %1557 = phi i32 [ %1555, %1552 ], [ %1549, %1547 ], !dbg !2668
  %1558 = and i32 %1557, 2, !dbg !2671
  %1559 = icmp eq i32 %1558, 0, !dbg !2671
  br i1 %1559, label %1569, label %1560, !dbg !2672

1560:                                             ; preds = %1556
  call void @llvm.dbg.value(metadata i64 16, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1561 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 16, i64 1, !dbg !2673
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, i32 noundef 16, ptr noundef nonnull %1561, i32 noundef 15), !dbg !2677
  call void @llvm.dbg.value(metadata i64 17, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1562 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 17, i64 1, !dbg !2673
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, i32 noundef 17, ptr noundef nonnull %1562, i32 noundef 15), !dbg !2677
  call void @llvm.dbg.value(metadata i64 18, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1563 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 18, i64 1, !dbg !2673
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, i32 noundef 18, ptr noundef nonnull %1563, i32 noundef 15), !dbg !2677
  call void @llvm.dbg.value(metadata i64 19, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1564 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 19, i64 1, !dbg !2673
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, i32 noundef 19, ptr noundef nonnull %1564, i32 noundef 15), !dbg !2677
  call void @llvm.dbg.value(metadata i64 20, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1565 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 20, i64 1, !dbg !2673
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, i32 noundef 20, ptr noundef nonnull %1565, i32 noundef 15), !dbg !2677
  call void @llvm.dbg.value(metadata i64 21, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1566 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 21, i64 1, !dbg !2673
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, i32 noundef 21, ptr noundef nonnull %1566, i32 noundef 15), !dbg !2677
  call void @llvm.dbg.value(metadata i64 22, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1567 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 22, i64 1, !dbg !2673
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, i32 noundef 22, ptr noundef nonnull %1567, i32 noundef 15), !dbg !2677
  call void @llvm.dbg.value(metadata i64 23, metadata !1403, metadata !DIExpression()), !dbg !1426
  %1568 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 23, i64 1, !dbg !2673
  call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, i32 noundef 23, ptr noundef nonnull %1568, i32 noundef 15), !dbg !2677
  call void @llvm.dbg.value(metadata i64 24, metadata !1403, metadata !DIExpression()), !dbg !1426
  br label %1569, !dbg !2678

1569:                                             ; preds = %1560, %1556, %1340
  call void @llvm.dbg.value(metadata ptr %1, metadata !1429, metadata !DIExpression()), !dbg !2680
  %1570 = load ptr, ptr %11, align 8, !dbg !2678, !tbaa !1437
  %1571 = load ptr, ptr %13, align 16, !dbg !2681, !tbaa !1439
  %1572 = ptrtoint ptr %1570 to i64, !dbg !2682
  %1573 = ptrtoint ptr %1571 to i64, !dbg !2682
  %1574 = sub i64 %1572, %1573, !dbg !2682
  %1575 = load i32, ptr %18, align 4, !dbg !2683, !tbaa !1442
  %1576 = load i32, ptr %20, align 8, !dbg !2684, !tbaa !1444
  %1577 = trunc i64 %1574 to i32, !dbg !2685
  %1578 = add i32 %1575, %1577, !dbg !2685
  %1579 = shl i32 %1578, 3, !dbg !2685
  %1580 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 1, !dbg !2686
  %1581 = load i32, ptr %1580, align 4, !dbg !2687, !tbaa !1632
  %1582 = sub i32 %1576, %1131, !dbg !2685
  %1583 = add i32 %1582, %1581, !dbg !2688
  %1584 = add i32 %1583, %1579, !dbg !2687
  store i32 %1584, ptr %1580, align 4, !dbg !2687, !tbaa !1632
  br label %1585, !dbg !2689

1585:                                             ; preds = %1569, %133
  ret void, !dbg !2689
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_cabac_mb_ref(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !dbg !1817 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1816, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata ptr %1, metadata !1821, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i32 %2, metadata !1822, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i32 %3, metadata !1823, metadata !DIExpression()), !dbg !2690
  %5 = sext i32 %3 to i64, !dbg !2691
  %6 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %5, !dbg !2691
  %7 = load i32, ptr %6, align 4, !dbg !2691, !tbaa !1554
  call void @llvm.dbg.value(metadata i32 %7, metadata !1824, metadata !DIExpression()), !dbg !2690
  %8 = zext i32 %2 to i64
  %9 = add nsw i32 %7, -1, !dbg !2692
  %10 = sext i32 %9 to i64, !dbg !2693
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %8, i64 %10, !dbg !2693
  %12 = load i8, ptr %11, align 1, !dbg !2693, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %12, metadata !1825, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2690
  %13 = add nsw i32 %7, -8, !dbg !2694
  %14 = sext i32 %13 to i64, !dbg !2695
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %8, i64 %14, !dbg !2695
  %16 = load i8, ptr %15, align 1, !dbg !2695, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %16, metadata !1826, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2690
  %17 = sext i32 %7 to i64, !dbg !2696
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %8, i64 %17, !dbg !2696
  %19 = load i8, ptr %18, align 1, !dbg !2696, !tbaa !1461
  %20 = sext i8 %19 to i32, !dbg !2696
  call void @llvm.dbg.value(metadata i32 %20, metadata !1827, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !2690
  %21 = icmp sgt i8 %12, 0, !dbg !2697
  br i1 %21, label %22, label %27, !dbg !2698

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 %10, !dbg !2699
  %24 = load i8, ptr %23, align 1, !dbg !2699, !tbaa !1461
  %25 = icmp eq i8 %24, 0, !dbg !2699
  %26 = zext i1 %25 to i32, !dbg !2700
  br label %27, !dbg !2700

27:                                               ; preds = %22, %4
  %28 = phi i32 [ 0, %4 ], [ %26, %22 ], !dbg !2690
  call void @llvm.dbg.value(metadata i32 %28, metadata !1828, metadata !DIExpression()), !dbg !2690
  %29 = icmp sgt i8 %16, 0, !dbg !2701
  br i1 %29, label %30, label %36, !dbg !2702

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 5, i64 %14, !dbg !2703
  %32 = load i8, ptr %31, align 1, !dbg !2703, !tbaa !1461
  %33 = icmp eq i8 %32, 0, !dbg !2703
  %34 = or i32 %28, 2
  %35 = select i1 %33, i32 %34, i32 %28, !dbg !2704
  br label %36, !dbg !2704

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %28, %27 ], [ %35, %30 ], !dbg !2690
  call void @llvm.dbg.value(metadata i32 %37, metadata !1828, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i32 %20, metadata !1827, metadata !DIExpression()), !dbg !2690
  %38 = icmp sgt i8 %19, 0, !dbg !2705
  br i1 %38, label %39, label %47, !dbg !2706

39:                                               ; preds = %36, %39
  %40 = phi i32 [ %44, %39 ], [ %37, %36 ]
  %41 = phi i32 [ %45, %39 ], [ %20, %36 ]
  call void @llvm.dbg.value(metadata i32 %40, metadata !1828, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i32 %41, metadata !1827, metadata !DIExpression()), !dbg !2690
  %42 = add nuw nsw i32 %40, 54, !dbg !2707
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %42, i32 noundef 1) #8, !dbg !2708
  %43 = icmp ult i32 %40, 4, !dbg !2709
  %44 = select i1 %43, i32 4, i32 5
  call void @llvm.dbg.value(metadata i32 %44, metadata !1828, metadata !DIExpression()), !dbg !2690
  %45 = add nsw i32 %41, -1, !dbg !2710
  call void @llvm.dbg.value(metadata i32 %45, metadata !1827, metadata !DIExpression()), !dbg !2690
  %46 = icmp sgt i32 %41, 1, !dbg !2705
  br i1 %46, label %39, label %47, !dbg !2706, !llvm.loop !2711

47:                                               ; preds = %39, %36
  %48 = phi i32 [ %37, %36 ], [ %44, %39 ], !dbg !2690
  %49 = add nuw nsw i32 %48, 54, !dbg !2713
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %49, i32 noundef 0) #8, !dbg !2714
  ret void, !dbg !2715
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_cabac_mb_mvd(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 !dbg !2154 {
  %7 = alloca [2 x i16], align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %1, metadata !2156, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i32 %2, metadata !2157, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i32 %3, metadata !2158, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i32 %4, metadata !2159, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i32 %5, metadata !2160, metadata !DIExpression()), !dbg !2716
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8, !dbg !2717
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2161, metadata !DIExpression()), !dbg !2717
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %7) #8, !dbg !2718
  %8 = zext i32 %2 to i64
  %9 = sext i32 %3 to i64, !dbg !2719
  %10 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %9, !dbg !2719
  %11 = load i32, ptr %10, align 4, !dbg !2719, !tbaa !1554
  %12 = sext i32 %11 to i64, !dbg !2720
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %8, i64 %12, !dbg !2720
  %14 = load i16, ptr %13, align 4, !dbg !2720, !tbaa !2169
  %15 = sext i16 %14 to i32, !dbg !2720
  %16 = load i16, ptr %7, align 4, !dbg !2721, !tbaa !2169
  %17 = sext i16 %16 to i32, !dbg !2721
  %18 = sub nsw i32 %15, %17, !dbg !2722
  call void @llvm.dbg.value(metadata i32 %18, metadata !2162, metadata !DIExpression()), !dbg !2716
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %8, i64 %12, i64 1, !dbg !2723
  %20 = load i16, ptr %19, align 2, !dbg !2723, !tbaa !2169
  %21 = sext i16 %20 to i32, !dbg !2723
  %22 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1, !dbg !2724
  %23 = load i16, ptr %22, align 2, !dbg !2724, !tbaa !2169
  %24 = sext i16 %23 to i32, !dbg !2724
  %25 = sub nsw i32 %21, %24, !dbg !2725
  call void @llvm.dbg.value(metadata i32 %25, metadata !2163, metadata !DIExpression()), !dbg !2716
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef %18), !dbg !2726
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef %25), !dbg !2727
  %26 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %9, !dbg !2728
  %27 = load i8, ptr %26, align 1, !dbg !2728, !tbaa !1461
  %28 = zext i8 %27 to i64, !dbg !2728
  %29 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %9, !dbg !2729
  %30 = load i8, ptr %29, align 1, !dbg !2729, !tbaa !1461
  %31 = zext i8 %30 to i64, !dbg !2729
  call void @llvm.dbg.value(metadata i32 %18, metadata !2178, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i32 %25, metadata !2183, metadata !DIExpression()), !dbg !2730
  %32 = and i32 %18, 65535, !dbg !2732
  %33 = shl i32 %25, 16, !dbg !2733
  %34 = or i32 %33, %32, !dbg !2734
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8 %27, metadata !2194, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2735
  call void @llvm.dbg.value(metadata i8 %30, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2735
  call void @llvm.dbg.value(metadata i32 %4, metadata !2196, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32 %5, metadata !2197, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32 %2, metadata !2198, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32 %34, metadata !2199, metadata !DIExpression()), !dbg !2735
  %35 = add nuw nsw i64 %28, 12, !dbg !2737
  %36 = shl nuw nsw i64 %31, 3, !dbg !2738
  %37 = add nuw nsw i64 %35, %36, !dbg !2739
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %8, i64 %37, !dbg !2740
  call void @llvm.dbg.value(metadata ptr %38, metadata !2203, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i32 %4, metadata !2208, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i32 %5, metadata !2209, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i32 %34, metadata !2210, metadata !DIExpression()), !dbg !2741
  %39 = icmp eq i32 %4, 1, !dbg !2743
  br i1 %39, label %40, label %65, !dbg !2744

40:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !2741
  %41 = icmp sgt i32 %5, 0, !dbg !2745
  br i1 %41, label %42, label %115, !dbg !2749

42:                                               ; preds = %40
  %43 = zext i32 %5 to i64, !dbg !2745
  %44 = and i64 %43, 3, !dbg !2749
  %45 = icmp ult i32 %5, 4, !dbg !2749
  br i1 %45, label %104, label %46, !dbg !2749

46:                                               ; preds = %42
  %47 = and i64 %43, 4294967292, !dbg !2749
  br label %48, !dbg !2749

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %62, %48 ]
  %50 = phi i64 [ 0, %46 ], [ %63, %48 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !2211, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i32 poison, metadata !2212, metadata !DIExpression()), !dbg !2741
  %51 = shl nsw i64 %49, 3, !dbg !2750
  %52 = getelementptr inbounds i32, ptr %38, i64 %51, !dbg !2753
  store i32 %34, ptr %52, align 4, !dbg !2754, !tbaa !1554
  call void @llvm.dbg.value(metadata i64 %49, metadata !2211, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2741
  call void @llvm.dbg.value(metadata i64 %49, metadata !2211, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2741
  call void @llvm.dbg.value(metadata i32 poison, metadata !2212, metadata !DIExpression()), !dbg !2741
  %53 = shl i64 %49, 3, !dbg !2750
  %54 = or i64 %53, 8, !dbg !2750
  %55 = getelementptr inbounds i32, ptr %38, i64 %54, !dbg !2753
  store i32 %34, ptr %55, align 4, !dbg !2754, !tbaa !1554
  call void @llvm.dbg.value(metadata i64 %49, metadata !2211, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)), !dbg !2741
  call void @llvm.dbg.value(metadata i64 %49, metadata !2211, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)), !dbg !2741
  call void @llvm.dbg.value(metadata i32 poison, metadata !2212, metadata !DIExpression()), !dbg !2741
  %56 = shl i64 %49, 3, !dbg !2750
  %57 = or i64 %56, 16, !dbg !2750
  %58 = getelementptr inbounds i32, ptr %38, i64 %57, !dbg !2753
  store i32 %34, ptr %58, align 4, !dbg !2754, !tbaa !1554
  call void @llvm.dbg.value(metadata i64 %49, metadata !2211, metadata !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value)), !dbg !2741
  call void @llvm.dbg.value(metadata i64 %49, metadata !2211, metadata !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value)), !dbg !2741
  call void @llvm.dbg.value(metadata i32 poison, metadata !2212, metadata !DIExpression()), !dbg !2741
  %59 = shl i64 %49, 3, !dbg !2750
  %60 = or i64 %59, 24, !dbg !2750
  %61 = getelementptr inbounds i32, ptr %38, i64 %60, !dbg !2753
  store i32 %34, ptr %61, align 4, !dbg !2754, !tbaa !1554
  %62 = add nuw nsw i64 %49, 4, !dbg !2755
  call void @llvm.dbg.value(metadata i64 %62, metadata !2211, metadata !DIExpression()), !dbg !2741
  %63 = add i64 %50, 4, !dbg !2749
  %64 = icmp eq i64 %63, %47, !dbg !2749
  br i1 %64, label %104, label %48, !dbg !2749, !llvm.loop !2756

65:                                               ; preds = %6
  %66 = zext i32 %34 to i64, !dbg !2758
  %67 = mul nuw i64 %66, 4294967297, !dbg !2759
  call void @llvm.dbg.value(metadata i64 %67, metadata !2213, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !2741
  %68 = icmp slt i32 %5, 1, !dbg !2761
  %69 = icmp eq i32 %4, 0
  %70 = or i1 %69, %68, !dbg !2762
  br i1 %70, label %115, label %71, !dbg !2762

71:                                               ; preds = %65
  %72 = lshr i32 %4, 1
  %73 = zext i32 %5 to i64, !dbg !2761
  %74 = zext i32 %72 to i64
  %75 = icmp ult i32 %4, 8
  %76 = and i64 %74, 2147483644
  %77 = insertelement <2 x i64> poison, i64 %67, i64 0
  %78 = shufflevector <2 x i64> %77, <2 x i64> poison, <2 x i32> zeroinitializer
  %79 = insertelement <2 x i64> poison, i64 %67, i64 0
  %80 = shufflevector <2 x i64> %79, <2 x i64> poison, <2 x i32> zeroinitializer
  %81 = icmp eq i64 %76, %74
  br label %82, !dbg !2762

82:                                               ; preds = %101, %71
  %83 = phi i64 [ 0, %71 ], [ %102, %101 ]
  call void @llvm.dbg.value(metadata i64 %83, metadata !2211, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i32 0, metadata !2212, metadata !DIExpression()), !dbg !2741
  %84 = shl nsw i64 %83, 2
  br i1 %75, label %93, label %85, !dbg !2763

85:                                               ; preds = %82, %85
  %86 = phi i64 [ %90, %85 ], [ 0, %82 ], !dbg !2764
  %87 = add nuw nsw i64 %86, %84, !dbg !2765
  %88 = getelementptr inbounds i64, ptr %38, i64 %87, !dbg !2766
  store <2 x i64> %78, ptr %88, align 8, !dbg !2767, !tbaa !2226
  %89 = getelementptr inbounds i64, ptr %88, i64 2, !dbg !2767
  store <2 x i64> %80, ptr %89, align 8, !dbg !2767, !tbaa !2226
  %90 = add nuw i64 %86, 4, !dbg !2764
  %91 = icmp eq i64 %90, %76, !dbg !2764
  br i1 %91, label %92, label %85, !dbg !2764, !llvm.loop !2768

92:                                               ; preds = %85
  br i1 %81, label %101, label %93, !dbg !2763

93:                                               ; preds = %82, %92
  %94 = phi i64 [ 0, %82 ], [ %76, %92 ]
  br label %95, !dbg !2763

95:                                               ; preds = %93, %95
  %96 = phi i64 [ %99, %95 ], [ %94, %93 ]
  call void @llvm.dbg.value(metadata i64 %96, metadata !2212, metadata !DIExpression()), !dbg !2741
  %97 = add nuw nsw i64 %96, %84, !dbg !2765
  %98 = getelementptr inbounds i64, ptr %38, i64 %97, !dbg !2766
  store i64 %67, ptr %98, align 8, !dbg !2767, !tbaa !2226
  %99 = add nuw nsw i64 %96, 1, !dbg !2764
  call void @llvm.dbg.value(metadata i64 %99, metadata !2212, metadata !DIExpression()), !dbg !2741
  %100 = icmp eq i64 %99, %74, !dbg !2772
  br i1 %100, label %101, label %95, !dbg !2763, !llvm.loop !2773

101:                                              ; preds = %95, %92
  %102 = add nuw nsw i64 %83, 1, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %102, metadata !2211, metadata !DIExpression()), !dbg !2741
  %103 = icmp eq i64 %102, %73, !dbg !2761
  br i1 %103, label %115, label %82, !dbg !2762, !llvm.loop !2775

104:                                              ; preds = %48, %42
  %105 = phi i64 [ 0, %42 ], [ %62, %48 ]
  %106 = icmp eq i64 %44, 0, !dbg !2749
  br i1 %106, label %115, label %107, !dbg !2749

107:                                              ; preds = %104, %107
  %108 = phi i64 [ %112, %107 ], [ %105, %104 ]
  %109 = phi i64 [ %113, %107 ], [ 0, %104 ]
  call void @llvm.dbg.value(metadata i64 %108, metadata !2211, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i32 poison, metadata !2212, metadata !DIExpression()), !dbg !2741
  %110 = shl nsw i64 %108, 3, !dbg !2750
  %111 = getelementptr inbounds i32, ptr %38, i64 %110, !dbg !2753
  store i32 %34, ptr %111, align 4, !dbg !2754, !tbaa !1554
  %112 = add nuw nsw i64 %108, 1, !dbg !2755
  call void @llvm.dbg.value(metadata i64 %112, metadata !2211, metadata !DIExpression()), !dbg !2741
  %113 = add i64 %109, 1, !dbg !2749
  %114 = icmp eq i64 %113, %44, !dbg !2749
  br i1 %114, label %115, label %107, !dbg !2749, !llvm.loop !2777

115:                                              ; preds = %101, %104, %107, %40, %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8, !dbg !2779
  ret void, !dbg !2779
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_cabac_mb_sub_p_partition(ptr noundef %0, i32 noundef %1) unnamed_addr #5 !dbg !2780 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2782, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i32 %1, metadata !2783, metadata !DIExpression()), !dbg !2784
  switch i32 %1, label %7 [
    i32 3, label %3
    i32 1, label %4
    i32 2, label %5
    i32 0, label %6
  ], !dbg !2785

3:                                                ; preds = %2
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 21, i32 noundef 1) #8, !dbg !2786
  br label %7, !dbg !2789

4:                                                ; preds = %2
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 21, i32 noundef 0) #8, !dbg !2790
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 22, i32 noundef 0) #8, !dbg !2793
  br label %7, !dbg !2794

5:                                                ; preds = %2
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 21, i32 noundef 0) #8, !dbg !2795
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 22, i32 noundef 1) #8, !dbg !2798
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 23, i32 noundef 1) #8, !dbg !2799
  br label %7, !dbg !2800

6:                                                ; preds = %2
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 21, i32 noundef 0) #8, !dbg !2801
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 22, i32 noundef 1) #8, !dbg !2804
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 23, i32 noundef 0) #8, !dbg !2805
  br label %7, !dbg !2806

7:                                                ; preds = %2, %4, %6, %5, %3
  ret void, !dbg !2807
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_cabac_mb8x8_mvd(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !dbg !2808 {
  %5 = alloca [2 x i16], align 4
  %6 = alloca [2 x i16], align 4
  %7 = alloca [2 x i16], align 4
  %8 = alloca [2 x i16], align 4
  %9 = alloca [2 x i16], align 4
  %10 = alloca [2 x i16], align 4
  %11 = alloca [2 x i16], align 4
  %12 = alloca [2 x i16], align 4
  %13 = alloca [2 x i16], align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2810, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata ptr %1, metadata !2811, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i32 %2, metadata !2812, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i32 %3, metadata !2813, metadata !DIExpression()), !dbg !2814
  %14 = zext i32 %2 to i64
  %15 = sext i32 %3 to i64, !dbg !2815
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 %15, !dbg !2815
  %17 = load i32, ptr %16, align 4, !dbg !2815, !tbaa !1554
  %18 = sext i32 %17 to i64, !dbg !2817
  %19 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 %14, i64 %18, !dbg !2817
  %20 = load i8, ptr %19, align 1, !dbg !2817, !tbaa !1461
  %21 = icmp eq i8 %20, 0, !dbg !2817
  br i1 %21, label %315, label %22, !dbg !2818

22:                                               ; preds = %4
  switch i32 %17, label %315 [
    i32 3, label %23
    i32 7, label %23
    i32 11, label %23
    i32 1, label %58
    i32 5, label %58
    i32 9, label %58
    i32 2, label %125
    i32 6, label %125
    i32 10, label %125
    i32 0, label %190
    i32 4, label %190
    i32 8, label %190
  ], !dbg !2819

23:                                               ; preds = %22, %22, %22
  %24 = shl nsw i32 %3, 2, !dbg !2820
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata ptr %1, metadata !2156, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 %2, metadata !2157, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 %24, metadata !2158, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 2, metadata !2159, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 2, metadata !2160, metadata !DIExpression()), !dbg !2822
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8, !dbg !2824
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2161, metadata !DIExpression()), !dbg !2824
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %24, i32 noundef 2, ptr noundef nonnull %13) #8, !dbg !2825
  %25 = sext i32 %24 to i64, !dbg !2826
  %26 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %25, !dbg !2826
  %27 = load i32, ptr %26, align 16, !dbg !2826, !tbaa !1554
  %28 = sext i32 %27 to i64, !dbg !2827
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %28, !dbg !2827
  %30 = load i16, ptr %29, align 4, !dbg !2827, !tbaa !2169
  %31 = sext i16 %30 to i32, !dbg !2827
  %32 = load i16, ptr %13, align 4, !dbg !2828, !tbaa !2169
  %33 = sext i16 %32 to i32, !dbg !2828
  %34 = sub nsw i32 %31, %33, !dbg !2829
  call void @llvm.dbg.value(metadata i32 %34, metadata !2162, metadata !DIExpression()), !dbg !2822
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %28, i64 1, !dbg !2830
  %36 = load i16, ptr %35, align 2, !dbg !2830, !tbaa !2169
  %37 = sext i16 %36 to i32, !dbg !2830
  %38 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1, !dbg !2831
  %39 = load i16, ptr %38, align 2, !dbg !2831, !tbaa !2169
  %40 = sext i16 %39 to i32, !dbg !2831
  %41 = sub nsw i32 %37, %40, !dbg !2832
  call void @llvm.dbg.value(metadata i32 %41, metadata !2163, metadata !DIExpression()), !dbg !2822
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %24, i32 noundef 0, i32 noundef %34), !dbg !2833
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %24, i32 noundef 1, i32 noundef %41), !dbg !2834
  %42 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %25, !dbg !2835
  %43 = load i8, ptr %42, align 4, !dbg !2835, !tbaa !1461
  %44 = zext i8 %43 to i64, !dbg !2835
  %45 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %25, !dbg !2836
  %46 = load i8, ptr %45, align 4, !dbg !2836, !tbaa !1461
  %47 = zext i8 %46 to i64, !dbg !2836
  call void @llvm.dbg.value(metadata i32 %34, metadata !2178, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i32 %41, metadata !2183, metadata !DIExpression()), !dbg !2837
  %48 = and i32 %34, 65535, !dbg !2839
  %49 = shl i32 %41, 16, !dbg !2840
  %50 = or i32 %49, %48, !dbg !2841
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8 %43, metadata !2194, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2842
  call void @llvm.dbg.value(metadata i8 %46, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2842
  call void @llvm.dbg.value(metadata i32 2, metadata !2196, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i32 2, metadata !2197, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i32 %2, metadata !2198, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i32 %50, metadata !2199, metadata !DIExpression()), !dbg !2842
  %51 = add nuw nsw i64 %44, 12, !dbg !2844
  %52 = shl nuw nsw i64 %47, 3, !dbg !2845
  %53 = add nuw nsw i64 %51, %52, !dbg !2846
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %14, i64 %53, !dbg !2847
  call void @llvm.dbg.value(metadata ptr %54, metadata !2203, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 2, metadata !2208, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 2, metadata !2209, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 %50, metadata !2210, metadata !DIExpression()), !dbg !2848
  %55 = zext i32 %50 to i64, !dbg !2850
  %56 = mul nuw i64 %55, 4294967297, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %56, metadata !2213, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 0, metadata !2212, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2848
  store i64 %56, ptr %54, align 8, !dbg !2853, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2212, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 0, metadata !2212, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2848
  %57 = getelementptr inbounds i64, ptr %54, i64 4, !dbg !2854
  store i64 %56, ptr %57, align 8, !dbg !2853, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2212, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 2, metadata !2211, metadata !DIExpression()), !dbg !2848
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8, !dbg !2855
  br label %315, !dbg !2856

58:                                               ; preds = %22, %22, %22
  %59 = shl nsw i32 %3, 2, !dbg !2857
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata ptr %1, metadata !2156, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i32 %2, metadata !2157, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i32 %59, metadata !2158, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i32 2, metadata !2159, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i32 1, metadata !2160, metadata !DIExpression()), !dbg !2858
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8, !dbg !2860
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2161, metadata !DIExpression()), !dbg !2860
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %59, i32 noundef 2, ptr noundef nonnull %12) #8, !dbg !2861
  %60 = sext i32 %59 to i64, !dbg !2862
  %61 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %60, !dbg !2862
  %62 = load i32, ptr %61, align 16, !dbg !2862, !tbaa !1554
  %63 = sext i32 %62 to i64, !dbg !2863
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %63, !dbg !2863
  %65 = load i16, ptr %64, align 4, !dbg !2863, !tbaa !2169
  %66 = sext i16 %65 to i32, !dbg !2863
  %67 = load i16, ptr %12, align 4, !dbg !2864, !tbaa !2169
  %68 = sext i16 %67 to i32, !dbg !2864
  %69 = sub nsw i32 %66, %68, !dbg !2865
  call void @llvm.dbg.value(metadata i32 %69, metadata !2162, metadata !DIExpression()), !dbg !2858
  %70 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %63, i64 1, !dbg !2866
  %71 = load i16, ptr %70, align 2, !dbg !2866, !tbaa !2169
  %72 = sext i16 %71 to i32, !dbg !2866
  %73 = getelementptr inbounds [2 x i16], ptr %12, i64 0, i64 1, !dbg !2867
  %74 = load i16, ptr %73, align 2, !dbg !2867, !tbaa !2169
  %75 = sext i16 %74 to i32, !dbg !2867
  %76 = sub nsw i32 %72, %75, !dbg !2868
  call void @llvm.dbg.value(metadata i32 %76, metadata !2163, metadata !DIExpression()), !dbg !2858
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %59, i32 noundef 0, i32 noundef %69), !dbg !2869
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %59, i32 noundef 1, i32 noundef %76), !dbg !2870
  %77 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %60, !dbg !2871
  %78 = load i8, ptr %77, align 4, !dbg !2871, !tbaa !1461
  %79 = zext i8 %78 to i64, !dbg !2871
  %80 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %60, !dbg !2872
  %81 = load i8, ptr %80, align 4, !dbg !2872, !tbaa !1461
  %82 = zext i8 %81 to i64, !dbg !2872
  call void @llvm.dbg.value(metadata i32 %69, metadata !2178, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i32 %76, metadata !2183, metadata !DIExpression()), !dbg !2873
  %83 = and i32 %69, 65535, !dbg !2875
  %84 = shl i32 %76, 16, !dbg !2876
  %85 = or i32 %84, %83, !dbg !2877
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8 %78, metadata !2194, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2878
  call void @llvm.dbg.value(metadata i8 %81, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2878
  call void @llvm.dbg.value(metadata i32 2, metadata !2196, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i32 1, metadata !2197, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i32 %2, metadata !2198, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i32 %85, metadata !2199, metadata !DIExpression()), !dbg !2878
  %86 = add nuw nsw i64 %79, 12, !dbg !2880
  %87 = shl nuw nsw i64 %82, 3, !dbg !2881
  %88 = add nuw nsw i64 %86, %87, !dbg !2882
  %89 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %14, i64 %88, !dbg !2883
  call void @llvm.dbg.value(metadata ptr %89, metadata !2203, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 2, metadata !2208, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 1, metadata !2209, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 %85, metadata !2210, metadata !DIExpression()), !dbg !2884
  %90 = zext i32 %85 to i64, !dbg !2886
  %91 = mul nuw i64 %90, 4294967297, !dbg !2887
  call void @llvm.dbg.value(metadata i64 %91, metadata !2213, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 0, metadata !2212, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2884
  store i64 %91, ptr %89, align 8, !dbg !2889, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2212, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !2884
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8, !dbg !2890
  %92 = or i32 %59, 2, !dbg !2891
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata ptr %1, metadata !2156, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 %2, metadata !2157, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 %92, metadata !2158, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 2, metadata !2159, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 1, metadata !2160, metadata !DIExpression()), !dbg !2892
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8, !dbg !2894
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2161, metadata !DIExpression()), !dbg !2894
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %92, i32 noundef 2, ptr noundef nonnull %11) #8, !dbg !2895
  %93 = sext i32 %92 to i64, !dbg !2896
  %94 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %93, !dbg !2896
  %95 = load i32, ptr %94, align 8, !dbg !2896, !tbaa !1554
  %96 = sext i32 %95 to i64, !dbg !2897
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %96, !dbg !2897
  %98 = load i16, ptr %97, align 4, !dbg !2897, !tbaa !2169
  %99 = sext i16 %98 to i32, !dbg !2897
  %100 = load i16, ptr %11, align 4, !dbg !2898, !tbaa !2169
  %101 = sext i16 %100 to i32, !dbg !2898
  %102 = sub nsw i32 %99, %101, !dbg !2899
  call void @llvm.dbg.value(metadata i32 %102, metadata !2162, metadata !DIExpression()), !dbg !2892
  %103 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %96, i64 1, !dbg !2900
  %104 = load i16, ptr %103, align 2, !dbg !2900, !tbaa !2169
  %105 = sext i16 %104 to i32, !dbg !2900
  %106 = getelementptr inbounds [2 x i16], ptr %11, i64 0, i64 1, !dbg !2901
  %107 = load i16, ptr %106, align 2, !dbg !2901, !tbaa !2169
  %108 = sext i16 %107 to i32, !dbg !2901
  %109 = sub nsw i32 %105, %108, !dbg !2902
  call void @llvm.dbg.value(metadata i32 %109, metadata !2163, metadata !DIExpression()), !dbg !2892
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %92, i32 noundef 0, i32 noundef %102), !dbg !2903
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %92, i32 noundef 1, i32 noundef %109), !dbg !2904
  %110 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %93, !dbg !2905
  %111 = load i8, ptr %110, align 2, !dbg !2905, !tbaa !1461
  %112 = zext i8 %111 to i64, !dbg !2905
  %113 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %93, !dbg !2906
  %114 = load i8, ptr %113, align 2, !dbg !2906, !tbaa !1461
  %115 = zext i8 %114 to i64, !dbg !2906
  call void @llvm.dbg.value(metadata i32 %102, metadata !2178, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i32 %109, metadata !2183, metadata !DIExpression()), !dbg !2907
  %116 = and i32 %102, 65535, !dbg !2909
  %117 = shl i32 %109, 16, !dbg !2910
  %118 = or i32 %117, %116, !dbg !2911
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8 %111, metadata !2194, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2912
  call void @llvm.dbg.value(metadata i8 %114, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2912
  call void @llvm.dbg.value(metadata i32 2, metadata !2196, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i32 1, metadata !2197, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i32 %2, metadata !2198, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i32 %118, metadata !2199, metadata !DIExpression()), !dbg !2912
  %119 = add nuw nsw i64 %112, 12, !dbg !2914
  %120 = shl nuw nsw i64 %115, 3, !dbg !2915
  %121 = add nuw nsw i64 %119, %120, !dbg !2916
  %122 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %14, i64 %121, !dbg !2917
  call void @llvm.dbg.value(metadata ptr %122, metadata !2203, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i32 2, metadata !2208, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i32 1, metadata !2209, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i32 %118, metadata !2210, metadata !DIExpression()), !dbg !2918
  %123 = zext i32 %118 to i64, !dbg !2920
  %124 = mul nuw i64 %123, 4294967297, !dbg !2921
  call void @llvm.dbg.value(metadata i64 %124, metadata !2213, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i32 0, metadata !2212, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 0, metadata !2212, metadata !DIExpression()), !dbg !2918
  store i64 %124, ptr %122, align 8, !dbg !2923, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 1, metadata !2212, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !2918
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8, !dbg !2924
  br label %315, !dbg !2925

125:                                              ; preds = %22, %22, %22
  %126 = shl nsw i32 %3, 2, !dbg !2926
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %1, metadata !2156, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i32 %2, metadata !2157, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i32 %126, metadata !2158, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i32 1, metadata !2159, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i32 2, metadata !2160, metadata !DIExpression()), !dbg !2927
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8, !dbg !2929
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2161, metadata !DIExpression()), !dbg !2929
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %126, i32 noundef 1, ptr noundef nonnull %10) #8, !dbg !2930
  %127 = sext i32 %126 to i64, !dbg !2931
  %128 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %127, !dbg !2931
  %129 = load i32, ptr %128, align 16, !dbg !2931, !tbaa !1554
  %130 = sext i32 %129 to i64, !dbg !2932
  %131 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %130, !dbg !2932
  %132 = load i16, ptr %131, align 4, !dbg !2932, !tbaa !2169
  %133 = sext i16 %132 to i32, !dbg !2932
  %134 = load i16, ptr %10, align 4, !dbg !2933, !tbaa !2169
  %135 = sext i16 %134 to i32, !dbg !2933
  %136 = sub nsw i32 %133, %135, !dbg !2934
  call void @llvm.dbg.value(metadata i32 %136, metadata !2162, metadata !DIExpression()), !dbg !2927
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %130, i64 1, !dbg !2935
  %138 = load i16, ptr %137, align 2, !dbg !2935, !tbaa !2169
  %139 = sext i16 %138 to i32, !dbg !2935
  %140 = getelementptr inbounds [2 x i16], ptr %10, i64 0, i64 1, !dbg !2936
  %141 = load i16, ptr %140, align 2, !dbg !2936, !tbaa !2169
  %142 = sext i16 %141 to i32, !dbg !2936
  %143 = sub nsw i32 %139, %142, !dbg !2937
  call void @llvm.dbg.value(metadata i32 %143, metadata !2163, metadata !DIExpression()), !dbg !2927
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %126, i32 noundef 0, i32 noundef %136), !dbg !2938
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %126, i32 noundef 1, i32 noundef %143), !dbg !2939
  %144 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %127, !dbg !2940
  %145 = load i8, ptr %144, align 4, !dbg !2940, !tbaa !1461
  %146 = zext i8 %145 to i64, !dbg !2940
  %147 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %127, !dbg !2941
  %148 = load i8, ptr %147, align 4, !dbg !2941, !tbaa !1461
  %149 = zext i8 %148 to i64, !dbg !2941
  call void @llvm.dbg.value(metadata i32 %136, metadata !2178, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i32 %143, metadata !2183, metadata !DIExpression()), !dbg !2942
  %150 = and i32 %136, 65535, !dbg !2944
  %151 = shl i32 %143, 16, !dbg !2945
  %152 = or i32 %151, %150, !dbg !2946
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %145, metadata !2194, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2947
  call void @llvm.dbg.value(metadata i8 %148, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2947
  call void @llvm.dbg.value(metadata i32 1, metadata !2196, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i32 2, metadata !2197, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i32 %2, metadata !2198, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i32 %152, metadata !2199, metadata !DIExpression()), !dbg !2947
  %153 = add nuw nsw i64 %146, 12, !dbg !2949
  %154 = shl nuw nsw i64 %149, 3, !dbg !2950
  %155 = add nuw nsw i64 %153, %154, !dbg !2951
  %156 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %14, i64 %155, !dbg !2952
  call void @llvm.dbg.value(metadata ptr %156, metadata !2203, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 1, metadata !2208, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 2, metadata !2209, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 %152, metadata !2210, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 poison, metadata !2212, metadata !DIExpression()), !dbg !2953
  store i32 %152, ptr %156, align 4, !dbg !2955, !tbaa !1554
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 poison, metadata !2212, metadata !DIExpression()), !dbg !2953
  %157 = getelementptr inbounds i32, ptr %156, i64 8, !dbg !2956
  store i32 %152, ptr %157, align 4, !dbg !2955, !tbaa !1554
  call void @llvm.dbg.value(metadata i64 2, metadata !2211, metadata !DIExpression()), !dbg !2953
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8, !dbg !2957
  %158 = or i32 %126, 1, !dbg !2958
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata ptr %1, metadata !2156, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i32 %2, metadata !2157, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i32 %158, metadata !2158, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i32 1, metadata !2159, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i32 2, metadata !2160, metadata !DIExpression()), !dbg !2959
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8, !dbg !2961
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2161, metadata !DIExpression()), !dbg !2961
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %158, i32 noundef 1, ptr noundef nonnull %9) #8, !dbg !2962
  %159 = sext i32 %158 to i64, !dbg !2963
  %160 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %159, !dbg !2963
  %161 = load i32, ptr %160, align 4, !dbg !2963, !tbaa !1554
  %162 = sext i32 %161 to i64, !dbg !2964
  %163 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %162, !dbg !2964
  %164 = load i16, ptr %163, align 4, !dbg !2964, !tbaa !2169
  %165 = sext i16 %164 to i32, !dbg !2964
  %166 = load i16, ptr %9, align 4, !dbg !2965, !tbaa !2169
  %167 = sext i16 %166 to i32, !dbg !2965
  %168 = sub nsw i32 %165, %167, !dbg !2966
  call void @llvm.dbg.value(metadata i32 %168, metadata !2162, metadata !DIExpression()), !dbg !2959
  %169 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %162, i64 1, !dbg !2967
  %170 = load i16, ptr %169, align 2, !dbg !2967, !tbaa !2169
  %171 = sext i16 %170 to i32, !dbg !2967
  %172 = getelementptr inbounds [2 x i16], ptr %9, i64 0, i64 1, !dbg !2968
  %173 = load i16, ptr %172, align 2, !dbg !2968, !tbaa !2169
  %174 = sext i16 %173 to i32, !dbg !2968
  %175 = sub nsw i32 %171, %174, !dbg !2969
  call void @llvm.dbg.value(metadata i32 %175, metadata !2163, metadata !DIExpression()), !dbg !2959
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %158, i32 noundef 0, i32 noundef %168), !dbg !2970
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %158, i32 noundef 1, i32 noundef %175), !dbg !2971
  %176 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %159, !dbg !2972
  %177 = load i8, ptr %176, align 1, !dbg !2972, !tbaa !1461
  %178 = zext i8 %177 to i64, !dbg !2972
  %179 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %159, !dbg !2973
  %180 = load i8, ptr %179, align 1, !dbg !2973, !tbaa !1461
  %181 = zext i8 %180 to i64, !dbg !2973
  call void @llvm.dbg.value(metadata i32 %168, metadata !2178, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i32 %175, metadata !2183, metadata !DIExpression()), !dbg !2974
  %182 = and i32 %168, 65535, !dbg !2976
  %183 = shl i32 %175, 16, !dbg !2977
  %184 = or i32 %183, %182, !dbg !2978
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %177, metadata !2194, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %180, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2979
  call void @llvm.dbg.value(metadata i32 1, metadata !2196, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i32 2, metadata !2197, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i32 %2, metadata !2198, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i32 %184, metadata !2199, metadata !DIExpression()), !dbg !2979
  %185 = add nuw nsw i64 %178, 12, !dbg !2981
  %186 = shl nuw nsw i64 %181, 3, !dbg !2982
  %187 = add nuw nsw i64 %185, %186, !dbg !2983
  %188 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %14, i64 %187, !dbg !2984
  call void @llvm.dbg.value(metadata ptr %188, metadata !2203, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i32 1, metadata !2208, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i32 2, metadata !2209, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i32 %184, metadata !2210, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i32 poison, metadata !2212, metadata !DIExpression()), !dbg !2985
  store i32 %184, ptr %188, align 4, !dbg !2987, !tbaa !1554
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i32 poison, metadata !2212, metadata !DIExpression()), !dbg !2985
  %189 = getelementptr inbounds i32, ptr %188, i64 8, !dbg !2988
  store i32 %184, ptr %189, align 4, !dbg !2987, !tbaa !1554
  call void @llvm.dbg.value(metadata i64 2, metadata !2211, metadata !DIExpression()), !dbg !2985
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8, !dbg !2989
  br label %315, !dbg !2990

190:                                              ; preds = %22, %22, %22
  %191 = shl nsw i32 %3, 2, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %1, metadata !2156, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 %2, metadata !2157, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 %191, metadata !2158, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 1, metadata !2159, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 1, metadata !2160, metadata !DIExpression()), !dbg !2992
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8, !dbg !2994
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2161, metadata !DIExpression()), !dbg !2994
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %191, i32 noundef 1, ptr noundef nonnull %8) #8, !dbg !2995
  %192 = sext i32 %191 to i64, !dbg !2996
  %193 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %192, !dbg !2996
  %194 = load i32, ptr %193, align 16, !dbg !2996, !tbaa !1554
  %195 = sext i32 %194 to i64, !dbg !2997
  %196 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %195, !dbg !2997
  %197 = load i16, ptr %196, align 4, !dbg !2997, !tbaa !2169
  %198 = sext i16 %197 to i32, !dbg !2997
  %199 = load i16, ptr %8, align 4, !dbg !2998, !tbaa !2169
  %200 = sext i16 %199 to i32, !dbg !2998
  %201 = sub nsw i32 %198, %200, !dbg !2999
  call void @llvm.dbg.value(metadata i32 %201, metadata !2162, metadata !DIExpression()), !dbg !2992
  %202 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %195, i64 1, !dbg !3000
  %203 = load i16, ptr %202, align 2, !dbg !3000, !tbaa !2169
  %204 = sext i16 %203 to i32, !dbg !3000
  %205 = getelementptr inbounds [2 x i16], ptr %8, i64 0, i64 1, !dbg !3001
  %206 = load i16, ptr %205, align 2, !dbg !3001, !tbaa !2169
  %207 = sext i16 %206 to i32, !dbg !3001
  %208 = sub nsw i32 %204, %207, !dbg !3002
  call void @llvm.dbg.value(metadata i32 %208, metadata !2163, metadata !DIExpression()), !dbg !2992
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %191, i32 noundef 0, i32 noundef %201), !dbg !3003
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %191, i32 noundef 1, i32 noundef %208), !dbg !3004
  %209 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %192, !dbg !3005
  %210 = load i8, ptr %209, align 4, !dbg !3005, !tbaa !1461
  %211 = zext i8 %210 to i64, !dbg !3005
  %212 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %192, !dbg !3006
  %213 = load i8, ptr %212, align 4, !dbg !3006, !tbaa !1461
  %214 = zext i8 %213 to i64, !dbg !3006
  call void @llvm.dbg.value(metadata i32 %201, metadata !2178, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 %208, metadata !2183, metadata !DIExpression()), !dbg !3007
  %215 = and i32 %201, 65535, !dbg !3009
  %216 = shl i32 %208, 16, !dbg !3010
  %217 = or i32 %216, %215, !dbg !3011
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8 %210, metadata !2194, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3012
  call void @llvm.dbg.value(metadata i8 %213, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3012
  call void @llvm.dbg.value(metadata i32 1, metadata !2196, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 1, metadata !2197, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 %2, metadata !2198, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 %217, metadata !2199, metadata !DIExpression()), !dbg !3012
  %218 = add nuw nsw i64 %211, 12, !dbg !3014
  %219 = shl nuw nsw i64 %214, 3, !dbg !3015
  %220 = add nuw nsw i64 %218, %219, !dbg !3016
  %221 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %14, i64 %220, !dbg !3017
  call void @llvm.dbg.value(metadata ptr %221, metadata !2203, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 1, metadata !2208, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 1, metadata !2209, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 %217, metadata !2210, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 poison, metadata !2212, metadata !DIExpression()), !dbg !3018
  store i32 %217, ptr %221, align 4, !dbg !3020, !tbaa !1554
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !3018
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8, !dbg !3021
  %222 = or i32 %191, 1, !dbg !3022
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata ptr %1, metadata !2156, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 %2, metadata !2157, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 %222, metadata !2158, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 1, metadata !2159, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 1, metadata !2160, metadata !DIExpression()), !dbg !3023
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8, !dbg !3025
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2161, metadata !DIExpression()), !dbg !3025
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %222, i32 noundef 1, ptr noundef nonnull %7) #8, !dbg !3026
  %223 = sext i32 %222 to i64, !dbg !3027
  %224 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %223, !dbg !3027
  %225 = load i32, ptr %224, align 4, !dbg !3027, !tbaa !1554
  %226 = sext i32 %225 to i64, !dbg !3028
  %227 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %226, !dbg !3028
  %228 = load i16, ptr %227, align 4, !dbg !3028, !tbaa !2169
  %229 = sext i16 %228 to i32, !dbg !3028
  %230 = load i16, ptr %7, align 4, !dbg !3029, !tbaa !2169
  %231 = sext i16 %230 to i32, !dbg !3029
  %232 = sub nsw i32 %229, %231, !dbg !3030
  call void @llvm.dbg.value(metadata i32 %232, metadata !2162, metadata !DIExpression()), !dbg !3023
  %233 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %226, i64 1, !dbg !3031
  %234 = load i16, ptr %233, align 2, !dbg !3031, !tbaa !2169
  %235 = sext i16 %234 to i32, !dbg !3031
  %236 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1, !dbg !3032
  %237 = load i16, ptr %236, align 2, !dbg !3032, !tbaa !2169
  %238 = sext i16 %237 to i32, !dbg !3032
  %239 = sub nsw i32 %235, %238, !dbg !3033
  call void @llvm.dbg.value(metadata i32 %239, metadata !2163, metadata !DIExpression()), !dbg !3023
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %222, i32 noundef 0, i32 noundef %232), !dbg !3034
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %222, i32 noundef 1, i32 noundef %239), !dbg !3035
  %240 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %223, !dbg !3036
  %241 = load i8, ptr %240, align 1, !dbg !3036, !tbaa !1461
  %242 = zext i8 %241 to i64, !dbg !3036
  %243 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %223, !dbg !3037
  %244 = load i8, ptr %243, align 1, !dbg !3037, !tbaa !1461
  %245 = zext i8 %244 to i64, !dbg !3037
  call void @llvm.dbg.value(metadata i32 %232, metadata !2178, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32 %239, metadata !2183, metadata !DIExpression()), !dbg !3038
  %246 = and i32 %232, 65535, !dbg !3040
  %247 = shl i32 %239, 16, !dbg !3041
  %248 = or i32 %247, %246, !dbg !3042
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %241, metadata !2194, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %244, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3043
  call void @llvm.dbg.value(metadata i32 1, metadata !2196, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i32 1, metadata !2197, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i32 %2, metadata !2198, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i32 %248, metadata !2199, metadata !DIExpression()), !dbg !3043
  %249 = add nuw nsw i64 %242, 12, !dbg !3045
  %250 = shl nuw nsw i64 %245, 3, !dbg !3046
  %251 = add nuw nsw i64 %249, %250, !dbg !3047
  %252 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %14, i64 %251, !dbg !3048
  call void @llvm.dbg.value(metadata ptr %252, metadata !2203, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i32 1, metadata !2208, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i32 1, metadata !2209, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i32 %248, metadata !2210, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i32 poison, metadata !2212, metadata !DIExpression()), !dbg !3049
  store i32 %248, ptr %252, align 4, !dbg !3051, !tbaa !1554
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !3049
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8, !dbg !3052
  %253 = or i32 %191, 2, !dbg !3053
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata ptr %1, metadata !2156, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i32 %2, metadata !2157, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i32 %253, metadata !2158, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i32 1, metadata !2159, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i32 1, metadata !2160, metadata !DIExpression()), !dbg !3054
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8, !dbg !3056
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2161, metadata !DIExpression()), !dbg !3056
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %253, i32 noundef 1, ptr noundef nonnull %6) #8, !dbg !3057
  %254 = sext i32 %253 to i64, !dbg !3058
  %255 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %254, !dbg !3058
  %256 = load i32, ptr %255, align 8, !dbg !3058, !tbaa !1554
  %257 = sext i32 %256 to i64, !dbg !3059
  %258 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %257, !dbg !3059
  %259 = load i16, ptr %258, align 4, !dbg !3059, !tbaa !2169
  %260 = sext i16 %259 to i32, !dbg !3059
  %261 = load i16, ptr %6, align 4, !dbg !3060, !tbaa !2169
  %262 = sext i16 %261 to i32, !dbg !3060
  %263 = sub nsw i32 %260, %262, !dbg !3061
  call void @llvm.dbg.value(metadata i32 %263, metadata !2162, metadata !DIExpression()), !dbg !3054
  %264 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %257, i64 1, !dbg !3062
  %265 = load i16, ptr %264, align 2, !dbg !3062, !tbaa !2169
  %266 = sext i16 %265 to i32, !dbg !3062
  %267 = getelementptr inbounds [2 x i16], ptr %6, i64 0, i64 1, !dbg !3063
  %268 = load i16, ptr %267, align 2, !dbg !3063, !tbaa !2169
  %269 = sext i16 %268 to i32, !dbg !3063
  %270 = sub nsw i32 %266, %269, !dbg !3064
  call void @llvm.dbg.value(metadata i32 %270, metadata !2163, metadata !DIExpression()), !dbg !3054
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %253, i32 noundef 0, i32 noundef %263), !dbg !3065
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %253, i32 noundef 1, i32 noundef %270), !dbg !3066
  %271 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %254, !dbg !3067
  %272 = load i8, ptr %271, align 2, !dbg !3067, !tbaa !1461
  %273 = zext i8 %272 to i64, !dbg !3067
  %274 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %254, !dbg !3068
  %275 = load i8, ptr %274, align 2, !dbg !3068, !tbaa !1461
  %276 = zext i8 %275 to i64, !dbg !3068
  call void @llvm.dbg.value(metadata i32 %263, metadata !2178, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i32 %270, metadata !2183, metadata !DIExpression()), !dbg !3069
  %277 = and i32 %263, 65535, !dbg !3071
  %278 = shl i32 %270, 16, !dbg !3072
  %279 = or i32 %278, %277, !dbg !3073
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i8 %272, metadata !2194, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3074
  call void @llvm.dbg.value(metadata i8 %275, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3074
  call void @llvm.dbg.value(metadata i32 1, metadata !2196, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i32 1, metadata !2197, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i32 %2, metadata !2198, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i32 %279, metadata !2199, metadata !DIExpression()), !dbg !3074
  %280 = add nuw nsw i64 %273, 12, !dbg !3076
  %281 = shl nuw nsw i64 %276, 3, !dbg !3077
  %282 = add nuw nsw i64 %280, %281, !dbg !3078
  %283 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %14, i64 %282, !dbg !3079
  call void @llvm.dbg.value(metadata ptr %283, metadata !2203, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i32 1, metadata !2208, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i32 1, metadata !2209, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i32 %279, metadata !2210, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i32 poison, metadata !2212, metadata !DIExpression()), !dbg !3080
  store i32 %279, ptr %283, align 4, !dbg !3082, !tbaa !1554
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !3080
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8, !dbg !3083
  %284 = or i32 %191, 3, !dbg !3084
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %1, metadata !2156, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32 %2, metadata !2157, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32 %284, metadata !2158, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32 1, metadata !2159, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32 1, metadata !2160, metadata !DIExpression()), !dbg !3085
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8, !dbg !3087
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2161, metadata !DIExpression()), !dbg !3087
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %284, i32 noundef 1, ptr noundef nonnull %5) #8, !dbg !3088
  %285 = sext i32 %284 to i64, !dbg !3089
  %286 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %285, !dbg !3089
  %287 = load i32, ptr %286, align 4, !dbg !3089, !tbaa !1554
  %288 = sext i32 %287 to i64, !dbg !3090
  %289 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %288, !dbg !3090
  %290 = load i16, ptr %289, align 4, !dbg !3090, !tbaa !2169
  %291 = sext i16 %290 to i32, !dbg !3090
  %292 = load i16, ptr %5, align 4, !dbg !3091, !tbaa !2169
  %293 = sext i16 %292 to i32, !dbg !3091
  %294 = sub nsw i32 %291, %293, !dbg !3092
  call void @llvm.dbg.value(metadata i32 %294, metadata !2162, metadata !DIExpression()), !dbg !3085
  %295 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %14, i64 %288, i64 1, !dbg !3093
  %296 = load i16, ptr %295, align 2, !dbg !3093, !tbaa !2169
  %297 = sext i16 %296 to i32, !dbg !3093
  %298 = getelementptr inbounds [2 x i16], ptr %5, i64 0, i64 1, !dbg !3094
  %299 = load i16, ptr %298, align 2, !dbg !3094, !tbaa !2169
  %300 = sext i16 %299 to i32, !dbg !3094
  %301 = sub nsw i32 %297, %300, !dbg !3095
  call void @llvm.dbg.value(metadata i32 %301, metadata !2163, metadata !DIExpression()), !dbg !3085
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %284, i32 noundef 0, i32 noundef %294), !dbg !3096
  call fastcc void @x264_cabac_mb_mvd_cpn(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %284, i32 noundef 1, i32 noundef %301), !dbg !3097
  %302 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %285, !dbg !3098
  %303 = load i8, ptr %302, align 1, !dbg !3098, !tbaa !1461
  %304 = zext i8 %303 to i64, !dbg !3098
  %305 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %285, !dbg !3099
  %306 = load i8, ptr %305, align 1, !dbg !3099, !tbaa !1461
  %307 = zext i8 %306 to i64, !dbg !3099
  call void @llvm.dbg.value(metadata i32 %294, metadata !2178, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i32 %301, metadata !2183, metadata !DIExpression()), !dbg !3100
  %308 = and i32 %294, 65535, !dbg !3102
  %309 = shl i32 %301, 16, !dbg !3103
  %310 = or i32 %309, %308, !dbg !3104
  call void @llvm.dbg.value(metadata ptr %0, metadata !2189, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8 %303, metadata !2194, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3105
  call void @llvm.dbg.value(metadata i8 %306, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3105
  call void @llvm.dbg.value(metadata i32 1, metadata !2196, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i32 1, metadata !2197, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i32 %2, metadata !2198, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i32 %310, metadata !2199, metadata !DIExpression()), !dbg !3105
  %311 = add nuw nsw i64 %304, 12, !dbg !3107
  %312 = shl nuw nsw i64 %307, 3, !dbg !3108
  %313 = add nuw nsw i64 %311, %312, !dbg !3109
  %314 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %14, i64 %313, !dbg !3110
  call void @llvm.dbg.value(metadata ptr %314, metadata !2203, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i32 1, metadata !2208, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i32 1, metadata !2209, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i32 %310, metadata !2210, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 0, metadata !2211, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i32 poison, metadata !2212, metadata !DIExpression()), !dbg !3111
  store i32 %310, ptr %314, align 4, !dbg !3113, !tbaa !1554
  call void @llvm.dbg.value(metadata i64 1, metadata !2211, metadata !DIExpression()), !dbg !3111
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8, !dbg !3114
  br label %315, !dbg !3115

315:                                              ; preds = %4, %22, %190, %125, %58, %23
  ret void, !dbg !3116
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @x264_cabac_mb_sub_b_partition(ptr noundef %0, i32 noundef %1) unnamed_addr #6 !dbg !1276 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1280, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i32 %1, metadata !1281, metadata !DIExpression()), !dbg !3117
  %3 = icmp eq i32 %1, 12, !dbg !3118
  br i1 %3, label %4, label %5, !dbg !3120

4:                                                ; preds = %2
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 36, i32 noundef 0) #8, !dbg !3121
  br label %32, !dbg !3123

5:                                                ; preds = %2
  %6 = sext i32 %1 to i64, !dbg !3124
  %7 = getelementptr inbounds [12 x [7 x i8]], ptr @x264_cabac_mb_sub_b_partition.part_bits, i64 0, i64 %6, !dbg !3124
  %8 = load i8, ptr %7, align 1, !dbg !3124, !tbaa !1461
  call void @llvm.dbg.value(metadata i8 %8, metadata !1282, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3117
  %9 = getelementptr inbounds [12 x [7 x i8]], ptr @x264_cabac_mb_sub_b_partition.part_bits, i64 0, i64 %6, i64 1, !dbg !3125
  %10 = load i8, ptr %9, align 1, !dbg !3125, !tbaa !1461
  %11 = zext i8 %10 to i32, !dbg !3125
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 36, i32 noundef %11) #8, !dbg !3126
  %12 = getelementptr inbounds [12 x [7 x i8]], ptr @x264_cabac_mb_sub_b_partition.part_bits, i64 0, i64 %6, i64 2, !dbg !3127
  %13 = load i8, ptr %12, align 1, !dbg !3127, !tbaa !1461
  %14 = zext i8 %13 to i32, !dbg !3127
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 37, i32 noundef %14) #8, !dbg !3128
  %15 = icmp eq i8 %8, 3, !dbg !3129
  %16 = getelementptr inbounds [12 x [7 x i8]], ptr @x264_cabac_mb_sub_b_partition.part_bits, i64 0, i64 %6, i64 3, !dbg !3131
  %17 = load i8, ptr %16, align 1, !dbg !3131, !tbaa !1461
  %18 = zext i8 %17 to i32, !dbg !3131
  br i1 %15, label %19, label %20, !dbg !3132

19:                                               ; preds = %5
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 39, i32 noundef %18) #8, !dbg !3133
  br label %32, !dbg !3133

20:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8 %8, metadata !1282, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3117
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 38, i32 noundef %18) #8, !dbg !3134
  %21 = getelementptr inbounds [12 x [7 x i8]], ptr @x264_cabac_mb_sub_b_partition.part_bits, i64 0, i64 %6, i64 4, !dbg !3136
  %22 = load i8, ptr %21, align 1, !dbg !3136, !tbaa !1461
  %23 = zext i8 %22 to i32, !dbg !3136
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 39, i32 noundef %23) #8, !dbg !3137
  %24 = getelementptr inbounds [12 x [7 x i8]], ptr @x264_cabac_mb_sub_b_partition.part_bits, i64 0, i64 %6, i64 5, !dbg !3138
  %25 = load i8, ptr %24, align 1, !dbg !3138, !tbaa !1461
  %26 = zext i8 %25 to i32, !dbg !3138
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 39, i32 noundef %26) #8, !dbg !3139
  %27 = icmp eq i8 %8, 6, !dbg !3140
  br i1 %27, label %28, label %32, !dbg !3142

28:                                               ; preds = %20
  %29 = getelementptr inbounds [12 x [7 x i8]], ptr @x264_cabac_mb_sub_b_partition.part_bits, i64 0, i64 %6, i64 6, !dbg !3143
  %30 = load i8, ptr %29, align 1, !dbg !3143, !tbaa !1461
  %31 = zext i8 %30 to i32, !dbg !3143
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %0, i32 noundef 39, i32 noundef %31) #8, !dbg !3144
  br label %32, !dbg !3144

32:                                               ; preds = %19, %28, %20, %4
  ret void, !dbg !3145
}

; Function Attrs: nounwind uwtable
define internal fastcc void @block_residual_write_cabac(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !dbg !3146 {
  %7 = alloca [64 x i32], align 16
  %8 = alloca [64 x i32], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3150, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata ptr %1, metadata !3151, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 %2, metadata !3152, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 %3, metadata !3153, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata ptr %4, metadata !3154, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 %5, metadata !3155, metadata !DIExpression()), !dbg !3173
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 16, !dbg !3174
  %10 = load i32, ptr %9, align 16, !dbg !3174, !tbaa !1467
  %11 = sext i32 %10 to i64, !dbg !3175
  %12 = zext i32 %2 to i64
  %13 = getelementptr inbounds [2 x [6 x i16]], ptr @significant_coeff_flag_offset, i64 0, i64 %11, i64 %12, !dbg !3175
  %14 = load i16, ptr %13, align 2, !dbg !3175, !tbaa !2169
  %15 = zext i16 %14 to i32, !dbg !3175
  call void @llvm.dbg.value(metadata i32 %15, metadata !3156, metadata !DIExpression()), !dbg !3173
  %16 = getelementptr inbounds [2 x [6 x i16]], ptr @last_coeff_flag_offset, i64 0, i64 %11, i64 %12, !dbg !3176
  %17 = load i16, ptr %16, align 2, !dbg !3176, !tbaa !2169
  %18 = zext i16 %17 to i32, !dbg !3176
  call void @llvm.dbg.value(metadata i32 %18, metadata !3157, metadata !DIExpression()), !dbg !3173
  %19 = getelementptr inbounds [6 x i16], ptr @coeff_abs_level_m1_offset, i64 0, i64 %12, !dbg !3177
  %20 = load i16, ptr %19, align 2, !dbg !3177, !tbaa !2169
  %21 = zext i16 %20 to i32, !dbg !3177
  call void @llvm.dbg.value(metadata i32 %21, metadata !3158, metadata !DIExpression()), !dbg !3173
  %22 = getelementptr inbounds [2 x [63 x i8]], ptr @significant_coeff_flag_offset_8x8, i64 0, i64 %11, !dbg !3178
  call void @llvm.dbg.value(metadata ptr %22, metadata !3159, metadata !DIExpression()), !dbg !3173
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #8, !dbg !3179
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3160, metadata !DIExpression()), !dbg !3180
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #8, !dbg !3181
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3161, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 0, metadata !3162, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 0, metadata !3165, metadata !DIExpression()), !dbg !3173
  %23 = icmp eq i32 %5, 64, !dbg !3183
  br i1 %23, label %229, label %24, !dbg !3184

24:                                               ; preds = %6
  call void @llvm.dbg.value(metadata ptr %0, metadata !3185, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %2, metadata !3190, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %3, metadata !3191, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 -1, metadata !3192, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 -1, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !3194, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !3195, metadata !DIExpression()), !dbg !3196
  switch i32 %2, label %198 [
    i32 0, label %25
    i32 1, label %56
    i32 2, label %56
    i32 3, label %110
    i32 4, label %144
  ], !dbg !3198

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 23, !dbg !3199
  %27 = load i32, ptr %26, align 4, !dbg !3199, !tbaa !1725
  %28 = and i32 %27, 1, !dbg !3202
  %29 = icmp eq i32 %28, 0, !dbg !3202
  br i1 %29, label %41, label %30, !dbg !3203

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !3204
  %32 = load i32, ptr %31, align 8, !dbg !3204, !tbaa !1459
  %33 = add nsw i32 %32, -1, !dbg !3206
  call void @llvm.dbg.value(metadata i32 %33, metadata !3192, metadata !DIExpression()), !dbg !3196
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 34, !dbg !3207
  %35 = load ptr, ptr %34, align 16, !dbg !3207, !tbaa !2393
  %36 = sext i32 %33 to i64, !dbg !3208
  %37 = getelementptr inbounds i16, ptr %35, i64 %36, !dbg !3208
  %38 = load i16, ptr %37, align 2, !dbg !3208, !tbaa !2169
  %39 = and i16 %38, 256, !dbg !3209
  %40 = zext i16 %39 to i32, !dbg !3209
  call void @llvm.dbg.value(metadata i32 %40, metadata !3194, metadata !DIExpression()), !dbg !3196
  br label %41, !dbg !3210

41:                                               ; preds = %30, %25
  %42 = phi i32 [ %33, %30 ], [ -1, %25 ], !dbg !3196
  %43 = phi i32 [ %40, %30 ], [ 0, %25 ], !dbg !3196
  call void @llvm.dbg.value(metadata i32 %43, metadata !3194, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %42, metadata !3192, metadata !DIExpression()), !dbg !3196
  %44 = and i32 %27, 2, !dbg !3211
  %45 = icmp eq i32 %44, 0, !dbg !3211
  br i1 %45, label %198, label %46, !dbg !3213

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 31, !dbg !3214
  %48 = load i32, ptr %47, align 4, !dbg !3214, !tbaa !1740
  call void @llvm.dbg.value(metadata i32 %48, metadata !3193, metadata !DIExpression()), !dbg !3196
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 34, !dbg !3216
  %50 = load ptr, ptr %49, align 16, !dbg !3216, !tbaa !2393
  %51 = sext i32 %48 to i64, !dbg !3217
  %52 = getelementptr inbounds i16, ptr %50, i64 %51, !dbg !3217
  %53 = load i16, ptr %52, align 2, !dbg !3217, !tbaa !2169
  %54 = and i16 %53, 256, !dbg !3218
  %55 = zext i16 %54 to i32, !dbg !3218
  call void @llvm.dbg.value(metadata i32 %55, metadata !3195, metadata !DIExpression()), !dbg !3196
  br label %198, !dbg !3219

56:                                               ; preds = %24, %24
  %57 = and i32 %3, -11, !dbg !3220
  %58 = icmp eq i32 %57, 0, !dbg !3220
  br i1 %58, label %62, label %59, !dbg !3222

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !3223
  %61 = load i32, ptr %60, align 8, !dbg !3223, !tbaa !1459
  call void @llvm.dbg.value(metadata i32 %61, metadata !3192, metadata !DIExpression()), !dbg !3196
  br label %71, !dbg !3224

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 23, !dbg !3225
  %64 = load i32, ptr %63, align 4, !dbg !3225, !tbaa !1725
  %65 = and i32 %64, 1, !dbg !3227
  %66 = icmp eq i32 %65, 0, !dbg !3227
  br i1 %66, label %71, label %67, !dbg !3228

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !3229
  %69 = load i32, ptr %68, align 8, !dbg !3229, !tbaa !1459
  %70 = add nsw i32 %69, -1, !dbg !3230
  call void @llvm.dbg.value(metadata i32 %70, metadata !3192, metadata !DIExpression()), !dbg !3196
  br label %71, !dbg !3231

71:                                               ; preds = %67, %62, %59
  %72 = phi i32 [ %61, %59 ], [ %70, %67 ], [ -1, %62 ], !dbg !3196
  call void @llvm.dbg.value(metadata i32 %72, metadata !3192, metadata !DIExpression()), !dbg !3196
  %73 = and i32 %3, -6, !dbg !3232
  %74 = icmp eq i32 %73, 0, !dbg !3232
  br i1 %74, label %78, label %75, !dbg !3234

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !3235
  %77 = load i32, ptr %76, align 8, !dbg !3235, !tbaa !1459
  call void @llvm.dbg.value(metadata i32 %77, metadata !3193, metadata !DIExpression()), !dbg !3196
  br label %86, !dbg !3236

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 23, !dbg !3237
  %80 = load i32, ptr %79, align 4, !dbg !3237, !tbaa !1725
  %81 = and i32 %80, 2, !dbg !3239
  %82 = icmp eq i32 %81, 0, !dbg !3239
  br i1 %82, label %86, label %83, !dbg !3240

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 31, !dbg !3241
  %85 = load i32, ptr %84, align 4, !dbg !3241, !tbaa !1740
  call void @llvm.dbg.value(metadata i32 %85, metadata !3193, metadata !DIExpression()), !dbg !3196
  br label %86, !dbg !3242

86:                                               ; preds = %83, %78, %75
  %87 = phi i32 [ %77, %75 ], [ %85, %83 ], [ -1, %78 ], !dbg !3196
  call void @llvm.dbg.value(metadata i32 %87, metadata !3193, metadata !DIExpression()), !dbg !3196
  %88 = icmp sgt i32 %72, -1, !dbg !3243
  br i1 %88, label %89, label %98, !dbg !3245

89:                                               ; preds = %86
  %90 = sext i32 %3 to i64, !dbg !3246
  %91 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %90, !dbg !3246
  %92 = load i32, ptr %91, align 4, !dbg !3246, !tbaa !1554
  %93 = add nsw i32 %92, -1, !dbg !3247
  %94 = sext i32 %93 to i64, !dbg !3248
  %95 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 %94, !dbg !3248
  %96 = load i8, ptr %95, align 1, !dbg !3248, !tbaa !1461
  %97 = zext i8 %96 to i32, !dbg !3248
  call void @llvm.dbg.value(metadata i32 %97, metadata !3194, metadata !DIExpression()), !dbg !3196
  br label %98, !dbg !3249

98:                                               ; preds = %89, %86
  %99 = phi i32 [ %97, %89 ], [ 0, %86 ], !dbg !3196
  call void @llvm.dbg.value(metadata i32 %99, metadata !3194, metadata !DIExpression()), !dbg !3196
  %100 = icmp sgt i32 %87, -1, !dbg !3250
  br i1 %100, label %101, label %198, !dbg !3252

101:                                              ; preds = %98
  %102 = sext i32 %3 to i64, !dbg !3253
  %103 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %102, !dbg !3253
  %104 = load i32, ptr %103, align 4, !dbg !3253, !tbaa !1554
  %105 = add nsw i32 %104, -8, !dbg !3254
  %106 = sext i32 %105 to i64, !dbg !3255
  %107 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 %106, !dbg !3255
  %108 = load i8, ptr %107, align 1, !dbg !3255, !tbaa !1461
  %109 = zext i8 %108 to i32, !dbg !3255
  call void @llvm.dbg.value(metadata i32 %109, metadata !3195, metadata !DIExpression()), !dbg !3196
  br label %198, !dbg !3256

110:                                              ; preds = %24
  %111 = add nsw i32 %3, -25, !dbg !3257
  call void @llvm.dbg.value(metadata i32 %111, metadata !3191, metadata !DIExpression()), !dbg !3196
  %112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 23, !dbg !3258
  %113 = load i32, ptr %112, align 4, !dbg !3258, !tbaa !1725
  %114 = and i32 %113, 1, !dbg !3260
  %115 = icmp eq i32 %114, 0, !dbg !3260
  br i1 %115, label %128, label %116, !dbg !3261

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !3262
  %118 = load i32, ptr %117, align 8, !dbg !3262, !tbaa !1459
  %119 = add nsw i32 %118, -1, !dbg !3264
  call void @llvm.dbg.value(metadata i32 %119, metadata !3192, metadata !DIExpression()), !dbg !3196
  %120 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 34, !dbg !3265
  %121 = load ptr, ptr %120, align 16, !dbg !3265, !tbaa !2393
  %122 = sext i32 %119 to i64, !dbg !3266
  %123 = getelementptr inbounds i16, ptr %121, i64 %122, !dbg !3266
  %124 = load i16, ptr %123, align 2, !dbg !3266, !tbaa !2169
  %125 = sext i16 %124 to i32, !dbg !3266
  %126 = shl i32 512, %111, !dbg !3267
  %127 = and i32 %126, %125, !dbg !3268
  call void @llvm.dbg.value(metadata i32 %127, metadata !3194, metadata !DIExpression()), !dbg !3196
  br label %128, !dbg !3269

128:                                              ; preds = %116, %110
  %129 = phi i32 [ %119, %116 ], [ -1, %110 ], !dbg !3196
  %130 = phi i32 [ %127, %116 ], [ 0, %110 ], !dbg !3196
  call void @llvm.dbg.value(metadata i32 %130, metadata !3194, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %129, metadata !3192, metadata !DIExpression()), !dbg !3196
  %131 = and i32 %113, 2, !dbg !3270
  %132 = icmp eq i32 %131, 0, !dbg !3270
  br i1 %132, label %198, label %133, !dbg !3272

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 31, !dbg !3273
  %135 = load i32, ptr %134, align 4, !dbg !3273, !tbaa !1740
  call void @llvm.dbg.value(metadata i32 %135, metadata !3193, metadata !DIExpression()), !dbg !3196
  %136 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 34, !dbg !3275
  %137 = load ptr, ptr %136, align 16, !dbg !3275, !tbaa !2393
  %138 = sext i32 %135 to i64, !dbg !3276
  %139 = getelementptr inbounds i16, ptr %137, i64 %138, !dbg !3276
  %140 = load i16, ptr %139, align 2, !dbg !3276, !tbaa !2169
  %141 = sext i16 %140 to i32, !dbg !3276
  %142 = shl i32 512, %111, !dbg !3277
  %143 = and i32 %142, %141, !dbg !3278
  call void @llvm.dbg.value(metadata i32 %143, metadata !3195, metadata !DIExpression()), !dbg !3196
  br label %198, !dbg !3279

144:                                              ; preds = %24
  %145 = and i32 %3, 1, !dbg !3280
  %146 = icmp eq i32 %145, 0, !dbg !3280
  br i1 %146, label %150, label %147, !dbg !3282

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !3283
  %149 = load i32, ptr %148, align 8, !dbg !3283, !tbaa !1459
  call void @llvm.dbg.value(metadata i32 %149, metadata !3192, metadata !DIExpression()), !dbg !3196
  br label %159, !dbg !3284

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 23, !dbg !3285
  %152 = load i32, ptr %151, align 4, !dbg !3285, !tbaa !1725
  %153 = and i32 %152, 1, !dbg !3287
  %154 = icmp eq i32 %153, 0, !dbg !3287
  br i1 %154, label %159, label %155, !dbg !3288

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !3289
  %157 = load i32, ptr %156, align 8, !dbg !3289, !tbaa !1459
  %158 = add nsw i32 %157, -1, !dbg !3290
  call void @llvm.dbg.value(metadata i32 %158, metadata !3192, metadata !DIExpression()), !dbg !3196
  br label %159, !dbg !3291

159:                                              ; preds = %155, %150, %147
  %160 = phi i32 [ %149, %147 ], [ %158, %155 ], [ -1, %150 ], !dbg !3196
  call void @llvm.dbg.value(metadata i32 %160, metadata !3192, metadata !DIExpression()), !dbg !3196
  %161 = and i32 %3, 2, !dbg !3292
  %162 = icmp eq i32 %161, 0, !dbg !3292
  br i1 %162, label %166, label %163, !dbg !3294

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !3295
  %165 = load i32, ptr %164, align 8, !dbg !3295, !tbaa !1459
  call void @llvm.dbg.value(metadata i32 %165, metadata !3193, metadata !DIExpression()), !dbg !3196
  br label %174, !dbg !3296

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 23, !dbg !3297
  %168 = load i32, ptr %167, align 4, !dbg !3297, !tbaa !1725
  %169 = and i32 %168, 2, !dbg !3299
  %170 = icmp eq i32 %169, 0, !dbg !3299
  br i1 %170, label %174, label %171, !dbg !3300

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 31, !dbg !3301
  %173 = load i32, ptr %172, align 4, !dbg !3301, !tbaa !1740
  call void @llvm.dbg.value(metadata i32 %173, metadata !3193, metadata !DIExpression()), !dbg !3196
  br label %174, !dbg !3302

174:                                              ; preds = %171, %166, %163
  %175 = phi i32 [ %165, %163 ], [ %173, %171 ], [ -1, %166 ], !dbg !3196
  call void @llvm.dbg.value(metadata i32 %175, metadata !3193, metadata !DIExpression()), !dbg !3196
  %176 = icmp sgt i32 %160, -1, !dbg !3303
  br i1 %176, label %177, label %186, !dbg !3305

177:                                              ; preds = %174
  %178 = sext i32 %3 to i64, !dbg !3306
  %179 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %178, !dbg !3306
  %180 = load i32, ptr %179, align 4, !dbg !3306, !tbaa !1554
  %181 = add nsw i32 %180, -1, !dbg !3307
  %182 = sext i32 %181 to i64, !dbg !3308
  %183 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 %182, !dbg !3308
  %184 = load i8, ptr %183, align 1, !dbg !3308, !tbaa !1461
  %185 = zext i8 %184 to i32, !dbg !3308
  call void @llvm.dbg.value(metadata i32 %185, metadata !3194, metadata !DIExpression()), !dbg !3196
  br label %186, !dbg !3309

186:                                              ; preds = %177, %174
  %187 = phi i32 [ %185, %177 ], [ 0, %174 ], !dbg !3196
  call void @llvm.dbg.value(metadata i32 %187, metadata !3194, metadata !DIExpression()), !dbg !3196
  %188 = icmp sgt i32 %175, -1, !dbg !3310
  br i1 %188, label %189, label %198, !dbg !3312

189:                                              ; preds = %186
  %190 = sext i32 %3 to i64, !dbg !3313
  %191 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %190, !dbg !3313
  %192 = load i32, ptr %191, align 4, !dbg !3313, !tbaa !1554
  %193 = add nsw i32 %192, -8, !dbg !3314
  %194 = sext i32 %193 to i64, !dbg !3315
  %195 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 %194, !dbg !3315
  %196 = load i8, ptr %195, align 1, !dbg !3315, !tbaa !1461
  %197 = zext i8 %196 to i32, !dbg !3315
  call void @llvm.dbg.value(metadata i32 %197, metadata !3195, metadata !DIExpression()), !dbg !3196
  br label %198, !dbg !3316

198:                                              ; preds = %24, %41, %46, %98, %101, %128, %133, %186, %189
  %199 = phi i32 [ -1, %24 ], [ %160, %189 ], [ %160, %186 ], [ %129, %133 ], [ %129, %128 ], [ %72, %101 ], [ %72, %98 ], [ %42, %46 ], [ %42, %41 ], !dbg !3196
  %200 = phi i32 [ -1, %24 ], [ %175, %189 ], [ %175, %186 ], [ %135, %133 ], [ -1, %128 ], [ %87, %101 ], [ %87, %98 ], [ %48, %46 ], [ -1, %41 ], !dbg !3196
  %201 = phi i32 [ 0, %24 ], [ %187, %189 ], [ %187, %186 ], [ %130, %133 ], [ %130, %128 ], [ %99, %101 ], [ %99, %98 ], [ %43, %46 ], [ %43, %41 ], !dbg !3196
  %202 = phi i32 [ 0, %24 ], [ %197, %189 ], [ 0, %186 ], [ %143, %133 ], [ 0, %128 ], [ %109, %101 ], [ 0, %98 ], [ %55, %46 ], [ 0, %41 ], !dbg !3196
  call void @llvm.dbg.value(metadata i32 %202, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %201, metadata !3194, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %200, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %199, metadata !3192, metadata !DIExpression()), !dbg !3196
  %203 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 46, !dbg !3317
  %204 = load i32, ptr %203, align 8, !dbg !3317, !tbaa !1428
  %205 = icmp ult i32 %204, 4, !dbg !3317
  %206 = lshr i32 %199, 31, !dbg !3317
  %207 = lshr i32 %200, 31, !dbg !3317
  %208 = select i1 %205, i32 %206, i32 0, !dbg !3317
  %209 = or i32 %208, %201, !dbg !3317
  %210 = select i1 %205, i32 %207, i32 0, !dbg !3317
  %211 = or i32 %210, %202, !dbg !3317
  call void @llvm.dbg.value(metadata i32 %211, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %209, metadata !3194, metadata !DIExpression()), !dbg !3196
  %212 = shl nsw i32 %2, 2, !dbg !3319
  %213 = icmp eq i32 %211, 0, !dbg !3320
  %214 = select i1 %213, i32 0, i32 2, !dbg !3321
  %215 = icmp ne i32 %209, 0, !dbg !3322
  %216 = zext i1 %215 to i32, !dbg !3323
  %217 = add i32 %212, 85, !dbg !3324
  %218 = add nuw nsw i32 %217, %216, !dbg !3325
  %219 = add i32 %218, %214, !dbg !3326
  call void @llvm.dbg.value(metadata i32 %219, metadata !3167, metadata !DIExpression()), !dbg !3327
  %220 = sext i32 %3 to i64, !dbg !3328
  %221 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %220, !dbg !3328
  %222 = load i32, ptr %221, align 4, !dbg !3328, !tbaa !1554
  %223 = sext i32 %222 to i64, !dbg !3330
  %224 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 %223, !dbg !3330
  %225 = load i8, ptr %224, align 1, !dbg !3330, !tbaa !1461
  %226 = icmp eq i8 %225, 0, !dbg !3330
  br i1 %226, label %227, label %228, !dbg !3331

227:                                              ; preds = %198
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %219, i32 noundef 0) #8, !dbg !3332
  br label %369

228:                                              ; preds = %198
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %219, i32 noundef 1) #8, !dbg !3334
  br label %229

229:                                              ; preds = %228, %6
  %230 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 11, i64 %12, !dbg !3335
  %231 = load ptr, ptr %230, align 8, !dbg !3335, !tbaa !1591
  %232 = tail call i32 %231(ptr noundef %4) #8, !dbg !3335
  call void @llvm.dbg.value(metadata i32 %232, metadata !3163, metadata !DIExpression()), !dbg !3173
  %233 = add nsw i32 %232, 1, !dbg !3336
  %234 = add nsw i32 %5, -1, !dbg !3336
  %235 = tail call i32 @llvm.smin.i32(i32 %233, i32 %234), !dbg !3336
  call void @llvm.dbg.value(metadata i32 %235, metadata !3164, metadata !DIExpression()), !dbg !3173
  %236 = icmp eq i32 %2, 5, !dbg !3337
  call void @llvm.dbg.value(metadata i32 0, metadata !3162, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 0, metadata !3162, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 0, metadata !3166, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 0, metadata !3166, metadata !DIExpression()), !dbg !3173
  %237 = icmp sgt i32 %235, 0, !dbg !3339
  br i1 %236, label %244, label %238, !dbg !3340

238:                                              ; preds = %229
  br i1 %237, label %239, label %311, !dbg !3341

239:                                              ; preds = %238
  %240 = zext i16 %14 to i64, !dbg !3341
  %241 = zext i16 %17 to i64, !dbg !3341
  %242 = zext i32 %232 to i64, !dbg !3341
  %243 = zext i32 %235 to i64, !dbg !3343
  br label %283, !dbg !3341

244:                                              ; preds = %229
  br i1 %237, label %245, label %311, !dbg !3345

245:                                              ; preds = %244
  %246 = zext i32 %232 to i64, !dbg !3345
  %247 = zext i32 %235 to i64, !dbg !3347
  br label %248, !dbg !3345

248:                                              ; preds = %245, %279
  %249 = phi i64 [ 0, %245 ], [ %281, %279 ]
  %250 = phi i32 [ 0, %245 ], [ %280, %279 ]
  call void @llvm.dbg.value(metadata i32 %250, metadata !3162, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %249, metadata !3166, metadata !DIExpression()), !dbg !3173
  %251 = getelementptr inbounds i16, ptr %4, i64 %249, !dbg !3349
  %252 = load i16, ptr %251, align 2, !dbg !3349, !tbaa !2169
  %253 = icmp eq i16 %252, 0, !dbg !3349
  br i1 %253, label %274, label %254, !dbg !3352

254:                                              ; preds = %248
  %255 = tail call i16 @llvm.abs.i16(i16 %252, i1 false), !dbg !3353
  %256 = zext i16 %255 to i32, !dbg !3353
  %257 = add nsw i32 %256, -1, !dbg !3353
  %258 = sext i32 %250 to i64, !dbg !3353
  %259 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %258, !dbg !3353
  store i32 %257, ptr %259, align 4, !dbg !3353, !tbaa !1554
  %260 = lshr i16 %252, 15, !dbg !3355
  %261 = zext i16 %260 to i32, !dbg !3355
  %262 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %258, !dbg !3355
  store i32 %261, ptr %262, align 4, !dbg !3355, !tbaa !1554
  %263 = add nsw i32 %250, 1, !dbg !3353
  call void @llvm.dbg.value(metadata i32 %263, metadata !3162, metadata !DIExpression()), !dbg !3173
  %264 = getelementptr inbounds i8, ptr %22, i64 %249, !dbg !3353
  %265 = load i8, ptr %264, align 1, !dbg !3353, !tbaa !1461
  %266 = zext i8 %265 to i32, !dbg !3353
  %267 = add nuw nsw i32 %266, %15, !dbg !3353
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %267, i32 noundef 1) #8, !dbg !3353
  %268 = getelementptr inbounds [63 x i8], ptr @last_coeff_flag_offset_8x8, i64 0, i64 %249, !dbg !3353
  %269 = load i8, ptr %268, align 1, !dbg !3353, !tbaa !1461
  %270 = zext i8 %269 to i32, !dbg !3353
  %271 = add nuw nsw i32 %270, %18, !dbg !3353
  %272 = icmp eq i64 %249, %246, !dbg !3353
  %273 = zext i1 %272 to i32, !dbg !3353
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %271, i32 noundef %273) #8, !dbg !3353
  br label %279, !dbg !3353

274:                                              ; preds = %248
  %275 = getelementptr inbounds i8, ptr %22, i64 %249, !dbg !3349
  %276 = load i8, ptr %275, align 1, !dbg !3349, !tbaa !1461
  %277 = zext i8 %276 to i32, !dbg !3349
  %278 = add nuw nsw i32 %277, %15, !dbg !3349
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %278, i32 noundef 0) #8, !dbg !3349
  br label %279

279:                                              ; preds = %254, %274
  %280 = phi i32 [ %263, %254 ], [ %250, %274 ], !dbg !3173
  call void @llvm.dbg.value(metadata i32 %280, metadata !3162, metadata !DIExpression()), !dbg !3173
  %281 = add nuw nsw i64 %249, 1, !dbg !3347
  call void @llvm.dbg.value(metadata i64 %281, metadata !3166, metadata !DIExpression()), !dbg !3173
  %282 = icmp eq i64 %281, %247, !dbg !3347
  br i1 %282, label %311, label %248, !dbg !3345, !llvm.loop !3357

283:                                              ; preds = %239, %303
  %284 = phi i64 [ 0, %239 ], [ %309, %303 ]
  %285 = phi i32 [ 0, %239 ], [ %306, %303 ]
  call void @llvm.dbg.value(metadata i32 %285, metadata !3162, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %284, metadata !3166, metadata !DIExpression()), !dbg !3173
  %286 = getelementptr inbounds i16, ptr %4, i64 %284, !dbg !3358
  %287 = load i16, ptr %286, align 2, !dbg !3358, !tbaa !2169
  %288 = icmp eq i16 %287, 0, !dbg !3358
  br i1 %288, label %303, label %289, !dbg !3361

289:                                              ; preds = %283
  %290 = tail call i16 @llvm.abs.i16(i16 %287, i1 false), !dbg !3362
  %291 = zext i16 %290 to i32, !dbg !3362
  %292 = add nsw i32 %291, -1, !dbg !3362
  %293 = sext i32 %285 to i64, !dbg !3362
  %294 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %293, !dbg !3362
  store i32 %292, ptr %294, align 4, !dbg !3362, !tbaa !1554
  %295 = lshr i16 %287, 15, !dbg !3364
  %296 = zext i16 %295 to i32, !dbg !3364
  %297 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %293, !dbg !3364
  store i32 %296, ptr %297, align 4, !dbg !3364, !tbaa !1554
  %298 = add nsw i32 %285, 1, !dbg !3362
  call void @llvm.dbg.value(metadata i32 %298, metadata !3162, metadata !DIExpression()), !dbg !3173
  %299 = add nuw nsw i64 %284, %240, !dbg !3362
  %300 = trunc i64 %299 to i32, !dbg !3362
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %300, i32 noundef 1) #8, !dbg !3362
  %301 = icmp eq i64 %284, %242, !dbg !3362
  %302 = zext i1 %301 to i32, !dbg !3362
  br label %303, !dbg !3362

303:                                              ; preds = %283, %289
  %304 = phi i64 [ %241, %289 ], [ %240, %283 ]
  %305 = phi i32 [ %302, %289 ], [ 0, %283 ]
  %306 = phi i32 [ %298, %289 ], [ %285, %283 ], !dbg !3173
  %307 = add nuw nsw i64 %284, %304, !dbg !3358
  %308 = trunc i64 %307 to i32, !dbg !3358
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %308, i32 noundef %305) #8, !dbg !3358
  call void @llvm.dbg.value(metadata i32 %306, metadata !3162, metadata !DIExpression()), !dbg !3173
  %309 = add nuw nsw i64 %284, 1, !dbg !3343
  call void @llvm.dbg.value(metadata i64 %309, metadata !3166, metadata !DIExpression()), !dbg !3173
  %310 = icmp eq i64 %309, %243, !dbg !3343
  br i1 %310, label %311, label %283, !dbg !3341, !llvm.loop !3366

311:                                              ; preds = %303, %279, %238, %244
  %312 = phi i32 [ 0, %244 ], [ 0, %238 ], [ %235, %279 ], [ %235, %303 ], !dbg !3339
  %313 = phi i32 [ 0, %244 ], [ 0, %238 ], [ %280, %279 ], [ %306, %303 ], !dbg !3367
  call void @llvm.dbg.value(metadata i32 %313, metadata !3162, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 %312, metadata !3166, metadata !DIExpression()), !dbg !3173
  %314 = icmp eq i32 %312, %232, !dbg !3368
  br i1 %314, label %315, label %328, !dbg !3370

315:                                              ; preds = %311
  %316 = zext i32 %232 to i64, !dbg !3371
  %317 = getelementptr inbounds i16, ptr %4, i64 %316, !dbg !3371
  %318 = load i16, ptr %317, align 2, !dbg !3371, !tbaa !2169
  %319 = tail call i16 @llvm.abs.i16(i16 %318, i1 false), !dbg !3373
  %320 = zext i16 %319 to i32, !dbg !3373
  %321 = add nsw i32 %320, -1, !dbg !3374
  %322 = sext i32 %313 to i64, !dbg !3375
  %323 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %322, !dbg !3375
  store i32 %321, ptr %323, align 4, !dbg !3376, !tbaa !1554
  %324 = lshr i16 %318, 15, !dbg !3377
  %325 = zext i16 %324 to i32, !dbg !3377
  %326 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %322, !dbg !3378
  store i32 %325, ptr %326, align 4, !dbg !3379, !tbaa !1554
  %327 = add nsw i32 %313, 1, !dbg !3380
  call void @llvm.dbg.value(metadata i32 %327, metadata !3162, metadata !DIExpression()), !dbg !3173
  br label %328, !dbg !3381

328:                                              ; preds = %315, %311
  %329 = phi i32 [ %327, %315 ], [ %313, %311 ], !dbg !3173
  call void @llvm.dbg.value(metadata i32 %329, metadata !3162, metadata !DIExpression()), !dbg !3173
  %330 = sext i32 %329 to i64, !dbg !3382
  br label %331, !dbg !3382

331:                                              ; preds = %361, %328
  %332 = phi i64 [ %334, %361 ], [ %330, %328 ], !dbg !3173
  %333 = phi i64 [ %365, %361 ], [ 0, %328 ], !dbg !3173
  call void @llvm.dbg.value(metadata i64 %332, metadata !3162, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 poison, metadata !3165, metadata !DIExpression()), !dbg !3173
  %334 = add nsw i64 %332, -1, !dbg !3383
  call void @llvm.dbg.value(metadata i64 %334, metadata !3162, metadata !DIExpression()), !dbg !3173
  %335 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %334, !dbg !3384
  %336 = load i32, ptr %335, align 4, !dbg !3384, !tbaa !1554
  %337 = icmp slt i32 %336, 14, !dbg !3384
  %338 = tail call i32 @llvm.smin.i32(i32 %336, i32 14), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %338, metadata !3170, metadata !DIExpression()), !dbg !3385
  %339 = getelementptr inbounds [8 x i32], ptr @coeff_abs_level1_ctx, i64 0, i64 %333, !dbg !3386
  %340 = load i32, ptr %339, align 4, !dbg !3386, !tbaa !1554
  %341 = add nsw i32 %340, %21, !dbg !3387
  call void @llvm.dbg.value(metadata i32 %341, metadata !3172, metadata !DIExpression()), !dbg !3385
  %342 = icmp eq i32 %338, 0, !dbg !3388
  br i1 %342, label %360, label %343, !dbg !3390

343:                                              ; preds = %331
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %341, i32 noundef 1) #8, !dbg !3391
  %344 = getelementptr inbounds [8 x i32], ptr @coeff_abs_levelgt1_ctx, i64 0, i64 %333, !dbg !3393
  %345 = load i32, ptr %344, align 4, !dbg !3393, !tbaa !1554
  %346 = add nsw i32 %345, %21, !dbg !3394
  call void @llvm.dbg.value(metadata i32 %346, metadata !3172, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i32 0, metadata !3166, metadata !DIExpression()), !dbg !3173
  %347 = icmp sgt i32 %338, 1, !dbg !3395
  br i1 %347, label %348, label %354, !dbg !3398

348:                                              ; preds = %343
  %349 = add i32 %338, -2
  br label %350, !dbg !3398

350:                                              ; preds = %348, %350
  %351 = phi i32 [ %352, %350 ], [ 0, %348 ]
  call void @llvm.dbg.value(metadata i32 %351, metadata !3166, metadata !DIExpression()), !dbg !3173
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %346, i32 noundef 1) #8, !dbg !3399
  %352 = add nuw nsw i32 %351, 1, !dbg !3400
  call void @llvm.dbg.value(metadata i32 %352, metadata !3166, metadata !DIExpression()), !dbg !3173
  %353 = icmp eq i32 %351, %349, !dbg !3395
  br i1 %353, label %354, label %350, !dbg !3398, !llvm.loop !3401

354:                                              ; preds = %350, %343
  br i1 %337, label %355, label %356, !dbg !3403

355:                                              ; preds = %354
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %346, i32 noundef 0) #8, !dbg !3404
  br label %356, !dbg !3404

356:                                              ; preds = %355, %354
  %357 = icmp sgt i32 %338, 13, !dbg !3406
  br i1 %357, label %358, label %361, !dbg !3408

358:                                              ; preds = %356
  %359 = add nsw i32 %336, -14, !dbg !3409
  tail call void @x264_cabac_encode_ue_bypass(ptr noundef %1, i32 noundef 0, i32 noundef %359) #8, !dbg !3410
  br label %361, !dbg !3410

360:                                              ; preds = %331
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %341, i32 noundef 0) #8, !dbg !3411
  call void @llvm.dbg.value(metadata i8 poison, metadata !3165, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3173
  br label %361

361:                                              ; preds = %356, %358, %360
  %362 = phi ptr [ @coeff_abs_level_transition, %360 ], [ getelementptr inbounds ([2 x [8 x i8]], ptr @coeff_abs_level_transition, i64 0, i64 1), %358 ], [ getelementptr inbounds ([2 x [8 x i8]], ptr @coeff_abs_level_transition, i64 0, i64 1), %356 ]
  %363 = getelementptr inbounds [8 x i8], ptr %362, i64 0, i64 %333, !dbg !3413
  %364 = load i8, ptr %363, align 1, !dbg !3413, !tbaa !1461
  %365 = zext i8 %364 to i64, !dbg !3413
  call void @llvm.dbg.value(metadata i32 poison, metadata !3165, metadata !DIExpression()), !dbg !3173
  %366 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %334, !dbg !3414
  %367 = load i32, ptr %366, align 4, !dbg !3414, !tbaa !1554
  tail call void @x264_cabac_encode_bypass(ptr noundef %1, i32 noundef %367) #8, !dbg !3415
  %368 = icmp sgt i64 %332, 1, !dbg !3416
  br i1 %368, label %331, label %369, !dbg !3417, !llvm.loop !3418

369:                                              ; preds = %361, %227
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #8, !dbg !3420
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #8, !dbg !3420
  ret void, !dbg !3420
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_cabac_mb_type_intra(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #5 !dbg !3421 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3425, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata ptr %1, metadata !3426, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i32 %2, metadata !3427, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i32 %3, metadata !3428, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i32 %4, metadata !3429, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i32 %5, metadata !3430, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i32 %6, metadata !3431, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i32 %7, metadata !3432, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i32 %8, metadata !3433, metadata !DIExpression()), !dbg !3438
  %10 = icmp ult i32 %2, 2, !dbg !3439
  br i1 %10, label %11, label %12, !dbg !3439

11:                                               ; preds = %9
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %3, i32 noundef 0) #8, !dbg !3440
  br label %37, !dbg !3442

12:                                               ; preds = %9
  %13 = icmp eq i32 %2, 3, !dbg !3443
  br i1 %13, label %14, label %15, !dbg !3444

14:                                               ; preds = %12
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %3, i32 noundef 1) #8, !dbg !3445
  tail call void @x264_cabac_encode_flush(ptr noundef %0, ptr noundef %1) #8, !dbg !3447
  br label %37, !dbg !3448

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 52, !dbg !3449
  %17 = load i32, ptr %16, align 4, !dbg !3449, !tbaa !3450
  %18 = sext i32 %17 to i64, !dbg !3451
  %19 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode16x16_fix, i64 0, i64 %18, !dbg !3451
  %20 = load i8, ptr %19, align 1, !dbg !3451, !tbaa !1461
  %21 = zext i8 %20 to i32, !dbg !3451
  call void @llvm.dbg.value(metadata i32 %21, metadata !3434, metadata !DIExpression()), !dbg !3452
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %3, i32 noundef 1) #8, !dbg !3453
  tail call void @x264_cabac_encode_terminal(ptr noundef %1) #8, !dbg !3454
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 50, !dbg !3455
  %23 = load i32, ptr %22, align 4, !dbg !3455, !tbaa !2388
  %24 = icmp ne i32 %23, 0, !dbg !3456
  %25 = zext i1 %24 to i32, !dbg !3457
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %4, i32 noundef %25) #8, !dbg !3458
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 51, !dbg !3459
  %27 = load i32, ptr %26, align 8, !dbg !3459, !tbaa !2471
  %28 = icmp eq i32 %27, 0, !dbg !3461
  br i1 %28, label %29, label %30, !dbg !3462

29:                                               ; preds = %15
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %5, i32 noundef 0) #8, !dbg !3463
  br label %34, !dbg !3465

30:                                               ; preds = %15
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %5, i32 noundef 1) #8, !dbg !3466
  %31 = load i32, ptr %26, align 8, !dbg !3468, !tbaa !2471
  %32 = icmp ne i32 %31, 1, !dbg !3469
  %33 = zext i1 %32 to i32, !dbg !3469
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %6, i32 noundef %33) #8, !dbg !3470
  br label %34

34:                                               ; preds = %30, %29
  %35 = lshr i32 %21, 1
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %7, i32 noundef %35) #8, !dbg !3471
  %36 = and i32 %21, 1, !dbg !3472
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %8, i32 noundef %36) #8, !dbg !3473
  br label %37

37:                                               ; preds = %14, %34, %11
  ret void, !dbg !3474
}

declare !dbg !3475 void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !3478 void @x264_cabac_encode_flush(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3479 void @x264_cabac_encode_terminal(ptr noundef) local_unnamed_addr #3

declare !dbg !3482 void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_cabac_mb_mvd_cpn(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 !dbg !1251 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1255, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata ptr %1, metadata !1256, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 %2, metadata !1257, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 %3, metadata !1258, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 %4, metadata !1259, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 %5, metadata !1260, metadata !DIExpression()), !dbg !3485
  %7 = zext i32 %2 to i64
  %8 = sext i32 %3 to i64, !dbg !3486
  %9 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %8, !dbg !3486
  %10 = load i32, ptr %9, align 4, !dbg !3486, !tbaa !1554
  %11 = add nsw i32 %10, -1, !dbg !3487
  %12 = sext i32 %11 to i64, !dbg !3488
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %7, i64 %12, i64 %13, !dbg !3488
  %15 = load i16, ptr %14, align 2, !dbg !3488, !tbaa !2169
  %16 = tail call i16 @llvm.abs.i16(i16 %15, i1 false), !dbg !3489
  %17 = zext i16 %16 to i32, !dbg !3489
  %18 = add nsw i32 %10, -8, !dbg !3490
  %19 = sext i32 %18 to i64, !dbg !3491
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 4, i64 %7, i64 %19, i64 %13, !dbg !3491
  %21 = load i16, ptr %20, align 2, !dbg !3491, !tbaa !2169
  %22 = tail call i16 @llvm.abs.i16(i16 %21, i1 false), !dbg !3492
  %23 = zext i16 %22 to i32, !dbg !3492
  %24 = add nuw nsw i32 %23, %17, !dbg !3493
  call void @llvm.dbg.value(metadata i32 %24, metadata !1261, metadata !DIExpression()), !dbg !3485
  %25 = tail call i32 @llvm.abs.i32(i32 %5, i1 true), !dbg !3494
  call void @llvm.dbg.value(metadata i32 %25, metadata !1262, metadata !DIExpression()), !dbg !3485
  %26 = icmp eq i32 %4, 0, !dbg !3495
  %27 = select i1 %26, i32 40, i32 47, !dbg !3495
  call void @llvm.dbg.value(metadata i32 %27, metadata !1263, metadata !DIExpression()), !dbg !3485
  %28 = icmp ugt i32 %24, 2, !dbg !3496
  %29 = zext i1 %28 to i32, !dbg !3496
  %30 = icmp ugt i32 %24, 32, !dbg !3497
  %31 = zext i1 %30 to i32, !dbg !3497
  %32 = add nuw nsw i32 %29, %31, !dbg !3498
  call void @llvm.dbg.value(metadata i32 %32, metadata !1264, metadata !DIExpression()), !dbg !3485
  %33 = icmp eq i32 %5, 0, !dbg !3499
  br i1 %33, label %34, label %36, !dbg !3501

34:                                               ; preds = %6
  %35 = add nuw nsw i32 %32, %27, !dbg !3502
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %35, i32 noundef 0) #8, !dbg !3503
  br label %63, !dbg !3503

36:                                               ; preds = %6
  %37 = icmp ult i32 %25, 9, !dbg !3504
  %38 = add nuw nsw i32 %32, %27, !dbg !3506
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %38, i32 noundef 1) #8, !dbg !3506
  br i1 %37, label %39, label %56, !dbg !3507

39:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i32 1, metadata !1265, metadata !DIExpression()), !dbg !3485
  %40 = icmp ugt i32 %25, 1, !dbg !3508
  %41 = zext i32 %25 to i64, !dbg !3513
  br i1 %40, label %42, label %50, !dbg !3514

42:                                               ; preds = %39, %42
  %43 = phi i64 [ %48, %42 ], [ 1, %39 ]
  call void @llvm.dbg.value(metadata i64 %43, metadata !1265, metadata !DIExpression()), !dbg !3485
  %44 = getelementptr inbounds [9 x i8], ptr @x264_cabac_mb_mvd_cpn.ctxes, i64 0, i64 %43, !dbg !3515
  %45 = load i8, ptr %44, align 1, !dbg !3515, !tbaa !1461
  %46 = zext i8 %45 to i32, !dbg !3515
  %47 = add nuw nsw i32 %27, %46, !dbg !3516
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %47, i32 noundef 1) #8, !dbg !3517
  %48 = add nuw nsw i64 %43, 1, !dbg !3518
  call void @llvm.dbg.value(metadata i64 %48, metadata !1265, metadata !DIExpression()), !dbg !3485
  %49 = icmp eq i64 %48, %41, !dbg !3508
  br i1 %49, label %50, label %42, !dbg !3514, !llvm.loop !3519

50:                                               ; preds = %42, %39
  %51 = getelementptr inbounds [9 x i8], ptr @x264_cabac_mb_mvd_cpn.ctxes, i64 0, i64 %41, !dbg !3521
  %52 = load i8, ptr %51, align 1, !dbg !3521, !tbaa !1461
  %53 = zext i8 %52 to i32, !dbg !3521
  %54 = add nuw nsw i32 %27, %53, !dbg !3522
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %54, i32 noundef 0) #8, !dbg !3523
  %55 = lshr i32 %5, 31, !dbg !3524
  tail call void @x264_cabac_encode_bypass(ptr noundef %1, i32 noundef %55) #8, !dbg !3525
  br label %63, !dbg !3526

56:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i64 1, metadata !1265, metadata !DIExpression()), !dbg !3485
  %57 = add nuw nsw i32 %27, 3, !dbg !3527
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %57, i32 noundef 1) #8, !dbg !3531
  call void @llvm.dbg.value(metadata i64 2, metadata !1265, metadata !DIExpression()), !dbg !3485
  %58 = add nuw nsw i32 %27, 4, !dbg !3527
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %58, i32 noundef 1) #8, !dbg !3531
  call void @llvm.dbg.value(metadata i64 3, metadata !1265, metadata !DIExpression()), !dbg !3485
  %59 = add nuw nsw i32 %27, 5, !dbg !3527
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %59, i32 noundef 1) #8, !dbg !3531
  call void @llvm.dbg.value(metadata i64 4, metadata !1265, metadata !DIExpression()), !dbg !3485
  %60 = add nuw nsw i32 %27, 6, !dbg !3527
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %60, i32 noundef 1) #8, !dbg !3531
  call void @llvm.dbg.value(metadata i64 5, metadata !1265, metadata !DIExpression()), !dbg !3485
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %60, i32 noundef 1) #8, !dbg !3531
  call void @llvm.dbg.value(metadata i64 6, metadata !1265, metadata !DIExpression()), !dbg !3485
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %60, i32 noundef 1) #8, !dbg !3531
  call void @llvm.dbg.value(metadata i64 7, metadata !1265, metadata !DIExpression()), !dbg !3485
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %60, i32 noundef 1) #8, !dbg !3531
  call void @llvm.dbg.value(metadata i64 8, metadata !1265, metadata !DIExpression()), !dbg !3485
  tail call void @x264_cabac_encode_decision_asm(ptr noundef %1, i32 noundef %60, i32 noundef 1) #8, !dbg !3531
  call void @llvm.dbg.value(metadata i64 9, metadata !1265, metadata !DIExpression()), !dbg !3485
  %61 = add nsw i32 %25, -9, !dbg !3532
  tail call void @x264_cabac_encode_ue_bypass(ptr noundef %1, i32 noundef 3, i32 noundef %61) #8, !dbg !3533
  %62 = lshr i32 %5, 31, !dbg !3534
  tail call void @x264_cabac_encode_bypass(ptr noundef %1, i32 noundef %62) #8, !dbg !3535
  br label %63

63:                                               ; preds = %50, %56, %34
  ret void, !dbg !3536
}

declare !dbg !3537 void @x264_cabac_encode_bypass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !3538 void @x264_cabac_encode_ue_bypass(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #7

attributes #0 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1334, !1335, !1336, !1337, !1338, !1339}
!llvm.ident = !{!1340}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode4x4_fix", scope: !2, file: !79, line: 80, type: !1330, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !101, globals: !111, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "encoder/cabac.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "c9c24ec8592c82ee854c1579a041070e")
!4 = !{!5, !29, !37, !50, !70, !78, !93}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_class_e", file: !6, line: 61, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./common/macroblock.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "0b0c175005b691009f3df3e457cfe9c0")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!9 = !DIEnumerator(name: "I_4x4", value: 0)
!10 = !DIEnumerator(name: "I_8x8", value: 1)
!11 = !DIEnumerator(name: "I_16x16", value: 2)
!12 = !DIEnumerator(name: "I_PCM", value: 3)
!13 = !DIEnumerator(name: "P_L0", value: 4)
!14 = !DIEnumerator(name: "P_8x8", value: 5)
!15 = !DIEnumerator(name: "P_SKIP", value: 6)
!16 = !DIEnumerator(name: "B_DIRECT", value: 7)
!17 = !DIEnumerator(name: "B_L0_L0", value: 8)
!18 = !DIEnumerator(name: "B_L0_L1", value: 9)
!19 = !DIEnumerator(name: "B_L0_BI", value: 10)
!20 = !DIEnumerator(name: "B_L1_L0", value: 11)
!21 = !DIEnumerator(name: "B_L1_L1", value: 12)
!22 = !DIEnumerator(name: "B_L1_BI", value: 13)
!23 = !DIEnumerator(name: "B_BI_L0", value: 14)
!24 = !DIEnumerator(name: "B_BI_L1", value: 15)
!25 = !DIEnumerator(name: "B_BI_BI", value: 16)
!26 = !DIEnumerator(name: "B_8x8", value: 17)
!27 = !DIEnumerator(name: "B_SKIP", value: 18)
!28 = !DIEnumerator(name: "X264_MBTYPE_MAX", value: 19)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "slice_type_e", file: !30, line: 148, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./common/common.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "4880b62cc871dca4002788746fbccb70")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "SLICE_TYPE_P", value: 0)
!33 = !DIEnumerator(name: "SLICE_TYPE_B", value: 1)
!34 = !DIEnumerator(name: "SLICE_TYPE_I", value: 2)
!35 = !DIEnumerator(name: "SLICE_TYPE_SP", value: 3)
!36 = !DIEnumerator(name: "SLICE_TYPE_SI", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !38, line: 30, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./common/pixel.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "aba138e44f0e52bc0158be0d182b79c1")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!40 = !DIEnumerator(name: "PIXEL_16x16", value: 0)
!41 = !DIEnumerator(name: "PIXEL_16x8", value: 1)
!42 = !DIEnumerator(name: "PIXEL_8x16", value: 2)
!43 = !DIEnumerator(name: "PIXEL_8x8", value: 3)
!44 = !DIEnumerator(name: "PIXEL_8x4", value: 4)
!45 = !DIEnumerator(name: "PIXEL_4x8", value: 5)
!46 = !DIEnumerator(name: "PIXEL_4x4", value: 6)
!47 = !DIEnumerator(name: "PIXEL_4x2", value: 7)
!48 = !DIEnumerator(name: "PIXEL_2x4", value: 8)
!49 = !DIEnumerator(name: "PIXEL_2x2", value: 9)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_partition_e", file: !6, line: 125, baseType: !7, size: 32, elements: !51)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!52 = !DIEnumerator(name: "D_L0_4x4", value: 0)
!53 = !DIEnumerator(name: "D_L0_8x4", value: 1)
!54 = !DIEnumerator(name: "D_L0_4x8", value: 2)
!55 = !DIEnumerator(name: "D_L0_8x8", value: 3)
!56 = !DIEnumerator(name: "D_L1_4x4", value: 4)
!57 = !DIEnumerator(name: "D_L1_8x4", value: 5)
!58 = !DIEnumerator(name: "D_L1_4x8", value: 6)
!59 = !DIEnumerator(name: "D_L1_8x8", value: 7)
!60 = !DIEnumerator(name: "D_BI_4x4", value: 8)
!61 = !DIEnumerator(name: "D_BI_8x4", value: 9)
!62 = !DIEnumerator(name: "D_BI_4x8", value: 10)
!63 = !DIEnumerator(name: "D_BI_8x8", value: 11)
!64 = !DIEnumerator(name: "D_DIRECT_8x8", value: 12)
!65 = !DIEnumerator(name: "D_8x8", value: 13)
!66 = !DIEnumerator(name: "D_16x8", value: 14)
!67 = !DIEnumerator(name: "D_8x16", value: 15)
!68 = !DIEnumerator(name: "D_16x16", value: 16)
!69 = !DIEnumerator(name: "X264_PARTTYPE_MAX", value: 17)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cabac_ctx_block_cat_e", file: !6, line: 266, baseType: !7, size: 32, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77}
!72 = !DIEnumerator(name: "DCT_LUMA_DC", value: 0)
!73 = !DIEnumerator(name: "DCT_LUMA_AC", value: 1)
!74 = !DIEnumerator(name: "DCT_LUMA_4x4", value: 2)
!75 = !DIEnumerator(name: "DCT_CHROMA_DC", value: 3)
!76 = !DIEnumerator(name: "DCT_CHROMA_AC", value: 4)
!77 = !DIEnumerator(name: "DCT_LUMA_8x8", value: 5)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra4x4_pred_e", file: !79, line: 64, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./common/predict.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "c7827bfe44f4a550b7080533457a8327")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!81 = !DIEnumerator(name: "I_PRED_4x4_V", value: 0)
!82 = !DIEnumerator(name: "I_PRED_4x4_H", value: 1)
!83 = !DIEnumerator(name: "I_PRED_4x4_DC", value: 2)
!84 = !DIEnumerator(name: "I_PRED_4x4_DDL", value: 3)
!85 = !DIEnumerator(name: "I_PRED_4x4_DDR", value: 4)
!86 = !DIEnumerator(name: "I_PRED_4x4_VR", value: 5)
!87 = !DIEnumerator(name: "I_PRED_4x4_HD", value: 6)
!88 = !DIEnumerator(name: "I_PRED_4x4_VL", value: 7)
!89 = !DIEnumerator(name: "I_PRED_4x4_HU", value: 8)
!90 = !DIEnumerator(name: "I_PRED_4x4_DC_LEFT", value: 9)
!91 = !DIEnumerator(name: "I_PRED_4x4_DC_TOP", value: 10)
!92 = !DIEnumerator(name: "I_PRED_4x4_DC_128", value: 11)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "macroblock_position_e", file: !6, line: 28, baseType: !7, size: 32, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100}
!95 = !DIEnumerator(name: "MB_LEFT", value: 1)
!96 = !DIEnumerator(name: "MB_TOP", value: 2)
!97 = !DIEnumerator(name: "MB_TOPRIGHT", value: 4)
!98 = !DIEnumerator(name: "MB_TOPLEFT", value: 8)
!99 = !DIEnumerator(name: "MB_PRIVATE", value: 16)
!100 = !DIEnumerator(name: "ALL_NEIGHBORS", value: 15)
!101 = !{!102, !107, !110}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !104, line: 26, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !106, line: 42, baseType: !7)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !104, line: 27, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !106, line: 45, baseType: !109)
!109 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!111 = !{!112, !1233, !1237, !1242, !0, !1245, !1247, !1249, !1269, !1272, !1274, !1285, !1288, !1292, !1294, !1304, !1309, !1311, !1314, !1318, !1321, !1324, !1326}
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "i_mb_len", scope: !114, file: !3, line: 169, type: !1230, isLocal: true, isDefinition: true)
!114 = distinct !DISubprogram(name: "x264_cabac_mb_type", scope: !3, file: !3, line: 66, type: !115, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1212)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !117, !1211}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !119, line: 42, baseType: !120)
!119 = !DIFile(filename: "./x264.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "9fe19a6136ab7ddd44a70d62bce62365")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !30, line: 250, size: 206080, elements: !121)
!121 = !{!122, !274, !278, !281, !282, !283, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !397, !399, !427, !429, !430, !437, !442, !446, !450, !457, !461, !462, !463, !464, !467, !469, !471, !511, !528, !692, !693, !694, !695, !699, !700, !701, !702, !717, !870, !874, !929, !937, !938, !946, !948, !1016, !1076, !1128, !1149, !1191}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !120, file: !30, line: 253, baseType: !123, size: 4928)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !119, line: 295, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !119, line: 151, size: 4928, elements: !125)
!125 = !{!126, !127, !129, !130, !131, !132, !133, !134, !135, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !168, !175, !176, !177, !178, !182, !183, !198, !199, !200, !201, !202, !232, !271, !272, !273}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !124, file: !119, line: 154, baseType: !7, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !124, file: !119, line: 155, baseType: !128, size: 32, offset: 32)
!128 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !124, file: !119, line: 156, baseType: !128, size: 32, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !124, file: !119, line: 159, baseType: !128, size: 32, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !124, file: !119, line: 160, baseType: !128, size: 32, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !124, file: !119, line: 161, baseType: !128, size: 32, offset: 160)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !124, file: !119, line: 162, baseType: !128, size: 32, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !124, file: !119, line: 163, baseType: !128, size: 32, offset: 224)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !124, file: !119, line: 180, baseType: !136, size: 288, offset: 256)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !124, file: !119, line: 165, size: 288, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !136, file: !119, line: 168, baseType: !128, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !136, file: !119, line: 169, baseType: !128, size: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !136, file: !119, line: 171, baseType: !128, size: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !136, file: !119, line: 174, baseType: !128, size: 32, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !136, file: !119, line: 175, baseType: !128, size: 32, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !136, file: !119, line: 176, baseType: !128, size: 32, offset: 160)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !136, file: !119, line: 177, baseType: !128, size: 32, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !136, file: !119, line: 178, baseType: !128, size: 32, offset: 224)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !136, file: !119, line: 179, baseType: !128, size: 32, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !124, file: !119, line: 182, baseType: !128, size: 32, offset: 544)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !124, file: !119, line: 183, baseType: !128, size: 32, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !124, file: !119, line: 186, baseType: !128, size: 32, offset: 608)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !124, file: !119, line: 187, baseType: !128, size: 32, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !124, file: !119, line: 188, baseType: !128, size: 32, offset: 672)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !124, file: !119, line: 189, baseType: !128, size: 32, offset: 704)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "b_pre_scenecut", scope: !124, file: !119, line: 190, baseType: !128, size: 32, offset: 736)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !124, file: !119, line: 191, baseType: !128, size: 32, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !124, file: !119, line: 192, baseType: !128, size: 32, offset: 800)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !124, file: !119, line: 193, baseType: !128, size: 32, offset: 832)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "b_bframe_pyramid", scope: !124, file: !119, line: 194, baseType: !128, size: 32, offset: 864)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !124, file: !119, line: 196, baseType: !128, size: 32, offset: 896)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !124, file: !119, line: 197, baseType: !128, size: 32, offset: 928)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !124, file: !119, line: 198, baseType: !128, size: 32, offset: 960)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !124, file: !119, line: 200, baseType: !128, size: 32, offset: 992)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !124, file: !119, line: 201, baseType: !128, size: 32, offset: 1024)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !124, file: !119, line: 203, baseType: !128, size: 32, offset: 1056)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !124, file: !119, line: 205, baseType: !128, size: 32, offset: 1088)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !124, file: !119, line: 206, baseType: !166, size: 64, offset: 1152)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !124, file: !119, line: 207, baseType: !169, size: 128, offset: 1216)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 128, elements: !173)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !104, line: 24, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !106, line: 38, baseType: !172)
!172 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!173 = !{!174}
!174 = !DISubrange(count: 16)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !124, file: !119, line: 208, baseType: !169, size: 128, offset: 1344)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !124, file: !119, line: 209, baseType: !169, size: 128, offset: 1472)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !124, file: !119, line: 210, baseType: !169, size: 128, offset: 1600)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !124, file: !119, line: 211, baseType: !179, size: 512, offset: 1728)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 512, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !124, file: !119, line: 212, baseType: !179, size: 512, offset: 2240)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !124, file: !119, line: 215, baseType: !184, size: 64, offset: 2752)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !187, !128, !188, !190}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !192)
!192 = !{!193, !195, !196, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !191, file: !194, baseType: !7, size: 32)
!194 = !DIFile(filename: "encoder/cabac.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src")
!195 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !191, file: !194, baseType: !7, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !191, file: !194, baseType: !187, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !191, file: !194, baseType: !187, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !124, file: !119, line: 216, baseType: !187, size: 64, offset: 2816)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !124, file: !119, line: 217, baseType: !128, size: 32, offset: 2880)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !124, file: !119, line: 218, baseType: !128, size: 32, offset: 2912)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !124, file: !119, line: 219, baseType: !166, size: 64, offset: 2944)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !124, file: !119, line: 252, baseType: !203, size: 768, offset: 3008)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !124, file: !119, line: 222, size: 768, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !225, !226, !230, !231}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !203, file: !119, line: 224, baseType: !7, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !203, file: !119, line: 225, baseType: !7, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !203, file: !119, line: 227, baseType: !128, size: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !203, file: !119, line: 228, baseType: !128, size: 32, offset: 96)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !203, file: !119, line: 229, baseType: !128, size: 32, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_8x8_inference", scope: !203, file: !119, line: 230, baseType: !128, size: 32, offset: 160)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !203, file: !119, line: 231, baseType: !128, size: 32, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !203, file: !119, line: 233, baseType: !128, size: 32, offset: 224)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !203, file: !119, line: 234, baseType: !128, size: 32, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !203, file: !119, line: 235, baseType: !128, size: 32, offset: 288)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !203, file: !119, line: 236, baseType: !128, size: 32, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !203, file: !119, line: 237, baseType: !128, size: 32, offset: 352)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !203, file: !119, line: 238, baseType: !128, size: 32, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !203, file: !119, line: 239, baseType: !128, size: 32, offset: 416)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !203, file: !119, line: 240, baseType: !128, size: 32, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !203, file: !119, line: 241, baseType: !128, size: 32, offset: 480)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !203, file: !119, line: 242, baseType: !128, size: 32, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !203, file: !119, line: 243, baseType: !128, size: 32, offset: 544)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !203, file: !119, line: 244, baseType: !224, size: 32, offset: 576)
!224 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !203, file: !119, line: 245, baseType: !224, size: 32, offset: 608)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !203, file: !119, line: 248, baseType: !227, size: 64, offset: 640)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 2)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !203, file: !119, line: 250, baseType: !128, size: 32, offset: 704)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !203, file: !119, line: 251, baseType: !128, size: 32, offset: 736)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !124, file: !119, line: 289, baseType: !233, size: 1024, offset: 3776)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !124, file: !119, line: 255, size: 1024, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !269, !270}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !233, file: !119, line: 257, baseType: !128, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !233, file: !119, line: 259, baseType: !128, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !233, file: !119, line: 260, baseType: !128, size: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !233, file: !119, line: 261, baseType: !128, size: 32, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !233, file: !119, line: 262, baseType: !128, size: 32, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !233, file: !119, line: 264, baseType: !128, size: 32, offset: 160)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !233, file: !119, line: 265, baseType: !224, size: 32, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !233, file: !119, line: 266, baseType: !224, size: 32, offset: 224)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !233, file: !119, line: 267, baseType: !128, size: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !233, file: !119, line: 268, baseType: !128, size: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !233, file: !119, line: 269, baseType: !224, size: 32, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !233, file: !119, line: 270, baseType: !224, size: 32, offset: 352)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !233, file: !119, line: 271, baseType: !224, size: 32, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !233, file: !119, line: 273, baseType: !128, size: 32, offset: 416)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !233, file: !119, line: 274, baseType: !224, size: 32, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !233, file: !119, line: 277, baseType: !128, size: 32, offset: 480)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !233, file: !119, line: 278, baseType: !166, size: 64, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !233, file: !119, line: 279, baseType: !128, size: 32, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !233, file: !119, line: 280, baseType: !166, size: 64, offset: 640)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !233, file: !119, line: 283, baseType: !224, size: 32, offset: 704)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !233, file: !119, line: 284, baseType: !224, size: 32, offset: 736)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !233, file: !119, line: 285, baseType: !224, size: 32, offset: 768)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !233, file: !119, line: 286, baseType: !258, size: 64, offset: 832)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !119, line: 149, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 142, size: 256, elements: !261)
!261 = !{!262, !263, !264, !265, !266, !267}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !260, file: !119, line: 144, baseType: !128, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !260, file: !119, line: 144, baseType: !128, size: 32, offset: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !260, file: !119, line: 145, baseType: !128, size: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !260, file: !119, line: 146, baseType: !128, size: 32, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !260, file: !119, line: 147, baseType: !224, size: 32, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !260, file: !119, line: 148, baseType: !268, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !233, file: !119, line: 287, baseType: !128, size: 32, offset: 896)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !233, file: !119, line: 288, baseType: !166, size: 64, offset: 960)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !124, file: !119, line: 292, baseType: !128, size: 32, offset: 4800)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !124, file: !119, line: 293, baseType: !128, size: 32, offset: 4832)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !124, file: !119, line: 294, baseType: !128, size: 32, offset: 4864)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !120, file: !30, line: 255, baseType: !275, size: 8192, offset: 4928)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 8192, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !120, file: !30, line: 256, baseType: !279, size: 64, offset: 13120)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !280, line: 27, baseType: !109)
!280 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!281 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !120, file: !30, line: 257, baseType: !128, size: 32, offset: 13184)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !120, file: !30, line: 258, baseType: !128, size: 32, offset: 13216)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !120, file: !30, line: 269, baseType: !284, size: 2112, offset: 13248)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !120, file: !30, line: 261, size: 2112, elements: !285)
!285 = !{!286, !287, !299, !300, !301, !315}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !284, file: !30, line: 263, baseType: !128, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !284, file: !30, line: 264, baseType: !288, size: 1536, offset: 64)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 1536, elements: !297)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !119, line: 399, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 391, size: 192, elements: !291)
!291 = !{!292, !293, !294, !295}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !290, file: !119, line: 393, baseType: !128, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !290, file: !119, line: 394, baseType: !128, size: 32, offset: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !290, file: !119, line: 397, baseType: !128, size: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !290, file: !119, line: 398, baseType: !296, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!297 = !{!298}
!298 = !DISubrange(count: 8)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !284, file: !30, line: 265, baseType: !128, size: 32, offset: 1600)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !284, file: !30, line: 266, baseType: !296, size: 64, offset: 1664)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !284, file: !30, line: 267, baseType: !302, size: 320, offset: 1728)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !303, line: 49, baseType: !304)
!303 = !DIFile(filename: "./common/bs.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "2f46b0964798cffcc7898517b4d9922e")
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !303, line: 40, size: 320, elements: !305)
!305 = !{!306, !307, !308, !309, !313, !314}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !304, file: !303, line: 42, baseType: !296, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !304, file: !303, line: 43, baseType: !296, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !304, file: !303, line: 44, baseType: !296, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !304, file: !303, line: 46, baseType: !310, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !311, line: 87, baseType: !312)
!311 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!312 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !304, file: !303, line: 47, baseType: !128, size: 32, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !304, file: !303, line: 48, baseType: !128, size: 32, offset: 288)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !284, file: !30, line: 268, baseType: !128, size: 32, offset: 2048)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !120, file: !30, line: 274, baseType: !128, size: 32, offset: 15360)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_offset", scope: !120, file: !30, line: 276, baseType: !128, size: 32, offset: 15392)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !120, file: !30, line: 277, baseType: !128, size: 32, offset: 15424)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_msb", scope: !120, file: !30, line: 278, baseType: !128, size: 32, offset: 15456)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !120, file: !30, line: 279, baseType: !128, size: 32, offset: 15488)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !120, file: !30, line: 280, baseType: !128, size: 32, offset: 15520)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_num", scope: !120, file: !30, line: 282, baseType: !128, size: 32, offset: 15552)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !120, file: !30, line: 283, baseType: !128, size: 32, offset: 15584)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !120, file: !30, line: 284, baseType: !128, size: 32, offset: 15616)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !120, file: !30, line: 287, baseType: !326, size: 9920, offset: 15648)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 9920, elements: !395)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !328, line: 133, baseType: !329)
!328 = !DIFile(filename: "./common/set.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "06164d1fd824dd844d17e97dd39e9ac3")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 52, size: 9920, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !348, !349, !350, !351, !352, !353, !354, !355, !356, !363, !364, !394}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !329, file: !328, line: 54, baseType: !128, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !329, file: !328, line: 56, baseType: !128, size: 32, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !329, file: !328, line: 57, baseType: !128, size: 32, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !329, file: !328, line: 59, baseType: !128, size: 32, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !329, file: !328, line: 60, baseType: !128, size: 32, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !329, file: !328, line: 61, baseType: !128, size: 32, offset: 160)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !329, file: !328, line: 63, baseType: !128, size: 32, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !329, file: !328, line: 65, baseType: !128, size: 32, offset: 224)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !329, file: !328, line: 67, baseType: !128, size: 32, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !329, file: !328, line: 69, baseType: !128, size: 32, offset: 288)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !329, file: !328, line: 70, baseType: !128, size: 32, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !329, file: !328, line: 71, baseType: !128, size: 32, offset: 352)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !329, file: !328, line: 72, baseType: !128, size: 32, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !329, file: !328, line: 73, baseType: !345, size: 8192, offset: 416)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 8192, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !329, file: !328, line: 75, baseType: !128, size: 32, offset: 8608)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !329, file: !328, line: 76, baseType: !128, size: 32, offset: 8640)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !329, file: !328, line: 77, baseType: !128, size: 32, offset: 8672)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !329, file: !328, line: 78, baseType: !128, size: 32, offset: 8704)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !329, file: !328, line: 79, baseType: !128, size: 32, offset: 8736)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !329, file: !328, line: 80, baseType: !128, size: 32, offset: 8768)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !329, file: !328, line: 81, baseType: !128, size: 32, offset: 8800)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !329, file: !328, line: 83, baseType: !128, size: 32, offset: 8832)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !329, file: !328, line: 90, baseType: !357, size: 128, offset: 8864)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !328, line: 84, size: 128, elements: !358)
!358 = !{!359, !360, !361, !362}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !357, file: !328, line: 86, baseType: !128, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !357, file: !328, line: 87, baseType: !128, size: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !357, file: !328, line: 88, baseType: !128, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !357, file: !328, line: 89, baseType: !128, size: 32, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !329, file: !328, line: 92, baseType: !128, size: 32, offset: 8992)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !329, file: !328, line: 129, baseType: !365, size: 864, offset: 9024)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !328, line: 93, size: 864, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !365, file: !328, line: 95, baseType: !128, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !365, file: !328, line: 96, baseType: !128, size: 32, offset: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !365, file: !328, line: 97, baseType: !128, size: 32, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !365, file: !328, line: 99, baseType: !128, size: 32, offset: 96)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !365, file: !328, line: 100, baseType: !128, size: 32, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !365, file: !328, line: 102, baseType: !128, size: 32, offset: 160)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !365, file: !328, line: 103, baseType: !128, size: 32, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !365, file: !328, line: 104, baseType: !128, size: 32, offset: 224)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !365, file: !328, line: 105, baseType: !128, size: 32, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !365, file: !328, line: 106, baseType: !128, size: 32, offset: 288)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !365, file: !328, line: 107, baseType: !128, size: 32, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !365, file: !328, line: 108, baseType: !128, size: 32, offset: 352)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !365, file: !328, line: 110, baseType: !128, size: 32, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !365, file: !328, line: 111, baseType: !128, size: 32, offset: 416)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !365, file: !328, line: 112, baseType: !128, size: 32, offset: 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !365, file: !328, line: 114, baseType: !128, size: 32, offset: 480)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !365, file: !328, line: 115, baseType: !128, size: 32, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !365, file: !328, line: 116, baseType: !128, size: 32, offset: 544)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !365, file: !328, line: 117, baseType: !128, size: 32, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !365, file: !328, line: 119, baseType: !128, size: 32, offset: 608)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !365, file: !328, line: 120, baseType: !128, size: 32, offset: 640)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !365, file: !328, line: 121, baseType: !128, size: 32, offset: 672)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !365, file: !328, line: 122, baseType: !128, size: 32, offset: 704)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !365, file: !328, line: 123, baseType: !128, size: 32, offset: 736)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !365, file: !328, line: 124, baseType: !128, size: 32, offset: 768)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !365, file: !328, line: 125, baseType: !128, size: 32, offset: 800)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !365, file: !328, line: 126, baseType: !128, size: 32, offset: 832)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !329, file: !328, line: 131, baseType: !128, size: 32, offset: 9888)
!395 = !{!396}
!396 = !DISubrange(count: 1)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !120, file: !30, line: 288, baseType: !398, size: 64, offset: 25600)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !120, file: !30, line: 289, baseType: !400, size: 960, offset: 25664)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 960, elements: !395)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !328, line: 165, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 135, size: 960, elements: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !402, file: !328, line: 137, baseType: !128, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !402, file: !328, line: 138, baseType: !128, size: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !402, file: !328, line: 140, baseType: !128, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !402, file: !328, line: 142, baseType: !128, size: 32, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !402, file: !328, line: 143, baseType: !128, size: 32, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !402, file: !328, line: 145, baseType: !128, size: 32, offset: 160)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !402, file: !328, line: 146, baseType: !128, size: 32, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !402, file: !328, line: 148, baseType: !128, size: 32, offset: 224)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !402, file: !328, line: 149, baseType: !128, size: 32, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !402, file: !328, line: 151, baseType: !128, size: 32, offset: 288)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !402, file: !328, line: 152, baseType: !128, size: 32, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !402, file: !328, line: 154, baseType: !128, size: 32, offset: 352)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !402, file: !328, line: 156, baseType: !128, size: 32, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !402, file: !328, line: 157, baseType: !128, size: 32, offset: 416)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !402, file: !328, line: 158, baseType: !128, size: 32, offset: 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !402, file: !328, line: 160, baseType: !128, size: 32, offset: 480)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !402, file: !328, line: 162, baseType: !128, size: 32, offset: 512)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !402, file: !328, line: 163, baseType: !422, size: 384, offset: 576)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 384, elements: !425)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!425 = !{!426}
!426 = !DISubrange(count: 6)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !120, file: !30, line: 290, baseType: !428, size: 64, offset: 26624)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !120, file: !30, line: 291, baseType: !128, size: 32, offset: 26688)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !120, file: !30, line: 294, baseType: !431, size: 256, offset: 26752)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 256, elements: !436)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 512, elements: !434)
!434 = !{!435, !435}
!435 = !DISubrange(count: 4)
!436 = !{!435}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !120, file: !30, line: 295, baseType: !438, size: 128, offset: 27008)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 128, elements: !228)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 2048, elements: !441)
!441 = !{!298, !298}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !120, file: !30, line: 297, baseType: !443, size: 256, offset: 27136)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 256, elements: !436)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 512, elements: !173)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !120, file: !30, line: 298, baseType: !447, size: 128, offset: 27392)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 128, elements: !228)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 2048, elements: !180)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !120, file: !30, line: 300, baseType: !451, size: 256, offset: 27520)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 256, elements: !436)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 256, elements: !173)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !104, line: 25, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !106, line: 40, baseType: !456)
!456 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !120, file: !30, line: 301, baseType: !458, size: 128, offset: 27776)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 128, elements: !228)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 1024, elements: !180)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !120, file: !30, line: 302, baseType: !451, size: 256, offset: 27904)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !120, file: !30, line: 303, baseType: !458, size: 128, offset: 28160)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !120, file: !30, line: 305, baseType: !423, size: 64, offset: 28288)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !120, file: !30, line: 307, baseType: !465, size: 4096, align: 128, offset: 28416)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 4096, elements: !466)
!466 = !{!229, !181}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !120, file: !30, line: 308, baseType: !468, size: 2048, align: 128, offset: 32512)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 2048, elements: !466)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !120, file: !30, line: 309, baseType: !470, size: 64, offset: 34560)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 64, elements: !228)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !120, file: !30, line: 312, baseType: !472, size: 3072, offset: 34624)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !30, line: 209, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 159, size: 3072, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !503, !504, !505, !506, !507, !508, !509, !510}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !473, file: !30, line: 161, baseType: !398, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !473, file: !30, line: 162, baseType: !428, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !473, file: !30, line: 164, baseType: !128, size: 32, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !473, file: !30, line: 165, baseType: !128, size: 32, offset: 160)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !473, file: !30, line: 166, baseType: !128, size: 32, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !473, file: !30, line: 168, baseType: !128, size: 32, offset: 224)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !473, file: !30, line: 170, baseType: !128, size: 32, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !473, file: !30, line: 172, baseType: !128, size: 32, offset: 288)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !473, file: !30, line: 173, baseType: !128, size: 32, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !473, file: !30, line: 174, baseType: !128, size: 32, offset: 352)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !473, file: !30, line: 176, baseType: !128, size: 32, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !473, file: !30, line: 178, baseType: !128, size: 32, offset: 416)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !473, file: !30, line: 179, baseType: !128, size: 32, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !473, file: !30, line: 181, baseType: !227, size: 64, offset: 480)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !473, file: !30, line: 182, baseType: !128, size: 32, offset: 544)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !473, file: !30, line: 184, baseType: !128, size: 32, offset: 576)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !473, file: !30, line: 186, baseType: !128, size: 32, offset: 608)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !473, file: !30, line: 187, baseType: !128, size: 32, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !473, file: !30, line: 188, baseType: !128, size: 32, offset: 672)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !473, file: !30, line: 190, baseType: !128, size: 32, offset: 704)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !473, file: !30, line: 191, baseType: !128, size: 32, offset: 736)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !473, file: !30, line: 195, baseType: !497, size: 2048, offset: 768)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 2048, elements: !502)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !473, file: !30, line: 192, size: 64, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !498, file: !30, line: 193, baseType: !128, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !498, file: !30, line: 194, baseType: !128, size: 32, offset: 32)
!502 = !{!229, !174}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !473, file: !30, line: 197, baseType: !128, size: 32, offset: 2816)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !473, file: !30, line: 199, baseType: !128, size: 32, offset: 2848)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !473, file: !30, line: 200, baseType: !128, size: 32, offset: 2880)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !473, file: !30, line: 201, baseType: !128, size: 32, offset: 2912)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !473, file: !30, line: 202, baseType: !128, size: 32, offset: 2944)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !473, file: !30, line: 205, baseType: !128, size: 32, offset: 2976)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !473, file: !30, line: 206, baseType: !128, size: 32, offset: 3008)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !473, file: !30, line: 207, baseType: !128, size: 32, offset: 3040)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !120, file: !30, line: 315, baseType: !512, size: 4096, offset: 37760)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !513, line: 46, baseType: !514)
!513 = !DIFile(filename: "./common/cabac.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fed287ee191b19e61654b41f7c57e583")
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !513, line: 27, size: 4096, elements: !515)
!515 = !{!516, !517, !518, !519, !520, !521, !522, !523, !524}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !514, file: !513, line: 30, baseType: !128, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !514, file: !513, line: 31, baseType: !128, size: 32, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !514, file: !513, line: 34, baseType: !128, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !514, file: !513, line: 35, baseType: !128, size: 32, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !514, file: !513, line: 37, baseType: !296, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !514, file: !513, line: 38, baseType: !296, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !514, file: !513, line: 39, baseType: !296, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !514, file: !513, line: 42, baseType: !128, size: 32, align: 128, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !514, file: !513, line: 45, baseType: !525, size: 3680, offset: 416)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 3680, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 460)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !120, file: !30, line: 340, baseType: !529, size: 31808, offset: 41856)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !120, file: !30, line: 317, size: 31808, elements: !530)
!530 = !{!531, !677, !678, !682, !683, !685, !686, !687, !688, !689, !690, !691}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !529, file: !30, line: 320, baseType: !532, size: 4288)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 4288, elements: !675)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !535, line: 94, baseType: !536)
!535 = !DIFile(filename: "./common/frame.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "3ae200731644fdbac60ac7f8f3f9d2f1")
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !535, line: 31, size: 51648, elements: !537)
!537 = !{!538, !539, !540, !541, !545, !546, !547, !548, !549, !550, !551, !555, !556, !557, !558, !559, !560, !562, !564, !565, !567, !568, !569, !574, !581, !585, !588, !590, !591, !593, !594, !598, !599, !600, !603, !605, !606, !607, !608, !610, !611, !612, !613, !614, !615, !643}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !536, file: !535, line: 34, baseType: !128, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !536, file: !535, line: 35, baseType: !128, size: 32, offset: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !536, file: !535, line: 36, baseType: !128, size: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !536, file: !535, line: 37, baseType: !542, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !543, line: 27, baseType: !544)
!543 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !106, line: 44, baseType: !312)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !536, file: !535, line: 38, baseType: !128, size: 32, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !536, file: !535, line: 39, baseType: !128, size: 32, offset: 224)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !536, file: !535, line: 40, baseType: !128, size: 32, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !536, file: !535, line: 41, baseType: !224, size: 32, offset: 288)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !536, file: !535, line: 42, baseType: !224, size: 32, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !536, file: !535, line: 45, baseType: !128, size: 32, offset: 352)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !536, file: !535, line: 46, baseType: !552, size: 96, offset: 384)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 96, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 3)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !536, file: !535, line: 47, baseType: !552, size: 96, offset: 480)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !536, file: !535, line: 48, baseType: !552, size: 96, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !536, file: !535, line: 49, baseType: !128, size: 32, offset: 672)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !536, file: !535, line: 50, baseType: !128, size: 32, offset: 704)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !536, file: !535, line: 51, baseType: !128, size: 32, offset: 736)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !536, file: !535, line: 52, baseType: !561, size: 192, offset: 768)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 192, elements: !553)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !536, file: !535, line: 53, baseType: !563, size: 256, offset: 960)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 256, elements: !436)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !536, file: !535, line: 54, baseType: !563, size: 256, offset: 1216)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !536, file: !535, line: 55, baseType: !566, size: 64, offset: 1472)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !536, file: !535, line: 59, baseType: !563, size: 256, offset: 1536)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !536, file: !535, line: 60, baseType: !563, size: 256, offset: 1792)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !536, file: !535, line: 63, baseType: !570, size: 64, offset: 2048)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !543, line: 24, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !106, line: 37, baseType: !573)
!573 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !536, file: !535, line: 64, baseType: !575, size: 128, offset: 2112)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 128, elements: !228)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 32, elements: !228)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !543, line: 25, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !106, line: 39, baseType: !580)
!580 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !536, file: !535, line: 65, baseType: !582, size: 2176, offset: 2240)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 2176, elements: !583)
!583 = !{!229, !584}
!584 = !DISubrange(count: 17)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !536, file: !535, line: 66, baseType: !586, size: 2176, offset: 4416)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 2176, elements: !583)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !536, file: !535, line: 67, baseType: !589, size: 128, offset: 6592)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 128, elements: !228)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !536, file: !535, line: 68, baseType: !227, size: 64, offset: 6720)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !536, file: !535, line: 69, baseType: !592, size: 1024, offset: 6784)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 1024, elements: !502)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !536, file: !535, line: 70, baseType: !445, size: 512, offset: 7808)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !536, file: !535, line: 75, baseType: !595, size: 10368, offset: 8320)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 10368, elements: !596)
!596 = !{!597, !597}
!597 = !DISubrange(count: 18)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !536, file: !535, line: 76, baseType: !595, size: 10368, offset: 18688)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !536, file: !535, line: 77, baseType: !128, size: 32, offset: 29056)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !536, file: !535, line: 78, baseType: !601, size: 576, offset: 29088)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 576, elements: !602)
!602 = !{!597}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !536, file: !535, line: 79, baseType: !604, size: 20736, offset: 29696)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 20736, elements: !596)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !536, file: !535, line: 80, baseType: !587, size: 64, offset: 50432)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !536, file: !535, line: 81, baseType: !587, size: 64, offset: 50496)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_qp", scope: !536, file: !535, line: 82, baseType: !587, size: 64, offset: 50560)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !536, file: !535, line: 83, baseType: !609, size: 64, offset: 50624)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !536, file: !535, line: 84, baseType: !128, size: 32, offset: 50688)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !536, file: !535, line: 85, baseType: !566, size: 64, offset: 50752)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !536, file: !535, line: 86, baseType: !566, size: 64, offset: 50816)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !536, file: !535, line: 89, baseType: !128, size: 32, offset: 50880)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !536, file: !535, line: 90, baseType: !128, size: 32, offset: 50912)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !536, file: !535, line: 91, baseType: !616, size: 320, offset: 50944)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !280, line: 72, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !280, line: 67, size: 320, elements: !618)
!618 = !{!619, !638, !642}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !617, file: !280, line: 69, baseType: !620, size: 320)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !621, line: 22, size: 320, elements: !622)
!621 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !620, file: !621, line: 24, baseType: !128, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !620, file: !621, line: 25, baseType: !7, size: 32, offset: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !620, file: !621, line: 26, baseType: !128, size: 32, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !620, file: !621, line: 28, baseType: !7, size: 32, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !620, file: !621, line: 32, baseType: !128, size: 32, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !620, file: !621, line: 34, baseType: !580, size: 16, offset: 160)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !620, file: !621, line: 35, baseType: !580, size: 16, offset: 176)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !620, file: !621, line: 36, baseType: !631, size: 128, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !632, line: 55, baseType: !633)
!632 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !632, line: 51, size: 128, elements: !634)
!634 = !{!635, !637}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !633, file: !632, line: 53, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !633, file: !632, line: 54, baseType: !636, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !617, file: !280, line: 70, baseType: !639, size: 320)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 320, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 40)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !617, file: !280, line: 71, baseType: !312, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !536, file: !535, line: 92, baseType: !644, size: 384, offset: 51264)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !280, line: 80, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !280, line: 75, size: 384, elements: !646)
!646 = !{!647, !669, !673}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !645, file: !280, line: 77, baseType: !648, size: 384)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !632, line: 94, size: 384, elements: !649)
!649 = !{!650, !662, !663, !665, !666, !667, !668}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !648, file: !632, line: 96, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !652, line: 33, baseType: !653)
!652 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!653 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !652, line: 25, size: 64, elements: !654)
!654 = !{!655, !657}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !653, file: !652, line: 27, baseType: !656, size: 64)
!656 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !653, file: !652, line: 32, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !653, file: !652, line: 28, size: 64, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !658, file: !652, line: 30, baseType: !7, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !658, file: !652, line: 31, baseType: !7, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !648, file: !632, line: 97, baseType: !651, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !648, file: !632, line: 98, baseType: !664, size: 64, offset: 128)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !228)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !648, file: !632, line: 99, baseType: !664, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !648, file: !632, line: 100, baseType: !7, size: 32, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !648, file: !632, line: 101, baseType: !7, size: 32, offset: 288)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !648, file: !632, line: 102, baseType: !664, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !645, file: !280, line: 78, baseType: !670, size: 384)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 384, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: 48)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !645, file: !280, line: 79, baseType: !674, size: 64)
!674 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!675 = !{!676}
!676 = !DISubrange(count: 67)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !529, file: !30, line: 322, baseType: !532, size: 4288, offset: 4288)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !529, file: !30, line: 324, baseType: !679, size: 21760, offset: 8576)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 21760, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 340)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !529, file: !30, line: 326, baseType: !533, size: 64, offset: 30336)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !529, file: !30, line: 329, baseType: !684, size: 1152, offset: 30400)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 1152, elements: !602)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_idr", scope: !529, file: !30, line: 331, baseType: !128, size: 32, offset: 31552)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !529, file: !30, line: 333, baseType: !128, size: 32, offset: 31584)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !529, file: !30, line: 335, baseType: !128, size: 32, offset: 31616)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !529, file: !30, line: 336, baseType: !128, size: 32, offset: 31648)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !529, file: !30, line: 337, baseType: !128, size: 32, offset: 31680)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !529, file: !30, line: 338, baseType: !128, size: 32, offset: 31712)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !529, file: !30, line: 339, baseType: !128, size: 32, offset: 31744)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !120, file: !30, line: 343, baseType: !533, size: 64, offset: 73664)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !120, file: !30, line: 346, baseType: !533, size: 64, offset: 73728)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !120, file: !30, line: 349, baseType: !128, size: 32, offset: 73792)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !120, file: !30, line: 350, baseType: !696, size: 1216, offset: 73856)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 1216, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 19)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !120, file: !30, line: 351, baseType: !128, size: 32, offset: 75072)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !120, file: !30, line: 352, baseType: !696, size: 1216, offset: 75136)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !120, file: !30, line: 353, baseType: !227, size: 64, offset: 76352)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !120, file: !30, line: 365, baseType: !703, size: 10624, offset: 76416)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !120, file: !30, line: 358, size: 10624, elements: !704)
!704 = !{!705, !707, !710, !713}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !703, file: !30, line: 360, baseType: !706, size: 256, align: 128)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 256, elements: !173)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !703, file: !30, line: 361, baseType: !708, size: 128, align: 128, offset: 256)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 128, elements: !709)
!709 = !{!229, !435}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !703, file: !30, line: 363, baseType: !711, size: 4096, align: 128, offset: 384)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 4096, elements: !712)
!712 = !{!435, !181}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !703, file: !30, line: 364, baseType: !714, size: 6144, align: 128, offset: 4480)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 6144, elements: !715)
!715 = !{!716, !174}
!716 = !DISubrange(count: 24)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !120, file: !30, line: 544, baseType: !718, size: 80128, offset: 87040)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !120, file: !30, line: 368, size: 80128, elements: !719)
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !746, !748, !749, !750, !751, !752, !753, !754, !755, !756, !758, !761, !765, !766, !767, !768, !769, !773, !774, !775, !778, !780, !781, !782, !784, !785, !786, !787, !788, !789, !790, !791, !832, !852, !853, !854, !855, !856, !857, !858, !859, !860, !863, !866, !868}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !718, file: !30, line: 370, baseType: !128, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !718, file: !30, line: 373, baseType: !128, size: 32, offset: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !718, file: !30, line: 374, baseType: !128, size: 32, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !718, file: !30, line: 375, baseType: !128, size: 32, offset: 96)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !718, file: !30, line: 378, baseType: !128, size: 32, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !718, file: !30, line: 379, baseType: !128, size: 32, offset: 160)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !718, file: !30, line: 380, baseType: !128, size: 32, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !718, file: !30, line: 381, baseType: !128, size: 32, offset: 224)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !718, file: !30, line: 382, baseType: !128, size: 32, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !718, file: !30, line: 385, baseType: !128, size: 32, offset: 288)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !718, file: !30, line: 386, baseType: !128, size: 32, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !718, file: !30, line: 387, baseType: !128, size: 32, offset: 352)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !718, file: !30, line: 388, baseType: !128, size: 32, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !718, file: !30, line: 389, baseType: !128, size: 32, offset: 416)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !718, file: !30, line: 390, baseType: !128, size: 32, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !718, file: !30, line: 391, baseType: !128, size: 32, offset: 480)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !718, file: !30, line: 393, baseType: !128, size: 32, offset: 512)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !718, file: !30, line: 396, baseType: !227, size: 64, offset: 544)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !718, file: !30, line: 397, baseType: !227, size: 64, offset: 608)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !718, file: !30, line: 400, baseType: !227, size: 64, offset: 672)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !718, file: !30, line: 401, baseType: !227, size: 64, offset: 736)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !718, file: !30, line: 403, baseType: !227, size: 64, offset: 800)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !718, file: !30, line: 404, baseType: !227, size: 64, offset: 864)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !718, file: !30, line: 407, baseType: !7, size: 32, offset: 928)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !718, file: !30, line: 408, baseType: !745, size: 128, offset: 960)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !436)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !718, file: !30, line: 409, baseType: !747, size: 512, offset: 1088)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !173)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !718, file: !30, line: 410, baseType: !128, size: 32, offset: 1600)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !718, file: !30, line: 411, baseType: !128, size: 32, offset: 1632)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !718, file: !30, line: 412, baseType: !128, size: 32, offset: 1664)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !718, file: !30, line: 413, baseType: !128, size: 32, offset: 1696)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !718, file: !30, line: 414, baseType: !128, size: 32, offset: 1728)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !718, file: !30, line: 415, baseType: !128, size: 32, offset: 1760)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !718, file: !30, line: 422, baseType: !570, size: 64, offset: 1792)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !718, file: !30, line: 423, baseType: !570, size: 64, offset: 1856)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !718, file: !30, line: 424, baseType: !757, size: 64, offset: 1920)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !718, file: !30, line: 425, baseType: !759, size: 64, offset: 1984)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 64, elements: !297)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !718, file: !30, line: 427, baseType: !762, size: 64, offset: 2048)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 192, elements: !764)
!764 = !{!716}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !718, file: !30, line: 428, baseType: !570, size: 64, offset: 2112)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !718, file: !30, line: 429, baseType: !575, size: 128, offset: 2176)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !718, file: !30, line: 430, baseType: !575, size: 128, offset: 2304)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !718, file: !30, line: 431, baseType: !589, size: 128, offset: 2432)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !718, file: !30, line: 432, baseType: !770, size: 4096, offset: 2560)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 4096, elements: !771)
!771 = !{!229, !772}
!772 = !DISubrange(count: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !718, file: !30, line: 433, baseType: !570, size: 64, offset: 6656)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !718, file: !30, line: 434, baseType: !570, size: 64, offset: 6720)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !718, file: !30, line: 435, baseType: !776, size: 384, offset: 6784)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 384, elements: !777)
!777 = !{!229, !554}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "nnz_backup", scope: !718, file: !30, line: 436, baseType: !779, size: 64, offset: 7168)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !718, file: !30, line: 439, baseType: !128, size: 32, offset: 7232)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !718, file: !30, line: 440, baseType: !128, size: 32, offset: 7264)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !718, file: !30, line: 441, baseType: !783, size: 128, offset: 7296)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, elements: !436)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !718, file: !30, line: 442, baseType: !128, size: 32, offset: 7424)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !718, file: !30, line: 444, baseType: !128, size: 32, offset: 7456)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !718, file: !30, line: 445, baseType: !128, size: 32, offset: 7488)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !718, file: !30, line: 447, baseType: !128, size: 32, offset: 7520)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !718, file: !30, line: 448, baseType: !128, size: 32, offset: 7552)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !718, file: !30, line: 454, baseType: !128, size: 32, offset: 7584)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !718, file: !30, line: 457, baseType: !128, size: 32, offset: 7616)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !718, file: !30, line: 498, baseType: !792, size: 57344, offset: 7680)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !30, line: 459, size: 57344, elements: !793)
!793 = !{!794, !798, !802, !804, !805, !808, !812, !813, !816, !817, !818, !821, !822, !823, !824, !825, !826, !829, !831}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !792, file: !30, line: 464, baseType: !795, size: 3072, align: 128)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 3072, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !792, file: !30, line: 465, baseType: !799, size: 6912, align: 128, offset: 3072)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 6912, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 864)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !792, file: !30, line: 468, baseType: !803, size: 2048, align: 128, offset: 9984)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 2048, elements: !346)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !792, file: !30, line: 469, baseType: !803, size: 2048, align: 128, offset: 12032)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !792, file: !30, line: 470, baseType: !806, size: 3072, align: 128, offset: 14080)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 3072, elements: !807)
!807 = !{!554, !181}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !792, file: !30, line: 471, baseType: !809, size: 3840, align: 128, offset: 17152)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 3840, elements: !810)
!810 = !{!811, !174}
!811 = !DISubrange(count: 15)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !792, file: !30, line: 474, baseType: !711, size: 4096, align: 128, offset: 20992)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !792, file: !30, line: 475, baseType: !814, size: 4096, align: 128, offset: 25088)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 4096, elements: !815)
!815 = !{!174, !174}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd", scope: !792, file: !30, line: 478, baseType: !433, size: 512, offset: 29184)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_sum", scope: !792, file: !30, line: 479, baseType: !128, size: 32, offset: 29696)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d", scope: !792, file: !30, line: 480, baseType: !819, size: 128, offset: 29728)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, elements: !820)
!820 = !{!229, !229}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d_sum", scope: !792, file: !30, line: 481, baseType: !128, size: 32, offset: 29856)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !792, file: !30, line: 484, baseType: !561, size: 192, offset: 29888)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !792, file: !30, line: 486, baseType: !561, size: 192, offset: 30080)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !792, file: !30, line: 489, baseType: !561, size: 192, offset: 30272)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !792, file: !30, line: 492, baseType: !227, size: 64, offset: 30464)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !792, file: !30, line: 493, baseType: !827, size: 24576, offset: 30528)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 24576, elements: !828)
!828 = !{!229, !772, !426}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !792, file: !30, line: 494, baseType: !830, size: 2048, offset: 55104)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 2048, elements: !502)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !792, file: !30, line: 497, baseType: !552, size: 96, offset: 57152)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !718, file: !30, line: 526, baseType: !833, size: 12032, offset: 65024)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !30, line: 501, size: 12032, elements: !834)
!834 = !{!835, !837, !839, !842, !845, !846, !847, !848, !849, !850, !851}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !833, file: !30, line: 504, baseType: !836, size: 384)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 384, elements: !671)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !833, file: !30, line: 507, baseType: !838, size: 384, offset: 384)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 384, elements: !671)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !833, file: !30, line: 510, baseType: !840, size: 768, align: 32, offset: 768)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 768, elements: !841)
!841 = !{!229, !672}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !833, file: !30, line: 513, baseType: !843, size: 3072, align: 128, offset: 1536)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 3072, elements: !844)
!844 = !{!229, !672, !229}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !833, file: !30, line: 514, baseType: !843, size: 3072, align: 64, offset: 4608)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !833, file: !30, line: 517, baseType: !836, size: 384, align: 32, offset: 7680)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !833, file: !30, line: 519, baseType: !843, size: 3072, align: 128, offset: 8064)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !833, file: !30, line: 520, baseType: !840, size: 768, align: 32, offset: 11136)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !833, file: !30, line: 521, baseType: !577, size: 32, align: 32, offset: 11904)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !833, file: !30, line: 524, baseType: !128, size: 32, offset: 11936)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !833, file: !30, line: 525, baseType: !128, size: 32, offset: 11968)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !718, file: !30, line: 529, baseType: !128, size: 32, offset: 77056)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !718, file: !30, line: 530, baseType: !128, size: 32, offset: 77088)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !718, file: !30, line: 531, baseType: !128, size: 32, offset: 77120)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !718, file: !30, line: 532, baseType: !128, size: 32, offset: 77152)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !718, file: !30, line: 533, baseType: !128, size: 32, offset: 77184)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !718, file: !30, line: 534, baseType: !128, size: 32, offset: 77216)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !718, file: !30, line: 535, baseType: !128, size: 32, offset: 77248)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !718, file: !30, line: 536, baseType: !128, size: 32, offset: 77280)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !718, file: !30, line: 539, baseType: !861, size: 512, offset: 77312)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 512, elements: !862)
!862 = !{!174, !229}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !718, file: !30, line: 540, baseType: !864, size: 2048, offset: 77824)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 2048, elements: !865)
!865 = !{!772, !435}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0_buf", scope: !718, file: !30, line: 542, baseType: !867, size: 16, offset: 79872)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 16, elements: !228)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !718, file: !30, line: 543, baseType: !869, size: 128, offset: 79888)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 128, elements: !173)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !120, file: !30, line: 547, baseType: !871, size: 64, offset: 167168)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !30, line: 248, baseType: !873)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !30, line: 248, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !120, file: !30, line: 604, baseType: !875, size: 23936, offset: 167232)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !120, file: !30, line: 550, size: 23936, elements: !876)
!876 = !{!877, !902, !906, !908, !910, !911, !912, !913, !914, !915, !916, !917, !920, !922, !924, !927, !928}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !875, file: !30, line: 579, baseType: !878, size: 3904)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !875, file: !30, line: 553, size: 3904, elements: !879)
!879 = !{!880, !881, !882, !883, !885, !886, !887, !888, !889, !891, !894, !895, !896, !897, !898, !900}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !878, file: !30, line: 556, baseType: !128, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !878, file: !30, line: 558, baseType: !128, size: 32, offset: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !878, file: !30, line: 560, baseType: !128, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !878, file: !30, line: 562, baseType: !884, size: 608, offset: 96)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 608, elements: !697)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !878, file: !30, line: 563, baseType: !128, size: 32, offset: 704)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !878, file: !30, line: 564, baseType: !128, size: 32, offset: 736)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !878, file: !30, line: 565, baseType: !128, size: 32, offset: 768)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !878, file: !30, line: 566, baseType: !227, size: 64, offset: 800)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !878, file: !30, line: 567, baseType: !890, size: 2048, offset: 864)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 2048, elements: !771)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !878, file: !30, line: 568, baseType: !892, size: 544, offset: 2912)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 544, elements: !893)
!893 = !{!584}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !878, file: !30, line: 571, baseType: !128, size: 32, offset: 3456)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i_inter_cost", scope: !878, file: !30, line: 572, baseType: !128, size: 32, offset: 3488)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_mbs_analysed", scope: !878, file: !30, line: 573, baseType: !128, size: 32, offset: 3520)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !878, file: !30, line: 575, baseType: !227, size: 64, offset: 3552)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !878, file: !30, line: 577, baseType: !899, size: 192, offset: 3648)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 192, elements: !553)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !878, file: !30, line: 578, baseType: !901, size: 64, offset: 3840)
!901 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !875, file: !30, line: 584, baseType: !903, size: 160, offset: 3904)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 160, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 5)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_size", scope: !875, file: !30, line: 585, baseType: !907, size: 320, offset: 4096)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 320, elements: !904)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "f_slice_qp", scope: !875, file: !30, line: 586, baseType: !909, size: 320, offset: 4416)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !901, size: 320, elements: !904)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !875, file: !30, line: 587, baseType: !892, size: 544, offset: 4736)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !875, file: !30, line: 589, baseType: !907, size: 320, offset: 5312)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !875, file: !30, line: 590, baseType: !909, size: 320, offset: 5632)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !875, file: !30, line: 591, baseType: !909, size: 320, offset: 5952)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !875, file: !30, line: 592, baseType: !909, size: 320, offset: 6272)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !875, file: !30, line: 593, baseType: !909, size: 320, offset: 6592)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !875, file: !30, line: 594, baseType: !909, size: 320, offset: 6912)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !875, file: !30, line: 596, baseType: !918, size: 6080, offset: 7232)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 6080, elements: !919)
!919 = !{!905, !698}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !875, file: !30, line: 597, baseType: !921, size: 2176, offset: 13312)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 2176, elements: !583)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !875, file: !30, line: 598, baseType: !923, size: 128, offset: 15488)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 128, elements: !228)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !875, file: !30, line: 599, baseType: !925, size: 8192, offset: 15616)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 8192, elements: !926)
!926 = !{!229, !229, !772}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !875, file: !30, line: 601, baseType: !227, size: 64, offset: 23808)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !875, file: !30, line: 602, baseType: !227, size: 64, offset: 23872)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !120, file: !30, line: 607, baseType: !930, size: 448, offset: 191168)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !931, size: 448, elements: !935)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !79, line: 27, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !296}
!935 = !{!936}
!936 = !DISubrange(count: 7)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !120, file: !30, line: 608, baseType: !930, size: 448, offset: 191616)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !120, file: !30, line: 609, baseType: !939, size: 768, offset: 192064)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 768, elements: !944)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !79, line: 28, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !296, !296}
!944 = !{!945}
!945 = !DISubrange(count: 12)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !120, file: !30, line: 610, baseType: !947, size: 768, offset: 192832)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !931, size: 768, elements: !944)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !120, file: !30, line: 612, baseType: !949, size: 8000, offset: 193600)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !38, line: 103, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 63, size: 8000, elements: !951)
!951 = !{!952, !958, !959, !960, !961, !963, !964, !965, !966, !972, !978, !979, !984, !989, !994, !998, !999, !1000, !1001, !1002, !1007, !1011, !1012, !1013, !1014, !1015}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !950, file: !38, line: 65, baseType: !953, size: 448)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 448, elements: !935)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !38, line: 26, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!128, !296, !128, !296, !128}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !950, file: !38, line: 66, baseType: !953, size: 448, offset: 448)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !950, file: !38, line: 67, baseType: !953, size: 448, offset: 896)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !950, file: !38, line: 68, baseType: !953, size: 448, offset: 1344)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !950, file: !38, line: 69, baseType: !962, size: 256, offset: 1792)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 256, elements: !436)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !950, file: !38, line: 70, baseType: !953, size: 448, offset: 2048)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !950, file: !38, line: 71, baseType: !953, size: 448, offset: 2496)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !950, file: !38, line: 72, baseType: !953, size: 448, offset: 2944)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !950, file: !38, line: 73, baseType: !967, size: 448, offset: 3392)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, size: 448, elements: !935)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !38, line: 27, baseType: !969)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{null, !296, !296, !296, !296, !128, !587}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !950, file: !38, line: 74, baseType: !973, size: 448, offset: 3840)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !974, size: 448, elements: !935)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !38, line: 28, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{null, !296, !296, !296, !296, !296, !128, !587}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !950, file: !38, line: 75, baseType: !953, size: 448, offset: 4288)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !950, file: !38, line: 77, baseType: !980, size: 256, offset: 4736)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !981, size: 256, elements: !436)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!128, !296, !128, !102}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !950, file: !38, line: 78, baseType: !985, size: 256, offset: 4992)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, size: 256, elements: !436)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!107, !296, !128}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !950, file: !38, line: 80, baseType: !990, size: 64, offset: 5248)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !423, !128, !423, !128, !993}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !950, file: !38, line: 82, baseType: !995, size: 64, offset: 5312)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!224, !993, !993, !128}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !950, file: !38, line: 85, baseType: !967, size: 448, offset: 5376)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !950, file: !38, line: 86, baseType: !973, size: 448, offset: 5824)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !950, file: !38, line: 87, baseType: !967, size: 448, offset: 6272)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !950, file: !38, line: 88, baseType: !973, size: 448, offset: 6720)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !950, file: !38, line: 92, baseType: !1003, size: 448, offset: 7168)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 448, elements: !935)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!128, !587, !566, !128, !566, !757, !128, !128}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !950, file: !38, line: 97, baseType: !1008, size: 64, offset: 7616)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !296, !296, !587}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !950, file: !38, line: 98, baseType: !1008, size: 64, offset: 7680)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !950, file: !38, line: 99, baseType: !1008, size: 64, offset: 7744)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !950, file: !38, line: 100, baseType: !1008, size: 64, offset: 7808)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !950, file: !38, line: 101, baseType: !1008, size: 64, offset: 7872)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !950, file: !38, line: 102, baseType: !1008, size: 64, offset: 7936)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !120, file: !30, line: 613, baseType: !1017, size: 1792, offset: 201600)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !1018, line: 71, baseType: !1019)
!1018 = !DIFile(filename: "./common/mc.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "d49d7420aafa05a86bee506aef111ff0")
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1018, line: 31, size: 1792, elements: !1020)
!1020 = !{!1021, !1026, !1030, !1034, !1041, !1046, !1047, !1051, !1055, !1056, !1060, !1068, !1072}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1019, file: !1018, line: 33, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !296, !128, !1025, !128, !128, !128, !128, !128}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1019, file: !1018, line: 38, baseType: !1027, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!296, !296, !587, !1025, !128, !128, !128, !128, !128}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1019, file: !1018, line: 44, baseType: !1031, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !296, !128, !296, !128, !128, !128, !128, !128}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1019, file: !1018, line: 48, baseType: !1035, size: 640, offset: 192)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1036, size: 640, elements: !1039)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !296, !128, !296, !128, !296, !128, !128}
!1039 = !{!1040}
!1040 = !DISubrange(count: 10)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1019, file: !1018, line: 51, baseType: !1042, size: 448, offset: 832)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 448, elements: !935)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !296, !128, !296, !128, !128}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1019, file: !1018, line: 52, baseType: !1043, size: 64, offset: 1280)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1019, file: !1018, line: 54, baseType: !1048, size: 64, offset: 1344)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !296, !128, !296, !128, !128, !128}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1019, file: !1018, line: 57, baseType: !1052, size: 64, offset: 1408)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !296, !296, !296, !296, !128, !128, !128}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1019, file: !1018, line: 61, baseType: !1043, size: 64, offset: 1472)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1019, file: !1018, line: 64, baseType: !1057, size: 64, offset: 1536)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !296, !128, !128}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1019, file: !1018, line: 66, baseType: !1061, size: 64, offset: 1600)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!187, !187, !1064, !1066}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1067, line: 46, baseType: !109)
!1067 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1019, file: !1018, line: 67, baseType: !1069, size: 64, offset: 1664)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !187, !128}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1019, file: !1018, line: 69, baseType: !1073, size: 64, offset: 1728)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !296, !296, !296, !296, !296, !128, !128, !128, !128}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !120, file: !30, line: 614, baseType: !1077, size: 768, offset: 203392)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1078, line: 112, baseType: !1079)
!1078 = !DIFile(filename: "./common/dct.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "eb76275dd7785989f0d8a4ada39e3c74")
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1078, line: 89, size: 768, elements: !1080)
!1080 = !{!1081, !1087, !1091, !1097, !1101, !1102, !1103, !1109, !1113, !1119, !1123, !1127}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1079, file: !1078, line: 94, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !1085, !296, !296}
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 64, elements: !436)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1079, file: !1078, line: 95, baseType: !1088, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !296, !1085}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1079, file: !1078, line: 97, baseType: !1092, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !1095, !296, !296}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 256, elements: !434)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1079, file: !1078, line: 98, baseType: !1098, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !296, !1095}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1079, file: !1078, line: 100, baseType: !1092, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1079, file: !1078, line: 101, baseType: !1098, size: 64, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1079, file: !1078, line: 103, baseType: !1104, size: 64, offset: 384)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !1107, !296, !296}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 128, elements: !297)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1079, file: !1078, line: 104, baseType: !1110, size: 64, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !296, !1107}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1079, file: !1078, line: 106, baseType: !1114, size: 64, offset: 512)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !1117, !296, !296}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 1024, elements: !441)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1079, file: !1078, line: 107, baseType: !1120, size: 64, offset: 576)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !296, !1117}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1079, file: !1078, line: 109, baseType: !1124, size: 64, offset: 640)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !1085}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1079, file: !1078, line: 110, baseType: !1124, size: 64, offset: 704)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !120, file: !30, line: 615, baseType: !1129, size: 320, offset: 204160)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1078, line: 122, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1078, line: 114, size: 320, elements: !1131)
!1131 = !{!1132, !1136, !1140, !1144, !1145}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1130, file: !1078, line: 116, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !757, !1107}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1130, file: !1078, line: 117, baseType: !1137, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !757, !1085}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1130, file: !1078, line: 118, baseType: !1141, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !757, !423, !296}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1130, file: !1078, line: 119, baseType: !1141, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1130, file: !1078, line: 120, baseType: !1146, size: 64, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !757, !757}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !120, file: !30, line: 616, baseType: !1150, size: 1088, offset: 204480)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1151, line: 43, baseType: !1152)
!1151 = !DIFile(filename: "./common/quant.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fe7c19d3e69b65b38e52c43c47235f27")
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1151, line: 26, size: 1088, elements: !1153)
!1153 = !{!1154, !1158, !1162, !1166, !1170, !1174, !1178, !1179, !1183, !1187, !1188, !1189}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1152, file: !1151, line: 28, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !1107, !566, !566}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1152, file: !1151, line: 29, baseType: !1159, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !1085, !566, !566}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1152, file: !1151, line: 30, baseType: !1163, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !1085, !128, !128}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1152, file: !1151, line: 31, baseType: !1167, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !576, !128, !128}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1152, file: !1151, line: 33, baseType: !1171, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{null, !1107, !439, !128}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1152, file: !1151, line: 34, baseType: !1175, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !1085, !432, !128}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1152, file: !1151, line: 35, baseType: !1175, size: 64, offset: 384)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1152, file: !1151, line: 37, baseType: !1180, size: 64, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !757, !102, !566, !128}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1152, file: !1151, line: 39, baseType: !1184, size: 64, offset: 512)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!128, !757}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1152, file: !1151, line: 40, baseType: !1184, size: 64, offset: 576)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1152, file: !1151, line: 41, baseType: !1184, size: 64, offset: 640)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1152, file: !1151, line: 42, baseType: !1190, size: 384, offset: 704)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1184, size: 384, elements: !425)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !120, file: !30, line: 617, baseType: !1192, size: 512, offset: 205568)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !535, line: 108, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !535, line: 98, size: 512, elements: !1194)
!1194 = !{!1195, !1200, !1201, !1202, !1203, !1208, !1209, !1210}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma", scope: !1193, file: !535, line: 100, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !535, line: 96, baseType: !1197)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !296, !128, !128, !128, !570}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma", scope: !1193, file: !535, line: 101, baseType: !1196, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma", scope: !1193, file: !535, line: 102, baseType: !1196, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma", scope: !1193, file: !535, line: 103, baseType: !1196, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma_intra", scope: !1193, file: !535, line: 104, baseType: !1204, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !535, line: 97, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !296, !128, !128, !128}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma_intra", scope: !1193, file: !535, line: 105, baseType: !1204, size: 64, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma_intra", scope: !1193, file: !535, line: 106, baseType: !1204, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma_intra", scope: !1193, file: !535, line: 107, baseType: !1204, size: 64, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!1212 = !{!1213, !1214, !1215, !1217, !1220, !1224, !1229}
!1213 = !DILocalVariable(name: "h", arg: 1, scope: !114, file: !3, line: 66, type: !117)
!1214 = !DILocalVariable(name: "cb", arg: 2, scope: !114, file: !3, line: 66, type: !1211)
!1215 = !DILocalVariable(name: "i_mb_type", scope: !114, file: !3, line: 68, type: !1216)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!1217 = !DILocalVariable(name: "ctx", scope: !1218, file: !3, line: 78, type: !128)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 77, column: 5)
!1219 = distinct !DILexicalBlock(scope: !114, file: !3, line: 76, column: 9)
!1220 = !DILocalVariable(name: "ctx", scope: !1221, file: !3, line: 131, type: !128)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 130, column: 5)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 129, column: 14)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 90, column: 14)
!1224 = !DILocalVariable(name: "idx", scope: !1225, file: !3, line: 194, type: !1216)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 168, column: 9)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 154, column: 18)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 145, column: 18)
!1228 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 141, column: 13)
!1229 = !DILocalVariable(name: "i", scope: !1225, file: !3, line: 195, type: !128)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1216, size: 864, elements: !1231)
!1231 = !{!1232}
!1232 = !DISubrange(count: 27)
!1233 = !DIGlobalVariableExpression(var: !1234, expr: !DIExpression())
!1234 = distinct !DIGlobalVariable(name: "i_mb_bits", scope: !114, file: !3, line: 181, type: !1235, isLocal: true, isDefinition: true)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1216, size: 6048, elements: !1236)
!1236 = !{!1232, !936}
!1237 = !DIGlobalVariableExpression(var: !1238, expr: !DIExpression())
!1238 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !1239, isLocal: true, isDefinition: true)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 504, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 63)
!1242 = !DIGlobalVariableExpression(var: !1243, expr: !DIExpression())
!1243 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode16x16_fix", scope: !2, file: !79, line: 58, type: !1244, isLocal: true, isDefinition: true)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 56, elements: !935)
!1245 = !DIGlobalVariableExpression(var: !1246, expr: !DIExpression())
!1246 = distinct !DIGlobalVariable(name: "x264_scan8", scope: !2, file: !30, line: 216, type: !1230, isLocal: true, isDefinition: true)
!1247 = !DIGlobalVariableExpression(var: !1248, expr: !DIExpression())
!1248 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode8x8c_fix", scope: !2, file: !79, line: 41, type: !1244, isLocal: true, isDefinition: true)
!1249 = !DIGlobalVariableExpression(var: !1250, expr: !DIExpression())
!1250 = distinct !DIGlobalVariable(name: "ctxes", scope: !1251, file: !3, line: 449, type: !1266, isLocal: true, isDefinition: true)
!1251 = distinct !DISubprogram(name: "x264_cabac_mb_mvd_cpn", scope: !3, file: !3, line: 447, type: !1252, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1254)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !117, !1211, !128, !128, !128, !128}
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265}
!1255 = !DILocalVariable(name: "h", arg: 1, scope: !1251, file: !3, line: 447, type: !117)
!1256 = !DILocalVariable(name: "cb", arg: 2, scope: !1251, file: !3, line: 447, type: !1211)
!1257 = !DILocalVariable(name: "i_list", arg: 3, scope: !1251, file: !3, line: 447, type: !128)
!1258 = !DILocalVariable(name: "idx", arg: 4, scope: !1251, file: !3, line: 447, type: !128)
!1259 = !DILocalVariable(name: "l", arg: 5, scope: !1251, file: !3, line: 447, type: !128)
!1260 = !DILocalVariable(name: "mvd", arg: 6, scope: !1251, file: !3, line: 447, type: !128)
!1261 = !DILocalVariable(name: "amvd", scope: !1251, file: !3, line: 450, type: !1216)
!1262 = !DILocalVariable(name: "i_abs", scope: !1251, file: !3, line: 452, type: !1216)
!1263 = !DILocalVariable(name: "ctxbase", scope: !1251, file: !3, line: 453, type: !1216)
!1264 = !DILocalVariable(name: "ctx", scope: !1251, file: !3, line: 454, type: !128)
!1265 = !DILocalVariable(name: "i", scope: !1251, file: !3, line: 455, type: !128)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 72, elements: !1267)
!1267 = !{!1268}
!1268 = !DISubrange(count: 9)
!1269 = !DIGlobalVariableExpression(var: !1270, expr: !DIExpression())
!1270 = distinct !DIGlobalVariable(name: "block_idx_x", scope: !2, file: !6, line: 208, type: !1271, isLocal: true, isDefinition: true)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 128, elements: !173)
!1272 = !DIGlobalVariableExpression(var: !1273, expr: !DIExpression())
!1273 = distinct !DIGlobalVariable(name: "block_idx_y", scope: !2, file: !6, line: 212, type: !1271, isLocal: true, isDefinition: true)
!1274 = !DIGlobalVariableExpression(var: !1275, expr: !DIExpression())
!1275 = distinct !DIGlobalVariable(name: "part_bits", scope: !1276, file: !3, line: 380, type: !1283, isLocal: true, isDefinition: true)
!1276 = distinct !DISubprogram(name: "x264_cabac_mb_sub_b_partition", scope: !3, file: !3, line: 378, type: !1277, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1279)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !1211, !128}
!1279 = !{!1280, !1281, !1282}
!1280 = !DILocalVariable(name: "cb", arg: 1, scope: !1276, file: !3, line: 378, type: !1211)
!1281 = !DILocalVariable(name: "i_sub", arg: 2, scope: !1276, file: !3, line: 378, type: !128)
!1282 = !DILocalVariable(name: "len", scope: !1276, file: !3, line: 394, type: !128)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 672, elements: !1284)
!1284 = !{!945, !936}
!1285 = !DIGlobalVariableExpression(var: !1286, expr: !DIExpression())
!1286 = distinct !DIGlobalVariable(name: "x264_mb_partition_listX_table", scope: !2, file: !6, line: 153, type: !1287, isLocal: true, isDefinition: true)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 272, elements: !583)
!1288 = !DIGlobalVariableExpression(var: !1289, expr: !DIExpression())
!1289 = distinct !DIGlobalVariable(name: "x264_mb_type_list0_table", scope: !2, file: !6, line: 94, type: !1290, isLocal: true, isDefinition: true)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 304, elements: !1291)
!1291 = !{!698, !229}
!1292 = !DIGlobalVariableExpression(var: !1293, expr: !DIExpression())
!1293 = distinct !DIGlobalVariable(name: "x264_mb_type_list1_table", scope: !2, file: !6, line: 107, type: !1290, isLocal: true, isDefinition: true)
!1294 = !DIGlobalVariableExpression(var: !1295, expr: !DIExpression())
!1295 = distinct !DIGlobalVariable(name: "partition_tab", scope: !1296, file: !6, line: 473, type: !1303, isLocal: true, isDefinition: true)
!1296 = distinct !DISubprogram(name: "x264_mb_transform_8x8_allowed", scope: !6, file: !6, line: 468, type: !1297, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1299)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!128, !117}
!1299 = !{!1300, !1301, !1302}
!1300 = !DILocalVariable(name: "h", arg: 1, scope: !1296, file: !6, line: 468, type: !117)
!1301 = !DILocalVariable(name: "p", scope: !1296, file: !6, line: 476, type: !128)
!1302 = !DILocalVariable(name: "i", scope: !1296, file: !6, line: 476, type: !128)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 152, elements: !697)
!1304 = !DIGlobalVariableExpression(var: !1305, expr: !DIExpression())
!1305 = distinct !DIGlobalVariable(name: "significant_coeff_flag_offset", scope: !2, file: !3, line: 639, type: !1306, isLocal: true, isDefinition: true)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1307, size: 192, elements: !1308)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!1308 = !{!229, !426}
!1309 = !DIGlobalVariableExpression(var: !1310, expr: !DIExpression())
!1310 = distinct !DIGlobalVariable(name: "last_coeff_flag_offset", scope: !2, file: !3, line: 643, type: !1306, isLocal: true, isDefinition: true)
!1311 = !DIGlobalVariableExpression(var: !1312, expr: !DIExpression())
!1312 = distinct !DIGlobalVariable(name: "coeff_abs_level_m1_offset", scope: !2, file: !3, line: 647, type: !1313, isLocal: true, isDefinition: true)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1307, size: 96, elements: !425)
!1314 = !DIGlobalVariableExpression(var: !1315, expr: !DIExpression())
!1315 = distinct !DIGlobalVariable(name: "significant_coeff_flag_offset_8x8", scope: !2, file: !3, line: 649, type: !1316, isLocal: true, isDefinition: true)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 1008, elements: !1317)
!1317 = !{!229, !1241}
!1318 = !DIGlobalVariableExpression(var: !1319, expr: !DIExpression())
!1319 = distinct !DIGlobalVariable(name: "last_coeff_flag_offset_8x8", scope: !2, file: !3, line: 661, type: !1320, isLocal: true, isDefinition: true)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 504, elements: !1240)
!1321 = !DIGlobalVariableExpression(var: !1322, expr: !DIExpression())
!1322 = distinct !DIGlobalVariable(name: "coeff_abs_level1_ctx", scope: !2, file: !3, line: 671, type: !1323, isLocal: true, isDefinition: true)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1216, size: 256, elements: !297)
!1324 = !DIGlobalVariableExpression(var: !1325, expr: !DIExpression())
!1325 = distinct !DIGlobalVariable(name: "coeff_abs_levelgt1_ctx", scope: !2, file: !3, line: 673, type: !1323, isLocal: true, isDefinition: true)
!1326 = !DIGlobalVariableExpression(var: !1327, expr: !DIExpression())
!1327 = distinct !DIGlobalVariable(name: "coeff_abs_level_transition", scope: !2, file: !3, line: 674, type: !1328, isLocal: true, isDefinition: true)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 128, elements: !1329)
!1329 = !{!229, !298}
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1331, size: 104, elements: !1332)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!1332 = !{!1333}
!1333 = !DISubrange(count: 13)
!1334 = !{i32 7, !"Dwarf Version", i32 5}
!1335 = !{i32 2, !"Debug Info Version", i32 3}
!1336 = !{i32 1, !"wchar_size", i32 4}
!1337 = !{i32 8, !"PIC Level", i32 2}
!1338 = !{i32 7, !"PIE Level", i32 2}
!1339 = !{i32 7, !"uwtable", i32 2}
!1340 = !{!"clang version 16.0.0"}
!1341 = distinct !DISubprogram(name: "x264_cabac_mb_skip", scope: !3, file: !3, line: 344, type: !1342, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1344)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !117, !128}
!1344 = !{!1345, !1346, !1347}
!1345 = !DILocalVariable(name: "h", arg: 1, scope: !1341, file: !3, line: 344, type: !117)
!1346 = !DILocalVariable(name: "b_skip", arg: 2, scope: !1341, file: !3, line: 344, type: !128)
!1347 = !DILocalVariable(name: "ctx", scope: !1341, file: !3, line: 346, type: !128)
!1348 = !DILocation(line: 0, scope: !1341)
!1349 = !DILocation(line: 346, column: 22, scope: !1341)
!1350 = !{!1351, !1353, i64 11084}
!1351 = !{!"x264_t", !1352, i64 0, !1354, i64 616, !1361, i64 1640, !1353, i64 1648, !1353, i64 1652, !1362, i64 1656, !1353, i64 1920, !1353, i64 1924, !1353, i64 1928, !1353, i64 1932, !1353, i64 1936, !1353, i64 1940, !1353, i64 1944, !1353, i64 1948, !1353, i64 1952, !1354, i64 1956, !1357, i64 3200, !1354, i64 3208, !1357, i64 3328, !1353, i64 3336, !1354, i64 3344, !1354, i64 3376, !1354, i64 3392, !1354, i64 3424, !1354, i64 3440, !1354, i64 3472, !1354, i64 3488, !1354, i64 3520, !1357, i64 3536, !1354, i64 3552, !1354, i64 4064, !1354, i64 4320, !1364, i64 4328, !1365, i64 4720, !1366, i64 5232, !1357, i64 9208, !1357, i64 9216, !1353, i64 9224, !1354, i64 9232, !1353, i64 9384, !1354, i64 9392, !1354, i64 9544, !1367, i64 9552, !1368, i64 10880, !1357, i64 20896, !1371, i64 20904, !1354, i64 23896, !1354, i64 23952, !1354, i64 24008, !1354, i64 24104, !1374, i64 24200, !1375, i64 25200, !1376, i64 25424, !1377, i64 25520, !1378, i64 25560, !1379, i64 25696}
!1352 = !{!"x264_param_t", !1353, i64 0, !1353, i64 4, !1353, i64 8, !1353, i64 12, !1353, i64 16, !1353, i64 20, !1353, i64 24, !1353, i64 28, !1356, i64 32, !1353, i64 68, !1353, i64 72, !1353, i64 76, !1353, i64 80, !1353, i64 84, !1353, i64 88, !1353, i64 92, !1353, i64 96, !1353, i64 100, !1353, i64 104, !1353, i64 108, !1353, i64 112, !1353, i64 116, !1353, i64 120, !1353, i64 124, !1353, i64 128, !1353, i64 132, !1353, i64 136, !1357, i64 144, !1354, i64 152, !1354, i64 168, !1354, i64 184, !1354, i64 200, !1354, i64 216, !1354, i64 280, !1357, i64 344, !1357, i64 352, !1353, i64 360, !1353, i64 364, !1357, i64 368, !1358, i64 376, !1360, i64 472, !1353, i64 600, !1353, i64 604, !1353, i64 608}
!1353 = !{!"int", !1354, i64 0}
!1354 = !{!"omnipotent char", !1355, i64 0}
!1355 = !{!"Simple C/C++ TBAA"}
!1356 = !{!"", !1353, i64 0, !1353, i64 4, !1353, i64 8, !1353, i64 12, !1353, i64 16, !1353, i64 20, !1353, i64 24, !1353, i64 28, !1353, i64 32}
!1357 = !{!"any pointer", !1354, i64 0}
!1358 = !{!"", !1353, i64 0, !1353, i64 4, !1353, i64 8, !1353, i64 12, !1353, i64 16, !1353, i64 20, !1353, i64 24, !1353, i64 28, !1353, i64 32, !1353, i64 36, !1353, i64 40, !1353, i64 44, !1353, i64 48, !1353, i64 52, !1353, i64 56, !1353, i64 60, !1353, i64 64, !1353, i64 68, !1359, i64 72, !1359, i64 76, !1354, i64 80, !1353, i64 88, !1353, i64 92}
!1359 = !{!"float", !1354, i64 0}
!1360 = !{!"", !1353, i64 0, !1353, i64 4, !1353, i64 8, !1353, i64 12, !1353, i64 16, !1353, i64 20, !1359, i64 24, !1359, i64 28, !1353, i64 32, !1353, i64 36, !1359, i64 40, !1359, i64 44, !1359, i64 48, !1353, i64 52, !1359, i64 56, !1353, i64 60, !1357, i64 64, !1353, i64 72, !1357, i64 80, !1359, i64 88, !1359, i64 92, !1359, i64 96, !1357, i64 104, !1353, i64 112, !1357, i64 120}
!1361 = !{!"long", !1354, i64 0}
!1362 = !{!"", !1353, i64 0, !1354, i64 8, !1353, i64 200, !1357, i64 208, !1363, i64 216, !1353, i64 256}
!1363 = !{!"bs_s", !1357, i64 0, !1357, i64 8, !1357, i64 16, !1361, i64 24, !1353, i64 32, !1353, i64 36}
!1364 = !{!"", !1357, i64 0, !1357, i64 8, !1353, i64 16, !1353, i64 20, !1353, i64 24, !1353, i64 28, !1353, i64 32, !1353, i64 36, !1353, i64 40, !1353, i64 44, !1353, i64 48, !1353, i64 52, !1353, i64 56, !1354, i64 60, !1353, i64 68, !1353, i64 72, !1353, i64 76, !1353, i64 80, !1353, i64 84, !1353, i64 88, !1353, i64 92, !1354, i64 96, !1353, i64 352, !1353, i64 356, !1353, i64 360, !1353, i64 364, !1353, i64 368, !1353, i64 372, !1353, i64 376, !1353, i64 380}
!1365 = !{!"", !1353, i64 0, !1353, i64 4, !1353, i64 8, !1353, i64 12, !1357, i64 16, !1357, i64 24, !1357, i64 32, !1353, i64 48, !1354, i64 52}
!1366 = !{!"", !1354, i64 0, !1354, i64 536, !1354, i64 1072, !1357, i64 3792, !1354, i64 3800, !1353, i64 3944, !1353, i64 3948, !1353, i64 3952, !1353, i64 3956, !1353, i64 3960, !1353, i64 3964, !1353, i64 3968}
!1367 = !{!"", !1354, i64 0, !1354, i64 32, !1354, i64 48, !1354, i64 560}
!1368 = !{!"", !1353, i64 0, !1353, i64 4, !1353, i64 8, !1353, i64 12, !1353, i64 16, !1353, i64 20, !1353, i64 24, !1353, i64 28, !1353, i64 32, !1353, i64 36, !1353, i64 40, !1353, i64 44, !1353, i64 48, !1353, i64 52, !1353, i64 56, !1353, i64 60, !1353, i64 64, !1354, i64 68, !1354, i64 76, !1354, i64 84, !1354, i64 92, !1354, i64 100, !1354, i64 108, !1353, i64 116, !1354, i64 120, !1354, i64 136, !1353, i64 200, !1353, i64 204, !1353, i64 208, !1353, i64 212, !1353, i64 216, !1353, i64 220, !1357, i64 224, !1357, i64 232, !1357, i64 240, !1357, i64 248, !1357, i64 256, !1357, i64 264, !1354, i64 272, !1354, i64 288, !1354, i64 304, !1354, i64 320, !1357, i64 832, !1357, i64 840, !1354, i64 848, !1357, i64 896, !1353, i64 904, !1353, i64 908, !1354, i64 912, !1353, i64 928, !1353, i64 932, !1353, i64 936, !1353, i64 940, !1353, i64 944, !1353, i64 948, !1353, i64 952, !1369, i64 960, !1370, i64 8128, !1353, i64 9632, !1353, i64 9636, !1353, i64 9640, !1353, i64 9644, !1353, i64 9648, !1353, i64 9652, !1353, i64 9656, !1353, i64 9660, !1354, i64 9664, !1354, i64 9728, !1354, i64 9984, !1354, i64 9986}
!1369 = !{!"", !1354, i64 0, !1354, i64 384, !1354, i64 1248, !1354, i64 1504, !1354, i64 1760, !1354, i64 2144, !1354, i64 2624, !1354, i64 3136, !1354, i64 3648, !1353, i64 3712, !1354, i64 3716, !1353, i64 3732, !1354, i64 3736, !1354, i64 3760, !1354, i64 3784, !1354, i64 3808, !1354, i64 3816, !1354, i64 6888, !1354, i64 7144}
!1370 = !{!"", !1354, i64 0, !1354, i64 48, !1354, i64 96, !1354, i64 192, !1354, i64 576, !1354, i64 960, !1354, i64 1008, !1354, i64 1392, !1354, i64 1488, !1353, i64 1492, !1353, i64 1496}
!1371 = !{!"", !1372, i64 0, !1354, i64 488, !1354, i64 512, !1354, i64 552, !1354, i64 592, !1354, i64 664, !1354, i64 704, !1354, i64 744, !1354, i64 784, !1354, i64 824, !1354, i64 864, !1354, i64 904, !1354, i64 1664, !1354, i64 1936, !1354, i64 1952, !1354, i64 2976, !1354, i64 2984}
!1372 = !{!"", !1353, i64 0, !1353, i64 4, !1353, i64 8, !1354, i64 12, !1353, i64 88, !1353, i64 92, !1353, i64 96, !1354, i64 100, !1354, i64 108, !1354, i64 364, !1353, i64 432, !1353, i64 436, !1353, i64 440, !1354, i64 444, !1354, i64 456, !1373, i64 480}
!1373 = !{!"double", !1354, i64 0}
!1374 = !{!"", !1354, i64 0, !1354, i64 56, !1354, i64 112, !1354, i64 168, !1354, i64 224, !1354, i64 256, !1354, i64 312, !1354, i64 368, !1354, i64 424, !1354, i64 480, !1354, i64 536, !1354, i64 592, !1354, i64 624, !1357, i64 656, !1357, i64 664, !1354, i64 672, !1354, i64 728, !1354, i64 784, !1354, i64 840, !1354, i64 896, !1357, i64 952, !1357, i64 960, !1357, i64 968, !1357, i64 976, !1357, i64 984, !1357, i64 992}
!1375 = !{!"", !1357, i64 0, !1357, i64 8, !1357, i64 16, !1354, i64 24, !1354, i64 104, !1357, i64 160, !1357, i64 168, !1357, i64 176, !1357, i64 184, !1357, i64 192, !1357, i64 200, !1357, i64 208, !1357, i64 216}
!1376 = !{!"", !1357, i64 0, !1357, i64 8, !1357, i64 16, !1357, i64 24, !1357, i64 32, !1357, i64 40, !1357, i64 48, !1357, i64 56, !1357, i64 64, !1357, i64 72, !1357, i64 80, !1357, i64 88}
!1377 = !{!"", !1357, i64 0, !1357, i64 8, !1357, i64 16, !1357, i64 24, !1357, i64 32}
!1378 = !{!"", !1357, i64 0, !1357, i64 8, !1357, i64 16, !1357, i64 24, !1357, i64 32, !1357, i64 40, !1357, i64 48, !1357, i64 56, !1357, i64 64, !1357, i64 72, !1357, i64 80, !1354, i64 88}
!1379 = !{!"", !1357, i64 0, !1357, i64 8, !1357, i64 16, !1357, i64 24, !1357, i64 32, !1357, i64 40, !1357, i64 48, !1357, i64 56}
!1380 = !DILocation(line: 346, column: 42, scope: !1341)
!1381 = !DILocation(line: 347, column: 22, scope: !1341)
!1382 = !{!1351, !1353, i64 11080}
!1383 = !DILocation(line: 347, column: 41, scope: !1341)
!1384 = !DILocation(line: 348, column: 22, scope: !1341)
!1385 = !{!1351, !1353, i64 4344}
!1386 = !DILocation(line: 348, column: 29, scope: !1341)
!1387 = !DILocation(line: 348, column: 16, scope: !1341)
!1388 = !DILocation(line: 347, column: 13, scope: !1341)
!1389 = !DILocation(line: 348, column: 13, scope: !1341)
!1390 = !DILocation(line: 349, column: 37, scope: !1341)
!1391 = !DILocation(line: 349, column: 5, scope: !1341)
!1392 = !DILocation(line: 350, column: 1, scope: !1341)
!1393 = !DISubprogram(name: "x264_cabac_encode_decision_asm", scope: !513, file: !513, line: 57, type: !1394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1396)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !1211, !128, !128}
!1396 = !{}
!1397 = distinct !DISubprogram(name: "x264_macroblock_write_cabac", scope: !3, file: !3, line: 787, type: !115, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1398)
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1411, !1415, !1416, !1422}
!1399 = !DILocalVariable(name: "h", arg: 1, scope: !1397, file: !3, line: 787, type: !117)
!1400 = !DILocalVariable(name: "cb", arg: 2, scope: !1397, file: !3, line: 787, type: !1211)
!1401 = !DILocalVariable(name: "i_mb_type", scope: !1397, file: !3, line: 789, type: !1216)
!1402 = !DILocalVariable(name: "i_list", scope: !1397, file: !3, line: 790, type: !128)
!1403 = !DILocalVariable(name: "i", scope: !1397, file: !3, line: 791, type: !128)
!1404 = !DILocalVariable(name: "i_mb_pos_start", scope: !1397, file: !3, line: 794, type: !1216)
!1405 = !DILocalVariable(name: "i_mb_pos_tex", scope: !1397, file: !3, line: 795, type: !128)
!1406 = !DILocalVariable(name: "di", scope: !1407, file: !3, line: 838, type: !128)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 837, column: 9)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 836, column: 13)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 832, column: 5)
!1410 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 831, column: 9)
!1411 = !DILocalVariable(name: "i_pred", scope: !1412, file: !3, line: 841, type: !1216)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 840, column: 13)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 839, column: 13)
!1414 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 839, column: 13)
!1415 = !DILocalVariable(name: "i_mode", scope: !1412, file: !3, line: 842, type: !1216)
!1416 = !DILocalVariable(name: "b_list", scope: !1417, file: !3, line: 926, type: !819)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 924, column: 5)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 923, column: 14)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 900, column: 14)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 880, column: 14)
!1421 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 849, column: 14)
!1422 = !DILocalVariable(name: "i_ref_max", scope: !1423, file: !3, line: 937, type: !1216)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 936, column: 9)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 935, column: 9)
!1425 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 935, column: 9)
!1426 = !DILocation(line: 0, scope: !1397)
!1427 = !DILocation(line: 789, column: 33, scope: !1397)
!1428 = !{!1351, !1353, i64 11784}
!1429 = !DILocalVariable(name: "cb", arg: 1, scope: !1430, file: !513, line: 70, type: !1211)
!1430 = distinct !DISubprogram(name: "x264_cabac_pos", scope: !513, file: !513, line: 70, type: !1431, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!128, !1211}
!1433 = !{!1429}
!1434 = !DILocation(line: 0, scope: !1430, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 794, column: 32, scope: !1397)
!1436 = !DILocation(line: 72, column: 17, scope: !1430, inlinedAt: !1435)
!1437 = !{!1365, !1357, i64 24}
!1438 = !DILocation(line: 72, column: 25, scope: !1430, inlinedAt: !1435)
!1439 = !{!1365, !1357, i64 16}
!1440 = !DILocation(line: 72, column: 19, scope: !1430, inlinedAt: !1435)
!1441 = !DILocation(line: 72, column: 39, scope: !1430, inlinedAt: !1435)
!1442 = !{!1365, !1353, i64 12}
!1443 = !DILocation(line: 72, column: 70, scope: !1430, inlinedAt: !1435)
!1444 = !{!1365, !1353, i64 8}
!1445 = !DILocation(line: 72, column: 12, scope: !1430, inlinedAt: !1435)
!1446 = !DILocation(line: 0, scope: !114, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 799, column: 5, scope: !1397)
!1448 = !DILocation(line: 70, column: 15, scope: !1449, inlinedAt: !1447)
!1449 = distinct !DILexicalBlock(scope: !114, file: !3, line: 70, column: 9)
!1450 = !{!1351, !1353, i64 4364}
!1451 = !DILocation(line: 70, column: 9, scope: !1449, inlinedAt: !1447)
!1452 = !DILocation(line: 70, column: 23, scope: !1449, inlinedAt: !1447)
!1453 = !DILocation(line: 71, column: 18, scope: !1449, inlinedAt: !1447)
!1454 = !{!1351, !1353, i64 10900}
!1455 = !DILocation(line: 71, column: 25, scope: !1449, inlinedAt: !1447)
!1456 = !DILocation(line: 71, column: 30, scope: !1449, inlinedAt: !1447)
!1457 = !DILocation(line: 71, column: 33, scope: !1449, inlinedAt: !1447)
!1458 = !{!1351, !1357, i64 11104}
!1459 = !{!1351, !1353, i64 10904}
!1460 = !{!1351, !1353, i64 10884}
!1461 = !{!1354, !1354, i64 0}
!1462 = !DILocation(line: 73, column: 63, scope: !1463, inlinedAt: !1447)
!1463 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 72, column: 5)
!1464 = !{!1351, !1353, i64 20504}
!1465 = !DILocation(line: 73, column: 49, scope: !1463, inlinedAt: !1447)
!1466 = !DILocation(line: 73, column: 93, scope: !1463, inlinedAt: !1447)
!1467 = !{!1351, !1353, i64 10944}
!1468 = !DILocation(line: 73, column: 9, scope: !1463, inlinedAt: !1447)
!1469 = !DILocation(line: 74, column: 5, scope: !1463, inlinedAt: !1447)
!1470 = !DILocation(line: 76, column: 15, scope: !1219, inlinedAt: !1447)
!1471 = !DILocation(line: 76, column: 9, scope: !114, inlinedAt: !1447)
!1472 = !DILocation(line: 0, scope: !1218, inlinedAt: !1447)
!1473 = !DILocation(line: 79, column: 19, scope: !1474, inlinedAt: !1447)
!1474 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 79, column: 13)
!1475 = !DILocation(line: 79, column: 39, scope: !1474, inlinedAt: !1447)
!1476 = !DILocation(line: 83, column: 19, scope: !1477, inlinedAt: !1447)
!1477 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 83, column: 13)
!1478 = !DILocation(line: 83, column: 38, scope: !1477, inlinedAt: !1447)
!1479 = !DILocation(line: 88, column: 54, scope: !1218, inlinedAt: !1447)
!1480 = !DILocation(line: 88, column: 9, scope: !1218, inlinedAt: !1447)
!1481 = !DILocation(line: 89, column: 5, scope: !1218, inlinedAt: !1447)
!1482 = !DILocation(line: 93, column: 13, scope: !1483, inlinedAt: !1447)
!1483 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 91, column: 5)
!1484 = !DILocation(line: 95, column: 23, scope: !1485, inlinedAt: !1447)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 95, column: 17)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 94, column: 9)
!1487 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 93, column: 13)
!1488 = !{!1351, !1353, i64 11788}
!1489 = !DILocation(line: 95, column: 17, scope: !1486, inlinedAt: !1447)
!1490 = !DILocation(line: 97, column: 17, scope: !1491, inlinedAt: !1447)
!1491 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 96, column: 13)
!1492 = !DILocation(line: 98, column: 17, scope: !1491, inlinedAt: !1447)
!1493 = !DILocation(line: 99, column: 17, scope: !1491, inlinedAt: !1447)
!1494 = !DILocation(line: 100, column: 13, scope: !1491, inlinedAt: !1447)
!1495 = !DILocation(line: 103, column: 17, scope: !1496, inlinedAt: !1447)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 102, column: 13)
!1497 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 101, column: 22)
!1498 = !DILocation(line: 104, column: 17, scope: !1496, inlinedAt: !1447)
!1499 = !DILocation(line: 105, column: 17, scope: !1496, inlinedAt: !1447)
!1500 = !DILocation(line: 106, column: 13, scope: !1496, inlinedAt: !1447)
!1501 = !DILocation(line: 109, column: 17, scope: !1502, inlinedAt: !1447)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 108, column: 13)
!1503 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 107, column: 22)
!1504 = !DILocation(line: 110, column: 17, scope: !1502, inlinedAt: !1447)
!1505 = !DILocation(line: 111, column: 17, scope: !1502, inlinedAt: !1447)
!1506 = !DILocation(line: 112, column: 13, scope: !1502, inlinedAt: !1447)
!1507 = !DILocation(line: 116, column: 13, scope: !1508, inlinedAt: !1447)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 115, column: 9)
!1509 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 114, column: 18)
!1510 = !DILocation(line: 117, column: 13, scope: !1508, inlinedAt: !1447)
!1511 = !DILocation(line: 118, column: 13, scope: !1508, inlinedAt: !1447)
!1512 = !DILocation(line: 849, column: 14, scope: !1410)
!1513 = !DILocation(line: 123, column: 13, scope: !1514, inlinedAt: !1447)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 121, column: 9)
!1515 = !DILocation(line: 126, column: 13, scope: !1514, inlinedAt: !1447)
!1516 = !DILocation(line: 0, scope: !1221, inlinedAt: !1447)
!1517 = !DILocation(line: 132, column: 19, scope: !1518, inlinedAt: !1447)
!1518 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 132, column: 13)
!1519 = !DILocation(line: 132, column: 34, scope: !1518, inlinedAt: !1447)
!1520 = !DILocation(line: 132, column: 39, scope: !1518, inlinedAt: !1447)
!1521 = !DILocation(line: 136, column: 19, scope: !1522, inlinedAt: !1447)
!1522 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 136, column: 13)
!1523 = !DILocation(line: 136, column: 33, scope: !1522, inlinedAt: !1447)
!1524 = !DILocation(line: 136, column: 38, scope: !1522, inlinedAt: !1447)
!1525 = !DILocation(line: 141, column: 13, scope: !1221, inlinedAt: !1447)
!1526 = !DILocation(line: 143, column: 52, scope: !1527, inlinedAt: !1447)
!1527 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 142, column: 9)
!1528 = !DILocation(line: 143, column: 13, scope: !1527, inlinedAt: !1447)
!1529 = !DILocation(line: 147, column: 52, scope: !1530, inlinedAt: !1447)
!1530 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 146, column: 9)
!1531 = !DILocation(line: 147, column: 13, scope: !1530, inlinedAt: !1447)
!1532 = !DILocation(line: 148, column: 13, scope: !1530, inlinedAt: !1447)
!1533 = !DILocation(line: 149, column: 13, scope: !1530, inlinedAt: !1447)
!1534 = !DILocation(line: 150, column: 13, scope: !1530, inlinedAt: !1447)
!1535 = !DILocation(line: 151, column: 13, scope: !1530, inlinedAt: !1447)
!1536 = !DILocation(line: 152, column: 13, scope: !1530, inlinedAt: !1447)
!1537 = !DILocation(line: 154, column: 18, scope: !1226, inlinedAt: !1447)
!1538 = !DILocation(line: 157, column: 52, scope: !1539, inlinedAt: !1447)
!1539 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 155, column: 9)
!1540 = !DILocation(line: 157, column: 13, scope: !1539, inlinedAt: !1447)
!1541 = !DILocation(line: 158, column: 13, scope: !1539, inlinedAt: !1447)
!1542 = !DILocation(line: 159, column: 13, scope: !1539, inlinedAt: !1447)
!1543 = !DILocation(line: 160, column: 13, scope: !1539, inlinedAt: !1447)
!1544 = !DILocation(line: 161, column: 13, scope: !1539, inlinedAt: !1447)
!1545 = !DILocation(line: 162, column: 13, scope: !1539, inlinedAt: !1447)
!1546 = !DILocation(line: 165, column: 13, scope: !1539, inlinedAt: !1447)
!1547 = !DILocation(line: 166, column: 9, scope: !1539, inlinedAt: !1447)
!1548 = !DILocation(line: 194, column: 51, scope: !1225, inlinedAt: !1447)
!1549 = !DILocation(line: 194, column: 64, scope: !1225, inlinedAt: !1447)
!1550 = !DILocation(line: 194, column: 55, scope: !1225, inlinedAt: !1447)
!1551 = !DILocation(line: 0, scope: !1225, inlinedAt: !1447)
!1552 = !DILocation(line: 197, column: 52, scope: !1225, inlinedAt: !1447)
!1553 = !DILocation(line: 197, column: 58, scope: !1225, inlinedAt: !1447)
!1554 = !{!1353, !1353, i64 0}
!1555 = !DILocation(line: 197, column: 13, scope: !1225, inlinedAt: !1447)
!1556 = !DILocation(line: 198, column: 58, scope: !1225, inlinedAt: !1447)
!1557 = !DILocation(line: 198, column: 13, scope: !1225, inlinedAt: !1447)
!1558 = !DILocation(line: 199, column: 49, scope: !1225, inlinedAt: !1447)
!1559 = !DILocation(line: 199, column: 69, scope: !1225, inlinedAt: !1447)
!1560 = !DILocation(line: 199, column: 13, scope: !1225, inlinedAt: !1447)
!1561 = !DILocation(line: 200, column: 27, scope: !1562, inlinedAt: !1447)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 200, column: 13)
!1563 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 200, column: 13)
!1564 = !DILocation(line: 200, column: 13, scope: !1563, inlinedAt: !1447)
!1565 = !DILocation(line: 201, column: 55, scope: !1562, inlinedAt: !1447)
!1566 = !DILocation(line: 201, column: 17, scope: !1562, inlinedAt: !1447)
!1567 = !DILocation(line: 200, column: 45, scope: !1562, inlinedAt: !1447)
!1568 = distinct !{!1568, !1564, !1569, !1570}
!1569 = !DILocation(line: 201, column: 73, scope: !1563, inlinedAt: !1447)
!1570 = !{!"llvm.loop.mustprogress"}
!1571 = !DILocation(line: 206, column: 9, scope: !1572, inlinedAt: !1447)
!1572 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 205, column: 5)
!1573 = !DILocation(line: 802, column: 19, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 802, column: 9)
!1575 = !DILocation(line: 802, column: 9, scope: !1397)
!1576 = !DILocation(line: 0, scope: !1430, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 804, column: 24, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 803, column: 5)
!1579 = !DILocation(line: 72, column: 17, scope: !1430, inlinedAt: !1577)
!1580 = !DILocation(line: 72, column: 25, scope: !1430, inlinedAt: !1577)
!1581 = !DILocation(line: 72, column: 19, scope: !1430, inlinedAt: !1577)
!1582 = !DILocation(line: 72, column: 39, scope: !1430, inlinedAt: !1577)
!1583 = !DILocation(line: 72, column: 70, scope: !1430, inlinedAt: !1577)
!1584 = !DILocation(line: 72, column: 12, scope: !1430, inlinedAt: !1577)
!1585 = !DILocation(line: 805, column: 12, scope: !1578)
!1586 = !DILocation(line: 805, column: 33, scope: !1578)
!1587 = !{!1351, !1353, i64 20904}
!1588 = !DILocation(line: 805, column: 49, scope: !1578)
!1589 = !DILocation(line: 807, column: 34, scope: !1578)
!1590 = !DILocation(line: 807, column: 24, scope: !1578)
!1591 = !{!1357, !1357, i64 0}
!1592 = !DILocation(line: 807, column: 9, scope: !1578)
!1593 = !DILocation(line: 808, column: 15, scope: !1578)
!1594 = !DILocation(line: 810, column: 34, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 809, column: 9)
!1596 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 809, column: 9)
!1597 = !DILocation(line: 810, column: 13, scope: !1595)
!1598 = !DILocation(line: 810, column: 25, scope: !1595)
!1599 = !DILocation(line: 810, column: 27, scope: !1595)
!1600 = !DILocation(line: 810, column: 54, scope: !1595)
!1601 = !DILocation(line: 811, column: 15, scope: !1578)
!1602 = !DILocation(line: 813, column: 34, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 812, column: 9)
!1604 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 812, column: 9)
!1605 = !DILocation(line: 813, column: 13, scope: !1603)
!1606 = !DILocation(line: 813, column: 25, scope: !1603)
!1607 = !DILocation(line: 813, column: 27, scope: !1603)
!1608 = !DILocation(line: 813, column: 54, scope: !1603)
!1609 = !DILocation(line: 814, column: 15, scope: !1578)
!1610 = !DILocation(line: 816, column: 21, scope: !1578)
!1611 = !DILocation(line: 822, column: 15, scope: !1578)
!1612 = !DILocation(line: 822, column: 9, scope: !1578)
!1613 = !DILocation(line: 822, column: 44, scope: !1578)
!1614 = !DILocation(line: 822, column: 34, scope: !1578)
!1615 = !DILocation(line: 822, column: 68, scope: !1578)
!1616 = !DILocation(line: 823, column: 9, scope: !1578)
!1617 = !DILocation(line: 823, column: 34, scope: !1578)
!1618 = !DILocation(line: 823, column: 68, scope: !1578)
!1619 = !DILocation(line: 824, column: 9, scope: !1578)
!1620 = !DILocation(line: 824, column: 34, scope: !1578)
!1621 = !DILocation(line: 824, column: 68, scope: !1578)
!1622 = !DILocation(line: 0, scope: !1430, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 826, column: 37, scope: !1578)
!1624 = !DILocation(line: 72, column: 17, scope: !1430, inlinedAt: !1623)
!1625 = !DILocation(line: 72, column: 25, scope: !1430, inlinedAt: !1623)
!1626 = !DILocation(line: 72, column: 19, scope: !1430, inlinedAt: !1623)
!1627 = !DILocation(line: 72, column: 39, scope: !1430, inlinedAt: !1623)
!1628 = !DILocation(line: 72, column: 70, scope: !1430, inlinedAt: !1623)
!1629 = !DILocation(line: 72, column: 12, scope: !1430, inlinedAt: !1623)
!1630 = !DILocation(line: 826, column: 23, scope: !1578)
!1631 = !DILocation(line: 826, column: 34, scope: !1578)
!1632 = !{!1351, !1353, i64 20908}
!1633 = !DILocation(line: 826, column: 58, scope: !1578)
!1634 = !DILocation(line: 827, column: 9, scope: !1578)
!1635 = !DILocation(line: 831, column: 9, scope: !1410)
!1636 = !DILocation(line: 833, column: 16, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 833, column: 13)
!1638 = !{!1351, !1357, i64 3328}
!1639 = !DILocation(line: 833, column: 21, scope: !1637)
!1640 = !{!1641, !1353, i64 60}
!1641 = !{!"", !1353, i64 0, !1353, i64 4, !1353, i64 8, !1353, i64 12, !1353, i64 16, !1353, i64 20, !1353, i64 24, !1353, i64 28, !1353, i64 32, !1353, i64 36, !1353, i64 40, !1353, i64 44, !1353, i64 48, !1353, i64 52, !1353, i64 56, !1353, i64 60, !1353, i64 64, !1354, i64 72}
!1642 = !DILocation(line: 833, column: 13, scope: !1637)
!1643 = !DILocation(line: 833, column: 42, scope: !1637)
!1644 = !DILocation(line: 834, column: 13, scope: !1637)
!1645 = !{!1351, !1353, i64 11808}
!1646 = !{!1351, !1353, i64 20500}
!1647 = !DILocalVariable(name: "h", arg: 1, scope: !1648, file: !3, line: 415, type: !117)
!1648 = distinct !DISubprogram(name: "x264_cabac_mb_transform_size", scope: !3, file: !3, line: 415, type: !115, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1649)
!1649 = !{!1647, !1650, !1651}
!1650 = !DILocalVariable(name: "cb", arg: 2, scope: !1648, file: !3, line: 415, type: !1211)
!1651 = !DILocalVariable(name: "ctx", scope: !1648, file: !3, line: 417, type: !128)
!1652 = !DILocation(line: 0, scope: !1648, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 834, column: 13, scope: !1637)
!1654 = !DILocation(line: 417, column: 19, scope: !1648, inlinedAt: !1653)
!1655 = !DILocation(line: 418, column: 5, scope: !1648, inlinedAt: !1653)
!1656 = !DILocation(line: 836, column: 13, scope: !1409)
!1657 = !DILocation(line: 838, column: 22, scope: !1407)
!1658 = !DILocation(line: 0, scope: !1407)
!1659 = !DILocation(line: 839, column: 13, scope: !1414)
!1660 = !DILocalVariable(name: "h", arg: 1, scope: !1661, file: !6, line: 439, type: !117)
!1661 = distinct !DISubprogram(name: "x264_mb_predict_intra4x4_mode", scope: !6, file: !6, line: 439, type: !1662, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1664)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!128, !117, !128}
!1664 = !{!1660, !1665, !1666, !1667, !1668}
!1665 = !DILocalVariable(name: "idx", arg: 2, scope: !1661, file: !6, line: 439, type: !128)
!1666 = !DILocalVariable(name: "ma", scope: !1661, file: !6, line: 441, type: !1216)
!1667 = !DILocalVariable(name: "mb", scope: !1661, file: !6, line: 442, type: !1216)
!1668 = !DILocalVariable(name: "m", scope: !1661, file: !6, line: 443, type: !1216)
!1669 = !DILocation(line: 0, scope: !1661, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 841, column: 36, scope: !1412)
!1671 = !DILocation(line: 441, column: 51, scope: !1661, inlinedAt: !1670)
!1672 = !DILocation(line: 441, column: 67, scope: !1661, inlinedAt: !1670)
!1673 = !DILocation(line: 441, column: 20, scope: !1661, inlinedAt: !1670)
!1674 = !DILocation(line: 442, column: 67, scope: !1661, inlinedAt: !1670)
!1675 = !DILocation(line: 442, column: 20, scope: !1661, inlinedAt: !1670)
!1676 = !DILocation(line: 443, column: 20, scope: !1661, inlinedAt: !1670)
!1677 = !DILocation(line: 446, column: 11, scope: !1678, inlinedAt: !1670)
!1678 = distinct !DILexicalBlock(scope: !1661, file: !6, line: 446, column: 9)
!1679 = !DILocation(line: 446, column: 9, scope: !1661, inlinedAt: !1670)
!1680 = !DILocation(line: 0, scope: !1412)
!1681 = !DILocation(line: 842, column: 36, scope: !1412)
!1682 = !DILocalVariable(name: "cb", arg: 1, scope: !1683, file: !3, line: 210, type: !1211)
!1683 = distinct !DISubprogram(name: "x264_cabac_mb_intra4x4_pred_mode", scope: !3, file: !3, line: 210, type: !1394, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1684)
!1684 = !{!1682, !1685, !1686}
!1685 = !DILocalVariable(name: "i_pred", arg: 2, scope: !1683, file: !3, line: 210, type: !128)
!1686 = !DILocalVariable(name: "i_mode", arg: 3, scope: !1683, file: !3, line: 210, type: !128)
!1687 = !DILocation(line: 0, scope: !1683, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 843, column: 17, scope: !1412)
!1689 = !DILocation(line: 212, column: 16, scope: !1690, inlinedAt: !1688)
!1690 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 212, column: 9)
!1691 = !DILocation(line: 212, column: 9, scope: !1683, inlinedAt: !1688)
!1692 = !DILocation(line: 215, column: 9, scope: !1693, inlinedAt: !1688)
!1693 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 213, column: 5)
!1694 = !DILocation(line: 216, column: 5, scope: !1693, inlinedAt: !1688)
!1695 = !DILocation(line: 220, column: 9, scope: !1696, inlinedAt: !1688)
!1696 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 218, column: 5)
!1697 = !DILocation(line: 221, column: 20, scope: !1698, inlinedAt: !1688)
!1698 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 221, column: 13)
!1699 = !DILocation(line: 221, column: 13, scope: !1696, inlinedAt: !1688)
!1700 = !DILocation(line: 225, column: 58, scope: !1696, inlinedAt: !1688)
!1701 = !DILocation(line: 225, column: 9, scope: !1696, inlinedAt: !1688)
!1702 = !DILocation(line: 226, column: 53, scope: !1696, inlinedAt: !1688)
!1703 = !DILocation(line: 226, column: 58, scope: !1696, inlinedAt: !1688)
!1704 = !DILocation(line: 226, column: 9, scope: !1696, inlinedAt: !1688)
!1705 = !DILocation(line: 227, column: 53, scope: !1696, inlinedAt: !1688)
!1706 = !DILocation(line: 227, column: 58, scope: !1696, inlinedAt: !1688)
!1707 = !DILocation(line: 227, column: 9, scope: !1696, inlinedAt: !1688)
!1708 = !DILocation(line: 839, column: 35, scope: !1413)
!1709 = !DILocation(line: 839, column: 27, scope: !1413)
!1710 = distinct !{!1710, !1659, !1711, !1570}
!1711 = !DILocation(line: 844, column: 13, scope: !1414)
!1712 = !DILocalVariable(name: "h", arg: 1, scope: !1713, file: !3, line: 231, type: !117)
!1713 = distinct !DISubprogram(name: "x264_cabac_mb_intra_chroma_pred_mode", scope: !3, file: !3, line: 231, type: !115, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1714)
!1714 = !{!1712, !1715, !1716, !1717}
!1715 = !DILocalVariable(name: "cb", arg: 2, scope: !1713, file: !3, line: 231, type: !1211)
!1716 = !DILocalVariable(name: "i_mode", scope: !1713, file: !3, line: 233, type: !1216)
!1717 = !DILocalVariable(name: "ctx", scope: !1713, file: !3, line: 234, type: !128)
!1718 = !DILocation(line: 0, scope: !1713, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 847, column: 9, scope: !1409)
!1720 = !DILocation(line: 233, column: 57, scope: !1713, inlinedAt: !1719)
!1721 = !{!1351, !1353, i64 11824}
!1722 = !DILocation(line: 233, column: 24, scope: !1713, inlinedAt: !1719)
!1723 = !DILocation(line: 237, column: 16, scope: !1724, inlinedAt: !1719)
!1724 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 237, column: 9)
!1725 = !{!1351, !1353, i64 10996}
!1726 = !DILocation(line: 237, column: 28, scope: !1724, inlinedAt: !1719)
!1727 = !DILocation(line: 237, column: 39, scope: !1724, inlinedAt: !1719)
!1728 = !DILocation(line: 237, column: 48, scope: !1724, inlinedAt: !1719)
!1729 = !{!1351, !1357, i64 11144}
!1730 = !DILocation(line: 237, column: 71, scope: !1724, inlinedAt: !1719)
!1731 = !DILocation(line: 237, column: 79, scope: !1724, inlinedAt: !1719)
!1732 = !DILocation(line: 237, column: 42, scope: !1724, inlinedAt: !1719)
!1733 = !DILocation(line: 237, column: 84, scope: !1724, inlinedAt: !1719)
!1734 = !DILocation(line: 237, column: 9, scope: !1713, inlinedAt: !1719)
!1735 = !DILocation(line: 241, column: 28, scope: !1736, inlinedAt: !1719)
!1736 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 241, column: 9)
!1737 = !DILocation(line: 241, column: 38, scope: !1736, inlinedAt: !1719)
!1738 = !DILocation(line: 241, column: 47, scope: !1736, inlinedAt: !1719)
!1739 = !DILocation(line: 241, column: 70, scope: !1736, inlinedAt: !1719)
!1740 = !{!1351, !1353, i64 11100}
!1741 = !DILocation(line: 241, column: 41, scope: !1736, inlinedAt: !1719)
!1742 = !DILocation(line: 241, column: 83, scope: !1736, inlinedAt: !1719)
!1743 = !DILocation(line: 241, column: 9, scope: !1713, inlinedAt: !1719)
!1744 = !DILocation(line: 246, column: 45, scope: !1713, inlinedAt: !1719)
!1745 = !DILocation(line: 246, column: 59, scope: !1713, inlinedAt: !1719)
!1746 = !DILocation(line: 246, column: 5, scope: !1713, inlinedAt: !1719)
!1747 = !DILocation(line: 247, column: 9, scope: !1713, inlinedAt: !1719)
!1748 = !DILocation(line: 249, column: 56, scope: !1749, inlinedAt: !1719)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 248, column: 5)
!1750 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 247, column: 9)
!1751 = !DILocation(line: 249, column: 9, scope: !1749, inlinedAt: !1719)
!1752 = !DILocation(line: 250, column: 13, scope: !1749, inlinedAt: !1719)
!1753 = !DILocation(line: 252, column: 65, scope: !1754, inlinedAt: !1719)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 251, column: 9)
!1755 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 250, column: 13)
!1756 = !DILocation(line: 252, column: 13, scope: !1754, inlinedAt: !1719)
!1757 = !DILocation(line: 253, column: 9, scope: !1754, inlinedAt: !1719)
!1758 = !DILocation(line: 851, column: 19, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 851, column: 13)
!1760 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 850, column: 5)
!1761 = !DILocation(line: 851, column: 13, scope: !1760)
!1762 = !DILocation(line: 853, column: 27, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 853, column: 17)
!1764 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 852, column: 9)
!1765 = !DILocation(line: 853, column: 17, scope: !1763)
!1766 = !DILocation(line: 853, column: 37, scope: !1763)
!1767 = !DILocation(line: 853, column: 17, scope: !1764)
!1768 = !DILocation(line: 855, column: 17, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 854, column: 13)
!1770 = !DILocation(line: 856, column: 13, scope: !1769)
!1771 = !DILocation(line: 857, column: 13, scope: !1764)
!1772 = !DILocation(line: 858, column: 9, scope: !1764)
!1773 = !DILocation(line: 861, column: 27, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 861, column: 17)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 860, column: 9)
!1776 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 859, column: 18)
!1777 = !DILocation(line: 861, column: 17, scope: !1774)
!1778 = !DILocation(line: 861, column: 37, scope: !1774)
!1779 = !DILocation(line: 861, column: 17, scope: !1775)
!1780 = !DILocation(line: 863, column: 17, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 862, column: 13)
!1782 = !DILocation(line: 864, column: 17, scope: !1781)
!1783 = !DILocation(line: 865, column: 13, scope: !1781)
!1784 = !DILocation(line: 866, column: 13, scope: !1775)
!1785 = !DILocation(line: 867, column: 13, scope: !1775)
!1786 = !DILocation(line: 868, column: 9, scope: !1775)
!1787 = !DILocation(line: 871, column: 27, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 871, column: 17)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 870, column: 9)
!1790 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 869, column: 18)
!1791 = !DILocation(line: 871, column: 17, scope: !1788)
!1792 = !DILocation(line: 871, column: 37, scope: !1788)
!1793 = !DILocation(line: 871, column: 17, scope: !1789)
!1794 = !DILocation(line: 873, column: 17, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 872, column: 13)
!1796 = !DILocation(line: 874, column: 17, scope: !1795)
!1797 = !DILocation(line: 875, column: 13, scope: !1795)
!1798 = !DILocation(line: 876, column: 13, scope: !1789)
!1799 = !DILocation(line: 877, column: 13, scope: !1789)
!1800 = !DILocation(line: 878, column: 9, scope: !1789)
!1801 = !DILocation(line: 883, column: 50, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 881, column: 5)
!1803 = !DILocation(line: 883, column: 44, scope: !1802)
!1804 = !DILocation(line: 883, column: 9, scope: !1802)
!1805 = !DILocation(line: 884, column: 44, scope: !1802)
!1806 = !DILocation(line: 884, column: 9, scope: !1802)
!1807 = !DILocation(line: 885, column: 44, scope: !1802)
!1808 = !DILocation(line: 885, column: 9, scope: !1802)
!1809 = !DILocation(line: 886, column: 44, scope: !1802)
!1810 = !DILocation(line: 886, column: 9, scope: !1802)
!1811 = !DILocation(line: 889, column: 23, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 889, column: 13)
!1813 = !DILocation(line: 889, column: 13, scope: !1812)
!1814 = !DILocation(line: 889, column: 33, scope: !1812)
!1815 = !DILocation(line: 889, column: 13, scope: !1802)
!1816 = !DILocalVariable(name: "h", arg: 1, scope: !1817, file: !3, line: 421, type: !117)
!1817 = distinct !DISubprogram(name: "x264_cabac_mb_ref", scope: !3, file: !3, line: 421, type: !1818, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1820)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{null, !117, !1211, !128, !128}
!1820 = !{!1816, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828}
!1821 = !DILocalVariable(name: "cb", arg: 2, scope: !1817, file: !3, line: 421, type: !1211)
!1822 = !DILocalVariable(name: "i_list", arg: 3, scope: !1817, file: !3, line: 421, type: !128)
!1823 = !DILocalVariable(name: "idx", arg: 4, scope: !1817, file: !3, line: 421, type: !128)
!1824 = !DILocalVariable(name: "i8", scope: !1817, file: !3, line: 423, type: !1216)
!1825 = !DILocalVariable(name: "i_refa", scope: !1817, file: !3, line: 424, type: !1216)
!1826 = !DILocalVariable(name: "i_refb", scope: !1817, file: !3, line: 425, type: !1216)
!1827 = !DILocalVariable(name: "i_ref", scope: !1817, file: !3, line: 426, type: !128)
!1828 = !DILocalVariable(name: "ctx", scope: !1817, file: !3, line: 427, type: !128)
!1829 = !DILocation(line: 0, scope: !1817, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 891, column: 13, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 890, column: 9)
!1832 = !DILocation(line: 424, column: 24, scope: !1817, inlinedAt: !1830)
!1833 = !DILocation(line: 425, column: 24, scope: !1817, inlinedAt: !1830)
!1834 = !DILocation(line: 426, column: 18, scope: !1817, inlinedAt: !1830)
!1835 = !DILocation(line: 429, column: 16, scope: !1836, inlinedAt: !1830)
!1836 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 429, column: 9)
!1837 = !DILocation(line: 429, column: 20, scope: !1836, inlinedAt: !1830)
!1838 = !DILocation(line: 429, column: 24, scope: !1836, inlinedAt: !1830)
!1839 = !DILocation(line: 429, column: 9, scope: !1817, inlinedAt: !1830)
!1840 = !DILocation(line: 431, column: 16, scope: !1841, inlinedAt: !1830)
!1841 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 431, column: 9)
!1842 = !DILocation(line: 431, column: 20, scope: !1841, inlinedAt: !1830)
!1843 = !DILocation(line: 431, column: 24, scope: !1841, inlinedAt: !1830)
!1844 = !DILocation(line: 431, column: 9, scope: !1817, inlinedAt: !1830)
!1845 = !DILocation(line: 434, column: 18, scope: !1817, inlinedAt: !1830)
!1846 = !DILocation(line: 434, column: 5, scope: !1817, inlinedAt: !1830)
!1847 = !DILocation(line: 436, column: 44, scope: !1848, inlinedAt: !1830)
!1848 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 435, column: 5)
!1849 = !DILocation(line: 436, column: 9, scope: !1848, inlinedAt: !1830)
!1850 = !DILocation(line: 437, column: 17, scope: !1851, inlinedAt: !1830)
!1851 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 437, column: 13)
!1852 = !DILocation(line: 442, column: 14, scope: !1848, inlinedAt: !1830)
!1853 = distinct !{!1853, !1846, !1854, !1570}
!1854 = !DILocation(line: 443, column: 5, scope: !1817, inlinedAt: !1830)
!1855 = !DILocation(line: 444, column: 40, scope: !1817, inlinedAt: !1830)
!1856 = !DILocation(line: 444, column: 5, scope: !1817, inlinedAt: !1830)
!1857 = !DILocation(line: 0, scope: !1817, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 892, column: 13, scope: !1831)
!1859 = !DILocation(line: 424, column: 24, scope: !1817, inlinedAt: !1858)
!1860 = !DILocation(line: 425, column: 24, scope: !1817, inlinedAt: !1858)
!1861 = !DILocation(line: 426, column: 18, scope: !1817, inlinedAt: !1858)
!1862 = !DILocation(line: 429, column: 16, scope: !1836, inlinedAt: !1858)
!1863 = !DILocation(line: 429, column: 20, scope: !1836, inlinedAt: !1858)
!1864 = !DILocation(line: 429, column: 24, scope: !1836, inlinedAt: !1858)
!1865 = !DILocation(line: 429, column: 9, scope: !1817, inlinedAt: !1858)
!1866 = !DILocation(line: 431, column: 16, scope: !1841, inlinedAt: !1858)
!1867 = !DILocation(line: 431, column: 20, scope: !1841, inlinedAt: !1858)
!1868 = !DILocation(line: 431, column: 24, scope: !1841, inlinedAt: !1858)
!1869 = !DILocation(line: 431, column: 9, scope: !1817, inlinedAt: !1858)
!1870 = !DILocation(line: 434, column: 18, scope: !1817, inlinedAt: !1858)
!1871 = !DILocation(line: 434, column: 5, scope: !1817, inlinedAt: !1858)
!1872 = !DILocation(line: 436, column: 44, scope: !1848, inlinedAt: !1858)
!1873 = !DILocation(line: 436, column: 9, scope: !1848, inlinedAt: !1858)
!1874 = !DILocation(line: 437, column: 17, scope: !1851, inlinedAt: !1858)
!1875 = !DILocation(line: 442, column: 14, scope: !1848, inlinedAt: !1858)
!1876 = distinct !{!1876, !1871, !1877, !1570}
!1877 = !DILocation(line: 443, column: 5, scope: !1817, inlinedAt: !1858)
!1878 = !DILocation(line: 444, column: 40, scope: !1817, inlinedAt: !1858)
!1879 = !DILocation(line: 444, column: 5, scope: !1817, inlinedAt: !1858)
!1880 = !DILocation(line: 0, scope: !1817, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 893, column: 13, scope: !1831)
!1882 = !DILocation(line: 424, column: 24, scope: !1817, inlinedAt: !1881)
!1883 = !DILocation(line: 425, column: 24, scope: !1817, inlinedAt: !1881)
!1884 = !DILocation(line: 426, column: 18, scope: !1817, inlinedAt: !1881)
!1885 = !DILocation(line: 429, column: 16, scope: !1836, inlinedAt: !1881)
!1886 = !DILocation(line: 429, column: 20, scope: !1836, inlinedAt: !1881)
!1887 = !DILocation(line: 429, column: 24, scope: !1836, inlinedAt: !1881)
!1888 = !DILocation(line: 429, column: 9, scope: !1817, inlinedAt: !1881)
!1889 = !DILocation(line: 431, column: 16, scope: !1841, inlinedAt: !1881)
!1890 = !DILocation(line: 431, column: 20, scope: !1841, inlinedAt: !1881)
!1891 = !DILocation(line: 431, column: 24, scope: !1841, inlinedAt: !1881)
!1892 = !DILocation(line: 431, column: 9, scope: !1817, inlinedAt: !1881)
!1893 = !DILocation(line: 434, column: 18, scope: !1817, inlinedAt: !1881)
!1894 = !DILocation(line: 434, column: 5, scope: !1817, inlinedAt: !1881)
!1895 = !DILocation(line: 436, column: 44, scope: !1848, inlinedAt: !1881)
!1896 = !DILocation(line: 436, column: 9, scope: !1848, inlinedAt: !1881)
!1897 = !DILocation(line: 437, column: 17, scope: !1851, inlinedAt: !1881)
!1898 = !DILocation(line: 442, column: 14, scope: !1848, inlinedAt: !1881)
!1899 = distinct !{!1899, !1894, !1900, !1570}
!1900 = !DILocation(line: 443, column: 5, scope: !1817, inlinedAt: !1881)
!1901 = !DILocation(line: 444, column: 40, scope: !1817, inlinedAt: !1881)
!1902 = !DILocation(line: 444, column: 5, scope: !1817, inlinedAt: !1881)
!1903 = !DILocation(line: 0, scope: !1817, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 894, column: 13, scope: !1831)
!1905 = !DILocation(line: 424, column: 24, scope: !1817, inlinedAt: !1904)
!1906 = !DILocation(line: 425, column: 24, scope: !1817, inlinedAt: !1904)
!1907 = !DILocation(line: 426, column: 18, scope: !1817, inlinedAt: !1904)
!1908 = !DILocation(line: 429, column: 16, scope: !1836, inlinedAt: !1904)
!1909 = !DILocation(line: 429, column: 20, scope: !1836, inlinedAt: !1904)
!1910 = !DILocation(line: 429, column: 24, scope: !1836, inlinedAt: !1904)
!1911 = !DILocation(line: 429, column: 9, scope: !1817, inlinedAt: !1904)
!1912 = !DILocation(line: 431, column: 16, scope: !1841, inlinedAt: !1904)
!1913 = !DILocation(line: 431, column: 20, scope: !1841, inlinedAt: !1904)
!1914 = !DILocation(line: 431, column: 24, scope: !1841, inlinedAt: !1904)
!1915 = !DILocation(line: 431, column: 9, scope: !1817, inlinedAt: !1904)
!1916 = !DILocation(line: 434, column: 18, scope: !1817, inlinedAt: !1904)
!1917 = !DILocation(line: 434, column: 5, scope: !1817, inlinedAt: !1904)
!1918 = !DILocation(line: 436, column: 44, scope: !1848, inlinedAt: !1904)
!1919 = !DILocation(line: 436, column: 9, scope: !1848, inlinedAt: !1904)
!1920 = !DILocation(line: 437, column: 17, scope: !1851, inlinedAt: !1904)
!1921 = !DILocation(line: 442, column: 14, scope: !1848, inlinedAt: !1904)
!1922 = distinct !{!1922, !1917, !1923, !1570}
!1923 = !DILocation(line: 443, column: 5, scope: !1817, inlinedAt: !1904)
!1924 = !DILocation(line: 444, column: 40, scope: !1817, inlinedAt: !1904)
!1925 = !DILocation(line: 444, column: 5, scope: !1817, inlinedAt: !1904)
!1926 = !DILocation(line: 895, column: 9, scope: !1831)
!1927 = !DILocation(line: 898, column: 13, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 897, column: 9)
!1929 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 897, column: 9)
!1930 = !DILocation(line: 72, column: 17, scope: !1430, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 977, column: 20, scope: !1397)
!1932 = !DILocation(line: 903, column: 50, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 901, column: 5)
!1934 = !DILocation(line: 903, column: 44, scope: !1933)
!1935 = !DILocation(line: 903, column: 9, scope: !1933)
!1936 = !DILocation(line: 904, column: 44, scope: !1933)
!1937 = !DILocation(line: 904, column: 9, scope: !1933)
!1938 = !DILocation(line: 905, column: 44, scope: !1933)
!1939 = !DILocation(line: 905, column: 9, scope: !1933)
!1940 = !DILocation(line: 906, column: 44, scope: !1933)
!1941 = !DILocation(line: 906, column: 9, scope: !1933)
!1942 = !DILocation(line: 909, column: 9, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 909, column: 9)
!1944 = !DILocation(line: 911, column: 19, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 911, column: 17)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 910, column: 9)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 909, column: 9)
!1948 = !DILocation(line: 911, column: 72, scope: !1945)
!1949 = !DILocation(line: 911, column: 17, scope: !1946)
!1950 = !DILocation(line: 914, column: 60, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 914, column: 21)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 913, column: 13)
!1953 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 913, column: 13)
!1954 = !DILocation(line: 914, column: 21, scope: !1951)
!1955 = !DILocation(line: 914, column: 21, scope: !1952)
!1956 = !DILocation(line: 0, scope: !1817, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 915, column: 21, scope: !1951)
!1958 = !DILocation(line: 424, column: 24, scope: !1817, inlinedAt: !1957)
!1959 = !DILocation(line: 425, column: 24, scope: !1817, inlinedAt: !1957)
!1960 = !DILocation(line: 426, column: 18, scope: !1817, inlinedAt: !1957)
!1961 = !DILocation(line: 429, column: 16, scope: !1836, inlinedAt: !1957)
!1962 = !DILocation(line: 429, column: 20, scope: !1836, inlinedAt: !1957)
!1963 = !DILocation(line: 429, column: 24, scope: !1836, inlinedAt: !1957)
!1964 = !DILocation(line: 429, column: 9, scope: !1817, inlinedAt: !1957)
!1965 = !DILocation(line: 431, column: 16, scope: !1841, inlinedAt: !1957)
!1966 = !DILocation(line: 431, column: 20, scope: !1841, inlinedAt: !1957)
!1967 = !DILocation(line: 431, column: 24, scope: !1841, inlinedAt: !1957)
!1968 = !DILocation(line: 431, column: 9, scope: !1817, inlinedAt: !1957)
!1969 = !DILocation(line: 434, column: 18, scope: !1817, inlinedAt: !1957)
!1970 = !DILocation(line: 434, column: 5, scope: !1817, inlinedAt: !1957)
!1971 = !DILocation(line: 436, column: 44, scope: !1848, inlinedAt: !1957)
!1972 = !DILocation(line: 436, column: 9, scope: !1848, inlinedAt: !1957)
!1973 = !DILocation(line: 437, column: 17, scope: !1851, inlinedAt: !1957)
!1974 = !DILocation(line: 442, column: 14, scope: !1848, inlinedAt: !1957)
!1975 = distinct !{!1975, !1970, !1976, !1570}
!1976 = !DILocation(line: 443, column: 5, scope: !1817, inlinedAt: !1957)
!1977 = !DILocation(line: 444, column: 40, scope: !1817, inlinedAt: !1957)
!1978 = !DILocation(line: 444, column: 5, scope: !1817, inlinedAt: !1957)
!1979 = !DILocation(line: 915, column: 21, scope: !1951)
!1980 = distinct !{!1980, !1942, !1981, !1570}
!1981 = !DILocation(line: 916, column: 9, scope: !1943)
!1982 = !DILocation(line: 919, column: 13, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 918, column: 9)
!1984 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 918, column: 9)
!1985 = !DILocation(line: 921, column: 13, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 920, column: 9)
!1987 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 920, column: 9)
!1988 = !DILocation(line: 926, column: 9, scope: !1417)
!1989 = !DILocation(line: 926, column: 13, scope: !1417)
!1990 = !DILocation(line: 931, column: 28, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 930, column: 9)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 929, column: 9)
!1993 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 929, column: 9)
!1994 = !DILocation(line: 932, column: 28, scope: !1991)
!1995 = !DILocation(line: 932, column: 13, scope: !1991)
!1996 = !DILocation(line: 931, column: 26, scope: !1991)
!1997 = !DILocation(line: 932, column: 26, scope: !1991)
!1998 = !DILocation(line: 935, column: 9, scope: !1425)
!1999 = !DILocation(line: 957, column: 9, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 957, column: 9)
!2001 = !DILocation(line: 937, column: 35, scope: !1423)
!2002 = !DILocation(line: 0, scope: !1423)
!2003 = !DILocation(line: 939, column: 27, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 939, column: 17)
!2005 = !DILocation(line: 939, column: 17, scope: !1423)
!2006 = !DILocation(line: 941, column: 27, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 941, column: 21)
!2008 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 940, column: 13)
!2009 = !DILocation(line: 941, column: 21, scope: !2008)
!2010 = !DILocation(line: 943, column: 25, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 943, column: 25)
!2012 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 942, column: 17)
!2013 = !DILocation(line: 943, column: 25, scope: !2012)
!2014 = !DILocation(line: 0, scope: !1817, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 943, column: 45, scope: !2011)
!2016 = !DILocation(line: 424, column: 24, scope: !1817, inlinedAt: !2015)
!2017 = !DILocation(line: 425, column: 24, scope: !1817, inlinedAt: !2015)
!2018 = !DILocation(line: 426, column: 18, scope: !1817, inlinedAt: !2015)
!2019 = !DILocation(line: 429, column: 16, scope: !1836, inlinedAt: !2015)
!2020 = !DILocation(line: 429, column: 20, scope: !1836, inlinedAt: !2015)
!2021 = !DILocation(line: 429, column: 24, scope: !1836, inlinedAt: !2015)
!2022 = !DILocation(line: 429, column: 9, scope: !1817, inlinedAt: !2015)
!2023 = !DILocation(line: 431, column: 16, scope: !1841, inlinedAt: !2015)
!2024 = !DILocation(line: 431, column: 20, scope: !1841, inlinedAt: !2015)
!2025 = !DILocation(line: 431, column: 24, scope: !1841, inlinedAt: !2015)
!2026 = !DILocation(line: 431, column: 9, scope: !1817, inlinedAt: !2015)
!2027 = !DILocation(line: 434, column: 18, scope: !1817, inlinedAt: !2015)
!2028 = !DILocation(line: 434, column: 5, scope: !1817, inlinedAt: !2015)
!2029 = !DILocation(line: 436, column: 44, scope: !1848, inlinedAt: !2015)
!2030 = !DILocation(line: 436, column: 9, scope: !1848, inlinedAt: !2015)
!2031 = !DILocation(line: 437, column: 17, scope: !1851, inlinedAt: !2015)
!2032 = !DILocation(line: 442, column: 14, scope: !1848, inlinedAt: !2015)
!2033 = distinct !{!2033, !2028, !2034, !1570}
!2034 = !DILocation(line: 443, column: 5, scope: !1817, inlinedAt: !2015)
!2035 = !DILocation(line: 947, column: 25, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 947, column: 25)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 946, column: 17)
!2038 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 945, column: 26)
!2039 = !DILocation(line: 947, column: 25, scope: !2037)
!2040 = !DILocation(line: 0, scope: !1817, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 947, column: 45, scope: !2036)
!2042 = !DILocation(line: 424, column: 24, scope: !1817, inlinedAt: !2041)
!2043 = !DILocation(line: 425, column: 24, scope: !1817, inlinedAt: !2041)
!2044 = !DILocation(line: 426, column: 18, scope: !1817, inlinedAt: !2041)
!2045 = !DILocation(line: 429, column: 16, scope: !1836, inlinedAt: !2041)
!2046 = !DILocation(line: 429, column: 20, scope: !1836, inlinedAt: !2041)
!2047 = !DILocation(line: 429, column: 24, scope: !1836, inlinedAt: !2041)
!2048 = !DILocation(line: 429, column: 9, scope: !1817, inlinedAt: !2041)
!2049 = !DILocation(line: 431, column: 16, scope: !1841, inlinedAt: !2041)
!2050 = !DILocation(line: 431, column: 20, scope: !1841, inlinedAt: !2041)
!2051 = !DILocation(line: 431, column: 24, scope: !1841, inlinedAt: !2041)
!2052 = !DILocation(line: 431, column: 9, scope: !1817, inlinedAt: !2041)
!2053 = !DILocation(line: 434, column: 18, scope: !1817, inlinedAt: !2041)
!2054 = !DILocation(line: 434, column: 5, scope: !1817, inlinedAt: !2041)
!2055 = !DILocation(line: 436, column: 44, scope: !1848, inlinedAt: !2041)
!2056 = !DILocation(line: 436, column: 9, scope: !1848, inlinedAt: !2041)
!2057 = !DILocation(line: 437, column: 17, scope: !1851, inlinedAt: !2041)
!2058 = !DILocation(line: 442, column: 14, scope: !1848, inlinedAt: !2041)
!2059 = distinct !{!2059, !2054, !2060, !1570}
!2060 = !DILocation(line: 443, column: 5, scope: !1817, inlinedAt: !2041)
!2061 = !DILocation(line: 444, column: 40, scope: !1817, inlinedAt: !2041)
!2062 = !DILocation(line: 444, column: 5, scope: !1817, inlinedAt: !2041)
!2063 = !DILocation(line: 947, column: 45, scope: !2036)
!2064 = !DILocation(line: 948, column: 25, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 948, column: 25)
!2066 = !DILocation(line: 948, column: 25, scope: !2037)
!2067 = !DILocation(line: 0, scope: !1817, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 948, column: 45, scope: !2065)
!2069 = !DILocation(line: 424, column: 24, scope: !1817, inlinedAt: !2068)
!2070 = !DILocation(line: 425, column: 24, scope: !1817, inlinedAt: !2068)
!2071 = !DILocation(line: 426, column: 18, scope: !1817, inlinedAt: !2068)
!2072 = !DILocation(line: 429, column: 16, scope: !1836, inlinedAt: !2068)
!2073 = !DILocation(line: 429, column: 20, scope: !1836, inlinedAt: !2068)
!2074 = !DILocation(line: 429, column: 24, scope: !1836, inlinedAt: !2068)
!2075 = !DILocation(line: 429, column: 9, scope: !1817, inlinedAt: !2068)
!2076 = !DILocation(line: 431, column: 16, scope: !1841, inlinedAt: !2068)
!2077 = !DILocation(line: 431, column: 20, scope: !1841, inlinedAt: !2068)
!2078 = !DILocation(line: 431, column: 24, scope: !1841, inlinedAt: !2068)
!2079 = !DILocation(line: 431, column: 9, scope: !1817, inlinedAt: !2068)
!2080 = !DILocation(line: 434, column: 18, scope: !1817, inlinedAt: !2068)
!2081 = !DILocation(line: 434, column: 5, scope: !1817, inlinedAt: !2068)
!2082 = !DILocation(line: 436, column: 44, scope: !1848, inlinedAt: !2068)
!2083 = !DILocation(line: 436, column: 9, scope: !1848, inlinedAt: !2068)
!2084 = !DILocation(line: 437, column: 17, scope: !1851, inlinedAt: !2068)
!2085 = !DILocation(line: 442, column: 14, scope: !1848, inlinedAt: !2068)
!2086 = distinct !{!2086, !2081, !2087, !1570}
!2087 = !DILocation(line: 443, column: 5, scope: !1817, inlinedAt: !2068)
!2088 = !DILocation(line: 952, column: 25, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 952, column: 25)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 951, column: 17)
!2091 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 950, column: 26)
!2092 = !DILocation(line: 952, column: 25, scope: !2090)
!2093 = !DILocation(line: 0, scope: !1817, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 952, column: 45, scope: !2089)
!2095 = !DILocation(line: 424, column: 24, scope: !1817, inlinedAt: !2094)
!2096 = !DILocation(line: 425, column: 24, scope: !1817, inlinedAt: !2094)
!2097 = !DILocation(line: 426, column: 18, scope: !1817, inlinedAt: !2094)
!2098 = !DILocation(line: 429, column: 16, scope: !1836, inlinedAt: !2094)
!2099 = !DILocation(line: 429, column: 20, scope: !1836, inlinedAt: !2094)
!2100 = !DILocation(line: 429, column: 24, scope: !1836, inlinedAt: !2094)
!2101 = !DILocation(line: 429, column: 9, scope: !1817, inlinedAt: !2094)
!2102 = !DILocation(line: 431, column: 16, scope: !1841, inlinedAt: !2094)
!2103 = !DILocation(line: 431, column: 20, scope: !1841, inlinedAt: !2094)
!2104 = !DILocation(line: 431, column: 24, scope: !1841, inlinedAt: !2094)
!2105 = !DILocation(line: 431, column: 9, scope: !1817, inlinedAt: !2094)
!2106 = !DILocation(line: 434, column: 18, scope: !1817, inlinedAt: !2094)
!2107 = !DILocation(line: 434, column: 5, scope: !1817, inlinedAt: !2094)
!2108 = !DILocation(line: 436, column: 44, scope: !1848, inlinedAt: !2094)
!2109 = !DILocation(line: 436, column: 9, scope: !1848, inlinedAt: !2094)
!2110 = !DILocation(line: 437, column: 17, scope: !1851, inlinedAt: !2094)
!2111 = !DILocation(line: 442, column: 14, scope: !1848, inlinedAt: !2094)
!2112 = distinct !{!2112, !2107, !2113, !1570}
!2113 = !DILocation(line: 443, column: 5, scope: !1817, inlinedAt: !2094)
!2114 = !DILocation(line: 444, column: 40, scope: !1817, inlinedAt: !2094)
!2115 = !DILocation(line: 444, column: 5, scope: !1817, inlinedAt: !2094)
!2116 = !DILocation(line: 952, column: 45, scope: !2089)
!2117 = !DILocation(line: 953, column: 25, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 953, column: 25)
!2119 = !DILocation(line: 953, column: 25, scope: !2090)
!2120 = !DILocation(line: 0, scope: !1817, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 953, column: 45, scope: !2118)
!2122 = !DILocation(line: 424, column: 24, scope: !1817, inlinedAt: !2121)
!2123 = !DILocation(line: 425, column: 24, scope: !1817, inlinedAt: !2121)
!2124 = !DILocation(line: 426, column: 18, scope: !1817, inlinedAt: !2121)
!2125 = !DILocation(line: 429, column: 16, scope: !1836, inlinedAt: !2121)
!2126 = !DILocation(line: 429, column: 20, scope: !1836, inlinedAt: !2121)
!2127 = !DILocation(line: 429, column: 24, scope: !1836, inlinedAt: !2121)
!2128 = !DILocation(line: 429, column: 9, scope: !1817, inlinedAt: !2121)
!2129 = !DILocation(line: 431, column: 16, scope: !1841, inlinedAt: !2121)
!2130 = !DILocation(line: 431, column: 20, scope: !1841, inlinedAt: !2121)
!2131 = !DILocation(line: 431, column: 24, scope: !1841, inlinedAt: !2121)
!2132 = !DILocation(line: 431, column: 9, scope: !1817, inlinedAt: !2121)
!2133 = !DILocation(line: 434, column: 18, scope: !1817, inlinedAt: !2121)
!2134 = !DILocation(line: 434, column: 5, scope: !1817, inlinedAt: !2121)
!2135 = !DILocation(line: 436, column: 44, scope: !1848, inlinedAt: !2121)
!2136 = !DILocation(line: 436, column: 9, scope: !1848, inlinedAt: !2121)
!2137 = !DILocation(line: 437, column: 17, scope: !1851, inlinedAt: !2121)
!2138 = !DILocation(line: 442, column: 14, scope: !1848, inlinedAt: !2121)
!2139 = distinct !{!2139, !2134, !2140, !1570}
!2140 = !DILocation(line: 443, column: 5, scope: !1817, inlinedAt: !2121)
!2141 = !DILocation(line: 0, scope: !2007)
!2142 = distinct !{!2142, !1998, !2143, !1570}
!2143 = !DILocation(line: 956, column: 9, scope: !1425)
!2144 = !DILocation(line: 959, column: 23, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 959, column: 17)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 958, column: 9)
!2147 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 957, column: 9)
!2148 = !DILocation(line: 959, column: 17, scope: !2146)
!2149 = !DILocation(line: 961, column: 21, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 961, column: 21)
!2151 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 960, column: 13)
!2152 = !DILocation(line: 961, column: 21, scope: !2151)
!2153 = !DILocalVariable(name: "h", arg: 1, scope: !2154, file: !3, line: 497, type: !117)
!2154 = distinct !DISubprogram(name: "x264_cabac_mb_mvd", scope: !3, file: !3, line: 497, type: !1252, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2155)
!2155 = !{!2153, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163}
!2156 = !DILocalVariable(name: "cb", arg: 2, scope: !2154, file: !3, line: 497, type: !1211)
!2157 = !DILocalVariable(name: "i_list", arg: 3, scope: !2154, file: !3, line: 497, type: !128)
!2158 = !DILocalVariable(name: "idx", arg: 4, scope: !2154, file: !3, line: 497, type: !128)
!2159 = !DILocalVariable(name: "width", arg: 5, scope: !2154, file: !3, line: 497, type: !128)
!2160 = !DILocalVariable(name: "height", arg: 6, scope: !2154, file: !3, line: 497, type: !128)
!2161 = !DILocalVariable(name: "mvp", scope: !2154, file: !3, line: 499, type: !577, align: 32)
!2162 = !DILocalVariable(name: "mdx", scope: !2154, file: !3, line: 500, type: !128)
!2163 = !DILocalVariable(name: "mdy", scope: !2154, file: !3, line: 500, type: !128)
!2164 = !DILocation(line: 0, scope: !2154, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 961, column: 41, scope: !2150)
!2166 = !DILocation(line: 499, column: 5, scope: !2154, inlinedAt: !2165)
!2167 = !DILocation(line: 503, column: 5, scope: !2154, inlinedAt: !2165)
!2168 = !DILocation(line: 504, column: 11, scope: !2154, inlinedAt: !2165)
!2169 = !{!2170, !2170, i64 0}
!2170 = !{!"short", !1354, i64 0}
!2171 = !DILocation(line: 504, column: 56, scope: !2154, inlinedAt: !2165)
!2172 = !DILocation(line: 504, column: 54, scope: !2154, inlinedAt: !2165)
!2173 = !DILocation(line: 505, column: 11, scope: !2154, inlinedAt: !2165)
!2174 = !DILocation(line: 505, column: 56, scope: !2154, inlinedAt: !2165)
!2175 = !DILocation(line: 505, column: 54, scope: !2154, inlinedAt: !2165)
!2176 = !DILocation(line: 508, column: 5, scope: !2154, inlinedAt: !2165)
!2177 = !DILocation(line: 509, column: 5, scope: !2154, inlinedAt: !2165)
!2178 = !DILocalVariable(name: "a", arg: 1, scope: !2179, file: !6, line: 344, type: !128)
!2179 = distinct !DISubprogram(name: "pack16to32_mask", scope: !6, file: !6, line: 344, type: !2180, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!103, !128, !128}
!2182 = !{!2178, !2183}
!2183 = !DILocalVariable(name: "b", arg: 2, scope: !2179, file: !6, line: 344, type: !128)
!2184 = !DILocation(line: 0, scope: !2179, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 512, column: 94, scope: !2154, inlinedAt: !2165)
!2186 = !DILocation(line: 349, column: 13, scope: !2179, inlinedAt: !2185)
!2187 = !DILocation(line: 349, column: 26, scope: !2179, inlinedAt: !2185)
!2188 = !DILocation(line: 349, column: 22, scope: !2179, inlinedAt: !2185)
!2189 = !DILocalVariable(name: "h", arg: 1, scope: !2190, file: !6, line: 390, type: !117)
!2190 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd", scope: !6, file: !6, line: 390, type: !2191, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2193)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{null, !117, !128, !128, !128, !128, !128, !103}
!2193 = !{!2189, !2194, !2195, !2196, !2197, !2198, !2199}
!2194 = !DILocalVariable(name: "x", arg: 2, scope: !2190, file: !6, line: 390, type: !128)
!2195 = !DILocalVariable(name: "y", arg: 3, scope: !2190, file: !6, line: 390, type: !128)
!2196 = !DILocalVariable(name: "width", arg: 4, scope: !2190, file: !6, line: 390, type: !128)
!2197 = !DILocalVariable(name: "height", arg: 5, scope: !2190, file: !6, line: 390, type: !128)
!2198 = !DILocalVariable(name: "i_list", arg: 6, scope: !2190, file: !6, line: 390, type: !128)
!2199 = !DILocalVariable(name: "mv", arg: 7, scope: !2190, file: !6, line: 390, type: !103)
!2200 = !DILocation(line: 0, scope: !2190, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 512, column: 5, scope: !2154, inlinedAt: !2165)
!2202 = !DILocation(line: 392, column: 35, scope: !2190, inlinedAt: !2201)
!2203 = !DILocalVariable(name: "dst", arg: 1, scope: !2204, file: !6, line: 368, type: !187)
!2204 = distinct !DISubprogram(name: "x264_macroblock_cache_rect4", scope: !6, file: !6, line: 368, type: !2205, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !187, !128, !128, !103}
!2207 = !{!2203, !2208, !2209, !2210, !2211, !2212, !2213}
!2208 = !DILocalVariable(name: "width", arg: 2, scope: !2204, file: !6, line: 368, type: !128)
!2209 = !DILocalVariable(name: "height", arg: 3, scope: !2204, file: !6, line: 368, type: !128)
!2210 = !DILocalVariable(name: "val", arg: 4, scope: !2204, file: !6, line: 368, type: !103)
!2211 = !DILocalVariable(name: "dy", scope: !2204, file: !6, line: 370, type: !128)
!2212 = !DILocalVariable(name: "dx", scope: !2204, file: !6, line: 370, type: !128)
!2213 = !DILocalVariable(name: "val64", scope: !2214, file: !6, line: 379, type: !107)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !6, line: 378, column: 5)
!2215 = distinct !DILexicalBlock(scope: !2204, file: !6, line: 371, column: 9)
!2216 = !DILocation(line: 0, scope: !2204, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 392, column: 5, scope: !2190, inlinedAt: !2201)
!2218 = !DILocation(line: 379, column: 26, scope: !2214, inlinedAt: !2217)
!2219 = !DILocation(line: 379, column: 30, scope: !2214, inlinedAt: !2217)
!2220 = !DILocation(line: 0, scope: !2214, inlinedAt: !2217)
!2221 = !DILocation(line: 382, column: 43, scope: !2222, inlinedAt: !2217)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !6, line: 381, column: 13)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !6, line: 381, column: 13)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !6, line: 380, column: 9)
!2225 = distinct !DILexicalBlock(scope: !2214, file: !6, line: 380, column: 9)
!2226 = !{!1361, !1361, i64 0}
!2227 = !DILocation(line: 382, column: 17, scope: !2222, inlinedAt: !2217)
!2228 = !DILocation(line: 513, column: 1, scope: !2154, inlinedAt: !2165)
!2229 = !DILocation(line: 961, column: 41, scope: !2150)
!2230 = !DILocation(line: 965, column: 21, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 965, column: 21)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 964, column: 13)
!2233 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 963, column: 22)
!2234 = !DILocation(line: 965, column: 21, scope: !2232)
!2235 = !DILocation(line: 0, scope: !2154, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 965, column: 41, scope: !2231)
!2237 = !DILocation(line: 499, column: 5, scope: !2154, inlinedAt: !2236)
!2238 = !DILocation(line: 503, column: 5, scope: !2154, inlinedAt: !2236)
!2239 = !DILocation(line: 504, column: 11, scope: !2154, inlinedAt: !2236)
!2240 = !DILocation(line: 504, column: 56, scope: !2154, inlinedAt: !2236)
!2241 = !DILocation(line: 504, column: 54, scope: !2154, inlinedAt: !2236)
!2242 = !DILocation(line: 505, column: 11, scope: !2154, inlinedAt: !2236)
!2243 = !DILocation(line: 505, column: 56, scope: !2154, inlinedAt: !2236)
!2244 = !DILocation(line: 505, column: 54, scope: !2154, inlinedAt: !2236)
!2245 = !DILocation(line: 508, column: 5, scope: !2154, inlinedAt: !2236)
!2246 = !DILocation(line: 509, column: 5, scope: !2154, inlinedAt: !2236)
!2247 = !DILocation(line: 0, scope: !2179, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 512, column: 94, scope: !2154, inlinedAt: !2236)
!2249 = !DILocation(line: 349, column: 13, scope: !2179, inlinedAt: !2248)
!2250 = !DILocation(line: 349, column: 26, scope: !2179, inlinedAt: !2248)
!2251 = !DILocation(line: 349, column: 22, scope: !2179, inlinedAt: !2248)
!2252 = !DILocation(line: 0, scope: !2190, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 512, column: 5, scope: !2154, inlinedAt: !2236)
!2254 = !DILocation(line: 392, column: 35, scope: !2190, inlinedAt: !2253)
!2255 = !DILocation(line: 0, scope: !2204, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 392, column: 5, scope: !2190, inlinedAt: !2253)
!2257 = !DILocation(line: 379, column: 26, scope: !2214, inlinedAt: !2256)
!2258 = !DILocation(line: 379, column: 30, scope: !2214, inlinedAt: !2256)
!2259 = !DILocation(line: 0, scope: !2214, inlinedAt: !2256)
!2260 = !DILocation(line: 382, column: 43, scope: !2222, inlinedAt: !2256)
!2261 = !DILocation(line: 382, column: 17, scope: !2222, inlinedAt: !2256)
!2262 = !DILocation(line: 513, column: 1, scope: !2154, inlinedAt: !2236)
!2263 = !DILocation(line: 965, column: 41, scope: !2231)
!2264 = !DILocation(line: 966, column: 21, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 966, column: 21)
!2266 = !DILocation(line: 966, column: 21, scope: !2232)
!2267 = !DILocation(line: 0, scope: !2154, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 966, column: 41, scope: !2265)
!2269 = !DILocation(line: 499, column: 5, scope: !2154, inlinedAt: !2268)
!2270 = !DILocation(line: 503, column: 5, scope: !2154, inlinedAt: !2268)
!2271 = !DILocation(line: 504, column: 11, scope: !2154, inlinedAt: !2268)
!2272 = !DILocation(line: 504, column: 56, scope: !2154, inlinedAt: !2268)
!2273 = !DILocation(line: 504, column: 54, scope: !2154, inlinedAt: !2268)
!2274 = !DILocation(line: 505, column: 11, scope: !2154, inlinedAt: !2268)
!2275 = !DILocation(line: 505, column: 56, scope: !2154, inlinedAt: !2268)
!2276 = !DILocation(line: 505, column: 54, scope: !2154, inlinedAt: !2268)
!2277 = !DILocation(line: 508, column: 5, scope: !2154, inlinedAt: !2268)
!2278 = !DILocation(line: 509, column: 5, scope: !2154, inlinedAt: !2268)
!2279 = !DILocation(line: 0, scope: !2179, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 512, column: 94, scope: !2154, inlinedAt: !2268)
!2281 = !DILocation(line: 349, column: 13, scope: !2179, inlinedAt: !2280)
!2282 = !DILocation(line: 349, column: 26, scope: !2179, inlinedAt: !2280)
!2283 = !DILocation(line: 349, column: 22, scope: !2179, inlinedAt: !2280)
!2284 = !DILocation(line: 0, scope: !2190, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 512, column: 5, scope: !2154, inlinedAt: !2268)
!2286 = !DILocation(line: 392, column: 35, scope: !2190, inlinedAt: !2285)
!2287 = !DILocation(line: 0, scope: !2204, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 392, column: 5, scope: !2190, inlinedAt: !2285)
!2289 = !DILocation(line: 379, column: 26, scope: !2214, inlinedAt: !2288)
!2290 = !DILocation(line: 379, column: 30, scope: !2214, inlinedAt: !2288)
!2291 = !DILocation(line: 0, scope: !2214, inlinedAt: !2288)
!2292 = !DILocation(line: 382, column: 43, scope: !2222, inlinedAt: !2288)
!2293 = !DILocation(line: 382, column: 17, scope: !2222, inlinedAt: !2288)
!2294 = !DILocation(line: 513, column: 1, scope: !2154, inlinedAt: !2268)
!2295 = !DILocation(line: 966, column: 41, scope: !2265)
!2296 = !DILocation(line: 970, column: 21, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 970, column: 21)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 969, column: 13)
!2299 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 968, column: 22)
!2300 = !DILocation(line: 970, column: 21, scope: !2298)
!2301 = !DILocation(line: 0, scope: !2154, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 970, column: 41, scope: !2297)
!2303 = !DILocation(line: 499, column: 5, scope: !2154, inlinedAt: !2302)
!2304 = !DILocation(line: 503, column: 5, scope: !2154, inlinedAt: !2302)
!2305 = !DILocation(line: 504, column: 11, scope: !2154, inlinedAt: !2302)
!2306 = !DILocation(line: 504, column: 56, scope: !2154, inlinedAt: !2302)
!2307 = !DILocation(line: 504, column: 54, scope: !2154, inlinedAt: !2302)
!2308 = !DILocation(line: 505, column: 11, scope: !2154, inlinedAt: !2302)
!2309 = !DILocation(line: 505, column: 56, scope: !2154, inlinedAt: !2302)
!2310 = !DILocation(line: 505, column: 54, scope: !2154, inlinedAt: !2302)
!2311 = !DILocation(line: 508, column: 5, scope: !2154, inlinedAt: !2302)
!2312 = !DILocation(line: 509, column: 5, scope: !2154, inlinedAt: !2302)
!2313 = !DILocation(line: 0, scope: !2179, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 512, column: 94, scope: !2154, inlinedAt: !2302)
!2315 = !DILocation(line: 349, column: 13, scope: !2179, inlinedAt: !2314)
!2316 = !DILocation(line: 349, column: 26, scope: !2179, inlinedAt: !2314)
!2317 = !DILocation(line: 349, column: 22, scope: !2179, inlinedAt: !2314)
!2318 = !DILocation(line: 0, scope: !2190, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 512, column: 5, scope: !2154, inlinedAt: !2302)
!2320 = !DILocation(line: 392, column: 35, scope: !2190, inlinedAt: !2319)
!2321 = !DILocation(line: 0, scope: !2204, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 392, column: 5, scope: !2190, inlinedAt: !2319)
!2323 = !DILocation(line: 379, column: 26, scope: !2214, inlinedAt: !2322)
!2324 = !DILocation(line: 379, column: 30, scope: !2214, inlinedAt: !2322)
!2325 = !DILocation(line: 0, scope: !2214, inlinedAt: !2322)
!2326 = !DILocation(line: 382, column: 43, scope: !2222, inlinedAt: !2322)
!2327 = !DILocation(line: 382, column: 17, scope: !2222, inlinedAt: !2322)
!2328 = !DILocation(line: 513, column: 1, scope: !2154, inlinedAt: !2302)
!2329 = !DILocation(line: 970, column: 41, scope: !2297)
!2330 = !DILocation(line: 971, column: 21, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 971, column: 21)
!2332 = !DILocation(line: 971, column: 21, scope: !2298)
!2333 = !DILocation(line: 0, scope: !2154, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 971, column: 41, scope: !2331)
!2335 = !DILocation(line: 499, column: 5, scope: !2154, inlinedAt: !2334)
!2336 = !DILocation(line: 503, column: 5, scope: !2154, inlinedAt: !2334)
!2337 = !DILocation(line: 504, column: 11, scope: !2154, inlinedAt: !2334)
!2338 = !DILocation(line: 504, column: 56, scope: !2154, inlinedAt: !2334)
!2339 = !DILocation(line: 504, column: 54, scope: !2154, inlinedAt: !2334)
!2340 = !DILocation(line: 505, column: 11, scope: !2154, inlinedAt: !2334)
!2341 = !DILocation(line: 505, column: 56, scope: !2154, inlinedAt: !2334)
!2342 = !DILocation(line: 505, column: 54, scope: !2154, inlinedAt: !2334)
!2343 = !DILocation(line: 508, column: 5, scope: !2154, inlinedAt: !2334)
!2344 = !DILocation(line: 509, column: 5, scope: !2154, inlinedAt: !2334)
!2345 = !DILocation(line: 0, scope: !2179, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 512, column: 94, scope: !2154, inlinedAt: !2334)
!2347 = !DILocation(line: 349, column: 13, scope: !2179, inlinedAt: !2346)
!2348 = !DILocation(line: 349, column: 26, scope: !2179, inlinedAt: !2346)
!2349 = !DILocation(line: 349, column: 22, scope: !2179, inlinedAt: !2346)
!2350 = !DILocation(line: 0, scope: !2190, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 512, column: 5, scope: !2154, inlinedAt: !2334)
!2352 = !DILocation(line: 392, column: 35, scope: !2190, inlinedAt: !2351)
!2353 = !DILocation(line: 0, scope: !2204, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 392, column: 5, scope: !2190, inlinedAt: !2351)
!2355 = !DILocation(line: 379, column: 26, scope: !2214, inlinedAt: !2354)
!2356 = !DILocation(line: 379, column: 30, scope: !2214, inlinedAt: !2354)
!2357 = !DILocation(line: 0, scope: !2214, inlinedAt: !2354)
!2358 = !DILocation(line: 382, column: 43, scope: !2222, inlinedAt: !2354)
!2359 = !DILocation(line: 382, column: 17, scope: !2222, inlinedAt: !2354)
!2360 = !DILocation(line: 513, column: 1, scope: !2154, inlinedAt: !2334)
!2361 = !DILocation(line: 971, column: 41, scope: !2331)
!2362 = distinct !{!2362, !1999, !2363, !1570}
!2363 = !DILocation(line: 973, column: 9, scope: !2000)
!2364 = !DILocation(line: 974, column: 5, scope: !1418)
!2365 = !DILocation(line: 974, column: 5, scope: !1417)
!2366 = !DILocation(line: 0, scope: !1430, inlinedAt: !1931)
!2367 = !DILocation(line: 72, column: 25, scope: !1430, inlinedAt: !1931)
!2368 = !DILocation(line: 72, column: 19, scope: !1430, inlinedAt: !1931)
!2369 = !DILocation(line: 72, column: 39, scope: !1430, inlinedAt: !1931)
!2370 = !DILocation(line: 72, column: 70, scope: !1430, inlinedAt: !1931)
!2371 = !DILocation(line: 72, column: 12, scope: !1430, inlinedAt: !1931)
!2372 = !DILocation(line: 978, column: 8, scope: !1397)
!2373 = !DILocation(line: 978, column: 29, scope: !1397)
!2374 = !DILocation(line: 978, column: 45, scope: !1397)
!2375 = !DILocation(line: 981, column: 9, scope: !1397)
!2376 = !DILocalVariable(name: "h", arg: 1, scope: !2377, file: !3, line: 257, type: !117)
!2377 = distinct !DISubprogram(name: "x264_cabac_mb_cbp_luma", scope: !3, file: !3, line: 257, type: !115, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2378)
!2378 = !{!2376, !2379, !2380, !2381, !2382}
!2379 = !DILocalVariable(name: "cb", arg: 2, scope: !2377, file: !3, line: 257, type: !1211)
!2380 = !DILocalVariable(name: "cbp", scope: !2377, file: !3, line: 259, type: !128)
!2381 = !DILocalVariable(name: "cbp_l", scope: !2377, file: !3, line: 260, type: !128)
!2382 = !DILocalVariable(name: "cbp_t", scope: !2377, file: !3, line: 261, type: !128)
!2383 = !DILocation(line: 0, scope: !2377, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 983, column: 9, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 982, column: 5)
!2386 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 981, column: 9)
!2387 = !DILocation(line: 259, column: 21, scope: !2377, inlinedAt: !2384)
!2388 = !{!1351, !1353, i64 11812}
!2389 = !DILocation(line: 260, column: 23, scope: !2377, inlinedAt: !2384)
!2390 = !DILocation(line: 260, column: 35, scope: !2377, inlinedAt: !2384)
!2391 = !DILocation(line: 260, column: 17, scope: !2377, inlinedAt: !2384)
!2392 = !DILocation(line: 260, column: 53, scope: !2377, inlinedAt: !2384)
!2393 = !{!1351, !1357, i64 11120}
!2394 = !DILocation(line: 260, column: 63, scope: !2377, inlinedAt: !2384)
!2395 = !DILocation(line: 260, column: 71, scope: !2377, inlinedAt: !2384)
!2396 = !DILocation(line: 260, column: 47, scope: !2377, inlinedAt: !2384)
!2397 = !DILocation(line: 261, column: 35, scope: !2377, inlinedAt: !2384)
!2398 = !DILocation(line: 261, column: 17, scope: !2377, inlinedAt: !2384)
!2399 = !DILocation(line: 261, column: 52, scope: !2377, inlinedAt: !2384)
!2400 = !DILocation(line: 261, column: 62, scope: !2377, inlinedAt: !2384)
!2401 = !DILocation(line: 261, column: 46, scope: !2377, inlinedAt: !2384)
!2402 = !DILocation(line: 262, column: 56, scope: !2377, inlinedAt: !2384)
!2403 = !DILocation(line: 262, column: 40, scope: !2377, inlinedAt: !2384)
!2404 = !DILocation(line: 262, column: 71, scope: !2377, inlinedAt: !2384)
!2405 = !DILocation(line: 262, column: 77, scope: !2377, inlinedAt: !2384)
!2406 = !DILocation(line: 262, column: 61, scope: !2377, inlinedAt: !2384)
!2407 = !DILocation(line: 262, column: 107, scope: !2377, inlinedAt: !2384)
!2408 = !DILocation(line: 262, column: 5, scope: !2377, inlinedAt: !2384)
!2409 = !DILocation(line: 263, column: 71, scope: !2377, inlinedAt: !2384)
!2410 = !DILocation(line: 263, column: 77, scope: !2377, inlinedAt: !2384)
!2411 = !DILocation(line: 263, column: 61, scope: !2377, inlinedAt: !2384)
!2412 = !DILocation(line: 263, column: 90, scope: !2377, inlinedAt: !2384)
!2413 = !DILocation(line: 263, column: 101, scope: !2377, inlinedAt: !2384)
!2414 = !DILocation(line: 263, column: 107, scope: !2377, inlinedAt: !2384)
!2415 = !DILocation(line: 263, column: 5, scope: !2377, inlinedAt: !2384)
!2416 = !DILocation(line: 264, column: 56, scope: !2377, inlinedAt: !2384)
!2417 = !DILocation(line: 264, column: 71, scope: !2377, inlinedAt: !2384)
!2418 = !DILocation(line: 264, column: 77, scope: !2377, inlinedAt: !2384)
!2419 = !DILocation(line: 264, column: 40, scope: !2377, inlinedAt: !2384)
!2420 = !DILocation(line: 264, column: 61, scope: !2377, inlinedAt: !2384)
!2421 = !DILocation(line: 264, column: 90, scope: !2377, inlinedAt: !2384)
!2422 = !DILocation(line: 264, column: 101, scope: !2377, inlinedAt: !2384)
!2423 = !DILocation(line: 264, column: 107, scope: !2377, inlinedAt: !2384)
!2424 = !DILocation(line: 264, column: 5, scope: !2377, inlinedAt: !2384)
!2425 = !DILocation(line: 265, column: 61, scope: !2377, inlinedAt: !2384)
!2426 = !DILocation(line: 265, column: 82, scope: !2377, inlinedAt: !2384)
!2427 = !DILocation(line: 265, column: 45, scope: !2377, inlinedAt: !2384)
!2428 = !DILocation(line: 265, column: 66, scope: !2377, inlinedAt: !2384)
!2429 = !DILocation(line: 265, column: 95, scope: !2377, inlinedAt: !2384)
!2430 = !DILocation(line: 265, column: 106, scope: !2377, inlinedAt: !2384)
!2431 = !DILocation(line: 265, column: 112, scope: !2377, inlinedAt: !2384)
!2432 = !DILocation(line: 265, column: 5, scope: !2377, inlinedAt: !2384)
!2433 = !DILocalVariable(name: "h", arg: 1, scope: !2434, file: !3, line: 268, type: !117)
!2434 = distinct !DISubprogram(name: "x264_cabac_mb_cbp_chroma", scope: !3, file: !3, line: 268, type: !115, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2435)
!2435 = !{!2433, !2436, !2437, !2438, !2439}
!2436 = !DILocalVariable(name: "cb", arg: 2, scope: !2434, file: !3, line: 268, type: !1211)
!2437 = !DILocalVariable(name: "cbp_a", scope: !2434, file: !3, line: 270, type: !128)
!2438 = !DILocalVariable(name: "cbp_b", scope: !2434, file: !3, line: 271, type: !128)
!2439 = !DILocalVariable(name: "ctx", scope: !2434, file: !3, line: 272, type: !128)
!2440 = !DILocation(line: 0, scope: !2434, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 984, column: 9, scope: !2385)
!2442 = !DILocation(line: 275, column: 15, scope: !2443, inlinedAt: !2441)
!2443 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 275, column: 9)
!2444 = !DILocation(line: 275, column: 27, scope: !2443, inlinedAt: !2441)
!2445 = !DILocation(line: 275, column: 9, scope: !2434, inlinedAt: !2441)
!2446 = !DILocation(line: 277, column: 24, scope: !2447, inlinedAt: !2441)
!2447 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 276, column: 5)
!2448 = !DILocation(line: 277, column: 34, scope: !2447, inlinedAt: !2441)
!2449 = !DILocation(line: 277, column: 42, scope: !2447, inlinedAt: !2441)
!2450 = !DILocation(line: 277, column: 18, scope: !2447, inlinedAt: !2441)
!2451 = !DILocation(line: 277, column: 47, scope: !2447, inlinedAt: !2441)
!2452 = !DILocation(line: 277, column: 52, scope: !2447, inlinedAt: !2441)
!2453 = !DILocation(line: 278, column: 5, scope: !2447, inlinedAt: !2441)
!2454 = !DILocation(line: 280, column: 27, scope: !2455, inlinedAt: !2441)
!2455 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 280, column: 9)
!2456 = !DILocation(line: 280, column: 9, scope: !2434, inlinedAt: !2441)
!2457 = !DILocation(line: 286, column: 15, scope: !2458, inlinedAt: !2441)
!2458 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 286, column: 9)
!2459 = !DILocation(line: 286, column: 9, scope: !2434, inlinedAt: !2441)
!2460 = !DILocation(line: 287, column: 9, scope: !2434, inlinedAt: !2441)
!2461 = !DILocation(line: 282, column: 24, scope: !2462, inlinedAt: !2441)
!2462 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 281, column: 5)
!2463 = !DILocation(line: 282, column: 34, scope: !2462, inlinedAt: !2441)
!2464 = !DILocation(line: 282, column: 18, scope: !2462, inlinedAt: !2441)
!2465 = !DILocation(line: 282, column: 47, scope: !2462, inlinedAt: !2441)
!2466 = !DILocation(line: 282, column: 52, scope: !2462, inlinedAt: !2441)
!2467 = !DILocation(line: 287, column: 15, scope: !2468, inlinedAt: !2441)
!2468 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 287, column: 9)
!2469 = !DILocation(line: 288, column: 15, scope: !2470, inlinedAt: !2441)
!2470 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 288, column: 9)
!2471 = !{!1351, !1353, i64 11816}
!2472 = !DILocation(line: 288, column: 28, scope: !2470, inlinedAt: !2441)
!2473 = !DILocation(line: 0, scope: !2470, inlinedAt: !2441)
!2474 = !DILocation(line: 288, column: 9, scope: !2434, inlinedAt: !2441)
!2475 = !DILocation(line: 290, column: 9, scope: !2476, inlinedAt: !2441)
!2476 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 289, column: 5)
!2477 = !DILocation(line: 291, column: 5, scope: !2476, inlinedAt: !2441)
!2478 = !DILocation(line: 294, column: 9, scope: !2479, inlinedAt: !2441)
!2479 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 293, column: 5)
!2480 = !DILocation(line: 297, column: 19, scope: !2481, inlinedAt: !2441)
!2481 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 297, column: 13)
!2482 = !DILocation(line: 297, column: 13, scope: !2479, inlinedAt: !2441)
!2483 = !DILocation(line: 298, column: 19, scope: !2484, inlinedAt: !2441)
!2484 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 298, column: 13)
!2485 = !DILocation(line: 298, column: 13, scope: !2479, inlinedAt: !2441)
!2486 = !DILocation(line: 299, column: 49, scope: !2479, inlinedAt: !2441)
!2487 = !DILocation(line: 299, column: 62, scope: !2479, inlinedAt: !2441)
!2488 = !DILocation(line: 299, column: 75, scope: !2479, inlinedAt: !2441)
!2489 = !DILocation(line: 299, column: 9, scope: !2479, inlinedAt: !2441)
!2490 = !DILocation(line: 0, scope: !1296, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 987, column: 9, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 987, column: 9)
!2493 = !DILocation(line: 478, column: 13, scope: !2494, inlinedAt: !2491)
!2494 = distinct !DILexicalBlock(scope: !1296, file: !6, line: 478, column: 9)
!2495 = !DILocation(line: 478, column: 18, scope: !2494, inlinedAt: !2491)
!2496 = !DILocation(line: 478, column: 10, scope: !2494, inlinedAt: !2491)
!2497 = !DILocation(line: 478, column: 9, scope: !1296, inlinedAt: !2491)
!2498 = !DILocation(line: 480, column: 29, scope: !1296, inlinedAt: !2491)
!2499 = !DILocation(line: 480, column: 9, scope: !1296, inlinedAt: !2491)
!2500 = !DILocation(line: 481, column: 11, scope: !2501, inlinedAt: !2491)
!2501 = distinct !DILexicalBlock(scope: !1296, file: !6, line: 481, column: 9)
!2502 = !DILocation(line: 481, column: 9, scope: !1296, inlinedAt: !2491)
!2503 = !DILocation(line: 482, column: 9, scope: !2501, inlinedAt: !2491)
!2504 = !DILocation(line: 483, column: 14, scope: !2501, inlinedAt: !2491)
!2505 = !DILocation(line: 484, column: 19, scope: !2506, inlinedAt: !2491)
!2506 = distinct !DILexicalBlock(scope: !2501, file: !6, line: 483, column: 14)
!2507 = !{!1351, !1357, i64 3200}
!2508 = !DILocation(line: 484, column: 24, scope: !2506, inlinedAt: !2491)
!2509 = !{!2510, !1353, i64 1100}
!2510 = !{!"", !1353, i64 0, !1353, i64 4, !1353, i64 8, !1353, i64 12, !1353, i64 16, !1353, i64 20, !1353, i64 24, !1353, i64 28, !1353, i64 32, !1353, i64 36, !1353, i64 40, !1353, i64 44, !1353, i64 48, !1354, i64 52, !1353, i64 1076, !1353, i64 1080, !1353, i64 1084, !1353, i64 1088, !1353, i64 1092, !1353, i64 1096, !1353, i64 1100, !1353, i64 1104, !2511, i64 1108, !1353, i64 1124, !2512, i64 1128, !1353, i64 1236}
!2511 = !{!"", !1353, i64 0, !1353, i64 4, !1353, i64 8, !1353, i64 12}
!2512 = !{!"", !1353, i64 0, !1353, i64 4, !1353, i64 8, !1353, i64 12, !1353, i64 16, !1353, i64 20, !1353, i64 24, !1353, i64 28, !1353, i64 32, !1353, i64 36, !1353, i64 40, !1353, i64 44, !1353, i64 48, !1353, i64 52, !1353, i64 56, !1353, i64 60, !1353, i64 64, !1353, i64 68, !1353, i64 72, !1353, i64 76, !1353, i64 80, !1353, i64 84, !1353, i64 88, !1353, i64 92, !1353, i64 96, !1353, i64 100, !1353, i64 104}
!2513 = !DILocation(line: 484, column: 9, scope: !2506, inlinedAt: !2491)
!2514 = !DILocation(line: 487, column: 32, scope: !2515, inlinedAt: !2491)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !6, line: 487, column: 13)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !6, line: 486, column: 5)
!2517 = distinct !DILexicalBlock(scope: !2506, file: !6, line: 485, column: 14)
!2518 = !{!1351, !1353, i64 380}
!2519 = !DILocation(line: 487, column: 38, scope: !2515, inlinedAt: !2491)
!2520 = !DILocation(line: 487, column: 13, scope: !2516, inlinedAt: !2491)
!2521 = !DILocation(line: 490, column: 17, scope: !2522, inlinedAt: !2491)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !6, line: 490, column: 17)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !6, line: 489, column: 9)
!2524 = distinct !DILexicalBlock(scope: !2516, file: !6, line: 489, column: 9)
!2525 = !DILocation(line: 490, column: 42, scope: !2522, inlinedAt: !2491)
!2526 = !DILocation(line: 490, column: 17, scope: !2523, inlinedAt: !2491)
!2527 = !DILocation(line: 497, column: 16, scope: !2528, inlinedAt: !2491)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !6, line: 497, column: 13)
!2529 = distinct !DILexicalBlock(scope: !2517, file: !6, line: 495, column: 5)
!2530 = !DILocation(line: 497, column: 21, scope: !2528, inlinedAt: !2491)
!2531 = !DILocation(line: 497, column: 13, scope: !2528, inlinedAt: !2491)
!2532 = !DILocation(line: 497, column: 13, scope: !2529, inlinedAt: !2491)
!2533 = !DILocation(line: 500, column: 17, scope: !2534, inlinedAt: !2491)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !6, line: 500, column: 17)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !6, line: 499, column: 9)
!2536 = distinct !DILexicalBlock(scope: !2529, file: !6, line: 499, column: 9)
!2537 = !DILocation(line: 500, column: 42, scope: !2534, inlinedAt: !2491)
!2538 = !DILocation(line: 500, column: 17, scope: !2535, inlinedAt: !2491)
!2539 = !DILocation(line: 987, column: 9, scope: !2492)
!2540 = !DILocation(line: 987, column: 44, scope: !2492)
!2541 = !DILocation(line: 987, column: 53, scope: !2492)
!2542 = !DILocation(line: 987, column: 47, scope: !2492)
!2543 = !DILocation(line: 987, column: 9, scope: !1397)
!2544 = !DILocation(line: 989, column: 9, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 988, column: 5)
!2546 = !DILocation(line: 0, scope: !1648, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 989, column: 9, scope: !2545)
!2548 = !DILocation(line: 417, column: 19, scope: !1648, inlinedAt: !2547)
!2549 = !DILocation(line: 418, column: 5, scope: !1648, inlinedAt: !2547)
!2550 = !DILocation(line: 990, column: 5, scope: !2545)
!2551 = !DILocation(line: 992, column: 15, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 992, column: 9)
!2553 = !DILocation(line: 992, column: 26, scope: !2552)
!2554 = !DILocation(line: 992, column: 30, scope: !2552)
!2555 = !DILocation(line: 992, column: 39, scope: !2552)
!2556 = !DILocation(line: 992, column: 52, scope: !2552)
!2557 = !DILocation(line: 992, column: 56, scope: !2552)
!2558 = !DILocalVariable(name: "h", arg: 1, scope: !2559, file: !3, line: 303, type: !117)
!2559 = distinct !DISubprogram(name: "x264_cabac_mb_qp_delta", scope: !3, file: !3, line: 303, type: !115, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2560)
!2560 = !{!2558, !2561, !2562, !2563, !2564, !2565}
!2561 = !DILocalVariable(name: "cb", arg: 2, scope: !2559, file: !3, line: 303, type: !1211)
!2562 = !DILocalVariable(name: "i_mbn_xy", scope: !2559, file: !3, line: 305, type: !128)
!2563 = !DILocalVariable(name: "i_dqp", scope: !2559, file: !3, line: 306, type: !128)
!2564 = !DILocalVariable(name: "ctx", scope: !2559, file: !3, line: 307, type: !128)
!2565 = !DILocalVariable(name: "val", scope: !2566, file: !3, line: 327, type: !128)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 326, column: 5)
!2567 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 325, column: 9)
!2568 = !DILocation(line: 0, scope: !2559, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 994, column: 9, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 993, column: 5)
!2571 = !DILocation(line: 305, column: 26, scope: !2559, inlinedAt: !2569)
!2572 = !{!1351, !1353, i64 11096}
!2573 = !DILocation(line: 306, column: 23, scope: !2559, inlinedAt: !2569)
!2574 = !{!1351, !1353, i64 20512}
!2575 = !DILocation(line: 306, column: 36, scope: !2559, inlinedAt: !2569)
!2576 = !{!1351, !1353, i64 20520}
!2577 = !DILocation(line: 306, column: 28, scope: !2559, inlinedAt: !2569)
!2578 = !DILocation(line: 310, column: 15, scope: !2579, inlinedAt: !2569)
!2579 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 310, column: 9)
!2580 = !DILocation(line: 310, column: 22, scope: !2579, inlinedAt: !2569)
!2581 = !DILocation(line: 310, column: 33, scope: !2579, inlinedAt: !2569)
!2582 = !DILocation(line: 310, column: 43, scope: !2579, inlinedAt: !2569)
!2583 = !DILocation(line: 310, column: 53, scope: !2579, inlinedAt: !2569)
!2584 = !DILocation(line: 310, column: 37, scope: !2579, inlinedAt: !2569)
!2585 = !DILocation(line: 310, column: 9, scope: !2559, inlinedAt: !2569)
!2586 = !DILocation(line: 313, column: 20, scope: !2587, inlinedAt: !2569)
!2587 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 311, column: 5)
!2588 = !DILocation(line: 316, column: 5, scope: !2587, inlinedAt: !2569)
!2589 = !DILocation(line: 319, column: 15, scope: !2590, inlinedAt: !2569)
!2590 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 319, column: 9)
!2591 = !{!1351, !1353, i64 20524}
!2592 = !DILocation(line: 319, column: 9, scope: !2590, inlinedAt: !2569)
!2593 = !DILocation(line: 319, column: 26, scope: !2590, inlinedAt: !2569)
!2594 = !DILocation(line: 320, column: 17, scope: !2590, inlinedAt: !2569)
!2595 = !DILocation(line: 320, column: 11, scope: !2590, inlinedAt: !2569)
!2596 = !DILocation(line: 320, column: 32, scope: !2590, inlinedAt: !2569)
!2597 = !DILocation(line: 320, column: 43, scope: !2590, inlinedAt: !2569)
!2598 = !DILocation(line: 320, column: 53, scope: !2590, inlinedAt: !2569)
!2599 = !DILocation(line: 320, column: 47, scope: !2590, inlinedAt: !2569)
!2600 = !DILocation(line: 320, column: 66, scope: !2590, inlinedAt: !2569)
!2601 = !DILocation(line: 319, column: 9, scope: !2559, inlinedAt: !2569)
!2602 = !DILocation(line: 0, scope: !2590, inlinedAt: !2569)
!2603 = !DILocation(line: 325, column: 15, scope: !2567, inlinedAt: !2569)
!2604 = !DILocation(line: 325, column: 9, scope: !2559, inlinedAt: !2569)
!2605 = !DILocation(line: 327, column: 25, scope: !2566, inlinedAt: !2569)
!2606 = !DILocation(line: 327, column: 19, scope: !2566, inlinedAt: !2569)
!2607 = !DILocation(line: 0, scope: !2566, inlinedAt: !2569)
!2608 = !DILocation(line: 329, column: 17, scope: !2609, inlinedAt: !2569)
!2609 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 329, column: 13)
!2610 = !DILocation(line: 329, column: 23, scope: !2609, inlinedAt: !2569)
!2611 = !DILocation(line: 331, column: 9, scope: !2566, inlinedAt: !2569)
!2612 = !DILocation(line: 331, column: 19, scope: !2566, inlinedAt: !2569)
!2613 = !DILocation(line: 333, column: 48, scope: !2614, inlinedAt: !2569)
!2614 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 332, column: 9)
!2615 = !DILocation(line: 333, column: 13, scope: !2614, inlinedAt: !2569)
!2616 = !DILocation(line: 334, column: 21, scope: !2617, inlinedAt: !2569)
!2617 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 334, column: 17)
!2618 = distinct !{!2618, !2611, !2619, !1570}
!2619 = !DILocation(line: 338, column: 9, scope: !2566, inlinedAt: !2569)
!2620 = !DILocation(line: 321, column: 13, scope: !2590, inlinedAt: !2569)
!2621 = !DILocation(line: 340, column: 45, scope: !2559, inlinedAt: !2569)
!2622 = !DILocation(line: 340, column: 5, scope: !2559, inlinedAt: !2569)
!2623 = !DILocation(line: 997, column: 13, scope: !2570)
!2624 = !DILocation(line: 1000, column: 68, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 998, column: 9)
!2626 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 997, column: 13)
!2627 = !DILocation(line: 1000, column: 13, scope: !2625)
!2628 = !DILocation(line: 1003, column: 23, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 1003, column: 17)
!2630 = !DILocation(line: 1003, column: 34, scope: !2629)
!2631 = !DILocation(line: 1003, column: 17, scope: !2625)
!2632 = !DILocation(line: 1005, column: 89, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 1004, column: 17)
!2634 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 1004, column: 17)
!2635 = !DILocation(line: 1005, column: 21, scope: !2633)
!2636 = !DILocation(line: 1020, column: 19, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 1020, column: 13)
!2638 = !DILocation(line: 1007, column: 24, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 1007, column: 18)
!2640 = !DILocation(line: 1007, column: 18, scope: !2639)
!2641 = !DILocation(line: 0, scope: !2639)
!2642 = !DILocation(line: 1007, column: 18, scope: !2626)
!2643 = !DILocation(line: 1010, column: 21, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 1009, column: 13)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 1009, column: 13)
!2646 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1008, column: 9)
!2647 = !DILocation(line: 1016, column: 21, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 1015, column: 13)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 1015, column: 13)
!2650 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1014, column: 9)
!2651 = !DILocation(line: 1011, column: 73, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 1010, column: 21)
!2653 = !DILocation(line: 1011, column: 21, scope: !2652)
!2654 = !DILocation(line: 1010, column: 27, scope: !2652)
!2655 = !DILocation(line: 1010, column: 38, scope: !2652)
!2656 = !DILocation(line: 1017, column: 73, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 1016, column: 21)
!2658 = !DILocation(line: 1017, column: 21, scope: !2657)
!2659 = !DILocation(line: 1016, column: 27, scope: !2657)
!2660 = !DILocation(line: 1016, column: 38, scope: !2657)
!2661 = !DILocation(line: 1020, column: 32, scope: !2637)
!2662 = !DILocation(line: 1020, column: 13, scope: !2570)
!2663 = !DILocation(line: 1022, column: 74, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 1021, column: 9)
!2665 = !DILocation(line: 1022, column: 13, scope: !2664)
!2666 = !DILocation(line: 1023, column: 67, scope: !2664)
!2667 = !DILocation(line: 1023, column: 13, scope: !2664)
!2668 = !DILocation(line: 1025, column: 19, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 1025, column: 13)
!2670 = !DILocation(line: 1024, column: 9, scope: !2664)
!2671 = !DILocation(line: 1025, column: 31, scope: !2669)
!2672 = !DILocation(line: 1025, column: 13, scope: !2570)
!2673 = !DILocation(line: 1028, column: 87, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 1027, column: 13)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 1027, column: 13)
!2676 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 1026, column: 9)
!2677 = !DILocation(line: 1028, column: 17, scope: !2674)
!2678 = !DILocation(line: 72, column: 17, scope: !1430, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 1033, column: 33, scope: !1397)
!2680 = !DILocation(line: 0, scope: !1430, inlinedAt: !2679)
!2681 = !DILocation(line: 72, column: 25, scope: !1430, inlinedAt: !2679)
!2682 = !DILocation(line: 72, column: 19, scope: !1430, inlinedAt: !2679)
!2683 = !DILocation(line: 72, column: 39, scope: !1430, inlinedAt: !2679)
!2684 = !DILocation(line: 72, column: 70, scope: !1430, inlinedAt: !2679)
!2685 = !DILocation(line: 72, column: 12, scope: !1430, inlinedAt: !2679)
!2686 = !DILocation(line: 1033, column: 19, scope: !1397)
!2687 = !DILocation(line: 1033, column: 30, scope: !1397)
!2688 = !DILocation(line: 1033, column: 54, scope: !1397)
!2689 = !DILocation(line: 1035, column: 1, scope: !1397)
!2690 = !DILocation(line: 0, scope: !1817)
!2691 = !DILocation(line: 423, column: 20, scope: !1817)
!2692 = !DILocation(line: 424, column: 51, scope: !1817)
!2693 = !DILocation(line: 424, column: 24, scope: !1817)
!2694 = !DILocation(line: 425, column: 51, scope: !1817)
!2695 = !DILocation(line: 425, column: 24, scope: !1817)
!2696 = !DILocation(line: 426, column: 18, scope: !1817)
!2697 = !DILocation(line: 429, column: 16, scope: !1836)
!2698 = !DILocation(line: 429, column: 20, scope: !1836)
!2699 = !DILocation(line: 429, column: 24, scope: !1836)
!2700 = !DILocation(line: 429, column: 9, scope: !1817)
!2701 = !DILocation(line: 431, column: 16, scope: !1841)
!2702 = !DILocation(line: 431, column: 20, scope: !1841)
!2703 = !DILocation(line: 431, column: 24, scope: !1841)
!2704 = !DILocation(line: 431, column: 9, scope: !1817)
!2705 = !DILocation(line: 434, column: 18, scope: !1817)
!2706 = !DILocation(line: 434, column: 5, scope: !1817)
!2707 = !DILocation(line: 436, column: 44, scope: !1848)
!2708 = !DILocation(line: 436, column: 9, scope: !1848)
!2709 = !DILocation(line: 437, column: 17, scope: !1851)
!2710 = !DILocation(line: 442, column: 14, scope: !1848)
!2711 = distinct !{!2711, !2706, !2712, !1570}
!2712 = !DILocation(line: 443, column: 5, scope: !1817)
!2713 = !DILocation(line: 444, column: 40, scope: !1817)
!2714 = !DILocation(line: 444, column: 5, scope: !1817)
!2715 = !DILocation(line: 445, column: 1, scope: !1817)
!2716 = !DILocation(line: 0, scope: !2154)
!2717 = !DILocation(line: 499, column: 5, scope: !2154)
!2718 = !DILocation(line: 503, column: 5, scope: !2154)
!2719 = !DILocation(line: 504, column: 34, scope: !2154)
!2720 = !DILocation(line: 504, column: 11, scope: !2154)
!2721 = !DILocation(line: 504, column: 56, scope: !2154)
!2722 = !DILocation(line: 504, column: 54, scope: !2154)
!2723 = !DILocation(line: 505, column: 11, scope: !2154)
!2724 = !DILocation(line: 505, column: 56, scope: !2154)
!2725 = !DILocation(line: 505, column: 54, scope: !2154)
!2726 = !DILocation(line: 508, column: 5, scope: !2154)
!2727 = !DILocation(line: 509, column: 5, scope: !2154)
!2728 = !DILocation(line: 512, column: 35, scope: !2154)
!2729 = !DILocation(line: 512, column: 53, scope: !2154)
!2730 = !DILocation(line: 0, scope: !2179, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 512, column: 94, scope: !2154)
!2732 = !DILocation(line: 349, column: 13, scope: !2179, inlinedAt: !2731)
!2733 = !DILocation(line: 349, column: 26, scope: !2179, inlinedAt: !2731)
!2734 = !DILocation(line: 349, column: 22, scope: !2179, inlinedAt: !2731)
!2735 = !DILocation(line: 0, scope: !2190, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 512, column: 5, scope: !2154)
!2737 = !DILocation(line: 392, column: 71, scope: !2190, inlinedAt: !2736)
!2738 = !DILocation(line: 392, column: 75, scope: !2190, inlinedAt: !2736)
!2739 = !DILocation(line: 392, column: 73, scope: !2190, inlinedAt: !2736)
!2740 = !DILocation(line: 392, column: 35, scope: !2190, inlinedAt: !2736)
!2741 = !DILocation(line: 0, scope: !2204, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 392, column: 5, scope: !2190, inlinedAt: !2736)
!2743 = !DILocation(line: 371, column: 15, scope: !2215, inlinedAt: !2742)
!2744 = !DILocation(line: 371, column: 9, scope: !2204, inlinedAt: !2742)
!2745 = !DILocation(line: 373, column: 25, scope: !2746, inlinedAt: !2742)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !6, line: 373, column: 9)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !6, line: 373, column: 9)
!2748 = distinct !DILexicalBlock(scope: !2215, file: !6, line: 372, column: 5)
!2749 = !DILocation(line: 373, column: 9, scope: !2747, inlinedAt: !2742)
!2750 = !DILocation(line: 375, column: 38, scope: !2751, inlinedAt: !2742)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !6, line: 374, column: 13)
!2752 = distinct !DILexicalBlock(scope: !2746, file: !6, line: 374, column: 13)
!2753 = !DILocation(line: 375, column: 17, scope: !2751, inlinedAt: !2742)
!2754 = !DILocation(line: 375, column: 43, scope: !2751, inlinedAt: !2742)
!2755 = !DILocation(line: 373, column: 37, scope: !2746, inlinedAt: !2742)
!2756 = distinct !{!2756, !2749, !2757, !1570}
!2757 = !DILocation(line: 375, column: 45, scope: !2747, inlinedAt: !2742)
!2758 = !DILocation(line: 379, column: 26, scope: !2214, inlinedAt: !2742)
!2759 = !DILocation(line: 379, column: 30, scope: !2214, inlinedAt: !2742)
!2760 = !DILocation(line: 0, scope: !2214, inlinedAt: !2742)
!2761 = !DILocation(line: 380, column: 25, scope: !2224, inlinedAt: !2742)
!2762 = !DILocation(line: 380, column: 9, scope: !2225, inlinedAt: !2742)
!2763 = !DILocation(line: 381, column: 13, scope: !2223, inlinedAt: !2742)
!2764 = !DILocation(line: 381, column: 42, scope: !2222, inlinedAt: !2742)
!2765 = !DILocation(line: 382, column: 36, scope: !2222, inlinedAt: !2742)
!2766 = !DILocation(line: 382, column: 17, scope: !2222, inlinedAt: !2742)
!2767 = !DILocation(line: 382, column: 43, scope: !2222, inlinedAt: !2742)
!2768 = distinct !{!2768, !2763, !2769, !1570, !2770, !2771}
!2769 = !DILocation(line: 382, column: 45, scope: !2223, inlinedAt: !2742)
!2770 = !{!"llvm.loop.isvectorized", i32 1}
!2771 = !{!"llvm.loop.unroll.runtime.disable"}
!2772 = !DILocation(line: 381, column: 29, scope: !2222, inlinedAt: !2742)
!2773 = distinct !{!2773, !2763, !2769, !1570, !2771, !2770}
!2774 = !DILocation(line: 380, column: 37, scope: !2224, inlinedAt: !2742)
!2775 = distinct !{!2775, !2762, !2776, !1570}
!2776 = !DILocation(line: 382, column: 45, scope: !2225, inlinedAt: !2742)
!2777 = distinct !{!2777, !2778}
!2778 = !{!"llvm.loop.unroll.disable"}
!2779 = !DILocation(line: 513, column: 1, scope: !2154)
!2780 = distinct !DISubprogram(name: "x264_cabac_mb_sub_p_partition", scope: !3, file: !3, line: 353, type: !1277, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2781)
!2781 = !{!2782, !2783}
!2782 = !DILocalVariable(name: "cb", arg: 1, scope: !2780, file: !3, line: 353, type: !1211)
!2783 = !DILocalVariable(name: "i_sub", arg: 2, scope: !2780, file: !3, line: 353, type: !128)
!2784 = !DILocation(line: 0, scope: !2780)
!2785 = !DILocation(line: 355, column: 9, scope: !2780)
!2786 = !DILocation(line: 357, column: 9, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 356, column: 5)
!2788 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 355, column: 9)
!2789 = !DILocation(line: 358, column: 5, scope: !2787)
!2790 = !DILocation(line: 361, column: 9, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 360, column: 5)
!2792 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 359, column: 14)
!2793 = !DILocation(line: 362, column: 9, scope: !2791)
!2794 = !DILocation(line: 363, column: 5, scope: !2791)
!2795 = !DILocation(line: 366, column: 9, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 365, column: 5)
!2797 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 364, column: 14)
!2798 = !DILocation(line: 367, column: 9, scope: !2796)
!2799 = !DILocation(line: 368, column: 9, scope: !2796)
!2800 = !DILocation(line: 369, column: 5, scope: !2796)
!2801 = !DILocation(line: 372, column: 9, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 371, column: 5)
!2803 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 370, column: 14)
!2804 = !DILocation(line: 373, column: 9, scope: !2802)
!2805 = !DILocation(line: 374, column: 9, scope: !2802)
!2806 = !DILocation(line: 375, column: 5, scope: !2802)
!2807 = !DILocation(line: 376, column: 1, scope: !2780)
!2808 = distinct !DISubprogram(name: "x264_cabac_mb8x8_mvd", scope: !3, file: !3, line: 515, type: !1818, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2809)
!2809 = !{!2810, !2811, !2812, !2813}
!2810 = !DILocalVariable(name: "h", arg: 1, scope: !2808, file: !3, line: 515, type: !117)
!2811 = !DILocalVariable(name: "cb", arg: 2, scope: !2808, file: !3, line: 515, type: !1211)
!2812 = !DILocalVariable(name: "i_list", arg: 3, scope: !2808, file: !3, line: 515, type: !128)
!2813 = !DILocalVariable(name: "i", arg: 4, scope: !2808, file: !3, line: 515, type: !128)
!2814 = !DILocation(line: 0, scope: !2808)
!2815 = !DILocation(line: 517, column: 49, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 517, column: 9)
!2817 = !DILocation(line: 517, column: 10, scope: !2816)
!2818 = !DILocation(line: 517, column: 9, scope: !2808)
!2819 = !DILocation(line: 520, column: 5, scope: !2808)
!2820 = !DILocation(line: 525, column: 48, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 521, column: 5)
!2822 = !DILocation(line: 0, scope: !2154, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 525, column: 13, scope: !2821)
!2824 = !DILocation(line: 499, column: 5, scope: !2154, inlinedAt: !2823)
!2825 = !DILocation(line: 503, column: 5, scope: !2154, inlinedAt: !2823)
!2826 = !DILocation(line: 504, column: 34, scope: !2154, inlinedAt: !2823)
!2827 = !DILocation(line: 504, column: 11, scope: !2154, inlinedAt: !2823)
!2828 = !DILocation(line: 504, column: 56, scope: !2154, inlinedAt: !2823)
!2829 = !DILocation(line: 504, column: 54, scope: !2154, inlinedAt: !2823)
!2830 = !DILocation(line: 505, column: 11, scope: !2154, inlinedAt: !2823)
!2831 = !DILocation(line: 505, column: 56, scope: !2154, inlinedAt: !2823)
!2832 = !DILocation(line: 505, column: 54, scope: !2154, inlinedAt: !2823)
!2833 = !DILocation(line: 508, column: 5, scope: !2154, inlinedAt: !2823)
!2834 = !DILocation(line: 509, column: 5, scope: !2154, inlinedAt: !2823)
!2835 = !DILocation(line: 512, column: 35, scope: !2154, inlinedAt: !2823)
!2836 = !DILocation(line: 512, column: 53, scope: !2154, inlinedAt: !2823)
!2837 = !DILocation(line: 0, scope: !2179, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 512, column: 94, scope: !2154, inlinedAt: !2823)
!2839 = !DILocation(line: 349, column: 13, scope: !2179, inlinedAt: !2838)
!2840 = !DILocation(line: 349, column: 26, scope: !2179, inlinedAt: !2838)
!2841 = !DILocation(line: 349, column: 22, scope: !2179, inlinedAt: !2838)
!2842 = !DILocation(line: 0, scope: !2190, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 512, column: 5, scope: !2154, inlinedAt: !2823)
!2844 = !DILocation(line: 392, column: 71, scope: !2190, inlinedAt: !2843)
!2845 = !DILocation(line: 392, column: 75, scope: !2190, inlinedAt: !2843)
!2846 = !DILocation(line: 392, column: 73, scope: !2190, inlinedAt: !2843)
!2847 = !DILocation(line: 392, column: 35, scope: !2190, inlinedAt: !2843)
!2848 = !DILocation(line: 0, scope: !2204, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 392, column: 5, scope: !2190, inlinedAt: !2843)
!2850 = !DILocation(line: 379, column: 26, scope: !2214, inlinedAt: !2849)
!2851 = !DILocation(line: 379, column: 30, scope: !2214, inlinedAt: !2849)
!2852 = !DILocation(line: 0, scope: !2214, inlinedAt: !2849)
!2853 = !DILocation(line: 382, column: 43, scope: !2222, inlinedAt: !2849)
!2854 = !DILocation(line: 382, column: 17, scope: !2222, inlinedAt: !2849)
!2855 = !DILocation(line: 513, column: 1, scope: !2154, inlinedAt: !2823)
!2856 = !DILocation(line: 526, column: 13, scope: !2821)
!2857 = !DILocation(line: 530, column: 48, scope: !2821)
!2858 = !DILocation(line: 0, scope: !2154, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 530, column: 13, scope: !2821)
!2860 = !DILocation(line: 499, column: 5, scope: !2154, inlinedAt: !2859)
!2861 = !DILocation(line: 503, column: 5, scope: !2154, inlinedAt: !2859)
!2862 = !DILocation(line: 504, column: 34, scope: !2154, inlinedAt: !2859)
!2863 = !DILocation(line: 504, column: 11, scope: !2154, inlinedAt: !2859)
!2864 = !DILocation(line: 504, column: 56, scope: !2154, inlinedAt: !2859)
!2865 = !DILocation(line: 504, column: 54, scope: !2154, inlinedAt: !2859)
!2866 = !DILocation(line: 505, column: 11, scope: !2154, inlinedAt: !2859)
!2867 = !DILocation(line: 505, column: 56, scope: !2154, inlinedAt: !2859)
!2868 = !DILocation(line: 505, column: 54, scope: !2154, inlinedAt: !2859)
!2869 = !DILocation(line: 508, column: 5, scope: !2154, inlinedAt: !2859)
!2870 = !DILocation(line: 509, column: 5, scope: !2154, inlinedAt: !2859)
!2871 = !DILocation(line: 512, column: 35, scope: !2154, inlinedAt: !2859)
!2872 = !DILocation(line: 512, column: 53, scope: !2154, inlinedAt: !2859)
!2873 = !DILocation(line: 0, scope: !2179, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 512, column: 94, scope: !2154, inlinedAt: !2859)
!2875 = !DILocation(line: 349, column: 13, scope: !2179, inlinedAt: !2874)
!2876 = !DILocation(line: 349, column: 26, scope: !2179, inlinedAt: !2874)
!2877 = !DILocation(line: 349, column: 22, scope: !2179, inlinedAt: !2874)
!2878 = !DILocation(line: 0, scope: !2190, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 512, column: 5, scope: !2154, inlinedAt: !2859)
!2880 = !DILocation(line: 392, column: 71, scope: !2190, inlinedAt: !2879)
!2881 = !DILocation(line: 392, column: 75, scope: !2190, inlinedAt: !2879)
!2882 = !DILocation(line: 392, column: 73, scope: !2190, inlinedAt: !2879)
!2883 = !DILocation(line: 392, column: 35, scope: !2190, inlinedAt: !2879)
!2884 = !DILocation(line: 0, scope: !2204, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 392, column: 5, scope: !2190, inlinedAt: !2879)
!2886 = !DILocation(line: 379, column: 26, scope: !2214, inlinedAt: !2885)
!2887 = !DILocation(line: 379, column: 30, scope: !2214, inlinedAt: !2885)
!2888 = !DILocation(line: 0, scope: !2214, inlinedAt: !2885)
!2889 = !DILocation(line: 382, column: 43, scope: !2222, inlinedAt: !2885)
!2890 = !DILocation(line: 513, column: 1, scope: !2154, inlinedAt: !2859)
!2891 = !DILocation(line: 531, column: 50, scope: !2821)
!2892 = !DILocation(line: 0, scope: !2154, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 531, column: 13, scope: !2821)
!2894 = !DILocation(line: 499, column: 5, scope: !2154, inlinedAt: !2893)
!2895 = !DILocation(line: 503, column: 5, scope: !2154, inlinedAt: !2893)
!2896 = !DILocation(line: 504, column: 34, scope: !2154, inlinedAt: !2893)
!2897 = !DILocation(line: 504, column: 11, scope: !2154, inlinedAt: !2893)
!2898 = !DILocation(line: 504, column: 56, scope: !2154, inlinedAt: !2893)
!2899 = !DILocation(line: 504, column: 54, scope: !2154, inlinedAt: !2893)
!2900 = !DILocation(line: 505, column: 11, scope: !2154, inlinedAt: !2893)
!2901 = !DILocation(line: 505, column: 56, scope: !2154, inlinedAt: !2893)
!2902 = !DILocation(line: 505, column: 54, scope: !2154, inlinedAt: !2893)
!2903 = !DILocation(line: 508, column: 5, scope: !2154, inlinedAt: !2893)
!2904 = !DILocation(line: 509, column: 5, scope: !2154, inlinedAt: !2893)
!2905 = !DILocation(line: 512, column: 35, scope: !2154, inlinedAt: !2893)
!2906 = !DILocation(line: 512, column: 53, scope: !2154, inlinedAt: !2893)
!2907 = !DILocation(line: 0, scope: !2179, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 512, column: 94, scope: !2154, inlinedAt: !2893)
!2909 = !DILocation(line: 349, column: 13, scope: !2179, inlinedAt: !2908)
!2910 = !DILocation(line: 349, column: 26, scope: !2179, inlinedAt: !2908)
!2911 = !DILocation(line: 349, column: 22, scope: !2179, inlinedAt: !2908)
!2912 = !DILocation(line: 0, scope: !2190, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 512, column: 5, scope: !2154, inlinedAt: !2893)
!2914 = !DILocation(line: 392, column: 71, scope: !2190, inlinedAt: !2913)
!2915 = !DILocation(line: 392, column: 75, scope: !2190, inlinedAt: !2913)
!2916 = !DILocation(line: 392, column: 73, scope: !2190, inlinedAt: !2913)
!2917 = !DILocation(line: 392, column: 35, scope: !2190, inlinedAt: !2913)
!2918 = !DILocation(line: 0, scope: !2204, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 392, column: 5, scope: !2190, inlinedAt: !2913)
!2920 = !DILocation(line: 379, column: 26, scope: !2214, inlinedAt: !2919)
!2921 = !DILocation(line: 379, column: 30, scope: !2214, inlinedAt: !2919)
!2922 = !DILocation(line: 0, scope: !2214, inlinedAt: !2919)
!2923 = !DILocation(line: 382, column: 43, scope: !2222, inlinedAt: !2919)
!2924 = !DILocation(line: 513, column: 1, scope: !2154, inlinedAt: !2893)
!2925 = !DILocation(line: 532, column: 13, scope: !2821)
!2926 = !DILocation(line: 536, column: 48, scope: !2821)
!2927 = !DILocation(line: 0, scope: !2154, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 536, column: 13, scope: !2821)
!2929 = !DILocation(line: 499, column: 5, scope: !2154, inlinedAt: !2928)
!2930 = !DILocation(line: 503, column: 5, scope: !2154, inlinedAt: !2928)
!2931 = !DILocation(line: 504, column: 34, scope: !2154, inlinedAt: !2928)
!2932 = !DILocation(line: 504, column: 11, scope: !2154, inlinedAt: !2928)
!2933 = !DILocation(line: 504, column: 56, scope: !2154, inlinedAt: !2928)
!2934 = !DILocation(line: 504, column: 54, scope: !2154, inlinedAt: !2928)
!2935 = !DILocation(line: 505, column: 11, scope: !2154, inlinedAt: !2928)
!2936 = !DILocation(line: 505, column: 56, scope: !2154, inlinedAt: !2928)
!2937 = !DILocation(line: 505, column: 54, scope: !2154, inlinedAt: !2928)
!2938 = !DILocation(line: 508, column: 5, scope: !2154, inlinedAt: !2928)
!2939 = !DILocation(line: 509, column: 5, scope: !2154, inlinedAt: !2928)
!2940 = !DILocation(line: 512, column: 35, scope: !2154, inlinedAt: !2928)
!2941 = !DILocation(line: 512, column: 53, scope: !2154, inlinedAt: !2928)
!2942 = !DILocation(line: 0, scope: !2179, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 512, column: 94, scope: !2154, inlinedAt: !2928)
!2944 = !DILocation(line: 349, column: 13, scope: !2179, inlinedAt: !2943)
!2945 = !DILocation(line: 349, column: 26, scope: !2179, inlinedAt: !2943)
!2946 = !DILocation(line: 349, column: 22, scope: !2179, inlinedAt: !2943)
!2947 = !DILocation(line: 0, scope: !2190, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 512, column: 5, scope: !2154, inlinedAt: !2928)
!2949 = !DILocation(line: 392, column: 71, scope: !2190, inlinedAt: !2948)
!2950 = !DILocation(line: 392, column: 75, scope: !2190, inlinedAt: !2948)
!2951 = !DILocation(line: 392, column: 73, scope: !2190, inlinedAt: !2948)
!2952 = !DILocation(line: 392, column: 35, scope: !2190, inlinedAt: !2948)
!2953 = !DILocation(line: 0, scope: !2204, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 392, column: 5, scope: !2190, inlinedAt: !2948)
!2955 = !DILocation(line: 375, column: 43, scope: !2751, inlinedAt: !2954)
!2956 = !DILocation(line: 375, column: 17, scope: !2751, inlinedAt: !2954)
!2957 = !DILocation(line: 513, column: 1, scope: !2154, inlinedAt: !2928)
!2958 = !DILocation(line: 537, column: 50, scope: !2821)
!2959 = !DILocation(line: 0, scope: !2154, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 537, column: 13, scope: !2821)
!2961 = !DILocation(line: 499, column: 5, scope: !2154, inlinedAt: !2960)
!2962 = !DILocation(line: 503, column: 5, scope: !2154, inlinedAt: !2960)
!2963 = !DILocation(line: 504, column: 34, scope: !2154, inlinedAt: !2960)
!2964 = !DILocation(line: 504, column: 11, scope: !2154, inlinedAt: !2960)
!2965 = !DILocation(line: 504, column: 56, scope: !2154, inlinedAt: !2960)
!2966 = !DILocation(line: 504, column: 54, scope: !2154, inlinedAt: !2960)
!2967 = !DILocation(line: 505, column: 11, scope: !2154, inlinedAt: !2960)
!2968 = !DILocation(line: 505, column: 56, scope: !2154, inlinedAt: !2960)
!2969 = !DILocation(line: 505, column: 54, scope: !2154, inlinedAt: !2960)
!2970 = !DILocation(line: 508, column: 5, scope: !2154, inlinedAt: !2960)
!2971 = !DILocation(line: 509, column: 5, scope: !2154, inlinedAt: !2960)
!2972 = !DILocation(line: 512, column: 35, scope: !2154, inlinedAt: !2960)
!2973 = !DILocation(line: 512, column: 53, scope: !2154, inlinedAt: !2960)
!2974 = !DILocation(line: 0, scope: !2179, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 512, column: 94, scope: !2154, inlinedAt: !2960)
!2976 = !DILocation(line: 349, column: 13, scope: !2179, inlinedAt: !2975)
!2977 = !DILocation(line: 349, column: 26, scope: !2179, inlinedAt: !2975)
!2978 = !DILocation(line: 349, column: 22, scope: !2179, inlinedAt: !2975)
!2979 = !DILocation(line: 0, scope: !2190, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 512, column: 5, scope: !2154, inlinedAt: !2960)
!2981 = !DILocation(line: 392, column: 71, scope: !2190, inlinedAt: !2980)
!2982 = !DILocation(line: 392, column: 75, scope: !2190, inlinedAt: !2980)
!2983 = !DILocation(line: 392, column: 73, scope: !2190, inlinedAt: !2980)
!2984 = !DILocation(line: 392, column: 35, scope: !2190, inlinedAt: !2980)
!2985 = !DILocation(line: 0, scope: !2204, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 392, column: 5, scope: !2190, inlinedAt: !2980)
!2987 = !DILocation(line: 375, column: 43, scope: !2751, inlinedAt: !2986)
!2988 = !DILocation(line: 375, column: 17, scope: !2751, inlinedAt: !2986)
!2989 = !DILocation(line: 513, column: 1, scope: !2154, inlinedAt: !2960)
!2990 = !DILocation(line: 538, column: 13, scope: !2821)
!2991 = !DILocation(line: 542, column: 48, scope: !2821)
!2992 = !DILocation(line: 0, scope: !2154, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 542, column: 13, scope: !2821)
!2994 = !DILocation(line: 499, column: 5, scope: !2154, inlinedAt: !2993)
!2995 = !DILocation(line: 503, column: 5, scope: !2154, inlinedAt: !2993)
!2996 = !DILocation(line: 504, column: 34, scope: !2154, inlinedAt: !2993)
!2997 = !DILocation(line: 504, column: 11, scope: !2154, inlinedAt: !2993)
!2998 = !DILocation(line: 504, column: 56, scope: !2154, inlinedAt: !2993)
!2999 = !DILocation(line: 504, column: 54, scope: !2154, inlinedAt: !2993)
!3000 = !DILocation(line: 505, column: 11, scope: !2154, inlinedAt: !2993)
!3001 = !DILocation(line: 505, column: 56, scope: !2154, inlinedAt: !2993)
!3002 = !DILocation(line: 505, column: 54, scope: !2154, inlinedAt: !2993)
!3003 = !DILocation(line: 508, column: 5, scope: !2154, inlinedAt: !2993)
!3004 = !DILocation(line: 509, column: 5, scope: !2154, inlinedAt: !2993)
!3005 = !DILocation(line: 512, column: 35, scope: !2154, inlinedAt: !2993)
!3006 = !DILocation(line: 512, column: 53, scope: !2154, inlinedAt: !2993)
!3007 = !DILocation(line: 0, scope: !2179, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 512, column: 94, scope: !2154, inlinedAt: !2993)
!3009 = !DILocation(line: 349, column: 13, scope: !2179, inlinedAt: !3008)
!3010 = !DILocation(line: 349, column: 26, scope: !2179, inlinedAt: !3008)
!3011 = !DILocation(line: 349, column: 22, scope: !2179, inlinedAt: !3008)
!3012 = !DILocation(line: 0, scope: !2190, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 512, column: 5, scope: !2154, inlinedAt: !2993)
!3014 = !DILocation(line: 392, column: 71, scope: !2190, inlinedAt: !3013)
!3015 = !DILocation(line: 392, column: 75, scope: !2190, inlinedAt: !3013)
!3016 = !DILocation(line: 392, column: 73, scope: !2190, inlinedAt: !3013)
!3017 = !DILocation(line: 392, column: 35, scope: !2190, inlinedAt: !3013)
!3018 = !DILocation(line: 0, scope: !2204, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 392, column: 5, scope: !2190, inlinedAt: !3013)
!3020 = !DILocation(line: 375, column: 43, scope: !2751, inlinedAt: !3019)
!3021 = !DILocation(line: 513, column: 1, scope: !2154, inlinedAt: !2993)
!3022 = !DILocation(line: 543, column: 50, scope: !2821)
!3023 = !DILocation(line: 0, scope: !2154, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 543, column: 13, scope: !2821)
!3025 = !DILocation(line: 499, column: 5, scope: !2154, inlinedAt: !3024)
!3026 = !DILocation(line: 503, column: 5, scope: !2154, inlinedAt: !3024)
!3027 = !DILocation(line: 504, column: 34, scope: !2154, inlinedAt: !3024)
!3028 = !DILocation(line: 504, column: 11, scope: !2154, inlinedAt: !3024)
!3029 = !DILocation(line: 504, column: 56, scope: !2154, inlinedAt: !3024)
!3030 = !DILocation(line: 504, column: 54, scope: !2154, inlinedAt: !3024)
!3031 = !DILocation(line: 505, column: 11, scope: !2154, inlinedAt: !3024)
!3032 = !DILocation(line: 505, column: 56, scope: !2154, inlinedAt: !3024)
!3033 = !DILocation(line: 505, column: 54, scope: !2154, inlinedAt: !3024)
!3034 = !DILocation(line: 508, column: 5, scope: !2154, inlinedAt: !3024)
!3035 = !DILocation(line: 509, column: 5, scope: !2154, inlinedAt: !3024)
!3036 = !DILocation(line: 512, column: 35, scope: !2154, inlinedAt: !3024)
!3037 = !DILocation(line: 512, column: 53, scope: !2154, inlinedAt: !3024)
!3038 = !DILocation(line: 0, scope: !2179, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 512, column: 94, scope: !2154, inlinedAt: !3024)
!3040 = !DILocation(line: 349, column: 13, scope: !2179, inlinedAt: !3039)
!3041 = !DILocation(line: 349, column: 26, scope: !2179, inlinedAt: !3039)
!3042 = !DILocation(line: 349, column: 22, scope: !2179, inlinedAt: !3039)
!3043 = !DILocation(line: 0, scope: !2190, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 512, column: 5, scope: !2154, inlinedAt: !3024)
!3045 = !DILocation(line: 392, column: 71, scope: !2190, inlinedAt: !3044)
!3046 = !DILocation(line: 392, column: 75, scope: !2190, inlinedAt: !3044)
!3047 = !DILocation(line: 392, column: 73, scope: !2190, inlinedAt: !3044)
!3048 = !DILocation(line: 392, column: 35, scope: !2190, inlinedAt: !3044)
!3049 = !DILocation(line: 0, scope: !2204, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 392, column: 5, scope: !2190, inlinedAt: !3044)
!3051 = !DILocation(line: 375, column: 43, scope: !2751, inlinedAt: !3050)
!3052 = !DILocation(line: 513, column: 1, scope: !2154, inlinedAt: !3024)
!3053 = !DILocation(line: 544, column: 50, scope: !2821)
!3054 = !DILocation(line: 0, scope: !2154, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 544, column: 13, scope: !2821)
!3056 = !DILocation(line: 499, column: 5, scope: !2154, inlinedAt: !3055)
!3057 = !DILocation(line: 503, column: 5, scope: !2154, inlinedAt: !3055)
!3058 = !DILocation(line: 504, column: 34, scope: !2154, inlinedAt: !3055)
!3059 = !DILocation(line: 504, column: 11, scope: !2154, inlinedAt: !3055)
!3060 = !DILocation(line: 504, column: 56, scope: !2154, inlinedAt: !3055)
!3061 = !DILocation(line: 504, column: 54, scope: !2154, inlinedAt: !3055)
!3062 = !DILocation(line: 505, column: 11, scope: !2154, inlinedAt: !3055)
!3063 = !DILocation(line: 505, column: 56, scope: !2154, inlinedAt: !3055)
!3064 = !DILocation(line: 505, column: 54, scope: !2154, inlinedAt: !3055)
!3065 = !DILocation(line: 508, column: 5, scope: !2154, inlinedAt: !3055)
!3066 = !DILocation(line: 509, column: 5, scope: !2154, inlinedAt: !3055)
!3067 = !DILocation(line: 512, column: 35, scope: !2154, inlinedAt: !3055)
!3068 = !DILocation(line: 512, column: 53, scope: !2154, inlinedAt: !3055)
!3069 = !DILocation(line: 0, scope: !2179, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 512, column: 94, scope: !2154, inlinedAt: !3055)
!3071 = !DILocation(line: 349, column: 13, scope: !2179, inlinedAt: !3070)
!3072 = !DILocation(line: 349, column: 26, scope: !2179, inlinedAt: !3070)
!3073 = !DILocation(line: 349, column: 22, scope: !2179, inlinedAt: !3070)
!3074 = !DILocation(line: 0, scope: !2190, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 512, column: 5, scope: !2154, inlinedAt: !3055)
!3076 = !DILocation(line: 392, column: 71, scope: !2190, inlinedAt: !3075)
!3077 = !DILocation(line: 392, column: 75, scope: !2190, inlinedAt: !3075)
!3078 = !DILocation(line: 392, column: 73, scope: !2190, inlinedAt: !3075)
!3079 = !DILocation(line: 392, column: 35, scope: !2190, inlinedAt: !3075)
!3080 = !DILocation(line: 0, scope: !2204, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 392, column: 5, scope: !2190, inlinedAt: !3075)
!3082 = !DILocation(line: 375, column: 43, scope: !2751, inlinedAt: !3081)
!3083 = !DILocation(line: 513, column: 1, scope: !2154, inlinedAt: !3055)
!3084 = !DILocation(line: 545, column: 50, scope: !2821)
!3085 = !DILocation(line: 0, scope: !2154, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 545, column: 13, scope: !2821)
!3087 = !DILocation(line: 499, column: 5, scope: !2154, inlinedAt: !3086)
!3088 = !DILocation(line: 503, column: 5, scope: !2154, inlinedAt: !3086)
!3089 = !DILocation(line: 504, column: 34, scope: !2154, inlinedAt: !3086)
!3090 = !DILocation(line: 504, column: 11, scope: !2154, inlinedAt: !3086)
!3091 = !DILocation(line: 504, column: 56, scope: !2154, inlinedAt: !3086)
!3092 = !DILocation(line: 504, column: 54, scope: !2154, inlinedAt: !3086)
!3093 = !DILocation(line: 505, column: 11, scope: !2154, inlinedAt: !3086)
!3094 = !DILocation(line: 505, column: 56, scope: !2154, inlinedAt: !3086)
!3095 = !DILocation(line: 505, column: 54, scope: !2154, inlinedAt: !3086)
!3096 = !DILocation(line: 508, column: 5, scope: !2154, inlinedAt: !3086)
!3097 = !DILocation(line: 509, column: 5, scope: !2154, inlinedAt: !3086)
!3098 = !DILocation(line: 512, column: 35, scope: !2154, inlinedAt: !3086)
!3099 = !DILocation(line: 512, column: 53, scope: !2154, inlinedAt: !3086)
!3100 = !DILocation(line: 0, scope: !2179, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 512, column: 94, scope: !2154, inlinedAt: !3086)
!3102 = !DILocation(line: 349, column: 13, scope: !2179, inlinedAt: !3101)
!3103 = !DILocation(line: 349, column: 26, scope: !2179, inlinedAt: !3101)
!3104 = !DILocation(line: 349, column: 22, scope: !2179, inlinedAt: !3101)
!3105 = !DILocation(line: 0, scope: !2190, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 512, column: 5, scope: !2154, inlinedAt: !3086)
!3107 = !DILocation(line: 392, column: 71, scope: !2190, inlinedAt: !3106)
!3108 = !DILocation(line: 392, column: 75, scope: !2190, inlinedAt: !3106)
!3109 = !DILocation(line: 392, column: 73, scope: !2190, inlinedAt: !3106)
!3110 = !DILocation(line: 392, column: 35, scope: !2190, inlinedAt: !3106)
!3111 = !DILocation(line: 0, scope: !2204, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 392, column: 5, scope: !2190, inlinedAt: !3106)
!3113 = !DILocation(line: 375, column: 43, scope: !2751, inlinedAt: !3112)
!3114 = !DILocation(line: 513, column: 1, scope: !2154, inlinedAt: !3086)
!3115 = !DILocation(line: 546, column: 13, scope: !2821)
!3116 = !DILocation(line: 548, column: 1, scope: !2808)
!3117 = !DILocation(line: 0, scope: !1276)
!3118 = !DILocation(line: 395, column: 15, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 395, column: 9)
!3120 = !DILocation(line: 395, column: 9, scope: !1276)
!3121 = !DILocation(line: 397, column: 9, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 396, column: 5)
!3123 = !DILocation(line: 398, column: 9, scope: !3122)
!3124 = !DILocation(line: 400, column: 11, scope: !1276)
!3125 = !DILocation(line: 401, column: 41, scope: !1276)
!3126 = !DILocation(line: 401, column: 5, scope: !1276)
!3127 = !DILocation(line: 402, column: 41, scope: !1276)
!3128 = !DILocation(line: 402, column: 5, scope: !1276)
!3129 = !DILocation(line: 403, column: 13, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 403, column: 9)
!3131 = !DILocation(line: 0, scope: !3130)
!3132 = !DILocation(line: 403, column: 9, scope: !1276)
!3133 = !DILocation(line: 404, column: 9, scope: !3130)
!3134 = !DILocation(line: 407, column: 9, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 406, column: 5)
!3136 = !DILocation(line: 408, column: 45, scope: !3135)
!3137 = !DILocation(line: 408, column: 9, scope: !3135)
!3138 = !DILocation(line: 409, column: 45, scope: !3135)
!3139 = !DILocation(line: 409, column: 9, scope: !3135)
!3140 = !DILocation(line: 410, column: 17, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 410, column: 13)
!3142 = !DILocation(line: 410, column: 13, scope: !3135)
!3143 = !DILocation(line: 411, column: 49, scope: !3141)
!3144 = !DILocation(line: 411, column: 13, scope: !3141)
!3145 = !DILocation(line: 413, column: 1, scope: !1276)
!3146 = distinct !DISubprogram(name: "block_residual_write_cabac", scope: !3, file: !3, line: 681, type: !3147, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3149)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{null, !117, !1211, !128, !128, !757, !128}
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3170, !3172}
!3150 = !DILocalVariable(name: "h", arg: 1, scope: !3146, file: !3, line: 681, type: !117)
!3151 = !DILocalVariable(name: "cb", arg: 2, scope: !3146, file: !3, line: 681, type: !1211)
!3152 = !DILocalVariable(name: "i_ctxBlockCat", arg: 3, scope: !3146, file: !3, line: 681, type: !128)
!3153 = !DILocalVariable(name: "i_idx", arg: 4, scope: !3146, file: !3, line: 681, type: !128)
!3154 = !DILocalVariable(name: "l", arg: 5, scope: !3146, file: !3, line: 681, type: !757)
!3155 = !DILocalVariable(name: "i_count", arg: 6, scope: !3146, file: !3, line: 681, type: !128)
!3156 = !DILocalVariable(name: "i_ctx_sig", scope: !3146, file: !3, line: 683, type: !1216)
!3157 = !DILocalVariable(name: "i_ctx_last", scope: !3146, file: !3, line: 684, type: !1216)
!3158 = !DILocalVariable(name: "i_ctx_level", scope: !3146, file: !3, line: 685, type: !1216)
!3159 = !DILocalVariable(name: "significant_coeff_flag_offset", scope: !3146, file: !3, line: 686, type: !423)
!3160 = !DILocalVariable(name: "i_coeff_abs_m1", scope: !3146, file: !3, line: 688, type: !449)
!3161 = !DILocalVariable(name: "i_coeff_sign", scope: !3146, file: !3, line: 689, type: !449)
!3162 = !DILocalVariable(name: "i_coeff", scope: !3146, file: !3, line: 690, type: !128)
!3163 = !DILocalVariable(name: "i_last", scope: !3146, file: !3, line: 691, type: !128)
!3164 = !DILocalVariable(name: "i_sigmap_size", scope: !3146, file: !3, line: 692, type: !128)
!3165 = !DILocalVariable(name: "node_ctx", scope: !3146, file: !3, line: 693, type: !128)
!3166 = !DILocalVariable(name: "i", scope: !3146, file: !3, line: 694, type: !128)
!3167 = !DILocalVariable(name: "ctx", scope: !3168, file: !3, line: 699, type: !128)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 697, column: 5)
!3169 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 696, column: 9)
!3170 = !DILocalVariable(name: "i_prefix", scope: !3171, file: !3, line: 745, type: !128)
!3171 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 744, column: 5)
!3172 = !DILocalVariable(name: "ctx", scope: !3171, file: !3, line: 745, type: !128)
!3173 = !DILocation(line: 0, scope: !3146)
!3174 = !DILocation(line: 683, column: 63, scope: !3146)
!3175 = !DILocation(line: 683, column: 27, scope: !3146)
!3176 = !DILocation(line: 684, column: 28, scope: !3146)
!3177 = !DILocation(line: 685, column: 29, scope: !3146)
!3178 = !DILocation(line: 686, column: 52, scope: !3146)
!3179 = !DILocation(line: 688, column: 5, scope: !3146)
!3180 = !DILocation(line: 688, column: 9, scope: !3146)
!3181 = !DILocation(line: 689, column: 5, scope: !3146)
!3182 = !DILocation(line: 689, column: 9, scope: !3146)
!3183 = !DILocation(line: 696, column: 17, scope: !3169)
!3184 = !DILocation(line: 696, column: 9, scope: !3146)
!3185 = !DILocalVariable(name: "h", arg: 1, scope: !3186, file: !3, line: 550, type: !117)
!3186 = distinct !DISubprogram(name: "x264_cabac_mb_cbf_ctxidxinc", scope: !3, file: !3, line: 550, type: !3187, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!128, !117, !128, !128}
!3189 = !{!3185, !3190, !3191, !3192, !3193, !3194, !3195}
!3190 = !DILocalVariable(name: "i_cat", arg: 2, scope: !3186, file: !3, line: 550, type: !128)
!3191 = !DILocalVariable(name: "i_idx", arg: 3, scope: !3186, file: !3, line: 550, type: !128)
!3192 = !DILocalVariable(name: "i_mba_xy", scope: !3186, file: !3, line: 560, type: !128)
!3193 = !DILocalVariable(name: "i_mbb_xy", scope: !3186, file: !3, line: 561, type: !128)
!3194 = !DILocalVariable(name: "i_nza", scope: !3186, file: !3, line: 562, type: !128)
!3195 = !DILocalVariable(name: "i_nzb", scope: !3186, file: !3, line: 563, type: !128)
!3196 = !DILocation(line: 0, scope: !3186, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 699, column: 24, scope: !3168)
!3198 = !DILocation(line: 565, column: 5, scope: !3186, inlinedAt: !3197)
!3199 = !DILocation(line: 568, column: 23, scope: !3200, inlinedAt: !3197)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 568, column: 17)
!3201 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 566, column: 5)
!3202 = !DILocation(line: 568, column: 35, scope: !3200, inlinedAt: !3197)
!3203 = !DILocation(line: 568, column: 17, scope: !3201, inlinedAt: !3197)
!3204 = !DILocation(line: 570, column: 34, scope: !3205, inlinedAt: !3197)
!3205 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 569, column: 13)
!3206 = !DILocation(line: 570, column: 42, scope: !3205, inlinedAt: !3197)
!3207 = !DILocation(line: 571, column: 31, scope: !3205, inlinedAt: !3197)
!3208 = !DILocation(line: 571, column: 25, scope: !3205, inlinedAt: !3197)
!3209 = !DILocation(line: 571, column: 45, scope: !3205, inlinedAt: !3197)
!3210 = !DILocation(line: 572, column: 13, scope: !3205, inlinedAt: !3197)
!3211 = !DILocation(line: 573, column: 35, scope: !3212, inlinedAt: !3197)
!3212 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 573, column: 17)
!3213 = !DILocation(line: 573, column: 17, scope: !3201, inlinedAt: !3197)
!3214 = !DILocation(line: 575, column: 34, scope: !3215, inlinedAt: !3197)
!3215 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 574, column: 13)
!3216 = !DILocation(line: 576, column: 31, scope: !3215, inlinedAt: !3197)
!3217 = !DILocation(line: 576, column: 25, scope: !3215, inlinedAt: !3197)
!3218 = !DILocation(line: 576, column: 45, scope: !3215, inlinedAt: !3197)
!3219 = !DILocation(line: 577, column: 13, scope: !3215, inlinedAt: !3197)
!3220 = !DILocation(line: 581, column: 23, scope: !3221, inlinedAt: !3197)
!3221 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 581, column: 17)
!3222 = !DILocation(line: 581, column: 17, scope: !3201, inlinedAt: !3197)
!3223 = !DILocation(line: 582, column: 34, scope: !3221, inlinedAt: !3197)
!3224 = !DILocation(line: 582, column: 17, scope: !3221, inlinedAt: !3197)
!3225 = !DILocation(line: 583, column: 28, scope: !3226, inlinedAt: !3197)
!3226 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 583, column: 22)
!3227 = !DILocation(line: 583, column: 40, scope: !3226, inlinedAt: !3197)
!3228 = !DILocation(line: 583, column: 22, scope: !3221, inlinedAt: !3197)
!3229 = !DILocation(line: 584, column: 34, scope: !3226, inlinedAt: !3197)
!3230 = !DILocation(line: 584, column: 42, scope: !3226, inlinedAt: !3197)
!3231 = !DILocation(line: 584, column: 17, scope: !3226, inlinedAt: !3197)
!3232 = !DILocation(line: 586, column: 23, scope: !3233, inlinedAt: !3197)
!3233 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 586, column: 17)
!3234 = !DILocation(line: 586, column: 17, scope: !3201, inlinedAt: !3197)
!3235 = !DILocation(line: 587, column: 34, scope: !3233, inlinedAt: !3197)
!3236 = !DILocation(line: 587, column: 17, scope: !3233, inlinedAt: !3197)
!3237 = !DILocation(line: 588, column: 28, scope: !3238, inlinedAt: !3197)
!3238 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 588, column: 22)
!3239 = !DILocation(line: 588, column: 40, scope: !3238, inlinedAt: !3197)
!3240 = !DILocation(line: 588, column: 22, scope: !3233, inlinedAt: !3197)
!3241 = !DILocation(line: 589, column: 34, scope: !3238, inlinedAt: !3197)
!3242 = !DILocation(line: 589, column: 17, scope: !3238, inlinedAt: !3197)
!3243 = !DILocation(line: 592, column: 26, scope: !3244, inlinedAt: !3197)
!3244 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 592, column: 17)
!3245 = !DILocation(line: 592, column: 17, scope: !3201, inlinedAt: !3197)
!3246 = !DILocation(line: 593, column: 52, scope: !3244, inlinedAt: !3197)
!3247 = !DILocation(line: 593, column: 70, scope: !3244, inlinedAt: !3197)
!3248 = !DILocation(line: 593, column: 25, scope: !3244, inlinedAt: !3197)
!3249 = !DILocation(line: 593, column: 17, scope: !3244, inlinedAt: !3197)
!3250 = !DILocation(line: 594, column: 26, scope: !3251, inlinedAt: !3197)
!3251 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 594, column: 17)
!3252 = !DILocation(line: 594, column: 17, scope: !3201, inlinedAt: !3197)
!3253 = !DILocation(line: 595, column: 52, scope: !3251, inlinedAt: !3197)
!3254 = !DILocation(line: 595, column: 70, scope: !3251, inlinedAt: !3197)
!3255 = !DILocation(line: 595, column: 25, scope: !3251, inlinedAt: !3197)
!3256 = !DILocation(line: 595, column: 17, scope: !3251, inlinedAt: !3197)
!3257 = !DILocation(line: 599, column: 19, scope: !3201, inlinedAt: !3197)
!3258 = !DILocation(line: 600, column: 23, scope: !3259, inlinedAt: !3197)
!3259 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 600, column: 17)
!3260 = !DILocation(line: 600, column: 35, scope: !3259, inlinedAt: !3197)
!3261 = !DILocation(line: 600, column: 17, scope: !3201, inlinedAt: !3197)
!3262 = !DILocation(line: 602, column: 34, scope: !3263, inlinedAt: !3197)
!3263 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 601, column: 13)
!3264 = !DILocation(line: 602, column: 42, scope: !3263, inlinedAt: !3197)
!3265 = !DILocation(line: 603, column: 31, scope: !3263, inlinedAt: !3197)
!3266 = !DILocation(line: 603, column: 25, scope: !3263, inlinedAt: !3197)
!3267 = !DILocation(line: 603, column: 54, scope: !3263, inlinedAt: !3197)
!3268 = !DILocation(line: 603, column: 45, scope: !3263, inlinedAt: !3197)
!3269 = !DILocation(line: 604, column: 13, scope: !3263, inlinedAt: !3197)
!3270 = !DILocation(line: 605, column: 35, scope: !3271, inlinedAt: !3197)
!3271 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 605, column: 17)
!3272 = !DILocation(line: 605, column: 17, scope: !3201, inlinedAt: !3197)
!3273 = !DILocation(line: 607, column: 34, scope: !3274, inlinedAt: !3197)
!3274 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 606, column: 13)
!3275 = !DILocation(line: 608, column: 31, scope: !3274, inlinedAt: !3197)
!3276 = !DILocation(line: 608, column: 25, scope: !3274, inlinedAt: !3197)
!3277 = !DILocation(line: 608, column: 54, scope: !3274, inlinedAt: !3197)
!3278 = !DILocation(line: 608, column: 45, scope: !3274, inlinedAt: !3197)
!3279 = !DILocation(line: 609, column: 13, scope: !3274, inlinedAt: !3197)
!3280 = !DILocation(line: 612, column: 23, scope: !3281, inlinedAt: !3197)
!3281 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 612, column: 17)
!3282 = !DILocation(line: 612, column: 17, scope: !3201, inlinedAt: !3197)
!3283 = !DILocation(line: 613, column: 34, scope: !3281, inlinedAt: !3197)
!3284 = !DILocation(line: 613, column: 17, scope: !3281, inlinedAt: !3197)
!3285 = !DILocation(line: 614, column: 28, scope: !3286, inlinedAt: !3197)
!3286 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 614, column: 22)
!3287 = !DILocation(line: 614, column: 40, scope: !3286, inlinedAt: !3197)
!3288 = !DILocation(line: 614, column: 22, scope: !3281, inlinedAt: !3197)
!3289 = !DILocation(line: 615, column: 34, scope: !3286, inlinedAt: !3197)
!3290 = !DILocation(line: 615, column: 42, scope: !3286, inlinedAt: !3197)
!3291 = !DILocation(line: 615, column: 17, scope: !3286, inlinedAt: !3197)
!3292 = !DILocation(line: 617, column: 23, scope: !3293, inlinedAt: !3197)
!3293 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 617, column: 17)
!3294 = !DILocation(line: 617, column: 17, scope: !3201, inlinedAt: !3197)
!3295 = !DILocation(line: 618, column: 34, scope: !3293, inlinedAt: !3197)
!3296 = !DILocation(line: 618, column: 17, scope: !3293, inlinedAt: !3197)
!3297 = !DILocation(line: 619, column: 28, scope: !3298, inlinedAt: !3197)
!3298 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 619, column: 22)
!3299 = !DILocation(line: 619, column: 40, scope: !3298, inlinedAt: !3197)
!3300 = !DILocation(line: 619, column: 22, scope: !3293, inlinedAt: !3197)
!3301 = !DILocation(line: 620, column: 34, scope: !3298, inlinedAt: !3197)
!3302 = !DILocation(line: 620, column: 17, scope: !3298, inlinedAt: !3197)
!3303 = !DILocation(line: 623, column: 26, scope: !3304, inlinedAt: !3197)
!3304 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 623, column: 17)
!3305 = !DILocation(line: 623, column: 17, scope: !3201, inlinedAt: !3197)
!3306 = !DILocation(line: 624, column: 52, scope: !3304, inlinedAt: !3197)
!3307 = !DILocation(line: 624, column: 70, scope: !3304, inlinedAt: !3197)
!3308 = !DILocation(line: 624, column: 25, scope: !3304, inlinedAt: !3197)
!3309 = !DILocation(line: 624, column: 17, scope: !3304, inlinedAt: !3197)
!3310 = !DILocation(line: 625, column: 26, scope: !3311, inlinedAt: !3197)
!3311 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 625, column: 17)
!3312 = !DILocation(line: 625, column: 17, scope: !3201, inlinedAt: !3197)
!3313 = !DILocation(line: 626, column: 52, scope: !3311, inlinedAt: !3197)
!3314 = !DILocation(line: 626, column: 70, scope: !3311, inlinedAt: !3197)
!3315 = !DILocation(line: 626, column: 25, scope: !3311, inlinedAt: !3197)
!3316 = !DILocation(line: 626, column: 17, scope: !3311, inlinedAt: !3197)
!3317 = !DILocation(line: 629, column: 9, scope: !3318, inlinedAt: !3197)
!3318 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 629, column: 9)
!3319 = !DILocation(line: 635, column: 13, scope: !3186, inlinedAt: !3197)
!3320 = !DILocation(line: 635, column: 25, scope: !3186, inlinedAt: !3197)
!3321 = !DILocation(line: 635, column: 23, scope: !3186, inlinedAt: !3197)
!3322 = !DILocation(line: 635, column: 35, scope: !3186, inlinedAt: !3197)
!3323 = !DILocation(line: 635, column: 34, scope: !3186, inlinedAt: !3197)
!3324 = !DILocation(line: 635, column: 20, scope: !3186, inlinedAt: !3197)
!3325 = !DILocation(line: 635, column: 32, scope: !3186, inlinedAt: !3197)
!3326 = !DILocation(line: 699, column: 22, scope: !3168)
!3327 = !DILocation(line: 0, scope: !3168)
!3328 = !DILocation(line: 700, column: 40, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 700, column: 13)
!3330 = !DILocation(line: 700, column: 13, scope: !3329)
!3331 = !DILocation(line: 700, column: 13, scope: !3168)
!3332 = !DILocation(line: 704, column: 13, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 703, column: 9)
!3334 = !DILocation(line: 701, column: 13, scope: !3329)
!3335 = !DILocation(line: 709, column: 14, scope: !3146)
!3336 = !DILocation(line: 711, column: 21, scope: !3146)
!3337 = !DILocation(line: 729, column: 23, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 729, column: 9)
!3339 = !DILocation(line: 0, scope: !3338)
!3340 = !DILocation(line: 729, column: 9, scope: !3146)
!3341 = !DILocation(line: 732, column: 9, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 732, column: 9)
!3343 = !DILocation(line: 732, column: 9, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3342, file: !3, line: 732, column: 9)
!3345 = !DILocation(line: 730, column: 9, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 730, column: 9)
!3347 = !DILocation(line: 730, column: 9, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 730, column: 9)
!3349 = !DILocation(line: 730, column: 9, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !3, line: 730, column: 9)
!3351 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 730, column: 9)
!3352 = !DILocation(line: 730, column: 9, scope: !3351)
!3353 = !DILocation(line: 730, column: 9, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 730, column: 9)
!3355 = !DILocation(line: 730, column: 9, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 730, column: 9)
!3357 = distinct !{!3357, !3345, !3345, !1570}
!3358 = !DILocation(line: 732, column: 9, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 732, column: 9)
!3360 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 732, column: 9)
!3361 = !DILocation(line: 732, column: 9, scope: !3360)
!3362 = !DILocation(line: 732, column: 9, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 732, column: 9)
!3364 = !DILocation(line: 732, column: 9, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 732, column: 9)
!3366 = distinct !{!3366, !3341, !3341, !1570}
!3367 = !DILocation(line: 690, column: 9, scope: !3146)
!3368 = !DILocation(line: 734, column: 11, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 734, column: 9)
!3370 = !DILocation(line: 734, column: 9, scope: !3146)
!3371 = !DILocation(line: 736, column: 39, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 735, column: 5)
!3373 = !DILocation(line: 736, column: 35, scope: !3372)
!3374 = !DILocation(line: 736, column: 45, scope: !3372)
!3375 = !DILocation(line: 736, column: 9, scope: !3372)
!3376 = !DILocation(line: 736, column: 33, scope: !3372)
!3377 = !DILocation(line: 738, column: 40, scope: !3372)
!3378 = !DILocation(line: 738, column: 9, scope: !3372)
!3379 = !DILocation(line: 738, column: 33, scope: !3372)
!3380 = !DILocation(line: 740, column: 16, scope: !3372)
!3381 = !DILocation(line: 741, column: 5, scope: !3372)
!3382 = !DILocation(line: 743, column: 5, scope: !3146)
!3383 = !DILocation(line: 746, column: 16, scope: !3171)
!3384 = !DILocation(line: 749, column: 20, scope: !3171)
!3385 = !DILocation(line: 0, scope: !3171)
!3386 = !DILocation(line: 750, column: 15, scope: !3171)
!3387 = !DILocation(line: 750, column: 46, scope: !3171)
!3388 = !DILocation(line: 752, column: 13, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 752, column: 13)
!3390 = !DILocation(line: 752, column: 13, scope: !3171)
!3391 = !DILocation(line: 754, column: 13, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 753, column: 9)
!3393 = !DILocation(line: 755, column: 19, scope: !3392)
!3394 = !DILocation(line: 755, column: 52, scope: !3392)
!3395 = !DILocation(line: 760, column: 27, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 760, column: 13)
!3397 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 760, column: 13)
!3398 = !DILocation(line: 760, column: 13, scope: !3397)
!3399 = !DILocation(line: 761, column: 17, scope: !3396)
!3400 = !DILocation(line: 760, column: 44, scope: !3396)
!3401 = distinct !{!3401, !3398, !3402, !1570}
!3402 = !DILocation(line: 761, column: 56, scope: !3397)
!3403 = !DILocation(line: 762, column: 17, scope: !3392)
!3404 = !DILocation(line: 763, column: 17, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 762, column: 17)
!3406 = !DILocation(line: 765, column: 26, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 765, column: 17)
!3408 = !DILocation(line: 765, column: 17, scope: !3392)
!3409 = !DILocation(line: 766, column: 77, scope: !3407)
!3410 = !DILocation(line: 766, column: 17, scope: !3407)
!3411 = !DILocation(line: 772, column: 13, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 771, column: 9)
!3413 = !DILocation(line: 0, scope: !3389)
!3414 = !DILocation(line: 780, column: 39, scope: !3171)
!3415 = !DILocation(line: 780, column: 9, scope: !3171)
!3416 = !DILocation(line: 782, column: 22, scope: !3146)
!3417 = !DILocation(line: 782, column: 5, scope: !3171)
!3418 = distinct !{!3418, !3382, !3419, !1570}
!3419 = !DILocation(line: 782, column: 26, scope: !3146)
!3420 = !DILocation(line: 783, column: 1, scope: !3146)
!3421 = distinct !DISubprogram(name: "x264_cabac_mb_type_intra", scope: !3, file: !3, line: 32, type: !3422, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3424)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{null, !117, !1211, !128, !128, !128, !128, !128, !128, !128}
!3424 = !{!3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434}
!3425 = !DILocalVariable(name: "h", arg: 1, scope: !3421, file: !3, line: 32, type: !117)
!3426 = !DILocalVariable(name: "cb", arg: 2, scope: !3421, file: !3, line: 32, type: !1211)
!3427 = !DILocalVariable(name: "i_mb_type", arg: 3, scope: !3421, file: !3, line: 32, type: !128)
!3428 = !DILocalVariable(name: "ctx0", arg: 4, scope: !3421, file: !3, line: 33, type: !128)
!3429 = !DILocalVariable(name: "ctx1", arg: 5, scope: !3421, file: !3, line: 33, type: !128)
!3430 = !DILocalVariable(name: "ctx2", arg: 6, scope: !3421, file: !3, line: 33, type: !128)
!3431 = !DILocalVariable(name: "ctx3", arg: 7, scope: !3421, file: !3, line: 33, type: !128)
!3432 = !DILocalVariable(name: "ctx4", arg: 8, scope: !3421, file: !3, line: 33, type: !128)
!3433 = !DILocalVariable(name: "ctx5", arg: 9, scope: !3421, file: !3, line: 33, type: !128)
!3434 = !DILocalVariable(name: "i_pred", scope: !3435, file: !3, line: 46, type: !128)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 45, column: 5)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 39, column: 14)
!3437 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 35, column: 9)
!3438 = !DILocation(line: 0, scope: !3421)
!3439 = !DILocation(line: 35, column: 28, scope: !3437)
!3440 = !DILocation(line: 37, column: 9, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 36, column: 5)
!3442 = !DILocation(line: 38, column: 5, scope: !3441)
!3443 = !DILocation(line: 39, column: 24, scope: !3436)
!3444 = !DILocation(line: 39, column: 14, scope: !3437)
!3445 = !DILocation(line: 41, column: 9, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 40, column: 5)
!3447 = !DILocation(line: 42, column: 9, scope: !3446)
!3448 = !DILocation(line: 43, column: 5, scope: !3446)
!3449 = !DILocation(line: 46, column: 55, scope: !3435)
!3450 = !{!1351, !1353, i64 11820}
!3451 = !DILocation(line: 46, column: 22, scope: !3435)
!3452 = !DILocation(line: 0, scope: !3435)
!3453 = !DILocation(line: 48, column: 9, scope: !3435)
!3454 = !DILocation(line: 49, column: 9, scope: !3435)
!3455 = !DILocation(line: 51, column: 60, scope: !3435)
!3456 = !DILocation(line: 51, column: 53, scope: !3435)
!3457 = !DILocation(line: 51, column: 52, scope: !3435)
!3458 = !DILocation(line: 51, column: 9, scope: !3435)
!3459 = !DILocation(line: 52, column: 19, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 52, column: 13)
!3461 = !DILocation(line: 52, column: 32, scope: !3460)
!3462 = !DILocation(line: 52, column: 13, scope: !3435)
!3463 = !DILocation(line: 54, column: 13, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3460, file: !3, line: 53, column: 9)
!3465 = !DILocation(line: 55, column: 9, scope: !3464)
!3466 = !DILocation(line: 58, column: 13, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3460, file: !3, line: 57, column: 9)
!3468 = !DILocation(line: 59, column: 62, scope: !3467)
!3469 = !DILocation(line: 59, column: 75, scope: !3467)
!3470 = !DILocation(line: 59, column: 13, scope: !3467)
!3471 = !DILocation(line: 61, column: 9, scope: !3435)
!3472 = !DILocation(line: 62, column: 58, scope: !3435)
!3473 = !DILocation(line: 62, column: 9, scope: !3435)
!3474 = !DILocation(line: 64, column: 1, scope: !3421)
!3475 = !DISubprogram(name: "x264_log", scope: !30, file: !30, line: 99, type: !3476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1396)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{null, !117, !128, !188, null}
!3478 = !DISubprogram(name: "x264_cabac_encode_flush", scope: !513, file: !513, line: 61, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1396)
!3479 = !DISubprogram(name: "x264_cabac_encode_terminal", scope: !513, file: !513, line: 60, type: !3480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1396)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{null, !1211}
!3482 = !DISubprogram(name: "x264_mb_predict_mv", scope: !6, file: !6, line: 299, type: !3483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1396)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{null, !117, !128, !128, !128, !757}
!3485 = !DILocation(line: 0, scope: !1251)
!3486 = !DILocation(line: 450, column: 51, scope: !1251)
!3487 = !DILocation(line: 450, column: 67, scope: !1251)
!3488 = !DILocation(line: 450, column: 27, scope: !1251)
!3489 = !DILocation(line: 450, column: 22, scope: !1251)
!3490 = !DILocation(line: 451, column: 67, scope: !1251)
!3491 = !DILocation(line: 451, column: 27, scope: !1251)
!3492 = !DILocation(line: 451, column: 22, scope: !1251)
!3493 = !DILocation(line: 450, column: 77, scope: !1251)
!3494 = !DILocation(line: 452, column: 23, scope: !1251)
!3495 = !DILocation(line: 453, column: 25, scope: !1251)
!3496 = !DILocation(line: 454, column: 20, scope: !1251)
!3497 = !DILocation(line: 454, column: 31, scope: !1251)
!3498 = !DILocation(line: 454, column: 24, scope: !1251)
!3499 = !DILocation(line: 457, column: 15, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 457, column: 9)
!3501 = !DILocation(line: 457, column: 9, scope: !1251)
!3502 = !DILocation(line: 458, column: 49, scope: !3500)
!3503 = !DILocation(line: 458, column: 9, scope: !3500)
!3504 = !DILocation(line: 459, column: 20, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3500, file: !3, line: 459, column: 14)
!3506 = !DILocation(line: 0, scope: !3505)
!3507 = !DILocation(line: 459, column: 14, scope: !3500)
!3508 = !DILocation(line: 473, column: 27, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 473, column: 13)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 473, column: 13)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 472, column: 9)
!3512 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 460, column: 5)
!3513 = !DILocation(line: 0, scope: !3511)
!3514 = !DILocation(line: 473, column: 13, scope: !3510)
!3515 = !DILocation(line: 474, column: 59, scope: !3509)
!3516 = !DILocation(line: 474, column: 57, scope: !3509)
!3517 = !DILocation(line: 474, column: 17, scope: !3509)
!3518 = !DILocation(line: 473, column: 37, scope: !3509)
!3519 = distinct !{!3519, !3514, !3520, !1570}
!3520 = !DILocation(line: 474, column: 71, scope: !3510)
!3521 = !DILocation(line: 475, column: 55, scope: !3511)
!3522 = !DILocation(line: 475, column: 53, scope: !3511)
!3523 = !DILocation(line: 475, column: 13, scope: !3511)
!3524 = !DILocation(line: 476, column: 47, scope: !3511)
!3525 = !DILocation(line: 476, column: 13, scope: !3511)
!3526 = !DILocation(line: 478, column: 5, scope: !3512)
!3527 = !DILocation(line: 490, column: 53, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 489, column: 9)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 489, column: 9)
!3530 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 480, column: 5)
!3531 = !DILocation(line: 490, column: 13, scope: !3528)
!3532 = !DILocation(line: 491, column: 51, scope: !3530)
!3533 = !DILocation(line: 491, column: 9, scope: !3530)
!3534 = !DILocation(line: 492, column: 43, scope: !3530)
!3535 = !DILocation(line: 492, column: 9, scope: !3530)
!3536 = !DILocation(line: 495, column: 1, scope: !1251)
!3537 = !DISubprogram(name: "x264_cabac_encode_bypass", scope: !513, file: !513, line: 58, type: !1277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1396)
!3538 = !DISubprogram(name: "x264_cabac_encode_ue_bypass", scope: !513, file: !513, line: 59, type: !1394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1396)
