; ModuleID = 'common/quant.c'
source_filename = "common/quant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_quant_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr] }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, i32, i32, float, float, float, i32, float, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }

@x264_decimate_table4 = dso_local local_unnamed_addr constant <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 3, i8 2, i8 2, i8 1, i8 1, i8 1, [10 x i8] zeroinitializer }>, align 16, !dbg !0
@x264_decimate_table8 = dso_local local_unnamed_addr constant <{ [24 x i8], [40 x i8] }> <{ [24 x i8] c"\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01", [40 x i8] zeroinitializer }>, align 16, !dbg !26

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @x264_quant_init(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !45 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1139, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i32 %1, metadata !1140, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata ptr %2, metadata !1141, metadata !DIExpression()), !dbg !1142
  store ptr @quant_8x8, ptr %2, align 8, !dbg !1143, !tbaa !1144
  %4 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 1, !dbg !1149
  store ptr @quant_4x4, ptr %4, align 8, !dbg !1150, !tbaa !1151
  %5 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 2, !dbg !1152
  store ptr @quant_4x4_dc, ptr %5, align 8, !dbg !1153, !tbaa !1154
  %6 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 3, !dbg !1155
  store ptr @quant_2x2_dc, ptr %6, align 8, !dbg !1156, !tbaa !1157
  %7 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 5, !dbg !1158
  store ptr @dequant_4x4, ptr %7, align 8, !dbg !1159, !tbaa !1160
  %8 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 6, !dbg !1161
  store ptr @dequant_4x4_dc, ptr %8, align 8, !dbg !1162, !tbaa !1163
  %9 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 4, !dbg !1164
  store ptr @dequant_8x8, ptr %9, align 8, !dbg !1165, !tbaa !1166
  %10 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 7, !dbg !1167
  store ptr @x264_denoise_dct, ptr %10, align 8, !dbg !1168, !tbaa !1169
  %11 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 8, !dbg !1170
  store ptr @x264_decimate_score15, ptr %11, align 8, !dbg !1171, !tbaa !1172
  %12 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 9, !dbg !1173
  store ptr @x264_decimate_score16, ptr %12, align 8, !dbg !1174, !tbaa !1175
  %13 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 10, !dbg !1176
  store ptr @x264_decimate_score64, ptr %13, align 8, !dbg !1177, !tbaa !1178
  %14 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, i64 3, !dbg !1179
  store ptr @x264_coeff_last4, ptr %14, align 8, !dbg !1180, !tbaa !1181
  %15 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, i64 1, !dbg !1182
  store ptr @x264_coeff_last15, ptr %15, align 8, !dbg !1183, !tbaa !1181
  %16 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, i64 2, !dbg !1184
  store ptr @x264_coeff_last16, ptr %16, align 8, !dbg !1185, !tbaa !1181
  %17 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, i64 5, !dbg !1186
  store ptr @x264_coeff_last64, ptr %17, align 8, !dbg !1187, !tbaa !1181
  %18 = and i32 %1, 16, !dbg !1188
  %19 = icmp eq i32 %18, 0, !dbg !1188
  br i1 %19, label %21, label %20, !dbg !1190

20:                                               ; preds = %3
  store ptr @x264_quant_2x2_dc_mmxext, ptr %6, align 8, !dbg !1191, !tbaa !1157
  store ptr @x264_coeff_last4_mmxext, ptr %14, align 8, !dbg !1193, !tbaa !1181
  br label %21, !dbg !1194

21:                                               ; preds = %20, %3
  %22 = and i32 %1, 64, !dbg !1195
  %23 = icmp eq i32 %22, 0, !dbg !1195
  br i1 %23, label %30, label %24, !dbg !1197

24:                                               ; preds = %21
  store ptr @x264_quant_4x4_dc_sse2, ptr %5, align 8, !dbg !1198, !tbaa !1154
  store ptr @x264_quant_4x4_sse2, ptr %4, align 8, !dbg !1200, !tbaa !1151
  store ptr @x264_quant_8x8_sse2, ptr %2, align 8, !dbg !1201, !tbaa !1144
  store ptr @x264_dequant_4x4_sse2, ptr %7, align 8, !dbg !1202, !tbaa !1160
  store ptr @x264_dequant_4x4dc_sse2, ptr %8, align 8, !dbg !1203, !tbaa !1163
  store ptr @x264_dequant_8x8_sse2, ptr %9, align 8, !dbg !1204, !tbaa !1166
  %25 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26, !dbg !1205
  %26 = load i32, ptr %25, align 8, !dbg !1205, !tbaa !1207
  %27 = icmp eq i32 %26, 0, !dbg !1233
  br i1 %27, label %28, label %29, !dbg !1234

28:                                               ; preds = %24
  store ptr @x264_dequant_4x4_flat16_sse2, ptr %7, align 8, !dbg !1235, !tbaa !1160
  store ptr @x264_dequant_8x8_flat16_sse2, ptr %9, align 8, !dbg !1237, !tbaa !1166
  br label %29, !dbg !1238

29:                                               ; preds = %28, %24
  store ptr @x264_denoise_dct_sse2, ptr %10, align 8, !dbg !1239, !tbaa !1169
  store ptr @x264_decimate_score15_sse2, ptr %11, align 8, !dbg !1240, !tbaa !1172
  store ptr @x264_decimate_score16_sse2, ptr %12, align 8, !dbg !1241, !tbaa !1175
  store ptr @x264_decimate_score64_sse2, ptr %13, align 8, !dbg !1242, !tbaa !1178
  store ptr @x264_coeff_last15_sse2, ptr %15, align 8, !dbg !1243, !tbaa !1181
  store ptr @x264_coeff_last16_sse2, ptr %16, align 8, !dbg !1244, !tbaa !1181
  store ptr @x264_coeff_last64_sse2, ptr %17, align 8, !dbg !1245, !tbaa !1181
  br label %30, !dbg !1246

30:                                               ; preds = %29, %21
  %31 = phi ptr [ @x264_coeff_last15_sse2, %29 ], [ @x264_coeff_last15, %21 ]
  %32 = phi ptr [ @x264_coeff_last16_sse2, %29 ], [ @x264_coeff_last16, %21 ]
  %33 = and i32 %1, 1024, !dbg !1247
  %34 = icmp eq i32 %33, 0, !dbg !1247
  br i1 %34, label %36, label %35, !dbg !1249

35:                                               ; preds = %30
  store ptr @x264_quant_2x2_dc_ssse3, ptr %6, align 8, !dbg !1250, !tbaa !1157
  store ptr @x264_quant_4x4_dc_ssse3, ptr %5, align 8, !dbg !1252, !tbaa !1154
  store ptr @x264_quant_4x4_ssse3, ptr %4, align 8, !dbg !1253, !tbaa !1151
  store ptr @x264_quant_8x8_ssse3, ptr %2, align 8, !dbg !1254, !tbaa !1144
  store ptr @x264_denoise_dct_ssse3, ptr %10, align 8, !dbg !1255, !tbaa !1169
  store ptr @x264_decimate_score15_ssse3, ptr %11, align 8, !dbg !1256, !tbaa !1172
  store ptr @x264_decimate_score16_ssse3, ptr %12, align 8, !dbg !1257, !tbaa !1175
  store ptr @x264_decimate_score64_ssse3, ptr %13, align 8, !dbg !1258, !tbaa !1178
  br label %36, !dbg !1259

36:                                               ; preds = %35, %30
  %37 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, !dbg !1260
  store ptr %32, ptr %37, align 8, !dbg !1261, !tbaa !1181
  %38 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, i64 4, !dbg !1262
  store ptr %31, ptr %38, align 8, !dbg !1263, !tbaa !1181
  ret void, !dbg !1264
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @quant_8x8(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 !dbg !1265 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1267, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata ptr %1, metadata !1268, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata ptr %2, metadata !1269, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i32 0, metadata !1270, metadata !DIExpression()), !dbg !1271
  %4 = getelementptr i8, ptr %0, i64 128, !dbg !1272
  %5 = getelementptr i8, ptr %2, i64 128, !dbg !1272
  %6 = getelementptr i8, ptr %1, i64 128, !dbg !1272
  %7 = icmp ugt ptr %5, %0, !dbg !1272
  %8 = icmp ugt ptr %4, %2, !dbg !1272
  %9 = and i1 %7, %8, !dbg !1272
  %10 = icmp ugt ptr %6, %0, !dbg !1272
  %11 = icmp ugt ptr %4, %1, !dbg !1272
  %12 = and i1 %10, %11, !dbg !1272
  %13 = or i1 %9, %12, !dbg !1272
  br i1 %13, label %38, label %14, !dbg !1272

14:                                               ; preds = %3, %14
  %15 = phi i64 [ %36, %14 ], [ 0, %3 ], !dbg !1274
  %16 = getelementptr inbounds [8 x i16], ptr %0, i64 0, i64 %15, !dbg !1276
  %17 = load <8 x i16>, ptr %16, align 2, !dbg !1276, !tbaa !1279, !alias.scope !1281, !noalias !1284
  %18 = sext <8 x i16> %17 to <8 x i32>, !dbg !1276
  %19 = icmp sgt <8 x i16> %17, zeroinitializer, !dbg !1276
  %20 = getelementptr inbounds i16, ptr %2, i64 %15, !dbg !1276
  %21 = load <8 x i16>, ptr %20, align 2, !dbg !1276, !tbaa !1279, !alias.scope !1287
  %22 = zext <8 x i16> %21 to <8 x i32>, !dbg !1276
  %23 = getelementptr inbounds i16, ptr %1, i64 %15, !dbg !1276
  %24 = load <8 x i16>, ptr %23, align 2, !dbg !1276, !tbaa !1279, !alias.scope !1288
  %25 = zext <8 x i16> %24 to <8 x i32>, !dbg !1276
  %26 = sub nsw <8 x i32> %22, %18, !dbg !1276
  %27 = mul nsw <8 x i32> %26, %25, !dbg !1276
  %28 = lshr <8 x i32> %27, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !1276
  %29 = trunc <8 x i32> %28 to <8 x i16>, !dbg !1276
  %30 = sub <8 x i16> zeroinitializer, %29, !dbg !1276
  %31 = add nsw <8 x i32> %22, %18, !dbg !1276
  %32 = mul nsw <8 x i32> %31, %25, !dbg !1276
  %33 = lshr <8 x i32> %32, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !1276
  %34 = trunc <8 x i32> %33 to <8 x i16>, !dbg !1276
  %35 = select <8 x i1> %19, <8 x i16> %34, <8 x i16> %30, !dbg !1276
  store <8 x i16> %35, ptr %16, align 2, !dbg !1276, !tbaa !1279, !alias.scope !1281, !noalias !1284
  %36 = add nuw i64 %15, 8, !dbg !1274
  %37 = icmp eq i64 %36, 64, !dbg !1274
  br i1 %37, label %65, label %14, !dbg !1274, !llvm.loop !1289

38:                                               ; preds = %3, %61
  %39 = phi i64 [ %63, %61 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1270, metadata !DIExpression()), !dbg !1271
  %40 = getelementptr inbounds [8 x i16], ptr %0, i64 0, i64 %39, !dbg !1276
  %41 = load i16, ptr %40, align 2, !dbg !1276, !tbaa !1279
  %42 = sext i16 %41 to i32, !dbg !1276
  %43 = icmp sgt i16 %41, 0, !dbg !1276
  %44 = getelementptr inbounds i16, ptr %2, i64 %39, !dbg !1276
  %45 = load i16, ptr %44, align 2, !dbg !1276, !tbaa !1279
  %46 = zext i16 %45 to i32, !dbg !1276
  %47 = getelementptr inbounds i16, ptr %1, i64 %39, !dbg !1276
  %48 = load i16, ptr %47, align 2, !dbg !1276, !tbaa !1279
  %49 = zext i16 %48 to i32, !dbg !1276
  br i1 %43, label %50, label %55, !dbg !1294

50:                                               ; preds = %38
  %51 = add nsw i32 %46, %42, !dbg !1276
  %52 = mul nsw i32 %51, %49, !dbg !1276
  %53 = lshr i32 %52, 16, !dbg !1276
  %54 = trunc i32 %53 to i16, !dbg !1276
  br label %61, !dbg !1276

55:                                               ; preds = %38
  %56 = sub nsw i32 %46, %42, !dbg !1276
  %57 = mul nsw i32 %56, %49, !dbg !1276
  %58 = lshr i32 %57, 16, !dbg !1276
  %59 = trunc i32 %58 to i16, !dbg !1276
  %60 = sub i16 0, %59, !dbg !1276
  br label %61

61:                                               ; preds = %50, %55
  %62 = phi i16 [ %60, %55 ], [ %54, %50 ], !dbg !1276
  store i16 %62, ptr %40, align 2, !dbg !1276, !tbaa !1279
  %63 = add nuw nsw i64 %39, 1, !dbg !1274
  call void @llvm.dbg.value(metadata i64 %63, metadata !1270, metadata !DIExpression()), !dbg !1271
  %64 = icmp eq i64 %63, 64, !dbg !1295
  br i1 %64, label %65, label %38, !dbg !1272, !llvm.loop !1296

65:                                               ; preds = %14, %61
  ret void, !dbg !1297
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @quant_4x4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 !dbg !1298 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1300, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata ptr %1, metadata !1301, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata ptr %2, metadata !1302, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()), !dbg !1304
  %4 = getelementptr i8, ptr %0, i64 32, !dbg !1305
  %5 = getelementptr i8, ptr %2, i64 32, !dbg !1305
  %6 = getelementptr i8, ptr %1, i64 32, !dbg !1305
  %7 = icmp ugt ptr %5, %0, !dbg !1305
  %8 = icmp ugt ptr %4, %2, !dbg !1305
  %9 = and i1 %7, %8, !dbg !1305
  %10 = icmp ugt ptr %6, %0, !dbg !1305
  %11 = icmp ugt ptr %4, %1, !dbg !1305
  %12 = and i1 %10, %11, !dbg !1305
  %13 = or i1 %9, %12, !dbg !1305
  br i1 %13, label %52, label %14, !dbg !1305

14:                                               ; preds = %3
  %15 = load <8 x i16>, ptr %0, align 2, !dbg !1307, !tbaa !1279, !alias.scope !1311, !noalias !1314
  %16 = sext <8 x i16> %15 to <8 x i32>, !dbg !1307
  %17 = icmp sgt <8 x i16> %15, zeroinitializer, !dbg !1307
  %18 = load <8 x i16>, ptr %2, align 2, !dbg !1307, !tbaa !1279, !alias.scope !1317
  %19 = zext <8 x i16> %18 to <8 x i32>, !dbg !1307
  %20 = load <8 x i16>, ptr %1, align 2, !dbg !1307, !tbaa !1279, !alias.scope !1318
  %21 = zext <8 x i16> %20 to <8 x i32>, !dbg !1307
  %22 = sub nsw <8 x i32> %19, %16, !dbg !1307
  %23 = mul nsw <8 x i32> %22, %21, !dbg !1307
  %24 = lshr <8 x i32> %23, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !1307
  %25 = trunc <8 x i32> %24 to <8 x i16>, !dbg !1307
  %26 = sub <8 x i16> zeroinitializer, %25, !dbg !1307
  %27 = add nsw <8 x i32> %19, %16, !dbg !1307
  %28 = mul nsw <8 x i32> %27, %21, !dbg !1307
  %29 = lshr <8 x i32> %28, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !1307
  %30 = trunc <8 x i32> %29 to <8 x i16>, !dbg !1307
  %31 = select <8 x i1> %17, <8 x i16> %30, <8 x i16> %26, !dbg !1307
  store <8 x i16> %31, ptr %0, align 2, !dbg !1307, !tbaa !1279, !alias.scope !1311, !noalias !1314
  %32 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 8, !dbg !1307
  %33 = load <8 x i16>, ptr %32, align 2, !dbg !1307, !tbaa !1279, !alias.scope !1311, !noalias !1314
  %34 = sext <8 x i16> %33 to <8 x i32>, !dbg !1307
  %35 = icmp sgt <8 x i16> %33, zeroinitializer, !dbg !1307
  %36 = getelementptr inbounds i16, ptr %2, i64 8, !dbg !1307
  %37 = load <8 x i16>, ptr %36, align 2, !dbg !1307, !tbaa !1279, !alias.scope !1317
  %38 = zext <8 x i16> %37 to <8 x i32>, !dbg !1307
  %39 = getelementptr inbounds i16, ptr %1, i64 8, !dbg !1307
  %40 = load <8 x i16>, ptr %39, align 2, !dbg !1307, !tbaa !1279, !alias.scope !1318
  %41 = zext <8 x i16> %40 to <8 x i32>, !dbg !1307
  %42 = sub nsw <8 x i32> %38, %34, !dbg !1307
  %43 = mul nsw <8 x i32> %42, %41, !dbg !1307
  %44 = lshr <8 x i32> %43, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !1307
  %45 = trunc <8 x i32> %44 to <8 x i16>, !dbg !1307
  %46 = sub <8 x i16> zeroinitializer, %45, !dbg !1307
  %47 = add nsw <8 x i32> %38, %34, !dbg !1307
  %48 = mul nsw <8 x i32> %47, %41, !dbg !1307
  %49 = lshr <8 x i32> %48, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !1307
  %50 = trunc <8 x i32> %49 to <8 x i16>, !dbg !1307
  %51 = select <8 x i1> %35, <8 x i16> %50, <8 x i16> %46, !dbg !1307
  store <8 x i16> %51, ptr %32, align 2, !dbg !1307, !tbaa !1279, !alias.scope !1311, !noalias !1314
  br label %418, !dbg !1319

52:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i64 0, metadata !1303, metadata !DIExpression()), !dbg !1304
  %53 = load i16, ptr %0, align 2, !dbg !1307, !tbaa !1279
  %54 = sext i16 %53 to i32, !dbg !1307
  %55 = icmp sgt i16 %53, 0, !dbg !1307
  %56 = load i16, ptr %2, align 2, !dbg !1307, !tbaa !1279
  %57 = zext i16 %56 to i32, !dbg !1307
  %58 = load i16, ptr %1, align 2, !dbg !1307, !tbaa !1279
  %59 = zext i16 %58 to i32, !dbg !1307
  br i1 %55, label %60, label %65, !dbg !1320

60:                                               ; preds = %52
  %61 = add nsw i32 %57, %54, !dbg !1307
  %62 = mul nsw i32 %61, %59, !dbg !1307
  %63 = lshr i32 %62, 16, !dbg !1307
  %64 = trunc i32 %63 to i16, !dbg !1307
  br label %71, !dbg !1307

65:                                               ; preds = %52
  %66 = sub nsw i32 %57, %54, !dbg !1307
  %67 = mul nsw i32 %66, %59, !dbg !1307
  %68 = lshr i32 %67, 16, !dbg !1307
  %69 = trunc i32 %68 to i16, !dbg !1307
  %70 = sub i16 0, %69, !dbg !1307
  br label %71

71:                                               ; preds = %60, %65
  %72 = phi i16 [ %70, %65 ], [ %64, %60 ], !dbg !1307
  store i16 %72, ptr %0, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 1, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 1, metadata !1303, metadata !DIExpression()), !dbg !1304
  %73 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 1, !dbg !1307
  %74 = load i16, ptr %73, align 2, !dbg !1307, !tbaa !1279
  %75 = sext i16 %74 to i32, !dbg !1307
  %76 = icmp sgt i16 %74, 0, !dbg !1307
  %77 = getelementptr inbounds i16, ptr %2, i64 1, !dbg !1307
  %78 = load i16, ptr %77, align 2, !dbg !1307, !tbaa !1279
  %79 = zext i16 %78 to i32, !dbg !1307
  %80 = getelementptr inbounds i16, ptr %1, i64 1, !dbg !1307
  %81 = load i16, ptr %80, align 2, !dbg !1307, !tbaa !1279
  %82 = zext i16 %81 to i32, !dbg !1307
  br i1 %76, label %89, label %83, !dbg !1320

83:                                               ; preds = %71
  %84 = sub nsw i32 %79, %75, !dbg !1307
  %85 = mul nsw i32 %84, %82, !dbg !1307
  %86 = lshr i32 %85, 16, !dbg !1307
  %87 = trunc i32 %86 to i16, !dbg !1307
  %88 = sub i16 0, %87, !dbg !1307
  br label %94

89:                                               ; preds = %71
  %90 = add nsw i32 %79, %75, !dbg !1307
  %91 = mul nsw i32 %90, %82, !dbg !1307
  %92 = lshr i32 %91, 16, !dbg !1307
  %93 = trunc i32 %92 to i16, !dbg !1307
  br label %94, !dbg !1307

94:                                               ; preds = %89, %83
  %95 = phi i16 [ %88, %83 ], [ %93, %89 ], !dbg !1307
  store i16 %95, ptr %73, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 2, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 2, metadata !1303, metadata !DIExpression()), !dbg !1304
  %96 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 2, !dbg !1307
  %97 = load i16, ptr %96, align 2, !dbg !1307, !tbaa !1279
  %98 = sext i16 %97 to i32, !dbg !1307
  %99 = icmp sgt i16 %97, 0, !dbg !1307
  %100 = getelementptr inbounds i16, ptr %2, i64 2, !dbg !1307
  %101 = load i16, ptr %100, align 2, !dbg !1307, !tbaa !1279
  %102 = zext i16 %101 to i32, !dbg !1307
  %103 = getelementptr inbounds i16, ptr %1, i64 2, !dbg !1307
  %104 = load i16, ptr %103, align 2, !dbg !1307, !tbaa !1279
  %105 = zext i16 %104 to i32, !dbg !1307
  br i1 %99, label %112, label %106, !dbg !1320

106:                                              ; preds = %94
  %107 = sub nsw i32 %102, %98, !dbg !1307
  %108 = mul nsw i32 %107, %105, !dbg !1307
  %109 = lshr i32 %108, 16, !dbg !1307
  %110 = trunc i32 %109 to i16, !dbg !1307
  %111 = sub i16 0, %110, !dbg !1307
  br label %117

112:                                              ; preds = %94
  %113 = add nsw i32 %102, %98, !dbg !1307
  %114 = mul nsw i32 %113, %105, !dbg !1307
  %115 = lshr i32 %114, 16, !dbg !1307
  %116 = trunc i32 %115 to i16, !dbg !1307
  br label %117, !dbg !1307

117:                                              ; preds = %112, %106
  %118 = phi i16 [ %111, %106 ], [ %116, %112 ], !dbg !1307
  store i16 %118, ptr %96, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 3, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 3, metadata !1303, metadata !DIExpression()), !dbg !1304
  %119 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 3, !dbg !1307
  %120 = load i16, ptr %119, align 2, !dbg !1307, !tbaa !1279
  %121 = sext i16 %120 to i32, !dbg !1307
  %122 = icmp sgt i16 %120, 0, !dbg !1307
  %123 = getelementptr inbounds i16, ptr %2, i64 3, !dbg !1307
  %124 = load i16, ptr %123, align 2, !dbg !1307, !tbaa !1279
  %125 = zext i16 %124 to i32, !dbg !1307
  %126 = getelementptr inbounds i16, ptr %1, i64 3, !dbg !1307
  %127 = load i16, ptr %126, align 2, !dbg !1307, !tbaa !1279
  %128 = zext i16 %127 to i32, !dbg !1307
  br i1 %122, label %135, label %129, !dbg !1320

129:                                              ; preds = %117
  %130 = sub nsw i32 %125, %121, !dbg !1307
  %131 = mul nsw i32 %130, %128, !dbg !1307
  %132 = lshr i32 %131, 16, !dbg !1307
  %133 = trunc i32 %132 to i16, !dbg !1307
  %134 = sub i16 0, %133, !dbg !1307
  br label %140

135:                                              ; preds = %117
  %136 = add nsw i32 %125, %121, !dbg !1307
  %137 = mul nsw i32 %136, %128, !dbg !1307
  %138 = lshr i32 %137, 16, !dbg !1307
  %139 = trunc i32 %138 to i16, !dbg !1307
  br label %140, !dbg !1307

140:                                              ; preds = %135, %129
  %141 = phi i16 [ %134, %129 ], [ %139, %135 ], !dbg !1307
  store i16 %141, ptr %119, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 4, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 4, metadata !1303, metadata !DIExpression()), !dbg !1304
  %142 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 4, !dbg !1307
  %143 = load i16, ptr %142, align 2, !dbg !1307, !tbaa !1279
  %144 = sext i16 %143 to i32, !dbg !1307
  %145 = icmp sgt i16 %143, 0, !dbg !1307
  %146 = getelementptr inbounds i16, ptr %2, i64 4, !dbg !1307
  %147 = load i16, ptr %146, align 2, !dbg !1307, !tbaa !1279
  %148 = zext i16 %147 to i32, !dbg !1307
  %149 = getelementptr inbounds i16, ptr %1, i64 4, !dbg !1307
  %150 = load i16, ptr %149, align 2, !dbg !1307, !tbaa !1279
  %151 = zext i16 %150 to i32, !dbg !1307
  br i1 %145, label %158, label %152, !dbg !1320

152:                                              ; preds = %140
  %153 = sub nsw i32 %148, %144, !dbg !1307
  %154 = mul nsw i32 %153, %151, !dbg !1307
  %155 = lshr i32 %154, 16, !dbg !1307
  %156 = trunc i32 %155 to i16, !dbg !1307
  %157 = sub i16 0, %156, !dbg !1307
  br label %163

158:                                              ; preds = %140
  %159 = add nsw i32 %148, %144, !dbg !1307
  %160 = mul nsw i32 %159, %151, !dbg !1307
  %161 = lshr i32 %160, 16, !dbg !1307
  %162 = trunc i32 %161 to i16, !dbg !1307
  br label %163, !dbg !1307

163:                                              ; preds = %158, %152
  %164 = phi i16 [ %157, %152 ], [ %162, %158 ], !dbg !1307
  store i16 %164, ptr %142, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 5, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 5, metadata !1303, metadata !DIExpression()), !dbg !1304
  %165 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 5, !dbg !1307
  %166 = load i16, ptr %165, align 2, !dbg !1307, !tbaa !1279
  %167 = sext i16 %166 to i32, !dbg !1307
  %168 = icmp sgt i16 %166, 0, !dbg !1307
  %169 = getelementptr inbounds i16, ptr %2, i64 5, !dbg !1307
  %170 = load i16, ptr %169, align 2, !dbg !1307, !tbaa !1279
  %171 = zext i16 %170 to i32, !dbg !1307
  %172 = getelementptr inbounds i16, ptr %1, i64 5, !dbg !1307
  %173 = load i16, ptr %172, align 2, !dbg !1307, !tbaa !1279
  %174 = zext i16 %173 to i32, !dbg !1307
  br i1 %168, label %181, label %175, !dbg !1320

175:                                              ; preds = %163
  %176 = sub nsw i32 %171, %167, !dbg !1307
  %177 = mul nsw i32 %176, %174, !dbg !1307
  %178 = lshr i32 %177, 16, !dbg !1307
  %179 = trunc i32 %178 to i16, !dbg !1307
  %180 = sub i16 0, %179, !dbg !1307
  br label %186

181:                                              ; preds = %163
  %182 = add nsw i32 %171, %167, !dbg !1307
  %183 = mul nsw i32 %182, %174, !dbg !1307
  %184 = lshr i32 %183, 16, !dbg !1307
  %185 = trunc i32 %184 to i16, !dbg !1307
  br label %186, !dbg !1307

186:                                              ; preds = %181, %175
  %187 = phi i16 [ %180, %175 ], [ %185, %181 ], !dbg !1307
  store i16 %187, ptr %165, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 6, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 6, metadata !1303, metadata !DIExpression()), !dbg !1304
  %188 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 6, !dbg !1307
  %189 = load i16, ptr %188, align 2, !dbg !1307, !tbaa !1279
  %190 = sext i16 %189 to i32, !dbg !1307
  %191 = icmp sgt i16 %189, 0, !dbg !1307
  %192 = getelementptr inbounds i16, ptr %2, i64 6, !dbg !1307
  %193 = load i16, ptr %192, align 2, !dbg !1307, !tbaa !1279
  %194 = zext i16 %193 to i32, !dbg !1307
  %195 = getelementptr inbounds i16, ptr %1, i64 6, !dbg !1307
  %196 = load i16, ptr %195, align 2, !dbg !1307, !tbaa !1279
  %197 = zext i16 %196 to i32, !dbg !1307
  br i1 %191, label %204, label %198, !dbg !1320

198:                                              ; preds = %186
  %199 = sub nsw i32 %194, %190, !dbg !1307
  %200 = mul nsw i32 %199, %197, !dbg !1307
  %201 = lshr i32 %200, 16, !dbg !1307
  %202 = trunc i32 %201 to i16, !dbg !1307
  %203 = sub i16 0, %202, !dbg !1307
  br label %209

204:                                              ; preds = %186
  %205 = add nsw i32 %194, %190, !dbg !1307
  %206 = mul nsw i32 %205, %197, !dbg !1307
  %207 = lshr i32 %206, 16, !dbg !1307
  %208 = trunc i32 %207 to i16, !dbg !1307
  br label %209, !dbg !1307

209:                                              ; preds = %204, %198
  %210 = phi i16 [ %203, %198 ], [ %208, %204 ], !dbg !1307
  store i16 %210, ptr %188, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 7, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 7, metadata !1303, metadata !DIExpression()), !dbg !1304
  %211 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 7, !dbg !1307
  %212 = load i16, ptr %211, align 2, !dbg !1307, !tbaa !1279
  %213 = sext i16 %212 to i32, !dbg !1307
  %214 = icmp sgt i16 %212, 0, !dbg !1307
  %215 = getelementptr inbounds i16, ptr %2, i64 7, !dbg !1307
  %216 = load i16, ptr %215, align 2, !dbg !1307, !tbaa !1279
  %217 = zext i16 %216 to i32, !dbg !1307
  %218 = getelementptr inbounds i16, ptr %1, i64 7, !dbg !1307
  %219 = load i16, ptr %218, align 2, !dbg !1307, !tbaa !1279
  %220 = zext i16 %219 to i32, !dbg !1307
  br i1 %214, label %227, label %221, !dbg !1320

221:                                              ; preds = %209
  %222 = sub nsw i32 %217, %213, !dbg !1307
  %223 = mul nsw i32 %222, %220, !dbg !1307
  %224 = lshr i32 %223, 16, !dbg !1307
  %225 = trunc i32 %224 to i16, !dbg !1307
  %226 = sub i16 0, %225, !dbg !1307
  br label %232

227:                                              ; preds = %209
  %228 = add nsw i32 %217, %213, !dbg !1307
  %229 = mul nsw i32 %228, %220, !dbg !1307
  %230 = lshr i32 %229, 16, !dbg !1307
  %231 = trunc i32 %230 to i16, !dbg !1307
  br label %232, !dbg !1307

232:                                              ; preds = %227, %221
  %233 = phi i16 [ %226, %221 ], [ %231, %227 ], !dbg !1307
  store i16 %233, ptr %211, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 8, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 8, metadata !1303, metadata !DIExpression()), !dbg !1304
  %234 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 8, !dbg !1307
  %235 = load i16, ptr %234, align 2, !dbg !1307, !tbaa !1279
  %236 = sext i16 %235 to i32, !dbg !1307
  %237 = icmp sgt i16 %235, 0, !dbg !1307
  %238 = getelementptr inbounds i16, ptr %2, i64 8, !dbg !1307
  %239 = load i16, ptr %238, align 2, !dbg !1307, !tbaa !1279
  %240 = zext i16 %239 to i32, !dbg !1307
  %241 = getelementptr inbounds i16, ptr %1, i64 8, !dbg !1307
  %242 = load i16, ptr %241, align 2, !dbg !1307, !tbaa !1279
  %243 = zext i16 %242 to i32, !dbg !1307
  br i1 %237, label %250, label %244, !dbg !1320

244:                                              ; preds = %232
  %245 = sub nsw i32 %240, %236, !dbg !1307
  %246 = mul nsw i32 %245, %243, !dbg !1307
  %247 = lshr i32 %246, 16, !dbg !1307
  %248 = trunc i32 %247 to i16, !dbg !1307
  %249 = sub i16 0, %248, !dbg !1307
  br label %255

250:                                              ; preds = %232
  %251 = add nsw i32 %240, %236, !dbg !1307
  %252 = mul nsw i32 %251, %243, !dbg !1307
  %253 = lshr i32 %252, 16, !dbg !1307
  %254 = trunc i32 %253 to i16, !dbg !1307
  br label %255, !dbg !1307

255:                                              ; preds = %250, %244
  %256 = phi i16 [ %249, %244 ], [ %254, %250 ], !dbg !1307
  store i16 %256, ptr %234, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 9, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 9, metadata !1303, metadata !DIExpression()), !dbg !1304
  %257 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 9, !dbg !1307
  %258 = load i16, ptr %257, align 2, !dbg !1307, !tbaa !1279
  %259 = sext i16 %258 to i32, !dbg !1307
  %260 = icmp sgt i16 %258, 0, !dbg !1307
  %261 = getelementptr inbounds i16, ptr %2, i64 9, !dbg !1307
  %262 = load i16, ptr %261, align 2, !dbg !1307, !tbaa !1279
  %263 = zext i16 %262 to i32, !dbg !1307
  %264 = getelementptr inbounds i16, ptr %1, i64 9, !dbg !1307
  %265 = load i16, ptr %264, align 2, !dbg !1307, !tbaa !1279
  %266 = zext i16 %265 to i32, !dbg !1307
  br i1 %260, label %273, label %267, !dbg !1320

267:                                              ; preds = %255
  %268 = sub nsw i32 %263, %259, !dbg !1307
  %269 = mul nsw i32 %268, %266, !dbg !1307
  %270 = lshr i32 %269, 16, !dbg !1307
  %271 = trunc i32 %270 to i16, !dbg !1307
  %272 = sub i16 0, %271, !dbg !1307
  br label %278

273:                                              ; preds = %255
  %274 = add nsw i32 %263, %259, !dbg !1307
  %275 = mul nsw i32 %274, %266, !dbg !1307
  %276 = lshr i32 %275, 16, !dbg !1307
  %277 = trunc i32 %276 to i16, !dbg !1307
  br label %278, !dbg !1307

