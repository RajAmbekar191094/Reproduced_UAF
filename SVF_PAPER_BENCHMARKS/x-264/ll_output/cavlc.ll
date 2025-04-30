; ModuleID = 'encoder/cavlc.c'
source_filename = "encoder/cavlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_t = type { i8, i8 }
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
%struct.anon.14 = type { [16 x i16] }

@.str = private unnamed_addr constant [37 x i8] c"internal error or slice unsupported\0A\00", align 1, !dbg !0
@x264_mb_pred_mode4x4_fix = internal unnamed_addr constant [13 x i8] c"\FF\00\01\02\03\04\05\06\07\08\02\02\02", align 1, !dbg !7
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 45, i32 46], align 16, !dbg !156
@x264_mb_pred_mode8x8c_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\00\00\00", align 1, !dbg !160
@x264_mb_pred_mode16x16_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\02\02\02", align 1, !dbg !165
@sub_mb_type_p_to_golomb = internal unnamed_addr constant [4 x i8] c"\03\01\02\00", align 1, !dbg !167
@sub_mb_type_b_to_golomb = internal unnamed_addr constant [13 x i8] c"\0A\04\05\01\0B\06\07\02\0C\08\09\03\00", align 1, !dbg !172
@x264_mb_partition_listX_table = internal unnamed_addr constant [2 x [17 x i8]] [[17 x i8] c"\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\00", [17 x i8] c"\00\00\00\00\01\01\01\01\01\01\01\01\00\00\00\00\00"], align 16, !dbg !177
@x264_mb_type_list0_table = internal unnamed_addr constant [19 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\01\01", [2 x i8] zeroinitializer, [2 x i8] c"\01\01", [2 x i8] zeroinitializer, [2 x i8] c"\01\01", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\00\01", [2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\01\01", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], align 16, !dbg !183
@x264_mb_type_list1_table = internal unnamed_addr constant [19 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\00\01", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\01\01", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\01\01", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], align 16, !dbg !188
@mb_type_b_to_golomb = internal unnamed_addr constant [3 x [9 x i8]] [[9 x i8] c"\04\08\0C\0A\06\0E\10\12\14", [9 x i8] c"\05\09\0D\0B\07\0F\11\13\15", [9 x i8] c"\01\FF\FF\FF\02\FF\FF\FF\03"], align 16, !dbg !190
@intra4x4_cbp_to_golomb = internal unnamed_addr constant [48 x i8] c"\03\1D\1E\11\1F\12%\08 &\13\09\14\0A\0B\02\10!\22\15#\16'\04$(\17\05\18\06\07\01)*+\19,\1A.\0C-/\1B\0D\1C\0E\0F\00", align 16, !dbg !196
@inter_cbp_to_golomb = internal unnamed_addr constant [48 x i8] c"\00\02\03\07\04\08\11\0D\05\12\09\0E\0A\0F\10\0B\01 !$\22%,(#-&)'*+\13\06\18\19\14\1A\15.\1C\1B/\16\1D\17\1E\1F\0C", align 16, !dbg !201
@x264_ue_size_tab = internal unnamed_addr constant [256 x i8] c"\01\01\03\03\05\05\05\05\07\07\07\07\07\07\07\07\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 16, !dbg !146
@x264_mb_transform_8x8_allowed.partition_tab = internal unnamed_addr constant [19 x i8] c"\00\00\00\00\01\02\00\02\01\01\01\01\01\01\01\01\01\02\00", align 16, !dbg !203
@block_residual_write_cavlc.ct_index = internal unnamed_addr constant [17 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3], align 16, !dbg !1276
@x264_coeff_token = external local_unnamed_addr constant [5 x [68 x %struct.vlc_t]], align 16
@.str.2 = private unnamed_addr constant [54 x i8] c"OVERFLOW levelcode=%d is only allowed in High Profile\00", align 1, !dbg !1318
@x264_total_zeros_dc = external local_unnamed_addr constant [3 x [4 x %struct.vlc_t]], align 16
@x264_total_zeros = external local_unnamed_addr constant [15 x [16 x %struct.vlc_t]], align 16
@x264_run_before = external local_unnamed_addr constant [7 x [15 x %struct.vlc_t]], align 16
@switch.table.x264_macroblock_write_cavlc = private unnamed_addr constant [3 x i32] [i32 5, i32 23, i32 0], align 4

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_write_cavlc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1332 {
  %3 = alloca [2 x i16], align 4
  %4 = alloca [2 x i16], align 4
  %5 = alloca [2 x [2 x i32]], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1336, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata ptr %1, metadata !1337, metadata !DIExpression()), !dbg !1368
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 46, !dbg !1369
  %7 = load i32, ptr %6, align 8, !dbg !1369, !tbaa !1370
  call void @llvm.dbg.value(metadata i32 %7, metadata !1338, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata ptr %1, metadata !1400, metadata !DIExpression()), !dbg !1405
  %8 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1, !dbg !1407
  %9 = load ptr, ptr %8, align 8, !dbg !1407, !tbaa !1408
  %10 = load ptr, ptr %1, align 8, !dbg !1409, !tbaa !1410
  %11 = ptrtoint ptr %9 to i64, !dbg !1411
  %12 = ptrtoint ptr %10 to i64, !dbg !1411
  %13 = sub i64 %12, %11, !dbg !1411
  %14 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4, !dbg !1412
  %15 = load i32, ptr %14, align 8, !dbg !1412, !tbaa !1413
  %16 = trunc i64 %13 to i32, !dbg !1414
  %17 = shl i32 %16, 3, !dbg !1414
  %18 = add i32 %15, -64, !dbg !1414
  %19 = add i32 %17, %18, !dbg !1414
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 64, i32 %15, i64 %12), metadata !1341, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value)), !dbg !1368
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !1415
  %21 = load i32, ptr %20, align 8, !dbg !1415, !tbaa !1416
  %22 = icmp ult i32 %21, 3, !dbg !1417
  br i1 %22, label %24, label %23, !dbg !1417

23:                                               ; preds = %2
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str) #7, !dbg !1418
  br label %2434, !dbg !1420

24:                                               ; preds = %2
  %25 = sext i32 %21 to i64, !dbg !1417
  %26 = getelementptr inbounds [3 x i32], ptr @switch.table.x264_macroblock_write_cavlc, i64 0, i64 %25, !dbg !1417
  %27 = load i32, ptr %26, align 4, !dbg !1417
  call void @llvm.dbg.value(metadata i32 %27, metadata !1339, metadata !DIExpression()), !dbg !1368
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 7, !dbg !1421
  %29 = load i32, ptr %28, align 4, !dbg !1421, !tbaa !1423
  %30 = icmp eq i32 %29, 0, !dbg !1424
  br i1 %30, label %61, label %31, !dbg !1425

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 5, !dbg !1426
  %33 = load i32, ptr %32, align 4, !dbg !1426, !tbaa !1427
  %34 = and i32 %33, 1, !dbg !1428
  %35 = icmp eq i32 %34, 0, !dbg !1428
  br i1 %35, label %47, label %36, !dbg !1429

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 32, !dbg !1430
  %38 = load ptr, ptr %37, align 16, !dbg !1430, !tbaa !1431
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 6, !dbg !1430
  %40 = load i32, ptr %39, align 8, !dbg !1430, !tbaa !1432
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 1, !dbg !1430
  %42 = load i32, ptr %41, align 4, !dbg !1430, !tbaa !1433
  %43 = sub nsw i32 %40, %42, !dbg !1430
  %44 = sext i32 %43 to i64, !dbg !1430
  %45 = getelementptr inbounds i8, ptr %38, i64 %44, !dbg !1430
  %46 = load i8, ptr %45, align 1, !dbg !1430, !tbaa !1434
  switch i8 %46, label %61 [
    i8 6, label %47
    i8 18, label %47
  ], !dbg !1430

47:                                               ; preds = %36, %36, %31
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 16, !dbg !1435
  %49 = load i32, ptr %48, align 16, !dbg !1435, !tbaa !1437
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %49, metadata !1443, metadata !DIExpression()), !dbg !1444
  %50 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !1446
  %51 = load i64, ptr %50, align 8, !dbg !1447, !tbaa !1448
  %52 = shl i64 %51, 1, !dbg !1447
  %53 = zext i32 %49 to i64, !dbg !1449
  %54 = or i64 %52, %53, !dbg !1450
  store i64 %54, ptr %50, align 8, !dbg !1450, !tbaa !1448
  %55 = add nsw i32 %15, -1, !dbg !1451
  store i32 %55, ptr %14, align 8, !dbg !1451, !tbaa !1413
  %56 = icmp eq i32 %55, 32, !dbg !1452
  br i1 %56, label %57, label %61, !dbg !1454

57:                                               ; preds = %47
  %58 = trunc i64 %54 to i32, !dbg !1455
  call void @llvm.dbg.value(metadata i32 %58, metadata !1457, metadata !DIExpression()), !dbg !1463
  %59 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %58) #8, !dbg !1465, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %59, metadata !1457, metadata !DIExpression()), !dbg !1463
  store i32 %59, ptr %9, align 4, !dbg !1467, !tbaa !1468
  %60 = getelementptr inbounds i8, ptr %9, i64 4, !dbg !1469
  store ptr %60, ptr %8, align 8, !dbg !1469, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !1470, !tbaa !1413
  br label %61, !dbg !1471

61:                                               ; preds = %57, %47, %36, %24
  %62 = phi ptr [ %60, %57 ], [ %9, %47 ], [ %9, %36 ], [ %9, %24 ]
  %63 = phi i32 [ 64, %57 ], [ %55, %47 ], [ %15, %36 ], [ %15, %24 ]
  %64 = icmp eq i32 %7, 3, !dbg !1472
  br i1 %64, label %65, label %227, !dbg !1474

65:                                               ; preds = %61
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i32 %27, metadata !1480, metadata !DIExpression(DW_OP_plus_uconst, 25, DW_OP_stack_value)), !dbg !1481
  %66 = add nuw nsw i32 %27, 26, !dbg !1484
  %67 = zext i32 %66 to i64, !dbg !1485
  %68 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %67, !dbg !1485
  %69 = load i8, ptr %68, align 1, !dbg !1485, !tbaa !1434
  %70 = zext i8 %69 to i32, !dbg !1485
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 %70, metadata !1491, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 %66, metadata !1492, metadata !DIExpression()), !dbg !1493
  %71 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !1495
  %72 = load i64, ptr %71, align 8, !dbg !1495, !tbaa !1448
  %73 = zext i8 %69 to i64, !dbg !1498
  %74 = shl i64 %72, %73, !dbg !1498
  %75 = or i64 %74, %67, !dbg !1499
  store i64 %75, ptr %71, align 8, !dbg !1500, !tbaa !1448
  %76 = sub nsw i32 %63, %70, !dbg !1501
  store i32 %76, ptr %14, align 8, !dbg !1501, !tbaa !1413
  %77 = icmp slt i32 %76, 33, !dbg !1502
  br i1 %77, label %78, label %86, !dbg !1504

78:                                               ; preds = %65
  %79 = zext i32 %76 to i64, !dbg !1505
  %80 = shl i64 %75, %79, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %80, metadata !1507, metadata !DIExpression()), !dbg !1512
  %81 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %80) #8, !dbg !1514, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %81, metadata !1507, metadata !DIExpression()), !dbg !1512
  %82 = trunc i64 %81 to i32, !dbg !1516
  store i32 %82, ptr %62, align 4, !dbg !1517, !tbaa !1468
  %83 = load i32, ptr %14, align 8, !dbg !1518, !tbaa !1413
  %84 = add nsw i32 %83, 32, !dbg !1518
  %85 = getelementptr inbounds i8, ptr %62, i64 4, !dbg !1519
  br label %86, !dbg !1520

86:                                               ; preds = %65, %78
  %87 = phi i32 [ %76, %65 ], [ %84, %78 ], !dbg !1521
  %88 = phi ptr [ %62, %65 ], [ %85, %78 ], !dbg !1523
  call void @llvm.dbg.value(metadata ptr %1, metadata !1400, metadata !DIExpression()), !dbg !1524
  %89 = ptrtoint ptr %88 to i64, !dbg !1525
  %90 = sub i64 %89, %12, !dbg !1525
  %91 = trunc i64 %90 to i32, !dbg !1526
  %92 = shl i32 %91, 3, !dbg !1526
  %93 = sub i32 64, %87, !dbg !1526
  %94 = add i32 %92, %93, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %94, metadata !1342, metadata !DIExpression()), !dbg !1368
  %95 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, !dbg !1527
  %96 = load i32, ptr %95, align 8, !dbg !1528, !tbaa !1529
  %97 = add i32 %96, %19, !dbg !1530
  %98 = add i32 %97, %94, !dbg !1528
  store i32 %98, ptr %95, align 8, !dbg !1528, !tbaa !1529
  call void @llvm.dbg.value(metadata ptr %1, metadata !1531, metadata !DIExpression()), !dbg !1536
  %99 = and i32 %87, 7, !dbg !1538
  %100 = icmp eq i32 %99, 0, !dbg !1538
  br i1 %100, label %105, label %101, !dbg !1540

101:                                              ; preds = %86
  %102 = zext i32 %99 to i64, !dbg !1541
  %103 = shl i64 %75, %102, !dbg !1541
  store i64 %103, ptr %71, align 8, !dbg !1541, !tbaa !1448
  %104 = and i32 %87, -8, !dbg !1543
  br label %105, !dbg !1544

105:                                              ; preds = %86, %101
  %106 = phi i32 [ %104, %101 ], [ %87, %86 ], !dbg !1545
  %107 = phi i64 [ %103, %101 ], [ %75, %86 ], !dbg !1550
  call void @llvm.dbg.value(metadata ptr %1, metadata !1548, metadata !DIExpression()), !dbg !1551
  %108 = zext i32 %106 to i64, !dbg !1552
  %109 = shl i64 %107, %108, !dbg !1552
  call void @llvm.dbg.value(metadata i64 %109, metadata !1507, metadata !DIExpression()), !dbg !1553
  %110 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %109) #8, !dbg !1555, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %110, metadata !1507, metadata !DIExpression()), !dbg !1553
  store i64 %110, ptr %88, align 8, !dbg !1556, !tbaa !1557
  %111 = sdiv i32 %106, -8, !dbg !1558
  %112 = add nsw i32 %111, 8, !dbg !1559
  %113 = sext i32 %112 to i64, !dbg !1559
  %114 = getelementptr inbounds i8, ptr %88, i64 %113, !dbg !1560
  store ptr %114, ptr %8, align 8, !dbg !1560, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !1561, !tbaa !1413
  %115 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, !dbg !1562
  %116 = load ptr, ptr %115, align 8, !dbg !1563, !tbaa !1564
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %114, ptr noundef nonnull align 1 dereferenceable(256) %116, i64 256, i1 false), !dbg !1565
  %117 = load ptr, ptr %8, align 8, !dbg !1566, !tbaa !1408
  %118 = getelementptr inbounds i8, ptr %117, i64 256, !dbg !1566
  store ptr %118, ptr %8, align 8, !dbg !1566, !tbaa !1408
  call void @llvm.dbg.value(metadata i32 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  %119 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, i64 1
  call void @llvm.dbg.value(metadata i32 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  %120 = load ptr, ptr %119, align 8, !dbg !1567, !tbaa !1564
  %121 = load i64, ptr %120, align 1, !dbg !1570
  store i64 %121, ptr %118, align 1, !dbg !1570
  call void @llvm.dbg.value(metadata i64 1, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 1, metadata !1340, metadata !DIExpression()), !dbg !1368
  %122 = load ptr, ptr %8, align 8, !dbg !1571, !tbaa !1408
  %123 = getelementptr inbounds i8, ptr %122, i64 8, !dbg !1572
  %124 = load ptr, ptr %119, align 8, !dbg !1567, !tbaa !1564
  %125 = getelementptr inbounds i8, ptr %124, i64 16, !dbg !1573
  %126 = load i64, ptr %125, align 1, !dbg !1570
  store i64 %126, ptr %123, align 1, !dbg !1570
  call void @llvm.dbg.value(metadata i64 2, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 2, metadata !1340, metadata !DIExpression()), !dbg !1368
  %127 = load ptr, ptr %8, align 8, !dbg !1571, !tbaa !1408
  %128 = getelementptr inbounds i8, ptr %127, i64 16, !dbg !1572
  %129 = load ptr, ptr %119, align 8, !dbg !1567, !tbaa !1564
  %130 = getelementptr inbounds i8, ptr %129, i64 32, !dbg !1573
  %131 = load i64, ptr %130, align 1, !dbg !1570
  store i64 %131, ptr %128, align 1, !dbg !1570
  call void @llvm.dbg.value(metadata i64 3, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 3, metadata !1340, metadata !DIExpression()), !dbg !1368
  %132 = load ptr, ptr %8, align 8, !dbg !1571, !tbaa !1408
  %133 = getelementptr inbounds i8, ptr %132, i64 24, !dbg !1572
  %134 = load ptr, ptr %119, align 8, !dbg !1567, !tbaa !1564
  %135 = getelementptr inbounds i8, ptr %134, i64 48, !dbg !1573
  %136 = load i64, ptr %135, align 1, !dbg !1570
  store i64 %136, ptr %133, align 1, !dbg !1570
  call void @llvm.dbg.value(metadata i64 4, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 4, metadata !1340, metadata !DIExpression()), !dbg !1368
  %137 = load ptr, ptr %8, align 8, !dbg !1571, !tbaa !1408
  %138 = getelementptr inbounds i8, ptr %137, i64 32, !dbg !1572
  %139 = load ptr, ptr %119, align 8, !dbg !1567, !tbaa !1564
  %140 = getelementptr inbounds i8, ptr %139, i64 64, !dbg !1573
  %141 = load i64, ptr %140, align 1, !dbg !1570
  store i64 %141, ptr %138, align 1, !dbg !1570
  call void @llvm.dbg.value(metadata i64 5, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 5, metadata !1340, metadata !DIExpression()), !dbg !1368
  %142 = load ptr, ptr %8, align 8, !dbg !1571, !tbaa !1408
  %143 = getelementptr inbounds i8, ptr %142, i64 40, !dbg !1572
  %144 = load ptr, ptr %119, align 8, !dbg !1567, !tbaa !1564
  %145 = getelementptr inbounds i8, ptr %144, i64 80, !dbg !1573
  %146 = load i64, ptr %145, align 1, !dbg !1570
  store i64 %146, ptr %143, align 1, !dbg !1570
  call void @llvm.dbg.value(metadata i64 6, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 6, metadata !1340, metadata !DIExpression()), !dbg !1368
  %147 = load ptr, ptr %8, align 8, !dbg !1571, !tbaa !1408
  %148 = getelementptr inbounds i8, ptr %147, i64 48, !dbg !1572
  %149 = load ptr, ptr %119, align 8, !dbg !1567, !tbaa !1564
  %150 = getelementptr inbounds i8, ptr %149, i64 96, !dbg !1573
  %151 = load i64, ptr %150, align 1, !dbg !1570
  store i64 %151, ptr %148, align 1, !dbg !1570
  call void @llvm.dbg.value(metadata i64 7, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 7, metadata !1340, metadata !DIExpression()), !dbg !1368
  %152 = load ptr, ptr %8, align 8, !dbg !1571, !tbaa !1408
  %153 = getelementptr inbounds i8, ptr %152, i64 56, !dbg !1572
  %154 = load ptr, ptr %119, align 8, !dbg !1567, !tbaa !1564
  %155 = getelementptr inbounds i8, ptr %154, i64 112, !dbg !1573
  %156 = load i64, ptr %155, align 1, !dbg !1570
  store i64 %156, ptr %153, align 1, !dbg !1570
  call void @llvm.dbg.value(metadata i64 8, metadata !1340, metadata !DIExpression()), !dbg !1368
  %157 = load ptr, ptr %8, align 8, !dbg !1574, !tbaa !1408
  %158 = getelementptr inbounds i8, ptr %157, i64 64, !dbg !1574
  store ptr %158, ptr %8, align 8, !dbg !1574, !tbaa !1408
  call void @llvm.dbg.value(metadata i32 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  %159 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 12, i64 2
  call void @llvm.dbg.value(metadata i32 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  %160 = load ptr, ptr %159, align 8, !dbg !1575, !tbaa !1564
  %161 = load i64, ptr %160, align 1, !dbg !1578
  store i64 %161, ptr %158, align 1, !dbg !1578
  call void @llvm.dbg.value(metadata i64 1, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 1, metadata !1340, metadata !DIExpression()), !dbg !1368
  %162 = load ptr, ptr %8, align 8, !dbg !1579, !tbaa !1408
  %163 = getelementptr inbounds i8, ptr %162, i64 8, !dbg !1580
  %164 = load ptr, ptr %159, align 8, !dbg !1575, !tbaa !1564
  %165 = getelementptr inbounds i8, ptr %164, i64 16, !dbg !1581
  %166 = load i64, ptr %165, align 1, !dbg !1578
  store i64 %166, ptr %163, align 1, !dbg !1578
  call void @llvm.dbg.value(metadata i64 2, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 2, metadata !1340, metadata !DIExpression()), !dbg !1368
  %167 = load ptr, ptr %8, align 8, !dbg !1579, !tbaa !1408
  %168 = getelementptr inbounds i8, ptr %167, i64 16, !dbg !1580
  %169 = load ptr, ptr %159, align 8, !dbg !1575, !tbaa !1564
  %170 = getelementptr inbounds i8, ptr %169, i64 32, !dbg !1581
  %171 = load i64, ptr %170, align 1, !dbg !1578
  store i64 %171, ptr %168, align 1, !dbg !1578
  call void @llvm.dbg.value(metadata i64 3, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 3, metadata !1340, metadata !DIExpression()), !dbg !1368
  %172 = load ptr, ptr %8, align 8, !dbg !1579, !tbaa !1408
  %173 = getelementptr inbounds i8, ptr %172, i64 24, !dbg !1580
  %174 = load ptr, ptr %159, align 8, !dbg !1575, !tbaa !1564
  %175 = getelementptr inbounds i8, ptr %174, i64 48, !dbg !1581
  %176 = load i64, ptr %175, align 1, !dbg !1578
  store i64 %176, ptr %173, align 1, !dbg !1578
  call void @llvm.dbg.value(metadata i64 4, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 4, metadata !1340, metadata !DIExpression()), !dbg !1368
  %177 = load ptr, ptr %8, align 8, !dbg !1579, !tbaa !1408
  %178 = getelementptr inbounds i8, ptr %177, i64 32, !dbg !1580
  %179 = load ptr, ptr %159, align 8, !dbg !1575, !tbaa !1564
  %180 = getelementptr inbounds i8, ptr %179, i64 64, !dbg !1581
  %181 = load i64, ptr %180, align 1, !dbg !1578
  store i64 %181, ptr %178, align 1, !dbg !1578
  call void @llvm.dbg.value(metadata i64 5, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 5, metadata !1340, metadata !DIExpression()), !dbg !1368
  %182 = load ptr, ptr %8, align 8, !dbg !1579, !tbaa !1408
  %183 = getelementptr inbounds i8, ptr %182, i64 40, !dbg !1580
  %184 = load ptr, ptr %159, align 8, !dbg !1575, !tbaa !1564
  %185 = getelementptr inbounds i8, ptr %184, i64 80, !dbg !1581
  %186 = load i64, ptr %185, align 1, !dbg !1578
  store i64 %186, ptr %183, align 1, !dbg !1578
  call void @llvm.dbg.value(metadata i64 6, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 6, metadata !1340, metadata !DIExpression()), !dbg !1368
  %187 = load ptr, ptr %8, align 8, !dbg !1579, !tbaa !1408
  %188 = getelementptr inbounds i8, ptr %187, i64 48, !dbg !1580
  %189 = load ptr, ptr %159, align 8, !dbg !1575, !tbaa !1564
  %190 = getelementptr inbounds i8, ptr %189, i64 96, !dbg !1581
  %191 = load i64, ptr %190, align 1, !dbg !1578
  store i64 %191, ptr %188, align 1, !dbg !1578
  call void @llvm.dbg.value(metadata i64 7, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 7, metadata !1340, metadata !DIExpression()), !dbg !1368
  %192 = load ptr, ptr %8, align 8, !dbg !1579, !tbaa !1408
  %193 = getelementptr inbounds i8, ptr %192, i64 56, !dbg !1580
  %194 = load ptr, ptr %159, align 8, !dbg !1575, !tbaa !1564
  %195 = getelementptr inbounds i8, ptr %194, i64 112, !dbg !1581
  %196 = load i64, ptr %195, align 1, !dbg !1578
  store i64 %196, ptr %193, align 1, !dbg !1578
  call void @llvm.dbg.value(metadata i64 8, metadata !1340, metadata !DIExpression()), !dbg !1368
  %197 = load ptr, ptr %8, align 8, !dbg !1582, !tbaa !1408
  %198 = getelementptr inbounds i8, ptr %197, i64 64, !dbg !1582
  store ptr %198, ptr %8, align 8, !dbg !1582, !tbaa !1408
  %199 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, !dbg !1583
  %200 = load ptr, ptr %199, align 8, !dbg !1584, !tbaa !1564
  %201 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, !dbg !1585
  %202 = load ptr, ptr %201, align 8, !dbg !1586, !tbaa !1564
  %203 = load ptr, ptr %115, align 8, !dbg !1587, !tbaa !1564
  tail call void %200(ptr noundef %202, i32 noundef 32, ptr noundef %203, i32 noundef 16, i32 noundef 16) #7, !dbg !1584
  %204 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 4, i64 3, !dbg !1588
  %205 = load ptr, ptr %204, align 8, !dbg !1588, !tbaa !1564
  %206 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 1, !dbg !1589
  %207 = load ptr, ptr %206, align 8, !dbg !1589, !tbaa !1564
  %208 = load ptr, ptr %119, align 8, !dbg !1590, !tbaa !1564
  tail call void %205(ptr noundef %207, i32 noundef 32, ptr noundef %208, i32 noundef 16, i32 noundef 8) #7, !dbg !1588
  %209 = load ptr, ptr %204, align 8, !dbg !1591, !tbaa !1564
  %210 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 14, i64 2, !dbg !1592
  %211 = load ptr, ptr %210, align 8, !dbg !1592, !tbaa !1564
  %212 = load ptr, ptr %159, align 8, !dbg !1593, !tbaa !1564
  tail call void %209(ptr noundef %211, i32 noundef 32, ptr noundef %212, i32 noundef 16, i32 noundef 8) #7, !dbg !1591
  call void @llvm.dbg.value(metadata ptr %1, metadata !1400, metadata !DIExpression()), !dbg !1594
  %213 = load ptr, ptr %8, align 8, !dbg !1596, !tbaa !1408
  %214 = load ptr, ptr %1, align 8, !dbg !1597, !tbaa !1410
  %215 = ptrtoint ptr %213 to i64, !dbg !1598
  %216 = ptrtoint ptr %214 to i64, !dbg !1598
  %217 = sub i64 %215, %216, !dbg !1598
  %218 = load i32, ptr %14, align 8, !dbg !1599, !tbaa !1413
  %219 = trunc i64 %217 to i32, !dbg !1600
  %220 = shl i32 %219, 3, !dbg !1600
  %221 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 1, !dbg !1601
  %222 = load i32, ptr %221, align 4, !dbg !1602, !tbaa !1603
  %223 = add i32 %94, %218, !dbg !1604
  %224 = sub i32 64, %223, !dbg !1604
  %225 = add i32 %224, %222, !dbg !1604
  %226 = add i32 %225, %220, !dbg !1602
  store i32 %226, ptr %221, align 4, !dbg !1602, !tbaa !1603
  br label %2434, !dbg !1605

227:                                              ; preds = %61
  %228 = icmp ult i32 %7, 2, !dbg !1606
  br i1 %228, label %229, label %369, !dbg !1606

229:                                              ; preds = %227
  %230 = icmp eq i32 %7, 1
  %231 = select i1 %230, i64 4, i64 1, !dbg !1607
  call void @llvm.dbg.value(metadata i32 poison, metadata !1343, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i32 %27, metadata !1480, metadata !DIExpression()), !dbg !1609
  %232 = add nuw nsw i32 %27, 1, !dbg !1611
  %233 = zext i32 %232 to i64, !dbg !1612
  %234 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %233, !dbg !1612
  %235 = load i8, ptr %234, align 1, !dbg !1612, !tbaa !1434
  %236 = zext i8 %235 to i32, !dbg !1612
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i32 %236, metadata !1491, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i32 %232, metadata !1492, metadata !DIExpression()), !dbg !1613
  %237 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !1615
  %238 = load i64, ptr %237, align 8, !dbg !1615, !tbaa !1448
  %239 = zext i8 %235 to i64, !dbg !1616
  %240 = shl i64 %238, %239, !dbg !1616
  %241 = or i64 %240, %233, !dbg !1617
  store i64 %241, ptr %237, align 8, !dbg !1618, !tbaa !1448
  %242 = sub nsw i32 %63, %236, !dbg !1619
  store i32 %242, ptr %14, align 8, !dbg !1619, !tbaa !1413
  %243 = icmp slt i32 %242, 33, !dbg !1620
  br i1 %243, label %244, label %252, !dbg !1621

244:                                              ; preds = %229
  %245 = zext i32 %242 to i64, !dbg !1622
  %246 = shl i64 %241, %245, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %246, metadata !1507, metadata !DIExpression()), !dbg !1623
  %247 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %246) #8, !dbg !1625, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %247, metadata !1507, metadata !DIExpression()), !dbg !1623
  %248 = trunc i64 %247 to i32, !dbg !1626
  store i32 %248, ptr %62, align 4, !dbg !1627, !tbaa !1468
  %249 = load i32, ptr %14, align 8, !dbg !1628, !tbaa !1413
  %250 = add nsw i32 %249, 32, !dbg !1628
  store i32 %250, ptr %14, align 8, !dbg !1628, !tbaa !1413
  %251 = getelementptr inbounds i8, ptr %62, i64 4, !dbg !1629
  store ptr %251, ptr %8, align 8, !dbg !1629, !tbaa !1408
  br label %252, !dbg !1630

252:                                              ; preds = %229, %244
  %253 = phi ptr [ %62, %229 ], [ %251, %244 ]
  %254 = phi i32 [ %242, %229 ], [ %250, %244 ]
  %255 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 18, !dbg !1631
  %256 = load ptr, ptr %255, align 16, !dbg !1631, !tbaa !1633
  %257 = getelementptr inbounds %struct.x264_pps_t, ptr %256, i64 0, i32 15, !dbg !1634
  %258 = load i32, ptr %257, align 4, !dbg !1634, !tbaa !1635
  %259 = icmp eq i32 %258, 0, !dbg !1637
  br i1 %259, label %272, label %260, !dbg !1638

260:                                              ; preds = %252
  %261 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 49, !dbg !1639
  %262 = load i32, ptr %261, align 16, !dbg !1639, !tbaa !1640
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i32 %262, metadata !1443, metadata !DIExpression()), !dbg !1641
  %263 = shl i64 %241, 1, !dbg !1643
  %264 = zext i32 %262 to i64, !dbg !1644
  %265 = or i64 %263, %264, !dbg !1645
  store i64 %265, ptr %237, align 8, !dbg !1645, !tbaa !1448
  %266 = add nsw i32 %254, -1, !dbg !1646
  store i32 %266, ptr %14, align 8, !dbg !1646, !tbaa !1413
  %267 = icmp eq i32 %266, 32, !dbg !1647
  br i1 %267, label %268, label %272, !dbg !1648

268:                                              ; preds = %260
  %269 = trunc i64 %265 to i32, !dbg !1649
  call void @llvm.dbg.value(metadata i32 %269, metadata !1457, metadata !DIExpression()), !dbg !1650
  %270 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %269) #8, !dbg !1652, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %270, metadata !1457, metadata !DIExpression()), !dbg !1650
  store i32 %270, ptr %253, align 4, !dbg !1653, !tbaa !1468
  %271 = getelementptr inbounds i8, ptr %253, i64 4, !dbg !1654
  store ptr %271, ptr %8, align 8, !dbg !1654, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !1655, !tbaa !1413
  br label %272, !dbg !1656

272:                                              ; preds = %268, %260, %252
  %273 = phi ptr [ %271, %268 ], [ %253, %260 ], [ %253, %252 ]
  %274 = phi i32 [ 64, %268 ], [ %266, %260 ], [ %254, %252 ]
  %275 = phi i64 [ %265, %268 ], [ %265, %260 ], [ %241, %252 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  %276 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57
  call void @llvm.dbg.value(metadata i32 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  br label %277, !dbg !1657

277:                                              ; preds = %272, %339
  %278 = phi ptr [ %273, %272 ], [ %340, %339 ]
  %279 = phi i32 [ %274, %272 ], [ %341, %339 ]
  %280 = phi i64 [ %275, %272 ], [ %342, %339 ]
  %281 = phi i64 [ 0, %272 ], [ %343, %339 ]
  call void @llvm.dbg.value(metadata i64 %281, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata ptr %0, metadata !1658, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i64 %281, metadata !1663, metadata !DIExpression()), !dbg !1667
  %282 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %281, !dbg !1669
  %283 = load i32, ptr %282, align 4, !dbg !1669, !tbaa !1468
  %284 = add nsw i32 %283, -1, !dbg !1670
  %285 = sext i32 %284 to i64, !dbg !1671
  %286 = getelementptr inbounds [48 x i8], ptr %276, i64 0, i64 %285, !dbg !1671
  %287 = load i8, ptr %286, align 1, !dbg !1671, !tbaa !1434
  %288 = sext i8 %287 to i64, !dbg !1671
  call void @llvm.dbg.value(metadata i8 %287, metadata !1664, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1667
  %289 = add nsw i32 %283, -8, !dbg !1672
  %290 = sext i32 %289 to i64, !dbg !1673
  %291 = getelementptr inbounds [48 x i8], ptr %276, i64 0, i64 %290, !dbg !1673
  %292 = load i8, ptr %291, align 1, !dbg !1673, !tbaa !1434
  %293 = sext i8 %292 to i64, !dbg !1673
  call void @llvm.dbg.value(metadata i8 %292, metadata !1665, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1667
  %294 = add nsw i64 %288, 1, !dbg !1674
  %295 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %294, !dbg !1674
  %296 = load i8, ptr %295, align 1, !dbg !1674, !tbaa !1434
  %297 = add nsw i64 %293, 1, !dbg !1674
  %298 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %297, !dbg !1674
  %299 = load i8, ptr %298, align 1, !dbg !1674, !tbaa !1434
  %300 = tail call i8 @llvm.smin.i8(i8 %296, i8 %299), !dbg !1674
  call void @llvm.dbg.value(metadata i8 %300, metadata !1666, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1667
  %301 = icmp slt i8 %300, 0, !dbg !1675
  %302 = select i1 %301, i8 2, i8 %300, !dbg !1677
  %303 = zext i8 %302 to i32, !dbg !1677
  call void @llvm.dbg.value(metadata i32 %303, metadata !1346, metadata !DIExpression()), !dbg !1678
  %304 = sext i32 %283 to i64, !dbg !1679
  %305 = getelementptr inbounds [48 x i8], ptr %276, i64 0, i64 %304, !dbg !1679
  %306 = load i8, ptr %305, align 1, !dbg !1679, !tbaa !1434
  %307 = sext i8 %306 to i64, !dbg !1679
  %308 = add nsw i64 %307, 1, !dbg !1679
  %309 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %308, !dbg !1679
  %310 = load i8, ptr %309, align 1, !dbg !1679, !tbaa !1434
  %311 = sext i8 %310 to i32, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %311, metadata !1350, metadata !DIExpression()), !dbg !1678
  %312 = icmp eq i32 %303, %311, !dbg !1680
  br i1 %312, label %313, label %322, !dbg !1682

313:                                              ; preds = %277
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i32 1, metadata !1443, metadata !DIExpression()), !dbg !1683
  %314 = shl i64 %280, 1, !dbg !1685
  %315 = or i64 %314, 1, !dbg !1686
  store i64 %315, ptr %237, align 8, !dbg !1686, !tbaa !1448
  %316 = add nsw i32 %279, -1, !dbg !1687
  store i32 %316, ptr %14, align 8, !dbg !1687, !tbaa !1413
  %317 = icmp eq i32 %316, 32, !dbg !1688
  br i1 %317, label %318, label %339, !dbg !1689

318:                                              ; preds = %313
  %319 = trunc i64 %315 to i32, !dbg !1690
  call void @llvm.dbg.value(metadata i32 %319, metadata !1457, metadata !DIExpression()), !dbg !1691
  %320 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %319) #8, !dbg !1693, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %320, metadata !1457, metadata !DIExpression()), !dbg !1691
  store i32 %320, ptr %278, align 4, !dbg !1694, !tbaa !1468
  %321 = getelementptr inbounds i8, ptr %278, i64 4, !dbg !1695
  store ptr %321, ptr %8, align 8, !dbg !1695, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !1696, !tbaa !1413
  br label %339, !dbg !1697

322:                                              ; preds = %277
  %323 = icmp slt i32 %303, %311, !dbg !1698
  %324 = sext i1 %323 to i32, !dbg !1698
  %325 = add nsw i32 %324, %311, !dbg !1699
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 4, metadata !1491, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %325, metadata !1492, metadata !DIExpression()), !dbg !1700
  %326 = shl i64 %280, 4, !dbg !1702
  %327 = zext i32 %325 to i64, !dbg !1703
  %328 = or i64 %326, %327, !dbg !1704
  store i64 %328, ptr %237, align 8, !dbg !1705, !tbaa !1448
  %329 = add nsw i32 %279, -4, !dbg !1706
  store i32 %329, ptr %14, align 8, !dbg !1706, !tbaa !1413
  %330 = icmp slt i32 %279, 37, !dbg !1707
  br i1 %330, label %331, label %339, !dbg !1708

331:                                              ; preds = %322
  %332 = zext i32 %329 to i64, !dbg !1709
  %333 = shl i64 %328, %332, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %333, metadata !1507, metadata !DIExpression()), !dbg !1710
  %334 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %333) #8, !dbg !1712, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %334, metadata !1507, metadata !DIExpression()), !dbg !1710
  %335 = trunc i64 %334 to i32, !dbg !1713
  store i32 %335, ptr %278, align 4, !dbg !1714, !tbaa !1468
  %336 = load i32, ptr %14, align 8, !dbg !1715, !tbaa !1413
  %337 = add nsw i32 %336, 32, !dbg !1715
  store i32 %337, ptr %14, align 8, !dbg !1715, !tbaa !1413
  %338 = getelementptr inbounds i8, ptr %278, i64 4, !dbg !1716
  store ptr %338, ptr %8, align 8, !dbg !1716, !tbaa !1408
  br label %339, !dbg !1717

339:                                              ; preds = %331, %322, %318, %313
  %340 = phi ptr [ %338, %331 ], [ %278, %322 ], [ %321, %318 ], [ %278, %313 ]
  %341 = phi i32 [ %337, %331 ], [ %329, %322 ], [ 64, %318 ], [ %316, %313 ]
  %342 = phi i64 [ %328, %331 ], [ %328, %322 ], [ %315, %318 ], [ %315, %313 ]
  %343 = add i64 %281, %231, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %343, metadata !1340, metadata !DIExpression()), !dbg !1368
  %344 = icmp ult i64 %343, 16, !dbg !1719
  br i1 %344, label %277, label %345, !dbg !1657, !llvm.loop !1720

345:                                              ; preds = %339
  %346 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 53, !dbg !1723
  %347 = load i32, ptr %346, align 16, !dbg !1723, !tbaa !1724
  %348 = sext i32 %347 to i64, !dbg !1725
  %349 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %348, !dbg !1725
  %350 = load i8, ptr %349, align 1, !dbg !1725, !tbaa !1434
  %351 = zext i8 %350 to i64, !dbg !1725
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 %350, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1726
  %352 = add nuw nsw i64 %351, 1, !dbg !1728
  %353 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %352, !dbg !1729
  %354 = load i8, ptr %353, align 1, !dbg !1729, !tbaa !1434
  %355 = zext i8 %354 to i32, !dbg !1729
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i32 %355, metadata !1491, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i64 %352, metadata !1492, metadata !DIExpression()), !dbg !1730
  %356 = zext i8 %354 to i64, !dbg !1732
  %357 = shl i64 %342, %356, !dbg !1732
  %358 = or i64 %357, %352, !dbg !1733
  store i64 %358, ptr %237, align 8, !dbg !1734, !tbaa !1448
  %359 = sub nsw i32 %341, %355, !dbg !1735
  store i32 %359, ptr %14, align 8, !dbg !1735, !tbaa !1413
  %360 = icmp slt i32 %359, 33, !dbg !1736
  br i1 %360, label %361, label %1879, !dbg !1737

361:                                              ; preds = %345
  %362 = zext i32 %359 to i64, !dbg !1738
  %363 = shl i64 %358, %362, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %363, metadata !1507, metadata !DIExpression()), !dbg !1739
  %364 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %363) #8, !dbg !1741, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %364, metadata !1507, metadata !DIExpression()), !dbg !1739
  %365 = trunc i64 %364 to i32, !dbg !1742
  store i32 %365, ptr %340, align 4, !dbg !1743, !tbaa !1468
  %366 = load i32, ptr %14, align 8, !dbg !1744, !tbaa !1413
  %367 = add nsw i32 %366, 32, !dbg !1744
  store i32 %367, ptr %14, align 8, !dbg !1744, !tbaa !1413
  %368 = getelementptr inbounds i8, ptr %340, i64 4, !dbg !1745
  store ptr %368, ptr %8, align 8, !dbg !1745, !tbaa !1408
  br label %1879, !dbg !1746

369:                                              ; preds = %227
  switch i32 %7, label %1186 [
    i32 2, label %370
    i32 4, label %434
    i32 5, label %534
    i32 17, label %681
    i32 7, label %1864
  ], !dbg !1747

370:                                              ; preds = %369
  %371 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 52, !dbg !1748
  %372 = load i32, ptr %371, align 4, !dbg !1748, !tbaa !1750
  %373 = sext i32 %372 to i64, !dbg !1751
  %374 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode16x16_fix, i64 0, i64 %373, !dbg !1751
  %375 = load i8, ptr %374, align 1, !dbg !1751, !tbaa !1434
  %376 = zext i8 %375 to i32, !dbg !1751
  %377 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 51, !dbg !1752
  %378 = load i32, ptr %377, align 8, !dbg !1752, !tbaa !1753
  %379 = shl nsw i32 %378, 2, !dbg !1754
  %380 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 50, !dbg !1755
  %381 = load i32, ptr %380, align 4, !dbg !1755, !tbaa !1756
  %382 = icmp eq i32 %381, 0, !dbg !1757
  %383 = select i1 %382, i32 0, i32 12, !dbg !1758
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i32 poison, metadata !1480, metadata !DIExpression()), !dbg !1759
  %384 = add nuw nsw i32 %27, 2, !dbg !1761
  %385 = add nuw nsw i32 %384, %376, !dbg !1762
  %386 = add i32 %385, %379, !dbg !1763
  %387 = add i32 %386, %383, !dbg !1764
  %388 = sext i32 %387 to i64, !dbg !1765
  %389 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %388, !dbg !1765
  %390 = load i8, ptr %389, align 1, !dbg !1765, !tbaa !1434
  %391 = zext i8 %390 to i32, !dbg !1765
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 %391, metadata !1491, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 %387, metadata !1492, metadata !DIExpression()), !dbg !1766
  %392 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !1768
  %393 = load i64, ptr %392, align 8, !dbg !1768, !tbaa !1448
  %394 = zext i8 %390 to i64, !dbg !1769
  %395 = shl i64 %393, %394, !dbg !1769
  %396 = zext i32 %387 to i64, !dbg !1770
  %397 = or i64 %395, %396, !dbg !1771
  %398 = sub nsw i32 %63, %391, !dbg !1772
  store i32 %398, ptr %14, align 8, !dbg !1772, !tbaa !1413
  %399 = icmp slt i32 %398, 33, !dbg !1773
  br i1 %399, label %400, label %408, !dbg !1774

400:                                              ; preds = %370
  %401 = zext i32 %398 to i64, !dbg !1775
  %402 = shl i64 %397, %401, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %402, metadata !1507, metadata !DIExpression()), !dbg !1776
  %403 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %402) #8, !dbg !1778, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %403, metadata !1507, metadata !DIExpression()), !dbg !1776
  %404 = trunc i64 %403 to i32, !dbg !1779
  store i32 %404, ptr %62, align 4, !dbg !1780, !tbaa !1468
  %405 = load i32, ptr %14, align 8, !dbg !1781, !tbaa !1413
  %406 = add nsw i32 %405, 32, !dbg !1781
  %407 = getelementptr inbounds i8, ptr %62, i64 4, !dbg !1782
  store ptr %407, ptr %8, align 8, !dbg !1782, !tbaa !1408
  br label %408, !dbg !1783

408:                                              ; preds = %370, %400
  %409 = phi ptr [ %62, %370 ], [ %407, %400 ]
  %410 = phi i32 [ %398, %370 ], [ %406, %400 ], !dbg !1784
  %411 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 53, !dbg !1787
  %412 = load i32, ptr %411, align 16, !dbg !1787, !tbaa !1724
  %413 = sext i32 %412 to i64, !dbg !1788
  %414 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %413, !dbg !1788
  %415 = load i8, ptr %414, align 1, !dbg !1788, !tbaa !1434
  %416 = zext i8 %415 to i64, !dbg !1788
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 %415, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1789
  %417 = add nuw nsw i64 %416, 1, !dbg !1790
  %418 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %417, !dbg !1791
  %419 = load i8, ptr %418, align 1, !dbg !1791, !tbaa !1434
  %420 = zext i8 %419 to i32, !dbg !1791
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i32 %420, metadata !1491, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 %417, metadata !1492, metadata !DIExpression()), !dbg !1792
  %421 = zext i8 %419 to i64, !dbg !1793
  %422 = shl i64 %397, %421, !dbg !1793
  %423 = or i64 %422, %417, !dbg !1794
  store i64 %423, ptr %392, align 8, !dbg !1795, !tbaa !1448
  %424 = sub nsw i32 %410, %420, !dbg !1784
  store i32 %424, ptr %14, align 8, !dbg !1784, !tbaa !1413
  %425 = icmp slt i32 %424, 33, !dbg !1796
  br i1 %425, label %426, label %1879, !dbg !1797

426:                                              ; preds = %408
  %427 = zext i32 %424 to i64, !dbg !1798
  %428 = shl i64 %423, %427, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %428, metadata !1507, metadata !DIExpression()), !dbg !1799
  %429 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %428) #8, !dbg !1801, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %429, metadata !1507, metadata !DIExpression()), !dbg !1799
  %430 = trunc i64 %429 to i32, !dbg !1802
  store i32 %430, ptr %409, align 4, !dbg !1803, !tbaa !1468
  %431 = load i32, ptr %14, align 8, !dbg !1804, !tbaa !1413
  %432 = add nsw i32 %431, 32, !dbg !1804
  store i32 %432, ptr %14, align 8, !dbg !1804, !tbaa !1413
  %433 = getelementptr inbounds i8, ptr %409, i64 4, !dbg !1805
  store ptr %433, ptr %8, align 8, !dbg !1805, !tbaa !1408
  br label %1879, !dbg !1806

434:                                              ; preds = %369
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7, !dbg !1807
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1351, metadata !DIExpression()), !dbg !1807
  %435 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 47, !dbg !1808
  %436 = load i32, ptr %435, align 4, !dbg !1808, !tbaa !1810
  switch i32 %436, label %533 [
    i32 16, label %437
    i32 14, label %455
    i32 15, label %490
  ], !dbg !1811

437:                                              ; preds = %434
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %1, i32 noundef 0), !dbg !1812
  %438 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15, !dbg !1814
  %439 = load i32, ptr %438, align 16, !dbg !1816, !tbaa !1468
  %440 = icmp sgt i32 %439, 1, !dbg !1817
  br i1 %440, label %441, label %446, !dbg !1818

441:                                              ; preds = %437
  %442 = add nsw i32 %439, -1, !dbg !1819
  %443 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 12, !dbg !1820
  %444 = load i8, ptr %443, align 1, !dbg !1820, !tbaa !1434
  %445 = sext i8 %444 to i32, !dbg !1820
  tail call fastcc void @bs_write_te(ptr noundef nonnull %1, i32 noundef %442, i32 noundef %445), !dbg !1821
  br label %446, !dbg !1821

446:                                              ; preds = %441, %437
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %3) #7, !dbg !1822
  %447 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 0, i64 12, !dbg !1823
  %448 = load i16, ptr %447, align 4, !dbg !1823, !tbaa !1824
  %449 = sext i16 %448 to i32, !dbg !1823
  %450 = load i16, ptr %3, align 4, !dbg !1826, !tbaa !1824
  %451 = sext i16 %450 to i32, !dbg !1826
  %452 = sub nsw i32 %449, %451, !dbg !1827
  call fastcc void @bs_write_se(ptr noundef nonnull %1, i32 noundef %452), !dbg !1828
  %453 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 0, i64 12, i64 1, !dbg !1829
  %454 = getelementptr inbounds [2 x i16], ptr %3, i64 0, i64 1, !dbg !1830
  br label %525, !dbg !1831

455:                                              ; preds = %434
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %1, i32 noundef 1), !dbg !1832
  %456 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15, !dbg !1835
  %457 = load i32, ptr %456, align 16, !dbg !1837, !tbaa !1468
  %458 = icmp sgt i32 %457, 1, !dbg !1838
  br i1 %458, label %459, label %469, !dbg !1839

459:                                              ; preds = %455
  %460 = add nsw i32 %457, -1, !dbg !1840
  %461 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 12, !dbg !1842
  %462 = load i8, ptr %461, align 1, !dbg !1842, !tbaa !1434
  %463 = sext i8 %462 to i32, !dbg !1842
  tail call fastcc void @bs_write_te(ptr noundef nonnull %1, i32 noundef %460, i32 noundef %463), !dbg !1843
  %464 = load i32, ptr %456, align 16, !dbg !1844, !tbaa !1468
  %465 = add nsw i32 %464, -1, !dbg !1845
  %466 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 28, !dbg !1846
  %467 = load i8, ptr %466, align 1, !dbg !1846, !tbaa !1434
  %468 = sext i8 %467 to i32, !dbg !1846
  tail call fastcc void @bs_write_te(ptr noundef nonnull %1, i32 noundef %465, i32 noundef %468), !dbg !1847
  br label %469, !dbg !1848

469:                                              ; preds = %459, %455
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %3) #7, !dbg !1849
  %470 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 0, i64 12, !dbg !1850
  %471 = load i16, ptr %470, align 4, !dbg !1850, !tbaa !1824
  %472 = sext i16 %471 to i32, !dbg !1850
  %473 = load i16, ptr %3, align 4, !dbg !1851, !tbaa !1824
  %474 = sext i16 %473 to i32, !dbg !1851
  %475 = sub nsw i32 %472, %474, !dbg !1852
  call fastcc void @bs_write_se(ptr noundef nonnull %1, i32 noundef %475), !dbg !1853
  %476 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 0, i64 12, i64 1, !dbg !1854
  %477 = load i16, ptr %476, align 2, !dbg !1854, !tbaa !1824
  %478 = sext i16 %477 to i32, !dbg !1854
  %479 = getelementptr inbounds [2 x i16], ptr %3, i64 0, i64 1, !dbg !1855
  %480 = load i16, ptr %479, align 2, !dbg !1855, !tbaa !1824
  %481 = sext i16 %480 to i32, !dbg !1855
  %482 = sub nsw i32 %478, %481, !dbg !1856
  call fastcc void @bs_write_se(ptr noundef nonnull %1, i32 noundef %482), !dbg !1857
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %3) #7, !dbg !1858
  %483 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 0, i64 28, !dbg !1859
  %484 = load i16, ptr %483, align 4, !dbg !1859, !tbaa !1824
  %485 = sext i16 %484 to i32, !dbg !1859
  %486 = load i16, ptr %3, align 4, !dbg !1860, !tbaa !1824
  %487 = sext i16 %486 to i32, !dbg !1860
  %488 = sub nsw i32 %485, %487, !dbg !1861
  call fastcc void @bs_write_se(ptr noundef nonnull %1, i32 noundef %488), !dbg !1862
  %489 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 0, i64 28, i64 1, !dbg !1863
  br label %525, !dbg !1864

490:                                              ; preds = %434
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %1, i32 noundef 2), !dbg !1865
  %491 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15, !dbg !1868
  %492 = load i32, ptr %491, align 16, !dbg !1870, !tbaa !1468
  %493 = icmp sgt i32 %492, 1, !dbg !1871
  br i1 %493, label %494, label %504, !dbg !1872

494:                                              ; preds = %490
  %495 = add nsw i32 %492, -1, !dbg !1873
  %496 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 12, !dbg !1875
  %497 = load i8, ptr %496, align 1, !dbg !1875, !tbaa !1434
  %498 = sext i8 %497 to i32, !dbg !1875
  tail call fastcc void @bs_write_te(ptr noundef nonnull %1, i32 noundef %495, i32 noundef %498), !dbg !1876
  %499 = load i32, ptr %491, align 16, !dbg !1877, !tbaa !1468
  %500 = add nsw i32 %499, -1, !dbg !1878
  %501 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 14, !dbg !1879
  %502 = load i8, ptr %501, align 1, !dbg !1879, !tbaa !1434
  %503 = sext i8 %502 to i32, !dbg !1879
  tail call fastcc void @bs_write_te(ptr noundef nonnull %1, i32 noundef %500, i32 noundef %503), !dbg !1880
  br label %504, !dbg !1881

504:                                              ; preds = %494, %490
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %3) #7, !dbg !1882
  %505 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 0, i64 12, !dbg !1883
  %506 = load i16, ptr %505, align 4, !dbg !1883, !tbaa !1824
  %507 = sext i16 %506 to i32, !dbg !1883
  %508 = load i16, ptr %3, align 4, !dbg !1884, !tbaa !1824
  %509 = sext i16 %508 to i32, !dbg !1884
  %510 = sub nsw i32 %507, %509, !dbg !1885
  call fastcc void @bs_write_se(ptr noundef nonnull %1, i32 noundef %510), !dbg !1886
  %511 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 0, i64 12, i64 1, !dbg !1887
  %512 = load i16, ptr %511, align 2, !dbg !1887, !tbaa !1824
  %513 = sext i16 %512 to i32, !dbg !1887
  %514 = getelementptr inbounds [2 x i16], ptr %3, i64 0, i64 1, !dbg !1888
  %515 = load i16, ptr %514, align 2, !dbg !1888, !tbaa !1824
  %516 = sext i16 %515 to i32, !dbg !1888
  %517 = sub nsw i32 %513, %516, !dbg !1889
  call fastcc void @bs_write_se(ptr noundef nonnull %1, i32 noundef %517), !dbg !1890
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %3) #7, !dbg !1891
  %518 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 0, i64 14, !dbg !1892
  %519 = load i16, ptr %518, align 4, !dbg !1892, !tbaa !1824
  %520 = sext i16 %519 to i32, !dbg !1892
  %521 = load i16, ptr %3, align 4, !dbg !1893, !tbaa !1824
  %522 = sext i16 %521 to i32, !dbg !1893
  %523 = sub nsw i32 %520, %522, !dbg !1894
  call fastcc void @bs_write_se(ptr noundef nonnull %1, i32 noundef %523), !dbg !1895
  %524 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 0, i64 14, i64 1, !dbg !1896
  br label %525, !dbg !1897

525:                                              ; preds = %446, %504, %469
  %526 = phi ptr [ %479, %469 ], [ %514, %504 ], [ %454, %446 ]
  %527 = phi ptr [ %489, %469 ], [ %524, %504 ], [ %453, %446 ]
  %528 = load i16, ptr %527, align 2, !dbg !1898, !tbaa !1824
  %529 = sext i16 %528 to i32, !dbg !1898
  %530 = load i16, ptr %526, align 2, !dbg !1898, !tbaa !1824
  %531 = sext i16 %530 to i32, !dbg !1898
  %532 = sub nsw i32 %529, %531, !dbg !1898
  call fastcc void @bs_write_se(ptr noundef nonnull %1, i32 noundef %532), !dbg !1898
  br label %533, !dbg !1899

533:                                              ; preds = %525, %434
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7, !dbg !1899
  br label %1879, !dbg !1900

534:                                              ; preds = %369
  %535 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 12, !dbg !1901
  %536 = load i8, ptr %535, align 1, !dbg !1901, !tbaa !1434
  %537 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 14, !dbg !1903
  %538 = load i8, ptr %537, align 1, !dbg !1903, !tbaa !1434
  %539 = or i8 %538, %536, !dbg !1904
  %540 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 28, !dbg !1905
  %541 = load i8, ptr %540, align 1, !dbg !1905, !tbaa !1434
  %542 = or i8 %539, %541, !dbg !1906
  %543 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 30, !dbg !1907
  %544 = load i8, ptr %543, align 1, !dbg !1907, !tbaa !1434
  %545 = or i8 %542, %544, !dbg !1908
  %546 = icmp ne i8 %545, 0, !dbg !1909
  %547 = select i1 %546, i32 3, i32 4
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %1, i32 noundef %547), !dbg !1910
  call void @llvm.dbg.value(metadata i32 poison, metadata !1355, metadata !DIExpression()), !dbg !1911
  %548 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 1, !dbg !1912
  %549 = load i32, ptr %548, align 4, !dbg !1912, !tbaa !1914
  %550 = and i32 %549, 32, !dbg !1915
  %551 = icmp eq i32 %550, 0, !dbg !1915
  br i1 %551, label %658, label %552, !dbg !1916

552:                                              ; preds = %534
  %553 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3
  %554 = load i64, ptr %553, align 8, !tbaa !1448
  call void @llvm.dbg.value(metadata i32 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  %555 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 0, !dbg !1917
  %556 = load i32, ptr %555, align 4, !dbg !1917, !tbaa !1468
  %557 = sext i32 %556 to i64, !dbg !1920
  %558 = getelementptr inbounds [4 x i8], ptr @sub_mb_type_p_to_golomb, i64 0, i64 %557, !dbg !1920
  %559 = load i8, ptr %558, align 1, !dbg !1920, !tbaa !1434
  %560 = zext i8 %559 to i64, !dbg !1920
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8 %559, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1921
  %561 = add nuw nsw i64 %560, 1, !dbg !1923
  %562 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %561, !dbg !1924
  %563 = load i8, ptr %562, align 1, !dbg !1924, !tbaa !1434
  %564 = zext i8 %563 to i32, !dbg !1924
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 %564, metadata !1491, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i64 %561, metadata !1492, metadata !DIExpression()), !dbg !1925
  %565 = zext i8 %563 to i64, !dbg !1927
  %566 = shl i64 %554, %565, !dbg !1927
  %567 = or i64 %566, %561, !dbg !1928
  store i64 %567, ptr %553, align 8, !dbg !1929, !tbaa !1448
  %568 = load i32, ptr %14, align 8, !dbg !1930, !tbaa !1413
  %569 = sub nsw i32 %568, %564, !dbg !1930
  store i32 %569, ptr %14, align 8, !dbg !1930, !tbaa !1413
  %570 = icmp slt i32 %569, 33, !dbg !1931
  br i1 %570, label %571, label %580, !dbg !1932

571:                                              ; preds = %552
  %572 = zext i32 %569 to i64, !dbg !1933
  %573 = shl i64 %567, %572, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %573, metadata !1507, metadata !DIExpression()), !dbg !1934
  %574 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %573) #8, !dbg !1936, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %574, metadata !1507, metadata !DIExpression()), !dbg !1934
  %575 = trunc i64 %574 to i32, !dbg !1937
  %576 = load ptr, ptr %8, align 8, !dbg !1938, !tbaa !1408
  store i32 %575, ptr %576, align 4, !dbg !1939, !tbaa !1468
  %577 = load i32, ptr %14, align 8, !dbg !1940, !tbaa !1413
  %578 = add nsw i32 %577, 32, !dbg !1940
  store i32 %578, ptr %14, align 8, !dbg !1940, !tbaa !1413
  %579 = getelementptr inbounds i8, ptr %576, i64 4, !dbg !1941
  store ptr %579, ptr %8, align 8, !dbg !1941, !tbaa !1408
  br label %580, !dbg !1942

580:                                              ; preds = %552, %571
  %581 = phi i32 [ %569, %552 ], [ %578, %571 ], !dbg !1930
  call void @llvm.dbg.value(metadata i64 1, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 1, metadata !1340, metadata !DIExpression()), !dbg !1368
  %582 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 1, !dbg !1917
  %583 = load i32, ptr %582, align 4, !dbg !1917, !tbaa !1468
  %584 = sext i32 %583 to i64, !dbg !1920
  %585 = getelementptr inbounds [4 x i8], ptr @sub_mb_type_p_to_golomb, i64 0, i64 %584, !dbg !1920
  %586 = load i8, ptr %585, align 1, !dbg !1920, !tbaa !1434
  %587 = zext i8 %586 to i64, !dbg !1920
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8 %586, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1921
  %588 = add nuw nsw i64 %587, 1, !dbg !1923
  %589 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %588, !dbg !1924
  %590 = load i8, ptr %589, align 1, !dbg !1924, !tbaa !1434
  %591 = zext i8 %590 to i32, !dbg !1924
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 %591, metadata !1491, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i64 %588, metadata !1492, metadata !DIExpression()), !dbg !1925
  %592 = zext i8 %590 to i64, !dbg !1927
  %593 = shl i64 %567, %592, !dbg !1927
  %594 = or i64 %593, %588, !dbg !1928
  %595 = sub nsw i32 %581, %591, !dbg !1930
  store i32 %595, ptr %14, align 8, !dbg !1930, !tbaa !1413
  %596 = icmp slt i32 %595, 33, !dbg !1931
  br i1 %596, label %597, label %606, !dbg !1932

597:                                              ; preds = %580
  %598 = zext i32 %595 to i64, !dbg !1933
  %599 = shl i64 %594, %598, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %599, metadata !1507, metadata !DIExpression()), !dbg !1934
  %600 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %599) #8, !dbg !1936, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %600, metadata !1507, metadata !DIExpression()), !dbg !1934
  %601 = trunc i64 %600 to i32, !dbg !1937
  %602 = load ptr, ptr %8, align 8, !dbg !1938, !tbaa !1408
  store i32 %601, ptr %602, align 4, !dbg !1939, !tbaa !1468
  %603 = load i32, ptr %14, align 8, !dbg !1940, !tbaa !1413
  %604 = add nsw i32 %603, 32, !dbg !1940
  store i32 %604, ptr %14, align 8, !dbg !1940, !tbaa !1413
  %605 = getelementptr inbounds i8, ptr %602, i64 4, !dbg !1941
  store ptr %605, ptr %8, align 8, !dbg !1941, !tbaa !1408
  br label %606, !dbg !1942

606:                                              ; preds = %597, %580
  %607 = phi i32 [ %604, %597 ], [ %595, %580 ], !dbg !1930
  call void @llvm.dbg.value(metadata i64 2, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 2, metadata !1340, metadata !DIExpression()), !dbg !1368
  %608 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 2, !dbg !1917
  %609 = load i32, ptr %608, align 4, !dbg !1917, !tbaa !1468
  %610 = sext i32 %609 to i64, !dbg !1920
  %611 = getelementptr inbounds [4 x i8], ptr @sub_mb_type_p_to_golomb, i64 0, i64 %610, !dbg !1920
  %612 = load i8, ptr %611, align 1, !dbg !1920, !tbaa !1434
  %613 = zext i8 %612 to i64, !dbg !1920
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8 %612, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1921
  %614 = add nuw nsw i64 %613, 1, !dbg !1923
  %615 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %614, !dbg !1924
  %616 = load i8, ptr %615, align 1, !dbg !1924, !tbaa !1434
  %617 = zext i8 %616 to i32, !dbg !1924
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 %617, metadata !1491, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i64 %614, metadata !1492, metadata !DIExpression()), !dbg !1925
  %618 = zext i8 %616 to i64, !dbg !1927
  %619 = shl i64 %594, %618, !dbg !1927
  %620 = or i64 %619, %614, !dbg !1928
  %621 = sub nsw i32 %607, %617, !dbg !1930
  store i32 %621, ptr %14, align 8, !dbg !1930, !tbaa !1413
  %622 = icmp slt i32 %621, 33, !dbg !1931
  br i1 %622, label %623, label %632, !dbg !1932

623:                                              ; preds = %606
  %624 = zext i32 %621 to i64, !dbg !1933
  %625 = shl i64 %620, %624, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %625, metadata !1507, metadata !DIExpression()), !dbg !1934
  %626 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %625) #8, !dbg !1936, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %626, metadata !1507, metadata !DIExpression()), !dbg !1934
  %627 = trunc i64 %626 to i32, !dbg !1937
  %628 = load ptr, ptr %8, align 8, !dbg !1938, !tbaa !1408
  store i32 %627, ptr %628, align 4, !dbg !1939, !tbaa !1468
  %629 = load i32, ptr %14, align 8, !dbg !1940, !tbaa !1413
  %630 = add nsw i32 %629, 32, !dbg !1940
  store i32 %630, ptr %14, align 8, !dbg !1940, !tbaa !1413
  %631 = getelementptr inbounds i8, ptr %628, i64 4, !dbg !1941
  store ptr %631, ptr %8, align 8, !dbg !1941, !tbaa !1408
  br label %632, !dbg !1942

632:                                              ; preds = %623, %606
  %633 = phi i32 [ %630, %623 ], [ %621, %606 ], !dbg !1930
  call void @llvm.dbg.value(metadata i64 3, metadata !1340, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 3, metadata !1340, metadata !DIExpression()), !dbg !1368
  %634 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 3, !dbg !1917
  %635 = load i32, ptr %634, align 4, !dbg !1917, !tbaa !1468
  %636 = sext i32 %635 to i64, !dbg !1920
  %637 = getelementptr inbounds [4 x i8], ptr @sub_mb_type_p_to_golomb, i64 0, i64 %636, !dbg !1920
  %638 = load i8, ptr %637, align 1, !dbg !1920, !tbaa !1434
  %639 = zext i8 %638 to i64, !dbg !1920
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8 %638, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1921
  %640 = add nuw nsw i64 %639, 1, !dbg !1923
  %641 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %640, !dbg !1924
  %642 = load i8, ptr %641, align 1, !dbg !1924, !tbaa !1434
  %643 = zext i8 %642 to i32, !dbg !1924
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 %643, metadata !1491, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i64 %640, metadata !1492, metadata !DIExpression()), !dbg !1925
  %644 = zext i8 %642 to i64, !dbg !1927
  %645 = shl i64 %620, %644, !dbg !1927
  %646 = or i64 %645, %640, !dbg !1928
  store i64 %646, ptr %553, align 8, !dbg !1929, !tbaa !1448
  %647 = sub nsw i32 %633, %643, !dbg !1930
  store i32 %647, ptr %14, align 8, !dbg !1930, !tbaa !1413
  %648 = icmp slt i32 %647, 33, !dbg !1931
  br i1 %648, label %649, label %659, !dbg !1932

649:                                              ; preds = %632
  %650 = zext i32 %647 to i64, !dbg !1933
  %651 = shl i64 %646, %650, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %651, metadata !1507, metadata !DIExpression()), !dbg !1934
  %652 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %651) #8, !dbg !1936, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %652, metadata !1507, metadata !DIExpression()), !dbg !1934
  %653 = trunc i64 %652 to i32, !dbg !1937
  %654 = load ptr, ptr %8, align 8, !dbg !1938, !tbaa !1408
  store i32 %653, ptr %654, align 4, !dbg !1939, !tbaa !1468
  %655 = load i32, ptr %14, align 8, !dbg !1940, !tbaa !1413
  %656 = add nsw i32 %655, 32, !dbg !1940
  store i32 %656, ptr %14, align 8, !dbg !1940, !tbaa !1413
  %657 = getelementptr inbounds i8, ptr %654, i64 4, !dbg !1941
  store ptr %657, ptr %8, align 8, !dbg !1941, !tbaa !1408
  br label %659, !dbg !1942

658:                                              ; preds = %534
  tail call fastcc void @bs_write(ptr noundef nonnull %1, i32 noundef 4, i32 noundef 15), !dbg !1943
  br label %659

659:                                              ; preds = %632, %649, %658
  %660 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15, !dbg !1944
  %661 = load i32, ptr %660, align 16, !dbg !1946, !tbaa !1468
  %662 = icmp sgt i32 %661, 1, !dbg !1947
  %663 = and i1 %546, %662, !dbg !1948
  br i1 %663, label %664, label %680, !dbg !1948

664:                                              ; preds = %659
  %665 = add nsw i32 %661, -1, !dbg !1949
  %666 = load i8, ptr %535, align 1, !dbg !1951, !tbaa !1434
  %667 = sext i8 %666 to i32, !dbg !1951
  tail call fastcc void @bs_write_te(ptr noundef nonnull %1, i32 noundef %665, i32 noundef %667), !dbg !1952
  %668 = load i32, ptr %660, align 16, !dbg !1953, !tbaa !1468
  %669 = add nsw i32 %668, -1, !dbg !1954
  %670 = load i8, ptr %537, align 1, !dbg !1955, !tbaa !1434
  %671 = sext i8 %670 to i32, !dbg !1955
  tail call fastcc void @bs_write_te(ptr noundef nonnull %1, i32 noundef %669, i32 noundef %671), !dbg !1956
  %672 = load i32, ptr %660, align 16, !dbg !1957, !tbaa !1468
  %673 = add nsw i32 %672, -1, !dbg !1958
  %674 = load i8, ptr %540, align 1, !dbg !1959, !tbaa !1434
  %675 = sext i8 %674 to i32, !dbg !1959
  tail call fastcc void @bs_write_te(ptr noundef nonnull %1, i32 noundef %673, i32 noundef %675), !dbg !1960
  %676 = load i32, ptr %660, align 16, !dbg !1961, !tbaa !1468
  %677 = add nsw i32 %676, -1, !dbg !1962
  %678 = load i8, ptr %543, align 1, !dbg !1963, !tbaa !1434
  %679 = sext i8 %678 to i32, !dbg !1963
  tail call fastcc void @bs_write_te(ptr noundef nonnull %1, i32 noundef %677, i32 noundef %679), !dbg !1964
  br label %680, !dbg !1965

680:                                              ; preds = %664, %659
  call void @llvm.dbg.value(metadata i32 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  tail call fastcc void @cavlc_mb8x8_mvd(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0), !dbg !1966
  call void @llvm.dbg.value(metadata i32 1, metadata !1340, metadata !DIExpression()), !dbg !1368
  tail call fastcc void @cavlc_mb8x8_mvd(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1), !dbg !1966
  call void @llvm.dbg.value(metadata i32 2, metadata !1340, metadata !DIExpression()), !dbg !1368
  tail call fastcc void @cavlc_mb8x8_mvd(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 2), !dbg !1966
  call void @llvm.dbg.value(metadata i32 3, metadata !1340, metadata !DIExpression()), !dbg !1368
  tail call fastcc void @cavlc_mb8x8_mvd(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 3), !dbg !1966
  call void @llvm.dbg.value(metadata i32 4, metadata !1340, metadata !DIExpression()), !dbg !1368
  br label %1879, !dbg !1969

681:                                              ; preds = %369
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 22, metadata !1480, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i32 9, metadata !1491, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i32 23, metadata !1492, metadata !DIExpression()), !dbg !1974
  %682 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !1976
  %683 = load i64, ptr %682, align 8, !dbg !1976, !tbaa !1448
  %684 = shl i64 %683, 9, !dbg !1977
  %685 = or i64 %684, 23, !dbg !1978
  %686 = add nsw i32 %63, -9, !dbg !1979
  store i32 %686, ptr %14, align 8, !dbg !1979, !tbaa !1413
  %687 = icmp slt i32 %63, 42, !dbg !1980
  br i1 %687, label %688, label %696, !dbg !1981

688:                                              ; preds = %681
  %689 = zext i32 %686 to i64, !dbg !1982
  %690 = shl i64 %685, %689, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %690, metadata !1507, metadata !DIExpression()), !dbg !1983
  %691 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %690) #8, !dbg !1985, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %691, metadata !1507, metadata !DIExpression()), !dbg !1983
  %692 = trunc i64 %691 to i32, !dbg !1986
  store i32 %692, ptr %62, align 4, !dbg !1987, !tbaa !1468
  %693 = load i32, ptr %14, align 8, !dbg !1988, !tbaa !1413
  %694 = add nsw i32 %693, 32, !dbg !1988
  store i32 %694, ptr %14, align 8, !dbg !1988, !tbaa !1413
  %695 = getelementptr inbounds i8, ptr %62, i64 4, !dbg !1989
  store ptr %695, ptr %8, align 8, !dbg !1989, !tbaa !1408
  br label %696, !dbg !1990

696:                                              ; preds = %681, %688
  %697 = phi ptr [ %62, %681 ], [ %695, %688 ]
  %698 = phi i32 [ %686, %681 ], [ %694, %688 ], !dbg !1991
  call void @llvm.dbg.value(metadata i64 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  %699 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 0, !dbg !1996
  %700 = load i32, ptr %699, align 4, !dbg !1996, !tbaa !1468
  %701 = sext i32 %700 to i64, !dbg !1997
  %702 = getelementptr inbounds [13 x i8], ptr @sub_mb_type_b_to_golomb, i64 0, i64 %701, !dbg !1997
  %703 = load i8, ptr %702, align 1, !dbg !1997, !tbaa !1434
  %704 = zext i8 %703 to i64, !dbg !1997
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 %703, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1998
  %705 = add nuw nsw i64 %704, 1, !dbg !1999
  %706 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %705, !dbg !2000
  %707 = load i8, ptr %706, align 1, !dbg !2000, !tbaa !1434
  %708 = zext i8 %707 to i32, !dbg !2000
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i32 %708, metadata !1491, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i64 %705, metadata !1492, metadata !DIExpression()), !dbg !2001
  %709 = zext i8 %707 to i64, !dbg !2002
  %710 = shl i64 %685, %709, !dbg !2002
  %711 = or i64 %710, %705, !dbg !2003
  store i64 %711, ptr %682, align 8, !dbg !2004, !tbaa !1448
  %712 = sub nsw i32 %698, %708, !dbg !1991
  store i32 %712, ptr %14, align 8, !dbg !1991, !tbaa !1413
  %713 = icmp slt i32 %712, 33, !dbg !2005
  br i1 %713, label %714, label %722, !dbg !2006

714:                                              ; preds = %696
  %715 = zext i32 %712 to i64, !dbg !2007
  %716 = shl i64 %711, %715, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %716, metadata !1507, metadata !DIExpression()), !dbg !2008
  %717 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %716) #8, !dbg !2010, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %717, metadata !1507, metadata !DIExpression()), !dbg !2008
  %718 = trunc i64 %717 to i32, !dbg !2011
  store i32 %718, ptr %697, align 4, !dbg !2012, !tbaa !1468
  %719 = load i32, ptr %14, align 8, !dbg !2013, !tbaa !1413
  %720 = add nsw i32 %719, 32, !dbg !2013
  store i32 %720, ptr %14, align 8, !dbg !2013, !tbaa !1413
  %721 = getelementptr inbounds i8, ptr %697, i64 4, !dbg !2014
  store ptr %721, ptr %8, align 8, !dbg !2014, !tbaa !1408
  br label %722, !dbg !2015

722:                                              ; preds = %696, %714
  %723 = phi ptr [ %697, %696 ], [ %721, %714 ]
  %724 = phi i32 [ %712, %696 ], [ %720, %714 ], !dbg !1991
  call void @llvm.dbg.value(metadata i64 1, metadata !1340, metadata !DIExpression()), !dbg !1368
  %725 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 1, !dbg !1996
  %726 = load i32, ptr %725, align 4, !dbg !1996, !tbaa !1468
  %727 = sext i32 %726 to i64, !dbg !1997
  %728 = getelementptr inbounds [13 x i8], ptr @sub_mb_type_b_to_golomb, i64 0, i64 %727, !dbg !1997
  %729 = load i8, ptr %728, align 1, !dbg !1997, !tbaa !1434
  %730 = zext i8 %729 to i64, !dbg !1997
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 %729, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1998
  %731 = add nuw nsw i64 %730, 1, !dbg !1999
  %732 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %731, !dbg !2000
  %733 = load i8, ptr %732, align 1, !dbg !2000, !tbaa !1434
  %734 = zext i8 %733 to i32, !dbg !2000
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i32 %734, metadata !1491, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i64 %731, metadata !1492, metadata !DIExpression()), !dbg !2001
  %735 = zext i8 %733 to i64, !dbg !2002
  %736 = shl i64 %711, %735, !dbg !2002
  %737 = or i64 %736, %731, !dbg !2003
  %738 = sub nsw i32 %724, %734, !dbg !1991
  store i32 %738, ptr %14, align 8, !dbg !1991, !tbaa !1413
  %739 = icmp slt i32 %738, 33, !dbg !2005
  br i1 %739, label %740, label %748, !dbg !2006

740:                                              ; preds = %722
  %741 = zext i32 %738 to i64, !dbg !2007
  %742 = shl i64 %737, %741, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %742, metadata !1507, metadata !DIExpression()), !dbg !2008
  %743 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %742) #8, !dbg !2010, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %743, metadata !1507, metadata !DIExpression()), !dbg !2008
  %744 = trunc i64 %743 to i32, !dbg !2011
  store i32 %744, ptr %723, align 4, !dbg !2012, !tbaa !1468
  %745 = load i32, ptr %14, align 8, !dbg !2013, !tbaa !1413
  %746 = add nsw i32 %745, 32, !dbg !2013
  store i32 %746, ptr %14, align 8, !dbg !2013, !tbaa !1413
  %747 = getelementptr inbounds i8, ptr %723, i64 4, !dbg !2014
  store ptr %747, ptr %8, align 8, !dbg !2014, !tbaa !1408
  br label %748, !dbg !2015

748:                                              ; preds = %740, %722
  %749 = phi ptr [ %747, %740 ], [ %723, %722 ]
  %750 = phi i32 [ %746, %740 ], [ %738, %722 ], !dbg !1991
  call void @llvm.dbg.value(metadata i64 2, metadata !1340, metadata !DIExpression()), !dbg !1368
  %751 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 2, !dbg !1996
  %752 = load i32, ptr %751, align 4, !dbg !1996, !tbaa !1468
  %753 = sext i32 %752 to i64, !dbg !1997
  %754 = getelementptr inbounds [13 x i8], ptr @sub_mb_type_b_to_golomb, i64 0, i64 %753, !dbg !1997
  %755 = load i8, ptr %754, align 1, !dbg !1997, !tbaa !1434
  %756 = zext i8 %755 to i64, !dbg !1997
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 %755, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1998
  %757 = add nuw nsw i64 %756, 1, !dbg !1999
  %758 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %757, !dbg !2000
  %759 = load i8, ptr %758, align 1, !dbg !2000, !tbaa !1434
  %760 = zext i8 %759 to i32, !dbg !2000
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i32 %760, metadata !1491, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i64 %757, metadata !1492, metadata !DIExpression()), !dbg !2001
  %761 = zext i8 %759 to i64, !dbg !2002
  %762 = shl i64 %737, %761, !dbg !2002
  %763 = or i64 %762, %757, !dbg !2003
  %764 = sub nsw i32 %750, %760, !dbg !1991
  store i32 %764, ptr %14, align 8, !dbg !1991, !tbaa !1413
  %765 = icmp slt i32 %764, 33, !dbg !2005
  br i1 %765, label %766, label %774, !dbg !2006

766:                                              ; preds = %748
  %767 = zext i32 %764 to i64, !dbg !2007
  %768 = shl i64 %763, %767, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %768, metadata !1507, metadata !DIExpression()), !dbg !2008
  %769 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %768) #8, !dbg !2010, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %769, metadata !1507, metadata !DIExpression()), !dbg !2008
  %770 = trunc i64 %769 to i32, !dbg !2011
  store i32 %770, ptr %749, align 4, !dbg !2012, !tbaa !1468
  %771 = load i32, ptr %14, align 8, !dbg !2013, !tbaa !1413
  %772 = add nsw i32 %771, 32, !dbg !2013
  store i32 %772, ptr %14, align 8, !dbg !2013, !tbaa !1413
  %773 = getelementptr inbounds i8, ptr %749, i64 4, !dbg !2014
  store ptr %773, ptr %8, align 8, !dbg !2014, !tbaa !1408
  br label %774, !dbg !2015

774:                                              ; preds = %766, %748
  %775 = phi ptr [ %773, %766 ], [ %749, %748 ]
  %776 = phi i32 [ %772, %766 ], [ %764, %748 ], !dbg !1991
  call void @llvm.dbg.value(metadata i64 3, metadata !1340, metadata !DIExpression()), !dbg !1368
  %777 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 3, !dbg !1996
  %778 = load i32, ptr %777, align 4, !dbg !1996, !tbaa !1468
  %779 = sext i32 %778 to i64, !dbg !1997
  %780 = getelementptr inbounds [13 x i8], ptr @sub_mb_type_b_to_golomb, i64 0, i64 %779, !dbg !1997
  %781 = load i8, ptr %780, align 1, !dbg !1997, !tbaa !1434
  %782 = zext i8 %781 to i64, !dbg !1997
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 %781, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1998
  %783 = add nuw nsw i64 %782, 1, !dbg !1999
  %784 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %783, !dbg !2000
  %785 = load i8, ptr %784, align 1, !dbg !2000, !tbaa !1434
  %786 = zext i8 %785 to i32, !dbg !2000
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i32 %786, metadata !1491, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i64 %783, metadata !1492, metadata !DIExpression()), !dbg !2001
  %787 = zext i8 %785 to i64, !dbg !2002
  %788 = shl i64 %763, %787, !dbg !2002
  %789 = or i64 %788, %783, !dbg !2003
  store i64 %789, ptr %682, align 8, !dbg !2004, !tbaa !1448
  %790 = sub nsw i32 %776, %786, !dbg !1991
  store i32 %790, ptr %14, align 8, !dbg !1991, !tbaa !1413
  %791 = icmp slt i32 %790, 33, !dbg !2005
  br i1 %791, label %792, label %800, !dbg !2006

792:                                              ; preds = %774
  %793 = zext i32 %790 to i64, !dbg !2007
  %794 = shl i64 %789, %793, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %794, metadata !1507, metadata !DIExpression()), !dbg !2008
  %795 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %794) #8, !dbg !2010, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %795, metadata !1507, metadata !DIExpression()), !dbg !2008
  %796 = trunc i64 %795 to i32, !dbg !2011
  store i32 %796, ptr %775, align 4, !dbg !2012, !tbaa !1468
  %797 = load i32, ptr %14, align 8, !dbg !2013, !tbaa !1413
  %798 = add nsw i32 %797, 32, !dbg !2013
  store i32 %798, ptr %14, align 8, !dbg !2013, !tbaa !1413
  %799 = getelementptr inbounds i8, ptr %775, i64 4, !dbg !2014
  store ptr %799, ptr %8, align 8, !dbg !2014, !tbaa !1408
  br label %800, !dbg !2015

800:                                              ; preds = %792, %774
  %801 = phi ptr [ %799, %792 ], [ %775, %774 ]
  %802 = phi i32 [ %798, %792 ], [ %790, %774 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  %803 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15
  call void @llvm.dbg.value(metadata i64 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  %804 = load i32, ptr %699, align 4, !dbg !2016, !tbaa !1468
  %805 = sext i32 %804 to i64, !dbg !2020
  %806 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %805, !dbg !2020
  %807 = load i8, ptr %806, align 1, !dbg !2020, !tbaa !1434
  %808 = icmp eq i8 %807, 0, !dbg !2020
  br i1 %808, label %848, label %809, !dbg !2021

809:                                              ; preds = %800
  %810 = load i32, ptr %803, align 16, !dbg !2022, !tbaa !1468
  %811 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 12, !dbg !2023
  %812 = load i8, ptr %811, align 1, !dbg !2023, !tbaa !1434
  %813 = sext i8 %812 to i32, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %1, metadata !2024, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %810, metadata !2029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %813, metadata !2030, metadata !DIExpression()), !dbg !2031
  %814 = icmp eq i32 %810, 2, !dbg !2033
  br i1 %814, label %815, label %826, !dbg !2035

815:                                              ; preds = %809
  %816 = xor i32 %813, 1, !dbg !2036
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %816, metadata !1443, metadata !DIExpression()), !dbg !2037
  %817 = shl i64 %789, 1, !dbg !2039
  %818 = zext i32 %816 to i64, !dbg !2040
  %819 = or i64 %817, %818, !dbg !2041
  store i64 %819, ptr %682, align 8, !dbg !2041, !tbaa !1448
  %820 = add nsw i32 %802, -1, !dbg !2042
  store i32 %820, ptr %14, align 8, !dbg !2042, !tbaa !1413
  %821 = icmp eq i32 %820, 32, !dbg !2043
  br i1 %821, label %822, label %848, !dbg !2044

822:                                              ; preds = %815
  %823 = trunc i64 %819 to i32, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %823, metadata !1457, metadata !DIExpression()), !dbg !2046
  %824 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %823) #8, !dbg !2048, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %824, metadata !1457, metadata !DIExpression()), !dbg !2046
  store i32 %824, ptr %801, align 4, !dbg !2049, !tbaa !1468
  %825 = getelementptr inbounds i8, ptr %801, i64 4, !dbg !2050
  store ptr %825, ptr %8, align 8, !dbg !2050, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !2051, !tbaa !1413
  br label %848, !dbg !2052

826:                                              ; preds = %809
  %827 = icmp sgt i32 %810, 2, !dbg !2053
  br i1 %827, label %828, label %848, !dbg !2055

828:                                              ; preds = %826
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i32 %813, metadata !1480, metadata !DIExpression()), !dbg !2056
  %829 = add nsw i32 %813, 1, !dbg !2058
  %830 = sext i32 %829 to i64, !dbg !2059
  %831 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %830, !dbg !2059
  %832 = load i8, ptr %831, align 1, !dbg !2059, !tbaa !1434
  %833 = zext i8 %832 to i32, !dbg !2059
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i32 %833, metadata !1491, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i32 %829, metadata !1492, metadata !DIExpression()), !dbg !2060
  %834 = zext i8 %832 to i64, !dbg !2062
  %835 = shl i64 %789, %834, !dbg !2062
  %836 = zext i32 %829 to i64, !dbg !2063
  %837 = or i64 %835, %836, !dbg !2064
  store i64 %837, ptr %682, align 8, !dbg !2065, !tbaa !1448
  %838 = sub nsw i32 %802, %833, !dbg !2066
  store i32 %838, ptr %14, align 8, !dbg !2066, !tbaa !1413
  %839 = icmp slt i32 %838, 33, !dbg !2067
  br i1 %839, label %840, label %848, !dbg !2068

840:                                              ; preds = %828
  %841 = zext i32 %838 to i64, !dbg !2069
  %842 = shl i64 %837, %841, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %842, metadata !1507, metadata !DIExpression()), !dbg !2070
  %843 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %842) #8, !dbg !2072, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %843, metadata !1507, metadata !DIExpression()), !dbg !2070
  %844 = trunc i64 %843 to i32, !dbg !2073
  store i32 %844, ptr %801, align 4, !dbg !2074, !tbaa !1468
  %845 = load i32, ptr %14, align 8, !dbg !2075, !tbaa !1413
  %846 = add nsw i32 %845, 32, !dbg !2075
  store i32 %846, ptr %14, align 8, !dbg !2075, !tbaa !1413
  %847 = getelementptr inbounds i8, ptr %801, i64 4, !dbg !2076
  store ptr %847, ptr %8, align 8, !dbg !2076, !tbaa !1408
  br label %848, !dbg !2077

848:                                              ; preds = %840, %828, %826, %822, %815, %800
  %849 = phi ptr [ %847, %840 ], [ %801, %828 ], [ %801, %826 ], [ %825, %822 ], [ %801, %815 ], [ %801, %800 ]
  %850 = phi i32 [ %846, %840 ], [ %838, %828 ], [ %802, %826 ], [ 64, %822 ], [ %820, %815 ], [ %802, %800 ]
  %851 = phi i64 [ %837, %840 ], [ %837, %828 ], [ %789, %826 ], [ %819, %822 ], [ %819, %815 ], [ %789, %800 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !1340, metadata !DIExpression()), !dbg !1368
  %852 = load i32, ptr %725, align 4, !dbg !2016, !tbaa !1468
  %853 = sext i32 %852 to i64, !dbg !2020
  %854 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %853, !dbg !2020
  %855 = load i8, ptr %854, align 1, !dbg !2020, !tbaa !1434
  %856 = icmp eq i8 %855, 0, !dbg !2020
  br i1 %856, label %896, label %857, !dbg !2021

857:                                              ; preds = %848
  %858 = load i32, ptr %803, align 16, !dbg !2022, !tbaa !1468
  %859 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 14, !dbg !2023
  %860 = load i8, ptr %859, align 1, !dbg !2023, !tbaa !1434
  %861 = sext i8 %860 to i32, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %1, metadata !2024, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %858, metadata !2029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %861, metadata !2030, metadata !DIExpression()), !dbg !2031
  %862 = icmp eq i32 %858, 2, !dbg !2033
  br i1 %862, label %885, label %863, !dbg !2035

863:                                              ; preds = %857
  %864 = icmp sgt i32 %858, 2, !dbg !2053
  br i1 %864, label %865, label %896, !dbg !2055

865:                                              ; preds = %863
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i32 %861, metadata !1480, metadata !DIExpression()), !dbg !2056
  %866 = add nsw i32 %861, 1, !dbg !2058
  %867 = sext i32 %866 to i64, !dbg !2059
  %868 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %867, !dbg !2059
  %869 = load i8, ptr %868, align 1, !dbg !2059, !tbaa !1434
  %870 = zext i8 %869 to i32, !dbg !2059
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i32 %870, metadata !1491, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i32 %866, metadata !1492, metadata !DIExpression()), !dbg !2060
  %871 = zext i8 %869 to i64, !dbg !2062
  %872 = shl i64 %851, %871, !dbg !2062
  %873 = zext i32 %866 to i64, !dbg !2063
  %874 = or i64 %872, %873, !dbg !2064
  store i64 %874, ptr %682, align 8, !dbg !2065, !tbaa !1448
  %875 = sub nsw i32 %850, %870, !dbg !2066
  store i32 %875, ptr %14, align 8, !dbg !2066, !tbaa !1413
  %876 = icmp slt i32 %875, 33, !dbg !2067
  br i1 %876, label %877, label %896, !dbg !2068

877:                                              ; preds = %865
  %878 = zext i32 %875 to i64, !dbg !2069
  %879 = shl i64 %874, %878, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %879, metadata !1507, metadata !DIExpression()), !dbg !2070
  %880 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %879) #8, !dbg !2072, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %880, metadata !1507, metadata !DIExpression()), !dbg !2070
  %881 = trunc i64 %880 to i32, !dbg !2073
  store i32 %881, ptr %849, align 4, !dbg !2074, !tbaa !1468
  %882 = load i32, ptr %14, align 8, !dbg !2075, !tbaa !1413
  %883 = add nsw i32 %882, 32, !dbg !2075
  store i32 %883, ptr %14, align 8, !dbg !2075, !tbaa !1413
  %884 = getelementptr inbounds i8, ptr %849, i64 4, !dbg !2076
  store ptr %884, ptr %8, align 8, !dbg !2076, !tbaa !1408
  br label %896, !dbg !2077

885:                                              ; preds = %857
  %886 = xor i32 %861, 1, !dbg !2036
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %886, metadata !1443, metadata !DIExpression()), !dbg !2037
  %887 = shl i64 %851, 1, !dbg !2039
  %888 = zext i32 %886 to i64, !dbg !2040
  %889 = or i64 %887, %888, !dbg !2041
  store i64 %889, ptr %682, align 8, !dbg !2041, !tbaa !1448
  %890 = add nsw i32 %850, -1, !dbg !2042
  store i32 %890, ptr %14, align 8, !dbg !2042, !tbaa !1413
  %891 = icmp eq i32 %890, 32, !dbg !2043
  br i1 %891, label %892, label %896, !dbg !2044

892:                                              ; preds = %885
  %893 = trunc i64 %889 to i32, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %893, metadata !1457, metadata !DIExpression()), !dbg !2046
  %894 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %893) #8, !dbg !2048, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %894, metadata !1457, metadata !DIExpression()), !dbg !2046
  store i32 %894, ptr %849, align 4, !dbg !2049, !tbaa !1468
  %895 = getelementptr inbounds i8, ptr %849, i64 4, !dbg !2050
  store ptr %895, ptr %8, align 8, !dbg !2050, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !2051, !tbaa !1413
  br label %896, !dbg !2052

896:                                              ; preds = %892, %885, %877, %865, %863, %848
  %897 = phi ptr [ %895, %892 ], [ %849, %885 ], [ %884, %877 ], [ %849, %865 ], [ %849, %863 ], [ %849, %848 ]
  %898 = phi i32 [ 64, %892 ], [ %890, %885 ], [ %883, %877 ], [ %875, %865 ], [ %850, %863 ], [ %850, %848 ]
  %899 = phi i64 [ %889, %892 ], [ %889, %885 ], [ %874, %877 ], [ %874, %865 ], [ %851, %863 ], [ %851, %848 ]
  call void @llvm.dbg.value(metadata i64 2, metadata !1340, metadata !DIExpression()), !dbg !1368
  %900 = load i32, ptr %751, align 4, !dbg !2016, !tbaa !1468
  %901 = sext i32 %900 to i64, !dbg !2020
  %902 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %901, !dbg !2020
  %903 = load i8, ptr %902, align 1, !dbg !2020, !tbaa !1434
  %904 = icmp eq i8 %903, 0, !dbg !2020
  br i1 %904, label %944, label %905, !dbg !2021

905:                                              ; preds = %896
  %906 = load i32, ptr %803, align 16, !dbg !2022, !tbaa !1468
  %907 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 28, !dbg !2023
  %908 = load i8, ptr %907, align 1, !dbg !2023, !tbaa !1434
  %909 = sext i8 %908 to i32, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %1, metadata !2024, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %906, metadata !2029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %909, metadata !2030, metadata !DIExpression()), !dbg !2031
  %910 = icmp eq i32 %906, 2, !dbg !2033
  br i1 %910, label %933, label %911, !dbg !2035

911:                                              ; preds = %905
  %912 = icmp sgt i32 %906, 2, !dbg !2053
  br i1 %912, label %913, label %944, !dbg !2055

913:                                              ; preds = %911
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i32 %909, metadata !1480, metadata !DIExpression()), !dbg !2056
  %914 = add nsw i32 %909, 1, !dbg !2058
  %915 = sext i32 %914 to i64, !dbg !2059
  %916 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %915, !dbg !2059
  %917 = load i8, ptr %916, align 1, !dbg !2059, !tbaa !1434
  %918 = zext i8 %917 to i32, !dbg !2059
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i32 %918, metadata !1491, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i32 %914, metadata !1492, metadata !DIExpression()), !dbg !2060
  %919 = zext i8 %917 to i64, !dbg !2062
  %920 = shl i64 %899, %919, !dbg !2062
  %921 = zext i32 %914 to i64, !dbg !2063
  %922 = or i64 %920, %921, !dbg !2064
  store i64 %922, ptr %682, align 8, !dbg !2065, !tbaa !1448
  %923 = sub nsw i32 %898, %918, !dbg !2066
  store i32 %923, ptr %14, align 8, !dbg !2066, !tbaa !1413
  %924 = icmp slt i32 %923, 33, !dbg !2067
  br i1 %924, label %925, label %944, !dbg !2068

925:                                              ; preds = %913
  %926 = zext i32 %923 to i64, !dbg !2069
  %927 = shl i64 %922, %926, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %927, metadata !1507, metadata !DIExpression()), !dbg !2070
  %928 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %927) #8, !dbg !2072, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %928, metadata !1507, metadata !DIExpression()), !dbg !2070
  %929 = trunc i64 %928 to i32, !dbg !2073
  store i32 %929, ptr %897, align 4, !dbg !2074, !tbaa !1468
  %930 = load i32, ptr %14, align 8, !dbg !2075, !tbaa !1413
  %931 = add nsw i32 %930, 32, !dbg !2075
  store i32 %931, ptr %14, align 8, !dbg !2075, !tbaa !1413
  %932 = getelementptr inbounds i8, ptr %897, i64 4, !dbg !2076
  store ptr %932, ptr %8, align 8, !dbg !2076, !tbaa !1408
  br label %944, !dbg !2077

933:                                              ; preds = %905
  %934 = xor i32 %909, 1, !dbg !2036
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %934, metadata !1443, metadata !DIExpression()), !dbg !2037
  %935 = shl i64 %899, 1, !dbg !2039
  %936 = zext i32 %934 to i64, !dbg !2040
  %937 = or i64 %935, %936, !dbg !2041
  store i64 %937, ptr %682, align 8, !dbg !2041, !tbaa !1448
  %938 = add nsw i32 %898, -1, !dbg !2042
  store i32 %938, ptr %14, align 8, !dbg !2042, !tbaa !1413
  %939 = icmp eq i32 %938, 32, !dbg !2043
  br i1 %939, label %940, label %944, !dbg !2044

940:                                              ; preds = %933
  %941 = trunc i64 %937 to i32, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %941, metadata !1457, metadata !DIExpression()), !dbg !2046
  %942 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %941) #8, !dbg !2048, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %942, metadata !1457, metadata !DIExpression()), !dbg !2046
  store i32 %942, ptr %897, align 4, !dbg !2049, !tbaa !1468
  %943 = getelementptr inbounds i8, ptr %897, i64 4, !dbg !2050
  store ptr %943, ptr %8, align 8, !dbg !2050, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !2051, !tbaa !1413
  br label %944, !dbg !2052

944:                                              ; preds = %940, %933, %925, %913, %911, %896
  %945 = phi ptr [ %943, %940 ], [ %897, %933 ], [ %932, %925 ], [ %897, %913 ], [ %897, %911 ], [ %897, %896 ]
  %946 = phi i32 [ 64, %940 ], [ %938, %933 ], [ %931, %925 ], [ %923, %913 ], [ %898, %911 ], [ %898, %896 ]
  %947 = phi i64 [ %937, %940 ], [ %937, %933 ], [ %922, %925 ], [ %922, %913 ], [ %899, %911 ], [ %899, %896 ]
  call void @llvm.dbg.value(metadata i64 3, metadata !1340, metadata !DIExpression()), !dbg !1368
  %948 = load i32, ptr %777, align 4, !dbg !2016, !tbaa !1468
  %949 = sext i32 %948 to i64, !dbg !2020
  %950 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %949, !dbg !2020
  %951 = load i8, ptr %950, align 1, !dbg !2020, !tbaa !1434
  %952 = icmp eq i8 %951, 0, !dbg !2020
  br i1 %952, label %992, label %953, !dbg !2021

953:                                              ; preds = %944
  %954 = load i32, ptr %803, align 16, !dbg !2022, !tbaa !1468
  %955 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 0, i64 30, !dbg !2023
  %956 = load i8, ptr %955, align 1, !dbg !2023, !tbaa !1434
  %957 = sext i8 %956 to i32, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %1, metadata !2024, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %954, metadata !2029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %957, metadata !2030, metadata !DIExpression()), !dbg !2031
  %958 = icmp eq i32 %954, 2, !dbg !2033
  br i1 %958, label %981, label %959, !dbg !2035

959:                                              ; preds = %953
  %960 = icmp sgt i32 %954, 2, !dbg !2053
  br i1 %960, label %961, label %992, !dbg !2055

961:                                              ; preds = %959
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i32 %957, metadata !1480, metadata !DIExpression()), !dbg !2056
  %962 = add nsw i32 %957, 1, !dbg !2058
  %963 = sext i32 %962 to i64, !dbg !2059
  %964 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %963, !dbg !2059
  %965 = load i8, ptr %964, align 1, !dbg !2059, !tbaa !1434
  %966 = zext i8 %965 to i32, !dbg !2059
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i32 %966, metadata !1491, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i32 %962, metadata !1492, metadata !DIExpression()), !dbg !2060
  %967 = zext i8 %965 to i64, !dbg !2062
  %968 = shl i64 %947, %967, !dbg !2062
  %969 = zext i32 %962 to i64, !dbg !2063
  %970 = or i64 %968, %969, !dbg !2064
  store i64 %970, ptr %682, align 8, !dbg !2065, !tbaa !1448
  %971 = sub nsw i32 %946, %966, !dbg !2066
  store i32 %971, ptr %14, align 8, !dbg !2066, !tbaa !1413
  %972 = icmp slt i32 %971, 33, !dbg !2067
  br i1 %972, label %973, label %992, !dbg !2068

973:                                              ; preds = %961
  %974 = zext i32 %971 to i64, !dbg !2069
  %975 = shl i64 %970, %974, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %975, metadata !1507, metadata !DIExpression()), !dbg !2070
  %976 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %975) #8, !dbg !2072, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %976, metadata !1507, metadata !DIExpression()), !dbg !2070
  %977 = trunc i64 %976 to i32, !dbg !2073
  store i32 %977, ptr %945, align 4, !dbg !2074, !tbaa !1468
  %978 = load i32, ptr %14, align 8, !dbg !2075, !tbaa !1413
  %979 = add nsw i32 %978, 32, !dbg !2075
  store i32 %979, ptr %14, align 8, !dbg !2075, !tbaa !1413
  %980 = getelementptr inbounds i8, ptr %945, i64 4, !dbg !2076
  store ptr %980, ptr %8, align 8, !dbg !2076, !tbaa !1408
  br label %992, !dbg !2077

981:                                              ; preds = %953
  %982 = xor i32 %957, 1, !dbg !2036
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %982, metadata !1443, metadata !DIExpression()), !dbg !2037
  %983 = shl i64 %947, 1, !dbg !2039
  %984 = zext i32 %982 to i64, !dbg !2040
  %985 = or i64 %983, %984, !dbg !2041
  store i64 %985, ptr %682, align 8, !dbg !2041, !tbaa !1448
  %986 = add nsw i32 %946, -1, !dbg !2042
  store i32 %986, ptr %14, align 8, !dbg !2042, !tbaa !1413
  %987 = icmp eq i32 %986, 32, !dbg !2043
  br i1 %987, label %988, label %992, !dbg !2044

988:                                              ; preds = %981
  %989 = trunc i64 %985 to i32, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %989, metadata !1457, metadata !DIExpression()), !dbg !2046
  %990 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %989) #8, !dbg !2048, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %990, metadata !1457, metadata !DIExpression()), !dbg !2046
  store i32 %990, ptr %945, align 4, !dbg !2049, !tbaa !1468
  %991 = getelementptr inbounds i8, ptr %945, i64 4, !dbg !2050
  store ptr %991, ptr %8, align 8, !dbg !2050, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !2051, !tbaa !1413
  br label %992, !dbg !2052

992:                                              ; preds = %988, %981, %973, %961, %959, %944
  %993 = phi ptr [ %991, %988 ], [ %945, %981 ], [ %980, %973 ], [ %945, %961 ], [ %945, %959 ], [ %945, %944 ]
  %994 = phi i32 [ 64, %988 ], [ %986, %981 ], [ %979, %973 ], [ %971, %961 ], [ %946, %959 ], [ %946, %944 ]
  %995 = phi i64 [ %985, %988 ], [ %985, %981 ], [ %970, %973 ], [ %970, %961 ], [ %947, %959 ], [ %947, %944 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  %996 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15, i64 1
  call void @llvm.dbg.value(metadata i64 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  %997 = load i32, ptr %699, align 4, !dbg !2078, !tbaa !1468
  %998 = sext i32 %997 to i64, !dbg !2082
  %999 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 1, i64 %998, !dbg !2082
  %1000 = load i8, ptr %999, align 1, !dbg !2082, !tbaa !1434
  %1001 = icmp eq i8 %1000, 0, !dbg !2082
  br i1 %1001, label %1041, label %1002, !dbg !2083

1002:                                             ; preds = %992
  %1003 = load i32, ptr %996, align 4, !dbg !2084, !tbaa !1468
  %1004 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 1, i64 12, !dbg !2085
  %1005 = load i8, ptr %1004, align 1, !dbg !2085, !tbaa !1434
  %1006 = sext i8 %1005 to i32, !dbg !2085
  call void @llvm.dbg.value(metadata ptr %1, metadata !2024, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %1003, metadata !2029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %1006, metadata !2030, metadata !DIExpression()), !dbg !2086
  %1007 = icmp eq i32 %1003, 2, !dbg !2088
  br i1 %1007, label %1008, label %1019, !dbg !2089

1008:                                             ; preds = %1002
  %1009 = xor i32 %1006, 1, !dbg !2090
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i32 %1009, metadata !1443, metadata !DIExpression()), !dbg !2091
  %1010 = shl i64 %995, 1, !dbg !2093
  %1011 = zext i32 %1009 to i64, !dbg !2094
  %1012 = or i64 %1010, %1011, !dbg !2095
  store i64 %1012, ptr %682, align 8, !dbg !2095, !tbaa !1448
  %1013 = add nsw i32 %994, -1, !dbg !2096
  store i32 %1013, ptr %14, align 8, !dbg !2096, !tbaa !1413
  %1014 = icmp eq i32 %1013, 32, !dbg !2097
  br i1 %1014, label %1015, label %1041, !dbg !2098

1015:                                             ; preds = %1008
  %1016 = trunc i64 %1012 to i32, !dbg !2099
  call void @llvm.dbg.value(metadata i32 %1016, metadata !1457, metadata !DIExpression()), !dbg !2100
  %1017 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1016) #8, !dbg !2102, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %1017, metadata !1457, metadata !DIExpression()), !dbg !2100
  store i32 %1017, ptr %993, align 4, !dbg !2103, !tbaa !1468
  %1018 = getelementptr inbounds i8, ptr %993, i64 4, !dbg !2104
  store ptr %1018, ptr %8, align 8, !dbg !2104, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !2105, !tbaa !1413
  br label %1041, !dbg !2106

1019:                                             ; preds = %1002
  %1020 = icmp sgt i32 %1003, 2, !dbg !2107
  br i1 %1020, label %1021, label %1041, !dbg !2108

1021:                                             ; preds = %1019
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i32 %1006, metadata !1480, metadata !DIExpression()), !dbg !2109
  %1022 = add nsw i32 %1006, 1, !dbg !2111
  %1023 = sext i32 %1022 to i64, !dbg !2112
  %1024 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1023, !dbg !2112
  %1025 = load i8, ptr %1024, align 1, !dbg !2112, !tbaa !1434
  %1026 = zext i8 %1025 to i32, !dbg !2112
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %1026, metadata !1491, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %1022, metadata !1492, metadata !DIExpression()), !dbg !2113
  %1027 = zext i8 %1025 to i64, !dbg !2115
  %1028 = shl i64 %995, %1027, !dbg !2115
  %1029 = zext i32 %1022 to i64, !dbg !2116
  %1030 = or i64 %1028, %1029, !dbg !2117
  store i64 %1030, ptr %682, align 8, !dbg !2118, !tbaa !1448
  %1031 = sub nsw i32 %994, %1026, !dbg !2119
  store i32 %1031, ptr %14, align 8, !dbg !2119, !tbaa !1413
  %1032 = icmp slt i32 %1031, 33, !dbg !2120
  br i1 %1032, label %1033, label %1041, !dbg !2121

1033:                                             ; preds = %1021
  %1034 = zext i32 %1031 to i64, !dbg !2122
  %1035 = shl i64 %1030, %1034, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %1035, metadata !1507, metadata !DIExpression()), !dbg !2123
  %1036 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1035) #8, !dbg !2125, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1036, metadata !1507, metadata !DIExpression()), !dbg !2123
  %1037 = trunc i64 %1036 to i32, !dbg !2126
  store i32 %1037, ptr %993, align 4, !dbg !2127, !tbaa !1468
  %1038 = load i32, ptr %14, align 8, !dbg !2128, !tbaa !1413
  %1039 = add nsw i32 %1038, 32, !dbg !2128
  store i32 %1039, ptr %14, align 8, !dbg !2128, !tbaa !1413
  %1040 = getelementptr inbounds i8, ptr %993, i64 4, !dbg !2129
  store ptr %1040, ptr %8, align 8, !dbg !2129, !tbaa !1408
  br label %1041, !dbg !2130

1041:                                             ; preds = %1033, %1021, %1019, %1015, %1008, %992
  %1042 = phi ptr [ %1040, %1033 ], [ %993, %1021 ], [ %993, %1019 ], [ %1018, %1015 ], [ %993, %1008 ], [ %993, %992 ]
  %1043 = phi i32 [ %1039, %1033 ], [ %1031, %1021 ], [ %994, %1019 ], [ 64, %1015 ], [ %1013, %1008 ], [ %994, %992 ]
  %1044 = phi i64 [ %1030, %1033 ], [ %1030, %1021 ], [ %995, %1019 ], [ %1012, %1015 ], [ %1012, %1008 ], [ %995, %992 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !1340, metadata !DIExpression()), !dbg !1368
  %1045 = load i32, ptr %725, align 4, !dbg !2078, !tbaa !1468
  %1046 = sext i32 %1045 to i64, !dbg !2082
  %1047 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 1, i64 %1046, !dbg !2082
  %1048 = load i8, ptr %1047, align 1, !dbg !2082, !tbaa !1434
  %1049 = icmp eq i8 %1048, 0, !dbg !2082
  br i1 %1049, label %1089, label %1050, !dbg !2083

1050:                                             ; preds = %1041
  %1051 = load i32, ptr %996, align 4, !dbg !2084, !tbaa !1468
  %1052 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 1, i64 14, !dbg !2085
  %1053 = load i8, ptr %1052, align 1, !dbg !2085, !tbaa !1434
  %1054 = sext i8 %1053 to i32, !dbg !2085
  call void @llvm.dbg.value(metadata ptr %1, metadata !2024, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %1051, metadata !2029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %1054, metadata !2030, metadata !DIExpression()), !dbg !2086
  %1055 = icmp eq i32 %1051, 2, !dbg !2088
  br i1 %1055, label %1078, label %1056, !dbg !2089

1056:                                             ; preds = %1050
  %1057 = icmp sgt i32 %1051, 2, !dbg !2107
  br i1 %1057, label %1058, label %1089, !dbg !2108

1058:                                             ; preds = %1056
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i32 %1054, metadata !1480, metadata !DIExpression()), !dbg !2109
  %1059 = add nsw i32 %1054, 1, !dbg !2111
  %1060 = sext i32 %1059 to i64, !dbg !2112
  %1061 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1060, !dbg !2112
  %1062 = load i8, ptr %1061, align 1, !dbg !2112, !tbaa !1434
  %1063 = zext i8 %1062 to i32, !dbg !2112
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %1063, metadata !1491, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %1059, metadata !1492, metadata !DIExpression()), !dbg !2113
  %1064 = zext i8 %1062 to i64, !dbg !2115
  %1065 = shl i64 %1044, %1064, !dbg !2115
  %1066 = zext i32 %1059 to i64, !dbg !2116
  %1067 = or i64 %1065, %1066, !dbg !2117
  store i64 %1067, ptr %682, align 8, !dbg !2118, !tbaa !1448
  %1068 = sub nsw i32 %1043, %1063, !dbg !2119
  store i32 %1068, ptr %14, align 8, !dbg !2119, !tbaa !1413
  %1069 = icmp slt i32 %1068, 33, !dbg !2120
  br i1 %1069, label %1070, label %1089, !dbg !2121

1070:                                             ; preds = %1058
  %1071 = zext i32 %1068 to i64, !dbg !2122
  %1072 = shl i64 %1067, %1071, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %1072, metadata !1507, metadata !DIExpression()), !dbg !2123
  %1073 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1072) #8, !dbg !2125, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1073, metadata !1507, metadata !DIExpression()), !dbg !2123
  %1074 = trunc i64 %1073 to i32, !dbg !2126
  store i32 %1074, ptr %1042, align 4, !dbg !2127, !tbaa !1468
  %1075 = load i32, ptr %14, align 8, !dbg !2128, !tbaa !1413
  %1076 = add nsw i32 %1075, 32, !dbg !2128
  store i32 %1076, ptr %14, align 8, !dbg !2128, !tbaa !1413
  %1077 = getelementptr inbounds i8, ptr %1042, i64 4, !dbg !2129
  store ptr %1077, ptr %8, align 8, !dbg !2129, !tbaa !1408
  br label %1089, !dbg !2130

1078:                                             ; preds = %1050
  %1079 = xor i32 %1054, 1, !dbg !2090
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i32 %1079, metadata !1443, metadata !DIExpression()), !dbg !2091
  %1080 = shl i64 %1044, 1, !dbg !2093
  %1081 = zext i32 %1079 to i64, !dbg !2094
  %1082 = or i64 %1080, %1081, !dbg !2095
  store i64 %1082, ptr %682, align 8, !dbg !2095, !tbaa !1448
  %1083 = add nsw i32 %1043, -1, !dbg !2096
  store i32 %1083, ptr %14, align 8, !dbg !2096, !tbaa !1413
  %1084 = icmp eq i32 %1083, 32, !dbg !2097
  br i1 %1084, label %1085, label %1089, !dbg !2098

1085:                                             ; preds = %1078
  %1086 = trunc i64 %1082 to i32, !dbg !2099
  call void @llvm.dbg.value(metadata i32 %1086, metadata !1457, metadata !DIExpression()), !dbg !2100
  %1087 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1086) #8, !dbg !2102, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %1087, metadata !1457, metadata !DIExpression()), !dbg !2100
  store i32 %1087, ptr %1042, align 4, !dbg !2103, !tbaa !1468
  %1088 = getelementptr inbounds i8, ptr %1042, i64 4, !dbg !2104
  store ptr %1088, ptr %8, align 8, !dbg !2104, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !2105, !tbaa !1413
  br label %1089, !dbg !2106

1089:                                             ; preds = %1085, %1078, %1070, %1058, %1056, %1041
  %1090 = phi ptr [ %1088, %1085 ], [ %1042, %1078 ], [ %1077, %1070 ], [ %1042, %1058 ], [ %1042, %1056 ], [ %1042, %1041 ]
  %1091 = phi i32 [ 64, %1085 ], [ %1083, %1078 ], [ %1076, %1070 ], [ %1068, %1058 ], [ %1043, %1056 ], [ %1043, %1041 ]
  %1092 = phi i64 [ %1082, %1085 ], [ %1082, %1078 ], [ %1067, %1070 ], [ %1067, %1058 ], [ %1044, %1056 ], [ %1044, %1041 ]
  call void @llvm.dbg.value(metadata i64 2, metadata !1340, metadata !DIExpression()), !dbg !1368
  %1093 = load i32, ptr %751, align 4, !dbg !2078, !tbaa !1468
  %1094 = sext i32 %1093 to i64, !dbg !2082
  %1095 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 1, i64 %1094, !dbg !2082
  %1096 = load i8, ptr %1095, align 1, !dbg !2082, !tbaa !1434
  %1097 = icmp eq i8 %1096, 0, !dbg !2082
  br i1 %1097, label %1137, label %1098, !dbg !2083

1098:                                             ; preds = %1089
  %1099 = load i32, ptr %996, align 4, !dbg !2084, !tbaa !1468
  %1100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 1, i64 28, !dbg !2085
  %1101 = load i8, ptr %1100, align 1, !dbg !2085, !tbaa !1434
  %1102 = sext i8 %1101 to i32, !dbg !2085
  call void @llvm.dbg.value(metadata ptr %1, metadata !2024, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %1099, metadata !2029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %1102, metadata !2030, metadata !DIExpression()), !dbg !2086
  %1103 = icmp eq i32 %1099, 2, !dbg !2088
  br i1 %1103, label %1126, label %1104, !dbg !2089

1104:                                             ; preds = %1098
  %1105 = icmp sgt i32 %1099, 2, !dbg !2107
  br i1 %1105, label %1106, label %1137, !dbg !2108

1106:                                             ; preds = %1104
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i32 %1102, metadata !1480, metadata !DIExpression()), !dbg !2109
  %1107 = add nsw i32 %1102, 1, !dbg !2111
  %1108 = sext i32 %1107 to i64, !dbg !2112
  %1109 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1108, !dbg !2112
  %1110 = load i8, ptr %1109, align 1, !dbg !2112, !tbaa !1434
  %1111 = zext i8 %1110 to i32, !dbg !2112
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %1111, metadata !1491, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %1107, metadata !1492, metadata !DIExpression()), !dbg !2113
  %1112 = zext i8 %1110 to i64, !dbg !2115
  %1113 = shl i64 %1092, %1112, !dbg !2115
  %1114 = zext i32 %1107 to i64, !dbg !2116
  %1115 = or i64 %1113, %1114, !dbg !2117
  store i64 %1115, ptr %682, align 8, !dbg !2118, !tbaa !1448
  %1116 = sub nsw i32 %1091, %1111, !dbg !2119
  store i32 %1116, ptr %14, align 8, !dbg !2119, !tbaa !1413
  %1117 = icmp slt i32 %1116, 33, !dbg !2120
  br i1 %1117, label %1118, label %1137, !dbg !2121

1118:                                             ; preds = %1106
  %1119 = zext i32 %1116 to i64, !dbg !2122
  %1120 = shl i64 %1115, %1119, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %1120, metadata !1507, metadata !DIExpression()), !dbg !2123
  %1121 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1120) #8, !dbg !2125, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1121, metadata !1507, metadata !DIExpression()), !dbg !2123
  %1122 = trunc i64 %1121 to i32, !dbg !2126
  store i32 %1122, ptr %1090, align 4, !dbg !2127, !tbaa !1468
  %1123 = load i32, ptr %14, align 8, !dbg !2128, !tbaa !1413
  %1124 = add nsw i32 %1123, 32, !dbg !2128
  store i32 %1124, ptr %14, align 8, !dbg !2128, !tbaa !1413
  %1125 = getelementptr inbounds i8, ptr %1090, i64 4, !dbg !2129
  store ptr %1125, ptr %8, align 8, !dbg !2129, !tbaa !1408
  br label %1137, !dbg !2130

1126:                                             ; preds = %1098
  %1127 = xor i32 %1102, 1, !dbg !2090
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i32 %1127, metadata !1443, metadata !DIExpression()), !dbg !2091
  %1128 = shl i64 %1092, 1, !dbg !2093
  %1129 = zext i32 %1127 to i64, !dbg !2094
  %1130 = or i64 %1128, %1129, !dbg !2095
  store i64 %1130, ptr %682, align 8, !dbg !2095, !tbaa !1448
  %1131 = add nsw i32 %1091, -1, !dbg !2096
  store i32 %1131, ptr %14, align 8, !dbg !2096, !tbaa !1413
  %1132 = icmp eq i32 %1131, 32, !dbg !2097
  br i1 %1132, label %1133, label %1137, !dbg !2098

1133:                                             ; preds = %1126
  %1134 = trunc i64 %1130 to i32, !dbg !2099
  call void @llvm.dbg.value(metadata i32 %1134, metadata !1457, metadata !DIExpression()), !dbg !2100
  %1135 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1134) #8, !dbg !2102, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %1135, metadata !1457, metadata !DIExpression()), !dbg !2100
  store i32 %1135, ptr %1090, align 4, !dbg !2103, !tbaa !1468
  %1136 = getelementptr inbounds i8, ptr %1090, i64 4, !dbg !2104
  store ptr %1136, ptr %8, align 8, !dbg !2104, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !2105, !tbaa !1413
  br label %1137, !dbg !2106

1137:                                             ; preds = %1133, %1126, %1118, %1106, %1104, %1089
  %1138 = phi ptr [ %1136, %1133 ], [ %1090, %1126 ], [ %1125, %1118 ], [ %1090, %1106 ], [ %1090, %1104 ], [ %1090, %1089 ]
  %1139 = phi i32 [ 64, %1133 ], [ %1131, %1126 ], [ %1124, %1118 ], [ %1116, %1106 ], [ %1091, %1104 ], [ %1091, %1089 ]
  %1140 = phi i64 [ %1130, %1133 ], [ %1130, %1126 ], [ %1115, %1118 ], [ %1115, %1106 ], [ %1092, %1104 ], [ %1092, %1089 ]
  call void @llvm.dbg.value(metadata i64 3, metadata !1340, metadata !DIExpression()), !dbg !1368
  %1141 = load i32, ptr %777, align 4, !dbg !2078, !tbaa !1468
  %1142 = sext i32 %1141 to i64, !dbg !2082
  %1143 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 1, i64 %1142, !dbg !2082
  %1144 = load i8, ptr %1143, align 1, !dbg !2082, !tbaa !1434
  %1145 = icmp eq i8 %1144, 0, !dbg !2082
  br i1 %1145, label %1185, label %1146, !dbg !2083

1146:                                             ; preds = %1137
  %1147 = load i32, ptr %996, align 4, !dbg !2084, !tbaa !1468
  %1148 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 1, i64 30, !dbg !2085
  %1149 = load i8, ptr %1148, align 1, !dbg !2085, !tbaa !1434
  %1150 = sext i8 %1149 to i32, !dbg !2085
  call void @llvm.dbg.value(metadata ptr %1, metadata !2024, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %1147, metadata !2029, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %1150, metadata !2030, metadata !DIExpression()), !dbg !2086
  %1151 = icmp eq i32 %1147, 2, !dbg !2088
  br i1 %1151, label %1174, label %1152, !dbg !2089

1152:                                             ; preds = %1146
  %1153 = icmp sgt i32 %1147, 2, !dbg !2107
  br i1 %1153, label %1154, label %1185, !dbg !2108

1154:                                             ; preds = %1152
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i32 %1150, metadata !1480, metadata !DIExpression()), !dbg !2109
  %1155 = add nsw i32 %1150, 1, !dbg !2111
  %1156 = sext i32 %1155 to i64, !dbg !2112
  %1157 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1156, !dbg !2112
  %1158 = load i8, ptr %1157, align 1, !dbg !2112, !tbaa !1434
  %1159 = zext i8 %1158 to i32, !dbg !2112
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %1159, metadata !1491, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %1155, metadata !1492, metadata !DIExpression()), !dbg !2113
  %1160 = zext i8 %1158 to i64, !dbg !2115
  %1161 = shl i64 %1140, %1160, !dbg !2115
  %1162 = zext i32 %1155 to i64, !dbg !2116
  %1163 = or i64 %1161, %1162, !dbg !2117
  store i64 %1163, ptr %682, align 8, !dbg !2118, !tbaa !1448
  %1164 = sub nsw i32 %1139, %1159, !dbg !2119
  store i32 %1164, ptr %14, align 8, !dbg !2119, !tbaa !1413
  %1165 = icmp slt i32 %1164, 33, !dbg !2120
  br i1 %1165, label %1166, label %1185, !dbg !2121

1166:                                             ; preds = %1154
  %1167 = zext i32 %1164 to i64, !dbg !2122
  %1168 = shl i64 %1163, %1167, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %1168, metadata !1507, metadata !DIExpression()), !dbg !2123
  %1169 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1168) #8, !dbg !2125, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1169, metadata !1507, metadata !DIExpression()), !dbg !2123
  %1170 = trunc i64 %1169 to i32, !dbg !2126
  store i32 %1170, ptr %1138, align 4, !dbg !2127, !tbaa !1468
  %1171 = load i32, ptr %14, align 8, !dbg !2128, !tbaa !1413
  %1172 = add nsw i32 %1171, 32, !dbg !2128
  store i32 %1172, ptr %14, align 8, !dbg !2128, !tbaa !1413
  %1173 = getelementptr inbounds i8, ptr %1138, i64 4, !dbg !2129
  store ptr %1173, ptr %8, align 8, !dbg !2129, !tbaa !1408
  br label %1185, !dbg !2130

1174:                                             ; preds = %1146
  %1175 = xor i32 %1150, 1, !dbg !2090
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i32 %1175, metadata !1443, metadata !DIExpression()), !dbg !2091
  %1176 = shl i64 %1140, 1, !dbg !2093
  %1177 = zext i32 %1175 to i64, !dbg !2094
  %1178 = or i64 %1176, %1177, !dbg !2095
  store i64 %1178, ptr %682, align 8, !dbg !2095, !tbaa !1448
  %1179 = add nsw i32 %1139, -1, !dbg !2096
  store i32 %1179, ptr %14, align 8, !dbg !2096, !tbaa !1413
  %1180 = icmp eq i32 %1179, 32, !dbg !2097
  br i1 %1180, label %1181, label %1185, !dbg !2098

1181:                                             ; preds = %1174
  %1182 = trunc i64 %1178 to i32, !dbg !2099
  call void @llvm.dbg.value(metadata i32 %1182, metadata !1457, metadata !DIExpression()), !dbg !2100
  %1183 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1182) #8, !dbg !2102, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %1183, metadata !1457, metadata !DIExpression()), !dbg !2100
  store i32 %1183, ptr %1138, align 4, !dbg !2103, !tbaa !1468
  %1184 = getelementptr inbounds i8, ptr %1138, i64 4, !dbg !2104
  store ptr %1184, ptr %8, align 8, !dbg !2104, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !2105, !tbaa !1413
  br label %1185, !dbg !2106

1185:                                             ; preds = %1181, %1174, %1166, %1154, %1152, %1137
  call void @llvm.dbg.value(metadata i32 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  tail call fastcc void @cavlc_mb8x8_mvd(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0), !dbg !2131
  call void @llvm.dbg.value(metadata i32 1, metadata !1340, metadata !DIExpression()), !dbg !1368
  tail call fastcc void @cavlc_mb8x8_mvd(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1), !dbg !2131
  call void @llvm.dbg.value(metadata i32 2, metadata !1340, metadata !DIExpression()), !dbg !1368
  tail call fastcc void @cavlc_mb8x8_mvd(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 2), !dbg !2131
  call void @llvm.dbg.value(metadata i32 3, metadata !1340, metadata !DIExpression()), !dbg !1368
  tail call fastcc void @cavlc_mb8x8_mvd(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 3), !dbg !2131
  call void @llvm.dbg.value(metadata i32 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  tail call fastcc void @cavlc_mb8x8_mvd(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0), !dbg !2134
  call void @llvm.dbg.value(metadata i32 1, metadata !1340, metadata !DIExpression()), !dbg !1368
  tail call fastcc void @cavlc_mb8x8_mvd(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 1), !dbg !2134
  call void @llvm.dbg.value(metadata i32 2, metadata !1340, metadata !DIExpression()), !dbg !1368
  tail call fastcc void @cavlc_mb8x8_mvd(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 2), !dbg !2134
  call void @llvm.dbg.value(metadata i32 3, metadata !1340, metadata !DIExpression()), !dbg !1368
  tail call fastcc void @cavlc_mb8x8_mvd(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 3), !dbg !2134
  call void @llvm.dbg.value(metadata i32 4, metadata !1340, metadata !DIExpression()), !dbg !1368
  br label %1879, !dbg !1969

1186:                                             ; preds = %369
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7, !dbg !2137
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1362, metadata !DIExpression()), !dbg !2137
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !2138
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1363, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i32 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  %1187 = sext i32 %7 to i64
  call void @llvm.dbg.value(metadata i64 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  %1188 = getelementptr inbounds [19 x [2 x i8]], ptr @x264_mb_type_list0_table, i64 0, i64 %1187, i64 0, !dbg !2140
  %1189 = getelementptr inbounds [19 x [2 x i8]], ptr @x264_mb_type_list1_table, i64 0, i64 %1187, i64 0, !dbg !2144
  %1190 = getelementptr inbounds [2 x [2 x i32]], ptr %5, i64 0, i64 1, i64 0, !dbg !2145
  call void @llvm.dbg.value(metadata i64 1, metadata !1340, metadata !DIExpression()), !dbg !1368
  %1191 = load <2 x i8>, ptr %1188, align 2, !dbg !2140, !tbaa !1434
  %1192 = zext <2 x i8> %1191 to <2 x i32>, !dbg !2140
  store <2 x i32> %1192, ptr %5, align 16, !dbg !2146, !tbaa !1468
  %1193 = load <2 x i8>, ptr %1189, align 2, !dbg !2144, !tbaa !1434
  %1194 = zext <2 x i8> %1193 to <2 x i32>, !dbg !2144
  store <2 x i32> %1194, ptr %1190, align 8, !dbg !2147, !tbaa !1468
  call void @llvm.dbg.value(metadata i64 2, metadata !1340, metadata !DIExpression()), !dbg !1368
  %1195 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 47, !dbg !2148
  %1196 = load i32, ptr %1195, align 4, !dbg !2148, !tbaa !1810
  %1197 = add nsw i32 %1196, -14, !dbg !2149
  %1198 = sext i32 %1197 to i64, !dbg !2150
  %1199 = add nsw i32 %7, -8, !dbg !2151
  %1200 = sext i32 %1199 to i64, !dbg !2150
  %1201 = getelementptr inbounds [3 x [9 x i8]], ptr @mb_type_b_to_golomb, i64 0, i64 %1198, i64 %1200, !dbg !2150
  %1202 = load i8, ptr %1201, align 1, !dbg !2150, !tbaa !1434
  %1203 = zext i8 %1202 to i64, !dbg !2150
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %1202, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2152
  %1204 = add nuw nsw i64 %1203, 1, !dbg !2154
  %1205 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1204, !dbg !2155
  %1206 = load i8, ptr %1205, align 1, !dbg !2155, !tbaa !1434
  %1207 = zext i8 %1206 to i32, !dbg !2155
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 %1207, metadata !1491, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %1204, metadata !1492, metadata !DIExpression()), !dbg !2156
  %1208 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !2158
  %1209 = load i64, ptr %1208, align 8, !dbg !2158, !tbaa !1448
  %1210 = zext i8 %1206 to i64, !dbg !2159
  %1211 = shl i64 %1209, %1210, !dbg !2159
  %1212 = or i64 %1211, %1204, !dbg !2160
  store i64 %1212, ptr %1208, align 8, !dbg !2161, !tbaa !1448
  %1213 = sub nsw i32 %63, %1207, !dbg !2162
  store i32 %1213, ptr %14, align 8, !dbg !2162, !tbaa !1413
  %1214 = icmp slt i32 %1213, 33, !dbg !2163
  br i1 %1214, label %1215, label %1223, !dbg !2164

1215:                                             ; preds = %1186
  %1216 = zext i32 %1213 to i64, !dbg !2165
  %1217 = shl i64 %1212, %1216, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %1217, metadata !1507, metadata !DIExpression()), !dbg !2166
  %1218 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1217) #8, !dbg !2168, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1218, metadata !1507, metadata !DIExpression()), !dbg !2166
  %1219 = trunc i64 %1218 to i32, !dbg !2169
  store i32 %1219, ptr %62, align 4, !dbg !2170, !tbaa !1468
  %1220 = load i32, ptr %14, align 8, !dbg !2171, !tbaa !1413
  %1221 = add nsw i32 %1220, 32, !dbg !2171
  store i32 %1221, ptr %14, align 8, !dbg !2171, !tbaa !1413
  %1222 = getelementptr inbounds i8, ptr %62, i64 4, !dbg !2172
  store ptr %1222, ptr %8, align 8, !dbg !2172, !tbaa !1408
  br label %1223, !dbg !2173

1223:                                             ; preds = %1186, %1215
  %1224 = phi ptr [ %62, %1186 ], [ %1222, %1215 ]
  %1225 = phi i32 [ %1213, %1186 ], [ %1221, %1215 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !1358, metadata !DIExpression()), !dbg !2174
  %1226 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15
  %1227 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 56, i32 15, i64 1
  br label %1230, !dbg !2175

1228:                                             ; preds = %1458
  call void @llvm.dbg.value(metadata i32 0, metadata !1358, metadata !DIExpression()), !dbg !2174
  %1229 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  br label %1462, !dbg !2176

1230:                                             ; preds = %1223, %1458
  %1231 = phi ptr [ %1224, %1223 ], [ %1459, %1458 ]
  %1232 = phi i32 [ %1225, %1223 ], [ %1460, %1458 ]
  %1233 = phi i64 [ %1212, %1223 ], [ %1461, %1458 ]
  %1234 = phi i1 [ true, %1223 ], [ false, %1458 ]
  %1235 = phi i64 [ 0, %1223 ], [ 1, %1458 ]
  call void @llvm.dbg.value(metadata i64 %1235, metadata !1358, metadata !DIExpression()), !dbg !2174
  %1236 = select i1 %1234, ptr %1226, ptr %1227, !dbg !2178
  %1237 = load i32, ptr %1236, align 4, !dbg !2178, !tbaa !1468
  %1238 = add nsw i32 %1237, -1, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %1238, metadata !1364, metadata !DIExpression()), !dbg !2180
  %1239 = icmp eq i32 %1238, 0, !dbg !2181
  br i1 %1239, label %1458, label %1240, !dbg !2183

1240:                                             ; preds = %1230
  %1241 = load i32, ptr %1195, align 4, !dbg !2184, !tbaa !1810
  switch i32 %1241, label %1458 [
    i32 16, label %1242
    i32 14, label %1284
    i32 15, label %1371
  ], !dbg !2185

1242:                                             ; preds = %1240
  %1243 = getelementptr inbounds [2 x [2 x i32]], ptr %5, i64 0, i64 %1235, !dbg !2186
  %1244 = load i32, ptr %1243, align 8, !dbg !2186, !tbaa !1468
  %1245 = icmp eq i32 %1244, 0, !dbg !2186
  br i1 %1245, label %1458, label %1246, !dbg !2189

1246:                                             ; preds = %1242
  %1247 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %1235, i64 12, !dbg !2190
  %1248 = load i8, ptr %1247, align 1, !dbg !2190, !tbaa !1434
  %1249 = sext i8 %1248 to i32, !dbg !2190
  call void @llvm.dbg.value(metadata ptr %1, metadata !2024, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i32 %1238, metadata !2029, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i32 %1249, metadata !2030, metadata !DIExpression()), !dbg !2191
  %1250 = icmp eq i32 %1238, 1, !dbg !2193
  br i1 %1250, label %1251, label %1262, !dbg !2194

1251:                                             ; preds = %1246
  %1252 = xor i32 %1249, 1, !dbg !2195
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 %1252, metadata !1443, metadata !DIExpression()), !dbg !2196
  %1253 = shl i64 %1233, 1, !dbg !2198
  %1254 = zext i32 %1252 to i64, !dbg !2199
  %1255 = or i64 %1253, %1254, !dbg !2200
  store i64 %1255, ptr %1208, align 8, !dbg !2200, !tbaa !1448
  %1256 = add nsw i32 %1232, -1, !dbg !2201
  store i32 %1256, ptr %14, align 8, !dbg !2201, !tbaa !1413
  %1257 = icmp eq i32 %1256, 32, !dbg !2202
  br i1 %1257, label %1258, label %1458, !dbg !2203

1258:                                             ; preds = %1251
  %1259 = trunc i64 %1255 to i32, !dbg !2204
  call void @llvm.dbg.value(metadata i32 %1259, metadata !1457, metadata !DIExpression()), !dbg !2205
  %1260 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1259) #8, !dbg !2207, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %1260, metadata !1457, metadata !DIExpression()), !dbg !2205
  store i32 %1260, ptr %1231, align 4, !dbg !2208, !tbaa !1468
  %1261 = getelementptr inbounds i8, ptr %1231, i64 4, !dbg !2209
  store ptr %1261, ptr %8, align 8, !dbg !2209, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !2210, !tbaa !1413
  br label %1458, !dbg !2211

1262:                                             ; preds = %1246
  %1263 = icmp sgt i32 %1237, 2, !dbg !2212
  br i1 %1263, label %1264, label %1458, !dbg !2213

1264:                                             ; preds = %1262
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i32 %1249, metadata !1480, metadata !DIExpression()), !dbg !2214
  %1265 = add nsw i32 %1249, 1, !dbg !2216
  %1266 = sext i32 %1265 to i64, !dbg !2217
  %1267 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1266, !dbg !2217
  %1268 = load i8, ptr %1267, align 1, !dbg !2217, !tbaa !1434
  %1269 = zext i8 %1268 to i32, !dbg !2217
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 %1269, metadata !1491, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 %1265, metadata !1492, metadata !DIExpression()), !dbg !2218
  %1270 = zext i8 %1268 to i64, !dbg !2220
  %1271 = shl i64 %1233, %1270, !dbg !2220
  %1272 = zext i32 %1265 to i64, !dbg !2221
  %1273 = or i64 %1271, %1272, !dbg !2222
  store i64 %1273, ptr %1208, align 8, !dbg !2223, !tbaa !1448
  %1274 = sub nsw i32 %1232, %1269, !dbg !2224
  store i32 %1274, ptr %14, align 8, !dbg !2224, !tbaa !1413
  %1275 = icmp slt i32 %1274, 33, !dbg !2225
  br i1 %1275, label %1276, label %1458, !dbg !2226

1276:                                             ; preds = %1264
  %1277 = zext i32 %1274 to i64, !dbg !2227
  %1278 = shl i64 %1273, %1277, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %1278, metadata !1507, metadata !DIExpression()), !dbg !2228
  %1279 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1278) #8, !dbg !2230, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1279, metadata !1507, metadata !DIExpression()), !dbg !2228
  %1280 = trunc i64 %1279 to i32, !dbg !2231
  store i32 %1280, ptr %1231, align 4, !dbg !2232, !tbaa !1468
  %1281 = load i32, ptr %14, align 8, !dbg !2233, !tbaa !1413
  %1282 = add nsw i32 %1281, 32, !dbg !2233
  store i32 %1282, ptr %14, align 8, !dbg !2233, !tbaa !1413
  %1283 = getelementptr inbounds i8, ptr %1231, i64 4, !dbg !2234
  store ptr %1283, ptr %8, align 8, !dbg !2234, !tbaa !1408
  br label %1458, !dbg !2235

1284:                                             ; preds = %1240
  %1285 = getelementptr inbounds [2 x [2 x i32]], ptr %5, i64 0, i64 %1235, !dbg !2236
  %1286 = load i32, ptr %1285, align 8, !dbg !2236, !tbaa !1468
  %1287 = icmp eq i32 %1286, 0, !dbg !2236
  br i1 %1287, label %1326, label %1288, !dbg !2238

1288:                                             ; preds = %1284
  %1289 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %1235, i64 12, !dbg !2239
  %1290 = load i8, ptr %1289, align 1, !dbg !2239, !tbaa !1434
  %1291 = sext i8 %1290 to i32, !dbg !2239
  call void @llvm.dbg.value(metadata ptr %1, metadata !2024, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %1238, metadata !2029, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %1291, metadata !2030, metadata !DIExpression()), !dbg !2240
  %1292 = icmp eq i32 %1238, 1, !dbg !2242
  br i1 %1292, label %1293, label %1304, !dbg !2243

1293:                                             ; preds = %1288
  %1294 = xor i32 %1291, 1, !dbg !2244
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %1294, metadata !1443, metadata !DIExpression()), !dbg !2245
  %1295 = shl i64 %1233, 1, !dbg !2247
  %1296 = zext i32 %1294 to i64, !dbg !2248
  %1297 = or i64 %1295, %1296, !dbg !2249
  store i64 %1297, ptr %1208, align 8, !dbg !2249, !tbaa !1448
  %1298 = add nsw i32 %1232, -1, !dbg !2250
  store i32 %1298, ptr %14, align 8, !dbg !2250, !tbaa !1413
  %1299 = icmp eq i32 %1298, 32, !dbg !2251
  br i1 %1299, label %1300, label %1326, !dbg !2252

1300:                                             ; preds = %1293
  %1301 = trunc i64 %1297 to i32, !dbg !2253
  call void @llvm.dbg.value(metadata i32 %1301, metadata !1457, metadata !DIExpression()), !dbg !2254
  %1302 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1301) #8, !dbg !2256, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %1302, metadata !1457, metadata !DIExpression()), !dbg !2254
  store i32 %1302, ptr %1231, align 4, !dbg !2257, !tbaa !1468
  %1303 = getelementptr inbounds i8, ptr %1231, i64 4, !dbg !2258
  store ptr %1303, ptr %8, align 8, !dbg !2258, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !2259, !tbaa !1413
  br label %1326, !dbg !2260

1304:                                             ; preds = %1288
  %1305 = icmp sgt i32 %1237, 2, !dbg !2261
  br i1 %1305, label %1306, label %1326, !dbg !2262

1306:                                             ; preds = %1304
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i32 %1291, metadata !1480, metadata !DIExpression()), !dbg !2263
  %1307 = add nsw i32 %1291, 1, !dbg !2265
  %1308 = sext i32 %1307 to i64, !dbg !2266
  %1309 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1308, !dbg !2266
  %1310 = load i8, ptr %1309, align 1, !dbg !2266, !tbaa !1434
  %1311 = zext i8 %1310 to i32, !dbg !2266
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %1311, metadata !1491, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %1307, metadata !1492, metadata !DIExpression()), !dbg !2267
  %1312 = zext i8 %1310 to i64, !dbg !2269
  %1313 = shl i64 %1233, %1312, !dbg !2269
  %1314 = zext i32 %1307 to i64, !dbg !2270
  %1315 = or i64 %1313, %1314, !dbg !2271
  store i64 %1315, ptr %1208, align 8, !dbg !2272, !tbaa !1448
  %1316 = sub nsw i32 %1232, %1311, !dbg !2273
  store i32 %1316, ptr %14, align 8, !dbg !2273, !tbaa !1413
  %1317 = icmp slt i32 %1316, 33, !dbg !2274
  br i1 %1317, label %1318, label %1326, !dbg !2275

1318:                                             ; preds = %1306
  %1319 = zext i32 %1316 to i64, !dbg !2276
  %1320 = shl i64 %1315, %1319, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %1320, metadata !1507, metadata !DIExpression()), !dbg !2277
  %1321 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1320) #8, !dbg !2279, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1321, metadata !1507, metadata !DIExpression()), !dbg !2277
  %1322 = trunc i64 %1321 to i32, !dbg !2280
  store i32 %1322, ptr %1231, align 4, !dbg !2281, !tbaa !1468
  %1323 = load i32, ptr %14, align 8, !dbg !2282, !tbaa !1413
  %1324 = add nsw i32 %1323, 32, !dbg !2282
  store i32 %1324, ptr %14, align 8, !dbg !2282, !tbaa !1413
  %1325 = getelementptr inbounds i8, ptr %1231, i64 4, !dbg !2283
  store ptr %1325, ptr %8, align 8, !dbg !2283, !tbaa !1408
  br label %1326, !dbg !2284

1326:                                             ; preds = %1318, %1306, %1304, %1300, %1293, %1284
  %1327 = phi ptr [ %1325, %1318 ], [ %1231, %1306 ], [ %1231, %1304 ], [ %1303, %1300 ], [ %1231, %1293 ], [ %1231, %1284 ]
  %1328 = phi i32 [ %1324, %1318 ], [ %1316, %1306 ], [ %1232, %1304 ], [ 64, %1300 ], [ %1298, %1293 ], [ %1232, %1284 ]
  %1329 = phi i64 [ %1315, %1318 ], [ %1315, %1306 ], [ %1233, %1304 ], [ %1297, %1300 ], [ %1297, %1293 ], [ %1233, %1284 ]
  %1330 = getelementptr inbounds [2 x [2 x i32]], ptr %5, i64 0, i64 %1235, i64 1, !dbg !2285
  %1331 = load i32, ptr %1330, align 4, !dbg !2285, !tbaa !1468
  %1332 = icmp eq i32 %1331, 0, !dbg !2285
  br i1 %1332, label %1458, label %1333, !dbg !2287

1333:                                             ; preds = %1326
  %1334 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %1235, i64 28, !dbg !2288
  %1335 = load i8, ptr %1334, align 1, !dbg !2288, !tbaa !1434
  %1336 = sext i8 %1335 to i32, !dbg !2288
  call void @llvm.dbg.value(metadata ptr %1, metadata !2024, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 %1238, metadata !2029, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 %1336, metadata !2030, metadata !DIExpression()), !dbg !2289
  %1337 = icmp eq i32 %1238, 1, !dbg !2291
  br i1 %1337, label %1338, label %1349, !dbg !2292

1338:                                             ; preds = %1333
  %1339 = xor i32 %1336, 1, !dbg !2293
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i32 %1339, metadata !1443, metadata !DIExpression()), !dbg !2294
  %1340 = shl i64 %1329, 1, !dbg !2296
  %1341 = zext i32 %1339 to i64, !dbg !2297
  %1342 = or i64 %1340, %1341, !dbg !2298
  store i64 %1342, ptr %1208, align 8, !dbg !2298, !tbaa !1448
  %1343 = add nsw i32 %1328, -1, !dbg !2299
  store i32 %1343, ptr %14, align 8, !dbg !2299, !tbaa !1413
  %1344 = icmp eq i32 %1343, 32, !dbg !2300
  br i1 %1344, label %1345, label %1458, !dbg !2301

1345:                                             ; preds = %1338
  %1346 = trunc i64 %1342 to i32, !dbg !2302
  call void @llvm.dbg.value(metadata i32 %1346, metadata !1457, metadata !DIExpression()), !dbg !2303
  %1347 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1346) #8, !dbg !2305, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %1347, metadata !1457, metadata !DIExpression()), !dbg !2303
  store i32 %1347, ptr %1327, align 4, !dbg !2306, !tbaa !1468
  %1348 = getelementptr inbounds i8, ptr %1327, i64 4, !dbg !2307
  store ptr %1348, ptr %8, align 8, !dbg !2307, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !2308, !tbaa !1413
  br label %1458, !dbg !2309

1349:                                             ; preds = %1333
  %1350 = icmp sgt i32 %1237, 2, !dbg !2310
  br i1 %1350, label %1351, label %1458, !dbg !2311

1351:                                             ; preds = %1349
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 %1336, metadata !1480, metadata !DIExpression()), !dbg !2312
  %1352 = add nsw i32 %1336, 1, !dbg !2314
  %1353 = sext i32 %1352 to i64, !dbg !2315
  %1354 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1353, !dbg !2315
  %1355 = load i8, ptr %1354, align 1, !dbg !2315, !tbaa !1434
  %1356 = zext i8 %1355 to i32, !dbg !2315
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %1356, metadata !1491, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %1352, metadata !1492, metadata !DIExpression()), !dbg !2316
  %1357 = zext i8 %1355 to i64, !dbg !2318
  %1358 = shl i64 %1329, %1357, !dbg !2318
  %1359 = zext i32 %1352 to i64, !dbg !2319
  %1360 = or i64 %1358, %1359, !dbg !2320
  store i64 %1360, ptr %1208, align 8, !dbg !2321, !tbaa !1448
  %1361 = sub nsw i32 %1328, %1356, !dbg !2322
  store i32 %1361, ptr %14, align 8, !dbg !2322, !tbaa !1413
  %1362 = icmp slt i32 %1361, 33, !dbg !2323
  br i1 %1362, label %1363, label %1458, !dbg !2324

1363:                                             ; preds = %1351
  %1364 = zext i32 %1361 to i64, !dbg !2325
  %1365 = shl i64 %1360, %1364, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %1365, metadata !1507, metadata !DIExpression()), !dbg !2326
  %1366 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1365) #8, !dbg !2328, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1366, metadata !1507, metadata !DIExpression()), !dbg !2326
  %1367 = trunc i64 %1366 to i32, !dbg !2329
  store i32 %1367, ptr %1327, align 4, !dbg !2330, !tbaa !1468
  %1368 = load i32, ptr %14, align 8, !dbg !2331, !tbaa !1413
  %1369 = add nsw i32 %1368, 32, !dbg !2331
  store i32 %1369, ptr %14, align 8, !dbg !2331, !tbaa !1413
  %1370 = getelementptr inbounds i8, ptr %1327, i64 4, !dbg !2332
  store ptr %1370, ptr %8, align 8, !dbg !2332, !tbaa !1408
  br label %1458, !dbg !2333

1371:                                             ; preds = %1240
  %1372 = getelementptr inbounds [2 x [2 x i32]], ptr %5, i64 0, i64 %1235, !dbg !2334
  %1373 = load i32, ptr %1372, align 8, !dbg !2334, !tbaa !1468
  %1374 = icmp eq i32 %1373, 0, !dbg !2334
  br i1 %1374, label %1413, label %1375, !dbg !2336

1375:                                             ; preds = %1371
  %1376 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %1235, i64 12, !dbg !2337
  %1377 = load i8, ptr %1376, align 1, !dbg !2337, !tbaa !1434
  %1378 = sext i8 %1377 to i32, !dbg !2337
  call void @llvm.dbg.value(metadata ptr %1, metadata !2024, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 %1238, metadata !2029, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 %1378, metadata !2030, metadata !DIExpression()), !dbg !2338
  %1379 = icmp eq i32 %1238, 1, !dbg !2340
  br i1 %1379, label %1380, label %1391, !dbg !2341

1380:                                             ; preds = %1375
  %1381 = xor i32 %1378, 1, !dbg !2342
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i32 %1381, metadata !1443, metadata !DIExpression()), !dbg !2343
  %1382 = shl i64 %1233, 1, !dbg !2345
  %1383 = zext i32 %1381 to i64, !dbg !2346
  %1384 = or i64 %1382, %1383, !dbg !2347
  store i64 %1384, ptr %1208, align 8, !dbg !2347, !tbaa !1448
  %1385 = add nsw i32 %1232, -1, !dbg !2348
  store i32 %1385, ptr %14, align 8, !dbg !2348, !tbaa !1413
  %1386 = icmp eq i32 %1385, 32, !dbg !2349
  br i1 %1386, label %1387, label %1413, !dbg !2350

1387:                                             ; preds = %1380
  %1388 = trunc i64 %1384 to i32, !dbg !2351
  call void @llvm.dbg.value(metadata i32 %1388, metadata !1457, metadata !DIExpression()), !dbg !2352
  %1389 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1388) #8, !dbg !2354, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %1389, metadata !1457, metadata !DIExpression()), !dbg !2352
  store i32 %1389, ptr %1231, align 4, !dbg !2355, !tbaa !1468
  %1390 = getelementptr inbounds i8, ptr %1231, i64 4, !dbg !2356
  store ptr %1390, ptr %8, align 8, !dbg !2356, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !2357, !tbaa !1413
  br label %1413, !dbg !2358

1391:                                             ; preds = %1375
  %1392 = icmp sgt i32 %1237, 2, !dbg !2359
  br i1 %1392, label %1393, label %1413, !dbg !2360

1393:                                             ; preds = %1391
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i32 %1378, metadata !1480, metadata !DIExpression()), !dbg !2361
  %1394 = add nsw i32 %1378, 1, !dbg !2363
  %1395 = sext i32 %1394 to i64, !dbg !2364
  %1396 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1395, !dbg !2364
  %1397 = load i8, ptr %1396, align 1, !dbg !2364, !tbaa !1434
  %1398 = zext i8 %1397 to i32, !dbg !2364
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 %1398, metadata !1491, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 %1394, metadata !1492, metadata !DIExpression()), !dbg !2365
  %1399 = zext i8 %1397 to i64, !dbg !2367
  %1400 = shl i64 %1233, %1399, !dbg !2367
  %1401 = zext i32 %1394 to i64, !dbg !2368
  %1402 = or i64 %1400, %1401, !dbg !2369
  store i64 %1402, ptr %1208, align 8, !dbg !2370, !tbaa !1448
  %1403 = sub nsw i32 %1232, %1398, !dbg !2371
  store i32 %1403, ptr %14, align 8, !dbg !2371, !tbaa !1413
  %1404 = icmp slt i32 %1403, 33, !dbg !2372
  br i1 %1404, label %1405, label %1413, !dbg !2373

1405:                                             ; preds = %1393
  %1406 = zext i32 %1403 to i64, !dbg !2374
  %1407 = shl i64 %1402, %1406, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %1407, metadata !1507, metadata !DIExpression()), !dbg !2375
  %1408 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1407) #8, !dbg !2377, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1408, metadata !1507, metadata !DIExpression()), !dbg !2375
  %1409 = trunc i64 %1408 to i32, !dbg !2378
  store i32 %1409, ptr %1231, align 4, !dbg !2379, !tbaa !1468
  %1410 = load i32, ptr %14, align 8, !dbg !2380, !tbaa !1413
  %1411 = add nsw i32 %1410, 32, !dbg !2380
  store i32 %1411, ptr %14, align 8, !dbg !2380, !tbaa !1413
  %1412 = getelementptr inbounds i8, ptr %1231, i64 4, !dbg !2381
  store ptr %1412, ptr %8, align 8, !dbg !2381, !tbaa !1408
  br label %1413, !dbg !2382

1413:                                             ; preds = %1405, %1393, %1391, %1387, %1380, %1371
  %1414 = phi ptr [ %1412, %1405 ], [ %1231, %1393 ], [ %1231, %1391 ], [ %1390, %1387 ], [ %1231, %1380 ], [ %1231, %1371 ]
  %1415 = phi i32 [ %1411, %1405 ], [ %1403, %1393 ], [ %1232, %1391 ], [ 64, %1387 ], [ %1385, %1380 ], [ %1232, %1371 ]
  %1416 = phi i64 [ %1402, %1405 ], [ %1402, %1393 ], [ %1233, %1391 ], [ %1384, %1387 ], [ %1384, %1380 ], [ %1233, %1371 ]
  %1417 = getelementptr inbounds [2 x [2 x i32]], ptr %5, i64 0, i64 %1235, i64 1, !dbg !2383
  %1418 = load i32, ptr %1417, align 4, !dbg !2383, !tbaa !1468
  %1419 = icmp eq i32 %1418, 0, !dbg !2383
  br i1 %1419, label %1458, label %1420, !dbg !2385

1420:                                             ; preds = %1413
  %1421 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 2, i64 %1235, i64 14, !dbg !2386
  %1422 = load i8, ptr %1421, align 1, !dbg !2386, !tbaa !1434
  %1423 = sext i8 %1422 to i32, !dbg !2386
  call void @llvm.dbg.value(metadata ptr %1, metadata !2024, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 %1238, metadata !2029, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 %1423, metadata !2030, metadata !DIExpression()), !dbg !2387
  %1424 = icmp eq i32 %1238, 1, !dbg !2389
  br i1 %1424, label %1425, label %1436, !dbg !2390

1425:                                             ; preds = %1420
  %1426 = xor i32 %1423, 1, !dbg !2391
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 %1426, metadata !1443, metadata !DIExpression()), !dbg !2392
  %1427 = shl i64 %1416, 1, !dbg !2394
  %1428 = zext i32 %1426 to i64, !dbg !2395
  %1429 = or i64 %1427, %1428, !dbg !2396
  store i64 %1429, ptr %1208, align 8, !dbg !2396, !tbaa !1448
  %1430 = add nsw i32 %1415, -1, !dbg !2397
  store i32 %1430, ptr %14, align 8, !dbg !2397, !tbaa !1413
  %1431 = icmp eq i32 %1430, 32, !dbg !2398
  br i1 %1431, label %1432, label %1458, !dbg !2399

1432:                                             ; preds = %1425
  %1433 = trunc i64 %1429 to i32, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %1433, metadata !1457, metadata !DIExpression()), !dbg !2401
  %1434 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1433) #8, !dbg !2403, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %1434, metadata !1457, metadata !DIExpression()), !dbg !2401
  store i32 %1434, ptr %1414, align 4, !dbg !2404, !tbaa !1468
  %1435 = getelementptr inbounds i8, ptr %1414, i64 4, !dbg !2405
  store ptr %1435, ptr %8, align 8, !dbg !2405, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !2406, !tbaa !1413
  br label %1458, !dbg !2407

1436:                                             ; preds = %1420
  %1437 = icmp sgt i32 %1237, 2, !dbg !2408
  br i1 %1437, label %1438, label %1458, !dbg !2409

1438:                                             ; preds = %1436
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %1423, metadata !1480, metadata !DIExpression()), !dbg !2410
  %1439 = add nsw i32 %1423, 1, !dbg !2412
  %1440 = sext i32 %1439 to i64, !dbg !2413
  %1441 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1440, !dbg !2413
  %1442 = load i8, ptr %1441, align 1, !dbg !2413, !tbaa !1434
  %1443 = zext i8 %1442 to i32, !dbg !2413
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i32 %1443, metadata !1491, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i32 %1439, metadata !1492, metadata !DIExpression()), !dbg !2414
  %1444 = zext i8 %1442 to i64, !dbg !2416
  %1445 = shl i64 %1416, %1444, !dbg !2416
  %1446 = zext i32 %1439 to i64, !dbg !2417
  %1447 = or i64 %1445, %1446, !dbg !2418
  store i64 %1447, ptr %1208, align 8, !dbg !2419, !tbaa !1448
  %1448 = sub nsw i32 %1415, %1443, !dbg !2420
  store i32 %1448, ptr %14, align 8, !dbg !2420, !tbaa !1413
  %1449 = icmp slt i32 %1448, 33, !dbg !2421
  br i1 %1449, label %1450, label %1458, !dbg !2422

1450:                                             ; preds = %1438
  %1451 = zext i32 %1448 to i64, !dbg !2423
  %1452 = shl i64 %1447, %1451, !dbg !2423
  call void @llvm.dbg.value(metadata i64 %1452, metadata !1507, metadata !DIExpression()), !dbg !2424
  %1453 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1452) #8, !dbg !2426, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1453, metadata !1507, metadata !DIExpression()), !dbg !2424
  %1454 = trunc i64 %1453 to i32, !dbg !2427
  store i32 %1454, ptr %1414, align 4, !dbg !2428, !tbaa !1468
  %1455 = load i32, ptr %14, align 8, !dbg !2429, !tbaa !1413
  %1456 = add nsw i32 %1455, 32, !dbg !2429
  store i32 %1456, ptr %14, align 8, !dbg !2429, !tbaa !1413
  %1457 = getelementptr inbounds i8, ptr %1414, i64 4, !dbg !2430
  store ptr %1457, ptr %8, align 8, !dbg !2430, !tbaa !1408
  br label %1458, !dbg !2431

1458:                                             ; preds = %1450, %1438, %1436, %1432, %1425, %1363, %1351, %1349, %1345, %1338, %1276, %1264, %1262, %1258, %1251, %1240, %1242, %1326, %1413, %1230
  %1459 = phi ptr [ %1457, %1450 ], [ %1414, %1438 ], [ %1414, %1436 ], [ %1435, %1432 ], [ %1414, %1425 ], [ %1370, %1363 ], [ %1327, %1351 ], [ %1327, %1349 ], [ %1348, %1345 ], [ %1327, %1338 ], [ %1283, %1276 ], [ %1231, %1264 ], [ %1231, %1262 ], [ %1261, %1258 ], [ %1231, %1251 ], [ %1231, %1240 ], [ %1231, %1242 ], [ %1327, %1326 ], [ %1414, %1413 ], [ %1231, %1230 ]
  %1460 = phi i32 [ %1456, %1450 ], [ %1448, %1438 ], [ %1415, %1436 ], [ 64, %1432 ], [ %1430, %1425 ], [ %1369, %1363 ], [ %1361, %1351 ], [ %1328, %1349 ], [ 64, %1345 ], [ %1343, %1338 ], [ %1282, %1276 ], [ %1274, %1264 ], [ %1232, %1262 ], [ 64, %1258 ], [ %1256, %1251 ], [ %1232, %1240 ], [ %1232, %1242 ], [ %1328, %1326 ], [ %1415, %1413 ], [ %1232, %1230 ]
  %1461 = phi i64 [ %1447, %1450 ], [ %1447, %1438 ], [ %1416, %1436 ], [ %1429, %1432 ], [ %1429, %1425 ], [ %1360, %1363 ], [ %1360, %1351 ], [ %1329, %1349 ], [ %1342, %1345 ], [ %1342, %1338 ], [ %1273, %1276 ], [ %1273, %1264 ], [ %1233, %1262 ], [ %1255, %1258 ], [ %1255, %1251 ], [ %1233, %1240 ], [ %1233, %1242 ], [ %1329, %1326 ], [ %1416, %1413 ], [ %1233, %1230 ]
  call void @llvm.dbg.value(metadata i64 %1235, metadata !1358, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2174
  br i1 %1234, label %1230, label %1228, !dbg !2175, !llvm.loop !2432

1462:                                             ; preds = %1228, %1862
  %1463 = phi i1 [ true, %1228 ], [ false, %1862 ]
  %1464 = phi i64 [ 0, %1228 ], [ 1, %1862 ]
  call void @llvm.dbg.value(metadata i64 %1464, metadata !1358, metadata !DIExpression()), !dbg !2174
  %1465 = load i32, ptr %1195, align 4, !dbg !2434, !tbaa !1810
  switch i32 %1465, label %1862 [
    i32 16, label %1466
    i32 14, label %1543
    i32 15, label %1700
  ], !dbg !2437

1466:                                             ; preds = %1462
  %1467 = getelementptr inbounds [2 x [2 x i32]], ptr %5, i64 0, i64 %1464, !dbg !2438
  %1468 = load i32, ptr %1467, align 8, !dbg !2438, !tbaa !1468
  %1469 = icmp eq i32 %1468, 0, !dbg !2438
  br i1 %1469, label %1862, label %1470, !dbg !2441

1470:                                             ; preds = %1466
  %1471 = trunc i64 %1464 to i32, !dbg !2442
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %1471, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %4) #7, !dbg !2442
  %1472 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %1464, i64 12, !dbg !2444
  %1473 = load i16, ptr %1472, align 4, !dbg !2444, !tbaa !1824
  %1474 = sext i16 %1473 to i32, !dbg !2444
  %1475 = load i16, ptr %4, align 4, !dbg !2445, !tbaa !1824
  %1476 = sext i16 %1475 to i32, !dbg !2445
  %1477 = sub nsw i32 %1474, %1476, !dbg !2446
  call void @llvm.dbg.value(metadata ptr %1, metadata !2447, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 %1477, metadata !2450, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !2453
  %1478 = icmp slt i32 %1477, 1, !dbg !2455
  %1479 = mul nsw i32 %1477, -2, !dbg !2456
  %1480 = or i32 %1479, 1, !dbg !2456
  %1481 = shl nsw i32 %1477, 1, !dbg !2456
  %1482 = select i1 %1478, i32 %1480, i32 %1481, !dbg !2456
  call void @llvm.dbg.value(metadata i32 %1482, metadata !2450, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 %1482, metadata !2452, metadata !DIExpression()), !dbg !2453
  %1483 = icmp sgt i32 %1482, 255, !dbg !2457
  %1484 = lshr i32 %1482, 8, !dbg !2459
  %1485 = select i1 %1483, i32 16, i32 0, !dbg !2459
  %1486 = select i1 %1483, i32 %1484, i32 %1482, !dbg !2459
  call void @llvm.dbg.value(metadata i32 %1486, metadata !2452, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 %1485, metadata !2451, metadata !DIExpression()), !dbg !2453
  %1487 = sext i32 %1486 to i64, !dbg !2460
  %1488 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1487, !dbg !2460
  %1489 = load i8, ptr %1488, align 1, !dbg !2460, !tbaa !1434
  %1490 = zext i8 %1489 to i32, !dbg !2460
  %1491 = add nuw nsw i32 %1485, %1490, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %1491, metadata !2451, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %1491, metadata !1491, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %1482, metadata !1492, metadata !DIExpression()), !dbg !2462
  %1492 = load i64, ptr %1208, align 8, !dbg !2464, !tbaa !1448
  %1493 = zext i32 %1491 to i64, !dbg !2465
  %1494 = shl i64 %1492, %1493, !dbg !2465
  %1495 = zext i32 %1482 to i64, !dbg !2466
  %1496 = or i64 %1494, %1495, !dbg !2467
  %1497 = load i32, ptr %14, align 8, !dbg !2468, !tbaa !1413
  %1498 = sub nsw i32 %1497, %1491, !dbg !2468
  store i32 %1498, ptr %14, align 8, !dbg !2468, !tbaa !1413
  %1499 = icmp slt i32 %1498, 33, !dbg !2469
  br i1 %1499, label %1500, label %1509, !dbg !2470

1500:                                             ; preds = %1470
  %1501 = zext i32 %1498 to i64, !dbg !2471
  %1502 = shl i64 %1496, %1501, !dbg !2471
  call void @llvm.dbg.value(metadata i64 %1502, metadata !1507, metadata !DIExpression()), !dbg !2472
  %1503 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1502) #8, !dbg !2474, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1503, metadata !1507, metadata !DIExpression()), !dbg !2472
  %1504 = trunc i64 %1503 to i32, !dbg !2475
  %1505 = load ptr, ptr %8, align 8, !dbg !2476, !tbaa !1408
  store i32 %1504, ptr %1505, align 4, !dbg !2477, !tbaa !1468
  %1506 = load i32, ptr %14, align 8, !dbg !2478, !tbaa !1413
  %1507 = add nsw i32 %1506, 32, !dbg !2478
  %1508 = getelementptr inbounds i8, ptr %1505, i64 4, !dbg !2479
  store ptr %1508, ptr %8, align 8, !dbg !2479, !tbaa !1408
  br label %1509, !dbg !2480

1509:                                             ; preds = %1470, %1500
  %1510 = phi i32 [ %1498, %1470 ], [ %1507, %1500 ], !dbg !2481
  %1511 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %1464, i64 12, i64 1, !dbg !2484
  %1512 = load i16, ptr %1511, align 2, !dbg !2484, !tbaa !1824
  %1513 = sext i16 %1512 to i32, !dbg !2484
  %1514 = load i16, ptr %1229, align 2, !dbg !2485, !tbaa !1824
  %1515 = sext i16 %1514 to i32, !dbg !2485
  %1516 = sub nsw i32 %1513, %1515, !dbg !2486
  call void @llvm.dbg.value(metadata ptr %1, metadata !2447, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 %1516, metadata !2450, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !2487
  %1517 = icmp slt i32 %1516, 1, !dbg !2488
  %1518 = mul nsw i32 %1516, -2, !dbg !2489
  %1519 = or i32 %1518, 1, !dbg !2489
  %1520 = shl nsw i32 %1516, 1, !dbg !2489
  %1521 = select i1 %1517, i32 %1519, i32 %1520, !dbg !2489
  call void @llvm.dbg.value(metadata i32 %1521, metadata !2450, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 %1521, metadata !2452, metadata !DIExpression()), !dbg !2487
  %1522 = icmp sgt i32 %1521, 255, !dbg !2490
  %1523 = lshr i32 %1521, 8, !dbg !2491
  %1524 = select i1 %1522, i32 16, i32 0, !dbg !2491
  %1525 = select i1 %1522, i32 %1523, i32 %1521, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %1525, metadata !2452, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 %1524, metadata !2451, metadata !DIExpression()), !dbg !2487
  %1526 = sext i32 %1525 to i64, !dbg !2492
  %1527 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1526, !dbg !2492
  %1528 = load i8, ptr %1527, align 1, !dbg !2492, !tbaa !1434
  %1529 = zext i8 %1528 to i32, !dbg !2492
  %1530 = add nuw nsw i32 %1524, %1529, !dbg !2493
  call void @llvm.dbg.value(metadata i32 %1530, metadata !2451, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i32 %1530, metadata !1491, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i32 %1521, metadata !1492, metadata !DIExpression()), !dbg !2494
  %1531 = zext i32 %1530 to i64, !dbg !2495
  %1532 = shl i64 %1496, %1531, !dbg !2495
  %1533 = zext i32 %1521 to i64, !dbg !2496
  %1534 = or i64 %1532, %1533, !dbg !2497
  store i64 %1534, ptr %1208, align 8, !dbg !2498, !tbaa !1448
  %1535 = sub nsw i32 %1510, %1530, !dbg !2481
  store i32 %1535, ptr %14, align 8, !dbg !2481, !tbaa !1413
  %1536 = icmp slt i32 %1535, 33, !dbg !2499
  br i1 %1536, label %1537, label %1862, !dbg !2500

1537:                                             ; preds = %1509
  %1538 = zext i32 %1535 to i64, !dbg !2501
  %1539 = shl i64 %1534, %1538, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %1539, metadata !1507, metadata !DIExpression()), !dbg !2502
  %1540 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1539) #8, !dbg !2504, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1540, metadata !1507, metadata !DIExpression()), !dbg !2502
  %1541 = trunc i64 %1540 to i32, !dbg !2505
  %1542 = load ptr, ptr %8, align 8, !dbg !2506, !tbaa !1408
  store i32 %1541, ptr %1542, align 4, !dbg !2507, !tbaa !1468
  br label %1857, !dbg !2508

1543:                                             ; preds = %1462
  %1544 = getelementptr inbounds [2 x [2 x i32]], ptr %5, i64 0, i64 %1464, !dbg !2509
  %1545 = load i32, ptr %1544, align 8, !dbg !2509, !tbaa !1468
  %1546 = icmp eq i32 %1545, 0, !dbg !2509
  br i1 %1546, label %1623, label %1547, !dbg !2511

1547:                                             ; preds = %1543
  %1548 = trunc i64 %1464 to i32, !dbg !2512
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %1548, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %4) #7, !dbg !2512
  %1549 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %1464, i64 12, !dbg !2514
  %1550 = load i16, ptr %1549, align 4, !dbg !2514, !tbaa !1824
  %1551 = sext i16 %1550 to i32, !dbg !2514
  %1552 = load i16, ptr %4, align 4, !dbg !2515, !tbaa !1824
  %1553 = sext i16 %1552 to i32, !dbg !2515
  %1554 = sub nsw i32 %1551, %1553, !dbg !2516
  call void @llvm.dbg.value(metadata ptr %1, metadata !2447, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %1554, metadata !2450, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !2517
  %1555 = icmp slt i32 %1554, 1, !dbg !2519
  %1556 = mul nsw i32 %1554, -2, !dbg !2520
  %1557 = or i32 %1556, 1, !dbg !2520
  %1558 = shl nsw i32 %1554, 1, !dbg !2520
  %1559 = select i1 %1555, i32 %1557, i32 %1558, !dbg !2520
  call void @llvm.dbg.value(metadata i32 %1559, metadata !2450, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %1559, metadata !2452, metadata !DIExpression()), !dbg !2517
  %1560 = icmp sgt i32 %1559, 255, !dbg !2521
  %1561 = lshr i32 %1559, 8, !dbg !2522
  %1562 = select i1 %1560, i32 16, i32 0, !dbg !2522
  %1563 = select i1 %1560, i32 %1561, i32 %1559, !dbg !2522
  call void @llvm.dbg.value(metadata i32 %1563, metadata !2452, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %1562, metadata !2451, metadata !DIExpression()), !dbg !2517
  %1564 = sext i32 %1563 to i64, !dbg !2523
  %1565 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1564, !dbg !2523
  %1566 = load i8, ptr %1565, align 1, !dbg !2523, !tbaa !1434
  %1567 = zext i8 %1566 to i32, !dbg !2523
  %1568 = add nuw nsw i32 %1562, %1567, !dbg !2524
  call void @llvm.dbg.value(metadata i32 %1568, metadata !2451, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %1568, metadata !1491, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %1559, metadata !1492, metadata !DIExpression()), !dbg !2525
  %1569 = load i64, ptr %1208, align 8, !dbg !2527, !tbaa !1448
  %1570 = zext i32 %1568 to i64, !dbg !2528
  %1571 = shl i64 %1569, %1570, !dbg !2528
  %1572 = zext i32 %1559 to i64, !dbg !2529
  %1573 = or i64 %1571, %1572, !dbg !2530
  %1574 = load i32, ptr %14, align 8, !dbg !2531, !tbaa !1413
  %1575 = sub nsw i32 %1574, %1568, !dbg !2531
  store i32 %1575, ptr %14, align 8, !dbg !2531, !tbaa !1413
  %1576 = icmp slt i32 %1575, 33, !dbg !2532
  br i1 %1576, label %1577, label %1586, !dbg !2533

1577:                                             ; preds = %1547
  %1578 = zext i32 %1575 to i64, !dbg !2534
  %1579 = shl i64 %1573, %1578, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %1579, metadata !1507, metadata !DIExpression()), !dbg !2535
  %1580 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1579) #8, !dbg !2537, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1580, metadata !1507, metadata !DIExpression()), !dbg !2535
  %1581 = trunc i64 %1580 to i32, !dbg !2538
  %1582 = load ptr, ptr %8, align 8, !dbg !2539, !tbaa !1408
  store i32 %1581, ptr %1582, align 4, !dbg !2540, !tbaa !1468
  %1583 = load i32, ptr %14, align 8, !dbg !2541, !tbaa !1413
  %1584 = add nsw i32 %1583, 32, !dbg !2541
  %1585 = getelementptr inbounds i8, ptr %1582, i64 4, !dbg !2542
  store ptr %1585, ptr %8, align 8, !dbg !2542, !tbaa !1408
  br label %1586, !dbg !2543

1586:                                             ; preds = %1547, %1577
  %1587 = phi i32 [ %1575, %1547 ], [ %1584, %1577 ], !dbg !2544
  %1588 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %1464, i64 12, i64 1, !dbg !2547
  %1589 = load i16, ptr %1588, align 2, !dbg !2547, !tbaa !1824
  %1590 = sext i16 %1589 to i32, !dbg !2547
  %1591 = load i16, ptr %1229, align 2, !dbg !2548, !tbaa !1824
  %1592 = sext i16 %1591 to i32, !dbg !2548
  %1593 = sub nsw i32 %1590, %1592, !dbg !2549
  call void @llvm.dbg.value(metadata ptr %1, metadata !2447, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i32 %1593, metadata !2450, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !2550
  %1594 = icmp slt i32 %1593, 1, !dbg !2551
  %1595 = mul nsw i32 %1593, -2, !dbg !2552
  %1596 = or i32 %1595, 1, !dbg !2552
  %1597 = shl nsw i32 %1593, 1, !dbg !2552
  %1598 = select i1 %1594, i32 %1596, i32 %1597, !dbg !2552
  call void @llvm.dbg.value(metadata i32 %1598, metadata !2450, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i32 %1598, metadata !2452, metadata !DIExpression()), !dbg !2550
  %1599 = icmp sgt i32 %1598, 255, !dbg !2553
  %1600 = lshr i32 %1598, 8, !dbg !2554
  %1601 = select i1 %1599, i32 16, i32 0, !dbg !2554
  %1602 = select i1 %1599, i32 %1600, i32 %1598, !dbg !2554
  call void @llvm.dbg.value(metadata i32 %1602, metadata !2452, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i32 %1601, metadata !2451, metadata !DIExpression()), !dbg !2550
  %1603 = sext i32 %1602 to i64, !dbg !2555
  %1604 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1603, !dbg !2555
  %1605 = load i8, ptr %1604, align 1, !dbg !2555, !tbaa !1434
  %1606 = zext i8 %1605 to i32, !dbg !2555
  %1607 = add nuw nsw i32 %1601, %1606, !dbg !2556
  call void @llvm.dbg.value(metadata i32 %1607, metadata !2451, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i32 %1607, metadata !1491, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i32 %1598, metadata !1492, metadata !DIExpression()), !dbg !2557
  %1608 = zext i32 %1607 to i64, !dbg !2558
  %1609 = shl i64 %1573, %1608, !dbg !2558
  %1610 = zext i32 %1598 to i64, !dbg !2559
  %1611 = or i64 %1609, %1610, !dbg !2560
  store i64 %1611, ptr %1208, align 8, !dbg !2561, !tbaa !1448
  %1612 = sub nsw i32 %1587, %1607, !dbg !2544
  store i32 %1612, ptr %14, align 8, !dbg !2544, !tbaa !1413
  %1613 = icmp slt i32 %1612, 33, !dbg !2562
  br i1 %1613, label %1614, label %1623, !dbg !2563

1614:                                             ; preds = %1586
  %1615 = zext i32 %1612 to i64, !dbg !2564
  %1616 = shl i64 %1611, %1615, !dbg !2564
  call void @llvm.dbg.value(metadata i64 %1616, metadata !1507, metadata !DIExpression()), !dbg !2565
  %1617 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1616) #8, !dbg !2567, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1617, metadata !1507, metadata !DIExpression()), !dbg !2565
  %1618 = trunc i64 %1617 to i32, !dbg !2568
  %1619 = load ptr, ptr %8, align 8, !dbg !2569, !tbaa !1408
  store i32 %1618, ptr %1619, align 4, !dbg !2570, !tbaa !1468
  %1620 = load i32, ptr %14, align 8, !dbg !2571, !tbaa !1413
  %1621 = add nsw i32 %1620, 32, !dbg !2571
  store i32 %1621, ptr %14, align 8, !dbg !2571, !tbaa !1413
  %1622 = getelementptr inbounds i8, ptr %1619, i64 4, !dbg !2572
  store ptr %1622, ptr %8, align 8, !dbg !2572, !tbaa !1408
  br label %1623, !dbg !2573

1623:                                             ; preds = %1614, %1586, %1543
  %1624 = getelementptr inbounds [2 x [2 x i32]], ptr %5, i64 0, i64 %1464, i64 1, !dbg !2574
  %1625 = load i32, ptr %1624, align 4, !dbg !2574, !tbaa !1468
  %1626 = icmp eq i32 %1625, 0, !dbg !2574
  br i1 %1626, label %1862, label %1627, !dbg !2576

1627:                                             ; preds = %1623
  %1628 = trunc i64 %1464 to i32, !dbg !2577
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %1628, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %4) #7, !dbg !2577
  %1629 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %1464, i64 28, !dbg !2579
  %1630 = load i16, ptr %1629, align 4, !dbg !2579, !tbaa !1824
  %1631 = sext i16 %1630 to i32, !dbg !2579
  %1632 = load i16, ptr %4, align 4, !dbg !2580, !tbaa !1824
  %1633 = sext i16 %1632 to i32, !dbg !2580
  %1634 = sub nsw i32 %1631, %1633, !dbg !2581
  call void @llvm.dbg.value(metadata ptr %1, metadata !2447, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %1634, metadata !2450, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !2582
  %1635 = icmp slt i32 %1634, 1, !dbg !2584
  %1636 = mul nsw i32 %1634, -2, !dbg !2585
  %1637 = or i32 %1636, 1, !dbg !2585
  %1638 = shl nsw i32 %1634, 1, !dbg !2585
  %1639 = select i1 %1635, i32 %1637, i32 %1638, !dbg !2585
  call void @llvm.dbg.value(metadata i32 %1639, metadata !2450, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %1639, metadata !2452, metadata !DIExpression()), !dbg !2582
  %1640 = icmp sgt i32 %1639, 255, !dbg !2586
  %1641 = lshr i32 %1639, 8, !dbg !2587
  %1642 = select i1 %1640, i32 16, i32 0, !dbg !2587
  %1643 = select i1 %1640, i32 %1641, i32 %1639, !dbg !2587
  call void @llvm.dbg.value(metadata i32 %1643, metadata !2452, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %1642, metadata !2451, metadata !DIExpression()), !dbg !2582
  %1644 = sext i32 %1643 to i64, !dbg !2588
  %1645 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1644, !dbg !2588
  %1646 = load i8, ptr %1645, align 1, !dbg !2588, !tbaa !1434
  %1647 = zext i8 %1646 to i32, !dbg !2588
  %1648 = add nuw nsw i32 %1642, %1647, !dbg !2589
  call void @llvm.dbg.value(metadata i32 %1648, metadata !2451, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32 %1648, metadata !1491, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32 %1639, metadata !1492, metadata !DIExpression()), !dbg !2590
  %1649 = load i64, ptr %1208, align 8, !dbg !2592, !tbaa !1448
  %1650 = zext i32 %1648 to i64, !dbg !2593
  %1651 = shl i64 %1649, %1650, !dbg !2593
  %1652 = zext i32 %1639 to i64, !dbg !2594
  %1653 = or i64 %1651, %1652, !dbg !2595
  %1654 = load i32, ptr %14, align 8, !dbg !2596, !tbaa !1413
  %1655 = sub nsw i32 %1654, %1648, !dbg !2596
  store i32 %1655, ptr %14, align 8, !dbg !2596, !tbaa !1413
  %1656 = icmp slt i32 %1655, 33, !dbg !2597
  br i1 %1656, label %1657, label %1666, !dbg !2598

1657:                                             ; preds = %1627
  %1658 = zext i32 %1655 to i64, !dbg !2599
  %1659 = shl i64 %1653, %1658, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %1659, metadata !1507, metadata !DIExpression()), !dbg !2600
  %1660 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1659) #8, !dbg !2602, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1660, metadata !1507, metadata !DIExpression()), !dbg !2600
  %1661 = trunc i64 %1660 to i32, !dbg !2603
  %1662 = load ptr, ptr %8, align 8, !dbg !2604, !tbaa !1408
  store i32 %1661, ptr %1662, align 4, !dbg !2605, !tbaa !1468
  %1663 = load i32, ptr %14, align 8, !dbg !2606, !tbaa !1413
  %1664 = add nsw i32 %1663, 32, !dbg !2606
  %1665 = getelementptr inbounds i8, ptr %1662, i64 4, !dbg !2607
  store ptr %1665, ptr %8, align 8, !dbg !2607, !tbaa !1408
  br label %1666, !dbg !2608

1666:                                             ; preds = %1627, %1657
  %1667 = phi i32 [ %1655, %1627 ], [ %1664, %1657 ], !dbg !2609
  %1668 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %1464, i64 28, i64 1, !dbg !2612
  %1669 = load i16, ptr %1668, align 2, !dbg !2612, !tbaa !1824
  %1670 = sext i16 %1669 to i32, !dbg !2612
  %1671 = load i16, ptr %1229, align 2, !dbg !2613, !tbaa !1824
  %1672 = sext i16 %1671 to i32, !dbg !2613
  %1673 = sub nsw i32 %1670, %1672, !dbg !2614
  call void @llvm.dbg.value(metadata ptr %1, metadata !2447, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 %1673, metadata !2450, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !2615
  %1674 = icmp slt i32 %1673, 1, !dbg !2616
  %1675 = mul nsw i32 %1673, -2, !dbg !2617
  %1676 = or i32 %1675, 1, !dbg !2617
  %1677 = shl nsw i32 %1673, 1, !dbg !2617
  %1678 = select i1 %1674, i32 %1676, i32 %1677, !dbg !2617
  call void @llvm.dbg.value(metadata i32 %1678, metadata !2450, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 %1678, metadata !2452, metadata !DIExpression()), !dbg !2615
  %1679 = icmp sgt i32 %1678, 255, !dbg !2618
  %1680 = lshr i32 %1678, 8, !dbg !2619
  %1681 = select i1 %1679, i32 16, i32 0, !dbg !2619
  %1682 = select i1 %1679, i32 %1680, i32 %1678, !dbg !2619
  call void @llvm.dbg.value(metadata i32 %1682, metadata !2452, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 %1681, metadata !2451, metadata !DIExpression()), !dbg !2615
  %1683 = sext i32 %1682 to i64, !dbg !2620
  %1684 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1683, !dbg !2620
  %1685 = load i8, ptr %1684, align 1, !dbg !2620, !tbaa !1434
  %1686 = zext i8 %1685 to i32, !dbg !2620
  %1687 = add nuw nsw i32 %1681, %1686, !dbg !2621
  call void @llvm.dbg.value(metadata i32 %1687, metadata !2451, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i32 %1687, metadata !1491, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i32 %1678, metadata !1492, metadata !DIExpression()), !dbg !2622
  %1688 = zext i32 %1687 to i64, !dbg !2623
  %1689 = shl i64 %1653, %1688, !dbg !2623
  %1690 = zext i32 %1678 to i64, !dbg !2624
  %1691 = or i64 %1689, %1690, !dbg !2625
  store i64 %1691, ptr %1208, align 8, !dbg !2626, !tbaa !1448
  %1692 = sub nsw i32 %1667, %1687, !dbg !2609
  store i32 %1692, ptr %14, align 8, !dbg !2609, !tbaa !1413
  %1693 = icmp slt i32 %1692, 33, !dbg !2627
  br i1 %1693, label %1694, label %1862, !dbg !2628

1694:                                             ; preds = %1666
  %1695 = zext i32 %1692 to i64, !dbg !2629
  %1696 = shl i64 %1691, %1695, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %1696, metadata !1507, metadata !DIExpression()), !dbg !2630
  %1697 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1696) #8, !dbg !2632, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1697, metadata !1507, metadata !DIExpression()), !dbg !2630
  %1698 = trunc i64 %1697 to i32, !dbg !2633
  %1699 = load ptr, ptr %8, align 8, !dbg !2634, !tbaa !1408
  store i32 %1698, ptr %1699, align 4, !dbg !2635, !tbaa !1468
  br label %1857, !dbg !2636

1700:                                             ; preds = %1462
  %1701 = getelementptr inbounds [2 x [2 x i32]], ptr %5, i64 0, i64 %1464, !dbg !2637
  %1702 = load i32, ptr %1701, align 8, !dbg !2637, !tbaa !1468
  %1703 = icmp eq i32 %1702, 0, !dbg !2637
  br i1 %1703, label %1780, label %1704, !dbg !2639

1704:                                             ; preds = %1700
  %1705 = trunc i64 %1464 to i32, !dbg !2640
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %1705, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %4) #7, !dbg !2640
  %1706 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %1464, i64 12, !dbg !2642
  %1707 = load i16, ptr %1706, align 4, !dbg !2642, !tbaa !1824
  %1708 = sext i16 %1707 to i32, !dbg !2642
  %1709 = load i16, ptr %4, align 4, !dbg !2643, !tbaa !1824
  %1710 = sext i16 %1709 to i32, !dbg !2643
  %1711 = sub nsw i32 %1708, %1710, !dbg !2644
  call void @llvm.dbg.value(metadata ptr %1, metadata !2447, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %1711, metadata !2450, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !2645
  %1712 = icmp slt i32 %1711, 1, !dbg !2647
  %1713 = mul nsw i32 %1711, -2, !dbg !2648
  %1714 = or i32 %1713, 1, !dbg !2648
  %1715 = shl nsw i32 %1711, 1, !dbg !2648
  %1716 = select i1 %1712, i32 %1714, i32 %1715, !dbg !2648
  call void @llvm.dbg.value(metadata i32 %1716, metadata !2450, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %1716, metadata !2452, metadata !DIExpression()), !dbg !2645
  %1717 = icmp sgt i32 %1716, 255, !dbg !2649
  %1718 = lshr i32 %1716, 8, !dbg !2650
  %1719 = select i1 %1717, i32 16, i32 0, !dbg !2650
  %1720 = select i1 %1717, i32 %1718, i32 %1716, !dbg !2650
  call void @llvm.dbg.value(metadata i32 %1720, metadata !2452, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %1719, metadata !2451, metadata !DIExpression()), !dbg !2645
  %1721 = sext i32 %1720 to i64, !dbg !2651
  %1722 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1721, !dbg !2651
  %1723 = load i8, ptr %1722, align 1, !dbg !2651, !tbaa !1434
  %1724 = zext i8 %1723 to i32, !dbg !2651
  %1725 = add nuw nsw i32 %1719, %1724, !dbg !2652
  call void @llvm.dbg.value(metadata i32 %1725, metadata !2451, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 %1725, metadata !1491, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 %1716, metadata !1492, metadata !DIExpression()), !dbg !2653
  %1726 = load i64, ptr %1208, align 8, !dbg !2655, !tbaa !1448
  %1727 = zext i32 %1725 to i64, !dbg !2656
  %1728 = shl i64 %1726, %1727, !dbg !2656
  %1729 = zext i32 %1716 to i64, !dbg !2657
  %1730 = or i64 %1728, %1729, !dbg !2658
  %1731 = load i32, ptr %14, align 8, !dbg !2659, !tbaa !1413
  %1732 = sub nsw i32 %1731, %1725, !dbg !2659
  store i32 %1732, ptr %14, align 8, !dbg !2659, !tbaa !1413
  %1733 = icmp slt i32 %1732, 33, !dbg !2660
  br i1 %1733, label %1734, label %1743, !dbg !2661

1734:                                             ; preds = %1704
  %1735 = zext i32 %1732 to i64, !dbg !2662
  %1736 = shl i64 %1730, %1735, !dbg !2662
  call void @llvm.dbg.value(metadata i64 %1736, metadata !1507, metadata !DIExpression()), !dbg !2663
  %1737 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1736) #8, !dbg !2665, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1737, metadata !1507, metadata !DIExpression()), !dbg !2663
  %1738 = trunc i64 %1737 to i32, !dbg !2666
  %1739 = load ptr, ptr %8, align 8, !dbg !2667, !tbaa !1408
  store i32 %1738, ptr %1739, align 4, !dbg !2668, !tbaa !1468
  %1740 = load i32, ptr %14, align 8, !dbg !2669, !tbaa !1413
  %1741 = add nsw i32 %1740, 32, !dbg !2669
  %1742 = getelementptr inbounds i8, ptr %1739, i64 4, !dbg !2670
  store ptr %1742, ptr %8, align 8, !dbg !2670, !tbaa !1408
  br label %1743, !dbg !2671

1743:                                             ; preds = %1704, %1734
  %1744 = phi i32 [ %1732, %1704 ], [ %1741, %1734 ], !dbg !2672
  %1745 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %1464, i64 12, i64 1, !dbg !2675
  %1746 = load i16, ptr %1745, align 2, !dbg !2675, !tbaa !1824
  %1747 = sext i16 %1746 to i32, !dbg !2675
  %1748 = load i16, ptr %1229, align 2, !dbg !2676, !tbaa !1824
  %1749 = sext i16 %1748 to i32, !dbg !2676
  %1750 = sub nsw i32 %1747, %1749, !dbg !2677
  call void @llvm.dbg.value(metadata ptr %1, metadata !2447, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i32 %1750, metadata !2450, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !2678
  %1751 = icmp slt i32 %1750, 1, !dbg !2679
  %1752 = mul nsw i32 %1750, -2, !dbg !2680
  %1753 = or i32 %1752, 1, !dbg !2680
  %1754 = shl nsw i32 %1750, 1, !dbg !2680
  %1755 = select i1 %1751, i32 %1753, i32 %1754, !dbg !2680
  call void @llvm.dbg.value(metadata i32 %1755, metadata !2450, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i32 %1755, metadata !2452, metadata !DIExpression()), !dbg !2678
  %1756 = icmp sgt i32 %1755, 255, !dbg !2681
  %1757 = lshr i32 %1755, 8, !dbg !2682
  %1758 = select i1 %1756, i32 16, i32 0, !dbg !2682
  %1759 = select i1 %1756, i32 %1757, i32 %1755, !dbg !2682
  call void @llvm.dbg.value(metadata i32 %1759, metadata !2452, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i32 %1758, metadata !2451, metadata !DIExpression()), !dbg !2678
  %1760 = sext i32 %1759 to i64, !dbg !2683
  %1761 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1760, !dbg !2683
  %1762 = load i8, ptr %1761, align 1, !dbg !2683, !tbaa !1434
  %1763 = zext i8 %1762 to i32, !dbg !2683
  %1764 = add nuw nsw i32 %1758, %1763, !dbg !2684
  call void @llvm.dbg.value(metadata i32 %1764, metadata !2451, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i32 %1764, metadata !1491, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i32 %1755, metadata !1492, metadata !DIExpression()), !dbg !2685
  %1765 = zext i32 %1764 to i64, !dbg !2686
  %1766 = shl i64 %1730, %1765, !dbg !2686
  %1767 = zext i32 %1755 to i64, !dbg !2687
  %1768 = or i64 %1766, %1767, !dbg !2688
  store i64 %1768, ptr %1208, align 8, !dbg !2689, !tbaa !1448
  %1769 = sub nsw i32 %1744, %1764, !dbg !2672
  store i32 %1769, ptr %14, align 8, !dbg !2672, !tbaa !1413
  %1770 = icmp slt i32 %1769, 33, !dbg !2690
  br i1 %1770, label %1771, label %1780, !dbg !2691

1771:                                             ; preds = %1743
  %1772 = zext i32 %1769 to i64, !dbg !2692
  %1773 = shl i64 %1768, %1772, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %1773, metadata !1507, metadata !DIExpression()), !dbg !2693
  %1774 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1773) #8, !dbg !2695, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1774, metadata !1507, metadata !DIExpression()), !dbg !2693
  %1775 = trunc i64 %1774 to i32, !dbg !2696
  %1776 = load ptr, ptr %8, align 8, !dbg !2697, !tbaa !1408
  store i32 %1775, ptr %1776, align 4, !dbg !2698, !tbaa !1468
  %1777 = load i32, ptr %14, align 8, !dbg !2699, !tbaa !1413
  %1778 = add nsw i32 %1777, 32, !dbg !2699
  store i32 %1778, ptr %14, align 8, !dbg !2699, !tbaa !1413
  %1779 = getelementptr inbounds i8, ptr %1776, i64 4, !dbg !2700
  store ptr %1779, ptr %8, align 8, !dbg !2700, !tbaa !1408
  br label %1780, !dbg !2701

1780:                                             ; preds = %1771, %1743, %1700
  %1781 = getelementptr inbounds [2 x [2 x i32]], ptr %5, i64 0, i64 %1464, i64 1, !dbg !2702
  %1782 = load i32, ptr %1781, align 4, !dbg !2702, !tbaa !1468
  %1783 = icmp eq i32 %1782, 0, !dbg !2702
  br i1 %1783, label %1862, label %1784, !dbg !2704

1784:                                             ; preds = %1780
  %1785 = trunc i64 %1464 to i32, !dbg !2705
  call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %1785, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %4) #7, !dbg !2705
  %1786 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %1464, i64 14, !dbg !2707
  %1787 = load i16, ptr %1786, align 4, !dbg !2707, !tbaa !1824
  %1788 = sext i16 %1787 to i32, !dbg !2707
  %1789 = load i16, ptr %4, align 4, !dbg !2708, !tbaa !1824
  %1790 = sext i16 %1789 to i32, !dbg !2708
  %1791 = sub nsw i32 %1788, %1790, !dbg !2709
  call void @llvm.dbg.value(metadata ptr %1, metadata !2447, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 %1791, metadata !2450, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !2710
  %1792 = icmp slt i32 %1791, 1, !dbg !2712
  %1793 = mul nsw i32 %1791, -2, !dbg !2713
  %1794 = or i32 %1793, 1, !dbg !2713
  %1795 = shl nsw i32 %1791, 1, !dbg !2713
  %1796 = select i1 %1792, i32 %1794, i32 %1795, !dbg !2713
  call void @llvm.dbg.value(metadata i32 %1796, metadata !2450, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 %1796, metadata !2452, metadata !DIExpression()), !dbg !2710
  %1797 = icmp sgt i32 %1796, 255, !dbg !2714
  %1798 = lshr i32 %1796, 8, !dbg !2715
  %1799 = select i1 %1797, i32 16, i32 0, !dbg !2715
  %1800 = select i1 %1797, i32 %1798, i32 %1796, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %1800, metadata !2452, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 %1799, metadata !2451, metadata !DIExpression()), !dbg !2710
  %1801 = sext i32 %1800 to i64, !dbg !2716
  %1802 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1801, !dbg !2716
  %1803 = load i8, ptr %1802, align 1, !dbg !2716, !tbaa !1434
  %1804 = zext i8 %1803 to i32, !dbg !2716
  %1805 = add nuw nsw i32 %1799, %1804, !dbg !2717
  call void @llvm.dbg.value(metadata i32 %1805, metadata !2451, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 %1805, metadata !1491, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 %1796, metadata !1492, metadata !DIExpression()), !dbg !2718
  %1806 = load i64, ptr %1208, align 8, !dbg !2720, !tbaa !1448
  %1807 = zext i32 %1805 to i64, !dbg !2721
  %1808 = shl i64 %1806, %1807, !dbg !2721
  %1809 = zext i32 %1796 to i64, !dbg !2722
  %1810 = or i64 %1808, %1809, !dbg !2723
  %1811 = load i32, ptr %14, align 8, !dbg !2724, !tbaa !1413
  %1812 = sub nsw i32 %1811, %1805, !dbg !2724
  store i32 %1812, ptr %14, align 8, !dbg !2724, !tbaa !1413
  %1813 = icmp slt i32 %1812, 33, !dbg !2725
  br i1 %1813, label %1814, label %1823, !dbg !2726

1814:                                             ; preds = %1784
  %1815 = zext i32 %1812 to i64, !dbg !2727
  %1816 = shl i64 %1810, %1815, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %1816, metadata !1507, metadata !DIExpression()), !dbg !2728
  %1817 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1816) #8, !dbg !2730, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1817, metadata !1507, metadata !DIExpression()), !dbg !2728
  %1818 = trunc i64 %1817 to i32, !dbg !2731
  %1819 = load ptr, ptr %8, align 8, !dbg !2732, !tbaa !1408
  store i32 %1818, ptr %1819, align 4, !dbg !2733, !tbaa !1468
  %1820 = load i32, ptr %14, align 8, !dbg !2734, !tbaa !1413
  %1821 = add nsw i32 %1820, 32, !dbg !2734
  %1822 = getelementptr inbounds i8, ptr %1819, i64 4, !dbg !2735
  store ptr %1822, ptr %8, align 8, !dbg !2735, !tbaa !1408
  br label %1823, !dbg !2736

1823:                                             ; preds = %1784, %1814
  %1824 = phi i32 [ %1812, %1784 ], [ %1821, %1814 ], !dbg !2737
  %1825 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %1464, i64 14, i64 1, !dbg !2740
  %1826 = load i16, ptr %1825, align 2, !dbg !2740, !tbaa !1824
  %1827 = sext i16 %1826 to i32, !dbg !2740
  %1828 = load i16, ptr %1229, align 2, !dbg !2741, !tbaa !1824
  %1829 = sext i16 %1828 to i32, !dbg !2741
  %1830 = sub nsw i32 %1827, %1829, !dbg !2742
  call void @llvm.dbg.value(metadata ptr %1, metadata !2447, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 %1830, metadata !2450, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !2743
  %1831 = icmp slt i32 %1830, 1, !dbg !2744
  %1832 = mul nsw i32 %1830, -2, !dbg !2745
  %1833 = or i32 %1832, 1, !dbg !2745
  %1834 = shl nsw i32 %1830, 1, !dbg !2745
  %1835 = select i1 %1831, i32 %1833, i32 %1834, !dbg !2745
  call void @llvm.dbg.value(metadata i32 %1835, metadata !2450, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 %1835, metadata !2452, metadata !DIExpression()), !dbg !2743
  %1836 = icmp sgt i32 %1835, 255, !dbg !2746
  %1837 = lshr i32 %1835, 8, !dbg !2747
  %1838 = select i1 %1836, i32 16, i32 0, !dbg !2747
  %1839 = select i1 %1836, i32 %1837, i32 %1835, !dbg !2747
  call void @llvm.dbg.value(metadata i32 %1839, metadata !2452, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 %1838, metadata !2451, metadata !DIExpression()), !dbg !2743
  %1840 = sext i32 %1839 to i64, !dbg !2748
  %1841 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1840, !dbg !2748
  %1842 = load i8, ptr %1841, align 1, !dbg !2748, !tbaa !1434
  %1843 = zext i8 %1842 to i32, !dbg !2748
  %1844 = add nuw nsw i32 %1838, %1843, !dbg !2749
  call void @llvm.dbg.value(metadata i32 %1844, metadata !2451, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %1844, metadata !1491, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %1835, metadata !1492, metadata !DIExpression()), !dbg !2750
  %1845 = zext i32 %1844 to i64, !dbg !2751
  %1846 = shl i64 %1810, %1845, !dbg !2751
  %1847 = zext i32 %1835 to i64, !dbg !2752
  %1848 = or i64 %1846, %1847, !dbg !2753
  store i64 %1848, ptr %1208, align 8, !dbg !2754, !tbaa !1448
  %1849 = sub nsw i32 %1824, %1844, !dbg !2737
  store i32 %1849, ptr %14, align 8, !dbg !2737, !tbaa !1413
  %1850 = icmp slt i32 %1849, 33, !dbg !2755
  br i1 %1850, label %1851, label %1862, !dbg !2756

1851:                                             ; preds = %1823
  %1852 = zext i32 %1849 to i64, !dbg !2757
  %1853 = shl i64 %1848, %1852, !dbg !2757
  call void @llvm.dbg.value(metadata i64 %1853, metadata !1507, metadata !DIExpression()), !dbg !2758
  %1854 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1853) #8, !dbg !2760, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1854, metadata !1507, metadata !DIExpression()), !dbg !2758
  %1855 = trunc i64 %1854 to i32, !dbg !2761
  %1856 = load ptr, ptr %8, align 8, !dbg !2762, !tbaa !1408
  store i32 %1855, ptr %1856, align 4, !dbg !2763, !tbaa !1468
  br label %1857, !dbg !2764

1857:                                             ; preds = %1537, %1694, %1851
  %1858 = phi ptr [ %1856, %1851 ], [ %1699, %1694 ], [ %1542, %1537 ]
  %1859 = load i32, ptr %14, align 8, !dbg !2765, !tbaa !1413
  %1860 = add nsw i32 %1859, 32, !dbg !2765
  store i32 %1860, ptr %14, align 8, !dbg !2765, !tbaa !1413
  %1861 = getelementptr inbounds i8, ptr %1858, i64 4, !dbg !2765
  store ptr %1861, ptr %8, align 8, !dbg !2765, !tbaa !1408
  br label %1862, !dbg !2766

1862:                                             ; preds = %1857, %1823, %1666, %1509, %1462, %1466, %1623, %1780
  call void @llvm.dbg.value(metadata i64 %1464, metadata !1358, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2174
  br i1 %1463, label %1462, label %1863, !dbg !2176, !llvm.loop !2767

1863:                                             ; preds = %1862
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !2769
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7, !dbg !2769
  br label %1879, !dbg !2770

1864:                                             ; preds = %369
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 0, metadata !1480, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i32 1, metadata !1491, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i32 1, metadata !1492, metadata !DIExpression()), !dbg !2774
  %1865 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !2776
  %1866 = load i64, ptr %1865, align 8, !dbg !2776, !tbaa !1448
  %1867 = shl i64 %1866, 1, !dbg !2777
  %1868 = or i64 %1867, 1, !dbg !2778
  store i64 %1868, ptr %1865, align 8, !dbg !2779, !tbaa !1448
  %1869 = add nsw i32 %63, -1, !dbg !2780
  store i32 %1869, ptr %14, align 8, !dbg !2780, !tbaa !1413
  %1870 = icmp slt i32 %63, 34, !dbg !2781
  br i1 %1870, label %1871, label %1879, !dbg !2782

1871:                                             ; preds = %1864
  %1872 = zext i32 %1869 to i64, !dbg !2783
  %1873 = shl i64 %1868, %1872, !dbg !2783
  call void @llvm.dbg.value(metadata i64 %1873, metadata !1507, metadata !DIExpression()), !dbg !2784
  %1874 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1873) #8, !dbg !2786, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1874, metadata !1507, metadata !DIExpression()), !dbg !2784
  %1875 = trunc i64 %1874 to i32, !dbg !2787
  store i32 %1875, ptr %62, align 4, !dbg !2788, !tbaa !1468
  %1876 = load i32, ptr %14, align 8, !dbg !2789, !tbaa !1413
  %1877 = add nsw i32 %1876, 32, !dbg !2789
  store i32 %1877, ptr %14, align 8, !dbg !2789, !tbaa !1413
  %1878 = getelementptr inbounds i8, ptr %62, i64 4, !dbg !2790
  store ptr %1878, ptr %8, align 8, !dbg !2790, !tbaa !1408
  br label %1879, !dbg !2791

1879:                                             ; preds = %1185, %680, %1871, %1864, %426, %408, %361, %345, %1863, %533
  call void @llvm.dbg.value(metadata ptr %1, metadata !1400, metadata !DIExpression()), !dbg !2792
  %1880 = load ptr, ptr %8, align 8, !dbg !1969, !tbaa !1408
  %1881 = load ptr, ptr %1, align 8, !dbg !2793, !tbaa !1410
  %1882 = ptrtoint ptr %1880 to i64, !dbg !2794
  %1883 = ptrtoint ptr %1881 to i64, !dbg !2794
  %1884 = sub i64 %1882, %1883, !dbg !2794
  %1885 = load i32, ptr %14, align 8, !dbg !2795, !tbaa !1413
  %1886 = trunc i64 %1884 to i32, !dbg !2796
  %1887 = shl i32 %1886, 3, !dbg !2796
  %1888 = sub i32 64, %1885, !dbg !2796
  %1889 = add i32 %1887, %1888, !dbg !2796
  call void @llvm.dbg.value(metadata i32 %1889, metadata !1342, metadata !DIExpression()), !dbg !1368
  %1890 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, !dbg !2797
  %1891 = load i32, ptr %1890, align 8, !dbg !2798, !tbaa !1529
  %1892 = add i32 %1891, %19, !dbg !2799
  %1893 = add i32 %1892, %1889, !dbg !2798
  store i32 %1893, ptr %1890, align 8, !dbg !2798, !tbaa !1529
  br i1 %228, label %1894, label %1920, !dbg !2800

1894:                                             ; preds = %1879
  %1895 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 51, !dbg !2802
  %1896 = load i32, ptr %1895, align 8, !dbg !2802, !tbaa !1753
  %1897 = shl i32 %1896, 4, !dbg !2803
  %1898 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 50, !dbg !2804
  %1899 = load i32, ptr %1898, align 4, !dbg !2804, !tbaa !1756
  %1900 = or i32 %1897, %1899, !dbg !2805
  %1901 = sext i32 %1900 to i64, !dbg !2806
  %1902 = getelementptr inbounds [48 x i8], ptr @intra4x4_cbp_to_golomb, i64 0, i64 %1901, !dbg !2806
  %1903 = load i8, ptr %1902, align 1, !dbg !2806, !tbaa !1434
  %1904 = zext i8 %1903 to i64, !dbg !2806
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i8 %1903, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2807
  %1905 = add nuw nsw i64 %1904, 1, !dbg !2809
  %1906 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1905, !dbg !2810
  %1907 = load i8, ptr %1906, align 1, !dbg !2810, !tbaa !1434
  %1908 = zext i8 %1907 to i32, !dbg !2810
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 %1908, metadata !1491, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i64 %1905, metadata !1492, metadata !DIExpression()), !dbg !2811
  %1909 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !2813
  %1910 = load i64, ptr %1909, align 8, !dbg !2813, !tbaa !1448
  %1911 = zext i8 %1907 to i64, !dbg !2814
  %1912 = shl i64 %1910, %1911, !dbg !2814
  %1913 = or i64 %1912, %1905, !dbg !2815
  store i64 %1913, ptr %1909, align 8, !dbg !2816, !tbaa !1448
  %1914 = sub nsw i32 %1885, %1908, !dbg !2817
  store i32 %1914, ptr %14, align 8, !dbg !2817, !tbaa !1413
  %1915 = icmp slt i32 %1914, 33, !dbg !2818
  br i1 %1915, label %1916, label %1954, !dbg !2819

1916:                                             ; preds = %1894
  %1917 = zext i32 %1914 to i64, !dbg !2820
  %1918 = shl i64 %1913, %1917, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %1918, metadata !1507, metadata !DIExpression()), !dbg !2821
  %1919 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1918) #8, !dbg !2823, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1919, metadata !1507, metadata !DIExpression()), !dbg !2821
  br label %1948, !dbg !2824

1920:                                             ; preds = %1879
  %1921 = icmp eq i32 %7, 2, !dbg !2825
  br i1 %1921, label %1954, label %1922, !dbg !2827

1922:                                             ; preds = %1920
  %1923 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 51, !dbg !2828
  %1924 = load i32, ptr %1923, align 8, !dbg !2828, !tbaa !1753
  %1925 = shl i32 %1924, 4, !dbg !2829
  %1926 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 50, !dbg !2830
  %1927 = load i32, ptr %1926, align 4, !dbg !2830, !tbaa !1756
  %1928 = or i32 %1925, %1927, !dbg !2831
  %1929 = sext i32 %1928 to i64, !dbg !2832
  %1930 = getelementptr inbounds [48 x i8], ptr @inter_cbp_to_golomb, i64 0, i64 %1929, !dbg !2832
  %1931 = load i8, ptr %1930, align 1, !dbg !2832, !tbaa !1434
  %1932 = zext i8 %1931 to i64, !dbg !2832
  call void @llvm.dbg.value(metadata ptr %1, metadata !1475, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8 %1931, metadata !1480, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2833
  %1933 = add nuw nsw i64 %1932, 1, !dbg !2835
  %1934 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1933, !dbg !2836
  %1935 = load i8, ptr %1934, align 1, !dbg !2836, !tbaa !1434
  %1936 = zext i8 %1935 to i32, !dbg !2836
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i32 %1936, metadata !1491, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i64 %1933, metadata !1492, metadata !DIExpression()), !dbg !2837
  %1937 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !2839
  %1938 = load i64, ptr %1937, align 8, !dbg !2839, !tbaa !1448
  %1939 = zext i8 %1935 to i64, !dbg !2840
  %1940 = shl i64 %1938, %1939, !dbg !2840
  %1941 = or i64 %1940, %1933, !dbg !2841
  store i64 %1941, ptr %1937, align 8, !dbg !2842, !tbaa !1448
  %1942 = sub nsw i32 %1885, %1936, !dbg !2843
  store i32 %1942, ptr %14, align 8, !dbg !2843, !tbaa !1413
  %1943 = icmp slt i32 %1942, 33, !dbg !2844
  br i1 %1943, label %1944, label %1954, !dbg !2845

1944:                                             ; preds = %1922
  %1945 = zext i32 %1942 to i64, !dbg !2846
  %1946 = shl i64 %1941, %1945, !dbg !2846
  call void @llvm.dbg.value(metadata i64 %1946, metadata !1507, metadata !DIExpression()), !dbg !2847
  %1947 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1946) #8, !dbg !2849, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %1947, metadata !1507, metadata !DIExpression()), !dbg !2847
  br label %1948, !dbg !2850

1948:                                             ; preds = %1916, %1944
  %1949 = phi i64 [ %1919, %1916 ], [ %1947, %1944 ]
  %1950 = trunc i64 %1949 to i32, !dbg !2851
  store i32 %1950, ptr %1880, align 4, !dbg !2851, !tbaa !1468
  %1951 = load i32, ptr %14, align 8, !dbg !2851, !tbaa !1413
  %1952 = add nsw i32 %1951, 32, !dbg !2851
  store i32 %1952, ptr %14, align 8, !dbg !2851, !tbaa !1413
  %1953 = getelementptr inbounds i8, ptr %1880, i64 4, !dbg !2851
  store ptr %1953, ptr %8, align 8, !dbg !2851, !tbaa !1408
  br label %1954, !dbg !2852

1954:                                             ; preds = %1948, %1922, %1894, %1920
  %1955 = phi ptr [ %1880, %1922 ], [ %1880, %1894 ], [ %1880, %1920 ], [ %1953, %1948 ]
  %1956 = phi i32 [ %1942, %1922 ], [ %1914, %1894 ], [ %1885, %1920 ], [ %1952, %1948 ]
  call void @llvm.dbg.value(metadata ptr %0, metadata !1272, metadata !DIExpression()), !dbg !2856
  %1957 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 18, !dbg !2852
  %1958 = load ptr, ptr %1957, align 16, !dbg !2852, !tbaa !1633
  %1959 = getelementptr inbounds %struct.x264_pps_t, ptr %1958, i64 0, i32 15, !dbg !2857
  %1960 = load i32, ptr %1959, align 4, !dbg !2857, !tbaa !1635
  %1961 = icmp eq i32 %1960, 0, !dbg !2858
  br i1 %1961, label %2044, label %1962, !dbg !2859

1962:                                             ; preds = %1954
  %1963 = load i32, ptr %6, align 8, !dbg !2860, !tbaa !1370
  %1964 = sext i32 %1963 to i64, !dbg !2861
  call void @llvm.dbg.value(metadata i8 poison, metadata !1273, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2856
  %1965 = lshr i64 393055, %1964, !dbg !2862
  %1966 = and i64 %1965, 1, !dbg !2862
  %1967 = icmp eq i64 %1966, 0, !dbg !2862
  br i1 %1967, label %1972, label %1968, !dbg !2864

1968:                                             ; preds = %1962
  %1969 = getelementptr inbounds [19 x i8], ptr @x264_mb_transform_8x8_allowed.partition_tab, i64 0, i64 %1964, !dbg !2861
  %1970 = load i8, ptr %1969, align 1, !dbg !2861, !tbaa !1434
  call void @llvm.dbg.value(metadata i8 %1970, metadata !1273, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2856
  %1971 = zext i8 %1970 to i32, !dbg !2861
  call void @llvm.dbg.value(metadata i32 %1971, metadata !1273, metadata !DIExpression()), !dbg !2856
  br label %2023, !dbg !2865

1972:                                             ; preds = %1962
  switch i32 %1963, label %2000 [
    i32 7, label %1973
    i32 5, label %1978
  ], !dbg !2866

1973:                                             ; preds = %1972
  %1974 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 16, !dbg !2867
  %1975 = load ptr, ptr %1974, align 16, !dbg !2867, !tbaa !2869
  %1976 = getelementptr inbounds %struct.x264_sps_t, ptr %1975, i64 0, i32 20, !dbg !2870
  %1977 = load i32, ptr %1976, align 4, !dbg !2870, !tbaa !2871
  br label %2023, !dbg !2875

1978:                                             ; preds = %1972
  %1979 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 1, !dbg !2876
  %1980 = load i32, ptr %1979, align 4, !dbg !2876, !tbaa !1914
  %1981 = and i32 %1980, 32, !dbg !2880
  %1982 = icmp eq i32 %1981, 0, !dbg !2880
  br i1 %1982, label %2026, label %1983, !dbg !2881

1983:                                             ; preds = %1978
  call void @llvm.dbg.value(metadata i64 0, metadata !1274, metadata !DIExpression()), !dbg !2856
  %1984 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 0, !dbg !2882
  %1985 = load i32, ptr %1984, align 4, !dbg !2882, !tbaa !1468
  %1986 = icmp eq i32 %1985, 3, !dbg !2886
  call void @llvm.dbg.value(metadata i64 0, metadata !1274, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2856
  br i1 %1986, label %1987, label %2044, !dbg !2887

1987:                                             ; preds = %1983
  call void @llvm.dbg.value(metadata i64 1, metadata !1274, metadata !DIExpression()), !dbg !2856
  %1988 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 1, !dbg !2882
  %1989 = load i32, ptr %1988, align 4, !dbg !2882, !tbaa !1468
  %1990 = icmp eq i32 %1989, 3, !dbg !2886
  call void @llvm.dbg.value(metadata i64 1, metadata !1274, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2856
  br i1 %1990, label %1991, label %2044, !dbg !2887

1991:                                             ; preds = %1987
  call void @llvm.dbg.value(metadata i64 2, metadata !1274, metadata !DIExpression()), !dbg !2856
  %1992 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 2, !dbg !2882
  %1993 = load i32, ptr %1992, align 4, !dbg !2882, !tbaa !1468
  %1994 = icmp eq i32 %1993, 3, !dbg !2886
  call void @llvm.dbg.value(metadata i64 2, metadata !1274, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2856
  br i1 %1994, label %1995, label %2044, !dbg !2887

1995:                                             ; preds = %1991
  call void @llvm.dbg.value(metadata i64 3, metadata !1274, metadata !DIExpression()), !dbg !2856
  %1996 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 3, !dbg !2882
  %1997 = load i32, ptr %1996, align 4, !dbg !2882, !tbaa !1468
  %1998 = icmp eq i32 %1997, 3, !dbg !2886
  call void @llvm.dbg.value(metadata i64 3, metadata !1274, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2856
  %1999 = zext i1 %1998 to i32, !dbg !2887
  br label %2023, !dbg !2887

2000:                                             ; preds = %1972
  %2001 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 16, !dbg !2888
  %2002 = load ptr, ptr %2001, align 16, !dbg !2888, !tbaa !2869
  %2003 = getelementptr inbounds %struct.x264_sps_t, ptr %2002, i64 0, i32 20, !dbg !2891
  %2004 = load i32, ptr %2003, align 4, !dbg !2891, !tbaa !2871
  %2005 = icmp eq i32 %2004, 0, !dbg !2892
  br i1 %2005, label %2006, label %2026, !dbg !2893

2006:                                             ; preds = %2000
  call void @llvm.dbg.value(metadata i64 0, metadata !1274, metadata !DIExpression()), !dbg !2856
  %2007 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 0, !dbg !2894
  %2008 = load i32, ptr %2007, align 4, !dbg !2894, !tbaa !1468
  %2009 = icmp eq i32 %2008, 12, !dbg !2898
  call void @llvm.dbg.value(metadata i64 0, metadata !1274, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2856
  br i1 %2009, label %2044, label %2010, !dbg !2899

2010:                                             ; preds = %2006
  call void @llvm.dbg.value(metadata i64 1, metadata !1274, metadata !DIExpression()), !dbg !2856
  %2011 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 1, !dbg !2894
  %2012 = load i32, ptr %2011, align 4, !dbg !2894, !tbaa !1468
  %2013 = icmp eq i32 %2012, 12, !dbg !2898
  call void @llvm.dbg.value(metadata i64 1, metadata !1274, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2856
  br i1 %2013, label %2044, label %2014, !dbg !2899

2014:                                             ; preds = %2010
  call void @llvm.dbg.value(metadata i64 2, metadata !1274, metadata !DIExpression()), !dbg !2856
  %2015 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 2, !dbg !2894
  %2016 = load i32, ptr %2015, align 4, !dbg !2894, !tbaa !1468
  %2017 = icmp eq i32 %2016, 12, !dbg !2898
  call void @llvm.dbg.value(metadata i64 2, metadata !1274, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2856
  br i1 %2017, label %2044, label %2018, !dbg !2899

2018:                                             ; preds = %2014
  call void @llvm.dbg.value(metadata i64 3, metadata !1274, metadata !DIExpression()), !dbg !2856
  %2019 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 3, !dbg !2894
  %2020 = load i32, ptr %2019, align 4, !dbg !2894, !tbaa !1468
  %2021 = icmp ne i32 %2020, 12, !dbg !2898
  call void @llvm.dbg.value(metadata i64 3, metadata !1274, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2856
  %2022 = zext i1 %2021 to i32, !dbg !2899
  br label %2023, !dbg !2899

2023:                                             ; preds = %1968, %1973, %1995, %2018
  %2024 = phi i32 [ %1971, %1968 ], [ %1977, %1973 ], [ %1999, %1995 ], [ %2022, %2018 ], !dbg !2856
  %2025 = icmp eq i32 %2024, 0, !dbg !2900
  br i1 %2025, label %2044, label %2026, !dbg !2901

2026:                                             ; preds = %2000, %1978, %2023
  %2027 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 50, !dbg !2902
  %2028 = load i32, ptr %2027, align 4, !dbg !2902, !tbaa !1756
  %2029 = icmp eq i32 %2028, 0, !dbg !2903
  br i1 %2029, label %2044, label %2030, !dbg !2904

2030:                                             ; preds = %2026
  %2031 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 49, !dbg !2905
  %2032 = load i32, ptr %2031, align 16, !dbg !2905, !tbaa !1640
  call void @llvm.dbg.value(metadata ptr %1, metadata !1438, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i32 %2032, metadata !1443, metadata !DIExpression()), !dbg !2906
  %2033 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !2908
  %2034 = load i64, ptr %2033, align 8, !dbg !2909, !tbaa !1448
  %2035 = shl i64 %2034, 1, !dbg !2909
  %2036 = zext i32 %2032 to i64, !dbg !2910
  %2037 = or i64 %2035, %2036, !dbg !2911
  store i64 %2037, ptr %2033, align 8, !dbg !2911, !tbaa !1448
  %2038 = add nsw i32 %1956, -1, !dbg !2912
  store i32 %2038, ptr %14, align 8, !dbg !2912, !tbaa !1413
  %2039 = icmp eq i32 %2038, 32, !dbg !2913
  br i1 %2039, label %2040, label %2044, !dbg !2914

2040:                                             ; preds = %2030
  %2041 = trunc i64 %2037 to i32, !dbg !2915
  call void @llvm.dbg.value(metadata i32 %2041, metadata !1457, metadata !DIExpression()), !dbg !2916
  %2042 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %2041) #8, !dbg !2918, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %2042, metadata !1457, metadata !DIExpression()), !dbg !2916
  store i32 %2042, ptr %1955, align 4, !dbg !2919, !tbaa !1468
  %2043 = getelementptr inbounds i8, ptr %1955, i64 4, !dbg !2920
  store ptr %2043, ptr %8, align 8, !dbg !2920, !tbaa !1408
  store i32 64, ptr %14, align 8, !dbg !2921, !tbaa !1413
  br label %2044, !dbg !2922

2044:                                             ; preds = %1991, %1987, %1983, %2014, %2010, %2006, %1954, %2040, %2030, %2026, %2023
  %2045 = phi ptr [ %1955, %1991 ], [ %1955, %1987 ], [ %1955, %1983 ], [ %1955, %2014 ], [ %1955, %2010 ], [ %1955, %2006 ], [ %1955, %1954 ], [ %2043, %2040 ], [ %1955, %2030 ], [ %1955, %2026 ], [ %1955, %2023 ]
  %2046 = phi i32 [ %1956, %1991 ], [ %1956, %1987 ], [ %1956, %1983 ], [ %1956, %2014 ], [ %1956, %2010 ], [ %1956, %2006 ], [ %1956, %1954 ], [ 64, %2040 ], [ %2038, %2030 ], [ %1956, %2026 ], [ %1956, %2023 ]
  %2047 = icmp eq i32 %7, 2, !dbg !2923
  br i1 %2047, label %2048, label %2213, !dbg !2925

2048:                                             ; preds = %2044
  call void @llvm.dbg.value(metadata ptr %0, metadata !2926, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata ptr %1, metadata !2929, metadata !DIExpression()), !dbg !2931
  %2049 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 58, !dbg !2934
  %2050 = load i32, ptr %2049, align 16, !dbg !2934, !tbaa !2935
  %2051 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 60, !dbg !2936
  %2052 = load i32, ptr %2051, align 8, !dbg !2936, !tbaa !2937
  %2053 = sub nsw i32 %2050, %2052, !dbg !2938
  call void @llvm.dbg.value(metadata i32 %2053, metadata !2930, metadata !DIExpression()), !dbg !2931
  %2054 = load i32, ptr %6, align 8, !dbg !2939, !tbaa !1370
  %2055 = icmp eq i32 %2054, 2, !dbg !2941
  br i1 %2055, label %2056, label %2068, !dbg !2942

2056:                                             ; preds = %2048
  %2057 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 50, !dbg !2943
  %2058 = load i32, ptr %2057, align 4, !dbg !2943, !tbaa !1756
  %2059 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 51, !dbg !2944
  %2060 = load i32, ptr %2059, align 8, !dbg !2944, !tbaa !1753
  %2061 = or i32 %2060, %2058, !dbg !2945
  %2062 = icmp eq i32 %2061, 0, !dbg !2945
  br i1 %2062, label %2063, label %2068, !dbg !2946

2063:                                             ; preds = %2056
  %2064 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 44, !dbg !2947
  %2065 = load i8, ptr %2064, align 1, !dbg !2947, !tbaa !1434
  %2066 = icmp eq i8 %2065, 0, !dbg !2947
  br i1 %2066, label %2067, label %2068, !dbg !2948

2067:                                             ; preds = %2063
  store i32 %2052, ptr %2049, align 16, !dbg !2949, !tbaa !2935
  call void @llvm.dbg.value(metadata i32 0, metadata !2930, metadata !DIExpression()), !dbg !2931
  br label %2082, !dbg !2951

2068:                                             ; preds = %2063, %2056, %2048
  call void @llvm.dbg.value(metadata i32 %2053, metadata !2930, metadata !DIExpression()), !dbg !2931
  %2069 = icmp eq i32 %2050, %2052, !dbg !2952
  br i1 %2069, label %2082, label %2070, !dbg !2951

2070:                                             ; preds = %2068
  %2071 = icmp slt i32 %2053, -26, !dbg !2954
  %2072 = add nsw i32 %2053, 52, !dbg !2957
  %2073 = icmp sgt i32 %2053, 25, !dbg !2957
  %2074 = add nsw i32 %2053, -52, !dbg !2957
  %2075 = select i1 %2073, i32 %2074, i32 %2053, !dbg !2957
  %2076 = select i1 %2071, i32 %2072, i32 %2075, !dbg !2957
  %2077 = freeze i32 %2076, !dbg !2958
  call void @llvm.dbg.value(metadata i32 %2076, metadata !2930, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata ptr %1, metadata !2447, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 %2076, metadata !2450, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !2960
  %2078 = icmp slt i32 %2077, 1, !dbg !2958
  %2079 = mul i32 %2077, -2, !dbg !2961
  %2080 = or i32 %2079, 1, !dbg !2961
  %2081 = shl nsw i32 %2077, 1, !dbg !2961
  br i1 %2078, label %2082, label %2084, !dbg !2961

2082:                                             ; preds = %2070, %2068, %2067
  %2083 = phi i32 [ %2080, %2070 ], [ 1, %2068 ], [ 1, %2067 ]
  br label %2084, !dbg !2961

2084:                                             ; preds = %2082, %2070
  %2085 = phi i32 [ %2083, %2082 ], [ %2081, %2070 ]
  call void @llvm.dbg.value(metadata i32 %2085, metadata !2450, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 %2085, metadata !2452, metadata !DIExpression()), !dbg !2960
  %2086 = icmp sgt i32 %2085, 255, !dbg !2962
  %2087 = lshr i32 %2085, 8, !dbg !2963
  %2088 = select i1 %2086, i32 16, i32 0, !dbg !2963
  %2089 = select i1 %2086, i32 %2087, i32 %2085, !dbg !2963
  call void @llvm.dbg.value(metadata i32 %2089, metadata !2452, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 %2088, metadata !2451, metadata !DIExpression()), !dbg !2960
  %2090 = sext i32 %2089 to i64, !dbg !2964
  %2091 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2090, !dbg !2964
  %2092 = load i8, ptr %2091, align 1, !dbg !2964, !tbaa !1434
  %2093 = zext i8 %2092 to i32, !dbg !2964
  %2094 = add nuw nsw i32 %2088, %2093, !dbg !2965
  call void @llvm.dbg.value(metadata i32 %2094, metadata !2451, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i32 %2094, metadata !1491, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i32 %2085, metadata !1492, metadata !DIExpression()), !dbg !2966
  %2095 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !2968
  %2096 = load i64, ptr %2095, align 8, !dbg !2968, !tbaa !1448
  %2097 = zext i32 %2094 to i64, !dbg !2969
  %2098 = shl i64 %2096, %2097, !dbg !2969
  %2099 = zext i32 %2085 to i64, !dbg !2970
  %2100 = or i64 %2098, %2099, !dbg !2971
  store i64 %2100, ptr %2095, align 8, !dbg !2972, !tbaa !1448
  %2101 = sub nsw i32 %2046, %2094, !dbg !2973
  store i32 %2101, ptr %14, align 8, !dbg !2973, !tbaa !1413
  %2102 = icmp slt i32 %2101, 33, !dbg !2974
  br i1 %2102, label %2103, label %2111, !dbg !2975

2103:                                             ; preds = %2084
  %2104 = zext i32 %2101 to i64, !dbg !2976
  %2105 = shl i64 %2100, %2104, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %2105, metadata !1507, metadata !DIExpression()), !dbg !2977
  %2106 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2105) #8, !dbg !2979, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %2106, metadata !1507, metadata !DIExpression()), !dbg !2977
  %2107 = trunc i64 %2106 to i32, !dbg !2980
  store i32 %2107, ptr %2045, align 4, !dbg !2981, !tbaa !1468
  %2108 = load i32, ptr %14, align 8, !dbg !2982, !tbaa !1413
  %2109 = add nsw i32 %2108, 32, !dbg !2982
  store i32 %2109, ptr %14, align 8, !dbg !2982, !tbaa !1413
  %2110 = getelementptr inbounds i8, ptr %2045, i64 4, !dbg !2983
  store ptr %2110, ptr %8, align 8, !dbg !2983, !tbaa !1408
  br label %2111, !dbg !2984

2111:                                             ; preds = %2084, %2103
  %2112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, !dbg !2985
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 24, ptr noundef nonnull %2112, i32 noundef 16), !dbg !2986
  %2113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 50, !dbg !2987
  %2114 = load i32, ptr %2113, align 4, !dbg !2987, !tbaa !1756
  %2115 = icmp eq i32 %2114, 0, !dbg !2989
  br i1 %2115, label %2360, label %2116, !dbg !2990

2116:                                             ; preds = %2111
  call void @llvm.dbg.value(metadata i64 0, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2117 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 0, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2117, metadata !133, metadata !DIExpression()), !dbg !2995
  %2118 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2117, ptr nonnull elementtype(%struct.anon.14) %2117) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2118, metadata !134, metadata !DIExpression()), !dbg !2995
  %2119 = trunc i32 %2118 to i8, !dbg !2999
  %2120 = add i8 %2119, 16, !dbg !2999
  %2121 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 12, !dbg !3000
  store i8 %2120, ptr %2121, align 1, !dbg !3001, !tbaa !1434
  %2122 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 0, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %2122, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 1, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2123 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 1, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2123, metadata !133, metadata !DIExpression()), !dbg !2995
  %2124 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2123, ptr nonnull elementtype(%struct.anon.14) %2123) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2124, metadata !134, metadata !DIExpression()), !dbg !2995
  %2125 = trunc i32 %2124 to i8, !dbg !2999
  %2126 = add i8 %2125, 16, !dbg !2999
  %2127 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 13, !dbg !3000
  store i8 %2126, ptr %2127, align 1, !dbg !3001, !tbaa !1434
  %2128 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 1, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %2128, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 2, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2129 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 2, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2129, metadata !133, metadata !DIExpression()), !dbg !2995
  %2130 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2129, ptr nonnull elementtype(%struct.anon.14) %2129) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2130, metadata !134, metadata !DIExpression()), !dbg !2995
  %2131 = trunc i32 %2130 to i8, !dbg !2999
  %2132 = add i8 %2131, 16, !dbg !2999
  %2133 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 20, !dbg !3000
  store i8 %2132, ptr %2133, align 1, !dbg !3001, !tbaa !1434
  %2134 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 2, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %2134, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 3, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2135 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 3, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2135, metadata !133, metadata !DIExpression()), !dbg !2995
  %2136 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2135, ptr nonnull elementtype(%struct.anon.14) %2135) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2136, metadata !134, metadata !DIExpression()), !dbg !2995
  %2137 = trunc i32 %2136 to i8, !dbg !2999
  %2138 = add i8 %2137, 16, !dbg !2999
  %2139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 21, !dbg !3000
  store i8 %2138, ptr %2139, align 1, !dbg !3001, !tbaa !1434
  %2140 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 3, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %2140, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 4, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2141 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 4, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2141, metadata !133, metadata !DIExpression()), !dbg !2995
  %2142 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2141, ptr nonnull elementtype(%struct.anon.14) %2141) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2142, metadata !134, metadata !DIExpression()), !dbg !2995
  %2143 = trunc i32 %2142 to i8, !dbg !2999
  %2144 = add i8 %2143, 16, !dbg !2999
  %2145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 14, !dbg !3000
  store i8 %2144, ptr %2145, align 1, !dbg !3001, !tbaa !1434
  %2146 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 4, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %2146, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 5, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2147 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 5, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2147, metadata !133, metadata !DIExpression()), !dbg !2995
  %2148 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2147, ptr nonnull elementtype(%struct.anon.14) %2147) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2148, metadata !134, metadata !DIExpression()), !dbg !2995
  %2149 = trunc i32 %2148 to i8, !dbg !2999
  %2150 = add i8 %2149, 16, !dbg !2999
  %2151 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 15, !dbg !3000
  store i8 %2150, ptr %2151, align 1, !dbg !3001, !tbaa !1434
  %2152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 5, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 5, ptr noundef nonnull %2152, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 6, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2153 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 6, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2153, metadata !133, metadata !DIExpression()), !dbg !2995
  %2154 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2153, ptr nonnull elementtype(%struct.anon.14) %2153) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2154, metadata !134, metadata !DIExpression()), !dbg !2995
  %2155 = trunc i32 %2154 to i8, !dbg !2999
  %2156 = add i8 %2155, 16, !dbg !2999
  %2157 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 22, !dbg !3000
  store i8 %2156, ptr %2157, align 1, !dbg !3001, !tbaa !1434
  %2158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 6, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %2158, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 7, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2159 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 7, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2159, metadata !133, metadata !DIExpression()), !dbg !2995
  %2160 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2159, ptr nonnull elementtype(%struct.anon.14) %2159) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2160, metadata !134, metadata !DIExpression()), !dbg !2995
  %2161 = trunc i32 %2160 to i8, !dbg !2999
  %2162 = add i8 %2161, 16, !dbg !2999
  %2163 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 23, !dbg !3000
  store i8 %2162, ptr %2163, align 1, !dbg !3001, !tbaa !1434
  %2164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 7, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %2164, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 8, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2165 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 8, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2165, metadata !133, metadata !DIExpression()), !dbg !2995
  %2166 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2165, ptr nonnull elementtype(%struct.anon.14) %2165) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2166, metadata !134, metadata !DIExpression()), !dbg !2995
  %2167 = trunc i32 %2166 to i8, !dbg !2999
  %2168 = add i8 %2167, 16, !dbg !2999
  %2169 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 28, !dbg !3000
  store i8 %2168, ptr %2169, align 1, !dbg !3001, !tbaa !1434
  %2170 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 8, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %2170, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 9, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2171 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 9, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2171, metadata !133, metadata !DIExpression()), !dbg !2995
  %2172 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2171, ptr nonnull elementtype(%struct.anon.14) %2171) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2172, metadata !134, metadata !DIExpression()), !dbg !2995
  %2173 = trunc i32 %2172 to i8, !dbg !2999
  %2174 = add i8 %2173, 16, !dbg !2999
  %2175 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 29, !dbg !3000
  store i8 %2174, ptr %2175, align 1, !dbg !3001, !tbaa !1434
  %2176 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 9, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 9, ptr noundef nonnull %2176, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 10, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2177 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 10, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2177, metadata !133, metadata !DIExpression()), !dbg !2995
  %2178 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2177, ptr nonnull elementtype(%struct.anon.14) %2177) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2178, metadata !134, metadata !DIExpression()), !dbg !2995
  %2179 = trunc i32 %2178 to i8, !dbg !2999
  %2180 = add i8 %2179, 16, !dbg !2999
  %2181 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 36, !dbg !3000
  store i8 %2180, ptr %2181, align 1, !dbg !3001, !tbaa !1434
  %2182 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 10, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 10, ptr noundef nonnull %2182, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 11, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2183 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 11, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2183, metadata !133, metadata !DIExpression()), !dbg !2995
  %2184 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2183, ptr nonnull elementtype(%struct.anon.14) %2183) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2184, metadata !134, metadata !DIExpression()), !dbg !2995
  %2185 = trunc i32 %2184 to i8, !dbg !2999
  %2186 = add i8 %2185, 16, !dbg !2999
  %2187 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 37, !dbg !3000
  store i8 %2186, ptr %2187, align 1, !dbg !3001, !tbaa !1434
  %2188 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 11, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 11, ptr noundef nonnull %2188, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 12, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2189 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 12, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2189, metadata !133, metadata !DIExpression()), !dbg !2995
  %2190 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2189, ptr nonnull elementtype(%struct.anon.14) %2189) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2190, metadata !134, metadata !DIExpression()), !dbg !2995
  %2191 = trunc i32 %2190 to i8, !dbg !2999
  %2192 = add i8 %2191, 16, !dbg !2999
  %2193 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 30, !dbg !3000
  store i8 %2192, ptr %2193, align 1, !dbg !3001, !tbaa !1434
  %2194 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 12, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 12, ptr noundef nonnull %2194, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 13, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2195 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 13, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2195, metadata !133, metadata !DIExpression()), !dbg !2995
  %2196 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2195, ptr nonnull elementtype(%struct.anon.14) %2195) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2196, metadata !134, metadata !DIExpression()), !dbg !2995
  %2197 = trunc i32 %2196 to i8, !dbg !2999
  %2198 = add i8 %2197, 16, !dbg !2999
  %2199 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 31, !dbg !3000
  store i8 %2198, ptr %2199, align 1, !dbg !3001, !tbaa !1434
  %2200 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 13, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 13, ptr noundef nonnull %2200, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 14, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2201 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 14, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2201, metadata !133, metadata !DIExpression()), !dbg !2995
  %2202 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2201, ptr nonnull elementtype(%struct.anon.14) %2201) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2202, metadata !134, metadata !DIExpression()), !dbg !2995
  %2203 = trunc i32 %2202 to i8, !dbg !2999
  %2204 = add i8 %2203, 16, !dbg !2999
  %2205 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 38, !dbg !3000
  store i8 %2204, ptr %2205, align 1, !dbg !3001, !tbaa !1434
  %2206 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 14, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 14, ptr noundef nonnull %2206, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 15, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2207 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 15, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2207, metadata !133, metadata !DIExpression()), !dbg !2995
  %2208 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2207, ptr nonnull elementtype(%struct.anon.14) %2207) #9, !dbg !2997, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2208, metadata !134, metadata !DIExpression()), !dbg !2995
  %2209 = trunc i32 %2208 to i8, !dbg !2999
  %2210 = add i8 %2209, 16, !dbg !2999
  %2211 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 39, !dbg !3000
  store i8 %2210, ptr %2211, align 1, !dbg !3001, !tbaa !1434
  %2212 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 15, i64 1, !dbg !3002
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 15, ptr noundef nonnull %2212, i32 noundef 15), !dbg !3003
  call void @llvm.dbg.value(metadata i64 16, metadata !1340, metadata !DIExpression()), !dbg !1368
  br label %2360, !dbg !3004

2213:                                             ; preds = %2044
  %2214 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 50, !dbg !3006
  %2215 = load i32, ptr %2214, align 4, !dbg !3006, !tbaa !1756
  %2216 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 51, !dbg !3008
  %2217 = load i32, ptr %2216, align 8, !dbg !3008, !tbaa !1753
  %2218 = or i32 %2217, %2215, !dbg !3009
  %2219 = icmp eq i32 %2218, 0, !dbg !3009
  br i1 %2219, label %2360, label %2220, !dbg !3010

2220:                                             ; preds = %2213
  call void @llvm.dbg.value(metadata ptr %0, metadata !2926, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata ptr %1, metadata !2929, metadata !DIExpression()), !dbg !3011
  %2221 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 58, !dbg !3014
  %2222 = load i32, ptr %2221, align 16, !dbg !3014, !tbaa !2935
  %2223 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 60, !dbg !3015
  %2224 = load i32, ptr %2223, align 8, !dbg !3015, !tbaa !2937
  call void @llvm.dbg.value(metadata !DIArgList(i32 %2222, i32 %2224), metadata !2930, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3011
  %2225 = icmp eq i32 %2222, %2224, !dbg !3016
  br i1 %2225, label %2239, label %2226, !dbg !3017

2226:                                             ; preds = %2220
  %2227 = sub nsw i32 %2222, %2224, !dbg !3018
  call void @llvm.dbg.value(metadata i32 %2227, metadata !2930, metadata !DIExpression()), !dbg !3011
  %2228 = icmp slt i32 %2227, -26, !dbg !3019
  %2229 = add nsw i32 %2227, 52, !dbg !3020
  %2230 = icmp sgt i32 %2227, 25, !dbg !3020
  %2231 = add nsw i32 %2227, -52, !dbg !3020
  %2232 = select i1 %2230, i32 %2231, i32 %2227, !dbg !3020
  %2233 = select i1 %2228, i32 %2229, i32 %2232, !dbg !3020
  %2234 = freeze i32 %2233, !dbg !3021
  call void @llvm.dbg.value(metadata i32 %2233, metadata !2930, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata ptr %1, metadata !2447, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 %2233, metadata !2450, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !3023
  %2235 = icmp slt i32 %2234, 1, !dbg !3021
  %2236 = mul i32 %2234, -2, !dbg !3024
  %2237 = or i32 %2236, 1, !dbg !3024
  %2238 = shl nsw i32 %2234, 1, !dbg !3024
  br i1 %2235, label %2239, label %2241, !dbg !3024

2239:                                             ; preds = %2226, %2220
  %2240 = phi i32 [ %2237, %2226 ], [ 1, %2220 ]
  br label %2241, !dbg !3024

2241:                                             ; preds = %2239, %2226
  %2242 = phi i32 [ %2240, %2239 ], [ %2238, %2226 ]
  call void @llvm.dbg.value(metadata i32 %2242, metadata !2450, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 %2242, metadata !2452, metadata !DIExpression()), !dbg !3023
  %2243 = icmp sgt i32 %2242, 255, !dbg !3025
  %2244 = lshr i32 %2242, 8, !dbg !3026
  %2245 = select i1 %2243, i32 16, i32 0, !dbg !3026
  %2246 = select i1 %2243, i32 %2244, i32 %2242, !dbg !3026
  call void @llvm.dbg.value(metadata i32 %2246, metadata !2452, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 %2245, metadata !2451, metadata !DIExpression()), !dbg !3023
  %2247 = sext i32 %2246 to i64, !dbg !3027
  %2248 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2247, !dbg !3027
  %2249 = load i8, ptr %2248, align 1, !dbg !3027, !tbaa !1434
  %2250 = zext i8 %2249 to i32, !dbg !3027
  %2251 = add nuw nsw i32 %2245, %2250, !dbg !3028
  call void @llvm.dbg.value(metadata i32 %2251, metadata !2451, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %2251, metadata !1491, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %2242, metadata !1492, metadata !DIExpression()), !dbg !3029
  %2252 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !3031
  %2253 = load i64, ptr %2252, align 8, !dbg !3031, !tbaa !1448
  %2254 = zext i32 %2251 to i64, !dbg !3032
  %2255 = shl i64 %2253, %2254, !dbg !3032
  %2256 = zext i32 %2242 to i64, !dbg !3033
  %2257 = or i64 %2255, %2256, !dbg !3034
  store i64 %2257, ptr %2252, align 8, !dbg !3035, !tbaa !1448
  %2258 = sub nsw i32 %2046, %2251, !dbg !3036
  store i32 %2258, ptr %14, align 8, !dbg !3036, !tbaa !1413
  %2259 = icmp slt i32 %2258, 33, !dbg !3037
  br i1 %2259, label %2260, label %2268, !dbg !3038

2260:                                             ; preds = %2241
  %2261 = zext i32 %2258 to i64, !dbg !3039
  %2262 = shl i64 %2257, %2261, !dbg !3039
  call void @llvm.dbg.value(metadata i64 %2262, metadata !1507, metadata !DIExpression()), !dbg !3040
  %2263 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2262) #8, !dbg !3042, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %2263, metadata !1507, metadata !DIExpression()), !dbg !3040
  %2264 = trunc i64 %2263 to i32, !dbg !3043
  store i32 %2264, ptr %2045, align 4, !dbg !3044, !tbaa !1468
  %2265 = load i32, ptr %14, align 8, !dbg !3045, !tbaa !1413
  %2266 = add nsw i32 %2265, 32, !dbg !3045
  store i32 %2266, ptr %14, align 8, !dbg !3045, !tbaa !1413
  %2267 = getelementptr inbounds i8, ptr %2045, i64 4, !dbg !3046
  store ptr %2267, ptr %8, align 8, !dbg !3046, !tbaa !1408
  br label %2268, !dbg !3047

2268:                                             ; preds = %2241, %2260
  call void @llvm.dbg.value(metadata ptr %0, metadata !3048, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %1, metadata !3053, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i32 0, metadata !3054, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i32 3, metadata !3055, metadata !DIExpression()), !dbg !3058
  %2269 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 49, !dbg !3060
  %2270 = load i32, ptr %2269, align 16, !dbg !3060, !tbaa !1640
  %2271 = icmp eq i32 %2270, 0, !dbg !3062
  br i1 %2271, label %2308, label %2272, !dbg !3063

2272:                                             ; preds = %2268
  call void @llvm.dbg.value(metadata i32 0, metadata !3056, metadata !DIExpression()), !dbg !3058
  %2273 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  call void @llvm.dbg.value(metadata i64 0, metadata !3056, metadata !DIExpression()), !dbg !3058
  %2274 = load i32, ptr %2214, align 4, !dbg !3064, !tbaa !1756
  %2275 = and i32 %2274, 1, !dbg !3069
  %2276 = icmp eq i32 %2275, 0, !dbg !3069
  br i1 %2276, label %2282, label %2277, !dbg !3070

2277:                                             ; preds = %2272
  %2278 = load ptr, ptr %2273, align 16, !dbg !3071, !tbaa !3072
  %2279 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 0, !dbg !3073
  %2280 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 0, !dbg !3074
  call void %2278(ptr noundef nonnull %2279, ptr noundef nonnull %2280) #7, !dbg !3075
  %2281 = load i32, ptr %2214, align 4, !dbg !3064, !tbaa !1756
  br label %2282, !dbg !3075

2282:                                             ; preds = %2277, %2272
  %2283 = phi i32 [ %2274, %2272 ], [ %2281, %2277 ], !dbg !3064
  call void @llvm.dbg.value(metadata i64 1, metadata !3056, metadata !DIExpression()), !dbg !3058
  %2284 = and i32 %2283, 2, !dbg !3069
  %2285 = icmp eq i32 %2284, 0, !dbg !3069
  br i1 %2285, label %2291, label %2286, !dbg !3070

2286:                                             ; preds = %2282
  %2287 = load ptr, ptr %2273, align 16, !dbg !3071, !tbaa !3072
  %2288 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 4, !dbg !3073
  %2289 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 1, !dbg !3074
  call void %2287(ptr noundef nonnull %2288, ptr noundef nonnull %2289) #7, !dbg !3075
  %2290 = load i32, ptr %2214, align 4, !dbg !3064, !tbaa !1756
  br label %2291, !dbg !3075

2291:                                             ; preds = %2286, %2282
  %2292 = phi i32 [ %2290, %2286 ], [ %2283, %2282 ], !dbg !3064
  call void @llvm.dbg.value(metadata i64 2, metadata !3056, metadata !DIExpression()), !dbg !3058
  %2293 = and i32 %2292, 4, !dbg !3069
  %2294 = icmp eq i32 %2293, 0, !dbg !3069
  br i1 %2294, label %2300, label %2295, !dbg !3070

2295:                                             ; preds = %2291
  %2296 = load ptr, ptr %2273, align 16, !dbg !3071, !tbaa !3072
  %2297 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 8, !dbg !3073
  %2298 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 2, !dbg !3074
  call void %2296(ptr noundef nonnull %2297, ptr noundef nonnull %2298) #7, !dbg !3075
  %2299 = load i32, ptr %2214, align 4, !dbg !3064, !tbaa !1756
  br label %2300, !dbg !3075

2300:                                             ; preds = %2295, %2291
  %2301 = phi i32 [ %2299, %2295 ], [ %2292, %2291 ], !dbg !3064
  call void @llvm.dbg.value(metadata i64 3, metadata !3056, metadata !DIExpression()), !dbg !3058
  %2302 = and i32 %2301, 8, !dbg !3069
  %2303 = icmp eq i32 %2302, 0, !dbg !3069
  br i1 %2303, label %2308, label %2304, !dbg !3070

2304:                                             ; preds = %2300
  %2305 = load ptr, ptr %2273, align 16, !dbg !3071, !tbaa !3072
  %2306 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 12, !dbg !3073
  %2307 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 2, i64 3, !dbg !3074
  call void %2305(ptr noundef nonnull %2306, ptr noundef nonnull %2307) #7, !dbg !3075
  br label %2308, !dbg !3075

2308:                                             ; preds = %2304, %2300, %2268
  br label %2309, !dbg !3076

2309:                                             ; preds = %2308, %2357
  %2310 = phi i64 [ %2358, %2357 ], [ 0, %2308 ]
  call void @llvm.dbg.value(metadata i64 %2310, metadata !3056, metadata !DIExpression()), !dbg !3058
  %2311 = load i32, ptr %2214, align 4, !dbg !3078, !tbaa !1756
  %2312 = trunc i64 %2310 to i32, !dbg !3081
  %2313 = shl nuw nsw i32 1, %2312, !dbg !3081
  %2314 = and i32 %2313, %2311, !dbg !3082
  %2315 = icmp eq i32 %2314, 0, !dbg !3082
  br i1 %2315, label %2357, label %2316, !dbg !3083

2316:                                             ; preds = %2309
  %2317 = shl nsw i64 %2310, 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3057, metadata !DIExpression()), !dbg !3058
  %2318 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %2317, !dbg !3084
  call void @llvm.dbg.value(metadata ptr %2318, metadata !133, metadata !DIExpression()), !dbg !3088
  %2319 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2318, ptr nonnull elementtype(%struct.anon.14) %2318) #9, !dbg !3090, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2319, metadata !134, metadata !DIExpression()), !dbg !3088
  %2320 = trunc i32 %2319 to i8, !dbg !3091
  %2321 = add i8 %2320, 16, !dbg !3091
  %2322 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %2317, !dbg !3092
  %2323 = load i32, ptr %2322, align 16, !dbg !3092, !tbaa !1468
  %2324 = sext i32 %2323 to i64, !dbg !3093
  %2325 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 %2324, !dbg !3093
  store i8 %2321, ptr %2325, align 1, !dbg !3094, !tbaa !1434
  %2326 = trunc i64 %2317 to i32, !dbg !3095
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 2, i32 noundef %2326, ptr noundef nonnull %2318, i32 noundef 16), !dbg !3095
  call void @llvm.dbg.value(metadata i64 1, metadata !3057, metadata !DIExpression()), !dbg !3058
  %2327 = or i64 %2317, 1, !dbg !3096
  %2328 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %2327, !dbg !3084
  call void @llvm.dbg.value(metadata ptr %2328, metadata !133, metadata !DIExpression()), !dbg !3088
  %2329 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2328, ptr nonnull elementtype(%struct.anon.14) %2328) #9, !dbg !3090, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2329, metadata !134, metadata !DIExpression()), !dbg !3088
  %2330 = trunc i32 %2329 to i8, !dbg !3091
  %2331 = add i8 %2330, 16, !dbg !3091
  %2332 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %2327, !dbg !3092
  %2333 = load i32, ptr %2332, align 4, !dbg !3092, !tbaa !1468
  %2334 = sext i32 %2333 to i64, !dbg !3093
  %2335 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 %2334, !dbg !3093
  store i8 %2331, ptr %2335, align 1, !dbg !3094, !tbaa !1434
  %2336 = trunc i64 %2327 to i32, !dbg !3095
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 2, i32 noundef %2336, ptr noundef nonnull %2328, i32 noundef 16), !dbg !3095
  call void @llvm.dbg.value(metadata i64 2, metadata !3057, metadata !DIExpression()), !dbg !3058
  %2337 = or i64 %2317, 2, !dbg !3096
  %2338 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %2337, !dbg !3084
  call void @llvm.dbg.value(metadata ptr %2338, metadata !133, metadata !DIExpression()), !dbg !3088
  %2339 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2338, ptr nonnull elementtype(%struct.anon.14) %2338) #9, !dbg !3090, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2339, metadata !134, metadata !DIExpression()), !dbg !3088
  %2340 = trunc i32 %2339 to i8, !dbg !3091
  %2341 = add i8 %2340, 16, !dbg !3091
  %2342 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %2337, !dbg !3092
  %2343 = load i32, ptr %2342, align 8, !dbg !3092, !tbaa !1468
  %2344 = sext i32 %2343 to i64, !dbg !3093
  %2345 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 %2344, !dbg !3093
  store i8 %2341, ptr %2345, align 1, !dbg !3094, !tbaa !1434
  %2346 = trunc i64 %2337 to i32, !dbg !3095
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 2, i32 noundef %2346, ptr noundef nonnull %2338, i32 noundef 16), !dbg !3095
  call void @llvm.dbg.value(metadata i64 3, metadata !3057, metadata !DIExpression()), !dbg !3058
  %2347 = or i64 %2317, 3, !dbg !3096
  %2348 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 %2347, !dbg !3084
  call void @llvm.dbg.value(metadata ptr %2348, metadata !133, metadata !DIExpression()), !dbg !3088
  %2349 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2348, ptr nonnull elementtype(%struct.anon.14) %2348) #9, !dbg !3090, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2349, metadata !134, metadata !DIExpression()), !dbg !3088
  %2350 = trunc i32 %2349 to i8, !dbg !3091
  %2351 = add i8 %2350, 16, !dbg !3091
  %2352 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %2347, !dbg !3092
  %2353 = load i32, ptr %2352, align 4, !dbg !3092, !tbaa !1468
  %2354 = sext i32 %2353 to i64, !dbg !3093
  %2355 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 %2354, !dbg !3093
  store i8 %2351, ptr %2355, align 1, !dbg !3094, !tbaa !1434
  %2356 = trunc i64 %2347 to i32, !dbg !3095
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 2, i32 noundef %2356, ptr noundef nonnull %2348, i32 noundef 16), !dbg !3095
  call void @llvm.dbg.value(metadata i64 4, metadata !3057, metadata !DIExpression()), !dbg !3058
  br label %2357, !dbg !3097

2357:                                             ; preds = %2316, %2309
  %2358 = add nuw nsw i64 %2310, 1, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %2358, metadata !3056, metadata !DIExpression()), !dbg !3058
  %2359 = icmp eq i64 %2358, 4, !dbg !3098
  br i1 %2359, label %2360, label %2309, !dbg !3076, !llvm.loop !3099

2360:                                             ; preds = %2357, %2116, %2213, %2111
  %2361 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 51, !dbg !3004
  %2362 = load i32, ptr %2361, align 8, !dbg !3004, !tbaa !1753
  %2363 = icmp eq i32 %2362, 0, !dbg !3101
  br i1 %2363, label %2419, label %2364, !dbg !3102

2364:                                             ; preds = %2360
  %2365 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 1, !dbg !3103
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 3, i32 noundef 25, ptr noundef nonnull %2365, i32 noundef 4), !dbg !3105
  %2366 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 1, i64 1, !dbg !3106
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 3, i32 noundef 26, ptr noundef nonnull %2366, i32 noundef 4), !dbg !3107
  %2367 = load i32, ptr %2361, align 8, !dbg !3108, !tbaa !1753
  %2368 = and i32 %2367, 2, !dbg !3110
  %2369 = icmp eq i32 %2368, 0, !dbg !3110
  br i1 %2369, label %2419, label %2370, !dbg !3111

2370:                                             ; preds = %2364
  call void @llvm.dbg.value(metadata i64 16, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2371 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 16, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %2371, metadata !133, metadata !DIExpression()), !dbg !3116
  %2372 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2371, ptr nonnull elementtype(%struct.anon.14) %2371) #9, !dbg !3118, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2372, metadata !134, metadata !DIExpression()), !dbg !3116
  %2373 = trunc i32 %2372 to i8, !dbg !3119
  %2374 = add i8 %2373, 16, !dbg !3119
  %2375 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 9, !dbg !3120
  store i8 %2374, ptr %2375, align 1, !dbg !3121, !tbaa !1434
  %2376 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 16, i64 1, !dbg !3122
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 16, ptr noundef nonnull %2376, i32 noundef 15), !dbg !3123
  call void @llvm.dbg.value(metadata i64 17, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2377 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 17, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %2377, metadata !133, metadata !DIExpression()), !dbg !3116
  %2378 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2377, ptr nonnull elementtype(%struct.anon.14) %2377) #9, !dbg !3118, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2378, metadata !134, metadata !DIExpression()), !dbg !3116
  %2379 = trunc i32 %2378 to i8, !dbg !3119
  %2380 = add i8 %2379, 16, !dbg !3119
  %2381 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 10, !dbg !3120
  store i8 %2380, ptr %2381, align 1, !dbg !3121, !tbaa !1434
  %2382 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 17, i64 1, !dbg !3122
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 17, ptr noundef nonnull %2382, i32 noundef 15), !dbg !3123
  call void @llvm.dbg.value(metadata i64 18, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2383 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 18, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %2383, metadata !133, metadata !DIExpression()), !dbg !3116
  %2384 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2383, ptr nonnull elementtype(%struct.anon.14) %2383) #9, !dbg !3118, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2384, metadata !134, metadata !DIExpression()), !dbg !3116
  %2385 = trunc i32 %2384 to i8, !dbg !3119
  %2386 = add i8 %2385, 16, !dbg !3119
  %2387 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 17, !dbg !3120
  store i8 %2386, ptr %2387, align 1, !dbg !3121, !tbaa !1434
  %2388 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 18, i64 1, !dbg !3122
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 18, ptr noundef nonnull %2388, i32 noundef 15), !dbg !3123
  call void @llvm.dbg.value(metadata i64 19, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2389 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 19, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %2389, metadata !133, metadata !DIExpression()), !dbg !3116
  %2390 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2389, ptr nonnull elementtype(%struct.anon.14) %2389) #9, !dbg !3118, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2390, metadata !134, metadata !DIExpression()), !dbg !3116
  %2391 = trunc i32 %2390 to i8, !dbg !3119
  %2392 = add i8 %2391, 16, !dbg !3119
  %2393 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 18, !dbg !3120
  store i8 %2392, ptr %2393, align 1, !dbg !3121, !tbaa !1434
  %2394 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 19, i64 1, !dbg !3122
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 19, ptr noundef nonnull %2394, i32 noundef 15), !dbg !3123
  call void @llvm.dbg.value(metadata i64 20, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2395 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 20, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %2395, metadata !133, metadata !DIExpression()), !dbg !3116
  %2396 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2395, ptr nonnull elementtype(%struct.anon.14) %2395) #9, !dbg !3118, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2396, metadata !134, metadata !DIExpression()), !dbg !3116
  %2397 = trunc i32 %2396 to i8, !dbg !3119
  %2398 = add i8 %2397, 16, !dbg !3119
  %2399 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 33, !dbg !3120
  store i8 %2398, ptr %2399, align 1, !dbg !3121, !tbaa !1434
  %2400 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 20, i64 1, !dbg !3122
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 20, ptr noundef nonnull %2400, i32 noundef 15), !dbg !3123
  call void @llvm.dbg.value(metadata i64 21, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2401 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 21, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %2401, metadata !133, metadata !DIExpression()), !dbg !3116
  %2402 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2401, ptr nonnull elementtype(%struct.anon.14) %2401) #9, !dbg !3118, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2402, metadata !134, metadata !DIExpression()), !dbg !3116
  %2403 = trunc i32 %2402 to i8, !dbg !3119
  %2404 = add i8 %2403, 16, !dbg !3119
  %2405 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 34, !dbg !3120
  store i8 %2404, ptr %2405, align 1, !dbg !3121, !tbaa !1434
  %2406 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 21, i64 1, !dbg !3122
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 21, ptr noundef nonnull %2406, i32 noundef 15), !dbg !3123
  call void @llvm.dbg.value(metadata i64 22, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2407 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 22, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %2407, metadata !133, metadata !DIExpression()), !dbg !3116
  %2408 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2407, ptr nonnull elementtype(%struct.anon.14) %2407) #9, !dbg !3118, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2408, metadata !134, metadata !DIExpression()), !dbg !3116
  %2409 = trunc i32 %2408 to i8, !dbg !3119
  %2410 = add i8 %2409, 16, !dbg !3119
  %2411 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 41, !dbg !3120
  store i8 %2410, ptr %2411, align 1, !dbg !3121, !tbaa !1434
  %2412 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 22, i64 1, !dbg !3122
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 22, ptr noundef nonnull %2412, i32 noundef 15), !dbg !3123
  call void @llvm.dbg.value(metadata i64 23, metadata !1340, metadata !DIExpression()), !dbg !1368
  %2413 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 23, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %2413, metadata !133, metadata !DIExpression()), !dbg !3116
  %2414 = call i32 asm "pxor     %mm7,  %mm7 \0Amovq     ($1),   %mm0 \0Amovq     8($1),  %mm1 \0Apacksswb 16($1), %mm0 \0Apacksswb 24($1), %mm1 \0Apcmpeqb  %mm7,  %mm0 \0Apcmpeqb  %mm7,  %mm1 \0Apaddb    %mm0,  %mm1 \0Apsadbw   %mm7,  %mm1 \0Amovd     %mm1,  $0    \0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2413, ptr nonnull elementtype(%struct.anon.14) %2413) #9, !dbg !3118, !srcloc !2998
  call void @llvm.dbg.value(metadata i32 %2414, metadata !134, metadata !DIExpression()), !dbg !3116
  %2415 = trunc i32 %2414 to i8, !dbg !3119
  %2416 = add i8 %2415, 16, !dbg !3119
  %2417 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 42, !dbg !3120
  store i8 %2416, ptr %2417, align 1, !dbg !3121, !tbaa !1434
  %2418 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44, i32 3, i64 23, i64 1, !dbg !3122
  call fastcc void @block_residual_write_cavlc(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 23, ptr noundef nonnull %2418, i32 noundef 15), !dbg !3123
  call void @llvm.dbg.value(metadata i64 24, metadata !1340, metadata !DIExpression()), !dbg !1368
  br label %2419, !dbg !3124

2419:                                             ; preds = %2370, %2364, %2360
  call void @llvm.dbg.value(metadata ptr %1, metadata !1400, metadata !DIExpression()), !dbg !3126
  %2420 = load ptr, ptr %8, align 8, !dbg !3124, !tbaa !1408
  %2421 = load ptr, ptr %1, align 8, !dbg !3127, !tbaa !1410
  %2422 = ptrtoint ptr %2420 to i64, !dbg !3128
  %2423 = ptrtoint ptr %2421 to i64, !dbg !3128
  %2424 = sub i64 %2422, %2423, !dbg !3128
  %2425 = load i32, ptr %14, align 8, !dbg !3129, !tbaa !1413
  %2426 = trunc i64 %2424 to i32, !dbg !3130
  %2427 = shl i32 %2426, 3, !dbg !3130
  %2428 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 1, !dbg !3131
  %2429 = load i32, ptr %2428, align 4, !dbg !3132, !tbaa !1603
  %2430 = add i32 %1889, %2425, !dbg !3133
  %2431 = sub i32 64, %2430, !dbg !3133
  %2432 = add i32 %2431, %2429, !dbg !3133
  %2433 = add i32 %2432, %2427, !dbg !3132
  store i32 %2433, ptr %2428, align 4, !dbg !3132, !tbaa !1603
  br label %2434, !dbg !3134

2434:                                             ; preds = %2419, %105, %23
  ret void, !dbg !3134
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !3135 void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write_ue(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !dbg !1476 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1475, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i32 %1, metadata !1480, metadata !DIExpression()), !dbg !3139
  %3 = add nsw i32 %1, 1, !dbg !3140
  %4 = sext i32 %3 to i64, !dbg !3141
  %5 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %4, !dbg !3141
  %6 = load i8, ptr %5, align 1, !dbg !3141, !tbaa !1434
  %7 = zext i8 %6 to i32, !dbg !3141
  call void @llvm.dbg.value(metadata ptr %0, metadata !1486, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 %7, metadata !1491, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 %3, metadata !1492, metadata !DIExpression()), !dbg !3142
  %8 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3, !dbg !3144
  %9 = load i64, ptr %8, align 8, !dbg !3144, !tbaa !1448
  %10 = zext i8 %6 to i64, !dbg !3145
  %11 = shl i64 %9, %10, !dbg !3145
  %12 = zext i32 %3 to i64, !dbg !3146
  %13 = or i64 %11, %12, !dbg !3147
  store i64 %13, ptr %8, align 8, !dbg !3148, !tbaa !1448
  %14 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4, !dbg !3149
  %15 = load i32, ptr %14, align 8, !dbg !3150, !tbaa !1413
  %16 = sub nsw i32 %15, %7, !dbg !3150
  store i32 %16, ptr %14, align 8, !dbg !3150, !tbaa !1413
  %17 = icmp slt i32 %16, 33, !dbg !3151
  br i1 %17, label %18, label %28, !dbg !3152

18:                                               ; preds = %2
  %19 = zext i32 %16 to i64, !dbg !3153
  %20 = shl i64 %13, %19, !dbg !3153
  call void @llvm.dbg.value(metadata i64 %20, metadata !1507, metadata !DIExpression()), !dbg !3154
  %21 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %20) #8, !dbg !3156, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %21, metadata !1507, metadata !DIExpression()), !dbg !3154
  %22 = trunc i64 %21 to i32, !dbg !3157
  %23 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3158
  %24 = load ptr, ptr %23, align 8, !dbg !3158, !tbaa !1408
  store i32 %22, ptr %24, align 4, !dbg !3159, !tbaa !1468
  %25 = load i32, ptr %14, align 8, !dbg !3160, !tbaa !1413
  %26 = add nsw i32 %25, 32, !dbg !3160
  store i32 %26, ptr %14, align 8, !dbg !3160, !tbaa !1413
  %27 = getelementptr inbounds i8, ptr %24, i64 4, !dbg !3161
  store ptr %27, ptr %23, align 8, !dbg !3161, !tbaa !1408
  br label %28, !dbg !3162

28:                                               ; preds = %2, %18
  ret void, !dbg !3163
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: inlinehint nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !dbg !1487 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1486, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i32 %1, metadata !1491, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i32 %2, metadata !1492, metadata !DIExpression()), !dbg !3164
  %4 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3, !dbg !3165
  %5 = load i64, ptr %4, align 8, !dbg !3165, !tbaa !1448
  %6 = zext i32 %1 to i64, !dbg !3166
  %7 = shl i64 %5, %6, !dbg !3166
  %8 = zext i32 %2 to i64, !dbg !3167
  %9 = or i64 %7, %8, !dbg !3168
  store i64 %9, ptr %4, align 8, !dbg !3169, !tbaa !1448
  %10 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4, !dbg !3170
  %11 = load i32, ptr %10, align 8, !dbg !3171, !tbaa !1413
  %12 = sub nsw i32 %11, %1, !dbg !3171
  store i32 %12, ptr %10, align 8, !dbg !3171, !tbaa !1413
  %13 = icmp slt i32 %12, 33, !dbg !3172
  br i1 %13, label %14, label %24, !dbg !3173

14:                                               ; preds = %3
  %15 = zext i32 %12 to i64, !dbg !3174
  %16 = shl i64 %9, %15, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %16, metadata !1507, metadata !DIExpression()), !dbg !3175
  %17 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %16) #8, !dbg !3177, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %17, metadata !1507, metadata !DIExpression()), !dbg !3175
  %18 = trunc i64 %17 to i32, !dbg !3178
  %19 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3179
  %20 = load ptr, ptr %19, align 8, !dbg !3179, !tbaa !1408
  store i32 %18, ptr %20, align 4, !dbg !3180, !tbaa !1468
  %21 = load i32, ptr %10, align 8, !dbg !3181, !tbaa !1413
  %22 = add nsw i32 %21, 32, !dbg !3181
  store i32 %22, ptr %10, align 8, !dbg !3181, !tbaa !1413
  %23 = getelementptr inbounds i8, ptr %20, i64 4, !dbg !3182
  store ptr %23, ptr %19, align 8, !dbg !3182, !tbaa !1408
  br label %24, !dbg !3183

24:                                               ; preds = %14, %3
  ret void, !dbg !3184
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write_te(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !dbg !2025 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2024, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i32 %1, metadata !2029, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i32 %2, metadata !2030, metadata !DIExpression()), !dbg !3185
  %4 = icmp eq i32 %1, 1, !dbg !3186
  br i1 %4, label %5, label %22, !dbg !3187

5:                                                ; preds = %3
  %6 = xor i32 %2, 1, !dbg !3188
  call void @llvm.dbg.value(metadata ptr %0, metadata !1438, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i32 %6, metadata !1443, metadata !DIExpression()), !dbg !3189
  %7 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3, !dbg !3191
  %8 = load i64, ptr %7, align 8, !dbg !3192, !tbaa !1448
  %9 = shl i64 %8, 1, !dbg !3192
  %10 = zext i32 %6 to i64, !dbg !3193
  %11 = or i64 %9, %10, !dbg !3194
  store i64 %11, ptr %7, align 8, !dbg !3194, !tbaa !1448
  %12 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4, !dbg !3195
  %13 = load i32, ptr %12, align 8, !dbg !3196, !tbaa !1413
  %14 = add nsw i32 %13, -1, !dbg !3196
  store i32 %14, ptr %12, align 8, !dbg !3196, !tbaa !1413
  %15 = icmp eq i32 %14, 32, !dbg !3197
  br i1 %15, label %16, label %50, !dbg !3198

16:                                               ; preds = %5
  %17 = trunc i64 %11 to i32, !dbg !3199
  call void @llvm.dbg.value(metadata i32 %17, metadata !1457, metadata !DIExpression()), !dbg !3200
  %18 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %17) #8, !dbg !3202, !srcloc !1466
  call void @llvm.dbg.value(metadata i32 %18, metadata !1457, metadata !DIExpression()), !dbg !3200
  %19 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3203
  %20 = load ptr, ptr %19, align 8, !dbg !3203, !tbaa !1408
  store i32 %18, ptr %20, align 4, !dbg !3204, !tbaa !1468
  %21 = getelementptr inbounds i8, ptr %20, i64 4, !dbg !3205
  store ptr %21, ptr %19, align 8, !dbg !3205, !tbaa !1408
  store i32 64, ptr %12, align 8, !dbg !3206, !tbaa !1413
  br label %50, !dbg !3207

22:                                               ; preds = %3
  %23 = icmp sgt i32 %1, 1, !dbg !3208
  br i1 %23, label %24, label %50, !dbg !3209

24:                                               ; preds = %22
  call void @llvm.dbg.value(metadata ptr %0, metadata !1475, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i32 %2, metadata !1480, metadata !DIExpression()), !dbg !3210
  %25 = add nsw i32 %2, 1, !dbg !3212
  %26 = sext i32 %25 to i64, !dbg !3213
  %27 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %26, !dbg !3213
  %28 = load i8, ptr %27, align 1, !dbg !3213, !tbaa !1434
  %29 = zext i8 %28 to i32, !dbg !3213
  call void @llvm.dbg.value(metadata ptr %0, metadata !1486, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 %29, metadata !1491, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 %25, metadata !1492, metadata !DIExpression()), !dbg !3214
  %30 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3, !dbg !3216
  %31 = load i64, ptr %30, align 8, !dbg !3216, !tbaa !1448
  %32 = zext i8 %28 to i64, !dbg !3217
  %33 = shl i64 %31, %32, !dbg !3217
  %34 = zext i32 %25 to i64, !dbg !3218
  %35 = or i64 %33, %34, !dbg !3219
  store i64 %35, ptr %30, align 8, !dbg !3220, !tbaa !1448
  %36 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4, !dbg !3221
  %37 = load i32, ptr %36, align 8, !dbg !3222, !tbaa !1413
  %38 = sub nsw i32 %37, %29, !dbg !3222
  store i32 %38, ptr %36, align 8, !dbg !3222, !tbaa !1413
  %39 = icmp slt i32 %38, 33, !dbg !3223
  br i1 %39, label %40, label %50, !dbg !3224

40:                                               ; preds = %24
  %41 = zext i32 %38 to i64, !dbg !3225
  %42 = shl i64 %35, %41, !dbg !3225
  call void @llvm.dbg.value(metadata i64 %42, metadata !1507, metadata !DIExpression()), !dbg !3226
  %43 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %42) #8, !dbg !3228, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %43, metadata !1507, metadata !DIExpression()), !dbg !3226
  %44 = trunc i64 %43 to i32, !dbg !3229
  %45 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3230
  %46 = load ptr, ptr %45, align 8, !dbg !3230, !tbaa !1408
  store i32 %44, ptr %46, align 4, !dbg !3231, !tbaa !1468
  %47 = load i32, ptr %36, align 8, !dbg !3232, !tbaa !1413
  %48 = add nsw i32 %47, 32, !dbg !3232
  store i32 %48, ptr %36, align 8, !dbg !3232, !tbaa !1413
  %49 = getelementptr inbounds i8, ptr %46, i64 4, !dbg !3233
  store ptr %49, ptr %45, align 8, !dbg !3233, !tbaa !1408
  br label %50, !dbg !3234

50:                                               ; preds = %40, %24, %16, %5, %22
  ret void, !dbg !3235
}

declare !dbg !3236 void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write_se(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !dbg !2448 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2447, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i32 %1, metadata !2450, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !3239
  %3 = icmp slt i32 %1, 1, !dbg !3240
  %4 = mul i32 %1, -2, !dbg !3241
  %5 = or i32 %4, 1, !dbg !3241
  %6 = shl nsw i32 %1, 1, !dbg !3241
  %7 = select i1 %3, i32 %5, i32 %6, !dbg !3241
  call void @llvm.dbg.value(metadata i32 %7, metadata !2450, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i32 %7, metadata !2452, metadata !DIExpression()), !dbg !3239
  %8 = icmp sgt i32 %7, 255, !dbg !3242
  %9 = lshr i32 %7, 8, !dbg !3243
  %10 = select i1 %8, i32 16, i32 0, !dbg !3243
  %11 = select i1 %8, i32 %9, i32 %7, !dbg !3243
  call void @llvm.dbg.value(metadata i32 %11, metadata !2452, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i32 %10, metadata !2451, metadata !DIExpression()), !dbg !3239
  %12 = sext i32 %11 to i64, !dbg !3244
  %13 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %12, !dbg !3244
  %14 = load i8, ptr %13, align 1, !dbg !3244, !tbaa !1434
  %15 = zext i8 %14 to i32, !dbg !3244
  %16 = add nuw nsw i32 %10, %15, !dbg !3245
  call void @llvm.dbg.value(metadata i32 %16, metadata !2451, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata ptr %0, metadata !1486, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i32 %16, metadata !1491, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i32 %7, metadata !1492, metadata !DIExpression()), !dbg !3246
  %17 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3, !dbg !3248
  %18 = load i64, ptr %17, align 8, !dbg !3248, !tbaa !1448
  %19 = zext i32 %16 to i64, !dbg !3249
  %20 = shl i64 %18, %19, !dbg !3249
  %21 = zext i32 %7 to i64, !dbg !3250
  %22 = or i64 %20, %21, !dbg !3251
  store i64 %22, ptr %17, align 8, !dbg !3252, !tbaa !1448
  %23 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4, !dbg !3253
  %24 = load i32, ptr %23, align 8, !dbg !3254, !tbaa !1413
  %25 = sub nsw i32 %24, %16, !dbg !3254
  store i32 %25, ptr %23, align 8, !dbg !3254, !tbaa !1413
  %26 = icmp slt i32 %25, 33, !dbg !3255
  br i1 %26, label %27, label %37, !dbg !3256

27:                                               ; preds = %2
  %28 = zext i32 %25 to i64, !dbg !3257
  %29 = shl i64 %22, %28, !dbg !3257
  call void @llvm.dbg.value(metadata i64 %29, metadata !1507, metadata !DIExpression()), !dbg !3258
  %30 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %29) #8, !dbg !3260, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %30, metadata !1507, metadata !DIExpression()), !dbg !3258
  %31 = trunc i64 %30 to i32, !dbg !3261
  %32 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3262
  %33 = load ptr, ptr %32, align 8, !dbg !3262, !tbaa !1408
  store i32 %31, ptr %33, align 4, !dbg !3263, !tbaa !1468
  %34 = load i32, ptr %23, align 8, !dbg !3264, !tbaa !1413
  %35 = add nsw i32 %34, 32, !dbg !3264
  store i32 %35, ptr %23, align 8, !dbg !3264, !tbaa !1413
  %36 = getelementptr inbounds i8, ptr %33, i64 4, !dbg !3265
  store ptr %36, ptr %32, align 8, !dbg !3265, !tbaa !1408
  br label %37, !dbg !3266

37:                                               ; preds = %2, %27
  ret void, !dbg !3267
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cavlc_mb8x8_mvd(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !dbg !3268 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3270, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata ptr %1, metadata !3271, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i32 %2, metadata !3272, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i32 %3, metadata !3273, metadata !DIExpression()), !dbg !3274
  %5 = zext i32 %2 to i64
  %6 = sext i32 %3 to i64, !dbg !3275
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 48, i64 %6, !dbg !3275
  %8 = load i32, ptr %7, align 4, !dbg !3275, !tbaa !1468
  %9 = sext i32 %8 to i64, !dbg !3277
  %10 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 %5, i64 %9, !dbg !3277
  %11 = load i8, ptr %10, align 1, !dbg !3277, !tbaa !1434
  %12 = icmp eq i8 %11, 0, !dbg !3277
  br i1 %12, label %27, label %13, !dbg !3278

13:                                               ; preds = %4
  switch i32 %8, label %27 [
    i32 3, label %14
    i32 7, label %14
    i32 11, label %14
    i32 1, label %16
    i32 5, label %16
    i32 9, label %16
    i32 2, label %19
    i32 6, label %19
    i32 10, label %19
    i32 0, label %22
    i32 4, label %22
    i32 8, label %22
  ], !dbg !3279

14:                                               ; preds = %13, %13, %13
  %15 = shl nsw i32 %3, 2, !dbg !3280
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %15, i32 noundef 2), !dbg !3282
  br label %27, !dbg !3283

16:                                               ; preds = %13, %13, %13
  %17 = shl nsw i32 %3, 2, !dbg !3284
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %17, i32 noundef 2), !dbg !3285
  %18 = or i32 %17, 2, !dbg !3286
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %18, i32 noundef 2), !dbg !3287
  br label %27, !dbg !3288

19:                                               ; preds = %13, %13, %13
  %20 = shl nsw i32 %3, 2, !dbg !3289
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %20, i32 noundef 1), !dbg !3290
  %21 = or i32 %20, 1, !dbg !3291
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %21, i32 noundef 1), !dbg !3292
  br label %27, !dbg !3293

22:                                               ; preds = %13, %13, %13
  %23 = shl nsw i32 %3, 2, !dbg !3294
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %23, i32 noundef 1), !dbg !3295
  %24 = or i32 %23, 1, !dbg !3296
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %24, i32 noundef 1), !dbg !3297
  %25 = or i32 %23, 2, !dbg !3298
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %25, i32 noundef 1), !dbg !3299
  %26 = or i32 %23, 3, !dbg !3300
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %26, i32 noundef 1), !dbg !3301
  br label %27, !dbg !3302

27:                                               ; preds = %4, %13, %22, %19, %16, %14
  ret void, !dbg !3303
}

; Function Attrs: nounwind uwtable
define internal fastcc void @block_residual_write_cavlc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !dbg !1278 {
  %7 = alloca [16 x i32], align 16
  %8 = alloca [16 x i32], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1283, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata ptr %1, metadata !1284, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %2, metadata !1285, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %3, metadata !1286, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata ptr %4, metadata !1287, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %5, metadata !1288, metadata !DIExpression()), !dbg !3304
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7, !dbg !3305
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1289, metadata !DIExpression()), !dbg !3306
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7, !dbg !3305
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1290, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i32 0, metadata !1297, metadata !DIExpression()), !dbg !3304
  %9 = icmp sgt i32 %3, 24, !dbg !3308
  br i1 %9, label %36, label %10, !dbg !3309

10:                                               ; preds = %6
  %11 = icmp eq i32 %3, 24, !dbg !3310
  %12 = select i1 %11, i32 0, i32 %3, !dbg !3311
  call void @llvm.dbg.value(metadata ptr %0, metadata !3312, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i32 %12, metadata !3315, metadata !DIExpression()), !dbg !3319
  %13 = sext i32 %12 to i64, !dbg !3321
  %14 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %13, !dbg !3321
  %15 = load i32, ptr %14, align 4, !dbg !3321, !tbaa !1468
  %16 = add nsw i32 %15, -1, !dbg !3322
  %17 = sext i32 %16 to i64, !dbg !3323
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 %17, !dbg !3323
  %19 = load i8, ptr %18, align 1, !dbg !3323, !tbaa !1434
  %20 = zext i8 %19 to i32, !dbg !3323
  call void @llvm.dbg.value(metadata i32 %20, metadata !3316, metadata !DIExpression()), !dbg !3319
  %21 = add nsw i32 %15, -8, !dbg !3324
  %22 = sext i32 %21 to i64, !dbg !3325
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 %22, !dbg !3325
  %24 = load i8, ptr %23, align 1, !dbg !3325, !tbaa !1434
  %25 = zext i8 %24 to i32, !dbg !3325
  call void @llvm.dbg.value(metadata i32 %25, metadata !3317, metadata !DIExpression()), !dbg !3319
  %26 = add nuw nsw i32 %25, %20, !dbg !3326
  call void @llvm.dbg.value(metadata i32 %26, metadata !3318, metadata !DIExpression()), !dbg !3319
  %27 = icmp ult i32 %26, 128, !dbg !3327
  %28 = add nuw nsw i32 %26, 1, !dbg !3329
  %29 = lshr i32 %28, 1, !dbg !3329
  %30 = select i1 %27, i32 %29, i32 %26, !dbg !3329
  call void @llvm.dbg.value(metadata i32 %30, metadata !3318, metadata !DIExpression()), !dbg !3319
  %31 = and i32 %30, 127, !dbg !3330
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [17 x i32], ptr @block_residual_write_cavlc.ct_index, i64 0, i64 %32, !dbg !3331
  %34 = load i32, ptr %33, align 4, !dbg !3331, !tbaa !1468
  %35 = sext i32 %34 to i64, !dbg !3332
  br label %36, !dbg !3309

36:                                               ; preds = %6, %10
  %37 = phi i64 [ %35, %10 ], [ 4, %6 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1299, metadata !DIExpression()), !dbg !3304
  %38 = sext i32 %3 to i64, !dbg !3335
  %39 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %38, !dbg !3335
  %40 = load i32, ptr %39, align 4, !dbg !3335, !tbaa !1468
  %41 = sext i32 %40 to i64, !dbg !3336
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 1, i64 %41, !dbg !3336
  %43 = load i8, ptr %42, align 1, !dbg !3336, !tbaa !1434
  %44 = icmp eq i8 %43, 0, !dbg !3336
  br i1 %44, label %45, label %71, !dbg !3337

45:                                               ; preds = %36
  %46 = getelementptr inbounds [5 x [68 x %struct.vlc_t]], ptr @x264_coeff_token, i64 0, i64 %37, !dbg !3332
  %47 = load i16, ptr %46, align 8, !dbg !3338
  call void @llvm.dbg.value(metadata i16 %47, metadata !3339, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8)), !dbg !3350
  %48 = lshr i16 %47, 8
  %49 = zext i16 %48 to i32
  call void @llvm.dbg.value(metadata ptr %1, metadata !3349, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 %49, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !3350
  %50 = and i16 %47, 255, !dbg !3352
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i32 %49, metadata !1491, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i16 %50, metadata !1492, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3353
  %51 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !3355
  %52 = load i64, ptr %51, align 8, !dbg !3355, !tbaa !1448
  %53 = zext i16 %48 to i64, !dbg !3356
  %54 = shl i64 %52, %53, !dbg !3356
  %55 = zext i16 %50 to i64, !dbg !3357
  %56 = or i64 %54, %55, !dbg !3358
  store i64 %56, ptr %51, align 8, !dbg !3359, !tbaa !1448
  %57 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4, !dbg !3360
  %58 = load i32, ptr %57, align 8, !dbg !3361, !tbaa !1413
  %59 = sub nsw i32 %58, %49, !dbg !3361
  store i32 %59, ptr %57, align 8, !dbg !3361, !tbaa !1413
  %60 = icmp slt i32 %59, 33, !dbg !3362
  br i1 %60, label %61, label %460, !dbg !3363

61:                                               ; preds = %45
  %62 = zext i32 %59 to i64, !dbg !3364
  %63 = shl i64 %56, %62, !dbg !3364
  call void @llvm.dbg.value(metadata i64 %63, metadata !1507, metadata !DIExpression()), !dbg !3365
  %64 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %63) #8, !dbg !3367, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %64, metadata !1507, metadata !DIExpression()), !dbg !3365
  %65 = trunc i64 %64 to i32, !dbg !3368
  %66 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1, !dbg !3369
  %67 = load ptr, ptr %66, align 8, !dbg !3369, !tbaa !1408
  store i32 %65, ptr %67, align 4, !dbg !3370, !tbaa !1468
  %68 = load i32, ptr %57, align 8, !dbg !3371, !tbaa !1413
  %69 = add nsw i32 %68, 32, !dbg !3371
  store i32 %69, ptr %57, align 8, !dbg !3371, !tbaa !1413
  %70 = getelementptr inbounds i8, ptr %67, i64 4, !dbg !3372
  store ptr %70, ptr %66, align 8, !dbg !3372, !tbaa !1408
  br label %460, !dbg !3373

71:                                               ; preds = %36
  %72 = zext i32 %2 to i64
  %73 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56, i32 11, i64 %72, !dbg !3374
  %74 = load ptr, ptr %73, align 8, !dbg !3374, !tbaa !1564
  %75 = tail call i32 %74(ptr noundef %4) #7, !dbg !3374
  call void @llvm.dbg.value(metadata i32 %75, metadata !1294, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !1295, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !1291, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !1292, metadata !DIExpression()), !dbg !3304
  %76 = add nsw i32 %75, 1, !dbg !3375
  call void @llvm.dbg.value(metadata i32 %76, metadata !1293, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %75, metadata !1294, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !1297, metadata !DIExpression()), !dbg !3304
  %77 = icmp sgt i32 %75, -1, !dbg !3376
  br i1 %77, label %78, label %108, !dbg !3377

78:                                               ; preds = %71, %101
  %79 = phi i64 [ %102, %101 ], [ 0, %71 ]
  %80 = phi i32 [ %90, %101 ], [ %75, %71 ]
  call void @llvm.dbg.value(metadata i32 %80, metadata !1294, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %79, metadata !1297, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !1300, metadata !DIExpression()), !dbg !3378
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i16, ptr %4, i64 %81, !dbg !3379
  %83 = load i16, ptr %82, align 2, !dbg !3379, !tbaa !1824
  %84 = sext i16 %83 to i32, !dbg !3379
  %85 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %79, !dbg !3380
  store i32 %84, ptr %85, align 4, !dbg !3381, !tbaa !1468
  call void @llvm.dbg.value(metadata i32 0, metadata !1300, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i32 %80, metadata !1294, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %80, metadata !1294, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3304
  %86 = icmp eq i32 %80, 0, !dbg !3382
  br i1 %86, label %98, label %87, !dbg !3383

87:                                               ; preds = %78, %95
  %88 = phi i32 [ %90, %95 ], [ %80, %78 ]
  %89 = phi i32 [ %96, %95 ], [ 0, %78 ]
  %90 = add nsw i32 %88, -1, !dbg !3384
  call void @llvm.dbg.value(metadata i32 %89, metadata !1300, metadata !DIExpression()), !dbg !3378
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i16, ptr %4, i64 %91, !dbg !3385
  %93 = load i16, ptr %92, align 2, !dbg !3385, !tbaa !1824
  %94 = icmp eq i16 %93, 0, !dbg !3386
  br i1 %94, label %95, label %101, !dbg !3387

95:                                               ; preds = %87
  %96 = add nuw nsw i32 %89, 1, !dbg !3388
  call void @llvm.dbg.value(metadata i32 %96, metadata !1300, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i32 %90, metadata !1294, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %90, metadata !1294, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3304
  %97 = icmp eq i32 %90, 0, !dbg !3382
  br i1 %97, label %98, label %87, !dbg !3383, !llvm.loop !3389

98:                                               ; preds = %78, %95
  %99 = add nuw i64 %79, 1, !dbg !3390
  call void @llvm.dbg.value(metadata i64 %99, metadata !1297, metadata !DIExpression()), !dbg !3304
  %100 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %79, !dbg !3391
  store i32 %80, ptr %100, align 4, !dbg !3392, !tbaa !1468
  call void @llvm.dbg.value(metadata i32 poison, metadata !1294, metadata !DIExpression()), !dbg !3304
  br label %105, !dbg !3377

101:                                              ; preds = %87
  %102 = add nuw i64 %79, 1, !dbg !3390
  call void @llvm.dbg.value(metadata i64 %102, metadata !1297, metadata !DIExpression()), !dbg !3304
  %103 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %79, !dbg !3391
  store i32 %89, ptr %103, align 4, !dbg !3392, !tbaa !1468
  call void @llvm.dbg.value(metadata i32 %90, metadata !1294, metadata !DIExpression()), !dbg !3304
  %104 = icmp sgt i32 %88, 0, !dbg !3376
  br i1 %104, label %78, label %105, !dbg !3377, !llvm.loop !3393

105:                                              ; preds = %101, %98
  %106 = phi i64 [ %99, %98 ], [ %102, %101 ]
  %107 = trunc i64 %106 to i32, !dbg !3395
  br label %108, !dbg !3395

108:                                              ; preds = %105, %71
  %109 = phi i32 [ 0, %71 ], [ %107, %105 ], !dbg !3304
  call void @llvm.dbg.value(metadata i32 %109, metadata !1291, metadata !DIExpression()), !dbg !3304
  %110 = sub i32 %76, %109, !dbg !3395
  call void @llvm.dbg.value(metadata i32 %110, metadata !1293, metadata !DIExpression()), !dbg !3304
  %111 = tail call i32 @llvm.umin.i32(i32 %109, i32 3), !dbg !3396
  call void @llvm.dbg.value(metadata i32 %111, metadata !1292, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !1297, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !1295, metadata !DIExpression()), !dbg !3304
  %112 = icmp eq i32 %111, 0, !dbg !3397
  br i1 %112, label %135, label %113, !dbg !3400

113:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 0, metadata !1297, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !1295, metadata !DIExpression()), !dbg !3304
  %114 = load i32, ptr %7, align 16, !dbg !3401, !tbaa !1468
  %115 = add i32 %114, -2, !dbg !3404
  %116 = icmp ult i32 %115, -3, !dbg !3404
  br i1 %116, label %135, label %117, !dbg !3405

117:                                              ; preds = %113
  call void @llvm.dbg.value(metadata i32 0, metadata !1295, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !3304
  %118 = lshr i32 %114, 31, !dbg !3406
  call void @llvm.dbg.value(metadata i32 %118, metadata !1295, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 1, metadata !1297, metadata !DIExpression()), !dbg !3304
  %119 = icmp eq i32 %111, 1, !dbg !3397
  br i1 %119, label %135, label %120, !dbg !3400, !llvm.loop !3407

120:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i64 1, metadata !1297, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %118, metadata !1295, metadata !DIExpression()), !dbg !3304
  %121 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 1, !dbg !3401
  %122 = load i32, ptr %121, align 4, !dbg !3401, !tbaa !1468
  %123 = add i32 %122, -2, !dbg !3404
  %124 = icmp ult i32 %123, -3, !dbg !3404
  br i1 %124, label %135, label %125, !dbg !3405

125:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i32 %118, metadata !1295, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !3304
  %126 = tail call i32 @llvm.fshl.i32(i32 %118, i32 %122, i32 1), !dbg !3406
  call void @llvm.dbg.value(metadata i32 %126, metadata !1295, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 2, metadata !1297, metadata !DIExpression()), !dbg !3304
  %127 = icmp eq i32 %111, 2, !dbg !3397
  br i1 %127, label %135, label %128, !dbg !3400, !llvm.loop !3407

128:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i64 2, metadata !1297, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %126, metadata !1295, metadata !DIExpression()), !dbg !3304
  %129 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 2, !dbg !3401
  %130 = load i32, ptr %129, align 8, !dbg !3401, !tbaa !1468
  %131 = add i32 %130, -2, !dbg !3404
  %132 = icmp ult i32 %131, -3, !dbg !3404
  br i1 %132, label %135, label %133, !dbg !3405

133:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i32 %126, metadata !1295, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !3304
  %134 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %130, i32 1), !dbg !3406
  call void @llvm.dbg.value(metadata i32 %134, metadata !1295, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 3, metadata !1297, metadata !DIExpression()), !dbg !3304
  br label %135

135:                                              ; preds = %117, %125, %133, %113, %120, %128, %108
  %136 = phi i32 [ 0, %108 ], [ 0, %113 ], [ %118, %120 ], [ %126, %128 ], [ %118, %117 ], [ %126, %125 ], [ %134, %133 ], !dbg !3304
  %137 = phi i32 [ 0, %108 ], [ 0, %113 ], [ 1, %120 ], [ 2, %128 ], [ %111, %133 ], [ %111, %125 ], [ %111, %117 ], !dbg !3304
  call void @llvm.dbg.value(metadata i32 %137, metadata !1292, metadata !DIExpression()), !dbg !3304
  %138 = shl nsw i32 %109, 2, !dbg !3409
  %139 = add nuw nsw i32 %137, %138, !dbg !3410
  %140 = zext i32 %139 to i64, !dbg !3411
  %141 = getelementptr inbounds [5 x [68 x %struct.vlc_t]], ptr @x264_coeff_token, i64 0, i64 %37, i64 %140, !dbg !3411
  %142 = load i16, ptr %141, align 2, !dbg !3412
  call void @llvm.dbg.value(metadata i16 %142, metadata !3339, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8)), !dbg !3413
  %143 = lshr i16 %142, 8
  %144 = zext i16 %143 to i32
  call void @llvm.dbg.value(metadata ptr %1, metadata !3349, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i32 %144, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !3413
  %145 = and i16 %142, 255, !dbg !3415
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i32 %144, metadata !1491, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i16 %145, metadata !1492, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3416
  %146 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !3418
  %147 = load i64, ptr %146, align 8, !dbg !3418, !tbaa !1448
  %148 = zext i16 %143 to i64, !dbg !3419
  %149 = shl i64 %147, %148, !dbg !3419
  %150 = zext i16 %145 to i64, !dbg !3420
  %151 = or i64 %149, %150, !dbg !3421
  store i64 %151, ptr %146, align 8, !dbg !3422, !tbaa !1448
  %152 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4, !dbg !3423
  %153 = load i32, ptr %152, align 8, !dbg !3424, !tbaa !1413
  %154 = sub nsw i32 %153, %144, !dbg !3424
  store i32 %154, ptr %152, align 8, !dbg !3424, !tbaa !1413
  %155 = icmp slt i32 %154, 33, !dbg !3425
  br i1 %155, label %156, label %166, !dbg !3426

156:                                              ; preds = %135
  %157 = zext i32 %154 to i64, !dbg !3427
  %158 = shl i64 %151, %157, !dbg !3427
  call void @llvm.dbg.value(metadata i64 %158, metadata !1507, metadata !DIExpression()), !dbg !3428
  %159 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %158) #8, !dbg !3430, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %159, metadata !1507, metadata !DIExpression()), !dbg !3428
  %160 = trunc i64 %159 to i32, !dbg !3431
  %161 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1, !dbg !3432
  %162 = load ptr, ptr %161, align 8, !dbg !3432, !tbaa !1408
  store i32 %160, ptr %162, align 4, !dbg !3433, !tbaa !1468
  %163 = load i32, ptr %152, align 8, !dbg !3434, !tbaa !1413
  %164 = add nsw i32 %163, 32, !dbg !3434
  store i32 %164, ptr %152, align 8, !dbg !3434, !tbaa !1413
  %165 = getelementptr inbounds i8, ptr %162, i64 4, !dbg !3435
  store ptr %165, ptr %161, align 8, !dbg !3435, !tbaa !1408
  br label %166, !dbg !3436

166:                                              ; preds = %135, %156
  %167 = phi i32 [ %154, %135 ], [ %164, %156 ]
  %168 = icmp ugt i32 %109, 10, !dbg !3437
  %169 = icmp ult i32 %137, 3, !dbg !3438
  %170 = select i1 %168, i1 %169, i1 false, !dbg !3438
  %171 = zext i1 %170 to i32, !dbg !3439
  call void @llvm.dbg.value(metadata i32 %171, metadata !1298, metadata !DIExpression()), !dbg !3304
  %172 = icmp eq i32 %137, 0, !dbg !3440
  br i1 %172, label %190, label %173, !dbg !3442

173:                                              ; preds = %166
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 %137, metadata !1491, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 %136, metadata !1492, metadata !DIExpression()), !dbg !3443
  %174 = zext i32 %137 to i64, !dbg !3445
  %175 = shl i64 %151, %174, !dbg !3445
  %176 = zext i32 %136 to i64, !dbg !3446
  %177 = or i64 %175, %176, !dbg !3447
  store i64 %177, ptr %146, align 8, !dbg !3448, !tbaa !1448
  %178 = sub nsw i32 %167, %137, !dbg !3449
  store i32 %178, ptr %152, align 8, !dbg !3449, !tbaa !1413
  %179 = icmp slt i32 %178, 33, !dbg !3450
  br i1 %179, label %180, label %190, !dbg !3451

180:                                              ; preds = %173
  %181 = zext i32 %178 to i64, !dbg !3452
  %182 = shl i64 %177, %181, !dbg !3452
  call void @llvm.dbg.value(metadata i64 %182, metadata !1507, metadata !DIExpression()), !dbg !3453
  %183 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %182) #8, !dbg !3455, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %183, metadata !1507, metadata !DIExpression()), !dbg !3453
  %184 = trunc i64 %183 to i32, !dbg !3456
  %185 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1, !dbg !3457
  %186 = load ptr, ptr %185, align 8, !dbg !3457, !tbaa !1408
  store i32 %184, ptr %186, align 4, !dbg !3458, !tbaa !1468
  %187 = load i32, ptr %152, align 8, !dbg !3459, !tbaa !1413
  %188 = add nsw i32 %187, 32, !dbg !3459
  store i32 %188, ptr %152, align 8, !dbg !3459, !tbaa !1413
  %189 = getelementptr inbounds i8, ptr %186, i64 4, !dbg !3460
  store ptr %189, ptr %185, align 8, !dbg !3460, !tbaa !1408
  br label %190, !dbg !3461

190:                                              ; preds = %180, %173, %166
  %191 = phi i32 [ %188, %180 ], [ %178, %173 ], [ %167, %166 ]
  %192 = phi i64 [ %177, %180 ], [ %177, %173 ], [ %151, %166 ]
  call void @llvm.dbg.value(metadata i32 %137, metadata !1296, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %171, metadata !1298, metadata !DIExpression()), !dbg !3304
  %193 = icmp ult i32 %137, %109, !dbg !3462
  br i1 %193, label %194, label %360, !dbg !3463

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 16
  %196 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1
  %197 = zext i32 %137 to i64, !dbg !3463
  %198 = zext i32 %109 to i64, !dbg !3462
  br label %199, !dbg !3463

199:                                              ; preds = %194, %346
  %200 = phi i32 [ %191, %194 ], [ %347, %346 ]
  %201 = phi i64 [ %192, %194 ], [ %348, %346 ]
  %202 = phi i64 [ %197, %194 ], [ %358, %346 ]
  %203 = phi i32 [ %171, %194 ], [ %357, %346 ]
  call void @llvm.dbg.value(metadata i32 %203, metadata !1298, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %202, metadata !1296, metadata !DIExpression()), !dbg !3304
  %204 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %202, !dbg !3464
  %205 = load i32, ptr %204, align 4, !dbg !3464, !tbaa !1468
  %206 = ashr i32 %205, 15, !dbg !3465
  call void @llvm.dbg.value(metadata i32 %206, metadata !1302, metadata !DIExpression()), !dbg !3466
  %207 = xor i32 %206, %205, !dbg !3467
  %208 = sub nsw i32 %207, %206, !dbg !3468
  call void @llvm.dbg.value(metadata i32 %208, metadata !1306, metadata !DIExpression()), !dbg !3466
  %209 = shl nsw i32 %208, 1, !dbg !3469
  %210 = sub nsw i32 %209, %206, !dbg !3470
  call void @llvm.dbg.value(metadata i32 %210, metadata !1307, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !3466
  %211 = icmp eq i64 %202, %197, !dbg !3471
  %212 = and i1 %169, %211, !dbg !3473
  %213 = select i1 %212, i32 -4, i32 -2, !dbg !3473
  %214 = add nsw i32 %210, %213, !dbg !3473
  call void @llvm.dbg.value(metadata i32 %214, metadata !1307, metadata !DIExpression()), !dbg !3466
  %215 = ashr i32 %214, %203, !dbg !3474
  %216 = icmp slt i32 %215, 14, !dbg !3475
  br i1 %216, label %217, label %236, !dbg !3476

217:                                              ; preds = %199
  %218 = add i32 %203, 1, !dbg !3477
  %219 = add i32 %218, %215, !dbg !3478
  %220 = shl nuw i32 1, %203, !dbg !3479
  %221 = add nsw i32 %220, -1, !dbg !3480
  %222 = and i32 %214, %221, !dbg !3481
  %223 = add nsw i32 %222, %220, !dbg !3482
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32 %219, metadata !1491, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32 %223, metadata !1492, metadata !DIExpression()), !dbg !3483
  %224 = zext i32 %219 to i64, !dbg !3485
  %225 = shl i64 %201, %224, !dbg !3485
  %226 = zext i32 %223 to i64, !dbg !3486
  %227 = or i64 %225, %226, !dbg !3487
  store i64 %227, ptr %146, align 8, !dbg !3488, !tbaa !1448
  %228 = sub nsw i32 %200, %219, !dbg !3489
  store i32 %228, ptr %152, align 8, !dbg !3489, !tbaa !1413
  %229 = icmp slt i32 %228, 33, !dbg !3490
  br i1 %229, label %230, label %346, !dbg !3491

230:                                              ; preds = %217
  %231 = zext i32 %228 to i64, !dbg !3492
  %232 = shl i64 %227, %231, !dbg !3492
  call void @llvm.dbg.value(metadata i64 %232, metadata !1507, metadata !DIExpression()), !dbg !3493
  %233 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %232) #8, !dbg !3495, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %233, metadata !1507, metadata !DIExpression()), !dbg !3493
  %234 = trunc i64 %233 to i32, !dbg !3496
  %235 = load ptr, ptr %196, align 8, !dbg !3497, !tbaa !1408
  store i32 %234, ptr %235, align 4, !dbg !3498, !tbaa !1468
  br label %340, !dbg !3499

236:                                              ; preds = %199
  %237 = icmp eq i32 %203, 0, !dbg !3500
  %238 = icmp slt i32 %214, 30
  %239 = select i1 %237, i1 %238, i1 false, !dbg !3501
  br i1 %239, label %240, label %253, !dbg !3501

240:                                              ; preds = %236
  %241 = add nsw i32 %214, 2, !dbg !3502
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32 19, metadata !1491, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32 %241, metadata !1492, metadata !DIExpression()), !dbg !3503
  %242 = shl i64 %201, 19, !dbg !3505
  %243 = zext i32 %241 to i64, !dbg !3506
  %244 = or i64 %242, %243, !dbg !3507
  store i64 %244, ptr %146, align 8, !dbg !3508, !tbaa !1448
  %245 = add nsw i32 %200, -19, !dbg !3509
  store i32 %245, ptr %152, align 8, !dbg !3509, !tbaa !1413
  %246 = icmp slt i32 %200, 52, !dbg !3510
  br i1 %246, label %247, label %346, !dbg !3511

247:                                              ; preds = %240
  %248 = zext i32 %245 to i64, !dbg !3512
  %249 = shl i64 %244, %248, !dbg !3512
  call void @llvm.dbg.value(metadata i64 %249, metadata !1507, metadata !DIExpression()), !dbg !3513
  %250 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %249) #8, !dbg !3515, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %250, metadata !1507, metadata !DIExpression()), !dbg !3513
  %251 = trunc i64 %250 to i32, !dbg !3516
  %252 = load ptr, ptr %196, align 8, !dbg !3517, !tbaa !1408
  store i32 %251, ptr %252, align 4, !dbg !3518, !tbaa !1468
  br label %340, !dbg !3519

253:                                              ; preds = %236
  %254 = icmp sgt i32 %203, 0, !dbg !3520
  %255 = icmp eq i32 %215, 14
  %256 = select i1 %254, i1 %255, i1 false, !dbg !3521
  br i1 %256, label %257, label %275, !dbg !3521

257:                                              ; preds = %253
  %258 = add nuw nsw i32 %203, 15, !dbg !3522
  %259 = shl nuw i32 1, %203, !dbg !3523
  %260 = add nsw i32 %259, -1, !dbg !3524
  %261 = and i32 %214, %260, !dbg !3525
  %262 = add nsw i32 %261, %259, !dbg !3526
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i32 %258, metadata !1491, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i32 %262, metadata !1492, metadata !DIExpression()), !dbg !3527
  %263 = zext i32 %258 to i64, !dbg !3529
  %264 = shl i64 %201, %263, !dbg !3529
  %265 = zext i32 %262 to i64, !dbg !3530
  %266 = or i64 %264, %265, !dbg !3531
  store i64 %266, ptr %146, align 8, !dbg !3532, !tbaa !1448
  %267 = sub nsw i32 %200, %258, !dbg !3533
  store i32 %267, ptr %152, align 8, !dbg !3533, !tbaa !1413
  %268 = icmp slt i32 %267, 33, !dbg !3534
  br i1 %268, label %269, label %346, !dbg !3535

269:                                              ; preds = %257
  %270 = zext i32 %267 to i64, !dbg !3536
  %271 = shl i64 %266, %270, !dbg !3536
  call void @llvm.dbg.value(metadata i64 %271, metadata !1507, metadata !DIExpression()), !dbg !3537
  %272 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %271) #8, !dbg !3539, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %272, metadata !1507, metadata !DIExpression()), !dbg !3537
  %273 = trunc i64 %272 to i32, !dbg !3540
  %274 = load ptr, ptr %196, align 8, !dbg !3541, !tbaa !1408
  store i32 %273, ptr %274, align 4, !dbg !3542, !tbaa !1468
  br label %340, !dbg !3543

275:                                              ; preds = %253
  call void @llvm.dbg.value(metadata i32 15, metadata !1308, metadata !DIExpression()), !dbg !3544
  %276 = shl i32 -15, %203, !dbg !3545
  %277 = add i32 %214, %276, !dbg !3546
  call void @llvm.dbg.value(metadata i32 %277, metadata !1307, metadata !DIExpression()), !dbg !3466
  %278 = add nsw i32 %277, -15
  %279 = select i1 %237, i32 %278, i32 %277, !dbg !3547
  call void @llvm.dbg.value(metadata i32 %279, metadata !1307, metadata !DIExpression()), !dbg !3466
  %280 = icmp sgt i32 %279, 4095, !dbg !3548
  br i1 %280, label %281, label %302, !dbg !3550

281:                                              ; preds = %275
  %282 = load ptr, ptr %195, align 16, !dbg !3551, !tbaa !2869
  %283 = getelementptr inbounds %struct.x264_sps_t, ptr %282, i64 0, i32 1, !dbg !3554
  %284 = load i32, ptr %283, align 4, !dbg !3554, !tbaa !3555
  %285 = icmp sgt i32 %284, 99, !dbg !3556
  br i1 %285, label %286, label %297, !dbg !3557

286:                                              ; preds = %281
  call void @llvm.dbg.value(metadata i32 15, metadata !1308, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 %279, metadata !1307, metadata !DIExpression()), !dbg !3466
  %287 = icmp ugt i32 %279, 4096, !dbg !3558
  br i1 %287, label %288, label %302, !dbg !3560

288:                                              ; preds = %286, %288
  %289 = phi i32 [ %295, %288 ], [ 4096, %286 ]
  %290 = phi i32 [ %293, %288 ], [ 15, %286 ]
  %291 = phi i32 [ %292, %288 ], [ %279, %286 ]
  call void @llvm.dbg.value(metadata i32 %290, metadata !1308, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 %291, metadata !1307, metadata !DIExpression()), !dbg !3466
  %292 = sub nsw i32 %291, %289, !dbg !3561
  call void @llvm.dbg.value(metadata i32 %292, metadata !1307, metadata !DIExpression()), !dbg !3466
  %293 = add nuw nsw i32 %290, 1, !dbg !3563
  call void @llvm.dbg.value(metadata i32 %293, metadata !1308, metadata !DIExpression()), !dbg !3544
  %294 = add nsw i32 %290, -2, !dbg !3564
  %295 = shl nuw i32 1, %294, !dbg !3565
  %296 = icmp sgt i32 %292, %295, !dbg !3558
  br i1 %296, label %288, label %302, !dbg !3560, !llvm.loop !3566

297:                                              ; preds = %281
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %279) #7, !dbg !3568
  %298 = and i32 %279, 1, !dbg !3570
  %299 = or i32 %298, 4094, !dbg !3571
  call void @llvm.dbg.value(metadata i32 %299, metadata !1307, metadata !DIExpression()), !dbg !3466
  %300 = load i64, ptr %146, align 8, !dbg !3572, !tbaa !1448
  %301 = load i32, ptr %152, align 8, !dbg !3574, !tbaa !1413
  br label %302

302:                                              ; preds = %288, %286, %297, %275
  %303 = phi i32 [ %301, %297 ], [ %200, %275 ], [ %200, %286 ], [ %200, %288 ], !dbg !3574
  %304 = phi i64 [ %300, %297 ], [ %201, %275 ], [ %201, %286 ], [ %201, %288 ], !dbg !3572
  %305 = phi i32 [ %299, %297 ], [ %279, %275 ], [ 4096, %286 ], [ %292, %288 ], !dbg !3544
  %306 = phi i32 [ 15, %297 ], [ 15, %275 ], [ 15, %286 ], [ %293, %288 ], !dbg !3575
  call void @llvm.dbg.value(metadata i32 %306, metadata !1308, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 %305, metadata !1307, metadata !DIExpression()), !dbg !3466
  %307 = add nuw nsw i32 %306, 1, !dbg !3576
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 %307, metadata !1491, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 1, metadata !1492, metadata !DIExpression()), !dbg !3577
  %308 = zext i32 %307 to i64, !dbg !3578
  %309 = shl i64 %304, %308, !dbg !3578
  %310 = or i64 %309, 1, !dbg !3579
  %311 = sub nsw i32 %303, %307, !dbg !3574
  store i32 %311, ptr %152, align 8, !dbg !3574, !tbaa !1413
  %312 = icmp slt i32 %311, 33, !dbg !3580
  br i1 %312, label %313, label %322, !dbg !3581

313:                                              ; preds = %302
  %314 = zext i32 %311 to i64, !dbg !3582
  %315 = shl i64 %310, %314, !dbg !3582
  call void @llvm.dbg.value(metadata i64 %315, metadata !1507, metadata !DIExpression()), !dbg !3583
  %316 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %315) #8, !dbg !3585, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %316, metadata !1507, metadata !DIExpression()), !dbg !3583
  %317 = trunc i64 %316 to i32, !dbg !3586
  %318 = load ptr, ptr %196, align 8, !dbg !3587, !tbaa !1408
  store i32 %317, ptr %318, align 4, !dbg !3588, !tbaa !1468
  %319 = load i32, ptr %152, align 8, !dbg !3589, !tbaa !1413
  %320 = add nsw i32 %319, 32, !dbg !3589
  %321 = getelementptr inbounds i8, ptr %318, i64 4, !dbg !3590
  store ptr %321, ptr %196, align 8, !dbg !3590, !tbaa !1408
  br label %322, !dbg !3591

322:                                              ; preds = %302, %313
  %323 = phi i32 [ %311, %302 ], [ %320, %313 ], !dbg !3592
  %324 = add nsw i32 %306, -3, !dbg !3594
  %325 = shl nsw i32 -1, %324, !dbg !3595
  %326 = xor i32 %325, -1, !dbg !3595
  %327 = and i32 %305, %326, !dbg !3596
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 %324, metadata !1491, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 %327, metadata !1492, metadata !DIExpression()), !dbg !3597
  %328 = zext i32 %324 to i64, !dbg !3598
  %329 = shl i64 %310, %328, !dbg !3598
  %330 = zext i32 %327 to i64, !dbg !3599
  %331 = or i64 %329, %330, !dbg !3600
  store i64 %331, ptr %146, align 8, !dbg !3601, !tbaa !1448
  %332 = sub nsw i32 %323, %324, !dbg !3592
  store i32 %332, ptr %152, align 8, !dbg !3592, !tbaa !1413
  %333 = icmp slt i32 %332, 33, !dbg !3602
  br i1 %333, label %334, label %346, !dbg !3603

334:                                              ; preds = %322
  %335 = zext i32 %332 to i64, !dbg !3604
  %336 = shl i64 %331, %335, !dbg !3604
  call void @llvm.dbg.value(metadata i64 %336, metadata !1507, metadata !DIExpression()), !dbg !3605
  %337 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %336) #8, !dbg !3607, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %337, metadata !1507, metadata !DIExpression()), !dbg !3605
  %338 = trunc i64 %337 to i32, !dbg !3608
  %339 = load ptr, ptr %196, align 8, !dbg !3609, !tbaa !1408
  store i32 %338, ptr %339, align 4, !dbg !3610, !tbaa !1468
  br label %340, !dbg !3611

340:                                              ; preds = %230, %247, %269, %334
  %341 = phi ptr [ %339, %334 ], [ %274, %269 ], [ %252, %247 ], [ %235, %230 ]
  %342 = phi i64 [ %331, %334 ], [ %266, %269 ], [ %244, %247 ], [ %227, %230 ]
  %343 = load i32, ptr %152, align 8, !dbg !3612, !tbaa !1413
  %344 = add nsw i32 %343, 32, !dbg !3612
  store i32 %344, ptr %152, align 8, !dbg !3612, !tbaa !1413
  %345 = getelementptr inbounds i8, ptr %341, i64 4, !dbg !3612
  store ptr %345, ptr %196, align 8, !dbg !3612, !tbaa !1408
  br label %346, !dbg !3613

346:                                              ; preds = %340, %322, %257, %240, %217
  %347 = phi i32 [ %332, %322 ], [ %267, %257 ], [ %245, %240 ], [ %228, %217 ], [ %344, %340 ]
  %348 = phi i64 [ %331, %322 ], [ %266, %257 ], [ %244, %240 ], [ %227, %217 ], [ %342, %340 ]
  %349 = icmp eq i32 %203, 0, !dbg !3613
  %350 = select i1 %349, i32 1, i32 %203, !dbg !3615
  call void @llvm.dbg.value(metadata i32 %350, metadata !1298, metadata !DIExpression()), !dbg !3304
  %351 = add nsw i32 %350, -1, !dbg !3616
  %352 = shl i32 3, %351, !dbg !3618
  %353 = icmp sgt i32 %208, %352, !dbg !3619
  %354 = icmp slt i32 %350, 6
  %355 = select i1 %353, i1 %354, i1 false, !dbg !3620
  %356 = zext i1 %355 to i32, !dbg !3620
  %357 = add nsw i32 %350, %356, !dbg !3620
  call void @llvm.dbg.value(metadata i32 %357, metadata !1298, metadata !DIExpression()), !dbg !3304
  %358 = add nuw nsw i64 %202, 1, !dbg !3621
  call void @llvm.dbg.value(metadata i64 %358, metadata !1296, metadata !DIExpression()), !dbg !3304
  %359 = icmp eq i64 %358, %198, !dbg !3462
  br i1 %359, label %360, label %199, !dbg !3463, !llvm.loop !3622

360:                                              ; preds = %346, %190
  %361 = phi i32 [ %191, %190 ], [ %347, %346 ]
  %362 = phi i64 [ %192, %190 ], [ %348, %346 ]
  %363 = icmp slt i32 %109, %5, !dbg !3624
  %364 = add nsw i32 %109, -1
  br i1 %363, label %365, label %413, !dbg !3626

365:                                              ; preds = %360
  %366 = sext i32 %364 to i64, !dbg !3627
  %367 = sext i32 %110 to i64, !dbg !3627
  call void @llvm.dbg.value(metadata ptr %1, metadata !3349, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %1, metadata !3349, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !3636
  br i1 %9, label %368, label %387, !dbg !3638

368:                                              ; preds = %365
  %369 = getelementptr inbounds [3 x [4 x %struct.vlc_t]], ptr @x264_total_zeros_dc, i64 0, i64 %366, i64 %367, !dbg !3639
  %370 = load i16, ptr %369, align 2, !dbg !3640
  call void @llvm.dbg.value(metadata i16 %370, metadata !3339, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8)), !dbg !3630
  %371 = lshr i16 %370, 8
  %372 = zext i16 %371 to i32
  call void @llvm.dbg.value(metadata i32 %372, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !3630
  %373 = and i16 %370, 255, !dbg !3641
  call void @llvm.dbg.value(metadata i32 %372, metadata !1491, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i16 %373, metadata !1492, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3634
  %374 = zext i16 %371 to i64, !dbg !3642
  %375 = shl i64 %362, %374, !dbg !3642
  %376 = zext i16 %373 to i64, !dbg !3643
  %377 = or i64 %375, %376, !dbg !3644
  store i64 %377, ptr %146, align 8, !dbg !3645, !tbaa !1448
  %378 = sub nsw i32 %361, %372, !dbg !3646
  store i32 %378, ptr %152, align 8, !dbg !3646, !tbaa !1413
  %379 = icmp slt i32 %378, 33, !dbg !3647
  br i1 %379, label %380, label %413, !dbg !3648

380:                                              ; preds = %368
  %381 = zext i32 %378 to i64, !dbg !3649
  %382 = shl i64 %377, %381, !dbg !3649
  call void @llvm.dbg.value(metadata i64 %382, metadata !1507, metadata !DIExpression()), !dbg !3650
  %383 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %382) #8, !dbg !3652, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %383, metadata !1507, metadata !DIExpression()), !dbg !3650
  %384 = trunc i64 %383 to i32, !dbg !3653
  %385 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1, !dbg !3654
  %386 = load ptr, ptr %385, align 8, !dbg !3654, !tbaa !1408
  store i32 %384, ptr %386, align 4, !dbg !3655, !tbaa !1468
  br label %406, !dbg !3656

387:                                              ; preds = %365
  %388 = getelementptr inbounds [15 x [16 x %struct.vlc_t]], ptr @x264_total_zeros, i64 0, i64 %366, i64 %367, !dbg !3657
  %389 = load i16, ptr %388, align 2, !dbg !3658
  call void @llvm.dbg.value(metadata i16 %389, metadata !3339, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8)), !dbg !3632
  %390 = lshr i16 %389, 8
  %391 = zext i16 %390 to i32
  call void @llvm.dbg.value(metadata i32 %391, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !3632
  %392 = and i16 %389, 255, !dbg !3659
  call void @llvm.dbg.value(metadata i32 %391, metadata !1491, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i16 %392, metadata !1492, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3636
  %393 = zext i16 %390 to i64, !dbg !3660
  %394 = shl i64 %362, %393, !dbg !3660
  %395 = zext i16 %392 to i64, !dbg !3661
  %396 = or i64 %394, %395, !dbg !3662
  store i64 %396, ptr %146, align 8, !dbg !3663, !tbaa !1448
  %397 = sub nsw i32 %361, %391, !dbg !3664
  store i32 %397, ptr %152, align 8, !dbg !3664, !tbaa !1413
  %398 = icmp slt i32 %397, 33, !dbg !3665
  br i1 %398, label %399, label %413, !dbg !3666

399:                                              ; preds = %387
  %400 = zext i32 %397 to i64, !dbg !3667
  %401 = shl i64 %396, %400, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %401, metadata !1507, metadata !DIExpression()), !dbg !3668
  %402 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %401) #8, !dbg !3670, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %402, metadata !1507, metadata !DIExpression()), !dbg !3668
  %403 = trunc i64 %402 to i32, !dbg !3671
  %404 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1, !dbg !3672
  %405 = load ptr, ptr %404, align 8, !dbg !3672, !tbaa !1408
  store i32 %403, ptr %405, align 4, !dbg !3673, !tbaa !1468
  br label %406, !dbg !3674

406:                                              ; preds = %380, %399
  %407 = phi ptr [ %405, %399 ], [ %386, %380 ]
  %408 = phi ptr [ %404, %399 ], [ %385, %380 ]
  %409 = phi i64 [ %396, %399 ], [ %377, %380 ]
  %410 = load i32, ptr %152, align 8, !dbg !3627, !tbaa !1413
  %411 = add nsw i32 %410, 32, !dbg !3627
  store i32 %411, ptr %152, align 8, !dbg !3627, !tbaa !1413
  %412 = getelementptr inbounds i8, ptr %407, i64 4, !dbg !3627
  store ptr %412, ptr %408, align 8, !dbg !3627, !tbaa !1408
  br label %413, !dbg !3675

413:                                              ; preds = %406, %360, %387, %368
  %414 = phi i32 [ %397, %387 ], [ %378, %368 ], [ %361, %360 ], [ %411, %406 ]
  %415 = phi i64 [ %396, %387 ], [ %377, %368 ], [ %362, %360 ], [ %409, %406 ]
  call void @llvm.dbg.value(metadata i32 %110, metadata !1293, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !1296, metadata !DIExpression()), !dbg !3304
  %416 = icmp sgt i32 %109, 1, !dbg !3675
  %417 = icmp sgt i32 %110, 0, !dbg !3676
  %418 = select i1 %416, i1 %417, i1 false, !dbg !3676
  br i1 %418, label %419, label %460, !dbg !3677

419:                                              ; preds = %413
  %420 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1
  %421 = sext i32 %364 to i64, !dbg !3677
  br label %422, !dbg !3677

422:                                              ; preds = %419, %453
  %423 = phi i32 [ %414, %419 ], [ %454, %453 ], !dbg !3678
  %424 = phi i64 [ 0, %419 ], [ %456, %453 ], !dbg !3304
  %425 = phi i64 [ %415, %419 ], [ %441, %453 ], !dbg !3304
  %426 = phi i32 [ %110, %419 ], [ %455, %453 ]
  call void @llvm.dbg.value(metadata i32 %426, metadata !1293, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %424, metadata !1296, metadata !DIExpression()), !dbg !3304
  %427 = tail call i32 @llvm.smin.i32(i32 %426, i32 7), !dbg !3681
  %428 = add nsw i32 %427, -1, !dbg !3681
  call void @llvm.dbg.value(metadata i32 %428, metadata !1313, metadata !DIExpression()), !dbg !3682
  %429 = zext i32 %428 to i64
  %430 = getelementptr inbounds [16 x i32], ptr %8, i64 0, i64 %424, !dbg !3683
  %431 = load i32, ptr %430, align 4, !dbg !3683, !tbaa !1468
  %432 = sext i32 %431 to i64, !dbg !3684
  %433 = getelementptr inbounds [7 x [15 x %struct.vlc_t]], ptr @x264_run_before, i64 0, i64 %429, i64 %432, !dbg !3684
  %434 = load i16, ptr %433, align 2, !dbg !3685
  call void @llvm.dbg.value(metadata i16 %434, metadata !3339, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8)), !dbg !3686
  %435 = lshr i16 %434, 8
  %436 = zext i16 %435 to i32
  call void @llvm.dbg.value(metadata ptr %1, metadata !3349, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 %436, metadata !3339, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !3686
  %437 = and i16 %434, 255, !dbg !3687
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i32 %436, metadata !1491, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i16 %437, metadata !1492, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3688
  %438 = zext i16 %435 to i64, !dbg !3689
  %439 = shl i64 %425, %438, !dbg !3689
  %440 = zext i16 %437 to i64, !dbg !3690
  %441 = or i64 %439, %440, !dbg !3691
  store i64 %441, ptr %146, align 8, !dbg !3692, !tbaa !1448
  %442 = sub nsw i32 %423, %436, !dbg !3678
  store i32 %442, ptr %152, align 8, !dbg !3678, !tbaa !1413
  %443 = icmp slt i32 %442, 33, !dbg !3693
  br i1 %443, label %444, label %453, !dbg !3694

444:                                              ; preds = %422
  %445 = zext i32 %442 to i64, !dbg !3695
  %446 = shl i64 %441, %445, !dbg !3695
  call void @llvm.dbg.value(metadata i64 %446, metadata !1507, metadata !DIExpression()), !dbg !3696
  %447 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %446) #8, !dbg !3698, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %447, metadata !1507, metadata !DIExpression()), !dbg !3696
  %448 = trunc i64 %447 to i32, !dbg !3699
  %449 = load ptr, ptr %420, align 8, !dbg !3700, !tbaa !1408
  store i32 %448, ptr %449, align 4, !dbg !3701, !tbaa !1468
  %450 = load i32, ptr %152, align 8, !dbg !3702, !tbaa !1413
  %451 = add nsw i32 %450, 32, !dbg !3702
  store i32 %451, ptr %152, align 8, !dbg !3702, !tbaa !1413
  %452 = getelementptr inbounds i8, ptr %449, i64 4, !dbg !3703
  store ptr %452, ptr %420, align 8, !dbg !3703, !tbaa !1408
  br label %453, !dbg !3704

453:                                              ; preds = %422, %444
  %454 = phi i32 [ %442, %422 ], [ %451, %444 ]
  %455 = sub nsw i32 %426, %431, !dbg !3705
  call void @llvm.dbg.value(metadata i32 %455, metadata !1293, metadata !DIExpression()), !dbg !3304
  %456 = add nuw nsw i64 %424, 1, !dbg !3706
  call void @llvm.dbg.value(metadata i64 %456, metadata !1296, metadata !DIExpression()), !dbg !3304
  %457 = icmp slt i64 %456, %421, !dbg !3675
  %458 = icmp sgt i32 %455, 0, !dbg !3676
  %459 = select i1 %457, i1 %458, i1 false, !dbg !3676
  br i1 %459, label %422, label %460, !dbg !3677, !llvm.loop !3707

460:                                              ; preds = %453, %413, %61, %45
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7, !dbg !3709
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7, !dbg !3709
  ret void, !dbg !3709
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cavlc_mb_mvd(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !dbg !3710 {
  %6 = alloca [2 x i16], align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3714, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata ptr %1, metadata !3715, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i32 %2, metadata !3716, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i32 %3, metadata !3717, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i32 %4, metadata !3718, metadata !DIExpression()), !dbg !3720
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7, !dbg !3721
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3719, metadata !DIExpression()), !dbg !3721
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6) #7, !dbg !3722
  %7 = zext i32 %2 to i64
  %8 = sext i32 %3 to i64, !dbg !3723
  %9 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %8, !dbg !3723
  %10 = load i32, ptr %9, align 4, !dbg !3723, !tbaa !1468
  %11 = sext i32 %10 to i64, !dbg !3724
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %7, i64 %11, !dbg !3724
  %13 = load i16, ptr %12, align 4, !dbg !3724, !tbaa !1824
  %14 = sext i16 %13 to i32, !dbg !3724
  %15 = load i16, ptr %6, align 4, !dbg !3725, !tbaa !1824
  %16 = sext i16 %15 to i32, !dbg !3725
  %17 = sub nsw i32 %14, %16, !dbg !3726
  call void @llvm.dbg.value(metadata ptr %1, metadata !2447, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i32 %17, metadata !2450, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !3727
  %18 = icmp slt i32 %17, 1, !dbg !3729
  %19 = mul nsw i32 %17, -2, !dbg !3730
  %20 = or i32 %19, 1, !dbg !3730
  %21 = shl nsw i32 %17, 1, !dbg !3730
  %22 = select i1 %18, i32 %20, i32 %21, !dbg !3730
  call void @llvm.dbg.value(metadata i32 %22, metadata !2450, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i32 %22, metadata !2452, metadata !DIExpression()), !dbg !3727
  %23 = icmp sgt i32 %22, 255, !dbg !3731
  %24 = lshr i32 %22, 8, !dbg !3732
  %25 = select i1 %23, i32 16, i32 0, !dbg !3732
  %26 = select i1 %23, i32 %24, i32 %22, !dbg !3732
  call void @llvm.dbg.value(metadata i32 %26, metadata !2452, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i32 %25, metadata !2451, metadata !DIExpression()), !dbg !3727
  %27 = sext i32 %26 to i64, !dbg !3733
  %28 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %27, !dbg !3733
  %29 = load i8, ptr %28, align 1, !dbg !3733, !tbaa !1434
  %30 = zext i8 %29 to i32, !dbg !3733
  %31 = add nuw nsw i32 %25, %30, !dbg !3734
  call void @llvm.dbg.value(metadata i32 %31, metadata !2451, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i32 %31, metadata !1491, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i32 %22, metadata !1492, metadata !DIExpression()), !dbg !3735
  %32 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !3737
  %33 = load i64, ptr %32, align 8, !dbg !3737, !tbaa !1448
  %34 = zext i32 %31 to i64, !dbg !3738
  %35 = shl i64 %33, %34, !dbg !3738
  %36 = zext i32 %22 to i64, !dbg !3739
  %37 = or i64 %35, %36, !dbg !3740
  %38 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4, !dbg !3741
  %39 = load i32, ptr %38, align 8, !dbg !3742, !tbaa !1413
  %40 = sub nsw i32 %39, %31, !dbg !3742
  store i32 %40, ptr %38, align 8, !dbg !3742, !tbaa !1413
  %41 = icmp slt i32 %40, 33, !dbg !3743
  br i1 %41, label %42, label %52, !dbg !3744

42:                                               ; preds = %5
  %43 = zext i32 %40 to i64, !dbg !3745
  %44 = shl i64 %37, %43, !dbg !3745
  call void @llvm.dbg.value(metadata i64 %44, metadata !1507, metadata !DIExpression()), !dbg !3746
  %45 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %44) #8, !dbg !3748, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %45, metadata !1507, metadata !DIExpression()), !dbg !3746
  %46 = trunc i64 %45 to i32, !dbg !3749
  %47 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1, !dbg !3750
  %48 = load ptr, ptr %47, align 8, !dbg !3750, !tbaa !1408
  store i32 %46, ptr %48, align 4, !dbg !3751, !tbaa !1468
  %49 = load i32, ptr %38, align 8, !dbg !3752, !tbaa !1413
  %50 = add nsw i32 %49, 32, !dbg !3752
  %51 = getelementptr inbounds i8, ptr %48, i64 4, !dbg !3753
  store ptr %51, ptr %47, align 8, !dbg !3753, !tbaa !1408
  br label %52, !dbg !3754

52:                                               ; preds = %5, %42
  %53 = phi i32 [ %40, %5 ], [ %50, %42 ], !dbg !3755
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 57, i32 3, i64 %7, i64 %11, i64 1, !dbg !3758
  %55 = load i16, ptr %54, align 2, !dbg !3758, !tbaa !1824
  %56 = sext i16 %55 to i32, !dbg !3758
  %57 = getelementptr inbounds [2 x i16], ptr %6, i64 0, i64 1, !dbg !3759
  %58 = load i16, ptr %57, align 2, !dbg !3759, !tbaa !1824
  %59 = sext i16 %58 to i32, !dbg !3759
  %60 = sub nsw i32 %56, %59, !dbg !3760
  call void @llvm.dbg.value(metadata ptr %1, metadata !2447, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i32 %60, metadata !2450, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !3761
  %61 = icmp slt i32 %60, 1, !dbg !3762
  %62 = mul nsw i32 %60, -2, !dbg !3763
  %63 = or i32 %62, 1, !dbg !3763
  %64 = shl nsw i32 %60, 1, !dbg !3763
  %65 = select i1 %61, i32 %63, i32 %64, !dbg !3763
  call void @llvm.dbg.value(metadata i32 %65, metadata !2450, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i32 %65, metadata !2452, metadata !DIExpression()), !dbg !3761
  %66 = icmp sgt i32 %65, 255, !dbg !3764
  %67 = lshr i32 %65, 8, !dbg !3765
  %68 = select i1 %66, i32 16, i32 0, !dbg !3765
  %69 = select i1 %66, i32 %67, i32 %65, !dbg !3765
  call void @llvm.dbg.value(metadata i32 %69, metadata !2452, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i32 %68, metadata !2451, metadata !DIExpression()), !dbg !3761
  %70 = sext i32 %69 to i64, !dbg !3766
  %71 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %70, !dbg !3766
  %72 = load i8, ptr %71, align 1, !dbg !3766, !tbaa !1434
  %73 = zext i8 %72 to i32, !dbg !3766
  %74 = add nuw nsw i32 %68, %73, !dbg !3767
  call void @llvm.dbg.value(metadata i32 %74, metadata !2451, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata ptr %1, metadata !1486, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i32 %74, metadata !1491, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i32 %65, metadata !1492, metadata !DIExpression()), !dbg !3768
  %75 = zext i32 %74 to i64, !dbg !3769
  %76 = shl i64 %37, %75, !dbg !3769
  %77 = zext i32 %65 to i64, !dbg !3770
  %78 = or i64 %76, %77, !dbg !3771
  store i64 %78, ptr %32, align 8, !dbg !3772, !tbaa !1448
  %79 = sub nsw i32 %53, %74, !dbg !3755
  store i32 %79, ptr %38, align 8, !dbg !3755, !tbaa !1413
  %80 = icmp slt i32 %79, 33, !dbg !3773
  br i1 %80, label %81, label %91, !dbg !3774

81:                                               ; preds = %52
  %82 = zext i32 %79 to i64, !dbg !3775
  %83 = shl i64 %78, %82, !dbg !3775
  call void @llvm.dbg.value(metadata i64 %83, metadata !1507, metadata !DIExpression()), !dbg !3776
  %84 = call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %83) #8, !dbg !3778, !srcloc !1515
  call void @llvm.dbg.value(metadata i64 %84, metadata !1507, metadata !DIExpression()), !dbg !3776
  %85 = trunc i64 %84 to i32, !dbg !3779
  %86 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1, !dbg !3780
  %87 = load ptr, ptr %86, align 8, !dbg !3780, !tbaa !1408
  store i32 %85, ptr %87, align 4, !dbg !3781, !tbaa !1468
  %88 = load i32, ptr %38, align 8, !dbg !3782, !tbaa !1413
  %89 = add nsw i32 %88, 32, !dbg !3782
  store i32 %89, ptr %38, align 8, !dbg !3782, !tbaa !1413
  %90 = getelementptr inbounds i8, ptr %87, i64 4, !dbg !3783
  store ptr %90, ptr %86, align 8, !dbg !3783, !tbaa !1408
  br label %91, !dbg !3784

91:                                               ; preds = %52, %81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7, !dbg !3785
  ret void, !dbg !3785
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #6

attributes #0 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { inlinehint nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(none) }
attributes #9 = { nounwind memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!1325, !1326, !1327, !1328, !1329, !1330}
!llvm.ident = !{!1331}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 310, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "encoder/cavlc.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "76379fe3170d4b74c84cfd9a004e4bd2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 37)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode4x4_fix", scope: !9, file: !85, line: 80, type: !1323, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !110, globals: !140, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !20, !43, !56, !76, !84, !99}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "slice_type_e", file: !12, line: 148, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./common/common.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "4880b62cc871dca4002788746fbccb70")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "SLICE_TYPE_P", value: 0)
!16 = !DIEnumerator(name: "SLICE_TYPE_B", value: 1)
!17 = !DIEnumerator(name: "SLICE_TYPE_I", value: 2)
!18 = !DIEnumerator(name: "SLICE_TYPE_SP", value: 3)
!19 = !DIEnumerator(name: "SLICE_TYPE_SI", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_class_e", file: !21, line: 61, baseType: !13, size: 32, elements: !22)
!21 = !DIFile(filename: "./common/macroblock.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "0b0c175005b691009f3df3e457cfe9c0")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!23 = !DIEnumerator(name: "I_4x4", value: 0)
!24 = !DIEnumerator(name: "I_8x8", value: 1)
!25 = !DIEnumerator(name: "I_16x16", value: 2)
!26 = !DIEnumerator(name: "I_PCM", value: 3)
!27 = !DIEnumerator(name: "P_L0", value: 4)
!28 = !DIEnumerator(name: "P_8x8", value: 5)
!29 = !DIEnumerator(name: "P_SKIP", value: 6)
!30 = !DIEnumerator(name: "B_DIRECT", value: 7)
!31 = !DIEnumerator(name: "B_L0_L0", value: 8)
!32 = !DIEnumerator(name: "B_L0_L1", value: 9)
!33 = !DIEnumerator(name: "B_L0_BI", value: 10)
!34 = !DIEnumerator(name: "B_L1_L0", value: 11)
!35 = !DIEnumerator(name: "B_L1_L1", value: 12)
!36 = !DIEnumerator(name: "B_L1_BI", value: 13)
!37 = !DIEnumerator(name: "B_BI_L0", value: 14)
!38 = !DIEnumerator(name: "B_BI_L1", value: 15)
!39 = !DIEnumerator(name: "B_BI_BI", value: 16)
!40 = !DIEnumerator(name: "B_8x8", value: 17)
!41 = !DIEnumerator(name: "B_SKIP", value: 18)
!42 = !DIEnumerator(name: "X264_MBTYPE_MAX", value: 19)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 30, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./common/pixel.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "aba138e44f0e52bc0158be0d182b79c1")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!46 = !DIEnumerator(name: "PIXEL_16x16", value: 0)
!47 = !DIEnumerator(name: "PIXEL_16x8", value: 1)
!48 = !DIEnumerator(name: "PIXEL_8x16", value: 2)
!49 = !DIEnumerator(name: "PIXEL_8x8", value: 3)
!50 = !DIEnumerator(name: "PIXEL_8x4", value: 4)
!51 = !DIEnumerator(name: "PIXEL_4x8", value: 5)
!52 = !DIEnumerator(name: "PIXEL_4x4", value: 6)
!53 = !DIEnumerator(name: "PIXEL_4x2", value: 7)
!54 = !DIEnumerator(name: "PIXEL_2x4", value: 8)
!55 = !DIEnumerator(name: "PIXEL_2x2", value: 9)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_partition_e", file: !21, line: 125, baseType: !13, size: 32, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!58 = !DIEnumerator(name: "D_L0_4x4", value: 0)
!59 = !DIEnumerator(name: "D_L0_8x4", value: 1)
!60 = !DIEnumerator(name: "D_L0_4x8", value: 2)
!61 = !DIEnumerator(name: "D_L0_8x8", value: 3)
!62 = !DIEnumerator(name: "D_L1_4x4", value: 4)
!63 = !DIEnumerator(name: "D_L1_8x4", value: 5)
!64 = !DIEnumerator(name: "D_L1_4x8", value: 6)
!65 = !DIEnumerator(name: "D_L1_8x8", value: 7)
!66 = !DIEnumerator(name: "D_BI_4x4", value: 8)
!67 = !DIEnumerator(name: "D_BI_8x4", value: 9)
!68 = !DIEnumerator(name: "D_BI_4x8", value: 10)
!69 = !DIEnumerator(name: "D_BI_8x8", value: 11)
!70 = !DIEnumerator(name: "D_DIRECT_8x8", value: 12)
!71 = !DIEnumerator(name: "D_8x8", value: 13)
!72 = !DIEnumerator(name: "D_16x8", value: 14)
!73 = !DIEnumerator(name: "D_8x16", value: 15)
!74 = !DIEnumerator(name: "D_16x16", value: 16)
!75 = !DIEnumerator(name: "X264_PARTTYPE_MAX", value: 17)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cabac_ctx_block_cat_e", file: !21, line: 266, baseType: !13, size: 32, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83}
!78 = !DIEnumerator(name: "DCT_LUMA_DC", value: 0)
!79 = !DIEnumerator(name: "DCT_LUMA_AC", value: 1)
!80 = !DIEnumerator(name: "DCT_LUMA_4x4", value: 2)
!81 = !DIEnumerator(name: "DCT_CHROMA_DC", value: 3)
!82 = !DIEnumerator(name: "DCT_CHROMA_AC", value: 4)
!83 = !DIEnumerator(name: "DCT_LUMA_8x8", value: 5)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra4x4_pred_e", file: !85, line: 64, baseType: !13, size: 32, elements: !86)
!85 = !DIFile(filename: "./common/predict.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "c7827bfe44f4a550b7080533457a8327")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!87 = !DIEnumerator(name: "I_PRED_4x4_V", value: 0)
!88 = !DIEnumerator(name: "I_PRED_4x4_H", value: 1)
!89 = !DIEnumerator(name: "I_PRED_4x4_DC", value: 2)
!90 = !DIEnumerator(name: "I_PRED_4x4_DDL", value: 3)
!91 = !DIEnumerator(name: "I_PRED_4x4_DDR", value: 4)
!92 = !DIEnumerator(name: "I_PRED_4x4_VR", value: 5)
!93 = !DIEnumerator(name: "I_PRED_4x4_HD", value: 6)
!94 = !DIEnumerator(name: "I_PRED_4x4_VL", value: 7)
!95 = !DIEnumerator(name: "I_PRED_4x4_HU", value: 8)
!96 = !DIEnumerator(name: "I_PRED_4x4_DC_LEFT", value: 9)
!97 = !DIEnumerator(name: "I_PRED_4x4_DC_TOP", value: 10)
!98 = !DIEnumerator(name: "I_PRED_4x4_DC_128", value: 11)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_e", file: !100, line: 27, baseType: !13, size: 32, elements: !101)
!100 = !DIFile(filename: "./common/set.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "06164d1fd824dd844d17e97dd39e9ac3")
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109}
!102 = !DIEnumerator(name: "PROFILE_BASELINE", value: 66)
!103 = !DIEnumerator(name: "PROFILE_MAIN", value: 77)
!104 = !DIEnumerator(name: "PROFILE_EXTENDED", value: 88)
!105 = !DIEnumerator(name: "PROFILE_HIGH", value: 100)
!106 = !DIEnumerator(name: "PROFILE_HIGH10", value: 110)
!107 = !DIEnumerator(name: "PROFILE_HIGH422", value: 122)
!108 = !DIEnumerator(name: "PROFILE_HIGH444", value: 144)
!109 = !DIEnumerator(name: "PROFILE_HIGH444_PREDICTIVE", value: 244)
!110 = !{!111, !116, !13, !120}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !113, line: 26, baseType: !114)
!113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !115, line: 42, baseType: !13)
!115 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !118, line: 87, baseType: !119)
!118 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!119 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !123, file: !122, line: 93, size: 256, elements: !135)
!122 = !DIFile(filename: "./common/x86/util.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "5f677273b03032461bc0acac3bce37d9")
!123 = distinct !DISubprogram(name: "array_non_zero_count_mmx", scope: !122, file: !122, line: 78, type: !124, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !132)
!124 = !DISubroutineType(types: !125)
!125 = !{!126, !127}
!126 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !129, line: 25, baseType: !130)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !115, line: 39, baseType: !131)
!131 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!132 = !{!133, !134}
!133 = !DILocalVariable(name: "v", arg: 1, scope: !123, file: !122, line: 78, type: !127)
!134 = !DILocalVariable(name: "count", scope: !123, file: !122, line: 80, type: !126)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !121, file: !122, line: 93, baseType: !137, size: 256)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 256, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 16)
!140 = !{!0, !141, !146, !7, !156, !160, !165, !167, !172, !177, !183, !188, !190, !196, !201, !203, !1276, !1318}
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !2, line: 568, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 27)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "x264_ue_size_tab", scope: !9, file: !148, line: 183, type: !149, isLocal: true, isDefinition: true)
!148 = !DIFile(filename: "./common/bs.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "2f46b0964798cffcc7898517b4d9922e")
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 2048, elements: !154)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !113, line: 24, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !115, line: 38, baseType: !153)
!153 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!154 = !{!155}
!155 = !DISubrange(count: 256)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "x264_scan8", scope: !9, file: !12, line: 216, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 864, elements: !144)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode8x8c_fix", scope: !9, file: !85, line: 41, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 56, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 7)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode16x16_fix", scope: !9, file: !85, line: 58, type: !162, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "sub_mb_type_p_to_golomb", scope: !9, file: !2, line: 50, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 32, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 4)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "sub_mb_type_b_to_golomb", scope: !9, file: !2, line: 54, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 104, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 13)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "x264_mb_partition_listX_table", scope: !9, file: !21, line: 153, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 272, elements: !180)
!180 = !{!181, !182}
!181 = !DISubrange(count: 2)
!182 = !DISubrange(count: 17)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "x264_mb_type_list0_table", scope: !9, file: !21, line: 94, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 304, elements: !186)
!186 = !{!187, !181}
!187 = !DISubrange(count: 19)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "x264_mb_type_list1_table", scope: !9, file: !21, line: 107, type: !185, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "mb_type_b_to_golomb", scope: !9, file: !2, line: 44, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 216, elements: !193)
!193 = !{!194, !195}
!194 = !DISubrange(count: 3)
!195 = !DISubrange(count: 9)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "intra4x4_cbp_to_golomb", scope: !9, file: !2, line: 32, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 384, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 48)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "inter_cbp_to_golomb", scope: !9, file: !2, line: 38, type: !198, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "partition_tab", scope: !205, file: !21, line: 473, type: !1275, isLocal: true, isDefinition: true)
!205 = distinct !DISubprogram(name: "x264_mb_transform_8x8_allowed", scope: !21, file: !21, line: 468, type: !206, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1271)
!206 = !DISubroutineType(types: !207)
!207 = !{!126, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !210, line: 42, baseType: !211)
!210 = !DIFile(filename: "./x264.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "9fe19a6136ab7ddd44a70d62bce62365")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !12, line: 250, size: 206080, elements: !212)
!212 = !{!213, !357, !361, !365, !366, !367, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !474, !476, !503, !505, !506, !511, !516, !520, !524, !531, !535, !536, !537, !538, !541, !543, !545, !585, !602, !757, !758, !759, !760, !763, !764, !765, !766, !780, !932, !936, !991, !997, !998, !1006, !1008, !1078, !1138, !1190, !1211, !1251}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !211, file: !12, line: 253, baseType: !214, size: 4928)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !210, line: 295, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !210, line: 151, size: 4928, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !257, !259, !260, !261, !262, !266, !267, !282, !283, !284, !285, !286, !315, !354, !355, !356}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !215, file: !210, line: 154, baseType: !13, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !215, file: !210, line: 155, baseType: !126, size: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !215, file: !210, line: 156, baseType: !126, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !215, file: !210, line: 159, baseType: !126, size: 32, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !215, file: !210, line: 160, baseType: !126, size: 32, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !215, file: !210, line: 161, baseType: !126, size: 32, offset: 160)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !215, file: !210, line: 162, baseType: !126, size: 32, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !215, file: !210, line: 163, baseType: !126, size: 32, offset: 224)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !215, file: !210, line: 180, baseType: !226, size: 288, offset: 256)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !210, line: 165, size: 288, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !226, file: !210, line: 168, baseType: !126, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !226, file: !210, line: 169, baseType: !126, size: 32, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !226, file: !210, line: 171, baseType: !126, size: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !226, file: !210, line: 174, baseType: !126, size: 32, offset: 96)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !226, file: !210, line: 175, baseType: !126, size: 32, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !226, file: !210, line: 176, baseType: !126, size: 32, offset: 160)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !226, file: !210, line: 177, baseType: !126, size: 32, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !226, file: !210, line: 178, baseType: !126, size: 32, offset: 224)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !226, file: !210, line: 179, baseType: !126, size: 32, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !215, file: !210, line: 182, baseType: !126, size: 32, offset: 544)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !215, file: !210, line: 183, baseType: !126, size: 32, offset: 576)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !215, file: !210, line: 186, baseType: !126, size: 32, offset: 608)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !215, file: !210, line: 187, baseType: !126, size: 32, offset: 640)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !215, file: !210, line: 188, baseType: !126, size: 32, offset: 672)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !215, file: !210, line: 189, baseType: !126, size: 32, offset: 704)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "b_pre_scenecut", scope: !215, file: !210, line: 190, baseType: !126, size: 32, offset: 736)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !215, file: !210, line: 191, baseType: !126, size: 32, offset: 768)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !215, file: !210, line: 192, baseType: !126, size: 32, offset: 800)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !215, file: !210, line: 193, baseType: !126, size: 32, offset: 832)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "b_bframe_pyramid", scope: !215, file: !210, line: 194, baseType: !126, size: 32, offset: 864)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !215, file: !210, line: 196, baseType: !126, size: 32, offset: 896)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !215, file: !210, line: 197, baseType: !126, size: 32, offset: 928)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !215, file: !210, line: 198, baseType: !126, size: 32, offset: 960)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !215, file: !210, line: 200, baseType: !126, size: 32, offset: 992)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !215, file: !210, line: 201, baseType: !126, size: 32, offset: 1024)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !215, file: !210, line: 203, baseType: !126, size: 32, offset: 1056)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !215, file: !210, line: 205, baseType: !126, size: 32, offset: 1088)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !215, file: !210, line: 206, baseType: !256, size: 64, offset: 1152)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !215, file: !210, line: 207, baseType: !258, size: 128, offset: 1216)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 128, elements: !138)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !215, file: !210, line: 208, baseType: !258, size: 128, offset: 1344)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !215, file: !210, line: 209, baseType: !258, size: 128, offset: 1472)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !215, file: !210, line: 210, baseType: !258, size: 128, offset: 1600)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !215, file: !210, line: 211, baseType: !263, size: 512, offset: 1728)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 512, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !215, file: !210, line: 212, baseType: !263, size: 512, offset: 2240)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !215, file: !210, line: 215, baseType: !268, size: 64, offset: 2752)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !271, !126, !272, !274}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !276)
!276 = !{!277, !279, !280, !281}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !275, file: !278, baseType: !13, size: 32)
!278 = !DIFile(filename: "encoder/cavlc.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src")
!279 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !275, file: !278, baseType: !13, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !275, file: !278, baseType: !271, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !275, file: !278, baseType: !271, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !215, file: !210, line: 216, baseType: !271, size: 64, offset: 2816)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !215, file: !210, line: 217, baseType: !126, size: 32, offset: 2880)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !215, file: !210, line: 218, baseType: !126, size: 32, offset: 2912)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !215, file: !210, line: 219, baseType: !256, size: 64, offset: 2944)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !215, file: !210, line: 252, baseType: !287, size: 768, offset: 3008)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !210, line: 222, size: 768, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !309, !310, !313, !314}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !287, file: !210, line: 224, baseType: !13, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !287, file: !210, line: 225, baseType: !13, size: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !287, file: !210, line: 227, baseType: !126, size: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !287, file: !210, line: 228, baseType: !126, size: 32, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !287, file: !210, line: 229, baseType: !126, size: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_8x8_inference", scope: !287, file: !210, line: 230, baseType: !126, size: 32, offset: 160)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !287, file: !210, line: 231, baseType: !126, size: 32, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !287, file: !210, line: 233, baseType: !126, size: 32, offset: 224)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !287, file: !210, line: 234, baseType: !126, size: 32, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !287, file: !210, line: 235, baseType: !126, size: 32, offset: 288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !287, file: !210, line: 236, baseType: !126, size: 32, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !287, file: !210, line: 237, baseType: !126, size: 32, offset: 352)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !287, file: !210, line: 238, baseType: !126, size: 32, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !287, file: !210, line: 239, baseType: !126, size: 32, offset: 416)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !287, file: !210, line: 240, baseType: !126, size: 32, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !287, file: !210, line: 241, baseType: !126, size: 32, offset: 480)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !287, file: !210, line: 242, baseType: !126, size: 32, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !287, file: !210, line: 243, baseType: !126, size: 32, offset: 544)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !287, file: !210, line: 244, baseType: !308, size: 32, offset: 576)
!308 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !287, file: !210, line: 245, baseType: !308, size: 32, offset: 608)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !287, file: !210, line: 248, baseType: !311, size: 64, offset: 640)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 64, elements: !312)
!312 = !{!181}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !287, file: !210, line: 250, baseType: !126, size: 32, offset: 704)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !287, file: !210, line: 251, baseType: !126, size: 32, offset: 736)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !215, file: !210, line: 289, baseType: !316, size: 1024, offset: 3776)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !210, line: 255, size: 1024, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !352, !353}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !316, file: !210, line: 257, baseType: !126, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !316, file: !210, line: 259, baseType: !126, size: 32, offset: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !316, file: !210, line: 260, baseType: !126, size: 32, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !316, file: !210, line: 261, baseType: !126, size: 32, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !316, file: !210, line: 262, baseType: !126, size: 32, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !316, file: !210, line: 264, baseType: !126, size: 32, offset: 160)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !316, file: !210, line: 265, baseType: !308, size: 32, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !316, file: !210, line: 266, baseType: !308, size: 32, offset: 224)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !316, file: !210, line: 267, baseType: !126, size: 32, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !316, file: !210, line: 268, baseType: !126, size: 32, offset: 288)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !316, file: !210, line: 269, baseType: !308, size: 32, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !316, file: !210, line: 270, baseType: !308, size: 32, offset: 352)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !316, file: !210, line: 271, baseType: !308, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !316, file: !210, line: 273, baseType: !126, size: 32, offset: 416)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !316, file: !210, line: 274, baseType: !308, size: 32, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !316, file: !210, line: 277, baseType: !126, size: 32, offset: 480)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !316, file: !210, line: 278, baseType: !256, size: 64, offset: 512)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !316, file: !210, line: 279, baseType: !126, size: 32, offset: 576)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !316, file: !210, line: 280, baseType: !256, size: 64, offset: 640)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !316, file: !210, line: 283, baseType: !308, size: 32, offset: 704)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !316, file: !210, line: 284, baseType: !308, size: 32, offset: 736)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !316, file: !210, line: 285, baseType: !308, size: 32, offset: 768)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !316, file: !210, line: 286, baseType: !341, size: 64, offset: 832)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !210, line: 149, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 142, size: 256, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !343, file: !210, line: 144, baseType: !126, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !343, file: !210, line: 144, baseType: !126, size: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !343, file: !210, line: 145, baseType: !126, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !343, file: !210, line: 146, baseType: !126, size: 32, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !343, file: !210, line: 147, baseType: !308, size: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !343, file: !210, line: 148, baseType: !351, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !316, file: !210, line: 287, baseType: !126, size: 32, offset: 896)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !316, file: !210, line: 288, baseType: !256, size: 64, offset: 960)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !215, file: !210, line: 292, baseType: !126, size: 32, offset: 4800)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !215, file: !210, line: 293, baseType: !126, size: 32, offset: 4832)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !215, file: !210, line: 294, baseType: !126, size: 32, offset: 4864)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !211, file: !12, line: 255, baseType: !358, size: 8192, offset: 4928)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 8192, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !211, file: !12, line: 256, baseType: !362, size: 64, offset: 13120)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !363, line: 27, baseType: !364)
!363 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!364 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !211, file: !12, line: 257, baseType: !126, size: 32, offset: 13184)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !211, file: !12, line: 258, baseType: !126, size: 32, offset: 13216)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !211, file: !12, line: 269, baseType: !368, size: 2112, offset: 13248)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !12, line: 261, size: 2112, elements: !369)
!369 = !{!370, !371, !383, !384, !385, !395}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !368, file: !12, line: 263, baseType: !126, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !368, file: !12, line: 264, baseType: !372, size: 1536, offset: 64)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 1536, elements: !381)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !210, line: 399, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 391, size: 192, elements: !375)
!375 = !{!376, !377, !378, !379}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !374, file: !210, line: 393, baseType: !126, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !374, file: !210, line: 394, baseType: !126, size: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !374, file: !210, line: 397, baseType: !126, size: 32, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !374, file: !210, line: 398, baseType: !380, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!381 = !{!382}
!382 = !DISubrange(count: 8)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !368, file: !12, line: 265, baseType: !126, size: 32, offset: 1600)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !368, file: !12, line: 266, baseType: !380, size: 64, offset: 1664)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !368, file: !12, line: 267, baseType: !386, size: 320, offset: 1728)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !148, line: 49, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !148, line: 40, size: 320, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !394}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !387, file: !148, line: 42, baseType: !380, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !387, file: !148, line: 43, baseType: !380, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !387, file: !148, line: 44, baseType: !380, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !387, file: !148, line: 46, baseType: !117, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !387, file: !148, line: 47, baseType: !126, size: 32, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !387, file: !148, line: 48, baseType: !126, size: 32, offset: 288)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !368, file: !12, line: 268, baseType: !126, size: 32, offset: 2048)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !211, file: !12, line: 274, baseType: !126, size: 32, offset: 15360)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_offset", scope: !211, file: !12, line: 276, baseType: !126, size: 32, offset: 15392)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !211, file: !12, line: 277, baseType: !126, size: 32, offset: 15424)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_msb", scope: !211, file: !12, line: 278, baseType: !126, size: 32, offset: 15456)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !211, file: !12, line: 279, baseType: !126, size: 32, offset: 15488)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !211, file: !12, line: 280, baseType: !126, size: 32, offset: 15520)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_num", scope: !211, file: !12, line: 282, baseType: !126, size: 32, offset: 15552)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !211, file: !12, line: 283, baseType: !126, size: 32, offset: 15584)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !211, file: !12, line: 284, baseType: !126, size: 32, offset: 15616)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !211, file: !12, line: 287, baseType: !406, size: 9920, offset: 15648)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 9920, elements: !472)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !100, line: 133, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 52, size: 9920, elements: !409)
!409 = !{!410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !425, !426, !427, !428, !429, !430, !431, !432, !433, !440, !441, !471}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !408, file: !100, line: 54, baseType: !126, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !408, file: !100, line: 56, baseType: !126, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !408, file: !100, line: 57, baseType: !126, size: 32, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !408, file: !100, line: 59, baseType: !126, size: 32, offset: 96)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !408, file: !100, line: 60, baseType: !126, size: 32, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !408, file: !100, line: 61, baseType: !126, size: 32, offset: 160)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !408, file: !100, line: 63, baseType: !126, size: 32, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !408, file: !100, line: 65, baseType: !126, size: 32, offset: 224)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !408, file: !100, line: 67, baseType: !126, size: 32, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !408, file: !100, line: 69, baseType: !126, size: 32, offset: 288)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !408, file: !100, line: 70, baseType: !126, size: 32, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !408, file: !100, line: 71, baseType: !126, size: 32, offset: 352)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !408, file: !100, line: 72, baseType: !126, size: 32, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !408, file: !100, line: 73, baseType: !424, size: 8192, offset: 416)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 8192, elements: !154)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !408, file: !100, line: 75, baseType: !126, size: 32, offset: 8608)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !408, file: !100, line: 76, baseType: !126, size: 32, offset: 8640)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !408, file: !100, line: 77, baseType: !126, size: 32, offset: 8672)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !408, file: !100, line: 78, baseType: !126, size: 32, offset: 8704)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !408, file: !100, line: 79, baseType: !126, size: 32, offset: 8736)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !408, file: !100, line: 80, baseType: !126, size: 32, offset: 8768)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !408, file: !100, line: 81, baseType: !126, size: 32, offset: 8800)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !408, file: !100, line: 83, baseType: !126, size: 32, offset: 8832)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !408, file: !100, line: 90, baseType: !434, size: 128, offset: 8864)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !100, line: 84, size: 128, elements: !435)
!435 = !{!436, !437, !438, !439}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !434, file: !100, line: 86, baseType: !126, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !434, file: !100, line: 87, baseType: !126, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !434, file: !100, line: 88, baseType: !126, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !434, file: !100, line: 89, baseType: !126, size: 32, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !408, file: !100, line: 92, baseType: !126, size: 32, offset: 8992)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !408, file: !100, line: 129, baseType: !442, size: 864, offset: 9024)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !100, line: 93, size: 864, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !442, file: !100, line: 95, baseType: !126, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !442, file: !100, line: 96, baseType: !126, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !442, file: !100, line: 97, baseType: !126, size: 32, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !442, file: !100, line: 99, baseType: !126, size: 32, offset: 96)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !442, file: !100, line: 100, baseType: !126, size: 32, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !442, file: !100, line: 102, baseType: !126, size: 32, offset: 160)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !442, file: !100, line: 103, baseType: !126, size: 32, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !442, file: !100, line: 104, baseType: !126, size: 32, offset: 224)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !442, file: !100, line: 105, baseType: !126, size: 32, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !442, file: !100, line: 106, baseType: !126, size: 32, offset: 288)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !442, file: !100, line: 107, baseType: !126, size: 32, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !442, file: !100, line: 108, baseType: !126, size: 32, offset: 352)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !442, file: !100, line: 110, baseType: !126, size: 32, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !442, file: !100, line: 111, baseType: !126, size: 32, offset: 416)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !442, file: !100, line: 112, baseType: !126, size: 32, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !442, file: !100, line: 114, baseType: !126, size: 32, offset: 480)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !442, file: !100, line: 115, baseType: !126, size: 32, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !442, file: !100, line: 116, baseType: !126, size: 32, offset: 544)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !442, file: !100, line: 117, baseType: !126, size: 32, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !442, file: !100, line: 119, baseType: !126, size: 32, offset: 608)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !442, file: !100, line: 120, baseType: !126, size: 32, offset: 640)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !442, file: !100, line: 121, baseType: !126, size: 32, offset: 672)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !442, file: !100, line: 122, baseType: !126, size: 32, offset: 704)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !442, file: !100, line: 123, baseType: !126, size: 32, offset: 736)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !442, file: !100, line: 124, baseType: !126, size: 32, offset: 768)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !442, file: !100, line: 125, baseType: !126, size: 32, offset: 800)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !442, file: !100, line: 126, baseType: !126, size: 32, offset: 832)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !408, file: !100, line: 131, baseType: !126, size: 32, offset: 9888)
!472 = !{!473}
!473 = !DISubrange(count: 1)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !211, file: !12, line: 288, baseType: !475, size: 64, offset: 25600)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !211, file: !12, line: 289, baseType: !477, size: 960, offset: 25664)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 960, elements: !472)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !100, line: 165, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 135, size: 960, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !479, file: !100, line: 137, baseType: !126, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !479, file: !100, line: 138, baseType: !126, size: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !479, file: !100, line: 140, baseType: !126, size: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !479, file: !100, line: 142, baseType: !126, size: 32, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !479, file: !100, line: 143, baseType: !126, size: 32, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !479, file: !100, line: 145, baseType: !126, size: 32, offset: 160)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !479, file: !100, line: 146, baseType: !126, size: 32, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !479, file: !100, line: 148, baseType: !126, size: 32, offset: 224)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !479, file: !100, line: 149, baseType: !126, size: 32, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !479, file: !100, line: 151, baseType: !126, size: 32, offset: 288)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !479, file: !100, line: 152, baseType: !126, size: 32, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !479, file: !100, line: 154, baseType: !126, size: 32, offset: 352)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !479, file: !100, line: 156, baseType: !126, size: 32, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !479, file: !100, line: 157, baseType: !126, size: 32, offset: 416)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !479, file: !100, line: 158, baseType: !126, size: 32, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !479, file: !100, line: 160, baseType: !126, size: 32, offset: 480)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !479, file: !100, line: 162, baseType: !126, size: 32, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !479, file: !100, line: 163, baseType: !499, size: 384, offset: 576)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 384, elements: !501)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!501 = !{!502}
!502 = !DISubrange(count: 6)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !211, file: !12, line: 290, baseType: !504, size: 64, offset: 26624)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !211, file: !12, line: 291, baseType: !126, size: 32, offset: 26688)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !211, file: !12, line: 294, baseType: !507, size: 256, offset: 26752)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 256, elements: !170)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 512, elements: !510)
!510 = !{!171, !171}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !211, file: !12, line: 295, baseType: !512, size: 128, offset: 27008)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 128, elements: !312)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 2048, elements: !515)
!515 = !{!382, !382}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !211, file: !12, line: 297, baseType: !517, size: 256, offset: 27136)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 256, elements: !170)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 512, elements: !138)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !211, file: !12, line: 298, baseType: !521, size: 128, offset: 27392)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 128, elements: !312)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 2048, elements: !264)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !211, file: !12, line: 300, baseType: !525, size: 256, offset: 27520)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 256, elements: !170)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 256, elements: !138)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !113, line: 25, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !115, line: 40, baseType: !530)
!530 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !211, file: !12, line: 301, baseType: !532, size: 128, offset: 27776)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 128, elements: !312)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 1024, elements: !264)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !211, file: !12, line: 302, baseType: !525, size: 256, offset: 27904)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !211, file: !12, line: 303, baseType: !532, size: 128, offset: 28160)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !211, file: !12, line: 305, baseType: !500, size: 64, offset: 28288)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !211, file: !12, line: 307, baseType: !539, size: 4096, align: 128, offset: 28416)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 4096, elements: !540)
!540 = !{!181, !265}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !211, file: !12, line: 308, baseType: !542, size: 2048, align: 128, offset: 32512)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 2048, elements: !540)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !211, file: !12, line: 309, baseType: !544, size: 64, offset: 34560)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !312)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !211, file: !12, line: 312, baseType: !546, size: 3072, offset: 34624)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !12, line: 209, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 159, size: 3072, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !577, !578, !579, !580, !581, !582, !583, !584}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !547, file: !12, line: 161, baseType: !475, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !547, file: !12, line: 162, baseType: !504, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !547, file: !12, line: 164, baseType: !126, size: 32, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !547, file: !12, line: 165, baseType: !126, size: 32, offset: 160)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !547, file: !12, line: 166, baseType: !126, size: 32, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !547, file: !12, line: 168, baseType: !126, size: 32, offset: 224)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !547, file: !12, line: 170, baseType: !126, size: 32, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !547, file: !12, line: 172, baseType: !126, size: 32, offset: 288)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !547, file: !12, line: 173, baseType: !126, size: 32, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !547, file: !12, line: 174, baseType: !126, size: 32, offset: 352)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !547, file: !12, line: 176, baseType: !126, size: 32, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !547, file: !12, line: 178, baseType: !126, size: 32, offset: 416)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !547, file: !12, line: 179, baseType: !126, size: 32, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !547, file: !12, line: 181, baseType: !311, size: 64, offset: 480)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !547, file: !12, line: 182, baseType: !126, size: 32, offset: 544)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !547, file: !12, line: 184, baseType: !126, size: 32, offset: 576)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !547, file: !12, line: 186, baseType: !126, size: 32, offset: 608)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !547, file: !12, line: 187, baseType: !126, size: 32, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !547, file: !12, line: 188, baseType: !126, size: 32, offset: 672)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !547, file: !12, line: 190, baseType: !126, size: 32, offset: 704)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !547, file: !12, line: 191, baseType: !126, size: 32, offset: 736)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !547, file: !12, line: 195, baseType: !571, size: 2048, offset: 768)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 2048, elements: !576)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !547, file: !12, line: 192, size: 64, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !572, file: !12, line: 193, baseType: !126, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !572, file: !12, line: 194, baseType: !126, size: 32, offset: 32)
!576 = !{!181, !139}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !547, file: !12, line: 197, baseType: !126, size: 32, offset: 2816)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !547, file: !12, line: 199, baseType: !126, size: 32, offset: 2848)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !547, file: !12, line: 200, baseType: !126, size: 32, offset: 2880)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !547, file: !12, line: 201, baseType: !126, size: 32, offset: 2912)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !547, file: !12, line: 202, baseType: !126, size: 32, offset: 2944)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !547, file: !12, line: 205, baseType: !126, size: 32, offset: 2976)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !547, file: !12, line: 206, baseType: !126, size: 32, offset: 3008)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !547, file: !12, line: 207, baseType: !126, size: 32, offset: 3040)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !211, file: !12, line: 315, baseType: !586, size: 4096, offset: 37760)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !587, line: 46, baseType: !588)
!587 = !DIFile(filename: "./common/cabac.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fed287ee191b19e61654b41f7c57e583")
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !587, line: 27, size: 4096, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !588, file: !587, line: 30, baseType: !126, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !588, file: !587, line: 31, baseType: !126, size: 32, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !588, file: !587, line: 34, baseType: !126, size: 32, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !588, file: !587, line: 35, baseType: !126, size: 32, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !588, file: !587, line: 37, baseType: !380, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !588, file: !587, line: 38, baseType: !380, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !588, file: !587, line: 39, baseType: !380, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !588, file: !587, line: 42, baseType: !126, size: 32, align: 128, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !588, file: !587, line: 45, baseType: !599, size: 3680, offset: 416)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 3680, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 460)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !211, file: !12, line: 340, baseType: !603, size: 31808, offset: 41856)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !12, line: 317, size: 31808, elements: !604)
!604 = !{!605, !742, !743, !747, !748, !750, !751, !752, !753, !754, !755, !756}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !603, file: !12, line: 320, baseType: !606, size: 4288)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 4288, elements: !740)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !609, line: 94, baseType: !610)
!609 = !DIFile(filename: "./common/frame.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "3ae200731644fdbac60ac7f8f3f9d2f1")
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !609, line: 31, size: 51648, elements: !611)
!611 = !{!612, !613, !614, !615, !618, !619, !620, !621, !622, !623, !624, !627, !628, !629, !630, !631, !632, !634, !636, !637, !639, !640, !641, !646, !650, !652, !655, !657, !658, !660, !661, !665, !666, !667, !670, !672, !673, !674, !675, !677, !678, !679, !680, !681, !682, !710}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !610, file: !609, line: 34, baseType: !126, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !610, file: !609, line: 35, baseType: !126, size: 32, offset: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !610, file: !609, line: 36, baseType: !126, size: 32, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !610, file: !609, line: 37, baseType: !616, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !129, line: 27, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !115, line: 44, baseType: !119)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !610, file: !609, line: 38, baseType: !126, size: 32, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !610, file: !609, line: 39, baseType: !126, size: 32, offset: 224)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !610, file: !609, line: 40, baseType: !126, size: 32, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !610, file: !609, line: 41, baseType: !308, size: 32, offset: 288)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !610, file: !609, line: 42, baseType: !308, size: 32, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !610, file: !609, line: 45, baseType: !126, size: 32, offset: 352)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !610, file: !609, line: 46, baseType: !625, size: 96, offset: 384)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 96, elements: !626)
!626 = !{!194}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !610, file: !609, line: 47, baseType: !625, size: 96, offset: 480)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !610, file: !609, line: 48, baseType: !625, size: 96, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !610, file: !609, line: 49, baseType: !126, size: 32, offset: 672)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !610, file: !609, line: 50, baseType: !126, size: 32, offset: 704)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !610, file: !609, line: 51, baseType: !126, size: 32, offset: 736)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !610, file: !609, line: 52, baseType: !633, size: 192, offset: 768)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 192, elements: !626)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !610, file: !609, line: 53, baseType: !635, size: 256, offset: 960)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 256, elements: !170)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !610, file: !609, line: 54, baseType: !635, size: 256, offset: 1216)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !610, file: !609, line: 55, baseType: !638, size: 64, offset: 1472)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !610, file: !609, line: 59, baseType: !635, size: 256, offset: 1536)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !610, file: !609, line: 60, baseType: !635, size: 256, offset: 1792)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !610, file: !609, line: 63, baseType: !642, size: 64, offset: 2048)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !129, line: 24, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !115, line: 37, baseType: !645)
!645 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !610, file: !609, line: 64, baseType: !647, size: 128, offset: 2112)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 128, elements: !312)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 32, elements: !312)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !610, file: !609, line: 65, baseType: !651, size: 2176, offset: 2240)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 2176, elements: !180)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !610, file: !609, line: 66, baseType: !653, size: 2176, offset: 4416)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 2176, elements: !180)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !610, file: !609, line: 67, baseType: !656, size: 128, offset: 6592)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 128, elements: !312)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !610, file: !609, line: 68, baseType: !311, size: 64, offset: 6720)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !610, file: !609, line: 69, baseType: !659, size: 1024, offset: 6784)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 1024, elements: !576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !610, file: !609, line: 70, baseType: !519, size: 512, offset: 7808)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !610, file: !609, line: 75, baseType: !662, size: 10368, offset: 8320)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 10368, elements: !663)
!663 = !{!664, !664}
!664 = !DISubrange(count: 18)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !610, file: !609, line: 76, baseType: !662, size: 10368, offset: 18688)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !610, file: !609, line: 77, baseType: !126, size: 32, offset: 29056)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !610, file: !609, line: 78, baseType: !668, size: 576, offset: 29088)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 576, elements: !669)
!669 = !{!664}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !610, file: !609, line: 79, baseType: !671, size: 20736, offset: 29696)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 20736, elements: !663)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !610, file: !609, line: 80, baseType: !654, size: 64, offset: 50432)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !610, file: !609, line: 81, baseType: !654, size: 64, offset: 50496)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_qp", scope: !610, file: !609, line: 82, baseType: !654, size: 64, offset: 50560)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !610, file: !609, line: 83, baseType: !676, size: 64, offset: 50624)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !610, file: !609, line: 84, baseType: !126, size: 32, offset: 50688)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !610, file: !609, line: 85, baseType: !638, size: 64, offset: 50752)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !610, file: !609, line: 86, baseType: !638, size: 64, offset: 50816)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !610, file: !609, line: 89, baseType: !126, size: 32, offset: 50880)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !610, file: !609, line: 90, baseType: !126, size: 32, offset: 50912)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !610, file: !609, line: 91, baseType: !683, size: 320, offset: 50944)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !363, line: 72, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !363, line: 67, size: 320, elements: !685)
!685 = !{!686, !705, !709}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !684, file: !363, line: 69, baseType: !687, size: 320)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !688, line: 22, size: 320, elements: !689)
!688 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!689 = !{!690, !691, !692, !693, !694, !695, !696, !697}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !687, file: !688, line: 24, baseType: !126, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !687, file: !688, line: 25, baseType: !13, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !687, file: !688, line: 26, baseType: !126, size: 32, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !687, file: !688, line: 28, baseType: !13, size: 32, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !687, file: !688, line: 32, baseType: !126, size: 32, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !687, file: !688, line: 34, baseType: !131, size: 16, offset: 160)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !687, file: !688, line: 35, baseType: !131, size: 16, offset: 176)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !687, file: !688, line: 36, baseType: !698, size: 128, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !699, line: 55, baseType: !700)
!699 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !699, line: 51, size: 128, elements: !701)
!701 = !{!702, !704}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !700, file: !699, line: 53, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !700, file: !699, line: 54, baseType: !703, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !684, file: !363, line: 70, baseType: !706, size: 320)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !707)
!707 = !{!708}
!708 = !DISubrange(count: 40)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !684, file: !363, line: 71, baseType: !119, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !610, file: !609, line: 92, baseType: !711, size: 384, offset: 51264)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !363, line: 80, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !363, line: 75, size: 384, elements: !713)
!713 = !{!714, !736, !738}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !712, file: !363, line: 77, baseType: !715, size: 384)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !699, line: 94, size: 384, elements: !716)
!716 = !{!717, !729, !730, !732, !733, !734, !735}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !715, file: !699, line: 96, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !719, line: 33, baseType: !720)
!719 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!720 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !719, line: 25, size: 64, elements: !721)
!721 = !{!722, !724}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !720, file: !719, line: 27, baseType: !723, size: 64)
!723 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !720, file: !719, line: 32, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !720, file: !719, line: 28, size: 64, elements: !726)
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !725, file: !719, line: 30, baseType: !13, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !725, file: !719, line: 31, baseType: !13, size: 32, offset: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !715, file: !699, line: 97, baseType: !718, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !715, file: !699, line: 98, baseType: !731, size: 64, offset: 128)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !312)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !715, file: !699, line: 99, baseType: !731, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !715, file: !699, line: 100, baseType: !13, size: 32, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !715, file: !699, line: 101, baseType: !13, size: 32, offset: 288)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !715, file: !699, line: 102, baseType: !731, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !712, file: !363, line: 78, baseType: !737, size: 384)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !199)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !712, file: !363, line: 79, baseType: !739, size: 64)
!739 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!740 = !{!741}
!741 = !DISubrange(count: 67)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !603, file: !12, line: 322, baseType: !606, size: 4288, offset: 4288)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !603, file: !12, line: 324, baseType: !744, size: 21760, offset: 8576)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 21760, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 340)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !603, file: !12, line: 326, baseType: !607, size: 64, offset: 30336)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !603, file: !12, line: 329, baseType: !749, size: 1152, offset: 30400)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 1152, elements: !669)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_idr", scope: !603, file: !12, line: 331, baseType: !126, size: 32, offset: 31552)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !603, file: !12, line: 333, baseType: !126, size: 32, offset: 31584)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !603, file: !12, line: 335, baseType: !126, size: 32, offset: 31616)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !603, file: !12, line: 336, baseType: !126, size: 32, offset: 31648)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !603, file: !12, line: 337, baseType: !126, size: 32, offset: 31680)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !603, file: !12, line: 338, baseType: !126, size: 32, offset: 31712)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !603, file: !12, line: 339, baseType: !126, size: 32, offset: 31744)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !211, file: !12, line: 343, baseType: !607, size: 64, offset: 73664)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !211, file: !12, line: 346, baseType: !607, size: 64, offset: 73728)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !211, file: !12, line: 349, baseType: !126, size: 32, offset: 73792)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !211, file: !12, line: 350, baseType: !761, size: 1216, offset: 73856)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 1216, elements: !762)
!762 = !{!187}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !211, file: !12, line: 351, baseType: !126, size: 32, offset: 75072)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !211, file: !12, line: 352, baseType: !761, size: 1216, offset: 75136)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !211, file: !12, line: 353, baseType: !311, size: 64, offset: 76352)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !211, file: !12, line: 365, baseType: !767, size: 10624, offset: 76416)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !12, line: 358, size: 10624, elements: !768)
!768 = !{!769, !770, !773, !776}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !767, file: !12, line: 360, baseType: !137, size: 256, align: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !767, file: !12, line: 361, baseType: !771, size: 128, align: 128, offset: 256)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, elements: !772)
!772 = !{!181, !171}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !767, file: !12, line: 363, baseType: !774, size: 4096, align: 128, offset: 384)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 4096, elements: !775)
!775 = !{!171, !265}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !767, file: !12, line: 364, baseType: !777, size: 6144, align: 128, offset: 4480)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 6144, elements: !778)
!778 = !{!779, !139}
!779 = !DISubrange(count: 24)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !211, file: !12, line: 544, baseType: !781, size: 80128, offset: 87040)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !12, line: 368, size: 80128, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !809, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !823, !827, !828, !829, !830, !831, !835, !836, !837, !840, !842, !843, !844, !846, !847, !848, !849, !850, !851, !852, !853, !894, !914, !915, !916, !917, !918, !919, !920, !921, !922, !925, !928, !930}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !781, file: !12, line: 370, baseType: !126, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !781, file: !12, line: 373, baseType: !126, size: 32, offset: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !781, file: !12, line: 374, baseType: !126, size: 32, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !781, file: !12, line: 375, baseType: !126, size: 32, offset: 96)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !781, file: !12, line: 378, baseType: !126, size: 32, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !781, file: !12, line: 379, baseType: !126, size: 32, offset: 160)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !781, file: !12, line: 380, baseType: !126, size: 32, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !781, file: !12, line: 381, baseType: !126, size: 32, offset: 224)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !781, file: !12, line: 382, baseType: !126, size: 32, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !781, file: !12, line: 385, baseType: !126, size: 32, offset: 288)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !781, file: !12, line: 386, baseType: !126, size: 32, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !781, file: !12, line: 387, baseType: !126, size: 32, offset: 352)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !781, file: !12, line: 388, baseType: !126, size: 32, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !781, file: !12, line: 389, baseType: !126, size: 32, offset: 416)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !781, file: !12, line: 390, baseType: !126, size: 32, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !781, file: !12, line: 391, baseType: !126, size: 32, offset: 480)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !781, file: !12, line: 393, baseType: !126, size: 32, offset: 512)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !781, file: !12, line: 396, baseType: !311, size: 64, offset: 544)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !781, file: !12, line: 397, baseType: !311, size: 64, offset: 608)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !781, file: !12, line: 400, baseType: !311, size: 64, offset: 672)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !781, file: !12, line: 401, baseType: !311, size: 64, offset: 736)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !781, file: !12, line: 403, baseType: !311, size: 64, offset: 800)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !781, file: !12, line: 404, baseType: !311, size: 64, offset: 864)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !781, file: !12, line: 407, baseType: !13, size: 32, offset: 928)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !781, file: !12, line: 408, baseType: !808, size: 128, offset: 960)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !170)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !781, file: !12, line: 409, baseType: !810, size: 512, offset: 1088)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !138)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !781, file: !12, line: 410, baseType: !126, size: 32, offset: 1600)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !781, file: !12, line: 411, baseType: !126, size: 32, offset: 1632)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !781, file: !12, line: 412, baseType: !126, size: 32, offset: 1664)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !781, file: !12, line: 413, baseType: !126, size: 32, offset: 1696)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !781, file: !12, line: 414, baseType: !126, size: 32, offset: 1728)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !781, file: !12, line: 415, baseType: !126, size: 32, offset: 1760)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !781, file: !12, line: 422, baseType: !642, size: 64, offset: 1792)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !781, file: !12, line: 423, baseType: !642, size: 64, offset: 1856)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !781, file: !12, line: 424, baseType: !127, size: 64, offset: 1920)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !781, file: !12, line: 425, baseType: !821, size: 64, offset: 1984)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 64, elements: !381)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !781, file: !12, line: 427, baseType: !824, size: 64, offset: 2048)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 192, elements: !826)
!826 = !{!779}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !781, file: !12, line: 428, baseType: !642, size: 64, offset: 2112)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !781, file: !12, line: 429, baseType: !647, size: 128, offset: 2176)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !781, file: !12, line: 430, baseType: !647, size: 128, offset: 2304)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !781, file: !12, line: 431, baseType: !656, size: 128, offset: 2432)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !781, file: !12, line: 432, baseType: !832, size: 4096, offset: 2560)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 4096, elements: !833)
!833 = !{!181, !834}
!834 = !DISubrange(count: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !781, file: !12, line: 433, baseType: !642, size: 64, offset: 6656)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !781, file: !12, line: 434, baseType: !642, size: 64, offset: 6720)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !781, file: !12, line: 435, baseType: !838, size: 384, offset: 6784)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 384, elements: !839)
!839 = !{!181, !194}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nnz_backup", scope: !781, file: !12, line: 436, baseType: !841, size: 64, offset: 7168)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !781, file: !12, line: 439, baseType: !126, size: 32, offset: 7232)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !781, file: !12, line: 440, baseType: !126, size: 32, offset: 7264)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !781, file: !12, line: 441, baseType: !845, size: 128, offset: 7296)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 128, elements: !170)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !781, file: !12, line: 442, baseType: !126, size: 32, offset: 7424)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !781, file: !12, line: 444, baseType: !126, size: 32, offset: 7456)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !781, file: !12, line: 445, baseType: !126, size: 32, offset: 7488)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !781, file: !12, line: 447, baseType: !126, size: 32, offset: 7520)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !781, file: !12, line: 448, baseType: !126, size: 32, offset: 7552)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !781, file: !12, line: 454, baseType: !126, size: 32, offset: 7584)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !781, file: !12, line: 457, baseType: !126, size: 32, offset: 7616)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !781, file: !12, line: 498, baseType: !854, size: 57344, offset: 7680)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !12, line: 459, size: 57344, elements: !855)
!855 = !{!856, !860, !864, !866, !867, !870, !874, !875, !878, !879, !880, !883, !884, !885, !886, !887, !888, !891, !893}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !854, file: !12, line: 464, baseType: !857, size: 3072, align: 128)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 3072, elements: !858)
!858 = !{!859}
!859 = !DISubrange(count: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !854, file: !12, line: 465, baseType: !861, size: 6912, align: 128, offset: 3072)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 6912, elements: !862)
!862 = !{!863}
!863 = !DISubrange(count: 864)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !854, file: !12, line: 468, baseType: !865, size: 2048, align: 128, offset: 9984)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 2048, elements: !154)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !854, file: !12, line: 469, baseType: !865, size: 2048, align: 128, offset: 12032)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !854, file: !12, line: 470, baseType: !868, size: 3072, align: 128, offset: 14080)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 3072, elements: !869)
!869 = !{!194, !265}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !854, file: !12, line: 471, baseType: !871, size: 3840, align: 128, offset: 17152)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 3840, elements: !872)
!872 = !{!873, !139}
!873 = !DISubrange(count: 15)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !854, file: !12, line: 474, baseType: !774, size: 4096, align: 128, offset: 20992)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !854, file: !12, line: 475, baseType: !876, size: 4096, align: 128, offset: 25088)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 4096, elements: !877)
!877 = !{!139, !139}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd", scope: !854, file: !12, line: 478, baseType: !509, size: 512, offset: 29184)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_sum", scope: !854, file: !12, line: 479, baseType: !126, size: 32, offset: 29696)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d", scope: !854, file: !12, line: 480, baseType: !881, size: 128, offset: 29728)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 128, elements: !882)
!882 = !{!181, !181}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d_sum", scope: !854, file: !12, line: 481, baseType: !126, size: 32, offset: 29856)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !854, file: !12, line: 484, baseType: !633, size: 192, offset: 29888)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !854, file: !12, line: 486, baseType: !633, size: 192, offset: 30080)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !854, file: !12, line: 489, baseType: !633, size: 192, offset: 30272)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !854, file: !12, line: 492, baseType: !311, size: 64, offset: 30464)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !854, file: !12, line: 493, baseType: !889, size: 24576, offset: 30528)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 24576, elements: !890)
!890 = !{!181, !834, !502}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !854, file: !12, line: 494, baseType: !892, size: 2048, offset: 55104)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 2048, elements: !576)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !854, file: !12, line: 497, baseType: !625, size: 96, offset: 57152)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !781, file: !12, line: 526, baseType: !895, size: 12032, offset: 65024)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !12, line: 501, size: 12032, elements: !896)
!896 = !{!897, !899, !901, !904, !907, !908, !909, !910, !911, !912, !913}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !895, file: !12, line: 504, baseType: !898, size: 384)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 384, elements: !199)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !895, file: !12, line: 507, baseType: !900, size: 384, offset: 384)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 384, elements: !199)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !895, file: !12, line: 510, baseType: !902, size: 768, align: 32, offset: 768)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 768, elements: !903)
!903 = !{!181, !200}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !895, file: !12, line: 513, baseType: !905, size: 3072, align: 128, offset: 1536)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 3072, elements: !906)
!906 = !{!181, !200, !181}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !895, file: !12, line: 514, baseType: !905, size: 3072, align: 64, offset: 4608)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !895, file: !12, line: 517, baseType: !898, size: 384, align: 32, offset: 7680)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !895, file: !12, line: 519, baseType: !905, size: 3072, align: 128, offset: 8064)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !895, file: !12, line: 520, baseType: !902, size: 768, align: 32, offset: 11136)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !895, file: !12, line: 521, baseType: !649, size: 32, align: 32, offset: 11904)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !895, file: !12, line: 524, baseType: !126, size: 32, offset: 11936)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !895, file: !12, line: 525, baseType: !126, size: 32, offset: 11968)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !781, file: !12, line: 529, baseType: !126, size: 32, offset: 77056)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !781, file: !12, line: 530, baseType: !126, size: 32, offset: 77088)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !781, file: !12, line: 531, baseType: !126, size: 32, offset: 77120)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !781, file: !12, line: 532, baseType: !126, size: 32, offset: 77152)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !781, file: !12, line: 533, baseType: !126, size: 32, offset: 77184)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !781, file: !12, line: 534, baseType: !126, size: 32, offset: 77216)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !781, file: !12, line: 535, baseType: !126, size: 32, offset: 77248)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !781, file: !12, line: 536, baseType: !126, size: 32, offset: 77280)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !781, file: !12, line: 539, baseType: !923, size: 512, offset: 77312)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 512, elements: !924)
!924 = !{!139, !181}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !781, file: !12, line: 540, baseType: !926, size: 2048, offset: 77824)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 2048, elements: !927)
!927 = !{!834, !171}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0_buf", scope: !781, file: !12, line: 542, baseType: !929, size: 16, offset: 79872)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 16, elements: !312)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !781, file: !12, line: 543, baseType: !931, size: 128, offset: 79888)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 128, elements: !138)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !211, file: !12, line: 547, baseType: !933, size: 64, offset: 167168)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !12, line: 248, baseType: !935)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !12, line: 248, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !211, file: !12, line: 604, baseType: !937, size: 23936, offset: 167232)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !12, line: 550, size: 23936, elements: !938)
!938 = !{!939, !964, !968, !970, !972, !973, !974, !975, !976, !977, !978, !979, !982, !984, !986, !989, !990}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !937, file: !12, line: 579, baseType: !940, size: 3904)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !937, file: !12, line: 553, size: 3904, elements: !941)
!941 = !{!942, !943, !944, !945, !947, !948, !949, !950, !951, !953, !956, !957, !958, !959, !960, !962}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !940, file: !12, line: 556, baseType: !126, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !940, file: !12, line: 558, baseType: !126, size: 32, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !940, file: !12, line: 560, baseType: !126, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !940, file: !12, line: 562, baseType: !946, size: 608, offset: 96)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 608, elements: !762)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !940, file: !12, line: 563, baseType: !126, size: 32, offset: 704)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !940, file: !12, line: 564, baseType: !126, size: 32, offset: 736)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !940, file: !12, line: 565, baseType: !126, size: 32, offset: 768)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !940, file: !12, line: 566, baseType: !311, size: 64, offset: 800)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !940, file: !12, line: 567, baseType: !952, size: 2048, offset: 864)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 2048, elements: !833)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !940, file: !12, line: 568, baseType: !954, size: 544, offset: 2912)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 544, elements: !955)
!955 = !{!182}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !940, file: !12, line: 571, baseType: !126, size: 32, offset: 3456)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_inter_cost", scope: !940, file: !12, line: 572, baseType: !126, size: 32, offset: 3488)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_mbs_analysed", scope: !940, file: !12, line: 573, baseType: !126, size: 32, offset: 3520)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !940, file: !12, line: 575, baseType: !311, size: 64, offset: 3552)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !940, file: !12, line: 577, baseType: !961, size: 192, offset: 3648)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 192, elements: !626)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !940, file: !12, line: 578, baseType: !963, size: 64, offset: 3840)
!963 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !937, file: !12, line: 584, baseType: !965, size: 160, offset: 3904)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 160, elements: !966)
!966 = !{!967}
!967 = !DISubrange(count: 5)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_size", scope: !937, file: !12, line: 585, baseType: !969, size: 320, offset: 4096)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 320, elements: !966)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "f_slice_qp", scope: !937, file: !12, line: 586, baseType: !971, size: 320, offset: 4416)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !963, size: 320, elements: !966)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !937, file: !12, line: 587, baseType: !954, size: 544, offset: 4736)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !937, file: !12, line: 589, baseType: !969, size: 320, offset: 5312)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !937, file: !12, line: 590, baseType: !971, size: 320, offset: 5632)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !937, file: !12, line: 591, baseType: !971, size: 320, offset: 5952)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !937, file: !12, line: 592, baseType: !971, size: 320, offset: 6272)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !937, file: !12, line: 593, baseType: !971, size: 320, offset: 6592)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !937, file: !12, line: 594, baseType: !971, size: 320, offset: 6912)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !937, file: !12, line: 596, baseType: !980, size: 6080, offset: 7232)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 6080, elements: !981)
!981 = !{!967, !187}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !937, file: !12, line: 597, baseType: !983, size: 2176, offset: 13312)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 2176, elements: !180)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !937, file: !12, line: 598, baseType: !985, size: 128, offset: 15488)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 128, elements: !312)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !937, file: !12, line: 599, baseType: !987, size: 8192, offset: 15616)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 8192, elements: !988)
!988 = !{!181, !181, !834}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !937, file: !12, line: 601, baseType: !311, size: 64, offset: 23808)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !937, file: !12, line: 602, baseType: !311, size: 64, offset: 23872)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !211, file: !12, line: 607, baseType: !992, size: 448, offset: 191168)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 448, elements: !163)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !85, line: 27, baseType: !994)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{null, !380}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !211, file: !12, line: 608, baseType: !992, size: 448, offset: 191616)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !211, file: !12, line: 609, baseType: !999, size: 768, offset: 192064)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 768, elements: !1004)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !85, line: 28, baseType: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !380, !380}
!1004 = !{!1005}
!1005 = !DISubrange(count: 12)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !211, file: !12, line: 610, baseType: !1007, size: 768, offset: 192832)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 768, elements: !1004)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !211, file: !12, line: 612, baseType: !1009, size: 8000, offset: 193600)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !44, line: 103, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 63, size: 8000, elements: !1011)
!1011 = !{!1012, !1018, !1019, !1020, !1021, !1023, !1024, !1025, !1026, !1032, !1038, !1039, !1044, !1051, !1056, !1060, !1061, !1062, !1063, !1064, !1069, !1073, !1074, !1075, !1076, !1077}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1010, file: !44, line: 65, baseType: !1013, size: 448)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1014, size: 448, elements: !163)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !44, line: 26, baseType: !1015)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!126, !380, !126, !380, !126}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1010, file: !44, line: 66, baseType: !1013, size: 448, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1010, file: !44, line: 67, baseType: !1013, size: 448, offset: 896)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1010, file: !44, line: 68, baseType: !1013, size: 448, offset: 1344)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1010, file: !44, line: 69, baseType: !1022, size: 256, offset: 1792)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1014, size: 256, elements: !170)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1010, file: !44, line: 70, baseType: !1013, size: 448, offset: 2048)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1010, file: !44, line: 71, baseType: !1013, size: 448, offset: 2496)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1010, file: !44, line: 72, baseType: !1013, size: 448, offset: 2944)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1010, file: !44, line: 73, baseType: !1027, size: 448, offset: 3392)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1028, size: 448, elements: !163)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !44, line: 27, baseType: !1029)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !380, !380, !380, !380, !126, !654}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1010, file: !44, line: 74, baseType: !1033, size: 448, offset: 3840)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1034, size: 448, elements: !163)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !44, line: 28, baseType: !1035)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !380, !380, !380, !380, !380, !126, !654}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1010, file: !44, line: 75, baseType: !1013, size: 448, offset: 4288)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1010, file: !44, line: 77, baseType: !1040, size: 256, offset: 4736)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1041, size: 256, elements: !170)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!126, !380, !126, !111}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1010, file: !44, line: 78, baseType: !1045, size: 256, offset: 4992)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1046, size: 256, elements: !170)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!1049, !380, !126}
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !113, line: 27, baseType: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !115, line: 45, baseType: !364)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1010, file: !44, line: 80, baseType: !1052, size: 64, offset: 5248)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !500, !126, !500, !126, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1010, file: !44, line: 82, baseType: !1057, size: 64, offset: 5312)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!308, !1055, !1055, !126}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1010, file: !44, line: 85, baseType: !1027, size: 448, offset: 5376)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1010, file: !44, line: 86, baseType: !1033, size: 448, offset: 5824)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1010, file: !44, line: 87, baseType: !1027, size: 448, offset: 6272)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1010, file: !44, line: 88, baseType: !1033, size: 448, offset: 6720)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1010, file: !44, line: 92, baseType: !1065, size: 448, offset: 7168)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 448, elements: !163)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!126, !654, !638, !126, !638, !127, !126, !126}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1010, file: !44, line: 97, baseType: !1070, size: 64, offset: 7616)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !380, !380, !654}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1010, file: !44, line: 98, baseType: !1070, size: 64, offset: 7680)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1010, file: !44, line: 99, baseType: !1070, size: 64, offset: 7744)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1010, file: !44, line: 100, baseType: !1070, size: 64, offset: 7808)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1010, file: !44, line: 101, baseType: !1070, size: 64, offset: 7872)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1010, file: !44, line: 102, baseType: !1070, size: 64, offset: 7936)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !211, file: !12, line: 613, baseType: !1079, size: 1792, offset: 201600)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !1080, line: 71, baseType: !1081)
!1080 = !DIFile(filename: "./common/mc.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "d49d7420aafa05a86bee506aef111ff0")
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1080, line: 31, size: 1792, elements: !1082)
!1082 = !{!1083, !1088, !1092, !1096, !1103, !1108, !1109, !1113, !1117, !1118, !1122, !1130, !1134}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1081, file: !1080, line: 33, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !380, !126, !1087, !126, !126, !126, !126, !126}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1081, file: !1080, line: 38, baseType: !1089, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!380, !380, !654, !1087, !126, !126, !126, !126, !126}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1081, file: !1080, line: 44, baseType: !1093, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !380, !126, !380, !126, !126, !126, !126, !126}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1081, file: !1080, line: 48, baseType: !1097, size: 640, offset: 192)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1098, size: 640, elements: !1101)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !380, !126, !380, !126, !380, !126, !126}
!1101 = !{!1102}
!1102 = !DISubrange(count: 10)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1081, file: !1080, line: 51, baseType: !1104, size: 448, offset: 832)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1105, size: 448, elements: !163)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{null, !380, !126, !380, !126, !126}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1081, file: !1080, line: 52, baseType: !1105, size: 64, offset: 1280)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1081, file: !1080, line: 54, baseType: !1110, size: 64, offset: 1344)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !380, !126, !380, !126, !126, !126}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1081, file: !1080, line: 57, baseType: !1114, size: 64, offset: 1408)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !380, !380, !380, !380, !126, !126, !126}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1081, file: !1080, line: 61, baseType: !1105, size: 64, offset: 1472)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1081, file: !1080, line: 64, baseType: !1119, size: 64, offset: 1536)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !380, !126, !126}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1081, file: !1080, line: 66, baseType: !1123, size: 64, offset: 1600)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!271, !271, !1126, !1128}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1129, line: 46, baseType: !364)
!1129 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1081, file: !1080, line: 67, baseType: !1131, size: 64, offset: 1664)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !271, !126}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1081, file: !1080, line: 69, baseType: !1135, size: 64, offset: 1728)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !380, !380, !380, !380, !380, !126, !126, !126, !126}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !211, file: !12, line: 614, baseType: !1139, size: 768, offset: 203392)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1140, line: 112, baseType: !1141)
!1140 = !DIFile(filename: "./common/dct.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "eb76275dd7785989f0d8a4ada39e3c74")
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1140, line: 89, size: 768, elements: !1142)
!1142 = !{!1143, !1149, !1153, !1159, !1163, !1164, !1165, !1171, !1175, !1181, !1185, !1189}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1141, file: !1140, line: 94, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !1147, !380, !380}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !170)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1141, file: !1140, line: 95, baseType: !1150, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !380, !1147}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1141, file: !1140, line: 97, baseType: !1154, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !1157, !380, !380}
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 256, elements: !510)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1141, file: !1140, line: 98, baseType: !1160, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !380, !1157}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1141, file: !1140, line: 100, baseType: !1154, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1141, file: !1140, line: 101, baseType: !1160, size: 64, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1141, file: !1140, line: 103, baseType: !1166, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !1169, !380, !380}
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, elements: !381)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1141, file: !1140, line: 104, baseType: !1172, size: 64, offset: 448)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !380, !1169}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1141, file: !1140, line: 106, baseType: !1176, size: 64, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !1179, !380, !380}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 1024, elements: !515)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1141, file: !1140, line: 107, baseType: !1182, size: 64, offset: 576)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !380, !1179}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1141, file: !1140, line: 109, baseType: !1186, size: 64, offset: 640)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !1147}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1141, file: !1140, line: 110, baseType: !1186, size: 64, offset: 704)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !211, file: !12, line: 615, baseType: !1191, size: 320, offset: 204160)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1140, line: 122, baseType: !1192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1140, line: 114, size: 320, elements: !1193)
!1193 = !{!1194, !1198, !1202, !1206, !1207}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1192, file: !1140, line: 116, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !127, !1169}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1192, file: !1140, line: 117, baseType: !1199, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !127, !1147}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1192, file: !1140, line: 118, baseType: !1203, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !127, !500, !380}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1192, file: !1140, line: 119, baseType: !1203, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1192, file: !1140, line: 120, baseType: !1208, size: 64, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !127, !127}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !211, file: !12, line: 616, baseType: !1212, size: 1088, offset: 204480)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1213, line: 43, baseType: !1214)
!1213 = !DIFile(filename: "./common/quant.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fe7c19d3e69b65b38e52c43c47235f27")
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1213, line: 26, size: 1088, elements: !1215)
!1215 = !{!1216, !1220, !1224, !1228, !1232, !1236, !1240, !1241, !1245, !1247, !1248, !1249}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1214, file: !1213, line: 28, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !1169, !638, !638}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1214, file: !1213, line: 29, baseType: !1221, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !1147, !638, !638}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1214, file: !1213, line: 30, baseType: !1225, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !1147, !126, !126}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1214, file: !1213, line: 31, baseType: !1229, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null, !648, !126, !126}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1214, file: !1213, line: 33, baseType: !1233, size: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !1169, !513, !126}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1214, file: !1213, line: 34, baseType: !1237, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !1147, !508, !126}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1214, file: !1213, line: 35, baseType: !1237, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1214, file: !1213, line: 37, baseType: !1242, size: 64, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !127, !111, !638, !126}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1214, file: !1213, line: 39, baseType: !1246, size: 64, offset: 512)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1214, file: !1213, line: 40, baseType: !1246, size: 64, offset: 576)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1214, file: !1213, line: 41, baseType: !1246, size: 64, offset: 640)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1214, file: !1213, line: 42, baseType: !1250, size: 384, offset: 704)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1246, size: 384, elements: !501)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !211, file: !12, line: 617, baseType: !1252, size: 512, offset: 205568)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !609, line: 108, baseType: !1253)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !609, line: 98, size: 512, elements: !1254)
!1254 = !{!1255, !1260, !1261, !1262, !1263, !1268, !1269, !1270}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma", scope: !1253, file: !609, line: 100, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !609, line: 96, baseType: !1257)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !380, !126, !126, !126, !642}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma", scope: !1253, file: !609, line: 101, baseType: !1256, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma", scope: !1253, file: !609, line: 102, baseType: !1256, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma", scope: !1253, file: !609, line: 103, baseType: !1256, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma_intra", scope: !1253, file: !609, line: 104, baseType: !1264, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !609, line: 97, baseType: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !380, !126, !126, !126}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma_intra", scope: !1253, file: !609, line: 105, baseType: !1264, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma_intra", scope: !1253, file: !609, line: 106, baseType: !1264, size: 64, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma_intra", scope: !1253, file: !609, line: 107, baseType: !1264, size: 64, offset: 448)
!1271 = !{!1272, !1273, !1274}
!1272 = !DILocalVariable(name: "h", arg: 1, scope: !205, file: !21, line: 468, type: !208)
!1273 = !DILocalVariable(name: "p", scope: !205, file: !21, line: 476, type: !126)
!1274 = !DILocalVariable(name: "i", scope: !205, file: !21, line: 476, type: !126)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 152, elements: !762)
!1276 = !DIGlobalVariableExpression(var: !1277, expr: !DIExpression())
!1277 = distinct !DIGlobalVariable(name: "ct_index", scope: !1278, file: !2, line: 69, type: !1317, isLocal: true, isDefinition: true)
!1278 = distinct !DISubprogram(name: "block_residual_write_cavlc", scope: !2, file: !2, line: 67, type: !1279, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1282)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !208, !1281, !126, !126, !127, !126}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!1282 = !{!1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1302, !1306, !1307, !1308, !1313}
!1283 = !DILocalVariable(name: "h", arg: 1, scope: !1278, file: !2, line: 67, type: !208)
!1284 = !DILocalVariable(name: "s", arg: 2, scope: !1278, file: !2, line: 67, type: !1281)
!1285 = !DILocalVariable(name: "i_ctxBlockCat", arg: 3, scope: !1278, file: !2, line: 67, type: !126)
!1286 = !DILocalVariable(name: "i_idx", arg: 4, scope: !1278, file: !2, line: 67, type: !126)
!1287 = !DILocalVariable(name: "l", arg: 5, scope: !1278, file: !2, line: 67, type: !127)
!1288 = !DILocalVariable(name: "i_count", arg: 6, scope: !1278, file: !2, line: 67, type: !126)
!1289 = !DILocalVariable(name: "level", scope: !1278, file: !2, line: 70, type: !519)
!1290 = !DILocalVariable(name: "run", scope: !1278, file: !2, line: 70, type: !519)
!1291 = !DILocalVariable(name: "i_total", scope: !1278, file: !2, line: 71, type: !126)
!1292 = !DILocalVariable(name: "i_trailing", scope: !1278, file: !2, line: 71, type: !126)
!1293 = !DILocalVariable(name: "i_total_zero", scope: !1278, file: !2, line: 72, type: !126)
!1294 = !DILocalVariable(name: "i_last", scope: !1278, file: !2, line: 73, type: !126)
!1295 = !DILocalVariable(name: "i_sign", scope: !1278, file: !2, line: 74, type: !13)
!1296 = !DILocalVariable(name: "i", scope: !1278, file: !2, line: 75, type: !126)
!1297 = !DILocalVariable(name: "idx", scope: !1278, file: !2, line: 76, type: !126)
!1298 = !DILocalVariable(name: "i_suffix_length", scope: !1278, file: !2, line: 77, type: !126)
!1299 = !DILocalVariable(name: "nC", scope: !1278, file: !2, line: 79, type: !126)
!1300 = !DILocalVariable(name: "r", scope: !1301, file: !2, line: 96, type: !126)
!1301 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 95, column: 5)
!1302 = !DILocalVariable(name: "mask", scope: !1303, file: !2, line: 126, type: !126)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 125, column: 5)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 124, column: 5)
!1305 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 124, column: 5)
!1306 = !DILocalVariable(name: "abs_level", scope: !1303, file: !2, line: 127, type: !126)
!1307 = !DILocalVariable(name: "i_level_code", scope: !1303, file: !2, line: 128, type: !126)
!1308 = !DILocalVariable(name: "i_level_prefix", scope: !1309, file: !2, line: 143, type: !126)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 142, column: 9)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 138, column: 18)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 136, column: 18)
!1312 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 133, column: 13)
!1313 = !DILocalVariable(name: "i_zl", scope: !1314, file: !2, line: 191, type: !126)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 190, column: 5)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 189, column: 5)
!1316 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 189, column: 5)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 544, elements: !955)
!1318 = !DIGlobalVariableExpression(var: !1319, expr: !DIExpression())
!1319 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !1320, isLocal: true, isDefinition: true)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !1321)
!1321 = !{!1322}
!1322 = !DISubrange(count: 54)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1324, size: 104, elements: !175)
!1324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!1325 = !{i32 7, !"Dwarf Version", i32 5}
!1326 = !{i32 2, !"Debug Info Version", i32 3}
!1327 = !{i32 1, !"wchar_size", i32 4}
!1328 = !{i32 8, !"PIC Level", i32 2}
!1329 = !{i32 7, !"PIE Level", i32 2}
!1330 = !{i32 7, !"uwtable", i32 2}
!1331 = !{!"clang version 16.0.0"}
!1332 = distinct !DISubprogram(name: "x264_macroblock_write_cavlc", scope: !2, file: !2, line: 287, type: !1333, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1335)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{null, !208, !1281}
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1346, !1350, !1351, !1355, !1358, !1362, !1363, !1364}
!1336 = !DILocalVariable(name: "h", arg: 1, scope: !1332, file: !2, line: 287, type: !208)
!1337 = !DILocalVariable(name: "s", arg: 2, scope: !1332, file: !2, line: 287, type: !1281)
!1338 = !DILocalVariable(name: "i_mb_type", scope: !1332, file: !2, line: 289, type: !159)
!1339 = !DILocalVariable(name: "i_mb_i_offset", scope: !1332, file: !2, line: 290, type: !126)
!1340 = !DILocalVariable(name: "i", scope: !1332, file: !2, line: 291, type: !126)
!1341 = !DILocalVariable(name: "i_mb_pos_start", scope: !1332, file: !2, line: 294, type: !159)
!1342 = !DILocalVariable(name: "i_mb_pos_tex", scope: !1332, file: !2, line: 295, type: !126)
!1343 = !DILocalVariable(name: "di", scope: !1344, file: !2, line: 354, type: !126)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 353, column: 5)
!1345 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 352, column: 9)
!1346 = !DILocalVariable(name: "i_pred", scope: !1347, file: !2, line: 362, type: !126)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 361, column: 9)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !2, line: 360, column: 9)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 360, column: 9)
!1350 = !DILocalVariable(name: "i_mode", scope: !1347, file: !2, line: 363, type: !126)
!1351 = !DILocalVariable(name: "mvp", scope: !1352, file: !2, line: 380, type: !649, align: 32)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 379, column: 5)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 378, column: 14)
!1354 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 372, column: 14)
!1355 = !DILocalVariable(name: "b_sub_ref0", scope: !1356, file: !2, line: 429, type: !126)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 428, column: 5)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 427, column: 14)
!1358 = !DILocalVariable(name: "i_list", scope: !1359, file: !2, line: 487, type: !126)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 484, column: 5)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 483, column: 14)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 461, column: 14)
!1362 = !DILocalVariable(name: "mvp", scope: !1359, file: !2, line: 488, type: !649, align: 32)
!1363 = !DILocalVariable(name: "b_list", scope: !1359, file: !2, line: 490, type: !881)
!1364 = !DILocalVariable(name: "i_ref_max", scope: !1365, file: !2, line: 503, type: !159)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 502, column: 9)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 501, column: 9)
!1367 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 501, column: 9)
!1368 = !DILocation(line: 0, scope: !1332)
!1369 = !DILocation(line: 289, column: 33, scope: !1332)
!1370 = !{!1371, !1373, i64 11784}
!1371 = !{!"x264_t", !1372, i64 0, !1374, i64 616, !1381, i64 1640, !1373, i64 1648, !1373, i64 1652, !1382, i64 1656, !1373, i64 1920, !1373, i64 1924, !1373, i64 1928, !1373, i64 1932, !1373, i64 1936, !1373, i64 1940, !1373, i64 1944, !1373, i64 1948, !1373, i64 1952, !1374, i64 1956, !1377, i64 3200, !1374, i64 3208, !1377, i64 3328, !1373, i64 3336, !1374, i64 3344, !1374, i64 3376, !1374, i64 3392, !1374, i64 3424, !1374, i64 3440, !1374, i64 3472, !1374, i64 3488, !1374, i64 3520, !1377, i64 3536, !1374, i64 3552, !1374, i64 4064, !1374, i64 4320, !1384, i64 4328, !1385, i64 4720, !1386, i64 5232, !1377, i64 9208, !1377, i64 9216, !1373, i64 9224, !1374, i64 9232, !1373, i64 9384, !1374, i64 9392, !1374, i64 9544, !1387, i64 9552, !1388, i64 10880, !1377, i64 20896, !1391, i64 20904, !1374, i64 23896, !1374, i64 23952, !1374, i64 24008, !1374, i64 24104, !1394, i64 24200, !1395, i64 25200, !1396, i64 25424, !1397, i64 25520, !1398, i64 25560, !1399, i64 25696}
!1372 = !{!"x264_param_t", !1373, i64 0, !1373, i64 4, !1373, i64 8, !1373, i64 12, !1373, i64 16, !1373, i64 20, !1373, i64 24, !1373, i64 28, !1376, i64 32, !1373, i64 68, !1373, i64 72, !1373, i64 76, !1373, i64 80, !1373, i64 84, !1373, i64 88, !1373, i64 92, !1373, i64 96, !1373, i64 100, !1373, i64 104, !1373, i64 108, !1373, i64 112, !1373, i64 116, !1373, i64 120, !1373, i64 124, !1373, i64 128, !1373, i64 132, !1373, i64 136, !1377, i64 144, !1374, i64 152, !1374, i64 168, !1374, i64 184, !1374, i64 200, !1374, i64 216, !1374, i64 280, !1377, i64 344, !1377, i64 352, !1373, i64 360, !1373, i64 364, !1377, i64 368, !1378, i64 376, !1380, i64 472, !1373, i64 600, !1373, i64 604, !1373, i64 608}
!1373 = !{!"int", !1374, i64 0}
!1374 = !{!"omnipotent char", !1375, i64 0}
!1375 = !{!"Simple C/C++ TBAA"}
!1376 = !{!"", !1373, i64 0, !1373, i64 4, !1373, i64 8, !1373, i64 12, !1373, i64 16, !1373, i64 20, !1373, i64 24, !1373, i64 28, !1373, i64 32}
!1377 = !{!"any pointer", !1374, i64 0}
!1378 = !{!"", !1373, i64 0, !1373, i64 4, !1373, i64 8, !1373, i64 12, !1373, i64 16, !1373, i64 20, !1373, i64 24, !1373, i64 28, !1373, i64 32, !1373, i64 36, !1373, i64 40, !1373, i64 44, !1373, i64 48, !1373, i64 52, !1373, i64 56, !1373, i64 60, !1373, i64 64, !1373, i64 68, !1379, i64 72, !1379, i64 76, !1374, i64 80, !1373, i64 88, !1373, i64 92}
!1379 = !{!"float", !1374, i64 0}
!1380 = !{!"", !1373, i64 0, !1373, i64 4, !1373, i64 8, !1373, i64 12, !1373, i64 16, !1373, i64 20, !1379, i64 24, !1379, i64 28, !1373, i64 32, !1373, i64 36, !1379, i64 40, !1379, i64 44, !1379, i64 48, !1373, i64 52, !1379, i64 56, !1373, i64 60, !1377, i64 64, !1373, i64 72, !1377, i64 80, !1379, i64 88, !1379, i64 92, !1379, i64 96, !1377, i64 104, !1373, i64 112, !1377, i64 120}
!1381 = !{!"long", !1374, i64 0}
!1382 = !{!"", !1373, i64 0, !1374, i64 8, !1373, i64 200, !1377, i64 208, !1383, i64 216, !1373, i64 256}
!1383 = !{!"bs_s", !1377, i64 0, !1377, i64 8, !1377, i64 16, !1381, i64 24, !1373, i64 32, !1373, i64 36}
!1384 = !{!"", !1377, i64 0, !1377, i64 8, !1373, i64 16, !1373, i64 20, !1373, i64 24, !1373, i64 28, !1373, i64 32, !1373, i64 36, !1373, i64 40, !1373, i64 44, !1373, i64 48, !1373, i64 52, !1373, i64 56, !1374, i64 60, !1373, i64 68, !1373, i64 72, !1373, i64 76, !1373, i64 80, !1373, i64 84, !1373, i64 88, !1373, i64 92, !1374, i64 96, !1373, i64 352, !1373, i64 356, !1373, i64 360, !1373, i64 364, !1373, i64 368, !1373, i64 372, !1373, i64 376, !1373, i64 380}
!1385 = !{!"", !1373, i64 0, !1373, i64 4, !1373, i64 8, !1373, i64 12, !1377, i64 16, !1377, i64 24, !1377, i64 32, !1373, i64 48, !1374, i64 52}
!1386 = !{!"", !1374, i64 0, !1374, i64 536, !1374, i64 1072, !1377, i64 3792, !1374, i64 3800, !1373, i64 3944, !1373, i64 3948, !1373, i64 3952, !1373, i64 3956, !1373, i64 3960, !1373, i64 3964, !1373, i64 3968}
!1387 = !{!"", !1374, i64 0, !1374, i64 32, !1374, i64 48, !1374, i64 560}
!1388 = !{!"", !1373, i64 0, !1373, i64 4, !1373, i64 8, !1373, i64 12, !1373, i64 16, !1373, i64 20, !1373, i64 24, !1373, i64 28, !1373, i64 32, !1373, i64 36, !1373, i64 40, !1373, i64 44, !1373, i64 48, !1373, i64 52, !1373, i64 56, !1373, i64 60, !1373, i64 64, !1374, i64 68, !1374, i64 76, !1374, i64 84, !1374, i64 92, !1374, i64 100, !1374, i64 108, !1373, i64 116, !1374, i64 120, !1374, i64 136, !1373, i64 200, !1373, i64 204, !1373, i64 208, !1373, i64 212, !1373, i64 216, !1373, i64 220, !1377, i64 224, !1377, i64 232, !1377, i64 240, !1377, i64 248, !1377, i64 256, !1377, i64 264, !1374, i64 272, !1374, i64 288, !1374, i64 304, !1374, i64 320, !1377, i64 832, !1377, i64 840, !1374, i64 848, !1377, i64 896, !1373, i64 904, !1373, i64 908, !1374, i64 912, !1373, i64 928, !1373, i64 932, !1373, i64 936, !1373, i64 940, !1373, i64 944, !1373, i64 948, !1373, i64 952, !1389, i64 960, !1390, i64 8128, !1373, i64 9632, !1373, i64 9636, !1373, i64 9640, !1373, i64 9644, !1373, i64 9648, !1373, i64 9652, !1373, i64 9656, !1373, i64 9660, !1374, i64 9664, !1374, i64 9728, !1374, i64 9984, !1374, i64 9986}
!1389 = !{!"", !1374, i64 0, !1374, i64 384, !1374, i64 1248, !1374, i64 1504, !1374, i64 1760, !1374, i64 2144, !1374, i64 2624, !1374, i64 3136, !1374, i64 3648, !1373, i64 3712, !1374, i64 3716, !1373, i64 3732, !1374, i64 3736, !1374, i64 3760, !1374, i64 3784, !1374, i64 3808, !1374, i64 3816, !1374, i64 6888, !1374, i64 7144}
!1390 = !{!"", !1374, i64 0, !1374, i64 48, !1374, i64 96, !1374, i64 192, !1374, i64 576, !1374, i64 960, !1374, i64 1008, !1374, i64 1392, !1374, i64 1488, !1373, i64 1492, !1373, i64 1496}
!1391 = !{!"", !1392, i64 0, !1374, i64 488, !1374, i64 512, !1374, i64 552, !1374, i64 592, !1374, i64 664, !1374, i64 704, !1374, i64 744, !1374, i64 784, !1374, i64 824, !1374, i64 864, !1374, i64 904, !1374, i64 1664, !1374, i64 1936, !1374, i64 1952, !1374, i64 2976, !1374, i64 2984}
!1392 = !{!"", !1373, i64 0, !1373, i64 4, !1373, i64 8, !1374, i64 12, !1373, i64 88, !1373, i64 92, !1373, i64 96, !1374, i64 100, !1374, i64 108, !1374, i64 364, !1373, i64 432, !1373, i64 436, !1373, i64 440, !1374, i64 444, !1374, i64 456, !1393, i64 480}
!1393 = !{!"double", !1374, i64 0}
!1394 = !{!"", !1374, i64 0, !1374, i64 56, !1374, i64 112, !1374, i64 168, !1374, i64 224, !1374, i64 256, !1374, i64 312, !1374, i64 368, !1374, i64 424, !1374, i64 480, !1374, i64 536, !1374, i64 592, !1374, i64 624, !1377, i64 656, !1377, i64 664, !1374, i64 672, !1374, i64 728, !1374, i64 784, !1374, i64 840, !1374, i64 896, !1377, i64 952, !1377, i64 960, !1377, i64 968, !1377, i64 976, !1377, i64 984, !1377, i64 992}
!1395 = !{!"", !1377, i64 0, !1377, i64 8, !1377, i64 16, !1374, i64 24, !1374, i64 104, !1377, i64 160, !1377, i64 168, !1377, i64 176, !1377, i64 184, !1377, i64 192, !1377, i64 200, !1377, i64 208, !1377, i64 216}
!1396 = !{!"", !1377, i64 0, !1377, i64 8, !1377, i64 16, !1377, i64 24, !1377, i64 32, !1377, i64 40, !1377, i64 48, !1377, i64 56, !1377, i64 64, !1377, i64 72, !1377, i64 80, !1377, i64 88}
!1397 = !{!"", !1377, i64 0, !1377, i64 8, !1377, i64 16, !1377, i64 24, !1377, i64 32}
!1398 = !{!"", !1377, i64 0, !1377, i64 8, !1377, i64 16, !1377, i64 24, !1377, i64 32, !1377, i64 40, !1377, i64 48, !1377, i64 56, !1377, i64 64, !1377, i64 72, !1377, i64 80, !1374, i64 88}
!1399 = !{!"", !1377, i64 0, !1377, i64 8, !1377, i64 16, !1377, i64 24, !1377, i64 32, !1377, i64 40, !1377, i64 48, !1377, i64 56}
!1400 = !DILocalVariable(name: "s", arg: 1, scope: !1401, file: !148, line: 64, type: !1281)
!1401 = distinct !DISubprogram(name: "bs_pos", scope: !148, file: !148, line: 64, type: !1402, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1404)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!126, !1281}
!1404 = !{!1400}
!1405 = !DILocation(line: 0, scope: !1401, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 294, column: 32, scope: !1332)
!1407 = !DILocation(line: 66, column: 21, scope: !1401, inlinedAt: !1406)
!1408 = !{!1383, !1377, i64 8}
!1409 = !DILocation(line: 66, column: 28, scope: !1401, inlinedAt: !1406)
!1410 = !{!1383, !1377, i64 0}
!1411 = !DILocation(line: 66, column: 23, scope: !1401, inlinedAt: !1406)
!1412 = !DILocation(line: 66, column: 58, scope: !1401, inlinedAt: !1406)
!1413 = !{!1383, !1373, i64 32}
!1414 = !DILocation(line: 66, column: 11, scope: !1401, inlinedAt: !1406)
!1415 = !DILocation(line: 298, column: 19, scope: !1332)
!1416 = !{!1371, !1373, i64 4344}
!1417 = !DILocation(line: 298, column: 5, scope: !1332)
!1418 = !DILocation(line: 310, column: 13, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 299, column: 5)
!1420 = !DILocation(line: 311, column: 13, scope: !1419)
!1421 = !DILocation(line: 314, column: 15, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 314, column: 9)
!1423 = !{!1371, !1373, i64 4364}
!1424 = !DILocation(line: 314, column: 9, scope: !1422)
!1425 = !DILocation(line: 315, column: 9, scope: !1422)
!1426 = !DILocation(line: 315, column: 21, scope: !1422)
!1427 = !{!1371, !1373, i64 10900}
!1428 = !DILocation(line: 315, column: 28, scope: !1422)
!1429 = !DILocation(line: 315, column: 33, scope: !1422)
!1430 = !DILocation(line: 315, column: 36, scope: !1422)
!1431 = !{!1371, !1377, i64 11104}
!1432 = !{!1371, !1373, i64 10904}
!1433 = !{!1371, !1373, i64 10884}
!1434 = !{!1374, !1374, i64 0}
!1435 = !DILocation(line: 317, column: 29, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 316, column: 5)
!1437 = !{!1371, !1373, i64 10944}
!1438 = !DILocalVariable(name: "s", arg: 1, scope: !1439, file: !148, line: 139, type: !1281)
!1439 = distinct !DISubprogram(name: "bs_write1", scope: !148, file: !148, line: 139, type: !1440, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1442)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !1281, !112}
!1442 = !{!1438, !1443}
!1443 = !DILocalVariable(name: "i_bit", arg: 2, scope: !1439, file: !148, line: 139, type: !112)
!1444 = !DILocation(line: 0, scope: !1439, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 317, column: 9, scope: !1436)
!1446 = !DILocation(line: 141, column: 8, scope: !1439, inlinedAt: !1445)
!1447 = !DILocation(line: 141, column: 17, scope: !1439, inlinedAt: !1445)
!1448 = !{!1383, !1381, i64 24}
!1449 = !DILocation(line: 142, column: 20, scope: !1439, inlinedAt: !1445)
!1450 = !DILocation(line: 142, column: 17, scope: !1439, inlinedAt: !1445)
!1451 = !DILocation(line: 143, column: 14, scope: !1439, inlinedAt: !1445)
!1452 = !DILocation(line: 144, column: 19, scope: !1453, inlinedAt: !1445)
!1453 = distinct !DILexicalBlock(scope: !1439, file: !148, line: 144, column: 9)
!1454 = !DILocation(line: 144, column: 9, scope: !1439, inlinedAt: !1445)
!1455 = !DILocation(line: 154, column: 42, scope: !1456, inlinedAt: !1445)
!1456 = distinct !DILexicalBlock(scope: !1453, file: !148, line: 145, column: 5)
!1457 = !DILocalVariable(name: "x", arg: 1, scope: !1458, file: !1459, line: 148, type: !112)
!1458 = distinct !DISubprogram(name: "endian_fix32", scope: !1459, file: !1459, line: 148, type: !1460, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1462)
!1459 = !DIFile(filename: "./common/osdep.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "61ba426ac8237ae8f0b1d3591c09a744")
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!112, !112}
!1462 = !{!1457}
!1463 = !DILocation(line: 0, scope: !1458, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 154, column: 28, scope: !1456, inlinedAt: !1445)
!1465 = !DILocation(line: 150, column: 5, scope: !1458, inlinedAt: !1464)
!1466 = !{i64 64706}
!1467 = !DILocation(line: 154, column: 26, scope: !1456, inlinedAt: !1445)
!1468 = !{!1373, !1373, i64 0}
!1469 = !DILocation(line: 156, column: 14, scope: !1456, inlinedAt: !1445)
!1470 = !DILocation(line: 157, column: 19, scope: !1456, inlinedAt: !1445)
!1471 = !DILocation(line: 158, column: 5, scope: !1456, inlinedAt: !1445)
!1472 = !DILocation(line: 321, column: 19, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 321, column: 9)
!1474 = !DILocation(line: 321, column: 9, scope: !1332)
!1475 = !DILocalVariable(name: "s", arg: 1, scope: !1476, file: !148, line: 223, type: !1281)
!1476 = distinct !DISubprogram(name: "bs_write_ue", scope: !148, file: !148, line: 223, type: !1477, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1479)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{null, !1281, !126}
!1479 = !{!1475, !1480}
!1480 = !DILocalVariable(name: "val", arg: 2, scope: !1476, file: !148, line: 223, type: !126)
!1481 = !DILocation(line: 0, scope: !1476, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 323, column: 9, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 322, column: 5)
!1484 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !1482)
!1485 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !1482)
!1486 = !DILocalVariable(name: "s", arg: 1, scope: !1487, file: !148, line: 86, type: !1281)
!1487 = distinct !DISubprogram(name: "bs_write", scope: !148, file: !148, line: 86, type: !1488, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{null, !1281, !126, !112}
!1490 = !{!1486, !1491, !1492}
!1491 = !DILocalVariable(name: "i_count", arg: 2, scope: !1487, file: !148, line: 86, type: !126)
!1492 = !DILocalVariable(name: "i_bits", arg: 3, scope: !1487, file: !148, line: 86, type: !112)
!1493 = !DILocation(line: 0, scope: !1487, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !1482)
!1495 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !1494)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !148, line: 89, column: 5)
!1497 = distinct !DILexicalBlock(scope: !1487, file: !148, line: 88, column: 9)
!1498 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !1494)
!1499 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !1494)
!1500 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !1494)
!1501 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !1494)
!1502 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !1494)
!1503 = distinct !DILexicalBlock(scope: !1496, file: !148, line: 92, column: 13)
!1504 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !1494)
!1505 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !1494)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !148, line: 93, column: 9)
!1507 = !DILocalVariable(name: "x", arg: 1, scope: !1508, file: !1459, line: 153, type: !117)
!1508 = distinct !DISubprogram(name: "endian_fix", scope: !1459, file: !1459, line: 153, type: !1509, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1511)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!117, !117}
!1511 = !{!1507}
!1512 = !DILocation(line: 0, scope: !1508, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1494)
!1514 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !1513)
!1515 = !{i64 64808}
!1516 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1494)
!1517 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !1494)
!1518 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !1494)
!1519 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !1494)
!1520 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !1494)
!1521 = !DILocation(line: 66, column: 58, scope: !1401, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 324, column: 24, scope: !1483)
!1523 = !DILocation(line: 66, column: 21, scope: !1401, inlinedAt: !1522)
!1524 = !DILocation(line: 0, scope: !1401, inlinedAt: !1522)
!1525 = !DILocation(line: 66, column: 23, scope: !1401, inlinedAt: !1522)
!1526 = !DILocation(line: 66, column: 11, scope: !1401, inlinedAt: !1522)
!1527 = !DILocation(line: 325, column: 12, scope: !1483)
!1528 = !DILocation(line: 325, column: 33, scope: !1483)
!1529 = !{!1371, !1373, i64 20904}
!1530 = !DILocation(line: 325, column: 49, scope: !1483)
!1531 = !DILocalVariable(name: "s", arg: 1, scope: !1532, file: !148, line: 161, type: !1281)
!1532 = distinct !DISubprogram(name: "bs_align_0", scope: !148, file: !148, line: 161, type: !1533, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1535)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !1281}
!1535 = !{!1531}
!1536 = !DILocation(line: 0, scope: !1532, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 327, column: 9, scope: !1483)
!1538 = !DILocation(line: 163, column: 18, scope: !1539, inlinedAt: !1537)
!1539 = distinct !DILexicalBlock(scope: !1532, file: !148, line: 163, column: 9)
!1540 = !DILocation(line: 163, column: 9, scope: !1532, inlinedAt: !1537)
!1541 = !DILocation(line: 165, column: 21, scope: !1542, inlinedAt: !1537)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !148, line: 164, column: 5)
!1543 = !DILocation(line: 166, column: 19, scope: !1542, inlinedAt: !1537)
!1544 = !DILocation(line: 167, column: 5, scope: !1542, inlinedAt: !1537)
!1545 = !DILocation(line: 80, column: 54, scope: !1546, inlinedAt: !1549)
!1546 = distinct !DISubprogram(name: "bs_flush", scope: !148, file: !148, line: 70, type: !1533, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1547)
!1547 = !{!1548}
!1548 = !DILocalVariable(name: "s", arg: 1, scope: !1546, file: !148, line: 70, type: !1281)
!1549 = distinct !DILocation(line: 168, column: 5, scope: !1532, inlinedAt: !1537)
!1550 = !DILocation(line: 80, column: 39, scope: !1546, inlinedAt: !1549)
!1551 = !DILocation(line: 0, scope: !1546, inlinedAt: !1549)
!1552 = !DILocation(line: 80, column: 48, scope: !1546, inlinedAt: !1549)
!1553 = !DILocation(line: 0, scope: !1508, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 80, column: 24, scope: !1546, inlinedAt: !1549)
!1555 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !1554)
!1556 = !DILocation(line: 80, column: 22, scope: !1546, inlinedAt: !1549)
!1557 = !{!1381, !1381, i64 0}
!1558 = !DILocation(line: 82, column: 35, scope: !1546, inlinedAt: !1549)
!1559 = !DILocation(line: 82, column: 23, scope: !1546, inlinedAt: !1549)
!1560 = !DILocation(line: 82, column: 10, scope: !1546, inlinedAt: !1549)
!1561 = !DILocation(line: 83, column: 15, scope: !1546, inlinedAt: !1549)
!1562 = !DILocation(line: 329, column: 33, scope: !1483)
!1563 = !DILocation(line: 329, column: 23, scope: !1483)
!1564 = !{!1377, !1377, i64 0}
!1565 = !DILocation(line: 329, column: 9, scope: !1483)
!1566 = !DILocation(line: 330, column: 14, scope: !1483)
!1567 = !DILocation(line: 332, column: 33, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !2, line: 331, column: 9)
!1569 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 331, column: 9)
!1570 = !DILocation(line: 332, column: 13, scope: !1568)
!1571 = !DILocation(line: 332, column: 24, scope: !1568)
!1572 = !DILocation(line: 332, column: 26, scope: !1568)
!1573 = !DILocation(line: 332, column: 53, scope: !1568)
!1574 = !DILocation(line: 333, column: 14, scope: !1483)
!1575 = !DILocation(line: 335, column: 33, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 334, column: 9)
!1577 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 334, column: 9)
!1578 = !DILocation(line: 335, column: 13, scope: !1576)
!1579 = !DILocation(line: 335, column: 24, scope: !1576)
!1580 = !DILocation(line: 335, column: 26, scope: !1576)
!1581 = !DILocation(line: 335, column: 53, scope: !1576)
!1582 = !DILocation(line: 336, column: 14, scope: !1483)
!1583 = !DILocation(line: 339, column: 15, scope: !1483)
!1584 = !DILocation(line: 339, column: 9, scope: !1483)
!1585 = !DILocation(line: 339, column: 44, scope: !1483)
!1586 = !DILocation(line: 339, column: 34, scope: !1483)
!1587 = !DILocation(line: 339, column: 68, scope: !1483)
!1588 = !DILocation(line: 340, column: 9, scope: !1483)
!1589 = !DILocation(line: 340, column: 34, scope: !1483)
!1590 = !DILocation(line: 340, column: 68, scope: !1483)
!1591 = !DILocation(line: 341, column: 9, scope: !1483)
!1592 = !DILocation(line: 341, column: 34, scope: !1483)
!1593 = !DILocation(line: 341, column: 68, scope: !1483)
!1594 = !DILocation(line: 0, scope: !1401, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 343, column: 37, scope: !1483)
!1596 = !DILocation(line: 66, column: 21, scope: !1401, inlinedAt: !1595)
!1597 = !DILocation(line: 66, column: 28, scope: !1401, inlinedAt: !1595)
!1598 = !DILocation(line: 66, column: 23, scope: !1401, inlinedAt: !1595)
!1599 = !DILocation(line: 66, column: 58, scope: !1401, inlinedAt: !1595)
!1600 = !DILocation(line: 66, column: 11, scope: !1401, inlinedAt: !1595)
!1601 = !DILocation(line: 343, column: 23, scope: !1483)
!1602 = !DILocation(line: 343, column: 34, scope: !1483)
!1603 = !{!1371, !1373, i64 20908}
!1604 = !DILocation(line: 343, column: 47, scope: !1483)
!1605 = !DILocation(line: 344, column: 9, scope: !1483)
!1606 = !DILocation(line: 352, column: 28, scope: !1345)
!1607 = !DILocation(line: 354, column: 18, scope: !1344)
!1608 = !DILocation(line: 0, scope: !1344)
!1609 = !DILocation(line: 0, scope: !1476, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 355, column: 9, scope: !1344)
!1611 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !1610)
!1612 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !1610)
!1613 = !DILocation(line: 0, scope: !1487, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !1610)
!1615 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !1614)
!1616 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !1614)
!1617 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !1614)
!1618 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !1614)
!1619 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !1614)
!1620 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !1614)
!1621 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !1614)
!1622 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !1614)
!1623 = !DILocation(line: 0, scope: !1508, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1614)
!1625 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !1624)
!1626 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1614)
!1627 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !1614)
!1628 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !1614)
!1629 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !1614)
!1630 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !1614)
!1631 = !DILocation(line: 356, column: 16, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 356, column: 13)
!1633 = !{!1371, !1377, i64 3328}
!1634 = !DILocation(line: 356, column: 21, scope: !1632)
!1635 = !{!1636, !1373, i64 60}
!1636 = !{!"", !1373, i64 0, !1373, i64 4, !1373, i64 8, !1373, i64 12, !1373, i64 16, !1373, i64 20, !1373, i64 24, !1373, i64 28, !1373, i64 32, !1373, i64 36, !1373, i64 40, !1373, i64 44, !1373, i64 48, !1373, i64 52, !1373, i64 56, !1373, i64 60, !1373, i64 64, !1374, i64 72}
!1637 = !DILocation(line: 356, column: 13, scope: !1632)
!1638 = !DILocation(line: 356, column: 13, scope: !1344)
!1639 = !DILocation(line: 357, column: 33, scope: !1632)
!1640 = !{!1371, !1373, i64 11808}
!1641 = !DILocation(line: 0, scope: !1439, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 357, column: 13, scope: !1632)
!1643 = !DILocation(line: 141, column: 17, scope: !1439, inlinedAt: !1642)
!1644 = !DILocation(line: 142, column: 20, scope: !1439, inlinedAt: !1642)
!1645 = !DILocation(line: 142, column: 17, scope: !1439, inlinedAt: !1642)
!1646 = !DILocation(line: 143, column: 14, scope: !1439, inlinedAt: !1642)
!1647 = !DILocation(line: 144, column: 19, scope: !1453, inlinedAt: !1642)
!1648 = !DILocation(line: 144, column: 9, scope: !1439, inlinedAt: !1642)
!1649 = !DILocation(line: 154, column: 42, scope: !1456, inlinedAt: !1642)
!1650 = !DILocation(line: 0, scope: !1458, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 154, column: 28, scope: !1456, inlinedAt: !1642)
!1652 = !DILocation(line: 150, column: 5, scope: !1458, inlinedAt: !1651)
!1653 = !DILocation(line: 154, column: 26, scope: !1456, inlinedAt: !1642)
!1654 = !DILocation(line: 156, column: 14, scope: !1456, inlinedAt: !1642)
!1655 = !DILocation(line: 157, column: 19, scope: !1456, inlinedAt: !1642)
!1656 = !DILocation(line: 158, column: 5, scope: !1456, inlinedAt: !1642)
!1657 = !DILocation(line: 360, column: 9, scope: !1349)
!1658 = !DILocalVariable(name: "h", arg: 1, scope: !1659, file: !21, line: 439, type: !208)
!1659 = distinct !DISubprogram(name: "x264_mb_predict_intra4x4_mode", scope: !21, file: !21, line: 439, type: !1660, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1662)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!126, !208, !126}
!1662 = !{!1658, !1663, !1664, !1665, !1666}
!1663 = !DILocalVariable(name: "idx", arg: 2, scope: !1659, file: !21, line: 439, type: !126)
!1664 = !DILocalVariable(name: "ma", scope: !1659, file: !21, line: 441, type: !159)
!1665 = !DILocalVariable(name: "mb", scope: !1659, file: !21, line: 442, type: !159)
!1666 = !DILocalVariable(name: "m", scope: !1659, file: !21, line: 443, type: !159)
!1667 = !DILocation(line: 0, scope: !1659, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 362, column: 26, scope: !1347)
!1669 = !DILocation(line: 441, column: 51, scope: !1659, inlinedAt: !1668)
!1670 = !DILocation(line: 441, column: 67, scope: !1659, inlinedAt: !1668)
!1671 = !DILocation(line: 441, column: 20, scope: !1659, inlinedAt: !1668)
!1672 = !DILocation(line: 442, column: 67, scope: !1659, inlinedAt: !1668)
!1673 = !DILocation(line: 442, column: 20, scope: !1659, inlinedAt: !1668)
!1674 = !DILocation(line: 443, column: 20, scope: !1659, inlinedAt: !1668)
!1675 = !DILocation(line: 446, column: 11, scope: !1676, inlinedAt: !1668)
!1676 = distinct !DILexicalBlock(scope: !1659, file: !21, line: 446, column: 9)
!1677 = !DILocation(line: 446, column: 9, scope: !1659, inlinedAt: !1668)
!1678 = !DILocation(line: 0, scope: !1347)
!1679 = !DILocation(line: 363, column: 26, scope: !1347)
!1680 = !DILocation(line: 365, column: 24, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 365, column: 17)
!1682 = !DILocation(line: 365, column: 17, scope: !1347)
!1683 = !DILocation(line: 0, scope: !1439, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 366, column: 17, scope: !1681)
!1685 = !DILocation(line: 141, column: 17, scope: !1439, inlinedAt: !1684)
!1686 = !DILocation(line: 142, column: 17, scope: !1439, inlinedAt: !1684)
!1687 = !DILocation(line: 143, column: 14, scope: !1439, inlinedAt: !1684)
!1688 = !DILocation(line: 144, column: 19, scope: !1453, inlinedAt: !1684)
!1689 = !DILocation(line: 144, column: 9, scope: !1439, inlinedAt: !1684)
!1690 = !DILocation(line: 154, column: 42, scope: !1456, inlinedAt: !1684)
!1691 = !DILocation(line: 0, scope: !1458, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 154, column: 28, scope: !1456, inlinedAt: !1684)
!1693 = !DILocation(line: 150, column: 5, scope: !1458, inlinedAt: !1692)
!1694 = !DILocation(line: 154, column: 26, scope: !1456, inlinedAt: !1684)
!1695 = !DILocation(line: 156, column: 14, scope: !1456, inlinedAt: !1684)
!1696 = !DILocation(line: 157, column: 19, scope: !1456, inlinedAt: !1684)
!1697 = !DILocation(line: 158, column: 5, scope: !1456, inlinedAt: !1684)
!1698 = !DILocation(line: 368, column: 50, scope: !1681)
!1699 = !DILocation(line: 368, column: 40, scope: !1681)
!1700 = !DILocation(line: 0, scope: !1487, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 368, column: 17, scope: !1681)
!1702 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !1701)
!1703 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !1701)
!1704 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !1701)
!1705 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !1701)
!1706 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !1701)
!1707 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !1701)
!1708 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !1701)
!1709 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !1701)
!1710 = !DILocation(line: 0, scope: !1508, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1701)
!1712 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !1711)
!1713 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1701)
!1714 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !1701)
!1715 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !1701)
!1716 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !1701)
!1717 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !1701)
!1718 = !DILocation(line: 360, column: 31, scope: !1348)
!1719 = !DILocation(line: 360, column: 23, scope: !1348)
!1720 = distinct !{!1720, !1657, !1721, !1722}
!1721 = !DILocation(line: 369, column: 9, scope: !1349)
!1722 = !{!"llvm.loop.mustprogress"}
!1723 = !DILocation(line: 370, column: 58, scope: !1344)
!1724 = !{!1371, !1373, i64 11824}
!1725 = !DILocation(line: 370, column: 25, scope: !1344)
!1726 = !DILocation(line: 0, scope: !1476, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 370, column: 9, scope: !1344)
!1728 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !1727)
!1729 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !1727)
!1730 = !DILocation(line: 0, scope: !1487, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !1727)
!1732 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !1731)
!1733 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !1731)
!1734 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !1731)
!1735 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !1731)
!1736 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !1731)
!1737 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !1731)
!1738 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !1731)
!1739 = !DILocation(line: 0, scope: !1508, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1731)
!1741 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !1740)
!1742 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1731)
!1743 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !1731)
!1744 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !1731)
!1745 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !1731)
!1746 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !1731)
!1747 = !DILocation(line: 372, column: 14, scope: !1345)
!1748 = !DILocation(line: 374, column: 78, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 373, column: 5)
!1750 = !{!1371, !1373, i64 11820}
!1751 = !DILocation(line: 374, column: 45, scope: !1749)
!1752 = !DILocation(line: 375, column: 31, scope: !1749)
!1753 = !{!1371, !1373, i64 11816}
!1754 = !DILocation(line: 375, column: 44, scope: !1749)
!1755 = !DILocation(line: 375, column: 58, scope: !1749)
!1756 = !{!1371, !1373, i64 11812}
!1757 = !DILocation(line: 375, column: 69, scope: !1749)
!1758 = !DILocation(line: 375, column: 52, scope: !1749)
!1759 = !DILocation(line: 0, scope: !1476, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 374, column: 9, scope: !1749)
!1761 = !DILocation(line: 374, column: 43, scope: !1749)
!1762 = !DILocation(line: 374, column: 102, scope: !1749)
!1763 = !DILocation(line: 375, column: 48, scope: !1749)
!1764 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !1760)
!1765 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !1760)
!1766 = !DILocation(line: 0, scope: !1487, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !1760)
!1768 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !1767)
!1769 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !1767)
!1770 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !1767)
!1771 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !1767)
!1772 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !1767)
!1773 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !1767)
!1774 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !1767)
!1775 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !1767)
!1776 = !DILocation(line: 0, scope: !1508, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1767)
!1778 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !1777)
!1779 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1767)
!1780 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !1767)
!1781 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !1767)
!1782 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !1767)
!1783 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !1767)
!1784 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 376, column: 9, scope: !1749)
!1787 = !DILocation(line: 376, column: 58, scope: !1749)
!1788 = !DILocation(line: 376, column: 25, scope: !1749)
!1789 = !DILocation(line: 0, scope: !1476, inlinedAt: !1786)
!1790 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !1786)
!1791 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !1786)
!1792 = !DILocation(line: 0, scope: !1487, inlinedAt: !1785)
!1793 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !1785)
!1794 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !1785)
!1795 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !1785)
!1796 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !1785)
!1797 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !1785)
!1798 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !1785)
!1799 = !DILocation(line: 0, scope: !1508, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1785)
!1801 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !1800)
!1802 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1785)
!1803 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !1785)
!1804 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !1785)
!1805 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !1785)
!1806 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !1785)
!1807 = !DILocation(line: 380, column: 9, scope: !1352)
!1808 = !DILocation(line: 382, column: 19, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 382, column: 13)
!1810 = !{!1371, !1373, i64 11788}
!1811 = !DILocation(line: 382, column: 13, scope: !1352)
!1812 = !DILocation(line: 384, column: 13, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !2, line: 383, column: 9)
!1814 = !DILocation(line: 386, column: 27, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 386, column: 17)
!1816 = !DILocation(line: 386, column: 17, scope: !1815)
!1817 = !DILocation(line: 386, column: 37, scope: !1815)
!1818 = !DILocation(line: 386, column: 17, scope: !1813)
!1819 = !DILocation(line: 387, column: 53, scope: !1815)
!1820 = !DILocation(line: 387, column: 58, scope: !1815)
!1821 = !DILocation(line: 387, column: 17, scope: !1815)
!1822 = !DILocation(line: 388, column: 13, scope: !1813)
!1823 = !DILocation(line: 389, column: 29, scope: !1813)
!1824 = !{!1825, !1825, i64 0}
!1825 = !{!"short", !1374, i64 0}
!1826 = !DILocation(line: 389, column: 67, scope: !1813)
!1827 = !DILocation(line: 389, column: 65, scope: !1813)
!1828 = !DILocation(line: 389, column: 13, scope: !1813)
!1829 = !DILocation(line: 390, column: 29, scope: !1813)
!1830 = !DILocation(line: 390, column: 67, scope: !1813)
!1831 = !DILocation(line: 391, column: 9, scope: !1813)
!1832 = !DILocation(line: 394, column: 13, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 393, column: 9)
!1834 = distinct !DILexicalBlock(scope: !1809, file: !2, line: 392, column: 18)
!1835 = !DILocation(line: 395, column: 27, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1833, file: !2, line: 395, column: 17)
!1837 = !DILocation(line: 395, column: 17, scope: !1836)
!1838 = !DILocation(line: 395, column: 37, scope: !1836)
!1839 = !DILocation(line: 395, column: 17, scope: !1833)
!1840 = !DILocation(line: 397, column: 53, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 396, column: 13)
!1842 = !DILocation(line: 397, column: 58, scope: !1841)
!1843 = !DILocation(line: 397, column: 17, scope: !1841)
!1844 = !DILocation(line: 398, column: 33, scope: !1841)
!1845 = !DILocation(line: 398, column: 53, scope: !1841)
!1846 = !DILocation(line: 398, column: 58, scope: !1841)
!1847 = !DILocation(line: 398, column: 17, scope: !1841)
!1848 = !DILocation(line: 399, column: 13, scope: !1841)
!1849 = !DILocation(line: 401, column: 13, scope: !1833)
!1850 = !DILocation(line: 402, column: 29, scope: !1833)
!1851 = !DILocation(line: 402, column: 67, scope: !1833)
!1852 = !DILocation(line: 402, column: 65, scope: !1833)
!1853 = !DILocation(line: 402, column: 13, scope: !1833)
!1854 = !DILocation(line: 403, column: 29, scope: !1833)
!1855 = !DILocation(line: 403, column: 67, scope: !1833)
!1856 = !DILocation(line: 403, column: 65, scope: !1833)
!1857 = !DILocation(line: 403, column: 13, scope: !1833)
!1858 = !DILocation(line: 405, column: 13, scope: !1833)
!1859 = !DILocation(line: 406, column: 29, scope: !1833)
!1860 = !DILocation(line: 406, column: 67, scope: !1833)
!1861 = !DILocation(line: 406, column: 65, scope: !1833)
!1862 = !DILocation(line: 406, column: 13, scope: !1833)
!1863 = !DILocation(line: 407, column: 29, scope: !1833)
!1864 = !DILocation(line: 408, column: 9, scope: !1833)
!1865 = !DILocation(line: 411, column: 13, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !2, line: 410, column: 9)
!1867 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 409, column: 18)
!1868 = !DILocation(line: 412, column: 27, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 412, column: 17)
!1870 = !DILocation(line: 412, column: 17, scope: !1869)
!1871 = !DILocation(line: 412, column: 37, scope: !1869)
!1872 = !DILocation(line: 412, column: 17, scope: !1866)
!1873 = !DILocation(line: 414, column: 53, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1869, file: !2, line: 413, column: 13)
!1875 = !DILocation(line: 414, column: 58, scope: !1874)
!1876 = !DILocation(line: 414, column: 17, scope: !1874)
!1877 = !DILocation(line: 415, column: 33, scope: !1874)
!1878 = !DILocation(line: 415, column: 53, scope: !1874)
!1879 = !DILocation(line: 415, column: 58, scope: !1874)
!1880 = !DILocation(line: 415, column: 17, scope: !1874)
!1881 = !DILocation(line: 416, column: 13, scope: !1874)
!1882 = !DILocation(line: 418, column: 13, scope: !1866)
!1883 = !DILocation(line: 419, column: 29, scope: !1866)
!1884 = !DILocation(line: 419, column: 67, scope: !1866)
!1885 = !DILocation(line: 419, column: 65, scope: !1866)
!1886 = !DILocation(line: 419, column: 13, scope: !1866)
!1887 = !DILocation(line: 420, column: 29, scope: !1866)
!1888 = !DILocation(line: 420, column: 67, scope: !1866)
!1889 = !DILocation(line: 420, column: 65, scope: !1866)
!1890 = !DILocation(line: 420, column: 13, scope: !1866)
!1891 = !DILocation(line: 422, column: 13, scope: !1866)
!1892 = !DILocation(line: 423, column: 29, scope: !1866)
!1893 = !DILocation(line: 423, column: 67, scope: !1866)
!1894 = !DILocation(line: 423, column: 65, scope: !1866)
!1895 = !DILocation(line: 423, column: 13, scope: !1866)
!1896 = !DILocation(line: 424, column: 29, scope: !1866)
!1897 = !DILocation(line: 425, column: 9, scope: !1866)
!1898 = !DILocation(line: 0, scope: !1809)
!1899 = !DILocation(line: 426, column: 5, scope: !1353)
!1900 = !DILocation(line: 426, column: 5, scope: !1352)
!1901 = !DILocation(line: 430, column: 14, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 430, column: 13)
!1903 = !DILocation(line: 430, column: 50, scope: !1902)
!1904 = !DILocation(line: 430, column: 48, scope: !1902)
!1905 = !DILocation(line: 431, column: 14, scope: !1902)
!1906 = !DILocation(line: 430, column: 85, scope: !1902)
!1907 = !DILocation(line: 431, column: 50, scope: !1902)
!1908 = !DILocation(line: 431, column: 48, scope: !1902)
!1909 = !DILocation(line: 431, column: 86, scope: !1902)
!1910 = !DILocation(line: 0, scope: !1902)
!1911 = !DILocation(line: 0, scope: !1356)
!1912 = !DILocation(line: 443, column: 30, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 443, column: 13)
!1914 = !{!1371, !1373, i64 380}
!1915 = !DILocation(line: 443, column: 36, scope: !1913)
!1916 = !DILocation(line: 443, column: 13, scope: !1356)
!1917 = !DILocation(line: 445, column: 58, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !2, line: 444, column: 13)
!1919 = distinct !DILexicalBlock(scope: !1913, file: !2, line: 444, column: 13)
!1920 = !DILocation(line: 445, column: 33, scope: !1918)
!1921 = !DILocation(line: 0, scope: !1476, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 445, column: 17, scope: !1918)
!1923 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !1922)
!1924 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !1922)
!1925 = !DILocation(line: 0, scope: !1487, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !1922)
!1927 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !1926)
!1928 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !1926)
!1929 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !1926)
!1930 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !1926)
!1931 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !1926)
!1932 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !1926)
!1933 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !1926)
!1934 = !DILocation(line: 0, scope: !1508, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1926)
!1936 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !1935)
!1937 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1926)
!1938 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !1926)
!1939 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !1926)
!1940 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !1926)
!1941 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !1926)
!1942 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !1926)
!1943 = !DILocation(line: 447, column: 13, scope: !1913)
!1944 = !DILocation(line: 450, column: 23, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 450, column: 13)
!1946 = !DILocation(line: 450, column: 13, scope: !1945)
!1947 = !DILocation(line: 450, column: 33, scope: !1945)
!1948 = !DILocation(line: 450, column: 37, scope: !1945)
!1949 = !DILocation(line: 452, column: 49, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1945, file: !2, line: 451, column: 9)
!1951 = !DILocation(line: 452, column: 54, scope: !1950)
!1952 = !DILocation(line: 452, column: 13, scope: !1950)
!1953 = !DILocation(line: 453, column: 29, scope: !1950)
!1954 = !DILocation(line: 453, column: 49, scope: !1950)
!1955 = !DILocation(line: 453, column: 54, scope: !1950)
!1956 = !DILocation(line: 453, column: 13, scope: !1950)
!1957 = !DILocation(line: 454, column: 29, scope: !1950)
!1958 = !DILocation(line: 454, column: 49, scope: !1950)
!1959 = !DILocation(line: 454, column: 54, scope: !1950)
!1960 = !DILocation(line: 454, column: 13, scope: !1950)
!1961 = !DILocation(line: 455, column: 29, scope: !1950)
!1962 = !DILocation(line: 455, column: 49, scope: !1950)
!1963 = !DILocation(line: 455, column: 54, scope: !1950)
!1964 = !DILocation(line: 455, column: 13, scope: !1950)
!1965 = !DILocation(line: 456, column: 9, scope: !1950)
!1966 = !DILocation(line: 459, column: 13, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 458, column: 9)
!1968 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 458, column: 9)
!1969 = !DILocation(line: 66, column: 21, scope: !1401, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 573, column: 20, scope: !1332)
!1971 = !DILocation(line: 0, scope: !1476, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 463, column: 9, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 462, column: 5)
!1974 = !DILocation(line: 0, scope: !1487, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !1972)
!1976 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !1975)
!1977 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !1975)
!1978 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !1975)
!1979 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !1975)
!1980 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !1975)
!1981 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !1975)
!1982 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !1975)
!1983 = !DILocation(line: 0, scope: !1508, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1975)
!1985 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !1984)
!1986 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1975)
!1987 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !1975)
!1988 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !1975)
!1989 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !1975)
!1990 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !1975)
!1991 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 467, column: 13, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !2, line: 466, column: 9)
!1995 = distinct !DILexicalBlock(scope: !1973, file: !2, line: 466, column: 9)
!1996 = !DILocation(line: 467, column: 54, scope: !1994)
!1997 = !DILocation(line: 467, column: 29, scope: !1994)
!1998 = !DILocation(line: 0, scope: !1476, inlinedAt: !1993)
!1999 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !1993)
!2000 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !1993)
!2001 = !DILocation(line: 0, scope: !1487, inlinedAt: !1992)
!2002 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !1992)
!2003 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !1992)
!2004 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !1992)
!2005 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !1992)
!2006 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !1992)
!2007 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !1992)
!2008 = !DILocation(line: 0, scope: !1508, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1992)
!2010 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2009)
!2011 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !1992)
!2012 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !1992)
!2013 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !1992)
!2014 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !1992)
!2015 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !1992)
!2016 = !DILocation(line: 471, column: 51, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !2, line: 471, column: 17)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 470, column: 9)
!2019 = distinct !DILexicalBlock(scope: !1973, file: !2, line: 470, column: 9)
!2020 = !DILocation(line: 471, column: 17, scope: !2017)
!2021 = !DILocation(line: 471, column: 17, scope: !2018)
!2022 = !DILocation(line: 472, column: 33, scope: !2017)
!2023 = !DILocation(line: 472, column: 58, scope: !2017)
!2024 = !DILocalVariable(name: "s", arg: 1, scope: !2025, file: !148, line: 241, type: !1281)
!2025 = distinct !DISubprogram(name: "bs_write_te", scope: !148, file: !148, line: 241, type: !2026, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !1281, !126, !126}
!2028 = !{!2024, !2029, !2030}
!2029 = !DILocalVariable(name: "x", arg: 2, scope: !2025, file: !148, line: 241, type: !126)
!2030 = !DILocalVariable(name: "val", arg: 3, scope: !2025, file: !148, line: 241, type: !126)
!2031 = !DILocation(line: 0, scope: !2025, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 472, column: 17, scope: !2017)
!2033 = !DILocation(line: 243, column: 11, scope: !2034, inlinedAt: !2032)
!2034 = distinct !DILexicalBlock(scope: !2025, file: !148, line: 243, column: 9)
!2035 = !DILocation(line: 243, column: 9, scope: !2025, inlinedAt: !2032)
!2036 = !DILocation(line: 244, column: 24, scope: !2034, inlinedAt: !2032)
!2037 = !DILocation(line: 0, scope: !1439, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 244, column: 9, scope: !2034, inlinedAt: !2032)
!2039 = !DILocation(line: 141, column: 17, scope: !1439, inlinedAt: !2038)
!2040 = !DILocation(line: 142, column: 20, scope: !1439, inlinedAt: !2038)
!2041 = !DILocation(line: 142, column: 17, scope: !1439, inlinedAt: !2038)
!2042 = !DILocation(line: 143, column: 14, scope: !1439, inlinedAt: !2038)
!2043 = !DILocation(line: 144, column: 19, scope: !1453, inlinedAt: !2038)
!2044 = !DILocation(line: 144, column: 9, scope: !1439, inlinedAt: !2038)
!2045 = !DILocation(line: 154, column: 42, scope: !1456, inlinedAt: !2038)
!2046 = !DILocation(line: 0, scope: !1458, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 154, column: 28, scope: !1456, inlinedAt: !2038)
!2048 = !DILocation(line: 150, column: 5, scope: !1458, inlinedAt: !2047)
!2049 = !DILocation(line: 154, column: 26, scope: !1456, inlinedAt: !2038)
!2050 = !DILocation(line: 156, column: 14, scope: !1456, inlinedAt: !2038)
!2051 = !DILocation(line: 157, column: 19, scope: !1456, inlinedAt: !2038)
!2052 = !DILocation(line: 158, column: 5, scope: !1456, inlinedAt: !2038)
!2053 = !DILocation(line: 245, column: 16, scope: !2054, inlinedAt: !2032)
!2054 = distinct !DILexicalBlock(scope: !2034, file: !148, line: 245, column: 14)
!2055 = !DILocation(line: 245, column: 14, scope: !2034, inlinedAt: !2032)
!2056 = !DILocation(line: 0, scope: !1476, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 246, column: 9, scope: !2054, inlinedAt: !2032)
!2058 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !2057)
!2059 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !2057)
!2060 = !DILocation(line: 0, scope: !1487, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !2057)
!2062 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2061)
!2063 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2061)
!2064 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2061)
!2065 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2061)
!2066 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2061)
!2067 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2061)
!2068 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2061)
!2069 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2061)
!2070 = !DILocation(line: 0, scope: !1508, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2061)
!2072 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2071)
!2073 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2061)
!2074 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2061)
!2075 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2061)
!2076 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2061)
!2077 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2061)
!2078 = !DILocation(line: 474, column: 51, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 474, column: 17)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !2, line: 473, column: 9)
!2081 = distinct !DILexicalBlock(scope: !1973, file: !2, line: 473, column: 9)
!2082 = !DILocation(line: 474, column: 17, scope: !2079)
!2083 = !DILocation(line: 474, column: 17, scope: !2080)
!2084 = !DILocation(line: 475, column: 33, scope: !2079)
!2085 = !DILocation(line: 475, column: 58, scope: !2079)
!2086 = !DILocation(line: 0, scope: !2025, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 475, column: 17, scope: !2079)
!2088 = !DILocation(line: 243, column: 11, scope: !2034, inlinedAt: !2087)
!2089 = !DILocation(line: 243, column: 9, scope: !2025, inlinedAt: !2087)
!2090 = !DILocation(line: 244, column: 24, scope: !2034, inlinedAt: !2087)
!2091 = !DILocation(line: 0, scope: !1439, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 244, column: 9, scope: !2034, inlinedAt: !2087)
!2093 = !DILocation(line: 141, column: 17, scope: !1439, inlinedAt: !2092)
!2094 = !DILocation(line: 142, column: 20, scope: !1439, inlinedAt: !2092)
!2095 = !DILocation(line: 142, column: 17, scope: !1439, inlinedAt: !2092)
!2096 = !DILocation(line: 143, column: 14, scope: !1439, inlinedAt: !2092)
!2097 = !DILocation(line: 144, column: 19, scope: !1453, inlinedAt: !2092)
!2098 = !DILocation(line: 144, column: 9, scope: !1439, inlinedAt: !2092)
!2099 = !DILocation(line: 154, column: 42, scope: !1456, inlinedAt: !2092)
!2100 = !DILocation(line: 0, scope: !1458, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 154, column: 28, scope: !1456, inlinedAt: !2092)
!2102 = !DILocation(line: 150, column: 5, scope: !1458, inlinedAt: !2101)
!2103 = !DILocation(line: 154, column: 26, scope: !1456, inlinedAt: !2092)
!2104 = !DILocation(line: 156, column: 14, scope: !1456, inlinedAt: !2092)
!2105 = !DILocation(line: 157, column: 19, scope: !1456, inlinedAt: !2092)
!2106 = !DILocation(line: 158, column: 5, scope: !1456, inlinedAt: !2092)
!2107 = !DILocation(line: 245, column: 16, scope: !2054, inlinedAt: !2087)
!2108 = !DILocation(line: 245, column: 14, scope: !2034, inlinedAt: !2087)
!2109 = !DILocation(line: 0, scope: !1476, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 246, column: 9, scope: !2054, inlinedAt: !2087)
!2111 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !2110)
!2112 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !2110)
!2113 = !DILocation(line: 0, scope: !1487, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !2110)
!2115 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2114)
!2116 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2114)
!2117 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2114)
!2118 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2114)
!2119 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2114)
!2120 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2114)
!2121 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2114)
!2122 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2114)
!2123 = !DILocation(line: 0, scope: !1508, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2114)
!2125 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2124)
!2126 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2114)
!2127 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2114)
!2128 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2114)
!2129 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2114)
!2130 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2114)
!2131 = !DILocation(line: 479, column: 13, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !2, line: 478, column: 9)
!2133 = distinct !DILexicalBlock(scope: !1973, file: !2, line: 478, column: 9)
!2134 = !DILocation(line: 481, column: 13, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !2, line: 480, column: 9)
!2136 = distinct !DILexicalBlock(scope: !1973, file: !2, line: 480, column: 9)
!2137 = !DILocation(line: 488, column: 9, scope: !1359)
!2138 = !DILocation(line: 490, column: 9, scope: !1359)
!2139 = !DILocation(line: 490, column: 13, scope: !1359)
!2140 = !DILocation(line: 495, column: 28, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !2, line: 494, column: 9)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !2, line: 493, column: 9)
!2143 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 493, column: 9)
!2144 = !DILocation(line: 496, column: 28, scope: !2141)
!2145 = !DILocation(line: 496, column: 13, scope: !2141)
!2146 = !DILocation(line: 495, column: 26, scope: !2141)
!2147 = !DILocation(line: 496, column: 26, scope: !2141)
!2148 = !DILocation(line: 499, column: 52, scope: !1359)
!2149 = !DILocation(line: 499, column: 64, scope: !1359)
!2150 = !DILocation(line: 499, column: 25, scope: !1359)
!2151 = !DILocation(line: 499, column: 86, scope: !1359)
!2152 = !DILocation(line: 0, scope: !1476, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 499, column: 9, scope: !1359)
!2154 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !2153)
!2155 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !2153)
!2156 = !DILocation(line: 0, scope: !1487, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !2153)
!2158 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !2157)
!2159 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2157)
!2160 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2157)
!2161 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2157)
!2162 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2157)
!2163 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2157)
!2164 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2157)
!2165 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2157)
!2166 = !DILocation(line: 0, scope: !1508, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2157)
!2168 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2167)
!2169 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2157)
!2170 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2157)
!2171 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2157)
!2172 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2157)
!2173 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2157)
!2174 = !DILocation(line: 0, scope: !1359)
!2175 = !DILocation(line: 501, column: 9, scope: !1367)
!2176 = !DILocation(line: 521, column: 9, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 521, column: 9)
!2178 = !DILocation(line: 503, column: 36, scope: !1365)
!2179 = !DILocation(line: 503, column: 93, scope: !1365)
!2180 = !DILocation(line: 0, scope: !1365)
!2181 = !DILocation(line: 505, column: 17, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 505, column: 17)
!2183 = !DILocation(line: 505, column: 17, scope: !1365)
!2184 = !DILocation(line: 506, column: 31, scope: !2182)
!2185 = !DILocation(line: 506, column: 17, scope: !2182)
!2186 = !DILocation(line: 509, column: 29, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !2, line: 509, column: 29)
!2188 = distinct !DILexicalBlock(scope: !2182, file: !2, line: 507, column: 17)
!2189 = !DILocation(line: 509, column: 29, scope: !2188)
!2190 = !DILocation(line: 509, column: 76, scope: !2187)
!2191 = !DILocation(line: 0, scope: !2025, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 509, column: 49, scope: !2187)
!2193 = !DILocation(line: 243, column: 11, scope: !2034, inlinedAt: !2192)
!2194 = !DILocation(line: 243, column: 9, scope: !2025, inlinedAt: !2192)
!2195 = !DILocation(line: 244, column: 24, scope: !2034, inlinedAt: !2192)
!2196 = !DILocation(line: 0, scope: !1439, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 244, column: 9, scope: !2034, inlinedAt: !2192)
!2198 = !DILocation(line: 141, column: 17, scope: !1439, inlinedAt: !2197)
!2199 = !DILocation(line: 142, column: 20, scope: !1439, inlinedAt: !2197)
!2200 = !DILocation(line: 142, column: 17, scope: !1439, inlinedAt: !2197)
!2201 = !DILocation(line: 143, column: 14, scope: !1439, inlinedAt: !2197)
!2202 = !DILocation(line: 144, column: 19, scope: !1453, inlinedAt: !2197)
!2203 = !DILocation(line: 144, column: 9, scope: !1439, inlinedAt: !2197)
!2204 = !DILocation(line: 154, column: 42, scope: !1456, inlinedAt: !2197)
!2205 = !DILocation(line: 0, scope: !1458, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 154, column: 28, scope: !1456, inlinedAt: !2197)
!2207 = !DILocation(line: 150, column: 5, scope: !1458, inlinedAt: !2206)
!2208 = !DILocation(line: 154, column: 26, scope: !1456, inlinedAt: !2197)
!2209 = !DILocation(line: 156, column: 14, scope: !1456, inlinedAt: !2197)
!2210 = !DILocation(line: 157, column: 19, scope: !1456, inlinedAt: !2197)
!2211 = !DILocation(line: 158, column: 5, scope: !1456, inlinedAt: !2197)
!2212 = !DILocation(line: 245, column: 16, scope: !2054, inlinedAt: !2192)
!2213 = !DILocation(line: 245, column: 14, scope: !2034, inlinedAt: !2192)
!2214 = !DILocation(line: 0, scope: !1476, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 246, column: 9, scope: !2054, inlinedAt: !2192)
!2216 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !2215)
!2217 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !2215)
!2218 = !DILocation(line: 0, scope: !1487, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !2215)
!2220 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2219)
!2221 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2219)
!2222 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2219)
!2223 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2219)
!2224 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2219)
!2225 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2219)
!2226 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2219)
!2227 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2219)
!2228 = !DILocation(line: 0, scope: !1508, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2219)
!2230 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2229)
!2231 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2219)
!2232 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2219)
!2233 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2219)
!2234 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2219)
!2235 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2219)
!2236 = !DILocation(line: 512, column: 29, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2188, file: !2, line: 512, column: 29)
!2238 = !DILocation(line: 512, column: 29, scope: !2188)
!2239 = !DILocation(line: 512, column: 76, scope: !2237)
!2240 = !DILocation(line: 0, scope: !2025, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 512, column: 49, scope: !2237)
!2242 = !DILocation(line: 243, column: 11, scope: !2034, inlinedAt: !2241)
!2243 = !DILocation(line: 243, column: 9, scope: !2025, inlinedAt: !2241)
!2244 = !DILocation(line: 244, column: 24, scope: !2034, inlinedAt: !2241)
!2245 = !DILocation(line: 0, scope: !1439, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 244, column: 9, scope: !2034, inlinedAt: !2241)
!2247 = !DILocation(line: 141, column: 17, scope: !1439, inlinedAt: !2246)
!2248 = !DILocation(line: 142, column: 20, scope: !1439, inlinedAt: !2246)
!2249 = !DILocation(line: 142, column: 17, scope: !1439, inlinedAt: !2246)
!2250 = !DILocation(line: 143, column: 14, scope: !1439, inlinedAt: !2246)
!2251 = !DILocation(line: 144, column: 19, scope: !1453, inlinedAt: !2246)
!2252 = !DILocation(line: 144, column: 9, scope: !1439, inlinedAt: !2246)
!2253 = !DILocation(line: 154, column: 42, scope: !1456, inlinedAt: !2246)
!2254 = !DILocation(line: 0, scope: !1458, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 154, column: 28, scope: !1456, inlinedAt: !2246)
!2256 = !DILocation(line: 150, column: 5, scope: !1458, inlinedAt: !2255)
!2257 = !DILocation(line: 154, column: 26, scope: !1456, inlinedAt: !2246)
!2258 = !DILocation(line: 156, column: 14, scope: !1456, inlinedAt: !2246)
!2259 = !DILocation(line: 157, column: 19, scope: !1456, inlinedAt: !2246)
!2260 = !DILocation(line: 158, column: 5, scope: !1456, inlinedAt: !2246)
!2261 = !DILocation(line: 245, column: 16, scope: !2054, inlinedAt: !2241)
!2262 = !DILocation(line: 245, column: 14, scope: !2034, inlinedAt: !2241)
!2263 = !DILocation(line: 0, scope: !1476, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 246, column: 9, scope: !2054, inlinedAt: !2241)
!2265 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !2264)
!2266 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !2264)
!2267 = !DILocation(line: 0, scope: !1487, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !2264)
!2269 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2268)
!2270 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2268)
!2271 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2268)
!2272 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2268)
!2273 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2268)
!2274 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2268)
!2275 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2268)
!2276 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2268)
!2277 = !DILocation(line: 0, scope: !1508, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2268)
!2279 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2278)
!2280 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2268)
!2281 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2268)
!2282 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2268)
!2283 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2268)
!2284 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2268)
!2285 = !DILocation(line: 513, column: 29, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2188, file: !2, line: 513, column: 29)
!2287 = !DILocation(line: 513, column: 29, scope: !2188)
!2288 = !DILocation(line: 513, column: 76, scope: !2286)
!2289 = !DILocation(line: 0, scope: !2025, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 513, column: 49, scope: !2286)
!2291 = !DILocation(line: 243, column: 11, scope: !2034, inlinedAt: !2290)
!2292 = !DILocation(line: 243, column: 9, scope: !2025, inlinedAt: !2290)
!2293 = !DILocation(line: 244, column: 24, scope: !2034, inlinedAt: !2290)
!2294 = !DILocation(line: 0, scope: !1439, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 244, column: 9, scope: !2034, inlinedAt: !2290)
!2296 = !DILocation(line: 141, column: 17, scope: !1439, inlinedAt: !2295)
!2297 = !DILocation(line: 142, column: 20, scope: !1439, inlinedAt: !2295)
!2298 = !DILocation(line: 142, column: 17, scope: !1439, inlinedAt: !2295)
!2299 = !DILocation(line: 143, column: 14, scope: !1439, inlinedAt: !2295)
!2300 = !DILocation(line: 144, column: 19, scope: !1453, inlinedAt: !2295)
!2301 = !DILocation(line: 144, column: 9, scope: !1439, inlinedAt: !2295)
!2302 = !DILocation(line: 154, column: 42, scope: !1456, inlinedAt: !2295)
!2303 = !DILocation(line: 0, scope: !1458, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 154, column: 28, scope: !1456, inlinedAt: !2295)
!2305 = !DILocation(line: 150, column: 5, scope: !1458, inlinedAt: !2304)
!2306 = !DILocation(line: 154, column: 26, scope: !1456, inlinedAt: !2295)
!2307 = !DILocation(line: 156, column: 14, scope: !1456, inlinedAt: !2295)
!2308 = !DILocation(line: 157, column: 19, scope: !1456, inlinedAt: !2295)
!2309 = !DILocation(line: 158, column: 5, scope: !1456, inlinedAt: !2295)
!2310 = !DILocation(line: 245, column: 16, scope: !2054, inlinedAt: !2290)
!2311 = !DILocation(line: 245, column: 14, scope: !2034, inlinedAt: !2290)
!2312 = !DILocation(line: 0, scope: !1476, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 246, column: 9, scope: !2054, inlinedAt: !2290)
!2314 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !2313)
!2315 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !2313)
!2316 = !DILocation(line: 0, scope: !1487, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !2313)
!2318 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2317)
!2319 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2317)
!2320 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2317)
!2321 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2317)
!2322 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2317)
!2323 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2317)
!2324 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2317)
!2325 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2317)
!2326 = !DILocation(line: 0, scope: !1508, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2317)
!2328 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2327)
!2329 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2317)
!2330 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2317)
!2331 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2317)
!2332 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2317)
!2333 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2317)
!2334 = !DILocation(line: 516, column: 29, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2188, file: !2, line: 516, column: 29)
!2336 = !DILocation(line: 516, column: 29, scope: !2188)
!2337 = !DILocation(line: 516, column: 76, scope: !2335)
!2338 = !DILocation(line: 0, scope: !2025, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 516, column: 49, scope: !2335)
!2340 = !DILocation(line: 243, column: 11, scope: !2034, inlinedAt: !2339)
!2341 = !DILocation(line: 243, column: 9, scope: !2025, inlinedAt: !2339)
!2342 = !DILocation(line: 244, column: 24, scope: !2034, inlinedAt: !2339)
!2343 = !DILocation(line: 0, scope: !1439, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 244, column: 9, scope: !2034, inlinedAt: !2339)
!2345 = !DILocation(line: 141, column: 17, scope: !1439, inlinedAt: !2344)
!2346 = !DILocation(line: 142, column: 20, scope: !1439, inlinedAt: !2344)
!2347 = !DILocation(line: 142, column: 17, scope: !1439, inlinedAt: !2344)
!2348 = !DILocation(line: 143, column: 14, scope: !1439, inlinedAt: !2344)
!2349 = !DILocation(line: 144, column: 19, scope: !1453, inlinedAt: !2344)
!2350 = !DILocation(line: 144, column: 9, scope: !1439, inlinedAt: !2344)
!2351 = !DILocation(line: 154, column: 42, scope: !1456, inlinedAt: !2344)
!2352 = !DILocation(line: 0, scope: !1458, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 154, column: 28, scope: !1456, inlinedAt: !2344)
!2354 = !DILocation(line: 150, column: 5, scope: !1458, inlinedAt: !2353)
!2355 = !DILocation(line: 154, column: 26, scope: !1456, inlinedAt: !2344)
!2356 = !DILocation(line: 156, column: 14, scope: !1456, inlinedAt: !2344)
!2357 = !DILocation(line: 157, column: 19, scope: !1456, inlinedAt: !2344)
!2358 = !DILocation(line: 158, column: 5, scope: !1456, inlinedAt: !2344)
!2359 = !DILocation(line: 245, column: 16, scope: !2054, inlinedAt: !2339)
!2360 = !DILocation(line: 245, column: 14, scope: !2034, inlinedAt: !2339)
!2361 = !DILocation(line: 0, scope: !1476, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 246, column: 9, scope: !2054, inlinedAt: !2339)
!2363 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !2362)
!2364 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !2362)
!2365 = !DILocation(line: 0, scope: !1487, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !2362)
!2367 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2366)
!2368 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2366)
!2369 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2366)
!2370 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2366)
!2371 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2366)
!2372 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2366)
!2373 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2366)
!2374 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2366)
!2375 = !DILocation(line: 0, scope: !1508, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2366)
!2377 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2376)
!2378 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2366)
!2379 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2366)
!2380 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2366)
!2381 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2366)
!2382 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2366)
!2383 = !DILocation(line: 517, column: 29, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2188, file: !2, line: 517, column: 29)
!2385 = !DILocation(line: 517, column: 29, scope: !2188)
!2386 = !DILocation(line: 517, column: 76, scope: !2384)
!2387 = !DILocation(line: 0, scope: !2025, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 517, column: 49, scope: !2384)
!2389 = !DILocation(line: 243, column: 11, scope: !2034, inlinedAt: !2388)
!2390 = !DILocation(line: 243, column: 9, scope: !2025, inlinedAt: !2388)
!2391 = !DILocation(line: 244, column: 24, scope: !2034, inlinedAt: !2388)
!2392 = !DILocation(line: 0, scope: !1439, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 244, column: 9, scope: !2034, inlinedAt: !2388)
!2394 = !DILocation(line: 141, column: 17, scope: !1439, inlinedAt: !2393)
!2395 = !DILocation(line: 142, column: 20, scope: !1439, inlinedAt: !2393)
!2396 = !DILocation(line: 142, column: 17, scope: !1439, inlinedAt: !2393)
!2397 = !DILocation(line: 143, column: 14, scope: !1439, inlinedAt: !2393)
!2398 = !DILocation(line: 144, column: 19, scope: !1453, inlinedAt: !2393)
!2399 = !DILocation(line: 144, column: 9, scope: !1439, inlinedAt: !2393)
!2400 = !DILocation(line: 154, column: 42, scope: !1456, inlinedAt: !2393)
!2401 = !DILocation(line: 0, scope: !1458, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 154, column: 28, scope: !1456, inlinedAt: !2393)
!2403 = !DILocation(line: 150, column: 5, scope: !1458, inlinedAt: !2402)
!2404 = !DILocation(line: 154, column: 26, scope: !1456, inlinedAt: !2393)
!2405 = !DILocation(line: 156, column: 14, scope: !1456, inlinedAt: !2393)
!2406 = !DILocation(line: 157, column: 19, scope: !1456, inlinedAt: !2393)
!2407 = !DILocation(line: 158, column: 5, scope: !1456, inlinedAt: !2393)
!2408 = !DILocation(line: 245, column: 16, scope: !2054, inlinedAt: !2388)
!2409 = !DILocation(line: 245, column: 14, scope: !2034, inlinedAt: !2388)
!2410 = !DILocation(line: 0, scope: !1476, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 246, column: 9, scope: !2054, inlinedAt: !2388)
!2412 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !2411)
!2413 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !2411)
!2414 = !DILocation(line: 0, scope: !1487, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !2411)
!2416 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2415)
!2417 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2415)
!2418 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2415)
!2419 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2415)
!2420 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2415)
!2421 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2415)
!2422 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2415)
!2423 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2415)
!2424 = !DILocation(line: 0, scope: !1508, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2415)
!2426 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2425)
!2427 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2415)
!2428 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2415)
!2429 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2415)
!2430 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2415)
!2431 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2415)
!2432 = distinct !{!2432, !2175, !2433, !1722}
!2433 = !DILocation(line: 520, column: 9, scope: !1367)
!2434 = !DILocation(line: 523, column: 27, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !2, line: 522, column: 9)
!2436 = distinct !DILexicalBlock(scope: !2177, file: !2, line: 521, column: 9)
!2437 = !DILocation(line: 523, column: 13, scope: !2435)
!2438 = !DILocation(line: 526, column: 25, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !2, line: 526, column: 25)
!2440 = distinct !DILexicalBlock(scope: !2435, file: !2, line: 524, column: 13)
!2441 = !DILocation(line: 526, column: 25, scope: !2440)
!2442 = !DILocation(line: 528, column: 25, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2439, file: !2, line: 527, column: 21)
!2444 = !DILocation(line: 529, column: 41, scope: !2443)
!2445 = !DILocation(line: 529, column: 84, scope: !2443)
!2446 = !DILocation(line: 529, column: 82, scope: !2443)
!2447 = !DILocalVariable(name: "s", arg: 1, scope: !2448, file: !148, line: 228, type: !1281)
!2448 = distinct !DISubprogram(name: "bs_write_se", scope: !148, file: !148, line: 228, type: !1477, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2449)
!2449 = !{!2447, !2450, !2451, !2452}
!2450 = !DILocalVariable(name: "val", arg: 2, scope: !2448, file: !148, line: 228, type: !126)
!2451 = !DILocalVariable(name: "size", scope: !2448, file: !148, line: 230, type: !126)
!2452 = !DILocalVariable(name: "tmp", scope: !2448, file: !148, line: 231, type: !126)
!2453 = !DILocation(line: 0, scope: !2448, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 529, column: 25, scope: !2443)
!2455 = !DILocation(line: 231, column: 25, scope: !2448, inlinedAt: !2454)
!2456 = !DILocation(line: 231, column: 21, scope: !2448, inlinedAt: !2454)
!2457 = !DILocation(line: 232, column: 13, scope: !2458, inlinedAt: !2454)
!2458 = distinct !DILexicalBlock(scope: !2448, file: !148, line: 232, column: 9)
!2459 = !DILocation(line: 232, column: 9, scope: !2448, inlinedAt: !2454)
!2460 = !DILocation(line: 237, column: 13, scope: !2448, inlinedAt: !2454)
!2461 = !DILocation(line: 237, column: 10, scope: !2448, inlinedAt: !2454)
!2462 = !DILocation(line: 0, scope: !1487, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 238, column: 5, scope: !2448, inlinedAt: !2454)
!2464 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !2463)
!2465 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2463)
!2466 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2463)
!2467 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2463)
!2468 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2463)
!2469 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2463)
!2470 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2463)
!2471 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2463)
!2472 = !DILocation(line: 0, scope: !1508, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2463)
!2474 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2473)
!2475 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2463)
!2476 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !2463)
!2477 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2463)
!2478 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2463)
!2479 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2463)
!2480 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2463)
!2481 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 238, column: 5, scope: !2448, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 530, column: 25, scope: !2443)
!2484 = !DILocation(line: 530, column: 41, scope: !2443)
!2485 = !DILocation(line: 530, column: 84, scope: !2443)
!2486 = !DILocation(line: 530, column: 82, scope: !2443)
!2487 = !DILocation(line: 0, scope: !2448, inlinedAt: !2483)
!2488 = !DILocation(line: 231, column: 25, scope: !2448, inlinedAt: !2483)
!2489 = !DILocation(line: 231, column: 21, scope: !2448, inlinedAt: !2483)
!2490 = !DILocation(line: 232, column: 13, scope: !2458, inlinedAt: !2483)
!2491 = !DILocation(line: 232, column: 9, scope: !2448, inlinedAt: !2483)
!2492 = !DILocation(line: 237, column: 13, scope: !2448, inlinedAt: !2483)
!2493 = !DILocation(line: 237, column: 10, scope: !2448, inlinedAt: !2483)
!2494 = !DILocation(line: 0, scope: !1487, inlinedAt: !2482)
!2495 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2482)
!2496 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2482)
!2497 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2482)
!2498 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2482)
!2499 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2482)
!2500 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2482)
!2501 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2482)
!2502 = !DILocation(line: 0, scope: !1508, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2482)
!2504 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2503)
!2505 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2482)
!2506 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !2482)
!2507 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2482)
!2508 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2482)
!2509 = !DILocation(line: 534, column: 25, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2440, file: !2, line: 534, column: 25)
!2511 = !DILocation(line: 534, column: 25, scope: !2440)
!2512 = !DILocation(line: 536, column: 25, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2510, file: !2, line: 535, column: 21)
!2514 = !DILocation(line: 537, column: 41, scope: !2513)
!2515 = !DILocation(line: 537, column: 84, scope: !2513)
!2516 = !DILocation(line: 537, column: 82, scope: !2513)
!2517 = !DILocation(line: 0, scope: !2448, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 537, column: 25, scope: !2513)
!2519 = !DILocation(line: 231, column: 25, scope: !2448, inlinedAt: !2518)
!2520 = !DILocation(line: 231, column: 21, scope: !2448, inlinedAt: !2518)
!2521 = !DILocation(line: 232, column: 13, scope: !2458, inlinedAt: !2518)
!2522 = !DILocation(line: 232, column: 9, scope: !2448, inlinedAt: !2518)
!2523 = !DILocation(line: 237, column: 13, scope: !2448, inlinedAt: !2518)
!2524 = !DILocation(line: 237, column: 10, scope: !2448, inlinedAt: !2518)
!2525 = !DILocation(line: 0, scope: !1487, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 238, column: 5, scope: !2448, inlinedAt: !2518)
!2527 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !2526)
!2528 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2526)
!2529 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2526)
!2530 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2526)
!2531 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2526)
!2532 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2526)
!2533 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2526)
!2534 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2526)
!2535 = !DILocation(line: 0, scope: !1508, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2526)
!2537 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2536)
!2538 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2526)
!2539 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !2526)
!2540 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2526)
!2541 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2526)
!2542 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2526)
!2543 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2526)
!2544 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 238, column: 5, scope: !2448, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 538, column: 25, scope: !2513)
!2547 = !DILocation(line: 538, column: 41, scope: !2513)
!2548 = !DILocation(line: 538, column: 84, scope: !2513)
!2549 = !DILocation(line: 538, column: 82, scope: !2513)
!2550 = !DILocation(line: 0, scope: !2448, inlinedAt: !2546)
!2551 = !DILocation(line: 231, column: 25, scope: !2448, inlinedAt: !2546)
!2552 = !DILocation(line: 231, column: 21, scope: !2448, inlinedAt: !2546)
!2553 = !DILocation(line: 232, column: 13, scope: !2458, inlinedAt: !2546)
!2554 = !DILocation(line: 232, column: 9, scope: !2448, inlinedAt: !2546)
!2555 = !DILocation(line: 237, column: 13, scope: !2448, inlinedAt: !2546)
!2556 = !DILocation(line: 237, column: 10, scope: !2448, inlinedAt: !2546)
!2557 = !DILocation(line: 0, scope: !1487, inlinedAt: !2545)
!2558 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2545)
!2559 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2545)
!2560 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2545)
!2561 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2545)
!2562 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2545)
!2563 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2545)
!2564 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2545)
!2565 = !DILocation(line: 0, scope: !1508, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2545)
!2567 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2566)
!2568 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2545)
!2569 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !2545)
!2570 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2545)
!2571 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2545)
!2572 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2545)
!2573 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2545)
!2574 = !DILocation(line: 540, column: 25, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2440, file: !2, line: 540, column: 25)
!2576 = !DILocation(line: 540, column: 25, scope: !2440)
!2577 = !DILocation(line: 542, column: 25, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2575, file: !2, line: 541, column: 21)
!2579 = !DILocation(line: 543, column: 41, scope: !2578)
!2580 = !DILocation(line: 543, column: 84, scope: !2578)
!2581 = !DILocation(line: 543, column: 82, scope: !2578)
!2582 = !DILocation(line: 0, scope: !2448, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 543, column: 25, scope: !2578)
!2584 = !DILocation(line: 231, column: 25, scope: !2448, inlinedAt: !2583)
!2585 = !DILocation(line: 231, column: 21, scope: !2448, inlinedAt: !2583)
!2586 = !DILocation(line: 232, column: 13, scope: !2458, inlinedAt: !2583)
!2587 = !DILocation(line: 232, column: 9, scope: !2448, inlinedAt: !2583)
!2588 = !DILocation(line: 237, column: 13, scope: !2448, inlinedAt: !2583)
!2589 = !DILocation(line: 237, column: 10, scope: !2448, inlinedAt: !2583)
!2590 = !DILocation(line: 0, scope: !1487, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 238, column: 5, scope: !2448, inlinedAt: !2583)
!2592 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !2591)
!2593 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2591)
!2594 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2591)
!2595 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2591)
!2596 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2591)
!2597 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2591)
!2598 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2591)
!2599 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2591)
!2600 = !DILocation(line: 0, scope: !1508, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2591)
!2602 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2601)
!2603 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2591)
!2604 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !2591)
!2605 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2591)
!2606 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2591)
!2607 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2591)
!2608 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2591)
!2609 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 238, column: 5, scope: !2448, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 544, column: 25, scope: !2578)
!2612 = !DILocation(line: 544, column: 41, scope: !2578)
!2613 = !DILocation(line: 544, column: 84, scope: !2578)
!2614 = !DILocation(line: 544, column: 82, scope: !2578)
!2615 = !DILocation(line: 0, scope: !2448, inlinedAt: !2611)
!2616 = !DILocation(line: 231, column: 25, scope: !2448, inlinedAt: !2611)
!2617 = !DILocation(line: 231, column: 21, scope: !2448, inlinedAt: !2611)
!2618 = !DILocation(line: 232, column: 13, scope: !2458, inlinedAt: !2611)
!2619 = !DILocation(line: 232, column: 9, scope: !2448, inlinedAt: !2611)
!2620 = !DILocation(line: 237, column: 13, scope: !2448, inlinedAt: !2611)
!2621 = !DILocation(line: 237, column: 10, scope: !2448, inlinedAt: !2611)
!2622 = !DILocation(line: 0, scope: !1487, inlinedAt: !2610)
!2623 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2610)
!2624 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2610)
!2625 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2610)
!2626 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2610)
!2627 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2610)
!2628 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2610)
!2629 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2610)
!2630 = !DILocation(line: 0, scope: !1508, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2610)
!2632 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2631)
!2633 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2610)
!2634 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !2610)
!2635 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2610)
!2636 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2610)
!2637 = !DILocation(line: 548, column: 25, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2440, file: !2, line: 548, column: 25)
!2639 = !DILocation(line: 548, column: 25, scope: !2440)
!2640 = !DILocation(line: 550, column: 25, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2638, file: !2, line: 549, column: 21)
!2642 = !DILocation(line: 551, column: 41, scope: !2641)
!2643 = !DILocation(line: 551, column: 84, scope: !2641)
!2644 = !DILocation(line: 551, column: 82, scope: !2641)
!2645 = !DILocation(line: 0, scope: !2448, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 551, column: 25, scope: !2641)
!2647 = !DILocation(line: 231, column: 25, scope: !2448, inlinedAt: !2646)
!2648 = !DILocation(line: 231, column: 21, scope: !2448, inlinedAt: !2646)
!2649 = !DILocation(line: 232, column: 13, scope: !2458, inlinedAt: !2646)
!2650 = !DILocation(line: 232, column: 9, scope: !2448, inlinedAt: !2646)
!2651 = !DILocation(line: 237, column: 13, scope: !2448, inlinedAt: !2646)
!2652 = !DILocation(line: 237, column: 10, scope: !2448, inlinedAt: !2646)
!2653 = !DILocation(line: 0, scope: !1487, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 238, column: 5, scope: !2448, inlinedAt: !2646)
!2655 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !2654)
!2656 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2654)
!2657 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2654)
!2658 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2654)
!2659 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2654)
!2660 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2654)
!2661 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2654)
!2662 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2654)
!2663 = !DILocation(line: 0, scope: !1508, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2654)
!2665 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2664)
!2666 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2654)
!2667 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !2654)
!2668 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2654)
!2669 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2654)
!2670 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2654)
!2671 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2654)
!2672 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 238, column: 5, scope: !2448, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 552, column: 25, scope: !2641)
!2675 = !DILocation(line: 552, column: 41, scope: !2641)
!2676 = !DILocation(line: 552, column: 84, scope: !2641)
!2677 = !DILocation(line: 552, column: 82, scope: !2641)
!2678 = !DILocation(line: 0, scope: !2448, inlinedAt: !2674)
!2679 = !DILocation(line: 231, column: 25, scope: !2448, inlinedAt: !2674)
!2680 = !DILocation(line: 231, column: 21, scope: !2448, inlinedAt: !2674)
!2681 = !DILocation(line: 232, column: 13, scope: !2458, inlinedAt: !2674)
!2682 = !DILocation(line: 232, column: 9, scope: !2448, inlinedAt: !2674)
!2683 = !DILocation(line: 237, column: 13, scope: !2448, inlinedAt: !2674)
!2684 = !DILocation(line: 237, column: 10, scope: !2448, inlinedAt: !2674)
!2685 = !DILocation(line: 0, scope: !1487, inlinedAt: !2673)
!2686 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2673)
!2687 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2673)
!2688 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2673)
!2689 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2673)
!2690 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2673)
!2691 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2673)
!2692 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2673)
!2693 = !DILocation(line: 0, scope: !1508, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2673)
!2695 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2694)
!2696 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2673)
!2697 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !2673)
!2698 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2673)
!2699 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2673)
!2700 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2673)
!2701 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2673)
!2702 = !DILocation(line: 554, column: 25, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2440, file: !2, line: 554, column: 25)
!2704 = !DILocation(line: 554, column: 25, scope: !2440)
!2705 = !DILocation(line: 556, column: 25, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2703, file: !2, line: 555, column: 21)
!2707 = !DILocation(line: 557, column: 41, scope: !2706)
!2708 = !DILocation(line: 557, column: 84, scope: !2706)
!2709 = !DILocation(line: 557, column: 82, scope: !2706)
!2710 = !DILocation(line: 0, scope: !2448, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 557, column: 25, scope: !2706)
!2712 = !DILocation(line: 231, column: 25, scope: !2448, inlinedAt: !2711)
!2713 = !DILocation(line: 231, column: 21, scope: !2448, inlinedAt: !2711)
!2714 = !DILocation(line: 232, column: 13, scope: !2458, inlinedAt: !2711)
!2715 = !DILocation(line: 232, column: 9, scope: !2448, inlinedAt: !2711)
!2716 = !DILocation(line: 237, column: 13, scope: !2448, inlinedAt: !2711)
!2717 = !DILocation(line: 237, column: 10, scope: !2448, inlinedAt: !2711)
!2718 = !DILocation(line: 0, scope: !1487, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 238, column: 5, scope: !2448, inlinedAt: !2711)
!2720 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !2719)
!2721 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2719)
!2722 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2719)
!2723 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2719)
!2724 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2719)
!2725 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2719)
!2726 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2719)
!2727 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2719)
!2728 = !DILocation(line: 0, scope: !1508, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2719)
!2730 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2729)
!2731 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2719)
!2732 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !2719)
!2733 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2719)
!2734 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2719)
!2735 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2719)
!2736 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2719)
!2737 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 238, column: 5, scope: !2448, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 558, column: 25, scope: !2706)
!2740 = !DILocation(line: 558, column: 41, scope: !2706)
!2741 = !DILocation(line: 558, column: 84, scope: !2706)
!2742 = !DILocation(line: 558, column: 82, scope: !2706)
!2743 = !DILocation(line: 0, scope: !2448, inlinedAt: !2739)
!2744 = !DILocation(line: 231, column: 25, scope: !2448, inlinedAt: !2739)
!2745 = !DILocation(line: 231, column: 21, scope: !2448, inlinedAt: !2739)
!2746 = !DILocation(line: 232, column: 13, scope: !2458, inlinedAt: !2739)
!2747 = !DILocation(line: 232, column: 9, scope: !2448, inlinedAt: !2739)
!2748 = !DILocation(line: 237, column: 13, scope: !2448, inlinedAt: !2739)
!2749 = !DILocation(line: 237, column: 10, scope: !2448, inlinedAt: !2739)
!2750 = !DILocation(line: 0, scope: !1487, inlinedAt: !2738)
!2751 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2738)
!2752 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2738)
!2753 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2738)
!2754 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2738)
!2755 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2738)
!2756 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2738)
!2757 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2738)
!2758 = !DILocation(line: 0, scope: !1508, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2738)
!2760 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2759)
!2761 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2738)
!2762 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !2738)
!2763 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2738)
!2764 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2738)
!2765 = !DILocation(line: 0, scope: !2440)
!2766 = !DILocation(line: 521, column: 33, scope: !2436)
!2767 = distinct !{!2767, !2176, !2768, !1722}
!2768 = !DILocation(line: 562, column: 9, scope: !2177)
!2769 = !DILocation(line: 563, column: 5, scope: !1360)
!2770 = !DILocation(line: 563, column: 5, scope: !1359)
!2771 = !DILocation(line: 0, scope: !1476, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 565, column: 9, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 564, column: 14)
!2774 = !DILocation(line: 0, scope: !1487, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !2772)
!2776 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !2775)
!2777 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2775)
!2778 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2775)
!2779 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2775)
!2780 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2775)
!2781 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2775)
!2782 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2775)
!2783 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2775)
!2784 = !DILocation(line: 0, scope: !1508, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2775)
!2786 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2785)
!2787 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2775)
!2788 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2775)
!2789 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2775)
!2790 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2775)
!2791 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2775)
!2792 = !DILocation(line: 0, scope: !1401, inlinedAt: !1970)
!2793 = !DILocation(line: 66, column: 28, scope: !1401, inlinedAt: !1970)
!2794 = !DILocation(line: 66, column: 23, scope: !1401, inlinedAt: !1970)
!2795 = !DILocation(line: 66, column: 58, scope: !1401, inlinedAt: !1970)
!2796 = !DILocation(line: 66, column: 11, scope: !1401, inlinedAt: !1970)
!2797 = !DILocation(line: 574, column: 8, scope: !1332)
!2798 = !DILocation(line: 574, column: 29, scope: !1332)
!2799 = !DILocation(line: 574, column: 45, scope: !1332)
!2800 = !DILocation(line: 578, column: 28, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 578, column: 9)
!2802 = !DILocation(line: 579, column: 56, scope: !2801)
!2803 = !DILocation(line: 579, column: 69, scope: !2801)
!2804 = !DILocation(line: 579, column: 82, scope: !2801)
!2805 = !DILocation(line: 579, column: 75, scope: !2801)
!2806 = !DILocation(line: 579, column: 25, scope: !2801)
!2807 = !DILocation(line: 0, scope: !1476, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 579, column: 9, scope: !2801)
!2809 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !2808)
!2810 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !2808)
!2811 = !DILocation(line: 0, scope: !1487, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !2808)
!2813 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !2812)
!2814 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2812)
!2815 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2812)
!2816 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2812)
!2817 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2812)
!2818 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2812)
!2819 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2812)
!2820 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2812)
!2821 = !DILocation(line: 0, scope: !1508, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2812)
!2823 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2822)
!2824 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2812)
!2825 = !DILocation(line: 580, column: 24, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2801, file: !2, line: 580, column: 14)
!2827 = !DILocation(line: 580, column: 14, scope: !2801)
!2828 = !DILocation(line: 581, column: 53, scope: !2826)
!2829 = !DILocation(line: 581, column: 66, scope: !2826)
!2830 = !DILocation(line: 581, column: 79, scope: !2826)
!2831 = !DILocation(line: 581, column: 72, scope: !2826)
!2832 = !DILocation(line: 581, column: 25, scope: !2826)
!2833 = !DILocation(line: 0, scope: !1476, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 581, column: 9, scope: !2826)
!2835 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !2834)
!2836 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !2834)
!2837 = !DILocation(line: 0, scope: !1487, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !2834)
!2839 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !2838)
!2840 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2838)
!2841 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2838)
!2842 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2838)
!2843 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2838)
!2844 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2838)
!2845 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2838)
!2846 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2838)
!2847 = !DILocation(line: 0, scope: !1508, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2838)
!2849 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2848)
!2850 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2838)
!2851 = !DILocation(line: 0, scope: !2801)
!2852 = !DILocation(line: 478, column: 13, scope: !2853, inlinedAt: !2854)
!2853 = distinct !DILexicalBlock(scope: !205, file: !21, line: 478, column: 9)
!2854 = distinct !DILocation(line: 584, column: 9, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 584, column: 9)
!2856 = !DILocation(line: 0, scope: !205, inlinedAt: !2854)
!2857 = !DILocation(line: 478, column: 18, scope: !2853, inlinedAt: !2854)
!2858 = !DILocation(line: 478, column: 10, scope: !2853, inlinedAt: !2854)
!2859 = !DILocation(line: 478, column: 9, scope: !205, inlinedAt: !2854)
!2860 = !DILocation(line: 480, column: 29, scope: !205, inlinedAt: !2854)
!2861 = !DILocation(line: 480, column: 9, scope: !205, inlinedAt: !2854)
!2862 = !DILocation(line: 481, column: 11, scope: !2863, inlinedAt: !2854)
!2863 = distinct !DILexicalBlock(scope: !205, file: !21, line: 481, column: 9)
!2864 = !DILocation(line: 481, column: 9, scope: !205, inlinedAt: !2854)
!2865 = !DILocation(line: 482, column: 9, scope: !2863, inlinedAt: !2854)
!2866 = !DILocation(line: 483, column: 14, scope: !2863, inlinedAt: !2854)
!2867 = !DILocation(line: 484, column: 19, scope: !2868, inlinedAt: !2854)
!2868 = distinct !DILexicalBlock(scope: !2863, file: !21, line: 483, column: 14)
!2869 = !{!1371, !1377, i64 3200}
!2870 = !DILocation(line: 484, column: 24, scope: !2868, inlinedAt: !2854)
!2871 = !{!2872, !1373, i64 1100}
!2872 = !{!"", !1373, i64 0, !1373, i64 4, !1373, i64 8, !1373, i64 12, !1373, i64 16, !1373, i64 20, !1373, i64 24, !1373, i64 28, !1373, i64 32, !1373, i64 36, !1373, i64 40, !1373, i64 44, !1373, i64 48, !1374, i64 52, !1373, i64 1076, !1373, i64 1080, !1373, i64 1084, !1373, i64 1088, !1373, i64 1092, !1373, i64 1096, !1373, i64 1100, !1373, i64 1104, !2873, i64 1108, !1373, i64 1124, !2874, i64 1128, !1373, i64 1236}
!2873 = !{!"", !1373, i64 0, !1373, i64 4, !1373, i64 8, !1373, i64 12}
!2874 = !{!"", !1373, i64 0, !1373, i64 4, !1373, i64 8, !1373, i64 12, !1373, i64 16, !1373, i64 20, !1373, i64 24, !1373, i64 28, !1373, i64 32, !1373, i64 36, !1373, i64 40, !1373, i64 44, !1373, i64 48, !1373, i64 52, !1373, i64 56, !1373, i64 60, !1373, i64 64, !1373, i64 68, !1373, i64 72, !1373, i64 76, !1373, i64 80, !1373, i64 84, !1373, i64 88, !1373, i64 92, !1373, i64 96, !1373, i64 100, !1373, i64 104}
!2875 = !DILocation(line: 484, column: 9, scope: !2868, inlinedAt: !2854)
!2876 = !DILocation(line: 487, column: 32, scope: !2877, inlinedAt: !2854)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !21, line: 487, column: 13)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !21, line: 486, column: 5)
!2879 = distinct !DILexicalBlock(scope: !2868, file: !21, line: 485, column: 14)
!2880 = !DILocation(line: 487, column: 38, scope: !2877, inlinedAt: !2854)
!2881 = !DILocation(line: 487, column: 13, scope: !2878, inlinedAt: !2854)
!2882 = !DILocation(line: 490, column: 17, scope: !2883, inlinedAt: !2854)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !21, line: 490, column: 17)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !21, line: 489, column: 9)
!2885 = distinct !DILexicalBlock(scope: !2878, file: !21, line: 489, column: 9)
!2886 = !DILocation(line: 490, column: 42, scope: !2883, inlinedAt: !2854)
!2887 = !DILocation(line: 490, column: 17, scope: !2884, inlinedAt: !2854)
!2888 = !DILocation(line: 497, column: 16, scope: !2889, inlinedAt: !2854)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !21, line: 497, column: 13)
!2890 = distinct !DILexicalBlock(scope: !2879, file: !21, line: 495, column: 5)
!2891 = !DILocation(line: 497, column: 21, scope: !2889, inlinedAt: !2854)
!2892 = !DILocation(line: 497, column: 13, scope: !2889, inlinedAt: !2854)
!2893 = !DILocation(line: 497, column: 13, scope: !2890, inlinedAt: !2854)
!2894 = !DILocation(line: 500, column: 17, scope: !2895, inlinedAt: !2854)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !21, line: 500, column: 17)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !21, line: 499, column: 9)
!2897 = distinct !DILexicalBlock(scope: !2890, file: !21, line: 499, column: 9)
!2898 = !DILocation(line: 500, column: 42, scope: !2895, inlinedAt: !2854)
!2899 = !DILocation(line: 500, column: 17, scope: !2896, inlinedAt: !2854)
!2900 = !DILocation(line: 584, column: 9, scope: !2855)
!2901 = !DILocation(line: 584, column: 44, scope: !2855)
!2902 = !DILocation(line: 584, column: 53, scope: !2855)
!2903 = !DILocation(line: 584, column: 47, scope: !2855)
!2904 = !DILocation(line: 584, column: 9, scope: !1332)
!2905 = !DILocation(line: 585, column: 29, scope: !2855)
!2906 = !DILocation(line: 0, scope: !1439, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 585, column: 9, scope: !2855)
!2908 = !DILocation(line: 141, column: 8, scope: !1439, inlinedAt: !2907)
!2909 = !DILocation(line: 141, column: 17, scope: !1439, inlinedAt: !2907)
!2910 = !DILocation(line: 142, column: 20, scope: !1439, inlinedAt: !2907)
!2911 = !DILocation(line: 142, column: 17, scope: !1439, inlinedAt: !2907)
!2912 = !DILocation(line: 143, column: 14, scope: !1439, inlinedAt: !2907)
!2913 = !DILocation(line: 144, column: 19, scope: !1453, inlinedAt: !2907)
!2914 = !DILocation(line: 144, column: 9, scope: !1439, inlinedAt: !2907)
!2915 = !DILocation(line: 154, column: 42, scope: !1456, inlinedAt: !2907)
!2916 = !DILocation(line: 0, scope: !1458, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 154, column: 28, scope: !1456, inlinedAt: !2907)
!2918 = !DILocation(line: 150, column: 5, scope: !1458, inlinedAt: !2917)
!2919 = !DILocation(line: 154, column: 26, scope: !1456, inlinedAt: !2907)
!2920 = !DILocation(line: 156, column: 14, scope: !1456, inlinedAt: !2907)
!2921 = !DILocation(line: 157, column: 19, scope: !1456, inlinedAt: !2907)
!2922 = !DILocation(line: 158, column: 5, scope: !1456, inlinedAt: !2907)
!2923 = !DILocation(line: 588, column: 19, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 588, column: 9)
!2925 = !DILocation(line: 588, column: 9, scope: !1332)
!2926 = !DILocalVariable(name: "h", arg: 1, scope: !2927, file: !2, line: 197, type: !208)
!2927 = distinct !DISubprogram(name: "cavlc_qp_delta", scope: !2, file: !2, line: 197, type: !1333, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2928)
!2928 = !{!2926, !2929, !2930}
!2929 = !DILocalVariable(name: "s", arg: 2, scope: !2927, file: !2, line: 197, type: !1281)
!2930 = !DILocalVariable(name: "i_dqp", scope: !2927, file: !2, line: 199, type: !126)
!2931 = !DILocation(line: 0, scope: !2927, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 590, column: 9, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2924, file: !2, line: 589, column: 5)
!2934 = !DILocation(line: 199, column: 23, scope: !2927, inlinedAt: !2932)
!2935 = !{!1371, !1373, i64 20512}
!2936 = !DILocation(line: 199, column: 36, scope: !2927, inlinedAt: !2932)
!2937 = !{!1371, !1373, i64 20520}
!2938 = !DILocation(line: 199, column: 28, scope: !2927, inlinedAt: !2932)
!2939 = !DILocation(line: 202, column: 15, scope: !2940, inlinedAt: !2932)
!2940 = distinct !DILexicalBlock(scope: !2927, file: !2, line: 202, column: 9)
!2941 = !DILocation(line: 202, column: 22, scope: !2940, inlinedAt: !2932)
!2942 = !DILocation(line: 202, column: 33, scope: !2940, inlinedAt: !2932)
!2943 = !DILocation(line: 202, column: 44, scope: !2940, inlinedAt: !2932)
!2944 = !DILocation(line: 202, column: 63, scope: !2940, inlinedAt: !2932)
!2945 = !DILocation(line: 202, column: 55, scope: !2940, inlinedAt: !2932)
!2946 = !DILocation(line: 203, column: 9, scope: !2940, inlinedAt: !2932)
!2947 = !DILocation(line: 203, column: 13, scope: !2940, inlinedAt: !2932)
!2948 = !DILocation(line: 202, column: 9, scope: !2927, inlinedAt: !2932)
!2949 = !DILocation(line: 206, column: 20, scope: !2950, inlinedAt: !2932)
!2950 = distinct !DILexicalBlock(scope: !2940, file: !2, line: 204, column: 5)
!2951 = !DILocation(line: 211, column: 9, scope: !2927, inlinedAt: !2932)
!2952 = !DILocation(line: 211, column: 9, scope: !2953, inlinedAt: !2932)
!2953 = distinct !DILexicalBlock(scope: !2927, file: !2, line: 211, column: 9)
!2954 = !DILocation(line: 213, column: 19, scope: !2955, inlinedAt: !2932)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !2, line: 213, column: 13)
!2956 = distinct !DILexicalBlock(scope: !2953, file: !2, line: 212, column: 5)
!2957 = !DILocation(line: 213, column: 13, scope: !2956, inlinedAt: !2932)
!2958 = !DILocation(line: 231, column: 25, scope: !2448, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 218, column: 5, scope: !2927, inlinedAt: !2932)
!2960 = !DILocation(line: 0, scope: !2448, inlinedAt: !2959)
!2961 = !DILocation(line: 231, column: 21, scope: !2448, inlinedAt: !2959)
!2962 = !DILocation(line: 232, column: 13, scope: !2458, inlinedAt: !2959)
!2963 = !DILocation(line: 232, column: 9, scope: !2448, inlinedAt: !2959)
!2964 = !DILocation(line: 237, column: 13, scope: !2448, inlinedAt: !2959)
!2965 = !DILocation(line: 237, column: 10, scope: !2448, inlinedAt: !2959)
!2966 = !DILocation(line: 0, scope: !1487, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 238, column: 5, scope: !2448, inlinedAt: !2959)
!2968 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !2967)
!2969 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !2967)
!2970 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !2967)
!2971 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !2967)
!2972 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !2967)
!2973 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !2967)
!2974 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !2967)
!2975 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !2967)
!2976 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !2967)
!2977 = !DILocation(line: 0, scope: !1508, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2967)
!2979 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !2978)
!2980 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !2967)
!2981 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !2967)
!2982 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !2967)
!2983 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !2967)
!2984 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !2967)
!2985 = !DILocation(line: 593, column: 64, scope: !2933)
!2986 = !DILocation(line: 593, column: 9, scope: !2933)
!2987 = !DILocation(line: 596, column: 19, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2933, file: !2, line: 596, column: 13)
!2989 = !DILocation(line: 596, column: 13, scope: !2988)
!2990 = !DILocation(line: 596, column: 13, scope: !2933)
!2991 = !DILocation(line: 599, column: 83, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !2, line: 598, column: 13)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !2, line: 597, column: 13)
!2994 = distinct !DILexicalBlock(scope: !2988, file: !2, line: 597, column: 13)
!2995 = !DILocation(line: 0, scope: !123, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 599, column: 61, scope: !2992)
!2997 = !DILocation(line: 81, column: 5, scope: !123, inlinedAt: !2996)
!2998 = !{i64 698068, i64 698105, i64 698141, i64 698177, i64 698213, i64 698249, i64 698285, i64 698321, i64 698357, i64 698393}
!2999 = !DILocation(line: 599, column: 61, scope: !2992)
!3000 = !DILocation(line: 599, column: 17, scope: !2992)
!3001 = !DILocation(line: 599, column: 59, scope: !2992)
!3002 = !DILocation(line: 600, column: 84, scope: !2992)
!3003 = !DILocation(line: 600, column: 17, scope: !2992)
!3004 = !DILocation(line: 608, column: 15, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 608, column: 9)
!3006 = !DILocation(line: 603, column: 20, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2924, file: !2, line: 603, column: 14)
!3008 = !DILocation(line: 603, column: 39, scope: !3007)
!3009 = !DILocation(line: 603, column: 31, scope: !3007)
!3010 = !DILocation(line: 603, column: 14, scope: !2924)
!3011 = !DILocation(line: 0, scope: !2927, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 605, column: 9, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3007, file: !2, line: 604, column: 5)
!3014 = !DILocation(line: 199, column: 23, scope: !2927, inlinedAt: !3012)
!3015 = !DILocation(line: 199, column: 36, scope: !2927, inlinedAt: !3012)
!3016 = !DILocation(line: 211, column: 9, scope: !2953, inlinedAt: !3012)
!3017 = !DILocation(line: 211, column: 9, scope: !2927, inlinedAt: !3012)
!3018 = !DILocation(line: 199, column: 28, scope: !2927, inlinedAt: !3012)
!3019 = !DILocation(line: 213, column: 19, scope: !2955, inlinedAt: !3012)
!3020 = !DILocation(line: 213, column: 13, scope: !2956, inlinedAt: !3012)
!3021 = !DILocation(line: 231, column: 25, scope: !2448, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 218, column: 5, scope: !2927, inlinedAt: !3012)
!3023 = !DILocation(line: 0, scope: !2448, inlinedAt: !3022)
!3024 = !DILocation(line: 231, column: 21, scope: !2448, inlinedAt: !3022)
!3025 = !DILocation(line: 232, column: 13, scope: !2458, inlinedAt: !3022)
!3026 = !DILocation(line: 232, column: 9, scope: !2448, inlinedAt: !3022)
!3027 = !DILocation(line: 237, column: 13, scope: !2448, inlinedAt: !3022)
!3028 = !DILocation(line: 237, column: 10, scope: !2448, inlinedAt: !3022)
!3029 = !DILocation(line: 0, scope: !1487, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 238, column: 5, scope: !2448, inlinedAt: !3022)
!3031 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !3030)
!3032 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3030)
!3033 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3030)
!3034 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3030)
!3035 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !3030)
!3036 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3030)
!3037 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3030)
!3038 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3030)
!3039 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3030)
!3040 = !DILocation(line: 0, scope: !1508, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3030)
!3042 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3041)
!3043 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3030)
!3044 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3030)
!3045 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !3030)
!3046 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !3030)
!3047 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3030)
!3048 = !DILocalVariable(name: "h", arg: 1, scope: !3049, file: !2, line: 264, type: !208)
!3049 = distinct !DISubprogram(name: "x264_macroblock_luma_write_cavlc", scope: !2, file: !2, line: 264, type: !3050, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{null, !208, !1281, !126, !126}
!3052 = !{!3048, !3053, !3054, !3055, !3056, !3057}
!3053 = !DILocalVariable(name: "s", arg: 2, scope: !3049, file: !2, line: 264, type: !1281)
!3054 = !DILocalVariable(name: "i8start", arg: 3, scope: !3049, file: !2, line: 264, type: !126)
!3055 = !DILocalVariable(name: "i8end", arg: 4, scope: !3049, file: !2, line: 264, type: !126)
!3056 = !DILocalVariable(name: "i8", scope: !3049, file: !2, line: 266, type: !126)
!3057 = !DILocalVariable(name: "i4", scope: !3049, file: !2, line: 266, type: !126)
!3058 = !DILocation(line: 0, scope: !3049, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 606, column: 9, scope: !3013)
!3060 = !DILocation(line: 267, column: 15, scope: !3061, inlinedAt: !3059)
!3061 = distinct !DILexicalBlock(scope: !3049, file: !2, line: 267, column: 9)
!3062 = !DILocation(line: 267, column: 9, scope: !3061, inlinedAt: !3059)
!3063 = !DILocation(line: 267, column: 9, scope: !3049, inlinedAt: !3059)
!3064 = !DILocation(line: 271, column: 23, scope: !3065, inlinedAt: !3059)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !2, line: 271, column: 17)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !2, line: 270, column: 9)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !2, line: 270, column: 9)
!3068 = distinct !DILexicalBlock(scope: !3061, file: !2, line: 268, column: 5)
!3069 = !DILocation(line: 271, column: 34, scope: !3065, inlinedAt: !3059)
!3070 = !DILocation(line: 271, column: 17, scope: !3066, inlinedAt: !3059)
!3071 = !DILocation(line: 272, column: 28, scope: !3065, inlinedAt: !3059)
!3072 = !{!1371, !1377, i64 25552}
!3073 = !DILocation(line: 272, column: 50, scope: !3065, inlinedAt: !3059)
!3074 = !DILocation(line: 272, column: 72, scope: !3065, inlinedAt: !3059)
!3075 = !DILocation(line: 272, column: 17, scope: !3065, inlinedAt: !3059)
!3076 = !DILocation(line: 275, column: 5, scope: !3077, inlinedAt: !3059)
!3077 = distinct !DILexicalBlock(scope: !3049, file: !2, line: 275, column: 5)
!3078 = !DILocation(line: 276, column: 19, scope: !3079, inlinedAt: !3059)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !2, line: 276, column: 13)
!3080 = distinct !DILexicalBlock(scope: !3077, file: !2, line: 275, column: 5)
!3081 = !DILocation(line: 276, column: 35, scope: !3079, inlinedAt: !3059)
!3082 = !DILocation(line: 276, column: 30, scope: !3079, inlinedAt: !3059)
!3083 = !DILocation(line: 276, column: 13, scope: !3080, inlinedAt: !3059)
!3084 = !DILocation(line: 279, column: 89, scope: !3085, inlinedAt: !3059)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !2, line: 278, column: 13)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !2, line: 277, column: 13)
!3087 = distinct !DILexicalBlock(scope: !3079, file: !2, line: 277, column: 13)
!3088 = !DILocation(line: 0, scope: !123, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 279, column: 67, scope: !3085, inlinedAt: !3059)
!3090 = !DILocation(line: 81, column: 5, scope: !123, inlinedAt: !3089)
!3091 = !DILocation(line: 279, column: 67, scope: !3085, inlinedAt: !3059)
!3092 = !DILocation(line: 279, column: 44, scope: !3085, inlinedAt: !3059)
!3093 = !DILocation(line: 279, column: 17, scope: !3085, inlinedAt: !3059)
!3094 = !DILocation(line: 279, column: 65, scope: !3085, inlinedAt: !3059)
!3095 = !DILocation(line: 280, column: 17, scope: !3085, inlinedAt: !3059)
!3096 = !DILocation(line: 279, column: 106, scope: !3085, inlinedAt: !3059)
!3097 = !DILocation(line: 275, column: 39, scope: !3080, inlinedAt: !3059)
!3098 = !DILocation(line: 275, column: 27, scope: !3080, inlinedAt: !3059)
!3099 = distinct !{!3099, !3076, !3100, !1722}
!3100 = !DILocation(line: 281, column: 13, scope: !3077, inlinedAt: !3059)
!3101 = !DILocation(line: 608, column: 9, scope: !3005)
!3102 = !DILocation(line: 608, column: 9, scope: !1332)
!3103 = !DILocation(line: 611, column: 69, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3005, file: !2, line: 609, column: 5)
!3105 = !DILocation(line: 611, column: 9, scope: !3104)
!3106 = !DILocation(line: 612, column: 62, scope: !3104)
!3107 = !DILocation(line: 612, column: 9, scope: !3104)
!3108 = !DILocation(line: 613, column: 19, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3104, file: !2, line: 613, column: 13)
!3110 = !DILocation(line: 613, column: 31, scope: !3109)
!3111 = !DILocation(line: 613, column: 13, scope: !3104)
!3112 = !DILocation(line: 616, column: 83, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !2, line: 615, column: 13)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !2, line: 614, column: 13)
!3115 = distinct !DILexicalBlock(scope: !3109, file: !2, line: 614, column: 13)
!3116 = !DILocation(line: 0, scope: !123, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 616, column: 61, scope: !3113)
!3118 = !DILocation(line: 81, column: 5, scope: !123, inlinedAt: !3117)
!3119 = !DILocation(line: 616, column: 61, scope: !3113)
!3120 = !DILocation(line: 616, column: 17, scope: !3113)
!3121 = !DILocation(line: 616, column: 59, scope: !3113)
!3122 = !DILocation(line: 617, column: 86, scope: !3113)
!3123 = !DILocation(line: 617, column: 17, scope: !3113)
!3124 = !DILocation(line: 66, column: 21, scope: !1401, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 622, column: 33, scope: !1332)
!3126 = !DILocation(line: 0, scope: !1401, inlinedAt: !3125)
!3127 = !DILocation(line: 66, column: 28, scope: !1401, inlinedAt: !3125)
!3128 = !DILocation(line: 66, column: 23, scope: !1401, inlinedAt: !3125)
!3129 = !DILocation(line: 66, column: 58, scope: !1401, inlinedAt: !3125)
!3130 = !DILocation(line: 66, column: 11, scope: !1401, inlinedAt: !3125)
!3131 = !DILocation(line: 622, column: 19, scope: !1332)
!3132 = !DILocation(line: 622, column: 30, scope: !1332)
!3133 = !DILocation(line: 622, column: 43, scope: !1332)
!3134 = !DILocation(line: 624, column: 1, scope: !1332)
!3135 = !DISubprogram(name: "x264_log", scope: !12, file: !12, line: 99, type: !3136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{null, !208, !126, !272, null}
!3138 = !{}
!3139 = !DILocation(line: 0, scope: !1476)
!3140 = !DILocation(line: 225, column: 38, scope: !1476)
!3141 = !DILocation(line: 225, column: 18, scope: !1476)
!3142 = !DILocation(line: 0, scope: !1487, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 225, column: 5, scope: !1476)
!3144 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !3143)
!3145 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3143)
!3146 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3143)
!3147 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3143)
!3148 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !3143)
!3149 = !DILocation(line: 91, column: 12, scope: !1496, inlinedAt: !3143)
!3150 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3143)
!3151 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3143)
!3152 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3143)
!3153 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3143)
!3154 = !DILocation(line: 0, scope: !1508, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3143)
!3156 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3155)
!3157 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3143)
!3158 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3143)
!3159 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3143)
!3160 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !3143)
!3161 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !3143)
!3162 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3143)
!3163 = !DILocation(line: 226, column: 1, scope: !1476)
!3164 = !DILocation(line: 0, scope: !1487)
!3165 = !DILocation(line: 90, column: 27, scope: !1496)
!3166 = !DILocation(line: 90, column: 36, scope: !1496)
!3167 = !DILocation(line: 90, column: 50, scope: !1496)
!3168 = !DILocation(line: 90, column: 48, scope: !1496)
!3169 = !DILocation(line: 90, column: 21, scope: !1496)
!3170 = !DILocation(line: 91, column: 12, scope: !1496)
!3171 = !DILocation(line: 91, column: 19, scope: !1496)
!3172 = !DILocation(line: 92, column: 23, scope: !1503)
!3173 = !DILocation(line: 92, column: 13, scope: !1496)
!3174 = !DILocation(line: 97, column: 56, scope: !1506)
!3175 = !DILocation(line: 0, scope: !1508, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 97, column: 32, scope: !1506)
!3177 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3176)
!3178 = !DILocation(line: 97, column: 32, scope: !1506)
!3179 = !DILocation(line: 97, column: 28, scope: !1506)
!3180 = !DILocation(line: 97, column: 30, scope: !1506)
!3181 = !DILocation(line: 99, column: 23, scope: !1506)
!3182 = !DILocation(line: 100, column: 18, scope: !1506)
!3183 = !DILocation(line: 101, column: 9, scope: !1506)
!3184 = !DILocation(line: 129, column: 1, scope: !1487)
!3185 = !DILocation(line: 0, scope: !2025)
!3186 = !DILocation(line: 243, column: 11, scope: !2034)
!3187 = !DILocation(line: 243, column: 9, scope: !2025)
!3188 = !DILocation(line: 244, column: 24, scope: !2034)
!3189 = !DILocation(line: 0, scope: !1439, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 244, column: 9, scope: !2034)
!3191 = !DILocation(line: 141, column: 8, scope: !1439, inlinedAt: !3190)
!3192 = !DILocation(line: 141, column: 17, scope: !1439, inlinedAt: !3190)
!3193 = !DILocation(line: 142, column: 20, scope: !1439, inlinedAt: !3190)
!3194 = !DILocation(line: 142, column: 17, scope: !1439, inlinedAt: !3190)
!3195 = !DILocation(line: 143, column: 8, scope: !1439, inlinedAt: !3190)
!3196 = !DILocation(line: 143, column: 14, scope: !1439, inlinedAt: !3190)
!3197 = !DILocation(line: 144, column: 19, scope: !1453, inlinedAt: !3190)
!3198 = !DILocation(line: 144, column: 9, scope: !1439, inlinedAt: !3190)
!3199 = !DILocation(line: 154, column: 42, scope: !1456, inlinedAt: !3190)
!3200 = !DILocation(line: 0, scope: !1458, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 154, column: 28, scope: !1456, inlinedAt: !3190)
!3202 = !DILocation(line: 150, column: 5, scope: !1458, inlinedAt: !3201)
!3203 = !DILocation(line: 154, column: 24, scope: !1456, inlinedAt: !3190)
!3204 = !DILocation(line: 154, column: 26, scope: !1456, inlinedAt: !3190)
!3205 = !DILocation(line: 156, column: 14, scope: !1456, inlinedAt: !3190)
!3206 = !DILocation(line: 157, column: 19, scope: !1456, inlinedAt: !3190)
!3207 = !DILocation(line: 158, column: 5, scope: !1456, inlinedAt: !3190)
!3208 = !DILocation(line: 245, column: 16, scope: !2054)
!3209 = !DILocation(line: 245, column: 14, scope: !2034)
!3210 = !DILocation(line: 0, scope: !1476, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 246, column: 9, scope: !2054)
!3212 = !DILocation(line: 225, column: 38, scope: !1476, inlinedAt: !3211)
!3213 = !DILocation(line: 225, column: 18, scope: !1476, inlinedAt: !3211)
!3214 = !DILocation(line: 0, scope: !1487, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 225, column: 5, scope: !1476, inlinedAt: !3211)
!3216 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !3215)
!3217 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3215)
!3218 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3215)
!3219 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3215)
!3220 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !3215)
!3221 = !DILocation(line: 91, column: 12, scope: !1496, inlinedAt: !3215)
!3222 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3215)
!3223 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3215)
!3224 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3215)
!3225 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3215)
!3226 = !DILocation(line: 0, scope: !1508, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3215)
!3228 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3227)
!3229 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3215)
!3230 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3215)
!3231 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3215)
!3232 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !3215)
!3233 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !3215)
!3234 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3215)
!3235 = !DILocation(line: 247, column: 1, scope: !2025)
!3236 = !DISubprogram(name: "x264_mb_predict_mv", scope: !21, file: !21, line: 299, type: !3237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3138)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{null, !208, !126, !126, !126, !127}
!3239 = !DILocation(line: 0, scope: !2448)
!3240 = !DILocation(line: 231, column: 25, scope: !2448)
!3241 = !DILocation(line: 231, column: 21, scope: !2448)
!3242 = !DILocation(line: 232, column: 13, scope: !2458)
!3243 = !DILocation(line: 232, column: 9, scope: !2448)
!3244 = !DILocation(line: 237, column: 13, scope: !2448)
!3245 = !DILocation(line: 237, column: 10, scope: !2448)
!3246 = !DILocation(line: 0, scope: !1487, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 238, column: 5, scope: !2448)
!3248 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !3247)
!3249 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3247)
!3250 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3247)
!3251 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3247)
!3252 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !3247)
!3253 = !DILocation(line: 91, column: 12, scope: !1496, inlinedAt: !3247)
!3254 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3247)
!3255 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3247)
!3256 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3247)
!3257 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3247)
!3258 = !DILocation(line: 0, scope: !1508, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3247)
!3260 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3259)
!3261 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3247)
!3262 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3247)
!3263 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3247)
!3264 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !3247)
!3265 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !3247)
!3266 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3247)
!3267 = !DILocation(line: 239, column: 1, scope: !2448)
!3268 = distinct !DISubprogram(name: "cavlc_mb8x8_mvd", scope: !2, file: !2, line: 229, type: !3050, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3269)
!3269 = !{!3270, !3271, !3272, !3273}
!3270 = !DILocalVariable(name: "h", arg: 1, scope: !3268, file: !2, line: 229, type: !208)
!3271 = !DILocalVariable(name: "s", arg: 2, scope: !3268, file: !2, line: 229, type: !1281)
!3272 = !DILocalVariable(name: "i_list", arg: 3, scope: !3268, file: !2, line: 229, type: !126)
!3273 = !DILocalVariable(name: "i", arg: 4, scope: !3268, file: !2, line: 229, type: !126)
!3274 = !DILocation(line: 0, scope: !3268)
!3275 = !DILocation(line: 231, column: 49, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3268, file: !2, line: 231, column: 9)
!3277 = !DILocation(line: 231, column: 10, scope: !3276)
!3278 = !DILocation(line: 231, column: 9, scope: !3268)
!3279 = !DILocation(line: 234, column: 5, scope: !3268)
!3280 = !DILocation(line: 239, column: 42, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3268, file: !2, line: 235, column: 5)
!3282 = !DILocation(line: 239, column: 13, scope: !3281)
!3283 = !DILocation(line: 240, column: 13, scope: !3281)
!3284 = !DILocation(line: 244, column: 42, scope: !3281)
!3285 = !DILocation(line: 244, column: 13, scope: !3281)
!3286 = !DILocation(line: 245, column: 44, scope: !3281)
!3287 = !DILocation(line: 245, column: 13, scope: !3281)
!3288 = !DILocation(line: 246, column: 13, scope: !3281)
!3289 = !DILocation(line: 250, column: 42, scope: !3281)
!3290 = !DILocation(line: 250, column: 13, scope: !3281)
!3291 = !DILocation(line: 251, column: 44, scope: !3281)
!3292 = !DILocation(line: 251, column: 13, scope: !3281)
!3293 = !DILocation(line: 252, column: 13, scope: !3281)
!3294 = !DILocation(line: 256, column: 42, scope: !3281)
!3295 = !DILocation(line: 256, column: 13, scope: !3281)
!3296 = !DILocation(line: 257, column: 44, scope: !3281)
!3297 = !DILocation(line: 257, column: 13, scope: !3281)
!3298 = !DILocation(line: 258, column: 44, scope: !3281)
!3299 = !DILocation(line: 258, column: 13, scope: !3281)
!3300 = !DILocation(line: 259, column: 44, scope: !3281)
!3301 = !DILocation(line: 259, column: 13, scope: !3281)
!3302 = !DILocation(line: 260, column: 13, scope: !3281)
!3303 = !DILocation(line: 262, column: 1, scope: !3268)
!3304 = !DILocation(line: 0, scope: !1278)
!3305 = !DILocation(line: 70, column: 5, scope: !1278)
!3306 = !DILocation(line: 70, column: 9, scope: !1278)
!3307 = !DILocation(line: 70, column: 20, scope: !1278)
!3308 = !DILocation(line: 79, column: 20, scope: !1278)
!3309 = !DILocation(line: 79, column: 14, scope: !1278)
!3310 = !DILocation(line: 79, column: 81, scope: !1278)
!3311 = !DILocation(line: 79, column: 75, scope: !1278)
!3312 = !DILocalVariable(name: "h", arg: 1, scope: !3313, file: !21, line: 451, type: !208)
!3313 = distinct !DISubprogram(name: "x264_mb_predict_non_zero_code", scope: !21, file: !21, line: 451, type: !1660, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3314)
!3314 = !{!3312, !3315, !3316, !3317, !3318}
!3315 = !DILocalVariable(name: "idx", arg: 2, scope: !3313, file: !21, line: 451, type: !126)
!3316 = !DILocalVariable(name: "za", scope: !3313, file: !21, line: 453, type: !159)
!3317 = !DILocalVariable(name: "zb", scope: !3313, file: !21, line: 454, type: !159)
!3318 = !DILocalVariable(name: "i_ret", scope: !3313, file: !21, line: 456, type: !126)
!3319 = !DILocation(line: 0, scope: !3313, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 79, column: 41, scope: !1278)
!3321 = !DILocation(line: 453, column: 47, scope: !3313, inlinedAt: !3320)
!3322 = !DILocation(line: 453, column: 63, scope: !3313, inlinedAt: !3320)
!3323 = !DILocation(line: 453, column: 20, scope: !3313, inlinedAt: !3320)
!3324 = !DILocation(line: 454, column: 63, scope: !3313, inlinedAt: !3320)
!3325 = !DILocation(line: 454, column: 20, scope: !3313, inlinedAt: !3320)
!3326 = !DILocation(line: 456, column: 20, scope: !3313, inlinedAt: !3320)
!3327 = !DILocation(line: 458, column: 15, scope: !3328, inlinedAt: !3320)
!3328 = distinct !DILexicalBlock(scope: !3313, file: !21, line: 458, column: 9)
!3329 = !DILocation(line: 458, column: 9, scope: !3313, inlinedAt: !3320)
!3330 = !DILocation(line: 462, column: 18, scope: !3313, inlinedAt: !3320)
!3331 = !DILocation(line: 79, column: 32, scope: !1278)
!3332 = !DILocation(line: 83, column: 26, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3334, file: !2, line: 82, column: 5)
!3334 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 81, column: 9)
!3335 = !DILocation(line: 81, column: 37, scope: !3334)
!3336 = !DILocation(line: 81, column: 10, scope: !3334)
!3337 = !DILocation(line: 81, column: 9, scope: !1278)
!3338 = !DILocation(line: 83, column: 9, scope: !3333)
!3339 = !DILocalVariable(name: "v", arg: 2, scope: !3340, file: !2, line: 59, type: !3343)
!3340 = distinct !DISubprogram(name: "bs_write_vlc", scope: !2, file: !2, line: 59, type: !3341, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3348)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{null, !1281, !3343}
!3343 = !DIDerivedType(tag: DW_TAG_typedef, name: "vlc_t", file: !148, line: 38, baseType: !3344)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 34, size: 16, elements: !3345)
!3345 = !{!3346, !3347}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits", scope: !3344, file: !148, line: 36, baseType: !151, size: 8)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !3344, file: !148, line: 37, baseType: !151, size: 8, offset: 8)
!3348 = !{!3349, !3339}
!3349 = !DILocalVariable(name: "s", arg: 1, scope: !3340, file: !2, line: 59, type: !1281)
!3350 = !DILocation(line: 0, scope: !3340, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 83, column: 9, scope: !3333)
!3352 = !DILocation(line: 61, column: 28, scope: !3340, inlinedAt: !3351)
!3353 = !DILocation(line: 0, scope: !1487, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 61, column: 5, scope: !3340, inlinedAt: !3351)
!3355 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !3354)
!3356 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3354)
!3357 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3354)
!3358 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3354)
!3359 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !3354)
!3360 = !DILocation(line: 91, column: 12, scope: !1496, inlinedAt: !3354)
!3361 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3354)
!3362 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3354)
!3363 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3354)
!3364 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3354)
!3365 = !DILocation(line: 0, scope: !1508, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3354)
!3367 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3366)
!3368 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3354)
!3369 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3354)
!3370 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3354)
!3371 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !3354)
!3372 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !3354)
!3373 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3354)
!3374 = !DILocation(line: 87, column: 14, scope: !1278)
!3375 = !DILocation(line: 91, column: 27, scope: !1278)
!3376 = !DILocation(line: 94, column: 19, scope: !1278)
!3377 = !DILocation(line: 94, column: 5, scope: !1278)
!3378 = !DILocation(line: 0, scope: !1301)
!3379 = !DILocation(line: 97, column: 22, scope: !1301)
!3380 = !DILocation(line: 97, column: 9, scope: !1301)
!3381 = !DILocation(line: 97, column: 20, scope: !1301)
!3382 = !DILocation(line: 98, column: 25, scope: !1301)
!3383 = !DILocation(line: 98, column: 30, scope: !1301)
!3384 = !DILocation(line: 98, column: 16, scope: !1301)
!3385 = !DILocation(line: 98, column: 33, scope: !1301)
!3386 = !DILocation(line: 98, column: 43, scope: !1301)
!3387 = !DILocation(line: 98, column: 9, scope: !1301)
!3388 = !DILocation(line: 99, column: 14, scope: !1301)
!3389 = distinct !{!3389, !3387, !3388, !1722}
!3390 = !DILocation(line: 100, column: 16, scope: !1301)
!3391 = !DILocation(line: 100, column: 9, scope: !1301)
!3392 = !DILocation(line: 100, column: 20, scope: !1301)
!3393 = distinct !{!3393, !3377, !3394, !1722}
!3394 = !DILocation(line: 101, column: 5, scope: !1278)
!3395 = !DILocation(line: 104, column: 18, scope: !1278)
!3396 = !DILocation(line: 106, column: 18, scope: !1278)
!3397 = !DILocation(line: 107, column: 23, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !2, line: 107, column: 5)
!3399 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 107, column: 5)
!3400 = !DILocation(line: 107, column: 5, scope: !3399)
!3401 = !DILocation(line: 109, column: 24, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !2, line: 109, column: 13)
!3403 = distinct !DILexicalBlock(scope: !3398, file: !2, line: 108, column: 5)
!3404 = !DILocation(line: 109, column: 38, scope: !3402)
!3405 = !DILocation(line: 109, column: 13, scope: !3403)
!3406 = !DILocation(line: 115, column: 16, scope: !3403)
!3407 = distinct !{!3407, !3400, !3408, !1722}
!3408 = !DILocation(line: 116, column: 5, scope: !3399)
!3409 = !DILocation(line: 119, column: 50, scope: !1278)
!3410 = !DILocation(line: 119, column: 52, scope: !1278)
!3411 = !DILocation(line: 119, column: 22, scope: !1278)
!3412 = !DILocation(line: 119, column: 5, scope: !1278)
!3413 = !DILocation(line: 0, scope: !3340, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 119, column: 5, scope: !1278)
!3415 = !DILocation(line: 61, column: 28, scope: !3340, inlinedAt: !3414)
!3416 = !DILocation(line: 0, scope: !1487, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 61, column: 5, scope: !3340, inlinedAt: !3414)
!3418 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !3417)
!3419 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3417)
!3420 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3417)
!3421 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3417)
!3422 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !3417)
!3423 = !DILocation(line: 91, column: 12, scope: !1496, inlinedAt: !3417)
!3424 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3417)
!3425 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3417)
!3426 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3417)
!3427 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3417)
!3428 = !DILocation(line: 0, scope: !1508, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3417)
!3430 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3429)
!3431 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3417)
!3432 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3417)
!3433 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3417)
!3434 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !3417)
!3435 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !3417)
!3436 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3417)
!3437 = !DILocation(line: 121, column: 31, scope: !1278)
!3438 = !DILocation(line: 121, column: 36, scope: !1278)
!3439 = !DILocation(line: 121, column: 23, scope: !1278)
!3440 = !DILocation(line: 122, column: 20, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 122, column: 9)
!3442 = !DILocation(line: 122, column: 9, scope: !1278)
!3443 = !DILocation(line: 0, scope: !1487, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 123, column: 9, scope: !3441)
!3445 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3444)
!3446 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3444)
!3447 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3444)
!3448 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !3444)
!3449 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3444)
!3450 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3444)
!3451 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3444)
!3452 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3444)
!3453 = !DILocation(line: 0, scope: !1508, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3444)
!3455 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3454)
!3456 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3444)
!3457 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3444)
!3458 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3444)
!3459 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !3444)
!3460 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !3444)
!3461 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3444)
!3462 = !DILocation(line: 124, column: 28, scope: !1304)
!3463 = !DILocation(line: 124, column: 5, scope: !1305)
!3464 = !DILocation(line: 126, column: 20, scope: !1303)
!3465 = !DILocation(line: 126, column: 29, scope: !1303)
!3466 = !DILocation(line: 0, scope: !1303)
!3467 = !DILocation(line: 127, column: 34, scope: !1303)
!3468 = !DILocation(line: 127, column: 40, scope: !1303)
!3469 = !DILocation(line: 128, column: 37, scope: !1303)
!3470 = !DILocation(line: 128, column: 39, scope: !1303)
!3471 = !DILocation(line: 130, column: 15, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 130, column: 13)
!3473 = !DILocation(line: 130, column: 29, scope: !3472)
!3474 = !DILocation(line: 133, column: 28, scope: !1312)
!3475 = !DILocation(line: 133, column: 49, scope: !1312)
!3476 = !DILocation(line: 133, column: 13, scope: !1303)
!3477 = !DILocation(line: 134, column: 60, scope: !1312)
!3478 = !DILocation(line: 134, column: 64, scope: !1312)
!3479 = !DILocation(line: 135, column: 24, scope: !1312)
!3480 = !DILocation(line: 135, column: 82, scope: !1312)
!3481 = !DILocation(line: 135, column: 59, scope: !1312)
!3482 = !DILocation(line: 135, column: 43, scope: !1312)
!3483 = !DILocation(line: 0, scope: !1487, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 134, column: 13, scope: !1312)
!3485 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3484)
!3486 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3484)
!3487 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3484)
!3488 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !3484)
!3489 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3484)
!3490 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3484)
!3491 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3484)
!3492 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3484)
!3493 = !DILocation(line: 0, scope: !1508, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3484)
!3495 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3494)
!3496 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3484)
!3497 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3484)
!3498 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3484)
!3499 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3484)
!3500 = !DILocation(line: 136, column: 34, scope: !1311)
!3501 = !DILocation(line: 136, column: 39, scope: !1311)
!3502 = !DILocation(line: 137, column: 37, scope: !1311)
!3503 = !DILocation(line: 0, scope: !1487, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 137, column: 13, scope: !1311)
!3505 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3504)
!3506 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3504)
!3507 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3504)
!3508 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !3504)
!3509 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3504)
!3510 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3504)
!3511 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3504)
!3512 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3504)
!3513 = !DILocation(line: 0, scope: !1508, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3504)
!3515 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3514)
!3516 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3504)
!3517 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3504)
!3518 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3504)
!3519 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3504)
!3520 = !DILocation(line: 138, column: 34, scope: !1310)
!3521 = !DILocation(line: 138, column: 38, scope: !1310)
!3522 = !DILocation(line: 139, column: 29, scope: !1310)
!3523 = !DILocation(line: 140, column: 25, scope: !1310)
!3524 = !DILocation(line: 140, column: 83, scope: !1310)
!3525 = !DILocation(line: 140, column: 60, scope: !1310)
!3526 = !DILocation(line: 140, column: 44, scope: !1310)
!3527 = !DILocation(line: 0, scope: !1487, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 139, column: 13, scope: !1310)
!3529 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3528)
!3530 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3528)
!3531 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3528)
!3532 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !3528)
!3533 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3528)
!3534 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3528)
!3535 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3528)
!3536 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3528)
!3537 = !DILocation(line: 0, scope: !1508, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3528)
!3539 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3538)
!3540 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3528)
!3541 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3528)
!3542 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3528)
!3543 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3528)
!3544 = !DILocation(line: 0, scope: !1309)
!3545 = !DILocation(line: 144, column: 32, scope: !1309)
!3546 = !DILocation(line: 144, column: 26, scope: !1309)
!3547 = !DILocation(line: 145, column: 17, scope: !1309)
!3548 = !DILocation(line: 149, column: 30, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 149, column: 17)
!3550 = !DILocation(line: 149, column: 17, scope: !1309)
!3551 = !DILocation(line: 151, column: 24, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !2, line: 151, column: 21)
!3553 = distinct !DILexicalBlock(scope: !3549, file: !2, line: 150, column: 13)
!3554 = !DILocation(line: 151, column: 29, scope: !3552)
!3555 = !{!2872, !1373, i64 4}
!3556 = !DILocation(line: 151, column: 43, scope: !3552)
!3557 = !DILocation(line: 151, column: 21, scope: !3553)
!3558 = !DILocation(line: 153, column: 41, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3552, file: !2, line: 152, column: 17)
!3560 = !DILocation(line: 153, column: 21, scope: !3559)
!3561 = !DILocation(line: 155, column: 38, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3559, file: !2, line: 154, column: 21)
!3563 = !DILocation(line: 156, column: 39, scope: !3562)
!3564 = !DILocation(line: 153, column: 61, scope: !3559)
!3565 = !DILocation(line: 153, column: 44, scope: !3559)
!3566 = distinct !{!3566, !3560, !3567, !1722}
!3567 = !DILocation(line: 157, column: 21, scope: !3559)
!3568 = !DILocation(line: 165, column: 21, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3552, file: !2, line: 160, column: 17)
!3570 = !DILocation(line: 167, column: 64, scope: !3569)
!3571 = !DILocation(line: 167, column: 48, scope: !3569)
!3572 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 171, column: 13, scope: !1309)
!3574 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3573)
!3575 = !DILocation(line: 143, column: 17, scope: !1309)
!3576 = !DILocation(line: 171, column: 41, scope: !1309)
!3577 = !DILocation(line: 0, scope: !1487, inlinedAt: !3573)
!3578 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3573)
!3579 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3573)
!3580 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3573)
!3581 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3573)
!3582 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3573)
!3583 = !DILocation(line: 0, scope: !1508, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3573)
!3585 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3584)
!3586 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3573)
!3587 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3573)
!3588 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3573)
!3589 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !3573)
!3590 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !3573)
!3591 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3573)
!3592 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 172, column: 13, scope: !1309)
!3594 = !DILocation(line: 172, column: 41, scope: !1309)
!3595 = !DILocation(line: 172, column: 85, scope: !1309)
!3596 = !DILocation(line: 172, column: 59, scope: !1309)
!3597 = !DILocation(line: 0, scope: !1487, inlinedAt: !3593)
!3598 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3593)
!3599 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3593)
!3600 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3593)
!3601 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !3593)
!3602 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3593)
!3603 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3593)
!3604 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3593)
!3605 = !DILocation(line: 0, scope: !1508, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3593)
!3607 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3606)
!3608 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3593)
!3609 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3593)
!3610 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3593)
!3611 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3593)
!3612 = !DILocation(line: 0, scope: !1312)
!3613 = !DILocation(line: 175, column: 29, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 175, column: 13)
!3615 = !DILocation(line: 175, column: 13, scope: !1303)
!3616 = !DILocation(line: 177, column: 47, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 177, column: 13)
!3618 = !DILocation(line: 177, column: 28, scope: !3617)
!3619 = !DILocation(line: 177, column: 23, scope: !3617)
!3620 = !DILocation(line: 177, column: 52, scope: !3617)
!3621 = !DILocation(line: 124, column: 40, scope: !1304)
!3622 = distinct !{!3622, !3463, !3623, !1722}
!3623 = !DILocation(line: 179, column: 5, scope: !1305)
!3624 = !DILocation(line: 181, column: 17, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 181, column: 9)
!3626 = !DILocation(line: 181, column: 9, scope: !1278)
!3627 = !DILocation(line: 0, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !2, line: 183, column: 13)
!3629 = distinct !DILexicalBlock(scope: !3625, file: !2, line: 182, column: 5)
!3630 = !DILocation(line: 0, scope: !3340, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 184, column: 13, scope: !3628)
!3632 = !DILocation(line: 0, scope: !3340, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 186, column: 13, scope: !3628)
!3634 = !DILocation(line: 0, scope: !1487, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 61, column: 5, scope: !3340, inlinedAt: !3631)
!3636 = !DILocation(line: 0, scope: !1487, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 61, column: 5, scope: !3340, inlinedAt: !3633)
!3638 = !DILocation(line: 183, column: 13, scope: !3629)
!3639 = !DILocation(line: 184, column: 30, scope: !3628)
!3640 = !DILocation(line: 184, column: 13, scope: !3628)
!3641 = !DILocation(line: 61, column: 28, scope: !3340, inlinedAt: !3631)
!3642 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3635)
!3643 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3635)
!3644 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3635)
!3645 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !3635)
!3646 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3635)
!3647 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3635)
!3648 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3635)
!3649 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3635)
!3650 = !DILocation(line: 0, scope: !1508, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3635)
!3652 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3651)
!3653 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3635)
!3654 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3635)
!3655 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3635)
!3656 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3635)
!3657 = !DILocation(line: 186, column: 30, scope: !3628)
!3658 = !DILocation(line: 186, column: 13, scope: !3628)
!3659 = !DILocation(line: 61, column: 28, scope: !3340, inlinedAt: !3633)
!3660 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3637)
!3661 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3637)
!3662 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3637)
!3663 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !3637)
!3664 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3637)
!3665 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3637)
!3666 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3637)
!3667 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3637)
!3668 = !DILocation(line: 0, scope: !1508, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3637)
!3670 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3669)
!3671 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3637)
!3672 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3637)
!3673 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3637)
!3674 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3637)
!3675 = !DILocation(line: 189, column: 19, scope: !1315)
!3676 = !DILocation(line: 189, column: 31, scope: !1315)
!3677 = !DILocation(line: 189, column: 5, scope: !1316)
!3678 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 61, column: 5, scope: !3340, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 192, column: 9, scope: !1314)
!3681 = !DILocation(line: 191, column: 20, scope: !1314)
!3682 = !DILocation(line: 0, scope: !1314)
!3683 = !DILocation(line: 192, column: 48, scope: !1314)
!3684 = !DILocation(line: 192, column: 26, scope: !1314)
!3685 = !DILocation(line: 192, column: 9, scope: !1314)
!3686 = !DILocation(line: 0, scope: !3340, inlinedAt: !3680)
!3687 = !DILocation(line: 61, column: 28, scope: !3340, inlinedAt: !3680)
!3688 = !DILocation(line: 0, scope: !1487, inlinedAt: !3679)
!3689 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3679)
!3690 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3679)
!3691 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3679)
!3692 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !3679)
!3693 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3679)
!3694 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3679)
!3695 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3679)
!3696 = !DILocation(line: 0, scope: !1508, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3679)
!3698 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3697)
!3699 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3679)
!3700 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3679)
!3701 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3679)
!3702 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !3679)
!3703 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !3679)
!3704 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3679)
!3705 = !DILocation(line: 193, column: 22, scope: !1314)
!3706 = !DILocation(line: 189, column: 53, scope: !1315)
!3707 = distinct !{!3707, !3677, !3708, !1722}
!3708 = !DILocation(line: 194, column: 5, scope: !1316)
!3709 = !DILocation(line: 195, column: 1, scope: !1278)
!3710 = distinct !DISubprogram(name: "cavlc_mb_mvd", scope: !2, file: !2, line: 221, type: !3711, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{null, !208, !1281, !126, !126, !126}
!3713 = !{!3714, !3715, !3716, !3717, !3718, !3719}
!3714 = !DILocalVariable(name: "h", arg: 1, scope: !3710, file: !2, line: 221, type: !208)
!3715 = !DILocalVariable(name: "s", arg: 2, scope: !3710, file: !2, line: 221, type: !1281)
!3716 = !DILocalVariable(name: "i_list", arg: 3, scope: !3710, file: !2, line: 221, type: !126)
!3717 = !DILocalVariable(name: "idx", arg: 4, scope: !3710, file: !2, line: 221, type: !126)
!3718 = !DILocalVariable(name: "width", arg: 5, scope: !3710, file: !2, line: 221, type: !126)
!3719 = !DILocalVariable(name: "mvp", scope: !3710, file: !2, line: 223, type: !649, align: 32)
!3720 = !DILocation(line: 0, scope: !3710)
!3721 = !DILocation(line: 223, column: 5, scope: !3710)
!3722 = !DILocation(line: 224, column: 5, scope: !3710)
!3723 = !DILocation(line: 225, column: 44, scope: !3710)
!3724 = !DILocation(line: 225, column: 21, scope: !3710)
!3725 = !DILocation(line: 225, column: 66, scope: !3710)
!3726 = !DILocation(line: 225, column: 64, scope: !3710)
!3727 = !DILocation(line: 0, scope: !2448, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 225, column: 5, scope: !3710)
!3729 = !DILocation(line: 231, column: 25, scope: !2448, inlinedAt: !3728)
!3730 = !DILocation(line: 231, column: 21, scope: !2448, inlinedAt: !3728)
!3731 = !DILocation(line: 232, column: 13, scope: !2458, inlinedAt: !3728)
!3732 = !DILocation(line: 232, column: 9, scope: !2448, inlinedAt: !3728)
!3733 = !DILocation(line: 237, column: 13, scope: !2448, inlinedAt: !3728)
!3734 = !DILocation(line: 237, column: 10, scope: !2448, inlinedAt: !3728)
!3735 = !DILocation(line: 0, scope: !1487, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 238, column: 5, scope: !2448, inlinedAt: !3728)
!3737 = !DILocation(line: 90, column: 27, scope: !1496, inlinedAt: !3736)
!3738 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3736)
!3739 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3736)
!3740 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3736)
!3741 = !DILocation(line: 91, column: 12, scope: !1496, inlinedAt: !3736)
!3742 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3736)
!3743 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3736)
!3744 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3736)
!3745 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3736)
!3746 = !DILocation(line: 0, scope: !1508, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3736)
!3748 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3747)
!3749 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3736)
!3750 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3736)
!3751 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3736)
!3752 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !3736)
!3753 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !3736)
!3754 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3736)
!3755 = !DILocation(line: 91, column: 19, scope: !1496, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 238, column: 5, scope: !2448, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 226, column: 5, scope: !3710)
!3758 = !DILocation(line: 226, column: 21, scope: !3710)
!3759 = !DILocation(line: 226, column: 66, scope: !3710)
!3760 = !DILocation(line: 226, column: 64, scope: !3710)
!3761 = !DILocation(line: 0, scope: !2448, inlinedAt: !3757)
!3762 = !DILocation(line: 231, column: 25, scope: !2448, inlinedAt: !3757)
!3763 = !DILocation(line: 231, column: 21, scope: !2448, inlinedAt: !3757)
!3764 = !DILocation(line: 232, column: 13, scope: !2458, inlinedAt: !3757)
!3765 = !DILocation(line: 232, column: 9, scope: !2448, inlinedAt: !3757)
!3766 = !DILocation(line: 237, column: 13, scope: !2448, inlinedAt: !3757)
!3767 = !DILocation(line: 237, column: 10, scope: !2448, inlinedAt: !3757)
!3768 = !DILocation(line: 0, scope: !1487, inlinedAt: !3756)
!3769 = !DILocation(line: 90, column: 36, scope: !1496, inlinedAt: !3756)
!3770 = !DILocation(line: 90, column: 50, scope: !1496, inlinedAt: !3756)
!3771 = !DILocation(line: 90, column: 48, scope: !1496, inlinedAt: !3756)
!3772 = !DILocation(line: 90, column: 21, scope: !1496, inlinedAt: !3756)
!3773 = !DILocation(line: 92, column: 23, scope: !1503, inlinedAt: !3756)
!3774 = !DILocation(line: 92, column: 13, scope: !1496, inlinedAt: !3756)
!3775 = !DILocation(line: 97, column: 56, scope: !1506, inlinedAt: !3756)
!3776 = !DILocation(line: 0, scope: !1508, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3756)
!3778 = !DILocation(line: 155, column: 5, scope: !1508, inlinedAt: !3777)
!3779 = !DILocation(line: 97, column: 32, scope: !1506, inlinedAt: !3756)
!3780 = !DILocation(line: 97, column: 28, scope: !1506, inlinedAt: !3756)
!3781 = !DILocation(line: 97, column: 30, scope: !1506, inlinedAt: !3756)
!3782 = !DILocation(line: 99, column: 23, scope: !1506, inlinedAt: !3756)
!3783 = !DILocation(line: 100, column: 18, scope: !1506, inlinedAt: !3756)
!3784 = !DILocation(line: 101, column: 9, scope: !1506, inlinedAt: !3756)
!3785 = !DILocation(line: 227, column: 1, scope: !3710)
