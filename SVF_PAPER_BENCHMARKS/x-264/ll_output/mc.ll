; ModuleID = 'common/mc.c'
source_filename = "common/mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_frame_t = type { i32, i32, i32, i64, i32, i32, i32, float, float, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x ptr], [4 x ptr], [4 x ptr], ptr, [4 x ptr], [4 x ptr], ptr, [2 x ptr], [2 x [17 x ptr]], [2 x [17 x ptr]], [2 x ptr], [2 x i32], [2 x [16 x i32]], [16 x i32], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x ptr]], ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
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

@hpel_ref0 = internal unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 2, i32 3, i32 3, i32 3, i32 0, i32 1, i32 1, i32 1], align 16, !dbg !0
@hpel_ref1 = internal unnamed_addr constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 3, i32 2, i32 2, i32 2, i32 3, i32 2, i32 2, i32 2, i32 3, i32 2], align 16, !dbg !20

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_init_lowres(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !dbg !34 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1139, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %1, metadata !1140, metadata !DIExpression()), !dbg !1147
  %3 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 16, !dbg !1148
  %4 = load ptr, ptr %3, align 8, !dbg !1149, !tbaa !1150
  call void @llvm.dbg.value(metadata ptr %4, metadata !1141, metadata !DIExpression()), !dbg !1147
  %5 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 10, !dbg !1154
  %6 = load i32, ptr %5, align 8, !dbg !1155, !tbaa !1156
  call void @llvm.dbg.value(metadata i32 %6, metadata !1142, metadata !DIExpression()), !dbg !1147
  %7 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 12, !dbg !1158
  %8 = load i32, ptr %7, align 8, !dbg !1159, !tbaa !1156
  call void @llvm.dbg.value(metadata i32 %8, metadata !1143, metadata !DIExpression()), !dbg !1147
  %9 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 11, !dbg !1160
  %10 = load i32, ptr %9, align 4, !dbg !1161, !tbaa !1156
  call void @llvm.dbg.value(metadata i32 %10, metadata !1144, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i32 0, metadata !1146, metadata !DIExpression()), !dbg !1147
  %11 = icmp sgt i32 %8, 0, !dbg !1162
  br i1 %11, label %14, label %12, !dbg !1165

12:                                               ; preds = %2
  %13 = sext i32 %10 to i64, !dbg !1166
  br label %57, !dbg !1165

14:                                               ; preds = %2
  %15 = sext i32 %6 to i64, !dbg !1165
  %16 = sext i32 %10 to i64, !dbg !1165
  %17 = zext i32 %8 to i64, !dbg !1162
  %18 = and i64 %17, 1, !dbg !1165
  %19 = icmp eq i32 %8, 1, !dbg !1165
  br i1 %19, label %45, label %20, !dbg !1165

20:                                               ; preds = %14
  %21 = and i64 %17, 4294967294, !dbg !1165
  br label %22, !dbg !1165

22:                                               ; preds = %22, %20
  %23 = phi i64 [ 0, %20 ], [ %42, %22 ]
  %24 = phi i64 [ 0, %20 ], [ %43, %22 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !1146, metadata !DIExpression()), !dbg !1147
  %25 = mul nsw i64 %23, %15, !dbg !1167
  %26 = add nsw i64 %25, %16, !dbg !1168
  %27 = shl i64 %26, 32, !dbg !1169
  %28 = add i64 %27, -4294967296, !dbg !1169
  %29 = ashr exact i64 %28, 32, !dbg !1169
  %30 = getelementptr inbounds i8, ptr %4, i64 %29, !dbg !1169
  %31 = load i8, ptr %30, align 1, !dbg !1169, !tbaa !1170
  %32 = getelementptr inbounds i8, ptr %4, i64 %26, !dbg !1171
  store i8 %31, ptr %32, align 1, !dbg !1172, !tbaa !1170
  %33 = or i64 %23, 1, !dbg !1173
  call void @llvm.dbg.value(metadata i64 %33, metadata !1146, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i64 %33, metadata !1146, metadata !DIExpression()), !dbg !1147
  %34 = mul nsw i64 %33, %15, !dbg !1167
  %35 = add nsw i64 %34, %16, !dbg !1168
  %36 = shl i64 %35, 32, !dbg !1169
  %37 = add i64 %36, -4294967296, !dbg !1169
  %38 = ashr exact i64 %37, 32, !dbg !1169
  %39 = getelementptr inbounds i8, ptr %4, i64 %38, !dbg !1169
  %40 = load i8, ptr %39, align 1, !dbg !1169, !tbaa !1170
  %41 = getelementptr inbounds i8, ptr %4, i64 %35, !dbg !1171
  store i8 %40, ptr %41, align 1, !dbg !1172, !tbaa !1170
  %42 = add nuw nsw i64 %23, 2, !dbg !1173
  call void @llvm.dbg.value(metadata i64 %42, metadata !1146, metadata !DIExpression()), !dbg !1147
  %43 = add i64 %24, 2, !dbg !1165
  %44 = icmp eq i64 %43, %21, !dbg !1165
  br i1 %44, label %45, label %22, !dbg !1165, !llvm.loop !1174

45:                                               ; preds = %22, %14
  %46 = phi i64 [ 0, %14 ], [ %42, %22 ]
  %47 = icmp eq i64 %18, 0, !dbg !1165
  br i1 %47, label %57, label %48, !dbg !1165

48:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i64 %46, metadata !1146, metadata !DIExpression()), !dbg !1147
  %49 = mul nsw i64 %46, %15, !dbg !1167
  %50 = add nsw i64 %49, %16, !dbg !1168
  %51 = shl i64 %50, 32, !dbg !1169
  %52 = add i64 %51, -4294967296, !dbg !1169
  %53 = ashr exact i64 %52, 32, !dbg !1169
  %54 = getelementptr inbounds i8, ptr %4, i64 %53, !dbg !1169
  %55 = load i8, ptr %54, align 1, !dbg !1169, !tbaa !1170
  %56 = getelementptr inbounds i8, ptr %4, i64 %50, !dbg !1171
  store i8 %55, ptr %56, align 1, !dbg !1172, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 %46, metadata !1146, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1147
  br label %57, !dbg !1177

57:                                               ; preds = %48, %45, %12
  %58 = phi i64 [ %13, %12 ], [ %16, %45 ], [ %16, %48 ], !dbg !1166
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 10, !dbg !1177
  %60 = load ptr, ptr %59, align 8, !dbg !1177, !tbaa !1178
  %61 = mul nsw i32 %8, %6, !dbg !1204
  %62 = sext i32 %61 to i64, !dbg !1205
  %63 = getelementptr inbounds i8, ptr %4, i64 %62, !dbg !1205
  %64 = add nsw i32 %8, -1, !dbg !1206
  %65 = mul nsw i32 %64, %6, !dbg !1207
  %66 = sext i32 %65 to i64, !dbg !1208
  %67 = getelementptr inbounds i8, ptr %4, i64 %66, !dbg !1208
  %68 = tail call ptr %60(ptr noundef %63, ptr noundef %67, i64 noundef %58) #11, !dbg !1209
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 12, !dbg !1210
  %70 = load ptr, ptr %69, align 8, !dbg !1210, !tbaa !1211
  %71 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 18, !dbg !1212
  %72 = load ptr, ptr %71, align 8, !dbg !1213, !tbaa !1150
  %73 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 18, i64 1, !dbg !1214
  %74 = load ptr, ptr %73, align 8, !dbg !1214, !tbaa !1150
  %75 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 18, i64 2, !dbg !1215
  %76 = load ptr, ptr %75, align 8, !dbg !1215, !tbaa !1150
  %77 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 18, i64 3, !dbg !1216
  %78 = load ptr, ptr %77, align 8, !dbg !1216, !tbaa !1150
  %79 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 13, !dbg !1217
  %80 = load i32, ptr %79, align 4, !dbg !1217, !tbaa !1218
  %81 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 14, !dbg !1220
  %82 = load i32, ptr %81, align 8, !dbg !1220, !tbaa !1221
  %83 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 15, !dbg !1222
  %84 = load i32, ptr %83, align 4, !dbg !1222, !tbaa !1223
  tail call void %70(ptr noundef %4, ptr noundef %72, ptr noundef %74, ptr noundef %76, ptr noundef %78, i32 noundef %6, i32 noundef %80, i32 noundef %82, i32 noundef %84) #11, !dbg !1224
  tail call void @x264_frame_expand_border_lowres(ptr noundef %1) #11, !dbg !1225
  %85 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 30, !dbg !1226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1296) %85, i8 -1, i64 1296, i1 false), !dbg !1227
  call void @llvm.dbg.value(metadata i32 0, metadata !1145, metadata !DIExpression()), !dbg !1147
  %86 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16
  %87 = load i32, ptr %86, align 16, !dbg !1228, !tbaa !1231
  %88 = icmp sgt i32 %87, -2, !dbg !1232
  br i1 %88, label %89, label %150, !dbg !1233

89:                                               ; preds = %57, %113
  %90 = phi i32 [ %114, %113 ], [ %87, %57 ]
  %91 = phi i64 [ %116, %113 ], [ 0, %57 ]
  call void @llvm.dbg.value(metadata i64 %91, metadata !1145, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i32 0, metadata !1146, metadata !DIExpression()), !dbg !1147
  %92 = icmp sgt i32 %90, -2, !dbg !1234
  br i1 %92, label %105, label %113, !dbg !1237

93:                                               ; preds = %113
  %94 = icmp slt i32 %114, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !1146, metadata !DIExpression()), !dbg !1147
  br i1 %94, label %150, label %95, !dbg !1238

95:                                               ; preds = %93
  %96 = icmp eq i32 %114, 0
  %97 = add nuw i32 %114, 1, !dbg !1242
  %98 = select i1 %96, i64 1, i64 2, !dbg !1242
  %99 = zext i32 %97 to i64
  %100 = add nsw i64 %99, -1, !dbg !1242
  %101 = and i64 %99, 3
  %102 = icmp ult i64 %100, 3
  %103 = and i64 %99, 4294967292
  %104 = icmp eq i64 %101, 0
  br label %118, !dbg !1242

105:                                              ; preds = %89, %105
  %106 = phi i64 [ %109, %105 ], [ 0, %89 ]
  call void @llvm.dbg.value(metadata i64 %106, metadata !1146, metadata !DIExpression()), !dbg !1147
  %107 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 34, i64 %106, i64 %91, !dbg !1243
  %108 = load ptr, ptr %107, align 8, !dbg !1243, !tbaa !1150
  store i32 -1, ptr %108, align 4, !dbg !1244, !tbaa !1156
  %109 = add nuw nsw i64 %106, 1, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %109, metadata !1146, metadata !DIExpression()), !dbg !1147
  %110 = load i32, ptr %86, align 16, !dbg !1246, !tbaa !1231
  %111 = sext i32 %110 to i64, !dbg !1234
  %112 = icmp sgt i64 %106, %111, !dbg !1234
  br i1 %112, label %113, label %105, !dbg !1237, !llvm.loop !1247

113:                                              ; preds = %105, %89
  %114 = phi i32 [ %90, %89 ], [ %110, %105 ]
  %115 = sext i32 %114 to i64, !dbg !1249
  %116 = add nuw nsw i64 %91, 1, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %116, metadata !1145, metadata !DIExpression()), !dbg !1147
  %117 = icmp sgt i64 %91, %115, !dbg !1232
  br i1 %117, label %93, label %89, !dbg !1233, !llvm.loop !1251

118:                                              ; preds = %95, %147
  %119 = phi i64 [ 0, %95 ], [ %148, %147 ]
  call void @llvm.dbg.value(metadata i64 %119, metadata !1146, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i32 0, metadata !1145, metadata !DIExpression()), !dbg !1147
  br i1 %102, label %137, label %120, !dbg !1238

120:                                              ; preds = %118, %120
  %121 = phi i64 [ %134, %120 ], [ 0, %118 ]
  %122 = phi i64 [ %135, %120 ], [ 0, %118 ]
  call void @llvm.dbg.value(metadata i64 %121, metadata !1145, metadata !DIExpression()), !dbg !1147
  %123 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 24, i64 %119, i64 %121, !dbg !1253
  %124 = load ptr, ptr %123, align 8, !dbg !1253, !tbaa !1150
  store i16 32767, ptr %124, align 2, !dbg !1255, !tbaa !1256
  %125 = or i64 %121, 1, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %125, metadata !1145, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i64 %125, metadata !1145, metadata !DIExpression()), !dbg !1147
  %126 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 24, i64 %119, i64 %125, !dbg !1253
  %127 = load ptr, ptr %126, align 8, !dbg !1253, !tbaa !1150
  store i16 32767, ptr %127, align 2, !dbg !1255, !tbaa !1256
  %128 = or i64 %121, 2, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %128, metadata !1145, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i64 %128, metadata !1145, metadata !DIExpression()), !dbg !1147
  %129 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 24, i64 %119, i64 %128, !dbg !1253
  %130 = load ptr, ptr %129, align 8, !dbg !1253, !tbaa !1150
  store i16 32767, ptr %130, align 2, !dbg !1255, !tbaa !1256
  %131 = or i64 %121, 3, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %131, metadata !1145, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i64 %131, metadata !1145, metadata !DIExpression()), !dbg !1147
  %132 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 24, i64 %119, i64 %131, !dbg !1253
  %133 = load ptr, ptr %132, align 8, !dbg !1253, !tbaa !1150
  store i16 32767, ptr %133, align 2, !dbg !1255, !tbaa !1256
  %134 = add nuw nsw i64 %121, 4, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %134, metadata !1145, metadata !DIExpression()), !dbg !1147
  %135 = add i64 %122, 4, !dbg !1238
  %136 = icmp eq i64 %135, %103, !dbg !1238
  br i1 %136, label %137, label %120, !dbg !1238, !llvm.loop !1259

137:                                              ; preds = %120, %118
  %138 = phi i64 [ 0, %118 ], [ %134, %120 ]
  br i1 %104, label %147, label %139, !dbg !1238

139:                                              ; preds = %137, %139
  %140 = phi i64 [ %144, %139 ], [ %138, %137 ]
  %141 = phi i64 [ %145, %139 ], [ 0, %137 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1145, metadata !DIExpression()), !dbg !1147
  %142 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 24, i64 %119, i64 %140, !dbg !1253
  %143 = load ptr, ptr %142, align 8, !dbg !1253, !tbaa !1150
  store i16 32767, ptr %143, align 2, !dbg !1255, !tbaa !1256
  %144 = add nuw nsw i64 %140, 1, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %144, metadata !1145, metadata !DIExpression()), !dbg !1147
  %145 = add i64 %141, 1, !dbg !1238
  %146 = icmp eq i64 %145, %101, !dbg !1238
  br i1 %146, label %147, label %139, !dbg !1238, !llvm.loop !1261

147:                                              ; preds = %139, %137
  %148 = add nuw nsw i64 %119, 1, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %148, metadata !1146, metadata !DIExpression()), !dbg !1147
  %149 = icmp eq i64 %148, %98, !dbg !1264
  br i1 %149, label %150, label %118, !dbg !1242, !llvm.loop !1265

150:                                              ; preds = %147, %57, %93
  ret void, !dbg !1267
}

declare !dbg !1268 void @x264_frame_expand_border_lowres(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_mc_init(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1272 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1277, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata ptr %1, metadata !1278, metadata !DIExpression()), !dbg !1279
  store ptr @mc_luma, ptr %1, align 8, !dbg !1280, !tbaa !1281
  %3 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 1, !dbg !1282
  store ptr @get_ref, ptr %3, align 8, !dbg !1283, !tbaa !1284
  %4 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 2, !dbg !1285
  store ptr @mc_chroma, ptr %4, align 8, !dbg !1286, !tbaa !1287
  %5 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, !dbg !1288
  store ptr @pixel_avg_16x16, ptr %5, align 8, !dbg !1289, !tbaa !1150
  %6 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 1, !dbg !1290
  store ptr @pixel_avg_16x8, ptr %6, align 8, !dbg !1291, !tbaa !1150
  %7 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 2, !dbg !1292
  store ptr @pixel_avg_8x16, ptr %7, align 8, !dbg !1293, !tbaa !1150
  %8 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 3, !dbg !1294
  store ptr @pixel_avg_8x8, ptr %8, align 8, !dbg !1295, !tbaa !1150
  %9 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 4, !dbg !1296
  store ptr @pixel_avg_8x4, ptr %9, align 8, !dbg !1297, !tbaa !1150
  %10 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 5, !dbg !1298
  store ptr @pixel_avg_4x8, ptr %10, align 8, !dbg !1299, !tbaa !1150
  %11 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 6, !dbg !1300
  store ptr @pixel_avg_4x4, ptr %11, align 8, !dbg !1301, !tbaa !1150
  %12 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 7, !dbg !1302
  store ptr @pixel_avg_4x2, ptr %12, align 8, !dbg !1303, !tbaa !1150
  %13 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 8, !dbg !1304
  store ptr @pixel_avg_2x4, ptr %13, align 8, !dbg !1305, !tbaa !1150
  %14 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 9, !dbg !1306
  store ptr @pixel_avg_2x2, ptr %14, align 8, !dbg !1307, !tbaa !1150
  %15 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 5, !dbg !1308
  store ptr @mc_copy_w16, ptr %15, align 8, !dbg !1309, !tbaa !1310
  %16 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 4, !dbg !1311
  store ptr @mc_copy_w16, ptr %16, align 8, !dbg !1312, !tbaa !1150
  %17 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 4, i64 3, !dbg !1313
  store ptr @mc_copy_w8, ptr %17, align 8, !dbg !1314, !tbaa !1150
  %18 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 4, i64 6, !dbg !1315
  store ptr @mc_copy_w4, ptr %18, align 8, !dbg !1316, !tbaa !1150
  %19 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 6, !dbg !1317
  store ptr @plane_copy, ptr %19, align 8, !dbg !1318, !tbaa !1319
  %20 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 7, !dbg !1320
  store ptr @hpel_filter, ptr %20, align 8, !dbg !1321, !tbaa !1322
  %21 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 8, !dbg !1323
  store ptr @prefetch_fenc_null, ptr %21, align 8, !dbg !1324, !tbaa !1325
  %22 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 9, !dbg !1326
  store ptr @prefetch_ref_null, ptr %22, align 8, !dbg !1327, !tbaa !1328
  %23 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 10, !dbg !1329
  store ptr @memcpy, ptr %23, align 8, !dbg !1330, !tbaa !1331
  %24 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 11, !dbg !1332
  store ptr @memzero_aligned, ptr %24, align 8, !dbg !1333, !tbaa !1334
  %25 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 12, !dbg !1335
  store ptr @frame_init_lowres_core, ptr %25, align 8, !dbg !1336, !tbaa !1337
  tail call void @x264_mc_init_mmx(i32 noundef %0, ptr noundef nonnull %1) #11, !dbg !1338
  ret void, !dbg !1339
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_luma(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 !dbg !1340 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1342, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %1, metadata !1343, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata ptr %2, metadata !1344, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %3, metadata !1345, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %4, metadata !1346, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %5, metadata !1347, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %6, metadata !1348, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %7, metadata !1349, metadata !DIExpression()), !dbg !1356
  %9 = ptrtoint ptr %0 to i64, !dbg !1357
  %10 = and i32 %5, 3, !dbg !1357
  %11 = shl nuw nsw i32 %10, 2, !dbg !1358
  %12 = and i32 %4, 3, !dbg !1359
  %13 = or i32 %11, %12, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %13, metadata !1350, metadata !DIExpression()), !dbg !1356
  %14 = ashr i32 %5, 2, !dbg !1361
  %15 = mul nsw i32 %14, %3, !dbg !1362
  %16 = ashr i32 %4, 2, !dbg !1363
  %17 = add nsw i32 %15, %16, !dbg !1364
  call void @llvm.dbg.value(metadata i32 %17, metadata !1351, metadata !DIExpression()), !dbg !1356
  %18 = zext i32 %13 to i64
  %19 = getelementptr inbounds [16 x i32], ptr @hpel_ref0, i64 0, i64 %18, !dbg !1365
  %20 = load i32, ptr %19, align 4, !dbg !1365, !tbaa !1156
  %21 = sext i32 %20 to i64, !dbg !1366
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21, !dbg !1366
  %23 = load ptr, ptr %22, align 8, !dbg !1366, !tbaa !1150
  %24 = ptrtoint ptr %23 to i64, !dbg !1367
  %25 = sext i32 %17 to i64, !dbg !1367
  %26 = getelementptr inbounds i8, ptr %23, i64 %25, !dbg !1367
  %27 = icmp eq i32 %10, 3, !dbg !1368
  %28 = select i1 %27, i32 %3, i32 0, !dbg !1369
  %29 = sext i32 %28 to i64, !dbg !1370
  %30 = getelementptr inbounds i8, ptr %26, i64 %29, !dbg !1370
  call void @llvm.dbg.value(metadata ptr %30, metadata !1352, metadata !DIExpression()), !dbg !1356
  %31 = and i32 %13, 5, !dbg !1371
  %32 = icmp eq i32 %31, 0, !dbg !1371
  br i1 %32, label %183, label %33, !dbg !1372

33:                                               ; preds = %8
  %34 = getelementptr inbounds [16 x i32], ptr @hpel_ref1, i64 0, i64 %18, !dbg !1373
  %35 = load i32, ptr %34, align 4, !dbg !1373, !tbaa !1156
  %36 = sext i32 %35 to i64, !dbg !1374
  %37 = getelementptr inbounds ptr, ptr %2, i64 %36, !dbg !1374
  %38 = load ptr, ptr %37, align 8, !dbg !1374, !tbaa !1150
  %39 = ptrtoint ptr %38 to i64, !dbg !1375
  %40 = getelementptr inbounds i8, ptr %38, i64 %25, !dbg !1375
  %41 = icmp eq i32 %12, 3, !dbg !1376
  %42 = zext i1 %41 to i64
  %43 = getelementptr inbounds i8, ptr %40, i64 %42, !dbg !1377
  call void @llvm.dbg.value(metadata ptr %43, metadata !1353, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata ptr %0, metadata !1379, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %1, metadata !1384, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %30, metadata !1385, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %3, metadata !1386, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %43, metadata !1387, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %3, metadata !1388, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %6, metadata !1389, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %7, metadata !1390, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 0, metadata !1392, metadata !DIExpression()), !dbg !1393
  %44 = icmp sgt i32 %7, 0, !dbg !1395
  br i1 %44, label %45, label %219, !dbg !1398

45:                                               ; preds = %33
  %46 = icmp sgt i32 %6, 0
  %47 = sext i32 %1 to i64
  %48 = sext i32 %3 to i64
  br i1 %46, label %49, label %219, !dbg !1399

49:                                               ; preds = %45
  %50 = zext i32 %6 to i64
  %51 = add i64 %24, %29, !dbg !1398
  %52 = add i64 %51, %25, !dbg !1398
  %53 = add i64 %39, %25, !dbg !1398
  %54 = add i64 %53, %42, !dbg !1398
  %55 = icmp ult i32 %6, 8
  %56 = icmp ult i32 %6, 32
  %57 = and i64 %50, 4294967264
  %58 = icmp eq i64 %57, %50
  %59 = and i64 %50, 24
  %60 = icmp eq i64 %59, 0
  %61 = and i64 %50, 4294967288
  %62 = icmp eq i64 %61, %50
  %63 = and i64 %50, 1
  %64 = icmp eq i64 %63, 0
  %65 = sub nsw i64 0, %50
  br label %66, !dbg !1398

66:                                               ; preds = %176, %49
  %67 = phi i64 [ %182, %176 ], [ 0, %49 ]
  %68 = phi i32 [ %180, %176 ], [ 0, %49 ]
  %69 = phi ptr [ %177, %176 ], [ %0, %49 ]
  %70 = phi ptr [ %178, %176 ], [ %30, %49 ]
  %71 = phi ptr [ %179, %176 ], [ %43, %49 ]
  call void @llvm.dbg.value(metadata i32 %68, metadata !1392, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %69, metadata !1379, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %70, metadata !1385, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %71, metadata !1387, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 0, metadata !1391, metadata !DIExpression()), !dbg !1393
  br i1 %55, label %130, label %72, !dbg !1399

72:                                               ; preds = %66
  %73 = mul i64 %67, %48, !dbg !1399
  %74 = add i64 %54, %73, !dbg !1399
  %75 = add i64 %52, %73, !dbg !1399
  %76 = mul i64 %67, %47, !dbg !1399
  %77 = add i64 %76, %9, !dbg !1399
  %78 = sub i64 %77, %75, !dbg !1399
  %79 = icmp ult i64 %78, 32, !dbg !1399
  %80 = sub i64 %77, %74, !dbg !1399
  %81 = icmp ult i64 %80, 32, !dbg !1399
  %82 = or i1 %79, %81, !dbg !1399
  br i1 %82, label %130, label %83, !dbg !1399

83:                                               ; preds = %72
  br i1 %56, label %112, label %84, !dbg !1399

84:                                               ; preds = %83, %84
  %85 = phi i64 [ %108, %84 ], [ 0, %83 ], !dbg !1402
  %86 = getelementptr inbounds i8, ptr %70, i64 %85, !dbg !1404
  %87 = load <16 x i8>, ptr %86, align 1, !dbg !1404, !tbaa !1170
  %88 = getelementptr inbounds i8, ptr %86, i64 16, !dbg !1404
  %89 = load <16 x i8>, ptr %88, align 1, !dbg !1404, !tbaa !1170
  %90 = zext <16 x i8> %87 to <16 x i16>, !dbg !1404
  %91 = zext <16 x i8> %89 to <16 x i16>, !dbg !1404
  %92 = getelementptr inbounds i8, ptr %71, i64 %85, !dbg !1406
  %93 = load <16 x i8>, ptr %92, align 1, !dbg !1406, !tbaa !1170
  %94 = getelementptr inbounds i8, ptr %92, i64 16, !dbg !1406
  %95 = load <16 x i8>, ptr %94, align 1, !dbg !1406, !tbaa !1170
  %96 = zext <16 x i8> %93 to <16 x i16>, !dbg !1406
  %97 = zext <16 x i8> %95 to <16 x i16>, !dbg !1406
  %98 = add nuw nsw <16 x i16> %90, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1407
  %99 = add nuw nsw <16 x i16> %91, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1407
  %100 = add nuw nsw <16 x i16> %98, %96, !dbg !1408
  %101 = add nuw nsw <16 x i16> %99, %97, !dbg !1408
  %102 = lshr <16 x i16> %100, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %103 = lshr <16 x i16> %101, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %104 = trunc <16 x i16> %102 to <16 x i8>, !dbg !1409
  %105 = trunc <16 x i16> %103 to <16 x i8>, !dbg !1409
  %106 = getelementptr inbounds i8, ptr %69, i64 %85, !dbg !1410
  store <16 x i8> %104, ptr %106, align 1, !dbg !1411, !tbaa !1170
  %107 = getelementptr inbounds i8, ptr %106, i64 16, !dbg !1411
  store <16 x i8> %105, ptr %107, align 1, !dbg !1411, !tbaa !1170
  %108 = add nuw i64 %85, 32, !dbg !1402
  %109 = icmp eq i64 %108, %57, !dbg !1402
  br i1 %109, label %110, label %84, !dbg !1402, !llvm.loop !1412

110:                                              ; preds = %84
  br i1 %58, label %176, label %111, !dbg !1399

111:                                              ; preds = %110
  br i1 %60, label %130, label %112, !dbg !1399

112:                                              ; preds = %83, %111
  %113 = phi i64 [ %57, %111 ], [ 0, %83 ]
  br label %114, !dbg !1399

114:                                              ; preds = %114, %112
  %115 = phi i64 [ %113, %112 ], [ %127, %114 ], !dbg !1402
  %116 = getelementptr inbounds i8, ptr %70, i64 %115, !dbg !1404
  %117 = load <8 x i8>, ptr %116, align 1, !dbg !1404, !tbaa !1170
  %118 = zext <8 x i8> %117 to <8 x i16>, !dbg !1404
  %119 = getelementptr inbounds i8, ptr %71, i64 %115, !dbg !1406
  %120 = load <8 x i8>, ptr %119, align 1, !dbg !1406, !tbaa !1170
  %121 = zext <8 x i8> %120 to <8 x i16>, !dbg !1406
  %122 = add nuw nsw <8 x i16> %118, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1407
  %123 = add nuw nsw <8 x i16> %122, %121, !dbg !1408
  %124 = lshr <8 x i16> %123, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %125 = trunc <8 x i16> %124 to <8 x i8>, !dbg !1409
  %126 = getelementptr inbounds i8, ptr %69, i64 %115, !dbg !1410
  store <8 x i8> %125, ptr %126, align 1, !dbg !1411, !tbaa !1170
  %127 = add nuw i64 %115, 8, !dbg !1402
  %128 = icmp eq i64 %127, %61, !dbg !1402
  br i1 %128, label %129, label %114, !dbg !1402, !llvm.loop !1416

129:                                              ; preds = %114
  br i1 %62, label %176, label %130, !dbg !1399

130:                                              ; preds = %72, %66, %111, %129
  %131 = phi i64 [ 0, %66 ], [ 0, %72 ], [ %57, %111 ], [ %61, %129 ]
  %132 = xor i64 %131, -1, !dbg !1399
  br i1 %64, label %146, label %133, !dbg !1399

133:                                              ; preds = %130
  call void @llvm.dbg.value(metadata i64 poison, metadata !1391, metadata !DIExpression()), !dbg !1393
  %134 = getelementptr inbounds i8, ptr %70, i64 %131, !dbg !1404
  %135 = load i8, ptr %134, align 1, !dbg !1404, !tbaa !1170
  %136 = zext i8 %135 to i16, !dbg !1404
  %137 = getelementptr inbounds i8, ptr %71, i64 %131, !dbg !1406
  %138 = load i8, ptr %137, align 1, !dbg !1406, !tbaa !1170
  %139 = zext i8 %138 to i16, !dbg !1406
  %140 = add nuw nsw i16 %136, 1, !dbg !1407
  %141 = add nuw nsw i16 %140, %139, !dbg !1408
  %142 = lshr i16 %141, 1
  %143 = trunc i16 %142 to i8, !dbg !1409
  %144 = getelementptr inbounds i8, ptr %69, i64 %131, !dbg !1410
  store i8 %143, ptr %144, align 1, !dbg !1411, !tbaa !1170
  %145 = or i64 %131, 1, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %145, metadata !1391, metadata !DIExpression()), !dbg !1393
  br label %146, !dbg !1399

146:                                              ; preds = %133, %130
  %147 = phi i64 [ %131, %130 ], [ %145, %133 ]
  %148 = icmp eq i64 %132, %65, !dbg !1399
  br i1 %148, label %176, label %149, !dbg !1399

149:                                              ; preds = %146, %149
  %150 = phi i64 [ %174, %149 ], [ %147, %146 ]
  call void @llvm.dbg.value(metadata i64 %150, metadata !1391, metadata !DIExpression()), !dbg !1393
  %151 = getelementptr inbounds i8, ptr %70, i64 %150, !dbg !1404
  %152 = load i8, ptr %151, align 1, !dbg !1404, !tbaa !1170
  %153 = zext i8 %152 to i16, !dbg !1404
  %154 = getelementptr inbounds i8, ptr %71, i64 %150, !dbg !1406
  %155 = load i8, ptr %154, align 1, !dbg !1406, !tbaa !1170
  %156 = zext i8 %155 to i16, !dbg !1406
  %157 = add nuw nsw i16 %153, 1, !dbg !1407
  %158 = add nuw nsw i16 %157, %156, !dbg !1408
  %159 = lshr i16 %158, 1
  %160 = trunc i16 %159 to i8, !dbg !1409
  %161 = getelementptr inbounds i8, ptr %69, i64 %150, !dbg !1410
  store i8 %160, ptr %161, align 1, !dbg !1411, !tbaa !1170
  %162 = add nuw nsw i64 %150, 1, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %162, metadata !1391, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i64 %162, metadata !1391, metadata !DIExpression()), !dbg !1393
  %163 = getelementptr inbounds i8, ptr %70, i64 %162, !dbg !1404
  %164 = load i8, ptr %163, align 1, !dbg !1404, !tbaa !1170
  %165 = zext i8 %164 to i16, !dbg !1404
  %166 = getelementptr inbounds i8, ptr %71, i64 %162, !dbg !1406
  %167 = load i8, ptr %166, align 1, !dbg !1406, !tbaa !1170
  %168 = zext i8 %167 to i16, !dbg !1406
  %169 = add nuw nsw i16 %165, 1, !dbg !1407
  %170 = add nuw nsw i16 %169, %168, !dbg !1408
  %171 = lshr i16 %170, 1
  %172 = trunc i16 %171 to i8, !dbg !1409
  %173 = getelementptr inbounds i8, ptr %69, i64 %162, !dbg !1410
  store i8 %172, ptr %173, align 1, !dbg !1411, !tbaa !1170
  %174 = add nuw nsw i64 %150, 2, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %174, metadata !1391, metadata !DIExpression()), !dbg !1393
  %175 = icmp eq i64 %174, %50, !dbg !1417
  br i1 %175, label %176, label %149, !dbg !1399, !llvm.loop !1418

176:                                              ; preds = %146, %149, %129, %110
  %177 = getelementptr inbounds i8, ptr %69, i64 %47, !dbg !1419
  call void @llvm.dbg.value(metadata ptr %177, metadata !1379, metadata !DIExpression()), !dbg !1393
  %178 = getelementptr inbounds i8, ptr %70, i64 %48, !dbg !1420
  call void @llvm.dbg.value(metadata ptr %178, metadata !1385, metadata !DIExpression()), !dbg !1393
  %179 = getelementptr inbounds i8, ptr %71, i64 %48, !dbg !1421
  call void @llvm.dbg.value(metadata ptr %179, metadata !1387, metadata !DIExpression()), !dbg !1393
  %180 = add nuw nsw i32 %68, 1, !dbg !1422
  call void @llvm.dbg.value(metadata i32 %180, metadata !1392, metadata !DIExpression()), !dbg !1393
  %181 = icmp eq i32 %180, %7, !dbg !1395
  %182 = add i64 %67, 1, !dbg !1398
  br i1 %181, label %219, label %66, !dbg !1398, !llvm.loop !1423

183:                                              ; preds = %8
  call void @llvm.dbg.value(metadata ptr %30, metadata !1425, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 %3, metadata !1428, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata ptr %0, metadata !1429, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 %1, metadata !1430, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 %6, metadata !1431, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 %7, metadata !1432, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 0, metadata !1433, metadata !DIExpression()), !dbg !1434
  %184 = icmp sgt i32 %7, 0, !dbg !1437
  br i1 %184, label %185, label %219, !dbg !1440

185:                                              ; preds = %183
  %186 = sext i32 %6 to i64
  %187 = sext i32 %3 to i64
  %188 = sext i32 %1 to i64
  %189 = and i32 %7, 3, !dbg !1440
  %190 = icmp ult i32 %7, 4, !dbg !1440
  br i1 %190, label %207, label %191, !dbg !1440

191:                                              ; preds = %185
  %192 = and i32 %7, -4, !dbg !1440
  br label %193, !dbg !1440

193:                                              ; preds = %193, %191
  %194 = phi ptr [ %30, %191 ], [ %203, %193 ]
  %195 = phi ptr [ %0, %191 ], [ %204, %193 ]
  %196 = phi i32 [ 0, %191 ], [ %205, %193 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata ptr %194, metadata !1425, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata ptr %195, metadata !1429, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %195, ptr align 1 %194, i64 %186, i1 false), !dbg !1441
  %197 = getelementptr inbounds i8, ptr %194, i64 %187, !dbg !1443
  call void @llvm.dbg.value(metadata ptr %197, metadata !1425, metadata !DIExpression()), !dbg !1434
  %198 = getelementptr inbounds i8, ptr %195, i64 %188, !dbg !1444
  call void @llvm.dbg.value(metadata ptr %198, metadata !1429, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1434
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1434
  call void @llvm.dbg.value(metadata ptr %197, metadata !1425, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata ptr %198, metadata !1429, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %198, ptr align 1 %197, i64 %186, i1 false), !dbg !1441
  %199 = getelementptr inbounds i8, ptr %197, i64 %187, !dbg !1443
  call void @llvm.dbg.value(metadata ptr %199, metadata !1425, metadata !DIExpression()), !dbg !1434
  %200 = getelementptr inbounds i8, ptr %198, i64 %188, !dbg !1444
  call void @llvm.dbg.value(metadata ptr %200, metadata !1429, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1434
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1434
  call void @llvm.dbg.value(metadata ptr %199, metadata !1425, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata ptr %200, metadata !1429, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %200, ptr align 1 %199, i64 %186, i1 false), !dbg !1441
  %201 = getelementptr inbounds i8, ptr %199, i64 %187, !dbg !1443
  call void @llvm.dbg.value(metadata ptr %201, metadata !1425, metadata !DIExpression()), !dbg !1434
  %202 = getelementptr inbounds i8, ptr %200, i64 %188, !dbg !1444
  call void @llvm.dbg.value(metadata ptr %202, metadata !1429, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1434
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1434
  call void @llvm.dbg.value(metadata ptr %201, metadata !1425, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata ptr %202, metadata !1429, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %202, ptr align 1 %201, i64 %186, i1 false), !dbg !1441
  %203 = getelementptr inbounds i8, ptr %201, i64 %187, !dbg !1443
  call void @llvm.dbg.value(metadata ptr %203, metadata !1425, metadata !DIExpression()), !dbg !1434
  %204 = getelementptr inbounds i8, ptr %202, i64 %188, !dbg !1444
  call void @llvm.dbg.value(metadata ptr %204, metadata !1429, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1434
  %205 = add i32 %196, 4, !dbg !1440
  %206 = icmp eq i32 %205, %192, !dbg !1440
  br i1 %206, label %207, label %193, !dbg !1440, !llvm.loop !1445

207:                                              ; preds = %193, %185
  %208 = phi ptr [ %30, %185 ], [ %203, %193 ]
  %209 = phi ptr [ %0, %185 ], [ %204, %193 ]
  %210 = icmp eq i32 %189, 0, !dbg !1440
  br i1 %210, label %219, label %211, !dbg !1440

211:                                              ; preds = %207, %211
  %212 = phi ptr [ %215, %211 ], [ %208, %207 ]
  %213 = phi ptr [ %216, %211 ], [ %209, %207 ]
  %214 = phi i32 [ %217, %211 ], [ 0, %207 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata ptr %212, metadata !1425, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata ptr %213, metadata !1429, metadata !DIExpression()), !dbg !1434
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %213, ptr align 1 %212, i64 %186, i1 false), !dbg !1441
  %215 = getelementptr inbounds i8, ptr %212, i64 %187, !dbg !1443
  call void @llvm.dbg.value(metadata ptr %215, metadata !1425, metadata !DIExpression()), !dbg !1434
  %216 = getelementptr inbounds i8, ptr %213, i64 %188, !dbg !1444
  call void @llvm.dbg.value(metadata ptr %216, metadata !1429, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1434
  %217 = add i32 %214, 1, !dbg !1440
  %218 = icmp eq i32 %217, %189, !dbg !1440
  br i1 %218, label %219, label %211, !dbg !1440, !llvm.loop !1447

219:                                              ; preds = %176, %207, %211, %183, %45, %33
  ret void, !dbg !1448
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal ptr @get_ref(ptr noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #4 !dbg !1449 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1451, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata ptr %1, metadata !1452, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata ptr %2, metadata !1453, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i32 %3, metadata !1454, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i32 %4, metadata !1455, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i32 %5, metadata !1456, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i32 %6, metadata !1457, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i32 %7, metadata !1458, metadata !DIExpression()), !dbg !1465
  %9 = ptrtoint ptr %0 to i64, !dbg !1466
  %10 = and i32 %5, 3, !dbg !1466
  %11 = shl nuw nsw i32 %10, 2, !dbg !1467
  %12 = and i32 %4, 3, !dbg !1468
  %13 = or i32 %11, %12, !dbg !1469
  call void @llvm.dbg.value(metadata i32 %13, metadata !1459, metadata !DIExpression()), !dbg !1465
  %14 = ashr i32 %5, 2, !dbg !1470
  %15 = mul nsw i32 %14, %3, !dbg !1471
  %16 = ashr i32 %4, 2, !dbg !1472
  %17 = add nsw i32 %15, %16, !dbg !1473
  call void @llvm.dbg.value(metadata i32 %17, metadata !1460, metadata !DIExpression()), !dbg !1465
  %18 = zext i32 %13 to i64
  %19 = getelementptr inbounds [16 x i32], ptr @hpel_ref0, i64 0, i64 %18, !dbg !1474
  %20 = load i32, ptr %19, align 4, !dbg !1474, !tbaa !1156
  %21 = sext i32 %20 to i64, !dbg !1475
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21, !dbg !1475
  %23 = load ptr, ptr %22, align 8, !dbg !1475, !tbaa !1150
  %24 = ptrtoint ptr %23 to i64, !dbg !1476
  %25 = sext i32 %17 to i64, !dbg !1476
  %26 = getelementptr inbounds i8, ptr %23, i64 %25, !dbg !1476
  %27 = icmp eq i32 %10, 3, !dbg !1477
  %28 = select i1 %27, i32 %3, i32 0, !dbg !1478
  %29 = sext i32 %28 to i64, !dbg !1479
  %30 = getelementptr inbounds i8, ptr %26, i64 %29, !dbg !1479
  call void @llvm.dbg.value(metadata ptr %30, metadata !1461, metadata !DIExpression()), !dbg !1465
  %31 = and i32 %13, 5, !dbg !1480
  %32 = icmp eq i32 %31, 0, !dbg !1480
  br i1 %32, label %184, label %33, !dbg !1481

33:                                               ; preds = %8
  %34 = getelementptr inbounds [16 x i32], ptr @hpel_ref1, i64 0, i64 %18, !dbg !1482
  %35 = load i32, ptr %34, align 4, !dbg !1482, !tbaa !1156
  %36 = sext i32 %35 to i64, !dbg !1483
  %37 = getelementptr inbounds ptr, ptr %2, i64 %36, !dbg !1483
  %38 = load ptr, ptr %37, align 8, !dbg !1483, !tbaa !1150
  %39 = ptrtoint ptr %38 to i64, !dbg !1484
  %40 = getelementptr inbounds i8, ptr %38, i64 %25, !dbg !1484
  %41 = icmp eq i32 %12, 3, !dbg !1485
  %42 = zext i1 %41 to i64
  %43 = getelementptr inbounds i8, ptr %40, i64 %42, !dbg !1486
  call void @llvm.dbg.value(metadata ptr %43, metadata !1462, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata ptr %0, metadata !1379, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i32 poison, metadata !1384, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata ptr %30, metadata !1385, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i32 %3, metadata !1386, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata ptr %43, metadata !1387, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i32 %3, metadata !1388, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i32 %6, metadata !1389, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i32 %7, metadata !1390, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i32 0, metadata !1392, metadata !DIExpression()), !dbg !1488
  %44 = icmp sgt i32 %7, 0, !dbg !1490
  br i1 %44, label %45, label %185, !dbg !1491

45:                                               ; preds = %33
  %46 = load i32, ptr %1, align 4, !dbg !1492, !tbaa !1156
  call void @llvm.dbg.value(metadata i32 %46, metadata !1384, metadata !DIExpression()), !dbg !1488
  %47 = icmp sgt i32 %6, 0
  %48 = sext i32 %46 to i64
  %49 = sext i32 %3 to i64
  br i1 %47, label %50, label %185, !dbg !1493

50:                                               ; preds = %45
  %51 = zext i32 %6 to i64
  %52 = add i64 %24, %29, !dbg !1491
  %53 = add i64 %52, %25, !dbg !1491
  %54 = add i64 %39, %25, !dbg !1491
  %55 = add i64 %54, %42, !dbg !1491
  %56 = icmp ult i32 %6, 8
  %57 = icmp ult i32 %6, 32
  %58 = and i64 %51, 4294967264
  %59 = icmp eq i64 %58, %51
  %60 = and i64 %51, 24
  %61 = icmp eq i64 %60, 0
  %62 = and i64 %51, 4294967288
  %63 = icmp eq i64 %62, %51
  %64 = and i64 %51, 1
  %65 = icmp eq i64 %64, 0
  %66 = sub nsw i64 0, %51
  br label %67, !dbg !1491

67:                                               ; preds = %177, %50
  %68 = phi i64 [ %183, %177 ], [ 0, %50 ]
  %69 = phi i32 [ %181, %177 ], [ 0, %50 ]
  %70 = phi ptr [ %178, %177 ], [ %0, %50 ]
  %71 = phi ptr [ %179, %177 ], [ %30, %50 ]
  %72 = phi ptr [ %180, %177 ], [ %43, %50 ]
  call void @llvm.dbg.value(metadata i32 %69, metadata !1392, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata ptr %70, metadata !1379, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata ptr %71, metadata !1385, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata ptr %72, metadata !1387, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i32 0, metadata !1391, metadata !DIExpression()), !dbg !1488
  br i1 %56, label %131, label %73, !dbg !1493

73:                                               ; preds = %67
  %74 = mul i64 %68, %49, !dbg !1493
  %75 = add i64 %55, %74, !dbg !1493
  %76 = add i64 %53, %74, !dbg !1493
  %77 = mul i64 %68, %48, !dbg !1493
  %78 = add i64 %77, %9, !dbg !1493
  %79 = sub i64 %78, %76, !dbg !1493
  %80 = icmp ult i64 %79, 32, !dbg !1493
  %81 = sub i64 %78, %75, !dbg !1493
  %82 = icmp ult i64 %81, 32, !dbg !1493
  %83 = or i1 %80, %82, !dbg !1493
  br i1 %83, label %131, label %84, !dbg !1493

84:                                               ; preds = %73
  br i1 %57, label %113, label %85, !dbg !1493

85:                                               ; preds = %84, %85
  %86 = phi i64 [ %109, %85 ], [ 0, %84 ], !dbg !1494
  %87 = getelementptr inbounds i8, ptr %71, i64 %86, !dbg !1495
  %88 = load <16 x i8>, ptr %87, align 1, !dbg !1495, !tbaa !1170
  %89 = getelementptr inbounds i8, ptr %87, i64 16, !dbg !1495
  %90 = load <16 x i8>, ptr %89, align 1, !dbg !1495, !tbaa !1170
  %91 = zext <16 x i8> %88 to <16 x i16>, !dbg !1495
  %92 = zext <16 x i8> %90 to <16 x i16>, !dbg !1495
  %93 = getelementptr inbounds i8, ptr %72, i64 %86, !dbg !1496
  %94 = load <16 x i8>, ptr %93, align 1, !dbg !1496, !tbaa !1170
  %95 = getelementptr inbounds i8, ptr %93, i64 16, !dbg !1496
  %96 = load <16 x i8>, ptr %95, align 1, !dbg !1496, !tbaa !1170
  %97 = zext <16 x i8> %94 to <16 x i16>, !dbg !1496
  %98 = zext <16 x i8> %96 to <16 x i16>, !dbg !1496
  %99 = add nuw nsw <16 x i16> %91, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1497
  %100 = add nuw nsw <16 x i16> %92, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1497
  %101 = add nuw nsw <16 x i16> %99, %97, !dbg !1498
  %102 = add nuw nsw <16 x i16> %100, %98, !dbg !1498
  %103 = lshr <16 x i16> %101, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %104 = lshr <16 x i16> %102, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %105 = trunc <16 x i16> %103 to <16 x i8>, !dbg !1499
  %106 = trunc <16 x i16> %104 to <16 x i8>, !dbg !1499
  %107 = getelementptr inbounds i8, ptr %70, i64 %86, !dbg !1500
  store <16 x i8> %105, ptr %107, align 1, !dbg !1501, !tbaa !1170
  %108 = getelementptr inbounds i8, ptr %107, i64 16, !dbg !1501
  store <16 x i8> %106, ptr %108, align 1, !dbg !1501, !tbaa !1170
  %109 = add nuw i64 %86, 32, !dbg !1494
  %110 = icmp eq i64 %109, %58, !dbg !1494
  br i1 %110, label %111, label %85, !dbg !1494, !llvm.loop !1502

111:                                              ; preds = %85
  br i1 %59, label %177, label %112, !dbg !1493

112:                                              ; preds = %111
  br i1 %61, label %131, label %113, !dbg !1493

113:                                              ; preds = %84, %112
  %114 = phi i64 [ %58, %112 ], [ 0, %84 ]
  br label %115, !dbg !1493

115:                                              ; preds = %115, %113
  %116 = phi i64 [ %114, %113 ], [ %128, %115 ], !dbg !1494
  %117 = getelementptr inbounds i8, ptr %71, i64 %116, !dbg !1495
  %118 = load <8 x i8>, ptr %117, align 1, !dbg !1495, !tbaa !1170
  %119 = zext <8 x i8> %118 to <8 x i16>, !dbg !1495
  %120 = getelementptr inbounds i8, ptr %72, i64 %116, !dbg !1496
  %121 = load <8 x i8>, ptr %120, align 1, !dbg !1496, !tbaa !1170
  %122 = zext <8 x i8> %121 to <8 x i16>, !dbg !1496
  %123 = add nuw nsw <8 x i16> %119, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1497
  %124 = add nuw nsw <8 x i16> %123, %122, !dbg !1498
  %125 = lshr <8 x i16> %124, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %126 = trunc <8 x i16> %125 to <8 x i8>, !dbg !1499
  %127 = getelementptr inbounds i8, ptr %70, i64 %116, !dbg !1500
  store <8 x i8> %126, ptr %127, align 1, !dbg !1501, !tbaa !1170
  %128 = add nuw i64 %116, 8, !dbg !1494
  %129 = icmp eq i64 %128, %62, !dbg !1494
  br i1 %129, label %130, label %115, !dbg !1494, !llvm.loop !1504

130:                                              ; preds = %115
  br i1 %63, label %177, label %131, !dbg !1493

131:                                              ; preds = %73, %67, %112, %130
  %132 = phi i64 [ 0, %67 ], [ 0, %73 ], [ %58, %112 ], [ %62, %130 ]
  %133 = xor i64 %132, -1, !dbg !1493
  br i1 %65, label %147, label %134, !dbg !1493

134:                                              ; preds = %131
  call void @llvm.dbg.value(metadata i64 poison, metadata !1391, metadata !DIExpression()), !dbg !1488
  %135 = getelementptr inbounds i8, ptr %71, i64 %132, !dbg !1495
  %136 = load i8, ptr %135, align 1, !dbg !1495, !tbaa !1170
  %137 = zext i8 %136 to i16, !dbg !1495
  %138 = getelementptr inbounds i8, ptr %72, i64 %132, !dbg !1496
  %139 = load i8, ptr %138, align 1, !dbg !1496, !tbaa !1170
  %140 = zext i8 %139 to i16, !dbg !1496
  %141 = add nuw nsw i16 %137, 1, !dbg !1497
  %142 = add nuw nsw i16 %141, %140, !dbg !1498
  %143 = lshr i16 %142, 1
  %144 = trunc i16 %143 to i8, !dbg !1499
  %145 = getelementptr inbounds i8, ptr %70, i64 %132, !dbg !1500
  store i8 %144, ptr %145, align 1, !dbg !1501, !tbaa !1170
  %146 = or i64 %132, 1, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %146, metadata !1391, metadata !DIExpression()), !dbg !1488
  br label %147, !dbg !1493

147:                                              ; preds = %134, %131
  %148 = phi i64 [ %132, %131 ], [ %146, %134 ]
  %149 = icmp eq i64 %133, %66, !dbg !1493
  br i1 %149, label %177, label %150, !dbg !1493

150:                                              ; preds = %147, %150
  %151 = phi i64 [ %175, %150 ], [ %148, %147 ]
  call void @llvm.dbg.value(metadata i64 %151, metadata !1391, metadata !DIExpression()), !dbg !1488
  %152 = getelementptr inbounds i8, ptr %71, i64 %151, !dbg !1495
  %153 = load i8, ptr %152, align 1, !dbg !1495, !tbaa !1170
  %154 = zext i8 %153 to i16, !dbg !1495
  %155 = getelementptr inbounds i8, ptr %72, i64 %151, !dbg !1496
  %156 = load i8, ptr %155, align 1, !dbg !1496, !tbaa !1170
  %157 = zext i8 %156 to i16, !dbg !1496
  %158 = add nuw nsw i16 %154, 1, !dbg !1497
  %159 = add nuw nsw i16 %158, %157, !dbg !1498
  %160 = lshr i16 %159, 1
  %161 = trunc i16 %160 to i8, !dbg !1499
  %162 = getelementptr inbounds i8, ptr %70, i64 %151, !dbg !1500
  store i8 %161, ptr %162, align 1, !dbg !1501, !tbaa !1170
  %163 = add nuw nsw i64 %151, 1, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %163, metadata !1391, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i64 %163, metadata !1391, metadata !DIExpression()), !dbg !1488
  %164 = getelementptr inbounds i8, ptr %71, i64 %163, !dbg !1495
  %165 = load i8, ptr %164, align 1, !dbg !1495, !tbaa !1170
  %166 = zext i8 %165 to i16, !dbg !1495
  %167 = getelementptr inbounds i8, ptr %72, i64 %163, !dbg !1496
  %168 = load i8, ptr %167, align 1, !dbg !1496, !tbaa !1170
  %169 = zext i8 %168 to i16, !dbg !1496
  %170 = add nuw nsw i16 %166, 1, !dbg !1497
  %171 = add nuw nsw i16 %170, %169, !dbg !1498
  %172 = lshr i16 %171, 1
  %173 = trunc i16 %172 to i8, !dbg !1499
  %174 = getelementptr inbounds i8, ptr %70, i64 %163, !dbg !1500
  store i8 %173, ptr %174, align 1, !dbg !1501, !tbaa !1170
  %175 = add nuw nsw i64 %151, 2, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %175, metadata !1391, metadata !DIExpression()), !dbg !1488
  %176 = icmp eq i64 %175, %51, !dbg !1505
  br i1 %176, label %177, label %150, !dbg !1493, !llvm.loop !1506

177:                                              ; preds = %147, %150, %130, %111
  %178 = getelementptr inbounds i8, ptr %70, i64 %48, !dbg !1507
  call void @llvm.dbg.value(metadata ptr %178, metadata !1379, metadata !DIExpression()), !dbg !1488
  %179 = getelementptr inbounds i8, ptr %71, i64 %49, !dbg !1508
  call void @llvm.dbg.value(metadata ptr %179, metadata !1385, metadata !DIExpression()), !dbg !1488
  %180 = getelementptr inbounds i8, ptr %72, i64 %49, !dbg !1509
  call void @llvm.dbg.value(metadata ptr %180, metadata !1387, metadata !DIExpression()), !dbg !1488
  %181 = add nuw nsw i32 %69, 1, !dbg !1510
  call void @llvm.dbg.value(metadata i32 %181, metadata !1392, metadata !DIExpression()), !dbg !1488
  %182 = icmp eq i32 %181, %7, !dbg !1490
  %183 = add i64 %68, 1, !dbg !1491
  br i1 %182, label %185, label %67, !dbg !1491, !llvm.loop !1511

184:                                              ; preds = %8
  store i32 %3, ptr %1, align 4, !dbg !1513, !tbaa !1156
  br label %185, !dbg !1515

185:                                              ; preds = %177, %45, %33, %184
  %186 = phi ptr [ %30, %184 ], [ %0, %33 ], [ %0, %45 ], [ %0, %177 ], !dbg !1516
  ret ptr %186, !dbg !1517
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_chroma(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #4 !dbg !1518 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1520, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %1, metadata !1521, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata ptr %2, metadata !1522, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %3, metadata !1523, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %4, metadata !1524, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %5, metadata !1525, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %6, metadata !1526, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %7, metadata !1527, metadata !DIExpression()), !dbg !1537
  %9 = and i32 %4, 7, !dbg !1538
  call void @llvm.dbg.value(metadata i32 %9, metadata !1531, metadata !DIExpression()), !dbg !1537
  %10 = and i32 %5, 7, !dbg !1539
  call void @llvm.dbg.value(metadata i32 %10, metadata !1532, metadata !DIExpression()), !dbg !1537
  %11 = sub nuw nsw i32 8, %9, !dbg !1540
  %12 = sub nuw nsw i32 8, %10, !dbg !1541
  call void @llvm.dbg.value(metadata !DIArgList(i32 %12, i32 %11), metadata !1533, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(i32 %12, i32 %9), metadata !1534, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(i32 %11, i32 %10), metadata !1535, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(i32 %10, i32 %9), metadata !1536, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i32 %5, i32 %4, i32 %3), metadata !1522, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  %13 = sext i32 %3 to i64, !dbg !1542
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %13, i32 %5, i32 %4, i32 %3), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata i32 0, metadata !1530, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata ptr %0, metadata !1520, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i32 %5, i32 %4, i32 %3), metadata !1522, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %13, i32 %5, i32 %4, i32 %3), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  %14 = icmp sgt i32 %7, 0, !dbg !1543
  br i1 %14, label %15, label %181, !dbg !1546

15:                                               ; preds = %8
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i32 %5, i32 %4, i32 %3), metadata !1522, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %13, i32 %5, i32 %4, i32 %3), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i32 %5, i32 %4, i32 %3), metadata !1522, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %13, i32 %5, i32 %4, i32 %3), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i32 %5, i32 %4, i32 %3), metadata !1522, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %13, i32 %5, i32 %4, i32 %3), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i32 %5, i32 %4, i32 %3), metadata !1522, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %13, i32 %5, i32 %4, i32 %3), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i32 %5, i32 %4, i32 %3), metadata !1522, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %13, i32 %5, i32 %4, i32 %3), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i32 %5, i32 %4, i32 %3), metadata !1522, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %13, i32 %5, i32 %4, i32 %3), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %13, i32 %5, i32 %4, i32 %3), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  %16 = icmp sgt i32 %6, 0
  %17 = sext i32 %1 to i64
  br i1 %16, label %18, label %181, !dbg !1547

18:                                               ; preds = %15
  %19 = ashr i32 %5, 3, !dbg !1550
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i32 %19, i32 %4, i32 %3), metadata !1522, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %13, i32 %19, i32 %4, i32 %3), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  %20 = mul nsw i32 %19, %3, !dbg !1551
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i32 %20, i32 %4), metadata !1522, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %13, i32 %20, i32 %4), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  %21 = ashr i32 %4, 3, !dbg !1552
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i32 %5, i32 %21, i32 %3), metadata !1522, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %13, i32 %5, i32 %21, i32 %3), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  %22 = add nsw i32 %20, %21, !dbg !1553
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i32 %22), metadata !1522, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %13, i32 %22), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  %23 = sext i32 %22 to i64, !dbg !1554
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %23), metadata !1522, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %13, i64 %23), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  %24 = getelementptr inbounds i8, ptr %2, i64 %23, !dbg !1554
  call void @llvm.dbg.value(metadata ptr %24, metadata !1522, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %24, i64 %13), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  %25 = zext i32 %6 to i64
  %26 = add nsw i64 %13, %23, !dbg !1546
  %27 = add nsw i64 %26, %25, !dbg !1546
  %28 = add nsw i64 %27, 1, !dbg !1546
  %29 = add nsw i64 %23, %25, !dbg !1546
  %30 = add nsw i64 %29, 1, !dbg !1546
  %31 = icmp ult i32 %6, 8
  %32 = icmp ult i32 %6, 16
  %33 = and i64 %25, 4294967280
  %34 = insertelement <16 x i32> poison, i32 %11, i64 0
  %35 = shufflevector <16 x i32> %34, <16 x i32> poison, <16 x i32> zeroinitializer
  %36 = insertelement <16 x i32> poison, i32 %9, i64 0
  %37 = shufflevector <16 x i32> %36, <16 x i32> poison, <16 x i32> zeroinitializer
  %38 = insertelement <16 x i32> poison, i32 %10, i64 0
  %39 = shufflevector <16 x i32> %38, <16 x i32> poison, <16 x i32> zeroinitializer
  %40 = insertelement <16 x i32> poison, i32 %12, i64 0
  %41 = shufflevector <16 x i32> %40, <16 x i32> poison, <16 x i32> zeroinitializer
  %42 = icmp eq i64 %33, %25
  %43 = and i64 %25, 8
  %44 = icmp eq i64 %43, 0
  %45 = and i64 %25, 4294967288
  %46 = insertelement <8 x i32> poison, i32 %11, i64 0
  %47 = shufflevector <8 x i32> %46, <8 x i32> poison, <8 x i32> zeroinitializer
  %48 = insertelement <8 x i32> poison, i32 %9, i64 0
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer
  %50 = insertelement <8 x i32> poison, i32 %10, i64 0
  %51 = shufflevector <8 x i32> %50, <8 x i32> poison, <8 x i32> zeroinitializer
  %52 = insertelement <8 x i32> poison, i32 %12, i64 0
  %53 = shufflevector <8 x i32> %52, <8 x i32> poison, <8 x i32> zeroinitializer
  %54 = icmp eq i64 %45, %25
  br label %55, !dbg !1546

55:                                               ; preds = %18, %176
  %56 = phi i64 [ 0, %18 ], [ %180, %176 ]
  %57 = phi ptr [ %0, %18 ], [ %177, %176 ]
  %58 = phi ptr [ %24, %18 ], [ %60, %176 ]
  %59 = phi i32 [ 0, %18 ], [ %178, %176 ]
  %60 = getelementptr inbounds i8, ptr %58, i64 %13, !dbg !1537
  call void @llvm.dbg.value(metadata ptr %57, metadata !1520, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata ptr %58, metadata !1522, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %59, metadata !1530, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 0, metadata !1529, metadata !DIExpression()), !dbg !1537
  br i1 %31, label %145, label %61, !dbg !1547

61:                                               ; preds = %55
  %62 = mul i64 %56, %13, !dbg !1537
  %63 = add i64 %30, %62, !dbg !1537
  %64 = getelementptr i8, ptr %2, i64 %63, !dbg !1537
  %65 = add i64 %28, %62, !dbg !1537
  %66 = getelementptr i8, ptr %2, i64 %65, !dbg !1537
  %67 = add i64 %26, %62, !dbg !1537
  %68 = getelementptr i8, ptr %2, i64 %67, !dbg !1537
  %69 = mul i64 %56, %17, !dbg !1537
  %70 = add i64 %69, %25, !dbg !1537
  %71 = getelementptr i8, ptr %0, i64 %70, !dbg !1537
  %72 = icmp ult ptr %57, %66, !dbg !1547
  %73 = icmp ult ptr %68, %71, !dbg !1547
  %74 = and i1 %72, %73, !dbg !1547
  %75 = icmp ult ptr %57, %64, !dbg !1547
  %76 = icmp ult ptr %58, %71, !dbg !1547
  %77 = and i1 %75, %76, !dbg !1547
  %78 = or i1 %74, %77, !dbg !1547
  br i1 %78, label %145, label %79, !dbg !1547

79:                                               ; preds = %61
  br i1 %32, label %112, label %80, !dbg !1547

80:                                               ; preds = %79, %80
  %81 = phi i64 [ %108, %80 ], [ 0, %79 ], !dbg !1555
  %82 = getelementptr inbounds i8, ptr %58, i64 %81, !dbg !1558
  %83 = load <16 x i8>, ptr %82, align 1, !dbg !1558, !tbaa !1170, !alias.scope !1559
  %84 = zext <16 x i8> %83 to <16 x i32>, !dbg !1558
  %85 = mul nuw nsw <16 x i32> %35, %84, !dbg !1562
  %86 = or i64 %81, 1, !dbg !1555
  %87 = getelementptr inbounds i8, ptr %58, i64 %86, !dbg !1563
  %88 = load <16 x i8>, ptr %87, align 1, !dbg !1563, !tbaa !1170, !alias.scope !1559
  %89 = zext <16 x i8> %88 to <16 x i32>, !dbg !1563
  %90 = mul nuw nsw <16 x i32> %37, %89, !dbg !1564
  %91 = getelementptr inbounds i8, ptr %60, i64 %81, !dbg !1565
  %92 = load <16 x i8>, ptr %91, align 1, !dbg !1565, !tbaa !1170, !alias.scope !1566
  %93 = zext <16 x i8> %92 to <16 x i32>, !dbg !1565
  %94 = mul nuw nsw <16 x i32> %35, %93, !dbg !1568
  %95 = getelementptr inbounds i8, ptr %60, i64 %86, !dbg !1569
  %96 = load <16 x i8>, ptr %95, align 1, !dbg !1569, !tbaa !1170, !alias.scope !1566
  %97 = zext <16 x i8> %96 to <16 x i32>, !dbg !1569
  %98 = mul nuw nsw <16 x i32> %37, %97, !dbg !1570
  %99 = add nuw nsw <16 x i32> %98, %94
  %100 = mul nuw nsw <16 x i32> %99, %39
  %101 = add nuw nsw <16 x i32> %90, %85
  %102 = mul nuw nsw <16 x i32> %101, %41
  %103 = add nuw nsw <16 x i32> %102, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>, !dbg !1571
  %104 = add nuw nsw <16 x i32> %103, %100, !dbg !1572
  %105 = lshr <16 x i32> %104, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %106 = trunc <16 x i32> %105 to <16 x i8>, !dbg !1573
  %107 = getelementptr inbounds i8, ptr %57, i64 %81, !dbg !1574
  store <16 x i8> %106, ptr %107, align 1, !dbg !1575, !tbaa !1170, !alias.scope !1576, !noalias !1578
  %108 = add nuw i64 %81, 16, !dbg !1555
  %109 = icmp eq i64 %108, %33, !dbg !1555
  br i1 %109, label %110, label %80, !dbg !1555, !llvm.loop !1579

110:                                              ; preds = %80
  br i1 %42, label %176, label %111, !dbg !1547

111:                                              ; preds = %110
  br i1 %44, label %145, label %112, !dbg !1547

112:                                              ; preds = %79, %111
  %113 = phi i64 [ %33, %111 ], [ 0, %79 ]
  br label %114, !dbg !1547

114:                                              ; preds = %114, %112
  %115 = phi i64 [ %113, %112 ], [ %142, %114 ], !dbg !1555
  %116 = getelementptr inbounds i8, ptr %58, i64 %115, !dbg !1558
  %117 = load <8 x i8>, ptr %116, align 1, !dbg !1558, !tbaa !1170, !alias.scope !1581
  %118 = zext <8 x i8> %117 to <8 x i32>, !dbg !1558
  %119 = mul nuw nsw <8 x i32> %47, %118, !dbg !1562
  %120 = or i64 %115, 1, !dbg !1555
  %121 = getelementptr inbounds i8, ptr %58, i64 %120, !dbg !1563
  %122 = load <8 x i8>, ptr %121, align 1, !dbg !1563, !tbaa !1170, !alias.scope !1581
  %123 = zext <8 x i8> %122 to <8 x i32>, !dbg !1563
  %124 = mul nuw nsw <8 x i32> %49, %123, !dbg !1564
  %125 = getelementptr inbounds i8, ptr %60, i64 %115, !dbg !1565
  %126 = load <8 x i8>, ptr %125, align 1, !dbg !1565, !tbaa !1170, !alias.scope !1584
  %127 = zext <8 x i8> %126 to <8 x i32>, !dbg !1565
  %128 = mul nuw nsw <8 x i32> %47, %127, !dbg !1568
  %129 = getelementptr inbounds i8, ptr %60, i64 %120, !dbg !1569
  %130 = load <8 x i8>, ptr %129, align 1, !dbg !1569, !tbaa !1170, !alias.scope !1584
  %131 = zext <8 x i8> %130 to <8 x i32>, !dbg !1569
  %132 = mul nuw nsw <8 x i32> %49, %131, !dbg !1570
  %133 = add nuw nsw <8 x i32> %132, %128
  %134 = mul nuw nsw <8 x i32> %133, %51
  %135 = add nuw nsw <8 x i32> %124, %119
  %136 = mul nuw nsw <8 x i32> %135, %53
  %137 = add nuw nsw <8 x i32> %136, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>, !dbg !1571
  %138 = add nuw nsw <8 x i32> %137, %134, !dbg !1572
  %139 = lshr <8 x i32> %138, <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %140 = trunc <8 x i32> %139 to <8 x i8>, !dbg !1573
  %141 = getelementptr inbounds i8, ptr %57, i64 %115, !dbg !1574
  store <8 x i8> %140, ptr %141, align 1, !dbg !1575, !tbaa !1170, !alias.scope !1586, !noalias !1588
  %142 = add nuw i64 %115, 8, !dbg !1555
  %143 = icmp eq i64 %142, %45, !dbg !1555
  br i1 %143, label %144, label %114, !dbg !1555, !llvm.loop !1589

144:                                              ; preds = %114
  br i1 %54, label %176, label %145, !dbg !1547

145:                                              ; preds = %61, %55, %111, %144
  %146 = phi i64 [ 0, %55 ], [ 0, %61 ], [ %33, %111 ], [ %45, %144 ]
  br label %147, !dbg !1547

147:                                              ; preds = %145, %147
  %148 = phi i64 [ %153, %147 ], [ %146, %145 ]
  call void @llvm.dbg.value(metadata i64 %148, metadata !1529, metadata !DIExpression()), !dbg !1537
  %149 = getelementptr inbounds i8, ptr %58, i64 %148, !dbg !1558
  %150 = load i8, ptr %149, align 1, !dbg !1558, !tbaa !1170
  %151 = zext i8 %150 to i32, !dbg !1558
  %152 = mul nuw nsw i32 %11, %151, !dbg !1562
  %153 = add nuw nsw i64 %148, 1, !dbg !1555
  %154 = getelementptr inbounds i8, ptr %58, i64 %153, !dbg !1563
  %155 = load i8, ptr %154, align 1, !dbg !1563, !tbaa !1170
  %156 = zext i8 %155 to i32, !dbg !1563
  %157 = mul nuw nsw i32 %9, %156, !dbg !1564
  %158 = getelementptr inbounds i8, ptr %60, i64 %148, !dbg !1565
  %159 = load i8, ptr %158, align 1, !dbg !1565, !tbaa !1170
  %160 = zext i8 %159 to i32, !dbg !1565
  %161 = mul nuw nsw i32 %11, %160, !dbg !1568
  %162 = getelementptr inbounds i8, ptr %60, i64 %153, !dbg !1569
  %163 = load i8, ptr %162, align 1, !dbg !1569, !tbaa !1170
  %164 = zext i8 %163 to i32, !dbg !1569
  %165 = mul nuw nsw i32 %9, %164, !dbg !1570
  %166 = add nuw nsw i32 %165, %161
  %167 = mul nuw nsw i32 %166, %10
  %168 = add nuw nsw i32 %157, %152
  %169 = mul nuw nsw i32 %168, %12
  %170 = add nuw nsw i32 %169, 32, !dbg !1571
  %171 = add nuw nsw i32 %170, %167, !dbg !1572
  %172 = lshr i32 %171, 6
  %173 = trunc i32 %172 to i8, !dbg !1573
  %174 = getelementptr inbounds i8, ptr %57, i64 %148, !dbg !1574
  store i8 %173, ptr %174, align 1, !dbg !1575, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 %153, metadata !1529, metadata !DIExpression()), !dbg !1537
  %175 = icmp eq i64 %153, %25, !dbg !1590
  br i1 %175, label %176, label %147, !dbg !1547, !llvm.loop !1591

176:                                              ; preds = %147, %144, %110
  %177 = getelementptr inbounds i8, ptr %57, i64 %17, !dbg !1592
  call void @llvm.dbg.value(metadata ptr %177, metadata !1520, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata ptr %60, metadata !1522, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata !DIArgList(ptr %60, i64 %13), metadata !1528, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1537
  %178 = add nuw nsw i32 %59, 1, !dbg !1593
  call void @llvm.dbg.value(metadata i32 %178, metadata !1530, metadata !DIExpression()), !dbg !1537
  %179 = icmp eq i32 %178, %7, !dbg !1543
  %180 = add i64 %56, 1, !dbg !1546
  br i1 %179, label %181, label %55, !dbg !1546, !llvm.loop !1594

181:                                              ; preds = %176, %15, %8
  ret void, !dbg !1596
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_16x16(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #4 !dbg !1597 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1599, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i32 %1, metadata !1600, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata ptr %2, metadata !1601, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i32 %3, metadata !1602, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata ptr %4, metadata !1603, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i32 %5, metadata !1604, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i32 %6, metadata !1605, metadata !DIExpression()), !dbg !1606
  %8 = icmp eq i32 %6, 32, !dbg !1607
  br i1 %8, label %9, label %196, !dbg !1609

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i32 %1, metadata !1613, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i32 %3, metadata !1615, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i32 %5, metadata !1617, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i32 16, metadata !1618, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i32 16, metadata !1619, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1622
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  br label %13, !dbg !1624

13:                                               ; preds = %13, %9
  %14 = phi i32 [ %194, %13 ], [ 0, %9 ]
  %15 = phi ptr [ %193, %13 ], [ %0, %9 ]
  %16 = phi ptr [ %191, %13 ], [ %2, %9 ]
  %17 = phi ptr [ %192, %13 ], [ %4, %9 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !1621, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr %15, metadata !1610, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr %16, metadata !1614, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr %17, metadata !1616, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1622
  %18 = load i8, ptr %16, align 1, !dbg !1626, !tbaa !1170
  %19 = zext i8 %18 to i16, !dbg !1626
  %20 = load i8, ptr %17, align 1, !dbg !1632, !tbaa !1170
  %21 = zext i8 %20 to i16, !dbg !1632
  %22 = add nuw nsw i16 %19, 1, !dbg !1633
  %23 = add nuw nsw i16 %22, %21, !dbg !1634
  %24 = lshr i16 %23, 1
  %25 = trunc i16 %24 to i8, !dbg !1635
  store i8 %25, ptr %15, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1622
  %26 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1626
  %27 = load i8, ptr %26, align 1, !dbg !1626, !tbaa !1170
  %28 = zext i8 %27 to i16, !dbg !1626
  %29 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !1632
  %30 = load i8, ptr %29, align 1, !dbg !1632, !tbaa !1170
  %31 = zext i8 %30 to i16, !dbg !1632
  %32 = add nuw nsw i16 %28, 1, !dbg !1633
  %33 = add nuw nsw i16 %32, %31, !dbg !1634
  %34 = lshr i16 %33, 1
  %35 = trunc i16 %34 to i8, !dbg !1635
  %36 = getelementptr inbounds i8, ptr %15, i64 1, !dbg !1637
  store i8 %35, ptr %36, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1622
  %37 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1626
  %38 = load i8, ptr %37, align 1, !dbg !1626, !tbaa !1170
  %39 = zext i8 %38 to i16, !dbg !1626
  %40 = getelementptr inbounds i8, ptr %17, i64 2, !dbg !1632
  %41 = load i8, ptr %40, align 1, !dbg !1632, !tbaa !1170
  %42 = zext i8 %41 to i16, !dbg !1632
  %43 = add nuw nsw i16 %39, 1, !dbg !1633
  %44 = add nuw nsw i16 %43, %42, !dbg !1634
  %45 = lshr i16 %44, 1
  %46 = trunc i16 %45 to i8, !dbg !1635
  %47 = getelementptr inbounds i8, ptr %15, i64 2, !dbg !1637
  store i8 %46, ptr %47, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1622
  %48 = getelementptr inbounds i8, ptr %16, i64 3, !dbg !1626
  %49 = load i8, ptr %48, align 1, !dbg !1626, !tbaa !1170
  %50 = zext i8 %49 to i16, !dbg !1626
  %51 = getelementptr inbounds i8, ptr %17, i64 3, !dbg !1632
  %52 = load i8, ptr %51, align 1, !dbg !1632, !tbaa !1170
  %53 = zext i8 %52 to i16, !dbg !1632
  %54 = add nuw nsw i16 %50, 1, !dbg !1633
  %55 = add nuw nsw i16 %54, %53, !dbg !1634
  %56 = lshr i16 %55, 1
  %57 = trunc i16 %56 to i8, !dbg !1635
  %58 = getelementptr inbounds i8, ptr %15, i64 3, !dbg !1637
  store i8 %57, ptr %58, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1622
  %59 = getelementptr inbounds i8, ptr %16, i64 4, !dbg !1626
  %60 = load i8, ptr %59, align 1, !dbg !1626, !tbaa !1170
  %61 = zext i8 %60 to i16, !dbg !1626
  %62 = getelementptr inbounds i8, ptr %17, i64 4, !dbg !1632
  %63 = load i8, ptr %62, align 1, !dbg !1632, !tbaa !1170
  %64 = zext i8 %63 to i16, !dbg !1632
  %65 = add nuw nsw i16 %61, 1, !dbg !1633
  %66 = add nuw nsw i16 %65, %64, !dbg !1634
  %67 = lshr i16 %66, 1
  %68 = trunc i16 %67 to i8, !dbg !1635
  %69 = getelementptr inbounds i8, ptr %15, i64 4, !dbg !1637
  store i8 %68, ptr %69, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1622
  %70 = getelementptr inbounds i8, ptr %16, i64 5, !dbg !1626
  %71 = load i8, ptr %70, align 1, !dbg !1626, !tbaa !1170
  %72 = zext i8 %71 to i16, !dbg !1626
  %73 = getelementptr inbounds i8, ptr %17, i64 5, !dbg !1632
  %74 = load i8, ptr %73, align 1, !dbg !1632, !tbaa !1170
  %75 = zext i8 %74 to i16, !dbg !1632
  %76 = add nuw nsw i16 %72, 1, !dbg !1633
  %77 = add nuw nsw i16 %76, %75, !dbg !1634
  %78 = lshr i16 %77, 1
  %79 = trunc i16 %78 to i8, !dbg !1635
  %80 = getelementptr inbounds i8, ptr %15, i64 5, !dbg !1637
  store i8 %79, ptr %80, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1622
  %81 = getelementptr inbounds i8, ptr %16, i64 6, !dbg !1626
  %82 = load i8, ptr %81, align 1, !dbg !1626, !tbaa !1170
  %83 = zext i8 %82 to i16, !dbg !1626
  %84 = getelementptr inbounds i8, ptr %17, i64 6, !dbg !1632
  %85 = load i8, ptr %84, align 1, !dbg !1632, !tbaa !1170
  %86 = zext i8 %85 to i16, !dbg !1632
  %87 = add nuw nsw i16 %83, 1, !dbg !1633
  %88 = add nuw nsw i16 %87, %86, !dbg !1634
  %89 = lshr i16 %88, 1
  %90 = trunc i16 %89 to i8, !dbg !1635
  %91 = getelementptr inbounds i8, ptr %15, i64 6, !dbg !1637
  store i8 %90, ptr %91, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1622
  %92 = getelementptr inbounds i8, ptr %16, i64 7, !dbg !1626
  %93 = load i8, ptr %92, align 1, !dbg !1626, !tbaa !1170
  %94 = zext i8 %93 to i16, !dbg !1626
  %95 = getelementptr inbounds i8, ptr %17, i64 7, !dbg !1632
  %96 = load i8, ptr %95, align 1, !dbg !1632, !tbaa !1170
  %97 = zext i8 %96 to i16, !dbg !1632
  %98 = add nuw nsw i16 %94, 1, !dbg !1633
  %99 = add nuw nsw i16 %98, %97, !dbg !1634
  %100 = lshr i16 %99, 1
  %101 = trunc i16 %100 to i8, !dbg !1635
  %102 = getelementptr inbounds i8, ptr %15, i64 7, !dbg !1637
  store i8 %101, ptr %102, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 8, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 8, metadata !1620, metadata !DIExpression()), !dbg !1622
  %103 = getelementptr inbounds i8, ptr %16, i64 8, !dbg !1626
  %104 = load i8, ptr %103, align 1, !dbg !1626, !tbaa !1170
  %105 = zext i8 %104 to i16, !dbg !1626
  %106 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !1632
  %107 = load i8, ptr %106, align 1, !dbg !1632, !tbaa !1170
  %108 = zext i8 %107 to i16, !dbg !1632
  %109 = add nuw nsw i16 %105, 1, !dbg !1633
  %110 = add nuw nsw i16 %109, %108, !dbg !1634
  %111 = lshr i16 %110, 1
  %112 = trunc i16 %111 to i8, !dbg !1635
  %113 = getelementptr inbounds i8, ptr %15, i64 8, !dbg !1637
  store i8 %112, ptr %113, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 9, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 9, metadata !1620, metadata !DIExpression()), !dbg !1622
  %114 = getelementptr inbounds i8, ptr %16, i64 9, !dbg !1626
  %115 = load i8, ptr %114, align 1, !dbg !1626, !tbaa !1170
  %116 = zext i8 %115 to i16, !dbg !1626
  %117 = getelementptr inbounds i8, ptr %17, i64 9, !dbg !1632
  %118 = load i8, ptr %117, align 1, !dbg !1632, !tbaa !1170
  %119 = zext i8 %118 to i16, !dbg !1632
  %120 = add nuw nsw i16 %116, 1, !dbg !1633
  %121 = add nuw nsw i16 %120, %119, !dbg !1634
  %122 = lshr i16 %121, 1
  %123 = trunc i16 %122 to i8, !dbg !1635
  %124 = getelementptr inbounds i8, ptr %15, i64 9, !dbg !1637
  store i8 %123, ptr %124, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 10, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 10, metadata !1620, metadata !DIExpression()), !dbg !1622
  %125 = getelementptr inbounds i8, ptr %16, i64 10, !dbg !1626
  %126 = load i8, ptr %125, align 1, !dbg !1626, !tbaa !1170
  %127 = zext i8 %126 to i16, !dbg !1626
  %128 = getelementptr inbounds i8, ptr %17, i64 10, !dbg !1632
  %129 = load i8, ptr %128, align 1, !dbg !1632, !tbaa !1170
  %130 = zext i8 %129 to i16, !dbg !1632
  %131 = add nuw nsw i16 %127, 1, !dbg !1633
  %132 = add nuw nsw i16 %131, %130, !dbg !1634
  %133 = lshr i16 %132, 1
  %134 = trunc i16 %133 to i8, !dbg !1635
  %135 = getelementptr inbounds i8, ptr %15, i64 10, !dbg !1637
  store i8 %134, ptr %135, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 11, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 11, metadata !1620, metadata !DIExpression()), !dbg !1622
  %136 = getelementptr inbounds i8, ptr %16, i64 11, !dbg !1626
  %137 = load i8, ptr %136, align 1, !dbg !1626, !tbaa !1170
  %138 = zext i8 %137 to i16, !dbg !1626
  %139 = getelementptr inbounds i8, ptr %17, i64 11, !dbg !1632
  %140 = load i8, ptr %139, align 1, !dbg !1632, !tbaa !1170
  %141 = zext i8 %140 to i16, !dbg !1632
  %142 = add nuw nsw i16 %138, 1, !dbg !1633
  %143 = add nuw nsw i16 %142, %141, !dbg !1634
  %144 = lshr i16 %143, 1
  %145 = trunc i16 %144 to i8, !dbg !1635
  %146 = getelementptr inbounds i8, ptr %15, i64 11, !dbg !1637
  store i8 %145, ptr %146, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 12, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 12, metadata !1620, metadata !DIExpression()), !dbg !1622
  %147 = getelementptr inbounds i8, ptr %16, i64 12, !dbg !1626
  %148 = load i8, ptr %147, align 1, !dbg !1626, !tbaa !1170
  %149 = zext i8 %148 to i16, !dbg !1626
  %150 = getelementptr inbounds i8, ptr %17, i64 12, !dbg !1632
  %151 = load i8, ptr %150, align 1, !dbg !1632, !tbaa !1170
  %152 = zext i8 %151 to i16, !dbg !1632
  %153 = add nuw nsw i16 %149, 1, !dbg !1633
  %154 = add nuw nsw i16 %153, %152, !dbg !1634
  %155 = lshr i16 %154, 1
  %156 = trunc i16 %155 to i8, !dbg !1635
  %157 = getelementptr inbounds i8, ptr %15, i64 12, !dbg !1637
  store i8 %156, ptr %157, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 13, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 13, metadata !1620, metadata !DIExpression()), !dbg !1622
  %158 = getelementptr inbounds i8, ptr %16, i64 13, !dbg !1626
  %159 = load i8, ptr %158, align 1, !dbg !1626, !tbaa !1170
  %160 = zext i8 %159 to i16, !dbg !1626
  %161 = getelementptr inbounds i8, ptr %17, i64 13, !dbg !1632
  %162 = load i8, ptr %161, align 1, !dbg !1632, !tbaa !1170
  %163 = zext i8 %162 to i16, !dbg !1632
  %164 = add nuw nsw i16 %160, 1, !dbg !1633
  %165 = add nuw nsw i16 %164, %163, !dbg !1634
  %166 = lshr i16 %165, 1
  %167 = trunc i16 %166 to i8, !dbg !1635
  %168 = getelementptr inbounds i8, ptr %15, i64 13, !dbg !1637
  store i8 %167, ptr %168, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 14, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 14, metadata !1620, metadata !DIExpression()), !dbg !1622
  %169 = getelementptr inbounds i8, ptr %16, i64 14, !dbg !1626
  %170 = load i8, ptr %169, align 1, !dbg !1626, !tbaa !1170
  %171 = zext i8 %170 to i16, !dbg !1626
  %172 = getelementptr inbounds i8, ptr %17, i64 14, !dbg !1632
  %173 = load i8, ptr %172, align 1, !dbg !1632, !tbaa !1170
  %174 = zext i8 %173 to i16, !dbg !1632
  %175 = add nuw nsw i16 %171, 1, !dbg !1633
  %176 = add nuw nsw i16 %175, %174, !dbg !1634
  %177 = lshr i16 %176, 1
  %178 = trunc i16 %177 to i8, !dbg !1635
  %179 = getelementptr inbounds i8, ptr %15, i64 14, !dbg !1637
  store i8 %178, ptr %179, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 15, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 15, metadata !1620, metadata !DIExpression()), !dbg !1622
  %180 = getelementptr inbounds i8, ptr %16, i64 15, !dbg !1626
  %181 = load i8, ptr %180, align 1, !dbg !1626, !tbaa !1170
  %182 = zext i8 %181 to i16, !dbg !1626
  %183 = getelementptr inbounds i8, ptr %17, i64 15, !dbg !1632
  %184 = load i8, ptr %183, align 1, !dbg !1632, !tbaa !1170
  %185 = zext i8 %184 to i16, !dbg !1632
  %186 = add nuw nsw i16 %182, 1, !dbg !1633
  %187 = add nuw nsw i16 %186, %185, !dbg !1634
  %188 = lshr i16 %187, 1
  %189 = trunc i16 %188 to i8, !dbg !1635
  %190 = getelementptr inbounds i8, ptr %15, i64 15, !dbg !1637
  store i8 %189, ptr %190, align 1, !dbg !1636, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 16, metadata !1620, metadata !DIExpression()), !dbg !1622
  %191 = getelementptr inbounds i8, ptr %16, i64 %10, !dbg !1638
  call void @llvm.dbg.value(metadata ptr %191, metadata !1614, metadata !DIExpression()), !dbg !1622
  %192 = getelementptr inbounds i8, ptr %17, i64 %11, !dbg !1639
  call void @llvm.dbg.value(metadata ptr %192, metadata !1616, metadata !DIExpression()), !dbg !1622
  %193 = getelementptr inbounds i8, ptr %15, i64 %12, !dbg !1640
  call void @llvm.dbg.value(metadata ptr %193, metadata !1610, metadata !DIExpression()), !dbg !1622
  %194 = add nuw nsw i32 %14, 1, !dbg !1641
  call void @llvm.dbg.value(metadata i32 %194, metadata !1621, metadata !DIExpression()), !dbg !1622
  %195 = icmp eq i32 %194, 16, !dbg !1642
  br i1 %195, label %197, label %13, !dbg !1624, !llvm.loop !1643

196:                                              ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 16, i32 noundef 16, i32 noundef %6), !dbg !1607
  br label %197

197:                                              ; preds = %13, %196
  ret void, !dbg !1609
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_16x8(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #4 !dbg !1645 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1647, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %1, metadata !1648, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %2, metadata !1649, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %3, metadata !1650, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %4, metadata !1651, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %5, metadata !1652, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %6, metadata !1653, metadata !DIExpression()), !dbg !1654
  %8 = icmp eq i32 %6, 32, !dbg !1655
  br i1 %8, label %9, label %196, !dbg !1657

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i32 %1, metadata !1613, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i32 %3, metadata !1615, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i32 %5, metadata !1617, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i32 16, metadata !1618, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i32 8, metadata !1619, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1658
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  br label %13, !dbg !1660

13:                                               ; preds = %13, %9
  %14 = phi i32 [ %194, %13 ], [ 0, %9 ]
  %15 = phi ptr [ %193, %13 ], [ %0, %9 ]
  %16 = phi ptr [ %191, %13 ], [ %2, %9 ]
  %17 = phi ptr [ %192, %13 ], [ %4, %9 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !1621, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata ptr %15, metadata !1610, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata ptr %16, metadata !1614, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata ptr %17, metadata !1616, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1658
  %18 = load i8, ptr %16, align 1, !dbg !1661, !tbaa !1170
  %19 = zext i8 %18 to i16, !dbg !1661
  %20 = load i8, ptr %17, align 1, !dbg !1662, !tbaa !1170
  %21 = zext i8 %20 to i16, !dbg !1662
  %22 = add nuw nsw i16 %19, 1, !dbg !1663
  %23 = add nuw nsw i16 %22, %21, !dbg !1664
  %24 = lshr i16 %23, 1
  %25 = trunc i16 %24 to i8, !dbg !1665
  store i8 %25, ptr %15, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1658
  %26 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1661
  %27 = load i8, ptr %26, align 1, !dbg !1661, !tbaa !1170
  %28 = zext i8 %27 to i16, !dbg !1661
  %29 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !1662
  %30 = load i8, ptr %29, align 1, !dbg !1662, !tbaa !1170
  %31 = zext i8 %30 to i16, !dbg !1662
  %32 = add nuw nsw i16 %28, 1, !dbg !1663
  %33 = add nuw nsw i16 %32, %31, !dbg !1664
  %34 = lshr i16 %33, 1
  %35 = trunc i16 %34 to i8, !dbg !1665
  %36 = getelementptr inbounds i8, ptr %15, i64 1, !dbg !1667
  store i8 %35, ptr %36, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1658
  %37 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1661
  %38 = load i8, ptr %37, align 1, !dbg !1661, !tbaa !1170
  %39 = zext i8 %38 to i16, !dbg !1661
  %40 = getelementptr inbounds i8, ptr %17, i64 2, !dbg !1662
  %41 = load i8, ptr %40, align 1, !dbg !1662, !tbaa !1170
  %42 = zext i8 %41 to i16, !dbg !1662
  %43 = add nuw nsw i16 %39, 1, !dbg !1663
  %44 = add nuw nsw i16 %43, %42, !dbg !1664
  %45 = lshr i16 %44, 1
  %46 = trunc i16 %45 to i8, !dbg !1665
  %47 = getelementptr inbounds i8, ptr %15, i64 2, !dbg !1667
  store i8 %46, ptr %47, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1658
  %48 = getelementptr inbounds i8, ptr %16, i64 3, !dbg !1661
  %49 = load i8, ptr %48, align 1, !dbg !1661, !tbaa !1170
  %50 = zext i8 %49 to i16, !dbg !1661
  %51 = getelementptr inbounds i8, ptr %17, i64 3, !dbg !1662
  %52 = load i8, ptr %51, align 1, !dbg !1662, !tbaa !1170
  %53 = zext i8 %52 to i16, !dbg !1662
  %54 = add nuw nsw i16 %50, 1, !dbg !1663
  %55 = add nuw nsw i16 %54, %53, !dbg !1664
  %56 = lshr i16 %55, 1
  %57 = trunc i16 %56 to i8, !dbg !1665
  %58 = getelementptr inbounds i8, ptr %15, i64 3, !dbg !1667
  store i8 %57, ptr %58, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1658
  %59 = getelementptr inbounds i8, ptr %16, i64 4, !dbg !1661
  %60 = load i8, ptr %59, align 1, !dbg !1661, !tbaa !1170
  %61 = zext i8 %60 to i16, !dbg !1661
  %62 = getelementptr inbounds i8, ptr %17, i64 4, !dbg !1662
  %63 = load i8, ptr %62, align 1, !dbg !1662, !tbaa !1170
  %64 = zext i8 %63 to i16, !dbg !1662
  %65 = add nuw nsw i16 %61, 1, !dbg !1663
  %66 = add nuw nsw i16 %65, %64, !dbg !1664
  %67 = lshr i16 %66, 1
  %68 = trunc i16 %67 to i8, !dbg !1665
  %69 = getelementptr inbounds i8, ptr %15, i64 4, !dbg !1667
  store i8 %68, ptr %69, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1658
  %70 = getelementptr inbounds i8, ptr %16, i64 5, !dbg !1661
  %71 = load i8, ptr %70, align 1, !dbg !1661, !tbaa !1170
  %72 = zext i8 %71 to i16, !dbg !1661
  %73 = getelementptr inbounds i8, ptr %17, i64 5, !dbg !1662
  %74 = load i8, ptr %73, align 1, !dbg !1662, !tbaa !1170
  %75 = zext i8 %74 to i16, !dbg !1662
  %76 = add nuw nsw i16 %72, 1, !dbg !1663
  %77 = add nuw nsw i16 %76, %75, !dbg !1664
  %78 = lshr i16 %77, 1
  %79 = trunc i16 %78 to i8, !dbg !1665
  %80 = getelementptr inbounds i8, ptr %15, i64 5, !dbg !1667
  store i8 %79, ptr %80, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1658
  %81 = getelementptr inbounds i8, ptr %16, i64 6, !dbg !1661
  %82 = load i8, ptr %81, align 1, !dbg !1661, !tbaa !1170
  %83 = zext i8 %82 to i16, !dbg !1661
  %84 = getelementptr inbounds i8, ptr %17, i64 6, !dbg !1662
  %85 = load i8, ptr %84, align 1, !dbg !1662, !tbaa !1170
  %86 = zext i8 %85 to i16, !dbg !1662
  %87 = add nuw nsw i16 %83, 1, !dbg !1663
  %88 = add nuw nsw i16 %87, %86, !dbg !1664
  %89 = lshr i16 %88, 1
  %90 = trunc i16 %89 to i8, !dbg !1665
  %91 = getelementptr inbounds i8, ptr %15, i64 6, !dbg !1667
  store i8 %90, ptr %91, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1658
  %92 = getelementptr inbounds i8, ptr %16, i64 7, !dbg !1661
  %93 = load i8, ptr %92, align 1, !dbg !1661, !tbaa !1170
  %94 = zext i8 %93 to i16, !dbg !1661
  %95 = getelementptr inbounds i8, ptr %17, i64 7, !dbg !1662
  %96 = load i8, ptr %95, align 1, !dbg !1662, !tbaa !1170
  %97 = zext i8 %96 to i16, !dbg !1662
  %98 = add nuw nsw i16 %94, 1, !dbg !1663
  %99 = add nuw nsw i16 %98, %97, !dbg !1664
  %100 = lshr i16 %99, 1
  %101 = trunc i16 %100 to i8, !dbg !1665
  %102 = getelementptr inbounds i8, ptr %15, i64 7, !dbg !1667
  store i8 %101, ptr %102, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 8, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 8, metadata !1620, metadata !DIExpression()), !dbg !1658
  %103 = getelementptr inbounds i8, ptr %16, i64 8, !dbg !1661
  %104 = load i8, ptr %103, align 1, !dbg !1661, !tbaa !1170
  %105 = zext i8 %104 to i16, !dbg !1661
  %106 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !1662
  %107 = load i8, ptr %106, align 1, !dbg !1662, !tbaa !1170
  %108 = zext i8 %107 to i16, !dbg !1662
  %109 = add nuw nsw i16 %105, 1, !dbg !1663
  %110 = add nuw nsw i16 %109, %108, !dbg !1664
  %111 = lshr i16 %110, 1
  %112 = trunc i16 %111 to i8, !dbg !1665
  %113 = getelementptr inbounds i8, ptr %15, i64 8, !dbg !1667
  store i8 %112, ptr %113, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 9, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 9, metadata !1620, metadata !DIExpression()), !dbg !1658
  %114 = getelementptr inbounds i8, ptr %16, i64 9, !dbg !1661
  %115 = load i8, ptr %114, align 1, !dbg !1661, !tbaa !1170
  %116 = zext i8 %115 to i16, !dbg !1661
  %117 = getelementptr inbounds i8, ptr %17, i64 9, !dbg !1662
  %118 = load i8, ptr %117, align 1, !dbg !1662, !tbaa !1170
  %119 = zext i8 %118 to i16, !dbg !1662
  %120 = add nuw nsw i16 %116, 1, !dbg !1663
  %121 = add nuw nsw i16 %120, %119, !dbg !1664
  %122 = lshr i16 %121, 1
  %123 = trunc i16 %122 to i8, !dbg !1665
  %124 = getelementptr inbounds i8, ptr %15, i64 9, !dbg !1667
  store i8 %123, ptr %124, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 10, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 10, metadata !1620, metadata !DIExpression()), !dbg !1658
  %125 = getelementptr inbounds i8, ptr %16, i64 10, !dbg !1661
  %126 = load i8, ptr %125, align 1, !dbg !1661, !tbaa !1170
  %127 = zext i8 %126 to i16, !dbg !1661
  %128 = getelementptr inbounds i8, ptr %17, i64 10, !dbg !1662
  %129 = load i8, ptr %128, align 1, !dbg !1662, !tbaa !1170
  %130 = zext i8 %129 to i16, !dbg !1662
  %131 = add nuw nsw i16 %127, 1, !dbg !1663
  %132 = add nuw nsw i16 %131, %130, !dbg !1664
  %133 = lshr i16 %132, 1
  %134 = trunc i16 %133 to i8, !dbg !1665
  %135 = getelementptr inbounds i8, ptr %15, i64 10, !dbg !1667
  store i8 %134, ptr %135, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 11, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 11, metadata !1620, metadata !DIExpression()), !dbg !1658
  %136 = getelementptr inbounds i8, ptr %16, i64 11, !dbg !1661
  %137 = load i8, ptr %136, align 1, !dbg !1661, !tbaa !1170
  %138 = zext i8 %137 to i16, !dbg !1661
  %139 = getelementptr inbounds i8, ptr %17, i64 11, !dbg !1662
  %140 = load i8, ptr %139, align 1, !dbg !1662, !tbaa !1170
  %141 = zext i8 %140 to i16, !dbg !1662
  %142 = add nuw nsw i16 %138, 1, !dbg !1663
  %143 = add nuw nsw i16 %142, %141, !dbg !1664
  %144 = lshr i16 %143, 1
  %145 = trunc i16 %144 to i8, !dbg !1665
  %146 = getelementptr inbounds i8, ptr %15, i64 11, !dbg !1667
  store i8 %145, ptr %146, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 12, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 12, metadata !1620, metadata !DIExpression()), !dbg !1658
  %147 = getelementptr inbounds i8, ptr %16, i64 12, !dbg !1661
  %148 = load i8, ptr %147, align 1, !dbg !1661, !tbaa !1170
  %149 = zext i8 %148 to i16, !dbg !1661
  %150 = getelementptr inbounds i8, ptr %17, i64 12, !dbg !1662
  %151 = load i8, ptr %150, align 1, !dbg !1662, !tbaa !1170
  %152 = zext i8 %151 to i16, !dbg !1662
  %153 = add nuw nsw i16 %149, 1, !dbg !1663
  %154 = add nuw nsw i16 %153, %152, !dbg !1664
  %155 = lshr i16 %154, 1
  %156 = trunc i16 %155 to i8, !dbg !1665
  %157 = getelementptr inbounds i8, ptr %15, i64 12, !dbg !1667
  store i8 %156, ptr %157, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 13, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 13, metadata !1620, metadata !DIExpression()), !dbg !1658
  %158 = getelementptr inbounds i8, ptr %16, i64 13, !dbg !1661
  %159 = load i8, ptr %158, align 1, !dbg !1661, !tbaa !1170
  %160 = zext i8 %159 to i16, !dbg !1661
  %161 = getelementptr inbounds i8, ptr %17, i64 13, !dbg !1662
  %162 = load i8, ptr %161, align 1, !dbg !1662, !tbaa !1170
  %163 = zext i8 %162 to i16, !dbg !1662
  %164 = add nuw nsw i16 %160, 1, !dbg !1663
  %165 = add nuw nsw i16 %164, %163, !dbg !1664
  %166 = lshr i16 %165, 1
  %167 = trunc i16 %166 to i8, !dbg !1665
  %168 = getelementptr inbounds i8, ptr %15, i64 13, !dbg !1667
  store i8 %167, ptr %168, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 14, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 14, metadata !1620, metadata !DIExpression()), !dbg !1658
  %169 = getelementptr inbounds i8, ptr %16, i64 14, !dbg !1661
  %170 = load i8, ptr %169, align 1, !dbg !1661, !tbaa !1170
  %171 = zext i8 %170 to i16, !dbg !1661
  %172 = getelementptr inbounds i8, ptr %17, i64 14, !dbg !1662
  %173 = load i8, ptr %172, align 1, !dbg !1662, !tbaa !1170
  %174 = zext i8 %173 to i16, !dbg !1662
  %175 = add nuw nsw i16 %171, 1, !dbg !1663
  %176 = add nuw nsw i16 %175, %174, !dbg !1664
  %177 = lshr i16 %176, 1
  %178 = trunc i16 %177 to i8, !dbg !1665
  %179 = getelementptr inbounds i8, ptr %15, i64 14, !dbg !1667
  store i8 %178, ptr %179, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 15, metadata !1620, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 15, metadata !1620, metadata !DIExpression()), !dbg !1658
  %180 = getelementptr inbounds i8, ptr %16, i64 15, !dbg !1661
  %181 = load i8, ptr %180, align 1, !dbg !1661, !tbaa !1170
  %182 = zext i8 %181 to i16, !dbg !1661
  %183 = getelementptr inbounds i8, ptr %17, i64 15, !dbg !1662
  %184 = load i8, ptr %183, align 1, !dbg !1662, !tbaa !1170
  %185 = zext i8 %184 to i16, !dbg !1662
  %186 = add nuw nsw i16 %182, 1, !dbg !1663
  %187 = add nuw nsw i16 %186, %185, !dbg !1664
  %188 = lshr i16 %187, 1
  %189 = trunc i16 %188 to i8, !dbg !1665
  %190 = getelementptr inbounds i8, ptr %15, i64 15, !dbg !1667
  store i8 %189, ptr %190, align 1, !dbg !1666, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 16, metadata !1620, metadata !DIExpression()), !dbg !1658
  %191 = getelementptr inbounds i8, ptr %16, i64 %10, !dbg !1668
  call void @llvm.dbg.value(metadata ptr %191, metadata !1614, metadata !DIExpression()), !dbg !1658
  %192 = getelementptr inbounds i8, ptr %17, i64 %11, !dbg !1669
  call void @llvm.dbg.value(metadata ptr %192, metadata !1616, metadata !DIExpression()), !dbg !1658
  %193 = getelementptr inbounds i8, ptr %15, i64 %12, !dbg !1670
  call void @llvm.dbg.value(metadata ptr %193, metadata !1610, metadata !DIExpression()), !dbg !1658
  %194 = add nuw nsw i32 %14, 1, !dbg !1671
  call void @llvm.dbg.value(metadata i32 %194, metadata !1621, metadata !DIExpression()), !dbg !1658
  %195 = icmp eq i32 %194, 8, !dbg !1672
  br i1 %195, label %197, label %13, !dbg !1660, !llvm.loop !1673

196:                                              ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 16, i32 noundef 8, i32 noundef %6), !dbg !1655
  br label %197

197:                                              ; preds = %13, %196
  ret void, !dbg !1657
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_8x16(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #4 !dbg !1675 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1677, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i32 %1, metadata !1678, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata ptr %2, metadata !1679, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i32 %3, metadata !1680, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata ptr %4, metadata !1681, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i32 %5, metadata !1682, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i32 %6, metadata !1683, metadata !DIExpression()), !dbg !1684
  %8 = icmp eq i32 %6, 32, !dbg !1685
  br i1 %8, label %9, label %108, !dbg !1687

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i32 %1, metadata !1613, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i32 %3, metadata !1615, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i32 %5, metadata !1617, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i32 8, metadata !1618, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i32 16, metadata !1619, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1688
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  br label %13, !dbg !1690

13:                                               ; preds = %13, %9
  %14 = phi i32 [ %106, %13 ], [ 0, %9 ]
  %15 = phi ptr [ %105, %13 ], [ %0, %9 ]
  %16 = phi ptr [ %103, %13 ], [ %2, %9 ]
  %17 = phi ptr [ %104, %13 ], [ %4, %9 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !1621, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata ptr %15, metadata !1610, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata ptr %16, metadata !1614, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata ptr %17, metadata !1616, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1688
  %18 = load i8, ptr %16, align 1, !dbg !1691, !tbaa !1170
  %19 = zext i8 %18 to i16, !dbg !1691
  %20 = load i8, ptr %17, align 1, !dbg !1692, !tbaa !1170
  %21 = zext i8 %20 to i16, !dbg !1692
  %22 = add nuw nsw i16 %19, 1, !dbg !1693
  %23 = add nuw nsw i16 %22, %21, !dbg !1694
  %24 = lshr i16 %23, 1
  %25 = trunc i16 %24 to i8, !dbg !1695
  store i8 %25, ptr %15, align 1, !dbg !1696, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1688
  %26 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1691
  %27 = load i8, ptr %26, align 1, !dbg !1691, !tbaa !1170
  %28 = zext i8 %27 to i16, !dbg !1691
  %29 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !1692
  %30 = load i8, ptr %29, align 1, !dbg !1692, !tbaa !1170
  %31 = zext i8 %30 to i16, !dbg !1692
  %32 = add nuw nsw i16 %28, 1, !dbg !1693
  %33 = add nuw nsw i16 %32, %31, !dbg !1694
  %34 = lshr i16 %33, 1
  %35 = trunc i16 %34 to i8, !dbg !1695
  %36 = getelementptr inbounds i8, ptr %15, i64 1, !dbg !1697
  store i8 %35, ptr %36, align 1, !dbg !1696, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1688
  %37 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1691
  %38 = load i8, ptr %37, align 1, !dbg !1691, !tbaa !1170
  %39 = zext i8 %38 to i16, !dbg !1691
  %40 = getelementptr inbounds i8, ptr %17, i64 2, !dbg !1692
  %41 = load i8, ptr %40, align 1, !dbg !1692, !tbaa !1170
  %42 = zext i8 %41 to i16, !dbg !1692
  %43 = add nuw nsw i16 %39, 1, !dbg !1693
  %44 = add nuw nsw i16 %43, %42, !dbg !1694
  %45 = lshr i16 %44, 1
  %46 = trunc i16 %45 to i8, !dbg !1695
  %47 = getelementptr inbounds i8, ptr %15, i64 2, !dbg !1697
  store i8 %46, ptr %47, align 1, !dbg !1696, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1688
  %48 = getelementptr inbounds i8, ptr %16, i64 3, !dbg !1691
  %49 = load i8, ptr %48, align 1, !dbg !1691, !tbaa !1170
  %50 = zext i8 %49 to i16, !dbg !1691
  %51 = getelementptr inbounds i8, ptr %17, i64 3, !dbg !1692
  %52 = load i8, ptr %51, align 1, !dbg !1692, !tbaa !1170
  %53 = zext i8 %52 to i16, !dbg !1692
  %54 = add nuw nsw i16 %50, 1, !dbg !1693
  %55 = add nuw nsw i16 %54, %53, !dbg !1694
  %56 = lshr i16 %55, 1
  %57 = trunc i16 %56 to i8, !dbg !1695
  %58 = getelementptr inbounds i8, ptr %15, i64 3, !dbg !1697
  store i8 %57, ptr %58, align 1, !dbg !1696, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1688
  %59 = getelementptr inbounds i8, ptr %16, i64 4, !dbg !1691
  %60 = load i8, ptr %59, align 1, !dbg !1691, !tbaa !1170
  %61 = zext i8 %60 to i16, !dbg !1691
  %62 = getelementptr inbounds i8, ptr %17, i64 4, !dbg !1692
  %63 = load i8, ptr %62, align 1, !dbg !1692, !tbaa !1170
  %64 = zext i8 %63 to i16, !dbg !1692
  %65 = add nuw nsw i16 %61, 1, !dbg !1693
  %66 = add nuw nsw i16 %65, %64, !dbg !1694
  %67 = lshr i16 %66, 1
  %68 = trunc i16 %67 to i8, !dbg !1695
  %69 = getelementptr inbounds i8, ptr %15, i64 4, !dbg !1697
  store i8 %68, ptr %69, align 1, !dbg !1696, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1688
  %70 = getelementptr inbounds i8, ptr %16, i64 5, !dbg !1691
  %71 = load i8, ptr %70, align 1, !dbg !1691, !tbaa !1170
  %72 = zext i8 %71 to i16, !dbg !1691
  %73 = getelementptr inbounds i8, ptr %17, i64 5, !dbg !1692
  %74 = load i8, ptr %73, align 1, !dbg !1692, !tbaa !1170
  %75 = zext i8 %74 to i16, !dbg !1692
  %76 = add nuw nsw i16 %72, 1, !dbg !1693
  %77 = add nuw nsw i16 %76, %75, !dbg !1694
  %78 = lshr i16 %77, 1
  %79 = trunc i16 %78 to i8, !dbg !1695
  %80 = getelementptr inbounds i8, ptr %15, i64 5, !dbg !1697
  store i8 %79, ptr %80, align 1, !dbg !1696, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1688
  %81 = getelementptr inbounds i8, ptr %16, i64 6, !dbg !1691
  %82 = load i8, ptr %81, align 1, !dbg !1691, !tbaa !1170
  %83 = zext i8 %82 to i16, !dbg !1691
  %84 = getelementptr inbounds i8, ptr %17, i64 6, !dbg !1692
  %85 = load i8, ptr %84, align 1, !dbg !1692, !tbaa !1170
  %86 = zext i8 %85 to i16, !dbg !1692
  %87 = add nuw nsw i16 %83, 1, !dbg !1693
  %88 = add nuw nsw i16 %87, %86, !dbg !1694
  %89 = lshr i16 %88, 1
  %90 = trunc i16 %89 to i8, !dbg !1695
  %91 = getelementptr inbounds i8, ptr %15, i64 6, !dbg !1697
  store i8 %90, ptr %91, align 1, !dbg !1696, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1688
  %92 = getelementptr inbounds i8, ptr %16, i64 7, !dbg !1691
  %93 = load i8, ptr %92, align 1, !dbg !1691, !tbaa !1170
  %94 = zext i8 %93 to i16, !dbg !1691
  %95 = getelementptr inbounds i8, ptr %17, i64 7, !dbg !1692
  %96 = load i8, ptr %95, align 1, !dbg !1692, !tbaa !1170
  %97 = zext i8 %96 to i16, !dbg !1692
  %98 = add nuw nsw i16 %94, 1, !dbg !1693
  %99 = add nuw nsw i16 %98, %97, !dbg !1694
  %100 = lshr i16 %99, 1
  %101 = trunc i16 %100 to i8, !dbg !1695
  %102 = getelementptr inbounds i8, ptr %15, i64 7, !dbg !1697
  store i8 %101, ptr %102, align 1, !dbg !1696, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 8, metadata !1620, metadata !DIExpression()), !dbg !1688
  %103 = getelementptr inbounds i8, ptr %16, i64 %10, !dbg !1698
  call void @llvm.dbg.value(metadata ptr %103, metadata !1614, metadata !DIExpression()), !dbg !1688
  %104 = getelementptr inbounds i8, ptr %17, i64 %11, !dbg !1699
  call void @llvm.dbg.value(metadata ptr %104, metadata !1616, metadata !DIExpression()), !dbg !1688
  %105 = getelementptr inbounds i8, ptr %15, i64 %12, !dbg !1700
  call void @llvm.dbg.value(metadata ptr %105, metadata !1610, metadata !DIExpression()), !dbg !1688
  %106 = add nuw nsw i32 %14, 1, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %106, metadata !1621, metadata !DIExpression()), !dbg !1688
  %107 = icmp eq i32 %106, 16, !dbg !1702
  br i1 %107, label %109, label %13, !dbg !1690, !llvm.loop !1703

108:                                              ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 8, i32 noundef 16, i32 noundef %6), !dbg !1685
  br label %109

109:                                              ; preds = %13, %108
  ret void, !dbg !1687
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_8x8(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #4 !dbg !1705 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1707, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i32 %1, metadata !1708, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %2, metadata !1709, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i32 %3, metadata !1710, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %4, metadata !1711, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i32 %5, metadata !1712, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i32 %6, metadata !1713, metadata !DIExpression()), !dbg !1714
  %8 = icmp eq i32 %6, 32, !dbg !1715
  br i1 %8, label %9, label %108, !dbg !1717

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i32 %1, metadata !1613, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i32 %3, metadata !1615, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i32 %5, metadata !1617, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i32 8, metadata !1618, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i32 8, metadata !1619, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1718
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  br label %13, !dbg !1720

13:                                               ; preds = %13, %9
  %14 = phi i32 [ %106, %13 ], [ 0, %9 ]
  %15 = phi ptr [ %105, %13 ], [ %0, %9 ]
  %16 = phi ptr [ %103, %13 ], [ %2, %9 ]
  %17 = phi ptr [ %104, %13 ], [ %4, %9 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !1621, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata ptr %15, metadata !1610, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata ptr %16, metadata !1614, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata ptr %17, metadata !1616, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1718
  %18 = load i8, ptr %16, align 1, !dbg !1721, !tbaa !1170
  %19 = zext i8 %18 to i16, !dbg !1721
  %20 = load i8, ptr %17, align 1, !dbg !1722, !tbaa !1170
  %21 = zext i8 %20 to i16, !dbg !1722
  %22 = add nuw nsw i16 %19, 1, !dbg !1723
  %23 = add nuw nsw i16 %22, %21, !dbg !1724
  %24 = lshr i16 %23, 1
  %25 = trunc i16 %24 to i8, !dbg !1725
  store i8 %25, ptr %15, align 1, !dbg !1726, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1718
  %26 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1721
  %27 = load i8, ptr %26, align 1, !dbg !1721, !tbaa !1170
  %28 = zext i8 %27 to i16, !dbg !1721
  %29 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !1722
  %30 = load i8, ptr %29, align 1, !dbg !1722, !tbaa !1170
  %31 = zext i8 %30 to i16, !dbg !1722
  %32 = add nuw nsw i16 %28, 1, !dbg !1723
  %33 = add nuw nsw i16 %32, %31, !dbg !1724
  %34 = lshr i16 %33, 1
  %35 = trunc i16 %34 to i8, !dbg !1725
  %36 = getelementptr inbounds i8, ptr %15, i64 1, !dbg !1727
  store i8 %35, ptr %36, align 1, !dbg !1726, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1718
  %37 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1721
  %38 = load i8, ptr %37, align 1, !dbg !1721, !tbaa !1170
  %39 = zext i8 %38 to i16, !dbg !1721
  %40 = getelementptr inbounds i8, ptr %17, i64 2, !dbg !1722
  %41 = load i8, ptr %40, align 1, !dbg !1722, !tbaa !1170
  %42 = zext i8 %41 to i16, !dbg !1722
  %43 = add nuw nsw i16 %39, 1, !dbg !1723
  %44 = add nuw nsw i16 %43, %42, !dbg !1724
  %45 = lshr i16 %44, 1
  %46 = trunc i16 %45 to i8, !dbg !1725
  %47 = getelementptr inbounds i8, ptr %15, i64 2, !dbg !1727
  store i8 %46, ptr %47, align 1, !dbg !1726, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1718
  %48 = getelementptr inbounds i8, ptr %16, i64 3, !dbg !1721
  %49 = load i8, ptr %48, align 1, !dbg !1721, !tbaa !1170
  %50 = zext i8 %49 to i16, !dbg !1721
  %51 = getelementptr inbounds i8, ptr %17, i64 3, !dbg !1722
  %52 = load i8, ptr %51, align 1, !dbg !1722, !tbaa !1170
  %53 = zext i8 %52 to i16, !dbg !1722
  %54 = add nuw nsw i16 %50, 1, !dbg !1723
  %55 = add nuw nsw i16 %54, %53, !dbg !1724
  %56 = lshr i16 %55, 1
  %57 = trunc i16 %56 to i8, !dbg !1725
  %58 = getelementptr inbounds i8, ptr %15, i64 3, !dbg !1727
  store i8 %57, ptr %58, align 1, !dbg !1726, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1718
  %59 = getelementptr inbounds i8, ptr %16, i64 4, !dbg !1721
  %60 = load i8, ptr %59, align 1, !dbg !1721, !tbaa !1170
  %61 = zext i8 %60 to i16, !dbg !1721
  %62 = getelementptr inbounds i8, ptr %17, i64 4, !dbg !1722
  %63 = load i8, ptr %62, align 1, !dbg !1722, !tbaa !1170
  %64 = zext i8 %63 to i16, !dbg !1722
  %65 = add nuw nsw i16 %61, 1, !dbg !1723
  %66 = add nuw nsw i16 %65, %64, !dbg !1724
  %67 = lshr i16 %66, 1
  %68 = trunc i16 %67 to i8, !dbg !1725
  %69 = getelementptr inbounds i8, ptr %15, i64 4, !dbg !1727
  store i8 %68, ptr %69, align 1, !dbg !1726, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1718
  %70 = getelementptr inbounds i8, ptr %16, i64 5, !dbg !1721
  %71 = load i8, ptr %70, align 1, !dbg !1721, !tbaa !1170
  %72 = zext i8 %71 to i16, !dbg !1721
  %73 = getelementptr inbounds i8, ptr %17, i64 5, !dbg !1722
  %74 = load i8, ptr %73, align 1, !dbg !1722, !tbaa !1170
  %75 = zext i8 %74 to i16, !dbg !1722
  %76 = add nuw nsw i16 %72, 1, !dbg !1723
  %77 = add nuw nsw i16 %76, %75, !dbg !1724
  %78 = lshr i16 %77, 1
  %79 = trunc i16 %78 to i8, !dbg !1725
  %80 = getelementptr inbounds i8, ptr %15, i64 5, !dbg !1727
  store i8 %79, ptr %80, align 1, !dbg !1726, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1718
  %81 = getelementptr inbounds i8, ptr %16, i64 6, !dbg !1721
  %82 = load i8, ptr %81, align 1, !dbg !1721, !tbaa !1170
  %83 = zext i8 %82 to i16, !dbg !1721
  %84 = getelementptr inbounds i8, ptr %17, i64 6, !dbg !1722
  %85 = load i8, ptr %84, align 1, !dbg !1722, !tbaa !1170
  %86 = zext i8 %85 to i16, !dbg !1722
  %87 = add nuw nsw i16 %83, 1, !dbg !1723
  %88 = add nuw nsw i16 %87, %86, !dbg !1724
  %89 = lshr i16 %88, 1
  %90 = trunc i16 %89 to i8, !dbg !1725
  %91 = getelementptr inbounds i8, ptr %15, i64 6, !dbg !1727
  store i8 %90, ptr %91, align 1, !dbg !1726, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1718
  %92 = getelementptr inbounds i8, ptr %16, i64 7, !dbg !1721
  %93 = load i8, ptr %92, align 1, !dbg !1721, !tbaa !1170
  %94 = zext i8 %93 to i16, !dbg !1721
  %95 = getelementptr inbounds i8, ptr %17, i64 7, !dbg !1722
  %96 = load i8, ptr %95, align 1, !dbg !1722, !tbaa !1170
  %97 = zext i8 %96 to i16, !dbg !1722
  %98 = add nuw nsw i16 %94, 1, !dbg !1723
  %99 = add nuw nsw i16 %98, %97, !dbg !1724
  %100 = lshr i16 %99, 1
  %101 = trunc i16 %100 to i8, !dbg !1725
  %102 = getelementptr inbounds i8, ptr %15, i64 7, !dbg !1727
  store i8 %101, ptr %102, align 1, !dbg !1726, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 8, metadata !1620, metadata !DIExpression()), !dbg !1718
  %103 = getelementptr inbounds i8, ptr %16, i64 %10, !dbg !1728
  call void @llvm.dbg.value(metadata ptr %103, metadata !1614, metadata !DIExpression()), !dbg !1718
  %104 = getelementptr inbounds i8, ptr %17, i64 %11, !dbg !1729
  call void @llvm.dbg.value(metadata ptr %104, metadata !1616, metadata !DIExpression()), !dbg !1718
  %105 = getelementptr inbounds i8, ptr %15, i64 %12, !dbg !1730
  call void @llvm.dbg.value(metadata ptr %105, metadata !1610, metadata !DIExpression()), !dbg !1718
  %106 = add nuw nsw i32 %14, 1, !dbg !1731
  call void @llvm.dbg.value(metadata i32 %106, metadata !1621, metadata !DIExpression()), !dbg !1718
  %107 = icmp eq i32 %106, 8, !dbg !1732
  br i1 %107, label %109, label %13, !dbg !1720, !llvm.loop !1733

108:                                              ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 8, i32 noundef 8, i32 noundef %6), !dbg !1715
  br label %109

109:                                              ; preds = %13, %108
  ret void, !dbg !1717
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_8x4(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #4 !dbg !1735 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1737, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %1, metadata !1738, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata ptr %2, metadata !1739, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %3, metadata !1740, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata ptr %4, metadata !1741, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %5, metadata !1742, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %6, metadata !1743, metadata !DIExpression()), !dbg !1744
  %8 = icmp eq i32 %6, 32, !dbg !1745
  br i1 %8, label %9, label %362, !dbg !1747

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 %1, metadata !1613, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 %3, metadata !1615, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 %5, metadata !1617, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 8, metadata !1618, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 4, metadata !1619, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1748
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1748
  %13 = load i8, ptr %2, align 1, !dbg !1750, !tbaa !1170
  %14 = zext i8 %13 to i16, !dbg !1750
  %15 = load i8, ptr %4, align 1, !dbg !1751, !tbaa !1170
  %16 = zext i8 %15 to i16, !dbg !1751
  %17 = add nuw nsw i16 %14, 1, !dbg !1752
  %18 = add nuw nsw i16 %17, %16, !dbg !1753
  %19 = lshr i16 %18, 1
  %20 = trunc i16 %19 to i8, !dbg !1754
  store i8 %20, ptr %0, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1748
  %21 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1750
  %22 = load i8, ptr %21, align 1, !dbg !1750, !tbaa !1170
  %23 = zext i8 %22 to i16, !dbg !1750
  %24 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1751
  %25 = load i8, ptr %24, align 1, !dbg !1751, !tbaa !1170
  %26 = zext i8 %25 to i16, !dbg !1751
  %27 = add nuw nsw i16 %23, 1, !dbg !1752
  %28 = add nuw nsw i16 %27, %26, !dbg !1753
  %29 = lshr i16 %28, 1
  %30 = trunc i16 %29 to i8, !dbg !1754
  %31 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1756
  store i8 %30, ptr %31, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1748
  %32 = getelementptr inbounds i8, ptr %2, i64 2, !dbg !1750
  %33 = load i8, ptr %32, align 1, !dbg !1750, !tbaa !1170
  %34 = zext i8 %33 to i16, !dbg !1750
  %35 = getelementptr inbounds i8, ptr %4, i64 2, !dbg !1751
  %36 = load i8, ptr %35, align 1, !dbg !1751, !tbaa !1170
  %37 = zext i8 %36 to i16, !dbg !1751
  %38 = add nuw nsw i16 %34, 1, !dbg !1752
  %39 = add nuw nsw i16 %38, %37, !dbg !1753
  %40 = lshr i16 %39, 1
  %41 = trunc i16 %40 to i8, !dbg !1754
  %42 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1756
  store i8 %41, ptr %42, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1748
  %43 = getelementptr inbounds i8, ptr %2, i64 3, !dbg !1750
  %44 = load i8, ptr %43, align 1, !dbg !1750, !tbaa !1170
  %45 = zext i8 %44 to i16, !dbg !1750
  %46 = getelementptr inbounds i8, ptr %4, i64 3, !dbg !1751
  %47 = load i8, ptr %46, align 1, !dbg !1751, !tbaa !1170
  %48 = zext i8 %47 to i16, !dbg !1751
  %49 = add nuw nsw i16 %45, 1, !dbg !1752
  %50 = add nuw nsw i16 %49, %48, !dbg !1753
  %51 = lshr i16 %50, 1
  %52 = trunc i16 %51 to i8, !dbg !1754
  %53 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1756
  store i8 %52, ptr %53, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1748
  %54 = getelementptr inbounds i8, ptr %2, i64 4, !dbg !1750
  %55 = load i8, ptr %54, align 1, !dbg !1750, !tbaa !1170
  %56 = zext i8 %55 to i16, !dbg !1750
  %57 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !1751
  %58 = load i8, ptr %57, align 1, !dbg !1751, !tbaa !1170
  %59 = zext i8 %58 to i16, !dbg !1751
  %60 = add nuw nsw i16 %56, 1, !dbg !1752
  %61 = add nuw nsw i16 %60, %59, !dbg !1753
  %62 = lshr i16 %61, 1
  %63 = trunc i16 %62 to i8, !dbg !1754
  %64 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !1756
  store i8 %63, ptr %64, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1748
  %65 = getelementptr inbounds i8, ptr %2, i64 5, !dbg !1750
  %66 = load i8, ptr %65, align 1, !dbg !1750, !tbaa !1170
  %67 = zext i8 %66 to i16, !dbg !1750
  %68 = getelementptr inbounds i8, ptr %4, i64 5, !dbg !1751
  %69 = load i8, ptr %68, align 1, !dbg !1751, !tbaa !1170
  %70 = zext i8 %69 to i16, !dbg !1751
  %71 = add nuw nsw i16 %67, 1, !dbg !1752
  %72 = add nuw nsw i16 %71, %70, !dbg !1753
  %73 = lshr i16 %72, 1
  %74 = trunc i16 %73 to i8, !dbg !1754
  %75 = getelementptr inbounds i8, ptr %0, i64 5, !dbg !1756
  store i8 %74, ptr %75, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1748
  %76 = getelementptr inbounds i8, ptr %2, i64 6, !dbg !1750
  %77 = load i8, ptr %76, align 1, !dbg !1750, !tbaa !1170
  %78 = zext i8 %77 to i16, !dbg !1750
  %79 = getelementptr inbounds i8, ptr %4, i64 6, !dbg !1751
  %80 = load i8, ptr %79, align 1, !dbg !1751, !tbaa !1170
  %81 = zext i8 %80 to i16, !dbg !1751
  %82 = add nuw nsw i16 %78, 1, !dbg !1752
  %83 = add nuw nsw i16 %82, %81, !dbg !1753
  %84 = lshr i16 %83, 1
  %85 = trunc i16 %84 to i8, !dbg !1754
  %86 = getelementptr inbounds i8, ptr %0, i64 6, !dbg !1756
  store i8 %85, ptr %86, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1748
  %87 = getelementptr inbounds i8, ptr %2, i64 7, !dbg !1750
  %88 = load i8, ptr %87, align 1, !dbg !1750, !tbaa !1170
  %89 = zext i8 %88 to i16, !dbg !1750
  %90 = getelementptr inbounds i8, ptr %4, i64 7, !dbg !1751
  %91 = load i8, ptr %90, align 1, !dbg !1751, !tbaa !1170
  %92 = zext i8 %91 to i16, !dbg !1751
  %93 = add nuw nsw i16 %89, 1, !dbg !1752
  %94 = add nuw nsw i16 %93, %92, !dbg !1753
  %95 = lshr i16 %94, 1
  %96 = trunc i16 %95 to i8, !dbg !1754
  %97 = getelementptr inbounds i8, ptr %0, i64 7, !dbg !1756
  store i8 %96, ptr %97, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 8, metadata !1620, metadata !DIExpression()), !dbg !1748
  %98 = getelementptr inbounds i8, ptr %2, i64 %10, !dbg !1757
  call void @llvm.dbg.value(metadata ptr %98, metadata !1614, metadata !DIExpression()), !dbg !1748
  %99 = getelementptr inbounds i8, ptr %4, i64 %11, !dbg !1758
  call void @llvm.dbg.value(metadata ptr %99, metadata !1616, metadata !DIExpression()), !dbg !1748
  %100 = getelementptr inbounds i8, ptr %0, i64 %12, !dbg !1759
  call void @llvm.dbg.value(metadata ptr %100, metadata !1610, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 1, metadata !1621, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 1, metadata !1621, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %100, metadata !1610, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %98, metadata !1614, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %99, metadata !1616, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1748
  %101 = load i8, ptr %98, align 1, !dbg !1750, !tbaa !1170
  %102 = zext i8 %101 to i16, !dbg !1750
  %103 = load i8, ptr %99, align 1, !dbg !1751, !tbaa !1170
  %104 = zext i8 %103 to i16, !dbg !1751
  %105 = add nuw nsw i16 %102, 1, !dbg !1752
  %106 = add nuw nsw i16 %105, %104, !dbg !1753
  %107 = lshr i16 %106, 1
  %108 = trunc i16 %107 to i8, !dbg !1754
  store i8 %108, ptr %100, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1748
  %109 = getelementptr inbounds i8, ptr %98, i64 1, !dbg !1750
  %110 = load i8, ptr %109, align 1, !dbg !1750, !tbaa !1170
  %111 = zext i8 %110 to i16, !dbg !1750
  %112 = getelementptr inbounds i8, ptr %99, i64 1, !dbg !1751
  %113 = load i8, ptr %112, align 1, !dbg !1751, !tbaa !1170
  %114 = zext i8 %113 to i16, !dbg !1751
  %115 = add nuw nsw i16 %111, 1, !dbg !1752
  %116 = add nuw nsw i16 %115, %114, !dbg !1753
  %117 = lshr i16 %116, 1
  %118 = trunc i16 %117 to i8, !dbg !1754
  %119 = getelementptr inbounds i8, ptr %100, i64 1, !dbg !1756
  store i8 %118, ptr %119, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1748
  %120 = getelementptr inbounds i8, ptr %98, i64 2, !dbg !1750
  %121 = load i8, ptr %120, align 1, !dbg !1750, !tbaa !1170
  %122 = zext i8 %121 to i16, !dbg !1750
  %123 = getelementptr inbounds i8, ptr %99, i64 2, !dbg !1751
  %124 = load i8, ptr %123, align 1, !dbg !1751, !tbaa !1170
  %125 = zext i8 %124 to i16, !dbg !1751
  %126 = add nuw nsw i16 %122, 1, !dbg !1752
  %127 = add nuw nsw i16 %126, %125, !dbg !1753
  %128 = lshr i16 %127, 1
  %129 = trunc i16 %128 to i8, !dbg !1754
  %130 = getelementptr inbounds i8, ptr %100, i64 2, !dbg !1756
  store i8 %129, ptr %130, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1748
  %131 = getelementptr inbounds i8, ptr %98, i64 3, !dbg !1750
  %132 = load i8, ptr %131, align 1, !dbg !1750, !tbaa !1170
  %133 = zext i8 %132 to i16, !dbg !1750
  %134 = getelementptr inbounds i8, ptr %99, i64 3, !dbg !1751
  %135 = load i8, ptr %134, align 1, !dbg !1751, !tbaa !1170
  %136 = zext i8 %135 to i16, !dbg !1751
  %137 = add nuw nsw i16 %133, 1, !dbg !1752
  %138 = add nuw nsw i16 %137, %136, !dbg !1753
  %139 = lshr i16 %138, 1
  %140 = trunc i16 %139 to i8, !dbg !1754
  %141 = getelementptr inbounds i8, ptr %100, i64 3, !dbg !1756
  store i8 %140, ptr %141, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1748
  %142 = getelementptr inbounds i8, ptr %98, i64 4, !dbg !1750
  %143 = load i8, ptr %142, align 1, !dbg !1750, !tbaa !1170
  %144 = zext i8 %143 to i16, !dbg !1750
  %145 = getelementptr inbounds i8, ptr %99, i64 4, !dbg !1751
  %146 = load i8, ptr %145, align 1, !dbg !1751, !tbaa !1170
  %147 = zext i8 %146 to i16, !dbg !1751
  %148 = add nuw nsw i16 %144, 1, !dbg !1752
  %149 = add nuw nsw i16 %148, %147, !dbg !1753
  %150 = lshr i16 %149, 1
  %151 = trunc i16 %150 to i8, !dbg !1754
  %152 = getelementptr inbounds i8, ptr %100, i64 4, !dbg !1756
  store i8 %151, ptr %152, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1748
  %153 = getelementptr inbounds i8, ptr %98, i64 5, !dbg !1750
  %154 = load i8, ptr %153, align 1, !dbg !1750, !tbaa !1170
  %155 = zext i8 %154 to i16, !dbg !1750
  %156 = getelementptr inbounds i8, ptr %99, i64 5, !dbg !1751
  %157 = load i8, ptr %156, align 1, !dbg !1751, !tbaa !1170
  %158 = zext i8 %157 to i16, !dbg !1751
  %159 = add nuw nsw i16 %155, 1, !dbg !1752
  %160 = add nuw nsw i16 %159, %158, !dbg !1753
  %161 = lshr i16 %160, 1
  %162 = trunc i16 %161 to i8, !dbg !1754
  %163 = getelementptr inbounds i8, ptr %100, i64 5, !dbg !1756
  store i8 %162, ptr %163, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1748
  %164 = getelementptr inbounds i8, ptr %98, i64 6, !dbg !1750
  %165 = load i8, ptr %164, align 1, !dbg !1750, !tbaa !1170
  %166 = zext i8 %165 to i16, !dbg !1750
  %167 = getelementptr inbounds i8, ptr %99, i64 6, !dbg !1751
  %168 = load i8, ptr %167, align 1, !dbg !1751, !tbaa !1170
  %169 = zext i8 %168 to i16, !dbg !1751
  %170 = add nuw nsw i16 %166, 1, !dbg !1752
  %171 = add nuw nsw i16 %170, %169, !dbg !1753
  %172 = lshr i16 %171, 1
  %173 = trunc i16 %172 to i8, !dbg !1754
  %174 = getelementptr inbounds i8, ptr %100, i64 6, !dbg !1756
  store i8 %173, ptr %174, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1748
  %175 = getelementptr inbounds i8, ptr %98, i64 7, !dbg !1750
  %176 = load i8, ptr %175, align 1, !dbg !1750, !tbaa !1170
  %177 = zext i8 %176 to i16, !dbg !1750
  %178 = getelementptr inbounds i8, ptr %99, i64 7, !dbg !1751
  %179 = load i8, ptr %178, align 1, !dbg !1751, !tbaa !1170
  %180 = zext i8 %179 to i16, !dbg !1751
  %181 = add nuw nsw i16 %177, 1, !dbg !1752
  %182 = add nuw nsw i16 %181, %180, !dbg !1753
  %183 = lshr i16 %182, 1
  %184 = trunc i16 %183 to i8, !dbg !1754
  %185 = getelementptr inbounds i8, ptr %100, i64 7, !dbg !1756
  store i8 %184, ptr %185, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 8, metadata !1620, metadata !DIExpression()), !dbg !1748
  %186 = getelementptr inbounds i8, ptr %98, i64 %10, !dbg !1757
  call void @llvm.dbg.value(metadata ptr %186, metadata !1614, metadata !DIExpression()), !dbg !1748
  %187 = getelementptr inbounds i8, ptr %99, i64 %11, !dbg !1758
  call void @llvm.dbg.value(metadata ptr %187, metadata !1616, metadata !DIExpression()), !dbg !1748
  %188 = getelementptr inbounds i8, ptr %100, i64 %12, !dbg !1759
  call void @llvm.dbg.value(metadata ptr %188, metadata !1610, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 2, metadata !1621, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 2, metadata !1621, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %188, metadata !1610, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %186, metadata !1614, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %187, metadata !1616, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1748
  %189 = load i8, ptr %186, align 1, !dbg !1750, !tbaa !1170
  %190 = zext i8 %189 to i16, !dbg !1750
  %191 = load i8, ptr %187, align 1, !dbg !1751, !tbaa !1170
  %192 = zext i8 %191 to i16, !dbg !1751
  %193 = add nuw nsw i16 %190, 1, !dbg !1752
  %194 = add nuw nsw i16 %193, %192, !dbg !1753
  %195 = lshr i16 %194, 1
  %196 = trunc i16 %195 to i8, !dbg !1754
  store i8 %196, ptr %188, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1748
  %197 = getelementptr inbounds i8, ptr %186, i64 1, !dbg !1750
  %198 = load i8, ptr %197, align 1, !dbg !1750, !tbaa !1170
  %199 = zext i8 %198 to i16, !dbg !1750
  %200 = getelementptr inbounds i8, ptr %187, i64 1, !dbg !1751
  %201 = load i8, ptr %200, align 1, !dbg !1751, !tbaa !1170
  %202 = zext i8 %201 to i16, !dbg !1751
  %203 = add nuw nsw i16 %199, 1, !dbg !1752
  %204 = add nuw nsw i16 %203, %202, !dbg !1753
  %205 = lshr i16 %204, 1
  %206 = trunc i16 %205 to i8, !dbg !1754
  %207 = getelementptr inbounds i8, ptr %188, i64 1, !dbg !1756
  store i8 %206, ptr %207, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1748
  %208 = getelementptr inbounds i8, ptr %186, i64 2, !dbg !1750
  %209 = load i8, ptr %208, align 1, !dbg !1750, !tbaa !1170
  %210 = zext i8 %209 to i16, !dbg !1750
  %211 = getelementptr inbounds i8, ptr %187, i64 2, !dbg !1751
  %212 = load i8, ptr %211, align 1, !dbg !1751, !tbaa !1170
  %213 = zext i8 %212 to i16, !dbg !1751
  %214 = add nuw nsw i16 %210, 1, !dbg !1752
  %215 = add nuw nsw i16 %214, %213, !dbg !1753
  %216 = lshr i16 %215, 1
  %217 = trunc i16 %216 to i8, !dbg !1754
  %218 = getelementptr inbounds i8, ptr %188, i64 2, !dbg !1756
  store i8 %217, ptr %218, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1748
  %219 = getelementptr inbounds i8, ptr %186, i64 3, !dbg !1750
  %220 = load i8, ptr %219, align 1, !dbg !1750, !tbaa !1170
  %221 = zext i8 %220 to i16, !dbg !1750
  %222 = getelementptr inbounds i8, ptr %187, i64 3, !dbg !1751
  %223 = load i8, ptr %222, align 1, !dbg !1751, !tbaa !1170
  %224 = zext i8 %223 to i16, !dbg !1751
  %225 = add nuw nsw i16 %221, 1, !dbg !1752
  %226 = add nuw nsw i16 %225, %224, !dbg !1753
  %227 = lshr i16 %226, 1
  %228 = trunc i16 %227 to i8, !dbg !1754
  %229 = getelementptr inbounds i8, ptr %188, i64 3, !dbg !1756
  store i8 %228, ptr %229, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1748
  %230 = getelementptr inbounds i8, ptr %186, i64 4, !dbg !1750
  %231 = load i8, ptr %230, align 1, !dbg !1750, !tbaa !1170
  %232 = zext i8 %231 to i16, !dbg !1750
  %233 = getelementptr inbounds i8, ptr %187, i64 4, !dbg !1751
  %234 = load i8, ptr %233, align 1, !dbg !1751, !tbaa !1170
  %235 = zext i8 %234 to i16, !dbg !1751
  %236 = add nuw nsw i16 %232, 1, !dbg !1752
  %237 = add nuw nsw i16 %236, %235, !dbg !1753
  %238 = lshr i16 %237, 1
  %239 = trunc i16 %238 to i8, !dbg !1754
  %240 = getelementptr inbounds i8, ptr %188, i64 4, !dbg !1756
  store i8 %239, ptr %240, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1748
  %241 = getelementptr inbounds i8, ptr %186, i64 5, !dbg !1750
  %242 = load i8, ptr %241, align 1, !dbg !1750, !tbaa !1170
  %243 = zext i8 %242 to i16, !dbg !1750
  %244 = getelementptr inbounds i8, ptr %187, i64 5, !dbg !1751
  %245 = load i8, ptr %244, align 1, !dbg !1751, !tbaa !1170
  %246 = zext i8 %245 to i16, !dbg !1751
  %247 = add nuw nsw i16 %243, 1, !dbg !1752
  %248 = add nuw nsw i16 %247, %246, !dbg !1753
  %249 = lshr i16 %248, 1
  %250 = trunc i16 %249 to i8, !dbg !1754
  %251 = getelementptr inbounds i8, ptr %188, i64 5, !dbg !1756
  store i8 %250, ptr %251, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1748
  %252 = getelementptr inbounds i8, ptr %186, i64 6, !dbg !1750
  %253 = load i8, ptr %252, align 1, !dbg !1750, !tbaa !1170
  %254 = zext i8 %253 to i16, !dbg !1750
  %255 = getelementptr inbounds i8, ptr %187, i64 6, !dbg !1751
  %256 = load i8, ptr %255, align 1, !dbg !1751, !tbaa !1170
  %257 = zext i8 %256 to i16, !dbg !1751
  %258 = add nuw nsw i16 %254, 1, !dbg !1752
  %259 = add nuw nsw i16 %258, %257, !dbg !1753
  %260 = lshr i16 %259, 1
  %261 = trunc i16 %260 to i8, !dbg !1754
  %262 = getelementptr inbounds i8, ptr %188, i64 6, !dbg !1756
  store i8 %261, ptr %262, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1748
  %263 = getelementptr inbounds i8, ptr %186, i64 7, !dbg !1750
  %264 = load i8, ptr %263, align 1, !dbg !1750, !tbaa !1170
  %265 = zext i8 %264 to i16, !dbg !1750
  %266 = getelementptr inbounds i8, ptr %187, i64 7, !dbg !1751
  %267 = load i8, ptr %266, align 1, !dbg !1751, !tbaa !1170
  %268 = zext i8 %267 to i16, !dbg !1751
  %269 = add nuw nsw i16 %265, 1, !dbg !1752
  %270 = add nuw nsw i16 %269, %268, !dbg !1753
  %271 = lshr i16 %270, 1
  %272 = trunc i16 %271 to i8, !dbg !1754
  %273 = getelementptr inbounds i8, ptr %188, i64 7, !dbg !1756
  store i8 %272, ptr %273, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 8, metadata !1620, metadata !DIExpression()), !dbg !1748
  %274 = getelementptr inbounds i8, ptr %186, i64 %10, !dbg !1757
  call void @llvm.dbg.value(metadata ptr %274, metadata !1614, metadata !DIExpression()), !dbg !1748
  %275 = getelementptr inbounds i8, ptr %187, i64 %11, !dbg !1758
  call void @llvm.dbg.value(metadata ptr %275, metadata !1616, metadata !DIExpression()), !dbg !1748
  %276 = getelementptr inbounds i8, ptr %188, i64 %12, !dbg !1759
  call void @llvm.dbg.value(metadata ptr %276, metadata !1610, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 3, metadata !1621, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 3, metadata !1621, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %276, metadata !1610, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %274, metadata !1614, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata ptr %275, metadata !1616, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1748
  %277 = load i8, ptr %274, align 1, !dbg !1750, !tbaa !1170
  %278 = zext i8 %277 to i16, !dbg !1750
  %279 = load i8, ptr %275, align 1, !dbg !1751, !tbaa !1170
  %280 = zext i8 %279 to i16, !dbg !1751
  %281 = add nuw nsw i16 %278, 1, !dbg !1752
  %282 = add nuw nsw i16 %281, %280, !dbg !1753
  %283 = lshr i16 %282, 1
  %284 = trunc i16 %283 to i8, !dbg !1754
  store i8 %284, ptr %276, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1748
  %285 = getelementptr inbounds i8, ptr %274, i64 1, !dbg !1750
  %286 = load i8, ptr %285, align 1, !dbg !1750, !tbaa !1170
  %287 = zext i8 %286 to i16, !dbg !1750
  %288 = getelementptr inbounds i8, ptr %275, i64 1, !dbg !1751
  %289 = load i8, ptr %288, align 1, !dbg !1751, !tbaa !1170
  %290 = zext i8 %289 to i16, !dbg !1751
  %291 = add nuw nsw i16 %287, 1, !dbg !1752
  %292 = add nuw nsw i16 %291, %290, !dbg !1753
  %293 = lshr i16 %292, 1
  %294 = trunc i16 %293 to i8, !dbg !1754
  %295 = getelementptr inbounds i8, ptr %276, i64 1, !dbg !1756
  store i8 %294, ptr %295, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1748
  %296 = getelementptr inbounds i8, ptr %274, i64 2, !dbg !1750
  %297 = load i8, ptr %296, align 1, !dbg !1750, !tbaa !1170
  %298 = zext i8 %297 to i16, !dbg !1750
  %299 = getelementptr inbounds i8, ptr %275, i64 2, !dbg !1751
  %300 = load i8, ptr %299, align 1, !dbg !1751, !tbaa !1170
  %301 = zext i8 %300 to i16, !dbg !1751
  %302 = add nuw nsw i16 %298, 1, !dbg !1752
  %303 = add nuw nsw i16 %302, %301, !dbg !1753
  %304 = lshr i16 %303, 1
  %305 = trunc i16 %304 to i8, !dbg !1754
  %306 = getelementptr inbounds i8, ptr %276, i64 2, !dbg !1756
  store i8 %305, ptr %306, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1748
  %307 = getelementptr inbounds i8, ptr %274, i64 3, !dbg !1750
  %308 = load i8, ptr %307, align 1, !dbg !1750, !tbaa !1170
  %309 = zext i8 %308 to i16, !dbg !1750
  %310 = getelementptr inbounds i8, ptr %275, i64 3, !dbg !1751
  %311 = load i8, ptr %310, align 1, !dbg !1751, !tbaa !1170
  %312 = zext i8 %311 to i16, !dbg !1751
  %313 = add nuw nsw i16 %309, 1, !dbg !1752
  %314 = add nuw nsw i16 %313, %312, !dbg !1753
  %315 = lshr i16 %314, 1
  %316 = trunc i16 %315 to i8, !dbg !1754
  %317 = getelementptr inbounds i8, ptr %276, i64 3, !dbg !1756
  store i8 %316, ptr %317, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1748
  %318 = getelementptr inbounds i8, ptr %274, i64 4, !dbg !1750
  %319 = load i8, ptr %318, align 1, !dbg !1750, !tbaa !1170
  %320 = zext i8 %319 to i16, !dbg !1750
  %321 = getelementptr inbounds i8, ptr %275, i64 4, !dbg !1751
  %322 = load i8, ptr %321, align 1, !dbg !1751, !tbaa !1170
  %323 = zext i8 %322 to i16, !dbg !1751
  %324 = add nuw nsw i16 %320, 1, !dbg !1752
  %325 = add nuw nsw i16 %324, %323, !dbg !1753
  %326 = lshr i16 %325, 1
  %327 = trunc i16 %326 to i8, !dbg !1754
  %328 = getelementptr inbounds i8, ptr %276, i64 4, !dbg !1756
  store i8 %327, ptr %328, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 5, metadata !1620, metadata !DIExpression()), !dbg !1748
  %329 = getelementptr inbounds i8, ptr %274, i64 5, !dbg !1750
  %330 = load i8, ptr %329, align 1, !dbg !1750, !tbaa !1170
  %331 = zext i8 %330 to i16, !dbg !1750
  %332 = getelementptr inbounds i8, ptr %275, i64 5, !dbg !1751
  %333 = load i8, ptr %332, align 1, !dbg !1751, !tbaa !1170
  %334 = zext i8 %333 to i16, !dbg !1751
  %335 = add nuw nsw i16 %331, 1, !dbg !1752
  %336 = add nuw nsw i16 %335, %334, !dbg !1753
  %337 = lshr i16 %336, 1
  %338 = trunc i16 %337 to i8, !dbg !1754
  %339 = getelementptr inbounds i8, ptr %276, i64 5, !dbg !1756
  store i8 %338, ptr %339, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 6, metadata !1620, metadata !DIExpression()), !dbg !1748
  %340 = getelementptr inbounds i8, ptr %274, i64 6, !dbg !1750
  %341 = load i8, ptr %340, align 1, !dbg !1750, !tbaa !1170
  %342 = zext i8 %341 to i16, !dbg !1750
  %343 = getelementptr inbounds i8, ptr %275, i64 6, !dbg !1751
  %344 = load i8, ptr %343, align 1, !dbg !1751, !tbaa !1170
  %345 = zext i8 %344 to i16, !dbg !1751
  %346 = add nuw nsw i16 %342, 1, !dbg !1752
  %347 = add nuw nsw i16 %346, %345, !dbg !1753
  %348 = lshr i16 %347, 1
  %349 = trunc i16 %348 to i8, !dbg !1754
  %350 = getelementptr inbounds i8, ptr %276, i64 6, !dbg !1756
  store i8 %349, ptr %350, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i64 7, metadata !1620, metadata !DIExpression()), !dbg !1748
  %351 = getelementptr inbounds i8, ptr %274, i64 7, !dbg !1750
  %352 = load i8, ptr %351, align 1, !dbg !1750, !tbaa !1170
  %353 = zext i8 %352 to i16, !dbg !1750
  %354 = getelementptr inbounds i8, ptr %275, i64 7, !dbg !1751
  %355 = load i8, ptr %354, align 1, !dbg !1751, !tbaa !1170
  %356 = zext i8 %355 to i16, !dbg !1751
  %357 = add nuw nsw i16 %353, 1, !dbg !1752
  %358 = add nuw nsw i16 %357, %356, !dbg !1753
  %359 = lshr i16 %358, 1
  %360 = trunc i16 %359 to i8, !dbg !1754
  %361 = getelementptr inbounds i8, ptr %276, i64 7, !dbg !1756
  store i8 %360, ptr %361, align 1, !dbg !1755, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 8, metadata !1620, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata !DIArgList(ptr %274, i64 %10), metadata !1614, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1748
  call void @llvm.dbg.value(metadata !DIArgList(ptr %275, i64 %11), metadata !1616, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1748
  call void @llvm.dbg.value(metadata !DIArgList(ptr %276, i64 %12), metadata !1610, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1748
  call void @llvm.dbg.value(metadata i32 4, metadata !1621, metadata !DIExpression()), !dbg !1748
  br label %363, !dbg !1747

362:                                              ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 8, i32 noundef 4, i32 noundef %6), !dbg !1745
  br label %363

363:                                              ; preds = %9, %362
  ret void, !dbg !1747
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_4x8(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #4 !dbg !1760 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1762, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %1, metadata !1763, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata ptr %2, metadata !1764, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %3, metadata !1765, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata ptr %4, metadata !1766, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %5, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %6, metadata !1768, metadata !DIExpression()), !dbg !1769
  %8 = icmp eq i32 %6, 32, !dbg !1770
  br i1 %8, label %9, label %362, !dbg !1772

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %1, metadata !1613, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %3, metadata !1615, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 %5, metadata !1617, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 4, metadata !1618, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 8, metadata !1619, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1773
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  %13 = load i8, ptr %2, align 1, !dbg !1775, !tbaa !1170
  %14 = zext i8 %13 to i16, !dbg !1775
  %15 = load i8, ptr %4, align 1, !dbg !1776, !tbaa !1170
  %16 = zext i8 %15 to i16, !dbg !1776
  %17 = add nuw nsw i16 %14, 1, !dbg !1777
  %18 = add nuw nsw i16 %17, %16, !dbg !1778
  %19 = lshr i16 %18, 1
  %20 = trunc i16 %19 to i8, !dbg !1779
  store i8 %20, ptr %0, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  %21 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1775
  %22 = load i8, ptr %21, align 1, !dbg !1775, !tbaa !1170
  %23 = zext i8 %22 to i16, !dbg !1775
  %24 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1776
  %25 = load i8, ptr %24, align 1, !dbg !1776, !tbaa !1170
  %26 = zext i8 %25 to i16, !dbg !1776
  %27 = add nuw nsw i16 %23, 1, !dbg !1777
  %28 = add nuw nsw i16 %27, %26, !dbg !1778
  %29 = lshr i16 %28, 1
  %30 = trunc i16 %29 to i8, !dbg !1779
  %31 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1781
  store i8 %30, ptr %31, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  %32 = getelementptr inbounds i8, ptr %2, i64 2, !dbg !1775
  %33 = load i8, ptr %32, align 1, !dbg !1775, !tbaa !1170
  %34 = zext i8 %33 to i16, !dbg !1775
  %35 = getelementptr inbounds i8, ptr %4, i64 2, !dbg !1776
  %36 = load i8, ptr %35, align 1, !dbg !1776, !tbaa !1170
  %37 = zext i8 %36 to i16, !dbg !1776
  %38 = add nuw nsw i16 %34, 1, !dbg !1777
  %39 = add nuw nsw i16 %38, %37, !dbg !1778
  %40 = lshr i16 %39, 1
  %41 = trunc i16 %40 to i8, !dbg !1779
  %42 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1781
  store i8 %41, ptr %42, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  %43 = getelementptr inbounds i8, ptr %2, i64 3, !dbg !1775
  %44 = load i8, ptr %43, align 1, !dbg !1775, !tbaa !1170
  %45 = zext i8 %44 to i16, !dbg !1775
  %46 = getelementptr inbounds i8, ptr %4, i64 3, !dbg !1776
  %47 = load i8, ptr %46, align 1, !dbg !1776, !tbaa !1170
  %48 = zext i8 %47 to i16, !dbg !1776
  %49 = add nuw nsw i16 %45, 1, !dbg !1777
  %50 = add nuw nsw i16 %49, %48, !dbg !1778
  %51 = lshr i16 %50, 1
  %52 = trunc i16 %51 to i8, !dbg !1779
  %53 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1781
  store i8 %52, ptr %53, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1773
  %54 = getelementptr inbounds i8, ptr %2, i64 %10, !dbg !1782
  call void @llvm.dbg.value(metadata ptr %54, metadata !1614, metadata !DIExpression()), !dbg !1773
  %55 = getelementptr inbounds i8, ptr %4, i64 %11, !dbg !1783
  call void @llvm.dbg.value(metadata ptr %55, metadata !1616, metadata !DIExpression()), !dbg !1773
  %56 = getelementptr inbounds i8, ptr %0, i64 %12, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %56, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 1, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 1, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %56, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %54, metadata !1614, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %55, metadata !1616, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  %57 = load i8, ptr %54, align 1, !dbg !1775, !tbaa !1170
  %58 = zext i8 %57 to i16, !dbg !1775
  %59 = load i8, ptr %55, align 1, !dbg !1776, !tbaa !1170
  %60 = zext i8 %59 to i16, !dbg !1776
  %61 = add nuw nsw i16 %58, 1, !dbg !1777
  %62 = add nuw nsw i16 %61, %60, !dbg !1778
  %63 = lshr i16 %62, 1
  %64 = trunc i16 %63 to i8, !dbg !1779
  store i8 %64, ptr %56, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  %65 = getelementptr inbounds i8, ptr %54, i64 1, !dbg !1775
  %66 = load i8, ptr %65, align 1, !dbg !1775, !tbaa !1170
  %67 = zext i8 %66 to i16, !dbg !1775
  %68 = getelementptr inbounds i8, ptr %55, i64 1, !dbg !1776
  %69 = load i8, ptr %68, align 1, !dbg !1776, !tbaa !1170
  %70 = zext i8 %69 to i16, !dbg !1776
  %71 = add nuw nsw i16 %67, 1, !dbg !1777
  %72 = add nuw nsw i16 %71, %70, !dbg !1778
  %73 = lshr i16 %72, 1
  %74 = trunc i16 %73 to i8, !dbg !1779
  %75 = getelementptr inbounds i8, ptr %56, i64 1, !dbg !1781
  store i8 %74, ptr %75, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  %76 = getelementptr inbounds i8, ptr %54, i64 2, !dbg !1775
  %77 = load i8, ptr %76, align 1, !dbg !1775, !tbaa !1170
  %78 = zext i8 %77 to i16, !dbg !1775
  %79 = getelementptr inbounds i8, ptr %55, i64 2, !dbg !1776
  %80 = load i8, ptr %79, align 1, !dbg !1776, !tbaa !1170
  %81 = zext i8 %80 to i16, !dbg !1776
  %82 = add nuw nsw i16 %78, 1, !dbg !1777
  %83 = add nuw nsw i16 %82, %81, !dbg !1778
  %84 = lshr i16 %83, 1
  %85 = trunc i16 %84 to i8, !dbg !1779
  %86 = getelementptr inbounds i8, ptr %56, i64 2, !dbg !1781
  store i8 %85, ptr %86, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  %87 = getelementptr inbounds i8, ptr %54, i64 3, !dbg !1775
  %88 = load i8, ptr %87, align 1, !dbg !1775, !tbaa !1170
  %89 = zext i8 %88 to i16, !dbg !1775
  %90 = getelementptr inbounds i8, ptr %55, i64 3, !dbg !1776
  %91 = load i8, ptr %90, align 1, !dbg !1776, !tbaa !1170
  %92 = zext i8 %91 to i16, !dbg !1776
  %93 = add nuw nsw i16 %89, 1, !dbg !1777
  %94 = add nuw nsw i16 %93, %92, !dbg !1778
  %95 = lshr i16 %94, 1
  %96 = trunc i16 %95 to i8, !dbg !1779
  %97 = getelementptr inbounds i8, ptr %56, i64 3, !dbg !1781
  store i8 %96, ptr %97, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1773
  %98 = getelementptr inbounds i8, ptr %54, i64 %10, !dbg !1782
  call void @llvm.dbg.value(metadata ptr %98, metadata !1614, metadata !DIExpression()), !dbg !1773
  %99 = getelementptr inbounds i8, ptr %55, i64 %11, !dbg !1783
  call void @llvm.dbg.value(metadata ptr %99, metadata !1616, metadata !DIExpression()), !dbg !1773
  %100 = getelementptr inbounds i8, ptr %56, i64 %12, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %100, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 2, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 2, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %100, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %98, metadata !1614, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %99, metadata !1616, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  %101 = load i8, ptr %98, align 1, !dbg !1775, !tbaa !1170
  %102 = zext i8 %101 to i16, !dbg !1775
  %103 = load i8, ptr %99, align 1, !dbg !1776, !tbaa !1170
  %104 = zext i8 %103 to i16, !dbg !1776
  %105 = add nuw nsw i16 %102, 1, !dbg !1777
  %106 = add nuw nsw i16 %105, %104, !dbg !1778
  %107 = lshr i16 %106, 1
  %108 = trunc i16 %107 to i8, !dbg !1779
  store i8 %108, ptr %100, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  %109 = getelementptr inbounds i8, ptr %98, i64 1, !dbg !1775
  %110 = load i8, ptr %109, align 1, !dbg !1775, !tbaa !1170
  %111 = zext i8 %110 to i16, !dbg !1775
  %112 = getelementptr inbounds i8, ptr %99, i64 1, !dbg !1776
  %113 = load i8, ptr %112, align 1, !dbg !1776, !tbaa !1170
  %114 = zext i8 %113 to i16, !dbg !1776
  %115 = add nuw nsw i16 %111, 1, !dbg !1777
  %116 = add nuw nsw i16 %115, %114, !dbg !1778
  %117 = lshr i16 %116, 1
  %118 = trunc i16 %117 to i8, !dbg !1779
  %119 = getelementptr inbounds i8, ptr %100, i64 1, !dbg !1781
  store i8 %118, ptr %119, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  %120 = getelementptr inbounds i8, ptr %98, i64 2, !dbg !1775
  %121 = load i8, ptr %120, align 1, !dbg !1775, !tbaa !1170
  %122 = zext i8 %121 to i16, !dbg !1775
  %123 = getelementptr inbounds i8, ptr %99, i64 2, !dbg !1776
  %124 = load i8, ptr %123, align 1, !dbg !1776, !tbaa !1170
  %125 = zext i8 %124 to i16, !dbg !1776
  %126 = add nuw nsw i16 %122, 1, !dbg !1777
  %127 = add nuw nsw i16 %126, %125, !dbg !1778
  %128 = lshr i16 %127, 1
  %129 = trunc i16 %128 to i8, !dbg !1779
  %130 = getelementptr inbounds i8, ptr %100, i64 2, !dbg !1781
  store i8 %129, ptr %130, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  %131 = getelementptr inbounds i8, ptr %98, i64 3, !dbg !1775
  %132 = load i8, ptr %131, align 1, !dbg !1775, !tbaa !1170
  %133 = zext i8 %132 to i16, !dbg !1775
  %134 = getelementptr inbounds i8, ptr %99, i64 3, !dbg !1776
  %135 = load i8, ptr %134, align 1, !dbg !1776, !tbaa !1170
  %136 = zext i8 %135 to i16, !dbg !1776
  %137 = add nuw nsw i16 %133, 1, !dbg !1777
  %138 = add nuw nsw i16 %137, %136, !dbg !1778
  %139 = lshr i16 %138, 1
  %140 = trunc i16 %139 to i8, !dbg !1779
  %141 = getelementptr inbounds i8, ptr %100, i64 3, !dbg !1781
  store i8 %140, ptr %141, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1773
  %142 = getelementptr inbounds i8, ptr %98, i64 %10, !dbg !1782
  call void @llvm.dbg.value(metadata ptr %142, metadata !1614, metadata !DIExpression()), !dbg !1773
  %143 = getelementptr inbounds i8, ptr %99, i64 %11, !dbg !1783
  call void @llvm.dbg.value(metadata ptr %143, metadata !1616, metadata !DIExpression()), !dbg !1773
  %144 = getelementptr inbounds i8, ptr %100, i64 %12, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %144, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 3, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 3, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %144, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %142, metadata !1614, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %143, metadata !1616, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  %145 = load i8, ptr %142, align 1, !dbg !1775, !tbaa !1170
  %146 = zext i8 %145 to i16, !dbg !1775
  %147 = load i8, ptr %143, align 1, !dbg !1776, !tbaa !1170
  %148 = zext i8 %147 to i16, !dbg !1776
  %149 = add nuw nsw i16 %146, 1, !dbg !1777
  %150 = add nuw nsw i16 %149, %148, !dbg !1778
  %151 = lshr i16 %150, 1
  %152 = trunc i16 %151 to i8, !dbg !1779
  store i8 %152, ptr %144, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  %153 = getelementptr inbounds i8, ptr %142, i64 1, !dbg !1775
  %154 = load i8, ptr %153, align 1, !dbg !1775, !tbaa !1170
  %155 = zext i8 %154 to i16, !dbg !1775
  %156 = getelementptr inbounds i8, ptr %143, i64 1, !dbg !1776
  %157 = load i8, ptr %156, align 1, !dbg !1776, !tbaa !1170
  %158 = zext i8 %157 to i16, !dbg !1776
  %159 = add nuw nsw i16 %155, 1, !dbg !1777
  %160 = add nuw nsw i16 %159, %158, !dbg !1778
  %161 = lshr i16 %160, 1
  %162 = trunc i16 %161 to i8, !dbg !1779
  %163 = getelementptr inbounds i8, ptr %144, i64 1, !dbg !1781
  store i8 %162, ptr %163, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  %164 = getelementptr inbounds i8, ptr %142, i64 2, !dbg !1775
  %165 = load i8, ptr %164, align 1, !dbg !1775, !tbaa !1170
  %166 = zext i8 %165 to i16, !dbg !1775
  %167 = getelementptr inbounds i8, ptr %143, i64 2, !dbg !1776
  %168 = load i8, ptr %167, align 1, !dbg !1776, !tbaa !1170
  %169 = zext i8 %168 to i16, !dbg !1776
  %170 = add nuw nsw i16 %166, 1, !dbg !1777
  %171 = add nuw nsw i16 %170, %169, !dbg !1778
  %172 = lshr i16 %171, 1
  %173 = trunc i16 %172 to i8, !dbg !1779
  %174 = getelementptr inbounds i8, ptr %144, i64 2, !dbg !1781
  store i8 %173, ptr %174, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  %175 = getelementptr inbounds i8, ptr %142, i64 3, !dbg !1775
  %176 = load i8, ptr %175, align 1, !dbg !1775, !tbaa !1170
  %177 = zext i8 %176 to i16, !dbg !1775
  %178 = getelementptr inbounds i8, ptr %143, i64 3, !dbg !1776
  %179 = load i8, ptr %178, align 1, !dbg !1776, !tbaa !1170
  %180 = zext i8 %179 to i16, !dbg !1776
  %181 = add nuw nsw i16 %177, 1, !dbg !1777
  %182 = add nuw nsw i16 %181, %180, !dbg !1778
  %183 = lshr i16 %182, 1
  %184 = trunc i16 %183 to i8, !dbg !1779
  %185 = getelementptr inbounds i8, ptr %144, i64 3, !dbg !1781
  store i8 %184, ptr %185, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1773
  %186 = getelementptr inbounds i8, ptr %142, i64 %10, !dbg !1782
  call void @llvm.dbg.value(metadata ptr %186, metadata !1614, metadata !DIExpression()), !dbg !1773
  %187 = getelementptr inbounds i8, ptr %143, i64 %11, !dbg !1783
  call void @llvm.dbg.value(metadata ptr %187, metadata !1616, metadata !DIExpression()), !dbg !1773
  %188 = getelementptr inbounds i8, ptr %144, i64 %12, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %188, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 4, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 4, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %188, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %186, metadata !1614, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %187, metadata !1616, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  %189 = load i8, ptr %186, align 1, !dbg !1775, !tbaa !1170
  %190 = zext i8 %189 to i16, !dbg !1775
  %191 = load i8, ptr %187, align 1, !dbg !1776, !tbaa !1170
  %192 = zext i8 %191 to i16, !dbg !1776
  %193 = add nuw nsw i16 %190, 1, !dbg !1777
  %194 = add nuw nsw i16 %193, %192, !dbg !1778
  %195 = lshr i16 %194, 1
  %196 = trunc i16 %195 to i8, !dbg !1779
  store i8 %196, ptr %188, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  %197 = getelementptr inbounds i8, ptr %186, i64 1, !dbg !1775
  %198 = load i8, ptr %197, align 1, !dbg !1775, !tbaa !1170
  %199 = zext i8 %198 to i16, !dbg !1775
  %200 = getelementptr inbounds i8, ptr %187, i64 1, !dbg !1776
  %201 = load i8, ptr %200, align 1, !dbg !1776, !tbaa !1170
  %202 = zext i8 %201 to i16, !dbg !1776
  %203 = add nuw nsw i16 %199, 1, !dbg !1777
  %204 = add nuw nsw i16 %203, %202, !dbg !1778
  %205 = lshr i16 %204, 1
  %206 = trunc i16 %205 to i8, !dbg !1779
  %207 = getelementptr inbounds i8, ptr %188, i64 1, !dbg !1781
  store i8 %206, ptr %207, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  %208 = getelementptr inbounds i8, ptr %186, i64 2, !dbg !1775
  %209 = load i8, ptr %208, align 1, !dbg !1775, !tbaa !1170
  %210 = zext i8 %209 to i16, !dbg !1775
  %211 = getelementptr inbounds i8, ptr %187, i64 2, !dbg !1776
  %212 = load i8, ptr %211, align 1, !dbg !1776, !tbaa !1170
  %213 = zext i8 %212 to i16, !dbg !1776
  %214 = add nuw nsw i16 %210, 1, !dbg !1777
  %215 = add nuw nsw i16 %214, %213, !dbg !1778
  %216 = lshr i16 %215, 1
  %217 = trunc i16 %216 to i8, !dbg !1779
  %218 = getelementptr inbounds i8, ptr %188, i64 2, !dbg !1781
  store i8 %217, ptr %218, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  %219 = getelementptr inbounds i8, ptr %186, i64 3, !dbg !1775
  %220 = load i8, ptr %219, align 1, !dbg !1775, !tbaa !1170
  %221 = zext i8 %220 to i16, !dbg !1775
  %222 = getelementptr inbounds i8, ptr %187, i64 3, !dbg !1776
  %223 = load i8, ptr %222, align 1, !dbg !1776, !tbaa !1170
  %224 = zext i8 %223 to i16, !dbg !1776
  %225 = add nuw nsw i16 %221, 1, !dbg !1777
  %226 = add nuw nsw i16 %225, %224, !dbg !1778
  %227 = lshr i16 %226, 1
  %228 = trunc i16 %227 to i8, !dbg !1779
  %229 = getelementptr inbounds i8, ptr %188, i64 3, !dbg !1781
  store i8 %228, ptr %229, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1773
  %230 = getelementptr inbounds i8, ptr %186, i64 %10, !dbg !1782
  call void @llvm.dbg.value(metadata ptr %230, metadata !1614, metadata !DIExpression()), !dbg !1773
  %231 = getelementptr inbounds i8, ptr %187, i64 %11, !dbg !1783
  call void @llvm.dbg.value(metadata ptr %231, metadata !1616, metadata !DIExpression()), !dbg !1773
  %232 = getelementptr inbounds i8, ptr %188, i64 %12, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %232, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 5, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 5, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %232, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %230, metadata !1614, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %231, metadata !1616, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  %233 = load i8, ptr %230, align 1, !dbg !1775, !tbaa !1170
  %234 = zext i8 %233 to i16, !dbg !1775
  %235 = load i8, ptr %231, align 1, !dbg !1776, !tbaa !1170
  %236 = zext i8 %235 to i16, !dbg !1776
  %237 = add nuw nsw i16 %234, 1, !dbg !1777
  %238 = add nuw nsw i16 %237, %236, !dbg !1778
  %239 = lshr i16 %238, 1
  %240 = trunc i16 %239 to i8, !dbg !1779
  store i8 %240, ptr %232, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  %241 = getelementptr inbounds i8, ptr %230, i64 1, !dbg !1775
  %242 = load i8, ptr %241, align 1, !dbg !1775, !tbaa !1170
  %243 = zext i8 %242 to i16, !dbg !1775
  %244 = getelementptr inbounds i8, ptr %231, i64 1, !dbg !1776
  %245 = load i8, ptr %244, align 1, !dbg !1776, !tbaa !1170
  %246 = zext i8 %245 to i16, !dbg !1776
  %247 = add nuw nsw i16 %243, 1, !dbg !1777
  %248 = add nuw nsw i16 %247, %246, !dbg !1778
  %249 = lshr i16 %248, 1
  %250 = trunc i16 %249 to i8, !dbg !1779
  %251 = getelementptr inbounds i8, ptr %232, i64 1, !dbg !1781
  store i8 %250, ptr %251, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  %252 = getelementptr inbounds i8, ptr %230, i64 2, !dbg !1775
  %253 = load i8, ptr %252, align 1, !dbg !1775, !tbaa !1170
  %254 = zext i8 %253 to i16, !dbg !1775
  %255 = getelementptr inbounds i8, ptr %231, i64 2, !dbg !1776
  %256 = load i8, ptr %255, align 1, !dbg !1776, !tbaa !1170
  %257 = zext i8 %256 to i16, !dbg !1776
  %258 = add nuw nsw i16 %254, 1, !dbg !1777
  %259 = add nuw nsw i16 %258, %257, !dbg !1778
  %260 = lshr i16 %259, 1
  %261 = trunc i16 %260 to i8, !dbg !1779
  %262 = getelementptr inbounds i8, ptr %232, i64 2, !dbg !1781
  store i8 %261, ptr %262, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  %263 = getelementptr inbounds i8, ptr %230, i64 3, !dbg !1775
  %264 = load i8, ptr %263, align 1, !dbg !1775, !tbaa !1170
  %265 = zext i8 %264 to i16, !dbg !1775
  %266 = getelementptr inbounds i8, ptr %231, i64 3, !dbg !1776
  %267 = load i8, ptr %266, align 1, !dbg !1776, !tbaa !1170
  %268 = zext i8 %267 to i16, !dbg !1776
  %269 = add nuw nsw i16 %265, 1, !dbg !1777
  %270 = add nuw nsw i16 %269, %268, !dbg !1778
  %271 = lshr i16 %270, 1
  %272 = trunc i16 %271 to i8, !dbg !1779
  %273 = getelementptr inbounds i8, ptr %232, i64 3, !dbg !1781
  store i8 %272, ptr %273, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1773
  %274 = getelementptr inbounds i8, ptr %230, i64 %10, !dbg !1782
  call void @llvm.dbg.value(metadata ptr %274, metadata !1614, metadata !DIExpression()), !dbg !1773
  %275 = getelementptr inbounds i8, ptr %231, i64 %11, !dbg !1783
  call void @llvm.dbg.value(metadata ptr %275, metadata !1616, metadata !DIExpression()), !dbg !1773
  %276 = getelementptr inbounds i8, ptr %232, i64 %12, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %276, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 6, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 6, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %276, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %274, metadata !1614, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %275, metadata !1616, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  %277 = load i8, ptr %274, align 1, !dbg !1775, !tbaa !1170
  %278 = zext i8 %277 to i16, !dbg !1775
  %279 = load i8, ptr %275, align 1, !dbg !1776, !tbaa !1170
  %280 = zext i8 %279 to i16, !dbg !1776
  %281 = add nuw nsw i16 %278, 1, !dbg !1777
  %282 = add nuw nsw i16 %281, %280, !dbg !1778
  %283 = lshr i16 %282, 1
  %284 = trunc i16 %283 to i8, !dbg !1779
  store i8 %284, ptr %276, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  %285 = getelementptr inbounds i8, ptr %274, i64 1, !dbg !1775
  %286 = load i8, ptr %285, align 1, !dbg !1775, !tbaa !1170
  %287 = zext i8 %286 to i16, !dbg !1775
  %288 = getelementptr inbounds i8, ptr %275, i64 1, !dbg !1776
  %289 = load i8, ptr %288, align 1, !dbg !1776, !tbaa !1170
  %290 = zext i8 %289 to i16, !dbg !1776
  %291 = add nuw nsw i16 %287, 1, !dbg !1777
  %292 = add nuw nsw i16 %291, %290, !dbg !1778
  %293 = lshr i16 %292, 1
  %294 = trunc i16 %293 to i8, !dbg !1779
  %295 = getelementptr inbounds i8, ptr %276, i64 1, !dbg !1781
  store i8 %294, ptr %295, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  %296 = getelementptr inbounds i8, ptr %274, i64 2, !dbg !1775
  %297 = load i8, ptr %296, align 1, !dbg !1775, !tbaa !1170
  %298 = zext i8 %297 to i16, !dbg !1775
  %299 = getelementptr inbounds i8, ptr %275, i64 2, !dbg !1776
  %300 = load i8, ptr %299, align 1, !dbg !1776, !tbaa !1170
  %301 = zext i8 %300 to i16, !dbg !1776
  %302 = add nuw nsw i16 %298, 1, !dbg !1777
  %303 = add nuw nsw i16 %302, %301, !dbg !1778
  %304 = lshr i16 %303, 1
  %305 = trunc i16 %304 to i8, !dbg !1779
  %306 = getelementptr inbounds i8, ptr %276, i64 2, !dbg !1781
  store i8 %305, ptr %306, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  %307 = getelementptr inbounds i8, ptr %274, i64 3, !dbg !1775
  %308 = load i8, ptr %307, align 1, !dbg !1775, !tbaa !1170
  %309 = zext i8 %308 to i16, !dbg !1775
  %310 = getelementptr inbounds i8, ptr %275, i64 3, !dbg !1776
  %311 = load i8, ptr %310, align 1, !dbg !1776, !tbaa !1170
  %312 = zext i8 %311 to i16, !dbg !1776
  %313 = add nuw nsw i16 %309, 1, !dbg !1777
  %314 = add nuw nsw i16 %313, %312, !dbg !1778
  %315 = lshr i16 %314, 1
  %316 = trunc i16 %315 to i8, !dbg !1779
  %317 = getelementptr inbounds i8, ptr %276, i64 3, !dbg !1781
  store i8 %316, ptr %317, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1773
  %318 = getelementptr inbounds i8, ptr %274, i64 %10, !dbg !1782
  call void @llvm.dbg.value(metadata ptr %318, metadata !1614, metadata !DIExpression()), !dbg !1773
  %319 = getelementptr inbounds i8, ptr %275, i64 %11, !dbg !1783
  call void @llvm.dbg.value(metadata ptr %319, metadata !1616, metadata !DIExpression()), !dbg !1773
  %320 = getelementptr inbounds i8, ptr %276, i64 %12, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %320, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 7, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 7, metadata !1621, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %320, metadata !1610, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %318, metadata !1614, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %319, metadata !1616, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1773
  %321 = load i8, ptr %318, align 1, !dbg !1775, !tbaa !1170
  %322 = zext i8 %321 to i16, !dbg !1775
  %323 = load i8, ptr %319, align 1, !dbg !1776, !tbaa !1170
  %324 = zext i8 %323 to i16, !dbg !1776
  %325 = add nuw nsw i16 %322, 1, !dbg !1777
  %326 = add nuw nsw i16 %325, %324, !dbg !1778
  %327 = lshr i16 %326, 1
  %328 = trunc i16 %327 to i8, !dbg !1779
  store i8 %328, ptr %320, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1773
  %329 = getelementptr inbounds i8, ptr %318, i64 1, !dbg !1775
  %330 = load i8, ptr %329, align 1, !dbg !1775, !tbaa !1170
  %331 = zext i8 %330 to i16, !dbg !1775
  %332 = getelementptr inbounds i8, ptr %319, i64 1, !dbg !1776
  %333 = load i8, ptr %332, align 1, !dbg !1776, !tbaa !1170
  %334 = zext i8 %333 to i16, !dbg !1776
  %335 = add nuw nsw i16 %331, 1, !dbg !1777
  %336 = add nuw nsw i16 %335, %334, !dbg !1778
  %337 = lshr i16 %336, 1
  %338 = trunc i16 %337 to i8, !dbg !1779
  %339 = getelementptr inbounds i8, ptr %320, i64 1, !dbg !1781
  store i8 %338, ptr %339, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1773
  %340 = getelementptr inbounds i8, ptr %318, i64 2, !dbg !1775
  %341 = load i8, ptr %340, align 1, !dbg !1775, !tbaa !1170
  %342 = zext i8 %341 to i16, !dbg !1775
  %343 = getelementptr inbounds i8, ptr %319, i64 2, !dbg !1776
  %344 = load i8, ptr %343, align 1, !dbg !1776, !tbaa !1170
  %345 = zext i8 %344 to i16, !dbg !1776
  %346 = add nuw nsw i16 %342, 1, !dbg !1777
  %347 = add nuw nsw i16 %346, %345, !dbg !1778
  %348 = lshr i16 %347, 1
  %349 = trunc i16 %348 to i8, !dbg !1779
  %350 = getelementptr inbounds i8, ptr %320, i64 2, !dbg !1781
  store i8 %349, ptr %350, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1773
  %351 = getelementptr inbounds i8, ptr %318, i64 3, !dbg !1775
  %352 = load i8, ptr %351, align 1, !dbg !1775, !tbaa !1170
  %353 = zext i8 %352 to i16, !dbg !1775
  %354 = getelementptr inbounds i8, ptr %319, i64 3, !dbg !1776
  %355 = load i8, ptr %354, align 1, !dbg !1776, !tbaa !1170
  %356 = zext i8 %355 to i16, !dbg !1776
  %357 = add nuw nsw i16 %353, 1, !dbg !1777
  %358 = add nuw nsw i16 %357, %356, !dbg !1778
  %359 = lshr i16 %358, 1
  %360 = trunc i16 %359 to i8, !dbg !1779
  %361 = getelementptr inbounds i8, ptr %320, i64 3, !dbg !1781
  store i8 %360, ptr %361, align 1, !dbg !1780, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata !DIArgList(ptr %318, i64 %10), metadata !1614, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1773
  call void @llvm.dbg.value(metadata !DIArgList(ptr %319, i64 %11), metadata !1616, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1773
  call void @llvm.dbg.value(metadata !DIArgList(ptr %320, i64 %12), metadata !1610, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1773
  call void @llvm.dbg.value(metadata i32 8, metadata !1621, metadata !DIExpression()), !dbg !1773
  br label %442, !dbg !1772

362:                                              ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1785, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %1, metadata !1790, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata ptr %2, metadata !1791, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %3, metadata !1792, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata ptr %4, metadata !1793, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %5, metadata !1794, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 4, metadata !1795, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 8, metadata !1796, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %6, metadata !1797, metadata !DIExpression()), !dbg !1800
  %363 = sub nsw i32 64, %6, !dbg !1802
  call void @llvm.dbg.value(metadata i32 %363, metadata !1799, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 0, metadata !1798, metadata !DIExpression()), !dbg !1800
  %364 = sext i32 %1 to i64
  %365 = sext i32 %3 to i64
  %366 = sext i32 %5 to i64
  br label %367

367:                                              ; preds = %367, %362
  %368 = phi ptr [ %438, %367 ], [ %0, %362 ]
  %369 = phi i32 [ %437, %367 ], [ 0, %362 ]
  %370 = phi ptr [ %439, %367 ], [ %2, %362 ]
  %371 = phi ptr [ %440, %367 ], [ %4, %362 ]
  call void @llvm.dbg.value(metadata ptr %368, metadata !1785, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %369, metadata !1798, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata ptr %370, metadata !1791, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata ptr %371, metadata !1793, metadata !DIExpression()), !dbg !1800
  %372 = load i8, ptr %370, align 1, !dbg !1803, !tbaa !1170
  %373 = zext i8 %372 to i32, !dbg !1803
  %374 = mul nsw i32 %373, %6, !dbg !1803
  %375 = load i8, ptr %371, align 1, !dbg !1803, !tbaa !1170
  %376 = zext i8 %375 to i32, !dbg !1803
  %377 = mul nsw i32 %363, %376, !dbg !1803
  %378 = add nsw i32 %377, %374, !dbg !1803
  %379 = add nsw i32 %378, 32, !dbg !1803
  %380 = lshr i32 %379, 6, !dbg !1803
  call void @llvm.dbg.value(metadata i32 %379, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1812
  %381 = icmp ult i32 %379, 16384, !dbg !1814
  %382 = icmp sgt i32 %378, 31, !dbg !1815
  %383 = sext i1 %382 to i32, !dbg !1815
  %384 = select i1 %381, i32 %380, i32 %383, !dbg !1815
  %385 = trunc i32 %384 to i8, !dbg !1815
  store i8 %385, ptr %368, align 1, !dbg !1803, !tbaa !1170
  %386 = getelementptr inbounds i8, ptr %370, i64 1, !dbg !1816
  %387 = load i8, ptr %386, align 1, !dbg !1816, !tbaa !1170
  %388 = zext i8 %387 to i32, !dbg !1816
  %389 = mul nsw i32 %388, %6, !dbg !1816
  %390 = getelementptr inbounds i8, ptr %371, i64 1, !dbg !1816
  %391 = load i8, ptr %390, align 1, !dbg !1816, !tbaa !1170
  %392 = zext i8 %391 to i32, !dbg !1816
  %393 = mul nsw i32 %363, %392, !dbg !1816
  %394 = add nsw i32 %393, %389, !dbg !1816
  %395 = add nsw i32 %394, 32, !dbg !1816
  %396 = lshr i32 %395, 6, !dbg !1816
  call void @llvm.dbg.value(metadata i32 %395, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1817
  %397 = icmp ult i32 %395, 16384, !dbg !1819
  %398 = icmp sgt i32 %394, 31, !dbg !1820
  %399 = sext i1 %398 to i32, !dbg !1820
  %400 = select i1 %397, i32 %396, i32 %399, !dbg !1820
  %401 = trunc i32 %400 to i8, !dbg !1820
  %402 = getelementptr inbounds i8, ptr %368, i64 1, !dbg !1816
  store i8 %401, ptr %402, align 1, !dbg !1816, !tbaa !1170
  %403 = getelementptr inbounds i8, ptr %370, i64 2, !dbg !1821
  %404 = load i8, ptr %403, align 1, !dbg !1821, !tbaa !1170
  %405 = zext i8 %404 to i32, !dbg !1821
  %406 = mul nsw i32 %405, %6, !dbg !1821
  %407 = getelementptr inbounds i8, ptr %371, i64 2, !dbg !1821
  %408 = load i8, ptr %407, align 1, !dbg !1821, !tbaa !1170
  %409 = zext i8 %408 to i32, !dbg !1821
  %410 = mul nsw i32 %363, %409, !dbg !1821
  %411 = add nsw i32 %410, %406, !dbg !1821
  %412 = add nsw i32 %411, 32, !dbg !1821
  %413 = lshr i32 %412, 6, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %412, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1822
  %414 = icmp ult i32 %412, 16384, !dbg !1824
  %415 = icmp sgt i32 %411, 31, !dbg !1825
  %416 = sext i1 %415 to i32, !dbg !1825
  %417 = select i1 %414, i32 %413, i32 %416, !dbg !1825
  %418 = trunc i32 %417 to i8, !dbg !1825
  %419 = getelementptr inbounds i8, ptr %368, i64 2, !dbg !1821
  store i8 %418, ptr %419, align 1, !dbg !1821, !tbaa !1170
  %420 = getelementptr inbounds i8, ptr %370, i64 3, !dbg !1826
  %421 = load i8, ptr %420, align 1, !dbg !1826, !tbaa !1170
  %422 = zext i8 %421 to i32, !dbg !1826
  %423 = mul nsw i32 %422, %6, !dbg !1826
  %424 = getelementptr inbounds i8, ptr %371, i64 3, !dbg !1826
  %425 = load i8, ptr %424, align 1, !dbg !1826, !tbaa !1170
  %426 = zext i8 %425 to i32, !dbg !1826
  %427 = mul nsw i32 %363, %426, !dbg !1826
  %428 = add nsw i32 %427, %423, !dbg !1826
  %429 = add nsw i32 %428, 32, !dbg !1826
  %430 = lshr i32 %429, 6, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %429, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1827
  %431 = icmp ult i32 %429, 16384, !dbg !1829
  %432 = icmp sgt i32 %428, 31, !dbg !1830
  %433 = sext i1 %432 to i32, !dbg !1830
  %434 = select i1 %431, i32 %430, i32 %433, !dbg !1830
  %435 = trunc i32 %434 to i8, !dbg !1830
  %436 = getelementptr inbounds i8, ptr %368, i64 3, !dbg !1826
  store i8 %435, ptr %436, align 1, !dbg !1826, !tbaa !1170
  %437 = add nuw nsw i32 %369, 1, !dbg !1831
  call void @llvm.dbg.value(metadata i32 %437, metadata !1798, metadata !DIExpression()), !dbg !1800
  %438 = getelementptr inbounds i8, ptr %368, i64 %364, !dbg !1832
  call void @llvm.dbg.value(metadata ptr %438, metadata !1785, metadata !DIExpression()), !dbg !1800
  %439 = getelementptr inbounds i8, ptr %370, i64 %365, !dbg !1833
  call void @llvm.dbg.value(metadata ptr %439, metadata !1791, metadata !DIExpression()), !dbg !1800
  %440 = getelementptr inbounds i8, ptr %371, i64 %366, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %440, metadata !1793, metadata !DIExpression()), !dbg !1800
  %441 = icmp eq i32 %437, 8, !dbg !1835
  br i1 %441, label %442, label %367, !dbg !1836, !llvm.loop !1837

442:                                              ; preds = %367, %9
  ret void, !dbg !1772
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_4x4(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #4 !dbg !1839 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1841, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i32 %1, metadata !1842, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata ptr %2, metadata !1843, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i32 %3, metadata !1844, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata ptr %4, metadata !1845, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i32 %5, metadata !1846, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i32 %6, metadata !1847, metadata !DIExpression()), !dbg !1848
  %8 = icmp eq i32 %6, 32, !dbg !1849
  br i1 %8, label %9, label %185, !dbg !1851

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 %1, metadata !1613, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 %3, metadata !1615, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 %5, metadata !1617, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 4, metadata !1618, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 4, metadata !1619, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1852
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1852
  %13 = load i8, ptr %2, align 1, !dbg !1854, !tbaa !1170
  %14 = zext i8 %13 to i16, !dbg !1854
  %15 = load i8, ptr %4, align 1, !dbg !1855, !tbaa !1170
  %16 = zext i8 %15 to i16, !dbg !1855
  %17 = add nuw nsw i16 %14, 1, !dbg !1856
  %18 = add nuw nsw i16 %17, %16, !dbg !1857
  %19 = lshr i16 %18, 1
  %20 = trunc i16 %19 to i8, !dbg !1858
  store i8 %20, ptr %0, align 1, !dbg !1859, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1852
  %21 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1854
  %22 = load i8, ptr %21, align 1, !dbg !1854, !tbaa !1170
  %23 = zext i8 %22 to i16, !dbg !1854
  %24 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1855
  %25 = load i8, ptr %24, align 1, !dbg !1855, !tbaa !1170
  %26 = zext i8 %25 to i16, !dbg !1855
  %27 = add nuw nsw i16 %23, 1, !dbg !1856
  %28 = add nuw nsw i16 %27, %26, !dbg !1857
  %29 = lshr i16 %28, 1
  %30 = trunc i16 %29 to i8, !dbg !1858
  %31 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1860
  store i8 %30, ptr %31, align 1, !dbg !1859, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1852
  %32 = getelementptr inbounds i8, ptr %2, i64 2, !dbg !1854
  %33 = load i8, ptr %32, align 1, !dbg !1854, !tbaa !1170
  %34 = zext i8 %33 to i16, !dbg !1854
  %35 = getelementptr inbounds i8, ptr %4, i64 2, !dbg !1855
  %36 = load i8, ptr %35, align 1, !dbg !1855, !tbaa !1170
  %37 = zext i8 %36 to i16, !dbg !1855
  %38 = add nuw nsw i16 %34, 1, !dbg !1856
  %39 = add nuw nsw i16 %38, %37, !dbg !1857
  %40 = lshr i16 %39, 1
  %41 = trunc i16 %40 to i8, !dbg !1858
  %42 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1860
  store i8 %41, ptr %42, align 1, !dbg !1859, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1852
  %43 = getelementptr inbounds i8, ptr %2, i64 3, !dbg !1854
  %44 = load i8, ptr %43, align 1, !dbg !1854, !tbaa !1170
  %45 = zext i8 %44 to i16, !dbg !1854
  %46 = getelementptr inbounds i8, ptr %4, i64 3, !dbg !1855
  %47 = load i8, ptr %46, align 1, !dbg !1855, !tbaa !1170
  %48 = zext i8 %47 to i16, !dbg !1855
  %49 = add nuw nsw i16 %45, 1, !dbg !1856
  %50 = add nuw nsw i16 %49, %48, !dbg !1857
  %51 = lshr i16 %50, 1
  %52 = trunc i16 %51 to i8, !dbg !1858
  %53 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1860
  store i8 %52, ptr %53, align 1, !dbg !1859, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1852
  %54 = getelementptr inbounds i8, ptr %2, i64 %10, !dbg !1861
  call void @llvm.dbg.value(metadata ptr %54, metadata !1614, metadata !DIExpression()), !dbg !1852
  %55 = getelementptr inbounds i8, ptr %4, i64 %11, !dbg !1862
  call void @llvm.dbg.value(metadata ptr %55, metadata !1616, metadata !DIExpression()), !dbg !1852
  %56 = getelementptr inbounds i8, ptr %0, i64 %12, !dbg !1863
  call void @llvm.dbg.value(metadata ptr %56, metadata !1610, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 1, metadata !1621, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 1, metadata !1621, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %56, metadata !1610, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %54, metadata !1614, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %55, metadata !1616, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1852
  %57 = load i8, ptr %54, align 1, !dbg !1854, !tbaa !1170
  %58 = zext i8 %57 to i16, !dbg !1854
  %59 = load i8, ptr %55, align 1, !dbg !1855, !tbaa !1170
  %60 = zext i8 %59 to i16, !dbg !1855
  %61 = add nuw nsw i16 %58, 1, !dbg !1856
  %62 = add nuw nsw i16 %61, %60, !dbg !1857
  %63 = lshr i16 %62, 1
  %64 = trunc i16 %63 to i8, !dbg !1858
  store i8 %64, ptr %56, align 1, !dbg !1859, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1852
  %65 = getelementptr inbounds i8, ptr %54, i64 1, !dbg !1854
  %66 = load i8, ptr %65, align 1, !dbg !1854, !tbaa !1170
  %67 = zext i8 %66 to i16, !dbg !1854
  %68 = getelementptr inbounds i8, ptr %55, i64 1, !dbg !1855
  %69 = load i8, ptr %68, align 1, !dbg !1855, !tbaa !1170
  %70 = zext i8 %69 to i16, !dbg !1855
  %71 = add nuw nsw i16 %67, 1, !dbg !1856
  %72 = add nuw nsw i16 %71, %70, !dbg !1857
  %73 = lshr i16 %72, 1
  %74 = trunc i16 %73 to i8, !dbg !1858
  %75 = getelementptr inbounds i8, ptr %56, i64 1, !dbg !1860
  store i8 %74, ptr %75, align 1, !dbg !1859, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1852
  %76 = getelementptr inbounds i8, ptr %54, i64 2, !dbg !1854
  %77 = load i8, ptr %76, align 1, !dbg !1854, !tbaa !1170
  %78 = zext i8 %77 to i16, !dbg !1854
  %79 = getelementptr inbounds i8, ptr %55, i64 2, !dbg !1855
  %80 = load i8, ptr %79, align 1, !dbg !1855, !tbaa !1170
  %81 = zext i8 %80 to i16, !dbg !1855
  %82 = add nuw nsw i16 %78, 1, !dbg !1856
  %83 = add nuw nsw i16 %82, %81, !dbg !1857
  %84 = lshr i16 %83, 1
  %85 = trunc i16 %84 to i8, !dbg !1858
  %86 = getelementptr inbounds i8, ptr %56, i64 2, !dbg !1860
  store i8 %85, ptr %86, align 1, !dbg !1859, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1852
  %87 = getelementptr inbounds i8, ptr %54, i64 3, !dbg !1854
  %88 = load i8, ptr %87, align 1, !dbg !1854, !tbaa !1170
  %89 = zext i8 %88 to i16, !dbg !1854
  %90 = getelementptr inbounds i8, ptr %55, i64 3, !dbg !1855
  %91 = load i8, ptr %90, align 1, !dbg !1855, !tbaa !1170
  %92 = zext i8 %91 to i16, !dbg !1855
  %93 = add nuw nsw i16 %89, 1, !dbg !1856
  %94 = add nuw nsw i16 %93, %92, !dbg !1857
  %95 = lshr i16 %94, 1
  %96 = trunc i16 %95 to i8, !dbg !1858
  %97 = getelementptr inbounds i8, ptr %56, i64 3, !dbg !1860
  store i8 %96, ptr %97, align 1, !dbg !1859, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1852
  %98 = getelementptr inbounds i8, ptr %54, i64 %10, !dbg !1861
  call void @llvm.dbg.value(metadata ptr %98, metadata !1614, metadata !DIExpression()), !dbg !1852
  %99 = getelementptr inbounds i8, ptr %55, i64 %11, !dbg !1862
  call void @llvm.dbg.value(metadata ptr %99, metadata !1616, metadata !DIExpression()), !dbg !1852
  %100 = getelementptr inbounds i8, ptr %56, i64 %12, !dbg !1863
  call void @llvm.dbg.value(metadata ptr %100, metadata !1610, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 2, metadata !1621, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 2, metadata !1621, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %100, metadata !1610, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %98, metadata !1614, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %99, metadata !1616, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1852
  %101 = load i8, ptr %98, align 1, !dbg !1854, !tbaa !1170
  %102 = zext i8 %101 to i16, !dbg !1854
  %103 = load i8, ptr %99, align 1, !dbg !1855, !tbaa !1170
  %104 = zext i8 %103 to i16, !dbg !1855
  %105 = add nuw nsw i16 %102, 1, !dbg !1856
  %106 = add nuw nsw i16 %105, %104, !dbg !1857
  %107 = lshr i16 %106, 1
  %108 = trunc i16 %107 to i8, !dbg !1858
  store i8 %108, ptr %100, align 1, !dbg !1859, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1852
  %109 = getelementptr inbounds i8, ptr %98, i64 1, !dbg !1854
  %110 = load i8, ptr %109, align 1, !dbg !1854, !tbaa !1170
  %111 = zext i8 %110 to i16, !dbg !1854
  %112 = getelementptr inbounds i8, ptr %99, i64 1, !dbg !1855
  %113 = load i8, ptr %112, align 1, !dbg !1855, !tbaa !1170
  %114 = zext i8 %113 to i16, !dbg !1855
  %115 = add nuw nsw i16 %111, 1, !dbg !1856
  %116 = add nuw nsw i16 %115, %114, !dbg !1857
  %117 = lshr i16 %116, 1
  %118 = trunc i16 %117 to i8, !dbg !1858
  %119 = getelementptr inbounds i8, ptr %100, i64 1, !dbg !1860
  store i8 %118, ptr %119, align 1, !dbg !1859, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1852
  %120 = getelementptr inbounds i8, ptr %98, i64 2, !dbg !1854
  %121 = load i8, ptr %120, align 1, !dbg !1854, !tbaa !1170
  %122 = zext i8 %121 to i16, !dbg !1854
  %123 = getelementptr inbounds i8, ptr %99, i64 2, !dbg !1855
  %124 = load i8, ptr %123, align 1, !dbg !1855, !tbaa !1170
  %125 = zext i8 %124 to i16, !dbg !1855
  %126 = add nuw nsw i16 %122, 1, !dbg !1856
  %127 = add nuw nsw i16 %126, %125, !dbg !1857
  %128 = lshr i16 %127, 1
  %129 = trunc i16 %128 to i8, !dbg !1858
  %130 = getelementptr inbounds i8, ptr %100, i64 2, !dbg !1860
  store i8 %129, ptr %130, align 1, !dbg !1859, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1852
  %131 = getelementptr inbounds i8, ptr %98, i64 3, !dbg !1854
  %132 = load i8, ptr %131, align 1, !dbg !1854, !tbaa !1170
  %133 = zext i8 %132 to i16, !dbg !1854
  %134 = getelementptr inbounds i8, ptr %99, i64 3, !dbg !1855
  %135 = load i8, ptr %134, align 1, !dbg !1855, !tbaa !1170
  %136 = zext i8 %135 to i16, !dbg !1855
  %137 = add nuw nsw i16 %133, 1, !dbg !1856
  %138 = add nuw nsw i16 %137, %136, !dbg !1857
  %139 = lshr i16 %138, 1
  %140 = trunc i16 %139 to i8, !dbg !1858
  %141 = getelementptr inbounds i8, ptr %100, i64 3, !dbg !1860
  store i8 %140, ptr %141, align 1, !dbg !1859, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1852
  %142 = getelementptr inbounds i8, ptr %98, i64 %10, !dbg !1861
  call void @llvm.dbg.value(metadata ptr %142, metadata !1614, metadata !DIExpression()), !dbg !1852
  %143 = getelementptr inbounds i8, ptr %99, i64 %11, !dbg !1862
  call void @llvm.dbg.value(metadata ptr %143, metadata !1616, metadata !DIExpression()), !dbg !1852
  %144 = getelementptr inbounds i8, ptr %100, i64 %12, !dbg !1863
  call void @llvm.dbg.value(metadata ptr %144, metadata !1610, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 3, metadata !1621, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 3, metadata !1621, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %144, metadata !1610, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %142, metadata !1614, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %143, metadata !1616, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1852
  %145 = load i8, ptr %142, align 1, !dbg !1854, !tbaa !1170
  %146 = zext i8 %145 to i16, !dbg !1854
  %147 = load i8, ptr %143, align 1, !dbg !1855, !tbaa !1170
  %148 = zext i8 %147 to i16, !dbg !1855
  %149 = add nuw nsw i16 %146, 1, !dbg !1856
  %150 = add nuw nsw i16 %149, %148, !dbg !1857
  %151 = lshr i16 %150, 1
  %152 = trunc i16 %151 to i8, !dbg !1858
  store i8 %152, ptr %144, align 1, !dbg !1859, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1852
  %153 = getelementptr inbounds i8, ptr %142, i64 1, !dbg !1854
  %154 = load i8, ptr %153, align 1, !dbg !1854, !tbaa !1170
  %155 = zext i8 %154 to i16, !dbg !1854
  %156 = getelementptr inbounds i8, ptr %143, i64 1, !dbg !1855
  %157 = load i8, ptr %156, align 1, !dbg !1855, !tbaa !1170
  %158 = zext i8 %157 to i16, !dbg !1855
  %159 = add nuw nsw i16 %155, 1, !dbg !1856
  %160 = add nuw nsw i16 %159, %158, !dbg !1857
  %161 = lshr i16 %160, 1
  %162 = trunc i16 %161 to i8, !dbg !1858
  %163 = getelementptr inbounds i8, ptr %144, i64 1, !dbg !1860
  store i8 %162, ptr %163, align 1, !dbg !1859, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1852
  %164 = getelementptr inbounds i8, ptr %142, i64 2, !dbg !1854
  %165 = load i8, ptr %164, align 1, !dbg !1854, !tbaa !1170
  %166 = zext i8 %165 to i16, !dbg !1854
  %167 = getelementptr inbounds i8, ptr %143, i64 2, !dbg !1855
  %168 = load i8, ptr %167, align 1, !dbg !1855, !tbaa !1170
  %169 = zext i8 %168 to i16, !dbg !1855
  %170 = add nuw nsw i16 %166, 1, !dbg !1856
  %171 = add nuw nsw i16 %170, %169, !dbg !1857
  %172 = lshr i16 %171, 1
  %173 = trunc i16 %172 to i8, !dbg !1858
  %174 = getelementptr inbounds i8, ptr %144, i64 2, !dbg !1860
  store i8 %173, ptr %174, align 1, !dbg !1859, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1852
  %175 = getelementptr inbounds i8, ptr %142, i64 3, !dbg !1854
  %176 = load i8, ptr %175, align 1, !dbg !1854, !tbaa !1170
  %177 = zext i8 %176 to i16, !dbg !1854
  %178 = getelementptr inbounds i8, ptr %143, i64 3, !dbg !1855
  %179 = load i8, ptr %178, align 1, !dbg !1855, !tbaa !1170
  %180 = zext i8 %179 to i16, !dbg !1855
  %181 = add nuw nsw i16 %177, 1, !dbg !1856
  %182 = add nuw nsw i16 %181, %180, !dbg !1857
  %183 = lshr i16 %182, 1
  %184 = trunc i16 %183 to i8, !dbg !1858
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata !DIArgList(ptr %142, i64 %10), metadata !1614, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1852
  call void @llvm.dbg.value(metadata !DIArgList(ptr %143, i64 %11), metadata !1616, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1852
  call void @llvm.dbg.value(metadata !DIArgList(ptr %144, i64 %12), metadata !1610, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1852
  call void @llvm.dbg.value(metadata i32 4, metadata !1621, metadata !DIExpression()), !dbg !1852
  br label %458, !dbg !1851

185:                                              ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1785, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 %1, metadata !1790, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr %2, metadata !1791, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 %3, metadata !1792, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr %4, metadata !1793, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 %5, metadata !1794, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 4, metadata !1795, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 4, metadata !1796, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 %6, metadata !1797, metadata !DIExpression()), !dbg !1864
  %186 = sub nsw i32 64, %6, !dbg !1866
  call void @llvm.dbg.value(metadata i32 %186, metadata !1799, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 0, metadata !1798, metadata !DIExpression()), !dbg !1864
  %187 = sext i32 %1 to i64
  %188 = sext i32 %3 to i64
  %189 = sext i32 %5 to i64
  call void @llvm.dbg.value(metadata ptr %0, metadata !1785, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 0, metadata !1798, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr %2, metadata !1791, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr %4, metadata !1793, metadata !DIExpression()), !dbg !1864
  %190 = load i8, ptr %2, align 1, !dbg !1867, !tbaa !1170
  %191 = zext i8 %190 to i32, !dbg !1867
  %192 = mul nsw i32 %191, %6, !dbg !1867
  %193 = load i8, ptr %4, align 1, !dbg !1867, !tbaa !1170
  %194 = zext i8 %193 to i32, !dbg !1867
  %195 = mul nsw i32 %186, %194, !dbg !1867
  %196 = add nsw i32 %195, %192, !dbg !1867
  %197 = add nsw i32 %196, 32, !dbg !1867
  %198 = lshr i32 %197, 6, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %197, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1868
  %199 = icmp ult i32 %197, 16384, !dbg !1870
  %200 = icmp sgt i32 %196, 31, !dbg !1871
  %201 = sext i1 %200 to i32, !dbg !1871
  %202 = select i1 %199, i32 %198, i32 %201, !dbg !1871
  %203 = trunc i32 %202 to i8, !dbg !1871
  store i8 %203, ptr %0, align 1, !dbg !1867, !tbaa !1170
  %204 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1872
  %205 = load i8, ptr %204, align 1, !dbg !1872, !tbaa !1170
  %206 = zext i8 %205 to i32, !dbg !1872
  %207 = mul nsw i32 %206, %6, !dbg !1872
  %208 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1872
  %209 = load i8, ptr %208, align 1, !dbg !1872, !tbaa !1170
  %210 = zext i8 %209 to i32, !dbg !1872
  %211 = mul nsw i32 %186, %210, !dbg !1872
  %212 = add nsw i32 %211, %207, !dbg !1872
  %213 = add nsw i32 %212, 32, !dbg !1872
  %214 = lshr i32 %213, 6, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %213, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1873
  %215 = icmp ult i32 %213, 16384, !dbg !1875
  %216 = icmp sgt i32 %212, 31, !dbg !1876
  %217 = sext i1 %216 to i32, !dbg !1876
  %218 = select i1 %215, i32 %214, i32 %217, !dbg !1876
  %219 = trunc i32 %218 to i8, !dbg !1876
  %220 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1872
  store i8 %219, ptr %220, align 1, !dbg !1872, !tbaa !1170
  %221 = getelementptr inbounds i8, ptr %2, i64 2, !dbg !1877
  %222 = load i8, ptr %221, align 1, !dbg !1877, !tbaa !1170
  %223 = zext i8 %222 to i32, !dbg !1877
  %224 = mul nsw i32 %223, %6, !dbg !1877
  %225 = getelementptr inbounds i8, ptr %4, i64 2, !dbg !1877
  %226 = load i8, ptr %225, align 1, !dbg !1877, !tbaa !1170
  %227 = zext i8 %226 to i32, !dbg !1877
  %228 = mul nsw i32 %186, %227, !dbg !1877
  %229 = add nsw i32 %228, %224, !dbg !1877
  %230 = add nsw i32 %229, 32, !dbg !1877
  %231 = lshr i32 %230, 6, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %230, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1878
  %232 = icmp ult i32 %230, 16384, !dbg !1880
  %233 = icmp sgt i32 %229, 31, !dbg !1881
  %234 = sext i1 %233 to i32, !dbg !1881
  %235 = select i1 %232, i32 %231, i32 %234, !dbg !1881
  %236 = trunc i32 %235 to i8, !dbg !1881
  %237 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1877
  store i8 %236, ptr %237, align 1, !dbg !1877, !tbaa !1170
  %238 = getelementptr inbounds i8, ptr %2, i64 3, !dbg !1882
  %239 = load i8, ptr %238, align 1, !dbg !1882, !tbaa !1170
  %240 = zext i8 %239 to i32, !dbg !1882
  %241 = mul nsw i32 %240, %6, !dbg !1882
  %242 = getelementptr inbounds i8, ptr %4, i64 3, !dbg !1882
  %243 = load i8, ptr %242, align 1, !dbg !1882, !tbaa !1170
  %244 = zext i8 %243 to i32, !dbg !1882
  %245 = mul nsw i32 %186, %244, !dbg !1882
  %246 = add nsw i32 %245, %241, !dbg !1882
  %247 = add nsw i32 %246, 32, !dbg !1882
  %248 = lshr i32 %247, 6, !dbg !1882
  call void @llvm.dbg.value(metadata i32 %247, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1883
  %249 = icmp ult i32 %247, 16384, !dbg !1885
  %250 = icmp sgt i32 %246, 31, !dbg !1886
  %251 = sext i1 %250 to i32, !dbg !1886
  %252 = select i1 %249, i32 %248, i32 %251, !dbg !1886
  %253 = trunc i32 %252 to i8, !dbg !1886
  %254 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1882
  store i8 %253, ptr %254, align 1, !dbg !1882, !tbaa !1170
  call void @llvm.dbg.value(metadata i32 1, metadata !1798, metadata !DIExpression()), !dbg !1864
  %255 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1887
  call void @llvm.dbg.value(metadata ptr %255, metadata !1785, metadata !DIExpression()), !dbg !1864
  %256 = getelementptr inbounds i8, ptr %2, i64 %188, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %256, metadata !1791, metadata !DIExpression()), !dbg !1864
  %257 = getelementptr inbounds i8, ptr %4, i64 %189, !dbg !1889
  call void @llvm.dbg.value(metadata ptr %257, metadata !1793, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr %255, metadata !1785, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 1, metadata !1798, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr %256, metadata !1791, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr %257, metadata !1793, metadata !DIExpression()), !dbg !1864
  %258 = load i8, ptr %256, align 1, !dbg !1867, !tbaa !1170
  %259 = zext i8 %258 to i32, !dbg !1867
  %260 = mul nsw i32 %259, %6, !dbg !1867
  %261 = load i8, ptr %257, align 1, !dbg !1867, !tbaa !1170
  %262 = zext i8 %261 to i32, !dbg !1867
  %263 = mul nsw i32 %186, %262, !dbg !1867
  %264 = add nsw i32 %263, %260, !dbg !1867
  %265 = add nsw i32 %264, 32, !dbg !1867
  %266 = lshr i32 %265, 6, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %265, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1868
  %267 = icmp ult i32 %265, 16384, !dbg !1870
  %268 = icmp sgt i32 %264, 31, !dbg !1871
  %269 = sext i1 %268 to i32, !dbg !1871
  %270 = select i1 %267, i32 %266, i32 %269, !dbg !1871
  %271 = trunc i32 %270 to i8, !dbg !1871
  store i8 %271, ptr %255, align 1, !dbg !1867, !tbaa !1170
  %272 = getelementptr inbounds i8, ptr %256, i64 1, !dbg !1872
  %273 = load i8, ptr %272, align 1, !dbg !1872, !tbaa !1170
  %274 = zext i8 %273 to i32, !dbg !1872
  %275 = mul nsw i32 %274, %6, !dbg !1872
  %276 = getelementptr inbounds i8, ptr %257, i64 1, !dbg !1872
  %277 = load i8, ptr %276, align 1, !dbg !1872, !tbaa !1170
  %278 = zext i8 %277 to i32, !dbg !1872
  %279 = mul nsw i32 %186, %278, !dbg !1872
  %280 = add nsw i32 %279, %275, !dbg !1872
  %281 = add nsw i32 %280, 32, !dbg !1872
  %282 = lshr i32 %281, 6, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %281, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1873
  %283 = icmp ult i32 %281, 16384, !dbg !1875
  %284 = icmp sgt i32 %280, 31, !dbg !1876
  %285 = sext i1 %284 to i32, !dbg !1876
  %286 = select i1 %283, i32 %282, i32 %285, !dbg !1876
  %287 = trunc i32 %286 to i8, !dbg !1876
  %288 = getelementptr inbounds i8, ptr %255, i64 1, !dbg !1872
  store i8 %287, ptr %288, align 1, !dbg !1872, !tbaa !1170
  %289 = getelementptr inbounds i8, ptr %256, i64 2, !dbg !1877
  %290 = load i8, ptr %289, align 1, !dbg !1877, !tbaa !1170
  %291 = zext i8 %290 to i32, !dbg !1877
  %292 = mul nsw i32 %291, %6, !dbg !1877
  %293 = getelementptr inbounds i8, ptr %257, i64 2, !dbg !1877
  %294 = load i8, ptr %293, align 1, !dbg !1877, !tbaa !1170
  %295 = zext i8 %294 to i32, !dbg !1877
  %296 = mul nsw i32 %186, %295, !dbg !1877
  %297 = add nsw i32 %296, %292, !dbg !1877
  %298 = add nsw i32 %297, 32, !dbg !1877
  %299 = lshr i32 %298, 6, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %298, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1878
  %300 = icmp ult i32 %298, 16384, !dbg !1880
  %301 = icmp sgt i32 %297, 31, !dbg !1881
  %302 = sext i1 %301 to i32, !dbg !1881
  %303 = select i1 %300, i32 %299, i32 %302, !dbg !1881
  %304 = trunc i32 %303 to i8, !dbg !1881
  %305 = getelementptr inbounds i8, ptr %255, i64 2, !dbg !1877
  store i8 %304, ptr %305, align 1, !dbg !1877, !tbaa !1170
  %306 = getelementptr inbounds i8, ptr %256, i64 3, !dbg !1882
  %307 = load i8, ptr %306, align 1, !dbg !1882, !tbaa !1170
  %308 = zext i8 %307 to i32, !dbg !1882
  %309 = mul nsw i32 %308, %6, !dbg !1882
  %310 = getelementptr inbounds i8, ptr %257, i64 3, !dbg !1882
  %311 = load i8, ptr %310, align 1, !dbg !1882, !tbaa !1170
  %312 = zext i8 %311 to i32, !dbg !1882
  %313 = mul nsw i32 %186, %312, !dbg !1882
  %314 = add nsw i32 %313, %309, !dbg !1882
  %315 = add nsw i32 %314, 32, !dbg !1882
  %316 = lshr i32 %315, 6, !dbg !1882
  call void @llvm.dbg.value(metadata i32 %315, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1883
  %317 = icmp ult i32 %315, 16384, !dbg !1885
  %318 = icmp sgt i32 %314, 31, !dbg !1886
  %319 = sext i1 %318 to i32, !dbg !1886
  %320 = select i1 %317, i32 %316, i32 %319, !dbg !1886
  %321 = trunc i32 %320 to i8, !dbg !1886
  %322 = getelementptr inbounds i8, ptr %255, i64 3, !dbg !1882
  store i8 %321, ptr %322, align 1, !dbg !1882, !tbaa !1170
  call void @llvm.dbg.value(metadata i32 2, metadata !1798, metadata !DIExpression()), !dbg !1864
  %323 = getelementptr inbounds i8, ptr %255, i64 %187, !dbg !1887
  call void @llvm.dbg.value(metadata ptr %323, metadata !1785, metadata !DIExpression()), !dbg !1864
  %324 = getelementptr inbounds i8, ptr %256, i64 %188, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %324, metadata !1791, metadata !DIExpression()), !dbg !1864
  %325 = getelementptr inbounds i8, ptr %257, i64 %189, !dbg !1889
  call void @llvm.dbg.value(metadata ptr %325, metadata !1793, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr %323, metadata !1785, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 2, metadata !1798, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr %324, metadata !1791, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr %325, metadata !1793, metadata !DIExpression()), !dbg !1864
  %326 = load i8, ptr %324, align 1, !dbg !1867, !tbaa !1170
  %327 = zext i8 %326 to i32, !dbg !1867
  %328 = mul nsw i32 %327, %6, !dbg !1867
  %329 = load i8, ptr %325, align 1, !dbg !1867, !tbaa !1170
  %330 = zext i8 %329 to i32, !dbg !1867
  %331 = mul nsw i32 %186, %330, !dbg !1867
  %332 = add nsw i32 %331, %328, !dbg !1867
  %333 = add nsw i32 %332, 32, !dbg !1867
  %334 = lshr i32 %333, 6, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %333, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1868
  %335 = icmp ult i32 %333, 16384, !dbg !1870
  %336 = icmp sgt i32 %332, 31, !dbg !1871
  %337 = sext i1 %336 to i32, !dbg !1871
  %338 = select i1 %335, i32 %334, i32 %337, !dbg !1871
  %339 = trunc i32 %338 to i8, !dbg !1871
  store i8 %339, ptr %323, align 1, !dbg !1867, !tbaa !1170
  %340 = getelementptr inbounds i8, ptr %324, i64 1, !dbg !1872
  %341 = load i8, ptr %340, align 1, !dbg !1872, !tbaa !1170
  %342 = zext i8 %341 to i32, !dbg !1872
  %343 = mul nsw i32 %342, %6, !dbg !1872
  %344 = getelementptr inbounds i8, ptr %325, i64 1, !dbg !1872
  %345 = load i8, ptr %344, align 1, !dbg !1872, !tbaa !1170
  %346 = zext i8 %345 to i32, !dbg !1872
  %347 = mul nsw i32 %186, %346, !dbg !1872
  %348 = add nsw i32 %347, %343, !dbg !1872
  %349 = add nsw i32 %348, 32, !dbg !1872
  %350 = lshr i32 %349, 6, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %349, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1873
  %351 = icmp ult i32 %349, 16384, !dbg !1875
  %352 = icmp sgt i32 %348, 31, !dbg !1876
  %353 = sext i1 %352 to i32, !dbg !1876
  %354 = select i1 %351, i32 %350, i32 %353, !dbg !1876
  %355 = trunc i32 %354 to i8, !dbg !1876
  %356 = getelementptr inbounds i8, ptr %323, i64 1, !dbg !1872
  store i8 %355, ptr %356, align 1, !dbg !1872, !tbaa !1170
  %357 = getelementptr inbounds i8, ptr %324, i64 2, !dbg !1877
  %358 = load i8, ptr %357, align 1, !dbg !1877, !tbaa !1170
  %359 = zext i8 %358 to i32, !dbg !1877
  %360 = mul nsw i32 %359, %6, !dbg !1877
  %361 = getelementptr inbounds i8, ptr %325, i64 2, !dbg !1877
  %362 = load i8, ptr %361, align 1, !dbg !1877, !tbaa !1170
  %363 = zext i8 %362 to i32, !dbg !1877
  %364 = mul nsw i32 %186, %363, !dbg !1877
  %365 = add nsw i32 %364, %360, !dbg !1877
  %366 = add nsw i32 %365, 32, !dbg !1877
  %367 = lshr i32 %366, 6, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %366, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1878
  %368 = icmp ult i32 %366, 16384, !dbg !1880
  %369 = icmp sgt i32 %365, 31, !dbg !1881
  %370 = sext i1 %369 to i32, !dbg !1881
  %371 = select i1 %368, i32 %367, i32 %370, !dbg !1881
  %372 = trunc i32 %371 to i8, !dbg !1881
  %373 = getelementptr inbounds i8, ptr %323, i64 2, !dbg !1877
  store i8 %372, ptr %373, align 1, !dbg !1877, !tbaa !1170
  %374 = getelementptr inbounds i8, ptr %324, i64 3, !dbg !1882
  %375 = load i8, ptr %374, align 1, !dbg !1882, !tbaa !1170
  %376 = zext i8 %375 to i32, !dbg !1882
  %377 = mul nsw i32 %376, %6, !dbg !1882
  %378 = getelementptr inbounds i8, ptr %325, i64 3, !dbg !1882
  %379 = load i8, ptr %378, align 1, !dbg !1882, !tbaa !1170
  %380 = zext i8 %379 to i32, !dbg !1882
  %381 = mul nsw i32 %186, %380, !dbg !1882
  %382 = add nsw i32 %381, %377, !dbg !1882
  %383 = add nsw i32 %382, 32, !dbg !1882
  %384 = lshr i32 %383, 6, !dbg !1882
  call void @llvm.dbg.value(metadata i32 %383, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1883
  %385 = icmp ult i32 %383, 16384, !dbg !1885
  %386 = icmp sgt i32 %382, 31, !dbg !1886
  %387 = sext i1 %386 to i32, !dbg !1886
  %388 = select i1 %385, i32 %384, i32 %387, !dbg !1886
  %389 = trunc i32 %388 to i8, !dbg !1886
  %390 = getelementptr inbounds i8, ptr %323, i64 3, !dbg !1882
  store i8 %389, ptr %390, align 1, !dbg !1882, !tbaa !1170
  call void @llvm.dbg.value(metadata i32 3, metadata !1798, metadata !DIExpression()), !dbg !1864
  %391 = getelementptr inbounds i8, ptr %323, i64 %187, !dbg !1887
  call void @llvm.dbg.value(metadata ptr %391, metadata !1785, metadata !DIExpression()), !dbg !1864
  %392 = getelementptr inbounds i8, ptr %324, i64 %188, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %392, metadata !1791, metadata !DIExpression()), !dbg !1864
  %393 = getelementptr inbounds i8, ptr %325, i64 %189, !dbg !1889
  call void @llvm.dbg.value(metadata ptr %393, metadata !1793, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr %391, metadata !1785, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 3, metadata !1798, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr %392, metadata !1791, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr %393, metadata !1793, metadata !DIExpression()), !dbg !1864
  %394 = load i8, ptr %392, align 1, !dbg !1867, !tbaa !1170
  %395 = zext i8 %394 to i32, !dbg !1867
  %396 = mul nsw i32 %395, %6, !dbg !1867
  %397 = load i8, ptr %393, align 1, !dbg !1867, !tbaa !1170
  %398 = zext i8 %397 to i32, !dbg !1867
  %399 = mul nsw i32 %186, %398, !dbg !1867
  %400 = add nsw i32 %399, %396, !dbg !1867
  %401 = add nsw i32 %400, 32, !dbg !1867
  %402 = lshr i32 %401, 6, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %401, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1868
  %403 = icmp ult i32 %401, 16384, !dbg !1870
  %404 = icmp sgt i32 %400, 31, !dbg !1871
  %405 = sext i1 %404 to i32, !dbg !1871
  %406 = select i1 %403, i32 %402, i32 %405, !dbg !1871
  %407 = trunc i32 %406 to i8, !dbg !1871
  store i8 %407, ptr %391, align 1, !dbg !1867, !tbaa !1170
  %408 = getelementptr inbounds i8, ptr %392, i64 1, !dbg !1872
  %409 = load i8, ptr %408, align 1, !dbg !1872, !tbaa !1170
  %410 = zext i8 %409 to i32, !dbg !1872
  %411 = mul nsw i32 %410, %6, !dbg !1872
  %412 = getelementptr inbounds i8, ptr %393, i64 1, !dbg !1872
  %413 = load i8, ptr %412, align 1, !dbg !1872, !tbaa !1170
  %414 = zext i8 %413 to i32, !dbg !1872
  %415 = mul nsw i32 %186, %414, !dbg !1872
  %416 = add nsw i32 %415, %411, !dbg !1872
  %417 = add nsw i32 %416, 32, !dbg !1872
  %418 = lshr i32 %417, 6, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %417, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1873
  %419 = icmp ult i32 %417, 16384, !dbg !1875
  %420 = icmp sgt i32 %416, 31, !dbg !1876
  %421 = sext i1 %420 to i32, !dbg !1876
  %422 = select i1 %419, i32 %418, i32 %421, !dbg !1876
  %423 = trunc i32 %422 to i8, !dbg !1876
  %424 = getelementptr inbounds i8, ptr %391, i64 1, !dbg !1872
  store i8 %423, ptr %424, align 1, !dbg !1872, !tbaa !1170
  %425 = getelementptr inbounds i8, ptr %392, i64 2, !dbg !1877
  %426 = load i8, ptr %425, align 1, !dbg !1877, !tbaa !1170
  %427 = zext i8 %426 to i32, !dbg !1877
  %428 = mul nsw i32 %427, %6, !dbg !1877
  %429 = getelementptr inbounds i8, ptr %393, i64 2, !dbg !1877
  %430 = load i8, ptr %429, align 1, !dbg !1877, !tbaa !1170
  %431 = zext i8 %430 to i32, !dbg !1877
  %432 = mul nsw i32 %186, %431, !dbg !1877
  %433 = add nsw i32 %432, %428, !dbg !1877
  %434 = add nsw i32 %433, 32, !dbg !1877
  %435 = lshr i32 %434, 6, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %434, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1878
  %436 = icmp ult i32 %434, 16384, !dbg !1880
  %437 = icmp sgt i32 %433, 31, !dbg !1881
  %438 = sext i1 %437 to i32, !dbg !1881
  %439 = select i1 %436, i32 %435, i32 %438, !dbg !1881
  %440 = trunc i32 %439 to i8, !dbg !1881
  %441 = getelementptr inbounds i8, ptr %391, i64 2, !dbg !1877
  store i8 %440, ptr %441, align 1, !dbg !1877, !tbaa !1170
  %442 = getelementptr inbounds i8, ptr %392, i64 3, !dbg !1882
  %443 = load i8, ptr %442, align 1, !dbg !1882, !tbaa !1170
  %444 = zext i8 %443 to i32, !dbg !1882
  %445 = mul nsw i32 %444, %6, !dbg !1882
  %446 = getelementptr inbounds i8, ptr %393, i64 3, !dbg !1882
  %447 = load i8, ptr %446, align 1, !dbg !1882, !tbaa !1170
  %448 = zext i8 %447 to i32, !dbg !1882
  %449 = mul nsw i32 %186, %448, !dbg !1882
  %450 = add nsw i32 %449, %445, !dbg !1882
  %451 = add nsw i32 %450, 32, !dbg !1882
  %452 = lshr i32 %451, 6, !dbg !1882
  call void @llvm.dbg.value(metadata i32 %451, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1883
  %453 = icmp ult i32 %451, 16384, !dbg !1885
  %454 = icmp sgt i32 %450, 31, !dbg !1886
  %455 = sext i1 %454 to i32, !dbg !1886
  %456 = select i1 %453, i32 %452, i32 %455, !dbg !1886
  %457 = trunc i32 %456 to i8, !dbg !1886
  call void @llvm.dbg.value(metadata i32 4, metadata !1798, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata !DIArgList(ptr %391, i64 %187), metadata !1785, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1864
  call void @llvm.dbg.value(metadata !DIArgList(ptr %392, i64 %188), metadata !1791, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1864
  call void @llvm.dbg.value(metadata !DIArgList(ptr %393, i64 %189), metadata !1793, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1864
  br label %458, !dbg !1851

458:                                              ; preds = %185, %9
  %459 = phi ptr [ %391, %185 ], [ %144, %9 ]
  %460 = phi i8 [ %457, %185 ], [ %184, %9 ]
  %461 = getelementptr inbounds i8, ptr %459, i64 3, !dbg !1849
  store i8 %460, ptr %461, align 1, !dbg !1849, !tbaa !1170
  ret void, !dbg !1851
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_4x2(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #4 !dbg !1890 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1892, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i32 %1, metadata !1893, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata ptr %2, metadata !1894, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i32 %3, metadata !1895, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata ptr %4, metadata !1896, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i32 %5, metadata !1897, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i32 %6, metadata !1898, metadata !DIExpression()), !dbg !1899
  %8 = icmp eq i32 %6, 32, !dbg !1900
  br i1 %8, label %9, label %97, !dbg !1902

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 %1, metadata !1613, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 %3, metadata !1615, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 %5, metadata !1617, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 4, metadata !1618, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 2, metadata !1619, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1903
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1903
  %13 = load i8, ptr %2, align 1, !dbg !1905, !tbaa !1170
  %14 = zext i8 %13 to i16, !dbg !1905
  %15 = load i8, ptr %4, align 1, !dbg !1906, !tbaa !1170
  %16 = zext i8 %15 to i16, !dbg !1906
  %17 = add nuw nsw i16 %14, 1, !dbg !1907
  %18 = add nuw nsw i16 %17, %16, !dbg !1908
  %19 = lshr i16 %18, 1
  %20 = trunc i16 %19 to i8, !dbg !1909
  store i8 %20, ptr %0, align 1, !dbg !1910, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1903
  %21 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1905
  %22 = load i8, ptr %21, align 1, !dbg !1905, !tbaa !1170
  %23 = zext i8 %22 to i16, !dbg !1905
  %24 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1906
  %25 = load i8, ptr %24, align 1, !dbg !1906, !tbaa !1170
  %26 = zext i8 %25 to i16, !dbg !1906
  %27 = add nuw nsw i16 %23, 1, !dbg !1907
  %28 = add nuw nsw i16 %27, %26, !dbg !1908
  %29 = lshr i16 %28, 1
  %30 = trunc i16 %29 to i8, !dbg !1909
  %31 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1911
  store i8 %30, ptr %31, align 1, !dbg !1910, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1903
  %32 = getelementptr inbounds i8, ptr %2, i64 2, !dbg !1905
  %33 = load i8, ptr %32, align 1, !dbg !1905, !tbaa !1170
  %34 = zext i8 %33 to i16, !dbg !1905
  %35 = getelementptr inbounds i8, ptr %4, i64 2, !dbg !1906
  %36 = load i8, ptr %35, align 1, !dbg !1906, !tbaa !1170
  %37 = zext i8 %36 to i16, !dbg !1906
  %38 = add nuw nsw i16 %34, 1, !dbg !1907
  %39 = add nuw nsw i16 %38, %37, !dbg !1908
  %40 = lshr i16 %39, 1
  %41 = trunc i16 %40 to i8, !dbg !1909
  %42 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1911
  store i8 %41, ptr %42, align 1, !dbg !1910, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1903
  %43 = getelementptr inbounds i8, ptr %2, i64 3, !dbg !1905
  %44 = load i8, ptr %43, align 1, !dbg !1905, !tbaa !1170
  %45 = zext i8 %44 to i16, !dbg !1905
  %46 = getelementptr inbounds i8, ptr %4, i64 3, !dbg !1906
  %47 = load i8, ptr %46, align 1, !dbg !1906, !tbaa !1170
  %48 = zext i8 %47 to i16, !dbg !1906
  %49 = add nuw nsw i16 %45, 1, !dbg !1907
  %50 = add nuw nsw i16 %49, %48, !dbg !1908
  %51 = lshr i16 %50, 1
  %52 = trunc i16 %51 to i8, !dbg !1909
  %53 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1911
  store i8 %52, ptr %53, align 1, !dbg !1910, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1903
  %54 = getelementptr inbounds i8, ptr %2, i64 %10, !dbg !1912
  call void @llvm.dbg.value(metadata ptr %54, metadata !1614, metadata !DIExpression()), !dbg !1903
  %55 = getelementptr inbounds i8, ptr %4, i64 %11, !dbg !1913
  call void @llvm.dbg.value(metadata ptr %55, metadata !1616, metadata !DIExpression()), !dbg !1903
  %56 = getelementptr inbounds i8, ptr %0, i64 %12, !dbg !1914
  call void @llvm.dbg.value(metadata ptr %56, metadata !1610, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 1, metadata !1621, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 1, metadata !1621, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %56, metadata !1610, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %54, metadata !1614, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %55, metadata !1616, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1903
  %57 = load i8, ptr %54, align 1, !dbg !1905, !tbaa !1170
  %58 = zext i8 %57 to i16, !dbg !1905
  %59 = load i8, ptr %55, align 1, !dbg !1906, !tbaa !1170
  %60 = zext i8 %59 to i16, !dbg !1906
  %61 = add nuw nsw i16 %58, 1, !dbg !1907
  %62 = add nuw nsw i16 %61, %60, !dbg !1908
  %63 = lshr i16 %62, 1
  %64 = trunc i16 %63 to i8, !dbg !1909
  store i8 %64, ptr %56, align 1, !dbg !1910, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1903
  %65 = getelementptr inbounds i8, ptr %54, i64 1, !dbg !1905
  %66 = load i8, ptr %65, align 1, !dbg !1905, !tbaa !1170
  %67 = zext i8 %66 to i16, !dbg !1905
  %68 = getelementptr inbounds i8, ptr %55, i64 1, !dbg !1906
  %69 = load i8, ptr %68, align 1, !dbg !1906, !tbaa !1170
  %70 = zext i8 %69 to i16, !dbg !1906
  %71 = add nuw nsw i16 %67, 1, !dbg !1907
  %72 = add nuw nsw i16 %71, %70, !dbg !1908
  %73 = lshr i16 %72, 1
  %74 = trunc i16 %73 to i8, !dbg !1909
  %75 = getelementptr inbounds i8, ptr %56, i64 1, !dbg !1911
  store i8 %74, ptr %75, align 1, !dbg !1910, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1903
  %76 = getelementptr inbounds i8, ptr %54, i64 2, !dbg !1905
  %77 = load i8, ptr %76, align 1, !dbg !1905, !tbaa !1170
  %78 = zext i8 %77 to i16, !dbg !1905
  %79 = getelementptr inbounds i8, ptr %55, i64 2, !dbg !1906
  %80 = load i8, ptr %79, align 1, !dbg !1906, !tbaa !1170
  %81 = zext i8 %80 to i16, !dbg !1906
  %82 = add nuw nsw i16 %78, 1, !dbg !1907
  %83 = add nuw nsw i16 %82, %81, !dbg !1908
  %84 = lshr i16 %83, 1
  %85 = trunc i16 %84 to i8, !dbg !1909
  %86 = getelementptr inbounds i8, ptr %56, i64 2, !dbg !1911
  store i8 %85, ptr %86, align 1, !dbg !1910, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 3, metadata !1620, metadata !DIExpression()), !dbg !1903
  %87 = getelementptr inbounds i8, ptr %54, i64 3, !dbg !1905
  %88 = load i8, ptr %87, align 1, !dbg !1905, !tbaa !1170
  %89 = zext i8 %88 to i16, !dbg !1905
  %90 = getelementptr inbounds i8, ptr %55, i64 3, !dbg !1906
  %91 = load i8, ptr %90, align 1, !dbg !1906, !tbaa !1170
  %92 = zext i8 %91 to i16, !dbg !1906
  %93 = add nuw nsw i16 %89, 1, !dbg !1907
  %94 = add nuw nsw i16 %93, %92, !dbg !1908
  %95 = lshr i16 %94, 1
  %96 = trunc i16 %95 to i8, !dbg !1909
  call void @llvm.dbg.value(metadata i64 4, metadata !1620, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata !DIArgList(ptr %54, i64 %10), metadata !1614, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1903
  call void @llvm.dbg.value(metadata !DIArgList(ptr %55, i64 %11), metadata !1616, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1903
  call void @llvm.dbg.value(metadata !DIArgList(ptr %56, i64 %12), metadata !1610, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1903
  call void @llvm.dbg.value(metadata i32 2, metadata !1621, metadata !DIExpression()), !dbg !1903
  br label %234, !dbg !1902

97:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1785, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32 %1, metadata !1790, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata ptr %2, metadata !1791, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32 %3, metadata !1792, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata ptr %4, metadata !1793, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32 %5, metadata !1794, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32 4, metadata !1795, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32 2, metadata !1796, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32 %6, metadata !1797, metadata !DIExpression()), !dbg !1915
  %98 = sub nsw i32 64, %6, !dbg !1917
  call void @llvm.dbg.value(metadata i32 %98, metadata !1799, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32 0, metadata !1798, metadata !DIExpression()), !dbg !1915
  %99 = sext i32 %1 to i64
  %100 = sext i32 %3 to i64
  %101 = sext i32 %5 to i64
  call void @llvm.dbg.value(metadata ptr %0, metadata !1785, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32 0, metadata !1798, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata ptr %2, metadata !1791, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata ptr %4, metadata !1793, metadata !DIExpression()), !dbg !1915
  %102 = load i8, ptr %2, align 1, !dbg !1918, !tbaa !1170
  %103 = zext i8 %102 to i32, !dbg !1918
  %104 = mul nsw i32 %103, %6, !dbg !1918
  %105 = load i8, ptr %4, align 1, !dbg !1918, !tbaa !1170
  %106 = zext i8 %105 to i32, !dbg !1918
  %107 = mul nsw i32 %98, %106, !dbg !1918
  %108 = add nsw i32 %107, %104, !dbg !1918
  %109 = add nsw i32 %108, 32, !dbg !1918
  %110 = lshr i32 %109, 6, !dbg !1918
  call void @llvm.dbg.value(metadata i32 %109, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1919
  %111 = icmp ult i32 %109, 16384, !dbg !1921
  %112 = icmp sgt i32 %108, 31, !dbg !1922
  %113 = sext i1 %112 to i32, !dbg !1922
  %114 = select i1 %111, i32 %110, i32 %113, !dbg !1922
  %115 = trunc i32 %114 to i8, !dbg !1922
  store i8 %115, ptr %0, align 1, !dbg !1918, !tbaa !1170
  %116 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1923
  %117 = load i8, ptr %116, align 1, !dbg !1923, !tbaa !1170
  %118 = zext i8 %117 to i32, !dbg !1923
  %119 = mul nsw i32 %118, %6, !dbg !1923
  %120 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1923
  %121 = load i8, ptr %120, align 1, !dbg !1923, !tbaa !1170
  %122 = zext i8 %121 to i32, !dbg !1923
  %123 = mul nsw i32 %98, %122, !dbg !1923
  %124 = add nsw i32 %123, %119, !dbg !1923
  %125 = add nsw i32 %124, 32, !dbg !1923
  %126 = lshr i32 %125, 6, !dbg !1923
  call void @llvm.dbg.value(metadata i32 %125, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1924
  %127 = icmp ult i32 %125, 16384, !dbg !1926
  %128 = icmp sgt i32 %124, 31, !dbg !1927
  %129 = sext i1 %128 to i32, !dbg !1927
  %130 = select i1 %127, i32 %126, i32 %129, !dbg !1927
  %131 = trunc i32 %130 to i8, !dbg !1927
  %132 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1923
  store i8 %131, ptr %132, align 1, !dbg !1923, !tbaa !1170
  %133 = getelementptr inbounds i8, ptr %2, i64 2, !dbg !1928
  %134 = load i8, ptr %133, align 1, !dbg !1928, !tbaa !1170
  %135 = zext i8 %134 to i32, !dbg !1928
  %136 = mul nsw i32 %135, %6, !dbg !1928
  %137 = getelementptr inbounds i8, ptr %4, i64 2, !dbg !1928
  %138 = load i8, ptr %137, align 1, !dbg !1928, !tbaa !1170
  %139 = zext i8 %138 to i32, !dbg !1928
  %140 = mul nsw i32 %98, %139, !dbg !1928
  %141 = add nsw i32 %140, %136, !dbg !1928
  %142 = add nsw i32 %141, 32, !dbg !1928
  %143 = lshr i32 %142, 6, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %142, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1929
  %144 = icmp ult i32 %142, 16384, !dbg !1931
  %145 = icmp sgt i32 %141, 31, !dbg !1932
  %146 = sext i1 %145 to i32, !dbg !1932
  %147 = select i1 %144, i32 %143, i32 %146, !dbg !1932
  %148 = trunc i32 %147 to i8, !dbg !1932
  %149 = getelementptr inbounds i8, ptr %0, i64 2, !dbg !1928
  store i8 %148, ptr %149, align 1, !dbg !1928, !tbaa !1170
  %150 = getelementptr inbounds i8, ptr %2, i64 3, !dbg !1933
  %151 = load i8, ptr %150, align 1, !dbg !1933, !tbaa !1170
  %152 = zext i8 %151 to i32, !dbg !1933
  %153 = mul nsw i32 %152, %6, !dbg !1933
  %154 = getelementptr inbounds i8, ptr %4, i64 3, !dbg !1933
  %155 = load i8, ptr %154, align 1, !dbg !1933, !tbaa !1170
  %156 = zext i8 %155 to i32, !dbg !1933
  %157 = mul nsw i32 %98, %156, !dbg !1933
  %158 = add nsw i32 %157, %153, !dbg !1933
  %159 = add nsw i32 %158, 32, !dbg !1933
  %160 = lshr i32 %159, 6, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %159, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1934
  %161 = icmp ult i32 %159, 16384, !dbg !1936
  %162 = icmp sgt i32 %158, 31, !dbg !1937
  %163 = sext i1 %162 to i32, !dbg !1937
  %164 = select i1 %161, i32 %160, i32 %163, !dbg !1937
  %165 = trunc i32 %164 to i8, !dbg !1937
  %166 = getelementptr inbounds i8, ptr %0, i64 3, !dbg !1933
  store i8 %165, ptr %166, align 1, !dbg !1933, !tbaa !1170
  call void @llvm.dbg.value(metadata i32 1, metadata !1798, metadata !DIExpression()), !dbg !1915
  %167 = getelementptr inbounds i8, ptr %0, i64 %99, !dbg !1938
  call void @llvm.dbg.value(metadata ptr %167, metadata !1785, metadata !DIExpression()), !dbg !1915
  %168 = getelementptr inbounds i8, ptr %2, i64 %100, !dbg !1939
  call void @llvm.dbg.value(metadata ptr %168, metadata !1791, metadata !DIExpression()), !dbg !1915
  %169 = getelementptr inbounds i8, ptr %4, i64 %101, !dbg !1940
  call void @llvm.dbg.value(metadata ptr %169, metadata !1793, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata ptr %167, metadata !1785, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32 1, metadata !1798, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata ptr %168, metadata !1791, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata ptr %169, metadata !1793, metadata !DIExpression()), !dbg !1915
  %170 = load i8, ptr %168, align 1, !dbg !1918, !tbaa !1170
  %171 = zext i8 %170 to i32, !dbg !1918
  %172 = mul nsw i32 %171, %6, !dbg !1918
  %173 = load i8, ptr %169, align 1, !dbg !1918, !tbaa !1170
  %174 = zext i8 %173 to i32, !dbg !1918
  %175 = mul nsw i32 %98, %174, !dbg !1918
  %176 = add nsw i32 %175, %172, !dbg !1918
  %177 = add nsw i32 %176, 32, !dbg !1918
  %178 = lshr i32 %177, 6, !dbg !1918
  call void @llvm.dbg.value(metadata i32 %177, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1919
  %179 = icmp ult i32 %177, 16384, !dbg !1921
  %180 = icmp sgt i32 %176, 31, !dbg !1922
  %181 = sext i1 %180 to i32, !dbg !1922
  %182 = select i1 %179, i32 %178, i32 %181, !dbg !1922
  %183 = trunc i32 %182 to i8, !dbg !1922
  store i8 %183, ptr %167, align 1, !dbg !1918, !tbaa !1170
  %184 = getelementptr inbounds i8, ptr %168, i64 1, !dbg !1923
  %185 = load i8, ptr %184, align 1, !dbg !1923, !tbaa !1170
  %186 = zext i8 %185 to i32, !dbg !1923
  %187 = mul nsw i32 %186, %6, !dbg !1923
  %188 = getelementptr inbounds i8, ptr %169, i64 1, !dbg !1923
  %189 = load i8, ptr %188, align 1, !dbg !1923, !tbaa !1170
  %190 = zext i8 %189 to i32, !dbg !1923
  %191 = mul nsw i32 %98, %190, !dbg !1923
  %192 = add nsw i32 %191, %187, !dbg !1923
  %193 = add nsw i32 %192, 32, !dbg !1923
  %194 = lshr i32 %193, 6, !dbg !1923
  call void @llvm.dbg.value(metadata i32 %193, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1924
  %195 = icmp ult i32 %193, 16384, !dbg !1926
  %196 = icmp sgt i32 %192, 31, !dbg !1927
  %197 = sext i1 %196 to i32, !dbg !1927
  %198 = select i1 %195, i32 %194, i32 %197, !dbg !1927
  %199 = trunc i32 %198 to i8, !dbg !1927
  %200 = getelementptr inbounds i8, ptr %167, i64 1, !dbg !1923
  store i8 %199, ptr %200, align 1, !dbg !1923, !tbaa !1170
  %201 = getelementptr inbounds i8, ptr %168, i64 2, !dbg !1928
  %202 = load i8, ptr %201, align 1, !dbg !1928, !tbaa !1170
  %203 = zext i8 %202 to i32, !dbg !1928
  %204 = mul nsw i32 %203, %6, !dbg !1928
  %205 = getelementptr inbounds i8, ptr %169, i64 2, !dbg !1928
  %206 = load i8, ptr %205, align 1, !dbg !1928, !tbaa !1170
  %207 = zext i8 %206 to i32, !dbg !1928
  %208 = mul nsw i32 %98, %207, !dbg !1928
  %209 = add nsw i32 %208, %204, !dbg !1928
  %210 = add nsw i32 %209, 32, !dbg !1928
  %211 = lshr i32 %210, 6, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %210, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1929
  %212 = icmp ult i32 %210, 16384, !dbg !1931
  %213 = icmp sgt i32 %209, 31, !dbg !1932
  %214 = sext i1 %213 to i32, !dbg !1932
  %215 = select i1 %212, i32 %211, i32 %214, !dbg !1932
  %216 = trunc i32 %215 to i8, !dbg !1932
  %217 = getelementptr inbounds i8, ptr %167, i64 2, !dbg !1928
  store i8 %216, ptr %217, align 1, !dbg !1928, !tbaa !1170
  %218 = getelementptr inbounds i8, ptr %168, i64 3, !dbg !1933
  %219 = load i8, ptr %218, align 1, !dbg !1933, !tbaa !1170
  %220 = zext i8 %219 to i32, !dbg !1933
  %221 = mul nsw i32 %220, %6, !dbg !1933
  %222 = getelementptr inbounds i8, ptr %169, i64 3, !dbg !1933
  %223 = load i8, ptr %222, align 1, !dbg !1933, !tbaa !1170
  %224 = zext i8 %223 to i32, !dbg !1933
  %225 = mul nsw i32 %98, %224, !dbg !1933
  %226 = add nsw i32 %225, %221, !dbg !1933
  %227 = add nsw i32 %226, 32, !dbg !1933
  %228 = lshr i32 %227, 6, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %227, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1934
  %229 = icmp ult i32 %227, 16384, !dbg !1936
  %230 = icmp sgt i32 %226, 31, !dbg !1937
  %231 = sext i1 %230 to i32, !dbg !1937
  %232 = select i1 %229, i32 %228, i32 %231, !dbg !1937
  %233 = trunc i32 %232 to i8, !dbg !1937
  call void @llvm.dbg.value(metadata i32 2, metadata !1798, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata !DIArgList(ptr %167, i64 %99), metadata !1785, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1915
  call void @llvm.dbg.value(metadata !DIArgList(ptr %168, i64 %100), metadata !1791, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1915
  call void @llvm.dbg.value(metadata !DIArgList(ptr %169, i64 %101), metadata !1793, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1915
  br label %234, !dbg !1902

234:                                              ; preds = %97, %9
  %235 = phi i64 [ %99, %97 ], [ %12, %9 ]
  %236 = phi i8 [ %233, %97 ], [ %96, %9 ]
  %237 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1938
  %238 = getelementptr inbounds i8, ptr %237, i64 3, !dbg !1900
  store i8 %236, ptr %238, align 1, !dbg !1900, !tbaa !1170
  ret void, !dbg !1902
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_2x4(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #4 !dbg !1941 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1943, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i32 %1, metadata !1944, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata ptr %2, metadata !1945, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i32 %3, metadata !1946, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata ptr %4, metadata !1947, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i32 %5, metadata !1948, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i32 %6, metadata !1949, metadata !DIExpression()), !dbg !1950
  %8 = icmp eq i32 %6, 32, !dbg !1951
  br i1 %8, label %9, label %97, !dbg !1953

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 %1, metadata !1613, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 %3, metadata !1615, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 %5, metadata !1617, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 2, metadata !1618, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 4, metadata !1619, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1954
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1954
  %13 = load i8, ptr %2, align 1, !dbg !1956, !tbaa !1170
  %14 = zext i8 %13 to i16, !dbg !1956
  %15 = load i8, ptr %4, align 1, !dbg !1957, !tbaa !1170
  %16 = zext i8 %15 to i16, !dbg !1957
  %17 = add nuw nsw i16 %14, 1, !dbg !1958
  %18 = add nuw nsw i16 %17, %16, !dbg !1959
  %19 = lshr i16 %18, 1
  %20 = trunc i16 %19 to i8, !dbg !1960
  store i8 %20, ptr %0, align 1, !dbg !1961, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1954
  %21 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1956
  %22 = load i8, ptr %21, align 1, !dbg !1956, !tbaa !1170
  %23 = zext i8 %22 to i16, !dbg !1956
  %24 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1957
  %25 = load i8, ptr %24, align 1, !dbg !1957, !tbaa !1170
  %26 = zext i8 %25 to i16, !dbg !1957
  %27 = add nuw nsw i16 %23, 1, !dbg !1958
  %28 = add nuw nsw i16 %27, %26, !dbg !1959
  %29 = lshr i16 %28, 1
  %30 = trunc i16 %29 to i8, !dbg !1960
  %31 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1962
  store i8 %30, ptr %31, align 1, !dbg !1961, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1954
  %32 = getelementptr inbounds i8, ptr %2, i64 %10, !dbg !1963
  call void @llvm.dbg.value(metadata ptr %32, metadata !1614, metadata !DIExpression()), !dbg !1954
  %33 = getelementptr inbounds i8, ptr %4, i64 %11, !dbg !1964
  call void @llvm.dbg.value(metadata ptr %33, metadata !1616, metadata !DIExpression()), !dbg !1954
  %34 = getelementptr inbounds i8, ptr %0, i64 %12, !dbg !1965
  call void @llvm.dbg.value(metadata ptr %34, metadata !1610, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 1, metadata !1621, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 1, metadata !1621, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %34, metadata !1610, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %32, metadata !1614, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %33, metadata !1616, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1954
  %35 = load i8, ptr %32, align 1, !dbg !1956, !tbaa !1170
  %36 = zext i8 %35 to i16, !dbg !1956
  %37 = load i8, ptr %33, align 1, !dbg !1957, !tbaa !1170
  %38 = zext i8 %37 to i16, !dbg !1957
  %39 = add nuw nsw i16 %36, 1, !dbg !1958
  %40 = add nuw nsw i16 %39, %38, !dbg !1959
  %41 = lshr i16 %40, 1
  %42 = trunc i16 %41 to i8, !dbg !1960
  store i8 %42, ptr %34, align 1, !dbg !1961, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1954
  %43 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !1956
  %44 = load i8, ptr %43, align 1, !dbg !1956, !tbaa !1170
  %45 = zext i8 %44 to i16, !dbg !1956
  %46 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1957
  %47 = load i8, ptr %46, align 1, !dbg !1957, !tbaa !1170
  %48 = zext i8 %47 to i16, !dbg !1957
  %49 = add nuw nsw i16 %45, 1, !dbg !1958
  %50 = add nuw nsw i16 %49, %48, !dbg !1959
  %51 = lshr i16 %50, 1
  %52 = trunc i16 %51 to i8, !dbg !1960
  %53 = getelementptr inbounds i8, ptr %34, i64 1, !dbg !1962
  store i8 %52, ptr %53, align 1, !dbg !1961, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1954
  %54 = getelementptr inbounds i8, ptr %32, i64 %10, !dbg !1963
  call void @llvm.dbg.value(metadata ptr %54, metadata !1614, metadata !DIExpression()), !dbg !1954
  %55 = getelementptr inbounds i8, ptr %33, i64 %11, !dbg !1964
  call void @llvm.dbg.value(metadata ptr %55, metadata !1616, metadata !DIExpression()), !dbg !1954
  %56 = getelementptr inbounds i8, ptr %34, i64 %12, !dbg !1965
  call void @llvm.dbg.value(metadata ptr %56, metadata !1610, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 2, metadata !1621, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 2, metadata !1621, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %56, metadata !1610, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %54, metadata !1614, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %55, metadata !1616, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1954
  %57 = load i8, ptr %54, align 1, !dbg !1956, !tbaa !1170
  %58 = zext i8 %57 to i16, !dbg !1956
  %59 = load i8, ptr %55, align 1, !dbg !1957, !tbaa !1170
  %60 = zext i8 %59 to i16, !dbg !1957
  %61 = add nuw nsw i16 %58, 1, !dbg !1958
  %62 = add nuw nsw i16 %61, %60, !dbg !1959
  %63 = lshr i16 %62, 1
  %64 = trunc i16 %63 to i8, !dbg !1960
  store i8 %64, ptr %56, align 1, !dbg !1961, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1954
  %65 = getelementptr inbounds i8, ptr %54, i64 1, !dbg !1956
  %66 = load i8, ptr %65, align 1, !dbg !1956, !tbaa !1170
  %67 = zext i8 %66 to i16, !dbg !1956
  %68 = getelementptr inbounds i8, ptr %55, i64 1, !dbg !1957
  %69 = load i8, ptr %68, align 1, !dbg !1957, !tbaa !1170
  %70 = zext i8 %69 to i16, !dbg !1957
  %71 = add nuw nsw i16 %67, 1, !dbg !1958
  %72 = add nuw nsw i16 %71, %70, !dbg !1959
  %73 = lshr i16 %72, 1
  %74 = trunc i16 %73 to i8, !dbg !1960
  %75 = getelementptr inbounds i8, ptr %56, i64 1, !dbg !1962
  store i8 %74, ptr %75, align 1, !dbg !1961, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1954
  %76 = getelementptr inbounds i8, ptr %54, i64 %10, !dbg !1963
  call void @llvm.dbg.value(metadata ptr %76, metadata !1614, metadata !DIExpression()), !dbg !1954
  %77 = getelementptr inbounds i8, ptr %55, i64 %11, !dbg !1964
  call void @llvm.dbg.value(metadata ptr %77, metadata !1616, metadata !DIExpression()), !dbg !1954
  %78 = getelementptr inbounds i8, ptr %56, i64 %12, !dbg !1965
  call void @llvm.dbg.value(metadata ptr %78, metadata !1610, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 3, metadata !1621, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 3, metadata !1621, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %78, metadata !1610, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %76, metadata !1614, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %77, metadata !1616, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1954
  %79 = load i8, ptr %76, align 1, !dbg !1956, !tbaa !1170
  %80 = zext i8 %79 to i16, !dbg !1956
  %81 = load i8, ptr %77, align 1, !dbg !1957, !tbaa !1170
  %82 = zext i8 %81 to i16, !dbg !1957
  %83 = add nuw nsw i16 %80, 1, !dbg !1958
  %84 = add nuw nsw i16 %83, %82, !dbg !1959
  %85 = lshr i16 %84, 1
  %86 = trunc i16 %85 to i8, !dbg !1960
  store i8 %86, ptr %78, align 1, !dbg !1961, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1954
  %87 = getelementptr inbounds i8, ptr %76, i64 1, !dbg !1956
  %88 = load i8, ptr %87, align 1, !dbg !1956, !tbaa !1170
  %89 = zext i8 %88 to i16, !dbg !1956
  %90 = getelementptr inbounds i8, ptr %77, i64 1, !dbg !1957
  %91 = load i8, ptr %90, align 1, !dbg !1957, !tbaa !1170
  %92 = zext i8 %91 to i16, !dbg !1957
  %93 = add nuw nsw i16 %89, 1, !dbg !1958
  %94 = add nuw nsw i16 %93, %92, !dbg !1959
  %95 = lshr i16 %94, 1
  %96 = trunc i16 %95 to i8, !dbg !1960
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata !DIArgList(ptr %76, i64 %10), metadata !1614, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1954
  call void @llvm.dbg.value(metadata !DIArgList(ptr %77, i64 %11), metadata !1616, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1954
  call void @llvm.dbg.value(metadata !DIArgList(ptr %78, i64 %12), metadata !1610, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1954
  call void @llvm.dbg.value(metadata i32 4, metadata !1621, metadata !DIExpression()), !dbg !1954
  br label %234, !dbg !1953

97:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1785, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 %1, metadata !1790, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata ptr %2, metadata !1791, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 %3, metadata !1792, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata ptr %4, metadata !1793, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 %5, metadata !1794, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 2, metadata !1795, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 4, metadata !1796, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 %6, metadata !1797, metadata !DIExpression()), !dbg !1966
  %98 = sub nsw i32 64, %6, !dbg !1968
  call void @llvm.dbg.value(metadata i32 %98, metadata !1799, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 0, metadata !1798, metadata !DIExpression()), !dbg !1966
  %99 = sext i32 %1 to i64
  %100 = sext i32 %3 to i64
  %101 = sext i32 %5 to i64
  call void @llvm.dbg.value(metadata ptr %0, metadata !1785, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 0, metadata !1798, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata ptr %2, metadata !1791, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata ptr %4, metadata !1793, metadata !DIExpression()), !dbg !1966
  %102 = load i8, ptr %2, align 1, !dbg !1969, !tbaa !1170
  %103 = zext i8 %102 to i32, !dbg !1969
  %104 = mul nsw i32 %103, %6, !dbg !1969
  %105 = load i8, ptr %4, align 1, !dbg !1969, !tbaa !1170
  %106 = zext i8 %105 to i32, !dbg !1969
  %107 = mul nsw i32 %98, %106, !dbg !1969
  %108 = add nsw i32 %107, %104, !dbg !1969
  %109 = add nsw i32 %108, 32, !dbg !1969
  %110 = lshr i32 %109, 6, !dbg !1969
  call void @llvm.dbg.value(metadata i32 %109, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1970
  %111 = icmp ult i32 %109, 16384, !dbg !1972
  %112 = icmp sgt i32 %108, 31, !dbg !1973
  %113 = sext i1 %112 to i32, !dbg !1973
  %114 = select i1 %111, i32 %110, i32 %113, !dbg !1973
  %115 = trunc i32 %114 to i8, !dbg !1973
  store i8 %115, ptr %0, align 1, !dbg !1969, !tbaa !1170
  %116 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1974
  %117 = load i8, ptr %116, align 1, !dbg !1974, !tbaa !1170
  %118 = zext i8 %117 to i32, !dbg !1974
  %119 = mul nsw i32 %118, %6, !dbg !1974
  %120 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1974
  %121 = load i8, ptr %120, align 1, !dbg !1974, !tbaa !1170
  %122 = zext i8 %121 to i32, !dbg !1974
  %123 = mul nsw i32 %98, %122, !dbg !1974
  %124 = add nsw i32 %123, %119, !dbg !1974
  %125 = add nsw i32 %124, 32, !dbg !1974
  %126 = lshr i32 %125, 6, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %125, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1975
  %127 = icmp ult i32 %125, 16384, !dbg !1977
  %128 = icmp sgt i32 %124, 31, !dbg !1978
  %129 = sext i1 %128 to i32, !dbg !1978
  %130 = select i1 %127, i32 %126, i32 %129, !dbg !1978
  %131 = trunc i32 %130 to i8, !dbg !1978
  %132 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1974
  store i8 %131, ptr %132, align 1, !dbg !1974, !tbaa !1170
  call void @llvm.dbg.value(metadata i32 1, metadata !1798, metadata !DIExpression()), !dbg !1966
  %133 = getelementptr inbounds i8, ptr %0, i64 %99, !dbg !1979
  call void @llvm.dbg.value(metadata ptr %133, metadata !1785, metadata !DIExpression()), !dbg !1966
  %134 = getelementptr inbounds i8, ptr %2, i64 %100, !dbg !1980
  call void @llvm.dbg.value(metadata ptr %134, metadata !1791, metadata !DIExpression()), !dbg !1966
  %135 = getelementptr inbounds i8, ptr %4, i64 %101, !dbg !1981
  call void @llvm.dbg.value(metadata ptr %135, metadata !1793, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata ptr %133, metadata !1785, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 1, metadata !1798, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata ptr %134, metadata !1791, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata ptr %135, metadata !1793, metadata !DIExpression()), !dbg !1966
  %136 = load i8, ptr %134, align 1, !dbg !1969, !tbaa !1170
  %137 = zext i8 %136 to i32, !dbg !1969
  %138 = mul nsw i32 %137, %6, !dbg !1969
  %139 = load i8, ptr %135, align 1, !dbg !1969, !tbaa !1170
  %140 = zext i8 %139 to i32, !dbg !1969
  %141 = mul nsw i32 %98, %140, !dbg !1969
  %142 = add nsw i32 %141, %138, !dbg !1969
  %143 = add nsw i32 %142, 32, !dbg !1969
  %144 = lshr i32 %143, 6, !dbg !1969
  call void @llvm.dbg.value(metadata i32 %143, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1970
  %145 = icmp ult i32 %143, 16384, !dbg !1972
  %146 = icmp sgt i32 %142, 31, !dbg !1973
  %147 = sext i1 %146 to i32, !dbg !1973
  %148 = select i1 %145, i32 %144, i32 %147, !dbg !1973
  %149 = trunc i32 %148 to i8, !dbg !1973
  store i8 %149, ptr %133, align 1, !dbg !1969, !tbaa !1170
  %150 = getelementptr inbounds i8, ptr %134, i64 1, !dbg !1974
  %151 = load i8, ptr %150, align 1, !dbg !1974, !tbaa !1170
  %152 = zext i8 %151 to i32, !dbg !1974
  %153 = mul nsw i32 %152, %6, !dbg !1974
  %154 = getelementptr inbounds i8, ptr %135, i64 1, !dbg !1974
  %155 = load i8, ptr %154, align 1, !dbg !1974, !tbaa !1170
  %156 = zext i8 %155 to i32, !dbg !1974
  %157 = mul nsw i32 %98, %156, !dbg !1974
  %158 = add nsw i32 %157, %153, !dbg !1974
  %159 = add nsw i32 %158, 32, !dbg !1974
  %160 = lshr i32 %159, 6, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %159, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1975
  %161 = icmp ult i32 %159, 16384, !dbg !1977
  %162 = icmp sgt i32 %158, 31, !dbg !1978
  %163 = sext i1 %162 to i32, !dbg !1978
  %164 = select i1 %161, i32 %160, i32 %163, !dbg !1978
  %165 = trunc i32 %164 to i8, !dbg !1978
  %166 = getelementptr inbounds i8, ptr %133, i64 1, !dbg !1974
  store i8 %165, ptr %166, align 1, !dbg !1974, !tbaa !1170
  call void @llvm.dbg.value(metadata i32 2, metadata !1798, metadata !DIExpression()), !dbg !1966
  %167 = getelementptr inbounds i8, ptr %133, i64 %99, !dbg !1979
  call void @llvm.dbg.value(metadata ptr %167, metadata !1785, metadata !DIExpression()), !dbg !1966
  %168 = getelementptr inbounds i8, ptr %134, i64 %100, !dbg !1980
  call void @llvm.dbg.value(metadata ptr %168, metadata !1791, metadata !DIExpression()), !dbg !1966
  %169 = getelementptr inbounds i8, ptr %135, i64 %101, !dbg !1981
  call void @llvm.dbg.value(metadata ptr %169, metadata !1793, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata ptr %167, metadata !1785, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 2, metadata !1798, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata ptr %168, metadata !1791, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata ptr %169, metadata !1793, metadata !DIExpression()), !dbg !1966
  %170 = load i8, ptr %168, align 1, !dbg !1969, !tbaa !1170
  %171 = zext i8 %170 to i32, !dbg !1969
  %172 = mul nsw i32 %171, %6, !dbg !1969
  %173 = load i8, ptr %169, align 1, !dbg !1969, !tbaa !1170
  %174 = zext i8 %173 to i32, !dbg !1969
  %175 = mul nsw i32 %98, %174, !dbg !1969
  %176 = add nsw i32 %175, %172, !dbg !1969
  %177 = add nsw i32 %176, 32, !dbg !1969
  %178 = lshr i32 %177, 6, !dbg !1969
  call void @llvm.dbg.value(metadata i32 %177, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1970
  %179 = icmp ult i32 %177, 16384, !dbg !1972
  %180 = icmp sgt i32 %176, 31, !dbg !1973
  %181 = sext i1 %180 to i32, !dbg !1973
  %182 = select i1 %179, i32 %178, i32 %181, !dbg !1973
  %183 = trunc i32 %182 to i8, !dbg !1973
  store i8 %183, ptr %167, align 1, !dbg !1969, !tbaa !1170
  %184 = getelementptr inbounds i8, ptr %168, i64 1, !dbg !1974
  %185 = load i8, ptr %184, align 1, !dbg !1974, !tbaa !1170
  %186 = zext i8 %185 to i32, !dbg !1974
  %187 = mul nsw i32 %186, %6, !dbg !1974
  %188 = getelementptr inbounds i8, ptr %169, i64 1, !dbg !1974
  %189 = load i8, ptr %188, align 1, !dbg !1974, !tbaa !1170
  %190 = zext i8 %189 to i32, !dbg !1974
  %191 = mul nsw i32 %98, %190, !dbg !1974
  %192 = add nsw i32 %191, %187, !dbg !1974
  %193 = add nsw i32 %192, 32, !dbg !1974
  %194 = lshr i32 %193, 6, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %193, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1975
  %195 = icmp ult i32 %193, 16384, !dbg !1977
  %196 = icmp sgt i32 %192, 31, !dbg !1978
  %197 = sext i1 %196 to i32, !dbg !1978
  %198 = select i1 %195, i32 %194, i32 %197, !dbg !1978
  %199 = trunc i32 %198 to i8, !dbg !1978
  %200 = getelementptr inbounds i8, ptr %167, i64 1, !dbg !1974
  store i8 %199, ptr %200, align 1, !dbg !1974, !tbaa !1170
  call void @llvm.dbg.value(metadata i32 3, metadata !1798, metadata !DIExpression()), !dbg !1966
  %201 = getelementptr inbounds i8, ptr %167, i64 %99, !dbg !1979
  call void @llvm.dbg.value(metadata ptr %201, metadata !1785, metadata !DIExpression()), !dbg !1966
  %202 = getelementptr inbounds i8, ptr %168, i64 %100, !dbg !1980
  call void @llvm.dbg.value(metadata ptr %202, metadata !1791, metadata !DIExpression()), !dbg !1966
  %203 = getelementptr inbounds i8, ptr %169, i64 %101, !dbg !1981
  call void @llvm.dbg.value(metadata ptr %203, metadata !1793, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata ptr %201, metadata !1785, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 3, metadata !1798, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata ptr %202, metadata !1791, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata ptr %203, metadata !1793, metadata !DIExpression()), !dbg !1966
  %204 = load i8, ptr %202, align 1, !dbg !1969, !tbaa !1170
  %205 = zext i8 %204 to i32, !dbg !1969
  %206 = mul nsw i32 %205, %6, !dbg !1969
  %207 = load i8, ptr %203, align 1, !dbg !1969, !tbaa !1170
  %208 = zext i8 %207 to i32, !dbg !1969
  %209 = mul nsw i32 %98, %208, !dbg !1969
  %210 = add nsw i32 %209, %206, !dbg !1969
  %211 = add nsw i32 %210, 32, !dbg !1969
  %212 = lshr i32 %211, 6, !dbg !1969
  call void @llvm.dbg.value(metadata i32 %211, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1970
  %213 = icmp ult i32 %211, 16384, !dbg !1972
  %214 = icmp sgt i32 %210, 31, !dbg !1973
  %215 = sext i1 %214 to i32, !dbg !1973
  %216 = select i1 %213, i32 %212, i32 %215, !dbg !1973
  %217 = trunc i32 %216 to i8, !dbg !1973
  store i8 %217, ptr %201, align 1, !dbg !1969, !tbaa !1170
  %218 = getelementptr inbounds i8, ptr %202, i64 1, !dbg !1974
  %219 = load i8, ptr %218, align 1, !dbg !1974, !tbaa !1170
  %220 = zext i8 %219 to i32, !dbg !1974
  %221 = mul nsw i32 %220, %6, !dbg !1974
  %222 = getelementptr inbounds i8, ptr %203, i64 1, !dbg !1974
  %223 = load i8, ptr %222, align 1, !dbg !1974, !tbaa !1170
  %224 = zext i8 %223 to i32, !dbg !1974
  %225 = mul nsw i32 %98, %224, !dbg !1974
  %226 = add nsw i32 %225, %221, !dbg !1974
  %227 = add nsw i32 %226, 32, !dbg !1974
  %228 = lshr i32 %227, 6, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %227, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !1975
  %229 = icmp ult i32 %227, 16384, !dbg !1977
  %230 = icmp sgt i32 %226, 31, !dbg !1978
  %231 = sext i1 %230 to i32, !dbg !1978
  %232 = select i1 %229, i32 %228, i32 %231, !dbg !1978
  %233 = trunc i32 %232 to i8, !dbg !1978
  call void @llvm.dbg.value(metadata i32 4, metadata !1798, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata !DIArgList(ptr %201, i64 %99), metadata !1785, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1966
  call void @llvm.dbg.value(metadata !DIArgList(ptr %202, i64 %100), metadata !1791, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1966
  call void @llvm.dbg.value(metadata !DIArgList(ptr %203, i64 %101), metadata !1793, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1966
  br label %234, !dbg !1953

234:                                              ; preds = %97, %9
  %235 = phi ptr [ %201, %97 ], [ %78, %9 ]
  %236 = phi i8 [ %233, %97 ], [ %96, %9 ]
  %237 = getelementptr inbounds i8, ptr %235, i64 1, !dbg !1951
  store i8 %236, ptr %237, align 1, !dbg !1951, !tbaa !1170
  ret void, !dbg !1953
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_2x2(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #4 !dbg !1982 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1984, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 %1, metadata !1985, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata ptr %2, metadata !1986, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 %3, metadata !1987, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata ptr %4, metadata !1988, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 %5, metadata !1989, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 %6, metadata !1990, metadata !DIExpression()), !dbg !1991
  %8 = icmp eq i32 %6, 32, !dbg !1992
  br i1 %8, label %9, label %53, !dbg !1994

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 %1, metadata !1613, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 %3, metadata !1615, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 %5, metadata !1617, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 2, metadata !1618, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 2, metadata !1619, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1995
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !1621, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata ptr %0, metadata !1610, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata ptr %4, metadata !1616, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1995
  %13 = load i8, ptr %2, align 1, !dbg !1997, !tbaa !1170
  %14 = zext i8 %13 to i16, !dbg !1997
  %15 = load i8, ptr %4, align 1, !dbg !1998, !tbaa !1170
  %16 = zext i8 %15 to i16, !dbg !1998
  %17 = add nuw nsw i16 %14, 1, !dbg !1999
  %18 = add nuw nsw i16 %17, %16, !dbg !2000
  %19 = lshr i16 %18, 1
  %20 = trunc i16 %19 to i8, !dbg !2001
  store i8 %20, ptr %0, align 1, !dbg !2002, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1995
  %21 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1997
  %22 = load i8, ptr %21, align 1, !dbg !1997, !tbaa !1170
  %23 = zext i8 %22 to i16, !dbg !1997
  %24 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1998
  %25 = load i8, ptr %24, align 1, !dbg !1998, !tbaa !1170
  %26 = zext i8 %25 to i16, !dbg !1998
  %27 = add nuw nsw i16 %23, 1, !dbg !1999
  %28 = add nuw nsw i16 %27, %26, !dbg !2000
  %29 = lshr i16 %28, 1
  %30 = trunc i16 %29 to i8, !dbg !2001
  %31 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !2003
  store i8 %30, ptr %31, align 1, !dbg !2002, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1995
  %32 = getelementptr inbounds i8, ptr %2, i64 %10, !dbg !2004
  call void @llvm.dbg.value(metadata ptr %32, metadata !1614, metadata !DIExpression()), !dbg !1995
  %33 = getelementptr inbounds i8, ptr %4, i64 %11, !dbg !2005
  call void @llvm.dbg.value(metadata ptr %33, metadata !1616, metadata !DIExpression()), !dbg !1995
  %34 = getelementptr inbounds i8, ptr %0, i64 %12, !dbg !2006
  call void @llvm.dbg.value(metadata ptr %34, metadata !1610, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 1, metadata !1621, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 1, metadata !1621, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata ptr %34, metadata !1610, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata ptr %32, metadata !1614, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata ptr %33, metadata !1616, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1995
  %35 = load i8, ptr %32, align 1, !dbg !1997, !tbaa !1170
  %36 = zext i8 %35 to i16, !dbg !1997
  %37 = load i8, ptr %33, align 1, !dbg !1998, !tbaa !1170
  %38 = zext i8 %37 to i16, !dbg !1998
  %39 = add nuw nsw i16 %36, 1, !dbg !1999
  %40 = add nuw nsw i16 %39, %38, !dbg !2000
  %41 = lshr i16 %40, 1
  %42 = trunc i16 %41 to i8, !dbg !2001
  store i8 %42, ptr %34, align 1, !dbg !2002, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1995
  %43 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !1997
  %44 = load i8, ptr %43, align 1, !dbg !1997, !tbaa !1170
  %45 = zext i8 %44 to i16, !dbg !1997
  %46 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1998
  %47 = load i8, ptr %46, align 1, !dbg !1998, !tbaa !1170
  %48 = zext i8 %47 to i16, !dbg !1998
  %49 = add nuw nsw i16 %45, 1, !dbg !1999
  %50 = add nuw nsw i16 %49, %48, !dbg !2000
  %51 = lshr i16 %50, 1
  %52 = trunc i16 %51 to i8, !dbg !2001
  call void @llvm.dbg.value(metadata i64 2, metadata !1620, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata !DIArgList(ptr %32, i64 %10), metadata !1614, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1995
  call void @llvm.dbg.value(metadata !DIArgList(ptr %33, i64 %11), metadata !1616, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1995
  call void @llvm.dbg.value(metadata !DIArgList(ptr %34, i64 %12), metadata !1610, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1995
  call void @llvm.dbg.value(metadata i32 2, metadata !1621, metadata !DIExpression()), !dbg !1995
  br label %122, !dbg !1994

53:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1785, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %1, metadata !1790, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata ptr %2, metadata !1791, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %3, metadata !1792, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata ptr %4, metadata !1793, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %5, metadata !1794, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 2, metadata !1795, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 2, metadata !1796, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %6, metadata !1797, metadata !DIExpression()), !dbg !2007
  %54 = sub nsw i32 64, %6, !dbg !2009
  call void @llvm.dbg.value(metadata i32 %54, metadata !1799, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 0, metadata !1798, metadata !DIExpression()), !dbg !2007
  %55 = sext i32 %1 to i64
  %56 = sext i32 %3 to i64
  %57 = sext i32 %5 to i64
  call void @llvm.dbg.value(metadata ptr %0, metadata !1785, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 0, metadata !1798, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata ptr %2, metadata !1791, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata ptr %4, metadata !1793, metadata !DIExpression()), !dbg !2007
  %58 = load i8, ptr %2, align 1, !dbg !2010, !tbaa !1170
  %59 = zext i8 %58 to i32, !dbg !2010
  %60 = mul nsw i32 %59, %6, !dbg !2010
  %61 = load i8, ptr %4, align 1, !dbg !2010, !tbaa !1170
  %62 = zext i8 %61 to i32, !dbg !2010
  %63 = mul nsw i32 %54, %62, !dbg !2010
  %64 = add nsw i32 %63, %60, !dbg !2010
  %65 = add nsw i32 %64, 32, !dbg !2010
  %66 = lshr i32 %65, 6, !dbg !2010
  call void @llvm.dbg.value(metadata i32 %65, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2011
  %67 = icmp ult i32 %65, 16384, !dbg !2013
  %68 = icmp sgt i32 %64, 31, !dbg !2014
  %69 = sext i1 %68 to i32, !dbg !2014
  %70 = select i1 %67, i32 %66, i32 %69, !dbg !2014
  %71 = trunc i32 %70 to i8, !dbg !2014
  store i8 %71, ptr %0, align 1, !dbg !2010, !tbaa !1170
  %72 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2015
  %73 = load i8, ptr %72, align 1, !dbg !2015, !tbaa !1170
  %74 = zext i8 %73 to i32, !dbg !2015
  %75 = mul nsw i32 %74, %6, !dbg !2015
  %76 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !2015
  %77 = load i8, ptr %76, align 1, !dbg !2015, !tbaa !1170
  %78 = zext i8 %77 to i32, !dbg !2015
  %79 = mul nsw i32 %54, %78, !dbg !2015
  %80 = add nsw i32 %79, %75, !dbg !2015
  %81 = add nsw i32 %80, 32, !dbg !2015
  %82 = lshr i32 %81, 6, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %81, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2016
  %83 = icmp ult i32 %81, 16384, !dbg !2018
  %84 = icmp sgt i32 %80, 31, !dbg !2019
  %85 = sext i1 %84 to i32, !dbg !2019
  %86 = select i1 %83, i32 %82, i32 %85, !dbg !2019
  %87 = trunc i32 %86 to i8, !dbg !2019
  %88 = getelementptr inbounds i8, ptr %0, i64 1, !dbg !2015
  store i8 %87, ptr %88, align 1, !dbg !2015, !tbaa !1170
  call void @llvm.dbg.value(metadata i32 1, metadata !1798, metadata !DIExpression()), !dbg !2007
  %89 = getelementptr inbounds i8, ptr %0, i64 %55, !dbg !2020
  call void @llvm.dbg.value(metadata ptr %89, metadata !1785, metadata !DIExpression()), !dbg !2007
  %90 = getelementptr inbounds i8, ptr %2, i64 %56, !dbg !2021
  call void @llvm.dbg.value(metadata ptr %90, metadata !1791, metadata !DIExpression()), !dbg !2007
  %91 = getelementptr inbounds i8, ptr %4, i64 %57, !dbg !2022
  call void @llvm.dbg.value(metadata ptr %91, metadata !1793, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata ptr %89, metadata !1785, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 1, metadata !1798, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata ptr %90, metadata !1791, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata ptr %91, metadata !1793, metadata !DIExpression()), !dbg !2007
  %92 = load i8, ptr %90, align 1, !dbg !2010, !tbaa !1170
  %93 = zext i8 %92 to i32, !dbg !2010
  %94 = mul nsw i32 %93, %6, !dbg !2010
  %95 = load i8, ptr %91, align 1, !dbg !2010, !tbaa !1170
  %96 = zext i8 %95 to i32, !dbg !2010
  %97 = mul nsw i32 %54, %96, !dbg !2010
  %98 = add nsw i32 %97, %94, !dbg !2010
  %99 = add nsw i32 %98, 32, !dbg !2010
  %100 = lshr i32 %99, 6, !dbg !2010
  call void @llvm.dbg.value(metadata i32 %99, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2011
  %101 = icmp ult i32 %99, 16384, !dbg !2013
  %102 = icmp sgt i32 %98, 31, !dbg !2014
  %103 = sext i1 %102 to i32, !dbg !2014
  %104 = select i1 %101, i32 %100, i32 %103, !dbg !2014
  %105 = trunc i32 %104 to i8, !dbg !2014
  store i8 %105, ptr %89, align 1, !dbg !2010, !tbaa !1170
  %106 = getelementptr inbounds i8, ptr %90, i64 1, !dbg !2015
  %107 = load i8, ptr %106, align 1, !dbg !2015, !tbaa !1170
  %108 = zext i8 %107 to i32, !dbg !2015
  %109 = mul nsw i32 %108, %6, !dbg !2015
  %110 = getelementptr inbounds i8, ptr %91, i64 1, !dbg !2015
  %111 = load i8, ptr %110, align 1, !dbg !2015, !tbaa !1170
  %112 = zext i8 %111 to i32, !dbg !2015
  %113 = mul nsw i32 %54, %112, !dbg !2015
  %114 = add nsw i32 %113, %109, !dbg !2015
  %115 = add nsw i32 %114, 32, !dbg !2015
  %116 = lshr i32 %115, 6, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %115, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2016
  %117 = icmp ult i32 %115, 16384, !dbg !2018
  %118 = icmp sgt i32 %114, 31, !dbg !2019
  %119 = sext i1 %118 to i32, !dbg !2019
  %120 = select i1 %117, i32 %116, i32 %119, !dbg !2019
  %121 = trunc i32 %120 to i8, !dbg !2019
  call void @llvm.dbg.value(metadata i32 2, metadata !1798, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata !DIArgList(ptr %89, i64 %55), metadata !1785, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2007
  call void @llvm.dbg.value(metadata !DIArgList(ptr %90, i64 %56), metadata !1791, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2007
  call void @llvm.dbg.value(metadata !DIArgList(ptr %91, i64 %57), metadata !1793, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2007
  br label %122, !dbg !1994

122:                                              ; preds = %53, %9
  %123 = phi i64 [ %55, %53 ], [ %12, %9 ]
  %124 = phi i8 [ %121, %53 ], [ %52, %9 ]
  %125 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2020
  %126 = getelementptr inbounds i8, ptr %125, i64 1, !dbg !1992
  store i8 %124, ptr %126, align 1, !dbg !1992, !tbaa !1170
  ret void, !dbg !1994
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_copy_w16(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #3 !dbg !2023 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2025, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i32 %1, metadata !2026, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata ptr %2, metadata !2027, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i32 %3, metadata !2028, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i32 %4, metadata !2029, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata ptr %2, metadata !1425, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %3, metadata !1428, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata ptr %0, metadata !1429, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %1, metadata !1430, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 16, metadata !1431, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %4, metadata !1432, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 0, metadata !1433, metadata !DIExpression()), !dbg !2031
  %6 = icmp sgt i32 %4, 0, !dbg !2033
  br i1 %6, label %7, label %40, !dbg !2034

7:                                                ; preds = %5
  %8 = sext i32 %3 to i64
  %9 = sext i32 %1 to i64
  %10 = and i32 %4, 3, !dbg !2034
  %11 = icmp ult i32 %4, 4, !dbg !2034
  br i1 %11, label %28, label %12, !dbg !2034

12:                                               ; preds = %7
  %13 = and i32 %4, -4, !dbg !2034
  br label %14, !dbg !2034

14:                                               ; preds = %14, %12
  %15 = phi ptr [ %2, %12 ], [ %24, %14 ]
  %16 = phi ptr [ %0, %12 ], [ %25, %14 ]
  %17 = phi i32 [ 0, %12 ], [ %26, %14 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata ptr %15, metadata !1425, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata ptr %16, metadata !1429, metadata !DIExpression()), !dbg !2031
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %16, ptr noundef nonnull align 1 dereferenceable(16) %15, i64 16, i1 false), !dbg !2035
  %18 = getelementptr inbounds i8, ptr %15, i64 %8, !dbg !2036
  call void @llvm.dbg.value(metadata ptr %18, metadata !1425, metadata !DIExpression()), !dbg !2031
  %19 = getelementptr inbounds i8, ptr %16, i64 %9, !dbg !2037
  call void @llvm.dbg.value(metadata ptr %19, metadata !1429, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2031
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2031
  call void @llvm.dbg.value(metadata ptr %18, metadata !1425, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata ptr %19, metadata !1429, metadata !DIExpression()), !dbg !2031
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %19, ptr noundef nonnull align 1 dereferenceable(16) %18, i64 16, i1 false), !dbg !2035
  %20 = getelementptr inbounds i8, ptr %18, i64 %8, !dbg !2036
  call void @llvm.dbg.value(metadata ptr %20, metadata !1425, metadata !DIExpression()), !dbg !2031
  %21 = getelementptr inbounds i8, ptr %19, i64 %9, !dbg !2037
  call void @llvm.dbg.value(metadata ptr %21, metadata !1429, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2031
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2031
  call void @llvm.dbg.value(metadata ptr %20, metadata !1425, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata ptr %21, metadata !1429, metadata !DIExpression()), !dbg !2031
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %21, ptr noundef nonnull align 1 dereferenceable(16) %20, i64 16, i1 false), !dbg !2035
  %22 = getelementptr inbounds i8, ptr %20, i64 %8, !dbg !2036
  call void @llvm.dbg.value(metadata ptr %22, metadata !1425, metadata !DIExpression()), !dbg !2031
  %23 = getelementptr inbounds i8, ptr %21, i64 %9, !dbg !2037
  call void @llvm.dbg.value(metadata ptr %23, metadata !1429, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !2031
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !2031
  call void @llvm.dbg.value(metadata ptr %22, metadata !1425, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata ptr %23, metadata !1429, metadata !DIExpression()), !dbg !2031
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %23, ptr noundef nonnull align 1 dereferenceable(16) %22, i64 16, i1 false), !dbg !2035
  %24 = getelementptr inbounds i8, ptr %22, i64 %8, !dbg !2036
  call void @llvm.dbg.value(metadata ptr %24, metadata !1425, metadata !DIExpression()), !dbg !2031
  %25 = getelementptr inbounds i8, ptr %23, i64 %9, !dbg !2037
  call void @llvm.dbg.value(metadata ptr %25, metadata !1429, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !2031
  %26 = add i32 %17, 4, !dbg !2034
  %27 = icmp eq i32 %26, %13, !dbg !2034
  br i1 %27, label %28, label %14, !dbg !2034, !llvm.loop !2038

28:                                               ; preds = %14, %7
  %29 = phi ptr [ %2, %7 ], [ %24, %14 ]
  %30 = phi ptr [ %0, %7 ], [ %25, %14 ]
  %31 = icmp eq i32 %10, 0, !dbg !2034
  br i1 %31, label %40, label %32, !dbg !2034

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %36, %32 ], [ %29, %28 ]
  %34 = phi ptr [ %37, %32 ], [ %30, %28 ]
  %35 = phi i32 [ %38, %32 ], [ 0, %28 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata ptr %33, metadata !1425, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata ptr %34, metadata !1429, metadata !DIExpression()), !dbg !2031
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %34, ptr noundef nonnull align 1 dereferenceable(16) %33, i64 16, i1 false), !dbg !2035
  %36 = getelementptr inbounds i8, ptr %33, i64 %8, !dbg !2036
  call void @llvm.dbg.value(metadata ptr %36, metadata !1425, metadata !DIExpression()), !dbg !2031
  %37 = getelementptr inbounds i8, ptr %34, i64 %9, !dbg !2037
  call void @llvm.dbg.value(metadata ptr %37, metadata !1429, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2031
  %38 = add i32 %35, 1, !dbg !2034
  %39 = icmp eq i32 %38, %10, !dbg !2034
  br i1 %39, label %40, label %32, !dbg !2034, !llvm.loop !2040

40:                                               ; preds = %28, %32, %5
  ret void, !dbg !2041
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_copy_w8(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #3 !dbg !2042 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2044, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i32 %1, metadata !2045, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata ptr %2, metadata !2046, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i32 %3, metadata !2047, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i32 %4, metadata !2048, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata ptr %2, metadata !1425, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 %3, metadata !1428, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %0, metadata !1429, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 %1, metadata !1430, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 8, metadata !1431, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 %4, metadata !1432, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 0, metadata !1433, metadata !DIExpression()), !dbg !2050
  %6 = icmp sgt i32 %4, 0, !dbg !2052
  br i1 %6, label %7, label %57, !dbg !2053

7:                                                ; preds = %5
  %8 = sext i32 %3 to i64
  %9 = sext i32 %1 to i64
  %10 = and i32 %4, 7, !dbg !2053
  %11 = icmp ult i32 %4, 8, !dbg !2053
  br i1 %11, label %44, label %12, !dbg !2053

12:                                               ; preds = %7
  %13 = and i32 %4, -8, !dbg !2053
  br label %14, !dbg !2053

14:                                               ; preds = %14, %12
  %15 = phi ptr [ %2, %12 ], [ %40, %14 ]
  %16 = phi ptr [ %0, %12 ], [ %41, %14 ]
  %17 = phi i32 [ 0, %12 ], [ %42, %14 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %15, metadata !1425, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %16, metadata !1429, metadata !DIExpression()), !dbg !2050
  %18 = load i64, ptr %15, align 1, !dbg !2054
  store i64 %18, ptr %16, align 1, !dbg !2054
  %19 = getelementptr inbounds i8, ptr %15, i64 %8, !dbg !2055
  call void @llvm.dbg.value(metadata ptr %19, metadata !1425, metadata !DIExpression()), !dbg !2050
  %20 = getelementptr inbounds i8, ptr %16, i64 %9, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %20, metadata !1429, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %19, metadata !1425, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %20, metadata !1429, metadata !DIExpression()), !dbg !2050
  %21 = load i64, ptr %19, align 1, !dbg !2054
  store i64 %21, ptr %20, align 1, !dbg !2054
  %22 = getelementptr inbounds i8, ptr %19, i64 %8, !dbg !2055
  call void @llvm.dbg.value(metadata ptr %22, metadata !1425, metadata !DIExpression()), !dbg !2050
  %23 = getelementptr inbounds i8, ptr %20, i64 %9, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %23, metadata !1429, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %22, metadata !1425, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %23, metadata !1429, metadata !DIExpression()), !dbg !2050
  %24 = load i64, ptr %22, align 1, !dbg !2054
  store i64 %24, ptr %23, align 1, !dbg !2054
  %25 = getelementptr inbounds i8, ptr %22, i64 %8, !dbg !2055
  call void @llvm.dbg.value(metadata ptr %25, metadata !1425, metadata !DIExpression()), !dbg !2050
  %26 = getelementptr inbounds i8, ptr %23, i64 %9, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %26, metadata !1429, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %25, metadata !1425, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %26, metadata !1429, metadata !DIExpression()), !dbg !2050
  %27 = load i64, ptr %25, align 1, !dbg !2054
  store i64 %27, ptr %26, align 1, !dbg !2054
  %28 = getelementptr inbounds i8, ptr %25, i64 %8, !dbg !2055
  call void @llvm.dbg.value(metadata ptr %28, metadata !1425, metadata !DIExpression()), !dbg !2050
  %29 = getelementptr inbounds i8, ptr %26, i64 %9, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %29, metadata !1429, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %28, metadata !1425, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %29, metadata !1429, metadata !DIExpression()), !dbg !2050
  %30 = load i64, ptr %28, align 1, !dbg !2054
  store i64 %30, ptr %29, align 1, !dbg !2054
  %31 = getelementptr inbounds i8, ptr %28, i64 %8, !dbg !2055
  call void @llvm.dbg.value(metadata ptr %31, metadata !1425, metadata !DIExpression()), !dbg !2050
  %32 = getelementptr inbounds i8, ptr %29, i64 %9, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %32, metadata !1429, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %31, metadata !1425, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %32, metadata !1429, metadata !DIExpression()), !dbg !2050
  %33 = load i64, ptr %31, align 1, !dbg !2054
  store i64 %33, ptr %32, align 1, !dbg !2054
  %34 = getelementptr inbounds i8, ptr %31, i64 %8, !dbg !2055
  call void @llvm.dbg.value(metadata ptr %34, metadata !1425, metadata !DIExpression()), !dbg !2050
  %35 = getelementptr inbounds i8, ptr %32, i64 %9, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %35, metadata !1429, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %34, metadata !1425, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %35, metadata !1429, metadata !DIExpression()), !dbg !2050
  %36 = load i64, ptr %34, align 1, !dbg !2054
  store i64 %36, ptr %35, align 1, !dbg !2054
  %37 = getelementptr inbounds i8, ptr %34, i64 %8, !dbg !2055
  call void @llvm.dbg.value(metadata ptr %37, metadata !1425, metadata !DIExpression()), !dbg !2050
  %38 = getelementptr inbounds i8, ptr %35, i64 %9, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %38, metadata !1429, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %37, metadata !1425, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %38, metadata !1429, metadata !DIExpression()), !dbg !2050
  %39 = load i64, ptr %37, align 1, !dbg !2054
  store i64 %39, ptr %38, align 1, !dbg !2054
  %40 = getelementptr inbounds i8, ptr %37, i64 %8, !dbg !2055
  call void @llvm.dbg.value(metadata ptr %40, metadata !1425, metadata !DIExpression()), !dbg !2050
  %41 = getelementptr inbounds i8, ptr %38, i64 %9, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %41, metadata !1429, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2050
  %42 = add i32 %17, 8, !dbg !2053
  %43 = icmp eq i32 %42, %13, !dbg !2053
  br i1 %43, label %44, label %14, !dbg !2053, !llvm.loop !2057

44:                                               ; preds = %14, %7
  %45 = phi ptr [ %2, %7 ], [ %40, %14 ]
  %46 = phi ptr [ %0, %7 ], [ %41, %14 ]
  %47 = icmp eq i32 %10, 0, !dbg !2053
  br i1 %47, label %57, label %48, !dbg !2053

48:                                               ; preds = %44, %48
  %49 = phi ptr [ %53, %48 ], [ %45, %44 ]
  %50 = phi ptr [ %54, %48 ], [ %46, %44 ]
  %51 = phi i32 [ %55, %48 ], [ 0, %44 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %49, metadata !1425, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %50, metadata !1429, metadata !DIExpression()), !dbg !2050
  %52 = load i64, ptr %49, align 1, !dbg !2054
  store i64 %52, ptr %50, align 1, !dbg !2054
  %53 = getelementptr inbounds i8, ptr %49, i64 %8, !dbg !2055
  call void @llvm.dbg.value(metadata ptr %53, metadata !1425, metadata !DIExpression()), !dbg !2050
  %54 = getelementptr inbounds i8, ptr %50, i64 %9, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %54, metadata !1429, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2050
  %55 = add i32 %51, 1, !dbg !2053
  %56 = icmp eq i32 %55, %10, !dbg !2053
  br i1 %56, label %57, label %48, !dbg !2053, !llvm.loop !2059

57:                                               ; preds = %44, %48, %5
  ret void, !dbg !2060
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_copy_w4(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #3 !dbg !2061 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2063, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %1, metadata !2064, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata ptr %2, metadata !2065, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %3, metadata !2066, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %4, metadata !2067, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata ptr %2, metadata !1425, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 %3, metadata !1428, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %0, metadata !1429, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 %1, metadata !1430, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 4, metadata !1431, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 %4, metadata !1432, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 0, metadata !1433, metadata !DIExpression()), !dbg !2069
  %6 = icmp sgt i32 %4, 0, !dbg !2071
  br i1 %6, label %7, label %57, !dbg !2072

7:                                                ; preds = %5
  %8 = sext i32 %3 to i64
  %9 = sext i32 %1 to i64
  %10 = and i32 %4, 7, !dbg !2072
  %11 = icmp ult i32 %4, 8, !dbg !2072
  br i1 %11, label %44, label %12, !dbg !2072

12:                                               ; preds = %7
  %13 = and i32 %4, -8, !dbg !2072
  br label %14, !dbg !2072

14:                                               ; preds = %14, %12
  %15 = phi ptr [ %2, %12 ], [ %40, %14 ]
  %16 = phi ptr [ %0, %12 ], [ %41, %14 ]
  %17 = phi i32 [ 0, %12 ], [ %42, %14 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %15, metadata !1425, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %16, metadata !1429, metadata !DIExpression()), !dbg !2069
  %18 = load i32, ptr %15, align 1, !dbg !2073
  store i32 %18, ptr %16, align 1, !dbg !2073
  %19 = getelementptr inbounds i8, ptr %15, i64 %8, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %19, metadata !1425, metadata !DIExpression()), !dbg !2069
  %20 = getelementptr inbounds i8, ptr %16, i64 %9, !dbg !2075
  call void @llvm.dbg.value(metadata ptr %20, metadata !1429, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %19, metadata !1425, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %20, metadata !1429, metadata !DIExpression()), !dbg !2069
  %21 = load i32, ptr %19, align 1, !dbg !2073
  store i32 %21, ptr %20, align 1, !dbg !2073
  %22 = getelementptr inbounds i8, ptr %19, i64 %8, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %22, metadata !1425, metadata !DIExpression()), !dbg !2069
  %23 = getelementptr inbounds i8, ptr %20, i64 %9, !dbg !2075
  call void @llvm.dbg.value(metadata ptr %23, metadata !1429, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %22, metadata !1425, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %23, metadata !1429, metadata !DIExpression()), !dbg !2069
  %24 = load i32, ptr %22, align 1, !dbg !2073
  store i32 %24, ptr %23, align 1, !dbg !2073
  %25 = getelementptr inbounds i8, ptr %22, i64 %8, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %25, metadata !1425, metadata !DIExpression()), !dbg !2069
  %26 = getelementptr inbounds i8, ptr %23, i64 %9, !dbg !2075
  call void @llvm.dbg.value(metadata ptr %26, metadata !1429, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %25, metadata !1425, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %26, metadata !1429, metadata !DIExpression()), !dbg !2069
  %27 = load i32, ptr %25, align 1, !dbg !2073
  store i32 %27, ptr %26, align 1, !dbg !2073
  %28 = getelementptr inbounds i8, ptr %25, i64 %8, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %28, metadata !1425, metadata !DIExpression()), !dbg !2069
  %29 = getelementptr inbounds i8, ptr %26, i64 %9, !dbg !2075
  call void @llvm.dbg.value(metadata ptr %29, metadata !1429, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %28, metadata !1425, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %29, metadata !1429, metadata !DIExpression()), !dbg !2069
  %30 = load i32, ptr %28, align 1, !dbg !2073
  store i32 %30, ptr %29, align 1, !dbg !2073
  %31 = getelementptr inbounds i8, ptr %28, i64 %8, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %31, metadata !1425, metadata !DIExpression()), !dbg !2069
  %32 = getelementptr inbounds i8, ptr %29, i64 %9, !dbg !2075
  call void @llvm.dbg.value(metadata ptr %32, metadata !1429, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value)), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value)), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %31, metadata !1425, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %32, metadata !1429, metadata !DIExpression()), !dbg !2069
  %33 = load i32, ptr %31, align 1, !dbg !2073
  store i32 %33, ptr %32, align 1, !dbg !2073
  %34 = getelementptr inbounds i8, ptr %31, i64 %8, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %34, metadata !1425, metadata !DIExpression()), !dbg !2069
  %35 = getelementptr inbounds i8, ptr %32, i64 %9, !dbg !2075
  call void @llvm.dbg.value(metadata ptr %35, metadata !1429, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %34, metadata !1425, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %35, metadata !1429, metadata !DIExpression()), !dbg !2069
  %36 = load i32, ptr %34, align 1, !dbg !2073
  store i32 %36, ptr %35, align 1, !dbg !2073
  %37 = getelementptr inbounds i8, ptr %34, i64 %8, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %37, metadata !1425, metadata !DIExpression()), !dbg !2069
  %38 = getelementptr inbounds i8, ptr %35, i64 %9, !dbg !2075
  call void @llvm.dbg.value(metadata ptr %38, metadata !1429, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %37, metadata !1425, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %38, metadata !1429, metadata !DIExpression()), !dbg !2069
  %39 = load i32, ptr %37, align 1, !dbg !2073
  store i32 %39, ptr %38, align 1, !dbg !2073
  %40 = getelementptr inbounds i8, ptr %37, i64 %8, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %40, metadata !1425, metadata !DIExpression()), !dbg !2069
  %41 = getelementptr inbounds i8, ptr %38, i64 %9, !dbg !2075
  call void @llvm.dbg.value(metadata ptr %41, metadata !1429, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2069
  %42 = add i32 %17, 8, !dbg !2072
  %43 = icmp eq i32 %42, %13, !dbg !2072
  br i1 %43, label %44, label %14, !dbg !2072, !llvm.loop !2076

44:                                               ; preds = %14, %7
  %45 = phi ptr [ %2, %7 ], [ %40, %14 ]
  %46 = phi ptr [ %0, %7 ], [ %41, %14 ]
  %47 = icmp eq i32 %10, 0, !dbg !2072
  br i1 %47, label %57, label %48, !dbg !2072

48:                                               ; preds = %44, %48
  %49 = phi ptr [ %53, %48 ], [ %45, %44 ]
  %50 = phi ptr [ %54, %48 ], [ %46, %44 ]
  %51 = phi i32 [ %55, %48 ], [ 0, %44 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %49, metadata !1425, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata ptr %50, metadata !1429, metadata !DIExpression()), !dbg !2069
  %52 = load i32, ptr %49, align 1, !dbg !2073
  store i32 %52, ptr %50, align 1, !dbg !2073
  %53 = getelementptr inbounds i8, ptr %49, i64 %8, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %53, metadata !1425, metadata !DIExpression()), !dbg !2069
  %54 = getelementptr inbounds i8, ptr %50, i64 %9, !dbg !2075
  call void @llvm.dbg.value(metadata ptr %54, metadata !1429, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 poison, metadata !1433, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2069
  %55 = add i32 %51, 1, !dbg !2072
  %56 = icmp eq i32 %55, %10, !dbg !2072
  br i1 %56, label %57, label %48, !dbg !2072, !llvm.loop !2078

57:                                               ; preds = %44, %48, %5
  ret void, !dbg !2079
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @plane_copy(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #3 !dbg !2080 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2082, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %1, metadata !2083, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %2, metadata !2084, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %3, metadata !2085, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %4, metadata !2086, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %5, metadata !2087, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %5, metadata !2087, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2088
  %7 = icmp eq i32 %5, 0, !dbg !2089
  br i1 %7, label %43, label %8, !dbg !2089

8:                                                ; preds = %6
  %9 = sext i32 %4 to i64
  %10 = sext i32 %1 to i64
  %11 = sext i32 %3 to i64
  %12 = and i32 %5, 3, !dbg !2089
  %13 = icmp eq i32 %12, 0, !dbg !2089
  br i1 %13, label %24, label %14, !dbg !2089

14:                                               ; preds = %8, %14
  %15 = phi i32 [ %19, %14 ], [ %5, %8 ]
  %16 = phi ptr [ %20, %14 ], [ %0, %8 ]
  %17 = phi ptr [ %21, %14 ], [ %2, %8 ]
  %18 = phi i32 [ %22, %14 ], [ 0, %8 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !2087, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %16, metadata !2082, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %17, metadata !2084, metadata !DIExpression()), !dbg !2088
  %19 = add nsw i32 %15, -1, !dbg !2090
  call void @llvm.dbg.value(metadata i32 %19, metadata !2087, metadata !DIExpression()), !dbg !2088
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %17, i64 %9, i1 false), !dbg !2091
  %20 = getelementptr inbounds i8, ptr %16, i64 %10, !dbg !2093
  call void @llvm.dbg.value(metadata ptr %20, metadata !2082, metadata !DIExpression()), !dbg !2088
  %21 = getelementptr inbounds i8, ptr %17, i64 %11, !dbg !2094
  call void @llvm.dbg.value(metadata ptr %21, metadata !2084, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %19, metadata !2087, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2088
  %22 = add i32 %18, 1, !dbg !2089
  %23 = icmp eq i32 %22, %12, !dbg !2089
  br i1 %23, label %24, label %14, !dbg !2089, !llvm.loop !2095

24:                                               ; preds = %14, %8
  %25 = phi i32 [ %5, %8 ], [ %19, %14 ]
  %26 = phi ptr [ %0, %8 ], [ %20, %14 ]
  %27 = phi ptr [ %2, %8 ], [ %21, %14 ]
  %28 = icmp ult i32 %5, 4, !dbg !2089
  br i1 %28, label %43, label %29, !dbg !2089

29:                                               ; preds = %24, %29
  %30 = phi i32 [ %39, %29 ], [ %25, %24 ]
  %31 = phi ptr [ %40, %29 ], [ %26, %24 ]
  %32 = phi ptr [ %41, %29 ], [ %27, %24 ]
  call void @llvm.dbg.value(metadata i32 %30, metadata !2087, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %31, metadata !2082, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %32, metadata !2084, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %30, metadata !2087, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2088
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %31, ptr align 1 %32, i64 %9, i1 false), !dbg !2091
  %33 = getelementptr inbounds i8, ptr %31, i64 %10, !dbg !2093
  call void @llvm.dbg.value(metadata ptr %33, metadata !2082, metadata !DIExpression()), !dbg !2088
  %34 = getelementptr inbounds i8, ptr %32, i64 %11, !dbg !2094
  call void @llvm.dbg.value(metadata ptr %34, metadata !2084, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %30, metadata !2087, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %30, metadata !2087, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %33, metadata !2082, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %34, metadata !2084, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %30, metadata !2087, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !2088
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 1 %34, i64 %9, i1 false), !dbg !2091
  %35 = getelementptr inbounds i8, ptr %33, i64 %10, !dbg !2093
  call void @llvm.dbg.value(metadata ptr %35, metadata !2082, metadata !DIExpression()), !dbg !2088
  %36 = getelementptr inbounds i8, ptr %34, i64 %11, !dbg !2094
  call void @llvm.dbg.value(metadata ptr %36, metadata !2084, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %30, metadata !2087, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %30, metadata !2087, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %35, metadata !2082, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %36, metadata !2084, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %30, metadata !2087, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !2088
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %35, ptr align 1 %36, i64 %9, i1 false), !dbg !2091
  %37 = getelementptr inbounds i8, ptr %35, i64 %10, !dbg !2093
  call void @llvm.dbg.value(metadata ptr %37, metadata !2082, metadata !DIExpression()), !dbg !2088
  %38 = getelementptr inbounds i8, ptr %36, i64 %11, !dbg !2094
  call void @llvm.dbg.value(metadata ptr %38, metadata !2084, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %30, metadata !2087, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %30, metadata !2087, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %37, metadata !2082, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %38, metadata !2084, metadata !DIExpression()), !dbg !2088
  %39 = add nsw i32 %30, -4, !dbg !2090
  call void @llvm.dbg.value(metadata i32 %39, metadata !2087, metadata !DIExpression()), !dbg !2088
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 1 %38, i64 %9, i1 false), !dbg !2091
  %40 = getelementptr inbounds i8, ptr %37, i64 %10, !dbg !2093
  call void @llvm.dbg.value(metadata ptr %40, metadata !2082, metadata !DIExpression()), !dbg !2088
  %41 = getelementptr inbounds i8, ptr %38, i64 %11, !dbg !2094
  call void @llvm.dbg.value(metadata ptr %41, metadata !2084, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %39, metadata !2087, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2088
  %42 = icmp eq i32 %39, 0, !dbg !2089
  br i1 %42, label %43, label %29, !dbg !2089, !llvm.loop !2096

43:                                               ; preds = %24, %29, %6
  ret void, !dbg !2098
}

; Function Attrs: nounwind uwtable
define internal void @hpel_filter(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 !dbg !2099 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2101, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr %1, metadata !2102, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr %2, metadata !2103, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr %3, metadata !2104, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 %4, metadata !2105, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 %5, metadata !2106, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 %6, metadata !2107, metadata !DIExpression()), !dbg !2118
  %8 = shl i32 %5, 1, !dbg !2119
  %9 = add i32 %8, 10, !dbg !2119
  %10 = tail call ptr @x264_malloc(i32 noundef %9) #11, !dbg !2120
  call void @llvm.dbg.value(metadata ptr %10, metadata !2108, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr %0, metadata !2101, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr %1, metadata !2102, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr %2, metadata !2103, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr %3, metadata !2104, metadata !DIExpression()), !dbg !2118
  %11 = icmp sgt i32 %6, 0, !dbg !2121
  br i1 %11, label %12, label %496, !dbg !2122

12:                                               ; preds = %7
  %13 = icmp sgt i32 %5, -5
  %14 = shl nsw i32 %4, 1
  %15 = mul nsw i32 %4, 3
  %16 = icmp sgt i32 %5, 0
  %17 = getelementptr inbounds i16, ptr %10, i64 2
  %18 = sext i32 %4 to i64
  %19 = sext i32 %14 to i64, !dbg !2122
  %20 = sext i32 %15 to i64, !dbg !2122
  %21 = add i32 %5, 2, !dbg !2122
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 -2), !dbg !2122
  %23 = add i32 %22, 1, !dbg !2122
  %24 = zext i32 %5 to i64
  %25 = zext i32 %5 to i64
  %26 = add nuw nsw i64 %24, 3, !dbg !2122
  %27 = shl nuw nsw i64 %24, 1, !dbg !2122
  %28 = add nuw nsw i64 %27, 10, !dbg !2122
  %29 = getelementptr i8, ptr %10, i64 %28, !dbg !2122
  %30 = add i32 %22, 2, !dbg !2122
  %31 = zext i32 %30 to i64, !dbg !2122
  %32 = add nsw i64 %31, -1, !dbg !2122
  %33 = shl nuw nsw i64 %31, 1, !dbg !2122
  %34 = add nuw nsw i64 %33, 2, !dbg !2122
  %35 = getelementptr i8, ptr %10, i64 %34, !dbg !2122
  %36 = add nsw i64 %18, -2, !dbg !2122
  %37 = add nsw i64 %18, %31, !dbg !2122
  %38 = add nsw i64 %37, -1, !dbg !2122
  %39 = add nsw i64 %19, -2, !dbg !2122
  %40 = add nsw i64 %19, %31, !dbg !2122
  %41 = add nsw i64 %40, -1, !dbg !2122
  %42 = sub nsw i64 -2, %18, !dbg !2122
  %43 = add nsw i64 %31, -1, !dbg !2122
  %44 = sub nsw i64 %43, %18, !dbg !2122
  %45 = add nsw i64 %20, -2, !dbg !2122
  %46 = add nsw i64 %20, %31, !dbg !2122
  %47 = add nsw i64 %46, -1, !dbg !2122
  %48 = sub nuw nsw i64 -2, %19, !dbg !2122
  %49 = sub nsw i64 %43, %19, !dbg !2122
  %50 = add i32 %22, 2, !dbg !2122
  %51 = zext i32 %50 to i64, !dbg !2122
  %52 = add nuw nsw i64 %51, 1, !dbg !2122
  %53 = icmp ult i32 %50, 23
  %54 = and i64 %52, -8
  %55 = add nsw i64 %54, -2
  %56 = icmp eq i64 %52, %54
  %57 = icmp ult i32 %5, 8
  %58 = and i64 %24, 4294967288
  %59 = icmp eq i64 %58, %24
  %60 = icmp ult i32 %5, 8
  %61 = icmp ult i32 %5, 16
  %62 = and i64 %24, 4294967280
  %63 = icmp eq i64 %62, %24
  %64 = and i64 %24, 8
  %65 = icmp eq i64 %64, 0
  %66 = and i64 %24, 4294967288
  %67 = icmp eq i64 %66, %24
  br label %68, !dbg !2122

68:                                               ; preds = %12, %488
  %69 = phi i64 [ 0, %12 ], [ %495, %488 ]
  %70 = phi ptr [ %0, %12 ], [ %489, %488 ]
  %71 = phi i32 [ 0, %12 ], [ %493, %488 ]
  %72 = phi ptr [ %1, %12 ], [ %490, %488 ]
  %73 = phi ptr [ %2, %12 ], [ %491, %488 ]
  %74 = phi ptr [ %3, %12 ], [ %492, %488 ]
  call void @llvm.dbg.value(metadata ptr %70, metadata !2101, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 %71, metadata !2110, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr %72, metadata !2102, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr %73, metadata !2103, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr %74, metadata !2104, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 -2, metadata !2109, metadata !DIExpression()), !dbg !2118
  %75 = mul i64 %69, %18, !dbg !2123
  %76 = add i64 %75, -2, !dbg !2123
  %77 = getelementptr i8, ptr %1, i64 %76, !dbg !2123
  %78 = add i64 %32, %75, !dbg !2123
  %79 = getelementptr i8, ptr %1, i64 %78, !dbg !2123
  %80 = add i64 %36, %75, !dbg !2123
  %81 = getelementptr i8, ptr %3, i64 %80, !dbg !2123
  %82 = add i64 %38, %75, !dbg !2123
  %83 = getelementptr i8, ptr %3, i64 %82, !dbg !2123
  %84 = getelementptr i8, ptr %3, i64 %76, !dbg !2123
  %85 = getelementptr i8, ptr %3, i64 %78, !dbg !2123
  %86 = add i64 %39, %75, !dbg !2123
  %87 = getelementptr i8, ptr %3, i64 %86, !dbg !2123
  %88 = add i64 %41, %75, !dbg !2123
  %89 = getelementptr i8, ptr %3, i64 %88, !dbg !2123
  %90 = add i64 %42, %75, !dbg !2123
  %91 = getelementptr i8, ptr %3, i64 %90, !dbg !2123
  %92 = add i64 %44, %75, !dbg !2123
  %93 = getelementptr i8, ptr %3, i64 %92, !dbg !2123
  %94 = add i64 %45, %75, !dbg !2123
  %95 = getelementptr i8, ptr %3, i64 %94, !dbg !2123
  %96 = add i64 %47, %75, !dbg !2123
  %97 = getelementptr i8, ptr %3, i64 %96, !dbg !2123
  %98 = add i64 %48, %75, !dbg !2123
  %99 = getelementptr i8, ptr %3, i64 %98, !dbg !2123
  %100 = add i64 %49, %75, !dbg !2123
  %101 = getelementptr i8, ptr %3, i64 %100, !dbg !2123
  %102 = mul i64 %69, %18, !dbg !2123
  %103 = add i64 %102, %24, !dbg !2123
  %104 = getelementptr i8, ptr %2, i64 %103, !dbg !2123
  %105 = mul i64 %69, %18, !dbg !2123
  %106 = add i64 %105, %24, !dbg !2123
  %107 = getelementptr i8, ptr %0, i64 %106, !dbg !2123
  %108 = add i64 %105, -2, !dbg !2123
  %109 = getelementptr i8, ptr %3, i64 %108, !dbg !2123
  %110 = add i64 %26, %105, !dbg !2123
  %111 = getelementptr i8, ptr %3, i64 %110, !dbg !2123
  br i1 %13, label %112, label %488, !dbg !2123

112:                                              ; preds = %68
  br i1 %53, label %211, label %113, !dbg !2123

113:                                              ; preds = %112
  %114 = icmp ult ptr %77, %35, !dbg !2123
  %115 = icmp ult ptr %10, %79, !dbg !2123
  %116 = and i1 %114, %115, !dbg !2123
  %117 = icmp ult ptr %77, %83, !dbg !2123
  %118 = icmp ult ptr %81, %79, !dbg !2123
  %119 = and i1 %117, %118, !dbg !2123
  %120 = or i1 %116, %119, !dbg !2123
  %121 = icmp ult ptr %77, %85, !dbg !2123
  %122 = icmp ult ptr %84, %79, !dbg !2123
  %123 = and i1 %121, %122, !dbg !2123
  %124 = or i1 %120, %123, !dbg !2123
  %125 = icmp ult ptr %77, %89, !dbg !2123
  %126 = icmp ult ptr %87, %79, !dbg !2123
  %127 = and i1 %125, %126, !dbg !2123
  %128 = or i1 %124, %127, !dbg !2123
  %129 = icmp ult ptr %77, %93, !dbg !2123
  %130 = icmp ult ptr %91, %79, !dbg !2123
  %131 = and i1 %129, %130, !dbg !2123
  %132 = or i1 %128, %131, !dbg !2123
  %133 = icmp ult ptr %77, %97, !dbg !2123
  %134 = icmp ult ptr %95, %79, !dbg !2123
  %135 = and i1 %133, %134, !dbg !2123
  %136 = or i1 %132, %135, !dbg !2123
  %137 = icmp ult ptr %77, %101, !dbg !2123
  %138 = icmp ult ptr %99, %79, !dbg !2123
  %139 = and i1 %137, %138, !dbg !2123
  %140 = or i1 %136, %139, !dbg !2123
  %141 = icmp ult ptr %10, %83, !dbg !2123
  %142 = icmp ult ptr %81, %35, !dbg !2123
  %143 = and i1 %141, %142, !dbg !2123
  %144 = or i1 %140, %143, !dbg !2123
  %145 = icmp ult ptr %10, %85, !dbg !2123
  %146 = icmp ult ptr %84, %35, !dbg !2123
  %147 = and i1 %145, %146, !dbg !2123
  %148 = or i1 %144, %147, !dbg !2123
  %149 = icmp ult ptr %10, %89, !dbg !2123
  %150 = icmp ult ptr %87, %35, !dbg !2123
  %151 = and i1 %149, %150, !dbg !2123
  %152 = or i1 %148, %151, !dbg !2123
  %153 = icmp ult ptr %10, %93, !dbg !2123
  %154 = icmp ult ptr %91, %35, !dbg !2123
  %155 = and i1 %153, %154, !dbg !2123
  %156 = or i1 %152, %155, !dbg !2123
  %157 = icmp ult ptr %10, %97, !dbg !2123
  %158 = icmp ult ptr %95, %35, !dbg !2123
  %159 = and i1 %157, %158, !dbg !2123
  %160 = or i1 %156, %159, !dbg !2123
  %161 = icmp ult ptr %10, %101, !dbg !2123
  %162 = icmp ult ptr %99, %35, !dbg !2123
  %163 = and i1 %161, %162, !dbg !2123
  %164 = or i1 %160, %163, !dbg !2123
  br i1 %164, label %211, label %165, !dbg !2123

165:                                              ; preds = %113, %165
  %166 = phi i64 [ %208, %165 ], [ 0, %113 ]
  %167 = add i64 %166, -2, !dbg !2123
  %168 = sub nsw i64 %167, %19, !dbg !2124
  %169 = getelementptr inbounds i8, ptr %74, i64 %168, !dbg !2124
  %170 = load <8 x i8>, ptr %169, align 1, !dbg !2124, !tbaa !1170, !alias.scope !2125
  %171 = zext <8 x i8> %170 to <8 x i32>, !dbg !2124
  %172 = add nsw i64 %167, %20, !dbg !2124
  %173 = getelementptr inbounds i8, ptr %74, i64 %172, !dbg !2124
  %174 = load <8 x i8>, ptr %173, align 1, !dbg !2124, !tbaa !1170, !alias.scope !2128
  %175 = zext <8 x i8> %174 to <8 x i32>, !dbg !2124
  %176 = add nuw nsw <8 x i32> %175, %171, !dbg !2124
  %177 = sub nsw i64 %167, %18, !dbg !2124
  %178 = getelementptr inbounds i8, ptr %74, i64 %177, !dbg !2124
  %179 = load <8 x i8>, ptr %178, align 1, !dbg !2124, !tbaa !1170, !alias.scope !2130
  %180 = zext <8 x i8> %179 to <8 x i32>, !dbg !2124
  %181 = add nsw i64 %167, %19, !dbg !2124
  %182 = getelementptr inbounds i8, ptr %74, i64 %181, !dbg !2124
  %183 = load <8 x i8>, ptr %182, align 1, !dbg !2124, !tbaa !1170, !alias.scope !2132
  %184 = zext <8 x i8> %183 to <8 x i32>, !dbg !2124
  %185 = add nuw nsw <8 x i32> %184, %180, !dbg !2124
  %186 = mul nsw <8 x i32> %185, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>, !dbg !2124
  %187 = add nsw <8 x i32> %176, %186, !dbg !2124
  %188 = getelementptr inbounds i8, ptr %74, i64 %167, !dbg !2124
  %189 = load <8 x i8>, ptr %188, align 1, !dbg !2124, !tbaa !1170, !alias.scope !2134
  %190 = zext <8 x i8> %189 to <8 x i32>, !dbg !2124
  %191 = add nsw i64 %167, %18, !dbg !2124
  %192 = getelementptr inbounds i8, ptr %74, i64 %191, !dbg !2124
  %193 = load <8 x i8>, ptr %192, align 1, !dbg !2124, !tbaa !1170, !alias.scope !2136
  %194 = zext <8 x i8> %193 to <8 x i32>, !dbg !2124
  %195 = add nuw nsw <8 x i32> %194, %190, !dbg !2124
  %196 = mul nuw nsw <8 x i32> %195, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>, !dbg !2124
  %197 = add nsw <8 x i32> %187, %196, !dbg !2124
  %198 = add nsw <8 x i32> %197, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !2138
  %199 = lshr <8 x i32> %198, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !2139
  %200 = icmp ult <8 x i32> %198, <i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192>, !dbg !2140
  %201 = icmp sgt <8 x i32> %197, <i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15>, !dbg !2142
  %202 = sext <8 x i1> %201 to <8 x i32>, !dbg !2142
  %203 = select <8 x i1> %200, <8 x i32> %199, <8 x i32> %202, !dbg !2142
  %204 = trunc <8 x i32> %203 to <8 x i8>, !dbg !2142
  %205 = getelementptr inbounds i8, ptr %72, i64 %167, !dbg !2143
  store <8 x i8> %204, ptr %205, align 1, !dbg !2144, !tbaa !1170, !alias.scope !2145, !noalias !2147
  %206 = trunc <8 x i32> %197 to <8 x i16>, !dbg !2149
  %207 = getelementptr inbounds i16, ptr %10, i64 %166, !dbg !2150
  store <8 x i16> %206, ptr %207, align 2, !dbg !2151, !tbaa !1256, !alias.scope !2152, !noalias !2153
  %208 = add nuw i64 %166, 8
  %209 = icmp eq i64 %208, %54
  br i1 %209, label %210, label %165, !llvm.loop !2154

210:                                              ; preds = %165
  br i1 %56, label %213, label %211, !dbg !2123

211:                                              ; preds = %113, %112, %210
  %212 = phi i64 [ -2, %113 ], [ -2, %112 ], [ %55, %210 ]
  br label %263, !dbg !2123

213:                                              ; preds = %263, %210
  call void @llvm.dbg.value(metadata i32 0, metadata !2109, metadata !DIExpression()), !dbg !2118
  br i1 %16, label %214, label %488, !dbg !2156

214:                                              ; preds = %213
  br i1 %57, label %261, label %215, !dbg !2156

215:                                              ; preds = %214
  %216 = icmp ult ptr %73, %29, !dbg !2156
  %217 = icmp ult ptr %10, %104, !dbg !2156
  %218 = and i1 %216, %217, !dbg !2156
  br i1 %218, label %261, label %219, !dbg !2156

219:                                              ; preds = %215, %219
  %220 = phi i64 [ %258, %219 ], [ 0, %215 ], !dbg !2158
  %221 = getelementptr inbounds i16, ptr %10, i64 %220, !dbg !2158
  %222 = load <8 x i16>, ptr %221, align 2, !dbg !2158, !tbaa !1256, !alias.scope !2160
  %223 = sext <8 x i16> %222 to <8 x i32>, !dbg !2158
  %224 = or i64 %220, 3, !dbg !2158
  %225 = getelementptr inbounds i16, ptr %17, i64 %224, !dbg !2158
  %226 = load <8 x i16>, ptr %225, align 2, !dbg !2158, !tbaa !1256, !alias.scope !2160
  %227 = sext <8 x i16> %226 to <8 x i32>, !dbg !2158
  %228 = add nsw <8 x i32> %227, %223, !dbg !2158
  %229 = add nsw i64 %220, -1, !dbg !2158
  %230 = getelementptr inbounds i16, ptr %17, i64 %229, !dbg !2158
  %231 = load <8 x i16>, ptr %230, align 2, !dbg !2158, !tbaa !1256, !alias.scope !2160
  %232 = sext <8 x i16> %231 to <8 x i32>, !dbg !2158
  %233 = or i64 %220, 2, !dbg !2158
  %234 = getelementptr inbounds i16, ptr %17, i64 %233, !dbg !2158
  %235 = load <8 x i16>, ptr %234, align 2, !dbg !2158, !tbaa !1256, !alias.scope !2160
  %236 = sext <8 x i16> %235 to <8 x i32>, !dbg !2158
  %237 = add nsw <8 x i32> %236, %232, !dbg !2158
  %238 = mul nsw <8 x i32> %237, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>, !dbg !2158
  %239 = add nsw <8 x i32> %228, %238, !dbg !2158
  %240 = getelementptr inbounds i16, ptr %17, i64 %220, !dbg !2158
  %241 = load <8 x i16>, ptr %240, align 2, !dbg !2158, !tbaa !1256, !alias.scope !2160
  %242 = sext <8 x i16> %241 to <8 x i32>, !dbg !2158
  %243 = or i64 %220, 1, !dbg !2158
  %244 = getelementptr inbounds i16, ptr %17, i64 %243, !dbg !2158
  %245 = load <8 x i16>, ptr %244, align 2, !dbg !2158, !tbaa !1256, !alias.scope !2160
  %246 = sext <8 x i16> %245 to <8 x i32>, !dbg !2158
  %247 = add nsw <8 x i32> %246, %242, !dbg !2158
  %248 = mul nsw <8 x i32> %247, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>, !dbg !2158
  %249 = add nsw <8 x i32> %239, %248, !dbg !2158
  %250 = add nsw <8 x i32> %249, <i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512>, !dbg !2163
  %251 = lshr <8 x i32> %250, <i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10>, !dbg !2164
  %252 = icmp ult <8 x i32> %250, <i32 262144, i32 262144, i32 262144, i32 262144, i32 262144, i32 262144, i32 262144, i32 262144>, !dbg !2165
  %253 = icmp sgt <8 x i32> %249, <i32 511, i32 511, i32 511, i32 511, i32 511, i32 511, i32 511, i32 511>, !dbg !2167
  %254 = sext <8 x i1> %253 to <8 x i32>, !dbg !2167
  %255 = select <8 x i1> %252, <8 x i32> %251, <8 x i32> %254, !dbg !2167
  %256 = trunc <8 x i32> %255 to <8 x i8>, !dbg !2167
  %257 = getelementptr inbounds i8, ptr %73, i64 %220, !dbg !2168
  store <8 x i8> %256, ptr %257, align 1, !dbg !2169, !tbaa !1170, !alias.scope !2170, !noalias !2160
  %258 = add nuw i64 %220, 8, !dbg !2158
  %259 = icmp eq i64 %258, %58, !dbg !2158
  br i1 %259, label %260, label %219, !dbg !2158, !llvm.loop !2172

260:                                              ; preds = %219
  br i1 %59, label %309, label %261, !dbg !2156

261:                                              ; preds = %215, %214, %260
  %262 = phi i64 [ 0, %215 ], [ 0, %214 ], [ %58, %260 ]
  br label %407, !dbg !2156

263:                                              ; preds = %211, %263
  %264 = phi i64 [ %306, %263 ], [ %212, %211 ]
  call void @llvm.dbg.value(metadata i64 %264, metadata !2109, metadata !DIExpression()), !dbg !2118
  %265 = sub nsw i64 %264, %19, !dbg !2124
  %266 = getelementptr inbounds i8, ptr %74, i64 %265, !dbg !2124
  %267 = load i8, ptr %266, align 1, !dbg !2124, !tbaa !1170
  %268 = zext i8 %267 to i32, !dbg !2124
  %269 = add nsw i64 %264, %20, !dbg !2124
  %270 = getelementptr inbounds i8, ptr %74, i64 %269, !dbg !2124
  %271 = load i8, ptr %270, align 1, !dbg !2124, !tbaa !1170
  %272 = zext i8 %271 to i32, !dbg !2124
  %273 = add nuw nsw i32 %272, %268, !dbg !2124
  %274 = sub nsw i64 %264, %18, !dbg !2124
  %275 = getelementptr inbounds i8, ptr %74, i64 %274, !dbg !2124
  %276 = load i8, ptr %275, align 1, !dbg !2124, !tbaa !1170
  %277 = zext i8 %276 to i32, !dbg !2124
  %278 = add nsw i64 %264, %19, !dbg !2124
  %279 = getelementptr inbounds i8, ptr %74, i64 %278, !dbg !2124
  %280 = load i8, ptr %279, align 1, !dbg !2124, !tbaa !1170
  %281 = zext i8 %280 to i32, !dbg !2124
  %282 = add nuw nsw i32 %281, %277, !dbg !2124
  %283 = mul nsw i32 %282, -5, !dbg !2124
  %284 = add nsw i32 %273, %283, !dbg !2124
  %285 = getelementptr inbounds i8, ptr %74, i64 %264, !dbg !2124
  %286 = load i8, ptr %285, align 1, !dbg !2124, !tbaa !1170
  %287 = zext i8 %286 to i32, !dbg !2124
  %288 = add nsw i64 %264, %18, !dbg !2124
  %289 = getelementptr inbounds i8, ptr %74, i64 %288, !dbg !2124
  %290 = load i8, ptr %289, align 1, !dbg !2124, !tbaa !1170
  %291 = zext i8 %290 to i32, !dbg !2124
  %292 = add nuw nsw i32 %291, %287, !dbg !2124
  %293 = mul nuw nsw i32 %292, 20, !dbg !2124
  %294 = add nsw i32 %284, %293, !dbg !2124
  call void @llvm.dbg.value(metadata i32 %294, metadata !2111, metadata !DIExpression()), !dbg !2174
  %295 = add nsw i32 %294, 16, !dbg !2138
  %296 = lshr i32 %295, 5, !dbg !2139
  call void @llvm.dbg.value(metadata i32 %295, metadata !1807, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !2175
  %297 = icmp ult i32 %295, 8192, !dbg !2140
  %298 = icmp sgt i32 %294, 15, !dbg !2142
  %299 = sext i1 %298 to i32, !dbg !2142
  %300 = select i1 %297, i32 %296, i32 %299, !dbg !2142
  %301 = trunc i32 %300 to i8, !dbg !2142
  %302 = getelementptr inbounds i8, ptr %72, i64 %264, !dbg !2143
  store i8 %301, ptr %302, align 1, !dbg !2144, !tbaa !1170
  %303 = trunc i32 %294 to i16, !dbg !2149
  %304 = add nsw i64 %264, 2, !dbg !2176
  %305 = getelementptr inbounds i16, ptr %10, i64 %304, !dbg !2150
  store i16 %303, ptr %305, align 2, !dbg !2151, !tbaa !1256
  %306 = add nsw i64 %264, 1, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %306, metadata !2109, metadata !DIExpression()), !dbg !2118
  %307 = trunc i64 %306 to i32, !dbg !2178
  %308 = icmp eq i32 %23, %307, !dbg !2178
  br i1 %308, label %213, label %263, !dbg !2123, !llvm.loop !2179

309:                                              ; preds = %407, %260
  call void @llvm.dbg.value(metadata i32 0, metadata !2109, metadata !DIExpression()), !dbg !2118
  br i1 %16, label %310, label %488, !dbg !2180

310:                                              ; preds = %309
  br i1 %60, label %405, label %311, !dbg !2180

311:                                              ; preds = %310
  %312 = icmp ult ptr %70, %111, !dbg !2180
  %313 = icmp ult ptr %109, %107, !dbg !2180
  %314 = and i1 %312, %313, !dbg !2180
  br i1 %314, label %405, label %315, !dbg !2180

315:                                              ; preds = %311
  br i1 %61, label %360, label %316, !dbg !2180

316:                                              ; preds = %315, %316
  %317 = phi i64 [ %356, %316 ], [ 0, %315 ], !dbg !2182
  %318 = add nsw i64 %317, -2, !dbg !2182
  %319 = getelementptr inbounds i8, ptr %74, i64 %318, !dbg !2182
  %320 = load <16 x i8>, ptr %319, align 1, !dbg !2182, !tbaa !1170, !alias.scope !2184
  %321 = zext <16 x i8> %320 to <16 x i32>, !dbg !2182
  %322 = or i64 %317, 3, !dbg !2182
  %323 = getelementptr inbounds i8, ptr %74, i64 %322, !dbg !2182
  %324 = load <16 x i8>, ptr %323, align 1, !dbg !2182, !tbaa !1170, !alias.scope !2184
  %325 = zext <16 x i8> %324 to <16 x i32>, !dbg !2182
  %326 = add nuw nsw <16 x i32> %325, %321, !dbg !2182
  %327 = add nsw i64 %317, -1, !dbg !2182
  %328 = getelementptr inbounds i8, ptr %74, i64 %327, !dbg !2182
  %329 = load <16 x i8>, ptr %328, align 1, !dbg !2182, !tbaa !1170, !alias.scope !2184
  %330 = zext <16 x i8> %329 to <16 x i32>, !dbg !2182
  %331 = or i64 %317, 2, !dbg !2182
  %332 = getelementptr inbounds i8, ptr %74, i64 %331, !dbg !2182
  %333 = load <16 x i8>, ptr %332, align 1, !dbg !2182, !tbaa !1170, !alias.scope !2184
  %334 = zext <16 x i8> %333 to <16 x i32>, !dbg !2182
  %335 = add nuw nsw <16 x i32> %334, %330, !dbg !2182
  %336 = mul nsw <16 x i32> %335, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>, !dbg !2182
  %337 = add nsw <16 x i32> %326, %336, !dbg !2182
  %338 = getelementptr inbounds i8, ptr %74, i64 %317, !dbg !2182
  %339 = load <16 x i8>, ptr %338, align 1, !dbg !2182, !tbaa !1170, !alias.scope !2184
  %340 = zext <16 x i8> %339 to <16 x i32>, !dbg !2182
  %341 = or i64 %317, 1, !dbg !2182
  %342 = getelementptr inbounds i8, ptr %74, i64 %341, !dbg !2182
  %343 = load <16 x i8>, ptr %342, align 1, !dbg !2182, !tbaa !1170, !alias.scope !2184
  %344 = zext <16 x i8> %343 to <16 x i32>, !dbg !2182
  %345 = add nuw nsw <16 x i32> %344, %340, !dbg !2182
  %346 = mul nuw nsw <16 x i32> %345, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>, !dbg !2182
  %347 = add nsw <16 x i32> %337, %346, !dbg !2182
  %348 = add nsw <16 x i32> %347, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !2187
  %349 = lshr <16 x i32> %348, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !2188
  %350 = icmp ult <16 x i32> %348, <i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192>, !dbg !2189
  %351 = icmp sgt <16 x i32> %347, <i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15>, !dbg !2191
  %352 = sext <16 x i1> %351 to <16 x i32>, !dbg !2191
  %353 = select <16 x i1> %350, <16 x i32> %349, <16 x i32> %352, !dbg !2191
  %354 = trunc <16 x i32> %353 to <16 x i8>, !dbg !2191
  %355 = getelementptr inbounds i8, ptr %70, i64 %317, !dbg !2192
  store <16 x i8> %354, ptr %355, align 1, !dbg !2193, !tbaa !1170, !alias.scope !2194, !noalias !2184
  %356 = add nuw i64 %317, 16, !dbg !2182
  %357 = icmp eq i64 %356, %62, !dbg !2182
  br i1 %357, label %358, label %316, !dbg !2182, !llvm.loop !2196

358:                                              ; preds = %316
  br i1 %63, label %488, label %359, !dbg !2180

359:                                              ; preds = %358
  br i1 %65, label %405, label %360, !dbg !2180

360:                                              ; preds = %315, %359
  %361 = phi i64 [ %62, %359 ], [ 0, %315 ]
  br label %362, !dbg !2180

362:                                              ; preds = %362, %360
  %363 = phi i64 [ %361, %360 ], [ %402, %362 ], !dbg !2182
  %364 = add nsw i64 %363, -2, !dbg !2182
  %365 = getelementptr inbounds i8, ptr %74, i64 %364, !dbg !2182
  %366 = load <8 x i8>, ptr %365, align 1, !dbg !2182, !tbaa !1170, !alias.scope !2198
  %367 = zext <8 x i8> %366 to <8 x i32>, !dbg !2182
  %368 = or i64 %363, 3, !dbg !2182
  %369 = getelementptr inbounds i8, ptr %74, i64 %368, !dbg !2182
  %370 = load <8 x i8>, ptr %369, align 1, !dbg !2182, !tbaa !1170, !alias.scope !2198
  %371 = zext <8 x i8> %370 to <8 x i32>, !dbg !2182
  %372 = add nuw nsw <8 x i32> %371, %367, !dbg !2182
  %373 = add nsw i64 %363, -1, !dbg !2182
  %374 = getelementptr inbounds i8, ptr %74, i64 %373, !dbg !2182
  %375 = load <8 x i8>, ptr %374, align 1, !dbg !2182, !tbaa !1170, !alias.scope !2198
  %376 = zext <8 x i8> %375 to <8 x i32>, !dbg !2182
  %377 = or i64 %363, 2, !dbg !2182
  %378 = getelementptr inbounds i8, ptr %74, i64 %377, !dbg !2182
  %379 = load <8 x i8>, ptr %378, align 1, !dbg !2182, !tbaa !1170, !alias.scope !2198
  %380 = zext <8 x i8> %379 to <8 x i32>, !dbg !2182
  %381 = add nuw nsw <8 x i32> %380, %376, !dbg !2182
  %382 = mul nsw <8 x i32> %381, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>, !dbg !2182
  %383 = add nsw <8 x i32> %372, %382, !dbg !2182
  %384 = getelementptr inbounds i8, ptr %74, i64 %363, !dbg !2182
  %385 = load <8 x i8>, ptr %384, align 1, !dbg !2182, !tbaa !1170, !alias.scope !2198
  %386 = zext <8 x i8> %385 to <8 x i32>, !dbg !2182
  %387 = or i64 %363, 1, !dbg !2182
  %388 = getelementptr inbounds i8, ptr %74, i64 %387, !dbg !2182
  %389 = load <8 x i8>, ptr %388, align 1, !dbg !2182, !tbaa !1170, !alias.scope !2198
  %390 = zext <8 x i8> %389 to <8 x i32>, !dbg !2182
  %391 = add nuw nsw <8 x i32> %390, %386, !dbg !2182
  %392 = mul nuw nsw <8 x i32> %391, <i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20, i32 20>, !dbg !2182
  %393 = add nsw <8 x i32> %383, %392, !dbg !2182
  %394 = add nsw <8 x i32> %393, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>, !dbg !2187
  %395 = lshr <8 x i32> %394, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, !dbg !2188
  %396 = icmp ult <8 x i32> %394, <i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192>, !dbg !2189
  %397 = icmp sgt <8 x i32> %393, <i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15>, !dbg !2191
  %398 = sext <8 x i1> %397 to <8 x i32>, !dbg !2191
  %399 = select <8 x i1> %396, <8 x i32> %395, <8 x i32> %398, !dbg !2191
  %400 = trunc <8 x i32> %399 to <8 x i8>, !dbg !2191
  %401 = getelementptr inbounds i8, ptr %70, i64 %363, !dbg !2192
  store <8 x i8> %400, ptr %401, align 1, !dbg !2193, !tbaa !1170, !alias.scope !2201, !noalias !2198
  %402 = add nuw i64 %363, 8, !dbg !2182
  %403 = icmp eq i64 %402, %66, !dbg !2182
  br i1 %403, label %404, label %362, !dbg !2182, !llvm.loop !2203

404:                                              ; preds = %362
  br i1 %67, label %488, label %405, !dbg !2180

405:                                              ; preds = %311, %310, %359, %404
  %406 = phi i64 [ 0, %310 ], [ 0, %311 ], [ %62, %359 ], [ %66, %404 ]
  br label %447, !dbg !2180

407:                                              ; preds = %261, %407
  %408 = phi i64 [ %431, %407 ], [ %262, %261 ]
  call void @llvm.dbg.value(metadata i64 %408, metadata !2109, metadata !DIExpression()), !dbg !2118
  %409 = getelementptr inbounds i16, ptr %10, i64 %408, !dbg !2158
  %410 = load i16, ptr %409, align 2, !dbg !2158, !tbaa !1256
  %411 = sext i16 %410 to i32, !dbg !2158
  %412 = add nuw nsw i64 %408, 3, !dbg !2158
  %413 = getelementptr inbounds i16, ptr %17, i64 %412, !dbg !2158
  %414 = load i16, ptr %413, align 2, !dbg !2158, !tbaa !1256
  %415 = sext i16 %414 to i32, !dbg !2158
  %416 = add nsw i32 %415, %411, !dbg !2158
  %417 = add nsw i64 %408, -1, !dbg !2158
  %418 = getelementptr inbounds i16, ptr %17, i64 %417, !dbg !2158
  %419 = load i16, ptr %418, align 2, !dbg !2158, !tbaa !1256
  %420 = sext i16 %419 to i32, !dbg !2158
  %421 = add nuw nsw i64 %408, 2, !dbg !2158
  %422 = getelementptr inbounds i16, ptr %17, i64 %421, !dbg !2158
  %423 = load i16, ptr %422, align 2, !dbg !2158, !tbaa !1256
  %424 = sext i16 %423 to i32, !dbg !2158
  %425 = add nsw i32 %424, %420, !dbg !2158
  %426 = mul nsw i32 %425, -5, !dbg !2158
  %427 = add nsw i32 %416, %426, !dbg !2158
  %428 = getelementptr inbounds i16, ptr %17, i64 %408, !dbg !2158
  %429 = load i16, ptr %428, align 2, !dbg !2158, !tbaa !1256
  %430 = sext i16 %429 to i32, !dbg !2158
  %431 = add nuw nsw i64 %408, 1, !dbg !2158
  %432 = getelementptr inbounds i16, ptr %17, i64 %431, !dbg !2158
  %433 = load i16, ptr %432, align 2, !dbg !2158, !tbaa !1256
  %434 = sext i16 %433 to i32, !dbg !2158
  %435 = add nsw i32 %434, %430, !dbg !2158
  %436 = mul nsw i32 %435, 20, !dbg !2158
  %437 = add nsw i32 %427, %436, !dbg !2158
  %438 = add nsw i32 %437, 512, !dbg !2163
  %439 = lshr i32 %438, 10, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %438, metadata !1807, metadata !DIExpression(DW_OP_constu, 10, DW_OP_shra, DW_OP_stack_value)), !dbg !2204
  %440 = icmp ult i32 %438, 262144, !dbg !2165
  %441 = icmp sgt i32 %437, 511, !dbg !2167
  %442 = sext i1 %441 to i32, !dbg !2167
  %443 = select i1 %440, i32 %439, i32 %442, !dbg !2167
  %444 = trunc i32 %443 to i8, !dbg !2167
  %445 = getelementptr inbounds i8, ptr %73, i64 %408, !dbg !2168
  store i8 %444, ptr %445, align 1, !dbg !2169, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 %431, metadata !2109, metadata !DIExpression()), !dbg !2118
  %446 = icmp eq i64 %431, %24, !dbg !2205
  br i1 %446, label %309, label %407, !dbg !2156, !llvm.loop !2206

447:                                              ; preds = %405, %447
  %448 = phi i64 [ %472, %447 ], [ %406, %405 ]
  call void @llvm.dbg.value(metadata i64 %448, metadata !2109, metadata !DIExpression()), !dbg !2118
  %449 = add nsw i64 %448, -2, !dbg !2182
  %450 = getelementptr inbounds i8, ptr %74, i64 %449, !dbg !2182
  %451 = load i8, ptr %450, align 1, !dbg !2182, !tbaa !1170
  %452 = zext i8 %451 to i32, !dbg !2182
  %453 = add nuw nsw i64 %448, 3, !dbg !2182
  %454 = getelementptr inbounds i8, ptr %74, i64 %453, !dbg !2182
  %455 = load i8, ptr %454, align 1, !dbg !2182, !tbaa !1170
  %456 = zext i8 %455 to i32, !dbg !2182
  %457 = add nuw nsw i32 %456, %452, !dbg !2182
  %458 = add nsw i64 %448, -1, !dbg !2182
  %459 = getelementptr inbounds i8, ptr %74, i64 %458, !dbg !2182
  %460 = load i8, ptr %459, align 1, !dbg !2182, !tbaa !1170
  %461 = zext i8 %460 to i32, !dbg !2182
  %462 = add nuw nsw i64 %448, 2, !dbg !2182
  %463 = getelementptr inbounds i8, ptr %74, i64 %462, !dbg !2182
  %464 = load i8, ptr %463, align 1, !dbg !2182, !tbaa !1170
  %465 = zext i8 %464 to i32, !dbg !2182
  %466 = add nuw nsw i32 %465, %461, !dbg !2182
  %467 = mul nsw i32 %466, -5, !dbg !2182
  %468 = add nsw i32 %457, %467, !dbg !2182
  %469 = getelementptr inbounds i8, ptr %74, i64 %448, !dbg !2182
  %470 = load i8, ptr %469, align 1, !dbg !2182, !tbaa !1170
  %471 = zext i8 %470 to i32, !dbg !2182
  %472 = add nuw nsw i64 %448, 1, !dbg !2182
  %473 = getelementptr inbounds i8, ptr %74, i64 %472, !dbg !2182
  %474 = load i8, ptr %473, align 1, !dbg !2182, !tbaa !1170
  %475 = zext i8 %474 to i32, !dbg !2182
  %476 = add nuw nsw i32 %475, %471, !dbg !2182
  %477 = mul nuw nsw i32 %476, 20, !dbg !2182
  %478 = add nsw i32 %468, %477, !dbg !2182
  %479 = add nsw i32 %478, 16, !dbg !2187
  %480 = lshr i32 %479, 5, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %479, metadata !1807, metadata !DIExpression(DW_OP_constu, 5, DW_OP_shra, DW_OP_stack_value)), !dbg !2207
  %481 = icmp ult i32 %479, 8192, !dbg !2189
  %482 = icmp sgt i32 %478, 15, !dbg !2191
  %483 = sext i1 %482 to i32, !dbg !2191
  %484 = select i1 %481, i32 %480, i32 %483, !dbg !2191
  %485 = trunc i32 %484 to i8, !dbg !2191
  %486 = getelementptr inbounds i8, ptr %70, i64 %448, !dbg !2192
  store i8 %485, ptr %486, align 1, !dbg !2193, !tbaa !1170
  call void @llvm.dbg.value(metadata i64 %472, metadata !2109, metadata !DIExpression()), !dbg !2118
  %487 = icmp eq i64 %472, %25, !dbg !2208
  br i1 %487, label %488, label %447, !dbg !2180, !llvm.loop !2209

488:                                              ; preds = %447, %358, %404, %68, %213, %309
  %489 = getelementptr inbounds i8, ptr %70, i64 %18, !dbg !2210
  call void @llvm.dbg.value(metadata ptr %489, metadata !2101, metadata !DIExpression()), !dbg !2118
  %490 = getelementptr inbounds i8, ptr %72, i64 %18, !dbg !2211
  call void @llvm.dbg.value(metadata ptr %490, metadata !2102, metadata !DIExpression()), !dbg !2118
  %491 = getelementptr inbounds i8, ptr %73, i64 %18, !dbg !2212
  call void @llvm.dbg.value(metadata ptr %491, metadata !2103, metadata !DIExpression()), !dbg !2118
  %492 = getelementptr inbounds i8, ptr %74, i64 %18, !dbg !2213
  call void @llvm.dbg.value(metadata ptr %492, metadata !2104, metadata !DIExpression()), !dbg !2118
  %493 = add nuw nsw i32 %71, 1, !dbg !2214
  call void @llvm.dbg.value(metadata i32 %493, metadata !2110, metadata !DIExpression()), !dbg !2118
  %494 = icmp eq i32 %493, %6, !dbg !2121
  %495 = add i64 %69, 1, !dbg !2122
  br i1 %494, label %496, label %68, !dbg !2122, !llvm.loop !2215

496:                                              ; preds = %488, %7
  tail call void @x264_free(ptr noundef %10) #11, !dbg !2217
  ret void, !dbg !2218
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @prefetch_fenc_null(ptr nocapture %0, i32 %1, ptr nocapture %2, i32 %3, i32 %4) #5 !dbg !2219 {
  call void @llvm.dbg.value(metadata ptr poison, metadata !2221, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i32 poison, metadata !2222, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata ptr poison, metadata !2223, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i32 poison, metadata !2224, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i32 poison, metadata !2225, metadata !DIExpression()), !dbg !2226
  ret void, !dbg !2227
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @prefetch_ref_null(ptr nocapture %0, i32 %1, i32 %2) #5 !dbg !2228 {
  call void @llvm.dbg.value(metadata ptr poison, metadata !2230, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i32 poison, metadata !2231, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i32 poison, metadata !2232, metadata !DIExpression()), !dbg !2233
  ret void, !dbg !2234
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @memcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @memzero_aligned(ptr nocapture noundef writeonly %0, i32 noundef %1) #7 !dbg !2235 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2237, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 %1, metadata !2238, metadata !DIExpression()), !dbg !2239
  %3 = sext i32 %1 to i64, !dbg !2240
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %3, i1 false), !dbg !2241
  ret void, !dbg !2242
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @frame_init_lowres_core(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #4 !dbg !2243 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2245, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata ptr %1, metadata !2246, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata ptr %2, metadata !2247, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata ptr %3, metadata !2248, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata ptr %4, metadata !2249, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 %5, metadata !2250, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 %6, metadata !2251, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 %7, metadata !2252, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 %8, metadata !2253, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 0, metadata !2255, metadata !DIExpression()), !dbg !2261
  %10 = icmp sgt i32 %8, 0, !dbg !2262
  br i1 %10, label %11, label %104, !dbg !2263

11:                                               ; preds = %9
  %12 = sext i32 %5 to i64
  %13 = icmp sgt i32 %7, 0
  %14 = shl nsw i32 %5, 1
  %15 = sext i32 %14 to i64
  %16 = sext i32 %6 to i64
  br i1 %13, label %17, label %104, !dbg !2264

17:                                               ; preds = %11
  %18 = zext i32 %7 to i64
  br label %19, !dbg !2263

19:                                               ; preds = %17, %96
  %20 = phi ptr [ %97, %96 ], [ %0, %17 ]
  %21 = phi ptr [ %98, %96 ], [ %1, %17 ]
  %22 = phi i32 [ %102, %96 ], [ 0, %17 ]
  %23 = phi ptr [ %99, %96 ], [ %2, %17 ]
  %24 = phi ptr [ %100, %96 ], [ %3, %17 ]
  %25 = phi ptr [ %101, %96 ], [ %4, %17 ]
  call void @llvm.dbg.value(metadata ptr %20, metadata !2245, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata ptr %21, metadata !2246, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 %22, metadata !2255, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata ptr %23, metadata !2247, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata ptr %24, metadata !2248, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata ptr %25, metadata !2249, metadata !DIExpression()), !dbg !2261
  %26 = getelementptr inbounds i8, ptr %20, i64 %12, !dbg !2266
  call void @llvm.dbg.value(metadata ptr %26, metadata !2256, metadata !DIExpression()), !dbg !2267
  %27 = getelementptr inbounds i8, ptr %26, i64 %12, !dbg !2268
  call void @llvm.dbg.value(metadata ptr %27, metadata !2260, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 0, metadata !2254, metadata !DIExpression()), !dbg !2261
  br label %28, !dbg !2264

28:                                               ; preds = %19, %28
  %29 = phi i64 [ 0, %19 ], [ %94, %28 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !2254, metadata !DIExpression()), !dbg !2261
  %30 = shl nuw nsw i64 %29, 1, !dbg !2269
  %31 = getelementptr inbounds i8, ptr %20, i64 %30, !dbg !2269
  %32 = getelementptr inbounds i8, ptr %26, i64 %30, !dbg !2269
  %33 = or i64 %30, 1, !dbg !2269
  %34 = getelementptr inbounds i8, ptr %20, i64 %33, !dbg !2269
  %35 = getelementptr inbounds i8, ptr %26, i64 %33, !dbg !2269
  %36 = load <2 x i8>, ptr %31, align 1, !dbg !2269, !tbaa !1170
  %37 = zext <2 x i8> %36 to <2 x i16>, !dbg !2269
  %38 = load <2 x i8>, ptr %32, align 1, !dbg !2269, !tbaa !1170
  %39 = zext <2 x i8> %38 to <2 x i16>, !dbg !2269
  %40 = add nuw nsw <2 x i16> %37, <i16 1, i16 1>, !dbg !2269
  %41 = add nuw nsw <2 x i16> %40, %39, !dbg !2269
  %42 = lshr <2 x i16> %41, <i16 1, i16 1>
  %43 = extractelement <2 x i16> %42, i64 0, !dbg !2269
  %44 = add nuw nsw i16 %43, 1, !dbg !2269
  %45 = extractelement <2 x i16> %42, i64 1, !dbg !2269
  %46 = add nuw nsw i16 %44, %45, !dbg !2269
  %47 = lshr i16 %46, 1
  %48 = trunc i16 %47 to i8, !dbg !2269
  %49 = getelementptr inbounds i8, ptr %21, i64 %29, !dbg !2272
  store i8 %48, ptr %49, align 1, !dbg !2273, !tbaa !1170
  %50 = load <2 x i8>, ptr %34, align 1, !dbg !2274, !tbaa !1170
  %51 = zext <2 x i8> %50 to <2 x i16>, !dbg !2274
  %52 = load <2 x i8>, ptr %35, align 1, !dbg !2274, !tbaa !1170
  %53 = zext <2 x i8> %52 to <2 x i16>, !dbg !2274
  %54 = add nuw nsw <2 x i16> %51, <i16 1, i16 1>, !dbg !2274
  %55 = add nuw nsw <2 x i16> %54, %53, !dbg !2274
  %56 = lshr <2 x i16> %55, <i16 1, i16 1>
  %57 = extractelement <2 x i16> %56, i64 0, !dbg !2274
  %58 = add nuw nsw i16 %57, 1, !dbg !2274
  %59 = extractelement <2 x i16> %56, i64 1, !dbg !2274
  %60 = add nuw nsw i16 %58, %59, !dbg !2274
  %61 = lshr i16 %60, 1
  %62 = trunc i16 %61 to i8, !dbg !2274
  %63 = getelementptr inbounds i8, ptr %23, i64 %29, !dbg !2275
  store i8 %62, ptr %63, align 1, !dbg !2276, !tbaa !1170
  %64 = getelementptr inbounds i8, ptr %27, i64 %30, !dbg !2277
  %65 = getelementptr inbounds i8, ptr %27, i64 %33, !dbg !2277
  %66 = load <2 x i8>, ptr %32, align 1, !dbg !2277, !tbaa !1170
  %67 = zext <2 x i8> %66 to <2 x i16>, !dbg !2277
  %68 = load <2 x i8>, ptr %64, align 1, !dbg !2277, !tbaa !1170
  %69 = zext <2 x i8> %68 to <2 x i16>, !dbg !2277
  %70 = add nuw nsw <2 x i16> %67, <i16 1, i16 1>, !dbg !2277
  %71 = add nuw nsw <2 x i16> %70, %69, !dbg !2277
  %72 = lshr <2 x i16> %71, <i16 1, i16 1>
  %73 = extractelement <2 x i16> %72, i64 0, !dbg !2277
  %74 = add nuw nsw i16 %73, 1, !dbg !2277
  %75 = extractelement <2 x i16> %72, i64 1, !dbg !2277
  %76 = add nuw nsw i16 %74, %75, !dbg !2277
  %77 = lshr i16 %76, 1
  %78 = trunc i16 %77 to i8, !dbg !2277
  %79 = getelementptr inbounds i8, ptr %24, i64 %29, !dbg !2278
  store i8 %78, ptr %79, align 1, !dbg !2279, !tbaa !1170
  %80 = load <2 x i8>, ptr %35, align 1, !dbg !2280, !tbaa !1170
  %81 = zext <2 x i8> %80 to <2 x i16>, !dbg !2280
  %82 = load <2 x i8>, ptr %65, align 1, !dbg !2280, !tbaa !1170
  %83 = zext <2 x i8> %82 to <2 x i16>, !dbg !2280
  %84 = add nuw nsw <2 x i16> %81, <i16 1, i16 1>, !dbg !2280
  %85 = add nuw nsw <2 x i16> %84, %83, !dbg !2280
  %86 = lshr <2 x i16> %85, <i16 1, i16 1>
  %87 = extractelement <2 x i16> %86, i64 0, !dbg !2280
  %88 = add nuw nsw i16 %87, 1, !dbg !2280
  %89 = extractelement <2 x i16> %86, i64 1, !dbg !2280
  %90 = add nuw nsw i16 %88, %89, !dbg !2280
  %91 = lshr i16 %90, 1
  %92 = trunc i16 %91 to i8, !dbg !2280
  %93 = getelementptr inbounds i8, ptr %25, i64 %29, !dbg !2281
  store i8 %92, ptr %93, align 1, !dbg !2282, !tbaa !1170
  %94 = add nuw nsw i64 %29, 1, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %94, metadata !2254, metadata !DIExpression()), !dbg !2261
  %95 = icmp eq i64 %94, %18, !dbg !2284
  br i1 %95, label %96, label %28, !dbg !2264, !llvm.loop !2285

96:                                               ; preds = %28
  %97 = getelementptr inbounds i8, ptr %20, i64 %15, !dbg !2287
  call void @llvm.dbg.value(metadata ptr %97, metadata !2245, metadata !DIExpression()), !dbg !2261
  %98 = getelementptr inbounds i8, ptr %21, i64 %16, !dbg !2288
  call void @llvm.dbg.value(metadata ptr %98, metadata !2246, metadata !DIExpression()), !dbg !2261
  %99 = getelementptr inbounds i8, ptr %23, i64 %16, !dbg !2289
  call void @llvm.dbg.value(metadata ptr %99, metadata !2247, metadata !DIExpression()), !dbg !2261
  %100 = getelementptr inbounds i8, ptr %24, i64 %16, !dbg !2290
  call void @llvm.dbg.value(metadata ptr %100, metadata !2248, metadata !DIExpression()), !dbg !2261
  %101 = getelementptr inbounds i8, ptr %25, i64 %16, !dbg !2291
  call void @llvm.dbg.value(metadata ptr %101, metadata !2249, metadata !DIExpression()), !dbg !2261
  %102 = add nuw nsw i32 %22, 1, !dbg !2292
  call void @llvm.dbg.value(metadata i32 %102, metadata !2255, metadata !DIExpression()), !dbg !2261
  %103 = icmp eq i32 %102, %8, !dbg !2262
  br i1 %103, label %104, label %19, !dbg !2263, !llvm.loop !2293

104:                                              ; preds = %96, %11, %9
  ret void, !dbg !2295
}

declare !dbg !2296 void @x264_mc_init_mmx(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_filter(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !2298 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2302, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata ptr %1, metadata !2303, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i32 %2, metadata !2304, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i32 %3, metadata !2305, metadata !DIExpression()), !dbg !2325
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 7, !dbg !2326
  %6 = load i32, ptr %5, align 4, !dbg !2326, !tbaa !2327
  call void @llvm.dbg.value(metadata i32 %6, metadata !2306, metadata !DIExpression()), !dbg !2325
  %7 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 10, !dbg !2328
  %8 = load i32, ptr %7, align 8, !dbg !2329, !tbaa !1156
  %9 = shl i32 %8, %6, !dbg !2330
  %10 = freeze i32 %9
  call void @llvm.dbg.value(metadata i32 %9, metadata !2307, metadata !DIExpression()), !dbg !2325
  %11 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 11, !dbg !2331
  %12 = load i32, ptr %11, align 4, !dbg !2332, !tbaa !1156
  call void @llvm.dbg.value(metadata i32 %12, metadata !2308, metadata !DIExpression()), !dbg !2325
  %13 = shl nsw i32 %2, 4, !dbg !2333
  %14 = ashr i32 %13, %6, !dbg !2334
  %15 = add nsw i32 %14, -8, !dbg !2335
  call void @llvm.dbg.value(metadata i32 %15, metadata !2309, metadata !DIExpression()), !dbg !2325
  %16 = icmp eq i32 %3, 0, !dbg !2336
  br i1 %16, label %21, label %17, !dbg !2336

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 12, !dbg !2337
  %19 = load i32, ptr %18, align 8, !dbg !2338, !tbaa !1156
  %20 = ashr i32 %19, %6, !dbg !2339
  br label %21, !dbg !2336

21:                                               ; preds = %4, %17
  %22 = phi i32 [ %14, %4 ], [ %20, %17 ], !dbg !2339
  %23 = add nsw i32 %22, 8, !dbg !2340
  call void @llvm.dbg.value(metadata i32 %23, metadata !2310, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata !DIArgList(i32 %15, i32 %9), metadata !2311, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !2325
  %24 = and i32 %6, %2, !dbg !2341
  %25 = icmp eq i32 %24, 0, !dbg !2341
  br i1 %25, label %26, label %532, !dbg !2343

26:                                               ; preds = %21
  call void @llvm.dbg.value(metadata !DIArgList(i32 %15, i32 %9), metadata !2311, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !2325
  call void @llvm.dbg.value(metadata !DIArgList(i32 %15, i32 %9), metadata !2311, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !2325
  call void @llvm.dbg.value(metadata i32 0, metadata !2313, metadata !DIExpression()), !dbg !2325
  %27 = icmp slt i32 %6, 0, !dbg !2344
  br i1 %27, label %55, label %28, !dbg !2347

28:                                               ; preds = %26
  %29 = mul nsw i32 %15, %10, !dbg !2348
  call void @llvm.dbg.value(metadata i32 %29, metadata !2311, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !2325
  %30 = add nsw i32 %29, -8, !dbg !2349
  call void @llvm.dbg.value(metadata i32 %30, metadata !2311, metadata !DIExpression()), !dbg !2325
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53, i32 7
  %32 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 17, i64 1
  %33 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 17, i64 2
  %34 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 17, i64 3
  %35 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 16
  %36 = add nsw i32 %12, 16
  %37 = sub nsw i32 %23, %15
  br label %38, !dbg !2347

38:                                               ; preds = %28, %38
  %39 = phi i32 [ 0, %28 ], [ %51, %38 ]
  %40 = phi i32 [ %30, %28 ], [ %53, %38 ]
  call void @llvm.dbg.value(metadata i32 %39, metadata !2313, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i32 %40, metadata !2311, metadata !DIExpression()), !dbg !2325
  %41 = load ptr, ptr %31, align 16, !dbg !2350, !tbaa !2352
  %42 = load ptr, ptr %32, align 8, !dbg !2353, !tbaa !1150
  %43 = sext i32 %40 to i64, !dbg !2354
  %44 = getelementptr inbounds i8, ptr %42, i64 %43, !dbg !2354
  %45 = load ptr, ptr %33, align 8, !dbg !2355, !tbaa !1150
  %46 = getelementptr inbounds i8, ptr %45, i64 %43, !dbg !2356
  %47 = load ptr, ptr %34, align 8, !dbg !2357, !tbaa !1150
  %48 = getelementptr inbounds i8, ptr %47, i64 %43, !dbg !2358
  %49 = load ptr, ptr %35, align 8, !dbg !2359, !tbaa !1150
  %50 = getelementptr inbounds i8, ptr %49, i64 %43, !dbg !2360
  tail call void %41(ptr noundef %44, ptr noundef %46, ptr noundef %48, ptr noundef %50, i32 noundef %10, i32 noundef %36, i32 noundef %37) #11, !dbg !2361
  %51 = add nuw i32 %39, 1, !dbg !2362
  call void @llvm.dbg.value(metadata i32 %51, metadata !2313, metadata !DIExpression()), !dbg !2325
  %52 = load i32, ptr %7, align 8, !dbg !2363, !tbaa !1156
  %53 = add nsw i32 %52, %40, !dbg !2364
  call void @llvm.dbg.value(metadata i32 %53, metadata !2311, metadata !DIExpression()), !dbg !2325
  %54 = icmp eq i32 %39, %6, !dbg !2344
  br i1 %54, label %55, label %38, !dbg !2347, !llvm.loop !2365

55:                                               ; preds = %38, %26
  %56 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 19, !dbg !2367
  %57 = load ptr, ptr %56, align 8, !dbg !2367, !tbaa !2368
  %58 = icmp eq ptr %57, null, !dbg !2369
  br i1 %58, label %532, label %59, !dbg !2370

59:                                               ; preds = %55
  %60 = icmp slt i32 %14, 8, !dbg !2371
  br i1 %60, label %61, label %69, !dbg !2373

61:                                               ; preds = %59
  %62 = shl nsw i32 %10, 5, !dbg !2374
  %63 = sext i32 %62 to i64, !dbg !2376
  %64 = sub nsw i64 0, %63, !dbg !2376
  %65 = getelementptr inbounds i16, ptr %57, i64 %64, !dbg !2376
  %66 = getelementptr inbounds i16, ptr %65, i64 -32, !dbg !2377
  %67 = sext i32 %10 to i64, !dbg !2378
  %68 = shl nsw i64 %67, 1, !dbg !2379
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %66, i8 0, i64 %68, i1 false), !dbg !2380
  call void @llvm.dbg.value(metadata i32 -32, metadata !2309, metadata !DIExpression()), !dbg !2325
  br label %69, !dbg !2381

69:                                               ; preds = %61, %59
  %70 = phi i32 [ -32, %61 ], [ %15, %59 ], !dbg !2325
  call void @llvm.dbg.value(metadata i32 %70, metadata !2309, metadata !DIExpression()), !dbg !2325
  %71 = add nsw i32 %22, 32
  %72 = select i1 %16, i32 %23, i32 %71, !dbg !2382
  call void @llvm.dbg.value(metadata i32 %72, metadata !2310, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i32 %70, metadata !2313, metadata !DIExpression()), !dbg !2325
  %73 = icmp slt i32 %70, %72, !dbg !2383
  br i1 %73, label %74, label %532, !dbg !2384

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 16
  %76 = load ptr, ptr %75, align 8, !tbaa !1150
  %77 = load ptr, ptr %56, align 8, !tbaa !2368
  %78 = add i32 %10, -1
  %79 = icmp sgt i32 %10, 2
  %80 = shl nsw i32 %10, 3
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 0, %81
  %83 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 12
  %84 = icmp sgt i32 %10, 9
  %85 = shl nsw i32 %10, 2
  %86 = add nsw i32 %85, 4
  %87 = sext i32 %86 to i64
  %88 = sext i32 %85 to i64
  %89 = add nsw i32 %80, 8
  %90 = sext i32 %89 to i64
  br i1 %84, label %91, label %379, !dbg !2385

91:                                               ; preds = %74
  %92 = zext i32 %10 to i64, !dbg !2384
  %93 = sext i32 %70 to i64, !dbg !2384
  %94 = sext i32 %72 to i64, !dbg !2383
  %95 = getelementptr i8, ptr %76, i64 -32
  %96 = getelementptr i16, ptr %77, i64 -31
  %97 = zext i32 %78 to i64
  %98 = add i32 %10, -9
  %99 = add nsw i64 %93, 1, !dbg !2384
  %100 = mul i64 %99, %92, !dbg !2384
  %101 = shl i64 %100, 1, !dbg !2384
  %102 = add i32 %10, -10, !dbg !2384
  %103 = zext i32 %102 to i64, !dbg !2384
  %104 = shl nuw nsw i64 %103, 1, !dbg !2384
  %105 = add i64 %101, %104, !dbg !2384
  %106 = add i64 %105, -60, !dbg !2384
  %107 = shl nsw i64 %81, 1, !dbg !2384
  %108 = sub i64 %106, %107, !dbg !2384
  %109 = shl nuw nsw i64 %92, 1, !dbg !2387
  %110 = add i64 %101, -62, !dbg !2384
  %111 = sub i64 %110, %107, !dbg !2384
  %112 = add i64 %100, %87, !dbg !2384
  %113 = shl i64 %112, 1, !dbg !2384
  %114 = add i64 %113, -62, !dbg !2384
  %115 = sub i64 %114, %107, !dbg !2384
  %116 = add i64 %113, %104, !dbg !2384
  %117 = add i64 %116, -60, !dbg !2384
  %118 = sub i64 %117, %107, !dbg !2384
  %119 = add i64 %101, -54, !dbg !2384
  %120 = sub i64 %119, %107, !dbg !2384
  %121 = add i64 %101, %104, !dbg !2384
  %122 = add i64 %121, -52, !dbg !2384
  %123 = sub i64 %122, %107, !dbg !2384
  %124 = add i64 %100, %88, !dbg !2384
  %125 = shl i64 %124, 1, !dbg !2384
  %126 = add i64 %125, -62, !dbg !2384
  %127 = sub i64 %126, %107, !dbg !2384
  %128 = add i64 %125, %104, !dbg !2384
  %129 = add i64 %128, -60, !dbg !2384
  %130 = sub i64 %129, %107, !dbg !2384
  %131 = add i64 %100, %90, !dbg !2384
  %132 = shl i64 %131, 1, !dbg !2384
  %133 = add i64 %132, -62, !dbg !2384
  %134 = sub i64 %133, %107, !dbg !2384
  %135 = add i64 %132, %104, !dbg !2384
  %136 = add i64 %135, -60, !dbg !2384
  %137 = sub i64 %136, %107, !dbg !2384
  %138 = add i64 %101, -46, !dbg !2384
  %139 = sub i64 %138, %107, !dbg !2384
  %140 = add i64 %101, %104, !dbg !2384
  %141 = add i64 %140, -44, !dbg !2384
  %142 = sub i64 %141, %107, !dbg !2384
  %143 = add i64 %101, -62, !dbg !2384
  %144 = add i64 %140, -60, !dbg !2384
  %145 = add i32 %10, -10, !dbg !2384
  %146 = zext i32 %145 to i64, !dbg !2384
  %147 = add nuw nsw i64 %146, 1, !dbg !2384
  %148 = add nsw i64 %97, -1, !dbg !2384
  %149 = and i64 %148, 1
  %150 = icmp eq i32 %78, 2
  %151 = and i64 %148, -2
  %152 = icmp eq i64 %149, 0
  %153 = icmp ult i32 %145, 31
  %154 = and i64 %147, -8
  %155 = shl nuw nsw i64 %154, 1
  %156 = shl nuw nsw i64 %154, 1
  %157 = trunc i64 %154 to i32
  %158 = or i32 %157, 1
  %159 = icmp eq i64 %147, %154
  br label %160, !dbg !2384

160:                                              ; preds = %91, %314
  %161 = phi i64 [ 0, %91 ], [ %316, %314 ]
  %162 = phi i64 [ %93, %91 ], [ %194, %314 ]
  call void @llvm.dbg.value(metadata i64 %162, metadata !2313, metadata !DIExpression()), !dbg !2325
  %163 = mul i64 %109, %161, !dbg !2387
  %164 = add i64 %108, %163, !dbg !2387
  %165 = getelementptr i8, ptr %77, i64 %164, !dbg !2387
  %166 = add i64 %111, %163, !dbg !2387
  %167 = getelementptr i8, ptr %77, i64 %166, !dbg !2387
  %168 = add i64 %115, %163, !dbg !2387
  %169 = getelementptr i8, ptr %77, i64 %168, !dbg !2387
  %170 = add i64 %118, %163, !dbg !2387
  %171 = getelementptr i8, ptr %77, i64 %170, !dbg !2387
  %172 = add i64 %120, %163, !dbg !2387
  %173 = getelementptr i8, ptr %77, i64 %172, !dbg !2387
  %174 = add i64 %123, %163, !dbg !2387
  %175 = getelementptr i8, ptr %77, i64 %174, !dbg !2387
  %176 = add i64 %127, %163, !dbg !2387
  %177 = getelementptr i8, ptr %77, i64 %176, !dbg !2387
  %178 = add i64 %130, %163, !dbg !2387
  %179 = getelementptr i8, ptr %77, i64 %178, !dbg !2387
  %180 = add i64 %134, %163, !dbg !2387
  %181 = getelementptr i8, ptr %77, i64 %180, !dbg !2387
  %182 = add i64 %137, %163, !dbg !2387
  %183 = getelementptr i8, ptr %77, i64 %182, !dbg !2387
  %184 = add i64 %139, %163, !dbg !2387
  %185 = getelementptr i8, ptr %77, i64 %184, !dbg !2387
  %186 = add i64 %142, %163, !dbg !2387
  %187 = getelementptr i8, ptr %77, i64 %186, !dbg !2387
  %188 = add i64 %143, %163, !dbg !2387
  %189 = getelementptr i8, ptr %77, i64 %188, !dbg !2387
  %190 = add i64 %144, %163, !dbg !2387
  %191 = getelementptr i8, ptr %77, i64 %190, !dbg !2387
  %192 = mul nsw i64 %162, %92, !dbg !2387
  %193 = getelementptr i8, ptr %95, i64 %192, !dbg !2388
  call void @llvm.dbg.value(metadata ptr %193, metadata !2314, metadata !DIExpression()), !dbg !2389
  %194 = add nsw i64 %162, 1, !dbg !2390
  %195 = mul nsw i64 %194, %92, !dbg !2391
  %196 = getelementptr i16, ptr %96, i64 %195, !dbg !2392
  call void @llvm.dbg.value(metadata ptr %196, metadata !2320, metadata !DIExpression()), !dbg !2389
  store i16 0, ptr %196, align 2, !dbg !2393, !tbaa !1256
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 1, metadata !2312, metadata !DIExpression()), !dbg !2325
  br i1 %79, label %197, label %215, !dbg !2394

197:                                              ; preds = %160
  br i1 %150, label %198, label %345, !dbg !2394

198:                                              ; preds = %345, %197
  %199 = phi i64 [ 1, %197 ], [ %376, %345 ]
  %200 = phi i16 [ 0, %197 ], [ %374, %345 ]
  br i1 %152, label %215, label %201, !dbg !2394

201:                                              ; preds = %198
  call void @llvm.dbg.value(metadata i64 %199, metadata !2312, metadata !DIExpression()), !dbg !2325
  %202 = getelementptr inbounds i8, ptr %193, i64 %199, !dbg !2396
  %203 = load i8, ptr %202, align 1, !dbg !2396, !tbaa !1170
  %204 = zext i8 %203 to i16, !dbg !2396
  %205 = sub nsw i64 %199, %92, !dbg !2398
  %206 = getelementptr inbounds i16, ptr %196, i64 %205, !dbg !2399
  %207 = load i16, ptr %206, align 2, !dbg !2399, !tbaa !1256
  %208 = add nsw i64 %205, -1, !dbg !2400
  %209 = getelementptr inbounds i16, ptr %196, i64 %208, !dbg !2401
  %210 = load i16, ptr %209, align 2, !dbg !2401, !tbaa !1256
  %211 = add i16 %207, %200, !dbg !2402
  %212 = add i16 %211, %204, !dbg !2403
  %213 = sub i16 %212, %210, !dbg !2404
  call void @llvm.dbg.value(metadata i16 %213, metadata !2321, metadata !DIExpression()), !dbg !2389
  %214 = getelementptr inbounds i16, ptr %196, i64 %199, !dbg !2405
  store i16 %213, ptr %214, align 2, !dbg !2406, !tbaa !1256
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 %199, metadata !2312, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2325
  br label %215, !dbg !2407

215:                                              ; preds = %201, %198, %160
  call void @llvm.dbg.value(metadata !DIArgList(ptr %196, i64 0, i64 %81), metadata !2320, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2389
  %216 = icmp sgt i64 %162, -24, !dbg !2407
  br i1 %216, label %217, label %314, !dbg !2408

217:                                              ; preds = %215
  call void @llvm.dbg.value(metadata !DIArgList(ptr %196, i64 %82), metadata !2320, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2389
  %218 = getelementptr inbounds i16, ptr %196, i64 %82, !dbg !2409
  call void @llvm.dbg.value(metadata ptr %218, metadata !2320, metadata !DIExpression()), !dbg !2389
  %219 = load i32, ptr %83, align 8, !dbg !2410, !tbaa !1156
  %220 = add nsw i32 %219, 64, !dbg !2411
  %221 = mul nsw i32 %220, %10, !dbg !2412
  %222 = sext i32 %221 to i64, !dbg !2413
  %223 = getelementptr i16, ptr %218, i64 %222, !dbg !2413
  call void @llvm.dbg.value(metadata ptr %223, metadata !2322, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i32 1, metadata !2312, metadata !DIExpression()), !dbg !2325
  br i1 %153, label %310, label %224, !dbg !2385

224:                                              ; preds = %217
  %225 = shl nsw i64 %222, 1, !dbg !2385
  %226 = getelementptr i8, ptr %165, i64 %225, !dbg !2385
  %227 = icmp ult ptr %223, %165, !dbg !2385
  %228 = icmp ult ptr %167, %226, !dbg !2385
  %229 = and i1 %227, %228, !dbg !2385
  %230 = icmp ult ptr %223, %171, !dbg !2385
  %231 = icmp ult ptr %169, %226, !dbg !2385
  %232 = and i1 %230, %231, !dbg !2385
  %233 = or i1 %229, %232, !dbg !2385
  %234 = icmp ult ptr %223, %175, !dbg !2385
  %235 = icmp ult ptr %173, %226, !dbg !2385
  %236 = and i1 %234, %235, !dbg !2385
  %237 = or i1 %233, %236, !dbg !2385
  %238 = icmp ult ptr %223, %179, !dbg !2385
  %239 = icmp ult ptr %177, %226, !dbg !2385
  %240 = and i1 %238, %239, !dbg !2385
  %241 = or i1 %237, %240, !dbg !2385
  %242 = icmp ult ptr %223, %183, !dbg !2385
  %243 = icmp ult ptr %181, %226, !dbg !2385
  %244 = and i1 %242, %243, !dbg !2385
  %245 = or i1 %241, %244, !dbg !2385
  %246 = icmp ult ptr %223, %187, !dbg !2385
  %247 = icmp ult ptr %185, %226, !dbg !2385
  %248 = and i1 %246, %247, !dbg !2385
  %249 = or i1 %245, %248, !dbg !2385
  %250 = icmp ult ptr %223, %191, !dbg !2385
  %251 = icmp ult ptr %189, %226, !dbg !2385
  %252 = and i1 %250, %251, !dbg !2385
  %253 = or i1 %249, %252, !dbg !2385
  %254 = icmp ult ptr %167, %171, !dbg !2385
  %255 = icmp ult ptr %169, %165, !dbg !2385
  %256 = and i1 %254, %255, !dbg !2385
  %257 = or i1 %253, %256, !dbg !2385
  %258 = icmp ult ptr %167, %175, !dbg !2385
  %259 = icmp ult ptr %173, %165, !dbg !2385
  %260 = and i1 %258, %259, !dbg !2385
  %261 = or i1 %257, %260, !dbg !2385
  %262 = icmp ult ptr %167, %179, !dbg !2385
  %263 = icmp ult ptr %177, %165, !dbg !2385
  %264 = and i1 %262, %263, !dbg !2385
  %265 = or i1 %261, %264, !dbg !2385
  %266 = icmp ult ptr %167, %183, !dbg !2385
  %267 = icmp ult ptr %181, %165, !dbg !2385
  %268 = and i1 %266, %267, !dbg !2385
  %269 = or i1 %265, %268, !dbg !2385
  %270 = icmp ult ptr %167, %187, !dbg !2385
  %271 = icmp ult ptr %185, %165, !dbg !2385
  %272 = and i1 %270, %271, !dbg !2385
  %273 = or i1 %269, %272, !dbg !2385
  %274 = icmp ult ptr %167, %191, !dbg !2385
  %275 = icmp ult ptr %189, %165, !dbg !2385
  %276 = and i1 %274, %275, !dbg !2385
  %277 = or i1 %273, %276, !dbg !2385
  br i1 %277, label %310, label %278, !dbg !2385

278:                                              ; preds = %224
  %279 = getelementptr i8, ptr %223, i64 %155, !dbg !2385
  %280 = getelementptr i8, ptr %218, i64 %156, !dbg !2385
  br label %281, !dbg !2385

281:                                              ; preds = %281, %278
  %282 = phi i64 [ 0, %278 ], [ %307, %281 ]
  %283 = shl i64 %282, 1, !dbg !2385
  %284 = getelementptr i8, ptr %223, i64 %283, !dbg !2385
  %285 = shl i64 %282, 1, !dbg !2385
  %286 = getelementptr i8, ptr %218, i64 %285, !dbg !2385
  %287 = getelementptr inbounds i16, ptr %286, i64 %87, !dbg !2415
  %288 = load <8 x i16>, ptr %287, align 2, !dbg !2415, !tbaa !1256, !alias.scope !2418
  %289 = getelementptr inbounds i16, ptr %286, i64 4, !dbg !2421
  %290 = load <8 x i16>, ptr %289, align 2, !dbg !2421, !tbaa !1256, !alias.scope !2422
  %291 = getelementptr inbounds i16, ptr %286, i64 %88, !dbg !2424
  %292 = load <8 x i16>, ptr %291, align 2, !dbg !2424, !tbaa !1256, !alias.scope !2425
  %293 = load <8 x i16>, ptr %286, align 2, !dbg !2427, !tbaa !1256, !alias.scope !2428, !noalias !2430
  %294 = add <8 x i16> %290, %292, !dbg !2434
  %295 = sub <8 x i16> %288, %294, !dbg !2434
  %296 = add <8 x i16> %295, %293, !dbg !2435
  store <8 x i16> %296, ptr %284, align 2, !dbg !2436, !tbaa !1256, !alias.scope !2437, !noalias !2439
  %297 = getelementptr inbounds i16, ptr %286, i64 %90, !dbg !2440
  %298 = load <8 x i16>, ptr %297, align 2, !dbg !2440, !tbaa !1256, !alias.scope !2441
  %299 = getelementptr inbounds i16, ptr %286, i64 8, !dbg !2442
  %300 = load <8 x i16>, ptr %299, align 2, !dbg !2442, !tbaa !1256, !alias.scope !2443
  %301 = getelementptr inbounds i16, ptr %286, i64 %81, !dbg !2444
  %302 = load <8 x i16>, ptr %301, align 2, !dbg !2444, !tbaa !1256, !alias.scope !2445
  %303 = load <8 x i16>, ptr %286, align 2, !dbg !2446, !tbaa !1256, !alias.scope !2428, !noalias !2430
  %304 = add <8 x i16> %300, %302, !dbg !2447
  %305 = sub <8 x i16> %298, %304, !dbg !2447
  %306 = add <8 x i16> %305, %303, !dbg !2446
  store <8 x i16> %306, ptr %286, align 2, !dbg !2446, !tbaa !1256, !alias.scope !2428, !noalias !2430
  %307 = add nuw i64 %282, 8
  %308 = icmp eq i64 %307, %154
  br i1 %308, label %309, label %281, !llvm.loop !2448

309:                                              ; preds = %281
  br i1 %159, label %314, label %310, !dbg !2385

310:                                              ; preds = %224, %217, %309
  %311 = phi ptr [ %223, %224 ], [ %223, %217 ], [ %279, %309 ]
  %312 = phi ptr [ %218, %224 ], [ %218, %217 ], [ %280, %309 ]
  %313 = phi i32 [ 1, %224 ], [ 1, %217 ], [ %158, %309 ]
  br label %317, !dbg !2385

314:                                              ; preds = %317, %309, %215
  call void @llvm.dbg.value(metadata i64 %194, metadata !2313, metadata !DIExpression()), !dbg !2325
  %315 = icmp eq i64 %194, %94, !dbg !2383
  %316 = add i64 %161, 1, !dbg !2384
  br i1 %315, label %532, label %160, !dbg !2384, !llvm.loop !2450

317:                                              ; preds = %310, %317
  %318 = phi ptr [ %343, %317 ], [ %311, %310 ]
  %319 = phi ptr [ %342, %317 ], [ %312, %310 ]
  %320 = phi i32 [ %341, %317 ], [ %313, %310 ]
  call void @llvm.dbg.value(metadata ptr %318, metadata !2322, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata ptr %319, metadata !2320, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 %320, metadata !2312, metadata !DIExpression()), !dbg !2325
  %321 = getelementptr inbounds i16, ptr %319, i64 %87, !dbg !2415
  %322 = load i16, ptr %321, align 2, !dbg !2415, !tbaa !1256
  %323 = getelementptr inbounds i16, ptr %319, i64 4, !dbg !2421
  %324 = load i16, ptr %323, align 2, !dbg !2421, !tbaa !1256
  %325 = getelementptr inbounds i16, ptr %319, i64 %88, !dbg !2424
  %326 = load i16, ptr %325, align 2, !dbg !2424, !tbaa !1256
  %327 = load i16, ptr %319, align 2, !dbg !2427, !tbaa !1256
  %328 = add i16 %324, %326, !dbg !2434
  %329 = sub i16 %322, %328, !dbg !2434
  %330 = add i16 %329, %327, !dbg !2435
  store i16 %330, ptr %318, align 2, !dbg !2436, !tbaa !1256
  %331 = getelementptr inbounds i16, ptr %319, i64 %90, !dbg !2440
  %332 = load i16, ptr %331, align 2, !dbg !2440, !tbaa !1256
  %333 = getelementptr inbounds i16, ptr %319, i64 8, !dbg !2442
  %334 = load i16, ptr %333, align 2, !dbg !2442, !tbaa !1256
  %335 = getelementptr inbounds i16, ptr %319, i64 %81, !dbg !2444
  %336 = load i16, ptr %335, align 2, !dbg !2444, !tbaa !1256
  %337 = load i16, ptr %319, align 2, !dbg !2446, !tbaa !1256
  %338 = add i16 %334, %336, !dbg !2447
  %339 = sub i16 %332, %338, !dbg !2447
  %340 = add i16 %339, %337, !dbg !2446
  store i16 %340, ptr %319, align 2, !dbg !2446, !tbaa !1256
  %341 = add nuw nsw i32 %320, 1, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %341, metadata !2312, metadata !DIExpression()), !dbg !2325
  %342 = getelementptr inbounds i16, ptr %319, i64 1, !dbg !2453
  call void @llvm.dbg.value(metadata ptr %342, metadata !2320, metadata !DIExpression()), !dbg !2389
  %343 = getelementptr inbounds i16, ptr %318, i64 1, !dbg !2454
  call void @llvm.dbg.value(metadata ptr %343, metadata !2322, metadata !DIExpression()), !dbg !2414
  %344 = icmp eq i32 %320, %98, !dbg !2455
  br i1 %344, label %314, label %317, !dbg !2385, !llvm.loop !2456

345:                                              ; preds = %197, %345
  %346 = phi i64 [ %376, %345 ], [ 1, %197 ]
  %347 = phi i16 [ %374, %345 ], [ 0, %197 ]
  %348 = phi i64 [ %377, %345 ], [ 0, %197 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2312, metadata !DIExpression()), !dbg !2325
  %349 = getelementptr inbounds i8, ptr %193, i64 %346, !dbg !2396
  %350 = load i8, ptr %349, align 1, !dbg !2396, !tbaa !1170
  %351 = zext i8 %350 to i16, !dbg !2396
  %352 = sub nsw i64 %346, %92, !dbg !2398
  %353 = getelementptr inbounds i16, ptr %196, i64 %352, !dbg !2399
  %354 = load i16, ptr %353, align 2, !dbg !2399, !tbaa !1256
  %355 = add nsw i64 %352, -1, !dbg !2400
  %356 = getelementptr inbounds i16, ptr %196, i64 %355, !dbg !2401
  %357 = load i16, ptr %356, align 2, !dbg !2401, !tbaa !1256
  %358 = add i16 %354, %347, !dbg !2402
  %359 = add i16 %358, %351, !dbg !2403
  %360 = sub i16 %359, %357, !dbg !2404
  call void @llvm.dbg.value(metadata i16 %360, metadata !2321, metadata !DIExpression()), !dbg !2389
  %361 = getelementptr inbounds i16, ptr %196, i64 %346, !dbg !2405
  store i16 %360, ptr %361, align 2, !dbg !2406, !tbaa !1256
  %362 = add nuw nsw i64 %346, 1, !dbg !2457
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 %362, metadata !2312, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %362, metadata !2312, metadata !DIExpression()), !dbg !2325
  %363 = getelementptr inbounds i8, ptr %193, i64 %362, !dbg !2396
  %364 = load i8, ptr %363, align 1, !dbg !2396, !tbaa !1170
  %365 = zext i8 %364 to i16, !dbg !2396
  %366 = sub nsw i64 %362, %92, !dbg !2398
  %367 = getelementptr inbounds i16, ptr %196, i64 %366, !dbg !2399
  %368 = load i16, ptr %367, align 2, !dbg !2399, !tbaa !1256
  %369 = add nsw i64 %366, -1, !dbg !2400
  %370 = getelementptr inbounds i16, ptr %196, i64 %369, !dbg !2401
  %371 = load i16, ptr %370, align 2, !dbg !2401, !tbaa !1256
  %372 = add i16 %368, %360, !dbg !2402
  %373 = add i16 %372, %365, !dbg !2403
  %374 = sub i16 %373, %371, !dbg !2404
  call void @llvm.dbg.value(metadata i16 %374, metadata !2321, metadata !DIExpression()), !dbg !2389
  %375 = getelementptr inbounds i16, ptr %196, i64 %362, !dbg !2405
  store i16 %374, ptr %375, align 2, !dbg !2406, !tbaa !1256
  %376 = add nuw nsw i64 %346, 2, !dbg !2457
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 %376, metadata !2312, metadata !DIExpression()), !dbg !2325
  %377 = add nuw nsw i64 %348, 2, !dbg !2394
  %378 = icmp eq i64 %377, %151, !dbg !2394
  br i1 %378, label %198, label %345, !dbg !2394, !llvm.loop !2458

379:                                              ; preds = %74
  %380 = sext i32 %72 to i64, !dbg !2383
  br i1 %79, label %401, label %381, !dbg !2394

381:                                              ; preds = %379
  %382 = sext i32 %70 to i64, !dbg !2384
  %383 = sext i32 %10 to i64, !dbg !2384
  %384 = getelementptr i16, ptr %77, i64 -31
  %385 = sub nsw i64 %380, %382, !dbg !2384
  %386 = xor i64 %382, -1, !dbg !2384
  %387 = add nsw i64 %386, %380, !dbg !2384
  %388 = and i64 %385, 3, !dbg !2384
  %389 = icmp eq i64 %388, 0, !dbg !2384
  br i1 %389, label %398, label %390, !dbg !2384

390:                                              ; preds = %381, %390
  %391 = phi i64 [ %393, %390 ], [ %382, %381 ]
  %392 = phi i64 [ %396, %390 ], [ 0, %381 ]
  call void @llvm.dbg.value(metadata i64 %391, metadata !2313, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata !DIArgList(ptr %76, i64 %391, i32 %9), metadata !2314, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value)), !dbg !2389
  %393 = add nsw i64 %391, 1, !dbg !2390
  %394 = mul nsw i64 %393, %383, !dbg !2391
  %395 = getelementptr i16, ptr %384, i64 %394, !dbg !2392
  call void @llvm.dbg.value(metadata ptr %395, metadata !2320, metadata !DIExpression()), !dbg !2389
  store i16 0, ptr %395, align 2, !dbg !2393, !tbaa !1256
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 1, metadata !2312, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata !DIArgList(ptr %395, i64 0, i64 %81), metadata !2320, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2389
  call void @llvm.dbg.value(metadata i64 %393, metadata !2313, metadata !DIExpression()), !dbg !2325
  %396 = add i64 %392, 1, !dbg !2384
  %397 = icmp eq i64 %396, %388, !dbg !2384
  br i1 %397, label %398, label %390, !dbg !2384, !llvm.loop !2460

398:                                              ; preds = %390, %381
  %399 = phi i64 [ %382, %381 ], [ %393, %390 ]
  %400 = icmp ult i64 %387, 3, !dbg !2384
  br i1 %400, label %532, label %517, !dbg !2384

401:                                              ; preds = %379
  %402 = zext i32 %10 to i64, !dbg !2384
  %403 = sext i32 %70 to i64, !dbg !2384
  %404 = getelementptr i8, ptr %76, i64 -32
  %405 = getelementptr i16, ptr %77, i64 -31
  %406 = sub nsw i64 1, %402
  %407 = sub nsw i64 0, %402
  %408 = icmp eq i32 %78, 2
  %409 = sub nsw i64 2, %402
  %410 = sub nsw i64 1, %402
  %411 = icmp eq i32 %78, 3
  %412 = sub nsw i64 3, %402
  %413 = sub nsw i64 2, %402
  %414 = icmp eq i32 %78, 4
  %415 = sub nsw i64 4, %402
  %416 = sub nsw i64 3, %402
  %417 = icmp eq i32 %78, 5
  %418 = sub nsw i64 5, %402
  %419 = sub nsw i64 4, %402
  %420 = icmp eq i32 %78, 6
  %421 = sub nsw i64 6, %402
  %422 = sub nsw i64 5, %402
  %423 = icmp eq i32 %78, 7
  %424 = sub nsw i64 7, %402
  %425 = sub nsw i64 6, %402
  br label %426, !dbg !2384

426:                                              ; preds = %401, %515
  %427 = phi i64 [ %403, %401 ], [ %430, %515 ]
  call void @llvm.dbg.value(metadata i64 %427, metadata !2313, metadata !DIExpression()), !dbg !2325
  %428 = mul nsw i64 %427, %402, !dbg !2387
  %429 = getelementptr i8, ptr %404, i64 %428, !dbg !2388
  call void @llvm.dbg.value(metadata ptr %429, metadata !2314, metadata !DIExpression()), !dbg !2389
  %430 = add nsw i64 %427, 1, !dbg !2390
  %431 = mul nsw i64 %430, %402, !dbg !2391
  %432 = getelementptr i16, ptr %405, i64 %431, !dbg !2392
  call void @llvm.dbg.value(metadata ptr %432, metadata !2320, metadata !DIExpression()), !dbg !2389
  store i16 0, ptr %432, align 2, !dbg !2393, !tbaa !1256
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 1, metadata !2312, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 1, metadata !2312, metadata !DIExpression()), !dbg !2325
  %433 = getelementptr inbounds i8, ptr %429, i64 1, !dbg !2396
  %434 = load i8, ptr %433, align 1, !dbg !2396, !tbaa !1170
  %435 = zext i8 %434 to i16, !dbg !2396
  %436 = getelementptr inbounds i16, ptr %432, i64 %406, !dbg !2399
  %437 = load i16, ptr %436, align 2, !dbg !2399, !tbaa !1256
  %438 = getelementptr inbounds i16, ptr %432, i64 %407, !dbg !2401
  %439 = load i16, ptr %438, align 2, !dbg !2401, !tbaa !1256
  %440 = add i16 %437, %435, !dbg !2403
  %441 = sub i16 %440, %439, !dbg !2404
  call void @llvm.dbg.value(metadata i16 %441, metadata !2321, metadata !DIExpression()), !dbg !2389
  %442 = getelementptr inbounds i16, ptr %432, i64 1, !dbg !2405
  store i16 %441, ptr %442, align 2, !dbg !2406, !tbaa !1256
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 2, metadata !2312, metadata !DIExpression()), !dbg !2325
  br i1 %408, label %515, label %443, !dbg !2394, !llvm.loop !2458

443:                                              ; preds = %426
  call void @llvm.dbg.value(metadata i64 2, metadata !2312, metadata !DIExpression()), !dbg !2325
  %444 = getelementptr inbounds i8, ptr %429, i64 2, !dbg !2396
  %445 = load i8, ptr %444, align 1, !dbg !2396, !tbaa !1170
  %446 = zext i8 %445 to i16, !dbg !2396
  %447 = getelementptr inbounds i16, ptr %432, i64 %409, !dbg !2399
  %448 = load i16, ptr %447, align 2, !dbg !2399, !tbaa !1256
  %449 = getelementptr inbounds i16, ptr %432, i64 %410, !dbg !2401
  %450 = load i16, ptr %449, align 2, !dbg !2401, !tbaa !1256
  %451 = add i16 %448, %441, !dbg !2402
  %452 = add i16 %451, %446, !dbg !2403
  %453 = sub i16 %452, %450, !dbg !2404
  call void @llvm.dbg.value(metadata i16 %453, metadata !2321, metadata !DIExpression()), !dbg !2389
  %454 = getelementptr inbounds i16, ptr %432, i64 2, !dbg !2405
  store i16 %453, ptr %454, align 2, !dbg !2406, !tbaa !1256
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 3, metadata !2312, metadata !DIExpression()), !dbg !2325
  br i1 %411, label %515, label %455, !dbg !2394, !llvm.loop !2458

455:                                              ; preds = %443
  call void @llvm.dbg.value(metadata i64 3, metadata !2312, metadata !DIExpression()), !dbg !2325
  %456 = getelementptr inbounds i8, ptr %429, i64 3, !dbg !2396
  %457 = load i8, ptr %456, align 1, !dbg !2396, !tbaa !1170
  %458 = zext i8 %457 to i16, !dbg !2396
  %459 = getelementptr inbounds i16, ptr %432, i64 %412, !dbg !2399
  %460 = load i16, ptr %459, align 2, !dbg !2399, !tbaa !1256
  %461 = getelementptr inbounds i16, ptr %432, i64 %413, !dbg !2401
  %462 = load i16, ptr %461, align 2, !dbg !2401, !tbaa !1256
  %463 = add i16 %460, %453, !dbg !2402
  %464 = add i16 %463, %458, !dbg !2403
  %465 = sub i16 %464, %462, !dbg !2404
  call void @llvm.dbg.value(metadata i16 %465, metadata !2321, metadata !DIExpression()), !dbg !2389
  %466 = getelementptr inbounds i16, ptr %432, i64 3, !dbg !2405
  store i16 %465, ptr %466, align 2, !dbg !2406, !tbaa !1256
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 4, metadata !2312, metadata !DIExpression()), !dbg !2325
  br i1 %414, label %515, label %467, !dbg !2394, !llvm.loop !2458

467:                                              ; preds = %455
  call void @llvm.dbg.value(metadata i64 4, metadata !2312, metadata !DIExpression()), !dbg !2325
  %468 = getelementptr inbounds i8, ptr %429, i64 4, !dbg !2396
  %469 = load i8, ptr %468, align 1, !dbg !2396, !tbaa !1170
  %470 = zext i8 %469 to i16, !dbg !2396
  %471 = getelementptr inbounds i16, ptr %432, i64 %415, !dbg !2399
  %472 = load i16, ptr %471, align 2, !dbg !2399, !tbaa !1256
  %473 = getelementptr inbounds i16, ptr %432, i64 %416, !dbg !2401
  %474 = load i16, ptr %473, align 2, !dbg !2401, !tbaa !1256
  %475 = add i16 %472, %465, !dbg !2402
  %476 = add i16 %475, %470, !dbg !2403
  %477 = sub i16 %476, %474, !dbg !2404
  call void @llvm.dbg.value(metadata i16 %477, metadata !2321, metadata !DIExpression()), !dbg !2389
  %478 = getelementptr inbounds i16, ptr %432, i64 4, !dbg !2405
  store i16 %477, ptr %478, align 2, !dbg !2406, !tbaa !1256
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 5, metadata !2312, metadata !DIExpression()), !dbg !2325
  br i1 %417, label %515, label %479, !dbg !2394, !llvm.loop !2458

479:                                              ; preds = %467
  call void @llvm.dbg.value(metadata i64 5, metadata !2312, metadata !DIExpression()), !dbg !2325
  %480 = getelementptr inbounds i8, ptr %429, i64 5, !dbg !2396
  %481 = load i8, ptr %480, align 1, !dbg !2396, !tbaa !1170
  %482 = zext i8 %481 to i16, !dbg !2396
  %483 = getelementptr inbounds i16, ptr %432, i64 %418, !dbg !2399
  %484 = load i16, ptr %483, align 2, !dbg !2399, !tbaa !1256
  %485 = getelementptr inbounds i16, ptr %432, i64 %419, !dbg !2401
  %486 = load i16, ptr %485, align 2, !dbg !2401, !tbaa !1256
  %487 = add i16 %484, %477, !dbg !2402
  %488 = add i16 %487, %482, !dbg !2403
  %489 = sub i16 %488, %486, !dbg !2404
  call void @llvm.dbg.value(metadata i16 %489, metadata !2321, metadata !DIExpression()), !dbg !2389
  %490 = getelementptr inbounds i16, ptr %432, i64 5, !dbg !2405
  store i16 %489, ptr %490, align 2, !dbg !2406, !tbaa !1256
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 6, metadata !2312, metadata !DIExpression()), !dbg !2325
  br i1 %420, label %515, label %491, !dbg !2394, !llvm.loop !2458

491:                                              ; preds = %479
  call void @llvm.dbg.value(metadata i64 6, metadata !2312, metadata !DIExpression()), !dbg !2325
  %492 = getelementptr inbounds i8, ptr %429, i64 6, !dbg !2396
  %493 = load i8, ptr %492, align 1, !dbg !2396, !tbaa !1170
  %494 = zext i8 %493 to i16, !dbg !2396
  %495 = getelementptr inbounds i16, ptr %432, i64 %421, !dbg !2399
  %496 = load i16, ptr %495, align 2, !dbg !2399, !tbaa !1256
  %497 = getelementptr inbounds i16, ptr %432, i64 %422, !dbg !2401
  %498 = load i16, ptr %497, align 2, !dbg !2401, !tbaa !1256
  %499 = add i16 %496, %489, !dbg !2402
  %500 = add i16 %499, %494, !dbg !2403
  %501 = sub i16 %500, %498, !dbg !2404
  call void @llvm.dbg.value(metadata i16 %501, metadata !2321, metadata !DIExpression()), !dbg !2389
  %502 = getelementptr inbounds i16, ptr %432, i64 6, !dbg !2405
  store i16 %501, ptr %502, align 2, !dbg !2406, !tbaa !1256
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 7, metadata !2312, metadata !DIExpression()), !dbg !2325
  br i1 %423, label %515, label %503, !dbg !2394, !llvm.loop !2458

503:                                              ; preds = %491
  call void @llvm.dbg.value(metadata i64 7, metadata !2312, metadata !DIExpression()), !dbg !2325
  %504 = getelementptr inbounds i8, ptr %429, i64 7, !dbg !2396
  %505 = load i8, ptr %504, align 1, !dbg !2396, !tbaa !1170
  %506 = zext i8 %505 to i16, !dbg !2396
  %507 = getelementptr inbounds i16, ptr %432, i64 %424, !dbg !2399
  %508 = load i16, ptr %507, align 2, !dbg !2399, !tbaa !1256
  %509 = getelementptr inbounds i16, ptr %432, i64 %425, !dbg !2401
  %510 = load i16, ptr %509, align 2, !dbg !2401, !tbaa !1256
  %511 = add i16 %508, %501, !dbg !2402
  %512 = add i16 %511, %506, !dbg !2403
  %513 = sub i16 %512, %510, !dbg !2404
  call void @llvm.dbg.value(metadata i16 %513, metadata !2321, metadata !DIExpression()), !dbg !2389
  %514 = getelementptr inbounds i16, ptr %432, i64 7, !dbg !2405
  store i16 %513, ptr %514, align 2, !dbg !2406, !tbaa !1256
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 8, metadata !2312, metadata !DIExpression()), !dbg !2325
  br label %515

515:                                              ; preds = %503, %491, %479, %467, %455, %443, %426
  call void @llvm.dbg.value(metadata !DIArgList(ptr %432, i64 0, i64 %81), metadata !2320, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2389
  call void @llvm.dbg.value(metadata i64 %430, metadata !2313, metadata !DIExpression()), !dbg !2325
  %516 = icmp eq i64 %430, %380, !dbg !2383
  br i1 %516, label %532, label %426, !dbg !2384, !llvm.loop !2450

517:                                              ; preds = %398, %517
  %518 = phi i64 [ %528, %517 ], [ %399, %398 ]
  call void @llvm.dbg.value(metadata i64 %518, metadata !2313, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata !DIArgList(ptr %76, i64 %518, i32 %9), metadata !2314, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value)), !dbg !2389
  %519 = add nsw i64 %518, 1, !dbg !2390
  %520 = mul nsw i64 %519, %383, !dbg !2391
  %521 = getelementptr i16, ptr %384, i64 %520, !dbg !2392
  call void @llvm.dbg.value(metadata ptr %521, metadata !2320, metadata !DIExpression()), !dbg !2389
  store i16 0, ptr %521, align 2, !dbg !2393, !tbaa !1256
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 1, metadata !2312, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata !DIArgList(ptr %521, i64 0, i64 %81), metadata !2320, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2389
  call void @llvm.dbg.value(metadata i64 %519, metadata !2313, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %519, metadata !2313, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata !DIArgList(ptr %76, i64 %519, i32 %9), metadata !2314, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value)), !dbg !2389
  %522 = add nsw i64 %518, 2, !dbg !2390
  %523 = mul nsw i64 %522, %383, !dbg !2391
  %524 = getelementptr i16, ptr %384, i64 %523, !dbg !2392
  call void @llvm.dbg.value(metadata ptr %524, metadata !2320, metadata !DIExpression()), !dbg !2389
  store i16 0, ptr %524, align 2, !dbg !2393, !tbaa !1256
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 1, metadata !2312, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata !DIArgList(ptr %524, i64 0, i64 %81), metadata !2320, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2389
  call void @llvm.dbg.value(metadata i64 %522, metadata !2313, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %522, metadata !2313, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata !DIArgList(ptr %76, i64 %522, i32 %9), metadata !2314, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value)), !dbg !2389
  %525 = add nsw i64 %518, 3, !dbg !2390
  %526 = mul nsw i64 %525, %383, !dbg !2391
  %527 = getelementptr i16, ptr %384, i64 %526, !dbg !2392
  call void @llvm.dbg.value(metadata ptr %527, metadata !2320, metadata !DIExpression()), !dbg !2389
  store i16 0, ptr %527, align 2, !dbg !2393, !tbaa !1256
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 1, metadata !2312, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata !DIArgList(ptr %527, i64 0, i64 %81), metadata !2320, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2389
  call void @llvm.dbg.value(metadata i64 %525, metadata !2313, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %525, metadata !2313, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata !DIArgList(ptr %76, i64 %525, i32 %9), metadata !2314, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value)), !dbg !2389
  %528 = add nsw i64 %518, 4, !dbg !2390
  %529 = mul nsw i64 %528, %383, !dbg !2391
  %530 = getelementptr i16, ptr %384, i64 %529, !dbg !2392
  call void @llvm.dbg.value(metadata ptr %530, metadata !2320, metadata !DIExpression()), !dbg !2389
  store i16 0, ptr %530, align 2, !dbg !2393, !tbaa !1256
  call void @llvm.dbg.value(metadata i16 poison, metadata !2321, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 1, metadata !2312, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata !DIArgList(ptr %530, i64 0, i64 %81), metadata !2320, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2389
  call void @llvm.dbg.value(metadata i64 %528, metadata !2313, metadata !DIExpression()), !dbg !2325
  %531 = icmp eq i64 %528, %380, !dbg !2383
  br i1 %531, label %532, label %517, !dbg !2384, !llvm.loop !2450

532:                                              ; preds = %398, %517, %515, %314, %69, %55, %21
  ret void, !dbg !2461
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pixel_avg_weight_wxh(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #9 !dbg !1786 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1785, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %1, metadata !1790, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %2, metadata !1791, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %3, metadata !1792, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %4, metadata !1793, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %5, metadata !1794, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %6, metadata !1795, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %7, metadata !1796, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %8, metadata !1797, metadata !DIExpression()), !dbg !2462
  %10 = sub nsw i32 64, %8, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %10, metadata !1799, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 0, metadata !1798, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %0, metadata !1785, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %2, metadata !1791, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %4, metadata !1793, metadata !DIExpression()), !dbg !2462
  %11 = icmp sgt i32 %7, 0, !dbg !2464
  br i1 %11, label %12, label %342, !dbg !2465

12:                                               ; preds = %9
  %13 = icmp eq i32 %6, 2
  %14 = icmp eq i32 %6, 4
  %15 = icmp eq i32 %6, 8
  %16 = sext i32 %1 to i64
  %17 = sext i32 %3 to i64
  %18 = sext i32 %5 to i64
  br i1 %13, label %19, label %60, !dbg !2466

19:                                               ; preds = %12, %19
  %20 = phi ptr [ %56, %19 ], [ %0, %12 ]
  %21 = phi i32 [ %55, %19 ], [ 0, %12 ]
  %22 = phi ptr [ %57, %19 ], [ %2, %12 ]
  %23 = phi ptr [ %58, %19 ], [ %4, %12 ]
  call void @llvm.dbg.value(metadata ptr %20, metadata !1785, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %21, metadata !1798, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %22, metadata !1791, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %23, metadata !1793, metadata !DIExpression()), !dbg !2462
  %24 = load i8, ptr %22, align 1, !dbg !2467, !tbaa !1170
  %25 = zext i8 %24 to i32, !dbg !2467
  %26 = mul nsw i32 %25, %8, !dbg !2467
  %27 = load i8, ptr %23, align 1, !dbg !2467, !tbaa !1170
  %28 = zext i8 %27 to i32, !dbg !2467
  %29 = mul nsw i32 %10, %28, !dbg !2467
  %30 = add nsw i32 %29, %26, !dbg !2467
  %31 = add nsw i32 %30, 32, !dbg !2467
  %32 = lshr i32 %31, 6, !dbg !2467
  call void @llvm.dbg.value(metadata i32 %31, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2468
  %33 = icmp ult i32 %31, 16384, !dbg !2470
  %34 = icmp sgt i32 %30, 31, !dbg !2471
  %35 = sext i1 %34 to i32, !dbg !2471
  %36 = select i1 %33, i32 %32, i32 %35, !dbg !2471
  %37 = trunc i32 %36 to i8, !dbg !2471
  store i8 %37, ptr %20, align 1, !dbg !2467, !tbaa !1170
  %38 = getelementptr inbounds i8, ptr %22, i64 1, !dbg !2472
  %39 = load i8, ptr %38, align 1, !dbg !2472, !tbaa !1170
  %40 = zext i8 %39 to i32, !dbg !2472
  %41 = mul nsw i32 %40, %8, !dbg !2472
  %42 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2472
  %43 = load i8, ptr %42, align 1, !dbg !2472, !tbaa !1170
  %44 = zext i8 %43 to i32, !dbg !2472
  %45 = mul nsw i32 %10, %44, !dbg !2472
  %46 = add nsw i32 %45, %41, !dbg !2472
  %47 = add nsw i32 %46, 32, !dbg !2472
  %48 = lshr i32 %47, 6, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %47, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2473
  %49 = icmp ult i32 %47, 16384, !dbg !2475
  %50 = icmp sgt i32 %46, 31, !dbg !2476
  %51 = sext i1 %50 to i32, !dbg !2476
  %52 = select i1 %49, i32 %48, i32 %51, !dbg !2476
  %53 = trunc i32 %52 to i8, !dbg !2476
  %54 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !2472
  store i8 %53, ptr %54, align 1, !dbg !2472, !tbaa !1170
  %55 = add nuw nsw i32 %21, 1, !dbg !2477
  call void @llvm.dbg.value(metadata i32 %55, metadata !1798, metadata !DIExpression()), !dbg !2462
  %56 = getelementptr inbounds i8, ptr %20, i64 %16, !dbg !2478
  call void @llvm.dbg.value(metadata ptr %56, metadata !1785, metadata !DIExpression()), !dbg !2462
  %57 = getelementptr inbounds i8, ptr %22, i64 %17, !dbg !2479
  call void @llvm.dbg.value(metadata ptr %57, metadata !1791, metadata !DIExpression()), !dbg !2462
  %58 = getelementptr inbounds i8, ptr %23, i64 %18, !dbg !2480
  call void @llvm.dbg.value(metadata ptr %58, metadata !1793, metadata !DIExpression()), !dbg !2462
  %59 = icmp eq i32 %55, %7, !dbg !2464
  br i1 %59, label %342, label %19, !dbg !2465, !llvm.loop !2481

60:                                               ; preds = %12, %336
  %61 = phi ptr [ %338, %336 ], [ %0, %12 ]
  %62 = phi i32 [ %337, %336 ], [ 0, %12 ]
  %63 = phi ptr [ %339, %336 ], [ %2, %12 ]
  %64 = phi ptr [ %340, %336 ], [ %4, %12 ]
  call void @llvm.dbg.value(metadata ptr %61, metadata !1785, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %62, metadata !1798, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %63, metadata !1791, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %64, metadata !1793, metadata !DIExpression()), !dbg !2462
  %65 = load i8, ptr %63, align 1, !dbg !2467, !tbaa !1170
  %66 = zext i8 %65 to i32, !dbg !2467
  %67 = mul nsw i32 %66, %8, !dbg !2467
  %68 = load i8, ptr %64, align 1, !dbg !2467, !tbaa !1170
  %69 = zext i8 %68 to i32, !dbg !2467
  %70 = mul nsw i32 %10, %69, !dbg !2467
  %71 = add nsw i32 %70, %67, !dbg !2467
  %72 = add nsw i32 %71, 32, !dbg !2467
  %73 = lshr i32 %72, 6, !dbg !2467
  call void @llvm.dbg.value(metadata i32 %72, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2468
  %74 = icmp ult i32 %72, 16384, !dbg !2470
  %75 = icmp sgt i32 %71, 31, !dbg !2471
  %76 = sext i1 %75 to i32, !dbg !2471
  %77 = select i1 %74, i32 %73, i32 %76, !dbg !2471
  %78 = trunc i32 %77 to i8, !dbg !2471
  store i8 %78, ptr %61, align 1, !dbg !2467, !tbaa !1170
  %79 = getelementptr inbounds i8, ptr %63, i64 1, !dbg !2472
  %80 = load i8, ptr %79, align 1, !dbg !2472, !tbaa !1170
  %81 = zext i8 %80 to i32, !dbg !2472
  %82 = mul nsw i32 %81, %8, !dbg !2472
  %83 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !2472
  %84 = load i8, ptr %83, align 1, !dbg !2472, !tbaa !1170
  %85 = zext i8 %84 to i32, !dbg !2472
  %86 = mul nsw i32 %10, %85, !dbg !2472
  %87 = add nsw i32 %86, %82, !dbg !2472
  %88 = add nsw i32 %87, 32, !dbg !2472
  %89 = lshr i32 %88, 6, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %88, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2473
  %90 = icmp ult i32 %88, 16384, !dbg !2475
  %91 = icmp sgt i32 %87, 31, !dbg !2476
  %92 = sext i1 %91 to i32, !dbg !2476
  %93 = select i1 %90, i32 %89, i32 %92, !dbg !2476
  %94 = trunc i32 %93 to i8, !dbg !2476
  %95 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !2472
  store i8 %94, ptr %95, align 1, !dbg !2472, !tbaa !1170
  %96 = getelementptr inbounds i8, ptr %63, i64 2, !dbg !2483
  %97 = load i8, ptr %96, align 1, !dbg !2483, !tbaa !1170
  %98 = zext i8 %97 to i32, !dbg !2483
  %99 = mul nsw i32 %98, %8, !dbg !2483
  %100 = getelementptr inbounds i8, ptr %64, i64 2, !dbg !2483
  %101 = load i8, ptr %100, align 1, !dbg !2483, !tbaa !1170
  %102 = zext i8 %101 to i32, !dbg !2483
  %103 = mul nsw i32 %10, %102, !dbg !2483
  %104 = add nsw i32 %103, %99, !dbg !2483
  %105 = add nsw i32 %104, 32, !dbg !2483
  %106 = lshr i32 %105, 6, !dbg !2483
  call void @llvm.dbg.value(metadata i32 %105, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2484
  %107 = icmp ult i32 %105, 16384, !dbg !2486
  %108 = icmp sgt i32 %104, 31, !dbg !2487
  %109 = sext i1 %108 to i32, !dbg !2487
  %110 = select i1 %107, i32 %106, i32 %109, !dbg !2487
  %111 = trunc i32 %110 to i8, !dbg !2487
  %112 = getelementptr inbounds i8, ptr %61, i64 2, !dbg !2483
  store i8 %111, ptr %112, align 1, !dbg !2483, !tbaa !1170
  %113 = getelementptr inbounds i8, ptr %63, i64 3, !dbg !2488
  %114 = load i8, ptr %113, align 1, !dbg !2488, !tbaa !1170
  %115 = zext i8 %114 to i32, !dbg !2488
  %116 = mul nsw i32 %115, %8, !dbg !2488
  %117 = getelementptr inbounds i8, ptr %64, i64 3, !dbg !2488
  %118 = load i8, ptr %117, align 1, !dbg !2488, !tbaa !1170
  %119 = zext i8 %118 to i32, !dbg !2488
  %120 = mul nsw i32 %10, %119, !dbg !2488
  %121 = add nsw i32 %120, %116, !dbg !2488
  %122 = add nsw i32 %121, 32, !dbg !2488
  %123 = lshr i32 %122, 6, !dbg !2488
  call void @llvm.dbg.value(metadata i32 %122, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2489
  %124 = icmp ult i32 %122, 16384, !dbg !2491
  %125 = icmp sgt i32 %121, 31, !dbg !2492
  %126 = sext i1 %125 to i32, !dbg !2492
  %127 = select i1 %124, i32 %123, i32 %126, !dbg !2492
  %128 = trunc i32 %127 to i8, !dbg !2492
  %129 = getelementptr inbounds i8, ptr %61, i64 3, !dbg !2488
  store i8 %128, ptr %129, align 1, !dbg !2488, !tbaa !1170
  br i1 %14, label %336, label %130, !dbg !2493

130:                                              ; preds = %60
  %131 = getelementptr inbounds i8, ptr %63, i64 4, !dbg !2494
  %132 = load i8, ptr %131, align 1, !dbg !2494, !tbaa !1170
  %133 = zext i8 %132 to i32, !dbg !2494
  %134 = mul nsw i32 %133, %8, !dbg !2494
  %135 = getelementptr inbounds i8, ptr %64, i64 4, !dbg !2494
  %136 = load i8, ptr %135, align 1, !dbg !2494, !tbaa !1170
  %137 = zext i8 %136 to i32, !dbg !2494
  %138 = mul nsw i32 %10, %137, !dbg !2494
  %139 = add nsw i32 %138, %134, !dbg !2494
  %140 = add nsw i32 %139, 32, !dbg !2494
  %141 = lshr i32 %140, 6, !dbg !2494
  call void @llvm.dbg.value(metadata i32 %140, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2495
  %142 = icmp ult i32 %140, 16384, !dbg !2497
  %143 = icmp sgt i32 %139, 31, !dbg !2498
  %144 = sext i1 %143 to i32, !dbg !2498
  %145 = select i1 %142, i32 %141, i32 %144, !dbg !2498
  %146 = trunc i32 %145 to i8, !dbg !2498
  %147 = getelementptr inbounds i8, ptr %61, i64 4, !dbg !2494
  store i8 %146, ptr %147, align 1, !dbg !2494, !tbaa !1170
  %148 = getelementptr inbounds i8, ptr %63, i64 5, !dbg !2499
  %149 = load i8, ptr %148, align 1, !dbg !2499, !tbaa !1170
  %150 = zext i8 %149 to i32, !dbg !2499
  %151 = mul nsw i32 %150, %8, !dbg !2499
  %152 = getelementptr inbounds i8, ptr %64, i64 5, !dbg !2499
  %153 = load i8, ptr %152, align 1, !dbg !2499, !tbaa !1170
  %154 = zext i8 %153 to i32, !dbg !2499
  %155 = mul nsw i32 %10, %154, !dbg !2499
  %156 = add nsw i32 %155, %151, !dbg !2499
  %157 = add nsw i32 %156, 32, !dbg !2499
  %158 = lshr i32 %157, 6, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %157, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2500
  %159 = icmp ult i32 %157, 16384, !dbg !2502
  %160 = icmp sgt i32 %156, 31, !dbg !2503
  %161 = sext i1 %160 to i32, !dbg !2503
  %162 = select i1 %159, i32 %158, i32 %161, !dbg !2503
  %163 = trunc i32 %162 to i8, !dbg !2503
  %164 = getelementptr inbounds i8, ptr %61, i64 5, !dbg !2499
  store i8 %163, ptr %164, align 1, !dbg !2499, !tbaa !1170
  %165 = getelementptr inbounds i8, ptr %63, i64 6, !dbg !2504
  %166 = load i8, ptr %165, align 1, !dbg !2504, !tbaa !1170
  %167 = zext i8 %166 to i32, !dbg !2504
  %168 = mul nsw i32 %167, %8, !dbg !2504
  %169 = getelementptr inbounds i8, ptr %64, i64 6, !dbg !2504
  %170 = load i8, ptr %169, align 1, !dbg !2504, !tbaa !1170
  %171 = zext i8 %170 to i32, !dbg !2504
  %172 = mul nsw i32 %10, %171, !dbg !2504
  %173 = add nsw i32 %172, %168, !dbg !2504
  %174 = add nsw i32 %173, 32, !dbg !2504
  %175 = lshr i32 %174, 6, !dbg !2504
  call void @llvm.dbg.value(metadata i32 %174, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2505
  %176 = icmp ult i32 %174, 16384, !dbg !2507
  %177 = icmp sgt i32 %173, 31, !dbg !2508
  %178 = sext i1 %177 to i32, !dbg !2508
  %179 = select i1 %176, i32 %175, i32 %178, !dbg !2508
  %180 = trunc i32 %179 to i8, !dbg !2508
  %181 = getelementptr inbounds i8, ptr %61, i64 6, !dbg !2504
  store i8 %180, ptr %181, align 1, !dbg !2504, !tbaa !1170
  %182 = getelementptr inbounds i8, ptr %63, i64 7, !dbg !2509
  %183 = load i8, ptr %182, align 1, !dbg !2509, !tbaa !1170
  %184 = zext i8 %183 to i32, !dbg !2509
  %185 = mul nsw i32 %184, %8, !dbg !2509
  %186 = getelementptr inbounds i8, ptr %64, i64 7, !dbg !2509
  %187 = load i8, ptr %186, align 1, !dbg !2509, !tbaa !1170
  %188 = zext i8 %187 to i32, !dbg !2509
  %189 = mul nsw i32 %10, %188, !dbg !2509
  %190 = add nsw i32 %189, %185, !dbg !2509
  %191 = add nsw i32 %190, 32, !dbg !2509
  %192 = lshr i32 %191, 6, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %191, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2510
  %193 = icmp ult i32 %191, 16384, !dbg !2512
  %194 = icmp sgt i32 %190, 31, !dbg !2513
  %195 = sext i1 %194 to i32, !dbg !2513
  %196 = select i1 %193, i32 %192, i32 %195, !dbg !2513
  %197 = trunc i32 %196 to i8, !dbg !2513
  %198 = getelementptr inbounds i8, ptr %61, i64 7, !dbg !2509
  store i8 %197, ptr %198, align 1, !dbg !2509, !tbaa !1170
  br i1 %15, label %336, label %199, !dbg !2514

199:                                              ; preds = %130
  %200 = getelementptr inbounds i8, ptr %63, i64 8, !dbg !2515
  %201 = load i8, ptr %200, align 1, !dbg !2515, !tbaa !1170
  %202 = zext i8 %201 to i32, !dbg !2515
  %203 = mul nsw i32 %202, %8, !dbg !2515
  %204 = getelementptr inbounds i8, ptr %64, i64 8, !dbg !2515
  %205 = load i8, ptr %204, align 1, !dbg !2515, !tbaa !1170
  %206 = zext i8 %205 to i32, !dbg !2515
  %207 = mul nsw i32 %10, %206, !dbg !2515
  %208 = add nsw i32 %207, %203, !dbg !2515
  %209 = add nsw i32 %208, 32, !dbg !2515
  %210 = lshr i32 %209, 6, !dbg !2515
  call void @llvm.dbg.value(metadata i32 %209, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2516
  %211 = icmp ult i32 %209, 16384, !dbg !2518
  %212 = icmp sgt i32 %208, 31, !dbg !2519
  %213 = sext i1 %212 to i32, !dbg !2519
  %214 = select i1 %211, i32 %210, i32 %213, !dbg !2519
  %215 = trunc i32 %214 to i8, !dbg !2519
  %216 = getelementptr inbounds i8, ptr %61, i64 8, !dbg !2515
  store i8 %215, ptr %216, align 1, !dbg !2515, !tbaa !1170
  %217 = getelementptr inbounds i8, ptr %63, i64 9, !dbg !2520
  %218 = load i8, ptr %217, align 1, !dbg !2520, !tbaa !1170
  %219 = zext i8 %218 to i32, !dbg !2520
  %220 = mul nsw i32 %219, %8, !dbg !2520
  %221 = getelementptr inbounds i8, ptr %64, i64 9, !dbg !2520
  %222 = load i8, ptr %221, align 1, !dbg !2520, !tbaa !1170
  %223 = zext i8 %222 to i32, !dbg !2520
  %224 = mul nsw i32 %10, %223, !dbg !2520
  %225 = add nsw i32 %224, %220, !dbg !2520
  %226 = add nsw i32 %225, 32, !dbg !2520
  %227 = lshr i32 %226, 6, !dbg !2520
  call void @llvm.dbg.value(metadata i32 %226, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2521
  %228 = icmp ult i32 %226, 16384, !dbg !2523
  %229 = icmp sgt i32 %225, 31, !dbg !2524
  %230 = sext i1 %229 to i32, !dbg !2524
  %231 = select i1 %228, i32 %227, i32 %230, !dbg !2524
  %232 = trunc i32 %231 to i8, !dbg !2524
  %233 = getelementptr inbounds i8, ptr %61, i64 9, !dbg !2520
  store i8 %232, ptr %233, align 1, !dbg !2520, !tbaa !1170
  %234 = getelementptr inbounds i8, ptr %63, i64 10, !dbg !2525
  %235 = load i8, ptr %234, align 1, !dbg !2525, !tbaa !1170
  %236 = zext i8 %235 to i32, !dbg !2525
  %237 = mul nsw i32 %236, %8, !dbg !2525
  %238 = getelementptr inbounds i8, ptr %64, i64 10, !dbg !2525
  %239 = load i8, ptr %238, align 1, !dbg !2525, !tbaa !1170
  %240 = zext i8 %239 to i32, !dbg !2525
  %241 = mul nsw i32 %10, %240, !dbg !2525
  %242 = add nsw i32 %241, %237, !dbg !2525
  %243 = add nsw i32 %242, 32, !dbg !2525
  %244 = lshr i32 %243, 6, !dbg !2525
  call void @llvm.dbg.value(metadata i32 %243, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2526
  %245 = icmp ult i32 %243, 16384, !dbg !2528
  %246 = icmp sgt i32 %242, 31, !dbg !2529
  %247 = sext i1 %246 to i32, !dbg !2529
  %248 = select i1 %245, i32 %244, i32 %247, !dbg !2529
  %249 = trunc i32 %248 to i8, !dbg !2529
  %250 = getelementptr inbounds i8, ptr %61, i64 10, !dbg !2525
  store i8 %249, ptr %250, align 1, !dbg !2525, !tbaa !1170
  %251 = getelementptr inbounds i8, ptr %63, i64 11, !dbg !2530
  %252 = load i8, ptr %251, align 1, !dbg !2530, !tbaa !1170
  %253 = zext i8 %252 to i32, !dbg !2530
  %254 = mul nsw i32 %253, %8, !dbg !2530
  %255 = getelementptr inbounds i8, ptr %64, i64 11, !dbg !2530
  %256 = load i8, ptr %255, align 1, !dbg !2530, !tbaa !1170
  %257 = zext i8 %256 to i32, !dbg !2530
  %258 = mul nsw i32 %10, %257, !dbg !2530
  %259 = add nsw i32 %258, %254, !dbg !2530
  %260 = add nsw i32 %259, 32, !dbg !2530
  %261 = lshr i32 %260, 6, !dbg !2530
  call void @llvm.dbg.value(metadata i32 %260, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2531
  %262 = icmp ult i32 %260, 16384, !dbg !2533
  %263 = icmp sgt i32 %259, 31, !dbg !2534
  %264 = sext i1 %263 to i32, !dbg !2534
  %265 = select i1 %262, i32 %261, i32 %264, !dbg !2534
  %266 = trunc i32 %265 to i8, !dbg !2534
  %267 = getelementptr inbounds i8, ptr %61, i64 11, !dbg !2530
  store i8 %266, ptr %267, align 1, !dbg !2530, !tbaa !1170
  %268 = getelementptr inbounds i8, ptr %63, i64 12, !dbg !2535
  %269 = load i8, ptr %268, align 1, !dbg !2535, !tbaa !1170
  %270 = zext i8 %269 to i32, !dbg !2535
  %271 = mul nsw i32 %270, %8, !dbg !2535
  %272 = getelementptr inbounds i8, ptr %64, i64 12, !dbg !2535
  %273 = load i8, ptr %272, align 1, !dbg !2535, !tbaa !1170
  %274 = zext i8 %273 to i32, !dbg !2535
  %275 = mul nsw i32 %10, %274, !dbg !2535
  %276 = add nsw i32 %275, %271, !dbg !2535
  %277 = add nsw i32 %276, 32, !dbg !2535
  %278 = lshr i32 %277, 6, !dbg !2535
  call void @llvm.dbg.value(metadata i32 %277, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2536
  %279 = icmp ult i32 %277, 16384, !dbg !2538
  %280 = icmp sgt i32 %276, 31, !dbg !2539
  %281 = sext i1 %280 to i32, !dbg !2539
  %282 = select i1 %279, i32 %278, i32 %281, !dbg !2539
  %283 = trunc i32 %282 to i8, !dbg !2539
  %284 = getelementptr inbounds i8, ptr %61, i64 12, !dbg !2535
  store i8 %283, ptr %284, align 1, !dbg !2535, !tbaa !1170
  %285 = getelementptr inbounds i8, ptr %63, i64 13, !dbg !2540
  %286 = load i8, ptr %285, align 1, !dbg !2540, !tbaa !1170
  %287 = zext i8 %286 to i32, !dbg !2540
  %288 = mul nsw i32 %287, %8, !dbg !2540
  %289 = getelementptr inbounds i8, ptr %64, i64 13, !dbg !2540
  %290 = load i8, ptr %289, align 1, !dbg !2540, !tbaa !1170
  %291 = zext i8 %290 to i32, !dbg !2540
  %292 = mul nsw i32 %10, %291, !dbg !2540
  %293 = add nsw i32 %292, %288, !dbg !2540
  %294 = add nsw i32 %293, 32, !dbg !2540
  %295 = lshr i32 %294, 6, !dbg !2540
  call void @llvm.dbg.value(metadata i32 %294, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2541
  %296 = icmp ult i32 %294, 16384, !dbg !2543
  %297 = icmp sgt i32 %293, 31, !dbg !2544
  %298 = sext i1 %297 to i32, !dbg !2544
  %299 = select i1 %296, i32 %295, i32 %298, !dbg !2544
  %300 = trunc i32 %299 to i8, !dbg !2544
  %301 = getelementptr inbounds i8, ptr %61, i64 13, !dbg !2540
  store i8 %300, ptr %301, align 1, !dbg !2540, !tbaa !1170
  %302 = getelementptr inbounds i8, ptr %63, i64 14, !dbg !2545
  %303 = load i8, ptr %302, align 1, !dbg !2545, !tbaa !1170
  %304 = zext i8 %303 to i32, !dbg !2545
  %305 = mul nsw i32 %304, %8, !dbg !2545
  %306 = getelementptr inbounds i8, ptr %64, i64 14, !dbg !2545
  %307 = load i8, ptr %306, align 1, !dbg !2545, !tbaa !1170
  %308 = zext i8 %307 to i32, !dbg !2545
  %309 = mul nsw i32 %10, %308, !dbg !2545
  %310 = add nsw i32 %309, %305, !dbg !2545
  %311 = add nsw i32 %310, 32, !dbg !2545
  %312 = lshr i32 %311, 6, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %311, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2546
  %313 = icmp ult i32 %311, 16384, !dbg !2548
  %314 = icmp sgt i32 %310, 31, !dbg !2549
  %315 = sext i1 %314 to i32, !dbg !2549
  %316 = select i1 %313, i32 %312, i32 %315, !dbg !2549
  %317 = trunc i32 %316 to i8, !dbg !2549
  %318 = getelementptr inbounds i8, ptr %61, i64 14, !dbg !2545
  store i8 %317, ptr %318, align 1, !dbg !2545, !tbaa !1170
  %319 = getelementptr inbounds i8, ptr %63, i64 15, !dbg !2550
  %320 = load i8, ptr %319, align 1, !dbg !2550, !tbaa !1170
  %321 = zext i8 %320 to i32, !dbg !2550
  %322 = mul nsw i32 %321, %8, !dbg !2550
  %323 = getelementptr inbounds i8, ptr %64, i64 15, !dbg !2550
  %324 = load i8, ptr %323, align 1, !dbg !2550, !tbaa !1170
  %325 = zext i8 %324 to i32, !dbg !2550
  %326 = mul nsw i32 %10, %325, !dbg !2550
  %327 = add nsw i32 %326, %322, !dbg !2550
  %328 = add nsw i32 %327, 32, !dbg !2550
  %329 = lshr i32 %328, 6, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %328, metadata !1807, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shra, DW_OP_stack_value)), !dbg !2551
  %330 = icmp ult i32 %328, 16384, !dbg !2553
  %331 = icmp sgt i32 %327, 31, !dbg !2554
  %332 = sext i1 %331 to i32, !dbg !2554
  %333 = select i1 %330, i32 %329, i32 %332, !dbg !2554
  %334 = trunc i32 %333 to i8, !dbg !2554
  %335 = getelementptr inbounds i8, ptr %61, i64 15, !dbg !2550
  store i8 %334, ptr %335, align 1, !dbg !2550, !tbaa !1170
  br label %336, !dbg !2555

336:                                              ; preds = %130, %60, %199
  %337 = add nuw nsw i32 %62, 1, !dbg !2477
  call void @llvm.dbg.value(metadata i32 %337, metadata !1798, metadata !DIExpression()), !dbg !2462
  %338 = getelementptr inbounds i8, ptr %61, i64 %16, !dbg !2478
  call void @llvm.dbg.value(metadata ptr %338, metadata !1785, metadata !DIExpression()), !dbg !2462
  %339 = getelementptr inbounds i8, ptr %63, i64 %17, !dbg !2479
  call void @llvm.dbg.value(metadata ptr %339, metadata !1791, metadata !DIExpression()), !dbg !2462
  %340 = getelementptr inbounds i8, ptr %64, i64 %18, !dbg !2480
  call void @llvm.dbg.value(metadata ptr %340, metadata !1793, metadata !DIExpression()), !dbg !2462
  %341 = icmp eq i32 %337, %7, !dbg !2464
  br i1 %341, label %342, label %60, !dbg !2465, !llvm.loop !2481

342:                                              ; preds = %336, %19, %9
  ret void, !dbg !2556
}

declare !dbg !2557 ptr @x264_malloc(i32 noundef) local_unnamed_addr #1

declare !dbg !2560 void @x264_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(argmem: write) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hpel_ref0", scope: !2, file: !3, line: 159, type: !22, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "common/mc.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "6b9c30633eec71220e2b0c2a6d9eaf33")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 30, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "common/pixel.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "aba138e44f0e52bc0158be0d182b79c1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "PIXEL_16x16", value: 0)
!10 = !DIEnumerator(name: "PIXEL_16x8", value: 1)
!11 = !DIEnumerator(name: "PIXEL_8x16", value: 2)
!12 = !DIEnumerator(name: "PIXEL_8x8", value: 3)
!13 = !DIEnumerator(name: "PIXEL_8x4", value: 4)
!14 = !DIEnumerator(name: "PIXEL_4x8", value: 5)
!15 = !DIEnumerator(name: "PIXEL_4x4", value: 6)
!16 = !DIEnumerator(name: "PIXEL_4x2", value: 7)
!17 = !DIEnumerator(name: "PIXEL_2x4", value: 8)
!18 = !DIEnumerator(name: "PIXEL_2x2", value: 9)
!19 = !{!0, !20}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "hpel_ref1", scope: !2, file: !3, line: 160, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !25)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !{!26}
!26 = !DISubrange(count: 16)
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"clang version 16.0.0"}
!34 = distinct !DISubprogram(name: "x264_frame_init_lowres", scope: !3, file: !3, line: 272, type: !35, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1138)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !456}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !39, line: 42, baseType: !40)
!39 = !DIFile(filename: "./x264.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "9fe19a6136ab7ddd44a70d62bce62365")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !41, line: 250, size: 206080, elements: !42)
!41 = !DIFile(filename: "common/common.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "4880b62cc871dca4002788746fbccb70")
!42 = !{!43, !194, !198, !202, !203, !204, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !318, !320, !348, !350, !351, !358, !363, !367, !371, !378, !382, !383, !384, !385, !390, !392, !394, !434, !451, !615, !616, !617, !618, !622, !623, !624, !625, !640, !793, !797, !852, !861, !862, !870, !872, !943, !1003, !1055, !1076, !1118}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !40, file: !41, line: 253, baseType: !44, size: 4928)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !39, line: 295, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !39, line: 151, size: 4928, elements: !46)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !88, !95, !96, !97, !98, !102, !103, !118, !119, !120, !121, !122, !152, !191, !192, !193}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !45, file: !39, line: 154, baseType: !7, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !45, file: !39, line: 155, baseType: !24, size: 32, offset: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !45, file: !39, line: 156, baseType: !24, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !45, file: !39, line: 159, baseType: !24, size: 32, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !45, file: !39, line: 160, baseType: !24, size: 32, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !45, file: !39, line: 161, baseType: !24, size: 32, offset: 160)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !45, file: !39, line: 162, baseType: !24, size: 32, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !45, file: !39, line: 163, baseType: !24, size: 32, offset: 224)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !45, file: !39, line: 180, baseType: !56, size: 288, offset: 256)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !45, file: !39, line: 165, size: 288, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !56, file: !39, line: 168, baseType: !24, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !56, file: !39, line: 169, baseType: !24, size: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !56, file: !39, line: 171, baseType: !24, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !56, file: !39, line: 174, baseType: !24, size: 32, offset: 96)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !56, file: !39, line: 175, baseType: !24, size: 32, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !56, file: !39, line: 176, baseType: !24, size: 32, offset: 160)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !56, file: !39, line: 177, baseType: !24, size: 32, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !56, file: !39, line: 178, baseType: !24, size: 32, offset: 224)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !56, file: !39, line: 179, baseType: !24, size: 32, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !45, file: !39, line: 182, baseType: !24, size: 32, offset: 544)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !45, file: !39, line: 183, baseType: !24, size: 32, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !45, file: !39, line: 186, baseType: !24, size: 32, offset: 608)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !45, file: !39, line: 187, baseType: !24, size: 32, offset: 640)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !45, file: !39, line: 188, baseType: !24, size: 32, offset: 672)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !45, file: !39, line: 189, baseType: !24, size: 32, offset: 704)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "b_pre_scenecut", scope: !45, file: !39, line: 190, baseType: !24, size: 32, offset: 736)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !45, file: !39, line: 191, baseType: !24, size: 32, offset: 768)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !45, file: !39, line: 192, baseType: !24, size: 32, offset: 800)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !45, file: !39, line: 193, baseType: !24, size: 32, offset: 832)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "b_bframe_pyramid", scope: !45, file: !39, line: 194, baseType: !24, size: 32, offset: 864)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !45, file: !39, line: 196, baseType: !24, size: 32, offset: 896)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !45, file: !39, line: 197, baseType: !24, size: 32, offset: 928)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !45, file: !39, line: 198, baseType: !24, size: 32, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !45, file: !39, line: 200, baseType: !24, size: 32, offset: 992)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !45, file: !39, line: 201, baseType: !24, size: 32, offset: 1024)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !45, file: !39, line: 203, baseType: !24, size: 32, offset: 1056)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !45, file: !39, line: 205, baseType: !24, size: 32, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !45, file: !39, line: 206, baseType: !86, size: 64, offset: 1152)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !45, file: !39, line: 207, baseType: !89, size: 128, offset: 1216)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !25)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !91, line: 24, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !93, line: 38, baseType: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!94 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !45, file: !39, line: 208, baseType: !89, size: 128, offset: 1344)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !45, file: !39, line: 209, baseType: !89, size: 128, offset: 1472)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !45, file: !39, line: 210, baseType: !89, size: 128, offset: 1600)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !45, file: !39, line: 211, baseType: !99, size: 512, offset: 1728)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 512, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !45, file: !39, line: 212, baseType: !99, size: 512, offset: 2240)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !45, file: !39, line: 215, baseType: !104, size: 64, offset: 2752)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107, !24, !108, !110}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !112)
!112 = !{!113, !115, !116, !117}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !111, file: !114, baseType: !7, size: 32)
!114 = !DIFile(filename: "common/mc.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src")
!115 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !111, file: !114, baseType: !7, size: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !111, file: !114, baseType: !107, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !111, file: !114, baseType: !107, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !45, file: !39, line: 216, baseType: !107, size: 64, offset: 2816)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !45, file: !39, line: 217, baseType: !24, size: 32, offset: 2880)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !45, file: !39, line: 218, baseType: !24, size: 32, offset: 2912)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !45, file: !39, line: 219, baseType: !86, size: 64, offset: 2944)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !45, file: !39, line: 252, baseType: !123, size: 768, offset: 3008)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !45, file: !39, line: 222, size: 768, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !145, !146, !150, !151}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !123, file: !39, line: 224, baseType: !7, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !123, file: !39, line: 225, baseType: !7, size: 32, offset: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !123, file: !39, line: 227, baseType: !24, size: 32, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !123, file: !39, line: 228, baseType: !24, size: 32, offset: 96)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !123, file: !39, line: 229, baseType: !24, size: 32, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_8x8_inference", scope: !123, file: !39, line: 230, baseType: !24, size: 32, offset: 160)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !123, file: !39, line: 231, baseType: !24, size: 32, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !123, file: !39, line: 233, baseType: !24, size: 32, offset: 224)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !123, file: !39, line: 234, baseType: !24, size: 32, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !123, file: !39, line: 235, baseType: !24, size: 32, offset: 288)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !123, file: !39, line: 236, baseType: !24, size: 32, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !123, file: !39, line: 237, baseType: !24, size: 32, offset: 352)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !123, file: !39, line: 238, baseType: !24, size: 32, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !123, file: !39, line: 239, baseType: !24, size: 32, offset: 416)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !123, file: !39, line: 240, baseType: !24, size: 32, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !123, file: !39, line: 241, baseType: !24, size: 32, offset: 480)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !123, file: !39, line: 242, baseType: !24, size: 32, offset: 512)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !123, file: !39, line: 243, baseType: !24, size: 32, offset: 544)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !123, file: !39, line: 244, baseType: !144, size: 32, offset: 576)
!144 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !123, file: !39, line: 245, baseType: !144, size: 32, offset: 608)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !123, file: !39, line: 248, baseType: !147, size: 64, offset: 640)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 2)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !123, file: !39, line: 250, baseType: !24, size: 32, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !123, file: !39, line: 251, baseType: !24, size: 32, offset: 736)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !45, file: !39, line: 289, baseType: !153, size: 1024, offset: 3776)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !45, file: !39, line: 255, size: 1024, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !189, !190}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !153, file: !39, line: 257, baseType: !24, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !153, file: !39, line: 259, baseType: !24, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !153, file: !39, line: 260, baseType: !24, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !153, file: !39, line: 261, baseType: !24, size: 32, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !153, file: !39, line: 262, baseType: !24, size: 32, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !153, file: !39, line: 264, baseType: !24, size: 32, offset: 160)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !153, file: !39, line: 265, baseType: !144, size: 32, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !153, file: !39, line: 266, baseType: !144, size: 32, offset: 224)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !153, file: !39, line: 267, baseType: !24, size: 32, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !153, file: !39, line: 268, baseType: !24, size: 32, offset: 288)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !153, file: !39, line: 269, baseType: !144, size: 32, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !153, file: !39, line: 270, baseType: !144, size: 32, offset: 352)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !153, file: !39, line: 271, baseType: !144, size: 32, offset: 384)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !153, file: !39, line: 273, baseType: !24, size: 32, offset: 416)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !153, file: !39, line: 274, baseType: !144, size: 32, offset: 448)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !153, file: !39, line: 277, baseType: !24, size: 32, offset: 480)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !153, file: !39, line: 278, baseType: !86, size: 64, offset: 512)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !153, file: !39, line: 279, baseType: !24, size: 32, offset: 576)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !153, file: !39, line: 280, baseType: !86, size: 64, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !153, file: !39, line: 283, baseType: !144, size: 32, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !153, file: !39, line: 284, baseType: !144, size: 32, offset: 736)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !153, file: !39, line: 285, baseType: !144, size: 32, offset: 768)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !153, file: !39, line: 286, baseType: !178, size: 64, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !39, line: 149, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 142, size: 256, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !180, file: !39, line: 144, baseType: !24, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !180, file: !39, line: 144, baseType: !24, size: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !180, file: !39, line: 145, baseType: !24, size: 32, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !180, file: !39, line: 146, baseType: !24, size: 32, offset: 96)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !180, file: !39, line: 147, baseType: !144, size: 32, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !180, file: !39, line: 148, baseType: !188, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !153, file: !39, line: 287, baseType: !24, size: 32, offset: 896)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !153, file: !39, line: 288, baseType: !86, size: 64, offset: 960)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !45, file: !39, line: 292, baseType: !24, size: 32, offset: 4800)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !45, file: !39, line: 293, baseType: !24, size: 32, offset: 4832)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !45, file: !39, line: 294, baseType: !24, size: 32, offset: 4864)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !40, file: !41, line: 255, baseType: !195, size: 8192, offset: 4928)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8192, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !40, file: !41, line: 256, baseType: !199, size: 64, offset: 13120)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !200, line: 27, baseType: !201)
!200 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!201 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !40, file: !41, line: 257, baseType: !24, size: 32, offset: 13184)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !40, file: !41, line: 258, baseType: !24, size: 32, offset: 13216)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !40, file: !41, line: 269, baseType: !205, size: 2112, offset: 13248)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !40, file: !41, line: 261, size: 2112, elements: !206)
!206 = !{!207, !208, !220, !221, !222, !236}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !205, file: !41, line: 263, baseType: !24, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !205, file: !41, line: 264, baseType: !209, size: 1536, offset: 64)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 1536, elements: !218)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !39, line: 399, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 391, size: 192, elements: !212)
!212 = !{!213, !214, !215, !216}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !211, file: !39, line: 393, baseType: !24, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !211, file: !39, line: 394, baseType: !24, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !211, file: !39, line: 397, baseType: !24, size: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !211, file: !39, line: 398, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!218 = !{!219}
!219 = !DISubrange(count: 8)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !205, file: !41, line: 265, baseType: !24, size: 32, offset: 1600)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !205, file: !41, line: 266, baseType: !217, size: 64, offset: 1664)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !205, file: !41, line: 267, baseType: !223, size: 320, offset: 1728)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !224, line: 49, baseType: !225)
!224 = !DIFile(filename: "common/bs.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "2f46b0964798cffcc7898517b4d9922e")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !224, line: 40, size: 320, elements: !226)
!226 = !{!227, !228, !229, !230, !234, !235}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !225, file: !224, line: 42, baseType: !217, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !225, file: !224, line: 43, baseType: !217, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !225, file: !224, line: 44, baseType: !217, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !225, file: !224, line: 46, baseType: !231, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !232, line: 87, baseType: !233)
!232 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!233 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !225, file: !224, line: 47, baseType: !24, size: 32, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !225, file: !224, line: 48, baseType: !24, size: 32, offset: 288)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !205, file: !41, line: 268, baseType: !24, size: 32, offset: 2048)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !40, file: !41, line: 274, baseType: !24, size: 32, offset: 15360)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_offset", scope: !40, file: !41, line: 276, baseType: !24, size: 32, offset: 15392)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !40, file: !41, line: 277, baseType: !24, size: 32, offset: 15424)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_msb", scope: !40, file: !41, line: 278, baseType: !24, size: 32, offset: 15456)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !40, file: !41, line: 279, baseType: !24, size: 32, offset: 15488)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !40, file: !41, line: 280, baseType: !24, size: 32, offset: 15520)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_num", scope: !40, file: !41, line: 282, baseType: !24, size: 32, offset: 15552)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !40, file: !41, line: 283, baseType: !24, size: 32, offset: 15584)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !40, file: !41, line: 284, baseType: !24, size: 32, offset: 15616)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !40, file: !41, line: 287, baseType: !247, size: 9920, offset: 15648)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 9920, elements: !316)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !249, line: 133, baseType: !250)
!249 = !DIFile(filename: "common/set.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "06164d1fd824dd844d17e97dd39e9ac3")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 52, size: 9920, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !269, !270, !271, !272, !273, !274, !275, !276, !277, !284, !285, !315}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !250, file: !249, line: 54, baseType: !24, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !250, file: !249, line: 56, baseType: !24, size: 32, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !250, file: !249, line: 57, baseType: !24, size: 32, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !250, file: !249, line: 59, baseType: !24, size: 32, offset: 96)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !250, file: !249, line: 60, baseType: !24, size: 32, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !250, file: !249, line: 61, baseType: !24, size: 32, offset: 160)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !250, file: !249, line: 63, baseType: !24, size: 32, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !250, file: !249, line: 65, baseType: !24, size: 32, offset: 224)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !250, file: !249, line: 67, baseType: !24, size: 32, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !250, file: !249, line: 69, baseType: !24, size: 32, offset: 288)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !250, file: !249, line: 70, baseType: !24, size: 32, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !250, file: !249, line: 71, baseType: !24, size: 32, offset: 352)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !250, file: !249, line: 72, baseType: !24, size: 32, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !250, file: !249, line: 73, baseType: !266, size: 8192, offset: 416)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8192, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !250, file: !249, line: 75, baseType: !24, size: 32, offset: 8608)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !250, file: !249, line: 76, baseType: !24, size: 32, offset: 8640)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !250, file: !249, line: 77, baseType: !24, size: 32, offset: 8672)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !250, file: !249, line: 78, baseType: !24, size: 32, offset: 8704)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !250, file: !249, line: 79, baseType: !24, size: 32, offset: 8736)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !250, file: !249, line: 80, baseType: !24, size: 32, offset: 8768)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !250, file: !249, line: 81, baseType: !24, size: 32, offset: 8800)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !250, file: !249, line: 83, baseType: !24, size: 32, offset: 8832)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !250, file: !249, line: 90, baseType: !278, size: 128, offset: 8864)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !250, file: !249, line: 84, size: 128, elements: !279)
!279 = !{!280, !281, !282, !283}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !278, file: !249, line: 86, baseType: !24, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !278, file: !249, line: 87, baseType: !24, size: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !278, file: !249, line: 88, baseType: !24, size: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !278, file: !249, line: 89, baseType: !24, size: 32, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !250, file: !249, line: 92, baseType: !24, size: 32, offset: 8992)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !250, file: !249, line: 129, baseType: !286, size: 864, offset: 9024)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !250, file: !249, line: 93, size: 864, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !286, file: !249, line: 95, baseType: !24, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !286, file: !249, line: 96, baseType: !24, size: 32, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !286, file: !249, line: 97, baseType: !24, size: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !286, file: !249, line: 99, baseType: !24, size: 32, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !286, file: !249, line: 100, baseType: !24, size: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !286, file: !249, line: 102, baseType: !24, size: 32, offset: 160)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !286, file: !249, line: 103, baseType: !24, size: 32, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !286, file: !249, line: 104, baseType: !24, size: 32, offset: 224)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !286, file: !249, line: 105, baseType: !24, size: 32, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !286, file: !249, line: 106, baseType: !24, size: 32, offset: 288)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !286, file: !249, line: 107, baseType: !24, size: 32, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !286, file: !249, line: 108, baseType: !24, size: 32, offset: 352)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !286, file: !249, line: 110, baseType: !24, size: 32, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !286, file: !249, line: 111, baseType: !24, size: 32, offset: 416)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !286, file: !249, line: 112, baseType: !24, size: 32, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !286, file: !249, line: 114, baseType: !24, size: 32, offset: 480)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !286, file: !249, line: 115, baseType: !24, size: 32, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !286, file: !249, line: 116, baseType: !24, size: 32, offset: 544)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !286, file: !249, line: 117, baseType: !24, size: 32, offset: 576)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !286, file: !249, line: 119, baseType: !24, size: 32, offset: 608)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !286, file: !249, line: 120, baseType: !24, size: 32, offset: 640)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !286, file: !249, line: 121, baseType: !24, size: 32, offset: 672)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !286, file: !249, line: 122, baseType: !24, size: 32, offset: 704)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !286, file: !249, line: 123, baseType: !24, size: 32, offset: 736)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !286, file: !249, line: 124, baseType: !24, size: 32, offset: 768)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !286, file: !249, line: 125, baseType: !24, size: 32, offset: 800)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !286, file: !249, line: 126, baseType: !24, size: 32, offset: 832)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !250, file: !249, line: 131, baseType: !24, size: 32, offset: 9888)
!316 = !{!317}
!317 = !DISubrange(count: 1)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !40, file: !41, line: 288, baseType: !319, size: 64, offset: 25600)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !40, file: !41, line: 289, baseType: !321, size: 960, offset: 25664)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 960, elements: !316)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !249, line: 165, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 135, size: 960, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !323, file: !249, line: 137, baseType: !24, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !323, file: !249, line: 138, baseType: !24, size: 32, offset: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !323, file: !249, line: 140, baseType: !24, size: 32, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !323, file: !249, line: 142, baseType: !24, size: 32, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !323, file: !249, line: 143, baseType: !24, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !323, file: !249, line: 145, baseType: !24, size: 32, offset: 160)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !323, file: !249, line: 146, baseType: !24, size: 32, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !323, file: !249, line: 148, baseType: !24, size: 32, offset: 224)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !323, file: !249, line: 149, baseType: !24, size: 32, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !323, file: !249, line: 151, baseType: !24, size: 32, offset: 288)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !323, file: !249, line: 152, baseType: !24, size: 32, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !323, file: !249, line: 154, baseType: !24, size: 32, offset: 352)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !323, file: !249, line: 156, baseType: !24, size: 32, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !323, file: !249, line: 157, baseType: !24, size: 32, offset: 416)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !323, file: !249, line: 158, baseType: !24, size: 32, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !323, file: !249, line: 160, baseType: !24, size: 32, offset: 480)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !323, file: !249, line: 162, baseType: !24, size: 32, offset: 512)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !323, file: !249, line: 163, baseType: !343, size: 384, offset: 576)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 384, elements: !346)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!346 = !{!347}
!347 = !DISubrange(count: 6)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !40, file: !41, line: 290, baseType: !349, size: 64, offset: 26624)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !40, file: !41, line: 291, baseType: !24, size: 32, offset: 26688)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !40, file: !41, line: 294, baseType: !352, size: 256, offset: 26752)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 256, elements: !357)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 512, elements: !355)
!355 = !{!356, !356}
!356 = !DISubrange(count: 4)
!357 = !{!356}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !40, file: !41, line: 295, baseType: !359, size: 128, offset: 27008)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 128, elements: !148)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, elements: !362)
!362 = !{!219, !219}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !40, file: !41, line: 297, baseType: !364, size: 256, offset: 27136)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 256, elements: !357)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 512, elements: !25)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !40, file: !41, line: 298, baseType: !368, size: 128, offset: 27392)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 128, elements: !148)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, elements: !100)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !40, file: !41, line: 300, baseType: !372, size: 256, offset: 27520)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 256, elements: !357)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 256, elements: !25)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 25, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !93, line: 40, baseType: !377)
!377 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !40, file: !41, line: 301, baseType: !379, size: 128, offset: 27776)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 128, elements: !148)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 1024, elements: !100)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !40, file: !41, line: 302, baseType: !372, size: 256, offset: 27904)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !40, file: !41, line: 303, baseType: !379, size: 128, offset: 28160)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !40, file: !41, line: 305, baseType: !344, size: 64, offset: 28288)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !40, file: !41, line: 307, baseType: !386, size: 4096, align: 128, offset: 28416)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 4096, elements: !389)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !91, line: 26, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !93, line: 42, baseType: !7)
!389 = !{!149, !101}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !40, file: !41, line: 308, baseType: !391, size: 2048, align: 128, offset: 32512)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 2048, elements: !389)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !40, file: !41, line: 309, baseType: !393, size: 64, offset: 34560)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 64, elements: !148)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !40, file: !41, line: 312, baseType: !395, size: 3072, offset: 34624)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !41, line: 209, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 159, size: 3072, elements: !397)
!397 = !{!398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !426, !427, !428, !429, !430, !431, !432, !433}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !396, file: !41, line: 161, baseType: !319, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !396, file: !41, line: 162, baseType: !349, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !396, file: !41, line: 164, baseType: !24, size: 32, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !396, file: !41, line: 165, baseType: !24, size: 32, offset: 160)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !396, file: !41, line: 166, baseType: !24, size: 32, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !396, file: !41, line: 168, baseType: !24, size: 32, offset: 224)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !396, file: !41, line: 170, baseType: !24, size: 32, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !396, file: !41, line: 172, baseType: !24, size: 32, offset: 288)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !396, file: !41, line: 173, baseType: !24, size: 32, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !396, file: !41, line: 174, baseType: !24, size: 32, offset: 352)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !396, file: !41, line: 176, baseType: !24, size: 32, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !396, file: !41, line: 178, baseType: !24, size: 32, offset: 416)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !396, file: !41, line: 179, baseType: !24, size: 32, offset: 448)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !396, file: !41, line: 181, baseType: !147, size: 64, offset: 480)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !396, file: !41, line: 182, baseType: !24, size: 32, offset: 544)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !396, file: !41, line: 184, baseType: !24, size: 32, offset: 576)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !396, file: !41, line: 186, baseType: !24, size: 32, offset: 608)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !396, file: !41, line: 187, baseType: !24, size: 32, offset: 640)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !396, file: !41, line: 188, baseType: !24, size: 32, offset: 672)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !396, file: !41, line: 190, baseType: !24, size: 32, offset: 704)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !396, file: !41, line: 191, baseType: !24, size: 32, offset: 736)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !396, file: !41, line: 195, baseType: !420, size: 2048, offset: 768)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 2048, elements: !425)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !396, file: !41, line: 192, size: 64, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !421, file: !41, line: 193, baseType: !24, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !421, file: !41, line: 194, baseType: !24, size: 32, offset: 32)
!425 = !{!149, !26}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !396, file: !41, line: 197, baseType: !24, size: 32, offset: 2816)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !396, file: !41, line: 199, baseType: !24, size: 32, offset: 2848)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !396, file: !41, line: 200, baseType: !24, size: 32, offset: 2880)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !396, file: !41, line: 201, baseType: !24, size: 32, offset: 2912)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !396, file: !41, line: 202, baseType: !24, size: 32, offset: 2944)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !396, file: !41, line: 205, baseType: !24, size: 32, offset: 2976)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !396, file: !41, line: 206, baseType: !24, size: 32, offset: 3008)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !396, file: !41, line: 207, baseType: !24, size: 32, offset: 3040)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !40, file: !41, line: 315, baseType: !435, size: 4096, offset: 37760)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !436, line: 46, baseType: !437)
!436 = !DIFile(filename: "common/cabac.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fed287ee191b19e61654b41f7c57e583")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 27, size: 4096, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !437, file: !436, line: 30, baseType: !24, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !437, file: !436, line: 31, baseType: !24, size: 32, offset: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !437, file: !436, line: 34, baseType: !24, size: 32, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !437, file: !436, line: 35, baseType: !24, size: 32, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !437, file: !436, line: 37, baseType: !217, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !437, file: !436, line: 38, baseType: !217, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !437, file: !436, line: 39, baseType: !217, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !437, file: !436, line: 42, baseType: !24, size: 32, align: 128, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !437, file: !436, line: 45, baseType: !448, size: 3680, offset: 416)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 3680, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 460)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !40, file: !41, line: 340, baseType: !452, size: 31808, offset: 41856)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !40, file: !41, line: 317, size: 31808, elements: !453)
!453 = !{!454, !600, !601, !605, !606, !608, !609, !610, !611, !612, !613, !614}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !452, file: !41, line: 320, baseType: !455, size: 4288)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 4288, elements: !598)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !458, line: 94, baseType: !459)
!458 = !DIFile(filename: "common/frame.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "3ae200731644fdbac60ac7f8f3f9d2f1")
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 31, size: 51648, elements: !460)
!460 = !{!461, !462, !463, !464, !468, !469, !470, !471, !472, !473, !474, !478, !479, !480, !481, !482, !483, !485, !487, !488, !490, !491, !492, !497, !504, !508, !511, !513, !514, !516, !517, !521, !522, !523, !526, !528, !529, !530, !531, !533, !534, !535, !536, !537, !538, !566}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !459, file: !458, line: 34, baseType: !24, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !459, file: !458, line: 35, baseType: !24, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !459, file: !458, line: 36, baseType: !24, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !459, file: !458, line: 37, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !466, line: 27, baseType: !467)
!466 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !233)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !459, file: !458, line: 38, baseType: !24, size: 32, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !459, file: !458, line: 39, baseType: !24, size: 32, offset: 224)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !459, file: !458, line: 40, baseType: !24, size: 32, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !459, file: !458, line: 41, baseType: !144, size: 32, offset: 288)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !459, file: !458, line: 42, baseType: !144, size: 32, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !459, file: !458, line: 45, baseType: !24, size: 32, offset: 352)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !459, file: !458, line: 46, baseType: !475, size: 96, offset: 384)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 96, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 3)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !459, file: !458, line: 47, baseType: !475, size: 96, offset: 480)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !459, file: !458, line: 48, baseType: !475, size: 96, offset: 576)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !459, file: !458, line: 49, baseType: !24, size: 32, offset: 672)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !459, file: !458, line: 50, baseType: !24, size: 32, offset: 704)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !459, file: !458, line: 51, baseType: !24, size: 32, offset: 736)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !459, file: !458, line: 52, baseType: !484, size: 192, offset: 768)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 192, elements: !476)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !459, file: !458, line: 53, baseType: !486, size: 256, offset: 960)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !357)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !459, file: !458, line: 54, baseType: !486, size: 256, offset: 1216)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !459, file: !458, line: 55, baseType: !489, size: 64, offset: 1472)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !459, file: !458, line: 59, baseType: !486, size: 256, offset: 1536)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !459, file: !458, line: 60, baseType: !486, size: 256, offset: 1792)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !459, file: !458, line: 63, baseType: !493, size: 64, offset: 2048)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !466, line: 24, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !93, line: 37, baseType: !496)
!496 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !459, file: !458, line: 64, baseType: !498, size: 128, offset: 2112)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 128, elements: !148)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 32, elements: !148)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !466, line: 25, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !93, line: 39, baseType: !503)
!503 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !459, file: !458, line: 65, baseType: !505, size: 2176, offset: 2240)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 2176, elements: !506)
!506 = !{!149, !507}
!507 = !DISubrange(count: 17)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !459, file: !458, line: 66, baseType: !509, size: 2176, offset: 4416)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 2176, elements: !506)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !459, file: !458, line: 67, baseType: !512, size: 128, offset: 6592)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, size: 128, elements: !148)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !459, file: !458, line: 68, baseType: !147, size: 64, offset: 6720)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !459, file: !458, line: 69, baseType: !515, size: 1024, offset: 6784)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1024, elements: !425)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !459, file: !458, line: 70, baseType: !366, size: 512, offset: 7808)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !459, file: !458, line: 75, baseType: !518, size: 10368, offset: 8320)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 10368, elements: !519)
!519 = !{!520, !520}
!520 = !DISubrange(count: 18)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !459, file: !458, line: 76, baseType: !518, size: 10368, offset: 18688)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !459, file: !458, line: 77, baseType: !24, size: 32, offset: 29056)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !459, file: !458, line: 78, baseType: !524, size: 576, offset: 29088)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 576, elements: !525)
!525 = !{!520}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !459, file: !458, line: 79, baseType: !527, size: 20736, offset: 29696)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 20736, elements: !519)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !459, file: !458, line: 80, baseType: !510, size: 64, offset: 50432)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !459, file: !458, line: 81, baseType: !510, size: 64, offset: 50496)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_qp", scope: !459, file: !458, line: 82, baseType: !510, size: 64, offset: 50560)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !459, file: !458, line: 83, baseType: !532, size: 64, offset: 50624)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !459, file: !458, line: 84, baseType: !24, size: 32, offset: 50688)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !459, file: !458, line: 85, baseType: !489, size: 64, offset: 50752)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !459, file: !458, line: 86, baseType: !489, size: 64, offset: 50816)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !459, file: !458, line: 89, baseType: !24, size: 32, offset: 50880)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !459, file: !458, line: 90, baseType: !24, size: 32, offset: 50912)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !459, file: !458, line: 91, baseType: !539, size: 320, offset: 50944)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !200, line: 72, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !200, line: 67, size: 320, elements: !541)
!541 = !{!542, !561, !565}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !540, file: !200, line: 69, baseType: !543, size: 320)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !544, line: 22, size: 320, elements: !545)
!544 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!545 = !{!546, !547, !548, !549, !550, !551, !552, !553}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !543, file: !544, line: 24, baseType: !24, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !543, file: !544, line: 25, baseType: !7, size: 32, offset: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !543, file: !544, line: 26, baseType: !24, size: 32, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !543, file: !544, line: 28, baseType: !7, size: 32, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !543, file: !544, line: 32, baseType: !24, size: 32, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !543, file: !544, line: 34, baseType: !503, size: 16, offset: 160)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !543, file: !544, line: 35, baseType: !503, size: 16, offset: 176)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !543, file: !544, line: 36, baseType: !554, size: 128, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !555, line: 55, baseType: !556)
!555 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !555, line: 51, size: 128, elements: !557)
!557 = !{!558, !560}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !556, file: !555, line: 53, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !556, file: !555, line: 54, baseType: !559, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !540, file: !200, line: 70, baseType: !562, size: 320)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 320, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 40)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !540, file: !200, line: 71, baseType: !233, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !459, file: !458, line: 92, baseType: !567, size: 384, offset: 51264)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !200, line: 80, baseType: !568)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !200, line: 75, size: 384, elements: !569)
!569 = !{!570, !592, !596}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !568, file: !200, line: 77, baseType: !571, size: 384)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !555, line: 94, size: 384, elements: !572)
!572 = !{!573, !585, !586, !588, !589, !590, !591}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !571, file: !555, line: 96, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !575, line: 33, baseType: !576)
!575 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!576 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !575, line: 25, size: 64, elements: !577)
!577 = !{!578, !580}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !576, file: !575, line: 27, baseType: !579, size: 64)
!579 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !576, file: !575, line: 32, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !576, file: !575, line: 28, size: 64, elements: !582)
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !581, file: !575, line: 30, baseType: !7, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !581, file: !575, line: 31, baseType: !7, size: 32, offset: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !571, file: !555, line: 97, baseType: !574, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !571, file: !555, line: 98, baseType: !587, size: 64, offset: 128)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !148)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !571, file: !555, line: 99, baseType: !587, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !571, file: !555, line: 100, baseType: !7, size: 32, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !571, file: !555, line: 101, baseType: !7, size: 32, offset: 288)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !571, file: !555, line: 102, baseType: !587, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !568, file: !200, line: 78, baseType: !593, size: 384)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 384, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 48)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !568, file: !200, line: 79, baseType: !597, size: 64)
!597 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!598 = !{!599}
!599 = !DISubrange(count: 67)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !452, file: !41, line: 322, baseType: !455, size: 4288, offset: 4288)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !452, file: !41, line: 324, baseType: !602, size: 21760, offset: 8576)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 21760, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 340)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !452, file: !41, line: 326, baseType: !456, size: 64, offset: 30336)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !452, file: !41, line: 329, baseType: !607, size: 1152, offset: 30400)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 1152, elements: !525)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_idr", scope: !452, file: !41, line: 331, baseType: !24, size: 32, offset: 31552)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !452, file: !41, line: 333, baseType: !24, size: 32, offset: 31584)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !452, file: !41, line: 335, baseType: !24, size: 32, offset: 31616)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !452, file: !41, line: 336, baseType: !24, size: 32, offset: 31648)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !452, file: !41, line: 337, baseType: !24, size: 32, offset: 31680)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !452, file: !41, line: 338, baseType: !24, size: 32, offset: 31712)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !452, file: !41, line: 339, baseType: !24, size: 32, offset: 31744)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !40, file: !41, line: 343, baseType: !456, size: 64, offset: 73664)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !40, file: !41, line: 346, baseType: !456, size: 64, offset: 73728)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !40, file: !41, line: 349, baseType: !24, size: 32, offset: 73792)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !40, file: !41, line: 350, baseType: !619, size: 1216, offset: 73856)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 1216, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 19)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !40, file: !41, line: 351, baseType: !24, size: 32, offset: 75072)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !40, file: !41, line: 352, baseType: !619, size: 1216, offset: 75136)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !40, file: !41, line: 353, baseType: !147, size: 64, offset: 76352)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !40, file: !41, line: 365, baseType: !626, size: 10624, offset: 76416)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !40, file: !41, line: 358, size: 10624, elements: !627)
!627 = !{!628, !630, !633, !636}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !626, file: !41, line: 360, baseType: !629, size: 256, align: 128)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 256, elements: !25)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !626, file: !41, line: 361, baseType: !631, size: 128, align: 128, offset: 256)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 128, elements: !632)
!632 = !{!149, !356}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !626, file: !41, line: 363, baseType: !634, size: 4096, align: 128, offset: 384)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 4096, elements: !635)
!635 = !{!356, !101}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !626, file: !41, line: 364, baseType: !637, size: 6144, align: 128, offset: 4480)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 6144, elements: !638)
!638 = !{!639, !26}
!639 = !DISubrange(count: 24)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !40, file: !41, line: 544, baseType: !641, size: 80128, offset: 87040)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !40, file: !41, line: 368, size: 80128, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !669, !671, !672, !673, !674, !675, !676, !677, !678, !679, !681, !684, !688, !689, !690, !691, !692, !696, !697, !698, !701, !703, !704, !705, !707, !708, !709, !710, !711, !712, !713, !714, !755, !775, !776, !777, !778, !779, !780, !781, !782, !783, !786, !789, !791}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !641, file: !41, line: 370, baseType: !24, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !641, file: !41, line: 373, baseType: !24, size: 32, offset: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !641, file: !41, line: 374, baseType: !24, size: 32, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !641, file: !41, line: 375, baseType: !24, size: 32, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !641, file: !41, line: 378, baseType: !24, size: 32, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !641, file: !41, line: 379, baseType: !24, size: 32, offset: 160)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !641, file: !41, line: 380, baseType: !24, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !641, file: !41, line: 381, baseType: !24, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !641, file: !41, line: 382, baseType: !24, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !641, file: !41, line: 385, baseType: !24, size: 32, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !641, file: !41, line: 386, baseType: !24, size: 32, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !641, file: !41, line: 387, baseType: !24, size: 32, offset: 352)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !641, file: !41, line: 388, baseType: !24, size: 32, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !641, file: !41, line: 389, baseType: !24, size: 32, offset: 416)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !641, file: !41, line: 390, baseType: !24, size: 32, offset: 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !641, file: !41, line: 391, baseType: !24, size: 32, offset: 480)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !641, file: !41, line: 393, baseType: !24, size: 32, offset: 512)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !641, file: !41, line: 396, baseType: !147, size: 64, offset: 544)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !641, file: !41, line: 397, baseType: !147, size: 64, offset: 608)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !641, file: !41, line: 400, baseType: !147, size: 64, offset: 672)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !641, file: !41, line: 401, baseType: !147, size: 64, offset: 736)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !641, file: !41, line: 403, baseType: !147, size: 64, offset: 800)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !641, file: !41, line: 404, baseType: !147, size: 64, offset: 864)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !641, file: !41, line: 407, baseType: !7, size: 32, offset: 928)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !641, file: !41, line: 408, baseType: !668, size: 128, offset: 960)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !357)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !641, file: !41, line: 409, baseType: !670, size: 512, offset: 1088)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !25)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !641, file: !41, line: 410, baseType: !24, size: 32, offset: 1600)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !641, file: !41, line: 411, baseType: !24, size: 32, offset: 1632)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !641, file: !41, line: 412, baseType: !24, size: 32, offset: 1664)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !641, file: !41, line: 413, baseType: !24, size: 32, offset: 1696)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !641, file: !41, line: 414, baseType: !24, size: 32, offset: 1728)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !641, file: !41, line: 415, baseType: !24, size: 32, offset: 1760)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !641, file: !41, line: 422, baseType: !493, size: 64, offset: 1792)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !641, file: !41, line: 423, baseType: !493, size: 64, offset: 1856)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !641, file: !41, line: 424, baseType: !680, size: 64, offset: 1920)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !641, file: !41, line: 425, baseType: !682, size: 64, offset: 1984)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 64, elements: !218)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !641, file: !41, line: 427, baseType: !685, size: 64, offset: 2048)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 192, elements: !687)
!687 = !{!639}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !641, file: !41, line: 428, baseType: !493, size: 64, offset: 2112)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !641, file: !41, line: 429, baseType: !498, size: 128, offset: 2176)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !641, file: !41, line: 430, baseType: !498, size: 128, offset: 2304)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !641, file: !41, line: 431, baseType: !512, size: 128, offset: 2432)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !641, file: !41, line: 432, baseType: !693, size: 4096, offset: 2560)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 4096, elements: !694)
!694 = !{!149, !695}
!695 = !DISubrange(count: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !641, file: !41, line: 433, baseType: !493, size: 64, offset: 6656)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !641, file: !41, line: 434, baseType: !493, size: 64, offset: 6720)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !641, file: !41, line: 435, baseType: !699, size: 384, offset: 6784)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 384, elements: !700)
!700 = !{!149, !477}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "nnz_backup", scope: !641, file: !41, line: 436, baseType: !702, size: 64, offset: 7168)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !641, file: !41, line: 439, baseType: !24, size: 32, offset: 7232)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !641, file: !41, line: 440, baseType: !24, size: 32, offset: 7264)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !641, file: !41, line: 441, baseType: !706, size: 128, offset: 7296)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, elements: !357)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !641, file: !41, line: 442, baseType: !24, size: 32, offset: 7424)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !641, file: !41, line: 444, baseType: !24, size: 32, offset: 7456)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !641, file: !41, line: 445, baseType: !24, size: 32, offset: 7488)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !641, file: !41, line: 447, baseType: !24, size: 32, offset: 7520)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !641, file: !41, line: 448, baseType: !24, size: 32, offset: 7552)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !641, file: !41, line: 454, baseType: !24, size: 32, offset: 7584)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !641, file: !41, line: 457, baseType: !24, size: 32, offset: 7616)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !641, file: !41, line: 498, baseType: !715, size: 57344, offset: 7680)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !641, file: !41, line: 459, size: 57344, elements: !716)
!716 = !{!717, !721, !725, !727, !728, !731, !735, !736, !739, !740, !741, !744, !745, !746, !747, !748, !749, !752, !754}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !715, file: !41, line: 464, baseType: !718, size: 3072, align: 128)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 3072, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !715, file: !41, line: 465, baseType: !722, size: 6912, align: 128, offset: 3072)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 6912, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 864)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !715, file: !41, line: 468, baseType: !726, size: 2048, align: 128, offset: 9984)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 2048, elements: !267)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !715, file: !41, line: 469, baseType: !726, size: 2048, align: 128, offset: 12032)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !715, file: !41, line: 470, baseType: !729, size: 3072, align: 128, offset: 14080)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 3072, elements: !730)
!730 = !{!477, !101}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !715, file: !41, line: 471, baseType: !732, size: 3840, align: 128, offset: 17152)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 3840, elements: !733)
!733 = !{!734, !26}
!734 = !DISubrange(count: 15)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !715, file: !41, line: 474, baseType: !634, size: 4096, align: 128, offset: 20992)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !715, file: !41, line: 475, baseType: !737, size: 4096, align: 128, offset: 25088)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 4096, elements: !738)
!738 = !{!26, !26}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd", scope: !715, file: !41, line: 478, baseType: !354, size: 512, offset: 29184)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_sum", scope: !715, file: !41, line: 479, baseType: !24, size: 32, offset: 29696)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d", scope: !715, file: !41, line: 480, baseType: !742, size: 128, offset: 29728)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, elements: !743)
!743 = !{!149, !149}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d_sum", scope: !715, file: !41, line: 481, baseType: !24, size: 32, offset: 29856)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !715, file: !41, line: 484, baseType: !484, size: 192, offset: 29888)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !715, file: !41, line: 486, baseType: !484, size: 192, offset: 30080)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !715, file: !41, line: 489, baseType: !484, size: 192, offset: 30272)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !715, file: !41, line: 492, baseType: !147, size: 64, offset: 30464)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !715, file: !41, line: 493, baseType: !750, size: 24576, offset: 30528)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 24576, elements: !751)
!751 = !{!149, !695, !347}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !715, file: !41, line: 494, baseType: !753, size: 2048, offset: 55104)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 2048, elements: !425)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !715, file: !41, line: 497, baseType: !475, size: 96, offset: 57152)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !641, file: !41, line: 526, baseType: !756, size: 12032, offset: 65024)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !641, file: !41, line: 501, size: 12032, elements: !757)
!757 = !{!758, !760, !762, !765, !768, !769, !770, !771, !772, !773, !774}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !756, file: !41, line: 504, baseType: !759, size: 384)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 384, elements: !594)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !756, file: !41, line: 507, baseType: !761, size: 384, offset: 384)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 384, elements: !594)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !756, file: !41, line: 510, baseType: !763, size: 768, align: 32, offset: 768)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 768, elements: !764)
!764 = !{!149, !595}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !756, file: !41, line: 513, baseType: !766, size: 3072, align: 128, offset: 1536)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 3072, elements: !767)
!767 = !{!149, !595, !149}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !756, file: !41, line: 514, baseType: !766, size: 3072, align: 64, offset: 4608)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !756, file: !41, line: 517, baseType: !759, size: 384, align: 32, offset: 7680)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !756, file: !41, line: 519, baseType: !766, size: 3072, align: 128, offset: 8064)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !756, file: !41, line: 520, baseType: !763, size: 768, align: 32, offset: 11136)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !756, file: !41, line: 521, baseType: !500, size: 32, align: 32, offset: 11904)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !756, file: !41, line: 524, baseType: !24, size: 32, offset: 11936)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !756, file: !41, line: 525, baseType: !24, size: 32, offset: 11968)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !641, file: !41, line: 529, baseType: !24, size: 32, offset: 77056)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !641, file: !41, line: 530, baseType: !24, size: 32, offset: 77088)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !641, file: !41, line: 531, baseType: !24, size: 32, offset: 77120)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !641, file: !41, line: 532, baseType: !24, size: 32, offset: 77152)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !641, file: !41, line: 533, baseType: !24, size: 32, offset: 77184)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !641, file: !41, line: 534, baseType: !24, size: 32, offset: 77216)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !641, file: !41, line: 535, baseType: !24, size: 32, offset: 77248)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !641, file: !41, line: 536, baseType: !24, size: 32, offset: 77280)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !641, file: !41, line: 539, baseType: !784, size: 512, offset: 77312)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 512, elements: !785)
!785 = !{!26, !149}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !641, file: !41, line: 540, baseType: !787, size: 2048, offset: 77824)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 2048, elements: !788)
!788 = !{!695, !356}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0_buf", scope: !641, file: !41, line: 542, baseType: !790, size: 16, offset: 79872)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 16, elements: !148)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !641, file: !41, line: 543, baseType: !792, size: 128, offset: 79888)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 128, elements: !25)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !40, file: !41, line: 547, baseType: !794, size: 64, offset: 167168)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !41, line: 248, baseType: !796)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !41, line: 248, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !40, file: !41, line: 604, baseType: !798, size: 23936, offset: 167232)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !40, file: !41, line: 550, size: 23936, elements: !799)
!799 = !{!800, !825, !829, !831, !833, !834, !835, !836, !837, !838, !839, !840, !843, !845, !847, !850, !851}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !798, file: !41, line: 579, baseType: !801, size: 3904)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !798, file: !41, line: 553, size: 3904, elements: !802)
!802 = !{!803, !804, !805, !806, !808, !809, !810, !811, !812, !814, !817, !818, !819, !820, !821, !823}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !801, file: !41, line: 556, baseType: !24, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !801, file: !41, line: 558, baseType: !24, size: 32, offset: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !801, file: !41, line: 560, baseType: !24, size: 32, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !801, file: !41, line: 562, baseType: !807, size: 608, offset: 96)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 608, elements: !620)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !801, file: !41, line: 563, baseType: !24, size: 32, offset: 704)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !801, file: !41, line: 564, baseType: !24, size: 32, offset: 736)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !801, file: !41, line: 565, baseType: !24, size: 32, offset: 768)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !801, file: !41, line: 566, baseType: !147, size: 64, offset: 800)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !801, file: !41, line: 567, baseType: !813, size: 2048, offset: 864)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, elements: !694)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !801, file: !41, line: 568, baseType: !815, size: 544, offset: 2912)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 544, elements: !816)
!816 = !{!507}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !801, file: !41, line: 571, baseType: !24, size: 32, offset: 3456)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i_inter_cost", scope: !801, file: !41, line: 572, baseType: !24, size: 32, offset: 3488)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i_mbs_analysed", scope: !801, file: !41, line: 573, baseType: !24, size: 32, offset: 3520)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !801, file: !41, line: 575, baseType: !147, size: 64, offset: 3552)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !801, file: !41, line: 577, baseType: !822, size: 192, offset: 3648)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 192, elements: !476)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !801, file: !41, line: 578, baseType: !824, size: 64, offset: 3840)
!824 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !798, file: !41, line: 584, baseType: !826, size: 160, offset: 3904)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 160, elements: !827)
!827 = !{!828}
!828 = !DISubrange(count: 5)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_size", scope: !798, file: !41, line: 585, baseType: !830, size: 320, offset: 4096)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 320, elements: !827)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "f_slice_qp", scope: !798, file: !41, line: 586, baseType: !832, size: 320, offset: 4416)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 320, elements: !827)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !798, file: !41, line: 587, baseType: !815, size: 544, offset: 4736)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !798, file: !41, line: 589, baseType: !830, size: 320, offset: 5312)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !798, file: !41, line: 590, baseType: !832, size: 320, offset: 5632)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !798, file: !41, line: 591, baseType: !832, size: 320, offset: 5952)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !798, file: !41, line: 592, baseType: !832, size: 320, offset: 6272)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !798, file: !41, line: 593, baseType: !832, size: 320, offset: 6592)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !798, file: !41, line: 594, baseType: !832, size: 320, offset: 6912)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !798, file: !41, line: 596, baseType: !841, size: 6080, offset: 7232)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 6080, elements: !842)
!842 = !{!828, !621}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !798, file: !41, line: 597, baseType: !844, size: 2176, offset: 13312)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 2176, elements: !506)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !798, file: !41, line: 598, baseType: !846, size: 128, offset: 15488)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 128, elements: !148)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !798, file: !41, line: 599, baseType: !848, size: 8192, offset: 15616)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 8192, elements: !849)
!849 = !{!149, !149, !695}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !798, file: !41, line: 601, baseType: !147, size: 64, offset: 23808)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !798, file: !41, line: 602, baseType: !147, size: 64, offset: 23872)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !40, file: !41, line: 607, baseType: !853, size: 448, offset: 191168)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 448, elements: !859)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !855, line: 27, baseType: !856)
!855 = !DIFile(filename: "common/predict.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "c7827bfe44f4a550b7080533457a8327")
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !217}
!859 = !{!860}
!860 = !DISubrange(count: 7)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !40, file: !41, line: 608, baseType: !853, size: 448, offset: 191616)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !40, file: !41, line: 609, baseType: !863, size: 768, offset: 192064)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 768, elements: !868)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !855, line: 28, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !217, !217}
!868 = !{!869}
!869 = !DISubrange(count: 12)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !40, file: !41, line: 610, baseType: !871, size: 768, offset: 192832)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 768, elements: !868)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !40, file: !41, line: 612, baseType: !873, size: 8000, offset: 193600)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !6, line: 103, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 63, size: 8000, elements: !875)
!875 = !{!876, !882, !883, !884, !885, !887, !888, !889, !890, !896, !902, !903, !909, !916, !921, !925, !926, !927, !928, !929, !934, !938, !939, !940, !941, !942}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !874, file: !6, line: 65, baseType: !877, size: 448)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 448, elements: !859)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !6, line: 26, baseType: !879)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!24, !217, !24, !217, !24}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !874, file: !6, line: 66, baseType: !877, size: 448, offset: 448)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !874, file: !6, line: 67, baseType: !877, size: 448, offset: 896)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !874, file: !6, line: 68, baseType: !877, size: 448, offset: 1344)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !874, file: !6, line: 69, baseType: !886, size: 256, offset: 1792)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 256, elements: !357)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !874, file: !6, line: 70, baseType: !877, size: 448, offset: 2048)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !874, file: !6, line: 71, baseType: !877, size: 448, offset: 2496)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !874, file: !6, line: 72, baseType: !877, size: 448, offset: 2944)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !874, file: !6, line: 73, baseType: !891, size: 448, offset: 3392)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !892, size: 448, elements: !859)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !6, line: 27, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !217, !217, !217, !217, !24, !510}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !874, file: !6, line: 74, baseType: !897, size: 448, offset: 3840)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 448, elements: !859)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !6, line: 28, baseType: !899)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !217, !217, !217, !217, !217, !24, !510}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !874, file: !6, line: 75, baseType: !877, size: 448, offset: 4288)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !874, file: !6, line: 77, baseType: !904, size: 256, offset: 4736)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 256, elements: !357)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!24, !217, !24, !908}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !874, file: !6, line: 78, baseType: !910, size: 256, offset: 4992)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !911, size: 256, elements: !357)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!914, !217, !24}
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !91, line: 27, baseType: !915)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !93, line: 45, baseType: !201)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !874, file: !6, line: 80, baseType: !917, size: 64, offset: 5248)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !344, !24, !344, !24, !920}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !874, file: !6, line: 82, baseType: !922, size: 64, offset: 5312)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!144, !920, !920, !24}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !874, file: !6, line: 85, baseType: !891, size: 448, offset: 5376)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !874, file: !6, line: 86, baseType: !897, size: 448, offset: 5824)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !874, file: !6, line: 87, baseType: !891, size: 448, offset: 6272)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !874, file: !6, line: 88, baseType: !897, size: 448, offset: 6720)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !874, file: !6, line: 92, baseType: !930, size: 448, offset: 7168)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !931, size: 448, elements: !859)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!24, !510, !489, !24, !489, !680, !24, !24}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !874, file: !6, line: 97, baseType: !935, size: 64, offset: 7616)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !217, !217, !510}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !874, file: !6, line: 98, baseType: !935, size: 64, offset: 7680)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !874, file: !6, line: 99, baseType: !935, size: 64, offset: 7744)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !874, file: !6, line: 100, baseType: !935, size: 64, offset: 7808)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !874, file: !6, line: 101, baseType: !935, size: 64, offset: 7872)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !874, file: !6, line: 102, baseType: !935, size: 64, offset: 7936)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !40, file: !41, line: 613, baseType: !944, size: 1792, offset: 201600)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !945, line: 71, baseType: !946)
!945 = !DIFile(filename: "common/mc.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "d49d7420aafa05a86bee506aef111ff0")
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !945, line: 31, size: 1792, elements: !947)
!947 = !{!948, !953, !957, !961, !968, !973, !974, !978, !982, !983, !987, !995, !999}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !946, file: !945, line: 33, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !217, !24, !952, !24, !24, !24, !24, !24}
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !946, file: !945, line: 38, baseType: !954, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!217, !217, !510, !952, !24, !24, !24, !24, !24}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !946, file: !945, line: 44, baseType: !958, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !217, !24, !217, !24, !24, !24, !24, !24}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !946, file: !945, line: 48, baseType: !962, size: 640, offset: 192)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !963, size: 640, elements: !966)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{null, !217, !24, !217, !24, !217, !24, !24}
!966 = !{!967}
!967 = !DISubrange(count: 10)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !946, file: !945, line: 51, baseType: !969, size: 448, offset: 832)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !970, size: 448, elements: !859)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !217, !24, !217, !24, !24}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !946, file: !945, line: 52, baseType: !970, size: 64, offset: 1280)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !946, file: !945, line: 54, baseType: !975, size: 64, offset: 1344)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{null, !217, !24, !217, !24, !24, !24}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !946, file: !945, line: 57, baseType: !979, size: 64, offset: 1408)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !217, !217, !217, !217, !24, !24, !24}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !946, file: !945, line: 61, baseType: !970, size: 64, offset: 1472)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !946, file: !945, line: 64, baseType: !984, size: 64, offset: 1536)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !217, !24, !24}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !946, file: !945, line: 66, baseType: !988, size: 64, offset: 1600)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!107, !107, !991, !993}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !994, line: 46, baseType: !201)
!994 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!995 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !946, file: !945, line: 67, baseType: !996, size: 64, offset: 1664)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !107, !24}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !946, file: !945, line: 69, baseType: !1000, size: 64, offset: 1728)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !217, !217, !217, !217, !217, !24, !24, !24, !24}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !40, file: !41, line: 614, baseType: !1004, size: 768, offset: 203392)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1005, line: 112, baseType: !1006)
!1005 = !DIFile(filename: "common/dct.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "eb76275dd7785989f0d8a4ada39e3c74")
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1005, line: 89, size: 768, elements: !1007)
!1007 = !{!1008, !1014, !1018, !1024, !1028, !1029, !1030, !1036, !1040, !1046, !1050, !1054}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1006, file: !1005, line: 94, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !1012, !217, !217}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 64, elements: !357)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1006, file: !1005, line: 95, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !217, !1012}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1006, file: !1005, line: 97, baseType: !1019, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !1022, !217, !217}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 256, elements: !355)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1006, file: !1005, line: 98, baseType: !1025, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !217, !1022}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1006, file: !1005, line: 100, baseType: !1019, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1006, file: !1005, line: 101, baseType: !1025, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1006, file: !1005, line: 103, baseType: !1031, size: 64, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !1034, !217, !217}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 128, elements: !218)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1006, file: !1005, line: 104, baseType: !1037, size: 64, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !217, !1034}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1006, file: !1005, line: 106, baseType: !1041, size: 64, offset: 512)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !1044, !217, !217}
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 1024, elements: !362)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1006, file: !1005, line: 107, baseType: !1047, size: 64, offset: 576)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !217, !1044}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1006, file: !1005, line: 109, baseType: !1051, size: 64, offset: 640)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !1012}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1006, file: !1005, line: 110, baseType: !1051, size: 64, offset: 704)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !40, file: !41, line: 615, baseType: !1056, size: 320, offset: 204160)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1005, line: 122, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1005, line: 114, size: 320, elements: !1058)
!1058 = !{!1059, !1063, !1067, !1071, !1072}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1057, file: !1005, line: 116, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !680, !1034}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1057, file: !1005, line: 117, baseType: !1064, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !680, !1012}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1057, file: !1005, line: 118, baseType: !1068, size: 64, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !680, !344, !217}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1057, file: !1005, line: 119, baseType: !1068, size: 64, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1057, file: !1005, line: 120, baseType: !1073, size: 64, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !680, !680}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !40, file: !41, line: 616, baseType: !1077, size: 1088, offset: 204480)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1078, line: 43, baseType: !1079)
!1078 = !DIFile(filename: "common/quant.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fe7c19d3e69b65b38e52c43c47235f27")
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1078, line: 26, size: 1088, elements: !1080)
!1080 = !{!1081, !1085, !1089, !1093, !1097, !1101, !1105, !1106, !1110, !1114, !1115, !1116}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1079, file: !1078, line: 28, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !1034, !489, !489}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1079, file: !1078, line: 29, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !1012, !489, !489}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1079, file: !1078, line: 30, baseType: !1090, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{null, !1012, !24, !24}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1079, file: !1078, line: 31, baseType: !1094, size: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !499, !24, !24}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1079, file: !1078, line: 33, baseType: !1098, size: 64, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !1034, !360, !24}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1079, file: !1078, line: 34, baseType: !1102, size: 64, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !1012, !353, !24}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1079, file: !1078, line: 35, baseType: !1102, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1079, file: !1078, line: 37, baseType: !1107, size: 64, offset: 448)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{null, !680, !908, !489, !24}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1079, file: !1078, line: 39, baseType: !1111, size: 64, offset: 512)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!24, !680}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1079, file: !1078, line: 40, baseType: !1111, size: 64, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1079, file: !1078, line: 41, baseType: !1111, size: 64, offset: 640)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1079, file: !1078, line: 42, baseType: !1117, size: 384, offset: 704)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, size: 384, elements: !346)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !40, file: !41, line: 617, baseType: !1119, size: 512, offset: 205568)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !458, line: 108, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 98, size: 512, elements: !1121)
!1121 = !{!1122, !1127, !1128, !1129, !1130, !1135, !1136, !1137}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma", scope: !1120, file: !458, line: 100, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !458, line: 96, baseType: !1124)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !217, !24, !24, !24, !493}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma", scope: !1120, file: !458, line: 101, baseType: !1123, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma", scope: !1120, file: !458, line: 102, baseType: !1123, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma", scope: !1120, file: !458, line: 103, baseType: !1123, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma_intra", scope: !1120, file: !458, line: 104, baseType: !1131, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !458, line: 97, baseType: !1132)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !217, !24, !24, !24}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma_intra", scope: !1120, file: !458, line: 105, baseType: !1131, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma_intra", scope: !1120, file: !458, line: 106, baseType: !1131, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma_intra", scope: !1120, file: !458, line: 107, baseType: !1131, size: 64, offset: 448)
!1138 = !{!1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146}
!1139 = !DILocalVariable(name: "h", arg: 1, scope: !34, file: !3, line: 272, type: !37)
!1140 = !DILocalVariable(name: "frame", arg: 2, scope: !34, file: !3, line: 272, type: !456)
!1141 = !DILocalVariable(name: "src", scope: !34, file: !3, line: 274, type: !217)
!1142 = !DILocalVariable(name: "i_stride", scope: !34, file: !3, line: 275, type: !24)
!1143 = !DILocalVariable(name: "i_height", scope: !34, file: !3, line: 276, type: !24)
!1144 = !DILocalVariable(name: "i_width", scope: !34, file: !3, line: 277, type: !24)
!1145 = !DILocalVariable(name: "x", scope: !34, file: !3, line: 278, type: !24)
!1146 = !DILocalVariable(name: "y", scope: !34, file: !3, line: 278, type: !24)
!1147 = !DILocation(line: 0, scope: !34)
!1148 = !DILocation(line: 274, column: 27, scope: !34)
!1149 = !DILocation(line: 274, column: 20, scope: !34)
!1150 = !{!1151, !1151, i64 0}
!1151 = !{!"any pointer", !1152, i64 0}
!1152 = !{!"omnipotent char", !1153, i64 0}
!1153 = !{!"Simple C/C++ TBAA"}
!1154 = !DILocation(line: 275, column: 27, scope: !34)
!1155 = !DILocation(line: 275, column: 20, scope: !34)
!1156 = !{!1157, !1157, i64 0}
!1157 = !{!"int", !1152, i64 0}
!1158 = !DILocation(line: 276, column: 27, scope: !34)
!1159 = !DILocation(line: 276, column: 20, scope: !34)
!1160 = !DILocation(line: 277, column: 27, scope: !34)
!1161 = !DILocation(line: 277, column: 20, scope: !34)
!1162 = !DILocation(line: 281, column: 16, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 281, column: 5)
!1164 = distinct !DILexicalBlock(scope: !34, file: !3, line: 281, column: 5)
!1165 = !DILocation(line: 281, column: 5, scope: !1164)
!1166 = !DILocation(line: 283, column: 77, scope: !34)
!1167 = !DILocation(line: 282, column: 50, scope: !1163)
!1168 = !DILocation(line: 282, column: 46, scope: !1163)
!1169 = !DILocation(line: 282, column: 35, scope: !1163)
!1170 = !{!1152, !1152, i64 0}
!1171 = !DILocation(line: 282, column: 9, scope: !1163)
!1172 = !DILocation(line: 282, column: 33, scope: !1163)
!1173 = !DILocation(line: 281, column: 28, scope: !1163)
!1174 = distinct !{!1174, !1165, !1175, !1176}
!1175 = !DILocation(line: 282, column: 59, scope: !1164)
!1176 = !{!"llvm.loop.mustprogress"}
!1177 = !DILocation(line: 283, column: 11, scope: !34)
!1178 = !{!1179, !1151, i64 25400}
!1179 = !{!"x264_t", !1180, i64 0, !1152, i64 616, !1185, i64 1640, !1157, i64 1648, !1157, i64 1652, !1186, i64 1656, !1157, i64 1920, !1157, i64 1924, !1157, i64 1928, !1157, i64 1932, !1157, i64 1936, !1157, i64 1940, !1157, i64 1944, !1157, i64 1948, !1157, i64 1952, !1152, i64 1956, !1151, i64 3200, !1152, i64 3208, !1151, i64 3328, !1157, i64 3336, !1152, i64 3344, !1152, i64 3376, !1152, i64 3392, !1152, i64 3424, !1152, i64 3440, !1152, i64 3472, !1152, i64 3488, !1152, i64 3520, !1151, i64 3536, !1152, i64 3552, !1152, i64 4064, !1152, i64 4320, !1188, i64 4328, !1189, i64 4720, !1190, i64 5232, !1151, i64 9208, !1151, i64 9216, !1157, i64 9224, !1152, i64 9232, !1157, i64 9384, !1152, i64 9392, !1152, i64 9544, !1191, i64 9552, !1192, i64 10880, !1151, i64 20896, !1195, i64 20904, !1152, i64 23896, !1152, i64 23952, !1152, i64 24008, !1152, i64 24104, !1198, i64 24200, !1199, i64 25200, !1200, i64 25424, !1201, i64 25520, !1202, i64 25560, !1203, i64 25696}
!1180 = !{!"x264_param_t", !1157, i64 0, !1157, i64 4, !1157, i64 8, !1157, i64 12, !1157, i64 16, !1157, i64 20, !1157, i64 24, !1157, i64 28, !1181, i64 32, !1157, i64 68, !1157, i64 72, !1157, i64 76, !1157, i64 80, !1157, i64 84, !1157, i64 88, !1157, i64 92, !1157, i64 96, !1157, i64 100, !1157, i64 104, !1157, i64 108, !1157, i64 112, !1157, i64 116, !1157, i64 120, !1157, i64 124, !1157, i64 128, !1157, i64 132, !1157, i64 136, !1151, i64 144, !1152, i64 152, !1152, i64 168, !1152, i64 184, !1152, i64 200, !1152, i64 216, !1152, i64 280, !1151, i64 344, !1151, i64 352, !1157, i64 360, !1157, i64 364, !1151, i64 368, !1182, i64 376, !1184, i64 472, !1157, i64 600, !1157, i64 604, !1157, i64 608}
!1181 = !{!"", !1157, i64 0, !1157, i64 4, !1157, i64 8, !1157, i64 12, !1157, i64 16, !1157, i64 20, !1157, i64 24, !1157, i64 28, !1157, i64 32}
!1182 = !{!"", !1157, i64 0, !1157, i64 4, !1157, i64 8, !1157, i64 12, !1157, i64 16, !1157, i64 20, !1157, i64 24, !1157, i64 28, !1157, i64 32, !1157, i64 36, !1157, i64 40, !1157, i64 44, !1157, i64 48, !1157, i64 52, !1157, i64 56, !1157, i64 60, !1157, i64 64, !1157, i64 68, !1183, i64 72, !1183, i64 76, !1152, i64 80, !1157, i64 88, !1157, i64 92}
!1183 = !{!"float", !1152, i64 0}
!1184 = !{!"", !1157, i64 0, !1157, i64 4, !1157, i64 8, !1157, i64 12, !1157, i64 16, !1157, i64 20, !1183, i64 24, !1183, i64 28, !1157, i64 32, !1157, i64 36, !1183, i64 40, !1183, i64 44, !1183, i64 48, !1157, i64 52, !1183, i64 56, !1157, i64 60, !1151, i64 64, !1157, i64 72, !1151, i64 80, !1183, i64 88, !1183, i64 92, !1183, i64 96, !1151, i64 104, !1157, i64 112, !1151, i64 120}
!1185 = !{!"long", !1152, i64 0}
!1186 = !{!"", !1157, i64 0, !1152, i64 8, !1157, i64 200, !1151, i64 208, !1187, i64 216, !1157, i64 256}
!1187 = !{!"bs_s", !1151, i64 0, !1151, i64 8, !1151, i64 16, !1185, i64 24, !1157, i64 32, !1157, i64 36}
!1188 = !{!"", !1151, i64 0, !1151, i64 8, !1157, i64 16, !1157, i64 20, !1157, i64 24, !1157, i64 28, !1157, i64 32, !1157, i64 36, !1157, i64 40, !1157, i64 44, !1157, i64 48, !1157, i64 52, !1157, i64 56, !1152, i64 60, !1157, i64 68, !1157, i64 72, !1157, i64 76, !1157, i64 80, !1157, i64 84, !1157, i64 88, !1157, i64 92, !1152, i64 96, !1157, i64 352, !1157, i64 356, !1157, i64 360, !1157, i64 364, !1157, i64 368, !1157, i64 372, !1157, i64 376, !1157, i64 380}
!1189 = !{!"", !1157, i64 0, !1157, i64 4, !1157, i64 8, !1157, i64 12, !1151, i64 16, !1151, i64 24, !1151, i64 32, !1157, i64 48, !1152, i64 52}
!1190 = !{!"", !1152, i64 0, !1152, i64 536, !1152, i64 1072, !1151, i64 3792, !1152, i64 3800, !1157, i64 3944, !1157, i64 3948, !1157, i64 3952, !1157, i64 3956, !1157, i64 3960, !1157, i64 3964, !1157, i64 3968}
!1191 = !{!"", !1152, i64 0, !1152, i64 32, !1152, i64 48, !1152, i64 560}
!1192 = !{!"", !1157, i64 0, !1157, i64 4, !1157, i64 8, !1157, i64 12, !1157, i64 16, !1157, i64 20, !1157, i64 24, !1157, i64 28, !1157, i64 32, !1157, i64 36, !1157, i64 40, !1157, i64 44, !1157, i64 48, !1157, i64 52, !1157, i64 56, !1157, i64 60, !1157, i64 64, !1152, i64 68, !1152, i64 76, !1152, i64 84, !1152, i64 92, !1152, i64 100, !1152, i64 108, !1157, i64 116, !1152, i64 120, !1152, i64 136, !1157, i64 200, !1157, i64 204, !1157, i64 208, !1157, i64 212, !1157, i64 216, !1157, i64 220, !1151, i64 224, !1151, i64 232, !1151, i64 240, !1151, i64 248, !1151, i64 256, !1151, i64 264, !1152, i64 272, !1152, i64 288, !1152, i64 304, !1152, i64 320, !1151, i64 832, !1151, i64 840, !1152, i64 848, !1151, i64 896, !1157, i64 904, !1157, i64 908, !1152, i64 912, !1157, i64 928, !1157, i64 932, !1157, i64 936, !1157, i64 940, !1157, i64 944, !1157, i64 948, !1157, i64 952, !1193, i64 960, !1194, i64 8128, !1157, i64 9632, !1157, i64 9636, !1157, i64 9640, !1157, i64 9644, !1157, i64 9648, !1157, i64 9652, !1157, i64 9656, !1157, i64 9660, !1152, i64 9664, !1152, i64 9728, !1152, i64 9984, !1152, i64 9986}
!1193 = !{!"", !1152, i64 0, !1152, i64 384, !1152, i64 1248, !1152, i64 1504, !1152, i64 1760, !1152, i64 2144, !1152, i64 2624, !1152, i64 3136, !1152, i64 3648, !1157, i64 3712, !1152, i64 3716, !1157, i64 3732, !1152, i64 3736, !1152, i64 3760, !1152, i64 3784, !1152, i64 3808, !1152, i64 3816, !1152, i64 6888, !1152, i64 7144}
!1194 = !{!"", !1152, i64 0, !1152, i64 48, !1152, i64 96, !1152, i64 192, !1152, i64 576, !1152, i64 960, !1152, i64 1008, !1152, i64 1392, !1152, i64 1488, !1157, i64 1492, !1157, i64 1496}
!1195 = !{!"", !1196, i64 0, !1152, i64 488, !1152, i64 512, !1152, i64 552, !1152, i64 592, !1152, i64 664, !1152, i64 704, !1152, i64 744, !1152, i64 784, !1152, i64 824, !1152, i64 864, !1152, i64 904, !1152, i64 1664, !1152, i64 1936, !1152, i64 1952, !1152, i64 2976, !1152, i64 2984}
!1196 = !{!"", !1157, i64 0, !1157, i64 4, !1157, i64 8, !1152, i64 12, !1157, i64 88, !1157, i64 92, !1157, i64 96, !1152, i64 100, !1152, i64 108, !1152, i64 364, !1157, i64 432, !1157, i64 436, !1157, i64 440, !1152, i64 444, !1152, i64 456, !1197, i64 480}
!1197 = !{!"double", !1152, i64 0}
!1198 = !{!"", !1152, i64 0, !1152, i64 56, !1152, i64 112, !1152, i64 168, !1152, i64 224, !1152, i64 256, !1152, i64 312, !1152, i64 368, !1152, i64 424, !1152, i64 480, !1152, i64 536, !1152, i64 592, !1152, i64 624, !1151, i64 656, !1151, i64 664, !1152, i64 672, !1152, i64 728, !1152, i64 784, !1152, i64 840, !1152, i64 896, !1151, i64 952, !1151, i64 960, !1151, i64 968, !1151, i64 976, !1151, i64 984, !1151, i64 992}
!1199 = !{!"", !1151, i64 0, !1151, i64 8, !1151, i64 16, !1152, i64 24, !1152, i64 104, !1151, i64 160, !1151, i64 168, !1151, i64 176, !1151, i64 184, !1151, i64 192, !1151, i64 200, !1151, i64 208, !1151, i64 216}
!1200 = !{!"", !1151, i64 0, !1151, i64 8, !1151, i64 16, !1151, i64 24, !1151, i64 32, !1151, i64 40, !1151, i64 48, !1151, i64 56, !1151, i64 64, !1151, i64 72, !1151, i64 80, !1151, i64 88}
!1201 = !{!"", !1151, i64 0, !1151, i64 8, !1151, i64 16, !1151, i64 24, !1151, i64 32}
!1202 = !{!"", !1151, i64 0, !1151, i64 8, !1151, i64 16, !1151, i64 24, !1151, i64 32, !1151, i64 40, !1151, i64 48, !1151, i64 56, !1151, i64 64, !1151, i64 72, !1151, i64 80, !1152, i64 88}
!1203 = !{!"", !1151, i64 0, !1151, i64 8, !1151, i64 16, !1151, i64 24, !1151, i64 32, !1151, i64 40, !1151, i64 48, !1151, i64 56}
!1204 = !DILocation(line: 283, column: 39, scope: !34)
!1205 = !DILocation(line: 283, column: 30, scope: !34)
!1206 = !DILocation(line: 283, column: 72, scope: !34)
!1207 = !DILocation(line: 283, column: 62, scope: !34)
!1208 = !DILocation(line: 283, column: 53, scope: !34)
!1209 = !DILocation(line: 283, column: 5, scope: !34)
!1210 = !DILocation(line: 284, column: 11, scope: !34)
!1211 = !{!1179, !1151, i64 25416}
!1212 = !DILocation(line: 284, column: 47, scope: !34)
!1213 = !DILocation(line: 284, column: 40, scope: !34)
!1214 = !DILocation(line: 284, column: 58, scope: !34)
!1215 = !DILocation(line: 284, column: 76, scope: !34)
!1216 = !DILocation(line: 284, column: 94, scope: !34)
!1217 = !DILocation(line: 285, column: 52, scope: !34)
!1218 = !{!1219, !1157, i64 84}
!1219 = !{!"", !1157, i64 0, !1157, i64 4, !1157, i64 8, !1185, i64 16, !1157, i64 24, !1157, i64 28, !1157, i64 32, !1183, i64 36, !1183, i64 40, !1157, i64 44, !1152, i64 48, !1152, i64 60, !1152, i64 72, !1157, i64 84, !1157, i64 88, !1157, i64 92, !1152, i64 96, !1152, i64 120, !1152, i64 152, !1151, i64 184, !1152, i64 192, !1152, i64 224, !1151, i64 256, !1152, i64 264, !1152, i64 280, !1152, i64 552, !1152, i64 824, !1152, i64 840, !1152, i64 848, !1152, i64 976, !1152, i64 1040, !1152, i64 2336, !1157, i64 3632, !1152, i64 3636, !1152, i64 3712, !1151, i64 6304, !1151, i64 6312, !1151, i64 6320, !1151, i64 6328, !1157, i64 6336, !1151, i64 6344, !1151, i64 6352, !1157, i64 6360, !1157, i64 6364, !1152, i64 6368, !1152, i64 6408}
!1220 = !DILocation(line: 285, column: 76, scope: !34)
!1221 = !{!1219, !1157, i64 88}
!1222 = !DILocation(line: 285, column: 99, scope: !34)
!1223 = !{!1219, !1157, i64 92}
!1224 = !DILocation(line: 284, column: 5, scope: !34)
!1225 = !DILocation(line: 286, column: 5, scope: !34)
!1226 = !DILocation(line: 288, column: 20, scope: !34)
!1227 = !DILocation(line: 288, column: 5, scope: !34)
!1228 = !DILocation(line: 290, column: 30, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 290, column: 5)
!1230 = distinct !DILexicalBlock(scope: !34, file: !3, line: 290, column: 5)
!1231 = !{!1179, !1157, i64 96}
!1232 = !DILocation(line: 290, column: 19, scope: !1229)
!1233 = !DILocation(line: 290, column: 5, scope: !1230)
!1234 = !DILocation(line: 291, column: 23, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 291, column: 9)
!1236 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 291, column: 9)
!1237 = !DILocation(line: 291, column: 9, scope: !1236)
!1238 = !DILocation(line: 295, column: 9, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 295, column: 9)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 294, column: 5)
!1241 = distinct !DILexicalBlock(scope: !34, file: !3, line: 294, column: 5)
!1242 = !DILocation(line: 294, column: 5, scope: !1241)
!1243 = !DILocation(line: 292, column: 13, scope: !1235)
!1244 = !DILocation(line: 292, column: 41, scope: !1235)
!1245 = !DILocation(line: 291, column: 49, scope: !1235)
!1246 = !DILocation(line: 291, column: 34, scope: !1235)
!1247 = distinct !{!1247, !1237, !1248, !1176}
!1248 = !DILocation(line: 292, column: 44, scope: !1236)
!1249 = !DILocation(line: 0, scope: !1229)
!1250 = !DILocation(line: 290, column: 45, scope: !1229)
!1251 = distinct !{!1251, !1233, !1252, !1176}
!1252 = !DILocation(line: 292, column: 44, scope: !1230)
!1253 = !DILocation(line: 296, column: 13, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 295, column: 9)
!1255 = !DILocation(line: 296, column: 43, scope: !1254)
!1256 = !{!1257, !1257, i64 0}
!1257 = !{!"short", !1152, i64 0}
!1258 = !DILocation(line: 295, column: 46, scope: !1254)
!1259 = distinct !{!1259, !1238, !1260, !1176}
!1260 = !DILocation(line: 296, column: 45, scope: !1239)
!1261 = distinct !{!1261, !1262}
!1262 = !{!"llvm.loop.unroll.disable"}
!1263 = !DILocation(line: 294, column: 44, scope: !1240)
!1264 = !DILocation(line: 294, column: 19, scope: !1240)
!1265 = distinct !{!1265, !1242, !1266, !1176}
!1266 = !DILocation(line: 296, column: 45, scope: !1241)
!1267 = !DILocation(line: 297, column: 1, scope: !34)
!1268 = !DISubprogram(name: "x264_frame_expand_border_lowres", scope: !458, file: !458, line: 117, type: !1269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1271)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !456}
!1271 = !{}
!1272 = distinct !DISubprogram(name: "x264_mc_init", scope: !3, file: !3, line: 325, type: !1273, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1276)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !24, !1275}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!1276 = !{!1277, !1278}
!1277 = !DILocalVariable(name: "cpu", arg: 1, scope: !1272, file: !3, line: 325, type: !24)
!1278 = !DILocalVariable(name: "pf", arg: 2, scope: !1272, file: !3, line: 325, type: !1275)
!1279 = !DILocation(line: 0, scope: !1272)
!1280 = !DILocation(line: 327, column: 19, scope: !1272)
!1281 = !{!1199, !1151, i64 0}
!1282 = !DILocation(line: 328, column: 9, scope: !1272)
!1283 = !DILocation(line: 328, column: 19, scope: !1272)
!1284 = !{!1199, !1151, i64 8}
!1285 = !DILocation(line: 329, column: 9, scope: !1272)
!1286 = !DILocation(line: 329, column: 19, scope: !1272)
!1287 = !{!1199, !1151, i64 16}
!1288 = !DILocation(line: 331, column: 9, scope: !1272)
!1289 = !DILocation(line: 331, column: 25, scope: !1272)
!1290 = !DILocation(line: 332, column: 5, scope: !1272)
!1291 = !DILocation(line: 332, column: 25, scope: !1272)
!1292 = !DILocation(line: 333, column: 5, scope: !1272)
!1293 = !DILocation(line: 333, column: 25, scope: !1272)
!1294 = !DILocation(line: 334, column: 5, scope: !1272)
!1295 = !DILocation(line: 334, column: 25, scope: !1272)
!1296 = !DILocation(line: 335, column: 5, scope: !1272)
!1297 = !DILocation(line: 335, column: 25, scope: !1272)
!1298 = !DILocation(line: 336, column: 5, scope: !1272)
!1299 = !DILocation(line: 336, column: 25, scope: !1272)
!1300 = !DILocation(line: 337, column: 5, scope: !1272)
!1301 = !DILocation(line: 337, column: 25, scope: !1272)
!1302 = !DILocation(line: 338, column: 5, scope: !1272)
!1303 = !DILocation(line: 338, column: 25, scope: !1272)
!1304 = !DILocation(line: 339, column: 5, scope: !1272)
!1305 = !DILocation(line: 339, column: 25, scope: !1272)
!1306 = !DILocation(line: 340, column: 5, scope: !1272)
!1307 = !DILocation(line: 340, column: 25, scope: !1272)
!1308 = !DILocation(line: 342, column: 9, scope: !1272)
!1309 = !DILocation(line: 342, column: 30, scope: !1272)
!1310 = !{!1199, !1151, i64 160}
!1311 = !DILocation(line: 343, column: 9, scope: !1272)
!1312 = !DILocation(line: 343, column: 27, scope: !1272)
!1313 = !DILocation(line: 344, column: 5, scope: !1272)
!1314 = !DILocation(line: 344, column: 27, scope: !1272)
!1315 = !DILocation(line: 345, column: 5, scope: !1272)
!1316 = !DILocation(line: 345, column: 27, scope: !1272)
!1317 = !DILocation(line: 347, column: 9, scope: !1272)
!1318 = !DILocation(line: 347, column: 20, scope: !1272)
!1319 = !{!1199, !1151, i64 168}
!1320 = !DILocation(line: 348, column: 9, scope: !1272)
!1321 = !DILocation(line: 348, column: 21, scope: !1272)
!1322 = !{!1199, !1151, i64 176}
!1323 = !DILocation(line: 350, column: 9, scope: !1272)
!1324 = !DILocation(line: 350, column: 23, scope: !1272)
!1325 = !{!1199, !1151, i64 184}
!1326 = !DILocation(line: 351, column: 9, scope: !1272)
!1327 = !DILocation(line: 351, column: 23, scope: !1272)
!1328 = !{!1199, !1151, i64 192}
!1329 = !DILocation(line: 352, column: 9, scope: !1272)
!1330 = !DILocation(line: 352, column: 24, scope: !1272)
!1331 = !{!1199, !1151, i64 200}
!1332 = !DILocation(line: 353, column: 9, scope: !1272)
!1333 = !DILocation(line: 353, column: 25, scope: !1272)
!1334 = !{!1199, !1151, i64 208}
!1335 = !DILocation(line: 354, column: 9, scope: !1272)
!1336 = !DILocation(line: 354, column: 32, scope: !1272)
!1337 = !{!1199, !1151, i64 216}
!1338 = !DILocation(line: 357, column: 5, scope: !1272)
!1339 = !DILocation(line: 363, column: 1, scope: !1272)
!1340 = distinct !DISubprogram(name: "mc_luma", scope: !3, file: !3, line: 162, type: !950, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1341)
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353}
!1342 = !DILocalVariable(name: "dst", arg: 1, scope: !1340, file: !3, line: 162, type: !217)
!1343 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !1340, file: !3, line: 162, type: !24)
!1344 = !DILocalVariable(name: "src", arg: 3, scope: !1340, file: !3, line: 163, type: !952)
!1345 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !1340, file: !3, line: 163, type: !24)
!1346 = !DILocalVariable(name: "mvx", arg: 5, scope: !1340, file: !3, line: 164, type: !24)
!1347 = !DILocalVariable(name: "mvy", arg: 6, scope: !1340, file: !3, line: 164, type: !24)
!1348 = !DILocalVariable(name: "i_width", arg: 7, scope: !1340, file: !3, line: 165, type: !24)
!1349 = !DILocalVariable(name: "i_height", arg: 8, scope: !1340, file: !3, line: 165, type: !24)
!1350 = !DILocalVariable(name: "qpel_idx", scope: !1340, file: !3, line: 167, type: !24)
!1351 = !DILocalVariable(name: "offset", scope: !1340, file: !3, line: 168, type: !24)
!1352 = !DILocalVariable(name: "src1", scope: !1340, file: !3, line: 169, type: !217)
!1353 = !DILocalVariable(name: "src2", scope: !1354, file: !3, line: 173, type: !217)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 172, column: 5)
!1355 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 171, column: 9)
!1356 = !DILocation(line: 0, scope: !1340)
!1357 = !DILocation(line: 167, column: 25, scope: !1340)
!1358 = !DILocation(line: 167, column: 28, scope: !1340)
!1359 = !DILocation(line: 167, column: 39, scope: !1340)
!1360 = !DILocation(line: 167, column: 33, scope: !1340)
!1361 = !DILocation(line: 168, column: 22, scope: !1340)
!1362 = !DILocation(line: 168, column: 26, scope: !1340)
!1363 = !DILocation(line: 168, column: 46, scope: !1340)
!1364 = !DILocation(line: 168, column: 40, scope: !1340)
!1365 = !DILocation(line: 169, column: 25, scope: !1340)
!1366 = !DILocation(line: 169, column: 21, scope: !1340)
!1367 = !DILocation(line: 169, column: 46, scope: !1340)
!1368 = !DILocation(line: 169, column: 66, scope: !1340)
!1369 = !DILocation(line: 169, column: 72, scope: !1340)
!1370 = !DILocation(line: 169, column: 55, scope: !1340)
!1371 = !DILocation(line: 171, column: 18, scope: !1355)
!1372 = !DILocation(line: 171, column: 9, scope: !1340)
!1373 = !DILocation(line: 173, column: 29, scope: !1354)
!1374 = !DILocation(line: 173, column: 25, scope: !1354)
!1375 = !DILocation(line: 173, column: 50, scope: !1354)
!1376 = !DILocation(line: 173, column: 70, scope: !1354)
!1377 = !DILocation(line: 173, column: 59, scope: !1354)
!1378 = !DILocation(line: 0, scope: !1354)
!1379 = !DILocalVariable(name: "dst", arg: 1, scope: !1380, file: !3, line: 34, type: !217)
!1380 = distinct !DISubprogram(name: "pixel_avg", scope: !3, file: !3, line: 34, type: !1381, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1383)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !217, !24, !217, !24, !217, !24, !24, !24}
!1383 = !{!1379, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392}
!1384 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !1380, file: !3, line: 34, type: !24)
!1385 = !DILocalVariable(name: "src1", arg: 3, scope: !1380, file: !3, line: 35, type: !217)
!1386 = !DILocalVariable(name: "i_src1_stride", arg: 4, scope: !1380, file: !3, line: 35, type: !24)
!1387 = !DILocalVariable(name: "src2", arg: 5, scope: !1380, file: !3, line: 36, type: !217)
!1388 = !DILocalVariable(name: "i_src2_stride", arg: 6, scope: !1380, file: !3, line: 36, type: !24)
!1389 = !DILocalVariable(name: "i_width", arg: 7, scope: !1380, file: !3, line: 37, type: !24)
!1390 = !DILocalVariable(name: "i_height", arg: 8, scope: !1380, file: !3, line: 37, type: !24)
!1391 = !DILocalVariable(name: "x", scope: !1380, file: !3, line: 39, type: !24)
!1392 = !DILocalVariable(name: "y", scope: !1380, file: !3, line: 39, type: !24)
!1393 = !DILocation(line: 0, scope: !1380, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 174, column: 9, scope: !1354)
!1395 = !DILocation(line: 40, column: 19, scope: !1396, inlinedAt: !1394)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 40, column: 5)
!1397 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 40, column: 5)
!1398 = !DILocation(line: 40, column: 5, scope: !1397, inlinedAt: !1394)
!1399 = !DILocation(line: 42, column: 9, scope: !1400, inlinedAt: !1394)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 42, column: 9)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 41, column: 5)
!1402 = !DILocation(line: 42, column: 35, scope: !1403, inlinedAt: !1394)
!1403 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 42, column: 9)
!1404 = !DILocation(line: 44, column: 24, scope: !1405, inlinedAt: !1394)
!1405 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 43, column: 9)
!1406 = !DILocation(line: 44, column: 34, scope: !1405, inlinedAt: !1394)
!1407 = !DILocation(line: 44, column: 32, scope: !1405, inlinedAt: !1394)
!1408 = !DILocation(line: 44, column: 42, scope: !1405, inlinedAt: !1394)
!1409 = !DILocation(line: 44, column: 22, scope: !1405, inlinedAt: !1394)
!1410 = !DILocation(line: 44, column: 13, scope: !1405, inlinedAt: !1394)
!1411 = !DILocation(line: 44, column: 20, scope: !1405, inlinedAt: !1394)
!1412 = distinct !{!1412, !1399, !1413, !1176, !1414, !1415}
!1413 = !DILocation(line: 45, column: 9, scope: !1400, inlinedAt: !1394)
!1414 = !{!"llvm.loop.isvectorized", i32 1}
!1415 = !{!"llvm.loop.unroll.runtime.disable"}
!1416 = distinct !{!1416, !1399, !1413, !1176, !1414, !1415}
!1417 = !DILocation(line: 42, column: 23, scope: !1403, inlinedAt: !1394)
!1418 = distinct !{!1418, !1399, !1413, !1176, !1414}
!1419 = !DILocation(line: 46, column: 14, scope: !1401, inlinedAt: !1394)
!1420 = !DILocation(line: 47, column: 14, scope: !1401, inlinedAt: !1394)
!1421 = !DILocation(line: 48, column: 14, scope: !1401, inlinedAt: !1394)
!1422 = !DILocation(line: 40, column: 32, scope: !1396, inlinedAt: !1394)
!1423 = distinct !{!1423, !1398, !1424, !1176}
!1424 = !DILocation(line: 49, column: 5, scope: !1397, inlinedAt: !1394)
!1425 = !DILocalVariable(name: "src", arg: 1, scope: !1426, file: !3, line: 120, type: !217)
!1426 = distinct !DISubprogram(name: "mc_copy", scope: !3, file: !3, line: 120, type: !976, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1427)
!1427 = !{!1425, !1428, !1429, !1430, !1431, !1432, !1433}
!1428 = !DILocalVariable(name: "i_src_stride", arg: 2, scope: !1426, file: !3, line: 120, type: !24)
!1429 = !DILocalVariable(name: "dst", arg: 3, scope: !1426, file: !3, line: 120, type: !217)
!1430 = !DILocalVariable(name: "i_dst_stride", arg: 4, scope: !1426, file: !3, line: 120, type: !24)
!1431 = !DILocalVariable(name: "i_width", arg: 5, scope: !1426, file: !3, line: 120, type: !24)
!1432 = !DILocalVariable(name: "i_height", arg: 6, scope: !1426, file: !3, line: 120, type: !24)
!1433 = !DILocalVariable(name: "y", scope: !1426, file: !3, line: 122, type: !24)
!1434 = !DILocation(line: 0, scope: !1426, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 179, column: 9, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 178, column: 5)
!1437 = !DILocation(line: 124, column: 19, scope: !1438, inlinedAt: !1435)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 124, column: 5)
!1439 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 124, column: 5)
!1440 = !DILocation(line: 124, column: 5, scope: !1439, inlinedAt: !1435)
!1441 = !DILocation(line: 126, column: 9, scope: !1442, inlinedAt: !1435)
!1442 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 125, column: 5)
!1443 = !DILocation(line: 128, column: 13, scope: !1442, inlinedAt: !1435)
!1444 = !DILocation(line: 129, column: 13, scope: !1442, inlinedAt: !1435)
!1445 = distinct !{!1445, !1440, !1446, !1176}
!1446 = !DILocation(line: 130, column: 5, scope: !1439, inlinedAt: !1435)
!1447 = distinct !{!1447, !1262}
!1448 = !DILocation(line: 181, column: 1, scope: !1340)
!1449 = distinct !DISubprogram(name: "get_ref", scope: !3, file: !3, line: 183, type: !955, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1450)
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462}
!1451 = !DILocalVariable(name: "dst", arg: 1, scope: !1449, file: !3, line: 183, type: !217)
!1452 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !1449, file: !3, line: 183, type: !510)
!1453 = !DILocalVariable(name: "src", arg: 3, scope: !1449, file: !3, line: 184, type: !952)
!1454 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !1449, file: !3, line: 184, type: !24)
!1455 = !DILocalVariable(name: "mvx", arg: 5, scope: !1449, file: !3, line: 185, type: !24)
!1456 = !DILocalVariable(name: "mvy", arg: 6, scope: !1449, file: !3, line: 185, type: !24)
!1457 = !DILocalVariable(name: "i_width", arg: 7, scope: !1449, file: !3, line: 186, type: !24)
!1458 = !DILocalVariable(name: "i_height", arg: 8, scope: !1449, file: !3, line: 186, type: !24)
!1459 = !DILocalVariable(name: "qpel_idx", scope: !1449, file: !3, line: 188, type: !24)
!1460 = !DILocalVariable(name: "offset", scope: !1449, file: !3, line: 189, type: !24)
!1461 = !DILocalVariable(name: "src1", scope: !1449, file: !3, line: 190, type: !217)
!1462 = !DILocalVariable(name: "src2", scope: !1463, file: !3, line: 194, type: !217)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 193, column: 5)
!1464 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 192, column: 9)
!1465 = !DILocation(line: 0, scope: !1449)
!1466 = !DILocation(line: 188, column: 25, scope: !1449)
!1467 = !DILocation(line: 188, column: 28, scope: !1449)
!1468 = !DILocation(line: 188, column: 39, scope: !1449)
!1469 = !DILocation(line: 188, column: 33, scope: !1449)
!1470 = !DILocation(line: 189, column: 22, scope: !1449)
!1471 = !DILocation(line: 189, column: 26, scope: !1449)
!1472 = !DILocation(line: 189, column: 46, scope: !1449)
!1473 = !DILocation(line: 189, column: 40, scope: !1449)
!1474 = !DILocation(line: 190, column: 25, scope: !1449)
!1475 = !DILocation(line: 190, column: 21, scope: !1449)
!1476 = !DILocation(line: 190, column: 46, scope: !1449)
!1477 = !DILocation(line: 190, column: 66, scope: !1449)
!1478 = !DILocation(line: 190, column: 72, scope: !1449)
!1479 = !DILocation(line: 190, column: 55, scope: !1449)
!1480 = !DILocation(line: 192, column: 18, scope: !1464)
!1481 = !DILocation(line: 192, column: 9, scope: !1449)
!1482 = !DILocation(line: 194, column: 29, scope: !1463)
!1483 = !DILocation(line: 194, column: 25, scope: !1463)
!1484 = !DILocation(line: 194, column: 50, scope: !1463)
!1485 = !DILocation(line: 194, column: 70, scope: !1463)
!1486 = !DILocation(line: 194, column: 59, scope: !1463)
!1487 = !DILocation(line: 0, scope: !1463)
!1488 = !DILocation(line: 0, scope: !1380, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 195, column: 9, scope: !1463)
!1490 = !DILocation(line: 40, column: 19, scope: !1396, inlinedAt: !1489)
!1491 = !DILocation(line: 40, column: 5, scope: !1397, inlinedAt: !1489)
!1492 = !DILocation(line: 195, column: 25, scope: !1463)
!1493 = !DILocation(line: 42, column: 9, scope: !1400, inlinedAt: !1489)
!1494 = !DILocation(line: 42, column: 35, scope: !1403, inlinedAt: !1489)
!1495 = !DILocation(line: 44, column: 24, scope: !1405, inlinedAt: !1489)
!1496 = !DILocation(line: 44, column: 34, scope: !1405, inlinedAt: !1489)
!1497 = !DILocation(line: 44, column: 32, scope: !1405, inlinedAt: !1489)
!1498 = !DILocation(line: 44, column: 42, scope: !1405, inlinedAt: !1489)
!1499 = !DILocation(line: 44, column: 22, scope: !1405, inlinedAt: !1489)
!1500 = !DILocation(line: 44, column: 13, scope: !1405, inlinedAt: !1489)
!1501 = !DILocation(line: 44, column: 20, scope: !1405, inlinedAt: !1489)
!1502 = distinct !{!1502, !1493, !1503, !1176, !1414, !1415}
!1503 = !DILocation(line: 45, column: 9, scope: !1400, inlinedAt: !1489)
!1504 = distinct !{!1504, !1493, !1503, !1176, !1414, !1415}
!1505 = !DILocation(line: 42, column: 23, scope: !1403, inlinedAt: !1489)
!1506 = distinct !{!1506, !1493, !1503, !1176, !1414}
!1507 = !DILocation(line: 46, column: 14, scope: !1401, inlinedAt: !1489)
!1508 = !DILocation(line: 47, column: 14, scope: !1401, inlinedAt: !1489)
!1509 = !DILocation(line: 48, column: 14, scope: !1401, inlinedAt: !1489)
!1510 = !DILocation(line: 40, column: 32, scope: !1396, inlinedAt: !1489)
!1511 = distinct !{!1511, !1491, !1512, !1176}
!1512 = !DILocation(line: 49, column: 5, scope: !1397, inlinedAt: !1489)
!1513 = !DILocation(line: 201, column: 23, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 200, column: 5)
!1515 = !DILocation(line: 202, column: 9, scope: !1514)
!1516 = !DILocation(line: 0, scope: !1464)
!1517 = !DILocation(line: 204, column: 1, scope: !1449)
!1518 = distinct !DISubprogram(name: "mc_chroma", scope: !3, file: !3, line: 207, type: !959, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1520 = !DILocalVariable(name: "dst", arg: 1, scope: !1518, file: !3, line: 207, type: !217)
!1521 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !1518, file: !3, line: 207, type: !24)
!1522 = !DILocalVariable(name: "src", arg: 3, scope: !1518, file: !3, line: 208, type: !217)
!1523 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !1518, file: !3, line: 208, type: !24)
!1524 = !DILocalVariable(name: "mvx", arg: 5, scope: !1518, file: !3, line: 209, type: !24)
!1525 = !DILocalVariable(name: "mvy", arg: 6, scope: !1518, file: !3, line: 209, type: !24)
!1526 = !DILocalVariable(name: "i_width", arg: 7, scope: !1518, file: !3, line: 210, type: !24)
!1527 = !DILocalVariable(name: "i_height", arg: 8, scope: !1518, file: !3, line: 210, type: !24)
!1528 = !DILocalVariable(name: "srcp", scope: !1518, file: !3, line: 212, type: !217)
!1529 = !DILocalVariable(name: "x", scope: !1518, file: !3, line: 213, type: !24)
!1530 = !DILocalVariable(name: "y", scope: !1518, file: !3, line: 213, type: !24)
!1531 = !DILocalVariable(name: "d8x", scope: !1518, file: !3, line: 215, type: !23)
!1532 = !DILocalVariable(name: "d8y", scope: !1518, file: !3, line: 216, type: !23)
!1533 = !DILocalVariable(name: "cA", scope: !1518, file: !3, line: 218, type: !23)
!1534 = !DILocalVariable(name: "cB", scope: !1518, file: !3, line: 219, type: !23)
!1535 = !DILocalVariable(name: "cC", scope: !1518, file: !3, line: 220, type: !23)
!1536 = !DILocalVariable(name: "cD", scope: !1518, file: !3, line: 221, type: !23)
!1537 = !DILocation(line: 0, scope: !1518)
!1538 = !DILocation(line: 215, column: 24, scope: !1518)
!1539 = !DILocation(line: 216, column: 24, scope: !1518)
!1540 = !DILocation(line: 218, column: 22, scope: !1518)
!1541 = !DILocation(line: 218, column: 30, scope: !1518)
!1542 = !DILocation(line: 224, column: 13, scope: !1518)
!1543 = !DILocation(line: 226, column: 19, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 226, column: 5)
!1545 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 226, column: 5)
!1546 = !DILocation(line: 226, column: 5, scope: !1545)
!1547 = !DILocation(line: 228, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 228, column: 9)
!1549 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 227, column: 5)
!1550 = !DILocation(line: 223, column: 18, scope: !1518)
!1551 = !DILocation(line: 223, column: 24, scope: !1518)
!1552 = !DILocation(line: 223, column: 46, scope: !1518)
!1553 = !DILocation(line: 223, column: 39, scope: !1518)
!1554 = !DILocation(line: 223, column: 10, scope: !1518)
!1555 = !DILocation(line: 230, column: 45, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 229, column: 9)
!1557 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 228, column: 9)
!1558 = !DILocation(line: 230, column: 27, scope: !1556)
!1559 = !{!1560}
!1560 = distinct !{!1560, !1561}
!1561 = distinct !{!1561, !"LVerDomain"}
!1562 = !DILocation(line: 230, column: 26, scope: !1556)
!1563 = !DILocation(line: 230, column: 40, scope: !1556)
!1564 = !DILocation(line: 230, column: 39, scope: !1556)
!1565 = !DILocation(line: 231, column: 27, scope: !1556)
!1566 = !{!1567}
!1567 = distinct !{!1567, !1561}
!1568 = !DILocation(line: 231, column: 26, scope: !1556)
!1569 = !DILocation(line: 231, column: 40, scope: !1556)
!1570 = !DILocation(line: 231, column: 39, scope: !1556)
!1571 = !DILocation(line: 231, column: 35, scope: !1556)
!1572 = !DILocation(line: 231, column: 50, scope: !1556)
!1573 = !DILocation(line: 230, column: 22, scope: !1556)
!1574 = !DILocation(line: 230, column: 13, scope: !1556)
!1575 = !DILocation(line: 230, column: 20, scope: !1556)
!1576 = !{!1577}
!1577 = distinct !{!1577, !1561}
!1578 = !{!1567, !1560}
!1579 = distinct !{!1579, !1547, !1580, !1176, !1414, !1415}
!1580 = !DILocation(line: 232, column: 9, scope: !1548)
!1581 = !{!1582}
!1582 = distinct !{!1582, !1583}
!1583 = distinct !{!1583, !"LVerDomain"}
!1584 = !{!1585}
!1585 = distinct !{!1585, !1583}
!1586 = !{!1587}
!1587 = distinct !{!1587, !1583}
!1588 = !{!1585, !1582}
!1589 = distinct !{!1589, !1547, !1580, !1176, !1414, !1415}
!1590 = !DILocation(line: 228, column: 23, scope: !1557)
!1591 = distinct !{!1591, !1547, !1580, !1176, !1414}
!1592 = !DILocation(line: 233, column: 14, scope: !1549)
!1593 = !DILocation(line: 226, column: 32, scope: !1544)
!1594 = distinct !{!1594, !1546, !1595, !1176}
!1595 = !DILocation(line: 237, column: 5, scope: !1545)
!1596 = !DILocation(line: 238, column: 1, scope: !1518)
!1597 = distinct !DISubprogram(name: "pixel_avg_16x16", scope: !3, file: !3, line: 109, type: !964, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1598)
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604, !1605}
!1599 = !DILocalVariable(name: "pix1", arg: 1, scope: !1597, file: !3, line: 109, type: !217)
!1600 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !1597, file: !3, line: 109, type: !24)
!1601 = !DILocalVariable(name: "pix2", arg: 3, scope: !1597, file: !3, line: 109, type: !217)
!1602 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !1597, file: !3, line: 109, type: !24)
!1603 = !DILocalVariable(name: "pix3", arg: 5, scope: !1597, file: !3, line: 109, type: !217)
!1604 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !1597, file: !3, line: 109, type: !24)
!1605 = !DILocalVariable(name: "weight", arg: 7, scope: !1597, file: !3, line: 109, type: !24)
!1606 = !DILocation(line: 0, scope: !1597)
!1607 = !DILocation(line: 109, column: 1, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 109, column: 1)
!1609 = !DILocation(line: 109, column: 1, scope: !1597)
!1610 = !DILocalVariable(name: "dst", arg: 1, scope: !1611, file: !3, line: 52, type: !217)
!1611 = distinct !DISubprogram(name: "pixel_avg_wxh", scope: !3, file: !3, line: 52, type: !1381, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1612)
!1612 = !{!1610, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621}
!1613 = !DILocalVariable(name: "i_dst", arg: 2, scope: !1611, file: !3, line: 52, type: !24)
!1614 = !DILocalVariable(name: "src1", arg: 3, scope: !1611, file: !3, line: 52, type: !217)
!1615 = !DILocalVariable(name: "i_src1", arg: 4, scope: !1611, file: !3, line: 52, type: !24)
!1616 = !DILocalVariable(name: "src2", arg: 5, scope: !1611, file: !3, line: 52, type: !217)
!1617 = !DILocalVariable(name: "i_src2", arg: 6, scope: !1611, file: !3, line: 52, type: !24)
!1618 = !DILocalVariable(name: "width", arg: 7, scope: !1611, file: !3, line: 52, type: !24)
!1619 = !DILocalVariable(name: "height", arg: 8, scope: !1611, file: !3, line: 52, type: !24)
!1620 = !DILocalVariable(name: "x", scope: !1611, file: !3, line: 54, type: !24)
!1621 = !DILocalVariable(name: "y", scope: !1611, file: !3, line: 54, type: !24)
!1622 = !DILocation(line: 0, scope: !1611, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 109, column: 1, scope: !1608)
!1624 = !DILocation(line: 55, column: 5, scope: !1625, inlinedAt: !1623)
!1625 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 55, column: 5)
!1626 = !DILocation(line: 59, column: 24, scope: !1627, inlinedAt: !1623)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 58, column: 9)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 57, column: 9)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 57, column: 9)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 56, column: 5)
!1631 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 55, column: 5)
!1632 = !DILocation(line: 59, column: 34, scope: !1627, inlinedAt: !1623)
!1633 = !DILocation(line: 59, column: 32, scope: !1627, inlinedAt: !1623)
!1634 = !DILocation(line: 59, column: 42, scope: !1627, inlinedAt: !1623)
!1635 = !DILocation(line: 59, column: 22, scope: !1627, inlinedAt: !1623)
!1636 = !DILocation(line: 59, column: 20, scope: !1627, inlinedAt: !1623)
!1637 = !DILocation(line: 59, column: 13, scope: !1627, inlinedAt: !1623)
!1638 = !DILocation(line: 61, column: 14, scope: !1630, inlinedAt: !1623)
!1639 = !DILocation(line: 62, column: 14, scope: !1630, inlinedAt: !1623)
!1640 = !DILocation(line: 63, column: 13, scope: !1630, inlinedAt: !1623)
!1641 = !DILocation(line: 55, column: 30, scope: !1631, inlinedAt: !1623)
!1642 = !DILocation(line: 55, column: 19, scope: !1631, inlinedAt: !1623)
!1643 = distinct !{!1643, !1624, !1644, !1176}
!1644 = !DILocation(line: 64, column: 5, scope: !1625, inlinedAt: !1623)
!1645 = distinct !DISubprogram(name: "pixel_avg_16x8", scope: !3, file: !3, line: 110, type: !964, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1646)
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652, !1653}
!1647 = !DILocalVariable(name: "pix1", arg: 1, scope: !1645, file: !3, line: 110, type: !217)
!1648 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !1645, file: !3, line: 110, type: !24)
!1649 = !DILocalVariable(name: "pix2", arg: 3, scope: !1645, file: !3, line: 110, type: !217)
!1650 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !1645, file: !3, line: 110, type: !24)
!1651 = !DILocalVariable(name: "pix3", arg: 5, scope: !1645, file: !3, line: 110, type: !217)
!1652 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !1645, file: !3, line: 110, type: !24)
!1653 = !DILocalVariable(name: "weight", arg: 7, scope: !1645, file: !3, line: 110, type: !24)
!1654 = !DILocation(line: 0, scope: !1645)
!1655 = !DILocation(line: 110, column: 1, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 110, column: 1)
!1657 = !DILocation(line: 110, column: 1, scope: !1645)
!1658 = !DILocation(line: 0, scope: !1611, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 110, column: 1, scope: !1656)
!1660 = !DILocation(line: 55, column: 5, scope: !1625, inlinedAt: !1659)
!1661 = !DILocation(line: 59, column: 24, scope: !1627, inlinedAt: !1659)
!1662 = !DILocation(line: 59, column: 34, scope: !1627, inlinedAt: !1659)
!1663 = !DILocation(line: 59, column: 32, scope: !1627, inlinedAt: !1659)
!1664 = !DILocation(line: 59, column: 42, scope: !1627, inlinedAt: !1659)
!1665 = !DILocation(line: 59, column: 22, scope: !1627, inlinedAt: !1659)
!1666 = !DILocation(line: 59, column: 20, scope: !1627, inlinedAt: !1659)
!1667 = !DILocation(line: 59, column: 13, scope: !1627, inlinedAt: !1659)
!1668 = !DILocation(line: 61, column: 14, scope: !1630, inlinedAt: !1659)
!1669 = !DILocation(line: 62, column: 14, scope: !1630, inlinedAt: !1659)
!1670 = !DILocation(line: 63, column: 13, scope: !1630, inlinedAt: !1659)
!1671 = !DILocation(line: 55, column: 30, scope: !1631, inlinedAt: !1659)
!1672 = !DILocation(line: 55, column: 19, scope: !1631, inlinedAt: !1659)
!1673 = distinct !{!1673, !1660, !1674, !1176}
!1674 = !DILocation(line: 64, column: 5, scope: !1625, inlinedAt: !1659)
!1675 = distinct !DISubprogram(name: "pixel_avg_8x16", scope: !3, file: !3, line: 111, type: !964, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1676)
!1676 = !{!1677, !1678, !1679, !1680, !1681, !1682, !1683}
!1677 = !DILocalVariable(name: "pix1", arg: 1, scope: !1675, file: !3, line: 111, type: !217)
!1678 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !1675, file: !3, line: 111, type: !24)
!1679 = !DILocalVariable(name: "pix2", arg: 3, scope: !1675, file: !3, line: 111, type: !217)
!1680 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !1675, file: !3, line: 111, type: !24)
!1681 = !DILocalVariable(name: "pix3", arg: 5, scope: !1675, file: !3, line: 111, type: !217)
!1682 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !1675, file: !3, line: 111, type: !24)
!1683 = !DILocalVariable(name: "weight", arg: 7, scope: !1675, file: !3, line: 111, type: !24)
!1684 = !DILocation(line: 0, scope: !1675)
!1685 = !DILocation(line: 111, column: 1, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 111, column: 1)
!1687 = !DILocation(line: 111, column: 1, scope: !1675)
!1688 = !DILocation(line: 0, scope: !1611, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 111, column: 1, scope: !1686)
!1690 = !DILocation(line: 55, column: 5, scope: !1625, inlinedAt: !1689)
!1691 = !DILocation(line: 59, column: 24, scope: !1627, inlinedAt: !1689)
!1692 = !DILocation(line: 59, column: 34, scope: !1627, inlinedAt: !1689)
!1693 = !DILocation(line: 59, column: 32, scope: !1627, inlinedAt: !1689)
!1694 = !DILocation(line: 59, column: 42, scope: !1627, inlinedAt: !1689)
!1695 = !DILocation(line: 59, column: 22, scope: !1627, inlinedAt: !1689)
!1696 = !DILocation(line: 59, column: 20, scope: !1627, inlinedAt: !1689)
!1697 = !DILocation(line: 59, column: 13, scope: !1627, inlinedAt: !1689)
!1698 = !DILocation(line: 61, column: 14, scope: !1630, inlinedAt: !1689)
!1699 = !DILocation(line: 62, column: 14, scope: !1630, inlinedAt: !1689)
!1700 = !DILocation(line: 63, column: 13, scope: !1630, inlinedAt: !1689)
!1701 = !DILocation(line: 55, column: 30, scope: !1631, inlinedAt: !1689)
!1702 = !DILocation(line: 55, column: 19, scope: !1631, inlinedAt: !1689)
!1703 = distinct !{!1703, !1690, !1704, !1176}
!1704 = !DILocation(line: 64, column: 5, scope: !1625, inlinedAt: !1689)
!1705 = distinct !DISubprogram(name: "pixel_avg_8x8", scope: !3, file: !3, line: 112, type: !964, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1706)
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1712, !1713}
!1707 = !DILocalVariable(name: "pix1", arg: 1, scope: !1705, file: !3, line: 112, type: !217)
!1708 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !1705, file: !3, line: 112, type: !24)
!1709 = !DILocalVariable(name: "pix2", arg: 3, scope: !1705, file: !3, line: 112, type: !217)
!1710 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !1705, file: !3, line: 112, type: !24)
!1711 = !DILocalVariable(name: "pix3", arg: 5, scope: !1705, file: !3, line: 112, type: !217)
!1712 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !1705, file: !3, line: 112, type: !24)
!1713 = !DILocalVariable(name: "weight", arg: 7, scope: !1705, file: !3, line: 112, type: !24)
!1714 = !DILocation(line: 0, scope: !1705)
!1715 = !DILocation(line: 112, column: 1, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 112, column: 1)
!1717 = !DILocation(line: 112, column: 1, scope: !1705)
!1718 = !DILocation(line: 0, scope: !1611, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 112, column: 1, scope: !1716)
!1720 = !DILocation(line: 55, column: 5, scope: !1625, inlinedAt: !1719)
!1721 = !DILocation(line: 59, column: 24, scope: !1627, inlinedAt: !1719)
!1722 = !DILocation(line: 59, column: 34, scope: !1627, inlinedAt: !1719)
!1723 = !DILocation(line: 59, column: 32, scope: !1627, inlinedAt: !1719)
!1724 = !DILocation(line: 59, column: 42, scope: !1627, inlinedAt: !1719)
!1725 = !DILocation(line: 59, column: 22, scope: !1627, inlinedAt: !1719)
!1726 = !DILocation(line: 59, column: 20, scope: !1627, inlinedAt: !1719)
!1727 = !DILocation(line: 59, column: 13, scope: !1627, inlinedAt: !1719)
!1728 = !DILocation(line: 61, column: 14, scope: !1630, inlinedAt: !1719)
!1729 = !DILocation(line: 62, column: 14, scope: !1630, inlinedAt: !1719)
!1730 = !DILocation(line: 63, column: 13, scope: !1630, inlinedAt: !1719)
!1731 = !DILocation(line: 55, column: 30, scope: !1631, inlinedAt: !1719)
!1732 = !DILocation(line: 55, column: 19, scope: !1631, inlinedAt: !1719)
!1733 = distinct !{!1733, !1720, !1734, !1176}
!1734 = !DILocation(line: 64, column: 5, scope: !1625, inlinedAt: !1719)
!1735 = distinct !DISubprogram(name: "pixel_avg_8x4", scope: !3, file: !3, line: 113, type: !964, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1736)
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742, !1743}
!1737 = !DILocalVariable(name: "pix1", arg: 1, scope: !1735, file: !3, line: 113, type: !217)
!1738 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !1735, file: !3, line: 113, type: !24)
!1739 = !DILocalVariable(name: "pix2", arg: 3, scope: !1735, file: !3, line: 113, type: !217)
!1740 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !1735, file: !3, line: 113, type: !24)
!1741 = !DILocalVariable(name: "pix3", arg: 5, scope: !1735, file: !3, line: 113, type: !217)
!1742 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !1735, file: !3, line: 113, type: !24)
!1743 = !DILocalVariable(name: "weight", arg: 7, scope: !1735, file: !3, line: 113, type: !24)
!1744 = !DILocation(line: 0, scope: !1735)
!1745 = !DILocation(line: 113, column: 1, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 113, column: 1)
!1747 = !DILocation(line: 113, column: 1, scope: !1735)
!1748 = !DILocation(line: 0, scope: !1611, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 113, column: 1, scope: !1746)
!1750 = !DILocation(line: 59, column: 24, scope: !1627, inlinedAt: !1749)
!1751 = !DILocation(line: 59, column: 34, scope: !1627, inlinedAt: !1749)
!1752 = !DILocation(line: 59, column: 32, scope: !1627, inlinedAt: !1749)
!1753 = !DILocation(line: 59, column: 42, scope: !1627, inlinedAt: !1749)
!1754 = !DILocation(line: 59, column: 22, scope: !1627, inlinedAt: !1749)
!1755 = !DILocation(line: 59, column: 20, scope: !1627, inlinedAt: !1749)
!1756 = !DILocation(line: 59, column: 13, scope: !1627, inlinedAt: !1749)
!1757 = !DILocation(line: 61, column: 14, scope: !1630, inlinedAt: !1749)
!1758 = !DILocation(line: 62, column: 14, scope: !1630, inlinedAt: !1749)
!1759 = !DILocation(line: 63, column: 13, scope: !1630, inlinedAt: !1749)
!1760 = distinct !DISubprogram(name: "pixel_avg_4x8", scope: !3, file: !3, line: 114, type: !964, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1761)
!1761 = !{!1762, !1763, !1764, !1765, !1766, !1767, !1768}
!1762 = !DILocalVariable(name: "pix1", arg: 1, scope: !1760, file: !3, line: 114, type: !217)
!1763 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !1760, file: !3, line: 114, type: !24)
!1764 = !DILocalVariable(name: "pix2", arg: 3, scope: !1760, file: !3, line: 114, type: !217)
!1765 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !1760, file: !3, line: 114, type: !24)
!1766 = !DILocalVariable(name: "pix3", arg: 5, scope: !1760, file: !3, line: 114, type: !217)
!1767 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !1760, file: !3, line: 114, type: !24)
!1768 = !DILocalVariable(name: "weight", arg: 7, scope: !1760, file: !3, line: 114, type: !24)
!1769 = !DILocation(line: 0, scope: !1760)
!1770 = !DILocation(line: 114, column: 1, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 114, column: 1)
!1772 = !DILocation(line: 114, column: 1, scope: !1760)
!1773 = !DILocation(line: 0, scope: !1611, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 114, column: 1, scope: !1771)
!1775 = !DILocation(line: 59, column: 24, scope: !1627, inlinedAt: !1774)
!1776 = !DILocation(line: 59, column: 34, scope: !1627, inlinedAt: !1774)
!1777 = !DILocation(line: 59, column: 32, scope: !1627, inlinedAt: !1774)
!1778 = !DILocation(line: 59, column: 42, scope: !1627, inlinedAt: !1774)
!1779 = !DILocation(line: 59, column: 22, scope: !1627, inlinedAt: !1774)
!1780 = !DILocation(line: 59, column: 20, scope: !1627, inlinedAt: !1774)
!1781 = !DILocation(line: 59, column: 13, scope: !1627, inlinedAt: !1774)
!1782 = !DILocation(line: 61, column: 14, scope: !1630, inlinedAt: !1774)
!1783 = !DILocation(line: 62, column: 14, scope: !1630, inlinedAt: !1774)
!1784 = !DILocation(line: 63, column: 13, scope: !1630, inlinedAt: !1774)
!1785 = !DILocalVariable(name: "dst", arg: 1, scope: !1786, file: !3, line: 70, type: !217)
!1786 = distinct !DISubprogram(name: "pixel_avg_weight_wxh", scope: !3, file: !3, line: 70, type: !1787, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{null, !217, !24, !217, !24, !217, !24, !24, !24, !24}
!1789 = !{!1785, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799}
!1790 = !DILocalVariable(name: "i_dst", arg: 2, scope: !1786, file: !3, line: 70, type: !24)
!1791 = !DILocalVariable(name: "src1", arg: 3, scope: !1786, file: !3, line: 70, type: !217)
!1792 = !DILocalVariable(name: "i_src1", arg: 4, scope: !1786, file: !3, line: 70, type: !24)
!1793 = !DILocalVariable(name: "src2", arg: 5, scope: !1786, file: !3, line: 70, type: !217)
!1794 = !DILocalVariable(name: "i_src2", arg: 6, scope: !1786, file: !3, line: 70, type: !24)
!1795 = !DILocalVariable(name: "width", arg: 7, scope: !1786, file: !3, line: 70, type: !24)
!1796 = !DILocalVariable(name: "height", arg: 8, scope: !1786, file: !3, line: 70, type: !24)
!1797 = !DILocalVariable(name: "i_weight1", arg: 9, scope: !1786, file: !3, line: 70, type: !24)
!1798 = !DILocalVariable(name: "y", scope: !1786, file: !3, line: 72, type: !24)
!1799 = !DILocalVariable(name: "i_weight2", scope: !1786, file: !3, line: 73, type: !23)
!1800 = !DILocation(line: 0, scope: !1786, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 114, column: 1, scope: !1771)
!1802 = !DILocation(line: 73, column: 30, scope: !1786, inlinedAt: !1801)
!1803 = !DILocation(line: 76, column: 9, scope: !1804, inlinedAt: !1801)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 75, column: 5)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 74, column: 5)
!1806 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 74, column: 5)
!1807 = !DILocalVariable(name: "x", arg: 1, scope: !1808, file: !41, line: 103, type: !24)
!1808 = distinct !DISubprogram(name: "x264_clip_uint8", scope: !41, file: !41, line: 103, type: !1809, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1811)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!90, !24}
!1811 = !{!1807}
!1812 = !DILocation(line: 0, scope: !1808, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 76, column: 9, scope: !1804, inlinedAt: !1801)
!1814 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !1813)
!1815 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !1813)
!1816 = !DILocation(line: 77, column: 9, scope: !1804, inlinedAt: !1801)
!1817 = !DILocation(line: 0, scope: !1808, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 77, column: 9, scope: !1804, inlinedAt: !1801)
!1819 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !1818)
!1820 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !1818)
!1821 = !DILocation(line: 79, column: 9, scope: !1804, inlinedAt: !1801)
!1822 = !DILocation(line: 0, scope: !1808, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 79, column: 9, scope: !1804, inlinedAt: !1801)
!1824 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !1823)
!1825 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !1823)
!1826 = !DILocation(line: 80, column: 9, scope: !1804, inlinedAt: !1801)
!1827 = !DILocation(line: 0, scope: !1808, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 80, column: 9, scope: !1804, inlinedAt: !1801)
!1829 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !1828)
!1830 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !1828)
!1831 = !DILocation(line: 74, column: 28, scope: !1805, inlinedAt: !1801)
!1832 = !DILocation(line: 74, column: 36, scope: !1805, inlinedAt: !1801)
!1833 = !DILocation(line: 74, column: 51, scope: !1805, inlinedAt: !1801)
!1834 = !DILocation(line: 74, column: 67, scope: !1805, inlinedAt: !1801)
!1835 = !DILocation(line: 74, column: 18, scope: !1805, inlinedAt: !1801)
!1836 = !DILocation(line: 74, column: 5, scope: !1806, inlinedAt: !1801)
!1837 = distinct !{!1837, !1836, !1838, !1176}
!1838 = !DILocation(line: 95, column: 5, scope: !1806, inlinedAt: !1801)
!1839 = distinct !DISubprogram(name: "pixel_avg_4x4", scope: !3, file: !3, line: 115, type: !964, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1840)
!1840 = !{!1841, !1842, !1843, !1844, !1845, !1846, !1847}
!1841 = !DILocalVariable(name: "pix1", arg: 1, scope: !1839, file: !3, line: 115, type: !217)
!1842 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !1839, file: !3, line: 115, type: !24)
!1843 = !DILocalVariable(name: "pix2", arg: 3, scope: !1839, file: !3, line: 115, type: !217)
!1844 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !1839, file: !3, line: 115, type: !24)
!1845 = !DILocalVariable(name: "pix3", arg: 5, scope: !1839, file: !3, line: 115, type: !217)
!1846 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !1839, file: !3, line: 115, type: !24)
!1847 = !DILocalVariable(name: "weight", arg: 7, scope: !1839, file: !3, line: 115, type: !24)
!1848 = !DILocation(line: 0, scope: !1839)
!1849 = !DILocation(line: 115, column: 1, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 115, column: 1)
!1851 = !DILocation(line: 115, column: 1, scope: !1839)
!1852 = !DILocation(line: 0, scope: !1611, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 115, column: 1, scope: !1850)
!1854 = !DILocation(line: 59, column: 24, scope: !1627, inlinedAt: !1853)
!1855 = !DILocation(line: 59, column: 34, scope: !1627, inlinedAt: !1853)
!1856 = !DILocation(line: 59, column: 32, scope: !1627, inlinedAt: !1853)
!1857 = !DILocation(line: 59, column: 42, scope: !1627, inlinedAt: !1853)
!1858 = !DILocation(line: 59, column: 22, scope: !1627, inlinedAt: !1853)
!1859 = !DILocation(line: 59, column: 20, scope: !1627, inlinedAt: !1853)
!1860 = !DILocation(line: 59, column: 13, scope: !1627, inlinedAt: !1853)
!1861 = !DILocation(line: 61, column: 14, scope: !1630, inlinedAt: !1853)
!1862 = !DILocation(line: 62, column: 14, scope: !1630, inlinedAt: !1853)
!1863 = !DILocation(line: 63, column: 13, scope: !1630, inlinedAt: !1853)
!1864 = !DILocation(line: 0, scope: !1786, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 115, column: 1, scope: !1850)
!1866 = !DILocation(line: 73, column: 30, scope: !1786, inlinedAt: !1865)
!1867 = !DILocation(line: 76, column: 9, scope: !1804, inlinedAt: !1865)
!1868 = !DILocation(line: 0, scope: !1808, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 76, column: 9, scope: !1804, inlinedAt: !1865)
!1870 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !1869)
!1871 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !1869)
!1872 = !DILocation(line: 77, column: 9, scope: !1804, inlinedAt: !1865)
!1873 = !DILocation(line: 0, scope: !1808, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 77, column: 9, scope: !1804, inlinedAt: !1865)
!1875 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !1874)
!1876 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !1874)
!1877 = !DILocation(line: 79, column: 9, scope: !1804, inlinedAt: !1865)
!1878 = !DILocation(line: 0, scope: !1808, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 79, column: 9, scope: !1804, inlinedAt: !1865)
!1880 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !1879)
!1881 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !1879)
!1882 = !DILocation(line: 80, column: 9, scope: !1804, inlinedAt: !1865)
!1883 = !DILocation(line: 0, scope: !1808, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 80, column: 9, scope: !1804, inlinedAt: !1865)
!1885 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !1884)
!1886 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !1884)
!1887 = !DILocation(line: 74, column: 36, scope: !1805, inlinedAt: !1865)
!1888 = !DILocation(line: 74, column: 51, scope: !1805, inlinedAt: !1865)
!1889 = !DILocation(line: 74, column: 67, scope: !1805, inlinedAt: !1865)
!1890 = distinct !DISubprogram(name: "pixel_avg_4x2", scope: !3, file: !3, line: 116, type: !964, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1891)
!1891 = !{!1892, !1893, !1894, !1895, !1896, !1897, !1898}
!1892 = !DILocalVariable(name: "pix1", arg: 1, scope: !1890, file: !3, line: 116, type: !217)
!1893 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !1890, file: !3, line: 116, type: !24)
!1894 = !DILocalVariable(name: "pix2", arg: 3, scope: !1890, file: !3, line: 116, type: !217)
!1895 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !1890, file: !3, line: 116, type: !24)
!1896 = !DILocalVariable(name: "pix3", arg: 5, scope: !1890, file: !3, line: 116, type: !217)
!1897 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !1890, file: !3, line: 116, type: !24)
!1898 = !DILocalVariable(name: "weight", arg: 7, scope: !1890, file: !3, line: 116, type: !24)
!1899 = !DILocation(line: 0, scope: !1890)
!1900 = !DILocation(line: 116, column: 1, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 116, column: 1)
!1902 = !DILocation(line: 116, column: 1, scope: !1890)
!1903 = !DILocation(line: 0, scope: !1611, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 116, column: 1, scope: !1901)
!1905 = !DILocation(line: 59, column: 24, scope: !1627, inlinedAt: !1904)
!1906 = !DILocation(line: 59, column: 34, scope: !1627, inlinedAt: !1904)
!1907 = !DILocation(line: 59, column: 32, scope: !1627, inlinedAt: !1904)
!1908 = !DILocation(line: 59, column: 42, scope: !1627, inlinedAt: !1904)
!1909 = !DILocation(line: 59, column: 22, scope: !1627, inlinedAt: !1904)
!1910 = !DILocation(line: 59, column: 20, scope: !1627, inlinedAt: !1904)
!1911 = !DILocation(line: 59, column: 13, scope: !1627, inlinedAt: !1904)
!1912 = !DILocation(line: 61, column: 14, scope: !1630, inlinedAt: !1904)
!1913 = !DILocation(line: 62, column: 14, scope: !1630, inlinedAt: !1904)
!1914 = !DILocation(line: 63, column: 13, scope: !1630, inlinedAt: !1904)
!1915 = !DILocation(line: 0, scope: !1786, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 116, column: 1, scope: !1901)
!1917 = !DILocation(line: 73, column: 30, scope: !1786, inlinedAt: !1916)
!1918 = !DILocation(line: 76, column: 9, scope: !1804, inlinedAt: !1916)
!1919 = !DILocation(line: 0, scope: !1808, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 76, column: 9, scope: !1804, inlinedAt: !1916)
!1921 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !1920)
!1922 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !1920)
!1923 = !DILocation(line: 77, column: 9, scope: !1804, inlinedAt: !1916)
!1924 = !DILocation(line: 0, scope: !1808, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 77, column: 9, scope: !1804, inlinedAt: !1916)
!1926 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !1925)
!1927 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !1925)
!1928 = !DILocation(line: 79, column: 9, scope: !1804, inlinedAt: !1916)
!1929 = !DILocation(line: 0, scope: !1808, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 79, column: 9, scope: !1804, inlinedAt: !1916)
!1931 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !1930)
!1932 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !1930)
!1933 = !DILocation(line: 80, column: 9, scope: !1804, inlinedAt: !1916)
!1934 = !DILocation(line: 0, scope: !1808, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 80, column: 9, scope: !1804, inlinedAt: !1916)
!1936 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !1935)
!1937 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !1935)
!1938 = !DILocation(line: 74, column: 36, scope: !1805, inlinedAt: !1916)
!1939 = !DILocation(line: 74, column: 51, scope: !1805, inlinedAt: !1916)
!1940 = !DILocation(line: 74, column: 67, scope: !1805, inlinedAt: !1916)
!1941 = distinct !DISubprogram(name: "pixel_avg_2x4", scope: !3, file: !3, line: 117, type: !964, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1942)
!1942 = !{!1943, !1944, !1945, !1946, !1947, !1948, !1949}
!1943 = !DILocalVariable(name: "pix1", arg: 1, scope: !1941, file: !3, line: 117, type: !217)
!1944 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !1941, file: !3, line: 117, type: !24)
!1945 = !DILocalVariable(name: "pix2", arg: 3, scope: !1941, file: !3, line: 117, type: !217)
!1946 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !1941, file: !3, line: 117, type: !24)
!1947 = !DILocalVariable(name: "pix3", arg: 5, scope: !1941, file: !3, line: 117, type: !217)
!1948 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !1941, file: !3, line: 117, type: !24)
!1949 = !DILocalVariable(name: "weight", arg: 7, scope: !1941, file: !3, line: 117, type: !24)
!1950 = !DILocation(line: 0, scope: !1941)
!1951 = !DILocation(line: 117, column: 1, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 117, column: 1)
!1953 = !DILocation(line: 117, column: 1, scope: !1941)
!1954 = !DILocation(line: 0, scope: !1611, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 117, column: 1, scope: !1952)
!1956 = !DILocation(line: 59, column: 24, scope: !1627, inlinedAt: !1955)
!1957 = !DILocation(line: 59, column: 34, scope: !1627, inlinedAt: !1955)
!1958 = !DILocation(line: 59, column: 32, scope: !1627, inlinedAt: !1955)
!1959 = !DILocation(line: 59, column: 42, scope: !1627, inlinedAt: !1955)
!1960 = !DILocation(line: 59, column: 22, scope: !1627, inlinedAt: !1955)
!1961 = !DILocation(line: 59, column: 20, scope: !1627, inlinedAt: !1955)
!1962 = !DILocation(line: 59, column: 13, scope: !1627, inlinedAt: !1955)
!1963 = !DILocation(line: 61, column: 14, scope: !1630, inlinedAt: !1955)
!1964 = !DILocation(line: 62, column: 14, scope: !1630, inlinedAt: !1955)
!1965 = !DILocation(line: 63, column: 13, scope: !1630, inlinedAt: !1955)
!1966 = !DILocation(line: 0, scope: !1786, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 117, column: 1, scope: !1952)
!1968 = !DILocation(line: 73, column: 30, scope: !1786, inlinedAt: !1967)
!1969 = !DILocation(line: 76, column: 9, scope: !1804, inlinedAt: !1967)
!1970 = !DILocation(line: 0, scope: !1808, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 76, column: 9, scope: !1804, inlinedAt: !1967)
!1972 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !1971)
!1973 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !1971)
!1974 = !DILocation(line: 77, column: 9, scope: !1804, inlinedAt: !1967)
!1975 = !DILocation(line: 0, scope: !1808, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 77, column: 9, scope: !1804, inlinedAt: !1967)
!1977 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !1976)
!1978 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !1976)
!1979 = !DILocation(line: 74, column: 36, scope: !1805, inlinedAt: !1967)
!1980 = !DILocation(line: 74, column: 51, scope: !1805, inlinedAt: !1967)
!1981 = !DILocation(line: 74, column: 67, scope: !1805, inlinedAt: !1967)
!1982 = distinct !DISubprogram(name: "pixel_avg_2x2", scope: !3, file: !3, line: 118, type: !964, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1983)
!1983 = !{!1984, !1985, !1986, !1987, !1988, !1989, !1990}
!1984 = !DILocalVariable(name: "pix1", arg: 1, scope: !1982, file: !3, line: 118, type: !217)
!1985 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !1982, file: !3, line: 118, type: !24)
!1986 = !DILocalVariable(name: "pix2", arg: 3, scope: !1982, file: !3, line: 118, type: !217)
!1987 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !1982, file: !3, line: 118, type: !24)
!1988 = !DILocalVariable(name: "pix3", arg: 5, scope: !1982, file: !3, line: 118, type: !217)
!1989 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !1982, file: !3, line: 118, type: !24)
!1990 = !DILocalVariable(name: "weight", arg: 7, scope: !1982, file: !3, line: 118, type: !24)
!1991 = !DILocation(line: 0, scope: !1982)
!1992 = !DILocation(line: 118, column: 1, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 118, column: 1)
!1994 = !DILocation(line: 118, column: 1, scope: !1982)
!1995 = !DILocation(line: 0, scope: !1611, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 118, column: 1, scope: !1993)
!1997 = !DILocation(line: 59, column: 24, scope: !1627, inlinedAt: !1996)
!1998 = !DILocation(line: 59, column: 34, scope: !1627, inlinedAt: !1996)
!1999 = !DILocation(line: 59, column: 32, scope: !1627, inlinedAt: !1996)
!2000 = !DILocation(line: 59, column: 42, scope: !1627, inlinedAt: !1996)
!2001 = !DILocation(line: 59, column: 22, scope: !1627, inlinedAt: !1996)
!2002 = !DILocation(line: 59, column: 20, scope: !1627, inlinedAt: !1996)
!2003 = !DILocation(line: 59, column: 13, scope: !1627, inlinedAt: !1996)
!2004 = !DILocation(line: 61, column: 14, scope: !1630, inlinedAt: !1996)
!2005 = !DILocation(line: 62, column: 14, scope: !1630, inlinedAt: !1996)
!2006 = !DILocation(line: 63, column: 13, scope: !1630, inlinedAt: !1996)
!2007 = !DILocation(line: 0, scope: !1786, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 118, column: 1, scope: !1993)
!2009 = !DILocation(line: 73, column: 30, scope: !1786, inlinedAt: !2008)
!2010 = !DILocation(line: 76, column: 9, scope: !1804, inlinedAt: !2008)
!2011 = !DILocation(line: 0, scope: !1808, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 76, column: 9, scope: !1804, inlinedAt: !2008)
!2013 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2012)
!2014 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2012)
!2015 = !DILocation(line: 77, column: 9, scope: !1804, inlinedAt: !2008)
!2016 = !DILocation(line: 0, scope: !1808, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 77, column: 9, scope: !1804, inlinedAt: !2008)
!2018 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2017)
!2019 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2017)
!2020 = !DILocation(line: 74, column: 36, scope: !1805, inlinedAt: !2008)
!2021 = !DILocation(line: 74, column: 51, scope: !1805, inlinedAt: !2008)
!2022 = !DILocation(line: 74, column: 67, scope: !1805, inlinedAt: !2008)
!2023 = distinct !DISubprogram(name: "mc_copy_w16", scope: !3, file: !3, line: 245, type: !971, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2024)
!2024 = !{!2025, !2026, !2027, !2028, !2029}
!2025 = !DILocalVariable(name: "dst", arg: 1, scope: !2023, file: !3, line: 245, type: !217)
!2026 = !DILocalVariable(name: "i_dst", arg: 2, scope: !2023, file: !3, line: 245, type: !24)
!2027 = !DILocalVariable(name: "src", arg: 3, scope: !2023, file: !3, line: 245, type: !217)
!2028 = !DILocalVariable(name: "i_src", arg: 4, scope: !2023, file: !3, line: 245, type: !24)
!2029 = !DILocalVariable(name: "i_height", arg: 5, scope: !2023, file: !3, line: 245, type: !24)
!2030 = !DILocation(line: 0, scope: !2023)
!2031 = !DILocation(line: 0, scope: !1426, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 245, column: 1, scope: !2023)
!2033 = !DILocation(line: 124, column: 19, scope: !1438, inlinedAt: !2032)
!2034 = !DILocation(line: 124, column: 5, scope: !1439, inlinedAt: !2032)
!2035 = !DILocation(line: 126, column: 9, scope: !1442, inlinedAt: !2032)
!2036 = !DILocation(line: 128, column: 13, scope: !1442, inlinedAt: !2032)
!2037 = !DILocation(line: 129, column: 13, scope: !1442, inlinedAt: !2032)
!2038 = distinct !{!2038, !2034, !2039, !1176}
!2039 = !DILocation(line: 130, column: 5, scope: !1439, inlinedAt: !2032)
!2040 = distinct !{!2040, !1262}
!2041 = !DILocation(line: 245, column: 1, scope: !2023)
!2042 = distinct !DISubprogram(name: "mc_copy_w8", scope: !3, file: !3, line: 246, type: !971, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2043 = !{!2044, !2045, !2046, !2047, !2048}
!2044 = !DILocalVariable(name: "dst", arg: 1, scope: !2042, file: !3, line: 246, type: !217)
!2045 = !DILocalVariable(name: "i_dst", arg: 2, scope: !2042, file: !3, line: 246, type: !24)
!2046 = !DILocalVariable(name: "src", arg: 3, scope: !2042, file: !3, line: 246, type: !217)
!2047 = !DILocalVariable(name: "i_src", arg: 4, scope: !2042, file: !3, line: 246, type: !24)
!2048 = !DILocalVariable(name: "i_height", arg: 5, scope: !2042, file: !3, line: 246, type: !24)
!2049 = !DILocation(line: 0, scope: !2042)
!2050 = !DILocation(line: 0, scope: !1426, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 246, column: 1, scope: !2042)
!2052 = !DILocation(line: 124, column: 19, scope: !1438, inlinedAt: !2051)
!2053 = !DILocation(line: 124, column: 5, scope: !1439, inlinedAt: !2051)
!2054 = !DILocation(line: 126, column: 9, scope: !1442, inlinedAt: !2051)
!2055 = !DILocation(line: 128, column: 13, scope: !1442, inlinedAt: !2051)
!2056 = !DILocation(line: 129, column: 13, scope: !1442, inlinedAt: !2051)
!2057 = distinct !{!2057, !2053, !2058, !1176}
!2058 = !DILocation(line: 130, column: 5, scope: !1439, inlinedAt: !2051)
!2059 = distinct !{!2059, !1262}
!2060 = !DILocation(line: 246, column: 1, scope: !2042)
!2061 = distinct !DISubprogram(name: "mc_copy_w4", scope: !3, file: !3, line: 247, type: !971, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2062)
!2062 = !{!2063, !2064, !2065, !2066, !2067}
!2063 = !DILocalVariable(name: "dst", arg: 1, scope: !2061, file: !3, line: 247, type: !217)
!2064 = !DILocalVariable(name: "i_dst", arg: 2, scope: !2061, file: !3, line: 247, type: !24)
!2065 = !DILocalVariable(name: "src", arg: 3, scope: !2061, file: !3, line: 247, type: !217)
!2066 = !DILocalVariable(name: "i_src", arg: 4, scope: !2061, file: !3, line: 247, type: !24)
!2067 = !DILocalVariable(name: "i_height", arg: 5, scope: !2061, file: !3, line: 247, type: !24)
!2068 = !DILocation(line: 0, scope: !2061)
!2069 = !DILocation(line: 0, scope: !1426, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 247, column: 1, scope: !2061)
!2071 = !DILocation(line: 124, column: 19, scope: !1438, inlinedAt: !2070)
!2072 = !DILocation(line: 124, column: 5, scope: !1439, inlinedAt: !2070)
!2073 = !DILocation(line: 126, column: 9, scope: !1442, inlinedAt: !2070)
!2074 = !DILocation(line: 128, column: 13, scope: !1442, inlinedAt: !2070)
!2075 = !DILocation(line: 129, column: 13, scope: !1442, inlinedAt: !2070)
!2076 = distinct !{!2076, !2072, !2077, !1176}
!2077 = !DILocation(line: 130, column: 5, scope: !1439, inlinedAt: !2070)
!2078 = distinct !{!2078, !1262}
!2079 = !DILocation(line: 247, column: 1, scope: !2061)
!2080 = distinct !DISubprogram(name: "plane_copy", scope: !3, file: !3, line: 249, type: !976, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2081)
!2081 = !{!2082, !2083, !2084, !2085, !2086, !2087}
!2082 = !DILocalVariable(name: "dst", arg: 1, scope: !2080, file: !3, line: 249, type: !217)
!2083 = !DILocalVariable(name: "i_dst", arg: 2, scope: !2080, file: !3, line: 249, type: !24)
!2084 = !DILocalVariable(name: "src", arg: 3, scope: !2080, file: !3, line: 250, type: !217)
!2085 = !DILocalVariable(name: "i_src", arg: 4, scope: !2080, file: !3, line: 250, type: !24)
!2086 = !DILocalVariable(name: "w", arg: 5, scope: !2080, file: !3, line: 250, type: !24)
!2087 = !DILocalVariable(name: "h", arg: 6, scope: !2080, file: !3, line: 250, type: !24)
!2088 = !DILocation(line: 0, scope: !2080)
!2089 = !DILocation(line: 252, column: 5, scope: !2080)
!2090 = !DILocation(line: 252, column: 13, scope: !2080)
!2091 = !DILocation(line: 254, column: 9, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 253, column: 5)
!2093 = !DILocation(line: 255, column: 13, scope: !2092)
!2094 = !DILocation(line: 256, column: 13, scope: !2092)
!2095 = distinct !{!2095, !1262}
!2096 = distinct !{!2096, !2089, !2097, !1176}
!2097 = !DILocation(line: 257, column: 5, scope: !2080)
!2098 = !DILocation(line: 258, column: 1, scope: !2080)
!2099 = distinct !DISubprogram(name: "hpel_filter", scope: !3, file: !3, line: 134, type: !980, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2100)
!2100 = !{!2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111}
!2101 = !DILocalVariable(name: "dsth", arg: 1, scope: !2099, file: !3, line: 134, type: !217)
!2102 = !DILocalVariable(name: "dstv", arg: 2, scope: !2099, file: !3, line: 134, type: !217)
!2103 = !DILocalVariable(name: "dstc", arg: 3, scope: !2099, file: !3, line: 134, type: !217)
!2104 = !DILocalVariable(name: "src", arg: 4, scope: !2099, file: !3, line: 134, type: !217)
!2105 = !DILocalVariable(name: "stride", arg: 5, scope: !2099, file: !3, line: 135, type: !24)
!2106 = !DILocalVariable(name: "width", arg: 6, scope: !2099, file: !3, line: 135, type: !24)
!2107 = !DILocalVariable(name: "height", arg: 7, scope: !2099, file: !3, line: 135, type: !24)
!2108 = !DILocalVariable(name: "buf", scope: !2099, file: !3, line: 137, type: !680)
!2109 = !DILocalVariable(name: "x", scope: !2099, file: !3, line: 138, type: !24)
!2110 = !DILocalVariable(name: "y", scope: !2099, file: !3, line: 138, type: !24)
!2111 = !DILocalVariable(name: "v", scope: !2112, file: !3, line: 143, type: !24)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 142, column: 9)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 141, column: 9)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 141, column: 9)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 140, column: 5)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 139, column: 5)
!2117 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 139, column: 5)
!2118 = !DILocation(line: 0, scope: !2099)
!2119 = !DILocation(line: 137, column: 41, scope: !2099)
!2120 = !DILocation(line: 137, column: 20, scope: !2099)
!2121 = !DILocation(line: 139, column: 16, scope: !2116)
!2122 = !DILocation(line: 139, column: 5, scope: !2117)
!2123 = !DILocation(line: 141, column: 9, scope: !2114)
!2124 = !DILocation(line: 143, column: 21, scope: !2112)
!2125 = !{!2126}
!2126 = distinct !{!2126, !2127}
!2127 = distinct !{!2127, !"LVerDomain"}
!2128 = !{!2129}
!2129 = distinct !{!2129, !2127}
!2130 = !{!2131}
!2131 = distinct !{!2131, !2127}
!2132 = !{!2133}
!2133 = distinct !{!2133, !2127}
!2134 = !{!2135}
!2135 = distinct !{!2135, !2127}
!2136 = !{!2137}
!2137 = distinct !{!2137, !2127}
!2138 = !DILocation(line: 144, column: 42, scope: !2112)
!2139 = !DILocation(line: 144, column: 48, scope: !2112)
!2140 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 144, column: 23, scope: !2112)
!2142 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2141)
!2143 = !DILocation(line: 144, column: 13, scope: !2112)
!2144 = !DILocation(line: 144, column: 21, scope: !2112)
!2145 = !{!2146}
!2146 = distinct !{!2146, !2127}
!2147 = !{!2148, !2137, !2135, !2133, !2131, !2129, !2126}
!2148 = distinct !{!2148, !2127}
!2149 = !DILocation(line: 145, column: 24, scope: !2112)
!2150 = !DILocation(line: 145, column: 13, scope: !2112)
!2151 = !DILocation(line: 145, column: 22, scope: !2112)
!2152 = !{!2148}
!2153 = !{!2137, !2135, !2133, !2131, !2129, !2126}
!2154 = distinct !{!2154, !2123, !2155, !1176, !1414, !1415}
!2155 = !DILocation(line: 146, column: 9, scope: !2114)
!2156 = !DILocation(line: 147, column: 9, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 147, column: 9)
!2158 = !DILocation(line: 148, column: 40, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 147, column: 9)
!2160 = !{!2161}
!2161 = distinct !{!2161, !2162}
!2162 = distinct !{!2162, !"LVerDomain"}
!2163 = !DILocation(line: 148, column: 59, scope: !2159)
!2164 = !DILocation(line: 148, column: 66, scope: !2159)
!2165 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 148, column: 23, scope: !2159)
!2167 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2166)
!2168 = !DILocation(line: 148, column: 13, scope: !2159)
!2169 = !DILocation(line: 148, column: 21, scope: !2159)
!2170 = !{!2171}
!2171 = distinct !{!2171, !2162}
!2172 = distinct !{!2172, !2156, !2173, !1176, !1414, !1415}
!2173 = !DILocation(line: 148, column: 71, scope: !2157)
!2174 = !DILocation(line: 0, scope: !2112)
!2175 = !DILocation(line: 0, scope: !1808, inlinedAt: !2141)
!2176 = !DILocation(line: 145, column: 18, scope: !2112)
!2177 = !DILocation(line: 141, column: 32, scope: !2113)
!2178 = !DILocation(line: 141, column: 21, scope: !2113)
!2179 = distinct !{!2179, !2123, !2155, !1176, !1414}
!2180 = !DILocation(line: 149, column: 9, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 149, column: 9)
!2182 = !DILocation(line: 150, column: 40, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 149, column: 9)
!2184 = !{!2185}
!2185 = distinct !{!2185, !2186}
!2186 = distinct !{!2186, !"LVerDomain"}
!2187 = !DILocation(line: 150, column: 57, scope: !2183)
!2188 = !DILocation(line: 150, column: 63, scope: !2183)
!2189 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 150, column: 23, scope: !2183)
!2191 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2190)
!2192 = !DILocation(line: 150, column: 13, scope: !2183)
!2193 = !DILocation(line: 150, column: 21, scope: !2183)
!2194 = !{!2195}
!2195 = distinct !{!2195, !2186}
!2196 = distinct !{!2196, !2180, !2197, !1176, !1414, !1415}
!2197 = !DILocation(line: 150, column: 67, scope: !2181)
!2198 = !{!2199}
!2199 = distinct !{!2199, !2200}
!2200 = distinct !{!2200, !"LVerDomain"}
!2201 = !{!2202}
!2202 = distinct !{!2202, !2200}
!2203 = distinct !{!2203, !2180, !2197, !1176, !1414, !1415}
!2204 = !DILocation(line: 0, scope: !1808, inlinedAt: !2166)
!2205 = !DILocation(line: 147, column: 20, scope: !2159)
!2206 = distinct !{!2206, !2156, !2173, !1176, !1414}
!2207 = !DILocation(line: 0, scope: !1808, inlinedAt: !2190)
!2208 = !DILocation(line: 149, column: 20, scope: !2183)
!2209 = distinct !{!2209, !2180, !2197, !1176, !1414}
!2210 = !DILocation(line: 151, column: 14, scope: !2115)
!2211 = !DILocation(line: 152, column: 14, scope: !2115)
!2212 = !DILocation(line: 153, column: 14, scope: !2115)
!2213 = !DILocation(line: 154, column: 13, scope: !2115)
!2214 = !DILocation(line: 139, column: 26, scope: !2116)
!2215 = distinct !{!2215, !2122, !2216, !1176}
!2216 = !DILocation(line: 155, column: 5, scope: !2117)
!2217 = !DILocation(line: 156, column: 5, scope: !2099)
!2218 = !DILocation(line: 157, column: 1, scope: !2099)
!2219 = distinct !DISubprogram(name: "prefetch_fenc_null", scope: !3, file: !3, line: 260, type: !971, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2220)
!2220 = !{!2221, !2222, !2223, !2224, !2225}
!2221 = !DILocalVariable(name: "pix_y", arg: 1, scope: !2219, file: !3, line: 260, type: !217)
!2222 = !DILocalVariable(name: "stride_y", arg: 2, scope: !2219, file: !3, line: 260, type: !24)
!2223 = !DILocalVariable(name: "pix_uv", arg: 3, scope: !2219, file: !3, line: 261, type: !217)
!2224 = !DILocalVariable(name: "stride_uv", arg: 4, scope: !2219, file: !3, line: 261, type: !24)
!2225 = !DILocalVariable(name: "mb_x", arg: 5, scope: !2219, file: !3, line: 261, type: !24)
!2226 = !DILocation(line: 0, scope: !2219)
!2227 = !DILocation(line: 262, column: 2, scope: !2219)
!2228 = distinct !DISubprogram(name: "prefetch_ref_null", scope: !3, file: !3, line: 264, type: !985, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2229)
!2229 = !{!2230, !2231, !2232}
!2230 = !DILocalVariable(name: "pix", arg: 1, scope: !2228, file: !3, line: 264, type: !217)
!2231 = !DILocalVariable(name: "stride", arg: 2, scope: !2228, file: !3, line: 264, type: !24)
!2232 = !DILocalVariable(name: "parity", arg: 3, scope: !2228, file: !3, line: 264, type: !24)
!2233 = !DILocation(line: 0, scope: !2228)
!2234 = !DILocation(line: 265, column: 2, scope: !2228)
!2235 = distinct !DISubprogram(name: "memzero_aligned", scope: !3, file: !3, line: 267, type: !997, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2236)
!2236 = !{!2237, !2238}
!2237 = !DILocalVariable(name: "dst", arg: 1, scope: !2235, file: !3, line: 267, type: !107)
!2238 = !DILocalVariable(name: "n", arg: 2, scope: !2235, file: !3, line: 267, type: !24)
!2239 = !DILocation(line: 0, scope: !2235)
!2240 = !DILocation(line: 269, column: 21, scope: !2235)
!2241 = !DILocation(line: 269, column: 5, scope: !2235)
!2242 = !DILocation(line: 270, column: 1, scope: !2235)
!2243 = distinct !DISubprogram(name: "frame_init_lowres_core", scope: !3, file: !3, line: 299, type: !1001, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2244)
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2260}
!2245 = !DILocalVariable(name: "src0", arg: 1, scope: !2243, file: !3, line: 299, type: !217)
!2246 = !DILocalVariable(name: "dst0", arg: 2, scope: !2243, file: !3, line: 299, type: !217)
!2247 = !DILocalVariable(name: "dsth", arg: 3, scope: !2243, file: !3, line: 299, type: !217)
!2248 = !DILocalVariable(name: "dstv", arg: 4, scope: !2243, file: !3, line: 299, type: !217)
!2249 = !DILocalVariable(name: "dstc", arg: 5, scope: !2243, file: !3, line: 299, type: !217)
!2250 = !DILocalVariable(name: "src_stride", arg: 6, scope: !2243, file: !3, line: 300, type: !24)
!2251 = !DILocalVariable(name: "dst_stride", arg: 7, scope: !2243, file: !3, line: 300, type: !24)
!2252 = !DILocalVariable(name: "width", arg: 8, scope: !2243, file: !3, line: 300, type: !24)
!2253 = !DILocalVariable(name: "height", arg: 9, scope: !2243, file: !3, line: 300, type: !24)
!2254 = !DILocalVariable(name: "x", scope: !2243, file: !3, line: 302, type: !24)
!2255 = !DILocalVariable(name: "y", scope: !2243, file: !3, line: 302, type: !24)
!2256 = !DILocalVariable(name: "src1", scope: !2257, file: !3, line: 305, type: !217)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 304, column: 5)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 303, column: 5)
!2259 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 303, column: 5)
!2260 = !DILocalVariable(name: "src2", scope: !2257, file: !3, line: 306, type: !217)
!2261 = !DILocation(line: 0, scope: !2243)
!2262 = !DILocation(line: 303, column: 16, scope: !2258)
!2263 = !DILocation(line: 303, column: 5, scope: !2259)
!2264 = !DILocation(line: 307, column: 9, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 307, column: 9)
!2266 = !DILocation(line: 305, column: 29, scope: !2257)
!2267 = !DILocation(line: 0, scope: !2257)
!2268 = !DILocation(line: 306, column: 29, scope: !2257)
!2269 = !DILocation(line: 311, column: 23, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 308, column: 9)
!2271 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 307, column: 9)
!2272 = !DILocation(line: 311, column: 13, scope: !2270)
!2273 = !DILocation(line: 311, column: 21, scope: !2270)
!2274 = !DILocation(line: 312, column: 23, scope: !2270)
!2275 = !DILocation(line: 312, column: 13, scope: !2270)
!2276 = !DILocation(line: 312, column: 21, scope: !2270)
!2277 = !DILocation(line: 313, column: 23, scope: !2270)
!2278 = !DILocation(line: 313, column: 13, scope: !2270)
!2279 = !DILocation(line: 313, column: 21, scope: !2270)
!2280 = !DILocation(line: 314, column: 23, scope: !2270)
!2281 = !DILocation(line: 314, column: 13, scope: !2270)
!2282 = !DILocation(line: 314, column: 21, scope: !2270)
!2283 = !DILocation(line: 307, column: 29, scope: !2271)
!2284 = !DILocation(line: 307, column: 20, scope: !2271)
!2285 = distinct !{!2285, !2264, !2286, !1176}
!2286 = !DILocation(line: 316, column: 9, scope: !2265)
!2287 = !DILocation(line: 317, column: 14, scope: !2257)
!2288 = !DILocation(line: 318, column: 14, scope: !2257)
!2289 = !DILocation(line: 319, column: 14, scope: !2257)
!2290 = !DILocation(line: 320, column: 14, scope: !2257)
!2291 = !DILocation(line: 321, column: 14, scope: !2257)
!2292 = !DILocation(line: 303, column: 26, scope: !2258)
!2293 = distinct !{!2293, !2263, !2294, !1176}
!2294 = !DILocation(line: 322, column: 5, scope: !2259)
!2295 = !DILocation(line: 323, column: 1, scope: !2243)
!2296 = !DISubprogram(name: "x264_mc_init_mmx", scope: !2297, file: !2297, line: 27, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1271)
!2297 = !DIFile(filename: "common/x86/mc.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "beceefc487fe5a8f34c1be059d586672")
!2298 = distinct !DISubprogram(name: "x264_frame_filter", scope: !3, file: !3, line: 365, type: !2299, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{null, !37, !456, !24, !24}
!2301 = !{!2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2320, !2321, !2322}
!2302 = !DILocalVariable(name: "h", arg: 1, scope: !2298, file: !3, line: 365, type: !37)
!2303 = !DILocalVariable(name: "frame", arg: 2, scope: !2298, file: !3, line: 365, type: !456)
!2304 = !DILocalVariable(name: "mb_y", arg: 3, scope: !2298, file: !3, line: 365, type: !24)
!2305 = !DILocalVariable(name: "b_end", arg: 4, scope: !2298, file: !3, line: 365, type: !24)
!2306 = !DILocalVariable(name: "b_interlaced", scope: !2298, file: !3, line: 367, type: !23)
!2307 = !DILocalVariable(name: "stride", scope: !2298, file: !3, line: 368, type: !23)
!2308 = !DILocalVariable(name: "width", scope: !2298, file: !3, line: 369, type: !23)
!2309 = !DILocalVariable(name: "start", scope: !2298, file: !3, line: 370, type: !24)
!2310 = !DILocalVariable(name: "height", scope: !2298, file: !3, line: 371, type: !24)
!2311 = !DILocalVariable(name: "offs", scope: !2298, file: !3, line: 372, type: !24)
!2312 = !DILocalVariable(name: "x", scope: !2298, file: !3, line: 373, type: !24)
!2313 = !DILocalVariable(name: "y", scope: !2298, file: !3, line: 373, type: !24)
!2314 = !DILocalVariable(name: "ref", scope: !2315, file: !3, line: 404, type: !217)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 403, column: 9)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 402, column: 9)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 402, column: 9)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 394, column: 5)
!2319 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 393, column: 9)
!2320 = !DILocalVariable(name: "line", scope: !2315, file: !3, line: 405, type: !489)
!2321 = !DILocalVariable(name: "v", scope: !2315, file: !3, line: 406, type: !375)
!2322 = !DILocalVariable(name: "sum4", scope: !2323, file: !3, line: 412, type: !489)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 411, column: 13)
!2324 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 410, column: 17)
!2325 = !DILocation(line: 0, scope: !2298)
!2326 = !DILocation(line: 367, column: 36, scope: !2298)
!2327 = !{!1179, !1157, i64 4364}
!2328 = !DILocation(line: 368, column: 31, scope: !2298)
!2329 = !DILocation(line: 368, column: 24, scope: !2298)
!2330 = !DILocation(line: 368, column: 43, scope: !2298)
!2331 = !DILocation(line: 369, column: 30, scope: !2298)
!2332 = !DILocation(line: 369, column: 23, scope: !2298)
!2333 = !DILocation(line: 370, column: 22, scope: !2298)
!2334 = !DILocation(line: 370, column: 26, scope: !2298)
!2335 = !DILocation(line: 370, column: 43, scope: !2298)
!2336 = !DILocation(line: 371, column: 20, scope: !2298)
!2337 = !DILocation(line: 371, column: 35, scope: !2298)
!2338 = !DILocation(line: 371, column: 28, scope: !2298)
!2339 = !DILocation(line: 371, column: 57, scope: !2298)
!2340 = !DILocation(line: 371, column: 74, scope: !2298)
!2341 = !DILocation(line: 375, column: 14, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 375, column: 9)
!2343 = !DILocation(line: 375, column: 9, scope: !2298)
!2344 = !DILocation(line: 378, column: 16, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 378, column: 5)
!2346 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 378, column: 5)
!2347 = !DILocation(line: 378, column: 5, scope: !2346)
!2348 = !DILocation(line: 372, column: 21, scope: !2298)
!2349 = !DILocation(line: 372, column: 29, scope: !2298)
!2350 = !DILocation(line: 380, column: 15, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 379, column: 5)
!2352 = !{!1179, !1151, i64 25376}
!2353 = !DILocation(line: 381, column: 13, scope: !2351)
!2354 = !DILocation(line: 381, column: 32, scope: !2351)
!2355 = !DILocation(line: 382, column: 13, scope: !2351)
!2356 = !DILocation(line: 382, column: 32, scope: !2351)
!2357 = !DILocation(line: 383, column: 13, scope: !2351)
!2358 = !DILocation(line: 383, column: 32, scope: !2351)
!2359 = !DILocation(line: 384, column: 13, scope: !2351)
!2360 = !DILocation(line: 384, column: 29, scope: !2351)
!2361 = !DILocation(line: 380, column: 9, scope: !2351)
!2362 = !DILocation(line: 378, column: 33, scope: !2345)
!2363 = !DILocation(line: 378, column: 43, scope: !2345)
!2364 = !DILocation(line: 378, column: 41, scope: !2345)
!2365 = distinct !{!2365, !2347, !2366, !1176}
!2366 = !DILocation(line: 386, column: 5, scope: !2346)
!2367 = !DILocation(line: 393, column: 16, scope: !2319)
!2368 = !{!1219, !1151, i64 184}
!2369 = !DILocation(line: 393, column: 9, scope: !2319)
!2370 = !DILocation(line: 393, column: 9, scope: !2298)
!2371 = !DILocation(line: 395, column: 19, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 395, column: 13)
!2373 = !DILocation(line: 395, column: 13, scope: !2318)
!2374 = !DILocation(line: 397, column: 44, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2372, file: !3, line: 396, column: 9)
!2376 = !DILocation(line: 397, column: 37, scope: !2375)
!2377 = !DILocation(line: 397, column: 53, scope: !2375)
!2378 = !DILocation(line: 397, column: 64, scope: !2375)
!2379 = !DILocation(line: 397, column: 71, scope: !2375)
!2380 = !DILocation(line: 397, column: 13, scope: !2375)
!2381 = !DILocation(line: 399, column: 9, scope: !2375)
!2382 = !DILocation(line: 400, column: 13, scope: !2318)
!2383 = !DILocation(line: 402, column: 27, scope: !2316)
!2384 = !DILocation(line: 402, column: 9, scope: !2317)
!2385 = !DILocation(line: 413, column: 17, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 413, column: 17)
!2387 = !DILocation(line: 404, column: 50, scope: !2315)
!2388 = !DILocation(line: 404, column: 59, scope: !2315)
!2389 = !DILocation(line: 0, scope: !2315)
!2390 = !DILocation(line: 405, column: 50, scope: !2315)
!2391 = !DILocation(line: 405, column: 54, scope: !2315)
!2392 = !DILocation(line: 405, column: 70, scope: !2315)
!2393 = !DILocation(line: 406, column: 34, scope: !2315)
!2394 = !DILocation(line: 407, column: 13, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 407, column: 13)
!2396 = !DILocation(line: 408, column: 32, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 407, column: 13)
!2398 = !DILocation(line: 408, column: 47, scope: !2397)
!2399 = !DILocation(line: 408, column: 41, scope: !2397)
!2400 = !DILocation(line: 408, column: 71, scope: !2397)
!2401 = !DILocation(line: 408, column: 58, scope: !2397)
!2402 = !DILocation(line: 408, column: 39, scope: !2397)
!2403 = !DILocation(line: 408, column: 56, scope: !2397)
!2404 = !DILocation(line: 408, column: 29, scope: !2397)
!2405 = !DILocation(line: 408, column: 17, scope: !2397)
!2406 = !DILocation(line: 408, column: 25, scope: !2397)
!2407 = !DILocation(line: 410, column: 19, scope: !2324)
!2408 = !DILocation(line: 410, column: 17, scope: !2315)
!2409 = !DILocation(line: 409, column: 18, scope: !2315)
!2410 = !DILocation(line: 412, column: 51, scope: !2323)
!2411 = !DILocation(line: 412, column: 69, scope: !2323)
!2412 = !DILocation(line: 412, column: 48, scope: !2323)
!2413 = !DILocation(line: 412, column: 39, scope: !2323)
!2414 = !DILocation(line: 0, scope: !2323)
!2415 = !DILocation(line: 415, column: 32, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 414, column: 17)
!2417 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 413, column: 17)
!2418 = !{!2419}
!2419 = distinct !{!2419, !2420}
!2420 = distinct !{!2420, !"LVerDomain"}
!2421 = !DILocation(line: 415, column: 51, scope: !2416)
!2422 = !{!2423}
!2423 = distinct !{!2423, !2420}
!2424 = !DILocation(line: 415, column: 61, scope: !2416)
!2425 = !{!2426}
!2426 = distinct !{!2426, !2420}
!2427 = !DILocation(line: 415, column: 78, scope: !2416)
!2428 = !{!2429}
!2429 = distinct !{!2429, !2420}
!2430 = !{!2419, !2423, !2426, !2431, !2432, !2433}
!2431 = distinct !{!2431, !2420}
!2432 = distinct !{!2432, !2420}
!2433 = distinct !{!2433, !2420}
!2434 = !DILocation(line: 415, column: 59, scope: !2416)
!2435 = !DILocation(line: 415, column: 76, scope: !2416)
!2436 = !DILocation(line: 415, column: 29, scope: !2416)
!2437 = !{!2438}
!2438 = distinct !{!2438, !2420}
!2439 = !{!2429, !2419, !2423, !2426, !2431, !2432, !2433}
!2440 = !DILocation(line: 416, column: 32, scope: !2416)
!2441 = !{!2431}
!2442 = !DILocation(line: 416, column: 51, scope: !2416)
!2443 = !{!2432}
!2444 = !DILocation(line: 416, column: 61, scope: !2416)
!2445 = !{!2433}
!2446 = !DILocation(line: 416, column: 29, scope: !2416)
!2447 = !DILocation(line: 416, column: 59, scope: !2416)
!2448 = distinct !{!2448, !2385, !2449, !1176, !1414, !1415}
!2449 = !DILocation(line: 417, column: 17, scope: !2386)
!2450 = distinct !{!2450, !2384, !2451, !1176}
!2451 = !DILocation(line: 419, column: 9, scope: !2317)
!2452 = !DILocation(line: 413, column: 44, scope: !2417)
!2453 = !DILocation(line: 413, column: 52, scope: !2417)
!2454 = !DILocation(line: 413, column: 60, scope: !2417)
!2455 = !DILocation(line: 413, column: 31, scope: !2417)
!2456 = distinct !{!2456, !2385, !2449, !1176, !1414}
!2457 = !DILocation(line: 407, column: 40, scope: !2397)
!2458 = distinct !{!2458, !2394, !2459, !1176}
!2459 = !DILocation(line: 408, column: 73, scope: !2395)
!2460 = distinct !{!2460, !1262}
!2461 = !DILocation(line: 421, column: 1, scope: !2298)
!2462 = !DILocation(line: 0, scope: !1786)
!2463 = !DILocation(line: 73, column: 30, scope: !1786)
!2464 = !DILocation(line: 74, column: 18, scope: !1805)
!2465 = !DILocation(line: 74, column: 5, scope: !1806)
!2466 = !DILocation(line: 78, column: 12, scope: !1804)
!2467 = !DILocation(line: 76, column: 9, scope: !1804)
!2468 = !DILocation(line: 0, scope: !1808, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 76, column: 9, scope: !1804)
!2470 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2469)
!2471 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2469)
!2472 = !DILocation(line: 77, column: 9, scope: !1804)
!2473 = !DILocation(line: 0, scope: !1808, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 77, column: 9, scope: !1804)
!2475 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2474)
!2476 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2474)
!2477 = !DILocation(line: 74, column: 28, scope: !1805)
!2478 = !DILocation(line: 74, column: 36, scope: !1805)
!2479 = !DILocation(line: 74, column: 51, scope: !1805)
!2480 = !DILocation(line: 74, column: 67, scope: !1805)
!2481 = distinct !{!2481, !2465, !2482, !1176}
!2482 = !DILocation(line: 95, column: 5, scope: !1806)
!2483 = !DILocation(line: 79, column: 9, scope: !1804)
!2484 = !DILocation(line: 0, scope: !1808, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 79, column: 9, scope: !1804)
!2486 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2485)
!2487 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2485)
!2488 = !DILocation(line: 80, column: 9, scope: !1804)
!2489 = !DILocation(line: 0, scope: !1808, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 80, column: 9, scope: !1804)
!2491 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2490)
!2492 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2490)
!2493 = !DILocation(line: 81, column: 12, scope: !1804)
!2494 = !DILocation(line: 82, column: 9, scope: !1804)
!2495 = !DILocation(line: 0, scope: !1808, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 82, column: 9, scope: !1804)
!2497 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2496)
!2498 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2496)
!2499 = !DILocation(line: 83, column: 9, scope: !1804)
!2500 = !DILocation(line: 0, scope: !1808, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 83, column: 9, scope: !1804)
!2502 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2501)
!2503 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2501)
!2504 = !DILocation(line: 84, column: 9, scope: !1804)
!2505 = !DILocation(line: 0, scope: !1808, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 84, column: 9, scope: !1804)
!2507 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2506)
!2508 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2506)
!2509 = !DILocation(line: 85, column: 9, scope: !1804)
!2510 = !DILocation(line: 0, scope: !1808, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 85, column: 9, scope: !1804)
!2512 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2511)
!2513 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2511)
!2514 = !DILocation(line: 86, column: 12, scope: !1804)
!2515 = !DILocation(line: 87, column: 9, scope: !1804)
!2516 = !DILocation(line: 0, scope: !1808, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 87, column: 9, scope: !1804)
!2518 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2517)
!2519 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2517)
!2520 = !DILocation(line: 88, column: 9, scope: !1804)
!2521 = !DILocation(line: 0, scope: !1808, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 88, column: 9, scope: !1804)
!2523 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2522)
!2524 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2522)
!2525 = !DILocation(line: 89, column: 9, scope: !1804)
!2526 = !DILocation(line: 0, scope: !1808, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 89, column: 9, scope: !1804)
!2528 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2527)
!2529 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2527)
!2530 = !DILocation(line: 90, column: 9, scope: !1804)
!2531 = !DILocation(line: 0, scope: !1808, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 90, column: 9, scope: !1804)
!2533 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2532)
!2534 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2532)
!2535 = !DILocation(line: 91, column: 9, scope: !1804)
!2536 = !DILocation(line: 0, scope: !1808, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 91, column: 9, scope: !1804)
!2538 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2537)
!2539 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2537)
!2540 = !DILocation(line: 92, column: 9, scope: !1804)
!2541 = !DILocation(line: 0, scope: !1808, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 92, column: 9, scope: !1804)
!2543 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2542)
!2544 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2542)
!2545 = !DILocation(line: 93, column: 9, scope: !1804)
!2546 = !DILocation(line: 0, scope: !1808, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 93, column: 9, scope: !1804)
!2548 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2547)
!2549 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2547)
!2550 = !DILocation(line: 94, column: 9, scope: !1804)
!2551 = !DILocation(line: 0, scope: !1808, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 94, column: 9, scope: !1804)
!2553 = !DILocation(line: 105, column: 13, scope: !1808, inlinedAt: !2552)
!2554 = !DILocation(line: 105, column: 12, scope: !1808, inlinedAt: !2552)
!2555 = !DILocation(line: 95, column: 5, scope: !1804)
!2556 = !DILocation(line: 96, column: 1, scope: !1786)
!2557 = !DISubprogram(name: "x264_malloc", scope: !41, file: !41, line: 84, type: !2558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1271)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!107, !24}
!2560 = !DISubprogram(name: "x264_free", scope: !41, file: !41, line: 86, type: !2561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1271)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null, !107}