278:                                              ; preds = %273, %267
  %279 = phi i16 [ %272, %267 ], [ %277, %273 ], !dbg !1307
  store i16 %279, ptr %257, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 10, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 10, metadata !1303, metadata !DIExpression()), !dbg !1304
  %280 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 10, !dbg !1307
  %281 = load i16, ptr %280, align 2, !dbg !1307, !tbaa !1279
  %282 = sext i16 %281 to i32, !dbg !1307
  %283 = icmp sgt i16 %281, 0, !dbg !1307
  %284 = getelementptr inbounds i16, ptr %2, i64 10, !dbg !1307
  %285 = load i16, ptr %284, align 2, !dbg !1307, !tbaa !1279
  %286 = zext i16 %285 to i32, !dbg !1307
  %287 = getelementptr inbounds i16, ptr %1, i64 10, !dbg !1307
  %288 = load i16, ptr %287, align 2, !dbg !1307, !tbaa !1279
  %289 = zext i16 %288 to i32, !dbg !1307
  br i1 %283, label %296, label %290, !dbg !1320

290:                                              ; preds = %278
  %291 = sub nsw i32 %286, %282, !dbg !1307
  %292 = mul nsw i32 %291, %289, !dbg !1307
  %293 = lshr i32 %292, 16, !dbg !1307
  %294 = trunc i32 %293 to i16, !dbg !1307
  %295 = sub i16 0, %294, !dbg !1307
  br label %301

296:                                              ; preds = %278
  %297 = add nsw i32 %286, %282, !dbg !1307
  %298 = mul nsw i32 %297, %289, !dbg !1307
  %299 = lshr i32 %298, 16, !dbg !1307
  %300 = trunc i32 %299 to i16, !dbg !1307
  br label %301, !dbg !1307

301:                                              ; preds = %296, %290
  %302 = phi i16 [ %295, %290 ], [ %300, %296 ], !dbg !1307
  store i16 %302, ptr %280, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 11, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 11, metadata !1303, metadata !DIExpression()), !dbg !1304
  %303 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 11, !dbg !1307
  %304 = load i16, ptr %303, align 2, !dbg !1307, !tbaa !1279
  %305 = sext i16 %304 to i32, !dbg !1307
  %306 = icmp sgt i16 %304, 0, !dbg !1307
  %307 = getelementptr inbounds i16, ptr %2, i64 11, !dbg !1307
  %308 = load i16, ptr %307, align 2, !dbg !1307, !tbaa !1279
  %309 = zext i16 %308 to i32, !dbg !1307
  %310 = getelementptr inbounds i16, ptr %1, i64 11, !dbg !1307
  %311 = load i16, ptr %310, align 2, !dbg !1307, !tbaa !1279
  %312 = zext i16 %311 to i32, !dbg !1307
  br i1 %306, label %319, label %313, !dbg !1320

313:                                              ; preds = %301
  %314 = sub nsw i32 %309, %305, !dbg !1307
  %315 = mul nsw i32 %314, %312, !dbg !1307
  %316 = lshr i32 %315, 16, !dbg !1307
  %317 = trunc i32 %316 to i16, !dbg !1307
  %318 = sub i16 0, %317, !dbg !1307
  br label %324

319:                                              ; preds = %301
  %320 = add nsw i32 %309, %305, !dbg !1307
  %321 = mul nsw i32 %320, %312, !dbg !1307
  %322 = lshr i32 %321, 16, !dbg !1307
  %323 = trunc i32 %322 to i16, !dbg !1307
  br label %324, !dbg !1307

324:                                              ; preds = %319, %313
  %325 = phi i16 [ %318, %313 ], [ %323, %319 ], !dbg !1307
  store i16 %325, ptr %303, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 12, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 12, metadata !1303, metadata !DIExpression()), !dbg !1304
  %326 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 12, !dbg !1307
  %327 = load i16, ptr %326, align 2, !dbg !1307, !tbaa !1279
  %328 = sext i16 %327 to i32, !dbg !1307
  %329 = icmp sgt i16 %327, 0, !dbg !1307
  %330 = getelementptr inbounds i16, ptr %2, i64 12, !dbg !1307
  %331 = load i16, ptr %330, align 2, !dbg !1307, !tbaa !1279
  %332 = zext i16 %331 to i32, !dbg !1307
  %333 = getelementptr inbounds i16, ptr %1, i64 12, !dbg !1307
  %334 = load i16, ptr %333, align 2, !dbg !1307, !tbaa !1279
  %335 = zext i16 %334 to i32, !dbg !1307
  br i1 %329, label %342, label %336, !dbg !1320

336:                                              ; preds = %324
  %337 = sub nsw i32 %332, %328, !dbg !1307
  %338 = mul nsw i32 %337, %335, !dbg !1307
  %339 = lshr i32 %338, 16, !dbg !1307
  %340 = trunc i32 %339 to i16, !dbg !1307
  %341 = sub i16 0, %340, !dbg !1307
  br label %347

342:                                              ; preds = %324
  %343 = add nsw i32 %332, %328, !dbg !1307
  %344 = mul nsw i32 %343, %335, !dbg !1307
  %345 = lshr i32 %344, 16, !dbg !1307
  %346 = trunc i32 %345 to i16, !dbg !1307
  br label %347, !dbg !1307

347:                                              ; preds = %342, %336
  %348 = phi i16 [ %341, %336 ], [ %346, %342 ], !dbg !1307
  store i16 %348, ptr %326, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 13, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 13, metadata !1303, metadata !DIExpression()), !dbg !1304
  %349 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 13, !dbg !1307
  %350 = load i16, ptr %349, align 2, !dbg !1307, !tbaa !1279
  %351 = sext i16 %350 to i32, !dbg !1307
  %352 = icmp sgt i16 %350, 0, !dbg !1307
  %353 = getelementptr inbounds i16, ptr %2, i64 13, !dbg !1307
  %354 = load i16, ptr %353, align 2, !dbg !1307, !tbaa !1279
  %355 = zext i16 %354 to i32, !dbg !1307
  %356 = getelementptr inbounds i16, ptr %1, i64 13, !dbg !1307
  %357 = load i16, ptr %356, align 2, !dbg !1307, !tbaa !1279
  %358 = zext i16 %357 to i32, !dbg !1307
  br i1 %352, label %365, label %359, !dbg !1320

359:                                              ; preds = %347
  %360 = sub nsw i32 %355, %351, !dbg !1307
  %361 = mul nsw i32 %360, %358, !dbg !1307
  %362 = lshr i32 %361, 16, !dbg !1307
  %363 = trunc i32 %362 to i16, !dbg !1307
  %364 = sub i16 0, %363, !dbg !1307
  br label %370

365:                                              ; preds = %347
  %366 = add nsw i32 %355, %351, !dbg !1307
  %367 = mul nsw i32 %366, %358, !dbg !1307
  %368 = lshr i32 %367, 16, !dbg !1307
  %369 = trunc i32 %368 to i16, !dbg !1307
  br label %370, !dbg !1307

370:                                              ; preds = %365, %359
  %371 = phi i16 [ %364, %359 ], [ %369, %365 ], !dbg !1307
  store i16 %371, ptr %349, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 14, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 14, metadata !1303, metadata !DIExpression()), !dbg !1304
  %372 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 14, !dbg !1307
  %373 = load i16, ptr %372, align 2, !dbg !1307, !tbaa !1279
  %374 = sext i16 %373 to i32, !dbg !1307
  %375 = icmp sgt i16 %373, 0, !dbg !1307
  %376 = getelementptr inbounds i16, ptr %2, i64 14, !dbg !1307
  %377 = load i16, ptr %376, align 2, !dbg !1307, !tbaa !1279
  %378 = zext i16 %377 to i32, !dbg !1307
  %379 = getelementptr inbounds i16, ptr %1, i64 14, !dbg !1307
  %380 = load i16, ptr %379, align 2, !dbg !1307, !tbaa !1279
  %381 = zext i16 %380 to i32, !dbg !1307
  br i1 %375, label %388, label %382, !dbg !1320

382:                                              ; preds = %370
  %383 = sub nsw i32 %378, %374, !dbg !1307
  %384 = mul nsw i32 %383, %381, !dbg !1307
  %385 = lshr i32 %384, 16, !dbg !1307
  %386 = trunc i32 %385 to i16, !dbg !1307
  %387 = sub i16 0, %386, !dbg !1307
  br label %393

388:                                              ; preds = %370
  %389 = add nsw i32 %378, %374, !dbg !1307
  %390 = mul nsw i32 %389, %381, !dbg !1307
  %391 = lshr i32 %390, 16, !dbg !1307
  %392 = trunc i32 %391 to i16, !dbg !1307
  br label %393, !dbg !1307

393:                                              ; preds = %388, %382
  %394 = phi i16 [ %387, %382 ], [ %392, %388 ], !dbg !1307
  store i16 %394, ptr %372, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 15, metadata !1303, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i64 15, metadata !1303, metadata !DIExpression()), !dbg !1304
  %395 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 15, !dbg !1307
  %396 = load i16, ptr %395, align 2, !dbg !1307, !tbaa !1279
  %397 = sext i16 %396 to i32, !dbg !1307
  %398 = icmp sgt i16 %396, 0, !dbg !1307
  %399 = getelementptr inbounds i16, ptr %2, i64 15, !dbg !1307
  %400 = load i16, ptr %399, align 2, !dbg !1307, !tbaa !1279
  %401 = zext i16 %400 to i32, !dbg !1307
  %402 = getelementptr inbounds i16, ptr %1, i64 15, !dbg !1307
  %403 = load i16, ptr %402, align 2, !dbg !1307, !tbaa !1279
  %404 = zext i16 %403 to i32, !dbg !1307
  br i1 %398, label %411, label %405, !dbg !1320

405:                                              ; preds = %393
  %406 = sub nsw i32 %401, %397, !dbg !1307
  %407 = mul nsw i32 %406, %404, !dbg !1307
  %408 = lshr i32 %407, 16, !dbg !1307
  %409 = trunc i32 %408 to i16, !dbg !1307
  %410 = sub i16 0, %409, !dbg !1307
  br label %416

411:                                              ; preds = %393
  %412 = add nsw i32 %401, %397, !dbg !1307
  %413 = mul nsw i32 %412, %404, !dbg !1307
  %414 = lshr i32 %413, 16, !dbg !1307
  %415 = trunc i32 %414 to i16, !dbg !1307
  br label %416, !dbg !1307

416:                                              ; preds = %411, %405
  %417 = phi i16 [ %410, %405 ], [ %415, %411 ], !dbg !1307
  store i16 %417, ptr %395, align 2, !dbg !1307, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 16, metadata !1303, metadata !DIExpression()), !dbg !1304
  br label %418, !dbg !1319

418:                                              ; preds = %14, %416
  ret void, !dbg !1319
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @quant_4x4_dc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !1321 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1323, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 %1, metadata !1324, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 %2, metadata !1325, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 0, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 0, metadata !1326, metadata !DIExpression()), !dbg !1327
  %4 = load i16, ptr %0, align 2, !dbg !1328, !tbaa !1279
  %5 = sext i16 %4 to i32, !dbg !1328
  %6 = icmp sgt i16 %4, 0, !dbg !1328
  br i1 %6, label %7, label %12, !dbg !1333

7:                                                ; preds = %3
  %8 = add nsw i32 %5, %2, !dbg !1328
  %9 = mul nsw i32 %8, %1, !dbg !1328
  %10 = lshr i32 %9, 16, !dbg !1328
  %11 = trunc i32 %10 to i16, !dbg !1328
  br label %18, !dbg !1328

12:                                               ; preds = %3
  %13 = sub nsw i32 %2, %5, !dbg !1328
  %14 = mul nsw i32 %13, %1, !dbg !1328
  %15 = lshr i32 %14, 16, !dbg !1328
  %16 = trunc i32 %15 to i16, !dbg !1328
  %17 = sub i16 0, %16, !dbg !1328
  br label %18

18:                                               ; preds = %7, %12
  %19 = phi i16 [ %17, %12 ], [ %11, %7 ], !dbg !1328
  store i16 %19, ptr %0, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 1, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 1, metadata !1326, metadata !DIExpression()), !dbg !1327
  %20 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 1, !dbg !1328
  %21 = load i16, ptr %20, align 2, !dbg !1328, !tbaa !1279
  %22 = sext i16 %21 to i32, !dbg !1328
  %23 = icmp sgt i16 %21, 0, !dbg !1328
  br i1 %23, label %30, label %24, !dbg !1333

24:                                               ; preds = %18
  %25 = sub nsw i32 %2, %22, !dbg !1328
  %26 = mul nsw i32 %25, %1, !dbg !1328
  %27 = lshr i32 %26, 16, !dbg !1328
  %28 = trunc i32 %27 to i16, !dbg !1328
  %29 = sub i16 0, %28, !dbg !1328
  br label %35

30:                                               ; preds = %18
  %31 = add nsw i32 %22, %2, !dbg !1328
  %32 = mul nsw i32 %31, %1, !dbg !1328
  %33 = lshr i32 %32, 16, !dbg !1328
  %34 = trunc i32 %33 to i16, !dbg !1328
  br label %35, !dbg !1328

35:                                               ; preds = %30, %24
  %36 = phi i16 [ %29, %24 ], [ %34, %30 ], !dbg !1328
  store i16 %36, ptr %20, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 2, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 2, metadata !1326, metadata !DIExpression()), !dbg !1327
  %37 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 2, !dbg !1328
  %38 = load i16, ptr %37, align 2, !dbg !1328, !tbaa !1279
  %39 = sext i16 %38 to i32, !dbg !1328
  %40 = icmp sgt i16 %38, 0, !dbg !1328
  br i1 %40, label %47, label %41, !dbg !1333

41:                                               ; preds = %35
  %42 = sub nsw i32 %2, %39, !dbg !1328
  %43 = mul nsw i32 %42, %1, !dbg !1328
  %44 = lshr i32 %43, 16, !dbg !1328
  %45 = trunc i32 %44 to i16, !dbg !1328
  %46 = sub i16 0, %45, !dbg !1328
  br label %52

47:                                               ; preds = %35
  %48 = add nsw i32 %39, %2, !dbg !1328
  %49 = mul nsw i32 %48, %1, !dbg !1328
  %50 = lshr i32 %49, 16, !dbg !1328
  %51 = trunc i32 %50 to i16, !dbg !1328
  br label %52, !dbg !1328

52:                                               ; preds = %47, %41
  %53 = phi i16 [ %46, %41 ], [ %51, %47 ], !dbg !1328
  store i16 %53, ptr %37, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 3, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 3, metadata !1326, metadata !DIExpression()), !dbg !1327
  %54 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 3, !dbg !1328
  %55 = load i16, ptr %54, align 2, !dbg !1328, !tbaa !1279
  %56 = sext i16 %55 to i32, !dbg !1328
  %57 = icmp sgt i16 %55, 0, !dbg !1328
  br i1 %57, label %64, label %58, !dbg !1333

58:                                               ; preds = %52
  %59 = sub nsw i32 %2, %56, !dbg !1328
  %60 = mul nsw i32 %59, %1, !dbg !1328
  %61 = lshr i32 %60, 16, !dbg !1328
  %62 = trunc i32 %61 to i16, !dbg !1328
  %63 = sub i16 0, %62, !dbg !1328
  br label %69

64:                                               ; preds = %52
  %65 = add nsw i32 %56, %2, !dbg !1328
  %66 = mul nsw i32 %65, %1, !dbg !1328
  %67 = lshr i32 %66, 16, !dbg !1328
  %68 = trunc i32 %67 to i16, !dbg !1328
  br label %69, !dbg !1328

69:                                               ; preds = %64, %58
  %70 = phi i16 [ %63, %58 ], [ %68, %64 ], !dbg !1328
  store i16 %70, ptr %54, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 4, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 4, metadata !1326, metadata !DIExpression()), !dbg !1327
  %71 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 4, !dbg !1328
  %72 = load i16, ptr %71, align 2, !dbg !1328, !tbaa !1279
  %73 = sext i16 %72 to i32, !dbg !1328
  %74 = icmp sgt i16 %72, 0, !dbg !1328
  br i1 %74, label %81, label %75, !dbg !1333

75:                                               ; preds = %69
  %76 = sub nsw i32 %2, %73, !dbg !1328
  %77 = mul nsw i32 %76, %1, !dbg !1328
  %78 = lshr i32 %77, 16, !dbg !1328
  %79 = trunc i32 %78 to i16, !dbg !1328
  %80 = sub i16 0, %79, !dbg !1328
  br label %86

81:                                               ; preds = %69
  %82 = add nsw i32 %73, %2, !dbg !1328
  %83 = mul nsw i32 %82, %1, !dbg !1328
  %84 = lshr i32 %83, 16, !dbg !1328
  %85 = trunc i32 %84 to i16, !dbg !1328
  br label %86, !dbg !1328

86:                                               ; preds = %81, %75
  %87 = phi i16 [ %80, %75 ], [ %85, %81 ], !dbg !1328
  store i16 %87, ptr %71, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 5, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 5, metadata !1326, metadata !DIExpression()), !dbg !1327
  %88 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 5, !dbg !1328
  %89 = load i16, ptr %88, align 2, !dbg !1328, !tbaa !1279
  %90 = sext i16 %89 to i32, !dbg !1328
  %91 = icmp sgt i16 %89, 0, !dbg !1328
  br i1 %91, label %98, label %92, !dbg !1333

92:                                               ; preds = %86
  %93 = sub nsw i32 %2, %90, !dbg !1328
  %94 = mul nsw i32 %93, %1, !dbg !1328
  %95 = lshr i32 %94, 16, !dbg !1328
  %96 = trunc i32 %95 to i16, !dbg !1328
  %97 = sub i16 0, %96, !dbg !1328
  br label %103

98:                                               ; preds = %86
  %99 = add nsw i32 %90, %2, !dbg !1328
  %100 = mul nsw i32 %99, %1, !dbg !1328
  %101 = lshr i32 %100, 16, !dbg !1328
  %102 = trunc i32 %101 to i16, !dbg !1328
  br label %103, !dbg !1328

103:                                              ; preds = %98, %92
  %104 = phi i16 [ %97, %92 ], [ %102, %98 ], !dbg !1328
  store i16 %104, ptr %88, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 6, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 6, metadata !1326, metadata !DIExpression()), !dbg !1327
  %105 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 6, !dbg !1328
  %106 = load i16, ptr %105, align 2, !dbg !1328, !tbaa !1279
  %107 = sext i16 %106 to i32, !dbg !1328
  %108 = icmp sgt i16 %106, 0, !dbg !1328
  br i1 %108, label %115, label %109, !dbg !1333

109:                                              ; preds = %103
  %110 = sub nsw i32 %2, %107, !dbg !1328
  %111 = mul nsw i32 %110, %1, !dbg !1328
  %112 = lshr i32 %111, 16, !dbg !1328
  %113 = trunc i32 %112 to i16, !dbg !1328
  %114 = sub i16 0, %113, !dbg !1328
  br label %120

115:                                              ; preds = %103
  %116 = add nsw i32 %107, %2, !dbg !1328
  %117 = mul nsw i32 %116, %1, !dbg !1328
  %118 = lshr i32 %117, 16, !dbg !1328
  %119 = trunc i32 %118 to i16, !dbg !1328
  br label %120, !dbg !1328

120:                                              ; preds = %115, %109
  %121 = phi i16 [ %114, %109 ], [ %119, %115 ], !dbg !1328
  store i16 %121, ptr %105, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 7, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 7, metadata !1326, metadata !DIExpression()), !dbg !1327
  %122 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 7, !dbg !1328
  %123 = load i16, ptr %122, align 2, !dbg !1328, !tbaa !1279
  %124 = sext i16 %123 to i32, !dbg !1328
  %125 = icmp sgt i16 %123, 0, !dbg !1328
  br i1 %125, label %132, label %126, !dbg !1333

126:                                              ; preds = %120
  %127 = sub nsw i32 %2, %124, !dbg !1328
  %128 = mul nsw i32 %127, %1, !dbg !1328
  %129 = lshr i32 %128, 16, !dbg !1328
  %130 = trunc i32 %129 to i16, !dbg !1328
  %131 = sub i16 0, %130, !dbg !1328
  br label %137

132:                                              ; preds = %120
  %133 = add nsw i32 %124, %2, !dbg !1328
  %134 = mul nsw i32 %133, %1, !dbg !1328
  %135 = lshr i32 %134, 16, !dbg !1328
  %136 = trunc i32 %135 to i16, !dbg !1328
  br label %137, !dbg !1328

137:                                              ; preds = %132, %126
  %138 = phi i16 [ %131, %126 ], [ %136, %132 ], !dbg !1328
  store i16 %138, ptr %122, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 8, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 8, metadata !1326, metadata !DIExpression()), !dbg !1327
  %139 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 8, !dbg !1328
  %140 = load i16, ptr %139, align 2, !dbg !1328, !tbaa !1279
  %141 = sext i16 %140 to i32, !dbg !1328
  %142 = icmp sgt i16 %140, 0, !dbg !1328
  br i1 %142, label %149, label %143, !dbg !1333

143:                                              ; preds = %137
  %144 = sub nsw i32 %2, %141, !dbg !1328
  %145 = mul nsw i32 %144, %1, !dbg !1328
  %146 = lshr i32 %145, 16, !dbg !1328
  %147 = trunc i32 %146 to i16, !dbg !1328
  %148 = sub i16 0, %147, !dbg !1328
  br label %154

149:                                              ; preds = %137
  %150 = add nsw i32 %141, %2, !dbg !1328
  %151 = mul nsw i32 %150, %1, !dbg !1328
  %152 = lshr i32 %151, 16, !dbg !1328
  %153 = trunc i32 %152 to i16, !dbg !1328
  br label %154, !dbg !1328

154:                                              ; preds = %149, %143
  %155 = phi i16 [ %148, %143 ], [ %153, %149 ], !dbg !1328
  store i16 %155, ptr %139, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 9, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 9, metadata !1326, metadata !DIExpression()), !dbg !1327
  %156 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 9, !dbg !1328
  %157 = load i16, ptr %156, align 2, !dbg !1328, !tbaa !1279
  %158 = sext i16 %157 to i32, !dbg !1328
  %159 = icmp sgt i16 %157, 0, !dbg !1328
  br i1 %159, label %166, label %160, !dbg !1333

160:                                              ; preds = %154
  %161 = sub nsw i32 %2, %158, !dbg !1328
  %162 = mul nsw i32 %161, %1, !dbg !1328
  %163 = lshr i32 %162, 16, !dbg !1328
  %164 = trunc i32 %163 to i16, !dbg !1328
  %165 = sub i16 0, %164, !dbg !1328
  br label %171

166:                                              ; preds = %154
  %167 = add nsw i32 %158, %2, !dbg !1328
  %168 = mul nsw i32 %167, %1, !dbg !1328
  %169 = lshr i32 %168, 16, !dbg !1328
  %170 = trunc i32 %169 to i16, !dbg !1328
  br label %171, !dbg !1328

171:                                              ; preds = %166, %160
  %172 = phi i16 [ %165, %160 ], [ %170, %166 ], !dbg !1328
  store i16 %172, ptr %156, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 10, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 10, metadata !1326, metadata !DIExpression()), !dbg !1327
  %173 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 10, !dbg !1328
  %174 = load i16, ptr %173, align 2, !dbg !1328, !tbaa !1279
  %175 = sext i16 %174 to i32, !dbg !1328
  %176 = icmp sgt i16 %174, 0, !dbg !1328
  br i1 %176, label %183, label %177, !dbg !1333

177:                                              ; preds = %171
  %178 = sub nsw i32 %2, %175, !dbg !1328
  %179 = mul nsw i32 %178, %1, !dbg !1328
  %180 = lshr i32 %179, 16, !dbg !1328
  %181 = trunc i32 %180 to i16, !dbg !1328
  %182 = sub i16 0, %181, !dbg !1328
  br label %188

183:                                              ; preds = %171
  %184 = add nsw i32 %175, %2, !dbg !1328
  %185 = mul nsw i32 %184, %1, !dbg !1328
  %186 = lshr i32 %185, 16, !dbg !1328
  %187 = trunc i32 %186 to i16, !dbg !1328
  br label %188, !dbg !1328

188:                                              ; preds = %183, %177
  %189 = phi i16 [ %182, %177 ], [ %187, %183 ], !dbg !1328
  store i16 %189, ptr %173, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 11, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 11, metadata !1326, metadata !DIExpression()), !dbg !1327
  %190 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 11, !dbg !1328
  %191 = load i16, ptr %190, align 2, !dbg !1328, !tbaa !1279
  %192 = sext i16 %191 to i32, !dbg !1328
  %193 = icmp sgt i16 %191, 0, !dbg !1328
  br i1 %193, label %200, label %194, !dbg !1333

194:                                              ; preds = %188
  %195 = sub nsw i32 %2, %192, !dbg !1328
  %196 = mul nsw i32 %195, %1, !dbg !1328
  %197 = lshr i32 %196, 16, !dbg !1328
  %198 = trunc i32 %197 to i16, !dbg !1328
  %199 = sub i16 0, %198, !dbg !1328
  br label %205

200:                                              ; preds = %188
  %201 = add nsw i32 %192, %2, !dbg !1328
  %202 = mul nsw i32 %201, %1, !dbg !1328
  %203 = lshr i32 %202, 16, !dbg !1328
  %204 = trunc i32 %203 to i16, !dbg !1328
  br label %205, !dbg !1328

205:                                              ; preds = %200, %194
  %206 = phi i16 [ %199, %194 ], [ %204, %200 ], !dbg !1328
  store i16 %206, ptr %190, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 12, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 12, metadata !1326, metadata !DIExpression()), !dbg !1327
  %207 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 12, !dbg !1328
  %208 = load i16, ptr %207, align 2, !dbg !1328, !tbaa !1279
  %209 = sext i16 %208 to i32, !dbg !1328
  %210 = icmp sgt i16 %208, 0, !dbg !1328
  br i1 %210, label %217, label %211, !dbg !1333

211:                                              ; preds = %205
  %212 = sub nsw i32 %2, %209, !dbg !1328
  %213 = mul nsw i32 %212, %1, !dbg !1328
  %214 = lshr i32 %213, 16, !dbg !1328
  %215 = trunc i32 %214 to i16, !dbg !1328
  %216 = sub i16 0, %215, !dbg !1328
  br label %222

217:                                              ; preds = %205
  %218 = add nsw i32 %209, %2, !dbg !1328
  %219 = mul nsw i32 %218, %1, !dbg !1328
  %220 = lshr i32 %219, 16, !dbg !1328
  %221 = trunc i32 %220 to i16, !dbg !1328
  br label %222, !dbg !1328

222:                                              ; preds = %217, %211
  %223 = phi i16 [ %216, %211 ], [ %221, %217 ], !dbg !1328
  store i16 %223, ptr %207, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 13, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 13, metadata !1326, metadata !DIExpression()), !dbg !1327
  %224 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 13, !dbg !1328
  %225 = load i16, ptr %224, align 2, !dbg !1328, !tbaa !1279
  %226 = sext i16 %225 to i32, !dbg !1328
  %227 = icmp sgt i16 %225, 0, !dbg !1328
  br i1 %227, label %234, label %228, !dbg !1333

228:                                              ; preds = %222
  %229 = sub nsw i32 %2, %226, !dbg !1328
  %230 = mul nsw i32 %229, %1, !dbg !1328
  %231 = lshr i32 %230, 16, !dbg !1328
  %232 = trunc i32 %231 to i16, !dbg !1328
  %233 = sub i16 0, %232, !dbg !1328
  br label %239

234:                                              ; preds = %222
  %235 = add nsw i32 %226, %2, !dbg !1328
  %236 = mul nsw i32 %235, %1, !dbg !1328
  %237 = lshr i32 %236, 16, !dbg !1328
  %238 = trunc i32 %237 to i16, !dbg !1328
  br label %239, !dbg !1328

239:                                              ; preds = %234, %228
  %240 = phi i16 [ %233, %228 ], [ %238, %234 ], !dbg !1328
  store i16 %240, ptr %224, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 14, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 14, metadata !1326, metadata !DIExpression()), !dbg !1327
  %241 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 14, !dbg !1328
  %242 = load i16, ptr %241, align 2, !dbg !1328, !tbaa !1279
  %243 = sext i16 %242 to i32, !dbg !1328
  %244 = icmp sgt i16 %242, 0, !dbg !1328
  br i1 %244, label %251, label %245, !dbg !1333

245:                                              ; preds = %239
  %246 = sub nsw i32 %2, %243, !dbg !1328
  %247 = mul nsw i32 %246, %1, !dbg !1328
  %248 = lshr i32 %247, 16, !dbg !1328
  %249 = trunc i32 %248 to i16, !dbg !1328
  %250 = sub i16 0, %249, !dbg !1328
  br label %256

251:                                              ; preds = %239
  %252 = add nsw i32 %243, %2, !dbg !1328
  %253 = mul nsw i32 %252, %1, !dbg !1328
  %254 = lshr i32 %253, 16, !dbg !1328
  %255 = trunc i32 %254 to i16, !dbg !1328
  br label %256, !dbg !1328

256:                                              ; preds = %251, %245
  %257 = phi i16 [ %250, %245 ], [ %255, %251 ], !dbg !1328
  store i16 %257, ptr %241, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 15, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i64 15, metadata !1326, metadata !DIExpression()), !dbg !1327
  %258 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 15, !dbg !1328
  %259 = load i16, ptr %258, align 2, !dbg !1328, !tbaa !1279
  %260 = sext i16 %259 to i32, !dbg !1328
  %261 = icmp sgt i16 %259, 0, !dbg !1328
  br i1 %261, label %268, label %262, !dbg !1333

262:                                              ; preds = %256
  %263 = sub nsw i32 %2, %260, !dbg !1328
  %264 = mul nsw i32 %263, %1, !dbg !1328
  %265 = lshr i32 %264, 16, !dbg !1328
  %266 = trunc i32 %265 to i16, !dbg !1328
  %267 = sub i16 0, %266, !dbg !1328
  br label %273

268:                                              ; preds = %256
  %269 = add nsw i32 %260, %2, !dbg !1328
  %270 = mul nsw i32 %269, %1, !dbg !1328
  %271 = lshr i32 %270, 16, !dbg !1328
  %272 = trunc i32 %271 to i16, !dbg !1328
  br label %273, !dbg !1328

273:                                              ; preds = %268, %262
  %274 = phi i16 [ %267, %262 ], [ %272, %268 ], !dbg !1328
  store i16 %274, ptr %258, align 2, !dbg !1328, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 16, metadata !1326, metadata !DIExpression()), !dbg !1327
  ret void, !dbg !1334
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @quant_2x2_dc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1335 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1337, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i32 %1, metadata !1338, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i32 %2, metadata !1339, metadata !DIExpression()), !dbg !1340
  %4 = load i16, ptr %0, align 2, !dbg !1341, !tbaa !1279
  %5 = sext i16 %4 to i32, !dbg !1341
  %6 = icmp sgt i16 %4, 0, !dbg !1341
  br i1 %6, label %7, label %12, !dbg !1344

7:                                                ; preds = %3
  %8 = add nsw i32 %5, %2, !dbg !1341
  %9 = mul nsw i32 %8, %1, !dbg !1341
  %10 = lshr i32 %9, 16, !dbg !1341
  %11 = trunc i32 %10 to i16, !dbg !1341
  br label %18, !dbg !1341

12:                                               ; preds = %3
  %13 = sub nsw i32 %2, %5, !dbg !1341
  %14 = mul nsw i32 %13, %1, !dbg !1341
  %15 = lshr i32 %14, 16, !dbg !1341
  %16 = trunc i32 %15 to i16, !dbg !1341
  %17 = sub i16 0, %16, !dbg !1341
  br label %18

18:                                               ; preds = %12, %7
  %19 = phi i16 [ %17, %12 ], [ %11, %7 ], !dbg !1341
  store i16 %19, ptr %0, align 2, !dbg !1341, !tbaa !1279
  %20 = getelementptr inbounds [2 x i16], ptr %0, i64 0, i64 1, !dbg !1345
  %21 = load i16, ptr %20, align 2, !dbg !1345, !tbaa !1279
  %22 = sext i16 %21 to i32, !dbg !1345
  %23 = icmp sgt i16 %21, 0, !dbg !1345
  br i1 %23, label %24, label %29, !dbg !1348

24:                                               ; preds = %18
  %25 = add nsw i32 %22, %2, !dbg !1345
  %26 = mul nsw i32 %25, %1, !dbg !1345
  %27 = lshr i32 %26, 16, !dbg !1345
  %28 = trunc i32 %27 to i16, !dbg !1345
  br label %35, !dbg !1345

29:                                               ; preds = %18
  %30 = sub nsw i32 %2, %22, !dbg !1345
  %31 = mul nsw i32 %30, %1, !dbg !1345
  %32 = lshr i32 %31, 16, !dbg !1345
  %33 = trunc i32 %32 to i16, !dbg !1345
  %34 = sub i16 0, %33, !dbg !1345
  br label %35

35:                                               ; preds = %29, %24
  %36 = phi i16 [ %34, %29 ], [ %28, %24 ], !dbg !1345
  store i16 %36, ptr %20, align 2, !dbg !1345, !tbaa !1279
  %37 = getelementptr inbounds [2 x i16], ptr %0, i64 0, i64 2, !dbg !1349
  %38 = load i16, ptr %37, align 2, !dbg !1349, !tbaa !1279
  %39 = sext i16 %38 to i32, !dbg !1349
  %40 = icmp sgt i16 %38, 0, !dbg !1349
  br i1 %40, label %41, label %46, !dbg !1352

41:                                               ; preds = %35
  %42 = add nsw i32 %39, %2, !dbg !1349
  %43 = mul nsw i32 %42, %1, !dbg !1349
  %44 = lshr i32 %43, 16, !dbg !1349
  %45 = trunc i32 %44 to i16, !dbg !1349
  br label %52, !dbg !1349

46:                                               ; preds = %35
  %47 = sub nsw i32 %2, %39, !dbg !1349
  %48 = mul nsw i32 %47, %1, !dbg !1349
  %49 = lshr i32 %48, 16, !dbg !1349
  %50 = trunc i32 %49 to i16, !dbg !1349
  %51 = sub i16 0, %50, !dbg !1349
  br label %52

52:                                               ; preds = %46, %41
  %53 = phi i16 [ %51, %46 ], [ %45, %41 ], !dbg !1349
  store i16 %53, ptr %37, align 2, !dbg !1349, !tbaa !1279
  %54 = getelementptr inbounds [2 x i16], ptr %0, i64 0, i64 3, !dbg !1353
  %55 = load i16, ptr %54, align 2, !dbg !1353, !tbaa !1279
  %56 = sext i16 %55 to i32, !dbg !1353
  %57 = icmp sgt i16 %55, 0, !dbg !1353
  br i1 %57, label %58, label %63, !dbg !1356

58:                                               ; preds = %52
  %59 = add nsw i32 %56, %2, !dbg !1353
  %60 = mul nsw i32 %59, %1, !dbg !1353
  %61 = lshr i32 %60, 16, !dbg !1353
  %62 = trunc i32 %61 to i16, !dbg !1353
  br label %69, !dbg !1353

63:                                               ; preds = %52
  %64 = sub nsw i32 %2, %56, !dbg !1353
  %65 = mul nsw i32 %64, %1, !dbg !1353
  %66 = lshr i32 %65, 16, !dbg !1353
  %67 = trunc i32 %66 to i16, !dbg !1353
  %68 = sub i16 0, %67, !dbg !1353
  br label %69

69:                                               ; preds = %63, %58
  %70 = phi i16 [ %68, %63 ], [ %62, %58 ], !dbg !1353
  store i16 %70, ptr %54, align 2, !dbg !1353, !tbaa !1279
  ret void, !dbg !1357
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @dequant_4x4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 !dbg !1358 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1360, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata ptr %1, metadata !1361, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 %2, metadata !1362, metadata !DIExpression()), !dbg !1370
  %4 = srem i32 %2, 6, !dbg !1371
  call void @llvm.dbg.value(metadata i32 %4, metadata !1363, metadata !DIExpression()), !dbg !1370
  %5 = sdiv i32 %2, 6, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %5, metadata !1365, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1370
  %6 = icmp sgt i32 %2, 23, !dbg !1373
  br i1 %6, label %7, label %60, !dbg !1374

7:                                                ; preds = %3
  %8 = add nsw i32 %5, -4, !dbg !1375
  call void @llvm.dbg.value(metadata i32 %8, metadata !1365, metadata !DIExpression()), !dbg !1370
  %9 = sext i32 %4 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !1366, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i64 0, metadata !1366, metadata !DIExpression()), !dbg !1370
  %10 = getelementptr inbounds [4 x [4 x i32]], ptr %1, i64 %9, i64 0, !dbg !1376
  call void @llvm.dbg.value(metadata i64 1, metadata !1366, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i64 1, metadata !1366, metadata !DIExpression()), !dbg !1370
  %11 = load <8 x i16>, ptr %0, align 2, !dbg !1376, !tbaa !1279
  %12 = zext <8 x i16> %11 to <8 x i32>, !dbg !1376
  %13 = load <8 x i32>, ptr %10, align 4, !dbg !1376, !tbaa !1381
  %14 = mul <8 x i32> %13, %12, !dbg !1376
  %15 = insertelement <8 x i32> poison, i32 %8, i64 0, !dbg !1382
  %16 = shufflevector <8 x i32> %15, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !1382
  %17 = shl <8 x i32> %14, %16, !dbg !1376
  %18 = trunc <8 x i32> %17 to <8 x i16>, !dbg !1376
  store <8 x i16> %18, ptr %0, align 2, !dbg !1376, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 2, metadata !1366, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i64 2, metadata !1366, metadata !DIExpression()), !dbg !1370
  %19 = getelementptr inbounds [4 x i16], ptr %0, i64 2, !dbg !1376
  %20 = getelementptr inbounds [4 x [4 x i32]], ptr %1, i64 %9, i64 2, !dbg !1376
  %21 = load <4 x i16>, ptr %19, align 2, !dbg !1376, !tbaa !1279
  %22 = zext <4 x i16> %21 to <4 x i32>, !dbg !1376
  %23 = load <4 x i32>, ptr %20, align 4, !dbg !1376, !tbaa !1381
  %24 = mul <4 x i32> %23, %22, !dbg !1376
  %25 = insertelement <4 x i32> poison, i32 %8, i64 0, !dbg !1382
  %26 = shufflevector <4 x i32> %25, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1382
  %27 = shl <4 x i32> %24, %26, !dbg !1376
  %28 = trunc <4 x i32> %27 to <4 x i16>, !dbg !1376
  store <4 x i16> %28, ptr %19, align 2, !dbg !1376, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 3, metadata !1366, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i64 3, metadata !1366, metadata !DIExpression()), !dbg !1370
  %29 = getelementptr inbounds [4 x i16], ptr %0, i64 3, !dbg !1376
  %30 = load i16, ptr %29, align 2, !dbg !1376, !tbaa !1279
  %31 = zext i16 %30 to i32, !dbg !1376
  %32 = getelementptr inbounds [4 x [4 x i32]], ptr %1, i64 %9, i64 3, !dbg !1376
  %33 = load i32, ptr %32, align 4, !dbg !1376, !tbaa !1381
  %34 = mul i32 %33, %31, !dbg !1376
  %35 = shl i32 %34, %8, !dbg !1376
  %36 = trunc i32 %35 to i16, !dbg !1376
  store i16 %36, ptr %29, align 2, !dbg !1376, !tbaa !1279
  %37 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 1, !dbg !1383
  %38 = load i16, ptr %37, align 2, !dbg !1383, !tbaa !1279
  %39 = zext i16 %38 to i32, !dbg !1383
  %40 = getelementptr inbounds [4 x [4 x i32]], ptr %1, i64 %9, i64 3, i64 1, !dbg !1383
  %41 = load i32, ptr %40, align 4, !dbg !1383, !tbaa !1381
  %42 = mul i32 %41, %39, !dbg !1383
  %43 = shl i32 %42, %8, !dbg !1383
  %44 = trunc i32 %43 to i16, !dbg !1383
  store i16 %44, ptr %37, align 2, !dbg !1383, !tbaa !1279
  %45 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 2, !dbg !1384
  %46 = load i16, ptr %45, align 2, !dbg !1384, !tbaa !1279
  %47 = zext i16 %46 to i32, !dbg !1384
  %48 = getelementptr inbounds [4 x [4 x i32]], ptr %1, i64 %9, i64 3, i64 2, !dbg !1384
  %49 = load i32, ptr %48, align 4, !dbg !1384, !tbaa !1381
  %50 = mul i32 %49, %47, !dbg !1384
  %51 = shl i32 %50, %8, !dbg !1384
  %52 = trunc i32 %51 to i16, !dbg !1384
  store i16 %52, ptr %45, align 2, !dbg !1384, !tbaa !1279
  %53 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 3, !dbg !1382
  %54 = load i16, ptr %53, align 2, !dbg !1382, !tbaa !1279
  %55 = zext i16 %54 to i32, !dbg !1382
  %56 = getelementptr inbounds [4 x [4 x i32]], ptr %1, i64 %9, i64 3, i64 3, !dbg !1382
  %57 = load i32, ptr %56, align 4, !dbg !1382, !tbaa !1381
  %58 = mul i32 %57, %55, !dbg !1382
  %59 = shl i32 %58, %8, !dbg !1382
  call void @llvm.dbg.value(metadata i64 4, metadata !1366, metadata !DIExpression()), !dbg !1370
  br label %125, !dbg !1385

60:                                               ; preds = %3
  %61 = sub nsw i32 4, %5, !dbg !1386
  %62 = sub nsw i32 3, %5, !dbg !1387
  %63 = shl nuw i32 1, %62, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %63, metadata !1367, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 0, metadata !1366, metadata !DIExpression()), !dbg !1370
  %64 = sext i32 %4 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !1366, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i64 0, metadata !1366, metadata !DIExpression()), !dbg !1370
  %65 = getelementptr inbounds [4 x [4 x i32]], ptr %1, i64 %64, i64 0, !dbg !1390
  call void @llvm.dbg.value(metadata i64 1, metadata !1366, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i64 1, metadata !1366, metadata !DIExpression()), !dbg !1370
  %66 = load <8 x i16>, ptr %0, align 2, !dbg !1390, !tbaa !1279
  %67 = sext <8 x i16> %66 to <8 x i32>, !dbg !1390
  %68 = load <8 x i32>, ptr %65, align 4, !dbg !1390, !tbaa !1381
  %69 = mul nsw <8 x i32> %68, %67, !dbg !1390
  %70 = insertelement <8 x i32> poison, i32 %63, i64 0, !dbg !1394
  %71 = shufflevector <8 x i32> %70, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !1394
  %72 = add nsw <8 x i32> %69, %71, !dbg !1390
  %73 = insertelement <8 x i32> poison, i32 %61, i64 0, !dbg !1394
  %74 = shufflevector <8 x i32> %73, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !1394
  %75 = ashr <8 x i32> %72, %74, !dbg !1390
  %76 = trunc <8 x i32> %75 to <8 x i16>, !dbg !1390
  store <8 x i16> %76, ptr %0, align 2, !dbg !1390, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 2, metadata !1366, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i64 2, metadata !1366, metadata !DIExpression()), !dbg !1370
  %77 = getelementptr inbounds [4 x i16], ptr %0, i64 2, !dbg !1390
  %78 = getelementptr inbounds [4 x [4 x i32]], ptr %1, i64 %64, i64 2, !dbg !1390
  %79 = load <4 x i16>, ptr %77, align 2, !dbg !1390, !tbaa !1279
  %80 = sext <4 x i16> %79 to <4 x i32>, !dbg !1390
  %81 = load <4 x i32>, ptr %78, align 4, !dbg !1390, !tbaa !1381
  %82 = mul nsw <4 x i32> %81, %80, !dbg !1390
  %83 = insertelement <4 x i32> poison, i32 %63, i64 0, !dbg !1394
  %84 = shufflevector <4 x i32> %83, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1394
  %85 = add nsw <4 x i32> %82, %84, !dbg !1390
  %86 = insertelement <4 x i32> poison, i32 %61, i64 0, !dbg !1394
  %87 = shufflevector <4 x i32> %86, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1394
  %88 = ashr <4 x i32> %85, %87, !dbg !1390
  %89 = trunc <4 x i32> %88 to <4 x i16>, !dbg !1390
  store <4 x i16> %89, ptr %77, align 2, !dbg !1390, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 3, metadata !1366, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i64 3, metadata !1366, metadata !DIExpression()), !dbg !1370
  %90 = getelementptr inbounds [4 x i16], ptr %0, i64 3, !dbg !1390
  %91 = load i16, ptr %90, align 2, !dbg !1390, !tbaa !1279
  %92 = sext i16 %91 to i32, !dbg !1390
  %93 = getelementptr inbounds [4 x [4 x i32]], ptr %1, i64 %64, i64 3, !dbg !1390
  %94 = load i32, ptr %93, align 4, !dbg !1390, !tbaa !1381
  %95 = mul nsw i32 %94, %92, !dbg !1390
  %96 = add nsw i32 %95, %63, !dbg !1390
  %97 = ashr i32 %96, %61, !dbg !1390
  %98 = trunc i32 %97 to i16, !dbg !1390
  store i16 %98, ptr %90, align 2, !dbg !1390, !tbaa !1279
  %99 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 1, !dbg !1395
  %100 = load i16, ptr %99, align 2, !dbg !1395, !tbaa !1279
  %101 = sext i16 %100 to i32, !dbg !1395
  %102 = getelementptr inbounds [4 x [4 x i32]], ptr %1, i64 %64, i64 3, i64 1, !dbg !1395
  %103 = load i32, ptr %102, align 4, !dbg !1395, !tbaa !1381
  %104 = mul nsw i32 %103, %101, !dbg !1395
  %105 = add nsw i32 %104, %63, !dbg !1395
  %106 = ashr i32 %105, %61, !dbg !1395
  %107 = trunc i32 %106 to i16, !dbg !1395
  store i16 %107, ptr %99, align 2, !dbg !1395, !tbaa !1279
  %108 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 2, !dbg !1396
  %109 = load i16, ptr %108, align 2, !dbg !1396, !tbaa !1279
  %110 = sext i16 %109 to i32, !dbg !1396
  %111 = getelementptr inbounds [4 x [4 x i32]], ptr %1, i64 %64, i64 3, i64 2, !dbg !1396
  %112 = load i32, ptr %111, align 4, !dbg !1396, !tbaa !1381
  %113 = mul nsw i32 %112, %110, !dbg !1396
  %114 = add nsw i32 %113, %63, !dbg !1396
  %115 = ashr i32 %114, %61, !dbg !1396
  %116 = trunc i32 %115 to i16, !dbg !1396
  store i16 %116, ptr %108, align 2, !dbg !1396, !tbaa !1279
  %117 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 3, !dbg !1394
  %118 = load i16, ptr %117, align 2, !dbg !1394, !tbaa !1279
  %119 = sext i16 %118 to i32, !dbg !1394
  %120 = getelementptr inbounds [4 x [4 x i32]], ptr %1, i64 %64, i64 3, i64 3, !dbg !1394
  %121 = load i32, ptr %120, align 4, !dbg !1394, !tbaa !1381
  %122 = mul nsw i32 %121, %119, !dbg !1394
  %123 = add nsw i32 %122, %63, !dbg !1394
  %124 = ashr i32 %123, %61, !dbg !1394
  call void @llvm.dbg.value(metadata i64 4, metadata !1366, metadata !DIExpression()), !dbg !1370
  br label %125, !dbg !1385

125:                                              ; preds = %60, %7
  %126 = phi i32 [ %124, %60 ], [ %59, %7 ]
  %127 = phi ptr [ %117, %60 ], [ %53, %7 ]
  %128 = trunc i32 %126 to i16, !dbg !1397
  store i16 %128, ptr %127, align 2, !dbg !1397, !tbaa !1279
  ret void, !dbg !1385
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @dequant_4x4_dc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 !dbg !1398 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1400, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata ptr %1, metadata !1401, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i32 %2, metadata !1402, metadata !DIExpression()), !dbg !1411
  %4 = sdiv i32 %2, 6, !dbg !1412
  %5 = srem i32 %2, 6, !dbg !1413
  call void @llvm.dbg.value(metadata i32 %4, metadata !1403, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !1411
  %6 = icmp sgt i32 %2, 35, !dbg !1414
  %7 = load i16, ptr %0, align 2, !dbg !1415, !tbaa !1279
  br i1 %6, label %8, label %44, !dbg !1416

8:                                                ; preds = %3
  %9 = add nsw i32 %4, -6, !dbg !1417
  call void @llvm.dbg.value(metadata i32 %9, metadata !1403, metadata !DIExpression()), !dbg !1411
  %10 = urem i32 %2, 6, !dbg !1418
  %11 = zext i32 %10 to i64, !dbg !1419
  %12 = getelementptr inbounds [4 x [4 x i32]], ptr %1, i64 %11, !dbg !1419
  %13 = load i32, ptr %12, align 4, !dbg !1419, !tbaa !1381
  %14 = shl i32 %13, %9, !dbg !1420
  call void @llvm.dbg.value(metadata i32 %14, metadata !1405, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 0, metadata !1404, metadata !DIExpression()), !dbg !1411
  %15 = trunc i32 %14 to i16
  call void @llvm.dbg.value(metadata i32 0, metadata !1404, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 0, metadata !1404, metadata !DIExpression()), !dbg !1411
  %16 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 1, !dbg !1422
  %17 = load i16, ptr %16, align 2, !dbg !1426, !tbaa !1279
  %18 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 2, !dbg !1427
  %19 = load i16, ptr %18, align 2, !dbg !1428, !tbaa !1279
  %20 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 3, !dbg !1429
  %21 = load i16, ptr %20, align 2, !dbg !1430, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 1, metadata !1404, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 1, metadata !1404, metadata !DIExpression()), !dbg !1411
  %22 = getelementptr inbounds [4 x i16], ptr %0, i64 1, !dbg !1431
  %23 = load i16, ptr %22, align 2, !dbg !1432, !tbaa !1279
  %24 = getelementptr inbounds [4 x i16], ptr %0, i64 1, i64 1, !dbg !1422
  %25 = load i16, ptr %24, align 2, !dbg !1426, !tbaa !1279
  %26 = getelementptr inbounds [4 x i16], ptr %0, i64 1, i64 2, !dbg !1427
  %27 = load i16, ptr %26, align 2, !dbg !1428, !tbaa !1279
  %28 = getelementptr inbounds [4 x i16], ptr %0, i64 1, i64 3, !dbg !1429
  %29 = load i16, ptr %28, align 2, !dbg !1430, !tbaa !1279
  %30 = insertelement <8 x i16> poison, i16 %7, i64 0, !dbg !1430
  %31 = insertelement <8 x i16> %30, i16 %17, i64 1, !dbg !1430
  %32 = insertelement <8 x i16> %31, i16 %19, i64 2, !dbg !1430
  %33 = insertelement <8 x i16> %32, i16 %21, i64 3, !dbg !1430
  %34 = insertelement <8 x i16> %33, i16 %23, i64 4, !dbg !1430
  %35 = insertelement <8 x i16> %34, i16 %25, i64 5, !dbg !1430
  %36 = insertelement <8 x i16> %35, i16 %27, i64 6, !dbg !1430
  %37 = insertelement <8 x i16> %36, i16 %29, i64 7, !dbg !1430
  %38 = insertelement <8 x i16> poison, i16 %15, i64 0, !dbg !1430
  %39 = shufflevector <8 x i16> %38, <8 x i16> poison, <8 x i32> zeroinitializer, !dbg !1430
  %40 = mul <8 x i16> %37, %39, !dbg !1432
  store <8 x i16> %40, ptr %0, align 2, !dbg !1432, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 2, metadata !1404, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 2, metadata !1404, metadata !DIExpression()), !dbg !1411
  %41 = getelementptr inbounds [4 x i16], ptr %0, i64 2, !dbg !1431
  call void @llvm.dbg.value(metadata i64 3, metadata !1404, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 3, metadata !1404, metadata !DIExpression()), !dbg !1411
  %42 = load <8 x i16>, ptr %41, align 2, !dbg !1432, !tbaa !1279
  %43 = mul <8 x i16> %42, %39, !dbg !1432
  store <8 x i16> %43, ptr %41, align 2, !dbg !1432, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 4, metadata !1404, metadata !DIExpression()), !dbg !1411
  br label %118, !dbg !1433

44:                                               ; preds = %3
  %45 = sext i32 %5 to i64, !dbg !1434
  %46 = getelementptr inbounds [4 x [4 x i32]], ptr %1, i64 %45, !dbg !1434
  %47 = load i32, ptr %46, align 4, !dbg !1434, !tbaa !1381
  call void @llvm.dbg.value(metadata i32 %47, metadata !1408, metadata !DIExpression()), !dbg !1435
  %48 = sub nsw i32 6, %4, !dbg !1436
  %49 = sub nsw i32 5, %4, !dbg !1437
  %50 = shl nuw i32 1, %49, !dbg !1438
  call void @llvm.dbg.value(metadata i32 %50, metadata !1410, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 0, metadata !1404, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 0, metadata !1404, metadata !DIExpression()), !dbg !1411
  %51 = sext i16 %7 to i32, !dbg !1439
  %52 = mul nsw i32 %47, %51, !dbg !1443
  %53 = add nsw i32 %52, %50, !dbg !1444
  %54 = ashr i32 %53, %48, !dbg !1445
  %55 = trunc i32 %54 to i16, !dbg !1446
  store i16 %55, ptr %0, align 2, !dbg !1447, !tbaa !1279
  %56 = getelementptr inbounds [4 x i16], ptr %0, i64 0, i64 1, !dbg !1448
  call void @llvm.dbg.value(metadata i64 1, metadata !1404, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 1, metadata !1404, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 2, metadata !1404, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 2, metadata !1404, metadata !DIExpression()), !dbg !1411
  %57 = load <8 x i16>, ptr %56, align 2, !dbg !1448, !tbaa !1279
  %58 = sext <8 x i16> %57 to <8 x i32>, !dbg !1448
  %59 = insertelement <8 x i32> poison, i32 %47, i64 0, !dbg !1443
  %60 = shufflevector <8 x i32> %59, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !1443
  %61 = mul nsw <8 x i32> %60, %58, !dbg !1449
  %62 = insertelement <8 x i32> poison, i32 %50, i64 0, !dbg !1444
  %63 = shufflevector <8 x i32> %62, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !1444
  %64 = add nsw <8 x i32> %61, %63, !dbg !1450
  %65 = insertelement <8 x i32> poison, i32 %48, i64 0, !dbg !1445
  %66 = shufflevector <8 x i32> %65, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !1445
  %67 = ashr <8 x i32> %64, %66, !dbg !1451
  %68 = trunc <8 x i32> %67 to <8 x i16>, !dbg !1452
  store <8 x i16> %68, ptr %56, align 2, !dbg !1453, !tbaa !1279
  %69 = getelementptr inbounds [4 x i16], ptr %0, i64 2, i64 1, !dbg !1448
  %70 = load i16, ptr %69, align 2, !dbg !1448, !tbaa !1279
  %71 = sext i16 %70 to i32, !dbg !1448
  %72 = mul nsw i32 %47, %71, !dbg !1449
  %73 = add nsw i32 %72, %50, !dbg !1450
  %74 = ashr i32 %73, %48, !dbg !1451
  %75 = trunc i32 %74 to i16, !dbg !1452
  store i16 %75, ptr %69, align 2, !dbg !1453, !tbaa !1279
  %76 = getelementptr inbounds [4 x i16], ptr %0, i64 2, i64 2, !dbg !1454
  %77 = load i16, ptr %76, align 2, !dbg !1454, !tbaa !1279
  %78 = sext i16 %77 to i32, !dbg !1454
  %79 = mul nsw i32 %47, %78, !dbg !1455
  %80 = add nsw i32 %79, %50, !dbg !1456
  %81 = ashr i32 %80, %48, !dbg !1457
  %82 = trunc i32 %81 to i16, !dbg !1458
  store i16 %82, ptr %76, align 2, !dbg !1459, !tbaa !1279
  %83 = getelementptr inbounds [4 x i16], ptr %0, i64 2, i64 3, !dbg !1460
  %84 = load i16, ptr %83, align 2, !dbg !1460, !tbaa !1279
  %85 = sext i16 %84 to i32, !dbg !1460
  %86 = mul nsw i32 %47, %85, !dbg !1461
  %87 = add nsw i32 %86, %50, !dbg !1462
  %88 = ashr i32 %87, %48, !dbg !1463
  %89 = trunc i32 %88 to i16, !dbg !1464
  store i16 %89, ptr %83, align 2, !dbg !1465, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 3, metadata !1404, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 3, metadata !1404, metadata !DIExpression()), !dbg !1411
  %90 = getelementptr inbounds [4 x i16], ptr %0, i64 3, !dbg !1439
  %91 = load i16, ptr %90, align 2, !dbg !1439, !tbaa !1279
  %92 = sext i16 %91 to i32, !dbg !1439
  %93 = mul nsw i32 %47, %92, !dbg !1443
  %94 = add nsw i32 %93, %50, !dbg !1444
  %95 = ashr i32 %94, %48, !dbg !1445
  %96 = trunc i32 %95 to i16, !dbg !1446
  store i16 %96, ptr %90, align 2, !dbg !1447, !tbaa !1279
  %97 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 1, !dbg !1448
  %98 = load i16, ptr %97, align 2, !dbg !1448, !tbaa !1279
  %99 = sext i16 %98 to i32, !dbg !1448
  %100 = mul nsw i32 %47, %99, !dbg !1449
  %101 = add nsw i32 %100, %50, !dbg !1450
  %102 = ashr i32 %101, %48, !dbg !1451
  %103 = trunc i32 %102 to i16, !dbg !1452
  store i16 %103, ptr %97, align 2, !dbg !1453, !tbaa !1279
  %104 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 2, !dbg !1454
  %105 = load i16, ptr %104, align 2, !dbg !1454, !tbaa !1279
  %106 = sext i16 %105 to i32, !dbg !1454
  %107 = mul nsw i32 %47, %106, !dbg !1455
  %108 = add nsw i32 %107, %50, !dbg !1456
  %109 = ashr i32 %108, %48, !dbg !1457
  %110 = trunc i32 %109 to i16, !dbg !1458
  store i16 %110, ptr %104, align 2, !dbg !1459, !tbaa !1279
  %111 = getelementptr inbounds [4 x i16], ptr %0, i64 3, i64 3, !dbg !1460
  %112 = load i16, ptr %111, align 2, !dbg !1460, !tbaa !1279
  %113 = sext i16 %112 to i32, !dbg !1460
  %114 = mul nsw i32 %47, %113, !dbg !1461
  %115 = add nsw i32 %114, %50, !dbg !1462
  %116 = ashr i32 %115, %48, !dbg !1463
  %117 = trunc i32 %116 to i16, !dbg !1464
  store i16 %117, ptr %111, align 2, !dbg !1465, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 4, metadata !1404, metadata !DIExpression()), !dbg !1411
  br label %118, !dbg !1433

118:                                              ; preds = %44, %8
  ret void, !dbg !1433
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @dequant_8x8(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 !dbg !1466 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1468, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %1, metadata !1469, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 %2, metadata !1470, metadata !DIExpression()), !dbg !1477
  %4 = srem i32 %2, 6, !dbg !1478
  call void @llvm.dbg.value(metadata i32 %4, metadata !1471, metadata !DIExpression()), !dbg !1477
  %5 = sdiv i32 %2, 6, !dbg !1479
  call void @llvm.dbg.value(metadata i32 %5, metadata !1472, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !1477
  %6 = icmp sgt i32 %2, 35, !dbg !1480
  br i1 %6, label %7, label %75, !dbg !1481

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %5, metadata !1472, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !1477
  call void @llvm.dbg.value(metadata i32 0, metadata !1473, metadata !DIExpression()), !dbg !1477
  %8 = add nsw i32 %5, -6, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %8, metadata !1472, metadata !DIExpression()), !dbg !1477
  %9 = insertelement <8 x i32> poison, i32 %8, i64 0, !dbg !1483
  %10 = shufflevector <8 x i32> %9, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !1483
  %11 = sext i32 %4 to i64
  call void @llvm.dbg.value(metadata i64 0, metadata !1473, metadata !DIExpression()), !dbg !1477
  %12 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %11, i64 0, !dbg !1488
  %13 = load <8 x i16>, ptr %0, align 2, !dbg !1488, !tbaa !1279
  %14 = zext <8 x i16> %13 to <8 x i32>, !dbg !1488
  %15 = load <8 x i32>, ptr %12, align 4, !dbg !1488, !tbaa !1381
  %16 = mul <8 x i32> %15, %14, !dbg !1488
  %17 = shl <8 x i32> %16, %10, !dbg !1488
  %18 = trunc <8 x i32> %17 to <8 x i16>, !dbg !1488
  store <8 x i16> %18, ptr %0, align 2, !dbg !1488, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 1, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 1, metadata !1473, metadata !DIExpression()), !dbg !1477
  %19 = getelementptr inbounds [8 x i16], ptr %0, i64 1, !dbg !1488
  %20 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %11, i64 1, !dbg !1488
  %21 = load <8 x i16>, ptr %19, align 2, !dbg !1488, !tbaa !1279
  %22 = zext <8 x i16> %21 to <8 x i32>, !dbg !1488
  %23 = load <8 x i32>, ptr %20, align 4, !dbg !1488, !tbaa !1381
  %24 = mul <8 x i32> %23, %22, !dbg !1488
  %25 = shl <8 x i32> %24, %10, !dbg !1488
  %26 = trunc <8 x i32> %25 to <8 x i16>, !dbg !1488
  store <8 x i16> %26, ptr %19, align 2, !dbg !1488, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 2, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 2, metadata !1473, metadata !DIExpression()), !dbg !1477
  %27 = getelementptr inbounds [8 x i16], ptr %0, i64 2, !dbg !1488
  %28 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %11, i64 2, !dbg !1488
  %29 = load <8 x i16>, ptr %27, align 2, !dbg !1488, !tbaa !1279
  %30 = zext <8 x i16> %29 to <8 x i32>, !dbg !1488
  %31 = load <8 x i32>, ptr %28, align 4, !dbg !1488, !tbaa !1381
  %32 = mul <8 x i32> %31, %30, !dbg !1488
  %33 = shl <8 x i32> %32, %10, !dbg !1488
  %34 = trunc <8 x i32> %33 to <8 x i16>, !dbg !1488
  store <8 x i16> %34, ptr %27, align 2, !dbg !1488, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 3, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 3, metadata !1473, metadata !DIExpression()), !dbg !1477
  %35 = getelementptr inbounds [8 x i16], ptr %0, i64 3, !dbg !1488
  %36 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %11, i64 3, !dbg !1488
  %37 = load <8 x i16>, ptr %35, align 2, !dbg !1488, !tbaa !1279
  %38 = zext <8 x i16> %37 to <8 x i32>, !dbg !1488
  %39 = load <8 x i32>, ptr %36, align 4, !dbg !1488, !tbaa !1381
  %40 = mul <8 x i32> %39, %38, !dbg !1488
  %41 = shl <8 x i32> %40, %10, !dbg !1488
  %42 = trunc <8 x i32> %41 to <8 x i16>, !dbg !1488
  store <8 x i16> %42, ptr %35, align 2, !dbg !1488, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 4, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 4, metadata !1473, metadata !DIExpression()), !dbg !1477
  %43 = getelementptr inbounds [8 x i16], ptr %0, i64 4, !dbg !1488
  %44 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %11, i64 4, !dbg !1488
  %45 = load <8 x i16>, ptr %43, align 2, !dbg !1488, !tbaa !1279
  %46 = zext <8 x i16> %45 to <8 x i32>, !dbg !1488
  %47 = load <8 x i32>, ptr %44, align 4, !dbg !1488, !tbaa !1381
  %48 = mul <8 x i32> %47, %46, !dbg !1488
  %49 = shl <8 x i32> %48, %10, !dbg !1488
  %50 = trunc <8 x i32> %49 to <8 x i16>, !dbg !1488
  store <8 x i16> %50, ptr %43, align 2, !dbg !1488, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 5, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 5, metadata !1473, metadata !DIExpression()), !dbg !1477
  %51 = getelementptr inbounds [8 x i16], ptr %0, i64 5, !dbg !1488
  %52 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %11, i64 5, !dbg !1488
  %53 = load <8 x i16>, ptr %51, align 2, !dbg !1488, !tbaa !1279
  %54 = zext <8 x i16> %53 to <8 x i32>, !dbg !1488
  %55 = load <8 x i32>, ptr %52, align 4, !dbg !1488, !tbaa !1381
  %56 = mul <8 x i32> %55, %54, !dbg !1488
  %57 = shl <8 x i32> %56, %10, !dbg !1488
  %58 = trunc <8 x i32> %57 to <8 x i16>, !dbg !1488
  store <8 x i16> %58, ptr %51, align 2, !dbg !1488, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 6, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 6, metadata !1473, metadata !DIExpression()), !dbg !1477
  %59 = getelementptr inbounds [8 x i16], ptr %0, i64 6, !dbg !1488
  %60 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %11, i64 6, !dbg !1488
  %61 = load <8 x i16>, ptr %59, align 2, !dbg !1488, !tbaa !1279
  %62 = zext <8 x i16> %61 to <8 x i32>, !dbg !1488
  %63 = load <8 x i32>, ptr %60, align 4, !dbg !1488, !tbaa !1381
  %64 = mul <8 x i32> %63, %62, !dbg !1488
  %65 = shl <8 x i32> %64, %10, !dbg !1488
  %66 = trunc <8 x i32> %65 to <8 x i16>, !dbg !1488
  store <8 x i16> %66, ptr %59, align 2, !dbg !1488, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 7, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 7, metadata !1473, metadata !DIExpression()), !dbg !1477
  %67 = getelementptr inbounds [8 x i16], ptr %0, i64 7, !dbg !1488
  %68 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %11, i64 7, !dbg !1488
  %69 = load <8 x i16>, ptr %67, align 2, !dbg !1488, !tbaa !1279
  %70 = zext <8 x i16> %69 to <8 x i32>, !dbg !1488
  %71 = load <8 x i32>, ptr %68, align 4, !dbg !1488, !tbaa !1381
  %72 = mul <8 x i32> %71, %70, !dbg !1488
  %73 = shl <8 x i32> %72, %10, !dbg !1488
  %74 = trunc <8 x i32> %73 to <8 x i16>, !dbg !1488
  store <8 x i16> %74, ptr %67, align 2, !dbg !1488, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 8, metadata !1473, metadata !DIExpression()), !dbg !1477
  br label %155, !dbg !1489

75:                                               ; preds = %3
  call void @llvm.dbg.value(metadata !DIArgList(i32 1, i32 5, i32 %5), metadata !1474, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_shl, DW_OP_stack_value)), !dbg !1490
  call void @llvm.dbg.value(metadata i32 0, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 0, metadata !1473, metadata !DIExpression()), !dbg !1477
  %76 = sub nsw i32 6, %5, !dbg !1491
  %77 = insertelement <8 x i32> poison, i32 %76, i64 0, !dbg !1492
  %78 = shufflevector <8 x i32> %77, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !1492
  %79 = sub nsw i32 5, %5, !dbg !1496
  call void @llvm.dbg.value(metadata !DIArgList(i32 1, i32 %79), metadata !1474, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1490
  %80 = shl nuw i32 1, %79, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %80, metadata !1474, metadata !DIExpression()), !dbg !1490
  %81 = insertelement <8 x i32> poison, i32 %80, i64 0, !dbg !1492
  %82 = shufflevector <8 x i32> %81, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !1492
  %83 = sext i32 %4 to i64
  call void @llvm.dbg.value(metadata i64 0, metadata !1473, metadata !DIExpression()), !dbg !1477
  %84 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %83, i64 0, !dbg !1498
  %85 = load <8 x i16>, ptr %0, align 2, !dbg !1498, !tbaa !1279
  %86 = sext <8 x i16> %85 to <8 x i32>, !dbg !1498
  %87 = load <8 x i32>, ptr %84, align 4, !dbg !1498, !tbaa !1381
  %88 = mul nsw <8 x i32> %87, %86, !dbg !1498
  %89 = add nsw <8 x i32> %88, %82, !dbg !1498
  %90 = ashr <8 x i32> %89, %78, !dbg !1498
  %91 = trunc <8 x i32> %90 to <8 x i16>, !dbg !1498
  store <8 x i16> %91, ptr %0, align 2, !dbg !1498, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 1, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 1, metadata !1473, metadata !DIExpression()), !dbg !1477
  %92 = getelementptr inbounds [8 x i16], ptr %0, i64 1, !dbg !1498
  %93 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %83, i64 1, !dbg !1498
  %94 = load <8 x i16>, ptr %92, align 2, !dbg !1498, !tbaa !1279
  %95 = sext <8 x i16> %94 to <8 x i32>, !dbg !1498
  %96 = load <8 x i32>, ptr %93, align 4, !dbg !1498, !tbaa !1381
  %97 = mul nsw <8 x i32> %96, %95, !dbg !1498
  %98 = add nsw <8 x i32> %97, %82, !dbg !1498
  %99 = ashr <8 x i32> %98, %78, !dbg !1498
  %100 = trunc <8 x i32> %99 to <8 x i16>, !dbg !1498
  store <8 x i16> %100, ptr %92, align 2, !dbg !1498, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 2, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 2, metadata !1473, metadata !DIExpression()), !dbg !1477
  %101 = getelementptr inbounds [8 x i16], ptr %0, i64 2, !dbg !1498
  %102 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %83, i64 2, !dbg !1498
  %103 = load <8 x i16>, ptr %101, align 2, !dbg !1498, !tbaa !1279
  %104 = sext <8 x i16> %103 to <8 x i32>, !dbg !1498
  %105 = load <8 x i32>, ptr %102, align 4, !dbg !1498, !tbaa !1381
  %106 = mul nsw <8 x i32> %105, %104, !dbg !1498
  %107 = add nsw <8 x i32> %106, %82, !dbg !1498
  %108 = ashr <8 x i32> %107, %78, !dbg !1498
  %109 = trunc <8 x i32> %108 to <8 x i16>, !dbg !1498
  store <8 x i16> %109, ptr %101, align 2, !dbg !1498, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 3, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 3, metadata !1473, metadata !DIExpression()), !dbg !1477
  %110 = getelementptr inbounds [8 x i16], ptr %0, i64 3, !dbg !1498
  %111 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %83, i64 3, !dbg !1498
  %112 = load <8 x i16>, ptr %110, align 2, !dbg !1498, !tbaa !1279
  %113 = sext <8 x i16> %112 to <8 x i32>, !dbg !1498
  %114 = load <8 x i32>, ptr %111, align 4, !dbg !1498, !tbaa !1381
  %115 = mul nsw <8 x i32> %114, %113, !dbg !1498
  %116 = add nsw <8 x i32> %115, %82, !dbg !1498
  %117 = ashr <8 x i32> %116, %78, !dbg !1498
  %118 = trunc <8 x i32> %117 to <8 x i16>, !dbg !1498
  store <8 x i16> %118, ptr %110, align 2, !dbg !1498, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 4, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 4, metadata !1473, metadata !DIExpression()), !dbg !1477
  %119 = getelementptr inbounds [8 x i16], ptr %0, i64 4, !dbg !1498
  %120 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %83, i64 4, !dbg !1498
  %121 = load <8 x i16>, ptr %119, align 2, !dbg !1498, !tbaa !1279
  %122 = sext <8 x i16> %121 to <8 x i32>, !dbg !1498
  %123 = load <8 x i32>, ptr %120, align 4, !dbg !1498, !tbaa !1381
  %124 = mul nsw <8 x i32> %123, %122, !dbg !1498
  %125 = add nsw <8 x i32> %124, %82, !dbg !1498
  %126 = ashr <8 x i32> %125, %78, !dbg !1498
  %127 = trunc <8 x i32> %126 to <8 x i16>, !dbg !1498
  store <8 x i16> %127, ptr %119, align 2, !dbg !1498, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 5, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 5, metadata !1473, metadata !DIExpression()), !dbg !1477
  %128 = getelementptr inbounds [8 x i16], ptr %0, i64 5, !dbg !1498
  %129 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %83, i64 5, !dbg !1498
  %130 = load <8 x i16>, ptr %128, align 2, !dbg !1498, !tbaa !1279
  %131 = sext <8 x i16> %130 to <8 x i32>, !dbg !1498
  %132 = load <8 x i32>, ptr %129, align 4, !dbg !1498, !tbaa !1381
  %133 = mul nsw <8 x i32> %132, %131, !dbg !1498
  %134 = add nsw <8 x i32> %133, %82, !dbg !1498
  %135 = ashr <8 x i32> %134, %78, !dbg !1498
  %136 = trunc <8 x i32> %135 to <8 x i16>, !dbg !1498
  store <8 x i16> %136, ptr %128, align 2, !dbg !1498, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 6, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 6, metadata !1473, metadata !DIExpression()), !dbg !1477
  %137 = getelementptr inbounds [8 x i16], ptr %0, i64 6, !dbg !1498
  %138 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %83, i64 6, !dbg !1498
  %139 = load <8 x i16>, ptr %137, align 2, !dbg !1498, !tbaa !1279
  %140 = sext <8 x i16> %139 to <8 x i32>, !dbg !1498
  %141 = load <8 x i32>, ptr %138, align 4, !dbg !1498, !tbaa !1381
  %142 = mul nsw <8 x i32> %141, %140, !dbg !1498
  %143 = add nsw <8 x i32> %142, %82, !dbg !1498
  %144 = ashr <8 x i32> %143, %78, !dbg !1498
  %145 = trunc <8 x i32> %144 to <8 x i16>, !dbg !1498
  store <8 x i16> %145, ptr %137, align 2, !dbg !1498, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 7, metadata !1473, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 7, metadata !1473, metadata !DIExpression()), !dbg !1477
  %146 = getelementptr inbounds [8 x i16], ptr %0, i64 7, !dbg !1498
  %147 = getelementptr inbounds [8 x [8 x i32]], ptr %1, i64 %83, i64 7, !dbg !1498
  %148 = load <8 x i16>, ptr %146, align 2, !dbg !1498, !tbaa !1279
  %149 = sext <8 x i16> %148 to <8 x i32>, !dbg !1498
  %150 = load <8 x i32>, ptr %147, align 4, !dbg !1498, !tbaa !1381
  %151 = mul nsw <8 x i32> %150, %149, !dbg !1498
  %152 = add nsw <8 x i32> %151, %82, !dbg !1498
  %153 = ashr <8 x i32> %152, %78, !dbg !1498
  %154 = trunc <8 x i32> %153 to <8 x i16>, !dbg !1498
  store <8 x i16> %154, ptr %146, align 2, !dbg !1498, !tbaa !1279
  call void @llvm.dbg.value(metadata i64 8, metadata !1473, metadata !DIExpression()), !dbg !1477
  br label %155, !dbg !1489

155:                                              ; preds = %75, %7
  ret void, !dbg !1489
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @x264_denoise_dct(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #1 !dbg !1499 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1501, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata ptr %1, metadata !1502, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata ptr %2, metadata !1503, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32 %3, metadata !1504, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !1511
  %5 = icmp sgt i32 %3, 1, !dbg !1512
  br i1 %5, label %6, label %71, !dbg !1513

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64, !dbg !1512
  %8 = add nsw i64 %7, -1, !dbg !1513
  %9 = icmp ult i32 %3, 5, !dbg !1513
  br i1 %9, label %47, label %10, !dbg !1513

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i64 2, !dbg !1513
  %12 = shl nuw nsw i64 %7, 1, !dbg !1513
  %13 = getelementptr i8, ptr %0, i64 %12, !dbg !1513
  %14 = getelementptr i8, ptr %2, i64 2, !dbg !1513
  %15 = getelementptr i8, ptr %2, i64 %12, !dbg !1513
  %16 = icmp ult ptr %11, %15, !dbg !1513
  %17 = icmp ult ptr %14, %13, !dbg !1513
  %18 = and i1 %16, %17, !dbg !1513
  br i1 %18, label %47, label %19, !dbg !1513

19:                                               ; preds = %10
  %20 = and i64 %8, -4, !dbg !1513
  %21 = or i64 %20, 1, !dbg !1513
  br label %22, !dbg !1513

22:                                               ; preds = %22, %19
  %23 = phi i64 [ 0, %19 ], [ %43, %22 ]
  %24 = or i64 %23, 1, !dbg !1513
  %25 = getelementptr inbounds i16, ptr %0, i64 %24, !dbg !1514
  %26 = load <4 x i16>, ptr %25, align 2, !dbg !1514, !tbaa !1279, !alias.scope !1515, !noalias !1518
  %27 = sext <4 x i16> %26 to <4 x i32>, !dbg !1514
  %28 = ashr <4 x i32> %27, <i32 15, i32 15, i32 15, i32 15>, !dbg !1520
  %29 = add nsw <4 x i32> %28, %27, !dbg !1521
  %30 = xor <4 x i32> %29, %28, !dbg !1522
  %31 = getelementptr inbounds i32, ptr %1, i64 %24, !dbg !1523
  %32 = load <4 x i32>, ptr %31, align 4, !dbg !1524, !tbaa !1381
  %33 = add <4 x i32> %30, %32, !dbg !1524
  store <4 x i32> %33, ptr %31, align 4, !dbg !1524, !tbaa !1381
  %34 = getelementptr inbounds i16, ptr %2, i64 %24, !dbg !1525
  %35 = load <4 x i16>, ptr %34, align 2, !dbg !1525, !tbaa !1279, !alias.scope !1518
  %36 = zext <4 x i16> %35 to <4 x i32>, !dbg !1525
  %37 = sub nsw <4 x i32> %30, %36, !dbg !1526
  %38 = icmp slt <4 x i32> %37, zeroinitializer, !dbg !1527
  %39 = xor <4 x i32> %37, %28, !dbg !1528
  %40 = sub nsw <4 x i32> %39, %28, !dbg !1528
  %41 = trunc <4 x i32> %40 to <4 x i16>, !dbg !1528
  %42 = select <4 x i1> %38, <4 x i16> zeroinitializer, <4 x i16> %41, !dbg !1528
  store <4 x i16> %42, ptr %25, align 2, !dbg !1529, !tbaa !1279, !alias.scope !1515, !noalias !1518
  %43 = add nuw i64 %23, 4
  %44 = icmp eq i64 %43, %20
  br i1 %44, label %45, label %22, !llvm.loop !1530

45:                                               ; preds = %22
  %46 = icmp eq i64 %8, %20, !dbg !1513
  br i1 %46, label %71, label %47, !dbg !1513

47:                                               ; preds = %10, %6, %45
  %48 = phi i64 [ 1, %10 ], [ 1, %6 ], [ %21, %45 ]
  br label %49, !dbg !1513

49:                                               ; preds = %47, %49
  %50 = phi i64 [ %69, %49 ], [ %48, %47 ]
  call void @llvm.dbg.value(metadata i64 %50, metadata !1505, metadata !DIExpression()), !dbg !1511
  %51 = getelementptr inbounds i16, ptr %0, i64 %50, !dbg !1514
  %52 = load i16, ptr %51, align 2, !dbg !1514, !tbaa !1279
  %53 = sext i16 %52 to i32, !dbg !1514
  call void @llvm.dbg.value(metadata i32 %53, metadata !1506, metadata !DIExpression()), !dbg !1532
  %54 = ashr i32 %53, 15, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %54, metadata !1510, metadata !DIExpression()), !dbg !1532
  %55 = add nsw i32 %54, %53, !dbg !1521
  %56 = xor i32 %55, %54, !dbg !1522
  call void @llvm.dbg.value(metadata i32 %56, metadata !1506, metadata !DIExpression()), !dbg !1532
  %57 = getelementptr inbounds i32, ptr %1, i64 %50, !dbg !1523
  %58 = load i32, ptr %57, align 4, !dbg !1524, !tbaa !1381
  %59 = add i32 %56, %58, !dbg !1524
  store i32 %59, ptr %57, align 4, !dbg !1524, !tbaa !1381
  %60 = getelementptr inbounds i16, ptr %2, i64 %50, !dbg !1525
  %61 = load i16, ptr %60, align 2, !dbg !1525, !tbaa !1279
  %62 = zext i16 %61 to i32, !dbg !1525
  %63 = sub nsw i32 %56, %62, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %63, metadata !1506, metadata !DIExpression()), !dbg !1532
  %64 = icmp slt i32 %63, 0, !dbg !1527
  %65 = xor i32 %63, %54, !dbg !1528
  %66 = sub nsw i32 %65, %54, !dbg !1528
  %67 = trunc i32 %66 to i16, !dbg !1528
  %68 = select i1 %64, i16 0, i16 %67, !dbg !1528
  store i16 %68, ptr %51, align 2, !dbg !1529, !tbaa !1279
  %69 = add nuw nsw i64 %50, 1, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %69, metadata !1505, metadata !DIExpression()), !dbg !1511
  %70 = icmp eq i64 %69, %7, !dbg !1512
  br i1 %70, label %71, label %49, !dbg !1513, !llvm.loop !1534

71:                                               ; preds = %49, %45, %4
  ret void, !dbg !1535
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_decimate_score15(ptr nocapture noundef readonly %0) #2 !dbg !1536 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1538, metadata !DIExpression()), !dbg !1539
  %2 = getelementptr inbounds i16, ptr %0, i64 1, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %2, metadata !1541, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 15, metadata !1546, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata ptr @x264_decimate_table4, metadata !1547, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 0, metadata !1548, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 14, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 14, metadata !1549, metadata !DIExpression()), !dbg !1552
  %3 = getelementptr inbounds i16, ptr %0, i64 14, !dbg !1554
  %4 = load i32, ptr %3, align 4, !dbg !1555, !tbaa !1381
  %5 = icmp eq i32 %4, 0, !dbg !1556
  br i1 %5, label %6, label %33, !dbg !1557

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i64 12, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 12, metadata !1549, metadata !DIExpression()), !dbg !1552
  %7 = getelementptr inbounds i16, ptr %0, i64 12, !dbg !1554
  %8 = load i32, ptr %7, align 4, !dbg !1555, !tbaa !1381
  %9 = icmp eq i32 %8, 0, !dbg !1556
  br i1 %9, label %10, label %33, !dbg !1557

10:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 10, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 10, metadata !1549, metadata !DIExpression()), !dbg !1552
  %11 = getelementptr inbounds i16, ptr %0, i64 10, !dbg !1554
  %12 = load i32, ptr %11, align 4, !dbg !1555, !tbaa !1381
  %13 = icmp eq i32 %12, 0, !dbg !1556
  br i1 %13, label %14, label %33, !dbg !1557

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 8, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 8, metadata !1549, metadata !DIExpression()), !dbg !1552
  %15 = getelementptr inbounds i16, ptr %0, i64 8, !dbg !1554
  %16 = load i32, ptr %15, align 4, !dbg !1555, !tbaa !1381
  %17 = icmp eq i32 %16, 0, !dbg !1556
  br i1 %17, label %18, label %33, !dbg !1557

18:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 6, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 6, metadata !1549, metadata !DIExpression()), !dbg !1552
  %19 = getelementptr inbounds i16, ptr %0, i64 6, !dbg !1554
  %20 = load i32, ptr %19, align 4, !dbg !1555, !tbaa !1381
  %21 = icmp eq i32 %20, 0, !dbg !1556
  br i1 %21, label %22, label %33, !dbg !1557

22:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i64 4, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 4, metadata !1549, metadata !DIExpression()), !dbg !1552
  %23 = getelementptr inbounds i16, ptr %0, i64 4, !dbg !1554
  %24 = load i32, ptr %23, align 4, !dbg !1555, !tbaa !1381
  %25 = icmp eq i32 %24, 0, !dbg !1556
  br i1 %25, label %26, label %33, !dbg !1557

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 2, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 2, metadata !1549, metadata !DIExpression()), !dbg !1552
  %27 = getelementptr inbounds i16, ptr %0, i64 2, !dbg !1554
  %28 = load i32, ptr %27, align 4, !dbg !1555, !tbaa !1381
  %29 = icmp eq i32 %28, 0, !dbg !1556
  br i1 %29, label %30, label %33, !dbg !1557

30:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 0, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 0, metadata !1549, metadata !DIExpression()), !dbg !1552
  %31 = load i32, ptr %0, align 4, !dbg !1555, !tbaa !1381
  %32 = icmp eq i32 %31, 0, !dbg !1556
  br i1 %32, label %77, label %33, !dbg !1557

33:                                               ; preds = %1, %6, %10, %14, %18, %22, %26, %30
  %34 = phi i64 [ 14, %1 ], [ 12, %6 ], [ 10, %10 ], [ 8, %14 ], [ 6, %18 ], [ 4, %22 ], [ 2, %26 ], [ 0, %30 ]
  %35 = getelementptr inbounds i16, ptr %2, i64 %34, !dbg !1558
  %36 = load i16, ptr %35, align 2, !dbg !1558, !tbaa !1279
  %37 = icmp eq i16 %36, 0, !dbg !1560
  %38 = sext i1 %37 to i64, !dbg !1561
  %39 = add nsw i64 %34, %38, !dbg !1561
  %40 = trunc i64 %39 to i32, !dbg !1552
  call void @llvm.dbg.value(metadata i32 %40, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 0, metadata !1548, metadata !DIExpression()), !dbg !1552
  %41 = icmp sgt i32 %40, -1, !dbg !1562
  br i1 %41, label %42, label %77, !dbg !1563

42:                                               ; preds = %33, %70
  %43 = phi i32 [ %56, %70 ], [ %40, %33 ]
  %44 = phi i32 [ %75, %70 ], [ 0, %33 ]
  call void @llvm.dbg.value(metadata i32 %44, metadata !1548, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %43, metadata !1549, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1552
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds i16, ptr %2, i64 %45, !dbg !1564
  %47 = load i16, ptr %46, align 2, !dbg !1564, !tbaa !1279
  %48 = sext i16 %47 to i32, !dbg !1564
  %49 = add nsw i32 %48, 1, !dbg !1566
  %50 = icmp ult i32 %49, 3, !dbg !1566
  br i1 %50, label %51, label %77, !dbg !1567

51:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 0, metadata !1550, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i32 %43, metadata !1549, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1552
  %52 = icmp eq i32 %43, 0, !dbg !1569
  br i1 %52, label %64, label %53, !dbg !1570

53:                                               ; preds = %51, %61
  %54 = phi i32 [ %56, %61 ], [ %43, %51 ]
  %55 = phi i32 [ %62, %61 ], [ 0, %51 ]
  %56 = add nsw i32 %54, -1, !dbg !1568
  call void @llvm.dbg.value(metadata i32 %55, metadata !1550, metadata !DIExpression()), !dbg !1568
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i16, ptr %2, i64 %57, !dbg !1571
  %59 = load i16, ptr %58, align 2, !dbg !1571, !tbaa !1279
  %60 = icmp eq i16 %59, 0, !dbg !1572
  br i1 %60, label %61, label %70, !dbg !1573

61:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 %56, metadata !1549, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1552
  %62 = add nuw i32 %55, 1, !dbg !1574
  call void @llvm.dbg.value(metadata i32 %62, metadata !1550, metadata !DIExpression()), !dbg !1568
  %63 = icmp eq i32 %62, %43, !dbg !1569
  br i1 %63, label %64, label %53, !dbg !1570, !llvm.loop !1576

64:                                               ; preds = %51, %61
  %65 = zext i32 %43 to i64, !dbg !1578
  %66 = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %65, !dbg !1578
  %67 = load i8, ptr %66, align 1, !dbg !1578, !tbaa !1579
  %68 = zext i8 %67 to i32, !dbg !1578
  %69 = add nuw nsw i32 %44, %68, !dbg !1580
  call void @llvm.dbg.value(metadata i32 -1, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %69, metadata !1548, metadata !DIExpression()), !dbg !1552
  br label %77, !dbg !1563

70:                                               ; preds = %53
  %71 = zext i32 %55 to i64, !dbg !1578
  %72 = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %71, !dbg !1578
  %73 = load i8, ptr %72, align 1, !dbg !1578, !tbaa !1579
  %74 = zext i8 %73 to i32, !dbg !1578
  %75 = add nuw nsw i32 %44, %74, !dbg !1580
  call void @llvm.dbg.value(metadata i32 %56, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %75, metadata !1548, metadata !DIExpression()), !dbg !1552
  %76 = icmp sgt i32 %54, 0, !dbg !1562
  br i1 %76, label %42, label %77, !dbg !1563

77:                                               ; preds = %42, %70, %30, %64, %33
  %78 = phi i32 [ 0, %33 ], [ %69, %64 ], [ 0, %30 ], [ %75, %70 ], [ 9, %42 ]
  ret i32 %78, !dbg !1581
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_decimate_score16(ptr nocapture noundef readonly %0) #2 !dbg !1582 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1584, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata ptr %0, metadata !1541, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 16, metadata !1546, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata ptr @x264_decimate_table4, metadata !1547, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 0, metadata !1548, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 15, metadata !1549, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i64 15, metadata !1549, metadata !DIExpression()), !dbg !1586
  %2 = getelementptr inbounds i16, ptr %0, i64 14, !dbg !1588
  %3 = load i32, ptr %2, align 4, !dbg !1589, !tbaa !1381
  %4 = icmp eq i32 %3, 0, !dbg !1590
  br i1 %4, label %5, label %32, !dbg !1591

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i64 13, metadata !1549, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i64 13, metadata !1549, metadata !DIExpression()), !dbg !1586
  %6 = getelementptr inbounds i16, ptr %0, i64 12, !dbg !1588
  %7 = load i32, ptr %6, align 4, !dbg !1589, !tbaa !1381
  %8 = icmp eq i32 %7, 0, !dbg !1590
  br i1 %8, label %9, label %32, !dbg !1591

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 11, metadata !1549, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i64 11, metadata !1549, metadata !DIExpression()), !dbg !1586
  %10 = getelementptr inbounds i16, ptr %0, i64 10, !dbg !1588
  %11 = load i32, ptr %10, align 4, !dbg !1589, !tbaa !1381
  %12 = icmp eq i32 %11, 0, !dbg !1590
  br i1 %12, label %13, label %32, !dbg !1591

13:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i64 9, metadata !1549, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i64 9, metadata !1549, metadata !DIExpression()), !dbg !1586
  %14 = getelementptr inbounds i16, ptr %0, i64 8, !dbg !1588
  %15 = load i32, ptr %14, align 4, !dbg !1589, !tbaa !1381
  %16 = icmp eq i32 %15, 0, !dbg !1590
  br i1 %16, label %17, label %32, !dbg !1591

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 7, metadata !1549, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i64 7, metadata !1549, metadata !DIExpression()), !dbg !1586
  %18 = getelementptr inbounds i16, ptr %0, i64 6, !dbg !1588
  %19 = load i32, ptr %18, align 4, !dbg !1589, !tbaa !1381
  %20 = icmp eq i32 %19, 0, !dbg !1590
  br i1 %20, label %21, label %32, !dbg !1591

21:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i64 5, metadata !1549, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i64 5, metadata !1549, metadata !DIExpression()), !dbg !1586
  %22 = getelementptr inbounds i16, ptr %0, i64 4, !dbg !1588
  %23 = load i32, ptr %22, align 4, !dbg !1589, !tbaa !1381
  %24 = icmp eq i32 %23, 0, !dbg !1590
  br i1 %24, label %25, label %32, !dbg !1591

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 3, metadata !1549, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i64 3, metadata !1549, metadata !DIExpression()), !dbg !1586
  %26 = getelementptr inbounds i16, ptr %0, i64 2, !dbg !1588
  %27 = load i32, ptr %26, align 4, !dbg !1589, !tbaa !1381
  %28 = icmp eq i32 %27, 0, !dbg !1590
  br i1 %28, label %29, label %32, !dbg !1591

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 1, metadata !1549, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i64 1, metadata !1549, metadata !DIExpression()), !dbg !1586
  %30 = load i32, ptr %0, align 4, !dbg !1589, !tbaa !1381
  %31 = icmp eq i32 %30, 0, !dbg !1590
  br i1 %31, label %75, label %32, !dbg !1591

32:                                               ; preds = %1, %5, %9, %13, %17, %21, %25, %29
  %33 = phi i64 [ 15, %1 ], [ 13, %5 ], [ 11, %9 ], [ 9, %13 ], [ 7, %17 ], [ 5, %21 ], [ 3, %25 ], [ 1, %29 ]
  %34 = phi i64 [ 14, %1 ], [ 12, %5 ], [ 10, %9 ], [ 8, %13 ], [ 6, %17 ], [ 4, %21 ], [ 2, %25 ], [ 0, %29 ], !dbg !1592
  %35 = getelementptr inbounds i16, ptr %0, i64 %33, !dbg !1593
  %36 = load i16, ptr %35, align 2, !dbg !1593, !tbaa !1279
  %37 = icmp eq i16 %36, 0, !dbg !1594
  %38 = select i1 %37, i64 %34, i64 %33, !dbg !1595
  %39 = trunc i64 %38 to i32, !dbg !1586
  call void @llvm.dbg.value(metadata i32 %39, metadata !1549, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 0, metadata !1548, metadata !DIExpression()), !dbg !1586
  br label %40, !dbg !1596

40:                                               ; preds = %32, %68
  %41 = phi i32 [ %54, %68 ], [ %39, %32 ]
  %42 = phi i32 [ %73, %68 ], [ 0, %32 ]
  call void @llvm.dbg.value(metadata i32 %42, metadata !1548, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 %41, metadata !1549, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1586
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds i16, ptr %0, i64 %43, !dbg !1597
  %45 = load i16, ptr %44, align 2, !dbg !1597, !tbaa !1279
  %46 = sext i16 %45 to i32, !dbg !1597
  %47 = add nsw i32 %46, 1, !dbg !1598
  %48 = icmp ult i32 %47, 3, !dbg !1598
  br i1 %48, label %49, label %75, !dbg !1596

49:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 0, metadata !1550, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 %41, metadata !1549, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1586
  %50 = icmp eq i32 %41, 0, !dbg !1600
  br i1 %50, label %62, label %51, !dbg !1601

51:                                               ; preds = %49, %59
  %52 = phi i32 [ %54, %59 ], [ %41, %49 ]
  %53 = phi i32 [ %60, %59 ], [ 0, %49 ]
  %54 = add nsw i32 %52, -1, !dbg !1599
  call void @llvm.dbg.value(metadata i32 %53, metadata !1550, metadata !DIExpression()), !dbg !1599
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i16, ptr %0, i64 %55, !dbg !1602
  %57 = load i16, ptr %56, align 2, !dbg !1602, !tbaa !1279
  %58 = icmp eq i16 %57, 0, !dbg !1603
  br i1 %58, label %59, label %68, !dbg !1604

59:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %54, metadata !1549, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1586
  %60 = add nuw i32 %53, 1, !dbg !1605
  call void @llvm.dbg.value(metadata i32 %60, metadata !1550, metadata !DIExpression()), !dbg !1599
  %61 = icmp eq i32 %60, %41, !dbg !1600
  br i1 %61, label %62, label %51, !dbg !1601, !llvm.loop !1606

62:                                               ; preds = %49, %59
  %63 = zext i32 %41 to i64, !dbg !1608
  %64 = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %63, !dbg !1608
  %65 = load i8, ptr %64, align 1, !dbg !1608, !tbaa !1579
  %66 = zext i8 %65 to i32, !dbg !1608
  %67 = add nuw nsw i32 %42, %66, !dbg !1609
  call void @llvm.dbg.value(metadata i32 -1, metadata !1549, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 %67, metadata !1548, metadata !DIExpression()), !dbg !1586
  br label %75, !dbg !1610

68:                                               ; preds = %51
  %69 = zext i32 %53 to i64, !dbg !1608
  %70 = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %69, !dbg !1608
  %71 = load i8, ptr %70, align 1, !dbg !1608, !tbaa !1579
  %72 = zext i8 %71 to i32, !dbg !1608
  %73 = add nuw nsw i32 %42, %72, !dbg !1609
  call void @llvm.dbg.value(metadata i32 %54, metadata !1549, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 %73, metadata !1548, metadata !DIExpression()), !dbg !1586
  %74 = icmp sgt i32 %52, 0, !dbg !1611
  br i1 %74, label %40, label %75, !dbg !1610

75:                                               ; preds = %40, %68, %62, %29
  %76 = phi i32 [ 0, %29 ], [ %67, %62 ], [ %73, %68 ], [ 9, %40 ]
  ret i32 %76, !dbg !1612
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_decimate_score64(ptr nocapture noundef readonly %0) #2 !dbg !1613 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1615, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata ptr %0, metadata !1541, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i32 64, metadata !1546, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata ptr @x264_decimate_table8, metadata !1547, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i32 0, metadata !1548, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i32 63, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 63, metadata !1549, metadata !DIExpression()), !dbg !1617
  %2 = getelementptr inbounds i16, ptr %0, i64 62, !dbg !1619
  %3 = load i32, ptr %2, align 4, !dbg !1620, !tbaa !1381
  %4 = icmp eq i32 %3, 0, !dbg !1621
  br i1 %4, label %5, label %128, !dbg !1622

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i64 61, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 61, metadata !1549, metadata !DIExpression()), !dbg !1617
  %6 = getelementptr inbounds i16, ptr %0, i64 60, !dbg !1619
  %7 = load i32, ptr %6, align 4, !dbg !1620, !tbaa !1381
  %8 = icmp eq i32 %7, 0, !dbg !1621
  br i1 %8, label %9, label %128, !dbg !1622

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 59, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 59, metadata !1549, metadata !DIExpression()), !dbg !1617
  %10 = getelementptr inbounds i16, ptr %0, i64 58, !dbg !1619
  %11 = load i32, ptr %10, align 4, !dbg !1620, !tbaa !1381
  %12 = icmp eq i32 %11, 0, !dbg !1621
  br i1 %12, label %13, label %128, !dbg !1622

13:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i64 57, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 57, metadata !1549, metadata !DIExpression()), !dbg !1617
  %14 = getelementptr inbounds i16, ptr %0, i64 56, !dbg !1619
  %15 = load i32, ptr %14, align 4, !dbg !1620, !tbaa !1381
  %16 = icmp eq i32 %15, 0, !dbg !1621
  br i1 %16, label %17, label %128, !dbg !1622

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 55, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 55, metadata !1549, metadata !DIExpression()), !dbg !1617
  %18 = getelementptr inbounds i16, ptr %0, i64 54, !dbg !1619
  %19 = load i32, ptr %18, align 4, !dbg !1620, !tbaa !1381
  %20 = icmp eq i32 %19, 0, !dbg !1621
  br i1 %20, label %21, label %128, !dbg !1622

21:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i64 53, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 53, metadata !1549, metadata !DIExpression()), !dbg !1617
  %22 = getelementptr inbounds i16, ptr %0, i64 52, !dbg !1619
  %23 = load i32, ptr %22, align 4, !dbg !1620, !tbaa !1381
  %24 = icmp eq i32 %23, 0, !dbg !1621
  br i1 %24, label %25, label %128, !dbg !1622

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 51, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 51, metadata !1549, metadata !DIExpression()), !dbg !1617
  %26 = getelementptr inbounds i16, ptr %0, i64 50, !dbg !1619
  %27 = load i32, ptr %26, align 4, !dbg !1620, !tbaa !1381
  %28 = icmp eq i32 %27, 0, !dbg !1621
  br i1 %28, label %29, label %128, !dbg !1622

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 49, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 49, metadata !1549, metadata !DIExpression()), !dbg !1617
  %30 = getelementptr inbounds i16, ptr %0, i64 48, !dbg !1619
  %31 = load i32, ptr %30, align 4, !dbg !1620, !tbaa !1381
  %32 = icmp eq i32 %31, 0, !dbg !1621
  br i1 %32, label %33, label %128, !dbg !1622

33:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i64 47, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 47, metadata !1549, metadata !DIExpression()), !dbg !1617
  %34 = getelementptr inbounds i16, ptr %0, i64 46, !dbg !1619
  %35 = load i32, ptr %34, align 4, !dbg !1620, !tbaa !1381
  %36 = icmp eq i32 %35, 0, !dbg !1621
  br i1 %36, label %37, label %128, !dbg !1622

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i64 45, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 45, metadata !1549, metadata !DIExpression()), !dbg !1617
  %38 = getelementptr inbounds i16, ptr %0, i64 44, !dbg !1619
  %39 = load i32, ptr %38, align 4, !dbg !1620, !tbaa !1381
  %40 = icmp eq i32 %39, 0, !dbg !1621
  br i1 %40, label %41, label %128, !dbg !1622

41:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i64 43, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 43, metadata !1549, metadata !DIExpression()), !dbg !1617
  %42 = getelementptr inbounds i16, ptr %0, i64 42, !dbg !1619
  %43 = load i32, ptr %42, align 4, !dbg !1620, !tbaa !1381
  %44 = icmp eq i32 %43, 0, !dbg !1621
  br i1 %44, label %45, label %128, !dbg !1622

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i64 41, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 41, metadata !1549, metadata !DIExpression()), !dbg !1617
  %46 = getelementptr inbounds i16, ptr %0, i64 40, !dbg !1619
  %47 = load i32, ptr %46, align 4, !dbg !1620, !tbaa !1381
  %48 = icmp eq i32 %47, 0, !dbg !1621
  br i1 %48, label %49, label %128, !dbg !1622

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i64 39, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 39, metadata !1549, metadata !DIExpression()), !dbg !1617
  %50 = getelementptr inbounds i16, ptr %0, i64 38, !dbg !1619
  %51 = load i32, ptr %50, align 4, !dbg !1620, !tbaa !1381
  %52 = icmp eq i32 %51, 0, !dbg !1621
  br i1 %52, label %53, label %128, !dbg !1622

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i64 37, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 37, metadata !1549, metadata !DIExpression()), !dbg !1617
  %54 = getelementptr inbounds i16, ptr %0, i64 36, !dbg !1619
  %55 = load i32, ptr %54, align 4, !dbg !1620, !tbaa !1381
  %56 = icmp eq i32 %55, 0, !dbg !1621
  br i1 %56, label %57, label %128, !dbg !1622

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 35, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 35, metadata !1549, metadata !DIExpression()), !dbg !1617
  %58 = getelementptr inbounds i16, ptr %0, i64 34, !dbg !1619
  %59 = load i32, ptr %58, align 4, !dbg !1620, !tbaa !1381
  %60 = icmp eq i32 %59, 0, !dbg !1621
  br i1 %60, label %61, label %128, !dbg !1622

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 33, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 33, metadata !1549, metadata !DIExpression()), !dbg !1617
  %62 = getelementptr inbounds i16, ptr %0, i64 32, !dbg !1619
  %63 = load i32, ptr %62, align 4, !dbg !1620, !tbaa !1381
  %64 = icmp eq i32 %63, 0, !dbg !1621
  br i1 %64, label %65, label %128, !dbg !1622

65:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i64 31, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 31, metadata !1549, metadata !DIExpression()), !dbg !1617
  %66 = getelementptr inbounds i16, ptr %0, i64 30, !dbg !1619
  %67 = load i32, ptr %66, align 4, !dbg !1620, !tbaa !1381
  %68 = icmp eq i32 %67, 0, !dbg !1621
  br i1 %68, label %69, label %128, !dbg !1622

69:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i64 29, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 29, metadata !1549, metadata !DIExpression()), !dbg !1617
  %70 = getelementptr inbounds i16, ptr %0, i64 28, !dbg !1619
  %71 = load i32, ptr %70, align 4, !dbg !1620, !tbaa !1381
  %72 = icmp eq i32 %71, 0, !dbg !1621
  br i1 %72, label %73, label %128, !dbg !1622

73:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i64 27, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 27, metadata !1549, metadata !DIExpression()), !dbg !1617
  %74 = getelementptr inbounds i16, ptr %0, i64 26, !dbg !1619
  %75 = load i32, ptr %74, align 4, !dbg !1620, !tbaa !1381
  %76 = icmp eq i32 %75, 0, !dbg !1621
  br i1 %76, label %77, label %128, !dbg !1622

77:                                               ; preds = %73
  call void @llvm.dbg.value(metadata i64 25, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 25, metadata !1549, metadata !DIExpression()), !dbg !1617
  %78 = getelementptr inbounds i16, ptr %0, i64 24, !dbg !1619
  %79 = load i32, ptr %78, align 4, !dbg !1620, !tbaa !1381
  %80 = icmp eq i32 %79, 0, !dbg !1621
  br i1 %80, label %81, label %128, !dbg !1622

81:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i64 23, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 23, metadata !1549, metadata !DIExpression()), !dbg !1617
  %82 = getelementptr inbounds i16, ptr %0, i64 22, !dbg !1619
  %83 = load i32, ptr %82, align 4, !dbg !1620, !tbaa !1381
  %84 = icmp eq i32 %83, 0, !dbg !1621
  br i1 %84, label %85, label %128, !dbg !1622

85:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i64 21, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 21, metadata !1549, metadata !DIExpression()), !dbg !1617
  %86 = getelementptr inbounds i16, ptr %0, i64 20, !dbg !1619
  %87 = load i32, ptr %86, align 4, !dbg !1620, !tbaa !1381
  %88 = icmp eq i32 %87, 0, !dbg !1621
  br i1 %88, label %89, label %128, !dbg !1622

89:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i64 19, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 19, metadata !1549, metadata !DIExpression()), !dbg !1617
  %90 = getelementptr inbounds i16, ptr %0, i64 18, !dbg !1619
  %91 = load i32, ptr %90, align 4, !dbg !1620, !tbaa !1381
  %92 = icmp eq i32 %91, 0, !dbg !1621
  br i1 %92, label %93, label %128, !dbg !1622

93:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i64 17, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 17, metadata !1549, metadata !DIExpression()), !dbg !1617
  %94 = getelementptr inbounds i16, ptr %0, i64 16, !dbg !1619
  %95 = load i32, ptr %94, align 4, !dbg !1620, !tbaa !1381
  %96 = icmp eq i32 %95, 0, !dbg !1621
  br i1 %96, label %97, label %128, !dbg !1622

97:                                               ; preds = %93
  call void @llvm.dbg.value(metadata i64 15, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 15, metadata !1549, metadata !DIExpression()), !dbg !1617
  %98 = getelementptr inbounds i16, ptr %0, i64 14, !dbg !1619
  %99 = load i32, ptr %98, align 4, !dbg !1620, !tbaa !1381
  %100 = icmp eq i32 %99, 0, !dbg !1621
  br i1 %100, label %101, label %128, !dbg !1622

101:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 13, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 13, metadata !1549, metadata !DIExpression()), !dbg !1617
  %102 = getelementptr inbounds i16, ptr %0, i64 12, !dbg !1619
  %103 = load i32, ptr %102, align 4, !dbg !1620, !tbaa !1381
  %104 = icmp eq i32 %103, 0, !dbg !1621
  br i1 %104, label %105, label %128, !dbg !1622

105:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i64 11, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 11, metadata !1549, metadata !DIExpression()), !dbg !1617
  %106 = getelementptr inbounds i16, ptr %0, i64 10, !dbg !1619
  %107 = load i32, ptr %106, align 4, !dbg !1620, !tbaa !1381
  %108 = icmp eq i32 %107, 0, !dbg !1621
  br i1 %108, label %109, label %128, !dbg !1622

109:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i64 9, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 9, metadata !1549, metadata !DIExpression()), !dbg !1617
  %110 = getelementptr inbounds i16, ptr %0, i64 8, !dbg !1619
  %111 = load i32, ptr %110, align 4, !dbg !1620, !tbaa !1381
  %112 = icmp eq i32 %111, 0, !dbg !1621
  br i1 %112, label %113, label %128, !dbg !1622

113:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 7, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 7, metadata !1549, metadata !DIExpression()), !dbg !1617
  %114 = getelementptr inbounds i16, ptr %0, i64 6, !dbg !1619
  %115 = load i32, ptr %114, align 4, !dbg !1620, !tbaa !1381
  %116 = icmp eq i32 %115, 0, !dbg !1621
  br i1 %116, label %117, label %128, !dbg !1622

117:                                              ; preds = %113
  call void @llvm.dbg.value(metadata i64 5, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 5, metadata !1549, metadata !DIExpression()), !dbg !1617
  %118 = getelementptr inbounds i16, ptr %0, i64 4, !dbg !1619
  %119 = load i32, ptr %118, align 4, !dbg !1620, !tbaa !1381
  %120 = icmp eq i32 %119, 0, !dbg !1621
  br i1 %120, label %121, label %128, !dbg !1622

121:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i64 3, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 3, metadata !1549, metadata !DIExpression()), !dbg !1617
  %122 = getelementptr inbounds i16, ptr %0, i64 2, !dbg !1619
  %123 = load i32, ptr %122, align 4, !dbg !1620, !tbaa !1381
  %124 = icmp eq i32 %123, 0, !dbg !1621
  br i1 %124, label %125, label %128, !dbg !1622

125:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 1, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i64 1, metadata !1549, metadata !DIExpression()), !dbg !1617
  %126 = load i32, ptr %0, align 4, !dbg !1620, !tbaa !1381
  %127 = icmp eq i32 %126, 0, !dbg !1621
  br i1 %127, label %171, label %128, !dbg !1622

128:                                              ; preds = %1, %5, %9, %13, %17, %21, %25, %29, %33, %37, %41, %45, %49, %53, %57, %61, %65, %69, %73, %77, %81, %85, %89, %93, %97, %101, %105, %109, %113, %117, %121, %125
  %129 = phi i64 [ 63, %1 ], [ 61, %5 ], [ 59, %9 ], [ 57, %13 ], [ 55, %17 ], [ 53, %21 ], [ 51, %25 ], [ 49, %29 ], [ 47, %33 ], [ 45, %37 ], [ 43, %41 ], [ 41, %45 ], [ 39, %49 ], [ 37, %53 ], [ 35, %57 ], [ 33, %61 ], [ 31, %65 ], [ 29, %69 ], [ 27, %73 ], [ 25, %77 ], [ 23, %81 ], [ 21, %85 ], [ 19, %89 ], [ 17, %93 ], [ 15, %97 ], [ 13, %101 ], [ 11, %105 ], [ 9, %109 ], [ 7, %113 ], [ 5, %117 ], [ 3, %121 ], [ 1, %125 ]
  %130 = phi i64 [ 62, %1 ], [ 60, %5 ], [ 58, %9 ], [ 56, %13 ], [ 54, %17 ], [ 52, %21 ], [ 50, %25 ], [ 48, %29 ], [ 46, %33 ], [ 44, %37 ], [ 42, %41 ], [ 40, %45 ], [ 38, %49 ], [ 36, %53 ], [ 34, %57 ], [ 32, %61 ], [ 30, %65 ], [ 28, %69 ], [ 26, %73 ], [ 24, %77 ], [ 22, %81 ], [ 20, %85 ], [ 18, %89 ], [ 16, %93 ], [ 14, %97 ], [ 12, %101 ], [ 10, %105 ], [ 8, %109 ], [ 6, %113 ], [ 4, %117 ], [ 2, %121 ], [ 0, %125 ], !dbg !1623
  %131 = getelementptr inbounds i16, ptr %0, i64 %129, !dbg !1624
  %132 = load i16, ptr %131, align 2, !dbg !1624, !tbaa !1279
  %133 = icmp eq i16 %132, 0, !dbg !1625
  %134 = select i1 %133, i64 %130, i64 %129, !dbg !1626
  %135 = trunc i64 %134 to i32, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %135, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i32 0, metadata !1548, metadata !DIExpression()), !dbg !1617
  br label %136, !dbg !1627

136:                                              ; preds = %128, %164
  %137 = phi i32 [ %150, %164 ], [ %135, %128 ]
  %138 = phi i32 [ %169, %164 ], [ 0, %128 ]
  call void @llvm.dbg.value(metadata i32 %138, metadata !1548, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i32 %137, metadata !1549, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1617
  %139 = zext i32 %137 to i64
  %140 = getelementptr inbounds i16, ptr %0, i64 %139, !dbg !1628
  %141 = load i16, ptr %140, align 2, !dbg !1628, !tbaa !1279
  %142 = sext i16 %141 to i32, !dbg !1628
  %143 = add nsw i32 %142, 1, !dbg !1629
  %144 = icmp ult i32 %143, 3, !dbg !1629
  br i1 %144, label %145, label %171, !dbg !1627

145:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i32 0, metadata !1550, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i32 %137, metadata !1549, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1617
  %146 = icmp eq i32 %137, 0, !dbg !1631
  br i1 %146, label %158, label %147, !dbg !1632

147:                                              ; preds = %145, %155
  %148 = phi i32 [ %150, %155 ], [ %137, %145 ]
  %149 = phi i32 [ %156, %155 ], [ 0, %145 ]
  %150 = add nsw i32 %148, -1, !dbg !1630
  call void @llvm.dbg.value(metadata i32 %149, metadata !1550, metadata !DIExpression()), !dbg !1630
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i16, ptr %0, i64 %151, !dbg !1633
  %153 = load i16, ptr %152, align 2, !dbg !1633, !tbaa !1279
  %154 = icmp eq i16 %153, 0, !dbg !1634
  br i1 %154, label %155, label %164, !dbg !1635

155:                                              ; preds = %147
  call void @llvm.dbg.value(metadata i32 %150, metadata !1549, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1617
  %156 = add nuw i32 %149, 1, !dbg !1636
  call void @llvm.dbg.value(metadata i32 %156, metadata !1550, metadata !DIExpression()), !dbg !1630
  %157 = icmp eq i32 %156, %137, !dbg !1631
  br i1 %157, label %158, label %147, !dbg !1632, !llvm.loop !1637

158:                                              ; preds = %145, %155
  %159 = zext i32 %137 to i64, !dbg !1639
  %160 = getelementptr inbounds i8, ptr @x264_decimate_table8, i64 %159, !dbg !1639
  %161 = load i8, ptr %160, align 1, !dbg !1639, !tbaa !1579
  %162 = zext i8 %161 to i32, !dbg !1639
  %163 = add nuw nsw i32 %138, %162, !dbg !1640
  call void @llvm.dbg.value(metadata i32 -1, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i32 %163, metadata !1548, metadata !DIExpression()), !dbg !1617
  br label %171, !dbg !1641

164:                                              ; preds = %147
  %165 = zext i32 %149 to i64, !dbg !1639
  %166 = getelementptr inbounds i8, ptr @x264_decimate_table8, i64 %165, !dbg !1639
  %167 = load i8, ptr %166, align 1, !dbg !1639, !tbaa !1579
  %168 = zext i8 %167 to i32, !dbg !1639
  %169 = add nuw nsw i32 %138, %168, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %150, metadata !1549, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i32 %169, metadata !1548, metadata !DIExpression()), !dbg !1617
  %170 = icmp sgt i32 %148, 0, !dbg !1642
  br i1 %170, label %136, label %171, !dbg !1641

171:                                              ; preds = %136, %164, %158, %125
  %172 = phi i32 [ 0, %125 ], [ %163, %158 ], [ %169, %164 ], [ 9, %136 ]
  ret i32 %172, !dbg !1643
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_coeff_last4(ptr nocapture noundef readonly %0) #2 !dbg !1644 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1646, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr %0, metadata !1648, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 4, metadata !1651, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 3, metadata !1652, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i64 3, metadata !1652, metadata !DIExpression()), !dbg !1653
  %2 = load i64, ptr %0, align 8, !dbg !1655, !tbaa !1659
  %3 = icmp eq i64 %2, 0, !dbg !1655
  br i1 %3, label %20, label %4, !dbg !1660

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 3, metadata !1652, metadata !DIExpression()), !dbg !1653
  %5 = getelementptr inbounds i16, ptr %0, i64 3, !dbg !1661
  %6 = load i16, ptr %5, align 2, !dbg !1661, !tbaa !1279
  %7 = icmp eq i16 %6, 0, !dbg !1662
  br i1 %7, label %8, label %20, !dbg !1663

8:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 2, metadata !1652, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 2, metadata !1652, metadata !DIExpression()), !dbg !1653
  %9 = getelementptr inbounds i16, ptr %0, i64 2, !dbg !1661
  %10 = load i16, ptr %9, align 2, !dbg !1661, !tbaa !1279
  %11 = icmp eq i16 %10, 0, !dbg !1662
  br i1 %11, label %12, label %20, !dbg !1663

12:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i32 1, metadata !1652, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 1, metadata !1652, metadata !DIExpression()), !dbg !1653
  %13 = getelementptr inbounds i16, ptr %0, i64 1, !dbg !1661
  %14 = load i16, ptr %13, align 2, !dbg !1661, !tbaa !1279
  %15 = icmp eq i16 %14, 0, !dbg !1662
  br i1 %15, label %16, label %20, !dbg !1663

16:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !1652, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 0, metadata !1652, metadata !DIExpression()), !dbg !1653
  %17 = load i16, ptr %0, align 2, !dbg !1661, !tbaa !1279
  %18 = icmp eq i16 %17, 0, !dbg !1662
  %19 = select i1 %18, i32 -1, i32 0, !dbg !1663
  br label %20, !dbg !1663

20:                                               ; preds = %16, %4, %8, %12, %1
  %21 = phi i32 [ -1, %1 ], [ 3, %4 ], [ 2, %8 ], [ 1, %12 ], [ %19, %16 ], !dbg !1653
  ret i32 %21, !dbg !1664
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_coeff_last15(ptr nocapture noundef readonly %0) #2 !dbg !1665 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1667, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata ptr %0, metadata !1648, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 15, metadata !1651, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 14, metadata !1652, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 14, metadata !1652, metadata !DIExpression()), !dbg !1669
  %2 = getelementptr i16, ptr %0, i64 11, !dbg !1671
  %3 = load i64, ptr %2, align 8, !dbg !1672, !tbaa !1659
  %4 = icmp eq i64 %3, 0, !dbg !1672
  br i1 %4, label %5, label %13, !dbg !1673

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i64 10, metadata !1652, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 10, metadata !1652, metadata !DIExpression()), !dbg !1669
  %6 = getelementptr i16, ptr %0, i64 7, !dbg !1671
  %7 = load i64, ptr %6, align 8, !dbg !1672, !tbaa !1659
  %8 = icmp eq i64 %7, 0, !dbg !1672
  br i1 %8, label %9, label %13, !dbg !1673

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 6, metadata !1652, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 6, metadata !1652, metadata !DIExpression()), !dbg !1669
  %10 = getelementptr i16, ptr %0, i64 3, !dbg !1671
  %11 = load i64, ptr %10, align 8, !dbg !1672, !tbaa !1659
  %12 = icmp eq i64 %11, 0, !dbg !1672
  br i1 %12, label %15, label %13, !dbg !1673

13:                                               ; preds = %9, %5, %1
  %14 = phi i32 [ 14, %1 ], [ 10, %5 ], [ 6, %9 ]
  br label %15, !dbg !1674

15:                                               ; preds = %9, %13
  %16 = phi i32 [ 2, %9 ], [ %14, %13 ]
  br label %17, !dbg !1674

17:                                               ; preds = %15, %23
  %18 = phi i32 [ %24, %23 ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata i32 %18, metadata !1652, metadata !DIExpression()), !dbg !1669
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i16, ptr %0, i64 %19, !dbg !1675
  %21 = load i16, ptr %20, align 2, !dbg !1675, !tbaa !1279
  %22 = icmp eq i16 %21, 0, !dbg !1676
  br i1 %22, label %23, label %26, !dbg !1674

23:                                               ; preds = %17
  %24 = add nsw i32 %18, -1, !dbg !1677
  call void @llvm.dbg.value(metadata i32 %24, metadata !1652, metadata !DIExpression()), !dbg !1669
  %25 = icmp sgt i32 %18, 0, !dbg !1678
  br i1 %25, label %17, label %26, !dbg !1679, !llvm.loop !1680

26:                                               ; preds = %17, %23
  %27 = phi i32 [ -1, %23 ], [ %18, %17 ]
  ret i32 %27, !dbg !1681
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_coeff_last16(ptr nocapture noundef readonly %0) #2 !dbg !1682 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1684, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata ptr %0, metadata !1648, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 16, metadata !1651, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i32 15, metadata !1652, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i64 15, metadata !1652, metadata !DIExpression()), !dbg !1686
  %2 = getelementptr i16, ptr %0, i64 12, !dbg !1688
  %3 = load i64, ptr %2, align 8, !dbg !1689, !tbaa !1659
  %4 = icmp eq i64 %3, 0, !dbg !1689
  br i1 %4, label %5, label %16, !dbg !1690

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i64 11, metadata !1652, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i64 11, metadata !1652, metadata !DIExpression()), !dbg !1686
  %6 = getelementptr i16, ptr %0, i64 8, !dbg !1688
  %7 = load i64, ptr %6, align 8, !dbg !1689, !tbaa !1659
  %8 = icmp eq i64 %7, 0, !dbg !1689
  br i1 %8, label %9, label %16, !dbg !1690

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 7, metadata !1652, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i64 7, metadata !1652, metadata !DIExpression()), !dbg !1686
  %10 = getelementptr i16, ptr %0, i64 4, !dbg !1688
  %11 = load i64, ptr %10, align 8, !dbg !1689, !tbaa !1659
  %12 = icmp eq i64 %11, 0, !dbg !1689
  br i1 %12, label %13, label %16, !dbg !1690

13:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i64 3, metadata !1652, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i64 3, metadata !1652, metadata !DIExpression()), !dbg !1686
  %14 = load i64, ptr %0, align 8, !dbg !1689, !tbaa !1659
  %15 = icmp eq i64 %14, 0, !dbg !1689
  br i1 %15, label %27, label %16, !dbg !1690

16:                                               ; preds = %1, %5, %9, %13
  %17 = phi i32 [ 3, %13 ], [ 7, %9 ], [ 11, %5 ], [ 15, %1 ]
  br label %18, !dbg !1691

18:                                               ; preds = %16, %24
  %19 = phi i32 [ %25, %24 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata i32 %19, metadata !1652, metadata !DIExpression()), !dbg !1686
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i16, ptr %0, i64 %20, !dbg !1692
  %22 = load i16, ptr %21, align 2, !dbg !1692, !tbaa !1279
  %23 = icmp eq i16 %22, 0, !dbg !1693
  br i1 %23, label %24, label %27, !dbg !1691

24:                                               ; preds = %18
  %25 = add nsw i32 %19, -1, !dbg !1694
  call void @llvm.dbg.value(metadata i32 %25, metadata !1652, metadata !DIExpression()), !dbg !1686
  %26 = icmp sgt i32 %19, 0, !dbg !1695
  br i1 %26, label %18, label %27, !dbg !1696, !llvm.loop !1697

27:                                               ; preds = %18, %24, %13
  %28 = phi i32 [ -1, %13 ], [ %19, %18 ], [ -1, %24 ], !dbg !1686
  ret i32 %28, !dbg !1698
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_coeff_last64(ptr nocapture noundef readonly %0) #2 !dbg !1699 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1701, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata ptr %0, metadata !1648, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i32 64, metadata !1651, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i32 63, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 63, metadata !1652, metadata !DIExpression()), !dbg !1703
  %2 = getelementptr i16, ptr %0, i64 60, !dbg !1705
  %3 = load i64, ptr %2, align 8, !dbg !1706, !tbaa !1659
  %4 = icmp eq i64 %3, 0, !dbg !1706
  br i1 %4, label %5, label %64, !dbg !1707

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i64 59, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 59, metadata !1652, metadata !DIExpression()), !dbg !1703
  %6 = getelementptr i16, ptr %0, i64 56, !dbg !1705
  %7 = load i64, ptr %6, align 8, !dbg !1706, !tbaa !1659
  %8 = icmp eq i64 %7, 0, !dbg !1706
  br i1 %8, label %9, label %64, !dbg !1707

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 55, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 55, metadata !1652, metadata !DIExpression()), !dbg !1703
  %10 = getelementptr i16, ptr %0, i64 52, !dbg !1705
  %11 = load i64, ptr %10, align 8, !dbg !1706, !tbaa !1659
  %12 = icmp eq i64 %11, 0, !dbg !1706
  br i1 %12, label %13, label %64, !dbg !1707

13:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i64 51, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 51, metadata !1652, metadata !DIExpression()), !dbg !1703
  %14 = getelementptr i16, ptr %0, i64 48, !dbg !1705
  %15 = load i64, ptr %14, align 8, !dbg !1706, !tbaa !1659
  %16 = icmp eq i64 %15, 0, !dbg !1706
  br i1 %16, label %17, label %64, !dbg !1707

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 47, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 47, metadata !1652, metadata !DIExpression()), !dbg !1703
  %18 = getelementptr i16, ptr %0, i64 44, !dbg !1705
  %19 = load i64, ptr %18, align 8, !dbg !1706, !tbaa !1659
  %20 = icmp eq i64 %19, 0, !dbg !1706
  br i1 %20, label %21, label %64, !dbg !1707

21:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i64 43, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 43, metadata !1652, metadata !DIExpression()), !dbg !1703
  %22 = getelementptr i16, ptr %0, i64 40, !dbg !1705
  %23 = load i64, ptr %22, align 8, !dbg !1706, !tbaa !1659
  %24 = icmp eq i64 %23, 0, !dbg !1706
  br i1 %24, label %25, label %64, !dbg !1707

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 39, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 39, metadata !1652, metadata !DIExpression()), !dbg !1703
  %26 = getelementptr i16, ptr %0, i64 36, !dbg !1705
  %27 = load i64, ptr %26, align 8, !dbg !1706, !tbaa !1659
  %28 = icmp eq i64 %27, 0, !dbg !1706
  br i1 %28, label %29, label %64, !dbg !1707

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i64 35, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 35, metadata !1652, metadata !DIExpression()), !dbg !1703
  %30 = getelementptr i16, ptr %0, i64 32, !dbg !1705
  %31 = load i64, ptr %30, align 8, !dbg !1706, !tbaa !1659
  %32 = icmp eq i64 %31, 0, !dbg !1706
  br i1 %32, label %33, label %64, !dbg !1707

33:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i64 31, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 31, metadata !1652, metadata !DIExpression()), !dbg !1703
  %34 = getelementptr i16, ptr %0, i64 28, !dbg !1705
  %35 = load i64, ptr %34, align 8, !dbg !1706, !tbaa !1659
  %36 = icmp eq i64 %35, 0, !dbg !1706
  br i1 %36, label %37, label %64, !dbg !1707

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i64 27, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 27, metadata !1652, metadata !DIExpression()), !dbg !1703
  %38 = getelementptr i16, ptr %0, i64 24, !dbg !1705
  %39 = load i64, ptr %38, align 8, !dbg !1706, !tbaa !1659
  %40 = icmp eq i64 %39, 0, !dbg !1706
  br i1 %40, label %41, label %64, !dbg !1707

41:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i64 23, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 23, metadata !1652, metadata !DIExpression()), !dbg !1703
  %42 = getelementptr i16, ptr %0, i64 20, !dbg !1705
  %43 = load i64, ptr %42, align 8, !dbg !1706, !tbaa !1659
  %44 = icmp eq i64 %43, 0, !dbg !1706
  br i1 %44, label %45, label %64, !dbg !1707

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i64 19, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 19, metadata !1652, metadata !DIExpression()), !dbg !1703
  %46 = getelementptr i16, ptr %0, i64 16, !dbg !1705
  %47 = load i64, ptr %46, align 8, !dbg !1706, !tbaa !1659
  %48 = icmp eq i64 %47, 0, !dbg !1706
  br i1 %48, label %49, label %64, !dbg !1707

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i64 15, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 15, metadata !1652, metadata !DIExpression()), !dbg !1703
  %50 = getelementptr i16, ptr %0, i64 12, !dbg !1705
  %51 = load i64, ptr %50, align 8, !dbg !1706, !tbaa !1659
  %52 = icmp eq i64 %51, 0, !dbg !1706
  br i1 %52, label %53, label %64, !dbg !1707

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i64 11, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 11, metadata !1652, metadata !DIExpression()), !dbg !1703
  %54 = getelementptr i16, ptr %0, i64 8, !dbg !1705
  %55 = load i64, ptr %54, align 8, !dbg !1706, !tbaa !1659
  %56 = icmp eq i64 %55, 0, !dbg !1706
  br i1 %56, label %57, label %64, !dbg !1707

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 7, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 7, metadata !1652, metadata !DIExpression()), !dbg !1703
  %58 = getelementptr i16, ptr %0, i64 4, !dbg !1705
  %59 = load i64, ptr %58, align 8, !dbg !1706, !tbaa !1659
  %60 = icmp eq i64 %59, 0, !dbg !1706
  br i1 %60, label %61, label %64, !dbg !1707

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !1652, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i64 3, metadata !1652, metadata !DIExpression()), !dbg !1703
  %62 = load i64, ptr %0, align 8, !dbg !1706, !tbaa !1659
  %63 = icmp eq i64 %62, 0, !dbg !1706
  br i1 %63, label %75, label %64, !dbg !1707

64:                                               ; preds = %1, %5, %9, %13, %17, %21, %25, %29, %33, %37, %41, %45, %49, %53, %57, %61
  %65 = phi i32 [ 3, %61 ], [ 7, %57 ], [ 11, %53 ], [ 15, %49 ], [ 19, %45 ], [ 23, %41 ], [ 27, %37 ], [ 31, %33 ], [ 35, %29 ], [ 39, %25 ], [ 43, %21 ], [ 47, %17 ], [ 51, %13 ], [ 55, %9 ], [ 59, %5 ], [ 63, %1 ]
  br label %66, !dbg !1708

66:                                               ; preds = %64, %72
  %67 = phi i32 [ %73, %72 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata i32 %67, metadata !1652, metadata !DIExpression()), !dbg !1703
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i16, ptr %0, i64 %68, !dbg !1709
  %70 = load i16, ptr %69, align 2, !dbg !1709, !tbaa !1279
  %71 = icmp eq i16 %70, 0, !dbg !1710
  br i1 %71, label %72, label %75, !dbg !1708

72:                                               ; preds = %66
  %73 = add nsw i32 %67, -1, !dbg !1711
  call void @llvm.dbg.value(metadata i32 %73, metadata !1652, metadata !DIExpression()), !dbg !1703
  %74 = icmp sgt i32 %67, 0, !dbg !1712
  br i1 %74, label %66, label %75, !dbg !1713, !llvm.loop !1714

75:                                               ; preds = %66, %72, %61
  %76 = phi i32 [ -1, %61 ], [ %67, %66 ], [ -1, %72 ], !dbg !1703
  ret i32 %76, !dbg !1715
}

declare void @x264_quant_2x2_dc_mmxext(ptr noundef, i32 noundef, i32 noundef) #3

declare i32 @x264_coeff_last4_mmxext(ptr noundef) #3

declare void @x264_quant_4x4_dc_sse2(ptr noundef, i32 noundef, i32 noundef) #3

declare void @x264_quant_4x4_sse2(ptr noundef, ptr noundef, ptr noundef) #3

declare void @x264_quant_8x8_sse2(ptr noundef, ptr noundef, ptr noundef) #3

declare void @x264_dequant_4x4_sse2(ptr noundef, ptr noundef, i32 noundef) #3

declare void @x264_dequant_4x4dc_sse2(ptr noundef, ptr noundef, i32 noundef) #3

declare void @x264_dequant_8x8_sse2(ptr noundef, ptr noundef, i32 noundef) #3

declare void @x264_dequant_4x4_flat16_sse2(ptr noundef, ptr noundef, i32 noundef) #3

declare void @x264_dequant_8x8_flat16_sse2(ptr noundef, ptr noundef, i32 noundef) #3

declare void @x264_denoise_dct_sse2(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @x264_decimate_score15_sse2(ptr noundef) #3

declare i32 @x264_decimate_score16_sse2(ptr noundef) #3

declare i32 @x264_decimate_score64_sse2(ptr noundef) #3

declare i32 @x264_coeff_last15_sse2(ptr noundef) #3

declare i32 @x264_coeff_last16_sse2(ptr noundef) #3

declare i32 @x264_coeff_last64_sse2(ptr noundef) #3

declare void @x264_quant_2x2_dc_ssse3(ptr noundef, i32 noundef, i32 noundef) #3

declare void @x264_quant_4x4_dc_ssse3(ptr noundef, i32 noundef, i32 noundef) #3

declare void @x264_quant_4x4_ssse3(ptr noundef, ptr noundef, ptr noundef) #3

declare void @x264_quant_8x8_ssse3(ptr noundef, ptr noundef, ptr noundef) #3

declare void @x264_denoise_dct_ssse3(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @x264_decimate_score15_ssse3(ptr noundef) #3

declare i32 @x264_decimate_score16_ssse3(ptr noundef) #3

declare i32 @x264_decimate_score64_ssse3(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_decimate_table4", scope: !2, file: !3, line: 197, type: !35, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !15, globals: !25, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "common/quant.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "f0d435667fb18d8bb5bafadbb1e590ae")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cabac_ctx_block_cat_e", file: !6, line: 266, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "common/macroblock.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "0b0c175005b691009f3df3e457cfe9c0")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "DCT_LUMA_DC", value: 0)
!10 = !DIEnumerator(name: "DCT_LUMA_AC", value: 1)
!11 = !DIEnumerator(name: "DCT_LUMA_4x4", value: 2)
!12 = !DIEnumerator(name: "DCT_CHROMA_DC", value: 3)
!13 = !DIEnumerator(name: "DCT_CHROMA_AC", value: 4)
!14 = !DIEnumerator(name: "DCT_LUMA_8x8", value: 5)
!15 = !{!16, !7, !21}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 26, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !20, line: 42, baseType: !7)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !18, line: 27, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !20, line: 45, baseType: !24)
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !{!0, !26}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "x264_decimate_table8", scope: !2, file: !3, line: 199, type: !28, isLocal: false, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 512, elements: !33)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !18, line: 24, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !20, line: 38, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !{!34}
!34 = !DISubrange(count: 64)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 16)
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 8, !"PIC Level", i32 2}
!42 = !{i32 7, !"PIE Level", i32 2}
!43 = !{i32 7, !"uwtable", i32 2}
!44 = !{!"clang version 16.0.0"}
!45 = distinct !DISubprogram(name: "x264_quant_init", scope: !3, file: !3, line: 276, type: !46, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1138)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !60, !1137}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !50, line: 42, baseType: !51)
!50 = !DIFile(filename: "./x264.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "9fe19a6136ab7ddd44a70d62bce62365")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !52, line: 250, size: 206080, elements: !53)
!52 = !DIFile(filename: "common/common.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "4880b62cc871dca4002788746fbccb70")
!53 = !{!54, !199, !203, !206, !207, !208, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !322, !324, !351, !353, !354, !361, !366, !370, !374, !381, !385, !386, !387, !388, !391, !393, !395, !435, !452, !616, !617, !618, !619, !623, !624, !625, !626, !641, !794, !798, !853, !862, !863, !871, !873, !942, !1002, !1054, !1075, !1117}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !51, file: !52, line: 253, baseType: !55, size: 4928)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !50, line: 295, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !50, line: 151, size: 4928, elements: !57)
!57 = !{!58, !59, !61, !62, !63, !64, !65, !66, !67, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !100, !102, !103, !104, !105, !107, !108, !123, !124, !125, !126, !127, !157, !196, !197, !198}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !56, file: !50, line: 154, baseType: !7, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !56, file: !50, line: 155, baseType: !60, size: 32, offset: 32)
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !56, file: !50, line: 156, baseType: !60, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !56, file: !50, line: 159, baseType: !60, size: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !56, file: !50, line: 160, baseType: !60, size: 32, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !56, file: !50, line: 161, baseType: !60, size: 32, offset: 160)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !56, file: !50, line: 162, baseType: !60, size: 32, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !56, file: !50, line: 163, baseType: !60, size: 32, offset: 224)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !56, file: !50, line: 180, baseType: !68, size: 288, offset: 256)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !56, file: !50, line: 165, size: 288, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !68, file: !50, line: 168, baseType: !60, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !68, file: !50, line: 169, baseType: !60, size: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !68, file: !50, line: 171, baseType: !60, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !68, file: !50, line: 174, baseType: !60, size: 32, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !68, file: !50, line: 175, baseType: !60, size: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !68, file: !50, line: 176, baseType: !60, size: 32, offset: 160)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !68, file: !50, line: 177, baseType: !60, size: 32, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !68, file: !50, line: 178, baseType: !60, size: 32, offset: 224)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !68, file: !50, line: 179, baseType: !60, size: 32, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !56, file: !50, line: 182, baseType: !60, size: 32, offset: 544)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !56, file: !50, line: 183, baseType: !60, size: 32, offset: 576)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !56, file: !50, line: 186, baseType: !60, size: 32, offset: 608)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !56, file: !50, line: 187, baseType: !60, size: 32, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !56, file: !50, line: 188, baseType: !60, size: 32, offset: 672)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !56, file: !50, line: 189, baseType: !60, size: 32, offset: 704)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "b_pre_scenecut", scope: !56, file: !50, line: 190, baseType: !60, size: 32, offset: 736)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !56, file: !50, line: 191, baseType: !60, size: 32, offset: 768)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !56, file: !50, line: 192, baseType: !60, size: 32, offset: 800)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !56, file: !50, line: 193, baseType: !60, size: 32, offset: 832)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "b_bframe_pyramid", scope: !56, file: !50, line: 194, baseType: !60, size: 32, offset: 864)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !56, file: !50, line: 196, baseType: !60, size: 32, offset: 896)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !56, file: !50, line: 197, baseType: !60, size: 32, offset: 928)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !56, file: !50, line: 198, baseType: !60, size: 32, offset: 960)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !56, file: !50, line: 200, baseType: !60, size: 32, offset: 992)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !56, file: !50, line: 201, baseType: !60, size: 32, offset: 1024)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !56, file: !50, line: 203, baseType: !60, size: 32, offset: 1056)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !56, file: !50, line: 205, baseType: !60, size: 32, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !56, file: !50, line: 206, baseType: !98, size: 64, offset: 1152)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !56, file: !50, line: 207, baseType: !101, size: 128, offset: 1216)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !36)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !56, file: !50, line: 208, baseType: !101, size: 128, offset: 1344)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !56, file: !50, line: 209, baseType: !101, size: 128, offset: 1472)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !56, file: !50, line: 210, baseType: !101, size: 128, offset: 1600)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !56, file: !50, line: 211, baseType: !106, size: 512, offset: 1728)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !33)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !56, file: !50, line: 212, baseType: !106, size: 512, offset: 2240)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !56, file: !50, line: 215, baseType: !109, size: 64, offset: 2752)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !112, !60, !113, !115}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !117)
!117 = !{!118, !120, !121, !122}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !116, file: !119, line: 199, baseType: !7, size: 32)
!119 = !DIFile(filename: "common/quant.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src")
!120 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !116, file: !119, line: 199, baseType: !7, size: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !116, file: !119, line: 199, baseType: !112, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !116, file: !119, line: 199, baseType: !112, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !56, file: !50, line: 216, baseType: !112, size: 64, offset: 2816)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !56, file: !50, line: 217, baseType: !60, size: 32, offset: 2880)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !56, file: !50, line: 218, baseType: !60, size: 32, offset: 2912)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !56, file: !50, line: 219, baseType: !98, size: 64, offset: 2944)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !56, file: !50, line: 252, baseType: !128, size: 768, offset: 3008)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !56, file: !50, line: 222, size: 768, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !150, !151, !155, !156}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !128, file: !50, line: 224, baseType: !7, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !128, file: !50, line: 225, baseType: !7, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !128, file: !50, line: 227, baseType: !60, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !128, file: !50, line: 228, baseType: !60, size: 32, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !128, file: !50, line: 229, baseType: !60, size: 32, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_8x8_inference", scope: !128, file: !50, line: 230, baseType: !60, size: 32, offset: 160)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !128, file: !50, line: 231, baseType: !60, size: 32, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !128, file: !50, line: 233, baseType: !60, size: 32, offset: 224)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !128, file: !50, line: 234, baseType: !60, size: 32, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !128, file: !50, line: 235, baseType: !60, size: 32, offset: 288)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !128, file: !50, line: 236, baseType: !60, size: 32, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !128, file: !50, line: 237, baseType: !60, size: 32, offset: 352)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !128, file: !50, line: 238, baseType: !60, size: 32, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !128, file: !50, line: 239, baseType: !60, size: 32, offset: 416)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !128, file: !50, line: 240, baseType: !60, size: 32, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !128, file: !50, line: 241, baseType: !60, size: 32, offset: 480)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !128, file: !50, line: 242, baseType: !60, size: 32, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !128, file: !50, line: 243, baseType: !60, size: 32, offset: 544)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !128, file: !50, line: 244, baseType: !149, size: 32, offset: 576)
!149 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !128, file: !50, line: 245, baseType: !149, size: 32, offset: 608)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !128, file: !50, line: 248, baseType: !152, size: 64, offset: 640)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 64, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 2)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !128, file: !50, line: 250, baseType: !60, size: 32, offset: 704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !128, file: !50, line: 251, baseType: !60, size: 32, offset: 736)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !56, file: !50, line: 289, baseType: !158, size: 1024, offset: 3776)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !56, file: !50, line: 255, size: 1024, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !194, !195}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !158, file: !50, line: 257, baseType: !60, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !158, file: !50, line: 259, baseType: !60, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !158, file: !50, line: 260, baseType: !60, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !158, file: !50, line: 261, baseType: !60, size: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !158, file: !50, line: 262, baseType: !60, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !158, file: !50, line: 264, baseType: !60, size: 32, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !158, file: !50, line: 265, baseType: !149, size: 32, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !158, file: !50, line: 266, baseType: !149, size: 32, offset: 224)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !158, file: !50, line: 267, baseType: !60, size: 32, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !158, file: !50, line: 268, baseType: !60, size: 32, offset: 288)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !158, file: !50, line: 269, baseType: !149, size: 32, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !158, file: !50, line: 270, baseType: !149, size: 32, offset: 352)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !158, file: !50, line: 271, baseType: !149, size: 32, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !158, file: !50, line: 273, baseType: !60, size: 32, offset: 416)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !158, file: !50, line: 274, baseType: !149, size: 32, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !158, file: !50, line: 277, baseType: !60, size: 32, offset: 480)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !158, file: !50, line: 278, baseType: !98, size: 64, offset: 512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !158, file: !50, line: 279, baseType: !60, size: 32, offset: 576)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !158, file: !50, line: 280, baseType: !98, size: 64, offset: 640)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !158, file: !50, line: 283, baseType: !149, size: 32, offset: 704)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !158, file: !50, line: 284, baseType: !149, size: 32, offset: 736)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !158, file: !50, line: 285, baseType: !149, size: 32, offset: 768)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !158, file: !50, line: 286, baseType: !183, size: 64, offset: 832)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !50, line: 149, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 142, size: 256, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !185, file: !50, line: 144, baseType: !60, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !185, file: !50, line: 144, baseType: !60, size: 32, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !185, file: !50, line: 145, baseType: !60, size: 32, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !185, file: !50, line: 146, baseType: !60, size: 32, offset: 96)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !185, file: !50, line: 147, baseType: !149, size: 32, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !185, file: !50, line: 148, baseType: !193, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !158, file: !50, line: 287, baseType: !60, size: 32, offset: 896)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !158, file: !50, line: 288, baseType: !98, size: 64, offset: 960)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !56, file: !50, line: 292, baseType: !60, size: 32, offset: 4800)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !56, file: !50, line: 293, baseType: !60, size: 32, offset: 4832)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !56, file: !50, line: 294, baseType: !60, size: 32, offset: 4864)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !51, file: !52, line: 255, baseType: !200, size: 8192, offset: 4928)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8192, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !51, file: !52, line: 256, baseType: !204, size: 64, offset: 13120)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !205, line: 27, baseType: !24)
!205 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!206 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !51, file: !52, line: 257, baseType: !60, size: 32, offset: 13184)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !51, file: !52, line: 258, baseType: !60, size: 32, offset: 13216)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !51, file: !52, line: 269, baseType: !209, size: 2112, offset: 13248)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !51, file: !52, line: 261, size: 2112, elements: !210)
!210 = !{!211, !212, !224, !225, !226, !240}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !209, file: !52, line: 263, baseType: !60, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !209, file: !52, line: 264, baseType: !213, size: 1536, offset: 64)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 1536, elements: !222)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !50, line: 399, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 391, size: 192, elements: !216)
!216 = !{!217, !218, !219, !220}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !215, file: !50, line: 393, baseType: !60, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !215, file: !50, line: 394, baseType: !60, size: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !215, file: !50, line: 397, baseType: !60, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !215, file: !50, line: 398, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!222 = !{!223}
!223 = !DISubrange(count: 8)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !209, file: !52, line: 265, baseType: !60, size: 32, offset: 1600)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !209, file: !52, line: 266, baseType: !221, size: 64, offset: 1664)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !209, file: !52, line: 267, baseType: !227, size: 320, offset: 1728)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !228, line: 49, baseType: !229)
!228 = !DIFile(filename: "common/bs.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "2f46b0964798cffcc7898517b4d9922e")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !228, line: 40, size: 320, elements: !230)
!230 = !{!231, !232, !233, !234, !238, !239}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !229, file: !228, line: 42, baseType: !221, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !229, file: !228, line: 43, baseType: !221, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !229, file: !228, line: 44, baseType: !221, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !229, file: !228, line: 46, baseType: !235, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !236, line: 87, baseType: !237)
!236 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!237 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !229, file: !228, line: 47, baseType: !60, size: 32, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !229, file: !228, line: 48, baseType: !60, size: 32, offset: 288)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !209, file: !52, line: 268, baseType: !60, size: 32, offset: 2048)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !51, file: !52, line: 274, baseType: !60, size: 32, offset: 15360)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_offset", scope: !51, file: !52, line: 276, baseType: !60, size: 32, offset: 15392)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !51, file: !52, line: 277, baseType: !60, size: 32, offset: 15424)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_msb", scope: !51, file: !52, line: 278, baseType: !60, size: 32, offset: 15456)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !51, file: !52, line: 279, baseType: !60, size: 32, offset: 15488)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !51, file: !52, line: 280, baseType: !60, size: 32, offset: 15520)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_num", scope: !51, file: !52, line: 282, baseType: !60, size: 32, offset: 15552)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !51, file: !52, line: 283, baseType: !60, size: 32, offset: 15584)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !51, file: !52, line: 284, baseType: !60, size: 32, offset: 15616)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !51, file: !52, line: 287, baseType: !251, size: 9920, offset: 15648)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 9920, elements: !320)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !253, line: 133, baseType: !254)
!253 = !DIFile(filename: "common/set.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "06164d1fd824dd844d17e97dd39e9ac3")
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !253, line: 52, size: 9920, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !273, !274, !275, !276, !277, !278, !279, !280, !281, !288, !289, !319}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !254, file: !253, line: 54, baseType: !60, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !254, file: !253, line: 56, baseType: !60, size: 32, offset: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !254, file: !253, line: 57, baseType: !60, size: 32, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !254, file: !253, line: 59, baseType: !60, size: 32, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !254, file: !253, line: 60, baseType: !60, size: 32, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !254, file: !253, line: 61, baseType: !60, size: 32, offset: 160)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !254, file: !253, line: 63, baseType: !60, size: 32, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !254, file: !253, line: 65, baseType: !60, size: 32, offset: 224)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !254, file: !253, line: 67, baseType: !60, size: 32, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !254, file: !253, line: 69, baseType: !60, size: 32, offset: 288)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !254, file: !253, line: 70, baseType: !60, size: 32, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !254, file: !253, line: 71, baseType: !60, size: 32, offset: 352)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !254, file: !253, line: 72, baseType: !60, size: 32, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !254, file: !253, line: 73, baseType: !270, size: 8192, offset: 416)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 8192, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !254, file: !253, line: 75, baseType: !60, size: 32, offset: 8608)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !254, file: !253, line: 76, baseType: !60, size: 32, offset: 8640)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !254, file: !253, line: 77, baseType: !60, size: 32, offset: 8672)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !254, file: !253, line: 78, baseType: !60, size: 32, offset: 8704)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !254, file: !253, line: 79, baseType: !60, size: 32, offset: 8736)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !254, file: !253, line: 80, baseType: !60, size: 32, offset: 8768)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !254, file: !253, line: 81, baseType: !60, size: 32, offset: 8800)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !254, file: !253, line: 83, baseType: !60, size: 32, offset: 8832)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !254, file: !253, line: 90, baseType: !282, size: 128, offset: 8864)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !254, file: !253, line: 84, size: 128, elements: !283)
!283 = !{!284, !285, !286, !287}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !282, file: !253, line: 86, baseType: !60, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !282, file: !253, line: 87, baseType: !60, size: 32, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !282, file: !253, line: 88, baseType: !60, size: 32, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !282, file: !253, line: 89, baseType: !60, size: 32, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !254, file: !253, line: 92, baseType: !60, size: 32, offset: 8992)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !254, file: !253, line: 129, baseType: !290, size: 864, offset: 9024)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !254, file: !253, line: 93, size: 864, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !290, file: !253, line: 95, baseType: !60, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !290, file: !253, line: 96, baseType: !60, size: 32, offset: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !290, file: !253, line: 97, baseType: !60, size: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !290, file: !253, line: 99, baseType: !60, size: 32, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !290, file: !253, line: 100, baseType: !60, size: 32, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !290, file: !253, line: 102, baseType: !60, size: 32, offset: 160)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !290, file: !253, line: 103, baseType: !60, size: 32, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !290, file: !253, line: 104, baseType: !60, size: 32, offset: 224)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !290, file: !253, line: 105, baseType: !60, size: 32, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !290, file: !253, line: 106, baseType: !60, size: 32, offset: 288)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !290, file: !253, line: 107, baseType: !60, size: 32, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !290, file: !253, line: 108, baseType: !60, size: 32, offset: 352)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !290, file: !253, line: 110, baseType: !60, size: 32, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !290, file: !253, line: 111, baseType: !60, size: 32, offset: 416)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !290, file: !253, line: 112, baseType: !60, size: 32, offset: 448)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !290, file: !253, line: 114, baseType: !60, size: 32, offset: 480)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !290, file: !253, line: 115, baseType: !60, size: 32, offset: 512)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !290, file: !253, line: 116, baseType: !60, size: 32, offset: 544)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !290, file: !253, line: 117, baseType: !60, size: 32, offset: 576)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !290, file: !253, line: 119, baseType: !60, size: 32, offset: 608)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !290, file: !253, line: 120, baseType: !60, size: 32, offset: 640)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !290, file: !253, line: 121, baseType: !60, size: 32, offset: 672)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !290, file: !253, line: 122, baseType: !60, size: 32, offset: 704)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !290, file: !253, line: 123, baseType: !60, size: 32, offset: 736)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !290, file: !253, line: 124, baseType: !60, size: 32, offset: 768)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !290, file: !253, line: 125, baseType: !60, size: 32, offset: 800)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !290, file: !253, line: 126, baseType: !60, size: 32, offset: 832)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !254, file: !253, line: 131, baseType: !60, size: 32, offset: 9888)
!320 = !{!321}
!321 = !DISubrange(count: 1)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !51, file: !52, line: 288, baseType: !323, size: 64, offset: 25600)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !51, file: !52, line: 289, baseType: !325, size: 960, offset: 25664)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 960, elements: !320)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !253, line: 165, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !253, line: 135, size: 960, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !327, file: !253, line: 137, baseType: !60, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !327, file: !253, line: 138, baseType: !60, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !327, file: !253, line: 140, baseType: !60, size: 32, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !327, file: !253, line: 142, baseType: !60, size: 32, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !327, file: !253, line: 143, baseType: !60, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !327, file: !253, line: 145, baseType: !60, size: 32, offset: 160)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !327, file: !253, line: 146, baseType: !60, size: 32, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !327, file: !253, line: 148, baseType: !60, size: 32, offset: 224)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !327, file: !253, line: 149, baseType: !60, size: 32, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !327, file: !253, line: 151, baseType: !60, size: 32, offset: 288)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !327, file: !253, line: 152, baseType: !60, size: 32, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !327, file: !253, line: 154, baseType: !60, size: 32, offset: 352)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !327, file: !253, line: 156, baseType: !60, size: 32, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !327, file: !253, line: 157, baseType: !60, size: 32, offset: 416)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !327, file: !253, line: 158, baseType: !60, size: 32, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !327, file: !253, line: 160, baseType: !60, size: 32, offset: 480)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !327, file: !253, line: 162, baseType: !60, size: 32, offset: 512)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !327, file: !253, line: 163, baseType: !347, size: 384, offset: 576)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 384, elements: !349)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!349 = !{!350}
!350 = !DISubrange(count: 6)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !51, file: !52, line: 290, baseType: !352, size: 64, offset: 26624)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !51, file: !52, line: 291, baseType: !60, size: 32, offset: 26688)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !51, file: !52, line: 294, baseType: !355, size: 256, offset: 26752)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 256, elements: !360)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 512, elements: !358)
!358 = !{!359, !359}
!359 = !DISubrange(count: 4)
!360 = !{!359}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !51, file: !52, line: 295, baseType: !362, size: 128, offset: 27008)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 128, elements: !153)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2048, elements: !365)
!365 = !{!223, !223}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !51, file: !52, line: 297, baseType: !367, size: 256, offset: 27136)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 256, elements: !360)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 512, elements: !36)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !51, file: !52, line: 298, baseType: !371, size: 128, offset: 27392)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 128, elements: !153)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2048, elements: !33)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !51, file: !52, line: 300, baseType: !375, size: 256, offset: 27520)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 256, elements: !360)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 256, elements: !36)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !18, line: 25, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !20, line: 40, baseType: !380)
!380 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !51, file: !52, line: 301, baseType: !382, size: 128, offset: 27776)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 128, elements: !153)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 1024, elements: !33)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !51, file: !52, line: 302, baseType: !375, size: 256, offset: 27904)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !51, file: !52, line: 303, baseType: !382, size: 128, offset: 28160)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !51, file: !52, line: 305, baseType: !348, size: 64, offset: 28288)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !51, file: !52, line: 307, baseType: !389, size: 4096, align: 128, offset: 28416)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 4096, elements: !390)
!390 = !{!154, !34}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !51, file: !52, line: 308, baseType: !392, size: 2048, align: 128, offset: 32512)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 2048, elements: !390)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !51, file: !52, line: 309, baseType: !394, size: 64, offset: 34560)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, elements: !153)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !51, file: !52, line: 312, baseType: !396, size: 3072, offset: 34624)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !52, line: 209, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 159, size: 3072, elements: !398)
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !427, !428, !429, !430, !431, !432, !433, !434}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !397, file: !52, line: 161, baseType: !323, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !397, file: !52, line: 162, baseType: !352, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !397, file: !52, line: 164, baseType: !60, size: 32, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !397, file: !52, line: 165, baseType: !60, size: 32, offset: 160)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !397, file: !52, line: 166, baseType: !60, size: 32, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !397, file: !52, line: 168, baseType: !60, size: 32, offset: 224)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !397, file: !52, line: 170, baseType: !60, size: 32, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !397, file: !52, line: 172, baseType: !60, size: 32, offset: 288)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !397, file: !52, line: 173, baseType: !60, size: 32, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !397, file: !52, line: 174, baseType: !60, size: 32, offset: 352)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !397, file: !52, line: 176, baseType: !60, size: 32, offset: 384)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !397, file: !52, line: 178, baseType: !60, size: 32, offset: 416)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !397, file: !52, line: 179, baseType: !60, size: 32, offset: 448)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !397, file: !52, line: 181, baseType: !152, size: 64, offset: 480)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !397, file: !52, line: 182, baseType: !60, size: 32, offset: 544)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !397, file: !52, line: 184, baseType: !60, size: 32, offset: 576)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !397, file: !52, line: 186, baseType: !60, size: 32, offset: 608)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !397, file: !52, line: 187, baseType: !60, size: 32, offset: 640)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !397, file: !52, line: 188, baseType: !60, size: 32, offset: 672)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !397, file: !52, line: 190, baseType: !60, size: 32, offset: 704)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !397, file: !52, line: 191, baseType: !60, size: 32, offset: 736)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !397, file: !52, line: 195, baseType: !421, size: 2048, offset: 768)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 2048, elements: !426)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !397, file: !52, line: 192, size: 64, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !422, file: !52, line: 193, baseType: !60, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !422, file: !52, line: 194, baseType: !60, size: 32, offset: 32)
!426 = !{!154, !37}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !397, file: !52, line: 197, baseType: !60, size: 32, offset: 2816)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !397, file: !52, line: 199, baseType: !60, size: 32, offset: 2848)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !397, file: !52, line: 200, baseType: !60, size: 32, offset: 2880)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !397, file: !52, line: 201, baseType: !60, size: 32, offset: 2912)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !397, file: !52, line: 202, baseType: !60, size: 32, offset: 2944)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !397, file: !52, line: 205, baseType: !60, size: 32, offset: 2976)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !397, file: !52, line: 206, baseType: !60, size: 32, offset: 3008)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !397, file: !52, line: 207, baseType: !60, size: 32, offset: 3040)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !51, file: !52, line: 315, baseType: !436, size: 4096, offset: 37760)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !437, line: 46, baseType: !438)
!437 = !DIFile(filename: "common/cabac.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fed287ee191b19e61654b41f7c57e583")
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !437, line: 27, size: 4096, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445, !446, !447, !448}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !438, file: !437, line: 30, baseType: !60, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !438, file: !437, line: 31, baseType: !60, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !438, file: !437, line: 34, baseType: !60, size: 32, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !438, file: !437, line: 35, baseType: !60, size: 32, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !438, file: !437, line: 37, baseType: !221, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !438, file: !437, line: 38, baseType: !221, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !438, file: !437, line: 39, baseType: !221, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !438, file: !437, line: 42, baseType: !60, size: 32, align: 128, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !438, file: !437, line: 45, baseType: !449, size: 3680, offset: 416)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 3680, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 460)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !51, file: !52, line: 340, baseType: !453, size: 31808, offset: 41856)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !51, file: !52, line: 317, size: 31808, elements: !454)
!454 = !{!455, !601, !602, !606, !607, !609, !610, !611, !612, !613, !614, !615}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !453, file: !52, line: 320, baseType: !456, size: 4288)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 4288, elements: !599)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !459, line: 94, baseType: !460)
!459 = !DIFile(filename: "common/frame.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "3ae200731644fdbac60ac7f8f3f9d2f1")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 31, size: 51648, elements: !461)
!461 = !{!462, !463, !464, !465, !469, !470, !471, !472, !473, !474, !475, !479, !480, !481, !482, !483, !484, !486, !488, !489, !491, !492, !493, !498, !505, !509, !512, !514, !515, !517, !518, !522, !523, !524, !527, !529, !530, !531, !532, !534, !535, !536, !537, !538, !539, !567}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !460, file: !459, line: 34, baseType: !60, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !460, file: !459, line: 35, baseType: !60, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !460, file: !459, line: 36, baseType: !60, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !460, file: !459, line: 37, baseType: !466, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !467, line: 27, baseType: !468)
!467 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !20, line: 44, baseType: !237)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !460, file: !459, line: 38, baseType: !60, size: 32, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !460, file: !459, line: 39, baseType: !60, size: 32, offset: 224)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !460, file: !459, line: 40, baseType: !60, size: 32, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !460, file: !459, line: 41, baseType: !149, size: 32, offset: 288)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !460, file: !459, line: 42, baseType: !149, size: 32, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !460, file: !459, line: 45, baseType: !60, size: 32, offset: 352)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !460, file: !459, line: 46, baseType: !476, size: 96, offset: 384)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 96, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 3)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !460, file: !459, line: 47, baseType: !476, size: 96, offset: 480)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !460, file: !459, line: 48, baseType: !476, size: 96, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !460, file: !459, line: 49, baseType: !60, size: 32, offset: 672)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !460, file: !459, line: 50, baseType: !60, size: 32, offset: 704)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !460, file: !459, line: 51, baseType: !60, size: 32, offset: 736)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !460, file: !459, line: 52, baseType: !485, size: 192, offset: 768)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 192, elements: !477)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !460, file: !459, line: 53, baseType: !487, size: 256, offset: 960)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !360)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !460, file: !459, line: 54, baseType: !487, size: 256, offset: 1216)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !460, file: !459, line: 55, baseType: !490, size: 64, offset: 1472)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !460, file: !459, line: 59, baseType: !487, size: 256, offset: 1536)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !460, file: !459, line: 60, baseType: !487, size: 256, offset: 1792)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !460, file: !459, line: 63, baseType: !494, size: 64, offset: 2048)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !467, line: 24, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !20, line: 37, baseType: !497)
!497 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !460, file: !459, line: 64, baseType: !499, size: 128, offset: 2112)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 128, elements: !153)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 32, elements: !153)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !467, line: 25, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !20, line: 39, baseType: !504)
!504 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !460, file: !459, line: 65, baseType: !506, size: 2176, offset: 2240)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 2176, elements: !507)
!507 = !{!154, !508}
!508 = !DISubrange(count: 17)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !460, file: !459, line: 66, baseType: !510, size: 2176, offset: 4416)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 2176, elements: !507)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !460, file: !459, line: 67, baseType: !513, size: 128, offset: 6592)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 128, elements: !153)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !460, file: !459, line: 68, baseType: !152, size: 64, offset: 6720)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !460, file: !459, line: 69, baseType: !516, size: 1024, offset: 6784)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 1024, elements: !426)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !460, file: !459, line: 70, baseType: !369, size: 512, offset: 7808)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !460, file: !459, line: 75, baseType: !519, size: 10368, offset: 8320)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 10368, elements: !520)
!520 = !{!521, !521}
!521 = !DISubrange(count: 18)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !460, file: !459, line: 76, baseType: !519, size: 10368, offset: 18688)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !460, file: !459, line: 77, baseType: !60, size: 32, offset: 29056)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !460, file: !459, line: 78, baseType: !525, size: 576, offset: 29088)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 576, elements: !526)
!526 = !{!521}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !460, file: !459, line: 79, baseType: !528, size: 20736, offset: 29696)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 20736, elements: !520)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !460, file: !459, line: 80, baseType: !511, size: 64, offset: 50432)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !460, file: !459, line: 81, baseType: !511, size: 64, offset: 50496)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_qp", scope: !460, file: !459, line: 82, baseType: !511, size: 64, offset: 50560)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !460, file: !459, line: 83, baseType: !533, size: 64, offset: 50624)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !460, file: !459, line: 84, baseType: !60, size: 32, offset: 50688)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !460, file: !459, line: 85, baseType: !490, size: 64, offset: 50752)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !460, file: !459, line: 86, baseType: !490, size: 64, offset: 50816)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !460, file: !459, line: 89, baseType: !60, size: 32, offset: 50880)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !460, file: !459, line: 90, baseType: !60, size: 32, offset: 50912)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !460, file: !459, line: 91, baseType: !540, size: 320, offset: 50944)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !205, line: 72, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !205, line: 67, size: 320, elements: !542)
!542 = !{!543, !562, !566}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !541, file: !205, line: 69, baseType: !544, size: 320)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !545, line: 22, size: 320, elements: !546)
!545 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!546 = !{!547, !548, !549, !550, !551, !552, !553, !554}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !544, file: !545, line: 24, baseType: !60, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !544, file: !545, line: 25, baseType: !7, size: 32, offset: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !544, file: !545, line: 26, baseType: !60, size: 32, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !544, file: !545, line: 28, baseType: !7, size: 32, offset: 96)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !544, file: !545, line: 32, baseType: !60, size: 32, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !544, file: !545, line: 34, baseType: !504, size: 16, offset: 160)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !544, file: !545, line: 35, baseType: !504, size: 16, offset: 176)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !544, file: !545, line: 36, baseType: !555, size: 128, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !556, line: 55, baseType: !557)
!556 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !556, line: 51, size: 128, elements: !558)
!558 = !{!559, !561}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !557, file: !556, line: 53, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !557, file: !556, line: 54, baseType: !560, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !541, file: !205, line: 70, baseType: !563, size: 320)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 320, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 40)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !541, file: !205, line: 71, baseType: !237, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !460, file: !459, line: 92, baseType: !568, size: 384, offset: 51264)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !205, line: 80, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !205, line: 75, size: 384, elements: !570)
!570 = !{!571, !593, !597}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !569, file: !205, line: 77, baseType: !572, size: 384)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !556, line: 94, size: 384, elements: !573)
!573 = !{!574, !586, !587, !589, !590, !591, !592}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !572, file: !556, line: 96, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !576, line: 33, baseType: !577)
!576 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!577 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !576, line: 25, size: 64, elements: !578)
!578 = !{!579, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !577, file: !576, line: 27, baseType: !580, size: 64)
!580 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !577, file: !576, line: 32, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !577, file: !576, line: 28, size: 64, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !582, file: !576, line: 30, baseType: !7, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !582, file: !576, line: 31, baseType: !7, size: 32, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !572, file: !556, line: 97, baseType: !575, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !572, file: !556, line: 98, baseType: !588, size: 64, offset: 128)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !153)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !572, file: !556, line: 99, baseType: !588, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !572, file: !556, line: 100, baseType: !7, size: 32, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !572, file: !556, line: 101, baseType: !7, size: 32, offset: 288)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !572, file: !556, line: 102, baseType: !588, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !569, file: !205, line: 78, baseType: !594, size: 384)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 384, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 48)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !569, file: !205, line: 79, baseType: !598, size: 64)
!598 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!599 = !{!600}
!600 = !DISubrange(count: 67)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !52, line: 322, baseType: !456, size: 4288, offset: 4288)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !453, file: !52, line: 324, baseType: !603, size: 21760, offset: 8576)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 21760, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 340)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !453, file: !52, line: 326, baseType: !457, size: 64, offset: 30336)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !453, file: !52, line: 329, baseType: !608, size: 1152, offset: 30400)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 1152, elements: !526)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_idr", scope: !453, file: !52, line: 331, baseType: !60, size: 32, offset: 31552)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !453, file: !52, line: 333, baseType: !60, size: 32, offset: 31584)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !453, file: !52, line: 335, baseType: !60, size: 32, offset: 31616)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !453, file: !52, line: 336, baseType: !60, size: 32, offset: 31648)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !453, file: !52, line: 337, baseType: !60, size: 32, offset: 31680)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !453, file: !52, line: 338, baseType: !60, size: 32, offset: 31712)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !453, file: !52, line: 339, baseType: !60, size: 32, offset: 31744)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !51, file: !52, line: 343, baseType: !457, size: 64, offset: 73664)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !51, file: !52, line: 346, baseType: !457, size: 64, offset: 73728)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !51, file: !52, line: 349, baseType: !60, size: 32, offset: 73792)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !51, file: !52, line: 350, baseType: !620, size: 1216, offset: 73856)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 1216, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: 19)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !51, file: !52, line: 351, baseType: !60, size: 32, offset: 75072)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !51, file: !52, line: 352, baseType: !620, size: 1216, offset: 75136)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !51, file: !52, line: 353, baseType: !152, size: 64, offset: 76352)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !51, file: !52, line: 365, baseType: !627, size: 10624, offset: 76416)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !51, file: !52, line: 358, size: 10624, elements: !628)
!628 = !{!629, !631, !634, !637}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !627, file: !52, line: 360, baseType: !630, size: 256, align: 128)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 256, elements: !36)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !627, file: !52, line: 361, baseType: !632, size: 128, align: 128, offset: 256)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 128, elements: !633)
!633 = !{!154, !359}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !627, file: !52, line: 363, baseType: !635, size: 4096, align: 128, offset: 384)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 4096, elements: !636)
!636 = !{!359, !34}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !627, file: !52, line: 364, baseType: !638, size: 6144, align: 128, offset: 4480)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 6144, elements: !639)
!639 = !{!640, !37}
!640 = !DISubrange(count: 24)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !51, file: !52, line: 544, baseType: !642, size: 80128, offset: 87040)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !51, file: !52, line: 368, size: 80128, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !670, !672, !673, !674, !675, !676, !677, !678, !679, !680, !682, !685, !689, !690, !691, !692, !693, !697, !698, !699, !702, !704, !705, !706, !708, !709, !710, !711, !712, !713, !714, !715, !756, !776, !777, !778, !779, !780, !781, !782, !783, !784, !787, !790, !792}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !642, file: !52, line: 370, baseType: !60, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !642, file: !52, line: 373, baseType: !60, size: 32, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !642, file: !52, line: 374, baseType: !60, size: 32, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !642, file: !52, line: 375, baseType: !60, size: 32, offset: 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !642, file: !52, line: 378, baseType: !60, size: 32, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !642, file: !52, line: 379, baseType: !60, size: 32, offset: 160)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !642, file: !52, line: 380, baseType: !60, size: 32, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !642, file: !52, line: 381, baseType: !60, size: 32, offset: 224)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !642, file: !52, line: 382, baseType: !60, size: 32, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !642, file: !52, line: 385, baseType: !60, size: 32, offset: 288)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !642, file: !52, line: 386, baseType: !60, size: 32, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !642, file: !52, line: 387, baseType: !60, size: 32, offset: 352)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !642, file: !52, line: 388, baseType: !60, size: 32, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !642, file: !52, line: 389, baseType: !60, size: 32, offset: 416)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !642, file: !52, line: 390, baseType: !60, size: 32, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !642, file: !52, line: 391, baseType: !60, size: 32, offset: 480)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !642, file: !52, line: 393, baseType: !60, size: 32, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !642, file: !52, line: 396, baseType: !152, size: 64, offset: 544)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !642, file: !52, line: 397, baseType: !152, size: 64, offset: 608)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !642, file: !52, line: 400, baseType: !152, size: 64, offset: 672)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !642, file: !52, line: 401, baseType: !152, size: 64, offset: 736)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !642, file: !52, line: 403, baseType: !152, size: 64, offset: 800)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !642, file: !52, line: 404, baseType: !152, size: 64, offset: 864)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !642, file: !52, line: 407, baseType: !7, size: 32, offset: 928)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !642, file: !52, line: 408, baseType: !669, size: 128, offset: 960)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !360)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !642, file: !52, line: 409, baseType: !671, size: 512, offset: 1088)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !36)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !642, file: !52, line: 410, baseType: !60, size: 32, offset: 1600)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !642, file: !52, line: 411, baseType: !60, size: 32, offset: 1632)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !642, file: !52, line: 412, baseType: !60, size: 32, offset: 1664)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !642, file: !52, line: 413, baseType: !60, size: 32, offset: 1696)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !642, file: !52, line: 414, baseType: !60, size: 32, offset: 1728)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !642, file: !52, line: 415, baseType: !60, size: 32, offset: 1760)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !642, file: !52, line: 422, baseType: !494, size: 64, offset: 1792)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !642, file: !52, line: 423, baseType: !494, size: 64, offset: 1856)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !642, file: !52, line: 424, baseType: !681, size: 64, offset: 1920)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !642, file: !52, line: 425, baseType: !683, size: 64, offset: 1984)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 64, elements: !222)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !642, file: !52, line: 427, baseType: !686, size: 64, offset: 2048)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 192, elements: !688)
!688 = !{!640}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !642, file: !52, line: 428, baseType: !494, size: 64, offset: 2112)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !642, file: !52, line: 429, baseType: !499, size: 128, offset: 2176)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !642, file: !52, line: 430, baseType: !499, size: 128, offset: 2304)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !642, file: !52, line: 431, baseType: !513, size: 128, offset: 2432)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !642, file: !52, line: 432, baseType: !694, size: 4096, offset: 2560)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 4096, elements: !695)
!695 = !{!154, !696}
!696 = !DISubrange(count: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !642, file: !52, line: 433, baseType: !494, size: 64, offset: 6656)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !642, file: !52, line: 434, baseType: !494, size: 64, offset: 6720)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !642, file: !52, line: 435, baseType: !700, size: 384, offset: 6784)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 384, elements: !701)
!701 = !{!154, !478}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "nnz_backup", scope: !642, file: !52, line: 436, baseType: !703, size: 64, offset: 7168)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !642, file: !52, line: 439, baseType: !60, size: 32, offset: 7232)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !642, file: !52, line: 440, baseType: !60, size: 32, offset: 7264)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !642, file: !52, line: 441, baseType: !707, size: 128, offset: 7296)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 128, elements: !360)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !642, file: !52, line: 442, baseType: !60, size: 32, offset: 7424)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !642, file: !52, line: 444, baseType: !60, size: 32, offset: 7456)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !642, file: !52, line: 445, baseType: !60, size: 32, offset: 7488)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !642, file: !52, line: 447, baseType: !60, size: 32, offset: 7520)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !642, file: !52, line: 448, baseType: !60, size: 32, offset: 7552)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !642, file: !52, line: 454, baseType: !60, size: 32, offset: 7584)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !642, file: !52, line: 457, baseType: !60, size: 32, offset: 7616)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !642, file: !52, line: 498, baseType: !716, size: 57344, offset: 7680)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !642, file: !52, line: 459, size: 57344, elements: !717)
!717 = !{!718, !722, !726, !728, !729, !732, !736, !737, !740, !741, !742, !745, !746, !747, !748, !749, !750, !753, !755}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !716, file: !52, line: 464, baseType: !719, size: 3072, align: 128)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 3072, elements: !720)
!720 = !{!721}
!721 = !DISubrange(count: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !716, file: !52, line: 465, baseType: !723, size: 6912, align: 128, offset: 3072)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 6912, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 864)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !716, file: !52, line: 468, baseType: !727, size: 2048, align: 128, offset: 9984)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !271)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !716, file: !52, line: 469, baseType: !727, size: 2048, align: 128, offset: 12032)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !716, file: !52, line: 470, baseType: !730, size: 3072, align: 128, offset: 14080)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 3072, elements: !731)
!731 = !{!478, !34}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !716, file: !52, line: 471, baseType: !733, size: 3840, align: 128, offset: 17152)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 3840, elements: !734)
!734 = !{!735, !37}
!735 = !DISubrange(count: 15)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !716, file: !52, line: 474, baseType: !635, size: 4096, align: 128, offset: 20992)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !716, file: !52, line: 475, baseType: !738, size: 4096, align: 128, offset: 25088)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 4096, elements: !739)
!739 = !{!37, !37}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd", scope: !716, file: !52, line: 478, baseType: !357, size: 512, offset: 29184)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_sum", scope: !716, file: !52, line: 479, baseType: !60, size: 32, offset: 29696)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d", scope: !716, file: !52, line: 480, baseType: !743, size: 128, offset: 29728)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 128, elements: !744)
!744 = !{!154, !154}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d_sum", scope: !716, file: !52, line: 481, baseType: !60, size: 32, offset: 29856)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !716, file: !52, line: 484, baseType: !485, size: 192, offset: 29888)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !716, file: !52, line: 486, baseType: !485, size: 192, offset: 30080)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !716, file: !52, line: 489, baseType: !485, size: 192, offset: 30272)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !716, file: !52, line: 492, baseType: !152, size: 64, offset: 30464)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !716, file: !52, line: 493, baseType: !751, size: 24576, offset: 30528)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 24576, elements: !752)
!752 = !{!154, !696, !350}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !716, file: !52, line: 494, baseType: !754, size: 2048, offset: 55104)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 2048, elements: !426)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !716, file: !52, line: 497, baseType: !476, size: 96, offset: 57152)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !642, file: !52, line: 526, baseType: !757, size: 12032, offset: 65024)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !642, file: !52, line: 501, size: 12032, elements: !758)
!758 = !{!759, !761, !763, !766, !769, !770, !771, !772, !773, !774, !775}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !757, file: !52, line: 504, baseType: !760, size: 384)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 384, elements: !595)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !757, file: !52, line: 507, baseType: !762, size: 384, offset: 384)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 384, elements: !595)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !757, file: !52, line: 510, baseType: !764, size: 768, align: 32, offset: 768)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 768, elements: !765)
!765 = !{!154, !596}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !757, file: !52, line: 513, baseType: !767, size: 3072, align: 128, offset: 1536)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 3072, elements: !768)
!768 = !{!154, !596, !154}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !757, file: !52, line: 514, baseType: !767, size: 3072, align: 64, offset: 4608)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !757, file: !52, line: 517, baseType: !760, size: 384, align: 32, offset: 7680)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !757, file: !52, line: 519, baseType: !767, size: 3072, align: 128, offset: 8064)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !757, file: !52, line: 520, baseType: !764, size: 768, align: 32, offset: 11136)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !757, file: !52, line: 521, baseType: !501, size: 32, align: 32, offset: 11904)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !757, file: !52, line: 524, baseType: !60, size: 32, offset: 11936)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !757, file: !52, line: 525, baseType: !60, size: 32, offset: 11968)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !642, file: !52, line: 529, baseType: !60, size: 32, offset: 77056)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !642, file: !52, line: 530, baseType: !60, size: 32, offset: 77088)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !642, file: !52, line: 531, baseType: !60, size: 32, offset: 77120)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !642, file: !52, line: 532, baseType: !60, size: 32, offset: 77152)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !642, file: !52, line: 533, baseType: !60, size: 32, offset: 77184)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !642, file: !52, line: 534, baseType: !60, size: 32, offset: 77216)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !642, file: !52, line: 535, baseType: !60, size: 32, offset: 77248)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !642, file: !52, line: 536, baseType: !60, size: 32, offset: 77280)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !642, file: !52, line: 539, baseType: !785, size: 512, offset: 77312)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 512, elements: !786)
!786 = !{!37, !154}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !642, file: !52, line: 540, baseType: !788, size: 2048, offset: 77824)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 2048, elements: !789)
!789 = !{!696, !359}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0_buf", scope: !642, file: !52, line: 542, baseType: !791, size: 16, offset: 79872)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 16, elements: !153)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !642, file: !52, line: 543, baseType: !793, size: 128, offset: 79888)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 128, elements: !36)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !51, file: !52, line: 547, baseType: !795, size: 64, offset: 167168)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !52, line: 248, baseType: !797)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !52, line: 248, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !51, file: !52, line: 604, baseType: !799, size: 23936, offset: 167232)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !51, file: !52, line: 550, size: 23936, elements: !800)
!800 = !{!801, !826, !830, !832, !834, !835, !836, !837, !838, !839, !840, !841, !844, !846, !848, !851, !852}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !799, file: !52, line: 579, baseType: !802, size: 3904)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !799, file: !52, line: 553, size: 3904, elements: !803)
!803 = !{!804, !805, !806, !807, !809, !810, !811, !812, !813, !815, !818, !819, !820, !821, !822, !824}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !802, file: !52, line: 556, baseType: !60, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !802, file: !52, line: 558, baseType: !60, size: 32, offset: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !802, file: !52, line: 560, baseType: !60, size: 32, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !802, file: !52, line: 562, baseType: !808, size: 608, offset: 96)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 608, elements: !621)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !802, file: !52, line: 563, baseType: !60, size: 32, offset: 704)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !802, file: !52, line: 564, baseType: !60, size: 32, offset: 736)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !802, file: !52, line: 565, baseType: !60, size: 32, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !802, file: !52, line: 566, baseType: !152, size: 64, offset: 800)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !802, file: !52, line: 567, baseType: !814, size: 2048, offset: 864)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2048, elements: !695)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !802, file: !52, line: 568, baseType: !816, size: 544, offset: 2912)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 544, elements: !817)
!817 = !{!508}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !802, file: !52, line: 571, baseType: !60, size: 32, offset: 3456)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i_inter_cost", scope: !802, file: !52, line: 572, baseType: !60, size: 32, offset: 3488)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_mbs_analysed", scope: !802, file: !52, line: 573, baseType: !60, size: 32, offset: 3520)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !802, file: !52, line: 575, baseType: !152, size: 64, offset: 3552)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !802, file: !52, line: 577, baseType: !823, size: 192, offset: 3648)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 192, elements: !477)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !802, file: !52, line: 578, baseType: !825, size: 64, offset: 3840)
!825 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !799, file: !52, line: 584, baseType: !827, size: 160, offset: 3904)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 160, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 5)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_size", scope: !799, file: !52, line: 585, baseType: !831, size: 320, offset: 4096)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 320, elements: !828)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "f_slice_qp", scope: !799, file: !52, line: 586, baseType: !833, size: 320, offset: 4416)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !825, size: 320, elements: !828)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !799, file: !52, line: 587, baseType: !816, size: 544, offset: 4736)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !799, file: !52, line: 589, baseType: !831, size: 320, offset: 5312)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !799, file: !52, line: 590, baseType: !833, size: 320, offset: 5632)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !799, file: !52, line: 591, baseType: !833, size: 320, offset: 5952)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !799, file: !52, line: 592, baseType: !833, size: 320, offset: 6272)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !799, file: !52, line: 593, baseType: !833, size: 320, offset: 6592)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !799, file: !52, line: 594, baseType: !833, size: 320, offset: 6912)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !799, file: !52, line: 596, baseType: !842, size: 6080, offset: 7232)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 6080, elements: !843)
!843 = !{!829, !622}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !799, file: !52, line: 597, baseType: !845, size: 2176, offset: 13312)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 2176, elements: !507)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !799, file: !52, line: 598, baseType: !847, size: 128, offset: 15488)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 128, elements: !153)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !799, file: !52, line: 599, baseType: !849, size: 8192, offset: 15616)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 8192, elements: !850)
!850 = !{!154, !154, !696}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !799, file: !52, line: 601, baseType: !152, size: 64, offset: 23808)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !799, file: !52, line: 602, baseType: !152, size: 64, offset: 23872)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !51, file: !52, line: 607, baseType: !854, size: 448, offset: 191168)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 448, elements: !860)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !856, line: 27, baseType: !857)
!856 = !DIFile(filename: "common/predict.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "c7827bfe44f4a550b7080533457a8327")
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !221}
!860 = !{!861}
!861 = !DISubrange(count: 7)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !51, file: !52, line: 608, baseType: !854, size: 448, offset: 191616)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !51, file: !52, line: 609, baseType: !864, size: 768, offset: 192064)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 768, elements: !869)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !856, line: 28, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !221, !221}
!869 = !{!870}
!870 = !DISubrange(count: 12)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !51, file: !52, line: 610, baseType: !872, size: 768, offset: 192832)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 768, elements: !869)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !51, file: !52, line: 612, baseType: !874, size: 8000, offset: 193600)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !875, line: 103, baseType: !876)
!875 = !DIFile(filename: "common/pixel.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "aba138e44f0e52bc0158be0d182b79c1")
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !875, line: 63, size: 8000, elements: !877)
!877 = !{!878, !884, !885, !886, !887, !889, !890, !891, !892, !898, !904, !905, !910, !915, !920, !924, !925, !926, !927, !928, !933, !937, !938, !939, !940, !941}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !876, file: !875, line: 65, baseType: !879, size: 448)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !880, size: 448, elements: !860)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !875, line: 26, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!60, !221, !60, !221, !60}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !876, file: !875, line: 66, baseType: !879, size: 448, offset: 448)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !876, file: !875, line: 67, baseType: !879, size: 448, offset: 896)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !876, file: !875, line: 68, baseType: !879, size: 448, offset: 1344)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !876, file: !875, line: 69, baseType: !888, size: 256, offset: 1792)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !880, size: 256, elements: !360)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !876, file: !875, line: 70, baseType: !879, size: 448, offset: 2048)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !876, file: !875, line: 71, baseType: !879, size: 448, offset: 2496)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !876, file: !875, line: 72, baseType: !879, size: 448, offset: 2944)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !876, file: !875, line: 73, baseType: !893, size: 448, offset: 3392)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, size: 448, elements: !860)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !875, line: 27, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !221, !221, !221, !221, !60, !511}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !876, file: !875, line: 74, baseType: !899, size: 448, offset: 3840)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 448, elements: !860)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !875, line: 28, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !221, !221, !221, !221, !221, !60, !511}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !876, file: !875, line: 75, baseType: !879, size: 448, offset: 4288)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !876, file: !875, line: 77, baseType: !906, size: 256, offset: 4736)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 256, elements: !360)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!60, !221, !60, !16}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !876, file: !875, line: 78, baseType: !911, size: 256, offset: 4992)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !912, size: 256, elements: !360)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!22, !221, !60}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !876, file: !875, line: 80, baseType: !916, size: 64, offset: 5248)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !348, !60, !348, !60, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !876, file: !875, line: 82, baseType: !921, size: 64, offset: 5312)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!149, !919, !919, !60}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !876, file: !875, line: 85, baseType: !893, size: 448, offset: 5376)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !876, file: !875, line: 86, baseType: !899, size: 448, offset: 5824)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !876, file: !875, line: 87, baseType: !893, size: 448, offset: 6272)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !876, file: !875, line: 88, baseType: !899, size: 448, offset: 6720)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !876, file: !875, line: 92, baseType: !929, size: 448, offset: 7168)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !930, size: 448, elements: !860)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!60, !511, !490, !60, !490, !681, !60, !60}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !876, file: !875, line: 97, baseType: !934, size: 64, offset: 7616)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !221, !221, !511}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !876, file: !875, line: 98, baseType: !934, size: 64, offset: 7680)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !876, file: !875, line: 99, baseType: !934, size: 64, offset: 7744)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !876, file: !875, line: 100, baseType: !934, size: 64, offset: 7808)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !876, file: !875, line: 101, baseType: !934, size: 64, offset: 7872)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !876, file: !875, line: 102, baseType: !934, size: 64, offset: 7936)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !51, file: !52, line: 613, baseType: !943, size: 1792, offset: 201600)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !944, line: 71, baseType: !945)
!944 = !DIFile(filename: "common/mc.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "d49d7420aafa05a86bee506aef111ff0")
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !944, line: 31, size: 1792, elements: !946)
!946 = !{!947, !952, !956, !960, !967, !972, !973, !977, !981, !982, !986, !994, !998}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !945, file: !944, line: 33, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !221, !60, !951, !60, !60, !60, !60, !60}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !945, file: !944, line: 38, baseType: !953, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!221, !221, !511, !951, !60, !60, !60, !60, !60}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !945, file: !944, line: 44, baseType: !957, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !221, !60, !221, !60, !60, !60, !60, !60}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !945, file: !944, line: 48, baseType: !961, size: 640, offset: 192)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !962, size: 640, elements: !965)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !221, !60, !221, !60, !221, !60, !60}
!965 = !{!966}
!966 = !DISubrange(count: 10)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !945, file: !944, line: 51, baseType: !968, size: 448, offset: 832)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !969, size: 448, elements: !860)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{null, !221, !60, !221, !60, !60}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !945, file: !944, line: 52, baseType: !969, size: 64, offset: 1280)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !945, file: !944, line: 54, baseType: !974, size: 64, offset: 1344)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !221, !60, !221, !60, !60, !60}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !945, file: !944, line: 57, baseType: !978, size: 64, offset: 1408)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !221, !221, !221, !221, !60, !60, !60}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !945, file: !944, line: 61, baseType: !969, size: 64, offset: 1472)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !945, file: !944, line: 64, baseType: !983, size: 64, offset: 1536)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !221, !60, !60}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !945, file: !944, line: 66, baseType: !987, size: 64, offset: 1600)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!112, !112, !990, !992}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !993, line: 46, baseType: !24)
!993 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!994 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !945, file: !944, line: 67, baseType: !995, size: 64, offset: 1664)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !112, !60}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !945, file: !944, line: 69, baseType: !999, size: 64, offset: 1728)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !221, !221, !221, !221, !221, !60, !60, !60, !60}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !51, file: !52, line: 614, baseType: !1003, size: 768, offset: 203392)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1004, line: 112, baseType: !1005)
!1004 = !DIFile(filename: "common/dct.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "eb76275dd7785989f0d8a4ada39e3c74")
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1004, line: 89, size: 768, elements: !1006)
!1006 = !{!1007, !1013, !1017, !1023, !1027, !1028, !1029, !1035, !1039, !1045, !1049, !1053}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1005, file: !1004, line: 94, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !1011, !221, !221}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 64, elements: !360)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1005, file: !1004, line: 95, baseType: !1014, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !221, !1011}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1005, file: !1004, line: 97, baseType: !1018, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !1021, !221, !221}
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 256, elements: !358)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1005, file: !1004, line: 98, baseType: !1024, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !221, !1021}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1005, file: !1004, line: 100, baseType: !1018, size: 64, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1005, file: !1004, line: 101, baseType: !1024, size: 64, offset: 320)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1005, file: !1004, line: 103, baseType: !1030, size: 64, offset: 384)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !1033, !221, !221}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 128, elements: !222)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1005, file: !1004, line: 104, baseType: !1036, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !221, !1033}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1005, file: !1004, line: 106, baseType: !1040, size: 64, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !1043, !221, !221}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 1024, elements: !365)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1005, file: !1004, line: 107, baseType: !1046, size: 64, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !221, !1043}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1005, file: !1004, line: 109, baseType: !1050, size: 64, offset: 640)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !1011}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1005, file: !1004, line: 110, baseType: !1050, size: 64, offset: 704)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !51, file: !52, line: 615, baseType: !1055, size: 320, offset: 204160)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1004, line: 122, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1004, line: 114, size: 320, elements: !1057)
!1057 = !{!1058, !1062, !1066, !1070, !1071}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1056, file: !1004, line: 116, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !681, !1033}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1056, file: !1004, line: 117, baseType: !1063, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !681, !1011}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1056, file: !1004, line: 118, baseType: !1067, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !681, !348, !221}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1056, file: !1004, line: 119, baseType: !1067, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1056, file: !1004, line: 120, baseType: !1072, size: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !681, !681}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !51, file: !52, line: 616, baseType: !1076, size: 1088, offset: 204480)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1077, line: 43, baseType: !1078)
!1077 = !DIFile(filename: "common/quant.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fe7c19d3e69b65b38e52c43c47235f27")
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1077, line: 26, size: 1088, elements: !1079)
!1079 = !{!1080, !1084, !1088, !1092, !1096, !1100, !1104, !1105, !1109, !1113, !1114, !1115}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1078, file: !1077, line: 28, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !1033, !490, !490}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1078, file: !1077, line: 29, baseType: !1085, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !1011, !490, !490}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1078, file: !1077, line: 30, baseType: !1089, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !1011, !60, !60}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1078, file: !1077, line: 31, baseType: !1093, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !500, !60, !60}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1078, file: !1077, line: 33, baseType: !1097, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !1033, !363, !60}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1078, file: !1077, line: 34, baseType: !1101, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{null, !1011, !356, !60}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1078, file: !1077, line: 35, baseType: !1101, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1078, file: !1077, line: 37, baseType: !1106, size: 64, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !681, !16, !490, !60}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1078, file: !1077, line: 39, baseType: !1110, size: 64, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!60, !681}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1078, file: !1077, line: 40, baseType: !1110, size: 64, offset: 576)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1078, file: !1077, line: 41, baseType: !1110, size: 64, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1078, file: !1077, line: 42, baseType: !1116, size: 384, offset: 704)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1110, size: 384, elements: !349)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !51, file: !52, line: 617, baseType: !1118, size: 512, offset: 205568)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !459, line: 108, baseType: !1119)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 98, size: 512, elements: !1120)
!1120 = !{!1121, !1126, !1127, !1128, !1129, !1134, !1135, !1136}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma", scope: !1119, file: !459, line: 100, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !459, line: 96, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !221, !60, !60, !60, !494}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma", scope: !1119, file: !459, line: 101, baseType: !1122, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma", scope: !1119, file: !459, line: 102, baseType: !1122, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma", scope: !1119, file: !459, line: 103, baseType: !1122, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma_intra", scope: !1119, file: !459, line: 104, baseType: !1130, size: 64, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !459, line: 97, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !221, !60, !60, !60}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma_intra", scope: !1119, file: !459, line: 105, baseType: !1130, size: 64, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma_intra", scope: !1119, file: !459, line: 106, baseType: !1130, size: 64, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma_intra", scope: !1119, file: !459, line: 107, baseType: !1130, size: 64, offset: 448)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1138 = !{!1139, !1140, !1141}
!1139 = !DILocalVariable(name: "h", arg: 1, scope: !45, file: !3, line: 276, type: !48)
!1140 = !DILocalVariable(name: "cpu", arg: 2, scope: !45, file: !3, line: 276, type: !60)
!1141 = !DILocalVariable(name: "pf", arg: 3, scope: !45, file: !3, line: 276, type: !1137)
!1142 = !DILocation(line: 0, scope: !45)
!1143 = !DILocation(line: 278, column: 19, scope: !45)
!1144 = !{!1145, !1146, i64 0}
!1145 = !{!"", !1146, i64 0, !1146, i64 8, !1146, i64 16, !1146, i64 24, !1146, i64 32, !1146, i64 40, !1146, i64 48, !1146, i64 56, !1146, i64 64, !1146, i64 72, !1146, i64 80, !1147, i64 88}
!1146 = !{!"any pointer", !1147, i64 0}
!1147 = !{!"omnipotent char", !1148, i64 0}
!1148 = !{!"Simple C/C++ TBAA"}
!1149 = !DILocation(line: 279, column: 9, scope: !45)
!1150 = !DILocation(line: 279, column: 19, scope: !45)
!1151 = !{!1145, !1146, i64 8}
!1152 = !DILocation(line: 280, column: 9, scope: !45)
!1153 = !DILocation(line: 280, column: 22, scope: !45)
!1154 = !{!1145, !1146, i64 16}
!1155 = !DILocation(line: 281, column: 9, scope: !45)
!1156 = !DILocation(line: 281, column: 22, scope: !45)
!1157 = !{!1145, !1146, i64 24}
!1158 = !DILocation(line: 283, column: 9, scope: !45)
!1159 = !DILocation(line: 283, column: 21, scope: !45)
!1160 = !{!1145, !1146, i64 40}
!1161 = !DILocation(line: 284, column: 9, scope: !45)
!1162 = !DILocation(line: 284, column: 24, scope: !45)
!1163 = !{!1145, !1146, i64 48}
!1164 = !DILocation(line: 285, column: 9, scope: !45)
!1165 = !DILocation(line: 285, column: 21, scope: !45)
!1166 = !{!1145, !1146, i64 32}
!1167 = !DILocation(line: 287, column: 9, scope: !45)
!1168 = !DILocation(line: 287, column: 21, scope: !45)
!1169 = !{!1145, !1146, i64 56}
!1170 = !DILocation(line: 288, column: 9, scope: !45)
!1171 = !DILocation(line: 288, column: 26, scope: !45)
!1172 = !{!1145, !1146, i64 64}
!1173 = !DILocation(line: 289, column: 9, scope: !45)
!1174 = !DILocation(line: 289, column: 26, scope: !45)
!1175 = !{!1145, !1146, i64 72}
!1176 = !DILocation(line: 290, column: 9, scope: !45)
!1177 = !DILocation(line: 290, column: 26, scope: !45)
!1178 = !{!1145, !1146, i64 80}
!1179 = !DILocation(line: 292, column: 5, scope: !45)
!1180 = !DILocation(line: 292, column: 35, scope: !45)
!1181 = !{!1146, !1146, i64 0}
!1182 = !DILocation(line: 293, column: 5, scope: !45)
!1183 = !DILocation(line: 293, column: 35, scope: !45)
!1184 = !DILocation(line: 294, column: 5, scope: !45)
!1185 = !DILocation(line: 294, column: 35, scope: !45)
!1186 = !DILocation(line: 295, column: 5, scope: !45)
!1187 = !DILocation(line: 295, column: 35, scope: !45)
!1188 = !DILocation(line: 315, column: 12, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !45, file: !3, line: 315, column: 9)
!1190 = !DILocation(line: 315, column: 9, scope: !45)
!1191 = !DILocation(line: 317, column: 26, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 316, column: 5)
!1193 = !DILocation(line: 327, column: 39, scope: !1192)
!1194 = !DILocation(line: 328, column: 5, scope: !1192)
!1195 = !DILocation(line: 330, column: 12, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !45, file: !3, line: 330, column: 9)
!1197 = !DILocation(line: 330, column: 9, scope: !45)
!1198 = !DILocation(line: 332, column: 26, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 331, column: 5)
!1200 = !DILocation(line: 333, column: 23, scope: !1199)
!1201 = !DILocation(line: 334, column: 23, scope: !1199)
!1202 = !DILocation(line: 335, column: 25, scope: !1199)
!1203 = !DILocation(line: 336, column: 28, scope: !1199)
!1204 = !DILocation(line: 337, column: 25, scope: !1199)
!1205 = !DILocation(line: 338, column: 22, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 338, column: 13)
!1207 = !{!1208, !1210, i64 136}
!1208 = !{!"x264_t", !1209, i64 0, !1147, i64 616, !1215, i64 1640, !1210, i64 1648, !1210, i64 1652, !1216, i64 1656, !1210, i64 1920, !1210, i64 1924, !1210, i64 1928, !1210, i64 1932, !1210, i64 1936, !1210, i64 1940, !1210, i64 1944, !1210, i64 1948, !1210, i64 1952, !1147, i64 1956, !1146, i64 3200, !1147, i64 3208, !1146, i64 3328, !1210, i64 3336, !1147, i64 3344, !1147, i64 3376, !1147, i64 3392, !1147, i64 3424, !1147, i64 3440, !1147, i64 3472, !1147, i64 3488, !1147, i64 3520, !1146, i64 3536, !1147, i64 3552, !1147, i64 4064, !1147, i64 4320, !1218, i64 4328, !1219, i64 4720, !1220, i64 5232, !1146, i64 9208, !1146, i64 9216, !1210, i64 9224, !1147, i64 9232, !1210, i64 9384, !1147, i64 9392, !1147, i64 9544, !1221, i64 9552, !1222, i64 10880, !1146, i64 20896, !1225, i64 20904, !1147, i64 23896, !1147, i64 23952, !1147, i64 24008, !1147, i64 24104, !1228, i64 24200, !1229, i64 25200, !1230, i64 25424, !1231, i64 25520, !1145, i64 25560, !1232, i64 25696}
!1209 = !{!"x264_param_t", !1210, i64 0, !1210, i64 4, !1210, i64 8, !1210, i64 12, !1210, i64 16, !1210, i64 20, !1210, i64 24, !1210, i64 28, !1211, i64 32, !1210, i64 68, !1210, i64 72, !1210, i64 76, !1210, i64 80, !1210, i64 84, !1210, i64 88, !1210, i64 92, !1210, i64 96, !1210, i64 100, !1210, i64 104, !1210, i64 108, !1210, i64 112, !1210, i64 116, !1210, i64 120, !1210, i64 124, !1210, i64 128, !1210, i64 132, !1210, i64 136, !1146, i64 144, !1147, i64 152, !1147, i64 168, !1147, i64 184, !1147, i64 200, !1147, i64 216, !1147, i64 280, !1146, i64 344, !1146, i64 352, !1210, i64 360, !1210, i64 364, !1146, i64 368, !1212, i64 376, !1214, i64 472, !1210, i64 600, !1210, i64 604, !1210, i64 608}
!1210 = !{!"int", !1147, i64 0}
!1211 = !{!"", !1210, i64 0, !1210, i64 4, !1210, i64 8, !1210, i64 12, !1210, i64 16, !1210, i64 20, !1210, i64 24, !1210, i64 28, !1210, i64 32}
!1212 = !{!"", !1210, i64 0, !1210, i64 4, !1210, i64 8, !1210, i64 12, !1210, i64 16, !1210, i64 20, !1210, i64 24, !1210, i64 28, !1210, i64 32, !1210, i64 36, !1210, i64 40, !1210, i64 44, !1210, i64 48, !1210, i64 52, !1210, i64 56, !1210, i64 60, !1210, i64 64, !1210, i64 68, !1213, i64 72, !1213, i64 76, !1147, i64 80, !1210, i64 88, !1210, i64 92}
!1213 = !{!"float", !1147, i64 0}
!1214 = !{!"", !1210, i64 0, !1210, i64 4, !1210, i64 8, !1210, i64 12, !1210, i64 16, !1210, i64 20, !1213, i64 24, !1213, i64 28, !1210, i64 32, !1210, i64 36, !1213, i64 40, !1213, i64 44, !1213, i64 48, !1210, i64 52, !1213, i64 56, !1210, i64 60, !1146, i64 64, !1210, i64 72, !1146, i64 80, !1213, i64 88, !1213, i64 92, !1213, i64 96, !1146, i64 104, !1210, i64 112, !1146, i64 120}
!1215 = !{!"long", !1147, i64 0}
!1216 = !{!"", !1210, i64 0, !1147, i64 8, !1210, i64 200, !1146, i64 208, !1217, i64 216, !1210, i64 256}
!1217 = !{!"bs_s", !1146, i64 0, !1146, i64 8, !1146, i64 16, !1215, i64 24, !1210, i64 32, !1210, i64 36}
!1218 = !{!"", !1146, i64 0, !1146, i64 8, !1210, i64 16, !1210, i64 20, !1210, i64 24, !1210, i64 28, !1210, i64 32, !1210, i64 36, !1210, i64 40, !1210, i64 44, !1210, i64 48, !1210, i64 52, !1210, i64 56, !1147, i64 60, !1210, i64 68, !1210, i64 72, !1210, i64 76, !1210, i64 80, !1210, i64 84, !1210, i64 88, !1210, i64 92, !1147, i64 96, !1210, i64 352, !1210, i64 356, !1210, i64 360, !1210, i64 364, !1210, i64 368, !1210, i64 372, !1210, i64 376, !1210, i64 380}
!1219 = !{!"", !1210, i64 0, !1210, i64 4, !1210, i64 8, !1210, i64 12, !1146, i64 16, !1146, i64 24, !1146, i64 32, !1210, i64 48, !1147, i64 52}
!1220 = !{!"", !1147, i64 0, !1147, i64 536, !1147, i64 1072, !1146, i64 3792, !1147, i64 3800, !1210, i64 3944, !1210, i64 3948, !1210, i64 3952, !1210, i64 3956, !1210, i64 3960, !1210, i64 3964, !1210, i64 3968}
!1221 = !{!"", !1147, i64 0, !1147, i64 32, !1147, i64 48, !1147, i64 560}
!1222 = !{!"", !1210, i64 0, !1210, i64 4, !1210, i64 8, !1210, i64 12, !1210, i64 16, !1210, i64 20, !1210, i64 24, !1210, i64 28, !1210, i64 32, !1210, i64 36, !1210, i64 40, !1210, i64 44, !1210, i64 48, !1210, i64 52, !1210, i64 56, !1210, i64 60, !1210, i64 64, !1147, i64 68, !1147, i64 76, !1147, i64 84, !1147, i64 92, !1147, i64 100, !1147, i64 108, !1210, i64 116, !1147, i64 120, !1147, i64 136, !1210, i64 200, !1210, i64 204, !1210, i64 208, !1210, i64 212, !1210, i64 216, !1210, i64 220, !1146, i64 224, !1146, i64 232, !1146, i64 240, !1146, i64 248, !1146, i64 256, !1146, i64 264, !1147, i64 272, !1147, i64 288, !1147, i64 304, !1147, i64 320, !1146, i64 832, !1146, i64 840, !1147, i64 848, !1146, i64 896, !1210, i64 904, !1210, i64 908, !1147, i64 912, !1210, i64 928, !1210, i64 932, !1210, i64 936, !1210, i64 940, !1210, i64 944, !1210, i64 948, !1210, i64 952, !1223, i64 960, !1224, i64 8128, !1210, i64 9632, !1210, i64 9636, !1210, i64 9640, !1210, i64 9644, !1210, i64 9648, !1210, i64 9652, !1210, i64 9656, !1210, i64 9660, !1147, i64 9664, !1147, i64 9728, !1147, i64 9984, !1147, i64 9986}
!1223 = !{!"", !1147, i64 0, !1147, i64 384, !1147, i64 1248, !1147, i64 1504, !1147, i64 1760, !1147, i64 2144, !1147, i64 2624, !1147, i64 3136, !1147, i64 3648, !1210, i64 3712, !1147, i64 3716, !1210, i64 3732, !1147, i64 3736, !1147, i64 3760, !1147, i64 3784, !1147, i64 3808, !1147, i64 3816, !1147, i64 6888, !1147, i64 7144}
!1224 = !{!"", !1147, i64 0, !1147, i64 48, !1147, i64 96, !1147, i64 192, !1147, i64 576, !1147, i64 960, !1147, i64 1008, !1147, i64 1392, !1147, i64 1488, !1210, i64 1492, !1210, i64 1496}
!1225 = !{!"", !1226, i64 0, !1147, i64 488, !1147, i64 512, !1147, i64 552, !1147, i64 592, !1147, i64 664, !1147, i64 704, !1147, i64 744, !1147, i64 784, !1147, i64 824, !1147, i64 864, !1147, i64 904, !1147, i64 1664, !1147, i64 1936, !1147, i64 1952, !1147, i64 2976, !1147, i64 2984}
!1226 = !{!"", !1210, i64 0, !1210, i64 4, !1210, i64 8, !1147, i64 12, !1210, i64 88, !1210, i64 92, !1210, i64 96, !1147, i64 100, !1147, i64 108, !1147, i64 364, !1210, i64 432, !1210, i64 436, !1210, i64 440, !1147, i64 444, !1147, i64 456, !1227, i64 480}
!1227 = !{!"double", !1147, i64 0}
!1228 = !{!"", !1147, i64 0, !1147, i64 56, !1147, i64 112, !1147, i64 168, !1147, i64 224, !1147, i64 256, !1147, i64 312, !1147, i64 368, !1147, i64 424, !1147, i64 480, !1147, i64 536, !1147, i64 592, !1147, i64 624, !1146, i64 656, !1146, i64 664, !1147, i64 672, !1147, i64 728, !1147, i64 784, !1147, i64 840, !1147, i64 896, !1146, i64 952, !1146, i64 960, !1146, i64 968, !1146, i64 976, !1146, i64 984, !1146, i64 992}
!1229 = !{!"", !1146, i64 0, !1146, i64 8, !1146, i64 16, !1147, i64 24, !1147, i64 104, !1146, i64 160, !1146, i64 168, !1146, i64 176, !1146, i64 184, !1146, i64 192, !1146, i64 200, !1146, i64 208, !1146, i64 216}
!1230 = !{!"", !1146, i64 0, !1146, i64 8, !1146, i64 16, !1146, i64 24, !1146, i64 32, !1146, i64 40, !1146, i64 48, !1146, i64 56, !1146, i64 64, !1146, i64 72, !1146, i64 80, !1146, i64 88}
!1231 = !{!"", !1146, i64 0, !1146, i64 8, !1146, i64 16, !1146, i64 24, !1146, i64 32}
!1232 = !{!"", !1146, i64 0, !1146, i64 8, !1146, i64 16, !1146, i64 24, !1146, i64 32, !1146, i64 40, !1146, i64 48, !1146, i64 56}
!1233 = !DILocation(line: 338, column: 35, scope: !1206)
!1234 = !DILocation(line: 338, column: 13, scope: !1199)
!1235 = !DILocation(line: 340, column: 29, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 339, column: 9)
!1237 = !DILocation(line: 341, column: 29, scope: !1236)
!1238 = !DILocation(line: 342, column: 9, scope: !1236)
!1239 = !DILocation(line: 343, column: 25, scope: !1199)
!1240 = !DILocation(line: 344, column: 30, scope: !1199)
!1241 = !DILocation(line: 345, column: 30, scope: !1199)
!1242 = !DILocation(line: 346, column: 30, scope: !1199)
!1243 = !DILocation(line: 347, column: 38, scope: !1199)
!1244 = !DILocation(line: 348, column: 38, scope: !1199)
!1245 = !DILocation(line: 349, column: 38, scope: !1199)
!1246 = !DILocation(line: 350, column: 5, scope: !1199)
!1247 = !DILocation(line: 352, column: 12, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !45, file: !3, line: 352, column: 9)
!1249 = !DILocation(line: 352, column: 9, scope: !45)
!1250 = !DILocation(line: 354, column: 26, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 353, column: 5)
!1252 = !DILocation(line: 355, column: 26, scope: !1251)
!1253 = !DILocation(line: 356, column: 23, scope: !1251)
!1254 = !DILocation(line: 357, column: 23, scope: !1251)
!1255 = !DILocation(line: 358, column: 25, scope: !1251)
!1256 = !DILocation(line: 359, column: 30, scope: !1251)
!1257 = !DILocation(line: 360, column: 30, scope: !1251)
!1258 = !DILocation(line: 361, column: 30, scope: !1251)
!1259 = !DILocation(line: 362, column: 5, scope: !1251)
!1260 = !DILocation(line: 292, column: 9, scope: !45)
!1261 = !DILocation(line: 376, column: 35, scope: !45)
!1262 = !DILocation(line: 377, column: 5, scope: !45)
!1263 = !DILocation(line: 377, column: 35, scope: !45)
!1264 = !DILocation(line: 378, column: 1, scope: !45)
!1265 = distinct !DISubprogram(name: "quant_8x8", scope: !3, file: !3, line: 41, type: !1082, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1266)
!1266 = !{!1267, !1268, !1269, !1270}
!1267 = !DILocalVariable(name: "dct", arg: 1, scope: !1265, file: !3, line: 41, type: !1033)
!1268 = !DILocalVariable(name: "mf", arg: 2, scope: !1265, file: !3, line: 41, type: !490)
!1269 = !DILocalVariable(name: "bias", arg: 3, scope: !1265, file: !3, line: 41, type: !490)
!1270 = !DILocalVariable(name: "i", scope: !1265, file: !3, line: 43, type: !60)
!1271 = !DILocation(line: 0, scope: !1265)
!1272 = !DILocation(line: 44, column: 5, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 44, column: 5)
!1274 = !DILocation(line: 44, column: 26, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 44, column: 5)
!1276 = !DILocation(line: 45, column: 9, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 45, column: 9)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 45, column: 9)
!1279 = !{!1280, !1280, i64 0}
!1280 = !{!"short", !1147, i64 0}
!1281 = !{!1282}
!1282 = distinct !{!1282, !1283}
!1283 = distinct !{!1283, !"LVerDomain"}
!1284 = !{!1285, !1286}
!1285 = distinct !{!1285, !1283}
!1286 = distinct !{!1286, !1283}
!1287 = !{!1285}
!1288 = !{!1286}
!1289 = distinct !{!1289, !1272, !1290, !1291, !1292, !1293}
!1290 = !DILocation(line: 45, column: 9, scope: !1273)
!1291 = !{!"llvm.loop.mustprogress"}
!1292 = !{!"llvm.loop.isvectorized", i32 1}
!1293 = !{!"llvm.loop.unroll.runtime.disable"}
!1294 = !DILocation(line: 45, column: 9, scope: !1278)
!1295 = !DILocation(line: 44, column: 19, scope: !1275)
!1296 = distinct !{!1296, !1272, !1290, !1291, !1292}
!1297 = !DILocation(line: 46, column: 1, scope: !1265)
!1298 = distinct !DISubprogram(name: "quant_4x4", scope: !3, file: !3, line: 48, type: !1086, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1299)
!1299 = !{!1300, !1301, !1302, !1303}
!1300 = !DILocalVariable(name: "dct", arg: 1, scope: !1298, file: !3, line: 48, type: !1011)
!1301 = !DILocalVariable(name: "mf", arg: 2, scope: !1298, file: !3, line: 48, type: !490)
!1302 = !DILocalVariable(name: "bias", arg: 3, scope: !1298, file: !3, line: 48, type: !490)
!1303 = !DILocalVariable(name: "i", scope: !1298, file: !3, line: 50, type: !60)
!1304 = !DILocation(line: 0, scope: !1298)
!1305 = !DILocation(line: 51, column: 5, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 51, column: 5)
!1307 = !DILocation(line: 52, column: 9, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 52, column: 9)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 52, column: 9)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 51, column: 5)
!1311 = !{!1312}
!1312 = distinct !{!1312, !1313}
!1313 = distinct !{!1313, !"LVerDomain"}
!1314 = !{!1315, !1316}
!1315 = distinct !{!1315, !1313}
!1316 = distinct !{!1316, !1313}
!1317 = !{!1315}
!1318 = !{!1316}
!1319 = !DILocation(line: 53, column: 1, scope: !1298)
!1320 = !DILocation(line: 52, column: 9, scope: !1309)
!1321 = distinct !DISubprogram(name: "quant_4x4_dc", scope: !3, file: !3, line: 55, type: !1090, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1322)
!1322 = !{!1323, !1324, !1325, !1326}
!1323 = !DILocalVariable(name: "dct", arg: 1, scope: !1321, file: !3, line: 55, type: !1011)
!1324 = !DILocalVariable(name: "mf", arg: 2, scope: !1321, file: !3, line: 55, type: !60)
!1325 = !DILocalVariable(name: "bias", arg: 3, scope: !1321, file: !3, line: 55, type: !60)
!1326 = !DILocalVariable(name: "i", scope: !1321, file: !3, line: 57, type: !60)
!1327 = !DILocation(line: 0, scope: !1321)
!1328 = !DILocation(line: 59, column: 9, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 59, column: 9)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 59, column: 9)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 58, column: 5)
!1332 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 58, column: 5)
!1333 = !DILocation(line: 59, column: 9, scope: !1330)
!1334 = !DILocation(line: 60, column: 1, scope: !1321)
!1335 = distinct !DISubprogram(name: "quant_2x2_dc", scope: !3, file: !3, line: 62, type: !1094, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1336)
!1336 = !{!1337, !1338, !1339}
!1337 = !DILocalVariable(name: "dct", arg: 1, scope: !1335, file: !3, line: 62, type: !500)
!1338 = !DILocalVariable(name: "mf", arg: 2, scope: !1335, file: !3, line: 62, type: !60)
!1339 = !DILocalVariable(name: "bias", arg: 3, scope: !1335, file: !3, line: 62, type: !60)
!1340 = !DILocation(line: 0, scope: !1335)
!1341 = !DILocation(line: 64, column: 5, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 64, column: 5)
!1343 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 64, column: 5)
!1344 = !DILocation(line: 64, column: 5, scope: !1343)
!1345 = !DILocation(line: 65, column: 5, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 65, column: 5)
!1347 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 65, column: 5)
!1348 = !DILocation(line: 65, column: 5, scope: !1347)
!1349 = !DILocation(line: 66, column: 5, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 66, column: 5)
!1351 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 66, column: 5)
!1352 = !DILocation(line: 66, column: 5, scope: !1351)
!1353 = !DILocation(line: 67, column: 5, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 67, column: 5)
!1355 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 67, column: 5)
!1356 = !DILocation(line: 67, column: 5, scope: !1355)
!1357 = !DILocation(line: 68, column: 1, scope: !1335)
!1358 = distinct !DISubprogram(name: "dequant_4x4", scope: !3, file: !3, line: 76, type: !1102, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1359)
!1359 = !{!1360, !1361, !1362, !1363, !1365, !1366, !1367}
!1360 = !DILocalVariable(name: "dct", arg: 1, scope: !1358, file: !3, line: 76, type: !1011)
!1361 = !DILocalVariable(name: "dequant_mf", arg: 2, scope: !1358, file: !3, line: 76, type: !356)
!1362 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1358, file: !3, line: 76, type: !60)
!1363 = !DILocalVariable(name: "i_mf", scope: !1358, file: !3, line: 78, type: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!1365 = !DILocalVariable(name: "i_qbits", scope: !1358, file: !3, line: 79, type: !1364)
!1366 = !DILocalVariable(name: "y", scope: !1358, file: !3, line: 80, type: !60)
!1367 = !DILocalVariable(name: "f", scope: !1368, file: !3, line: 94, type: !1364)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 93, column: 5)
!1369 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 82, column: 9)
!1370 = !DILocation(line: 0, scope: !1358)
!1371 = !DILocation(line: 78, column: 26, scope: !1358)
!1372 = !DILocation(line: 79, column: 29, scope: !1358)
!1373 = !DILocation(line: 82, column: 17, scope: !1369)
!1374 = !DILocation(line: 82, column: 9, scope: !1358)
!1375 = !DILocation(line: 79, column: 32, scope: !1358)
!1376 = !DILocation(line: 86, column: 13, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 85, column: 9)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 84, column: 9)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 84, column: 9)
!1380 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 83, column: 5)
!1381 = !{!1210, !1210, i64 0}
!1382 = !DILocation(line: 89, column: 13, scope: !1377)
!1383 = !DILocation(line: 87, column: 13, scope: !1377)
!1384 = !DILocation(line: 88, column: 13, scope: !1377)
!1385 = !DILocation(line: 103, column: 1, scope: !1358)
!1386 = !DILocation(line: 94, column: 29, scope: !1368)
!1387 = !DILocation(line: 94, column: 37, scope: !1368)
!1388 = !DILocation(line: 94, column: 25, scope: !1368)
!1389 = !DILocation(line: 0, scope: !1368)
!1390 = !DILocation(line: 97, column: 13, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 96, column: 9)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 95, column: 9)
!1393 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 95, column: 9)
!1394 = !DILocation(line: 100, column: 13, scope: !1391)
!1395 = !DILocation(line: 98, column: 13, scope: !1391)
!1396 = !DILocation(line: 99, column: 13, scope: !1391)
!1397 = !DILocation(line: 0, scope: !1369)
!1398 = distinct !DISubprogram(name: "dequant_4x4_dc", scope: !3, file: !3, line: 142, type: !1102, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1399)
!1399 = !{!1400, !1401, !1402, !1403, !1404, !1405, !1408, !1410}
!1400 = !DILocalVariable(name: "dct", arg: 1, scope: !1398, file: !3, line: 142, type: !1011)
!1401 = !DILocalVariable(name: "dequant_mf", arg: 2, scope: !1398, file: !3, line: 142, type: !356)
!1402 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1398, file: !3, line: 142, type: !60)
!1403 = !DILocalVariable(name: "i_qbits", scope: !1398, file: !3, line: 144, type: !1364)
!1404 = !DILocalVariable(name: "y", scope: !1398, file: !3, line: 145, type: !60)
!1405 = !DILocalVariable(name: "i_dmf", scope: !1406, file: !3, line: 149, type: !1364)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 148, column: 5)
!1407 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 147, column: 9)
!1408 = !DILocalVariable(name: "i_dmf", scope: !1409, file: !3, line: 161, type: !1364)
!1409 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 160, column: 5)
!1410 = !DILocalVariable(name: "f", scope: !1409, file: !3, line: 162, type: !1364)
!1411 = !DILocation(line: 0, scope: !1398)
!1412 = !DILocation(line: 144, column: 29, scope: !1398)
!1413 = !DILocation(line: 161, column: 42, scope: !1409)
!1414 = !DILocation(line: 147, column: 17, scope: !1407)
!1415 = !DILocation(line: 0, scope: !1407)
!1416 = !DILocation(line: 147, column: 9, scope: !1398)
!1417 = !DILocation(line: 144, column: 32, scope: !1398)
!1418 = !DILocation(line: 149, column: 42, scope: !1406)
!1419 = !DILocation(line: 149, column: 27, scope: !1406)
!1420 = !DILocation(line: 149, column: 52, scope: !1406)
!1421 = !DILocation(line: 0, scope: !1406)
!1422 = !DILocation(line: 154, column: 13, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 152, column: 9)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 151, column: 9)
!1425 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 151, column: 9)
!1426 = !DILocation(line: 154, column: 23, scope: !1423)
!1427 = !DILocation(line: 155, column: 13, scope: !1423)
!1428 = !DILocation(line: 155, column: 23, scope: !1423)
!1429 = !DILocation(line: 156, column: 13, scope: !1423)
!1430 = !DILocation(line: 156, column: 23, scope: !1423)
!1431 = !DILocation(line: 153, column: 13, scope: !1423)
!1432 = !DILocation(line: 153, column: 23, scope: !1423)
!1433 = !DILocation(line: 172, column: 1, scope: !1398)
!1434 = !DILocation(line: 161, column: 27, scope: !1409)
!1435 = !DILocation(line: 0, scope: !1409)
!1436 = !DILocation(line: 162, column: 29, scope: !1409)
!1437 = !DILocation(line: 162, column: 37, scope: !1409)
!1438 = !DILocation(line: 162, column: 25, scope: !1409)
!1439 = !DILocation(line: 166, column: 27, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 165, column: 9)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 164, column: 9)
!1442 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 164, column: 9)
!1443 = !DILocation(line: 166, column: 37, scope: !1440)
!1444 = !DILocation(line: 166, column: 45, scope: !1440)
!1445 = !DILocation(line: 166, column: 51, scope: !1440)
!1446 = !DILocation(line: 166, column: 25, scope: !1440)
!1447 = !DILocation(line: 166, column: 23, scope: !1440)
!1448 = !DILocation(line: 167, column: 27, scope: !1440)
!1449 = !DILocation(line: 167, column: 37, scope: !1440)
!1450 = !DILocation(line: 167, column: 45, scope: !1440)
!1451 = !DILocation(line: 167, column: 51, scope: !1440)
!1452 = !DILocation(line: 167, column: 25, scope: !1440)
!1453 = !DILocation(line: 167, column: 23, scope: !1440)
!1454 = !DILocation(line: 168, column: 27, scope: !1440)
!1455 = !DILocation(line: 168, column: 37, scope: !1440)
!1456 = !DILocation(line: 168, column: 45, scope: !1440)
!1457 = !DILocation(line: 168, column: 51, scope: !1440)
!1458 = !DILocation(line: 168, column: 25, scope: !1440)
!1459 = !DILocation(line: 168, column: 23, scope: !1440)
!1460 = !DILocation(line: 169, column: 27, scope: !1440)
!1461 = !DILocation(line: 169, column: 37, scope: !1440)
!1462 = !DILocation(line: 169, column: 45, scope: !1440)
!1463 = !DILocation(line: 169, column: 51, scope: !1440)
!1464 = !DILocation(line: 169, column: 25, scope: !1440)
!1465 = !DILocation(line: 169, column: 23, scope: !1440)
!1466 = distinct !DISubprogram(name: "dequant_8x8", scope: !3, file: !3, line: 105, type: !1098, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1467)
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473, !1474}
!1468 = !DILocalVariable(name: "dct", arg: 1, scope: !1466, file: !3, line: 105, type: !1033)
!1469 = !DILocalVariable(name: "dequant_mf", arg: 2, scope: !1466, file: !3, line: 105, type: !363)
!1470 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1466, file: !3, line: 105, type: !60)
!1471 = !DILocalVariable(name: "i_mf", scope: !1466, file: !3, line: 107, type: !1364)
!1472 = !DILocalVariable(name: "i_qbits", scope: !1466, file: !3, line: 108, type: !1364)
!1473 = !DILocalVariable(name: "y", scope: !1466, file: !3, line: 109, type: !60)
!1474 = !DILocalVariable(name: "f", scope: !1475, file: !3, line: 127, type: !1364)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 126, column: 5)
!1476 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 111, column: 9)
!1477 = !DILocation(line: 0, scope: !1466)
!1478 = !DILocation(line: 107, column: 26, scope: !1466)
!1479 = !DILocation(line: 108, column: 29, scope: !1466)
!1480 = !DILocation(line: 111, column: 17, scope: !1476)
!1481 = !DILocation(line: 111, column: 9, scope: !1466)
!1482 = !DILocation(line: 108, column: 32, scope: !1466)
!1483 = !DILocation(line: 122, column: 13, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 114, column: 9)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 113, column: 9)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 113, column: 9)
!1487 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 112, column: 5)
!1488 = !DILocation(line: 115, column: 13, scope: !1484)
!1489 = !DILocation(line: 140, column: 1, scope: !1466)
!1490 = !DILocation(line: 0, scope: !1475)
!1491 = !DILocation(line: 127, column: 29, scope: !1475)
!1492 = !DILocation(line: 137, column: 13, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 129, column: 9)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 128, column: 9)
!1495 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 128, column: 9)
!1496 = !DILocation(line: 127, column: 37, scope: !1475)
!1497 = !DILocation(line: 127, column: 25, scope: !1475)
!1498 = !DILocation(line: 130, column: 13, scope: !1493)
!1499 = distinct !DISubprogram(name: "x264_denoise_dct", scope: !3, file: !3, line: 174, type: !1107, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1500)
!1500 = !{!1501, !1502, !1503, !1504, !1505, !1506, !1510}
!1501 = !DILocalVariable(name: "dct", arg: 1, scope: !1499, file: !3, line: 174, type: !681)
!1502 = !DILocalVariable(name: "sum", arg: 2, scope: !1499, file: !3, line: 174, type: !16)
!1503 = !DILocalVariable(name: "offset", arg: 3, scope: !1499, file: !3, line: 174, type: !490)
!1504 = !DILocalVariable(name: "size", arg: 4, scope: !1499, file: !3, line: 174, type: !60)
!1505 = !DILocalVariable(name: "i", scope: !1499, file: !3, line: 176, type: !60)
!1506 = !DILocalVariable(name: "level", scope: !1507, file: !3, line: 179, type: !60)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 178, column: 5)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 177, column: 5)
!1509 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 177, column: 5)
!1510 = !DILocalVariable(name: "sign", scope: !1507, file: !3, line: 180, type: !60)
!1511 = !DILocation(line: 0, scope: !1499)
!1512 = !DILocation(line: 177, column: 16, scope: !1508)
!1513 = !DILocation(line: 177, column: 5, scope: !1509)
!1514 = !DILocation(line: 179, column: 21, scope: !1507)
!1515 = !{!1516}
!1516 = distinct !{!1516, !1517}
!1517 = distinct !{!1517, !"LVerDomain"}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1517}
!1520 = !DILocation(line: 180, column: 25, scope: !1507)
!1521 = !DILocation(line: 181, column: 23, scope: !1507)
!1522 = !DILocation(line: 181, column: 29, scope: !1507)
!1523 = !DILocation(line: 182, column: 9, scope: !1507)
!1524 = !DILocation(line: 182, column: 16, scope: !1507)
!1525 = !DILocation(line: 183, column: 18, scope: !1507)
!1526 = !DILocation(line: 183, column: 15, scope: !1507)
!1527 = !DILocation(line: 184, column: 23, scope: !1507)
!1528 = !DILocation(line: 184, column: 18, scope: !1507)
!1529 = !DILocation(line: 184, column: 16, scope: !1507)
!1530 = distinct !{!1530, !1513, !1531, !1291, !1292, !1293}
!1531 = !DILocation(line: 185, column: 5, scope: !1509)
!1532 = !DILocation(line: 0, scope: !1507)
!1533 = !DILocation(line: 177, column: 24, scope: !1508)
!1534 = distinct !{!1534, !1513, !1531, !1291, !1292}
!1535 = !DILocation(line: 186, column: 1, scope: !1499)
!1536 = distinct !DISubprogram(name: "x264_decimate_score15", scope: !3, file: !3, line: 235, type: !1111, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1537)
!1537 = !{!1538}
!1538 = !DILocalVariable(name: "dct", arg: 1, scope: !1536, file: !3, line: 235, type: !681)
!1539 = !DILocation(line: 0, scope: !1536)
!1540 = !DILocation(line: 237, column: 45, scope: !1536)
!1541 = !DILocalVariable(name: "dct", arg: 1, scope: !1542, file: !3, line: 205, type: !681)
!1542 = distinct !DISubprogram(name: "x264_decimate_score_internal", scope: !3, file: !3, line: 205, type: !1543, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1545)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!60, !681, !60}
!1545 = !{!1541, !1546, !1547, !1548, !1549, !1550}
!1546 = !DILocalVariable(name: "i_max", arg: 2, scope: !1542, file: !3, line: 205, type: !60)
!1547 = !DILocalVariable(name: "ds_table", scope: !1542, file: !3, line: 207, type: !348)
!1548 = !DILocalVariable(name: "i_score", scope: !1542, file: !3, line: 208, type: !60)
!1549 = !DILocalVariable(name: "idx", scope: !1542, file: !3, line: 209, type: !60)
!1550 = !DILocalVariable(name: "i_run", scope: !1551, file: !3, line: 218, type: !60)
!1551 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 217, column: 5)
!1552 = !DILocation(line: 0, scope: !1542, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 237, column: 12, scope: !1536)
!1554 = !DILocation(line: 212, column: 37, scope: !1542, inlinedAt: !1553)
!1555 = !DILocation(line: 212, column: 24, scope: !1542, inlinedAt: !1553)
!1556 = !DILocation(line: 212, column: 48, scope: !1542, inlinedAt: !1553)
!1557 = !DILocation(line: 212, column: 5, scope: !1542, inlinedAt: !1553)
!1558 = !DILocation(line: 214, column: 21, scope: !1559, inlinedAt: !1553)
!1559 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 214, column: 9)
!1560 = !DILocation(line: 214, column: 30, scope: !1559, inlinedAt: !1553)
!1561 = !DILocation(line: 214, column: 9, scope: !1542, inlinedAt: !1553)
!1562 = !DILocation(line: 216, column: 16, scope: !1542, inlinedAt: !1553)
!1563 = !DILocation(line: 216, column: 5, scope: !1542, inlinedAt: !1553)
!1564 = !DILocation(line: 220, column: 24, scope: !1565, inlinedAt: !1553)
!1565 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 220, column: 13)
!1566 = !DILocation(line: 220, column: 40, scope: !1565, inlinedAt: !1553)
!1567 = !DILocation(line: 220, column: 13, scope: !1551, inlinedAt: !1553)
!1568 = !DILocation(line: 0, scope: !1551, inlinedAt: !1553)
!1569 = !DILocation(line: 224, column: 20, scope: !1551, inlinedAt: !1553)
!1570 = !DILocation(line: 224, column: 25, scope: !1551, inlinedAt: !1553)
!1571 = !DILocation(line: 224, column: 28, scope: !1551, inlinedAt: !1553)
!1572 = !DILocation(line: 224, column: 37, scope: !1551, inlinedAt: !1553)
!1573 = !DILocation(line: 224, column: 9, scope: !1551, inlinedAt: !1553)
!1574 = !DILocation(line: 227, column: 18, scope: !1575, inlinedAt: !1553)
!1575 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 225, column: 9)
!1576 = distinct !{!1576, !1573, !1577, !1291}
!1577 = !DILocation(line: 228, column: 9, scope: !1551, inlinedAt: !1553)
!1578 = !DILocation(line: 229, column: 20, scope: !1551, inlinedAt: !1553)
!1579 = !{!1147, !1147, i64 0}
!1580 = !DILocation(line: 229, column: 17, scope: !1551, inlinedAt: !1553)
!1581 = !DILocation(line: 237, column: 5, scope: !1536)
!1582 = distinct !DISubprogram(name: "x264_decimate_score16", scope: !3, file: !3, line: 239, type: !1111, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1583)
!1583 = !{!1584}
!1584 = !DILocalVariable(name: "dct", arg: 1, scope: !1582, file: !3, line: 239, type: !681)
!1585 = !DILocation(line: 0, scope: !1582)
!1586 = !DILocation(line: 0, scope: !1542, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 241, column: 12, scope: !1582)
!1588 = !DILocation(line: 212, column: 37, scope: !1542, inlinedAt: !1587)
!1589 = !DILocation(line: 212, column: 24, scope: !1542, inlinedAt: !1587)
!1590 = !DILocation(line: 212, column: 48, scope: !1542, inlinedAt: !1587)
!1591 = !DILocation(line: 212, column: 5, scope: !1542, inlinedAt: !1587)
!1592 = !DILocation(line: 212, column: 44, scope: !1542, inlinedAt: !1587)
!1593 = !DILocation(line: 214, column: 21, scope: !1559, inlinedAt: !1587)
!1594 = !DILocation(line: 214, column: 30, scope: !1559, inlinedAt: !1587)
!1595 = !DILocation(line: 214, column: 9, scope: !1542, inlinedAt: !1587)
!1596 = !DILocation(line: 220, column: 13, scope: !1551, inlinedAt: !1587)
!1597 = !DILocation(line: 220, column: 24, scope: !1565, inlinedAt: !1587)
!1598 = !DILocation(line: 220, column: 40, scope: !1565, inlinedAt: !1587)
!1599 = !DILocation(line: 0, scope: !1551, inlinedAt: !1587)
!1600 = !DILocation(line: 224, column: 20, scope: !1551, inlinedAt: !1587)
!1601 = !DILocation(line: 224, column: 25, scope: !1551, inlinedAt: !1587)
!1602 = !DILocation(line: 224, column: 28, scope: !1551, inlinedAt: !1587)
!1603 = !DILocation(line: 224, column: 37, scope: !1551, inlinedAt: !1587)
!1604 = !DILocation(line: 224, column: 9, scope: !1551, inlinedAt: !1587)
!1605 = !DILocation(line: 227, column: 18, scope: !1575, inlinedAt: !1587)
!1606 = distinct !{!1606, !1604, !1607, !1291}
!1607 = !DILocation(line: 228, column: 9, scope: !1551, inlinedAt: !1587)
!1608 = !DILocation(line: 229, column: 20, scope: !1551, inlinedAt: !1587)
!1609 = !DILocation(line: 229, column: 17, scope: !1551, inlinedAt: !1587)
!1610 = !DILocation(line: 216, column: 5, scope: !1542, inlinedAt: !1587)
!1611 = !DILocation(line: 216, column: 16, scope: !1542, inlinedAt: !1587)
!1612 = !DILocation(line: 241, column: 5, scope: !1582)
!1613 = distinct !DISubprogram(name: "x264_decimate_score64", scope: !3, file: !3, line: 243, type: !1111, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1614)
!1614 = !{!1615}
!1615 = !DILocalVariable(name: "dct", arg: 1, scope: !1613, file: !3, line: 243, type: !681)
!1616 = !DILocation(line: 0, scope: !1613)
!1617 = !DILocation(line: 0, scope: !1542, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 245, column: 12, scope: !1613)
!1619 = !DILocation(line: 212, column: 37, scope: !1542, inlinedAt: !1618)
!1620 = !DILocation(line: 212, column: 24, scope: !1542, inlinedAt: !1618)
!1621 = !DILocation(line: 212, column: 48, scope: !1542, inlinedAt: !1618)
!1622 = !DILocation(line: 212, column: 5, scope: !1542, inlinedAt: !1618)
!1623 = !DILocation(line: 212, column: 44, scope: !1542, inlinedAt: !1618)
!1624 = !DILocation(line: 214, column: 21, scope: !1559, inlinedAt: !1618)
!1625 = !DILocation(line: 214, column: 30, scope: !1559, inlinedAt: !1618)
!1626 = !DILocation(line: 214, column: 9, scope: !1542, inlinedAt: !1618)
!1627 = !DILocation(line: 220, column: 13, scope: !1551, inlinedAt: !1618)
!1628 = !DILocation(line: 220, column: 24, scope: !1565, inlinedAt: !1618)
!1629 = !DILocation(line: 220, column: 40, scope: !1565, inlinedAt: !1618)
!1630 = !DILocation(line: 0, scope: !1551, inlinedAt: !1618)
!1631 = !DILocation(line: 224, column: 20, scope: !1551, inlinedAt: !1618)
!1632 = !DILocation(line: 224, column: 25, scope: !1551, inlinedAt: !1618)
!1633 = !DILocation(line: 224, column: 28, scope: !1551, inlinedAt: !1618)
!1634 = !DILocation(line: 224, column: 37, scope: !1551, inlinedAt: !1618)
!1635 = !DILocation(line: 224, column: 9, scope: !1551, inlinedAt: !1618)
!1636 = !DILocation(line: 227, column: 18, scope: !1575, inlinedAt: !1618)
!1637 = distinct !{!1637, !1635, !1638, !1291}
!1638 = !DILocation(line: 228, column: 9, scope: !1551, inlinedAt: !1618)
!1639 = !DILocation(line: 229, column: 20, scope: !1551, inlinedAt: !1618)
!1640 = !DILocation(line: 229, column: 17, scope: !1551, inlinedAt: !1618)
!1641 = !DILocation(line: 216, column: 5, scope: !1542, inlinedAt: !1618)
!1642 = !DILocation(line: 216, column: 16, scope: !1542, inlinedAt: !1618)
!1643 = !DILocation(line: 245, column: 5, scope: !1613)
!1644 = distinct !DISubprogram(name: "x264_coeff_last4", scope: !3, file: !3, line: 259, type: !1111, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1645)
!1645 = !{!1646}
!1646 = !DILocalVariable(name: "l", arg: 1, scope: !1644, file: !3, line: 259, type: !681)
!1647 = !DILocation(line: 0, scope: !1644)
!1648 = !DILocalVariable(name: "l", arg: 1, scope: !1649, file: !3, line: 248, type: !681)
!1649 = distinct !DISubprogram(name: "x264_coeff_last_internal", scope: !3, file: !3, line: 248, type: !1543, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1650)
!1650 = !{!1648, !1651, !1652}
!1651 = !DILocalVariable(name: "i_count", arg: 2, scope: !1649, file: !3, line: 248, type: !60)
!1652 = !DILocalVariable(name: "i_last", scope: !1649, file: !3, line: 250, type: !60)
!1653 = !DILocation(line: 0, scope: !1649, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 261, column: 12, scope: !1644)
!1655 = !DILocation(line: 252, column: 13, scope: !1656, inlinedAt: !1654)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 252, column: 13)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 251, column: 5)
!1658 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 251, column: 5)
!1659 = !{!1215, !1215, i64 0}
!1660 = !DILocation(line: 252, column: 13, scope: !1657, inlinedAt: !1654)
!1661 = !DILocation(line: 254, column: 27, scope: !1649, inlinedAt: !1654)
!1662 = !DILocation(line: 254, column: 37, scope: !1649, inlinedAt: !1654)
!1663 = !DILocation(line: 254, column: 5, scope: !1649, inlinedAt: !1654)
!1664 = !DILocation(line: 261, column: 5, scope: !1644)
!1665 = distinct !DISubprogram(name: "x264_coeff_last15", scope: !3, file: !3, line: 263, type: !1111, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1666)
!1666 = !{!1667}
!1667 = !DILocalVariable(name: "l", arg: 1, scope: !1665, file: !3, line: 263, type: !681)
!1668 = !DILocation(line: 0, scope: !1665)
!1669 = !DILocation(line: 0, scope: !1649, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 265, column: 12, scope: !1665)
!1671 = !DILocation(line: 252, column: 34, scope: !1656, inlinedAt: !1670)
!1672 = !DILocation(line: 252, column: 13, scope: !1656, inlinedAt: !1670)
!1673 = !DILocation(line: 252, column: 13, scope: !1657, inlinedAt: !1670)
!1674 = !DILocation(line: 254, column: 5, scope: !1649, inlinedAt: !1670)
!1675 = !DILocation(line: 254, column: 27, scope: !1649, inlinedAt: !1670)
!1676 = !DILocation(line: 254, column: 37, scope: !1649, inlinedAt: !1670)
!1677 = !DILocation(line: 255, column: 15, scope: !1649, inlinedAt: !1670)
!1678 = !DILocation(line: 254, column: 19, scope: !1649, inlinedAt: !1670)
!1679 = !DILocation(line: 254, column: 24, scope: !1649, inlinedAt: !1670)
!1680 = distinct !{!1680, !1674, !1677, !1291}
!1681 = !DILocation(line: 265, column: 5, scope: !1665)
!1682 = distinct !DISubprogram(name: "x264_coeff_last16", scope: !3, file: !3, line: 267, type: !1111, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1683)
!1683 = !{!1684}
!1684 = !DILocalVariable(name: "l", arg: 1, scope: !1682, file: !3, line: 267, type: !681)
!1685 = !DILocation(line: 0, scope: !1682)
!1686 = !DILocation(line: 0, scope: !1649, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 269, column: 12, scope: !1682)
!1688 = !DILocation(line: 252, column: 34, scope: !1656, inlinedAt: !1687)
!1689 = !DILocation(line: 252, column: 13, scope: !1656, inlinedAt: !1687)
!1690 = !DILocation(line: 252, column: 13, scope: !1657, inlinedAt: !1687)
!1691 = !DILocation(line: 254, column: 5, scope: !1649, inlinedAt: !1687)
!1692 = !DILocation(line: 254, column: 27, scope: !1649, inlinedAt: !1687)
!1693 = !DILocation(line: 254, column: 37, scope: !1649, inlinedAt: !1687)
!1694 = !DILocation(line: 255, column: 15, scope: !1649, inlinedAt: !1687)
!1695 = !DILocation(line: 254, column: 19, scope: !1649, inlinedAt: !1687)
!1696 = !DILocation(line: 254, column: 24, scope: !1649, inlinedAt: !1687)
!1697 = distinct !{!1697, !1691, !1694, !1291}
!1698 = !DILocation(line: 269, column: 5, scope: !1682)
!1699 = distinct !DISubprogram(name: "x264_coeff_last64", scope: !3, file: !3, line: 271, type: !1111, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1700)
!1700 = !{!1701}
!1701 = !DILocalVariable(name: "l", arg: 1, scope: !1699, file: !3, line: 271, type: !681)
!1702 = !DILocation(line: 0, scope: !1699)
!1703 = !DILocation(line: 0, scope: !1649, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 273, column: 12, scope: !1699)
!1705 = !DILocation(line: 252, column: 34, scope: !1656, inlinedAt: !1704)
!1706 = !DILocation(line: 252, column: 13, scope: !1656, inlinedAt: !1704)
!1707 = !DILocation(line: 252, column: 13, scope: !1657, inlinedAt: !1704)
!1708 = !DILocation(line: 254, column: 5, scope: !1649, inlinedAt: !1704)
!1709 = !DILocation(line: 254, column: 27, scope: !1649, inlinedAt: !1704)
!1710 = !DILocation(line: 254, column: 37, scope: !1649, inlinedAt: !1704)
!1711 = !DILocation(line: 255, column: 15, scope: !1649, inlinedAt: !1704)
!1712 = !DILocation(line: 254, column: 19, scope: !1649, inlinedAt: !1704)
!1713 = !DILocation(line: 254, column: 24, scope: !1649, inlinedAt: !1704)
!1714 = distinct !{!1714, !1708, !1711, !1291}
!1715 = !DILocation(line: 273, column: 5, scope: !1699)
